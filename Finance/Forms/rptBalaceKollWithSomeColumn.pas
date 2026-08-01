unit rptBalaceKollWithSomeColumn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Filter_ADO_Const, AccFunctions,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, Menus, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TrptBalaceKollWithSomeColumnF = class(Ttemplate2MDIF)
    qryBalance: TADOQuery;
    srcBalance: TDataSource;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    qry_Init: TADOQuery;
    qry_InitLevelID: TIntegerField;
    qry_InitLevelCaption: TStringField;
    qry_InitPrvLevelID: TIntegerField;
    qry_InitCodeLength: TWordField;
    qry_InitPrvLevelCaption: TStringField;
    qry_InitPrvCodeLength: TWordField;
    qryBalanceBalanceBes: TFMTBCDField;
    BitBtn5: TBitBtn;
    ButtenLevelTop: TBitBtn;
    ButtenLevelLow: TBitBtn;
    actAfterLevel: TAction;
    BeforeLevel: TAction;
    BitBtn4: TBitBtn;
    actRoll: TAction;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    actVjPrint: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    BitBtn7: TBitBtn;
    actOther: TAction;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLBCompanyName: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDocDate: TppLabel;
    ppLabel3: TppLabel;
    ppLabel10: TppLabel;
    ppLabel7: TppLabel;
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
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine26: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
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
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppLine11: TppLine;
    ppLine20: TppLine;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine29: TppLine;
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
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine14: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine28: TppLine;
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
    ppDBCalc24: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppLine58: TppLine;
    ppLine60: TppLine;
    ppLine16: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine27: TppLine;
    popPrint: TPopupMenu;
    N1: TMenuItem;
    N21: TMenuItem;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;

    lblFilterCaption: TppLabel;
    plblCaption: TppLabel;
    plblLimit: TppLabel;
    qryBalanceAccCode: TStringField;
    qryBalanceFirstdebt: TFMTBCDField;
    qryBalanceFirstCredit: TFMTBCDField;
    qryBalanceLastBed_OFirst: TFMTBCDField;
    qryBalanceLastBes_OFirst: TFMTBCDField;
    qryBalanceLastBed_WFirst: TFMTBCDField;
    qryBalanceLastBes_WFirst: TFMTBCDField;
    qryBalanceLastBalanceBed: TFMTBCDField;
    qryBalanceLastBalanceBes: TFMTBCDField;
    qryBalanceBedIn: TFMTBCDField;
    qryBalanceBedIn_Ofirst: TFMTBCDField;
    qryBalanceBesIn: TFMTBCDField;
    qryBalanceBesIn_OFirst: TFMTBCDField;
    qryBalanceAllBed: TFMTBCDField;
    qryBalanceAllBes: TFMTBCDField;
    qryBalanceBalanceBed: TFMTBCDField;
    qryBalancePrvAccCode: TStringField;
    qryBalanceMoeenName_L1: TStringField;
    qryBalanceMoeenName_L2: TStringField;
    qryBalanceYearId: TIntegerField;
    N31: TMenuItem;
    DBGrid1: TCedarDbgrid;
    qryBalanceCurrencyType: TIntegerField;
    qryBalanceCurrenciesName: TStringField;
    qryBalanceFirstCurrencyDebit: TFMTBCDField;
    qryBalanceFirstCurrencyCredit: TFMTBCDField;
    qryBalanceLastCurrencyDebit_OFirst: TFMTBCDField;
    qryBalanceLastCurrencyCredit_OFirst: TFMTBCDField;
    qryBalanceLastCurrencyDebit_WFirst: TFMTBCDField;
    qryBalanceLastCurrencyCredit_WFirst: TFMTBCDField;
    qryBalanceLastBalanceCurrencyDebit: TFMTBCDField;
    qryBalanceLastBalanceCurrencyCredit: TFMTBCDField;
    qryBalanceCurrencyDebitIn: TFMTBCDField;
    qryBalanceCurrencyCreditIn: TFMTBCDField;
    qryBalanceCurrencyDebitIn_Ofirst: TFMTBCDField;
    qryBalanceCurrencyCreditIn_Ofirst: TFMTBCDField;
    qryBalanceAllCurrencyDebit: TFMTBCDField;
    qryBalanceAllCurrencyCredit: TFMTBCDField;
    qryBalanceBalanceCurrencyDebit: TFMTBCDField;
    qryBalanceBalanceCurrencyCredit: TFMTBCDField;
    qryBalanceCurrencyCode: TStringField;
    MnuCur: TMenuItem;
    MnuCurr2: TMenuItem;
    MnuCurrSp: TMenuItem;
    N4: TMenuItem;
    N7: TMenuItem;
    N23: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    qryBalancebedIn_WithoutFirst: TBCDField;
    qryBalancebesIn_WithoutFirst: TBCDField;
    procedure actFilterExecute(Sender: TObject);
    procedure UpdateList;
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BeforeLevelExecute(Sender: TObject);
    procedure actAfterLevelExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearch_Execute(Sender: TObject);
    procedure actRollExecute(Sender: TObject);
    procedure actVjPrintExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure ppLabel112GetText(Sender: TObject; var Text: string);
    procedure ppLabel113GetText(Sender: TObject; var Text: string);
    procedure lblFilterCaptionGetText(Sender: TObject; var Text: string);
    procedure plblCaptionGetText(Sender: TObject; var Text: string);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure plblLimitGetText(Sender: TObject; var Text: string);
    procedure MnuCurClick(Sender: TObject);
    procedure MnuCurr2Click(Sender: TObject);
    procedure MnuCurrSpClick(Sender: TObject);
    procedure qryBalanceAfterOpen(DataSet: TDataSet);

  private
    _filterCaption: string;
    FormType: Integer;
    ColumnType: Integer;
    ShowFilter: boolean;
    // procedure setColumns(Grid: TCedarDbgrid; colNumber: string;      StateCol: boolean);
    procedure InitForm;
    procedure ShowBalanceDetail;
    procedure ShowAfterAccCode(prvLevelID, CodeLength, PrvCodeLength: Integer);
    procedure ShowBeforeAccCode(LevelID: Integer);
    { Private declarations }
  public
    procedure enter(showFilt: boolean; Form_Type, Column: Integer;
      frParent: TForm);
    { Public declarations }
  end;

var
  rptBalaceKollWithSomeColumnF: TrptBalaceKollWithSomeColumnF;

implementation

uses dm, GlobalPro, filter_ADO, FilterClass_ADO, sort2, search2,
  RptBalanceDetailWithSomeColumn, Rpt_AccBook, AccUnits, DBGrid2Print,
  Resource, FormFunctions;

{$R *.dfm}

procedure TrptBalaceKollWithSomeColumnF.enter(showFilt: boolean;
  Form_Type, Column: Integer; frParent: TForm);
begin
  CreateMDIForm3(showFilt, TrptBalaceKollWithSomeColumnF,
    rptBalaceKollWithSomeColumnF, frParent, Form_Type);
  with rptBalaceKollWithSomeColumnF do
  begin
    ColumnType := Column;
    FormType := Form_Type;
    InitForm;
    // SetColSize(DBGrid1, 1, true, IntToStr(FormType) + '_' +      IntToStr(ColumnType));
    RefreshTab;
  end;
end;

// procedure TrptBalaceKollWithSomeColumnF.setColumns(Grid: TCedarDbgrid;
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

procedure TrptBalaceKollWithSomeColumnF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(DMF.adcAccounting, 'state', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpStatus);
      AddItem(DMF.adcAccounting, 'checked', 'انواع سند', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes ', '');
      // AddItem(DMF.adcAccounting,'DocTypeCode','انواع سند حسابداري','نوع سند',ftInteger,dvMinMax,'','',ciLookup,'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes '
      // ,'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM acc.DocTypes');
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
      AddItem(DMF.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_L1 FROM acc.Categories WHERE levelId=' +
        IntToStr(FormType),
        'SELECT min(TopicCode),max(TopicCode) FROM acc.Categories WHERE levelId='
        + IntToStr(FormType));
      if ShowModal = mrOk then
      begin
        GetFilterString;

        _filterCaption := GetFilterStringCaption;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TrptBalaceKollWithSomeColumnF.UpdateList;
begin
  with qryBalance Do
  begin
    Active := False;
    SetArzParameters(qryBalance, myParams);
    Parameters.ParamByName('LenPrvAccCode').Value :=
      qry_Init.fieldbyname('PrvCodeLength').AsInteger;
    Parameters.ParamByName('LenAccCode').Value :=
      qry_Init.fieldbyname('CodeLength').AsInteger;
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
    // Parameters.ParamByName('DocTypeCodeFrom').Value:=GetcFrom(myParams.ParamValues['DocTypeCode'],ftInteger);
    // Parameters.ParamByName('DocTypeCodeTo').Value:=GetcTo(myParams.ParamValues['DocTypeCode'],ftInteger);;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);
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
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Active := true;
    InitForm;
    DBGridCurrencyKind(DBGrid1, myParams, qryBalance);
  end; // with
end;

procedure TrptBalaceKollWithSomeColumnF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBalance);
end;

procedure TrptBalaceKollWithSomeColumnF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBalaceKollWithSomeColumnF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBalance);
end;

procedure TrptBalaceKollWithSomeColumnF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptBalaceKollWithSomeColumnF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptBalaceKollWithSomeColumnF.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptBalaceKollWithSomeColumnF.qryBalanceAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1,myParams,qryBalance)
end;

procedure TrptBalaceKollWithSomeColumnF.ppLabel112GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if qryBalance.Parameters.ParamValues['PrimaryDocNoTo'] <> '0' then
    Text := ' اسناد از ' + IntToStr(qryBalance.Parameters.ParamValues
      ['PrimaryDocNoFrom']) + ' تا ' +
      IntToStr(qryBalance.Parameters.ParamValues['PrimaryDocNoTo'])
  else
    Text := ' اسناد از ' + IntToStr(qryBalance.Parameters.ParamValues
      ['SecondaryDocNoFrom']) + ' تا ' +
      IntToStr(qryBalance.Parameters.ParamValues['SecondaryDocNoTo'])
end;

procedure TrptBalaceKollWithSomeColumnF.ppLabel113GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := 'از تاريخ ' + qryBalance.Parameters.ParamValues['DocDateFrom'] +
    ' تا تاريخ ' + qryBalance.Parameters.ParamValues['DocDateTo'];
end;

procedure TrptBalaceKollWithSomeColumnF.plblCaptionGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := lblCaption.Caption
end;

procedure TrptBalaceKollWithSomeColumnF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptBalaceKollWithSomeColumnF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  ShowFilter := var_glb_Boolean;
  with qry_Init do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := FormType;
    Active := true;
  end;

end;

procedure TrptBalaceKollWithSomeColumnF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case FormType of
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

procedure TrptBalaceKollWithSomeColumnF.InitForm;
begin
  if FormType = 1 then
    ButtenLevelTop.Enabled := False;
  setColumns2(DBGrid1, ColumnType in [2, 3], 'bedIn_WithoutFirst');
  setColumns2(DBGrid1, ColumnType in [2, 3], 'besIn_WithoutFirst');
  case ColumnType OF
    1:
      begin
        rptBalaceKollWithSomeColumnF.Caption := ' تراز هشت ستوني ' +
          qry_InitLevelCaption.AsString;
        lblCaption.Caption := ' تراز هشت ستوني ' +
          qry_InitLevelCaption.AsString;
        // setColumns(DBGrid1, '#03#04#07#08#09#10#13#14', False);

        // setColumns2(DBGrid1,False,'Firstdebt');
        // setColumns2(DBGrid1,False,'FirstCredit');
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
      end;
    2:
      begin
        lblCaption.Caption := ' تراز ده ستوني حسابهاي ' +
          qry_InitLevelCaption.AsString + ' بتفكيك افتتاحيه ';
        rptBalaceKollWithSomeColumnF.Caption := ' تراز ده ستوني حسابهاي ' +
          qry_InitLevelCaption.AsString + ' بتفكيك افتتاحيه ';
        // setColumns(DBGrid1, '#05#06#09#10#11#12', False);

        setColumns2(DBGrid1, False, 'LastBed_OFirst');
        setColumns2(DBGrid1, False, 'LastBes_OFirst');
        setColumns2(DBGrid1, False, 'LastBalanceBed');
        setColumns2(DBGrid1, False, 'LastBalanceBes');
        setColumns2(DBGrid1, False, 'BedIn');
        setColumns2(DBGrid1, False, 'BesIn');

        setColumns2(DBGrid1, False, 'LastCurrencyDebit_OFirst');
        setColumns2(DBGrid1, False, 'LastCurrencyCredit_OFirst');
        setColumns2(DBGrid1, False, 'LastBalanceCurrencyDebit');
        setColumns2(DBGrid1, False, 'LastBalanceCurrencyCredit');
        setColumns2(DBGrid1, False, 'CurrencyDebitIn');
        setColumns2(DBGrid1, False, 'CurrencyCreditIn');

      end;
    3:
      begin
        lblCaption.Caption := ' تراز ده ستوني ' + qry_InitLevelCaption.AsString;
        rptBalaceKollWithSomeColumnF.Caption := ' تراز ده ستوني ' +
          qry_InitLevelCaption.AsString;
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

procedure TrptBalaceKollWithSomeColumnF.lblFilterCaptionGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := _filterCaption;
end;

procedure TrptBalaceKollWithSomeColumnF.FormShow(Sender: TObject);
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

procedure TrptBalaceKollWithSomeColumnF.ShowBalanceDetail;
begin
  CreateMDIForm3(False, TRptBalanceDetailWithSomeColumnF,
    RptBalanceDetailWithSomeColumnF, Self, ColumnType);
  with RptBalanceDetailWithSomeColumnF do
  begin
    with qryBalanceDetail Do
    begin
      Active := False;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('Status1').Value :=
        Self.qryBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        Self.qryBalance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        Self.qryBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        Self.qryBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        Self.qryBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          Self.qryBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          Self.qryBalance.Parameters.ParamByName('CompanyCodeTo').Value;

      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value :=
        qryBalance.fieldbyname('AccCode').AsInteger;
      Parameters.ParamByName('AccCodeTo').Value :=
        qryBalance.fieldbyname('AccCode').AsInteger;
      Active := true;

    end;
  end;
end;

procedure TrptBalaceKollWithSomeColumnF.BeforeLevelExecute(Sender: TObject);
var
  LevelID: Integer;
begin
  inherited;
  LevelID := FormType - 1;
  with qry_Init do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := LevelID;
    Active := true;
  end;
  ShowBeforeAccCode(LevelID);
end;

procedure TrptBalaceKollWithSomeColumnF.actAfterLevelExecute(Sender: TObject);
var
  prvLevelID: Integer;
  PrvCodeLength, CodeLength: Integer;
begin
  inherited;
  if not qryBalance.IsEmpty then
    with DMF.qry_Temp do
    begin
      close;
      SQL.Text :=
        'SELECT AccTopicLevels.LevelID, AccTopicLevels.CodeLength, ISNULL(AccTopicLevels_1.CodeLength, 0) AS';
      SQL.Add('PrvCodeLength FROM acc.AccTopicLevels  as AccTopicLevels LEFT OUTER JOIN acc.AccTopicLevels AccTopicLevels_1 ON');
      SQL.Add('AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID');
      SQL.Add('WHERE (AccTopicLevels.TopicType = 0) AND AccTopicLevels.PrvLevelID ='
        + IntToStr(FormType));
      Open;
      PrvCodeLength := fieldbyname('PrvCodeLength').AsInteger;
      CodeLength := fieldbyname('CodeLength').AsInteger;
      prvLevelID := fieldbyname('LevelID').AsInteger;
      if fieldbyname('LevelID').AsString = EmptyStr then
        ShowBalanceDetail
      else
        ShowAfterAccCode(prvLevelID, CodeLength, PrvCodeLength);
      close;
    end;
end;

procedure TrptBalaceKollWithSomeColumnF.ShowAfterAccCode(prvLevelID, CodeLength,
  PrvCodeLength: Integer);
var
  AccCode: String;
  MaxAcc, MinAcc: Integer;
begin
  rptBalaceKollWithSomeColumnF.enter(False, prvLevelID, ColumnType, Self);
  AccCode := qryBalance.fieldbyname('AccCode').AsString;
  with DMF.qry_Temp do
  begin
    close;
    SQL.Text := 'SELECT MIN(LEFT(TopicCode, ' + IntToStr(CodeLength) + ')) ,';
    SQL.Add('MAX(LEFT(TopicCode, ' + IntToStr(CodeLength) + ')) ');
    SQL.Add('FROM acc.Documents WHERE LEFT(TopicCode, ' +
      IntToStr(PrvCodeLength) + ') = ' + AccCode);
    Open;
    MinAcc := Fields[0].AsInteger;
    MaxAcc := Fields[1].AsInteger;
    close;
  end; // with

  With rptBalaceKollWithSomeColumnF do
    with qryBalance do
    begin
      close;
      SetParametersqry(qryBalance, Self.qryBalance);
      Parameters.ParamByName('LenPrvAccCode').Value := PrvCodeLength;
      Parameters.ParamByName('LenAccCode').Value := CodeLength;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('Status1').Value :=
        Self.qryBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        Self.qryBalance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        Self.qryBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        Self.qryBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        Self.qryBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('AccCodeFrom').Value := MinAcc;
      Parameters.ParamByName('AccCodeTo').Value := MaxAcc;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      LblShowLimitPlace1.Caption := '   از تاريخ  ' + Parameters.ParamByName
        ('DocDateFrom').Value + '  تا تاريخ  ' + Parameters.ParamByName
        ('DocDateTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          Self.qryBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          Self.qryBalance.Parameters.ParamByName('CompanyCodeTo').Value;

      end; // if
      SetCompanyFilterinLogin(Parameters);
      Open;
      DBGridCurrencyKind(DBGrid1, myParams, qryBalance);
    end;
end;

procedure TrptBalaceKollWithSomeColumnF.ShowBeforeAccCode(LevelID: Integer);
begin
  rptBalaceKollWithSomeColumnF.enter(False, LevelID, ColumnType, Self);;
  with rptBalaceKollWithSomeColumnF do
    with qryBalance do
    begin
      Active := False;
      SetArzParameters(qryBalance, myParams);
      Parameters.ParamByName('LenPrvAccCode').Value :=
        qry_Init.fieldbyname('PrvCodeLength').AsInteger;
      Parameters.ParamByName('LenAccCode').Value :=
        qry_Init.fieldbyname('CodeLength').AsInteger;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        Self.qryBalance.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('Status1').Value :=
        Self.qryBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        Self.qryBalance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        Self.qryBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        Self.qryBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        Self.qryBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      LblShowLimitPlace1.Caption := '   از تاريخ  ' + Parameters.ParamByName
        ('DocDateFrom').Value + '  تا تاريخ  ' + Parameters.ParamByName
        ('DocDateTo').Value;

      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          Self.qryBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          Self.qryBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Open;
    end; // with
  with DMF.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'SELECT MIN(LEFT(' + Self.qryBalance.fieldbyname('AccCode')
      .AsString + ',' + Self.qry_Init.fieldbyname('CodeLength').AsString +
      ')) AS TopicCode FROM  acc.Documents';
    Active := true;
    qryBalance.Locate('AccCode', fieldbyname('TopicCode').AsLargeInt, []);
  end;

end;

procedure TrptBalaceKollWithSomeColumnF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryBalance.fieldbyname('AccCode'));
end;

procedure TrptBalaceKollWithSomeColumnF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBalance);
end;

procedure TrptBalaceKollWithSomeColumnF.actRollExecute(Sender: TObject);
begin
  inherited;
  // Call rpt_AccbookF
  CreateMDIForm3(False, TRpt_AccBookF, Rpt_AccBookF, Self, FormType);
  with Rpt_AccBookF do
  begin
    with qry_Companies do
    begin
      Active := False;
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        qryBalance.Parameters.ParamByName('CompanyCodeFrom').Value;
      Parameters.ParamByName('CompanyCodeTo').Value :=
        qryBalance.Parameters.ParamByName('CompanyCodeTo').Value;
      SetCompanyFilterinLogin(Parameters);
      Active := true;
    end; // with);
    with qry_AccCode do
    begin
      Active := False;
      Parameters.ParamByName('FormType').Value := FormType;
      Parameters.ParamByName('AccCodeFrom').Value :=
        qryBalance.Parameters.ParamByName('AccCodeFrom').Value;
      // GetcFrom(myParams.ParamValues['AccCode'],ftLargeint);
      Parameters.ParamByName('AccCodeTo').Value :=
        qryBalance.Parameters.ParamByName('AccCodeTo').Value;
      // GetcTo(myParams.ParamValues['AccCode'],ftLargeint);
      Active := true;
    end; // with
    with qry_Doc do
    begin
      Active := False;
      SetArzParameters(qry_Doc, myParams);
      Parameters.ParamByName('DocDateFrom').Value :=
        qryBalance.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qryBalance.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qryBalance.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryBalance.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qryBalance.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryBalance.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('AccCodeLen').Value :=
        qry_Init.fieldbyname('CodeLength').AsInteger;
      Parameters.ParamByName('Status1').Value :=
        qryBalance.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value := -1;
      // qryBalance.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qryBalance.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value := -1;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;

      Active := true;
    end; // with);
    qry_AccCode.Locate('AccCode', qryBalance.fieldbyname('AccCode')
      .AsInteger, []);
  end; // with

end;

procedure TrptBalaceKollWithSomeColumnF.actVjPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptBalaceKollWithSomeColumnF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, LblShowLimitPlace1.Caption);

end;

procedure TrptBalaceKollWithSomeColumnF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qryBalance.Requery;
end;

procedure TrptBalaceKollWithSomeColumnF.MnuCurr2Click(Sender: TObject);
begin
  inherited;
  try
    qryBalance.DisableControls;
    case ColumnType of
      1:
        InitReportFile(ppReport1, 'RptBalanceKol_8_2' + (Sender as TMenuItem)
          .Hint, DBGrid1, ppDBPipeline1, _filterCaption);
      2:
        InitReportFile(ppReport1, 'RptBalanceKol_OFirst10_2' +
          (Sender as TMenuItem).Hint, DBGrid1, ppDBPipeline1, _filterCaption);
      3:
        InitReportFile(ppReport1, 'RptBalanceKol_WFirst10_2' +
          (Sender as TMenuItem).Hint, DBGrid1, ppDBPipeline1, _filterCaption);
    end; // case
  finally
    qryBalance.EnableControls;
  end;
end;

procedure TrptBalaceKollWithSomeColumnF.MnuCurClick(Sender: TObject);
begin
  inherited;
  try
    qryBalance.DisableControls;
    case ColumnType of
      1:
        InitReportFile(ppReport1, 'RptBalanceKol_8' + (Sender as TMenuItem)
          .Hint, DBGrid1, ppDBPipeline1, _filterCaption);
      2:
        InitReportFile(ppReport1, 'RptBalanceKol_OFirst10' +
          (Sender as TMenuItem).Hint, DBGrid1, ppDBPipeline1, _filterCaption);
      3:
        InitReportFile(ppReport1, 'RptBalanceKol_WFirst10' +
          (Sender as TMenuItem).Hint, DBGrid1, ppDBPipeline1, _filterCaption);

    end; // case
  finally
    qryBalance.EnableControls;
  end;

end;

procedure TrptBalaceKollWithSomeColumnF.MnuCurrSpClick(Sender: TObject);
begin
  inherited;
  try
    qryBalance.DisableControls;
    InitReportFile(ppReport1, Self.Name + IntToStr(FormType) + '_' +
      IntToStr(ColumnType) + (Sender as TMenuItem).Hint, DBGrid1,
      ppDBPipeline1);
  finally
    qryBalance.EnableControls;
  end;
end;

procedure TrptBalaceKollWithSomeColumnF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TrptBalaceKollWithSomeColumnF.plblLimitGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := 'از تاريخ ' + GetcFrom(myParams.ParamValues['DocDate'], ftString) +
    ' تا تاريخ ' + GetcTo(myParams.ParamValues['DocDate'], ftString);
end;

end.
