unit DM;

interface

uses
  SysUtils, Classes, ADODB, GlobalPro, strUtils, ppCtrls, ppPrnabl,
  ppClass, ppReport, ppRegion, ppTypes, Forms, DBGridEh, Vcl.DBGrids, StdCtrls,
  DateUtils, CedarDbGrid, Vcl.Dialogs, System.Variants, Vcl.Imaging.pngimage,
  FileCtrl, DBCtrls, Controls, Math, zAPIBalloon, ppComm, ppDBPipe, ExtCtrls,
  FaraDesktopAlert, wsClasses, WorkflowDm, ppDB, ppRelatv, ppEndUsr, REST.Types,
  System.IOUtils, Menus, IPPeerClient, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, UpdateExe,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, sSkinManager;

type
  TSatueLevel = (AddLevel, EdtLevel, ChgLevel, PrntLevel, OtrLevel, RelLevel,
    DelLevel, edtState2, edtState3, AccessPermanent, AccessCertain, DelRowLevel,
    ShowLevelNote, EditLevelNote);

  TPrintKind = (pkPrint, pkSendMali, psSendFlow);

  TStore = record
    name: String;
    code: Integer;
    ValuationType: Byte;
    TopicCode: Largeint;
    DetailCode: Integer;
    CTopicCode: Integer;
    EntityDisplayType: Byte;
    StoreKind: Byte;
    // EntityCaption: string;

    // WeightCaption: string;
  end; // TStore

  TDmF = class(TDataModule)
    adcBSell: TADOConnection;
    qryTmpTmp: TADOQuery;
    adcAccounting: TADOConnection;
    adcFaraSystem: TADOConnection;
    qryGlbTmpTmp: TADOQuery;
    qryAccounting: TADOQuery;
    adcOldAccounting: TADOConnection;
    qry_Temp: TADOQuery;
    qryAccOldAndNew: TADOQuery;
    qryAccCenterTopics2: TADOQuery;
    qryAccDetailCode: TADOQuery;
    qryAccTopicCode: TADOQuery;
    qryAccCenterTopics: TADOQuery;
    qryAccBudget: TADOQuery;
    qryAccProject: TADOQuery;
    qryOperators: TADOQuery;
    BalloonHint1: TBalloonHint;
    qryAccCenterTopics3: TADOQuery;
    qryCurrencies: TADOQuery;
    qrySMS_BOX: TADOQuery;
    qrySMS_BOXMASTERID: TIntegerField;
    qrySMS_BOXBOXKIND: TSmallintField;
    qrySMS_BOXSMSKIND: TIntegerField;
    qrySMS_BOXCREATEDATE: TStringField;
    qrySMS_BOXCREATETIME: TStringField;
    qrySMS_BOXUSERTITLE: TStringField;
    qrySMS_BOXPHONENUMBER: TStringField;
    qrySMS_BOXREC_YEAR: TStringField;
    qrySMS_BOXREC_MONTH: TStringField;
    qrySMS_BOXREC_DAY: TStringField;
    qrySMS_BOXREC_HOUR: TStringField;
    qrySMS_BOXREC_MIN: TStringField;
    qrySMS_BOXREC_YEARACT: TStringField;
    qrySMS_BOXREC_MONTHACT: TStringField;
    qrySMS_BOXREC_DAYACT: TStringField;
    qrySMS_BOXREC_HOURACT: TStringField;
    qrySMS_BOXREC_MINACT: TStringField;
    qrySMS_BOXMESS: TStringField;
    qrySMS_BOXREC_STATUS: TSmallintField;
    qrySMS_BOXREFSERIAL: TIntegerField;
    zbal: TzAPIBalloon;
    qryConfig: TADOQuery;
    pdbConfig: TppDBPipeline;
    srcConfig: TDataSource;
    tmrFlow: TTimer;
    adcsalary: TADOConnection;
    qryMasterLookUps: TADOQuery;
    qryStores: TADOQuery;
    qryStoreType: TADOQuery;
    qryOstan: TADOQuery;
    qryShahr: TADOQuery;
    qryFormula: TADOQuery;
    qryUnits: TADOQuery;
    qrySellsMethods: TADOQuery;
    qryCtopicCode3: TADOQuery;
    qryCtopicCode2: TADOQuery;
    qryDetail: TADOQuery;
    qryCategories: TADOQuery;
    qryCtopicCode: TADOQuery;
    qryAmval: TADOQuery;
    qryUsersStoreReciptTypes: TADOQuery;
    qryUsersStoreReciptTypesStoreID: TSmallintField;
    qryUsersStoreReciptTypesReciptType: TWordField;
    qryCustomers: TADOQuery;
    qryUseUnits: TADOQuery;
    qryRT: TADOQuery;
    qryRTStoreCaption: TStringField;
    qryRTPerson1Caption: TStringField;
    qryRTPerson2Caption: TStringField;
    qryRTSection2Caption: TStringField;
    qryRTExpireDateCaption: TStringField;
    qryRTControlCodeCaption: TStringField;
    qryRTUseUnitCaseCaption: TStringField;
    qryRTAidInfoCaption: TStringField;
    qryRTReportFileCaption1: TStringField;
    qryRTReportFileCaption2: TStringField;
    qryRTStore2Caption: TStringField;
    qryRTSection2CaptionWeight: TStringField;
    qryRTPerson2DetailCaption: TStringField;
    qryRTOtherRptCaptions: TStringField;
    qryRTPerson3Caption: TWideStringField;
    qryRTStandardCaption: TWideStringField;
    qryRTProcedureCaption: TStringField;
    qryRTStuffCodingAddFieldCaption: TStringField;
    qryRTPerson4Caption: TWideStringField;
    qryRTReciptCaption_L2: TStringField;
    qryRTCalcCostStorageCaption: TStringField;
    qryRTReciptCaption: TStringField;
    qryRTLookUpName: TStringField;
    qryRTLookUpNameItem: TStringField;
    qryReciptTypes: TADOQuery;
    stpNewReciptsCorrelate: TADOStoredProc;
    qryTopicCode: TADOQuery;
    qry_CTopicCode3: TADOQuery;
    qry_CTopicCode: TADOQuery;
    qryDetailCode: TADOQuery;
    qry_CTopicCode2: TADOQuery;
    qry_Company: TADOQuery;
    qryDayHour: TADOQuery;
    qryDayHourAmount: TBCDField;
    qryDSW_JOB: TADOQuery;
    qryWageDec: TADOQuery;
    qryWageDecSalaryID: TStringField;
    qryWageDecInfoName_L1: TStringField;
    qryWageDecCalcText: TStringField;
    qryWageDecKind: TIntegerField;
    qryConfigPay: TADOQuery;
    pdbConfigPay: TppDBPipeline;
    qrytab_job: TADOQuery;
    ADOCmdUpDate: TADOCommand;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    qryTmpTmpP: TADOQuery;
    adcAuditLog: TADOConnection;
    qryConfigUser: TADOQuery;
    spNewFormsCorrelate: TADOStoredProc;
    qryLookUps: TADOQuery;
    fdcBSell: TFDConnection;
    qryCn: TADOQuery;
    qry_TempAss: TADOQuery;
    SkinManager: TsSkinManager;
    qryStuffImages: TADOQuery;
    qryStuffImagesStuffCode: TLargeintField;
    qryStuffImagesStuffImage: TBlobField;
    qryStuffImagesImageType: TIntegerField;
    stpSp_dboption: TADOStoredProc;
    stpSp_dboptionOptionName: TWideStringField;
    stpSp_dboptionCurrentSetting: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adcFaraSystemBeforeConnect(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adcAccountingBeforeConnect(Sender: TObject);
    procedure adcOldAccountingBeforeConnect(Sender: TObject);
    procedure adcBSellBeforeConnect(Sender: TObject);
    procedure adcAccountingAfterConnect(Sender: TObject);
    procedure adcFaraSystemAfterConnect(Sender: TObject);
    procedure tmrFlowTimer(Sender: TObject);
    procedure adcsalaryBeforeConnect(Sender: TObject);
    procedure qryOperatorsBeforeOpen(DataSet: TDataSet);
    procedure qry_CompanyAfterOpen(DataSet: TDataSet);
    procedure adcAuditLogBeforeConnect(Sender: TObject);
    procedure fdcBSellBeforeConnect(Sender: TObject);
    procedure adcBSellAfterDisconnect(Sender: TObject);
    procedure SkinManagerAfterChange(Sender: TObject);
  private
    { Private declarations }
  public
    s_Msm: string;
    sql4Recal: string;
    fLevelIDOnKol: Integer;
    function GetLenKol: Integer;
    function GetLevelIDOnKol: Integer;
    Property LenKol: Integer read GetLenKol;
    procedure DoLogin;
    procedure DoLogout;
    function ReadBankConfig(OptionName: string; DefaultValue: string = '';
      ConnectionStr: string = ''): string;
    function ReadBankConfigAcc(OptionName: string;
      DefaultValue: string = ''): string;
    function ReadBankConfigPay(OptionName: string;
      DefaultValue: string = ''): string;
    function ExecuteQry(Command: String): Boolean; overload;
    function ExecuteQry(Command: String; Sn4LOg: Integer): Integer; overload;

    Function CheckLevel(St: TSatueLevel; FormType: Integer;
      ShowWarn: Boolean = True): Boolean;
    function CheckUser(FormName, tblName, fldName: String;
      qry: TADOQuery): Boolean;
    procedure AutoBackup;
    function AmvalCal(BaseDate: string; sn: Integer;
      QryCal: TADOQuery = nil): Boolean;
    procedure CalculateDepress(sn: Cardinal);
    function CheckDetailComapany(DetailCode, companyCode: Integer): Boolean;
    function sqlSetText(Kind: Integer): String;
    property LevelIDOnKol: Integer read GetLevelIDOnKol;
    procedure Create_Details_Views;
  end;

  st_ExtraCoding = record
    Captions: array [1 .. 9] of string;
  end; // st_ExtraCoding

  TAccountingOption = record
    DocDate, CanRelation, ShowLevel, DocTool, SumBook: Boolean;
    BudgetType, DocReport1, DocReport2, DocReport3, Footer, ReportPath: String;
    LastDoc: Boolean;
    RestDocCode, ChkBalancCTopicCode3, ChkSelfDocShow, CTopicCode2IsZero,
      CTopicCode3IsZero, TopicCaptionActive: Boolean;
    DriveBackup, LastAccYear, AccChangeNames, AccOwnerName: String;
    // AccActive, BudgetActive, AuditActive, FinancialActive, PortainActive,
    // SpecialActive, ManegeActive,
    IsChkDetail, CurrencyActive: Boolean;
    DefaultCompany, StartTopicCode, EndTopicCode, CtoipcRelatedKind, EndLimitID,
      StartLimitID, CountCompany, LevelIDOnKol: Integer;
    MiladiActive, CountAccLevel, KindShowWarnDetail, RatesCalculation,
      AccBookSortType, ChkEnterBudget, ArzNumberOfDigits: Byte;

    DecimalActive, ActivePartCompany, CheckAccCodeInInsert, CheckRelation,
      UseAnalyze, EditableDetailRange, AddStuffcoding, CanDeleteDoc,
      AccOldAvailable: Boolean;
    AccStartLimitID: Integer;
    AccEndLimitID: Integer;
    ActiveCtopic1: Boolean;
    ActiveCtopic2: Boolean;
    ActiveCtopic3: Boolean;
    ActiveCompany, gv_MultiCompany, SendDoc2OtherSystems: Boolean;
    AccDefaultCompany: Integer;
    AccChkBalancCTopicCode3, ActiveCurrencyInTrialBalance: Boolean;
  end;

  TtBSellOption = record
    AutoBackup: Boolean;
    AutoBackupPath: String;
    EntityDisplay: Boolean;
    WeightDisplay: Boolean;
    EntityCaption: String;
    WeightCaption: String;
    SearchCode: String;
    Carton: Boolean;
    CartonInt: Byte;
    AidInfoAvailable: Boolean;
    // MenuNames:String;
    ControlEntryCustInfo: Boolean;
    // Footer: String;
    CheckDateOffset: Byte;
    ServerName: String;
    LanguageDisplay1: Boolean;
    LanguageDisplay2: Boolean;
    primaryLanguage: Byte;
    secondaryLanguage: Byte;
    CheckWarn, SystemWarn, showBig: Boolean;
    WarrantyFormTypes: String;
    AddMenuItem: Boolean;
    ControlCodeActive: Integer;
    ExtraCoding: st_ExtraCoding;
    ActiveSellPrice2: Boolean;
    StuffKindActive: Boolean;
    SpecialReportsActive: Boolean;
    StuffTecInfoActive: Boolean;
    _ArchivePath: String;
    _StartMaliYear, _FinishMaliYear: String;
    EntityDisplayType, StuffCodingKind: Shortint;
    RecoverPittedCode: Byte;
    StuffEnableKind: Byte;
    LowerLimit1, LowerLimit2: Currency;
    PhonBookIIPath: String;
    ControlOrderPointEntity: Boolean;
    DocStatusDefault, DocReciptStateDefault: Shortint;
    EditCustNameLevelID: Boolean;
    EditStuffNameLevelID: Boolean;
    MakeDocsLevelID: Shortint;
    DocPostKindLevelID: Shortint;
    ServerID: Integer;
    DefaultDateActive: Boolean;
    CheckMakeDoc4DelEdit: Boolean;
    RowInCardex: Byte;
    AccountName, AccountServerName: String;
    PayablePrice: Currency;
    PayablePriceActive: Boolean;
    CustomerID1, CustomerID2, ReciptID: Integer;
    RelatedRecipts: String;
    AidInfoNo: String;
    AidInfoDate, LinkServerName: String;
    DefaultYear, DefaultYear2, DefaultYearkind, LevelIdStuffGroup: SmallInt;
    AccDetailCodeEqualCustID, AccCenterTopicEqualUseUnitID: Byte;
    CustAccDetailCodeEqualCustID: string;
    DocType1, DocType2, DocType3, DocType4: Integer;
    UseUnitsYearID: Boolean;
    Acc_CtoipcRelatedKind: Byte;
    stCount, UnicStuffCodingKind: Byte;
    // IsIdentityST: string;  ;
    ActiveBudget: Boolean;
    CHKPriorityTransDate: Boolean;
    BrowseAllForms: Boolean;
    SysSmsActive: Boolean;
    WorkFlowActive: Boolean;
    WorkFlowTime: Integer;
    WF_ServerID: Integer;
    WF_YearID: Integer;
    WF_FormID: Integer;
    FilterOnServerID: SmallInt;
    CheckDateDefaultAct: Boolean;
    RequiredCustomers: Largeint;
    CustomersUnicName, CheckWarnDay, WarrantyDay, EntityOrWeight: SmallInt;
    FunctionDate4EditFrom, FunctionDate4EditTo: string;
    ActiveLoan: Boolean;
    IsEstil, ReplicationActive, PublisherActive: Boolean;
    MachineryLookUpKind1, MachineryLookUpKind2, MachineryLookUpKind3: Integer;
    MachineryLookUpKind4, MachineryLookUpKind5, MachineryLookUpKind6: Integer;
    PrintTaxCount, ConcatField4StuffNameKind: Integer;
    ScanState: Boolean;
    ArchiveScan, RateFormula, IPCameraURL, CustomerKindsTransaction: String;
    chkExistAttachments, PureSellActive, ArzActiveAll, PlaqueReaderActive,
      POActive, ActiveConfigUser, OperatorsNewActive: Boolean;
    POCaption: string;
    CalcReciptsRegulatesActive, ActiveNipc: Boolean;
    ChkUsersCustomersGroupsActive, SearchLimitCustomersGroups: Boolean;
    GroupReciptPostKind: Integer;
    MakeDocumentPost: Largeint;
    AllControls, ConfigSettings: Largeint;
    RoundEntity, RoundWeight, DetailCodelength: SmallInt;
    MinEntity: Double;
    NipcUserName, NipcPassWord: string;

    FISCAL_ID: string;
    PUB_KEY: string;
    PUB_KEY_ID: string;
    PRV_KY: string;
    Economic_Number: string;
    URL_MoadianAPI: string;
    CRT_KEY: string;

    PosPortNumber: Integer;
    PosIPAddress: string;

    NationalCode: string;
    JamePassWord: string;
    UserRoleId: string;

{$REGION 'Assetst_Option  دارایی ثابت'}
    ShowAmount: Boolean;
    LevelAccess: Byte;
    StartLimitIDAss: Integer;
    EndLimitIDAss: Integer;
    BaseDate: String;
    LevelGroup: Byte;
    EditableDepModeDepValue: Boolean;
    maliStartDate: String;
    maliExpireDate: String;
    TimeToDefinitive: Int8;

    FirstDepValueActive: Boolean;
    StopDepNo: Real;
    RequiredFields: TStringList;
    RecallReciptTypes: String;

{$ENDREGION}
  end; // TtBSellOption

  TSubOption = record
    ActiveCoffer: Boolean;
    ActiveSell: Boolean;
    ActiveStore: Boolean;
    ActiveSchedule: Boolean;
    ActiveProcurement: Boolean;
    ActiveManeger: Boolean;
    SubSys: string;
  end;

  TPortOption = record
    ComPortKind: Byte;
    TozinFileInputPath, Port: String;
    BaudRate, FlowControl, PackSize: Integer;
    XonXoffIn, XonXoffOut: Boolean;
    StopBits, Parity: Byte;
  end;

  TsalaryOption = record
    AutoBackup: Boolean;
    AutoBackupPath: String;
    BackupInterval: Byte;
    EntityDisplay: Boolean;
    WeightDisplay: Boolean;
    AidInfoAvailable: Boolean;
    LanguageDisplay1: Boolean;
    LanguageDisplay2: Boolean;
    MenuNames: String;
    primaryLanguage: Byte;
    secondaryLanguage: Byte;
    ScanState: Boolean;
    ArchiveScan: String;
    ActiveRangeProject, PersonelNoInInterdictNo, FloatToTimeActive: Boolean;
    StartMaliYear, FinishMaliYear: String;
    FunctionKind: Byte;
    Year: String;
    YearMounth: String;
    InterdictItemSumSalary1, InterdictItemSumSalary2, InterdictItem4ListSalary,
      HideSalaryID4ListSalary, NoPrintSalaryIDs: String;
    ChkHideSalaryID4ListSalary: Byte;
    SituationTime: Byte;
    ChkStateArchiveEdit: Boolean;
    ChkGroupInterdicts: Boolean;
    FunctionActiveMinutes, FunctionItemSeparation: Boolean;
    AccDetailCodeEqualPersonelNo: Integer;
    OffTimeInFish: Integer;
    OffTimeControlMessages: Integer;
    EidiDisplayedSeparatelyOnTaxList: Boolean;

    MinBenefitsInsuranceList: Currency;
    PonyTaxAble, TaxKindCalc: Byte;
    ActAnnuityInlistSalary, ActRewardInlistSalary: Byte;
    SalaryID4PartMakeBankDSK: string;
    SalaryID4PartKind, FunctionDayDefault, DocTypeCode: Int8;
    AccDetailCodeEqualCustID: Int8;
    CustAccDetailCodeEqualCustID: string;
    FormInfo4Function: Integer;
    labelFilterON: Boolean;
    ClockCard4FieldName: string;
    DecimalOrMinute: Byte;
    GovConstAmount: string;
    GovSpouse: string;
    GovChild: string;

  end; // TtsalaryOption

var
  DmF: TDmF;
  opt: TtBSellOption;
  optA: TAccountingOption;
  optP: TsalaryOption;
  optPort: TPortOption;
  optSub: TSubOption;
  var_glb_CompanyName: String;
  var_glb_CurrentDate: String;
  var_glb_CurrentMonth: Byte;
  var_glb_CompanyCode: Integer;
  DataDir: String;
  UserQualitative: Boolean;
  APPBank: TAPPBANK;
  myParams: TParams;
  _REPORTSPATH: String;
  myStore: TStore;
  LookupSQL4Store, MinMaxSQL4Store: String;
  LookupSQL4Store2, MinMaxSQL4Store2: String;
  LookupSQL4Store3, MinMaxSQL4Store3, MinMaxSQL4Store4: String;
  SQL_StuffCoding: string;
  tsConcatField4StuffName: TStrings;
  SelectCustID: Integer;
  gv_MultiCompany: Boolean;

  APPBank_Budget: TAPPBANK;
  AccountDBName: String;
  Interdicts_WarnShow: Boolean;
  pathManufactory: String;
  SPID: Integer;
  ItemSelect: TObject; // StuffCodes: string = '0';

function GetANewCode(FormName, tblName, fldName: String;
  aConnection: TADOConnection = nil; step: Integer = 1; ISKey: Boolean = False)
  : Largeint;
function GetANewCodeBulkRange(FormName, tblName, fldName: String;
  Count: Integer; aConnection: TADOConnection = nil; step: Integer = 1;
  ISKey: Boolean = False): Largeint;
// function GetANewCode(tblName, fldName: String;
// aConnection: TADOConnection = nil): Largeint; overload;

function IsInProcess(aConnection: TADOConnection;
  tblName, fldName, FormName, code: string; ISKey, GetMAX: Boolean;
  step: Integer): Largeint;
procedure Add2InProcess(aConnection: TADOConnection; FormName: string;
  tblName, fldName, Value: string; TypeMode: Byte = 0);
// procedure FreeReservedCodes(aConnection: TADOConnection; TableName: String = '';
// TypeMode: Byte = 0; FieldName: String = ''); overload;
procedure FreeReservedCodes(aConnection: TADOConnection; TableName: String = '';
  FieldName: String = ''; FormName: string = ''; TypeMode: Byte = 0);
// overload;
function PriceOnStoreType(StoreID: Integer; Grid: TCustomControl;
  aDataSet: TDataSet; StoreKindProductModel: string = ''): Boolean;
// function PriceOnStoreType2(StoreID: Integer;Grid :TDBGrid): Boolean;
function InitCaptions(SYSID: Integer; LanguageID: Integer; FormSerial: Integer;
  Type1: Integer; Type2: Integer; LabelID: Integer): String;
function CalcSumFileds(qry: TADOQuery; FiledName: String): Extended; overload;
function CalcSumFileds(qry: TDataSet; FiledName: String): Extended; overload;
function CalcSumFileds(FiledName: TField): Extended overload;
function CalcSumFiledsF(MyField: TField; TxtFilter: String = ''): Extended;
procedure SaveBankConfig(OptionName: string; OptionValue: string;
  RoleName: string);
procedure SaveBankConfigPay(OptionName: string; OptionValue: string);
procedure InitReport(ReportName: TppReport; BandName: TppBand;
  aRegion: TppRegion; TopLine: TppLine; Footer: string);

procedure Entity_Weight(Grid: TDBGrid); overload;
procedure Entity_Weight(Grid: TCedarDbgrid); overload;
procedure InitReportFile(ReportName: TppReport; GeneralFileName: string;
  constFileName: Boolean = False; WithPrice: Boolean = False;
  String4Replace: String = 'فرم'; SellsEmporium: Boolean = True;
  aPrintKind: TPrintKind = pkPrint); overload;

procedure InitReportFile(ReportName: TppReport; GeneralFileName: string;
  Grid: TComponent; ppDBPipeline: TppDBPipeline;
  filterCaption: string = ''); overload;

procedure InitReportFileRegion(ReportName: TppReport; GeneralFileName: string;
  BandName: TppBand; aRegion: TppRegion; TopLine: TppLine; Footer: string);

function InitCombos(Combo_Box: TComboBox; SQL_Txt: String): String;
procedure InitDBCombos(Combo_Box: TDBComboBox; SQL_Txt: String);
function BackupDatabaseLocalAndNet(Path: String; ChooseDir: Boolean = False;
  FaraSysetmBackup: Boolean = True; ReportFilesBackup: String = '';
  ArchiveFilesBackup: String = ''): Boolean;
function initDBComboBoxAcc(Combo: TDBComboBox; FormType: Integer): Integer;
function initDBComboBoxPay(Combo: TDBComboBox; FormType: Integer): Integer;
function BankExists(BankName: String): Boolean;
function GetANewFaraCode(tblName, fldName: String): Cardinal;
procedure SetUserQualitative;
function GetSellsEmporiumName(SellsEmporium: Integer): String;
procedure InitComboYearID(Combo_Box: TComboBox);
function NowFormServer: TDateTime;
function GetLastConstDocDate: String;
procedure OffDataSetEvents(aDataSet: TDataSet);
procedure OnDataSetEvents(aDataSet: TDataSet);
procedure AddCoding(aType: Integer; aCode: Integer);
Function CheckLevel(LenCode: Byte; code: String): Boolean;
function CheckRelationDetail(aDGID, aTopicCode, DetailTypeLevel
  : Cardinal): Boolean;
procedure setColumns(Grid: TCedarDbgrid; colNumber: string;
  StateCol: Boolean); overload;
procedure setColumns(Grid: TDBGrid; colNumber: string;
  StateCol: Boolean); overload;
function HasBudget(c: Cardinal): Boolean;
function HasDetail(c: Cardinal): Boolean;
function HasExpenseCode(c: Cardinal): Boolean;
function HasExpenseCode2(c: Cardinal): Boolean;
function HasExpenseCode3(c: Cardinal): Boolean;
function GetMoeenName(mCode: Cardinal): String;
function GetCTopicName(mCode: Cardinal): String;
function GetAccountBalance(TopicCode, DetailCode, CTopicCode,
  CTopicCode2: Integer): Extended;
function GetCompanyName(companyCode: Integer): String;
function IsValidDetailForMoeen(TopicCode, DetailCode: Integer): Boolean;
function IsValidCTopicForMoeen(TopicCode, CTopicCode: Integer): Boolean;
function IsValidCTopic2ForCTopics(CTopicCode2, CTopicCode: Integer): Boolean;

function GetPersonelName(pid: string): string;
function GetFileName(RepNumber: Integer = 1): string;

procedure initDBComboBoxMasterDetail(Combo: TDBComboBox;
  FormType, FormInfoID: Integer);
procedure MakeMenuItem(Form_Type: Integer; AllClik: TNotifyEvent;
  var Reference);
procedure L1_L2(Grid: TDBGrid);
function FooterFormType(Form_Type: Integer): String;
// ;MyQuery: TADOQuery
function CalcSumFileds2(MyField: TField; TxtFilter: String = ''): Extended;
// ;MyQuery: TADOQuery

// procedure InitDBCombos(Combo_Box: TDBComboBox; SQL_Txt: String);
// procedure InitComboYearID(Combo_Box: TComboBox);
procedure SendServerFile(Text_FileName: string; Memo1: TMemo);
procedure InitDSW_JOB;
function Get_Job_Desc(qry: TADOQuery): AnsiString;
function GetSelectedRowsDBGrid(grd: TDBGrid; FieldRowName: String): String;
overload
function GetSelectedRowsDBGrid(grd: TCedarDbgrid; FieldRowName: String): String;
overload

  implementation

  uses shamsiDate, FormFunctions, template2MDI, FaraConsts, main, DMSMS,
  mdiMain, AccFunctions;

const
  ev: array [1 .. 7] of TDataSetNotifyEvent = (nil, nil, nil, nil, nil,
    nil, nil);

{$R *.dfm}
procedure SetUserQualitative;

var
  i: Integer;
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF);
  with qry do
    try
      try
        // add2log('OYO-SetUserQualitative1');
        Connection := theMainConnection;
        Close;
        SQL.Text := 'SELECT COUNT(n_UserID)';
        SQL.Add('FROM UsersStore');
        SQL.Add('WHERE (StoreType = 0) AND (n_UserID = :UserID )');
        Parameters.ParamByName('UserID').Value := User.id;
        Open;
        // add2log('OYO-SetUserQualitative2');

        if (mdiMainF.MainFrame <> nil) and
          (mdiMainF.MainFrame.GetActiveIndex = 13) then
          UserQualitative := False
        else
          UserQualitative := (Fields[0].AsInteger = 0) or (User.PowerUser);
        Close;
      except
        on E: Exception do
        begin
          add2log('اشکال در دسترسی انبارها' + E.Message);
        end;
      end;

    finally
      Free;
    end;


  // UserQualitative := mdiMainF.MainFrame.GetActiveIndex <> 13;

  LookupSQL4Store :=
    'SELECT distinct ReciptItems_Stock_Oper.StoreID, Stores.c_StoreName FROM Stores INNER JOIN '
    + 'ReciptItems_Stock_Oper ' +
    'ON Stores.n_StoreID = ReciptItems_Stock_Oper.StoreID  LEFT OUTER JOIN ' +
    'UsersStore ON Stores.n_StoreID = UsersStore.n_StoreID ' +
    'WHERE ( (UsersStore.n_UserID = %d )OR ( %d = 127))  ';
  LookupSQL4Store := Format(LookupSQL4Store, [User.id, User.id]);

  MinMaxSQL4Store := // Min(StoreID),max(StoreID)
    'SELECT Min(StoreID),max(StoreID) FROM ReciptItems_Stock_Oper ' +
    'LEFT OUTER JOIN UsersStore ON ReciptItems_Stock_Oper.StoreID = UsersStore.n_StoreID '
    + 'WHERE ( (UsersStore.n_UserID = %d )or ( %d = 127))';
  MinMaxSQL4Store := Format(MinMaxSQL4Store, [User.id, User.id]);

  LookupSQL4Store2 :=
    'SELECT distinct Stores.n_StoreID as StoreID, Stores.c_StoreName' +
    ' FROM Stores LEFT OUTER JOIN' +
    ' UsersStore ON Stores.n_StoreID = UsersStore.n_StoreID' +
    ' WHERE ( (UsersStore.n_UserID = %d )OR ( %d = 127))  ';
  LookupSQL4Store2 := Format(LookupSQL4Store2, [User.id, User.id]);

  MinMaxSQL4Store2 :=
    'SELECT Min(Stores.n_StoreID),max(Stores.n_StoreID) from Stores ' +
    'LEFT OUTER JOIN UsersStore ON Stores.n_StoreID = UsersStore.n_StoreID ' +
    'WHERE ( (UsersStore.n_UserID = %d )or ( %d = 127))';
  MinMaxSQL4Store2 := Format(MinMaxSQL4Store2, [User.id, User.id]);

  LookupSQL4Store3 :=
    'SELECT distinct Recipts.StoreID, Stores.c_StoreName FROM Stores INNER JOIN '
    + 'Recipts ' + 'ON Stores.n_StoreID = Recipts.StoreID ';

  MinMaxSQL4Store3 := 'SELECT Min(StoreID),max(StoreID) FROM Recipts ';

  MinMaxSQL4Store4 := 'SELECT 0,9999';

  SQL_StuffCoding := 'SELECT c_StuffCode, c_StuffName';
  for i := 1 to 9 do
    if opt.ExtraCoding.Captions[i] <> '' then
      if Pos(Format('sd%d', [i]), LowerCase(tsConcatField4StuffName.Text)) = 0
      then
        SQL_StuffCoding := SQL_StuffCoding +
          Format('+''*''+ISNULL(sd%d,'' '')', [i]);
  SQL_StuffCoding := SQL_StuffCoding + ' AS StuffName FROM  StuffCoding';

end;

function TDmF.ExecuteQry(Command: String): Boolean;

var
  qry: TADOQuery;
begin
  Result := True;

  qry := TADOQuery.Create(nil);
  try
    qry.Connection := DmF.adcBSell;
    qry.CommandTimeout := 0;
    qry.SQL.Text := Command;

    try
      qry.ExecSQL;
    except
      Result := False;
    end;

  finally
    FreeAndNil(qry); // امن‌ترین روش
  end;
end;

function TDmF.ExecuteQry(Command: String; Sn4LOg: Integer): Integer;

var
  qry: TADOQuery;
begin
  Result := 0;

  qry := TADOQuery.Create(nil);
  try
    qry.Connection := DmF.adcBSell;
    qry.Close;
    qry.CommandTimeout := 0;
    qry.SQL.Text := Command;

    try
      Result := qry.ExecSQL;
    except
      on E: Exception do
      begin
        Result := 0;
        Warn('اشكال در اجرا سریال = ' + Sn4LOg.ToString + ' ' + E.Message);
        add2log(E.Message);
      end;
    end;

  finally
    FreeAndNil(qry);
  end;
end;

procedure TDmF.fdcBSellBeforeConnect(Sender: TObject);
begin
  GetConStr(APPBank.name, 15, adcBSell, '', fdcBSell)
end;

function TDmF.GetLenKol: Integer;
begin
  with DmF.qry_Temp do
  begin
    Close;
    SQL.Text :=
      Format('SELECT CodeLength FROM acc.AccTopicLevels WHERE (LevelID = %d)',
      [optA.LevelIDOnKol]);
    Open;
    Result := fieldbyname('CodeLength').AsInteger;
  end; // with
end;

function TDmF.GetLevelIDOnKol: Integer;
begin
  try
    if fLevelIDOnKol = 0 then
      fLevelIDOnKol := optA.LevelIDOnKol;
    // By Mostafa 2013/12/25 For Check Defualt
    if fLevelIDOnKol = 0 then
    begin
      Result := 2;
      Exit;
    end;

    Result := fLevelIDOnKol;
  except
    Result := 2;
  end;
end;

procedure TDmF.qryOperatorsBeforeOpen(DataSet: TDataSet);
begin
  // with qryOperators do
  // begin
  // SQL.Text := 'SELECT UserID, name';
  // SQL.Add('FROM FaraSystems.dbo.Operators');
  // if CompanyFilterinLogin then
  // SQL.Add('WHERE ( UserID in (SELECT DISTINCT UserID FROM FaraSystems.dbo.OperatorCompanies WHERE(n_subcompany = '
  // + FcompanyCode.ToString + ')))');
  // end;

  ///
end;

procedure TDmF.qry_CompanyAfterOpen(DataSet: TDataSet);
begin
  gv_MultiCompany := DataSet.RecordCount > 1;
  // Sheikh 2015/05/17
  if not gv_MultiCompany then
    var_glb_CompanyCode := DataSet.fieldbyname('CompanyCode').AsInteger;
end;

function GetANewFaraCode(tblName, fldName: String): Cardinal;

var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF);
  try
    with qry do
    begin
      qry.Connection := DmF.adcFaraSystem;
      SQL.Text := 'Select max(convert(int,' + fldName + ')) FROM ' + tblName;
      Active := True;
      if Fields[0].IsNull then
        Result := 1
      else
        Result := Fields[0].AsInteger + 1;
      Active := False;
    end; // with
  finally
    qry.Free;
  end; // try
end;

function BankExists(BankName: String): Boolean;

var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF);
  try
    with qry do
    begin
      ConnectionString := GetConStr('master', 10);
      SQL.Text := 'SELECT name FROM master.dbo.sysdatabases WHERE name = ' +
        QuotedStr(BankName);
      try
        Active := True;
        Result := not IsEmpty;
        Active := False;
      except
        Result := False;
      end; // try
    end; // with
  finally
    qry.Free;
  end; // try
end;

// function BankAttach(BankName: String): Boolean;
// var
// conStr: String;
// userName: String;
// qry:  TADOQuery;
// begin
// userName:=ReadConfig('','UserName','FaraUser');
// conStr:='Provider=SQLOLEDB.1;Password=;Persist Security Info=True'
// + ';User ID=' + userName + ';connect timeout=10';
// qry:=TADOQuery.Create(DMf);
// try
// with qry do begin
// ConnectionString:=conStr;
// SQL.Text:='EXEC sp_attach_db @dbname = N''pubs'', '+
// '@filename1 = N''c:\Program Files\Microsoft SQL Server\MSSQL\Data\pubs.mdf'','+
// '@filename2 = N''c:\Program Files\Microsoft SQL Server\MSSQL\Data\pubs_log.ldf''';
// try
// ExecSQL;
// Active:=False;
// except
// end;//try
// end;//with
// finally
// qry.Free;
// end;//try
// end;

function TDmF.ReadBankConfig(OptionName: string; DefaultValue: string = '';
  ConnectionStr: string = ''): string;

var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF);
  with qry do
  begin
    try
      if ConnectionStr <> '' then
        ConnectionString := ConnectionStr
      else
        Connection := DmF.adcBSell;
      SQL.Text := 'Select *,@@SPID AS SPID  from Config';
      Active := True;
      SPID := fieldbyname('SPID').AsInteger;

      if FindField(OptionName) <> nil then
        Result := fieldbyname(OptionName).AsString
      else
        Result := DefaultValue;
      // Save_iniConfig('TestConfig.ini',OptionName,Result);
      Active := False;
    finally
      qry.Free;
    end; // try
  end; // with
end;

function TDmF.ReadBankConfigAcc(OptionName: string;
  DefaultValue: string = ''): string;

var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF);
  with qry do
  begin
    try
      Connection := DmF.adcAccounting;
      SQL.Text := 'Select * from Acc.Config';
      Active := True;

      if FindField(OptionName) <> nil then
        Result := fieldbyname(OptionName).AsString
      else
        Result := DefaultValue;
      // Save_iniConfig('TestConfig.ini',OptionName,Result);
      Active := False;
    finally
      qry.Free;
    end; // try
  end; // with
end;

procedure TDmF.tmrFlowTimer(Sender: TObject);

var
  msg: string;
begin
  if opt.WorkFlowActive and not User.admin then
    With TADOStoredProc.Create(nil) do
      try
        Connection := DmF.adcBSell;
        ProcedureName := 'GetUser_FlowFroms;1';
        Parameters.Refresh;
        Parameters.ParamByName('@PositionCode').Value := User.PositionCode;
        Parameters.ParamByName('@YearID').Value := APPBank.Year;
        Parameters.ParamByName('@msg').Value := EmptyStr;
        ExecProc;
        msg := Parameters.ParamByName('@msg').Value;
        if msg <> EmptyStr then
          initDesktopAlert(0, msg, mainF.mnuMailboxdatacontrolFClick, 30000);
        Free;
      except
        on E: Exception do
        begin
          add2log('اشکال در پیغام گردش فرم ها' + E.Message);
        end;
      end;
end;

procedure SaveBankConfig(OptionName: string; OptionValue: string;
  RoleName: string);

var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF);
  with qry do
  begin
    try
      Connection := DmF.adcBSell;
      SQL.Text := 'Select * from ' + RoleName + '.Config';
      Active := True;
      if IsEmpty then
      begin
        Insert;
        Post;
      end; // if
      Edit;
      fieldbyname(OptionName).AsString := OptionValue;
      // SQL.Text:='Update Config Set ' + OptionName + ' = ' + QuotedStr(OptionValue);
      Post;
      // ExecSQL;
    finally
      qry.Free;
    end; // try
  end; // with
end;

function NowFormServer: TDateTime;

var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF);
  with qry do
  begin
    try
      Connection := theMainConnection;
      SQL.Text := 'SELECT GETDATE() AS NowDateTime';
      Active := True;
      Result := Fields[0].AsDateTime;
    finally
      qry.Free;
    end;
  end;
end;

function GetANewCode(FormName, tblName, fldName: String;
  aConnection: TADOConnection = nil; step: Integer = 1; ISKey: Boolean = False)
  : Largeint; overload;

var
  // i:  Integer;
  p: Integer;
  qryText: String;
  qry: TADOQuery;
  isID: Largeint;
  GetMAX: Boolean;
begin
  qry := TADOQuery.Create(DmF);
  try
    qryText := tblName;
    if aConnection = nil then
      aConnection := DmF.adcBSell;
    tblName := LowerCase(tblName) + ' ';

    p := Pos('pay.', tblName);
    if p <> 0 then
      aConnection := DmF.adcsalary;
    p := Pos('acc.', tblName);
    if p <> 0 then
      aConnection := DmF.adcAccounting;

    p := Pos('from ', tblName);
    if p <> 0 then
      tblName := MidStr(tblName, p + 5, PosEx(' ', tblName, p + 5) - p - 5);
    with qry do
    begin
      Connection := aConnection;
      if p = 0 then
        SQL.Text := 'Select max(' + fldName + ') from ' + tblName
      else
        SQL.Text := qryText;

      GetMAX := Pos('min(', LowerCase(SQL.Text)) = 0;
      Active := True;
      if Fields[0].IsNull then
        Result := step
      else
        Result := Fields[0].AsLargeInt + step;
      Active := False;
    end; // with
    // i:=0;

    try
      isID := IsInProcess(aConnection, tblName, fldName, FormName,
        IntToStr(Result), ISKey, GetMAX, step);
      if (isID <> 0) and (Abs(isID) > Abs(Result)) then
        Result := isID;
      Add2InProcess(aConnection, FormName, tblName, fldName, IntToStr(Result));
    except
      on E: Exception do
      begin
        add2log(FormName + ' ' + tblName + ' ' + fldName + ' : ' + E.Message);
        Result := Result + step;
        Add2InProcess(aConnection, FormName, tblName, fldName,
          IntToStr(Result));
      end;
    end; // try
  finally
    qry.Free;
  end; // try
end;

function GetANewCodeBulkRange(FormName, tblName, fldName: String;
  Count: Integer; aConnection: TADOConnection = nil; step: Integer = 1;
  ISKey: Boolean = False): Largeint;

var
  p: Integer;
  qryText: String;
  qry: TADOQuery;
  isID: Largeint;
  GetMAX: Boolean;
  LastCode: Largeint;
begin
  qry := TADOQuery.Create(DmF);
  try
    qryText := tblName;
    if aConnection = nil then
      aConnection := DmF.adcBSell;
    tblName := LowerCase(tblName) + ' ';

    p := Pos('pay.', tblName);
    if p <> 0 then
      aConnection := DmF.adcsalary;
    p := Pos('acc.', tblName);
    if p <> 0 then
      aConnection := DmF.adcAccounting;

    p := Pos('from ', tblName);
    if p <> 0 then
      tblName := MidStr(tblName, p + 5, PosEx(' ', tblName, p + 5) - p - 5);
    with qry do
    begin
      Connection := aConnection;
      if p = 0 then
        SQL.Text := 'Select max(' + fldName + ') from ' + tblName
      else
        SQL.Text := qryText;

      GetMAX := Pos('min(', LowerCase(SQL.Text)) = 0;
      Active := True;
      if Fields[0].IsNull then
        Result := step
      else
        Result := Fields[0].AsLargeInt + step;
      Active := False;
    end; // with

    // محاسبه آخرین کد بازه
    LastCode := Result + (Count - 1) * step;

    try
      isID := IsInProcess(aConnection, tblName, fldName, FormName,
        IntToStr(Result), ISKey, GetMAX, step);
      if (isID <> 0) and (Abs(isID) > Abs(Result)) then
      begin
        Result := isID;
        LastCode := Result + (Count - 1) * step;
      end;
      // فقط یکبار آخرین کد رو رزرو می‌کنیم
      Add2InProcess(aConnection, FormName, tblName, fldName,
        IntToStr(LastCode));
    except
      on E: Exception do
      begin
        add2log(FormName + ' ' + tblName + ' ' + fldName + ' : ' + E.Message);
        Result := Result + step;
        LastCode := Result + (Count - 1) * step;
        Add2InProcess(aConnection, FormName, tblName, fldName,
          IntToStr(LastCode));
      end;
    end; // try
  finally
    qry.Free;
  end; // try
end;


// function GetANewCode(FormName, tblName, fldName: String;
// aConnection: TADOConnection = nil): Largeint;  overload ;
// begin
// Result := GetANewCode('', tblName, fldName, aConnection, 1, False);
// end;

procedure Add2InProcess(aConnection: TADOConnection; FormName: string;
  tblName, fldName, Value: string; TypeMode: Byte = 0);

var
  qry: TADOQuery;
begin
  FormName := IntToStr(APPBank.Year) + '_' + LowerCase(FormName);
  tblName := LowerCase(tblName);
  fldName := LowerCase(fldName);
  qry := TADOQuery.Create(DmF.adcBSell);
  try
    with qry do
    begin
      Connection := aConnection;
      SQL.Text :=
        'Insert Into util.CodesInProcess(UserID,FormName,TableName,FieldName,Value,Ip,Type) '
        + ' values (:UserID,:FormName ,:TableName,:FieldName,:Value, :Ip , :Type)';
      Parameters.ParamByName('Ip').Value := StringReplace(getIP, '.', '',
        [rfReplaceAll]); // + SPID.ToString;

      Parameters.ParamByName('Type').Value := TypeMode;

      if FormName = EmptyStr then
        SQL.Text := StringReplace(SQL.Text, ':FormName', 'NULL', [])
      else
        Parameters.ParamByName('FormName').Value := FormName;

      if aConnection.Provider = 'Microsoft.Jet.OLEDB.4.0' then
      begin
        SQL.Text :=
          'Insert Into CodesInProcess(UserID,TableName,FieldName,[Value]) ' +
          ' values (:UserID ,:TableName,:FieldName,:Value )';

      end;

      Parameters.ParamByName('UserID').Value := User.id;
      Parameters.ParamByName('TableName').Value := tblName;
      Parameters.ParamByName('FieldName').Value := fldName;
      Parameters.ParamByName('Value').Value := Value;

      ExecSQL;
    end; // with
  finally
    qry.Free;
  end; // try
end;

function IsInProcess(aConnection: TADOConnection;
  tblName, fldName, FormName, code: string; ISKey, GetMAX: Boolean;
  step: Integer): Largeint;

var
  qry: TADOQuery;
  ownerName: String;
begin
  FormName := IntToStr(APPBank.Year) + '_' + LowerCase(FormName);
  tblName := LowerCase(tblName);
  fldName := LowerCase(fldName);
  qry := TADOQuery.Create(DmF.adcBSell);
  try
    with qry do
    begin
      Connection := aConnection;

      ownerName := 'util.';
      if aConnection.Provider = 'Microsoft.Jet.OLEDB.4.0' then
        ownerName := '';

      SQL.Text := 'Select ' + IfThen(GetMAX, 'MAX(Value) + 1', 'Min(Value) - 1')
        + ' from ' + ownerName + 'CodesInProcess where (TableName = ' +
        QuotedStr(tblName) + ') and (FieldName = ' + QuotedStr(fldName) +
      // ') and (cast(Value as bigint) = ' + code + ') and (type = 0) ';
        ') and (type = 0) ';
      if not ISKey then
        SQL.Add('AND (FormName=' + QuotedStr(FormName) + ')');

      Active := True;
      Result := Fields[0].AsLargeInt + step + IfThen(GetMAX, -1, 1);
      // not IsEmpty;
      Active := False;
    end; // with
  finally
    qry.Free;
  end; // try
end;

// procedure FreeReservedCodes(aConnection: TADOConnection; TableName: String = '';
// TypeMode: Byte = 0; FieldName: String = '');
// begin
// FreeReservedCodes(aConnection, TableName, FieldName, '', TypeMode);
// end;

procedure FreeReservedCodes(aConnection: TADOConnection; TableName: String = '';
  FieldName: String = ''; FormName: string = ''; TypeMode: Byte = 0);

var
  qry: TADOQuery;
  // ownerName:String;
begin
  if ReadDbOption(APPBank.name) then
    Exit;
  if FormName <> '' then
    FormName := IntToStr(APPBank.Year) + '_' + LowerCase(FormName);
  qry := TADOQuery.Create(DmF);
  try
    with qry do
    begin
      Connection := aConnection;
      SQL.Text := 'Delete From util.CodesInProcess';
      SQL.Add('Where ( UserID = ' + IntToStr(User.id) + ')');
      SQL.Add(' AND (IP = :IP ) ');
      if FormName <> '' then
        SQL.Add('AND (FormName=' + QuotedStr(FormName) + ')');
      Parameters.ParamByName('IP').Value := StringReplace(getIP, '.', '',
        [rfReplaceAll]); // + SPID.ToString;
      if qry.Connection.Provider = 'Microsoft.Jet.OLEDB.4.0' then
      begin
        SQL.Text := 'Delete From CodesInProcess WHERE ( UserID = ' +
          IntToStr(User.id) + ')';
      end;
      if TableName <> '' then
        SQL.Add('AND (TableName=' + QuotedStr(TableName) + ')');
      if FieldName <> '' then
        SQL.Add('AND (FieldName=' + QuotedStr(FieldName) + ')');
      ExecSQL;
    end; // with
  finally
    qry.Free;
  end; // try
end;

function TDmF.CheckUser(FormName, tblName, fldName: String;
  qry: TADOQuery): Boolean;
begin
  Result := True;
  with TADOQuery.Create(nil) do
    try
      Connection := qry.Connection;
      Close;
      SQL.Text :=
        Format('select UserId From util.CodesInProcess where ([Value] = %s) And ([TableName] = ''%s'') and (type = 1) ',
        [qry.fieldbyname(fldName).AsString, tblName]);
      Open;
      if not IsEmpty then
      begin
        qryGlbTmpTmp.Close;
        qryGlbTmpTmp.SQL.Text :=
          Format('SELECT name FROM Operators WHERE(UserID = %s)',
          [fieldbyname('UserId').AsString]);
        qryGlbTmpTmp.Open;
        Warn('مجاز به ويرايش نمي باشيد.‏'#13 + ' کاربر ' + qryGlbTmpTmp.Fields
          [0].AsString + ' در حال ويرايش اطلاعات مورد نظر شما مي باشد  ');
        Result := False;
        Exit;
      end;
      Add2InProcess(DmF.adcBSell, FormName, tblName, fldName,
        qry.fieldbyname(fldName).AsString, 1);
    finally
      Free;
    end;
end;

procedure TDmF.DoLogin;

var
  qry: TADOQuery;
begin
  // try
  // // NOT ADD Workflow Studio Tabels
  // WorkflowDmF.InitWorkFlow;
  // if WorkflowDmF.GETUser <> nil then
  // theWorkflowStudio.UserManager.LoggedUserId := WorkflowDmF.GETUser.UserID;
  // except
  // on E: Exception do
  // begin
  // add2log('اشکال در بروزرسانی' + E.Message);
  // end;
  // end;
  qry := TADOQuery.Create(Self);
  try
    with qry do
    begin
      Connection := DmF.adcFaraSystem;
      SQL.Text := 'Update Operators Set Level=1 where UserID = ' +
        IntToStr(User.id);
      ExecSQL;
    end; // with
    SaveConfig(APPID, 'LoginState', '1');
  finally
    qry.Free;
  end; // try
end;

procedure TDmF.DoLogout;

var
  qry: TADOQuery;
begin
  if (not DmF.adcBSell.Connected) or (User.id = 0) then
    Exit;
  if (not DmF.adcFaraSystem.Connected) then
    Exit;
  qry := TADOQuery.Create(Self);
  try
    with qry do
    begin
      Connection := DmF.adcFaraSystem;
      SQL.Text := 'Update Operators Set Level = 0 where UserID = ' +
        IntToStr(User.id);
      ExecSQL;
    end; // with
    SaveConfig(APPID, 'LoginState', '0');
  finally
    qry.Free;
  end; // try
end;

procedure TDmF.DataModuleCreate(Sender: TObject);

var
  b: Boolean;
  SkinPath, SkinName: string;
begin
  SkinPath := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))
    + 'Skin\';
  SkinManager.SkinDirectory := SkinPath;

  SkinManager.SkinDirectory := Copy(Application.ExeName, 0,
    LastDelimiter('\', Application.ExeName)) + 'Skin';
  SkinName := ReadConfig(APPID, 'SkinName', SkinManager.SkinName);
  b := StrToBool(ReadConfig(APPID, 'SkinActive2', 'False'));

  // بررسی وجود فولدر و فایل اسکین
  if b and DirectoryExists(SkinPath) and FileExists(SkinPath + SkinName + '.asz')
  then
  begin
    SkinManager.SkinName := SkinName;
    SkinManager.Active := True;
  end
  else
    SkinManager.Active := False;

  var_glb_CurrentDate := miladi2Shamsi(Now);
  var_glb_CurrentMonth := StrToIntDef(Copy(var_glb_CurrentDate, 6, 2), 0);

  myParams := TParams.Create(Self);
  ExtractImportantObjects;
  opt.AidInfoDate := var_glb_CurrentDate;
  initSmsDM;
  // if not bankexists('FaraSystems') then
  // begin
  // Warn('بانك اطلاعات پيدا نشد.');
  // Application.Terminate;
  // Halt;
  // end;//if

  CreateDir(__AppData + 'Bimeh\');
  adcsalary.Connected := False;
  adcFaraSystem.Connected := False;

  pathManufactory := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
  pathManufactory := pathManufactory + 'Bimeh\Manufactory.mdb';

end;

procedure TDmF.adcFaraSystemAfterConnect(Sender: TObject);
begin
  // var_SQL_ProductVersionSet;
end;

procedure TDmF.adcFaraSystemBeforeConnect(Sender: TObject);
begin
  assignServerName(Sender as TADOConnection, 'FaraSystems');
  // BigMessage('در حال اتصال به بانك اطلاعات ...',0);
end;

procedure InitReport(ReportName: TppReport; BandName: TppBand;
  aRegion: TppRegion; TopLine: TppLine; Footer: string);

var
  n, i: Byte;
  ts: TStrings;
begin
  // Exit;
  InitReportISDEMO(ReportName);
  SetUserQualitativeOnPrint(ReportName);

  n := CountOfChar(Footer, #13) + 1;
  if n = 1 then
    Exit;

  ts := TStringList.Create;
  try
    ts.Text := Footer;

    if (BandName = nil) or (aRegion = nil) or (TopLine = nil) then
      Exit;

    for i := 0 to n - 1 do
    begin
      // خط جداکننده (به جز خط اول)
      if i <> 0 then
        with TppLine.Create(ReportName) do
        begin
          Region := aRegion;
          Top := TopLine.Top + TopLine.Height;
          Height := aRegion.Top + aRegion.Height - TopLine.Top - TopLine.Height;
          Width := 1;
          Left := aRegion.Width - (trunc(TopLine.Width / n) * i) - Width + 1;
        end;

      // لیبل متن
      with TppLabel.Create(ReportName) do
      begin
        AutoSize := True;
        Transparent := True;
        Band := BandName;
        Region := aRegion;
        TextAlignment := taRightJustified;
        Font.name := 'zar';
        Font.Size := 9;
        Caption := Trim(ts[i]);
        Top := TopLine.Top - TopLine.Height + 4;
        Left := aRegion.Width - (trunc(TopLine.Width / n) * i) - Width - 1;
      end;
    end;

  finally
    FreeAndNil(ts); // ← رفع Memory Leak
  end;
end;

procedure TDmF.DataModuleDestroy(Sender: TObject);
begin
  try
    tsConcatField4StuffName.Free;
    DMSMSF.Free;
    // if APPBank.name <> EmptyStr then
    // FreeReservedCodes(adcBSell);    to Genelal dm
    myParams.Free;
    // if not adcBSell.Connected then
    // adcBSell.Connected := True;
    DoLogout;
    adcBSell.Connected := False;
    FreeAndNil(opt.RequiredFields);
  except

  end;
end;

procedure TDmF.adcAccountingBeforeConnect(Sender: TObject);

var
  p: Integer;
  b: Boolean;
begin
  mainF.statMain.Panels[0].Text := 'در حال اتصال به بانك حسابداري ...';

  // p := Pos('ASSETS', UpperCase(APPBank.name));
  //
  // b := (p <> 0) or (optSub.SubSys[18] = '0');
  // if b then
  // qry_Temp.Connection := DmF.adcBSell;

  assignServerName(Sender as TADOConnection, opt.AccountName);
  if optA.AccOldAvailable then // and DMf.adcOldAccounting.Connected
  begin
    DmF.qryAccTopicCode.Connection := DmF.adcOldAccounting;
    DmF.qryAccTopicCode.SQL.Text :=
      'SELECT Categories.TopicCode, Categories.MoeenName, Categories.MoeenName as MoeenName_L2 '
      + ' FROM  Categories WHERE MoeenId>0';
    DmF.qryAccCenterTopics.Connection := DmF.adcOldAccounting;
    DmF.qryAccCenterTopics.SQL.Text :=
      'SELECT CenterTopics.CTopicCode, CenterTopics.Desc  AS CTopicName' +
      ', CenterTopics.Desc, CenterTopics.Desc  AS CTopicName_L2 ';
    DmF.qryAccCenterTopics.SQL.Add('FROM CenterTopics');
    DmF.qryAccDetailCode.Connection := DmF.adcOldAccounting;
    DmF.qryAccDetailCode.SQL.Text :=
      'SELECT DetailCode,Desc AS DetailName,Desc,Desc AS DetailName2,0 as CompanyCode FROM Details ';

    DmF.qryAccCenterTopics2.Connection := DmF.adcOldAccounting;
    DmF.qryAccCenterTopics2.SQL.Text :=
      'SELECT CenterTopics.CTopicCode, CenterTopics.Desc,CenterTopics.CTopicCode as CTopicCode2 '
      + ', CenterTopics.Desc   AS CTopicName2, CenterTopics.Desc   AS CTopicName2_L2 ';
    DmF.qryAccCenterTopics2.SQL.Add('FROM CenterTopics');
  end;
end;

procedure TDmF.adcAuditLogBeforeConnect(Sender: TObject);
begin
  assignServerName(Sender as TADOConnection, 'AuditLog')
end;

procedure Entity_Weight(Grid: TDBGrid);

var
  i: Integer;
  FName, DisLbl, s: String;
begin
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    if Pos('entity', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
    begin
      // Grid.Columns[i].Visible := opt.EntityDisplay;
      setColumns2(Grid, opt.EntityDisplay, Grid.Columns[i].FieldName);
      FName := Grid.Columns[i].FieldName;
      DisLbl := Grid.DataSource.DataSet.fieldbyname(FName).DisplayLabel;
      DisLbl := StringReplace(DisLbl, 'مقدار', opt.EntityCaption, []);
      Grid.DataSource.DataSet.fieldbyname(FName).DisplayLabel := DisLbl;
    end;
    if Pos('weight', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
    begin
      // Grid.Columns[i].Visible := opt.WeightDisplay;
      setColumns2(Grid, opt.WeightDisplay, Grid.Columns[i].FieldName);
      FName := Grid.Columns[i].FieldName;
      DisLbl := Grid.DataSource.DataSet.fieldbyname(FName).DisplayLabel;
      DisLbl := StringReplace(DisLbl, 'وزن', opt.WeightCaption, []);
      Grid.DataSource.DataSet.fieldbyname(FName).DisplayLabel := DisLbl;
    end;
    if Pos('stuffsize', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
    begin
      Grid.Columns[i].Font.name := 'Modern';
      Grid.Columns[i].Font.Height := -13;
      // Grid.Columns[i].Visible := opt.AidInfoAvailable;
      setColumns2(Grid, opt.AidInfoAvailable, Grid.Columns[i].FieldName);

      // Grid.Columns[i].Font.Style:=StrToFontStyle('B');
    end;
    if Pos('stuffdiameter', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      // Grid.Columns[i].Visible := opt.AidInfoAvailable;
      setColumns2(Grid, opt.AidInfoAvailable, Grid.Columns[i].FieldName);
    if Pos('stuffalloy', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      // Grid.Columns[i].Visible := opt.AidInfoAvailable;
      setColumns2(Grid, opt.AidInfoAvailable, Grid.Columns[i].FieldName);
    if Pos('stuffgrade', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      // Grid.Columns[i].Visible := opt.AidInfoAvailable;
      setColumns2(Grid, opt.AidInfoAvailable, Grid.Columns[i].FieldName);
    if Pos('controlcode', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      // Grid.Columns[i].Visible := opt.ControlCodeActive;
      setColumns2(Grid, opt.ControlCodeActive > 0, Grid.Columns[i].FieldName);
  end;
  setColumns2(Grid, opt.StuffTecInfoActive, 'c_StuffTecInfo');
  setColumns2(Grid, opt.Carton, 'UnitName2');
  if Grid.DataSource.DataSet.FindField('St1Name') <> nil then
  begin
    s := GetStName(1);
    Grid.DataSource.DataSet.fieldbyname('St1Name').DisplayLabel := s;
    setColumns2(Grid, not s.IsEmpty, 'St1Name');
  end;

end;

procedure Entity_Weight(Grid: TCedarDbgrid);

var
  i: Integer;
  FName, DisLbl, s: String;
begin
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    if Pos('entity', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
    begin
      // Grid.Columns[i].Visible := opt.EntityDisplay;
      setColumns2(Grid, opt.EntityDisplay, Grid.Columns[i].FieldName);
      FName := Grid.Columns[i].FieldName;
      if Grid.DataSource.DataSet.FindField(FName) <> nil then
      begin
        DisLbl := Grid.DataSource.DataSet.fieldbyname(FName).DisplayLabel;
        DisLbl := StringReplace(DisLbl, 'مقدار', opt.EntityCaption, []);
        Grid.DataSource.DataSet.fieldbyname(FName).DisplayLabel := DisLbl;
      end;
    end;
    if Pos('weight', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
    begin
      // Grid.Columns[i].Visible := opt.WeightDisplay;
      setColumns2(Grid, opt.WeightDisplay, Grid.Columns[i].FieldName);
      FName := Grid.Columns[i].FieldName;
      if Grid.DataSource.DataSet.FindField(FName) <> nil then
      begin
        DisLbl := Grid.DataSource.DataSet.fieldbyname(FName).DisplayLabel;
        DisLbl := StringReplace(DisLbl, 'وزن', opt.WeightCaption, []);
        Grid.DataSource.DataSet.fieldbyname(FName).DisplayLabel := DisLbl;
      end;
    end;
    if Pos('stuffsize', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
    begin
      Grid.Columns[i].Font.name := 'Modern';
      Grid.Columns[i].Font.Height := -13;
      // Grid.Columns[i].Visible := opt.AidInfoAvailable;
      setColumns2(Grid, opt.AidInfoAvailable, Grid.Columns[i].FieldName);
      // Grid.Columns[i].Font.Style:=StrToFontStyle('B');
    end;
    if Pos('stuffdiameter', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      // Grid.Columns[i].Visible := opt.AidInfoAvailable;
      setColumns2(Grid, opt.AidInfoAvailable, Grid.Columns[i].FieldName);
    if Pos('stuffalloy', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      // Grid.Columns[i].Visible := opt.AidInfoAvailable;
      setColumns2(Grid, opt.AidInfoAvailable, Grid.Columns[i].FieldName);
    if Pos('stuffgrade', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      // Grid.Columns[i].Visible := opt.AidInfoAvailable;
      setColumns2(Grid, opt.AidInfoAvailable, Grid.Columns[i].FieldName);
    if Pos('controlcode', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      // Grid.Columns[i].Visible := opt.ControlCodeActive;
      setColumns2(Grid, opt.ControlCodeActive > 0, Grid.Columns[i].FieldName);
  end;
  setColumns2(Grid, opt.StuffTecInfoActive, 'c_StuffTecInfo');
  setColumns2(Grid, opt.Carton, 'UnitName2');
  if Grid.DataSource.DataSet.FindField('St1Name') <> nil then
  begin
    s := GetStName(1);
    Grid.DataSource.DataSet.fieldbyname('St1Name').DisplayLabel := s;
    setColumns2(Grid, not s.IsEmpty, 'St1Name');
  end;

end;

function PriceOnStoreType(StoreID: Integer; Grid: TCustomControl;
  aDataSet: TDataSet; StoreKindProductModel: string = ''): Boolean;
var
  sFilter, DisLbl: string;
  MyField: TField;
  Coll: TCollectionItem;
  clmns: TCollection;
  fldName, StoreKind, EntityCaption, WeightCaption: string;
  b: Boolean;
  i: Integer;
  ts: TStringList;
begin
  Result := True;
  if StoreKindProductModel <> '' then
    with DmF.qryStores do
    begin
      Active := True;
      if locate('StoreID', StoreID, []) then
      begin
        StoreKind := ',' + fieldbyname('StoreKind').AsString + ',';
        b := Pos(StoreKind, ',' + StoreKindProductModel + ',') > 0;
        if (Grid <> nil) and (Grid is TDBGrid) then
        begin
          setColumns2(TDBGrid(Grid), b, 'ProductModel', aVisible);
          setColumns2(TDBGrid(Grid), b, '_ProductModelName', aVisible);
        end;
        if (Grid <> nil) and (Grid is TCedarDbgrid) then
        begin
          setColumns2(TCedarDbgrid(Grid), b, 'ProductModel', aVisible);
          setColumns2(TCedarDbgrid(Grid), b, '_ProductModelName', aVisible);
        end;
      end;
    end;
  if aDataSet <> nil then
    with DmF.qryStores do
    begin
      Active := True;
      if locate('StoreID', StoreID, []) then
      begin
        EntityCaption := fieldbyname('EntityCaption').AsString;
        WeightCaption := fieldbyname('WeightCaption').AsString;
        if (not EntityCaption.IsEmpty) or (not WeightCaption.IsEmpty) then
          for i := 0 to aDataSet.Fields.Count - 1 do
          begin
            if aDataSet.Fields[i].DefaultExpression.IsEmpty then
              aDataSet.Fields[i].DefaultExpression := aDataSet.Fields[i]
                .DisplayLabel;
            DisLbl := aDataSet.Fields[i].DefaultExpression;
            DisLbl := StringReplace(DisLbl, opt.EntityCaption,
              EntityCaption, []);
            DisLbl := StringReplace(DisLbl, opt.WeightCaption,
              WeightCaption, []);
            aDataSet.Fields[i].DisplayLabel := DisLbl;
          end;
      end;
    end;
  if User.PowerUser then
    Exit;
  try
    with DmF.qryStoreType do
    begin
      Active := True;
      Filtered := False;
      sFilter := Format('n_StoreID= %d AND n_UserID= %d', [StoreID, User.id]);
      if StoreID = 0 then
        sFilter := Format(' n_UserID= %d', [User.id]);
      Filter := sFilter;
      Filtered := True;
      if RecordCount = 0 then
      begin
        Exit;
      end;
      Result := fieldbyname('StoreType').AsInteger = 1;
    end; // with
    // انبار مقداري
    if mdiMainF.MainFrame.GetActiveIndex = 13 then
      Result := False;
    // انبار مقداري
  finally
    if not Result and (Grid <> nil) then
    begin
      ts := TStringList.Create;
      try   // ← اضافه شد
        // ts.Add('price');
        if Grid is TDBGridEh then
          clmns := TDBGridEh(Grid).Columns
        else
          clmns := TDBGrid(Grid).Columns;
        for Coll in clmns do
        begin
          fldName := LowerCase(Coll.displayname);
          MyField := aDataSet.FindField(fldName);
          if (Pos('price', fldName) <> 0) or (Pos('bed', fldName) <> 0) or
            (Pos('bes', fldName) <> 0) or (Pos('balance', fldName) <> 0) or
            (Pos('sellprice', fldName) <> 0)
          then
          begin
            ts.Add(fldName);
            if Coll is TColumn then
            begin
              b := Result and (Coll as TColumn).Visible;
              setColumns2(TDBGrid(Grid), b, fldName);
            end
            else
            begin
              b := Result and (Coll as TColumnEh).Visible;
              setColumns2(TDBGridEh(Grid), b, fldName);
            end;
          end
          else if (MyField <> nil) and
            ((MyField is TBCDField) or (MyField is TCurrencyField)) then
            if TBCDField(MyField).Currency then
            begin
              if Coll is TColumn then
              begin
                b := Result and (Coll as TColumn).Visible;
                setColumns2(TDBGrid(Grid), b, fldName);
              end
              else
              begin
                b := Result and (Coll as TColumnEh).Visible;
                setColumns2(TDBGridEh(Grid), b, fldName);
              end;
            end;
          MyField := aDataSet.FindField(fldName);
          if MyField <> nil then
          begin
            if Coll is TColumn then
              MyField.Visible := (Coll as TColumn).Visible
            else
              MyField.Visible := (Coll as TColumnEh).Visible
          end;
        end;
        for i := 0 to ts.Count - 1 do
        begin
          if (Grid <> nil) and (Grid is TDBGrid) then
          begin
            setColumns2(TDBGrid(Grid), False, ts[i]);
          end;
          if (Grid <> nil) and (Grid is TCedarDbgrid) then
          begin
            setColumns2(TCedarDbgrid(Grid), False, ts[i]);
          end;
        end;
        // Coll := nil;
        for i := 0 to ts.Count - 1 do
          for Coll in clmns do
            if LowerCase(Coll.displayname) = LowerCase(ts[i]) then
              Coll.Destroy;
      finally
        ts.Free;   // ← اینجا امن شد
      end;
    end;
  end;
end;

// function PriceOnStoreType2(StoreID: Integer;Grid :TDBGrid): Boolean;
// var
// qry:  TADOQuery;
// i:Integer;
// begin
// Result:=True;
// if (User .admin)or(StoreID=0) then Exit;
// qry:=TADOQuery.Create(DMf);
// try
// with qry do begin
// Connection:=DMf.adcBSell;
// SQL.Text:='SELECT StoreType FROM UsersStore '+
// 'WHERE (n_StoreID = '+IntToStr(StoreID)+')AND(n_UserID = '+IntToStr(User.id)+')';
// Active:=True;
// if Fields[0].IsNull then  Result:=False
// else  Result:=Fields[0].AsInteger=1;
// Active:=False;
// end;//with
// finally
// if Grid<>nil then
// for i:=1 to Grid.Columns.Count-1 do
// if Pos('price',LowerCase(Grid.Columns[i].FieldName))<>0  then
// Grid.Columns[i].Visible:=Result and Grid.Columns[i].Visible;
// qry.Free;
// end;//try
// end;

procedure InitReportFile(ReportName: TppReport; GeneralFileName: string;
  constFileName: Boolean = False; WithPrice: Boolean = False;
  String4Replace: String = 'فرم'; SellsEmporium: Boolean = True;
  aPrintKind: TPrintKind = pkPrint); overload;

var
  s, FileName: String;
  appLabel: TppLabel;
  i: Integer;
  MyForm: Ttemplate2MDIF;
  SellsEmporiumFrom: Integer;
  lblSellsEmporium: TppLabel;
  Body, ReportFormat, Subject, Recipients: String;
  // DBText: TppDBText;
begin
  Body := ReportName.EmailSettings.Body.Text;
  if Body = EmptyStr then
    Body := Application.MainForm.Caption + #13#10 + User.name;
  ReportFormat := ReportName.EmailSettings.ReportFormat;
  // if ReportFormat = 'PDF' then
  // ReportFormat := 'JPEG';
  Subject := ReportName.EmailSettings.Subject;
  if Subject = EmptyStr then
    Subject := APPBank.CompanyName;
  Recipients := ReportName.EmailSettings.Recipients.Text;
  if Recipients = EmptyStr then
    Recipients := 'aAbedi25@Gmail.com';

  MyForm := Ttemplate2MDIF(ReportName.Owner);
  { FileName:=(نام گزارش _ فرم)FileName4Entity_Weight
    +(گزارش با مبلغ يا بدون مبلغ)WithPrice+(گزارش با مقدار و وزن يا بدون مقدار و وزن)'Entity.rtm'; }
  if (not constFileName) and (mdiMainF.MainFrame.GetActiveIndex <= 14) then
  begin
    if WithPrice then
      s := 'price';
    if opt.EntityDisplay then
      FileName := GeneralFileName + s + 'Entity.rtm';
    if opt.WeightDisplay then
      FileName := GeneralFileName + s + 'Weight.rtm';
    if (opt.EntityDisplay) and (opt.WeightDisplay) then
      FileName := GeneralFileName + s + '.rtm';
  end;

  with ReportName do
  begin
    if constFileName or ((mdiMainF.MainFrame.GetActiveIndex > 14)) then
    begin
      FileName := GeneralFileName;
      if Pos('.rtm', LowerCase(GeneralFileName)) = 0 then
        FileName := GeneralFileName + '.rtm';
    end; // if

    Template.FileName := GetReportFileWithPath(FileName);

    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
      begin
        Warn('فايل چاپي ' + FileName + ' يافت نشد.!‏');
        // UpdateExeF.DownLoadReport(FileName);
      end;
      InitReportISDEMO(ReportName);
      AllowPrintToArchive := True;
      PDFSettings.FontEncoding := feUnicode;
      for i := 0 TO MyForm.ComponentCount - 1 do
      begin
        if MyForm.Components[i] is TppLabel then
        begin
          appLabel := TppLabel(MyForm.Components[i]);
          if (Pos('مقدار', LowerCase(appLabel.Caption)) <> 0) and (opt.Carton)
          then
            appLabel.Caption := StringReplace(appLabel.Caption, 'مقدار',
              opt.EntityCaption, []);
          if (Pos('وزن', LowerCase(appLabel.Caption)) <> 0) and (opt.Carton)
          then
            appLabel.Caption := StringReplace(appLabel.Caption, 'وزن',
              opt.WeightCaption, []);
          if (Pos('فرم', LowerCase(appLabel.Caption)) <> 0) then
            appLabel.Caption := StringReplace(appLabel.Caption, 'فرم',
              String4Replace, []);
        end; // if
        SetUserQualitativeOnPrint(ReportName);
      end; // for
      SetSendToBackShapeOnPrint(MyForm);
      try
        // Error in SeverableF    TTemplate4F
        if ReportName.Owner is Ttemplate2MDIF then
          if SellsEmporium and (MyForm.myParams.FindParam('SellsEmporium')
            <> nil) then
          begin
            SellsEmporiumFrom :=
              GetcFrom(MyForm.myParams.ParamValues['SellsEmporium'], ftInteger);
            lblSellsEmporium :=
              TppLabel(MyForm.FindComponent('plblSellsEmporiumName'));
            if Assigned(lblSellsEmporium) then
              lblSellsEmporium.Text := GetSellsEmporiumName(SellsEmporiumFrom);
          end;
      except
      end;
      // ThumbnailSettings.Enabled := False;
      // ThumbnailSettings.Visibl := False;
      PDFSettings.FontEncoding := feUnicode;

      if PrintPreview then
        DeviceType := 'Screen'
      else
      begin
        DeviceType := 'Printer';
        ShowPrintDialog := False;
      end;

      case aPrintKind of
        pkPrint:
          begin
            Print;
          end;
        pkSendMali:
          begin
            EmailSettings.Body.Text := Body;
            EmailSettings.Subject := Subject;
            EmailSettings.ReportFormat := ReportFormat;
            EmailSettings.Recipients.Text := Recipients;
            EmailSettings.FromName := SYSCAPTION;
            EmailSettings.PreviewInEmailClient := False;
            EmailSettings.ShowEmailDialog := True;
            EmailSettings.ShowCancelDialog := True;
            EmailSettings.Enabled := True;
            PDFSettings.FontEncoding := feUnicode;
            SendMail;
          end;
        psSendFlow:
          begin

          end;
      end;

    finally
    end;
  end;
end;

procedure InitReportFile(ReportName: TppReport; GeneralFileName: string;
  Grid: TComponent; ppDBPipeline: TppDBPipeline; filterCaption: string = '');

var
  FileName: String;
  MyForm: Ttemplate2MDIF;
  lblCompany: TppLabel;
  afrom, ato: Integer;
  MyQuery: TADOQuery;
  i: Integer;
begin
  MyForm := Ttemplate2MDIF(ReportName.Owner);
  with ReportName do
    try
      FileName := GeneralFileName + '.rtm';
      Template.FileName := GetReportFileWithPath(FileName);

      if not Assigned(ppDBPipeline) then
        ppDBPipeline := TppDBPipeline(ReportName.DataPipeline);

      if Assigned(Grid) and (SeletedPrintEnabled) then
      begin
        if Grid is TDBGrid then
          SeletedPrint(ppDBPipeline, TDBGrid(Grid))
        else
          SeletedPrint(ppDBPipeline, TCedarDbgrid(Grid));
      end;

      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
      begin
        Warn('فايل چاپي مورد نظر يافت نشد.!‏' + #13#13 + Template.FileName);
        // UpdateExeF.DownLoadReport(FileName);

      end;
      InitReportISDEMO(ReportName);
      PDFSettings.FontEncoding := feUnicode;
      if PrintPreview then
        DeviceType := 'Screen'
      else
        DeviceType := 'Printer';

      if (filterCaption <> '') then
      begin
        for i := 0 to MyForm.ComponentCount - 1 do
          if MyForm.Components[i] is TppLabel then
          begin
            lblCompany := TppLabel(MyForm.Components[i]);
            if ((LowerCase(lblCompany.UserName) = 'lblfiltercaption') or
              (LowerCase(lblCompany.UserName) = 'pplbcompanyname')) then
            begin
              lblCompany.OnGetText := nil;
              lblCompany.Text := filterCaption;
              Break;
            end;

          end;

      end;

      if MyForm.myParams.FindParam('CompanyCode') <> nil then
      begin
        afrom := GetcFrom(MyForm.myParams.ParamValues['CompanyCode'],
          ftInteger);;
        ato := GetcTo(MyForm.myParams.ParamValues['CompanyCode'], ftInteger);;
        if afrom = ato then
        begin
          for i := 0 to MyForm.ComponentCount - 1 do
            if MyForm.Components[i] is TppLabel then
            begin
              lblCompany := TppLabel(MyForm.Components[i]);
              if ((LowerCase(lblCompany.UserName) = 'pplbcompanyname') or
                (LowerCase(lblCompany.UserName) = 'lblfiltercaption')) then
              begin
                lblCompany.OnGetText := nil;
                lblCompany.Text := GetCompanyName(afrom);
                Break;
              end;

            end;

          // lblCompany := TppLabel(MyForm.FindComponent('ppLBCompanyName'));
          // if Assigned(lblCompany) then
          // begin
          // lblCompany.OnGetText := nil;
          // lblCompany.Text := opt.GetCompanyName(afrom);
          // end;
        end;
      end // if
      else if (ppDBPipeline.DataSource.DataSet) is TADOQuery then
      begin
        MyQuery := TADOQuery(ppDBPipeline.DataSource.DataSet);
        if MyQuery.Parameters.FindParam('CompanyCodeFrom') <> nil then
        begin
          ato := MyQuery.Parameters.ParamByName('CompanyCodeTo').Value;
          afrom := MyQuery.Parameters.ParamByName('CompanyCodeFrom').Value;
          if afrom = ato then
          begin
            for i := 0 to MyForm.ComponentCount - 1 do
              if MyForm.Components[i] is TppLabel then
              begin
                lblCompany := TppLabel(MyForm.Components[i]);
                if LowerCase(lblCompany.UserName) = 'pplbcompanyname' then
                begin
                  lblCompany.OnGetText := nil;
                  lblCompany.Text := GetCompanyName(afrom);
                  Break;
                end;
              end;

            // lblCompany := TppLabel(MyForm.FindComponent('ppLBCompanyName'));
            // if Assigned(lblCompany) then
            // begin
            // lblCompany.OnGetText := nil;
            // lblCompany.Text := opt.GetCompanyName(afrom);
            // end;
          end;
        end;
      end;
      ReportName.PreviewFormSettings.SinglePageOnly := True;
      Print;
    finally
    end; // try
end;

procedure AddCoding(aType: Integer; aCode: Integer);
begin
  // if trim(optA.AccBankNames) = EmptyStr then    Exit;
  with TADOStoredProc.Create(DmF) do
    try
      Connection := DmF.adcAccounting;
      ProcedureName := 'acc.AddCodingAllBank';
      Parameters.Refresh;
      Parameters.ParamByName('@SqlType').Value := aType;
      Parameters.ParamByName('@Code').Value := aCode;
      Parameters.ParamByName('@CBankName').Value := APPBank.name;
      ExecProc;
    finally
      Free;
    end;
end;

function GetSellsEmporiumName(SellsEmporium: Integer): String;
begin
  with TADOQuery.Create(DmF.adcBSell) do
    try
      Connection := DmF.adcBSell;
      SQL.Text :=
        Format('SELECT SellsEmporiumName FROM SellsEmporiums WHERE (SellsEmporium = %D)',
        [SellsEmporium]);
      Active := True;
      Result := Fields[0].AsString;
    finally
      Free;
    end;
end;

function InitCaptions(SYSID: Integer; LanguageID: Integer; FormSerial: Integer;
  Type1: Integer; Type2: Integer; LabelID: Integer): String;

var
  qry: TADOQuery;
begin
  Result := 'نامعتبر';
  qry := TADOQuery.Create(DmF);
  try
    with qry do
    begin
      Connection := DmF.adcFaraSystem;
      SQL.Text := 'SELECT LabelCaption FROM InitCaptions WHERE(LabelID=' +
        IntToStr(LabelID) + ')AND(Type2=' + IntToStr(Type2) + ')AND(Type1=' +
        IntToStr(Type1) + ')AND(FormSerial=' + IntToStr(FormSerial) +
        ')AND(LanguageID=' + IntToStr(LanguageID) + ')AND(SysID=' +
        IntToStr(SYSID) + ')';
      Active := True;
      if Fields[0].IsNull then
        Result := 'نامعتبر'
      else
        Result := Fields[0].AsString;
      Active := False;
    end; // with
  finally
    qry.Free;
  end; // try
end;

procedure TDmF.adcOldAccountingBeforeConnect(Sender: TObject);
begin
  if not optA.AccOldAvailable then
  begin
    adcOldAccounting.Mode := cmUnknown;
    adcOldAccounting.Provider := 'SQLOLEDB.1';
    assignServerName(Sender as TADOConnection, optA.LastAccYear);
  end
  else if (not FileExists(APPBank.AccPath) and optA.AccOldAvailable) then
  begin
    Warn('مسير بانك اطلاعات حسابداري مالي معتبر نيست.');
    Exit;
  end;
end;

procedure TDmF.adcsalaryBeforeConnect(Sender: TObject);

const
  Salary = 'Salary_';

var
  SalaryDBName: string;
begin
  if APPBank.name <> EmptyStr then
    assignServerName(DmF.adcsalary, APPBank.name);

  // SalaryDBName := ReadConfig(APPID, 'SalaryBankName', Salary);
  // if SalaryDBName = Salary then
  // SalaryDBName := get_box('نام بانک حقوق دستمزد',
  // 'نام بانک حقوق دستمزد را وارد کنید', SalaryDBName);
  // assignServerName(Sender as TADOConnection, SalaryDBName);
  // SaveConfig(APPID, 'SalaryBankName', SalaryDBName);
end;

function CalcSumFileds(qry: TADOQuery; FiledName: String): Extended;
begin
  Result := 0;
  if ((not UserQualitative) and UserQualitativeOnF(FiledName)) then
    Exit;

  if (qry.Active) and (qry.FindField(FiledName) <> nil) then
    with TADOQuery.Create(DmF.adcBSell) do
      try
        Clone(qry, ltReadOnly);
        DisableControls;
        First;
        while not eof do
        begin
          Result := Result + fieldbyname(FiledName).AsExtended;
          Next;
        end; // while
      finally
        EnableControls;
        Free;
      end; // try
end;

function CalcSumFileds(qry: TDataSet; FiledName: String): Extended; overload;
begin
  Result := 0;
  if ((not UserQualitative) and UserQualitativeOnF(FiledName)) then
    Exit;

  if (qry.Active) and (qry.FindField(FiledName) <> nil) then
    with qry do
      try
        DisableControls;
        First;
        while not eof do
        begin
          Result := Result + fieldbyname(FiledName).AsExtended;
          Next;
        end; // while
      finally
        EnableControls;
      end; // try
end;

function CalcSumFileds(FiledName: TField): Extended; overload;

var
  qry: TADOQuery;
begin
  Result := 0;
  if ((not UserQualitative) and UserQualitativeOnF(FiledName.FieldName)) then
    Exit;
  qry := TADOQuery(FiledName.DataSet);
  if qry.Active then
    with TADOQuery.Create(DmF.adcBSell) do
      try
        Clone(qry, ltReadOnly);
        DisableControls;
        First;
        while not eof do
        begin
          Result := Result + fieldbyname(FiledName.FieldName).AsFloat;
          Next;
        end; // while
        EnableControls;
      finally
        Free;
      end; // try
end;

function InitCombos(Combo_Box: TComboBox; SQL_Txt: String): String;
begin
  Combo_Box.Clear;
  with DmF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := SQL_Txt;
    Active := True;
    while not eof do
    begin
      Combo_Box.items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Result := Result + Fields[0].AsString + ',';
      Next;
    end; // while
    Active := False;
  end; // with
  SetLength(Result, Length(Result) - 1);
end;

procedure InitDBCombos(Combo_Box: TDBComboBox; SQL_Txt: String);
begin
  Combo_Box.Clear;
  with TADOQuery.Create(nil) do
    try
      Connection := DmF.adcBSell;
      SQL.Text := SQL_Txt;
      Active := True;
      while not eof do
      begin
        Combo_Box.items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end; // while
    finally
      Free;
    end;
end;

function BackupDatabaseLocalAndNet(Path: String; ChooseDir: Boolean = False;
  FaraSysetmBackup: Boolean = True; ReportFilesBackup: String = '';
  ArchiveFilesBackup: String = ''): Boolean;

var
  s: String;
  BackupFileName: String;
begin
  Result := False;

  try
    // BackupDatabaseFTP(DMf.adcBSell, APPBank, Path, DMf.IdFTP1, ChooseDir);

    Result := BackupDatabaseHttp(DmF.adcBSell, APPBank, Path, ChooseDir, True,
      FaraSysetmBackup, ReportFilesBackup, ArchiveFilesBackup);

  except
    on E: Exception do
    begin
      warn2('سرویس فرا رایانه بروز نیست یا مشکل دسترسی فایل دارد' + E.Message);
      add2log('سرويس تهيه پشتيبان يافت نشد' + E.Message);

      // انتخاب مسیر پشتیبان‌گیری
      if ChooseDir and (Path = '') then
      begin
        if not SelectDirectory('لطفاً مسیر پشتیبان‌گیری را وارد کنید:', '', s)
        then
          Exit;
      end
      else
        s := Path;

      // ساخت نام فایل پشتیبان
      BackupFileName := s + '\' + MakeUniqDBBackupName(APPBank.name,
        var_glb_CurrentDate) + '.zip';

      // انتخاب روش پشتیبان‌گیری
      if UpperCase(opt.ServerName) <> __ComputerName then
        Result := BackupDatabaseNet(DmF.adcBSell, APPBank,
          BackupFileName, False)
      else
        Result := BackupDatabase(DmF.adcBSell, APPBank, BackupFileName, False);
    end;
  end;
end;
procedure TDmF.AutoBackup;

var
  p: String;
  s: String;
  // fAge:  TDateTime;
  doBackup: Boolean;
begin
  try
    doBackup := (DmF.adcBSell.Connected) and (opt.AutoBackup);
    if not doBackup then
      Exit;
    p := ReadConfig(APPID, 'AutoBackupPath', 'd:\FaraBackup\BSellBackup');
    SysUtils.ForceDirectories(p);
    s := p + '\' + ReadConfig(APPID, 'LastBackUp' + APPBank.name) + '.zip';
    if FileExists(s) then
      doBackup := (HoursBetween(FileDateToDateTime(SysUtils.FileAge(s)),
        Now) > 3);
    if not doBackup then
      Exit;
    BackupDatabaseLocalAndNet(p);
    SaveConfig(APPID, 'LastBackUp' + APPBank.name,
      MakeUniqDBBackupName(APPBank.name, var_glb_CurrentDate));
  except
    Warn('اشكال در تهيه پشتيبان اتوماتيك');
  end;
end;

function initDBComboBoxAcc(Combo: TDBComboBox; FormType: Integer): Integer;

var
  FiledId: Integer;
begin
  Combo.Clear;
  FiledId := 1;
  if opt.primaryLanguage <> 0 then
    FiledId := 2;
  with DmF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT FormInfoID,InfoName_L1,InfoName_L2 FROM acc.FormsInfo '
      + 'WHERE FormType = ' + IntToStr(FormType);
    Active := True;
    while not eof do
    begin
      Combo.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
  Result := Combo.items.Count;
end;

function initDBComboBoxPay(Combo: TDBComboBox; FormType: Integer): Integer;

var
  FiledId: Integer;
begin
  Combo.Clear;
  FiledId := 1;
  if opt.primaryLanguage <> 0 then
    FiledId := 2;
  with DmF.qryTmpTmpP do
  begin
    Active := False;
    SQL.Text := 'SELECT FormInfoID,InfoName_L1,InfoName_L2 FROM pay.FormsInfo '
      + 'WHERE FormType = ' + IntToStr(FormType);
    Active := True;
    while not eof do
    begin
      Combo.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
  Result := Combo.items.Count;
end;

procedure TDmF.adcBSellAfterDisconnect(Sender: TObject);
begin
  fdcBSell.Connected := False;
end;

procedure TDmF.adcBSellBeforeConnect(Sender: TObject);
begin
  if APPBank.name <> EmptyStr then
    assignServerName(DmF.adcBSell, APPBank.name);
end;

procedure TDmF.adcAccountingAfterConnect(Sender: TObject);
begin
  mainF.statMain.Panels[0].Text := EmptyStr;

  // CloseMessage;
  if not optA.AccOldAvailable then
  begin
    qry_Company.Active := True;
    qry_Company.Active := False;
  end;
  AccountingAfterConnect;

end;

procedure InitComboYearID(Combo_Box: TComboBox);

var
  i: Integer;
begin
  Combo_Box.Clear;
  with DmF.qryAccOldAndNew do
  begin
    Active := False;
    SQL.Text := 'SELECT YearID FROM Util.MaliYear';

    SQL.Add('WHERE (Status = 0)');
    Active := True;
    while not eof do
    begin
      Combo_Box.items.AddObject(Fields[0].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end;
    Active := False;
  end;
  Combo_Box.ItemIndex := Combo_Box.items.IndexOfObject(TObject(APPBank.Year));

  i := Combo_Box.items.IndexOfObject(TObject(APPBank.Year));
  if i > -1 then
    Combo_Box.ItemIndex := i
  else
    warn2('سال مالی وجود ندارد', 4000);
end;

function TDmF.AmvalCal(BaseDate: string; sn: Integer;
  QryCal: TADOQuery = nil): Boolean;

var
  SumFirstDepValue, SumDepValueInYear, AidFirstDepValue, AidDepValueInYear,
    DepValueInYear, SumPrice, FirstDepValue: Currency;
  StopAssets: Boolean;
  BeforeSerial: Integer;
  StartUsingDate_U: TDate;
  StartNowMaliYear: TDate;
  CalDateMode1: TDate;
  calculatedate: TDate;
  Kind: Integer;
  i: Integer;
  c: Integer;
  // ---------------------------------Insert Values ---------------------------
procedure InsertValue(SecondKind: Byte; keyValue: Integer);

var
  sqlinsert: string;
  TableName: string;
begin
  TableName := EmptyStr;
  SumFirstDepValue := RoundTo(SumFirstDepValue, 0);
  SumDepValueInYear := RoundTo(SumDepValueInYear, 0);
  SumPrice := RoundTo(SumPrice, 0);
  case SecondKind of
    0:
      TableName := 'BerakAmval';

    1:
      case Kind of
        0:
          TableName := 'Amval';

        1:
          TableName := 'Expenses';
      end; // case2
    3:
      TableName := 'Movement';
  end;
  if TableName <> EmptyStr then
  begin
    sqlinsert :=
      Format('exec Assets.InsertValues ''%d'',''%d'',''%S'',''%d'',''%s'',''%s''',
      [sn, APPBank.Year, TableName, keyValue, CurrToStr(SumFirstDepValue),
      CurrToStr(SumDepValueInYear)]);
    try
      ExecuteQry(sqlinsert, sn);
    finally
      if opt.TimeToDefinitive = 1 then
        ExecuteQry
          (Format('UPDATE assets.Amval SET AmvalState = 1 WHERE SerialNum =%d ',
          [keyValue]), sn);
    end;

    sqlinsert := 'UPDATE Assets.DepTable' +
      ' SET DepvalueInyear = ROUND(Assets.DepTableCo.DepCoValue * Assets.DepTable.DepvalueInyear, 0)'
      + ' FROM Assets.DepTableCo INNER JOIN' +
      ' Assets.DepTable ON Assets.DepTableCo.Yearid = Assets.DepTable.Yearid AND Assets.DepTableCo.SerialNum'
      + ' = Assets.DepTable.Serial' +
      ' WHERE (Assets.DepTable.Tablename = N''Amval'') ' +
      ' AND (Assets.DepTableCo.Yearid = %d ) ' +
      ' AND (Assets.DepTable.Serial = %d )';

    sqlinsert := Format(sqlinsert, [APPBank.Year, sn]);
    try
      c := ExecuteQry(sqlinsert, sn);
      if c > 0 then
        warn2('سریال ' + sn.ToString + '  ثبت ضریب استهلاک انجام شد.', 1000);

    finally
    end;

  end;

end;
// --------------------------------Update Amval------------------------------
procedure UpdateValue(SecondKind: Byte; keyValue: Integer);

Var
  SqlUpdate: String;
begin
  SumFirstDepValue := RoundTo(SumFirstDepValue, 0);
  SumDepValueInYear := RoundTo(SumDepValueInYear, 0);
  SumPrice := RoundTo(SumPrice, 0);
  case SecondKind of
    0:
      SqlUpdate :=
        Format('UPDATE Assets.BerakAmval SET FirstDepValueEndStop = %s ,DepvalueInYearEndStop= %s WHERE (ID = %d)',
        [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear), keyValue]);
    1:
      case Kind of
        0:
          SqlUpdate :=
            Format('UPDATE Assets.Amval SET FirstDepValue = %s ,DepvalueInYear = %s WHERE (SerialNum = %d)',
            [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
            keyValue]);
        1:
          SqlUpdate :=
            Format('UPDATE Assets.Expenses  SET FirstDepValue = %s ,DepvalueInYear = %s WHERE (ExpID = %d)',
            [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
            keyValue]);
        2:
          SqlUpdate :=
            Format('UPDATE Assets.ReValidateItems  SET FirstDepValue = %s ,DepvalueInYear = %s WHERE (ID = %d)',
            [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
            keyValue]);
      end; // case2
    2:
      SqlUpdate :=
        Format('UPDATE Assets.BerakAmval SET  FirstDepValue = %s ,DepvalueInYear= %s WHERE (ID = %d)',
        [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear), keyValue]);
    3:
      SqlUpdate :=
        Format('UPDATE Assets.Movement SET FirstDepValue = %s ,DepvalueInYear = %s ,CostValue = %S WHERE (MoveID = %d)',
        [CurrToStr(SumFirstDepValue), CurrToStr(SumDepValueInYear),
        CurrToStr(SumPrice), keyValue]);
  end;
  if SqlUpdate <> EmptyStr then
    ExecuteQry(SqlUpdate, sn);

  if opt.TimeToDefinitive = 1 then
    ExecuteQry
      (Format('UPDATE assets.Amval SET AmvalState = 1 WHERE SerialNum =%d ',
      [keyValue]), sn);

end;

// -----------------------------Procedure Calculate------------------------------
procedure CalAssets;

var
  EffectiveStart: TDateTime;
begin
  StopAssets := False;
  BeforeSerial := 0;
  with QryCal do
    try
      First;
      DisableControls;
      while not eof do
      begin
        sn := fieldbyname('SerialNum').AsInteger;
        if (fieldbyname('UniqCode').AsInteger <> BeforeSerial) or
          (fieldbyname('Kind').AsInteger <> Kind) then
        begin
          SumFirstDepValue := 0;
          SumDepValueInYear := 0;
          AidFirstDepValue := 0;
          AidDepValueInYear := 0;
          DepValueInYear := 0;
          FirstDepValue := 0;
          SumPrice := fieldbyname('AssetsValue').AsCurrency -
            fieldbyname('EsqValue').AsCurrency;
          StartUsingDate_U := Shamsi2Miladi(fieldbyname('StartUsingDate')
            .AsString) - IfThen(fieldbyname('SecondKind').AsInteger = 2, 0, 1);
          StartNowMaliYear := Shamsi2Miladi(fieldbyname('StartNowMaliYear')
            .AsString) - IfThen(fieldbyname('SecondKind').AsInteger = 2, 0, 1);
          BeforeSerial := fieldbyname('UniqCode').AsInteger;
          Kind := fieldbyname('Kind').AsInteger;
        end; // if serial
        calculatedate := Shamsi2Miladi(fieldbyname('calculatedate').AsString);
        if opt.FirstDepValueActive then
        begin
          FirstDepValue := fieldbyname('SecondFirstDepValue').AsCurrency;
          // SumFirstDepValue :=  FieldByName('FirstDepValue').AsCurrency ;
        end
        else
        begin
          case fieldbyname('DepMode').AsInteger of
            0:
              begin
                if (SumPrice <> 0) and (fieldbyname('DepValue').AsInteger <> 0)
                then
                begin
                  // محاسبه تاریخ مؤثر شروع محاسبه استهلاک
                  if calculatedate < StartNowMaliYear then
                    EffectiveStart := calculatedate
                  else if StartUsingDate_U > StartNowMaliYear then
                    EffectiveStart := StartUsingDate_U
                  else
                    EffectiveStart := StartNowMaliYear;

                  // محاسبه FirstDepValue
                  FirstDepValue :=
                    Round(IfThen(StopAssets, opt.StopDepNo / 100, 1) *
                    ((EffectiveStart - StartUsingDate_U) / 365 * SumPrice /
                    fieldbyname('DepValue').AsInteger));
                end;
              end;
            1:
              begin
                FirstDepValue := 0;
                if StartUsingDate_U < StartNowMaliYear then
                begin
                  CalDateMode1 :=
                    Shamsi2Miladi(fieldbyname('NextStartUsingDate')
                    .AsString) - 1;
                  SumPrice := SumPrice - SumFirstDepValue;
                  while CalDateMode1 - 1 <= StartNowMaliYear do
                  begin
                    if (SumPrice <> 0) and
                      (fieldbyname('DepValue').AsInteger <> 0) then
                      FirstDepValue :=
                        Round(FirstDepValue + IfThen(StopAssets,
                        opt.StopDepNo / 100, 1) *
                        (IfThen(IsLongYear(CalDateMode1), CalDateMode1 - 1,
                        CalDateMode1) - StartUsingDate_U) / 365 *
                        (SumPrice - FirstDepValue) *
                        (fieldbyname('DepValue').AsInteger / 100));
                    StartUsingDate_U := IfThen(IsLongYear(CalDateMode1),
                      CalDateMode1 - 1, CalDateMode1);
                    CalDateMode1 := IncYear(CalDateMode1);
                  end;
                  SumPrice := SumPrice + SumFirstDepValue;
                end;
              end; // 1
            2:
              begin
                SumFirstDepValue := 0;
                SumDepValueInYear := 0;
              end;
          end; // case
        end;

        // ------------------------------------------------------------------
        if FirstDepValue + IfThen(opt.FirstDepValueActive, 0, SumFirstDepValue)
          > SumPrice then
        begin
          FirstDepValue := SumPrice - SumFirstDepValue;
          DepValueInYear := 0;
        end
        else if (calculatedate >= StartNowMaliYear) and
          (calculatedate >= StartUsingDate_U) then
        begin
          case fieldbyname('DepMode').AsInteger of
            0:
              begin

                if not opt.FirstDepValueActive then
                  DepValueInYear :=
                    Round(IfThen(StopAssets, opt.StopDepNo / 100, 1) *
                    (calculatedate - StartUsingDate_U) / 365 * SumPrice /
                    fieldbyname('DepValue').AsInteger - FirstDepValue)
                else if (SumPrice <> 0) and
                  (fieldbyname('DepValue').AsInteger <> 0) then
                  DepValueInYear :=
                    Round(IfThen(StopAssets, opt.StopDepNo / 100, 1) *
                    (calculatedate - IfThen(StartUsingDate_U > StartNowMaliYear,
                    StartUsingDate_U, StartNowMaliYear)) / 365 * SumPrice /
                    fieldbyname('DepValue').AsInteger)
              end; // 0
            1:
              begin
                if (SumPrice <> 0) and (fieldbyname('DepValue').AsInteger <> 0)
                then
                  DepValueInYear :=
                    Round(IfThen(StopAssets, opt.StopDepNo / 100, 1) *
                    (calculatedate - IfThen(StartUsingDate_U > StartNowMaliYear,
                    StartUsingDate_U, StartNowMaliYear)) / 365 *
                    (SumPrice - FirstDepValue - IfThen(opt.FirstDepValueActive,
                    0, SumFirstDepValue)
                    // SumFirstDepValue
                    ) * fieldbyname('DepValue').AsInteger / 100);
              end;

            2:
              begin
                SumFirstDepValue := 0;
                SumDepValueInYear := 0;
              end;

            7:
              begin
                DepValueInYear :=
                  Round(((SumPrice - FirstDepValue) / (fieldbyname('DepValue')
                  .AsInteger * 365 - IfThen(StartUsingDate_U > StartNowMaliYear,
                  StartUsingDate_U - StartNowMaliYear,
                  StartNowMaliYear - StartUsingDate_U))) *
                  (calculatedate - IfThen(StartUsingDate_U > StartNowMaliYear,
                  StartUsingDate_U, StartNowMaliYear)));
                if DepValueInYear < 0 then
                  DepValueInYear := Round(SumPrice - FirstDepValue);
              end;
          end;

          if DepValueInYear >
            (SumPrice - FirstDepValue - IfThen(opt.FirstDepValueActive, 0,
            SumFirstDepValue)) then
            DepValueInYear :=
              (SumPrice - FirstDepValue - IfThen(opt.FirstDepValueActive, 0,
              SumFirstDepValue));
          // Modified by Mehdi 4/5/2015
          if (SumFirstDepValue + SumDepValueInYear + DepValueInYear) >= SumPrice
          then
            DepValueInYear := SumPrice - SumFirstDepValue - SumDepValueInYear;
          // Modified by Mehdi 4/5/2015
        end
        else
          DepValueInYear := 0;

        // -------------------------------------------
        if opt.FirstDepValueActive then
          SumFirstDepValue := FirstDepValue
        else
          SumFirstDepValue := SumFirstDepValue + FirstDepValue;

        SumDepValueInYear := SumDepValueInYear + DepValueInYear;
        StartUsingDate_U := calculatedate - 1;
        if Kind <> 0 then
        begin
          AidFirstDepValue := fieldbyname('SecondFirstDepValue').AsCurrency;
          AidDepValueInYear := fieldbyname('SecondDepValueInYear').AsCurrency;
          SumFirstDepValue := SumFirstDepValue + AidFirstDepValue;
          SumDepValueInYear := SumDepValueInYear + AidDepValueInYear;
        end; // if
        case fieldbyname('SecondKind').AsInteger of
          0:
            begin
              StopAssets := False;
              StartUsingDate_U := calculatedate;
            end; // 0
          1:
            begin
              SumFirstDepValue := SumFirstDepValue - AidFirstDepValue;
              SumDepValueInYear := SumDepValueInYear - AidDepValueInYear;
            end; // 1
          2:
            StopAssets := True;
          3:
            StartUsingDate_U := calculatedate;
          4:
            begin
              SumPrice := SumPrice - fieldbyname('SecondPrice').AsCurrency;
              if calculatedate < StartNowMaliYear then
                SumFirstDepValue := SumFirstDepValue
                // + fieldbyname('SecondFirstDepValue').AsCurrency
                  + fieldbyname('SecondDepValueInYear').AsCurrency;
              // else begin
              // SumFirstDepValue := SumFirstDepValue + fieldbyname('SecondFirstDepValue').AsCurrency ;
              // SumDepValueInYear := SumDepValueInYear + fieldbyname('SecondDepValueInYear').AsCurrency ;
              // end ;// if
            end; // 4
        end; // case

        if ((fieldbyname('SecondKind').AsInteger = 1) and (Kind = 2)) or
          (fieldbyname('SecondKind').AsInteger = 2) then
          UpdateValue(fieldbyname('SecondKind').AsInteger,
            fieldbyname('Id4Info').AsInteger)
        else
          InsertValue(fieldbyname('SecondKind').AsInteger,
            fieldbyname('Id4Info').AsInteger);

        // GoProgressBar(IntToStr(RecNo) + '/' + IntToStr(RecordCount));
        SumFirstDepValue := SumFirstDepValue - AidFirstDepValue;
        SumDepValueInYear := SumDepValueInYear - AidDepValueInYear;
        Next;
      end;
    finally
      // CloseMessage;
      EnableControls;
    end;
end;

begin
  Result := True;

  try
    if not Assigned(QryCal) then
    begin
      // حالت ایجاد Query جدید
      try
        for i := 0 to 1 do
        begin
          QryCal := TADOQuery.Create(nil);
          try
            QryCal.Connection := DmF.adcBSell;
            QryCal.SQL.Text := 'SELECT * FROM Assets.' +
              IfThen(i = 0, 'DepProcess(:Basedate, :Yearid) DepProcess',
              'DepProcessOther(:Basedate, :yearid) DepProcessOther');

            QryCal.SQL.Add('WHERE (SerialNum = :SN) ');
            QryCal.SQL.Add
              ('ORDER BY Kind, UniqCode, SerialNum, calculatedate, SecondKind');

            QryCal.Parameters.ParamValues['Basedate'] := BaseDate;
            QryCal.Parameters.ParamValues['Yearid'] := APPBank.Year;
            QryCal.Parameters.ParamValues['SN'] := sn;

            QryCal.Open;

            CalAssets;

          finally
            FreeAndNil(QryCal); // آزادسازی در هر iteration
          end;
        end;
      except
        FreeAndNil(QryCal); // در صورت خطا هم آزاد شود
      end;
    end
    else
    begin
      // حالت استفاده از Query موجود
      // BigMessageProgBar('در حال محاسبه ....', QryCal.RecordCount);
      CalAssets;
    end;

  except
    on E: Exception do
    begin
      Result := False;
      Warn('اشكال در محاسبه' + E.Message);
    end;
  end;
end;
procedure TDmF.CalculateDepress(sn: Cardinal);
begin
end;

function GetLastConstDocDate: String;
begin
  with DmF.qry_Temp do
  begin
    Close;
    SQL.Text := 'SELECT Max(DocDate) FROM acc.DocGroups ';
    SQL.Add('WHERE ((Status)=3) and (YearID = :YearID)');

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Open;
    Result := Fields[0].AsString;
    Close;
  end; // with
  if Result < APPBank.StartYear then
    Result := APPBank.StartYear;
end;

function TDmF.CheckDetailComapany(DetailCode, companyCode: Integer): Boolean;
begin
  Result := True;
  with DmF.qry_Temp do
    try
      Close;
      SQL.Text := 'Select SUM(f) From ' +
        '(Select COUNT(*) as f From Acc.Details Where CompanyCode = :CM AND DetailCode = :Dt2 '
        + ' union all ' +
        'Select COUNT(*)as f From Acc.Details Where DetailCode = :DT And UseKindInCo = 0 '
        + ') as q ';

      Parameters.ParamByName('CM').Value := companyCode;
      Parameters.ParamByName('DT').Value := DetailCode;
      Parameters.ParamByName('DT2').Value := DetailCode;
      Open;
      Result := Fields[0].AsInteger > 0;
    finally
      Close;
    end;
end;

procedure OffDataSetEvents(aDataSet: TDataSet);
begin
  with aDataSet do
  begin
    ev[1] := BeforeEdit;
    ev[2] := BeforePost;
    ev[3] := BeforeScroll;
    ev[4] := AfterEdit;
    ev[5] := AfterPost;
    ev[6] := AfterScroll;
    // ev[7] := AfterInsert;

    BeforeEdit := nil;
    BeforePost := nil;
    BeforeScroll := nil;
    AfterEdit := nil;
    AfterPost := nil;
    AfterScroll := nil;
    // AfterInsert := nil;
  end; // with
end;

procedure OnDataSetEvents(aDataSet: TDataSet);
begin
  with aDataSet do
  begin
    BeforeEdit := ev[1];
    BeforePost := ev[2];
    BeforeScroll := ev[3];
    AfterEdit := ev[4];
    AfterPost := ev[5];
    AfterScroll := ev[6];
    // AfterInsert:=  ev[7];
  end; // with
end;

Function CheckLevel(LenCode: Byte; code: String): Boolean;
begin
  with TADOQuery.Create(DmF) do
    try
      Connection := DmF.adcAccounting;
      SQL.Text := 'SELECT Count(TopicCode) FROM acc.Categories';
      SQL.Add('where left(TopicCode,:Len) =:Code');
      Parameters.ParamByName('Len').Value := LenCode;
      Parameters.ParamByName('Code').Value := code;
      Open;
      Result := Fields[0].AsInteger > 1;
    finally
      Free;
    end;
end;

procedure setColumns(Grid: TCedarDbgrid; colNumber: string; StateCol: Boolean);

var
  s: string;
  i: Integer;
begin
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    s := Format('#%.2d%', [i]);
    if Pos(s, colNumber) <> 0 then
      Grid.Columns[i].Visible := StateCol;
  end; // for
end;

procedure setColumns(Grid: TDBGrid; colNumber: string; StateCol: Boolean);

var
  s: string;
  i: Integer;
begin
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    s := Format('#%.2d%', [i]);
    if Pos(s, colNumber) <> 0 then
      Grid.Columns[i].Visible := StateCol;
  end; // for
end;

function HasDetail(c: Cardinal): Boolean;
begin
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT count(*) FROM acc.DetailRange INNER JOIN acc.Details ON acc.DetailRange.DetailCode = acc.Details.DetailCode WHERE acc.DetailRange.TopicCode ='
      + IntToStr(c);
    Active := True;
    Result := Fields[0].AsInteger > 0;
    Active := False;
  end; // with
end;

function HasBudget(c: Cardinal): Boolean;
begin
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT count(*) FROM acc.BudgetTopicRange INNER JOIN acc.BudgetTopics ON acc.BudgetTopicRange.BudgetTopicID = acc.BudgetTopics.BudgetTopicID WHERE acc.BudgetTopicRange.TopicCode ='
      + IntToStr(c);
    Active := True;
    Result := Fields[0].AsInteger > 0;
    Active := False;
  end; // with
end;

function HasExpenseCode(c: Cardinal): Boolean;
begin
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Count(*) FROM acc.CenterTopicRange INNER JOIN acc.CenterTopics ON acc.CenterTopicRange.CTopicCode = acc.CenterTopics.CTopicCode WHERE acc.CenterTopicRange.TopicCode ='
      + IntToStr(c);
    Active := True;
    Result := Fields[0].AsInteger > 0;
    Active := False;
  end; // with
end;

function HasExpenseCode2(c: Cardinal): Boolean;
begin
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text := DmF.sqlSetText(optA.CtoipcRelatedKind + 6) + IntToStr(c);
    Active := True;
    Result := Fields[0].AsInteger > 0;
    Active := False;
  end; // with
end;

function HasExpenseCode3(c: Cardinal): Boolean;
begin
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text := DmF.sqlSetText(optA.CtoipcRelatedKind + 25) + IntToStr(c);
    Active := True;
    Result := Fields[0].AsInteger > 0;
    Active := False;
  end; // with
end;

function GetMoeenName(mCode: Cardinal): String;
begin
  Result := '';
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'Select TopicCode,MoeenName_L1 from acc.categories where TopicCode=' +
      IntToStr(mCode);
    Active := True;
    Result := fieldbyname('MoeenName_L1').AsString;
    Active := False;
  end; // with
end;

function GetCTopicName(mCode: Cardinal): String;
begin
  Result := '';
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'Select CTopicName_L1  from acc.CenterTopics where CTopicCode='
      + IntToStr(mCode);
    Active := True;
    Result := fieldbyname('CTopicName_L1').AsString;
    Active := False;
  end; // with
end;

function TDmF.sqlSetText(Kind: Integer): String;
begin
  { with qry_Temp do
    begin
    Active:=False ;
    SQL.Text:=' exec  Acc.USP_4_AllQry ' + IntToStr(kind) +' , '+ ':a ' +'output ' ;
    Parameters.ParamByName('a').Value:='' ;
    ShowMessage( SQL.Text);
    Active:=True ;
    Result:= Parameters.ParamByName('a').Value ;
    end; }

  case Kind of
    1:
      Result := ' SELECT CTopicCode2, CTopicName2_L1, CTopicName2_L2 FROM acc.CenterTopics2  where CTopicCode2 <>0 ';

    3:
      Result := ' SELECT  acc.CenterTopics2.CTopicCode2,acc.CenterTopics2.CTopicName2_L1,acc.CenterTopics2.CTopicName2_L2 FROM acc.CenterTopics2 '
        + ' INNER JOIN acc.CTopicRangeTogether ON acc.CenterTopics2.CTopicCode2 = acc.CTopicRangeTogether.CTopicCode2 '
        + ' WHERE (((acc.CTopicRangeTogether.CTopicCode)= ';
    4:
      Result := ' SELECT    distinct  Acc.CenterTopics2.CTopicCode2, Acc.CenterTopics2.CTopicName2_L1, Acc.CenterTopics2.CTopicName2_L2 '
        + ' FROM         Acc.CenterTopics2 INNER JOIN ' +
        ' Acc.CenterTopicAllRange ON Acc.CenterTopics2.CTopicCode2 = Acc.CenterTopicAllRange.CTopicCode2 '
        + ' WHERE Acc.CenterTopics2.CTopicCode2 <>0 and (((Acc.CenterTopicAllRange.TopicCode )=';
    6:
      Result := ' SELECT    COUNT(*)  FROM   Acc.CTopicRangeTogether WHERE  CTopicCode = ';
    7:
      Result := ' SELECT  COUNT(*) FROM  Acc.CenterTopicAllRange WHERE (CTopicCode2 <> 0) and  TopicCode = ';

    20:
      Result := ' SELECT CTopicCode3, CTopicName3_L1, CTopicName3_L2 FROM  acc.CTopicCode3 WHERE(CTopicCode3<>0)';

    22:
      Result := ' select acc.ctopiccode3.ctopiccode3, acc.ctopiccode3.ctopicname3_l1, acc.ctopiccode3.ctopicname3_l2'
        + ' from acc.ctopics2and3 inner join' +
        ' acc.ctopiccode3 on acc.ctopics2and3.ctopiccode3 = acc.ctopiccode3.ctopiccode3'
        + ' where (acc.ctopics2and3.ctopiccode2 = ';
    23:
      Result := ' SELECT distinct Acc.CTopicCode3.CTopicCode3, Acc.CTopicCode3.CTopicName3_L1, Acc.CTopicCode3.CTopicName3_L2 '
        + ' FROM   Acc.CTopicCode3 INNER JOIN ' +
        ' Acc.CenterTopicAllRange ON Acc.CTopicCode3.CTopicCode3 = Acc.CenterTopicAllRange.CTopicCode3 '
        + ' WHERE  Acc.CTopicCode3.CTopicCode3<>0 and (Acc.CenterTopicAllRange.TopicCode = ';
    25:
      Result := ' SELECT  COUNT(*) FROM  Acc.CTopics2And3 WHERE  CTopicCode2 =  ';
    26:
      Result := ' SELECT  COUNT(*) FROM  Acc.CenterTopicAllRange WHERE (CTopicCode3 <> 0) and  TopicCode = ';

  end;
end;

function CheckRelationDetail(aDGID, aTopicCode, DetailTypeLevel
  : Cardinal): Boolean;
begin
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'SELECT TOP (1) Acc.Documents.TopicCode';
    SQL.Add('FROM CustomersGroup INNER JOIN Customers ON');
    SQL.Add('CustomersGroup.CustomerGrpID = Customers.CustomerGrpID INNER JOIN');
    SQL.Add('Acc.Documents ON Customers.CustID = Acc.Documents.');
    case DetailTypeLevel of
      1:
        SQL.Add('DetailCode');
      2:
        SQL.Add('CTopicCode');
      3:
        SQL.Add('CTopicCode2');
      4:
        SQL.Add('CTopicCode3');
    end;
    SQL.Add('WHERE (CustomersGroup.DetailType = ' +
      DetailTypeLevel.ToString + ')');
    SQL.Add('AND (CustomersGroup.CustomerGrpID = :DGID) AND (Acc.Documents.TopicCode = :Topic )');

    Parameters[0].Value := aDGID;
    Parameters[1].Value := aTopicCode;
    Active := True;
    Result := not IsEmpty;
    Active := False;
  end;
end;

function GetAccountBalance(TopicCode, DetailCode, CTopicCode,
  CTopicCode2: Integer): Extended;
begin
  with DmF.qry_Temp do
  begin
    Active := False;

    SQL.Text := 'SELECT SUM(D.Debt - D.Credit) AS sm';
    SQL.Add('FROM Acc.Documents AS D INNER JOIN');
    SQL.Add('Acc.DocGroups AS DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND D.CompanyCode =');
    SQL.Add('DG.CompanyCode');
    SQL.Add('WHERE (D.TopicCode = ' + CurrToStr(TopicCode) + ')');
    if DetailCode <> 0 then
      SQL.Add('AND (D.DetailCode =' + CurrToStr(DetailCode) + ')');
    if CTopicCode <> 0 then
      SQL.Add('AND (D.CTopicCode = ' + CurrToStr(CTopicCode) + ')');
    if CTopicCode2 <> 0 then
      SQL.Add('AND (D.CTopicCode2 =' + CurrToStr(CTopicCode2) + ')');

    // SQL.Add('And YearId = ' + IntToStr(APPBank.Year));
    SQL.Add('AND (DG.DocDate BETWEEN ''' + APPBank.StartYear + ''' AND ''' +
      APPBank.endYear + ''')');
    // SQL.Add('And Detail Company = ' + IntToStr(Detail Company));

    // SQL.Text :=      222
    // 'Select sum(Debt-Credit) as sm from acc.Documents where TopicCode=' +
    // CurrToStr(TopicCode);
    // if DetailCode <> 0 then
    // SQL.Add('and DetailCode=' + IntToStr(DetailCode));
    // if CTopicCode <> 0 then
    // SQL.Add('and CTopicCode=' + IntToStr(CTopicCode));
    // if CTopicCode2 <> 0 then
    // SQL.Add('and CTopicCode2=' + IntToStr(CTopicCode2));
    // SQL.Add('And YearId = ' + IntToStr(APPBank.Year));

    Active := True;
    Result := Fields[0].AsExtended;
    Active := False;
  end; // with
end;

function assignServerName(adoCon: TADOConnection; dbName: string): String;
begin
  if adoCon <> nil then
    adoCon.ConnectionString := GetConStr(dbName, 60);
end;

function IsValidDetailForMoeen(TopicCode, DetailCode: Integer): Boolean;
begin
  with DmF.qry_Temp do
  begin
    Close;
    SQL.Text :=
      'SELECT DetailRange.DetailCode FROM acc.DetailRange as DetailRange  INNER JOIN acc.Details as Details ON DetailRange.DetailCode = Details.DetailCode';
    SQL.Add('WHERE (DetailRange.TopicCode =' + IntToStr(TopicCode) +
      ') AND (DetailRange.DetailCode = ' + IntToStr(DetailCode) + ')');
    Open;
    Result := not IsEmpty;
    Close;
  end; // with
end;

function IsValidCTopicForMoeen(TopicCode, CTopicCode: Integer): Boolean;
begin
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT CenterTopicRange.CTopicCode FROM acc.CenterTopicRange as CenterTopicRange INNER JOIN acc.CenterTopics  as CenterTopics ON CenterTopicRange.CTopicCode = CenterTopics.CTopicCode';
    SQL.Add('WHERE (CenterTopicRange.TopicCode =' + IntToStr(TopicCode) +
      ') AND (CenterTopicRange.CTopicCode = ' + IntToStr(CTopicCode) + ')');
    Active := True;
    Result := not IsEmpty;
    Active := False;
  end; // with
end;

function IsValidCTopic2ForCTopics(CTopicCode2, CTopicCode: Integer): Boolean;
begin
  with DmF.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT CTopicRangeTogether.CTopicCode2 FROM acc.CTopicRangeTogether as CTopicRangeTogether INNER JOIN acc.CenterTopics2 as CenterTopics2 ON CTopicRangeTogether.CTopicCode2 = CenterTopics2.CTopicCode2';
    SQL.Add('WHERE (CTopicRangeTogether.CTopicCode =' + IntToStr(CTopicCode) +
      ') AND (CTopicRangeTogether.CTopicCode2 = ' +
      IntToStr(CTopicCode2) + ')');
    Active := True;
    Result := not IsEmpty;
    Active := False;
  end;
  // with
end;

function TDmF.CheckLevel;

var
  s: String;
begin
  Result := True;
  case St of
    AddLevel:
      s := 'AddLevelID';
    EdtLevel:
      s := 'EditLevelID';
    edtState2:
      s := 'EditState2';
    edtState3:
      s := 'EditState3';
    DelLevel:
      s := 'DeleteLevelID';
    PrntLevel:
      s := 'PrintLevelID';
    RelLevel:
      s := 'AccRelatedID';
    OtrLevel:
      s := 'OtherContorolLevleId';
    ChgLevel:
      s := 'ChangeStateLevelID';
    AccessCertain:
      s := 'AccessCertain';
    AccessPermanent:
      s := 'AccessPermanent';
    DelRowLevel:
      s := 'DeleteRowLevelID';
    EditLevelNote:
      s := 'EditNoteLevelID';
    ShowLevelNote:
      s := 'ShowNoteLevelID';
  end;
  with TADOQuery.Create(nil) do
    try
      Connection := DmF.adcAccounting;
      Close;
      SQL.Text := Format('Select %s from  acc.AccTopicLevels where LevelId=%d',
        [s, FormType]);
      Open;
      if Fields[0].AsInteger > User.level then
      begin
        if ShowWarn then
          Warn('محدوديت سطح كاربري در دسترسي به امكانات سيستم', mtInformation);
        Result := False;
      end;
    finally
      Free;
    end;
end;

procedure TDmF.Create_Details_Views;

// برای اضافه کردن و یا حذف کدینگ کالا از حساب های تفصیلی
// به علت وابسته بودن به تنظیمات سیستم از بروز رسانی حذف شد و دراین بلاک نوشته شد
const
  DropViews =
    'if exists (select * from sysobjects where id = object_id(N''[Acc].[DetailGroups]'') AND OBJECTPROPERTY(id, N''IsView'') = 1) '
    + char(13) + ' DROP VIEW [Acc].[DetailGroups]' + char(13) +
    'if exists (select * from sysobjects where id = object_id(N''[Acc].[MainDetails]'') AND OBJECTPROPERTY(id, N''IsView'') = 1) '
    + char(13) + ' DROP VIEW [Acc].[MainDetails]';

  CreateCustomersGroupView = 'CREATE VIEW [Acc].[DetailGroups] AS ' + char(13) +
    'SELECT CustomerGrpID AS DGID, CustomerGrpName AS DGName_L1, CustomerGrpName_L2 AS DGName_L2,'
    + ' cast(StartCode as bigint) AS StartRange, cast(FinishCode as bigint) AS EndRange, DetailType, 0 AS UseKindInCo,'
    + ' '''' AS Comment_L1, '''' AS Comment_L2, { fn NOW() } AS MakeDate, 1 as Kind '
    + 'FROM  dbo.CustomersGroup ';

  AddStuffGroupView = ' UNION ' + char(13) +
    'SELECT GroupID AS DGID, GroupName AS DGName_L1, '''' AS DGName_L2, StartCode AS StartRange,'
    + ' FinishCode AS EndRange, AccDetailType, 0 AS UseKindInCo, '''' AS Comment_L1, '''' AS Comment_L2,'
    + ' { fn NOW() } AS MakeDate, 2 as Kind  FROM  dbo.StuffGroups';

  CreateCustomersView = 'CREATE VIEW [Acc].[MainDetails] AS ' + char(13) +
    'SELECT  1 AS CompanyCode, CustID AS DetailCode, CustName AS DetailName_L1,'
    + ' CustName_L2 AS DetailName_L2, CustomerGrpID AS DetailGroup, ModifyDate AS MakeDate,'
    + ' 0 AS UseKindInCo, NationalID, MaxCredit, Mobile, AccountKind AS CurrencyType,'
    + ' NULL AS AidNumber, NULL AS AidDate, 0 AS PortionCode, NULL AS AidQty, '
    + ' 1 Kind  FROM dbo.Customers ';

  AddStuffCodingView = ' UNION ' + char(13) +
    'SELECT 1 AS CompanyCode, cast(c_StuffCode as int) AS DetailCode,' +
    ' c_StuffName AS DetailName_L1, '''' AS DetailName_L2, GroupID AS DetailGroup,'
    + ' ModifyDate AS MakeDate, 0 AS UseKindInCo, ''0'' NationalID, 0 MaxCredit, ''0'' Mobile,'
    + ' 0 AS CurrencyType, NULL AS AidNumber, NULL AS AidDate, 0 AS PortionCode,'
    + ' NULL AS AidQty, 2 Kind  FROM  StuffCoding';
begin
  with TADOQuery.Create(DmF) do
    try
      Connection := DmF.adcAccounting;
      SQL.Text := DropViews;
      ExecSQL;
      SQL.Text := CreateCustomersGroupView;
      if optA.AddStuffcoding then
        SQL.Add(AddStuffGroupView);
      ExecSQL;
      SQL.Text := CreateCustomersView;
      if optA.AddStuffcoding then
        SQL.Add(AddStuffCodingView);
      ExecSQL;
    finally
      Free;
    end;
end;

function GetCompanyName(companyCode: Integer): String;
begin
  with TADOQuery.Create(DmF.adcAccounting) do
    try
      Connection := DmF.adcAccounting;
      SQL.Text :=
        Format('SELECT CompanyName_L1 FROM Acc.Companies WHERE (CompanyCode = %D)',
        [companyCode]);
      Active := True;
      Result := Fields[0].AsString;
    finally
      Free;
    end;
end;

procedure InitDSW_JOB;

var
  PathOnly, FileNameOnly, Path: string;
begin
  if not FileExists(pathManufactory) then
    try
      FileNameOnly := ExtractFileName(pathManufactory);
      PathOnly := ExtractFilePath(pathManufactory);
      Path := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
      pathManufactory := pchar(Path + 'Bimeh\' + FileNameOnly);
      if not TDirectory.Exists(PathOnly) then
        TDirectory.CreateDirectory(PathOnly);

      GetFromServer(pathManufactory, '\Download\' + FileNameOnly);
    except
      on E: Exception do
      begin
        warn2(FileNameOnly + ' در سرور یافت نشد');
      end;
    end;

  if not FileExists(pathManufactory) then
  begin
    Warn('فايل ليست كدهاي شغل بيمه به نام ' + pathManufactory +
      '  پيدا نشد.!‏');
    Exit;
  end;
  with DmF.qryDSW_JOB do
  begin
    // Active := False;
    ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
      pathManufactory + ';Persist Security Info=False';
    try
      Active := True;
    except
      on E: Exception do
      begin
        Warn('اشكال در فايل ليست كدهاي شغل بيمه' + E.Message);
      end;
    end; // try
  end; // with
end;

function Get_Job_Desc(qry: TADOQuery): AnsiString;

var
  s: AnsiString;
begin
  if ((qry.FindField('Job_Desc') <> nil) and
    (qry.fieldbyname('Job_Desc').AsString <> EmptyStr)) then
    Result := qry.fieldbyname('Job_Desc').AsString
  else
  begin
    s := Trim(qry.fieldbyname('DSW_JOB').AsString);
    if s <> EmptyStr then
      Result := VarToStr(DmF.qryDSW_JOB.Lookup('Job_Code', s, 'Job_Desc'));
  end;
end;

procedure SendServerFile(Text_FileName: string; Memo1: TMemo);

var
  ABytes: TBytes;
  FileName: string;
  PngStream: TMemoryStream;
begin
  Exit;
  Memo1.Visible := True;
  FileName := StringReplace(Text_FileName, '.PNG', '_1.PNG', []);
  FileName := StringReplace(Text_FileName, '.PDF', '_1.PDF', []);
  ABytes := TFile.ReadAllBytes(FileName);
  DmF.RESTRequest1.Params.Clear;
  DmF.RESTRequest1.AddParameter('year', APPBank.Year.ToString);
  DmF.RESTRequest1.AddParameter('orgid', FcompanyCode.ToString);
  DmF.RESTRequest1.AddParameter('filename', ExtractFileName(FileName));
  DmF.RESTRequest1.Resource := FileName;
  PngStream := TMemoryStream.Create;
  PngStream.LoadFromFile(FileName);
  DmF.RESTRequest1.AddBody(PngStream, TRESTContentType.ctIMAGE_PNG);
  DmF.RESTRequest1.Execute;
  Memo1.Lines.Add(DmF.RESTRequest1.Response.Content);

end;

function TDmF.ReadBankConfigPay(OptionName: string;
  DefaultValue: string = ''): string;

var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF);
  with qry do
    try
      Connection := DmF.adcsalary;
      // SQL.Text:='Select ' + OptionName + ' from pay.config';
      SQL.Text := 'Select * from pay.Config';
      Active := True;
      if FindField(OptionName) <> nil then
        Result := fieldbyname(OptionName).AsString
      else
        Result := DefaultValue;
      Active := False;
    finally
      qry.Free;
    end; // try
end;

procedure TDmF.SkinManagerAfterChange(Sender: TObject);
begin
  SaveConfig(APPID, 'SkinName', SkinManager.SkinName);
end;

procedure SaveBankConfigPay(OptionName: string; OptionValue: string);

var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF);
  with qry do
    try
      Connection := DmF.adcsalary;
      SQL.Text := 'Select * from pay.Config';
      Active := True;
      if IsEmpty then
      begin
        Insert;
        Post;
      end; // if
      Edit;
      fieldbyname(OptionName).AsString := OptionValue;
      // SQL.Text:='Update pay.Config Set [' + OptionName + '] = ' + QuotedStr(OptionValue);
      Post;
      // ExecSQL;
    finally
      qry.Free;
    end; // try
end;

procedure initDBComboBoxMasterDetail(Combo: TDBComboBox;
  FormType, FormInfoID: Integer);

var
  FiledId: Integer;
begin
  Combo.Clear;
  FiledId := 1;
  if optP.primaryLanguage <> 0 then
    FiledId := 2;
  with DmF.qryTmpTmpP do
  begin
    Active := False;
    SQL.Text :=
      'SELECT  FormInfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo WHERE FormType='
      + IntToStr(FormType);
    SQL.Add('and( PrvInfoID  = :PrvInfoID or ISNULL(PrvInfoID,0) = 0 )');
    Parameters.ParamByName('PrvInfoID').Value := FormInfoID;
    Active := True;
    while not eof do
    begin
      Combo.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure L1_L2(Grid: TDBGrid);

var
  i: Integer;
begin
  for i := 1 to Grid.Columns.Count - 1 do
  begin
    if Pos('_l1', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      Grid.Columns[i].Visible := optP.LanguageDisplay1;
    if Pos('_l2', LowerCase(Grid.Columns[i].FieldName)) <> 0 then
      Grid.Columns[i].Visible := optP.LanguageDisplay2;
  end;
end;

function GetFileName(RepNumber: Integer = 1): string;

var
  RepFileName: string;
begin
  Result := 'payfishNew';
  RepFileName := 'ReportFileName' + IntToStr(RepNumber);
  With DmF.qryTmpTmpP do
  begin
    Active := False;
    SQL.Text := Format('SELECT %s FROM Pay.FormTypes where FormType=49 ',
      [RepFileName]);
    Active := True;
    if fieldbyname(RepFileName).AsString <> '' then
      Result := fieldbyname(RepFileName).AsString;
  end;
end;

procedure InitReportFileRegion(ReportName: TppReport; GeneralFileName: string;
  BandName: TppBand; aRegion: TppRegion; TopLine: TppLine; Footer: string);

var
  ReportFooter: String;
begin
  InitReportISDEMO(ReportName);
  ReportFooter := Footer;
  if ReportFooter = '' then
    ReportFooter := FooterFormType(48);
  if Pos('.', GeneralFileName) = 0 THEN
    GeneralFileName := GeneralFileName + '.rtm';
  with ReportName do
  begin
    Template.FileName := GetReportFileWithPath(GeneralFileName);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + GeneralFileName + ' يافت نشد.!‏');
      InitReport(ReportName, BandName, aRegion, TopLine, ReportFooter);
      SetSendToBackShapeOnPrint(TForm(ReportName.Owner));
      Print;
    finally
    end; // try
  end; // with
end;

function FooterFormType(Form_Type: Integer): String;
begin
  With DmF.qryTmpTmpP do
  begin
    Active := False;
    SQL.Text := 'SELECT ReportFooter FROM Pay.FormTypes where FormType=' +
      IntToStr(Form_Type);
    Active := True;
    Result := fieldbyname('ReportFooter').AsString;
    Active := False;
  end; // With
end;

procedure MakeMenuItem(Form_Type: Integer; AllClik: TNotifyEvent;
  var Reference);

var
  MenuItem: array of TMenuItem;
  i, Record_Count: Integer;
  PrintName: array [0 .. 3] of String;
  PrintCaption: array [0 .. 3] of String;
begin
  // AllClik:=
  Record_Count := 0;
  With DmF.qryTmpTmpP do
  begin
    Active := False;
    SQL.Text :=
      'SELECT ReportFileName1,ReportFileName2,ReportFileName3,ReportFileName4, '
      + ' ReportCaption1 ,ReportCaption2 ,ReportCaption3 ,ReportCaption4 ' +
      'FROM Pay.FormTypes where FormType=' + IntToStr(Form_Type);
    Active := True;
    for i := 1 to 4 do
      if fieldbyname('ReportFileName' + IntToStr(i)).AsString <> '' then
      begin
        PrintName[Record_Count] := fieldbyname('ReportFileName' + IntToStr(i)
          ).AsString;
        PrintCaption[Record_Count] := fieldbyname('ReportCaption' + IntToStr(i)
          ).AsString;
        Inc(Record_Count);
      end;
    Active := False;
  end; // With
  if Record_Count = 0 then
    Exit;
  SetLength(MenuItem, Record_Count);
  for i := 0 to Record_Count - 1 do
  begin
    MenuItem[i] := NewItem(PrintCaption[i], TextToShortCut(''), False, True,
      AllClik, 0, 'Item' + IntToStr(i + 1));
    MenuItem[i].Tag := i;
    MenuItem[i].Hint := PrintName[i];
    // MenuItem[i].Caption:=PrintCaption[i];
  end; // for
  TPopupMenu(Reference) := NewPopupMenu(TPopupMenu(Reference), 'MyMenu',
    paRight, True, MenuItem);
end;

function GetPersonelName(pid: string): string;

var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DmF.adcsalary);
  try
    with qry do
    begin
      Connection := DmF.adcsalary;
      Active := False;
      SQL.Text :=
        'Select Pay.FormsInfo.InfoID,Pay.PersonelInfo.name_L1 + '' '' + Pay.PersonelInfo.lastName_L1 as name_L1 ';
      SQL.Add(',Pay.PersonelInfo.name_L2 + '' '' + Pay.PersonelInfo.lastName_L2 as name_L2');
      SQL.Add('FROM Pay.PersonelInfo INNER JOIN');
      SQL.Add('Pay.FormsInfo ON Pay.PersonelInfo.sex = Pay.FormsInfo.FormInfoID');
      SQL.Add('WHERE Pay.PersonelInfo.PersonelNo = ' + QuotedStr(pid));
      Active := True;
      if not IsEmpty then
      begin
        if (fieldbyname('InfoID').AsInteger = 2) then
        begin
          Result := 'خانم ' + fieldbyname('name_L1').AsString;
          if optP.primaryLanguage <> 0 then
            Result := 'mis ' + fieldbyname('name_L2').AsString
        end
        else
        begin
          Result := 'آقاي ' + fieldbyname('name_L1').AsString;
          if optP.primaryLanguage <> 0 then
            Result := 'ms ' + fieldbyname('name_L2').AsString
        end;
      end
      else
        Result := '';
    end; // with
  finally
    qry.Free;
  end; // try
end;

function CalcSumFiledsF(MyField: TField; TxtFilter: String = ''): Extended;

var
  qry: TADOQuery;
  MyQuery: TADOQuery;
begin
  Result := 0;
  MyQuery := TADOQuery(MyField.DataSet);
  qry := TADOQuery.Create(DmF);
  try
    with qry do
    begin
      Clone(MyQuery, ltReadOnly);
      DisableControls;
      if TxtFilter <> EmptyStr then
      begin
        Filter := TxtFilter;
        Filtered := True;
        Result := MyField.AsCurrency;
      end;
      First;
      while not eof do
      begin
        Result := Result + fieldbyname(MyField.FieldName).AsCurrency;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
    // MyField.DataSet.First;
    MyField.DataSet.EnableControls;
    qry.Free;
  end; // try
end;

function CalcSumFileds2(MyField: TField; TxtFilter: String = ''): Extended;
begin
  Result := 0;
  try
    with MyField.DataSet do
    begin
      DisableControls;
      if TxtFilter <> EmptyStr then
      begin
        Filter := TxtFilter;
        Filtered := True;
        Result := MyField.AsExtended;
      end;
      First;
      while not eof do
      begin
        Result := Result + fieldbyname(MyField.FieldName).AsExtended;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
    // MyField.DataSet.First;
    MyField.DataSet.EnableControls;
  end; // try
end;

function GetSelectedRowsDBGrid(grd: TDBGrid; FieldRowName: String): String;

var
  i: Integer;
begin
  with grd.DataSource.DataSet do
  begin
    DisableControls;
    for i := 0 to grd.SelectedRows.Count - 1 do
    begin
      GotoBookmark((grd.SelectedRows.items[i]));
      Result := Result + fieldbyname(FieldRowName).AsString + ',';
    end;
    SetLength(Result, Length(Result) - 1);
    EnableControls;
  end;
end;

function GetSelectedRowsDBGrid(grd: TCedarDbgrid; FieldRowName: String): String;

var
  i: Integer;
begin
  with grd.DataSource.DataSet do
  begin
    DisableControls;
    for i := 0 to grd.SelectedRows.Count - 1 do
    begin
      GotoBookmark((grd.SelectedRows.items[i]));
      Result := Result + fieldbyname(FieldRowName).AsString + ',';
    end;
    SetLength(Result, Length(Result) - 1);
    EnableControls;
  end;
end;

end.
