unit AmvalNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls;

type
  TAmvalNoteF = class(Ttemplate0F)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Shape1: TShape;
    memNote: TMemo;
  private
    { Private declarations }
  public
    Function CallNote(aNote: String): String;
    { Public declarations }
  end;

var
  AmvalNoteF: TAmvalNoteF;

implementation

{$R *.dfm}

{ TNoteF }

function TAmvalNoteF.CallNote(aNote: String): String;
begin
  with TAmvalNoteF.Create(Application) do
  try
    memNote.Text := aNote;
    if ShowModal = mrOk then   Result := memNote.Text
    else Result := aNote;
  finally
    Free;
  end;
end;

end.
