unit EditFirstDep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls;

type
  TEditFirstDepF = class(TTemplate5F)
    edt1: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    lbl1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function editvalue(aValue: string): string;
  end;

var
  EditFirstDepF: TEditFirstDepF;

implementation

{$R *.dfm}

function TEditFirstDepF.editvalue(aValue: string): string;
begin
  with TEditFirstDepF.Create(Application) do
    try
      edt1.Text := aValue;
      if ShowModal = mrOk then
        Result := edt1.Text
      else
        Result := aValue;
    finally
      Free;
    end;
end;

end.
