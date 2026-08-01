unit GetFaraFields;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
{$IFDEF DELPHI6_LVL}
  Variants,
{$ENDIF}
  ComCtrls, StdCtrls, DB, ADODB, ExtCtrls;

type
  TGetFaraFieldsF = class(TForm)
    lvVars: TListView;
    Label1: TLabel;
    qryWageFormula: TADOQuery;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LoadVariables;
    class procedure EditPasteText(AEdit: TCustomEdit; AText: string);
    class procedure EditSetCursorPos(AEdit: TCustomEdit; AX, AY: integer);
  protected
    procedure Loaded; override;
  public
    class procedure Execute(ADiagram: TWinControl; AX, AY: integer);
    class procedure EditDragDrop(Sender, Source: TObject;
      ABrackets, AKey: boolean);
    class procedure EditDragOver(Sender, Source: TObject; X, Y: integer;
      var Accept: boolean);
  end;

implementation

uses
  Clipbrd;

{$R *.DFM}

var
  GetFaraFieldsF: TGetFaraFieldsF;

  { TGetFaraFieldsF }

class procedure TGetFaraFieldsF.EditDragDrop(Sender, Source: TObject;
  ABrackets, AKey: boolean);
var
  txt: string;
  Success: boolean;
  RetryCount: integer;
begin
  if (Source is TListView) and (TListView(Source).Selected <> nil) then
  begin
    if AKey then
      txt := TListView(Source).Selected.Caption
    else
      txt := Trim(TListView(Source).Selected.SubItems.Text);
    if ABrackets then
      txt := '[' + txt + ']';

    txt := ' ' + txt + ' ';
    RetryCount := 0;
    Success := False;
    while not Success do
      try
        // Set the clipboard
        EditPasteText(TCustomEdit(Sender), txt);
        Success := True;
      except
        on Exception do
        begin
          Inc(RetryCount);
          if RetryCount < 6 then
            Sleep(RetryCount * 100)
          else
            raise Exception.Create('Cannot set clipboard');
        end;
      end;

  end;
end;

class procedure TGetFaraFieldsF.EditDragOver(Sender, Source: TObject;
  X, Y: integer; var Accept: boolean);
begin
  Accept := (Source is TListView) and (TListView(Source).Selected <> nil);
  if Accept then
    EditSetCursorPos(TCustomEdit(Sender), X, Y);
end;

class procedure TGetFaraFieldsF.EditPasteText(AEdit: TCustomEdit;
  AText: string);
var
  clip: string;
begin
  if Clipboard.HasFormat(CF_TEXT) then
    clip := Clipboard.AsText
  else
    clip := '';
  try
    Clipboard.AsText := AText;
    AEdit.PasteFromClipboard;
  finally
    Clipboard.AsText := clip;
  end;
end;

class procedure TGetFaraFieldsF.EditSetCursorPos(AEdit: TCustomEdit;
  AX, AY: integer);
begin
  AEdit.SetFocus;
  if AEdit.Owner is TForm then
    TForm(AEdit.Owner).SetFocus;
  AEdit.SelStart := LoWord(AEdit.Perform(EM_CHARFROMPOS, 0,
    MakeLParam(AX, AY)));
end;

class procedure TGetFaraFieldsF.Execute(ADiagram: TWinControl; AX, AY: integer);
begin
  if Assigned(GetFaraFieldsF) then
    GetFaraFieldsF.Close;

  GetFaraFieldsF := TGetFaraFieldsF.Create(Application);
  with GetFaraFieldsF do
  begin
    LoadVariables;
    Left := AX;
    Top := AY;
    if Left + Width > Screen.Width then
      Left := Screen.Width - Width;
    if Top + Height > Screen.Height then
      Top := Screen.Height - Height;
    Show;
  end;
end;

procedure TGetFaraFieldsF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  GetFaraFieldsF := nil;
end;

procedure TGetFaraFieldsF.Loaded;
begin
  inherited;
  with lvVars.Columns.Add do
  begin
    Caption := 'مقدار';
    Width := 300;
  end;
  with lvVars.Columns.Add do
  begin
    Caption := 'شرح';
    Width := 200;
    Color := $00C9FADB;
  end;
end;

procedure TGetFaraFieldsF.LoadVariables;
var
  i: integer;
  procedure AddVar(AName, ADescription: string);
  begin
    with lvVars.Items.Add do
    begin
      Caption := AName;
      SubItems.Add(ADescription);
    end;
  end;

begin
  lvVars.Items.BeginUpdate;
  try
    lvVars.Items.Clear;
    // lvVars.SortType := stText;
    // for i := 0 to FDiagram.Variables.Count - 1 do
    // AddVar(FDiagram.Variables[i].Name, FDiagram.Variables[i].Description);
    // lvVars.SortType := stNone;
    With qryWageFormula do
    begin
      Active := False;
      Active := True;
      while not Eof do
      begin
        AddVar(FieldByName('ID').AsString, FieldByName('Name').AsString);
        Next;
      end;
      Active := False;
    end;
    // AddVar('FunctionsAll.FunctionDay', 'روزهای کارکرد');
    // AddVar('FunctionsAll.FunctionTime', 'ساعت کارکرد');
    // AddVar('FixedCalculated.Price', 'محاسبه قبلی');
    // AddVar('InterdictForUse.Amount', 'مبلغ حکم');
  finally
    lvVars.Items.EndUpdate;
  end;
end;

end.
