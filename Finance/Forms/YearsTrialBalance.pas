unit YearsTrialBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, ADODB,
  DB, Forms, Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls,       FaraConsts,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, ComCtrls, Menus,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, SumDBGrid, ppParameter, Mymostafa,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TYearsTrialBalanceF = class(Ttemplate2MDIF)
    qry_Years: TADOQuery;
    src_Years: TDataSource;
    DBGrid1: TDBGrid;
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
    SumGrid1: TSumGrid;
    BitBtn2: TBitBtn;
    actOther: TAction;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    actFilterForm: TAction;
    N2: TMenuItem;
    qry_YearsYearID: TIntegerField;
    qry_YearsName: TStringField;
    qry_YearsDebt: TFMTBCDField;
    qry_YearsCredit: TFMTBCDField;
    qry_YearsBalanceDebt: TFMTBCDField;
    qry_YearsBalanceCredit: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
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
    procedure actOtherExecute(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
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
  YearsTrialBalanceF: TYearsTrialBalanceF;
  cloned: TADOQuery;

implementation

uses FilterClass_ADO, filter_ADO, GlobalPro, Dm, search2, sort2,
  RptTrialBalance_Acc, Rpt_CtopicsOnTopicBook, Rpt_CtopicsOnDetailsBook,
  RptTrialBalance_CTopics2,
  DBGrid2Print, AccUnits, FormFunctions, Resource;

{$R *.dfm}

procedure TYearsTrialBalanceF.FormShow(Sender: TObject);
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

procedure TYearsTrialBalanceF.actFilterExecute(Sender: TObject);
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
      AddItem(DMF.adcAccounting, 'CtopicCode3', 'تفصیلی 4', 'كد ', ftInteger,
        dvMinMax, '', '', ciLookup, strLookUpCTopicCode3, strMaxMinCTopicCode3);
      AddItem(DMF.adcAccounting, 'CtopicCode2', 'تفصیلی 3', 'كد ', ftInteger,
        dvMinMax, '', '', ciLookup, strLookUpCTopic2, strMaxMinCTopic2);
      AddItem(DMF.adcAccounting, 'CtopicCode', 'تفصیلی 2', 'كد ', ftInteger,
        dvMinMax, '', '', ciLookup, strLookUpCtopic1, strMaxMinCtopic1);
      AddItem(DMF.adcAccounting, 'DetailCode', ' حساب تفصيلي', 'كد تفصيلي ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'TopicCode', ' حساب ', 'كد حساب', ftLargeint,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT TopicCode, MoeenName_L1 fROM ACC.AccTrialCTopicsBalance(DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
        + 'DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
        + IntToStr(APPBank.Year) + ',' + IntToStr(APPBank.Year) +
        ', DEFAULT, DEFAULT, DEFAULT) AccTrialCTopicsBalance', 'SELECT MIN(TopicCode) , MAX(TopicCode) ' +
        'FROM  ACC.AccTrialCTopicsBalance(DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
        + 'DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
        + IntToStr(APPBank.Year) + ',' + IntToStr(APPBank.Year) +
        ', DEFAULT, DEFAULT, DEFAULT) AccTrialCTopicsBalance');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup, strLookUpCompany+User.CompanieCodes,
          strMaxMinCompany);
      //if (Sender as TAction).Tag = 1 then
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

procedure TYearsTrialBalanceF.FormCreate(Sender: TObject);
begin
  inherited;
  cloned := TADOQuery.Create(Self);
  ShowFilter := var_glb_Boolean;

end;

procedure TYearsTrialBalanceF.UpdateFilter;
begin

  with qry_Years do
  begin
    Active := false;
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

    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);

    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);

    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);

    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);

    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Active := true;

  end; // with

end;

procedure TYearsTrialBalanceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Years);
end;

procedure TYearsTrialBalanceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Years);
end;

procedure TYearsTrialBalanceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TYearsTrialBalanceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, true);
end;

procedure TYearsTrialBalanceF.actSendExeclExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TYearsTrialBalanceF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRpt_CtopicsOnDetailsBookF,
    Rpt_CtopicsOnDetailsBookF, Self);
  with Rpt_CtopicsOnDetailsBookF do
  begin
    // with qry_AccCode do
    // begin
    // Active := false;
    // Parameters.ParamByName('SecondaryDocNoTo').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
    // Parameters.ParamByName('PrimaryDocNoTo').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
    // Parameters.ParamByName('DocDateTo').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('DocDateTo').Value;
    // Parameters.ParamByName('TopicCodeFrom').Value :=
    // qry_TrialCTopicBalanceTopicCode.AsLargeInt;
    // Parameters.ParamByName('TopicCodeTo').Value :=
    // qry_TrialCTopicBalanceTopicCode.AsLargeInt;
    // Parameters.ParamByName('CTopicCodeFrom').Value :=
    // qry_TrialCTopicBalanceCTopicCode.AsInteger;
    // Parameters.ParamByName('CTopicCodeto').Value :=
    // qry_TrialCTopicBalanceCTopicCode.AsInteger;
    // Parameters.ParamByName('DetailCodeFrom').Value :=
    // qry_TrialCTopicBalanceDetailCode.AsInteger;
    // Parameters.ParamByName('DetailCodeTo').Value :=
    // qry_TrialCTopicBalanceDetailCode.AsInteger;
    //
    // Active := true;
    // end; // with
    // with qry_Doc do
    // begin
    // Active := false;
    // Parameters.ParamByName('DocDateFrom').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('DocDateFrom').Value;
    // Parameters.ParamByName('DocDateTo').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('DocDateTo').Value;
    // Parameters.ParamByName('PrimaryDocNoFrom').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
    // Parameters.ParamByName('PrimaryDocNoTo').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
    // Parameters.ParamByName('SecondaryDocNoFrom').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName
    // ('SecondaryDocNoFrom').Value;
    // Parameters.ParamByName('SecondaryDocNoTo').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName
    // ('SecondaryDocNoTo').Value;;
    // Parameters.ParamByName('Status1').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('Status').Value;
    // Parameters.ParamByName('Status2').Value := -1;
    // Parameters.ParamByName('DocTypeCodeFrom').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode_Not').Value;
    // Parameters.ParamByName('FromYearId').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('FromYearId').Value;
    // Parameters.ParamByName('ToYearID').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('ToYearID').Value;
    // Active := true;
    // end; // with
    // with qry_Companies do
    // begin
    // Active := false;
    // if gv_MultiCompany then
    // begin
    // Parameters.ParamByName('CompanyCodeFrom').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName
    // ('CompanyCodeFrom').Value;
    // Parameters.ParamByName('CompanyCodeTo').Value :=
    // qry_TrialCTopicBalance.Parameters.ParamByName('CompanyCodeTo').Value;
    // end; // if
    // Active := true;
    // end; // with

  end; // with

end;

procedure TYearsTrialBalanceF.actBeforeLevelExecute(Sender: TObject);
begin
  inherited;
  if qry_Years.Fieldbyname('AccCode').AsString = '' then
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

procedure TYearsTrialBalanceF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_Years.Requery();
end;

procedure TYearsTrialBalanceF.btn1Click(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, true);
end;

procedure TYearsTrialBalanceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Years.DisableControls;
    PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qry_Years.EnableControls;
  end;
end;

procedure TYearsTrialBalanceF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics', DBGrid1,
    ppDBPipeline1);
end;

procedure TYearsTrialBalanceF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic', DBGrid1,
    ppDBPipeline1);
end;

procedure TYearsTrialBalanceF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TYearsTrialBalanceF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TYearsTrialBalanceF.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qry_Years.Fieldbyname('AccCode').AsString + '_' +
    qry_Years.Fieldbyname('CTopicCode').AsString;
end;

procedure TYearsTrialBalanceF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TYearsTrialBalanceF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TYearsTrialBalanceF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TYearsTrialBalanceF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qry_Years.Parameters.ParamValues
    ['DocDateFrom'] + ' تا تاريخ ' + qry_Years.Parameters.
    ParamValues['DocDateTo'];
end;

procedure TYearsTrialBalanceF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' اسناد از ' + IntToStr(qry_Years.Parameters.ParamValues
    ['PrimaryDocNoFrom']) + ' تا ' +
    IntToStr(qry_Years.Parameters.ParamValues['PrimaryDocNoTo']);
end;

procedure TYearsTrialBalanceF.actAfterLevelExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRptTrialBalance_CTopics2F,
    RptTrialBalance_CTopics2F, Self);
  // -----------------SET Parameters in  RptTrialBalance_CTopics2F form
  with RptTrialBalance_CTopics2F do
  begin
//    with qrySumCTopic2 do
//    begin
//      Active := false;
//      // Parameters.ParamByName('DocTypeCodeFrom').Value:=qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
//      // Parameters.ParamByName('DocTypeCodeTo').Value:=qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
//      Parameters.ParamByName('DocTypeCode1_Not').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode_Not').Value;
//      Parameters.ParamByName('DocTypeCode2_Not').Value := -1;
//      Parameters.ParamByName('DocTypeCode3_Not').Value := -1;
//      Parameters.ParamByName('DocDateFrom').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateFrom').Value;
//      Parameters.ParamByName('DocDateTo').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateTo').Value;
//      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
//      Parameters.ParamByName('PrimaryDocNoTo').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
//      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName
//        ('SecondaryDocNoFrom').Value;
//      Parameters.ParamByName('SecondaryDocNoTo').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
//      Parameters.ParamByName('Status1').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('Status').Value;
//      Parameters.ParamByName('Status2').Value := -1;
//      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
//      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
//      if gv_MultiCompany then
//      begin
//        Parameters.ParamByName('CompanyCodeFrom').Value :=
//          qry_TrialCTopicBalance.Parameters.ParamByName
//          ('CompanyCodeFrom').Value;
//        Parameters.ParamByName('CompanyCodeTo').Value :=
//          qry_TrialCTopicBalance.Parameters.ParamByName('CompanyCodeTo').Value;
//      end; // if
//      Parameters.ParamByName('AccCodeFrom').Value :=
//        qry_TrialCTopicBalance.Fieldbyname('AccCode').AsLargeInt;
//      Parameters.ParamByName('AccCodeTo').Value :=
//        qry_TrialCTopicBalance.Fieldbyname('AccCode').AsLargeInt;
//      Active := true;
//    end; // end qrysum
//
//    with qry_TrialCTopic2Balance do
//    begin
//      Active := false;
//      Parameters.ParamByName('DocTypeCodeFrom').Value := -1;
//      Parameters.ParamByName('DocTypeCodeTo').Value := -1;
//      Parameters.ParamByName('DocTypeCode1_Not').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode_Not').Value;
//      Parameters.ParamByName('DocTypeCode2_Not').Value := -1;
//      Parameters.ParamByName('DocTypeCode3_Not').Value := -1;
//      Parameters.ParamByName('DocDateFrom').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateFrom').Value;
//      Parameters.ParamByName('DocDateTo').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateTo').Value;
//      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
//      Parameters.ParamByName('PrimaryDocNoTo').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
//      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName
//        ('SecondaryDocNoFrom').Value;
//      Parameters.ParamByName('SecondaryDocNoTo').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
//      Parameters.ParamByName('Status1').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('Status').Value;
//      Parameters.ParamByName('Status2').Value := -1;
//      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
//      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
//      if gv_MultiCompany then
//      begin
//        Parameters.ParamByName('CompanyCodeFrom').Value :=
//          qry_TrialCTopicBalance.Parameters.ParamByName
//          ('CompanyCodeFrom').Value;
//        Parameters.ParamByName('CompanyCodeTo').Value :=
//          qry_TrialCTopicBalance.Parameters.ParamByName('CompanyCodeTo').Value;
//      end; // if
//      Parameters.ParamByName('AccCodeFrom').Value :=
//        qry_TrialCTopicBalance.Fieldbyname('AccCode').AsLargeInt;
//      Parameters.ParamByName('AccCodeTo').Value :=
//        qry_TrialCTopicBalance.Fieldbyname('AccCode').AsLargeInt;
//      Active := true;
//    end; // with
  end; // with form
end;

procedure TYearsTrialBalanceF.ShowBeforeAccCode(formtype: Integer);
begin
  CreateMDIForm3(false, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self,
    formtype);
//  with RptTrialBalance_AccF do
//  Begin
//    with qry_TrialBalance do
//    begin
//      Active := false;
//      Parameters.ParamByName('DocTypeCodeFrom').Value := -1;
//      Parameters.ParamByName('DocTypeCodeTo').Value := -1;
//      Parameters.ParamByName('DocTypeCode1_Not').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode_Not').Value;
//      Parameters.ParamByName('DocTypeCode2_Not').Value := -1;
//      Parameters.ParamByName('DocTypeCode3_Not').Value := -1;
//      Parameters.ParamByName('DocDateFrom').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateFrom').Value;
//      Parameters.ParamByName('DocDateTo').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('DocDateTo').Value;
//      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
//      Parameters.ParamByName('PrimaryDocNoTo').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
//      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName
//        ('SecondaryDocNoFrom').Value;
//      Parameters.ParamByName('SecondaryDocNoTo').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
//      Parameters.ParamByName('Status1').Value :=
//        qry_TrialCTopicBalance.Parameters.ParamByName('Status').Value;
//      Parameters.ParamByName('Status2').Value := -1;
//      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
//      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
//      if gv_MultiCompany then
//      begin
//        Parameters.ParamByName('CompanyCodeFrom').Value :=
//          qry_TrialCTopicBalance.Parameters.ParamByName
//          ('CompanyCodeFrom').Value;
//        Parameters.ParamByName('CompanyCodeTo').Value :=
//          qry_TrialCTopicBalance.Parameters.ParamByName('CompanyCodeTo').Value;
//      end; // if
//      Active := true;
//    end; // with
//    qry_TrialBalance.Locate('AccCode',
////      qry_TrialCTopicBalance.Fieldbyname('AccCode').AsLargeInt, []);
//  end; // with_RptTrialBalance_Acc2F

end;

procedure TYearsTrialBalanceF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowFormExecute(Sender);
end;

procedure TYearsTrialBalanceF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Years.Fieldbyname('CTopicCode'));
end;

procedure TYearsTrialBalanceF.N1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TYearsTrialBalanceF.N3Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TYearsTrialBalanceF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TYearsTrialBalanceF.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  SortTitle(Column);
end;

end.
