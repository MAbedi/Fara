unit ImportData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, searchCode_ADO, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, template4, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.ComCtrls,
  DateUtils, System.IOUtils, System.StrUtils, Data.DB, Vcl.Menus;

type
  TImportDataF = class(TTemplate4F)
    qrySalary: TADOQuery;
    qrySalarySid: TIntegerField;
    qrySalaryBankName: TStringField;
    qryAsset: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    mmo1: TMemo;
    Label2: TLabel;
    Label5: TLabel;
    btnSend: TBitBtn;
    qryAcc: TADOQuery;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    pb2: TProgressBar;
    ADOCmdUpDate: TADOCommand;
    Label4: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnSalary: TSpeedButton;
    cmbSalary: TComboBox;
    Label1: TLabel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    cmbAsset: TComboBox;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    cmbAcc: TComboBox;
    Label6: TLabel;
    adcMain: TADOConnection;
    adcPay: TADOConnection;
    adcAsS: TADOConnection;
    adcAcc: TADOConnection;
    qryCOUNT: TADOQuery;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    f1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure btnSendClick(Sender: TObject);
    procedure btnSalaryClick(Sender: TObject);
    procedure adcPayBeforeConnect(Sender: TObject);
    procedure adcMainBeforeConnect(Sender: TObject);
    procedure adcAsSBeforeConnect(Sender: TObject);
    procedure adcAccBeforeConnect(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure f1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    function IsSQLCommand(const ALine: string): Boolean;
    procedure UpdateBank_Fara(ADOConn: TADOConnection; RoleName: string);
    procedure ExecuteScriptFile(Conn: TADOConnection; const FileName: string);
    function TableExistsADO(ADOConn: TADOConnection;
      const SchemaName, TableName: string): Boolean;
    procedure CleanScript(SL: TStringList);
    procedure SalaryCopy;
    procedure AccCopy;
    procedure AssetCopy;
    function ExtractErrorMessage(const FullMessage: string): string;
    procedure CopyData(const ScriptFile, SourceDBName, SourceDBValue,
      SuccessMsg, ErrorMsg: string);
    function MyStartsText(const ASubText, AText: string): Boolean;
  public
    procedure enter;
    procedure ExecuteSQLScriptWithGO(Conn: TADOConnection;
      const ScriptFile: string);
  end;

var
  ImportDataF: TImportDataF;

implementation

uses
  GlobalPro, DM, FaraConsts;

// ------------------------------------------------------------------
// تابع کمکی برای دلفی برلین (StartsText وجود ندارد)
function TImportDataF.MyStartsText(const ASubText, AText: string): Boolean;
begin
  if Length(ASubText) > Length(AText) then
    Result := False
  else
    Result := CompareText(Copy(AText, 1, Length(ASubText)), ASubText) = 0;
end;

procedure TImportDataF.N1Click(Sender: TObject);
begin
  inherited;
  UpdateBank_Fara(adcMain, 'Pay')
end;

procedure TImportDataF.N2Click(Sender: TObject);
begin
  inherited;
  UpdateBank_Fara(adcMain, 'Assets')
end;

// ------------------------------------------------------------------
// اجرای اسکریپت SQL با پشتیبانی از GO
procedure TImportDataF.ExecuteSQLScriptWithGO(Conn: TADOConnection;
  const ScriptFile: string);
var
  SL, Batch: TStringList;
  i, j: Integer;
  Line, SQLText: string;
  HasRealCommand: Boolean;
begin
  SL := TStringList.Create;
  Batch := TStringList.Create;
  try
    SL.LoadFromFile(ScriptFile, TEncoding.UTF8);

    for i := 0 to SL.Count - 1 do
    begin
      Line := SL[i];
      // بررسی GO (حساس به بزرگ/کوچک نیست)
      if CompareText(Trim(Line), 'GO') = 0 then
      begin
        // آیا batch حداقل یک دستور واقعی دارد؟
        HasRealCommand := False;
        for j := 0 to Batch.Count - 1 do
          if IsSQLCommand(Batch[j]) then
          begin
            HasRealCommand := True;
            Break;
          end;

        // اجرا فقط اگر دستور واقعی وجود داشته باشد
        if HasRealCommand and (Batch.Count > 0) then
        begin
          SQLText := Batch.Text;
          try
            Conn.Execute(SQLText); // بدون پارامتر، بدون Query
          except
            on E: Exception do
            begin
              // اختیاری: لاگ خطا
              // add2log('خطا در اجرای batch: ' + E.Message);
              raise; // خطا را به بالا منتقل کن تا در try..except اصلی گرفته شود
            end;
          end;
        end;
        Batch.Clear;
      end
      else
      begin
        Batch.Add(Line);
      end;
    end;

    // اجرای آخرین batch (اگر GO در انتها نباشد)
    HasRealCommand := False;
    for j := 0 to Batch.Count - 1 do
      if IsSQLCommand(Batch[j]) then
      begin
        HasRealCommand := True;
        Break;
      end;

    if HasRealCommand and (Batch.Count > 0) then
    begin
      SQLText := Batch.Text;
      Conn.Execute(SQLText);
    end;

  finally
    Batch.Free;
    SL.Free;
  end;
end;

// ------------------------------------------------------------------
// تنظیم حالت READ_ONLY / READ_WRITE برای بانک — خارج از تراکنش
procedure SetDatabaseReadOnlyState(const DBName: string; ReadOnly: Boolean);
var
  TempConn: TADOConnection;
  Cmd: TADOCommand;
  SQL: string;
begin
  exit;
  TempConn := TADOConnection.Create(nil);
  TempConn.LoginPrompt := False;
  Cmd := TADOCommand.Create(nil);
  try
    TempConn.ConnectionString := GetConStr('master');
    TempConn.LoginPrompt := False;
    TempConn.Open;
    Cmd.Connection := TempConn;

    if ReadOnly then
      SQL := 'ALTER DATABASE [' + DBName + '] SET READ_ONLY  WITH NO_WAIT'
    else
      SQL := 'ALTER DATABASE [' + DBName + '] SET READ_WRITE WITH NO_WAIT';

    Cmd.CommandText := SQL;
    Cmd.Execute;
  finally
    Cmd.Free;
    TempConn.Free;
  end;
end;

{$R *.dfm}

// ------------------------------------------------------------------
// کدهای اصلی فرم
procedure TImportDataF.btnSendClick(Sender: TObject);
var
  c: Integer;
begin
  inherited;
  mmo1.Clear;
  Label4.Caption := 'شروع بروزرسانی...';
  pb2.Max := 100;
  pb2.Position := 0;
  pb2.Min := 1;
  pb2.Step := 1;

  // --- مرحله ۱: بروزرسانی بانک‌های مبدا ---
  if cmbSalary.Text <> EmptyStr then
    UpdateBank_Fara(adcPay, 'Pay');
  if cmbAsset.Text <> EmptyStr then
    UpdateBank_Fara(adcAsS, 'Assets');
  if cmbAcc.Text <> EmptyStr then
    UpdateBank_Fara(adcAcc, 'Acc');

  // --- مرحله ۲: بروزرسانی بانک مقصد ---
  UpdateBank_Fara(adcMain, 'dbo');
  UpdateBank_Fara(adcMain, 'Acc');
  UpdateBank_Fara(adcMain, 'Pay');
  UpdateBank_Fara(adcMain, 'Assets');
  adcMain.Close;
  adcPay.Close;
  adcAsS.Close;
  adcAcc.Close;

  // --- مرحله ۳: بررسی وضعیت جداول و انتقال داده ---
  with qryCOUNT do
  begin
    Connection := adcMain; // اتصال به بانک مقصد
    // CommandTimeout := 600; // افزایش Timeout

    // بررسی حقوق
    if TableExistsADO(adcMain, 'Pay', 'Config') then
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(*) AS c1 FROM Pay.Config';
      Active := True;
      c := FieldByName('c1').AsInteger;
      Active := False;

      if cmbSalary.Text <> EmptyStr then
      begin
        if c = 0 then
        begin
          SalaryCopy;
          SetDatabaseReadOnlyState(cmbSalary.Text, True);
        end
        else
          Label4.Caption := 'تنظیمات حقوق قبلاً انجام شده است.';
      end;
    end;
    pb2.StepIt;

    // بررسی دارایی ثابت
    if TableExistsADO(adcMain, 'Assets', 'Config') then
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(*) AS c FROM Assets.Config';
      Active := True;
      c := FieldByName('c').AsInteger;
      Active := False;

      if cmbAsset.Text <> EmptyStr then
      begin
        if c = 0 then
        begin
          AssetCopy;
          SetDatabaseReadOnlyState(cmbAsset.Text, True);
        end
        else
          Label4.Caption := 'تنظیمات دارایی ثابت قبلاً انجام شده است.';
      end;
    end;
    pb2.StepIt;

    // بررسی حسابداری
    if TableExistsADO(adcMain, 'Acc', 'Config') then
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(*) AS c FROM Acc.Config';
      Active := True;
      c := FieldByName('c').AsInteger;
      Active := False;

      if cmbAcc.Text <> EmptyStr then
      begin
        if c = 0 then
        begin
          AccCopy;
          SetDatabaseReadOnlyState(cmbAcc.Text, True);
        end
        else
          Label4.Caption := 'تنظیمات حسابداری قبلاً انجام شده است.';
      end;
    end;
  end;
  pb2.StepIt;

  Label4.Caption := '✅ بروزرسانی بانک و گزارشات با موفقیت انجام شد';
end;

procedure TImportDataF.btnSalaryClick(Sender: TObject);
var
  Index: Integer;
  c, txt, s: String;
begin
  inherited;
  case (Sender as TSpeedButton).Tag of
    1:
      txt := 'SELECT BankName,Title +'' ''+ CompanyName AS TName FROM Sections  where SysID IN (25,40)';
    2:
      txt := 'SELECT BankName,Title +'' ''+ CompanyName AS TName FROM Sections where SysID IN (32)';
    3:
      txt := 'SELECT BankName,Title +'' ''+ CompanyName AS TName FROM Sections where SysID IN (4,39)';
  end;

  s := searchCode_ADOF.SearchCode(DmF.adcFaraSystem, c, 'یانکها', txt,
    ['کد', 'نام '], alLeft);
  if s <> '' then
  begin
    case (Sender as TSpeedButton).Tag of
      1:
        begin
          Index := cmbSalary.Items.IndexOf(c);
          if Index <> -1 then
            cmbSalary.ItemIndex := Index
          else
            cmbSalary.ItemIndex := -1;
        end;
      2:
        begin
          Index := cmbAsset.Items.IndexOf(c);
          if Index <> -1 then
            cmbAsset.ItemIndex := Index
          else
            cmbAsset.ItemIndex := -1;
        end;
      3:
        begin
          Index := cmbAcc.Items.IndexOf(c);
          if Index <> -1 then
            cmbAcc.ItemIndex := Index
          else
            cmbAcc.ItemIndex := -1;
        end;
    end;
  end;
end;

procedure TImportDataF.UpdateBank_Fara(ADOConn: TADOConnection;
  RoleName: string);
var
  ts: TStringList;
  TempStr: string;
begin
  inherited;
  ts := TStringList.Create;
  ADOConn.Close;
  ADOCmdUpDate.Connection := ADOConn;

  try
    pb2.StepIt;

    // مرحله ۱: اجرای اسکریپت نقش‌ها
    ts.LoadFromFile(UnzipScript('Script\UpdateBankFaraRole.sql'));
    Label4.Caption := ts.Strings[0].Trim;
    ADOCmdUpDate.CommandText := ts.Text;
    ADOCmdUpDate.Execute;
    pb2.StepIt;

    // مرحله ۲: ایجاد نقش Acc
    if ((RoleName = 'Acc') or (RoleName = 'dbo')) then
    // if not TableExistsADO(ADOConn, 'Acc', 'Config') then
    begin
      try
        ADOCmdUpDate.CommandText := 'EXEC sp_addrole @RoleName = N''Acc''';
        ADOCmdUpDate.Execute;
        pb2.StepIt;
      except
      end;
    end;

    // مرحله ۳: ایجاد نقش Assets
    if ((RoleName = 'Assets') or (RoleName = 'dbo')) then
    // if not TableExistsADO(ADOConn, 'Assets', 'Config') then
    begin
      try
        ADOCmdUpDate.CommandText := 'EXEC sp_addrole @RoleName = N''Assets''';
        ADOCmdUpDate.Execute;
        pb2.StepIt;
      except
      end;
    end;

    // مرحله ۴: ایجاد نقش Pay
    if ((RoleName = 'Pay') or (RoleName = 'dbo')) then
    // if not TableExistsADO(ADOConn, 'Pay', 'Config') then
    begin
      try
        ADOCmdUpDate.CommandText := 'EXEC sp_addrole @RoleName = N''Pay''';
        ADOCmdUpDate.Execute;
        pb2.StepIt;
      except

      end;
    end;

    // مرحله ۵: اجرای اسکریپت Pay — با پشتیبانی از GO
    if ((RoleName = 'Pay') or (RoleName = 'dbo')) then
    // if not TableExistsADO(ADOConn, 'Pay','Config') then
    begin
      ts.LoadFromFile(UnzipScript('Script\UpdateBankFaraPay.sql'));
      Label4.Caption := ts.Strings[0].Trim;
      // ❌ CleanScript اعمال نمی‌شود — چون GO نیاز است
      TempStr := __TheTempDIR + 'UpdateBankFaraPay.sql';
      ts.SaveToFile(TempStr);
      ExecuteSQLScriptWithGO(ADOConn, TempStr);
      pb2.StepIt;
    end;

    // مرحله ۶: اجرای اسکریپت Acc — با پشتیبانی از GO
    if ((RoleName = 'Acc') or (RoleName = 'dbo')) then
    // if not TableExistsADO(ADOConn, 'Acc','Config') then
    begin
      ts.LoadFromFile(UnzipScript('Script\UpdateBankFaraAcc.sql'));
      Label4.Caption := ts.Strings[0].Trim;
      TempStr := __TheTempDIR + 'UpdateBankFaraAcc.sql';
      ts.SaveToFile(TempStr);
      ExecuteSQLScriptWithGO(ADOConn, TempStr);
      pb2.StepIt;
    end;

    // مرحله ۷: اجرای اسکریپت Assets — با پشتیبانی از GO
    if ((RoleName = 'Assets') or (RoleName = 'dbo')) then
    // if not TableExistsADO(ADOConn, 'Assets','Config') then
    begin
      ts.LoadFromFile(UnzipScript('Script\UpdateBankFaraAssets.sql'));
      Label4.Caption := ts.Strings[0].Trim;
      TempStr := __TheTempDIR + 'UpdateBankFaraAssets.sql';
      ts.SaveToFile(TempStr);
      ExecuteSQLScriptWithGO(ADOConn, TempStr);
      pb2.StepIt;
    end;

    Beep;
    Label4.Caption := 'ایجاد جداول انجام شد.';
  finally
    ts.Free;
  end;
end;

procedure TImportDataF.enter;
begin
  ImportDataF := TImportDataF.Create(Application);
  with ImportDataF do
    try
      Label2.Caption := APPBank.Name;
      cmbSalary.Clear;
      qrySalary.Open;
      while not qrySalary.Eof do
      begin
        cmbSalary.Items.Add(qrySalary.FieldByName('BankName').AsString);
        qrySalary.Next;
      end;
      qrySalary.Close;

      cmbAsset.Clear;
      qryAsset.Open;
      while not qryAsset.Eof do
      begin
        cmbAsset.Items.Add(qryAsset.FieldByName('BankName').AsString);
        qryAsset.Next;
      end;
      qryAsset.Close;

      cmbAcc.Clear;
      qryAcc.Open;
      while not qryAcc.Eof do
      begin
        cmbAcc.Items.Add(qryAcc.FieldByName('BankName').AsString);
        qryAcc.Next;
      end;
      qryAcc.Close;

      ShowModal;
    finally
      Free;
    end;
end;

procedure TImportDataF.ExecuteScriptFile(Conn: TADOConnection;
  const FileName: string);
var
  SL, Batch: TStringList;
  i: Integer;
  Query: TADOQuery;
  Line, TrimmedLine: string;
begin
  SL := TStringList.Create;
  Batch := TStringList.Create;
  Query := TADOQuery.Create(nil);
  try
    Query.Connection := Conn;
    SL.LoadFromFile(FileName);

    for i := 0 to SL.Count - 1 do
    begin
      Line := SL[i];
      TrimmedLine := Trim(Line);

      if ((CompareText(TrimmedLine, 'GO') = 0) or
        (CompareText(TrimmedLine, '-- GO') = 0)) then
      begin
        if Batch.Count > 0 then
        begin
          Query.SQL.Text := Batch.Text;
          Query.ExecSQL;
          Batch.Clear;
        end;
      end
      else
      begin
        Batch.Add(Line);
      end;
    end;

    if Batch.Count > 0 then
    begin
      Query.SQL.Text := Batch.Text;
      Query.ExecSQL;
    end;
  finally
    Query.Free;
    Batch.Free;
    SL.Free;
  end;
end;

function TImportDataF.TableExistsADO(ADOConn: TADOConnection;
  const SchemaName, TableName: string): Boolean;
var
  qry: TADOQuery;
begin
  Result := False;
  qry := TADOQuery.Create(nil);
  try
    qry.Connection := ADOConn;
    qry.SQL.Text := 'SELECT COUNT(*) AS Cnt FROM sys.tables t ' +
      'JOIN sys.schemas s ON t.schema_id = s.schema_id ' + 'WHERE t.name = ''' +
      TableName + ''' AND s.name = ''' + SchemaName + '''';
    qry.Open;
    if not qry.Eof then
      Result := qry.FieldByName('Cnt').AsInteger > 0;
  finally
    qry.Free;
  end;
end;

procedure TImportDataF.CleanScript(SL: TStringList);
var
  i: Integer;
begin
  for i := 0 to SL.Count - 1 do
  begin

    if Pos('-- GO', SL[i]) > 0 then
      SL[i] := ''
    else if Pos('GO', SL[i]) > 0 then
      SL[i] := ''
    else if Pos('QUOTED_IDENTIFIER', SL[i]) > 0 then
      SL[i] := ''
    else if Pos('SET ANSI_NULLS', SL[i]) > 0 then
      SL[i] := ''
    else if Pos('/******', SL[i]) > 0 then
      SL[i] := '';
  end;
end;

function TImportDataF.ExtractErrorMessage(const FullMessage: string): string;
var
  i: Integer;
begin
  i := LastDelimiter(']', FullMessage);
  if i > 0 then
    Result := Trim(Copy(FullMessage, i + 1, MaxInt))
  else
    Result := FullMessage;
end;

procedure TImportDataF.f1Click(Sender: TObject);
begin
  inherited;
  UpdateBank_Fara(adcMain, 'Acc')
end;

procedure TImportDataF.CopyData(const ScriptFile, SourceDBName, SourceDBValue,
  SuccessMsg, ErrorMsg: string);
var
  ScriptText: string;
  Lines: TArray<string>;
  CurrentBlock: TStringBuilder;
  SectionDesc, SQLBlock, TempFile: string;
  i: Integer;

  function IsCommentOrEmptyBlock(const AText: string): Boolean;
  var
    Trimmed: string;
  begin
    Trimmed := Trim(AText);
    Result := (Trimmed = '') or (Trimmed.StartsWith('--')) or
      (Trimmed.StartsWith('/*') and Trimmed.EndsWith('*/'));
  end;

  function StripLeadingUseLines(const AText: string): string;
  var
    Lns: TArray<string>;
    j: Integer;
    Builder: TStringBuilder;
    L: string;
  begin
    Lns := AText.Split([sLineBreak], TStringSplitOptions.None);
    Builder := TStringBuilder.Create;
    try
      for j := 0 to High(Lns) do
      begin
        L := Trim(Lns[j]);
        if (L <> '') and L.StartsWith('USE ', True) then
          Continue;
        Builder.AppendLine(Lns[j]);
      end;
      Result := Builder.ToString;
    finally
      Builder.Free;
    end;
  end;

  function ExtractSectionDescFromSQL(const AText: string): string;
  var
    FL: string;
    P: Integer;
  begin
    if AText = '' then
    begin
      Result := 'بخش ناشناس';
      exit;
    end;
    FL := Trim(AText.Split([#13#10])[0]);
    if FL.StartsWith('INSERT INTO', True) then
    begin
      P := Pos('INTO', UpperCase(FL));
      if P > 0 then
      begin
        Result := Trim(Copy(FL, P + 4, MaxInt));
        if Result.Contains('(') then
          Result := Result.Substring(0, Result.IndexOf('(')).Trim;
        exit;
      end;
    end;
    Result := 'بخش ناشناس';
  end;

  function MakeTempFileName(const Index: Integer): string;
  begin
    Result := __TheTempDIR + 'Part_' + IntToStr(Index) + '_' +
      IntToStr(GetTickCount) + '.sql';
  end;

  procedure ExecuteCurrentBlock(const Index: Integer);
  begin
    SQLBlock := Trim(CurrentBlock.ToString);
    if IsCommentOrEmptyBlock(SQLBlock) then
      exit;

    SQLBlock := StripLeadingUseLines(SQLBlock);
    SectionDesc := ExtractSectionDescFromSQL(SQLBlock);
    if SectionDesc = '' then
      SectionDesc := 'بخش ناشناس';

    SQLBlock := 'USE ' + APPBank.Name + sLineBreak + SQLBlock;
    mmo1.Text := '-- ' + SectionDesc + sLineBreak + SQLBlock;

    TempFile := MakeTempFileName(Index);
    TFile.WriteAllText(TempFile, SQLBlock, TEncoding.UTF8);

    try
      ExecuteScriptFile(adcMain, TempFile);
      pb2.StepIt;
      add2log('بخش ' + SectionDesc + ' با موفقیت اجرا شد');
    except
      on E: Exception do
      begin
        add2log('خطا در بخش ' + SectionDesc + ': ' + E.Message);
        warn(ErrorMsg + #13#10 + 'بخش: ' + SectionDesc + #13#10 +
          ExtractErrorMessage(E.Message));
        raise;
      end;
    end;
  end;

begin
  ScriptText := TFile.ReadAllText(UnzipScript('Script\' + ScriptFile),
    TEncoding.UTF8);

  // حذف کامنت‌های چندخطی
  while Pos('/*', ScriptText) > 0 do
  begin
    i := Pos('/*', ScriptText);
    i := PosEx('*/', ScriptText, i);
    if i > 0 then
      Delete(ScriptText, Pos('/*', ScriptText), i - Pos('/*', ScriptText) + 2)
    else
      Break;
  end;

  ScriptText := StringReplace(ScriptText, 'Fara_DataBase', APPBank.Name,
    [rfReplaceAll]);
  ScriptText := StringReplace(ScriptText, SourceDBName, SourceDBValue,
    [rfReplaceAll]);

  Lines := ScriptText.Split([sLineBreak], TStringSplitOptions.None);
  CurrentBlock := TStringBuilder.Create;
  try
    for i := 0 to High(Lines) do
    begin
      if Trim(Lines[i]).StartsWith('--') then
      begin
        if CurrentBlock.Length > 0 then
        begin
          ExecuteCurrentBlock(i);
          CurrentBlock.Clear;
        end;
        add2log('شروع اجرای بخش: ' + Trim(Lines[i]).Substring(2));
      end
      else
        CurrentBlock.AppendLine(Lines[i]);
    end;

    if CurrentBlock.Length > 0 then
    begin
      add2log('شروع اجرای بخش: بخش پایانی');
      ExecuteCurrentBlock(9999);
    end;
  finally
    CurrentBlock.Free;
  end;

  Label4.Caption := SuccessMsg;
end;

procedure TImportDataF.AccCopy;
begin
  CopyData('CnvAccToFara_Data1.sql', 'ACC_DataBase', cmbAcc.Text,
    'انتقال حسابداری1 انجام گردید', 'خطا در انتقال حسابداری1:');
  try
    DmF.adcBSell.Execute('UPDATE acc.Config SET BsellBankNames = ''' +
      APPBank.Name + '''');
    DmF.adcBSell.Execute('UPDATE acc.Config SET AccBankNameOnLastYear = ''' +
      APPBank.Name + '''');
  except
  end;

  with DmF.qryTmpTmp do
  begin
    Close;
    SQL.Text := 'select count( * ) c from dbo.customers';
    Open;
    if cmbSalary.Text <> EmptyStr then
    begin
      if FieldByName('c').AsInteger <= 1 then
      begin
        CopyData('CnvAccToFara_Data2.sql', 'ACC_DataBase', cmbAcc.Text,
          'انتقال حسابداری2 انجام گردید', 'خطا در انتقال حسابداری2:');
        SetDatabaseReadOnlyState(cmbAcc.Text, True);
        try
          DmF.adcBSell.Execute('UPDATE Config SET AccountDBName = ''' +
            APPBank.Name + '''');
        except
        end;
      end
      else
        Label4.Caption := 'یکسان سازی اطلاعات انجام نشده.';
    end;
  end;
end;

procedure TImportDataF.SalaryCopy;
begin
  CopyData('CnvSalaryToFara_Data.sql', 'Salary_DataBase', cmbSalary.Text,
    'انتقال حقوق انجام گردید', 'خطا در انتقال حقوق:');
end;

procedure TImportDataF.adcPayBeforeConnect(Sender: TObject);
begin
  inherited;
  adcPay.ConnectionString := GetConStr(cmbSalary.Text, 15, adcPay)
end;

procedure TImportDataF.adcAccBeforeConnect(Sender: TObject);
begin
  inherited;
  adcAcc.ConnectionString := GetConStr(cmbAcc.Text, 15, adcAcc)
end;

procedure TImportDataF.adcAsSBeforeConnect(Sender: TObject);
begin
  inherited;
  adcAsS.ConnectionString := GetConStr(cmbAsset.Text, 15, adcAsS)
end;

procedure TImportDataF.adcMainBeforeConnect(Sender: TObject);
begin
  inherited;
  adcMain.ConnectionString := GetConStr(APPBank.Name, 15, adcMain)
end;

procedure TImportDataF.AssetCopy;
begin
  CopyData('CnvAssetssToFara_Data.sql', 'Assets_DataBase', cmbAsset.Text,
    'انتقال دارائی ثابت انجام گردید', 'خطا در انتقال دارائی:');
  try
    DmF.adcBSell.Execute('UPDATE Assets.Config SET AccountDBName = ''' +
      APPBank.Name + '''');
  except
  end;
end;

procedure TImportDataF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;

function TImportDataF.IsSQLCommand(const ALine: string): Boolean;
var
  Clean: string;
begin
  Clean := Trim(ALine);
  // اگر خط خالی یا کامنت است، دستور محسوب نمی‌شود
  if (Clean = '') or (Pos('--', Clean) = 1) or (Pos('/*', Clean) = 1) then
  begin
    Result := False;
    exit;
  end;
  // اگر شامل یکی از کلمات کلیدی دستور SQL باشد
  Result := (CompareText(Copy(Clean, 1, 6), 'CREATE') = 0) or
    (CompareText(Copy(Clean, 1, 5), 'ALTER') = 0) or
    (CompareText(Copy(Clean, 1, 4), 'DROP') = 0) or
    (CompareText(Copy(Clean, 1, 3), 'SET') = 0) or
    (CompareText(Copy(Clean, 1, 2), 'IF') = 0) or
    (CompareText(Copy(Clean, 1, 4), 'EXEC') = 0) or
    (Pos('PRIMARY KEY', Clean) > 0) or (Pos('CONSTRAINT', Clean) > 0) or
    (Pos(')', Clean) > 0); // برای خطوط پایانی CREATE TABLE
end;

end.
