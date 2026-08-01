unit ImagePreview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, jpeg, GIFImg, pngimage;

type
  TImagePreviewF = class(TForm)
    Image2: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Enter(Image: TJPEGImage);
  end;

var
  ImagePreviewF: TImagePreviewF;

implementation

{$R *.dfm}

procedure TImagePreviewF.Enter(Image: TJPEGImage);
begin
  ImagePreviewF := TImagePreviewF.Create(Application);
  with ImagePreviewF do
    try
      Image2.Picture.Assign(Image);
      ShowModal;
    finally
      Free;
    end;
end;

end.
