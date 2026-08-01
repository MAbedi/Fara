unit PersonelInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppPrnabl, ppCtrls, jpeg,
  Menus, ppParameter, ComCtrls, Grids, Vcl.DBGrids, sndkey32, ppDesignLayer,
  System.ImageList, System.Actions, dbf;

type
  TPersonelInfoF = class(Ttemplate2MDIF)
    srcPeronalInfo: TDataSource;
    SBtnPeronalInfo: TSpeedButton;
    actSearch_PeronalInfo: TAction;
    qryPeronalInfo: TADOQuery;
    qryPeronalInfoname_L1: TStringField;
    qryPeronalInfoname_L2: TStringField;
    qryPeronalInfolastName_L1: TStringField;
    qryPeronalInfolastName_L2: TStringField;
    qryPeronalInfofatherName_L1: TStringField;
    qryPeronalInfofatherName_L2: TStringField;
    qryPeronalInfoNationalityCode: TIntegerField;
    qryPeronalInfoBirthDate: TStringField;
    qryPeronalInfoSodurDate: TStringField;
    qryPeronalInfoBirthPlace: TIntegerField;
    qryPeronalInfoSodurPlace: TIntegerField;
    qryPeronalInfoNationalID: TStringField;
    qryPeronalInfoIDNumber: TStringField;
    qryPeronalInfosex: TIntegerField;
    qryPeronalInfomarriage: TIntegerField;
    qryPeronalInfochildNumber: TIntegerField;
    qryPeronalInfoLicenceCode: TIntegerField;
    qryPeronalInfostudyField: TIntegerField;
    qryPeronalInfoStudyCityCode: TIntegerField;
    qryPeronalInfoUnivercityCode: TIntegerField;
    qryPeronalInfoStudyAverage: TFloatField;
    qryPeronalInfoemployDate: TStringField;
    qryPeronalInfofinishEmployDate: TStringField;
    qryPeronalInfoBankCode: TIntegerField;
    qryPeronalInfoBranchCode: TStringField;
    qryPeronalInfoAccountNumber: TStringField;
    qryPeronalInfoinsuranceID: TWordField;
    qryPeronalInfoInsuranceNumber: TStringField;
    qryPeronalInfoTaxZone: TIntegerField;
    qryPeronalInfoCoTax: TBCDField;
    qryPeronalInfoaddress_L1: TStringField;
    qryPeronalInfoaddress_L2: TStringField;
    qryPeronalInfoNote_L1: TStringField;
    qryPeronalInfoNote_L2: TStringField;
    Label25: TLabel;
    qryFormsInfo: TADOQuery;
    newPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    actSendtoExcel: TAction;
    actPrint: TAction;
    actSort: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    Label27: TLabel;
    DBEdit9: TDBEdit;
    qryPeronalInfoPersonelNo: TIntegerField;
    qryPeronalInfoTel: TStringField;
    ComboPersonelState: TDBComboBox;
    qryPeronalInfoStudyFinishedate: TStringField;
    BitBtn9: TBitBtn;
    qryInsuranceCONSTinfo: TADOQuery;
    qryPeronalInfoemployDateM: TDateTimeField;
    qryPeronalInfoStoreDayTimeActive: TBooleanField;
    ppDetailBand1: TppDetailBand;
    qryPeronalInfoStoreDayTime: TWordField;
    BitBtn10: TBitBtn;
    qryPeronalInfoEmployID: TStringField;
    qryPeronalInfoAccTopicCode: TIntegerField;
    qryPeronalInfoAccDetailCode: TIntegerField;
    qryPeronalInfoAccCTopicCode: TIntegerField;
    qryPeronalInfoAccCTopicCode2: TIntegerField;
    actAcc: TAction;
    ActLanguage2: TAction;
    qryPeronalInfoSoldierState: TIntegerField;
    qryPeronalInfoPercentWound: TFloatField;
    qryPeronalInfoSpecialJob: TWordField;
    qryPeronalInfoAccCTopicCode3: TIntegerField;
    qryPeronalInfoCreditCardNo: TStringField;
    qryPeronalInfoMaskanKind: TIntegerField;
    qryPeronalInfoSpecialState: TIntegerField;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryPeronalInfoPersonelState: TIntegerField;
    qryPeronalInfoPostalCode: TStringField;
    qryPeronalInfoBranchInfo: TIntegerField;
    qryPeronalInfoOffTime: TIntegerField;
    qryPeronalInfoDSW_JOB: TStringField;
    actScan: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qryPeronalInfoAccBankType: TIntegerField;
    qryPeronalInfoTaxCalculationType: TIntegerField;
    qryPeronalInfoSupPepNumber: TWordField;
    qryInitQry: TADOQuery;
    PageControl1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    Label41: TLabel;
    ComboMaskanKind: TDBComboBox;
    Label45: TLabel;
    ComboOffTime: TDBComboBox;
    Label42: TLabel;
    ComboSpecialState: TDBComboBox;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label38: TLabel;
    Label11: TLabel;
    Label30: TLabel;
    BtnSupPepNumber: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    ComboNationalityCode: TDBComboBox;
    Combosex: TDBComboBox;
    CombochildNumber: TDBComboBox;
    Combomarriage: TDBComboBox;
    ComboSoldierState: TDBComboBox;
    pnlBank: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label40: TLabel;
    Label44: TLabel;
    sbtnPersonelAccounts: TSpeedButton;
    ComboBankCode: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    ComboAccBankType: TDBComboBox;
    DBEdit21: TDBEdit;
    ComboBranchInfo: TDBComboBox;
    Panel6: TPanel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    Label31: TLabel;
    Label46: TLabel;
    BtnDSW_JOB: TSpeedButton;
    Label47: TLabel;
    edtemployDate: TDBEdit;
    DBEdit17: TDBEdit;
    edtInsuranceNumber: TDBEdit;
    DBEdit12: TDBEdit;
    pnlTax: TPanel;
    Label32: TLabel;
    ComboTaxCalculationType: TDBComboBox;
    ChkTax: TDBCheckBox;
    edtPercentWound: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit23: TDBEdit;
    ComboTaxZone: TDBComboBox;
    pnl1: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Panel7: TPanel;
    Image1: TImage;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    edtNationalID: TDBEdit;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    DBEdit20: TDBEdit;
    Label39: TLabel;
    qryPersonelTypeInfo: TADOQuery;
    srcPersonelTypeInfo: TDataSource;
    qryPersonelTypeInfoPersonelNo: TIntegerField;
    qryPersonelTypeInfoFormType: TSmallintField;
    qryPersonelTypeInfoFormInfoID: TIntegerField;
    qryFormTypes: TADOQuery;
    qry_FormsInfo: TADOQuery;
    qryPersonelTypeInfo_FormType: TStringField;
    qryPersonelTypeInfo_FormInfoID: TStringField;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    pnlBtnDetail: TPanel;
    pnlNewDetail: TPanel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    pnlOkDetail: TPanel;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    qryPeronalInfoEducationType: TIntegerField;
    qryPeronalInfoEducationDegree: TIntegerField;
    qryPeronalInfoEducationGrade: TIntegerField;
    Label19: TLabel;
    ComboLicenceCode: TDBComboBox;
    ComboUnivercityCode: TDBComboBox;
    Label20: TLabel;
    Label24: TLabel;
    ComboStudyCityCode: TDBComboBox;
    CombostudyField: TDBComboBox;
    Label22: TLabel;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    Label48: TLabel;
    comboEducationDegree: TDBComboBox;
    Label49: TLabel;
    Label50: TLabel;
    comboEducationGrade: TDBComboBox;
    comboEducationType: TDBComboBox;
    qryPeronalInfoTimeCardNumber: TStringField;
    qryPeronalInfoNumberOfMedicalOffice: TIntegerField;
    Label51: TLabel;
    dbedtTimeCardNumber: TDBEdit;
    Label52: TLabel;
    dbedtNumberOfMedicalOffice: TDBEdit;
    qryPeronalInfoIssuedProvince: TIntegerField;
    qryPeronalInfoIssuedSection: TIntegerField;
    qryPeronalInfoIssuedVillage: TIntegerField;
    qryPeronalInfoBirthProvince: TIntegerField;
    qryPeronalInfoBirthSection: TIntegerField;
    qryPeronalInfoBirthVillage: TIntegerField;
    GroupBox1: TGroupBox;
    ComboSodurPlace: TDBComboBox;
    Label8: TLabel;
    comboIssuedProvince: TDBComboBox;
    Label54: TLabel;
    comboIssuedSection1: TDBComboBox;
    Label56: TLabel;
    Label58: TLabel;
    comboIssuedVillage1: TDBComboBox;
    GroupBox2: TGroupBox;
    ComboBirthPlace: TDBComboBox;
    Label7: TLabel;
    comboBirthProvince: TDBComboBox;
    Label53: TLabel;
    comboIssuedSection: TDBComboBox;
    Label55: TLabel;
    comboIssuedVillage: TDBComboBox;
    Label57: TLabel;
    qryPeronalInfoEmployTypeID: TIntegerField;
    Label59: TLabel;
    ComboEmployTypeID: TDBComboBox;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    Label35: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label43: TLabel;
    DBMemo2: TDBMemo;
    dbmmoaddress_L1: TDBMemo;
    edtTel: TDBEdit;
    edtPostalCode: TDBEdit;
    BtnAccInterdicts: TBitBtn;
    Button1: TButton;
    LblRecNo: TLabel;
    btnGetExcel: TBitBtn;
    qryPeronalInfoMobile: TStringField;
    edtMobile: TDBEdit;
    Label60: TLabel;
    qryPeronalInfoEmail: TWideStringField;
    Label61: TLabel;
    edtEmail: TDBEdit;
    ppDBText1: TppDBText;
    qryPeronalInfo_NationalityCode: TIntegerField;
    qryPeronalInfo_insurancename: TStringField;
    qryPeronalInfo_Employeeshare: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    dbchkMartyrChild: TDBCheckBox;
    qryPeronalInfoMartyrChild: TBooleanField;
    qryPeronalInfoTelegramChatID: TStringField;
    edtTelegramChatID: TDBEdit;
    Label62: TLabel;
    plnPersonelTypeInfo: TppDBPipeline;
    cmd1: TADOCommand;
    edtCitizenCode: TDBEdit;
    Label78: TLabel;
    qryPeronalInfoCitizenCode: TStringField;
    TabSheet2: TTabSheet;
    Label63: TLabel;
    DBEdit6: TDBEdit;
    Label64: TLabel;
    DBEdit15: TDBEdit;
    Label65: TLabel;
    DBEdit16: TDBEdit;
    Label66: TLabel;
    DBEdit18: TDBEdit;
    Label67: TLabel;
    DBEdit19: TDBEdit;
    ComboLocationCode: TDBComboBox;
    Label68: TLabel;
    qryPeronalInfoLocationCode: TIntegerField;
    qryPeronalInfoBaleChatID: TStringField;
    edtBaleChatID: TDBEdit;
    Label69: TLabel;
    procedure FormShow(Sender: TObject);
    procedure actSearch_PeronalInfoExecute(Sender: TObject);
    procedure qryPeronalInfoALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure srcPeronalInfoStateChange(Sender: TObject);
    procedure qryPeronalInfoAfterDelete(DataSet: TDataSet);
    procedure qryPeronalInfoAfterInsert(DataSet: TDataSet);
    procedure qryPeronalInfoAfterPost(DataSet: TDataSet);
    procedure qryPeronalInfoBeforeDelete(DataSet: TDataSet);
    procedure qryPeronalInfoBeforePost(DataSet: TDataSet);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryPeronalInfoALLSetText(Sender: TField; const Text: String);
    procedure ComboBirthPlaceDropDown(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ComboBirthPlaceDblClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure ComboBirthPlaceExit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure actAccExecute(Sender: TObject);
    procedure ActLanguage2Execute(Sender: TObject);
    procedure ComboBirthPlaceKeyPress(Sender: TObject; var Key: Char);
    procedure qryPeronalInfoAfterScroll(DataSet: TDataSet);
    procedure btnGetExcelClick(Sender: TObject);
    procedure BtnSupPepNumberClick(Sender: TObject);
    procedure BtnDSW_JOBClick(Sender: TObject);
    procedure sbtnPersonelAccountsClick(Sender: TObject);
    procedure qryPeronalInfofinishEmployDateChange(Sender: TField);
    // procedure Image1DblClick(Sender: TObject);
    procedure actScanExecute(Sender: TObject);
    procedure qryPeronalInfoBeforeInsert(DataSet: TDataSet);
    procedure qryPeronalInfoBeforeEdit(DataSet: TDataSet);
    procedure qryPersonelTypeInfoAfterInsert(DataSet: TDataSet);
    procedure srcPersonelTypeInfoStateChange(Sender: TObject);
    procedure qryPersonelTypeInfoFormTypeChange(Sender: TField);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure qryPersonelTypeInfoAfterPost(DataSet: TDataSet);
    procedure qryPersonelTypeInfoBeforePost(DataSet: TDataSet);
    procedure qryPersonelTypeInfoAfterScroll(DataSet: TDataSet);
    procedure comboIssuedVillageDropDown(Sender: TObject);
    procedure AllSpeedButtonClick(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryPeronalInfoPersonelNoChange(Sender: TField);
  private
    UnicNationalID: Integer;
    procedure initqryPersonelTypeInfo(IsChange: Boolean);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure PersonelNoToDetailCode(qryPeronalInfo: TADOQuery);
    function ChangePersonState: Boolean;
    { Private declarations }
  public
    procedure Enter(PersonelNo: Integer);
    { Public declarations }
  end;

var
  PersonelInfoF: TPersonelInfoF;

implementation

uses DM, GlobalPro, mmessage, searchCode_ADO,  main, SalaryFunctions,
  shamsiDate, Interdicts, PersonelInfoL2, PersonalArchive, GetExcel, ScanImage,
  PersonelSponsorship, PersonelAccounts, FaraConsts, WorkflowDm, AccFunctions,
  mdiMain, AccountP;

{$R *.dfm}

procedure TPersonelInfoF.FormShow(Sender: TObject);
begin
  inherited;
  qryPeronalInfo.Last;
  HighLightRequiredFields(PersonelInfoF, clSkyBlue);
end;

procedure TPersonelInfoF.Enter(PersonelNo: Integer);
begin
  if not(mdiMainF.ActPersonelInfoF.Visible or mainF.MnuPay_2PersonelInfo.Visible
  or mainF.MnuPay_3PersonelInfo.Visible)
  then
    Abort;
  if not(mdiMainF.ActPersonelInfoF.Visible or mdiMainF.ActPersonelInfoF.Visible) then
    Abort;
  CreateMDIForm2(TPersonelInfoF, PersonelInfoF, mainF);
  PersonelInfoF.qryPeronalInfo.Locate('PersonelNo', PersonelNo, [])
end;

procedure TPersonelInfoF.actSearch_PeronalInfoExecute(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  s: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;
  TxtL1_L2 := ' name_L1, lastName_L1,  fatherName_L1';
  if optP.primaryLanguage <> 0 then
    TxtL1_L2 :=
      ' name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2';
  Txt := 'SELECT  PersonelNo,' + TxtL1_L2 + ',IDNumber ,NationalID  ' +
    'FROM         Pay.PersonelInfo ';
  // Txt:=Txt+IfThen(FilterStore,'AND (Recipts.StoreID BETWEEN '+IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');
  if optP.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام 1', 'نام 2', ' نام خانوادگي 1', 'نام خانوادگي 2',
      'نام پدر 1', 'نام پدر 2', 'شماره شناسنامه', 'كد ملي'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام ', ' نام خانوادگي', 'نام پدر', 'شماره شناسنامه',
      'كد ملي'], Results, [10, 100, 100, 100, 100, 100], alLeft);

  if s then
    qryPeronalInfo.Locate('PersonelNo', Results[0], []);
end;

procedure TPersonelInfoF.srcPeronalInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryPeronalInfo.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  BtnDSW_JOB.Visible := okPanel.Visible;
  SBtnPeronalInfo.Visible := newPanel.Visible;
  BtnSupPepNumber.Visible := newPanel.Visible;
  FreeReservedCodes(DMF.adcSalary);
end;

procedure TPersonelInfoF.srcPersonelTypeInfoStateChange(Sender: TObject);
begin
  inherited;
  pnlOkDetail.Visible := qryPersonelTypeInfo.State in dsEditModes;
  pnlNewDetail.Visible := not pnlOkDetail.Visible;
  BtnReject.Cancel := pnlNewDetail.Visible;
end;

procedure TPersonelInfoF.qryPeronalInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TPersonelInfoF.qryPeronalInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PersonelNo').AsInteger :=
    GetANewCode('','Pay.PersonelInfo', 'PersonelNo');
  DataSet.FieldByName('PersonelState').AsInteger :=
    Integer(ComboPersonelState.Items.Objects[0]);
  DataSet.FieldByName('marriage').AsInteger :=
    Integer(Combomarriage.Items.Objects[0]);
  DataSet.FieldByName('TaxCalculationType').AsInteger :=
    Integer(ComboTaxCalculationType.Items.Objects[0]);

  DataSet.FieldByName('NationalityCode').AsInteger :=
    Integer(ComboNationalityCode.Items.Objects[0]);

  DataSet.FieldByName('LocationCode').AsInteger :=
    Integer(ComboLocationCode.Items.Objects[0]);


  DataSet.FieldByName('BirthPlace').AsInteger :=
    Integer(ComboBirthPlace.Items.Objects[0]);
  DataSet.FieldByName('SodurPlace').AsInteger :=
    Integer(ComboSodurPlace.Items.Objects[0]);
  DataSet.FieldByName('childNumber').AsInteger :=
    Integer(CombochildNumber.Items.Objects[0]);
  DataSet.FieldByName('sex').AsInteger := Integer(Combosex.Items.Objects[0]);
  DataSet.FieldByName('BankCode').AsInteger :=
    Integer(ComboBankCode.Items.Objects[0]);
  DataSet.FieldByName('LicenceCode').AsInteger :=
    Integer(ComboLicenceCode.Items.Objects[0]);
  DataSet.FieldByName('UnivercityCode').AsInteger :=
    Integer(ComboUnivercityCode.Items.Objects[0]);
  DataSet.FieldByName('studyField').AsInteger :=
    Integer(CombostudyField.Items.Objects[0]);
  DataSet.FieldByName('StudyCityCode').AsInteger :=
    Integer(ComboStudyCityCode.Items.Objects[0]);
  DataSet.FieldByName('TaxZone').AsInteger :=
    Integer(ComboTaxCalculationType.Items.Objects[0]);
  DataSet.FieldByName('AccBankType').AsInteger :=
    Integer(ComboAccBankType.Items.Objects[0]);

  DataSet.FieldByName('SoldierState').AsInteger :=
    Integer(ComboSoldierState.Items.Objects[0]);

  // DataSet.FieldByName('PersonelNo').AsInteger:=GetANewCode('','Pay.PersonelInfo','PersonelNo');
  DBEdit1.SetFocus;
end;

procedure TPersonelInfoF.qryPeronalInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  PersonelNoToDetailCode(qryPeronalInfo);
  if qryInitQry.FieldByName('WorkflowID').AsInteger > 0 then
    WorkflowDmF.RunSomeWorkflow(qryInitQry.FieldByName('WorkflowID').AsInteger,
      qryPeronalInfo, ppReport1, qryInitQry.FieldByName('ReportFileName1')
      .AsString, qryPeronalInfo.FieldByName('PersonelNo').AsString);

  // if get_response('تغييرات ذخيره شوند؟')<>mrYes then abort;
  cmd1.Execute;
  qryPeronalInfoAfterScroll(qryPeronalInfo);

  BigMessage('ثبت شد.', 1);
end;

procedure TPersonelInfoF.qryPeronalInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID').AsInteger) then
    Abort;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TPersonelInfoF.qryPeronalInfoBeforePost(DataSet: TDataSet);
var
  tmp_str, Field_Name: String;
begin
  inherited;
  if (optP.AccDetailCodeEqualPersonelNo > 0) then
  begin
    Field_Name := AccDetailTypeChekFieldName(qryPeronalInfoPersonelNo.AsInteger,
      DMF.qryDetailCode);
    if (qryPeronalInfo.FieldByName(Field_Name).AsInteger = 0) then
      qryPeronalInfo.FieldByName(Field_Name).AsInteger :=
        qryPeronalInfoPersonelNo.AsInteger;
  end;

  qryPeronalInfoInsuranceNumber.Required :=
    qryPeronalInfo_Employeeshare.AsInteger > 0;

  // qryFormsInfo.Requery;
  if not CheckRequiredFields(qryPeronalInfo) then
    Abort;

  if (qryPeronalInfoNationalID.AsString <> '0') and

    (qryPeronalInfo_NationalityCode.AsInteger = 1) and
    (not ValidateCodeMeli(qryPeronalInfoNationalID.AsString)) then
  begin
    Warn('كد ملي معتبر نمي باشد');
    Abort;
  end;

  qryPeronalInfo.FieldByName('employDateM').Value :=
    Shamsi2Miladi(qryPeronalInfo.FieldByName('employDate').AsString);
  TrimStringFields(qryPeronalInfo);
  // if (DataSet.FieldByName('employDate').AsString<
  // DataSet.FieldByName('BirthDate').AsString) then begin
  // Warn('تاريخ استخدام نمي تواند از تاريخ تولد کوچکتر باشد.‏');
  // Abort;
  // end;//if
  tmp_str := qryPeronalInfo.FieldByName('finishEmployDate').AsString;
  if not validate_date(False, '', '', '', tmp_str, False) then
    DataSet.FieldByName('finishEmployDate').AsString := '';

  tmp_str := qryPeronalInfo.FieldByName('employDate').AsString;
  if not validate_date(False, '', '', '', tmp_str, False) then
    DataSet.FieldByName('employDate').AsString := '';
  // if (DataSet.FieldByName('finishEmployDate').AsString<
  // DataSet.FieldByName('employDate').AsString) then begin
  // Warn('تاريخ خاتمه قرارداد نمي تواند از تاريخ استخدام کوچکتر باشد.‏');
  // Abort;
  // end;//if
  if (qryPeronalInfoNationalID.AsString <> '0') and
    (qryPeronalInfoNationalID.AsString <> EmptyStr) then
    if not UnicFieldName(qryPeronalInfoPersonelNo, qryPeronalInfoNationalID,
      'Pay.PersonelInfo') then
    begin
      if UnicNationalID = 0 then
        Abort;
    end;

  if not ChangePersonState then
    Abort;

end;

function TPersonelInfoF.ChangePersonState: Boolean;
var
  Mounth: Byte;
  msg: string;
begin
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT InfoID';
    SQL.Add('FROM Pay.FormsInfo');
    SQL.Add('WHERE (FormInfoID = :PersonelState )');
    Parameters.ParamByName('PersonelState').Value :=
      qryPeronalInfoPersonelState.AsInteger;
    Active := True;
    Result := FieldByName('InfoID').AsInteger < 100;
    if Result then
      Exit;
    SQL.Text := 'SELECT FormTypes.FormCaption_L1 + '' : '' + ';
    SQL.Add('FormsInfo.InfoName_L1 AS Name, FixCalculateType1.price');
    SQL.Add('FROM Pay.FixCalculateType1(:Mounth,:Year,:YearMounth,:PersonelNoFrom,:PersonelNoTo) AS');
    SQL.Add('FixCalculateType1 INNER JOIN');
    SQL.Add('Pay.FormsInfo ON FixCalculateType1.SalaryID = FormsInfo.FormInfoID INNER JOIN');
    SQL.Add('Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType');
    SQL.Add('WHERE (FixCalculateType1.price <> 0) and Checking4AllPersonnel>0');

    Mounth := var_glb_CurrentMonth;
    if Mounth < 1 then
      Mounth := 1;
    GetYearMounth(Mounth);
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('Year').Value := optP.Year;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      qryPeronalInfoPersonelNo.AsInteger;
    Parameters.ParamByName('PersonelNoTo').Value :=
      qryPeronalInfoPersonelNo.AsInteger;
    Active := True;
    while not Eof do
    begin
      msg := msg + #13#10 + Format('%s = %s', [FieldByName('Name').AsString,
        CurrToStrF(FieldByName('price').AsCurrency, ffCurrency, 0)]);
      Next;
    end;
    Result := msg.IsEmpty;
    if not Result then
    begin
      msg := 'تغییر وضعیت پرسنل به علت وجود موارد ذیل امکان پذیر نیست' + #13#10
        + msg + #13#10 + 'کارکرد و محاسبه حقوق را بررسی کنید.';
      Warn(msg);
    end;

  end;

end;

procedure TPersonelInfoF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryPeronalInfo);
end;

procedure TPersonelInfoF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('PrintLevelID').AsInteger) then
    Abort;
  try
    qryPeronalInfo.DisableControls;
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qryPeronalInfo.EnableControls;
  end // try
end;

procedure TPersonelInfoF.FormCreate(Sender: TObject);
begin
  inherited;
  lblCaption.Hint := '125';
  qryInitQry.Open;
  SetLookUpCash(qryPeronalInfo);
  if ISDEMO then
    qryPeronalInfo.MaxRecords := 5;
  initDBComboBoxpay(ComboSoldierState, 56);
  initDBComboBoxpay(ComboTaxCalculationType, 21);
  initDBComboBoxpay(ComboPersonelState, 3);

  initDBComboBoxpay(ComboNationalityCode, 2);
  initDBComboBoxpay(ComboLocationCode, 2);



  initDBComboBoxpay(ComboBirthPlace, 1);
  initDBComboBoxpay(ComboSodurPlace, 1);
  initDBComboBoxpay(CombochildNumber, 6);
  initDBComboBoxpay(Combomarriage, 5);
  initDBComboBoxpay(Combosex, 4);
  initDBComboBoxpay(ComboBankCode, 7);
  initDBComboBoxpay(ComboLicenceCode, 8);
  initDBComboBoxpay(ComboUnivercityCode, 9);
  initDBComboBoxpay(CombostudyField, 10);
  initDBComboBoxpay(ComboStudyCityCode, 1);
  initDBComboBoxpay(ComboTaxZone, 20);
  initDBComboBoxpay(ComboAccBankType, 26);

  initDBComboBoxpay(ComboMaskanKind, 74);
  initDBComboBoxpay(ComboSpecialState, 75);
  initDBComboBoxpay(ComboBranchInfo, 84);
  initDBComboBoxpay(ComboOffTime, 85);

  initDBComboBoxpay(comboEducationType, 108);
  initDBComboBoxpay(comboEducationDegree, 101);
  initDBComboBoxpay(comboEducationGrade, 109);

  initDBComboBoxpay(ComboEmployTypeID, 14);



  // qryInsuranceCONSTinfo.Active := False;
  // qryInsuranceCONSTinfo.Active := True;
  // qryFormsInfo.Active := True;
  qryPeronalInfo.Active := True;
  // pnlTax.Visible := (mainF.Menu <> mainF.MainMenu2Salary);
  //
  // pnlBank.Visible := pnlTax.Visible;
  // ChkTax.Visible := pnlTax.Visible;
  ActLanguage2.Visible := optP.LanguageDisplay2;
  PageControl1.TabIndex := 0;
  // with DMF.qryTmpTmpp do begin
  // Active:=False;
  // SQL.Text:='SELECT COUNT(PersonelNo) FROM Pay.PersonelAccounts';
  // Active:=True;
  // Fields[0].AsInteger));
  // active:=False;
  // end;//with
  InitAllSpeedButton(PersonelInfoF, AllSpeedButtonClick);

  UnicNationalID := DMF.ReadBankConfigPay('UnicNationalID', '0').ToInteger;


end;

procedure TPersonelInfoF.AllSpeedButtonClick(Sender: TObject);
begin
  inherited;
  LookUpSearch((Sender as TMYSpeedButton).cmbo, qryPeronalInfo,
    (Sender as TMYSpeedButton).cmbo.Tag);
end;

procedure TPersonelInfoF.qryPeronalInfoALLGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Combo' + Sender.fieldName));

  if cmb.HelpKeyword <> EmptyStr then
    initDBComboBoxMasterDetail(cmb, cmb.Tag,
      qryPeronalInfo.FieldByName(cmb.HelpKeyword).AsInteger)
  else if cmb.Tag > 0 then
    initDBComboBoxpay(cmb, cmb.Tag);

  Text := cmb.Items[cmb.Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TPersonelInfoF.qryPeronalInfoALLSetText(Sender: TField;
  const Text: String);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Combo' + Sender.fieldName));
  if cmb.ItemIndex > -1 then
    Sender.AsInteger := Integer(cmb.Items.Objects[cmb.ItemIndex]);
end;

procedure TPersonelInfoF.ComboBirthPlaceDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxpay((Sender as TDBComboBox), (Sender as TDBComboBox).Tag);
end;

procedure TPersonelInfoF.comboIssuedVillageDropDown(Sender: TObject);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := (Sender as TDBComboBox);
  initDBComboBoxMasterDetail(cmb, cmb.Tag,
    qryPeronalInfo.FieldByName(cmb.HelpKeyword).AsInteger);
end;

procedure TPersonelInfoF.qryPersonelTypeInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryPersonelTypeInfo.FieldByName('PersonelNo').AsInteger :=
    qryPeronalInfo.FieldByName('PersonelNo').AsInteger;
end;

procedure TPersonelInfoF.qryPersonelTypeInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  initqryPersonelTypeInfo(False);
  qryPersonelTypeInfo.Requery();
end;

procedure TPersonelInfoF.qryPersonelTypeInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  initqryPersonelTypeInfo(False);
end;

procedure TPersonelInfoF.qryPersonelTypeInfoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('FormType').AsInteger = 0 then
  begin
    DataSet.Cancel;
    Abort
  end;

end;

procedure TPersonelInfoF.initqryPersonelTypeInfo(IsChange: Boolean);
begin
  With qry_FormsInfo do
  begin
    Active := False;
    SQL.Text := 'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo';
    if IsChange then
    begin
      SQL.Add('WHERE (FormType = :FormType )');
      Parameters.ParamByName('FormType').Value :=
        qryPersonelTypeInfo.FieldByName('FormType').AsInteger;
    end;
    Active := True;
  end;
end;

procedure TPersonelInfoF.qryPersonelTypeInfoFormTypeChange(Sender: TField);
begin
  inherited;
  initqryPersonelTypeInfo(False);
end;

procedure TPersonelInfoF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  if (mainF.MnuPay_2InterdictsF.Visible or mainF.MnuPay_3InterdictsF.Visible) and
    mdiMainF.ActInterdictsF.Execute then
    if InterdictsF.qryInterdicts.Locate('PersonelNo',
      qryPeronalInfo.FieldByName('PersonelNo').AsInteger, []) then
    else
    begin
      if get_response
        ('براي اين پرسنل حكم وارد نشده است آيااطلاعات حكم را مي‏خواهيد وارد كنيد؟‏')
        <> mrYes then
        Exit;
      InterdictsF.qryInterdicts.Insert;
      InterdictsF.qryInterdicts.FieldByName('PersonelNo').AsInteger :=
        qryPeronalInfo.FieldByName('PersonelNo').AsInteger;
    end;
end;

procedure TPersonelInfoF.ComboBirthPlaceDblClick(Sender: TObject);
var
  InfoName, FiledName: String;
  FormType: Integer;
begin
  inherited;
  FiledName := 'InfoName_L1';
  if optP.primaryLanguage <> 0 then
    FiledName := 'InfoName_L2';
  FormType := (Sender as TDBComboBox).Tag;
  InfoName := get_box('اضافه كردن ' + (Sender as TDBComboBox)
    .Field.DisplayLabel, '', '');
  if trim(InfoName) = '' then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DECLARE @_FormInfoID int';
    SQL.Add('DECLARE @_InfoID int ');
    SQL.Add('DECLARE @PrvInfoID int ');
    SQL.Add('SET @_FormInfoID=(SELECT MAX(FormInfoID)FROM Pay.FormsInfo)+1 ');
    SQL.Add(Format
      ('SET @_InfoID=(SELECT MAX(InfoID)FROM Pay.FormsInfo WHERE(FormType= %d ))+1',
      [FormType]));
    SQL.Add(Format
      ('SET @PrvInfoID=(SELECT MAX(PrvInfoID) FROM Pay.FormsInfo WHERE(FormType= %d ))',
      [FormType]));
    SQL.Add(Format
      ('INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, %s , PrvInfoID)',
      [FiledName]));
    SQL.Add(Format('VALUES (@_FormInfoID, %d ,@_InfoID , %s , @PrvInfoID)',
      [FormType, QuotedStr(InfoName)]));
    BigMessage(IntToStr(ExecSQL) + ' ركورد اضافه شد.‏', 1);
    Active := False;

  end; // with
  (Sender as TDBComboBox).Text := InfoName;

end;

procedure TPersonelInfoF.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if qryPeronalInfoSodurDate.IsNull then
    qryPeronalInfoSodurDate.Value := qryPeronalInfoBirthDate.Value;
end;

procedure TPersonelInfoF.DBGrid2EditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  if DBGrid2.SelectedIndex = 1 then
  begin
    Txt := 'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo WHERE ( FormType = %d )';
    Txt := Format(Txt, [qryPersonelTypeInfoFormType.AsInteger]);
    if searchCode_ADOF.SearchCode2(DMF.adcSalary, 'اطلاعات', Txt,
      ['كد', 'عنوان'], Results, [50, 100], alLeft) then
    begin
      if not(qryPersonelTypeInfo.State in dsEditModes) then
        qryPersonelTypeInfo.Edit;
      qryPersonelTypeInfoFormInfoID.AsString := Results[0];
    end;
  end;

end;

procedure TPersonelInfoF.DBGrid2Enter(Sender: TObject);
begin
  inherited;
  initqryPersonelTypeInfo(False);
end;

procedure TPersonelInfoF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TPersonelInfoF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  grd: TDBGrid;
begin
  grd := (Sender as TDBGrid);
  curIndex := grd.SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13, #98:
      begin
        if shiftDown then
          Exit;
        // aDataSet:=grd.DataSource.DataSet;
        Key := #0;
        nextIndex := curIndex + 1;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(grd.Columns[nextIndex].Visible) OR
          (grd.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if grd.DataSource.DataSet.State in dsEditModes then
        grd.DataSource.DataSet.Cancel;

    #32, #157:
      if grd.Columns[curIndex].ButtonStyle = cbsEllipsis then
      begin
        Key := #0;
        grd.OnEditButtonClick(Sender);
        // dbgrdCustomersManagEditButtonClick(sender);
      end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < grd.Columns.Count) and
      (not(grd.Columns[nextIndex].Visible) OR
      (grd.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= grd.Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          grd.SelectedIndex := 1;
        end; // 0
      -2:
        begin
          if grd.DataSource.State in dsEditModes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if grd.DataSource.State in dsEditModes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      grd.SelectedIndex := nextIndex;
    end; // case
end;

procedure TPersonelInfoF.ComboBirthPlaceExit(Sender: TObject);
begin
  inherited;
  if qryPeronalInfoSodurPlace.IsNull then
    qryPeronalInfoSodurPlace.Value := qryPeronalInfoBirthPlace.Value;
end;

procedure TPersonelInfoF.BitBtn10Click(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActPersonalArchiveF.Execute then
  begin
    PersonalArchiveF.qryPersonalInfo.Filter := 'PersonelNo=' +
      qryPeronalInfo.FieldByName('PersonelNo').AsString;
    PersonalArchiveF.qryPersonalInfo.Filtered := True;
    Warn('اطلاعات روي ' + #10#13 + qryPeronalInfo.FieldByName('lastName_L1')
      .AsString + #10#13 + ' فيلتر شد.‏', mtInformation);
  end;
end;

procedure TPersonelInfoF.actAccExecute(Sender: TObject);
begin
  inherited;
  if CheckUserlevel(qryInitQry.FieldByName('AccCodeLevelID').AsInteger) then
    AccountpF.Enter(qryPeronalInfo)
end;

procedure TPersonelInfoF.ActLanguage2Execute(Sender: TObject);
begin
  inherited;
  SetKeyboardLatin;
  PersonelInfoL2F.Enter;
  SetKeyboardFarsi;
end;

procedure TPersonelInfoF.ComboBirthPlaceKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (shiftDown) and (Key = #32) then
  begin
    LookUpSearch((Sender as TDBComboBox), qryPeronalInfo,
      (Sender as TDBComboBox).Tag);
    Key := #0;
  end
  else if Key = #32 then
  begin
    ComboBirthPlaceDblClick(Sender);
    Key := #0;

  end;
end;

procedure TPersonelInfoF.btnGetExcelClick(Sender: TObject);
begin
  inherited;
  try
    qryPeronalInfo.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryPeronalInfo);
  finally
    qryPeronalInfo.AfterPost := qryPeronalInfoAfterPost;
  end; // try

end;

procedure TPersonelInfoF.BtnSupPepNumberClick(Sender: TObject);
begin
  inherited;
  PersonelSponsorshipF.Enter(qryPeronalInfo.FieldByName('PersonelNo')
    .AsInteger);
end;

procedure TPersonelInfoF.BtnDSW_JOBClick(Sender: TObject);
var
  msg, BimehManufactoryMess: String;
  s: Boolean;
  Results: array [0 .. 1] of String;
  adc: TADOConnection;
begin
  inherited;
  BimehManufactoryMess := ReadConfig(APPID, 'BimehManufactoryMess', '');
  if BimehManufactoryMess <> var_glb_CurrentDate then
  begin
    msg := 'مشاغلي که در کد شغل شش رقمي آنها علاوه بر عدد، حرف نيز بکاررفته،' +
      ' جزء مشاغل سخت و زيان آور بوده و فقط کارگاههايي مجاز' +
      ' به استفاده از مشاغل سخت و زيان آور هستند که اين کارگاه' +
      ' در شعبه مورد نظر بعنوان سخت و زيان آور تعريف شده باشد.';
    Warn(msg, mtInformation);
    SaveConfig(APPID, 'BimehManufactoryMess', var_glb_CurrentDate);
  end;

  if not FileExists(pathManufactory) then
  begin
    Warn('فايل ليست كدهاي شغل بيمه به نام ' + pathManufactory +
      '  پيدا نشد.!‏');
    Exit;
  end;




  with adc do
  begin
    adc := TADOConnection.Create(nil);
    Connected := False;
    LoginPrompt := False;
    ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
      pathManufactory + ';Persist Security Info=False';
    try
      Connected := True;
    except
      on E: Exception do
      begin
        Warn('اشكال در اتصال به بانک ' + #13#10 + #13#10 + E.Message);
      end;
    end; // try
    s := searchCode_ADOF.SearchCode2(adc, 'مشخصات مشاغل',
      'SELECT Job_Code, Job_Desc FROM Tab_Job', ['كد شغل', 'نام شغل'], Results,
      [100, 100], alLeft);
    if s then
      qryPeronalInfo.FieldByName('DSW_JOB').AsString := Results[0];
    Free;
  end; // with

end;

procedure TPersonelInfoF.sbtnPersonelAccountsClick(Sender: TObject);
begin
  inherited;
  PersonelAccountsF.Enter(qryPeronalInfo.FieldByName('PersonelNo').AsInteger);
end;

procedure TPersonelInfoF.qryPeronalInfofinishEmployDateChange(Sender: TField);
begin
  inherited;
  if trim(StringReplace(Sender.AsString, '/', '', [rfReplaceAll])) = EmptyStr
  then
    Exit;
  With DMF.qryTmpTmpp do
  Begin
    Active := False;
    SQL.Text := 'SELECT InterdicEndDate, PersonelNo';
    SQL.Add('FROM Pay.Interdicts');
    SQL.Add('WHERE (InterdicEndDate > ''' + Sender.AsString +
      ''') AND (PersonelNo = ' + qryPeronalInfo.FieldByName('PersonelNo')
      .AsString + ')');
    Active := True;
    if RecordCount > 0 then
      if get_response('با توجه به تاريخ خاتمه قرارداد وارد شده ' +
        IntToStr(RecordCount) + ' حكم بزرگتر از اين تاريخ وجود دارد.' + #10#13 +
        'آيا تاريخ آن حكم/حكم‏ها به تاريخ وارد شده تغيير كنند؟‏') = mrYes then
      begin
        Active := False;
        SQL.Text := 'UPDATE Pay.Interdicts ';
        SQL.Add('SET  InterdicEndDate= ''' + Sender.AsString + '''');
        SQL.Add(', InsuranceEndDate= ''' + Sender.AsString + '''');
        SQL.Add('WHERE (InterdicEndDate > ''' + Sender.AsString +
          ''') AND (PersonelNo = ' + qryPeronalInfo.FieldByName('PersonelNo')
          .AsString + ')');
        BigMessage(IntToStr(ExecSQL) + ' تاريخ حكم تغيير كرد.', 2);
      end;
    Active := False;
  end;
end;

procedure TPersonelInfoF.qryPeronalInfoPersonelNoChange(Sender: TField);
begin
  inherited;

end;

// procedure TPersonelInfoF.Image1DblClick(Sender: TObject);
// var
// pathName:String;
// begin
// inherited;
// pathName:=IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))+'Archive\AllYear\PersonelInfo\');
// if OpenDialog1.Execute then begin
// pathName:=pathName+'_'+qryPeronalInfo.Fieldbyname('PersonelNo').AsString+'_1';
// if not CopyFile(pchar(OpenDialog1.FileName),pchar(pathName+ExtractFileExt(OpenDialog1.FileName)),false) then
// raise Exception.Create('اشكال در كپي ')
// else  Image1.Picture.LoadFromFile(pathName+ExtractFileExt(OpenDialog1.FileName))
// end;//if
// end;

procedure TPersonelInfoF.qryPeronalInfoAfterScroll(DataSet: TDataSet);
// var
// pathName: String;
begin
  inherited;
  // if opt.ScanState and DirectoryExists(opt.ArchiveScan) then
  // pathName := opt.ArchiveScan + '\Archive\AllYear\PersonelInfo\'
  // else
  // pathName := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)) +
  // 'Archive\AllYear\PersonelInfo\');
  // pathName := pathName + '1_' + qryPeronalInfo.FieldByName('PersonelNo')
  // .AsString + '_1_0.jpg';
  // if FileExists(pathName) then
  // Image1.Picture.LoadFromFile(pathName)
  // else
  // Image1.Picture := nil;
  GetPersonalPicture(Image1.Picture, qryPeronalInfo.FieldByName('PersonelNo')
    .AsInteger);

  LblRecNo.caption := Format('پرسنل %d از %d',
    [DataSet.RecNo, DataSet.RecordCount]);

  With qryPersonelTypeInfo do
  begin
    Active := False;
    Parameters.ParamByName('PersonelNo').Value :=
      qryPeronalInfo.FieldByName('PersonelNo').AsInteger;
    Active := True;
  end;
end;

procedure TPersonelInfoF.actScanExecute(Sender: TObject);
begin
  inherited;
  try
    ScanImageF.ScanImage(DMF.adcSalary, 'PersonelInfo',
      qryPeronalInfo.FieldByName('PersonelNo').AsString, 1, False,
      qryPeronalInfo.FieldByName('name_L1').AsString + ' ' +
      qryPeronalInfo.FieldByName('lastName_L1').AsString, True, '', True, True,
      optP.ScanState, optP.ArchiveScan, False)
  finally
    qryPeronalInfoAfterScroll(qryPeronalInfo);
  end;
end;

procedure TPersonelInfoF.qryPeronalInfoBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('ADDLevelID').AsInteger) then
    Abort;
end;

procedure TPersonelInfoF.qryPeronalInfoBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('EditLevelID').AsInteger) then
    Abort
end;

procedure TPersonelInfoF.PersonelNoToDetailCode(qryPeronalInfo: TADOQuery);
var
  rid, AccDetailCode, i, DGID: Integer;
  TabelName, Field_Name, DetailCode, DetailName_L1: string;
  qry: TADOQuery;
begin
  if optP.AccDetailCodeEqualPersonelNo = 0 then
    Exit;

  AccDetailCode := qryPeronalInfoPersonelNo.AsInteger;

  qry := TADOQuery.Create(Self);
  With qry do
  begin
    Connection := DMF.qryDetailCode.Connection;
    Close;
    SQL.Text := 'DECLARE @DetailCode int = ' + AccDetailCode.ToString;
    SQL.Add('IF (SELECT LOWER(TYPE) FROM sys.objects WHERE name = ''Details'') = ''v''');
    SQL.Add('BEGIN');
    SQL.Add('if exists (SELECT DGID FROM Acc.DetailGroups WHERE @DetailCode between StartRange and EndRange)');
    SQL.Add('SELECT DGID, DetailType ,''Customers'' FROM Acc.MainDetails INNER JOIN ');
    SQL.Add(' Acc.DetailGroups ON Acc.MainDetails.DetailGroup = Acc.DetailGroups.DGID ');
    SQL.Add('WHERE @DetailCode between StartRange and EndRange');
    SQL.Add('ELSE');
    SQL.Add('SELECT 0,0 as DetailType,''Customers''');
    SQL.Add('END');
    SQL.Add('ELSE');
    SQL.Add('SELECT -1,0 as DetailType ,''Acc.Details''');
    Open;
    DGID := Fields[0].AsInteger;
    Field_Name := getDetailType(Fields[1].AsInteger);
    TabelName := Fields[2].AsString;
    if TabelName = 'Customers' then
    begin
      DetailCode := 'CustID';
      DetailName_L1 := 'CustName'

    end
    else
    begin
      DetailCode := 'DetailCode';
      DetailName_L1 := 'DetailName_L1';
    end;

    Active := False;
    SQL.Text := 'SELECT * FROM ' + TabelName;
    SQL.Add('WHERE ' + DetailCode + ' = ' + AccDetailCode.ToString);
    Active := True;
    if Locate(DetailCode, AccDetailCode, []) then
      Exit;
  end;

  if (optP.AccDetailCodeEqualPersonelNo = 1) or
    (optP.AccDetailCodeEqualPersonelNo = 0) then
    if get_response('كد تفصيلي در سيستم حسابداري وجود ندارد،ايجاد شود؟') <> mrYes
    then
      Exit;

  with qry do
  begin
    Close;
    if not optA.AccOldAvailable then
    begin
      if TabelName = 'Customers' then
      begin
        SQL.Text := 'SELECT CustID,CustomerGrpID,CustName,';
        SQL.Add('ModifyDate AS MakeDate, acc_DetailCode AS accDetailCode,');
        SQL.Add('acc_TopicCode AS accTopicCode, acc_CTopicCode AS accCTopicCode');
        SQL.Add(', acc_CTopicCode2 AS accCTopicCode2 ');
        SQL.Add(',acc_CTopicCode3 AS accCTopicCode3 ')
      end
      else
        SQL.Text := 'SELECT * ';
      SQL.Add(' FROM ' + TabelName);
      SQL.Add('WHERE ' + DetailCode + ' = ' + AccDetailCode.ToString)
    end;
    Open;
    for i := 0 to Fields.Count - 1 do
      Fields[i].ReadOnly := False;

    Edit;

    if DGID <> -1 then
    begin
      FieldByName('CustomerGrpID').AsInteger := DGID;
    end;

    FieldByName(DetailCode).AsInteger := AccDetailCode;
    if TabelName = 'Customers' then
      FieldByName(Field_Name).AsInteger := AccDetailCode;

    if optA.AccOldAvailable then
      FieldByName('Desc').AsString := qryPeronalInfo.FieldByName('name_L1')
        .AsString + ' ' + qryPeronalInfo.FieldByName('lastName_L1').AsString
    else
      FieldByName(DetailName_L1).AsString := qryPeronalInfo.FieldByName
        ('name_L1').AsString + ' ' + qryPeronalInfo.FieldByName
        ('lastName_L1').AsString;
    if not optA.AccOldAvailable then
    begin
      if FindField('CompanyCode') <> nil then
        FieldByName('CompanyCode').AsInteger := optA.AccDefaultCompany;
      if FindField('UseKindInCo') <> nil then
        FieldByName('UseKindInCo').AsInteger := 0;
      if FindField('MakeDate') <> nil then
        FieldByName('MakeDate').AsDateTime := Now;
    end; // if
    Post;
    DMF.qryDetailCode.Open;
    DMF.qryDetailCode.Requery();
    Close;
    Free;
    rid := qryPeronalInfo.FieldByName('PersonelNo').AsInteger;
    qryPeronalInfo.Close;
    qryPeronalInfo.Open;
    qryPeronalInfo.Locate('PersonelNo', rid, []);
  end; // with

end;

end.
