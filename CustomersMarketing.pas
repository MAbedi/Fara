{ -----------------------------------------------------------------------------
  Unit Name: CustomersMarketing
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit CustomersMarketing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DBCtrls, DB, ADODB, Mask, zAPIBalloon, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ComCtrls, ppTypes, sndkey32, ppParameter,
  CheckLst, Types, ppDesignLayer, System.ImageList, System.Actions;

type
  TCustomersMarketingF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    dbgrdCustomers: TDBGrid;
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
    Label12: TLabel;
    CmbValuationType: TDBComboBox;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    Label22: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    Label24: TLabel;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
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
    actCustomersInterView: TAction;
    TabSheet6: TTabSheet;
    tsActivety: TTabSheet;
    TabSheet9: TTabSheet;
    CmbaccStateDefault: TDBComboBox;
    Label33: TLabel;
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
    qryCustomersSellsDefaultState: TWordField;
    Label40: TLabel;
    cmbSellsDefaultState: TDBComboBox;
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
    Panel9: TPanel;
    BitBtn14: TBitBtn;
    qryCustomersMaxCreditCurrentForm: TBCDField;
    qryCustomersReagentName: TWideStringField;
    qryCustomersTel2: TWideStringField;
    qryCustomersTel3: TWideStringField;
    qryCustomersPersonID3: TIntegerField;
    qryCustomersUseUnitID: TIntegerField;
    Label45: TLabel;
    dbedtPersonID3: TDBEdit;
    SpeedButton7: TSpeedButton;
    dbtxt_PersonID3: TDBText;
    Label46: TLabel;
    dbedtUseUnitID: TDBEdit;
    SpeedButton8: TSpeedButton;
    dbtxt_UseUnitName: TDBText;
    qryUseUnits: TADOQuery;
    qryCustomers_UseUnitName: TStringField;
    strngfldCustomers_PersonID3: TStringField;
    qryCustomersCustomerGrpID2: TIntegerField;
    Label47: TLabel;
    dbedtCustomerGrpID2: TDBEdit;
    SpeedButton9: TSpeedButton;
    dbtxt_CustomerGrpID2: TDBText;
    qryCustomersGroup: TADOQuery;
    qryCustomers_CustomerGrpID2: TStringField;
    qryCustomersacc_CTopicCode3: TStringField;
    DBEdit10: TDBEdit;
    SpeedButton10: TSpeedButton;
    DBText3: TDBText;
    Label48: TLabel;
    qryCustomers__CTopicCodeName2: TStringField;
    DBText4: TDBText;
    SpeedButton11: TSpeedButton;
    Label49: TLabel;
    DBEdit30: TDBEdit;
    qryCustomers__TopicCodeName: TStringField;
    qryCustomersCustAccountNumber: TStringField;
    qryCustomersRegisterNumber: TStringField;
    qryCustomersLastUser: TWideStringField;
    qryCustomersFirstUser: TWideStringField;
    pdbplnmanage: TppDBPipeline;
    RepCustomers7: TMenuItem;
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
    btn1: TBitBtn;
    actInfoSMSF: TAction;
    tsOtherGroup: TTabSheet;
    qryCustomersOtherGroups: TADOQuery;
    qryCustomersOtherGroupsCustID: TIntegerField;
    qryCustomersOtherGroupsCustomerGrpID: TIntegerField;
    GroupBox3: TGroupBox;
    chklstOtherGroup: TCheckListBox;
    qryCustomersHCKharidarTypeCode: TWordField;
    qryCustomersStateCode: TIntegerField;
    qryCustomers_Ostan: TStringField;
    qryCustomersCityCode: TIntegerField;
    qryCustomers_Shahr: TStringField;
    qryCustomerssex: TWordField;
    TabSheet3: TTabSheet;
    pnl1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label37: TLabel;
    Label4: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label58: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label59: TLabel;
    Label14: TLabel;
    Label34: TLabel;
    cmbHCKharidarTypeCode: TDBComboBox;
    cmbsex: TDBComboBox;
    dbedtTel2: TDBEdit;
    edtCustFirstName: TDBEdit;
    edtCustID: TDBEdit;
    edtCustName: TDBEdit;
    edtemail: TDBEdit;
    edtFax: TDBEdit;
    edtMobile: TDBEdit;
    edtTel: TDBEdit;
    edtTel3: TDBEdit;
    Panel11: TPanel;
    Image1: TImage;
    edtInfoDate: TDBEdit;
    edtEstablishDate: TDBEdit;
    edtManageName: TDBEdit;
    Label25: TLabel;
    edtManagerSells: TDBEdit;
    Label26: TLabel;
    Label15: TLabel;
    edtMaxCredit: TDBEdit;
    edtMaxCreditCurrentForm: TDBEdit;
    Label42: TLabel;
    Panel5: TPanel;
    Label18: TLabel;
    Label39: TLabel;
    cmbSellsMethod: TDBComboBox;
    cmbSellsEmporium: TDBComboBox;
    edtCustomersRow: TDBEdit;
    edtContactRate: TDBEdit;
    Label19: TLabel;
    Label38: TLabel;
    dbedtReagentName: TDBEdit;
    Label43: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtDiscountNote: TDBEdit;
    edtDiscount: TDBEdit;
    edtDayTime: TDBEdit;
    CmbConveyKind: TDBComboBox;
    Label32: TLabel;
    CmbArzTypeID: TDBComboBox;
    edtCustAccountNumber: TDBEdit;
    dblkcbb_AccountKind: TDBLookupComboBox;
    Label1: TLabel;
    Label36: TLabel;
    CmbGrpActionCustomer: TDBComboBox;
    Label13: TLabel;
    GroupBox4: TGroupBox;
    dbgrdCustomersMasir: TDBGrid;
    Panel8: TPanel;
    BitBtn13: TBitBtn;
    Panel12: TPanel;
    DBText2: TDBText;
    SpeedButton3: TSpeedButton;
    edtPersonID1: TDBEdit;
    Label16: TLabel;
    qryCustomersActivityNumber: TIntegerField;
    qryCustomersActivityCapacity: TIntegerField;
    qryCustomersActivityNumberCapacity: TIntegerField;
    DataSetDeletedsCustomersActivity: TDataSetDelete;
    DataSetDeletedsCustomersBroker: TDataSetDelete;
    DataSetDeletedsCustomersManag: TDataSetDelete;
    DataSetDeletedsCustomersMasir: TDataSetDelete;
    Label21: TLabel;
    Label5: TLabel;
    Label20: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    SpeedButton4: TSpeedButton;
    dbtxt_MasirID: TDBText;
    Label50: TLabel;
    Label51: TLabel;
    Label35: TLabel;
    Label23: TLabel;
    Label52: TLabel;
    edtpobox: TDBEdit;
    edtWebSite: TDBEdit;
    edtPostalCode: TDBEdit;
    dbmmoAddress: TDBMemo;
    dbedtMasirID: TDBEdit;
    dblkcbb_Shahr: TDBLookupComboBox;
    dblkcbb_Ostan: TDBLookupComboBox;
    edtNationalID: TDBEdit;
    edtEconomicNumber: TDBEdit;
    edtRegisterNumber: TDBEdit;
    GroupBox5: TGroupBox;
    dbmmoCustomerNote: TDBMemo;
    Panel13: TPanel;
    lblFirstUser: TLabel;
    dbtxtFirstUser: TDBText;
    dbtxtUserName: TDBText;
    lbluserName: TLabel;
    GroupBox6: TGroupBox;
    dbmmoCustomerCheckNote: TDBMemo;
    qryCustomersTypeInfo: TADOQuery;
    qryCustomersTypeInfoPersonelNo: TIntegerField;
    qryCustomersTypeInfoFormType: TSmallintField;
    qryCustomersTypeInfoFormInfoID: TIntegerField;
    qryCustomersTypeInfo_FormType: TStringField;
    qryCustomersTypeInfo_FormInfoID: TStringField;
    srcCustomersTypeInfo: TDataSource;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    qryLookUpKind: TADOQuery;
    srcCustomersActivityElective: TDataSource;
    qryCustomersActivityElective: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    qryCustomersActivityElectiveElective: TBooleanField;
    pnlCustomersActivityElective: TPanel;
    grdCustomersActivityElective: TDBGrid;
    qryCustomersActivityActivityNote: TWideStringField;
    qryCustomersActivityElectiveActivityNote: TWideStringField;
    BitBtn16: TBitBtn;
    qryCustomersEditDateTime: TDateTimeField;
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
    procedure actChangeCustIDExecute(Sender: TObject);
    procedure actGetExelExecute(Sender: TObject);
    procedure SBtnInfoWeight1Click(Sender: TObject);
    procedure SBtnInfoWeight2Click(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure btnSelectClick(Sender: TObject);
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
    procedure qryCustomersManagStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryCustomersManagStateSetText(Sender: TField; const Text: String);
    procedure PageControl1Change(Sender: TObject);
    procedure dbgrdCustomersMasirEditButtonClick(Sender: TObject);
    procedure dbgrdCustomersMasirKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
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
    procedure qryCustomers_OstanChange(Sender: TField);
    procedure Image1DblClick(Sender: TObject);
    procedure qryCustomersQryBeforeDelete(DataSet: TDataSet);
    procedure qryCustomersActivityElectiveBeforeOpen(DataSet: TDataSet);
    procedure grdCustomersActivityElectiveKeyPress(Sender: TObject;
      var Key: Char);
    procedure grdCustomersActivityElectiveDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdCustomersActivityElectiveDblClick(Sender: TObject);
    procedure grdCustomersActivityElectiveKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure qryCustomersActivityElectiveAfterInsert(DataSet: TDataSet);
    procedure BitBtn16Click(Sender: TObject);
  private
    WHERESQL: String;
    InfoWeight1, InfoWeight2: Real;
    GroupType, CustomerGrpID: Integer;
    CustomerCaption, mySelected, GrpIDInCmb: String;
    DataSetInsert: Boolean;
    BtmTiket, BtmTiketNot: TBitmap;
    procedure GetInfoWeight(TypeNo: Byte);
    procedure gridkeyenter(Sender: TObject; var Key: Char;
      Selected_Index: Integer);
    procedure UpdateList;
    procedure InitBMP;
    procedure ToggleCheck(B: Boolean = True);
    // procedure Enter2(CustID: string);

    { Private declarations }
  public
    { Public declarations }
    procedure Enter(CustID: Integer);
  end;

var
  CustomersMarketingF: TCustomersMarketingF;

implementation

uses DM, GlobalPro, mmessage, searchCode_ADO, search2, FormFunctions,
  DBGrid2Print,  GetExcel, sort2, selected,
  mdiMain, StrUtils, CPortFunctions, FaraConsts, SMSUnit, ReciptsFunctions,
  FormDesign, ReciptsGrid, main, infoSMS, Marketting, CustomersTax, ScanImage,
  ViewFileOnServer;

{$R *.dfm}

procedure TCustomersMarketingF.Enter(CustID: Integer);
begin
  if ({MainF.mnuActCustomersF1.Visible or MainF.mnuActCustomersF2.Visible or}
    MainF.mnuActCustomersF3.Visible) and mdiMainF.ActCustomersF.Execute then
    With CustomersMarketingF do
    begin
      chkAllCusts.Checked := True;
      qryCustomers.Locate('CustID', CustID, []);
    end;
end;

procedure TCustomersMarketingF.FormActivate(Sender: TObject);
begin
  inherited;
  if qrySellsInfo52Job.Active then
    qrySellsInfo52Job.Requery();
end;

procedure TCustomersMarketingF.FormCreate(Sender: TObject);
var
  i: Byte;
  NewItem: TMenuItem;
  kind: String;
  B: Boolean;
begin
  inherited;
  qryCustomersGroup.Open;
  InitBMP;
  AddcmbHCKharidarTypeCode(cmbHCKharidarTypeCode);
  InitConstTypeOfSale(CmbValuationType);
  PageControl1.TabIndex := 0;
  SetLookUpCash(qryCustomers);
  SetLookUpCash(qryCustomersBroker);
  SetLookUpCash(qryCustomersActivity);
  SetLookUpCash(qryCustomersActivityElective);
  SetLookUpCash(qryCustomersManag);
  SetLookUpCash(qryCustomersMasir);
  qrySellsTypes.Open;
  qrySellsInfo46SendKind.Open;
  qrySellsInfo52Job.Open;
  GroupType := var_glb_gParam;
  CustomerCaption := '„‘ —Ì';
  if GroupType = 8 then
    CustomerCaption := 'ÊÌ“Ì Ê—';
  Caption := StringReplace(Caption, '„‘ —Ì', CustomerCaption, [rfReplaceAll]);
  GroupBox2.Caption := StringReplace(GroupBox2.Caption, '„‘ —Ì',
    CustomerCaption, [rfReplaceAll]);
  Label2.Caption := StringReplace(Label2.Caption, '„‘ —Ì', CustomerCaption,
    [rfReplaceAll]);
  Label3.Caption := StringReplace(Label3.Caption, '„‘ —Ì', CustomerCaption,
    [rfReplaceAll]);
  chkAllCusts.Caption := StringReplace(chkAllCusts.Caption, '„‘ —Ì',
    CustomerCaption, [rfReplaceAll]);
  qryCustomers.FieldByName('CustID').DisplayLabel :=
    StringReplace(qryCustomers.FieldByName('CustID').DisplayLabel, '„‘ —Ì',
    CustomerCaption, [rfReplaceAll]);
  qryCustomers.FieldByName('CustName').DisplayLabel :=
    StringReplace(qryCustomers.FieldByName('CustName').DisplayLabel, '„‘ —Ì',
    CustomerCaption, [rfReplaceAll]);
  qryCustomers.FieldByName('CustName').ReadOnly := opt.EditCustNameLevelID;

  qryCustomers.FieldByName('InfoWeight').ReadOnly := optPort.ComPortKind
    in [1, 2, 3, 5];

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
    ')-LEN(CustomerGrpName)) + ''«“ ﬂœ'' + str(StartCode)' +
    '+ ''  « ﬂœ '' + str(FinishCode) AS  CustomerGrpName ' +
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

  RequiredCustomers(qryCustomers, nil);

end;

procedure TCustomersMarketingF.InitBMP;
begin
  BtmTiket := TBitmap.Create;
  with BtmTiket do
    try
      Transparent := True;
      LoadFromResourceName(HInstance, 'Tiket');
    finally
      // Free
    end;
  BtmTiketNot := TBitmap.Create;
  with BtmTiketNot do
    try
      Transparent := True;
      LoadFromResourceName(HInstance, 'TiketNot');
    finally
      // Free
    end;
end;

procedure TCustomersMarketingF.ALLLookUpGetText(Sender: TField;
  var Text: String;

  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TCustomersMarketingF.ALLLookUpSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TCustomersMarketingF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(dbgrdCustomers, 1);
  SetColSize(dbgrdCustomersBroker, 1);
  SetColSize(dbgrdCustomersActivity, 0);
  SetColSize(grdCustomersActivityElective, 1);
  SetColSize(dbgrdCustomersManag, 1);
  SetColSize(dbgrdCustomersMasir, 1);
  Panel1.Width := (Panel3.Width * 3) div 8;
end;

procedure TCustomersMarketingF.srcCustomersStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCustomers.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, 'customers', '', self.Name);
end;

procedure TCustomersMarketingF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryCustomers, 'acc_DetailCode', 'acc_TopicCode',
    qryCustomers.FieldByName('acc_TopicCode').AsLargeInt > 0)
end;

procedure TCustomersMarketingF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TCustomersMarketingF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if cmbGroups.ItemIndex = 0 then
    Text := 'Â„‹‹‹Â ê—ÊÂÂ«'
  else
    Text := cmbGroups.Text;
end;

procedure TCustomersMarketingF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCustomersMarketingF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCustomers.DisableControls;
    PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryCustomers.EnableControls;
  end; // try
end;

procedure TCustomersMarketingF.qryCustomersAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TCustomersMarketingF.qryCustomersAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
  DataSet.FieldByName('EditDateTime').AsDateTime := Now;
end;

procedure TCustomersMarketingF.qryCustomersAfterInsert(DataSet: TDataSet);
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
    zbal.Prompt.Text := '·ÿ›« ﬁ»· «“  ⁄—Ì› ' + CustomerCaption +
      ' ÃœÌœ ê—ÊÂ ¬‰—« „‘Œ’ ﬂ‰Ìœ.';

    zbal.Title := '«Œÿ«—!';
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
        zbal.Title := 'ﬂœ ‰«„⁄ »—';
        zbal.Prompt.Text :=
          'ﬂœ ÃœÌœ  Œ’Ì’ Ì«› Â ‰«„⁄ »— «” . ·ÿ›« ﬂœ —« »’Ê—  œ” Ì Ê«—œ ﬂ‰Ìœ.';
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

procedure TCustomersMarketingF.GetInfoWeight;
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

procedure TCustomersMarketingF.qryCustomersAfterPost(DataSet: TDataSet);
begin
  inherited;
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

  if qryCustomersActivityElective.Active then
  begin
    if (qryCustomersActivityElective.State in dsEditModes) then
      qryCustomersActivityElective.Post;
    qryCustomersActivityElective.UpdateBatch;
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

  BigMessage('À»  ‘œ.', 1);

  if DataSetInsert then
    actSmsSend.Execute;
  DataSetInsert := False;
end;

procedure TCustomersMarketingF.qryCustomersBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰  ' + CustomerCaption + ' „ÿ„∆‰ Â” Ìœø') <> mrYes
  then
    Abort;
end;

procedure TCustomersMarketingF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryCustomers, 'acc_CTopicCode3', '', False)
end;

procedure TCustomersMarketingF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryCustomers)
end;

procedure TCustomersMarketingF.SpeedButton1Click(Sender: TObject);
var
  // i: Integer;
  c: String;
  txt: String;
  s: String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID, CustomerGrpName + ''            «“ ﬂœ '' + ltrim(str(StartCode))'
    + '+ ''  « ﬂœ '' + ltrim(str(FinishCode)) AS  CustomerGrpName ' +
    ' FROM CustomersGroup  WHERE (GroupType = ' + IntToStr(GroupType) + ') ';
  s := searchCode_ADOF.SearchCode(DMF.adcBSell, c, 'ê—ÊÂÂ«Ì  ' + CustomerCaption
    + '«‰  ', txt, ['òœ', '‰«„ ê—ÊÂ'], alLeft);
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

procedure TCustomersMarketingF.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TCustomersMarketingF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCustomersMarketingF.qryCustomersServiceCalcTypeChange
  (Sender: TField);
begin
  inherited;
  // EdtServicePrice.Enabled:=qryCustomersServiceCalcType.AsInteger in [1,2,3];
  // LblServicePrice.Enabled:=EdtServicePrice.Enabled;
end;

procedure TCustomersMarketingF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(dbgrdCustomers);
  SaveColWidth(dbgrdCustomersBroker);
  SaveColWidth(dbgrdCustomersActivity);
  SaveColWidth(dbgrdCustomersManag);
  SaveColWidth(dbgrdCustomersMasir);
  SaveColWidth(grdCustomersActivityElective);
  BtmTiket.Free;
  BtmTiketNot.Free;
end;

procedure TCustomersMarketingF.cmbGroupsChange(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  CustomerGrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  qryCustomersGroup.Locate('CustomerGrpID', CustomerGrpID, []);

  UpDateListCustomers(1, qryCustomers, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL);
  For i := 0 to Mnu_AllClick.Count - 1 do
  begin
    Mnu_AllClick.Items[i].Checked :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex])
      = Mnu_AllClick.Items[i].Tag;
    Mnu_AllClick.Items[i].Default := Mnu_AllClick.Items[i].Checked;
  end;
  cmbGroups.Hint := cmbGroups.Text;
  InitChkList(chklstOtherGroup, cmbGroups);
end;

procedure TCustomersMarketingF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrdCustomers, actSmsSend);
end;

procedure TCustomersMarketingF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryCustomers, qryCustomersManag, SmsCustomers, 0, GroupType, 1);
end;

procedure TCustomersMarketingF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustomers);
end;

procedure TCustomersMarketingF.qryCustomersBeforePost(DataSet: TDataSet);
var
  B: Boolean;
begin
  inherited;
  if not CheckRequiredFields(qryCustomers) then
    Abort;
  with DMF.qryTmpTmp do
  begin
    Active := False;

    SQL.Text :=
      'Select StartCode,FinishCode from CustomersGroup where CustomerGrpID=' +
      qryCustomers.FieldByName('CustomerGrpID').AsString;
    Active := True;
    if (qryCustomers.FieldByName('CustID').AsInteger < Fields[0].AsInteger) or
      (qryCustomers.FieldByName('CustID').AsInteger > Fields[1].AsInteger) then
    begin
      zbal.Title := 'ﬂœ ‰«„⁄ »—';
      zbal.Prompt.Text := 'ﬂœ ÃœÌœ  Œ’Ì’ Ì«› Â Œ«—Ã «“„ÕœÊœÂ  ⁄—Ì› ‘œÂ «” .';
      zbal.Show(edtCustID);
      edtCustID.SetFocus;
      Abort;
    end; // if
  end; // with
  // if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø')<>mrYes then abort;
  TrimStringFields(qryCustomers);
  UnicFieldName(DataSet.FieldByName('CustID'), DataSet.FieldByName('CustName'),
    'Customers', qryCustomersCustomerGrpID.AsInteger);

  if (qryCustomersHCKharidarTypeCode.AsInteger = 1) then
    if not ValidateCodeMeli(qryCustomers.FieldByName('NationalID').AsString)
    then
    begin
      Warn('ﬂœ „·Ì „⁄ »— ‰„Ì »«‘œ');
      Abort;
    end;

  if UnicFieldMobile(qryCustomers) then
    Abort;

  if ((opt.AllControls and Integer(CHkUnicNationalID)) <> 0) or
    ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0) then
  begin
    B := UnicFieldName(DataSet.FieldByName('CustID'),
      DataSet.FieldByName('NationalID'), 'Customers', 0);
    if not B and ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0)
    then
      Abort;
  end;

  if ((opt.AllControls and Integer(CHkUnicRegisterNumber)) <> 0) or
    ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0) then
  begin
    B := UnicFieldName(DataSet.FieldByName('CustID'),
      DataSet.FieldByName('RegisterNumber'), 'Customers', 0);
    if not B and ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0)
    then
      Abort;
  end;

end;

procedure TCustomersMarketingF.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  UpDateListCustomers(2, qryCustomers, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL)
end;

procedure TCustomersMarketingF.chklstOtherGroupClick(Sender: TObject);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit;
end;

procedure TCustomersMarketingF.actSearch_Execute(Sender: TObject);
var
  txt: String;
  B: Boolean;
  Results: array [0 .. 6] of String;
  i: Integer;
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    i := 0
  else
    i := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  txt := 'SELECT  CustID,ISNULL(CustFirstName, '''') + '' '' + CustName AS CustName,Tel,Fax,Address,FirstBalance,CustomerGrpID FROM Customers '
    + 'WHERE CustomerGrpID in (SELECT CustomerGrpID FROM CustomersGroup WHERE GroupType = 0)';
  if not chkAllCusts.Checked then
    txt := 'SELECT  CustID, ISNULL(CustFirstName, '''') + '' '' + CustName AS CustName,Tel,Fax,Address,FirstBalance,CustomerGrpID FROM Customers '
      + 'WHERE     CustomerGrpID = ' + IntToStr(i);
  B := searchCode_ADOF.SearchCode2(DMF.adcBSell, '  ' + CustomerCaption +
    ' Â«  ', txt, ['òœ', '‰«„', ' ·›‰', '›ò”', '¬œ—”', '„«‰œÂ «» œ«Ì ”«·'],
    Results, [30, 150, 80, 80, 200, 100, 0], alLeft);
  if B then
  begin
    for i := 0 to cmbGroups.Items.Count - 1 do
      if Integer(cmbGroups.Items.Objects[i]) = StrToInt(Results[6]) then
        Break;
    cmbGroups.ItemIndex := i;
    qryCustomers.Locate('CustID', Results[0], []);
  end; // if                                             YearID
end;

procedure TCustomersMarketingF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TCustomersMarketingF.dbgrdCustomersKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCustomers.FieldByName('CustID'));
end;

procedure TCustomersMarketingF.ppLBGroupsGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if chkAllCusts.Checked = True then
    Text := 'Â„Â ê—ÊÂ Â«'
  else
    Text := 'ê—ÊÂ : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

procedure TCustomersMarketingF.ppTxtServiceCalcTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text:=CmbServiceCalcType.Items.Strings[StrToInt(Text)]
end;

procedure TCustomersMarketingF.AllClickClick(Sender: TObject);
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

procedure TCustomersMarketingF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryCustomers, 'acc_CTopicCode', '', False)
end;

procedure TCustomersMarketingF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryCustomers, 'acc_CTopicCode2', '', False)
end;

procedure TCustomersMarketingF.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

procedure TCustomersMarketingF.DBEdit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

procedure TCustomersMarketingF.qryCustomersCustIDChange(Sender: TField);
begin
  inherited;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryCustomers.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      Sender.AsInteger;

end;

procedure TCustomersMarketingF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger];
end;

procedure TCustomersMarketingF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TCustomersMarketingF.N10Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(dbgrdCustomers, 0);
end;

procedure TCustomersMarketingF.N4Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustomers);
end;

procedure TCustomersMarketingF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCustomersMarketingF.actViewFileExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(qryCustomers.FieldByName('CustID').AsString,
    'CustomersFiles', False);
end;

procedure TCustomersMarketingF.Mnu_AllClickClick(Sender: TObject);

begin
  inherited;
  ChangeCustomerGroup(Sender, qryCustomers, CustomerCaption)
end;

procedure TCustomersMarketingF.sdPopup(Sender: TObject);
begin
  inherited;
  Mnu_AllClick.Caption := ' €ÌÌ— ê—ÊÂ  ' + CustomerCaption + ' <> ' +
    qryCustomers.FieldByName('CustID').AsString
end;

procedure TCustomersMarketingF.actChangeCustIDExecute(Sender: TObject);

begin
  inherited;
  ChangeCustID(qryCustomers, cmbGroups, CustomerCaption)
end;

procedure TCustomersMarketingF.actGetExelExecute(Sender: TObject);
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

procedure TCustomersMarketingF.actInfoSMSFExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryCustomers, 'Mobile', False);
end;

procedure TCustomersMarketingF.SBtnInfoWeight1Click(Sender: TObject);
begin
  inherited;
  GetInfoWeight(1)
end;

procedure TCustomersMarketingF.SBtnInfoWeight2Click(Sender: TObject);
begin
  inherited;
  GetInfoWeight(2)
end;

procedure TCustomersMarketingF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
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
  UpdateList;

  GetPersonalPicture(Image1.Picture, qryCustomers.FieldByName('CustID')
    .AsInteger);

  // With qryPersonelTypeInfo do
  // begin
  // Active := False;
  // ParamByName('CustId').Value := qryCustomersCustID.AsInteger;
  // Active := True;
  // end;

end;

procedure TCustomersMarketingF.btnSelectClick(Sender: TObject);
var
  txt: String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup  WHERE (GroupType = '
    + IntToStr(GroupType) + ') ';
  mySelected := selectedF.ShowSelect(DMF.adcBSell, '«‰ Œ«» ê—ÊÂ', txt,
    ['ﬂœ', 'ê—ÊÂ'], alLeft, [50, 400], mySelected);
  if Length(mySelected) > 1 then
    UpDateListCustomers(3, qryCustomers, GroupType, cmbGroups, chkAllCusts,
      mySelected, GrpIDInCmb, WHERESQL)
end;

procedure TCustomersMarketingF.actCustomersInterViewExecute(Sender: TObject);
begin
  inherited;
  mdiMainF.actCustomersInterView.Execute
end;

procedure TCustomersMarketingF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  // SpeedButtonCustomers(qryCustomers, (Sender as TSpeedButton).Hint)
  SpeedButtonCustomersGroupTypes(qryCustomersPersonID1, '8,11')
end;

procedure TCustomersMarketingF.dbgrdCustomersBrokerEditButtonClick
  (Sender: TObject);
begin
  inherited;
  If dbgrdCustomersBroker.SelectedIndex = 0 then
  begin

    if not(qryCustomersBroker.State in dsEditModes) then
      qryCustomersBroker.Edit;
    SpeedButtonCustomersGroupTypes(qryCustomersBrokerPersonID2, '8,11')
  end;

end;

procedure TCustomersMarketingF.dbgrdCustomersBrokerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    dbgrdCustomersBrokerEditButtonClick(Sender);
  if Key = #13 then
    qryCustomersBroker.Append;
end;

procedure TCustomersMarketingF.qryCustomersBrokerAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryCustomers.FieldByName('CustID').AsInteger;
end;

procedure TCustomersMarketingF.dbgrdCustomersActivityEditButtonClick
  (Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
begin
  inherited;
  if qryCustomersActivity.FieldByName('SellsType').AsInteger = 0 then
  begin
    Warn('ê—ÊÂ «ÿ·«⁄«  —« „‘Œ’ ﬂ‰Ìœ');
    Exit;
  end;
  If dbgrdCustomersActivity.SelectedIndex = 1 then
  begin
    txt := 'SELECT  RIGHT(SellsCode, LEN(SellsCode) - 2) AS SellsCode, SellsName FROM SellsInfo WHERE SellsType = '
      + qryCustomersActivity.FieldByName('SellsType').AsString;
    if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'ê—ÊÂ', txt, ['ﬂœ', '⁄‰Ê«‰'],
      Results, [50, 100], alLeft) then
    begin
      if not(qryCustomersActivity.State in dsEditModes) then
        qryCustomersActivity.Edit;
      qryCustomersActivity.FieldByName('SellsCode').AsString :=
        qryCustomersActivity.FieldByName('SellsType').AsString + Results[0];
    end;

  end;
end;

procedure TCustomersMarketingF.dbgrdCustomersActivityKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
  begin
    dbgrdCustomersActivityEditButtonClick(Sender);
    Exit;
  end;
  gridkeyenter(Sender, Key, 1)
end;

procedure TCustomersMarketingF.qryCustomersQryBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰  —œÌ› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TCustomersMarketingF.qryCustomersActivityElectiveAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TCustomersMarketingF.qryCustomersActivityElectiveBeforeOpen
  (DataSet: TDataSet);
var
  CustID: Integer;
begin
  inherited;
  CustID := qryCustomersCustID.AsInteger;
  if CustID <> 0 then
    With DMF.qryTmpTmp do
    begin
      SQL.Text := format('DECLARE @PersonID1 INT= %d', [CustID]);
      SQL.Add(format('DECLARE @CustomerGrpID INT= %d', [CustomerGrpID]));
      SQL.Add('INSERT INTO CustomersActivity');
      SQL.Add('(SellsType, SellsCode, PersonID1)');
      SQL.Add('SELECT SellsInfo.SellsType, SellsInfo.SellsCode, @PersonID1 AS PersonID1');
      SQL.Add('FROM SellsInfo INNER JOIN');
      SQL.Add('SellsTypes ON SellsInfo.SellsType = SellsTypes.SellsType FULL OUTER JOIN');
      SQL.Add('(SELECT SellsType, SellsCode');
      SQL.Add('FROM CustomersActivity AS CustomersActivity_1');
      SQL.Add('WHERE (PersonID1 = @PersonID1)');
      SQL.Add(') AS derivedtbl_1 ON SellsInfo.SellsType = derivedtbl_1.SellsType');
      SQL.Add('AND SellsInfo.SellsCode = derivedtbl_1.SellsCode');
      SQL.Add('WHERE (SellsTypes.IsElective = 1) AND (derivedtbl_1.SellsType IS NULL) AND (derivedtbl_1.SellsCode IS NULL)');
      SQL.Add('AND (  SellsTypes.SellsType IN  (SELECT SellsType From dbo.CustomersGroupSellsTypeCodes( @CustomerGrpID )))');
      SQL.Add('ORDER BY SellsInfo.SellsType, SellsInfo.SellsCode');
      ExecSQL;
    end;

end;

procedure TCustomersMarketingF.qryCustomersActivitySellsCodeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := RightStr(qryCustomersActivity.FieldByName('SellsCode').AsString,
    Length(qryCustomersActivity.FieldByName('SellsCode').AsString) - 2)
end;

procedure TCustomersMarketingF.dbgrdCustomersManagKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key, 1)
end;

procedure TCustomersMarketingF.grdCustomersActivityElectiveDblClick
  (Sender: TObject);
begin
  inherited;
  ToggleCheck(not qryCustomersActivityElectiveElective.AsBoolean)
end;

procedure TCustomersMarketingF.grdCustomersActivityElectiveDrawColumnCell
  (Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  grdCustomersActivityElective.DefaultDrawColumnCell(Rect, DataCol,
    Column, State);
  if DataCol = 2 then
  begin
    grdCustomersActivityElective.Canvas.Rectangle(Rect);
    if qryCustomersActivityElectiveElective.AsBoolean then
      grdCustomersActivityElective.Canvas.Draw(Rect.Left, Rect.Top, BtmTiket)
    else
      grdCustomersActivityElective.Canvas.Draw(Rect.Left, Rect.Top, BtmTiketNot)
  end;
end;

procedure TCustomersMarketingF.ToggleCheck(B: Boolean = True);
begin
  with qryCustomersActivityElective do
  begin
    Edit;
    qryCustomersActivityElectiveElective.AsBoolean := B;
    Post;
  end;
end;

procedure TCustomersMarketingF.grdCustomersActivityElectiveKeyDown
  (Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (grdCustomersActivityElective.SelectedIndex < 3) and (Key = VK_SPACE) then
    ToggleCheck(not qryCustomersActivityElectiveElective.AsBoolean)
end;

procedure TCustomersMarketingF.grdCustomersActivityElectiveKeyPress
  (Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key, 2)
end;

procedure TCustomersMarketingF.gridkeyenter(Sender: TObject; var Key: Char;
  Selected_Index: Integer);
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
      if grd.Columns[curIndex].ButtonStyle = cbsEllipsis then
      begin
        // in [1,17,19,23,24,25,26] then begin
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
          grd.SelectedIndex := Selected_Index;
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

procedure TCustomersMarketingF.Image1DblClick(Sender: TObject);
begin
  inherited;
  try
    ScanImageF.ScanImage(DMF.adcBSell, 'Customers',
      qryCustomers.FieldByName('CustID').AsString, 1, False,
      qryCustomers.FieldByName('CustFirstName').AsString + ' ' +
      qryCustomers.FieldByName('CustName').AsString, True, '', True, True,
      opt.ScanState, opt.ArchiveScan, False)
  finally
    qryCustomersAfterScroll(qryCustomers);
  end;
end;

procedure TCustomersMarketingF.qryCustomersBrokerBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit
end;

procedure TCustomersMarketingF.qryCustomersBrokerBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TCustomersMarketingF.qryCustomersManagStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col: TColumn;
begin
  inherited;
  col := dbgrdCustomersManag.Columns[ColumnIndexByFieldName(dbgrdCustomersManag,
    'State')];
  Text := col.PickList[Sender.AsInteger];
end;

procedure TCustomersMarketingF.qryCustomersManagStateSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := dbgrdCustomersManag.Columns
    [ColumnIndexByFieldName(dbgrdCustomersManag, 'State')
    ].PickList.IndexOf(Text);
end;

procedure TCustomersMarketingF.UpdateList;
begin
  case PageControl1.TabIndex of
    1:
      begin
        With qryCustomersActivity do
        begin
          Close;
          Parameters.ParamByName('CustID').Value :=
            qryCustomers.FieldByName('CustID').AsInteger;
          Open;
        end;
        With qryCustomersActivityElective do
        begin
          Close;
          Parameters.ParamByName('CustID').Value :=
            qryCustomers.FieldByName('CustID').AsInteger;
          Parameters.ParamByName('CustomerGrpID').Value := CustomerGrpID;
          Open;
        end;

      end;

    2:
      With qryCustomersManag do
      begin
        Close;
        Parameters.ParamByName('CustID').Value :=
          qryCustomers.FieldByName('CustID').AsInteger;
        Open;
      end;
    3:
      begin
        With qryCustomersBroker do
        begin
          Close;
          Parameters.ParamByName('CustID').Value :=
            qryCustomers.FieldByName('CustID').AsInteger;
          Open;
        end;
        With qryCustomersMasir do
        begin
          Close;
          Parameters.ParamByName('CustID').Value :=
            qryCustomers.FieldByName('CustID').AsInteger;
          Open;
        end;
      end;
  end;

end;

procedure TCustomersMarketingF.PageControl1Change(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TCustomersMarketingF.dbgrdCustomersMasirEditButtonClick
  (Sender: TObject);
var
  txt: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  If dbgrdCustomersMasir.SelectedIndex = 0 then
  begin
    txt := 'SELECT MasirID,MasirText FROM AddressInMasir';
    if searchCode_ADOF.SearchCode2(DMF.adcBSell, '„”Ì—Â«', txt, ['ﬂœ', '„”Ì—'],
      Results, [50, 600], alLeft) then
    begin
      if not(qryCustomersMasir.State in dsEditModes) then
        qryCustomersMasir.Edit;
      qryCustomersMasir.FieldByName('MasirID').AsString := Results[0];
    end;

  end;
end;

procedure TCustomersMarketingF.dbgrdCustomersMasirKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key, 1)
end;

procedure TCustomersMarketingF.SpeedButton4Click(Sender: TObject);
var
  txt: String;
  B: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT MasirID,MasirText FROM AddressInMasir';
  B := searchCode_ADOF.SearchCode2(DMF.adcBSell, '„”Ì—Â«', txt, ['ﬂœ', '„”Ì—'],
    Results, [50, 600], alLeft);
  if B then
  begin
    if not(qryCustomers.State in dsEditModes) then
      qryCustomers.Edit;
    qryCustomers['MasirID'] := Results[0];
  end;
end;

procedure TCustomersMarketingF.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ColorDBEdits(self);
  DMF.qryOstan.Open;
end;

procedure TCustomersMarketingF.qryCustomers_OstanChange(Sender: TField);
begin
  inherited;
  With DMF.qryShahr do
  begin
    Active := False;
    Parameters.ParamByName('OstanCode').Value :=
      qryCustomersStateCode.AsInteger;
    Active := True;
  end;
end;

procedure TCustomersMarketingF.BitBtn11Click(Sender: TObject);
var
  txt, mySelected: String;
begin
  inherited;
  txt := 'SELECT Customers.CustID, Customers.CustName FROM Customers ' +
    'INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + 'WHERE CustomersGroup.GroupType in(8,11) AND ( Customers.CustID > 0 ) and (NOT (Customers.CustID IN'
    + ' (SELECT PersonID2 FROM CustomersBroker' + ' WHERE (PersonID1 = ' +
    qryCustomers.FieldByName('CustID').AsString + '))))';
  mySelected := selectedF.ShowSelect(DMF.adcBSell, '«‰ Œ«» Ê«”ÿ', txt,
    ['ﬂœ', 'Ê«”ÿ'], alLeft, [50, 400], mySelected);
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

procedure TCustomersMarketingF.BitBtn15Click(Sender: TObject);
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

procedure TCustomersMarketingF.BitBtn16Click(Sender: TObject);
var
  txt: String;
  B: Boolean;
  Results: array [0 .. 3] of String;
  i: Integer;
begin
  inherited;
  txt := 'SELECT CustomersActivity.SellsType, CustomersActivity.SellsCode, ' +
    ' SellsTypes.SellsTypeName, SellsInfo.SellsName' +
    ' FROM CustomersActivity INNER JOIN' +
    ' SellsTypes ON CustomersActivity.SellsType = SellsTypes.SellsType INNER JOIN'
    + ' SellsInfo ON CustomersActivity.SellsType = SellsInfo.SellsType AND CustomersActivity.SellsCode ='
    + ' SellsInfo.SellsCode WHERE (CustomersActivity.PersonID1 = %d)';
  txt := format(txt, [qryCustomersCustID.AsInteger]);
  B := searchCode_ADOF.SearchCode2(DMF.adcBSell, tsActivety.Caption, txt,
    ['òœ ê—ÊÂ', '⁄‰Ê«‰ ê—ÊÂ', 'òœ', '⁄‰Ê«‰'], Results,
    [80, 80, 200, 200], alLeft);
  if B then
  begin
    qryCustomersActivity.Locate('SellsType;SellsCode',
      VarArrayOf([Results[0], Results[1]]), []);
    qryCustomersActivityElective.Locate('SellsType;SellsCode',
      VarArrayOf([Results[0], Results[1]]), []);
  end;
end;

procedure TCustomersMarketingF.btn1Click(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TFormDesignF, FormDesignF, self, 18)
end;

procedure TCustomersMarketingF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  SpeedButtonUseUnits(qryCustomers, '„Õ· „’—›')
end;

procedure TCustomersMarketingF.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomerGrpID(qryCustomers)
end;

end.
