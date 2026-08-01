unit MachinDelivery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, sndkey32,
  Mask, DBCtrls, DB, Grids, Vcl.DBGrids, ADODB, ppBands, ppCache,
  ppClass, ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ComCtrls, FormFunctions, frPelak, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TMachinDeliveryF = class(Ttemplate2MDIF)
    qryDelivery: TADOQuery;
    srcDelivery: TDataSource;
    okPanel: TPanel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    newPanel: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btnExcel: TBitBtn;
    qryCustID: TADOQuery;
    actExcel: TAction;
    btnExcel1: TBitBtn;
    actFilter: TAction;
    actCopyPaste: TAction;
    actPrint: TAction;
    actSort: TAction;
    btnSort: TBitBtn;
    btnSort1: TBitBtn;
    btnSearch_: TBitBtn;
    actGetExcel: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    btnPrint: TBitBtn;
    grd1: TDBGrid;
    tbc1: TTabControl;
    pnlStuffCode: TPanel;
    qryStuffCode: TADOQuery;
    qryDeliveryDeliveryID: TIntegerField;
    qryDeliveryStuffCode: TLargeintField;
    qryDeliveryCustID1: TIntegerField;
    qryDeliveryDeliveryDate: TStringField;
    qryDeliveryDeliveryText: TStringField;
    qryDelivery_StuffCode: TStringField;
    qryDelivery_CustID1: TStringField;
    edtStuffCode: TDBEdit;
    LblPerson1: TLabel;
    btnStuffCode: TSpeedButton;
    dbtxt_StuffCode: TDBText;
    qryDelivery_sd2: TStringField;
    qryDelivery_sd6: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    dbtxt_sd1: TDBText;
    dbtxt_sd6: TDBText;
    Label3: TLabel;
    pnlCustID1: TPanel;
    Label4: TLabel;
    edtCustID1: TDBEdit;
    btnCustID1: TSpeedButton;
    dbtxt_CustID1: TDBText;
    edtDeliveryDate: TDBEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    dbmmoDeliveryText: TDBMemo;
    dbtxt_sd2: TDBText;
    Label6: TLabel;
    qryDelivery_sd1: TStringField;
    DBNavigator1: TDBNavigator;
    procedure srcDeliveryStateChange(Sender: TObject);
    procedure qryDeliveryAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure qryDeliveryAfterPost(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryDeliveryBeforePost(DataSet: TDataSet);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actManagGridColumnsExecute(Sender: TObject);
    procedure qryDeliveryBeforeDelete(DataSet: TDataSet);
    procedure qryDeliveryAfterDelete(DataSet: TDataSet);
    procedure tbc1Change(Sender: TObject);
    procedure edtStuffCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnStuffCodeClick(Sender: TObject);
    procedure edtCustID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCustID1Click(Sender: TObject);
    procedure grd1KeyPress(Sender: TObject; var Key: Char);
    procedure grd1EditButtonClick(Sender: TObject);
  private
    FormType: Integer;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MachinDeliveryF: TMachinDeliveryF;

implementation

uses DM, GlobalPro, searchCode_ADO, GetExcel, MMESSAGE, filter_ADO,
  FilterClass_ADO, sort2, search2, ManagGridColumns, FaraConsts;

{$R *.dfm}

procedure TMachinDeliveryF.actManagGridColumnsExecute(Sender: TObject);
begin
  inherited;
  ManagGridColumnsF.ShowColumns(DMf.adcBSell, grd1, FormType)
end;

procedure TMachinDeliveryF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1)
end;

procedure TMachinDeliveryF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'CustID', 'تحويل گيرنده', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, qryCustID.SQL.Text,
        'SELECT Min(Customers.CustID),Max(Customers.CustID) FROM Customers '
        // +WHERE (CustomerGrpID IN ('+
        // 'SELECT CustomerGrpID FROM CustomersGroup WHERE  GroupType in(0))) '
        );
      AddItem(DMf.adcBSell, 'DeliveryDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'SELECT  min(DeliveryDate),max(DeliveryDate) FROM Machin.Delivery');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        // UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
  With qryDelivery do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM Machin.Delivery';
    if myParams.FindParam('DeliveryDate') = nil then
    else
    begin
      SQL.Add('where (DeliveryDate BETWEEN :DeliveryDateFrom AND :DeliveryDateTo )');
      SQL.Add('AND (CustID1 BETWEEN :CustIDFrom AND :CustIDTo )');

      Parameters.ParamByName('DeliveryDateFrom').Value :=
        GetcFrom(myParams.ParamValues['DeliveryDate'], ftDate);
      Parameters.ParamByName('DeliveryDateTo').Value :=
        GetcTo(myParams.ParamValues['DeliveryDate'], ftDate);

      Parameters.ParamByName('CustIDFrom').Value :=
        GetcFrom(myParams.ParamValues['CustID'], ftInteger);
      Parameters.ParamByName('CustIDTo').Value :=
        GetcTo(myParams.ParamValues['CustID'], ftInteger);
    end;
    Active := True;
  end;

end;

procedure TMachinDeliveryF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryDelivery.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryDelivery);
  finally
    qryDelivery.AfterPost := qryDeliveryAfterPost;
  end;
end;

procedure TMachinDeliveryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryDelivery.DisableControls;
    InitReportFile(ppReport1, Self.Name, True);
  finally
    qryDelivery.EnableControls;
  end; // try
end;

procedure TMachinDeliveryF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDelivery);
end;

procedure TMachinDeliveryF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qryDelivery);
end;

procedure TMachinDeliveryF.btnCustID1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if not(qryDelivery.state in dsEditModes) then
    Exit;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'تحويل گيرنده',
    qryCustID.SQL.Text, ['کد', 'تحويل گيرنده'], Results, [50, 150], alLeft);
  if b then
    qryDelivery.FieldByName('CustID1').AsString := Results[0];
end;

procedure TMachinDeliveryF.btnStuffCodeClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 4] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ',
    qryStuffCode.SQL.Text, ['شناسه خودرو', 'مشخصات', 'شماره شهربانی', 'مدل',
    'پلاك اموالي'], Results, [100, 100, 100, 100, 100], alLeft);
  if b then
  begin
    qryDelivery['StuffCode'] := Results[0];
  end; // if

end;

procedure TMachinDeliveryF.edtCustID1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnCustID1.Click;
end;

procedure TMachinDeliveryF.edtStuffCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnStuffCode.Click;
end;

procedure TMachinDeliveryF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  qryDelivery.Active := True;
  tbc1Change(tbc1);
end;

procedure TMachinDeliveryF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grd1, IntToStr(FormType));
end;

procedure TMachinDeliveryF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grd1, 1, True, IntToStr(FormType));
end;

procedure TMachinDeliveryF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
end;

procedure TMachinDeliveryF.grd1EditButtonClick(Sender: TObject);
var
  id: SmallInt;
begin
  inherited;
  if not(qryDelivery.state in dsEditModes) then
    Exit;
  id := (Sender as TDBGrid).SelectedIndex;
  if grd1.Columns[id].FieldName = 'StuffCode' then
    btnStuffCode.Click;
  if grd1.Columns[id].FieldName = 'CustID1' then
    btnCustID1.Click;

end;

procedure TMachinDeliveryF.grd1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TMachinDeliveryF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        nextIndex := curIndex + 1;
        if (curIndex > 0) and (aDataSet.FieldByName('StuffCode').ISNULL) then
        begin
          aDataSet.Cancel;
          okPanel.SetFocus;
          Exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(grd1.Columns[nextIndex].Visible) OR
          (grd1.Columns[nextIndex].ReadOnly)) do
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
      if (Sender as TDBGrid).DataSource.DataSet.state in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if grd1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin
      Key := #0;
      grd1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < grd1.Columns.Count) and
      (not(grd1.Columns[nextIndex].Visible) OR
      (grd1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          grd1.SelectedIndex := 0;
        end;
      // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end;
end;

procedure TMachinDeliveryF.qryDeliveryAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TMachinDeliveryF.qryDeliveryAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DeliveryID').AsInteger :=
    GetANewCode(Self.Name, 'Machin.Delivery', 'DeliveryID', DMf.adcBSell);
  DataSet.FieldByName('DeliveryDate').AsString := var_glb_CurrentDate;
end;

procedure TMachinDeliveryF.qryDeliveryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TMachinDeliveryF.qryDeliveryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
end;

procedure TMachinDeliveryF.qryDeliveryAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TMachinDeliveryF.tbc1Change(Sender: TObject);
begin
  inherited;
  ManagGridColumnsF.SetColumns(DMf.adcBSell, grd1, FormType);
  case tbc1.TabIndex of
    0:
      begin
        grd1.Visible := False;
        GroupBox1.Align := alClient;
      end;
    1:
      begin
        // pnlCustID1.Visible :=True;
        GroupBox1.Align := alTop;
        GroupBox1.Height := 100;
        grd1.Align := alClient;
      end;

  end;
  pnlCustID1.Visible := tbc1.TabIndex = 0;
  grd1.Visible := not pnlCustID1.Visible;
end;

procedure TMachinDeliveryF.srcDeliveryStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDelivery.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, 'Machin.Delivery', '', Self.Name);
end;

end.
