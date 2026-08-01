unit RptBalanceDetailWithSomeColumnKol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, ppCtrls, ppVar, ppPrnabl, ppDB,
  ppDBPipe, SumDBGrid, Menus, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const, AccFunctions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TRptBalanceDetailWithSomeColumnKolF = class(Ttemplate2MDIF)
    qryBalanceDetail: TADOQuery;
    qryBalanceDetailLastBed_OFirst: TBCDField;
    qryBalanceDetailLastBes_OFirst: TBCDField;
    qryBalanceDetailLastBed_WFirst: TBCDField;
    qryBalanceDetailLastBes_WFirst: TBCDField;
    qryBalanceDetailLastBalanceBed: TBCDField;
    qryBalanceDetailLastBalanceBes: TBCDField;
    qryBalanceDetailBedIn: TBCDField;
    qryBalanceDetailBesIn: TBCDField;
    qryBalanceDetailBedIn_Ofirst: TBCDField;
    qryBalanceDetailBesIn_OFirst: TBCDField;
    qryBalanceDetailAllBed: TBCDField;
    qryBalanceDetailAllBes: TBCDField;
    qryBalanceDetailBalanceBed: TBCDField;
    qryBalanceDetailBalanceBes: TBCDField;
    srcBalanceDetail: TDataSource;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    qryBalanceDetailDetailCode: TIntegerField;
    BitBtn6: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    ppDBPipeline1: TppDBPipeline;
    qryBalanceDetailFirstDebt: TFMTBCDField;
    qryBalanceDetailFirstCredit: TFMTBCDField;
    qryBalanceDetailTopicCode: TLargeintField;
    qryBalanceDetailDetailName: TStringField;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    qryBalanceDetailDetailName_L2: TStringField;
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
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
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
    qryBalanceDetailKolCode: TStringField;
    qryBalanceDetailkolName: TStringField;
    qryBalanceDetailMoeenName_L1: TStringField;
    qryBalanceDetailGroupCode: TStringField;
    qryBalanceDetailGroupName: TStringField;
    qryBalanceDetailFirstCurrencyDebit: TFMTBCDField;
    qryBalanceDetailFirstCurrencyCredit: TFMTBCDField;
    qryBalanceDetailLastCurrencyDebit_OFirst: TFMTBCDField;
    qryBalanceDetailLastCurrencyCredit_OFirst: TFMTBCDField;
    qryBalanceDetailLastCurrencyDebit_WFirst: TFMTBCDField;
    qryBalanceDetailLastCurrencyCredit_WFirst: TFMTBCDField;
    qryBalanceDetailLastBalanceCurrencyDebit: TFMTBCDField;
    qryBalanceDetailLastBalanceCurrencyCredit: TFMTBCDField;
    qryBalanceDetailCurrencyDebitIn: TFMTBCDField;
    qryBalanceDetailCurrencyCreditIn: TFMTBCDField;
    qryBalanceDetailCurrencyDebitIn_Ofirst: TFMTBCDField;
    qryBalanceDetailCurrencyCreditIn_Ofirst: TFMTBCDField;
    qryBalanceDetailAllCurrencyDebit: TFMTBCDField;
    qryBalanceDetailAllCurrencyCredit: TFMTBCDField;
    qryBalanceDetailBalanceCurrencyDebit: TFMTBCDField;
    qryBalanceDetailBalanceCurrencyCredit: TFMTBCDField;
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
  RptBalanceDetailWithSomeColumnKolF: TRptBalanceDetailWithSomeColumnKolF;

implementation

uses dm, FilterClass_ADO, filter_ADO, GlobalPro, sort2, search2,
  rptBalaceKollWithSomeColumn, Rpt_AccDetailOnTopicBook, AccUnits,
  DBGrid2Print, Resource, FormFunctions;

{$R *.dfm}
// procedure TRptBalanceDetailWithSomeColumnKolF.setColumns(Grid: TDBGrid;
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

procedure TRptBalanceDetailWithSomeColumnKolF.UpdateList;
begin
  with qryBalanceDetail Do
  begin
    Active := False;
    SetArzParameters(qryBalanceDetail, myParams);
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
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);;
    Parameters.ParamByName('Status2').Value := 0;
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    LblShowLimitPlace1.Caption := '   «“  «—ÌŒ  ' + Parameters.ParamByName
      ('DocDateFrom').Value + '   «  «—ÌŒ  ' + Parameters.ParamByName
      ('DocDateTo').Value;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('detailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Active := True;
    InitForm;
    DBGridCurrencyKind(DBGrid1, myParams, qryBalanceDetail);
  end; // with
end;

procedure TRptBalanceDetailWithSomeColumnKolF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);
      AddItem(DMF.adcAccounting, 'state', 'Ê÷⁄Ì  «”‰«œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);
      AddItem(DMF.adcAccounting, 'checked', '«‰Ê«⁄ ”‰œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes ', '');
      // AddItem(DMF.adcAccounting,'DocTypeCode','«‰Ê«⁄ ”‰œ Õ”«»œ«—Ì','‰Ê⁄ ”‰œ',ftInteger,dvMinMax,'','',ciLookup,'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes'
      // ,'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM acc.DocTypes');
      AddItem(DMF.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', '‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ”‰œ', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', '‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ›—⁄Ì', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ', '‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT 0,999999999');
      AddItem(DMF.adcAccounting, 'DetailCode', ' Õ”«»  ›’Ì·Ì', 'ﬂœ  ›’Ì·Ì ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
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

procedure TRptBalanceDetailWithSomeColumnKolF.FormShow(Sender: TObject);
begin
  inherited;
  if ShowFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DetailCode') = nil then
      Close;
  end;
end;

procedure TRptBalanceDetailWithSomeColumnKolF.FormCreate(Sender: TObject);

begin
  inherited;
  ColumnType := var_glb_gParam;
  ShowFilter := var_glb_Boolean;
  InitForm;
end;

procedure TRptBalanceDetailWithSomeColumnKolF.actSendToExcelExecute
  (Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptBalanceDetailWithSomeColumnKolF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBalanceDetail);
end;

procedure TRptBalanceDetailWithSomeColumnKolF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptBalanceDetailWithSomeColumnKolF._actSearchExecute
  (Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBalanceDetail);

end;

procedure TRptBalanceDetailWithSomeColumnKolF.ppLBCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  // Text:=Corporation;
end;

procedure TRptBalanceDetailWithSomeColumnKolF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptBalanceDetailWithSomeColumnKolF.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptBalanceDetailWithSomeColumnKolF.InitForm;
begin
  case ColumnType of
    1:
      begin
        RptBalanceDetailWithSomeColumnKolF.Caption :=
          ' —«“ Â‘  ” Ê‰Ì Õ”«»Â«Ì  ›’Ì·';
        // setColumns(DBGrid1, '#08#09#12#13#14#15#18#19', False);
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
        RptBalanceDetailWithSomeColumnKolF.Caption :=
          ' —«“ œÂ ” Ê‰Ì Õ”«»Â«Ì  ›’Ì· » ›ﬂÌﬂ «›  «ÕÌÂ';
        // setColumns(DBGrid1, '#10#11#14#15#16#17', False);
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
        RptBalanceDetailWithSomeColumnKolF.Caption :=
          ' —«“ œÂ ” Ê‰Ì Õ”«»Â«Ì  ›’Ì·';
        // setColumns(DBGrid1, '#08#09#12#13#18#19', False);
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

procedure TRptBalanceDetailWithSomeColumnKolF.actBeforeLevelExecute
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

procedure TRptBalanceDetailWithSomeColumnKolF.ShowBeforeAccCode
  (FormType: Integer);
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
        qryBalanceDetail.Parameters.ParamByName('DocTypeCodeFrom').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value :=
        qryBalanceDetail.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qryBalanceDetail.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCode2_Not').Value :=
        qryBalanceDetail.Parameters.ParamByName('DocTypeCode2_Not').Value;
      Parameters.ParamByName('DocTypeCode3_Not').Value :=
        qryBalanceDetail.Parameters.ParamByName('DocTypeCode3_Not').Value;
      Parameters.ParamByName('Status1').Value :=
        Self.qryBalanceDetail.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value :=
        Self.qryBalanceDetail.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        qryBalanceDetail.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        Self.qryBalanceDetail.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qryBalanceDetail.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryBalanceDetail.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qryBalanceDetail.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryBalanceDetail.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qryBalanceDetail.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qryBalanceDetail.Parameters.ParamByName('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Active := True;
    end; // with
    with DMF.qry_Temp do
    begin
      Active := False;
      SQL.Text := 'SELECT MIN(LEFT(' + qryBalanceDetail.FieldByName('TopicCode')
        .AsString + ',' + Self.qry_Init.FieldByName('CodeLength').AsString +
        ')) AS TopicCode FROM  acc.Documents';
      Active := True;
      qryBalance.Locate('AccCode', FieldByName('TopicCode').AsLargeInt, []);
    end;
  end;

end;

procedure TRptBalanceDetailWithSomeColumnKolF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryBalanceDetail.FieldByName('DetailCode'));
end;

procedure TRptBalanceDetailWithSomeColumnKolF.actSearch_Execute
  (Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBalanceDetail);
end;

procedure TRptBalanceDetailWithSomeColumnKolF.actRollExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(False, TRpt_AccDetailOnTopicBookF,
    Rpt_AccDetailOnTopicBookF, Self);
  with Rpt_AccDetailOnTopicBookF do
  begin
    with qry_AccCode do
    begin
      Active := False;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryBalanceDetail.Parameters.ParamByName('SecondaryDocNoTo').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryBalanceDetail.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qryBalanceDetail.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('TopicCodeFrom').Value :=
        qryBalanceDetail.FieldByName('TopicCode').AsLargeInt;
      Parameters.ParamByName('TopicCodeTo').Value :=
        qryBalanceDetail.FieldByName('TopicCode').AsLargeInt;
      Parameters.ParamByName('DetailCodeFrom').Value :=
        qryBalanceDetail.FieldByName('DetailCode').AsInteger;
      Parameters.ParamByName('DetailCodeTo').Value :=
        qryBalanceDetail.FieldByName('DetailCode').AsInteger;
      // Parameters.ParamByName('Status1').Value :=
      // qryBalanceDetail.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value :=
      // qryBalanceDetail.Parameters.ParamByName('Status2').Value;
    end; // with
    with qry_Doc do
    begin
      Active := False;
      Parameters.ParamByName('DocDateFrom').Value :=
        qryBalanceDetail.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qryBalanceDetail.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qryBalanceDetail.Parameters.ParamByName('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qryBalanceDetail.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qryBalanceDetail.Parameters.ParamByName('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qryBalanceDetail.Parameters.ParamByName('SecondaryDocNoTo').Value;;
      Parameters.ParamByName('Status1').Value :=
        qryBalanceDetail.Parameters.ParamByName('Status1').Value;
      Parameters.ParamByName('Status2').Value := -1;
      // qryBalanceDetail.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qryBalanceDetail.Parameters.ParamByName('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCodeTo').Value := -1;
      Parameters.ParamByName('FromYearID').Value := APPBank.Year;
      Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    end; // with
    with qry_Companies do
    begin
      Active := False;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qryBalanceDetail.Parameters.ParamByName('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qryBalanceDetail.Parameters.ParamByName('CompanyCodeTo').Value;

      end; // if
      SetCompanyFilterinLogin(Parameters);
      Active := True;
      qry_AccCode.Locate('TopicCode;DetailCode',
        VarArrayOf([qryBalanceDetail.FieldByName('TopicCode').AsCurrency,
        qryBalanceDetail.FieldByName('DetailCode').AsInteger]), []);
    end; // with
  end;

end;

procedure TRptBalanceDetailWithSomeColumnKolF.DBGrid1TitleClick
  (Column: TColumn);
begin
  inherited;
  SortTitle(Column);
end;

procedure TRptBalanceDetailWithSomeColumnKolF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, LblShowLimitPlace1.Caption);
end;

procedure TRptBalanceDetailWithSomeColumnKolF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qryBalanceDetail.Requery;
end;

procedure TRptBalanceDetailWithSomeColumnKolF.MnuPrintClick(Sender: TObject);
begin
  inherited;
  try
    qryBalanceDetail.DisableControls;
    case ColumnType of
      1:
        InitReportFile(ppReport1, 'RptBalancelDetail_8Kol' +
          (Sender as TMenuItem).Hint, DBGrid1, ppDBPipeline1);
      2:
        InitReportFile(ppReport1, 'RptBalanceDetail_OFirst10Kol' +
          (Sender as TMenuItem).Hint, DBGrid1, ppDBPipeline1);
      3:
        InitReportFile(ppReport1, 'RptBalanceDetail_WFirst10Kol' +
          (Sender as TMenuItem).Hint, DBGrid1, ppDBPipeline1);
    end; // case
  finally
    qryBalanceDetail.EnableControls;
  end;

end;

end.
