unit RptTrialBalance_AccCode_arzi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Menus, ppBands, AccFunctions ,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, SumDBGrid, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TRptTrialBalance_AccCode_ArziF = class(Ttemplate2MDIF)
    qry_TrialAccBalance_Arzi: TADOQuery;
    src_TrialAccBalance_Arzi: TDataSource;
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
    ButtenLevelLow: TBitBtn;
    actBeforeLevel: TAction;
    actAfterLevel: TAction;
    ButtenLevelTop: TBitBtn;
    N8: TMenuItem;
    actUpdate: TAction;
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
    SumGrid1: TSumGrid;
    N11: TMenuItem;
    popAfterLevel: TPopupMenu;
    mnuCtopic1: TMenuItem;
    mnuCtopic2: TMenuItem;
    qry_TrialAccBalance_ArziYearID: TIntegerField;
    qry_TrialAccBalance_ArziTopicCode: TLargeintField;
    qry_TrialAccBalance_ArziCurrencyType: TIntegerField;
    qry_TrialAccBalance_ArziCurrenciesName: TStringField;
    qry_TrialAccBalance_ArziArzDebt: TFloatField;
    qry_TrialAccBalance_ArziArzCredit: TFloatField;
    qry_TrialAccBalance_ArziArzBalance: TFloatField;
    qry_TrialAccBalance_ArziDebt: TFMTBCDField;
    qry_TrialAccBalance_ArziCredit: TFMTBCDField;
    qry_TrialAccBalance_ArziBalanceDebt: TFMTBCDField;
    qry_TrialAccBalance_ArziBalanceCredit: TFMTBCDField;
    qry_TrialAccBalance_ArziMoeenName_L1: TStringField;
    qry_TrialAccBalance_ArziCombineName: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLBCompanyName: TppLabel;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
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
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure actBeforeLevelExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure qry_TrialAccBalance_ArziAfterScroll(DataSet: TDataSet);
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
  private
    { Private declarations }
    formtype: Byte;
    ShowFilter: BOOLEAN;
    OrgSql: string;
    procedure ShowBeforeAccCode(formtype: Integer);
    // procedure Updateremain;
    procedure UpdateFilter;
    // procedure chooseColumnDown;
    // procedure chooseColumnUp;
  public
    { Public declarations }
  end;

var
  RptTrialBalance_AccCode_ArziF: TRptTrialBalance_AccCode_ArziF;

implementation

uses Dm, searchCode_ADO, filter_ADO, FilterClass_ADO, GlobalPro,
  search2, sort2, RptTrialBalance_Acc, Rpt_AccBook_Arzi,
  Rpt_AccDetailOnTopicBook, DBGrid2Print, TreeChart,
  FormFunctions, Resource, topicsNote,
  RptTrialBalance_CTopics, Main, RptTrialBalance_CTopics_Details, mdiMain,
  RptTrialBalance_CTopics2_CTopics;
{$R *.dfm}

procedure TRptTrialBalance_AccCode_ArziF.FormShow(Sender: TObject);
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

procedure TRptTrialBalance_AccCode_ArziF.actFilterExecute(Sender: TObject);
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

      // AddItem(DMF.adcAccounting, 'DetailCode', ' حساب تفصيلي', 'كد تفصيلي ',
      // ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
      // strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'Currencies', 'واحد پولی', 'واحد پولی',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CurrenciesID, CurrenciesName FROM  Acc.Currencies',
        'SELECT min(CurrenciesID), max(CurrenciesID) FROM  Acc.Currencies');

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

procedure TRptTrialBalance_AccCode_ArziF.FormCreate(Sender: TObject);
begin
  inherited;
  OrgSql := qry_TrialAccBalance_Arzi.SQL.Text;
  ShowFilter := var_glb_Boolean;
  mnuCtopic1.Visible := opta.ActiveCtopic1;
  mnuCtopic2.Visible := opta.ActiveCtopic2;
  mnuCtopic3.Visible := opta.ActiveCtopic3;
  ButtenLevelLow.Enabled := opta.ActiveCtopic1;
  formtype := var_glb_gParam;
  // DBGrid1.Columns[0].Visible := opta.ActivePartCompany and gv_MultiCompany;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
  // setColumns2(DBGrid1, gv_MultiCompany, 'MinCompany',aVisible);

end;

procedure TRptTrialBalance_AccCode_ArziF.UpdateFilter;
begin

  with qry_TrialAccBalance_Arzi do
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

    qry_TrialAccBalance_Arzi.Parameters.ParamByName('CurrencyTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['Currencies'], ftInteger);
    qry_TrialAccBalance_Arzi.Parameters.ParamByName('CurrencyTypeTO').Value :=
      GetcTo(myParams.ParamValues['Currencies'], ftInteger);

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

procedure TRptTrialBalance_AccCode_ArziF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptTrialBalance_AccCode_ArziF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialAccBalance_Arzi);
end;

procedure TRptTrialBalance_AccCode_ArziF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3);
end;

procedure TRptTrialBalance_AccCode_ArziF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptTrialBalance_AccCode_ArziF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptTrialBalance_AccCode_ArziF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblShowLimitPlace1.Caption
end;

procedure TRptTrialBalance_AccCode_ArziF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptTrialBalance_AccCode_ArziF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialAccBalance_Arzi.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Arzi', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialAccBalance_Arzi.EnableControls;
  end; // try
end;

procedure TRptTrialBalance_AccCode_ArziF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'اسناد موقت از ' +
    IntToStr(qry_TrialAccBalance_Arzi.Parameters.ParamByName
    ('SecondaryDocNoFrom').Value) + ' تا ' +
    IntToStr(qry_TrialAccBalance_Arzi.Parameters.ParamByName
    ('SecondaryDocNoTo').Value);
end;

procedure TRptTrialBalance_AccCode_ArziF.actBeforeLevelExecute(Sender: TObject);
var
  formtype: Integer;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT  MAX(LevelID) AS MaxLevel  FROM  acc.AccTopicLevels ' +
      'WHERE  (TopicType = 0)  GROUP BY TopicType';
    Active := True;
    formtype := FieldByName('MaxLevel').AsInteger
  end;
  ShowBeforeAccCode(formtype);
end;

procedure TRptTrialBalance_AccCode_ArziF.actShowFormExecute(Sender: TObject);
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

  CreateMDIForm3(false, TRpt_AccBook_ArziF, Rpt_AccBook_ArziF, Self, formtype);
  with Rpt_AccBook_ArziF do
  begin
    with qry_Doc do
    begin
      Active := false;
      if not opta.ShowLevel then
      begin
        Parameters.ParamByName('DocDateFrom').Value :=
          qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateFrom').Value;
        Parameters.ParamByName('DocDateTo').Value :=
          qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
        Parameters.ParamByName('PrimaryDocNoFrom').Value :=
          qry_TrialAccBalance_Arzi.Parameters.ParamByName
          ('PrimaryDocNoFrom').Value;
        Parameters.ParamByName('PrimaryDocNoTo').Value :=
          qry_TrialAccBalance_Arzi.Parameters.ParamByName
          ('PrimaryDocNoTo').Value;
        Parameters.ParamByName('SecondaryDocNoFrom').Value :=
          qry_TrialAccBalance_Arzi.Parameters.ParamByName
          ('SecondaryDocNoFrom').Value;
        Parameters.ParamByName('SecondaryDocNoTo').Value :=
          qry_TrialAccBalance_Arzi.Parameters.ParamByName
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
      Parameters.ParamByName('DocTypeCodeFrom').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      Parameters.ParamByName('DocTypeCodeTO').Value := -1;
      // qry_TrialBalance.Parameters.ParamByName('DocTypeCodeto').Value;
      Parameters.ParamByName('ToYearID').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('ToYearID').Value;
      Parameters.ParamByName('FromYearID').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('FromYearID').Value;
      Parameters.ParamByName('AccCodeLen').Value :=
        qry_Init.FieldByName('CodeLength').AsInteger;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value := -1;
      // qry_TrialBalance.Parameters.ParamByName('Status2').Value;
      // Active:=true;
    end; // with);
    with qry_AccCode do
    begin
      Active := false;
      Parameters.ParamByName('FormType').Value := formtype;
      Parameters.ParamByName('AccCodeFrom').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('AccCodeFrom').Value;
      Parameters.ParamByName('AccCodeTo').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('AccCodeTo').Value;
      Active := True;
    end; // with
    with qry_Companies do
    begin
      Active := false;
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName
        ('CompanyCodeFrom').Value;
      Parameters.ParamByName('CompanyCodeTo').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('CompanyCodeTo').Value;
    SetCompanyFilterinLogin(Parameters);
      Active := True;
    end; // with);
    qry_AccCode.Locate('AccCode', qry_TrialAccBalance_Arzi.FieldByName
      ('TopicCode').AsCurrency, []);
  end;
end;

procedure TRptTrialBalance_AccCode_ArziF.N8Click(Sender: TObject);
begin
  inherited;
  try
    qry_TrialAccBalance_Arzi.DisableControls;
    InitReportFile(ppReport1, 'RepRptTrialBalance_Arzi_L', DBGrid1,
      ppDBPipeline1);
  finally
    qry_TrialAccBalance_Arzi.EnableControls;
  end; // try

end;

procedure TRptTrialBalance_AccCode_ArziF.qry_TrialAccBalance_ArziAfterScroll
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

procedure TRptTrialBalance_AccCode_ArziF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qry_TrialAccBalance_Arzi.Requery();
end;

procedure TRptTrialBalance_AccCode_ArziF.ButtenLevelLowClick(Sender: TObject);
var
  p: TPoint;
begin
  inherited;
  // p := ClientToScreen(Point(ButtenLevelLow.Left, ButtenLevelLow.Top +
  // PnlUnderButton.Top));
  // popAfterLevel.Popup(p.X + popAfterLevel.Items.Count,
  // p.Y - popAfterLevel.Items.Count * 21);

  popAfterLevel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)

end;

procedure TRptTrialBalance_AccCode_ArziF.ShowBeforeAccCode(formtype: Integer);
begin
  CreateMDIForm3(false, TRptTrialBalance_AccF, RptTrialBalance_AccF, Self,
    formtype);
  with RptTrialBalance_AccF do
  Begin
    with qry_TrialBalance do
    begin
      Active := false;
      SetParametersqry(qry_TrialBalance,qry_TrialAccBalance_Arzi);
      // Parameters.ParamByName('DocTypeCodeFrom').Value :=
      // qry_TrialAccBalance_Arzi.Parameters.ParamByName
      // ('DocTypeCodeFrom').Value;
      // Parameters.ParamByName('DocTypeCodeTo').Value :=
      // qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocTypeCodeTo').Value;
      Parameters.ParamByName('DocTypeCode1_Not').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName
        ('DocTypeCode1_Not').Value;
      // Parameters.ParamByName('DocTypeCode2_Not').Value :=
      // qry_TrialAccBalance_Arzi.Parameters.ParamByName
      // ('DocTypeCode2_Not').Value;
      // Parameters.ParamByName('DocTypeCode3_Not').Value :=
      // qry_TrialAccBalance_Arzi.Parameters.ParamByName
      // ('DocTypeCode3_Not').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('PrimaryDocNoFrom').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName
        ('PrimaryDocNoFrom').Value;
      Parameters.ParamByName('PrimaryDocNoTo').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('PrimaryDocNoTo').Value;
      Parameters.ParamByName('SecondaryDocNoFrom').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoFrom').Value;
      Parameters.ParamByName('SecondaryDocNoTo').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName
        ('SecondaryDocNoTo').Value;
      Parameters.ParamByName('Status1').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('Status1').Value;
      // Parameters.ParamByName('Status2').Value :=
      // qry_TrialAccBalance_Arzi.Parameters.ParamByName('Status2').Value;
      Parameters.ParamByName('FromYearId').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('FromYearId').Value;
      Parameters.ParamByName('ToYearId').Value :=
        qry_TrialAccBalance_Arzi.Parameters.ParamByName('ToYearId').Value;
      if gv_MultiCompany then
      begin
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_TrialAccBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeFrom').Value;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_TrialAccBalance_Arzi.Parameters.ParamByName
          ('CompanyCodeTo').Value;
      end; // if
    SetCompanyFilterinLogin(Parameters);

      Active := True;
    end; // with
    qry_TrialBalance.Locate('TopicCode',
      qry_TrialAccBalance_ArziTopicCode.AsInteger, []);
  end; // with_RptTrialBalance_AccF
end;

procedure TRptTrialBalance_AccCode_ArziF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_TrialAccBalance_Arzi.FieldByName('TopicCode'));
end;

procedure TRptTrialBalance_AccCode_ArziF.DBGrid1MouseUp(Sender: TObject;
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

procedure TRptTrialBalance_AccCode_ArziF.DBGrid1KeyUp(Sender: TObject;
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

procedure TRptTrialBalance_AccCode_ArziF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  // if (Key=vk_DOWN) and (Shift=[SSshift]) then
  // chooseColumnDown
  // else
  // if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
  // else flag:=false;
end;

procedure TRptTrialBalance_AccCode_ArziF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TRptTrialBalance_AccCode_ArziF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, LblShowLimitPlace1.Caption);

end;

procedure TRptTrialBalance_AccCode_ArziF.MenuItem4Click(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qry_TrialAccBalance_Arzi, Self);

end;

procedure TRptTrialBalance_AccCode_ArziF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);

end;

procedure TRptTrialBalance_AccCode_ArziF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  // qry_TrialDetailsBalance.Filtered := not(Sender as TCheckBox).checked;

  with qry_TrialAccBalance_Arzi do
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

procedure TRptTrialBalance_AccCode_ArziF.FormPaint(Sender: TObject);
begin
  inherited;
  LblShowLimitPlace1.Caption := '   از تاريخ  ' +
    qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateFrom').Value +
    '  تا تاريخ  ' + qry_TrialAccBalance_Arzi.Parameters.ParamByName
    ('DocDateTo').Value;

end;

procedure TRptTrialBalance_AccCode_ArziF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialAccBalance_Arzi);
end;

procedure TRptTrialBalance_AccCode_ArziF.N10Click(Sender: TObject);
var
  txt: String;
  results: array [0 .. 8] of String;
begin
  inherited;
  txt := 'SELECT TopicCode, CombineName, Credit , Debt ,' +
    ' BalanceDebt , BalanceCredit, ArzCredit, ArzDebt, ArzBalance ' +
    ' FROM Acc.AccTrialBalance_Arzi(DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,'
    + ' DEFAULT, DEFAULT, DEFAULT, DEFAULT, ' +
    VarToStr(qry_TrialAccBalance_Arzi.Parameters.ParamValues['FromYearId']) +
    ',' + VarToStr(qry_TrialAccBalance_Arzi.Parameters.ParamValues['ToYearId'])
    + ', DEFAULT, DEFAULT ) AccTrialBalance_Arzi';
  if searchCode_ADOF.SearchCode2(DMF.adcAccounting, 'جستجوي ', txt,
    ['كد حساب', 'نام حساب', 'بستانكار', 'بدهكار', 'مانده بدهكار',
    'مانده بستانكار', 'بستانكار ارزی', 'بدهكار ارزی', 'مانده ارزی'], results,
    [50, 100, 50, 50, 50, 50, 50, 50, 50], alLeft) then
    qry_TrialAccBalance_Arzi.Locate('TopicCode', results[0], [loPartialKey]);

end;

procedure TRptTrialBalance_AccCode_ArziF.N11Click(Sender: TObject);
begin
  inherited;
  topicsNoteF.enter(qry_TrialAccBalance_Arzi.FieldByName('TopicCode')
    .AsLargeInt);

end;

procedure TRptTrialBalance_AccCode_ArziF.mnuCtopic1Click(Sender: TObject);
// var
// TopTopice: Largeint;
// TopDetail: Integer;
// CodeLength:Integer;
begin
  inherited;
  // TopTopice := qry_TrialAccBalance_ArziTopicCode.AsLargeInt;
  // // TopDetail := qry_TrialDetailsBalanceDetailCode.AsLargeInt;
  // CreateMDIForm3(false, TRptTrialBalance_CTopics_DetailsF,
  // RptTrialBalance_CTopics_DetailsF, MainF); // RptTrialBalance_AccF
  // // SET Parameters in  RptTrialBalance_CTopicsF form
  // with RptTrialBalance_CTopics_DetailsF do
  // Begin
  // with qrySumCTopic do
  // begin
  // Active := false;
  // Parameters.ParamByName('DocTypeCode_Not').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('DocTypeCode1_Not').Value;
  // Parameters.ParamByName('DocDateFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateFrom').Value;
  // Parameters.ParamByName('DocDateTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
  // Parameters.ParamByName('PrimaryDocNoFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('PrimaryDocNoFrom').Value;
  // Parameters.ParamByName('PrimaryDocNoTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('PrimaryDocNoTo').Value;
  // Parameters.ParamByName('SecondaryDocNoFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('SecondaryDocNoFrom').Value;
  // Parameters.ParamByName('SecondaryDocNoTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('SecondaryDocNoTo').Value;
  // Parameters.ParamByName('Status').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('Status1').Value;
  // Parameters.ParamByName('FromYearId').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('FromYearID').Value;
  // Parameters.ParamByName('ToYearId').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('ToYearID').Value;
  // if gv_MultiCompany then
  // begin
  // Parameters.ParamByName('CompanyCodeFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('CompanyCodeFrom').Value;
  // Parameters.ParamByName('CompanyCodeTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('CompanyCodeTo').Value;
  // end; // if
  // Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
  // Parameters.ParamByName('AccCodeTo').Value := TopTopice;
  //
  // Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
  // Parameters.ParamByName('DetailCodeTo').Value := TopDetail;
  //
  // Active := True;
  // end; // end qrysum
  // with qry_TrialCTopicBalance do
  // begin
  // Active := false;
  // Parameters.ParamByName('DocTypeCode_Not').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('DocTypeCode1_Not').Value;
  // Parameters.ParamByName('Status').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('Status1').Value;
  //
  // Parameters.ParamByName('DocDateFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateFrom').Value;
  // Parameters.ParamByName('DocDateTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
  // Parameters.ParamByName('PrimaryDocNoFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('PrimaryDocNoFrom').Value;
  // Parameters.ParamByName('PrimaryDocNoTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('PrimaryDocNoTo').Value;
  // Parameters.ParamByName('SecondaryDocNoFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('SecondaryDocNoFrom').Value;
  // Parameters.ParamByName('SecondaryDocNoTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('SecondaryDocNoTo').Value;
  // if gv_MultiCompany then
  // begin
  // Parameters.ParamByName('CompanyCodeFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('CompanyCodeFrom').Value;
  // Parameters.ParamByName('CompanyCodeTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('CompanyCodeTo').Value;
  // end; // if
  // Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
  // Parameters.ParamByName('AccCodeTo').Value := TopTopice;
  //
  // Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
  // Parameters.ParamByName('DetailCodeTo').Value := TopDetail;
  // Parameters.ParamByName('FromYearId').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('FromYearID').Value;
  // Parameters.ParamByName('ToYearId').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('ToYearID').Value;
  // Active := True;
  // end; // with
  // end // with_ RptTrialBalance_CTopicsF

end;

procedure TRptTrialBalance_AccCode_ArziF.mnuCtopic2Click(Sender: TObject);
// var
// TopTopice: Largeint;
// TopDetail: Integer;
// CodeLength:Integer;
begin
  inherited;
  // TopTopice := qry_TrialAccBalance_ArziTopicCode.AsLargeInt;
  // // TopDetail := qry_TrialDetailsBalanceDetailCode.AsLargeInt;
  // CreateMDIForm3(false, TRptTrialBalance_CTopics2_CTopicsF,
  // RptTrialBalance_CTopics2_CTopicsF, MainF); // RptTrialBalance_AccF
  // // SET Parameters in  RptTrialBalance_CTopicsF form
  // with RptTrialBalance_CTopics2_CTopicsF do
  // Begin
  // with qrySumCTopic2 do
  // begin
  // Active := false;
  // Parameters.ParamByName('DocTypeCode_Not').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('DocTypeCode1_Not').Value;
  // Parameters.ParamByName('DocDateFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateFrom').Value;
  // Parameters.ParamByName('DocDateTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
  // Parameters.ParamByName('PrimaryDocNoFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('PrimaryDocNoFrom').Value;
  // Parameters.ParamByName('PrimaryDocNoTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('PrimaryDocNoTo').Value;
  // Parameters.ParamByName('SecondaryDocNoFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('SecondaryDocNoFrom').Value;
  // Parameters.ParamByName('SecondaryDocNoTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('SecondaryDocNoTo').Value;
  // Parameters.ParamByName('Status').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('Status1').Value;
  // Parameters.ParamByName('FromYearId').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('FromYearID').Value;
  // Parameters.ParamByName('ToYearId').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('ToYearID').Value;
  // if gv_MultiCompany then
  // begin
  // Parameters.ParamByName('CompanyCodeFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('CompanyCodeFrom').Value;
  // Parameters.ParamByName('CompanyCodeTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('CompanyCodeTo').Value;
  // end; // if
  // Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
  // Parameters.ParamByName('AccCodeTo').Value := TopTopice;
  //
  // Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
  // Parameters.ParamByName('DetailCodeTo').Value := TopDetail;
  //
  // Active := True;
  // end; // end qrysum
  // with qry_TrialCTopic2Balance do
  // begin
  // Active := false;
  // Parameters.ParamByName('DocTypeCode_Not').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('DocTypeCode1_Not').Value;
  // Parameters.ParamByName('Status').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('Status1').Value;
  //
  // Parameters.ParamByName('DocDateFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateFrom').Value;
  // Parameters.ParamByName('DocDateTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('DocDateTo').Value;
  // Parameters.ParamByName('PrimaryDocNoFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('PrimaryDocNoFrom').Value;
  // Parameters.ParamByName('PrimaryDocNoTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('PrimaryDocNoTo').Value;
  // Parameters.ParamByName('SecondaryDocNoFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('SecondaryDocNoFrom').Value;
  // Parameters.ParamByName('SecondaryDocNoTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('SecondaryDocNoTo').Value;
  // if gv_MultiCompany then
  // begin
  // Parameters.ParamByName('CompanyCodeFrom').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('CompanyCodeFrom').Value;
  // Parameters.ParamByName('CompanyCodeTo').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName
  // ('CompanyCodeTo').Value;
  // end; // if
  // Parameters.ParamByName('AccCodeFrom').Value := TopTopice;
  // Parameters.ParamByName('AccCodeTo').Value := TopTopice;
  //
  // Parameters.ParamByName('DetailCodeFrom').Value := TopDetail;
  // Parameters.ParamByName('DetailCodeTo').Value := TopDetail;
  //
  // Parameters.ParamByName('FromYearId').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('FromYearID').Value;
  // Parameters.ParamByName('ToYearId').Value :=
  // qry_TrialAccBalance_Arzi.Parameters.ParamByName('ToYearID').Value;
  // Active := True;
  // end; // with
  // end // with_ RptTrialBalance_CTopicsF

end;

end.


