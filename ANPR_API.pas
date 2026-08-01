unit ANPR_API;

interface
uses
  Windows, Messages;
type
  // Declare a customer record
  SLPRParams = record
    resize_thresh     : Int16;  // if width of input image is larger than this, it will be resized
    num_valid_chars1  : Byte;   // Number of valid characters usuallay {8, 0}. if e.g. 5 character plates are also available, use {8, 5}
    num_valid_chars2  : Byte;   //if Two types of plates are important
    medianKernel      : Byte;   // (0: no kernel) (3, 5, 7 ... median kernel of this size)
    save_plate_option : Byte;   //save_plate_option: 0 don't save anything, 1: save plate only, 2: save whole car image and plate
                                 //اگر عدد صفر انتخاب شود، فقط رشته پلاک و مستطیل آن گزارش شده و تصویر بریده شده پلاک ارسال نمی شود
                                 //عدد 2 سبب استفاده بیشتر از حافظه و کاهش حدود 5درصدی سرعت پلاک خوانی می شود

    //Limits of character dimensions
    min_char_w      :Byte;  //minimum with of characters
    min_char_h      :Byte;  //minimum height of characters
    max_char_w      :Byte;  //maximum with of characters
    max_char_h      :Byte;  //maximum height of characters

    skew_coef       :Single; //more value means more skew: successive characters are not in the same Y position

    ignore_inverted_plates: Byte;   //may not be used
    detect_motor: byte; //if 1 motor detection is enabled, if 0 No.

    //Video Related Params
    n_frm_skip_on_success :Byte;  //Number of frames to be skipped after successful plate detection
    diff_thresh     :Byte;            //Difference threshold between current frame and background to suppose entrance of new car
    plate_buf_size  :Byte;         // Buffer length of recent successive plates (max = 50).
    detect_nezami   :Byte;
    skip_same_plate_seconds: Byte;// don't report same plate until "some time" elpased
    play_audio_from_camera: Byte; //in vlc mode we can play audio (from version 7.45)
  end;
  PLPRParams = ^SLPRParams;
  //////////////////////////////////////////////////////////////////////////
  //                      ANPR.dll functions
  //////////////////////////////////////////////////////////////////////////
  //1
  //تابع زیر در هر برنامه حتما باید یکبار و تنها یکبار فراخوانی شود.
  //این تابع شبکه های عصبی مورد استفاده را بارگذاری می کند
  function anpr_create(instance: Byte; seccurity_code: WideString; log_level: Byte; cfg_file: PWideChar): Int16; stdcall external 'ANPR.dll';

  //2
  //این تابع مسیر فایل تصویری را دریافت کرده و نتیجه را بر می گرداند:
  //رشته، میزان اطمینان به رشته حاصله و مستطیل پلاک
  //Unicode output with Persian characters
  function anpr_recognize(instance: Byte; fn: PWideChar; result: PWideChar; cnf: PSingle; prc: PRect ): Int16; stdcall external 'ANPR.dll';

  //3
  //این تابع مانند تابع بالایی است با این تفاوت که اندیس مستطیل مورد علاقه را هم می گیرد.
  function anpr_recognizeROI(instance: Byte; roi_idx: byte; fn: PWideChar; result: PWideChar; cnf: PSingle; prc: PRect ): Int16; stdcall external 'ANPR.dll';


  //4
  //تابع زیر برای بافری است که از دوربین یا فایل گرفته اید و نوعا یک جریان فشرده مثل جی پگ است.
  function anpr_recognize_stream(instance: Byte; compressed_stream: PAnsiChar; buffer_size: integer; result: PWideChar; pcnf: PSingle; prc: PRect): Int16; stdcall external 'ANPR.dll';

  //5
  //تابع زیر برای زمانی است که بایتهای تصویر به صورت فشرده نشده در آرایه ای قرار دارند
  //مثلا اشاره گر ابتدای یک بیت مپ
  //مثال آن در همین برنامه دیده می شود
  function anpr_recognize_buffer(instance: Byte; buffer: PAnsiChar; W: integer; H: integer; step: integer; result: PWideChar; pcnf: PSingle; prc: PRect): Int16; stdcall external 'ANPR.dll';

  //6
  //خروجی تابع 2 یک رشته فارسی یونیکد است، اگر خروجی انگلیسی «اسکی» را لازم دارید از این تابع استفاده کنید
  //Ansi output with English characters
  procedure anpr_get_ascii_result(result_fa: PWideChar; result_en: PAnsiChar); stdcall external 'ANPR.dll';

  //7
  //خروجی تابع 2 یک رشته فارسی یونیکد است، اگر خروجی انگلیسی «یونیکد» را لازم دارید از این تابع استفاده کنید
  procedure anpr_get_en_result(result_fa: PWideChar; result_en: PWideChar); stdcall external 'ANPR.dll';

  //8
  //یافتن نویسه ها از بافر حافظه ای که تنها شامل تصویر پلاک است
  //به عبارتی محل پلاک باید قبلا یافت شده باشد
  //Not used!
  procedure anpr_find_chars(instance: Byte; buffer: PAnsiChar; W: integer; H: integer; step: integer; roi: TRect; result: PWideChar; pcnf: PSingle); stdcall external 'ANPR.dll';

  //////////////////////////////////////////////////////////////////////////
  //9
  //این تابع برای تنظیم پارامترهای کتابخانه است.
  procedure anpr_set_params(instance: Byte; params: PLPRParams); stdcall external 'ANPR.dll';
  procedure anpr_add_ROI(instance: Byte; roi: TRect); stdcall external 'ANPR.dll';
  procedure anpr_clear_ROIs(instance: Byte); stdcall external 'ANPR.dll';
	function vlpr_start_grabbing(instance: byte; URL: PAnsiChar; interval_ms: byte; hwndMsg: HWND; hwndDraw: HWND; TakeShots: byte; direct_draw: byte): Int16; stdcall external 'ANPR.dll';
  function vlpr_stop_grabbing(instance: byte): Int16; stdcall external 'ANPR.dll';
	function vlpr_start_grabbingVLC(instance: byte; URL: PAnsiChar; interval_ms: byte; hwndMsg: HWND; hwndDraw: HWND; TakeShots: byte; direct_draw: byte): Int16; stdcall external 'ANPR.dll';
  function vlpr_stop_grabbingVLC(instance: byte): Int16; stdcall external 'ANPR.dll';
	function vlpr_pause_or_resume(instance: byte; pause: byte): Int16; stdcall external 'ANPR.dll';
  function vlpr_get_frame_info(instance: byte; W: PINT; H: PINT; channels: PINT; step: PINT): Int16; stdcall external 'ANPR.dll';
  //Grab active frame
	function vlpr_get_frame(instance: byte): PUCHAR; stdcall external 'ANPR.dll';

  //Start Processing of Camera Frames
	function vlpr_start_process(instance: byte): Int16; stdcall external 'ANPR.dll';

	//Stop Processing of Camera Frames
  function vlpr_stop_process(instance: byte): Int16; stdcall external 'ANPR.dll';

	//str must be allocated before
  //output is buffer of plate image
  //پلاک پس از عبور خودرو گزارش می شود. لذا به منظور ثبت تصویر پلاک
  //بافر آن نگهداری می شود
	function vlpr_get_last_resultsW(instance: byte; str: PWideChar; rc: PRECT; cnf: PSingle; img_car_buffer: PUCHAR; direction: PByte): PUCHAR; stdcall external 'ANPR.dll';
	function vlpr_get_last_results(instance: byte; str: PAnsiChar; rc: PRECT; cnf: PSingle; img_car_buffer: PUCHAR; direction: PByte): PUCHAR; stdcall external 'ANPR.dll';

  //Recognize Last Frame Grabbed from camera or video file
 	function vlpr_recognize_cur_frame(instance: byte; str: PWideChar; rc: PRECT; cnf: PSingle): Int16; stdcall external 'ANPR.dll';



  procedure SetDefParams(instance: Byte);

const
   WM_NEW_FRAME = WM_USER + 100;     //Private message id for ANPR
   WM_SCENE_CHANGED = WM_USER + 101;
   WM_PLATE_DETECTED = WM_USER + 102;
   WM_PLATE_NOT_DETECTED = WM_USER + 103; //when a car is in the field of camera but its plate is not recognized
   WM_END_OF_VIDEO = WM_USER + 104; //when video file finished or camera closed

   //هنگامی که اولین پلاک در صحنه دیده می شود، برای ترسیم مستطیل اطراف آن
   //رویداد تشخیص قطعی پلاک شماره 102 است
   WM_INITIAL_PLATE = WM_USER + 108;
   WM_CAM_NOT_FOUND = WM_USER + 109;


   SAVE_NOTHING = 0;
   SAVE_PLATE_ONLY = 1;
   SAVE_PLATE_AND_CAR = 2;

implementation

  procedure SetDefParams(instance: Byte);
  var
  prm: SLPRParams;
  begin
    prm.min_char_w := 5; //minimum with of characters
    prm.min_char_h := 7; //minimum height of characters
    prm.max_char_w := 100; //maximum with of characters
    prm.max_char_h := 100; //maximum height of characters
    prm.skew_coef := 1.0; //more value means more skew: successive characters are not in the same Y position
    prm.resize_thresh := 1100;//if width of input image is larger than this, it will be resized
    prm.medianKernel := 0;//Kernel size: 0, 3, 5, 7, etc...
    prm.ignore_inverted_plates := 0;
    prm.detect_motor := 0;
    prm.detect_nezami := 0;
    prm.num_valid_chars1 := 8; //5 for free
    prm.num_valid_chars2 := 5; //5 for free
    prm.save_plate_option := SAVE_PLATE_AND_CAR;
    prm.n_frm_skip_on_success := 10;
    prm.plate_buf_size := 12;
    prm.diff_thresh := 15; //difference threshold between current frame and background to suppose entrance of new car
    prm.play_audio_from_camera := 0;
    anpr_set_params(instance, @prm);
  end;

end.
