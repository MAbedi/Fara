{Mostafa Feizabadi
2006/01/18}
unit Zoom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, ExtCtrls, ComCtrls, StdCtrls;

type
  TZoomF = class(Ttemplate0F)
    Shape1: TShape;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Slider: TTrackBar;
    Image1: TImage;
    tmrGetDec: TTimer;
    procedure tmrGetDecTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
     procedure WMGetMinMaxInfo(var Msg: TWMGetMinMaxInfo); message WM_GETMINMAXINFO;

    { Private declarations }
  public
    procedure enter(Fparnet:TForm);
    { Public declarations }
  end;

var
  ZoomF: TZoomF;

implementation

uses GlobalPro;

{$R *.dfm}
procedure TZoomF.WMGetMinMaxInfo(var Msg: TWMGetMinMaxInfo);
begin
   inherited;
   Msg.MinMaxInfo^.ptMinTrackSize := Point(158, 177); // Õœ«ﬁ· ”«Ì“
   Msg.MinMaxInfo^.ptMaxTrackSize := Point(350, 350); // Õœ«ﬂÀ— ”«Ì“
end;


procedure TZoomF.enter(Fparnet:TForm);
begin
  ZoomF:=TZoomF.Create(Application);
  try

    ZoomF.ShowModal;
  finally
    ZoomF.Free;
  end;//try

end;

procedure TZoomF.tmrGetDecTimer(Sender: TObject);
var
  Srect,Drect,PosForme:TRect;
  iWidth,iHeight:Integer;//,DmX,DmY
  iTmpX,iTmpY:Real;
  C:TCanvas;
  hDesktop: Hwnd;
  Kursor:TPoint;
begin
  inherited;
 If not IsIconic(Application.Handle) then begin
  hDesktop:=GetDesktopWindow;
  GetCursorPos(Kursor);
 	PosForme:=Rect(self.Left,self.Top,self.Left+self.Width,self.Top+self.Height);
  //ÅÌœ« ﬂ—œ‰ Pointer

  If not PtInRect(PosForme,Kursor) then begin
 	 iWidth:=Image1.Width;
		 iHeight:=Image1.Height;
    Drect:=Rect(0,0,iWidth,iHeight);
    iTmpX:=iWidth / (Slider.Position * 2);
    iTmpY:=iHeight / (Slider.Position *2);
    if Shape1.Visible then Shape1.Visible:=False;
    if GroupBox1.Visible then GroupBox1.Visible  :=False;

    Srect:=Rect(Kursor.x,Kursor.y,Kursor.x,Kursor.y);
    InflateRect(Srect,Round(iTmpX),Round(iTmpY));
   //ﬂ‰ —· „ÕœÊœ pointer
    If Srect.Left<0 then OffsetRect(Srect,-Srect.Left,0);
    If Srect.Top<0 then OffsetRect(Srect,0,-Srect.Top);
    If Srect.Right>Screen.Width then OffsetRect(Srect,-(Srect.Right-Screen.Width),0);
    If Srect.Bottom>Screen.Height then OffsetRect(Srect,0,-(Srect.Bottom-Screen.Height));

   C:=TCanvas.Create;
   try
     C.Handle:=GetDC(GetDesktopWindow);
     Image1.Canvas.CopyRect(Drect,C,Srect);
    finally
      ReleaseDC(hDesktop, C.Handle);
      C.Free;
    end;
  	Application.ProcessMessages;
 	end // Cursor not inside form
  else begin
    if not Shape1.Visible then Shape1.Visible:=True;
    if not GroupBox1.Visible then GroupBox1.Visible  :=True;
  end;//else
  end;

end;

procedure TZoomF.FormResize(Sender: TObject);
begin
  inherited;
  Image1.Picture:=nil;
end;

procedure TZoomF.FormDestroy(Sender: TObject);
begin
  inherited;
  tmrGetDec.Interval:=0;
  tmrGetDec.Enabled:=False;
end;

end.
