unit FrProduction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TfrmProduction = class(TFrame)
    MaskEdit1: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses searchCode_ADO, DM;

{$R *.dfm}

procedure TfrmProduction.SpeedButton1Click(Sender: TObject);
var
  txt: String;
  b: boolean;
  results: array [0 .. 7] of String;
begin
  txt := 'SELECT TransForms.TransFormID, ProcessProduce.ProcessID,' +
    ' TransForms.TransFormNo, TransForms.TransFormDate, TransForms.Note, ' +
    ' TransForms.StuffCode,StuffCoding.c_StuffName, Units.UnitName' +
    ' FROM TransForms INNER JOIN' +
    ' ProcessProduce ON TransForms.TransFormID = ProcessProduce.TransFormID INNER JOIN'
    + ' StuffCoding ON TransForms.StuffCode = StuffCoding.c_StuffCode INNER JOIN'
    + ' Units ON StuffCoding.n_UnitCode = Units.UnitCode' +
    ' WHERE (TransForms.TransFormState = 0)';

  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, '÷—«Ì»  »œÌ·', txt,
    ['‘‰«”Â', 'ﬂœ ›—¬Ì‰œ', '‘„«—Â ›—„', ' «—ÌŒ', ' Ê÷ÌÕ« ', 'ﬂœ„Õ’Ê·',
    '‘—Õ „Õ’Ê·', 'Ê«Õœ'], results, [50, 50, 100, 80, 100,80,100,50], alLeft);
  if b then
  begin
    MaskEdit1.Text := results[0];
    Label3.Caption := results[5]+'  '+results[6];
  end;

end;

end.
