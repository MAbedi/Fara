unit PlaqueReader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, StrUtils, Math, GlobalPro, FaraConsts,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template0, Vcl.Buttons, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls,

  Vcl.StdCtrls,ANPR_API, REST.JSON, System.JSON;

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

  TPlaqueReaderF = class(Ttemplate0F)
    PageControl1: TPageControl;
    tsCamera: TTabSheet;
    tsOptions: TTabSheet;
    Image1: TImage;
    ImageList1: TImageList;
    ActionList1: TActionList;
    actCamera: TAction;
    FrameRate: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
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
    Label11: TLabel;
    Timer_Recognize: TTimer;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    imgPlate: TImage;
    Res4: TLabel;
    Res3: TLabel;
    Res2: TLabel;
    Res1: TLabel;
    lblEnResult: TLabel;
    lblCnf: TLabel;
    actStart: TAction;
    BitBtn1: TBitBtn;
    btnPause: TBitBtn;
    actPause: TAction;
    btnAutoProcess: TBitBtn;
    actAutoProcess: TAction;
    actStopProcess: TAction;
    BitBtn2: TBitBtn;
    btnSetParams: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Timer_RecognizeTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actCameraExecute(Sender: TObject);
    procedure actStartExecute(Sender: TObject);
    procedure actPauseExecute(Sender: TObject);
    procedure actStopProcessExecute(Sender: TObject);
    procedure actAutoProcessExecute(Sender: TObject);
    procedure btnSetParamsClick(Sender: TObject);
  private
    UNICODE_SUPPORT: Boolean;
    FrameW, FrameH, FrameCh, FrameStep: Integer;
    Grabbing: Integer;

    frame: TBitmap;
    // bitmap of playing frames on picture control (in video mode)
    frame_missed: TBitmap;
    // bitmap of last frame containing car but not detected
    img_plate: array [0 .. 1] of TBitmap;
    count_empty_frame, frame_counter: Integer;
    plate_counter, missed_count: Integer;
    repeat_count, processed_count: Integer;
    FPlaque: string;
    Conf: TConfigs;
    procedure PlayVideo();
    procedure StopEveryThing;
    procedure UpdateFarsiResult(LPResult: WideString);
    procedure DrawPlate(rc: TRect; roi: byte; pBuf: PUCHAR);
    procedure UpdatePlate(roi: byte);
    procedure DrawRect(rc: TRect);
    procedure StartAutoProcess;
    procedure StopAutoProcess;
    procedure SetParams;
    procedure WndProc(var Msg: TMessage); override;
    procedure UpdateFrame(stream: byte);
    { Private declarations }
  public

    property Plaque: string read FPlaque;
    { Public declarations }
  end;

var
  PlaqueReaderF: TPlaqueReaderF;

implementation

{$R *.dfm}

procedure TPlaqueReaderF.FormCreate(Sender: TObject);
var
  s: string;
begin
  inherited;
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
  Image1.Picture.Bitmap.Width := Image1.Width;
  Image1.Picture.Bitmap.Height := Image1.Height;

  count_empty_frame := 0;
  frame_counter := 0;
  plate_counter := 0;
  repeat_count := 0;
  missed_count := 0;

  img_plate[0] := TBitmap.Create;
  img_plate[1] := TBitmap.Create;

  // Assign(nil);
end;

procedure TPlaqueReaderF.WndProc(var Msg: TMessage);
var
  stream, roi: byte;
  str: array [0 .. 30] of WideChar;
  rc: TRect;
begin
  stream := byte(Msg.WParam);
  roi := Math.Min(byte(Msg.LParam), 1);
  case Msg.Msg of
    WM_NEW_FRAME:
      begin
        UpdateFrame(0);
      end;
    WM_PLATE_DETECTED:
      begin
        UpdatePlate(roi);
      end;
    WM_INITIAL_PLATE:
      begin
        vlpr_get_last_resultsW(0, @str[0], @rc, 0, 0, 0);
        DrawRect(rc);
      end;
  end;
  inherited; // call this for default behaveour
end;

procedure TPlaqueReaderF.UpdateFrame(stream: byte);
var
  pFrame: PUCHAR;
  y, x: Integer;
  ptr: PUCHAR;
begin
  // if (FrameW > 0) AND (Image1.Picture.Bitmap.Height = FrameH) AND (Grabbing > 0) then
  if (FrameW > 0) AND (Grabbing > 0) then
  begin
    pFrame := vlpr_get_frame(stream);
    if (pFrame = nil) then
    begin
      count_empty_frame := count_empty_frame + 1;
      Image1.Picture.Assign(nil);
      if (count_empty_frame > 10) then
        StopEveryThing();

      // .Caption := lblFrame.Caption + ' -';
      exit;
    end;
    frame_counter := frame_counter + 1;

    // lblFrame.Caption := IntToStr(frame_counter);
    count_empty_frame := 0;

    if (frame = nil) then
    begin
      frame := TBitmap.Create;
      frame.Width := FrameW;
      frame.Height := FrameH;
      frame.PixelFormat := pf24bit;
    end;
    for y := 0 to FrameH - 1 do
    begin
      ptr := frame.ScanLine[y];
      CopyMemory(ptr, pFrame, FrameStep);
      pFrame := PUCHAR(Integer(pFrame) + FrameStep);
    end;

    Image1.Picture.Assign(frame);
  end;
end;

procedure TPlaqueReaderF.FormDestroy(Sender: TObject);
begin
  inherited;
  Timer_Recognize.Enabled := false;
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

procedure TPlaqueReaderF.PlayVideo;
var
  i, interval: Integer;
  take_shot: byte;
  URL: array [0 .. 256] of byte;
begin
  interval := round(1000 / StrToInt(edtFrameRate.Text));
  // rtsp://admin:admin@192.168.55.160:554/h264

  take_shot := byte(chkTakeShots.Checked);
  // Create ascii file name
  ZeroMemory(@URL[0], 256);
  for i := 1 to Length(edtURL.Text) do
    URL[i - 1] := byte(edtURL.Text[i]);

  vlpr_start_grabbing(0, @URL[0], interval, Handle, 0, take_shot, 0);
  FrameW := 0;
  FrameH := 0;
  FrameCh := 0;
  FrameStep := 0;
  // Timer1.Interval := i;
  // Timer1.Enabled := true;
  i := 0;
  While ((FrameW < 1) AND (i < 500)) do
  begin
    vlpr_get_frame_info(0, @FrameW, @FrameH, @FrameCh, @FrameStep);
    Sleep(10);
    i := i + 1;
  end;
  if (FrameW < 1) then
  begin
    Showmessage
      ('ارتباط با فایل یا دوربین برقرار نشد. آدرس را بررسی کرده و اگر نام کاربری و رمز می خواهد آنها را بازبینی کنید');
    vlpr_stop_grabbing(0);
    exit;
  end;
  Grabbing := 1;
  frame := nil; // new Bitmap(FrameW, FrameH, PixelFormat.Format24bppRgb);
  if (Not chkRepeat.Checked) then
    frame_counter := 0;

end;

procedure TPlaqueReaderF.StopEveryThing;
begin
  vlpr_stop_process(0);
  vlpr_stop_grabbing(0);
  vlpr_stop_grabbingVLC(0);

  // picture.Image = null;
  Timer_Recognize.Enabled := false;

  // btnStartGrabbing.Caption := 'Play';
  // btnStartGrabbing.Enabled := true;
  // btnStartGrabbing.Font.Color := TColors.Darkgreen;
  //
  // btnStartGrabbingVLC.Caption := 'Play VLC';
  // btnStartGrabbingVLC.Enabled := true;
  // btnStartGrabbingVLC.Font.Color := TColors.Darkgreen;
  //
  // btnProcess.Caption := 'Start Process on Timer';
  // btnAutoProcess.Caption := 'Start Auto Process';
  // btnAutoProcess.Font.Color := TColors.Darkgreen;

  // DONT DELETE THESE 2 LINES. They must be set to null so that reallocate with the correct memory in GetFrame.
  frame_missed := nil;
  frame := nil;
end;

procedure TPlaqueReaderF.UpdatePlate(roi: byte);
var
  str, str_en: array [0 .. 30] of WideChar;
  strA: array [0 .. 30] of AnsiChar;
  cnf: single;
  rc: TRect;
  pImgPlateBuf: PUCHAR;
  LPResult: WideString;
begin
  plate_counter := plate_counter + 1;
  // lblPlate.Caption := plate_counter.ToString();
  // lblROI.Text = "ROI# " + (roi + 1).ToString();

  if (UNICODE_SUPPORT) then
  begin
    pImgPlateBuf := vlpr_get_last_resultsW(0, @str[0], @rc, @cnf, 0, 0);
    lblCnf.Caption := FloatToStrF(cnf, TFloatFormat.ffNumber, 3, 3);
    LPResult := str;
    UpdateFarsiResult(LPResult);

    anpr_get_en_result(@str[0], @str_en[0]);
    lblEnResult.Caption := str_en;

  end
  else
  begin
    vlpr_get_last_results(0, @strA[0], @rc, @cnf, nil, 0);
    lblEnResult.Caption := strA;
  end;

  DrawRect(rc);
  DrawPlate(rc, roi, pImgPlateBuf);
end;

procedure TPlaqueReaderF.DrawRect(rc: TRect);
var
  ratio: single;
begin
  ratio := Image1.Picture.Width / Image1.Width;
  rc.Left := round(rc.Left / ratio);
  rc.Right := round(rc.Right / ratio);
  ratio := Image1.Picture.Height / Image1.Height;
  rc.top := round(rc.top / ratio);
  rc.Bottom := round(rc.Bottom / ratio);
  Canvas.Rectangle(rc);
end;

procedure TPlaqueReaderF.actAutoProcessExecute(Sender: TObject);
begin
  inherited;
  StartAutoProcess;
end;

procedure TPlaqueReaderF.actCameraExecute(Sender: TObject);
begin
  inherited;
  FPlaque := Res1.Caption + '-' + Res2.Caption + '-' + Res3.Caption + '-' +
    Res4.Caption;

  StopAutoProcess;

  StopEveryThing;
  Close;
end;

procedure TPlaqueReaderF.actPauseExecute(Sender: TObject);
begin
  inherited;
  if (btnPause.Tag = 0) then
  begin
    vlpr_pause_or_resume(0, 1);
    Grabbing := 0;
    actPause.ImageIndex := 1;
    btnPause.Tag := 1;

  end
  else
  begin
    vlpr_pause_or_resume(0, 0);
    Grabbing := 1;
    actPause.ImageIndex := 2;
    btnPause.Tag := 0;
  end;

end;

procedure TPlaqueReaderF.actStartExecute(Sender: TObject);
begin
  inherited;
  PlayVideo;
  StartAutoProcess;
end;

procedure TPlaqueReaderF.actStopProcessExecute(Sender: TObject);
begin
  inherited;
  StopAutoProcess;
end;

procedure TPlaqueReaderF.btnSetParamsClick(Sender: TObject);
begin
  inherited;
  SetParams
end;

procedure TPlaqueReaderF.DrawPlate(rc: TRect; roi: byte; pBuf: PUCHAR);
var
  y, step: Integer;
  plate_ptr: PUCHAR;
  frame_ptr: PUCHAR;
  full_frame: TBitmap;
begin
  if (img_plate[roi] <> nil) then
  begin
    img_plate[roi].Destroy;
    img_plate[roi] := TBitmap.Create;
  end;
  img_plate[roi].Width := rc.Right - rc.Left;
  img_plate[roi].Height := rc.Bottom - rc.top;
  img_plate[roi].PixelFormat := pf24bit;

  if (frame <> nil) then // in the case of video grabbing
    full_frame := frame
  else
    full_frame := Image1.Picture.Bitmap; // in the case of Image operations

  if (pBuf = nil) then // crop plate from current frame
  begin
    for y := 0 to img_plate[roi].Height - 1 do
    begin
      plate_ptr := img_plate[roi].ScanLine[y];
      frame_ptr := full_frame.ScanLine[y + rc.top];
      CopyMemory(plate_ptr, PUCHAR(Integer(frame_ptr) + rc.Left * 3),
        img_plate[roi].Width * 3);
    end;
  end
  else // use pBuf as the plate image
  begin
    step := 3 * img_plate[roi].Width;
    imgPlate.Picture.Bitmap.Width := rc.Right - rc.Left;
    imgPlate.Picture.Bitmap.Height := rc.Bottom - rc.top;
    imgPlate.Picture.Bitmap.PixelFormat := pf24bit;

    { for y := 0 to imgPlate.Picture.Bitmap.Height-1 do
      begin
      plate_ptr := img_plate[roi].ScanLine[y];
      frame_ptr := Image1.Picture.Bitmap.ScanLine[y + rc.top];
      CopyMemory(plate_ptr, PUCHAR(Integer(frame_ptr) + rc.Left*3), imgPlate.Picture.Bitmap.Width*3);
      end; }
    frame_ptr := pBuf;
    for y := 0 to img_plate[roi].Height - 1 do
    begin
      plate_ptr := img_plate[roi].ScanLine[y];
      CopyMemory(plate_ptr, frame_ptr, step);
      frame_ptr := PUCHAR(Integer(frame_ptr) + step);
    end;

    imgPlate.Picture.Assign(img_plate[roi]);
  end;

  // imgPlate.Picture.Bitmap := img_plate[roi];
  { imgPlate.Picture.Bitmap.Width := rc.Right - rc.Left;
    imgPlate.Picture.Bitmap.Height := rc.Bottom - rc.Top;
    imgPlate.Picture.Bitmap.PixelFormat := pf24bit;

    imgPlate.Picture.Assign(img_plate[roi]); }
end;

procedure TPlaqueReaderF.SetParams;
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

procedure TPlaqueReaderF.StopAutoProcess;
begin

  vlpr_stop_process(0);
end;

procedure TPlaqueReaderF.StartAutoProcess;
begin
  SetParams();
  missed_count := 0;
  vlpr_start_process(0);
  if (Not chkRepeat.Checked) then
  begin
    repeat_count := 0;
    plate_counter := 0;
    // lblPlate.Caption := '';
    // lblRepeat.Caption := '';
  end
  else
  begin
    repeat_count := repeat_count + 1;
    // lblRepeat.Caption := repeat_count.ToString();
  end

end;

procedure TPlaqueReaderF.Timer_RecognizeTimer(Sender: TObject);
var
  str_en: array [0 .. 30] of WideChar;
  strW: array [0 .. 30] of WideChar;
  cnf: single;
  rc: TRect;
  y, x: Integer;
  frame, ptr: PUCHAR;
begin
  inherited;
  if (Grabbing = 0) then
    exit;
  vlpr_recognize_cur_frame(0, @strW[0], @rc, @cnf);
  if (cnf < 0.2) then
    exit;
  processed_count := processed_count + 1;
  // lblProcess.Caption := processed_count.ToString();
  // UpdatePlate(0);
  // exit;

  UpdateFarsiResult(strW);
  lblCnf.Caption := FloatToStrF(cnf, TFloatFormat.ffNumber, 3, 3);
  anpr_get_en_result(@strW[0], @str_en[0]);
  lblEnResult.Caption := str_en;

  imgPlate.Picture.Bitmap.Width := rc.Right - rc.Left + 1;
  imgPlate.Picture.Bitmap.Height := rc.Bottom - rc.top + 1;
  imgPlate.Picture.Bitmap.PixelFormat := pf24bit;

  for y := 0 to imgPlate.Picture.Bitmap.Height - 1 do
  begin
    ptr := imgPlate.Picture.Bitmap.ScanLine[y];
    frame := Image1.Picture.Bitmap.ScanLine[y + rc.top];
    CopyMemory(ptr, PUCHAR(Integer(frame) + rc.Left * 3),
      imgPlate.Picture.Bitmap.Width * 3);
  end;

  imgPlate.Picture.Assign(imgPlate.Picture.Bitmap);
end;

procedure TPlaqueReaderF.UpdateFarsiResult(LPResult: WideString);
begin
  if (Length(LPResult) > 0) then
  begin

    Res1.Caption := LeftStr(LPResult, Min(2, Length(LPResult)));
    //
    LPResult := RightStr(LPResult, max(0, Length(LPResult) - 2));
  end;
  if (Length(LPResult) > 0) then
  begin
    Res2.Caption := LeftStr(LPResult, Min(1, Length(LPResult)));
    //
    LPResult := RightStr(LPResult, max(0, Length(LPResult) - 1));
  end;
  if (Length(LPResult) > 0) then
  begin
    Res3.Caption := LeftStr(LPResult, Min(3, Length(LPResult)));
    //
    LPResult := RightStr(LPResult, max(0, Length(LPResult) - 3));
  end;
  if (Length(LPResult) > 0) then
  begin
    Res4.Caption := LPResult;
  end;

end;

end.
