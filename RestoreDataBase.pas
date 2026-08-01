unit RestoreDataBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, Grids, ValEdit, DB,
  ADODB, System.Math;

type
  TRestoreDataBaseF = class(Ttemplate0F)
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    edtFileName: TEdit;
    Image2: TImage;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    BitBtnBsell: TBitBtn;
    BitBtn4: TBitBtn;
    ValueListEditor1: TValueListEditor;
    OpenDialog1: TOpenDialog;
    qry4restore: TADOQuery;
    qrySections: TADOQuery;
    chkKill: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnBsellClick(Sender: TObject);
  private
    bankName: String;
    function GetPath4Data: string;
    procedure UPDATEAccountDBName(DBName: string);
    { Private declarations }
  public
    procedure enter;
    function RestoreIt(): Boolean;
    procedure GetData_LogNameOfBackup(BackupPath: string;
      var DataName, LogName, filegroupsName, PasCommand: string);
    procedure RestoreCmd(aCommand: String);
    { Public declarations }
  end;

var
  RestoreDataBaseF: TRestoreDataBaseF;

implementation

uses GlobalPro, DM, mmessage, Main, StrUtils, FaraConsts;

{$R *.dfm}

procedure TRestoreDataBaseF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.FileName := edtFileName.Text;
  if OpenDialog1.Execute then
  begin
    edtFileName.Text := OpenDialog1.FileName;
    BitBtn2.Click;
  end; // if
end;

procedure TRestoreDataBaseF.enter;
begin
  RestoreDataBaseF := TRestoreDataBaseF.Create(Self);
  with RestoreDataBaseF do
  begin
    ShowModal;
  end; // with
end;

procedure TRestoreDataBaseF.BitBtn2Click(Sender: TObject);
var
  fname: String;
begin
  inherited;
  fname := edtFileName.Text;
  if fname = '' then
  begin
    BitBtn1.Click;
    fname := edtFileName.Text;
  end; // if
  if not FileExists(fname) then
  begin
    Warn('مسير فايل پشتيبان معتبر نيست.', mtError);
    edtFileName.SetFocus;
    Exit;
  end; // if
  with ValueListEditor1 do
  begin
    Strings.LoadFromFile(fname);
    // FindRow('');
    // ItemProps[FindRow()
  end; // with
  ValueListEditor1.Strings.LoadFromFile(fname);
end;

procedure TRestoreDataBaseF.FormShow(Sender: TObject);
begin
  inherited;
  // if (UpperCase(opt.ServerName) <> GetComputerName) then
  // Warn('بازيابي فقط از روي سرور امكان پذير است', mtInformation);
  SetKeyboardLatin;
end;

procedure TRestoreDataBaseF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SetKeyboardFarsi;
end;

procedure TRestoreDataBaseF.FormCreate(Sender: TObject);
begin
  inherited;
  if opt.ServerName = EmptyStr then
    opt.ServerName := ReadConfig(APPID, 'SqlServerName');
  ValueListEditor1.Strings.Clear;
  ValueListEditor1.ColWidths[0] := 50;
  qry4restore.ConnectionString := GetConStr('master', 30);

end;

function TRestoreDataBaseF.RestoreIt(): Boolean;
var
  anAppBank: TAPPBANK;
  MaliYear: Integer;
  isBankExists: Boolean;
  backupfilename: String;
  fi: TSearchRec;
  tempTargetPath: String;
  targetfilename: String;
  DataName, LogName, filegroupsName: String;
  TargetDataName, TargetLogName, Targetfilegroups: String;
  RestoreCommand: String;
  i, NewSid: Integer;
  PasFilelistonly: string;
  PasCommand: string;
const
  ReplacedBackupDir = '%s\ReplacedBanks\';
begin
  NewSid := 0;
  anAppBank.Name := '';
  Result := false;
  backupfilename := IncludeTrailingBackslash(ExtractFilePath(edtFileName.Text))
    + ExtractFileNameWithoutExt(edtFileName.Text) + '.zip';
  if not FileExists(backupfilename) then
  begin
    Warn('مسير فايل پشتيبان معتبر نيست.', mtError);
    edtFileName.SetFocus;
    Exit;
  end; // if
  bankName := ValueListEditor1.Values['نام بانك'];
  if bankName = '' then
  begin
    Warn('نام بانك معتبر نيست', mtError);
    Exit;
  end; // if
  MaliYear := StrToIntDef(trim(ValueListEditor1.Values['سال مالي']), 0);
  if not(((MaliYear in [60 .. 99])) or
    (((MaliYear >= 1360) and (MaliYear <= 1499)))) then
  begin
    Warn('سال مالي معتبر نيست.', mtError);
    Exit;
  end; // if
  isBankExists := BankExists(bankName);
  if isBankExists then
  begin
    if get_response('بانك ' + bankName +
      ' در سيستم وجود دارد، آيا مي‌خواهيد نسخه پشتيبان را جايگزين بانك جاري كنيد؟')
      <> mrYes then
      Exit;
    if get_box('تأييد حذف نسخه جاري',
      'لطفاً كلمه رمز را براي جايگزيني نسخه پشتيبان وارد كنيد:', '', True) <> '21195'
    then
    begin
      Warn('كلمه رمز اشتباه است.', mtError);
      Exit;
    end; // if
    if opt_backupreplacedbanks then
    begin
      with DMF.qryGlbTmpTmp do
      begin
        Active := false;
        SQL.Text := 'Select * from Sections where BankName=' +
          QuotedStr(bankName);
        Active := True;
        anAppBank.Name := fieldbyname('BankName').AsString;
        anAppBank.ID := fieldbyname('Sid').AsInteger;
        anAppBank.n_subcompany := fieldbyname('n_subcompany').AsInteger;
        anAppBank.Title := fieldbyname('Title').AsString;
        anAppBank.LastConnectDate := fieldbyname('LastConnectDate').AsDateTime;
        anAppBank.Year := fieldbyname('MaliYear').AsInteger;
        anAppBank.CompanyName := fieldbyname('CompanyName').AsString;
        Active := false;
      end; // with
      BackupDatabase(DMF.adcBSell, anAppBank, Format(ReplacedBackupDir,
        [ExtractFilePath(ParamStr(0))]) + MakeUniqDBBackupName(anAppBank.Name,
        var_glb_CurrentDate) + '.zip', false, True);
    end; // if
  end; // if

  BigMessage('در حال بازيابي پشتيبان ...', 0);
  tempTargetPath := GetTempDir + 'Unzippedbackup';
  DelDir(tempTargetPath);
  SysUtils.ForceDirectories(tempTargetPath);
  try
    UnZipFiles(backupfilename, tempTargetPath, 'cyber');
    if FindFirst(tempTargetPath + '\*.dat', faAnyFile, fi) <> 0 then
    begin
      FindClose(fi);
      Warn('اشكال در استخراج پشتيبان', mtError);
      Exit;
    end; // if
    targetfilename := fi.Name;
    FindClose(fi);
    with qrySections do
    begin
      ConnectionString := DMF.adcFaraSystem.ConnectionString;
      Active := false;
      SQL.Text := 'Select * from Sections where BankName=' +
        QuotedStr(bankName);
      Active := True;

      if (ValueListEditor1.FindRow('BackUpDevice', i)) or
        (var_SQL_ProductVersion > 8) then
      begin
        PasFilelistonly := '';
        PasCommand := ' with ';
      end

      else
      begin
        PasFilelistonly := ' with password=''tycedar''';
        PasCommand := ' with password=''tycedar'',';
      end;
      if IsEmpty then
      begin
        Insert;
        NewSid := GetANewFaraCode('Sections', 'Sid');
        fieldbyname('Sid').AsInteger := NewSid;
        fieldbyname('SYSID').AsInteger := ifthen(LeftStr(bankName, 5) = 'BPMS_',
          40, SYSID);
        fieldbyname('bankName').AsString := bankName;
        fieldbyname('CreateDate').AsDateTime := Now;
        fieldbyname('MaliYear').AsInteger := MaliYear;
        fieldbyname('CompanyName').AsString := ValueListEditor1.Values
          ['نام شركت'];
        fieldbyname('Title').AsString := ValueListEditor1.Values
          ['عنوان پشتيبان'];
        fieldbyname('isCurrent').AsBoolean := false;
        fieldbyname('n_subcompany').AsInteger := APPBank.n_subcompany;
        if ValueListEditor1.FindRow('كد شركت', i) then
          fieldbyname('n_subcompany').AsInteger :=
            StrToInt(ValueListEditor1.Values['كد شركت']);
        Post;

        with DMF.qryGlbTmpTmp do
        begin
          Active := false;
          SQL.Text := 'UPDATE FaraSystems.dbo.Operators';
          SQL.Add(Format('SET BankNames = BankNames + '',%d''', [NewSid]));
          SQL.Add('WHERE (LEN(BankNames) > 0)');
          SQL.Add(Format('AND ( UserID = %d )', [User.ID]));
          ExecSQL;
          if User.BankNames <> EmptyStr then
            User.BankNames := User.BankNames + Format(',%d', [NewSid]);
          Active := false;
        end;

      end;

    end; // with
    GetData_LogNameOfBackup(tempTargetPath + '\' + targetfilename, DataName,
      LogName, filegroupsName, PasFilelistonly);
    TargetDataName := GetPath4Data;
    SysUtils.ForceDirectories(TargetDataName);
    TargetDataName := TargetDataName + bankName + '.mdf';
    Targetfilegroups := ReplaceStr(TargetDataName, '.mdf', '.ndf');
    TargetLogName := ExtractFilePath(TargetDataName) + bankName + '.ldf';
    if FileExists(LogName) then
      DeleteFile(LogName);
    if FileExists(targetfilename) then
      DeleteFile(targetfilename);
    RestoreCommand := 'Restore Database ' + bankName + ' From Disk=' +
      QuotedStr(tempTargetPath + '\' + targetfilename);
    RestoreCommand := RestoreCommand + PasCommand + '  recovery, move ' +
      QuotedStr(DataName) + ' TO ' + QuotedStr(TargetDataName) +
      ifthen(filegroupsName <> EmptyStr, ' , Move ' + QuotedStr(filegroupsName)
      + ' TO ' + QuotedStr(Targetfilegroups), '') + ' , Move ' +
      QuotedStr(LogName) + ' TO ' + QuotedStr(TargetLogName) + ' , REPLACE';
    try
      RestoreCmd(RestoreCommand);
      UPDATEAccountDBName(bankName);
      BigMessage('عمليات بازيابي با موفقيت انجام شد.', 2);
      BigMessage('بانک های حسابداری در تنظیمات سیستم به ' +
        bankName + '  تغییر یافت', 2);

      SaveConfig(APPID, 'LastConnectBank', bankName);
    except
      on E: Exception do
      begin
        if NewSid > 0 then
          qrySections.Delete;
        CloseMessage;
        add2log(E.Message);
        Warn(E.Message + #10#13 + 'اشكال در بازيابي پشتيبان', mtError);
      end;
    end; // try
  finally
    DelDir(tempTargetPath);
    // if APPBank.Name = bankName then
    // begin
    // mainf.close;
    // end
    // else

    // begin
    RestoreDataBaseF.close;
    mainf.SelectYearF0Click(nil);
    // end;
  end; // try
end;

procedure TRestoreDataBaseF.BitBtnBsellClick(Sender: TObject);
begin
  inherited;
  RestoreIt;
end;

procedure TRestoreDataBaseF.GetData_LogNameOfBackup(BackupPath: string;
  var DataName, LogName, filegroupsName, PasCommand: string);
begin
  with DMF.qryGlbTmpTmp do
  begin
    Active := false;
    SQL.Text := 'Restore Filelistonly From Disk=' + QuotedStr(BackupPath) +
      PasCommand; // ' with password=''tycedar''';
    Active := True;
    DataName := Fields[0].AsString;
    Next;
    filegroupsName := Fields[0].AsString;
    if filegroupsName <> 'Fara_Files' then
      filegroupsName := '';
    Next; // Next 4 fileGroup;
    LogName := Fields[0].AsString;
    Active := false;
  end; // with
end;

procedure TRestoreDataBaseF.UPDATEAccountDBName(DBName: string);
begin
  with DMF.qryGlbTmpTmp do
  begin
    Active := false;

    try
      SQL.Text := 'USE ' + DBName;
      SQL.Add('UPDATE dbo.Config SET AccountDBName = ''' + DBName + '''');
      ExecSQL;
    except
    end;

    try
      SQL.Text := 'USE ' + DBName;
      SQL.Add('UPDATE Acc.Config SET AccBankNameOnLastYear = ''' +
        DBName + '''');
      ExecSQL;
    except
    end;

    try
      SQL.Text := 'USE ' + DBName;
      SQL.Add('UPDATE Assets.Config SET AccountDBName = ''' + DBName + '''');
      ExecSQL;
    except
    end;

    try
      SQL.Text := 'USE ' + DBName;
      SQL.Add('UPDATE Pay.Config SET AccountDBName = ''' + DBName + '''');
      ExecSQL;
    except
    end;

    // SQL.Add('IF EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N''dbo.Config'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1 )');
    // SQL.Add('IF EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N''Acc.Config'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1 )');
    // SQL.Add('IF EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N''Assets.Config'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1');
    // SQL.Add('IF EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N''Pay.Config'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1 )');
    Active := false;
  end; // with
end;

procedure TRestoreDataBaseF.RestoreCmd(aCommand: String);
begin
  // if APPBank.Name = bankName then
  // begin
  // mainf.OnCloseQuery := nil;
  // DMF.Free;
  // end;
  theMainConnection.close;
  With qry4restore do
  begin
    SQL.Text := aCommandNew(SQL, 'Kharid Va Foroosh', opt.ServerName,
      chkKill.Checked);
    CommandTimeout := 0;
    ExecSQL;
    SQL.Text := aCommand;
    CommandTimeout := 0;
    ExecSQL;
  end;
end;

function TRestoreDataBaseF.GetPath4Data: string;
var
  qry: TADOQuery;
  conStr: String;
begin
  conStr := GetConStr('master', 10);
  qry := TADOQuery.Create(DMF);
  try
    with qry do
    begin
      ConnectionString := conStr;
      Active := false;
      SQL.Text :=
        'SELECT FileName FROM master.dbo.sysdatabases WHERE name = ''FaraSystems''';
      try
        Active := True;
        Result := Fields[0].AsString;
        Result := ExtractFilePath(Result);
        Active := false;
        if Result = '' then
          Result := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))) +
            '..\Data\';
      except
        on E: Exception do
        begin
          add2log(E.Message);
          Warn('اشكال در ثبت‌' + #13#10 + E.Message);
        end;
      end;
    end;
  finally
    qry.Free;
  end;
end;

end.
