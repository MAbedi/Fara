unit ShowPdf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, AcroPDFLib_TLB;

type
  TShowPdfF = class(TForm)
    AcroPDF1: TAcroPDF;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowPdfF: TShowPdfF;

implementation

uses GlobalPro;

{$R *.dfm}

procedure TShowPdfF.FormShow(Sender: TObject);
var
  pdfName:String;
begin
   PdfName := ExtractFilePath(Application.ExeName)+ExtractFileNameWithoutExt(Application.ExeName)+'.Pdf';
  if FileExists(PdfName) then
    AcroPDF1.src := PdfName;

end;

end.
