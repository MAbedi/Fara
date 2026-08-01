// Mostafa
unit PersonalArchive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList, jpeg,
  ZipForge, DBCtrls, DB, ADODB, StdCtrls, Mask, ExtCtrls, Printers,
  Buttons, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppDevice, FileCtrl, Menus, ExtDlgs, ViewFileOnServer,
  ppDB, ppModule, ppStrtch, ppSubRpt, ppVar, ppDBPipe, ppParameter, StrUtils,
  ieview, imageenview, imageenio, iemio, iemview, ppDesignLayer,
  System.ImageList, System.Actions, hyiedefs, hyieutils, iexBitmaps, iesettings,
  iexLayers, iexRulers, iexToolbars, iexUserInteractions, imageenproc;

type
  TPersonalArchiveF = class(Ttemplate2MDIF)
    qryPersonalInfo: TADOQuery;
    srcPersonalInfo: TDataSource;
    qryPersonalInfoPersonelNo: TIntegerField;
    qryPersonalInfoPersonelName_L1: TStringField;
    qryPersonalInfoPersonelName_L2: TStringField;
    qryArchive: TADOQuery;
    srcArchive: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryFormInfo: TADOQuery;
    srcformInfo: TDataSource;
    qryFormInfoInfoName_L1: TStringField;
    qryFormInfoInfoName_L2: TStringField;
    qryFormInfoFormInfoID: TIntegerField;
    qryArchiveArchiveID: TIntegerField;
    qryArchivePersonelNo: TIntegerField;
    qryArchiveComment: TStringField;
    qryArchiveFormInfoID: TIntegerField;
    BitBtn1: TBitBtn;
    actScan: TAction;
    ZipForge1: TZipForge;
    actShowImage: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    pnlImage: TPanel;
    qryArchive_FormInfoName: TStringField;
    Button1: TButton;
    actPrint: TAction;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoInfoName_L2: TStringField;
    ComboGrp: TComboBox;
    Bevel1: TBevel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    actBackUpArchive: TAction;
    Memo1: TMemo;
    actZoom: TAction;
    chkAllGrp: TCheckBox;
    BitBtn11: TBitBtn;
    ActSort: TAction;
    BitBtn6: TBitBtn;
    BitBtn12: TBitBtn;
    actSearch: TAction;
    ActCopy: TAction;
    ActPaste: TAction;
    PopupMenu1: TPopupMenu;
    ActCopy1: TMenuItem;
    ActPaste1: TMenuItem;
    ActChangeGrpRead: TAction;
    ActChangeGrpWrite: TAction;
    ActChangeGrpRead1: TMenuItem;
    ActChangeGrpWrite1: TMenuItem;
    qryArchive_Radif: TIntegerField;
    DBTxtPersonelName: TDBText;
    BitBtn13: TBitBtn;
    Button2: TButton;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    actprintInformation: TAction;
    ppHeaderBand1: TppHeaderBand;
    pplbCmpany: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppLabel8: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine17: TppLine;
    ppLine21: TppLine;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine1: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    actRecovery: TAction;
    lstListFiles: TListBox;
    SproRecoveryPersonelArchives: TADOStoredProc;
    BitBtn14: TBitBtn;
    actAddImg: TAction;
    OpenPictureDialog1: TOpenPictureDialog;
    ImageEnMIO1: TImageEnIO;
    Img4Show: TImageEnView;
    actViewFileF: TAction;
    BitBtn15: TBitBtn;
    BitBtn2: TBitBtn;
    procedure qryPersonalInfoAfterScroll(DataSet: TDataSet);
    // procedure TwainTwainAcquire(Sender: TObject; const Index: Integer;
    // Image: TBitmap; var Cancel: Boolean);
    procedure qryArchiveAfterInsert(DataSet: TDataSet);
    procedure actScanExecute(Sender: TObject);
    procedure srcArchiveStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actShowImageExecute(Sender: TObject);
    procedure qryArchiveAfterPost(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryArchiveBeforeDelete(DataSet: TDataSet);
    procedure qryArchiveAfterCancel(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryArchiveFormInfoIDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryArchiveFormInfoIDSetText(Sender: TField; const Text: String);
    procedure ComboGrpChange(Sender: TObject);
    procedure chkAllGrpClick(Sender: TObject);
    procedure actBackUpArchiveExecute(Sender: TObject);
    // procedure mcdbWriteDone(Sender: TObject; Error: String);
    procedure Memo1DblClick(Sender: TObject);
    // procedure mcdbDebugMessage(Sender: TObject; Message: String;
    // mType: Byte);
    // procedure mcdbAddDir(Sender: TObject; var LongName, ShortName: String;
    // var Skip: Boolean);
    procedure actZoomExecute(Sender: TObject);
    procedure ActSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure ActCopyExecute(Sender: TObject);
    procedure ActPasteExecute(Sender: TObject);
    procedure ActChangeGrpReadExecute(Sender: TObject);
    procedure ActChangeGrpWriteExecute(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure qryArchiveCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBTxtPersonelNameDblClick(Sender: TObject);
    procedure ppDBText10GetText(Sender: TObject; var Text: String);
    procedure actprintInformationExecute(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure pplbCmpanyGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actRecoveryExecute(Sender: TObject);
    procedure mcdbDebugMessage(Sender: TObject; Message: String; mType: Byte);
    procedure mcdbWriteDone(Sender: TObject; Error: AnsiString);
    procedure actAddImgExecute(Sender: TObject);
    procedure ImageEnMIO1FinishWork(Sender: TObject);
    procedure Img4ShowDblClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure actViewFileFExecute(Sender: TObject);
  private
    CopyFileName: String;
    IDChangeGrp: String;
    function LoadImage(pathName, fname: String): String;
    procedure AddImage(isScan: Boolean);
    procedure DelImage;
    procedure ShowPnlImage;
    // procedure PrintImage(Image: TImage; ZoomPercent: Integer);
    // procedure DrawImage(Canvas: TCanvas; DestRect: TRect; ABitmap: TBitmap);
    procedure initCombos;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersonalArchiveF: TPersonalArchiveF;

implementation

uses DM, GlobalPro, mmessage, search1, Zoom, sort2, search2, main, PersonelInfo,
  SelectedScaner, mdiMain;

{$R *.dfm}
{ TPersonalArchiveF }

// procedure TPersonalArchiveF.DrawImage(Canvas: TCanvas; DestRect: TRect;
// ABitmap: TBitmap);
// var
// Header, Bits: Pointer;
// HeaderSize: DWORD;
// BitsSize: DWORD;
// begin
// GetDIBSizes(ABitmap.Handle, HeaderSize, BitsSize);
// Header := AllocMem(HeaderSize);
// Bits := AllocMem(BitsSize);
// try
// GetDIB(ABitmap.Handle, ABitmap.Palette, Header^, Bits^);
// StretchDIBits(Canvas.Handle, DestRect.Left, DestRect.Top, DestRect.Right,
// DestRect.Bottom, 0, 0, ABitmap.Width, ABitmap.Height, Bits,
// TBitmapInfo(Header^), DIB_RGB_COLORS, SRCCOPY);
// finally
// FreeMem(Header, HeaderSize);
// FreeMem(Bits, BitsSize);
// end;
// end;

// procedure TPersonalArchiveF.PrintImage(Image: TImage; ZoomPercent: Integer);
// var
// relHeight, relWidth: Integer;
// jpg: TJPEGImage;
// bmp: TBitmap;
// begin
// Screen.Cursor := crHourglass;
// bmp := TBitmap.Create;
// jpg := TJPEGImage.Create;
// try
// jpg.LoadFromFile(LoadImage(__TheTempDIR, qryArchiveArchiveID.AsString
// + '.jpg'));
// if jpg = nil then
// Exit;
// bmp.Assign(jpg);
// Printer.BeginDoc;
// with bmp do
// begin
// if ((Width / Height) > (Printer.PageWidth / Printer.PageHeight)) then
// begin
// relWidth := Printer.PageWidth;
// relHeight := MulDiv(Height, Printer.PageWidth, Width);
// end
// else
// begin
//
// relWidth := MulDiv(Width, Printer.PageHeight, Height);
// relHeight := Printer.PageHeight;
// end;
// relWidth := Round(relWidth * ZoomPercent / 100);
// relHeight := Round(relHeight * ZoomPercent / 100);
// DrawImage(Printer.Canvas, Rect(0, 0, relWidth, relHeight), bmp);
// end;
// Printer.EndDoc;
// finally
// bmp.Free;
// jpg.Free;
// Screen.Cursor := crDefault;
// end; // try
// end;

function TPersonalArchiveF.LoadImage(pathName, fname: String): String;
var
  ZipName: String;
begin
  inherited;
  Result := '';
  ZipName := opt._ArchivePath + qryPersonalInfo.FieldByName('PersonelNo')
    .AsString + '.zip';
  if not FileExists(ZipName) then
    Exit;
  with ZipForge1 do
  begin
    FileName := ZipName;
    OpenArchive;
    BaseDir := pathName;
    ExtractFiles(fname);
    CloseArchive;
  end; // with
  Result := IncludeTrailingPathDelimiter(pathName) + fname;
  if not FileExists(Result) then
    Result := '';
end;

procedure TPersonalArchiveF.qryPersonalInfoAfterScroll(DataSet: TDataSet);
var
  GrpIDFrom: Integer;
begin
  inherited;
  if chkAllGrp.Checked then
  begin
    ComboGrp.Enabled := False;
    with qryArchive do
    begin
      Active := False;
      Parameters.ParamByName('FormInfoIDFrom').Value := 0;
      Parameters.ParamByName('FormInfoIDTo').Value := 9999999;
      Parameters.ParamByName('PersonelCode').Value :=
        DataSet.FieldByName('PersonelNo').AsInteger;
      Active := True;
    end; // with
  end
  else
  begin
    ComboGrp.Enabled := True;
    if ComboGrp.ItemIndex = -1 then
      Exit;
    GrpIDFrom := Integer(ComboGrp.Items.Objects[ComboGrp.ItemIndex]);
    with qryArchive do
    begin
      Active := False;
      Parameters.ParamByName('FormInfoIDFrom').Value := GrpIDFrom;
      Parameters.ParamByName('FormInfoIDTo').Value := GrpIDFrom;
      Parameters.ParamByName('PersonelCode').Value :=
        DataSet.FieldByName('PersonelNo').AsInteger;
      Active := True;
    end; // with
  end;
  // with qryArchive do begin
  // Active:=False;
  // Parameters.ParamByName('PersonelCode').Value:=DataSet.fieldbyname('PersonelNo').AsInteger;
  // Active:=True;
  // end;//with
end;

// procedure TPersonalArchiveF.TwainTwainAcquire(Sender: TObject;
// const Index: Integer; Image: TBitmap; var Cancel: Boolean);
// begin
// inherited;
// ShowPnlImage;
// Img4Show.Picture.Assign(Image);
// end;

procedure TPersonalArchiveF.qryArchiveAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if (ComboGrp.ItemIndex = -1) then
  begin
    DataSet.Cancel;
    Exit;
  end; // if
  DataSet.FieldByName('PersonelNo').AsInteger :=
    qryPersonalInfo.FieldByName('PersonelNo').AsInteger;
  DataSet.FieldByName('ArchiveID').AsInteger :=
    GetANewCode('', 'Pay.PersonelArchives', 'ArchiveID');
  DataSet.FieldByName('FormInfoID').AsInteger :=
    Integer(ComboGrp.Items.Objects[ComboGrp.ItemIndex]);
  DBEdit1.SetFocus;
end;

procedure TPersonalArchiveF.actScanExecute(Sender: TObject);
begin
  inherited;
  if not CheckRequiredFields(qryArchive) then
    Exit;
  ImageEnMIO1.TwainParams.AutoScan := True;
  ImageEnMIO1.TwainParams.BufferedTransfer := True;
  ImageEnMIO1.TwainParams.SelectedSource := SelectedScanerF.ShowForms
    (ImageEnMIO1);
  ImageEnMIO1.Acquire()
  //
  // if Twain.LoadLibrary then
  // begin
  // Twain.SourceManagerLoaded := True;
  // n := Twain.SelectSource;
  // if n <> -1 then
  // begin
  // Twain.Source[n].Loaded := True;
  // Twain.Source[n].TransferMode := ttmMemory;
  // Twain.Source[n].Enabled := True;
  // end;
  // end
  // else
  // Warn('اسكنر آماده نيست');

end;

procedure TPersonalArchiveF.srcArchiveStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryArchive.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
  // newPanel.Visible:=not chkAllGrp.Checked;
end;

procedure TPersonalArchiveF.FormCreate(Sender: TObject);
begin
  inherited;
  initCombos;
  ComboGrp.ItemIndex := 0;
  qryFormInfo.Active := True;
  qryFormsInfo.Active := True;
  qryPersonalInfo.Active := True;
  SysUtils.ForceDirectories(opt._ArchivePath);
end;

procedure TPersonalArchiveF.AddImage;
var
  ZipName: String;
  s: String;
begin
  inherited;
  ZipName := opt._ArchivePath + qryPersonalInfo.FieldByName('PersonelNo')
    .AsString + '.zip';
  s := qryArchiveArchiveID.AsString + '.jpg';

  Img4Show.IO.SaveToFile(__TheTempDIR + s);
  Img4Show.Proc.ClearUndo;

  with ZipForge1 do
  begin
    FileName := ZipName;
    OpenArchive;
    Options.StorePath := spNoPath;
    AddFiles(__TheTempDIR + s);
    CloseArchive;
  end; // with
end;

procedure TPersonalArchiveF.actShowImageExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := LoadImage(__TheTempDIR, qryArchiveArchiveID.AsString + '.jpg');
  if s <> '' then
  begin
    try
      Img4Show.IO.LoadFromFile(s);
    finally
      ShowPnlImage;
    end;
  end
  else
    Warn('هيچ فايلي براي نمايش نيست.');

end;

procedure TPersonalArchiveF.qryArchiveAfterPost(DataSet: TDataSet);
begin
  inherited;
  if pnlImage.Visible then
  begin
    if get_response('آيا اطلاعات اسكن شده به آرشيوه اضافه شود') = mrYes then
      AddImage(True);
    BigMessage('اضافه شد', 1);
    pnlImage.Visible := False;
  end; // if
  BigMessage('ثبت شد', 1);

end;

procedure TPersonalArchiveF.ShowPnlImage;
begin
  pnlImage.Visible := not pnlImage.Visible;
  if pnlImage.Visible then
    pnlImage.Align := alClient;
end;

procedure TPersonalArchiveF.actPrintExecute(Sender: TObject);
begin
  inherited;
  // s := get_box('', 'درصد نمايش براي پرينت', '100');
  // if s <> '' then
  // PrintImage(Img4Show.Bitmap, StrToInt(s));
  Img4Show.IO.DoPrintPreviewDialog(iedtDialog);
end;

procedure TPersonalArchiveF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  SetColSize(DBGrid2, 1, True);
end;

procedure TPersonalArchiveF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(qryPersonalInfo);
end;

procedure TPersonalArchiveF.qryArchiveBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if ViewFileOnServerF.enter(qryArchiveArchiveID.AsString, 'PersonalArchive',
    True) then
  // if ViewFileF.enter(qryArchiveArchiveID.AsString, 'PersonalArchive', True,      True) then
  begin
    Warn('ابتدا فایل های پیوست حذف شوند.');
    Abort;
  end;
  if get_response('آيا از حذف مطمئن هستيد') <> mrYes then
    Abort;
  DelImage;
end;

procedure TPersonalArchiveF.DelImage;
var
  ZipName: String;
  // jpg:TJPEGImage;
  s: String;
begin
  inherited;
  ZipName := opt._ArchivePath + qryPersonalInfo.FieldByName('PersonelNo')
    .AsString + '.zip';
  s := qryArchiveArchiveID.AsString + '.jpg';
  // jpg:=TJPEGImage.Create;
  with ZipForge1 do
  begin
    FileName := ZipName;
    OpenArchive;
    Options.StorePath := spNoPath;
    DeleteFiles(s);
    CloseArchive;
  end; // with
end;

procedure TPersonalArchiveF.qryArchiveAfterCancel(DataSet: TDataSet);
begin
  inherited;
  pnlImage.Visible := False;
end;

procedure TPersonalArchiveF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  actShowImage.Execute;
end;

procedure TPersonalArchiveF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TPersonalArchiveF.qryArchiveFormInfoIDGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
    'InfoName_L1'));
end;

procedure TPersonalArchiveF.qryArchiveFormInfoIDSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := Integer(ComboGrp.Items.Objects[ComboGrp.ItemIndex]);
end;

procedure TPersonalArchiveF.ComboGrpChange(Sender: TObject);
var
  GrpIDFrom, GrpIDTo, i: Integer;
begin
  inherited;
  if ComboGrp.ItemIndex = -1 then
    Exit;
  i := Integer(ComboGrp.Items.Objects[ComboGrp.ItemIndex]);
  GrpIDFrom := 0;
  GrpIDTo := 9999999;
  if i > 0 then
  begin
    GrpIDFrom := i;
    GrpIDTo := i;
  end;
  with qryArchive do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoIDFrom').Value := GrpIDFrom;
    Parameters.ParamByName('FormInfoIDTo').Value := GrpIDTo;
    Active := True;
  end; // with
end;

procedure TPersonalArchiveF.initCombos;
var
  FiledId: Integer;
begin
  ComboGrp.Clear;
  FiledId := 1;
  if optP.primaryLanguage <> 0 then
    FiledId := 2;
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT  FormInfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo '
      + 'WHERE FormType=36';
    Active := True;
    while not eof do
    begin
      ComboGrp.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure TPersonalArchiveF.chkAllGrpClick(Sender: TObject);
var
  GrpIDFrom: Integer;
begin
  inherited;
  ComboGrp.Enabled := not chkAllGrp.Checked;
  if chkAllGrp.Checked then
  begin
    with qryArchive do
    begin
      Active := False;
      Parameters.ParamByName('FormInfoIDFrom').Value := 0;
      Parameters.ParamByName('FormInfoIDTo').Value := 9999999;
      Active := True;
    end; // with
  end
  else
  begin
    if ComboGrp.ItemIndex = -1 then
      Exit;
    GrpIDFrom := Integer(ComboGrp.Items.Objects[ComboGrp.ItemIndex]);
    with qryArchive do
    begin
      Active := False;
      Parameters.ParamByName('FormInfoIDFrom').Value := GrpIDFrom;
      Parameters.ParamByName('FormInfoIDTo').Value := GrpIDFrom;
      Active := True;
    end; // with
  end;
end;

procedure TPersonalArchiveF.actAddImgExecute(Sender: TObject);
begin
  inherited;
  With OpenPictureDialog1 do
  begin
    Img4Show.Visible := True;
    if Execute then
      Img4Show.IO.LoadFromFile(FileName);
    AddImage(False);
  end;
end;

procedure TPersonalArchiveF.actBackUpArchiveExecute(Sender: TObject);
var
  s: String;
  src, dec, conststr: String;
begin
  inherited;
  src := opt._ArchivePath + qryPersonalInfo.FieldByName('PersonelNo')
    .AsString + '.zip';
  SysUtils.ForceDirectories(IncludeTrailingPathDelimiter
    (ExtractFilePath(ParamStr(0))) + 'BurnArchive');
  dec := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) +
    'BurnArchive\' + MakeUniqDBBackupName('PersonalArchive',
    var_glb_CurrentDate) + '.zip';
  if not CopyFile(pchar(src), pchar(dec), False) then
    raise Exception.Create('اشكال در كپي آرشيو به شاخه موقت');
  if SelectDirectory('لطفاً مسير پشتيبان گيري را وارد كنيد:', '', s) then
  begin
    // mcdb.InitializeASPI;
    conststr := LeftStr(s, 2); // ;
    // if pos(conststr, UpperCase(mcdb.Devices.Text)) <> 0 then
    // begin
    // Memo1.Visible := True;
    // With mcdb do
    // begin
    // mcdb.Device := AnsiString(mcdb.Devices.Text);
    // if not TestUnitReady then
    // begin
    // Memo1.Lines.Add('CD را داخل درايو قرار دهيد. ');
    // LoadMedium(True);
    // Exit;
    // end; // if
    // SessionToImport := -1;
    // ClearAll(60000, 20000);
    // insertDir('\', AnsiString(ExtractFilePath(dec)));
    // Prepare;
    // if FreeBlocksOnDisc < ImageSize then
    // begin
    // Memo1.Font.Color := clRed;
    // Memo1.Lines.Add('فضاي ديسك كافي نيست');
    // Exit;
    // end;
    // PnlUnderButton.Enabled := False;
    // BurnCD;
    // end; // with
    // end
    //
    // else
    // begin
    // if not CopyFile(pchar(dec), pchar(IncludeTrailingPathDelimiter(s) +
    // extractFileName(dec)), False) then
    // raise Exception.Create('اشكال در كپي ');
    // end; // else
    // BigMessage('عمليات پشتيبان‌گيري با موفقيت انجام شد.', 1);
    // DelDir(ExtractFilePath(dec))
  end; // if
end;

procedure TPersonalArchiveF.Memo1DblClick(Sender: TObject);
begin
  inherited;
  (Sender as TMemo).Visible := not(Sender as TMemo).Visible
end;

procedure TPersonalArchiveF.Panel2Click(Sender: TObject);
begin
  inherited;
  With OpenPictureDialog1 do
  begin
    Img4Show.Visible := True;
    if Execute then
      Img4Show.IO.LoadFromFile(FileName, ioPDF);
  end;
end;

// procedure TPersonalArchiveF.mcdbAddDir(Sender: TObject; var LongName,
// ShortName: AnsiString; var Skip: Boolean);
// begin
// inherited;
// BigMessage('در حال كپي اطلاعات',1);
// end;

procedure TPersonalArchiveF.mcdbDebugMessage(Sender: TObject; Message: String;
  mType: Byte);
begin
  inherited;
  if LeftStr(Message, 4) <> 'aaaa' then
    Memo1.Lines.Add((Message)); // AnsiToUtf8
end;

procedure TPersonalArchiveF.mcdbWriteDone(Sender: TObject; Error: AnsiString);
begin
  inherited;
  if Error = '' then
    Memo1.Lines.Add('تهيه CD با موفقيت انجام شد')
  else
  begin
    Memo1.Font.Color := clRed;
    Memo1.Lines.Add('تهيه CD انجام نشد.');
  end;
  // mcdb.LoadMedium(True);
  PnlUnderButton.Enabled := True;

end;

procedure TPersonalArchiveF.actZoomExecute(Sender: TObject);
// VAR
// i:Integer;
begin
  inherited;
  ZoomF.enter(Self);
end;

procedure TPersonalArchiveF.ImageEnMIO1FinishWork(Sender: TObject);
begin
  inherited;
  ShowPnlImage;
  // Img4Show.Picture.Assign(Image);

end;

procedure TPersonalArchiveF.Img4ShowDblClick(Sender: TObject);
begin
  inherited;
  ShowPnlImage;
end;

procedure TPersonalArchiveF.ActSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonalInfo);
end;

procedure TPersonalArchiveF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonalInfo);
end;

procedure TPersonalArchiveF.ActCopyExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := LoadImage(__TheTempDIR, qryArchiveArchiveID.AsString + '.jpg');
  if s <> '' then
  begin
    CopyFileName := qryArchive.FieldByName('ArchiveID').AsString + '.jpg';
    ActPaste.Enabled := True;
  end
  else
    Warn('هيچ تصويري براي كپي كردن وجود ندارد.');
end;

procedure TPersonalArchiveF.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  if qryArchiveArchiveID.AsInteger = 0 then
    Warn('ابتدا ردیف تعریف شود(جدید)')
  else
    // ViewFileF.enter(qryArchiveArchiveID.AsString, 'PersonalArchive', True);
    ViewFileOnServerF.enter(qryArchiveArchiveID.AsString, 'PersonalArchive',
      True)
end;

procedure TPersonalArchiveF.ActPasteExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  if get_response('آيا تصوير كپي شده به آرشيوه اضافه شود') <> mrYes then
    Exit;
  s := qryArchive.FieldByName('ArchiveID').AsString + '.jpg';
  with ZipForge1 do
  begin
    FileName := opt._ArchivePath + qryPersonalInfo.FieldByName('PersonelNo')
      .AsString + '.zip';
    OpenArchive;
    Options.StorePath := spNoPath;
    CopyFile(pchar(__TheTempDIR + CopyFileName),
      pchar(__TheTempDIR + s), False);
    AddFiles(__TheTempDIR + s);
    CloseArchive;
  end; // with
  BigMessage('تصوير اضافه شد', 1);
  ActPaste.Enabled := False;
end;

procedure TPersonalArchiveF.ActChangeGrpReadExecute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid2.SelectedRows.Count > 0 then
    if get_response('آيا براي كپي كردن اطلاعات انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  with DBGrid2.DataSource.DataSet do
    for i := 0 to DBGrid2.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid2.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('ArchiveID').AsString;
    end;
  If s = '' then
    Exit;
  IDChangeGrp := s; // qryArchive.FieldByname('ArchiveID').AsInteger;
  ActChangeGrpWrite.Enabled := True;
end;

procedure TPersonalArchiveF.ActChangeGrpWriteExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا اطلاعات كپي شده به اين قسمت اضافه شود') <> mrYes then
    Exit;
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE PersonelArchives ' + 'SET PersonelNo = ' +
      qryPersonalInfo.FieldByName('PersonelNo').AsString + ', FormInfoID = ' +
      IntToStr(Integer(ComboGrp.Items.Objects[ComboGrp.ItemIndex])) +
      'WHERE ArchiveID in(' + IDChangeGrp + ')';
    BigMessage(IntToStr(ExecSQL) + ' اطلاعات انتقال يافت.‏', 1);
    Active := False;
  end; // with
  qryArchive.Requery();
  ActChangeGrpWrite.Enabled := False;
end;

procedure TPersonalArchiveF.BitBtn13Click(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryPersonalInfo.FieldByName('PersonelNo').AsVariant, [])
end;

procedure TPersonalArchiveF.qryArchiveCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_Radif').AsInteger := abs(DataSet.RecNo)
end;

procedure TPersonalArchiveF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DBGrid1.Enabled := not DBGrid1.Enabled;
  if DBGrid1.Enabled then
    DBTxtPersonelName.Font.Color := clBlack
  else
    DBTxtPersonelName.Font.Color := clRed;
  BigMessage('فرم روي اين پرسنل ثابت شد.‏', 1);
end;

procedure TPersonalArchiveF.DBTxtPersonelNameDblClick(Sender: TObject);
begin
  inherited;
  DBGrid1.Enabled := not DBGrid1.Enabled;
  if DBGrid1.Enabled then
    DBTxtPersonelName.Font.Color := clBlack
  else
    DBTxtPersonelName.Font.Color := clRed;
end;

procedure TPersonalArchiveF.ppDBText10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Text <> '' then
    Text := Text + ' - ' + GetPersonelName(Text);
end;

procedure TPersonalArchiveF.actprintInformationExecute(Sender: TObject);
var
  lastcheck: Boolean;
begin
  inherited;
  try
    lastcheck := chkAllGrp.Checked;
    chkAllGrp.Checked := True;
    qryPersonalInfo.DisableControls;
    qryArchive.DisableControls;
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qryPersonalInfo.EnableControls;
    qryArchive.EnableControls;
    chkAllGrp.Checked := lastcheck;
  end; // try
end;

procedure TPersonalArchiveF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPersonalArchiveF.pplbCmpanyGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPersonalArchiveF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPersonalInfoPersonelNo);
end;

procedure TPersonalArchiveF.actRecoveryExecute(Sender: TObject);
var
  srch: TSearchRec;
  srch2: TZFArchiveItem;
  i: Integer;
begin
  inherited;
  if get_response('آيا براي انجام عمليات بازسازي مطمئن هستيد.‏؟') <> mrYes then
    Exit;

  if FindFirst(opt._ArchivePath + '*.zip', faAnyFile, srch) = 0 then
  begin
    repeat
      lstListFiles.AddItem(StringReplace(srch.Name, '.zip', '', [rfReplaceAll]),
        TObject(0));
    until FindNext(srch) <> 0;
    FindClose(srch);
  end; // if
  BigMessageProgBar(IntToStr(lstListFiles.Items.Count),
    lstListFiles.Items.Count);
  for i := 0 to lstListFiles.Items.Count - 1 do
  begin
    with ZipForge1 do
    begin
      FileName := opt._ArchivePath + lstListFiles.Items[i] + '.zip';
      OpenArchive;
      if FindFirst('*.jpg', srch2) then
      begin
        repeat
        begin
          With SproRecoveryPersonelArchives do
          begin
            Parameters.ParamByName('@ArchiveID').Value :=
              StringReplace(srch2.FileName, '.jpg', '', [rfReplaceAll]);
            Parameters.ParamByName('@PersonelNo').Value :=
              lstListFiles.Items[i];
            ExecProc;
          end;
          GoProgressBar(StringReplace(srch2.FileName, '.jpg', '',
            [rfReplaceAll]));
        end;
        until not FindNext(srch2);
      end; // if
      CloseArchive;
    end; // with
  end;
  CloseMessage;
end;

end.
