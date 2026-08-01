unit tshGeneralReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Buttons, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, DBCtrls, Grids, Vcl.DBGrids, ComCtrls,
  ToolWin, CheckLst, DB, ADODB, StrUtils, math,
  Menus, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl,
  ppCtrls, ppBands, ppCache,
  pptypes,
  ppVar, ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TCirculation = class;

  TtshGeneralReportF = class(Ttemplate2MDIF)
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
  tshGeneralReportF: TtshGeneralReportF;

implementation

uses
  GlobalPro, Dm, sort2, search2, FilterClass_ADO, filter_ADO,
  TreeChart, DBGrid2Print, Offices, FaraConsts;

{$R *.dfm}
{ Ttemplate2MDIF1 }

procedure TtshGeneralReportF.initView;
var
  I: Integer;
begin

  popGrd.Items.Clear;
  I := 0;
  with dmf.qryTmpTmp do
    try
      close;
      SQL.Text := 'SELECT ID, CaptionName FROM  Util.Analyze ';
      SQL.Add('WHERE (TableKind = 21) order by ID');
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

procedure TtshGeneralReportF.FormCreate(Sender: TObject);

begin
  inherited;
  FormType := var_glb_gParam;
  initView;
end;

procedure TtshGeneralReportF.FormDestroy(Sender: TObject);

begin
  inherited;
  FreeAllCirculationl
end;

procedure TtshGeneralReportF.actCirculationAccExecute(Sender: TObject);
begin
  inherited;
  officesF.enter(qryTrialBalance.fieldbyname('AllColumn').AsString,
    qryTrialBalance.fieldbyname('AllCaption').AsString, SetParam.BaseParam,
    SetParam.WhereSQL, SetParam.WhereBeforeYear);

end;

procedure TtshGeneralReportF.actDoTrialExecute(Sender: TObject);
var
  I, inx: Integer;
  SqlWhere: String;
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


    // Remove Last Char

    BaseParam := Leftstr(BaseParam, length(BaseParam) - 1);

    AItemsFields := Leftstr(AItemsFields, length(AItemsFields) - 1);

    SplitCode := chkAccCode.Checked;
    SplitCaption := chkCaption.Checked;
    WhereSQL := SqlWhere;
    WhereBeforeYear := bWhere;

    pnlCirculation.Visible := False;
    pnlAccOld.Visible := False;

    if BaseParam <> emptystr then
      Refresh;

    if qryTrialBalance.FindField('AllColumn') <> nil then
      AccCode := qryTrialBalance.fieldbyname('AllColumn').AsString;
    if qryTrialBalance.FindField('AllCaption') <> nil then
      AccName := qryTrialBalance.fieldbyname('AllCaption').AsString;
  end;
  if qryTrialBalance.Active then
    AddSum;
end;

procedure TtshGeneralReportF.AddSum;
var
  I: Integer;
begin
  With qrySum do
  begin
    close;
    open;
    for I := 1 to Fields.Count - 1 do
    begin
      if qryTrialBalance.fieldbyname(Fields[I].FieldName) is TBCDField then
        TBCDField(Fields[I]).currency := True;
    end;
  end;
  SetColSize(grdSum, 1);
end;

procedure TtshGeneralReportF.AddButtons;
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

procedure TtshGeneralReportF.EnabelButton;
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

procedure TtshGeneralReportF.FreeAllCirculationl;
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
  if AddParam = emptystr then
    FinalParam := FBaseParam
  else
    FinalParam := stringreplace(FBaseParam, ',' + AddParam, '', [rfReplaceAll]);

  with tshGeneralReportF do
    with qryTrialBalance do
    begin
      close;
      Parameters.ParamByName('BaseParam').Value := FinalParam;
      Parameters.ParamByName('MargeCode').Value := SplitCode;
      Parameters.ParamByName('MargeCaption').Value := SplitCaption;
      Parameters.ParamByName('FilterParam').Value := AccCode;
      Parameters.ParamByName('AddParam').Value := AddParam;
      Parameters.ParamByName('awhere').Value := WhereSQL;
      open;
      Sort := 'AllColumn';
      lblOldAcc.Caption := AccCode + ' - ' + AccName;

      grdMaster.Columns.Clear;

      with grdMaster do
        For I := 0 to Columns.Count - 1 do
        begin
          DLable := LowerCase(Columns[I].Field.DisplayLabel);
          DLable := stringreplace(DLable, 'amount', 'مقدار', []);
          DLable := stringreplace(DLable, 'function', 'كاركرد', []);
          DLable := stringreplace(DLable, 'sum', ' جمع ', []);
          DLable := stringreplace(DLable, 'hour', ' ساعت ', []);
          DLable := stringreplace(DLable, 'overtime', ' اضافه كاري ', []);
          DLable := stringreplace(DLable, 'shiftwork0', ' نوبت كاري الف ', []);
          DLable := stringreplace(DLable, 'shiftwork1', ' نوبت كاري ب ', []);
          DLable := stringreplace(DLable, 'shiftwork2', ' نوبت كاري ج ', []);
          DLable := stringreplace(DLable, 'shiftwork3', ' نوبت كاري د ', []);
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
            Columns[I].Color :=const_Currency_columns_color;
          end;
          // next;
        end;
      // fc := TColumnTitle.Create(grdMaster.Columns[0]);

    end;
    tshGeneralReportF.grdMaster.DoLoad('');
end;

procedure TtshGeneralReportF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTrialBalance);
end;

procedure TtshGeneralReportF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.showSearch(qryTrialBalance);
end;

procedure TtshGeneralReportF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdMaster)
end;

procedure TtshGeneralReportF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      if SubsysMenu[07].Active then
      begin
        AddItem(dmf.adcBSell, 'Gate', 'پارت', 'كد', ftInteger, dvMinMax, '', '',
          ciSimple, '', 'Select  min(Gate),max(Gate) From Tsh.Functions');

        AddItem(dmf.adcBSell, 'EarthField', 'مزرعه', 'كد', ftString, dvMinMax,
          '', '', ciSimple, '',
          'SELECT  min(EarthField),max(EarthField) From Tsh.Functions');
      end;

      AddItem(dmf.adcBSell, 'StuffCode3', ' ادوات ', 'كد', ftLargeint, dvMinMax,
        '', '', ciLookup, SQLAdavat9,
        'SELECT min(StuffCode3),max(StuffCode3) From Tsh.Functions');

      AddItem(dmf.adcBSell, 'StuffCode2', ' عملیات ', 'كد', ftLargeint,
        dvMinMax, '', '', ciLookup, SQLAmaliyat4_6_7,
        'SELECT min(StuffCode2),max(StuffCode2) From Tsh.Functions');

      AddItem(dmf.adcBSell, 'CaseID', ' پرونده ', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, SQLCase15,
        'SELECT min(CaseID),max(CaseID) From Tsh.Functions');

      AddItem(dmf.adcBSell, 'MachineId', ' خودرو ', 'كد', ftLargeint, dvMinMax,
        '', '', ciLookup, SQLMachine9,
        'SELECT min(MachineId),max(MachineId) From Tsh.Functions');

      AddItem(dmf.adcBSell, 'StuffId', ' محصول ', 'كد', ftLargeint, dvMinMax,
        '', '', ciLookup, SQLMahsol3,
        'SELECT min(StuffId),max(StuffId) From Tsh.Functions');

      AddItem(dmf.adcBSell, 'Productionprocess', ' فرآيند ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup, SQLProductionprocess18,
        'SELECT min(Productionprocess),max(Productionprocess)From Tsh.Functions');

      AddItem(dmf.adcBSell, 'PersonID', ' پرسنل ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, SQLPerson,
        'SELECT  min(PersonID),max(PersonID) From Tsh.Functions');

      AddItem(dmf.adcBSell, 'WorkShopId', ' واحد سازماني ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        ' SELECT Customers.CustID,Customers.CustName From Customers INNER JOIN '
        + ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + ' WHERE (CustomersGroup.GroupType in(5,16))  ' + IfThen(True, '',
        ' AND dbo.ChkUser(Customers.OperatorID,' + inttostr(User.id) + ')=1'),

        'SELECT Min(Customers.CustID),Max(Customers.CustID) From Customers INNER JOIN '
        + ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + ' WHERE (CustomersGroup.GroupType in(5,16))  ' + IfThen(True, '',
        ' AND dbo.ChkUser(Customers.OperatorID,' + inttostr(User.id) + ')=1'));

      AddItem(dmf.adcBSell, 'FunctionDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'SELECT  min(FunctionDate),max(FunctionDate) From Tsh.Functions');

      // AddItem(dmf.adcBSell, 'FunctionType', ' نوع كاركرد ', 'كد', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT FunctionTypeId, FunctionTypeName FROM Tsh.FunctionType',
      // 'SELECT  min(FunctionType),max(FunctionType) from Tsh.Functions');
      //
      // AddItem(dmf.adcBSell, 'Year', 'محدود سال مالي', 'سال مالي',
      // ftInteger, dvMinMax, '', '',
      // ciSimple, '', 'SELECT MIN(SUBSTRING(FunctionDate, 1, 2)), ' +
      // 'MAX(SUBSTRING(FunctionDate, 1, 2))   FROM Tsh.Functions ');

      // AddItem(dmf.adcBSell, 'Month', '', 'ماهها', ftInteger, dvDefaults,
      // inttostr(var_glb_CurrentMonth), '', ciCombo,
      // 'SELECT MonthId, MonthName FROM Tsh.Months', '');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TtshGeneralReportF.UpdateList;
Var
  WorkShopIdFrom, WorkShopIdTo: String;
  PersonIDFrom, PersonIDTo: String;
  ProductionprocessFrom, ProductionprocessTo: String;
  StuffIdFrom, StuffIdTo: String;
  MachineIdFrom, MachineIdTo: String;
  EarthFieldFrom, EarthFieldTo: String;
  GateFrom, GateTo: String;
  StuffCode2From, StuffCode2To: String;
  CaseIDFrom, CaseIDTo: String;
  StuffCode3From, StuffCode3To: String;
  // FunctionTypeFrom, FunctionTypeTo: String;
  // YearFrom, YearTo: String;
  // MonthFrom, MonthTo: String;
  FunctionDateFrom, FunctionDateTo: String;
begin
  aWhere := emptystr;
  bWhere := emptystr;

  WorkShopIdFrom := GetcFrom(myParams.ParamValues['WorkShopId'], ftInteger);
  WorkShopIdTo := GetcTo(myParams.ParamValues['WorkShopId'], ftInteger);

  PersonIDFrom := GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
  PersonIDTo := GetcTo(myParams.ParamValues['PersonID'], ftInteger);

  ProductionprocessFrom := GetcFrom(myParams.ParamValues['Productionprocess'],
    ftInteger);
  ProductionprocessTo := GetcTo(myParams.ParamValues['Productionprocess'],
    ftInteger);

  StuffIdFrom := GetcFrom(myParams.ParamValues['StuffId'], ftLargeint);
  StuffIdTo := GetcTo(myParams.ParamValues['StuffId'], ftLargeint);

  MachineIdFrom := GetcFrom(myParams.ParamValues['MachineId'], ftLargeint);
  MachineIdTo := GetcTo(myParams.ParamValues['MachineId'], ftLargeint);

  if SubsysMenu[07].Active then
  begin
    EarthFieldFrom := GetcFrom(myParams.ParamValues['EarthField'], ftString);
    EarthFieldTo := GetcTo(myParams.ParamValues['EarthField'], ftString);

    GateFrom := GetcFrom(myParams.ParamValues['Gate'], ftInteger);
    GateTo := GetcTo(myParams.ParamValues['Gate'], ftInteger);
  end;

  StuffCode2From := GetcFrom(myParams.ParamValues['StuffCode2'], ftLargeint);
  StuffCode2To := GetcTo(myParams.ParamValues['StuffCode2'], ftLargeint);

  CaseIDFrom := GetcFrom(myParams.ParamValues['CaseID'], ftInteger);
  CaseIDTo := GetcTo(myParams.ParamValues['CaseID'], ftInteger);

  StuffCode3From := GetcFrom(myParams.ParamValues['StuffCode3'], ftLargeint);
  StuffCode3To := GetcTo(myParams.ParamValues['StuffCode3'], ftLargeint);

  // FunctionTypeFrom := GetcFrom(myParams.ParamValues['FunctionType'], ftInteger);
  // FunctionTypeTo := GetcTo(myParams.ParamValues['FunctionType'], ftInteger);

  // YearFrom := GetcFrom(myParams.ParamValues['Year'], ftInteger);
  // YearTo := GetcTo(myParams.ParamValues['Year'], ftInteger);

  // MonthFrom := GetcFrom(myParams.ParamValues['Month'], ftInteger);
  // MonthTo := GetcTo(myParams.ParamValues['Month'], ftInteger);

  FunctionDateFrom := GetcFrom(myParams.ParamValues['FunctionDate'], ftDate);
  FunctionDateTo := GetcTo(myParams.ParamValues['FunctionDate'], ftDate);

  Add2Filter(aWhere, Format('(ISNULL(Func.WorkShopId, 0) Between %S And %S)',
    [WorkShopIdFrom, WorkShopIdTo]));

  Add2Filter(aWhere, Format('ISNULL(Func.PersonID, 0) Between %S And %S',
    [PersonIDFrom, PersonIDTo]));

  Add2Filter(aWhere,
    Format('ISNULL(Func.Productionprocess, 0) Between %S And %S',
    [ProductionprocessFrom, ProductionprocessTo]));

  Add2Filter(aWhere, Format('ISNULL(Func.StuffId, 0) Between %S And %S',
    [StuffIdFrom, StuffIdTo]));

  Add2Filter(aWhere, Format('ISNULL(Func.MachineId, 0) Between %S And %S',
    [MachineIdFrom, MachineIdTo]));

  if SubsysMenu[07].Active then
  begin
    Add2Filter(aWhere, Format('ISNULL(Func.EarthField, 0) Between %S And %S',
      [QuotedStr(EarthFieldFrom), QuotedStr(EarthFieldTo)]));

    Add2Filter(aWhere, Format('ISNULL(Func.Gate, 0) Between %S And %S',
      [GateFrom, GateTo]));
  end;

  Add2Filter(aWhere, Format('ISNULL(Func.StuffCode2, 0) Between %S And %S',
    [StuffCode2From, StuffCode2To]));

  Add2Filter(aWhere, Format('ISNULL(Func.CaseID, 0) Between %S And %S',
    [CaseIDFrom, CaseIDTo]));

  Add2Filter(aWhere, Format('ISNULL(Func.StuffCode3, 0) Between %S And %S',
    [StuffCode3From, StuffCode3To]));

  // Add2Filter(aWhere, Format('ISNULL(Func.FunctionType, 0) Between %S And %S',
  // [FunctionTypeFrom, FunctionTypeTo]));
  //
  // Add2Filter(aWhere,
  // Format('SUBSTRING(Func.FunctionDate, 1, 2) Between %S And %S',
  // [YearFrom, YearTo]));

  // Add2Filter(aWhere,
  // Format('SUBSTRING(Func.FunctionDate, 6, 2) Between %S And %S',
  // [MonthFrom, MonthTo]));

  Add2Filter(aWhere, Format('Func.FunctionDate Between %S And %S',
    [QuotedStr(FunctionDateFrom), QuotedStr(FunctionDateTo)]));

  Add2Filter(aWhere, Format('dbo.ChkUser(CustomersWorkShop.OperatorID ,%d )=1',
    [User.id]));

  if Assigned(SetParam) then
  begin
    SetParam.WhereSQL := aWhere;
    SetParam.WhereBeforeYear := bWhere;
    SetParam.Refresh
  end
  else
    actDoTrial.Execute;
end;

procedure TtshGeneralReportF.actUndoExecute(Sender: TObject);
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

procedure TtshGeneralReportF.grdMasterDblClick(Sender: TObject);
begin
  inherited;
  popGrd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TtshGeneralReportF.grdMasterDrawColumnCell(Sender: TObject;
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

procedure TtshGeneralReportF.actAddTrialExecute(Sender: TObject);
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

procedure TtshGeneralReportF.actRemoveTrialExecute(Sender: TObject);
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

procedure TtshGeneralReportF.lstCirculationDblClick(Sender: TObject);
begin
  inherited;
  actRemoveTrial.Execute;
end;

procedure TtshGeneralReportF.lstSourceDblClick(Sender: TObject);
begin
  inherited;
  if chkTrial.Checked then
    actAddTrial.Execute;
end;

procedure TtshGeneralReportF.lstSourceClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if chkTrial.Checked then
    exit;
  For I := 0 to tlbCirculation.ControlCount - 1 do
  begin
    tlbCirculation.Buttons[I].Enabled := True;
    popGrd.Items[I].Enabled := True;
  end;
  lstCirculation.Clear;
  actAddTrial.Execute;
  actDoTrial.Execute;
end;

procedure TtshGeneralReportF.chkTrialClick(Sender: TObject);
begin
  inherited;
  pnlTrial.Visible := chkTrial.Checked;
end;

procedure TtshGeneralReportF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('FunctionDate') = nil then
    close;
end;

procedure TtshGeneralReportF.CreateLevel;
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

procedure TtshGeneralReportF.initReport;
begin

end;

procedure TtshGeneralReportF.pplblLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TtshGeneralReportF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TtshGeneralReportF.pplblLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TtshGeneralReportF.ppReport1BeforePrint(Sender: TObject);
begin
  inherited;
  initReport;
end;

procedure TtshGeneralReportF.mnu1Click(Sender: TObject);
begin
  inherited;
  treechartF.showChart(qryTrialBalance, Self)
end;

procedure TtshGeneralReportF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y)
end;

procedure TtshGeneralReportF.mnuN3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdMaster, 0)
end;

procedure TtshGeneralReportF.mnuN4Click(Sender: TObject);
begin
  inherited;
  SetParam.Refresh;
end;

procedure TtshGeneralReportF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if myParams.FindParam('FunctionDate') <> nil then
    if Assigned(SetParam.ParentParam) then
      CanClose := get_response('آيا از خروج مطمئن هستيد؟') = mryes;
end;

procedure TtshGeneralReportF.CategoryPanel1Expand(Sender: TObject);
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

procedure TtshGeneralReportF.chkFieldListDblClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to (Sender as TCheckListBox).Items.Count - 1 do
    (Sender as TCheckListBox).Checked[I] := not(Sender as TCheckListBox)
      .Checked[I];
end;

procedure TtshGeneralReportF.grdMasterColEnter(Sender: TObject);
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

procedure TtshGeneralReportF.FormResize(Sender: TObject);
begin
  inherited;
  pnlTop.Height := (tlbCirculation.ButtonHeight + 2) * tlbCirculation.RowCount;
//  grdMaster.setSizeColDBGrid(True);
end;

end.
