unit StuffCodingStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, DB, ADODB, ppBands, ppCtrls, ppVar, sndkey32,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, ppParameter, FarsiReportBuilde, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TStuffCodingStockF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qryStuffCodingStock: TADOQuery;
    srcStuffCodingStock: TDataSource;
    Panel3: TPanel;
    actPrint: TAction;
    DataSetDelete: TAction;
    btnOk: TBitBtn;
    actOk: TAction;
    pnlAutoInsertPostInsert4: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btnDataSetDelete1_: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid1: TCedarDbgrid;
    qryStuffCodingStockStuffCodingID: TAutoIncField;
    qryStuffCodingStockStoreID: TSmallintField;
    qryStuffCodingStockStuffCode: TLargeintField;
    qryStuffCodingStock_StoreName: TStringField;
    qryStuffCodingStockMinOrder: TFloatField;
    qryStuffCodingStockMaxOrder: TFloatField;
    qryStuffCodingStockOrderPoint: TFloatField;
    qryStuffCodingStockOptimumPoint: TFloatField;
    qryStuffCodingStockDayOfStorage: TIntegerField;
    qryStuffCodingStockProductModel: TIntegerField;
    qryStuffCodingStock_ProductModelName: TStringField;
    qry_Lookup: TADOQuery;
    actRecall: TAction;
    BitBtn2: TBitBtn;
    procedure qryStuffCodingStockAfterInsert(DataSet: TDataSet);
    procedure srcStuffCodingStockStateChange(Sender: TObject);
    procedure qryStuffCodingStockBeforePost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure qryStuffCodingStockAfterCancel(DataSet: TDataSet);
    procedure qryStuffCodingStockBeforeDelete(DataSet: TDataSet);
    procedure actRecallExecute(Sender: TObject);
  private
    { Private declarations }
    StuffCode: Largeint;
    qryStock: TADOQuery;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  public
    function enter(Stuff_Code: Largeint): TModalResult;
  end;

var
  StuffCodingStockF: TStuffCodingStockF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, FormFunctions, Filter_ADO_Const,
  Filters, filter_ADO;

{$R *.dfm}

function TStuffCodingStockF.enter(Stuff_Code: Largeint): TModalResult;
begin
  Result := mrNone;
  StuffCodingStockF := TStuffCodingStockF.Create(Application);
  // _StuffCodingStockF := StuffCodingStockF;
  with StuffCodingStockF do
    try
      StuffCode := Stuff_Code;
      // qryStock := qry_Stock;
      SetLookUpCash(qryStuffCodingStock);
      InitForm;
      Result := ShowModal;
    finally
      Free; // on reciptsGridF
    end;
end;

procedure TStuffCodingStockF.qryStuffCodingStockAfterCancel(DataSet: TDataSet);
begin
  inherited;
  InitForm
end;

procedure TStuffCodingStockF.qryStuffCodingStockAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('StuffCode').AsLargeInt := StuffCode;
end;

procedure TStuffCodingStockF.InitForm;
begin
  With qryStuffCodingStock do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value := StuffCode;
    Active := True;
  end;
end;

procedure TStuffCodingStockF.srcStuffCodingStockStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStuffCodingStock.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;

  btnClose.Cancel := not(qryStuffCodingStock.State in dsEditModes);

end;

procedure TStuffCodingStockF.actOkExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TStuffCodingStockF.actRecallExecute(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterStoreID);
      if ShowModal = mrOk then
        GetFilterString;
    finally
      Free;
    end; // try
  end; // with
  if myParams.FindParam('StoreID') = nil then
    exit;

  BigMessageProgBar('در حال انتقال اطلاعات ...  ', 2);
  with TADOStoredProc.Create(Self) do
    try
      Connection := DMf.adcBSell;
      CommandTimeout := 0;
      ProcedureName := 'Sp_StuffCodingStock_In;1';
      Parameters.Refresh;
      Parameters.ParamByName('@StoreIDFrom').Value :=
        GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
      Parameters.ParamByName('@StoreIDTo').Value :=
        GetcTo(myParams.ParamValues['StoreID'], ftInteger);
      Parameters.ParamByName('@StuffCodeFrom').Value := 0; // استفاده نشده
      Parameters.ParamByName('@StuffCodeTo').Value := 99; // استفاده نشده
      ExecProc;
    finally
      Free;
    end;
  Warn('اطلاعات منتقل شد.‏', mtInformation);
  qryStuffCodingStock.Requery([]);
  CloseMessage
end;

procedure TStuffCodingStockF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 1] of String;
  b: Boolean;
begin
  inherited;
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;
  i := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  (Sender as TCedarDbgrid).SelectedIndex := i;
  if not(aDataSet.State in dsEditModes) then
    aDataSet.Edit;

  if DBGrid1.Columns[i].FieldName = 'StoreID' then
  begin
    sqlText := 'SELECT n_StoreID, c_StoreName FROM Stores';
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'انبارها', sqlText,
      ['کد انبار', 'شرح انبار'], Results, [50, 100], alLeft);
    if b then
    begin
      if not(aDataSet.State in dsEditModes) then
        aDataSet.Edit;
      aDataSet.FieldByName('StoreID').AsString := Results[0];
    end;
    exit;
  end;

  if DBGrid1.Columns[i].FieldName = 'ProductModel' then
    SpeedButtonProductModel(qryStuffCodingStock)

end;

procedure TStuffCodingStockF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if qryStuffCodingStock.State in dsEditModes then
  begin
    qryStuffCodingStock.Post;
  end;

end;

procedure TStuffCodingStockF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TStuffCodingStockF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 2;
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 7;
          7:
            nextIndex := -1;
          8:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      #32, #157: if curIndex in [0] then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end;
  else
    begin
    end;
  end;

  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          (Sender as TCedarDbgrid).SelectedIndex := 0;

        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      begin
        (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
      end;

    end;

end;

procedure TStuffCodingStockF.qryStuffCodingStockBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف ردیف  ' +
    qryStuffCodingStock_StoreName.AsString + '  مطمئن هستيد؟') <> mrYes then
    Abort
end;

procedure TStuffCodingStockF.qryStuffCodingStockBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryStuffCodingStock) then
    Abort;

end;

end.
