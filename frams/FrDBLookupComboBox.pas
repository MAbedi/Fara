unit FrDBLookupComboBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, ADODB,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls;

type
  TfrmDBLookupComboBox = class(TFrame)
    dblkcbbFr1: TDBLookupComboBox;
    btnFr1: TSpeedButton;
    lblFrCaption: TLabel;
    procedure btnFr1Click(Sender: TObject);
    procedure dblkcbbFr1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  published
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses searchCode_ADO, DM;

procedure TfrmDBLookupComboBox.btnFr1Click(Sender: TObject);
var
  sqltxt: String;
  results: array [0 .. 2] of String;
begin
  sqltxt := 'SELECT LookUpID, Code, Name FROM LookUps WHERE (Kind = ' +
    dblkcbbFr1.Tag.ToString() + ')';
  if searchCode_ADOF.SearchCode2(dmf.adcBSell, 'عناوین ', sqltxt,
    ['', 'کد', 'عنوان'], results, [0, 50, 300], alLeft) then
    dblkcbbFr1.DataSource.DataSet.FieldByName
      (dblkcbbFr1.Field.KeyFields).AsString := results[1];
end;

procedure TfrmDBLookupComboBox.dblkcbbFr1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_SPACE then
    btnFr1.Click
end;

end.
