unit template4;

interface

uses
  Classes, Controls, Forms, InitPop, Vcl.DBCtrls, System.SysUtils,
  StdCtrls, ExtCtrls, Buttons, DBActns, ActnList, IniLang, DB, DM,
  System.Actions, System.Math, System.StrUtils, ppCtrls, uAppUsageLogger  ;

type
  TTemplate4F = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    lblTopic0: TLabel;
    lblTopic1: TLabel;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    pnlDown: TPanel;
    btnClose: TBitBtn;
    Bevel1: TBevel;
    actSmsSend: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure DBnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure pdbtxtAmountSplitGetText(Sender: TObject; var Text: string);
    procedure pdbtxtHyperLinkChatIDGetText(Sender: TObject; var Text: string);
    procedure pdbtxtHyperLinkRevSetId(Sender: TObject; var Text: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FOpenTime: TDateTime;
  protected
    FMyParams: TParams;
    procedure DoShow; override;
    { Private declarations }
  public
    MyEntityDisplayType: Byte;
    property MyParams: TParams read FMyParams;
    { Public declarations }
  end;

var
  Template4F: TTemplate4F;

implementation

uses GlobalPro, FormFunctions, shamsiDate;

{$R *.dfm}

procedure TTemplate4F.DoShow;
begin
  inherited;
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(Caption, FOpenTime);
end;

procedure TTemplate4F.FormShow(Sender: TObject);
begin
  Realign;
  ColorDBEdits(Self);
  if Self.Name <> 'TozinDeficitsF' then
    SetUserQualitativeOnForms(Self);
end;

procedure TTemplate4F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(Caption, FOpenTime);
end;

procedure TTemplate4F.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DataSetPost1.DataSource <> nil then
    FormCloseQry(DataSetPost1.DataSource.DataSet)
end;

procedure TTemplate4F.FormCreate(Sender: TObject);
begin
  MyEntityDisplayType := opt.EntityDisplayType;
  if CLini <> nil then
    fillProps([Self], CLini);
  FMyParams := DB.TParams.Create(Self);
    Self.Font := var_glb_DefaultFont;


end;

procedure TTemplate4F.FormDestroy(Sender: TObject);
begin
  FMyParams.free // FreeAndNil(FMyParams);
end;

procedure TTemplate4F.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TTemplate4F.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TTemplate4F.DBnum2alphabetGetText(Sender: TObject; var Text: String);
var
  c: currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure TTemplate4F.pdbtxtAmountSplitGetText(Sender: TObject;
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

  for i := Length(s) to 30 do
    Text := Text + ' #'

end;

procedure TTemplate4F.pdbtxtHyperLinkChatIDGetText(Sender: TObject;
  var Text: string);
var
  ID: Largeint;
  s: string;
begin
  if Sender is TppDBText then
    s := (Sender as TppDBText).Hyperlink
  else if Sender is TppDBCalc then
    s := (Sender as TppDBCalc).Hyperlink;

  if TryStrToInt64(s, ID) then
  begin
    Text := MidStr(Text, ID, 1);
    if Text.Trim = EmptyStr then
      Text := '#';
  end;
end;

procedure TTemplate4F.pdbtxtHyperLinkRevSetId(Sender: TObject;
  var Text: string);
var
  ID: Largeint;
  s: string;
begin
  if Sender is TppDBText then
    s := (Sender as TppDBText).Hyperlink
  else if Sender is TppDBCalc then
    s := (Sender as TppDBCalc).Hyperlink;

  if TryStrToInt64(s, ID) then
  begin
    Text := ReverseString(Text);
    Text := MidStr(Text, ID, 1);
    if Text.Trim = EmptyStr then
      Text := '#';
  end

end;

end.
