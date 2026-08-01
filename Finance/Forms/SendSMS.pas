unit SendSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, nrclasses,
  nratcmd, nrgsm, nrcomm;

type
  TTemplate5F1 = class(TTemplate5F)
    Panel2: TPanel;
    Label1: TLabel;
    edtNumber: TEdit;
    memMsg: TMemo;
    nrcomm: TnrComm;
    nrgsm: TnrGsm;
    Action1: TAction;
  private
    function SendSMS(const comport: Byte; const Number, Msg: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Template5F1: TTemplate5F1;

implementation

{$R *.dfm}
{ TTemplate5F1 }

function TTemplate5F1.SendSMS(const comport: Byte;
  const Number, Msg: string): Boolean;
begin
  try
    nrcomm.ComPortNo := comport;


  finally

  end;

end;

end.
