{-----------------------------------------------------------------------------
 Unit Name: CdBurn
 Author:    Mostafa  add By Abedi
 Purpose:
 History:
-----------------------------------------------------------------------------}
unit CdBurnTax;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs,   StdCtrls, ExtCtrls, ComCtrls, Buttons, DB,
  ADODB,GlobalPro,StrUtils;

type
  TCDBurnTaxF = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Panel1: TPanel;
    cbDrives: TComboBox;
    Label1: TLabel;
    Memo1: TMemo;
    bBurn: TBitBtn;
    Panel2: TPanel;
    Image1: TImage;
    lblTopic0: TLabel;
    lblTopic1: TLabel;
    pb1: TProgressBar;
    lblSize: TLabel;
    procedure cbDrivesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure bBurnClick(Sender: TObject);
    procedure mcdbAddFile(Sender: TObject; const FullPath: AnsiString;
      var LongFileName, ShortFileName: AnsiString; var DateTime: TDateTime;
      Attr: Integer; FileSize: Int64; var Skip: Boolean);
    procedure mcdbWriteDone(Sender: TObject; Error: AnsiString);
  private
    procedure Burn;
    { Private declarations }
  public
    { Public declarations }
     procedure BackUpBurnCD(Captin:string);
  end;

var
  CDBurnTaxF: TCDBurnTaxF;

implementation



{$R *.dfm}


procedure TCDBurnTaxF.cbDrivesChange(Sender: TObject);
begin
  Memo1.Clear;
//  mcdb.Device := cbDrives.Text;
end;

procedure TCDBurnTaxF.FormShow(Sender: TObject);

begin
//  mcdb.InitializeASPI;
//  if not mcdb.ASPIInitialized then
//  begin
//    bBurn.Enabled := False;
//    Memo1.Lines.Add('—«Ì — ¬„«œÂ ‰Ì” .');
//    exit;
//  end;//if
//  if (mcdb.Devices <> nil) and (mcdb.Devices.Count > 0) then
//    cbDrives.Items.Assign(mcdb.Devices)
//  else
//    cbDrives.Enabled:=False;
//  if cbDrives.Items.Count > 0 then
//  begin
//    cbDrives.ItemIndex := 0;
//    cbDrivesChange(Sender);
//  end;
end;

procedure TCDBurnTaxF.BackUpBurnCD(Captin:string);
begin
  CDBurnTaxF:=TCDBurnTaxF.Create(Application);
  with CDBurnTaxF do
  begin
    try
      Caption:=' ÂÌÂ CD '+Captin;
      lblTopic0.Caption:=Caption;
      ShowModal;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TCDBurnTaxF.FormDestroy(Sender: TObject);
begin
  DelDir(IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))+'CdBurn'));
//  mcdb.Free;
end;

procedure TCDBurnTaxF.Timer1Timer(Sender: TObject);
begin
//  if not mcdb.Erasing then
//    begin
//      lblSize.Caption := FormatFloat('#,##0.00', (mcdb.BytesWritten / (1024 * 1024)))+'/'+FormatFloat('#,##0.00', ((mcdb.ImageSize * 2048) / (1024 * 1024)))+' MB   <>  '+
//                         FormatFloat('#,##0.00', (mcdb.BytesWritten ))+'/'+FormatFloat('#,##0.00', ((mcdb.ImageSize * 2048) ))+' MB';
//      ProgressBar1.Position := mcdb.BufferProgress;
//      pb1.Position := mcdb.BytesWritten div 2048;
//      pb1.Max := mcdb.ImageSize;
//      if mcdb.DeviceBufferSize >= mcdb.DeviceFreeBufferSize then
//        ProgressBar1.Position := Integer(mcdb.DeviceBufferSize - mcdb.DeviceFreeBufferSize);
//    end
//  else
//  begin
//    pb1.Max := 100;
//    pb1.Position := mcdb.EraseProgress;
//  end;
//  ProgressBar1.Position := mcdb.BytesWritten div 2048;
end;

procedure TCDBurnTaxF.Burn;
begin
  Memo1.Clear;
  Memo1.Font.Color:=clWindow;

//  if get_response('¬Ì« »—«Ì —«Ì  „ÿ„∆‰ Â” Ìœ.') = mryes then
//  begin
//    with mcdb do
//    begin
//      if not TestUnitReady then
//      begin
//        Memo1.Lines.Add('CD —« œ«Œ· œ—«ÌÊ ﬁ—«— œÂÌœ. ');
//        LoadMedium(True);
//        Exit;
//      end;//if

     //---------------------------WriteBackUp--------------------------------------
//      Application.ProcessMessages;
//      SessionToImport:=-1;
//      Timer1.Enabled:=True;
//      cbDrives.Enabled:=False;
//      DebugMsg('‘—Ê⁄ —«Ì  »« '+ mcdb.Device, 0);
//      ClearAll(60000,20000);
//
//      insertDir('\', IncludeTrailingPathDelimiter(ExtractFilePath(__TheTempDIR)+'CdBurn'));
//      Prepare;
//      if FreeBlocksOnDisc < ImageSize then
//      begin
//        Memo1.Font.Color:=clRed;
//        Memo1.Lines.Add('›÷«Ì œÌ”ﬂ ﬂ«›Ì ‰Ì” ');
//        mcdb.LoadMedium(True);
//        exit;
//      end;
//     ProgressBar1.Max:=ImageSize;
//     BurnCD;
//    end;//with
//  end
//  else
//  begin
//    Timer1.Enabled:=False;
//    mcdb.Abort;
//  end;//else
end;

procedure TCDBurnTaxF.bBurnClick(Sender: TObject);
begin
  Burn;
end;

procedure TCDBurnTaxF.mcdbAddFile(Sender: TObject; const FullPath: AnsiString;
  var LongFileName, ShortFileName: AnsiString; var DateTime: TDateTime;
  Attr: Integer; FileSize: Int64; var Skip: Boolean);
begin
  if Attr =0 then
    Memo1.Lines.Add('›«Ì· „ÊÃÊœ  '+AnsiToUtf8(ShortFileName))
  else
    Memo1.Lines.Add('›«Ì· »—«Ì «÷«›Â ‘œ‰   '+AnsiToUtf8(ShortFileName))

end;

procedure TCDBurnTaxF.mcdbWriteDone(Sender: TObject; Error: AnsiString);
begin
  Timer1.Enabled := False;
  if Error = '' then
  begin
    Memo1.Lines.Add(' ÂÌÂ CD »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
    Memo1.Font.Color:=clMaroon;
    Memo1.Color:=clInactiveCaption;
  end
  else
  begin
    Memo1.Font.Color:=clRed;
    Memo1.Lines.Add(' ÂÌÂ CD «‰Ã«„ ‰‘œ.');
  end;
//  mcdb.LoadMedium(True);
  cbDrives.Enabled:=True;

end;

end.
