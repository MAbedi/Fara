unit StuffCodingFacilities;

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
  TStuffCodingFacilitiesF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qryStuffCodingFacilities: TADOQuery;
    srcStuffCodingFacilities: TDataSource;
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
    qryStuffCodingFacilitiesStuffCodingID: TAutoIncField;
    qryStuffCodingFacilitiesStoreID: TSmallintField;
    qryStuffCodingFacilitiesStuffCode: TLargeintField;
    qryStuffCodingFacilitiesKeepPlace: TStringField;
    qryStuffCodingFacilitiesCabinet: TStringField;
    qryStuffCodingFacilitiesTierced: TStringField;
    qryStuffCodingFacilities_StoreName: TStringField;
    qryStuffCodingFacilitiesLocationGps: TBlobField;
    actRecall: TAction;
    BitBtn2: TBitBtn;
    procedure qryStuffCodingFacilitiesAfterInsert(DataSet: TDataSet);
    procedure srcStuffCodingFacilitiesStateChange(Sender: TObject);
    procedure qryStuffCodingFacilitiesBeforePost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure qryStuffCodingFacilitiesAfterCancel(DataSet: TDataSet);
    procedure qryStuffCodingFacilitiesBeforeDelete(DataSet: TDataSet);
    procedure actRecallExecute(Sender: TObject);
  private
    { Private declarations }
    StuffCode: Largeint;
    qryFacilities: TADOQuery;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  public
    function enter(Stuff_Code: Largeint): TModalResult;
  end;

var
  StuffCodingFacilitiesF: TStuffCodingFacilitiesF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, FormFunctions, Filter_ADO_Const,
  Filters, filter_ADO;

{$R *.dfm}

function TStuffCodingFacilitiesF.enter(Stuff_Code: Largeint): TModalResult;
begin
  Result := mrNone;
  StuffCodingFacilitiesF := TStuffCodingFacilitiesF.Create(Application);
  // _StuffCodingFacilitiesF := StuffCodingFacilitiesF;
  with StuffCodingFacilitiesF do
    try
      StuffCode := Stuff_Code;
      // qryFacilities := qry_Facilities;
      SetLookUpCash(qryStuffCodingFacilities);
      InitForm;
      Result := ShowModal;
    finally
      Free; // on reciptsGridF
    end;
end;

procedure TStuffCodingFacilitiesF.qryStuffCodingFacilitiesAfterCancel
  (DataSet: TDataSet);
begin
  inherited;
  InitForm
end;

procedure TStuffCodingFacilitiesF.qryStuffCodingFacilitiesAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('StuffCode').AsLargeInt := StuffCode;
end;

procedure TStuffCodingFacilitiesF.InitForm;
begin
  With qryStuffCodingFacilities do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value := StuffCode;
    Active := True;
  end;
end;

procedure TStuffCodingFacilitiesF.srcStuffCodingFacilitiesStateChange
  (Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStuffCodingFacilities.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;

  btnClose.Cancel := not(qryStuffCodingFacilities.State in dsEditModes);

end;

procedure TStuffCodingFacilitiesF.actOkExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TStuffCodingFacilitiesF.actRecallExecute(Sender: TObject);
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
    end;
  end;
  if myParams.FindParam('StoreID') = nil then
    exit;

  BigMessageProgBar('در حال انتقال اطلاعات ...  ', 2);
  with TADOStoredProc.Create(Self) do
    try
      Connection := DMf.adcBSell;
      CommandTimeout := 0;
      ProcedureName := 'Sp_StuffCodingFacilities_In;1';
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
  qryStuffCodingFacilities.Requery([]);
  CloseMessage
end;

procedure TStuffCodingFacilitiesF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 1] of String;
  b: Boolean;
begin
  inherited;
  if (Sender as TCedarDbgrid).ReadOnly then
    Exit;
  i := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  (Sender as TCedarDbgrid).SelectedIndex := i;
  if not(aDataSet.State in dsEditModes) then
    aDataSet.Edit;

  // if DBGrid1.Columns[i].FieldName = '' then
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
    Exit;
  end;
end;

procedure TStuffCodingFacilitiesF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if qryStuffCodingFacilities.State in dsEditModes then
  begin
    qryStuffCodingFacilities.Post;
  end;

end;

procedure TStuffCodingFacilitiesF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TStuffCodingFacilitiesF.gridkeyenter(Sender: TObject; var Key: Char);
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
          Exit;
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

procedure TStuffCodingFacilitiesF.qryStuffCodingFacilitiesBeforeDelete
  (DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف ردیف  ' + qryStuffCodingFacilities_StoreName.
    AsString + '  مطمئن هستيد؟') <> mrYes then
    Abort
end;

procedure TStuffCodingFacilitiesF.qryStuffCodingFacilitiesBeforePost
  (DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryStuffCodingFacilities) then
    Abort;

end;

end.
