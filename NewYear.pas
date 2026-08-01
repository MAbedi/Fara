unit NewYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, ComCtrls, ADODB, DateUtils, DB,
  uAppUsageLogger;

type
  TNewYearF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    edtCompanyName: TEdit;
    Label3: TLabel;
    edtdbName: TEdit;
    edtYearNo: TMaskEdit;
    UpDown1: TUpDown;
    adcNewData: TADOConnection;
    qry: TADOQuery;
    qryStore: TADOQuery;
    qry4Loop: TADOQuery;
    ADOCmdUpDate: TADOCommand;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    ChkInterdicts: TCheckBox;
    ChkInterdictsHistory: TCheckBox;
    chkStateSmaller50: TCheckBox;
    ChkBaseInfo: TCheckBox;
    chkCoding: TCheckBox;
    chkDec: TCheckBox;
    chkHesabres: TCheckBox;
    chkBudget: TCheckBox;
    chkSoratMali: TCheckBox;
    chkList: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure edtYearNoChange(Sender: TObject);
    procedure adcNewDataBeforeConnect(Sender: TObject);
    procedure adcNewDataAfterConnect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChkInterdictsHistoryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    GoCount: Integer;
    FOpenTime: TDateTime;
    // procedure EmptyAllTable;
    StartMaliYear, FinishMaliYear: string;
    function EmptyTable(tblname: string): boolean;
    procedure RemainChecks(FormType: Integer; FormTypeString: String);
    function IncYearFara(SDate: string): string;
    function GetPersonelDecExtField(PerFix: string): string;
    function UpdateTabel(TabelName, FldName: String;
      schema: string = 'acc'): boolean;
    { Private declarations }
  public
    procedure enter;
    function CreateNewYear: boolean;
    { Public declarations }
  end;

var
  NewYearF: TNewYearF;

implementation

uses dm, StrUtils, main, GlobalPro, FormFunctions, mmessage, vjForm1,
  FaraConsts, shamsiDate, AssetsFunctions;

{$R *.dfm}

function TNewYearF.CreateNewYear: boolean;
var
  drive: String;
  // wd:   array[0..MAX_PATH] of Char;
  i: Integer;
begin
  Result := False;
  i := 0;
  { n:=StrToIntDef(trim(MaskEdit1.Text),0);
    if not ((n>1359) and (n<1400)) then begin
    warn('سال مالي معتبر نيست.‏');
    MaskEdit1.SetFocus;
    Exit;
    end;//if }
  if BankExists(trim(edtdbName.Text)) then
  begin
    warn('سال مالي ‏' + edtYearNo.Text + ' قبلاُ در سيستم ايجاد  شده است.‏');
    edtYearNo.SetFocus;
    Exit;
  end; // if
  With DMf.qryTmpTmp do
  begin
    CommandTimeout := 0;
    Active := False;
    SQL.Text := 'SELECT filename FROM sysfiles WHERE fileid = 1';
    Active := True;
    drive := Fields[0].AsString;
    drive := ExtractFilePath(drive);
    Active := False;
    SQL.Text :=
      'DECLARE @_DATABASE varchar (100) DECLARE @_NewDATABASE varchar (100)';
    SQL.Add('DECLARE @_Data varchar (100) DECLARE @_Log varchar (100) DECLARE @_File varchar (100)');
    SQL.Add('DECLARE @_NewData varchar (260) DECLARE @_NewLog varchar (260)  DECLARE @_NewFile varchar (260) ');
    SQL.Add('DECLARE @_TmpFile_Path varchar (260)');
    SQL.Add('set @_DATABASE=''' + APPBank.Name + '''');
    // SQL.Add  ('set @_TmpFile_Path='''+IncludeTrailingBackslash( __TheTempDIR)+'''+@_DATABASE+''.bak''');
    SQL.Add('set @_TmpFile_Path=''' + drive + '''+@_DATABASE+''.bak''');
    SQL.Add('set @_NewDATABASE=''' + trim(edtdbName.Text) + '''');
    SQL.Add('set @_Data=ltrim(rtrim((SELECT name FROM sysfiles WHERE fileid = 1)))');
    SQL.Add('set @_Log=ltrim(rtrim((SELECT name FROM sysfiles WHERE fileid = 2)))');
    SQL.Add('set @_File=ltrim(rtrim((SELECT name FROM sysfiles WHERE fileid = 3)))');
    SQL.Add('set @_NewData=ltrim(rtrim((SELECT filename FROM sysfiles WHERE fileid = 1)))');
    SQL.Add('set @_NewData=SUBSTRING(@_NewData,1 , len(@_NewData)-len(@_DATABASE)-4)');
    SQL.Add('set @_NewLog=@_NewData+@_NewDATABASE+''.ldf''');
    SQL.Add('set @_NewFile=@_NewData+@_NewDATABASE+''.ndf''');
    SQL.Add('set @_NewData=@_NewData+@_NewDATABASE+''.mdf''');
    SQL.Add('BACKUP DATABASE @_DATABASE TO DISK = @_TmpFile_Path');
    // SQL.Add('RESTORE FILELISTONLY FROM DISK = @_TmpFile_Path');
    SQL.Add('RESTORE DATABASE @_NewDATABASE FROM DISK = @_TmpFile_Path ');
    SQL.Add('WITH MOVE @_Data TO @_NewData,MOVE @_Log TO @_NewLog,MOVE @_File TO @_NewFile');

    try
      i := ExecSQL;
    except
      on E: Exception do
      begin
        CloseMessage;
        warn(E.Message + #10#13 + 'اشكال در ايجاد بانك', mtError);
      end;

    end;
    Result := i < 0;
    DeleteFile(drive + APPBank.Name + '.bak')
  end; // With
  if not Result then
    warn('اشكال در كپي بانك');
  // raise Exception.Create('اشكال در كپي بانك')
end;

procedure TNewYearF.enter;
// var
// n: Integer;
// s: String;
begin
  NewYearF := TNewYearF.Create(Application);
  with NewYearF do
    try
      ShowModal;
    finally
      Free;
      SetKeyboardFarsi;
    end; // try
end;

function TNewYearF.IncYearFara(SDate: string): string;
var
  i: Integer;
begin
  Result := LeftStr(SDate, pos('/', SDate) - 1);
  i := StrToInt(Result) + 1;
  Result := IntToStr(i) + RightStr(SDate, 6);
end;

procedure TNewYearF.BitBtn1Click(Sender: TObject);
var
  NewSid: Integer;
  OldSid: Integer;
begin
  if get_response('آيا براي ايجاد سال مالي جديد مطمئن هستيد؟‏') <> mrYes then
    Exit;
  BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....', 71);
  GoProgressBar(' در حال ايجاد سال مالي جديد ...‏');

  StartMaliYear := IncYearFara(APPBank.StartYear);
  FinishMaliYear := IncYearFara(APPBank.endYear);
  optP.FinishMaliYear := StartMaliYear;
  optP.FinishMaliYear := FinishMaliYear;

  if CreateNewYear then
  begin
    adcNewData.Connected := True;
    with qry do
    begin
      SQL.Text := 'SELECT CompanyName,StartMaliYear,FinishMaliYear FROM Config';
      Active := True;
      Edit;
      Fields[0].AsString := trim(edtCompanyName.Text);
      Fields[1].AsString := StartMaliYear;
      Fields[2].AsString := FinishMaliYear;
      Post;
      Active := False;
      SQL.Text := 'SELECT MAX(Sid)+1 FROM FaraSystems.dbo.Sections';
      Active := True;
      NewSid := Fields[0].AsInteger;

      Active := False;
      SQL.Text := 'SELECT Sid FROM FaraSystems.dbo.Sections';
      SQL.Add('WHERE (BankName = ''' + APPBank.Name + ''')');
      Active := True;
      OldSid := Fields[0].AsInteger;
      Active := False;

      SQL.Text := 'INSERT INTO FaraSystems.dbo.Sections';
      SQL.Add('(Sid, SysID, Title, BankName, CreateDate, LastBackupDate, ');
      SQL.Add('LastConnectDate, MaliYear, CompanyName, isCurrent,n_subcompany)');
      SQL.Add('SELECT ' + IntToStr(NewSid) + ', SysID, Title, ''' +
        trim(edtdbName.Text) + ''',');
      SQL.Add(' CreateDate, LastBackupDate, LastConnectDate, ' +
        RightStr(edtYearNo.Text, 4) + ',''' + trim(edtCompanyName.Text) +
        ''', 0,' + IntToStr(APPBank.n_subcompany));
      SQL.Add('FROM FaraSystems.dbo.Sections');
      SQL.Add('WHERE BankName = ''' + APPBank.Name + '''');
      ExecSQL;

      SQL.Text := 'UPDATE FaraSystems.dbo.Operators';
      SQL.Add('SET BankNames = REPLACE(BankNames, ''' + IntToStr(OldSid) +
        ''', ''' + IntToStr(OldSid) + ',' + IntToStr(NewSid) + ''')');
      SQL.Add('WHERE (BankNames IS NOT NULL)');
      ExecSQL;

    end;
    CloseMessage;
    warn('سال مالي ‏' + edtYearNo.Text + ' با موفقيت ايجاد شد.‏',
      mtInformation);
    ModalResult := mrOK;
  end; // if
end;

procedure TNewYearF.edtYearNoChange(Sender: TObject);
begin
  edtdbName.Text := APPBank.Name + RightStr(trim(edtYearNo.Text), 4);
end;

procedure TNewYearF.adcNewDataBeforeConnect(Sender: TObject);
begin
  assignServerName(adcNewData, edtdbName.Text);
  GoProgressBar(' در حال اتصال به بانك اطلاعات جديد ...‏');
end;

procedure TNewYearF.adcNewDataAfterConnect(Sender: TObject);
var
  YearNo, s: string;
  YearStuffKind: String;
begin
  YearNo := RightStr(edtYearNo.Text, 4);
  GoCount := 0;

  GoProgressBar(' در حال آماده سازي بانك اطلاعات جديد ...');
  EmptyTable('Counting');
  EmptyTable('CountingItems');
  adcNewData.Execute
    ('UPDATE Recipts SET Transmittal = 0 WHERE (Transmittal <> 0)');

  if optSub.Subsys[18] = '1' { SubsysMenu[15].Active }
  then
  begin
    adcNewData.Execute('Update acc.DocGroups Set SourceDataBase=null');
    EmptyTable('acc.Documents');
    EmptyTable('acc.DocGroups');
    EmptyTable('acc.BudgetItems');
    EmptyTable('acc.Budgets');
    EmptyTable('acc.Variance');

    if not chkCoding.Checked then
    begin
      EmptyTable('acc.PortionTable');
      EmptyTable('acc.PortionRange');
      EmptyTable('acc.Categories');
      EmptyTable('acc.DELETE FROM acc.CenterTopics2 Where CTopicCode2 <> 0');
      EmptyTable('acc.Companies');
      EmptyTable('acc.DELETE FROM acc.Details where DetailCode <> 0');
      EmptyTable('acc.DetailGroups');
      EmptyTable('acc.DELETE FROM acc.CenterTopics Where CTopicCode <> 0');
    end; // if

    if not chkDec.Checked then
    begin
      EmptyTable('acc.CategoriesNote');
      EmptyTable('acc.DetailNotes');
      EmptyTable('acc.CtopicNotes');
    end; // if

    if not chkHesabres.Checked then
    begin
      UpdateTabel('Categories', 'AuditID');
      EmptyTable('acc.AuditTopics');
    end; // if

    if not chkBudget.Checked then
    begin
      UpdateTabel('Categories', 'BudgetTopicID');
      EmptyTable('acc.BudgetTopics');
    end; // if

    if not chkSoratMali.Checked then
    begin
      UpdateTabel('Categories', 'FinancialID');
      EmptyTable('acc.FinancialTopics');
    end; // if

    if not chkList.Checked then
    begin
      EmptyTable('acc.PortionRange');
      EmptyTable('acc.PortionTable');
      EmptyTable('acc.PortionTableItems');
      EmptyTable('acc.PortionTopicCode');
    end; // if

  end;

  /// ///////////////////////////////////////////////////////////////
  EmptyTable('Costs');
  EmptyTable('Proforma');
  EmptyTable('Related');
  EmptyTable('ReciptsDeficits');
  EmptyTable('ReciptPurchaseEffect');
  EmptyTable('ReciptItems');
  EmptyTable('Recipts');
  GoProgressBar('2- در حال آماده سازي بانك اطلاعات جديد ...‏');
  adcNewData.Execute
    ('UPDATE Forms SET Transmittal = 0 WHERE (Transmittal <> 0)');
  EmptyTable('FormItems');
  EmptyTable('Forms');
  EmptyTable('Util.CodesInProcess');
  GoProgressBar(' در حال انتقال مانده‏ها  ...‏');
  if not CheckBox1.Checked then
    Exit;

  with ADOCmdUpDate do
  begin
    try
      CommandText :=
        'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[YearCustomersrptBalanceCoffer]'') and '
        + ' OBJECTPROPERTY(id, N''IsView'') = 1) ' +
        ' drop view [dbo].[YearCustomersrptBalanceCoffer] ';

      Execute;
      // GoProgressBar(' در حال انتقال مانده‏ها1  ...‏');
      // CommandText := ' CREATE VIEW dbo.YearCustomersrptBalanceCoffer AS ' +
      // ' SELECT dbo.Customers.CustID, dbo.Customers.FirstBalance,' +
      // ' rptBalanceCoffer.firstBalance + ' +
      // 'rptBalanceCoffer.bed - rptBalanceCoffer.bes AS firstBalanceOLD' +
      // ' FROM dbo.Customers INNER JOIN  ' + APPBank.Name +
      // '.dbo.rptBalanceCoffer(DEFAULT, ''' + IntToStr(APPBank.Year) +
      // '/12/31'', DEFAULT, DEFAULT) rptBalanceCoffer ON' +
      // ' dbo.Customers.CustID = rptBalanceCoffer.CustID' +
      // // new
      // ' INNER JOIN ' +
      // ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
      // + ' WHERE (NOT (CustomersGroup.GroupType IN (1, 2)))';
      // //
      // Execute;
      if APPBank.SysID = 40 then
      begin
        CommandText := 'INSERT INTO Util.MaliYear' +
          ' (YearID, StartYear, EndYear)' + ' select YearID = YearID + 1' +
          ' ,StartYear = LTRIM(STR(LEFT(StartYear, 4) + 1) + RIGHT(StartYear, 6))'
          + ' ,EndYear = LTRIM(STR(LEFT(EndYear, 4) + 1) + RIGHT(EndYear, 6))' +
          ' from Util.MaliYear' + ' WHERE (YearID = ' +
          IntToStr(APPBank.Year) + ')';
        Execute;
        CommandText := 'DELETE FROM Util.MaliYear WHERE (YearID <> ' +
          IntToStr(APPBank.Year + 1) + ')';
        Execute;

      end
      else
      begin
        // CommandText := 'DELETE FROM Util.MaliYearUsers WHERE (YearID <> ' +
        // IntToStr(APPBank.Year) + ')';
        // Execute;

        CommandText := 'DELETE FROM Agreements WHERE (YearID <> ' +
          IntToStr(APPBank.Year) + ')';
        Execute;

        CommandText := 'DELETE FROM Util.MaliYear WHERE (YearID <> ' +
          IntToStr(APPBank.Year) + ')';

        Execute;

        CommandText := 'UPDATE Util.MaliYear SET YearID = YearID + 1' +
          ' ,StartYear = LTRIM(STR(LEFT(StartYear, 4) + 1) + RIGHT(StartYear, 6))'
          + ' ,EndYear = LTRIM(STR(LEFT(EndYear, 4) + 1) + RIGHT(EndYear, 6))' +
          ' WHERE (YearID = ' + IntToStr(APPBank.Year) + ')';

        Execute;
      end;

    finally
    end; // try     			SQL.Add  ('');     //////////// //Bsell_bidestan85/////////////
  end; // with
  GoProgressBar(' در حال انتقال مانده‏ها2  ...‏');
  // with ADOCmdUpDate do begin
  // try
  // CommandText:='if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[BankYearCustomer]'') and '+
  // ' OBJECTPROPERTY(id, N''IsView'') = 1) '+
  // ' drop view [dbo].[BankYearCustomer] ';
  // Execute;
  // GoProgressBar(' در حال انتقال مانده‏ها2  ...‏');
  // CommandText:=' CREATE VIEW dbo.BankYearCustomer AS '+
  // 'SELECT '+APPBank.Name+'.dbo.YearCustomer.PersonID1, dbo.Customers.Balance AS CustomersBalance, '+APPBank.Name+'.dbo.YearCustomer.balance '+
  // 'FROM   '+APPBank.Name+'.dbo.YearCustomer INNER JOIN '+
  // 'dbo.Customers ON '+APPBank.Name+'.dbo.YearCustomer.PersonID1 = dbo.Customers.CustID ';
  // Execute;
  // finally
  // end;//try
  // end;//with
  // with qry do begin
  // Active:=False;
  // SQL.Text:='UPDATE BankYearCustomer';
  // SQL.Add  ('SET [CustomersBalance] = [balance]');
  // ExecSQL;

  with DMf.qryTmpTmp do
  begin
    SQL.Text :=
      'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[YearCustomer]'') and '
      + ' OBJECTPROPERTY(id, N''IsView'') = 1) ' +
      ' drop view [dbo].[YearCustomer] ';

    ExecSQL;
    SQL.Text := 'CREATE VIEW YearCustomer AS';
    SQL.Add('SELECT CustomerID1 AS PersonID1,');
    SQL.Add('SUM(CASE WHEN doctype IN (1, 2, 10) THEN AllAcc.bed - AllAcc.bes ELSE 0 END) AS balance');
    SQL.Add('FROM dbo.AllAccount(10, - 1, - 1, - 1, 0, 999999999, ''''');

    SQL.Add(', ''' + APPBank.endYear + ''' , '''', ' + IntToStr(APPBank.Year) +
      ' , ' + IntToStr(APPBank.Year));
    SQL.Add(',0, 999999999, 0, 999999999,DEFAULT) AS AllAcc');
    SQL.Add('GROUP BY CustomerID1');
    ExecSQL;
  end;

  with qry do
  begin
    Active := False;

    SQL.Text := 'DELETE FROM RemainsEarly';
    ExecSQL;

    SQL.Text := 'UPDATE Customers';
    SQL.Add('SET FirstBalance = 0');
    SQL.Add('FROM Customers INNER JOIN');
    SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
    ExecSQL;

    SQL.Text := 'INSERT INTO RemainsEarly';
    SQL.Add('(YearID, PersonID1, Rate, InfoKind, Note,');
    SQL.Add(' SellsEmporium, ArzRemain, ArzTypeID)');

    SQL.Add('SELECT R.YearID, R.PersonID1, R.Rate, R.InfoKind,');
    SQL.Add(' isnull(R.Note,'''') + '' ایجاد سال مالی'' AS Note,');
    SQL.Add(' R.SellsEmporium, R.ArzRemain, R.ArzTypeID');
    SQL.Add('FROM  ' + APPBank.Name + '.dbo.RemainsEarly AS R INNER JOIN');
    SQL.Add('Customers ON R.PersonID1 = Customers.CustID INNER JOIN');
    SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
    SQL.Add('WHERE (R.YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    ExecSQL;
    UpDateBankChsh(APPBank.Year, qry, APPBank.Name); // APPBank.Year - 1   new
    GoProgressBar(' در حال انتقال مانده‏ها3  ...‏');
  end; // with

  YearStuffKind := APPBank.Name + '.dbo.YearStuff';
  GoProgressBar('1‏- در حال انتقال موجودي‏ها  ...‏');
  with qry do
  begin
    Active := False;
    SQL.Text := 'declare @i int';
    SQL.Add('set @i=(SELECT MIN(CustomerGrpID) FROM CustomersGroup)');
    SQL.Add('if not exists (SELECT CustID FROM Customers WHERE (CustID = 0))');
    SQL.Add('INSERT INTO Customers (CustID, CustName, ModifyDate, CustomerGrpID)');
    SQL.Add('VALUES (0, ''0'', CONVERT(DATETIME, ''1975-05-05 00:00:00'', 102), @i)');
    ExecSQL;
    GoProgressBar('1‏- در حال انتقال موجودي‏ها  .....‏');
    Active := False;
    SQL.Text := 'CREATE TABLE [ReciptItemsTemp] ('; //
    SQL.Add('[ReciptItemID] [int] IDENTITY (1, 1) NOT NULL ,	[ReciptID] [int] NOT NULL ,');
    SQL.Add('[StuffCode] [bigint] NOT NULL ,	[StuffSize] [varchar] (12) NOT NULL ,');
    SQL.Add('[StuffDiameter] [float] NOT NULL ,	[StuffAlloy] [varchar] (12) NOT NULL ,');
    SQL.Add('[InputEntity] [float] NOT NULL ,	[InputWeight] [float] NOT NULL ,');
    SQL.Add('[StuffGrade] [tinyint] NOT NULL ,	TotalInputPrice money NOT NULL ,TotallSellPrice  money ,');
    SQL.Add('[ControlCode] [int] NOT NULL DEFAULT (0),	');
    SQL.Add('[PersonID1] [int] NOT NULL DEFAULT (0),ItemNote [varchar] (100)	,');
    SQL.Add('YearID [int] NOT NULL , ServerID [int] NOT NULL ,');
    SQL.Add('CONSTRAINT [PK_ReciptItemsTemp] PRIMARY KEY CLUSTERED 	');
    SQL.Add('([ReciptItemID]	) ON [PRIMARY] ) ON [PRIMARY]');
    SQL.Add('INSERT INTO Recipts(ReciptID, StoreID, ReciptNumber, ReciptDate,');
    SQL.Add(' ReciptType, ModifyDate,OperatorID,PersonID1,PersonID2,PersonID3,PersonID4,AddDecValue,');
    SQL.Add('TotalValue,ReciptValue,UseOtherID,YearID , ServerID)');
    SQL.Add('SELECT StoreID, StoreID, StoreID, ''' + StartMaliYear +
      ''', 1, GETDATE(),' + IntToStr(User.id) + ',0,0,0,0,0,0,0,0,' +
      IntToStr(APPBank.Year + 1) + ',' + IntToStr(opt.ServerID) + '');
    SQL.Add('FROM ' + YearStuffKind + ' GROUP BY StoreID');
    ExecSQL;
    GoProgressBar('2‏- در حال انتقال موجودي‏ها  ...‏');
    Active := False;
    qryStore.Active := False;
    qryStore.SQL.Text := 'SELECT StoreID,n_ValuationType';
    qryStore.SQL.Add('FROM ' + YearStuffKind);
    qryStore.SQL.Add('WHERE (YearID = ' + IntToStr(APPBank.Year) + ')');
    qryStore.SQL.Add('GROUP BY StoreID,n_ValuationType');
    qryStore.Active := True;
    qryStore.First;
    qryStore.DisableControls;
    while not qryStore.eof do
    begin
      if qryStore.FieldByName('n_ValuationType').AsInteger in [3, 8] then
        YearStuffKind := APPBank.Name + '.dbo.YearStuffSpecialinventory'
      else
        YearStuffKind := APPBank.Name + '.dbo.YearStuff';
      Active := False;
      SQL.Text := 'INSERT INTO ReciptItemsTemp';
      SQL.Add('( ReciptID,StuffCode, StuffDiameter, StuffSize, StuffAlloy, ');
      SQL.Add('StuffGrade, InputEntity, InputWeight, TotalInputPrice,TotallSellPrice,ControlCode,');
      SQL.Add('PersonID1,ItemNote');
      SQL.Add(',YearID,ServerID)');
      SQL.Add('SELECT StoreID,StuffCode, StuffDiameter, StuffSize, StuffAlloy,');
      SQL.Add(' StuffGrade, Entity, Weight, Price,TotallSellPrice,ControlCode,PersonID1,ItemNote');
      SQL.Add(',' + IntToStr(APPBank.Year + 1) + ',' + IntToStr(opt.ServerID));
      SQL.Add('FROM ' + YearStuffKind);
      SQL.Add('WHERE (StoreID = ' + qryStore.FieldByName('StoreID').AsString);
      SQL.Add(')AND (YearID = ' + IntToStr(APPBank.Year) + ')');
      ExecSQL;
      qryStore.Next;
    end; // while
    GoProgressBar('3‏- در حال انتقال موجودي‏ها  ...‏');
    qryStore.Active := False;
    Active := False;
    GoProgressBar('5‏- در حال انتقال موجودي‏ها  ...‏');
    SQL.Text := ' INSERT INTO ReciptItems ';
    SQL.Add('(ReciptItemID, ReciptID,StuffCode, StuffDiameter, StuffSize, ');
    SQL.Add('StuffAlloy, StuffGrade, InputEntity, InputWeight, TotalInputPrice,TotallSellPrice,');
    SQL.Add('ControlCode,PersonID1,ItemNote');
    SQL.Add(',YearID,ServerID)');
    SQL.Add('SELECT ReciptItemID, ReciptID,StuffCode, StuffDiameter, StuffSize,');
    SQL.Add(' StuffAlloy, StuffGrade, InputEntity, InputWeight, TotalInputPrice,TotallSellPrice');
    SQL.Add(',ControlCode,PersonID1,ItemNote');
    SQL.Add(',' + IntToStr(APPBank.Year + 1) + ',' + IntToStr(opt.ServerID));
    SQL.Add('FROM ReciptItemsTemp');
    SQL.Add('drop TABLE ReciptItemsTemp');
    ExecSQL;

    GoProgressBar('0-در حال انتقال چك‏ها  ...‏');

    SQL.Text := 'SELECT *,0 AS NewFormID,' + IntToStr(APPBank.Year + 1) +
      ' as YearID1  INTO Temp_FormItems FROM YearChek';
    SQL.Add('WHERE (FormType IN (999999999))and(CustomerID1=999999999)');
    SQL.Add('ALTER TABLE Temp_FormItems ADD NewFormItemID INT IDENTITY');
    ExecSQL;
    RemainChecks(21, '10,15,21');
    GoProgressBar('1- در حال انتقال چك‏ها  ...‏');
    RemainChecks(22, '11,22,19');
    GoProgressBar('2- در حال انتقال چك‏ها  ...‏');
    RemainChecks(24, '17,18,24');
    GoProgressBar('3- در حال انتقال چك‏ها  ...‏');
    RemainChecks(73, '73,80');
    GoProgressBar('4- در حال انتقال چك‏ها  ...‏');
    RemainChecks(54, '50,54');
    GoProgressBar('5- در حال انتقال چك‏ها  ...‏');
    RemainChecks(74, '70,74');
    GoProgressBar('6- در حال انتقال چك‏ها  ...‏');

    RemainChecks(28, '12,28');
    GoProgressBar('7- در حال انتقال چك‏ها  ...‏');

    // صفركردن مشتري هايي كه حذف كرديده اند
    SQL.Text := 'UPDATE Temp_FormItems SET CustomerID2=0';
    SQL.Add('WHERE(CustomerID2 IN (SELECT CustomerID2 FROM Temp_FormItems AS Temp_FormItems_1');
    SQL.Add('GROUP BY CustomerID2 HAVING (NOT(CustomerID2 IN(SELECT CustID FROM Customers)))))');
    ExecSQL;
    GoProgressBar('7- در حال انتقال چك‏ها  ...‏');
    SQL.Text := 'INSERT INTO FormItems';
    SQL.Add('(CheckNumber, CheckDate, CheckType, ItemAmount, ItemNote, BankName, AccountNumber, City,');
    SQL.Add('CustomerID2, TopicCode, DetailCode, CTopicCode,');
    SQL.Add('CTopicCode2, ProjectID, preFormItemID, AidInfoNo, AidInfoDate, FirstUser, LastUser, AmountArz, CheckState,');
    SQL.Add('CheckFor, AccountNumberNew,BudgetCode, FormID, FormItemID,Row,YearID,ServerID');

    SQL.Add(', CashWage, AccState, ItemState, ItemStateComment, SeverableAmount, ');
    SQL.Add('RelatedID, VAT, TopicTypesI, AccountNumberNew1, CTopicCode3');

    SQL.Add(', ArzTypeID, ArzAmount, ArzRate, DayDelay, AmountDelay, PerServerID, CheckCounter,ProductCode)');

    SQL.Add('SELECT CheckNumber, CheckDate, CheckType, ItemAmount, ItemNote, BankName, AccountNumber, City, isnull(CustomerID2,0),');
    SQL.Add('TopicCode, DetailCode, CTopicCode,');
    SQL.Add('CTopicCode2, ProjectID, preFormItemID, AidInfoNo, AidInfoDate, FirstUser, LastUser, AmountArz, CheckState,');
    SQL.Add('CheckFor, AccountNumberNew,BudgetCode, NewFormID, NewFormItemID,Row,YearID1,ServerID');

    SQL.Add(', CashWage, AccState, ItemState, ItemStateComment, SeverableAmount, ');
    SQL.Add('RelatedID, VAT, TopicTypesI, AccountNumberNew1, CTopicCode3');
    SQL.Add(', ArzTypeID, ArzAmount, ArzRate, DayDelay, AmountDelay, PerServerID, CheckCounter,ProductCode');

    SQL.Add('FROM Temp_FormItems');
    ExecSQL;
    SQL.Text := 'drop TABLE Temp_FormItems';
    ExecSQL;
    SQL.Text := 'UPDATE  FormItems  SET preFormItemID = NULL';
    ExecSQL;
    SQL.Text :=
      'UPDATE ReciptItems SET UnitSellPrice = ROUND(TotalInputPrice / InputWeight, 3)'
      + ' WHERE (InputWeight <> 0)';
    if opt.EntityDisplayType = 0 then
      SQL.Text :=
        'UPDATE ReciptItems SET UnitSellPrice = ROUND(TotalInputPrice / InputEntity, 3)'
        + ' WHERE (InputEntity <> 0)';
    ExecSQL;

    // SQL.Text :=
    // 'UPDATE YearCustomersrptBalanceCoffer SET FirstBalance = isnull( firstBalanceOLD,0)';
    // ExecSQL;

    SQL.Text := 'DELETE FROM Manifesto WHERE (ManifestoID NOT IN' +
      ' (SELECT MAX(ManifestoID) FROM Manifesto AS Manifesto_1))';
    ExecSQL;

    SQL.Text := 'UPDATE Agreements SET YearID = YearID + 1 WHERE YearID = ' +
      IntToStr(APPBank.Year);
    ExecSQL;

    Active := False;

    if SubsysMenu[15].Active then
    begin
      GoProgressBar(' در حال انتقال اطلاعات‏دارایی ثابت  ...‏');
      TAssetsFunctions.MakeSingleAssetsYear(adcNewData, UpDown1.Position - 1300,
        CheckBox1.Checked);
    end;

    if ((optSub.Subsys[26] = '1') and (optSub.Subsys[25] = '1')) then
    begin

      EmptyTable('Pay.BudgetsInfo');
      EmptyTable('Pay.BudgetInfoItems');
      EmptyTable('util.CodesInProcess');
      GoProgressBar('2- در حال آماده سازي بانك اطلاعات جديد ...‏');
      EmptyTable('Pay.FixedCalculated');
      GoProgressBar('3- در حال آماده سازي بانك اطلاعات جديد ...‏');
      EmptyTable('Pay.Functions');
      EmptyTable('Pay.FunctionsItems');
      EmptyTable('Pay.FunctionSpecialControl');
      GoProgressBar('4- در حال آماده سازي بانك اطلاعات جديد ...‏');
      EmptyTable('Pay.PersonelDecExt');
      EmptyTable('Pay.DecExtItems');
      GoProgressBar('5- در حال آماده سازي بانك اطلاعات جديد ...‏');
      EmptyTable('Pay.FunctionDay');
      EmptyTable('Pay.FunctionDayItems');
      // ('FormsInfo')('Config')('FormTypes')('FormInfoItems')('InsuranceCONSTinfo')   ('SalaryRange');
      if not ChkBaseInfo.Checked then
      begin
        EmptyTable('Pay.PersonelArchives');
        EmptyTable('Pay.PersonelInfo');
      end;
      GoProgressBar('6- در حال آماده سازي بانك اطلاعات جديد ...‏');
      if (not ChkInterdicts.Checked) then
      begin
        EmptyTable('Pay.Interdicts');
        EmptyTable('Pay.InterdictItems');
      end;
      GoProgressBar('7- در حال آماده سازي بانك اطلاعات جديد ...‏');
      if (not ChkInterdictsHistory.Checked) then
        with qry do
        begin
          Active := False;
          SQL.Text := 'DELETE FROM Pay.Interdicts WHERE  (State >= 50) ';
          ExecSQL;
        end; // with
      GoProgressBar('1- در حال بررسي احكام كارگزيني  ...‏');
      with qry do
      begin
        Active := False;
        SQL.Text :=
          'if exists (select * from dbo.sysobjects where id = object_id(N''[Pay].[Temp_InterdictItems]'') and OBJECTPROPERTY(id,';
        SQL.Add('N''IsUserTable'') = 1)');
        SQL.Add('drop table [Pay].[Temp_InterdictItems]');
        ExecSQL;

        SQL.Text :=
          'if exists (select * from dbo.sysobjects where id = object_id(N''[Pay].[Temp_Interdicts]'') and OBJECTPROPERTY(id,';
        SQL.Add('N''IsUserTable'') = 1)');
        SQL.Add('drop table [Pay].[Temp_Interdicts]');
        ExecSQL;

        SQL.Text :=
          'if exists (select * from dbo.sysobjects where id = object_id(N''[Pay].[Temp_PersonelDecExt]'') and OBJECTPROPERTY(id,';
        SQL.Add('N''IsUserTable'') = 1)');
        SQL.Add('drop table [Pay].[Temp_PersonelDecExt]');
        ExecSQL;

        SQL.Text := 'UPDATE Util.MaliYear' + ' SET YearID = YearID + 1' +
          ' , StartYear = LTRIM(STR(LEFT(StartYear, 4) + 1) + RIGHT(StartYear, 6))'
          + ' , EndYear = LTRIM(STR(LEFT(EndYear, 4) + 1) + RIGHT(EndYear, 6))'
          + ' WHERE     (YearID = ' + IntToStr(APPBank.Year) + ')';

        ExecSQL;
        SQL.Text := 'UPDATE Pay.FormsInfo ' + 'SET Years = Years + 1' +
          'WHERE (Years = ' + IntToStr(APPBank.Year) + ')';

        ExecSQL;

        if ChkBaseInfo.Checked then
        begin
          SQL.Text := 'SELECT * INTO Pay.Temp_Interdicts FROM Pay.Interdicts';

          SQL.Add('WHERE (State < 50) ');

          if not chkStateSmaller50.Checked then
            SQL.Add('AND(SUBSTRING(InterdicEndDate, 1, 7) >= ''' +
              MidStr(optP.FinishMaliYear, 1, 7) + ''')');

          SQL.Add('SELECT InterdictItems.* INTO Pay.Temp_InterdictItems');
          SQL.Add('FROM Pay.Interdicts RIGHT OUTER JOIN');
          SQL.Add('Pay.InterdictItems ON Pay.Interdicts.InterdictID = InterdictItems.InterdictID');

          SQL.Add('WHERE (Interdicts.State < 50) ');

          if not chkStateSmaller50.Checked then
            SQL.Add('AND  (SUBSTRING(InterdicEndDate, 1, 7) >= ''' +
              MidStr(optP.FinishMaliYear, 1, 7) + ''')');

          ExecSQL;
          GoProgressBar('2- در حال بررسي احكام كارگزيني  ...‏');
          SQL.Text := 'DECLARE @New_InterdictID INT';
          SQL.Add('DECLARE @New_InterdictItemsID INT');
          SQL.Add('SET @New_InterdictID=(SELECT ISNULL(MAX(InterdictID),0)+1 FROM Pay.Interdicts)');
          SQL.Add('SET @New_InterdictItemsID=(SELECT ISNULL(MAX(InterdictItemsID),0)+1 FROM Pay.InterdictItems)');
          SQL.Add('UPDATE Pay.Temp_Interdicts SET LastInterdictID =InterdictID');
          SQL.Add('UPDATE Pay.Temp_Interdicts SET InterdictID =InterdictID+@New_InterdictID');
          SQL.Add('UPDATE Pay.Temp_InterdictItems SET InterdictItemsID =InterdictItemsID+@New_InterdictItemsID');
          SQL.Add('UPDATE Pay.Temp_InterdictItems SET InterdictID =InterdictID+@New_InterdictID');
          ExecSQL;
          GoProgressBar('3- در حال بررسي احكام كارگزيني  ...‏');
          SQL.Text := 'UPDATE Pay.Interdicts SET State =50';
          ExecSQL;

          SQL.Text := 'UPDATE Pay.Temp_Interdicts SET InterdictDate = ''' +
            IntToStr(StrToInt(MidStr(optP.StartMaliYear, 1, 4)) + 1) +
            MidStr(optP.StartMaliYear, 5, 6) + ''', ' + 'InterdicStartDate = '''
            + IntToStr(StrToInt(MidStr(optP.StartMaliYear, 1, 4)) + 1) +
            MidStr(optP.StartMaliYear, 5, 6) + ''', ' + 'InterdicEndDate = ''' +
            IntToStr(StrToInt(MidStr(optP.FinishMaliYear, 1, 4)) + 1) +
            MidStr(optP.FinishMaliYear, 5, 6) + '''' +
            ',InterdictNo = str(CONVERT(Float, InterdictNo) + 0.1,11,2) ' +
            ',HasRetard = 0 ,State = 0';

          ExecSQL;
          GoProgressBar('1-4- در حال بررسي احكام كارگزيني  ...‏');

          SQL.Text := 'UPDATE Pay.Temp_InterdictItems ' +
            'SET    Firstdate = NULL, Enddate = NULL';
          ExecSQL;
          GoProgressBar('2-4- در حال بررسي احكام كارگزيني  ...‏');

          SQL.Text :=
            'INSERT INTO Pay.Interdicts SELECT * FROM Pay.Temp_Interdicts';
          ExecSQL;
          GoProgressBar('5- در حال بررسي احكام كارگزيني  ...‏');
          SQL.Text :=
            'INSERT INTO Pay.InterdictItems SELECT * FROM Pay.Temp_InterdictItems';
          ExecSQL;
        end;
        if ChkBaseInfo.Checked then
        begin
          // GoProgressBar('1- در حال انتقال وامهاي پرسنل ...‏');
          // SQL.Text := 'SELECT * INTO Pay.Temp_PersonelDecExt FROM ' +
          // APPBank.Name + '.Pay.YearLoan';
          // SQL.Add('WHERE (PaymentLoan < EmployerAmount) AND ');
          // SQL.Add(' ((Settlement IS NULL) OR (Settlement = 0))');
          // ExecSQL;
          // SQL.Text :=
          // 'ALTER TABLE Pay.Temp_PersonelDecExt ADD DecExtID INT IDENTITY (100,1) ';
          // ExecSQL;
          // s := GetPersonelDecExtField('');
          // s := StringReplace(s, ', YearID', '', [rfReplaceAll]);
          // GoProgressBar('2- در حال انتقال وامهاي پرسنل ...‏');
          // SQL.Text := 'INSERT INTO Pay.PersonelDecExt';
          // SQL.Add('(' + s + ')');
          // SQL.Add('SELECT ' + s);
          // SQL.Add('FROM Pay.Temp_PersonelDecExt');
          // ExecSQL;
          // GoProgressBar('3- در حال انتقال وامهاي پرسنل ...‏');
          //
          // SQL.Text := 'INSERT INTO Pay.PersonelDecExtItem';
          // SQL.Add('(DecExtID, Years, Months, Amount)');
          // SQL.Add('SELECT Temp_PersonelDecExt_1.DecExtID, ' + APPBank.Name +
          // '.Pay.PersonelDecExtItem.Years,');
          // SQL.Add(APPBank.Name + '.Pay.PersonelDecExtItem.Months,');
          // SQL.Add(APPBank.Name + '.Pay.PersonelDecExtItem.Amount');
          // SQL.Add('FROM ' + APPBank.Name +
          // '.Pay.PersonelDecExtItem INNER JOIN');
          // SQL.Add('Pay.Temp_PersonelDecExt AS Temp_PersonelDecExt_1 ON');
          // SQL.Add(APPBank.Name +
          // '.Pay.PersonelDecExtItem.DecExtID = Temp_PersonelDecExt_1.oldDecExtID');
          // SQL.Add('WHERE (' + APPBank.Name + '.Pay.PersonelDecExtItem.Years > '
          // + IntToStr(APPBank.Year) + ')');
          //
          // ExecSQL;
          // GoProgressBar('4- در حال انتقال وامهاي پرسنل ...‏');
          // SQL.Text := 'drop TABLE Pay.Temp_PersonelDecExt';
          // ExecSQL;

          GoProgressBar('1- در حال انتقال تعهدات پرسنل ...‏');
          SQL.Text := 'SELECT  ' + GetPersonelDecExtField
            (APPBank.Name + '.Pay.PersonelDecExt.') +
            ' INTO Pay.Temp_PersonelDecExt ';
          SQL.Add('FROM ' + APPBank.Name + '.Pay.PersonelDecExt INNER JOIN');
          SQL.Add(APPBank.Name + '.Pay.FormsInfo ON ' + APPBank.Name +
            '.Pay.PersonelDecExt.FormInfoID = ' + APPBank.Name +
            '.Pay.FormsInfo.FormInfoID');
          SQL.Add('WHERE     (' + APPBank.Name +
            '.Pay.FormsInfo.FormType = 35)');
          ExecSQL;
          GoProgressBar('2- در حال انتقال تعهدات پرسنل ...‏');
          SQL.Text := 'declare @qry varchar(1000)';
          SQL.Add('set @qry=''ALTER TABLE Pay.Temp_PersonelDecExt ADD DecExtIDTmp INT IDENTITY ( ''+str((select isnull(max(DecExtID),0)+1 FROM Pay.PersonelDecExt))+'' ,1)''');
          SQL.Add('Exec (@qry)');
          ExecSQL;
          GoProgressBar('3- در حال انتقال تعهدات پرسنل ...‏');
          SQL.Text :=
            'update Pay.Temp_PersonelDecExt set DecExtID=DecExtIDTmp ';
          ExecSQL;
          SQL.Text :=
            'ALTER TABLE Pay.Temp_PersonelDecExt DROP COLUMN DecExtIDTmp';
          ExecSQL;
          SQL.Text := 'UPDATE  Pay.Temp_PersonelDecExt SET YearID = YearID + 1';
          ExecSQL;
          GoProgressBar('4- در حال انتقال تعهدات پرسنل ...‏');
          SQL.Text := 'INSERT INTO Pay.PersonelDecExt(' + s + ') SELECT ';

          SQL.Add(s);

          SQL.Add('FROM Pay.Temp_PersonelDecExt');

          ExecSQL;
          GoProgressBar('5- در حال انتقال تعهدات پرسنل ...‏');
          SQL.Text := 'drop TABLE Pay.Temp_PersonelDecExt';
          ExecSQL;
          GoProgressBar('6- در حال انتقال تعهدات پرسنل ...‏');

          GoProgressBar('1- در حال انتقال مرخصي ابتداي سال پرسنل ...‏');
          SQL.Text := 'SELECT PersonelInfo.PersonelNo, ROUND';
          SQL.Add('((SELECT FormsInfo.StandardDays * SUM(FunctionDay) / 365 AS FunctionDay');
          SQL.Add('FROM ' + APPBank.Name + '.Pay.Functions AS Functions_1');
          SQL.Add('WHERE (PersonelNo = PersonelInfo.PersonelNo))');
          SQL.Add('+ ROUND(SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THEN PersonelDecExt.DayQuntity ELSE - 1 *');
          SQL.Add('PersonelDecExt.DayQuntity END))');
          SQL.Add('+ ROUND(SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THEN PersonelDecExt.DayTime ELSE - 1 *');
          SQL.Add('PersonelDecExt.DayTime END))');
          SQL.Add('+ SUM((CASE PersonelDecExt.FirstMounth WHEN 0 THEN PersonelDecExt.Minute_ ELSE - 1 *');
          SQL.Add('PersonelDecExt.Minute_ END)) / 60, 2) / 8, 2), 2) AS DayQuntity,');
          SQL.Add('PersonelDecExt.FormInfoID');

          SQL.Add('INTO ##Temp_PersonelDecExt ');

          SQL.Add('FROM ' + APPBank.Name +
            '.Pay.PersonelDecExt as PersonelDecExt INNER JOIN');
          SQL.Add('' + APPBank.Name +
            '.Pay.FormsInfo as FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID LEFT OUTER JOIN');
          SQL.Add('' + APPBank.Name +
            '.Pay.PersonelInfo AS PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo');
          SQL.Add('WHERE (PersonelDecExt.FirstMounth BETWEEN 0 AND 12) AND (FormsInfo.FormType = 16)');
          SQL.Add('GROUP BY PersonelInfo.PersonelNo, FormsInfo.StandardDays, FormsInfo.StandardTimes, PersonelDecExt.FormInfoID');

          ExecSQL;

          GoProgressBar('2- در حال انتقال مرخصي ابتداي سال پرسنل ...‏');
          SQL.Text := 'declare @qry varchar(1000)';
          SQL.Add('set @qry=''ALTER TABLE ##Temp_PersonelDecExt ADD DecExtID ');
          SQL.Add('INT IDENTITY ( ''+str((select isnull(max(DecExtID),0)+1 FROM Pay.PersonelDecExt))+'' ,1)''');
          SQL.Add('Exec (@qry)');
          ExecSQL;
          GoProgressBar('3- در حال انتقال مرخصي ابتداي سال پرسنل ...‏');
          SQL.Text := 'INSERT INTO Pay.PersonelDecExt';
          SQL.Add('(DecExtID, FormInfoID, PersonelNo, DayQuntity, YearID, StartYear, EndYear,FirstMounth,EndMounth)');
          SQL.Add('SELECT DecExtID, FormInfoID, PersonelNo, DayQuntity, ' +
            YearNo + ', ' + YearNo + ', ' + YearNo + ',0,0');
          SQL.Add('FROM ##Temp_PersonelDecExt');
          ExecSQL;
          GoProgressBar('4- در حال انتقال مرخصي ابتداي سال پرسنل ...‏');

          // ------------------------------------------------------------------------

          GoProgressBar
            ('1- ثبت مانده ابتداي دوره و تعديلات كسورات/اضافات ...‏');

          SQL.Text :=
            'SELECT SalaryID AS FormInfoID,PersonelNO,Price AS PaymentLoan ';

          SQL.Add('INTO ##Temp_PersonelDecExt2 ');

          SQL.Add('FROM ' + APPBank.Name +
            '.Pay.PaymentDecExt(-999999999, 999999999, 12, ' + YearNo + ', ' +
            YearNo + ') AS PaymentDecExt_1 ');

          ExecSQL;

          GoProgressBar
            ('2- ثبت مانده ابتداي دوره و تعديلات كسورات/اضافات ...‏');
          SQL.Text := 'declare @qry varchar(1000)';
          SQL.Add('set @qry=''ALTER TABLE ##Temp_PersonelDecExt2 ADD DecExtID ');
          SQL.Add('INT IDENTITY ( ''+str((select isnull(max(DecExtID),0)+1 FROM Pay.PersonelDecExt))+'' ,1)''');
          SQL.Add('Exec (@qry)');
          ExecSQL;
          GoProgressBar
            ('3- ثبت مانده ابتداي دوره و تعديلات كسورات/اضافات ...‏');
          SQL.Text := 'INSERT INTO Pay.PersonelDecExt';
          SQL.Add('(DecExtID, FormInfoID, PersonelNo, PaymentLoan, YearID, StartYear, EndYear,FirstMounth,EndMounth)');
          SQL.Add('SELECT DecExtID, FormInfoID, PersonelNo, PaymentLoan, ' +
            YearNo + ', ' + YearNo + ', ' + YearNo + ',1,1');
          SQL.Add('FROM ##Temp_PersonelDecExt2');
          ExecSQL;
          GoProgressBar
            ('4- ثبت مانده ابتداي دوره و تعديلات كسورات/اضافات ...‏');

          // ------------------------------------------------------------------------

          GoProgressBar('1- در حال بررسي پرسنل غيرفعال ...‏');
          SQL.Text :=
            'DELETE FROM Pay.Interdicts WHERE(NOT(PersonelNo IN(SELECT PersonelNo FROM Pay.Temp_Interdicts)))';
          ExecSQL;
          GoProgressBar('2- در حال بررسي پرسنل غيرفعال ...‏');
          SQL.Text := 'DELETE FROM Pay.PersonelDecExt';
          SQL.Add('WHERE (NOT (PersonelNo IN (');
          SQL.Add('SELECT PersonelNo FROM Pay.Temp_Interdicts)))');
          ExecSQL;

          GoProgressBar('3- در حال بررسي پرسنل غيرفعال ...‏');
          SQL.Text := 'DELETE FROM Pay.PersonelArchives';
          SQL.Add('WHERE (NOT (PersonelNo IN (');
          SQL.Add('SELECT PersonelNo FROM Pay.Temp_Interdicts)))');
          ExecSQL;

          if ChkInterdicts.Checked then
          begin
            GoProgressBar('4- در حال بررسي پرسنل غيرفعال ...‏');
            SQL.Text := 'DELETE FROM Pay.PersonelInfo';
            SQL.Add('WHERE (NOT (PersonelNo IN');
            SQL.Add('(SELECT PersonelNo FROM Pay.Temp_Interdicts)))');
            ExecSQL;
          end;

          GoProgressBar('4-در حال بررسی معافیت مالیاتی...‏');
          SQL.Text :=
            'UPDATE Pay.Interdicts SET TaxMounth = 0, TaxDays = 0 WHERE (State < 50)';

          ExecSQL;

        end;

      end; // with
    end;
    BigMessage('انجام شد', 1);
    CloseMessage;
  end;
end;

function TNewYearF.GetPersonelDecExtField(PerFix: string): string;
begin
  Result := '##DecExtID, ##FormInfoID, ##PersonelNo, ##EmployeeAmount, ##FirstMounth,'
    + '##EndMounth, ##AidNo1, ##AidDate1, ##AidNo2, ##AidDate2, ##DayQuntity, ##DayTime,'
    + '##EmployerAmount, ##FormInfoID2, ##Note_L1, ##Note_L2, ##AccTopicCode,' +
    '##AccDetailCode, ##AccCTopicCode, ##AccCTopicCode2, ##PaymentLoan, ##OfficeCode,'
    + '##ProjectInfoID, ##OfficeInfoID, ##Settlement, ##SettlementDate, ##PayableDuringMonth'

    + ', ##EndDate, ##Minute_, ##AccCTopicCode3, ##State, ##ProcCode,' +
    ' ##EarthCode, ##StartYear, ##EndYear, ##Situation, ##LastUser, ##FirstUser'

    + ', ##YearID';

  Result := StringReplace(Result, '##', PerFix, [rfReplaceAll]);
end;

function TNewYearF.EmptyTable(tblname: string): boolean;
const
  BATCH_SIZE = 10000;
var
  mes: string;
  DeletedRows: Integer;
  TotalDeleted: Integer;
  TriggersDisabled: boolean;
begin
  Result := True;
  TotalDeleted := 0;
  TriggersDisabled := False;

  try
    Inc(GoCount);
    mes := '1-' + GoCount.ToString + ' در حال آماده سازي بانك اطلاعات جديد ...';
    GoProgressBar(mes);

    with qry do
    begin
      Active := False;

      // 1. غیرفعال کردن همه Triggerهای جدول
      try
        SQL.Text := 'DISABLE TRIGGER ALL ON ' + tblname;
        ExecSQL;
        TriggersDisabled := True;
      except
        on E: Exception do
        begin
          // اگر جدول Trigger نداشته باشد یا دسترسی نداشته باشیم، خطا را نادیده می‌گیریم
          add2log('هشدار: نتوانست Trigger را غیرفعال کند برای جدول ' + tblname +
            ' → ' + E.Message);
        end;
      end;

      // 2. حذف دسته‌ای
      repeat
        SQL.Text := Format('DELETE TOP (%d) FROM %s', [BATCH_SIZE, tblname]);
        ExecSQL;
        DeletedRows := RowsAffected;
        TotalDeleted := TotalDeleted + DeletedRows;

//        GoProgressBar(Format('حذف %s : %d رکورد حذف شد',          [tblname, TotalDeleted]));
        Application.ProcessMessages;
      until DeletedRows = 0;
    end;

  except
    on E: Exception do
    begin
      Result := False;
      add2log(E.Message + ' اشكال در حذف جدول ' + tblname);
    end;
  end;

  // 3. حتماً Triggerها را دوباره فعال کن (حتی اگر خطا رخ داده باشد)
  if TriggersDisabled then
  begin
    try
      qry.Active := False;
      qry.SQL.Text := 'ENABLE TRIGGER ALL ON ' + tblname;
      qry.ExecSQL;
    except
      on E: Exception do
        add2log('خطای جدی: نتوانست Trigger را دوباره فعال کند برای جدول ' +
          tblname + ' → ' + E.Message);
    end;
  end;
end;

// procedure TNewYearF.EmptyAllTable;
// var
// i:  Integer;
// begin
// for i:=vjForm1F.CheckListBox1.Count-1  downto 5 do
// if vjForm1F.CheckListBox1.Checked[i] then vjForm1F.DeleteTable(vjForm1F.CheckListBox1.Items[i]);
// end;
//

procedure TNewYearF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(Caption, FOpenTime);
end;

procedure TNewYearF.FormShow(Sender: TObject);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(Caption, FOpenTime);
  edtYearNo.Text := IntToStr(APPBank.Year + 1);
  edtCompanyName.Text := APPBank.CompanyName;
  edtdbName.Text := StringReplace(APPBank.Name, IntToStr(APPBank.Year), '', [])
    + RightStr(edtYearNo.Text, 4);
  SetKeyboardLatin;
end;

procedure TNewYearF.RemainChecks(FormType: Integer; FormTypeString: String);
var
  CustomerID1, CustomerID2: String;
begin
  with qry4Loop do
  begin
    Active := False;
    SQL.Text := 'SELECT CustomerID1,CustomerID2 FROM YearChek';
    SQL.Add('WHERE     (FormType IN (' + FormTypeString + '))');
    SQL.Add('AND (YearID = ' + IntToStr(APPBank.Year) + ')');
    SQL.Add('GROUP BY CustomerID1,CustomerID2');
    Active := True;
  end; // with
  with qry do
  begin
    while not qry4Loop.eof do
    begin
      CustomerID1 := qry4Loop.FieldByName('CustomerID1').AsString;
      if qry4Loop.FieldByName('CustomerID1').IsNull then
        CustomerID1 := '-1';

      CustomerID2 := qry4Loop.FieldByName('CustomerID2').AsInteger.ToString;

      Active := False;
      SQL.Text := 'declare @FormType int';
      SQL.Add('declare @FormID int');
      SQL.Add('declare @FormNumber int');
      SQL.Add('set @FormType =' + IntToStr(FormType) + '');
      SQL.Add('set @FormID =(SELECT ISNULL(MAX(FormID), 0) + 1 FROM Forms)');
      SQL.Add('set @FormNumber =(SELECT ISNULL(MAX(FormNumber), 0) + 1 FROM Forms WHERE (FormType = @FormType))');
      SQL.Add('');
      SQL.Add('INSERT INTO Forms (CustomerID1,CustomerID2, FormType, Amount, FormID, FormDate, FormNumber,BudgetCode,YearID,ServerID)');
      SQL.Add('SELECT CustomerID1,CustomerID2, @FormType AS Expr1, 0 AS Expr2,@FormID, '''
        + StartMaliYear + ''' AS Expr4, @FormNumber,0,' +
        IntToStr(APPBank.Year + 1) + ',ServerID');
      SQL.Add('FROM ' + APPBank.Name + '.dbo.YearChek');
      SQL.Add('WHERE (FormType IN (' + FormTypeString + '))');
      SQL.Add('AND(CustomerID1=' + CustomerID1 + ')');
      SQL.Add('AND(CustomerID2=' + CustomerID2 + ')');
      SQL.Add('AND (YearID = ' + IntToStr(APPBank.Year) + ')');
      SQL.Add('GROUP BY CustomerID1,CustomerID2,ServerID');
      SQL.Add('');
      SQL.Add('');
      SQL.Add('INSERT INTO Temp_FormItems');
      SQL.Add('SELECT *, @FormID AS NewFormID,' + IntToStr(APPBank.Year + 1));
      SQL.Add('FROM ' + APPBank.Name + '.dbo.YearChek');
      SQL.Add('WHERE (FormType IN (' + FormTypeString + '))');
      SQL.Add('AND(CustomerID1=' + CustomerID1 + ')');
      SQL.Add('AND(CustomerID2=' + CustomerID2 + ')');
      SQL.Add('AND (YearID = ' + IntToStr(APPBank.Year) + ')');
      // if FormType=54 then
      // SQL.Add('and (CheckDate >= '''+StartMaliYear'')');
      if FormType = 12 then
        SQL.Add(Format
          ('And(CheckDate >= right(dbo.MiladiTOShamsi(dbo.ShamsiToMiladi(%s)-(dbo.GetCustCheckDateOffset())),10))',
          [QuotedStr(StartMaliYear)]));
      ExecSQL;
      qry4Loop.Next;
    end; // while
  end; // with

end;

procedure TNewYearF.ChkInterdictsHistoryClick(Sender: TObject);
begin
  if ((Sender as TCheckBox).Name = 'ChkInterdicts') and (ChkInterdicts.Checked)
  then
    ChkBaseInfo.Checked := True;
  if ((Sender as TCheckBox).Name = 'ChkInterdictsHistory') and
    (ChkInterdictsHistory.Checked) then
  begin
    ChkBaseInfo.Checked := True;
    ChkInterdicts.Checked := True;
  end;
  if ((Sender as TCheckBox).Name = 'ChkBaseInfo') and not(ChkBaseInfo.Checked)
  then
  begin
    ChkInterdicts.Checked := False;
    ChkInterdictsHistory.Checked := False;
  end;
  if ((Sender as TCheckBox).Name = 'ChkInterdicts') and
    not(ChkInterdicts.Checked) then
    ChkInterdictsHistory.Checked := False;

end;

function TNewYearF.UpdateTabel(TabelName, FldName: String;
  schema: string = 'acc'): boolean;

begin
  with TADOQuery.Create(Self) do
    try
      Connection := adcNewData;
      CommandTimeout := 0;
      SQL.Text := 'UPDATE ' + schema + '.' + TabelName + ' SET  ' +
        FldName + ' = 0';
      try
        ExecSQL;
        Result := True;
      except
        Result := False;
      end;
    finally
      Free;
    end;

end;

end.
