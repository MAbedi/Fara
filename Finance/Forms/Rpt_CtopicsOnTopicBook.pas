unit Rpt_CtopicsOnTopicBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus,
  ppBands, ppClass, ppModule, raCodMod, ppCtrls, ppReport,
  ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppDB, ppComm,
  ppRelatv, ppDBPipe, SumDBGrid, ppTypes, ppParameter, Math, ppDesignLayer,
  System.ImageList, System.Actions,AccFunctions,Filter_ADO_Const,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TRpt_CtopicsOnTopicBookF = class(Ttemplate2MDIF)
    qry_Doc: TADOQuery;
    qry_Companies: TADOQuery;
    qry_AccCode: TADOQuery;
    src_Companies: TDataSource;
    qry_CompaniesCompanyCode: TIntegerField;
    qry_CompaniesCompanyName: TStringField;
    src_Doc: TDataSource;
    src_AccCode: TDataSource;
    actFilter: TAction;
    qry_DocID: TAutoIncField;
    qry_DocCompanyCode: TIntegerField;
    qry_DocTopicCode: TLargeintField;
    qry_DocSecondaryDocNo: TIntegerField;
    qry_DocPrimaryDocNo: TIntegerField;
    qry_DocDocDate: TStringField;
    qry_DocAidDocdate: TStringField;
    qry_DocAidAmount: TFloatField;
    qry_DocDebt: TFMTBCDField;
    qry_DocCredit: TFMTBCDField;
    PnlCompany: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit2: TDBEdit;
    DBNavigator2: TDBNavigator;
    Panel1: TPanel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtn8: TBitBtn;
    BitBtn3: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    qry_Docserial: TIntegerField;
    qry_DocRunningBalance: TBCDField;
    qry_DocBudgetTopicID: TIntegerField;
    qry_DocProjectID: TIntegerField;
    ActShowForm: TAction;
    actPrint: TAction;
    actSort: TAction;
    actSendExcel: TAction;
    PopForm: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    F71: TMenuItem;
    N6: TMenuItem;
    Excel1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N7: TMenuItem;
    N5: TMenuItem;
    qry_CompaniesCompanyName_L2: TStringField;
    qry_DocComment_l1: TStringField;
    qry_AccCodeAidInfoType: TWordField;
    qry_AccCodeCompanyCode: TIntegerField;
    qry_AccCodeTopicCode: TLargeintField;
    qry_AccCodeCTopicCode: TIntegerField;
    qry_AccCodeaccCode: TStringField;
    qry_AccCodeAccName_L1: TStringField;
    qry_AccCodeAccName_L2: TStringField;
    DBNavigator1: TDBNavigator;
    qry_DocBedBes: TStringField;
    qry_DocCTopicCode: TIntegerField;
    qry_Docbed: TBCDField;
    qry_Docbes: TBCDField;
    qry_DocAmount: TFloatField;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    pop4Print: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    pop_1: TMenuItem;
    Pop_2: TMenuItem;
    pop_3: TMenuItem;
    Pop_4: TMenuItem;
    pop_5: TMenuItem;
    pop_6: TMenuItem;
    pop_7: TMenuItem;
    pop_8: TMenuItem;
    BitBtn9: TBitBtn;
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
    ppLabel3: TppLabel;
    ppLblSeconNo_DocNo: TppLabel;
    ppLblDate: TppLabel;
    ppLine8: TppLine;
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
    qry_AccCodeKindInsertBudgetCode: TIntegerField;
    N10: TMenuItem;
    actVjPrint: TAction;
    actOther: TAction;
    qry_DocYearId: TIntegerField;
    qry_DocSortID: TIntegerField;
    qry_Doc_row: TBCDField;
    qry_DocAidDocNo: TFMTBCDField;
    qry_DocCurrencyType: TIntegerField;
    qry_DocCurrenciesName: TStringField;
    qry_DocCurrencyDebit: TFMTBCDField;
    qry_DocCurrencyCredit: TFMTBCDField;
    qry_DocRunningCurrencyBalance: TFMTBCDField;
    N8: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_CompaniesAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure ActShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure N9Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblSeconNo_DocNoGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure Pop_2Click(Sender: TObject);
    procedure pop_3Click(Sender: TObject);
    procedure Pop_4Click(Sender: TObject);
    procedure pop_5Click(Sender: TObject);
    procedure pop_6Click(Sender: TObject);
    procedure pop_7Click(Sender: TObject);
    procedure pop_8Click(Sender: TObject);
    procedure pop_1Click(Sender: TObject);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure actVjPrintExecute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure qry_AccCodeBeforeOpen(DataSet: TDataSet);
    procedure qry_DocAfterOpen(DataSet: TDataSet);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
    showFilter: boolean;
    param1, param2: Integer;
//    procedure Updateremain;
    procedure UpdateFilter;
    procedure InitForm;
    procedure setVisibleColumns;
  public
    { Public declarations }
  end;

var
  Rpt_CtopicsOnTopicBookF: TRpt_CtopicsOnTopicBookF;
  cloned: TADOQuery;

implementation

uses Dm, GlobalPro, FilterClass_ADO, filter_ADO,
  Document, search2, sort2, searchCode_L1_L2,
  DBGrid2Print, Resource, FormFunctions, FaraConsts;
{$R *.dfm}

procedure TRpt_CtopicsOnTopicBookF.FormCreate(Sender: TObject);
begin
  inherited;
  cloned := TADOQuery.Create(Self);
  showFilter := var_glb_Boolean;
  if opta.AccBookSortType = 0 then
    qry_Doc.SQL.Add
      ('ORDER BY DocDate, SortID, SecondaryDocNo, PrimaryDocNo, bedbes, ID')
  else
    qry_Doc.SQL.Add
      ('ORDER BY DocDate, SortID, SecondaryDocNo, PrimaryDocNo, bedbes, ID');
  InitForm;
end;

procedure TRpt_CtopicsOnTopicBookF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
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
      AddItem(DMF.adcAccounting, 'CTopicCode', 'كد و نام حساب تفصیلی 2',
        'كد حساب', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode,CTopicName_l1 FROM acc.CTopicsForUse ',
        'SELECT Min(CTopicCode),  Max(CTopicCode)  FROM acc.Documents');
      AddItem(DMF.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_l1 FROM acc.Companies ',
          'SELECT Min(CompanyCode)  , Max(CompanyCode)  FROM acc.Companies');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TRpt_CtopicsOnTopicBookF.FormShow(Sender: TObject);
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

procedure TRpt_CtopicsOnTopicBookF.qry_AccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  setVisibleColumns;
  with qry_Doc do
  begin
    Active := false;
    // Parameters.ParamByName('CompanyCode').Value:=  qry_AccCode.fieldByName('CompanyCode').AsInteger  ;
    Parameters.ParamByName('AccCode').Value :=
      qry_AccCode.Fieldbyname('TopicCode').AsLargeInt;
    Parameters.ParamByName('CTopicCode').Value :=
      qry_AccCode.Fieldbyname('CTopicCode').AsInteger;
    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearId').Value := APPBank.Year;
    Active := True;
  end; // with
//  Updateremain;

end;

procedure TRpt_CtopicsOnTopicBookF.qry_AccCodeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qry_AccCode.Parameters.ParamByName('UserAdmin').Value :=
    ifthen(User.PowerUser, 1, 0);
  qry_AccCode.Parameters.ParamByName('UserID').Value := User.id;

end;

procedure TRpt_CtopicsOnTopicBookF.qry_CompaniesAfterScroll(DataSet: TDataSet);
var
  CompanyFrom, companyTo: Integer;
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

procedure TRpt_CtopicsOnTopicBookF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1, MyParams,qry_Doc)
end;

procedure TRpt_CtopicsOnTopicBookF.FormDestroy(Sender: TObject);
begin
  inherited;

  cloned.Free;
end;

procedure TRpt_CtopicsOnTopicBookF.InitForm;
begin
  PnlCompany.Visible := gv_MultiCompany and opta.ActivePartCompany;
end;

procedure TRpt_CtopicsOnTopicBookF.UpdateFilter;
begin
  with qry_AccCode do
  begin
    Active := false;
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
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
    // Parameters.ParamByName('Status1').Value :=
    // GetcFrom(myParams.ParamValues['checked'], ftString);;
    // Parameters.ParamByName('Status2').Value := param2;
    Active := True;
  end; // with
  with qry_Doc do
  begin
    Active := false;

    SetArzParameters(qry_Doc,myParams);

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
      GetcFrom(myParams.ParamValues['DocTypeCode'], ftString);;
    Parameters.ParamByName('AccCode').Value :=
      qry_AccCode.Fieldbyname('TopicCode').AsLargeInt;
    Parameters.ParamByName('CTopicCode').Value :=
      qry_AccCode.Fieldbyname('CTopicCode').AsInteger;
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
    SetCompanyFilterinLogin(Parameters);

    end;
    Active := True;
  end; // with
end;

//procedure TRpt_CtopicsOnTopicBookF.Updateremain;
//var
//  c, bes, bed: Currency;
//  amount, i: Integer;
//begin
//  with qry_Doc do
//  begin
//    try
//      First;
//      DisableControls;
//      c := 0;
//      bed := 0;
//      bes := 0;
//      amount := 0;
//      i := 0;
//      while not eof do
//      begin
//        i := i + 1;
//        amount := amount + Fieldbyname('AidAmount').AsInteger;
//        c := c + Fieldbyname('Balance').AsCurrency;
//        bed := bed + Fieldbyname('Debt').AsCurrency;
//        bes := bes + Fieldbyname('Credit').AsCurrency;
//        edit;
//        Fieldbyname('_row').AsInteger := i;
//        Fieldbyname('Amount').AsInteger := amount;
//        Fieldbyname('calcuBalance').AsCurrency := c;
//        Fieldbyname('bed').AsCurrency := bed;
//        Fieldbyname('bes').AsCurrency := bes;
//        post;
//        Next;
//      end; //
//    finally
//      First;
//      EnableControls;
//    end; // try
//  end; // with
//end;

procedure TRpt_CtopicsOnTopicBookF.ActShowFormExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_Doc.Fieldbyname('serial').AsVariant,
    qry_Doc.Fieldbyname('YearId').AsInteger, qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_Doc.Fieldbyname('id').AsInteger, []);
end;

procedure TRpt_CtopicsOnTopicBookF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ActShowForm.Execute
end;

procedure TRpt_CtopicsOnTopicBookF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TRpt_CtopicsOnTopicBookF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TRpt_CtopicsOnTopicBookF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRpt_CtopicsOnTopicBookF.BitBtn1Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM acc.Companies  '
    + ' where CompanyCode between ' +
    GetcFrom(myParams.ParamValues['CompanyCode'], ftString) + ' and ' +
    GetcTo(myParams.ParamValues['CompanyCode'], ftString);
  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'شركتها', Txt,
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    qry_Companies.Locate('CompanyCode', Results[0], []);
  end; // if
end;

procedure TRpt_CtopicsOnTopicBookF.BitBtn2Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'select * from (SELECT Ltrim(Rtrim(Str(acc.Documents.CTopicCode )))+ '' - '' +Rtrim(ltrim(Str(acc.Documents.TopicCode))) AS AccCode,'
    + '  acc.Categories.MoeenName_L1+ '' - ''+acc.CenterTopics.CTopicName_L1 as AccName_L1'
    + ', acc.Categories.MoeenName_L2+ '' - ''+acc.CenterTopics.CTopicName_L2 as AccName_L2'
    + ' FROM   acc.Documents INNER JOIN ' +
    ' acc.DocGroups ON acc.Documents.Serial = acc.DocGroups.Serial INNER JOIN '
    + ' acc.CenterTopics ON acc.Documents.CTopicCode = acc.CenterTopics.CTopicCode INNER JOIN '
    + ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode ' +
  // ' WHERE (acc.DocGroups.SecondaryDocNo <= '+GetcTo(myParams.ParamValues['SecondaryDocNo'],ftString)+' )'+
  // ' and (acc.DocGroups.PrimaryDocNo <='+GetcTo(myParams.ParamValues['PrimaryDocNo'],ftString)+')  '+
  // ' and (acc.DocGroups.DocDate <='+QuotedStr(GetcTo(myParams.ParamValues['DocDate'],ftString))+' )  '+
  // ' and (acc.Documents.TopicCode  BETWEEN '+GetcFrom(myParams.ParamValues['TopicCode'],ftString)+'  AND '+GetcTo(myParams.ParamValues['TopicCode'],ftString)+' ) '+
    ' where (acc.DocGroups.CompanyCode =' + qry_CompaniesCompanyCode.AsString
    + '  ) ' +
  // and ( acc.DocGroups.Status<>'+IntToStr(param1)+')  AND (acc.DocGroups.Status<>'+IntToStr(param2)+')'+
  // ' and (acc.Documents.CTopicCode BETWEEN '+GetcFrom(myParams.ParamValues['CTopicCode'],ftString)+' AND '+GetcTo(myParams.ParamValues['CTopicCode'],ftString)+ ') '+
    ' GROUP BY acc.Documents.CTopicCode, acc.CenterTopics.CTopicName_L1, acc.CenterTopics.CTopicName_L2,'
    + ' acc.Documents.TopicCode,acc.Categories.MoeenName_L1,acc.Categories.MoeenName_L2)func ';

  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'حسابها', Txt,
    ['کد', 'عنوان معین ', 'caption'], Results, [50, 200, 200], alLeft);
  if s then
  begin
    qry_AccCode.Locate('AccCode', Results[0], []);
  end; // if
end;

procedure TRpt_CtopicsOnTopicBookF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.Fieldbyname('SecondaryDocNo'));
end;

procedure TRpt_CtopicsOnTopicBookF.N11Click(Sender: TObject);
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

    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_Currency', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
  end; // try
end;

procedure TRpt_CtopicsOnTopicBookF.N9Click(Sender: TObject);
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

    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_AllCurrency', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
  end; // try
end;

procedure TRpt_CtopicsOnTopicBookF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if DBGrid1.Columns[4].Visible then
  begin
    Pop_2.Visible := True;
    Pop_4.Visible := True;
    pop_6.Visible := True;
    pop_8.Visible := True;
  end
  else
  begin
    Pop_2.Visible := false;
    Pop_4.Visible := false;
    pop_6.Visible := false;
    pop_8.Visible := false;
  end;
  if DBGrid1.Columns[7].Visible then
  begin
    pop_1.Visible := True;
    pop_3.Visible := True;
    pop_5.Visible := True;
    pop_7.Visible := True;
  end
  else
  begin
    pop_1.Visible := false;
    pop_3.Visible := false;
    pop_5.Visible := false;
    pop_7.Visible := false;
  end;

  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt_CtopicsOnTopicBookF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRpt_CtopicsOnTopicBookF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRpt_CtopicsOnTopicBookF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRpt_CtopicsOnTopicBookF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از شماره موقت ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + ' تا ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);
end;

procedure TRpt_CtopicsOnTopicBookF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از تاريخ ' + ParamByName('DocDateFrom').Value + ' تا ' +
      ParamByName('DocDateTo').Value;
end;

procedure TRpt_CtopicsOnTopicBookF.MenuItem1Click(Sender: TObject);
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

    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
  end; // try

end;

procedure TRpt_CtopicsOnTopicBookF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_CTopicOnTopicland', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_CtopicsOnTopicBookF.Pop_2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_AccCode.DisableControls;
    qry_Doc.DisableControls;

    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_Aid', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_CtopicsOnTopicBookF.pop_3Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_secondery_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_CtopicsOnTopicBookF.Pop_4Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_secondery_Aid', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_CtopicsOnTopicBookF.pop_5Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_lan_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_CtopicsOnTopicBookF.pop_6Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_lan_Aid', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_CtopicsOnTopicBookF.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_secondery_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_CtopicsOnTopicBookF.pop_8Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_secondery_lan_Aid', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_CtopicsOnTopicBookF.pop_1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_CTopicOnTopic_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_CtopicsOnTopicBookF.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // if DBGrid1.SelectedRows.Count>1 then begin
  // if (Button=mbleft) and (Shift=[ssctrl] )then
  // if DBGrid1.SelectedRows.CurrentRowSelected  then begin
  // sumDebt:=sumDebt+qry_Doc.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=sumCredit+qry_Doc.Fieldbyname('Credit').AsCurrency;
  // sumAmount:=sumAmount+qry_Doc.Fieldbyname('AidAmount').AsCurrency;
  // end
  // else begin
  // sumDebt:=sumDebt-qry_Doc.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=sumCredit-qry_Doc.Fieldbyname('Credit').AsCurrency;
  // sumAmount:=sumAmount-qry_Doc.Fieldbyname('AidAmount').AsCurrency;
  // end
  // end
  // else begin
  // sumDebt:=qry_Doc.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=qry_Doc.Fieldbyname('Credit').AsCurrency;
  // sumAmount:=qry_Doc.Fieldbyname('AidAmount').AsCurrency;
  // end;//if
  // if DBGrid1.SelectedRows.CurrentRowSelected=false  then begin
  // if DBGrid1.SelectedRows.Count>0 then
  // qry_Doc.GotoBookmark(pointer(DBGrid1.SelectedRows[DBGrid1.SelectedRows.Count-1]));
  // if DBGrid1.SelectedRows.Count=1 then begin
  // sumDebt:=qry_Doc.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=qry_Doc.Fieldbyname('Credit').AsCurrency;
  // sumAmount:=qry_Doc.Fieldbyname('AidAmount').AsCurrency;
  // end;
  // end;
  // StatusBar3.Panels[5].Text:=' تعداد سطر انتخابي='+IntToStr(DBGrid1.SelectedRows.count);
  // StatusBar3.Panels[3].Text:='مقدار = '+IfThen(DBGrid1.Columns[5].Visible,CurrToStrF(sumAmount,ffGeneral,0),'0');
  // StatusBar3.Panels[2].Text:='بد = '+CurrToStrF(sumDebt,ffCurrency,0);
  // StatusBar3.Panels[1].text:='بس = '+CurrToStrF(sumCredit,ffCurrency,0);
  // StatusBar3.Panels[0].Text:= 'مانده = '+CurrToStrF(sumDebt-sumCredit,ffCurrency,0);

end;

procedure TRpt_CtopicsOnTopicBookF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره سند ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + ' تا '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TRpt_CtopicsOnTopicBookF.setVisibleColumns;
var
  id: Integer;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 3) and FormInfoID=' +
      qry_AccCode.Fieldbyname('AidInfoType').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#04#05#06', id <> 0);
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 12) and FormInfoID=' +
      qry_AccCode.Fieldbyname('KindInsertBudgetCode').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#07#08', id <> 0);
  end; // with
end;

procedure TRpt_CtopicsOnTopicBookF.actVjPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRpt_CtopicsOnTopicBookF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRpt_CtopicsOnTopicBookF.ppDBCalcnum2alphabetGetText(Sender: TObject;
  var Text: string);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

end.
