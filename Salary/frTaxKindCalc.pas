unit frTaxKindCalc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DM, StdCtrls, ExtCtrls;

type
  TfrmTaxKindCalc = class(TFrame)
    Label1: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    procedure init;

    { Public declarations }
  end;

implementation

{$R *.dfm}

constructor TfrmTaxKindCalc.Create(AOwner: TComponent);
begin
  inherited;
  init
end;

procedure TfrmTaxKindCalc.init;
begin
  Visible := optP.TaxKindCalc <> 1;
end;

procedure TfrmTaxKindCalc.Timer1Timer(Sender: TObject);
begin
  Label2.Visible:=not Label2.Visible;
end;

end.
