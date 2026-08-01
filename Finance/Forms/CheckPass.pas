unit CheckPass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, OffBtn;

type
  TCheckPassF = class(TForm)
    edtTxt: TEdit;
    lblMsg: TLabel;
    Shape1: TShape;
    Office97Button1: TOffice97Button;
    Office97Button2: TOffice97Button;
    procedure edtTxtKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
     Function CheckAccurateUser(Const ACaption,Msg:String;PassChar:Char=#0):String;
    { Public declarations }
  end;

var
  CheckPassF: TCheckPassF;

implementation

{$R *.dfm}

{ TForm1 }

function TCheckPassF.CheckAccurateUser;
begin

  with TCheckPassF.Create(Application) do
  try
    Caption := ACaption;
    edtTxt.PasswordChar := PassChar;
    lblMsg.Caption := Msg;
    if ShowModal = mrOk then Result := Trim(edtTxt.Text);
  finally
    Free;
  end;
end;

procedure TCheckPassF.edtTxtKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ModalResult := mrOk;
  end;
end;

end.
