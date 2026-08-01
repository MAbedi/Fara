//Mostafa
unit ScanImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, DelphiTwain, ImgList, DBActns, ActnList, StdCtrls,
  Buttons, ExtCtrls,ZipForge,jpeg,ComCtrls;

type
  TScanImageF = class(Ttemplate0F)
    Panel1: TPanel;
    pnlImage: TPanel;
    Image1: TImage;
    lblCaption: TLabel;
    ImgTemplate: TImage;
    BitBtn1: TBitBtn;
    ActionList: TActionList;
    actExit: TAction;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    _actSearch: TAction;
    DataSetDelete1_: TDataSetDelete;
    actScan: TAction;
    actSave: TAction;
    ImageList1: TImageList;
    BtnReject: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    actAddArchive: TAction;
    ZipForge1: TZipForge;
    procedure actScanExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure TwainTwainAcquire(Sender: TObject; const Index: Integer;
      Image: TBitmap; var Cancel: Boolean);
    procedure TwainAcquireError(Sender: TObject; const Index: Integer;
      ErrorCode, Additional: Integer);
    procedure actExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    ListView:TListView;
    ZipFileName:String;
    scnr: TDelphiTwain;
    procedure SucImg(Sender: TObject; const Index: Integer; Image: TBitmap;
      var Cancel: Boolean);
    procedure ShowIndexes(ListView: TListView; FileName:String);
    { Private declarations }
  public
    procedure enter(LView:TListView;ZfName:String);
    { Public declarations }
  end;

var
  ScanImageF: TScanImageF;

implementation

uses GlobalPro,  dm,  mmessage, StrUtils, shamsiDate;

{$R *.dfm}

procedure TScanImageF.actScanExecute(Sender: TObject);
var
  n:Integer;
begin
  inherited;
  if scnr.LoadLibrary then begin
      scnr.SourceManagerLoaded := TRUE;
      n := scnr.SelectSource;
      if n <> -1 then begin
        scnr.Source[n].Loaded := TRUE;
        scnr.Source[n].TransferMode := ttmMemory;
        scnr.Source[n].Enabled := TRUE;
      end ;
  end else
        Warn('¬„«œÂ «”ﬂ‰ ‰Ì” .');

end;

procedure TScanImageF.actSaveExecute(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute then
    Image1.Picture.Bitmap.SaveToFile(SaveDialog1.FileName);
end;

procedure TScanImageF.TwainTwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
begin
  inherited;
  Image1.Picture.Assign(Image);
end;

procedure TScanImageF.TwainAcquireError(Sender: TObject;
  const Index: Integer; ErrorCode, Additional: Integer);
begin
  inherited;
  Warn('«‘ﬂ«· œ— «”ﬂ‰ «ÿ·«⁄« ', mtError);
end;

procedure TScanImageF.enter(LView:TListView;ZfName:String);
begin
  ScanImageF:=TScanImageF.Create(Application);
  with ScanImageF do begin
    try
      ZipFileName:=ZfName;
      ListView:=LView;
      showModal;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TScanImageF.actExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;


procedure TScanImageF.SucImg(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
Var
  Zipname:String;
  FilePath:String;
  s:String;
  jpg:TJPEGImage;
  Anum:Integer;
  fname:String;
begin
  inherited;
  Anum:=0;
  try
    Image1.Picture.Assign(Image);
    if get_response('«ÿ·«⁄«  «”ﬂ‰ ‘œÂ »Â ¬—‘ÌÊ «÷«›Â ‘Êœ') = mryes then begin
      FilePath:=IncludeTrailingBackslash(__TheTempDIR)+'ImageTemp\';
      fname:=ExtractFileName(ZipFileName);
      Anum:=ListView.Items.Count;
      inc(anum);
      s:=get_box('','‰«„ ›«Ì· «”ﬂ‰ ‘œÂ',LeftStr(fname,length(fname)-4)+'_'+IntToStr(Anum));
      if s='' then Exit
     else s:=s+'.jpg' ;
      ForceDirectories(FilePath);
      try
        jpg:=TJPEGImage.Create;
        jpg.Assign(Image);
        jpg.SaveToFile(FilePath+s);
      finally
        jpg.Free;
      end;//try
      ZipName:=ZipFileName;
      with ZipForge1 do begin
        FileName := ZipName;
        OpenArchive;
       // Options.StorePath:=spNoPath;
        AddFiles(FilePath+s);
        CloseArchive;
      end;//with
      ShowIndexes(ListView,Zipname);
      BigMessage('«÷«›Â ‘œ',1);
    end;//if
  except
    Warn('«‘ﬂ«· œ— «÷«›Â ﬂ—œ‰ »Â ¬—‘ÌÊ');
  end;//try
end;

procedure TScanImageF.ShowIndexes(ListView: TListView; FileName:String);
var
  fName:  String;
  ArchiveItem: TZFArchiveItem;
  ListItem: 	 TListItem;
  FileDate:	 Integer;
  fc: Integer;
begin
  ListView.Clear;
  fName:=FileName;
  if not FileExists(fName) then exit;
  with ZipForge1 do begin
      FileName := fName;
      OpenArchive(fmOpenRead);
      fc:=FileCount;
      if (FindFirst('*.*',ArchiveItem,faAnyFile-faDirectory)) then
         repeat
            // Add file name
            ListItem := ListView.Items.Add;
            ListItem.Caption := ArchiveItem.FileName;
            // Add modification date
            FileDate := ArchiveItem.LastModFileDate shl 16 +
              ArchiveItem.LastModFileTime;
            ListItem.SubItems.Add(miladi2Shamsi(FileDateToDateTime(FileDate)));
          until (not FindNext(ArchiveItem));
      CloseArchive;
  end;//with
  if fc=0 then DeleteFile(fName);
end;

procedure TScanImageF.FormCreate(Sender: TObject);
begin
  inherited;
  scnr:=TDelphiTwain.Create(Self);
  scnr.OnTwainAcquire:=SucImg;

end;

procedure TScanImageF.FormDestroy(Sender: TObject);
begin
  inherited;
  scnr.Free;
end;

end.
