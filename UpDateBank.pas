unit UpDateBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, Buttons, StdCtrls, ExtCtrls,
  ADODB, DB, CheckLst, ComCtrls, System.Actions, System.Math, Vcl.Menus,
  FireDAC.UI.Intf, FireDAC.Stan.Async, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Comp.Script;

type

  TUpDateBankF = class(TTemplate4F)
    qrySections: TADOQuery;
    ChkBankName: TCheckListBox;
    ADOCmdUpDate: TADOCommand;
    pb2: TProgressBar;
    lbl1: TLabel;
    lbl2: TLabel;
    qryVu_StuffCoding: TADOQuery;
    pnlBtn: TPanel;
    BtnCmdUpDate: TBitBtn;
    BtnViews_Fun: TBitBtn;
    BtnClearDefaultIndex: TBitBtn;
    BitBtn1: TBitBtn;
    btnRemove: TBitBtn;
    btnROUND: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    pb1: TProgressBar;
    Label1: TEdit;
    actactUpdateMakeReport: TAction;
    BitBtn5: TBitBtn;
    qryFUp: TADOQuery;
    qryFUpUpFileName: TStringField;
    qryFUpFileAge: TLargeintField;
    BitBtn6: TBitBtn;
    popFarsi: TPopupMenu;
    All1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    qry: TADOQuery;
    BitBtn7: TBitBtn;
    FDScript1: TFDScript;
    FDConnection1: TFDConnection;
    chkVertion: TCheckBox;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BtnCmdUpDateClick(Sender: TObject);
    procedure BtnViews_FunClick(Sender: TObject);
    procedure BtnClearDefaultIndexClick(Sender: TObject);
    procedure ChkBankNameDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnROUNDClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure actactUpdateMakeReportExecute(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure All1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FDScript1Progress(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
  private
    Pathini: string;
    procedure Cmd_UpDateOfFile(Bank_Name: String);
    procedure Cmd_UpDate2OfFile(Bank_Name: String);
    procedure Views_Fun(dbName: String; iFile: Integer;
      fileAddress: string = ''; SaveRun: Boolean = True);
    procedure Views_FunFD(dbName: String; iFile: Integer;
      fileAddress: string = ''; SaveRun: Boolean = True);
    procedure initForm;
    function Go_Progress_Bar(s, Bank_Name: String): String;
    procedure DROPcolumnCorrelateCoReciptNumberKind(Bank_Name: string);
    procedure UpDatePurchaseEffect(Bank_Name: String);
    procedure DROP_CONSTRAINT(Bank_Name: string);
    procedure Vu_StuffCoding;
    function makeUPDATE(TblName, fldName: string): string;
    procedure Add_Field_Config;
    procedure Add_Field_ConfigAcc;
    procedure Add_Field_ConfigAssets;
    procedure OpenFara_UpDateBank;
    function Read_FUp(UpFileName, FileAge: string): string;
    function Save_FUp(UpFileName, FileAge: string): string;
    procedure Cmd_UpDateOfFileFaraS(Bank_Name: String);
    procedure Add_Field_ConfigPay;
    procedure Other_Views_Fun;
    procedure Views_FunSP;
    function GetTabelName: string;
    procedure TransferTable;
    procedure FillCalendar;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  UpDateBankF: TUpDateBankF;

implementation

uses DM, GlobalPro, FaraConsts, MMESSAGE, GeneralDM;

{$R *.dfm}

procedure TUpDateBankF.BitBtn1Click(Sender: TObject);
var
  n: Byte;
begin
  inherited;
  with DMF.qryGlbTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Select * from Sections ';
    SQL.Add('where ((sysid = :sysid1)or(sysid = :sysid2))');
    Parameters.ParamByName('sysid1').Value := SYSID;
    Parameters.ParamByName('sysid2').Value := ifthen(SYSID = 25, 25, 40);

    Active := True;
    n := 0;
    while not eof do
    begin
      if not BankExists(fieldbyname('BankName').AsString) then
      begin
        Delete;
        Inc(n);
      end
      else
        Next;
    end; // while
    Active := False;
  end; // with
  if n > 0 then
    Warn(IntToStr(n) + ' مورد پاكسازي شد.', mtInformation);
  initForm

end;

procedure TUpDateBankF.btnRemoveClick(Sender: TObject);
var
  i: Integer;
  qry: TADOQuery;
begin
  inherited;
  pb2.Max := ChkBankName.Items.Count + 1;
  pb2.Min := 1;
  pb2.Step := 1;
  BigMessage('لطفا صبر کنید.....', 0);
  qry := TADOQuery.Create(Self);
  With qry do
    try
      for i := 0 to ChkBankName.Items.Count - 1 do
      begin
        if ChkBankName.Checked[i] then
        begin
          ConnectionString := GetConStr(ChkBankName.Items[i], 0, nil, '',
            FDConnection1);
          CommandTimeout := 0;

          SQL.Text := 'UPDATE FormItems';
          SQL.Add('SET ItemNote =FormItems_1.ItemNote, BankName =FormItems_1.BankName,');
          SQL.Add('AccountNumber =FormItems_1.AccountNumber, City =FormItems_1.City, CheckFor =FormItems_1.CheckFor');
          SQL.Add('FROM FormItems INNER JOIN');
          SQL.Add('FormItems AS FormItems_1 ON FormItems.CheckNumber = FormItems_1.CheckNumber AND');
          SQL.Add('FormItems.CheckDate = FormItems_1.CheckDate');
          SQL.Add('WHERE (FormItems.BankName LIKE N''%??%'') AND (NOT (FormItems_1.BankName LIKE N''%??%''))');
          SQL.Add('');
          SQL.Add('');
          SQL.Add('UPDATE FormItems');
          SQL.Add('SET ItemNote =FormItems_1.ItemNote,');
          SQL.Add('AccountNumber =FormItems_1.AccountNumber, City =FormItems_1.City, CheckFor =FormItems_1.CheckFor');
          SQL.Add('FROM FormItems INNER JOIN');
          SQL.Add('FormItems AS FormItems_1 ON FormItems.CheckNumber = FormItems_1.CheckNumber AND');
          SQL.Add('FormItems.CheckDate = FormItems_1.CheckDate');
          SQL.Add('WHERE (FormItems.ItemNote LIKE N''%??%'') AND (NOT (FormItems_1.ItemNote LIKE N''%??%''))');

          ExecSQL;
        end;
        lbl2.Caption := IntToStr(i);
        pb2.StepIt;
        Application.ProcessMessages;
      end;
    finally
      Free;
      Warn('انجام شد.', mtConfirmation);
      CloseMessage;
    end;
end;

procedure TUpDateBankF.btnROUNDClick(Sender: TObject);
var
  i: Integer;
  qry: TADOQuery;
begin
  inherited;
  pb2.Max := ChkBankName.Items.Count + 1;
  pb2.Min := 1;
  pb2.Step := 1;
  BigMessage('لطفا صبر کنید.....', 0);
  qry := TADOQuery.Create(Self);
  With qry do
    try
      for i := 0 to ChkBankName.Items.Count - 1 do
      begin
        if ChkBankName.Checked[i] then
        begin
          ConnectionString := GetConStr(ChkBankName.Items[i], 0, nil, '',
            FDConnection1);
          CommandTimeout := 0;
          SQL.Text := '';
          SQL.Add('DECLARE @TableName varchar(255)');
          SQL.Add('DECLARE TableCursor CURSOR FOR');
          SQL.Add('SELECT table_schema+''.''+table_name FROM information_schema.tables');
          SQL.Add('WHERE table_type = ''base table''');
          SQL.Add('OPEN TableCursor');
          SQL.Add('FETCH NEXT FROM TableCursor INTO @TableName');
          SQL.Add('WHILE @@FETCH_STATUS = 0');
          SQL.Add('BEGIN');
          SQL.Add('DBCC DBREINDEX( @TableName,'' '',90)');
          SQL.Add('FETCH NEXT FROM TableCursor INTO @TableName');
          SQL.Add('END');
          SQL.Add('CLOSE TableCursor');
          SQL.Add('DEALLOCATE TableCursor');
          ExecSQL;
        end;
        lbl2.Caption := IntToStr(i);
        pb2.StepIt;
        Application.ProcessMessages;
      end;
    finally
      Free;
      Warn('انجام شد.', mtConfirmation);
      CloseMessage;
    end;
end;

procedure TUpDateBankF.FDScript1Progress(Sender: TObject);
begin
  inherited;
  pb1.StepIt;
end;

procedure TUpDateBankF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm
end;

procedure TUpDateBankF.initForm;
begin
  Pathini := __AppData + AppID + '_UpDateBank.ini';
  chkVertion.Enabled := IsDelphiRunning;
  if IsDelphiRunning then
    chkVertion.Checked := False;

  ChkBankName.Clear;
  with qrySections do
  begin
    Active := False;
    Parameters.ParamByName('SYSID').Value := SYSID;
    Active := True;
    while not eof do
    begin
      ChkBankName.AddItem(fieldbyname('BankName').AsString, TObject(RecNo));
      ChkBankName.Checked[RecNo - 1] := True;
      if fieldbyname('BankName').AsString = APPBank.Name then
        ChkBankName.ItemIndex := RecNo - 1;
      Next;
    end;
    Active := False;
  end; // with

  if optSub.Subsys = '' then
  begin
    optSub.Subsys := '100000000000000000000000001';
    optSub.Subsys := DMF.ReadBankConfig('ActiveSubsys',
      '100000000000000000000000001');
  end;

end;

procedure TUpDateBankF.actactUpdateMakeReportExecute(Sender: TObject);
begin
  inherited;
  try
    theServerClient.SellsMethods.SetMakeReport
  except
    on E: Exception do
  end;
  BigMessage('انجام شد', 0);
end;

procedure TUpDateBankF.Add_Field_Config;
var
  s: string;
  procedure AddFieldConfig(FieldName, FieldType: string);
  begin
    ADOCmdUpDate.CommandText :=
      Format('if ( COLUMNPROPERTY( OBJECT_ID(''Config''),''%S'',''IsRowGuidCol'')is  null )'
      + 'ALTER TABLE Config ADD %s %s', [FieldName, FieldName, FieldType]);
    ADOCmdUpDate.Execute;
  end;

begin
  AddFieldConfig('WorkFlowActive', 'tinyint NOT NULL DEFAULT(0)');
  AddFieldConfig('Band', 'tinyint NOT NULL DEFAULT(0)');
  AddFieldConfig('SabteNam', 'tinyint NOT NULL DEFAULT(0)');
  AddFieldConfig('FilterOnServerID', 'tinyint NOT NULL DEFAULT(1)');

  AddFieldConfig('RequiredCustomers',
    'bigint NOT NULL CONSTRAINT DF_Config_RequiredCustomers DEFAULT (1)');
  ADOCmdUpDate.CommandText :=
    'UPDATE Config SET RequiredCustomers=255 WHERE RequiredCustomers = 1';
  ADOCmdUpDate.Execute;

  AddFieldConfig('LastVersion', 'char(20)');

  AddFieldConfig('CustomersUnicName',
    'tinyint NOT NULL CONSTRAINT DF_Config_CustomersUnicName DEFAULT (0)');

  AddFieldConfig('CheckDateDefaultAct',
    'tinyint NOT NULL CONSTRAINT DF_Config_CheckDateDefaultAct DEFAULT (0)');

  AddFieldConfig('CheckWarnDay',
    'tinyint NOT NULL CONSTRAINT DF_Config_CheckWarnDay DEFAULT (3)');

  AddFieldConfig('FunctionDate4EditFrom',
    'char(10) NOT NULL CONSTRAINT DF_Config_FunctionDate4EditFrom DEFAULT (''0000/00/00'')');

  AddFieldConfig('FunctionDate4EditTo',
    'char(10) NOT NULL CONSTRAINT DF_Config_FunctionDate4EditTo DEFAULT (''9999/99/99'')');

  AddFieldConfig('DeadlineChanges',
    'tinyint NOT NULL CONSTRAINT DF_Config_DeadlineChanges DEFAULT (0)');

  AddFieldConfig('ConcatField4StuffName',
    'varchar(200) NOT NULL CONSTRAINT DF_Config_ConcatField4StuffName DEFAULT ('''')');

  AddFieldConfig('MoadyName', 'VarChar(255)');

  AddFieldConfig('Tabeiat',
    'tinyint NOT NULL CONSTRAINT DF_Config_Tabeiat DEFAULT (0)');

  AddFieldConfig('MachineryLookUpKind1',
    'int NOT NULL CONSTRAINT DF_Config_MachineryLookUpKind1 DEFAULT (0)');
  AddFieldConfig('MachineryLookUpKind2',
    'int NOT NULL CONSTRAINT DF_Config_MachineryLookUpKind2 DEFAULT (0)');
  AddFieldConfig('MachineryLookUpKind3',
    'int NOT NULL CONSTRAINT DF_Config_MachineryLookUpKind3 DEFAULT (0)');

  AddFieldConfig('MachineryLookUpKind4',
    'int NOT NULL CONSTRAINT DF_Config_MachineryLookUpKind4 DEFAULT (0)');
  AddFieldConfig('MachineryLookUpKind5',
    'int NOT NULL CONSTRAINT DF_Config_MachineryLookUpKind5 DEFAULT (0)');
  AddFieldConfig('MachineryLookUpKind6',
    'int NOT NULL CONSTRAINT DF_Config_MachineryLookUpKind6 DEFAULT (0)');

  AddFieldConfig('SendDoc2OtherSystems',
    'int NOT NULL CONSTRAINT DF_Config_SendDoc2OtherSystems DEFAULT (0)');

  AddFieldConfig('chkExistAttachments',
    'tinyint NOT NULL CONSTRAINT DF_Config_chkExistAttachments DEFAULT (0)');

  AddFieldConfig('PureSellActive',
    'tinyint NOT NULL CONSTRAINT DF_Config_PureSellActive DEFAULT (0)');

  AddFieldConfig('ConcatField4StuffNameKind',
    'int NOT NULL CONSTRAINT DF_Config_ConcatField4StuffNameKind DEFAULT (0)');

  AddFieldConfig('TelegramBotAPI', 'Varchar(200) ');
  // ContainTaxOnStuff
  // sent to type
  // AddFieldConfig('ReciptStateChanges',
  // 'Tinyint NOT NULL CONSTRAINT DF_Config_ReciptStateChanges DEFAULT (0)');

  AddFieldConfig('ActiveMiladi',
    'tinyint NOT NULL CONSTRAINT DF_Config_ActiveMiladi DEFAULT (0)');

  AddFieldConfig('AccCenterTopicEqualUseUnitID',
    'Tinyint NOT NULL CONSTRAINT DF_Config_AccCenterTopicEqualUseUnitID DEFAULT (0)');

  AddFieldConfig('ChkUsersCustomersGroupsActive',
    'Tinyint NOT NULL CONSTRAINT DF_Config_ChkUsersCustomersGroupsActive DEFAULT (1)');

  AddFieldConfig('taxPayerTypeField',
    'Tinyint NOT NULL CONSTRAINT DF_Config_taxPayerTypeField DEFAULT (0)');

  AddFieldConfig('CompanyName_L2', 'Varchar(100)');

  ADOCmdUpDate.CommandText :=
    'if ( COLUMNPROPERTY( OBJECT_ID(''Config''),''GroupReciptPostKind'',''IsRowGuidCol'')is null )'
    + ' BEGIN' +
    ' ALTER TABLE Config ADD GroupReciptPostKind Int NOT NULL CONSTRAINT DF_Config_GroupReciptPostKind DEFAULT (0)'
    + ' EXEC(''UPDATE Config set GroupReciptPostKind = CASE WHEN EntityDisplayType in(0,2) THEN 0 ELSE 1 END'')'
    + ' END';
  ADOCmdUpDate.Execute;

  AddFieldConfig('ArzActiveAll',
    'tinyint NOT NULL CONSTRAINT DF_Config_ArzActiveAll DEFAULT (0)');

  AddFieldConfig('MakeDocumentPost',
    'bigint NOT NULL CONSTRAINT DF_Config_MakeDocumentPost DEFAULT (7)');

  AddFieldConfig('AllControls',
    'bigint NOT NULL CONSTRAINT DF_Config_AllControls DEFAULT (0)');

  AddFieldConfig('SmallDeals',
    'money NOT NULL CONSTRAINT DF_Config_SmallDeals DEFAULT (250000000)');

  AddFieldConfig('SmallDealsCo',
    'float NOT NULL CONSTRAINT DF_Config_SmallDealsCo DEFAULT (5)');

  AddFieldConfig('SmallDealsPrice',
    'AS (ROUND(SmallDeals*SmallDealsCo/100,0))');

  AddFieldConfig('PlaqueReaderActive',
    'tinyint NOT NULL CONSTRAINT DF_Config_PlaqueReaderActive DEFAULT (0)');

  AddFieldConfig('IPCameraURL', 'Varchar(1000)');

  AddFieldConfig('ConfigSettings',
    'Bigint NOT NULL CONSTRAINT DF_Config_ConfigSettings DEFAULT (1)');

  AddFieldConfig('RoundEntity',
    'tinyint NOT NULL CONSTRAINT DF_Config_RoundEntity DEFAULT (3)');

  AddFieldConfig('MinEntity',
    'AS CAST(LEFT(STUFF(''0.000000000000'', RoundEntity+3, 1, ''1''),RoundEntity+3) as decimal(20,18))');

  AddFieldConfig('ChkSumTotalOutputPrice',
    'tinyint NOT NULL CONSTRAINT DF_Config_ChkSumTotalOutputPrice DEFAULT (1)');

  if (optSub.Subsys[1] = '1') or (optSub.Subsys[2] = '1') then
    with qry do
    begin
      Active := False;
      ConnectionString := ADOCmdUpDate.ConnectionString;
      SQL.Text := 'SELECT ''0''';
      SQL.Add('+CASE WHEN LEN(CustomerKind1)>0 THEN '',''+CustomerKind1 ELSE '''' END');
      SQL.Add('+CASE WHEN LEN(CustomerKind2)>0 THEN '',''+CustomerKind2 ELSE '''' END');
      SQL.Add('+CASE WHEN LEN(CustomerKind3)>0 THEN '',''+CustomerKind3 ELSE '''' END');
      SQL.Add('+CASE WHEN LEN(CustomerKind4)>0 THEN '',''+CustomerKind4 ELSE '''' END AS CustomerKind');
      SQL.Add('FROM ReciptTypes1 INNER JOIN');
      SQL.Add('ReciptTypes2 ON ReciptTypes1.ReciptType = ReciptTypes2.ReciptType2');
      SQL.Add('WHERE (ReciptTypes1.ReciptType = 12)');
      Open;
      s := Fields[0].AsString;
      close;
      AddFieldConfig('CustomerKindsTransaction',
        'nvarchar(200) NOT NULL CONSTRAINT DF_Config_CustomerKindsTransaction DEFAULT ('''
        + s + ''')');

    end;

  AddFieldConfig('DetailCodelength',
    'tinyint NOT NULL CONSTRAINT DF_Config_DetailCodelength DEFAULT (15)');

  ADOCmdUpDate.CommandText := 'DECLARE @ChkUsersCustomersGroupsActive INT' +
    ' SELECT @ChkUsersCustomersGroupsActive=ChkUsersCustomersGroupsActive FROM config'
    + ' IF ( COLUMNPROPERTY( OBJECT_ID(''Config''),''SearchLimitCustomersGroups'',''IsRowGuidCol'')is null )'
    + ' EXEC(''ALTER TABLE Config ADD SearchLimitCustomersGroups tinyint NOT NULL CONSTRAINT'
    + ' DF_Config_SearchLimitCustomersGroups' +
    ' DEFAULT (''+@ChkUsersCustomersGroupsActive+'')'')';

  ADOCmdUpDate.Execute;

  AddFieldConfig('POActive',
    'tinyint NOT NULL CONSTRAINT DF_Config_POActive DEFAULT (0)');

  AddFieldConfig('NipcUserName', 'Varchar(200) ');
  AddFieldConfig('NipcPassWord', 'Varchar(200) ');

  AddFieldConfig('WarrantyFormTypes', 'char(250) ');

  AddFieldConfig('WarrantyDay', 'tinyint NOT NULL DEFAULT(0)');

  AddFieldConfig('POCaption',
    'varchar(50) NOT NULL CONSTRAINT DF_Config_POCaption DEFAULT (''PO'')');

  AddFieldConfig('LinkServerName', 'Varchar(200) ');

  AddFieldConfig('FISCAL_ID', 'Varchar(2048)');
  AddFieldConfig('PUB_KEY', 'Varchar(2048)');
  AddFieldConfig('PUB_KEY_ID', 'Varchar(2048)');
  AddFieldConfig('PRV_KY', 'Varchar(2048)');
  AddFieldConfig('ECONOMIC_NUMBER', 'Varchar(30)');
  AddFieldConfig('URL_MoadianAPI',
    'varchar(100) NOT NULL CONSTRAINT DF_Config_URL_MoadianAPI DEFAULT (''http://213.108.242.54:8080/moadianwsh/MoadianAPI/FARA/'')');
  AddFieldConfig('EntityOrWeight', 'tinyint NOT NULL DEFAULT(0)');
  AddFieldConfig('ActiveConfigUser', 'tinyint NOT NULL DEFAULT(0)');

  AddFieldConfig('CSR_KEY', 'NVarchar(2048)');
  AddFieldConfig('CRT_KEY', 'NVarchar(2048)');

  AddFieldConfig('OperatorsNewActive',
    'tinyint NOT NULL CONSTRAINT DF_Config_OperatorsNewActive DEFAULT (0)');

  AddFieldConfig('PosPortNumber',
    'int NOT NULL CONSTRAINT DF_Config_PosPortNumber DEFAULT (0) ');
  AddFieldConfig('PosIPAddress', 'varchar(15) ');

  AddFieldConfig('NationalCode', 'Varchar(20)');
  AddFieldConfig('JamePassWord', 'Varchar(200)');
  AddFieldConfig('UserRoleId', 'int NOT NULL DEFAULT(0)');

end;

procedure TUpDateBankF.Add_Field_ConfigAcc;
  procedure AddFieldConfig(FieldName, FieldType: string);
  var
    s: string;
  begin
    s := opt.AccountName;
    // s := DMF.ReadBankConfig('AccountDBName', 'Accounting',      ADOCmdUpDate.ConnectionString);
    if s = EmptyStr then
      s := ChkBankName.Items[ChkBankName.ItemIndex];
    ADOCmdUpDate.ConnectionString := GetConStr(s, 0, nil, '', FDConnection1);
    ADOCmdUpDate.CommandText :=
      Format('if ( COLUMNPROPERTY( OBJECT_ID(''Acc.Config''),''%S'',''IsRowGuidCol'')is  null )'
      + 'ALTER TABLE Acc.Config ADD %s %s', [FieldName, FieldName, FieldType]);
    ADOCmdUpDate.Execute;
  end;

begin
  AddFieldConfig('ChkBalancCTopicCode3', 'tinyint NOT NULL DEFAULT(0)');

  AddFieldConfig('ChkSelfDocShow', 'tinyint NOT NULL DEFAULT(0)');

  AddFieldConfig('POActive',
    'tinyint NOT NULL CONSTRAINT DF_Config_POActive DEFAULT (0)');

  AddFieldConfig('CTopicCode2IsZero',
    'Tinyint NOT NULL CONSTRAINT DF_Config_CTopicCode2IsZero DEFAULT (1)');

  AddFieldConfig('CTopicCode3IsZero',
    'Tinyint NOT NULL CONSTRAINT DF_Config_CTopicCode3IsZero DEFAULT (1)');

  AddFieldConfig('TopicCaptionActive',
    'Tinyint NOT NULL CONSTRAINT DF_Config_TopicCaptionActive DEFAULT (0)');

  AddFieldConfig('RptMD',
    'bigint NOT NULL CONSTRAINT DF_Config_RptMD DEFAULT (0)');

  AddFieldConfig('UserIDFilter', 'tinyint NOT NULL DEFAULT(0)');

  AddFieldConfig('ChkEnterBudget', 'tinyint NOT NULL DEFAULT(0)');

  AddFieldConfig('ArzNumberOfDigits', 'tinyint NOT NULL DEFAULT(4)');
end;

procedure TUpDateBankF.Add_Field_ConfigPay;
  procedure AddFieldConfig(FieldName, FieldType: string);
  begin
    ADOCmdUpDate.CommandText :=
      Format('if ( COLUMNPROPERTY( OBJECT_ID(''pay.Config''),''%S'',''IsRowGuidCol'')is  null )'
      + 'ALTER TABLE pay.Config ADD %s %s', [FieldName, FieldName, FieldType]);
    ADOCmdUpDate.Execute;
  end;

begin
  AddFieldConfig('OffTimeControlMessages', 'Tinyint NOT NULL DEFAULT(0)');
  AddFieldConfig('SysSmsActive', 'Tinyint NOT NULL DEFAULT(0)');
  AddFieldConfig('LastVersion', 'char(20)');
  AddFieldConfig('EidiDisplayedSeparatelyOnTaxList',
    'Tinyint NOT NULL DEFAULT(0)');
  AddFieldConfig('HasSeprateDetailCompany', 'Tinyint NOT NULL DEFAULT(0)');
  AddFieldConfig('PrvBankName', 'Char(30)');
  AddFieldConfig('MinBenefitsInsuranceList',
    ' Money NOT NULL CONSTRAINT DF_Config_MinBenefitsInsuranceList DEFAULT (1100000) ');
  AddFieldConfig('VacationMounthFrom', 'Char(7)');
  AddFieldConfig('VacationMounthTo', 'Char(7)');

  AddFieldConfig('SendDoc2OtherSystems',
    'int NOT NULL CONSTRAINT DF_Config_SendDoc2OtherSystems DEFAULT (0)');

  AddFieldConfig('PersonelNoInInterdictNo',
    'tinyint NOT NULL CONSTRAINT DF_Config_PersonelNoInInterdictNo DEFAULT (0)');

  AddFieldConfig('NumberOffDaysInMonth',
    'Float NOT NULL CONSTRAINT DF_Config_NumberOffDaysInMonth DEFAULT (0)');

  AddFieldConfig('BenCode', 'int');

  AddFieldConfig('ActAnnuityInlistSalary',
    'Tinyint NOT NULL CONSTRAINT DF_Config_ActAnnuityInlistSalary DEFAULT (0)');

  AddFieldConfig('SalaryID4PartMakeBankDSK', 'nvarchar (250)');

  AddFieldConfig('FloatToTimeActive',
    'Tinyint NOT NULL CONSTRAINT DF_Config_FloatToTimeActive DEFAULT (0)');

  AddFieldConfig('UnicNationalID',
    'Tinyint NOT NULL CONSTRAINT DF_Config_UnicNationalID DEFAULT (0)');

  AddFieldConfig('FunctionItemSeparation',
    'Tinyint NOT NULL CONSTRAINT DF_Config_FunctionItemSeparation DEFAULT (0)');

  AddFieldConfig('SalaryID4PartKind',
    'Tinyint NOT NULL CONSTRAINT DF_Config_SalaryID4PartKind DEFAULT (0)');

  AddFieldConfig('ActRewardInlistSalary',
    'Tinyint NOT NULL CONSTRAINT DF_Config_ActRewardInlistSalary DEFAULT (0)');

  AddFieldConfig('Eid_E_Tax_IncludedInTheTaxList',
    'Tinyint NOT NULL CONSTRAINT DF_Config_Eid_E_Tax_IncludedInTheTaxList DEFAULT (0)');

  AddFieldConfig('TaxWithExemptionsFunctionDay',
    'Tinyint NOT NULL CONSTRAINT DF_Config_TaxWithExemptionsFunctionDay DEFAULT (0)');

  AddFieldConfig('FunctionDayDefault', 'Tinyint NOT NULL DEFAULT(0)');

  AddFieldConfig('ClockCard4FieldName',
    'varchar(30) NOT NULL DEFAULT(''PersonelNo'')');

  AddFieldConfig('DocTypeCode',
    'Tinyint NOT NULL CONSTRAINT DF_Config_DocTypeCode DEFAULT (7)');

  AddFieldConfig('GovConstAmount', 'money NOT NULL DEFAULT(16000000)');
  AddFieldConfig('GovSpouse', 'money NOT NULL DEFAULT(4000000)');
  AddFieldConfig('GovChild', 'money NOT NULL DEFAULT(1500000)');

  AddFieldConfig('InterimInterest',
    'Tinyint NOT NULL CONSTRAINT DF_Config_InterimInterest DEFAULT (0)');

  AddFieldConfig('DecimalOrMinute',
    'Tinyint NOT NULL CONSTRAINT DF_Config_DecimalOrMinute DEFAULT (0)');

  AddFieldConfig('NoPrintSalaryIDs', 'varchar (250)');

end;

procedure TUpDateBankF.Add_Field_ConfigAssets;
  procedure AddFieldConfig(FieldName, FieldType: string);
  begin
    FieldType := Format(FieldType, ['CONSTRAINT DF_Config_' + FieldName]);
    ADOCmdUpDate.CommandText :=
      Format('if ( COLUMNPROPERTY( OBJECT_ID(''Assets.Config''),''%S'',''IsRowGuidCol'')is  null )'
      + 'ALTER TABLE Assets.Config ADD %s %s',
      [FieldName, FieldName, FieldType]);
    ADOCmdUpDate.Execute;
  end;

begin
  AddFieldConfig('EditableDepModeDepValue', 'TinyInt NOT NULL %S DEFAULT(1)');
  AddFieldConfig('TimeToDefinitive', 'TinyInt NOT NULL %S DEFAULT(0)');
  // AddFieldConfig('DocTypeCodeDefault', 'TinyInt NOT NULL %S DEFAULT(0)');
  AddFieldConfig('SysSmsActive', 'TinyInt NOT NULL DEFAULT(0)');
  AddFieldConfig('DocExportEffect', 'TinyInt NOT NULL DEFAULT(1)');
  AddFieldConfig('RequiredFields', 'varChar(1000)');
  AddFieldConfig('RecallReciptTypes', 'varChar(30)');
end;

procedure TUpDateBankF.Views_Fun(dbName: String; iFile: Integer;
  fileAddress: string = ''; SaveRun: Boolean = True);
var
  ts, tsTemp: TStrings;
  i: Integer;
  OpenFileName, sName: string;
  fileDate: Integer;
begin
  if iFile = -2 then
    OpenFileName := fileAddress
  else if iFile = -1 then
    OpenFileName := UnzipScript(fileAddress)
  else
    OpenFileName := UnzipScript('Script\Bsell_Views_Fun' + IntToStr(iFile)
      + '.sql');
  if (not FileExists(OpenFileName)) then
    Warn('فايل بروز رساني گزارشات يافت نشد.‏');
  ts := TStringList.Create;
  tsTemp := TStringList.Create;
  ts.LoadFromFile(OpenFileName);
  Label1.Text := ts.Strings[0].trim + '    SQL_Ver=' +
    var_SQL_ProductVersion.ToString;

  OpenFara_UpDateBank;

  fileDate := FileAge(OpenFileName);
  sName := Read_FUp(dbName + iFile.ToString + fileAddress, '');
  if (chkVertion.Checked or (sName <> fileDate.ToString.trim)) then
  begin
    pb1.Max := ts.Count + 1;
    pb1.Min := 1;
    pb1.Position := 0;
    pb1.Step := 1;
    for i := 0 to ts.Count - 1 do
    begin
      if trim(ts.Strings[i]) = 'GO' then
        ts.Strings[i] := '  ';
      if pos('QUOTED_IDENTIFIER', ts.Strings[i]) <> 0 then
        ts.Strings[i] := '  ';
      if pos('SET ANSI_NULLS', ts.Strings[i]) <> 0 then
        ts.Strings[i] := '  ';
    end;
    tsTemp.Text := '';
    for i := 0 to ts.Count - 1 do
    begin
      with ADOCmdUpDate do
      begin
        if (pos('CREATE ', ts.Strings[i]) = 0) then
          tsTemp.Add(ts.Strings[i])
        else
        begin
          CommandText := tsTemp.Text;
          Execute;
          tsTemp.Text := ts.Strings[i];
          Application.ProcessMessages;
        end;
        lbl2.Caption := IntToStr(i);
        pb1.StepIt;
      end; // with
    end;
    ADOCmdUpDate.CommandText := tsTemp.Text;
    ADOCmdUpDate.Execute;
    if SaveRun then
      Save_FUp(dbName + iFile.ToString + fileAddress, fileDate.ToString.trim);
  end
  else
    Application.ProcessMessages;
  ts.Free;
  tsTemp.Free;
end;

procedure TUpDateBankF.Views_FunFD(dbName: String; iFile: Integer;
  fileAddress: string = ''; SaveRun: Boolean = True);
var
  i: Integer;
  OpenFileName, sName: string;
  fileDate: Integer;
begin
  if iFile = -2 then
    OpenFileName := fileAddress
  else if iFile = -1 then
    OpenFileName := UnzipScript(fileAddress)
  else
    OpenFileName := UnzipScript('Script\Bsell_Views_Fun' + IntToStr(iFile)
      + '.sql');
  if not FileExists(OpenFileName) then
    Warn('فايل بروز رساني گزارشات يافت نشد.‏');

  FDScript1.SQLScriptFileName := OpenFileName; // ?????
  FDScript1.SQLScripts.Clear;
  FDScript1.SQLScripts.Add.SQL.LoadFromFile(OpenFileName);

  Label1.Text := FDScript1.SQLScripts[0].SQL.Text;
  pb1.Max := FDScript1.SQLScripts[0].SQL.Count;
  pb1.Min := 1;
  pb1.Position := 0;
  pb1.Step := 1;
  OpenFara_UpDateBank;
  fileDate := FileAge(OpenFileName);
  sName := Read_FUp(dbName + iFile.ToString + fileAddress, '');
  if chkVertion.Checked or (sName <> fileDate.ToString.trim) then
  begin
    FDScript1.ValidateAll; // بررسی صحت دستورات
    FDScript1.ExecuteAll; // اجرای دستورات
  end
  else
    Application.ProcessMessages;
end;

procedure TUpDateBankF.OpenFara_UpDateBank;
begin
  with qryFUp do
  begin
    Active := False;
    ConnectionString := ADOCmdUpDate.ConnectionString;
    try
      Active := True;
    except
      begin
        ADOCmdUpDate.CommandText :=
          'IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N''Util.Fara_UpDateBank'') and OBJECTPROPERTY(id,'
          + ' N''IsUserTable'') = 1 )' + ' CREATE TABLE Util.Fara_UpDateBank(' +
          ' UpFileName varchar(200) NOT NULL,' + ' FileAge bigint NOT NULL' +
          ' CONSTRAINT PK_Fara_UpDateBank PRIMARY KEY CLUSTERED (UpFileName ASC) ON [PRIMARY]) ON [PRIMARY]';
        ADOCmdUpDate.Execute;
        Active := True;
      end;
    end;
    Open;
  end;
end;

function TUpDateBankF.Read_FUp(UpFileName, FileAge: string): string;
begin
  with qryFUp do
  begin
    Filtered := False;
    Filter := 'UpFileName=' + QuotedStr(UpFileName);
    Filtered := True;
    Result := qryFUpFileAge.AsString;
  end;
end;

function TUpDateBankF.Save_FUp(UpFileName, FileAge: string): string;
begin
  with qryFUp do
  begin
    Filtered := False;
    Filter := 'UpFileName=' + QuotedStr(UpFileName);
    Filtered := True;
    if RecordCount = 0 then
      Insert
    else
      Edit;
    qryFUpUpFileName.AsString := UpFileName;
    qryFUpFileAge.AsString := FileAge;
    Post;
  end;
end;

procedure TUpDateBankF.BtnCmdUpDateClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if opt.ReplicationActive then
  begin
    if opt.PublisherActive then
    begin
    end
    else
    begin
      Warn2('به علت وجود  Replication  بروزرسانی بانک  روی سرور اصلی مجاز است .',
        0);
      Exit;
    end;
  end;

  try
    pnlBtn.Enabled := False;
    // BigMessageProgBar('بروز رساني بانك',ChkBankName.Items.Count);
    pb2.Max := ChkBankName.Items.Count + 1;
    pb2.Position := 0;
    pb2.Min := 1;
    pb2.Step := 1;
    for i := 0 to ChkBankName.Items.Count - 1 do
    begin
      if ChkBankName.Checked[i] then
      begin
        pb2.StepIt;
        Application.ProcessMessages;
        ADOCmdUpDate.ConnectionString := GetConStr(ChkBankName.Items[i], 0, nil,
          '', FDConnection1);

        optSub.Subsys := DMF.ReadBankConfig('ActiveSubsys',
          '100000000000000000000000001', ADOCmdUpDate.ConnectionString);

        if ((not User.admin) and (checkIsReplication(ADOCmdUpDate.Connection,
          GetTabelName, ADOCmdUpDate.ConnectionString))) then
        begin
          Warn2(ChkBankName.Items[i] +
            ' این بانک به علت ریپلیکشن بودن قابل  بروز شدن نیست');
          Continue;
        end;

        lbl1.Caption := IntToStr(i - 1) + '<>' + ChkBankName.Items[i];
        ChkBankName.ItemIndex := i;
        if (optSub.Subsys[2] <> '0') then
          Cmd_UpDateOfFile(ChkBankName.Items[i]);

        Cmd_UpDateOfFileFaraS(ChkBankName.Items[i]);

        Cmd_UpDate2OfFile(ChkBankName.Items[i]);
        if (optSub.Subsys[2] <> '0') then
          UpDatePurchaseEffect(ChkBankName.Items[i]);

      end;
    end;
    Beep;
    Warn('انجام شد.', mtInformation);

    BtnViews_Fun.Enabled := True;
  finally
    pnlBtn.Enabled := True;
  end;

end;

function TUpDateBankF.GetTabelName(): string;
begin
  Result := 'Recipts';
  if optSub.Subsys[16] = '1' then
    Result := 'Assets.Amval';

  if (optSub.Subsys[26] = '1') and (optSub.Subsys[25] = '1') then
    Result := 'Pay.Interdicts';

  if (optSub.Subsys[1] = '1') or (optSub.Subsys[2] = '1') or
    (optSub.Subsys[3] = '1') then
    Result := 'Recipts';

end;

procedure TUpDateBankF.BtnViews_FunClick(Sender: TObject);
var
  i: Integer;
  OpenFileName: string;
begin
  inherited;
  try
    Label1.Text := 'گزارشات';
    pnlBtn.Enabled := False;
    pb2.Max := ChkBankName.Items.Count + 1;
    pb2.Position := 0;
    pb2.Min := 1;
    pb2.Step := 1;
    for i := 0 to ChkBankName.Items.Count - 1 do
    begin
      if ChkBankName.Checked[i] then
      begin
        pb2.StepIt;
        Application.ProcessMessages;
        ADOCmdUpDate.ConnectionString := GetConStr(ChkBankName.Items[i], 0, nil,
          '', FDConnection1);

        optSub.Subsys := DMF.ReadBankConfig('ActiveSubsys',
          '100000000000000000000000001', ADOCmdUpDate.ConnectionString);

        if ((not User.admin) and (checkIsReplication(ADOCmdUpDate.Connection,
          GetTabelName, ADOCmdUpDate.ConnectionString))) then
        begin
          Warn2(ChkBankName.Items[i] +
            ' این بانک به علت ریپلیکشن بودن قابل  بروز شدن نیست');
          Continue;
        end;

        lbl1.Caption := IntToStr(i - 1) + '<>' + ChkBankName.Items[i];
        ChkBankName.ItemIndex := i;

        Add_Field_Config;

        if (optSub.Subsys[26] = '1') and (optSub.Subsys[25] = '1') then
          Add_Field_ConfigPay;

        if optSub.Subsys[18] = '1' { SubsysMenu[15].Active }
        then
          Add_Field_ConfigAcc;

        if optSub.Subsys[16] = '1' { SubsysMenu[15].Active } then
          Add_Field_ConfigAssets;
        ADOCmdUpDate.ConnectionString := GetConStr(ChkBankName.Items[i], 0, nil,
          '', FDConnection1);

        // for iFile := 1 to 29 do
        // begin
        // if ((iFile >= 25) and (iFile <= 29)) and
        // not((optSub.Subsys[26] = '1') and (optSub.Subsys[25] = '1')) then
        // Continue;
        //
        // Views_Fun(ChkBankName.Items[i], iFile);
        // end;

        if (optSub.Subsys[1] = '1') or (optSub.Subsys[2] = '1') or
          (optSub.Subsys[3] = '1') then
        begin
          Vu_StuffCoding;
          Views_Fun(ChkBankName.Items[i], -1, 'Script\Fun_Views_Bsell.sql');
          Views_Fun(ChkBankName.Items[i], -1,
            'Script\Fun_Views_Bsell_Special_Script.sql');
          FillCalendar;
        end;

        if (optSub.Subsys[26] = '1') and (optSub.Subsys[25] = '1') then
        begin
          Views_Fun(ChkBankName.Items[i], -1, 'Script\Fun_Views_Salary.sql');
          if var_SQL_ProductVersion > 12 then
            Views_Fun(ChkBankName.Items[i], -1,
              'Script\Fun_Views_SalaryUP2014.sql');
          Views_Fun(ChkBankName.Items[i], -1,
            'Script\TriggersForLogFilePay.sql');
          Views_FunSP;
          Other_Views_Fun;

        end;

        if optSub.Subsys[16] = '1' { SubsysMenu[15].Active }
        then
        begin
          Views_Fun(ChkBankName.Items[i], -1, 'Script\fun_view_Assets.sql');
        end;

        if optSub.Subsys[18] = '1' { SubsysMenu[15].Active Accounting }
        then
        begin
          Views_Fun(ChkBankName.Items[i], -1, 'Script\Fun_view_Accounting.sql');
//          Views_Fun(ChkBankName.Items[i], -1,            'Script\TriggersForLogFileACC.sql');

        end;

        if ((optSub.Subsys[26] = '1') or (optSub.Subsys[25] = '1')) then
          if var_SQL_ProductVersion >= 12 then
          begin
            Views_Fun(ChkBankName.Items[i], -1, 'Script\Above2012.sql');
            Views_Fun(ChkBankName.Items[i], -1, 'Script\Above2012_2.sql');
          end;

        ADOCmdUpDate.CommandText := Format('UPDATE Config SET LastVersion = %s',
          [QuotedStr(LastVertion)]);
        ADOCmdUpDate.Execute;

        if (optSub.Subsys[1] = '1') or (optSub.Subsys[2] = '1') then
          if var_SQL_ProductVersion > 8 then
          begin
            try
              Views_Fun(ChkBankName.Items[i], -1,
                'Script\TriggersForLogFile.sql');
              ADOCmdUpDate.CommandText :=
                'IF NOT EXISTS (SELECT Name FROM sysusers WHERE Name = N''OtherUser'')'
                + ' begin' +
                ' CREATE LOGIN OtherUser WITH PASSWORD=''fararayaneh'', CHECK_POLICY = OFF;'
                + ' CREATE USER OtherUser FROM LOGIN OtherUser;' + ' end' + ' ';
              ADOCmdUpDate.Execute;
            except
              on E: Exception do
            end;
            ADOCmdUpDate.CommandText :=
              'GRANT SELECT ON dbo.WareHouseList TO OtherUser; ' +
              'GRANT SELECT ON dbo.InvoiceList TO OtherUser; ';
            ADOCmdUpDate.Execute;
          end;
        OpenFileName := 'Special' + FcompanyCode.ToString.trim + '.sql';
        if FileExists(OpenFileName) then
          Views_Fun(ChkBankName.Items[i], -2, OpenFileName);

        ChkBankName.Checked[i] := False;
      end;
    end;

    try
      Views_Fun('AuditLog', -1, 'Script\Generals.sql');
    except
      on E: Exception do
    end;

    Beep;
    Warn('انجام شد.', mtConfirmation);

  finally
    pnlBtn.Enabled := True;
  end;

end;

procedure TUpDateBankF.FillCalendar;
begin
  with qryVu_StuffCoding do
    try
      ConnectionString := ADOCmdUpDate.ConnectionString;
      SQL.Text := '';
      SQL.Add('EXEC Tsh.FillCalendar ' + IntToStr(APPBank.Year - 1));
      SQL.Add('EXEC Tsh.FillCalendar ' + IntToStr(APPBank.Year));
      SQL.Add('EXEC Tsh.FillCalendar ' + IntToStr(APPBank.Year + 1));
      ExecSQL;
    except
    end;

end;

procedure TUpDateBankF.Vu_StuffCoding;
begin
  with qryVu_StuffCoding do
    try
      ConnectionString := ADOCmdUpDate.ConnectionString;
      SQL.Text := 'CREATE VIEW dbo.Vu_StuffCoding';
      SQL.Add('AS');
      SQL.Add('SELECT StuffCoding.c_StuffCode, StuffCoding.GroupID, StuffCoding.c_StuffName + ISNULL('' ''+ Units.UnitName ,'''') +');
      SQL.Add('ISNULL('' ''+ StuffCoding.c_StuffTecInfo ,'''') + ISNULL('' ''+ StuffCoding.sd1 ,'''') +');
      SQL.Add('ISNULL('' ''+ StuffCoding.sd2 ,'''') + ISNULL('' ''+ StuffCoding.sd3 ,'''') + ISNULL('' ''+ StuffCoding.sd4 ,'''') AS');
      SQL.Add('c_StuffName');
      SQL.Add('FROM StuffCoding LEFT OUTER JOIN');
      SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode');
      ExecSQL;
    except
    end;

  with qryVu_StuffCoding do
    try
      ConnectionString := ADOCmdUpDate.ConnectionString;
      SQL.Text := 'CREATE VIEW dbo.Vu_SearchStuff';
      SQL.Add('AS');
      SQL.Add('/* فيلدهاي قبل از');
      SQL.Add('HideBefore');
      SQL.Add('به هيچ عنوان کم نشود و بعد از آن دست خود پشتيبان هست که کم و يا زياد شود');
      SQL.Add('اين ويو اگر نباشد در بروز رساني ايجاد مي شود اگر باشد ديگر دست با ساختارش نمي خورد');
      SQL.Add('*/');
      SQL.Add('SELECT Sc.c_StuffCode , State, BlockOutput, Ss.n_StoreID ,StoreKind ,0 HideBefore');
      SQL.Add(',Sc.c_StuffCode [کد کالا], Sc.c_StuffName [شرح کالا], Sc.c_StuffName_L2 StuffName, Sc.c_StuffTecInfo [مشخصات فني],');
      SQL.Add('Sc.Cabinet [طبقه], Sc.Tierced [رديف], Sc.c_KeepPlace [محل نگهداري],');
      SQL.Add('Sc.StuffNote [توضيحات ضروري]');
      SQL.Add('FROM StuffCoding Sc INNER JOIN');
      SQL.Add('StoreStuffs Ss ON Sc.c_StuffCode = Ss.c_StuffCode INNER JOIN');
      SQL.Add('Stores S ON Ss.n_StoreID = S.n_StoreID');
      ExecSQL;
    except
    end;

  with qryVu_StuffCoding do
    try
      ConnectionString := ADOCmdUpDate.ConnectionString;
      SQL.Text := 'CREATE FUNCTION dbo.Fn_SearchStuff12(';
      SQL.Add('@ReciptDate Char(10) =''0001/01/01'' ,');
      SQL.Add('@StoreIDFrom int = 1401 , @StoreIDTo int = 1401 ,');
      SQL.Add('@YearID int = 1401 ,');
      SQL.Add('@ProductModel int = 0 ,@PersonID1D int = 0 , @PersonID1 int = 0 , @PersonID2 int = 0)');
      SQL.Add('RETURNS table AS');
      SQL.Add('return (');
      SQL.Add('/* فيلدهاي قبل از');
      SQL.Add('HideBefore');
      SQL.Add('به هيچ عنوان کم نشود و بعد از آن دست خود پشتيبان هست که کم و يا زياد شود');
      SQL.Add('اين ويو اگر نباشد در بروز رساني ايجاد مي شود اگر باشد ديگر دست با ساختارش نمي خورد');
      SQL.Add('*/');
      SQL.Add('SELECT Sc.c_StuffCode, Sc.State, Sc.BlockOutput, Ss.n_StoreID, S.StoreKind, 0 AS HideBefore');
      SQL.Add(',Sc.c_StuffCode [کد کالا]');
      SQL.Add(', Sc.c_StuffName AS [شرح کالا], Sc.c_StuffName_L2 AS StuffName, Sc.c_StuffTecInfo AS [مشخصات فني],');
      SQL.Add('Sc.Cabinet AS طبقه, Sc.Tierced AS رديف, Sc.c_KeepPlace AS [محل نگهداري], Sc.StuffNote AS [توضيحات ضروري],');
      SQL.Add('Sc.SellPrice1 AS [بهاي فروش]');
      SQL.Add(', Sc.BuyPrice AS [في خريد], ScS.orderPoint AS [نقطه سفارش], Sc.acc_DetaiCode AS کدتفصيلي');
      SQL.Add(', abcd.SUMEntity [موجودي مقدار], abcd.SUMWeight [موجودي وزن], abcd.MaxUnitSellPrice [بالاترين في]');
      SQL.Add('FROM StuffCoding Sc INNER JOIN');
      SQL.Add('StoreStuffs Ss ON Sc.c_StuffCode = Ss.c_StuffCode INNER JOIN');
      SQL.Add('Stores S ON Ss.n_StoreID = S.n_StoreID LEFT OUTER JOIN');
      SQL.Add('(SELECT ReciptItems.StuffCode, MAX((CASE ReciptTypes.EffectType WHEN 2 THEN');
      SQL.Add('ReciptItems.UnitSellPrice ELSE 0 END)) AS MaxUnitSellPrice');
      SQL.Add(', ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity),3) AS SUMEntity');
      SQL.Add(', ROUND(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight), 3)AS SUMWeight');
      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID =');
      SQL.Add('Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN');
      SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
      SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID');

      SQL.Add('LEFT OUTER JOIN StuffCodingStock AS ScS ON SC.c_StuffCode = ScS.StuffCode and  S.n_StoreID = ScS.StoreID');

      SQL.Add('WHERE (Recipts.ReciptDate <= @ReciptDate)');
      SQL.Add('AND (Recipts.StoreID BETWEEN @StoreIDFrom AND @StoreIDTo )');
      SQL.Add('AND (ReciptTypes.EffectType IN (2, 4)) AND (Recipts.ReciptState < 3)');
      SQL.Add('AND (Recipts.YearID = @YearID)');
      SQL.Add('AND (ReciptItems.ProductModel = 0) AND (ReciptTypes.EffectType IN (2, 4))');
      SQL.Add('AND (Stores.StoreKind IN (1, 2)) OR');
      SQL.Add('(Recipts.ReciptDate <= @ReciptDate) AND (Recipts.StoreID BETWEEN @StoreIDFrom AND @StoreIDTo)');
      SQL.Add('AND (ReciptTypes.EffectType IN (2, 4)) AND (Recipts.ReciptState < 3)');
      SQL.Add('AND (Recipts.YearID = @YearID)');
      SQL.Add('AND (ReciptItems.ProductModel = @ProductModel )');
      SQL.Add('AND (Stores.StoreKind IN (1, 2)) AND (Recipts.ReciptType = 12) ');
      SQL.Add('AND (Recipts.ParentReciptID IS NULL)');
      SQL.Add('GROUP BY ReciptItems.StuffCode');
      SQL.Add('HAVING (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) >= 0.0001) OR');
      SQL.Add('(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <= - 0.0001) OR');
      SQL.Add('(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) >= 0.0001) OR');
      SQL.Add('(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) <= - 0.0001)');
      SQL.Add(') AS abcd ON Sc.c_StuffCode = abcd.StuffCode');
      SQL.Add('WHERE (Ss.n_StoreID BETWEEN @StoreIDFrom AND @StoreIDTo) AND (Sc.BlockOutput = 0) AND (Sc.State = 0)');
      SQL.Add(')');
      ExecSQL;
    except
    end;

end;

procedure TUpDateBankF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  ChkBankName.ItemIndex := -1;
  if get_response('قبل از پاكسازي تمامي كاربران از برنامه خارج شوند.!!!!!!' +
    #13#10 + 'آيا ادامه مي دهيد؟') = mrYes then
    with DMF.qryTmpTmp do
    begin
      SQL.Text := 'DELETE FROM Util.CodesInProcess';
      BigMessage(IntToStr(ExecSQL) + ' مورد انجام شد.', 1);
    end;

end;

function TUpDateBankF.makeUPDATE(TblName, fldName: string): string;
begin
  Result := 'UPDATE %s SET %s = 0 WHERE (%s = ''.'')OR(%s IS NULL)OR(LTRIM(%s) = '''')';
  Result := Format(Result, [TblName, fldName, fldName, fldName, fldName])
end;

procedure TUpDateBankF.BitBtn3Click(Sender: TObject);
var
  i: Byte;
  qry: TADOQuery;
begin
  inherited;
  pb2.Max := ChkBankName.Items.Count + 1;
  pb2.Min := 1;
  pb2.Step := 1;
  BigMessage('لطفا صبر کنید.....', 0);
  qry := TADOQuery.Create(Self);
  With qry do
    try
      for i := 0 to ChkBankName.Items.Count - 1 do
      begin
        if ChkBankName.Checked[i] then
        begin
          ConnectionString := GetConStr(ChkBankName.Items[i], 0, nil, '',
            FDConnection1);
          CommandTimeout := 0;
          SQL.Text :=
            'UPDATE ReciptItems SET InputWeight = ROUND(InputWeight, 3), OutputWeight = ROUND(OutputWeight, 3)'
            + 'WHERE (InputWeight <> ROUND(InputWeight, 3))or(OutputWeight <> ROUND(OutputWeight, 3))';
          SQL.Add('UPDATE Recipts SET ExpireDate = '''' WHERE (ExpireDate = ''9999/99/99'')');

          SQL.Add(makeUPDATE('FormItems', 'DetailCode'));
          SQL.Add(makeUPDATE('FormItems', 'CTopicCode'));
          SQL.Add(makeUPDATE('FormItems', 'CTopicCode2'));

          SQL.Add(makeUPDATE('Forms', 'DetailCode'));
          SQL.Add(makeUPDATE('Forms', 'CTopicCode'));
          SQL.Add(makeUPDATE('Forms', 'CTopicCode2'));

          SQL.Add(makeUPDATE('LookUps', 'acc_DetailCode'));
          SQL.Add(makeUPDATE('LookUps', 'acc_CTopicCode'));
          SQL.Add(makeUPDATE('LookUps', 'acc_CTopicCode2'));
          SQL.Add(makeUPDATE('Customers', 'acc_DetailCode'));

          SQL.Add(makeUPDATE('Customers', 'acc_CTopicCode'));
          SQL.Add(makeUPDATE('Customers', 'acc_CTopicCode2'));
          SQL.Add(makeUPDATE('Customers', 'acc_CTopicCode3'));

          ExecSQL;
        end;
        lbl2.Caption := IntToStr(i);
        pb2.StepIt;
        Application.ProcessMessages;
      end;

      // DMF.adcFaraSystem.Execute
      // ('ALTER TABLE FaraSystems.dbo.OperatorItems ALTER COLUMN menus VarChar (4000)');
    finally
      Free;
      Warn('انجام شد.', mtConfirmation);
      CloseMessage;
    end;

end;

procedure TUpDateBankF.BitBtn4Click(Sender: TObject);
var
  i, j: Integer;
  ts, tsTemp: TStringList;
begin
  inherited;
  ts := TStringList.Create;
  tsTemp := TStringList.Create;
  ts.Text := '';
  tsTemp.Text := '';
  if get_response
    ('توجه کنید این دستور فقط برای تبدیل بانک خرید و فروش یا bpms به بانک یکپارچه هست '
    + 'آیا ادامه می دهید؟') = mrYes then
    try
      pnlBtn.Enabled := False;
      pb2.Max := ChkBankName.Items.Count + 1;
      pb2.Position := 0;
      pb2.Min := 1;
      pb2.Step := 1;
      for i := 0 to ChkBankName.Items.Count - 1 do
      begin
        if ChkBankName.Checked[i] then
        begin
          pb2.StepIt;
          Application.ProcessMessages;
          ADOCmdUpDate.ConnectionString := GetConStr(ChkBankName.Items[i], 0,
            nil, '', FDConnection1);
          lbl1.Caption := IntToStr(i - 1) + '<>' + ChkBankName.Items[i];
          ChkBankName.ItemIndex := i;
          with ADOCmdUpDate do
          begin
            try
              DelDir(__TheTempDIR + 'Script');

//              ts.LoadFromFile(UnzipScript('Script\UpdateBankFara1.sql'));
//              Label1.Text := ts.Strings[0].trim;
//              CommandText := ts.Text;
//              Execute;

              CommandText := 'EXEC sp_addrole @RoleName = N''Acc''';
              try
                Execute;
              except
              end;

              CommandText := 'EXEC sp_addrole @RoleName = N''Assets''';
              try
                Execute;
              except
              end;

              CommandText := 'EXEC sp_addrole @RoleName = N''Pay''';
              try
                Execute;
              except
              end;

              ts.LoadFromFile(UnzipScript('Script\UpdateBankFaraAcc.sql'));
              Label1.Text := ts.Strings[0].trim;
              ExecuteSQLScriptWithGO(ADOCmdUpDate.ConnectionString,ts.Text);
//              for j := 0 to ts.Count - 1 do
//              begin
//                if ts.Strings[j] = 'GO' then
//                  ts.Strings[j] := '  ';
//                if pos('QUOTED_IDENTIFIER', ts.Strings[j]) <> 0 then
//                  ts.Strings[j] := '  ';
//                if pos('SET ANSI_NULLS', ts.Strings[j]) <> 0 then
//                  ts.Strings[j] := '  ';
//                if pos('/******', ts.Strings[j]) <> 0 then
//                  ts.Strings[j] := '  ';
//              end;
//
//              with ADOCmdUpDate do
//              begin
//                CommandText := ts.Text;
//                ts.SaveToFile('d:\UpdateBankFaraAcc.sql');
//                Execute;
//              end;

              ts.LoadFromFile(UnzipScript('Script\UpdateBankFaraPay.sql'));
              Label1.Text := ts.Strings[0].trim;
              ExecuteSQLScriptWithGO(ADOCmdUpDate.ConnectionString,ts.Text);
//              for j := 0 to ts.Count - 1 do
//              begin
//                if ts.Strings[j] = 'GO' then
//                  ts.Strings[j] := '  ';
//                if pos('QUOTED_IDENTIFIER', ts.Strings[j]) <> 0 then
//                  ts.Strings[j] := '  ';
//                if pos('SET ANSI_NULLS', ts.Strings[j]) <> 0 then
//                  ts.Strings[j] := '  ';
//                if pos('/******', ts.Strings[j]) <> 0 then
//                  ts.Strings[j] := '  ';
//              end;
//
//              with ADOCmdUpDate do
//              begin
//                CommandText := ts.Text;
//                ts.SaveToFile('d:\UpdateBankFaraPay.sql');
//                Execute;
//              end;

              ts.LoadFromFile(UnzipScript('Script\UpdateBankFaraAssets.sql'));
              Label1.Text := ts.Strings[0].trim;
              ExecuteSQLScriptWithGO(ADOCmdUpDate.ConnectionString,ts.Text);
//              for j := 0 to ts.Count - 1 do
//              begin
//                if ts.Strings[j] = 'GO' then
//                  ts.Strings[j] := '  ';
//                if pos('QUOTED_IDENTIFIER', ts.Strings[j]) <> 0 then
//                  ts.Strings[j] := '  ';
//                if pos('SET ANSI_NULLS', ts.Strings[j]) <> 0 then
//                  ts.Strings[j] := '  ';
//                if pos('/******', ts.Strings[j]) <> 0 then
//                  ts.Strings[j] := '  ';
//              end;
//
//              with ADOCmdUpDate do
//              begin
//                CommandText := ts.Text;
//                ts.SaveToFile('d:\UpdateBankFaraAssets.sql');
//                Execute;
//              end;
//
              lbl2.Caption := IntToStr(j);
              pb1.StepIt;
              Application.ProcessMessages;

            finally
              ts.Free;
              tsTemp.Free;
            end; // try
          end; // with

        end;
      end;
      Beep;
      Warn('انجام شد.', mtInformation);

    finally
      pnlBtn.Enabled := True;
    end;
end;

procedure TUpDateBankF.BitBtn6Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    pnlBtn.Enabled := False;
    pb2.Max := ChkBankName.Items.Count + 1;
    pb2.Position := 0;
    pb2.Min := 1;
    pb2.Step := 1;
    for i := 0 to ChkBankName.Items.Count - 1 do
    begin
      if ChkBankName.Checked[i] then
      begin
        pb2.StepIt;
        Application.ProcessMessages;
        ADOCmdUpDate.ConnectionString := GetConStr(ChkBankName.Items[i], 0, nil,
          '', FDConnection1);
        lbl1.Caption := IntToStr(i - 1) + '<>' + ChkBankName.Items[i];
        ChkBankName.ItemIndex := i;
        Views_Fun(ChkBankName.Items[i], -1, 'Script\Vu_Forms_Dynamic.sql');
      end;
    end;
    Beep;
    Warn('انجام شد.', mtInformation);

  finally
    pnlBtn.Enabled := True;
  end;

end;

procedure TUpDateBankF.BitBtn7Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if not FileExists(pathManufactory) then
  begin
    Warn('فايل ليست كدهاي شغل بيمه به نام ' + pathManufactory +
      '  پيدا نشد.!‏');
    Exit;
  end;

  try
    pnlBtn.Enabled := False;
    pb2.Max := ChkBankName.Items.Count + 1;
    pb2.Position := 0;
    pb2.Min := 1;
    pb2.Step := 1;
    for i := 0 to ChkBankName.Items.Count - 1 do
    begin
      if ChkBankName.Checked[i] then
      begin
        pb2.StepIt;
        Application.ProcessMessages;
        ADOCmdUpDate.ConnectionString := GetConStr(ChkBankName.Items[i], 0, nil,
          '', FDConnection1);
        lbl1.Caption := IntToStr(i - 1) + '<>' + ChkBankName.Items[i];
        ChkBankName.ItemIndex := i;
        TransferTable;
      end;
    end;
    Beep;
    Warn('انجام شد.', mtInformation);
  finally
    pnlBtn.Enabled := True;
  end;

end;

procedure TUpDateBankF.TransferTable;
var
  AccessConn: TADOConnection;
  AccessQuery: TADOQuery;
  SQLQuery: TADOQuery;
  TableName: string;
begin
  TableName := 'Tab_Job'; // نام جدول خود را جایگزین کنید

  AccessConn := TADOConnection.Create(nil);
  AccessQuery := TADOQuery.Create(nil);
  SQLQuery := TADOQuery.Create(nil);

  try
    AccessConn.ConnectionString :=
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + pathManufactory +
      ';Persist Security Info=False;';

    AccessConn.LoginPrompt := False;
    AccessConn.Open;

    SQLQuery.ConnectionString := ADOCmdUpDate.ConnectionString;
    SQLQuery.SQL.Text := 'IF OBJECT_ID(''' + TableName +
      ''') IS NOT NULL DROP TABLE ' + TableName;
    SQLQuery.ExecSQL;

    SQLQuery.SQL.Text := 'CREATE TABLE dbo.' + TableName + '(' +
      'Job_Code     char(6) COLLATE Arabic_CI_AS NULL,' +
      'Job_Desc varchar(150) COLLATE Arabic_CI_AS NULL' + ') ON [PRIMARY]';
    SQLQuery.ExecSQL;

    AccessQuery.Connection := AccessConn;
    AccessQuery.SQL.Text := 'SELECT * FROM ' + TableName;
    AccessQuery.Open;
    pb1.Max := AccessQuery.RecordCount;
    pb1.Position := 0;
    pb1.Min := 1;
    pb1.Step := 1;

    SQLQuery.SQL.Text := 'INSERT INTO ' + TableName +
      ' VALUES (:Job_Code, :Job_Desc);';

    while not AccessQuery.eof do
    begin
      pb1.StepIt;
      // Application.ProcessMessages;
      SQLQuery.Parameters.ParamByName('Job_Code').Value :=
        AccessQuery.fieldbyname('Job_Code').Value;
      SQLQuery.Parameters.ParamByName('Job_Desc').Value :=
        AccessQuery.fieldbyname('Job_Desc').Value;
      SQLQuery.ExecSQL;
      AccessQuery.Next;
    end;
  finally
    AccessQuery.close;
    SQLQuery.close;
    AccessConn.close;
    AccessConn.Free;
    AccessQuery.Free;
    SQLQuery.Free;
  end;
end;

procedure TUpDateBankF.All1Click(Sender: TObject);
var
  ts, tsTemp: TStrings;
  i: Integer;
begin
  inherited;
  ts := TStringList.Create;
  tsTemp := TStringList.Create;
  ts.LoadFromFile(__ConfigINI);
  tsTemp.Clear;
  for i := 0 to ts.Count - 1 do
  begin
    if (pos('_DefaultIndex_', ts.Strings[i]) = 0) then
      if (pos('_LastSearched_', ts.Strings[i]) = 0) then
        if (pos(' Like ', ts.Strings[i]) = 0) then
          tsTemp.Add(ts.Strings[i]);
  end;
  tsTemp.SaveToFile(__ConfigINI);
  ts.Free;
  tsTemp.Free;
  DeleteFile(__AppData + 'Panel5DBGrid11');

  if get_response('آیا برای اصلاح جستجوی ی و ک مطئن هستید عملیات زمان بر هست') = mrYes
  then
    try
      pnlBtn.Enabled := False;
      pb2.Max := ChkBankName.Items.Count + 1;
      pb2.Position := 0;
      pb2.Min := 1;
      pb2.Step := 1;
      for i := 0 to ChkBankName.Items.Count - 1 do
      begin
        if ChkBankName.Checked[i] then
        begin
          pb2.StepIt;
          Application.ProcessMessages;
          ADOCmdUpDate.ConnectionString := GetConStr(ChkBankName.Items[i], 0,
            nil, '', FDConnection1);
          lbl1.Caption := IntToStr(i - 1) + '<>' + ChkBankName.Items[i];
          ChkBankName.ItemIndex := i;
          Views_Fun(ChkBankName.Items[i], -1, (Sender as TMenuItem)
            .Hint, False);
          ChkBankName.Checked[i] := False;
        end;
      end;
      Beep;
      Warn('انجام شد.', mtConfirmation);

    finally
      pnlBtn.Enabled := True;
    end;

end;

procedure TUpDateBankF.BtnClearDefaultIndexClick(Sender: TObject);
begin
  inherited;
  popFarsi.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
end;

procedure TUpDateBankF.ChkBankNameDblClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to ChkBankName.Items.Count - 1 do
    ChkBankName.Checked[i] := not ChkBankName.Checked[i]
end;

function TUpDateBankF.Go_Progress_Bar(s, Bank_Name: String): String;
var
  ts: TStrings;
begin
  if CtrlDown then
  begin
    ts := TStringList.Create;
    ts.Text := ADOCmdUpDate.CommandText;
    ts.SaveToFile('d:\UpDate' + s + '.sql');
    ts.Free;
  end;
  ADOCmdUpDate.Execute;
  lbl2.Caption := s;
  pb1.StepIt;
  Application.ProcessMessages;
  Result := ' use [' + Bank_Name + ']';
end;

procedure TUpDateBankF.Cmd_UpDateOfFile(Bank_Name: String);
var
  i: Smallint;
  sd_captions: String;
  ts: TStrings;
begin
  ts := nil;
  sd_captions := EmptyStr;
  for i := 1 to 9 do
  begin
    sd_captions := sd_captions +
      ' if ( COLUMNPROPERTY( OBJECT_ID(''Config''),''sd' + IntToStr(i) +
      '_caption'',''IsRowGuidCol'')is  null ) ' + ' ALTER TABLE Config ADD sd' +
      IntToStr(i) + '_caption varchar(20)  ' +

      ' if ( COLUMNPROPERTY( OBJECT_ID(''Stuffcoding''),''sd' + IntToStr(i) +
      ''',''IsRowGuidCol'')is  null ) ' + ' ALTER TABLE Stuffcoding ADD sd' +
      IntToStr(i) + ' varchar(64)  ';
  end;
  for i := 1 to 15 do
  begin
    sd_captions := sd_captions +
      ' if ( COLUMNPROPERTY( OBJECT_ID(''Stuffcoding''),''st' + IntToStr(i) +
      ''',''IsRowGuidCol'')is  null ) ' + ' ALTER TABLE Stuffcoding ADD st' +
      IntToStr(i) + ' int  ';
  end;

  DROPcolumnCorrelateCoReciptNumberKind(Bank_Name);
  DROP_CONSTRAINT(Bank_Name);

  with ADOCmdUpDate do
  begin
    try
      ts := TStringList.Create;
      DelDir(__TheTempDIR + 'Script');
      ts.LoadFromFile(UnzipScript('Script\UpdateBank.sql'));
      CommandText := ' use  [' + Bank_Name + ']' + ts.Text + sd_captions;
      if CtrlDown then
      begin
        ts.SaveToFile('d:\UpDate.sql');
      end;
      Execute;

      ts.LoadFromFile(UnzipScript('Script\UpdateBankFaraSystems.sql'));
      CommandText := ' use  FaraSystems ' + #13#10 +
        '  if ( COLUMNPROPERTY( OBJECT_ID(''Operators''),''LevelID'',''IsRowGuidCol'')is  null ) '
        + ' ALTER TABLE Operators ADD LevelID Tinyint NOT NULL  DEFAULT (8) '
        + ts.Text +

        ' use   [' + APPBank.Name + ']';

      Execute;
    finally
      ts.Free;
    end; // try
  end; // with

end;

procedure TUpDateBankF.Cmd_UpDateOfFileFaraS(Bank_Name: String);
var
  ts: TStrings;
begin
  ts := nil;
  with ADOCmdUpDate do
  begin
    try
      ts := TStringList.Create;
      ts.LoadFromFile(UnzipScript('Script\UpdateBankFaraSystems.sql'));
      CommandText := ' use  FaraSystems ' + #13#10 +
        '  if ( COLUMNPROPERTY( OBJECT_ID(''Operators''),''LevelID'',''IsRowGuidCol'')is  null ) '
        + ' ALTER TABLE Operators ADD LevelID Tinyint NOT NULL  DEFAULT (8) '
        + ts.Text +

        ' use   [' + APPBank.Name + ']';

      Execute;
    finally
      ts.Free;
    end; // try
  end; // with

end;

procedure TUpDateBankF.DROPcolumnCorrelateCoReciptNumberKind;
var
  s: string;
begin
  with ADOCmdUpDate do
  begin
    try
      try
        CommandText := ' use  [' + Bank_Name + ']' +
          ' if not( COLUMNPROPERTY( OBJECT_ID(''ReciptTypes''),''CorrelateCoReciptNumberKind'',''IsRowGuidCol'')is  null )   '
          + ' ALTER TABLE ReciptTypes DROP column CorrelateCoReciptNumberKind  ';
        Execute;
      except
        on E: Exception do
        begin
          s := E.Message;
          s := StringReplace(s, 'The object ', '', []);
          s := StringReplace(s,
            ' is dependent on column ''CorrelateCoReciptNumberKind', '', []);

          s := StringReplace(s, '''', '', [rfReplaceAll]);
          CommandText := ' use  [' + Bank_Name + ']' +
            ' ALTER TABLE ReciptTypes DROP CONSTRAINT ' + s +
            ' ALTER TABLE ReciptTypes DROP column CorrelateCoReciptNumberKind  ';
          Execute;
        end;
      end;

    finally
    end; // try
  end; // with

end;

procedure TUpDateBankF.DROP_CONSTRAINT;
begin
  with ADOCmdUpDate do
  begin
    try
      try
        CommandText := ' use  [' + Bank_Name + ']' +
          ' if exists (select * from sysobjects where id = object_id(N''DROP_CONSTRAINT'') and OBJECTPROPERTY(id, N''IsProcedure'') = 1)'
          + ' drop procedure DROP_CONSTRAINT';
        Execute;

        CommandText := ' CREATE PROCEDURE DROP_CONSTRAINT ' +
          ' ( @match_expression nvarchar(50) ,@TABLE nvarchar(50))' + ' AS' +
          ' BEGIN' + ' SET NOCOUNT ON;' + ' DECLARE @S SYSNAME' +
          ' DECLARE @SQL NVARCHAR(500)' + ' SET @S=''''' + ' SET @SQL=''''' +
          ' WHILE @S is not NULL' + ' BEGIN' +
          ' SELECT @S=NAME FROM sysobjects WHERE NAME like @match_expression and xtype=''D'''
          + ' IF @S<>'''' or @S<>NULL' + ' BEGIN' +
          ' SET @SQL=''ALTER TABLE ''+@TABLE+'' DROP CONSTRAINT ''+@S' +
          ' exec(@SQL)' + ' SET @S=''''' + ' END' + ' ELSE' + ' SET	@S=NULL' +
          ' END' + ' END';
        Execute;

      except
        on E: Exception do
        begin
          add2log(E.Message);
          Warn(E.Message);
        end;
      end;

    finally
    end; // try
  end; // with

end;

procedure TUpDateBankF.Cmd_UpDate2OfFile(Bank_Name: String);
var
  ts: TStrings;
  i, Fromi: Integer;
  Vertion: string;
begin
  ts := nil;
  with ADOCmdUpDate do
  begin
    try
      pb1.Max := 35;
      pb1.Min := 1;
      pb1.Position := 0;
      pb1.Step := 1;
      lbl1.Caption := Bank_Name;
      ts := TStringList.Create;
      DelDir(__TheTempDIR + 'Script');
      Fromi := 1;

      if chkVertion.Checked then
        Vertion := '0'
      else
        Vertion := trim(DMF.ReadBankConfig('LastVersion', LastVertion,
          ADOCmdUpDate.ConnectionString));

      if (optSub.Subsys[1] = '0') and (optSub.Subsys[2] = '0') and
        (optSub.Subsys[3] = '0') then
        Fromi := 24;

      if (Vertion >= '1.1.0.008') then
        Fromi := 29;

      for i := Fromi to pb1.Max - 1 do
      begin
        if ((i in [23, 30]) and (optSub.Subsys[16] <> '1')) then
          Continue;

        if ((i in [24, 25, 26, 27, 28]) and ( { (optSub.SubSys[23] <> '1') or }
          (optSub.Subsys[24] <> '1') or (optSub.Subsys[25] <> '1') or
          (optSub.Subsys[26] <> '1'))) then
          Continue;

        if ((i in [29]) and (optSub.Subsys[1] = '0') and
          (optSub.Subsys[2] = '0') and (optSub.Subsys[3] = '0')) then
          Continue;

        if ((i in [31, 32]) and (optSub.Subsys[25] = '0')) then
          Continue;

        if ((i in [33, 34]) and (optSub.Subsys[18] = '0')) then
          Continue;

        Label1.Text := 'Script\UpdateBank' + IntToStr(i) + '.sql';
        ts.LoadFromFile(UnzipScript(Label1.Text));
        CommandText := ' use  [' + Bank_Name + ']' + ts.Text;
        Go_Progress_Bar(IntToStr(i), Bank_Name);
      end;
    finally
      ts.Free;
    end;
  end;
end;

procedure TUpDateBankF.UpDatePurchaseEffect(Bank_Name: String);
var
  StuffCode: String;
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  With qry do
    try
      ConnectionString := ADOCmdUpDate.ConnectionString;
      close;
      SQL.Text := 'SELECT TOP 0 * FROM PurchaseEffect';
      Open;
      if FindField('StuffCode') <> nil then
        Exit;
      close;
      SQL.Text := 'SELECT TOP 1 ReciptItems.StuffCode';
      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND');
      SQL.Add('ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID');
      SQL.Add('WHERE (Recipts.ReciptType = 8)');
      Open;
      StuffCode := fieldbyname('StuffCode').AsString;
    finally
      Free;
    end;
  With TADOCommand.Create(nil) do
    try
      ConnectionString := ADOCmdUpDate.ConnectionString;
      if StuffCode <> EmptyStr then
        CommandText :=
          ' ALTER TABLE PurchaseEffect ADD StuffCode Bigint NOT NULL DEFAULT ('
          + StuffCode + ')' +
          ' ALTER TABLE PurchaseEffect ADD CONSTRAINT FK_PurchaseEffect_StuffCoding '
          + ' FOREIGN KEY (StuffCode)REFERENCES StuffCoding (c_StuffCode)'
      else
        CommandText := ' ALTER TABLE PurchaseEffect ADD StuffCode Bigint  ' +
        // NOT NULL
          ' ALTER TABLE PurchaseEffect ADD CONSTRAINT FK_PurchaseEffect_StuffCoding '
          + ' FOREIGN KEY (StuffCode)REFERENCES StuffCoding (c_StuffCode)';

      Execute;
    finally
      Free;
    end;

end;

procedure TUpDateBankF.Views_FunSP;
begin
  With TADOStoredProc.Create(Self) do
  begin
    ConnectionString := ADOCmdUpDate.ConnectionString;
    ProcedureName := 'Pay.GetInterdicts4Items;1';
    ExecProc;
    ProcedureName := 'Pay.GetFunctionsItems_FA';
    ExecProc;
    ProcedureName := 'Pay.GetPersonelDecExtPrice';
    ExecProc;
    Free;
  end;

end;

procedure TUpDateBankF.Other_Views_Fun;
begin
  With ADOCmdUpDate do
  begin
    CommandText :=
      'IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N''Pay.PersonelWages'') AND OBJECTPROPERTY(id, N''IsView'') = 1)'
      + ' DROP VIEW Pay.PersonelWages';
    Execute;

    CommandText := #13 + 'CREATE VIEW Pay.PersonelWages' + ' AS' + ' ' + #13 +
      ' SELECT * FROM (SELECT abs(Substring (enddate,6,2)) AS Mounth,PersonelNO,null AS ArchiveID,(select top 1 FormInfoID from'
      + #13 + ' formsinfo where formtype = 47 and infoid = 1 ) as SalaryID ,' +
      #13 + ' (select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = 47 and infoid = 1 ) as InfoName,'
      + #13 + ' EmployeeAmount as Price ,' + #13 +
      ' (select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = 47 and infoid = 1 ) as InfoName2,'
      + #13 + ' 0 as calculatekind	,0 as SalaryIDMounthRetard' + #13 +
      ' FROM Pay.PersonelDecExt' + #13 +
      ' WHERE	(FormInfoID = (select top 1 FormInfoID FROM Pay.FormsInfo where formtype = 59) )'
      + #13 + ' union all' + #13 +
      ' SELECT abs(Substring (enddate,6,2)) AS Mounth,PersonelNO,null AS ArchiveID,(select top 1 FormInfoID FROM Pay.FormsInfo where'
      + #13 + ' formtype = 47 and infoid = 2 ) as SalaryID ,' + #13 +
      ' (select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = 47 and infoid = 2 ) as InfoName_L1,'
      + #13 + ' EmployerAmount as SumPrice ,' + #13 +
      ' (select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = 47 and infoid = 2 ) as InfoName_L2,'
      + #13 + ' 0 as calculatekind	,0 as SalaryIDMounthRetard' + #13 +
      ' FROM Pay.PersonelDecExt' + #13 +
      ' WHERE	(FormInfoID = (select top 1 FormInfoID FROM Pay.FormsInfo where formtype = 59) )'
      + #13 + ' ' + ' UNION ALL' + ' ' + #13 +
      ' SELECT P.FirstMounth,P.PersonelNo,NULL AS ArchiveID, P.FormInfoID AS SalaryID, F.InfoName_L1'
      + #13 + ' , SUM(P.EmployeeAmount) AS SumPrice, F.InfoName_L2, 0 AS calculatekind'
      + #13 + ' , 0 AS SalaryIDMounthRetard' +
      ' FROM Pay.PersonelDecExt AS P INNER JOIN' + #13 +
      ' Pay.FormsInfo AS F ON P.FormInfoID = F.FormInfoID' + #13 +
      ' WHERE (F.FormType = 111)' + #13 +
      ' GROUP BY P.FirstMounth,P.PersonelNo,P.FormInfoID, F.InfoName_L1, F.InfoName_L2'
      + #13 + ' ' + ' ' + ' union all' + ' ' + ' ' + #13 +
      ' SELECT C.Mounth,C.PersonelNO,C.ArchiveID, C.SalaryID, F.InfoName_L1 + CASE WHEN C.Mounth <> isnull(MounthRetard,0)'
      + #13 + ' THEN isnull(''('' + ''معوقه ماه '' + LTRIM(STR(MounthRetard))+ '')'' ,'''') ELSE'
      + #13 + ' ' + ' '''' END AS InfoName_L1 ,' + #13 +
      ' SUM(C.Price) AS SumPrice, F.InfoName_L2,0 as calculatekind,' + #13 +
      ' cast(C.SalaryID AS bigint) * 10000 + cast(C.MounthRetard AS bigint) AS SalaryIDMounthRetard'
      + #13 + ' ' + ' FROM Pay.FixedCalculated AS C LEFT OUTER JOIN' + #13 +
      ' Pay.FormsInfo AS F ON C.SalaryID = F.FormInfoID' + #13 +
      'JOIN FinalArchive fa on fa.ArchiveID=c.ArchiveID and fa.Mounth = c.Mounth'
      + #13 + ' WHERE (C.ShowListKind = 1)' + ' ' + ' AND(C.Price<>0)' + #13 +
      ' GROUP BY C.Mounth,C.PersonelNO,C.ArchiveID,C.SalaryID, F.InfoName_L1 , F.InfoName_L2, C.MounthRetard,C.Mounth'
      + ' ' + ' ' + ' )abcd';
    if optP.ChkHideSalaryID4ListSalary = 1 then
      CommandText := CommandText + ' WHERE SalaryID NOT IN (0,' +
        optP.HideSalaryID4ListSalary + ')';
    Execute;

    CommandText :=
      'IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N''Pay.PersonelDecs'') AND OBJECTPROPERTY(id, N''IsView'') = 1)'
      + #13 + ' DROP VIEW Pay.PersonelDecs';
    Execute;

    CommandText := 'CREATE VIEW Pay.PersonelDecs' + ' AS' + #13 +
      ' SELECT * FROM (SELECT C.Mounth,C.PersonelNO,C.ArchiveID,C.FunctionID,C.SalaryID,'
      + #13 + ' CASE WHEN ShowlistKind=11 THEN ''ماليات'' ELSE Pay.FormsInfo.InfoName_L1 END AS InfoName,'
      + #13 + ' SUM(C.Price) AS Price,SUM(C.Price) AS LoanRemain' + #13 +
      ' , Pay.FormsInfo.InfoName_L2 AS InfoName2 , calculatekind ,0 as SalaryIDMounthRetard'
      + #13 + ' FROM Pay.FixedCalculated c LEFT OUTER JOIN' + #13 +
      ' Pay.FormsInfo ON C.SalaryID = Pay.FormsInfo.FormInfoID' + #13 +
      ' join Pay.FinalArchive f on f.ArchiveID=c.ArchiveID and f.Mounth = c.Mounth'
      + #13 + ' WHERE ((C.ShowListKind = 2) OR(C.ShowListKind = 11)) and (bedbes=2)'
      + #13 + ' ' +
      ' GROUP BY C.Mounth,C.PersonelNO,C.ArchiveID,C.FunctionID,C.SalaryID,Pay.FormsInfo.InfoName_L1, ShowlistKind,'
      + #13 + ' Pay.FormsInfo.InfoName_L2 , C.MounthRetard , calculatekind' +
      #13 + ' UNION ALL' + #13 +
      ' SELECT abs(Substring (enddate,6,2)) AS Mounth ,PersonelNo,null as ArchiveID , 0 as FunctionID,(select top 1 FormInfoID FROM Pay.FormsInfo'
      + #13 + ' where formtype = 47 and infoid = 1 ) as SalaryID ,' + #13 +
      ' ''ماليات ''+(select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = 47 and infoid = 1 ) as InfoName_L1,'
      + #13 + ' PaymentLoan as SumPrice ,0 as LoanRemain ,' + #13 +
      ' ''ماليات ''+(select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = 47 and infoid = 1 ) as InfoName_L2,'
      + #13 + ' 0 as calculatekind	,0 as SalaryIDMounthRetard' + #13 +
      ' FROM Pay.PersonelDecExt' + #13 +
      ' WHERE	(FormInfoID = (select top 1 FormInfoID FROM Pay.FormsInfo where formtype = 59) )'
      + ' )abcd';
    if optP.ChkHideSalaryID4ListSalary = 1 then
      CommandText := CommandText + ' WHERE SalaryID NOT IN (0,' +
        optP.HideSalaryID4ListSalary + ')';
    Execute;

    CommandText :=
      'if exists (select * from sysobjects where id = object_id(N''Pay.FN_PersonelFunctions'') and xtype in (N''FN'', N''IF'', N''TF''))'
      + #13 + ' DROP FUNCTION Pay.FN_PersonelFunctions';
    Execute;

    CommandText := #13 +
      'CREATE FUNCTION Pay.FN_PersonelFunctions ( @Mounth int , @PersonelNo int , @OffTimeInFish int=7 )'
      + #13 + ' RETURNS table AS' + ' RETURN (' + #13 +
      ' SELECT * FROM (SELECT FunctionsItems.SalaryID, FormsInfo.InfoName_L1 AS InfoName, FormsInfo.InfoName_L2, SUM'
      + #13 + ' (FunctionsItems.FDaily) AS FDaily' + #13 +
      ' , ROUND( SUM(FunctionsItems.FHours),2) AS FHours,'' '' AS RemainDayDec'
      + #13 + ' ,CASE WHEN SUM(FunctionsItems.FHours)=0 THEN '''' ELSE LTRIM(STR(FLOOR(SUM(FunctionsItems.FHours)))) + ''@'' + LTRIM'
      + #13 + ' (STR(ROUND(ROUND(SUM(FunctionsItems.FHours)' + #13 +
      ' - FLOOR(SUM(FunctionsItems.FHours)), 2) / 100 * 60, 2) * 100)) END AS FHoursT'
      + #13 + ' ,SUM(FunctionsItems.FDaily) AS FDaily2' +
      ' FROM Pay.Functions INNER JOIN' + #13 +
      ' FunctionsItems ON Functions.FunctionID = FunctionsItems.FunctionID INNER JOIN'
      + #13 + ' Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID'
      + #13 + ' WHERE (Functions.Mounth = @Mounth) AND (Functions.PersonelNo = @PersonelNo )'
      + #13 + ' GROUP BY FunctionsItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoName_L2'
      + #13 + ' HAVING (ROUND(SUM(FunctionsItems.FDaily),0) > 0) OR' + #13 +
      ' (SUM(FunctionsItems.FHours) > 0)' + ' ' + ' UNION ALL' + ' ' + #13 +
      ' SELECT *, RemainDayDec AS FHoursT , 0 AS FDaily2' + ' FROM (' + #13 +
      ' SELECT SalaryID, InfoName_L1, InfoName_L2, ROUND(RemainDay,2) AS RemainDay, 0.0 AS FHours, Pay.RemainDayDec'
      + #13 + ' (RemainDay) AS RemainDayDec' + #13 +
      ' FROM Pay.GETOffTimeInFish(1403,1403 , @Mounth, 0, 99999999, @PersonelNo , @OffTimeInFish )'
      + #13 + ' WHERE(SELECT OffTimeInFish FROM pay.Config)>0' + ' ' + ' )aaaa'
      + #13 + ' )abcd';

    if optP.ChkHideSalaryID4ListSalary = 1 then
      CommandText := CommandText + ' WHERE SalaryID NOT IN (0,' +
        optP.HideSalaryID4ListSalary + ')';

    CommandText := CommandText + ')';
    Execute;

  end;
end;

end.
