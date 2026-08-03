unit RptTrialBalance_CTopics_Details;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, ADODB,
  DB, Forms, Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Filter_ADO_Const,AccFunctions,   FaraConsts,
  Buttons, DBCtrls, ComCtrls, Menus,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppParameter, Mymostafa,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TRptTrialBalance_CTopics_DetailsF = class(Ttemplate2MDIF)
    qry_TrialCTopicBalance: TADOQuery;
    src_TrialCTopicBalance: TDataSource;
    actFilter: TAction;
    actPrint: TAction;
    actShowForm: TAction;
    actSort: TAction;
    actSendExecl: TAction;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    actBeforeLevel: TAction;
    actUpdate: TAction;
    ButtenLevelLow: TBitBtn;
    actAfterLevel: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
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
    ppLine30: TppLine;
    ppLabel13: TppLabel;
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
    ppLine31: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLine21: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLabel11: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText6: TppDBText;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine18: TppLine;
    ppLine20: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppDBText7: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLine12: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel1: TppLabel;
    ppDBText8: TppDBText;
    BitBtn2: TBitBtn;
    actOther: TAction;
    actFilterForm: TAction;
    qry_TrialCTopicBalanceTopicCode: TLargeintField;
    qry_TrialCTopicBalanceCTopicCode: TIntegerField;
    qry_TrialCTopicBalanceDetailCode: TIntegerField;
    qry_TrialCTopicBalanceName: TStringField;
    qry_TrialCTopicBalanceDebt: TFMTBCDField;
    qry_TrialCTopicBalanceCredit: TFMTBCDField;
    qry_TrialCTopicBalanceBalanceDebt: TFMTBCDField;
    qry_TrialCTopicBalanceBalanceCredit: TFMTBCDField;
    qry_TrialCTopicBalanceName_L2: TStringField;
    qry_TrialCTopicBalanceMoeenName_L1: TStringField;
    qry_TrialCTopicBalanceDetailName: TStringField;
    qry_TrialCTopicBalanceCTopicName: TStringField;
    DBGrid1: TCedarDbgrid;
    qry_TrialCTopicBalanceCurrencyType: TIntegerField;
    qry_TrialCTopicBalanceCurrenciesName: TStringField;
    qry_TrialCTopicBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialCTopicBalanceCurrencyCredit: TFMTBCDField;
    qry_TrialCTopicBalanceBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialCTopicBalanceBalanceCurrencyCredit: TFMTBCDField;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExeclExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actBeforeLevelExecute(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppDBText4GetText(Sender: TObject; var Text: String);
    procedure actAfterLevelExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qrySumCTopicAfterOpen(DataSet: TDataSet);
    procedure qry_TrialCTopicBalanceAfterOpen(DataSet: TDataSet);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
    // flag:boolean;

    ShowFilter: boolean;

    procedure ShowBeforeAccCode(formtype: Integer);
    procedure UpdateFilter;

  public
    { Public declarations }
  end;

var
  RptTrialBalance_CTopics_DetailsF: TRptTrialBalance_CTopics_DetailsF;
  cloned: TADOQuery;

implementation

uses FilterClass_ADO, filter_ADO, GlobalPro, Dm, search2, sort2,
  RptTrialBalance_Acc, Rpt_CtopicsOnTopicBook, Rpt_CtopicsOnDetailsBook,
  RptTrialBalance_CTopics2,
  DBGrid2Print, AccUnits, FormFunctions, Resource;

{$R *.dfm}

procedure TRptTrialBalance_CTopics_DetailsF.FormShow(Sender: TObject);
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

procedure TRptTrialBalance_CTopics_DetailsF.actFilterExecute(Sender: TObject);
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
      AddItem(DMF.adcAccounting, 'CtopicCode', 'حساب تفصیلی 2', 'كد ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpCtopic1,
        strMaxMinCtopic1);
      AddItem(DMF.adcAccounting, 'DetailCode', 'حساب تفصيلي 1', 'كد تفصيلي 1',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'AccCode', ' حساب ', 'كد حساب', ftLargeint,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT TopicCode, MoeenName_L1 fROM ACC.AccTrialCTopicsBalance(DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
        + 'DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
        + IntToStr(APPBank.Year) + ',' + IntToStr(APPBank.Year) +
        ', DEFAULT, DEFAULT, DEFAULT) AccTrialCTopicsBalance',
        'SELECT MIN(TopicCode) , MAX(TopicCode) ' +
        'FROM  ACC.AccTrialCTopicsBalance(DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
        + 'DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
        + IntToStr(APPBank.Year) + ',' + IntToStr(APPBank.Year) +
        ', DEFAULT, DEFAULT, DEFAULT) AccTrialCTopicsBalance');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup, strLookUpCompany+User.CompanieCodes,
          strMaxMinCompany);
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

procedure TRptTrialBalance_CTopics_DetailsF.FormCreate(Sender: TObject);
begin
  inherited;
  cloned := TADOQuery.Create(Self);
  ShowFilter := var_glb_Boolean;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
end;

procedure TRptTrialBalance_CTopics_DetailsF.UpdateFilter;
begin
  with qry_TrialCTopicBalance do
  begin
    Active := false;
    SetArzParameters(qry_TrialCTopicBalance,MyParams);
    Parameters.ParamByName('DocTypeCode_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);;
    Parameters.ParamByName('Status').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftDate);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftDate);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
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
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value := 0;
      Parameters.ParamByName('CompanyCodeTo').Value := 9999;
    end;
    SetCompanyFilterinLogin(Parameters);

    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);

    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);

    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Active := true;

  end; // with

end;

procedure TRptTrialBalance_CTopics_DetailsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialCTopicBalance);
end;

procedure TRptTrialBalance_CTopics_DetailsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialCTopicBalance);
end;

procedure TRptTrialBalance_CTopics_DetailsF.actSendExeclExecute
  (Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptTrialBalance_CTopics_DetailsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRpt_CtopicsOnDetailsBookF,
    Rpt_CtopicsOnDetailsBookF, Self);
  with Rpt_CtopicsOnDetailsBookF do
  begin
    with qry_AccCode do
    begin
      Active := false;
      SetParametersqry(qry_AccCode,qry_TrialCTopicBalance)   ;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('TopicCodeFrom').Value :=
        qry_TrialCTopicBalanceTopicCode.AsLargeInt;
      Parameters.ParamByName('TopicCodeTo').Value :=
        qry_TrialCTopicBalanceTopicCode.AsLargeInt;
      Parameters.ParamByName('CTopicCodeFrom').Value :=
        qry_TrialCTopicBalanceCTopicCode.AsInteger;
      Parameters.ParamByName('CTopicCodeto').Value :=
        qry_TrialCTopicBalanceCTopicCode.AsInteger;
      Parameters.ParamByName('DetailCodeFrom').Value :=
        qry_TrialCTopicBalanceDetailCode.AsInteger;
      Parameters.ParamByName('DetailCodeTo').Value :=
        qry_TrialCTopicBalanceDetailCode.AsInteger;

      Active := true;
    end; // with
    with qry_Doc do
    begin
      Active := false;
      SetParametersqry(qry_doc,qry_TrialCTopicBalance)   ;
      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('Status').Value;
      Parameters.ParamByName('Status2').Value := -1;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode_Not').Value;
      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('FromYearId').Value;
      Parameters.ParamByName('ToYearID').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('ToYearID').Value;
      // محدوده‌ی کد حساب همون فیلتری باشه که کاربر در تراز آزمایشی وارد کرده
      Parameters.ParamByName('AccCode').Value :=
        qry_TrialCTopicBalanceTopicCode.AsLargeInt;
      Parameters.ParamByName('CTopicCode').Value :=
        qry_TrialCTopicBalanceCTopicCode.AsInteger;
      Parameters.ParamByName('DetailCode').Value :=
        qry_TrialCTopicBalanceDetailCode.AsInteger;
      Active := true;
    end; // with
    with qry_Companies do
    begin
      Active := false;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialCTopicBalance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialCTopicBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Active := true;
    end; // with

  end; // with

end;

procedure TRptTrialBalance_CTopics_DetailsF.actBeforeLevelExecute
  (Sender: TObject);
begin
  inherited;
  if qry_TrialCTopicBalance.Fieldbyname('TopicCode').AsString = '' then
    abort;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT  MAX(LevelID) AS MaxLevel  FROM  ACC.AccTopicLevels ' +
      'WHERE  (TopicType = 0)  GROUP BY TopicType';
    Active := true;
    ShowBeforeAccCode(Fieldbyname('MaxLevel').AsInteger);
  end;
end;

procedure TRptTrialBalance_CTopics_DetailsF.qrySumCTopicAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  // StatusBar4.Panels[0].Text := 'بس=' +
  // CurrToStrF(qrySumCTopic.Fieldbyname('sumBalanceCredit').AsCurrency,
  // ffCurrency, 0);
  // StatusBar4.Panels[1].Text := 'بد=' +
  // CurrToStrF(qrySumCTopic.Fieldbyname('sumBalanceDebt').AsCurrency,
  // ffCurrency, 0);
  // StatusBar4.Panels[2].Text := 'بس=' +
  // CurrToStrF(qrySumCTopic.Fieldbyname('sumCredit').AsCurrency, ffCurrency, 0);
  // StatusBar4.Panels[3].Text := 'بد=' +
  // CurrToStrF(qrySumCTopic.Fieldbyname('sumDebt').AsCurrency, ffCurrency, 0);
  // StatusBar4.Panels[4].Text := ' جمع ' + qry_TrialCTopicBalance.Fieldbyname
  // ('MoeenName_L1').AsString;

end;

procedure TRptTrialBalance_CTopics_DetailsF.qry_TrialCTopicBalanceAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1,myParams,qry_TrialCTopicBalance)
end;

procedure TRptTrialBalance_CTopics_DetailsF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialCTopicBalance.Requery();
end;

procedure TRptTrialBalance_CTopics_DetailsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_TrialCTopicBalance.DisableControls;
    PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qry_TrialCTopicBalance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_CTopics_DetailsF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics_DetailsF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics_DetailsF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics_DetailsF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics_DetailsF.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qry_TrialCTopicBalance.Fieldbyname('TopicCode').AsString + '_' +
    qry_TrialCTopicBalance.Fieldbyname('CTopicCode').AsString;
end;

procedure TRptTrialBalance_CTopics_DetailsF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptTrialBalance_CTopics_DetailsF.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptTrialBalance_CTopics_DetailsF.ppLBCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialBalance_CTopics_DetailsF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qry_TrialCTopicBalance.Parameters.ParamValues
    ['DocDateFrom'] + ' تا تاريخ ' + qry_TrialCTopicBalance.Parameters.
    ParamValues['DocDateTo'];
end;

procedure TRptTrialBalance_CTopics_DetailsF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' اسناد از ' + IntToStr(qry_TrialCTopicBalance.Parameters.ParamValues
    ['PrimaryDocNoFrom']) + ' تا ' +
    IntToStr(qry_TrialCTopicBalance.Parameters.ParamValues['PrimaryDocNoTo']);
end;

procedure TRptTrialBalance_CTopics_DetailsF.actAfterLevelExecute
  (Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRptTrialBalance_CTopics2F,
    RptTrialBalance_CTopics2F, Self);
  // -----------------SET Parameters in  RptTrialBalance_CTopics2F form
  with RptTrialBalance_CTopics2F do
  begin
    with qry_TrialCTopic2Balance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopic2Balance,qry_TrialCTopicBalance)   ;
      Parameters.ParamByName('CurrencyTypeFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('CurrencyTypeFrom').Value;
      Parameters.ParamByName('CurrencyTypeTO').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('CurrencyTypeTO').Value;
      Parameters.ParamByName('CurrencyKind').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('CurrencyKind').Value;

      Parameters.ParamByName('DocTypeCodeFrom').Value := -1;
      Parameters.ParamByName('DocTypeCodeTo').Value := -1;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value := -1;
      Parameters.ParamByName('DocTypeCode3_Not').Value := -1;
      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('Status').Value;
      Parameters.ParamByName('Status2').Value := -1;
      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialCTopicBalance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialCTopicBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value :=
        qry_TrialCTopicBalance.Fieldbyname('TopicCode').AsLargeInt;
      Parameters.ParamByName('AccCodeTo').Value :=
        qry_TrialCTopicBalance.Fieldbyname('TopicCode').AsLargeInt;
      Active := true;
    end; // with
  end; // with form
end;

procedure TRptTrialBalance_CTopics_DetailsF.ShowBeforeAccCode
  (formtype: Integer);
begin
  CreateMDIForm3(false, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self,
    formtype);
  with RptTrialBalance_AccF do
  Begin
    with qry_TrialBalance do
    begin
      Active := false;
      SetParametersqry(qry_TrialBalance,qry_TrialCTopicBalance)   ;
      Parameters.ParamByName('DocTypeCodeFrom').Value := -1;
      Parameters.ParamByName('DocTypeCodeTo').Value := -1;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value := -1;
      Parameters.ParamByName('DocTypeCode3_Not').Value := -1;
      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('Status').Value;
      Parameters.ParamByName('Status2').Value := -1;
      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialCTopicBalance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialCTopicBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Active := true;
    end; // with
    qry_TrialBalance.Locate('TopicCode',
      qry_TrialCTopicBalance.Fieldbyname('TopicCode').AsLargeInt, []);
  end; // with_RptTrialBalance_Acc2F

end;

procedure TRptTrialBalance_CTopics_DetailsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowFormExecute(Sender);
end;

procedure TRptTrialBalance_CTopics_DetailsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_TrialCTopicBalance.Fieldbyname('CTopicCode'));
end;

procedure TRptTrialBalance_CTopics_DetailsF.N1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRptTrialBalance_CTopics_DetailsF.N3Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TRptTrialBalance_CTopics_DetailsF.N5Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic_AllCurrency', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics_DetailsF.N6Click(Sender: TObject);
begin
  inherited;
    InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic_Currency', DBGrid1,
    ppDBPipeline1);
end;

end.
