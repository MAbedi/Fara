unit ViewFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, ComCtrls, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  ZipForge, StrUtils;

type
  TViewFileF = class(TTemplate5F)
    pnlAnnex: TPanel;
    ListView1: TListView;
    OpenDialog1: TOpenDialog;
    BitBtn8: TBitBtn;
    BitBtn5: TBitBtn;
    ZipForge1: TZipForge;
    btnAdd: TBitBtn;
    btnDelete: TBitBtn;
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
  private
    { Private declarations }
    ArchivePath: string;
    OrderId: string;
    procedure AddArchive(ListView: TListView; ZipName: String);
    procedure ShowIndexes(ListView: TListView; FileName: String);
    procedure DelFileFromArchive(ListView: TListView; ZipName: String);
    procedure SaveChange(Fname: String);
    function SaveIndexes(ListView: TListView;
      pathName, FileName: String): String;
    function GetArchivePath(SubDir: String): String;

  public
    { Public declarations }
    ArchiveName: String;
    ArchiveSubName: String;
    aFolderName: String;
    Zfname: String;
    procedure enter(aOrderId, FolderName: String; AllYear: Boolean;
      ReadOnly: Boolean = False);

  end;

var
  ViewFileF: TViewFileF;

implementation

uses DM, ScanImage, GlobalPro, shamsiDate;

{$R *.dfm}

procedure TViewFileF.enter(aOrderId, FolderName: String;
  AllYear: Boolean; ReadOnly: Boolean = False);
begin
  ViewFileF := TViewFileF.Create(Application);

  with ViewFileF DO
    try
      ArchivePath := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)) +
        'Archive\');
      if AllYear then
        aFolderName := 'AllYear\' + FolderName
      else
        aFolderName := IncludeTrailingBackslash(APPBank.Name) + FolderName;
      OrderId := aOrderId;
      if ReadOnly then
      begin
        btnAdd.Enabled := False;
        btnDelete.Enabled := False;
      end;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TViewFileF.btnAddClick(Sender: TObject);
begin
  inherited;
  AddArchive(ListView1, Zfname);
end;

procedure TViewFileF.AddArchive(ListView: TListView; ZipName: String);
var
  i: Integer;
  OpenD: TOpenDialog;
begin
  // if not FileExists(ZipName) then Exit;
  OpenD := TOpenDialog.Create(DMF);
  try
    OpenD.Options := [ofReadOnly, ofAllowMultiSelect, ofExtensionDifferent,
      ofPathMustExist, ofFileMustExist, ofNoDereferenceLinks, ofEnableSizing,
      ofForceShowHidden];
    OpenD.Title := '·ÿ›« ›«Ì·(Â«Ì) ÷„Ì„Â —« «‰ Œ«» ﬂ‰Ìœ';
    if OpenD.Execute then
    begin
      with ZipForge1 do
      begin
        FileName := ZipName;
        OpenArchive;
        Options.StorePath := spNoPath;
        if OpenD.Files.Count = 1 then
          AddFiles(OpenD.FileName)
        else
          for i := 0 to OpenD.Files.Count - 1 do
            AddFiles(OpenD.Files[i]);
        CloseArchive;
      end; // with
      ShowIndexes(ListView, ZipName);
    end; // if
  finally
    OpenD.Free;
  end; // try
end;

procedure TViewFileF.ShowIndexes(ListView: TListView; FileName: String);
var
  Fname: String;
  ArchiveItem: TZFArchiveItem;
  ListItem: TListItem;
  FileDate: Integer;
  fc: Integer;
begin
  ListView.Clear;
  Fname := FileName;
  if not FileExists(Fname) then
    exit;
  with ZipForge1 do
  begin
    FileName := Fname;
    OpenArchive(fmOpenRead);
    fc := FileCount;
    if (FindFirst('*.*', ArchiveItem, faAnyFile - faDirectory)) then
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
  end; // with
  if fc = 0 then
    DeleteFile(Fname);
end;

procedure TViewFileF.btnDeleteClick(Sender: TObject);
begin
  inherited;
  DelFileFromArchive(ListView1, Zfname);
end;

procedure TViewFileF.DelFileFromArchive(ListView: TListView; ZipName: String);
var
  Fname: String;
  fc: Integer;
begin
  ListView.SetFocus;
  if not FileExists(ZipName) then
  begin
    warn('÷„Ì„Âù«Ì »—«Ì «Ì‰ ›—„ „ÊÃÊœ ‰Ì” .');
    exit;
  end; // if
  if ListView.Selected = nil then
  begin
    warn('·ÿ›« ÷„Ì„Â „Ê—œ ‰Ÿ— —« «‰ Œ«» ﬂ‰Ìœ.');
    exit;
  end; // if
  Fname := ListView.Selected.Caption;
  if get_response('¬Ì« »—«Ì Õ–› ÷„Ì„Â ' + Fname + ' „ÿ„∆‰ Â” Ìœø') <> mrYes then
    exit;
  with ZipForge1 do
  begin
    FileName := ZipName;
    OpenArchive;
    deletefiles(Fname);
    fc := FileCount;
    CloseArchive;
  end; // with
  if fc = 0 then
    DeleteFile(ZipName);
  ShowIndexes(ListView, ZipName);
end;

procedure TViewFileF.BitBtn18Click(Sender: TObject);
begin
  inherited;
  // ScanImageoldF.enter(ListView1, Zfname);
  // ScanImageF.ScanImage(ListView1, Zfname);
end;

procedure TViewFileF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  SaveChange(Zfname);
end;

procedure TViewFileF.SaveChange(Fname: String);
var
  srch: TSearchRec;
  SrName: String;
begin
  if not FileExists(Fname) then
    exit;

  SrName := StringReplace(Fname, ArchivePath, __TheTempDIR, [rfReplaceAll]);
  SetLength(SrName, length(SrName) - 4);
  if DirectoryExists(SrName) then
  begin
    if get_response('÷„«∆„  €ÌÌ— ﬂ—œÂ ¬Ì« „ÌŒÊ«ÂÌœ »«“Ì«»Ì ‘Êœ') = mrYes then
    begin
      ZipForge1.FileName := Fname;
      ZipForge1.OpenArchive;
      if FindFirst(SrName + '\*.*', faAnyFile, srch) = 0 then
        repeat
          if (srch.Name <> '.') and (srch.Name <> '..') then
          begin
            ZipForge1.AddFiles(SrName + '\' + srch.Name);
            DeleteFile(SrName + '\' + srch.Name);
          end; // if
        until FindNext(srch) <> 0;
      FindClose(srch);
      ZipForge1.CloseArchive;
      DelDir(SrName)
    end; // if
  end; // if
end;

procedure TViewFileF.BitBtn5Click(Sender: TObject);
var
  Fname: String;
begin
  inherited;
  ListView1.SetFocus;
  Fname := SaveIndexes(ListView1, __TheTempDIR, Zfname);
  if Fname <> '' then
    RunDoc(Fname);
end;

function TViewFileF.SaveIndexes(ListView: TListView;
  pathName, FileName: String): String;
var
  ZipName: String;
  Fname: String;
  DirName: String;
  i: Integer;
begin
  Result := '';
  ListView.SetFocus;
  ZipName := FileName;
  DirName := ExtractFileDir(ZipName);
  i := LastDelimiter('\', DirName);
  if (i > 0) and (DirName[i] = '\') then
    DirName := Copy(DirName, i, MaxInt);
  DirName := IncludeTrailingBackslash(pathName + DirName) +
    LeftStr(ExtractFileName(ZipName), length(ExtractFileName(ZipName)) - 4);
  if not FileExists(ZipName) then
  begin
    warn('÷„Ì„Âù«Ì »—«Ì «Ì‰ ›—„ „ÊÃÊœ ‰Ì” .');
    exit;
  end; // if
  if ListView.Selected = nil then
  begin
    warn('·ÿ›« ÷„Ì„Â „Ê—œ ‰Ÿ— —« «‰ Œ«» ﬂ‰Ìœ.');
    exit;
  end; // if
  Fname := ListView.Selected.Caption;
  with ZipForge1 do
  begin
    FileName := ZipName;
    OpenArchive;
    BaseDir := DirName;
    ExtractFiles(Fname);
    CloseArchive;
  end; // with
  Result := IncludeTrailingBackslash(DirName) + Fname;
  if not FileExists(Result) then
    Result := '';
end;

procedure TViewFileF.FormShow(Sender: TObject);
begin
  inherited;
  ArchiveName := GetArchivePath(aFolderName);
  ForceDirectories(ArchiveName);
  Zfname := ArchiveName + OrderId + '.zip';
  ShowIndexes(ListView1, Zfname);
end;

function TViewFileF.GetArchivePath(SubDir: String): String;
begin
  try
    Result := IncludeTrailingBackslash(IncludeTrailingBackslash(ArchivePath)
      + SubDir);
  except
    warn('«‘ﬂ«· œ— ÅÌœ« ﬂ—œ‰ „”Ì— ');
  end; // try
end;

procedure TViewFileF.ListView1DblClick(Sender: TObject);
begin
  inherited;
  BitBtn5.Click
end;

end.
