unit RptTrialBalance_CTopics3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, ComCtrls, Menus,Filter_ADO_Const,AccFunctions,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, SumDBGrid, ppParameter, FarsiReportBuilde,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TRptTrialBalance_CTopics3F = class(Ttemplate2MDIF)
    qry_TrialCTopic3Balance: TADOQuery;
    qry_TrialCTopic3BalanceTopicCode: TLargeintField;
    qry_TrialCTopic3BalanceMoeenName: TStringField;
    qry_TrialCTopic3BalanceDebt: TFMTBCDField;
    qry_TrialCTopic3BalanceCredit: TFMTBCDField;
    src_TrialCTopic3Balance: TDataSource;
    qry_TrialCTopic3BalanceCTopicCode: TIntegerField;
    qry_TrialCTopic3BalanceCTopicName: TStringField;
    actFilter: TAction;
    actPrint: TAction;
    actShowForm: TAction;
    actSort: TAction;
    actSendExcel: TAction;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    qry_TrialCTopic3BalanceBalanceDebt: TFMTBCDField;
    qry_TrialCTopic3BalanceBalanceCredit: TFMTBCDField;
    qry_TrialCTopic3BalanceMoeenName_L2: TStringField;
    qry_TrialCTopic3BalanceCTopicName_L2: TStringField;
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
    qry_TrialCTopic3Balancebes: TFMTBCDField;
    qry_TrialCTopic3Balancebed: TFMTBCDField;
    qry_TrialCTopic3BalanceMandehBed: TFMTBCDField;
    qry_TrialCTopic3Balance_row: TLargeintField;
    qry_TrialCTopic3BalanceMandehbes: TFMTBCDField;
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
    actFilterForm: TAction;
    qry_TrialCTopic3BalanceYearID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    qry_TrialCTopic3BalanceCurrencyType: TIntegerField;
    qry_TrialCTopic3BalanceCurrenciesName: TStringField;
    qry_TrialCTopic3BalanceCurrencyDebit: TFMTBCDField;
    qry_TrialCTopic3BalanceCurrencyCredit: TFMTBCDField;
    qry_TrialCTopic3BalanceBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialCTopic3BalanceBalanceCurrencyCredit: TFMTBCDField;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qry_TrialCTopic3BalanceAfterOpen(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
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
    procedure DBGrid1DblClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    ShowFilter: boolean;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptTrialBalance_CTopics3F: TRptTrialBalance_CTopics3F;
  cloned: TADOQuery;

implementation

uses FilterClass_ADO, filter_ADO, GlobalPro, Dm, search2, sort2,

  RptTrialBalance_CTopics,
  Rpt_Ctopics2OnTopicBook, FormFunctions, DBGrid2Print, Resource,
  Rpt_Ctopics3OnTopicBook;

{$R *.dfm}

procedure TRptTrialBalance_CTopics3F.FormShow(Sender: TObject);
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

procedure TRptTrialBalance_CTopics3F.actFilterExecute(Sender: TObject);
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
        'شماره سند', ftInteger, tmpDefault, '0', '999999', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, tmpDefault, '0', '999999', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'CtopicCode3', 'تفصیلی 4', 'كد ', ftInteger,
        dvMinMax, '', '', ciLookup, strLookUpCTopicCode3, strMaxMinCTopicCode3);
      AddItem(DMF.adcAccounting, 'AccCode', ' حساب ', 'كد حساب', ftLargeint,
        dvMinMax, '', '', ciLookup,
        'SELECT  acc.Documents.TopicCode, acc.Categories.MoeenName_L1 ' +
        ' FROM acc.Documents INNER JOIN   acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode '
        + ' GROUP BY acc.Documents.TopicCode, acc.Categories.MoeenName_L1',
        'SELECT Min(acc.Documents.TopicCode)  , Max(acc.Documents.TopicCode)  FROM acc.Documents');

      if gv_MultiCompany then
       AddItemFilter(GetFilter,TFltCompanyCode);

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

procedure TRptTrialBalance_CTopics3F.FormCreate(Sender: TObject);
begin
  inherited;
  ShowFilter := var_glb_Boolean;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
  // itForm;
end;

procedure TRptTrialBalance_CTopics3F.UpdateFilter;
begin
  with qry_TrialCTopic3Balance do
  begin
    Active := false;

    SetArzParameters(qry_TrialCTopic3Balance,MyParams);

    if Parameters.FindParam('DocTypeCodeFrom') <> nil then
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['checked'], ftInteger);

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
      qry_TrialCTopic3Balance.Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      qry_TrialCTopic3Balance.Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end; // if
    SetCompanyFilterinLogin(qry_TrialCTopic3Balance.Parameters);
    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Active := true;
  end; // with
end;

procedure TRptTrialBalance_CTopics3F.qry_TrialCTopic3BalanceAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1,myParams,qry_TrialCTopic3Balance);
  DBGrid1.SetFooter4Sum([]);
  // Updateremain;
end;

procedure TRptTrialBalance_CTopics3F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialCTopic3Balance);
end;

procedure TRptTrialBalance_CTopics3F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialCTopic3Balance);
end;

procedure TRptTrialBalance_CTopics3F.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptTrialBalance_CTopics3F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  if (ActiveSortTitle) and (DBGrid1.Tag = 0) then
  begin
    // OnTitel := DBGrid1.OnTitleClick;
    DBGrid1.OnTitleClick := nil;
  end;
  CreateMDIForm3(false, TRpt_Ctopics3OnTopicBookF,
    Rpt_Ctopics3OnTopicBookF, Self);
  with Rpt_Ctopics3OnTopicBookF do
  begin
    with qry_Doc do
    begin
      Active := false;
      SetParametersqry(qry_Doc,qry_TrialCTopic3Balance)   ;
      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;//
    end; // with
    with qry_AccCode do
    begin
      Active := false;
      SetParametersqry(qry_AccCode,qry_TrialCTopic3Balance)   ;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('TopicCodeFrom').Value :=
        qry_TrialCTopic3BalanceTopicCode.AsLargeInt;
      Parameters.ParamByName('TopicCodeTo').Value :=
        qry_TrialCTopic3BalanceTopicCode.AsLargeInt;
      Parameters.ParamByName('CTopicCode3From').Value :=
        qry_TrialCTopic3BalanceCTopicCode.AsLargeInt;
      Parameters.ParamByName('CTopicCode3to').Value :=
        qry_TrialCTopic3BalanceCTopicCode.AsLargeInt;
      Parameters.ParamByName('Status').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('Status1').Value;

    end; // with
    with qry_Companies do
    begin
      Active := false;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialCTopic3Balance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialCTopic3Balance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
    SetCompanyFilterinLogin(Parameters);
      Active := true;
    end; // with
  end; // with
end;

procedure TRptTrialBalance_CTopics3F.actBeforeLevelExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRptTrialBalance_CTopicsF,
    RptTrialBalance_CTopicsF, Self);
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopicsF do
    with qry_TrialCTopicBalance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopicBalance,qry_TrialCTopic3Balance)   ;
      // Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialCTopic2Balance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      // Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialCTopic2Balance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName
        ('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName
        ('DocTypeCode3_Not').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('DocDateFrom').Value;
      // GetcFrom(myParams.ParamValues['DocDate'],ftString);
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('DocDateTo').Value;
      // GetcTo(myParams.ParamValues['DocDate'],ftString);
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('PrimaryDocNoFrom')
        .Value; // GetcFrom(myParams.ParamValues['PrimaryDocNo'],ftInteger);
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      // GetcTo(myParams.ParamValues['PrimaryDocNo'],ftInteger);
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('SecondaryDocNoFrom')
        .Value; // GetcFrom(myParams.ParamValues['SecondaryDocNo'],ftInteger);
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('SecondaryDocNoTo')
        .Value; // etcTo(myParams.ParamValues['SecondaryDocNo'],ftInteger);
      Parameters.ParamByName('Status1').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('FromYearId').Value;
      Parameters.ParamByName('ToYearID').Value :=
        qry_TrialCTopic3Balance.Parameters.ParamByName('ToYearID').Value;

      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialCTopic3Balance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialCTopic3Balance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
    SetCompanyFilterinLogin(Parameters);
      Active := true;
      qry_TrialCTopicBalance.Locate('TopicCode',
        qry_TrialCTopic3Balance.Fieldbyname('TopicCode').AsLargeInt, []);
    end
end;

procedure TRptTrialBalance_CTopics3F.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialCTopic3Balance.Requery();
end;

procedure TRptTrialBalance_CTopics3F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute;
end;

procedure TRptTrialBalance_CTopics3F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_TrialCTopic3Balance.DisableControls;
    PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qry_TrialCTopic3Balance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_CTopics3F.MenuItem2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics3', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics3F.MenuItem1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics3_Topic', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics3F.MenuItem3Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics3_Topic_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics3F.MenuItem4Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics3_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics3F.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qry_TrialCTopic3Balance.Fieldbyname('TopicCode').AsString + '_' +
    qry_TrialCTopic3Balance.Fieldbyname('CTopicCode').AsString;
end;

procedure TRptTrialBalance_CTopics3F.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptTrialBalance_CTopics3F.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptTrialBalance_CTopics3F.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialBalance_CTopics3F.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text := 'از تاريخ ' + GetcFrom(myParams.ParamValues['DocDate'], ftString) +
  // ' تا تاريخ ' + GetcTo(myParams.ParamValues['DocDate'], ftString);
  Text := 'از تاریخ  ' + (qry_TrialCTopic3Balance.Parameters.ParamByName
    ('DocDateFrom').Value) + '  تا تاریخ  ' +
    (qry_TrialCTopic3Balance.Parameters.ParamByName('DocDateTo').Value);
end;

procedure TRptTrialBalance_CTopics3F.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'اسناد موقت از ' + qry_TrialCTopic3Balance.Parameters.ParamByName
    ('SecondaryDocNoFrom').Value + ' تا ' + qry_TrialCTopic3Balance.Parameters.
    ParamByName('SecondaryDocNoTo').Value;
end;

procedure TRptTrialBalance_CTopics3F.N2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics3_Topic_AllCurrency', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics3F.N3Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics3_Topic_Currency', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics3F.MenuItem5Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

end.
