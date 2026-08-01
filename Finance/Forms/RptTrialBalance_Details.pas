unit RptTrialBalance_Details;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Menus, ppBands, Filter_ADO_Const,FaraConsts,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppParameter, ppDesignLayer, AccFunctions,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TRptTrialBalance_DetailsF = class(Ttemplate2MDIF)
    qry_TrialDetailsBalance: TADOQuery;
    src_TrialDetailsBalance: TDataSource;
    actFilter: TAction;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    actShowForm: TAction;
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
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    qry_TrialDetailsBalanceTopicCode: TLargeintField;
    qry_TrialDetailsBalanceDetailCode: TIntegerField;
    qry_TrialDetailsBalanceMoeenName_L1: TStringField;
    qry_TrialDetailsBalanceMoeenName_L2: TStringField;
    qry_TrialDetailsBalanceDetailName_L1: TStringField;
    qry_TrialDetailsBalanceDetailName_L2: TStringField;
    qry_TrialDetailsBalanceDebt: TFMTBCDField;
    qry_TrialDetailsBalanceBalanceDebt: TFMTBCDField;
    qry_TrialDetailsBalanceBalanceCredit: TFMTBCDField;
    qry_TrialDetailsBalanceCredit: TFMTBCDField;
    ButtenLevelLow: TBitBtn;
    actBeforeLevel: TAction;
    actAfterLevel: TAction;
    ButtenLevelTop: TBitBtn;
    N8: TMenuItem;
    N9: TMenuItem;
    actUpdate: TAction;
    qry_TrialDetailsBalancebes: TBCDField;
    qry_TrialDetailsBalancebed: TBCDField;
    qry_TrialDetailsBalanceMandehBed: TBCDField;
    qry_TrialDetailsBalanceMandehbes: TBCDField;
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
    qry_TrialDetailsBalancerow: TLargeintField;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    actOther: TAction;
    BitBtn1: TBitBtn;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    Panel1: TPanel;
    DBText5: TDBText;
    CheckBox1: TCheckBox;
    N10: TMenuItem;
    actFilterFrom: TAction;
    mniFilterFrom: TMenuItem;
    rgDetailNameType: TRadioGroup;
    qry_TrialDetailsBalanceCombineName: TStringField;
    qry_TrialDetailsBalanceMobile: TStringField;
    N11: TMenuItem;
    popAfterLevel: TPopupMenu;
    mnuCtopic1: TMenuItem;
    mnuCtopic2: TMenuItem;
    qry_TrialDetailsBalanceCompanyCode: TIntegerField;
    N12: TMenuItem;
    mnuArzi: TMenuItem;
    qry_TrialDetailsBalanceCustAccountNumber: TStringField;
    qry_TrialDetailsBalanceManageName: TStringField;
    qry_TrialDetailsBalanceBankName: TStringField;
    qry_TrialDetailsBalancePaymentCode: TLargeintField;
    mnuCtopic3: TMenuItem;
    DBGrid1: TCedarDbgrid;
    qry_TrialDetailsBalanceCurrencyType: TIntegerField;
    qry_TrialDetailsBalanceCurrenciesName: TStringField;
    qry_TrialDetailsBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialDetailsBalanceCurrencyCredit: TFMTBCDField;
    qry_TrialDetailsBalanceBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialDetailsBalanceBalanceCurrencyCredit: TFMTBCDField;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure ppDBText4GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure actBeforeLevelExecute(Sender: TObject);
    procedure qry_TrialDetailsBalanceAfterOpen(DataSet: TDataSet);
    procedure actShowFormExecute(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure qry_TrialDetailsBalanceAfterScroll(DataSet: TDataSet);
    procedure actUpdateExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actOtherExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure rgDetailNameTypeClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure mnuCtopic1Click(Sender: TObject);
    procedure ButtenLevelLowClick(Sender: TObject);
    procedure mnuCtopic2Click(Sender: TObject);
    procedure mnuArziClick(Sender: TObject);
    procedure mnuCtopic3Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
  private
    { Private declarations }

    ShowFilter: BOOLEAN;
    OrgSql: string;
    procedure ShowBeforeAccCode(FormType: Integer);
    // procedure Updateremain;
    procedure UpdateFilter;
    // procedure chooseColumnDown;
    // procedure chooseColumnUp;
  public
    { Public declarations }
  end;

var
  RptTrialBalance_DetailsF: TRptTrialBalance_DetailsF;

implementation

uses Dm, searchCode_ADO, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  RptTrialBalance_Acc, Rpt_AccDetailOnTopicBook, DBGrid2Print, TreeChart,
  FormFunctions, Resource, CategoresCtopicNote, CategoresDetailNote,
  RptTrialBalance_CTopics, Main, RptTrialBalance_CTopics_Details, mdiMain,
  RptTrialBalance_CTopics2_CTopics, RptTrialDetailsBalance_Arzi,
  RptTrialBalance_CTopics3_CTopics;

{$R *.dfm}

procedure TRptTrialBalance_DetailsF.FormShow(Sender: TObject);
begin
  inherited;
  if ShowFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DocDate') = nil then
      close;
  end;
  DBGrid1.Columns[8].Visible := dmf.ReadBankConfig
    ('ShowAccountInfoInDetailsReport', '0') = '1';
  DBGrid1.Columns[9].Visible := DBGrid1.Columns[8].Visible;
  DBGrid1.Columns[10].Visible := DBGrid1.Columns[8].Visible;
  DBGrid1.Columns[11].Visible := DBGrid1.Columns[8].Visible;
end;

procedure TRptTrialBalance_DetailsF.actFilterExecute(Sender: TObject);
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

      AddItem(dmf.adcAccounting, 'state', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpStatus);
      AddItem(dmf.adcAccounting, 'checked', 'انواع سند حسابداري', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, '');
      AddItem(dmf.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, tmpDefault, '0000/00/00', '9999/99/99', ciSimple, '',
        Format(strMaxMinDocDate, [APPBank.Year]));
      AddItem(dmf.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(dmf.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));

      if opta.ChkBalancCTopicCode3 then
      begin

        AddItem(dmf.adcAccounting, 'CtopicCode3', ' حساب تفصیلی 4 ', 'كد ',
          ftInteger, dvMinMax, '', '', ciLookup, strLookUpCTopicCode3,
          strMaxMinCTopicCode3);
      end;

      AddItem(dmf.adcAccounting, 'DetailCode', ' حساب تفصيلي', 'كد تفصيلي ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      if gv_MultiCompany then
        AddItem(dmf.adcAccounting, 'CompanyCode', 'شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup, strLookUpCompany+User.CompanieCodes,
          strMaxMinCompany);

      AddItem(dmf.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_L1 FROM acc.Categories INNER JOIN (SELECT MAX(LevelID) AS LevelID  FROM   Acc.AccTopicLevels WHERE (TopicType = 0)) TopicLevel ON  TopicLevel.LevelID=acc.Categories.levelId ',
        'SELECT min(TopicCode),max(TopicCode) FROM acc.Categories INNER JOIN (SELECT     MAX(LevelID) AS LevelID  FROM   Acc.AccTopicLevels WHERE (TopicType = 0)) TopicLevel ON  TopicLevel.LevelID=acc.Categories.levelId ');
      if (Sender as TAction).Tag = 1 then
        AddItem(dmf.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM UTil.maliYear');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
        CheckExistsImbalanceDoc;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TRptTrialBalance_DetailsF.FormCreate(Sender: TObject);
begin
  inherited;
  OrgSql := qry_TrialDetailsBalance.SQL.Text;
  ShowFilter := var_glb_Boolean;
  mnuCtopic1.Visible := opta.ActiveCtopic1;
  mnuCtopic2.Visible := opta.ActiveCtopic2;
  mnuCtopic3.Visible := opta.ActiveCtopic3;
  ButtenLevelLow.Enabled := opta.ActiveCtopic1;

  if ActiveSortTitle then
    DBGrid1.Tag := 0;
end;

procedure TRptTrialBalance_DetailsF.UpdateFilter;
begin
  // ------------order by TopicCode,DetailCode

  with qry_TrialDetailsBalance do
  begin
    Active := false;

    SetArzParameters(qry_TrialDetailsBalance, myParams);

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
    Parameters.ParamByName('ToYearId').Value := APPBank.Year;
    if gv_MultiCompany then
    begin
      qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(qry_TrialDetailsBalance.Parameters);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('detailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;

    if opta.ChkBalancCTopicCode3 then
    begin

      Parameters.ParamByName('CTopicCode3From').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
      Parameters.ParamByName('CTopicCode3To').Value :=
        GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('CTopicCode3From').Value := 0;
      Parameters.ParamByName('CTopicCode3To').Value := 2147483647;
    end;

    Active := True;
    LblShowLimitPlace1.Caption := '   از تاريخ  ' + Parameters.ParamByName
      ('DocDateFrom').Value + '  تا تاريخ  ' + Parameters.ParamByName
      ('DocDateTo').Value;

  end; // with
end;

procedure TRptTrialBalance_DetailsF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptTrialBalance_DetailsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialDetailsBalance);
end;

procedure TRptTrialBalance_DetailsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptTrialBalance_DetailsF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblShowLimitPlace1.Caption
end;

procedure TRptTrialBalance_DetailsF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptTrialBalance_DetailsF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptTrialBalance_DetailsF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialBalance_DetailsF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_DetailsF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails_Topic', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_DetailsF.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qry_TrialDetailsBalance.FieldByName('TopicCode').AsString + '_' +
    qry_TrialDetailsBalance.FieldByName('DetailCode').AsString;
end;

procedure TRptTrialBalance_DetailsF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'اسناد موقت از ' +
    IntToStr(qry_TrialDetailsBalance.Parameters.ParamByName
    ('SecondaryDocNoFrom').Value) + ' تا ' +
    IntToStr(qry_TrialDetailsBalance.Parameters.ParamByName
    ('SecondaryDocNoTo').Value);
end;

procedure TRptTrialBalance_DetailsF.actBeforeLevelExecute(Sender: TObject);
var
  FormType: Integer;
begin
  inherited;
  with dmf.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT  MAX(LevelID) AS MaxLevel  FROM  acc.AccTopicLevels ' +
      'WHERE  (TopicType = 0)  GROUP BY TopicType';
    Active := True;
    FormType := FieldByName('MaxLevel').AsInteger
  end;
  ShowBeforeAccCode(FormType);
end;

procedure TRptTrialBalance_DetailsF.qry_TrialDetailsBalanceAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  // Updateremain;
  qry_TrialDetailsBalance.Sort := 'TopicCode,DetailCode';
  DBGridCurrencyKind(DBGrid1, myParams,qry_TrialDetailsBalance)
end;

procedure TRptTrialBalance_DetailsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // myParams.Clear;
  if opta.ShowLevel then
    with TfilterF.Create2(Self, myParams) do
      try
        AddItem(dmf.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
          ftDate, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinDocDate, [APPBank.Year]));
        AddItem(dmf.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
          'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
        AddItem(dmf.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
          'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
        if ShowModal = mrOk then
          GetFilterString
        else
          Exit;
      finally
        Free;
      end; // try

  // if Rpt_AccDetailOnTopicBookF <> nil then Exit;
  CreateMDIForm3(false, TRpt_AccDetailOnTopicBookF,
    Rpt_AccDetailOnTopicBookF, Self);
  with Rpt_AccDetailOnTopicBookF do
  begin
    with qry_AccCode do
    begin
      Active := false;
      if not opta.ShowLevel then
      begin
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('SecondaryDocNoTo').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('PrimaryDocNoTo').Value;
        Parameters.ParamByName('DocDateTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName('DocDateTo').Value;
      end
      else
      begin
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          GetcTo(Self.myParams.ParamValues['SecondaryDocNo'], ftInteger);
        Parameters.ParamByName('DocDateTo').Value :=
          GetcTo(Self.myParams.ParamValues['DocDate'], ftString);
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          GetcTo(Self.myParams.ParamValues['PrimaryDocNo'], ftInteger);
      end;
      Parameters.ParamByName('TopicCodeFrom').Value :=
        qry_TrialDetailsBalanceTopicCode.AsInteger;
      Parameters.ParamByName('TopicCodeTo').Value :=
        qry_TrialDetailsBalanceTopicCode.AsInteger;
      Parameters.ParamByName('DetailCodeFrom').Value :=
        qry_TrialDetailsBalanceDetailCode.AsInteger;
      Parameters.ParamByName('DetailCodeTo').Value :=
        qry_TrialDetailsBalanceDetailCode.AsInteger;
    end; // with
    with qry_Doc do
    begin
      Active := false;
      if not opta.ShowLevel then
      begin
        SetParametersqry(qry_Doc,qry_TrialDetailsBalance);
        Parameters.ParamByName('DocDateFrom').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName('DocDateTo').Value;
        Parameters.ParamByName('PrimaryDocNoFrom').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('PrimaryDocNoTo').Value;
        Parameters.ParamByName('SecondaryDocNoFrom').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('SecondaryDocNoTo').Value;
      end
      else
      begin
        SetParametersqry(qry_Doc,qry_TrialDetailsBalance);
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
      Parameters.ParamByName('Status1').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCodeTO').Value := -1;
      // qry_TrialDetailsBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('FromYearId').Value;;
      Parameters.ParamByName('ToYearId').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('ToYearId').Value;;
    end; // with
    with qry_Companies do
    begin
      Active := false;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeTo').Value;
        // Parameters.ParamByName('Detail_CodeFrom').Value:=qry_TrialDetailsBalanceDetailCode.AsInteger;
        // Parameters.ParamByName('Detail_CodeTo').Value:=qry_TrialDetailsBalanceDetailCode.AsInteger;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Active := True;
      qry_AccCode.Locate('TopicCode;DetailCode',
        VarArrayOf([qry_TrialDetailsBalance.fieldbyname('TopicCode').AsCurrency,
        qry_TrialDetailsBalance.fieldbyname('DetailCode').AsInteger]), []);
    end; // with
  end;
end;

procedure TRptTrialBalance_DetailsF.N8Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails_Topic_L', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance.EnableControls;
  end; // try

end;

procedure TRptTrialBalance_DetailsF.N9Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails_L', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance.EnableControls;
  end; // try

end;

procedure TRptTrialBalance_DetailsF.qry_TrialDetailsBalanceAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  // With qrySum do begin
  // Active:=False ;
  // Parameters.ParamByName('AccCodeFrom').Value:=qry_TrialDetailsBalance.Fieldbyname('TopicCode').AsLargeInt ;
  // Parameters.ParamByName('AccCodeTo').Value:=qry_TrialDetailsBalance.Fieldbyname('TopicCode').AsLargeInt ;
  // Active:=True ;
  // //   StatusBar4.Panels[0].Text:=CurrToStrF(FieldByName('sumBalanceCredit').AsCurrency,ffCurrency,0);
  /// /    StatusBar4.Panels[1].Text:=CurrToStrF(FieldByName('sumBalanceDebt').AsCurrency,ffCurrency,0);
  /// /    StatusBar4.Panels[2].Text:=CurrToStrF(FieldByName('sumCredit').AsCurrency,ffCurrency,0);
  /// /    StatusBar4.Panels[3].Text:=CurrToStrF(FieldByName('sumDebt').AsCurrency,ffCurrency,0);
  /// /    StatusBar4.Panels[4].Text:=qry_TrialDetailsBalance.Fieldbyname('MoeenName_L1').AsString;
  //
  /// /  StatusBar3.Panels[5].Text:='تعداد سطر تا جاري= '+IfThen(DataSet.Fieldbyname('row').AsString<>'',DataSet.Fieldbyname('row').AsString,'0');
  /// /  StatusBar3.Panels[3].Text:=CurrToStrF(DataSet.fieldbyname('bed').AsCurrency,ffCurrency,0)  ;
  /// /  StatusBar3.Panels[2].Text:=CurrToStrF(DataSet.fieldbyname('bes').AsCurrency,ffCurrency,0)  ;
  /// /  StatusBar3.Panels[1].Text:=CurrToStrF(DataSet.fieldbyname('mandehbed').AsCurrency,ffCurrency,0)  ;
  /// /  StatusBar3.Panels[0].Text:=CurrToStrF(DataSet.fieldbyname('mandehbes').AsCurrency,ffCurrency,0)  ;
  /// /
  /// /  if flag and ((DBGrid1.SelectedRows.Count = 1) or ((DBGrid1.SelectedRows.Count =0))and (qry_TrialDetailsBalance.RecordCount<>0)) then begin
  /// /    StatusBar2.Panels[5].Text:=' تعداد سطر انتخابي= 1';
  /// /    StatusBar2.Panels[3].Text:=CurrToStrF(DataSet.fieldbyname('Debt').AsCurrency,ffCurrency,0)  ;
  /// /    StatusBar2.Panels[2].text:=CurrToStrF(DataSet.fieldbyname('credit').AsCurrency,ffCurrency,0)  ;
  /// /    StatusBar2.Panels[1].Text:=CurrToStrF(DataSet.fieldbyname('BalanceDebt').AsCurrency,ffCurrency,0)  ;
  /// /    StatusBar2.Panels[0].text:=CurrToStrF(DataSet.fieldbyname('Balancecredit').AsCurrency,ffCurrency,0)  ;
  /// /  end;
  // end ;//with
  //
end;

procedure TRptTrialBalance_DetailsF.rgDetailNameTypeClick(Sender: TObject);
begin
  inherited;
  // ColumnIndexByFieldName(DBGrid1,)
  case rgDetailNameType.ItemIndex of
    0:
      DBGrid1.Columns[2].FieldName := 'DetailName_L1';
    1:
      DBGrid1.Columns[2].FieldName := 'MoeenName_L1';
    2:
      DBGrid1.Columns[2].FieldName := 'CombineName';
  end;
end;

procedure TRptTrialBalance_DetailsF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialDetailsBalance.Requery();
end;

procedure TRptTrialBalance_DetailsF.ButtenLevelLowClick(Sender: TObject);
// var
// p: TPoint;
begin
  inherited;
  // p := ClientToScreen(Point(ButtenLevelLow.Left, ButtenLevelLow.Top +
  // PnlUnderButton.Top));
  // popAfterLevel.Popup(p.X + popAfterLevel.Items.Count,
  // p.Y - popAfterLevel.Items.Count * 21);

  popAfterLevel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)

end;

procedure TRptTrialBalance_DetailsF.ShowBeforeAccCode(FormType: Integer);
begin
  CreateMDIForm3(false, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self,
    FormType);
  with RptTrialBalance_AccF do
  Begin
    with qry_TrialBalance do
    begin
      Active := false;
      SetParametersqry(qry_TrialBalance,qry_TrialDetailsBalance);
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('DocTypeCode3_Not').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('FromYearId').Value;;
      Parameters.ParamByName('ToYearId').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('ToYearId').Value;;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);

      Active := True;
    end; // with
    qry_TrialBalance.Locate('TopicCode',
      qry_TrialDetailsBalanceTopicCode.AsInteger, []);
  end; // with_RptTrialBalance_AccF
end;

procedure TRptTrialBalance_DetailsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_TrialDetailsBalance.FieldByName('DetailCode'));
end;

procedure TRptTrialBalance_DetailsF.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // if DBGrid1.SelectedRows.Count>1 then begin
  // if (Button=mbleft) and (Shift=[ssctrl] )then
  // if DBGrid1.SelectedRows.CurrentRowSelected  then begin
  // sumDebt:=sumDebt+qry_TrialDetailsBalance.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=sumCredit+qry_TrialDetailsBalance.Fieldbyname('Credit').AsCurrency;
  // sumBalaDebt:=sumBalaDebt+qry_TrialDetailsBalance.Fieldbyname('BalanceDebt').AsCurrency;
  // sumBalaCredit:=sumBalaCredit+qry_TrialDetailsBalance.Fieldbyname('BalanceCredit').AsCurrency;
  // end
  // else begin
  // sumDebt:=sumDebt-qry_TrialDetailsBalance.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=sumCredit-qry_TrialDetailsBalance.Fieldbyname('Credit').AsCurrency;
  // sumBalaDebt:=sumBalaDebt-qry_TrialDetailsBalance.Fieldbyname('BalanceDebt').AsCurrency;
  // sumBalaCredit:=sumBalaCredit-qry_TrialDetailsBalance.Fieldbyname('BalanceCredit').AsCurrency;
  // end
  // end
  // else begin
  // sumDebt:=qry_TrialDetailsBalance.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=qry_TrialDetailsBalance.Fieldbyname('Credit').AsCurrency;
  // sumBalaDebt:=qry_TrialDetailsBalance.Fieldbyname('BalanceDebt').AsCurrency;
  // sumBalaCredit:=qry_TrialDetailsBalance.Fieldbyname('BalanceCredit').AsCurrency;
  // end;//if
  // if DBGrid1.SelectedRows.CurrentRowSelected=false  then begin
  // if DBGrid1.SelectedRows.Count>0 then
  // qry_TrialDetailsBalance.GotoBookmark(pointer(DBGrid1.SelectedRows[DBGrid1.SelectedRows.Count-1]));
  // if DBGrid1.SelectedRows.Count=1 then begin
  // sumDebt:=qry_TrialDetailsBalance.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=qry_TrialDetailsBalance.Fieldbyname('Credit').AsCurrency;
  // sumBalaDebt:=qry_TrialDetailsBalance.Fieldbyname('BalanceDebt').AsCurrency;
  // sumBalaCredit:=qry_TrialDetailsBalance.Fieldbyname('BalanceCredit').AsCurrency;
  // end;
  // end;
  // StatusBar2.Panels[5].Text:=' تعداد سطر انتخابي='+IntToStr(DBGrid1.SelectedRows.count);
  // StatusBar2.Panels[3].Text:=CurrToStrF(sumDebt,ffCurrency,0);
  // StatusBar2.Panels[2].text:=CurrToStrF(sumCredit,ffCurrency,0);
  // StatusBar2.Panels[1].Text:=CurrToStrF(sumBalaDebt,ffCurrency,0);
  // StatusBar2.Panels[0].text:=CurrToStrF(sumBalaCredit,ffCurrency,0);
end;

procedure TRptTrialBalance_DetailsF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // if (Key =vk_UP) and (Shift =[SSshift])   then
  // chooseColumnUp
  // else
  // if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
  // else flag:=false;

end;
//
// procedure TRptTrialBalance_DetailsF.chooseColumnUp;
// var
// i:integer;
// bed,bes,balanceBed,balanceBes:Currency;
// begin
// bed:=0;
// bes:=0;
// balanceBed:=0;
// balanceBes:=0;
// with qry_TrialDetailsBalance do begin
// try
// DisableControls;
// for i:=0 to DBGrid1.SelectedRows.Count-1 do begin
// GotoBookmark(pointer(DBGrid1.SelectedRows[i]));
// bed:=bed +fieldbyname('Debt').AsCurrency;
// bes:=bes +fieldbyname('Credit').AsCurrency;
// balanceBed:=balanceBed+Fieldbyname('BalanceDebt').AsCurrency;
// balanceBes:=balanceBes+Fieldbyname('BalanceCredit').AsCurrency;
// end;//for
// StatusBar2.Panels[5].Text:=' تعداد سطرهاي انتخابي = '+IntToStr(DBGrid1.SelectedRows.Count);
// StatusBar2.Panels[3].Text:=CurrToStrF(bed,ffCurrency,0)  ;
// StatusBar2.Panels[2].text:=CurrToStrF(bes,ffCurrency,0)  ;
// StatusBar2.Panels[1].Text:=CurrToStrF(balanceBed,ffCurrency,0)  ;
// StatusBar2.Panels[0].Text:=CurrToStrF(balanceBes,ffCurrency,0)  ;
// finally
// EnableControls;
// end;
// end ;
// end;
//
// procedure TRptTrialBalance_DetailsF.chooseColumnDown;
// var
// i:integer;
// bed,bes,balanceBed,balanceBes:Currency;
// begin
// try
// qry_TrialDetailsBalance.DisableControls;
// if qry_TrialDetailsBalance.Fieldbyname('row').AsInteger=qry_TrialDetailsBalance.RecordCount then exit;
// bed:=0;
// bes:=0;
// balanceBed:=0;
// balanceBes:=0;
// with qry_TrialDetailsBalance do begin
// DBGrid1.SelectedRows.CurrentRowSelected:=true;
// for i:=0 to IfThen(DBGrid1.SelectedRows.Count<>0,DBGrid1.SelectedRows.Count-1,0) do begin
// GotoBookmark(pointer(DBGrid1.SelectedRows[i]));
// bed:=bed +fieldbyname('Debt').AsCurrency;
// bes:=bes +fieldbyname('Credit').AsCurrency;
// balanceBed:=balanceBed+Fieldbyname('BalanceDebt').AsCurrency;
// balanceBes:=balanceBes+Fieldbyname('BalanceCredit').AsCurrency;
// end;//for
// Next;
// bed:=bed +fieldbyname('Debt').AsCurrency;
// bes:=bes +fieldbyname('Credit').AsCurrency;
// balanceBed:=balanceBed+Fieldbyname('BalanceDebt').AsCurrency;
// balanceBes:=balanceBes+Fieldbyname('BalanceCredit').AsCurrency;
// Prior;
// StatusBar2.Panels[5].Text:=' تعداد سطرهاي انتخابي = '+IntToStr(DBGrid1.SelectedRows.Count+1);
// StatusBar2.Panels[3].Text:=CurrToStrF(bed,ffCurrency,0)  ;
// StatusBar2.Panels[2].text:=CurrToStrF(bes,ffCurrency,0)  ;
// StatusBar2.Panels[1].Text:=CurrToStrF(balanceBed,ffCurrency,0)  ;
// StatusBar2.Panels[0].Text:=CurrToStrF(balanceBes,ffCurrency,0)  ;
// end ;
// finally
// qry_TrialDetailsBalance.EnableControls;
// end;
// end;

procedure TRptTrialBalance_DetailsF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  // if (Key=vk_DOWN) and (Shift=[SSshift]) then
  // chooseColumnDown
  // else
  // if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
  // else flag:=false;
end;

procedure TRptTrialBalance_DetailsF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TRptTrialBalance_DetailsF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, LblShowLimitPlace1.Caption);

end;

procedure TRptTrialBalance_DetailsF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qry_TrialDetailsBalance, Self);

end;

procedure TRptTrialBalance_DetailsF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);

end;

procedure TRptTrialBalance_DetailsF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  // qry_TrialDetailsBalance.Filtered := not(Sender as TCheckBox).checked;

  // ------------order by TopicCode,DetailCode
  CheckBox1.Enabled := false;
  with qry_TrialDetailsBalance do
  begin
    close;
    if not(Sender as TCheckBox).checked then
      if Pos('WHERE ', UpperCase(OrgSql)) = 0 then
        SQL.Text := OrgSql + #13#10 +
          ' WHERE ( (balanceDebt <> 0) OR (balanceCredit <> 0) )'
      else
        SQL.Text := OrgSql + #13#10 +
          ' AND ( (balanceDebt <> 0) OR (balanceCredit <> 0) )'
    else
      SQL.Text := OrgSql;
    Open;
  end;
  CheckBox1.Enabled := True;

end;

procedure TRptTrialBalance_DetailsF.FormPaint(Sender: TObject);
begin
  inherited;
  LblShowLimitPlace1.Caption := '   از تاريخ  ' +
    qry_TrialDetailsBalance.Parameters.ParamByName('DocDateFrom').Value +
    '  تا تاريخ  ' + qry_TrialDetailsBalance.Parameters.ParamByName
    ('DocDateTo').Value;

end;

procedure TRptTrialBalance_DetailsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialDetailsBalance);
end;

procedure TRptTrialBalance_DetailsF.N10Click(Sender: TObject);
var
  txt: String;
  results: array [0 .. 8] of String;
begin
  inherited;
  txt := 'SELECT DetailCode,TopicCode, DetailName_L1,MoeenName_L1, Credit , Debt ,'
    + ' BalanceDebt , BalanceCredit ' +
    ' FROM Acc.AccTrialDetailsBalance(DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
    + ' DEFAULT, DEFAULT, DEFAULT,' +
    ' DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,' +
    VarToStr(qry_TrialDetailsBalance.Parameters.ParamValues['FromYearId']) + ','
    + VarToStr(qry_TrialDetailsBalance.Parameters.ParamValues['ToYearId']) +
    ' , DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT) AccTrialDetailsBalance';
  if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'جستجوي ', txt,
    ['كد تفصيلی', 'كد حساب', 'عنوان تفصيلی', 'نام حساب', 'بستانكار', 'بدهكار',
    'مانده بدهكار', 'مانده بستانكار'], results, [50, 50, 100, 100, 50, 50, 50,
    50], alLeft) then
    qry_TrialDetailsBalance.Locate('TopicCode;DetailCode',
      VarArrayOf([results[1], results[0]]), [loPartialKey]);

end;

procedure TRptTrialBalance_DetailsF.N11Click(Sender: TObject);
begin
  inherited;
  CategoresDetailNoteF.enter(qry_TrialDetailsBalance.FieldByName('TopicCode')
    .AsLargeInt, qry_TrialDetailsBalance.FieldByName('DetailCode')
    .AsInteger, 1);
end;

procedure TRptTrialBalance_DetailsF.N14Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails_Topic_AllCurrency', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_DetailsF.N15Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails_Topic_Currency', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_DetailsF.mnuArziClick(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRptTrialDetailsBalance_ArziF,
    RptTrialDetailsBalance_ArziF, MainF);
  with RptTrialDetailsBalance_ArziF do
  begin
    with qry_TrialDetailsBalance_Arzi, Parameters do
    begin
      close;
      ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      ParamByName('Status1').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('Status1').Value;
      ParamByName('DocDateFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateFrom').Value;
      ParamByName('DocDateTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateTo').Value;
      ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      ParamByName('FromYearId').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('FromYearId').Value;
      ParamByName('ToYearId').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('ToYearId').Value;

      ParamByName('CompanyCodeFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
      ParamByName('CompanyCodeTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeTo').Value;

      SetCompanyFilterinLogin(Parameters);

      ParamByName('AccCodeFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('AccCodeFrom').Value;
      ParamByName('AccCodeTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('AccCodeTo').Value;
      ParamByName('DetailCodeFrom').Value :=
        qry_TrialDetailsBalanceDetailCode.AsInteger;
      ParamByName('DetailCodeTo').Value :=
        qry_TrialDetailsBalanceDetailCode.AsInteger;
      Open;
    end;
  end;
end;

procedure TRptTrialBalance_DetailsF.mnuCtopic1Click(Sender: TObject);
var
  TopTopice: Largeint;
  TopDetail: Integer;
  // CodeLength:Integer;
begin
  inherited;
  TopTopice := qry_TrialDetailsBalanceTopicCode.AsLargeInt;
  TopDetail := qry_TrialDetailsBalanceDetailCode.AsLargeInt;
  CreateMDIForm3(false, TRptTrialBalance_CTopics_DetailsF,
    RptTrialBalance_CTopics_DetailsF, MainF); // RptTrialBalance_AccF
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopics_DetailsF do
  Begin
    with qry_TrialCTopicBalance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopicBalance,qry_TrialDetailsBalance)   ;
      Parameters.ParamByName('DocTypeCode_Not').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('Status').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('Status1').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;

      Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
      Parameters.ParamByName('DetailCodeTo').Value := TopDetail;

      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearId').Value := APPBank.Year;
      Active := True;
    end; // with
  end // with_ RptTrialBalance_CTopicsF

end;

procedure TRptTrialBalance_DetailsF.mnuCtopic2Click(Sender: TObject);
var
  TopTopice: Largeint;
  TopDetail: Integer;
  // CodeLength:Integer;
begin
  inherited;
  TopTopice := qry_TrialDetailsBalanceTopicCode.AsLargeInt;
  TopDetail := qry_TrialDetailsBalanceDetailCode.AsLargeInt;
  CreateMDIForm3(false, TRptTrialBalance_CTopics2_CTopicsF,
    RptTrialBalance_CTopics2_CTopicsF, MainF); // RptTrialBalance_AccF
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopics2_CTopicsF do
  Begin
    with qry_TrialCTopic2Balance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopic2Balance, qry_TrialDetailsBalance);
      Parameters.ParamByName('DocTypeCode_Not').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('Status').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('Status1').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;

      Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
      Parameters.ParamByName('DetailCodeTo').Value := TopDetail;

      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearId').Value := APPBank.Year;
      Active := True;
    end; // with
  end // with_ RptTrialBalance_CTopicsF

end;

procedure TRptTrialBalance_DetailsF.mnuCtopic3Click(Sender: TObject);
var
  TopTopice: Largeint;
  TopDetail: Integer;
  // CodeLength:Integer;
begin
  inherited;
  TopTopice := qry_TrialDetailsBalanceTopicCode.AsLargeInt;
  TopDetail := qry_TrialDetailsBalanceDetailCode.AsLargeInt;
  CreateMDIForm3(false, TRptTrialBalance_CTopics3_CTopicsF,
    RptTrialBalance_CTopics3_CTopicsF, MainF); // RptTrialBalance_AccF
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopics3_CTopicsF do
  Begin
    with qry_TrialCTopic2Balance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopic2Balance, qry_TrialDetailsBalance);
      Parameters.ParamByName('DocTypeCode_Not').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('Status').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('Status1').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialDetailsBalance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;

      Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
      Parameters.ParamByName('DetailCodeTo').Value := TopDetail;

      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearId').Value := APPBank.Year;
      Active := True;
    end; // with
  end // with_ RptTrialBalance_CTopicsF

end;

end.
