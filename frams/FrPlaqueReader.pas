unit FrPlaqueReader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ImgList, ANPR_API, REST.JSON, System.JSON, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, math, System.StrUtils, VidGrab, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ExtDlgs;

type
  TConfigs = class
  private
    FMaxCharHeight: String;
    FTakeShots: Boolean;
    FCharCount2: String;
    FFrameRate: String;
    FCharCount1: String;
    FMinCharHeight: String;
    FSkip: String;
    FMaxCharWidth: String;
    FBufferLen: String;
    FURL: String;
    FRepeat: Boolean;
    FResize: String;
    FThresh: String;
    FMinCharWidth: String;

  published
    property FrameRate: String read FFrameRate write FFrameRate;
    property Thresh: String read FThresh write FThresh;
    property BufferLen: String read FBufferLen write FBufferLen;
    property CharCount1: String read FCharCount1 write FCharCount1;
    property CharCount2: String read FCharCount2 write FCharCount2;
    property Skip: String read FSkip write FSkip;
    property Resize: String read FResize write FResize;
    property URL: String read FURL write FURL;
    property MaxCharHeight: String read FMaxCharHeight write FMaxCharHeight;
    property MaxCharWidth: String read FMaxCharWidth write FMaxCharWidth;
    property MinCharHeight: String read FMinCharHeight write FMinCharHeight;
    property MinCharWidth: String read FMinCharWidth write FMinCharWidth;
    property TakeShots: Boolean read FTakeShots write FTakeShots;
    property chkRepeat: Boolean read FRepeat write FRepeat;

  end;

  TfrmPlaqueReader = class(TFrame)
    pgcPlaqueReader: TPageControl;
    tsCamera: TTabSheet;
    tsOptions: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtFrameRate: TEdit;
    edtThresh: TEdit;
    edtBufferLen: TEdit;
    edtCharCount1: TEdit;
    edtSkip: TEdit;
    edtResize: TEdit;
    chkTakeShots: TCheckBox;
    chkRepeat: TCheckBox;
    edtMinCharWidth: TEdit;
    edtMinCharHeight: TEdit;
    edtMaxCharWidth: TEdit;
    edtMaxCharHeight: TEdit;
    edtCharCount2: TEdit;
    edtURL: TEdit;
    btnSetParams: TBitBtn;
    vc: TVideoGrabber;
    Panel1: TPanel;
    imgPlate: TImage;
    Res4: TLabel;
    Res3: TLabel;
    Res2: TLabel;
    Res1: TLabel;
    txtEnResult: TLabel;
    BitBtn1: TBitBtn;
    ImageList1: TImageList;
    ActionList1: TActionList;
    actCamera: TAction;
    imgCar: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    procedure btnSetParamsClick(Sender: TObject);
    procedure actCameraExecute(Sender: TObject);
  private
    { Private declarations }
    UNICODE_SUPPORT: Boolean;
//    FrameW, FrameH, FrameCh, FrameStep: Integer;
//    Grabbing: Integer;

    frame: TBitmap;
    // bitmap of playing frames on picture control (in video mode)
    frame_missed: TBitmap;
    // bitmap of last frame containing car but not detected
    img_plate: array [0 .. 1] of TBitmap;
//    count_empty_frame, frame_counter: Integer;
//    plate_counter, missed_count: Integer;
//    repeat_count, processed_count: Integer;
    FPlaque: string;
    Conf: TConfigs;
    imgPlateWidth: Integer;
    procedure SetParams;

    procedure initANPR;
    procedure UpdateFarsiResult(LPResult: WideString);
//    procedure RecognizeBuffer;
    procedure Recognize;

  public

    procedure Destroy;
    function Camera: string;
    constructor Create(AOwner: TComponent); override;

    { Public declarations }
  end;

implementation

uses
  GlobalPro, FaraConsts;

{$R *.dfm}

procedure TfrmPlaqueReader.actCameraExecute(Sender: TObject);
var
  aBMP: TBitmap;
begin
  aBMP := vc.GetLastFrameAsTBitmap(0, False, 0, 0, 0, 0, 0, 0, 24);
  try
    imgCar.AutoSize := False;
    imgCar.AutoSize := True;
    imgCar.Picture.Bitmap.Assign(aBMP);
    SetParams;
    Recognize();
  finally
    if aBMP <> nil then
      aBMP.Free;

  end;
end;

//procedure TfrmPlaqueReader.RecognizeBuffer();
//var
//  FileName: array [0 .. 255] of WideChar;
//  cnf: Single;
//  rc: TRect;
//  idx: Integer;
//  res: array [0 .. 255] of WideChar;
//  res_en: TcharArray;
//  t1, t2: TSystemTime;
//  LPResult: WideString;
//  ptr: Pointer;
//  y, w, h, step: Integer;
//begin
//  if (imgCar.Picture = nil) then
//    Exit();
//
//  w := imgCar.Picture.Bitmap.Width;
//  h := imgCar.Picture.Bitmap.Height;
//
//  ptr := imgCar.Picture.Bitmap.ScanLine[0];
//  step := Integer(imgCar.Picture.Bitmap.ScanLine[1]) - Integer(ptr);
//  { for y := 0 to h-1 do
//    begin
//    ptr := frame.ScanLine[y];
//    CopyMemory(ptr, pFrame, FrameStep);
//    pFrame := PUCHAR(Integer(pFrame) + FrameStep);
//    end;
//  }
//
//  GetSystemTime(t1);
//  anpr_recognize_buffer(0, ptr, w, h, step, @res[0], @cnf, @rc);
//
//  if (UNICODE_SUPPORT) then
//    anpr_get_en_result(@res[0], @res_en[0])
//  else
//    anpr_get_ascii_result(@res[0], @res_en[0]);
//
//  LPResult := res;
//  UpdateFarsiResult(LPResult);
//
//  GetSystemTime(t2);
//  idx := 1000 * (60 * (t2.wHour * 60 + t2.wMinute) + t2.wSecond) +
//    t2.wMilliseconds - (1000 * (60 * (t1.wHour * 60 + t1.wMinute) + t1.wSecond)
//    + t1.wMilliseconds);
//  // txtEnResult.Caption := res_en;
//  // lblTime.Caption := IntToStr(idx) + ' ms';
//  // lblCnf.Caption := FloatToStrF(cnf, TFloatFormat.ffNumber, 3, 3);
//  // Canvas.Pen.Color := RGB(200, 0, 0);
//  // Canvas.Brush.Style := bsClear;
//  // DrawRect(rc);
//end;
//
procedure TfrmPlaqueReader.Recognize();
var
  FileName: array [0 .. 255] of WideChar;
  cnf: Single;
  rc: TRect;
  idx: Integer;
  res: array [0 .. 255] of WideChar;
  res_en: TcharArray;
  t1, t2: TSystemTime;
  LPResult: WideString;
begin
OpenPictureDialog1.Execute(0);
  ZeroMemory(@FileName[0], 256);
  for idx := 1 to Length(OpenPictureDialog1.FileName) do
    FileName[idx - 1] := WideChar(OpenPictureDialog1.FileName[idx]);
  GetSystemTime(t1);
  anpr_recognize(0, @FileName[0], @res[0], @cnf, @rc);

  if (UNICODE_SUPPORT) then
    anpr_get_en_result(@res[0], @res_en[0])
  else
    anpr_get_ascii_result(@res[0], @res_en[0]);

  LPResult := res;
  UpdateFarsiResult(LPResult);

  GetSystemTime(t2);
  idx := 1000 * (60 * (t2.wHour * 60 + t2.wMinute) + t2.wSecond) +
    t2.wMilliseconds - (1000 * (60 * (t1.wHour * 60 + t1.wMinute) + t1.wSecond)
    + t1.wMilliseconds);
  //txtEnResult.Caption := res_en;
//  lblTime.Caption := IntToStr(idx) + ' ms';
 // lblCnf.Caption := FloatToStrF(cnf, TFloatFormat.ffNumber, 3, 3);
 // Canvas.Pen.Color := RGB(200, 0, 0);
 // Canvas.Brush.Style := bsClear;
 // DrawRect(rc);
end;

procedure TfrmPlaqueReader.btnSetParamsClick(Sender: TObject);
begin
  SetParams
end;

function TfrmPlaqueReader.Camera: string;
begin
  FPlaque := Res1.Caption + '-' + Res2.Caption + '-' + Res3.Caption + '-' +
    Res4.Caption;
  Result := FPlaque
end;

constructor TfrmPlaqueReader.Create(AOwner: TComponent);
begin
  inherited;
  initANPR;
end;

procedure TfrmPlaqueReader.Destroy;
begin

  if frame <> nil then
    frame.Free;

  if frame_missed <> nil then
    frame_missed.Free;
  img_plate[0].Free;
  img_plate[1].Free;

  Conf.FFrameRate := edtFrameRate.Text;
  Conf.FThresh := edtThresh.Text;
  Conf.FBufferLen := edtBufferLen.Text;
  Conf.FCharCount1 := edtCharCount1.Text;
  Conf.FCharCount2 := edtCharCount2.Text;
  Conf.FSkip := edtSkip.Text;
  Conf.FResize := edtResize.Text;
  Conf.FURL := edtURL.Text;
  Conf.FMaxCharHeight := edtMaxCharHeight.Text;
  Conf.FMaxCharWidth := edtMaxCharWidth.Text;
  Conf.FMinCharHeight := edtMinCharHeight.Text;
  Conf.FMinCharWidth := edtMinCharWidth.Text;
  Conf.FTakeShots := chkTakeShots.Checked;
  Conf.FRepeat := chkRepeat.Checked;
  SaveConfig(APPID, 'PlaqueReaderConf', TJson.ObjectToJsonString(Conf));
  Conf.Free;
end;

procedure TfrmPlaqueReader.SetParams;
var
  prm: SLPRParams;
begin
  prm.min_char_w := StrToInt(edtMinCharWidth.Text);
  // minimum with of characters
  prm.min_char_h := StrToInt(edtMinCharHeight.Text);
  // minimum height of characters
  prm.max_char_w := StrToInt(edtMaxCharWidth.Text);
  // maximum with of characters
  prm.max_char_h := StrToInt(edtMaxCharHeight.Text);
  // maximum height of characters
  prm.skew_coef := 1.0;
  // more value means more skew: successive characters are not in the same Y position
  prm.resize_thresh := StrToInt(edtResize.Text);
  // if width of input image is larger than this, it will be resized
  prm.medianKernel := 0; // Kernel size: 0, 3, 5, 7, etc...
  prm.ignore_inverted_plates := 0;
  prm.detect_motor := 0; // mhh- if 1 motor detection is enabled, if 0 No.
  prm.num_valid_chars1 := StrToInt(edtCharCount1.Text); // 8
  prm.num_valid_chars2 := StrToInt(edtCharCount2.Text); // 5 for free
  prm.save_plate_option := 2;
  prm.n_frm_skip_on_success := StrToInt(edtSkip.Text);
  prm.plate_buf_size := StrToInt(edtBufferLen.Text);
  prm.diff_thresh := StrToInt(edtThresh.Text);
  // difference threshold between current frame and background to suppose entrance of new car

  anpr_set_params(0, @prm);
end;

procedure TfrmPlaqueReader.initANPR;
var
  s: string;
begin
  // {$IFDEF PlaqueReaderMODE}
  // // Create PlaqueReader

  // {$ENDIF}
  // CmPack.OnWeight := DOWeight;
  // SendDebug('Open Success!');///DbugIntf
  imgPlateWidth := imgPlate.Width;
  Conf := TConfigs.Create;
  s := ReadConfig(APPID, 'PlaqueReaderConf', '');
  if s <> EmptyStr then
  begin
    Conf := TJson.JsonToObject<TConfigs>(s);
    edtFrameRate.Text := Conf.FFrameRate;
    edtThresh.Text := Conf.FThresh;
    edtBufferLen.Text := Conf.FBufferLen;
    edtCharCount1.Text := Conf.FCharCount1;
    edtCharCount2.Text := Conf.FCharCount2;
    edtSkip.Text := Conf.FSkip;
    edtResize.Text := Conf.FResize;
    edtURL.Text := Conf.FURL;
    edtMaxCharHeight.Text := Conf.FMaxCharHeight;
    edtMaxCharWidth.Text := Conf.FMaxCharWidth;
    edtMinCharHeight.Text := Conf.FMinCharHeight;
    edtMinCharWidth.Text := Conf.FMinCharWidth;
    chkTakeShots.Checked := Conf.FTakeShots;
    chkRepeat.Checked := Conf.FRepeat;
  end;

  UNICODE_SUPPORT := true;
  anpr_create(0, 'www.farsiocr.ir 09361392929', 1, nil);
  SetDefParams(0);
  imgCar.Picture.Bitmap.Width := imgCar.Width;
  imgCar.Picture.Bitmap.Height := imgCar.Height

end;

procedure TfrmPlaqueReader.UpdateFarsiResult(LPResult: WideString);
begin
  if (Length(LPResult) > 0) then
  begin

    Res1.Caption := LeftStr(LPResult, Min(2, Length(LPResult)));
    //
    LPResult := RightStr(LPResult, Max(0, Length(LPResult) - 2));
  end;
  if (Length(LPResult) > 0) then
  begin
    Res2.Caption := LeftStr(LPResult, Min(1, Length(LPResult)));
    //
    LPResult := RightStr(LPResult, Max(0, Length(LPResult) - 1));
  end;
  if (Length(LPResult) > 0) then
  begin
    Res3.Caption := LeftStr(LPResult, Min(3, Length(LPResult)));
    //
    LPResult := RightStr(LPResult, Max(0, Length(LPResult) - 3));
  end;
  if (Length(LPResult) > 0) then
  begin
    Res4.Caption := LPResult;
  end;

end;

end.
