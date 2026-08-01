{ -----------------------------------------------------------------------------
  Unit Name: SearchDocs
  Author:    Mostafa
  ----------------------------------------------------------------------------- }

unit SearchDocs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Mask, ADODB, DBCtrls, ppDB, Resource,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppVar, SumDBGrid, ppParameter, MySplitter, ppDesignLayer,
  System.ImageList, System.Actions,  DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TSearchDocsF = class(Ttemplate2MDIF)
    qrySearchDocs: TADOQuery;
    qrySearchDocsSecondaryDocNo: TIntegerField;
    qrySearchDocsDocDate: TStringField;
    qrySearchDocsTopicCode: TLargeintField;
    qrySearchDocsDetailCode: TIntegerField;
    qrySearchDocsCTopicCode: TIntegerField;
    qrySearchDocsCTopicCode2: TIntegerField;
    qrySearchDocsDebt: TFMTBCDField;
    qrySearchDocsCredit: TFMTBCDField;
    qrySearchDocsComment_L1: TStringField;
    qrySearchDocsDetailName_L1: TStringField;
    qrySearchDocsMoeenName_L1: TStringField;
    qrySearchDocsCTopicName_L1: TStringField;
    qrySearchDocsCTopicName2_L1: TStringField;
    qrySearchDocsSerial: TIntegerField;
    qrySearchDocsPrimaryDocNo: TIntegerField;
    Panel4: TPanel;
    srcSearchDocs: TDataSource;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    qrySearchDocsBedBes: TBCDField;
    qrySearchDocsDocTopic_L1: TStringField;
    qrySearchDocsAidDocdate: TStringField;
    actShowDoc: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSendToExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    BitBtn6: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    pplbCompany: TppLabel;
    ppLabel2: TppLabel;
    pplbDate: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine6: TppLine;
    ppLabel9: TppLabel;
    ppLine7: TppLine;
    ppLabel10: TppLabel;
    ppLine8: TppLine;
    ppLabel11: TppLabel;
    ppLine9: TppLine;
    ppLabel12: TppLabel;
    ppLine10: TppLine;
    ppLabel13: TppLabel;
    ppLine11: TppLine;
    ppLabel14: TppLabel;
    ppLine12: TppLine;
    ppLabel15: TppLabel;
    ppDBText1: TppDBText;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine17: TppLine;
    ppDBText4: TppDBText;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppDBText6: TppDBText;
    ppLine20: TppLine;
    ppDBText7: TppDBText;
    ppLine21: TppLine;
    ppDBText8: TppDBText;
    ppLine22: TppLine;
    ppDBText9: TppDBText;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBText10: TppDBText;
    ppLine25: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppDBText13: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppDBText14: TppDBText;
    BitBtn9: TBitBtn;
    actSpecial: TAction;
    qrySearchDocsbed: TBCDField;
    qrySearchDocsbes: TBCDField;
    qrySearchDocs_row: TIntegerField;
    qrySearchDocsid: TIntegerField;
    qrySearchDocsYearID: TIntegerField;
    pnlBottom: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtComment_L1: TDBEdit;
    edtMoeenName_L1: TDBEdit;
    edtCTopicName_L1: TDBEdit;
    edtCTopicName2_L1: TDBEdit;
    edtDetailName_L1: TDBEdit;
    edtSerial: TDBEdit;
    qrySearchDocsCompanyCode: TIntegerField;
    pnlFilter: TPanel;
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    mskFromSecDocNum: TMaskEdit;
    mskToSecDocNum: TMaskEdit;
    grp1: TGroupBox;
    lbl7: TLabel;
    lbl8: TLabel;
    mskFromValue: TMaskEdit;
    mskToValue: TMaskEdit;
    grp2: TGroupBox;
    mskFromNote: TMaskEdit;
    mskToNote: TMaskEdit;
    cmbIF1: TComboBox;
    grp3: TGroupBox;
    lbl10: TLabel;
    lbl11: TLabel;
    mskFromAidNo: TMaskEdit;
    mskToAidNo: TMaskEdit;
    cmbIF2: TComboBox;
    grp4: TGroupBox;
    lbl12: TLabel;
    lbl13: TLabel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    mskTopicCodeFrom: TMaskEdit;
    mskTopicCodeTo: TMaskEdit;
    cmbIF3: TComboBox;
    grp5: TGroupBox;
    lbl14: TLabel;
    lbl15: TLabel;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    mskDetailFrom: TMaskEdit;
    mskDetailTo: TMaskEdit;
    cmbIF4: TComboBox;
    grpYear: TGroupBox;
    lbl16: TLabel;
    lbl17: TLabel;
    mskFromYear: TMaskEdit;
    mskToYear: TMaskEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    mskFromDocNum: TMaskEdit;
    mskToDocNum: TMaskEdit;
    MySplitter1: TMySplitter;
    btnDefault: TBitBtn;
    actDefault: TAction;
    qrySearchDocsAidDocNo: TFMTBCDField;
    grpAidAmount: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    mskAidAmountFrom: TMaskEdit;
    mskAidAmountTo: TMaskEdit;
    cmbAidAmount: TComboBox;
    qrySearchDocsAidAmount: TFloatField;
    grp6: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    btn5: TSpeedButton;
    btn6: TSpeedButton;
    mskDetail2From: TMaskEdit;
    mskDetail2To: TMaskEdit;
    cmbIF5: TComboBox;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    mskDetail3From: TMaskEdit;
    mskDetail3To: TMaskEdit;
    cmbIF6: TComboBox;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    mskBudgetIDFrom: TMaskEdit;
    mskBudgetIDTo: TMaskEdit;
    cmbIF7: TComboBox;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    MskBudgetTopicIDFrom: TMaskEdit;
    MskBudgetTopicIDTo: TMaskEdit;
    cmbIF8: TComboBox;
    qrySearchDocsBudgetTopicID: TIntegerField;
    qrySearchDocsBudgetID: TIntegerField;
    grpDocDate: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    mskDateFrom: TMaskEdit;
    mskDateTo: TMaskEdit;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    mskPoFrom: TMaskEdit;
    mskPoTo: TMaskEdit;
    Label19: TLabel;
    GroupBox7: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    MskcompanyCodeFrom: TMaskEdit;
    MskcompanyCodeTo: TMaskEdit;
    DBGrid1: TCedarDbgrid;
    qrySearchDocsDocTypeName_L1: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure mskFromValueChange(Sender: TObject);
    procedure mskFromAidNoChange(Sender: TObject);
    procedure mskFromNoteChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actShowDocExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qrySearchDocsAfterOpen(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure pplbCompanyGetText(Sender: TObject; var Text: String);
    procedure pplbDateGetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure actSpecialExecute(Sender: TObject);
    procedure mskTopicCodeFromChange(Sender: TObject);
    procedure mskFromYearChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure mskTopicCodeFromKeyPress(Sender: TObject; var Key: Char);
    procedure mskTopicCodeToKeyPress(Sender: TObject; var Key: Char);
    procedure btn3Click(Sender: TObject);
    procedure mskDetailFromKeyPress(Sender: TObject; var Key: Char);
    procedure mskDetailToKeyPress(Sender: TObject; var Key: Char);
    procedure mskDetailFromChange(Sender: TObject);
    procedure actDefaultExecute(Sender: TObject);
    procedure mskAidAmountFromChange(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure mskDetail2FromKeyPress(Sender: TObject; var Key: Char);
    procedure mskDetail2ToKeyPress(Sender: TObject; var Key: Char);
    procedure mskDetail2FromChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure grp1DblClick(Sender: TObject);
  private
    // sumDebt:currency;
    // sumCredit:currency;

    procedure initMaxMin;
    function MaxMinValue(tblName, fldName: String; MinMax: Byte): string;
    procedure CalculateSummary;
    procedure mskDetail3FromChange(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchDocsF: TSearchDocsF;

implementation

uses Dm, GlobalPro, Document, search2, sort2, DBGrid2Print, StrUtils,
  searchCode_L1_L2, searchCode_ADO, FaraConsts;
{$R *.dfm}
{ TSearchDocsF }

function TSearchDocsF.MaxMinValue;
begin
  with Dmf.qry_Temp do
  begin
    Active := false;
    case MinMax of
      0:
        SQL.Text := 'SELECT min(' + fldName + ') FROM ' + tblName;
      1:
        SQL.Text := 'SELECT MAX(' + fldName + ') FROM ' + tblName;
      3:
        SQL.Text := tblName;
    end; // case
    Active := True;
    Result := Fields[0].AsString;
    Active := false;
  end;
end;

procedure TSearchDocsF.initMaxMin;
begin
  cmbIF1.ItemIndex := StrToInt(ReadConfig(APPID, Self.Name + '_cmbIF1', '0'));
  cmbIF2.ItemIndex := StrToInt(ReadConfig(APPID, Self.Name + '_cmbIF2', '0'));
  cmbIF3.ItemIndex := StrToInt(ReadConfig(APPID, Self.Name + '_cmbIF3', '0'));
  cmbIF4.ItemIndex := StrToInt(ReadConfig(APPID, Self.Name + '_cmbIF4', '0'));
  cmbAidAmount.ItemIndex :=
    StrToInt(ReadConfig(APPID, Self.Name + '_cmbAidAmount', '0'));

  mskFromValue.Text := '0';
  mskToValue.Text := '922337203685477';

  With Dmf.qry_Temp do
  begin
    Active := false;
    SQL.Text := Format(strMaxMinPrimaryDocNo, [APPBank.Year]);
    Active := True;
    mskFromDocNum.Text := Fields[0].AsString;
    mskToDocNum.Text := Fields[1].AsString;
    Active := false;
    SQL.Text := Format(strMaxMinSecondaryDocNo, [APPBank.Year]);
    Active := True;
    mskFromSecDocNum.Text := Fields[0].AsString;
    mskToSecDocNum.Text := Fields[1].AsString;
    Active := false;

  end;

  mskFromAidNo.Text := '0';
  mskToAidNo.Text := '9999999999999999.9999';

  mskAidAmountFrom.Text := '0';
  mskAidAmountTo.Text := '999999999999999';

  mskTopicCodeFrom.Text := '-9223372036854775807';
  mskTopicCodeTo.Text := '9223372036854775807';

  mskDetailFrom.Text := '-2147483647';
  mskDetailTo.Text := '2147483647';

  mskDetail2From.Text := '-2147483647';
  mskDetail2To.Text := '2147483647';

  mskDetail3From.Text := '-2147483647';
  mskDetail3To.Text := '2147483647';

  mskBudgetIDFrom.Text := '-2147483647';
  mskBudgetIDTo.Text := '2147483647';

  MskcompanyCodeFrom.Text := '0';
  MskcompanyCodeTo.Text := '2147483647';

  mskDateFrom.Text := '0000/00/00';
  mskDateTo.Text := '9999/99/99';

  MskBudgetTopicIDFrom.Text := '-2147483647';
  MskBudgetTopicIDTo.Text := '2147483647';

  mskFromNote.Text := '';
  mskToNote.Text := '';
  mskFromYear.Text := IntToStr(APPBank.Year)
end;

procedure TSearchDocsF.FormCreate(Sender: TObject);
var
  T1: TThread;
begin
  inherited;

  T1 := TThread.CreateAnonymousThread(
    procedure()
    begin
      TThread.Synchronize(nil, initMaxMin)
    end);
  T1.FreeOnTerminate := True;
  T1.Start;

  // initMaxMin;
  grpYear.Visible := not APPBank.SingelMali;
end;

procedure TSearchDocsF.mskFromValueChange(Sender: TObject);
begin
  inherited;
  mskToValue.Text := (Sender as TMaskEdit).Text;
end;

procedure TSearchDocsF.mskFromAidNoChange(Sender: TObject);
begin
  inherited;
  mskToAidNo.Text := Trim((Sender as TMaskEdit).Text);
end;

procedure TSearchDocsF.mskFromNoteChange(Sender: TObject);
begin
  inherited;
  mskToNote.Text := Trim((Sender as TMaskEdit).Text);
end;

procedure TSearchDocsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, Self.Name + '_cmbIF1', IntToStr(cmbIF1.ItemIndex));
  SaveConfig(APPID, Self.Name + '_cmbIF2', IntToStr(cmbIF2.ItemIndex));
  SaveConfig(APPID, Self.Name + '_cmbIF3', IntToStr(cmbIF3.ItemIndex));
  SaveConfig(APPID, Self.Name + '_cmbIF4', IntToStr(cmbIF4.ItemIndex));
  SaveConfig(APPID, Self.Name + '_cmbAidAmount',
    IntToStr(cmbAidAmount.ItemIndex));

end;

procedure TSearchDocsF.grp1DblClick(Sender: TObject);
begin
  inherited;
  if (Sender as TGroupBox).Height = 59 then
    (Sender as TGroupBox).Height := 15
  else
    (Sender as TGroupBox).Height := 59;
end;

procedure TSearchDocsF.actShowDocExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qrySearchDocsSerial.AsInteger,
    qrySearchDocsYearID.AsInteger, qrySearchDocsCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qrySearchDocs.FieldByName('id')
    .AsInteger, []);
end;

procedure TSearchDocsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySearchDocs);
end;

procedure TSearchDocsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySearchDocs);
end;

procedure TSearchDocsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSearchDocsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrySearchDocsSecondaryDocNo);
end;

procedure TSearchDocsF.qrySearchDocsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CalculateSummary;
end;

procedure TSearchDocsF.SpeedButton3Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, 'كدهاي بودجه',
    ' SELECT Acc.Budgets.BudgetID, Acc.Interfaces.InterfaceCaption_L1 ' +
    ' FROM Acc.Budgets INNER JOIN' +
    ' Acc.Interfaces ON Acc.Budgets.InterfaceID = Acc.Interfaces.InterfaceID ' +
    ' WHERE (Acc.Interfaces.BudgetEffect = 2) AND (Acc.Budgets.Status = 3) ',
    ['كد بودجه', 'نام بودجه'], alLeft, 1) <> '' then
    if (Sender as TSpeedButton).Tag = 0 then
      mskBudgetIDFrom.Text := c
    else
      mskBudgetIDTo.Text := c;
end;

procedure TSearchDocsF.SpeedButton5Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, 'كدهاي فرم بودجه',
    ' SELECT Acc.BudgetTopics.BudgetTopicID, Acc.BudgetTopics.BudgetCaption_L1, Acc.BudgetTopics.BudgetCaption_L2'
    + ' FROM Acc.BudgetTopics INNER JOIN' +
    ' Acc.BudgetTopicRange ON Acc.BudgetTopics.BudgetTopicID = Acc.BudgetTopicRange.BudgetTopicID ',
    ['كد فرم بودجه', 'نام فرم بودجه'], alLeft, 1) <> '' then
    if (Sender as TSpeedButton).Tag = 0 then
      MskBudgetTopicIDFrom.Text := c
    else
      MskBudgetTopicIDTo.Text := c;

end;

procedure TSearchDocsF.btn5Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, 'كدهاي تفصيلي2',
    'SELECT CTopicCode, CTopicName_L1, CTopicName_L2 FROM acc.CenterTopics  where CTopicCode <>0 ',
    ['كد تفصيلي2', 'نام حساب2'], alLeft, 1) <> '' then
    if (Sender as TSpeedButton).Tag = 0 then
      mskDetail2From.Text := c
    else
      mskDetail2To.Text := c;
end;

procedure TSearchDocsF.btn7Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, 'كدهاي تفصيلي3',
    'SELECT CTopicCode2, CTopicName2_L1, CTopicName2_L2 FROM acc.CenterTopics2  where CTopicCode2 <>0',
    ['كد تفصيلي3', 'نام حساب3'], alLeft, 1) <> '' then
    if (Sender as TSpeedButton).Tag = 0 then
      mskDetail3From.Text := c
    else
      mskDetail3To.Text := c;
end;

procedure TSearchDocsF.CalculateSummary;
var
  bes, bed: Extended;
  i: integer;
begin
  with qrySearchDocs do
  begin
    try
      First;
      DisableControls;

      bed := 0;
      bes := 0;
      i := 0;
      while not eof do
      begin
        i := i + 1;
        bed := bed + FieldByName('Debt').AsExtended;
        bes := bes + FieldByName('Credit').AsExtended;
        edit;
        FieldByName('_row').AsInteger := i;
        FieldByName('bed').AsExtended := bed;
        FieldByName('bes').AsExtended := bes;
        post;
        Next;
      end; //
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TSearchDocsF.actDefaultExecute(Sender: TObject);
begin
  inherited;
  initMaxMin;
end;

procedure TSearchDocsF.actFilterExecute(Sender: TObject);
begin
  inherited;

  with qrySearchDocs do
    try
      Close;
      SQL.Text := 'SELECT id,DG.YearID,DG.SecondaryDocNo, DG.DocDate';
      SQL.Add(', D.TopicCode, D.CompanyCode, D.DetailCode,');
      SQL.Add('C4L.PrvTopicCode4 as KolCode, C4L.PrvTopicCode3 as GroupCode,');
      SQL.Add('D.CTopicCode, D.CTopicCode2,D.CTopicCode3, D.Debt, D.Credit,');
      SQL.Add('D.Comment_L1,');
      SQL.Add('Acc.Details.DetailName_L1, Acc.Categories.MoeenName_L1, Acc.CenterTopics.CTopicName_L1,');
      SQL.Add('Acc.CenterTopics2.CTopicName2_L1, Acc.CTopicCode3.CTopicName3_L1,');
      SQL.Add('D.Serial, DG.PrimaryDocNo, D.Debt + D.Credit AS BedBes,');
      SQL.Add('DG.DocTopic_L1,');
      SQL.Add('D.AidDocNo, D.AidDocdate, D.AidAmount,');
      SQL.Add('D.Debt as bed,D.Credit as bes ,D.Serial as _row,D.PO');
      SQL.Add(',D.BudgetID,D.BudgetTopicID,DT.DocTypeName_L1');

      SQL.Add('FROM Acc.Documents AS D INNER JOIN');
      SQL.Add('Acc.DocGroups AS DG ON D.Serial = DG.Serial');
      SQL.Add('AND D.YearID = DG.YearID AND ');
      SQL.Add(' D.CompanyCode =DG.CompanyCode LEFT JOIN');
      SQL.Add('Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode LEFT JOIN');
      SQL.Add('Acc.AccCodeWith5Levels AS C4L ON  D.TopicCode = C4L.TopicCode LEFT JOIN');
      SQL.Add('Acc.CenterTopics ON D.CTopicCode = Acc.CenterTopics.CTopicCode LEFT JOIN');
      SQL.Add('Acc.CenterTopics2 ON D.CTopicCode2 = Acc.CenterTopics2.CTopicCode2 LEFT JOIN');

      // SQL.Add('Acc.Details ON D.DetailCode = Acc.Details.DetailCode AND D.CompanyCode = Acc.Details.CompanyCode');

      SQL.Add('Acc.Details ON D.DetailCode = Acc.Details.DetailCode ');

      SQL.Add('LEFT JOIN Acc.CTopicCode3 ON D.CTopicCode3 = Acc.CTopicCode3.CTopicCode3');
      SQL.Add('LEFT JOIN Acc.DocTypes DT ON DG.DocTypeCode = DT.DocTypeCode');

      SQL.Add('WHERE ((D.Debt + D.Credit) BETWEEN :Fromvalue AND :ToValue) And ');
      SQL.Add('(DG.YearID between :YearFrom and :YearTo) And');
      SQL.Add('(DG.SecondaryDocNo Between :FromSecnum And :ToSecNum) And  ');
      SQL.Add('(DG.PrimaryDocNo Between :FromDocNum And :ToDocNum)   ');
      SQL.Add('AND(DG.DocDate Between :DocDateFrom AND :DocDateTo)  ');

      SQL.Add('AND(1=1   ');
      SQL.Add(IfThen(cmbIF1.ItemIndex = 0, 'AND', 'OR') +
        '(D.TopicCode BETWEEN :FromTopicCode AND :ToTopicCode)');
      SQL.Add(IfThen(cmbIF2.ItemIndex = 0, 'AND', 'OR') +
        '(D.DetailCode BETWEEN :FromDetail AND :ToDetail)');

      SQL.Add(IfThen(cmbIF2.ItemIndex = 0, 'AND', 'OR') +
        '(D.CTopicCode BETWEEN :FromCTopicCode AND :ToCTopicCode)');

      SQL.Add(IfThen(cmbIF3.ItemIndex = 0, 'AND', 'OR') +
        ' (ISNULL(D.AidDocNo,0) BETWEEN ' + Trim(mskFromAidNo.Text) + ' AND ' +
        Trim(mskToAidNo.Text) + ')');

      SQL.Add(IfThen(cmbIF6.ItemIndex = 0, 'AND', 'OR') +
        '(D.BudgetID BETWEEN :FromBudgetID AND :ToBudgetID )');

      SQL.Add(IfThen(cmbIF7.ItemIndex = 0, 'AND', 'OR') +
        '(D.BudgetTopicID BETWEEN :FromBudgetTopicID AND :ToBudgetTopicID )');

      if (CompanyFilterinLogin) and (not User.PowerAdmin) then
        SQL.Add('AND DG.companyCode = ' + FcompanyCodeLogin.ToString);

      SQL.Add('AND(DG.CompanyCode Between :CompanyCodeFrom AND :CompanyCodeTo)  ');
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        Trim(MskcompanyCodeFrom.Text);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        Trim(MskcompanyCodeTo.Text);

      if mskPoFrom.Text <> '' then
      begin
        SQL.Add('AND(D.PO Between :POFrom AND :POTo)  ');
        Parameters.ParamByName('POFrom').Value := Trim(mskPoFrom.Text);
        Parameters.ParamByName('POTo').Value := Trim(mskPoTo.Text);
      end;
      Parameters.ParamByName('DocDateFrom').Value := Trim(mskDateFrom.Text);
      Parameters.ParamByName('DocDateTo').Value := Trim(mskDateTo.Text);

      if Trim(mskAidAmountFrom.Text) <> EmptyStr then
      begin
        SQL.Add(IfThen(cmbAidAmount.ItemIndex = 0, 'AND', 'OR') +
          ' (ISNULL(D.AidAmount,0) BETWEEN ' + Trim(mskAidAmountFrom.Text) + ' AND ' +
          Trim(mskAidAmountTo.Text) + ')')
      end;

      SQL.Add(IfThen(cmbIF4.ItemIndex = 0, 'AND', 'OR') +
        '((D.Comment_L1 Like ''%''+ :FromNote +''%'') OR');
      SQL.Add('(D.Comment_L1 like ''%''+ :ToNote +''%'')))');

      Parameters.ParamByName('FromSecnum').Value := Trim(mskFromSecDocNum.Text);
      Parameters.ParamByName('ToSecNum').Value := Trim(mskToSecDocNum.Text);
      Parameters.ParamByName('FromDocNum').Value := Trim(mskFromDocNum.Text);
      Parameters.ParamByName('ToDocNum').Value := Trim(mskToDocNum.Text);
      Parameters.ParamByName('YearFrom').Value := Trim(mskFromYear.Text);
      Parameters.ParamByName('YearTo').Value := Trim(mskToYear.Text);
      Parameters.ParamByName('Fromvalue').Value := Trim(mskFromValue.Text);
      Parameters.ParamByName('ToValue').Value := Trim(mskToValue.Text);
      // Parameters.ParamByName('AidDocNoFrom').Value := Trim(mskFromAidNo.Text);
      // Parameters.ParamByName('AidDocNoTo').Value := Trim(mskToAidNo.Text);
      Parameters.ParamByName('FromNote').Value := Trim(mskFromNote.Text);
      Parameters.ParamByName('toNote').Value := Trim(mskToNote.Text);
      Parameters.ParamByName('FromTopicCode').Value :=
        Trim(mskTopicCodeFrom.Text);
      Parameters.ParamByName('TOTopicCode').Value := Trim(mskTopicCodeTo.Text);

      Parameters.ParamByName('FromDetail').Value := Trim(mskDetailFrom.Text);
      Parameters.ParamByName('TODetail').Value := Trim(mskDetailTo.Text);

//      Parameters.ParamByName('FromTopicCode').Value :=
//        Trim(mskDetail2From.Text);
//      Parameters.ParamByName('ToTopicCode').Value := Trim(mskDetail2To.Text);

      Parameters.ParamByName('FromCTopicCode').Value :=
        Trim(mskDetail3From.Text);
      Parameters.ParamByName('TOCTopicCode').Value := Trim(mskDetail3To.Text);

      Parameters.ParamByName('FromBudgetID').Value :=
        Trim(mskBudgetIDFrom.Text);
      Parameters.ParamByName('TOBudgetID').Value := Trim(mskBudgetIDTo.Text);

      Parameters.ParamByName('FromBudgetTopicID').Value :=
        Trim(MskBudgetTopicIDFrom.Text);
      Parameters.ParamByName('TOBudgetTopicID').Value :=
        Trim(MskBudgetTopicIDTo.Text);

      Open;
    except
      on e: Exception do
      begin
        add2log(e.Message);
        warn2(e.Message);
      end;
    end;

end;

procedure TSearchDocsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowDoc.Execute;
end;

procedure TSearchDocsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.PreviewFormSettings.SinglePageOnly := True;
  ppReport1.Print;
end;

procedure TSearchDocsF.pplbCompanyGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSearchDocsF.pplbDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSearchDocsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'مبلغ سند از ' + mskFromValue.Text + '  تا  ' + mskToValue.Text;
end;

procedure TSearchDocsF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'شماره كمكي از  ' + mskFromAidNo.Text + '  تا  ' + mskToAidNo.Text;
end;

procedure TSearchDocsF.ppSystemVariable1GetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSearchDocsF.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qrySearchDocsMoeenName_L1.AsString + '_' +
    qrySearchDocsDetailName_L1.AsString + '_' +
    qrySearchDocsCTopicName_L1.AsString + '_' +
    qrySearchDocsCTopicName2_L1.AsString;
end;

procedure TSearchDocsF.actSpecialExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSearchDocsF.mskTopicCodeFromChange(Sender: TObject);
begin
  inherited;
  mskTopicCodeTo.Text := (Sender as TMaskEdit).Text;
end;

procedure TSearchDocsF.mskFromYearChange(Sender: TObject);
begin
  inherited;
  mskToYear.Text := (Sender as TMaskEdit).Text;
end;

procedure TSearchDocsF.btn1Click(Sender: TObject);
var
  sqlText: String;
  Results: array [0 .. 3] of String;
begin
  inherited;
  sqlText :=
    'SELECT Acc.Categories.TopicCode, Acc.Categories.MoeenName_l1, Acc.Categories.MoeenName_l2 FROM Acc.Categories LEFT OUTER JOIN '
    + 'Acc.CategoriesForUse ON Acc.Categories.TopicCode = Acc.CategoriesForUse.PrvTopicCode WHERE     (Acc.CategoriesForUse.PrvTopicCode IS NULL) ';
  if searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'حسابهاي معین', sqlText,
    ['كد حساب', 'شرح', 'MoeenName_l2'], Results, [80, 350, 350], alLeft) then
    if (Sender as TSpeedButton).Tag = 0 then
      mskTopicCodeFrom.Text := Results[0]
    else
      mskTopicCodeTo.Text := Results[0]

end;

procedure TSearchDocsF.mskTopicCodeFromKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn1.Click;
end;

procedure TSearchDocsF.mskTopicCodeToKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn2.Click;
end;

procedure TSearchDocsF.btn3Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, 'كدهاي تفصيلي',
    'SELECT Acc.Details.DetailCode, Acc.Details.DetailName_L1' +
    ' FROM Acc.Details INNER JOIN' +
    ' Acc.DetailRange ON Acc.Details.DetailCode = Acc.DetailRange.DetailCode' +
    ' Where (Acc.DetailRange.TopicCode between ' + Trim(mskTopicCodeFrom.Text) +
    ' and ' + Trim(mskTopicCodeTo.Text) + ') ' +
    ' GROUP BY Acc.Details.DetailCode, Acc.Details.DetailName_L1 ',
    ['كد تفصيلي', 'نام حساب'], alLeft, 1) <> '' then
    if (Sender as TSpeedButton).Tag = 0 then
      mskDetailFrom.Text := c
    else
      mskDetailTo.Text := c;

end;

procedure TSearchDocsF.mskDetailFromKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn3.Click;
end;

procedure TSearchDocsF.mskDetailToKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn4.Click
end;

procedure TSearchDocsF.mskAidAmountFromChange(Sender: TObject);
begin
  inherited;
  mskAidAmountTo.Text := Trim((Sender as TMaskEdit).Text);
end;

procedure TSearchDocsF.mskDetail2FromChange(Sender: TObject);
begin
  inherited;
  mskDetail2To.Text := (Sender as TMaskEdit).Text;
end;

procedure TSearchDocsF.mskDetail3FromChange(Sender: TObject);
begin
  inherited;
  mskDetail3To.Text := (Sender as TMaskEdit).Text;
end;

procedure TSearchDocsF.mskDetail2FromKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn5.Click;

end;

procedure TSearchDocsF.mskDetail2ToKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn6.Click;
end;

procedure TSearchDocsF.mskDetailFromChange(Sender: TObject);
begin
  inherited;
  mskDetailTo.Text := (Sender as TMaskEdit).Text;
end;

end.
