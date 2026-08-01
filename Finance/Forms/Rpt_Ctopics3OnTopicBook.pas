unit Rpt_Ctopics3OnTopicBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus,
  ppBands, ppClass, ppModule, raCodMod, ppCtrls, ppReport, ppStrtch,
  ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppDB, ppComm, ppRelatv,
  ppDBPipe, ppTypes, SumDBGrid, ppParameter, Math, FarsiReportBuilde,
  ppDesignLayer, System.ImageList, System.Actions, AccFunctions,
  Filter_ADO_Const, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TRpt_Ctopics3OnTopicBookF = class(Ttemplate2MDIF)
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
    qry_DocRunningBalance: TFMTBCDField;
    qry_DocBudgetTopicID: TIntegerField;
    qry_DocProjectID: TIntegerField;
    ActShowForm: TAction;
    actPrint: TAction;
    actSort: TAction;
    actSendExcel: TAction;
    qry_CompaniesCompanyName_L2: TStringField;
    qry_DocComment_l1: TStringField;
    qry_AccCodeAidInfoType: TWordField;
    qry_AccCodeCompanyCode: TIntegerField;
    qry_AccCodeTopicCode: TLargeintField;
    qry_AccCodeaccCode: TStringField;
    qry_AccCodeAccName_L1: TStringField;
    qry_AccCodeAccName_L2: TStringField;
    DBNavigator1: TDBNavigator;
    qry_DocBedBes: TStringField;
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
    ppLblDate: TppLabel;
    ppLblSeconNo_DocNo: TppLabel;
    ppLabel11: TppLabel;
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
    ppLine7: TppLine;
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
    N8: TMenuItem;
    BitBtn7: TBitBtn;
    actVjPrint: TAction;
    qry_DocYearId: TIntegerField;
    qry_DocSortID: TIntegerField;
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
    qry_Doc_row: TLargeintField;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure qry_CompaniesAfterScroll(DataSet: TDataSet);
    procedure ActShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qry_DocAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure actVjPrintExecute(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure qry_DocAfterOpen(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);

  private
    { Private declarations }

    // sumDebt:currency;
    // sumCredit:currency;
    // sumAmount:currency;
    lastRow: TBookmark;
    showFilter: boolean;
    // flag:boolean;
    param1, param2: integer;
    // procedure chooseColumnDown;
//    procedure Updateremain;
    procedure UpdateFilter;
    procedure InitForm;
    // procedure myInitReportFile( ReportName: TppReport; GeneralFileName: string);
    procedure setVisibleColumns;
  public
    { Public declarations }
  end;

var
  Rpt_Ctopics3OnTopicBookF: TRpt_Ctopics3OnTopicBookF;

implementation

uses Dm, GlobalPro, FilterClass_ADO, filter_ADO,
  Document, search2, sort2, searchCode_L1_L2,
  DBGrid2Print, Resource, FormFunctions;

{$R *.dfm}

procedure TRpt_Ctopics3OnTopicBookF.FormCreate(Sender: TObject);
begin
  inherited;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
  showFilter := var_glb_Boolean;
  InitForm;
end;

procedure TRpt_Ctopics3OnTopicBookF.actFilterExecute(Sender: TObject);
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
      AddItem(DMF.adcAccounting, 'CTopicCode2', 'كد و نام حساب تفصیلی 1 4',
        'كد حساب', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode3,CTopicName3_l1 FROM acc.CTopicCode3 ',
        'SELECT Min(CTopicCode3),  Max(CTopicCode3)  FROM acc.Documents');
      AddItem(DMF.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');

      if gv_MultiCompany then
        AddItemFilter(GetFilter, TFltCompanyCode);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TRpt_Ctopics3OnTopicBookF.FormShow(Sender: TObject);
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

procedure TRpt_Ctopics3OnTopicBookF.qry_AccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  setVisibleColumns;
  with qry_Doc do
  begin
    Active := false;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_AccCode.fieldByName('CompanyCode').AsInteger;
    Parameters.ParamByName('AccCode').Value :=
      qry_AccCode.fieldByName('TopicCode').AsLargeInt;
    // مرکزی هزینه 2 تو این فرم همون 3 فقط بخاطر اینکه فرم کپی شده تغییر دادده نشده
    Parameters.ParamByName('CTopicCode2').Value :=
      qry_AccCode.fieldByName('CTopicCode3').AsInteger;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Active := True;
    // StatusBar3.Panels[5].Text:=' تعداد سطرهاي انتخابي='+IfThen(qry_Doc.RecordCount<>0,' 1',' 0');
    // StatusBar3.Panels[3].Text:='مقدار = '+IfThen(DBGrid1.Columns[6].Visible,
    // IfThen(fieldbyname('AidAmount').AsString<>'',fieldbyname('AidAmount').AsString,'0')
    // ,'0');
    // StatusBar3.Panels[2].Text:='بد = '+CurrToStrF(fieldbyname('Debt').AsCurrency,ffCurrency,0)  ;
    // StatusBar3.Panels[1].text:='بس = '+CurrToStrF(fieldbyname('credit').AsCurrency,ffCurrency,0)  ;
    // StatusBar3.Panels[0].Text:= 'مانده = '+CurrToStrF(fieldbyname('Debt').AsCurrency-fieldbyname('credit').AsCurrency,ffCurrency,0);
    lastRow := GetBookmark;
  end; // with
//  Updateremain;

end;

procedure TRpt_Ctopics3OnTopicBookF.qry_CompaniesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_Doc do
  begin
    Active := false;
    Parameters.ParamByName('CompanyCode').Value :=
      DataSet.fieldByName('CompanyCode').AsInteger;
  end; // with
  with qry_AccCode do
  begin
    Active := false;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_Companies.fieldByName('CompanyCode').AsInteger;
    Active := True;
  end;
end;

procedure TRpt_Ctopics3OnTopicBookF.InitForm;
begin
  With DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'select count(companyCode) as CountCompany from acc.Companies ';
    Active := True;
    If DMF.qry_Temp.fieldByName('CountCompany').AsInteger = 1 then
      PnlCompany.Visible := false;
  end; // with
  // mGrid1.SumCurrentRecord := opta.SumBook;
end;

procedure TRpt_Ctopics3OnTopicBookF.UpdateFilter;
// var
// ts:TStringList;
// i:Integer;
// s:string;

begin
  // s:=GetcTo(myParams.ParamValues['checked'],ftString);
  // ts:=TStringList.Create;
  // try
  // ts.Text:=StringReplace(s,',',#13,[rfReplaceAll]);
  // param1:=-1 ;
  // param2:=-1 ;
  // for i:=0 to ts.Count-1 do begin
  // if i=0 then param1:=StrToInt(ts[0])-1;
  // if i=1 then param2:=StrToInt(ts[1])-1;
  // end;//fot
  // finally
  // ts.Free;
  // end;//try
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
    // Parameters.ParamByName('AccCode').Value :=
    // qry_AccCode.Fieldbyname('TopicCode').AsLargeInt;
    // Parameters.ParamByName('CTopicCode2').Value :=
    // qry_AccCode.fieldByName('CTopicCode2').AsInteger;
  end;
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
    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('Status').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Active := True;
  end; // with
  // with
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

//procedure TRpt_Ctopics3OnTopicBookF.Updateremain;
//var
//  c, bes, bed: Currency;
//  amount, i: integer;
//begin
//  with qry_Doc do
//  begin
//    try
//      First;
//      DisableControls;
//      c := 0;
//      bed := 0;
//      i := 0;
//      bes := 0;
//      amount := 0;
//      while not eof do
//      begin
//        i := i + 1;
//        amount := amount + fieldByName('AidAmount').AsInteger;
//        c := c + fieldByName('Balance').AsCurrency;
//        bed := bed + fieldByName('Debt').AsCurrency;
//        bes := bes + fieldByName('Credit').AsCurrency;
//        edit;
//        fieldByName('_row').AsInteger := i;
//        fieldByName('Amount').AsInteger := amount;
//        fieldByName('calcuBalance').AsCurrency := c;
//        fieldByName('bed').AsCurrency := bed;
//        fieldByName('bes').AsCurrency := bes;
//        post;
//        Next;
//      end; //
//    finally
//      First;
//      EnableControls;
//    end; // try
//  end; // with
//  // StatusBar1.Panels[5].Text:='تعداد  =  '+IntToStr(qry_Doc.RecordCount);
//  // StatusBar1.Panels[3].Text:='مقدار = '+IfThen(DBGrid1.Columns[5].Visible,inttostr(amount),'0');
//  // StatusBar1.Panels[2].Text:='بد = '+CurrToStrF(bed,ffCurrency,0)  ;
//  // StatusBar1.Panels[1].Text:='بس = '+CurrToStrF(bes,ffCurrency,0)  ;
//  // StatusBar1.Panels[0].Text:= 'مانده = '+CurrToStrF(bed-bes,ffCurrency,0)  ;
//end;

procedure TRpt_Ctopics3OnTopicBookF.ActShowFormExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_Doc.fieldByName('serial').AsVariant,
    qry_Doc.fieldByName('YearId').AsInteger, qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_Doc.fieldByName('id').AsInteger, []);
end;

procedure TRpt_Ctopics3OnTopicBookF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if qry_Doc.RecordCount <> 0 then
    ActShowForm.Execute;
end;

procedure TRpt_Ctopics3OnTopicBookF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TRpt_Ctopics3OnTopicBookF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TRpt_Ctopics3OnTopicBookF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRpt_Ctopics3OnTopicBookF.BitBtn1Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM acc.Companies '
    + ' where CompanyCode between ' +
    VarToStr(qry_Companies.Parameters.ParamByName('CompanyCodeFrom').Value) +
    ' and ' + VarToStr(qry_Companies.Parameters.ParamByName
    ('CompanyCodeTo').Value);
  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'شركتها', Txt,
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    qry_Companies.Locate('CompanyCode', Results[0], []);
  end; // if
end;

procedure TRpt_Ctopics3OnTopicBookF.BitBtn2Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'select * from (SELECT Ltrim(Rtrim(Str(acc.Documents.CTopicCode3 )))+ '' - '' +Rtrim(ltrim(Str(acc.Documents.TopicCode))) AS AccCode,'
    + '  acc.Categories.MoeenName_L1+ '' - ''+acc.CTopicCode3.CTopicName3_L1 as AccName_L1'
    + ', acc.Categories.MoeenName_L2+ '' - ''+acc.CTopicCode3.CTopicName3_L2 as AccName_L2'
    + ' FROM   acc.Documents INNER JOIN ' +
    ' acc.DocGroups ON acc.Documents.Serial = acc.DocGroups.Serial INNER JOIN '
    + ' acc.CTopicCode3 ON acc.Documents.CTopicCode3 = acc.CTopicCode3.CTopicCode3 INNER JOIN '
    + ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode ' +
  // ' WHERE (acc.DocGroups.SecondaryDocNo <= '+GetcTo(myParams.ParamValues['SecondaryDocNo'],ftString)+' )'+
  // ' and (acc.DocGroups.PrimaryDocNo <='+GetcTo(myParams.ParamValues['PrimaryDocNo'],ftString)+')  '+
  // ' and (acc.DocGroups.DocDate <='+QuotedStr(GetcTo(myParams.ParamValues['DocDate'],ftString))+' )  '+
  // ' and (acc.Documents.TopicCode  BETWEEN '+GetcFrom(myParams.ParamValues['TopicCode'],ftString)+'  AND '+GetcTo(myParams.ParamValues['TopicCode'],ftString)+' ) '+
    ' where (acc.DocGroups.CompanyCode =' + qry_CompaniesCompanyCode.AsInteger.
    ToString + '  )  ' +
  // and ( acc.DocGroups.Status<>'+IntToStr(param1)+')  AND (acc.DocGroups.Status<>'+IntToStr(param2)+')'+
  // ' and (acc.Documents.CTopicCode2 BETWEEN '+GetcFrom(myParams.ParamValues['CTopicCode2'],ftString)+' AND '+GetcTo(myParams.ParamValues['CTopicCode2'],ftString)+ ') '+
    ' GROUP BY acc.Documents.CTopicCode3, acc.CTopicCode3.CTopicName3_L1, acc.CTopicCode3.CTopicName3_L2,'
    + ' acc.Documents.TopicCode,acc.Categories.MoeenName_L1,acc.Categories.MoeenName_L2)func ';

  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'حسابها', Txt,
    ['کد', 'عنوان معین ', 'caption'], Results, [50, 200, 200], alLeft);
  if s then
  begin
    qry_AccCode.Locate('AccCode', Results[0], []);
  end; // if
end;

procedure TRpt_Ctopics3OnTopicBookF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.fieldByName('SecondaryDocNo'));
end;

procedure TRpt_Ctopics3OnTopicBookF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1, myParams,qry_Doc)
end;

procedure TRpt_Ctopics3OnTopicBookF.qry_DocAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // StatusBar2.Panels[5].Text:='تعداد سطر تا جاري= '+DataSet.Fieldbyname('_row').AsString;
  // StatusBar2.Panels[3].Text:='مقدار = '+IfThen(DBGrid1.Columns[5].Visible,
  // IfThen(DataSet.fieldbyname('Amount').AsString<>'',DataSet.fieldbyname('Amount').AsString,'0'),
  // '0');
  // StatusBar2.Panels[2].Text:='بد = '+CurrToStrF(DataSet.fieldbyname('bed').AsCurrency,ffCurrency,0)  ;
  // StatusBar2.Panels[1].Text:='بس = '+CurrToStrF(DataSet.fieldbyname('bes').AsCurrency,ffCurrency,0)  ;
  // StatusBar2.Panels[0].Text:= 'مانده = '+CurrToStrF(DataSet.fieldbyname('calcuBalance').AsCurrency,ffCurrency,0)  ;

  // if flag and ((DBGrid1.SelectedRows.Count = 1) or ((DBGrid1.SelectedRows.Count =0))and (qry_Doc.RecordCount<>0)) then begin
  // StatusBar3.Panels[5].Text:=' تعداد سطر انتخابي= 1';
  // StatusBar3.Panels[3].Text:='مقدار = '+IfThen(DBGrid1.Columns[5].Visible,DataSet.fieldbyname('AidAmount').AsString,'0');
  // StatusBar3.Panels[2].Text:='بد = '+CurrToStrF(DataSet.fieldbyname('Debt').AsCurrency,ffCurrency,0)  ;
  // StatusBar3.Panels[1].text:='بس = '+CurrToStrF(DataSet.fieldbyname('credit').AsCurrency,ffCurrency,0)  ;
  // StatusBar3.Panels[0].Text:= 'مانده = '+CurrToStrF(DataSet.fieldbyname('Debt').AsCurrency-DataSet.fieldbyname('credit').AsCurrency,ffCurrency,0);
  // end;

end;

procedure TRpt_Ctopics3OnTopicBookF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
end;


// procedure TRpt_Ctopics2OnTopicBookF.chooseColumnUp;
// var
// i:integer;
// bed,bes,remain,amount:Currency;
// begin
// bed:=0;
// bes:=0;
// amount:=0;
// with qry_Doc do begin
// DBGrid1.SelectedRows.CurrentRowSelected:=true;
// for i:=0 to DBGrid1.SelectedRows.Count-1 do begin
// GotoBookmark(pointer(DBGrid1.SelectedRows[i]));
// bed:=bed +fieldbyname('Debt').AsCurrency;
// bes:=bes +fieldbyname('Credit').AsCurrency;
// remain:=(bed-bes);
// amount:=amount+fieldbyname('AidAmount').AsCurrency;
// end;//for
// StatusBar3.Panels[5].Text:=' تعداد سطرهاي انتخابي = '+IntToStr(DBGrid1.SelectedRows.Count);
// StatusBar3.Panels[3].Text:='مقدار = '+IfThen(DBGrid1.Columns[6].Visible ,CurrToStrF(Amount,ffGeneral,0),'0');
// StatusBar3.Panels[2].Text:='بد = '+CurrToStrF(bed,ffCurrency,0)  ;
// StatusBar3.Panels[1].text:='بس = '+CurrToStrF(bes,ffCurrency,0)  ;
// StatusBar3.Panels[0].Text:= 'مانده = '+CurrToStrF(remain,ffCurrency,0);
// end ;
// end;


// procedure TRpt_Ctopics2OnTopicBookF.DBGrid1MouseUp(Sender: TObject;
// Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
// begin
// inherited;
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
//
// end;

procedure TRpt_Ctopics3OnTopicBookF.actPrintExecute(Sender: TObject);
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

// procedure TRpt_Ctopics2OnTopicBookF.myInitReportFile( ReportName: TppReport; GeneralFileName: string);
// var
// FileName:String;
// begin
// with ReportName do begin
// FileName:=GeneralFileName+'.rtm';
// Template.FileName:=GetReportFileWithPath(FileName);
// try
// if FileExists(Template.FileName) then begin
// Template.LoadFromFile;
// ppLblRptName.Caption:='دفتر حساب تفصیلی 1 2 در سطح حساب';
// end
// else Warn('فايل چاپي مورد نظر يافت نشد.!‏');
// Print ;
// finally
// end;//try
// end;//with
// end;

procedure TRpt_Ctopics3OnTopicBookF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRpt_Ctopics3OnTopicBookF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRpt_Ctopics3OnTopicBookF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRpt_Ctopics3OnTopicBookF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از شماره موقت ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + ' تا ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);
end;

procedure TRpt_Ctopics3OnTopicBookF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از تاريخ ' + ParamByName('DocDateFrom').Value + ' تا ' +
      ParamByName('DocDateTo').Value;
end;

procedure TRpt_Ctopics3OnTopicBookF.MenuItem1Click(Sender: TObject);
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
    ppLblRptName.Caption := 'دفتر حساب تفصیلی 1 4 در سطح حساب';
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnTopicBookF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    // myInitReportFile(ppReport1,'Rpt_CTopicOnTopicland');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnTopicBookF.N2Click(Sender: TObject);
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

procedure TRpt_Ctopics3OnTopicBookF.N3Click(Sender: TObject);
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

procedure TRpt_Ctopics3OnTopicBookF.Pop_2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_AccCode.DisableControls;
    qry_Doc.DisableControls;
    // myInitReportFile(ppReport1,'Rpt_CTopicOnTopic_Aid');
  finally
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_Ctopics3OnTopicBookF.pop_3Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    // myInitReportFile(ppReport1,'Rpt_CTopicOnTopic_secondery_budject');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnTopicBookF.Pop_4Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    // myInitReportFile(ppReport1,'Rpt_CTopicOnTopic_secondery_Aid');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnTopicBookF.pop_5Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    // myInitReportFile(ppReport1,'Rpt_CTopicOnTopic_lan_budject');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnTopicBookF.pop_6Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    // myInitReportFile(ppReport1,'Rpt_CTopicOnTopic_lan_Aid');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_Ctopics3OnTopicBookF.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    // myInitReportFile(ppReport1,'Rpt_CTopicOnTopic_secondery_budject');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_Ctopics3OnTopicBookF.pop_8Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    // myInitReportFile(ppReport1,'Rpt_CTopicOnTopic_secondery_lan_Aid');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; //
end;

procedure TRpt_Ctopics3OnTopicBookF.pop_1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    // myInitReportFile(ppReport1,'Rpt_CTopicOnTopic_budject');
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_Ctopics3OnTopicBookF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره سند ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + ' تا '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TRpt_Ctopics3OnTopicBookF.setVisibleColumns;
var
  id: integer;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 3) and FormInfoID=' +
      qry_AccCode.fieldByName('AidInfoType').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#04#05#06', id <> 0);
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 12) and FormInfoID=' +
      qry_AccCode.fieldByName('KindInsertBudgetCode').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#07#08', id <> 0);
  end; // with
end;

procedure TRpt_Ctopics3OnTopicBookF.actVjPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRpt_Ctopics3OnTopicBookF.ppDBCalcnum2alphabetGetText(Sender: TObject;
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
