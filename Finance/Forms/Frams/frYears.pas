unit frYears;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, db, ADODB;

type
  TfrYear = class(TFrame)
    cmbYear: TComboBox;
    Label1: TLabel;
  private
    function GetYearID: Integer;
    procedure SetYearID(const Value: Integer);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    property YearID: Integer read GetYearID write SetYearID;
    { Public declarations }
  end;

implementation

uses Dm;

{$R *.dfm}
{ TFrame1 }

constructor TfrYear.Create(AOwner: TComponent);
var
  qry: TADOQuery;
begin
  inherited;
  cmbYear.Clear;
  qry := TADOQuery.Create(AOwner);
  with qry do
    try
      Connection := Dmf.adcAccounting;
      SQL.Text := 'Select YearID From util.MaliYear';
      Open;
      while not eof do
      begin
        cmbYear.AddItem(Format('سال مالی %s', [Fields[0].AsString]),
          TObject(Fields[0].AsInteger));
        Next;
      end;
    finally
      qry.Free;
    end;
end;

function TfrYear.GetYearID: Integer;
begin
  if cmbYear.ItemIndex <> -1 then
    Result := Integer(cmbYear.Items.Objects[cmbYear.ItemIndex]);
end;

procedure TfrYear.SetYearID(const Value: Integer);
begin
  cmbYear.ItemIndex := cmbYear.Items.IndexOfObject(TObject(Value));
end;

end.
