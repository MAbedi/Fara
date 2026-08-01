unit AddAttachFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frEditImage, jpeg, ExtCtrls, StrUtils;

type
  TAddAttachFileF = class(TForm)
    frEditImageF1: TfrEditImageF;
    procedure frEditImageF1btnSaveClick(Sender: TObject);
    procedure frEditImageF1btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure enter(var jpg: TJPEGImage; var TypeStr, FileName: string);
    { Public declarations }
  end;

var
  AddAttachFileF: TAddAttachFileF;

implementation

{$R *.dfm}
{ TAddAttachFileF }

procedure TAddAttachFileF.enter(var jpg: TJPEGImage;
  var TypeStr, FileName: string);
var
  px: Integer;
begin

  AddAttachFileF := TAddAttachFileF.Create(Application);
  with AddAttachFileF do
    try
      if ShowModal = mrOk then
      begin
        jpg.Assign(frEditImageF1.imgEn4Edit.Bitmap);
        TypeStr := ReplaceStr
          (ExtractFileExt(frEditImageF1.imgEn4Edit.IO.Params.FileName),
          '.', '');
        FileName := ExtractFileName
          (frEditImageF1.imgEn4Edit.IO.Params.FileName);
      end;
    finally
    end;
end;

procedure TAddAttachFileF.frEditImageF1btnDelClick(Sender: TObject);
begin
  frEditImageF1.imgEn4Edit.Clear;
  frEditImageF1.imgEn4Edit.IO.Params.FileName := EmptyStr;
end;

procedure TAddAttachFileF.frEditImageF1btnSaveClick(Sender: TObject);
var
  info: TWin32FileAttributeData;
  m: int64;
begin
  if frEditImageF1.imgEn4Edit.IO.Params.FileName <> EmptyStr then
  begin
    GetFileAttributesEx(PWideChar(frEditImageF1.imgEn4Edit.IO.Params.FileName),
      GetFileExInfoStandard, @info);
    m := int64(info.nFileSizeLow) or int64(info.nFileSizeHigh shl 32);
    if m <= 112640 then
      ModalResult := mrOk
    else
      ShowMessage('حجم تصویر انتخاب شده بیش از اندازه بزرگ میباشد');
  end;
end;

end.
