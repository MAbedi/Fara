unit Rpt_AccDetailOnTopicBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, Menus, ppDB,
  ppDBPipe, ppBands, ppClass, ppModule, raCodMod, ppCtrls, System.StrUtils,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppTypes, ppParameter, FarsiReportBuilde, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, AccFunctions, Filter_ADO_Const;

type
  // THackGrid = class(TDBGrid);

  TRpt_AccDetailOnTopicBookF = class(Ttemplate2MDIF)
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
    qry_AccCodeAidInfoType: TWordField;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    qry_CompaniesCompanyName_L2: TStringField;
    ppDBPipeline1: TppDBPipeline;
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
    qry_CompaniesCompanyCode: TIntegerField;
    pnlRatesCalculation: TPanel;
    edtRatesCalculation: TLabeledEdit;
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
    btn1: TSpeedButton;
    pmPopRelation: TPopupMenu;
    mnu1: TMenuItem;
    mnuN7: TMenuItem;
    qry_DocAidDocNo: TFMTBCDField;
    N7: TMenuItem;
    chkFilter: TCheckBox;
    qry_AccCodeMoeenName_L1: TStringField;
    qry_AccCodeDetailName_L1: TStringField;
    qry_AccCode_CompanyName: TStringField;
    qry_DoccalcuRate: TBCDField;
    ppReport1: TppReport;
    ppParameterList2: TppParameterList;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qry_DocDifference1: TBCDField;
    DBGrid1: TCedarDbgrid;
    qry_DocCurrencyType: TIntegerField;
    qry_DocCurrenciesName: TStringField;
    qry_DocCurrencyDebit: TFMTBCDField;
    qry_DocCurrencyCredit: TFMTBCDField;
    qry_DocCurrencyRunningBalance: TFMTBCDField;
    qry_Doc_row: TLargeintField;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    qry_DocRunningBalance: TBCDField;
    Panel6: TPanel;
    lblBes: TLabel;
    lblCurrencyCredit: TLabel;
    edtBes: TEdit;
    edtCurrencyCredit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure qry_CompaniesAfterScroll(DataSet: TDataSet);
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
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1SelectedRowsItemChanged(Sender: TCustomDBGridEh;
      Item: TArray<System.Byte>; Action: TListNotification);
    procedure qry_AccCodeBeforeOpen(DataSet: TDataSet);

  private
    { Private declarations }
    // OnTitel: TDBGridClickEvent;
    showFilter: Boolean;
    intRecNo: integer;
    procedure UpdateFilter;
    procedure CalRates;
    procedure setVisibleColumns;
  public
    { Public declarations }
  end;

var
  Rpt_AccDetailOnTopicBookF: TRpt_AccDetailOnTopicBookF;

implementation

uses Dm, GlobalPro, FilterClass_ADO, searchCode_ADO, filter_ADO,
  Document, search2, sort2, searchCode_L1_L2,
  ScanImage, Math, Resource, DateUtils, shamsiDate, DBGrid2Print,
  FaraConsts, CategoresDetailNote, FormFunctions, DocRelated2;
{$R *.dfm}

procedure TRpt_AccDetailOnTopicBookF.UpdateFilter;
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
    Parameters.ParamByName('UserAdmin').Value := 1;
    // ifthen(User.PowerUser, 1, 0);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserID2').Value := User.id;

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

  DBGridCurrencyKind(edtBes, myParams, qry_Doc);
  DBGridCurrencyKind(edtCurrencyCredit, myParams, qry_Doc);
  lblBes.Visible := edtBes.Visible;
  lblCurrencyCredit.Visible := edtCurrencyCredit.Visible;
  lblBes.Left:= edtBes.Width+edtBes.Left;
  lblCurrencyCredit.Left:= edtCurrencyCredit.Width+edtCurrencyCredit.Left;

  qry_Doc.Last;
  edtBes.Text := FloatToStrF(qry_DocRunningBalance.AsCurrency,
    ffCurrency, 39, 0);
  edtCurrencyCredit.Text := FloatToStrF(qry_DocCurrencyRunningBalance.AsFloat,
    ffCurrency, 39, optA.ArzNumberOfDigits);
end;

procedure TRpt_AccDetailOnTopicBookF.FormActivate(Sender: TObject);
begin
  inherited;
  // if (ActiveSortTitle) and (DBGrid1.Tag = 0) then
  // DBGrid1.OnTitleClick := OnTitel;
  if ActiveSortTitle then
    DBGrid1.OptionsEh := DBGrid1.OptionsEh + [dghAutoSortMarking]
  else
    DBGrid1.OptionsEh := DBGrid1.OptionsEh - [dghAutoSortMarking];

end;

procedure TRpt_AccDetailOnTopicBookF.FormCreate(Sender: TObject);
begin
  inherited;
  // flag:=true;
  pnlRelated.Visible := false;
  showFilter := var_glb_Boolean;
  grpCompany.Visible := (gv_MultiCompany and optA.ActivePartCompany);
  pnlRatesCalculation.Visible := optA.RatesCalculation > 0;
  edtRatesCalculation.Text := IntToStr(optA.RatesCalculation);
  DBGrid1.SetFooter4Sum(['calcuRate', 'calcuBalance', 'calcAidAmount']);
  DBGrid1.SetFooter4Avrage(['calcuRate']);
  setColumns2(DBGrid1, pnlRelated.Visible, 'AnalizeType');
  setColumns2(DBGrid1, pnlRelated.Visible, 'RelatedID');

  // setColumns(DBGrid1, '#15', pnlRatesCalculation.Visible);
  setColumns2(DBGrid1, pnlRatesCalculation.Visible, 'calcuRate');

  if ActiveSortTitle then
    DBGrid1.Tag := 0;
  // if pnlRatesCalculation.Visible then
  // SumGrid1.FieldsName := 'Debt;Credit;calcuBalance;calcuRate;Balance;';
  // else
  // SumGrid1.FieldsName := 'Debt;Credit;calcuBalance;Balance;';

end;

procedure TRpt_AccDetailOnTopicBookF.actFilterExecute(Sender: TObject);
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

      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);

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

procedure TRpt_AccDetailOnTopicBookF.FormShow(Sender: TObject);
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

procedure TRpt_AccDetailOnTopicBookF.qry_AccCodeAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if DataSet.RecordCount = 0 then
    qry_Doc.Close;
end;

procedure TRpt_AccDetailOnTopicBookF.qry_AccCodeAfterScroll(DataSet: TDataSet);
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

procedure TRpt_AccDetailOnTopicBookF.qry_AccCodeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qry_AccCode.Parameters.ParamByName('UserAdmin').Value := 1;
  /// ifthen(User.PowerUser, 1, 0);
  qry_AccCode.Parameters.ParamByName('UserID').Value := User.id;
  qry_AccCode.Parameters.ParamByName('UserID2').Value := User.id;
end;

procedure TRpt_AccDetailOnTopicBookF.qry_CompaniesAfterScroll
  (DataSet: TDataSet);
var
  CompanyFrom, companyTo: integer;
begin
  inherited;

  if optA.ActivePartCompany then
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

procedure TRpt_AccDetailOnTopicBookF.BitBtn1Click(Sender: TObject);
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

procedure TRpt_AccDetailOnTopicBookF.BitBtn3Click(Sender: TObject);
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
    '  CROSS JOIN acc.Config ' +
  // ' WHERE (acc.DocGroups.SecondaryDocNo <= '+GetcTo(myParams.ParamValues['SecondaryDocNo'],ftString)+' ) AND '+
  // ' (acc.DocGroups.PrimaryDocNo <='+GetcTo(myParams.ParamValues['PrimaryDocNo'],ftString)+') AND (acc.DocGroups.DocDate <='+QuotedStr(GetcTo(myParams.ParamValues['DocDate'],ftString))+' ) and'+
  // ' (acc.Documents.TopicCode  BETWEEN '+GetcFrom(myParams.ParamValues['TopicCode'],ftString)+'  AND '+GetcTo(myParams.ParamValues['TopicCode'],ftString)+' ) '+
    ' where (acc.DocGroups.CompanyCode =' +
    IntToStr(qry_CompaniesCompanyCode.AsInteger) + ') ' +
  // 'and ( acc.DocGroups.Status<>'+IntToStr(param1)+')  AND (acc.DocGroups.Status<>'+IntToStr(param2)+')'+

    'AND ((' + ifthen(User.PowerUser, '1', '0') +
    ' = 1) OR (UserIDFilter = 0) OR ( LevelID<>3) OR (((CHARINDEX('',''+ltrim('
    + User.id.ToString +
    ')+'','', '','' + Acc.Categories.UserRelated + '','') <> 0) ) )AND (((CHARINDEX('',''+ltrim('
    + User.id.ToString +
    ')+'','', '','' + Acc.Details.OperatorID + '','') <> 0) ) ))' +

    ' group by  acc.DocGroups.CompanyCode,acc.Documents.TopicCode, acc.Documents.DetailCode,'
    + ' acc.Categories.MoeenName_L1, acc.Details.DetailName_L1,acc.Categories.AidInfoType , acc.Categories.MoeenName_L2, acc.Details.DetailName_L2'
    + '  )func ';
  s := searchCode_ADOF.SearchCode2(DMF.adcAccounting, 'حسابها', Sqltxt,
    ['کد', 'عنوان معین '], Results, [60, 200], alLeft);
  if s then
    qry_AccCode.Locate('accCode', Results[0], []);

end;

procedure TRpt_AccDetailOnTopicBookF.btn1Click(Sender: TObject);
begin
  inherited;
  pmPopRelation.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt_AccDetailOnTopicBookF.Button1Click(Sender: TObject);
begin
  inherited;
  // Updateremain;
end;

procedure TRpt_AccDetailOnTopicBookF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // if (ActiveSortTitle) and (DBGrid1.Tag = 0) then
  // begin
  // OnTitel := DBGrid1.OnTitleClick;
  // DBGrid1.OnTitleClick := nil;
  // end;
  DBGrid1.SortTitle := (ActiveSortTitle) and (DBGrid1.Tag = 0);

  GetUserAccess('mnuDocument');
  DocumentF.FindDoc(qry_Doc.Fieldbyname('serial').AsVariant,
    qry_Doc.Fieldbyname('YearId').AsInteger, qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_Doc.Fieldbyname('id').AsInteger, []);
end;

procedure TRpt_AccDetailOnTopicBookF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if qry_Doc.RecordCount <> 0 then
    actShowForm.Execute;
end;

procedure TRpt_AccDetailOnTopicBookF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRpt_AccDetailOnTopicBookF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TRpt_AccDetailOnTopicBookF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TRpt_AccDetailOnTopicBookF.actPrintExecute(Sender: TObject);
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

procedure TRpt_AccDetailOnTopicBookF.qry_AccCodeaccCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Trim(Sender.AsString)
end;

procedure TRpt_AccDetailOnTopicBookF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.Fieldbyname('SecondaryDocNo'));
end;

procedure TRpt_AccDetailOnTopicBookF.DBGrid1SelectedRowsItemChanged
  (Sender: TCustomDBGridEh; Item: TArray<System.Byte>;
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

procedure TRpt_AccDetailOnTopicBookF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRpt_AccDetailOnTopicBookF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRpt_AccDetailOnTopicBookF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRpt_AccDetailOnTopicBookF.pop_7Click(Sender: TObject);
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

procedure TRpt_AccDetailOnTopicBookF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRpt_AccDetailOnTopicBookF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از شماره موقت ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + ' تا ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);

end;

procedure TRpt_AccDetailOnTopicBookF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از تاريخ ' + ParamByName('DocDateFrom').Value + ' تا ' +
      ParamByName('DocDateTo').Value;
end;

procedure TRpt_AccDetailOnTopicBookF.ppDBCalcnum2alphabetGetText
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

procedure TRpt_AccDetailOnTopicBookF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره سند ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + ' تا '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TRpt_AccDetailOnTopicBookF.setVisibleColumns;
var
  id: integer;
  b: Boolean;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 3) ' +
      'and FormInfoID=' + IntToStr(qry_AccCode.Fieldbyname('AidInfoType')
      .AsInteger);
    Active := True;
    id := Fields[0].AsInteger;
    b := id <> 0;
    /// setColumns(DBGrid1, '#05#06#07', id <> 0);
    setColumns2(DBGrid1, b, 'AidDocNo');
    setColumns2(DBGrid1, b, 'AidAmount');
    setColumns2(DBGrid1, b, 'AidDocdate');
    setColumns2(DBGrid1, b, 'AidAmountBed');
    setColumns2(DBGrid1, b, 'AidAmountBes');
    setColumns2(DBGrid1, b, 'calcAidAmount');

    Active := false;
    SQL.Text := 'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 12) ' +
      'and FormInfoID=' +
      IntToStr(qry_AccCode.Fieldbyname('KindInsertBudgetCode').AsInteger);
    Active := True;
    id := Fields[0].AsInteger;
    b := id <> 0;
    // setColumns(DBGrid1, '#08#09', id <> 0);
    setColumns2(DBGrid1, b, 'BudgetTopicID');
    setColumns2(DBGrid1, b, 'ProjectID');
  end; // with
end;

// procedure TRpt_AccDetailOnTopicBookF.Updateremain;
// var
// c, bes, bed: currency;
// amount, i: integer;
// calcAidAmount: Real;
// begin
// with qry_Doc do
// begin
// try
// First;
// DisableControls;
// c := 0;
// bed := 0;
// bes := 0;
// amount := 0;
// i := 0;
// calcAidAmount := 0;
// while not eof do
// begin
// i := i + 1;
// amount := amount + Fieldbyname('AidAmount').AsInteger;
// c := c + Fieldbyname('Balance').AsCurrency;
// bed := bed + Fieldbyname('Debt').AsCurrency;
// bes := bes + Fieldbyname('Credit').AsCurrency;
// calcAidAmount := calcAidAmount +
// (Fieldbyname('AidAmountBed').AsFloat -
// Fieldbyname('AidAmountBes').AsFloat);
//
// edit;
// Fieldbyname('_row').AsInteger := i;
// Fieldbyname('Amount').AsInteger := amount;
// Fieldbyname('calcuBalance').AsCurrency := c;
// Fieldbyname('bed').AsCurrency := bed;
// Fieldbyname('bes').AsCurrency := bes;
// Fieldbyname('Rate').AsCurrency := 0;
// Fieldbyname('CalDate').AsString := EmptyStr;
//
// Fieldbyname('calcAidAmount').AsFloat := calcAidAmount;
//
// post;
// Next;
// end; //
// finally
// First;
// EnableControls;
// end; // try
// end; // with
// end;

// procedure TRpt_AccDetailOnTopicBookF.Updateremain2;
// var
// c, bes, bed: currency;
// i: integer;
// begin
// if DBGrid1.SelectedRows.Count > 0 then
// try
// c := 0;
// bed := 0;
// bes := 0;
// // amount := 0;
// qry_Doc.DisableControls;
// with DBGrid1.DataSource.DataSet do
// for i := 0 to DBGrid1.SelectedRows.Count - 1 do
// begin
// GotoBookmark(pointer(DBGrid1.SelectedRows.Items[i]));
// c := c + Fieldbyname('Balance').AsCurrency;
// bed := bed + Fieldbyname('Debt').AsCurrency;
// bes := bes + Fieldbyname('Credit').AsCurrency;
// edit;
// Fieldbyname('calcuBalance').AsCurrency := c;
// Fieldbyname('bed').AsCurrency := bed;
// Fieldbyname('bes').AsCurrency := bes;
// post;
//
// end;
// finally
// qry_Doc.EnableControls;
// end;
// end;

procedure TRpt_AccDetailOnTopicBookF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TRpt_AccDetailOnTopicBookF.N3Click(Sender: TObject);
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
    // Updateremain;
  end;

end;

procedure TRpt_AccDetailOnTopicBookF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt_AccDetailOnTopicBookF.N4Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMF.adcAccounting, 'acc.DocGroups',
    qry_Doc.Fieldbyname('Serial').AsString, 1, True, '')
end;

procedure TRpt_AccDetailOnTopicBookF.N5Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMF.adcAccounting, 'acc.Documents',
    qry_Doc.Fieldbyname('ID').AsString, 1, True, '')

end;

procedure TRpt_AccDetailOnTopicBookF.N7Click(Sender: TObject);
begin
  inherited;
  if qry_AccCode.Fieldbyname('TopicCode').IsNull then
    Exit;
  CategoresDetailNoteF.enter(qry_AccCode.Fieldbyname('TopicCode').AsLargeInt,
    qry_AccCode.Fieldbyname('DetailCode').AsInteger,
    qry_AccCode.Fieldbyname('CompanyCode').AsInteger);
end;

procedure TRpt_AccDetailOnTopicBookF.qry_DocBeforeOpen(DataSet: TDataSet);
const
  Sqltxt =

    'SELECT  :Rate AS calcuRate ,' +
    ' :DocDate_CalDate as CalDate , DetailsOnTopicBook.* , Debt + Credit as Sort , Debt - Credit as Difference1'
    + ' , AnalizeType' +

  // ' SELECT Fitful.FitfulID AS bed, Fitful.FitfulIDc AS calcuBalance ,Fitful.FitfulIDc AS calcuRate,'
  // + ' Fitful.FitfulID AS bes, Fitful.FitfulID as Amount, Fitful.FitfulID as _row , '
  // + ' DocDate as CalDate, Fitful.FitfulID as Rate, DetailsOnTopicBook.* , Debt + Credit as Sort,Debt - Credit as Difference1'
  // + '  ,AidAmountBed,  AidAmountBes ,Fitful.FitfulID AS calcAidAmount ' +

    ' FROM   Acc.%S (:CompanyCodeFrom,:CompanyCodeTo , :TopicCode , :DetailCode , '
    + ' :SecondaryDocNoFrom ,:SecondaryDocNoTo , :PrimaryDocNoFrom , :PrimaryDocNoTo , '
    + ' :DocDateFrom , :DocDateTo , :Status1, :Status2,:FromYearID,:ToYearID,:DocTypeCodeFrom,:DocTypeCodeTo , 1 ,'
    + ':CurrencyTypeFrom , :CurrencyTypeTo, :CurrencyKind ) DetailsOnTopicBook  '
    + ' WHERE NOT ((Debt = 0) AND (Credit = 0)) ' + ' RadioGroup ' +
    ' ORDER BY DocDate, SortID, SecondaryDocNo, PrimaryDocNo, bedbes, ID, DetailsOnTopicBook.AnalizeType  ';
  // CROSS JOIN Fitful
begin
  inherited;

  with TADOQuery(DataSet) do
  begin
    if not pnlRelated.Visible then
    begin
      SQL.Text := Format(Sqltxt, ['DetailsOnTopicBook']);
      Filtered := false;
    end
    else
      SQL.Text := Format(Sqltxt, ['DetailsOnTopicBookRelated']);

    case RadioGroup1.ItemIndex of
      0:
        SQL.Text := StringReplace(SQL.Text, 'RadioGroup',
          'AND ( RelatedID <> 0 )', [rfReplaceAll]);
      1:
        SQL.Text := StringReplace(SQL.Text, 'RadioGroup',
          'AND ( RelatedID = 0 )', [rfReplaceAll]);
      2:
        SQL.Text := StringReplace(SQL.Text, 'RadioGroup', '', [rfReplaceAll]);
    end;

  end;

end;

procedure TRpt_AccDetailOnTopicBookF.qry_DocFilterRecord(DataSet: TDataSet;
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

procedure TRpt_AccDetailOnTopicBookF.actAnalyzExecute(Sender: TObject);
begin
  inherited;
  DocRelated2F.enter(qry_Doc.Fieldbyname('CompanyCode').AsInteger,
    qry_Doc.Fieldbyname('ID').AsInteger, nil, 0);
end;

procedure TRpt_AccDetailOnTopicBookF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRpt_AccDetailOnTopicBookF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TRpt_AccDetailOnTopicBookF.mnu1Click(Sender: TObject);
const
  SqlMax = 'SELECT TOP 1 RelatedID FROM (SELECT MAX(RelatedID) AS RelatedID FROM Acc.Documents '
    + ' UNION ALL ' +
    ' SELECT  MAX(RelatedID) AS RelatedID FROM  Acc.DocRelated) AS QryMax ORDER BY RelatedID DESC ';
var
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
  MaxID := GetANewCode('', SqlMax, '',dmf.adcAccounting);
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

        if not DMF.adcAccounting.InTransaction then
          DMF.adcAccounting.BeginTrans;
        try
          DMF.adcAccounting.Execute
            (Format('UPDATE Acc.Documents SET RelatedID = %d' +
            ' WHERE (CompanyCode = %d) AND (AidDocNo = %f) AND (YearID = %d) AND (TopicCode = %d) AND (DetailCode = %d) ',
            [MaxID, aCm, aAidDocNo, ayearId, aTopicCode, aDetailCode]));
          if DMF.adcAccounting.InTransaction then
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

procedure TRpt_AccDetailOnTopicBookF.mnuN7Click(Sender: TObject);
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
  MaxID := GetANewCode('', SqlMax, '',dmf.adcAccounting);
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
        if not DMF.adcAccounting.InTransaction then
          DMF.adcAccounting.BeginTrans;
        try
          DMF.adcAccounting.Execute
            (Format('UPDATE Acc.Documents SET RelatedID = %d' +
            ' WHERE (ID IN (%d, %d)) ', [MaxID, aIdlast, aId]));
          if DMF.adcAccounting.InTransaction then
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

procedure TRpt_AccDetailOnTopicBookF.RadioGroup1Click(Sender: TObject);

begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TRpt_AccDetailOnTopicBookF.actShowAnalyzeExecute(Sender: TObject);
begin
  inherited;
  pnlRelated.Visible := not pnlRelated.Visible;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TRpt_AccDetailOnTopicBookF.qry_DocAnalizeTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
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

procedure TRpt_AccDetailOnTopicBookF.actRelatedExecute(Sender: TObject);
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
  MaxID := GetANewCode('', SqlMax, '',dmf.adcAccounting);

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

procedure TRpt_AccDetailOnTopicBookF.actdisRelatedExecute(Sender: TObject);
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

procedure TRpt_AccDetailOnTopicBookF.qry_DocAfterScroll(DataSet: TDataSet);
begin
  inherited;
  actdisRelated.Enabled := DataSet.Fieldbyname('RelatedID').AsInteger > 0;
end;

procedure TRpt_AccDetailOnTopicBookF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Filter := Format('RelatedID= %d',
    [qry_Doc.Fieldbyname('RelatedID').AsInteger]);
  qry_Doc.Filtered := SpeedButton1.Down;

end;

procedure TRpt_AccDetailOnTopicBookF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // Updateremain;
  CalRates;
  DBGridCurrencyKind(DBGrid1, myParams, qry_Doc);
  // setColumns(DBGrid1, '#13#14', pnlRelated.Visible);
  setColumns2(DBGrid1, pnlRelated.Visible, 'AnalizeType');
  setColumns2(DBGrid1, pnlRelated.Visible, 'RelatedID');

  // setColumns(DBGrid1, '#15', pnlRatesCalculation.Visible);
  setColumns2(DBGrid1, pnlRatesCalculation.Visible, 'calcuRate');

end;

procedure TRpt_AccDetailOnTopicBookF.CalRates;
Var
  LastDate, NowDate: TDateTime;
  FinalRate, calcuRate: Double;
  calcuRateId: integer;
begin
  if optA.RatesCalculation = 0 then
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
          (LastDate - NowDate) * optA.RatesCalculation) / 36000;
        edit;
        Fieldbyname('rate').AsCurrency := RoundTo(FinalRate, 0);
        Fieldbyname('CalDate').AsString := miladi2Shamsi(LastDate);
        post;
        LastDate := (NowDate);
        Prior;
      end;
      calcuRate := 0;
      calcuRateId := 5;
      First;
      while not eof do
      begin
        calcuRate := calcuRate + Fieldbyname('rate').AsCurrency;
        edit;
        Fieldbyname('calcuRate').AsCurrency := calcuRate;
        post;
        Next;
      end;
      // if Assigned(SumGrid1.Fields[calcuRateId]) then
      // begin
      // SumGrid1.DataSource.DataSet.edit;
      // SumGrid1.Fields[calcuRateId].ReadOnly := false;
      // SumGrid1.Fields[calcuRateId].Value := calcuRate;
      // //  DBGrid1.Columns[12].Footers[1].Value:='11111'
      // end;
      try
        DBGrid1.FindFieldColumn('calcuRate').Footers[1].Value :=
          calcuRate.ToString;
      except
        on e: Exception do
      end;

    Finally
      EnableControls;
    end;
end;

procedure TRpt_AccDetailOnTopicBookF.chkFilterClick(Sender: TObject);
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
