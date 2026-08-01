unit RptTrialBalance_CTopics2_CTopics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, DB, ADODB, ComCtrls, Menus,
  Filter_ADO_Const, AccFunctions,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, SumDBGrid, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TRptTrialBalance_CTopics2_CTopicsF = class(Ttemplate2MDIF)
    qry_TrialCTopic2Balance: TADOQuery;
    src_TrialCTopic2Balance: TDataSource;
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
    qry_TrialCTopic2BalanceTopicCode: TLargeintField;
    qry_TrialCTopic2BalanceDetailCode: TIntegerField;
    qry_TrialCTopic2BalanceCTopicCode: TIntegerField;
    qry_TrialCTopic2BalanceCTopicCode2: TIntegerField;
    qry_TrialCTopic2Balance_Name: TStringField;
    qry_TrialCTopic2BalanceName_L2: TStringField;
    qry_TrialCTopic2BalanceDebt: TFMTBCDField;
    qry_TrialCTopic2BalanceCredit: TFMTBCDField;
    qry_TrialCTopic2BalanceBalanceDebt: TFMTBCDField;
    qry_TrialCTopic2BalanceBalanceCredit: TFMTBCDField;
    qry_TrialCTopic2BalanceMoeenName_L1: TStringField;
    DBGrid1: TCedarDbgrid;
    qry_TrialCTopic2BalanceCurrencyType: TIntegerField;
    qry_TrialCTopic2BalanceCurrenciesName: TStringField;
    qry_TrialCTopic2BalanceCurrencyDebit: TFMTBCDField;
    qry_TrialCTopic2BalanceCurrencyCredit: TFMTBCDField;
    qry_TrialCTopic2BalanceBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialCTopic2BalanceBalanceCurrencyCredit: TFMTBCDField;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
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
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  RptTrialBalance_CTopics2_CTopicsF: TRptTrialBalance_CTopics2_CTopicsF;
  cloned: TADOQuery;

implementation

uses FilterClass_ADO, filter_ADO, GlobalPro, Dm, search2, sort2,
  RptTrialBalance_CTopics, Rpt_CtopicsOnDetailsBook, Rpt_Ctopics2OnDetailsBook,
  Rpt_Ctopics2OnTopicBook, FormFunctions, DBGrid2Print, Resource;

{$R *.dfm}

procedure TRptTrialBalance_CTopics2_CTopicsF.FormShow(Sender: TObject);
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

procedure TRptTrialBalance_CTopics2_CTopicsF.actFilterExecute(Sender: TObject);
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

      // AddItem(DMF.adcAccounting, 'CtopicCode3', ' حساب تفصیلی 4 ', 'كد ',
      // ftInteger, dvMinMax, '', '', ciLookup, strLookUpCTopicCode3,
      // strMaxMinCTopicCode3);

      AddItem(DMF.adcAccounting, 'CtopicCode2', ' حساب تفصیلی 3 ', 'كد ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpCTopic2,
        strMaxMinCTopic2);
      AddItem(DMF.adcAccounting, 'CtopicCode', ' حساب تفصیلی 2 ', 'كد ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode, CTopicName_L1 FROM acc.CenterTopics ',
        'SELECT  MIN(0) , MAX(CTopicCode) FROM acc.CenterTopics ');
      AddItem(DMF.adcAccounting, 'DetailCode', ' حساب تفصيلي 1', 'كد ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'AccCode', ' حساب ', 'كد حساب', ftLargeint,
        dvMinMax, '', '', ciLookup,
        'SELECT  acc.Documents.TopicCode, acc.Categories.MoeenName_L1 ' +
        ' FROM acc.Documents INNER JOIN acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode '
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

procedure TRptTrialBalance_CTopics2_CTopicsF.FormCreate(Sender: TObject);
begin
  inherited;
  ShowFilter := var_glb_Boolean;
  // itForm;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.UpdateFilter;
begin
  with qry_TrialCTopic2Balance do
  begin
    Active := false; // 1
    SetArzParameters(qry_TrialCTopic2Balance, myParams);

    Parameters.ParamByName('DocTypeCode_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('Status').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);
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
    end
    else
    begin
      qry_TrialCTopic2Balance.Parameters.ParamByName('CompanyCodeFrom')
        .Value := 0;
      qry_TrialCTopic2Balance.Parameters.ParamByName('CompanyCodeTo')
        .Value := 99;
    end;
    SetCompanyFilterinLogin(Parameters);

    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);

    Parameters.ParamByName('CTopicCode3From').Value := 0;
    // GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value := 999999999;
    // GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);

    Active := true;
  end; // with
end;

// procedure TRptTrialBalance_CTopics2F.Updateremain;
// var
// c,bes,bed,mbes,mbed: Currency ;
// amount,i:integer;
// begin
// with qry_TrialCTopic2Balance do begin
// try
// First;
// DisableControls;
// c:= 0 ;
// bed:=0;mbes:=0;
// bes:=0; mbed:=0;
// amount:=0;i:=0;
// while not eof do begin
// i:=i+1;
// bed:=bed + fieldbyname('Debt').AsCurrency;
// bes:=bes + fieldbyname('Credit').AsCurrency;
// mbed:=mbed + fieldbyname('BalanceDebt').AsCurrency;
// mbes:=mbes + fieldbyname('BalanceCredit').AsCurrency;
// edit ;
// fieldbyname('_row').AsInteger:=i;
// fieldbyname('bed').AsCurrency := bed ;
// fieldbyname('bes').AsCurrency := bes ;
// fieldbyname('MandehBed').AsCurrency := mbed ;
// fieldbyname('Mandehbes').AsCurrency := mbes ;
// post ;
// Next;
// end;//
// finally
// first;
// EnableControls;
// end;//try
// end;//with
// StatusBar1.Panels[5].Text:='تعداد سطر كل= '+IntToStr(qry_TrialCTopic2Balance.RecordCount);
// StatusBar1.Panels[3].Text:=CurrToStrF(bed,ffCurrency,0) ;
// StatusBar1.Panels[2].Text:=CurrToStrF(bes,ffCurrency,0) ;
// StatusBar1.Panels[1].Text:=CurrToStrF(mbed,ffCurrency,0);
// StatusBar1.Panels[0].Text:=CurrToStrF(mbes,ffCurrency,0);
// end;

procedure TRptTrialBalance_CTopics2_CTopicsF.qry_TrialCTopic2BalanceAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1, myParams, qry_TrialCTopic2Balance)
  // Updateremain;
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialCTopic2Balance);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialCTopic2Balance);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.actSendExeclExecute
  (Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.actShowFormExecute
  (Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRpt_Ctopics2OnDetailsBookF,
    Rpt_Ctopics2OnDetailsBookF, Self);
  with Rpt_Ctopics2OnDetailsBookF do
  begin
    with qry_Doc do
    begin
      Active := false;
      SetParametersqry(qry_Doc, qry_TrialCTopic2Balance);
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
        ('SecondaryDocNoTo').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('Status').Value;
      Parameters.ParamByName('Status2').Value := -1;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('DocTypeCode_Not').Value;
      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('FromYearId').Value;
      Parameters.ParamByName('ToYearID').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('ToYearID').Value;
      Active := true;
    end; // with

    with qry_AccCode do
    begin
      Active := false;
      SetParametersqry(qry_AccCode, qry_TrialCTopic2Balance);
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('TopicCodeFrom').Value :=
        qry_TrialCTopic2BalanceTopicCode.AsLargeInt;
      Parameters.ParamByName('TopicCodeTo').Value :=
        qry_TrialCTopic2BalanceTopicCode.AsLargeInt;
      Parameters.ParamByName('DetailCodeFrom').Value :=
        qry_TrialCTopic2BalanceDetailCode.AsInteger;
      Parameters.ParamByName('DetailCodeTo').Value :=
        qry_TrialCTopic2BalanceDetailCode.AsInteger;
      Parameters.ParamByName('CTopicCode2From').Value :=
        qry_TrialCTopic2BalanceCTopicCode2.AsInteger;
      Parameters.ParamByName('CTopicCode2To').Value :=
        qry_TrialCTopic2BalanceCTopicCode2.AsInteger;

      Parameters.ParamByName('CTopicCodeFrom').Value :=
        qry_TrialCTopic2BalanceCTopicCode.AsInteger;
      Parameters.ParamByName('CTopicCodeTo').Value :=
        qry_TrialCTopic2BalanceCTopicCode.AsInteger;

      Parameters.ParamByName('CTopicCode3From').Value := 0;
      // GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
      Parameters.ParamByName('CTopicCode3To').Value := 999999999;
      // GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);

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
  end

end;

procedure TRptTrialBalance_CTopics2_CTopicsF.actBeforeLevelExecute
  (Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRptTrialBalance_CTopicsF,
    RptTrialBalance_CTopicsF, Self);
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopicsF do
    with qry_TrialCTopicBalance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopicBalance, qry_TrialCTopic2Balance);
      // Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialCTopic2Balance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      // Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialCTopic2Balance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('DocTypeCode_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value := -1;
      Parameters.ParamByName('DocTypeCode3_Not').Value := -1;
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
        ('SecondaryDocNoTo').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialCTopic2Balance.Parameters.ParamByName('Status').Value;
      Parameters.ParamByName('Status2').Value := -1;
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

procedure TRptTrialBalance_CTopics2_CTopicsF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialCTopic2Balance.Requery();
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_TrialCTopic2Balance.DisableControls;
    PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qry_TrialCTopic2Balance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_Topic', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_Topic_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qry_TrialCTopic2Balance.Fieldbyname('TopicCode').AsString + '_' +
    qry_TrialCTopic2Balance.Fieldbyname('CTopicCode').AsString;
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.ppLBCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qry_TrialCTopic2Balance.Parameters.ParamByName
    ('DocDateFrom').Value + ' تا تاريخ ' + qry_TrialCTopic2Balance.Parameters.
    ParamByName('DocDateTo').Value;
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'اسناد موقت از ' + qry_TrialCTopic2Balance.Parameters.ParamByName
    ('SecondaryDocNoFrom').Value + ' تا ' + qry_TrialCTopic2Balance.Parameters.
    ParamByName('SecondaryDocNoTo').Value;
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  // if (Key =vk_UP) and (Shift =[SSshift])   then
  // chooseColumnUp
  // else
  // if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
  // else flag:=false;
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute;
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  // if (Key=vk_DOWN) and (Shift=[SSshift]) then
  // chooseColumnDown
  // else
  // if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
  // else flag:=false;
end;

// procedure TRptTrialBalance_CTopics2F.chooseColumnUp;
// var
// i:integer;
// bed,bes,balanceBed,balanceBes:Currency;
// begin
// bed:=0;
// bes:=0;
// balanceBed:=0;
// balanceBes:=0;
// with qry_TrialCTopic2Balance do begin
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
// End;
// end ;
// end;
//
// procedure TRptTrialBalance_CTopics2F.chooseColumnDown;
// var
// i:integer;
// bed,bes,balanceBed,balanceBes:Currency;
// begin
// if qry_TrialCTopic2Balance.Fieldbyname('_row').AsInteger=qry_TrialCTopic2Balance.RecordCount then exit;
// bed:=0;
// bes:=0;
// balanceBed:=0;
// balanceBes:=0;
// with qry_TrialCTopic2Balance do begin
// try
// DisableControls;
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
// finally
// EnableControls;
// end;//finally
// end ;
// end;
//
//
procedure TRptTrialBalance_CTopics2_CTopicsF.N2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_Topic_AllCurrency',
    DBGrid1, ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.N3Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics2_Topic_Currency',
    DBGrid1, ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopics2_CTopicsF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

end.
