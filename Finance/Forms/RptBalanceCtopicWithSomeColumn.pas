unit RptBalanceCtopicWithSomeColumn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, ppCtrls, ppVar, ppPrnabl, ppDB,
  ppDBPipe, SumDBGrid, Menus, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const, AccFunctions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type

  TRptBalanceCtopicWithSomeColumnF = class(Ttemplate2MDIF)
    qryBalanceCtopic: TADOQuery;
    qryBalanceCtopicLastBed_OFirst: TBCDField;
    qryBalanceCtopicLastBes_OFirst: TBCDField;
    qryBalanceCtopicLastBed_WFirst: TBCDField;
    qryBalanceCtopicLastBes_WFirst: TBCDField;
    qryBalanceCtopicLastBalanceBed: TBCDField;
    qryBalanceCtopicLastBalanceBes: TBCDField;
    qryBalanceCtopicBedIn: TBCDField;
    qryBalanceCtopicBesIn: TBCDField;
    qryBalanceCtopicBedIn_Ofirst: TBCDField;
    qryBalanceCtopicBesIn_OFirst: TBCDField;
    qryBalanceCtopicAllBed: TBCDField;
    qryBalanceCtopicAllBes: TBCDField;
    qryBalanceCtopicBalanceBed: TBCDField;
    qryBalanceCtopicBalanceBes: TBCDField;
    srcBalanceDetail: TDataSource;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    ppDBPipeline1: TppDBPipeline;
    qryBalanceCtopicFirstDebt: TFMTBCDField;
    qryBalanceCtopicFirstCredit: TFMTBCDField;
    qryBalanceCtopicTopicCode: TLargeintField;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    ButtenLevelTop: TBitBtn;
    actBeforeLevel: TAction;
    qry_Init: TADOQuery;
    qry_InitLevelID: TIntegerField;
    qry_InitLevelCaption: TStringField;
    qry_InitPrvLevelID: TIntegerField;
    qry_InitCodeLength: TWordField;
    qry_InitPrvLevelCaption: TStringField;
    qry_InitPrvCodeLength: TWordField;
    qry_InitTopicType: TWordField;
    BitBtn4: TBitBtn;
    actRoll: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLBCompanyName: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDocDate: TppLabel;
    ppLabel3: TppLabel;
    ppLabel10: TppLabel;
    ppLabel7: TppLabel;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppLabel18: TppLabel;
    ppLine6: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine8: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText2: TppDBText;
    ppLine12: TppLine;
    ppDBText3: TppDBText;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine5: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine15: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel1: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLine51: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBCalc19: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc4: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine24: TppLine;
    ppLabel13: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine50: TppLine;
    ppDBCalc18: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppLine58: TppLine;
    ppLine60: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    BitBtn7: TBitBtn;
    actOther: TAction;
    qryBalanceCtopicYearId: TIntegerField;
    qryBalanceCtopicCTopicCode: TIntegerField;
    qryBalanceCtopicCTopicName_L1: TStringField;
    qryBalanceCtopicCTopicName_L2: TStringField;
    qryBalanceCtopicFirstCurrencyDebit: TFMTBCDField;
    qryBalanceCtopicFirstCurrencyCredit: TFMTBCDField;
    qryBalanceCtopicLastCurrencyDebit_OFirst: TFMTBCDField;
    qryBalanceCtopicLastCurrencyCredit_OFirst: TFMTBCDField;
    qryBalanceCtopicLastCurrencyDebit_WFirst: TFMTBCDField;
    qryBalanceCtopicLastCurrencyCredit_WFirst: TFMTBCDField;
    qryBalanceCtopicLastBalanceCurrencyDebit: TFMTBCDField;
    qryBalanceCtopicLastBalanceCurrencyCredit: TFMTBCDField;
    qryBalanceCtopicCurrencyDebitIn: TFMTBCDField;
    qryBalanceCtopicCurrencyCreditIn: TFMTBCDField;
    qryBalanceCtopicCurrencyDebitIn_Ofirst: TFMTBCDField;
    qryBalanceCtopicCurrencyCreditIn_Ofirst: TFMTBCDField;
    qryBalanceCtopicAllCurrencyDebit: TFMTBCDField;
    qryBalanceCtopicAllCurrencyCredit: TFMTBCDField;
    qryBalanceCtopicBalanceCurrencyDebit: TFMTBCDField;
    qryBalanceCtopicBalanceCurrencyCredit: TFMTBCDField;
    qryBalanceCtopicCurrencyType: TIntegerField;
    qryBalanceCtopicCurrencyCode: TStringField;
    qryBalanceCtopicCurrenciesName: TStringField;
    DBGrid1: TCedarDbgrid;
    PopupMenu1: TPopupMenu;
    MnuPrint: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actBeforeLevelExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearch_Execute(Sender: TObject);
    procedure actRollExecute(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MnuPrintClick(Sender: TObject);
  private
    ColumnType: Integer;
    ShowFilter: boolean;
    procedure ShowBeforeAccCode(FormType: Integer);
    procedure InitForm;
    procedure UpdateList;
    // procedure setColumns(Grid: TDBGrid; colNumber: string; StateCol: boolean);
    { Private declarations }
  public

    { Public declarations }
  end;

var
  RptBalanceCtopicWithSomeColumnF: TRptBalanceCtopicWithSomeColumnF;

implementation

uses dm, FilterClass_ADO, filter_ADO, GlobalPro, sort2, search2,
  rptBalaceKollWithSomeColumn, Rpt_AccDetailOnTopicBook, AccUnits,
  DBGrid2Print, RptBalanceDetailWithSomeColumn, Resource,
  Rpt_CtopicsOnTopicBook, FormFunctions;

{$R *.dfm}
// procedure TRptBalanceCtopicWithSomeColumnF.setColumns(Grid: TDBGrid;
// colNumber: string; StateCol: boolean);
// var
// s: string;
// i: Integer;
// begin
// for i := 0 to Grid.Columns.Count - 1 do
// begin
// s := Format('#%.2d%', [i]);
// if Pos(s, colNumber) <> 0 then
// Grid.Columns[i].Visible := StateCol;
// end; // for
// end;

procedure TRptBalanceCtopicWithSomeColumnF.UpdateList;
begin
  with qryBalanceCtopic Do
  begin
    Active := False;
    SetArzParameters(qryBalanceCtopic, myParams);
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
    // Parameters.ParamByName('DocTypeCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['DocTypeCode'], ftInteger);
    // Parameters.ParamByName('DocTypeCodeTo').Value :=
    // GetcTo(myParams.ParamValues['DocTypeCode'], ftInteger);;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);;
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);;
    Parameters.ParamByName('Status2').Value := 0;
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    LblShowLimitPlace1.Caption := '   از تاريخ  ' + Parameters.ParamByName
      ('DocDateFrom').Value + '  تا تاريخ  ' + Parameters.ParamByName
      ('DocDateTo').Value;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);

    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['Ctopic'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['Ctopic'], ftInteger);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Active := True;
    InitForm;
    DBGridCurrencyKind(DBGrid1, myParams, qryBalanceCtopic);
  end; // with
end;

procedure TRptBalanceCtopicWithSomeColumnF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(DMF.adcAccounting, 'state', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpStatus);
      AddItem(DMF.adcAccounting, 'checked', 'انواع سند', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, '');
      // AddItem(DMF.adcAccounting, 'DocTypeCode', 'انواع سند حسابداري', 'نوع سند',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes',
      // 'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM acc.DocTypes');
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT 0,999999999');
      AddItem(DMF.adcAccounting, 'Ctopic', ' حساب نفضیلی 2', 'كد تفصیلی 2',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.CenterTopics.CTopicCode, acc.CenterTopics.CTopicName_L1 FROM acc.CenterTopics INNER JOIN'
        + ' acc.CenterTopicRange ON acc.CenterTopics.CTopicCode = acc.CenterTopicRange.CTopicCode'
        + ' WHERE (acc.CenterTopics.CTopicCode>0)' +
        ' GROUP BY acc.CenterTopics.CTopicCode, acc.CenterTopics.CTopicName_L1',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.Documents');
      AddItem(DMF.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_L1 FROM acc.Categories WHERE (levelId=3 ) ',
        'SELECT min(TopicCode),max(TopicCode) FROM acc.Categories WHERE levelId=3 ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TRptBalanceCtopicWithSomeColumnF.FormShow(Sender: TObject);
begin
  inherited;
  if ShowFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('Ctopic') = nil then
      Close;
  end;
end;

procedure TRptBalanceCtopicWithSomeColumnF.FormCreate(Sender: TObject);
begin
  inherited;
  ColumnType := var_glb_gParam;
  ShowFilter := var_glb_Boolean;
  InitForm;
end;

procedure TRptBalanceCtopicWithSomeColumnF.actSendToExcelExecute
  (Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptBalanceCtopicWithSomeColumnF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBalanceCtopic);
end;

procedure TRptBalanceCtopicWithSomeColumnF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TRptBalanceCtopicWithSomeColumnF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBalanceCtopic);

end;

procedure TRptBalanceCtopicWithSomeColumnF.ppLBCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptBalanceCtopicWithSomeColumnF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptBalanceCtopicWithSomeColumnF.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptBalanceCtopicWithSomeColumnF.InitForm;
begin
  case ColumnType of
    1:
      begin
        Self.Caption := 'تراز هشت ستوني حسابهاي تفصیلی سطح 2';
        // setColumns(DBGrid1, '#03#04#07#08#09#10#13#14', False);
        setColumns2(DBGrid1, False, 'LastBed_WFirst');
        setColumns2(DBGrid1, False, 'LastBes_WFirst');
        setColumns2(DBGrid1, False, 'LastBalanceBed');
        setColumns2(DBGrid1, False, 'LastBalanceBes');
        setColumns2(DBGrid1, False, 'BedIn_Ofirst');
        setColumns2(DBGrid1, False, 'BesIn_OFirst');

        setColumns2(DBGrid1, False, 'LastCurrencyDebit_WFirst');
        setColumns2(DBGrid1, False, 'LastCurrencyCredit_WFirst');
        setColumns2(DBGrid1, False, 'LastBalanceCurrencyDebit');
        setColumns2(DBGrid1, False, 'LastBalanceCurrencyCredit');
        setColumns2(DBGrid1, False, 'CurrencyDebitIn_Ofirst');
        setColumns2(DBGrid1, False, 'CurrencyCreditIn_OFirst');

        setColumns2(DBGrid1, False, 'LastCurrencyDebit_OFirst');
        setColumns2(DBGrid1, False, 'LastCurrencyCredit_OFirst');
        setColumns2(DBGrid1, False, 'LastBalanceCurrencyDebit');
        setColumns2(DBGrid1, False, 'LastBalanceCurrencyCredit');
        setColumns2(DBGrid1, False, 'CurrencyDebitIn');
        setColumns2(DBGrid1, False, 'CurrencyCreditIn');
      end;
    2:
      begin
        Self.Caption := 'تراز ده ستوني حسابهاي تفصیلی سطح 2 بتفكيك افتتاحيه';
        // setColumns(DBGrid1, '#05#06#09#10#11#12', False);
        setColumns2(DBGrid1, False, 'LastBed_OFirst');
        setColumns2(DBGrid1, False, 'LastBes_OFirst');
        setColumns2(DBGrid1, False, 'LastBalanceBed');
        setColumns2(DBGrid1, False, 'LastBalanceBes');
        setColumns2(DBGrid1, False, 'BedIn');
        setColumns2(DBGrid1, False, 'BesIn');
      end;
    3:
      begin
        Self.Caption := 'تراز ده ستوني حسابهاي تفصیلی سطح 2';
        // setColumns(DBGrid1, '#03#04#07#08#13#14', False);
        setColumns2(DBGrid1, False, 'Firstdebt');
        setColumns2(DBGrid1, False, 'FirstCredit');
        setColumns2(DBGrid1, False, 'LastBed_WFirst');
        setColumns2(DBGrid1, False, 'LastBes_WFirst');
        setColumns2(DBGrid1, False, 'BedIn_Ofirst');
        setColumns2(DBGrid1, False, 'BesIn_OFirst');

        setColumns2(DBGrid1, False, 'FirstCurrencyDebit');
        setColumns2(DBGrid1, False, 'FirstCurrencyCredit');
        setColumns2(DBGrid1, False, 'LastCurrencyDebit_WFirst');
        setColumns2(DBGrid1, False, 'LastCurrencyCredit_WFirst');
        setColumns2(DBGrid1, False, 'CurrencyDebitIn_Ofirst');
        setColumns2(DBGrid1, False, 'CurrencyCreditIn_OFirst');

      end;
  end; // case
end;

procedure TRptBalanceCtopicWithSomeColumnF.actBeforeLevelExecute
  (Sender: TObject);
var
  FormType: Integer;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'SELECT  MAX(LevelID) AS MaxLevel  FROM  acc.AccTopicLevels ' +
      'WHERE  (TopicType = 0)  GROUP BY TopicType';
    Active := True;
    FormType := FieldByName('MaxLevel').AsInteger
  end;
  with qry_Init do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
  end;
  ShowBeforeAccCode(FormType);
end;

procedure TRptBalanceCtopicWithSomeColumnF.ShowBeforeAccCode(FormType: Integer);
begin
  rptBalaceKollWithSomeColumnF.enter(False, FormType, ColumnType, Self);
  with rptBalaceKollWithSomeColumnF do
  begin
    with qryBalance do
    begin
      Active := False;
      Parameters.ParamByName('LenPrvAccCode').Value :=
        Self.qry_Init.FieldByName('PrvCodeLength').AsInteger;
      Parameters.ParamByName('LenAccCode').Value :=
        Self.qry_Init.FieldByName('CodeLength').AsInteger;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('Status1').Value :=
        Self.qryBalanceCtopic.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        Self.qryBalanceCtopic.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        Self.qryBalanceCtopic.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qryBalanceCtopic.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryBalanceCtopic.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qryBalanceCtopic.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryBalanceCtopic.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qryBalanceCtopic.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qryBalanceCtopic.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);

      Active := True;
    end; // with
    with DMF.qry_Temp do
    begin
      Active := False;
      SQL.Text := 'SELECT MIN(LEFT(' + qryBalanceCtopic.FieldByName('TopicCode')
        .AsString + ',' + Self.qry_Init.FieldByName('CodeLength').AsString +
        ')) AS TopicCode FROM  acc.Documents';
      Active := True;
      qryBalance.Locate('AccCode', FieldByName('TopicCode').AsLargeInt, []);
    end;
  end;

end;

procedure TRptBalanceCtopicWithSomeColumnF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryBalanceCtopic.FieldByName('CTopicCode'));
end;

procedure TRptBalanceCtopicWithSomeColumnF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBalanceCtopic);
end;

procedure TRptBalanceCtopicWithSomeColumnF.actRollExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(False, TRpt_CtopicsOnTopicBookF,
    Rpt_CtopicsOnTopicBookF, Self);
  with Rpt_CtopicsOnTopicBookF do
  begin
    with qry_AccCode do
    begin
      Active := False;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryBalanceCtopic.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryBalanceCtopic.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('TopicCodeFrom').Value :=
        qryBalanceCtopic.FieldByName('TopicCode').AsLargeInt;
      Parameters.ParamByName('TopicCodeTo').Value :=
        qryBalanceCtopic.FieldByName('TopicCode').AsLargeInt;
      Parameters.ParamByName('CTopicCodeFrom').Value :=
        qryBalanceCtopic.FieldByName('CTopicCode').AsInteger;
      Parameters.ParamByName('CTopicCodeTo').Value :=
        qryBalanceCtopic.FieldByName('CTopicCode').AsInteger;
      // Parameters.ParamByName('DetailCodeFrom').Value :=
      // qryBalanceCtopic.FieldByName('DetailCode').AsInteger;
      // Parameters.ParamByName('DetailCodeTo').Value :=
      // qryBalanceCtopic.FieldByName('DetailCode').AsInteger;
      // Parameters.ParamByName('Status1').Value :=
      // qryBalanceCtopic.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value :=
      // qryBalanceCtopic.Parameters.ParamByName('Status2').Value;
    end; // with
    with qry_Doc do
    begin
      Active := False;
      Parameters.ParamByName('DocDateFrom').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qryBalanceCtopic.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryBalanceCtopic.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qryBalanceCtopic.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryBalanceCtopic.Parameters.ParamByName('SecondaryDocNoTo').Value;;
      Parameters.ParamByName('Status1').Value :=
        qryBalanceCtopic.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        qryBalanceCtopic.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qryBalanceCtopic.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    end; // with
    with qry_Companies do
    begin
      Active := False;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qryBalanceCtopic.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qryBalanceCtopic.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);

      Active := True;
    end; // with
  end;

end;

procedure TRptBalanceCtopicWithSomeColumnF.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  SortTitle(Column);
end;

procedure TRptBalanceCtopicWithSomeColumnF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, LblShowLimitPlace1.Caption);
end;

procedure TRptBalanceCtopicWithSomeColumnF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qryBalanceCtopic.Requery;
end;

procedure TRptBalanceCtopicWithSomeColumnF.MnuPrintClick(Sender: TObject);
begin
  inherited;
  try
    qryBalanceCtopic.DisableControls;
    case ColumnType of
      1:
        InitReportFile(ppReport1, 'RptBalanceCtopic_8' + (Sender as TMenuItem)
          .Hint, DBGrid1, ppDBPipeline1);
      2:
        InitReportFile(ppReport1, 'RptBalanceCtopic_OFirst10' +
          (Sender as TMenuItem).Hint, DBGrid1, ppDBPipeline1);
      3:
        InitReportFile(ppReport1, 'RptBalanceCtopic_WFirst10' +
          (Sender as TMenuItem).Hint, DBGrid1, ppDBPipeline1);
    end; // case
  finally
    qryBalanceCtopic.EnableControls;
  end;
end;

end.
