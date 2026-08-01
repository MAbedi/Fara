unit Rpt_AccDetailOnTopicBook_Arzi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppDB,
  ppDBPipe, ppBands, ppClass, ppModule, raCodMod, ppCtrls,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppTypes, SumDBGrid, ppParameter, FarsiReportBuilde, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  THackGrid = class(TDBGrid);

  TRpt_AccDetailOnTopicBook_ArziF = class(Ttemplate2MDIF)
    qry_Doc: TADOQuery;
    qry_Companies: TADOQuery;
    qry_AccCode: TADOQuery;
    src_Companies: TDataSource;
    qry_CompaniesCompanyName: TStringField;
    src_Doc: TDataSource;
    src_AccCode: TDataSource;
    actFilter: TAction;
    qry_DocID: TAutoIncField;
    qry_DocCompanyCode: TIntegerField;
    qry_DocTopicCode: TLargeintField;
    qry_DocDetailCode: TIntegerField;
    qry_DocSecondaryDocNo: TIntegerField;
    qry_DocPrimaryDocNo: TIntegerField;
    qry_DocDocDate: TStringField;
    qry_DocComment: TStringField;
    qry_DocAidDocdate: TStringField;
    qry_DocAidAmount: TFloatField;
    qry_DocDebt: TFMTBCDField;
    qry_DocCredit: TFMTBCDField;
    qry_DocBalance: TBCDField;
    BitBtn5: TBitBtn;
    btnactSearch: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn8: TBitBtn;
    qry_AccCodeCompanyCode: TIntegerField;
    qry_AccCodeTopicCode: TLargeintField;
    qry_AccCodeDetailCode: TIntegerField;
    qry_AccCodeaccCode: TStringField;
    qry_AccCodeAccName: TStringField;
    actShowForm: TAction;
    qry_Docserial: TIntegerField;
    qry_DocBudgetTopicID: TIntegerField;
    qry_DocProjectID: TIntegerField;
    qry_DoccalcuBalance: TBCDField;
    qry_AccCodeAidInfoType: TWordField;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    qry_CompaniesCompanyName_L2: TStringField;
    ppDBPipeline1: TppDBPipeline;
    qry_Docbed: TBCDField;
    qry_Docbes: TBCDField;
    qry_DocBedBes: TStringField;
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit5: TDBEdit;
    BitBtn3: TBitBtn;
    grpCompany: TGroupBox;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    edtCompanyCode: TDBEdit;
    DBNavigator2: TDBNavigator;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    qry_DocStatus: TIntegerField;
    pop4Print: TPopupMenu;
    pop_1: TMenuItem;
    Pop_2: TMenuItem;
    pop_3: TMenuItem;
    Pop_4: TMenuItem;
    pop_5: TMenuItem;
    pop_6: TMenuItem;
    pop_7: TMenuItem;
    pop_8: TMenuItem;
    qry_AccCodeAccName_L2: TStringField;
    N1: TMenuItem;
    N2: TMenuItem;
    qry_DocAmount: TFloatField;
    qry_AccCodeKindInsertBudgetCode: TIntegerField;
    N3: TMenuItem;
    actOther: TAction;
    BitBtn9: TBitBtn;
    actFilterForm: TAction;
    qry_DocYearId: TIntegerField;
    qry_DocSortID: TIntegerField;
    actRelated: TAction;
    actdisRelated: TAction;
    qry_DocAnalizeType: TIntegerField;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    actAnalyz: TAction;
    qry_DocRelatedID: TIntegerField;
    actShowAnalyze: TAction;
    qry_DocItemID: TIntegerField;
    edtNationalID: TDBEdit;
    qry_AccCodeNationalID: TStringField;
    pnlRelated: TPanel;
    SpeedButton1: TSpeedButton;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    RadioGroup1: TRadioGroup;
    ppParameterList1: TppParameterList;
    qry_CompaniesCompanyCode: TIntegerField;
    pnlRatesCalculation: TPanel;
    edtRatesCalculation: TLabeledEdit;
    qry_DocRate: TBCDField;
    qry_DocCalDate: TStringField;
    edtCalDate: TLabeledEdit;
    qry_DocComment_L2: TStringField;
    ADOQuery1: TADOQuery;
    IntegerField1: TIntegerField;
    LargeintField1: TLargeintField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    WordField1: TWordField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    BitBtn6: TBitBtn;
    qry_DocSort: TBCDField;
    qry_Doc_row: TFMTBCDField;
    btn1: TSpeedButton;
    pmPopRelation: TPopupMenu;
    mnu1: TMenuItem;
    mnuN7: TMenuItem;
    qry_DocAidDocNo: TFMTBCDField;
    N7: TMenuItem;
    chkFilter: TCheckBox;
    qry_AccCodeMoeenName_L1: TStringField;
    qry_AccCodeDetailName_L1: TStringField;
    phdrbnd1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblPrintDate: TppLabel;
    ppLabel1: TppLabel;
    ppLblRptName: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
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
    ppLabel3: TppLabel;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    pdtlbnd1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    phdrbnd2: TppHeaderBand;
    pdtlbnd2: TppDetailBand;
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
    ppLine10: TppLine;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppDBText3: TppDBText;
    pftrbnd1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLine13: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine11: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabelAccName: TppLabel;
    raCodeModule1: TraCodeModule;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    qry_AccCode_CompanyName: TStringField;
    qry_DoccalcuRate: TBCDField;
    qry_DocArzDebt: TFloatField;
    qry_DocArzCredit: TFloatField;
    qry_DocArzBalance: TFloatField;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure qry_CompaniesAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qry_AccCodeaccCodeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure pop_7Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblSeconNo_DocNoGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure _actSearchExecute(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure qry_DocBeforeOpen(DataSet: TDataSet);
    procedure actAnalyzExecute(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actShowAnalyzeExecute(Sender: TObject);
    procedure qry_DocAnalizeTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actRelatedExecute(Sender: TObject);
    procedure actdisRelatedExecute(Sender: TObject);
    procedure qry_DocAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qry_DocAfterOpen(DataSet: TDataSet);
    procedure MenuItem3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure btn1Click(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure mnuN7Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure chkFilterClick(Sender: TObject);
    procedure qry_DocFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure qry_AccCodeAfterOpen(DataSet: TDataSet);
    procedure DBGrid1SelectedRowsItemChanged(Sender: TCustomDBGridEh;
      Item: TArray<System.Byte>; Action: TListNotification);

  private
    { Private declarations }
    // param1, param2: integer;
    // sumDebt:currency;
    // sumCredit:currency;
    // sumAmount:currency;
    showFilter: Boolean;
    cloned: TADOQuery;
    intRecNo: integer;
    // flag:boolean;
    procedure Updateremain;
    procedure UpdateFilter;
    procedure CalRates;
    procedure setVisibleColumns;
    procedure Updateremain2;
  public
    { Public declarations }
  end;

var
  Rpt_AccDetailOnTopicBook_ArziF: TRpt_AccDetailOnTopicBook_ArziF;

implementation

uses Dm, GlobalPro, FilterClass_ADO, searchCode_ADO, filter_ADO,
  Document, search2, sort2, searchCode_L1_L2,
  ScanImage, DocRelated2, Math, Resource, DateUtils, shamsiDate, DBGrid2Print,
  FaraConsts, CategoresDetailNote, FormFunctions;
{$R *.dfm}

procedure TRpt_AccDetailOnTopicBook_ArziF.UpdateFilter;
// var
// ts: TStringList;
// i: integer;
// s: string;
begin
  // s := GetcTo(myParams.ParamValues['checked'], ftString);
  // ts := TStringList.Create;
  // try
  // ts.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
  // param1 := -1;
  // param2 := -1;
  // for i := 0 to ts.Count - 1 do
  // begin
  // if i = 0 then
  // param1 := StrToInt(ts[0]) - 1;
  // if i = 1 then
  // param2 := StrToInt(ts[1]) - 1;
  // end; // fot
  // finally
  // ts.Free;
  // end; // try
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
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    // Parameters.ParamByName('Status1').Value :=
    // GetcFrom(myParams.ParamValues['checked'], ftString);
    // Parameters.ParamByName('Status2').Value := 0;
  end; // with
  with qry_Doc do
  begin
    Active := false;
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
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('Status2').Value := -1;
    Parameters.ParamByName('DocTypeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DocTypeCode'], ftString);
    Parameters.ParamByName('DocTypeCodeTo').Value := -1;
    // GetcTo(myParams.ParamValues['DocTypeCode'], ftInteger);

    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearId').Value := APPBank.Year;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;
  end; // with
  with qry_Companies do
  begin
    Close;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
      // Parameters.ParamByName('Detail_CodeFrom').Value:=GetcFrom(myParams.ParamValues['DetailCode'],ftInteger);
      // Parameters.ParamByName('Detail_CodeTo').Value:=GetcTo(myParams.ParamValues['DetailCode'],ftInteger);
    end; // if
    SetCompanyFilterinLogin(Parameters);
    Open;
  end; // with
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.FormCreate(Sender: TObject);
begin
  inherited;
  // flag:=true;
  cloned := TADOQuery.Create(Self);
  showFilter := var_glb_Boolean;
  grpCompany.Visible := (gv_MultiCompany and opta.ActivePartCompany);
  pnlRatesCalculation.Visible := false;
  edtRatesCalculation.Text := IntToStr(opta.RatesCalculation);
  if ActiveSortTitle then
    DBGrid1.OptionsEh := DBGrid1.OptionsEh + [dghAutoSortMarking]
  else
    DBGrid1.OptionsEh := DBGrid1.OptionsEh - [dghAutoSortMarking];

  if ActiveSortTitle then
    DBGrid1.Tag := 0;
  DBGrid1.SetFooter4Sum(['calcuBalance']);
  if not pnlRatesCalculation.Visible then
    // SumGrid1.FieldsName := 'AidAmount;Debt;Credit;Balance;';

  // SumGrid1.SumCurrentRecord := opta.SumBook;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actFilterExecute(Sender: TObject);
var
  aCode, aDetail: string;
  tmpDefault: TcDefaultValues;
begin
  inherited;
  if (Sender as TAction).Tag = 1 then
  begin
    tmpDefault := dvDefaults;
    aCode := qry_AccCodeTopicCode.AsString;
    aDetail := qry_AccCodeDetailCode.AsString;
  end
  else
    tmpDefault := dvMinMax;

  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'checked', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);

      AddItem(DMF.adcAccounting, 'DocTypeCode', 'انواع سند حسابداري', '',
        ftUnknown, dvDefaults, 'true', '', ciCheck, strLookUpDocType);

      // AddItem(DMF.adcAccounting, 'DocTypeCode', 'انواع سند حسابداري', 'نوع سند',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes ',
      // 'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM acc.DocTypes');

      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, tmpDefault, '0000/00/00', '9999/99/99', ciSimple, '',
        Format(strMaxMinDocDate, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'DetailCode', 'نام حساب تفصيلي ', 'كد تفصيلي',
        ftInteger, tmpDefault, aDetail, aDetail, ciLookup,
        'SELECT acc.Details.DetailCode, acc.Details.DetailName_L1 FROM acc.Details INNER JOIN'
        + ' acc.DetailRange ON acc.Details.DetailCode = acc.DetailRange.DetailCode'
        + ' WHERE (acc.Details.DetailCode<>0)' +
        ' GROUP BY acc.Details.DetailCode, acc.Details.DetailName_L1',
        'SELECT Min(DetailCode),  Max(DetailCode)  FROM acc.Documents');
      AddItem(DMF.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftInteger, tmpDefault, aCode, aCode, ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT 0,999999999');
      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM util.maliYear');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.FormShow(Sender: TObject);
begin
  inherited;
  if showFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DocDate') = nil then
      Close;
  end;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.qry_AccCodeAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  if DataSet.RecordCount = 0 then
    qry_Doc.Close;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.qry_AccCodeAfterScroll
  (DataSet: TDataSet);
var
  tmpfilter: String;
begin
  inherited;
  setVisibleColumns;

  with qry_Doc do
  begin
    Active := false;
    if Filtered then
      tmpfilter := Filter;
    Parameters.ParamByName('TopicCode').Value :=
      DataSet.Fieldbyname('TopicCode').AsLargeInt;
    Parameters.ParamByName('DetailCode').Value :=
      DataSet.Fieldbyname('DetailCode').AsInteger;
    Active := True;
    If tmpfilter <> EmptyStr then
    begin
      Filter := tmpfilter;
      Filtered := True;
    end;
    edtNationalID.Visible := not qry_AccCodeNationalID.IsNull;

  end; // with

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.qry_CompaniesAfterScroll
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
    Close;
    Parameters.ParamByName('CompanyCodeFrom').Value := CompanyFrom;
    Parameters.ParamByName('CompanyCodeTO').Value := companyTo;
    SetCompanyFilterinLogin(Parameters);
    Open;
  end;

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.FormDestroy(Sender: TObject);
begin
  inherited;
  cloned.Free;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.BitBtn1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_L1,CompanyName_L2 FROM acc.Companies '
    + ' where CompanyCode between ' +
    VarToStr(qry_Companies.Parameters.ParamByName('CompanyCodeTo').Value) +
    ' and ' + VarToStr(qry_Companies.Parameters.ParamByName
    ('CompanyCodeTo').Value);
  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'شركتها', Txt,
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    qry_Companies.Locate('CompanyCode', Results[0], []);
  end; // if
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.BitBtn3Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
  Sqltxt: String;
begin
  inherited;
  Sqltxt := 'SELECT acccode,AccName_L1 FROM (SELECT LTRIM(RTRIM(STR(acc.Documents.DetailCode))) + '' - '' +RTRIM(LTRIM(STR(acc.Documents.TopicCode))) AS acccode ,'
    + ' acc.Categories.MoeenName_L1+ '' - '' +acc.Details.DetailName_L1  AS AccName_L1'
    + ' ,acc.Categories.MoeenName_L2+ '' - '' +acc.Details.DetailName_L2  AS AccName_L2  '
    + ' FROM Acc.Documents INNER JOIN ' +
    ' Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroups.Serial AND Acc.Documents.YearID = Acc.DocGroups.YearID AND '
    + ' Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCode INNER JOIN ' +
    ' Acc.Details ON Acc.Documents.DetailCode = Acc.Details.DetailCode  INNER JOIN '
    + ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode ' +
  // ' WHERE (acc.DocGroups.SecondaryDocNo <= '+GetcTo(myParams.ParamValues['SecondaryDocNo'],ftString)+' ) AND '+
  // ' (acc.DocGroups.PrimaryDocNo <='+GetcTo(myParams.ParamValues['PrimaryDocNo'],ftString)+') AND (acc.DocGroups.DocDate <='+QuotedStr(GetcTo(myParams.ParamValues['DocDate'],ftString))+' ) and'+
  // ' (acc.Documents.TopicCode  BETWEEN '+GetcFrom(myParams.ParamValues['TopicCode'],ftString)+'  AND '+GetcTo(myParams.ParamValues['TopicCode'],ftString)+' ) '+
    ' where (acc.DocGroups.CompanyCode =' +
    IntToStr(qry_CompaniesCompanyCode.AsInteger) + ') ' +
  // 'and ( acc.DocGroups.Status<>'+IntToStr(param1)+')  AND (acc.DocGroups.Status<>'+IntToStr(param2)+')'+
    ' group by  acc.DocGroups.CompanyCode,acc.Documents.TopicCode, acc.Documents.DetailCode,'
    + ' acc.Categories.MoeenName_L1, acc.Details.DetailName_L1,acc.Categories.AidInfoType , acc.Categories.MoeenName_L2, acc.Details.DetailName_L2'
    + '  )func ';
  s := searchCode_ADOF.SearchCode2(DMF.adcAccounting, 'حسابها', Sqltxt,
    ['کد', 'عنوان معین '], Results, [60, 200], alLeft);
  if s then
    qry_AccCode.Locate('accCode', Results[0], []);

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.btn1Click(Sender: TObject);
begin
  inherited;
  pmPopRelation.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.Button1Click(Sender: TObject);
begin
  inherited;
  Updateremain;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_Doc.Fieldbyname('serial').AsVariant,
    qry_Doc.Fieldbyname('YearId').AsInteger, qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_Doc.Fieldbyname('id').AsInteger, []);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if qry_Doc.RecordCount <> 0 then
    actShowForm.Execute;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actPrintExecute(Sender: TObject);
var
  inx: integer;
begin
  inherited;
  inx := ColumnIndexByFieldName(DBGrid1, 'AidDocNo');
  if DBGrid1.Columns[inx].Visible then
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
  inx := ColumnIndexByFieldName(DBGrid1, 'BudgetTopicID');
  if DBGrid1.Columns[inx].Visible then
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

procedure TRpt_AccDetailOnTopicBook_ArziF.qry_AccCodeaccCodeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Trim(Sender.AsString)
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.Fieldbyname('SecondaryDocNo'));
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.DBGrid1SelectedRowsItemChanged(
  Sender: TCustomDBGridEh; Item: TArray<System.Byte>;
  Action: TListNotification);
begin
  inherited;
  if DBGrid1.FindFieldColumn('Debt').Footers[1].Value <> '' then
    DBGrid1.Columns[0].Footers[1].Value := 'اختلاف=' +
      CurrToStrF(StrToCurr(RemoveComma(VarToStr(DBGrid1.FindFieldColumn('Debt')
      .Footers[1].Value))) -
      StrToCurr(RemoveComma(VarToStr(DBGrid1.FindFieldColumn('Credit')
      .Footers[1].Value))), ffCurrency, 0);
  if DBGrid1.SelectedRows.Count = 0 then
    DBGrid1.Columns[0].Footers[1].Value := 'جمع انتخابی';

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.ppSystemVariable1GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, '', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.ppLblCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.ppLblSeconNo_DocNoGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از شماره موقت ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + ' تا ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از تاريخ ' + ParamByName('DocDateFrom').Value + ' تا ' +
      ParamByName('DocDateTo').Value;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.ppDBCalcnum2alphabetGetText
  (Sender: TObject; var Text: string);
var
  c: currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره سند ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + ' تا '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.setVisibleColumns;
var
  id: integer;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 3) and FormInfoID=' +
      IntToStr(qry_AccCode.Fieldbyname('AidInfoType').AsInteger);
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#05#06#07', id <> 0);
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 12) and FormInfoID=' +
      IntToStr(qry_AccCode.Fieldbyname('KindInsertBudgetCode').AsInteger);
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#08#09', id <> 0);
  end; // with
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.Updateremain;
var
  c, bes, bed: currency;
  amount, i: integer;
begin
  with qry_Doc do
  begin
    try
      First;
      DisableControls;
      c := 0;
      bed := 0;
      bes := 0;
      amount := 0;
      i := 0;
      while not eof do
      begin
        i := i + 1;
        amount := amount + Fieldbyname('AidAmount').AsInteger;
        c := c + Fieldbyname('Balance').AsCurrency;
        bed := bed + Fieldbyname('Debt').AsCurrency;
        bes := bes + Fieldbyname('Credit').AsCurrency;
        edit;
        Fieldbyname('_row').AsInteger := i;
        Fieldbyname('Amount').AsInteger := amount;
        Fieldbyname('calcuBalance').AsCurrency := c;
        Fieldbyname('bed').AsCurrency := bed;
        Fieldbyname('bes').AsCurrency := bes;
        Fieldbyname('Rate').AsCurrency := 0;
        Fieldbyname('CalDate').AsString := EmptyStr;
        post;
        Next;
      end; //
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.Updateremain2;
var
  c, bes, bed: currency;
  amount, i: integer;
begin
  if DBGrid1.SelectedRows.Count > 0 then
    try
      c := 0;
      bed := 0;
      bes := 0;
      amount := 0;
      qry_Doc.DisableControls;
      with DBGrid1.DataSource.DataSet do
        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          GotoBookmark((DBGrid1.SelectedRows.Items[i]));
          c := c + Fieldbyname('Balance').AsCurrency;
          bed := bed + Fieldbyname('Debt').AsCurrency;
          bes := bes + Fieldbyname('Credit').AsCurrency;
          edit;
          Fieldbyname('calcuBalance').AsCurrency := c;
          Fieldbyname('bed').AsCurrency := bed;
          Fieldbyname('bes').AsCurrency := bes;
          post;

        end;
    finally
      qry_Doc.EnableControls;
    end;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.N3Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    if DBGrid1.SelectedRows.Count > 0 then
      qry_AccCode.AfterScroll := nil;

    // Updateremain2;
    // qry_Doc.DisableControls;
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
    // if DBGrid1.SelectedRows.Count > 0 then
    // ppDBPipeline2.RangeBegin := rbCurrentRecord;
    // ppDBPipeline2.RangeEnd := reCurrentRecord;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.AfterScroll := qry_AccCodeAfterScroll;
    Updateremain;
  end;

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.N4Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMF.adcAccounting, 'acc.DocGroups',
    qry_Doc.Fieldbyname('Serial').AsString, 1, True, '')
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.N5Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMF.adcAccounting, 'acc.Documents',
    qry_Doc.Fieldbyname('ID').AsString, 1, True, '')

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.N7Click(Sender: TObject);
begin
  inherited;
  if qry_AccCode.Fieldbyname('TopicCode').IsNull then
    Exit;
  CategoresDetailNoteF.enter(qry_AccCode.Fieldbyname('TopicCode').AsLargeInt,
    qry_AccCode.Fieldbyname('DetailCode').AsInteger,
    qry_AccCode.Fieldbyname('CompanyCode').AsInteger);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.qry_DocBeforeOpen(DataSet: TDataSet);
const
  Sqltxt = ' SELECT Fitful.FitfulID AS bed, Fitful.FitfulID AS calcuBalance ,Fitful.FitfulIDc AS calcuRate,'
    + ' Fitful.FitfulID AS bes, Fitful.FitfulID as Amount, Fitful.FitfulID as _row , '
    + ' DocDate as CalDate, Fitful.FitfulID as Rate, DetailsOnTopicBook.* , Debt + Credit as Sort'
    + ' FROM   Acc.%S (:CompanyCodeFrom,:CompanyCodeTo , :TopicCode , :DetailCode , '
    + ' :SecondaryDocNoFrom ,:SecondaryDocNoTo , :PrimaryDocNoFrom , :PrimaryDocNoTo , '
    + ' :DocDateFrom , :DocDateTo , :Status1, :Status2,:FromYearID,:ToYearID,:DocTypeCodeFrom,:DocTypeCodeTo , 1 ) DetailsOnTopicBook CROSS JOIN Fitful '
    + ' WHERE NOT ((Debt = 0) AND (Credit = 0)) ' + ' RadioGroup ' +
    ' ORDER BY DocDate, SortID, SecondaryDocNo, PrimaryDocNo, bedbes, ID, AnalizeType ';
begin
  inherited;
  // with TADOQuery(DataSet) do
  // begin
  // if not pnlRelated.Visible then
  // begin
  // SQL.Text := Format(Sqltxt, ['DetailsOnTopicBook']);
  // Filtered := false;
  // end
  // else
  // SQL.Text := Format(Sqltxt, ['DetailsOnTopicBookRelated']);
  //
  // case RadioGroup1.ItemIndex of
  // 0:
  // SQL.Text := StringReplace(SQL.Text, 'RadioGroup',
  // 'AND ( RelatedID <> 0 )', [rfReplaceAll]);
  // 1:
  // SQL.Text := StringReplace(SQL.Text, 'RadioGroup',
  // 'AND ( RelatedID = 0 )', [rfReplaceAll]);
  // 2:
  // SQL.Text := StringReplace(SQL.Text, 'RadioGroup', '', [rfReplaceAll]);
  // end;
  //
  // end;

  setColumns(DBGrid1, '#17#18', pnlRelated.Visible);
  setColumns(DBGrid1, '#19', pnlRatesCalculation.Visible);

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.qry_DocFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);

// function Findbookmark(bt: TBookmark): Boolean;
// var
// i: SmallInt;
// begin
// for i := 0 to DBGrid1.SelectedRows.Count - 1 do
// begin
// Result := qry_Doc.BookmarkValid(bt);
// if Result then
// Exit;
// end;
//
// end;

begin
  inherited;
  // if chkFilter.Checked then
  // begin
  // // qry_Doc.IsUniDirectional := True;
  // Accept := not (Findbookmark(DBGrid1.SelectedRows))
  // end;

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actAnalyzExecute(Sender: TObject);
begin
  inherited;
  DocRelated2F.enter(qry_Doc.Fieldbyname('CompanyCode').AsInteger,
    qry_Doc.Fieldbyname('ID').AsInteger, nil, 0);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.mnu1Click(Sender: TObject);
const
  SqlMax = 'SELECT TOP 1 RelatedID FROM (SELECT MAX(RelatedID) AS RelatedID FROM Acc.Documents '
    + ' UNION ALL ' +
    ' SELECT  MAX(RelatedID) AS RelatedID FROM  Acc.DocRelated) AS QryMax ORDER BY RelatedID DESC ';
var
  i: integer;
  MaxID: integer;
  aAidDocNo: Real;
  aCm: integer;
  ayearId: integer;
  aTopicCode: integer;
  aDetailCode: integer;

  qry: TADOQuery;
  strSqltxt: string;
  strOrgSql: string;

begin
  inherited;
  MaxID := GetANewCode('',SqlMax, '',dmf.adcAccounting);
  strOrgSql := qry_Doc.SQL.Text;
  strOrgSql := Copy(strOrgSql, 0, pos('ORDER BY', strOrgSql) - 1);
  strSqltxt :=
    'SELECT AidDocNo, CompanyCode, YearId, SUM(Debt) , SUM(Credit) FROM (%S ' +
    ') as Q  WHERE (AidDocNo>0) Group BY AidDocNo,CompanyCode, YearId HAVING SUM(Debt)-SUM(Credit)=0';

  aCm := qry_Companies.Fieldbyname('CompanyCode').AsInteger;
  aTopicCode := qry_AccCode.Fieldbyname('TopicCode').AsInteger;
  aDetailCode := qry_AccCode.Fieldbyname('DetailCode').AsInteger;
  qry := TADOQuery.Create(Self);
  with qry do
  begin
    try
      Connection := DMF.adcAccounting;
      SQL.Text := Format(strSqltxt, [strOrgSql]);
      Parameters := qry_Doc.Parameters;
      Active := True;

      while not eof do
      begin
        aAidDocNo := Fieldbyname('AidDocNo').AsFloat;
        ayearId := Fieldbyname('YearID').AsInteger;

    if not dmf.adcAccounting.InTransaction then
        DMF.adcAccounting.BeginTrans;
        try
          DMF.adcAccounting.Execute
            (Format('UPDATE Acc.Documents SET RelatedID = %d' +
            ' WHERE (CompanyCode = %d) AND (AidDocNo = %f) AND (YearID = %d) AND (TopicCode = %d) AND (DetailCode = %d) ',
            [MaxID, aCm, aAidDocNo, ayearId, aTopicCode, aDetailCode]));
      if DMf.adcAccounting.InTransaction then
          DMF.adcAccounting.CommitTrans;
          Next;
          MaxID := MaxID + 1;
        except
          on e: Exception do
          begin
            if DMF.adcAccounting.InTransaction then
              DMF.adcAccounting.RollbackTrans;
            add2log(e.Message);
          end;
        end;

      end;
      qry_AccCodeAfterScroll(qry_AccCode);
    finally
      qry.Free;
    end;
  end;

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.mnuN7Click(Sender: TObject);
const
  SqlMax = 'SELECT TOP 1 RelatedID FROM (SELECT MAX(RelatedID) AS RelatedID FROM Acc.Documents '
    + ' UNION ALL ' +
    ' SELECT  MAX(RelatedID) AS RelatedID FROM  Acc.DocRelated) AS QryMax ORDER BY RelatedID DESC ';
var

  MaxID: integer;
  aDebit: integer;
  aCredit: integer;
  aId: integer;
  aIdlast: integer;

begin
  inherited;
  MaxID := GetANewCode('',SqlMax, '',dmf.adcAccounting);
  with qry_Doc do
  begin
    Filter := 'RelatedID = 0';
    Filtered := True;
    First;
    while not eof do
    begin
      aDebit := Fieldbyname('Debt').AsInteger;
      aCredit := Fieldbyname('Credit').AsInteger;
      aIdlast := Fieldbyname('ID').AsInteger;
      Next;
      if ((aDebit > 0) and (aDebit = Fieldbyname('Credit').AsInteger)) or
        ((aCredit > 0) and (aCredit = Fieldbyname('Debt').AsInteger)) then
      begin
        aId := Fieldbyname('ID').AsInteger;
    if not dmf.adcAccounting.InTransaction then
        DMF.adcAccounting.BeginTrans;
        try
          DMF.adcAccounting.Execute
            (Format('UPDATE Acc.Documents SET RelatedID = %d' +
            ' WHERE (ID IN (%d, %d)) ', [MaxID, aIdlast, aId]));
      if DMf.adcAccounting.InTransaction then
          DMF.adcAccounting.CommitTrans;
          MaxID := MaxID + 1;
          Next;
        except
          on e: Exception do
          begin
            if DMF.adcAccounting.InTransaction then
              DMF.adcAccounting.RollbackTrans;
            add2log(e.Message);
          end;
        end;

      end;

    end;
    Filtered := false;
    FreeReservedCodes(DMF.adcAccounting, '(select');
    qry_AccCodeAfterScroll(qry_AccCode);

  end;

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.RadioGroup1Click(Sender: TObject);

begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actShowAnalyzeExecute
  (Sender: TObject);
begin
  inherited;
  pnlRelated.Visible := not pnlRelated.Visible;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.qry_DocAnalizeTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'نقل از قبل';
    1:
      Text := 'اصلي';
    2:
      Text := 'آناليز شده';
  end;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actRelatedExecute(Sender: TObject);
const
  SqlMax = 'SELECT TOP 1 RelatedID FROM (SELECT MAX(RelatedID) AS RelatedID FROM Acc.Documents '
    + ' UNION ALL ' +
    ' SELECT  MAX(RelatedID) AS RelatedID FROM  Acc.DocRelated) AS QryMax ORDER BY RelatedID DESC ';
var
  i: integer;
  MaxID: integer;
  bed, bes: Extended;
  aId: integer;
  aItemID: integer;
  aCm: integer;
  ayearId: integer;

begin
  inherited;
  MaxID := GetANewCode('',SqlMax, '',dmf.adcAccounting);

  bed := 0;
  bes := 0;

  with qry_Doc do
    try
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        bed := bed + Fieldbyname('Debt').AsCurrency;
        bes := bes + Fieldbyname('Credit').AsCurrency;
        intRecNo := qry_Doc.RecNo;
        if Fieldbyname('RelatedID').AsInteger > 0 then
        begin
          Warn('قبلا ارتباط داده شده است');
          Exit;
        end;
      end;
      if not((bed = 0) or (bes = 0)) then
      begin
        if (bed - bes) = 0 then
        begin
          for i := 0 to DBGrid1.SelectedRows.Count - 1 do
          begin
            GotoBookmark((DBGrid1.SelectedRows.Items[i]));
            aId := Fieldbyname('ID').AsInteger;
            aCm := Fieldbyname('CompanyCode').AsInteger;
            aItemID := Fieldbyname('ItemID').AsInteger;
            ayearId := Fieldbyname('YearID').AsInteger;
            case Fieldbyname('AnalizeType').AsInteger of
              1:
                DMF.adcAccounting.Execute
                  (Format('UPDATE Acc.Documents SET RelatedID = %d' +
                  ' WHERE (CompanyCode = %d) AND (ID = %D) AND (YearID = %d)',
                  [MaxID, aCm, aId, ayearId]));

              2:
                DMF.adcAccounting.Execute
                  (Format('UPDATE Acc.DocRelated SET RelatedID = %d FROM  Acc.DocRelated WHERE  (ItemID = %d)',
                  [MaxID, aItemID]));

            end;
          end;

          intRecNo := intRecNo - DBGrid1.SelectedRows.Count;
          DBGrid1.SelectedRows.Clear;
          qry_Doc.Requery();
          qry_DocAfterOpen(qry_Doc);

          if RadioGroup1.ItemIndex = 1 then
            qry_Doc.MoveBy(intRecNo)
          else
            qry_Doc.Locate('ID', aId, []);

        end
        else
        begin
          if get_response
            ('مبالغ ستون بايد تجزيه شوند تا امكان مطابقت وجود داشته باشد آیا مایل به تجزیه هستید؟')
            = mrYes then
          begin
            DocRelated2F.enter(qry_Doc.Fieldbyname('CompanyCode').AsInteger,
              qry_Doc.Fieldbyname('ID').AsInteger, DBGrid1, MaxID);
          end;
        end;
        FreeReservedCodes(DMF.adcAccounting);
      end;
    except
      on e: Exception do
      begin
        add2log(e.Message);
        Warn('اشکال در ارتباط');
      end;

    end;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.actdisRelatedExecute(Sender: TObject);
begin
  inherited;

  qry_Doc.Filter := Format('RelatedID= %d',
    [qry_Doc.Fieldbyname('RelatedID').AsInteger]);
  try
    qry_Doc.Filtered := True;
    if get_response
      ('آيا مي خواهيد  ارتباط هاي مربوط به سطر انتخاب شده حذف شوند ') <> mrYes
    then
      Exit;
    DMF.adcAccounting.Execute
      (Format('UPDATE Acc.DocRelated SET RelatedID = 0 WHERE (RelatedID = %d)',
      [qry_Doc.Fieldbyname('RelatedID').AsInteger]));
    DMF.adcAccounting.Execute
      (Format('UPDATE Acc.Documents SET RelatedID = 0 WHERE (RelatedID = %d)',
      [qry_Doc.Fieldbyname('RelatedID').AsInteger]));
  finally
    qry_Doc.Filtered := false;
    qry_Doc.Requery;
    qry_DocAfterOpen(qry_Doc);
  end;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.qry_DocAfterScroll(DataSet: TDataSet);
begin
  inherited;
  actdisRelated.Enabled := DataSet.Fieldbyname('RelatedID').AsInteger > 0;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Filter := Format('RelatedID= %d',
    [qry_Doc.Fieldbyname('RelatedID').AsInteger]);
  qry_Doc.Filtered := SpeedButton1.Down;

end;

procedure TRpt_AccDetailOnTopicBook_ArziF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Updateremain;
  CalRates;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.CalRates;
Var
  LastDate, NowDate: TDateTime;
  FinalRate, calcuRate: Double;
begin
  if opta.RatesCalculation = 0 then
    Exit;
  with qry_Doc do
    try
      DisableControls;
      Last;
      LastDate := Shamsi2Miladi(qry_Doc.Parameters.ParamByName
        ('DocDateTo').Value);
      edtCalDate.Text := miladi2Shamsi(LastDate);
      while not boF do
      begin
        NowDate := Shamsi2Miladi(Fieldbyname('DocDate').AsString);
        FinalRate := (Fieldbyname('calcuBalance').AsLargeInt *
          (LastDate - NowDate) * opta.RatesCalculation) / 36000;
        edit;
        Fieldbyname('rate').AsCurrency := RoundTo(FinalRate, 0);
        Fieldbyname('CalDate').AsString := miladi2Shamsi(LastDate);
        post;
        LastDate := (NowDate);
        Prior;
      end;
      calcuRate := 0;
      First;
      while not eof do
      begin
        calcuRate := calcuRate + Fieldbyname('rate').AsCurrency;
        edit;
        Fieldbyname('calcuRate').AsCurrency := calcuRate;
        post;
        Next;
      end;
      // if Assigned(SumGrid1.Fields[5]) then
      // begin
      // SumGrid1.DataSource.DataSet.edit;
      // SumGrid1.Fields[5].ReadOnly := false;
      // SumGrid1.Fields[5].Value := calcuRate;
      // end;
      DBGrid1.FindFieldColumn('calcuRate').Footers[1].Value :=
        calcuRate.ToString;
    Finally
      EnableControls;
    end;
end;

procedure TRpt_AccDetailOnTopicBook_ArziF.chkFilterClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  // qry_Doc.Filtered := chkFilter.Checked;
  // if (chkFilter.Checked) and (DBGrid1.SelectedRows.Count > 1) then
  // try
  // qry_Doc.DisableControls;
  // with DBGrid1.DataSource.DataSet do
  // for i := 0 to DBGrid1.DataSource.DataSet.RecordCount do
  // begin
  // if  then
  //
  // Inc(i);
  // end;
  // finally
  // qry_Doc.EnableControls;
  // end;

end;

end.
