unit frmUpdateInfo;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Forms, Vcl.StdCtrls, Vcl.Controls, Vcl.ExtCtrls,
  uUpdateSystem;

type

  TfrmUpdateInfo = class(TForm)
    lblVersion: TLabel;
    lstChanges: TListBox;
    memMessages: TMemo;
    memAlert: TMemo;
    btnClose: TButton;

  public

    procedure LoadData(U: TUpdateSystem);

  end;

implementation



procedure TfrmUpdateInfo.LoadData(U: TUpdateSystem);
var
  c: TChangeItem;
  m: TMessageItem;
begin

  lblVersion.Caption :=
    'نسخه جدید سیستم: ' +
    U.SystemInfo.LastVersion;

  lstChanges.Clear;

  for c in U.Changes do
    lstChanges.Items.Add(
      c.Version + ' - ' + c.Desc
    );

  memMessages.Clear;

  for m in U.Messages do
    memMessages.Lines.Add(m.Text);

  if U.AlertActive then
  begin
    memAlert.Visible := True;
    memAlert.Lines.Text := U.AlertText;
  end
  else
    memAlert.Visible := False;

end;

end.

