{ -----------------------------------------------------------------------------
  Unit Name: CustomersProject
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit CustomersProject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DBCtrls, DB, ADODB, Mask, zAPIBalloon, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ComCtrls, ppTypes, sndkey32, ppParameter,
  CheckLst, Types, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, frPelak;

type
  TCustomersProjectF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    srcCustomers: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    zbal: TzAPIBalloon;
    actPrint: TAction;
    qryCustomers: TADOQuery;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustomerGrpID: TIntegerField;
    qryCustomersCustName: TStringField;
    qryCustomersBalance: TBCDField;
    qryCustomersCountry: TStringField;
    qryCustomersCity: TStringField;
    qryCustomersWebSite: TStringField;
    qryCustomersRegion: TStringField;
    qryCustomersAddress: TStringField;
    qryCustomersTel: TStringField;
    qryCustomersFax: TStringField;
    qryCustomersemail: TStringField;
    qryCustomerspobox: TStringField;
    qryCustomersacc_DetailCode: TStringField;
    qryCustomersMaxCredit: TFMTBCDField;
    qryCustomersServiceCalcType: TWordField;
    qryCustomersServicePrice: TBCDField;
    qryCustomersEconomicNumber: TStringField;
    qryCustomersPostalCode: TStringField;
    qryCustomersModifyDate: TDateTimeField;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtCustID: TDBEdit;
    edtCustName: TDBEdit;
    qryCustomersCustomerNote: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn6: TBitBtn;
    qryCustomers__DetailCode: TStringField;
    actSendExel: TAction;
    PopMPrint: TPopupMenu;
    RepCustomersProject1: TMenuItem;
    RepCustomersProject: TMenuItem;
    actSort: TAction;
    BitBtn9: TBitBtn;
    qryCustomersValuationType: TWordField;
    Label14: TLabel;
    edtInfoDate: TDBEdit;
    qryCustomersInfoWeight: TFloatField;
    qryCustomersInfoDate: TStringField;
    qryCustomersGrpActionCustomer: TWordField;
    BitBtn1: TBitBtn;
    RepCustomersProject3: TMenuItem;
    RepCustomersProject4: TMenuItem;
    AllClick: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    qryCustomersacc_CTopicCode: TStringField;
    qryCustomersacc_CTopicCode2: TStringField;
    PageControl1: TPageControl;
    tsAcc: TTabSheet;
    qryCustomers__CTopicCodeName: TStringField;
    qryCustomers__CTopicCodeName3: TStringField;
    qryCustomersContactRate: TBCDField;
    qryCustomersManageName: TStringField;
    qryCustomersManagerSells: TStringField;
    qryCustomersContactNo: TStringField;
    qryCustomersDiscountNote: TStringField;
    qryCustomersDiscount: TFloatField;
    qryCustomersDayTime: TIntegerField;
    qryCustomersConveyKind: TWordField;
    RepCustomersProject5: TMenuItem;
    qryCustomersArzTypeID: TIntegerField;
    qryCustomersaccStateDefault: TWordField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    actViewFile: TAction;
    sd: TPopupMenu;
    Mnu_AllClick: TMenuItem;
    MenuItem1: TMenuItem;
    N6: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine1: TppLine;
    ppDBText10: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    actChangeCustID: TAction;
    actChangeCustID1: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    qryCustomersNationalID: TStringField;
    actGetExel: TAction;
    BitBtn10: TBitBtn;
    RepCustomersProject6: TMenuItem;
    qryCustomersMobile: TStringField;
    qryCustomersCustomersRow: TIntegerField;
    btnRow: TBitBtn;
    actCustomersInterView: TAction;
    TabSheet10: TTabSheet;
    GroupBox1: TGroupBox;
    dbgrdCustomersBroker: TDBGrid;
    qryCustomersBroker: TADOQuery;
    dsCustomersBroker: TDataSource;
    qryCustomersBrokerPersonID1: TIntegerField;
    qryCustomersBrokerPersonID2: TIntegerField;
    qryLookUpCust: TADOQuery;
    qryCustomersBroker_PersonID2: TStringField;
    qryCustomersPersonID1: TIntegerField;
    qryCustomers_PersonID1: TStringField;
    qryCustomersEstablishDate: TStringField;
    qrySellsTypes: TADOQuery;
    qrySellsInfo: TADOQuery;
    qryCustomersSellsMethod: TIntegerField;
    qryCustomersSellsEmporium: TIntegerField;
    qryCustomersSellsDefaultState: TWordField;
    dsCustomersManag: TDataSource;
    qrySellsInfo52Job: TADOQuery;
    qrySellsInfo46SendKind: TADOQuery;
    dsCustomersMasir: TDataSource;
    qryCustomersMasirID: TIntegerField;
    Panel6: TPanel;
    btnBroker: TBitBtn;
    BitBtn12: TBitBtn;
    qryCustomersMaxCreditCurrentForm: TBCDField;
    qryCustomersReagentName: TWideStringField;
    qryCustomersTel2: TWideStringField;
    qryCustomersTel3: TWideStringField;
    qryCustomersPersonID3: TIntegerField;
    qryCustomersUseUnitID: TIntegerField;
    qryUseUnits: TADOQuery;
    qryCustomers_UseUnitName: TStringField;
    strngfldCustomers_PersonID3: TStringField;
    qryCustomersCustomerGrpID2: TIntegerField;
    qryCustomersGroup: TADOQuery;
    qryCustomers_CustomerGrpID2: TStringField;
    qryCustomersacc_CTopicCode3: TStringField;
    qryCustomers__CTopicCodeName2: TStringField;
    qryCustomers__TopicCodeName: TStringField;
    qryCustomersCustAccountNumber: TStringField;
    qryCustomersRegisterNumber: TStringField;
    qryCustomersLastUser: TWideStringField;
    qryCustomersFirstUser: TWideStringField;
    pdbplnmanage: TppDBPipeline;
    RepCustomersProject7: TMenuItem;
    qryCustomersCustomerState: TWordField;
    BitBtn15: TBitBtn;
    qryCustomersCustFirstName: TStringField;
    GroupBox2: TGroupBox;
    cmbGroups: TComboBox;
    Panel10: TPanel;
    SpeedButton1: TSpeedButton;
    btnSelect: TSpeedButton;
    chkAllCusts: TCheckBox;
    qryCustomersCustomerActive: TWordField;
    qryCustomersAccountKind: TIntegerField;
    qryCustomers_AccountKind: TStringField;
    dbchkCustomerActive: TDBCheckBox;
    qryCustomersacc_TopicCode: TLargeintField;
    qryCustomersCustomerCheckNote: TStringField;
    actInfoSMSF: TAction;
    qryCustomersOtherGroups: TADOQuery;
    qryCustomersOtherGroupsCustID: TIntegerField;
    qryCustomersOtherGroupsCustomerGrpID: TIntegerField;
    qryCustomersAlternativeCustID: TLargeintField;
    qryCustomersVatValidityDate: TStringField;
    qryCustomersBusinesslicenseValidityDate: TStringField;
    qryCustomersLeaseValidityDate: TStringField;
    qryCustomersArea: TFloatField;
    qryCustomersDegree: TStringField;
    qryCustomersScore: TFloatField;
    qryCustomersNumberCreditInstallments: TIntegerField;
    qryCustomersMaxWeeklyShoppingCredit: TFMTBCDField;
    qryCustomersMinWeeklyShoppingAmount: TBCDField;
    qryCustomersDayOrder: TWordField;
    qryCustomersHCKharidarTypeCode: TWordField;
    qryCustomersAlternativeCustID2: TLargeintField;
    qryCustomersPaymentCode: TLargeintField;
    dbgrdCustomers: TCedarDbgrid;
    qryCustomersCustName_L2: TStringField;
    qryCustomersTelegramChatID: TStringField;
    plnBroker: TppDBPipeline;
    scrlbxPanel14: TScrollBox;
    Label17: TLabel;
    dbmmoCustomerNote: TDBMemo;
    Panel13: TScrollBox;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    Label22: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    Label24: TLabel;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    SpeedButton10: TSpeedButton;
    DBText4: TDBText;
    DBText3: TDBText;
    Label49: TLabel;
    SpeedButton11: TSpeedButton;
    Label48: TLabel;
    DBEdit18: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit15: TDBEdit;
    qryCustomersTechnicalCode: TStringField;
    dbchkCustomerState: TDBCheckBox;
    qryCustomersDiscountOne: TFloatField;
    qryCustomersExternalId: TStringField;
    qryCustomersNationalCode: TStringField;
    qryCustomersAccountNumber: TStringField;
    dbtxt_PersonID1: TDBText;
    SpeedButton3: TSpeedButton;
    edtPersonID1: TDBEdit;
    Label16: TLabel;
    TabSheet3: TTabSheet;
    dbmmoAddress: TDBMemo;
    Label9: TLabel;
    edtPaymentCode: TDBEdit;
    Label70: TLabel;
    edtVatValidityDate: TDBEdit;
    Label56: TLabel;
    dbmmoCustomerNote1: TDBMemo;
    Label69: TLabel;
    qryCustomersInstallation: TBooleanField;
    qryCustomersInstallationFree: TBooleanField;
    qryCustomersInstallationNote: TStringField;
    qryCustomersSubmit: TBooleanField;
    qryCustomersSubmitFree: TBooleanField;
    qryCustomersSubmitNote: TStringField;
    qryCustomersUnloading: TBooleanField;
    qryCustomersUnloadingFree: TBooleanField;
    GroupBox4: TGroupBox;
    dbrgrpUnloading: TDBRadioGroup;
    dbrgrpUnloadingFree: TDBRadioGroup;
    Label15: TLabel;
    dbmmoSubmitNote: TDBMemo;
    GroupBox5: TGroupBox;
    Label23: TLabel;
    dbrgrpInstallation: TDBRadioGroup;
    dbrgrpInstallationFree: TDBRadioGroup;
    dbmmoInstallationNote: TDBMemo;
    GroupBox6: TGroupBox;
    dbrgrpSubmit: TDBRadioGroup;
    dbrgrpSubmitFree: TDBRadioGroup;
    edtBusinesslicenseValidityDate: TDBEdit;
    Label34: TLabel;
    qryCustomersStateCode: TIntegerField;
    qryCustomers_Ostan: TStringField;
    qryCustomersCityCode: TIntegerField;
    qryCustomers_Shahr: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label35: TLabel;
    Label42: TLabel;
    edtTel: TDBEdit;
    Label6: TLabel;
    MnuCheckAll: TMenuItem;
    N2: TMenuItem;
    qryCustomersEditDateTime: TDateTimeField;
    qryCustomersBaleChatID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure srcCustomersStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryCustomersAfterDelete(DataSet: TDataSet);
    procedure qryCustomersAfterInsert(DataSet: TDataSet);
    procedure qryCustomersAfterPost(DataSet: TDataSet);
    procedure qryCustomersBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormDestroy(Sender: TObject);
    procedure cmbGroupsChange(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryCustomersBeforePost(DataSet: TDataSet);
    procedure chkAllCustsClick(Sender: TObject);
    procedure qryCustomersServiceCalcTypeChange(Sender: TField);
    procedure actSearch_Execute(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure dbgrdCustomersKeyPress(Sender: TObject; var Key: Char);
    procedure ppLBGroupsGetText(Sender: TObject; var Text: String);
    procedure ppTxtServiceCalcTypeGetText(Sender: TObject; var Text: String);
    procedure AllClickClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCustomersCustIDChange(Sender: TField);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure ALLLookUpGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLLookUpSetText(Sender: TField; const Text: String);
    procedure N10Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure actViewFileExecute(Sender: TObject);
    procedure Mnu_AllClickClick(Sender: TObject);
    procedure sdPopup(Sender: TObject);
    procedure qryCustomersBeforeEdit(DataSet: TDataSet);
    procedure actChangeCustIDExecute(Sender: TObject);
    procedure actGetExelExecute(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure btnSelectClick(Sender: TObject);
    procedure btnRowClick(Sender: TObject);
    procedure actCustomersInterViewExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dbgrdCustomersBrokerEditButtonClick(Sender: TObject);
    procedure dbgrdCustomersBrokerKeyPress(Sender: TObject; var Key: Char);
    procedure qryCustomersBrokerAfterInsert(DataSet: TDataSet);
    procedure dbgrdCustomersManagKeyPress(Sender: TObject; var Key: Char);
    procedure qryCustomersBrokerBeforeEdit(DataSet: TDataSet);
    procedure qryCustomersBrokerBeforePost(DataSet: TDataSet);
    procedure dbgrdCustomersMasirKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
    procedure btnBrokerClick(Sender: TObject);
    procedure btnAlldelClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure qryCustomersAfterEdit(DataSet: TDataSet);
    procedure actSmsSendExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure actInfoSMSFExecute(Sender: TObject);
    procedure chklstOtherGroupClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure qryCustomers_OstanChange(Sender: TField);
  private
  WHERESQL: String;
    GroupType: Integer;
    CustomerCaption, mySelected, GrpIDInCmb: String;
    DataSetInsert: Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    // procedure Enter2(CustID: string);

    { Private declarations }
  public
    { Public declarations }
    procedure Enter(CustID: Integer);
  end;

var
  CustomersProjectF: TCustomersProjectF;
  myCustID: Integer;

implementation

uses DM, GlobalPro, mmessage, searchCode_ADO, search2, FormFunctions,
  DBGrid2Print,  GetExcel, sort2, selected,
  mdiMain, StrUtils, CPortFunctions, FaraConsts, SMSUnit, ReciptsFunctions,
  FormDesign, ReciptsGrid, main, infoSMS, Marketting, CustomersTax,
  ViewFileOnServer;

{$R *.dfm}

procedure TCustomersProjectF.Enter(CustID: Integer);
begin
  if ({MainF.mnuActCustomersF1.Visible or MainF.mnuActCustomersF2.Visible or}
    MainF.mnuActCustomersF3.Visible) and mdiMainF.ActCustomersF.Execute then
    With CustomersProjectF do
    begin
      chkAllCusts.Checked := True;
      qryCustomers.Locate('CustID', CustID, []);
    end;
end;

procedure TCustomersProjectF.FormCreate(Sender: TObject);
var
  i: Integer;
  NewItem: TMenuItem;
begin
  inherited;
  chkAllCusts.Visible := (not opt.SearchLimitCustomersGroups) or
    (User.PowerUser);

  PageControl1.TabIndex := 0;
  SetLookUpCash(qryCustomers);
  SetLookUpCash(qryCustomersBroker);
  qrySellsTypes.Open;
  qryCustomersGroup.Open;
  qrySellsInfo46SendKind.Open;
  qrySellsInfo52Job.Open;

  GroupType := var_glb_gParam;
  CustomerCaption := 'پروژه';
  Caption := StringReplace(Caption, 'پروژه', CustomerCaption, [rfReplaceAll]);
  GroupBox2.Caption := StringReplace(GroupBox2.Caption, 'پروژه',
    CustomerCaption, [rfReplaceAll]);
  Label2.Caption := StringReplace(Label2.Caption, 'پروژه', CustomerCaption,
    [rfReplaceAll]);
  Label3.Caption := StringReplace(Label3.Caption, 'پروژه', CustomerCaption,
    [rfReplaceAll]);
  chkAllCusts.Caption := StringReplace(chkAllCusts.Caption, 'پروژه',
    CustomerCaption, [rfReplaceAll]);
  qryCustomers.FieldByName('CustID').DisplayLabel :=
    StringReplace(qryCustomers.FieldByName('CustID').DisplayLabel, 'پروژه',
    CustomerCaption, [rfReplaceAll]);
  qryCustomers.FieldByName('CustName').DisplayLabel :=
    StringReplace(qryCustomers.FieldByName('CustName').DisplayLabel, 'پروژه',
    CustomerCaption, [rfReplaceAll]);
  qryCustomers.FieldByName('CustName').ReadOnly := opt.EditCustNameLevelID;

  qryCustomers.FieldByName('InfoWeight').ReadOnly := optPort.ComPortKind
    in [1, 2, 3, 5];

  // qryCustomers.FieldByName('MaxCredit').ReadOnly := User.level < 12;
  // qryCustomers.FieldByName('MaxCreditCurrentForm').ReadOnly := User.level < 12;

  qryCustomers.FieldByName('InfoWeight').ReadOnly := User.level < 12;


  // _CTopicCode2AccOldAvailable(qryCustomers);

  // if opt.AccOldAvailable then
  // begin
  // qryCustomers.FieldByName('__DetailCode').LookupResultField:='Desc';
  // qryCustomers.FieldByName('__CTopicCodeName2').LookupResultField:='Desc';
  // qryCustomers.FieldByName('__CTopicCodeName2').LookupKeyFields:='CTopicCode';
  // qryCustomers.FieldByName('__CTopicCodeName').LookupResultField:='Desc';
  //
  // end;//if

  // LblServiceCalcType.Enabled:=DMF.ReadBankConfig('SecondCustomerAvailable','0')='1';
  // LblServicePrice.Enabled:=LblServiceCalcType.Enabled;
  // EdtServicePrice.Enabled:=LblServiceCalcType.Enabled;
  // CmbServiceCalcType.Enabled:=LblServiceCalcType.Enabled;
  GrpIDInCmb := InitCombos(cmbGroups,
    'SELECT CustomerGrpID, CustomerGrpName+SPACE((SELECT MAX(LEN(CustomerGrpName))+2 FROM CustomersGroup WHERE GroupType='
    + IntToStr(GroupType) +
    ')-LEN(CustomerGrpName)) + ''از كد'' + str(StartCode)' +
    '+ '' تا كد '' + str(FinishCode) AS  CustomerGrpName ' +
    ' FROM CustomersGroup  WHERE (GroupType = ' + IntToStr(GroupType) +
    ') AND (FinishCode <> 0) ' + SetWhereCustGroups +
    ' ORDER BY CustomerGrpID');

  For i := 0 to cmbGroups.Items.Count - 1 do
  begin
    NewItem := TMenuItem.Create(self);
    NewItem.Caption := cmbGroups.Items.Strings[i];
    if cmbGroups.Items.Count > 0 then
      NewItem.Tag := Integer(cmbGroups.Items.Objects[i]);
    NewItem.OnClick := Mnu_AllClickClick;
    Mnu_AllClick.Add(NewItem);
  end;

  if cmbGroups.Items.Count > 0 then
  begin
    cmbGroups.ItemIndex := 0;
    cmbGroupsChange(cmbGroups);
  end; // if



  // RequiredCustomers(qryCustomers, nil);

end;

procedure TCustomersProjectF.ALLLookUpGetText(Sender: TField; var Text: String;

  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TCustomersProjectF.ALLLookUpSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TCustomersProjectF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(dbgrdCustomers, 1);
  SetColSize(dbgrdCustomersBroker, 1);
  Panel1.Width := (Panel3.Width * 3) div 8;

end;

procedure TCustomersProjectF.srcCustomersStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCustomers.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  btnBroker.Enabled := newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, 'customers', '', self.Name);
end;

procedure TCustomersProjectF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryCustomers, 'acc_DetailCode', 'acc_TopicCode',
    qryCustomers.FieldByName('acc_TopicCode').AsLargeInt > 0)
end;

procedure TCustomersProjectF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TCustomersProjectF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if cmbGroups.ItemIndex = 0 then
    Text := 'همـــه گروهها'
  else
    Text := cmbGroups.Text;
end;

procedure TCustomersProjectF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCustomersProjectF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCustomers.DisableControls;
    PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryCustomers.EnableControls;
  end; // try
end;

procedure TCustomersProjectF.qryCustomersAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TCustomersProjectF.qryCustomersAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
  DataSet.FieldByName('EditDateTime').AsDateTime := Now;
end;

procedure TCustomersProjectF.qryCustomersAfterInsert(DataSet: TDataSet);
var
  GrpID: Integer;
  aRange: String;
  isValid: Boolean;
  rFrom, rTo: Integer;
begin
  inherited;
  DataSetInsert := True;
  if (cmbGroups.ItemIndex = -1) then
  begin
    zbal.Prompt.Text := 'لطفاً قبل از تعريف ' + CustomerCaption +
      ' جديد گروه آنرا مشخص كنيد.';

    zbal.Title := 'اخطار!';
    zbal.Show(cmbGroups);
    DataSet.Cancel;
    Exit;
  end; // if
  GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  DataSet.FieldByName('acc_CTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := User.Name;
  if opt.RecoverPittedCode in [0] then
    with DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2,acc_CTopicCode3 from CustomersGroup where CustomerGrpID='
        + IntToStr(GrpID);
      Active := True;
      rFrom := Fields[0].AsInteger;
      rTo := Fields[1].AsInteger;
      DataSet.FieldByName('acc_CTopicCode').AsInteger := Fields[2].AsInteger;
      DataSet.FieldByName('acc_CTopicCode2').AsInteger := Fields[3].AsInteger;
      DataSet.FieldByName('acc_CTopicCode3').AsInteger := Fields[4].AsInteger;
      aRange := format('%d and %d', [rFrom, rTo]);
      Active := False;
      if aRange = ' and ' then
        aRange := '-999999999 and 999999999';
      DataSet.FieldByName('CustID').AsInteger :=
        GetANewCode(self.Name,
        'Select max(CustID) from Customers where CustID between ' + aRange +
        'and CustomerGrpID =' + IntToStr(GrpID), 'CustID');
      if not((DataSet.FieldByName('CustID').AsInteger >= rFrom) and
        (DataSet.FieldByName('CustID').AsInteger <= rTo)) then
        DataSet.FieldByName('CustID').AsInteger := rFrom;
      Active := False;
      SQL.Text := 'Select count(CustID) from Customers where CustID = ' +
        DataSet.FieldByName('CustID').AsString + ' and CustomerGrpID = ' +
        IntToStr(GrpID);
      Active := True;
      isValid := Fields[0].AsInteger = 0;
      Active := False;
      if not isValid then
      begin
        zbal.Title := 'كد نامعتبر';
        zbal.Prompt.Text :=
          'كد جديد تخصيص يافته نامعتبر است. لطفاً كد را بصورت دستي وارد كنيد.';
        zbal.Show(edtCustID);
      end; // if
    end // with
  else
    DataSet.FieldByName('CustID').AsInteger :=
      New_RecoverPittedCode(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]
      ), 'CustID', self.Name);
  DataSet.FieldByName('CustomerGrpID').AsInteger := GrpID;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  DataSet.FieldByName('InfoDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('acc_DetailCode').AsInteger := 0;
  DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryCustomers.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      DataSet.FieldByName('CustID').AsInteger;

  edtCustID.SetFocus;
end;

procedure TCustomersProjectF.qryCustomersAfterPost(DataSet: TDataSet);
begin
  inherited;
  myCustID := qryCustomersCustID.AsInteger;
  CustIDToDetailCode(qryCustomers, GroupType);
  CustIDToPhonBookII(qryCustomers, dbmmoCustomerNote);
  // sheikh 2015/06/22
  /// ///////////////////////////////////////////////
  if qryCustomersBroker.Active then
  begin
    if (qryCustomersBroker.State in dsEditModes) then
      qryCustomersBroker.Post;
    qryCustomersBroker.UpdateBatch;
  end;

  BigMessage('ثبت شد.', 1);

  if DataSetInsert then
    actSmsSend.Execute;
  DataSetInsert := False;
end;

procedure TCustomersProjectF.qryCustomersBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين  ' + CustomerCaption + ' مطمئن هستيد؟') <> mrYes
  then
    Abort;
end;

procedure TCustomersProjectF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryCustomers, 'acc_CTopicCode3', '', False)
end;

procedure TCustomersProjectF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryCustomers)
end;

procedure TCustomersProjectF.SpeedButton1Click(Sender: TObject);
var
  // i: Integer;
  c: String;
  txt: String;
  s: String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID, CustomerGrpName + ''            از كد '' + ltrim(str(StartCode))'
    + '+ '' تا كد '' + ltrim(str(FinishCode)) AS  CustomerGrpName ' +
    ' FROM CustomersGroup  WHERE (GroupType = ' + IntToStr(GroupType) + ') ';
  s := searchCode_ADOF.SearchCode(DMF.adcBSell, c, 'گروههاي  ' + CustomerCaption
    + 'ان  ', txt, ['کد', 'نام گروه'], alLeft);
  if s <> '' then
  begin
    // for i:=0 to cmbGroups.Items.Count do
    // if cmbGroups.Items.Strings[i]=s then  Break;
    cmbGroups.ItemIndex := cmbGroups.Items.IndexOfObject(TObject(StrToInt(c)));
    cmbGroupsChange(cmbGroups);
    cmbGroups.Hint := s;
    zbal.Title := AnsiString(s);
    zbal.Prompt.Text := c;
    zbal.Show(cmbGroups);
  end; // if
end;

procedure TCustomersProjectF.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TCustomersProjectF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCustomersProjectF.qryCustomersServiceCalcTypeChange(Sender: TField);
begin
  inherited;
  // EdtServicePrice.Enabled:=qryCustomersServiceCalcType.AsInteger in [1,2,3];
  // LblServicePrice.Enabled:=EdtServicePrice.Enabled;
end;

procedure TCustomersProjectF.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(dbgrdCustomers);
  SaveColWidth(dbgrdCustomersBroker);
end;

procedure TCustomersProjectF.cmbGroupsChange(Sender: TObject);
var
  i, CustomerGrpID: Integer;
begin
  inherited;
  CustomerGrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  qryCustomersGroup.Locate('CustomerGrpID', CustomerGrpID, []);

  UpDateListCustomers(1, qryCustomers, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL);
  For i := 0 to Mnu_AllClick.Count - 1 do
  begin
    Mnu_AllClick.Items[i].Checked := CustomerGrpID = Mnu_AllClick.Items[i].Tag;
    Mnu_AllClick.Items[i].Default := Mnu_AllClick.Items[i].Checked;
  end;
  cmbGroups.Hint := cmbGroups.Text;

end;

procedure TCustomersProjectF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrdCustomers, actSmsSend);
end;

procedure TCustomersProjectF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryCustomers, qryCustomersBroker, SmsCustomers, 0, GroupType, 1);
end;

procedure TCustomersProjectF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustomers);
end;

procedure TCustomersProjectF.qryCustomersBeforePost(DataSet: TDataSet);
begin
  inherited;
  // CheckRequiredFieldsCustomer(qryCustomers);
  if not CheckRequiredFields(qryCustomers) then
    Abort;
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Select StartCode,FinishCode from CustomersGroup ' +
      ' where CustomerGrpID=' + qryCustomers.FieldByName
      ('CustomerGrpID').AsString;
    Active := True;
    if (qryCustomers.FieldByName('CustID').AsInteger < Fields[0].AsInteger) or
      (qryCustomers.FieldByName('CustID').AsInteger > Fields[1].AsInteger) then
    begin
      zbal.Title := 'كد نامعتبر';
      zbal.Prompt.Text := 'كد جديد تخصيص يافته خارج ازمحدوده تعريف شده است.';
      zbal.Show(edtCustID);
      edtCustID.SetFocus;
      Abort;
    end; // if
  end; // with
  // if get_response('تغييرات ذخيره شوند؟')<>mrYes then abort;
  TrimStringFields(qryCustomers);
  UnicFieldName(DataSet.FieldByName('CustID'), DataSet.FieldByName('CustName'),
    'Customers', qryCustomersCustomerGrpID.AsInteger);

  // if ((opt.AllControls and Integer(CHkUnicNationalID)) <> 0) or
  // ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0) then
  // begin
  // b := UnicFieldName(DataSet.FieldByName('CustID'),
  // DataSet.FieldByName('NationalID'), 'Customers', 0);
  // if not b and ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0)
  // then
  // Abort;
  // end;
  //
  // if ((opt.AllControls and Integer(CHkUnicRegisterNumber)) <> 0) or
  // ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0) then
  // begin
  // b := UnicFieldName(DataSet.FieldByName('CustID'),
  // DataSet.FieldByName('RegisterNumber'), 'Customers', 0);
  // if not b and ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0)
  // then
  // Abort;
  // end;
  //
  // if (qryCustomersHCKharidarTypeCode.AsInteger = 1) and
  // (qryCustomers.FieldByName('NationalID').AsString.Length > 10) then
  // Warn('طول كد ملي معتبر نمي باشد');
  //
  // // if (qryCustomersHCKharidarTypeCode.AsInteger = 1) then
  // if not ValidateCodeMeli(qryCustomers.FieldByName('NationalID').AsString) then
  // begin
  // Warn('كد ملي معتبر نمي باشد');
  // Abort;
  // end;
  //
  // If not IsValidMobile(qryCustomersMobile.AsString) then
  // begin
  // PageControl1.TabIndex := 0;
  // edtMobile.SetFocus;
  // warn2('شماره همراه وارد شده نامعتبر است');
  // end;
  //
  // if UnicFieldMobile(qryCustomers) then
  // Abort;
  /// ///////////////////////////////////////////////////////////////

  if ((APPBank.Name.ToLower.StartsWith('bpms')) and
    (qryCustomersacc_DetailCode.AsInteger = 0)) then
  begin

    qryCustomersacc_DetailCode.AsInteger := qryCustomersCustID.AsInteger;
  end;
  /// /////////////////////////////////////////////
  if not IsValidIBAN(qryCustomers.FieldByName('CustAccountNumber').AsString) then
  begin
    Warn('شماره شبا معتبر نمي باشد');
  end;

end;

procedure TCustomersProjectF.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  UpDateListCustomers(2, qryCustomers, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL)
end;

procedure TCustomersProjectF.chklstOtherGroupClick(Sender: TObject);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit;
end;

procedure TCustomersProjectF.actSearch_Execute(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 11] of String;
  i: Integer;
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    i := 0
  else
    i := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  txt := 'SELECT  CustID,ISNULL(CustFirstName, '''') + '' '' + CustName AS CustName,Tel,Fax,Address,FirstBalance,CustomerGrpID,'
    + ' NationalID, EconomicNumber, ReagentName,Mobile FROM Customers ' +
    'WHERE CustomerGrpID in (SELECT CustomerGrpID FROM CustomersGroup WHERE GroupType = 0)';
  if not chkAllCusts.Checked then
    txt := 'SELECT  CustID, ISNULL(CustFirstName, '''') + '' '' + CustName AS CustName,Tel,Fax,Address,FirstBalance,CustomerGrpID,'
      + ' NationalID, EconomicNumber, ReagentName,Mobile  FROM Customers ' +
      'WHERE     CustomerGrpID = ' + IntToStr(i);
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, '  ' + CustomerCaption +
    ' ها  ', txt, ['کد', 'نام', 'تلفن', 'فکس', 'آدرس', 'مانده ابتداي سال', '',
    'کدملی', 'کداقتصادی', 'معرف', 'همراه'], Results, [30, 150, 80, 80, 200, 100,
    0, 80, 80, 80, 80], alLeft);
  if b then
  begin
    for i := 0 to cmbGroups.Items.Count - 1 do
      if Integer(cmbGroups.Items.Objects[i]) = StrToInt(Results[6]) then
        Break;
    cmbGroups.ItemIndex := i;
    qryCustomers.Locate('CustID', Results[0], []);
  end; // if                                             YearID
end;

procedure TCustomersProjectF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TCustomersProjectF.dbgrdCustomersKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCustomers.FieldByName('CustID'));
end;

procedure TCustomersProjectF.ppLBGroupsGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if chkAllCusts.Checked = True then
    Text := 'همه گروه ها'
  else
    Text := 'گروه : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

procedure TCustomersProjectF.ppTxtServiceCalcTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text:=CmbServiceCalcType.Items.Strings[StrToInt(Text)]
end;

procedure TCustomersProjectF.AllClickClick(Sender: TObject);
begin
  inherited;
  if ((not MnuCheckAll.Checked) or
    ((Sender as TMenuItem).Name = 'RepCustomersProject6')) then
  begin
    ppDBPipeline1.RangeBegin := rbCurrentRecord;
    ppDBPipeline1.RangeEnd := reCurrentRecord;
  end
  else
  begin
    ppDBPipeline1.RangeBegin := rbFirstRecord;
    ppDBPipeline1.RangeEnd := reLastRecord;
  end;

  InitReportFile(ppReport1, (Sender as TMenuItem).Name, True);
end;

procedure TCustomersProjectF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryCustomers, 'acc_CTopicCode', '', False)
end;

procedure TCustomersProjectF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryCustomers, 'acc_CTopicCode2', '', False)
end;

procedure TCustomersProjectF.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

procedure TCustomersProjectF.DBEdit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

procedure TCustomersProjectF.qryCustomersCustIDChange(Sender: TField);
begin
  inherited;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryCustomers.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      Sender.AsInteger;

end;

procedure TCustomersProjectF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger];
end;

procedure TCustomersProjectF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TCustomersProjectF.N10Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(dbgrdCustomers, 0);
end;

procedure TCustomersProjectF.N4Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustomers);
end;

procedure TCustomersProjectF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCustomersProjectF.actViewFileExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(qryCustomers.FieldByName('CustID').AsString,
    'CustomersProjectFiles', False);
end;

procedure TCustomersProjectF.Mnu_AllClickClick(Sender: TObject);

begin
  inherited;
  ChangeCustomerGroup(Sender, qryCustomers, CustomerCaption)
end;

procedure TCustomersProjectF.sdPopup(Sender: TObject);
begin
  inherited;
  Mnu_AllClick.Caption := 'تغيير گروه  ' + CustomerCaption + ' <> ' +
    qryCustomers.FieldByName('CustID').AsString
end;

procedure TCustomersProjectF.qryCustomersBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  // CustID:=qryCustomers.Fieldbyname('CustID').AsInteger
end;

procedure TCustomersProjectF.actChangeCustIDExecute(Sender: TObject);

begin
  inherited;
  ChangeCustID(qryCustomers, cmbGroups, CustomerCaption)
end;

procedure TCustomersProjectF.actGetExelExecute(Sender: TObject);
begin
  inherited;
  With qryCustomers do
  begin
    try
      AfterPost := nil;
      GetExcelF.ShowImPortExcel(qryCustomers);
    finally
      AfterPost := qryCustomersAfterPost;
    end;
  end;

end;

procedure TCustomersProjectF.actInfoSMSFExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryCustomers, 'Mobile', False);
end;

procedure TCustomersProjectF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // Sheikh 2015/06/22
  with qryCustomersOtherGroups, Parameters do
  begin
    Active := False;
    ParamByName('CustId').Value := qryCustomersCustID.AsInteger;
    Active := True;
  end;
  With qryCustomersBroker do
  begin
    Close;
    Parameters.ParamByName('CustID').Value := qryCustomers.FieldByName('CustID')
      .AsInteger;
    Open;
  end;
end;

procedure TCustomersProjectF.btnSelectClick(Sender: TObject);
var
  txt: String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup  WHERE (GroupType = '
    + IntToStr(GroupType) + ') ';
  mySelected := selectedF.ShowSelect(DMF.adcBSell, 'انتخاب گروه', txt,
    ['كد', 'گروه'], alLeft, [50, 400], mySelected);
  if Length(mySelected) > 1 then
    UpDateListCustomers(3, qryCustomers, GroupType, cmbGroups, chkAllCusts,
      mySelected, GrpIDInCmb, WHERESQL)
end;

procedure TCustomersProjectF.btnRowClick(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي تغيير شماره رديف ها به ترتيب كنوني مطمئن هستيد؟') <> mrYes
  then
    Exit;
  With qryCustomers do
  begin
    AfterPost := nil;
    DisableControls;
    First;
    BigMessageProgBar('در حال مرتب كردن رديف ها....‏', RecordCount);
    while not eof do
    begin
      Edit;
      FieldByName('CustomersRow').AsInteger := RecNo;
      GoProgressBar(FieldByName('Address').AsString);
      Next;
    end; // while
    EnableControls;
    AfterPost := qryCustomersAfterPost;
    CloseMessage;
  end;
end;

procedure TCustomersProjectF.actCustomersInterViewExecute(Sender: TObject);
begin
  inherited;
  mdiMainF.actCustomersInterView.Execute
end;

procedure TCustomersProjectF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  // SpeedButtonCustomers(qryCustomers, (Sender as TSpeedButton).Hint)
  SpeedButtonCustomersGroupTypes(qryCustomersPersonID1, '8,11,0,3,15')
end;

procedure TCustomersProjectF.dbgrdCustomersBrokerEditButtonClick
  (Sender: TObject);
// var
// Results: array [0 .. 1] of String;
// txt: String;
begin
  inherited;
  If dbgrdCustomersBroker.SelectedIndex = 0 then
  begin
    // txt := 'SELECT CustID,CustName FROM Customers';
    // if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'پروژه ها', txt,
    // ['كد', 'عنوان'], Results, [50, 100], alLeft) then
    // begin
    // if not(qryCustomersBroker.State in dsEditModes) then
    // qryCustomersBroker.Edit;
    // qryCustomersBroker.FieldByName('PersonID2').AsString := Results[0];
    // end;
    if not(qryCustomersBroker.State in dsEditModes) then
      qryCustomersBroker.Edit;
    SpeedButtonCustomersGroupTypes(qryCustomersBrokerPersonID2, '8,11,0,3,15')
  end;

end;

procedure TCustomersProjectF.dbgrdCustomersBrokerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    dbgrdCustomersBrokerEditButtonClick(Sender);
  if Key = #13 then
    qryCustomersBroker.Append;
end;

procedure TCustomersProjectF.qryCustomersBrokerAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryCustomers.FieldByName('CustID').AsInteger;
end;

procedure TCustomersProjectF.dbgrdCustomersManagKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TCustomersProjectF.gridkeyenter;
var
  nextIndex: Integer;
  curIndex: Integer;
  grd: TDBGrid;
begin
  grd := (Sender as TDBGrid);
  curIndex := grd.SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
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
      if grd.Columns[curIndex].ButtonStyle = TColumnButtonStyle.cbsEllipsis then
      begin // in [1,17,19,23,24,25,26] then begin
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

procedure TCustomersProjectF.qryCustomersBrokerBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit
end;

procedure TCustomersProjectF.qryCustomersBrokerBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TCustomersProjectF.dbgrdCustomersMasirKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TCustomersProjectF.SpeedButton4Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT MasirID,MasirText FROM AddressInMasir';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, 'مسيرها', txt, ['كد', 'مسير'],
    Results, [50, 600], alLeft);
  if b then
  begin
    if not(qryCustomers.State in dsEditModes) then
      qryCustomers.Edit;
    qryCustomers['MasirID'] := Results[0];
  end;
end;

procedure TCustomersProjectF.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ColorDBEdits(self)
end;

procedure TCustomersProjectF.btnBrokerClick(Sender: TObject);
var
  txt, mySelected: String;
begin
  inherited;
  txt := 'SELECT Customers.CustID, Customers.CustName FROM Customers ' +
    'INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + 'WHERE CustomersGroup.GroupType in(8,11,0,3,15) AND ( Customers.CustID > 0 ) and (NOT (Customers.CustID IN'
    + ' (SELECT PersonID2 FROM CustomersBroker' + ' WHERE (PersonID1 = ' +
    qryCustomers.FieldByName('CustID').AsString + '))))';
  mySelected := selectedF.ShowSelect(DMF.adcBSell, 'انتخاب واسط', txt,
    ['كد', 'واسط'], alLeft, [50, 400], mySelected);
  if mySelected = EmptyStr then
    Exit;
  With DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'INSERT INTO CustomersBroker';
    SQL.Add('(PersonID1, PersonID2)');
    SQL.Add('SELECT ' + qryCustomers.FieldByName('CustID').AsString +
      ', CustID');
    SQL.Add('FROM Customers');
    SQL.Add('WHERE (CustID IN (' + mySelected + '))');
    ExecSQL;
  end;
  qryCustomersBroker.Requery();
end;

procedure TCustomersProjectF.BitBtn15Click(Sender: TObject);
var
  CustID: Integer;
begin
  inherited;
  try
    mdiMainF.actCustomersTaxF.Execute
  finally
    CustID := qryCustomersCustID.AsInteger;
    qryCustomers.Requery();
    qryCustomers.Locate('CustID', CustID, []);
  end;
end;

procedure TCustomersProjectF.btn1Click(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TFormDesignF, FormDesignF, self, 18);
end;

procedure TCustomersProjectF.btn2Click(Sender: TObject);
begin
  inherited;
  mdiMainF.actCustomersAlternativeF.Execute
end;

procedure TCustomersProjectF.btnAlldelClick(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي حذف اين  رديف مطمئن هستيد؟') <> mrYes then
    Abort;
  qryCustomersBroker.Delete
end;

procedure TCustomersProjectF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  SpeedButtonUseUnits(qryCustomers, 'محل مصرف')
end;

procedure TCustomersProjectF.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomerGrpID(qryCustomers)
end;

procedure TCustomersProjectF.qryCustomers_OstanChange(Sender: TField);
begin
  inherited;
  With DMF.qryShahr do
  begin
    Active := False;
    Parameters.ParamByName('OstanCode').Value :=
      qryCustomersStateCode.AsInteger;
    Active := True
  end
end;

// procedure TCustomersProjectF.Enter2(CustID: string);
// begin
// CreateMDIForm2(TCustomersProjectF, CustomersProjectF, MarkettingF);
// with CustomersProjectF do
// begin
// chkAllCusts.Checked := True;
// with qryCustomers do
// begin
// DisableControls;
// Close;
// Filter := 'CustID=' + CustID;
// Filtered := True;
// Open;
// EnableControls;
// end;
// end;
// end

end.
