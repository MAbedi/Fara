unit RptTrialBalance_CTopics2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, ComCtrls, Menus, Filter_ADO_Const,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppParameter, ppDesignLayer,AccFunctions,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TRptTrialBalance_CTopics2F = class(Ttemplate2MDIF)
    qry_TrialCTopic2Balance: TADOQuery;
    qry_TrialCTopic2BalanceTopicCode: TLargeintField;
    qry_TrialCTopic2BalanceMoeenName: TStringField;
    qry_TrialCTopic2BalanceDebt: TFMTBCDField;
    qry_TrialCTopic2BalanceCredit: TFMTBCDField;
    src_TrialCTopic2Balance: TDataSource;
    qry_TrialCTopic2BalanceCTopicCode: TIntegerField;
    qry_TrialCTopic2BalanceCTopicName: TStringField;
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
    qry_TrialCTopic2BalanceBalanceDebt: TFMTBCDField;
    qry_TrialCTopic2BalanceBalanceCredit: TFMTBCDField;
    qry_TrialCTopic2BalanceMoeenName_L2: TStringField;
    qry_TrialCTopic2BalanceCTopicName_L2: TStringField;
    BitBtn1: TBitBtn;
    actBeforeLevel: TAction;
    actUpdate: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    qry_TrialCTopic2Balancebes: TBCDField;
    qry_TrialCTopic2Balancebed: TBCDField;
    qry_TrialCTopic2BalanceMandehBed: TBCDField;
    qry_TrialCTopic2Balance_row: TLargeintField;
    qry_TrialCTopic2BalanceMandehbes: TBCDField;
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
    BitBtn2: TBitBtn;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    actFilterForm: TAction;
    N1: TMenuItem;
    qry_TrialCTopic2BalanceYearID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    qry_TrialCTopic2BalanceCurrencyType: TIntegerField;
    qry_TrialCTopic2BalanceCurrenciesName: TStringField;
    qry_TrialCTopic2BalanceCurrencyDebit: TFMTBCDField;
    qry_TrialCTopic2BalanceCurrencyCredit: TFMTBCDField;
    qry_TrialCTopic2BalanceBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialCTopic2BalanceBalanceCurrencyCredit: TFMTBCDField;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qry_TrialCTopic2BalanceAfterOpen(DataSet: TDataSet);
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
    procedure N3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
    ShowFilter: boolean;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptTrialBalance_CTopics2F: TRptTrialBalance_CTopics2F;
  cloned: TADOQuery;

implementation

uses FilterClass_ADO, filter_ADO, GlobalPro, Dm, search2, sort2,

  RptTrialBalance_CTopics,
  Rpt_Ctopics2OnTopicBook, FormFunctions, DBGrid2Print, Resource,
  Rpt_Ctopics3OnTopicBook;

{$R *.dfm}

procedure TRptTrialBalance_CTopics2F.FormShow(Sender: TObject);
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

procedure TRptTrialBalance_CTopics2F.actFilterExecute(Sender: TObject);
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
        dvDefaults, 'true', '', ciCheck, strLookupStatus);
      AddItem(DMF.adcAccounting, 'checked', 'انواع سند', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes ', '');
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, tmpDefault, '0000/00/00', '9999/99/99', ciSimple, '',
        Format(strMaxMinDocDate, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'CtopicCode2', 'تفصیلی 3', 'كد ', ftInteger,
        dvMinMax, '', '', ciLookup, strLookUpCTopic2, strMaxMinCTopicCode2);
      AddItem(DMF.adcAccounting, 'AccCode', ' حساب ', 'كد حساب', ftLargeint,
        dvMinMax, '', '', ciLookup,
        'SELECT  acc.Documents.TopicCode, acc.Categories.MoeenName_L1 ' +
        ' FROM acc.Documents INNER JOIN   acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode '
        + ' GROUP BY acc.Documents.TopicCode, acc.Categories.MoeenName_L1',
        'SELECT Min(acc.Documents.TopicCode)  , Max(acc.Documents.TopicCode)  FROM acc.Documents');

      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies WHERE CompanyName_L1 Like :c',
          'SELECT 0,999999999');
      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM Util.maliYear');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TRptTrialBalance_CTopics2F.FormCreate(Sender: TObject);
begin
  inherited;
  ShowFilter := var_glb_Boolean;
  // itForm;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
end;

procedure TRptTrialBalance_CTopics2F.UpdateFilter;
begin
  with qry_TrialCTopic2Balance do
  begin
    Active := false;

    SetArzParameters(qry_TrialCTopic2Balance,MyParams);

    // Parameters.ParamByName('DocTypeCodeFrom').Value:=GetcFrom(myParams.ParamValues['DocTypeCode'],ftInteger);
    // Parameters.ParamByName('DocTypeCodeTo').Value:=GetcTo(myParams.ParamValues['DocTypeCode'],ftInteger);;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);

    Parameters.ParamByName('Status2').Value := 0;
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
      qry_TrialCTopic2Balance.Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      qry_TrialCTopic2Balance.Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end; // if
    SetCompanyFilterinLogin(qry_TrialCTopic2Balance.Parameters);
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Active := true;
  end; // with
end;

procedure TRptTrialBalance_CTopics2F.qry_TrialCTopic2BalanceAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  // Updateremain;
  DBGridCurrencyKind(DBGrid1,myParams,qry_TrialCTopic2Balance)
end;

procedure TRptTrialBalance_CTopics2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialCTopic2Balance);
end;

procedure TRptTrialBalance_CTopics2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialCTopic2Balance);
end;

procedure TRptTrialBalance_CTopics2F.actSendExeclExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptTrialBalance_CTopics2F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRpt_Ctopics2OnTopicBookF,
    Rpt_Ctopics2OnTopicBookF, Self);
  with Rpt_Ctopics2OnTopicBookF do
  begin
    with qry_Doc do
    begin
      Active := false;
            SetParametersqry(qry_Doc,qry_TrialCTopic2Balance)   ;
      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      Active := true;
    end; // with
    with qry_AccCode do
    begin
      Active := false;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('TopicCodeFrom').Value :=
        qry_TrialCTopic2BalanceTopicCode.AsInteger;
      Parameters.ParamByName('TopicCodeTo').Value :=
        qry_TrialCTopic2BalanceTopicCode.AsInteger;

      if Parameters.FindParam('CTopicCode2From') <> nil then
        Parameters.ParamByName('CTopicCode2From').Value :=
          qry_TrialCTopic2BalanceCTopicCode.AsInteger;

      if Parameters.FindParam('CTopicCode2to') <> nil then
        Parameters.ParamByName('CTopicCode2to').Value :=
          qry_TrialCTopic2BalanceCTopicCode.AsInteger;

      Parameters.ParamByName('Status').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value :=
      // qry_TrialCTopic2Balance.Parameters.ParamByName('Status2').Value;
      Active := true;
    end; // with

    with qry_Companies do
    begin
      Active := false;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialCTopic2Balance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialCTopic2Balance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Active := true;
    end; // with
  end; // with
end;

procedure TRptTrialBalance_CTopics2F.actBeforeLevelExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRptTrialBalance_CTopicsF,
    RptTrialBalance_CTopicsF, Self);
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopicsF do
    with qry_TrialCTopicBalance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopicBalance,qry_TrialCTopic2Balance)   ;

      // Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialCTopic2Balance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      // Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialCTopic2Balance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName
        ('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName
        ('DocTypeCode3_Not').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('DocDateFrom').Value;
      // GetcFrom(myParams.ParamValues['DocDate'],ftString);
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('DocDateTo').Value;
      // GetcTo(myParams.ParamValues['DocDate'],ftString);
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('PrimaryDocNoFrom')
        .Value; // GetcFrom(myParams.ParamValues['PrimaryDocNo'],ftInteger);
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      // GetcTo(myParams.ParamValues['PrimaryDocNo'],ftInteger);
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('SecondaryDocNoFrom')
        .Value; // GetcFrom(myParams.ParamValues['SecondaryDocNo'],ftInteger);
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('SecondaryDocNoTo')
        .Value; // etcTo(myParams.ParamValues['SecondaryDocNo'],ftInteger);
      Parameters.ParamByName('Status1').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;

      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialCTopic2Balance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialCTopic2Balance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Active := true;
      qry_TrialCTopicBalance.Locate('TopicCode',
        qry_TrialCTopic2Balance.Fieldbyname('TopicCode').AsLargeInt, []);
    end
end;

procedure TRptTrialBalance_CTopics2F.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialCTopic2Balance.Requery();
end;

procedure TRptTrialBalance_CTopics2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_TrialCTopic2Balance.DisableControls;
    PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qry_TrialCTopic2Balance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_CTopics2F.MenuItem2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2F.MenuItem1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_Topic', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2F.MenuItem3Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_Topic_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2F.MenuItem4Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2F.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qry_TrialCTopic2Balance.Fieldbyname('TopicCode').AsString + '_' +
    qry_TrialCTopic2Balance.Fieldbyname('CTopicCode').AsString;
end;

procedure TRptTrialBalance_CTopics2F.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptTrialBalance_CTopics2F.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptTrialBalance_CTopics2F.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialBalance_CTopics2F.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qry_TrialCTopic2Balance.Parameters.ParamValues
    ['DocDateFrom'] + ' تا تاريخ ' + qry_TrialCTopic2Balance.Parameters.
    ParamValues['DocDateTo'];
end;

procedure TRptTrialBalance_CTopics2F.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'اسناد موقت از ' + qry_TrialCTopic2Balance.Parameters.ParamValues
    ['SecondaryDocNoFrom'] + ' تا ' + qry_TrialCTopic2Balance.Parameters.
    ParamValues['SecondaryDocNoTo'];
end;

procedure TRptTrialBalance_CTopics2F.N3Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TRptTrialBalance_CTopics2F.N4Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_Topic_AllCurrency', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2F.N5Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_Topic_Currency', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2F.MenuItem5Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRptTrialBalance_CTopics2F.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

end.
