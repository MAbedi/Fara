unit ReciptItemsDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, SumDBGrid, ppParameter, ppDesignLayer, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, sndkey32;

type
  TReciptItemsDetailsF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    SrcRecipts: TDataSource;
    srcReciptItemsDetails: TDataSource;
    Panel3: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtFormNo: TDBEdit;
    EdtDate: TDBEdit;
    edtStoreID: TDBEdit;
    edtc_StoreName: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TCedarDbgrid;
    edtStuffCode: TDBEdit;
    edtc_StuffName: TDBEdit;
    Label4: TLabel;
    srcItems: TDataSource;
    aBigPanel: TPanel;
    BtnExcel: TBitBtn;
    pnlCount: TPanel;
    actSearch: TAction;
    BitBtn1: TBitBtn;
    procedure srcReciptItemsDetailsStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnExcelClick(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
  private
    { Private declarations }
    // SetReciptID: Integer;
    ReciptsEntity: Real;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  public
    { Public declarations }
    FormInOutds: String;
    procedure enter(qry_ReciptItemsDetails, qry_Items, qry_Recipts: TADOQuery;
      FormOutput: Boolean);
    procedure InitPanel;

  end;

var
  ReciptItemsDetailsF: TReciptItemsDetailsF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, FormFunctions, GetExcel,
  ReciptsGrid;

{$R *.dfm}

procedure TReciptItemsDetailsF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        if DBGrid1.Columns.Count - 1 = nextIndex then
          nextIndex := -1
        else
          nextIndex := curIndex + 1;
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
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      #32, #157: if (Sender as TCedarDbgrid).Columns[nextIndex].ButtonStyle = cbsEllipsis
      then
    begin
      Key := #0;
      // DBGrid1EditButtonClick(DBGrid1);
    end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          // sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 1;
          aDataSet.Append;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TReciptItemsDetailsF.actSearchExecute(Sender: TObject);
begin
  inherited;
AccSpeedButtonReciptItemsDetails

end;

procedure TReciptItemsDetailsF.BtnExcelClick(Sender: TObject);
begin
  inherited;
  if not(ReciptsGridF.qryRecipts.State in dseditmodes) then
  begin
    Warn('فرم اصلی در حالت ویرایش نیست');
    Abort;
  end;
  try
    GetExcelF.ShowImPortExcel(DBGrid1.DataSource.DataSet);
  finally
  end;

end;

procedure TReciptItemsDetailsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TReciptItemsDetailsF.enter(qry_ReciptItemsDetails, qry_Items,
  qry_Recipts: TADOQuery; FormOutput: Boolean);
var
  s: string;
begin
  ReciptItemsDetailsF := TReciptItemsDetailsF.Create(Application);
  with ReciptItemsDetailsF do
  begin
    try
      FormInOutds := 'Input';
      if FormOutput then
        FormInOutds := 'Output';

      with ReciptsGridF.qryRIDEntity do
      begin
        Active := false;
        Parameters.ParamByName('StuffCode').Value :=
          qry_Items.FieldByName('StuffCode').AsLargeInt;
        Parameters.ParamByName('ID').Value := qry_Recipts.FieldByName('ID')
          .AsLargeInt;
        Parameters.ParamByName('StoreID').Value :=
          qry_Recipts.FieldByName('StoreID').AsInteger;

        Active := True;
      end;
      srcReciptItemsDetails.DataSet := qry_ReciptItemsDetails;
      srcItems.DataSet := qry_Items;
      SrcRecipts.DataSet := qry_Recipts;
      s := 'ReciptItemID = ' + srcItems.DataSet.FieldByName('ReciptItemID')
        .AsInteger.ToString;
      qry_ReciptItemsDetails.Filter := s;
      qry_ReciptItemsDetails.Filtered := True;

      ReciptsEntity := srcItems.DataSet.FieldByName('InputEntity').AsInteger +
        srcItems.DataSet.FieldByName('OutputEntity').AsInteger;
      pnlCount.Caption := 'تعداد = ' + FloatToStr(ReciptsEntity);
      DBGrid1.SelectedIndex := 1;
      InitForm;
      ShowModal;
    finally
      Free;
      ReciptItemsDetailsF := nil;
    end;
  end;
end;

procedure TReciptItemsDetailsF.InitForm;
begin

end;

procedure TReciptItemsDetailsF.InitPanel;
begin
  aBigPanel.Caption := Abs(DBGrid1.DataSource.DataSet.RecNo).ToString + ' از ' +
    DBGrid1.DataSource.DataSet.RecordCount.ToString;

end;

procedure TReciptItemsDetailsF.srcReciptItemsDetailsStateChange
  (Sender: TObject);
begin
  inherited;
  okPanel.Visible := DBGrid1.DataSource.DataSet.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  DBGrid1.SelectedIndex := 1;
end;

procedure TReciptItemsDetailsF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  // With TADOQuery(DBGrid1.DataSource.DataSet) do
  // begin
  // Sort := 'DetailCaption';
  // First;
  // while not eof do
  // begin
  // if s = FieldByName('DetailCaption').AsString then
  // begin
  // Warn('کد تکراری وجود دارد.');
  // Abort;
  // end;
  // s := FieldByName('DetailCaption').AsString;
  // Next;
  // end;
  // end;

  if ReciptsEntity <> DBGrid1.DataSource.DataSet.RecordCount then
    CanClose := get_response('تعداد سطر و سریال کامل ثبت نشده !!' + #13#10 +
      'آيا از خروج مطمئن هستيد؟') = mrYes;
end;

end.
