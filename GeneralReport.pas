unit GeneralReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Buttons, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Mask, DBCtrls, ComCtrls, ToolWin, CheckLst, DB,
  ADODB, StrUtils, math, Menus, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache, pptypes, ppVar,
  ppParameter, Tabs, Filter_ADO_Const, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TCirculation = class;

  TGeneralReportF = class(Ttemplate2MDIF)
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
    Panel1: TPanel;
    cmbShow: TComboBox;
    qrySum: TADOQuery;
    srcSum: TDataSource;
    SCSplitter2: TSplitter;
    SCSplitter1: TSplitter;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel3: TCategoryPanel;
    pnl3: TPanel;
    chkCaption: TCheckBox;
    chkAccCode: TCheckBox;
    pnlSelectCode: TPanel;
    lstSource: TListBox;
    rdoDoc: TRadioGroup;
    Panel6: TPanel;
    btnSelectAll: TSpeedButton;
    SpeedButton1: TSpeedButton;
    chkTrial: TCheckBox;
    pnlTrial: TPanel;
    pnl6: TPanel;
    btnAddTrial: TSpeedButton;
    btnRemoveTrial: TSpeedButton;
    lstCirculation: TListBox;
    lstDoc: TCheckListBox;
    chkFieldList: TCheckListBox;
    grdMaster: TCedarDbgrid;
    grdSum: TCedarDbgrid;
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
    procedure actPrintExecute(Sender: TObject);
    procedure pplblLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure pplblLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure mnuN1Click(Sender: TObject);
    procedure mnuN2Click(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure mnuN3Click(Sender: TObject);
    procedure mnuN4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chkFieldListDblClick(Sender: TObject);
    procedure grdMasterColEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure rdoDocClick(Sender: TObject);
    procedure CategoryPanel1Expand(Sender: TObject);
    procedure actCirculationAccExecute(Sender: TObject);
    procedure qryTrialBalanceAfterOpen(DataSet: TDataSet);
    procedure grdMasterDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qrySumAfterOpen(DataSet: TDataSet);
    procedure grdMasterColWidthsChanged(Sender: TObject);

  Private
    aWhere: String;
    bWhere: String;
    aEffectType: Byte;
    FormType: Byte;
    // lstSelected:
    SetParam: TCirculation;
    procedure initView;
    Procedure initDocList(Inx: Byte);
    procedure EnabelButton(Inx: Integer; btnState: Boolean);
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

  // ﬂ·«” ›Êﬁ »—«Ì ”ÿÕ Â«  ⁄—Ì› ‘œÂ «” 
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
    FShowUnitPrice: Byte;
    FEffectType: Byte;
    FaItemsFields: String;
    FWhereBeforeYear: String;
  Private
    procedure GrdDisplayLabel_Columns;

    property BootMark: TBookmark read FBootMark write FBootMark;
    property WhereSQL: string read FWhereSQL write FWhereSQL;
    Property ShowUnitPrice: Byte read FShowUnitPrice write FShowUnitPrice;
    property EffectType: Byte read FEffectType write FEffectType;
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
  GeneralReportF: TGeneralReportF;

implementation

uses
  GlobalPro, Dm, sort2, search2, FilterClass_ADO, filter_ADO,
  TreeChart, DBGrid2Print, Offices, mdiMain, FormFunctions;

{$R *.dfm}
{ Ttemplate2MDIF1 }

procedure TGeneralReportF.initView;
var
  I: Integer;
begin

  popGrd.Items.Clear;
  I := 0;
  with dmf.qryTmpTmp do
    try
      close;
      SQL.Text := 'SELECT ID, CaptionName FROM  Util.Analyze ';
      SQL.Add('WHERE (TableKind = 20) order by ID');
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
  initDocList(2);
end;

procedure TGeneralReportF.FormCreate(Sender: TObject);

begin
  inherited;
  FormType := var_glb_gParam;
  initView;
end;

procedure TGeneralReportF.FormDestroy(Sender: TObject);

begin
  inherited;
  // SaveColWidth(grdMaster);
  FreeAllCirculationl
end;

procedure TGeneralReportF.actCirculationAccExecute(Sender: TObject);
begin
  inherited;
  officesF.enter(qryTrialBalance.fieldbyname('AllColumn').AsString,
    qryTrialBalance.fieldbyname('AllCaption').AsString, SetParam.BaseParam,
    SetParam.WhereSQL, SetParam.WhereBeforeYear);

end;

procedure TGeneralReportF.actDoTrialExecute(Sender: TObject);
var
  I, Inx: Integer;
  strSelected: String;
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
      Inx := Integer(lstCirculation.Items.Objects[I]);
      BaseParam := BaseParam + inttostr(Inx) + ',';
    end;

    For I := 0 to lstDoc.Count - 1 do
    begin
      if lstDoc.Checked[I] then
      begin
        Inx := Integer(lstDoc.Items.Objects[I]);
        strSelected := strSelected + inttostr(Inx) + ',';
      end;
    end;

    For I := 0 to chkFieldList.Count - 1 do
      if chkFieldList.Checked[I] then
      begin
        Inx := Integer(chkFieldList.Items.Objects[I]);
        AItemsFields := AItemsFields + inttostr(Inx) + ',';
      end;

    // Remove Last Char

    BaseParam := Leftstr(BaseParam, length(BaseParam) - 1);
    strSelected := Leftstr(strSelected, length(strSelected) - 1);

    AItemsFields := Leftstr(AItemsFields, length(AItemsFields) - 1);

    if Trim(strSelected) <> emptystr then
    begin
      case rdoDoc.ItemIndex of
        0:
          begin
            with dmf.qryTmpTmp do
            begin
              close;
              SQL.Text := 'SELECT SUM(EffectType) AS SumValue';
              SQL.Add('FROM (SELECT DISTINCT EffectType');
              SQL.Add('FROM ReciptTypes');
              SQL.Add('WHERE (ReciptType IN (' + strSelected + '))) AS Q');
              open;
              aEffectType := Fields[0].AsInteger;
              close;
            end;
          end;
        1:
          begin
            with dmf.qryTmpTmp do
            begin
              close;
              SQL.Text := 'SELECT SUM(SellEffect) AS SumValue';
              SQL.Add('FROM (SELECT DISTINCT SellEffect');
              SQL.Add('FROM ReciptTypes');
              SQL.Add('WHERE (ReciptType IN (' + strSelected + '))) AS Q');
              open;
              aEffectType := (Fields[0].AsInteger + 3);
              close;
            end;
          end;
        2:
          aEffectType := 8;
      end;
      Add2Filter(SqlWhere, Format('R.ReciptType In ( %S )', [strSelected]));
    end;
    SplitCode := chkAccCode.Checked;
    SplitCaption := chkCaption.Checked;
    WhereSQL := SqlWhere;
    WhereBeforeYear := bWhere;
    EffectType := aEffectType;
    ShowUnitPrice := cmbShow.ItemIndex;

    pnlCirculation.Visible := False;
    pnlAccOld.Visible := False;

    if BaseParam <> emptystr then
      Refresh;

    AccCode := qryTrialBalance.fieldbyname('AllColumn').AsString;
    if qryTrialBalance.FindField('AllCaption') <> nil then
      AccName := qryTrialBalance.fieldbyname('AllCaption').AsString;
  end;
  AddSum;

end;

procedure TGeneralReportF.AddSum;
var
  I: Integer;
begin
  With qrySum do
  begin
    close;
    open;
    for I := 1 to Fields.Count - 1 do
    begin
      // Fields[i].DisplayLabel:=qryTrialBalance.FieldByName(Fields[i].FieldName).DisplayLabel;
      if qryTrialBalance.fieldbyname(Fields[I].FieldName) is TBCDField then
        TBCDField(Fields[I]).currency := True;
    end;
  end;

end;

procedure TGeneralReportF.AddButtons;
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

procedure TGeneralReportF.EnabelButton;
var
  I: Integer;
begin
  for I := 0 to tlbCirculation.ButtonCount - 1 do
  begin
    if tlbCirculation.Buttons[I].Tag = Inx then
      tlbCirculation.Buttons[I].Enabled := btnState;
    if (popGrd.Items.Count > I) and
      (popGrd.Items[I].Name = 'Itm' + inttostr(Inx)) then
      popGrd.Items[I].Enabled := btnState;
  end;
end;

procedure TGeneralReportF.FreeAllCirculationl;
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
  FinalParam: String;
  // Bed, Bes, BalanceBed, BalanceBes: currency;
begin
  // Bed := 0;
  // Bes := 0;
  // BalanceBed := 0;
  // BalanceBes := 0;
  if AddParam = emptystr then
    FinalParam := FBaseParam
  else
    FinalParam := stringreplace(FBaseParam, ',' + AddParam, '', [rfReplaceAll]);

  with GeneralReportF do
    with qryTrialBalance do
    begin
      close;
      Parameters.ParamByName('BaseParam').Value := FinalParam;
      Parameters.ParamByName('MargeCode').Value := SplitCode;
      Parameters.ParamByName('MargeCaption').Value := SplitCaption;
      Parameters.ParamByName('FilterParam').Value := AccCode;
      Parameters.ParamByName('AddParam').Value := AddParam;
      Parameters.ParamByName('UnitePriceType').Value := ShowUnitPrice + 1;
      Parameters.ParamByName('EffectType').Value := EffectType;
      Parameters.ParamByName('awhere').Value := WhereSQL;
      Parameters.ParamByName('AItemsFields').Value := AItemsFields;
      open;
      Sort := 'AllColumn';
      lblOldAcc.Caption := AccCode + ' - ' + AccName;

      GrdDisplayLabel_Columns;

      // fc := TColumnTitle.Create(grdMaster.Columns[0]);

    end;
  SetUserQualitativeOnForms(GeneralReportF);
  GeneralReportF.grdMaster.DoLoad('');


end;

procedure TCirculation.GrdDisplayLabel_Columns;
var
  I: Integer;
  DLable: String;
begin
  with GeneralReportF do
  begin
    grdMaster.Columns.Clear;

    with grdMaster do
      For I := 0 to Columns.Count - 1 do
      begin

        // fldName := LowerCase(Columns[i].FieldName);
        DLable := LowerCase(Columns[I].Field.DisplayLabel);
        DLable := stringreplace(DLable, 'entity', opt.EntityCaption, []);
        DLable := stringreplace(DLable, 'weight', opt.WeightCaption, []);
        DLable := stringreplace(DLable, 'input', ' Ê«—œÂ', []);
        DLable := stringreplace(DLable, 'output', ' ’«œ—Â', []);
        DLable := stringreplace(DLable, 'priceunitin', ' ›Ì˛Ê«—œÂ ', []);
        DLable := stringreplace(DLable, 'priceunitout', ' ›Ì˛’«œ—Â ', []);
        DLable := stringreplace(DLable, 'price', ' „»·€ ', []);
        DLable := stringreplace(DLable, 'unit', ' ›Ì˛ ', []);
        DLable := stringreplace(DLable, 'total', ' ﬂ·˛ ', []);
        DLable := stringreplace(DLable, 'arzeshafzode', ' «—“‘ «›“ÊœÂ˛ ', []);

        Columns[I].Field.DisplayLabel := DLable;

        if Pos('entity', LowerCase(Columns[I].FieldName)) > 0 then
          Columns[I].Visible := opt.EntityDisplay;
        if Pos('weight', LowerCase(Columns[I].FieldName)) > 0 then
          Columns[I].Visible := opt.weightDisplay;

        if Columns[I].ReadOnly then
          Columns[I].Color := const_fixed_columns_color
        else
          Columns[I].Color := const_normal_columns_color;

        if (Columns[I].Field is TStringField) then
          Columns[I].Width := 100;
        Columns[I].Field.Tag := 3;
        if upperCase(Columns[I].FieldName) = 'ALLCOLUMN' then
        begin
          Columns[I].Visible := not SplitCode;
          Columns[I].Width := 80;
          Columns[I].Field.DisplayLabel := 'ﬂœ';
          // Columns[i].Title.Caption := 'ﬂœ';
        end
        else if upperCase(Columns[I].FieldName) = 'ALLCAPTION' then
        begin
          Columns[I].Visible := not SplitCaption;
          Columns[I].Width := 200;
          Columns[I].Title.Caption := '⁄‰Ê«‰';
        end;

        if Columns[I].Field is TStringField then
          if (Pos('date', LowerCase(Columns[I].Field.FieldName)) <> 0) or
            (Pos(' «—ÌŒ', LowerCase(Columns[I].Field.FieldName)) <> 0) then
            Columns[I].Color := const_Date_columns_color;

        if (Columns[I].Field is TBCDField) or (Columns[I].Field is TFMTBCDField)
          or (Columns[I].Field is TCurrencyField) then
        begin
          Columns[I].Width := 100;
          TBCDField(Columns[I].Field).currency := True;
          Columns[I].Color := const_Currency_columns_color;
        end;
        // next;
      end;
  end;
end;

procedure TGeneralReportF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTrialBalance);
end;

procedure TGeneralReportF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.showSearch(qryTrialBalance);
end;

procedure TGeneralReportF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdMaster)
end;

procedure TGeneralReportF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterAidDate);

      AddItemFilter(GetFilter, TFilterProduct);
      // AddItem(dmf.adcBSell, 'Product', '‰«„ „Õ’Ê·', 'ﬂœ „Õ’Ê·', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM  StuffCoding ',
      // 'Select Min(0),max(StuffCode) from ReciptItems');

      AddItem(dmf.adcBSell, 'Model', '„œ· ﬂ«·« ', ' ﬂœ „œ·', ftInteger,
        dvMinMax, '', '', ciLookup, 'SELECT LookUpID, Name FROM LookUps ',
        'select Min(LookUpID),Max(LookUpID) From LookUps');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(dmf.adcBSell, 'StuffCode', '‰«„ ﬂ«·«', 'ﬂœ ﬂ«·«', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM  StuffCoding ',
      // 'Select Min(StuffCode),max(StuffCode) from ReciptItems');

      AddItem(dmf.adcBSell, 'SecondType', '‰Ê⁄ «ÿ·«⁄«  ', 'ﬂœ «ÿ·«⁄«  ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT LookUps.Code, LookUps.Name FROM Recipts INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID GROUP BY Recipts.SecondType, LookUps.Code, LookUps.Name',
        'SELECT MIN(LookUps.Code),MAX(LookUps.Code) FROM Recipts LEFT OUTER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID');

      AddItemFilter(GetFilter, TFilterUseUnitID);

      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItemFilter(GetFilter, TFilterStates);

      AddItem(dmf.adcBSell, 'PersonID3', ' „‘ —Ì ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT CustID , CustName FROM Customers ',
        'select Min(CustID),Max(CustID) From Customers');
      AddItem(dmf.adcBSell, 'PersonID2', ' „‘ —Ì ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT CustID , CustName FROM Customers ',
        'select Min(CustID),Max(CustID) From Customers');
      AddItem(dmf.adcBSell, 'PersonID1', ' „‘ —Ì ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT CustID , CustName FROM Customers ',
        'select Min(CustID),Max(CustID) From Customers');
      AddItem(dmf.adcBSell, 'ReciptDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(dmf.adcBSell, 'number', '‘„«—Â', '‘„«—Â', ftInteger, dvMinMax, '',
        '', ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');
      AddItem(dmf.adcBSell, 'storeId', '«‰»«—', 'ﬂœ«‰»«—', ftInteger, dvMinMax,
        '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      AddItem(dmf.adcBSell, 'Year', '„ÕœÊœ ”«· „«·Ì', '”«· „«·Ì', ftInteger,
        dvDefaults, inttostr(APPBank.Year), inttostr(APPBank.Year),
        ciSimple, '', '');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TGeneralReportF.UpdateList;
Var
  ModelFrom, ModelTo: String;
  StuffFrom, StuffTo: String;
  // GroupFrom,GroupTo :String;
  TypeFrom, TypeTo: String;
  UnitFrom, UnitTo: String;
  SellsFrom, SellsTo: String;
  PID1From, PID1To: String;
  PID2From, PID2To: String;
  PID3From, PID3To: String;
  DateFrom, DateTo: String;
  YearFrom, YearTo: String;
  storeFrom, storeTo: String;
  numberFrom, numberTo: String;
  ProductFrom, ProductTo: String;
  AidDateFrom, AidDateTo: String;
  States: String;
begin
  aWhere := emptystr;
  bWhere := emptystr;

  // bwhere := emptystr;
  ProductFrom := GetcFrom(myParams.ParamValues['Product'], ftInteger);
  ProductTo := GetcTo(myParams.ParamValues['Product'], ftInteger);
  ModelFrom := GetcFrom(myParams.ParamValues['Model'], ftInteger);
  ModelTo := GetcTo(myParams.ParamValues['Model'], ftInteger);
  StuffFrom := GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
  StuffTo := GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
  // GroupFrom     := GetcFrom(myParams.ParamValues['GroupID'],ftInteger);
  // GroupTo       := GetcTo(myParams.ParamValues['GroupID'],ftInteger);
  TypeFrom := GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
  TypeTo := GetcTo(myParams.ParamValues['SecondType'], ftInteger);
  UnitFrom := GetcFrom(myParams.ParamValues['UseUnitID'], ftInteger);
  UnitTo := GetcTo(myParams.ParamValues['UseUnitID'], ftInteger);
  SellsFrom := GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
  SellsTo := GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
  PID1From := GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
  PID1To := GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
  PID2From := GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
  PID2To := GetcTo(myParams.ParamValues['PersonID2'], ftInteger);
  PID3From := GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
  PID3To := GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
  DateFrom := GetcFrom(myParams.ParamValues['ReciptDate'], ftString);
  DateTo := GetcTo(myParams.ParamValues['ReciptDate'], ftString);
  numberFrom := GetcFrom(myParams.ParamValues['number'], ftInteger);
  numberTo := GetcTo(myParams.ParamValues['number'], ftInteger);
  storeFrom := GetcFrom(myParams.ParamValues['storeId'], ftInteger);
  storeTo := GetcTo(myParams.ParamValues['storeId'], ftInteger);
  YearFrom := GetcFrom(myParams.ParamValues['Year'], ftInteger);
  YearTo := GetcTo(myParams.ParamValues['Year'], ftInteger);
  States := GetcFrom(myParams.ParamValues['States'], ftString);

  AidDateFrom := GetcFrom(myParams.ParamValues['AidDate'], ftString);
  AidDateTo := GetcTo(myParams.ParamValues['AidDate'], ftString);

  Add2Filter(aWhere,
    Format('((ISNULL(R.AidDate, '''') = '''') OR (R.AidDate = ''/  /'') ' +
    'OR (R.AidDate BETWEEN ''%s'' AND ''%s'' ))', [AidDateFrom, AidDateTo]));

  Add2Filter(aWhere, Format('ISNULL(R.ProductModel , 0) Between %S And %S',
    [ModelFrom, ModelTo]));
  Add2Filter(aWhere, Format('ISNULL(R.StuffCode, 0) Between %S And %S',
    [StuffFrom, StuffTo]));
  Add2Filter(aWhere, Format('ISNULL(R.ProductCode, 0) Between %S And %S',
    [ProductFrom, ProductTo]));
  Add2Filter(aWhere, Format('ISNULL(R.UseUnitID, 0) Between %S And %S',
    [UnitFrom, UnitTo]));
  // Add2Filter(awhere,Format('StuffCoding.GroupID Between %S And %S',[GroupFrom,GroupTo]));
  Add2Filter(aWhere, Format('ISNULL(L_ST.Code, 0) Between %S And %S',
    [TypeFrom, TypeTo]));

  Add2Filter(aWhere, Format('ISNULL(R.PersonID1, 0) Between %S And %S',
    [PID1From, PID1To]));
  Add2Filter(aWhere, Format('ISNULL(R.PersonID2, 0) Between %S And %S',
    [PID2From, PID2To]));
  Add2Filter(aWhere, Format('ISNULL(R.PersonID3, 0)  Between %S And %S',
    [PID3From, PID3To]));

  Add2Filter(aWhere, Format('R.ReciptDate Between %S And %S',
    [QuotedStr(DateFrom), QuotedStr(DateTo)]));
  Add2Filter(aWhere, Format('R.ReciptNumber Between %S And %S',
    [numberFrom, numberTo]));
  Add2Filter(aWhere, Format('R.StoreID Between %S And %S',
    [storeFrom, storeTo]));

  Add2Filter(aWhere, Format('R.YearID Between %S And %S', [YearFrom, YearTo]));

  if States = emptystr then
    States := '0,1,2,3,4,5';
  Add2Filter(aWhere, Format('R.ReciptState in(%s)', [States]));

  if Assigned(SetParam) then
  begin
    SetParam.WhereSQL := aWhere;
    SetParam.WhereBeforeYear := bWhere;
    SetParam.Refresh
  end
  else
    actDoTrial.Execute;
end;

procedure TGeneralReportF.actUndoExecute(Sender: TObject);
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
      cmbShow.ItemIndex := tmp.ShowUnitPrice;
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

procedure TGeneralReportF.grdMasterDblClick(Sender: TObject);
begin
  inherited;
  popGrd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TGeneralReportF.grdMasterDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
// var
// I, k, mySize, ColCount: Integer;
begin
  inherited;
  // Exit;
  // k := chkFieldList.Items.Count;
  // mySize := 0;
  // ColCount := 0;
  // for I := 0 to k - 1 do
  // if chkFieldList.Checked[I] then
  // begin
  // mySize := mySize + grdMaster.Columns[I].Width;
  // inc(ColCount);
  // end;
  //
  // if grdMaster.Columns.Count > ColCount then
  // mySize := mySize + grdMaster.Columns[ColCount + 0].Width + grdMaster.Columns
  // [ColCount + 1].Width;
  // if grdSum.Columns.Count > 0 then
  // grdSum.Columns[0].Width := mySize;
  // for I := 1 to grdSum.Columns.Count - 1 do
  // begin
  // if grdSum.Columns[I].FieldName = Column.FieldName then
  // grdSum.Columns[I].Width := Column.Width;
  // end;
end;

procedure TGeneralReportF.actAddTrialExecute(Sender: TObject);
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

procedure TGeneralReportF.actRemoveTrialExecute(Sender: TObject);
var
  obj: TObject;
  Inx: Integer;
begin
  inherited;
  if lstCirculation.ItemIndex = -1 then
    exit;
  obj := lstCirculation.Items.Objects[lstCirculation.ItemIndex];
  Inx := lstCirculation.Items.IndexOfObject(obj);
  if Inx <> -1 then
  begin
    lstCirculation.Items.Delete(Inx);
    EnabelButton(Integer(obj), True);
  end;
end;

procedure TGeneralReportF.lstCirculationDblClick(Sender: TObject);
begin
  inherited;
  actRemoveTrial.Execute;
end;

procedure TGeneralReportF.lstSourceDblClick(Sender: TObject);
begin
  inherited;
  if chkTrial.Checked then
    actAddTrial.Execute;
end;

procedure TGeneralReportF.lstSourceClick(Sender: TObject);
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

procedure TGeneralReportF.chkTrialClick(Sender: TObject);
begin
  inherited;
  pnlTrial.Visible := chkTrial.Checked;
  // actDoTrial.Enabled :=  pnltrial.Visible;
end;

procedure TGeneralReportF.FormShow(Sender: TObject);
begin
  inherited;
  // CategoryPanel1.Height:=CategoryPanelGroup1.Height-((CategoryPanelGroup1.HeaderHeight) * 3);
  // CategoryPanel1.Expand;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TGeneralReportF.CreateLevel;
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

      ShowUnitPrice := cmbShow.ItemIndex;;
      SplitCaption := chkCaption.Checked;
      SplitCode := chkAccCode.Checked;
      EffectType := aEffectType;
      ShowUnitPrice := cmbShow.ItemIndex;
      AccCode := qryTrialBalance.fieldbyname('AllColumn').AsString;
      if qryTrialBalance.FindField('AllCaption') <> nil then
        AccName := qryTrialBalance.fieldbyname('AllCaption').AsString;
      BootMark := qryTrialBalance.GetBookmark;
      EnabelButton(TToolButton(Sender).Tag, False);
      Refresh;

      // SetParam := aParam;

      WhereSQL := SetParam.WhereSQL;
      WhereBeforeYear := SetParam.WhereBeforeYear;

    Finally
      qryTrialBalance.EnableControls;
      AddSum;
    end;

end;

procedure TGeneralReportF.initReport;
begin
end;

procedure TGeneralReportF.actPrintExecute(Sender: TObject);
begin
  inherited;
  // if ((chkCaption.Checked) And (chkAccCode.Checked) And (chkTrial.Checked)) then
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y)
  // else
  // InitReportFileGrid(ppReport1,'specialTrialBalance2',grdMaster)
end;

procedure TGeneralReportF.pplblLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TGeneralReportF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TGeneralReportF.qrySumAfterOpen(DataSet: TDataSet);
var
  I: Integer;
begin
  with GeneralReportF do
  begin
    with grdSum do
      For I := 0 to Columns.Count - 1 do
      begin
        if Columns[I].ReadOnly then
          Columns[I].Color := const_fixed_columns_color
        else
          Columns[I].Color := const_normal_columns_color;

        if (Columns[I].Field is TBCDField) or (Columns[I].Field is TFMTBCDField)
          or (Columns[I].Field is TCurrencyField) then
        begin
          TBCDField(Columns[I].Field).currency := True;
          Columns[I].Color := const_Currency_columns_color;
        end;
      end;
  end;
end;

procedure TGeneralReportF.qryTrialBalanceAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetParam.GrdDisplayLabel_Columns
end;

procedure TGeneralReportF.pplblLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TGeneralReportF.ppReport1BeforePrint(Sender: TObject);
begin
  inherited;
  initReport;
end;

procedure TGeneralReportF.mnuN1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'specialTrialBalance')
end;

procedure TGeneralReportF.mnuN2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'specialTrialBalance1')
end;

procedure TGeneralReportF.mnu1Click(Sender: TObject);
begin
  inherited;
  treechartF.showChart(qryTrialBalance, Self);
end;

procedure TGeneralReportF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TGeneralReportF.mnuN3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdMaster, 0);
end;

procedure TGeneralReportF.mnuN4Click(Sender: TObject);
begin
  inherited;
  SetParam.Refresh;
end;

procedure TGeneralReportF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if myParams.FindParam('ReciptDate') <> nil then
    if Assigned(SetParam.ParentParam) then
      CanClose := get_response('¬Ì« «“ Œ—ÊÃ „ÿ„∆‰ Â” Ìœø') = mryes;
end;

procedure TGeneralReportF.initDocList;
var
  sqltxt: String;
  I: Integer;
begin
  lstDoc.Clear;
  chkFieldList.Clear;
  Case Inx of
    0:
      sqltxt := 'SELECT ReciptType, ReciptCaption FROM ReciptTypes ' +
        ' WHERE  (EffectType IN (2, 4)) AND';
    1:
      sqltxt := 'SELECT ReciptType, ReciptCaption FROM ReciptTypes ' +
        ' WHERE  (SellEffect IN (1, 2)) AND';

    2:
      sqltxt := 'SELECT ReciptType, ReciptCaption FROM ReciptTypes WHERE ';
  end;
  // I := mdiMainF.MainFrame.GetActiveIndex + 1;
  sqltxt := sqltxt + ' LTRIM(RTRIM(REPLACE(MnuPlaceIDs,''0'','''')))>0';
  I := 0;
  with dmf.qryTmpTmp do
  begin
    close;
    SQL.Text := sqltxt;
    open;
    while Not eof do
    begin
      lstDoc.Items.AddObject(Fields[1].AsString, TObject(Fields[0].AsInteger));
      lstDoc.Checked[I] := True;
      inc(I);
      next;
    end;

    close;
    SQL.Text := 'SELECT ID,DisPlayName FROM  Util.AnalyzeItems Where Kind = 0 ';
    open;
    while Not eof do
    begin
      chkFieldList.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      next;
    end;
  end;
end;

procedure TGeneralReportF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  initDocList((Sender as TRadioGroup).ItemIndex)
end;

procedure TGeneralReportF.rdoDocClick(Sender: TObject);
begin
  inherited;
  initDocList((Sender as TRadioGroup).ItemIndex)
end;

procedure TGeneralReportF.btnSelectAllClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to lstDoc.Count - 1 do
    lstDoc.Checked[I] := True;
end;

procedure TGeneralReportF.CategoryPanel1Expand(Sender: TObject);
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

procedure TGeneralReportF.SpeedButton1Click(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to lstDoc.Count - 1 do
    lstDoc.Checked[I] := not lstDoc.Checked[I];
end;

procedure TGeneralReportF.chkFieldListDblClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 0 to (Sender as TCheckListBox).Items.Count - 1 do
    (Sender as TCheckListBox).Checked[I] := not(Sender as TCheckListBox)
      .Checked[I];
end;

procedure TGeneralReportF.grdMasterColEnter(Sender: TObject);
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
      grdSum.Columns[I].Width := grdMaster.Columns
        [grdMaster.SelectedIndex].Width;
      Break;
    end
end;

procedure TGeneralReportF.grdMasterColWidthsChanged(Sender: TObject);
var
  FName, FirstColumnName: String;
  I, j, myWidth, myIndex: Integer;
begin
  inherited;
  grdSum.SelectedIndex := -2;
  FName := grdMaster.Columns[grdMaster.SelectedIndex].FieldName;
  for I := 0 to grdSum.Columns.Count - 1 do
    if grdSum.Columns[I].FieldName = FName then
    begin
      grdSum.SelectedIndex := I;
      Break;
    end;

  if grdSum.Columns.Count > 1 then
    FirstColumnName := grdSum.Columns[1].FieldName;
  myWidth := 0;

  myIndex := ColumnIndexByFieldName(grdMaster, FirstColumnName);

  for I := 0 to grdMaster.Columns.Count - 1 do
  begin
    if I < myIndex then
      myWidth := myWidth + grdMaster.Columns[I].Width
  end;

  if grdSum.Columns.Count > 1 then
    grdSum.Columns[0].Width := myWidth;

  for I := 0 to grdMaster.Columns.Count - 1 do
  begin
    j := ColumnIndexByFieldName(grdSum, grdMaster.Columns[I].FieldName);
    if j <> -1 then
      grdSum.Columns[j].Width := grdMaster.Columns[I].Width;
  end;
end;

procedure TGeneralReportF.FormResize(Sender: TObject);
begin
  inherited;
  pnlTop.Height := (tlbCirculation.ButtonHeight + 2) * tlbCirculation.RowCount;
//    GeneralReportF.grdMaster.setSizeColDBGrid(True);

end;

end.
