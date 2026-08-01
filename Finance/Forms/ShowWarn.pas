unit ShowWarn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls;

type
  TTypeError =(eError,eCorect);
  TfrmShowWarn = class(TFrame)
  lstWarn: TListBox;
    procedure lstWarnDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
     TypeError : TTypeError;
    { Private declarations }
  public
    procedure ShowWarn(Const st:TStrings;aParent:TForm);
    { Public declarations }
  end;
var
  ShowError : TfrmShowWarn;

implementation

uses DateUtils;


{$R *.dfm}



procedure TfrmShowWarn.lstWarnDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  Mas:  array[TTypeError] of (clRed,clGreen);
begin
  with (Control as TListBox).Canvas do
  begin
    Font.Color:=tcolor(Mas[TypeError]);
    FillRect(Rect);
    TextOut(Rect.Left + 4,Rect.Top,lstWarn.Items[Index]);
  end;

end;

procedure TfrmShowWarn.ShowWarn;
begin
  if not Assigned(ShowError) then
  ShowError := TfrmShowWarn.Create(aParent);
  with ShowError do
  try
    Left := trunc(aParent.Width / 2);
    Top := trunc(aParent.Height / 2);
    Parent := aParent;
    Show;
  finally
 //   Free;
  end;

end;

end.
