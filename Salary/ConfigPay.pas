unit ConfigPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  Encryption, ComCtrls, DB, ADODB, Mask, DBCtrls, StrUtils, FileCtrl,
  frTaxKindCalc, System.Actions, Vcl.CheckLst;

type
  TConfigPayF = class(TTemplate4F)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    qryConfig: TADOQuery;
    qryConfigCompanyName: TStringField;
    qryConfigCompanyDesc: TStringField;
    qryConfigRegisterNumber: TStringField;
    qryConfigAddress: TStringField;
    qryConfigTel1: TStringField;
    qryConfigTel2: TStringField;
    qryConfigFax: TStringField;
    qryConfigEmail: TStringField;
    qryConfigWebSite: TStringField;
    qryConfigBankState: TWordField;
    qryConfigEconomicNumber: TStringField;
    qryConfigPostalCode: TStringField;
    srcConfig: TDataSource;
    Label1: TLabel;
    edtCompanyName: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    qryConfigBudgetBankName: TStringField;
    Label7: TLabel;
    Label10: TLabel;
    qryLanguages: TADOQuery;
    qryLanguagesLanguageID: TWordField;
    qryLanguagesLanguageName: TStringField;
    cmbLanguage1: TDBComboBox;
    cmbLanguage2: TDBComboBox;
    TabSheet4: TTabSheet;
    qryConfigBaseSalary: TBCDField;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    qryConfigLanguage1: TIntegerField;
    qryConfigLanguage2: TIntegerField;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    qryConfigStoreSalaryID: TIntegerField;
    cmbMainMenu: TComboBox;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    qryConfigManagementName_L1: TStringField;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    qryConfigUpperBonus: TBCDField;
    qryConfigBonusTaxExemption: TBCDField;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    qryConfigRecalSalaryLaw: TStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    qryConfigTaxBonusCo: TFloatField;
    qryConfigSpacialWageCode: TIntegerField;
    SpeedButton3: TSpeedButton;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    TabSheet5: TTabSheet;
    qryConfigAccountDBNameOld: TStringField;
    qryConfigTaxKindCalc: TWordField;
    qryConfigActiveSalary: TWordField;
    qryConfigActivePayRoll: TWordField;
    qryConfigActiveMange: TWordField;
    qryConfigActiveSchedule: TWordField;
    qryConfigActiveOrganization: TWordField;
    qryConfigFunctionKind: TIntegerField;
    TabSheet6: TTabSheet;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    dbrgrpTaxKindCalc: TDBRadioGroup;
    TabSheet8: TTabSheet;
    qryConfigTFN: TStringField;
    qryConfigPayMainKind: TIntegerField;
    qryConfigPayPettyKind: TIntegerField;
    qryConfigTIN: TStringField;
    qryConfigSigner1NationalID: TStringField;
    qryConfigSigner1Name: TStringField;
    qryConfigSigner1LastName: TStringField;
    qryConfigSigner1Job: TStringField;
    qryConfigSigner2NationalID: TStringField;
    qryConfigSigner2Name: TStringField;
    qryConfigSigner2LastName: TStringField;
    qryConfigSigner2Job: TStringField;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit26: TDBEdit;
    TabSheet9: TTabSheet;
    Label30: TLabel;
    DBEdit24: TDBEdit;
    Label31: TLabel;
    DBEdit25: TDBEdit;
    Label32: TLabel;
    DBEdit27: TDBEdit;
    Label33: TLabel;
    DBEdit28: TDBEdit;
    CmbPayMainKind: TDBComboBox;
    CmbPayPettyKind: TDBComboBox;
    TabSheet10: TTabSheet;
    Label34: TLabel;
    DBEdit29: TDBEdit;
    Label35: TLabel;
    DBEdit30: TDBEdit;
    Label36: TLabel;
    DBEdit31: TDBEdit;
    Label37: TLabel;
    DBEdit32: TDBEdit;
    qryConfigInterdictItemSumSalary1: TWideStringField;
    qryConfigInterdictItemSumSalary2: TWideStringField;
    Label38: TLabel;
    edtInterdictItemSumSalary1: TDBEdit;
    SpeedButton4: TSpeedButton;
    Label39: TLabel;
    edtInterdictItemSumSalary2: TDBEdit;
    SpeedButton5: TSpeedButton;
    qryConfigInterdictItem4ListSalary: TWideStringField;
    qryConfigHideSalaryID4ListSalary: TWideStringField;
    qryConfigAccountServerName: TWideStringField;
    qryConfigSubDayOfCurrentMonth: TWordField;
    lbl3: TLabel;
    edt1: TDBEdit;
    qryConfigChkHideSalaryID4ListSalary: TWordField;
    qryConfigTaxWithExemptionsTimeSheets: TWordField;
    qryConfigSituationTime: TWordField;
    qryConfigOffTimeInFish: TWordField;
    dbmmoAddress: TDBMemo;
    qryConfigChkStateArchiveEdit: TWordField;
    qryConfigChkGroupInterdicts: TWordField;
    GroupBox3: TGroupBox;
    edtArchiveScan: TDBEdit;
    dbchkScanState: TDBCheckBox;
    qryConfigScanState: TWordField;
    qryConfigArchiveScan: TStringField;
    BtnAutoBackup: TBitBtn;
    qryConfigActiveRangeProject: TWordField;
    ts1: TTabSheet;
    DBRadioGroup2: TDBRadioGroup;
    dbchkFunctionActiveMinutes: TDBCheckBox;
    qryConfigFunctionActiveMinutes: TIntegerField;
    GroupBox5: TGroupBox;
    cmbAccDetailCodeEqualPersonelNo: TDBComboBox;
    qryConfigAccDetailCodeEqualPersonelNo: TIntegerField;
    qryConfigOffTimeControlMessages: TWordField;
    cmbOffTimeControlMessages: TDBComboBox;
    Label43: TLabel;
    TabSheet11: TTabSheet;
    dbchkChkStateArchiveEdit: TDBCheckBox;
    dbchkChkGroupInterdicts: TDBCheckBox;
    dbchkActiveRangeProject: TDBCheckBox;
    cmbSituationTime: TDBComboBox;
    Label42: TLabel;
    qryConfigSysSmsActive: TWordField;
    qryConfigEidiDisplayedSeparatelyOnTaxList: TWordField;
    Label44: TLabel;
    cmbPrvBank: TDBComboBox;
    qryConfigPrvBankName: TStringField;
    qryConfigMinBenefitsInsuranceList: TBCDField;
    TabSheet12: TTabSheet;
    edtMinBenefitsInsuranceList: TDBEdit;
    Label45: TLabel;
    Label46: TLabel;
    edtVacationMounthFrom: TDBEdit;
    edtVacationMounthTo: TDBEdit;
    Label47: TLabel;
    qryConfigVacationMounthFrom: TStringField;
    qryConfigVacationMounthTo: TStringField;
    tsFish: TTabSheet;
    cmbOffTimeInFish: TDBComboBox;
    lbl4: TLabel;
    SpeedButton7: TSpeedButton;
    edtHideSalaryID4ListSalary: TDBEdit;
    Label41: TLabel;
    Label40: TLabel;
    edtInterdictItem4ListSalary: TDBEdit;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    edtDecExtInFishPrint: TDBEdit;
    Label48: TLabel;
    qryConfigDecExtInFishPrint: TWideStringField;
    DBCheckBox2: TDBCheckBox;
    qryConfigIntegrateLoanRemain: TWordField;
    cmbChkHideSalaryID4ListSalary: TDBComboBox;
    Label49: TLabel;
    qryConfigSendDoc2OtherSystems: TIntegerField;
    dbchkSendDoc2OtherSystems: TDBCheckBox;
    qryConfigPonyTaxAble: TWordField;
    qryConfigPersonelNoInInterdictNo: TWordField;
    dbchkPersonelNoInInterdictNo: TDBCheckBox;
    frmTaxKindCalc1: TfrmTaxKindCalc;
    Label51: TLabel;
    qryConfigNumberOffDaysInMonth: TFloatField;
    cmbNumberOffDaysInMonth: TDBComboBox;
    qryConfigBenCode: TIntegerField;
    edtBenCode: TDBEdit;
    Label52: TLabel;
    BitBtn3: TBitBtn;
    cmbActAnnuityInlistSalary: TDBComboBox;
    Label53: TLabel;
    qryConfigActAnnuityInlistSalary: TWordField;
    cmbPonyTaxAble: TDBComboBox;
    Label50: TLabel;
    edtSalaryID4PartMakeBankDSK: TDBEdit;
    Label54: TLabel;
    SpeedButton9: TSpeedButton;
    qryConfigSalaryID4PartMakeBankDSK: TWideStringField;
    dbchkFloatToTimeActive: TDBCheckBox;
    qryConfigFloatToTimeActive: TWordField;
    qryConfigFunctionItemSeparation: TWordField;
    dbchkFunctionItemSeparation: TDBCheckBox;
    ComboBox1: TComboBox;
    Label55: TLabel;
    cmbSysSmsActive: TDBComboBox;
    Label56: TLabel;
    qryConfigUnicNationalID: TWordField;
    cmbUnicNationalID: TDBComboBox;
    Label57: TLabel;
    dbchkSalaryID4PartKind: TDBCheckBox;
    qryConfigSalaryID4PartKind: TWordField;
    cmbEidiDisplayedSeparatelyOnTaxList: TDBComboBox;
    Label24: TLabel;
    dbchkLoginKind: TDBCheckBox;
    qryConfigActRewardInlistSalary: TWordField;
    cmbActRewardInlistSalary: TDBComboBox;
    Label58: TLabel;
    TabSheet13: TTabSheet;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    edtSmtp: TEdit;
    chkSSl: TCheckBox;
    edtPort: TMaskEdit;
    edtMail: TEdit;
    edtPass: TEdit;
    TabSheet14: TTabSheet;
    GroupBox1: TGroupBox;
    Label63: TLabel;
    chklstCustAccDetailCodeEqualCustID: TCheckListBox;
    cmbAccDetailCodeEqualCustID: TDBComboBox;
    qryConfigEid_E_Tax_IncludedInTheTaxList: TWordField;
    qryConfigTaxWithExemptionsFunctionDay: TWordField;
    dbchkTaxWithExemptionsFunctionDay: TDBCheckBox;
    qryConfigFunctionDayDefault: TWordField;
    Label65: TLabel;
    edtFunctionDayDefault: TDBEdit;
    GroupBox2: TGroupBox;
    dbchkTaxWithExemptionsTimeSheets: TDBCheckBox;
    cmbEid_E_Tax_IncludedInTheTaxList: TDBComboBox;
    Label64: TLabel;
    qryConfigClockCard4FieldName: TStringField;
    edtClockCard4FieldName: TDBEdit;
    Label66: TLabel;
    qryConfigDocTypeCode: TIntegerField;
    edtDocTypeCode: TDBEdit;
    Label67: TLabel;
    TabSheet15: TTabSheet;
    qryConfigGovConstAmount: TBCDField;
    qryConfigGovSpouse: TBCDField;
    qryConfigGovChild: TBCDField;
    edtGovConstAmount: TDBEdit;
    edtGovSpouse: TDBEdit;
    edtGovChild: TDBEdit;
    Label71: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    qryConfigInterimInterest: TWordField;
    dbchkInterimInterest: TDBCheckBox;
    CmbDecimalOrMinute: TDBComboBox;
    Label70: TLabel;
    qryConfigDecimalOrMinute: TWordField;
    qryConfigNoPrintSalaryIDs: TWideStringField;
    edtNoPrintSalaryIDs: TDBEdit;
    Label25: TLabel;
    procedure qryConfigAfterInsert(DataSet: TDataSet);
    procedure chkAccClick(Sender: TObject);
    procedure qryConfigAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryConfigLanguage1GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryConfigLanguage1SetText(Sender: TField; const Text: String);
    procedure qryConfigLanguage2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryConfigLanguage2SetText(Sender: TField; const Text: String);
    procedure qryConfigBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtAccPathEnter(Sender: TObject);
    procedure edtAccPathExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure chkAccOLdClick(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure dbchkScanStateClick(Sender: TObject);
    procedure BtnAutoBackupClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TabSheet13Enter(Sender: TObject);
  private
    procedure initCombos;
    { Private declarations }
  public
    procedure enter;
    { Public declarations }
  end;

var
  ConfigPayF: TConfigPayF;

implementation

uses DM, GlobalPro, SalaryFunctions, mmessage, ChooseItem,
  searchCode_ADO, SearchComponents, FaraConsts,FormFunctions;

{$R *.dfm}

procedure TConfigPayF.initCombos;
begin

  edtPort.Text := inttostr(UserMail.Port);
  edtSmtp.Text := UserMail.Smtp;
  edtMail.Text := UserMail.UserName;
  edtPass.Text := UserMail.pass;
  chkSSl.Checked := UserMail.SSl;

  cmbLanguage1.Clear;
  cmbLanguage2.Clear;
  with qryLanguages do
  begin
    Active := False;
    Active := True;
    while not eof do
    begin
      cmbLanguage1.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      cmbLanguage2.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    // active:=False;
  end; // with

  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT Sid, BankName FROM FaraSystems.dbo.Sections  ' +
      'WHERE SysID=' + inttostr(25);
    Active := True;
    while not eof do
    begin
      cmbPrvBank.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure TConfigPayF.qryConfigAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TConfigPayF.enter;
begin
  ConfigPayF := TConfigPayF.Create(Application);
  with ConfigPayF do
  begin
    try
      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TConfigPayF.chkAccClick(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
end;

procedure TConfigPayF.qryConfigAfterPost(DataSet: TDataSet);
begin
  inherited;
  SaveConfig(APPID, 'Smtp', edtSmtp.Text);
  SaveConfig(APPID, 'Email', edtMail.Text);
  SaveConfig(APPID, 'Port', trim(edtPort.Text));
  SaveConfig(APPID, 'Pass', Encrypt(edtPass.Text, EncryptCode));
  SaveConfig(APPID, 'SSl', BoolToStr(chkSSl.Checked));
  // SaveConfig(APPID,'MainMenu',cmbMainMenu.Text);
  BigMessage('ثبت شد.', 1);
  ReadAllOption;
  frmTaxKindCalc1.init
end;

procedure TConfigPayF.FormCreate(Sender: TObject);
begin
  inherited;
  dmf.qryConfig.Close;
  initCombos;
  qryConfig.Active := True;

  TabSheet2.TabVisible := User.PowerUser;
  edtCompanyName.Visible := User.PowerUser;
  Label1.Visible := User.PowerUser;
  // cmbMainMenu.Text:=ReadConfig(APPID,'MainMenu','MainMenuTogether');
end;

procedure TConfigPayF.qryConfigLanguage1GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  Text := VarToStr(qryLanguages.Lookup('LanguageID', Sender.AsInteger,
    'LanguageName'));
end;

procedure TConfigPayF.qryConfigLanguage1SetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := integer(cmbLanguage1.Items.Objects
    [cmbLanguage1.ItemIndex]);
end;

procedure TConfigPayF.qryConfigLanguage2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  Text := VarToStr(qryLanguages.Lookup('LanguageID', Sender.AsInteger,
    'LanguageName'));
end;

procedure TConfigPayF.qryConfigLanguage2SetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := integer(cmbLanguage2.Items.Objects
    [cmbLanguage2.ItemIndex]);
end;

procedure TConfigPayF.qryConfigBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if ((qryConfig.FieldByName('Language1').AsInteger <> 0) and
    (qryConfig.FieldByName('Language2').AsInteger <> 0) and
    (qryConfig.FieldByName('Language1').AsInteger = qryConfig.FieldByName
    ('Language2').AsInteger)) then
  begin
    Warn('هردو زبان نمي توانند يكي باشند.‏');
    Abort;
  end; // if
  if qryConfig.FieldByName('RecalSalaryLaw').IsNull or
    (trim(qryConfig.FieldByName('RecalSalaryLaw').AsString) = '') then
    qryConfig.FieldByName('RecalSalaryLaw').Value := '0';

  if qryConfig.FieldByName('PayMainKind').AsInteger > 1 then
    if qryConfig.FieldByName('PayPettyKind').AsInteger < 1 then
    begin
      Warn('نوع فرعي پرداخت كننده حقوق مشخص شود.‏');
      Abort;
    end; // if

  if (qryConfig.FieldByName('TFN').AsString <> EmptyStr) and
    (Length(qryConfig.FieldByName('TFN').AsString) <> 12) then
  begin
    Warn('شماره پرونده مالياتي معتبر نمي باشد.');
    Abort;
  end; // if
  if qryConfig.FieldByName('ScanState').AsInteger = 1 then
    if not SysUtils.DirectoryExists(qryConfig.FieldByName('ArchiveScan')
      .AsString) then
    begin
      Warn('مسیر وارد شده جهت اسکن اطلاعات در تنظیمات سیستم صحیح نمی باشد.');
      Abort;
    end;


  if (qryConfigInterdictItemSumSalary1.AsString <> EmptyStr) and
    (qryConfigInterdictItemSumSalary2.AsString = EmptyStr) then
    qryConfigInterdictItemSumSalary2.AsString := '0';

end;

procedure TConfigPayF.SpeedButton1Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryConfig.FieldByName((Sender as TSpeedButton).Hint).AsString;
  if ChooseItemF.SelectChecks(s, 'FormInfoID ', IfThen(optP.LanguageDisplay1,
    'FormCaption_L1+'' - ''+InfoName_L1 ', 'InfoName_L2 '),
    ' Pay.FormsInfo INNER JOIN Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType  ',
    'WHERE     (FormTypes.SalaryEffectKind > 0)'
    // ' WHERE     (FormTypes.SalaryKind in (SELECT DISTINCT SalaryKind FROM Pay.FixedCalculated))'+
    // ' or   (FormTypes.FunctionShow= 1)'
    ) then
  begin
    with qryConfig do
    begin
      Edit;
      FieldByName((Sender as TSpeedButton).Hint).Value :=
        LeftStr(s, Length(s) - 1);
    end; // with
  end; // if
end;

procedure TConfigPayF.edtAccPathEnter(Sender: TObject);
begin
  inherited;
  SetKeyboardLatin
end;

procedure TConfigPayF.edtAccPathExit(Sender: TObject);
begin
  inherited;
  SetKeyboardFarsi
end;

procedure TConfigPayF.SpeedButton2Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'كد ها',
    'SELECT FormInfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo INNER JOIN Pay.FormTypes ON FormsInfo.FormType=FormTypes.FormType  '
    + ' WHERE (FormTypes.SalaryKind BETWEEN 1 AND 4) ',
    ['كد', 'نام', 'InfoName'], Results, [100, 100, 100], alLeft);
  if s then
  begin
    if not(qryConfig.State in dseditmodes) then
      qryConfig.Edit;
    qryConfig[(Sender as TSpeedButton).Hint] := Results[0];
  end; // if
end;

procedure TConfigPayF.TabSheet13Enter(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
end;

procedure TConfigPayF.chkAccOLdClick(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
end;

procedure TConfigPayF.dbchkScanStateClick(Sender: TObject);
begin
  inherited;
  GroupBox3.Visible := dbchkScanState.Visible;
end;

procedure TConfigPayF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[Sender.AsInteger];
end;

procedure TConfigPayF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TConfigPayF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  SearchComponentsF.ShowForms(ConfigpayF, PageControl1);
end;

procedure TConfigPayF.BtnAutoBackupClick(Sender: TObject);
var
  s: String;
begin
  s := edtArchiveScan.Text;
  if not SelectDirectory('لطفاً مسير آرشیو اطلاعات اسکن شده را مشخص کنید :',
    '', s) then
    Exit;
  edtArchiveScan.Text := s
end;

end.
