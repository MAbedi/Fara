unit FrReciptType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB;

type
  TFrmReciptType = class(TFrame)
    cmbReciptType: TComboBox;
    qryinit: TADOQuery;
    procedure cmbReciptTypeChange(Sender: TObject);
  private
    { Private declarations }
  public
    ReciptType: Integer;
    EffectType: Integer;
    procedure initFrmCombo;
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
  end;

implementation

uses
  DM;

{$R *.dfm}
{ TFrmReciptType }

procedure TFrmReciptType.cmbReciptTypeChange(Sender: TObject);
begin
  inherited;
  ReciptType := Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
  With qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
  end;
end;

constructor TFrmReciptType.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TFrmReciptType.initFrmCombo;
begin
  InitCombos(cmbReciptType,
    'SELECT ReciptType,ReciptCaption FROM ReciptTypes WHERE(EffectType IN (' +
    EffectType.ToString + ')) ' +
    ' AND (MnuPlaceIDs <> ''0000000000000000000000000'')');

end;

end.
