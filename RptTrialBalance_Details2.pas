unit RptTrialBalance_Details2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Menus, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, SumDBGrid, ppParameter, ppDesignLayer,
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
    BitBtn8: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    qry_TrialDetailsBalanceTopicCode: TLargeintField;
    qry_TrialDetailsBalanceDetailCode: TIntegerField;
    qry_TrialDetailsBalanceMoeenName_L1: TStringField;
    qry_TrialDetailsBalanceDetailName_L1: TStringField;
    qry_TrialDetailsBalanceDebt: TFMTBCDField;
    qry_TrialDetailsBalanceBalanceDebt: TFMTBCDField;
    qry_TrialDetailsBalanceBalanceCredit: TFMTBCDField;
    qry_TrialDetailsBalanceCredit: TFMTBCDField;
    actBeforeLevel: TAction;
    actAfterLevel: TAction;
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
    N11: TMenuItem;
    DBGrid1: TCedarDbgrid;
    qry_TrialDetailsBalanceCombineName: TStringField;
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
    procedure qry_TrialDetailsBalanceAfterOpen(DataSet: TDataSet);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actOtherExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure rgDetailNameTypeClick(Sender: TObject);
  private
    { Private declarations }
    ShowFilter: BOOLEAN;
    OrgSql: string;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptTrialBalance_DetailsF: TRptTrialBalance_DetailsF;

implementation

uses Dm, searchCode_ADO, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  DBGrid2Print, TreeChart, FormFunctions, Resource, Main, AccFunctions,
  Filter_ADO_Const;

{$R *.dfm}

procedure TRptTrialBalance_DetailsF.FormShow(Sender: TObject);
begin
  inherited;
  if ShowFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('Date') = nil then
      close;
  end;
  // DBGrid1.Columns[8].Visible := Readacc_BankConfig
  // ('ShowAccountInfoInDetailsReport', '0') = '1';
  // DBGrid1.Columns[9].Visible := DBGrid1.Columns[8].Visible;
  // DBGrid1.Columns[10].Visible := DBGrid1.Columns[8].Visible;
  // DBGrid1.Columns[11].Visible := DBGrid1.Columns[8].Visible;
end;

procedure TRptTrialBalance_DetailsF.actFilterExecute(Sender: TObject);
//var
//  tmpDefault: TcDefaultValues;
begin
  inherited;
//  if (Sender as TAction).Tag = 1 then
//    tmpDefault := dvDefaults
//  else
//    tmpDefault := dvMinMax;

  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterYearID);

      AddItem(dmf.adcAccounting, 'Date', 'تاريخ فرم', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear + ''',''' +
        APPBank.endYear + '''');

      if optA.ActiveCtopic2 then
      begin
        AddItem(dmf.adcAccounting, 'CtopicCode2', ' حساب تفصیلی 3 ', 'كد ',
          ftInteger, dvMinMax, '', '', ciLookup, strLookUpCTopicCode2,
          strMaxMinCTopicCode2);
      end;

      if optA.ActiveCtopic3 then
      begin
        AddItem(dmf.adcAccounting, 'CtopicCode3', ' حساب تفصیلی 4 ', 'كد ',
          ftInteger, dvMinMax, '', '', ciLookup, strLookUpCTopicCode3,
          strMaxMinCTopicCode3);
      end;

      AddItem(dmf.adcAccounting, 'DetailCode', ' حساب تفصيلي', 'كد تفصيلي ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);

      AddItem(dmf.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_L1 FROM acc.Categories INNER JOIN (SELECT MAX(LevelID) AS LevelID  FROM   Acc.AccTopicLevels WHERE (TopicType = 0)) TopicLevel ON  TopicLevel.LevelID=acc.Categories.levelId ',
        'SELECT min(TopicCode),max(TopicCode) FROM acc.Categories INNER JOIN (SELECT     MAX(LevelID) AS LevelID  FROM   Acc.AccTopicLevels WHERE (TopicType = 0)) TopicLevel ON  TopicLevel.LevelID=acc.Categories.levelId ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
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
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
end;

procedure TRptTrialBalance_DetailsF.UpdateFilter;
begin

  with qry_TrialDetailsBalance do
  begin
    Active := false;
    SetArzParameters(qry_TrialDetailsBalance,MyParams);
    Parameters.ParamByName('YearIDFrom').Value :=
      GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    Parameters.ParamByName('YearIDTo').Value :=
      GetcTo(myParams.ParamValues['YearID'], ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftString);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftString);

    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('detailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);

    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftLargeint);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftLargeint);

    if optA.ActiveCtopic2 then
    begin

      Parameters.ParamByName('CTopicCode2From').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
      Parameters.ParamByName('CTopicCode2To').Value :=
        GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('CTopicCode2From').Value := 0;
      Parameters.ParamByName('CTopicCode2To').Value := 999999999;
    end;
    if optA.ActiveCtopic3 then
    begin

      Parameters.ParamByName('CTopicCode3From').Value :=
        GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
      Parameters.ParamByName('CTopicCode3To').Value :=
        GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('CTopicCode3From').Value := 0;
      Parameters.ParamByName('CTopicCode3To').Value := 999999999;
    end;

    Active := True;
    LblShowLimitPlace1.Caption := '   از تاريخ  ' + Parameters.ParamByName
      ('DateFrom').Value + '  تا تاريخ  ' + Parameters.ParamByName
      ('DateTo').Value;

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
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails');
  finally
    qry_TrialDetailsBalance.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_DetailsF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails_Topic');
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
  // Text := 'اسناد موقت از ' +
  // IntToStr(qry_TrialDetailsBalance.Parameters.ParamByName
  // ('SecondaryDocNoFrom').Value) + ' تا ' +
  // IntToStr(qry_TrialDetailsBalance.Parameters.ParamByName
  // ('SecondaryDocNoTo').Value);
end;

procedure TRptTrialBalance_DetailsF.qry_TrialDetailsBalanceAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  // Updateremain;
  qry_TrialDetailsBalance.Sort := 'TopicCode,DetailCode'

end;

procedure TRptTrialBalance_DetailsF.N8Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails_Topic_L');
  finally
    qry_TrialDetailsBalance.EnableControls;
  end; // try

end;

procedure TRptTrialBalance_DetailsF.N9Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Dtails_L');
  finally
    qry_TrialDetailsBalance.EnableControls;
  end; // try

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

procedure TRptTrialBalance_DetailsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_TrialDetailsBalance.FieldByName('DetailCode'));
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
  CheckBox1.Enabled := false;
  with qry_TrialDetailsBalance do
  begin
    close;
    if not(Sender as TCheckBox).checked then
      if Pos('WHERE ', UpperCase(OrgSql)) = 0 then
        SQL.Text := OrgSql +
          ' WHERE ( (balanceDebt <> 0) OR (balanceCredit <> 0) )'
      else
        SQL.Text := OrgSql +
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
    qry_TrialDetailsBalance.Parameters.ParamByName('DateFrom').Value +
    '  تا تاريخ  ' + qry_TrialDetailsBalance.Parameters.ParamByName
    ('DateTo').Value;

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

end.


