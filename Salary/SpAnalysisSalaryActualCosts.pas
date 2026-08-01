unit SpAnalysisSalaryActualCosts;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms, template2MDI, Buttons, ActnList,
  StdCtrls, ExtCtrls,  ComCtrls, DB, ADODB, StrUtils, Menus,
  ppClass,
  ppReport, ppDBPipe, ppPrnabl, ppCtrls, ppBands, pptypes, ppVar, ppParameter,
  MySplitter, ppCache, ppProd, ppComm, ppRelatv, ppDB, ToolWin, ImgList,
  DBActns, ppDesignLayer, System.ImageList, System.Actions, Filter_ADO_Const,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type

  TCirculation = class;

  TSpAnalysisSalaryActualCostsF = class(Ttemplate2MDIF)
    actDoTrial: TAction;
    qryAnalysisSalary: TADOQuery;
    srcAnalysisSalary: TDataSource;
    btnDoTrial: TBitBtn;
    btnSort: TBitBtn;
    actSort: TAction;
    btnSort1: TBitBtn;
    actExcel: TAction;
    btnDoTrial1: TBitBtn;
    popGrd: TPopupMenu;
    mnusadas1: TMenuItem;
    btnSearch_: TBitBtn;
    actFilter: TAction;
    actUndo: TAction;
    actAddTrial: TAction;
    actRemoveTrial: TAction;
    actCirculationAcc: TAction;
    btnPrint: TButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    popPrint: TPopupMenu;
    mnuN1: TMenuItem;
    mnuN2: TMenuItem;
    ppParameterList1: TppParameterList;
    actOther: TAction;
    btnExcel: TBitBtn;
    popOthers: TPopupMenu;
    mnu1: TMenuItem;
    mnuN3: TMenuItem;
    mnuN4: TMenuItem;
    pnl4: TPanel;
    pnlAccOld: TPanel;
    lblOldAcc: TLabel;
    pnl5: TPanel;
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
    kk1: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    pplblplbl2: TppLabel;
    ppLine5: TppLine;
    plblPrice: TppLabel;
    pplblLblCompanyName: TppLabel;
    pplblLblPrintDate: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    pptxtCode: TppDBText;
    pptxtCaption: TppDBText;
    pplblplbl1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    pdbtxtPrice: TppDBText;
    ppLine13: TppLine;
    ppLine9: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    pdbclcPrice: TppDBCalc;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLabel2: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    pdbclcPrice1: TppDBCalc;
    ppLine18: TppLine;
    ppLine20: TppLine;
    ppLabel3: TppLabel;
    pnl8: TPanel;
    pnl1: TPanel;
    lbl1: TLabel;
    edtPrice: TEdit;
    pnl7: TPanel;
    pnl2: TPanel;
    lbl2: TLabel;
    edtSelPrice: TEdit;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
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
    procedure actPrintExecute(Sender: TObject);
    procedure pplblLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure pplblLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure mnuN1Click(Sender: TObject);
    procedure mnuN2Click(Sender: TObject);
    procedure qryAnalysisSalaryAccCodeGetText(Sender: TField; var Text: String;
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
    procedure FormResize(Sender: TObject);

  private
    aWhere: String;
    bWhere: String;
    FilterStringCaption: string;
    AccCodeForPrint: string;
    FormType: Byte;
    SetParam: TCirculation;
    PersonelNoFrom, PersonelNoTo: String;
    procedure initView;
    procedure EnabelButton(inx: Integer; btnState: Boolean);
    procedure AddButtons(ToolBar: TToolBar; const ButtonCaptions: String;
      actTag: Integer);
    Procedure FreeAllCirculationl;
    Procedure UpdateList;
    Procedure CreateLevel(Sender: TObject);
    Procedure initReport;
    Procedure SumSelected;
    procedure FreeSumSelected;
    procedure initReportTrial;

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
  Private
    // property BootMark : TBookmark  read FBootMark write FBootMark;
    property WhereSQL: string read FWhereSQL write FWhereSQL;
    Property WhereBeforeYear: String read FWhereBeforeYear
      write FWhereBeforeYear;
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
  SpAnalysisSalaryActualCostsF: TSpAnalysisSalaryActualCostsF;

implementation

uses
  GlobalPro, Dm, sort2, search2, FilterClass_ADO, filter_ADO,
  MyReport, TreeChart, DBGrid2Print;

{$R *.dfm}
{ Ttemplate2MDIF1 }

procedure TSpAnalysisSalaryActualCostsF.initView;
var
  I: Integer;
begin
  popGrd.Items.Clear;
  I := 0;
  with DMF.qryTmpTmpp do
  begin
    Close;
    SQL.Text := 'SELECT ID, CaptionName FROM Util.Analyze';
    SQL.Add('WHERE (TableKind = 4) ORDER BY ID');
    Open;
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

procedure TSpAnalysisSalaryActualCostsF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  initView;
end;

procedure TSpAnalysisSalaryActualCostsF.FormDestroy(Sender: TObject);

begin
  inherited;
  // SaveColWidth(grdMaster);
  FreeAllCirculationl;
end;

procedure TSpAnalysisSalaryActualCostsF.FormResize(Sender: TObject);
begin
  inherited;
//grdMaster.setSizeColDBGrid(True);
end;

procedure TSpAnalysisSalaryActualCostsF.actDoTrialExecute(Sender: TObject);
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
    ParentParam := nil;
    WhereSQL := aWhere;
    WhereBeforeYear := bWhere;
    pnlCirculation.Visible := False;
    pnlAccOld.Visible := False;
    if BaseParam <> emptystr then
      Refresh;
    if qryAnalysisSalary.FindField('AccCode') <> nil then
      AccCode := qryAnalysisSalary.fieldbyname('AccCode').AsString;
    if qryAnalysisSalary.FindField('AccName') <> nil then
      AccName := qryAnalysisSalary.fieldbyname('AccName').AsString;
  end;
end;

procedure TSpAnalysisSalaryActualCostsF.AddButtons;
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

procedure TSpAnalysisSalaryActualCostsF.EnabelButton;
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

procedure TSpAnalysisSalaryActualCostsF.FreeAllCirculationl;
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
  I: Integer;
  FinalParam: String;
  Price: Currency;
  Cloned: TADOQuery;
begin
  Price := 0;

  if AddParam = emptystr then
    FinalParam := FBaseParam
  else
    FinalParam := stringreplace(FBaseParam, ',' + AddParam, '', [rfReplaceAll]);
  with SpAnalysisSalaryActualCostsF do
    with qryAnalysisSalary do
    begin
      grdMaster.SelectedRows.Clear;
      FreeSumSelected;
      Close;
      Parameters.ParamByName('BaseParam').Value := FinalParam;
      Parameters.ParamByName('MargeCode').Value := SplitCode;
      Parameters.ParamByName('MargeCaption').Value := SplitCaption;
      Parameters.ParamByName('FilterParam').Value := AccCode;
      Parameters.ParamByName('AddParam').Value := AddParam;
      Parameters.ParamByName('awhere').Value := WhereSQL;

      Parameters.ParamByName('PersonelNoFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
      Parameters.ParamByName('PersonelNoTo').Value :=
        GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

      Parameters.ParamByName('ProjectIDFrom').Value :=
        GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
      Parameters.ParamByName('ProjectIDTo').Value :=
        GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

      Parameters.ParamByName('OfficeCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
      Parameters.ParamByName('OfficeCodeTo').Value :=
        GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

      Parameters.ParamByName('MounthFrom').Value :=
        GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
      Parameters.ParamByName('MounthTo').Value :=
        GetcTo(myParams.ParamValues['Mounth'], ftInteger);

      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

      Open;
      Cloned := TADOQuery.Create(nil);
      with Cloned do
        try
          Clone(qryAnalysisSalary, ltReadOnly);
          while not eof do
          begin
            Price := Price + fieldbyname('Price').AsCurrency;
            next;
          end;
        finally
          edtPrice.Text := CurrToStrF(Price, ffCurrency, 0);
          freeAndNil(Cloned);
        end;

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

          if upperCase(Columns[I].FieldName) = 'ORDACCCODE' then
          begin
            Columns[I].Field.Tag := 3;
            Columns[I].Visible := False;
            Columns[I].Field.DisplayLabel := 'ترتيب كد حساب';
          end;

          if upperCase(Columns[I].FieldName) = 'ACCCODE' then
          begin
            Columns[I].Visible := not SplitCode;
            Columns[I].Width := 100;
            Columns[I].Title.Caption := 'كد حساب';
          end
          else if upperCase(Columns[I].FieldName) = 'ACCNAME' then
          begin
            Columns[I].Visible := not SplitCaption;
            Columns[I].Width := 300;
            Columns[I].Title.Caption := 'عنوان حساب';
          end
          else if upperCase(Columns[I].FieldName) = 'PRICE' then
            Columns[I].Title.Caption := 'مبلغ'
          else if upperCase(Columns[I].FieldName) = 'FUNCTIONTIME' then
            Columns[I].Title.Caption := 'ساعت'
          else if upperCase(Columns[I].FieldName) = 'FUNCTIONDAY' then
            Columns[I].Title.Caption := 'روز';

          if Columns[I].Field is TStringField then
            if (pos('date', LowerCase(Columns[I].Field.FieldName)) <> 0) or
              (pos('تاريخ', LowerCase(Columns[I].Field.FieldName)) <> 0) then
              Columns[I].Color := const_Date_columns_color;

          if (Columns[I].Field is TBCDField) or
            (Columns[I].Field is TCurrencyField) then
          begin
            Columns[I].Width := 120;
            TBCDField(Columns[I].Field).Currency := True;
            Columns[I].Color := $00C9FADB;
          end;
          next;
        end;

    end;
SpAnalysisSalaryActualCostsF.grdMaster.DoLoad('');

end;

procedure TSpAnalysisSalaryActualCostsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAnalysisSalary);
end;

procedure TSpAnalysisSalaryActualCostsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.showSearch(qryAnalysisSalary);
end;

procedure TSpAnalysisSalaryActualCostsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdMaster)
end;

procedure TSpAnalysisSalaryActualCostsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try

      AddItem(DMF.adcSalary, 'ProjectID', ' كد پروژه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID AS ProjectID, InfoName_L1 AS ProjectName_L1, InfoName_L2 AS ProjectName_L2 FROM Pay.FormsInfo WHERE(FormType=40) ',
        ' SELECT MIN(Pay.FormsInfo.InfoID) AS Expr1, MAX(Pay.FormsInfo.InfoID) AS Expr2  FROM  Pay.FormsInfo RIGHT OUTER JOIN '
        + ' Pay.Functions ON Pay.FormsInfo.FormInfoID = Pay.Functions.ProjectID ');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1' +
        ' FROM  Pay.FormsInfo  WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT 0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');

      AddItem(DMF.adcSalary, 'Mounth', 'ماه', 'ماه', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 17)',
        'SELECT MIN(InfoID),MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 17)');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TSpAnalysisSalaryActualCostsF.UpdateList;
Var
  DateFrom, DateTo: String;
  TypeFrom: String;
begin
  aWhere := emptystr;
  bWhere := emptystr;

  if Assigned(SetParam) then
  begin
    SetParam.WhereSQL := aWhere;
    SetParam.WhereBeforeYear := bWhere;
    SetParam.Refresh
  end
  else
    FilterStringCaption := Format('شماره پرسنل : از %s تا %s ' + #13#10 +
      ' تاريخ سند حسابداری : از %s تا %s', [PersonelNoFrom, PersonelNoTo,
      DateFrom, DateTo]);

  actDoTrial.Execute;
end;

procedure TSpAnalysisSalaryActualCostsF.actUndoExecute(Sender: TObject);
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
      // qryAnalysisSalary.GotoBookmark(setparam.BootMark);
      SetParam.Free;
      SetParam := tmp;
    end
    else
      SetParam := SetParam;
end;

procedure TSpAnalysisSalaryActualCostsF.grdMasterDblClick(Sender: TObject);
begin
  inherited;
  popGrd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSpAnalysisSalaryActualCostsF.actAddTrialExecute(Sender: TObject);
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

procedure TSpAnalysisSalaryActualCostsF.actRemoveTrialExecute(Sender: TObject);
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

procedure TSpAnalysisSalaryActualCostsF.lstCirculationDblClick(Sender: TObject);
begin
  inherited;
  actRemoveTrial.Execute;
end;

procedure TSpAnalysisSalaryActualCostsF.lstSourceDblClick(Sender: TObject);
begin
  inherited;
  if chkTrial.Checked then
    actAddTrial.Execute;
end;

procedure TSpAnalysisSalaryActualCostsF.lstSourceClick(Sender: TObject);
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

procedure TSpAnalysisSalaryActualCostsF.chkTrialClick(Sender: TObject);
begin
  inherited;
  pnlTrial.Visible := chkTrial.Checked;
  // actDoTrial.Enabled :=  pnltrial.Visible;
end;

procedure TSpAnalysisSalaryActualCostsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('PersonelNo') = nil then
    Close;
end;

procedure TSpAnalysisSalaryActualCostsF.CreateLevel;
var
  aParam: TCirculation;
begin
  inherited;

  if not Assigned(SetParam) then
    exit;
  pnlCirculation.Visible := True;
  pnlAccOld.Visible := True;
  aParam := TCirculation.Create;
  with aParam do
    try
      qryAnalysisSalary.DisableControls;
      AddParam := inttostr(TToolButton(Sender).Tag);
      BaseParam := SetParam.BaseParam + ',' + AddParam;
      AccCode := qryAnalysisSalary.fieldbyname('AccCode').AsString;
      if qryAnalysisSalary.FindField('AccName') <> nil then
        AccName := qryAnalysisSalary.fieldbyname('AccName').AsString;
      SplitCode := chkAccCode.Checked;
      WhereSQL := SetParam.WhereSQL;
      WhereBeforeYear := SetParam.WhereBeforeYear;
      SplitCaption := chkCaption.Checked;
      ParentParam := SetParam;
      // EnabelButton(TtoolButton(Sender).tag,False);
      //
      // BootMark:= qryAnalysisSalary.GetBookmark;
      Refresh;
      SetParam := aParam;
    Finally
      qryAnalysisSalary.EnableControls;
    end;

end;

procedure TSpAnalysisSalaryActualCostsF.initReport;
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

    CreateDBCalc(ppReport1, ppReport1.GroupFooterBand[I], 'SumDebt', 0.01,
      plblPrice.Left, plblPrice.Width, plblPrice.Height);

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

// procedure TAnalysisSalaryF.initReportTrial;
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

procedure TSpAnalysisSalaryActualCostsF.initReportTrial;
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
        aWidth := aLeft - ppLine5.Left + aWidth;
        aLeft := ppLine5.Left;
      end;

      CreateDBText(ppReport1, ppReport1.DetailBand,
        grdMaster.Columns[I].FieldName, 0, aLeft, aWidth, 0, [], False,
        txtAlign);

      CreateText(ppReport1, ppReport1.HeaderBand, aCaption, 90, aLeft, aWidth,
        pplblplbl2.Height, aborder, False, taCentered);

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
      taCentered);
  end;

end;

procedure TSpAnalysisSalaryActualCostsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if ((chkCaption.Checked) And (chkAccCode.Checked) And (chkTrial.Checked)) then
    InitReportFile(ppReport1, 'SpAnalysisSalaryActualCostsF3')
  else
    InitReportFile(ppReport1, 'SpAnalysisSalaryActualCostsF2')
end;

procedure TSpAnalysisSalaryActualCostsF.pplblLblCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSpAnalysisSalaryActualCostsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSpAnalysisSalaryActualCostsF.pplblLblPrintDateGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSpAnalysisSalaryActualCostsF.ppReport1BeforePrint(Sender: TObject);
var
  strFileName: string;
begin
  inherited;
  strFileName := ExtractFileNameWithoutExt(ppReport1.Template.FileName);
  if strFileName = 'AnalysisSalaryActualCosts3' then
    initReportTrial
  else
    initReport;
end;

procedure TSpAnalysisSalaryActualCostsF.mnuN1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'AnalysisSalaryActualCosts')
end;

procedure TSpAnalysisSalaryActualCostsF.mnuN2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'AnalysisSalaryActualCosts1')
end;

procedure TSpAnalysisSalaryActualCostsF.qryAnalysisSalaryAccCodeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if SetParam.AccCode <> emptystr then
    qryAnalysisSalary.fieldbyname('Acccode').AsString :=
      Leftstr(SetParam.AccCode, 5)
end;

procedure TSpAnalysisSalaryActualCostsF.mnu1Click(Sender: TObject);
begin
  inherited;
  treechartF.showChart(qryAnalysisSalary, Self);
end;

procedure TSpAnalysisSalaryActualCostsF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSpAnalysisSalaryActualCostsF.mnuN3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdMaster, 0);
end;

procedure TSpAnalysisSalaryActualCostsF.mnuN4Click(Sender: TObject);
begin
  inherited;
  SetParam.Refresh;
end;

procedure TSpAnalysisSalaryActualCostsF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if (Assigned(SetParam) and Assigned(SetParam.ParentParam)) then
    CanClose := get_response('آيا از خروج مطمئن هستيد؟') = mryes;
end;

procedure TSpAnalysisSalaryActualCostsF.SumSelected;
var
  I: Byte;
  SumPrice: Currency;
begin
  SumPrice := 0;
  if grdMaster.SelectedRows.Count > 1 then
  begin
    with grdMaster.DataSource.DataSet do
      for I := 0 to grdMaster.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdMaster.SelectedRows.Items[I]));
        SumPrice := SumPrice + fieldbyname('Price').AsFloat;
      end;
  end;
  edtSelPrice.Text := CurrToStrF(SumPrice, ffCurrency, 0);
end;

procedure TSpAnalysisSalaryActualCostsF.grdMasterMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if CtrlDown then
    SumSelected;
end;

procedure TSpAnalysisSalaryActualCostsF.FreeSumSelected;
begin
  edtSelPrice.Text := emptystr;
end;

procedure TSpAnalysisSalaryActualCostsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TSpAnalysisSalaryActualCostsF.ppLabel1GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := FilterStringCaption;
end;

procedure TSpAnalysisSalaryActualCostsF.ppLabel2GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := AccCodeForPrint;
end;

procedure TSpAnalysisSalaryActualCostsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TSpAnalysisSalaryActualCostsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
