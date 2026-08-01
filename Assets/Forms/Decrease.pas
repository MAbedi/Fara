unit Decrease;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB, FaraConsts,
  ADODB, Mask, DBCtrls, Menus, template2MDI, ImgList, ppDB, ppDBPipe,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppParameter, ComCtrls, StrUtils, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TDecreaseF = class(Ttemplate2MDIF)
    qryDecrease: TADOQuery;
    qryDecreaseDecreaseID: TIntegerField;
    qryDecreaseSerialNum: TIntegerField;
    qryDecreaseDecDate: TStringField;
    qryDecreaseDecValue: TBCDField;
    qryDecreaseDecType: TIntegerField;
    qryDecreaseState: TWordField;
    qryDecreaseComments: TStringField;
    qryDecreasebuyerTopicCode: TLargeintField;
    qryDecreasebuyerDetailCode: TIntegerField;
    qryDecreasebuyerCtopicCode: TIntegerField;
    qryDecreaseInvoiceNum: TIntegerField;
    qryDecreaseInvoiceDate: TStringField;
    srcDecrease: TDataSource;
    qryDecrease_Pelak: TStringField;
    newPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    okPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    qryDecrease_AccName: TStringField;
    qryDecrease_DetailName: TStringField;
    qryDecrease_CtopicName: TStringField;
    qryDecrease_StuffDesc: TStringField;
    DataSetDelete1: TDataSetDelete;
    actSort: TAction;
    actOther: TAction;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qryDecreaseDocNum: TIntegerField;
    qryDecreaseDocDate: TStringField;
    qryDepDec: TADOQuery;
    srcdepDec: TDataSource;
    qryDepDecSerialNum: TIntegerField;
    qryDepDecPrice: TBCDField;
    qryDepDecFirstDepValue: TBCDField;
    qryDepDecDepvalueInYear: TBCDField;
    qryDepDecPurPrice: TBCDField;
    actSendExcel: TAction;
    BitBtn9: TBitBtn;
    ppReport1: TppReport;
    ppLblCompanyName: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBAmval: TppDBPipeline;
    ppPageStyle1: TppPageStyle;
    ppLine1: TppLine;
    ppCalc: TppDBPipeline;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppDBText1: TppDBText;
    qryDecreaseProfitTopicCode: TLargeintField;
    qryDecreaseProfitDetailCode: TIntegerField;
    qryDecreaseProfitCTopicCode: TIntegerField;
    qryDecreaseProfitCTopicCode2: TIntegerField;
    qryDecrease_ProfitTopicName: TStringField;
    qryDecrease_ProfitDetailName: TStringField;
    qryDecrease_ProfitCTopicName: TStringField;
    qryDecrease_ProfitCTopic2: TStringField;
    TabControl1: TTabControl;
    pnlMaster: TPanel;
    Label3: TLabel;
    spdSerialNum: TSpeedButton;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
    pnlMiddle: TPanel;
    GroupBox1: TGroupBox;
    spdProitTopicCode: TSpeedButton;
    spdProfitDetailCode: TSpeedButton;
    spdProfitCtopicCode: TSpeedButton;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    ProfitCtopicCode2: TSpeedButton;
    edtProfitTopicCode: TDBEdit;
    edt_ProfitTopicName: TDBEdit;
    edtProfitDetailCode: TDBEdit;
    edt_ProfitDetailName: TDBEdit;
    edtProfitCTopicCode: TDBEdit;
    edt_ProfitCTopicName: TDBEdit;
    edtProfitCTopicCode2: TDBEdit;
    edt_ProfitCTopic2: TDBEdit;
    GroupBox8: TGroupBox;
    spdbuyerTopicCode: TSpeedButton;
    spdbuyerDetailCode: TSpeedButton;
    spdbuyerCtopicCode: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    edtSoudor: TEdit;
    DBEdit19: TDBEdit;
    GroupBox6: TGroupBox;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    EdtDecDate: TDBEdit;
    pplblYearId: TppLabel;
    actPrint: TAction;
    qryDecreaseFirstUser: TStringField;
    qryDecreaseLastUser: TStringField;
    procedure srcDecreaseStateChange(Sender: TObject);
    procedure spdSerialNumClick(Sender: TObject);
    procedure spdbuyerTopicCodeClick(Sender: TObject);
    procedure spdbuyerDetailCodeClick(Sender: TObject);
    procedure spdbuyerCtopicCodeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure qryDecreaseAfterInsert(DataSet: TDataSet);
    procedure qryDecreaseAfterScroll(DataSet: TDataSet);
    procedure qryDecreaseAfterPost(DataSet: TDataSet);
    procedure qryDecreaseBeforeDelete(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure qryDecreaseBeforeEdit(DataSet: TDataSet);
    procedure qryDecreaseBeforePost(DataSet: TDataSet);
    procedure qryDepDecBeforeClose(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure N1Click(Sender: TObject);
    procedure spdProfitCtopicCode2Click(Sender: TObject);
    procedure spdProitTopicCodeClick(Sender: TObject);
    procedure spdProfitDetailCodeClick(Sender: TObject);
    procedure spdProfitCtopicCodeClick(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure qryDecreaseAfterEdit(DataSet: TDataSet);
  private
    procedure CalcValue;
    procedure UpDateStop(DecDate: String; Sn: Integer);
    function CanChange(Sn: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DecreaseF: TDecreaseF;

implementation

uses Dm, searchCode_ADO, GlobalPro, mmessage, sort2, ScanImage, search2,
  FormFunctions;
{$R *.dfm}

procedure TDecreaseF.srcDecreaseStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(dmF.adcBSell);
  okPanel.Visible := qryDecrease.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  // lstDecType.Enabled := newPanel.Visible;

end;

procedure TDecreaseF.TabControl1Change(Sender: TObject);
begin
  inherited;
  inherited;
  with qryDecrease do
  begin
    DisableControls;
    Close;
    Parameters.ParamByName('DecType').Value := TabControl1.TabIndex;
    Open;
    Last;
    EnableControls;
    qryDepDec.Active := not IsEmpty;
  end;
end;

procedure TDecreaseF.spdSerialNumClick(Sender: TObject);
var
  Result: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'جستجوي',
    'SELECT SerialNum, PelakNum, StuffDesc FROM  assets.Amval ',
    ['شماره سريال ', 'شماره پلاك', 'نام كالا'], Result, [60, 60, 100], alLeft)
  then
  begin
    if not(qryDecrease.State in dsEditModes) then
      qryDecrease.Edit;
    qryDecrease.FieldByName('SerialNum').AsString := Result[0];
  end;

end;

procedure TDecreaseF.spdbuyerTopicCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'جستجوي',
    'SELECT TopicCode, MoeenName_L1  FROM  acc.Categories WHERE (LevelID = 3)',
    ['كد', 'شرح حساب'], Result, [60, 100], alLeft) then
  begin
    if not(qryDecrease.State in dsEditModes) then
      qryDecrease.Edit;
    qryDecrease.FieldByName('buyerTopicCode').AsString := Result[0]
  end;
end;

procedure TDecreaseF.spdProfitCtopicCodeClick(Sender: TObject);
const
  SqlTxt = 'SELECT CenterTopics.CTopicCode, CenterTopics.CTopicName_L1' +
    ' FROM acc.CenterTopics as CenterTopics INNER JOIN' +
    ' acc.CenterTopicRange as CenterTopicRange ON CenterTopics.CTopicCode = CenterTopicRange.CTopicCode'
    + ' WHERE (CenterTopicRange.TopicCode = %d)';
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'جستجوي',
    Format(SqlTxt, [qryDecrease.FieldByName('ProfitTopicCode').AsInteger]),
    ['كد', 'شرح'], Result, [60, 100], alLeft) then
  begin
    if not(qryDecrease.State in dsEditModes) then
      qryDecrease.Edit;
    qryDecrease.FieldByName('ProfitCTopicCode').AsString := Result[0]
  end;
end;

procedure TDecreaseF.spdProfitDetailCodeClick(Sender: TObject);
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
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'جستجوي',
    Format(SqlTxt, [qryDecrease.FieldByName('ProfitTopicCode').AsInteger]),
    ['كد', 'شرح'], Result, [60, 100], alLeft) then
  begin
    if not(qryDecrease.State in dsEditModes) then
      qryDecrease.Edit;
    qryDecrease.FieldByName('ProfitDetailCode').AsString := Result[0]
  end;
end;

procedure TDecreaseF.spdProitTopicCodeClick(Sender: TObject);
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'جستجوي',
    'SELECT TopicCode, MoeenName_L1  FROM  acc.Categories WHERE (LevelID = 3)',
    ['كد', 'شرح حساب'], Result, [60, 100], alLeft) then
  begin
    if not(qryDecrease.State in dsEditModes) then
      qryDecrease.Edit;
    qryDecrease.FieldByName('ProfitTopicCode').AsString := Result[0]
  end;
end;

procedure TDecreaseF.spdbuyerDetailCodeClick(Sender: TObject);
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
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'جستجوي',
    Format(SqlTxt, [qryDecrease.FieldByName('buyerTopicCode').AsInteger]),
    ['كد', 'شرح'], Result, [60, 100], alLeft) then
  begin
    if not(qryDecrease.State in dsEditModes) then
      qryDecrease.Edit;
    qryDecrease.FieldByName('buyerDetailCode').AsString := Result[0]
  end;
end;

procedure TDecreaseF.spdbuyerCtopicCodeClick(Sender: TObject);
const
  SqlTxt = 'SELECT CenterTopics.CTopicCode, CenterTopics.CTopicName_L1' +
    ' FROM acc.CenterTopics as CenterTopics INNER JOIN' +
    ' acc.CenterTopicRange as CenterTopicRange ON CenterTopics.CTopicCode = CenterTopicRange.CTopicCode'
    + ' WHERE (CenterTopicRange.TopicCode = %d)';
var
  Result: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'جستجوي',
    Format(SqlTxt, [qryDecrease.FieldByName('buyerTopicCode').AsInteger]),
    ['كد', 'شرح'], Result, [60, 100], alLeft) then
  begin
    if not(qryDecrease.State in dsEditModes) then
      qryDecrease.Edit;
    qryDecrease.FieldByName('buyerCtopicCode').AsString := Result[0]
  end;
end;

procedure TDecreaseF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryDecrease);
  // lstDecType.ItemIndex := 0;
  TabControl1.TabIndex := 0;
  with dmF.qry_TempAss do
  begin
    Active := False;
    SQL.Text := 'SELECT DecType FROM Assets.Decrease ' +
      ' WHERE DecreaseID = (SELECT MAX(DecreaseID) FROM Assets.Decrease)';
    Active := True;
    TabControl1.TabIndex := Fields[0].AsInteger;
    Active := False;
  end;

  TabControl1Change(TabControl1);
  qryDecrease.Last;

end;

procedure TDecreaseF.DBEdit3KeyPress(Sender: TObject; var Key: Char);
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
      Warn('پيدا نشد');
  end;
end;

procedure TDecreaseF.qryDecreaseAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := GetUserStamp;

end;

procedure TDecreaseF.qryDecreaseAfterInsert(DataSet: TDataSet);
var
  // strSql: string;
  DecreaseID: Integer;
begin
  inherited;
  DataSet.FieldByName('FirstUser').AsString := GetUserStamp;
  DecreaseID := GetANewCode(Self.name,
    Format('SELECT MAX(DecreaseID) FROM Assets.Decrease WHERE (DecType = %d)' +
    'AND(DecreaseID BETWEEN %d AND %d)', [TabControl1.TabIndex,
    opt.StartLimitIDAss, opt.EndLimitIDAss]), 'DecreaseID');
  if DecreaseID < opt.StartLimitIDAss then
    DataSet.FieldByName('DecreaseID').AsInteger := opt.StartLimitIDAss
  else
    DataSet.FieldByName('DecreaseID').AsInteger := DecreaseID;

  // strSql := Format
  // ('SELECT MAX(DecreaseID) FROM Assets.Decrease WHERE DecType = %d',
  // [TabControl1.TabIndex]);
  // DataSet.FieldByName('DecreaseID').AsInteger :=
  // GetANewCode(strSql, 'DecreaseID');

  DataSet.FieldByName('DecDate').AsString :=
    IfThen(var_glb_CurrentDate < APPBank.endYear, var_glb_CurrentDate,
    APPBank.endYear);
  DataSet.FieldByName('DecType').AsInteger := TabControl1.TabIndex;
  DataSet.FieldByName('State').AsInteger := 0;
end;

procedure TDecreaseF.CalcValue;
begin
  with qryDepDec do
  begin
    Close;
    Parameters.ParamByName('snFrom').Value :=
      qryDecrease.FieldByName('SerialNum').AsInteger;
    Parameters.ParamByName('snto').Value := qryDecrease.FieldByName('SerialNum')
      .AsInteger;
    Parameters.ParamByName('BaseDate').Value := opt.BaseDate;
    Parameters.ParamByName('yearid').Value := APPBank.Year;
    Open;
  end;
  edtSoudor.Text := CurrToStrF(qryDecrease.FieldByName('DecValue').AsCurrency -
    qryDepDec.FieldByName('PurPrice').AsCurrency, ffCurrency, 0);
end;

procedure TDecreaseF.qryDecreaseAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CalcValue;
end;

procedure TDecreaseF.qryDecreaseAfterPost(DataSet: TDataSet);
begin
  inherited;
  try
    dmF.AmvalCal(opt.BaseDate, DataSet.FieldByName('SerialNum').AsInteger);
    CalcValue;
    UpDateStop(DataSet.FieldByName('DecDate').AsString,
      DataSet.FieldByName('SerialNum').AsInteger);
    BigMessage('ثبت شد.‏', 1);
  except
    Warn('اشكال در ثبت');
  end;
end;

procedure TDecreaseF.qryDecreaseBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if CanChange(qryDecrease.FieldByName('DecreaseID').AsInteger) then
  begin
    Warn('مجاز به حذف نيستيد');
    Abort;
  end; // if
  if get_response('آيا از حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TDecreaseF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDecrease);
end;

procedure TDecreaseF.N2Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(dmF.adcBSell, 'Assets.Decrease',
    qryDecrease.FieldByName('DecreaseID').AsString, 3)
end;

procedure TDecreaseF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;

procedure TDecreaseF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'Decrease.rtm');
end;

procedure TDecreaseF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDecrease);
end;

function TDecreaseF.CanChange(Sn: Integer): Boolean;
begin
  with dmF.qry_TempAss do
  begin
    Close;
    SQL.Text := 'SELECT State FROM assets.Decrease WHERE SerialNum=:Id';
    Parameters.ParamByName('id').Value := Sn;
    Open;
    Result := Fields[0].AsInteger > 1;
    Close;
  end; // with
end;

procedure TDecreaseF.qryDecreaseBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if CanChange(qryDecrease.FieldByName('DecreaseID').AsInteger) then
  begin
    Warn('مجاز به ويرايش نيستيد');
    Abort;
  end; // if
end;

procedure TDecreaseF.UpDateStop;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := dmF.adcBSell;
      SQL.Text :=
        Format('UPDATE assets.BerakAmval SET EndDate =%S WHERE (EndDate >= %S) AND (SerialNum = %d)',
        [QuotedStr(DecDate), QuotedStr(DecDate), Sn]);
      ExecSQL;
    finally
      Free;
    end;
end;

procedure TDecreaseF.qryDecreaseBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckLimitID(DataSet.FieldByName('DecreaseID')) then
    Abort;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if DataSet.FieldByName('DecDate').AsString > opt.BaseDate then
  begin
    Warn('تاریخ کاهش نمی تواند کوچکتر از تاریخ پایه باشد.');
    Abort;
  end;

  if not CheckUsingDate(DataSet.FieldByName('DecDate').AsString,
    DataSet.FieldByName('serialNum').AsInteger) then
  begin
    EdtDecDate.SetFocus;
    FlashAControl(EdtDecDate);
    Abort;
  end;
end;

procedure TDecreaseF.qryDepDecBeforeClose(DataSet: TDataSet);
begin
  inherited;
  edtSoudor.Text := EmptyStr;
end;

procedure TDecreaseF.SpeedButton1Click(Sender: TObject);
var
  Result: array [0 .. 7] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'جستجوي',
    'SELECT Amval.SerialNum, Amval.PelakNum, Amval.StuffDesc, Decrease.DecreaseID, Decrease.DecDate'
    + ' FROM Assets.Amval as Amval INNER JOIN Assets.Decrease as Decrease ON Amval.SerialNum = Decrease.SerialNum '
    + 'where DecType = ' + IntToStr(TabControl1.TabIndex),
    ['شماره سريال ', 'شماره پلاك', 'نام كالا', 'شماره', 'تاريخ كاهش'], Result,
    [60, 60, 100, 60, 100], alLeft) then
    qryDecrease.Locate('DecreaseID', Result[3], []);

end;

procedure TDecreaseF.spdProfitCtopicCode2Click(Sender: TObject);
var
  Result: array [0 .. 1] of String;
  intRelatedKind: Integer;
  SqlTxt: string;
begin
  inherited;

  with dmF.qry_TempAss do
  begin
    Active := False;
    SQL.Text := Format('SELECT CtoipcRelatedKind FROM %S.Acc.Config',
      [opt.AccountName]);
    Active := True;
    intRelatedKind := Fields[0].AsInteger;
    Active := False;
  end;

  case intRelatedKind of
    0:
      SqlTxt := Format
        ('SELECT Acc.CenterTopics2.CTopicCode2, Acc.CenterTopics2.CTopicName2_L1 '
        + ' FROM Acc.CTopicRangeTogether INNER JOIN Acc.CenterTopics2 ON Acc.CTopicRangeTogether.CTopicCode2 = Acc.CenterTopics2.CTopicCode2 '
        + ' WHERE ( Acc.CTopicRangeTogether.CTopicCode = %d )',
        [qryDecrease.FieldByName('ProfitCTopicCode').AsInteger]);

    1:
      SqlTxt := Format
        ('SELECT Acc.CenterTopicAllRange.CTopicCode2, Acc.CenterTopics2.CTopicName2_L1 '
        + ' FROM Acc.CenterTopicAllRange INNER JOIN Acc.CenterTopics2 ON Acc.CenterTopicAllRange.CTopicCode2 = Acc.CenterTopics2.CTopicCode2 '
        + ' WHERE ( Acc.CenterTopicAllRange.TopicCode = %d )',
        [qryDecrease.FieldByName('ProfitTopicCode').AsInteger]);
  end;

  if searchCode_ADOF.SearchCode2(dmF.adcAccounting, 'جستجوي',
    Format(SqlTxt, [qryDecrease.FieldByName('ProfitTopicCode').AsInteger]),
    ['كد', 'شرح'], Result, [60, 100], alLeft) then
  begin
    if not(qryDecrease.State in dsEditModes) then
      qryDecrease.Edit;
    qryDecrease.FieldByName('ProfitCTopicCode2').AsString := Result[0]
  end;
end;

procedure TDecreaseF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryDecrease);
end;

procedure TDecreaseF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TDecreaseF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDecreaseF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TDecreaseF.N1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RptDecrease.rtm');
end;

procedure TDecreaseF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

end.
