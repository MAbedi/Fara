unit rptFunctionSpecialControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Buttons, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, DBCtrls, ComCtrls, ToolWin, CheckLst, DB, ADODB, StrUtils,
  Menus, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl,
  ppCtrls, ppBands, ppCache, ppVar, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type

  TCirculation = class;

  TrptFunctionSpecialControlF = class(Ttemplate2MDIF)
    actDoTrial: TAction;
    qryRptFSC: TADOQuery;
    srcRptFSC: TDataSource;
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
    btnCirculationAcc: TButton;
    actCirculationAcc: TAction;
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
    Panel1: TPanel;
    lbl1: TLabel;
    edtBalancebed: TEdit;
    edtBes: TEdit;
    edtBed: TEdit;
    edtBalanceBes: TEdit;
    Panel4: TPanel;
    Label1: TLabel;
    edtSelBalancebed: TEdit;
    edtSelBes: TEdit;
    edtSelBed: TEdit;
    edtSelBalanceBes: TEdit;
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
    procedure mnuN1Click(Sender: TObject);
    procedure mnuN2Click(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure mnuN3Click(Sender: TObject);
    procedure mnuN4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdMasterMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);

  private
    aWhere: String;
    bWhere: String;
    myTableKind: Integer;

    // lstSelected:TStringList;
    SetParam: TCirculation;
    procedure initView;
    procedure EnabelButton(inx: Integer; btnState: Boolean);
    procedure AddButtons(ToolBar: TToolBar; const ButtonCaptions: String;
      actTag: Integer);
    Procedure FreeAllCirculationl;
    Procedure UpdateList;
    Procedure CreateLevel(Sender: TObject);
    // Procedure initReport;
    Procedure SumSelected;
    procedure FreeSumSelected;
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
    FTableKind: Integer;
    // FBootMark: TBookmark;
    FWhereBeforeYear: String;
  Private
    // property BootMark : TBookmark  read FBootMark write FBootMark;

    property TableKind: Integer read FTableKind write FTableKind;
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
  rptFunctionSpecialControlF: TrptFunctionSpecialControlF;

implementation

uses
  GlobalPro, Dm, sort2, search2, FilterClass_ADO, filter_ADO,
  TreeChart, DBGrid2Print;

{$R *.dfm}
{ Ttemplate2MDIF1 }

procedure TrptFunctionSpecialControlF.initView;
var
  I: Integer;
begin

  popGrd.Items.Clear;
  I := 0;
  with DMF.qryTmpTmpp do
  begin
    close;
    sql.Text := 'SELECT ID, CaptionName FROM  Util.Analyze';
    sql.Add('WHERE (TableKind = :TableKind )');
    sql.Add('order by ID');
    Parameters.ParamByName('TableKind').Value := myTableKind;
    open;
    while not eof do
    begin
      lstSource.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      AddButtons(tlbCirculation, Fields[1].AsString, Fields[0].AsInteger);
      popGrd.Items.Add(NewItem(Fields[1].AsString, 0, False, True, CreateLevel,
        0, 'Itm' + Fields[0].AsString));
      popGrd.Items[I].Tag := Fields[0].AsInteger;
      if myTableKind = Fields[0].AsInteger then
      begin
        lstSource.ItemIndex := I;
        actAddTrial.Execute;
      end;
      inc(I);
      next;
    end;
  end;
end;

procedure TrptFunctionSpecialControlF.FormCreate(Sender: TObject);
begin
  inherited;
  myTableKind := var_glb_gParam;
  Caption := Caption + IntToStr(myTableKind);
  initView;
end;

procedure TrptFunctionSpecialControlF.FormDestroy(Sender: TObject);

begin
  inherited;
  // SaveColWidth(grdMaster);
  FreeAllCirculationl;
end;

procedure TrptFunctionSpecialControlF.FormResize(Sender: TObject);
begin
  inherited;
//grdMaster.setSizeColDBGrid(True);
end;

procedure TrptFunctionSpecialControlF.actDoTrialExecute(Sender: TObject);
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
      BaseParam := BaseParam + IntToStr(inx) + ',';
    end;
    BaseParam := Leftstr(BaseParam, length(BaseParam) - 1);
    SplitCode := chkAccCode.Checked;
    SplitCaption := chkCaption.Checked;
    ParentParam := nil;
    WhereSQL := aWhere;
    WhereBeforeYear := bWhere;
    TableKind := myTableKind;
    pnlCirculation.Visible := False;
    pnlAccOld.Visible := False;
    if BaseParam <> emptystr then
      Refresh;
    AccCode := qryRptFSC.fieldbyname('AccCode').AsString;
    if qryRptFSC.FindField('AccName') <> nil then
      AccName := qryRptFSC.fieldbyname('AccName').AsString;
  end;
end;

procedure TrptFunctionSpecialControlF.AddButtons;
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

procedure TrptFunctionSpecialControlF.EnabelButton;
var
  I: Integer;
begin
  for I := 0 to tlbCirculation.ButtonCount - 1 do
  begin
    if tlbCirculation.Buttons[I].Tag = inx then
      tlbCirculation.Buttons[I].Enabled := btnState;
    if popGrd.Items[I].Name = 'Itm' + IntToStr(inx) then
      popGrd.Items[I].Enabled := btnState;
  end;
end;

procedure TrptFunctionSpecialControlF.FreeAllCirculationl;
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
  Bed, Bes, BalanceBed, BalanceBes: Currency;
  Cloned: TADOQuery;

begin

  Bed := 0;
  Bes := 0;
  BalanceBed := 0;
  BalanceBes := 0;
  if AddParam = emptystr then
    FinalParam := FBaseParam
  else
    FinalParam := stringreplace(FBaseParam, ',' + AddParam, '', [rfReplaceAll]);
  with rptFunctionSpecialControlF do
    with qryRptFSC do
    begin
      grdMaster.SelectedRows.Clear;
      FreeSumSelected;
      close;
      Parameters.ParamByName('BaseParam').Value := FinalParam;
      Parameters.ParamByName('MargeCode').Value := SplitCode;
      Parameters.ParamByName('MargeCaption').Value := SplitCaption;
      Parameters.ParamByName('FilterParam').Value := AccCode;
      Parameters.ParamByName('AddParam').Value := AddParam;
      Parameters.ParamByName('awhere').Value := WhereSQL;
      Parameters.ParamByName('TableKind').Value := myTableKind;

      open;
      // reeBookmark(grdMaster.SelectedRows);
      Sort := 'AccCode';
      lblOldAcc.Caption := AccCode + ' - ' + AccName;
      Cloned := TADOQuery.Create(nil);
      with Cloned do
        try
          Clone(qryRptFSC, ltReadOnly);
          while not eof do
          begin
            Bed := Bed + fieldbyname('FunctionTime').AsCurrency;
            Bes := Bes + fieldbyname('FunAmount').AsCurrency;
            next;
          end;
        finally
          edtBed.Text := CurrToStrF(Bed, ffCurrency, 0);
          edtBes.Text := CurrToStrF(Bes, ffCurrency, 0);
          edtBalancebed.Text := CurrToStrF(BalanceBed, ffCurrency, 0);
          edtBalanceBes.Text := CurrToStrF(BalanceBes, ffCurrency, 0);
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
          if upperCase(Columns[I].FieldName) = 'ACCCODE' then
          begin
            Columns[I].Visible := not SplitCode;
            Columns[I].Width := 100;
            Columns[I].Title.Caption := 'ﬂœ';
          end
          else if upperCase(Columns[I].FieldName) = 'ACCNAME' then
          begin
            Columns[I].Visible := not SplitCaption;
            Columns[I].Width := 300;
            Columns[I].Title.Caption := '⁄‰Ê«‰';
          end
          else if upperCase(Columns[I].FieldName) = 'FUNCTIONTIME' then
            if myTableKind = 1 then
              Columns[I].Title.Caption := 'ﬂ«—ﬂ—œ'
            else
              Columns[I].Title.Caption := '”«⁄«  ﬂ«—'
          else if upperCase(Columns[I].FieldName) = 'FUNAMOUNT' then
            if myTableKind = 1 then
              Columns[I].Title.Caption := ' ⁄œ«œ ”—ÊÌ” ÕÃ„'
            else
              Columns[I].Title.Caption := '«÷«›Â ﬂ«—';

          if Columns[I].Field is TStringField then
            if (pos('date', LowerCase(Columns[I].Field.FieldName)) <> 0) or
              (pos(' «—ÌŒ', LowerCase(Columns[I].Field.FieldName)) <> 0) then
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
      rptFunctionSpecialControlF.grdMaster.DoLoad('')

    end;
end;

procedure TrptFunctionSpecialControlF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRptFSC);
end;

procedure TrptFunctionSpecialControlF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.showSearch(qryRptFSC);
end;

procedure TrptFunctionSpecialControlF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdMaster)
end;

procedure TrptFunctionSpecialControlF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try

      if myTableKind = 1 then
      begin
        AddItem(DMF.adcSalary, 'ProjectID', 'Å—ÊéÂ', 'ﬂœ', ftInteger, dvMinMax,
          '', '', ciLookup,
          'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 40) ',
          'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 40) ');

        AddItem(DMF.adcSalary, 'CarCode', 'ŒÊœ—Ê', 'ﬂœ', ftInteger, dvMinMax,
          '', '', ciLookup,
          'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 96) ',
          'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 96) ');

        AddItem(DMF.adcSalary, 'ActivityCode', '›⁄«·Ì ', 'ﬂœ', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 40) ',
          'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 40) ');

        AddItem(DMF.adcSalary, 'FunctionKind', 'ﬂ«—ﬂ—œ', 'ﬂœ', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 70) ',
          'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 70) ');

        AddItem(DMF.adcSalary, 'Date', ' «—ÌŒ ﬂ«—ﬂ—œ', ' «—ÌŒ', ftDate,
          dvMinMax, '', '', ciSimple, '',
          'SELECT MIN(ControlDate), MAX(ControlDate) FROM Pay.FunctionspecialControl');

      end
      else
      begin

        AddItem(DMF.adcSalary, 'PeresentID', 'Õ÷Ê—', 'ﬂœ', ftInteger, dvMinMax,
          '', '', ciLookup,
          'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 64) ',
          'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 64) ');

        AddItem(DMF.adcSalary, 'ShiftNo', '‘Ì› ', 'ﬂœ', ftInteger, dvMinMax, '',
          '', ciLookup,
          'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 65) ',
          'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 65) ');

        AddItem(DMF.adcSalary, 'WorkID', '‰Ê⁄ ﬂ«—', 'ﬂœ', ftInteger, dvMinMax,
          '', '', ciLookup,
          'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 40) ',
          'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 40) ');

        AddItem(DMF.adcSalary, 'EarthCode', '“„Ì‰', 'ﬂœ', ftInteger, dvMinMax,
          '', '', ciLookup,
          'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 69) ',
          'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 69) ');

        AddItem(DMF.adcSalary, 'Date', ' «—ÌŒ ﬂ«—ﬂ—œ', ' «—ÌŒ', ftDate,
          dvMinMax, '', '', ciSimple, '',
          'SELECT MIN(FunDate), MAX(FunDate) FROM Pay.FunctionDay');

      end;

      AddItem(DMF.adcSalary, 'PersonelNO', '„‘Œ’«  Å—”‰·Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT PersonelNo , Name_L1+'' ''+lastName_L1 as lastName_L1 FROM Pay.PersonelInfo ',
        'SELECT Min(PersonelNo),Max(PersonelNo) FROM Pay.PersonelInfo');

      AddItem(DMF.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12) ',
        'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 12) ');

      AddItem(DMF.adcSalary, 'ProcCode', '„Õ’Ê·', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 67) ',
        'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 67) ');

      AddItem(DMF.adcSalary, 'YearID', '”«· ﬂ«—ﬂ—œ', '”«·', ftInteger, dvMinMax,
        '', '', ciSimple, '',
        'SELECT MIN(YearID), MAX(YearID) FROM Util.MaliYear');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TrptFunctionSpecialControlF.UpdateList;
Var
  DateFrom, DateTo: String;
  PersonelNOFrom, PersonelNOTo: String;
  OfficeCodeFrom, OfficeCodeTo: String;
  ProjectIDFrom, ProjectIDTo: String;
  CarCodeFrom, CarCodeTo: String;
  ProcCodeFrom, ProcCodeTo: String;
  ActivityCodeFrom, ActivityCodeTo: String;
  FunctionKindFrom, FunctionKindTo: String;
  YearIDFrom, YearIDTo: String;

  PeresentIDFrom, PeresentIDTo: String;
  ShiftNoFrom, ShiftNoTo: String;
  WorkIDFrom, WorkIDTo: String;
  EarthCodeFrom, EarthCodeTo: String;

begin
  aWhere := emptystr;
  bWhere := emptystr;

  PersonelNOFrom := GetcFrom(myParams.ParamValues['PersonelNO'], ftInteger);
  PersonelNOTo := GetcTo(myParams.ParamValues['PersonelNO'], ftInteger);

  OfficeCodeFrom := GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
  OfficeCodeTo := GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

  ProcCodeFrom := GetcFrom(myParams.ParamValues['ProcCode'], ftInteger);
  ProcCodeTo := GetcTo(myParams.ParamValues['ProcCode'], ftInteger);

  DateFrom := GetcFrom(myParams.ParamValues['Date'], ftString);
  DateTo := GetcTo(myParams.ParamValues['Date'], ftString);

  if myTableKind = 1 then
  begin
    ProjectIDFrom := GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    ProjectIDTo := GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    CarCodeFrom := GetcFrom(myParams.ParamValues['CarCode'], ftInteger);
    CarCodeTo := GetcTo(myParams.ParamValues['CarCode'], ftInteger);

    ActivityCodeFrom := GetcFrom(myParams.ParamValues['ActivityCode'],
      ftInteger);
    ActivityCodeTo := GetcTo(myParams.ParamValues['ActivityCode'], ftInteger);

    FunctionKindFrom := GetcFrom(myParams.ParamValues['FunctionKind'],
      ftInteger);
    FunctionKindTo := GetcTo(myParams.ParamValues['FunctionKind'], ftInteger);

    YearIDFrom := GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    YearIDTo := GetcTo(myParams.ParamValues['YearID'], ftInteger);

    Add2Filter(aWhere,
      Format('ISNULL(FunctionSpecialControl.ProjectID, 0) Between %S And %S',
      [ProjectIDFrom, ProjectIDTo]));
    Add2Filter(aWhere,
      Format('ISNULL(FunctionSpecialControl.CarCode, 0) Between %S And %S',
      [CarCodeFrom, CarCodeTo]));
    Add2Filter(aWhere,
      Format('ISNULL(FunctionSpecialControl.ProcCode, 0) Between %S And %S',
      [ProcCodeFrom, ProcCodeTo]));
    Add2Filter(aWhere,
      Format('ISNULL(FunctionSpecialControl.ActivityCode, 0) Between %S And %S',
      [ActivityCodeFrom, ActivityCodeTo]));
    Add2Filter(aWhere,
      Format('ISNULL(FunctionSpecialControl.FunctionKind, 0) Between %S And %S',
      [FunctionKindFrom, FunctionKindTo]));

    Add2Filter(aWhere,
      Format('FunctionSpecialControl.PersonelNo  Between %S And %S',
      [PersonelNOFrom, PersonelNOTo]));
    Add2Filter(aWhere,
      Format('FunctionSpecialControl.OfficeCode Between %S And %S',
      [OfficeCodeFrom, OfficeCodeTo]));
    Add2Filter(aWhere,
      Format('FunctionSpecialControl.ControlDate   Between %S And %S',
      [QuotedStr(DateFrom), QuotedStr(DateTo)]));
    Add2Filter(aWhere, Format('FunctionSpecialControl.YearID Between %S And %S',
      [YearIDFrom, YearIDTo]));

  end
  else
  begin

    PeresentIDFrom := GetcFrom(myParams.ParamValues['PeresentID'], ftInteger);
    PeresentIDTo := GetcTo(myParams.ParamValues['PeresentID'], ftInteger);

    ShiftNoFrom := GetcFrom(myParams.ParamValues['ShiftNo'], ftInteger);
    ShiftNoTo := GetcTo(myParams.ParamValues['ShiftNo'], ftInteger);

    WorkIDFrom := GetcFrom(myParams.ParamValues['WorkID'], ftInteger);
    WorkIDTo := GetcTo(myParams.ParamValues['WorkID'], ftInteger);

    EarthCodeFrom := GetcFrom(myParams.ParamValues['EarthCode'], ftInteger);
    EarthCodeTo := GetcTo(myParams.ParamValues['EarthCode'], ftInteger);

    Add2Filter(aWhere,
      Format('ISNULL(FunctionDayItems.PeresentID, 0) Between %S And %S',
      [PeresentIDFrom, PeresentIDTo]));
    Add2Filter(aWhere,
      Format('ISNULL(FunctionDayItems.ShiftNo, 0) Between %S And %S',
      [ShiftNoFrom, ShiftNoTo]));
    Add2Filter(aWhere,
      Format('ISNULL(FunctionDayItems.WorkID, 0) Between %S And %S',
      [WorkIDFrom, WorkIDTo]));
    Add2Filter(aWhere,
      Format('ISNULL(FunctionDayItems.EarthCode, 0) Between %S And %S',
      [EarthCodeFrom, EarthCodeTo]));

    Add2Filter(aWhere, Format('FunctionDay.FunDate  Between %S And %S',
      [QuotedStr(DateFrom), QuotedStr(DateTo)]));
    Add2Filter(aWhere, Format('FunctionDayItems.PersonelNo  Between %S And %S',
      [PersonelNOFrom, PersonelNOTo]));
    Add2Filter(aWhere, Format('FormsInfo.InfoID Between %S And %S',
      [OfficeCodeFrom, OfficeCodeTo]));
    Add2Filter(aWhere,
      Format('ISNULL(FunctionDayItems.ProcCode, 0) Between %S And %S',
      [ProcCodeFrom, ProcCodeTo]));
  end;

  if Assigned(SetParam) then
  begin
    SetParam.WhereSQL := aWhere;
    SetParam.WhereBeforeYear := bWhere;
    SetParam.Refresh
  end
  else
    actDoTrial.Execute;
end;

procedure TrptFunctionSpecialControlF.actUndoExecute(Sender: TObject);
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
      // qryRptFSC.GotoBookmark(setparam.BootMark);
      SetParam.Free;
      SetParam := tmp;
    end
    else
      SetParam := SetParam;
end;

procedure TrptFunctionSpecialControlF.grdMasterDblClick(Sender: TObject);
begin
  inherited;
  popGrd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptFunctionSpecialControlF.actAddTrialExecute(Sender: TObject);
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

procedure TrptFunctionSpecialControlF.actRemoveTrialExecute(Sender: TObject);
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

procedure TrptFunctionSpecialControlF.lstCirculationDblClick(Sender: TObject);
begin
  inherited;
  actRemoveTrial.Execute;
end;

procedure TrptFunctionSpecialControlF.lstSourceDblClick(Sender: TObject);
begin
  inherited;
  if chkTrial.Checked then
    actAddTrial.Execute;
end;

procedure TrptFunctionSpecialControlF.lstSourceClick(Sender: TObject);
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

procedure TrptFunctionSpecialControlF.chkTrialClick(Sender: TObject);
begin
  inherited;
  pnlTrial.Visible := chkTrial.Checked;
  // actDoTrial.Enabled :=  pnltrial.Visible;
end;

procedure TrptFunctionSpecialControlF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;
end;

procedure TrptFunctionSpecialControlF.CreateLevel;
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
      qryRptFSC.DisableControls;
      AddParam := IntToStr(TToolButton(Sender).Tag);
      BaseParam := SetParam.BaseParam + ',' + AddParam;
      AccCode := qryRptFSC.fieldbyname('AccCode').AsString;
      if qryRptFSC.FindField('AccName') <> nil then
        AccName := qryRptFSC.fieldbyname('AccName').AsString;
      SplitCode := chkAccCode.Checked;
      WhereSQL := SetParam.WhereSQL;
      WhereBeforeYear := SetParam.WhereBeforeYear;
      SplitCaption := chkCaption.Checked;
      ParentParam := SetParam;
      // EnabelButton(TtoolButton(Sender).tag,False);
      //
      // BootMark:= qryRptFSC.GetBookmark;
      Refresh;
      SetParam := aParam;
    Finally
      qryRptFSC.EnableControls;
    end;

end;

procedure TrptFunctionSpecialControlF.pplblLblCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := appbank.CompanyName;
end;

procedure TrptFunctionSpecialControlF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptFunctionSpecialControlF.pplblLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptFunctionSpecialControlF.ppReport1BeforePrint(Sender: TObject);
begin
  inherited;
  // initReport;
end;

procedure TrptFunctionSpecialControlF.mnuN1Click(Sender: TObject);
begin
  inherited;
  // InitReportFile(ppReport1,'specialTrialBalance',grdMaster)
end;

procedure TrptFunctionSpecialControlF.mnuN2Click(Sender: TObject);
begin
  inherited;
  // InitReportFile(ppReport1,'specialTrialBalance1',grdMaster)
end;

procedure TrptFunctionSpecialControlF.mnu1Click(Sender: TObject);
begin
  inherited;
  treechartF.showChart(qryRptFSC, Self);
end;

procedure TrptFunctionSpecialControlF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptFunctionSpecialControlF.mnuN3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdMaster, 0);
end;

procedure TrptFunctionSpecialControlF.mnuN4Click(Sender: TObject);
begin
  inherited;
  SetParam.Refresh;
end;

procedure TrptFunctionSpecialControlF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if (Assigned(SetParam) and Assigned(SetParam.ParentParam)) then
    CanClose := get_response('¬Ì« «“ Œ—ÊÃ „ÿ„∆‰ Â” Ìœø') = mryes;
end;

procedure TrptFunctionSpecialControlF.SumSelected;
var
  I: Byte;
  SumBed: Currency;
  SumBes: Currency;
  SumBalanceBed: Currency;
  SumBalanceBes: Currency;
begin
  SumBed := 0;
  SumBes := 0;
  SumBalanceBed := 0;
  SumBalanceBes := 0;
  if grdMaster.SelectedRows.Count > 1 then
  begin
    with grdMaster.DataSource.DataSet do
      for I := 0 to grdMaster.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdMaster.SelectedRows.Items[I]));
        SumBed := SumBed + fieldbyname('FunctionTime').AsFloat;
        SumBes := SumBes + fieldbyname('FunAmount').AsFloat;
      end;
  end;
  edtSelBed.Text := CurrToStrF(SumBed, ffCurrency, 0);
  edtSelBes.Text := CurrToStrF(SumBes, ffCurrency, 0);
  edtSelBalancebed.Text := CurrToStrF(SumBalanceBed, ffCurrency, 0);
  edtSelBalanceBes.Text := CurrToStrF(SumBalanceBes, ffCurrency, 0);
end;

procedure TrptFunctionSpecialControlF.grdMasterMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if CtrlDown then
    SumSelected;
end;

procedure TrptFunctionSpecialControlF.FreeSumSelected;
begin
  edtSelBed.Text := emptystr;
  edtSelBes.Text := emptystr;
  edtSelBalancebed.Text := emptystr;
  edtSelBalanceBes.Text := emptystr;
end;

end.
