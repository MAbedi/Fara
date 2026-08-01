unit template2MDI;

interface

uses
  SysUtils, Classes, Controls, Forms, StdCtrls, Grids, Vcl.DBGrids, ExtCtrls,
  Buttons, ActnList, DBActns, DB, InitPop, IniLang, Tabs, ImgList, FaraConsts,
  System.Actions, System.ImageList, CedarDbGrid, System.math, ppCtrls, StrUtils,
  uAppUsageLogger, System.Variants, Data.Win.ADODB;

type
  Ttemplate2MDIF = class(TForm)
    ActionList: TActionList;
    PnlUnderButton: TPanel;
    BtnReject: TBitBtn;
    Panel2: TPanel;
    ImgTemplate: TImage;
    Panel3: TPanel;
    lblCaption: TLabel;
    actExit: TAction;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    actSearch_: TAction;
    DataSetDelete1_: TDataSetDelete;
    ImageList1: TImageList;
    actshowChart: TAction;
    actSmsSend: TAction;
    actManagGridColumns: TAction;
    lblBaseDate: TLabel;
    actSearch_2: TAction;
    actSort_: TAction;
    _actSearch: TAction;
    procedure actExitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid_Title_Click(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure pdbtxtAmountSplitGetText(Sender: TObject; var Text: string);
    procedure pdbtxtHyperLinkChatIDGetText(Sender: TObject; var Text: string);
    procedure pdbtxtHyperLinkRevSetId(Sender: TObject; var Text: string);
    procedure pplblYearIdGetText(Sender: TObject; var Text: string);
    procedure AllFloatToTimeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ppAllFloatToTimeGetText(Sender: TObject; var Text: string);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure pdbtxtShamsi2Miladi1GetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
    FOpenTime: TDateTime;
    FMyParams: TParams;
  protected
    procedure DoShow; override;
    procedure DoClose(var Action: TCloseAction); override;
  public
    MyEntityDisplayType: Byte;
    procedure RefreshTab;
    property MyParams: TParams read FMyParams;
    property MyParams2: TParams read FMyParams;
    procedure CopyParamsFrom(Source: TParams);
  end;

var
  template2MDIF: Ttemplate2MDIF;

implementation

uses DM, GlobalPro, FormFunctions, SumDBGrid, mdiMain, shamsiDate,
  SalaryFunctions;

{$R *.dfm}
// just a test!

function FindParamCI(Params: TParams; const AName: string): TParam;
var
  i: Integer;
begin
  Result := nil;
  if Params = nil then
    Exit;

  for i := 0 to Params.Count - 1 do
    if SameText(Params[i].Name, AName) then
    begin
      Result := Params[i];
      Exit;
    end;
end;

procedure Ttemplate2MDIF.CopyParamsFrom(Source: TParams);
var
  i: Integer;
  SrcParam, DestParam: TParam;
  V: Variant;
begin
  if not Assigned(Source) then
    Exit;
  if Source.Count > 100 then
    Exit;

  FMyParams.Clear;

  for i := 0 to Source.Count - 1 do
  begin
    SrcParam := Source[i];

    // ساخت پارامتر با CreateParam (مخصوص TParams)
    DestParam := FMyParams.CreateParam(SrcParam.DataType, SrcParam.Name,
      SrcParam.ParamType);

    // کپی ویژگی‌های اضافی
    DestParam.Size := SrcParam.Size;
    DestParam.Precision := SrcParam.Precision;
    DestParam.NumericScale := SrcParam.NumericScale;

    // warn('Param: ' + SrcParam.Name + '  Type: ' + IntToStr(VarType(SrcParam.Value)));
    // ----- کپی امن مقدار -----
    V := SrcParam.Value;

    if VarIsNull(V) or VarIsEmpty(V) or (VarType(V) = varError) then
    begin
      DestParam.Value := Null;
    end
    else
    begin
      try
        DestParam.Value := V;
      except
        on E: EVariantError do
        begin
          case VarType(V) of
            varSmallint, varInteger, varByte, varWord, varLongWord, varShortInt:
              DestParam.Value := Integer(V);

            varInt64:
              DestParam.Value := Int64(V);

            varSingle, varDouble, varCurrency:
              DestParam.Value := Double(V);

            varBoolean:
              DestParam.Value := Boolean(V);

            varDate:
              DestParam.Value := TDateTime(V);

            varOleStr, varString, varUString:
              DestParam.Value := VarToStr(V);

          else
            try
              DestParam.Value := VarToStr(V);
            except
              DestParam.Value := Null;
            end;
          end;
        end;
        on E: EIntOverflow do
          DestParam.Value := Int64(V);
      end;
    end;
  end;
end;

procedure Ttemplate2MDIF.actExitExecute(Sender: TObject);
begin
  ModalResult := mrOk;
  Close;
end;

procedure Ttemplate2MDIF.FormShow(Sender: TObject);
var
  i: Integer;
  alabel: TLabel;
  aFloatField: TFloatField;
  aDBgrid: TDBGrid;
  myTabChangeEvent: TTabChangeEvent;
begin
  lblCaption.Caption := Caption;
  for i := 0 to ComponentCount - 1 do
  begin
    if (components[i] is TDBGrid) or (components[i] is TsumGrid) then
    begin
      aDBgrid := TDBGrid(components[i]);
      // if Assigned( aDBgrid.DataSource.DataSet) then
      // if aDBgrid.DataSource.DataSet is TClientDataSet then
      // aDBgrid.DrawingStyle:=gdsClassic
      // else

      setColumns2(aDBgrid, opt.DefaultDateActive, 'DefaultDate');
      setColumns2(aDBgrid, opt.DefaultDateActive, 'DefaultDuration');

      aDBgrid.DrawingStyle := gdsClassic; // gdsGradient;
      if aDBgrid.Tag <> 111 then
      begin
        aDBgrid.OnTitleClick := DBGrid_Title_Click;
        aDBgrid.Options := aDBgrid.Options + [dgTitleClick];
      end;
    end; // if dbgride

    if (components[i] is TCedarDbgrid) then
    begin

      setColumns2(TCedarDbgrid(components[i]), opt.DefaultDateActive,
        'DefaultDate');
      setColumns2(TCedarDbgrid(components[i]), opt.DefaultDateActive,
        'DefaultDuration');
    end;

  end;
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if components[i] is TLabel then
    begin
      alabel := TLabel(components[i]);
      if Pos('entity', LowerCase(alabel.Name)) <> 0 then
        alabel.Caption := StringReplace(alabel.Caption, 'مقدار',
          opt.EntityCaption, []);
      if Pos('weight', LowerCase(alabel.Name)) <> 0 then
        alabel.Caption := StringReplace(alabel.Caption, 'وزن',
          opt.WeightCaption, []);
    end; // if
    if components[i] is TFloatField then
    begin
      aFloatField := TFloatField(components[i]);
      if Pos('entity', LowerCase(aFloatField.Name)) <> 0 then
        aFloatField.DisplayLabel := StringReplace(aFloatField.DisplayLabel,
          'مقدار', opt.EntityCaption, []);
      if Pos('weight', LowerCase(aFloatField.Name)) <> 0 then
        aFloatField.DisplayLabel := StringReplace(aFloatField.DisplayLabel,
          'وزن', opt.WeightCaption, []);
    end; // if
  end; // fo
  AccChangeNames(Self);
  SetUserQualitativeOnForms(Self);

  if Assigned(myMdiChildrenTabs) then
  begin
    myMdiChildrenTabs.Tabs.AddObject(TForm(FindControl(Self.Handle)).Caption,
      TObject(Self.Handle));
    myTabChangeEvent := myMdiChildrenTabs.OnChange;
    myMdiChildrenTabs.OnChange := nil;
    myMdiChildrenTabs.TabIndex := -1 + myMdiChildrenTabs.Tabs.Count;
    myMdiChildrenTabs.Visible := myMdiChildrenTabs.Tabs.Count > 0;
    myMdiChildrenTabs.OnChange := myTabChangeEvent;
  end;
end;

procedure Ttemplate2MDIF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnResize := nil;
  Action := caFree;
end;

procedure Ttemplate2MDIF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (DataSetInsert1.DataSource <> nil) and (leftStr(Name, 9) <> 'DocumentF')
  then
    FormCloseQry(DataSetInsert1.DataSource.DataSet)
end;

procedure Ttemplate2MDIF.DBGrid_Title_Click(Column: TColumn);
begin
  SortTitle(Column)
end;

procedure Ttemplate2MDIF.FormCreate(Sender: TObject);
begin
  // HookADOQueries(AppLogger, [Self.Name]);
  if (optSub.Subsys[26] = '1') and (optSub.Subsys[25] = '1') then
    GetYearMounth(var_glb_CurrentMonth);

  actManagGridColumns.Visible := User.PowerUser;
  MyEntityDisplayType := opt.EntityDisplayType;
  if CLini <> nil then
    fillProps([Self], CLini);
  FMyParams := DB.TParams.Create(Self);
  if mdiMainF.MainFrame.GetActiveIndex = 13 then
    SetUserQualitativeOnForms(Self);
end;

procedure Ttemplate2MDIF.FormDestroy(Sender: TObject);
var
  idx: Integer;
  myTabChangeEvent: TTabChangeEvent;
begin
  opt.PayablePriceActive := false;
  if Assigned(myMdiChildrenTabs) then
  begin
    myTabChangeEvent := myMdiChildrenTabs.OnChange;
    myMdiChildrenTabs.OnChange := nil;
    idx := myMdiChildrenTabs.Tabs.IndexOfObject(TObject(Self.Handle));
    if idx > -1 then
      myMdiChildrenTabs.Tabs.Delete(idx);
    myMdiChildrenTabs.Visible := myMdiChildrenTabs.Tabs.Count > 0;
    myMdiChildrenTabs.OnChange := myTabChangeEvent;
  end;
  FMyParams.free;
end;

procedure Ttemplate2MDIF.DBnum2alphabetGetText(Sender: TObject;
  var Text: String);
var
  c: currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    numReail2Toman(Sender, c);
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure Ttemplate2MDIF.DoClose(var Action: TCloseAction);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(Caption, FOpenTime);
  inherited;
end;

procedure Ttemplate2MDIF.DoShow;
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(Caption, FOpenTime);
  inherited;
end;

procedure Ttemplate2MDIF.pdbtxtAmountSplitGetText(Sender: TObject;
  var Text: string);
var
  s: string;
  i: Integer;
begin
  inherited;
  s := Text;
  Text := EmptyStr;
  for i := Length(s) downto 1 do
    Text := Text + ' ' + s[i];

  for i := Length(s) to 15 do
    Text := Text + ' #';

end;

procedure Ttemplate2MDIF.pdbtxtHyperLinkChatIDGetText(Sender: TObject;
  var Text: string);
var
  ID: Integer;
  s: string;
begin
  if Sender is TppDBText then
    s := (Sender as TppDBText).Hyperlink
  else if Sender is TppDBCalc then
    s := (Sender as TppDBCalc).Hyperlink;

  if TryStrToInt(s, ID) then
  begin
    Text := MidStr(Text, ID, 1);
    if Text.Trim = EmptyStr then
      Text := '#';
  end;
end;

procedure Ttemplate2MDIF.pdbtxtHyperLinkRevSetId(Sender: TObject;
  var Text: string);
var
  ID: Integer;
  s: string;
begin
  if Sender is TppDBText then
    s := (Sender as TppDBText).Hyperlink
  else if Sender is TppDBCalc then
    s := (Sender as TppDBCalc).Hyperlink;

  if TryStrToInt(s, ID) then
  begin
    Text := ReverseString(Text);
    Text := MidStr(Text, ID, 1);
    if Text.Trim = EmptyStr then
      Text := '#';
  end;

end;

procedure Ttemplate2MDIF.pplblYearIdGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := IntToStr(APPBank.Year);
end;

procedure Ttemplate2MDIF.RefreshTab;
var
  idx: Integer;
begin
  idx := myMdiChildrenTabs.Tabs.IndexOfObject(TObject(Self.Handle));
  if idx <> -1 then
    myMdiChildrenTabs.Tabs[idx] := Caption;
end;

procedure Ttemplate2MDIF.ppAllFloatToTimeGetText(Sender: TObject;
  var Text: string);
begin
  if Text <> EmptyStr then
    Text := FloatToTime(Text.ToExtended())
end;

procedure Ttemplate2MDIF.AllFloatToTimeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FloatToTime(Sender.AsFloat)
end;

procedure Ttemplate2MDIF.ppDBCalcnum2alphabetGetText(Sender: TObject;
  var Text: String);
var
  c: currency;
begin
  inherited;
  Text := ReplaceStr(Text, ''#$200D, '').Trim;
  Text := ReplaceStr(Text, ',', '').Trim;
  if TryStrToCurr(Text, c) then
  begin
    numReail2Toman(Sender, c);
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure Ttemplate2MDIF.pdbtxtShamsi2Miladi1GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := DateToStr(Shamsi2Miladi(Text));
end;

end.
