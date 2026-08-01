unit options;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, ComCtrls,
  ExtDlgs, Mask, FileCtrl, IOUtils;

type
  ToptionsF = class(TForm)
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    FontDialog1: TFontDialog;
    stcFontName: TStaticText;
    BitBtn3: TBitBtn;
    TabSheet4: TTabSheet;
    chkAutoBackup: TCheckBox;
    BitBtn4: TBitBtn;
    Label4: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    stcBackground: TEdit;
    TabSheet1: TTabSheet;
    cmbPriLanguage: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cmdSecLanguage: TComboBox;
    grp_pathBack: TGroupBox;
    EditDriveBackup: TEdit;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    TabSheet2: TTabSheet;
    chkPrintDates: TCheckBox;
    grpDate: TGroupBox;
    mskDate: TMaskEdit;
    BitBtn5: TBitBtn;
    cmbLang: TComboBox;
    Label5: TLabel;
    tsSms: TTabSheet;
    Label6: TLabel;
    edtModemPort: TEdit;
    Label7: TLabel;
    edtModemBaudRate: TEdit;
    chkActiveSort: TCheckBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure chkAutoBackupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LoadOptions;
    procedure enter;
    procedure SaveOptions;
    { Public declarations }
  end;

var
  optionsF: ToptionsF;

implementation

uses dm, DB, GlobalPro, mdiMain, mmessage, IniLang, FaraConsts;
{$R *.dfm}

procedure ToptionsF.enter;
begin

  optionsF := ToptionsF.Create(Application);
  with optionsF do
    try
      // Caption:=' ‰ŸÌ„«  ”«· „«·Ì ˛'+ __SalMali;
      PageControl1.ActivePageIndex := 0;
      LoadOptions;
      if ShowModal = mrok then
      begin
        try
          SaveOptions;
          opta.Refresh;
          BigMessage('À»  ‘œ.', 1);
        except
          warn('«‘ﬂ«· œ— À»   ‰ŸÌ„« ');
        end; // try
      end; // if
    finally
      Free;
    end; // try

end;

procedure ToptionsF.BitBtn3Click(Sender: TObject);
begin
  if FontDialog1.Execute then
  begin
    stcFontName.font.Assign(FontDialog1.font);
    stcFontName.Caption := stcFontName.font.Name;
  end; // if
end;

procedure ToptionsF.BitBtn4Click(Sender: TObject);
begin
  if FileExists(stcBackground.Text) then
    OpenPictureDialog1.FileName := stcBackground.Text;
  if OpenPictureDialog1.Execute then
  begin
    stcBackground.Text := OpenPictureDialog1.FileName;

  end; // if
end;

procedure ToptionsF.LoadOptions;
begin
  edtModemPort.Text := ReadConfig(APPID, 'ModemPort', '');
  edtModemBaudRate.Text := ReadConfig(APPID, 'ModemBaudRate', '');

  grpDate.Visible := User.admin;
  chkAutoBackup.Checked := opta.AutoBackup;
  chkActiveSort.Checked := ActiveSortTitle;
  FontDialog1.font.Name := ReadConfig(APPID, 'FontName',
    var_glb_DefaultFont.Name);
  EditDriveBackup.Text := opta.DriveBackup;
  FontDialog1.font.Size := StrToIntDef(ReadConfig(APPID, 'FontSize',
    inttostr(var_glb_DefaultFont.Size)), 8);
  FontDialog1.font.Style := StrToFontStyle(ReadConfig(APPID, 'FontStyle', ''));
  cmbPriLanguage.ItemIndex := opta.primaryLanguage;
  cmdSecLanguage.ItemIndex := opta.secondaryLanguage;

  stcFontName.font.Assign(FontDialog1.font);
  stcFontName.Caption := stcFontName.font.Name;
  stcBackground.Text := ReadConfig(APPID, 'Background', '');
  chkPrintDates.Checked := PrintDateEnabled;
end;

procedure ToptionsF.SaveOptions;
var
  s: String;
begin
  SaveConfig(APPID, 'ModemPort', Trim(edtModemPort.Text));
  SaveConfig(APPID, 'ModemBaudRate', Trim(edtModemBaudRate.Text));

  if cmbPriLanguage.ItemIndex = cmdSecLanguage.ItemIndex - 1 then
  begin
    warn('“»«‰ «‰ Œ«» ‘œÂ ‰« „⁄ »— «”  .');
    Exit;
  end; // if
  If (chkAutoBackup.Checked) and (EditDriveBackup.Text = '') then
    EditDriveBackup.Text := 'D:\FaraBackUP\AccountingBackup';
  SaveConfig(APPID, 'DriveBackup', EditDriveBackup.Text);

  SaveConfig(APPID, 'FontName', stcFontName.font.Name);
  SaveConfig(APPID, 'FontSize', inttostr(stcFontName.font.Size));
  SaveConfig(APPID, 'AutoBackup', BoolToStr(chkAutoBackup.Checked));
  SaveConfig(APPID, 'ActiveSortTitle', BoolToStr(chkActiveSort.Checked));
  SaveConfig(APPID, 'PrintDate', BoolToStr(chkPrintDates.Checked));
  SaveConfig(APPID, 'IniLang', Trim(cmbLang.Text));
  SaveConfig(APPID, 'Background', stcBackground.Text);
  SaveConfig(APPID, 'primaryLanguage', inttostr(cmbPriLanguage.ItemIndex));
  SaveConfig(APPID, 'secondaryLanguage', inttostr(cmdSecLanguage.ItemIndex));
  var_glb_DefaultFont.Assign(stcFontName.font);
  s := '';
  if fsBold in stcFontName.font.Style then
    s := s + 'B';
  if fsItalic in stcFontName.font.Style then
    s := s + 'I';
  SaveConfig(APPID, 'FontStyle', s);
  LoadBackgroundImage;
  if Length(Trim(mskDate.Text)) > 7 then
    var_glb_CurrentDate := Trim(mskDate.Text);
  // opta.ReadOption;

end;

procedure ToptionsF.chkAutoBackupClick(Sender: TObject);
begin
  grp_pathBack.Visible := chkAutoBackup.Checked;
end;

procedure ToptionsF.FormCreate(Sender: TObject);
var
  srch: TSearchRec;
begin
  grp_pathBack.Visible := chkAutoBackup.Checked;
  cmbLang.Items.Clear;
  if FindFirst(IniLangPath + '\*.ini', faAnyFile, srch) = 0 then
  begin
    repeat
      cmbLang.Items.Add(StringReplace(srch.Name, '.ini', '', []))
    until FindNext(srch) <> 0;
    FindClose(srch);
  end; // if
  cmbLang.Text := ReadConfig(APPID, 'IniLang', 'CUSTOM');

end;

procedure ToptionsF.BitBtn5Click(Sender: TObject);
var
  s: String;
begin
  if selectdirectory('·ÿ›« „”Ì— Å‘ Ì»«‰ êÌ—Ì —« Ê«—œ ﬂ‰Ìœ:˛', '', s) then
    EditDriveBackup.Text := s;

end;

end.
