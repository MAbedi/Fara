unit CofferGeneralReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Buttons, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Mask, DBCtrls, Grids, Vcl.DBGrids, ComCtrls,
  ToolWin, CheckLst, DB, ADODB, StrUtils, SumDBGrid, math,
  Menus, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache,
  pptypes,
  ppVar, ppParameter, Tabs, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TCirculation = class;

  TCofferGeneralReportF = class(Ttemplate2MDIF)
    actDoTrial: TAction;
    qryTrialBalance: TADOQuery;
    srcTrialBalance: TDataSource;
    btnDoTrial: TBitBtn;
    pnl4: TPanel;
    btnSort: TBitBtn;
    actSort: TAction;
    btnSort1: TBitBtn;
    pnlAccOld: TPanel;
    lblOldAcc: TLabel;
    actExcel: TAction;
    btnDoTrial1: TBitBtn;
    popGrd: TPopupMenu;
    mnusadas1: TMenuItem;
    btnSearch_: TBitBtn;
    actFilter: TAction;
    actUndo: TAction;
    actAddTrial: TAction;
    actRemoveTrial: TAction;
    btnCirculationAcc: TButton;
    actCirculationAcc: TAction;
    btnPrint: TButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    popPrint: TPopupMenu;
    mnuN1: TMenuItem;
    mnuN2: TMenuItem;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    pplblplbl1: TppLabel;
    pplblplbl2: TppLabel;
    pplblBalanceBed: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    pplblplbl7: TppLabel;
    pplblplbl8: TppLabel;
    pplblBalancebes: TppLabel;
    pplblBes: TppLabel;
    pplblBed: TppLabel;
    pplblLblCompanyName: TppLabel;
    pplblLblPrintDate: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    pptxtCaption: TppDBText;
    pptxtCode: TppDBText;
    ppLine13: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    actOther: TAction;
    btnExcel: TBitBtn;
    popOthers: TPopupMenu;
    mnu1: TMenuItem;
    mnuN3: TMenuItem;
    mnuN4: TMenuItem;
    pnlRight: TPanel;
    pnlTop: TPanel;
    pnlCirculation: TPanel;
    btnUndo: TSpeedButton;
    tlbCirculation: TToolBar;
    qrySum: TADOQuery;
    srcSum: TDataSource;
    grdSum: TDBGrid;
    SCSplitter2: TSplitter;
    SCSplitter1: TSplitter;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    pnl3: TPanel;
    chkCaption: TCheckBox;
    chkAccCode: TCheckBox;
    pnlSelectCode: TPanel;
    lstSource: TListBox;
    chkTrial: TCheckBox;
    pnlTrial: TPanel;
    pnl6: TPanel;
    btnAddTrial: TSpeedButton;
    btnRemoveTrial: TSpeedButton;
    lstCirculation: TListBox;
    CategoryPanel2: TCategoryPanel;
    Panel1: TPanel;
    btnSelectAll: TSpeedButton;
    SpeedButton1: TSpeedButton;
    chklstFormType: TCheckListBox;
    grdMaster: TCedarDbgrid;
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
    procedure pplblLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure pplblLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure mnuN3Click(Sender: TObject);
    procedure mnuN4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure chkFieldListDblClick(Sender: TObject);
    procedure grdMasterColEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CategoryPanel1Expand(Sender: TObject);
    procedure actCirculationAccExecute(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chklstFormTypeDblClick(Sender: TObject);
    procedure grdMasterDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);

  Private
    aWhere: String;
    bWhere: String;
    FormType: Byte;
    SetParam: TCirculation;
    procedure initView;
    procedure EnabelButton(inx: Integer; btnState: Boolean);
    procedure AddButtons(ToolBar: TToolBar; const ButtonCaptions: String;
      actTag: Integer);
    Procedure FreeAllCirculationl;
    Procedure UpdateList;
    Procedure CreateLevel(Sender: TObject);
    Procedure initReport;
    procedure AddSum;
    procedure initFormType;
    { Private declarations }
  public
    { Public declarations }
  end;

  // كلاس فوق براي سطح ها تعريف شده است
  TCirculation = class(TObject)
  Private
    FBaseParam: String;
    FAddParam: string;
    FAccName: String;
    FAccCode: String;
    FParentParam: TCirculation;
    FSplitCode: Boolean;
    FSplitCaption: Boolean;
    FWhereSQL: string;
    FBootMark: TBookmark;
    FaItemsFields: String;
    FWhereBeforeYear: String;
  Private

    property BootMark: TBookmark read FBootMark write FBootMark;
    property WhereSQL: string read FWhereSQL write FWhereSQL;
    property BaseParam: String read FBaseParam write FBaseParam;
    property AddParam: string read FAddParam write FAddParam;
    property AccCode: String read FAccCode write FAccCode;
    property AccName: String read FAccName write FAccName;
    property SplitCode: Boolean read FSplitCode write FSplitCode;
    property SplitCaption: Boolean read FSplitCaption write FSplitCaption;
    property ParentParam: TCirculation read FParentParam write FParentParam;
    property AItemsFields: String read FaItemsFields write FaItemsFields;
    Property WhereBeforeYear: String read FWhereBeforeYear
      write FWhereBeforeYear;

  public
    constructor Create(BaseParam, AddParam, aWhere, AItemsFields: String;
      parent: TCirculation);
    procedure Refresh;
  end;

var
  CofferGeneralReportF: TCofferGeneralReportF;

implementation

uses
  GlobalPro, Dm, sort2, search2, FilterClass_ADO, filter_ADO, TreeChart,
  DBGrid2Print, FaraConsts, OfficesCoffer, Resource;

{$R *.dfm}
{ Ttemplate2MDIF1 }

procedure TCofferGeneralReportF.initView;
var
  I: Integer;
begin
  popGrd.Items.Clear;
  I := 0;
  with dmf.qryTmpTmp do
    try
      close;
      SQL.Text := 'SELECT ID, CaptionName FROM  Util.Analyze ';
      SQL.Add('WHERE (TableKind = 22) order by ID');
      open;
      while not eof do
      begin
        lstSource.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        AddButtons(tlbCirculation, Fields[1].AsString, Fields[0].AsInteger);
        popGrd.Items.Add(NewItem(Fields[1].AsString, 0, False, True,
          CreateLevel, 0, 'Itm' + Fields[0].AsString));
        popGrd.Items[I].Tag := Fields[0].AsInteger;
        if FormType = Fields[0].AsInteger then
        begin
          lstSource.ItemIndex := I;
          actAddTrial.Execute;
        end;
        inc(I);
        next;
      end;
    finally
      close;
    end;
end;

procedure TCofferGeneralReportF.FormCreate(Sender: TObject);

begin
  inherited;
  FormType := var_glb_gParam;
  initView;
  initFormType;
end;

procedure TCofferGeneralReportF.FormDestroy(Sender: TObject);

begin
  inherited;
  FreeAllCirculationl
end;

procedure TCofferGeneralReportF.actCirculationAccExecute(Sender: TObject);
begin
  inherited;
  OfficesCofferF.enter(qryTrialBalance.fieldbyname('AllColumn').AsString,
    qryTrialBalance.fieldbyname('AllCaption').AsString, SetParam.BaseParam,
    SetParam.WhereSQL, SetParam.WhereBeforeYear);

end;

procedure TCofferGeneralReportF.initFormType;
var
  sqltxt: String;
  I: Integer;
begin
  chklstFormType.Clear;
  sqltxt := 'SELECT FormType, FormCaption FROM FormTypes  ';
  with dmf.qryTmpTmp do
  begin
    close;
    SQL.Text := sqltxt;
    open;
    I := 0;
    while Not eof do
    begin
      chklstFormType.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      chklstFormType.Checked[I] := True;
      inc(I);
      next;
    end;
    close;
  end;
end;

procedure TCofferGeneralReportF.actDoTrialExecute(Sender: TObject);
var
  I, inx: Integer;
  SqlWhere: String;
  strSelected: String;
begin
  inherited;
  FreeAllCirculationl;
  SqlWhere := aWhere;

  SetParam := TCirculation.Create('', '', '', '', nil);
  with SetParam do
  begin
    For I := 0 to lstCirculation.Count - 1 do
    begin
      inx := Integer(lstCirculation.Items.Objects[I]);
      BaseParam := BaseParam + inttostr(inx) + ',';
    end;

    For I := 0 to chklstFormType.Count - 1 do
    begin
      if chklstFormType.Checked[I] then
      begin
        inx := Integer(chklstFormType.Items.Objects[I]);
        strSelected := strSelected + inttostr(inx) + ',';
      end;
    end;
    strSelected := Leftstr(strSelected, length(strSelected) - 1);
    if Trim(strSelected) = EmptyStr then
      strSelected := '0';
    Add2Filter(SqlWhere, Format('Forms.FormType In ( %S )', [strSelected]));

    // Remove Last Char

    BaseParam := Leftstr(BaseParam, length(BaseParam) - 1);

    AItemsFields := Leftstr(AItemsFields, length(AItemsFields) - 1);

    SplitCode := chkAccCode.Checked;
    SplitCaption := chkCaption.Checked;
    WhereSQL := SqlWhere;
    WhereBeforeYear := bWhere;

    pnlCirculation.Visible := False;
    pnlAccOld.Visible := False;

    if BaseParam <> EmptyStr then
      Refresh;

    if qryTrialBalance.FindField('AllColumn') <> nil then
      AccCode := qryTrialBalance.fieldbyname('AllColumn').AsString;
    if qryTrialBalance.FindField('AllCaption') <> nil then
      AccName := qryTrialBalance.fieldbyname('AllCaption').AsString;
  end;
  // if (qryTrialBalance.Active) and (qryTrialBalance.RecordCount > 0) then
  AddSum;
end;

procedure TCofferGeneralReportF.AddSum;
var
  I: Integer;
begin
  With qrySum do
  begin
    close;
    open;
    for I := 1 to Fields.Count - 1 do
    begin
      if (qryTrialBalance.FindField(Fields[I].FieldName) <> nil) and
        (qryTrialBalance.fieldbyname(Fields[I].FieldName) is TBCDField) then
        TBCDField(Fields[I]).currency := True;
    end;
  end;
  SetColSize(grdSum, 1);
end;

procedure TCofferGeneralReportF.btnSelectAllClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to chklstFormType.Count - 1 do
    chklstFormType.Checked[I] := True;
end;

procedure TCofferGeneralReportF.AddButtons;
var
  btn: TToolButton;

begin
  btn := TToolButton.Create(ToolBar);
  with btn do
  begin
    onclick := CreateLevel;
    parent := ToolBar;
    Caption := ButtonCaptions;
    Tag := actTag;
    if (ButtonCaptions = '|') then
      Style := tbsSeparator
    else
      Style := tbsButton;
  end;
end;

procedure TCofferGeneralReportF.EnabelButton;
var
  I: Integer;
begin
  for I := 0 to tlbCirculation.ButtonCount - 1 do
  begin
    if tlbCirculation.Buttons[I].Tag = inx then
      tlbCirculation.Buttons[I].Enabled := btnState;
    if (popGrd.Items.Count > I) and
      (popGrd.Items[I].Name = 'Itm' + inttostr(inx)) then
      popGrd.Items[I].Enabled := btnState;
  end;
end;

procedure TCofferGeneralReportF.FreeAllCirculationl;
var
  tmp: TCirculation;
begin
  // Free All Object Create
  while (SetParam <> nil) do
  begin
    tmp := SetParam.ParentParam;
    SetParam.Free;
    SetParam := tmp
  end;
end;

{ TCirculation }

constructor TCirculation.Create;
begin
  FBaseParam := BaseParam;
  FAddParam := AddParam;
  FParentParam := parent;
  FWhereSQL := WhereSQL;
  FaItemsFields := AItemsFields;
end;

procedure TCirculation.Refresh;
var
  I: Integer;
  FinalParam: String;
  DLable: String;
begin
  if AddParam = EmptyStr then
    FinalParam := FBaseParam
  else
    FinalParam := stringreplace(FBaseParam, ',' + AddParam, '', [rfReplaceAll]);

  with CofferGeneralReportF do
    with qryTrialBalance do
    begin
      close;
      Parameters.ParamByName('BaseParam').Value := FinalParam;
      Parameters.ParamByName('AddParam').Value := AddParam;
      Parameters.ParamByName('Filter').Value := AccCode;
      Parameters.ParamByName('SliceCodeFlag').Value := SplitCode;
      Parameters.ParamByName('SliceCaptionFlag').Value := SplitCaption;
      Parameters.ParamByName('SqlWhere').Value := WhereSQL;
      open;
      Sort := 'AllColumn';
      lblOldAcc.Caption := AccCode + ' - ' + AccName;

      grdMaster.Columns.Clear;

      with grdMaster do
        For I := 0 to Columns.Count - 1 do
        begin
          DLable := LowerCase(Columns[I].Field.DisplayLabel);
          DLable := stringreplace(DLable, 'amount', 'مبلغ', []);
          Columns[I].Field.DisplayLabel := DLable;

          if Columns[I].ReadOnly then
            Columns[I].Color := const_fixed_columns_color
          else
            Columns[I].Color := const_normal_columns_color;

          if (Columns[I].Field is TStringField) then
            Columns[I].Width := 70;
          Columns[I].Field.Tag := 3;
          if upperCase(Columns[I].FieldName) = 'ALLCOLUMN' then
          begin
            Columns[I].Visible := not SplitCode;
            Columns[I].Width := 80;
            Columns[I].Field.DisplayLabel := 'كد';
          end
          else if upperCase(Columns[I].FieldName) = 'ALLCAPTION' then
          begin
            Columns[I].Visible := not SplitCaption;
            Columns[I].Width := 200;
            Columns[I].Title.Caption := 'عنوان';
          end;

          if Columns[I].Field is TStringField then
            if (pos('date', LowerCase(Columns[I].Field.FieldName)) <> 0) or
              (pos('تاريخ', LowerCase(Columns[I].Field.FieldName)) <> 0) then
              Columns[I].Color := const_Date_columns_color;

          if (Columns[I].Field is TBCDField) or
            (Columns[I].Field is TCurrencyField) then
          begin
            Columns[I].Width := 80;
            TBCDField(Columns[I].Field).currency := True;
            Columns[I].Color := const_Currency_columns_color;
          end;
          // next;
        end;
      // fc := TColumnTitle.Create(grdMaster.Columns[0]);
      // grdMaster.setSizeColDBGrid(True);
      grdMaster.DoLoad('');

    end
end;

procedure TCofferGeneralReportF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTrialBalance);
end;

procedure TCofferGeneralReportF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.showSearch(qryTrialBalance);
end;

procedure TCofferGeneralReportF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdMaster)
end;

procedure TCofferGeneralReportF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try

      AddItem(dmf.adcAccounting, 'CTopicCode3', 'كد و نام تفصیلی 4',
        'كدمركزهزينه3', ftInteger, dvMinMax, '', '', ciLookup,
        strLookUpCTopicCode3, strMaxMinCTopicCode3);

      AddItem(dmf.adcAccounting, 'CTopicCode2', 'كد و نام تفصیلی 3',
        'كدمركزهزينه2', ftInteger, dvMinMax, '', '', ciLookup,
        strLookUpCTopicCode2, strMaxMinCTopicCode2);

      AddItem(dmf.adcAccounting, 'CTopicCode', 'كد و نام تفصیلی 1', 'تفصیلی 1',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CTopicsForUse ',
        'SELECT 0  , 999999999  ');
      AddItem(dmf.adcAccounting, 'DetailCode', 'كد و نام تفصيلي', 'كد تفصيلي',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(dmf.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT ACC.Categories.TopicCode, ACC.Categories.MoeenName_L1 FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT 0, 99999999999999 ');

      AddItem(dmf.adcBSell, 'CustomerID2', ' مشتري ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, ' SELECT CustID , CustName FROM Customers ',
        ' SELECT Min(CustID),Max(CustID) From Customers');

      AddItem(dmf.adcBSell, 'CustomerID1', ' دريافت كننده ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup, 'SELECT CustID , CustName FROM Customers ',
        'SELECT Min(CustID),Max(CustID) From Customers');

      AddItem(dmf.adcBSell, 'FormDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select Min(FormDate),Max(FormDate) FROM Forms ');

      AddItem(dmf.adcBSell, 'FormNumber', ' فرم ', 'شماره', ftInteger, dvMinMax,
        '', '', ciSimple, '', 'SELECT 0,2147483647');

      AddItem(dmf.adcBSell, 'Year', 'محدود سال مالي', 'سال مالي', ftInteger,
        dvMinMax, inttostr(APPBank.Year), inttostr(APPBank.Year), ciSimple, '',
        'Select Min(YearID),Max(YearID) FROM Forms ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TCofferGeneralReportF.UpdateList;
Var
  CustomerID1From, CustomerID1To: String;
  CustomerID2From, CustomerID2To: String;
  FormNumberFrom, FormNumberTo: String;
  FormDateFrom, FormDateTo: String;
  YearFrom, YearTo: String;

  CTFrom, CTTo: String;
  CT2From, CT2To: String;
  CT3From, CT3To: String;
  DetailFrom, DetailTo: String;
  AccCodeFrom, AccCodeTo: String;

begin
  aWhere := EmptyStr;
  bWhere := EmptyStr;

  CustomerID1From := GetcFrom(myParams.ParamValues['CustomerID1'], ftInteger);
  CustomerID1To := GetcTo(myParams.ParamValues['CustomerID1'], ftInteger);
  Add2Filter(aWhere, Format('Forms.CustomerID1 Between %s And %s',
    [CustomerID1From, CustomerID1To]));

  CustomerID2From := GetcFrom(myParams.ParamValues['CustomerID2'], ftInteger);
  CustomerID2To := GetcTo(myParams.ParamValues['CustomerID2'], ftInteger);
  Add2Filter(aWhere, Format('Forms.CustomerID2 Between %s And %s',
    [CustomerID2From, CustomerID2To]));

  FormDateFrom := GetcFrom(myParams.ParamValues['FormDate'], ftDate);
  FormDateTo := GetcTo(myParams.ParamValues['FormDate'], ftDate);
  Add2Filter(aWhere, Format('Forms.FormDate Between %S And %S',
    [QuotedStr(FormDateFrom), QuotedStr(FormDateTo)]));

  YearFrom := GetcFrom(myParams.ParamValues['Year'], ftInteger);
  YearTo := GetcTo(myParams.ParamValues['Year'], ftInteger);
  Add2Filter(aWhere, Format('Forms.YearID Between %S And %S',
    [YearFrom, YearTo]));

  FormNumberFrom := GetcFrom(myParams.ParamValues['FormNumber'], ftInteger);
  FormNumberTo := GetcTo(myParams.ParamValues['FormNumber'], ftInteger);
  Add2Filter(aWhere, Format('Forms.FormNumber Between %s And %s',
    [FormNumberFrom, FormNumberTo]));

  AccCodeFrom := GetcFrom(myParams.ParamValues['AccCode'], ftInteger);
  AccCodeTo := GetcTo(myParams.ParamValues['AccCode'], ftInteger);

  CTFrom := GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
  CTTo := GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);

  CT2From := GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
  CT2To := GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);

  CT3From := GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
  CT3To := GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);

  DetailFrom := GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
  DetailTo := GetcTo(myParams.ParamValues['DetailCode'], ftInteger);

  Add2Filter(aWhere, Format('ISNULL(FormItems.TopicCode,0)  Between %S And %S',
    [AccCodeFrom, AccCodeTo]));
  Add2Filter(aWhere, Format('ISNULL(FormItems.DetailCode,0) Between %S And %S',
    [DetailFrom, DetailTo]));
  Add2Filter(aWhere, Format('ISNULL(FormItems.CTopicCode,0) Between %S And %S',
    [CTFrom, CTTo]));
  Add2Filter(aWhere, Format('ISNULL(FormItems.CTopicCode2,0) Between %S And %S',
    [CT2From, CT2To]));
  Add2Filter(aWhere, Format('ISNULL(FormItems.ctopiccode3,0) Between %S And %S',
    [CT3From, CT3To]));

  if Assigned(SetParam) then
  begin
    SetParam.WhereSQL := aWhere;
    SetParam.WhereBeforeYear := bWhere;
    SetParam.Refresh
  end
  else
    actDoTrial.Execute;
end;

procedure TCofferGeneralReportF.actUndoExecute(Sender: TObject);
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
      pnlCirculation.Visible := tmp.ParentParam <> nil;
      pnlAccOld.Visible := pnlCirculation.Visible;
      EnabelButton(StrToInt(SetParam.AddParam), True);
      tmp.Refresh;
      qryTrialBalance.GotoBookmark(SetParam.BootMark);
      SetParam.Free;
      SetParam := tmp;
    end
    else
      SetParam := SetParam;
  AddSum;
end;

procedure TCofferGeneralReportF.grdMasterDblClick(Sender: TObject);
begin
  inherited;
  popGrd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TCofferGeneralReportF.grdMasterDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  I, mySize, ColCount: Integer;
begin
  inherited;
  mySize := 0;
  ColCount := 0;

  mySize := mySize + grdMaster.Columns[ColCount + 0].Width + grdMaster.Columns
    [ColCount + 1].Width;
  grdSum.Columns[0].Width := mySize;
  for I := 1 to grdSum.Columns.Count - 1 do
  begin
    if grdSum.Columns[I].FieldName = Column.FieldName then
      grdSum.Columns[I].Width := Column.Width;
  end;
end;

procedure TCofferGeneralReportF.actAddTrialExecute(Sender: TObject);
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

procedure TCofferGeneralReportF.actRemoveTrialExecute(Sender: TObject);
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

procedure TCofferGeneralReportF.lstCirculationDblClick(Sender: TObject);
begin
  inherited;
  actRemoveTrial.Execute;
end;

procedure TCofferGeneralReportF.lstSourceDblClick(Sender: TObject);
begin
  inherited;
  if chkTrial.Checked then
    actAddTrial.Execute;
end;

procedure TCofferGeneralReportF.lstSourceClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if chkTrial.Checked then
    exit;
  tlbCirculation.Enabled := True;
  For I := 0 to tlbCirculation.ControlCount - 1 do
  begin
    tlbCirculation.Buttons[I].Enabled := True;
    popGrd.Items[I].Enabled := True;
  end;
  lstCirculation.Clear;
  actAddTrial.Execute;
  actDoTrial.Execute;
end;

procedure TCofferGeneralReportF.chkTrialClick(Sender: TObject);
begin
  inherited;
  pnlTrial.Visible := chkTrial.Checked;
end;

procedure TCofferGeneralReportF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('FormDate') = nil then
    close;
end;

procedure TCofferGeneralReportF.CreateLevel;
var
  aParam: TCirculation;
begin
  inherited;
  if not Assigned(SetParam) then
    exit;

  pnlCirculation.Visible := True;
  pnlAccOld.Visible := True;

  aParam := TCirculation.Create(SetParam.BaseParam + ',' +
    inttostr(TToolButton(Sender).Tag), inttostr(TToolButton(Sender).Tag),
    SetParam.WhereSQL, SetParam.AItemsFields, SetParam);

  with aParam do
    try
      qryTrialBalance.DisableControls;
      SplitCaption := chkCaption.Checked;
      SplitCode := chkAccCode.Checked;
      if qryTrialBalance.FindField('AllColumn') <> nil then
        AccCode := qryTrialBalance.fieldbyname('AllColumn').AsString;
      if qryTrialBalance.FindField('AllCaption') <> nil then
        AccName := qryTrialBalance.fieldbyname('AllCaption').AsString;
      BootMark := qryTrialBalance.GetBookmark;
      EnabelButton(TToolButton(Sender).Tag, False);
      Refresh;
      SetParam := aParam;

      WhereSQL := SetParam.WhereSQL;
      WhereBeforeYear := SetParam.WhereBeforeYear;

    Finally
      qryTrialBalance.EnableControls;
      AddSum;
    end;

end;

procedure TCofferGeneralReportF.initReport;
begin

end;

procedure TCofferGeneralReportF.pplblLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCofferGeneralReportF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TCofferGeneralReportF.SpeedButton1Click(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to chklstFormType.Count - 1 do
    chklstFormType.Checked[I] := not chklstFormType.Checked[I];
end;

procedure TCofferGeneralReportF.pplblLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCofferGeneralReportF.ppReport1BeforePrint(Sender: TObject);
begin
  inherited;
  initReport;
end;

procedure TCofferGeneralReportF.mnu1Click(Sender: TObject);
begin
  inherited;
  treechartF.showChart(qryTrialBalance, Self)
end;

procedure TCofferGeneralReportF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y)
end;

procedure TCofferGeneralReportF.mnuN3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdMaster, 0)
end;

procedure TCofferGeneralReportF.mnuN4Click(Sender: TObject);
begin
  inherited;
  SetParam.Refresh;
end;

procedure TCofferGeneralReportF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if myParams.FindParam('FormDate') <> nil then
    if Assigned(SetParam.ParentParam) then
      CanClose := get_response('آيا از خروج مطمئن هستيد؟') = mryes;
end;

procedure TCofferGeneralReportF.CategoryPanel1Expand(Sender: TObject);
begin
  inherited;
  with (Sender as TCategoryPanel) do
  begin
    OnExpand := nil;
    CategoryPanelGroup1.CollapseAll;
    Expand;
    Height := CategoryPanelGroup1.Height -
      ((CategoryPanelGroup1.HeaderHeight) * 3);
    OnExpand := CategoryPanel1Expand;
  end;

end;

procedure TCofferGeneralReportF.chkFieldListDblClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to (Sender as TCheckListBox).Items.Count - 1 do
    (Sender as TCheckListBox).Checked[I] := not(Sender as TCheckListBox)
      .Checked[I];
end;

procedure TCofferGeneralReportF.chklstFormTypeDblClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to (Sender as TCheckListBox).Items.Count - 1 do
    (Sender as TCheckListBox).Checked[I] := not(Sender as TCheckListBox)
      .Checked[I];
end;

procedure TCofferGeneralReportF.grdMasterColEnter(Sender: TObject);
var
  FName: String;
  I: Integer;
begin
  inherited;
  grdSum.SelectedIndex := -2;
  FName := grdMaster.Columns[grdMaster.SelectedIndex].FieldName;
  for I := 0 to grdSum.Columns.Count - 1 do
    if grdSum.Columns[I].FieldName = FName then
    begin
      grdSum.SelectedIndex := I;
      Break;
    end
end;

procedure TCofferGeneralReportF.FormResize(Sender: TObject);
begin
  inherited;
  pnlTop.Height := (tlbCirculation.ButtonHeight + 2) * tlbCirculation.RowCount;
//  grdMaster.setSizeColDBGrid(True);

end;

end.
