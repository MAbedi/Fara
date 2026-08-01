unit RptFinanceReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, Grids, Vcl.DBGrids,
  ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, Buttons, DBClient,
  Provider, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ADODB, DBCtrls, ppEndUsr, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TRptFinanceReportF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SrcFinance: TDataSource;
    SrcFinanceName: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppRpt_2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBPipeline2: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    BitBtn1: TBitBtn;
    ppLine6: TppLine;
    ppRpt_1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine12: TppLine;
    ppReport1: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine18: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    actPrint: TAction;
    ppLine13: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppLabel25: TppLabel;
    ppShape1: TppShape;
    ppLabel26: TppLabel;
    qryFinancename: TADOQuery;
    qryFinancenamerepCode: TWordField;
    qryFinancenamerepName: TWideStringField;
    qryFinancenameReportType: TWordField;
    qryFinancenameColNumShow: TWordField;
    qryFinancename_QryType: TSmallintField;
    btnFilter: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    BitBtn3: TBitBtn;
    actDesign: TAction;
    ppDesigner1: TppDesigner;
    qryFinance: TADOQuery;
    actFilter: TAction;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    qryFinancerepCode: TIntegerField;
    qryFinancerowID: TIntegerField;
    qryFinancerowTopic1: TWideStringField;
    qryFinanceColNum1: TSmallintField;
    qryFinancelink1: TWideStringField;
    qryFinanceAmount1: TBCDField;
    qryFinanceAmount2: TBCDField;
    qryFinancerowTopic2: TWideStringField;
    qryFinanceColNum2: TSmallintField;
    qryFinancelink2: TWideStringField;
    qryFinanceAmount11: TBCDField;
    qryFinanceAmount12: TBCDField;
    qryFinanceLineRpt: TStringField;
    qryFinancecType1: TSmallintField;
    qryFinancecType2: TSmallintField;
    qryFinanceAmountO1: TBCDField;
    qryFinanceAmountO2: TBCDField;
    qryFinanceAmountO11: TBCDField;
    qryFinanceAmountO12: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    // procedure TblFinanceNameAfterScroll(DataSet: TDataSet);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppDBText16GetText(Sender: TObject; var Text: String);
    procedure ppDBText13GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppDBText10GetText(Sender: TObject; var Text: String);
    procedure ppDBText4GetText(Sender: TObject; var Text: String);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppLabel26GetText(Sender: TObject; var Text: String);
    procedure qryFinancenameAfterScroll(DataSet: TDataSet);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actDesignExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    // FFilterString: String;
    FSqlTxt: string;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptFinanceReportF: TRptFinanceReportF;

implementation

uses dm, GlobalPro, search1, sort, FilterClass_ADO, filter_ADO, Resource,
  search2, sort2, FormFunctions;
{$R *.dfm}

procedure TRptFinanceReportF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // DBGrid2.Columns[7].Visible := True;
  // DBGrid2.Columns[3].Visible := True;
  setColumns2(DBGrid2, True, 'Amount12');
  setColumns2(DBGrid2, True, 'Amount2');

  setColumns2(DBGrid2, True, 'AmountO12');
  setColumns2(DBGrid2, True, 'AmountO2');
end;

procedure TRptFinanceReportF.FormCreate(Sender: TObject);
begin
  inherited;
  FSqlTxt := qryFinance.SQL.Text;
  // --AND (_ReportRowsOnDocs.YearID = Documents.YearID)
  ppDesigner1.IniStorageName := __AppData + 'RBuilder.ini'
end;

procedure TRptFinanceReportF.qryFinancenameAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateFilter;
end;

procedure TRptFinanceReportF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if qryFinanceColNum1.AsInteger = 1 then
    Text := qryFinanceLineRpt.AsString;
end;

procedure TRptFinanceReportF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if qryFinancenameReportType.AsInteger = 1 then
    case qryFinancenameColNumShow.AsInteger of
      1:
        InitReportFile(ppRpt_1, 'RptFinanceReport', DBGrid2, ppDBPipeline1);
      2:
        InitReportFile(ppRpt_2, 'RptFinanceReport2', DBGrid2, ppDBPipeline1);
    end // case
  else
    InitReportFile(ppReport1, 'RptFinanceReport3', DBGrid2, ppDBPipeline1);

end;

procedure TRptFinanceReportF.ppDBText16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qryFinancecType1.AsInteger of
    6:
      Text := '__________________';
    7:
      Text := '==================';
  end; // case
end;

procedure TRptFinanceReportF.ppDBText13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qryFinancecType2.AsInteger of
    6:
      Text := '__________________';
    7:
      Text := '==================';
  end; // case
end;

procedure TRptFinanceReportF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBANK.CompanyName;
end;

procedure TRptFinanceReportF.ppLabel9GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBANK.CompanyName;
end;

procedure TRptFinanceReportF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBANK.CompanyName;
end;

procedure TRptFinanceReportF.ppDBText10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qryFinancecType1.AsInteger of
    6:
      Text := '__________________';
    7:
      Text := '==================';
  end; // case
end;

procedure TRptFinanceReportF.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qryFinanceColNum1.AsInteger = 1 then
    case qryFinancecType1.AsInteger of
      6:
        Text := '__________________';
      7:
        Text := '==================';
    end; // case
end;

procedure TRptFinanceReportF.ppDBText5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qryFinanceColNum1.AsInteger = 2 then
    case qryFinancecType1.AsInteger of
      6:
        Text := '__________________';
      7:
        Text := '==================';
    end; // case
end;

procedure TRptFinanceReportF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 0);
end;

procedure TRptFinanceReportF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2);
end;

procedure TRptFinanceReportF.ppLabel26GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text := FFilterString;
end;

procedure TRptFinanceReportF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TRptFinanceReportF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFinance);
end;

procedure TRptFinanceReportF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFinance);
end;

procedure TRptFinanceReportF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFinance);
end;

procedure TRptFinanceReportF.actDesignExecute(Sender: TObject);
begin
  inherited;
  if qryFinancenameReportType.AsInteger = 1 then
    case qryFinancenameColNumShow.AsInteger of
      1:
        begin
          ppDesigner1.Report := ppRpt_1;
          ppDesigner1.Report.Template.FileName :=
            IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)) + 'Report') +
            'RptFinanceReport.rtm';
        end;
      2:
        begin
          ppDesigner1.Report := ppRpt_2;
          ppDesigner1.Report.Template.FileName :=
            IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)) + 'Report') +
            'RptFinanceReport2.rtm';
        end;
    end // case
  else
  begin
    ppDesigner1.Report := ppReport1;
    ppDesigner1.Report.Template.FileName :=
      IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)) + 'Report') +
      'RptFinanceReport3.rtm';
  end;
  ppDesigner1.ShowModal;
end;

procedure TRptFinanceReportF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try

      AddItem(DMF.adcAccounting, 'Doc_Type_Code', 'انواع سند', '', ftInteger,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, '');
      AddItem(DMF.adcAccounting, 'CtopicCode3', ' حساب تفصیلی 4 ', 'كد ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpCTopicCode3,
        strMaxMinCTopicCode3);

      AddItem(DMF.adcAccounting, 'DocDateNew', 'تاريخ سندحسابداري',
        'تاريخ جاری', ftDate, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinDocDate, [APPBANK.Year]));

      AddItem(DMF.adcAccounting, 'DocDateOld', 'تاريخ سندحسابداري', 'تاريخ قبل',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBANK.Year-1]));

      // AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
      // ftInteger, dvMinMax, '', '', ciSimple, '',
      // 'SELECT Min(YearID), Max(YearID) FROM UTil.maliYear');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد شركت ', 'كد شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT  CompanyCode, CompanyName_L1 FROM  acc.Companies  ',
          ' Select 0,2147483647 ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        LblShowLimitPlace1.Caption := GetFilterStringCaption;
        LblShowLimitPlace1.Hint := LblShowLimitPlace1.Caption;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TRptFinanceReportF.UpdateFilter;
var
  strSql: string;
  strDocType: String;
const
  W1 = 'AND  ([_ReportRowsOnDocs].G_DetailCode = Documents.DetailCode)';
  W2 = 'AND  ([_ReportRowsOnDocs].G_CTopicCode = Documents.CTopicCode)';
  w3 = 'AND (DocGroups.DocTypeCode in(%s) OR DocGroups.DocTypeCode IS NULL )';
begin
  qryFinancename.Active := True;
  if qryFinancenameColNumShow.AsInteger = 1 then
  begin
    // DBGrid2.Columns[7].Visible := False;
    // DBGrid2.Columns[3].Visible := False;
    setColumns2(DBGrid2, False, 'Amount12');
    setColumns2(DBGrid2, False, 'Amount2');
    setColumns2(DBGrid2, False, 'AmountO12');
    setColumns2(DBGrid2, False, 'AmountO2');
  end
  else
  begin
    // DBGrid2.Columns[3].Visible := True;
    // DBGrid2.Columns[7].Visible := True;
    setColumns2(DBGrid2, True, 'Amount2');
    setColumns2(DBGrid2, True, 'Amount12');
    setColumns2(DBGrid2, True, 'AmountO2');
    setColumns2(DBGrid2, True, 'AmountO12');
  end;
  if qryFinancenameReportType.AsInteger <> 2 then
  begin
    // DBGrid2.Columns[4].Visible := False;
    // DBGrid2.Columns[5].Visible := False;
    // DBGrid2.Columns[6].Visible := False;
    // DBGrid2.Columns[7].Visible := False;
    setColumns2(DBGrid2, False, 'rowTopic2');
    setColumns2(DBGrid2, False, 'link2');
    setColumns2(DBGrid2, False, 'Amount11');
    setColumns2(DBGrid2, False, 'Amount12');
    setColumns2(DBGrid2, False, 'AmountO11');
    setColumns2(DBGrid2, False, 'AmountO12');
  end
  else
  begin
    // DBGrid2.Columns[4].Visible := True;
    // DBGrid2.Columns[5].Visible := True;
    // DBGrid2.Columns[6].Visible := True;
    // if qryFinancenameColNumShow.AsInteger <> 1 then
    // DBGrid2.Columns[7].Visible := True;
    setColumns2(DBGrid2, True, 'rowTopic2');
    setColumns2(DBGrid2, True, 'link2');
    setColumns2(DBGrid2, True, 'Amount11');
    if qryFinancenameColNumShow.AsInteger <> 1 then
      setColumns2(DBGrid2, True, 'Amount12');

    setColumns2(DBGrid2, True, 'AmountO11');
    if qryFinancenameColNumShow.AsInteger <> 1 then
      setColumns2(DBGrid2, True, 'AmountO12');
  end; // if

  with qryFinance do
  begin
    Active := False;
    strSql := FSqlTxt;

    if qryFinancename_QryType.AsInteger in [2, 4] then
      strSql := StringReplace(strSql, '--2', W1, [rfReplaceAll])
    else
      strSql := StringReplace(strSql, '--2', EmptyStr, [rfReplaceAll]);

    if qryFinancename_QryType.AsInteger in [3, 4] then
      strSql := StringReplace(strSql, '--3', W2, [rfReplaceAll])
    else
      strSql := StringReplace(strSql, '--3', EmptyStr, [rfReplaceAll]);

    strDocType := GetcFrom(myParams.ParamValues['Doc_Type_Code'], ftString);
    if strDocType <> EmptyStr then
      strSql := StringReplace(strSql, '--4', Format(w3, [strDocType]),
        [rfReplaceAll])
    else
      strSql := StringReplace(strSql, '--4', EmptyStr, [rfReplaceAll]);
    SQL.Text := strSql;

    Parameters.ParamByName('DocDateOldFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDateOld'], ftString);
    Parameters.ParamByName('DocDateOldTo').Value :=
      GetcTo(myParams.ParamValues['DocDateOld'], ftString);

    Parameters.ParamByName('DocDateNewFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDateNew'], ftString);
    Parameters.ParamByName('DocDateNewTo').Value :=
      GetcTo(myParams.ParamValues['DocDateNew'], ftString);

  //   AND ( DocGroups.YearID  between :FromYearID  and  :ToYearID )
    //  Parameters.ParamByName('FromYearId').Value := APPBANK.Year;
//    Parameters.ParamByName('ToYearId').Value := APPBANK.Year;

    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);

    Parameters.ParamByName('CompanyCodeFrom').Value := opta.DefaultCompany;
    Parameters.ParamByName('CompanyCodeTO').Value := opta.DefaultCompany;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTO').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);

    // if myParams.FindParam('Year') <> nil then
    // begin
    // Parameters.ParamByName('FromYearID').Value :=
    // GetcFrom(myParams.ParamValues['Year'], ftInteger);
    // Parameters.ParamByName('ToYearID').Value :=
    // GetcTo(myParams.ParamValues['Year'], ftInteger);
    // end;

    // with qryFinance do
    // begin
    Active := False;
    Parameters.ParamByName('RepCode').Value := qryFinancenamerepCode.AsInteger;
    Active := True;
    // end;
    // LblShowLimitPlace1.Caption := '   از تاريخ  ' + Parameters.ParamByName
    // ('DocDateL1From').Value + '  تا تاريخ  ' + Parameters.ParamByName
    // ('DocDateL1To').Value;    1
    // Active := True;

  end;
end;

procedure TRptFinanceReportF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDateNew') = nil then
    close;
end;

end.
