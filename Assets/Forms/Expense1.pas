unit Expense1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ADODB, DBActns,
  ActnList, Buttons, ExtCtrls, Menus, template2MDI, Grids, Vcl.DBGrids, ImgList,
  System.ImageList, System.Actions, ppPrnabl, ppClass, ppCtrls, ppBands, ppDB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd,
  ppReport;

type
  TExpense1F = class(Ttemplate2MDIF)
    qryExpense1s: TADOQuery;
    qryExpense1sExpID: TIntegerField;
    qryExpense1sSerialNum: TIntegerField;
    qryExpense1sDocNum: TIntegerField;
    qryExpense1sDocDate: TStringField;
    qryExpense1sExpValue: TBCDField;
    qryExpense1sBuyDate: TStringField;
    qryExpense1sStartUsingDate_x: TStringField;
    qryExpense1sExpDesc: TStringField;
    qryExpense1sSellerTopicCode: TLargeintField;
    qryExpense1sSellerDetailCode: TIntegerField;
    qryExpense1sSellerCTopicCode: TIntegerField;
    qryExpense1sFirstDepValue: TBCDField;
    qryExpense1sDepvalueInYear: TBCDField;
    qryExpense1sState: TWordField;
    srcExpense1s: TDataSource;
    newPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    okPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryExpense1s_AccName: TStringField;
    qryExpense1s_DetailName: TStringField;
    qryExpense1s_CtopicName: TStringField;
    DataSetDelete1: TDataSetDelete;
    actSort: TAction;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actPrint: TAction;
    qryExpense1s_StuffDesc: TStringField;
    qryExpense1s_PelakNum: TStringField;
    actOther: TAction;
    BitBtn8: TBitBtn;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    GroupBox7: TGroupBox;
    Label3: TLabel;
    spdSerialNum: TSpeedButton;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    spdSellerTopicCode: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox5: TGroupBox;
    spdSellerCTopicCode: TSpeedButton;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    GroupBox6: TGroupBox;
    spdSellerDetailCode: TSpeedButton;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    edtFirstDepValue: TDBEdit;
    DBEdit11: TDBEdit;
    edtBookValue: TEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    Label11: TLabel;
    edtBuyDate: TDBEdit;
    DBEdit17: TDBEdit;
    Panel4: TPanel;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label8: TLabel;
    qryExpense1sOwnerType: TIntegerField;
    cmbOwnerType: TDBComboBox;
    Label12: TLabel;
    actSendExcel: TAction;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    actFilter: TAction;
    qryDep_Table: TADOQuery;
    qryDep_TableID: TAutoIncField;
    qryDep_TableSerial: TIntegerField;
    qryDep_TableYearid: TIntegerField;
    qryDep_TableTablename: TWideStringField;
    qryDep_TableId4table: TIntegerField;
    qryDep_TableFirstDepValue: TBCDField;
    qryDep_TableDepvalueInyear: TBCDField;
    qryDep_TableCompanyID: TIntegerField;
    srcDep_Table: TDataSource;
    ppReport1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    pdbplnExpense1s: TppDBPipeline;
    ptlbnd1: TppTitleBand;
    ppLblPrintDate: TppLabel;
    ppLblCompanyName: TppLabel;
    pplblYearId: TppLabel;
    qryExpense1sFirstUser: TStringField;
    qryExpense1sLastUser: TStringField;
    procedure qryExpense1sAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcExpense1sStateChange(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure spdSerialNumClick(Sender: TObject);
    procedure spdSellerTopicCodeClick(Sender: TObject);
    procedure spdSellerDetailCodeClick(Sender: TObject);
    procedure spdSellerCTopicCodeClick(Sender: TObject);
    procedure qryExpense1sBeforeDelete(DataSet: TDataSet);
    procedure qryExpense1sAfterPost(DataSet: TDataSet);
    procedure qryExpense1sAfterInsert(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure qryExpense1sBeforeEdit(DataSet: TDataSet);
    procedure qryExpense1sFirstDepValueChange(Sender: TField);
    procedure qryExpense1sBeforePost(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryExpense1sDocDateChange(Sender: TField);
    procedure qryExpense1sOwnerTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryExpense1sOwnerTypeSetText(Sender: TField; const Text: String);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure qryExpense1sAfterEdit(DataSet: TDataSet);
  private
    procedure CalcValue;
    procedure InitForm;
    function CanChange(ExpID: Integer): Boolean;
    procedure InitCombo;
    function WarrantyCheck(InputDate: string; SN: Integer): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Expense1F: TExpense1F;

implementation

uses Dm, GlobalPro, sort2, search2, searchCode_ADO, mmessage, ScanImage,
  StrUtils, FaraConsts, FormFunctions, filter_ADO, FilterClass_ADO;

{$R *.dfm}

procedure TExpense1F.qryExpense1sAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDep_Table, Parameters do
  begin
    Close;
    ParamByName('Id4table').Value := qryExpense1sExpID.AsInteger;
    Open;
  end;
  CalcValue;
end;

procedure TExpense1F.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TExpense1F.srcExpense1sStateChange(Sender: TObject);
begin
  inherited;

  okPanel.Visible := qryExpense1s.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(dmF.adcBSell);
end;

procedure TExpense1F.DBEdit3KeyPress(Sender: TObject; var Key: Char);
var
  aControl: TComponent;
begin
  inherited;
  if Key = #32 then
  begin
    aControl := FindComponent('spd' + (Sender as TDBEdit).DataField);
    If Assigned(aControl) then
      TSpeedButton(aControl).Click
    else
      Warn('ÅÌœ« ‰‘œ');
  end;
end;

procedure TExpense1F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryExpense1s);
end;

procedure TExpense1F.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryExpense1s);
end;

procedure TExpense1F.spdSerialNumClick(Sender: TObject);
var
  Result: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'Ã” ÃÊÌ',
    'SELECT SerialNum, PelakNum, StuffDesc FROM  assets.Amval ',
    ['‘„«—Â ”—Ì«· ', '‘„«—Â Å·«ﬂ', '‰«„ ﬂ«·«'], Result, [60, 60, 100], alLeft)
  then
  begin
    if not(qryExpense1s.State in dsEditModes) then
      qryExpense1s.Edit;
    qryExpense1s.FieldByName('SerialNum').AsString := Result[0];
  end;

end;

procedure TExpense1F.spdSellerTopicCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'Ã” ÃÊÌ',
    'SELECT TopicCode, MoeenName_L1  FROM  acc.Categories WHERE (LevelID = 3)',
    ['ﬂœ', '‘—Õ Õ”«»'], Result, [60, 100], alLeft) then
  begin
    if not(qryExpense1s.State in dsEditModes) then
      qryExpense1s.Edit;
    qryExpense1s.FieldByName('SellerTopicCode').AsString := Result[0]
  end;

end;

procedure TExpense1F.spdSellerDetailCodeClick(Sender: TObject);
const
  SqlTxt = 'SELECT Details.DetailCode, Details.DetailName_L1' +
    ' FROM acc.DetailRange as DetailRange INNER JOIN' +
    ' acc.Details as Details ON DetailRange.DetailCode = Details.DetailCode' +
    ' WHERE TopicCode = %d' +
    ' GROUP BY Details.DetailCode, Details.DetailName_L1';

var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'Ã” ÃÊÌ',
    Format(SqlTxt, [qryExpense1s.FieldByName('SellerTopicCode').AsInteger]),
    ['ﬂœ', '‘—Õ'], Result, [60, 100], alLeft) then
  begin
    if not(qryExpense1s.State in dsEditModes) then
      qryExpense1s.Edit;
    qryExpense1s.FieldByName('SellerDetailCode').AsString := Result[0]
  end;

end;

procedure TExpense1F.spdSellerCTopicCodeClick(Sender: TObject);
const
  SqlTxt = 'SELECT CenterTopics.CTopicCode, CenterTopics.CTopicName_L1' +
    ' FROM acc.CenterTopics as CenterTopics INNER JOIN' +
    ' acc.CenterTopicRange as CenterTopicRange ON CenterTopics.CTopicCode = CenterTopicRange.CTopicCode'
    + ' WHERE (CenterTopicRange.TopicCode = %d)';
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'Ã” ÃÊÌ',
    Format(SqlTxt, [qryExpense1s.FieldByName('SellerTopicCode').AsInteger]),
    ['ﬂœ', '‘—Õ'], Result, [60, 100], alLeft) then
  begin
    if not(qryExpense1s.State in dsEditModes) then
      qryExpense1s.Edit;
    qryExpense1s.FieldByName('SellerCTopicCode').AsString := Result[0]
  end;

end;

procedure TExpense1F.qryExpense1sBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if CanChange(DataSet.FieldByName('ExpID').AsInteger) then
  begin
    Warn('„Ã«“ »Â Õ–› ‰Ì” Ìœ');
    Abort;
  end; // if
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TExpense1F.qryExpense1sAfterPost(DataSet: TDataSet);
var
  IDTemp: Integer;
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
  dmF.AmvalCal(opt.BaseDate, DataSet.FieldByName('SerialNum').AsInteger);
  IDTemp := DataSet.FieldByName('ExpID').AsInteger;
  qryExpense1s.Requery;
  qryExpense1s.Locate('ExpID', IDTemp, []);
  if not WarrantyCheck(DataSet.FieldByName('BuyDate').AsString,
    DataSet.FieldByName('SerialNum').AsInteger) then
    Warn('«Ì‰ œ«—«ÌÌ œ«—«Ì ê«—«‰ Ì „Ì»«‘œ °   ⁄„Ì—«  «”«”Ì À»  ‘œÂ »——”Ì „Ãœœ ê—œœ .˛');

end;

procedure TExpense1F.qryExpense1sAfterEdit(DataSet: TDataSet);
begin
  inherited;
DataSet.FieldByName('LastUser').AsString := GetUserStamp;

end;

procedure TExpense1F.qryExpense1sAfterInsert(DataSet: TDataSet);
var
  ExpID: Integer;
begin
  inherited;
  DataSet.FieldByName('FirstUser').AsString :=GetUserStamp;
  ExpID := GetANewCode(Self.name,
    Format('select max(ExpID) from Assets.Expenses where (ExpID BETWEEN %d AND %d)',
    [opt.StartLimitIDAss, opt.EndLimitIDAss]), 'ExpID');
  if ExpID < opt.StartLimitIDAss then
    DataSet.FieldByName('ExpID').AsInteger := opt.StartLimitIDAss
  else
    DataSet.FieldByName('ExpID').AsInteger := ExpID;

  DataSet.FieldByName('BuyDate').AsString :=
    IfThen(var_glb_CurrentDate < APPBank.endYear, var_glb_CurrentDate,
    APPBank.endYear);

end;

procedure TExpense1F.CalcValue;
begin
  edtBookValue.Text := CurrToStrF(qryExpense1s.FieldByName('ExpValue')
    .AsCurrency - (qryDep_Table.FieldByName('FirstDepValue').AsCurrency +
    qryDep_Table.FieldByName('DepvalueInYear').AsCurrency), ffCurrency, 0)
end;

procedure TExpense1F.N2Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(dmF.adcBSell, 'Expense1s',
    qryExpense1s.FieldByName('ExpID').AsString, 2)
end;

procedure TExpense1F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmF.adcBSell, 'SerialNum', '‘„«—Â ”—Ì«·', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(SerialNum),max(SerialNum) from assets.Expenses');
      AddItem(dmF.adcBSell, 'BuyDate', ' «—ÌŒ  ⁄„Ì—«  ', ' «—ÌŒ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(BuyDate),max(BuyDate) from assets.Expenses');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        with qryExpense1s do
        begin
          Active := false;
          Parameters.ParamByName('SerialNumFrom').Value :=
            GetcFrom(myParams.ParamValues['SerialNum'], ftInteger);
          Parameters.ParamByName('SerialNumTo').Value :=
            GetcTo(myParams.ParamValues['SerialNum'], ftInteger);

          Parameters.ParamByName('BuyDateFrom').Value :=
            GetcFrom(myParams.ParamValues['BuyDate'], ftString);
          Parameters.ParamByName('BuyDateTo').Value :=
            GetcTo(myParams.ParamValues['BuyDate'], ftString);

          Active := true;
        end; // with
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TExpense1F.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;

procedure TExpense1F.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'Expense.rtm');
end;

function TExpense1F.CanChange(ExpID: Integer): Boolean;
begin
  with dmF.qry_TempAss do
  begin
    Close;
    SQL.Text := 'SELECT State FROM assets.Expenses WHERE ExpID =:Id';
    Parameters.ParamByName('id').Value := ExpID;
    Open;
    Result := Fields[0].AsInteger > 0;
    Close;
  end; // with
end;

procedure TExpense1F.qryExpense1sBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if CanChange(DataSet.FieldByName('ExpID').AsInteger) then
  begin
    Warn('„Ã«“ »Â ÊÌ—«Ì‘ ‰Ì” Ìœ');
    Abort;
  end; // if
end;

procedure TExpense1F.qryExpense1sFirstDepValueChange(Sender: TField);
begin
  inherited;
  CalcValue;
end;

procedure TExpense1F.qryExpense1sBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckLimitID(DataSet.FieldByName('ExpID')) then
    Abort;

  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;

  if not CheckUsingDate(DataSet.FieldByName('BuyDate').AsString,
    DataSet.FieldByName('serialNum').AsInteger) then
  begin
    FlashAControl(edtBuyDate);
    Abort;
  end;
  // if not CheckUsingDate(DataSet.fieldbyname('DocDate').AsString,
  // DataSet.fieldbyname('serialNum').AsInteger) then
  // begin
  // FlashAControl(DBEdit7);
  // Abort;
  // end;
  if not CheckUsingDate(DataSet.FieldByName('StartUsingDate_x').AsString,
    DataSet.FieldByName('serialNum').AsInteger) then
  begin
    FlashAControl(DBEdit8);
    Abort;
  end;

end;

procedure TExpense1F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TExpense1F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TExpense1F.qryExpense1sDocDateChange(Sender: TField);
var
  m, y, d: Integer;
  S: String;
begin
  inherited;
  S := Sender.AsString;

  m := StrToIntDef(MidStr(S, 6, 2), 0) + 1;
  y := StrToIntDef(LeftStr(S, 4), 0);
  d := StrToIntDef(RightStr(S, 2), 0);
  if m > 12 then
  begin
    m := m - 12;
    y := y + 1;
  end;
  if qryExpense1s.FieldByName('StartUsingDate_x').IsNull then
    if d = 1 then
      qryExpense1s['StartUsingDate_x'] := S
    else
      qryExpense1s['StartUsingDate_x'] := Format('%.2d/%.2d/01', [y, m]);

end;

procedure TExpense1F.InitCombo;
begin
  cmbOwnerType.Clear;
  with TADOQuery.Create(nil) do
    try
      Connection := dmF.adcBSell;
      SQL.Text := 'SELECT OwnerType, TypeName FROM assets.OwnerType';
      SQL.Add('ORDER BY OwnerType');
      Open;
      while not Eof do
      begin
        cmbOwnerType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        Next;
      end;
    finally
      Free;
    end;
end;

procedure TExpense1F.InitForm;
begin
  SetLookUpCash(qryExpense1s);
  qryExpense1s.Open;
  if var_glb_gParam <> 0 then
    qryExpense1s.Locate('ExpID', var_glb_gParam, []);
  edtFirstDepValue.ReadOnly := opt.LevelAccess >= user.level;
  edtFirstDepValue.TabStop := not edtFirstDepValue.ReadOnly;
  InitCombo;

end;

procedure TExpense1F.qryExpense1sOwnerTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := cmbOwnerType.Items[Sender.AsInteger];
end;

procedure TExpense1F.qryExpense1sOwnerTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := Integer(cmbOwnerType.Items.Objects
    [cmbOwnerType.ItemIndex])
end;

function TExpense1F.WarrantyCheck;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := dmF.adcBSell;
      SQL.Text :=
        Format('SELECT COUNT(*) FROM assets.Amval WHERE (SerialNum = %d) AND (WarrantyDate > %S)',
        [SN, QuotedStr(InputDate)]);
      Open;
      Result := Fields[0].AsInteger = 0;
    finally
      Free;
    end;

end;

procedure TExpense1F.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TExpense1F.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TExpense1F.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TExpense1F.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TExpense1F.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
