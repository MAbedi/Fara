{ -----------------------------------------------------------------------------
  Unit Name: Customers
  Author:    Mahmood
  Purpose:
  History:
  ---------------------------------------------------------------------------- }
unit Customers2;

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
  TCustomers2F = class(Ttemplate2MDIF)
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
    Label15: TLabel;
    edtCustID: TDBEdit;
    edtCustName: TDBEdit;
    edtMaxCredit: TDBEdit;
    qryCustomersCustomerNote: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn6: TBitBtn;
    qryCustomers__DetailCode: TStringField;
    actSendExel: TAction;
    PopMPrint: TPopupMenu;
    RepCustomers1: TMenuItem;
    RepCustomers2: TMenuItem;
    actSort: TAction;
    BitBtn9: TBitBtn;
    qryCustomersValuationType: TWordField;
    Label14: TLabel;
    edtInfoDate: TDBEdit;
    qryCustomersInfoWeight: TFloatField;
    qryCustomersInfoDate: TStringField;
    qryCustomersGrpActionCustomer: TWordField;
    BitBtn1: TBitBtn;
    RepCustomers3: TMenuItem;
    RepCustomers4: TMenuItem;
    AllClick: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    qryCustomersacc_CTopicCode: TStringField;
    qryCustomersacc_CTopicCode2: TStringField;
    PageControl1: TPageControl;
    tsAcc: TTabSheet;
    TabSheet2: TTabSheet;
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
    tsOther: TTabSheet;
    RepCustomers5: TMenuItem;
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
    RepCustomers6: TMenuItem;
    qryCustomersMobile: TStringField;
    qryCustomersCustomersRow: TIntegerField;
    btnRow: TBitBtn;
    actCustomersInterView: TAction;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    tsActivety: TTabSheet;
    tsMasir: TTabSheet;
    edtNationalID: TDBEdit;
    Label35: TLabel;
    edtEconomicNumber: TDBEdit;
    Label23: TLabel;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    Label16: TLabel;
    edtEstablishDate: TDBEdit;
    Label34: TLabel;
    edtPersonID1: TDBEdit;
    SpeedButton3: TSpeedButton;
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
    DBText2: TDBText;
    qryCustomersEstablishDate: TStringField;
    dbgrdCustomersActivity: TDBGrid;
    qryCustomersActivity: TADOQuery;
    dsCustomersActivity: TDataSource;
    qryCustomersActivityPersonID1: TIntegerField;
    qryCustomersActivitySellsType: TIntegerField;
    qryCustomersActivitySellsCode: TIntegerField;
    qrySellsTypes: TADOQuery;
    qrySellsInfo: TADOQuery;
    qryCustomersActivity_SellsType: TStringField;
    qryCustomersActivity_SellsCode: TStringField;
    qryCustomersSellsMethod: TIntegerField;
    qryCustomersSellsEmporium: TIntegerField;
    Panel5: TPanel;
    Label18: TLabel;
    cmbSellsMethod: TDBComboBox;
    Label39: TLabel;
    cmbSellsEmporium: TDBComboBox;
    qryCustomersSellsDefaultState: TWordField;
    dbgrdCustomersManag: TDBGrid;
    qryCustomersManag: TADOQuery;
    dsCustomersManag: TDataSource;
    qryCustomersManagPersonID1: TIntegerField;
    qryCustomersManagJobCode: TIntegerField;
    qryCustomersManagManagName: TWideStringField;
    qryCustomersManagMobile: TStringField;
    qryCustomersManagTel: TStringField;
    qryCustomersManagFax: TStringField;
    qryCustomersManagEmail: TStringField;
    qryCustomersManagBirthDate: TStringField;
    qryCustomersManagMarriageDate: TStringField;
    qryCustomersManagState: TWordField;
    qryCustomersManagSendKind: TIntegerField;
    qryCustomersManag_JobCode: TStringField;
    qryCustomersManag_SendKind: TStringField;
    qrySellsInfo52Job: TADOQuery;
    qrySellsInfo46SendKind: TADOQuery;
    dbgrdCustomersMasir: TDBGrid;
    dsCustomersMasir: TDataSource;
    qryCustomersMasir: TADOQuery;
    qryCustomersMasirPersonID1: TIntegerField;
    qryCustomersMasirMasirID: TIntegerField;
    qryCustomersMasirMasirNote: TWideStringField;
    qryAddressInMasir: TADOQuery;
    qryCustomersMasir_MasirID: TStringField;
    qryCustomersMasirID: TIntegerField;
    qryCustomers_MasirID: TStringField;
    Panel6: TPanel;
    BitBtn11: TBitBtn;
    Panel7: TPanel;
    btnAlldel: TBitBtn;
    BitBtn12: TBitBtn;
    Panel8: TPanel;
    BitBtn13: TBitBtn;
    Panel9: TPanel;
    BitBtn14: TBitBtn;
    qryCustomersMaxCreditCurrentForm: TBCDField;
    edtMaxCreditCurrentForm: TDBEdit;
    Label42: TLabel;
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
    edtCity: TDBEdit;
    Label51: TLabel;
    qryCustomersRegisterNumber: TStringField;
    edtRegisterNumber: TDBEdit;
    Label52: TLabel;
    qryCustomersLastUser: TWideStringField;
    qryCustomersFirstUser: TWideStringField;
    pdbplnmanage: TppDBPipeline;
    RepCustomers7: TMenuItem;
    qryCustomersCustomerState: TWordField;
    BitBtn15: TBitBtn;
    qryCustomersCustFirstName: TStringField;
    edtCustFirstName: TDBEdit;
    GroupBox2: TGroupBox;
    cmbGroups: TComboBox;
    Panel10: TPanel;
    SpeedButton1: TSpeedButton;
    btnSelect: TSpeedButton;
    chkAllCusts: TCheckBox;
    qryCustomersCustomerActive: TWordField;
    qryCustomersAccountKind: TIntegerField;
    qryCustomers_AccountKind: TStringField;
    qryCustomersacc_TopicCode: TLargeintField;
    qryCustomersCustomerCheckNote: TStringField;
    btn1: TBitBtn;
    actInfoSMSF: TAction;
    tsOtherGroup: TTabSheet;
    qryCustomersOtherGroups: TADOQuery;
    qryCustomersOtherGroupsCustID: TIntegerField;
    qryCustomersOtherGroupsCustomerGrpID: TIntegerField;
    GroupBox3: TGroupBox;
    chklstOtherGroup: TCheckListBox;
    qryCustomersAlternativeCustID: TLargeintField;
    Label55: TLabel;
    qryCustomersVatValidityDate: TStringField;
    qryCustomersBusinesslicenseValidityDate: TStringField;
    qryCustomersLeaseValidityDate: TStringField;
    qryCustomersArea: TFloatField;
    qryCustomersDegree: TStringField;
    qryCustomersScore: TFloatField;
    TabSheet1: TTabSheet;
    Label56: TLabel;
    edtVatValidityDate: TDBEdit;
    Label57: TLabel;
    edtBusinesslicenseValidityDate: TDBEdit;
    Label58: TLabel;
    edtLeaseValidityDate: TDBEdit;
    Label59: TLabel;
    edtArea: TDBEdit;
    Label60: TLabel;
    edtDegree: TDBEdit;
    Label61: TLabel;
    edtScore: TDBEdit;
    qryCustomersNumberCreditInstallments: TIntegerField;
    qryCustomersMaxWeeklyShoppingCredit: TFMTBCDField;
    qryCustomersMinWeeklyShoppingAmount: TBCDField;
    qryCustomersDayOrder: TWordField;
    edtNumberCreditInstallments: TDBEdit;
    edtMaxWeeklyShoppingCredit: TDBEdit;
    edtMinWeeklyShoppingAmount: TDBEdit;
    edtMaxCredit1: TDBEdit;
    Label63: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    cmbDayOrder: TDBComboBox;
    cmbHCKharidarTypeCode: TDBComboBox;
    Label67: TLabel;
    qryCustomersHCKharidarTypeCode: TWordField;
    qryCustomersAlternativeCustID2: TLargeintField;
    Label69: TLabel;
    dbmmoCustomerNote1: TDBMemo;
    qryCustomersPaymentCode: TLargeintField;
    edtPaymentCode: TDBEdit;
    Label70: TLabel;
    qryCustomersManagLegalReal: TWordField;
    qryCustomersManagNationalID: TStringField;
    qryCustomersManagOfShares: TFloatField;
    dbgrdCustomers: TCedarDbgrid;
    qryCustomersCustName_L2: TStringField;
    edtCustName_L2: TDBEdit;
    Label71: TLabel;
    qryCustomersTelegramChatID: TStringField;
    plnBroker: TppDBPipeline;
    plnActivity: TppDBPipeline;
    edtCountry: TDBEdit;
    Label74: TLabel;
    scrlbx1: TScrollBox;
    Label38: TLabel;
    Label6: TLabel;
    Label37: TLabel;
    Label7: TLabel;
    Label21: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label20: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    SpeedButton4: TSpeedButton;
    dbtxt_MasirID: TDBText;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    dbtxtUserName: TDBText;
    lbluserName: TLabel;
    dbtxtFirstUser: TDBText;
    lblFirstUser: TLabel;
    edtCustomersRow: TDBEdit;
    edtTel: TDBEdit;
    edtMobile: TDBEdit;
    edtFax: TDBEdit;
    edtpobox: TDBEdit;
    edtContactRate: TDBEdit;
    edtWebSite: TDBEdit;
    edtemail: TDBEdit;
    edtPostalCode: TDBEdit;
    dbmmoAddress: TDBMemo;
    dbedtMasirID: TDBEdit;
    edtTel3: TDBEdit;
    dbedtReagentName: TDBEdit;
    dbedtTel2: TDBEdit;
    scrlbxPanel14: TScrollBox;
    Label53: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    dbmmoCustomerNote: TDBMemo;
    CmbGrpActionCustomer: TDBComboBox;
    dbmmoCustomerCheckNote: TDBMemo;
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
    Panel12: TScrollBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Label54: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    SBtnInfoWeight1: TSpeedButton;
    SBtnInfoWeight2: TSpeedButton;
    Label1: TLabel;
    Label31: TLabel;
    Label36: TLabel;
    Label50: TLabel;
    Label68: TLabel;
    Label72: TLabel;
    edtManageName: TDBEdit;
    edtManagerSells: TDBEdit;
    edtContactNo: TDBEdit;
    edtDayTime: TDBEdit;
    edtDiscountNote: TDBEdit;
    edtDiscount: TDBEdit;
    CmbConveyKind: TDBComboBox;
    dblkcbb_AccountKind: TDBLookupComboBox;
    edtAlternativeCustID: TDBEdit;
    CmbArzTypeID: TDBComboBox;
    edtInfoWeight: TDBEdit;
    edtCustAccountNumber: TDBEdit;
    edtAlternativeCustID2: TDBEdit;
    edtTelegramChatID: TDBEdit;
    Panel15: TScrollBox;
    dbtxt_CustomerGrpID2: TDBText;
    Label47: TLabel;
    SpeedButton9: TSpeedButton;
    dbtxt_UseUnitName: TDBText;
    Label33: TLabel;
    Label40: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    dbtxt_PersonID3: TDBText;
    Label46: TLabel;
    Label12: TLabel;
    Label45: TLabel;
    CmbValuationType: TDBComboBox;
    CmbaccStateDefault: TDBComboBox;
    dbedtUseUnitID: TDBEdit;
    dbedtCustomerGrpID2: TDBEdit;
    cmbSellsDefaultState: TDBComboBox;
    dbedtPersonID3: TDBEdit;
    ScrollBox1: TScrollBox;
    frPelakF1: TfrPelakF;
    Label73: TLabel;
    qryCustomersTechnicalCode: TStringField;
    edtTechnicalCode: TDBEdit;
    qryCustomersDiscountOne: TFloatField;
    edtDiscountOne: TDBEdit;
    Label75: TLabel;
    qryCustomersExternalId: TStringField;
    qryCustomersNationalCode: TStringField;
    edtExternalId: TDBEdit;
    Label76: TLabel;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    edtAccountNumber: TDBEdit;
    Label77: TLabel;
    qryCustomersAccountNumber: TStringField;
    qryCustomersCitizenCode: TStringField;
    edtCitizenCode: TDBEdit;
    Label78: TLabel;
    qryCustomersEditDateTime: TDateTimeField;
    qryCustomersStateCode: TIntegerField;
    qryCustomers_Ostan: TStringField;
    qryCustomersCityCode: TIntegerField;
    qryCustomers_Shahr: TStringField;
    Label10: TLabel;
    Label79: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    dbchkCustomerActive: TDBCheckBox;
    dbchkCustomerState: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    qryCustomersBlackList: TBooleanField;
    qryCustomersHCTarafGaradadTypeCode: TWordField;
    qryCustomersHCForoushandeType1Code: TWordField;
    qryCustomersBaleChatID: TStringField;
    edtBaleChatID: TDBEdit;
    Label80: TLabel;
    qryCustomersTaxMemoryUniqueId: TStringField;
    edtTaxMemoryUniqueId: TDBEdit;
    Label81: TLabel;
    qryCustomersFarmerUniqueCode: TStringField;
    edtFarmerUniqueCode: TDBEdit;
    Label82: TLabel;
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
    procedure SBtnInfoWeight1Click(Sender: TObject);
    procedure SBtnInfoWeight2Click(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure btnSelectClick(Sender: TObject);
    procedure btnRowClick(Sender: TObject);
    procedure actCustomersInterViewExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dbgrdCustomersBrokerEditButtonClick(Sender: TObject);
    procedure dbgrdCustomersBrokerKeyPress(Sender: TObject; var Key: Char);
    procedure qryCustomersBrokerAfterInsert(DataSet: TDataSet);
    procedure dbgrdCustomersActivityEditButtonClick(Sender: TObject);
    procedure dbgrdCustomersActivityKeyPress(Sender: TObject; var Key: Char);
    procedure qryCustomersActivitySellsCodeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbgrdCustomersManagKeyPress(Sender: TObject; var Key: Char);
    procedure qryCustomersBrokerBeforeEdit(DataSet: TDataSet);
    procedure qryCustomersBrokerBeforePost(DataSet: TDataSet);
    procedure qryCustomersManagAllPickGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryCustomersManagAllPickSetText(Sender: TField;
      const Text: String);
    procedure PageControl1Change(Sender: TObject);
    procedure dbgrdCustomersMasirEditButtonClick(Sender: TObject);
    procedure dbgrdCustomersMasirKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure btnAlldelClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure qryCustomersAfterEdit(DataSet: TDataSet);
    procedure actSmsSendExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actInfoSMSFExecute(Sender: TObject);
    procedure chklstOtherGroupClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure qryCustomers_OstanChange(Sender: TField);
  private
    WHERESQL: String;
    InfoWeight1, InfoWeight2: Real;
    GroupType: Integer;
    CustomerCaption, mySelected, GrpIDInCmb: String;
    qryAllCust: TADOQuery;
    DataSetInsert: Boolean;
    procedure GetInfoWeight(TypeNo: Byte);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    // procedure Enter2(CustID: string);

    { Private declarations }
  public
    { Public declarations }
    procedure Enter(CustID: Integer);
  end;

var
  Customers2F: TCustomers2F;
  myCustID: Integer;

implementation

uses DM, GlobalPro, mmessage, searchCode_ADO, search2, FormFunctions,
  DBGrid2Print,  GetExcel, sort2, selected,
  mdiMain, StrUtils, CPortFunctions, FaraConsts, SMSUnit, ReciptsFunctions,
  FormDesign, ReciptsGrid, main, infoSMS, Marketting, CustomersTax,
  ViewFileOnServer;

{$R *.dfm}

procedure TCustomers2F.Enter(CustID: Integer);
begin
  if ( { MainF.mnuActCustomersF1.Visible or MainF.mnuActCustomersF2.Visible or }
    MainF.mnuActCustomersF3.Visible) and mdiMainF.ActCustomersF.Execute then
    With Customers2F do
    begin
      chkAllCusts.Checked := True;
      qryCustomers.Locate('CustID', CustID, []);
    end;
end;

procedure TCustomers2F.FormActivate(Sender: TObject);
begin
  inherited;
  if qrySellsInfo52Job.Active then
    qrySellsInfo52Job.Requery();
end;

procedure TCustomers2F.FormCreate(Sender: TObject);
var
  i: Integer;
  NewItem: TMenuItem;
  kind: String;
  b: Boolean;
begin
  inherited;
  GroupType := var_glb_gParam;
  chkAllCusts.Visible := (not opt.SearchLimitCustomersGroups) or
    (User.PowerUser);

  AddcmbHCKharidarTypeCode(cmbHCKharidarTypeCode);
  i := ColumnIndexByFieldName(dbgrdCustomersManag, 'LegalReal');
  dbgrdCustomersManag.Columns[i].PickList := cmbHCKharidarTypeCode.Items;

  InitConstTypeOfSale(CmbValuationType);
  PageControl1.TabIndex := 0;
  SetLookUpCash(qryCustomers);
  SetLookUpCash(qryCustomersBroker);
  SetLookUpCash(qryCustomersActivity);
  SetLookUpCash(qryCustomersManag);
  SetLookUpCash(qryCustomersMasir);
  qrySellsTypes.Open;
  qryCustomersGroup.Open;
  qrySellsInfo46SendKind.Open;
  qrySellsInfo52Job.Open;

  CustomerCaption := 'مشتري';
  if GroupType = 8 then
    CustomerCaption := 'ويزيتور';
  Caption := StringReplace(Caption, 'مشتري', CustomerCaption, [rfReplaceAll]);
  GroupBox2.Caption := StringReplace(GroupBox2.Caption, 'مشتري',
    CustomerCaption, [rfReplaceAll]);
  Label2.Caption := StringReplace(Label2.Caption, 'مشتري', CustomerCaption,
    [rfReplaceAll]);
  Label3.Caption := StringReplace(Label3.Caption, 'مشتري', CustomerCaption,
    [rfReplaceAll]);
  chkAllCusts.Caption := StringReplace(chkAllCusts.Caption, 'مشتري',
    CustomerCaption, [rfReplaceAll]);
  qryCustomers.FieldByName('CustID').DisplayLabel :=
    StringReplace(qryCustomers.FieldByName('CustID').DisplayLabel, 'مشتري',
    CustomerCaption, [rfReplaceAll]);
  qryCustomers.FieldByName('CustName').DisplayLabel :=
    StringReplace(qryCustomers.FieldByName('CustName').DisplayLabel, 'مشتري',
    CustomerCaption, [rfReplaceAll]);
  qryCustomers.FieldByName('CustName').ReadOnly := opt.EditCustNameLevelID;

  qryCustomers.FieldByName('InfoWeight').ReadOnly := optPort.ComPortKind
    in [1, 2, 3, 5];
  SBtnInfoWeight1.Visible := (User.level > 12);
  SBtnInfoWeight2.Visible := (User.level > 12);

  // qryCustomers.FieldByName('MaxCredit').ReadOnly := User.level < 12;
  // qryCustomers.FieldByName('MaxCreditCurrentForm').ReadOnly := User.level < 12;
  if User.level < 12 then
  begin
    edtMaxCredit.Visible := False;
    edtMaxCreditCurrentForm.Visible := False;
    qryCustomers.FieldByName('MaxCredit').Visible := False;
    qryCustomers.FieldByName('MaxCreditCurrentForm').Visible := False;
  end;

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

  InitDBCombos(CmbGrpActionCustomer,
    'SELECT LookUpID,Name FROM LookUps WHERE(Kind = 250) ORDER BY Code');
  kind := DMF.ReadBankConfig('ArzTypeID', '0');
  if kind <> '' then
    InitDBCombos(CmbArzTypeID, 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = '
      + kind + ') ORDER BY Code');
  // // Sheikh 2015/06/22
  InitChkList(chklstOtherGroup, cmbGroups, True);
  For i := 0 to cmbGroups.Items.Count - 1 do
  begin
    NewItem := TMenuItem.Create(self);
    NewItem.Caption := cmbGroups.Items.Strings[i];
    if cmbGroups.Items.Count > 0 then
      NewItem.Tag := Integer(cmbGroups.Items.Objects[i]);
    NewItem.OnClick := Mnu_AllClickClick;
    Mnu_AllClick.Add(NewItem);
  end;

  InitDBCombos(cmbSellsMethod,
    'SELECT SellsMethod,SellsMethodName FROM SellsMethods ');
  InitDBCombos(cmbSellsEmporium,
    'SELECT SellsEmporium,SellsEmporiumName FROM SellsEmporiums ');
  if cmbGroups.Items.Count > 0 then
  begin
    cmbGroups.ItemIndex := 0;
    cmbGroupsChange(cmbGroups);
  end; // if

  CreateComPort(True);

  RequiredCustomers(qryCustomers, nil);

  b := MainF.Menu = MainF.Mnu14Sell;
  if b then
  begin
    tsActivety.TabVisible := False;
    tsAcc.TabVisible := False;
    tsOther.TabVisible := False;
    tsMasir.TabVisible := False;
  end;

  cmbDayOrder.Items.Text := ' ';
  for i := 1 to High(FormatSettings.LongDayNames) do
    cmbDayOrder.Items.Add(FormatSettings.LongDayNames[i]);

end;

procedure TCustomers2F.ALLLookUpGetText(Sender: TField; var Text: String;

  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TCustomers2F.ALLLookUpSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TCustomers2F.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(dbgrdCustomers, 1);
  SetColSize(dbgrdCustomersBroker, 1);
  SetColSize(dbgrdCustomersActivity, 0);
  SetColSize(dbgrdCustomersManag, 1);
  SetColSize(dbgrdCustomersMasir, 1);
  Panel1.Width := (Panel3.Width * 3) div 8;
end;

procedure TCustomers2F.srcCustomersStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCustomers.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, 'customers', '', self.Name);
end;

procedure TCustomers2F.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryCustomers, 'acc_DetailCode', 'acc_TopicCode',
    qryCustomers.FieldByName('acc_TopicCode').AsLargeInt > 0)
end;

procedure TCustomers2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TCustomers2F.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if cmbGroups.ItemIndex = 0 then
    Text := 'همـــه گروهها'
  else
    Text := cmbGroups.Text;
end;

procedure TCustomers2F.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCustomers2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCustomers.DisableControls;
    PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryCustomers.EnableControls;
  end; // try
end;

procedure TCustomers2F.qryCustomersAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TCustomers2F.qryCustomersAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
  DataSet.FieldByName('EditDateTime').AsDateTime := Now;
end;

procedure TCustomers2F.qryCustomersAfterInsert(DataSet: TDataSet);
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
  GetInfoWeight(1);
  edtCustID.SetFocus;
end;

procedure TCustomers2F.GetInfoWeight;
begin
  inherited;
  case TypeNo of
    1:
      InfoWeight1 := ReadFromTxtOrComPort;
    2:
      InfoWeight2 := ReadFromTxtOrComPort;
  end;
  qryCustomers.FieldByName('InfoWeight').ReadOnly := False;
  qryCustomers.FieldByName('InfoWeight').AsFloat := InfoWeight1 + InfoWeight2;
  qryCustomers.FieldByName('InfoWeight').ReadOnly := optPort.ComPortKind
    in [1, 2, 3, 5];
end;

procedure TCustomers2F.qryCustomersAfterPost(DataSet: TDataSet);
begin
  inherited;
  myCustID := qryCustomersCustID.AsInteger;
  CustIDToDetailCode(qryCustomers, GroupType);
  CustIDToPhonBookII(qryCustomers, dbmmoCustomerNote);
  // sheikh 2015/06/22
  SaveOtherCustomers(qryCustomersOtherGroups, qryCustomers, chklstOtherGroup);
  /// ///////////////////////////////////////////////
  if qryCustomersBroker.Active then
  begin
    if (qryCustomersBroker.State in dsEditModes) then
      qryCustomersBroker.Post;
    qryCustomersBroker.UpdateBatch;
  end;

  if qryCustomersActivity.Active then
  begin
    if (qryCustomersActivity.State in dsEditModes) then
      qryCustomersActivity.Post;
    qryCustomersActivity.UpdateBatch;
  end;

  if qryCustomersMasir.Active then
  begin
    if (qryCustomersMasir.State in dsEditModes) then
      qryCustomersMasir.Post;
    qryCustomersMasir.UpdateBatch;
  end;

  /// /////////////////////////////////////////////
  if qryCustomersManag.Active then
  begin
    if (qryCustomersManag.State in dsEditModes) then
      qryCustomersManag.Post;
    qryCustomersManag.UpdateBatch;
  end;

  BigMessage('ثبت شد.', 1);

  if DataSetInsert then
    actSmsSend.Execute;
  DataSetInsert := False;

end;

procedure TCustomers2F.qryCustomersBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين  ' + CustomerCaption + ' مطمئن هستيد؟') <> mrYes
  then
    Abort
end;

procedure TCustomers2F.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryCustomers, 'acc_CTopicCode3', '', False)
end;

procedure TCustomers2F.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryCustomers)
end;

procedure TCustomers2F.SpeedButton1Click(Sender: TObject);
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
    zbal.Title := s;
    zbal.Prompt.Text := c;
    zbal.Show(cmbGroups);
  end; // if
end;

procedure TCustomers2F.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TCustomers2F.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCustomers2F.qryCustomersServiceCalcTypeChange(Sender: TField);
begin
  inherited;
  // EdtServicePrice.Enabled:=qryCustomersServiceCalcType.AsInteger in [1,2,3];
  // LblServicePrice.Enabled:=EdtServicePrice.Enabled;
end;

procedure TCustomers2F.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(dbgrdCustomers);
  SaveColWidth(dbgrdCustomersBroker);
  SaveColWidth(dbgrdCustomersActivity);
  SaveColWidth(dbgrdCustomersManag);
  SaveColWidth(dbgrdCustomersMasir);
end;

procedure TCustomers2F.cmbGroupsChange(Sender: TObject);
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
  InitChkList(chklstOtherGroup, cmbGroups);
end;

procedure TCustomers2F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrdCustomers, actSmsSend);
end;

procedure TCustomers2F.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryCustomers, qryCustomersManag, SmsCustomers, 0, GroupType, 1);
end;

procedure TCustomers2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustomers);
end;

procedure TCustomers2F.qryCustomersBeforePost(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  qryCustomersTechnicalCode.AsString := frPelakF1.Pelak;
  CheckRequiredFieldsCustomer(qryCustomers);
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

  if ((opt.AllControls and Integer(CHkUnicNationalID)) <> 0) or
    ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0) then
  begin
    b := UnicFieldName(DataSet.FieldByName('CustID'),
      DataSet.FieldByName('NationalID'), 'Customers', 0);
    if not b and ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0)
    then
      Abort;
  end;

  if ((opt.AllControls and Integer(CHkUnicRegisterNumber)) <> 0) or
    ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0) then
  begin
    b := UnicFieldName(DataSet.FieldByName('CustID'),
      DataSet.FieldByName('RegisterNumber'), 'Customers', 0);
    if not b and ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0)
    then
      Abort;
  end;

  if (qryCustomersHCKharidarTypeCode.AsInteger = 1) and
    (qryCustomers.FieldByName('NationalID').AsString.Length > 10) then
    Warn('طول كد ملي معتبر نمي باشد');

  // if (qryCustomersHCKharidarTypeCode.AsInteger = 1) then
  if not ValidateCodeMeli(qryCustomers.FieldByName('NationalID').AsString) then
  begin
    Warn('كد ملي معتبر نمي باشد');
    Abort;
  end;

  If not IsValidMobile(qryCustomersMobile.AsString) then
  begin
    PageControl1.TabIndex := 0;
    edtMobile.SetFocus;
    warn2('شماره همراه وارد شده نامعتبر است');
  end;

  if UnicFieldMobile(qryCustomers) then
    Abort;
  /// ///////////////////////////////////////////////////////////////
  ///
  ///

  if not IsValidIBAN(qryCustomers.FieldByName('CustAccountNumber').AsString)
  then
  begin
    Warn('شماره شبا معتبر نمي باشد');
  end;

  if qryCustomersManag.Active then
    if (qryCustomersManag.State in dsEditModes) then
      qryCustomersManag.Post;

  if qryCustomersBroker.Active then
    if (qryCustomersBroker.State in dsEditModes) then
      qryCustomersBroker.Post;

  if qryCustomersActivity.Active then
    if (qryCustomersActivity.State in dsEditModes) then
      qryCustomersActivity.Post;

  if qryCustomersMasir.Active then
    if (qryCustomersMasir.State in dsEditModes) then
      qryCustomersMasir.Post;

  if ((APPBank.Name.ToLower.StartsWith('bpms')) and
    (qryCustomersacc_DetailCode.AsInteger = 0)) then
  begin

    qryCustomersacc_DetailCode.AsInteger := qryCustomersCustID.AsInteger;
  end;
  /// /////////////////////////////////////////////
  if not chkExternalIdUnic(qryCustomersCustID.AsLargeInt,
    qryCustomersExternalId.AsString) then
  begin
    PageControl1.TabIndex := 6;
    edtExternalId.SetFocus;
    Abort;
  end;

end;

procedure TCustomers2F.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  UpDateListCustomers(2, qryCustomers, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL)
end;

procedure TCustomers2F.chklstOtherGroupClick(Sender: TObject);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit;
end;

procedure TCustomers2F.actSearch_Execute(Sender: TObject);
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

procedure TCustomers2F.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TCustomers2F.dbgrdCustomersKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCustomers.FieldByName('CustID'));
end;

procedure TCustomers2F.ppLBGroupsGetText(Sender: TObject; var Text: String);
begin
  inherited;
  if chkAllCusts.Checked = True then
    Text := 'همه گروه ها'
  else
    Text := 'گروه : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

procedure TCustomers2F.ppTxtServiceCalcTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text:=CmbServiceCalcType.Items.Strings[StrToInt(Text)]
end;

procedure TCustomers2F.AllClickClick(Sender: TObject);
begin
  inherited;
  if (Sender as TMenuItem).Name = 'RepCustomers6' then
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

procedure TCustomers2F.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryCustomers, 'acc_CTopicCode', '', False)
end;

procedure TCustomers2F.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryCustomers, 'acc_CTopicCode2', '', False)
end;

procedure TCustomers2F.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

procedure TCustomers2F.DBEdit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

procedure TCustomers2F.qryCustomersCustIDChange(Sender: TField);
begin
  inherited;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryCustomers.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      Sender.AsInteger;

end;

procedure TCustomers2F.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger];
end;

procedure TCustomers2F.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TCustomers2F.N10Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(dbgrdCustomers, 0);
end;

procedure TCustomers2F.N4Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustomers);
end;

procedure TCustomers2F.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCustomers2F.actViewFileExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(qryCustomers.FieldByName('CustID').AsString,
    'CustomersFiles', False);
end;

procedure TCustomers2F.Mnu_AllClickClick(Sender: TObject);

begin
  inherited;
  ChangeCustomerGroup(Sender, qryCustomers, CustomerCaption)
end;

procedure TCustomers2F.sdPopup(Sender: TObject);
begin
  inherited;
  Mnu_AllClick.Caption := 'تغيير گروه  ' + CustomerCaption + ' <> ' +
    qryCustomers.FieldByName('CustID').AsString
end;

procedure TCustomers2F.qryCustomersBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  // CustID:=qryCustomers.Fieldbyname('CustID').AsInteger
end;

procedure TCustomers2F.actChangeCustIDExecute(Sender: TObject);

begin
  inherited;
  ChangeCustID(qryCustomers, cmbGroups, CustomerCaption)
end;

procedure TCustomers2F.actGetExelExecute(Sender: TObject);
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

procedure TCustomers2F.actInfoSMSFExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryCustomers, 'Mobile', False);
end;

procedure TCustomers2F.SBtnInfoWeight1Click(Sender: TObject);
begin
  inherited;
  GetInfoWeight(1)
end;

procedure TCustomers2F.SBtnInfoWeight2Click(Sender: TObject);
begin
  inherited;
  GetInfoWeight(2)
end;

procedure TCustomers2F.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  frPelakF1.Pelak := '00-ع-000-00';
  frPelakF1.Pelak := qryCustomersTechnicalCode.AsString;
  InfoWeight1 := 0;
  InfoWeight2 := 0;
  // Sheikh 2015/06/22
  with qryCustomersOtherGroups, Parameters do
  begin
    Active := False;
    ParamByName('CustId').Value := qryCustomersCustID.AsInteger;
    Active := True;
  end;
  LoadOtherCustomers(qryCustomersOtherGroups, chklstOtherGroup);
  if qryAllCust <> nil then
    With qryAllCust do
    begin
      Close;
      Parameters.ParamByName('CustID').Value :=
        qryCustomers.FieldByName('CustID').AsInteger;
      Open;
    end;
  DMF.qryOstan.Open;
  qryCustomers_OstanChange(nil);

end;

procedure TCustomers2F.btnSelectClick(Sender: TObject);
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

procedure TCustomers2F.btnRowClick(Sender: TObject);
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

procedure TCustomers2F.actCustomersInterViewExecute(Sender: TObject);
begin
  inherited;
  mdiMainF.actCustomersInterView.Execute
end;

procedure TCustomers2F.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  // SpeedButtonCustomers(qryCustomers, (Sender as TSpeedButton).Hint)
  SpeedButtonCustomersGroupTypes(qryCustomersPersonID1, '8,11')
end;

procedure TCustomers2F.dbgrdCustomersBrokerEditButtonClick(Sender: TObject);
// var
// Results: array [0 .. 1] of String;
// txt: String;
begin
  inherited;
  If dbgrdCustomersBroker.SelectedIndex = 0 then
  begin
    // txt := 'SELECT CustID,CustName FROM Customers';
    // if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'مشتريان', txt,
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

procedure TCustomers2F.dbgrdCustomersBrokerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    dbgrdCustomersBrokerEditButtonClick(Sender);
  if Key = #13 then
    qryCustomersBroker.Append;
end;

procedure TCustomers2F.qryCustomersBrokerAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryCustomers.FieldByName('CustID').AsInteger;
end;

procedure TCustomers2F.dbgrdCustomersActivityEditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
begin
  inherited;
  if qryCustomersActivity.FieldByName('SellsType').AsInteger = 0 then
  begin
    Warn('گروه اطلاعات را مشخص كنيد');
    Exit;
  end;
  If dbgrdCustomersActivity.SelectedIndex = 1 then
  begin
    txt := 'SELECT  RIGHT(SellsCode, LEN(SellsCode) - 2) AS SellsCode, SellsName FROM SellsInfo WHERE SellsType = '
      + qryCustomersActivity.FieldByName('SellsType').AsString;
    if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'گروه', txt, ['كد', 'عنوان'],
      Results, [50, 100], alLeft) then
    begin
      if not(qryCustomersActivity.State in dsEditModes) then
        qryCustomersActivity.Edit;
      qryCustomersActivity.FieldByName('SellsCode').AsString :=
        qryCustomersActivity.FieldByName('SellsType').AsString + Results[0];
    end;

  end;
end;

procedure TCustomers2F.dbgrdCustomersActivityKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    dbgrdCustomersActivityEditButtonClick(Sender);
  if Key = #13 then
    qryCustomersActivity.Append;
end;

procedure TCustomers2F.qryCustomersActivitySellsCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := RightStr(qryCustomersActivity.FieldByName('SellsCode').AsString,
    Length(qryCustomersActivity.FieldByName('SellsCode').AsString) - 2)
end;

procedure TCustomers2F.dbgrdCustomersManagKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TCustomers2F.gridkeyenter;
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

procedure TCustomers2F.qryCustomersBrokerBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit
end;

procedure TCustomers2F.qryCustomersBrokerBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TCustomers2F.qryCustomersManagAllPickGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col: TColumn;
begin
  inherited;
  col := dbgrdCustomersManag.Columns[ColumnIndexByFieldName(dbgrdCustomersManag,
    Sender.FieldName)];
  Text := col.PickList[Sender.AsInteger];
end;

procedure TCustomers2F.qryCustomersManagAllPickSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := dbgrdCustomersManag.Columns
    [ColumnIndexByFieldName(dbgrdCustomersManag, Sender.FieldName)
    ].PickList.IndexOf(Text);
end;

procedure TCustomers2F.PageControl1Change(Sender: TObject);
begin
  inherited;
  // if (qryCustomers.State in dsEditModes) then
  // qryCustomers.Post;
  // if qryAllCust <> nil then
  // begin
  // if (qryAllCust.State in dsEditModes) then
  // qryAllCust.Post;
  // qryAllCust.Close;
  // end;
  case PageControl1.TabIndex of
    1:
      qryAllCust := qryCustomersBroker;
    2:
      qryAllCust := qryCustomersActivity;
    3:
      qryAllCust := qryCustomersMasir;
    4:
      qryAllCust := qryCustomersManag;
  end;
  if qryAllCust <> nil then
    With qryAllCust do
    begin
      Parameters.ParamByName('CustID').Value :=
        qryCustomers.FieldByName('CustID').AsInteger;
      Open;
    end;
end;

procedure TCustomers2F.dbgrdCustomersMasirEditButtonClick(Sender: TObject);
var
  txt: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  If dbgrdCustomersMasir.SelectedIndex = 0 then
  begin
    txt := 'SELECT MasirID,MasirText FROM AddressInMasir';
    if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'مسيرها', txt, ['كد', 'مسير'],
      Results, [50, 600], alLeft) then
    begin
      if not(qryCustomersMasir.State in dsEditModes) then
        qryCustomersMasir.Edit;
      qryCustomersMasir.FieldByName('MasirID').AsString := Results[0];
    end;

  end;
end;

procedure TCustomers2F.dbgrdCustomersMasirKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TCustomers2F.SpeedButton4Click(Sender: TObject);
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

procedure TCustomers2F.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ColorDBEdits(self);
  DMF.qryOstan.Open;
  qryCustomers_OstanChange(nil);
end;

procedure TCustomers2F.BitBtn11Click(Sender: TObject);
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
  qryAllCust.Requery();
end;

procedure TCustomers2F.BitBtn15Click(Sender: TObject);
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

procedure TCustomers2F.btn1Click(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TFormDesignF, FormDesignF, self, 18);
end;

procedure TCustomers2F.btn2Click(Sender: TObject);
begin
  inherited;
  mdiMainF.actCustomersAlternativeF.Execute
end;

procedure TCustomers2F.btnAlldelClick(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي حذف اين  رديف مطمئن هستيد؟') <> mrYes then
    Abort;
  qryAllCust.Delete
end;

procedure TCustomers2F.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  SpeedButtonUseUnits(qryCustomers, 'محل مصرف')
end;

procedure TCustomers2F.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomerGrpID(qryCustomers)
end;

// procedure TCustomers2F.Enter2(CustID: string);
// begin
// CreateMDIForm2(TCustomers2F, Customers2F, MarkettingF);
// with Customers2F do
// begin
// chkAllCusts.Checked := True;
// with qryCustomers do
// begin
// DisableControls;
// Close;
// Filter := 'CustID=' + CustID;
// Filtered := True;
// Open;
// EnableControls
// end;
// end;
// end
procedure TCustomers2F.qryCustomers_OstanChange(Sender: TField);
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

end.
