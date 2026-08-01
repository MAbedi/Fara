unit RptTrialBalance_Acc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppBands, ppCtrls, ppPrnabl, ppClass, AccFunctions,
  ppDB, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  DBCtrls, Menus, ppVar, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TRptTrialBalance_AccF = class(Ttemplate2MDIF)
    qry_Init: TADOQuery;
    qry_InitLevelID: TIntegerField;
    qry_InitLevelCaption: TStringField;
    qry_InitPrvLevelID: TIntegerField;
    qry_InitCodeLength: TWordField;
    qry_InitPrvLevelCaption: TStringField;
    qry_InitPrvCodeLength: TWordField;
    qry_InitTopicType: TWordField;
    actFilter: TAction;
    src_TrialBalance: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    actSort: TAction;
    actSendExecl: TAction;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    popPrint: TPopupMenu;
    BitBtn1: TBitBtn;
    actAfterLevel: TAction;
    actBeforeLevel: TAction;
    qry_TrialBalance: TADOQuery;
    qry_TrialBalanceTopicCode: TStringField;
    qry_TrialBalanceMoeenName: TStringField;
    qry_TrialBalanceMoeenName_L2: TStringField;
    qry_TrialBalancePrvTopicCode: TStringField;
    qry_TrialBalancePrvMoeenName_L2: TStringField;
    qry_TrialBalancePrvMoeenName: TStringField;
    PopLevel: TPopupMenu;
    mnuDetail: TMenuItem;
    mnuCtopic1: TMenuItem;
    mnuCtopic2: TMenuItem;
    ButtenLevelTop: TBitBtn;
    ButtenLevelLow: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    actUpdate: TAction;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ppReport1: TppReport;
    qry_TrialBalance_row: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppLine13: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLBCompanyName: TppLabel;
    ppLabel3: TppLabel;
    ppDocDate: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLine29: TppLine;
    ppLabel13: TppLabel;
    ppLine16: TppLine;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppLine5: TppLine;
    ppLine11: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine15: TppLine;
    ppLine19: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine4: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLine21: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLabel11: TppLabel;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    actOther: TAction;
    BitBtn2: TBitBtn;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    actFilterFrom: TAction;
    N6: TMenuItem;
    N7: TMenuItem;
    mnuDetail_arzi: TMenuItem;
    mnuCtopic3: TMenuItem;
    DBGrid1: TCedarDbgrid;
    qry_TrialBalanceDebt: TFMTBCDField;
    qry_TrialBalanceCredit: TFMTBCDField;
    qry_TrialBalanceBalanceDebt: TFMTBCDField;
    qry_TrialBalanceBalanceCredit: TFMTBCDField;
    qry_TrialBalancebes: TFMTBCDField;
    qry_TrialBalancebed: TFMTBCDField;
    qry_TrialBalanceMandehBed: TFMTBCDField;
    qry_TrialBalanceMandehbes: TFMTBCDField;
    qry_TrialBalanceCurrencyType: TIntegerField;
    qry_TrialBalanceCurrenciesName: TStringField;
    qry_TrialBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialBalanceCurrencyCredit: TFMTBCDField;
    qry_TrialBalanceBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialBalanceBalanceCurrencyCredit: TFMTBCDField;
    try1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendExeclExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actShowFormExecute(Sender: TObject);
    procedure actAfterLevelExecute(Sender: TObject);
    procedure actBeforeLevelExecute(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure mnuDetailClick(Sender: TObject);
    procedure mnuCtopic1Click(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure qry_TrialBalanceAfterOpen(DataSet: TDataSet);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure mnuCtopic2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure mnuDetail_arziClick(Sender: TObject);
    procedure mnuCtopic3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure try1Click(Sender: TObject);
  private

    // sumDebt:currency;
    // sumCredit:currency;
    // sumBalaDebt:currency;
    // sumBalaCredit:currency;
    ShowFilter: boolean;
    formtype: byte;
    // param1, param2, param3: string;
    // Status1, Status2: integer;
    // procedure Updateremain;
    procedure ShowAfterAccCode(prvLevelID, CodeLength, PrvCodeLength: integer);
    procedure ShowBeforeAccCode(LevelID: integer);
    procedure UpdateFilter;
    procedure InitForm;
    // function  CalcSumFileds(FiledName: String): Currency;
    // procedure Print(FileName: String);
    // procedure chooseColumnDown;
    // procedure chooseColumnUp;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  RptTrialBalance_AccF: TRptTrialBalance_AccF;
  cloned: TADOQuery;

implementation

uses Dm, searchCode_ADO, filter_ADO, FilterClass_ADO, GlobalPro,
  search2, sort2, Rpt_AccBook, Main, RptTrialBalance_CTopics,
  RptTrialBalance_Details, RptTrialBalance_CTopics2,
  DBGrid2Print, TreeChart, FormFunctions, topicsNote, Resource, StrUtils,
  RptTrialBalance_AccCode_Arzi, RptTrialBalance_CTopics3, Filter_ADO_Const;

{$R *.dfm}
{ TRptTrialBalance_AccF }

procedure TRptTrialBalance_AccF.FormCreate(Sender: TObject);
begin
  inherited;
  formtype := var_glb_gParam;
  ShowFilter := var_glb_Boolean;
  InitForm;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
end;

procedure TRptTrialBalance_AccF.FormShow(Sender: TObject);
begin
  inherited;
  if ShowFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DocDate') = nil then
      close;
  end;

end;

procedure TRptTrialBalance_AccF.actFilterExecute(Sender: TObject);
var
  tmpDefault: TcDefaultValues;
begin
  inherited;
  if (Sender as TAction).Tag = 1 then
    tmpDefault := dvDefaults
  else
    tmpDefault := dvMinMax;

  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(DMF.adcAccounting, 'state', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpStatus);
      AddItem(DMF.adcAccounting, 'checked', 'انواع سند', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, '');
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, tmpDefault, '0000/00/00', '9999/99/99', ciSimple, '',
        Format(strMaxMinDocDate, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT Min(0)  , Max(CompanyCode)  FROM acc.DocGroups');
      if opta.ChkBalancCTopicCode3 then
      begin

        AddItem(DMF.adcAccounting, 'CtopicCode3', ' حساب تفصیلی 4 ', 'كد ',
          ftInteger, dvMinMax, '', '', ciLookup, strLookUpCTopicCode3,
          strMaxMinCTopicCode3);
      end;

      AddItem(DMF.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_L1 FROM acc.Categories where LevelID =' +
        IntToStr(formtype),
        'SELECT Min(TopicCode),Max(TopicCode)  FROM acc.Categories WHERE  LevelID ='
        + IntToStr(formtype));
      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM Util.maliYear');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
        if formtype > 1 then
          CheckExistsImbalanceDoc;
      end; // if
    finally
      Free;
    end; // t
end;

procedure TRptTrialBalance_AccF.InitForm;
begin
  with qry_Init do
  Begin
    Active := False;
    Parameters.ParamByName('type').Value := formtype;
    Active := True;
  end; // with
  Caption := ' تراز آزمايشي حسابهاي  ' + qry_InitLevelCaption.AsString;
  ButtenLevelTop.Enabled := not(formtype = 1);
  mnuCtopic1.Visible := opta.ActiveCtopic1;
  mnuCtopic2.Visible := opta.ActiveCtopic2;
  mnuCtopic3.Visible := opta.ActiveCtopic3;
  if formtype > 2 then
    DBGrid1.PopupMenu := PopLevel
  else
    DBGrid1.PopupMenu := nil
end;

procedure TRptTrialBalance_AccF.FormPaint(Sender: TObject);
begin
  inherited;
  Self.LblShowLimitPlace1.Caption := '   از تاريخ  ' +
    qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value +
    '  تا تاريخ  ' + qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
end;

procedure TRptTrialBalance_AccF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if formtype = 1 then
  begin
    MenuItem1.Visible := False;
    MenuItem3.Visible := False;
  end;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptTrialBalance_AccF.actSendExeclExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptTrialBalance_AccF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialBalance);
end;

procedure TRptTrialBalance_AccF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialBalance);
end;

procedure TRptTrialBalance_AccF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_TrialBalance.FieldByName('TopicCode'));
end;

procedure TRptTrialBalance_AccF.UpdateFilter;
// var
// ts:TStringList;
// s:String;
// i:Integer;
begin
  // s:=GetcTo(myParams.ParamValues['checked'],ftString);
  // ts:=TStringList.Create;
  // try
  // ts.Text:=StringReplace(s,',',#13,[rfReplaceAll]);
  // param1:='-1' ;param2:='-1' ;param3:='-1' ;
  // for i:=0 to ts.Count-1 do begin
  // if i=0 then param1:= ts[0];
  // if i=1 then param2:= ts[1];
  // if i=2 then param3:= ts[2];
  // if i>2 then break
  // end;//fot
  // s:=GetcTo(myParams.ParamValues['state'],ftString);
  // ts.Text:=StringReplace(s,',',#13,[rfReplaceAll]);
  // Status1:=-1 ; Status2:=-1 ;
  // for i:=0 to ts.Count-1 do begin
  // if i=0 then Status1:=StrToInt(ts[0])-1;
  // if i=1 then Status2:=StrToInt(ts[1])-1;
  // end;//for
  // finally
  // ts.Free;
  // end;//try
  with qry_TrialBalance do
  begin
    Active := False;

    SetArzParameters(qry_TrialBalance, MyParams);

    Parameters.ParamByName('LenPrvAccCode').Value :=
      qry_Init.FieldByName('PrvCodeLength').AsInteger;
    Parameters.ParamByName('LenAccCode').Value :=
      qry_Init.FieldByName('CodeLength').AsInteger;
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
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);;
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);
    Parameters.ParamByName('Status2').Value := -1; // Status2;
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;
    if gv_MultiCompany then
    begin
      qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(qry_TrialBalance.Parameters);

    LblShowLimitPlace1.Caption := '   از تاريخ  ' +
      qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value +
      '  تا تاريخ  ' + qry_TrialBalance.Parameters.ParamByName
      ('DocDateTo').Value;

    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);

    Parameters.ParamByName('CTopicCode3From').Value := 0;
    Parameters.ParamByName('CTopicCode3To').Value := 2147483647;
    if opta.ChkBalancCTopicCode3 then
    begin

      Parameters.ParamByName('CTopicCode3From').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
      Parameters.ParamByName('CTopicCode3To').Value :=
        GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);
    end;

    Active := True;
  end; // with
  LblShowLimitPlace1.Caption := '   از تاريخ  ' +
    qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value +
    '  تا تاريخ  ' + qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;

end;

procedure TRptTrialBalance_AccF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // Call rpt_AccbookF

  if opta.ShowLevel then
    with TfilterF.Create2(Self, myParams) do
      try
        AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
          ftDate, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinDocDate, [APPBank.Year]));
        AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
          'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
        AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
          'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
        if ShowModal = mrOk then
          GetFilterString;
      finally
        Free;
      end; // try
  CreateMDIForm3(False, TRpt_AccBookF, Rpt_AccBookF, RptTrialBalance_AccF,
    formtype);

  with Rpt_AccBookF do
  begin
    with qry_Doc do
    begin
      Active := False;
      if not opta.ShowLevel then
      begin
        Parameters.ParamByName('DocDateFrom').Value :=
          qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value :=
          qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
        Parameters.ParamByName('PrimaryDocNoFrom').Value :=
          qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
        Parameters.ParamByName('SecondaryDocNoFrom').Value :=
          qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      end
      else
      begin
        Parameters.ParamByName('DocDateFrom').Value :=
          GetcFrom(Self.myParams.ParamValues['DocDate'], ftString);
        Parameters.ParamByName('DocDateTo').Value :=
          GetcTo(Self.myParams.ParamValues['DocDate'], ftString);
        Parameters.ParamByName('PrimaryDocNoFrom').Value :=
          GetcFrom(Self.myParams.ParamValues['PrimaryDocNo'], ftInteger);
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          GetcTo(Self.myParams.ParamValues['PrimaryDocNo'], ftInteger);
        Parameters.ParamByName('SecondaryDocNoFrom').Value :=
          GetcFrom(Self.myParams.ParamValues['SecondaryDocNo'], ftInteger);
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          GetcTo(Self.myParams.ParamValues['SecondaryDocNo'], ftInteger);
      end;
      SetParametersqry(qry_Doc,qry_TrialBalance);
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCodeTO').Value := -1;
      // qry_TrialBalance.Parameters.ParamByName('DocTypeCodeto').Value;
      Parameters.ParamByName('ToYearID').Value :=
        qry_TrialBalance.Parameters.ParamByName('ToYearID').Value;
      Parameters.ParamByName('FromYearID').Value :=
        qry_TrialBalance.Parameters.ParamByName('FromYearID').Value;;
      Parameters.ParamByName('AccCodeLen').Value :=
        qry_Init.FieldByName('CodeLength').AsInteger;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value := -1;
      // qry_TrialBalance.Parameters.ParamByName('Status2').Value;
      // Active:=true;
    end; // with);
    with qry_AccCode do
    begin
      Active := False;
      Parameters.ParamByName('FormType').Value := formtype;
      Parameters.ParamByName('AccCodeFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('AccCodeFrom').Value;
      Parameters.ParamByName('AccCodeTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('AccCodeTo').Value;

      Active := True;
    end; // with
    with qry_Companies do
    begin
      Active := False;
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
      Parameters.ParamByName('CompanyCodeTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      SetCompanyFilterinLogin(Parameters);
      Active := True;
    end; // with);
    qry_AccCode.Locate('AccCode', qry_TrialBalance.FieldByName('TopicCode')
      .AsCurrency, []);
  end; // with
end;

procedure TRptTrialBalance_AccF.actAfterLevelExecute(Sender: TObject);
var
  // TopTopice:Currency;
  prvLevelID, PrvCodeLength, CodeLength: integer;
begin
  inherited;
  if qry_TrialBalance.FieldByName('TopicCode').AsString = '' then
    abort;
  // TopTopice:=qry_TrialBalance.FieldByname('TopicCode').AsCurrency;
  with DMF.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT acc.AccTopicLevels.LevelID, acc.AccTopicLevels.CodeLength, ISNULL(AccTopicLevels_1.CodeLength, 0) AS PrvCodeLength '
      + ' FROM  acc.AccTopicLevels LEFT OUTER JOIN  acc.AccTopicLevels AccTopicLevels_1 ON acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID '
      + ' WHERE (acc.AccTopicLevels.TopicType = 0) AND acc.AccTopicLevels.PrvLevelID ='
      + IntToStr(formtype);
    Active := True;
    PrvCodeLength := FieldByName('PrvCodeLength').AsInteger;
    CodeLength := FieldByName('CodeLength').AsInteger;
    prvLevelID := FieldByName('LevelID').AsInteger;
    if FieldByName('LevelID').AsString = '' then
      if not(opta.ActiveCtopic1) then
        mnuDetail.Click
      else
        PopLevel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
    else
      ShowAfterAccCode(prvLevelID, CodeLength, PrvCodeLength);

    Self.LblShowLimitPlace1.Caption := '   از تاريخ  ' +
      qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value +
      '  تا تاريخ  ' + qry_TrialBalance.Parameters.ParamByName
      ('DocDateTo').Value;

  end;

end;

procedure TRptTrialBalance_AccF.actBeforeLevelExecute(Sender: TObject);
var
  LevelID: integer;
begin
  inherited;
  LevelID := formtype - 1;
  ShowBeforeAccCode(LevelID);
end;

procedure TRptTrialBalance_AccF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialBalance_AccF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptTrialBalance_AccF.mnuDetailClick(Sender: TObject);
var
  TopTopice: integer;
  // PrvCodeLength,CodeLength:Integer;
  // s:string;
begin
  inherited;
  TopTopice := qry_TrialBalance.FieldByName('TopicCode').AsLargeInt;
  CreateMDIForm3(False, TRptTrialBalance_DetailsF, RptTrialBalance_DetailsF,
    RptTrialBalance_AccF);
  // ------------------SET Parameters in  TRptTrialBalance_DetailsF  form
  with RptTrialBalance_DetailsF do
  Begin

    with qry_TrialDetailsBalance do
    begin
      Active := False;
      Parameters.ParamByName('CurrencyTypeFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('CurrencyTypeFrom').Value;

      Parameters.ParamByName('CurrencyTypeTO').Value :=
        qry_TrialBalance.Parameters.ParamByName('CurrencyTypeTO').Value;

      Parameters.ParamByName('CurrencyKind').Value :=
        qry_TrialBalance.Parameters.ParamByName('CurrencyKind').Value;

      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      // Self.Param1 ;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      // Self.param2;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      // Self.param3;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status2').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);

      Parameters.ParamByName('DetailCodeFrom').Value := -2147483647;
      Parameters.ParamByName('DetailCodeTo').Value := 2147483647;
      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearId').Value := APPBank.Year;
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;

      Parameters.ParamByName('CTopicCode3From').Value :=
        qry_TrialBalance.Parameters.ParamByName('CTopicCode3From').Value;
      Parameters.ParamByName('CTopicCode3To').Value :=
        qry_TrialBalance.Parameters.ParamByName('CTopicCode3To').Value;

      Active := True;
    end; // with
  end // with_ RptTrialBalance_CTopicsF

end;

procedure TRptTrialBalance_AccF.mnuDetail_arziClick(Sender: TObject);
var
  TopTopice: integer;
  // PrvCodeLength,CodeLength:Integer;
  // s:string;
begin
  inherited;
  TopTopice := qry_TrialBalance.FieldByName('TopicCode').AsLargeInt;
  CreateMDIForm3(False, TRptTrialBalance_AccCode_ArziF,
    RptTrialBalance_AccCode_ArziF, RptTrialBalance_AccF, formtype);
  // ------------------SET Parameters in  TRptTrialBalance_DetailsF  form
  with RptTrialBalance_AccCode_ArziF do
  Begin

    with qry_TrialAccBalance_Arzi do
    begin
      Active := False;
      // Parameters.ParamByName('DocTypeCodeFrom').Value :=
      // qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      // Parameters.ParamByName('DocTypeCodeTo').Value :=
      // qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      // Self.Param1 ;
      // Parameters.ParamByName('DocTypeCode2_Not').Value :=
      // qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      // // Self.param2;
      // Parameters.ParamByName('DocTypeCode3_Not').Value :=
      // qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      // Self.param3;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value :=
      // qry_TrialBalance.Parameters.ParamByName('Status2').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      // Parameters.ParamByName('DetailCodeFrom').Value := -2147483647;
      // Parameters.ParamByName('DetailCodeTo').Value := 2147483647;
      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialBalance.Parameters.ParamByName('FromYearID').Value;
      Parameters.ParamByName('ToYearId').Value :=
        qry_TrialBalance.Parameters.ParamByName('ToYearID').Value;
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;

      // Parameters.ParamByName('CTopicCode3From').Value :=
      // qry_TrialBalance.Parameters.ParamByName('CTopicCode3From').Value;
      // Parameters.ParamByName('CTopicCode3To').Value :=
      // qry_TrialBalance.Parameters.ParamByName('CTopicCode3To').Value;

      Active := True;
    end; // with
  end // with_ RptTrialBalance_CTopicsF

end;

procedure TRptTrialBalance_AccF.mnuCtopic1Click(Sender: TObject);
var
  TopTopice: integer;
  // CodeLength:Integer;

begin
  inherited;
  TopTopice := qry_TrialBalance.FieldByName('TopicCode').AsLargeInt;
  CreateMDIForm3(False, tRptTrialBalance_CTopicsF, RptTrialBalance_CTopicsF,
    MainF); // RptTrialBalance_AccF
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopicsF do
  Begin
    with qry_TrialCTopicBalance do
    begin
      Active := False;
      SetParametersqry(qry_TrialCTopicBalance, qry_TrialBalance);
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status2').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;
      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearId').Value := APPBank.Year;

      // Parameters.ParamByName('CTopicCode3From').Value :=
      // qry_TrialBalance.Parameters.ParamByName('CTopicCode3From').Value;
      // Parameters.ParamByName('CTopicCode3To').Value :=
      // qry_TrialBalance.Parameters.ParamByName('CTopicCode3To').Value;

      Active := True;
    end; // with
  end // with_ RptTrialBalance_CTopicsF
end;

procedure TRptTrialBalance_AccF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialBalance.Requery();
end;

procedure TRptTrialBalance_AccF.qry_TrialBalanceAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1, myParams,qry_TrialBalance)
  // Updateremain;
end;

procedure TRptTrialBalance_AccF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialBalance_AccF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptTrialBalance_AccF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptTrialBalance_AccF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qry_TrialBalance.Parameters.ParamValues['DocDateFrom'] +
    ' تا تاريخ ' + qry_TrialBalance.Parameters.ParamValues['DocDateTo'];

end;

procedure TRptTrialBalance_AccF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' اسناد از ' + IntToStr(qry_TrialBalance.Parameters.ParamValues
    ['PrimaryDocNoFrom']) + ' تا ' +
    IntToStr(qry_TrialBalance.Parameters.ParamValues['PrimaryDocNoTo']);
end;

procedure TRptTrialBalance_AccF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Acc', DBGrid1, ppDBPipeline1);
  finally
    qry_TrialBalance.EnableControls;
  end;
end;

procedure TRptTrialBalance_AccF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Acc_Topic', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialBalance.EnableControls;
  end;
end;

procedure TRptTrialBalance_AccF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case formtype of
    1:
      Text := 'تراز آزمايشي گروه حسابها ';
    2:
      Text := 'ترازآزمايشي حسابهاي كل';
    3:
      Text := 'تراز آزمايشي حسابهاي معین';
    4:
      Text := 'تراز آزمايشي سر فصل حسابها';
  end; // case
end;

procedure TRptTrialBalance_AccF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Acc_L', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialBalance.EnableControls;
  end;
end;

procedure TRptTrialBalance_AccF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Acc_Topic_L', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialBalance.EnableControls;
  end;
end;

procedure TRptTrialBalance_AccF.mnuCtopic2Click(Sender: TObject);
var
  TopTopice: integer;
  // CodeLength:Integer;
begin
  inherited;
  TopTopice := qry_TrialBalance.FieldByName('TopicCode').AsLargeInt;
  CreateMDIForm3(False, TRptTrialBalance_CTopics2F, RptTrialBalance_CTopics2F,
    RptTrialBalance_AccF);
  // ----------------SET Parameters in  RptTrialBalance_CTopics2F form
  with RptTrialBalance_CTopics2F do
  Begin

    with qry_TrialCTopic2Balance do
    begin
      Active := False;
      SetParametersqry(qry_TrialCTopic2Balance, qry_TrialBalance);

      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status2').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;
      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearId').Value := APPBank.Year;

      // Parameters.ParamByName('CTopicCode3From').Value :=
      // qry_TrialBalance.Parameters.ParamByName('CTopicCode3From').Value;
      // Parameters.ParamByName('CTopicCode3To').Value :=
      // qry_TrialBalance.Parameters.ParamByName('CTopicCode3To').Value;

      Active := True;
    end; // with

  end // with_ RptTrialBalance_CTopicsF
end;

procedure TRptTrialBalance_AccF.mnuCtopic3Click(Sender: TObject);
var
  TopTopice: integer;
  // CodeLength:Integer;
begin
  inherited;
  TopTopice := qry_TrialBalance.FieldByName('TopicCode').AsLargeInt;
  CreateMDIForm3(False, TRptTrialBalance_CTopics3F, RptTrialBalance_CTopics3F,
    RptTrialBalance_AccF);
  // ----------------SET Parameters in  RptTrialBalance_CTopics2F form
  with RptTrialBalance_CTopics3F do
  Begin

    with qry_TrialCTopic3Balance do
    begin
      Active := False;
      SetParametersqry(qry_TrialCTopic3Balance, qry_TrialBalance);
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialBalance.Parameters.ParamByName('Status2').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);

      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;
      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearId').Value := APPBank.Year;

      // Parameters.ParamByName('CTopicCode3From').Value :=
      // qry_TrialBalance.Parameters.ParamByName('CTopicCode3From').Value;
      // Parameters.ParamByName('CTopicCode3To').Value :=
      // qry_TrialBalance.Parameters.ParamByName('CTopicCode3To').Value;

      Active := True;
    end; // with

  end // with_ RptTrialBalance_CTopicsF

end;

procedure TRptTrialBalance_AccF.ShowBeforeAccCode(LevelID: integer);
var
  AccCode: integer;
begin
  CreateMDIForm3(False, TRptTrialBalance_AccF, RptTrialBalance_AccF,
    Self, LevelID);
  AccCode := StrToInt(LeftStr(Self.qry_TrialBalance.FieldByName('TopicCode')
    .AsString, Self.qry_Init.FieldByName('PrvCodeLength').AsInteger));

  with RptTrialBalance_AccF do
  Begin
    with qry_TrialBalance do
    begin
      Active := False;
      Parameters := Self.qry_TrialBalance.Parameters;
       SetParametersqry(qry_TrialBalance,qry_Init);
     Parameters.ParamByName('LenPrvAccCode').Value :=
        qry_Init.FieldByName('PrvCodeLength').AsInteger;
      Parameters.ParamByName('LenAccCode').Value :=
        qry_Init.FieldByName('CodeLength').AsInteger;
      // Parameters.ParamByName('DocTypeCodeFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      // Parameters.ParamByName('DocTypeCodeTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      // Parameters.ParamByName('DocTypeCode1_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      // Parameters.ParamByName('DocTypeCode2_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      // Parameters.ParamByName('DocTypeCode3_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      // Parameters.ParamByName('DocDateFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      // Parameters.ParamByName('DocDateTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      // Parameters.ParamByName('PrimaryDocNoFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      // Parameters.ParamByName('PrimaryDocNoTo').Value:= Self.qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      // Parameters.ParamByName('SecondaryDocNoFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      // Parameters.ParamByName('SecondaryDocNoTo').Value:= Self.qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      // Parameters.ParamByName('Status1').Value:=Self.qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value:= Self.qry_TrialBalance.Parameters.ParamByName('Status2').Value;
      // Parameters.ParamByName('FromYearId').Value:=Self.qry_TrialBalance.Parameters.ParamByName('FromYearId').Value;
      // Parameters.ParamByName('ToYearId').Value:=Self.qry_TrialBalance.Parameters.ParamByName('ToYearId').Value;
      Parameters.ParamByName('AccCodeFrom').Value := AccCode;
      Parameters.ParamByName('AccCodeTo').Value := AccCode;
      // Warn(qry_TrialBalance.Parameters.ParamByName('FromYearId').Value);
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          Self.qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          Self.qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);

      Active := True;
    end; // with
    // with Dmf.qry_Temp do begin
    // Active:=False ;
    // SQL.Text:='SELECT LEFT('+Self.qry_TrialBalance.FieldByname('TopicCode').AsString+
    // ','+Self.qry_Init.FieldByname('PrvCodeLength').AsString+') AS TopicCode FROM  acc.Documents';
    // Active:=True ;
    // qry_TrialBalance.Locate('TopicCode',Fieldbyname('TopicCode').AsLargeInt,[]);
    // end;
  end; // with_RptTrialBalance_AccF
end;

procedure TRptTrialBalance_AccF.try1Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Acc_Topic_Currency', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialBalance.EnableControls;
  end;
end;

procedure TRptTrialBalance_AccF.ShowAfterAccCode(prvLevelID, CodeLength,
  PrvCodeLength: integer);
begin
  CreateMDIForm3(False, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self,
    prvLevelID);
  with RptTrialBalance_AccF do
  Begin
    with qry_TrialBalance do
    begin
      Active := False;
      Parameters := Self.qry_TrialBalance.Parameters;
      SetParametersqry(qry_TrialBalance,Self.qry_TrialBalance);
      // Parameters.ParamByName('DocTypeCodeFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      // Parameters.ParamByName('DocTypeCodeTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      // Parameters.ParamByName('DocTypeCode1_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      // Parameters.ParamByName('DocTypeCode2_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      // Parameters.ParamByName('DocTypeCode3_Not').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('LenPrvAccCode').Value := PrvCodeLength;
      Parameters.ParamByName('LenAccCode').Value := CodeLength;
      // Parameters.ParamByName('DocDateFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocDateFrom').Value;
      // Parameters.ParamByName('DocDateTo').Value:=Self.qry_TrialBalance.Parameters.ParamByName('DocDateTo').Value;
      // Parameters.ParamByName('PrimaryDocNoFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      // Parameters.ParamByName('PrimaryDocNoTo').Value:= Self.qry_TrialBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      // Parameters.ParamByName('SecondaryDocNoFrom').Value:=Self.qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      // Parameters.ParamByName('SecondaryDocNoTo').Value:= Self.qry_TrialBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      // Parameters.ParamByName('Status1').Value:=Self.qry_TrialBalance.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value:= Self.qry_TrialBalance.Parameters.ParamByName('Status2').Value;
      // Parameters.ParamByName('FromYearId').Value:=qry_TrialBalance.Parameters.ParamByName('FromYearId').Value;
      // Parameters.ParamByName('ToYearId').Value:=qry_TrialBalance.Parameters.ParamByName('ToYearId').Value;
      with DMF.qry_Temp do
      begin
        Active := False;
        SQL.Text := 'SELECT  MIN(LEFT(TopicCode, ' + IntToStr(CodeLength) +
          ')) AS MinTopicCode, ' + 'MAX(LEFT(TopicCode, ' + IntToStr(CodeLength)
          + ')) AS MaxTopicCode ' +
          ' FROM  acc.Documents WHERE LEFT(TopicCode, ' +
          IntToStr(PrvCodeLength) + ') = ' + Self.qry_TrialBalance.FieldByName
          ('TopicCode').AsString;
        Active := True;
        qry_TrialBalance.Parameters.ParamByName('AccCodeFrom').Value :=
          FieldByName('MinTopicCode').AsCurrency;
        qry_TrialBalance.Parameters.ParamByName('AccCodeTo').Value :=
          FieldByName('MaxTopicCode').AsCurrency;
      end; // with
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          Self.qry_TrialBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          Self.qry_TrialBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);

      Active := True;
    end; // with  qry_TrialBalance
  end; // with_RptTrialBalance_Acc2F

end;

procedure TRptTrialBalance_AccF.N1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, LblShowLimitPlace1.Caption);
end;

procedure TRptTrialBalance_AccF.N2Click(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qry_TrialBalance, Self);
end;

procedure TRptTrialBalance_AccF.N3Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TRptTrialBalance_AccF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TRptTrialBalance_AccF.N4Click(Sender: TObject);
begin
  inherited;
  topicsNoteF.enter(qry_TrialBalance.FieldByName('TopicCode').AsLargeInt);

end;

procedure TRptTrialBalance_AccF.N5Click(Sender: TObject);
var
  txt: String;
  results: array [0 .. 5] of String;
begin
  inherited;
  txt := 'SELECT  Categories_1.TopicCode, Categories_1.MoeenName_L1, AccTrialBalance.Credit,'
    + ' AccTrialBalance.Debt, AccTrialBalance.BalanceDebt , AccTrialBalance.BalanceCredit '
    + ' FROM acc.AccTrialBalance(' + qry_Init.FieldByName('PrvCodeLength')
    .AsString +
    ', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,' + ' ' +
    qry_Init.FieldByName('CodeLength').AsString + ', DEFAULT, DEFAULT, DEFAULT,'
    + ' DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,' +
    IntToStr(APPBank.Year) + ',' + IntToStr(APPBank.Year) +
    ', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT) AccTrialBalance INNER JOIN'
    + ' acc.Categories Categories_1 ON AccTrialBalance.TopicCode = Categories_1.TopicCode LEFT OUTER JOIN'
    + ' acc.Categories Categories_2 ON AccTrialBalance.PrvTopicCode = Categories_2.TopicCode';

  if searchCode_ADOF.SearchCode2(DMF.adcAccounting, 'جستجوي ', txt,
    ['كد حساب', 'نام حساب', 'بستانكار', 'بدهكار', 'مانده بدهكار',
    'مانده بستانكار'], results, [50, 100, 100, 100, 100, 100], alLeft) then

    qry_TrialBalance.Locate('TopicCode', results[0], []);

end;

procedure TRptTrialBalance_AccF.N8Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Acc_Topic_AllCurrency', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialBalance.EnableControls;
  end;

end;

end.
