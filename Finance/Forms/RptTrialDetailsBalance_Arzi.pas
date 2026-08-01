unit RptTrialDetailsBalance_Arzi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Menus, ppBands,FaraConsts,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, SumDBGrid, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions,AccFunctions;

type
  TRptTrialDetailsBalance_ArziF = class(Ttemplate2MDIF)
    qry_TrialDetailsBalance_Arzi: TADOQuery;
    src_TrialDetailsBalance_Arzi: TDataSource;
    DBGrid1: TDBGrid;
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
    qry_TrialDetailsBalance_ArziTopicCode: TLargeintField;
    qry_TrialDetailsBalance_ArziDetailCode: TIntegerField;
    qry_TrialDetailsBalance_ArziMoeenName_L1: TStringField;
    qry_TrialDetailsBalance_ArziMoeenName_L2: TStringField;
    qry_TrialDetailsBalance_ArziDetailName_L1: TStringField;
    qry_TrialDetailsBalance_ArziDetailName_L2: TStringField;
    qry_TrialDetailsBalance_ArziDebt: TFMTBCDField;
    qry_TrialDetailsBalance_ArziBalanceDebt: TFMTBCDField;
    qry_TrialDetailsBalance_ArziBalanceCredit: TFMTBCDField;
    qry_TrialDetailsBalance_ArziCredit: TFMTBCDField;
    ButtenLevelLow: TBitBtn;
    actBeforeLevel: TAction;
    actAfterLevel: TAction;
    ButtenLevelTop: TBitBtn;
    N8: TMenuItem;
    N9: TMenuItem;
    actUpdate: TAction;
    qry_TrialDetailsBalance_Arzibes: TBCDField;
    qry_TrialDetailsBalance_Arzibed: TBCDField;
    qry_TrialDetailsBalance_ArziMandehBed: TBCDField;
    qry_TrialDetailsBalance_ArziMandehbes: TBCDField;
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
    qry_TrialDetailsBalance_Arzirow: TLargeintField;
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
    qry_TrialDetailsBalance_ArziMinCompany: TIntegerField;
    SumGrid1: TSumGrid;
    qry_TrialDetailsBalance_ArziCombineName: TStringField;
    qry_TrialDetailsBalance_ArziMobile: TStringField;
    N11: TMenuItem;
    popAfterLevel: TPopupMenu;
    mnuCtopic1: TMenuItem;
    mnuCtopic2: TMenuItem;
    qryCompany: TADOQuery;
    qry_TrialDetailsBalance_Arzi_CompanyName: TStringField;
    qry_TrialDetailsBalance_ArziCurrencyType: TIntegerField;
    qry_TrialDetailsBalance_ArziCurrenciesName: TStringField;
    qry_TrialDetailsBalance_ArziArzDebt: TFloatField;
    qry_TrialDetailsBalance_ArziArzCredit: TFloatField;
    qry_TrialDetailsBalance_ArziArzBalance: TFloatField;
    mnuCtopic3: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
    procedure qry_TrialDetailsBalance_ArziAfterOpen(DataSet: TDataSet);
    procedure actShowFormExecute(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure qry_TrialDetailsBalance_ArziAfterScroll(DataSet: TDataSet);
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
    procedure N11Click(Sender: TObject);
    procedure mnuCtopic1Click(Sender: TObject);
    procedure ButtenLevelLowClick(Sender: TObject);
    procedure mnuCtopic2Click(Sender: TObject);
    procedure mnuCtopic3Click(Sender: TObject);
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
  RptTrialDetailsBalance_ArziF: TRptTrialDetailsBalance_ArziF;

implementation

uses Dm, searchCode_ADO, filter_ADO, FilterClass_ADO, GlobalPro,
  search2, sort2, RptTrialBalance_Details,
  Rpt_AccDetailOnTopicBook_Arzi, DBGrid2Print, TreeChart,
  FormFunctions, Resource, CategoresCtopicNote, CategoresDetailNote,
  RptTrialBalance_CTopics, Main, RptTrialBalance_CTopics_Details, mdiMain,
  RptTrialBalance_CTopics2_CTopics, RptTrialBalance_CTopics3_CTopics;
{$R *.dfm}

procedure TRptTrialDetailsBalance_ArziF.FormShow(Sender: TObject);
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

procedure TRptTrialDetailsBalance_ArziF.actFilterExecute(Sender: TObject);
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
      AddItem(DMF.adcAccounting, 'checked', 'انواع سند حسابداري', '', ftUnknown,
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

      AddItem(DMF.adcAccounting, 'DetailCode', ' حساب تفصيلي', 'كد تفصيلي ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup, strLookUpCompany+User.CompanieCodes,
          strMaxMinCompany);
      AddItem(DMF.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_L1 FROM acc.Categories WHERE (levelId= ' +
        IntToStr(opta.CountAccLevel) + ') ',
        'SELECT min(TopicCode),max(TopicCode) FROM acc.Categories WHERE (levelId= '
        + IntToStr(opta.CountAccLevel) + ') ');
      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
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

procedure TRptTrialDetailsBalance_ArziF.FormCreate(Sender: TObject);
begin
  inherited;
  OrgSql := qry_TrialDetailsBalance_Arzi.SQL.Text;
  ShowFilter := var_glb_Boolean;
  mnuCtopic1.Visible := opta.ActiveCtopic1;
  mnuCtopic2.Visible := opta.ActiveCtopic2;
  mnuCtopic3.Visible := opta.ActiveCtopic3;
  ButtenLevelLow.Enabled := opta.ActiveCtopic1;
  DBGrid1.Columns[0].Visible := opta.ActivePartCompany and gv_MultiCompany;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
  // setColumns2(DBGrid1, gv_MultiCompany, 'MinCompany',aVisible);

end;

procedure TRptTrialDetailsBalance_ArziF.UpdateFilter;
begin

  with qry_TrialDetailsBalance_Arzi do
  begin
    Active := false;
    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    // Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    // Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);
    // Parameters.ParamByName('Status2').Value := 0;
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
      qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('CompanyCodeFrom')
        .Value := GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('CompanyCodeTo').Value
        := GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
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
    Active := True;
    LblShowLimitPlace1.Caption := '   از تاريخ  ' + Parameters.ParamByName
      ('DocDateFrom').Value + '  تا تاريخ  ' + Parameters.ParamByName
      ('DocDateTo').Value;

  end; // with
end;

procedure TRptTrialDetailsBalance_ArziF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptTrialDetailsBalance_ArziF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialDetailsBalance_Arzi);
end;

procedure TRptTrialDetailsBalance_ArziF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5);
end;

procedure TRptTrialDetailsBalance_ArziF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptTrialDetailsBalance_ArziF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptTrialDetailsBalance_ArziF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblShowLimitPlace1.Caption
end;

procedure TRptTrialDetailsBalance_ArziF.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptTrialDetailsBalance_ArziF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptTrialDetailsBalance_ArziF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialDetailsBalance_ArziF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance_Arzi.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialDetailsBalance_Arzi', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance_Arzi.EnableControls;
  end; // try
end;

procedure TRptTrialDetailsBalance_ArziF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance_Arzi.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialDetailsBalance_Topic_Arzi', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance_Arzi.EnableControls;
  end; // try
end;

procedure TRptTrialDetailsBalance_ArziF.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qry_TrialDetailsBalance_Arzi.FieldByName('TopicCode').AsString + '_' +
    qry_TrialDetailsBalance_Arzi.FieldByName('DetailCode').AsString;
end;

procedure TRptTrialDetailsBalance_ArziF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'اسناد موقت از ' +
    IntToStr(qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
    ('SecondaryDocNoFrom').Value) + ' تا ' +
    IntToStr(qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
    ('SecondaryDocNoTo').Value);
end;

procedure TRptTrialDetailsBalance_ArziF.actBeforeLevelExecute(Sender: TObject);
var
  FormType: Integer;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT  MAX(LevelID) AS MaxLevel  FROM  acc.AccTopicLevels ' +
      'WHERE  (TopicType = 0)  GROUP BY TopicType';
    Active := True;
    FormType := FieldByName('MaxLevel').AsInteger
  end;
  ShowBeforeAccCode(FormType);
end;

procedure TRptTrialDetailsBalance_ArziF.qry_TrialDetailsBalance_ArziAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  // Updateremain;

end;

procedure TRptTrialDetailsBalance_ArziF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // myParams.Clear;
  if opta.ShowLevel then
    with TfilterF.Create2(Self, myParams) do
      try
        AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
          ftDate, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinDocDate, [APPBank.Year]));
        AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
          'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
        AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
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
  CreateMDIForm3(false, TRpt_AccDetailOnTopicBook_ArziF,
    Rpt_AccDetailOnTopicBook_ArziF, Self);
  with Rpt_AccDetailOnTopicBook_ArziF do
  begin
    with qry_AccCode do
    begin
      Active := false;
      if not opta.ShowLevel then
      begin
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('SecondaryDocNoTo').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('PrimaryDocNoTo').Value;
        Parameters.ParamByName('DocDateTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('DocDateTo').Value;
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
        qry_TrialDetailsBalance_ArziTopicCode.AsInteger;
      Parameters.ParamByName('TopicCodeTo').Value :=
        qry_TrialDetailsBalance_ArziTopicCode.AsInteger;
      Parameters.ParamByName('DetailCodeFrom').Value :=
        qry_TrialDetailsBalance_ArziDetailCode.AsInteger;
      Parameters.ParamByName('DetailCodeTo').Value :=
        qry_TrialDetailsBalance_ArziDetailCode.AsInteger;
    end; // with
    with qry_Doc do
    begin
      Active := false;
      if not opta.ShowLevel then
      begin
        Parameters.ParamByName('DocDateFrom').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('DocDateTo').Value;
        Parameters.ParamByName('PrimaryDocNoFrom').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('PrimaryDocNoTo').Value;
        Parameters.ParamByName('SecondaryDocNoFrom').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('SecondaryDocNoTo').Value;
      end
      else
      begin
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
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value :=
      // qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      // Parameters.ParamByName('DocTypeCodeTO').Value := -1;
      // qry_TrialDetailsBalance.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('FromYearId').Value;
      Parameters.ParamByName('ToYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('ToYearId').Value;
      Parameters.ParamByName('CurrencyTypeFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('CurrencyTypeFrom').Value;
      Parameters.ParamByName('CurrencyTypeTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('CurrencyTypeTo').Value;
    end; // with
    with qry_Companies do
    begin
      Active := false;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeTo').Value;
        // Parameters.ParamByName('Detail_CodeFrom').Value:=qry_TrialDetailsBalanceDetailCode.AsInteger;
        // Parameters.ParamByName('Detail_CodeTo').Value:=qry_TrialDetailsBalanceDetailCode.AsInteger;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Active := True;
    end; // with
  end;
end;

procedure TRptTrialDetailsBalance_ArziF.N8Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance_Arzi.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialDetailsBalance_Topic_Arzi_L', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance_Arzi.EnableControls;
  end; // try

end;

procedure TRptTrialDetailsBalance_ArziF.N9Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialDetailsBalance_Arzi.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialDetailsBalance_Arzi_L', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialDetailsBalance_Arzi.EnableControls;
  end; // try

end;

procedure TRptTrialDetailsBalance_ArziF.qry_TrialDetailsBalance_ArziAfterScroll
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

procedure TRptTrialDetailsBalance_ArziF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialDetailsBalance_Arzi.Requery();
end;

procedure TRptTrialDetailsBalance_ArziF.ButtenLevelLowClick(Sender: TObject);
//var
//  p: TPoint;
begin
  inherited;
  // p := ClientToScreen(Point(ButtenLevelLow.Left, ButtenLevelLow.Top +
  // PnlUnderButton.Top));
  // popAfterLevel.Popup(p.X + popAfterLevel.Items.Count,
  // p.Y - popAfterLevel.Items.Count * 21);

  popAfterLevel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)

end;

procedure TRptTrialDetailsBalance_ArziF.ShowBeforeAccCode(FormType: Integer);
begin
  CreateMDIForm3(false, TRptTrialBalance_DetailsF,
    RptTrialBalance_DetailsF, Self);
  with RptTrialBalance_DetailsF do
  Begin
    with qry_TrialDetailsBalance do
    begin
      Active := false;
      Parameters.ParamByName('CurrencyTypeFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('CurrencyTypeFrom').Value;
      Parameters.ParamByName('CurrencyTypeTO').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('CurrencyTypeTO').Value;
      Parameters.ParamByName('CurrencyKind').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('CurrencyKind').Value;

      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('Status1').Value;

      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('FromYearId').Value;;
      Parameters.ParamByName('ToYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('ToYearId').Value;;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);

      Active := True;
    end; // with
    qry_TrialDetailsBalance.Locate('DetailCode;TopicCode',
      VarArrayOf([qry_TrialDetailsBalance_ArziDetailCode.AsVariant,
      qry_TrialDetailsBalance_ArziTopicCode.AsVariant]), []);
  end; // with_RptTrialBalance_AccF
end;

procedure TRptTrialDetailsBalance_ArziF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_TrialDetailsBalance_Arzi.FieldByName('DetailCode'));
end;

procedure TRptTrialDetailsBalance_ArziF.DBGrid1MouseUp(Sender: TObject;
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

procedure TRptTrialDetailsBalance_ArziF.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TRptTrialDetailsBalance_ArziF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  // if (Key=vk_DOWN) and (Shift=[SSshift]) then
  // chooseColumnDown
  // else
  // if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
  // else flag:=false;
end;

procedure TRptTrialDetailsBalance_ArziF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TRptTrialDetailsBalance_ArziF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, LblShowLimitPlace1.Caption);

end;

procedure TRptTrialDetailsBalance_ArziF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qry_TrialDetailsBalance_Arzi, Self);

end;

procedure TRptTrialDetailsBalance_ArziF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);

end;

procedure TRptTrialDetailsBalance_ArziF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  // qry_TrialDetailsBalance.Filtered := not(Sender as TCheckBox).checked;

  with qry_TrialDetailsBalance_Arzi do
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

end;

procedure TRptTrialDetailsBalance_ArziF.FormPaint(Sender: TObject);
begin
  inherited;
  LblShowLimitPlace1.Caption := '   از تاريخ  ' +
    qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('DocDateFrom').Value +
    '  تا تاريخ  ' + qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
    ('DocDateTo').Value;

end;

procedure TRptTrialDetailsBalance_ArziF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialDetailsBalance_Arzi);
end;

procedure TRptTrialDetailsBalance_ArziF.N10Click(Sender: TObject);
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
    VarToStr(qry_TrialDetailsBalance_Arzi.Parameters.ParamValues['FromYearId'])
    + ',' + VarToStr(qry_TrialDetailsBalance_Arzi.Parameters.ParamValues
    ['ToYearId']) +
    ' , DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT) AccTrialDetailsBalance';
  if searchCode_ADOF.SearchCode2(DMF.adcAccounting, 'جستجوي ', txt,
    ['كد تفصيلی', 'كد حساب', 'عنوان تفصيلی', 'نام حساب', 'بستانكار', 'بدهكار',
    'مانده بدهكار', 'مانده بستانكار'], results, [50, 50, 100, 100, 50, 50, 50,
    50], alLeft) then
    qry_TrialDetailsBalance_Arzi.Locate('TopicCode;DetailCode',
      VarArrayOf([results[1], results[0]]), [loPartialKey]);

end;

procedure TRptTrialDetailsBalance_ArziF.N11Click(Sender: TObject);
begin
  inherited;
  CategoresDetailNoteF.enter(qry_TrialDetailsBalance_Arzi.FieldByName
    ('TopicCode').AsLargeInt, qry_TrialDetailsBalance_Arzi.FieldByName
    ('DetailCode').AsInteger, qry_TrialDetailsBalance_Arzi.FieldByName
    ('MinCompany').AsInteger);
end;

procedure TRptTrialDetailsBalance_ArziF.mnuCtopic1Click(Sender: TObject);
var
  TopTopice: Largeint;
  TopDetail: Integer;
  // CodeLength:Integer;
begin
  inherited;
  TopTopice := qry_TrialDetailsBalance_ArziTopicCode.AsLargeInt;
  TopDetail := qry_TrialDetailsBalance_ArziDetailCode.AsLargeInt;
  CreateMDIForm3(false, TRptTrialBalance_CTopics_DetailsF,
    RptTrialBalance_CTopics_DetailsF, MainF); // RptTrialBalance_AccF
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopics_DetailsF do
  Begin
    with qry_TrialCTopicBalance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopicBalance,qry_TrialDetailsBalance_Arzi)   ;
      Parameters.ParamByName('DocTypeCode_Not').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('Status').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('Status1').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;

      Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
      Parameters.ParamByName('DetailCodeTo').Value := TopDetail;
      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('FromYearID').Value;
      Parameters.ParamByName('ToYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('ToYearID').Value;
      Active := True;
    end; // with
  end // with_ RptTrialBalance_CTopicsF

end;

procedure TRptTrialDetailsBalance_ArziF.mnuCtopic2Click(Sender: TObject);
var
  TopTopice: Largeint;
  TopDetail: Integer;
  // CodeLength:Integer;
begin
  inherited;
  TopTopice := qry_TrialDetailsBalance_ArziTopicCode.AsLargeInt;
  TopDetail := qry_TrialDetailsBalance_ArziDetailCode.AsLargeInt;
  CreateMDIForm3(false, TRptTrialBalance_CTopics2_CTopicsF,
    RptTrialBalance_CTopics2_CTopicsF, MainF); // RptTrialBalance_AccF
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopics2_CTopicsF do
  Begin
    with qry_TrialCTopic2Balance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopic2Balance, qry_TrialDetailsBalance_Arzi);
      Parameters.ParamByName('CurrencyTypeFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('CurrencyTypeFrom').Value;
      Parameters.ParamByName('CurrencyTypeTO').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('CurrencyTypeTO').Value;

      Parameters.ParamByName('CurrencyKind').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('CurrencyKind').Value;
      Parameters.ParamByName('DocTypeCode_Not').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('Status').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('Status1').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;

      Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
      Parameters.ParamByName('DetailCodeTo').Value := TopDetail;

      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('FromYearID').Value;
      Parameters.ParamByName('ToYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('ToYearID').Value;
      Active := True;
    end; // with
  end // with_ RptTrialBalance_CTopicsF

end;

procedure TRptTrialDetailsBalance_ArziF.mnuCtopic3Click(Sender: TObject);
var
  TopTopice: Largeint;
  TopDetail: Integer;
  // CodeLength:Integer;
begin
  inherited;
  TopTopice := qry_TrialDetailsBalance_ArziTopicCode.AsLargeInt;
  TopDetail := qry_TrialDetailsBalance_ArziDetailCode.AsLargeInt;
  CreateMDIForm3(false, TRptTrialBalance_CTopics3_CTopicsF,
    RptTrialBalance_CTopics3_CTopicsF, MainF); // RptTrialBalance_AccF
  // SET Parameters in  RptTrialBalance_CTopicsF form
  with RptTrialBalance_CTopics3_CTopicsF do
  Begin
    with qry_TrialCTopic2Balance do
    begin
      Active := false;
      SetParametersqry(qry_TrialCTopic2Balance, qry_TrialDetailsBalance_Arzi);
      Parameters.ParamByName('CurrencyTypeFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('CurrencyTypeFrom').Value;
      Parameters.ParamByName('CurrencyTypeTO').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('CurrencyTypeTO').Value;

      Parameters.ParamByName('CurrencyKind').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('CurrencyKind').Value;

      Parameters.ParamByName('DocTypeCode_Not').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('Status').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('Status1').Value;

      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialDetailsBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeTo').Value;
      end; // if
      SetCompanyFilterinLogin(Parameters);
      Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
      Parameters.ParamByName('AccCodeTo').Value := TopTopice;

      Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
      Parameters.ParamByName('DetailCodeTo').Value := TopDetail;

      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('FromYearID').Value;
      Parameters.ParamByName('ToYearId').Value :=
        qry_TrialDetailsBalance_Arzi.Parameters.ParamByName('ToYearID').Value;
      Active := True;
    end; // with
  end // with_ RptTrialBalance_CTopicsF

end;

end.
