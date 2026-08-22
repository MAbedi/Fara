unit Rpt_Ctopics3OnDetailsBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, Menus,
  ppBands, ppClass, ppModule, raCodMod, ppCtrls, ppReport, ppStrtch,
  ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppDB, ppComm, ppRelatv,
  ppDBPipe, ppTypes, ppParameter, Math, ppDesignLayer,
  System.ImageList, System.Actions, AccFunctions, Filter_ADO_Const,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TRpt_Ctopics3OnDetailsBookF = class(Ttemplate2MDIF)
    qry_Doc: TADOQuery;
    qry_Companies: TADOQuery;
    qry_AccCode: TADOQuery;
    src_Companies: TDataSource;
    qry_CompaniesCompanyCode: TIntegerField;
    src_Doc: TDataSource;
    src_AccCode: TDataSource;
    actFilter: TAction;
    qry_DocID: TAutoIncField;
    qry_DocCompanyCode: TIntegerField;
    qry_DocTopicCode: TLargeintField;
    qry_DocSecondaryDocNo: TIntegerField;
    qry_DocPrimaryDocNo: TIntegerField;
    c: TStringField;
    qry_DocAidDocdate: TStringField;
    qry_DocAidAmount: TFloatField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    PnlCompany: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit2: TDBEdit;
    DBNavigator2: TDBNavigator;
    actPrint: TAction;
    actSendExcel: TAction;
    actShowForm: TAction;
    actSort: TAction;
    qry_Docserial: TIntegerField;
    qry_DocRunningBalance: TBCDField;
    qry_DocBudgetTopicID: TIntegerField;
    qry_DocProjectID: TIntegerField;
    qry_CompaniesCompanyName_l1: TStringField;
    qry_DocDetailCode: TIntegerField;
    qry_DocComment_l1: TStringField;
    DBNavigator1: TDBNavigator;
    qry_DocBedBes: TStringField;
    qry_AccCodeAidInfoType: TWordField;
    qry_AccCodeCompanyCode: TIntegerField;
    qry_AccCodeTopicCode: TLargeintField;
    qry_AccCodeDetailCode: TIntegerField;
    qry_AccCodeaccCode: TStringField;
    qry_AccCodeAccName: TStringField;
    pop4Print: TPopupMenu;
    N11: TMenuItem;
    pop2: TMenuItem;
    pop_3: TMenuItem;
    pop_1: TMenuItem;
    pop_4: TMenuItem;
    pop_2: TMenuItem;
    pop_5: TMenuItem;
    pop_6: TMenuItem;
    pop_8: TMenuItem;
    pop_7: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblPrintDate: TppLabel;
    ppLabel1: TppLabel;
    ppLblRptName: TppLabel;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSysVarPageNo: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLine13: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine11: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel3: TppLabel;
    ppLblSeconNo_DocNo: TppLabel;
    ppLblDate: TppLabel;
    ppLine8: TppLine;
    qry_AccCodeKindInsertBudgetCode: TIntegerField;
    N8: TMenuItem;
    BitBtn7: TBitBtn;
    actVjPrint: TAction;
    qry_DocYearId: TIntegerField;
    qry_DocSortID: TIntegerField;
    qry_DocDebt: TFMTBCDField;
    qry_DocCredit: TFMTBCDField;
    qry_DocAidDocNo: TFMTBCDField;
    qry_AccCodeCTopicCode3: TIntegerField;
    qry_Docctopiccode3: TIntegerField;
    qry_DocCurrencyType: TIntegerField;
    qry_DocCurrenciesName: TStringField;
    qry_DocCurrencyDebit: TFMTBCDField;
    qry_DocCurrencyCredit: TFMTBCDField;
    qry_DocRunningCurrencyBalance: TFMTBCDField;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DBGrid1: TCedarDbgrid;
    qry_Doc_row: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure qry_CompaniesAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure N11Click(Sender: TObject);
    procedure pop2Click(Sender: TObject);
    procedure pop_3Click(Sender: TObject);
    procedure pop_1Click(Sender: TObject);
    procedure pop_4Click(Sender: TObject);
    procedure pop_2Click(Sender: TObject);
    procedure pop_5Click(Sender: TObject);
    procedure pop_6Click(Sender: TObject);
    procedure pop_8Click(Sender: TObject);
    procedure pop_7Click(Sender: TObject);
    procedure ppLblSeconNo_DocNoGetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actVjPrintExecute(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure qry_DocAfterOpen(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);

  private
    { Private declarations }
    showFilter: boolean;
    // cloned: TADOQuery;

    // procedure Updateremain;
    procedure UpdateFilter;
    procedure InitForm;
    // function CalcSumFileds(FiledName: String): Currency;
    procedure myInitReportFile(ReportName: TppReport; GeneralFileName: string);
    procedure setVisibleColumns;
  public
    { Public declarations }
  end;

var
  Rpt_Ctopics3OnDetailsBookF: TRpt_Ctopics3OnDetailsBookF;

implementation

uses Dm, GlobalPro, FilterClass_ADO, filter_ADO, Document, search2, sort2,
  searchCode_L1_L2, DBGrid2Print, Resource, FormFunctions;

{$R *.dfm}

procedure TRpt_Ctopics3OnDetailsBookF.FormCreate(Sender: TObject);
begin
  inherited;
  // cloned := TADOQuery.Create(Self);
  showFilter := var_glb_Boolean;
  if opta.AccBookSortType = 0 then
    qry_Doc.SQL.Add
      ('ORDER BY DocDate,SortID, SecondaryDocNo, PrimaryDocNo,bedbes, ID')
  else
    qry_Doc.SQL.Add
      ('ORDER BY DocDate,SortID, SecondaryDocNo, PrimaryDocNo, ID,bedbes');
  InitForm;
end;

procedure TRpt_Ctopics3OnDetailsBookF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(DMF.adcAccounting, 'checked', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);
      AddItem(DMF.adcAccounting, 'DocTypeCode', 'انواع سند حسابداری', '',
        ftUnknown, dvDefaults, 'true', '', ciCheck, strLookUpDocType);
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'CTopicCode3', 'كد و نام حساب تفصیلی 4',
        'كد حساب', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode3,CTopicName3_L1 FROM acc.CenterTopics3 ',
        'SELECT Min(CTopicCode3),  Max(CTopicCode3)  FROM acc.Documents');

      AddItem(DMF.adcAccounting, 'CTopicCode2', 'كد و نام حساب تفصیلی 3',
        'كد حساب', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode2,CTopicName2_L1 FROM acc.CenterTopics2 ',
        'SELECT Min(CTopicCode2),  Max(CTopicCode2)  FROM acc.Documents');

      AddItem(DMF.adcAccounting, 'CtopicCode', ' حساب تفصیلی 2 ', 'كد ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode, CTopicName_L1 FROM acc.CenterTopics ',
        'SELECT  MIN(0) , MAX(CTopicCode) FROM acc.CenterTopics ');

      AddItem(DMF.adcAccounting, 'DetailCode', 'كد و نام حساب تفصيلي 1 ',
        'كد حساب', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode,DetailName_L1 FROM acc.Details',
        'SELECT Min(DetailCode),  Max(DetailCode)  FROM acc.Documents');
      AddItem(DMF.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT Categories.TopicCode, Categories.MoeenName_L1 FROM acc.Categories as Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse as CategoriesForUse ON Categories.TopicCode = CategoriesForUse.PrvTopicCode '
        + ' WHERE (CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(Categories.TopicCode), max(Categories.TopicCode) FROM acc.Categories  as Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse as CategoriesForUse ON Categories.TopicCode =CategoriesForUse.PrvTopicCode '
        + ' WHERE (CategoriesForUse.PrvTopicCode IS NULL) ');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT Min(CompanyCode)  , Max(CompanyCode)  FROM acc.Companies');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRpt_Ctopics3OnDetailsBookF.FormShow(Sender: TObject);
begin
  inherited;
  if showFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DocDate') = nil then
      close;
  end;
end;

procedure TRpt_Ctopics3OnDetailsBookF.qry_AccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  setVisibleColumns;
  with qry_Doc do
  begin
    Active := false;
    SetArzParameters(qry_Doc, myParams);
    // Parameters.ParamByName('CompanyCode').Value:=qry_AccCode.fieldByName('CompanyCode').AsInteger  ;
    Parameters.ParamByName('AccCode').Value :=
      qry_AccCode.Fieldbyname('TopicCode').AsLargeInt;
    Parameters.ParamByName('CTopicCode2').Value :=
      qry_AccCode.Fieldbyname('CTopicCode3').AsInteger;
    Parameters.ParamByName('DetailCode').Value :=
      qry_AccCode.Fieldbyname('DetailCode').AsInteger;
    // Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    // Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    Active := True;
  end; // with
  // Updateremain;
end;

procedure TRpt_Ctopics3OnDetailsBookF.qry_CompaniesAfterScroll
  (DataSet: TDataSet);
var
  CompanyFrom, companyTo: integer;
begin
  inherited;
  if opta.ActivePartCompany then
  begin
    CompanyFrom := DataSet.Fieldbyname('CompanyCode').AsInteger;
    companyTo := CompanyFrom
  end
  else
  begin
    CompanyFrom := qry_Companies.Parameters.ParamByName
      ('CompanyCodeFrom').Value;
    companyTo := qry_Companies.Parameters.ParamByName('CompanyCodeTo').Value;
  end;
  with qry_Doc do
  begin
    Parameters.ParamByName('CompanyCodeFrom').Value := CompanyFrom;
    Parameters.ParamByName('CompanyCodeTO').Value := companyTo;
    SetCompanyFilterinLogin(Parameters);
  end; // with
  with qry_AccCode do
  begin
    close;
    Parameters.ParamByName('CompanyCodeFrom').Value := CompanyFrom;
    Parameters.ParamByName('CompanyCodeTO').Value := companyTo;
    SetCompanyFilterinLogin(Parameters);
    Open;
  end;
end;

procedure TRpt_Ctopics3OnDetailsBookF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1, myParams, qry_Doc)
end;

procedure TRpt_Ctopics3OnDetailsBookF.FormDestroy(Sender: TObject);
begin
  inherited;
  // cloned.Free;

end;

procedure TRpt_Ctopics3OnDetailsBookF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TRpt_Ctopics3OnDetailsBookF.InitForm;
begin
  PnlCompany.Visible := gv_MultiCompany and opta.ActivePartCompany;
  // mGrid1.SumCurrentRecord := opta.SumBook;
end;

procedure TRpt_Ctopics3OnDetailsBookF.UpdateFilter;
begin
  with qry_AccCode do
  begin
    Active := false;
    SetArzParameters(qry_AccCode, myParams);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);

    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);

    Active := True;
  end; // with
  with qry_Doc do
  begin
    Active := false;
    SetArzParameters(qry_Doc, myParams);
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);;
    Parameters.ParamByName('Status2').Value := -1;
    Parameters.ParamByName('DocTypeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DocTypeCode'], ftString);
    Parameters.ParamByName('AccCode').Value :=
      qry_AccCode.Fieldbyname('TopicCode').AsLargeInt;
    Parameters.ParamByName('CTopicCode2').Value :=
      qry_AccCode.Fieldbyname('CTopicCode3').AsInteger;
    Parameters.ParamByName('DetailCode').Value :=
      qry_AccCode.Fieldbyname('DetailCode').AsInteger;
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;

    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
  end; // with
  with qry_Companies do
  begin
    Active := false;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);
    Active := True;
  end; // with
end;

// procedure TRpt_Ctopics3OnDetailsBookF.Updateremain;
// var
// c, bes, bed: Currency;
// amount, i: integer;
// begin
// with qry_Doc do
// begin
// try
// First;
// DisableControls;
// c := 0;
// bed := 0;
// i := 0;
// bes := 0;
// amount := 0;
// while not eof do
// begin
// i := i + 1;
// amount := amount + Fieldbyname('AidAmount').AsInteger;
// c := c + Fieldbyname('Balance').AsCurrency;
// bed := bed + Fieldbyname('Debt').AsCurrency;
// bes := bes + Fieldbyname('Credit').AsCurrency;
// edit;
// Fieldbyname('_row').AsInteger := i;
// Fieldbyname('Amount').AsInteger := amount;
// Fieldbyname('calcuBalance').AsCurrency := c;
// Fieldbyname('bed').AsCurrency := bed;
// Fieldbyname('bes').AsCurrency := bes;
// post;
// Next;
// end; //
// finally
// First;
// EnableControls;
// end; // try
// end; // with
// // StatusBar1.Panels[5].Text:='تعداد  =  '+IntToStr(qry_Doc.RecordCount);
// // StatusBar1.Panels[3].Text:='مقدار = '+IfThen(DBGrid1.Columns[5].Visible,inttostr(amount),'0');
// // StatusBar1.Panels[2].Text:='بد = '+CurrToStrF(bed,ffCurrency,0)  ;
// // StatusBar1.Panels[1].Text:='بس = '+CurrToStrF(bes,ffCurrency,0)  ;
// // StatusBar1.Panels[0].Text:= 'مانده = '+CurrToStrF(bed-bes,ffCurrency,0)  ;
//
// end;

procedure TRpt_Ctopics3OnDetailsBookF.BitBtn1Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM Companies ' +
    ' where CompanyCode between ' +
    GetcFrom(myParams.ParamValues['CompanyCode'], ftString) + ' and ' +
    GetcTo(myParams.ParamValues['CompanyCode'], ftString);
  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'شركتها', Txt,
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    qry_Companies.Locate('CompanyCode', Results[0], []);
  end; // if
end;

procedure TRpt_Ctopics3OnDetailsBookF.BitBtn2Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  // Txt := 'select * from (SELECT  LTRIM(rTRIM(STR(Documents.CTopicCode2))) + '' - '' + LTRIM(RTRIM(STR(Documents.DetailCode))) + '' - '' + RTRIM(LTRIM(STR(Documents.TopicCode))) as acccode,'
  // + '  Categories.MoeenName_l1+ '' - ''+Details.DetailName_L1+ '' - ''+CenterTopics2.CTopicName2_l1 as AccName_l1'
  // + ' ,Categories.MoeenName_l2+ '' - ''+Details.DetailName_L2+ '' - ''+CenterTopics2.CTopicName2_l2 as AccName_l2'
  // + ' FROM acc.Documents as Documents INNER JOIN ' +
  // ' ACC.CenterTopics2 as CenterTopics2 ON Documents.CTopicCode2 = CenterTopics2.CTopicCode2 INNER JOIN '
  // + ' ACC.Details AS Details ON Documents.DetailCode = Details.DetailCode INNER JOIN '
  // + ' ACC.Categories AS CategorieS ON Documents.TopicCode = Categories.TopicCode INNER JOIN '
  // + ' ACC.DocGroups AS DocGroups ON Documents.Serial = DocGroups.Serial' +
  // // ' WHERE (dbo.DocGroups.SecondaryDocNo <= '+GetcTo(myParams.ParamValues['SecondaryDocNo'],ftString)+' ) '+
  // // ' AND (dbo.DocGroups.PrimaryDocNo <='+GetcTo(myParams.ParamValues['PrimaryDocNo'],ftString)+') '+
  // // ' AND (dbo.DocGroups.DocDate <='+QuotedStr(GetcTo(myParams.ParamValues['DocDate'],ftString))+' ) '+
  // // ' AND (dbo.Documents.TopicCode  BETWEEN '+GetcFrom(myParams.ParamValues['TopicCode'],ftString)+'  AND '+GetcTo(myParams.ParamValues['TopicCode'],ftString)+' ) '+
  // // ' AND (dbo.Documents.DetailCode  BETWEEN '+GetcFrom(myParams.ParamValues['DetailCode'],ftString)+' AND '+GetcTo(myParams.ParamValues['DetailCode'],ftString)+ ') '+
  // // ' AND (dbo.Documents.CTopicCode2 BETWEEN '+GetcFrom(myParams.ParamValues['CTopicCode2'],ftString)+' AND '+GetcTo(myParams.ParamValues['CTopicCode2'],ftString)+ ') '+
  // ' WHERE (DocGroups.CompanyCode =' +
  // qry_CompaniesCompanyCode.AsString + ') ' +
  // // 'and ( dbo.DocGroups.Status<>'+IntToStr(param1)+')  AND (dbo.DocGroups.Status<>'+IntToStr(param2)+')'+
  // ' GROUP BY CenterTopics2.CTopicName2_L1, Documents.DetailCode, Documents.CTopicCode2,Details.CompanyCode,'
  // + ' Documents.TopicCode,Categories.MoeenName_L1,Details.DetailName_L1,CenterTopics2.CTopicName2_L2 ,Categories.MoeenName_L2, Details.DetailName_L2'
  // + ')fun ';

  Txt := 'select * from (SELECT  LTRIM(rTRIM(STR(Documents.CTopicCode2))) + '' - '' + LTRIM(RTRIM(STR(Documents.DetailCode))) + '' - '' + RTRIM(LTRIM(STR(Documents.TopicCode))) as acccode,'
    + '  Categories.MoeenName_l1+ '' - ''+Details.DetailName_L1+ '' - ''+CenterTopics2.CTopicName2_l1 as AccName_l1'
    + ' ,Categories.MoeenName_l2+ '' - ''+Details.DetailName_L2+ '' - ''+CenterTopics2.CTopicName2_l2 as AccName_l2'
    + ' FROM acc.Documents as Documents INNER JOIN ' +
    ' ACC.CenterTopics2 as CenterTopics2 ON Documents.CTopicCode2 = CenterTopics2.CTopicCode2 INNER JOIN '
    + ' ACC.Details AS Details ON Documents.DetailCode = Details.DetailCode INNER JOIN '
    + ' ACC.Categories AS CategorieS ON Documents.TopicCode = Categories.TopicCode INNER JOIN '
    + ' ACC.DocGroups AS DocGroups ON Documents.Serial = DocGroups.Serial' +
    ' WHERE    (DocGroups.SecondaryDocNo <= ' +
    IntToStr(qry_AccCode.Parameters.ParamByName('SecondaryDocNoTo').Value) +
    ') ' + ' AND (DocGroups.PrimaryDocNo <= ' +
    IntToStr(qry_AccCode.Parameters.ParamByName('PrimaryDocNoTo').Value) + ') '
    + ' AND (DocGroups.DocDate <= ' +
    QuotedStr(qry_AccCode.Parameters.ParamByName('DocDateTo').Value) + ' )' +
    ' AND (Documents.TopicCode  BETWEEN ' +
    IntToStr(qry_AccCode.Parameters.ParamByName('TopicCodeFrom').Value) +
    '  AND ' + IntToStr(qry_AccCode.Parameters.ParamByName('TopicCodeTo').Value)
    + ' )' + ' AND (Documents.CTopicCode2  BETWEEN ' +
    IntToStr(qry_AccCode.Parameters.ParamByName('CTopicCode2From').Value) +
    ' AND ' + IntToStr(qry_AccCode.Parameters.ParamByName('CTopicCode2To')
    .Value) + ' )' + ' AND (DocGroups.CompanyCode = ' +
    qry_CompaniesCompanyCode.AsString + ')' +
    ' AND (Documents.DetailCode Between ' +
    IntToStr(qry_AccCode.Parameters.ParamByName('DetailCodeFrom').Value) +
    '  And ' + IntToStr(qry_AccCode.Parameters.ParamByName('DetailCodeTo')
    .Value) + ' )' +
    ' GROUP BY CenterTopics2.CTopicName2_L1, Documents.DetailCode, Documents.CTopicCode2,Details.CompanyCode,'
    + ' Documents.TopicCode,Categories.MoeenName_L1,Details.DetailName_L1,CenterTopics2.CTopicName2_L2 ,Categories.MoeenName_L2, Details.DetailName_L2'
    + ')fun ';

  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'حسابها', Txt,
    ['کد', 'عنوان معین ', 'caption'], Results, [80, 300, 300], alLeft);
  if s then
  begin
    qry_AccCode.Locate('AccCode', Results[0], []);
  end; // if
end;

procedure TRpt_Ctopics3OnDetailsBookF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_Doc.Fieldbyname('serial').AsVariant,
    qry_Doc.Fieldbyname('YearId').AsInteger, qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_Doc.Fieldbyname('id').AsInteger, []);
end;

procedure TRpt_Ctopics3OnDetailsBookF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRpt_Ctopics3OnDetailsBookF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TRpt_Ctopics3OnDetailsBookF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TRpt_Ctopics3OnDetailsBookF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.Fieldbyname('SecondaryDocNo'));
end;

procedure TRpt_Ctopics3OnDetailsBookF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره موقت ' +
    IntToStr(qry_Doc.Parameters.ParamByName('SecondaryDocNoFrom').Value) +
    ' تا ' + IntToStr(qry_Doc.Parameters.ParamByName('SecondaryDocNoTo').Value);
end;

procedure TRpt_Ctopics3OnDetailsBookF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره سند ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + ' تا '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TRpt_Ctopics3OnDetailsBookF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از تاريخ ' + ParamByName('DocDateFrom').Value + ' تا ' +
      ParamByName('DocDateTo').Value;
end;

procedure TRpt_Ctopics3OnDetailsBookF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRpt_Ctopics3OnDetailsBookF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRpt_Ctopics3OnDetailsBookF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRpt_Ctopics3OnDetailsBookF.myInitReportFile(ReportName: TppReport;
  GeneralFileName: string);
var
  FileName: String;
begin
  with ReportName do
  begin
    FileName := GeneralFileName + '.rtm';
    Template.FileName := GetReportFileWithPath(FileName);
    try
      if FileExists(Template.FileName) then
      begin
        Template.LoadFromFile;
        ppLblRptName.Caption := 'دفتر حساب تفصیلی 3 در سطح حساب تفصيلي 1';
      end
      else
        Warn('فايل چاپي مورد نظر يافت نشد.!‏');
      PreviewFormSettings.SinglePageOnly := True;
      Print;
    finally
    end; // try
  end; // with
end;

procedure TRpt_Ctopics3OnDetailsBookF.N11Click(Sender: TObject);
begin
  inherited;

  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    case (Sender as TMenuItem).Tag of
      0:
        begin
          ppDBPipeline2.RangeBegin := rbFirstRecord;
          ppDBPipeline2.RangeEnd := reLastRecord;
        end;
      1:
        begin
          ppDBPipeline2.RangeBegin := rbCurrentRecord;
          ppDBPipeline2.RangeEnd := reCurrentRecord;
        end;
    end;

    InitReportFile(ppReport1, 'Rpt_CtopicsOnDetails', DBGrid1, ppDBPipeline1);
    ppLblRptName.Caption := 'دفتر حساب تفصیلی 4 در سطح حساب تفصيلي 1';
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
  end; // try

  // try
  // qry_Doc.DisableControls;
  // qry_AccCode.DisableControls;
  // myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetails');
  // finally
  // qry_Doc.EnableControls;
  // qry_AccCode.EnableControls;
  // end;//try
end;

procedure TRpt_Ctopics3OnDetailsBookF.N2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    case (Sender as TMenuItem).Tag of
      0:
        begin
          ppDBPipeline2.RangeBegin := rbFirstRecord;
          ppDBPipeline2.RangeEnd := reLastRecord;
        end;
      1:
        begin
          ppDBPipeline2.RangeBegin := rbCurrentRecord;
          ppDBPipeline2.RangeEnd := reCurrentRecord;
        end;
    end;

    InitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_AllCurrency', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
  end; // try

end;

procedure TRpt_Ctopics3OnDetailsBookF.N3Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    case (Sender as TMenuItem).Tag of
      0:
        begin
          ppDBPipeline2.RangeBegin := rbFirstRecord;
          ppDBPipeline2.RangeEnd := reLastRecord;
        end;
      1:
        begin
          ppDBPipeline2.RangeBegin := rbCurrentRecord;
          ppDBPipeline2.RangeEnd := reCurrentRecord;
        end;
    end;

    InitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_Currency', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
  end; // try

end;

procedure TRpt_Ctopics3OnDetailsBookF.pop2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetailsLan');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnDetailsBookF.pop_3Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_secondery_budject');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnDetailsBookF.pop_1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_budject');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnDetailsBookF.pop_4Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_secondery_aid');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnDetailsBookF.pop_2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_aid');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnDetailsBookF.pop_5Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_secondery_lan_budject');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnDetailsBookF.pop_6Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_lan_budject');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnDetailsBookF.pop_8Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_secondery_lan_aid');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnDetailsBookF.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    myInitReportFile(ppReport1, 'Rpt_CtopicsOnDetails_lan_aid');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnDetailsBookF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if DBGrid1.Columns[5].Visible then
  begin
    pop_2.Visible := True;
    pop_4.Visible := True;
    pop_7.Visible := True;
    pop_8.Visible := True;
  end
  else
  begin
    pop_2.Visible := false;
    pop_4.Visible := false;
    pop_7.Visible := false;
    pop_8.Visible := false;
  end;
  if DBGrid1.Columns[8].Visible then
  begin
    pop_1.Visible := True;
    pop_3.Visible := True;
    pop_5.Visible := True;
    pop_6.Visible := True;
  end
  else
  begin
    pop_1.Visible := false;
    pop_3.Visible := false;
    pop_5.Visible := false;
    pop_6.Visible := false;
  end;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt_Ctopics3OnDetailsBookF.setVisibleColumns;
var
  id: integer;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM ACC.FormsInfo WHERE (FormType = 3) and FormInfoID=' +
      qry_AccCode.Fieldbyname('AidInfoType').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#04#05#06', id <> 0);
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM ACC.FormsInfo WHERE (FormType = 12) and FormInfoID=' +
      qry_AccCode.Fieldbyname('KindInsertBudgetCode').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#07#08', id <> 0);
  end; // with
end;

procedure TRpt_Ctopics3OnDetailsBookF.actVjPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRpt_Ctopics3OnDetailsBookF.ppDBCalcnum2alphabetGetText
  (Sender: TObject; var Text: string);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end
end;

end.
