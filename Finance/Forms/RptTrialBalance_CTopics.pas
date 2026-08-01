unit RptTrialBalance_CTopics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, ComCtrls, Menus, Filter_ADO_Const, FaraConsts,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppParameter, ppDesignLayer,AccFunctions,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TRptTrialBalance_CTopicsF = class(Ttemplate2MDIF)
    qry_TrialCTopicBalance: TADOQuery;
    qry_TrialCTopicBalanceTopicCode: TLargeintField;
    qry_TrialCTopicBalanceMoeenName: TStringField;
    qry_TrialCTopicBalanceDebt: TFMTBCDField;
    qry_TrialCTopicBalanceCredit: TFMTBCDField;
    src_TrialCTopicBalance: TDataSource;
    qry_TrialCTopicBalanceCTopicCode: TIntegerField;
    qry_TrialCTopicBalanceCTopicName: TStringField;
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
    qry_TrialCTopicBalanceBalanceDebt: TFMTBCDField;
    qry_TrialCTopicBalanceBalanceCredit: TFMTBCDField;
    qry_TrialCTopicBalanceMoeenName_L2: TStringField;
    qry_TrialCTopicBalanceCTopicName_L2: TStringField;
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
    qry_TrialCTopicBalancebes: TBCDField;
    qry_TrialCTopicBalancebed: TBCDField;
    qry_TrialCTopicBalanceMandehBed: TBCDField;
    qry_TrialCTopicBalance_row: TLargeintField;
    qry_TrialCTopicBalanceMandehbes: TBCDField;
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
    popOther: TPopupMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    actFilterForm: TAction;
    N2: TMenuItem;
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
    procedure qry_TrialCTopicBalanceAfterOpen(DataSet: TDataSet);
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
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure qrySumCTopicAfterOpen(DataSet: TDataSet);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
    // flag:boolean;

    ShowFilter: boolean;
    procedure ShowBeforeAccCode(formtype: Integer);
    // procedure Updateremain;
    procedure UpdateFilter;
    // function CalcSumFileds(FiledName: String): Currency;
    // procedure chooseColumnDown;
    // procedure chooseColumnUp;
  public
    { Public declarations }
  end;

var
  RptTrialBalance_CTopicsF: TRptTrialBalance_CTopicsF;
  cloned: TADOQuery;

implementation

uses FilterClass_ADO, filter_ADO, GlobalPro, Dm, search2, sort2,
  RptTrialBalance_Acc, Rpt_CtopicsOnTopicBook,
  RptTrialBalance_CTopics2,
  DBGrid2Print, Mymostafa, AccUnits, FormFunctions, Resource;

{$R *.dfm}

procedure TRptTrialBalance_CTopicsF.FormShow(Sender: TObject);
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

procedure TRptTrialBalance_CTopicsF.actFilterExecute(Sender: TObject);
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
      // AddItem(DMF.adcAccounting,'DocTypeCode','انواع سند حسابداري','نوع سند',ftInteger,dvMinMax,'','',
      // ciLookup,strLookUpDocType,strMaxMinDocType);
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

procedure TRptTrialBalance_CTopicsF.FormCreate(Sender: TObject);
begin
  inherited;
  cloned := TADOQuery.Create(Self);
  ShowFilter := var_glb_Boolean;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
end;

// function TRptTrialBalance_CTopicsF.CalcSumFileds(
// FiledName: String): Currency;
// begin
// Result:=0;
// try
// with cloned do begin
// Clone(qry_TrialCTopicBalance,ltReadOnly);
// First;
// while not eof do begin
// Result:=Result +fieldbyname(FiledName).AsCurrency;
// Next;
// end;//while
// end;//with
// except
// end;//try
// end;

procedure TRptTrialBalance_CTopicsF.UpdateFilter;
begin
  // s:=GetcTo(myParams.ParamValues['checked'],ftString);
  // ts:= TStringList.Create;
  //
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

  with qry_TrialCTopicBalance do
  begin
    Active := false;
    SetArzParameters(qry_TrialCTopicBalance,MyParams);
    // Parameters.ParamByName('DocTypeCodeFrom').Value:=GetcFrom(myParams.ParamValues['DocTypeCode'],ftInteger);
    // Parameters.ParamByName('DocTypeCodeTo').Value:=GetcTo(myParams.ParamValues['DocTypeCode'],ftInteger);;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);;

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
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end; // if
    SetCompanyFilterinLogin(Parameters);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Active := true;

  end; // with

end;

// procedure TRptTrialBalance_CTopicsF.Updateremain;
// var
// c,bes,bed,mbes,mbed: Currency ;
// amount,i:integer;
// begin
// with qry_TrialCTopicBalance do begin
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
// StatusBar1.Panels[5].Text:='تعداد سطر كل= '+IntToStr(qry_TrialCTopicBalance.RecordCount);
// StatusBar1.Panels[3].Text:=CurrToStrF(bed,ffCurrency,0) ;
// StatusBar1.Panels[2].Text:=CurrToStrF(bes,ffCurrency,0) ;
// StatusBar1.Panels[1].Text:=CurrToStrF(mbed,ffCurrency,0);
// StatusBar1.Panels[0].Text:=CurrToStrF(mbes,ffCurrency,0);
// end;

procedure TRptTrialBalance_CTopicsF.qrySumCTopicAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // StatusBar4.Panels[0].Text := 'بس=' +
  // CurrToStrF(qrySumCTopic.Fieldbyname('sumBalanceCredit').AsCurrency,
  // ffCurrency, 0);
  // StatusBar4.Panels[1].Text := 'بد=' +
  // CurrToStrF(qrySumCTopic.Fieldbyname('sumBalanceDebt').AsCurrency,
  // ffCurrency, 0);
  // StatusBar4.Panels[2].Text := 'بس=' +
  // CurrToStrF(qrySumCTopic.Fieldbyname('sumCredit').AsCurrency,
  // ffCurrency, 0);
  // StatusBar4.Panels[3].Text := 'بد=' +
  // CurrToStrF(qrySumCTopic.Fieldbyname('sumDebt').AsCurrency, ffCurrency, 0);
  // StatusBar4.Panels[4].Text := ' جمع ' + qry_TrialCTopicBalance.Fieldbyname
  // ('MoeenName_L1').AsString;
end;

procedure TRptTrialBalance_CTopicsF.qry_TrialCTopicBalanceAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1,myParams,qry_TrialCTopicBalance)
    // Updateremain;

end;

procedure TRptTrialBalance_CTopicsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialCTopicBalance);
end;

procedure TRptTrialBalance_CTopicsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialCTopicBalance);
end;

procedure TRptTrialBalance_CTopicsF.actSendExeclExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptTrialBalance_CTopicsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TRpt_CtopicsOnTopicBookF,
    Rpt_CtopicsOnTopicBookF, Self);
  with Rpt_CtopicsOnTopicBookF do
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
        qry_TrialCTopicBalanceTopicCode.AsInteger;
      Parameters.ParamByName('TopicCodeTo').Value :=
        qry_TrialCTopicBalanceTopicCode.AsInteger;
      Parameters.ParamByName('CTopicCodeFrom').Value :=
        qry_TrialCTopicBalanceCTopicCode.AsInteger;
      Parameters.ParamByName('CTopicCodeto').Value :=
        qry_TrialCTopicBalanceCTopicCode.AsInteger;
      // Parameters.ParamByName('Status1').Value :=
      // qry_TrialCTopicBalance.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value :=
      // qry_TrialCTopicBalance.Parameters.ParamByName('Status2').Value;

      Active := true;
    end; // with
    with qry_Doc do
    begin
      Active := false;
      SetParametersqry(qry_Doc,qry_TrialCTopicBalance)   ;
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
        qry_TrialCTopicBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('FromYearId').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
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

procedure TRptTrialBalance_CTopicsF.actBeforeLevelExecute(Sender: TObject);
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

procedure TRptTrialBalance_CTopicsF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialCTopicBalance.Requery();
end;

procedure TRptTrialBalance_CTopicsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_TrialCTopicBalance.DisableControls;
    PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qry_TrialCTopicBalance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_CTopicsF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopicsF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopicsF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopicsF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_L', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopicsF.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qry_TrialCTopicBalance.Fieldbyname('TopicCode').AsString + '_' +
    qry_TrialCTopicBalance.Fieldbyname('CTopicCode').AsString;
end;

procedure TRptTrialBalance_CTopicsF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptTrialBalance_CTopicsF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptTrialBalance_CTopicsF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialBalance_CTopicsF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qry_TrialCTopicBalance.Parameters.ParamValues
    ['DocDateFrom'] + ' تا تاريخ ' + qry_TrialCTopicBalance.Parameters.
    ParamValues['DocDateTo'];
end;

procedure TRptTrialBalance_CTopicsF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' اسناد از ' + IntToStr(qry_TrialCTopicBalance.Parameters.ParamValues
    ['PrimaryDocNoFrom']) + ' تا ' +
    IntToStr(qry_TrialCTopicBalance.Parameters.ParamValues['PrimaryDocNoTo']);
end;

procedure TRptTrialBalance_CTopicsF.actAfterLevelExecute(Sender: TObject);
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

      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
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
        qry_TrialCTopicBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('Status2').Value;
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

procedure TRptTrialBalance_CTopicsF.ShowBeforeAccCode(formtype: Integer);
begin
  CreateMDIForm3(false, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self,
    formtype);
  with RptTrialBalance_AccF do
  Begin
    with qry_TrialBalance do
    begin
      Active := false;
      SetParametersqry(qry_TrialBalance,qry_TrialCTopicBalance)   ;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
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
        qry_TrialCTopicBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qry_TrialCTopicBalance.Parameters.ParamByName('Status2').Value;;
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

procedure TRptTrialBalance_CTopicsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_TrialCTopicBalance.Fieldbyname('CTopicCode'));
end;

procedure TRptTrialBalance_CTopicsF.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // if DBGrid1.SelectedRows.Count>1 then begin
  // if (Button=mbleft) and (Shift=[ssctrl] )then
  // if DBGrid1.SelectedRows.CurrentRowSelected  then begin
  // sumDebt:=sumDebt+qry_TrialCTopicBalance.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=sumCredit+qry_TrialCTopicBalance.Fieldbyname('Credit').AsCurrency;
  // sumBalaDebt:=sumBalaDebt+qry_TrialCTopicBalance.Fieldbyname('BalanceDebt').AsCurrency;
  // sumBalaCredit:=sumBalaCredit+qry_TrialCTopicBalance.Fieldbyname('BalanceCredit').AsCurrency;
  // end
  // else begin
  // sumDebt:=sumDebt-qry_TrialCTopicBalance.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=sumCredit-qry_TrialCTopicBalance.Fieldbyname('Credit').AsCurrency;
  // sumBalaDebt:=sumBalaDebt-qry_TrialCTopicBalance.Fieldbyname('BalanceDebt').AsCurrency;
  // sumBalaCredit:=sumBalaCredit-qry_TrialCTopicBalance.Fieldbyname('BalanceCredit').AsCurrency;
  // end
  // end
  // else begin
  // sumDebt:=qry_TrialCTopicBalance.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=qry_TrialCTopicBalance.Fieldbyname('Credit').AsCurrency;
  // sumBalaDebt:=qry_TrialCTopicBalance.Fieldbyname('BalanceDebt').AsCurrency;
  // sumBalaCredit:=qry_TrialCTopicBalance.Fieldbyname('BalanceCredit').AsCurrency;
  // end;//if
  // if DBGrid1.SelectedRows.CurrentRowSelected=false  then begin
  // if DBGrid1.SelectedRows.Count>0 then
  // qry_TrialCTopicBalance.GotoBookmark(pointer(DBGrid1.SelectedRows[DBGrid1.SelectedRows.Count-1]));
  // if DBGrid1.SelectedRows.Count=1 then begin
  // sumDebt:=qry_TrialCTopicBalance.Fieldbyname('Debt').AsCurrency;
  // sumCredit:=qry_TrialCTopicBalance.Fieldbyname('Credit').AsCurrency;
  // sumBalaDebt:=qry_TrialCTopicBalance.Fieldbyname('BalanceDebt').AsCurrency;
  // sumBalaCredit:=qry_TrialCTopicBalance.Fieldbyname('BalanceCredit').AsCurrency;
  // end;
  // end;
  // StatusBar2.Panels[5].Text:=' تعداد سطر انتخابي='+IntToStr(DBGrid1.SelectedRows.count);
  // StatusBar2.Panels[3].Text:=CurrToStrF(sumDebt,ffCurrency,0);
  // StatusBar2.Panels[2].text:=CurrToStrF(sumCredit,ffCurrency,0);
  // StatusBar2.Panels[1].Text:=CurrToStrF(sumBalaDebt,ffCurrency,0);
  // StatusBar2.Panels[0].text:=CurrToStrF(sumBalaCredit,ffCurrency,0);

end;

procedure TRptTrialBalance_CTopicsF.N1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRptTrialBalance_CTopicsF.N3Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TRptTrialBalance_CTopicsF.N5Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic_AllCurrency', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopicsF.N6Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RepRptTrialBalance_CTopics_Topic_Currency', DBGrid1,
    ppDBPipeline1);
end;

procedure TRptTrialBalance_CTopicsF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

end.
