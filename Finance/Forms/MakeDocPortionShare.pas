unit MakeDocPortionShare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, Mask, DBCtrls, ComCtrls, ToolWin,
  SumDBGrid, System.ImageList, System.Actions;

type
  TMakeDocPortionShareF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    qryMasterPortion: TADOQuery;
    srcMasterPortion: TDataSource;
    qryDetailPortion: TADOQuery;
    BitBtn16: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    srcDetailPortion: TDataSource;
    qryDetailPortionFormInfoID: TIntegerField;
    qryDetailPortionCTopicCode: TIntegerField;
    qryDetailPortionCofficientItem: TFloatField;
    qryFindTopicCode: TADOQuery;
    qryDetailPortion_TopicCode: TIntegerField;
    qryDetailPortionCTopicName_L1: TStringField;
    qryDetailPortionCTopicName2_L1: TStringField;
    qryDetailPortionCenterTopics2: TIntegerField;
    qryDetailPortionExpName_L1: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qryMasterPortionTopicCode: TLargeintField;
    qryMasterPortionDetailCode: TIntegerField;
    qryMasterPortionCTopicCode: TIntegerField;
    qryMasterPortionCTopicCode2: TIntegerField;
    qryMasterPortionFormInfoID: TIntegerField;
    qryMasterPortionInfoID: TWordField;
    qryMasterPortionInfoName_L1: TStringField;
    qryMasterPortionBalance: TBCDField;
    qryDetailPortion_TopicName: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    qryMasterPortionMoeenName_L1: TStringField;
    qryMasterPortionCTopicName_L1: TStringField;
    qryMasterPortionCTopicName2_L1: TStringField;
    qryMasterPortionDetailName_L1: TStringField;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    qryInsertPortion: TADOQuery;
    qryInsertPortionID: TIntegerField;
    qryInsertPortionFormInfoID: TIntegerField;
    qryInsertPortionTopicCode: TLargeintField;
    qryInsertPortionDetailCode: TIntegerField;
    qryInsertPortionCTopicCode: TIntegerField;
    qryInsertPortionCTopicCode2: TIntegerField;
    qryDetailPortionamount: TFloatField;
    actPrint: TAction;
    btnMakeDoc: TBitBtn;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    dbedt_CompanyName_L1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit12: TDBEdit;
    Label11: TLabel;
    qry_DocTypes: TADOQuery;
    qry_Company: TADOQuery;
    qry_CompanyCompanyCode: TIntegerField;
    qry_CompanyLevelID: TIntegerField;
    qry_CompanyMakeDate: TDateTimeField;
    qry_CompanyCompanyName_L1: TStringField;
    qry_CompanyCompanyName_L2: TStringField;
    qry_CompanyComment_L1: TStringField;
    qry_CompanyComment_L2: TStringField;
    src_Documents: TDataSource;
    src_DocGroups: TDataSource;
    qry_DocGroups: TADOQuery;
    qry_DocGroupsSerial: TIntegerField;
    qry_DocGroupsCompanyCode: TIntegerField;
    qry_DocGroupsSecondaryDocNo: TIntegerField;
    qry_DocGroupsPrimaryDocNo: TIntegerField;
    qry_DocGroupsDocDate: TStringField;
    qry_DocGroupsDocTypeCode: TIntegerField;
    qry_DocGroupsStatus: TWordField;
    qry_DocGroupsDocTopic: TStringField;
    qry_DocGroupsDocTopic_L2: TStringField;
    qry_DocGroupsAttachFolderName: TStringField;
    qry_DocGroupsDocNote_L2: TStringField;
    qry_DocGroups_CompanyName: TStringField;
    qry_DocGroups_DocTypeName: TStringField;
    qry_DocGroupsMakeDate: TDateTimeField;
    qry_DocGroups_DocTypeName_L2: TStringField;
    qry_DocGroupsUserID: TIntegerField;
    qry_Documents: TADOQuery;
    qry_DocumentsID: TIntegerField;
    qry_DocumentsSerial: TIntegerField;
    qry_DocumentsTopicCode: TLargeintField;
    qry_DocumentsDetailCode: TIntegerField;
    qry_DocumentsCTopicCode: TIntegerField;
    qry_DocumentsCTopicCode2: TIntegerField;
    qry_DocumentsComment: TStringField;
    qry_DocumentsComment_L2: TStringField;
    qry_DocumentsRow: TIntegerField;
    qry_DocumentsDebt: TFMTBCDField;
    qry_DocumentsCredit: TFMTBCDField;
    qry_DocumentsAidDocdate: TStringField;
    qry_DocumentsAidAmount: TFloatField;
    qry_DocumentsBudgetTopicID: TIntegerField;
    qry_DocumentsBudgetID: TIntegerField;
    qry_DocumentsReferenceNo: TIntegerField;
    qry_DocumentsReferenceTxt: TStringField;
    qry_DocumentsReferenceDate: TStringField;
    qry_DocumentsProjectID: TIntegerField;
    qry_DocumentsReferenceCheck: TWordField;
    qry_Documents_MoeenName: TStringField;
    qry_Documents_DetailName: TStringField;
    qry_Documents_CtopicName: TStringField;
    qry_Documents_CTopicName2: TStringField;
    qry_Documents_Radif: TIntegerField;
    qry_Documents_HasAid: TIntegerField;
    qry_DocumentsBedBes: TIntegerField;
    qry_DocumentscodeKol: TStringField;
    qry_Documents_KolName: TStringField;
    qry_Documents_HasBudget: TIntegerField;
    qry_Documents_BudgetTopicID: TIntegerField;
    qry_Documents_ProjectID: TIntegerField;
    qry_Documents_Essence: TIntegerField;
    qry_Documents_RepEssence: TIntegerField;
    qry_Documents_LevelID: TIntegerField;
    qry_Documents_LenghtTopic: TIntegerField;
    qry_DocumentsCompanyCode: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    ActMakeDoc: TAction;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Label17: TLabel;
    Panel7: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ToolBar1: TToolBar;
    qryDetailPortiondetailCode: TStringField;
    qry_DocGroupsYearID: TIntegerField;
    qry_DocumentsAuditDoPrint: TWordField;
    qry_Documentsctopiccode3: TIntegerField;
    qry_DocumentsYearID: TIntegerField;
    qry_DocumentsRelatedID: TIntegerField;
    SumGrid1: TSumGrid;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    mskDetailCode: TMaskEdit;
    spdDetailCode: TSpeedButton;
    edtDetailName: TEdit;
    btnDisplayDoc: TBitBtn;
    actShowForm: TAction;
    lblDetail: TLabel;
    qryMasterPortionCTopicCode3: TIntegerField;
    qryMasterPortionCTopicName3_L1: TStringField;
    qryInsertPortionCTopicCode3: TIntegerField;
    qry_DocumentsAidDocNo: TFMTBCDField;
    chkSum: TCheckBox;
    pnlDetailCodeNotZero: TPanel;
    Label18: TLabel;
    grdDetailCodeNotZero: TDBGrid;
    SumGrid3: TSumGrid;
    Panel5: TPanel;
    Label16: TLabel;
    DBGrid1: TDBGrid;
    SumGrid2: TSumGrid;
    qryDetailCodeNotZero: TADOQuery;
    srcDetailCodeNotZero: TDataSource;
    qryDetailCodeNotZeroTopicCode: TLargeintField;
    qryDetailCodeNotZeroCTopicCode: TIntegerField;
    qryDetailCodeNotZeroCTopicCode2: TIntegerField;
    qryDetailCodeNotZeroFormInfoID: TIntegerField;
    qryDetailCodeNotZeroInfoID: TWordField;
    qryDetailCodeNotZeroInfoName_L1: TStringField;
    qryDetailCodeNotZeroBalance: TBCDField;
    qryDetailCodeNotZeroMoeenName_L1: TStringField;
    qryDetailCodeNotZeroCTopicName_L1: TStringField;
    qryDetailCodeNotZeroCTopicName2_L1: TStringField;
    qryDetailCodeNotZeroCTopicCode3: TIntegerField;
    qryDetailCodeNotZeroCTopicName3_L1: TStringField;
    qry_DocGroupsDocNote_L1: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryMasterPortionAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qry_DocGroupsAfterInsert(DataSet: TDataSet);
    procedure qry_DocGroupsStatusGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ActMakeDocExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spdDetailCodeClick(Sender: TObject);
    procedure mskDetailCodeKeyPress(Sender: TObject; var Key: Char);
    procedure actShowFormExecute(Sender: TObject);
    procedure qryDetailPortionBeforeOpen(DataSet: TDataSet);
    procedure chkSumClick(Sender: TObject);
    procedure mskDetailCodeChange(Sender: TObject);
  private
    // cloned:TADOQuery;
    counter: integer;
    FSqlText: string;
    DetailCode: integer;
    qryMaster: TADOQuery;
    procedure createToolButton;
    procedure updateQry;
    // function CalcSumFileds(FiledName: String;qry:TADOQuery): Currency;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MakeDocPortionShareF: TMakeDocPortionShareF;

implementation

uses Dm, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, searchCode_ADO,
  Math, mmessage, Resource, FaraConsts, Document;
{$R *.dfm}

procedure TMakeDocPortionShareF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  SaveColWidth(grdDetailCodeNotZero);
  FreeReservedCodes(Dmf.adcAccounting, 'acc.docGroups');
end;

procedure TMakeDocPortionShareF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5, true);
  SetColSize(DBGrid2, 4, true);
  SetColSize(grdDetailCodeNotZero, 4, true);
end;

procedure TMakeDocPortionShareF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMasterPortion);
end;

procedure TMakeDocPortionShareF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMakeDocPortionShareF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMasterPortion);
end;

procedure TMakeDocPortionShareF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_DocGroups.Fieldbyname('serial').AsVariant,
    qry_DocGroups.Fieldbyname('YearId').AsInteger,
    qry_CompanyCompanyCode.AsInteger, SHAllDoc);
  // DocumentF.qry_Documents.Locate('id', qry_DocGroups.Fieldbyname('id').AsInteger, []);
end;

procedure TMakeDocPortionShareF.UpdateList;
begin
  with qryMasterPortion Do
  begin
    Close;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);

    Parameters.ParamByName('SecFrom').Value :=
      GetcFrom(myParams.ParamValues['Sec'], ftInteger);
    Parameters.ParamByName('SecTo').Value := GetcTo(myParams.ParamValues['Sec'],
      ftInteger);
    Parameters.ParamByName('PriFrom').Value :=
      GetcFrom(myParams.ParamValues['Pri'], ftInteger);
    Parameters.ParamByName('PriTo').Value := GetcTo(myParams.ParamValues['Pri'],
      ftInteger);
    Parameters.ParamByName('CodeFrom').Value :=
      GetcFrom(myParams.ParamValues['Code'], ftInteger);
    Parameters.ParamByName('CodeTo').Value :=
      GetcTo(myParams.ParamValues['Code'], ftInteger);
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('aYearId').Value := APPBank.Year;

    Open;
  end;
  if qryMasterPortion.RecordCount = 0 then
  begin
    qryDetailPortion.Active := false;
    qryDetailPortion.Parameters.ParamByName('FormInfoID').Value := -1;
    qryDetailPortion.Active := true;
  end;

  if (qryMasterPortion.RecordCount = 0) and (qryDetailPortion.RecordCount = 0)
  then
  begin
    btnMakeDoc.Enabled := false;
  end;

  // StatusBar2.Panels[0].text:=CurrToStrF(CalcSumFileds('Balance',qryMasterPortion),ffCurrency,0)  ;
  SetColSize(DBGrid1, 5, true);
  updateQry;
end;

procedure TMakeDocPortionShareF.actFilterExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(Dmf.adcAccounting, 'DocDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', Format(strMaxMinDocDate, [APPBank.Year]));
      AddItem(Dmf.adcAccounting, 'Sec', '„Êﬁ ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciSimple, '', Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(Dmf.adcAccounting, 'Pri', '«’·Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciSimple, '', Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(Dmf.adcAccounting, 'Code', '‰ÕÊÂ  ”ÂÌ„', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'select infoid as code , infoname_L1 from acc.formsinfo where Formtype = 10  ',
        'select min(infoid) , max(infoid) from acc.formsinfo where Formtype = 10 ');
      AddItem(Dmf.adcAccounting, 'CTopicCode3', 'ﬂœ Ê ‰«„  ›’Ì·Ì 4',
        'ﬂœ„—ﬂ“Â“Ì‰Â3', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode3, CTopicName3_L1 FROM acc.CTopicCode3',
        'SELECT MIN(CTopicCode3), MAX(CTopicCode3) FROM acc.CTopicCode3');
      AddItem(Dmf.adcAccounting, 'CTopicCode2', 'ﬂœ Ê ‰«„  ›’Ì·Ì 3',
        'ﬂœ„—ﬂ“Â“Ì‰Â2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CenterTopics2',
        'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CenterTopics2');
      AddItem(Dmf.adcAccounting, 'CTopicCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì 1',
        ' ›’Ì·Ì 1', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CenterTopics ',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CenterTopics');
      AddItem(Dmf.adcAccounting, 'DetailCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì', 'ﬂœ  ›’Ì·Ì',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode, DetailName_L1  FROM   acc.Details ',
        'SELECT MIN((DetailCode) ),MAX((DetailCode) ) FROM acc.Details');
      AddItem(Dmf.adcAccounting, 'TopicCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'Select TopicCodeFrom , TopicCodeTo  From Acc.Config');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TMakeDocPortionShareF.qryDetailPortionBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  if chkSum.Checked then
    qryDetailPortion.SQL.Text := StringReplace(FSqlText, '#where#',
      '(Acc.PortionTable.PortionCunt <= ' + IntToStr(counter) + ')', [])
  else
    qryDetailPortion.SQL.Text := StringReplace(FSqlText, '#where#',
      '(Acc.PortionTable.PortionCunt = ' + IntToStr(counter) + ')', []);

end;

procedure TMakeDocPortionShareF.qryMasterPortionAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFindTopicCode do
  begin
    Close;
    Parameters.ParamByName('TopicCode').Value :=
      qryMaster.Fieldbyname('TopicCode').AsInteger;
    Open;
  end;
  with qryDetailPortion do
  begin
    Active := false;
    Parameters.ParamByName('FormInfoID').Value :=
      qryMaster.Fieldbyname('FormInfoID').AsInteger;
    // Parameters.ParamByName('subFormInfoID').Value :=
    // qryMaster.Fieldbyname('FormInfoID').AsInteger;
    Parameters.ParamByName('remain').Value := qryMaster.Fieldbyname('Balance')
      .AsCurrency;
    Parameters.ParamByName('remain2').Value := qryMaster.Fieldbyname('Balance')
      .AsCurrency;

    if StrToInt(Trim(mskDetailCode.Text)) > 0 then
      Parameters.ParamByName('detail').Value := Trim(mskDetailCode.Text)
    else
      Parameters.ParamByName('detail').Value :=
        qryMaster.Fieldbyname('DetailCode').AsString;
    Parameters.ParamByName('subPortionCunt').Value := counter;

    Parameters.ParamByName('yearID').Value := APPBank.Year;
    Active := true;
  end;
end;

// function TMakeDocPortionShareF.CalcSumFileds(FiledName: String;qry:TADOQuery): Currency;
// begin
// Result:=0;
// try
// with cloned do begin
// Clone(qry,ltReadOnly);
// First;
// while not eof do begin
// Result:=Result +fieldbyname(FiledName).AsCurrency;
// Next;
// end;//while
// end;//with
// except
// end;//try
// end;

procedure TMakeDocPortionShareF.FormCreate(Sender: TObject);
begin
  inherited;
  DetailCode := 0;
  qryMaster := qryMasterPortion;
  // cloned:=TADOQuery.Create(Self);
  counter := var_glb_CurrentMonth;
  qry_Company.Open;
  qry_DocTypes.Open;
  qry_DocGroups.Open;
  qry_DocGroups.Insert;
  createToolButton;
end;

procedure TMakeDocPortionShareF.SpeedButton1Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, ',Ã” ÃÊ ‘—ﬂ ',
    'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM  acc.Companies ',
    ['òœ', '‰«„ ‘—ﬂ ', '‰«„ ‘—ﬂ '], alLeft) <> '' then
  begin
    FreeReservedCodes(Dmf.adcAccounting, 'acc.docGroups');
    qry_Company.Locate('CompanyCode', c, []);
    if (qry_DocGroups.state in dsEditModes) then
      qry_DocGroups.Cancel;
    if not(qry_DocGroups.state in dsEditModes) then
      qry_DocGroups.Insert;
    // qry_DocGroups['CompanyCode'] := c;

  end; // if
end;

procedure TMakeDocPortionShareF.spdDetailCodeClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'ﬂœÂ«Ì  ›’Ì·Ì',
    'SELECT distinct DetailCode, DetailName_L1 FROM acc.Details' +
    ' where  detailcode <>0  ', ['ﬂœ  ›’Ì·Ì', '‰«„ Õ”«»'], Results, [80, 200],
    alLeft) then
  begin
    edtDetailName.Text := Results[1];
    mskDetailCode.Text := Results[0];
  end;
end;

procedure TMakeDocPortionShareF.qry_DocGroupsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('CompanyCode').AsInteger :=
    qry_Company.Fieldbyname('CompanyCode').AsInteger;
  DataSet.Fieldbyname('MakeDate').AsDateTime := Now;
  DataSet.Fieldbyname('DocDate').AsString := var_glb_CurrentDate;
  DataSet.Fieldbyname('YearId').AsInteger := APPBank.Year;
  DataSet['DocTypeCode'] := 3;
  DataSet['Status'] := IfThen(Dmf.ReadBankConfigAcc('AssignedDocForm')
    = '0', 0, 1);

  DataSet.Fieldbyname('SecondaryDocNo').AsInteger :=
    GetANewCode
    ('',Format('select max(SecondaryDocNo) from acc.docGroups where CompanyCode=%d And YearID=%d',
    [qry_Company.Fieldbyname('CompanyCode').AsInteger, APPBank.Year]),
    'SecondaryDocNo',dmf.adcAccounting);
  DataSet.Fieldbyname('serial').AsInteger :=
    GetANewCode
    ('',Format('select max(serial) from acc.docGroups where CompanyCode=%d And YearID=%d',
    [qry_Company.Fieldbyname('CompanyCode').AsInteger, APPBank.Year]),
    'serial',dmf.adcAccounting);
  DataSet.Fieldbyname('Userid').AsInteger := User.id;
  DataSet.Fieldbyname('DocTopic_L1').AsString := '»«»  À»  ”‰œ  ”ÂÌ„ Â“Ì‰Â ';
end;

procedure TMakeDocPortionShareF.qry_DocGroupsStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'ÅÌ‘ ‰ÊÌ”';
    1:
      Text := '„Êﬁ ';
    2:
      Text := 'ﬁÿ⁄Ì';
    3:
      Text := 'œ«∆„';
  end; // case
end;

procedure TMakeDocPortionShareF.ActMakeDocExecute(Sender: TObject);
var
  RemainRounding: Currency;
  Doc_rowno: integer;
begin
  inherited;
  if not(qry_DocGroups.state in [dsedit]) then
    qry_DocGroups.edit;

  if not ValidateDatasetDates(qry_DocGroups, APPBank.StartYear, APPBank.endYear)
  then
  begin

    // Warn(' «—ÌŒ ”‰œ ‰«„⁄ »— «” ');
    DBEdit10.SetFocus;
    Exit;
  end;

  BigMessageProgBar('œ— Õ«· ’œÊ— ”‰œ...', qryMaster.RecordCount);
    if not dmf.adcAccounting.InTransaction then
  Dmf.adcAccounting.BeginTrans;
  try
    qry_DocGroups.Post;
    with qry_Documents do
    begin
      Active := false;
      Active := true;
    end; // with
    Doc_rowno := 1;
    with qryMaster do
    begin
      First;
      while not eof do
      begin
        //  ›«Ê  Õ«’· «“ —Ê‰œﬂ—œ‰ „Õ«”»Â ‘œÂÊ “„«‰ ’œÊ—”‰œ «“ «Ê·Ì‰ „»«·€ ﬂ”— „Ì‘Êœ  « «Œ ·«›Ì œ— ”‰œ «ÌÃ«œ ‰‘Êœ
        RemainRounding := SumGrid1.GetValueField('Amount') -
          qryMaster.Fieldbyname('Balance').AsCurrency;
        with qryDetailPortion do
        begin
          while not eof do
          begin
            // if abs(RemainRounding) > abs(Fieldbyname('amount').AsCurrency) then
            // begin
            // RemainRounding := abs(RemainRounding) - Fieldbyname('amount')
            // .AsCurrency;
            // next;
            // end
            // else
            // begin
            qry_Documents.Insert;
            // qry_Documents.FieldByName('Id').AsInteger:=Get ANewCode('','acc.Documents','id');
            qry_Documents.Fieldbyname('Serial').AsInteger :=
              qry_DocGroupsSerial.AsInteger;
            qry_Documents.Fieldbyname('Row').AsInteger := Doc_rowno;
            Inc(Doc_rowno);
            qry_Documents.Fieldbyname('YearId').AsInteger := APPBank.Year;
            qry_Documents.Fieldbyname('CompanyCode').AsInteger :=
              qry_DocGroups.Fieldbyname('CompanyCode').AsInteger;

            qry_Documents.Fieldbyname('TopicCode').AsLargeInt :=
              Fieldbyname('_TopicCode').AsInteger;
            qry_Documents.Fieldbyname('DetailCode').AsInteger :=
              Fieldbyname('detailCode').AsInteger;
            qry_Documents.Fieldbyname('CTopicCode').AsInteger :=
              Fieldbyname('CTopicCode').AsInteger;
            qry_Documents.Fieldbyname('CTopicCode2').AsInteger :=
              Fieldbyname('CenterTopics2').AsInteger;
            qry_Documents.Fieldbyname('CTopicCode3').AsInteger :=
              qryMaster.Fieldbyname('CTopicCode3').AsInteger;
            qry_Documents.Fieldbyname('Comment_L1').AsString := '»«»  ”Â„ «“ ' +
              qryMaster.Fieldbyname('TopicCode').AsString + ' - ' +
              Fieldbyname('DetailCode').AsString + ' - ' +
              qryMaster.Fieldbyname('CTopicCode').AsString + ' - ' +
              qryMaster.Fieldbyname('CTopicCode2').AsString +
              '  »« ‰ÕÊÂ  ”ÂÌ„  ' + qryMaster.Fieldbyname
              ('InfoName_L1').AsString;
            qry_Documents.Fieldbyname('AidAmount').AsFloat :=
              Fieldbyname('CofficientItem').AsFloat;
            if Fieldbyname('amount').AsCurrency - RemainRounding > 0 then
            begin
              qry_Documents.Fieldbyname('debt').AsCurrency :=
                abs(Fieldbyname('amount').AsCurrency - RemainRounding);
              qry_Documents.Fieldbyname('Credit').AsCurrency := 0;
            end
            else
            begin
              qry_Documents.Fieldbyname('debt').AsCurrency := 0;
              qry_Documents.Fieldbyname('Credit').AsCurrency :=
                abs(Fieldbyname('amount').AsCurrency - RemainRounding)
            end; // if
            RemainRounding := 0;
            qry_Documents.Post;
            GoProgressBar('');
            next;
            // end; // if
          end; // while details
        end; // with detail
        if DetailCode = 0 then
        begin
          qry_Documents.Insert;
          qry_Documents.Fieldbyname('Id').AsInteger :=
            GetANewCode('','acc.Documents', 'id',dmf.adcAccounting);
          qry_Documents.Fieldbyname('YearId').AsInteger := APPBank.Year;
          qry_Documents.Fieldbyname('Serial').AsInteger :=
            qry_DocGroupsSerial.AsInteger;
          qry_Documents.Fieldbyname('Row').AsInteger := Doc_rowno;
          Doc_rowno := Doc_rowno + 1;
          qry_Documents.Fieldbyname('CompanyCode').AsInteger :=
            qry_DocGroups.Fieldbyname('CompanyCode').AsInteger;

          qry_Documents.Fieldbyname('TopicCode').AsLargeInt :=
            Fieldbyname('TopicCode').AsInteger;
          qry_Documents.Fieldbyname('DetailCode').AsInteger :=
            Fieldbyname('DetailCode').AsInteger;
          qry_Documents.Fieldbyname('CTopicCode').AsInteger :=
            Fieldbyname('CTopicCode').AsInteger;
          qry_Documents.Fieldbyname('CTopicCode2').AsInteger :=
            Fieldbyname('CTopicCode2').AsInteger;
          qry_Documents.Fieldbyname('CTopicCode3').AsInteger :=
            qryMaster.Fieldbyname('CTopicCode3').AsInteger;
          qry_Documents.Fieldbyname('Comment_L1').AsString :=
            '»«»   ”ÂÌ„ »—«”«”  ' + qryMaster.Fieldbyname
            ('InfoName_L1').AsString;
          if Fieldbyname('Balance').AsCurrency < 0 then
          begin
            qry_Documents.Fieldbyname('debt').AsCurrency :=
              abs(Fieldbyname('Balance').AsCurrency - RemainRounding);
            qry_Documents.Fieldbyname('Credit').AsCurrency := 0;
          end
          else
          begin
            qry_Documents.Fieldbyname('debt').AsCurrency := 0;
            qry_Documents.Fieldbyname('Credit').AsCurrency :=
              abs(Fieldbyname('Balance').AsCurrency - RemainRounding)
          end; // if
          qry_Documents.Post;
          GoProgressBar(qry_Documents.Fieldbyname('TopicCode').AsString);
        end;
        next;
      end; // while master

      if DetailCode <> 0 then
      begin
        with qryMasterPortion do
        begin
          while not eof do
          begin
            qry_Documents.Insert;
            qry_Documents.Fieldbyname('Id').AsInteger :=
              GetANewCode('','acc.Documents', 'id',dmf.adcAccounting);
            qry_Documents.Fieldbyname('YearId').AsInteger := APPBank.Year;
            qry_Documents.Fieldbyname('Serial').AsInteger :=
              qry_DocGroupsSerial.AsInteger;
            qry_Documents.Fieldbyname('Row').AsInteger := Doc_rowno;
            Doc_rowno := Doc_rowno + 1;
            qry_Documents.Fieldbyname('CompanyCode').AsInteger :=
              qry_DocGroups.Fieldbyname('CompanyCode').AsInteger;

            qry_Documents.Fieldbyname('TopicCode').AsLargeInt :=
              Fieldbyname('TopicCode').AsInteger;
            qry_Documents.Fieldbyname('DetailCode').AsInteger :=
              qryMasterPortionDetailCode.AsInteger;
            qry_Documents.Fieldbyname('CTopicCode').AsInteger :=
              Fieldbyname('CTopicCode').AsInteger;
            qry_Documents.Fieldbyname('CTopicCode2').AsInteger :=
              Fieldbyname('CTopicCode2').AsInteger;
            qry_Documents.Fieldbyname('CTopicCode3').AsInteger :=
              qryMaster.Fieldbyname('CTopicCode3').AsInteger;
            qry_Documents.Fieldbyname('Comment_L1').AsString :=
              '»«»   ”ÂÌ„ »—«”«”  ' + qryMaster.Fieldbyname
              ('InfoName_L1').AsString;
            if Fieldbyname('Balance').AsCurrency < 0 then
            begin
              qry_Documents.Fieldbyname('debt').AsCurrency :=
                abs(Fieldbyname('Balance').AsCurrency);
              qry_Documents.Fieldbyname('Credit').AsCurrency := 0;
            end
            else
            begin
              qry_Documents.Fieldbyname('debt').AsCurrency := 0;
              qry_Documents.Fieldbyname('Credit').AsCurrency :=
                abs(Fieldbyname('Balance').AsCurrency)
            end; // if
            qry_Documents.Post;
            GoProgressBar(qry_Documents.Fieldbyname('TopicCode').AsString);
            qryMasterPortion.next;
          end;
        end; // with
      end;

    end; // with master
    CloseMessage;
    btnDisplayDoc.Visible := true;
      if DMf.adcAccounting.InTransaction then
    Dmf.adcAccounting.CommitTrans;
    FreeReservedCodes(Dmf.adcAccounting, 'acc.docGroups');
    BigMessage('«‰Ã«„ ‘œ.', 1);
  except
    on E: Exception do
    begin
      if Dmf.adcAccounting.InTransaction then
        Dmf.adcAccounting.RollbackTrans;
      add2log(E.Message);
      Warn('«‘ﬂ«· œ— ’œÊ— ”‰œ');
      CloseMessage
    end;
  end;
end;

procedure TMakeDocPortionShareF.updateQry;
begin
  with qryDetailPortion do
  begin
    Active := false;
    Parameters.ParamByName('subPortionCunt').Value := counter;
    // Parameters.ParamByName('PortionCunt').Value := counter;
    Active := true;
  end;
end;

procedure TMakeDocPortionShareF.chkSumClick(Sender: TObject);
begin
  inherited;
  qryDetailPortion.Active := false;
  qryDetailPortion.Active := true;
end;

procedure TMakeDocPortionShareF.createToolButton;
var
  i: integer;
const
  NameButton = 'ToolButton';
begin
  i := 1;
  with Dmf.qry_Temp do
  begin
    Close;
    SQL.Text :=
      'SELECT InfoID,InfoName_L1 FROM acc.FormsInfo WHERE (FormType = 14)';
    Open;
    while not eof do
      with TToolButton.Create(ToolBar1) do
      begin
        Parent := ToolBar1;
        Caption := Fieldbyname('InfoName_L1').AsString;
        Name := NameButton + IntToStr(i);
        Tag := Fieldbyname('InfoID').AsInteger;
        OnClick := ToolBar1Click;
        if Tag = counter then
          Down := true;
        Grouped := true;
        Style := tbsCheck;
        Inc(i);
        next;
      end; // with
  end; // while
end;

procedure TMakeDocPortionShareF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMasterPortion);
end;

procedure TMakeDocPortionShareF.ToolBar1Click(Sender: TObject);
begin
  inherited;
  counter := (Sender as TToolButton).Tag;
  (Sender as TToolButton).Down := true;
  updateQry;
end;

procedure TMakeDocPortionShareF.FormShow(Sender: TObject);
begin
  inherited;
  FSqlText := qryDetailPortion.SQL.Text;

  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('TopicCode') = nil then
    Close;
  with qryInsertPortion do
  begin
    Close;
    Parameters.ParamByName('YearId').Value := APPBank.Year;
    Open;
  end;

end;

procedure TMakeDocPortionShareF.mskDetailCodeChange(Sender: TObject);
begin
  inherited;
  if TryStrToInt(Trim(mskDetailCode.Text), DetailCode) then
  begin
    pnlDetailCodeNotZero.Visible := DetailCode > 0;
    Panel5.Left := 0;
    with qryDetailCodeNotZero Do
    begin
      Close;
      Parameters.ParamByName('TopicCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
      Parameters.ParamByName('TopicCodeTo').Value :=
        GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
      Parameters.ParamByName('CTopicCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
      Parameters.ParamByName('CTopicCodeTo').Value :=
        GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
      Parameters.ParamByName('CTopicCode2From').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
      Parameters.ParamByName('CTopicCode2To').Value :=
        GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
      Parameters.ParamByName('CTopicCode3From').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
      Parameters.ParamByName('CTopicCode3To').Value :=
        GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);
      Parameters.ParamByName('DetailCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
      Parameters.ParamByName('DetailCodeTo').Value :=
        GetcTo(myParams.ParamValues['DetailCode'], ftInteger);

      Parameters.ParamByName('SecFrom').Value :=
        GetcFrom(myParams.ParamValues['Sec'], ftInteger);
      Parameters.ParamByName('SecTo').Value :=
        GetcTo(myParams.ParamValues['Sec'], ftInteger);
      Parameters.ParamByName('PriFrom').Value :=
        GetcFrom(myParams.ParamValues['Pri'], ftInteger);
      Parameters.ParamByName('PriTo').Value :=
        GetcTo(myParams.ParamValues['Pri'], ftInteger);
      Parameters.ParamByName('CodeFrom').Value :=
        GetcFrom(myParams.ParamValues['Code'], ftInteger);
      Parameters.ParamByName('CodeTo').Value :=
        GetcTo(myParams.ParamValues['Code'], ftInteger);
      Parameters.ParamByName('DocDateFrom').Value :=
        GetcFrom(myParams.ParamValues['DocDate'], ftString);
      Parameters.ParamByName('DocDateTo').Value :=
        GetcTo(myParams.ParamValues['DocDate'], ftString);
      Parameters.ParamByName('aYearId').Value := APPBank.Year;

      Open;
    end;
    if DetailCode = 0 then
      qryMaster := qryMasterPortion
    else
      qryMaster := qryDetailCodeNotZero;

  end;
end;

procedure TMakeDocPortionShareF.mskDetailCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    spdDetailCode.Click;
end;

end.
