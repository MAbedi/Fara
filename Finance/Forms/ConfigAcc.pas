unit ConfigAcc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, ComCtrls, DBActns, ActnList, StdCtrls, Buttons, StrUtils,
  ExtCtrls, DBCtrls, Mask, DB, ADODB, System.Actions, FrLoginKind, Vcl.CheckLst;

type
  TConfigAccF = class(TTemplate4F)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    cmbAssignedDocForm: TDBComboBox;
    qryConfigAcc: TADOQuery;
    srcConfigAcc: TDataSource;
    qryConfigAccAssignedDocForm: TWordField;
    qryConfigAccReport1OnDocName: TStringField;
    qryConfigAccReport2OnDocName: TStringField;
    qryConfigAccReport3OnDocName: TStringField;
    qryConfigAccCTopicCode2Active: TWordField;
    qryConfigAccCTopicCode1Active: TWordField;
    qryConfigAccDetailCodeActive: TWordField;
    qryConfigAccAttachFileToDocActive: TWordField;
    qryConfigAccLastYearActive: TWordField;
    qryConfigAccAccBankNameOnLastYear: TStringField;
    qryConfigAccDocumentsFooter: TStringField;
    qryConfigAccDocumentsSignature: TStringField;
    qryConfigAccReportKind: TWordField;
    qryConfigAccSecondaryDocNoActiveOnPrint: TWordField;
    qryConfigAccDocDateActiveOnPrint: TWordField;
    qryConfigAccCountAccLevel: TWordField;
    qryConfigAccCuontCTopicLevel: TWordField;
    qryConfigAccCuontCTopic2Level: TWordField;
    qryConfigAccCuontAuditLevel: TWordField;
    qryConfigAccCountFinancialLevel: TWordField;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    cmbReportKind: TDBComboBox;
    dbchkCTopicCode2Active: TDBCheckBox;
    dbchkCTopicCode1Active: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    qryConfigAccAuditCodeActive: TWordField;
    qryConfigAccFinancialCodeActive: TWordField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    dbchkSecondaryDocNoActiveOnPrint: TDBCheckBox;
    dbchkDocDateActiveOnPrint1: TDBCheckBox;
    dbchkAttachFileToDocActive: TDBCheckBox;
    GroupBox7: TGroupBox;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    OpenDialog1: TOpenDialog;
    qryConfigAccLevelIDOnKol: TIntegerField;
    Label3: TLabel;
    DBEdit18: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    qryConfigAccLanguage1: TStringField;
    qryConfigAccLanguage2: TStringField;
    Label22: TLabel;
    Label23: TLabel;
    TabSheet6: TTabSheet;
    DBMemo3: TDBMemo;
    Label24: TLabel;
    DBMemo4: TDBMemo;
    Label25: TLabel;
    qryConfigAccDocumentsFooter_L2: TStringField;
    qryConfigAccDocumentsSignature_L2: TStringField;
    chkRelation: TCheckBox;
    DBCheckBox1: TDBCheckBox;
    qryConfigAccOrganization: TStringField;
    qryConfigAccChief: TStringField;
    qryConfigAccAccountant: TStringField;
    qryConfigAccDateRangeFrom: TStringField;
    qryConfigAccDateRangeTo: TStringField;
    qryConfigAccBudgetReportFooter: TStringField;
    qryConfigAccUseKindInCoActive: TWordField;
    TabSheet7: TTabSheet;
    qryConfigAccAccActive: TWordField;
    qryConfigAccBudgetActive: TWordField;
    qryConfigAccAuditActive: TWordField;
    qryConfigAccFinancialActive: TWordField;
    qryConfigAccPortainActive: TWordField;
    qryConfigAccSpecialActive: TWordField;
    qryConfigAccManegeActive: TWordField;
    dbchkCTopicCode3Active: TDBCheckBox;
    qryConfigAccCTopicCode3Active: TWordField;
    CmbDocKind: TDBComboBox;
    Label26: TLabel;
    qryConfigAccDocKind: TWordField;
    qryConfigAccDocEmpty: TWordField;
    dbchkDocEmpty: TDBCheckBox;
    cmbAccBankNameOnLastYear: TDBComboBox;
    chkLevel: TCheckBox;
    chkDate: TCheckBox;
    qryConfigAccActiveMultiCompany: TWordField;
    qryConfigAccDefaultCompany: TIntegerField;
    dbchkActiveMultiCompany: TDBCheckBox;
    GroupBox5: TGroupBox;
    Label27: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBEdit19: TDBEdit;
    qry_Company: TADOQuery;
    cre: TStringField;
    Label28: TLabel;
    cmbKindSearchDoc: TDBComboBox;
    qryConfigAccKindSearchDoc: TWordField;
    qryConfigAccMiladiDateActive: TWordField;
    DBCheckBox20: TDBCheckBox;
    chkSumBook: TCheckBox;
    chkDocTool: TCheckBox;
    tsBudget: TTabSheet;
    qryConfigAccAccLevel4RelatedTobudget: TWordField;
    qryConfigAccAccCodeInBudgetActive: TBooleanField;
    dbchkAccCodeInBudgetActive: TDBCheckBox;
    qryConfigAccDoInsertCust: TWordField;
    qryConfigAccBsellBankNames: TStringField;
    qryConfigAccAccBankNames: TStringField;
    TabSheet5: TTabSheet;
    qryConfigAccStartDate: TStringField;
    qryConfigAccEndDate: TStringField;
    qryConfigAccLastVersion: TStringField;
    qryConfigAccIsCheckDetail: TBooleanField;
    chkIsCheckDetail: TDBCheckBox;
    pnlDetail: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtStartTopicCode: TDBEdit;
    edtEndTopicCode: TDBEdit;
    qryConfigAccStartTopicCode: TIntegerField;
    qryConfigAccEndTopicCode: TIntegerField;
    TabSheet8: TTabSheet;
    edtSmtp: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    edtMail: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    edtPass: TEdit;
    chkSSl: TCheckBox;
    edtPort: TMaskEdit;
    qryConfigAccRestDocCode: TWordField;
    dbchkRestDocCode: TDBCheckBox;
    qryConfigAccRatesCalculation: TWordField;
    qryConfigAccActivePartCompany: TWordField;
    dbchkActivePartCompany: TDBCheckBox;
    GroupBox8: TGroupBox;
    Label21: TLabel;
    Label29: TLabel;
    DBEdit2: TDBEdit;
    DBEdit12: TDBEdit;
    qryConfigAccTopicCodeFrom: TLargeintField;
    qryConfigAccTopicCodeTo: TLargeintField;
    qryConfigAccDecimalACtive: TBooleanField;
    trvTab: TTreeView;
    dbchkDecimalACtive: TDBCheckBox;
    qryConfigAccCtoipcRelatedKind: TWordField;
    DBCheckBox27: TDBCheckBox;
    qryConfigAccCheckAccCodeInInsert: TWordField;
    chkLastDoc: TCheckBox;
    qryConfigAccCheckRelation: TBooleanField;
    dbchkCheckRelation: TDBCheckBox;
    GroupBox9: TGroupBox;
    DBMemo2: TDBMemo;
    GroupBox10: TGroupBox;
    DBMemo1: TDBMemo;
    pnlAcc: TPanel;
    Label30: TLabel;
    cmbCtopicRelatedKind: TDBComboBox;
    chkPrint: TDBCheckBox;
    qryConfigAccCheckPrint: TWordField;
    dbchkDocDateActiveOnPrint: TDBCheckBox;
    qryConfigAccAllowDelDocSubSystem: TWordField;
    Label9: TLabel;
    tsWebSite: TTabSheet;
    edtRemoteDir: TLabeledEdit;
    edtftpPass: TLabeledEdit;
    edtUserName: TLabeledEdit;
    qryConfigAccStartLimitID: TIntegerField;
    qryConfigAccEndLimitID: TIntegerField;
    GroupBox11: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    edtStartLimitID: TDBEdit;
    edtEndLimitID: TDBEdit;
    dbchkActiveCurrencyInTrialBalance: TDBCheckBox;
    wrdfldConfigAccActiveCurrencyInTrialBalance: TWordField;
    dbchkAllowDelDocSubSystem: TDBCheckBox;
    wrdfldConfigAccActiveExpense: TWordField;
    GroupBox12: TGroupBox;
    cmbRelatedToBudget: TDBComboBox;
    GroupBox13: TGroupBox;
    BitBtn5: TBitBtn;
    dbmmoBudgetType: TDBMemo;
    qryConfigAccBudgetType: TStringField;
    GroupBox14: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    edtMainOrgCode: TEdit;
    edtDebentureSenderRank: TEdit;
    edtDebentureReceiverRank: TEdit;
    qryConfigAccSanamaInfo: TStringField;
    qryConfigAccEditableDetailRange: TBooleanField;
    DBCheckBox23: TDBCheckBox;
    GrpBookSort: TGroupBox;
    dbcmbBookSort: TDBComboBox;
    qryConfigAccAccBookSortType: TWordField;
    Label36: TLabel;
    edtMainOrgID: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    edtNomineeCode: TEdit;
    edtNomineeName: TEdit;
    DBCheckBox2: TDBCheckBox;
    qryConfigAccShowAccountInfoInDetailsReport: TWordField;
    dbchkChkBalancCTopicCode3: TDBCheckBox;
    qryConfigAccChkBalancCTopicCode3: TWordField;
    frmLoginKind1: TfrmLoginKind;
    dbchkChkSelfDocShow: TDBCheckBox;
    qryConfigAccChkSelfDocShow: TWordField;
    DBCheckBox3: TDBCheckBox;
    qryConfigAccPOActive: TWordField;
    qryConfigAccCTopicCode2IsZero: TWordField;
    dbchkCTopicCode2IsZero: TDBCheckBox;
    qryConfigAccCTopicCode3IsZero: TWordField;
    DBCheckBox4: TDBCheckBox;
    qryConfigAccTopicCaptionActive: TWordField;
    dbchkTopicCaptionActive: TDBCheckBox;
    GroupBox15: TGroupBox;
    chklstrptMD: TCheckListBox;
    qryConfigAccrptMD: TLargeintField;
    qryConfigAccUserIDFilter: TWordField;
    dbchkUserIDFilter: TDBCheckBox;
    qryConfigAccChkEnterBudget: TWordField;
    dbchkChkEnterBudget: TDBCheckBox;
    qryConfigAccArzNumberOfDigits: TWordField;
    Label39: TLabel;
    edtArzNumberOfDigits: TDBEdit;
    dbedtRatesCalculation: TDBEdit;
    Label20: TLabel;
    procedure qryConfigAccAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryConfigAccAssignedDocFormGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryConfigAccAssignedDocFormSetText(Sender: TField;
      const Text: String);
    procedure qryConfigAccReportKindGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryConfigAccReportKindSetText(Sender: TField; const Text: String);
    procedure qryConfigAccAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure qryConfigAccBeforePost(DataSet: TDataSet);
    procedure qryConfigAccDocKindGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryConfigAccDocKindSetText(Sender: TField; const Text: String);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryConfigAccKindSearchDocGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryConfigAccKindSearchDocSetText(Sender: TField;
      const Text: String);
    procedure qryConfigAccAccLevel4RelatedTobudgetGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryConfigAccAccLevel4RelatedTobudgetSetText(Sender: TField;
      const Text: String);
    procedure chkIsCheckDetailClick(Sender: TObject);
    procedure qryConfigAccShowWarnDetailGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryConfigAccShowWarnDetailSetText(Sender: TField;
      const Text: String);
    procedure trvTabChange(Sender: TObject; Node: TTreeNode);
    procedure PageControl1Change(Sender: TObject);
    procedure qryConfigAccCtoipcRelatedKindGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryConfigAccCtoipcRelatedKindSetText(Sender: TField;
      const Text: string);
    procedure BitBtn5Click(Sender: TObject);
    procedure qryConfigAccAccBookSortTypeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryConfigAccAccBookSortTypeSetText(Sender: TField;
      const Text: string);
    procedure chklstrptMDClick(Sender: TObject);
    procedure qryConfigAccAfterOpen(DataSet: TDataSet);
  private
    Procedure GetsearchDialog(id: Byte);
    procedure ReadOption;
    procedure InitCombo;
    Procedure initTreeView;
    procedure saveOption;
    procedure SaveSanama;
    procedure LoadSanama;
    { Private declarations }
  public
    Procedure enter;
    { Public declarations }
  end;

var
  ConfigAccF: TConfigAccF;

implementation

uses Dm, mmessage, GlobalPro, searchCode_ADO, selected, Main, Encryption,
  FaraConsts, CedarUnit, FormFunctions;
{$R *.dfm}

procedure TConfigAccF.enter;
begin
  with TConfigAccF.Create(Application) do
    try
      if mrok = ShowModal then
      begin
        if qryConfigAcc.State IN dsEditModes then
          qryConfigAcc.Post
      end
      else if qryConfigAcc.State IN dsEditModes then
        qryConfigAcc.Cancel;
    finally
      Free;
    end; // try

end;

procedure TConfigAccF.qryConfigAccAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TConfigAccF.qryConfigAccAfterOpen(DataSet: TDataSet);
begin
  inherited;
  initCheckList2(chklstrptMD, qryConfigAccrptMD.AsLargeInt, 1);
end;

procedure TConfigAccF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  InitCombo;
  initTreeView;
  qryConfigAcc.Open;
  ReadOption;
  LoadSanama;
  for i := 0 to PageControl1.PageCount - 1 do
    PageControl1.Pages[i].TabVisible := false;
  PageControl1.ActivePageIndex := 0;
  pnlAcc.Visible := User.admin;
end;

procedure TConfigAccF.qryConfigAccAssignedDocFormGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'سند حسابداري با نوع پيش نويس';
    1:
      Text := 'سند حسابداري بدون پيش نويس';
  end; // case

end;

procedure TConfigAccF.qryConfigAccAssignedDocFormSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbAssignedDocForm.ItemIndex;
end;

procedure TConfigAccF.qryConfigAccReportKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'بترتيب ورود اطلاعات';
    1:
      Text := 'بترتيب بدهكار / بستانكار و كد حساب';
    2:
      Text := 'بترتيت بر اساس بدهكار / بستانكار و ورود اطلاعات';

    3:
      Text := 'به ترتیب کدحساب و تفصیلی';

  end; // case

end;

procedure TConfigAccF.qryConfigAccReportKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbReportKind.ItemIndex;
end;

procedure TConfigAccF.qryConfigAccAfterPost(DataSet: TDataSet);
begin
  inherited;
  saveOption;
//  SetSubsysMenu;
  mainf.UpdateStatusbarMain;
  ReadAllOption;
  BigMessage('ثبت شد', 1);
end;

procedure TConfigAccF.GetsearchDialog(id: Byte);
var
  dbedit: TDBEdit;
  qryname: TDataSet;
begin
  dbedit := TDBEdit(FindComponent('DBEdit' + IntToStr(id)));
  if dbedit = nil then
  begin
    warn('فيلد مقصد پيدا نشد.');
    exit;
  end; // if
  OpenDialog1.InitialDir := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)
    ) + 'Report');
  qryname := dbedit.DataSource.DataSet;
  If OpenDialog1.Execute then
  begin
    if not(qryname.State in dsEditModes) then
      qryname.Edit;
    qryname.FieldByName(dbedit.DataField).Value :=
      ExtractFileName(OpenDialog1.FileName);
    dbedit.SetFocus;
  end; // if
end;

procedure TConfigAccF.SaveSanama;
var
  SanamaInfo: TStringList;
begin
  SanamaInfo := TStringList.Create;
  try
    if Trim(edtNomineeCode.Text) <> '' then
      SanamaInfo.Text := 'NomineeCode=' + edtNomineeCode.Text + char(13);
    if Trim(edtNomineeName.Text) <> '' then
      SanamaInfo.Text := SanamaInfo.Text + 'NomineeName=' + edtNomineeName.Text
        + char(13);
    if Trim(edtMainOrgID.Text) <> '' then
      SanamaInfo.Text := SanamaInfo.Text + 'MainOrgID=' + edtMainOrgID.Text
        + char(13);
    if Trim(edtMainOrgCode.Text) <> '' then
      SanamaInfo.Text := SanamaInfo.Text + 'MainOrgCode=' + edtMainOrgCode.Text
        + char(13);
    if Trim(edtDebentureSenderRank.Text) <> '' then
      SanamaInfo.Text := SanamaInfo.Text + 'DebentureSenderRank=' +
        edtDebentureSenderRank.Text + char(13);
    if Trim(edtDebentureReceiverRank.Text) <> '' then
      SanamaInfo.Text := SanamaInfo.Text + 'DebentureReceiverRank=' +
        edtDebentureReceiverRank.Text;

    qryConfigAccSanamaInfo.AsString := SanamaInfo.Text;
  finally
    SanamaInfo.Free;
  end;
end;

procedure TConfigAccF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);
end;

procedure TConfigAccF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);
end;

procedure TConfigAccF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);
end;

procedure TConfigAccF.qryConfigAccBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(qryConfigAcc);
  SaveConfig(APPID, 'CanRelation', BoolToStr(chkRelation.Checked));
  SaveConfig(APPID, 'LastDoc', BoolToStr(chkLastDoc.Checked));
  SaveConfig(APPID, 'DocTool', BoolToStr(chkDocTool.Checked));
  SaveConfig(APPID, 'ShowLevel', BoolToStr(chkLevel.Checked));
//  SaveConfig(APPID, 'PrintPreview', BoolToStr(chkPrintPreview.Checked));
  SaveConfig(APPID, 'DocDate', BoolToStr(chkDate.Checked));
  SaveConfig(APPID, 'SumBook', BoolToStr(chkSumBook.Checked));
  SaveConfig(APPID, 'Smtp', edtSmtp.Text);
  SaveConfig(APPID, 'Email', edtMail.Text);
  SaveConfig(APPID, 'Port', Trim(edtPort.Text));
  SaveConfig(APPID, 'Pass', Encrypt(edtPass.Text, EncryptCode));
  SaveConfig(APPID, 'SSl', BoolToStr(chkSSl.Checked));
  SaveSanama;
end;

procedure TConfigAccF.ReadOption;
begin
  if not(qryConfigAcc.State in dsEditModes) then
    qryConfigAcc.Edit;
  pnlDetail.Visible := opta.IsChkDetail;
  TabSheet3.TabVisible := User.PowerUser;
  chkDocTool.Checked := opta.DocTool;
  TabSheet7.TabVisible := User.PowerUser;
  chkRelation.Checked := opta.CanRelation;
  chkLevel.Checked := opta.ShowLevel;
  chkDate.Checked := opta.DocDate;
  chkSumBook.Checked := opta.SumBook;
//  chkPrintPreview.Checked := PrintPreview;
  edtPort.Text := IntToStr(UserMail.Port);
  edtSmtp.Text := UserMail.Smtp;
  edtMail.Text := UserMail.UserName;
  edtPass.Text := UserMail.pass;
  chkSSl.Checked := UserMail.SSl;
  chkLastDoc.Checked := opta.LastDoc;
  edtftpPass.Text := Xopt.ReadServerConfig('FtpPass', '');
  edtUserName.Text := Xopt.ReadServerConfig('FtpUserName', '');
  edtRemoteDir.Text := Xopt.ReadServerConfig('RemoteDir', '');
end;

procedure TConfigAccF.saveOption;
begin
  Xopt.SaveServerConfig('FtpPass', edtftpPass.Text);
  Xopt.SaveServerConfig('FtpUserName', edtUserName.Text);
  Xopt.SaveServerConfig('RemoteDir', edtRemoteDir.Text);

end;

procedure TConfigAccF.qryConfigAccDocKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'بترتيب ورود اطلاعات';
    1:
      Text := 'بترتيب بدهكار / بستانكار و كد حساب';
    2:
      Text := 'بترتيت بر اساس بدهكار / بستانكار و ورود اطلاعات';
  end; // case
end;

procedure TConfigAccF.qryConfigAccDocKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := CmbDocKind.ItemIndex;
end;

procedure TConfigAccF.InitCombo;
begin
  cmbAccBankNameOnLastYear.Clear;
  // cmbBsellBankName.Clear;
  with TADOQuery.Create(nil) do
    try
      Connection := Dmf.adcFaraSystem;

      SQL.Text := 'SELECT BankName FROM Sections WHERE (SysID in(40, 4))';
      Open;
      while not eof do
      begin
        cmbAccBankNameOnLastYear.Items.Add(Fields[0].AsString);
        Next;
      end;
    finally
      Free;
    end;

end;

procedure TConfigAccF.initTreeView;
var
  i: Integer;
begin
  trvTab.Items.Clear;
  SetWinControlBiDi(trvTab);
  for i := 0 to PageControl1.PageCount - 1 do
    if PageControl1.Pages[i].TabVisible then
      trvTab.Items.Add(nil, PageControl1.Pages[i].Caption)
end;

procedure TConfigAccF.LoadSanama;
var
  i: Integer;
  sanamaStr: string;
begin
  if Trim(qryConfigAccSanamaInfo.AsString) <> '' then
  begin
    sanamaStr := qryConfigAccSanamaInfo.AsString;
    i := Pos('NomineeCode=', sanamaStr);
    if i <> 0 then
      edtNomineeCode.Text := Copy(sanamaStr, 13,
        posex(char(13), sanamaStr, i) - 13);

    i := Pos('NomineeName=', sanamaStr);
    if i <> 0 then
      edtNomineeName.Text := Copy(sanamaStr, i + 12, posex(char(13), sanamaStr,
        i) - (i + 12));

    i := Pos('MainOrgID=', sanamaStr);
    if i <> 0 then
      edtMainOrgID.Text := Copy(sanamaStr, i + 10, posex(char(13), sanamaStr, i)
        - (i + 10));

    i := Pos('MainOrgCode=', sanamaStr);
    if i <> 0 then
      edtMainOrgCode.Text := Copy(sanamaStr, i + 12, posex(char(13), sanamaStr,
        i) - (i + 12));

    i := Pos('DebentureSenderRank=', sanamaStr);
    if i <> 0 then
      edtDebentureSenderRank.Text := Copy(sanamaStr, i + 20,
        posex(char(13), sanamaStr, i) - (i + 20));

    i := Pos('DebentureReceiverRank=', sanamaStr);
    if i <> 0 then
      edtDebentureReceiverRank.Text := Copy(sanamaStr, i + 22,
        posex(char(13), sanamaStr, i) - (i + 22));

  end;
end;

procedure TConfigAccF.PageControl1Change(Sender: TObject);
begin
  inherited;
  trvTab.selected := trvTab.Items[PageControl1.ActivePageIndex];
  trvTab.SetFocus;
end;

procedure TConfigAccF.SpeedButton4Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(Dmf.adcAccounting, c, ',جستجو شركت',
    'SELECT CompanyCode,CompanyName_l1 FROM  ACC.Companies', ['کد', 'نام شركت'],
    alLeft) <> '' then
  begin
    if not(qryConfigAcc.State in dsEditModes) then
      qryConfigAcc.Edit;
    qryConfigAcc['DefaultCompany'] := c;
  end; // if
end;

procedure TConfigAccF.trvTabChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  PageControl1.ActivePageIndex := trvTab.selected.Index;
end;

procedure TConfigAccF.qryConfigAccKindSearchDocGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := cmbKindSearchDoc.Items[Sender.AsInteger]
end;

procedure TConfigAccF.qryConfigAccKindSearchDocSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbKindSearchDoc.ItemIndex;
end;

procedure TConfigAccF.qryConfigAccAccBookSortTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := dbcmbBookSort.Items[Sender.AsInteger];
end;

procedure TConfigAccF.qryConfigAccAccBookSortTypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsInteger := dbcmbBookSort.ItemIndex;
end;

procedure TConfigAccF.qryConfigAccAccLevel4RelatedTobudgetGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := cmbRelatedToBudget.Items[Sender.AsInteger]
end;

procedure TConfigAccF.qryConfigAccAccLevel4RelatedTobudgetSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbRelatedToBudget.ItemIndex
end;

procedure TConfigAccF.qryConfigAccCtoipcRelatedKindGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := cmbCtopicRelatedKind.Items[Sender.AsInteger]
end;

procedure TConfigAccF.qryConfigAccCtoipcRelatedKindSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsInteger := cmbCtopicRelatedKind.ItemIndex;
end;

procedure TConfigAccF.BitBtn5Click(Sender: TObject);
var
  strType, oldType, strtxt: String;
begin
  strtxt := 'SELECT  ReciptType,ReciptCaption  FROM  ReciptTypes ';
  oldType := qryConfigAccBudgetType.AsString;
  strType := selectedF.ShowSelect(Dmf.adcAccounting, 'انواع رسید ها', strtxt,
    ['کد ', 'عنوان'], alLeft, [25, 350], oldType, ' ReciptType ');
  qryConfigAccBudgetType.AsString := strType;
end;

procedure TConfigAccF.chkIsCheckDetailClick(Sender: TObject);
begin
  inherited;
  pnlDetail.Visible := (Sender as TDBCheckBox).Checked;
end;

procedure TConfigAccF.chklstrptMDClick(Sender: TObject);
begin
  inherited;
  if not(qryConfigAcc.State in dsEditModes) then
    qryConfigAcc.Edit;
  qryConfigAccrptMD.AsLargeInt := GetCheckList2(chklstrptMD, 1);

end;

procedure TConfigAccF.qryConfigAccShowWarnDetailGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  // Text := cmbWarnDetail.Items[Sender.AsInteger];
end;

procedure TConfigAccF.qryConfigAccShowWarnDetailSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  // Sender.AsInteger := cmbWarnDetail.ItemIndex;
end;

end.
