unit specialTrialBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Buttons, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, DBCtrls, ComCtrls, FarsiReportBuilde,
  ToolWin, CheckLst, DB, ADODB, StrUtils, Filter_ADO_Const,
  Menus, ppProd, ppClass, ppReport, AccFunctions,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache,
  pptypes,
  ppVar, ppParameter, MySplitter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type

  TCirculation = class;

  TSpecialTrialBalanceF = class(Ttemplate2MDIF)
    actDoTrial: TAction;
    qryTrialBalance: TADOQuery;
    srcTrialBalance: TDataSource;
    btnSort: TBitBtn;
    actSort: TAction;
    btnSort1: TBitBtn;
    actExcel: TAction;
    popGrd: TPopupMenu;
    mnusadas1: TMenuItem;
    btnSearch_: TBitBtn;
    actFilter: TAction;
    actUndo: TAction;
    actAddTrial: TAction;
    actRemoveTrial: TAction;
    actCirculationAcc: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    ppParameterList1: TppParameterList;
    actOther: TAction;
    btnExcel: TBitBtn;
    popOthers: TPopupMenu;
    mnu1: TMenuItem;
    mnuN3: TMenuItem;
    mnuN4: TMenuItem;
    pnl4: TPanel;
    pnlTop: TPanel;
    pnlCirculation: TPanel;
    btnUndo: TSpeedButton;
    tlbCirculation: TToolBar;
    pnlRight: TPanel;
    pnl3: TPanel;
    chkCaption: TCheckBox;
    chkAccCode: TCheckBox;
    pnlSelectCode: TPanel;
    lstSource: TListBox;
    pnlTrial: TPanel;
    pnl6: TPanel;
    btnAddTrial: TSpeedButton;
    btnRemoveTrial: TSpeedButton;
    lstCirculation: TListBox;
    chkTrial: TCheckBox;
    MySplitter1: TMySplitter;
    MySplitter2: TMySplitter;
    btnPrint: TButton;
    btnDoTrial: TBitBtn;
    btnCirculationAcc: TButton;
    btnDoTrial1: TBitBtn;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    pplblplbl2: TppLabel;
    pplblBalanceBed: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    pplblplbl7: TppLabel;
    pplblplbl8: TppLabel;
    pplblBalancebes: TppLabel;
    pplblBes: TppLabel;
    pplblBed: TppLabel;
    pplblLblCompanyName: TppLabel;
    pplblLblPrintDate: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    pptxtCode: TppDBText;
    pptxtCaption: TppDBText;
    pplblplbl1: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine6: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine13: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine7: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel3: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel4: TppLabel;
    chkSamelevel: TCheckBox;
    ppLabel5: TppLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    pnlAccOld: TPanel;
    lblOldAcc: TLabel;
    chkZero: TCheckBox;
    grdMaster: TCedarDbgrid;
    popPrint: TPopupMenu;
    N9: TMenuItem;
    N8: TMenuItem;
    try1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actDoTrialExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actUndoExecute(Sender: TObject);
    procedure grdMasterDblClick(Sender: TObject);
    procedure actAddTrialExecute(Sender: TObject);
    procedure actRemoveTrialExecute(Sender: TObject);
    procedure lstCirculationDblClick(Sender: TObject);
    procedure lstSourceDblClick(Sender: TObject);
    procedure lstSourceClick(Sender: TObject);
    procedure chkTrialClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCirculationAccExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure pplblLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure pplblLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure qryTrialBalanceAccCodeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure mnu1Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure mnuN3Click(Sender: TObject);
    procedure mnuN4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdMasterMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure ppLabel2GetText(Sender: TObject; var Text: string);
    procedure qryTrialBalanceAfterOpen(DataSet: TDataSet);
    procedure pplblPrvAccGetText(Sender: TObject; var Text: string);
    procedure chkSamelevelClick(Sender: TObject);
    procedure chkZeroClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure try1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    aWhere: String;
    bWhere: String;
    DateFrom, DateTo: String;
    prvAccName, prvAccCode: string;
    FilterStringCaption: string;
    AccCodeForPrint: string;
    FormType: Byte;
    ActiveCurrency: Boolean;

    // lstSelected:TStringList;
    SetParam: TCirculation;
    procedure initView;
    procedure EnabelButton(inx: Integer; btnState: Boolean);
    procedure AddButtons(ToolBar: TToolBar; const ButtonCaptions: String;
      actTag: Integer);
    Procedure FreeAllCirculationl;
    Procedure UpdateList;
    Procedure CreateLevel(Sender: TObject);
    Procedure initReport;
    // Procedure SumSelected;
    // procedure FreeSumSelected;
    procedure initReportTrial;
    procedure ClickNextMenuItem;

    { Private declarations }
  public
    { Public declarations }
  end;

  TCirculation = class(TObject)
  private
    FBaseParam: String;
    FAddParam: string;
    FAccName: String;
    FAccCode: String;
    FParentParam: TCirculation;
    FSplitCode: Boolean;
    FSplitCaption: Boolean;
    FWhereSQL: string;
    // FBootMark: TBookmark;
    FWhereBeforeYear: String;
    FSamelevel: Boolean;
    FOpenFromDate: String;
    FOpenToDate: String;
    // property BootMark : TBookmark  read FBootMark write FBootMark;
    property WhereSQL: string read FWhereSQL write FWhereSQL;
    Property WhereBeforeYear: String read FWhereBeforeYear
      write FWhereBeforeYear;
    Property Samelevel: Boolean read FSamelevel write FSamelevel;
    property OpenFromDate: String read FOpenFromDate write FOpenFromDate;
    property OpenToDate: String read FOpenToDate write FOpenToDate;

    property BaseParam: String read FBaseParam write FBaseParam;
    property AddParam: string read FAddParam write FAddParam;
    property AccCode: String read FAccCode write FAccCode;
    property AccName: String read FAccName write FAccName;
    property SplitCode: Boolean read FSplitCode write FSplitCode;
    property SplitCaption: Boolean read FSplitCaption write FSplitCaption;
    property ParentParam: TCirculation read FParentParam write FParentParam;
  public
    procedure Refresh;
  end;

var
  SpecialTrialBalanceF: TSpecialTrialBalanceF;

implementation

uses
  GlobalPro, Dm, sort2, search2, FilterClass_ADO, filter_ADO, Resource,
  Officesacc, MyReport, TreeChart, DBGrid2Print, FaraConsts;

{$R *.dfm}
{ Ttemplate2MDIF1 }

procedure TSpecialTrialBalanceF.initView;
var
  I: Integer;
begin

  popGrd.Items.Clear;
  I := 0;
  with dmf.qry_Temp do
  begin
    close;
    sql.Text := 'SELECT ID, CaptionName FROM  ACC.Analyze order by ID';
    open;
    while not eof do
    begin
      lstSource.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      AddButtons(tlbCirculation, Fields[1].AsString, Fields[0].AsInteger);
      popGrd.Items.Add(NewItem(Fields[1].AsString, 0, False, True, CreateLevel,
        0, 'Itm' + Fields[0].AsString));
      popGrd.Items[I].Tag := Fields[0].AsInteger;
      if FormType = Fields[0].AsInteger then
      begin
        lstSource.ItemIndex := I;
        actAddTrial.Execute;
      end;
      inc(I);
      next;
    end;
  end;
end;

procedure TSpecialTrialBalanceF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  ActiveCurrency := dmf.ReadBankConfigAcc('ActiveCurrencyInTrialBalance',
    '0') = '1';

  initView;
  chkSamelevel.Checked := ReadConfig(APPID, 'Samelevel', 'false').ToBoolean()
end;

procedure TSpecialTrialBalanceF.FormDestroy(Sender: TObject);

begin
  inherited;
  // SaveColWidth(grdMaster);
  SaveConfig(APPID, 'Samelevel', chkSamelevel.Checked.ToString());
  FreeAllCirculationl;
end;

procedure TSpecialTrialBalanceF.FormResize(Sender: TObject);
begin
  inherited;
//  grdMaster.setSizeColDBGrid(True); //
end;

procedure TSpecialTrialBalanceF.actDoTrialExecute(Sender: TObject);
var
  I, inx: Integer;
begin
  inherited;
  FreeAllCirculationl;
  SetParam := TCirculation.Create;
  with SetParam do
  begin
    For I := 0 to lstCirculation.Count - 1 do
    begin
      inx := Integer(lstCirculation.Items.Objects[I]);
      BaseParam := BaseParam + inttostr(inx) + ',';
    end;
    BaseParam := Leftstr(BaseParam, length(BaseParam) - 1);
    SplitCode := chkAccCode.Checked;
    SplitCaption := chkCaption.Checked;
    Samelevel := chkSamelevel.Checked;
    ParentParam := nil;
    WhereSQL := aWhere;
    WhereBeforeYear := bWhere;
    OpenFromDate := DateFrom;
    OpenToDate := DateTo;
    pnlCirculation.Visible := False;
    pnlAccOld.Visible := False;
    if BaseParam <> emptystr then
      Refresh;
    if qryTrialBalance.FindField('AccCode') <> nil then
      AccCode := qryTrialBalance.fieldbyname('AccCode').AsString
    else
      AccCode := '0';
    if qryTrialBalance.FindField('AccName') <> nil then
      AccName := qryTrialBalance.fieldbyname('AccName').AsString;
  end;
end;

procedure TSpecialTrialBalanceF.AddButtons;
var
  btn: TToolButton;

begin
  btn := TToolButton.Create(ToolBar);
  with btn do
  begin
    onclick := CreateLevel;
    Parent := ToolBar;
    Caption := ButtonCaptions;
    Tag := actTag;
    if (ButtonCaptions = '|') then
      Style := tbsSeparator
    else
      Style := tbsButton;
  end;
end;

procedure TSpecialTrialBalanceF.btnPrintClick(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSpecialTrialBalanceF.EnabelButton;
var
  I: Integer;
begin
  for I := 0 to tlbCirculation.ButtonCount - 1 do
  begin
    if tlbCirculation.Buttons[I].Tag = inx then
      tlbCirculation.Buttons[I].Enabled := btnState;
    if popGrd.Items[I].Name = 'Itm' + inttostr(inx) then
      popGrd.Items[I].Enabled := btnState;
  end;
end;

procedure TSpecialTrialBalanceF.FreeAllCirculationl;
var
  tmp: TCirculation;
begin
  while (SetParam <> nil) do
  begin
    tmp := SetParam.ParentParam;
    SetParam.Free;
    SetParam := tmp
  end;
end;

{ TCirculation }

procedure TCirculation.Refresh;
var
  I, CurrencyKind: Integer;
  FinalParam: String;
begin
  if AddParam = emptystr then
    FinalParam := FBaseParam
  else
    FinalParam := stringreplace(FBaseParam, ',' + AddParam, '', [rfReplaceAll]);

  with SpecialTrialBalanceF do
    with qryTrialBalance do
    begin
      grdMaster.SelectedRows.Clear;
      close;

      Parameters.ParamByName('BaseParam').Value := FinalParam;
      Parameters.ParamByName('MargeCode').Value := SplitCode;
      Parameters.ParamByName('MargeCaption').Value := SplitCaption;
      Parameters.ParamByName('FilterParam').Value := AccCode;
      Parameters.ParamByName('AddParam').Value := AddParam;
      Parameters.ParamByName('awhere').Value := WhereSQL;
      Parameters.ParamByName('ShowColumnSamelevel').Value := Samelevel;

      if MyParams.FindParam('CurrencyKind') <> nil then
      begin
        CurrencyKind := GetcTo(MyParams.ParamValues['CurrencyKind'], ftInteger);
        Parameters.ParamByName('CurrencyKind').Value := CurrencyKind;
      end
      else
        Parameters.ParamByName('CurrencyKind').Value := 0;

      Parameters.ParamByName('OpenFromDate').Value := OpenFromDate;
      Parameters.ParamByName('OpenToDate').Value := OpenToDate;

      open;

      grdMaster.Columns.Clear;
      with grdMaster do
        For I := 0 to Columns.Count - 1 do
        begin
          if Columns[I].ReadOnly then
            Columns[I].Color := const_fixed_columns_color
          else
            Columns[I].Color := const_normal_columns_color;

          if (Columns[I].Field is TStringField) then
            Columns[I].Width := 120;

          Columns[I].Field.Tag := 3;
          Columns[I].Title.TitleButton := True;

          if upperCase(Columns[I].FieldName) = 'ORDACCCODE' then
          begin
            Columns[I].Field.Tag := 3;
            Columns[I].Visible := False;
            Columns[I].Field.DisplayLabel := 'ترتيب كد ';
          end
          else if upperCase(Columns[I].FieldName) = 'ACCCODE' then
          begin
            Columns[I].Visible := not SplitCode;
            Columns[I].Width := 100;
            Columns[I].Title.Caption := 'كد ' + lstSource.Items[lstSource.ItemIndex];
          end
          else if upperCase(Columns[I].FieldName) = 'ACCNAME' then
          begin
            Columns[I].Visible := not SplitCaption;
            Columns[I].Width := 300;
            Columns[I].Title.Caption := 'عنوان ' + lstSource.Items[lstSource.ItemIndex];
          end
          else if upperCase(Columns[I].FieldName) = 'SUMDEBT' then
            Columns[I].Title.Caption := 'گردش بدهكار'
          else if upperCase(Columns[I].FieldName) = 'SUMCREDIT' then
            Columns[I].Title.Caption := 'گردش بستانكار'
          else if upperCase(Columns[I].FieldName) = 'SUMBALANCEDEBT' then
            Columns[I].Title.Caption := 'مانده بدهكار'
          else if upperCase(Columns[I].FieldName) = 'SUMBALANCECREDIT' then
            Columns[I].Title.Caption := 'مانده بستانكار'

          // ➕➕➕ شروع: تنظیم عنوان فارسی برای فیلدهای جدید اول دوره ➕➕➕
          else if upperCase(Columns[I].FieldName) = 'OPENDEBT' then
            Columns[I].Title.Caption := 'بدهکار اول دوره'
          else if upperCase(Columns[I].FieldName) = 'OPENCREDIT' then
            Columns[I].Title.Caption := 'بستانکار اول دوره'
          else if upperCase(Columns[I].FieldName) = 'OPENCURRENCYDEBIT' then
            Columns[I].Title.Caption := 'بدهکار اول دوره ارزی'
          else if upperCase(Columns[I].FieldName) = 'OPENCURRENCYCREDIT' then
            Columns[I].Title.Caption := 'بستانکار اول دوره ارزی'
          // ➕➕➕ پایان: تنظیم عنوان فارسی برای فیلدهای جدید اول دوره ➕➕➕

          else if upperCase(Columns[I].FieldName) = 'CURDEBIT' then
            Columns[I].Title.Caption := 'گردش بدهکار ارزی'
          else if upperCase(Columns[I].FieldName) = 'CURCREDIT' then
            Columns[I].Title.Caption := 'گردش بستانکار ارزی';

          // تنظیم رنگ ستون‌های تاریخ
          if Columns[I].Field is TStringField then
            if (pos('date', LowerCase(Columns[I].Field.FieldName)) <> 0) or
              (pos('تاريخ', LowerCase(Columns[I].Field.FieldName)) <> 0) then
              Columns[I].Color := const_Date_columns_color;

          // تنظیم فرمت و رنگ ستون‌های عددی/ریالی/ارزی
          if (Columns[I].Field is TBCDField) or (Columns[I].Field is TCurrencyField) then
          begin
            Columns[I].Width := 120;
            TBCDField(Columns[I].Field).Currency := True;
            Columns[I].Color := $00C9FADB; // رنگ سبز کم‌رنگ
          end;

          if (Columns[I].Field is TFMTBCDField) then
          begin
            Columns[I].Width := 120;
            TFMTBCDField(Columns[I].Field).Currency := True; // اصلاح جزئی: استفاده از TFMTBCDField به جای TBCDField
            Columns[I].Color := $00E2F4C4; // رنگ سبز متفاوت
          end;
        end;

      DBGridCurrencyKind(grdMaster, MyParams, qryTrialBalance);
      grdMaster.DoLoad('');
    end;
end;

procedure TSpecialTrialBalanceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTrialBalance);
end;

procedure TSpecialTrialBalanceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.showSearch(qryTrialBalance);
end;

procedure TSpecialTrialBalanceF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdMaster)
end;

procedure TSpecialTrialBalanceF.actFilterExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self, MyParams) do
    try
      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);
      // AddItem(DMF.adcAccounting,'DocTypeCode','انواع سند حسابداري','نوع سند',ftInteger,dvMinMax,'','',ciLookup,'SELECT DocTypeCode, DocTypeName_L1 FROM  acc.DocTypes '
      // ,'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM  acc.DocTypes');
      AddItem(dmf.adcAccounting, 'state', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);
      AddItem(dmf.adcAccounting, 'DocTypeCode', '', '', ftUnknown, dvDefaults,
        'true', '', ciCheck, strLookUpDocType, '');
      AddItem(dmf.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
        // 'SELECT MIN(SecondaryDocNo), MAX(SecondaryDocNo) FROM Acc.DocGroups',
        strMaxMinCompany, True);
      AddItem(dmf.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
        // 'SELECT MIN(PrimaryDocNo), MAX(PrimaryDocNo) FROM Acc.DocGroups',
        strMaxMinCompany, True);
      AddItem(dmf.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(StartYear) , MAX(EndYear)  FROM Util.MaliYear'
        // 'SELECT MIN(DocDate), MAX(DocDate) FROM Acc.DocGroups'
        );

      AddItem(dmf.adcAccounting, 'CTopicCode3', 'كد و نام تفصیلی 4',
        'كد تفصیلی4', ftInteger, dvMinMax, '', '', ciLookup,
        strLookUpCTopicCode3, strMaxMinCTopicCode3, True);

      AddItem(dmf.adcAccounting, 'CTopicCode2', 'كد و نام تفصیلی 3',
        'کد تفصیلی3', ftInteger, dvMinMax, '', '', ciLookup,
        strLookUpCTopicCode2, strMaxMinCTopicCode2, True);
      AddItem(dmf.adcAccounting, 'CTopicCode', 'كد و نام تفصیلی 2',
        'کد تفصیلی2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CTopicsForUse ',
        // 'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CTopicsForUse',
        strMaxMinCompany, True);
      AddItem(dmf.adcAccounting, 'DetailCode', 'كد و نام تفصيلي 1',
        'كد تفصيلي1', ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail, True);
      AddItem(dmf.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT ACC.Categories.TopicCode, ACC.Categories.MoeenName_L1 FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ',
        strMaxMinCompany
        // 'SELECT min(ACC.Categories.TopicCode), max(ACC.Categories.TopicCode) FROM ACC.Categories LEFT OUTER JOIN '
        // + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        // + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) '
        , True);

      if gv_MultiCompany then
        AddItem(dmf.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM  acc.Companies ',
          'SELECT 0,999999999');

      // AddItem(dmf.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
      // ftInteger, dvDefaults, inttostr(APPBank.Year), inttostr(APPBank.Year),
      // ciSimple, '', '');

      AddItem(dmf.adcAccounting, 'Year', 'سال', 'شماره سال', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT YearID, ''از '' + StartYear + '' تا '' + EndYear as Name FROM Util.MaliYear ',
        'SELECT ' + opt.DefaultYear.ToString + ' , ' + APPBank.Year.ToString);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TSpecialTrialBalanceF.UpdateList;
Var
  SecDocNoFrom, SecDocNoTo: String;
  PriDocNoFrom, PriDocNoTo: String;
  CTFrom, CTTo: String;
  CT2From, CT2To: String;
  CT3From, CT3To: String;
  DetailFrom, DetailTo: String;
  AccCodeFrom, AccCodeTo: String;
  CompanyFrom, CompanyTo: String;
  YearFrom, YearTo: String;
  TypeFrom: String;
  StatusFrom: string;
  CurrencyTypeFrom, CurrencyTypeTO: String;
begin
  aWhere := emptystr;
  bWhere := emptystr;

  if MyParams.FindParam('Currencies') <> nil then
  begin
    CurrencyTypeFrom := GetcFrom(MyParams.ParamValues['Currencies'], ftInteger);
    CurrencyTypeTO := GetcTo(MyParams.ParamValues['Currencies'], ftInteger);
  end;

  DateFrom := GetcFrom(MyParams.ParamValues['DocDate'], ftString);
  DateTo := GetcTo(MyParams.ParamValues['DocDate'], ftString);

  PriDocNoFrom := GetcFrom(MyParams.ParamValues['PrimaryDocNo'], ftInteger);
  PriDocNoTo := GetcTo(MyParams.ParamValues['PrimaryDocNo'], ftInteger);

  SecDocNoFrom := GetcFrom(MyParams.ParamValues['SecondaryDocNo'], ftInteger);
  SecDocNoTo := GetcTo(MyParams.ParamValues['SecondaryDocNo'], ftInteger);

  TypeFrom := GetcFrom(MyParams.ParamValues['DocTypeCode'], ftString);

  StatusFrom := GetcFrom(MyParams.ParamValues['state'], ftString);
  // TypeTo       := GetcTo(myParams.ParamValues['DocTypeCode'],ftInteger);

  YearFrom := GetcFrom(MyParams.ParamValues['Year'], ftInteger);
  YearTo := GetcTo(MyParams.ParamValues['Year'], ftInteger);

  AccCodeFrom := GetcFrom(MyParams.ParamValues['AccCode'], ftLargeint);
  AccCodeTo := GetcTo(MyParams.ParamValues['AccCode'], ftLargeint);

  CTFrom := GetcFrom(MyParams.ParamValues['CTopicCode'], ftInteger);
  CTTo := GetcTo(MyParams.ParamValues['CTopicCode'], ftInteger);

  CT2From := GetcFrom(MyParams.ParamValues['CTopicCode2'], ftInteger);
  CT2To := GetcTo(MyParams.ParamValues['CTopicCode2'], ftInteger);

  CT3From := GetcFrom(MyParams.ParamValues['CTopicCode3'], ftInteger);
  CT3To := GetcTo(MyParams.ParamValues['CTopicCode3'], ftInteger);

  DetailFrom := GetcFrom(MyParams.ParamValues['DetailCode'], ftInteger);
  DetailTo := GetcTo(MyParams.ParamValues['DetailCode'], ftInteger);

  if gv_MultiCompany then
  begin
    CompanyFrom := GetcFrom(MyParams.ParamValues['CompanyCode'], ftInteger);
    CompanyTo := GetcTo(MyParams.ParamValues['CompanyCode'], ftInteger);
  end
  else
  begin
    CompanyFrom := '0';
    CompanyTo := '2147483647';
  end;

  Add2Filter(aWhere, Format('acc.Documents.TopicCode  Between %S And %S',
    [AccCodeFrom, AccCodeTo]));
  aWhere := aWhere + GetInOrNotIn4QRy(nil, MyParams, 'AccCode',
    'acc.Documents.TopicCode');

  Add2Filter(aWhere, Format('acc.Documents.DetailCode Between %S And %S',
    [DetailFrom, DetailTo]));
  aWhere := aWhere + GetInOrNotIn4QRy(nil, MyParams, 'DetailCode',
    'acc.Documents.DetailCode');

  Add2Filter(aWhere, Format('acc.Documents.CTopicCode Between %S And %S',
    [CTFrom, CTTo]));
  aWhere := aWhere + GetInOrNotIn4QRy(nil, MyParams, 'CTopicCode',
    'acc.Documents.CTopicCode');

  Add2Filter(aWhere, Format('acc.Documents.CTopicCode2 Between %S And %S',
    [CT2From, CT2To]));
  aWhere := aWhere + GetInOrNotIn4QRy(nil, MyParams, 'CTopicCode2',
    'acc.Documents.CTopicCode2');

  Add2Filter(aWhere, Format('acc.Documents.ctopiccode3 Between %S And %S',
    [CT3From, CT3To]));
  aWhere := aWhere + GetInOrNotIn4QRy(nil, MyParams, 'ctopiccode3',
    'acc.Documents.ctopiccode3');

  Add2Filter(aWhere, Format('acc.DocGroups.SecondaryDocNo Between %S And %S',
    [SecDocNoFrom, SecDocNoTo]));
  aWhere := aWhere + GetInOrNotIn4QRy(nil, MyParams, 'SecondaryDocNo',
    'acc.DocGroups.SecondaryDocNo');

  Add2Filter(aWhere, Format('acc.DocGroups.PrimaryDocNo Between %S And %S',
    [PriDocNoFrom, PriDocNoTo]));
  aWhere := aWhere + GetInOrNotIn4QRy(nil, MyParams, 'PrimaryDocNo',
    'acc.DocGroups.PrimaryDocNo');

  if MyParams.FindParam('Currencies') <> nil then
    Add2Filter(aWhere,
      Format('isnull(Acc.Documents.CurrencyType,0) Between %S And %S',
      [CurrencyTypeFrom, CurrencyTypeTO]));

  // Add2Filter(awhere,Format('acc.DocGroups.DocTypeCode Between %S And %S',[TypeFrom,TypeTo]));
  Add2Filter(aWhere, Format('acc.DocGroups.YearID   Between %S And %S',
    [YearFrom, YearTo]));
  Add2Filter(aWhere, Format('acc.DocGroups.CompanyCode   Between %S And %S',
    [CompanyFrom, CompanyTo]));
  Add2Filter(aWhere, Format('acc.DocGroups.DocDate   Between %S And %S',
    [QuotedStr(DateFrom), QuotedStr(DateTo)]));
  Add2Filter(aWhere, Format('acc.DocGroups.DocTypeCode  in (%S)  ',
    [TypeFrom]));
  Add2Filter(aWhere, Format('acc.DocGroups.status  in (%S)  ', [StatusFrom]));
  Add2Filter(aWhere, 'acc.DocGroups.status <> 0');

  // Add2Filter(bwhere,Format('acc.DocGroups.DocTypeCode   Between %S And %S',[,TypeTo]));
  Add2Filter(bWhere, Format('acc.Documents.TopicCode  Between %S And %S',
    [AccCodeFrom, AccCodeTo]));
  bWhere := bWhere + GetInOrNotIn4QRy(nil, MyParams, 'AccCode',
    'acc.Documents.TopicCode');

  Add2Filter(bWhere, Format('acc.DocGroups.YearID   Between %S And %S',
    [YearFrom, YearTo]));
  Add2Filter(bWhere, Format('acc.DocGroups.CompanyCode   Between %S And %S',
    [CompanyFrom, CompanyTo]));

  Add2Filter(bWhere, Format('acc.Documents.CTopicCode Between %S And %S',
    [CTFrom, CTTo]));
  bWhere := bWhere + GetInOrNotIn4QRy(nil, MyParams, 'CTopicCode',
    'acc.Documents.CTopicCode');

  Add2Filter(bWhere, Format('acc.Documents.DetailCode Between %S And %S',
    [DetailFrom, DetailTo]));
  bWhere := bWhere + GetInOrNotIn4QRy(nil, MyParams, 'DetailCode',
    'acc.Documents.DetailCode');

  Add2Filter(bWhere, Format('(acc.DocGroups.SecondaryDocNo < %S',
    [SecDocNoFrom]));
  Add2Filter(bWhere, Format('acc.DocGroups.PrimaryDocNo < %S',
    [PriDocNoFrom]), 'OR');
  Add2Filter(bWhere, Format('acc.DocGroups.DocDate < %S)',
    [QuotedStr(DateFrom)]), 'OR');

  if Assigned(SetParam) then
  begin
    SetParam.WhereSQL := aWhere;
    SetParam.WhereBeforeYear := bWhere;
    SetParam.OpenFromDate := DateFrom;
    SetParam.OpenToDate := DateTo;
    SetParam.Refresh
  end;

  FilterStringCaption := Format('شماره فرعی سند : از %s تا %s ' + #13#10 +
    ' شماره اصلی سند : از %s تا %s ' + #13#10 +
    ' تاريخ سند حسابداری : از %s تا %s', [SecDocNoFrom, SecDocNoTo,
    PriDocNoFrom, PriDocNoTo, DateFrom, DateTo]);
  LblShowLimitPlace1.Caption := ReplaceStr(FilterStringCaption, #13#10, '');
  actDoTrial.Execute;
end;

procedure TSpecialTrialBalanceF.actUndoExecute(Sender: TObject);
var
  tmp: TCirculation;
begin
  inherited;
  if not Assigned(SetParam) then
    exit;
  if Assigned(SetParam.ParentParam) then
    if (SetParam.ParentParam <> nil) then
    begin
      tmp := SetParam.ParentParam;
      chkCaption.Checked := tmp.SplitCaption;
      chkAccCode.Checked := tmp.SplitCode;
      chkSamelevel.Checked := tmp.Samelevel;
      pnlCirculation.Visible := tmp.ParentParam <> nil;
      pnlAccOld.Visible := pnlCirculation.Visible;
      EnabelButton(StrToInt(SetParam.AddParam), True);
      tmp.Refresh;
      // qryTrialBalance.GotoBookmark(setparam.BootMark);
      SetParam.Free;
      SetParam := tmp;
    end
    else
      SetParam := SetParam;
end;

procedure TSpecialTrialBalanceF.grdMasterDblClick(Sender: TObject);
begin
  inherited;
  // popGrd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  ClickNextMenuItem;
end;

procedure TSpecialTrialBalanceF.actAddTrialExecute(Sender: TObject);
var
  obj: TObject;
begin
  inherited;
  if lstSource.ItemIndex = -1 then
    exit;
  if lstCirculation.Items.IndexOf(lstSource.Items[lstSource.ItemIndex]) = -1
  then
  begin
    obj := lstSource.Items.Objects[lstSource.ItemIndex];
    lstCirculation.Items.AddObject(lstSource.Items[lstSource.ItemIndex], obj);
    EnabelButton(Integer(obj), False);
  end;
end;

procedure TSpecialTrialBalanceF.actRemoveTrialExecute(Sender: TObject);
var
  obj: TObject;
  inx: Integer;
begin
  inherited;
  if lstCirculation.ItemIndex = -1 then
    exit;
  obj := lstCirculation.Items.Objects[lstCirculation.ItemIndex];
  inx := lstCirculation.Items.IndexOfObject(obj);
  if inx <> -1 then
  begin
    lstCirculation.Items.Delete(inx);
    EnabelButton(Integer(obj), True);
  end;
end;

procedure TSpecialTrialBalanceF.lstCirculationDblClick(Sender: TObject);
begin
  inherited;
  actRemoveTrial.Execute;
end;

procedure TSpecialTrialBalanceF.lstSourceDblClick(Sender: TObject);
begin
  inherited;
  if chkTrial.Checked then
    actAddTrial.Execute;
end;

procedure TSpecialTrialBalanceF.lstSourceClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if chkTrial.Checked then
    exit;
  For I := 0 to tlbCirculation.controlcount - 1 do
  begin
    tlbCirculation.Buttons[I].Enabled := True;
    popGrd.Items[I].Enabled := True;
  end;
  lstCirculation.Clear;
  actAddTrial.Execute;
  actDoTrial.Execute;
end;

procedure TSpecialTrialBalanceF.chkSamelevelClick(Sender: TObject);
begin
  inherited;
  chkCaption.Checked := chkSamelevel.Checked;
  chkAccCode.Checked := chkSamelevel.Checked;
  pnlAccOld.Visible := not chkSamelevel.Checked
end;

procedure TSpecialTrialBalanceF.chkTrialClick(Sender: TObject);
begin
  inherited;
  pnlTrial.Visible := chkTrial.Checked;
  // actDoTrial.Enabled :=  pnltrial.Visible;
end;

procedure TSpecialTrialBalanceF.chkZeroClick(Sender: TObject);
begin
  inherited;
  qryTrialBalance.Filter := 'SumBalanceDebt<>0 or SumBalanceCredit<>0';
  qryTrialBalance.Filtered := not chkZero.Checked;
  // SumSelected;
end;

procedure TSpecialTrialBalanceF.FormShow(Sender: TObject);
begin
  inherited;
  MyParams.Clear;
  actFilter.Execute;

  if MyParams.FindParam('DocDate') = nil then
    close;
  Realign;
end;

procedure TSpecialTrialBalanceF.ClickNextMenuItem;
var
  AddParam: Integer;
  I: Integer;
begin
  if Assigned(SetParam.ParentParam) then
  begin
    AddParam := StrToInt(SetParam.AddParam);
  end
  else
  begin
    for I := tlbCirculation.ButtonCount - 1 downto 0 do
    begin
      if ((tlbCirculation.Buttons[I]).Enabled = False) then
      begin
        AddParam := tlbCirculation.Buttons[I].Tag;
        Break;
      end;
    end;
  end;

  for I := 0 to popGrd.Items.Count - 2 do
  begin
    if ((popGrd.Items[I]).Tag = AddParam) then
    begin
      (popGrd.Items[I + 1]).Click;
      exit;
    end;
  end;
end;

procedure TSpecialTrialBalanceF.CreateLevel;
var
  aParam: TCirculation;
begin
  inherited;

  if not Assigned(SetParam) then
    exit;
  pnlCirculation.Visible := True;
  pnlAccOld.Visible := not chkSamelevel.Checked;
  aParam := TCirculation.Create;
  with aParam do
    try
      qryTrialBalance.DisableControls;
      AddParam := inttostr(TToolButton(Sender).Tag);
      BaseParam := SetParam.BaseParam + ',' + AddParam;
      AccCode := qryTrialBalance.fieldbyname('AccCode').AsString;
      if qryTrialBalance.FindField('AccName') <> nil then
      begin
        AccName := qryTrialBalance.fieldbyname('AccName').AsString;
        prvAccName := AccName;
        prvAccCode := AccCode;
        lblOldAcc.Caption := Format('%s   %s', [AccCode, prvAccName]);
      end;
      SplitCode := chkAccCode.Checked;
      Samelevel := chkSamelevel.Checked;
      WhereSQL := SetParam.WhereSQL;
      WhereBeforeYear := SetParam.WhereBeforeYear;
      OpenFromDate := SetParam.OpenFromDate;
      OpenToDate := SetParam.OpenToDate;
      SplitCaption := chkCaption.Checked;
      ParentParam := SetParam;

      // EnabelButton(TtoolButton(Sender).tag,False);
      //
      // BootMark:= qryTrialBalance.GetBookmark;
      Refresh;
      SetParam := aParam;
    Finally
      qryTrialBalance.EnableControls;
    end;

end;

procedure TSpecialTrialBalanceF.actCirculationAccExecute(Sender: TObject);
var
  SQLCurrencyType: string;
  CurrencyKind: Integer;
begin
  inherited;
  // officesF.enter(qryTrialBalance.fieldbyname('AccCode').AsString,
  // qryTrialBalance.fieldbyname('AccName').AsString, SetParam.BaseParam,
  // SetParam.WhereSQL, SetParam.WhereBeforeYear);

  if MyParams.FindParam('CurrencyKind') <> nil then
    CurrencyKind := GetcTo(MyParams.ParamValues['CurrencyKind'], ftInteger)
  else
    CurrencyKind := 0;
  if (CurrencyKind in [1, 2]) then
    if MyParams.FindParam('Currencies') <> nil then

      SQLCurrencyType := ' And (isnull(CurrencyType,0)=' +
        qryTrialBalance.fieldbyname('CurrencyType').AsString + ') ';

  officesaccF.enter(MyParams, qryTrialBalance.fieldbyname('AccCode').AsString,
    qryTrialBalance.fieldbyname('AccName').AsString, SetParam.BaseParam,
    SetParam.WhereSQL + SQLCurrencyType, SetParam.WhereBeforeYear +
    SQLCurrencyType, GetcTo(MyParams.ParamValues['DocDate'], ftString), '1');
  officesaccF.LblShowLimitPlace1.Caption := LblShowLimitPlace1.Caption;
end;

procedure TSpecialTrialBalanceF.initReport;
var
  I: Integer;
begin
  for I := 0 to lstCirculation.Count - 2 do
  begin
    CreateGroup(ppReport1, lstCirculation.Items[I]);
    CreateDBText(ppReport1, ppReport1.GroupHeaderBand[I],
      lstCirculation.Items[I], 0, ppShape1.Width - 0.8646001, 0, 0, [], True,
      taLeftJustified);

    CreateDBText(ppReport1, ppReport1.GroupHeaderBand[I],
      'عنوان‏' + lstCirculation.Items[I], 0, ppShape1.Width - 0.8646108, 0, 0,
      [], True, tarightJustified);

    CreateLine(ppReport1, ppReport1.GroupHeaderBand[I], 0, 0, 0.052099999, 0,
      lpLeft, 1, False, True);
    CreateLine(ppReport1, ppReport1.GroupHeaderBand[I], 0,
      ppShape1.Width - 0.06, 0.052099999, 0, lpRight, 1, False, True);
    CreateLine(ppReport1, ppReport1.GroupFooterBand[I],
      ppReport1.GroupFooterBand[I].Height - 0.05, 0, 0, 0.052099999,
      lpBottom, 1, True);

    CreateDBCalc(ppReport1, ppReport1.GroupFooterBand[I], 'SumBalanceCredit',
      0.01, pplblBalancebes.Left, pplblBalancebes.Width,
      pplblBalancebes.Height);
    CreateDBCalc(ppReport1, ppReport1.GroupFooterBand[I], 'SumBalanceDebt',
      0.01, pplblBalanceBed.Left, pplblBalanceBed.Width,
      pplblBalancebes.Height);

    CreateDBCalc(ppReport1, ppReport1.GroupFooterBand[I], 'SumCredit', 0.01,
      pplblBes.Left, pplblBes.Width, pplblBalancebes.Height);

    CreateDBCalc(ppReport1, ppReport1.GroupFooterBand[I], 'SumDebt', 0.01,
      pplblBed.Left, pplblBed.Width, pplblBalancebes.Height);

    CreateDBText(ppReport1, ppReport1.GroupFooterBand[I],
      lstCirculation.Items[I], 0, ppShape1.Width - 0.8646001, 0, 0, [], True,
      taLeftJustified);

    CreateDBText(ppReport1, ppReport1.GroupFooterBand[I],
      'عنوان‏' + lstCirculation.Items[I], 0.02, ppShape1.Width - 0.8646001, 0,
      0, [], True, tarightJustified);

    CreateLine(ppReport1, ppReport1.GroupFooterBand[I], 0, 0, 0, 0.052099999,
      lpTop, 1, True);

    CreateLine(ppReport1, ppReport1.GroupFooterBand[I],
      ppReport1.GroupFooterBand[I].Height - 0.05, 0, 0, 0.052099999,
      lpBottom, 1, True);

    CreateLine(ppReport1, ppReport1.GroupFooterBand[I], 0, 0, 0.052099999, 0,
      lpLeft, 1, False, True);
    CreateLine(ppReport1, ppReport1.GroupFooterBand[I], 0,
      ppShape1.Width - 0.06, 0.052099999, 0, lpRight, 1, False, True);

    pptxtCode.DataField := lstCirculation.Items[lstCirculation.Count - 1];
    pptxtCaption.DataField := 'عنوان‏' + lstCirculation.Items
      [lstCirculation.Count - 1];
  end;

end;

// procedure TSpecialTrialBalanceF.initReportTrial;
// var
// I: SmallInt;
// aLeft: Single;
// aWidth: Single;
// afldName: string;
// endColumn: Boolean;
// firstColumn: Boolean;
// HasCaption: Boolean;
// txtAlign: TppTextAlignment;
// begin
// aLeft := ppShape1.Width - 43;
//
// for I := 0 to grdMaster.Columns.Count - 5 do
// begin
// if grdMaster.Columns[I].Visible then
// begin
// firstColumn := I = 3;
// endColumn := grdMaster.Columns.Count - 5 = I;
// afldName := grdMaster.Columns[I].FieldName;
// HasCaption := pos('عنوان', afldName) <> 0;
// aWidth := 40;
// txtAlign := taCentered;
// if HasCaption then
// begin
// aWidth := 100;
// txtAlign := tarightJustified;
// end;
// if not firstColumn then
// aLeft := (aLeft - aWidth - 1);
// if endColumn then
// begin
// aWidth := aLeft - ppLine2.Left + aWidth;
// aLeft := ppLine2.Left;
// end;
//
// CreateDBText(ppReport1, ppReport1.DetailBand,
// grdMaster.Columns[I].FieldName, 0, aLeft, aWidth, 0, [], False,
// txtAlign, []);
//
// CreateText(ppReport1, ppReport1.HeaderBand,
// grdMaster.Columns[I].DisplayName, 90, aLeft, aWidth, pplblplbl2.Height,
// [], False, taCentered, [fsBold]);
//
// CreateLine(ppReport1, ppReport1.HeaderBand, ppShape1.Top, aLeft, 1,
// ppShape1.Height, lpRight, 1, False);
//
// CreateLine(ppReport1, ppReport1.DetailBand, 0, aLeft, 1, ppShape1.Height,
// lpRight, 1, False, True);
//
// end;
// end;
// end;

procedure TSpecialTrialBalanceF.initReportTrial;
var
  I: SmallInt;
  aLeft: Single;
  aWidth: Single;
  afldName: string;
  endColumn: Boolean;
  firstColumn: Boolean;
  HasCaption: Boolean;
  IsMulti: Boolean;
  txtAlign: TppTextAlignment;
  aCaption: string;
  aborder: TppBorderPositions;
  atop: Single;
  aHeight: Single;
begin
  aLeft := ppShape1.Width - 43;
  for I := 0 to grdMaster.Columns.Count - 5 do
  begin
    if grdMaster.Columns[I].Visible then
    begin
      firstColumn := I = 3;
      endColumn := grdMaster.Columns.Count - 5 = I;
      afldName := grdMaster.Columns[I].FieldName;
      aCaption := grdMaster.Columns[I].DisplayName;
      aCaption := stringreplace(aCaption, 'مركزهزينه', 'م.ه ', [rfReplaceAll]);
      HasCaption := pos('عنوان', afldName) <> 0;
      IsMulti := lstCirculation.Count > 1;
      aWidth := 40;
      atop := ppShape1.Top;
      aHeight := ppShape1.Height;
      txtAlign := taCentered;
      aborder := [];
      if HasCaption then
      begin
        aWidth := 100;
        txtAlign := tarightJustified;
      end
      else if IsMulti then
      begin
        aborder := [bpTop];
        afldName := grdMaster.Columns[I + 1].FieldName;
        if pos('عنوان', afldName) = 0 then
        begin
          atop := ppShape1.Top + lblCaption.Height + 7;
          aHeight := (ppShape1.Height / 2) + 8;
        end;
      end;

      if not firstColumn then
        aLeft := (aLeft - aWidth - 1);
      if endColumn then
      begin
        aWidth := aLeft - ppLine2.Left + aWidth;
        aLeft := ppLine2.Left;
      end;

      CreateDBText(ppReport1, ppReport1.DetailBand,
        grdMaster.Columns[I].FieldName, 0, aLeft, aWidth, 0, [], False,
        txtAlign, []);

      CreateText(ppReport1, ppReport1.HeaderBand, aCaption, 90, aLeft, aWidth,
        pplblplbl2.Height, aborder, False, taCentered, [fsBold]);

      CreateLine(ppReport1, ppReport1.HeaderBand, atop, aLeft, 1, aHeight,
        lpRight, 1, False);

      CreateLine(ppReport1, ppReport1.DetailBand, 0, aLeft, 1, ppShape1.Height,
        lpRight, 1, False, True);

    end;
  end;
  if IsMulti then
  begin
    aWidth := lstCirculation.Count * 40;
    CreateText(ppReport1, ppReport1.HeaderBand, 'کد حساب', ppShape1.Top,
      ppShape1.Width - aWidth, aWidth, pplblplbl2.Height - 3, [], False,
      taCentered, [fsBold]).Transparent := True;
  end;

end;

procedure TSpecialTrialBalanceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if ((chkCaption.Checked) And (chkAccCode.Checked) And (chkTrial.Checked)) then
    InitReportFile(ppReport1, 'specialTrialBalance3', grdMaster, ppDBPipeline1)
  else
    InitReportFile(ppReport1, 'specialTrialBalance2', grdMaster, ppDBPipeline1)
end;

procedure TSpecialTrialBalanceF.pplblLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSpecialTrialBalanceF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSpecialTrialBalanceF.pplblLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSpecialTrialBalanceF.ppReport1BeforePrint(Sender: TObject);
var
  strFileName: string;
begin
  inherited;
  strFileName := ExtractFileNameWithoutExt(ppReport1.Template.FileName);
  if strFileName = 'specialTrialBalance3' then
    initReportTrial
  else
    initReport;
end;

procedure TSpecialTrialBalanceF.qryTrialBalanceAccCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if SetParam.AccCode <> emptystr then
    qryTrialBalance.fieldbyname('Acccode').AsString :=
      Leftstr(SetParam.AccCode, 5)
end;

procedure TSpecialTrialBalanceF.qryTrialBalanceAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryTrialBalance.Sort := 'AccCode';
  grdMaster.SetFooter4Sum([]);
  // grdMaster.setSizeColDBGrid(True);
end;

procedure TSpecialTrialBalanceF.mnu1Click(Sender: TObject);
begin
  inherited;
  treechartF.showChart(qryTrialBalance, Self);
end;

procedure TSpecialTrialBalanceF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSpecialTrialBalanceF.mnuN3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdMaster, 0);
end;

procedure TSpecialTrialBalanceF.mnuN4Click(Sender: TObject);
begin
  inherited;
  SetParam.Refresh;
end;

procedure TSpecialTrialBalanceF.N2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'specialTrialBalance', grdMaster, ppDBPipeline1)
end;

procedure TSpecialTrialBalanceF.N3Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'specialTrialBalance1', grdMaster, ppDBPipeline1)
end;

procedure TSpecialTrialBalanceF.N4Click(Sender: TObject);
begin
  inherited;
  if ((chkCaption.Checked) And (chkAccCode.Checked) And (chkTrial.Checked)) then
    InitReportFile(ppReport1, 'specialTrialBalance3_AllCurrencyLev', grdMaster,
      ppDBPipeline1)
  else
    InitReportFile(ppReport1, 'specialTrialBalance2_AllCurrencyLev', grdMaster,
      ppDBPipeline1)
end;

procedure TSpecialTrialBalanceF.N8Click(Sender: TObject);
begin
  inherited;
  if ((chkCaption.Checked) And (chkAccCode.Checked) And (chkTrial.Checked)) then
    InitReportFile(ppReport1, 'specialTrialBalance3_AllCurrency', grdMaster,
      ppDBPipeline1)
  else
    InitReportFile(ppReport1, 'specialTrialBalance2_AllCurrency', grdMaster,
      ppDBPipeline1)
end;

procedure TSpecialTrialBalanceF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if (Assigned(SetParam) and Assigned(SetParam.ParentParam)) then
    CanClose := get_response('آيا از خروج مطمئن هستيد؟') = mryes;
end;

// procedure TSpecialTrialBalanceF.SumSelected;
// var
// I: Byte;
// SumBed: Currency;
// SumBes: Currency;
// SumBalanceBed: Currency;
// SumBalanceBes: Currency;
// SumCurBed, SumCurBes, SumCurBalance: Currency;
// begin
// SumBed := 0;
// SumBes := 0;
// SumBalanceBed := 0;
// SumBalanceBes := 0;
// SumCurBed := 0;
// SumCurBes := 0;
// SumCurBalance := 0;
// if grdMaster.SelectedRows.Count > 1 then
// begin
// with grdMaster.DataSource.DataSet do
// for I := 0 to grdMaster.SelectedRows.Count - 1 do
// begin
// GotoBookmark(pointer(grdMaster.SelectedRows.Items[I]));
// SumBed := SumBed + fieldbyname('SumDebt').AsFloat;
// SumBes := SumBes + fieldbyname('SumCredit').AsFloat;
// SumBalanceBed := SumBalanceBed + fieldbyname('SumBalanceDebt').AsFloat;
// SumBalanceBes := SumBalanceBes +
// fieldbyname('SumBalanceCredit').AsFloat;
//
// if ActiveCurrency then
// begin
// SumCurBed := SumCurBed + fieldbyname('CurDebit').AsCurrency;
// SumCurBes := SumCurBes + fieldbyname('CurCredit').AsCurrency;
// SumCurBalance := SumCurBalance + fieldbyname('CurBalance').AsCurrency;
// end;
//
// end;
// end;
// end;

procedure TSpecialTrialBalanceF.try1Click(Sender: TObject);
begin
  inherited;
  if ((chkCaption.Checked) And (chkAccCode.Checked) And (chkTrial.Checked)) then
    InitReportFile(ppReport1, 'specialTrialBalance3_Currency', grdMaster,
      ppDBPipeline1)
  else
    InitReportFile(ppReport1, 'specialTrialBalance2_Currency', grdMaster,
      ppDBPipeline1)
end;

procedure TSpecialTrialBalanceF.grdMasterMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // if CtrlDown then
  // SumSelected;
end;

// procedure TSpecialTrialBalanceF.FreeSumSelected;
// begin
// end;

procedure TSpecialTrialBalanceF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TSpecialTrialBalanceF.ppLabel1GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := FilterStringCaption;
end;

procedure TSpecialTrialBalanceF.ppLabel2GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := AccCodeForPrint;
  // AccCodeForPrint := '';
  // for I := 0 to lstCirculation.Items.Count - 1 do
  // begin
  // AccCodeForPrint := Format('%s%s',
  // [IfThen(AccCodeForPrint = '', '', AccCodeForPrint + '-'),
  // stringreplace(lstCirculation.Items[I], 'مركزهزينه', 'م' + #254 + 'ه',
  // [rfReplaceAll])]);
  // end;

end;

procedure TSpecialTrialBalanceF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TSpecialTrialBalanceF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TSpecialTrialBalanceF.pplblPrvAccGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := prvAccCode + ' : ' + prvAccName;
end;

end.
