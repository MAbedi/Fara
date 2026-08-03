unit FormFunctions;

interface

uses
  Classes, ADODB, GlobalPro, Vcl.DBGrids, ExtCtrls, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppReport, typinfo, ppSubRpt, ioUtils, Vcl.Buttons,
  DM, Windows, SysUtils, db, Menus, uExtensionMethods, jsonadapter,
  StrUtils, FileCtrl, CheckLst, StdCtrls, forms, Dialogs, Math, zipForge,
  SumDBGrid, DBClient, Mask, DBCtrls, FaraConsts, Messages, ActnList,
  Variants, filter_ADO, ComCtrls, shamsiDate, main, Loan, RecallRecipts,
  Controls, Types, Filter_ADO_Const, addRemoveRpt, ViewFileOnServer,
  GetOtherMoney, GetOtherMoney2, GetCheck, PaymentCash, PaymentExpence,
  Proforma, DMTax, Amval,
  CustomersInterView, CustomersTax, DesignForms, Customers2, DBGridEh,
  CedarDbgrid, Vcl.Graphics, IdStack, FireDAC.Comp.Client, SalaryFunctions,
  AidAssets, AlterAssets, SpecialInsourance, BerakAmval, Decrease,
  Expense1, Movement, ReValidate;

function MyNewItem(const ACaption: string; AsqlTxt: String = '';
  KeyFldName: String = ''): TMenuItem;

var
  Mypop: TPopupMenu;

type
  TMyMenuItem = class(TMenuItem)
  private
    FSqlText: String;
    FKeyFieldName: String;
    procedure SetSqlText(const Value: String);
    procedure SetKeyFieldName(const Value: String);
  public
    property SqlText: String read FSqlText write SetSqlText;
    property KeyFieldName: String read FKeyFieldName write SetKeyFieldName;
    procedure Click; override;
  end;

  THackCustomADODataSet = class(TCustomADODataSet);

  Tform_Name = (FnCustomersInterView = 1, FnCustomersTax = 2, FnCustomers2 = 3,
    FnDesignForms = 4, FnShowReciptTypes = 5, FnShowFormTypesForms = 6,
    FnActionPlans = 7);

  UserChekKind = (UserRegistrar = 4, UserRelationWithcustomer1 = 8,
    UserRelationWithcustomer2 = 16, UserRelationWithcustomer3 = 32,
    UserRegistrarShowForm = 64, UserFilterFormOnCustomer1 = 128,
    UserFilterFormOnCustomer2 = 256, UserFilterFormOnCustomer3 = 512,
    UserFilterFormOnSellsEmporium = 1024);

  AddDateKind = (AddMonth = 1, AddWeek = 2);

  TCorrelateORConversion = (TCorrelate = 0, TConversion = 1);

  TPerson3ActiveAdd = class(TObject)
  private
    FPerson3Active: boolean;
    FPerson3Caption: string;
    FCustomerKind3: string;
  public
    Property Person3Active: boolean read FPerson3Active write FPerson3Active;
    Property Person3Caption: string read FPerson3Caption write FPerson3Caption;
    Property CustomerKind3: string read FCustomerKind3 write FCustomerKind3;
    function load(qry: TDataSet; DBGrid: TDBGrid): string;
  end;

function BackupDatabaseNet(ADC: TADOConnection; anAPPBank: TAPPBANK;
  pathName: String; ChooseDir: boolean = False; DoZip: boolean = True): boolean;
// function BankAttach(BankName: String): Boolean;
function SetMenuName(mnu: TMainMenu): String;
function ShamsiDate2String(inDate: String): String;
function GetDataPath(DataPath: string): string;
// procedure InitReport(ReportName: TppReport; BandName: TppBand;aRegion: TppRegion; TopLine: TppLine; footer: string);
procedure assignServerName(adoCon: TADOConnection; dbName: string);
// procedure setColumns(Grid: TDBGrid; colNumber: string;StateCol: Boolean);
procedure ReadAllOption;
procedure ReadAccOption;
procedure ReadAllOptionSalary;
procedure AddChangeType(qryinit: TADOQuery; Pop: TPopupMenu;
  mnu4Click: TNotifyEvent);
procedure InterdictItemSumSalary(Connection_String: string);
procedure SelectDefaultYear;
// function UnicFieldName(fldIDValue: String; fldValidValue: String;
// tblName, fldIDName, fldValidName: String; CustomerGrpID: Integer): boolean;
function UnicFieldName(IDField, Field4DuplicateValue: TField; tblName: String;
  CustomerGrpID: Integer; WHERESQL: string = ''): boolean;
function UnicFieldMobile(qryCustomer: TADOQuery): boolean;
procedure initCheckList(ChkLstBox: TCheckListBox; checkeds: String);
function GetCheckList(ChkLstBox: TCheckListBox): String;
procedure initCheckList2(ChkLstBox: TCheckListBox; f, power: Largeint);
function GetCheckList2(ChkLstBox: TCheckListBox; power: Largeint): Largeint;
function UserSecurityCheck(iPower: Integer; kind: UserChekKind): boolean;
function SumReciptsDeficits(qry_: TADOQuery; DeficitID: Integer): Currency;
function CalcDeficits(qry: TADOQuery; CalculationType: Integer;
  DeficitCo: Variant; CustomersDiscount: Real; DeficitID: Integer): Double;
function GetCustomerKind(CustomerGroups: String): String;
function CheckRequiredFieldsFill(Dataset: TDataSet): boolean;
procedure ShowAllFrom(Tag4Type: Integer; GroupIndex4case: Integer;
  frParent: TForm; qry: TDataSet);
procedure ShowAllFrom2(ds: TDataSet; ReportID: Integer = 0;
  FromType: Integer = 0);
procedure ClearDoc(grd: TComponent; qry: TDataSet);
function CheckUserlevel(FldLevelID: TField; qry4Post: TDataSet;
  msgActive: boolean = True): boolean;
function CheckUserlevel2(LevelID: ShortInt; msgActive: boolean = True): boolean;
function IgonreReciptsFileds(FiledName: string): boolean;
function IgonreReciptItemsFileds(FiledName: string): boolean;
function NewReciptsCorrelateChkEntity(ID: Largeint; qryinit: TADOQuery)
  : boolean;
function InsertCorrelateRecipt(qryinit: TADOQuery; qryItems: TADOQuery;
  formType: Integer; qryRecipts: TADOQuery; FormOutput: boolean;
  DBNavigator1: TDBNavigator; MyEntityDisplayType: Byte): Integer;
// FormName:String;
function StrInArray(const Value: String;
  const ArrayOfString: Array of String): boolean;
procedure CallRecall(qryinit: TADOQuery; formType: Integer; FormOutput: boolean;
  qryRecipts, qryItems, qryAllRecipts: TADOQuery; StoreID: Integer;
  FieldNameEntity, FieldNameWeight: string; MenSellPrice: TPopupMenu;
  mnuSp: array of TMenuItem);
function NotNull(s, _message: String): boolean;
procedure ServiceValue(qryRecipts, qryItems: TADOQuery);
procedure CorrelateConversionCo(CallForm: TForm; qryinit, qryItems: TADOQuery;
  qryRecipts: TDataSet; StoreID: Integer; MyEntityDisplayType: Byte;
  ShowFilter: boolean = True);
procedure InsertReciptItems(qryItemsNew, qryReciptsNew, qryItems: TADOQuery;
  qryRecipts: TDataSet; qryinit, qryinitCo: TADOQuery;
  ReciptID, ReciptType, ChildFieldIOName: String; MyEntityDisplayType: Byte);
procedure InsertRecipts(qryinit: TADOQuery; qryRecipts: TDataSet;
  ReciptID, ReciptType, ReciptNumber, StoreID: String);
procedure Formula1(qryItemsNew, qryReciptsNew, qryItems: TADOQuery;
  qryRecipts: TDataSet; qryinit, qryinitCo: TADOQuery;
  ReciptID, ReciptType, ChildFieldIOName, ParentFieldIOName, ReciptNumber,
  ReciptCaption: string; MyEntityDisplayType: Byte);
procedure Formula2(qryItemsNew, qryReciptsNew, qryItems: TADOQuery;
  qryRecipts: TDataSet; qryinit, qryinitCo: TADOQuery;
  ReciptID, ReciptType, ChildFieldIOName, ParentFieldIOName, ReciptNumber,
  ReciptCaption: string; MyEntityDisplayType: Byte);

procedure AccCodingShowInsert(qryinit, qryItems, qryRecipts: TADOQuery);
// procedure ReItemID(qry_Items, qryMaster: TADOQuery;
// tblName, fldName, formName: String; Step: Integer);
// function preItemID(qryReciptsOrForms: TADOQuery;
// tblName, fldName: String): boolean;
function IsParent(qryRecipts: TDataSet; ParentFieldName: String;
  ReciptTypeCo: Integer): boolean;
procedure ShowReciptTypes(qry: TDataSet; frParent: TForm;
  StuffCode: Largeint = 0; ParentReciptID: Integer = 0;
  ParentCoReciptID: Integer = 0; ControlCode: Integer = 0);

procedure ShowReciptTypesIsParent(qry: TDataSet; frParent: TForm);

procedure ShowFormTypesForms(qry: TDataSet; frParent: TForm);

procedure ShowFormTypesForm(frParent: TForm; FormCaption: string;
  formType, DisplayFormType, CustomerID1, FormID, ServerID, YearID,
  ReciptID: Integer; qryForm: TADOQuery);
procedure BrowseAllForms4QryCoffer(qryDs: TDataSet;
  FormID, ServerID, YearID: Integer);

Function GetFieldValue(const fldName: string): string;
Function GetFormNameOf(DisplayFormType, formType: Integer): string;
procedure MakeTableToZip(TableName: String; ADC: TADOConnection;
  sFilte: string);
procedure MakeTableToZip2(TableName: String; ADC: TADOConnection;
  sFilter: string);
procedure LoadTableFromZip(qry4Update: TADOQuery; TableName: String;
  fldName1, fldName2: String; OnlyInsert: boolean; msg: string);
procedure LoadTableFromZip2(qry4Update: TADOQuery; TableName: String;
  fldName1, fldName2: String; OnlyInsert: boolean; msg: string);

procedure SetExtraCoding(qry: TADOQuery; grd: TDBGrid); OverLoad;
procedure SetExtraCoding(qry: TDataSet; grd: TCedarDbgrid); OverLoad;
procedure StuffCodeUnic(qryRecipts, qryItem, qryinit: TADOQuery;
  CheckAllRow: boolean = True);
// function UnicStuffCode(qryItem :TADOQuery):Boolean;
function ReMainPersonRecipt(NewReMain: Currency; qryRecipts, qryinit: TDataSet;
  IsPrint: boolean; LblHint: TLabel; ActiveID: boolean = True): Currency;
function ReMainPersonPaymentCash(PersonID: Integer; Date: String;
  DocTypeA: array of Integer): Currency;
function New_RecoverPittedCode(groupID: Integer; CodeName, formName: String)
  : Largeint;
procedure Sp_UpdateChildFromFather(ChildRecipt_ID: Largeint;
  qryRecipts: TADOQuery);
procedure DeleteCorrelateRecipt(qryinit, qryRecipts: TADOQuery);
procedure DeleteCorrelateConversionCo(qryinit, qryRecipts: TADOQuery);
procedure FnCorrelate4EditActiveDelete(qryRecipts: TADOQuery;
  Correlate4EditActive: Byte);
function OkDelete(qry: TDataSet; ParentReciptID: boolean; ReciptItemID: Integer;
  changeState: boolean = False): boolean;
procedure CopyPaste(qryForms, qryFormItems: TADOQuery; DBGrid: TDBGrid;
  AddKindWeek: AddDateKind);
procedure Alladd2PopOther(TagOfMenu: Integer; grd: TCedarDbgrid);
function GetParentReciptID(qryRecipts: TDataSet; CheckDocNo: boolean): Integer;
function GetLimitFi(qry: TADOQuery): Currency;
function EditCorrelateReciptType(qryinit: TADOQuery): boolean;
function IsCorrelateReciptType(qryinit: TADOQuery): boolean;
function IsCorrelateFormType(qryinit: TADOQuery): boolean;
procedure initReportName(qry: TADOQuery; PopMnu: TPopupMenu;
  mnu4Click: TNotifyEvent);
function GetSumGridFields(grd: TDBGrid; sgrd: TSumGrid): String;
procedure ControlOrderPoint(StuffCode: Largeint; OrderEntity: Real;
  StoreID: Integer);
procedure PrintBarcode(qryinit, qryItems: TADOQuery; ppReportBarcode: TppReport;
  cliBarcode: TClientDataSet; pdtlbndBarcodeppDetailBand3: TppDetailBand;
  FormInOut, PerFileName: String; FileNameAdd: String);
procedure PrintTax(qryinit, qryItems: TADOQuery; cliBarcode: TClientDataSet);
procedure InsertReciptsDeficitsCalc(qryRecip, qryItems, qry_Deficits,
  qry_Deficits4Print: TADOQuery; Step: Integer);
procedure InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits,
  qry_Deficits4Print: TADOQuery; Step: Integer);
procedure SearchReciptNumber(qryinit, qryRecipts: TADOQuery; myStore: TStore);
function ValidateDatasetDatesRecipts(Dataset: TDataSet;
  qryinit: TADOQuery): boolean;
function ChkCustomerState(qry4Cust: TADOQuery): boolean;
function ChkCTopicCodeState(qry4CTopic: TADOQuery): boolean;
function CHKPriorityReciptDate(Dataset: TDataSet; qryinit: TADOQuery): String;
function CHKPriorityFormDate(Dataset: TDataSet; qryinit: TADOQuery): String;
function ValidateDatasetDatesForms(Dataset: TDataSet;
  qryinit: TADOQuery): boolean;
function AllStateControls(qry, qryItem, qryinit: TADOQuery;
  FromName: String): boolean;
procedure MyEditableFields(qry, qryinit: TDataSet);
procedure MyEditableContolor(MyForm: TForm; qryinit: TDataSet);
function GetReciptState(ReciptState: Integer): String;
function GetCurrencyKind(CurrencyKind: Integer): String;
function GetManifestoStatussState(Statuss: Integer): String;
function GetTransmittal(Transmittal: Integer): String;
function GetFormState(FormState: Integer): String;
procedure EditableFields(qryReciptTypes: TADOQuery; Field_Name, T1, T2: string);
procedure CalculateOutPutFields(qryStore: TADOQuery);
function getCalculateOutPutFields(PerFixNmae: string;
  CalculateOutPutFields: Largeint; IsOrderBY: boolean): string;
function getCalculateOutPutFields2(CalculateOutPutFields: Largeint): string;
procedure CopyPasteRec(qryFormItems: TADOQuery);
// function GETWeight:Real;
function ControlByuPrice(qryItems, qryRecipts, qryinit: TADOQuery): boolean;

function ControlEntity(var CurrentEntity, CurrentWeight: Extended;
  qryItems: TADOQuery; qryRecipts: TDataSet; qryinit: TADOQuery;
  FormInOut: String; Person3Active: boolean; MyEntityDisplayType: Byte;
  isGetExcel: boolean; qryEntityCodeExpirationDate: TADOQuery = nil;
  IsOnDelelte: boolean = False; IsParentCheck: boolean = True): boolean;
function ControlEntityCodeExpirationDate(var qryEntityCodeExpirationDate
  : TADOQuery; qryRecipts: TDataSet; qryItems, qryinit: TADOQuery;
  var Entity, Weight, CurrentEntity, CurrentWeight: Extended;
  var FormInOut: string; var MyEntityDisplayType: Byte): boolean;

function ReciptBe4PostCtrlEntAct(qryItems: TADOQuery; qryRecipts: TDataSet;
  qryinit: TADOQuery; IsOnDelelte: boolean = False): boolean;

function GetReciptItemIDs(var CurrentEntity, CurrentWeight: Extended;
  qryItems: TADOQuery; qryinit: TDataSet; FormInOut: String;
  EntityDisplayType: Byte; IDName: string; isGetExcel: boolean): String;
function GetReciptNumber(qryinit: TADOQuery; Dataset: TDataSet; EventKind: Byte;
  myStore: TStore; chk_RecallType_dsInsert: boolean = True;
  optServerID: boolean = True): Integer;
function ValidReciptNumber(qryRecipts, qryinit: TADOQuery;
  myStore: TStore): boolean;
function GetSqlOnRestartFormNumberOnStore(qryinit: TADOQuery; myStore: TStore;
  qryRecipts: TDataSet): string;
procedure AllReciptsEnter(ReciptType: Integer; frParent: TForm);
procedure ReplaceEntityWeightCaption(Sender: TObject);
function AutoStateChange(qryRecipts, qryinit: TADOQuery;
  ReciptState: Byte = 1): boolean;
procedure initPickList(DBGrid: TDBGrid);
procedure GetCustGroupsNames(ts: TStrings; ShowAll: boolean);
function GetStuffGroupsNames(ts: TStrings; ShowAll: boolean): string;
procedure GetCustomerTrancKinds(tab: TTabControl);
function CheckedMaxCredit(qryinit, qryItems, qryRecipts: TADOQuery): boolean;
function GetANewID(Dataset: TDataSet; formName, tblName, fldName: String;
  dsMaster: TDataSet; Step: Integer; GetMAX: boolean = True): Integer;
procedure initCofferAddField(qryinit, qryForms: TADOQuery;
  pnlSells, pnlSellsEmporium, pnlSellsMethod: TPanel;
  dblkcbb_SellsEmporium, dblkcbb_SellsMethod: TDBLookupComboBox);
procedure FreeMyComponent(f: TForm; a: array of string);
function chkAidNumberUnic(qryRecipts, qryinit: TADOQuery): boolean;
function DuplicateMachineInfo(qryRecipts, qryinit: TADOQuery): boolean;
function chkTozinIDUnic(qryRecipts, qryinit: TADOQuery): boolean;
function chkExternalIdUnic(ID: Largeint; ExternalId: string): boolean;
function ValidFormNumber(qryForms, qryinit: TADOQuery): boolean;
function AddMaster(CmbDocType, cmbCompany: TComboBox;
  MskSerial, MskDocNo, MskDocTopic, mskDocDate: TMaskEdit;
  MskSerialExit: TNotifyEvent; qryDocGroups: TADOQuery; NewDoc: boolean;
  formName: string; YearID: Integer): Integer;
function GetFormNumber(formName: String; qryinit: TADOQuery;
  Dataset: TDataSet): Integer;
procedure SetDefaultSellsMethodEmporium(qry: TADOQuery;
  dblkcbb_SellsEmporium, dblkcbb_SellsMethod: TDBLookupComboBox);
procedure AccSpeedButtonBankNationalID(ds: TDataSet);
procedure AccSpeedButtonTopicCode(ds: TDataSet;
  acc_TopicCode: String = 'acc_TopicCode');
procedure AccSpeedButtonDetailCode(ds: TDataSet;
  acc_DetailCode: string = 'acc_DetailCode';
  acc_TopicCode: String = 'acc_TopicCode'; filte: boolean = True);
procedure AccSpeedButtonCTopicCode(ds: TDataSet;
  acc_CTopicCode: String = 'acc_CTopicCode';
  acc_TopicCode: String = 'acc_TopicCode'; filte: boolean = True);
procedure AccSpeedButtonCTopicCode2(ds: TDataSet;
  acc_CTopicCode2: String = 'acc_CTopicCode2';
  acc_CTopicCode: String = 'acc_CTopicCode'; filte: boolean = True;
  acc_TopicCode: String = 'acc_TopicCode');
procedure AccSpeedButtonCTopicCode3(ds: TDataSet;
  acc_CTopicCode3: String = 'acc_CTopicCode3';
  acc_CTopicCode: String = 'acc_CTopicCode'; filte: boolean = True;
  acc_TopicCode: String = 'acc_TopicCode';
  acc_CTopicCode2: String = 'acc_CTopicCode2');
procedure AccSpeedButtonReciptItemsDetails;
procedure AccSpeedButtonBudgetCode(ds: TDataSet; BudgetCode: String);
procedure AccSpeedButtonProjectsCode(ds: TDataSet;
  ProjectID, BudgetCode: String; filte: boolean = True);
procedure SpeedButtonStuffCoding(ds: TDataSet; StuffCode, GroupType: String;

  var StuffName: string);
function SpeedButtonCustomers(CustIDFld: TField;

  var CustID: string;

  var CustName: string): Integer;
procedure SpeedButtonCustomersGroupTypes(CustID: TField; GroupTypes: String);
procedure SpeedButtonUseUnits(ds: TDataSet; Cap_tion: String);
procedure SpeedButtonUseOthers(ds: TDataSet; Cap_tion: String);
procedure SpeedButtonCustomerGrpID(ds: TDataSet);
procedure SpeedButtonProductModel(ds: TDataSet);
procedure SpeedButtonProductModelEntity(ds: TDataSet; filterSQL: string);
procedure SpeedButtonPersonID1DEntity(ds: TDataSet; filterSQL: string);
procedure SpeedButtonProductCode(ds: TDataSet; qryinit: TADOQuery);
procedure SpeedButtonTransFormID(ds: TDataSet; qryinit: TADOQuery);
procedure CustIDToDetailCode(qryCustomers: TADOQuery; GroupType: Integer);
procedure UseUnitsToCenterTopic(qryUseUnits: TADOQuery);
procedure CustIDToPhonBookII(qryCustomers: TADOQuery; DBMemo2: TDBMemo);
function checkSecondaryDocNo(SecondaryDocNo, CompanyCode: Integer;
  NewDoc: boolean): boolean;
// procedure InsertPersonID1(ds,dsDetail:TDataSet);
procedure AccChangeNames(MyForm: TForm);
procedure FunctionsAmountCaptions(ds: TDataSet; TabID: SmallInt);
procedure InsertNote(popNote: TPopupMenu; ClickNote: TNotifyEvent);
function Price_Read_Only(qryinit, qry: TADOQuery): boolean;
function Check4OkDelete_Deficits(Caption: String;
  qryDef, qryRecipt: TADOQuery): boolean;
procedure StandardRateActiveUnitSellPriceChange(qryinit, qryItems: TADOQuery;

  var LimitFi: Currency; EntityDisplayType: Byte);
procedure StandardRateActiveRecipts(qryinit, qryItems: TADOQuery);
procedure StandardRateActiveReciptsGrid(qryinit, qryItems: TADOQuery);
procedure SetRequestedEntityWeight(qryInitQry, qryRecipt_Items: TADOQuery;
  DBGrid1: TDBGrid);
procedure OtherRptFiles(qryReciptTypes: TADOQuery;
  Key: string = 'OtherRptFiles'; KeyCaptions: string = 'OtherRptCaptions');

function ChkServerID(adcSrc: TADOConnection;
  actMove, actMoveBaseInfo: TAction): Integer;
function CheckMakeDoc(Dataset: TDataSet): boolean;
function CheckDay4Edit(qryinit, qryChek: TADOQuery; TypeForm: Byte = 0)
  : boolean;
procedure SetUserQualitativeOnPrint(aReport: TppReport);
procedure SearchObjectReport(aReport: TppCustomReport);
procedure SetUserQualitativeOnForms(MyForm: TForm);
function UserQualitativeOnF(FName: String): boolean;
function GetUsersStore(SQLTxt: String): String;
function GetTableFieldNames(ADC: TADOConnection; SchemaName: string;
  TableName: String): String;
procedure showBigNum(num: Real48; aBigPanel, horoofPanel: TPanel);
procedure showBigNumDBGrid1ColEnter(Sender: TObject;
  aBigPanel, horoofPanel: TPanel);
function showBigOnField(Sender: TObject): boolean;
procedure FnDocTypeCode(cmbGroups, CmbDocType: TComboBox;

  var DocPostKind: SmallInt);
procedure FilterAllReciptTypes(qryInitQry: TADOQuery; fi: TfilterF);
procedure UpdateFilterAllReciptTypes(qryInitQry, qry: TADOQuery;
  aParams: TParams);
procedure AddPopupMenu4Print(qry: TADOQuery; ReportName: TppReport;
  GeneralFileName: string);
procedure AddPopupMenu4Note(aField: TField);
procedure AddpopViewFile(chk_ExistAttachments, GetDetailKeyID,
  FormCaption: String);
procedure AddpopViewFile2Grid(const Rect: TRect; grd: TCedarDbgrid;
  chk_ExistAttachments: string);

function UpDateBankChsh(Year: Integer; qry: TADOQuery;
  BankName: string): Integer;
// procedure GetSecondaryDocNo(cmbCompany: TComboBox; MskDocNo: TMaskEdit);
function YearStr(Year: Integer): string;
function GetStName(i: Integer): string;
procedure FormCloseQry(ds: TDataSet);
function GetCustomersGroupTypeSQL(FName: string; qryinit: TADOQuery;
  ADDCustIDParam: boolean = False; UseCustomerID: boolean = False): string;
Procedure InitchklstOperators(chkOperator: TCheckListBox; CheckS: string);
function GetchklstObjectS(chkOperator: TCheckListBox): string;
procedure btnContractsCaseNo(qryContracts: TADOQuery);
function AccDetailType(qryCustomersGroup: TADOQuery): string;
procedure UpDateListCustomers(kind: Byte; qryCustomers: TADOQuery;
  GroupType: Integer; cmbGroups: TComboBox; chkAllCusts: TCheckBox;
  mySelected, GrpIDInCmb: String; var WHERESQL: String);
function chkFunctionStatus(ds: TDataSet; aActionKind: TMyActionKind): boolean;
function chkMaliYearStatus(YearID: Integer): boolean;
function SetRelatedReciptTypes(qryinit, qryRelatedRecipts: TADOQuery): boolean;
function SetRelatedReciptItemTypes(qryinit, qryRelatedReciptItems
  : TADOQuery): boolean;
function SBtnRelatedReciptTypes(SQLTxt: string; qryForms: TADOQuery): string;
function GetHCKharidarTypeCode(i: Integer): string;
function GetHCTarafGaradadTypeCode(i: Integer): string;
function GetHCForoushandeType1Code(i: Integer): string;
// procedure InitReportUsername(ReportName: TppReport);

// procedure FormDateChange(qry:TADOQuery);
// procedure _CTopicCode2AccOldAvailable(qryItems:TADOQuery);
procedure WorkFlowSave(qryForm: TADOQuery; kind: Integer; KeyField: TField;
  formType: Integer);
procedure WorkFlowBeforDelete(qryForm: TDataSet);
procedure WorkFlowAfterDelete(qryForm: TADOQuery);
function IsFlowFroms(kind, formType: Integer): boolean;
procedure EditBeforDeleteRecallType16(qryinit, qryRecipts, qryItems: TADOQuery;
  IsqryItemsDelete: boolean);
procedure RequiredCustomers(qryRequiredCustomers, qryinit: TADOQuery);
procedure SetShiftFunctions(qry: TADOQuery);
function OkDeleteEditCheck(qryDetail_Item: TADOQuery): boolean;
procedure CheckItems(qryDetail_Item: TADOQuery);
function AfterDividendIsNotEditable: boolean;
function ADDKeyID(qry: TDataSet): string;
function GetDetailKeyID(qryMaster_Forms: TADOQuery; FormItemID: String): string;
procedure ActiveSellPrice2Dbgrid(Grid: TCustomControl);
function ChkFlowForms(qry: TADOQuery): boolean;
function checkValidParent: boolean;
// Sheikh 2015/06/22
procedure SaveOtherCustomers(qryOtherGroups, qryCustomers: TADOQuery;
  chklist: TCheckListBox);
procedure LoadOtherCustomers(qryOtherGroups: TADOQuery; chklist: TCheckListBox);
procedure InitChkList(chklist: TCheckListBox; cmbGroups: TComboBox;
  IsFirstTime: boolean = False);
function DefaultDateCalc(DefaultDurationField, FormDateField: TField): string;
procedure ReciptStateAutoStateChange(qryinit, qryRecipts: TDataSet);
function IsActiveCalcPriceOnServer: boolean;
function ADDItemChecked(qryMaster: TADOQuery): boolean;
function RelatedPostWhenCoefficientsPosted(qryinit,
  qryRecipts: TDataSet): boolean;
function ReciptCorrelate_ConversionCo_Chk(qryMaster, qryinit: TDataSet)
  : boolean;
procedure AfterScrollAutoFormStateChange(actStateChange: TAction;
  qryinit, qry: TDataSet);
procedure StateChangeAction(qry: TADOQuery);
procedure FormStateAutoStateChange(qryinit, qryForms: TDataSet);
procedure AutoState__Change(qryInitQry, qryMaster_Forms: TDataSet);
procedure ChangeCustID(qryCustomers: TADOQuery; cmbGroups: TComboBox;
  CustomerCaption: string; aProcedureName: string = 'ChangeCustID');
procedure ChangeCustomerGroup(Sender: TObject; qryCustomers: TADOQuery;
  CustomerCaption: string);
procedure InsertSeverable(qryChecks: TADOQuery;
  NewFormItemID, NewFormID: Integer);
procedure MakeDocumentShow(qryForm, qryInitQry: TADOQuery);
function DefaultDateActive(qryInitQry: TADOQuery): boolean;
procedure CallOtherForms(MyForm: Tform_Name; ftype, DesignFormID: Integer;
  qry: TDataSet);
procedure GetPersonalPicture(Pic: TPicture; PersonelNo: Integer);
procedure AllAfterInsert4acc(Dataset: TDataSet);
procedure UpDateqryFormsCheck(qry, qryRecipts: TADOQuery; Form_Type: Integer);
procedure CheckRequiredFieldsCustomer(Dataset: TDataSet);
function GetCode(Tag: Integer): Integer;
function GetFilterSQLChooseChecks(qryInitQry, qryMaster_Forms
  : TADOQuery): string;
procedure Chk_CustomerActive(_CustomerActive, PersonID1: TField);
procedure ReplaceSyntheticCodeField_in_SqlQry(ReciptType: Integer;
  qry: TADOQuery);
procedure qryCopyRowFields(qry: TADOQuery;

  Const AddFld: array of string);
procedure qryCopyRow(qry: TADOQuery;

  Const IgnoreFld: array of string);
function IgnoreField(IgnoreFieldName: string;

  Const IgnoreFld: array of string): boolean;
function NewTozin2Recipts2(qryTozin: TDataSet;
  kind: TCorrelateORConversion): Integer;
procedure TozinCorrelateRecipt(qryinit, qryTozin, qryLicense: TADOQuery;
  Caption: string);
procedure TozinConversionCoSerial(qryinit: TADOQuery; qryTozin: TDataSet;
  qryLicense: TADOQuery; Caption, CaptionCo: string);

function CheckLimitID(fld: TField): boolean;
Procedure UpdateAllQry(formName: TForm);
Procedure FreeLookupUnUse(DBText: TDBText);
procedure initCombosPayTopic(CmbPayTypes, CmbTopicTypes: TDBComboBox;
  qryinit: TADOQuery);
function ReadLookUps(kind: Integer = 0; Code: Integer = 1;
  DefaultValue: string = ''): string;
procedure CopyForm(qryInitQry, qryMaster_Forms, qryDetail_Item,
  qryAllForms: TADOQuery);
procedure SetArzIni(grd1: TCedarDbgrid);
function GetFormTypes(CustomerDocType: string): string;
procedure SetChkUsersCustomersGroupsActive(qry: TADOQuery;
  Tname: string = 'Forms');
function SetWhereCustGroups: string;
procedure Customer2ActiveOnDetailChange(Sender: TField;
  qryinit, qryItems: TADOQuery);
procedure SetFieldValue(wField, rField: TField;
  nilOnChange: boolean = True); overload;
procedure SetFieldValue(wField: TField; Value: string;
  nilOnChange: boolean = True); overload;
function setInOrNotIn4QRy(qry: TADOQuery; My_Params: TParams;
  paramname, ColumnName: string): string; overload;
function setInOrNotIn4QRy(qry: TFDQuery; My_Params: TParams;
  paramname, ColumnName: string): string; overload;
procedure InitBMP(BtmTiket: TBitmap);
function CheckUsingDate(inDate: String; sn: Integer): boolean;
function MultiMaliYear: boolean;
procedure SetCompanyFilterinLogin(Parameters: TParameters);
function CheckDockWithStatus0: boolean;
function CheckDockWithStatus01(CompanyCode: Integer): boolean;
function CheckRelatedIDExists(ID: Integer; kind: boolean): boolean;
function EkhtetamieCheck(docdate: string; CompanyCode: Integer)
  : boolean; { mehdi }
function DeleteRelatedID(Serial: Integer): boolean; { mehdi }
procedure FreeReserveCodeAll(s: String);
function CheckExistsImbalanceDoc: boolean;
function CheckExistsImbalanceDocLastYear: boolean;
function UsedAnalyze: boolean;
procedure CheckReapetedAidNo(ID: Integer; aidDocNo: Integer; isBed: Integer);
function FloatToTime(TimeFloat: Real): string;
procedure CreateTRIGGER4LinkServer(TableName: string);
procedure initCombosArz(qryInitForm: TADOQuery;
  CmbArzTypeID, cmbArzTypeIDExchange: TDBComboBox; edtArzRate: TDBEdit);
function UserWantsToAbortBecauseOfPendingChecks(const AConnection
  : TADOConnection; CustomerID: Integer): boolean;




// procedure StatusBar2Print(var StatusBar1: TStatusBar; self_: TForm);

implementation

uses mmessage, RptReports, Recipts, DateUtils, SelectStore, FilterClass_ADO,
  StuffToStore, ReciptsGrid, ContractStuff, Contract, ReciptsBuy,
  searchCode_ADO, Special_Search, Encryption, ActionPlans, ReciptsAnalysis,
  ReciptsStore, UpDateBank, ReciptsFunctions, AccFunctions, FaraDesktopAlert,
  DMSMS, RptCardex, MakeDocumentCheck, MakeDocumentCoffer, GeneralConst,
  SelectCustomer, template2MDI, rptCustomerTransaction, mdiMain, Config;

type
  TMyItmPopPrint = class(TMenuItem)
  private
    FPrnFileName: string;
    FReportName: TppReport;
    Property PrnFileName: string read FPrnFileName write FPrnFileName;
    Property ReportName: TppReport read FReportName write FReportName;
  public
    procedure Click; override;
  end;

  TMyNote = class(TMenuItem)
  private
    FNoteFieldName: TField;
    Property NoteFieldName: TField read FNoteFieldName write FNoteFieldName;
  public
    procedure Click; override;
  end;

  TpopViewFile = class(TMenuItem)
  private
    FFileName: string;
    Property FileName: string read FFileName write FFileName;
  public
    procedure Click; override;
  end;


  // procedure StatusBar2Print(var StatusBar1: TStatusBar; self_: TForm);
  // var
  // i: Integer;
  // src: TDataSource;
  // qry: TADOQuery;
  // SQL: string;
  // ppDBPipeline: TppDBPipeline;
  // begin
  // // FreeMyComponent(self_, ['qryStatusBar', 'srcStatusBar',
  // // 'ppDBPipelineStatusBar']);
  // if self_.FindComponent('qryStatusBar') = nil then
  // qry := TADOQuery.Create(self_);
  //
  // With qry do
  // begin
  // Active := False;
  // qry.name := 'qryStatusBar';
  // Connection := DMf.adcBSell;
  // SQL.Text := 'SELECT 0 AS StatusBar';
  // for i := 0 TO StatusBar1.Panels.Count - 1 do
  // begin
  // SQL.Add(Format(' ,%s AS StatusBar%d',
  // [QuotedStr(StatusBar1.Panels[i].Text), i]));
  // end;
  // LockType := ltReadOnly;
  // if self_.FindComponent('srcStatusBar') = nil then
  // src := TDataSource.Create(self_);
  // src.name := 'srcStatusBar';
  // src.Dataset := qry;
  //
  // if self_.FindComponent('ppDBPipelineStatusBar') = nil then
  // ppDBPipeline := TppDBPipeline.Create(self_);
  // With ppDBPipeline do
  // begin
  // DataSource := src;
  // Name := 'ppDBPipelineStatusBar';
  // end;
  // Active := True;
  // end;
  // end;

function UserWantsToAbortBecauseOfPendingChecks(const AConnection
  : TADOConnection; CustomerID: Integer): boolean;
var
  Q: TADOQuery;
  msg: string;
begin
  Result := False;
  Q := TADOQuery.Create(nil);
  try
    Q.Connection := AConnection;
    Q.SQL.Text := 'SELECT CheckNumber, formitems.CheckDate, ItemAmount ' +
      'FROM formitems ' +
      'INNER JOIN forms ON formitems.yearid = forms.yearid AND formitems.serverid = forms.serverid AND formitems.formid = forms.formid '
      + 'INNER JOIN formtypes ON forms.formtype = formtypes.formtype ' +
      'LEFT OUTER JOIN ' +
      '  (SELECT formitems.formitemid, formitems.preformitemid, formitems.formid, formitems.serverid, formitems.yearid, '
      + '          forms.formdate, formitems.perserverid, formitems.checkdate '
      + '   FROM formitems ' +
      '   INNER JOIN forms ON formitems.formid = forms.formid AND formitems.serverid = forms.serverid AND formitems.yearid = forms.yearid'
      + '  ) formitems_1 ' +
      '  ON formitems.serverid = formitems_1.perserverid ' +
      '  AND formitems.yearid = formitems_1.yearid ' +
      '  AND formitems.formitemid = formitems_1.preformitemid ' +
      'WHERE (formitems_1.preformitemid IS NULL) ' + '  AND ((SyadSystem = 0) '
      + '  or (forms.formtype IN (11,12,17,18,24,50,54,120))) ' +
      '  AND (formitems.customerid2 = :CustomerID ) ' +
      '  AND (forms.formstate < 10) ' +
      '  AND (forms.yearid BETWEEN :YearFrom AND :YearTo) ' +
      'ORDER BY formitems.checkdate';

    // Q.SQL.Text := 'SELECT CheckNumber, CheckDate, ItemAmount ' +
    // 'FROM FormItems ' +
    // 'WHERE SyadSystem = 0 AND CustomerID2 >= :CustomerID AND CheckDate >= :CheckDate';

    Q.Parameters.ParamByName('CustomerID').Value := CustomerID;
    Q.Parameters.ParamByName('YearFrom').Value := APPBank.Year;
    Q.Parameters.ParamByName('YearTo').Value := APPBank.Year;

    Q.Open;

    if not Q.Eof then
    begin
      Result := True;
      msg := 'لیست چک‌های وصول‌نشده یا ثبت‌نشده در سامانه سیاد' + sLineBreak +
        sLineBreak;
      Q.First;
      while not Q.Eof do
      begin
        msg := msg + Format('شماره چک: %s | تاریخ: %s | مبلغ: %s',
          [Q.FieldByName('CheckNumber').AsString, Q.FieldByName('CheckDate')
          .AsString, FormatFloat('#,##0', Q.FieldByName('ItemAmount')
          .AsCurrency)]);
        msg := msg + sLineBreak;
        Q.Next;
      end;
      msg := msg + sLineBreak + 'آیا به ذخیره فرم می‌خواهید ادامه دهید؟';

      Result := Application.MessageBox(PChar(msg), 'هشدار',
        MB_YESNO + MB_ICONQUESTION) = IDNO;

    end;
  finally
    Q.Free;
  end;
end;

function setInOrNotIn4QRy(qry: TADOQuery; My_Params: TParams;
  paramname, ColumnName: string): string;
var
  s, s1: string;
begin
  Result := EmptyStr;
  s := GetcNot(My_Params.ParamValues[paramname]);
  if ((s <> '-1') and (s <> '')) then
  begin
    Result := 'and not exists( Select part From dbo.SplitString(''' + s +
      ''','','') where part = ' + ColumnName + ')';

    if qry <> nil then
      qry.SQL.Add(Result);
  end;

  s := GetcSelected(My_Params.ParamValues[paramname]);
  if ((s <> '-1') and (s <> '')) then
  begin
    s1 := 'and exists( Select part From dbo.SplitString(''' + s +
      ''','','') where part = ' + ColumnName + ')';

    Result := Result + s1;

    if qry <> nil then
      qry.SQL.Add(s1);
  end;

end;

function setInOrNotIn4QRy(qry: TFDQuery; My_Params: TParams;
  paramname, ColumnName: string): string;
var
  s, s1: string;
begin
  Result := EmptyStr;
  s := GetcNot(My_Params.ParamValues[paramname]);
  if ((s <> '-1') and (s <> '')) then
  begin
    Result := 'and not exists( Select part From dbo.SplitString(''' + s +
      ''','','') where part = ' + ColumnName + ')';

    if qry <> nil then
      qry.SQL.Add(Result);
  end;

  s := GetcSelected(My_Params.ParamValues[paramname]);
  if ((s <> '-1') and (s <> '')) then
  begin
    s1 := 'and exists( Select part From dbo.SplitString(''' + s +
      ''','','') where part = ' + ColumnName + ')';

    Result := Result + s1;

    if qry <> nil then
      qry.SQL.Add(s1);
  end;

end;

function ReadLookUps(kind: Integer = 0; Code: Integer = 1;
  DefaultValue: string = ''): string;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DMf);
  with qry do
  begin
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT Name FROM LookUps WHERE (Kind = ' + IntToStr(kind) +
        ') AND (Code = ' + IntToStr(Code) + ')';
      Active := True;
      Result := FieldByName('Name').AsString;
      if Result = '' then
        Result := DefaultValue;
      Active := False;
    finally
      qry.Free;
    end; // try
  end; // with
end;

procedure initCombosPayTopic(CmbPayTypes, CmbTopicTypes: TDBComboBox;
  qryinit: TADOQuery);
begin
  CmbPayTypes.Clear;
  CmbTopicTypes.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT LookUpID,Name FROM LookUps';
    SQL.Add('WHERE (Kind = ' + IntToStr(qryinit.FieldByName('FormPaySerial')
      .AsInteger) + ')and (Kind <>0) ORDER BY Name');
    Active := True;
    while not Eof do
    begin
      CmbPayTypes.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
    SQL.Text := 'SELECT LookUpID,Name FROM LookUps';
    SQL.Add('WHERE (Kind = ' + IntToStr(qryinit.FieldByName('FormTopicSerial')
      .AsInteger) + ')and (Kind <>0) ORDER BY Name');
    Active := True;
    while not Eof do
    begin
      CmbTopicTypes.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
  end;
end;

function GetHCKharidarTypeCode(i: Integer): string;
begin
  case i of
    1:
      Result := 'حقيقي';
    2:
      Result := 'حقوقي';
  else
    Result := '....نامشخص';
  end;
end;

function GetHCTarafGaradadTypeCode(i: Integer): string;
begin
  case i of
    1:
      Result := 'مصرف كننده نهايي';
    2:
      Result := 'عادي';
    3:
      Result := 'صادرات و واردات با آدرس هاي خارجي';

    4:
      Result := '""از سال 96 عناوین ذیل انتخاب شود""';

    5:
      Result := '5 = مودی مشمول ثبت نام در نظام مالیاتی ';

    6:
      Result := '6 = مشمولین حقیقی ماده 81 ';

    7:
      Result := '7 = اشخاصی که مشمول ثبت نام در نظام مالیاتی نیستند ';

    8:
      Result := '8 = مصرف کننده نهایی ';

  else
    Result := '.....نامشخص';
  end;
end;

function GetHCForoushandeType1Code(i: Integer): string;
begin
  case i of
    1:
      Result := 'عادی';
    2:
      Result := 'طرف معامله خارجی که در ایران اقامت و فعالیت اقتصادی ندارد';

    3:
      Result := '';
    4:
      Result := '""از سال 96 عناوین ذیل انتخاب شود""';
    5:
      Result := '5=مودی مشمول ثبت نام در نظام مالیاتی';
    6:
      Result := '6=مشمولین حقیقی ماده 81 ق.م.م';
    7:
      Result := '7=اشخاصی که ملزم به ثبت نام در نظام مالیاتی نیستند';
    8:
      Result := '8=کمتر از 5% حد نصاب معاملات';

  else
    Result := '....نامشخص';
  end;
end;

function SetRelatedReciptTypes(qryinit, qryRelatedRecipts: TADOQuery): boolean;
var
  RelatedReciptTypes: string;
begin
  Result := Trim(qryinit.FieldByName('RelatedReciptTypes').AsString) <>
    EmptyStr;
  RelatedReciptTypes := Trim(qryinit.FieldByName('RelatedReciptTypes')
    .AsString);
  if RelatedReciptTypes = EmptyStr then
    RelatedReciptTypes := '0';
  if qryRelatedRecipts <> nil then
    With qryRelatedRecipts do
    begin
      Active := False;
      SQL.Text := 'SELECT ReciptID, RelatedNo, RelatedName';
      SQL.Add(',ReciptNumber,ReciptDate');
      SQL.Add('FROM Vu_RelatedReciptTypes');
      SQL.Add('WHERE (ReciptType IN (' + RelatedReciptTypes + '))');
      SQL.Add('AND (YearID =' + APPBank.Year.ToString + ')');
    end;
end;

function SetRelatedReciptItemTypes(qryinit, qryRelatedReciptItems
  : TADOQuery): boolean;
var
  RelatedReciptTypes: string;
begin
  Result := Trim(qryinit.FieldByName('RelatedReciptTypes').AsString) <>
    EmptyStr;
  RelatedReciptTypes := Trim(qryinit.FieldByName('RelatedReciptTypes')
    .AsString);
  if RelatedReciptTypes = EmptyStr then
    RelatedReciptTypes := '0';
  if qryRelatedReciptItems <> nil then
    With qryRelatedReciptItems do
    begin
      Active := False;
      SQL.Text := 'SELECT ID,ReciptNumber, RelatedName';
      SQL.Add(', ReciptDate,StuffCode ,c_StuffName');
      SQL.Add('FROM Vu_RelatedReciptTypesItem');
      SQL.Add('WHERE (ReciptType IN (' + RelatedReciptTypes + '))');
      SQL.Add('AND (YearID =' + APPBank.Year.ToString + ')');
    end;
end;

function SBtnRelatedReciptTypes(SQLTxt: string; qryForms: TADOQuery): string;
var
  results: array [0 .. 3] of String;
  b: boolean;
begin
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' فرم ها  ', SQLTxt,
    ['', 'كد', 'شرح', 'شماره', 'تاریخ'], results,
    [0, 100, 200, 50, 50], alLeft);
  if b then
  begin
    qryForms.FieldByName('ReciptID').AsString := results[0];
    qryForms.FieldByName('RelatedRecipts').AsString := results[1];
  end;
end;

function chkMaliYearStatus(YearID: Integer): boolean;
begin
  with DMf.qryAccounting do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*)';
    SQL.Add('FROM Util.MaliYear');
    SQL.Add(Format('WHERE (Status = 0) AND (YearID = %d )', [YearID]));
    Active := True;
    Result := Fields[0].AsInteger = 1;
    Active := False;
  end;
  if not Result then
    Warn('بانك حسابداري انتخاب شده در وضعيت نهايي يا بايگاني مي باشد.');
end;

function chkFunctionStatus(ds: TDataSet; aActionKind: TMyActionKind): boolean;
var
  i: Integer;
begin
  Result := False;
  case ds.FieldByName('FunctionStatus').AsInteger of
    0:
      Result := True;
    1:
      begin
        if aActionKind = aEdit then
        begin
          for i := 0 to ds.FieldCount - 1 do
            ds.Fields[i].ReadOnly := True;
          ds.FieldByName('OverTime').ReadOnly := False;
          ds.FieldByName('Amount1').ReadOnly := False;
          ds.FieldByName('Amount2').ReadOnly := False;
          ds.FieldByName('Amount3').ReadOnly := False;
          Result := True;
        end
        else
          Result := False;
      end;
    2:
      begin
        Result := False;
      end;
  end;
  if not Result then
    Warn('كاركرد فقط در وضعيت موقت قابل حذف و ويرايش مي باشد.');
end;

procedure UpDateListCustomers(kind: Byte; qryCustomers: TADOQuery;
  GroupType: Integer; cmbGroups: TComboBox; chkAllCusts: TCheckBox;
  mySelected, GrpIDInCmb: String; var WHERESQL: String);
var
  GrpID: Integer;
begin
  with qryCustomers do
  begin
    Active := False;
    SQL.Text := EmptyStr;
    SQL.Add(' WHERE (CustomerGrpID in ');
    SQL.Add('(SELECT DISTINCT CustomerGrpID FROM Vu_CustomersGroups WHERE GroupType = :GroupType');
  end; // with

  if cmbGroups.ItemIndex = -1 then
    GrpID := 0
  else
    GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  case kind of
    1:
      begin
        with qryCustomers do
        begin
          SQL.Add('and (CustomerGrpID = :CustomerGrpIDForm ) ))');
        end; // with
      end;
    2:
      begin
        if chkAllCusts.Checked then
        begin
          cmbGroups.Enabled := False;
          with qryCustomers do
          begin
            SQL.Add('and (CustomerGrpID in(' + GrpIDInCmb + ')) ))');
          end; // with
        end // if
        else
        begin
          cmbGroups.Enabled := True;
          with qryCustomers do
          begin
            SQL.Add('and (CustomerGrpID = :CustomerGrpIDForm ) ))');
          end; // with
          chkAllCusts.Checked := False;
        end; // if
      end;
    3:
      begin
        if Length(mySelected) > 1 then
          with qryCustomers do
          begin
            cmbGroups.ItemIndex := -1;
            SQL.Add('and (CustomerGrpID in(' + mySelected + ')) ))');
          end
        else
          qryCustomers.SQL.Add('and (CustomerGrpID in(' + IntToStr(GrpID)
            + ')) ))');
      end;
  end;
  with qryCustomers do
  begin
    WHERESQL := SQL.Text;
    SQL.Text :=
      'SELECT DISTINCT *, LEFT(TechnicalCode, 2) AS Pelak1, SUBSTRING(TechnicalCode, 4, 1) AS Pelak2';
    SQL.Add(', SUBSTRING(TechnicalCode, 6, 3) AS Pelak3, RIGHT(TechnicalCode, 2) AS Pelak4 FROM Customers');
    SQL.Add(WHERESQL);
    SQL.Add('and(CustID<>0)');
    SQL.Add('ORDER BY CustID');
    Parameters.ParamByName('GroupType').Value := GroupType;
    if Parameters.FindParam('CustomerGrpIDForm') <> nil then
      Parameters.ParamByName('CustomerGrpIDForm').Value := GrpID;
    Active := True;
  end;
end;

function AccDetailType(qryCustomersGroup: TADOQuery): string;
begin
  case qryCustomersGroup.FieldByName('DetailType').AsInteger of
    2:
      Result := 'acc_CTopicCode';
    3:
      Result := 'acc_CTopicCode2';
    4:
      Result := 'acc_CTopicCode3'
  else
    Result := 'acc_DetailCode'

  end;
end;

procedure btnContractsCaseNo(qryContracts: TADOQuery);
var
  txt: String;
  Result: array [0 .. 20] of String;
begin
  txt := 'SELECT Cnt.Contracts.CaseNo,Cnt.Contracts.ContractNo ,Cnt.Contracts.ContractDate,'
    + ' CustomersGroup.CustomerGrpName, Cnt.Contracts.ContractRow,' +
    ' Cnt.Contracts.ContractTopic, Cnt.Contracts.EmployerId,' +
    ' Customers.CustName as CustNameE, Cnt.Contracts.InsertDate,' +
    ' CASE Cnt.Contracts.ContractType WHEN 0 THEN' +
    ' ''اوليه'' WHEN 1 THEN ''متمم'' ELSE ''افزايش25درصد'' END as ContractType,'
    + ' Cnt.Contracts.StartDate, Cnt.Contracts.EndDate,' +
    ' Cnt.Contracts.ActivityStartDate, Cnt.Contracts.AnticipateDate,' +
    ' Cnt.Contracts.ExecutionTime, Cnt.Contracts.ContractBasePrice,' +
    ' Cnt.Contracts.WorkShopId, Customers_1.CustName,' +
    ' CASE Cnt.Contracts.ContractsStatus WHEN 0 THEN ''دردست اجرا'' WHEN 1 THEN'
    + ' ''خاتمه يافته'' WHEN 2 THEN ''تحويل شده'' ELSE ''راکد'' END as ContractsStatus,'
    + ' Cnt.Contracts.Note' + ' ' +
    ' FROM Cnt.Contracts INNER JOIN CustomersGroup ON Cnt.Contracts.' +
    ' CustomerGrpId = CustomersGroup.CustomerGrpId INNER JOIN Customers ON Cnt.'
    + ' Contracts.EmployerId = Customers.CustID INNER JOIN Customers AS' +
    ' Customers_1 ON Cnt.Contracts.WorkShopId = Customers_1.CustID';
  // ' WHERE(YearID = %d) AND (FromType = %d) AND (Customers.CustomerGrpId = %d)';
  // txt := Format(txt, [APPBank.Year, formType, groupID]);
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'جستجو قرارداد', txt,
    ['شناسه قرارداد', 'شماره قرارداد', 'تاريخ', 'گروه', 'رديف',
    'عنوان کلي قرارداد', 'کدطرف قرارداد', 'طرف قرارداد', 'تاريخ انعقاد',
    'نوع قرارداد', 'تاريخ شروع', 'تاريخ پايان', 'تاريخ شروع فعاليت',
    'تاريخ پيش بيني پايان فعاليت', 'مدت - ماه', 'مبلغ اوليه قرارداد',
    'کدکارگاه', 'کارگاه', 'وضعيت قرارداد', 'توضيحات'], Result,
    [50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
    50], alLeft) then
    qryContracts.Locate('CaseNo', Result[0], []);

end;

function GetchklstObjectS(chkOperator: TCheckListBox): string;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to chkOperator.Items.Count - 1 do
  begin
    if chkOperator.Checked[i] then
      Result := Result + IntToStr(Integer(chkOperator.Items.Objects[i])) + ','
  end;
  Result := LeftStr(Result, Length(Result) - 1);
end;

Procedure InitchklstOperators(chkOperator: TCheckListBox; CheckS: string);
var
  s: string;
begin
  chkOperator.Clear;
  CheckS := ',' + CheckS + ',';
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT UserID, name';
    SQL.Add('FROM FaraSystems.dbo.Operators');
    SQL.Add('WHERE (SystemID in (0,18,40))');
    SQL.Add('AND (OperatorKind < 3)');
    if CompanyFilterinLogin then
      SQL.Add('AND ( UserID in (SELECT DISTINCT UserID FROM FaraSystems.dbo.OperatorCompanies WHERE(n_subcompany = '
        + FcompanyCode.ToString + ')))');

    Active := True;
    while not Eof do
    begin
      chkOperator.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      s := ',' + Fields[0].AsString + ',';
      chkOperator.Checked[chkOperator.Items.Count - 1] := Pos(s, CheckS) <> 0;
      Next;
    end;
  end;
end;

procedure FormCloseQry(ds: TDataSet);
var
  n: Integer;
begin
  if (ds <> nil) and (ds.Active) and (ds.State in [dsedit, dsInsert]) then
  begin
    n := get_response('فرم ذخيره نشده است. تغييرات ذخيره شوند؟‏');
    case n of
      mrYes:
        ds.Post;
      mrNo:
        ds.Cancel;
    end;
  end;
end;

function GetStName(i: Integer): string;
begin
  With DMf.qryMasterLookUps do
    try
      Active := True;
      if Locate('Code', IntToStr(i + 300), []) then
        Result := FieldByName('Name').AsString
      else
        Result := EmptyStr;
    finally
    end; // try
end;

// procedure GetSecondaryDocNo(cmbCompany: TComboBox; MskDocNo: TMaskEdit);
// var
// SQL: string;
// SecondaryDocNo: Largeint;
// begin
//
// SQL := Format('SELECT max(SecondaryDocNo) FROM %sDocGroups ' +
// 'WHERE (SecondaryDocNo BETWEEN %d AND %d) ',
// [opt.AccOwnerName, opt.AccStartLimitID, opt.AccEndLimitID]);
//
// If opt.gv_MultiCompany And opt.RestDocCode then
// SQL := SQL + Format('AND (CompanyCode = %d )',
// [Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])]);
// if not opt.AccOldAvailable then
// SQL := SQL + Format(' AND (YearID = %d )', [APPBank.Year]);
//
// SecondaryDocNo := GetANewCodeAcc(SQL, 'SecondaryDocNo',
// DMf.qryACCTopicCode.Connection);
//
// if SecondaryDocNo < opt.AccStartLimitID then
// MskDocNo.Text := IntToStr(opt.AccStartLimitID)
// else
// MskDocNo.Text := IntToStr(SecondaryDocNo);
//
// end;

procedure AddPopupMenu4Print(qry: TADOQuery; ReportName: TppReport;
  GeneralFileName: string);
var
  Pop: TPopupMenu;
  Itm: TMyItmPopPrint;
begin
  Pop := TPopupMenu.Create(DMf);
  Pop.AutoHotkeys := maManual;
  qry.DisableControls;
  Itm := nil;
  with DMf.qryTmpTmp do
    try
      Active := False;
      SQL.Text := 'SELECT SellsEmporium,SellsEmporiumName FROM SellsEmporiums';
      Active := True;
      while not Eof do
      begin
        Itm := TMyItmPopPrint.Create(Pop);
        Itm.Caption := FieldByName('SellsEmporiumName').AsString;
        if RecNo <= 1 then
          Itm.PrnFileName := GeneralFileName
        else
          Itm.PrnFileName := GeneralFileName +
            FieldByName('SellsEmporium').AsString;
        Itm.ReportName := ReportName;
        Pop.Items.Add(Itm);
        Next;
      end;

      if RecordCount = 1 then
        Itm.Click
      else
        Pop.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
      Active := False;
    finally
      qry.EnableControls;
    end;
end;

procedure TMyItmPopPrint.Click;
begin
  inherited;
  InitReportFile(ReportName, PrnFileName, True);
  Parent.Clear;
  Parent.Free;
end;

procedure AddPopupMenu4Note(aField: TField);
var
  Pop: TPopupMenu;
  Itm: TMyNote;
begin
  Pop := TPopupMenu.Create(DMf);
  Pop.AutoHotkeys := maManual;
  Itm := nil;
  with DMf.qryTmpTmp do
    try
      Active := False;
      SQL.Text := 'SELECT LookUps.Name';
      SQL.Add('FROM LookUps INNER JOIN');
      SQL.Add('LookUps AS LookUps_1 ON LookUps.Kind = LookUps_1.LookUpID');
      SQL.Add('WHERE (LookUps_1.Code = 353)');
      // SQL.Text:='SELECT Name FROM LookUps';
      // SQL.Add  ('WHERE Kind = 353');
      Active := True;
      while not Eof do
      begin
        Itm := TMyNote.Create(Pop);
        Itm.Caption := FieldByName('Name').AsString;
        Itm.NoteFieldName := aField;
        Pop.Items.Add(Itm);
        Next;
      end;
      if RecordCount = 1 then
        Itm.Click
      else
        Pop.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
      Active := False;
    finally
    end;
end;

procedure AddpopViewFile2Grid(

  const Rect: TRect; grd: TCedarDbgrid; chk_ExistAttachments: string);
var
  ts: TStringList;
  i: Integer;
  b: boolean;
  Image1: TImage;
begin
  b := False;
  Image1 := TImage.Create(grd);
  try
    Image1.Picture.Bitmap.LoadFromResourceName(HInstance, 'Attachments');
  except
    on E: Exception do
      add2log('Attachments');

  end;
  grd.Canvas.Rectangle(Rect);
  try
    ts := TStringList.Create;
    ts.Text := StringReplace(chk_ExistAttachments, ',', #13, [rfReplaceAll]);
    for i := 0 to ts.Count - 1 do
    begin
      b := ViewFileOnServerF.Enter(ts[i], 'GetCheckF', True, True);
      if b then
        Break;
    end;
    if b then
      grd.Canvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Graphic)
  finally
    // ts.Free;
    Image1.Free;
  end;
end;

procedure AddpopViewFile(chk_ExistAttachments, GetDetailKeyID,
  FormCaption: String);
var
  popViewFile: TPopupMenu;
  Itm: TpopViewFile;
  s: string;
  ts: TStringList;
  i, k: Integer;
  b: boolean;
begin
  popViewFile := TPopupMenu.Create(nil);
  popViewFile.AutoHotkeys := maManual;
  // Itm := nil;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT FormTypes.FormCaption';
    SQL.Add('FROM FormTypes INNER JOIN');
    SQL.Add('Forms ON FormTypes.FormType = Forms.FormType INNER JOIN');
    SQL.Add('FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID');
    SQL.Add('= FormItems.YearID');
    SQL.Add('WHERE (LTRIM(STR(Forms.YearID)) + ''_'' + LTRIM(STR(Forms.ServerID)) + ''_'' + LTRIM(STR(Forms.FormID)) + ''_'' + LTRIM');
    SQL.Add('(STR(FormItems.FormItemID)) = :FormItemID1 )');
    SQL.Add('OR (LTRIM(STR(Forms.YearID)) + ''_'' + LTRIM(STR(Forms.ServerID)) + ''_'' + LTRIM(STR(Forms.FormID)) + ''_'' + LTRIM');
    SQL.Add('(STR(ISNULL(FormItems.preFormItemID,0))) = :FormItemID2 )');

    s := 'پيوست و اسكن  ';
    popViewFile.Items.Clear;
    Itm := TpopViewFile.Create(popViewFile);
    Itm.Caption := s + FormCaption;
    Itm.FileName := GetDetailKeyID;
    popViewFile.Items.Add(Itm);

    // popViewFile.Items.Add(NewItem(s + Caption, 0, False, True, Click,
    // 0, 'mnuViewFile'));
    k := 0;
    ts := TStringList.Create;
    try
      // qryDetail_Itemchk_ExistAttachments.AsString
      ts.Text := StringReplace(chk_ExistAttachments, ',', #13, [rfReplaceAll]);
      for i := 0 to ts.Count - 1 do
      begin
        b := (ViewFileOnServerF.Enter(ts[i], 'GetCheckF', True, True)) and
          (GetDetailKeyID <> ts[i]);
        if b then
        begin
          inc(k);
          Active := False;
          Parameters.ParamByName('FormItemID1').Value := ts[i];
          Parameters.ParamByName('FormItemID2').Value := ts[i];
          Active := True;

          Itm := TpopViewFile.Create(popViewFile);
          Itm.Caption := s + Fields[0].AsString;
          Itm.FileName := ts[i];
          popViewFile.Items.Add(Itm);
          // popViewFile.Items.Add(NewItem(s + Fields[0].AsString, 0, False, True,
          // mnuViewFile1Click, 0, 'mnuViewFile' + IntToStr(i)));
          popViewFile.Items[k].Hint := ts[i];
        end;
      end;
    finally
      ts.Free;
      // if popViewFile = 1 then
      // Itm.Click
      // else
      popViewFile.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
      Active := False;
    end;
  end;
end;

procedure TMyNote.Click;
begin
  inherited;
  FNoteFieldName.Dataset.Edit;
  FNoteFieldName.AsString := Caption;
  FNoteFieldName.Dataset.Post;
  Parent.Clear;
  Parent.Free;
end;

function YearStr(Year: Integer): string;
begin
  if Year < 20 then
    Year := Year + 1400
  else
    Year := Year + 1300;

  Result := Year.ToString;

end;

function UpDateBankChsh(Year: Integer; qry: TADOQuery;
  BankName: string): Integer;
var
  DateFrom, DateTo, DateFromRemain: String;
begin

  DateFrom := YearStr(Year) + '/01/01';
  DateTo := YearStr(Year) + '/12/30';

  With qry do
  begin
    Active := False;
    SQL.Text := 'UPDATE Customers';
    SQL.Add('SET Customers.FirstBalance =');

    SQL.Add('(SELECT ISNULL( SUM(AllAccount.bed - AllAccount.bes) ,0) ');
    SQL.Add('FROM');
    SQL.Add(BankName + '.dbo.AllAccount(1,2,10,-1, :CustFrom ,999999999');
    SQL.Add(', :DateFrom , :DateTo , :DateFromRemain , :YearIDFrom , :YearIDTo , DEFAULT, DEFAULT, DEFAULT, DEFAULT,DEFAULT) AS AllAccount');
    SQL.Add('WHERE (CustomerID1 = Customers.CustID ))');
    SQL.Add('FROM Customers INNER JOIN');
    SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
    SQL.Add('WHERE (CustomersGroup.GroupType IN (1, 2))');

    Parameters.ParamByName('CustFrom').Value := 0;
    // Parameters.ParamByName('CustTo').Value:=99999999;
    Parameters.ParamByName('DateFrom').Value := DateFrom;
    Parameters.ParamByName('DateTo').Value := DateTo;

    DateFromRemain := DateFrom;
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    Parameters.ParamByName('DateFromRemain').Value := DateFromRemain;

    Parameters.ParamByName('YearIDFrom').Value := Year;
    Parameters.ParamByName('YearIDTo').Value := Year;

    Result := ExecSQL;

  end; // with

end;

procedure FilterAllReciptTypes(qryInitQry: TADOQuery; fi: TfilterF);
begin
  if qryInitQry.FieldByName('SecondTypeActive').AsInteger = 1 then
    fi.AddItem(DMf.adcBSell, 'SecondTypeCode', 'نوع اطلاعات', 'كد اطلاعات ',
      ftInteger, dvMinMax, '', '', ciLookup,
      'SELECT distinct LookUps.Code as Code, LookUps.Name as Name FROM Recipts INNER JOIN LookUps ON '
      + 'Recipts.SecondType = LookUps.LookUpID ',
      'SELECT MIN(LookUps.Code),MAX(LookUps.Code) FROM Recipts LEFT OUTER JOIN LookUps ON '
      + 'Recipts.SecondType = LookUps.LookUpID');

  if qryInitQry.FieldByName('SellsMethodActive').AsInteger = 1 then
    AddItemFilter(fi, TFilterSellsMethod);

  if qryInitQry.FieldByName('SellsEmporiumActive').AsInteger = 1 then
    AddItemFilter(fi, TFilterSellsEmporium);

  AddItemFilter(fi, TFilterStuffCode);
  // fi.AddItem(DMf.adcBSell, 'StuffCode', 'كالا', 'كد', ftLargeint, dvMinMax, '',
  // '', ciLookup,
  // // 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
  // // 'SELECT Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');
  // 'SELECT distinct StuffCoding.c_StuffCode, StuffCoding.c_StuffName FROM         StuffCoding INNER JOIN '
  // + 'ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode ' +
  // 'INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID ' +
  // 'AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID '
  // // + 'WHERE (Recipts.ReciptType = ' + qryInitQry.FieldByName('ReciptType')
  // // .AsString + ')'
  // // + 'GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName '
  // , 'SELECT MIN(StuffCoding.c_StuffCode), MAX(StuffCoding.c_StuffCode)FROM  StuffCoding INNER JOIN '
  // + 'ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode ' +
  // 'INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID ' +
  // 'AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID '
  // // + 'WHERE Recipts.ReciptType =' + qryInitQry.FieldByName('ReciptType')
  // // .AsString
  // );

  fi.AddItem(DMf.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
    '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
  fi.AddItem(DMf.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
    '', '', ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
    ''',Max(ReciptDate) from Recipts '
    // +'WHERE ReciptType = ' +    qryInitQry.FieldByName('ReciptType').AsString
    );
  fi.AddItem(DMf.adcBSell, 'ReciptNumber', ' فرم ', 'شماره', ftInteger,
    dvMinMax, '', '', ciSimple, '',
    'SELECT Min(ReciptNumber),Max(ReciptNumber) From Recipts '
    // +    'WHERE ReciptType = ' + qryInitQry.FieldByName('ReciptType').AsString
    );
end;

procedure UpdateFilterAllReciptTypes(qryInitQry, qry: TADOQuery;
  aParams: TParams);
begin
  with qry do
  begin
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(aParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(aParams.ParamValues['StoreID'], ftInteger);

    if Parameters.FindParam('NotStoreID') <> nil then
    begin
      Parameters.ParamByName('NotStoreID').Value :=
        GetcNot(aParams.ParamValues['StoreID']);
      // Warn2(qryInitQry.Owner.Name);
    end;

    if Parameters.FindParam('NotStoreID1') <> nil then
      Parameters.ParamByName('NotStoreID1').Value :=
        GetcNot(aParams.ParamValues['StoreID']);

    if Parameters.FindParam('NotStoreID2') <> nil then
      Parameters.ParamByName('NotStoreID2').Value :=
        GetcNot(aParams.ParamValues['StoreID']);

    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(aParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(aParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(aParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(aParams.ParamValues['ReciptDate'], ftDate);
    // if aParams.FindParam('StuffCode')<>nil then
    // begin
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(aParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(aParams.ParamValues['StuffCode'], ftLargeint);
    // end;

    if qryInitQry.FieldByName('SecondTypeActive').AsInteger = 1 then
    begin
      Parameters.ParamByName('SecondTypeCodeFrom').Value :=
        GetcFrom(aParams.ParamValues['SecondTypeCode'], ftInteger);
      Parameters.ParamByName('SecondTypeCodeTo').Value :=
        GetcTo(aParams.ParamValues['SecondTypeCode'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('SecondTypeCodeFrom').Value := 0;
      Parameters.ParamByName('SecondTypeCodeTo').Value := 9999;
    end;

    if qryInitQry.FieldByName('SellsEmporiumActive').AsInteger = 1 then
    begin
      Parameters.ParamByName('SellsEmporiumFrom').Value :=
        GetcFrom(aParams.ParamValues['SellsEmporium'], ftInteger);
      Parameters.ParamByName('SellsEmporiumTo').Value :=
        GetcTo(aParams.ParamValues['SellsEmporium'], ftInteger);

      if Parameters.FindParam('NotSellsEmporium') <> nil then
        Parameters.ParamByName('NotSellsEmporium').Value :=
          GetcNot(aParams.ParamValues['SellsEmporium']);

    end
    else
    begin
      Parameters.ParamByName('SellsEmporiumFrom').Value := 0;
      Parameters.ParamByName('SellsEmporiumTo').Value := 9999;
      if Parameters.FindParam('NotSellsEmporium') <> nil then
        Parameters.ParamByName('NotSellsEmporium').Value := '-1';

    end;

    if qryInitQry.FieldByName('SellsMethodActive').AsInteger = 1 then
    begin
      Parameters.ParamByName('SellsMethodFrom').Value :=
        GetcFrom(aParams.ParamValues['SellsMethod'], ftInteger);
      Parameters.ParamByName('SellsMethodTo').Value :=
        GetcTo(aParams.ParamValues['SellsMethod'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('SellsMethodFrom').Value := 0;
      Parameters.ParamByName('SellsMethodTo').Value := 9999;
    end;

  end;
end;

procedure FnDocTypeCode(cmbGroups, CmbDocType: TComboBox;

  var DocPostKind: SmallInt);
begin
  With TADOQuery.Create(DMf) do
  begin
    Connection := DMf.adcBSell;
    SQL.Text := 'SELECT DocTypeCode,DocPostKind FROM FormTypes';
    SQL.Add('WHERE (FormType = :FormType)');
    Parameters.ParamByName('FormType').Value :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    Open;
    CmbDocType.ItemIndex := CmbDocType.Items.IndexOfObject
      (TObject(FieldByName('DocTypeCode').AsInteger));
    DocPostKind := FieldByName('DocPostKind').AsInteger;
    Free;
  end;
end;

function showBigOnField(Sender: TObject): boolean;
var
  fld: TField;
begin
  if not opt.showBig then
  begin
    Result := False;
    Exit;
  end;
  if (Sender is TDBGrid) then
    fld := (Sender as TDBGrid).Columns[(Sender as TDBGrid).SelectedIndex].Field
  else
    fld := (Sender as TDBGrideh).Columns
      [(Sender as TDBGrideh).SelectedIndex].Field;
  Result := (fld is TCurrencyField) or (fld is TFloatField) or
    (fld is TBCDField) or (fld is TFMTBCDField)
end;

procedure showBigNumDBGrid1ColEnter(Sender: TObject;
  aBigPanel, horoofPanel: TPanel);
begin
  if not opt.showBig then
  begin
    aBigPanel.Visible := False;
    Exit;
  end;

  if aBigPanel.Visible then
  begin
    if Sender is TDBGrid then
      showBigNum((Sender as TDBGrid).Columns[(Sender as TDBGrid).SelectedIndex]
        .Field.AsFloat, aBigPanel, horoofPanel)
    else
      showBigNum((Sender as TDBGrideh).Columns[(Sender as TDBGrideh)
        .SelectedIndex].Field.AsFloat, aBigPanel, horoofPanel);

    aBigPanel.BringToFront;
  end
  else
    aBigPanel.SendToBack;
end;

procedure showBigNum(num: Real48; aBigPanel, horoofPanel: TPanel);
begin
  if not opt.showBig then
  begin
    aBigPanel.Visible := False;
    Exit;
  end;
  // aBigPanel.Caption := CurrToStrF(num, ffCurrency, 0);
  aBigPanel.Caption := num2Currency(num);
  horoofPanel.Caption := num2alphabet((num));
  aBigPanel.Width := Length(aBigPanel.Caption) * 25 +
    Length(horoofPanel.Caption) * 2;
end;

procedure OtherRptFiles(qryReciptTypes: TADOQuery;
  Key: string = 'OtherRptFiles'; KeyCaptions: string = 'OtherRptCaptions');
var
  ACaption: String;
  aReport: String;
begin
  aReport := qryReciptTypes.FieldByName(Key).AsString;
  ACaption := qryReciptTypes.FieldByName(KeyCaptions).AsString;
  addRemoveRptF.Enter(aReport, ACaption);
  if aReport <> EmptyStr then
  begin
    if not(qryReciptTypes.State in dsEditModes) then
      qryReciptTypes.Edit;
    qryReciptTypes.FieldByName(Key).AsString := aReport;
    qryReciptTypes.FieldByName(KeyCaptions).AsString := ACaption;
  end;

end;

procedure SetRequestedEntityWeight(qryInitQry, qryRecipt_Items: TADOQuery;
  DBGrid1: TDBGrid);
var
  b: boolean;
begin
  with qryInitQry do
  begin
    qryRecipt_Items.FieldByName('RequestedEntity').DisplayLabel :=
      FieldByName('Section2Caption').AsString;
    qryRecipt_Items.FieldByName('RequestedWeight').DisplayLabel :=
      FieldByName('Section2CaptionWeight').AsString;
    b := FieldByName('Section2Visible').AsInteger in [0, 1];
    setColumns2(DBGrid1, b, 'RequestedEntity');
    b := FieldByName('Section2Visible').AsInteger in [1, 3];
    setColumns2(DBGrid1, b, 'RequestedWeight');
  end;
end;

function GetTableFieldNames(ADC: TADOConnection; SchemaName: string;
  TableName: String): String;
var
  f: TStringList;
  i: Integer;
begin
  Result := '';
  f := TStringList.Create;
  With TADOQuery.Create(DMf) do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT top 1 * FROM ' + SchemaName + TableName;
      GetFieldNames(f);
    finally
      Free;
    end;
  for i := 0 to f.Count - 1 do
    if LowerCase(f[i]) <> 'rowguid' then
      Result := Result + TableName + '.' + f[i] + ',';
  f.Free;
  Result := LeftStr(Result, Length(Result) - 1);
end;

function GetUsersStore(SQLTxt: String): String;
begin
  if User.PowerUser then
  begin
    Result := SQLTxt;
    Exit;
  end;
  Result := StringReplace(SQLTxt, 'WHERE ',
    'WHERE StoreID IN (SELECT n_StoreID FROM dbo.GetUsersStore(%d) ) AND ',
    [rfReplaceAll]);
  Result := Format(Result, [User.ID]);
end;

procedure SetUserQualitativeOnPrint(aReport: TppReport);
begin
  if not mdiMainF.MainFrame.GetActiveIndex in [2, 3, 14] then
    Exit;
  if not UserQualitative then
    SearchObjectReport(aReport);

end;

procedure SearchObjectReport(aReport: TppCustomReport);
var
  liBand: Integer;
  liObject: Integer;
  lObject: TppComponent;
  ID: Integer;
  myDBText: TppDBText;
  myField: TField;
  Data_Field: string;
begin
  for liBand := 0 to aReport.BandCount - 1 do
    for liObject := 0 to aReport.Bands[liBand].ObjectCount - 1 do
    begin
      lObject := aReport.Bands[liBand].Objects[liObject];

      // if the object is a subreport make a recursive call to this routine.
      if (lObject is TppSubreport) then
        SearchObjectReport(TppSubreport(lObject).Report);

      if (lObject is TppDBText) then
      begin
        myDBText := TppDBText(lObject);
        Data_Field := myDBText.DataField;
        if UserQualitativeOnF(Data_Field)
        { (Pos('price', LowerCase(Data_Field)) <> 0) } then
          myDBText.Visible := False;

        if Data_Field <> EmptyStr then
        begin
          ID := myDBText.DataPipeline.FindField(Data_Field);
          if (myDBText.DataPipeline.GetDataSetName <> EmptyStr) and (ID > -1)
          then
            myField := TField(myDBText.DataPipeline.Fields[ID])
          else
            Continue;

          if (myField is TBCDField) or (myField is TCurrencyField) then
            if TBCDField(myField).Currency then
              myDBText.Visible := False;
        end;
      end;

    end;

end;

function ChkServerID(adcSrc: TADOConnection;
  actMove, actMoveBaseInfo: TAction): Integer;
var
  b: boolean;
begin
  With TADOQuery.Create(DMf) do
  begin
    Connection := adcSrc;
    SQL.Text := 'SELECT ServerID FROM Config';
    Open;
    Result := FieldByName('ServerID').AsInteger;
    b := opt.ServerID <> Result;
    // actMove.Enabled := opt.ServerID <> Result;
    // actMoveBaseInfo.Enabled := actMove.Enabled;
    if not b then
    begin
      Warn('امكان فراخواني از اين بانك به علت يكي بودن شماره سرور وجود ندارد' +
        #13#10 + #13#10 +
        'در صورتی که از اینکار مطمئن هستید انجام دهید کنترل اطلاعات تکراری بررسی شود.');
    end;
    Free;
  end;

end;

procedure StandardRateActiveRecipts(qryinit, qryItems: TADOQuery);
var
  c: Currency;
begin
  if qryinit.FieldByName('StandardRateActive').AsInteger >= 1 then
  begin
    c := RoundTo(qryItems.FieldByName('TotalStandardRate').AsCurrency *
      qryinit.FieldByName('VATCo').AsInteger / 100, 0);
    if c <> qryItems.FieldByName('__Tax').AsCurrency then
      qryItems.FieldByName('__Tax').AsCurrency := c;
    c := qryItems.FieldByName('TotalStandardRate').AsCurrency +
      qryItems.FieldByName('__Tax').AsCurrency;
    if c <> qryItems.FieldByName('_TotalStandardRate').AsCurrency then
      qryItems.FieldByName('_TotalStandardRate').AsCurrency := c;
  end;
end;

procedure StandardRateActiveReciptsGrid(qryinit, qryItems: TADOQuery);
var
  c: Currency;
begin
  if qryinit.FieldByName('StandardRateActive').AsInteger >= 1 then
  begin
    c := qryItems.FieldByName('StandardRate').AsCurrency *
      (qryItems.FieldByName('InputEntity').AsFloat + qryItems.FieldByName
      ('OutputEntity').AsFloat);
    if c <> qryItems.FieldByName('TotalStandardRate').AsCurrency then
      qryItems.FieldByName('TotalStandardRate').AsCurrency := c;
  end;
end;

procedure StandardRateActiveUnitSellPriceChange(qryinit, qryItems: TADOQuery;

  var LimitFi: Currency; EntityDisplayType: Byte);
var
  Total, Weight, Entity, StandardRate: Currency;
  Field_Name: String;
begin
  if qryinit.FieldByName('StandardRateActive').AsInteger = 2 then
  begin
    Field_Name := 'InputEntity';
    if qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8] then
      Field_Name := 'OutputEntity';
    qryItems.FieldByName('StandardRate').AsCurrency :=
    // RoundTo(
      qryItems.FieldByName('UnitSellPrice').AsFloat /
      (100 + qryinit.FieldByName('VATCo').AsInteger) * 100; // ,0);
    // if qryinit.FieldByName('StandardRateActive').AsInteger>=1 then
    Weight := qryItems.FieldByName('InputWeight').AsCurrency +
      qryItems.FieldByName('OutputWeight').AsCurrency;
    Weight := RoundTo(Weight, opt.RoundEntity);
    Entity := qryItems.FieldByName(Field_Name).AsCurrency;
    StandardRate := qryItems.FieldByName('StandardRate').AsCurrency;
    Total := 0;
    LimitFi := GetLimitFi(qryItems);
    case EntityDisplayType of
      0:
        Total := Entity * StandardRate;
      1:
        Total := Weight * StandardRate;
      2:
        if StandardRate >= LimitFi then
          Total := Weight * StandardRate
        else
          Total := Entity * StandardRate;
      3:
        if StandardRate >= LimitFi then
          Total := Entity * StandardRate
        else
          Total := Weight * StandardRate;
    end; // case
    qryItems.FieldByName('TotalStandardRate').AsCurrency := RoundTo(Total, 0);
    // qryItems.FieldByName('__Tax').AsCurrency:=RoundTo(Total*qryinit.FieldByName('VATCo').AsFloat/100,0);
  end; // Standard_Rate_Active

end;

function Check4OkDelete_Deficits(Caption: String;
  qryDef, qryRecipt: TADOQuery): boolean;
begin
  Result := True;
  with TADOQuery.Create(DMf) do
    try
      Connection := DMf.adcBSell;
      Close;
      SQL.Text := 'SELECT ReciptDeficitID FROM ReciptsDeficits';
      SQL.Add('WHERE (ReciptID = :ReciptID) ');
      SQL.Add('AND (ServerID = :ServerID) AND (YearID = :YearID)');
      Parameters.ParamByName('ReciptID').Value :=
        qryRecipt.FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryRecipt.FieldByName('YearID')
        .AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryRecipt.FieldByName('ServerID').AsInteger;
      Open;
      if RecordCount > 0 then
        if get_response('اين ' + Caption +
          ' داراي  كسورات/اضافات است آيا آنها نيز حذف شوند؟') <> mrYes then
        begin
          Result := False;
          Exit;
        end;

      SQL.Text := StringReplace(SQL.Text, 'SELECT ReciptDeficitID',
        'DELETE', []);
      ExecSQL;
      // while not eof do
      // Delete;
    finally
      Free;
    end;

  if get_response('آيا براي حذف اين ' + Caption +
    ' و كليهء كالاهاي آن مطمئن هستيد؟') <> mrYes then
    Result := False;
end;

function Price_Read_Only(qryinit, qry: TADOQuery): boolean;
begin
  Result := False;
  if qry.State in [dsInsert] then
    Exit;
  if qryinit.FieldByName('PriceReadOnly').AsInteger <> 2 then
    Exit;
  if qry.FieldByName('TotalInputPrice').AsCurrency +
    qry.FieldByName('TotalOutputPrice').AsCurrency <> 0 then
  begin
    Warn('مبلغ صفر فقط قابل تائيد مي باشد.‏');
    Result := True;
  end;
end;

procedure InsertNote(popNote: TPopupMenu; ClickNote: TNotifyEvent);
begin
  popNote.Items.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT LookUps.Name';
    SQL.Add('FROM LookUps INNER JOIN');
    SQL.Add('LookUps AS LookUps_1 ON LookUps.Kind = LookUps_1.LookUpID');
    SQL.Add('WHERE (LookUps_1.Code = 353)');
    // SQL.Text:='SELECT Name FROM LookUps';
    // SQL.Add  ('WHERE Kind = 353');
    Active := True;
    while not Eof do
    begin
      popNote.Items.Add(NewItem(Fields[0].AsString, TextToShortCut(''), False,
        True, ClickNote, 0, 'items' + IntToStr(RecNo)));
      Next;
    end; // while
    popNote.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
    Active := False;
  end;
  // with
end;

function UserQualitativeOnF(FName: String): boolean;
begin
  FName := UpperCase(FName);
  Result := (FName = 'WATERCO') OR (FName = 'UNITCOMMISSION') OR
    (FName = 'TAXCO') OR (Pos('PRICE', FName) <> 0) OR
    (Pos('TOTALDEFICIENT', FName) <> 0) OR (Pos('TAXVALUE', FName) <> 0) OR
    (Pos('ADD_DEC', FName) <> 0) OR (Pos('UNITSELLDEFICIENT', FName) <> 0);
  // UNITSELL

end;

procedure SetUserQualitativeOnForms(MyForm: TForm);
var
  i, j, k, DBgridColumnsCount: Integer;
  aDBgrid: TDBGrid;
  sDBgrid: TSumGrid;
  cDBgrid: TCedarDbgrid;
  edt: TDBEdit;
  ppedt: TppDBText;
  aField: TNumericField;
  ST: TStringList;
begin
  ST := TStringList.Create;
  if mdiMainF.MainFrame = nil then
    Exit;

  if mdiMainF.MainFrame.GetActiveIndex = 13 then
    UserQualitative := False;
  // mainF.Menu = mainF.Mnu1Sell) or
  if ((mainF.Menu = mainF.Mnu2Store) or (mainF.Menu = mainF.Mnu13Store) or
    (mainF.Menu = mainF.Mnu1Sell)) then
    if not UserQualitative then
      for i := 0 to MyForm.ComponentCount - 1 do
      begin
        if (MyForm.Components[i] is TDBGrid) then
        begin
          aDBgrid := TDBGrid(MyForm.Components[i]);
          DBgridColumnsCount := aDBgrid.Columns.Count - 1;

          for j := 0 to DBgridColumnsCount do
            if (aDBgrid.Columns[j].Field is TBCDField) or
              (aDBgrid.Columns[j].Field is TCurrencyField) OR
              (UserQualitativeOnF(aDBgrid.Columns[j].FieldName)) then
              if TBCDField(aDBgrid.Columns[j].Field).Currency OR
                (UserQualitativeOnF(aDBgrid.Columns[j].FieldName)) then
              begin
                // aDBgrid.DataSource.Dataset.FieldByName(aDBgrid.Columns[j].FieldName).Visible := False;
                // enteghal b for zir
                ST.Add(aDBgrid.Columns[j].FieldName + '&&');
                // aDBgrid.Columns[j].Visible := False;
                setColumns2(aDBgrid, False, aDBgrid.Columns[j].FieldName);
              end;

          for j := 0 to aDBgrid.DataSource.Dataset.FieldCount - 1 do
            if ST.Find(aDBgrid.DataSource.Dataset.Fields[j].FieldName + '&&', k)
            then
              aDBgrid.DataSource.Dataset.Fields[j].Visible := False;
          ST.Clear;
          Continue;
        end; // if dbgride
        if (MyForm.Components[i] is TSumGrid) then
        begin
          sDBgrid := TSumGrid(MyForm.Components[i]);
          for j := 0 to sDBgrid.Columns.Count - 1 do
            if (sDBgrid.Columns[j].Field is TBCDField) or
              (sDBgrid.Columns[j].Field is TCurrencyField) OR
              (UserQualitativeOnF(sDBgrid.Columns[j].FieldName)) then
              if TBCDField(sDBgrid.Columns[j].Field).Currency OR
                (UserQualitativeOnF(sDBgrid.Columns[j].FieldName)) then
              begin
                // if sDBgrid.DataSource.Dataset.FindField
                // (sDBgrid.Columns[j].FieldName) <> nil then
                // sDBgrid.DataSource.Dataset.FieldByName
                // (sDBgrid.Columns[j].FieldName).Visible := False;
                // sDBgrid.Columns[j].Visible := False;
                setColumns2(TDBGrid(sDBgrid), False,
                  sDBgrid.Columns[j].FieldName);

              end;

          // ST := TStringList.Create;
          with ST Do
            try
              Text := LowerCase(StringReplace(sDBgrid.FieldsName, ';', #13#10,
                [rfReplaceAll]));
              for k := 0 to Count - 1 do
                if (Pos('bed', ST[k]) > 0) or (Pos('bes', ST[k]) > 0) or
                  (Pos('balance', ST[k]) > 0) or (Pos('price', ST[k]) > 0) or
                  (Pos('value', ST[k]) > 0) then
                  ST[k] := EmptyStr;
              sDBgrid.FieldsName := EmptyStr;
              for k := 0 to Count - 1 do
                if ST[k] <> EmptyStr then
                  sDBgrid.FieldsName := sDBgrid.FieldsName + ST[k] + ';';
              sDBgrid.Visible := sDBgrid.FieldsName <> EmptyStr
            finally

            end;

          // sDBgrid.Visible := False;
          Continue;
        end; // if dbgride

        if (MyForm.Components[i] is TCedarDbgrid) then
        begin
          cDBgrid := TCedarDbgrid(MyForm.Components[i]);
          DBgridColumnsCount := cDBgrid.Columns.Count - 1;

          for j := 0 to DBgridColumnsCount do
            if (cDBgrid.Columns[j].Field is TBCDField) or
              (cDBgrid.Columns[j].Field is TCurrencyField) OR
              (UserQualitativeOnF(cDBgrid.Columns[j].FieldName)) then
              if TBCDField(cDBgrid.Columns[j].Field).Currency OR
                (UserQualitativeOnF(cDBgrid.Columns[j].FieldName)) then
              begin
                // cDBgrid.DataSource.Dataset.FieldByName(cDBgrid.Columns[j].FieldName).Visible := False;
                // enteghal b for zir
                ST.Add(cDBgrid.Columns[j].FieldName + '&&');
                // cDBgrid.Columns[j].Visible := False;
                setColumns2(cDBgrid, False, cDBgrid.Columns[j].FieldName);

              end;

          for j := 0 to cDBgrid.DataSource.Dataset.FieldCount - 1 do
            if ST.Find(cDBgrid.DataSource.Dataset.Fields[j].FieldName + '&&', k)
            then
              cDBgrid.DataSource.Dataset.Fields[j].Visible := False;
          ST.Clear;
          Continue;
        end; // if dbgride

        if (MyForm.Components[i] is TDBEdit) then
        begin
          edt := TDBEdit(MyForm.Components[i]);
          if ((edt.DataSource.Dataset.FindField(edt.DataField) <> nil) and
            (edt.DataSource.Dataset.FieldByName(edt.DataField) is TBCDField) and
            TBCDField(edt.DataSource.Dataset.FieldByName(edt.DataField))
            .Currency) OR (UserQualitativeOnF(edt.DataField)) then
            edt.Visible := False;
          Continue;
        end;
        // if dbgride

        if (MyForm.Components[i] is TppDBText) or
          (MyForm.Components[i] is TppDBCalc) then
        begin
          ppedt := TppDBText(MyForm.Components[i]);
          aField := TNumericField(MyForm.FindComponent(ppedt.DataField));
          if (aField is TBCDField) or (aField is TCurrencyField) OR
            (UserQualitativeOnF(ppedt.DataField)) then
            ppedt.Visible := False;
          Continue;
        end;

      end;
  ST.Free;
end;

procedure FunctionsAmountCaptions(ds: TDataSet; TabID: SmallInt);
var
  ts: TStrings;
  Captions: string;
begin
  Captions := Trim(DMf.ReadBankConfig('FunctionsAmountCaptions', ''));
  if Trim(Captions) = EmptyStr then
    Exit;
  ts := TStringList.Create;
  ts.Text := Captions;
  ds.FieldByName('Amount1').DisplayLabel :=
    ts.Values[FunctionInfoType[TabID] + '1'];
  ds.FieldByName('Amount2').DisplayLabel :=
    ts.Values[FunctionInfoType[TabID] + '2'];
  ds.FieldByName('Amount3').DisplayLabel :=
    ts.Values[FunctionInfoType[TabID] + '3'];
  ts.Free;
end;

procedure AccChangeNames(MyForm: TForm);
var
  i: Integer;
  alabel: TLabel;
  ts: TStrings;
  aStringField: TStringField;
begin
  if Trim(optA.AccChangeNames) = EmptyStr then
    Exit;
  ts := TStringList.Create;
  ts.Text := Trim(optA.AccChangeNames);
  with MyForm do
    try
      for i := 0 to MyForm.ComponentCount - 1 do
      begin
        if Components[i] is TLabel then
        begin
          alabel := TLabel(Components[i]);
          if Pos('حساب', LowerCase(alabel.Caption)) <> 0 then
          begin
            alabel.Caption := StringReplace(alabel.Caption, 'حساب', ts[0], []);
            Continue;
          end;
          if Pos('تفصيلي', LowerCase(alabel.Caption)) <> 0 then
          begin
            alabel.Caption := StringReplace(alabel.Caption, 'تفصيلي',
              ts[1], []);
            Continue;
          end;
          if Pos('تفصیلی 1', LowerCase(alabel.Caption)) <> 0 then
          begin
            alabel.Caption := StringReplace(alabel.Caption, 'تفصیلی 1',
              ts[2], []);
            Continue;
          end;
          if Pos('مركزهزينه2', LowerCase(alabel.Caption)) <> 0 then
          begin
            alabel.Caption := StringReplace(alabel.Caption, 'مركزهزينه2',
              ts[3], []);
            Continue;
          end;
        end; // if
        if Components[i] is TStringField then
        begin
          aStringField := TStringField(Components[i]);
          if Pos('حساب', LowerCase(aStringField.DisplayLabel)) <> 0 then
          begin
            aStringField.DisplayLabel :=
              StringReplace(aStringField.DisplayLabel, 'حساب', ts[0], []);
            Continue;
          end;
          if Pos('تفصيلي', LowerCase(aStringField.DisplayLabel)) <> 0 then
          begin
            aStringField.DisplayLabel :=
              StringReplace(aStringField.DisplayLabel, 'تفصيلي', ts[1], []);
            Continue;
          end;
          if Pos('تفصیلی 1', LowerCase(aStringField.DisplayLabel)) <> 0 then
          begin
            aStringField.DisplayLabel :=
              StringReplace(aStringField.DisplayLabel, 'تفصیلی 1', ts[2], []);
            Continue;
          end;
          if Pos('مركزهزينه2', LowerCase(aStringField.DisplayLabel)) <> 0 then
          begin
            aStringField.DisplayLabel :=
              StringReplace(aStringField.DisplayLabel, 'مركزهزينه2', ts[3], []);
            Continue;
          end;
        end; // if
      end; // for
      ts.Free;
    except
      on E: Exception do
      begin
        add2log(E.Message);
        Warn('اشكال در عنوان بجاي حساب# تفصيلي# تفصیلی 1...‏‌' + #13#10 +
          E.Message);
      end;
    end;

end;

// procedure InsertPersonID1;
// var
// qry:TADOQuery;
// begin
// Exit;
// qry.Name:=EmptyStr;
// If Assigned(ReciptsGridF) then  if ReciptsGridF.qryRecipts<>nil then qry:=ReciptsGridF.qryRecipts;
// If Assigned(ReciptsF) then    if ReciptsF.qryRecipts<>nil then  qry:=ReciptsF.qryRecipts;
// if (qry.Name=EmptyStr)or(not Assigned(qry)) then Exit;
//
// if dsDetail<>nil then
// begin
// end;
// end;

function checkSecondaryDocNo(SecondaryDocNo, CompanyCode: Integer;
  NewDoc: boolean): boolean;
begin
  Result := True;
  if not NewDoc then
    Exit;
  if optA.AccOldAvailable then
    Exit;
  with DMf.qry_Temp do
  begin
    Close;
    SQL.Text := 'SELECT count(SecondaryDocNo) FROM  ACC.DocGroups ';
    SQL.Add('WHERE SecondaryDocNo = %d AND CompanyCode = %d AND YearID = %d ');
    SQL.Add('GROUP BY SecondaryDocNo');
    SQL.Text := Format(SQL.Text, [SecondaryDocNo, CompanyCode, APPBank.Year]);
    Open;
    Result := IsEmpty;
    if not Result then
      Warn('شماره فرعي تكراري است.');
  end;
end;

procedure CustIDToDetailCode(qryCustomers: TADOQuery; GroupType: Integer);
var
  rid, Cust_DetailCode, i: Integer;
  s1CodeEqual, s2CodeEqual: string;
  qryRange: TADOQuery;
  procedure AddOther(FieldName: string);
  begin
    with TADOQuery.Create(DMf) do
      try
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT ' + FieldName;
        SQL.Add('FROM CustomersGroup INNER JOIN');
        SQL.Add('Customers ON CustomersGroup.CustomerGrpID = Customers.CustomerGrpID');
        SQL.Add('WHERE (Customers.CustID = :CustID )');
        Parameters[0].Value := qryCustomers.FieldByName('CustID').AsInteger;
        Active := True;
        if (Fields[0].AsLargeInt > 0) then
        begin
          qryRange.Open;
          qryRange.Insert;
          qryRange.FieldByName('TopicCode').AsLargeInt := Fields[0].AsLargeInt;
          qryRange.FieldByName('DetailCode').AsInteger := Cust_DetailCode;
          if not optA.AccOldAvailable then
            qryRange.FieldByName('CompanyCode').AsInteger :=
              optA.AccDefaultCompany;
          qryRange.Post;
          qryRange.Close;
        end;
      finally
        Free;
      end;
  end;

begin
  if opt.AccDetailCodeEqualCustID in [0, 4] then
    Exit;
  Cust_DetailCode := qryCustomers.FieldByName('acc_DetailCode').AsInteger;
  s1CodeEqual := ',' + IntToStr(GroupType) + ',';
  s2CodeEqual := ',' + opt.CustAccDetailCodeEqualCustID + ',';
  if Pos(s1CodeEqual, s2CodeEqual) = 0 then
    Exit;

  if not((Cust_DetailCode <> 0) and (qryCustomers.FieldByName('__DetailCode')
    .IsNull)) then
    Exit;

  if (opt.AccDetailCodeEqualCustID = 1) or (opt.AccDetailCodeEqualCustID = 0)
  then
    if get_response('كد تفصيلي در سيستم حسابداري وجود ندارد،ايجاد شود؟') <> mrYes
    then
      Exit;
  with DMf.qryAccDetailCode do
  begin
    Close;
    s1CodeEqual := SQL.Text;
    LockType := ltOptimistic;
    if not optA.AccOldAvailable then
    begin
      SQL.Text := 'SELECT DetailCode,DetailName_L1 AS DetailName,';
      SQL.Add('DetailName_L2,CompanyCode,UseKindInCo,MakeDate FROM acc.Details');
    end;
    Open;
    for i := 0 to Fields.Count - 1 do
      Fields[i].ReadOnly := False;

    Insert;
    FieldByName('DetailCode').AsInteger := Cust_DetailCode;
    if optA.AccOldAvailable then
      FieldByName('Desc').AsString :=
        Trim(qryCustomers.FieldByName('CustFirstName').AsString + ' ' +
        qryCustomers.FieldByName('CustName').AsString)
    else
      FieldByName('DetailName').AsString :=
        Trim(qryCustomers.FieldByName('CustFirstName').AsString + ' ' +
        qryCustomers.FieldByName('CustName').AsString);
    if not optA.AccOldAvailable then
    begin
      FieldByName('CompanyCode').AsInteger := optA.AccDefaultCompany;
      FieldByName('UseKindInCo').AsInteger := 0;
      FieldByName('MakeDate').AsDateTime := now;
    end; // if
    Post;
    Close;

    qryRange := TADOQuery.Create(DMf);
    with qryRange do
      try
        Connection := DMf.qryAccDetailCode.Connection;
        SQL.Text := 'SELECT Top 0 TopicCode, DetailCode, CompanyCode';
        SQL.Add('FROM Acc.DetailRange');
        AddOther('Customers.acc_TopicCode');
        AddOther('CustomersGroup.acc_TopicCode');
        AddOther('CustomersGroup.acc_ChecksTopicCode');
        AddOther('CustomersGroup.acc_ReChecksTopicCode');
        AddOther('CustomersGroup.acc_CertifyTopicCode');
      finally
        Free;
      end;

    SQL.Text := s1CodeEqual;
    LockType := ltReadOnly;
    DMf.qryAccDetailCode.Open;
    DMf.qryAccDetailCode.Requery();
    rid := qryCustomers.FieldByName('CustID').AsInteger;
    qryCustomers.Close;
    qryCustomers.Open;
    qryCustomers.Locate('CustID', rid, []);
  end; // with

end;

procedure UseUnitsToCenterTopic(qryUseUnits: TADOQuery);
var
  UseUnitID, LevelID: Integer;
  qry: TADOQuery;
  b: boolean;
begin
  if opt.AccCenterTopicEqualUseUnitID = 0 then
    Exit;
  UseUnitID := qryUseUnits.FieldByName('UseUnitID').AsInteger;

  if UseUnitID = 0 then
    Exit;

  qry := TADOQuery.Create(DMf);
  with qry do
    try
      Connection := DMf.qryAccDetailCode.Connection;
      case opt.AccCenterTopicEqualUseUnitID of
        1:
          LevelID := 61;
        2:
          LevelID := 62;
        3:
          LevelID := 71;
      else
        LevelID := 72;
      end;

      case opt.AccCenterTopicEqualUseUnitID of
        1, 2:
          begin
            SQL.Text := 'SELECT CTopicCode, CTopicName_L1, LevelID, MakeDate';
            SQL.Add('FROM Acc.CenterTopics');
            SQL.Add('WHERE (CTopicCode = :UseUnitID )');

          end;
        3, 4:
          begin
            SQL.Text := 'SELECT CTopicCode2, CTopicName2_L1, LevelID, MakeDate';
            SQL.Add('FROM Acc.CenterTopics2');
            SQL.Add('WHERE (CTopicCode2 = :UseUnitID )');
          end;
        5:
          begin
            SQL.Text := 'SELECT CTopicCode3, CTopicName3_L1, MakeDate';
            SQL.Add('FROM Acc.CTopicCode3');
            SQL.Add('WHERE (CTopicCode3 = :UseUnitID )');

          end;
      end;
      Parameters.ParamByName('UseUnitID').Value := UseUnitID;
      Open;

      if RecordCount = 0 then
        b := get_response
          ('كد مرکز هزینه در سيستم حسابداري وجود ندارد،ايجاد شود؟') = mrYes
      else
        b := get_response
          ('كد مرکز هزینه در سيستم حسابداري ویرایش شود؟') = mrYes;

      if b then
      begin
        Edit;
        Fields[0].AsInteger := UseUnitID;
        Fields[1].AsString := qryUseUnits.FieldByName('UseUnitName').AsString;
        if FindField('LevelID') <> nil then
          FieldByName('LevelID').AsInteger := LevelID;
        FieldByName('MakeDate').AsDateTime := now;
        Post;

      end;
      Close;
    finally
      Free;
    end;
end;

procedure CustIDToPhonBookII(qryCustomers: TADOQuery; DBMemo2: TDBMemo);
var
  // rid:Integer;
  s1, s2: String;
begin
  if opt.PhonBookIIPath = EmptyStr then
    Exit;
  if not FileExists(opt.PhonBookIIPath) then
  begin
    Warn('فايل ' + opt.PhonBookIIPath + ' يافت نشد.', mtInformation);
    Exit;
  end;
  s1 := LowerCase(opt.PhonBookIIPath);
  s2 := StringReplace(s1, '.dat', StringReplace(var_glb_CurrentDate, '/', '_',
    [rfReplaceAll]) + 'Bsell.Bak', []);
  if not CopyFile(PChar(s1), PChar(s2), False) then
    raise Exception.Create('اشكال در كپي پشتيبان');

  with TADOQuery.Create(DMf) do
    try
      ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
        opt.PhonBookIIPath + ';Persist Security Info=False';
      ConnectionString := ConnectionString +
        ';Jet OLEDB:Database Password=tycedar';
      SQL.Text := 'SELECT * FROM Personals';
      Active := True;
      if (qryCustomers.FieldByName('Tel').AsString <> EmptyStr) and
        (not Locate('tel1', qryCustomers.FieldByName('Tel').AsString, [])) then
      begin
        Insert;
        FieldByName('name').AsString :=
          Trim(qryCustomers.FieldByName('CustFirstName').AsString + ' ' +
          qryCustomers.FieldByName('CustName').AsString);
        FieldByName('tel1').AsString := qryCustomers.FieldByName('Tel')
          .AsString;
        FieldByName('tel2').AsString := qryCustomers.FieldByName
          ('Tel2').AsString;
        FieldByName('tel3').AsString := qryCustomers.FieldByName
          ('Tel3').AsString;
        FieldByName('tel4').AsString := qryCustomers.FieldByName('Fax')
          .AsString;

        FieldByName('address').AsString := qryCustomers.FieldByName('Address')
          .AsString + IfThen(qryCustomers.FieldByName('Mobile').AsString <>
          EmptyStr, #13#10 + 'Mobile:' + qryCustomers.FieldByName('Mobile')
          .AsString, '');
        Post;
        Active := False;
        ConnectionString := EmptyStr;
        BigMessage('در دفترچه تلفن اضافه شد', 1);
      end;
    finally
      Free;
    end;
end;

procedure SetDefaultSellsMethodEmporium(qry: TADOQuery;
  dblkcbb_SellsEmporium, dblkcbb_SellsMethod: TDBLookupComboBox);
var
  ChangeSellsMethod, ChangeSellsEmporium: TFieldNotifyEvent;
  SellsEmporium, SellsMethod: Int32;
  formType: string;
begin
  ChangeSellsMethod := qry.FieldByName('SellsMethod').OnChange;
  ChangeSellsEmporium := qry.FieldByName('SellsEmporium').OnChange;
  try
    qry.FieldByName('SellsMethod').OnChange := nil;
    qry.FieldByName('SellsEmporium').OnChange := nil;
    if dblkcbb_SellsEmporium = nil then
    begin
      qry.FieldByName('SellsEmporium').AsInteger := 1;
      qry.FieldByName('SellsMethod').AsInteger := 1;
      Exit;
    end;
    qry.FieldByName('SellsMethod').AsInteger := dblkcbb_SellsMethod.Tag;

    if qry.FindField('formType') <> nil then
      formType := qry.FieldByName('formType').AsString
    else
      formType := qry.FieldByName('ReciptType').AsString;

    SellsEmporium :=
      StrToInt(ReadConfig(APPID, APPBank.Name + '_ReciptsGridF_SellsEmporium' +
      formType, dblkcbb_SellsEmporium.Tag.ToString));
    if SellsEmporium <> 0 then
      qry.FieldByName('SellsEmporium').AsInteger := SellsEmporium
    else
      qry.FieldByName('SellsEmporium').AsInteger := dblkcbb_SellsEmporium.Tag;

    SellsMethod := StrToInt(ReadConfig(APPID,
      APPBank.Name + '_ReciptsGridF_SellsMethod' + formType,
      dblkcbb_SellsMethod.Tag.ToString));
    if SellsMethod <> 0 then
      qry.FieldByName('SellsMethod').AsInteger := SellsMethod
    else
      qry.FieldByName('SellsMethod').AsInteger := dblkcbb_SellsMethod.Tag;

  finally
    qry.FieldByName('SellsMethod').OnChange := ChangeSellsMethod;
    qry.FieldByName('SellsEmporium').OnChange := ChangeSellsEmporium;
  end;
end;

function GetFormNumber(formName: String; qryinit: TADOQuery;
  Dataset: TDataSet): Integer;
var
  txt: String;
begin
  txt := 'SELECT MAX(FormNumber) FROM Forms ';

  if qryinit.FieldByName('NextFormType').AsInteger >= 1 then
    txt := 'SELECT    max( case when FormType= ' +
      IntToStr(qryinit.FieldByName('FormType').AsInteger) +
      ' then FormNumber else AidInfoNo end ) FROM  Forms '

      + 'WHERE(FormType in ( ' + IntToStr(qryinit.FieldByName('NextFormType')
      .AsInteger) + ',' + IntToStr(qryinit.FieldByName('FormType')
      .AsInteger) + '))'
  else
    txt := txt + 'WHERE(FormType=' + IntToStr(qryinit.FieldByName('FormType')
      .AsInteger) + ')';
  txt := txt + ' AND ( YearID = ' + IntToStr(APPBank.Year) + ')AND ServerID = '
    + IntToStr(opt.ServerID);
  if qryinit.FieldByName('RestartFormNumberOnCust1').AsInteger = 1 then
    txt := txt + ' AND(CustomerID1 = ' +
      IntToStr(Dataset.FieldByName('CustomerID1').AsInteger) + ')';

  if qryinit.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 1 then
    txt := txt + ' AND(SellsEmporium = ' +
      IntToStr(Dataset.FieldByName('SellsEmporium').AsInteger) + ')';

  if qryinit.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 2 then
    txt := txt + ' AND(PayTypes = ' + IntToStr(Dataset.FieldByName('PayTypes')
      .AsInteger) + ')';

  Result := GetANewCode(formName, txt, 'FormNumber', DMf.adcBSell);

  if Result = 1 then
    Result := qryinit.FieldByName('SerialNoFrom').AsInteger;
  if (Dataset is TADOQuery) and (TADOQuery(Dataset).LockType <> ltReadOnly) then
    Dataset.FieldByName('FormNumber').AsInteger := Result;

end;

function AddMaster(CmbDocType, cmbCompany: TComboBox;
  MskSerial, MskDocNo, MskDocTopic, mskDocDate: TMaskEdit;
  MskSerialExit: TNotifyEvent; qryDocGroups: TADOQuery; NewDoc: boolean;
  formName: string; YearID: Integer): Integer;
begin
  try
    MskSerialExit(MskSerial);
    with qryDocGroups do
    begin
      Active := True;
      if NewDoc then
      begin
        Insert;
        FieldByName('SecondaryDocNo').AsInteger :=
          StrToInt(Trim(MskDocNo.Text));
        if optA.AccOldAvailable then
        begin
          FieldByName('DocTopic').AsString := MskDocTopic.Text;
          Result := FieldByName('SecondaryDocNo').AsInteger;
          FieldByName('CompanyDocNo').AsInteger := FieldByName('SecondaryDocNo')
            .AsInteger;
        end
        else
        begin
          FieldByName('Serial').AsInteger := StrToInt(Trim(MskSerial.Text));
          FieldByName('YearID').AsInteger := YearID;
          FieldByName('DocTopic_L1').AsString := MskDocTopic.Text;
          FieldByName('MakeDate').AsDateTime := now;
          FieldByName('UserID').AsInteger := User.ID;
          FieldByName('DocNote_L1').AsString := 'ثبت سند توسط ' +
            Application.MainForm.Caption;
          if FindField('SourceDataBase') <> nil then

            FieldByName('SourceDataBase').AsString :=
              IfThen(optSub.Subsys[18] = '1', 'dbo.', APPBank.Name + '.dbo.')
              + formName;

          Result := FieldByName('Serial').AsInteger;
        end;
        FieldByName('Status').AsInteger := opt.DocStatusDefault;
        FieldByName('PrimaryDocNo').AsInteger := 0;
        FieldByName('DocDate').AsString := mskDocDate.Text;
        FieldByName('DocTypeCode').AsInteger :=
          Integer(CmbDocType.Items.Objects[CmbDocType.ItemIndex]);
        FieldByName('FirstUser').AsString := User.Name;
        // Warn(IntToStr(integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])));
        FieldByName('CompanyCode').AsInteger :=
          Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);

        if FindField('SourceKey') <> nil then
          FieldByName('SourceKey').AsString := 'Serial = ' +
            Trim(FieldByName('Serial').AsString) + ' and CompanyCode = ' +
            Trim(FieldByName('CompanyCode').AsString) + ' and YearID = ' +
            Trim(YearID.ToString)
      end
      else
      begin
        Active := False;
        SQL.Text := 'SELECT * FROM Acc.DocGroups ';
        SQL.Add('WHERE (Serial = :Serial) AND (CompanyCode = :CompanyCode)');
        SQL.Add(' AND (YearID = :YearID)');
        Parameters.ParamByName('Serial').Value :=
          StrToInt(Trim(MskSerial.Text));
        Parameters.ParamByName('CompanyCode').Value :=
          Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
        Parameters.ParamByName('YearID').Value := YearID;
        Active := True;
        Result := StrToInt(Trim(MskSerial.Text));
        Edit;
        FieldByName('DocNote_L1').AsString := FieldByName('DocNote_L1').AsString
          + ' ثبت سند توسط  ' + Application.MainForm.Caption;
      end; // if
      Post;
    end; // with

  except
    on E: Exception do
    begin
      // if MakeDocumentPostF = nil then
      begin
        if DMf.adcBSell.InTransaction then
          DMf.adcBSell.RollbackTrans;
        if DMf.adcAccounting.InTransaction then
          DMf.adcAccounting.RollbackTrans;
      end;
      Warn2(E.Message);
    end;
  end;

end;

procedure FreeMyComponent(f: TForm; a: array of string);
var
  i: Integer;
begin
  with f do
  begin
    for i := 0 to High(a) do
      if FindComponent(a[i]) <> nil then
        FindComponent(a[i]).Free;
  end;
end;

procedure initCofferAddField(qryinit, qryForms: TADOQuery;
  pnlSells, pnlSellsEmporium, pnlSellsMethod: TPanel;
  dblkcbb_SellsEmporium, dblkcbb_SellsMethod: TDBLookupComboBox);
var
  qry: TADOQuery;
  b: boolean;
begin
  With qryinit do
  begin
    b := FieldByName('SellsEmporiumActive').AsInteger = 1;
    pnlSellsEmporium.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(pnlSellsEmporium.Parent);
        Name := 'qrySellsEmporiums';
        Connection := DMf.adcBSell;
        SQL.Text :=
          'SELECT SellsEmporium,SellsEmporiumName FROM SellsEmporiums';
        LockType := ltReadOnly;
        Active := True;
        dblkcbb_SellsEmporium.Tag := FieldByName('SellsEmporium').AsInteger;
        if dblkcbb_SellsEmporium.Tag = 0 then
          dblkcbb_SellsEmporium.Tag := 1;
      end;
      with TStringField.Create(qryForms) do
      begin
        FieldName := '_SellsEmporium';
        FieldKind := fkLookup;
        Dataset := qryForms;
        Name := qryForms.Name + FieldName;
        KeyFields := 'SellsEmporium';
        LookUpDataset := qry;
        LookUpKeyFields := 'SellsEmporium';
        LookUpResultField := 'SellsEmporiumName';
        Size := 100;
        qryForms.FieldDefs.Add(Name, ftString, 100, True);
        dblkcbb_SellsEmporium.DataField := FieldName;
      end;
    end;

    b := FieldByName('SellsMethodActive').AsInteger = 1;
    pnlSellsMethod.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(pnlSellsMethod.Parent);
        Name := 'qrySellsMethods';
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT SellsMethod,SellsMethodName FROM SellsMethods';
        LockType := ltReadOnly;
        Active := True;
        dblkcbb_SellsMethod.Tag := FieldByName('SellsMethod').AsInteger;
        if dblkcbb_SellsMethod.Tag = 0 then
          dblkcbb_SellsMethod.Tag := 1;
      end;
      with TStringField.Create(qryForms) do
      begin
        FieldName := '_SellsMethod';
        FieldKind := fkLookup;
        Dataset := qryForms;
        Name := qryForms.Name + FieldName;
        KeyFields := 'SellsMethod';
        LookUpDataset := qry;
        LookUpKeyFields := 'SellsMethod';
        LookUpResultField := 'SellsMethodName';
        Size := 100;
        qryForms.FieldDefs.Add(Name, ftString, 100, True);
        dblkcbb_SellsMethod.DataField := FieldName;
      end;
    end;

  end; // with
  if pnlSells <> nil then
    pnlSells.Visible := pnlSellsEmporium.Visible or pnlSellsMethod.Visible;
  SetLookUpCash(qryForms);
  // ColorDBGrid(DBGrid1);
end;

function GetANewID(Dataset: TDataSet; formName, tblName, fldName: String;
  dsMaster: TDataSet; Step: Integer; GetMAX: boolean = True): Integer;
var
  txt: String;
  YearID, ServerID: Integer;
begin
  if dsMaster = nil then
  begin
    YearID := APPBank.Year;
    ServerID := opt.ServerID;
  end
  else
  begin
    YearID := dsMaster.FieldByName('YearID').AsInteger;
    ServerID := dsMaster.FieldByName('ServerID').AsInteger;
  end;
  txt := 'SELECT ' + IfThen(GetMAX, 'MAX', 'MIN') + '(' + fldName + ') FROM ' +
    tblName + ' WHERE ( YearID = ' + IntToStr(YearID) + ') AND ( ServerID = ' +
    IntToStr(ServerID) + ')';

  txt := txt + IfThen(GetMAX, '', 'AND ' + fldName + '<0');
  Result := GetANewCode(formName, txt, fldName, nil, Step, True);
  // Result := GetANewCode(tblName, Txt, fldName, nil, Step);
  if Dataset = nil then
    Exit;
  Dataset.FieldByName(fldName).AsInteger := Result;
  Dataset.FieldByName('YearID').AsInteger := YearID;
  Dataset.FieldByName('ServerID').AsInteger := ServerID;
end;

function CheckedMaxCredit(qryinit, qryItems, qryRecipts: TADOQuery): boolean;
var
  ReMain, MaxCredit, MinWeeklyShoppingAmount: Currency;
  ShowNotEntityOnSearch, MaxCreditChecked: Largeint;
  CheckMinWeeklyShoppingAmount: boolean;
  PersonID: Integer;
begin
  { فقط پيغام‏
    يپغام و جلوگيري از ثبت
    نــدارد }
  Result := False;

  if (qryRecipts.FindField('PersonID2Bed') <> nil) and
    (qryRecipts.FieldByName('PersonID2Bed').AsInteger = 1) then
    PersonID := qryRecipts.FieldByName('PersonID2').AsInteger
  else
    PersonID := qryRecipts.FieldByName('PersonID1').AsInteger;
  MaxCreditChecked := qryinit.FieldByName('MaxCreditChecked').AsLargeInt;
  ShowNotEntityOnSearch := qryinit.FieldByName('ShowNotEntityOnSearch')
    .AsLargeInt;
  CheckMinWeeklyShoppingAmount := ShowNotEntityOnSearch and
    Integer(CHkMinWeeklyShoppingAmount) <> 0;

  if (MaxCreditChecked = 2) and (not CheckMinWeeklyShoppingAmount) then
    Exit;

  // در نحوه فروش نقد كنترل اعتبار لازم نيست
  if (qryinit.FieldByName('SellsMethodActive').AsInteger = 1) AND
    (qryRecipts.FieldByName('SellsMethod').AsInteger = 1) then
    Exit;
  // در نحوه فروش نقد كنترل اعتبار لازم نيست   بيدستان


  // if (ShowNotEntityOnSearch and Integer(CHkMinWeeklyShoppingAmount) <> 0) then
  // Warn2('');

  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT MaxCredit,MaxCreditCurrentForm,MinWeeklyShoppingAmount FROM Customers';
    SQL.Add('WHERE CustID =' + PersonID.ToString);
    Active := True;
    MinWeeklyShoppingAmount := FieldByName('MinWeeklyShoppingAmount')
      .AsCurrency;
    if (MaxCreditChecked <> 2) then
      if qryRecipts.FieldByName('ReciptValue').AsCurrency >
        FieldByName('MaxCreditCurrentForm').AsCurrency then
      begin
        Warn('حداكثر مبلغ فاكتور جاري ' +
          CurrToStrF(FieldByName('MaxCreditCurrentForm').AsCurrency, ffCurrency,
          0) + Currency_String + '  مي باشد.‏', mtInformation);
        if MaxCreditChecked = 1 then
          Result := True;
      end;
    MaxCredit := FieldByName('MaxCredit').AsCurrency;
    Active := False;
  end;

  ReMain := ReMainPersonRecipt(0, qryRecipts, qryinit, False, nil) +
    qryRecipts.FieldByName('ReciptValue').AsCurrency +
    SumReciptsDeficits(qryRecipts, 0);
  if (MaxCreditChecked <> 2) then
    if ReMain > MaxCredit then
    begin
      Warn('اعتبار مشتري ' + CurrToStrF(MaxCredit, ffCurrency, 0) +
        Currency_String + '  مي باشد.‏', mtInformation);
      if MaxCreditChecked = 1 then
        Result := True;
    end;

  if CheckMinWeeklyShoppingAmount then
  begin
    ReMain := qryRecipts.FieldByName('ReciptValue').AsCurrency +
      SumReciptsDeficits(qryRecipts, 0);
    Result := ReMain < MinWeeklyShoppingAmount;
    if Result then
    begin
      Warn(' حداقل میزان خرید هفتگی ' + CurrToStrF(MinWeeklyShoppingAmount,
        ffCurrency, 0) + Currency_String + '  مي باشد.‏', mtInformation);
    end;
  end;

end;

procedure GetCustomerTrancKinds(tab: TTabControl);
var
  i: Byte;
  s: String;
begin
  tab.Tabs.Clear;
  s := DMf.ReadBankConfig('CustomerTrancKinds', '0');
  s := s + ',';
  for i := 0 to High(CustGroupsNames) do
    if Pos(IntToStr(i) + ',', s) <> 0 then
      tab.Tabs.AddObject(CustGroupsNames[i], TObject(i));

  if tab.Tabs.Count = 0 then
    tab.Tabs.AddObject(CustGroupsNames[0], TObject(0));

  // ts.Add(CustGroupsNames[i])
  // else
  // ts.Add('');

end;

procedure initPickList(DBGrid: TDBGrid);
begin
  GetCustGroupsNames(DBGrid.Columns[ColumnIndexByFieldName(DBGrid, 'GroupType')
    ].PickList, True);
end;

procedure GetCustGroupsNames(ts: TStrings; ShowAll: boolean);
var
  i: Byte;
  sysActive: Integer;
  function Sname(i: Integer): string;
  begin
    if DebugHook = 0 then
      Result := CustGroupsNames[i]
    else
      Result := CustGroupsNames[i] + i.ToString;
  end;

begin
  sysActive := mdiMainF.MainFrame.GetActiveIndex;
  if ShowAll then
    sysActive := -1;
  ts.Clear;
  for i := 0 to High(CustGroupsNames) do
  begin
    case sysActive of
      0:
        if (i in [1, 2, 7, 17]) then
          ts.AddObject(Sname(i), TObject(i));
      1:
        if (i in [0, 8, 9]) then // 3, 4, 5, 6,   , 11
          ts.AddObject(Sname(i), TObject(i));
      2:
        if (i in [0, 3, 4, 5, 6, 10]) then
          ts.AddObject(Sname(i), TObject(i));
      4:
        if (i in [10]) then
          ts.AddObject(Sname(i), TObject(i));
      5:
        if (i in [4, 10, 12, 14, 13, 17]) then
          ts.AddObject(Sname(i), TObject(i));
      6:
        if (i in [12, 13, 14, 15, 16]) then
          ts.AddObject(Sname(i), TObject(i));
      7:
        if (i in [3, 5, 6, 9, 11, 13, 14]) then
          ts.AddObject(Sname(i), TObject(i));
      8:
        if (i in [9, 11, 13]) then
          ts.AddObject(Sname(i), TObject(i));
      9:
        if (i in [8, 9, 11, 12, 13, 14]) then
          ts.AddObject(Sname(i), TObject(i));
      10:
        if (i in [0, 3, 5]) then
          ts.AddObject(Sname(i), TObject(i));
    else
      ts.AddObject(Sname(i), TObject(i));
    end;
  end;
end;

function GetStuffGroupsNames(ts: TStrings; ShowAll: boolean): string;
var
  i: Byte;
  sysActive: Integer;
  function Sname(i: Integer): string;
  begin
    if DebugHook = 0 then
      Result := StuffGroupsNames[i]
    else
      Result := StuffGroupsNames[i] + i.ToString;
  end;

begin
  sysActive := mdiMainF.MainFrame.GetActiveIndex;
  if ShowAll then
    sysActive := -1;
  case sysActive of
    1:
      Result := '0, 3, 4';
    2:
      Result := '0, 1, 2,8';
    4, 5:
      Result := '0, 1, 2, 3, 4,8';
    6:
      Result := '4, 5, 6';
    8:
      Result := '4, 6,7, 9';
    10:
      Result := '3,4';
  else
    Result := '0,1,2,3,4,5,6,7,8,9';
  end;
  if ts = nil then
    Exit;
  ts.Clear;
  for i := 0 to High(StuffGroupsNames) do
  begin
    case sysActive of
      1:
        if (i in [0, 3, 4]) then
          ts.AddObject(Sname(i), TObject(i));
      2:
        if (i in [0, 1, 2]) then
          ts.AddObject(Sname(i), TObject(i));
      4, 5:
        if (i in [0, 1, 2, 3, 4]) then
          ts.AddObject(Sname(i), TObject(i));
      6:
        if (i in [4, 5, 6]) then
          ts.AddObject(Sname(i), TObject(i));
      8:
        if (i in [4, 6, 9]) then
          ts.AddObject(Sname(i), TObject(i));
      10:
        if (i in [3, 4]) then
          ts.AddObject(Sname(i), TObject(i));
    else
      ts.AddObject(Sname(i), TObject(i));
    end;

  end;
end;

function AutoStateChange(qryRecipts, qryinit: TADOQuery;
  ReciptState: Byte = 1): boolean;
var
  s, s2: String;
  ReciptID, ServerID, YearID: Integer;
begin
  Result := False;
  if not CheckUserlevel(qryinit.FieldByName('State' + IntToStr(ReciptState) +
    'ChangeLevelID'), qryRecipts) then
    Exit;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;

  case ReciptState of
    1:
      begin
        s := 'ReciptState=0';
        s2 := ' قطعی '
      end;
    3:
      begin
        s := 'ReciptState<=1';
        s2 := ' باطل '
      end;
  end;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Recipts SET ReciptState=' + IntToStr(ReciptState) +
      ',LastUser = ''' + User.Name + s2 + '''  WHERE (' + s + ') AND ' +
      'ReciptID IN (' + qryRecipts.FieldByName('ReciptID').AsString;
    if qryinit.FieldByName('CorrelateStateChange').AsInteger = 1 then
    begin
      SQL.Add(',' + IntToStr(GetParentReciptID(qryRecipts, True)));

    end;
    SQL.Add(')and ServerID = ' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add('and YearID = ' + qryRecipts.FieldByName('YearID').AsString);
    SQL.Add('AND (DocNo = 0)');
    try
      Result := ExecSQL = 0;
      if Result then
        // BigMessage('انجام نشد.‏', 1);
        Warn2('انجام نشد.‏');
      Active := False;
      qryRecipts.Requery();
      qryRecipts.Locate('ReciptID;ServerID;YearID',
        VarArrayOf([ReciptID, ServerID, YearID]), []);
    except
      on E: Exception do
      begin
        add2log(E.Message);
        Warn('اشكال در ثبت‌' + #13#10 + E.Message);
      end;
    end; // try
  end; // with
  // if not(qryRecipts.State in dseditmodes ) then qryRecipts.Edit;
  // qryRecipts.FieldByName('ReciptState').Value:=1;
  // qryRecipts.Post;

end;

procedure ReplaceEntityWeightCaption(Sender: TObject);
var
  s: String;
begin
  if (Sender is TRadioGroup) then
    s := (Sender as TRadioGroup).Items.Text;
  if (Sender is TForm) then
    s := (Sender as TForm).Caption;
  if (Sender is TLabel) then
    s := (Sender as TLabel).Caption;
  if (Sender is TADOQuery) then
    s := (Sender as TADOQuery).SQL.Text;

  s := StringReplace(s, 'مقدار', opt.EntityCaption, [rfReplaceAll]);
  s := StringReplace(s, 'وزن', opt.WeightCaption, [rfReplaceAll]);

  if (Sender is TRadioGroup) then
    (Sender as TRadioGroup).Items.Text := s;
  if (Sender is TADOQuery) then
    (Sender as TADOQuery).SQL.Text := s;
  if (Sender is TLabel) then
    (Sender as TLabel).Caption := s;
  if (Sender is TForm) then
    (Sender as TForm).Caption := s;
end;

procedure AllReciptsEnter(ReciptType: Integer; frParent: TForm);
begin
  With TADOQuery.Create(DMf) do
  begin
    Connection := DMf.adcBSell;
    SQL.Text := 'SELECT TemplateCode FROM  ReciptTypes ';
    SQL.Add('WHERE ReciptType=' + IntToStr(ReciptType));
    Active := True;
    case Fields[0].AsInteger of
      0:
        ReciptsF.Enter(ReciptType);
      1:
        CreateMDIForm2(TStuffToStoreF, StuffToStoreF, frParent, ReciptType);
      2:
        ReciptsGridF.Enter(ReciptType);
      3:
        CreateMDIForm2(TContractF, ContractF, frParent, ReciptType);
      4:
        CreateMDIForm2(TContractStuffF, ContractStuffF, frParent, ReciptType);
      5:
        ReciptsBuyF.Enter(ReciptType);
      6:
        ;
      // CreateMDIForm2(TRentReciptsF, RentReciptsF, frParent, ReciptType);
      7:
        CreateMDIForm2(TReciptsAnalysisF, ReciptsAnalysisF, frParent,
          ReciptType);
      8:
        ReciptsStoreF.Enter(ReciptType);
    end;
    Free;
  end;

end;

function GetReciptNumber(qryinit: TADOQuery; Dataset: TDataSet; EventKind: Byte;
  myStore: TStore; chk_RecallType_dsInsert: boolean = True;
  optServerID: boolean = True): Integer;
var
  TxtServerYearID, Txt1, Txt2, StoreTxt: string;
  FName, formName: String;
  ReciptNumber2, ServerID: Integer;

begin
  if Dataset.State in dsEditModes then
  begin
    if qryinit.FieldByName('AidNumRestOnSecType').AsInteger = 1 then
      // 93/03/27
      Exit;
  end;
  if optServerID then
    ServerID := opt.ServerID
  else
    ServerID := Dataset.FieldByName('ServerID').AsInteger;

  if myStore.Code = 0 then
    myStore.Code := Dataset.FieldByName('StoreID').AsInteger;
  TxtServerYearID := ' AND ( YearID = ' + IntToStr(APPBank.Year) + ') ';
  TxtServerYearID := TxtServerYearID + ' AND ( ServerID = ' +
    IntToStr(ServerID) + ') ';
  if Dataset.FieldByName('ReciptNumber').IsNull then
    Result := 0;
  With qryinit do
  begin
    if (FieldByName('ReciptNumberEventKind').AsInteger <> EventKind) then
      Exit;
    if ((qryinit.FieldByName('RecallType').AsInteger <> 9) and
      (TADOQuery(Dataset).State <> dsInsert)) and (chk_RecallType_dsInsert) then
      Exit;
    case FieldByName('ReciptNumberKind').AsInteger of
      0:
        FName := 'ReciptNumber';
      1:
        FName := 'AidNumber';
    end;

    StoreTxt := GetSqlOnRestartFormNumberOnStore(qryinit, myStore, Dataset);
    if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger in [0, 1, 4]
    then
    begin
      formName := Dataset.FieldByName('ReciptType').AsString + '_' +
        Dataset.FieldByName('StoreID').AsString;
    end
    else
      formName := Dataset.FieldByName('ReciptType').AsString;

    if (FieldByName('ReciptNumberOfType').AsString <> EmptyStr) and
      (FieldByName('ReciptNumberOfType').AsString <> '0') then
      Txt1 := 'SELECT MAX(' + FName + ')FROM Recipts WHERE(ReciptType in(' +
        FieldByName('ReciptNumberOfType').AsString + '))'
    else
      Txt1 := 'SELECT MAX(' + FName + ')FROM Recipts WHERE(ReciptType=' +
        FieldByName('ReciptType').AsString + ')';

    // if (FieldByName('ReciptNumberOfType').AsString <> EmptyStr) and
    // (FieldByName('ReciptNumberOfType').AsString <> '0') then
    // begin
    // Txt2 := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
    // FieldByName('ReciptType').AsString + ')';
    // ReciptNumber2 := GetANewCode(formName, Txt2 + StoreTxt + TxtServerYearID,
    // 'ReciptNumber');
    // if ReciptNumber2 > Result then
    // Result := ReciptNumber2;
    // end
    // else
    Result := GetANewCode(formName, Txt1 + StoreTxt + TxtServerYearID, FName);

  end;
  if Dataset.State in dsEditModes then
    TADOQuery(Dataset).FieldByName('ReciptNumber').AsInteger := Result;
end;

function GetSqlOnRestartFormNumberOnStore(qryinit: TADOQuery; myStore: TStore;
  qryRecipts: TDataSet): string;
begin
  case qryinit.FieldByName('RestartFormNumberOnStore').AsInteger of
    0:
      Result := Format(' AND(StoreID = %d ) AND(ReciptDate = ''%s'' )',
        [myStore.Code, var_glb_CurrentDate]);
    1:
      Result := Format(' AND(StoreID = %d ) ', [myStore.Code]);
    2:
      Result := '';
    3:
      Result := Format(' AND(ReciptDate = ''%s'' )', [var_glb_CurrentDate]);
    4:
      begin
        if User.PowerUser then
          Result := Format(' AND(StoreID = %d ) ', [myStore.Code])
        else
          Result := Format
            (' AND(StoreID = %d )AND(ReciptDate = ''%s'' )AND(OperatorID = %d )',
            [myStore.Code, var_glb_CurrentDate, User.ID]);
      end;
    5:
      Result := Format(' AND(SellsEmporium = %d ) ',
        [qryRecipts.FieldByName('SellsEmporium').AsInteger]);
    6:
      if qryRecipts.FieldByName('PersonID3').AsInteger = 0 then
        Result := Format(' AND(StoreID = %d ) ', [myStore.Code])
      else
        Result := Format(' AND(PersonID3 = %d ) ',
          [qryRecipts.FieldByName('PersonID3').AsInteger]);

    7:
      begin
        Result := Format(' AND(OperatorID = %d )', [User.ID]);
      end;

  end;
end;

function ValidReciptNumber(qryRecipts, qryinit: TADOQuery;
  myStore: TStore): boolean;
var
  // RestartStore:Boolean;
  StoreDateTxt: string;
begin
  Result := False;
  if myStore.Code = 0 then
    myStore.Code := qryRecipts.FieldByName('StoreID').AsInteger;
  if qryinit.FieldByName('DuplicateReciptNoActive').AsInteger = 1 then
  begin
    Result := True;
    Exit;
  end;

  StoreDateTxt := GetSqlOnRestartFormNumberOnStore(qryinit, myStore,
    qryRecipts);

  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM Recipts ';

    if (qryinit.FieldByName('ReciptNumberOfType').AsString <> EmptyStr) and
      (qryinit.FieldByName('ReciptNumberOfType').AsString <> '0') then
      SQL.Add('WHERE(ReciptType in(' + qryinit.FieldByName('ReciptNumberOfType')
        .AsString + ')OR(ReciptType=' + qryinit.FieldByName('ReciptType')
        .AsString + '))')
    else
      SQL.Add('WHERE(ReciptType=' + qryinit.FieldByName('ReciptType')
        .AsString + ')');

    SQL.Add('AND(ReciptNumber=' + qryRecipts.FieldByName('ReciptNumber')
      .AsString + ')AND (ReciptID <> ' + qryRecipts.FieldByName('ReciptID')
      .AsString + ')');

    // SQL.Add(IfThen(RestartStore,'AND (StoreID = '+IntToStr(myStore.code)+')',''));
    SQL.Add(StoreDateTxt);

    SQL.Add('AND ( YearID = ' + IntToStr(qryRecipts.FieldByName('YearID')
      .AsInteger) + ')');

    if (qryinit.FieldByName('ReciptNumberControl').AsLargeInt and
      Integer(CHkServerIDReciptNumber) = 0) then
      SQL.Add('AND ServerID = ' + IntToStr(qryRecipts.FieldByName('ServerID')
        .AsInteger));

    if qryinit.FieldByName('AidNumRestOnSecType').AsInteger = 1 then
      SQL.Add('AND (SecondType = ' + qryRecipts.FieldByName('SecondType')
        .AsString + ')');
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn('شماره فرم وارد شده تكراري مي‌باشد.');
      Exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

function ValidFormNumber(qryForms, qryinit: TADOQuery): boolean;
begin
  Result := False;
  if qryinit.FieldByName('DuplicateFormNoActive').AsInteger = 1 then
  begin
    Result := True;
    Exit;
  end;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM Forms WHERE(FormType=' +
      IntToStr(qryForms.FieldByName('FormType').AsInteger) + ')AND(FormNumber='
      + qryForms.FieldByName('FormNumber').AsString + ')AND (FormID <> ' +
      qryForms.FieldByName('FormID').AsString + ')';
    SQL.Add(IfThen(qryinit.FieldByName('RestartFormNumberOnCust1')
      .AsInteger = 1, 'AND (CustomerID1 = ' +
      IntToStr(qryForms.FieldByName('CustomerID1').AsInteger) + ')', ''));
    SQL.Add('AND ( YearID = ' + IntToStr(APPBank.Year) + ') AND ' +
      ' ServerID = ' + IntToStr(opt.ServerID));

    IF qryinit.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 2
    then
      SQL.Add('AND ( PayTypes = ' + IntToStr(qryForms.FieldByName('PayTypes')
        .AsInteger) + ') ');

    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn('شماره فرم وارد شده تكراري مي‌باشد.');
      // edtFormNumber.SetFocus;
      Exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

function chkAidNumberUnic(qryRecipts, qryinit: TADOQuery): boolean;
begin
  Result := True;
  if qryinit.FieldByName('AidNumberUnic').AsInteger = 0 then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM Recipts ';
    SQL.Add(Format(' WHERE(ReciptType = %d)',
      [qryinit.FieldByName('ReciptType').AsInteger]));
    SQL.Add(Format('AND(AidNumber = ''%s'' )',
      [qryRecipts.FieldByName('AidNumber').AsString]));
    SQL.Add(Format('AND (ReciptID <> %d ) ',
      [qryRecipts.FieldByName('ReciptID').AsInteger]));
    SQL.Add(Format('AND ( YearID = %d ) AND (ServerID = %d )',
      [APPBank.Year, opt.ServerID]));
    Active := True;
    Result := DMf.qryTmpTmp.Fields[0].AsInteger = 0;
    Active := False;
    if (not Result) then
      Warn('شماره ' + qryinit.FieldByName('AidInfoCaptionNo').AsString +
        ' وارد شده تكراري مي‌باشد.');
    if qryinit.FieldByName('AidNumberUnic').AsInteger = 2 then
      Result := True;
  end;
end;

function DuplicateMachineInfo(qryRecipts, qryinit: TADOQuery): boolean;
begin
  Result := True;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM Recipts ';
    SQL.Add(Format(' WHERE(ReciptType = %d)',
      [qryinit.FieldByName('ReciptType').AsInteger]));
    SQL.Add(Format('AND(MachineInfo = ''%s'' )',
      [qryRecipts.FieldByName('MachineInfo').AsString]));
    SQL.Add(Format('AND (ReciptID <> %d ) ',
      [qryRecipts.FieldByName('ReciptID').AsInteger]));
    SQL.Add(Format('AND ( YearID = %d ) AND (ServerID = %d )',
      [APPBank.Year, opt.ServerID]));
    Active := True;
    Result := DMf.qryTmpTmp.Fields[0].AsInteger = 0;
    Active := False;
    if (not Result) then
      Warn(qryRecipts.FieldByName('MachineInfo').DisplayLabel +
        ' وارد شده تكراري مي‌باشد.');
    // if qryinit.FieldByName('').AsInteger = 2 then
    // Result := True
  end;
end;

function chkTozinIDUnic(qryRecipts, qryinit: TADOQuery): boolean;
begin
  Result := True;
  if qryinit.FieldByName('ControlEntityActive').AsInteger <> 5 then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM Recipts ';
    SQL.Add(Format(' WHERE(ReciptType = %d)',
      [qryinit.FieldByName('ReciptType').AsInteger]));
    SQL.Add(Format('AND(TozinID = %f )',
      [qryRecipts.FieldByName('TozinID').AsFloat]));
    SQL.Add(Format('AND (ReciptID <> %d ) ',
      [qryRecipts.FieldByName('ReciptID').AsInteger]));
    SQL.Add(Format('AND ( YearID = %d ) AND (ServerID = %d )',
      [APPBank.Year, opt.ServerID]));
    Active := True;
    Result := DMf.qryTmpTmp.Fields[0].AsInteger = 0;
    Active := False;
    if (not Result) then
      Warn('شماره توزین وارد شده تكراري مي‌باشد.');
    if qryinit.FieldByName('ControlEntityKind').AsInteger = 0 then
      Result := True;
  end;
end;

function chkExternalIdUnic(ID: Largeint; ExternalId: string): boolean;
begin
  Result := True;
  if (opt.AllControls and Integer(CHkNotUnicExternalId) = 0) then
    if ExternalId <> '' then
      with DMf.qryTmpTmp do
        try
          Active := False;
          SQL.Text := 'SELECT COUNT(*) FROM Customers ';
          SQL.Add(Format(' WHERE (CustId <> %d ) ', [ID]));
          SQL.Add(Format('AND ( ExternalId = ''%s'' )', [ExternalId]));
          Active := True;
          Result := DMf.qryTmpTmp.Fields[0].AsInteger = 0;
          Active := False;
          if (not Result) then
            Warn('ExternalId وارد شده تكراري مي‌باشد.');
        finally

        end;
end;

function GetReciptItemIDs(

  var CurrentEntity, CurrentWeight: Extended; qryItems: TADOQuery;
  qryinit: TDataSet; FormInOut: String; EntityDisplayType: Byte; IDName: string;
  isGetExcel: boolean): String;
var
  Usecloned: TADOQuery;
  StuffCode: Int64;
  ProductModel: Integer;
  ReciptItemID: Integer;
begin
  CurrentEntity := 0;
  CurrentWeight := 0;
  StuffCode := qryItems.FieldByName('StuffCode').AsLargeInt;
  ProductModel := qryItems.FieldByName('ProductModel').AsInteger;
  ReciptItemID := qryItems.FieldByName('ReciptItemID').AsInteger;

  With Usecloned do
  begin
    Usecloned := TADOQuery.Create(Application);
    Clone(qryItems, ltReadOnly);
    First;
    while not Eof do
    begin
      Result := Result + IntToStr(FieldByName(IDName).AsInteger) + ',';
      if (StuffCode = FieldByName('StuffCode').AsLargeInt) and
        (ProductModel = FieldByName('ProductModel').AsInteger) and
        (ReciptItemID <> FieldByName('ReciptItemID').AsInteger) then
      begin
        CurrentEntity := CurrentEntity + FieldByName(FormInOut + 'Entity')
          .AsExtended;
        CurrentWeight := CurrentWeight + FieldByName(FormInOut + 'Weight')
          .AsExtended;
      end;
      Next;
    end;
    Result := Result + IntToStr(qryItems.FieldByName(IDName).AsLargeInt);
  end;

  { اول شرط
    if (CurrentEntity = 0)
    اضافه شده بود که در فراخوانی مشکل داشت و زمانی که دو سطر پی در پی یک کالا میزدن
    بعد شرط به صورت زیر شد که در زمان اکسل این شرط فقط کنترل شود و در حالت عادی کنترل نشود

  }
  if not(isGetExcel and (CurrentEntity = 0)) then
    // add  if new bug in get excel
    CurrentEntity := CurrentEntity + qryItems.FieldByName(FormInOut + 'Entity')
      .AsExtended
  else if isGetExcel then

    CurrentEntity := qryItems.FieldByName(FormInOut + 'Entity').AsExtended;

  if not(isGetExcel and (CurrentWeight = 0)) then
    // add  if new bug in get excel
    CurrentWeight := CurrentWeight + qryItems.FieldByName(FormInOut + 'Weight')
      .AsExtended
  else if isGetExcel then
    CurrentWeight := qryItems.FieldByName(FormInOut + 'Weight').AsExtended;

  CurrentEntity := RoundTo(CurrentEntity, opt.RoundEntity);
  CurrentWeight := RoundTo(CurrentWeight, opt.RoundEntity);
  if qryinit.FieldByName('ControlEntityCol').AsInteger <> 3 then
    case EntityDisplayType of
      0:
        CurrentWeight := 0;
      1:
        CurrentEntity := 0;
    end;
  Usecloned.Free;
  // case
end;

function ControlEntity(

  var CurrentEntity, CurrentWeight: Extended; qryItems: TADOQuery;
  qryRecipts: TDataSet; qryinit: TADOQuery; FormInOut: String;
  Person3Active: boolean; MyEntityDisplayType: Byte; isGetExcel: boolean;
  qryEntityCodeExpirationDate: TADOQuery = nil; IsOnDelelte: boolean = False;
  IsParentCheck: boolean = True): boolean;
var
  Entity, Weight: Extended;
  ControlEntityActive, n_maxOrder: Integer;
  qry: TADOQuery;
  RecallTypeOption, EntityOption: Largeint;

  function ControlEntity1: boolean;
  begin
    Result := False;
    With qry do
    begin
      Active := False;
      SQL.Text :=
        'SELECT SUM(entity) AS entity, SUM(weight) AS weight, SUM(Price) AS price';
      SQL.Add('FROM (SELECT ReciptItems.ReciptItemID');
      SQL.Add(', ReciptItems.InputEntity+ReciptItems.OutputEntity AS entity');
      SQL.Add(', ReciptItems.InputWeight+ReciptItems.OutputWeight AS weight,');
      SQL.Add('ReciptItems.TotalInputPrice AS Price');
      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID ');
      SQL.Add('AND ReciptItems.ServerID = Recipts.ServerID ');
      SQL.Add('AND ReciptItems.YearID = Recipts.YearID INNER JOIN');
      SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');
      SQL.Add('WHERE (ReciptTypes.EffectType in(2,6,8) ) AND (Recipts.ReciptState < 3) ');
      SQL.Add('and (ReciptItemID = ' +
        IfThen(qryItems.FieldByName('preReciptItemID').AsString = '', '0',
        qryItems.FieldByName('preReciptItemID').AsString) + ')');
      SQL.Add('UNION ALL');
      SQL.Add('SELECT ReciptItems.preReciptItemID, - ReciptItems.OutputEntity,');
      SQL.Add(' - ReciptItems.OutputWeight,');
      SQL.Add('- ReciptItems.TotalOutputPrice');
      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID ');
      SQL.Add('AND ReciptItems.ServerID = Recipts.ServerID ');
      SQL.Add('AND ReciptItems.YearID = Recipts.YearID INNER JOIN');
      SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType ');
      SQL.Add('WHERE (ReciptItems.preReciptItemID = ');
      SQL.Add(IfThen(qryItems.FieldByName('preReciptItemID').AsString = '', '0',
        qryItems.FieldByName('preReciptItemID').AsString) +
        ') AND (ReciptTypes.EffectType in(4,7,8) )');
      SQL.Add(' AND  (Recipts.ReciptState < 3) AND (ReciptItems.ReciptItemID not in ( '
        + qryItems.FieldByName('ReciptItemID').AsString + ' ))) SpecialEntity');
      Active := True;
      Entity := FieldByName('Entity').AsFloat;
      Weight := FieldByName('Weight').AsFloat;
      if (Entity - CurrentEntity > -0.0001) AND
        (Weight - CurrentWeight > -0.0001) then
        Result := True;
    end; // with
  end;

  function ControlEntity2: boolean;
  var
    YearID, ServerID: Integer;
    ReciptDate: string;
  begin
    Result := False;
    With qry do
    begin
      Active := False;
      if ((EntityOption and Integer(CHkEoIndayCheckEntity)) <> 0) then
        ReciptDate := var_glb_CurrentDate
      else
        ReciptDate := qryRecipts.FieldByName('ReciptDate').AsString;

      SQL.Text := 'DECLARE @ReciptDate char(10)=''%s''';
      SQL.Text := Format(SQL.Text, [ReciptDate]);

      if ControlEntityActive = 4 then
      begin
        SQL.Add('SELECT');
        SQL.Add(' SUM( CASE WHEN ReciptDate < @ReciptDate THEN InputEntity ELSE 0 END');
        SQL.Add(' - CASE WHEN ReciptDate >= @ReciptDate THEN OutputEntity ELSE 0 END  ) AS Entity');
        SQL.Add(',SUM( CASE WHEN ReciptDate < @ReciptDate THEN InputWeight ELSE 0 END');
        SQL.Add(' - CASE WHEN ReciptDate >= @ReciptDate THEN OutputWeight ELSE 0 END  ) AS Weight');
        SQL.Add(',SUM( CASE WHEN ReciptDate < @ReciptDate THEN TotalInputPrice ELSE 0 END');
        SQL.Add(' - CASE WHEN ReciptDate >= @ReciptDate THEN TotalOutputPrice ELSE 0 END ) AS Price');
        SQL.Add('FROM ReciptItems_Stock');
        SQL.Add('WHERE (@ReciptDate >= @ReciptDate ) ');
      end
      else
      begin
        SQL.Add('SELECT');
        SQL.Add(' SUM(InputEntity - OutputEntity ) AS Entity');
        SQL.Add(',SUM(InputWeight - OutputWeight ) AS Weight');
        SQL.Add(',SUM(TotalInputPrice -TotalOutputPrice) AS Price');
        SQL.Add('FROM ReciptItems_Stock');
        SQL.Add('WHERE (ReciptDate <= @ReciptDate) ');
      end;

      SQL.Add('AND (StoreID = ' + qryRecipts.FieldByName('StoreID')
        .AsString + ')');
      SQL.Add('AND (StuffCode = ' + qryItems.FieldByName('StuffCode').AsString);

      if qryinit.FieldByName('Commendation').AsInteger = 0 then
        SQL.Add(')AND (  EffectType in(2,4,6,7)   ) ')
      else
        SQL.Add(')AND (  EffectType in(2,4,6,7)  or ' + ' ( ReciptType= ' +
          qryRecipts.FieldByName('ReciptType').AsString +
          ' and ParentReciptID is null )   )');

      SQL.Add(' AND(ReciptState < 3)AND( ID not in ( ' +
        GetReciptItemIDs(CurrentEntity, CurrentWeight, qryItems, qryinit,
        FormInOut, MyEntityDisplayType, 'ID', isGetExcel) + '))');

      YearID := qryRecipts.FieldByName('YearID').AsInteger;
      ServerID := qryRecipts.FieldByName('ServerID').AsInteger;

      SQL.Add('AND YearID = ' + YearID.ToString);
      SQL.Add(Format
        ('AND NOT((ReciptID = %d) and (YearID = %d) and (ServerID = %d))',
        [qryRecipts.FieldByName('ReciptID').AsInteger, YearID, ServerID]));

      if ((RecallTypeOption and Integer(CHkPostChangeState)) <> 0) then
        SQL.Add(Format
          ('AND ReciptID NOT in(SELECT ReciptID FROM ReciptItems WHERE(ReciptItemID = %d) AND (YearID = %d) AND (ServerID = %d))',
          [qryItems.FieldByName('preReciptItemID').AsInteger, YearID,
          ServerID]));

      if ControlEntityActive = 2 then
        SQL.Add('AND ProductModel = ' +
          IntToStr(qryItems.FieldByName('ProductModel').AsInteger));

      if ControlEntityActive = 6 then
        SQL.Add('AND PersonID1D = ' + IntToStr(qryItems.FieldByName('PersonID1')
          .AsInteger));

      // if Person3Active then
      // SQL.Add('AND Recipts.PersonID3 = ' +
      // IntToStr(qryRecipts.FieldByName('PersonID3').AsInteger));

      Active := True;
      Entity := SimpleRoundTo(FieldByName('Entity').AsExtended,
        opt.RoundEntity);
      Weight := SimpleRoundTo(FieldByName('Weight').AsExtended,
        opt.RoundEntity);

      if ControlEntityActive = 4 then
      begin
        if IsOnDelelte then
        begin
          Result := (Entity = 0) or (CurrentEntity < Entity);
          CurrentEntity := 0;
          CurrentWeight := 0;
        end;
        CurrentEntity := -1 * CurrentEntity;
        CurrentWeight := -1 * CurrentWeight;
      end;

      case qryinit.FieldByName('ControlEntityCol').AsInteger of
        0, 3:
          begin
            if CurrentEntity <> 0 then
              Result := (Entity - CurrentEntity > -0.0001);

            if CurrentWeight <> 0 then
              Result := (Weight - CurrentWeight > -0.0001);

            case qryinit.FieldByName('ControlEntityCol').AsInteger of
              0:
                begin
                  if (CurrentEntity <> 0) and (CurrentWeight <> 0) then
                    Result := (Entity - CurrentEntity > -0.0001) and
                      (Weight - CurrentWeight > -0.0001);

                end;
              3:
                begin
                  if (CurrentEntity <> 0) or (CurrentWeight <> 0) then
                    Result := (Entity - CurrentEntity > -0.0001) or
                      (Weight - CurrentWeight > -0.0001);
                end;

            end;
          end;
        1:
          begin
            Weight := CurrentWeight + 1;
            if CurrentEntity <> 0 then
            begin
              Result := (Entity - CurrentEntity > -opt.MinEntity);
            end;
          end;
        2:
          begin
            Entity := CurrentEntity + 1;
            if CurrentWeight <> 0 then
              Result := (Weight - CurrentWeight > -0.0001);
          end;
      end;
      if qryinit.FieldByName('ControlEntityKind').AsInteger < 3 then
        ControlOrderPoint(qryItems.FieldByName('StuffCode').AsLargeInt,
          Entity - CurrentEntity, qryRecipts.FieldByName('StoreID').AsInteger);
    end;
  end;

  function ControlEntity3: boolean;
  begin
    Result := False;
    With qry do
    begin
      Active := False;
      SQL.Text :=
        ' SELECT  Cnt.ContractOperations.Amount - a.SumOutputEntity AS Entity '
        + ' FROM Cnt.ContractOperations INNER JOIN Cnt.Contracts ON Cnt.ContractOperations.CaseNo = Cnt.Contracts.'
        + ' CaseNo INNER JOIN StuffCoding ON Cnt.ContractOperations.OperationId = StuffCoding.c_StuffCode INNER JOIN '
        + '(SELECT Recipts.AidNumber, ReciptItems.StuffCode,SUM(ReciptItems.OutputEntity) AS SumOutputEntity FROM Recipts INNER '
        + ' JOIN ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND '
        + ' Recipts.YearID = ReciptItems.YearID where (Recipts.ReciptDate <= '''
        + qryRecipts.FieldByName('ReciptDate').AsString + ''')' +
        ' and (ReciptItems.ID not in (' + GetReciptItemIDs(CurrentEntity,
        CurrentWeight, qryItems, qryinit, FormInOut, MyEntityDisplayType, 'ID',
        isGetExcel) + '))' +
        ' GROUP BY Recipts.ReciptType,Recipts.ServerID, Recipts.YearID, Recipts.AidNumber, '
        + ' ReciptItems.StuffCode HAVING(Recipts.ReciptType = ''' +
        IntToStr(qryRecipts.FieldByName('ReciptType').AsInteger) +
        ''')) AS a ON Cnt.ContractOperations.OperationId = a.StuffCode AND ' +
        ' Cnt.Contracts.CaseNo = a.AidNumber Left OUTER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode  '
        + ' WHERE (Cnt.Contracts.EmployerId = %d) And (Cnt.ContractOperations.OperationId ='''
        + qryItems.FieldByName('StuffCode').AsString + ''' )';
      SQL.Text := Format(SQL.Text,
        [qryRecipts.FieldByName('PersonID1').AsInteger]);
      Active := True;
      Entity := FieldByName('Entity').AsFloat;
      if (Entity - CurrentEntity > -0.0001) then
        Result := True;
      Free;
    end;
    // with
  end;

  function ControlEntity4: boolean;
  var
    c_BackLogEntity, c_BackLogWeight: Real48;
    DateFromRemain: String;
    NegativeBalance: boolean;
  begin
    Result := False;
    if (qryItems.State in [dsInsert]) then
    begin
      Result := True;
      Exit;
    end;

    With qry do
    begin
      Active := False;
      SQL.Text := EmptyStr;
      SQL.Add(Format('DECLARE @StoreIdFrom int=%d',
        [qryRecipts.FieldByName('StoreId').AsInteger]));
      SQL.Add(Format('DECLARE @StoreIdTo int=%d',
        [qryRecipts.FieldByName('StoreId').AsInteger]));

      SQL.Add(Format('DECLARE @StuffCode Bigint=%d',
        [qryItems.FieldByName('StuffCode').AsLargeInt]));
      SQL.Add(Format('DECLARE @StuffCode1 Bigint=%d',
        [qryItems.FieldByName('StuffCode').AsLargeInt]));
      SQL.Add(Format('DECLARE @DateFrom char(10)=''%s''',
        [qryRecipts.FieldByName('ReciptDate').AsString]));
      SQL.Add(Format('DECLARE @DateTo char(10)=''%s''', ['9999/99/99']));

      DateFromRemain := qryRecipts.FieldByName('ReciptDate').AsString;
      DateFromRemain := miladi2Shamsi
        (IncDay(Shamsi2Miladi(DateFromRemain), -1));
      SQL.Add(Format('DECLARE @DateFromRemain char(10)=''%s''',
        [DateFromRemain]));

      SQL.Add(Format('DECLARE @YearIDFrom int=%d',
        [qryRecipts.FieldByName('YearID').AsInteger]));
      SQL.Add(Format('DECLARE @YearIDTo int=%d',
        [qryRecipts.FieldByName('YearID').AsInteger]));

      SQL.Add('SELECT	Cardex.ID ,Cardex.StuffCode , Cardex.BackLogEntity , Cardex.BackLogWeight ,');
      SQL.Add('Fitful.FitfulID AS CalcuBackLogEntity, Fitful.FitfulID AS CalcuBackLogWeight');
      SQL.Add('FROM	dbo.Cardex(@StoreIdFrom ,@StoreIdTo , @StuffCode , @StuffCode1 , 0 , 2147483647 ,');
      SQL.Add('@DateFrom , ''9999/99/99'' ,@DateFromRemain , @YearIDFrom , @YearIDTo , 0 ,');
      SQL.Add('2147483647 ,');
      SQL.Add('0 , 2147483647,0 , 2147483647,0 , 2147483647,0 , 2147483647) AS Cardex CROSS JOIN Fitful');
      // ORDER BY  in 1 line
      SQL.Add('ORDER BY Cardex.StuffCode , Cardex.ReciptDate, CASE WHEN n_ValuationType = 6 THEN ReciptID ELSE 0 END,Cardex.EffectType, Cardex.ReciptNumber, Cardex.ReciptType, Cardex.ControlCode, Cardex.ReciptItemID');
      // ORDER BY  in 1 line

      // @StoreIDFrom int , @StoreIDTo int ,
      // @StuffCodeFrom bigint , @StuffCodeTo bigint ,
      // @ControlCodeFrom int , @ControlCodeTo int  ,
      // @DateFrom Char(10), @DateTo Char(10) ,@DateFromRemain  Varchar(10) ,
      // @YearIDFrom int=0 ,  @YearIDTo int=999999,
      // @DiameterFrom float=0, @DiameterTo float=99999,
      // @PersonID3From INT=-2147483647  ,@PersonID3To INT=2147483647 ,
      // @PersonID4From INT=-2147483647  ,@PersonID4To INT=2147483647,
      // @PersonID1From INT=-2147483647  ,@PersonID1To INT=2147483647 ,
      // @PersonID2From INT=-2147483647  ,@PersonID2To INT=2147483647

      Active := True;
      Result := RecordCount = 0;
      c_BackLogEntity := 0;
      c_BackLogWeight := 0;
      while not Eof do
      begin
        if qryItems.FieldByName('ID').AsFloat = FieldByName('ID').AsFloat then
        begin
          if not IsOnDelelte then
          begin
            c_BackLogEntity := c_BackLogEntity + qryItems.FieldByName
              (FormInOut + 'Entity').AsFloat;
            c_BackLogWeight := c_BackLogWeight + qryItems.FieldByName
              (FormInOut + 'Weight').AsFloat;
          end;
        end
        else
        begin
          c_BackLogEntity := c_BackLogEntity +
            FieldByName('BackLogEntity').AsFloat;
          c_BackLogWeight := c_BackLogWeight +
            FieldByName('BackLogWeight').AsFloat;
        end;

        c_BackLogEntity := RoundTo(c_BackLogEntity, opt.RoundEntity);
        c_BackLogWeight := RoundTo(c_BackLogWeight, opt.RoundWeight);

        case qryinit.FieldByName('ControlEntityCol').AsInteger of
          0:
            begin
              NegativeBalance := (c_BackLogEntity < 0) and
                (c_BackLogWeight < 0);
            end;
          1:
            begin
              NegativeBalance := (c_BackLogEntity < 0);
            end;
          2:
            begin
              NegativeBalance := (c_BackLogWeight < 0);
            end;
          3:
            begin
              NegativeBalance := (c_BackLogEntity < 0) or (c_BackLogWeight < 0);
            end;

        else
          NegativeBalance := True;
        end;
        Result := not NegativeBalance;
        if NegativeBalance then
        begin
          // Abort;
          Break
        end;

        Next;

      end;

      if qryinit.FieldByName('ControlEntityKind').AsInteger < 3 then
        ControlOrderPoint(qryItems.FieldByName('StuffCode').AsLargeInt,
          Entity - CurrentEntity, qryRecipts.FieldByName('StoreID').AsInteger);
    end;
  end;

  function ControlEntityRecallSpecial: boolean;
  begin
    Result := False;
    With qry do
    begin
      Active := False;
      SQL.Text := 'SELECT Entity, Weight';
      SQL.Add('FROM dbo.Recal_CheckRemainEntity(:preReciptItemID');
      SQL.Add(', :ReciptItemID, :PrvYearID,');
      SQL.Add(':YearID, :Serverid) AS Recal_1');
      Parameters.ParamByName('preReciptItemID').Value :=
        qryItems.FieldByName('preReciptItemID').AsInteger;
      Parameters.ParamByName('ReciptItemID').Value :=
        qryItems.FieldByName('ReciptItemID').AsInteger;
      Parameters.ParamByName('PrvYearID').Value :=
        qryItems.FieldByName('PrvYearID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryItems.FieldByName('YearID')
        .AsInteger;
      Parameters.ParamByName('Serverid').Value :=
        qryItems.FieldByName('Serverid').AsInteger;
      Active := True;
      Entity := FieldByName('Entity').AsFloat;
      Weight := FieldByName('Weight').AsFloat;
      CurrentEntity := qryItems.FieldByName(FormInOut + 'Entity').AsFloat;
      CurrentWeight := qryItems.FieldByName(FormInOut + 'Weight').AsFloat;

      case qryinit.FieldByName('ControlEntityCol').AsInteger of
        0, 3:
          begin
            if CurrentEntity <> 0 then
              Result := (Entity - CurrentEntity > -0.0001);
            if CurrentWeight <> 0 then
              Result := (Weight - CurrentWeight > -0.0001);

            case qryinit.FieldByName('ControlEntityCol').AsInteger of
              0:
                begin
                  if (CurrentEntity <> 0) and (CurrentWeight <> 0) then
                    Result := (Entity - CurrentEntity > -0.0001) and
                      (Weight - CurrentWeight > -0.0001);
                end;
              3:
                begin
                  if (CurrentEntity <> 0) or (CurrentWeight <> 0) then
                    Result := (Entity - CurrentEntity > -0.0001) or
                      (Weight - CurrentWeight > -0.0001);
                end;

            end;
          end;
        1:
          begin
            Weight := CurrentWeight + 1;
            if CurrentEntity <> 0 then
              Result := (Entity - CurrentEntity > -0.0001);
          end;
        2:
          begin
            Entity := CurrentEntity + 1;
            if CurrentWeight <> 0 then
              Result := (Weight - CurrentWeight > -0.0001);
          end;
      end;

    end;
  end;

begin
  Result := True;

  if qryItems.FieldByName(FormInOut + 'Entity').AsFloat +
    qryItems.FieldByName(FormInOut + 'Weight').AsFloat = 0 then
    Exit;

  RecallTypeOption := qryinit.FieldByName('RecallTypeOption').AsLargeInt;
  EntityOption := qryinit.FieldByName('NonZeroActive').AsInteger;
  ControlEntityActive := qryinit.FieldByName('ControlEntityActive').AsInteger;
  if ControlEntityActive = 0 then
    Exit;

  qry := TADOQuery.Create(DMf);
  qry.LockType := ltBatchOptimistic;
  qry.Connection := theMainConnection;
  if qryinit.FieldByName('StoreControlEntity').AsString <> EmptyStr then
    With qry do
    begin
      SQL.Text := 'SELECT n_StoreID FROM Stores ';
      SQL.Add('WHERE (n_StoreID = ' + qryRecipts.FieldByName('StoreID')
        .AsString);
      SQL.Add(')AND(StoreKind IN (' + qryinit.FieldByName('StoreControlEntity')
        .AsString + '))');
      Active := True;
      if FieldByName('n_StoreID').AsInteger <> qryRecipts.FieldByName('StoreID')
        .AsInteger then
      begin
        qry.Free;
        Exit;
      end;
    end;

  case ControlEntityActive of

    3:
      Result := ControlEntityCodeExpirationDate(qryEntityCodeExpirationDate,
        qryRecipts, qryItems, qryinit, Entity, Weight, CurrentEntity,
        CurrentWeight, FormInOut, MyEntityDisplayType);

    4:
      Result := ControlEntity4;

    5:
      Result := ControlEntityRecallSpecial
  else
    if (qryinit.FieldByName('AutoPrice').AsInteger = 9) and
      (ControlEntityActive = 1) then
      Result := ControlEntity3
    else if qryRecipts.FieldByName('_ValuationType').AsInteger = 3 then
      Result := ControlEntity1
    else
      Result := ControlEntity2;

    if IsParentCheck and (GetParentReciptID(qryRecipts, False) > 0) then
    begin
      if not Result and ((RecallTypeOption and Integer(CHkIsParentCheck)) <> 0)
      then
      begin
        Warn2('موجودی بررسی شود..', 0);
        Result := False;
      end
      else
      begin
        Result := True;
      end;
      qry.Free;
      Exit;
    end;

  end;

  if qryinit.FieldByName('ControlEntityKind').AsInteger = 2 then
    with qry do
    begin
      Active := False;
      SQL.Text := 'SELECT n_minOrder FROM StuffCoding ';
      SQL.Add('WHERE c_StuffCode = ' + qryItems.FieldByName('StuffCode')
        .AsString);
      Active := True;
      if FieldByName('n_minOrder').AsInteger >= Entity - CurrentEntity then
      begin
        // Warn('موجودي به حداقل رسيده است .‏', mtInformation);
        Warn2('موجودي به حداقل رسيده است .‏');
      end;
      Active := False;
    end;

  if Result then
    if qryinit.FieldByName('ControlEntityKind').AsInteger in [3, 4] then
      with qry do
      begin
        Active := False;
        SQL.Text := 'SELECT n_maxOrder FROM StuffCoding ';
        SQL.Add('WHERE c_StuffCode = ' + qryItems.FieldByName('StuffCode')
          .AsString);
        Active := True;
        n_maxOrder := FieldByName('n_maxOrder').AsInteger;
        Result := (n_maxOrder >= Entity + CurrentEntity) or (n_maxOrder = 0);
        n_maxOrder := Round(n_maxOrder - Entity);
        if not Result then
        begin
          // Warn('موجودي به حداكثر مي رسد .‏' + #13#10 +
          // Format('تا مقدار %d قابل ثبت است', [n_maxOrder]), mtInformation);
          Warn2('موجودي به حداكثر مي رسد .‏' + #13#10 +
            Format('تا مقدار %d قابل ثبت است', [n_maxOrder]));

          Result := qryinit.FieldByName('ControlEntityKind').AsInteger = 3;
          if not Result then
          begin
            qry.Free;
            Abort;
          end;
        end;
        Active := False;
        Result := True;
      end;

  if not Result then
  begin
    // if ControlEntityActive <> 3 then
    Warn2('عدم موجودي کد:' + #13#10 + qryItems.FieldByName('StuffCode').AsString
      + 'یا کاربری همزمان آن را ثبت کرده است' +
      FloatToStr((Entity - CurrentEntity)), 1500);
    if qryinit.FieldByName('ControlEntityKind').AsInteger = 0 then
      Result := True
    else
    begin
      qry.Free;
      Abort;
    end;
  end;
  qry.Free;

end;

function ControlEntityCodeExpirationDate(

  var qryEntityCodeExpirationDate: TADOQuery; qryRecipts: TDataSet;
  qryItems, qryinit: TADOQuery;

  var Entity, Weight, CurrentEntity, CurrentWeight: Extended;

  var FormInOut: string;

  var MyEntityDisplayType: Byte): boolean;
var
  inEntity: Currency;
  qryItems_: TADOQuery;
begin
  if qryEntityCodeExpirationDate <> nil then
    With qryEntityCodeExpirationDate do
    begin
      if NOT Active then
      begin
        Parameters.ParamByName('ReciptDate').Value :=
          qryRecipts.FieldByName('ReciptDate').AsString;
        Parameters.ParamByName('StoreID').Value :=
          qryRecipts.FieldByName('StoreID').AsInteger;
        Parameters.ParamByName('YearID').Value :=
          qryRecipts.FieldByName('YearID').AsInteger;
        Active := True;
      end;

      Filtered := False;
      Filter := Format('(StuffCode = %d ) AND (ItemDate < %s )',
        [qryItems.FieldByName('StuffCode').AsLargeInt,
        QuotedStr(qryItems.FieldByName('ItemDate').AsString)]);
      Filtered := True;
      Result := RecordCount = 0;
      if not Result then
      begin
        qryItems_ := TADOQuery.Create(qryItems.Owner);
        with qryItems_ do
        begin
          Clone(qryItems, ltReadOnly);
          Filter := Format('(StuffCode = %d ) AND (ItemDate = %s )',
            [qryItems.FieldByName('StuffCode').AsLargeInt,
            QuotedStr(qryItems.FieldByName('ItemDate').AsString)]);
          Filtered := True;
          inEntity := Calc_SumFileds('Entity', qryItems_, qryinit);
          inEntity := qryEntityCodeExpirationDate.FieldByName('Entity')
            .AsInteger - inEntity;
          Result := inEntity <= 0;
          if not Result then
            Warn2('کد کالا ' + qryItems.FieldByName('StuffCode').AsString +
              '  مقدار ' + CurrToStr(inEntity) +
              'عدد موجودی با تاریخ انقضای پایین تر وجود دارد', 5000);
          Free;
        end;

      end
      else
      begin
        Filtered := False;
        Filter := Format
          ('(StuffCode = %d ) AND (ItemDate = %s ) AND (ReciptItemID = %d )',
          [qryItems.FieldByName('StuffCode').AsLargeInt,
          QuotedStr(qryItems.FieldByName('ItemDate').AsString),
          qryItems.FieldByName('preReciptItemID').AsInteger]);
        Filtered := True;
        Result := RecordCount > 0;
      end;
    end;
end;

function ControlByuPrice(qryItems, qryRecipts, qryinit: TADOQuery): boolean;
var
  AutoPrice, AgrAmount: Real;
  myCustValuationType: Integer;
  Rate: Currency;
  AutoPriceTag: Byte;
  StuffCode: Largeint;
  aTFieldNotifyEvent: TFieldNotifyEvent;
  i, EntityOption: Integer;
begin
  Result := True;
  EntityOption := qryinit.FieldByName('NonZeroActive').AsInteger;
  if not((EntityOption and Integer(CHkEoBuyPrice)) <> 0) then
    Exit;
  AutoPriceTag := qryinit.FieldByName('AutoPrice').AsInteger;
  StuffCode := qryItems.FieldByName('StuffCode').AsLargeInt;
  AutoPrice := 0;
  Rate := 0;
  AgrAmount := 0;
  myCustValuationType := qryRecipts.FieldByName('_CustValuationType').AsInteger;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT TOP 1 StuffCode, ManifestoItems.SellPrice1,';
    SQL.Add('ManifestoItems.SellPrice2, ManifestoItems.SellPrice3,ManifestoItems.SellPrice4,');
    SQL.Add('ManifestoItems.SellPrice5, ManifestoItems.SellPrice6,ManifestoItems.SellPrice7,');
    SQL.Add('BuyPrice, StandardRate, StuffCoding.State,ManifestoItems.DiscountPercent,ManifestoItems.DiscountAmount');
    SQL.Add(', StuffCoding.BlockOutput');
    SQL.Add('FROM Manifesto INNER JOIN');
    SQL.Add('ManifestoItems ON Manifesto.ManifestoID = ManifestoItems.ManifestoID INNER JOIN');
    SQL.Add('StuffCoding ON ManifestoItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Customers ON Manifesto.CustomerGrpIDFrom <= Customers.CustomerGrpID AND Manifesto.CustomerGrpIDTo >=');
    SQL.Add('Customers.CustomerGrpID AND');
    SQL.Add('Manifesto.CustIDFrom <= Customers.CustID AND Manifesto.CustIDTo >= Customers.CustID');
    SQL.Add('WHERE(StuffCode = ' + IntToStr(StuffCode));
    SQL.Add(')AND (SellOrBuy = 1) AND (ManifestoRunDate <= ''' +
      qryRecipts.FieldByName('ReciptDate').AsString + ''')');
    SQL.Add(' AND (Manifesto.SellsMethod = ' + qryRecipts.FieldByName
      ('SellsMethod').AsInteger.ToString + ')');

    if ((qryinit.FieldByName('RecuestActive').AsLargeInt and
      Integer(CHKManifestoSellsEmporiumOffFilter)) = 0) then
      SQL.Add(' AND (Manifesto.SellsEmporium = ' + qryRecipts.FieldByName
        ('SellsEmporium').AsInteger.ToString + ')');

    SQL.Add(' AND (Customers.CustID = ' + qryRecipts.FieldByName('PersonID1')
      .AsInteger.ToString + ')');

    if AutoPriceTag = 8 then
      SQL.Add('AND (ManifestoRunDate =(SELECT MAX(ManifestoRunDate)FROM Manifesto))');

    if AutoPriceTag = 11 then
      SQL.Add(Format('AND (StuffCodingItemID = %d)',
        [qryItems.FieldByName('StuffCodingItemID').AsInteger]));

    SQL.Add('ORDER BY Manifesto.ManifestoRunDate DESC,Manifesto.ManifestoNo DESC');
    Active := True;

    case myCustValuationType of
      0, 1, 2, 3:
        AutoPrice := FieldByName('SellPrice' + IntToStr(myCustValuationType + 1)
          ).AsCurrency;
      6, 7, 8:
        AutoPrice := FieldByName('SellPrice' + IntToStr(myCustValuationType - 1)
          ).AsCurrency;

      5:
        AutoPrice := Rate;
    end;

  end;
  Result := (AutoPrice = 0) or (qryItems.FieldByName('UnitSellPrice').AsFloat <=
    AutoPrice);
  if not Result then
    Warn2('قیمت خرید بیش از حد مجاز می باشد');

  if qryinit.FieldByName('ControlEntityKind').AsInteger = 0 then
    Result := True;

end;

function ReciptBe4PostCtrlEntAct(qryItems: TADOQuery; qryRecipts: TDataSet;
  qryinit: TADOQuery; IsOnDelelte: boolean = False): boolean;
var
  CurrentEntity, CurrentWeight: Extended;
  FormInOut: string;
begin
  Result := True;
  if qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8] then
  begin
    FormInOut := 'Output';
  end
  else
  begin
    FormInOut := 'Input';
  end;

  With qryItems do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        CurrentEntity := FieldByName(FormInOut + 'Entity').AsFloat;
        CurrentWeight := FieldByName(FormInOut + 'Weight').AsFloat;;
        Result := ControlEntity(CurrentEntity, CurrentWeight, qryItems,
          qryRecipts, qryinit, FormInOut, False, opt.EntityDisplayType, False,
          NIL, IsOnDelelte);
        if not Result then
          Abort;
        Next;
      end;
    finally
      EnableControls;
    end;
end;

procedure CopyPasteRec(qryFormItems: TADOQuery);
var
  qry: TADOQuery;
  i: Byte;
begin
  BigMessageProgBar('در حال كپي آرتيكل  ...‏', qryFormItems.Fields.Count - 1);
  if (qryFormItems.State in dsEditModes) then
    qryFormItems.Post;
  qry := TADOQuery.Create(DMf);
  try
    with qry do
    begin
      Clone(qryFormItems, ltReadOnly);
      Filter := qryFormItems.Fields[0].FieldName + '=' + qryFormItems.Fields
        [0].AsString;
      Filtered := True;
      qryFormItems.Append;
      for i := 0 to qryFormItems.Fields.Count - 1 do
      begin
        if (not qryFormItems.Fields[i].ReadOnly) and
          (qryFormItems.Fields[i].IsNull) and
          (qryFormItems.Fields[i].FieldKind <> fkLookup) then
          qryFormItems.FieldByName(qryFormItems.Fields[i].FieldName).Value :=
            FieldByName(qryFormItems.Fields[i].FieldName).Value;
        GoProgressBar(IntToStr(i));
      end;
    end; // with
  finally
    qry.Free;
    BigMessage('آرتيكل كپي شد.‏', 1);
  end; // try
end;

procedure EditableFields(qryReciptTypes: TADOQuery; Field_Name, T1, T2: string);
var
  MyForm: TForm;
  myList: TCheckListBox;
  s: String;
  i: Integer;
  qry: TADOQuery;
begin
  if not(qryReciptTypes.State in dsEditModes) then
    qryReciptTypes.Edit;
  MyForm := TForm.Create(Application);
  myList := TCheckListBox.Create(MyForm);
  with MyForm do
    try
      MyForm.AutoSize := True;
      MyForm.Position := poScreenCenter;
      MyForm.BorderStyle := bsToolWindow;
      myList.Columns := 2;
      myList.Height := 300;
      myList.Width := 400;
      myList.Color := clCream;
      // myList.OnDblClick := MClick;
      MyForm.Caption := 'انتخاب فيلدها';
      myList.Parent := MyForm;
      qry := TADOQuery.Create(MyForm);
      qry.Connection := DMf.adcBSell;
      qry.SQL.Text := 'SELECT top 1 * FROM  ' + T1;
      qry.Active := True;
      for i := 0 to qry.FieldCount - 1 do
        if myList.Items.IndexOf(qry.Fields[i].FieldName) < 0 then
          myList.Items.Add(qry.Fields[i].FieldName);
      if T2 <> EmptyStr then
      begin
        qry.Active := False;
        qry.SQL.Text := 'SELECT top 1 * FROM  ' + T2;
        qry.Active := True;
        for i := 0 to qry.FieldCount - 1 do
          if myList.Items.IndexOf(qry.Fields[i].FieldName) < 0 then
            myList.Items.Add(qry.Fields[i].FieldName);
      end;
      myList.Sorted := True;
      for i := 0 to myList.Items.Count - 1 do
        myList.Checked[i] := Pos(myList.Items[i] + ';',
          qryReciptTypes.FieldByName(Field_Name).AsString + ';') <> 0;

      ShowModal;
    finally
      s := '';
      for i := 0 to myList.Count - 1 do
        if myList.Checked[i] then
          s := s + myList.Items[i] + ';';
      qryReciptTypes.FieldByName(Field_Name).AsString := s;
      FreeAndNil(myList);
      Free;
    end;
end;

procedure CalculateOutPutFields(qryStore: TADOQuery);
var
  MyForm: TForm;
  myList: TCheckListBox;
  CalculateOutPutFields: Int64;
  i: Integer;
begin
  if not(qryStore.State in dsEditModes) then
    qryStore.Edit;
  MyForm := TForm.Create(Application);
  myList := TCheckListBox.Create(MyForm);
  with MyForm do
    try
      MyForm.AutoSize := True;
      MyForm.Position := poScreenCenter;
      MyForm.BorderStyle := bsToolWindow;
      myList.Columns := 2;
      myList.Height := 300;
      myList.Width := 400;
      myList.Color := clCream;
      MyForm.Caption := 'فيلدهاي قابل انتخاب';
      myList.Parent := MyForm;
      CalculateOutPutFields := qryStore.FieldByName('CalculateOutPutFields')
        .AsLargeInt;
      for i := 1 to Length(ACalcFieldsListprvCode) do
        myList.Items.Add(ACalcFieldsListprvCode[i].Name);

      for i := 0 to myList.Items.Count - 1 do
        myList.Checked[i] := (CalculateOutPutFields and ACalcFieldsListprvCode
          [i + 1].Powers <> 0);

      ShowModal;
    finally
      CalculateOutPutFields := 0;
      for i := 0 to myList.Count - 1 do
        if myList.Checked[i] then
          CalculateOutPutFields := CalculateOutPutFields +
            ACalcFieldsListprvCode[i + 1].Powers;
      qryStore.FieldByName('CalculateOutPutFields').AsLargeInt :=
        CalculateOutPutFields;
      FreeAndNil(myList);
      Free;
    end;
end;

function getCalculateOutPutFields(PerFixNmae: string;
  CalculateOutPutFields: Largeint; IsOrderBY: boolean): string;
var
  i: Integer;
begin
  if CalculateOutPutFields > 0 then
  begin
    Result := EmptyStr;
    for i := 1 to Length(ACalcFieldsListprvCode) do
      if (CalculateOutPutFields and ACalcFieldsListprvCode[i].Powers <> 0) then
        Result := Result + PerFixNmae + ACalcFieldsListprvCode[i].Name + ','
      else if not IsOrderBY then
        Result := Result + '0 AS ' + ACalcFieldsListprvCode[i].Name + ',';

    SetLength(Result, Length(Result) - 1);
  end;
end;

function getCalculateOutPutFields2(CalculateOutPutFields: Largeint): string;
var
  i: Integer;
begin
  if CalculateOutPutFields > 0 then
  begin
    Result := EmptyStr;
    for i := 1 to Length(ACalcFieldsListprvCode) do
      if (CalculateOutPutFields and ACalcFieldsListprvCode[i].Powers <> 0) then
      begin
        if Pos('date', LowerCase(ACalcFieldsListprvCode[i].Name)) <> 0 then
          Result := Result + ACalcFieldsListprvCode[i].Name + '+'
        else
          Result := Result + 'STR(' + ACalcFieldsListprvCode[i].Name + ')+';
      end;

    SetLength(Result, Length(Result) - 1);
  end;
end;

procedure StateChangeAction(qry: TADOQuery);
var
  FormID, ServerID, YearID, ReciptID: Integer;
begin
  // ___________________________________________________________________________
  // اگر وضعيت 12 يا 11 بود عنوان ان بشود "ثبت موقت "
  // اگر وضعيت 0 بود عنوان ان بشود "قطعي کردن "
  // اگر وضعيت 1 بود  "عنوان ان بشود "دائم نمودن"
  // غير از موارد فوق کلا خاموش شود .
  FormID := qry.FieldByName('FormID').AsInteger;
  ServerID := qry.FieldByName('ServerID').AsInteger;
  YearID := qry.FieldByName('YearID').AsInteger;
  if qry.FindField('ReciptID') <> nil then
    ReciptID := qry.FieldByName('ReciptID').AsInteger
  else
    ReciptID := 0;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    case qry.FieldByName('FormState').AsInteger of
      11, 12:
        SQL.Text := 'UPDATE Forms SET FormState = 0 ';
      0:
        SQL.Text := 'UPDATE Forms SET FormState = 1 ';
    else
    end;
    SQL.Add(Format(' WHERE (FormID = %d)', [FormID]));
    SQL.Add(Format('AND (ServerID = %d)', [ServerID]));
    SQL.Add(Format('AND (YearID = %d)', [YearID]));

    if ExecSQL > 0 then
      BigMessage('انجام شد.', 1)
    else
      BigMessage('اشکال در ثبت', 1);

    if qry.FieldByName('FormState').AsInteger = 0 then
    begin
      SQL.Text := 'UPDATE Recipts SET ReciptState = 1 ,LastUser = ''' +
        User.Name + ' قطعی' + ''' ';
      SQL.Add(Format('WHERE (ReciptID = %d)', [ReciptID]));
      SQL.Add(Format('AND (ServerID = %d)', [ServerID]));
      SQL.Add(Format('AND (YearID = %d)', [YearID]));
      if ExecSQL > 0 then
        BigMessage('فرم فروش قطعی شد.', 1)
    end;

    qry.Requery;
    qry.Locate('FormID;ServerID;YearID',
      VarArrayOf([FormID, ServerID, YearID]), []);
    Active := False;
  end;
end;

procedure AfterScrollAutoFormStateChange(actStateChange: TAction;
  qryinit, qry: TDataSet);
begin
  // __ GetFormState ___________________________________________________________
  // اگر وضعيت 12 يا 11 بود عنوان ان بشود "ثبت موقت "
  // اگر وضعيت 0 بود عنوان ان بشود "قطعي کردن "
  // اگر وضعيت 1 بود  "عنوان ان بشود "دائم نمودن"
  // غير از موارد فوق کلا خاموش شود .
  actStateChange.Enabled := qryinit.FieldByName('AutoStateChange').AsInteger
    in [3, 4];;
  case qry.FieldByName('FormState').AsInteger of
    11, 12:
      begin
        actStateChange.Caption := 'ثبت موقت';
        actStateChange.Visible := True;
      end;
    0:
      begin
        actStateChange.Caption := 'قطعي کردن';
        actStateChange.Visible := True;

      end;
  else
    actStateChange.Visible := False;
  end;
end;

function GetFormState(FormState: Integer): String;
begin
  case FormState of

    0:
      Result := 'موقت';
    1:
      Result := 'قطعي';
    10:
      Result := 'باطله';
    11:
      Result := 'رزرو';
    12:
      Result := 'پیش نویس';
  end;
end;

function GetManifestoStatussState(Statuss: Integer): String;
begin
  case Statuss of
    0:
      Result := 'موقت';
    1:
      Result := 'قطعي';
  end;
end;

function GetTransmittal(Transmittal: Integer): String;
begin
  case Transmittal of
    0:
      Result := 'ارسال نشده';
    1:
      Result := 'ارسالي ويرايش شده';
    2:
      Result := '';
    3:
      Result := 'ارسال شده';
  end;
end;

function GetReciptState(ReciptState: Integer): String;
begin
  case ReciptState of
    0:
      Result := 'موقت';
    1:
      Result := 'قطعي';
    2:
      Result := 'دائم';
    3:
      Result := 'باطله';
    4:
      Result := 'رزرو';
    5:
      Result := 'پیش نویس';
  end;
end;

function GetCurrencyKind(CurrencyKind: Integer): String;
begin
  case CurrencyKind of
    0:
      Result := 'ریالی';
    1:
      Result := 'ارزی/ریالی';
    2:
      Result := 'ارزی';
  end;
end;

function AllStateControls(qry, qryItem, qryinit: TADOQuery;
  FromName: String): boolean;
begin
  Result := True;
  if Trim(qryinit.FieldByName('EditableFields').AsString) = EmptyStr then
  begin
    if (qry.FieldByName(FromName + 'State').AsInteger in [1, 2, 3]) then
    begin
      Warn('فقط ' + qryinit.FieldByName(FromName + 'Caption').AsString +
        'ي كه نوع اطلاعات آن موقت است قابل ويرايش است‏', mtInformation);
      Result := False;
    end;
  end
  else
  begin
    if (qry.FieldByName(FromName + 'State').AsInteger = 3) then
    begin
      Warn('فقط ' + qryinit.FieldByName(FromName + 'Caption').AsString +
        'ي كه نوع اطلاعات آن موقت است قابل ويرايش است‏', mtInformation);
      Result := False;
    end;
    if (qry.FieldByName(FromName + 'State').AsInteger in [1, 2]) then
    begin
      MyEditableFields(qry, qryinit);
      // ts := TStringList.Create;
      // ts.Text := StringReplace(qryinit.FieldByName('EditableFields').AsString,
      // ';', #13, [rfReplaceAll]);
      // With qry do
      // begin
      // for i := 0 to FieldCount - 1 do
      // Fields[i].ReadOnly := True;
      // for i := 0 to ts.Count - 1 do
      // if FindField(ts[i]) <> nil then
      // FieldByName(ts[i]).ReadOnly := False;
      // end;
      if qry <> qryItem then
        MyEditableFields(qryItem, qryinit);
      // With qryItem do
      // begin
      // for i := 0 to FieldCount - 1 do
      // Fields[i].ReadOnly := True;
      // for i := 0 to ts.Count - 1 do
      // if FindField(ts[i]) <> nil then
      // FieldByName(ts[i]).ReadOnly := False;
      // end;
      // ts.Free;
    end;
  end;
end;

procedure MyEditableFields(qry, qryinit: TDataSet);
var
  ts: TStringList;
  i: Integer;
begin
  ts := TStringList.Create;
  With qry do
    try
      ts.Text := StringReplace(qryinit.FieldByName('EditableFields').AsString,
        ';', #13, [rfReplaceAll]);

      if ((qryinit.FieldByName('OtherSettings').AsLargeInt and
        Integer(CHkOnlyFieldsEdited)) <> 0) then
      begin
        // فیلد هایی  که توسط سیستم ویرایش می شود
        ts.Add('FirstUser');
        ts.Add('LastUser');
        ts.Add('EditTime');
        ts.Add('ModifyDate');
        ts.Add('ReciptValue');
        ts.Add('DefaultDate');
        ts.Add('ReciptEndDate');
        ts.Add('ReciptStartDate');
        ts.Add('ExpireDate');
        ts.Add('DocDate');
        if qryinit.FieldByName('Correlate4EditActive').AsInteger = 4 then
          ts.Add('ReciptDate');
        if qryinit.FieldByName('Correlate4EditActive').AsInteger = 5 then
          ts.Add('AidNumber');

        if qryinit.FieldByName('Correlate4EditActive').AsInteger = 7 then
          ts.Add('PersonID3');
        // Reciptس
        ts.Add('ReciptID');
        ts.Add('UnitSellPrice');
        ts.Add('WaterCo'); // sahand
        ts.Add('ControlCode');
        ts.Add('ItemDate');
        ts.Add('DeficitValue');
        ts.Add('DeficitValue2');
        ts.Add('DeficitValue4');
        ts.Add('DeficitValue3');
        ts.Add('TotalStandardRate');
        ts.Add('StandardRate');
        ts.Add('TotallSellPrice');
        if qryinit.FieldByName('CommissionActive').AsInteger > 0 then
          ts.Add('UnitCommission');
        if qryinit.FieldByName('VATActive').AsInteger >= 1 then
        begin
          ts.Add('TaxCo');
          ts.Add('TaxValue');
        end;
      end;

      for i := 0 to FieldCount - 1 do
        Fields[i].ReadOnly := True;
      for i := 0 to ts.Count - 1 do
        if FindField(ts[i]) <> nil then
          FieldByName(ts[i]).ReadOnly := False;
    finally
      ts.Free;
    end;
end;

procedure MyEditableContolor(MyForm: TForm; qryinit: TDataSet);
var
  ts: TStringList;
  i, k: Integer;
  DataField, s: string;
  grd: TCedarDbgrid;
  b: boolean;
begin
  ts := TStringList.Create;
  With MyForm do
    try
      ts.Text := StringReplace(qryinit.FieldByName('EditableFields').AsString,
        ';', #13, [rfReplaceAll]);

      // Loop through the controls on the formTSpeedButton
      for i := 0 to ComponentCount - 1 do
      begin

        if Components[i] is TDBEdit then
        begin
          DataField := TDBEdit(Components[i]).DataField;
          TDBEdit(Components[i]).ReadOnly := ts.IndexOf(DataField) = -1;
        end
        else if Components[i] is TSpeedButton then
        begin
          s := TSpeedButton(Components[i]).Name;
          DataField := MidStr(s, 4, Length(s) - 3);
          TSpeedButton(Components[i]).Enabled := ts.IndexOf(DataField) <> -1;
        end
        else if Components[i] is TDBLookupComboBox then
        begin
          DataField := TDBLookupComboBox(Components[i]).DataField;
          TDBLookupComboBox(Components[i]).ReadOnly :=
            ts.IndexOf(DataField) = -1;
        end
        else if Components[i] is TDBCheckBox then
        begin
          DataField := TDBCheckBox(Components[i]).DataField;
          TDBCheckBox(Components[i]).ReadOnly := ts.IndexOf(DataField) = -1;
        end
        else if Components[i] is TDBComboBox then
        begin
          DataField := TDBComboBox(Components[i]).DataField;
          TDBComboBox(Components[i]).ReadOnly := ts.IndexOf(DataField) = -1;
        end
        else if Components[i] is TDBMemo then
        begin
          DataField := TDBMemo(Components[i]).DataField;
          TDBMemo(Components[i]).ReadOnly := ts.IndexOf(DataField) = -1;
        end
        else if Components[i] is TCedarDbgrid then
        begin
          grd := TCedarDbgrid(Components[i]);
          for k := 0 to grd.Columns.Count - 1 do
          begin
            b := ts.IndexOf(grd.Columns[k].FieldName) = -1;
            grd.Columns[k].ReadOnly := b;
          end;
        end;

      end;

    finally
      ts.Free;
    end;
end;

function ValidateDatasetDatesRecipts(Dataset: TDataSet;
  qryinit: TADOQuery): boolean;
var
  StartMaliYear, AidDate, DefaultDate, ExpireDate: String;
begin
  AidDate := Dataset.FieldByName('AidDate').AsString;
  if Dataset.FindField('DefaultDate') <> nil then
    DefaultDate := Dataset.FieldByName('DefaultDate').AsString;

  if Dataset.FindField('ExpireDate') <> nil then
  begin
    ExpireDate := Dataset.FieldByName('ExpireDate').AsString;
    Dataset.FieldByName('ExpireDate').AsString :=
      Dataset.FieldByName('ReciptDate').AsString;
  end;

  StartMaliYear := APPBank.StartYear;
  if qryinit.FieldByName('AidInfoControlDate').AsInteger = 0 then
  begin
    Dataset.FieldByName('AidDate').ReadOnly := False;
    Dataset.FieldByName('AidDate').AsString := '';
  end;
  if Dataset.FindField('DefaultDate') <> nil then
    Dataset.FieldByName('DefaultDate').AsString := '';

  StartMaliYear := CHKPriorityReciptDate(Dataset, qryinit);
  Result := ValidateDatasetDates(Dataset, StartMaliYear, APPBank.endYear);
  if not Result then
    Warn('اشكال به علت تقدم و تاٌخر تاريخ یا در تاریخ بزرگتری فرمها دایمی/قطعی هستند،',
      mtInformation);
  if Dataset.State in dsEditModes then
  begin
    Dataset.FieldByName('AidDate').AsString := AidDate;

    if Dataset.FindField('DefaultDate') <> nil then
      Dataset.FieldByName('DefaultDate').AsString := DefaultDate;

    if Dataset.FindField('ExpireDate') <> nil then
      Dataset.FieldByName('ExpireDate').AsString := ExpireDate;

  end;
end;

function ChkCustomerState(qry4Cust: TADOQuery): boolean;
var
  CustIDs: string;
  qry: TADOQuery;
  CustList: TStringList;
  i, ID: Integer;
  FieldNames: array[0..12] of string;   // افزایش اندازه آرایه
begin
  Result := True;

  // لیست کامل فیلدها (قدیمی + جدید)
  FieldNames[0]  := 'PERSONID1';
  FieldNames[1]  := 'PERSONID2';
  FieldNames[2]  := 'PERSONID3';
  FieldNames[3]  := 'PERSONID4';
  FieldNames[4]  := 'PERSONID5';
  FieldNames[5]  := 'CUSTOMERID1';
  FieldNames[6]  := 'CUSTOMERID2';
  FieldNames[7]  := 'CUSTOMERID3';
  FieldNames[8]  := 'CUSTOMERID4';
  FieldNames[9]  := 'DetailCode';
  FieldNames[10] := 'CTopicCode';
  FieldNames[11] := 'CTopicCode2';
  FieldNames[12] := 'ctopiccode3';

  CustList := TStringList.Create;
  try
    CustList.Duplicates := dupIgnore;
    CustList.Sorted := True;
    CustList.Add('0');

    // جمع‌آوری تمام شناسه‌ها
    for i := Low(FieldNames) to High(FieldNames) do
    begin
      if qry4Cust.FindField(FieldNames[i]) <> nil then
      begin
        ID := qry4Cust.FieldByName(FieldNames[i]).AsInteger;
        if ID <> 0 then
          CustList.Add(IntToStr(ID));
      end;
    end;

    CustIDs := CustList.CommaText;

    // اگر فقط صفر داریم
    if CustList.Count <= 1 then
      Exit(True);

    qry := TADOQuery.Create(DMf);
    try
      qry.Connection := theMainConnection;

      qry.SQL.Text :=
        'SELECT CustID, CustName, CustomerState ' +
        'FROM Customers ' +
        'WHERE CustID IN (' + CustIDs + ') ' +
        '  AND CustID <> 0 ' +
        '  AND CustomerState <> 0';

      qry.Open;

      Result := (qry.RecordCount = 0);

      if not Result then
      begin
        Warn('کد (' + qry.Fields[0].AsString + ') ' +
             qry.Fields[1].AsString +
             #13#10 + 'برای ثبت غیر فعال است.',
             mtInformation);
      end;

    finally
      qry.Free;
    end;

  finally
    CustList.Free;
  end;
end;

function ChkCTopicCodeState(qry4CTopic: TADOQuery): boolean;
var
  CTopicCodes: string;
  qry: TADOQuery;
begin
  Result := True;
  CTopicCodes := '0';
  if qry4CTopic.FindField('acc_CTopicCode3') <> nil then
    CTopicCodes := CTopicCodes + ',' + qry4CTopic.FieldByName('acc_CTopicCode3')
      .AsInteger.ToString;

  qry := TADOQuery.Create(DMf);
  With qry do
    try
      Connection := theAccConnection;
      SQL.Text := 'SELECT  CTopicCode3, CTopicName3_L1, CustomerState';
      SQL.Add('FROM Acc.CTopicCode3 ');
      SQL.Add('WHERE (CTopicCode3 IN (' + CTopicCodes +
        '))AND (CTopicCode3 <> 0)');
      SQL.Add('AND (CustomerState <> 0)');
      try
        Open;
      except
        SQL.Text :=
          'ALTER TABLE Acc.CTopicCode3 ADD CustomerState Tinyint  NOT NULL  DEFAULT (0)';
        ExecSQL;
      end;

      Result := RecordCount = 0;
      if not Result then
        Warn('کد (' + qry.Fields[0].AsString + ')' + qry.Fields[1].AsString +
          #13#10 + ' برای ثبت غير فعال است.‏', mtInformation);

    finally
      Free;
    end;

end;

function CHKPriorityReciptDate(Dataset: TDataSet; qryinit: TADOQuery): String;
begin
  // 0-غير فعال
  // 1-فرم غير قابل ويرايش
  // 2-فقط تاريخ غير قابل ويرايش
  // 3-درصورتی که فرم قطعی و دائم داشته باشیم فرم غیر قابل ویرایش
  if qryinit.FieldByName('PriorityReciptDate').AsInteger in [1, 2, 3] then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT MAX(ReciptDate)FROM Recipts ';
      SQL.Add('WHERE((ReciptID <>' + TADOQuery(Dataset).FieldByName('ReciptID')
        .AsString);
      SQL.Add(')OR (ServerID <>' + TADOQuery(Dataset).FieldByName('ServerID')
        .AsString);
      SQL.Add(')OR (YearID   <>' + TADOQuery(Dataset).FieldByName('YearID')
        .AsString + '))');
      SQL.Add('AND (YearID = ' + APPBank.Year.ToString + ' )');
      if (qryinit.FieldByName('RestartFormNumberOnStore').AsInteger = 1) then
        SQL.Add('AND (StoreID =' + TADOQuery(Dataset).FieldByName('StoreID')
          .AsString + ')');

      if qryinit.FieldByName('PriorityReciptDate').AsInteger in [3] then
        SQL.Add('AND (ReciptState > 0)');

      SQL.Add('AND (ReciptType=' + qryinit.FieldByName('ReciptType')
        .AsString + ')');

      Active := True;
      Result := Fields[0].AsString;
      Active := False;
      if (qryinit.FieldByName('PriorityReciptDate').AsInteger = 2) and
        (Dataset.State in dsEditModes) and
        (Result > Dataset.FieldByName('ReciptDate').AsString) and
        not(Dataset.FieldByName('ReciptDate').ReadOnly) then
      begin
        Dataset.FieldByName('ReciptDate').AsString := Result;
        BigMessage('تاريخ تغيير كرد', 1);
      end;

      Dataset.FieldByName('ReciptDate').ReadOnly := Result >=
      /// /  add = for in [3]
        Dataset.FieldByName('ReciptDate').AsString;
    end;

  if qryinit.FieldByName('PriorityReciptDate').AsInteger = 2 then
  begin
    Result := APPBank.StartYear;
  end;

end;

function ValidateDatasetDatesForms(Dataset: TDataSet;
  qryinit: TADOQuery): boolean;
var
  StartMaliYear: String;
begin
  StartMaliYear := CHKPriorityFormDate(Dataset, qryinit);
  Result := ValidateDatasetDates(Dataset, StartMaliYear, APPBank.endYear);
  if not Result then
    Warn('اشكال به علت تقدم و تاٌخر تاريخ ', mtInformation);
end;

function CHKPriorityFormDate(Dataset: TDataSet; qryinit: TADOQuery): String;
begin
  if qryinit.FieldByName('PriorityFormDate').AsInteger in [1, 2] then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT MAX(FormDate)FROM Forms WHERE(FormType=' +
        qryinit.FieldByName('FormType').AsString + ')';
      SQL.Add('AND((FormID <>' + TADOQuery(Dataset).FieldByName('FormID')
        .AsString);
      SQL.Add(')OR (ServerID <>' + TADOQuery(Dataset).FieldByName('ServerID')
        .AsString);
      SQL.Add(')OR (YearID   <>' + TADOQuery(Dataset).FieldByName('YearID')
        .AsString + '))');

      if (qryinit.FieldByName('RestartFormNumberOnCust1').AsInteger = 1) then
        SQL.Add('AND (CustomerID1 =' + TADOQuery(Dataset)
          .FieldByName('CustomerID1').AsString + ')');
      Active := True;
      Result := Fields[0].AsString;
      Active := False;
      if (qryinit.FieldByName('PriorityFormDate').AsInteger = 2) and
        (Dataset.State in dsEditModes) and
        (Result > Dataset.FieldByName('FormDate').AsString) and
        not(Dataset.FieldByName('FormDate').ReadOnly) then
      begin
        Dataset.FieldByName('FormDate').AsString := Result;
        BigMessage('تاريخ تغيير كرد', 1);
      end;

      Dataset.FieldByName('FormDate').ReadOnly := Result >
        Dataset.FieldByName('FormDate').AsString;
    end;

  if qryinit.FieldByName('PriorityFormDate').AsInteger = 2 then
  begin
    Result := APPBank.StartYear;
  end;

end;

procedure SearchReciptNumber(qryinit, qryRecipts: TADOQuery; myStore: TStore);
var
  txt, Cap_tion, cTAXID, cIRTAXID: String;
  b, RestartStore: boolean;
  results: array [0 .. 12] of String;
  ReciptType: Integer;
begin
  if myStore.Code = 0 then
    myStore.Code := qryRecipts.FieldByName('StoreID').AsInteger;
  b := False;
  RestartStore := qryinit.FieldByName('RestartFormNumberOnStore').AsInteger
    in [0, 1, 4];
  ReciptType := qryinit.FieldByName('ReciptType').AsInteger;
  Cap_tion := qryinit.FieldByName('ReciptCaption').AsString;
  cTAXID := ' شماره منحصر به فرد مالیاتی';
  cIRTAXID := ' شماره منحصر مرجع';
  case qryinit.FieldByName('SearchReciptNumber').AsInteger of
    0:
      txt := 'SELECT ReciptID,ServerID,YearID,ReciptNumber,ReciptDate,StoreID,AidNumber,TAXID,IRTAXID FROM Recipts '
        + ' WHERE (ReciptType = ' + IntToStr(ReciptType) + ') ' +
        IfThen(RestartStore, 'AND (StoreID =' + IntToStr(myStore.Code)
        + ')', '');
    1, 2:
      begin
        txt := 'SELECT Recipts.ReciptID,Recipts.ServerID,Recipts.YearID,Recipts.ReciptNumber,Recipts.ReciptDate,Stores.c_StoreName , Recipts.AidNumber,TAXID,IRTAXID '
          + 'FROM Recipts INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID WHERE (Recipts.ReciptType = '
          + IntToStr(ReciptType) + ') ';
        txt := txt + IfThen(RestartStore, 'AND (Recipts.StoreID =' +
          IntToStr(myStore.Code) + ')', '');
      end;
    3, 4:
      begin
        txt := 'SELECT Recipts.ReciptID,Recipts.ServerID,Recipts.YearID, Recipts.ReciptNumber, Recipts.ReciptDate, Stores.c_StoreName, Customers.CustName,Recipts.AidNumber, Recipts.ReciptValue,TAXID,IRTAXID '
          + ' FROM Vu_CustomersGroups as Customers INNER JOIN Recipts ON Customers.CustID = Recipts.PersonID1 INNER JOIN'
          + ' Stores ON Recipts.StoreID = Stores.n_StoreID WHERE (Recipts.ReciptType = '
          + IntToStr(ReciptType) + ') ' + IfThen(RestartStore,
          'AND (Recipts.StoreID =' + IntToStr(myStore.Code) + ')', '');
      end;
    5, 6:
      begin
        txt := 'SELECT Recipts.ReciptID,Recipts.ServerID,Recipts.YearID, Recipts.ReciptNumber, Recipts.ReciptDate,'
          + ' Stores.c_StoreName, Customers.CustName,Customers.ReagentName,' +
          ' SUM (ReciptItems.TotalOutputPrice+ReciptItems.TotalINputPrice)' +
          ' AS Expr1, ISNULL(SUM(ReciptItems.TotallSellPrice), 0) + MAX(ISNULL(adddec.DeficitAdd, 0) - ISNULL(adddec.Deficitdec, 0))'
          + ' AS Expr2, LookUps.Name , Recipts.AidNumber,Recipts.TAXID,IRTAXID '
          + ' FROM       Vu_CustomersGroups as  Customers INNER JOIN' +
          ' Recipts ON Customers.CustID = Recipts.PersonID1 INNER JOIN' +
          ' Stores ON Recipts.StoreID = Stores.n_StoreID LEFT OUTER JOIN' +
          ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID LEFT OUTER JOIN'
          + ' (SELECT ReciptID, SUM(DeficitAdd) AS DeficitAdd, SUM(DeficitDec) AS Deficitdec'
          + ' FROM ReciptsDeficits' +
          ' GROUP BY ReciptID) AS adddec ON Recipts.ReciptID = adddec.ReciptID LEFT OUTER JOIN'
          + ' LookUps ON Recipts.SecondType = LookUps.LookUpID' +
          ' WHERE (Recipts.ReciptType = ' + IntToStr(ReciptType) + ') ' +
          IfThen(RestartStore, 'AND (Recipts.StoreID =' + IntToStr(myStore.Code)
          + ')', '') +
          ' GROUP BY Recipts.PersonID1, Customers.CustName,Customers.ReagentName , Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.StoreID,'
          + ' LookUps.Code, LookUps.Name, Recipts.ReciptID,Recipts.ServerID,Recipts.YearID, Stores.c_StoreName , Recipts.AidNumber ,Recipts.TAXID,Recipts.IRTAXID ';
      end;
    7:
      begin
        txt := 'SELECT Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, Recipts.ReciptNumber, Recipts.ReciptDate,'
          + ' Recipts.PersonID1, Customers.CustName, Recipts.AidNumber, Recipts.AidDate, ReciptItems.AidNumber AS IAidNumber,'
          + ' ReciptItems.AidDate AS IAidDate,TAXID,IRTAXID' +
          ' FROM Vu_CustomersGroups as Customers INNER JOIN' +
          ' Recipts ON Customers.CustID = Recipts.PersonID1 INNER JOIN' +
          ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND'
          + ' Recipts.YearID = ReciptItems.YearID' +
          ' WHERE (Recipts.ReciptType = ' + IntToStr(ReciptType) + ') ' +
          IfThen(RestartStore, 'AND (Recipts.StoreID =' + IntToStr(myStore.Code)
          + ')', '');
      end;
  end;
  // case SearchReciptNumber
  txt := StringReplace(txt, ' WHERE ', ' WHERE (Recipts.YearID =' +
    IntToStr(APPBank.Year) + ')AND', []);

  case qryinit.FieldByName('SearchReciptNumber').AsInteger of
    0:
      b := searchCode_ADOF.SearchCode2(DMf.adcBSell, Cap_tion + 'ها', txt,
        ['', '', '', 'شماره ' + Cap_tion, 'تاريخ', 'انبار',
        qryinit.FieldByName('AidInfoCaptionNo').AsString, cTAXID, cIRTAXID],
        results, [0, 0, 0, 50, 150, 50, 50, 100, 100], alLeft);
    1:
      b := searchCode_ADOF.SearchCode2(DMf.adcBSell, Cap_tion + 'ها', txt,
        ['', '', '', 'شماره ' + Cap_tion, 'تاريخ',
        'نام ' + qryinit.FieldByName('StoreCaption').AsString + '',
        qryinit.FieldByName('AidInfoCaptionNo').AsString, cTAXID, cIRTAXID],
        results, [0, 0, 50, 10, 50, 150, 50, 100, 100], alLeft);
    2:
      b := special_SearchF.SearchCode(DMf.adcBSell, Cap_tion + 'ها', txt,
        ['', '', '', 'شماره ' + Cap_tion, 'تاريخ',
        'نام ' + qryinit.FieldByName('StoreCaption').AsString + '',
        qryinit.FieldByName('AidInfoCaptionNo').AsString, cTAXID, cIRTAXID],
        results, [0, 0, 50, 10, 50, 150, 50, 100, 100], alLeft);
    3:
      b := searchCode_ADOF.SearchCode2(DMf.adcBSell, Cap_tion + 'ها', txt,
        ['', '', '', 'شماره ' + Cap_tion, 'تاريخ',
        'نام ' + qryinit.FieldByName('StoreCaption').AsString + '',
        'نام ' + qryinit.FieldByName('Person1Caption').AsString + '',
        qryinit.FieldByName('AidInfoCaptionNo').AsString, 'مبلغ', cTAXID,
        cIRTAXID], results, [0, 0, 0, 30, 50, 50, 80, 50, 50, 100,
        100], alLeft);
    4:
      b := special_SearchF.SearchCode(DMf.adcBSell, Cap_tion + 'ها', txt,
        ['', '', '', 'شماره ' + Cap_tion, 'تاريخ',
        'نام ' + qryinit.FieldByName('StoreCaption').AsString + '',
        'نام ' + qryinit.FieldByName('Person1Caption').AsString + '',
        qryinit.FieldByName('AidInfoCaptionNo').AsString, 'مبلغ', cTAXID,
        cIRTAXID], results, [0, 0, 0, 30, 50, 50, 80, 50, 50, 100,
        100], alLeft);
    5:
      b := searchCode_ADOF.SearchCode2(DMf.adcBSell, Cap_tion + 'ها', txt,
        ['', '', '', 'شماره ' + Cap_tion, 'تاريخ',
        'نام ' + qryinit.FieldByName('StoreCaption').AsString + '',
        'نام ' + qryinit.FieldByName('Person1Caption').AsString + '',
        'کد کاردکس', 'مبلغ', IfThen(qryinit.FieldByName('DiscountActive')
        .AsInteger = 1, 'مبلغ2', ''), 'نوع',
        qryinit.FieldByName('AidInfoCaptionNo').AsString, cTAXID, cIRTAXID],
        results, [0, 0, 0, 30, 50, 50, 80, 50, 50,
        IfThen(qryinit.FieldByName('DiscountActive').AsInteger = 1, 50, 0), 50,
        50, 100, 100], alLeft);
    6:
      b := special_SearchF.SearchCode(DMf.adcBSell, Cap_tion + 'ها', txt,
        ['', '', '', 'شماره ' + Cap_tion, 'تاريخ',
        'نام ' + qryinit.FieldByName('StoreCaption').AsString + '',
        'نام ' + qryinit.FieldByName('Person1Caption').AsString + '',
        'کد کاردکس', 'مبلغ', IfThen(qryinit.FieldByName('DiscountActive')
        .AsInteger = 1, 'مبلغ2', ''), 'نوع',
        qryinit.FieldByName('AidInfoCaptionNo').AsString, cTAXID, cIRTAXID],
        results, [0, 0, 0, 30, 50, 50, 80, 50, 50,
        IfThen(qryinit.FieldByName('DiscountActive').AsInteger = 1, 50, 0), 50,
        50, 100, 100], alLeft);
    7:
      b := searchCode_ADOF.SearchCode2(DMf.adcBSell, Cap_tion + 'ها', txt,
        ['', '', '', 'شماره ' + Cap_tion, 'تاريخ',
        'كد' + qryinit.FieldByName('Person1Caption').AsString,
        qryinit.FieldByName('Person1Caption').AsString,
        'شماره ' + qryinit.FieldByName('AidInfoCaptionNo').AsString,
        'تاريخ ' + qryinit.FieldByName('AidInfoCaption').AsString,
        '.شماره ' + qryinit.FieldByName('AidInfoCaptionNo').AsString,
        '.تاريخ ' + qryinit.FieldByName('AidInfoCaption').AsString, cTAXID,
        cIRTAXID], results, [0, 0, 0, 80, 80, 80, 250, 80, 80, 80, 80, 100,
        100], alLeft);
  end;
  // case SearchReciptNumber
  if b then
    qryRecipts.Locate('ReciptID;ServerID;YearID',
      VarArrayOf([results[0], results[1], results[2]]), []);
end;

procedure InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits,
  qry_Deficits4Print: TADOQuery; Step: Integer);
begin
  WorkFlowSave(qryRecipts, 2, qryRecipts.FieldByName('ReciptID'),
    qryRecipts.FieldByName('ReciptType').AsInteger);

  InsertReciptsDeficitsCalc(qryRecipts, qryItems, qry_Deficits,
    qry_Deficits4Print, Step);
end;

procedure InsertReciptsDeficitsCalc(qryRecip, qryItems, qry_Deficits,
  qry_Deficits4Print: TADOQuery; Step: Integer);
var
  Def_IDs: String;
  CalcDeficitsVal: Currency;
  PersonID: Integer;
  qryTmpTmp: TADOQuery;
  Settings: Largeint;
begin
  if qryRecip.FieldByName('_HasDeficit').AsInteger <> 1 then
    Exit;
  qryTmpTmp := TADOQuery.Create(qryItems.Owner);
  try
    qryTmpTmp.Connection := theMainConnection;
    qryRecip.DisableControls;
    With qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT ReciptTypes.RecallReciptDeficitsType, ReciptTypes.Settings';
      SQL.Add('FROM Recipts INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');
      SQL.Add('WHERE Recipts.ReciptID=' + qryRecip.FieldByName('ReciptID')
        .AsString);
      SQL.Add('and ServerID = ' + qryRecip.FieldByName('ServerID').AsString);
      SQL.Add('and YearID = ' + qryRecip.FieldByName('YearID').AsString);

      Active := True;
      Def_IDs := Trim(Fields[0].AsString);
      Settings := Fields[1].AsLargeInt;
      Active := False;
    end;
    // With
    if Def_IDs = '' then
      Exit;
    With qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'DELETE FROM ReciptsDeficits WHERE (DeficitID IN (SELECT DeficitID ' +
        'FROM Deficits WHERE (ExportType = 1))) and (DeficitID IN (' + Def_IDs +
        ')) AND (ReciptID = ' + qryRecip.FieldByName('ReciptID').AsString + ')';
      SQL.Add('and ServerID = ' + qryRecip.FieldByName('ServerID').AsString);
      SQL.Add('and YearID = ' + qryRecip.FieldByName('YearID').AsString);

      ExecSQL;
    end; // With
    qry_Deficits.Active := True;
    if ((Settings and Integer(CHKSetCustomer2ExportType)) <> 0) then
      PersonID := qryRecip.FieldByName('PersonID2').AsInteger
    else
      PersonID := qryRecip.FieldByName('PersonID1').AsInteger;

    With qryTmpTmp do
    begin
      Fields.Clear;
      Active := False;

      SQL.Text :=
        'SELECT *,dbo.DeficitsCorrelation3CustID(%d, DeficitID) as DC3C FROM Deficits ';
      SQL.Add('WHERE (dbo.DeficitsCorrelation3CustID(%d, DeficitID) = %d)');
      SQL.Text := Format(SQL.Text, [PersonID, PersonID, PersonID, PersonID]);

      SQL.Add('AND (ExportType IN (1)) AND (DeficitID IN(SELECT DeficitID ');

      SQL.Add('FROM DeficitsCorrelationRecipts ');
      SQL.Add('WHERE ReciptID = ' + qryRecip.FieldByName('ReciptID').AsString);
      SQL.Add('AND ServerID = ' + qryRecip.FieldByName('ServerID').AsString);
      SQL.Add('AND YearID   = ' + qryRecip.FieldByName('YearID').AsString);

      SQL.Add(') ) OR(ExportType IN (1)) AND((SELECT ISNULL(COUNT(DeficitID), 0)  ');
      SQL.Add('FROM DeficitsCorrelation WHERE  kind in (0,1) AND DeficitID IN('
        + Def_IDs + ') ) = 0)');
      SQL.Add('AND DeficitID IN(' + Def_IDs + ') ');

      SQL.Add(Format('AND (StartDate <= %S )',
        [QuotedStr(qryRecip.FieldByName('ReciptDate').AsString)]));
      SQL.Add(Format('AND (EndDate >= %S )',
        [QuotedStr(qryRecip.FieldByName('ReciptDate').AsString)]));

      SQL.Add(' order by DeficitID');

      Active := True;
      while not Eof do
      begin
        CalcDeficitsVal := 0;
        if (PersonID = 0) or (FieldByName('DC3C').AsInteger <> 0) then
          CalcDeficitsVal := CalcDeficits(qryRecip,
            FieldByName('CalculationType').AsInteger, FieldByName('DeficitCo')
            .Value, qryRecip.FieldByName('_CustomersDiscount').AsFloat,
            FieldByName('DeficitID').AsInteger);
        if CalcDeficitsVal <> 0 then
        begin
          qry_Deficits.Insert;
          GetANewID(qry_Deficits, qry_Deficits.Name, 'ReciptsDeficits',
            'ReciptDeficitID', qryRecip, Step);
          qry_Deficits.FieldByName('ReciptID').AsInteger :=
            qryRecip.FieldByName('ReciptID').AsInteger;
          qry_Deficits.FieldByName('ServerID').AsInteger :=
            qryRecip.FieldByName('ServerID').AsInteger;
          qry_Deficits.FieldByName('YearID').AsInteger :=
            qryRecip.FieldByName('YearID').AsInteger;

          qry_Deficits.FieldByName('ArzTypeID').AsInteger :=
            qryRecip.FieldByName('ArzTypeID').AsInteger;

          qry_Deficits.FieldByName('DeficitID').AsInteger :=
            FieldByName('DeficitID').AsInteger;
          if FieldByName('DeficitType').AsInteger = 1 then
          BEGIN
            qry_Deficits.FieldByName('DeficitAdd').Value :=
              RoundTo(CalcDeficitsVal, 0);

            if qryRecip.FieldByName('RialsEqual').AsFloat <> 0 then
              qry_Deficits.FieldByName('ArzAmount').AsFloat :=
                RoundTo(qry_Deficits.FieldByName('DeficitAdd').Value /
                qryRecip.FieldByName('RialsEqual').AsFloat, opt.RoundEntity);

          END
          else
          BEGIN
            qry_Deficits.FieldByName('DeficitDec').Value :=
              RoundTo(CalcDeficitsVal, 0);

            if qryRecip.FieldByName('RialsEqual').AsFloat <> 0 then
              qry_Deficits.FieldByName('ArzAmount').AsFloat :=
                RoundTo(qry_Deficits.FieldByName('DeficitDec').Value /
                qryRecip.FieldByName('RialsEqual').AsFloat, opt.RoundEntity);

          END;
          qry_Deficits.FieldByName('DeficitNote').AsString :=
            'ثبت شده توسط سيستم';
          qry_Deficits.Post;
        end; // if
        Next;
      end; // while
    end; // With
    // FreeReservedCodes(DMf.adcBSell, '', '', qry_Deficits.Name);
    if qry_Deficits4Print <> nil then
      with qry_Deficits4Print do
      begin
        Active := False;
        Parameters.ParamByName('ReciptID').Value :=
          qryRecip.FieldByName('ReciptID').AsInteger;
        Parameters.ParamByName('ServerID').Value :=
          qryRecip.FieldByName('ServerID').AsInteger;
        Parameters.ParamByName('YearID').Value := qryRecip.FieldByName('YearID')
          .AsInteger;
        Active := True;
      end;
    // with
  finally
    qryRecip.EnableControls;
    FreeReservedCodes(DMf.adcBSell, 'ReciptsDeficits', '', qry_Deficits.Name);
    qryTmpTmp.Free;
  end;
end;

procedure PrintBarcode(qryinit, qryItems: TADOQuery; ppReportBarcode: TppReport;
  cliBarcode: TClientDataSet; pdtlbndBarcodeppDetailBand3: TppDetailBand;
  FormInOut, PerFileName: String; FileNameAdd: String);
var
  i, j, aColumn, aRow, ICount, pCount: Integer;
  ReportFileName, s, EntityOrWeight: String;
begin
  if not CheckUserlevel(qryinit.FieldByName('PrintLevelID'), qryItems) then
    Abort;
  ReportFileName := LowerCase(qryinit.FieldByName(PerFileName).AsString);
  ReportFileName := StringReplace(ReportFileName, '.rtm',
    'Barcode' + FileNameAdd + '.rtm', []);
  with ppReportBarcode do
  begin
    Template.FileName := GetReportFileWithPath(ReportFileName);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + ReportFileName + ' نظر يافت نشد.!‏', mtInformation);
      PreviewFormSettings.SinglePageOnly := True;
    finally
    end; // try
  end; // with
  s := get_box('شماره شروع ستون و سطر',
    'شماره شروع ستون  و سطر مورد نظر را به صورت' + #10#13 +
    ' "شماره ستون*شماره سطر"' + #10#13 + ' وارد  كنيد.', '1*1');
  aColumn := StrToInt(MidStr(s, 1, Length(s) - Pos('*', s)));
  aRow := StrToInt(StringReplace(s, IntToStr(aColumn) + '*', '',
    [rfReplaceAll]));

  // if cliBarcode.ProviderName<>EmptyStr then
  // With cliBarcode do
  // begin
  // DSP:=TDataSetProvider.Create(nil);
  // DSP.Name:='DataSetProvider_1';
  // DSP.DataSet:=qryItems;
  // cliBarcode.ProviderName:=DSP.Name;
  /// /    cliBarcode.Fields.GetFieldNames(qryItems.FieldList);
  /// /    cliBarcode.FieldDefList.:=qryItems.FieldDefList
  // Fields.Create(qryItems);
  // cliBarcode.Active:=True;
  // if FileExists(FileName) then  DeleteFile(FileName);
  // cliBarcode.CreateDataSet;
  // cliBarcode.ProviderName:=EmptyStr;
  // DSP.Free;
  // end;

  With cliBarcode do
  begin
    Active := False;
    if FileExists(FileName) then
      DeleteFile(FileName);
    cliBarcode.CreateDataSet;
    Active := True;
    pCount := 0;
    if pdtlbndBarcodeppDetailBand3 <> nil then
      pCount := pdtlbndBarcodeppDetailBand3.PrintCount;
    for i := 0 to (aColumn - 1) * pCount + (aRow - 1) - 1 do
    begin
      Append;
      Fields[0].AsString := '0';
    end; // i
    qryItems.First;
    while not qryItems.Eof do
    begin
      if (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
        Integer(CHkBarCodeOnWeight) <> 0) then
      begin
        if Pos(Entity_Char, qryItems.FieldByName('ItemNote').AsString) > 0 then
          EntityOrWeight := 'Entity'
        else
          EntityOrWeight := 'Weight';
      end
      else
        EntityOrWeight := 'Entity';
      ICount := Ceil(qryItems.FieldByName(FormInOut + EntityOrWeight).AsFloat);
      for j := 1 to ICount do
      begin
        Append;
        for i := 0 to cliBarcode.FieldCount - 1 do
          if (qryItems.FindField(Fields[i].FieldName) <> nil) and
            FieldByName(Fields[i].FieldName).CanModify then
            FieldByName(Fields[i].FieldName).AsWideString :=
              qryItems.FieldByName(Fields[i].FieldName).AsWideString;
      end; // j
      qryItems.Next
    end; // while
  end; // With
  ppReportBarcode.Print;
end;

procedure PrintTax(qryinit, qryItems: TADOQuery; cliBarcode: TClientDataSet);
var
  i, j: Integer;
  _StuffName, _UnitName, _Tax_mu, _NationalStuffCode, StuffCode: String;
  OutputEntity, UnitSellPrice: Real;
begin
  if qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
    Integer(CHkPrintTax) = 0 then
    Exit;

  // aRowCount := StrToInt(ReadConfig(APPID,
  // APPBank.Name + '_ReciptsGridF_PrintTax' + qryinit.FieldByName('ReciptType')
  // .AsString, '0'));
  // if aRowCount = 0 then
  // begin
  // s := get_box('تعداد سطرهای فرم', 'لطفا تعداد سطرهای چاپ را مشخص کنید' + #13+
  // 'در وارد کردن آن دقت نمایید جون براحتی قابل تغییر نیست' + #13+
  // 'بقیه سطرهای اضافه در سطر آخر جمع می شوند و با نام سایر اقلام مشخص می شود',
  // '0');
  // aRowCount := StrToInt(s);
  // SaveConfig(APPID, APPBank.Name + '_ReciptsGridF_PrintTax' +
  // qryinit.FieldByName('ReciptType').AsString, s);
  // end;

  With cliBarcode do
    try
      Active := False;
      if FileExists(FileName) then
        DeleteFile(FileName);
      cliBarcode.CreateDataSet;
      Active := True;
      qryItems.DisableControls;
      qryItems.First;
      OutputEntity := qryItems.FieldByName('OutputEntity').AsFloat;
      _StuffName := qryItems.FieldByName('_StuffName').AsString;
      _UnitName := qryItems.FieldByName('_UnitName').AsString;
      _Tax_mu := qryItems.FieldByName('_Tax_mu').AsString;
      _NationalStuffCode := qryItems.FieldByName('_NationalStuffCode').AsString;
      StuffCode := qryItems.FieldByName('StuffCode').AsString;
      j := 0;
      while not qryItems.Eof do
      begin
        inc(j);
        if j <= opt.PrintTaxCount then
        begin
          Append;
          for i := 0 to cliBarcode.FieldCount - 1 do
            if (qryItems.FindField(Fields[i].FieldName) <> nil) and
              FieldByName(Fields[i].FieldName).CanModify then
              FieldByName(Fields[i].FieldName).AsWideString :=
                qryItems.FieldByName(Fields[i].FieldName).AsWideString;
          Post;
        end
        else
        begin
          Edit;
          FieldByName('StuffCode').AsString := StuffCode;
          FieldByName('_StuffName').AsString := _StuffName;
          FieldByName('_UnitName').AsString := _UnitName;
          FieldByName('_Tax_mu').AsString := _Tax_mu;
          FieldByName('_NationalStuffCode').AsString := _NationalStuffCode;
          FieldByName('c_StuffName').AsString := 'سایر اقلام';
          for i := 0 to cliBarcode.FieldCount - 1 do
            if (Fields[i].FieldName <> 'OutputEntity') and
              (qryItems.FindField(Fields[i].FieldName) <> nil) and
              (FieldByName(Fields[i].FieldName).CanModify) and
              ((FieldByName(Fields[i].FieldName) is TFloatField) or
              (FieldByName(Fields[i].FieldName) is TBCDField)) then
              FieldByName(Fields[i].FieldName).AsFloat :=
                FieldByName(Fields[i].FieldName).AsFloat +
                qryItems.FieldByName(Fields[i].FieldName).AsFloat;

          if OutputEntity <> 0 then
          begin
            cliBarcode.FieldByName('OutputEntity').AsFloat := OutputEntity;
            UnitSellPrice := trunc(cliBarcode.FieldByName('TotalOutputPrice')
              .AsFloat / OutputEntity);
            cliBarcode.FieldByName('UnitSellPrice').AsFloat := UnitSellPrice;
          end;

          FieldByName('TaxCo').AsFloat := qryItems.FieldByName('TaxCo').AsFloat;

          Post;
        end;
        qryItems.Next
      end;
    finally
      qryItems.EnableControls;
      if cliBarcode.State in dsEditModes then
        cliBarcode.Post
    end;
end;

procedure ControlOrderPoint(StuffCode: Largeint; OrderEntity: Real;
  StoreID: Integer);
var
  orderPoint: Real;
begin
  if not opt.ControlOrderPointEntity then
    Exit;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    // SQL.Text := 'SELECT orderPoint,c_StuffName';    // SQL.Add('FROM StuffCoding WHERE c_StuffCode=' + IntToStr(StuffCode));
    SQL.Text := 'SELECT StuffCodingStock.OrderPoint, StuffCoding.c_StuffName';
    SQL.Add('FROM StuffCoding INNER JOIN');
    SQL.Add('StuffCodingStock ON StuffCoding.c_StuffCode = StuffCodingStock.StuffCode');
    SQL.Add('WHERE (StuffCoding.c_StuffCode = :StuffCode) AND (StuffCodingStock.StoreID = :StoreID )');
    Parameters.ParamByName('StuffCode').Value := StuffCode;
    Parameters.ParamByName('StoreID').Value := StoreID;
    Active := True;
    orderPoint := FieldByName('orderPoint').AsFloat;
    if OrderEntity <= orderPoint then
      // Warn('مقدار موجودي به نقطه سفارش رسيده', mtInformation)
      // 'مقدار موجودي به نقطه سفارش رسيده‏' + #13#10 +
      initDesktopAlert(0, Format('كد كالا = %d  %s ',
        [StuffCode, FieldByName('c_StuffName').AsString]) + #13#10 +
        Format('مقدار سفارش = %f ', [OrderEntity]) + #13#10 +
        Format('نقطه سفارش = %f ', [orderPoint]), nil, 2000,
        False { dapBottomLeft } );
    Active := False;
  end;

end;

function GetSumGridFields(grd: TDBGrid; sgrd: TSumGrid): String;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to grd.Columns.Count - 1 do
  begin
    if (grd.Columns[i].Visible) and
      (Pos(LowerCase(grd.Columns[i].FieldName + ';'), LowerCase(sgrd.FieldsName)
      ) <> 0) then
      Result := Result + grd.Columns[i].FieldName + ';';
  end;
  sgrd.FieldsName := Result;
end;

procedure initReportName(qry: TADOQuery; PopMnu: TPopupMenu;
  mnu4Click: TNotifyEvent);
var
  i: Integer;
  tsCaption, tsFile: TStringList;
  NewItem: TMenuItem;
begin
  tsCaption := TStringList.Create;
  tsFile := TStringList.Create;
  tsFile.Text := StringReplace(qry.FieldByName('OtherRptFiles').AsString, ';',
    #13, [rfReplaceAll]);
  tsCaption.Text := StringReplace(qry.FieldByName('OtherRptCaptions').AsString,
    ';', #13, [rfReplaceAll]);
  try
    for i := 0 to tsFile.Count - 1 do
      with NewItem do
      begin
        NewItem := TMenuItem.Create(PopMnu);
        Hint := tsFile[i];
        Caption := tsCaption[i];
        OnClick := mnu4Click;
        PopMnu.Items.Add(NewItem);
      end;
  finally
    tsCaption.Free;
    tsFile.Free;
  end;
end;

function IsCorrelateReciptType(qryinit: TADOQuery): boolean;
var
  qry: TADOQuery;
begin
  Result := True;
  if IsSendingMoadiyan then
    Exit;
  if qryinit.FieldByName('RepelInsertRecipt').AsInteger = 0 then
    Exit;
  qry := TADOQuery.Create(DMf);
  with qry do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT ReciptTypes.ReciptCaption';
      SQL.Add('FROM ReciptTypes INNER JOIN');
      SQL.Add('ReciptTypes AS ReciptTypes_1 ON ReciptTypes.CorrelateReciptType = ReciptTypes_1.ReciptType');
      SQL.Add('WHERE (ReciptTypes.CorrelateReciptType = ' +
        qryinit.FieldByName('ReciptType').AsString +
        ') AND (ReciptTypes.CorrelateKind > 0)');

      SQL.Add('AND not(ReciptTypes.TemplateCode in(13))');

      Active := True;
      Result := Fields[0].AsString = EmptyStr;
      if not Result then
        Warn('اين فرم از طريق ' + Fields[0].AsString + ' ثبت مي شود.!‏');
      Active := False;
    finally
      qry.Free;
    end;
  // try
end;

function EditCorrelateReciptType(qryinit: TADOQuery): boolean;
var
  qry: TADOQuery;
begin
  Result := True;
  if ((qryinit.FieldByName('ChangeAidReciptDate').AsLargeInt and
    Integer(CHkEditCorrelateReciptType)) = 0) then
    Exit;
  qry := TADOQuery.Create(DMf);
  with qry do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT ReciptTypes.ReciptCaption';
      SQL.Add('FROM ReciptTypes INNER JOIN');
      SQL.Add('ReciptTypes AS ReciptTypes_1 ON ReciptTypes.CorrelateReciptType = ReciptTypes_1.ReciptType');
      SQL.Add('WHERE (ReciptTypes.CorrelateReciptType = ' +
        qryinit.FieldByName('ReciptType').AsString +
        ') AND (ReciptTypes.CorrelateKind > 0)');

      SQL.Add('AND not(ReciptTypes.TemplateCode in(13))');

      Active := True;
      Result := Fields[0].AsString = EmptyStr;
      if not Result then
        Warn('اين فرم از طريق ' + Fields[0].AsString +
          ' ثبت مي شود و قابل ویرایش نیست.!‏');
      Active := False;
    finally
      qry.Free;
    end;
  // try
end;

function IsCorrelateFormType(qryinit: TADOQuery): boolean;
var
  qry: TADOQuery;
begin
  Result := True;
  if IsSendingMoadiyan then
    Exit;

  if ((qryinit.FieldByName('FormRegistrationControls').AsLargeInt and
    Integer(CHkRepelInsertForm)) <> 0) then
  begin
    Result := False;
    Warn('اين فرم از طريق فرم دیگری ثبت مي شود.!‏');
    Exit;
  end;
  qry := TADOQuery.Create(DMf);
  with qry do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT FT1.FormCaption';
      SQL.Add('FROM FormTypes INNER JOIN');
      SQL.Add('FormTypes AS FT1 ON (FormTypes.FormType = FT1.CorrelateFormType OR FormTypes.FormType = FT1.PostOverallType)');
      SQL.Add('WHERE (FormTypes.FormType =  ' + qryinit.FieldByName('FormType')
        .AsString + ')');

      Active := True;
      Result := Fields[0].AsString = EmptyStr;
      if not Result then
        Warn('اين فرم از طريق ' + Fields[0].AsString + ' ثبت مي شود.!‏');
      Active := False;
    finally
      qry.Free;
    end;
  // try
end;

function GetParentReciptID(qryRecipts: TDataSet; CheckDocNo: boolean): Integer;
begin
  with TADOQuery.Create(DMf) do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'Select ParentReciptID,ParentCoReciptID from Recipts';
      SQL.Add('WHERE ReciptID=' + qryRecipts.FieldByName('ReciptID').AsString);
      SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
      SQL.Add(' AND  YearID=' + qryRecipts.FieldByName('YearID').AsString);
      if CheckDocNo then
        SQL.Add('AND (DocNo = 0)');
      Active := True;
      Result := Fields[0].AsInteger;
      // به علت كنترل موجودي فرم ضرائب اين قسمت غير فعال شد.
      // عدم جلوگیری از حذف در صورت غیر فعال شدن
      if Result = 0 then
        Result := Fields[1].AsInteger;
    finally
      Free;
    end;

end;

procedure CopyPaste(qryForms, qryFormItems: TADOQuery; DBGrid: TDBGrid;
  AddKindWeek: AddDateKind);
var
  qry: TADOQuery;
  i: Integer;
  ts: TStrings;
  CheckDate: TDateTime;
begin
  ts := TStringList.Create;
  if not(qryForms.State in dsEditModes) then
    qryForms.Edit;
  if (qryFormItems.State in dsEditModes) then
    qryFormItems.Post;
  qry := TADOQuery.Create(DMf);
  try
    with qry do
    begin
      Clone(qryFormItems, ltReadOnly);
      Filter := 'FormItemID =' + qryFormItems.FieldByName('FormItemID')
        .AsString;
      Filtered := True;
      qryFormItems.Append;
      for i := 0 to DBGrid.Columns.Count - 1 do
        if (not DBGrid.Columns[i].ReadOnly) and (DBGrid.Columns[i].Visible) and
          (qryFormItems.FieldByName(DBGrid.Columns[i].FieldName)
          .FieldKind = fkData) then
          qryFormItems.FieldByName(DBGrid.Columns[i].FieldName).Value :=
            FieldByName(DBGrid.Columns[i].FieldName).Value;
      qryFormItems.FieldByName('CheckNumber').AsInteger :=
        StrToInt(Trim(qryFormItems.FieldByName('CheckNumber').AsString)) + 1;

      case AddKindWeek of
        AddMonth:
          begin
            ts.Text := StringReplace(qryFormItems.FieldByName('CheckDate')
              .AsString, '/', #13, [rfReplaceAll]);

            if ts[1] = '12' then
            begin
              ts[1] := '01';
              ts[0] := IntToStr(StrToInt(ts[0]) + 1);
            end
            else
              ts[1] := RightStr('0' + IntToStr(StrToInt(ts[1]) + 1), 2);
            ts.Text := Trim(ts.Text);
            ts.Text := ts[0] + '/' + ts[1] + '/' + ts[2];
            qryFormItems.FieldByName('CheckDate').AsString :=
              Date1400Cnv(ts.Text);

          end;
        AddWeek:
          begin
            CheckDate := Shamsi2Miladi(qryFormItems.FieldByName('CheckDate')
              .AsString);
            CheckDate := IncDay(CheckDate, 7);
            qryFormItems.FieldByName('CheckDate').AsString :=
              Date1400Cnv(miladi2Shamsi(CheckDate));
          end;

      end;

    end;
  finally
    qry.Free;
    ts.Free;
  end; // try
end;

procedure FnCorrelate4EditActiveDelete(qryRecipts: TADOQuery;
  Correlate4EditActive: Byte);
var
  i: Integer;
begin
  if Correlate4EditActive <> 3 then
    Exit;
  // if not OkDelete(qryRecipts.FieldByName('ParentReciptID').AsInteger) then Abort;
  // if qryRecipts.FieldByName('ReciptID').AsInteger<qryRecipts.FieldByName('ParentReciptID').AsInteger then begin
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'delete Recipts where ReciptID=' +
      IntToStr(GetParentReciptID(qryRecipts, False));
    SQL.Add('AND ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add('AND YearID  =' + qryRecipts.FieldByName('YearID').AsString);
    i := ExecSQL;
    if i > 0 then
    begin
      SQL.Text := 'update Recipts set ParentReciptID=null where  ReciptID=' +
        IntToStr(qryRecipts.FieldByName('ReciptID').AsInteger);
      SQL.Add('AND ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
      SQL.Add('AND YearID  =' + qryRecipts.FieldByName('YearID').AsString);
      ExecSQL;
    end;
    // qryRecipts.FieldByName('ParentReciptID').AsString:='';
    if i > 1 then
      Warn('اشكال در ثبت فرمهاي مرتبط', mtError);
    Active := False;
  end;
  // end;
end;

function OkDelete(qry: TDataSet; ParentReciptID: boolean; ReciptItemID: Integer;
  changeState: boolean = False): boolean;
var
  formName: string;
begin
  With TADOStoredProc.Create(nil) do
  begin
    Connection := DMf.adcBSell;
    ProcedureName := 'ReciptsOk4Delete;1';
    Parameters.Refresh;
    Parameters.ParamByName('@ReciptID').Value := qry.FieldByName('ReciptID')
      .AsInteger;
    if ParentReciptID then
      Parameters.ParamByName('@ReciptID').Value :=
        qry.FieldByName('ParentReciptID').AsInteger;
    Parameters.ParamByName('@ServerID').Value := qry.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('@YearID').Value := qry.FieldByName('YearID')
      .AsInteger;

    Parameters.ParamByName('@ReciptItemID').Value := ReciptItemID;
    Parameters.ParamByName('@OkDelete').Value := 1;
    Parameters.ParamByName('@FormName').Value := EmptyStr;
    ExecProc;
    Result := Parameters.ParamByName('@OkDelete').Value = 1;
    formName := VarToStr(Parameters.ParamByName('@FormName').Value);
    Warn2(formName);
    if changeState and (not Result) then
      if get_response('بعلت استفاده از اطلاعات اين فرم در ' + formName +
        ' مجاز به حذف/باطل/ویرایش نمي‏باشيد!.‏' + #13#10 +
        'آيا براي باطل نمودن همه فرمهای فراخوان شده و  فرم مرتبط اين فرم مطمئن هستيد؟')
        = mrYes then
      begin
        ProcedureName := 'ReciptsOk4DeleteStateTo3;1';
        Parameters.Refresh;
        Parameters.ParamByName('@ReciptID').Value := qry.FieldByName('ReciptID')
          .AsInteger;
        if ParentReciptID then
          Parameters.ParamByName('@ReciptID').Value :=
            qry.FieldByName('ParentReciptID').AsInteger;
        Parameters.ParamByName('@ServerID').Value := qry.FieldByName('ServerID')
          .AsInteger;
        Parameters.ParamByName('@YearID').Value := qry.FieldByName('YearID')
          .AsInteger;

        Parameters.ParamByName('@ReciptItemID').Value := ReciptItemID;
        Parameters.ParamByName('@CountUpDate').Value := 0;
        Parameters.ParamByName('@FormName').Value := EmptyStr;
        ExecProc;
        Result := Parameters.ParamByName('@CountUpDate').Value > 0;
        formName := VarToStr(Parameters.ParamByName('@FormName').Value);
        Warn('فرم های  ' + formName + ' باطل شد ');
      end;

    Free;
  end;
  // With
end;

procedure DeleteCorrelateRecipt(qryinit, qryRecipts: TADOQuery);
var
  ReciptID, ServerID, YearID, i: Integer;
begin
  if get_response('آيا براي حذف فرم مرتبط اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
  if ((opt.ConfigSettings and Integer(CHkCsFillParentReciptID)) = 0) then
    if ChkIsStepCorrelate(qryRecipts) then
    begin
      Warn('امكان پذير نيست', mtError);
      Exit;
    end;
  if not OkDelete(qryRecipts, True, 0) then
    Exit;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Delete Recipts WHERE ParentReciptID =' + qryRecipts.FieldByName
      ('ReciptID').AsInteger.ToString;
    SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
    SQL.Add(' AND (ReciptState=0) AND (DocNo = 0)');
    i := ExecSQL;
    if i > 0 then
    begin
      SQL.Text := 'UPDATE Recipts SET ParentReciptID = NULL  WHERE  ReciptID= '
        + qryRecipts.FieldByName('ReciptID').AsString;
      SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
      SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
      ExecSQL;
    end;
    Active := False;
  end; // with
  qryRecipts.Requery;
  qryRecipts.Locate('ReciptID;ServerID;YearID',
    VarArrayOf([ReciptID, ServerID, YearID]), []);
  BigMessage(i.ToString + 'فرم مرتبط  حذف شد.', 1);
end;

procedure DeleteCorrelateConversionCo(qryinit, qryRecipts: TADOQuery);
var
  ReciptID, ServerID, YearID, i: Integer;
begin
  if get_response('آيا براي حذف فرم ضرائب اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
  // if ChkIsStepCorrelate(qryRecipts) then
  // begin
  // Warn('امكان پذير نيست', mtError);
  // Exit;
  // end;
  if not OkDelete(qryRecipts, True, 0) then
    Exit;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Delete Recipts WHERE ReciptID =' + qryRecipts.FieldByName
      ('ParentCoReciptID').AsInteger.ToString;
    SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
    i := ExecSQL;
    SQL.Text := 'UPDATE Recipts SET ParentCoReciptID = NULL  WHERE  ReciptID= '
      + qryRecipts.FieldByName('ReciptID').AsString;
    SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
    ExecSQL;
    Active := False;
  end; // with
  qryRecipts.Requery;
  qryRecipts.Locate('ReciptID;ServerID;YearID',
    VarArrayOf([ReciptID, ServerID, YearID]), []);
  BigMessage(i.ToString + 'فرم ضرائب  حذف شد.', 1);
end;

function New_RecoverPittedCode(groupID: Integer; CodeName, formName: String)
  : Largeint;
begin
  With TADOStoredProc.Create(nil) do
  begin
    Connection := DMf.adcBSell;
    ProcedureName := 'GetNew' + CodeName;
    Parameters.Refresh;
    Parameters.ParamByName('@' + CodeName + 'GroupID').Value := groupID;
    Parameters.ParamByName('@ID').Value := 0;
    Parameters.ParamByName('@UserID').Value := User.ID;

    Parameters.ParamByName('@Year').Value := APPBank.Year;

    Parameters.ParamByName('@Ip').Value := StringReplace(getIP, '.', '',
      [rfReplaceAll]);
    Parameters.ParamByName('@FormName').Value := formName;
    ExecProc;
    Result := Parameters.ParamByName('@ID').Value;
    Free;
  end;
end;

procedure Sp_UpdateChildFromFather(ChildRecipt_ID: Largeint;
  qryRecipts: TADOQuery);
begin
  if (qryRecipts.FieldByName('DocNo').AsInteger = 0) and
    (qryRecipts.FieldByName('ReciptState').AsInteger = 0) then
    With TADOStoredProc.Create(nil) do
    begin
      Connection := DMf.adcBSell;
      ProcedureName := 'Sp_UpdateChildFromFather';
      Parameters.Refresh;
      Parameters.ParamByName('@ChildRecipt_ID').Value := ChildRecipt_ID;
      ExecProc;
      Free;
    end
  else
    Warn('فرم باید موقت باشد و ثبت سند نشده باشد');
end;

function ReMainPersonRecipt(NewReMain: Currency; qryRecipts, qryinit: TDataSet;
  IsPrint: boolean; LblHint: TLabel; ActiveID: boolean = True): Currency;
var
  qry: TADOQuery;
  PersonID: Integer;
begin
  Result := 0;
  if (qryRecipts.FindField('PersonID2Bed') <> nil) and
    (qryRecipts.FieldByName('PersonID2Bed').AsInteger = 1) then
    PersonID := qryRecipts.FieldByName('PersonID2').AsInteger
  else
    PersonID := qryRecipts.FieldByName('PersonID1').AsInteger;

  if PersonID = 0 then
    Exit;
  if qryRecipts.FieldByName('ReciptDate').AsString = EmptyStr then
    Exit;
  qry := TADOQuery.Create(DMf);
  with qry do
  begin
    Connection := DMf.adcBSell;
    Active := False;
    if IsPrint then
    begin
      SQL.Text := 'SELECT sum(bed)-SUM( bes) AS  ReMain ';
      SQL.Add('FROM dbo.AllAccount( 10 , -1 , -1 , -1 , :CustIDFrom , :CustIDTo ,');
      SQL.Add(':DateFrom , :DateTo, ''0'' , :YearIDFrom   , :YearIDTo , ');
      SQL.Add(' DEFAULT, DEFAULT, DEFAULT, DEFAULT ,DEFAULT) AS AllAccount_1');
      if ActiveID then
        SQL.Add(' Where not (serverid= :ServerID  and formid=:ReciptID) ');
      Parameters.ParamByName('DateFrom').Value := '0';
      // Parameters.ParamByName('DateFrom1').Value := '0';
    end
    else
    begin
      if qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
        Integer(CHKCreditBalance) <> 0 then
      begin
        SQL.Text :=
          'SELECT Balance AS ReMain FROM dbo.Fn_rptCustomersBalance ( ';
        SQL.Add(' :CustIDFrom , :CustIDTo , :DateTo, :YearIDFrom , :YearIDTo ,');
        SQL.Add('DEFAULT, DEFAULT , DEFAULT , DEFAULT , ');
        SQL.Add('DEFAULT , DEFAULT , DEFAULT');
        SQL.Add(', DEFAULT , DEFAULT , DEFAULT , :ServerID , :ReciptID )');

      end
      else
      begin
        SQL.Text := 'SELECT sum(bed)-SUM( bes) AS  ReMain ';
        SQL.Add('FROM dbo.AllAccount( :DocType1 , :DocType2 , :DocType3 , :DocType4 , :CustIDFrom , :CustIDTo ,');
        SQL.Add(':DateFrom , :DateTo,  ''0''  , :YearIDFrom   , :YearIDTo , ');
        SQL.Add('DEFAULT, DEFAULT, DEFAULT, DEFAULT,DEFAULT) AS AllAccount_1');
        if ActiveID then
          SQL.Add(' Where not (serverid= :ServerID  and formid=:ReciptID) ');
        Parameters.ParamByName('DocType1').Value := opt.DocType1;
        Parameters.ParamByName('DocType2').Value := opt.DocType2;
        Parameters.ParamByName('DocType3').Value := opt.DocType3;
        Parameters.ParamByName('DocType4').Value := opt.DocType4;
        Parameters.ParamByName('DateFrom').Value := '0';
        // Parameters.ParamByName('DateFrom1').Value := '0';

      end;

    end;
    if ActiveID then
    begin
      Parameters.ParamByName('ServerID').Value :=
        qryRecipts.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('ReciptID').Value :=
        qryRecipts.FieldByName('ReciptID').AsInteger;
    end;
    Parameters.ParamByName('CustIDFrom').Value := PersonID;
    Parameters.ParamByName('CustIDTo').Value := PersonID;
    Parameters.ParamByName('DateTo').Value :=
      qryRecipts.FieldByName('ReciptDate').AsString;
    Parameters.ParamByName('YearIDFrom').Value :=
      qryRecipts.FieldByName('YearID').AsInteger;
    Parameters.ParamByName('YearIDTo').Value := qryRecipts.FieldByName('YearID')
      .AsInteger;
    Active := True;
    Result := FieldByName('ReMain').AsCurrency + NewReMain;
    Active := False;
    if LblHint <> nil then
    begin
      SQL.Text := 'SELECT case DocType';
      SQL.Add('when 10 then ''بدهي تعهدي ''');
      SQL.Add('when 3 then ''چكهاي نزد بانك''');
      SQL.Add('when 4 then ''چكهاي نزد صندوق ''');
      SQL.Add('when 11 then ''چكهاي برگشتي ''');
      SQL.Add('when 12 then ''چكهاي واگذاري به مشتري ''');
      SQL.Add('else ''ساير''		 end as txt ,');
      SQL.Add('SUM( AllAcc.bed - AllAcc.bes ) AS TotalBalance');
      SQL.Add('FROM	dbo.AllAccount( 10 ,3,4 ,11 , :CustIDFrom , :CustIDTo ,');
      SQL.Add(':DateFrom , :DateTo, :DateFrom1 , :YearIDFrom   , :YearIDTo, DEFAULT, DEFAULT, DEFAULT, DEFAULT,DEFAULT) AS AllAcc INNER JOIN');
      SQL.Add('Customers ON AllAcc.CustomerID1 = Customers.CustID INNER JOIN');
      SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
      SQL.Add('GROUP BY doctype');
      SQL.Add('order by doctype desc');
      Parameters.ParamByName('CustIDFrom').Value := PersonID;
      Parameters.ParamByName('CustIDTo').Value := PersonID;
      Parameters.ParamByName('DateTo').Value :=
        qryRecipts.FieldByName('ReciptDate').AsString;
      Parameters.ParamByName('DateFrom').Value := '0';
      Parameters.ParamByName('DateFrom1').Value := '0';
      Parameters.ParamByName('YearIDFrom').Value :=
        qryRecipts.FieldByName('YearID').AsInteger;
      Parameters.ParamByName('YearIDTo').Value :=
        qryRecipts.FieldByName('YearID').AsInteger;
      Active := True;
      LblHint.Hint := #10#13;
      while not Eof do
      begin
        LblHint.Hint := LblHint.Hint + FieldByName('txt').AsString + ' : ' +
          CurrToStrF(FieldByName('TotalBalance').AsCurrency, ffCurrency,
          0) + #10#13;
        Next;
      end;
    end;

    Free;
  end; // with
end;

function ReMainPersonPaymentCash(PersonID: Integer; Date: String;
  DocTypeA: array of Integer): Currency;
var
  qry: TADOQuery;
begin
  Result := 0;
  if Date = EmptyStr then
    Exit;
  qry := TADOQuery.Create(DMf);
  with qry do
  begin
    Connection := DMf.adcBSell;
    LockType := ltReadOnly;
    Active := False;
    SQL.Text := 'SELECT (sum(bed)-SUM( bes)) AS  ReMain ';
    SQL.Add('FROM dbo.AllAccount( :DocType1 , :DocType2 , :DocType3 , :DocType4 , :CustIDFrom , :CustIDTo ,');
    SQL.Add(':DateFrom , :DateTo, :DateFrom1 , :YearIDFrom   , :YearIDTo , DEFAULT, DEFAULT, DEFAULT, DEFAULT,DEFAULT ) AS AllAccount_1');

    Parameters.ParamByName('DocType1').Value := DocTypeA[0];
    // opt.DocType1;
    Parameters.ParamByName('DocType2').Value := DocTypeA[1];
    // opt.DocType2;
    Parameters.ParamByName('DocType3').Value := DocTypeA[2];
    // opt.DocType3;
    Parameters.ParamByName('DocType4').Value := DocTypeA[3];
    // opt.DocType4;
    Parameters.ParamByName('CustIDFrom').Value := PersonID;
    Parameters.ParamByName('CustIDTo').Value := PersonID;
    Parameters.ParamByName('DateFrom').Value := '0000/00/00';
    Parameters.ParamByName('DateTo').Value := Date;
    Parameters.ParamByName('DateFrom1').Value := '0000/00/00';
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Active := True;
    Result := FieldByName('ReMain').AsCurrency;
    Active := False;
    Free;
  end;
  // with
end;

procedure StuffCodeUnic(qryRecipts, qryItem, qryinit: TADOQuery;
  CheckAllRow: boolean = True);
var
  PreReciptItemID: Largeint;
  qry: TADOQuery;
begin
  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 1 then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(StuffCode) AS StuffCodeCOUNT ,StuffCode';
      SQL.Add('FROM ReciptItems');
      SQL.Add('Where (ReciptID =' + qryRecipts.FieldByName('ReciptID')
        .AsString + ')');
      SQL.Add('AND ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
      SQL.Add('AND YearID  =' + qryRecipts.FieldByName('YearID').AsString);
      SQL.Add('GROUP BY  StuffCode');
      SQL.Add('ORDER BY COUNT(StuffCode) DESC');
      Active := True;
      if Fields[0].AsInteger > 1 then
      begin
        Warn2('كد كالاي ' + Fields[1].AsString + ' تکراري است', 0);
      end;
      Active := False;
    end;
  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 2 then
  begin
    qry := TADOQuery.Create(qryRecipts.Owner);
    with qry do
      try
        Clone(qryItem, ltReadOnly);
        PreReciptItemID := 0;
        Sort := 'preReciptItemID';
        First;
        while not Eof do
        begin
          if FieldByName('preReciptItemID').AsInteger <> PreReciptItemID then
            PreReciptItemID := FieldByName('preReciptItemID').AsInteger
          else
          begin
            Warn('فراخوانی تکراری انجام شده و قابل ثبت نیست' + #13#10 +
              'کد کالا=' + FieldByName('StuffCode').AsString);
            Abort;
          end;
          Next;
        end;

      finally
        qry.Free;
      end;
  end;
  if (qryinit.FieldByName('UnicCodeCheck').AsInteger = 3) and
    (qryItem.FieldByName('StuffCode').AsLargeInt <> 0) then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(Ri.StuffCode) AS StuffCodeCOUNT ,Ri.StuffCode';
      SQL.Add('FROM ReciptItems AS Ri INNER JOIN ');
      SQL.Add('Recipts AS R ON Ri.ReciptID = R.ReciptID AND Ri.ServerID = R.ServerID AND Ri.YearID = R.YearID');
      SQL.Add('Where (R.ReciptType =' + qryRecipts.FieldByName('ReciptType')
        .AsString + ')');
      SQL.Add('AND Ri.YearID  =' + qryRecipts.FieldByName('YearID').AsString);
      if not CheckAllRow then
      begin
        SQL.Add('AND Ri.StuffCode  =' + qryItem.FieldByName('StuffCode')
          .AsLargeInt.ToString);
        SQL.Add('AND Ri.ID  <>' + qryItem.FieldByName('ID')
          .AsLargeInt.ToString);
      end;
      SQL.Add('GROUP BY  Ri.StuffCode');
      SQL.Add('ORDER BY COUNT(Ri.StuffCode) DESC');

      Active := True;

      // if not UnicStuffCode(qryItem) then
      // Abort;

      if Fields[0].AsInteger > 1 then
      begin
        Warn('كد كالاي ' + Fields[1].AsString + ' در این سال تکراري است' +
          #13#10 + 'تعداد تکرار=' + Fields[0].AsString, mtInformation);
        Abort;
      end;
      Active := False;
    end;

end;

// function UnicStuffCode(qryItem :TADOQuery):Boolean;
// var
// ReciptItemID : string;
// begin
// With TADOQuery.Create(DMf.adcBSell) do
// try
// result := True;
// Clone(qryItem, ltBatchOptimistic);
// ReciptItemID := qryItem.FieldByName('ReciptItemID').AsLargeInt.ToString;
// Filter := 'StuffCode=' + qryItem.FieldByName('StuffCode').AsString;
// if ReciptItemID <> '0' then
// Filter := Filter + ' AND ReciptItemID = ' + ReciptItemID;
// Filtered := True;
// if (qryItem.State in [dsInsert]) then
// result := RecordCount <= 0;
/// /      if (qryItem.FieldByName('StuffCode').AsString <> BeforeEdtCode)
// //      and (BeforeEdtCode <> EmptyStr) then
// //    result := RecordCount = 0;
// if Not result then
// Warn('كد كالاي تكراري', mtInformation);
// finally
// Free;
// end;
//
// end;

procedure SetExtraCoding(qry: TADOQuery; grd: TDBGrid);
var
  i: Byte;
  b: boolean;
begin
  for i := 1 to 9 do
  begin
    qry.FieldByName('sd' + IntToStr(i)).DisplayLabel :=
      opt.ExtraCoding.Captions[i];
    b := opt.ExtraCoding.Captions[i] <> '';
    setColumns2(grd, b, 'sd' + IntToStr(i));
    if b then
      qry.FieldByName('sd' + IntToStr(i)).Tag := 3;
  end;
end;

procedure SetExtraCoding(qry: TDataSet; grd: TCedarDbgrid);
var
  i: Byte;
  b: boolean;
begin
  for i := 1 to 9 do
  begin
    if qry.FindField('sd' + IntToStr(i)) <> nil then
    begin
      qry.FieldByName('sd' + IntToStr(i)).DisplayLabel :=
        opt.ExtraCoding.Captions[i];
      b := opt.ExtraCoding.Captions[i] <> '';
      setColumns2(grd, b, 'sd' + IntToStr(i));
      if b then
        qry.FieldByName('sd' + IntToStr(i)).Tag := 3;
    end;
  end;
end;

procedure LoadTableFromZip(qry4Update: TADOQuery; TableName: String;
  fldName1, fldName2: String; OnlyInsert: boolean; msg: string);
var
  ZipName, FPath: String;
  jsonadapter: TJSONDatasetAdapter;
  aDataSet: TClientDataSet;
  keyValues: array of Variant;
  keyFound: boolean;
  locateFields: String;
  srcField: TField;
begin
  if (msg <> '') and (get_response(msg) <> mrYes) then
    Exit;

  ZipName := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))) +
    'FaraTables\' + TableName + '.zip';

  if not FileExists(ZipName) then
  begin
    Warn('فايل ' + TableName + '.zip پيدا نشد!');
    Exit;
  end;

  // استخراج فایل JSON از زیپ
  UnZipFiles(ZipName, __TheTempDIR, '213378');
  FPath := IncludeTrailingBackslash(__TheTempDIR) + TableName + '.json';

  if not FileExists(FPath) then
  begin
    Warn('فايل ' + TableName + '.json در آرشیو یافت نشد!');
    Exit;
  end;

  jsonadapter := TJSONDatasetAdapter.Create(nil);
  aDataSet := TClientDataSet.Create(nil);
  try
    jsonadapter.Dataset := aDataSet;
    jsonadapter.JSON.Text := TFile.ReadAllText(FPath);

    jsonadapter.UpdateDataset;

    if not aDataSet.Active then
    begin
      Warn('داده‌های JSON حاوی ساختار نامعتبر است یا فیلدی ندارد.');
      Exit;
    end;

    aDataSet.First;
    while not aDataSet.Eof do
    begin
      keyFound := False;

      // بررسی کلیدها
      if (fldName1 <> '') or (fldName2 <> '') then
      begin
        SetLength(keyValues, 0);
        locateFields := '';

        if fldName1 <> '' then
        begin
          if aDataSet.FindField(fldName1) = nil then
            raise Exception.Create('فیلد کلیدی "' + fldName1 +
              '" در JSON یافت نشد!');
          keyValues := keyValues + [aDataSet.FieldByName(fldName1).Value];
          locateFields := fldName1;
        end;

        if fldName2 <> '' then
        begin
          if aDataSet.FindField(fldName2) = nil then
            raise Exception.Create('فیلد کلیدی "' + fldName2 +
              '" در JSON یافت نشد!');
          keyValues := keyValues + [aDataSet.FieldByName(fldName2).Value];
          if locateFields <> '' then
            locateFields := locateFields + ';';
          locateFields := locateFields + fldName2;
        end;

        keyFound := qry4Update.Locate(locateFields, VarArrayOf(keyValues), []);
      end;

      // Insert یا Edit
      if keyFound then
      begin
        if OnlyInsert then
        begin
          aDataSet.Next;
          Continue;
        end;
        qry4Update.Edit;
      end
      else
        qry4Update.Insert;

      // کپی فیلدها
      for srcField in aDataSet.Fields do
      begin
        if (srcField.FieldKind = fkData) and (not srcField.ReadOnly) then
        begin
          if qry4Update.FindField(srcField.FieldName) <> nil then
          begin
            if not(srcField.IsNull or SameText(Trim(VarToStr(srcField.Value)),
              'null')) then
              qry4Update.FieldByName(srcField.FieldName).Value :=
                srcField.Value;
          end;
        end;
      end;

      qry4Update.Post;
      aDataSet.Next;
    end;

    qry4Update.Requery;
    BigMessage('همگام‌سازی با موفقیت انجام شد.', 1);

  finally
    aDataSet.Free;
    jsonadapter.Free;
  end;
end;

procedure LoadTableFromZip2(qry4Update: TADOQuery; TableName: String;
  fldName1, fldName2: String; OnlyInsert: boolean; msg: string);
var
  ZipName, FPath: String;
  jsonadapter: TJSONDatasetAdapter;
  aDataSet: TClientDataSet;
  keyValues: array of Variant;
  keyFound: boolean;
  locateFields: String;
  srcField: TField;
begin
  if (msg <> '') and (get_response(msg) <> mrYes) then
    Exit;

  ZipName := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))) +
    'FaraTables\' + TableName + '.zip';

  if not FileExists(ZipName) then
  begin
    Warn('فايل ' + TableName + '.zip پيدا نشد!');
    Exit;
  end;

  UnZipFiles(ZipName, __TheTempDIR, '213378');
  FPath := IncludeTrailingBackslash(__TheTempDIR) + TableName + '.json';

  jsonadapter := TJSONDatasetAdapter.Create(nil);
  aDataSet := TClientDataSet.Create(nil);
  try
    jsonadapter.Dataset := aDataSet;
    jsonadapter.JSON.Text := TFile.ReadAllText(FPath);

    jsonadapter.UpdateDataset;

    if not aDataSet.Active then
    begin
      Warn('داده‌های JSON حاوی ساختار نامعتبر است یا فیلدی ندارد.');
      Exit;
    end;

    aDataSet.First;
    while not aDataSet.Eof do
    begin
      keyFound := False;

      // جستجو بر اساس کلیدها
      if (fldName1 <> '') or (fldName2 <> '') then
      begin
        SetLength(keyValues, 0);
        locateFields := '';

        if fldName1 <> '' then
        begin
          if aDataSet.FindField(fldName1) = nil then
            raise Exception.Create('فیلد کلیدی "' + fldName1 +
              '" در JSON یافت نشد!');
          keyValues := keyValues + [aDataSet.FieldByName(fldName1).Value];
          locateFields := fldName1;
        end;

        if fldName2 <> '' then
        begin
          if aDataSet.FindField(fldName2) = nil then
            raise Exception.Create('فیلد کلیدی "' + fldName2 +
              '" در JSON یافت نشد!');
          keyValues := keyValues + [aDataSet.FieldByName(fldName2).Value];
          if locateFields <> '' then
            locateFields := locateFields + ';';
          locateFields := locateFields + fldName2;
        end;

        keyFound := qry4Update.Locate(locateFields, VarArrayOf(keyValues), []);
      end;

      // Insert یا Edit
      if keyFound then
      begin
        if OnlyInsert then
        begin
          aDataSet.Next;
          Continue;
        end;
        qry4Update.Edit;
      end
      else
        qry4Update.Insert;

      // کپی فیلدها
      for srcField in aDataSet.Fields do
      begin
        if (srcField.FieldKind = fkData) and (not srcField.ReadOnly) then
        begin
          if qry4Update.FindField(srcField.FieldName) <> nil then
            if not(srcField.IsNull or SameText(Trim(VarToStr(srcField.Value)),
              'null')) then
              qry4Update.FieldByName(srcField.FieldName).Value :=
                srcField.Value;
        end;
      end;

      qry4Update.Post;
      aDataSet.Next;
    end;

    qry4Update.Requery;
    BigMessage('همگام‌سازی با موفقیت انجام شد.', 1);

  finally
    aDataSet.Free;
    jsonadapter.Free;
  end;
end;

procedure MakeTableToZip(TableName: String; ADC: TADOConnection;
  sFilte: string);
var
  ZipName, filePathName: String;
begin
  filePathName := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))) +
    'FaraTables\';
  CreateDir(filePathName);
  With TADOQuery.Create(DMf) do
  begin
    Connection := ADC;
    Active := False;
    SQL.Text := 'SELECT *  FROM  ' + TableName;
    SQL.Add(sFilte);
    Active := True;
    SaveToFile(filePathName + TableName + '.dat');
    Active := False;
    Free;
  end;
  ZipName := filePathName + TableName + '.zip';
  with TZipForge.Create(nil) do
  begin
    FileName := ZipName;
    Password := '213378';
    OpenArchive;
    Options.OverwriteMode := omAlways;
    Options.StorePath := spNoPath;
    AddFiles(filePathName + TableName + '.dat');
    CloseArchive;
    Free;
  end;
  // with
  DeleteFile(filePathName + TableName + '.dat');
  RunDoc(filePathName)
end;

procedure MakeTableToZip2(TableName: String; ADC: TADOConnection;
  sFilter: string);
var
  ZipName, aPath, filePathName: String;
  qry: TADOQuery;
  jsonadapter: TJSONDatasetAdapter;
begin
  qry := TADOQuery.Create(nil);
  jsonadapter := TJSONDatasetAdapter.Create(nil);
  try
    aPath := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))) +
      'FaraTables\';
    ForceDirectories(aPath);
    ZipName := aPath + TableName + '.zip';
    filePathName := aPath + TableName + '.json';

    qry.Connection := ADC;
    qry.SQL.Text := 'SELECT * FROM ' + TableName;
    if sFilter <> '' then
      qry.SQL.Add(sFilter);
    qry.Open;

    // ✅ بررسی خالی بودن
    if qry.Eof and qry.BOF then
    begin
      Warn('هیچ رکوردی از جدول "' + TableName + '" یافت نشد!');
      Exit;
    end;

    jsonadapter.Dataset := qry;
    jsonadapter.UpdateJSON;
    TFile.WriteAllText(filePathName, jsonadapter.JSON.Text);

    ZipFiles(filePathName, ZipName, '213378');

    // ✅ نمایش پوشه به کاربر
    RunDoc(aPath);
    BigMessage('فایل تنظیمات ذخیره شد.', 1);
  finally
    jsonadapter.Free;
    qry.Free;
    DeleteFile(filePathName);
  end;
end;

procedure ShowFormTypesForms(qry: TDataSet; frParent: TForm);
var
  FormID, ServerID, YearID: Integer;
  qryForm: TADOQuery;
  b: boolean;
begin
  b := opt.showBig;
  if qry.FindField('FormID') <> nil then
    FormID := qry.FieldByName('FormID').AsInteger
  else
    FormID := qry.FieldByName('ReciptID').AsInteger;

  ServerID := qry.FieldByName('ServerID').AsInteger;
  YearID := qry.FieldByName('YearID').AsInteger;

  if YearID <> APPBank.Year then
  begin
    Warn('اين فرم در سال مالي  ' + qry.FieldByName('YearID').AsString +
      '  وجود دارد', mtInformation);
    Exit
  end;

  qryForm := TADOQuery.Create(DMf);
  With qryForm do
    try
      Connection := DMf.adcBSell;
      Active := False;
      SQL.Text :=
        'SELECT FormTypes.DisplayFormType,Forms.FormType,Forms.FormID';
      SQL.Add(' , Forms.CustomerID1 ,FormCaption');
      SQL.Add(',Forms.YearID,Forms.ServerID');
      SQL.Add('FROM FormTypes INNER JOIN Forms ON FormTypes.FormType = Forms.FormType');
      SQL.Add('WHERE Forms.FormID=' + IntToStr(FormID));
      SQL.Add(' AND  Forms.YearID  =' + IntToStr(YearID));
      SQL.Add(' AND  Forms.ServerID=' + IntToStr(ServerID));
      Active := True;
      opt.showBig := False; // افزایش سرعت باز شدن فرم
      ShowFormTypesForm(frParent, FieldByName('FormCaption').AsString,
        FieldByName('FormType').AsInteger, FieldByName('DisplayFormType')
        .AsInteger, FieldByName('CustomerID1').AsInteger, FormID, ServerID,
        YearID, 0, qryForm);
      Active := False;
    finally
      Free;
      opt.showBig := b;

    end;
end;

procedure BrowseAllForms4QryCoffer(qryDs: TDataSet;
  FormID, ServerID, YearID: Integer);
begin
  if opt.BrowseAllForms then
  begin
    if not qryDs.Locate('FormID;ServerID;YearID',
      VarArrayOf([FormID, ServerID, YearID]), []) then
      qryDs.Insert;
  end
  else
  begin
    qryDs.Filter := Format('FormID = %d AND ServerID = %d AND YearID = %d',
      [FormID, ServerID, YearID]);
    qryDs.Filtered := True;
  end;
end;

Function GetFieldValue(

  const fldName: string): string;
var
  qry: TADOQuery;
  i: SmallInt;
begin
  for i := 0 to Screen.ActiveForm.ComponentCount - 1 do
  begin
    if Screen.ActiveForm.Components[i] is TADOQuery then
    begin
      qry := TADOQuery(Screen.ActiveForm.Components[i]);
      if qry.FindField(fldName) <> nil then
      begin
        Result := qry.FieldByName(fldName).AsString.Trim;
        Break;
      end;
    end;

  end;

end;

Function GetFormNameOf(DisplayFormType, formType: Integer): string;
begin
  case DisplayFormType of
    0:
      begin
        Result := 'GetOtherMoneyF' + formType.ToString.Trim;
      end;
    7:
      begin
        Result := 'GetOtherMoney7F' + formType.ToString.Trim;
      end;
    1:
      begin
        Result := 'GetCheckF'
      end;
    2:
      begin
      end;
    3:
      begin
        Result := 'PaymentCashF'
      end;
    4:
      begin
        Result := 'PaymentExpenceF'
      end;
    5:
      begin
        Result := 'LoanF'
      end
  else
    Warn2('براي اين فرم درسيستم نام فرم تعريف نشده.');
  end;
end;

procedure ShowFormTypesForm(frParent: TForm; FormCaption: string;
  formType, DisplayFormType, CustomerID1, FormID, ServerID, YearID,
  ReciptID: Integer; qryForm: TADOQuery);
var
  s: string;
begin
  if IsInMenu(FormCaption) then
    case DisplayFormType of
      0:
        begin
          GetOtherMoneyF.Enter(formType, False, CustomerID1, qryForm);
        end;
      7:
        begin
          GetOtherMoney2F.Enter(formType, False, CustomerID1, qryForm);
        end;
      1:
        begin
          s := GetFieldValue('CheckNumber');
          GetCheckF.Enter(formType);
          BrowseAllForms4QryCoffer(GetCheckF.qryAllForms, FormID,
            ServerID, YearID);
          if not s.IsEmpty then
            GetCheckF.qryDetail_Item.Locate('CheckNumber', s, []);
        end;
      2:
        begin
        end;
      3:
        begin
          try
            s := GetFieldValue('CheckNumber');
            SelectCustomerFDefaultCusID := CustomerID1;

            CreateMDIForm2(TPaymentCashF, PaymentCashF, frParent, formType);
          finally
            SelectCustomerFDefaultCusID := 0
          end;

          BrowseAllForms4QryCoffer(PaymentCashF.qryAllForms, FormID,
            ServerID, YearID);
          if not s.IsEmpty then
            PaymentCashF.qryFormItems.Locate('CheckNumber', s, []);
        end;
      4:
        begin
          CreateMDIForm2(TPaymentExpenceF, PaymentExpenceF, frParent, formType);
          if ReciptID <> 0 then
          begin
            if not PaymentExpenceF.qryForms.Locate('ReciptID;ServerID;YearID',
              VarArrayOf([ReciptID, ServerID, YearID]), []) then
              PaymentExpenceF.qryForms.Insert
          end
          else
          begin
            BrowseAllForms4QryCoffer(PaymentExpenceF.qryForms, FormID,
              ServerID, YearID);
          end;

        end;
      5:
        begin
          LoanF.Enter(formType);
          BrowseAllForms4QryCoffer(LoanF.qryForms, FormID, ServerID, YearID);
        end
    else
      Warn('براي اين فرم درسيستم نمايش فرم تعريف نشده.');
    end;
end;

procedure BrowseAllForms4Qry(qryDs: TDataSet;
  ReciptID, ServerID, YearID: Integer);
begin
  if opt.BrowseAllForms then
    qryDs.Locate('ReciptID;ServerID;YearID',
      VarArrayOf([ReciptID, ServerID, YearID]), [])

  else
  begin
    qryDs.Filter := Format('ReciptID = %d AND ServerID = %d AND YearID = %d',
      [ReciptID, ServerID, YearID]);
    qryDs.Filtered := True;
  end;

end;

procedure ShowReciptTypes(qry: TDataSet; frParent: TForm;
  StuffCode: Largeint = 0; ParentReciptID: Integer = 0;
  ParentCoReciptID: Integer = 0; ControlCode: Integer = 0);
var
  ReciptID, ServerID, YearID, ActionPlanID: Integer;
  b: boolean;
begin

  b := opt.showBig;
  if qry.FindField('ReciptID') <> nil then
    ReciptID := qry.FieldByName('ReciptID').AsInteger
  else
    ReciptID := qry.FieldByName('FormID').AsInteger;

  ActionPlanID := 0;
  if qry.FindField('ActionPlanID') <> nil then
    ActionPlanID := qry.FieldByName('ActionPlanID').AsInteger;

  ServerID := qry.FieldByName('ServerID').AsInteger;
  YearID := qry.FieldByName('YearID').AsInteger;
  if YearID <> APPBank.Year then
  begin
    Warn('اين فرم در سال مالي  ' + qry.FieldByName('YearID').AsString +
      '  وجود دارد', mtInformation);
    Exit
  end;

  With DMf.qryTmpTmp do
    try
      opt.showBig := False;
      // افزایش سرعت باز شدن فرم
      Active := False;

      if ActionPlanID <> 0 then
      begin
        SQL.Text := 'SELECT ReciptTypes.TemplateCode,0 AS StoreID';
        SQL.Add(', ActionPlans.ReciptType,ReciptCaption,ActionPlans.PersonID1');
        SQL.Add(', ActionPlans.ActionPlanState');
        SQL.Add('FROM ActionPlans INNER JOIN');
        SQL.Add('ReciptTypes ON ActionPlans.ReciptType = ReciptTypes.ReciptType');
        SQL.Add('WHERE ActionPlans.ID=' + IntToStr(ActionPlanID));
      end
      else
      begin
        SQL.Text := 'SELECT ReciptTypes.TemplateCode, Recipts.StoreID,';
        SQL.Add(' Recipts.ReciptType,ReciptCaption FROM Recipts INNER JOIN ');
        SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');

        if ParentReciptID <> 0 then
        begin
          ReciptID := ParentReciptID;
          SQL.Add('WHERE Recipts.ParentReciptID=' + IntToStr(ReciptID));
        end
        else if ParentCoReciptID <> 0 then
        begin
          ReciptID := ParentCoReciptID;
          SQL.Add('WHERE Recipts.ParentCoReciptID=' + IntToStr(ReciptID));
        end
        else
        begin
          SQL.Add('WHERE Recipts.ReciptID=' + IntToStr(ReciptID));
        end;

        SQL.Add(' AND  Recipts.YearID  =' + IntToStr(YearID));
        SQL.Add(' AND  Recipts.ServerID=' + IntToStr(ServerID));
      end;

      Active := True;
      // myStore.code := FieldByName('StoreID').AsInteger;

      if (RecordCount > 0) and IsInMenu(FieldByName('ReciptCaption').AsString)
      then
        case Fields[0].AsInteger of
          0:
            begin
              ReciptsF.Enter(FieldByName('ReciptType').AsInteger, False,
                FieldByName('StoreID').AsInteger);

              // ReciptsF.qryRecipts.Locate('ReciptID;ServerID;YearID',
              // VarArrayOf([ReciptID, ServerID, YearID]), []);
              BrowseAllForms4Qry(ReciptsF.qryRecipts, ReciptID,
                ServerID, YearID);
              if not ReciptsF.qryItems.Active then
              begin
                if not User.PowerUser then
                  ReciptsF.Close
              end
              else
              begin
                ReciptsF.qryItems.Locate('StuffCode', StuffCode, []);
                if ControlCode <> 0 then
                  ReciptsF.qryItems.Locate('ControlCode', ControlCode, []);

              end;

            end;
          1:
            begin
              CreateMDIForm2(TStuffToStoreF, StuffToStoreF, frParent,
                FieldByName('ReciptType').AsInteger);
              StuffToStoreF.qryRecipts.Locate('ReciptId', ReciptID, []);
            end;
          2, 10:
            begin
              ReciptsGridF.Enter(FieldByName('ReciptType').AsInteger, False,
                FieldByName('StoreID').AsInteger);
              ReciptsGridF.OpenFromList := True;
              ReciptsGridF.qryAllRecipts.Last;
              // ReciptsGridF.qryAllRecipts.Locate('ReciptID;ServerID;YearID',
              // VarArrayOf([ReciptID, ServerID, YearID]), []);
              BrowseAllForms4Qry(ReciptsGridF.qryAllRecipts, ReciptID,
                ServerID, YearID);

              if not ReciptsGridF.qryItems.Active then
              begin
                if not User.PowerUser then
                  ReciptsGridF.Close
              end
              else
                ReciptsGridF.qryItems.Locate('StuffCode', StuffCode, []);
              if ControlCode <> 0 then
                ReciptsGridF.qryItems.Locate('ControlCode', ControlCode, []);

            end;
          // 10:
          // begin
          // ReciptsGrid2F.Enter(FieldByName('ReciptType').AsInteger, False,
          // FieldByName('StoreID').AsInteger);
          // ReciptsGrid2F.OpenFromList := True;
          // ReciptsGrid2F.qryAllRecipts.Last;
          // // ReciptsGrid2F.qryAllRecipts.Locate('ReciptID;ServerID;YearID',
          // // VarArrayOf([ReciptID, ServerID, YearID]), []);
          // BrowseAllForms4Qry(ReciptsGrid2F.qryAllRecipts, ReciptID,
          // ServerID, YearID);
          //
          // if not ReciptsGrid2F.qryItems.Active then
          // begin
          // if not User .admin then
          // ReciptsGrid2F.Close
          // end
          // else
          // ReciptsGrid2F.qryItems.Locate('StuffCode', StuffCode, []);
          // end;
          3:
            begin
              CreateMDIForm2(TContractF, ContractF, frParent,
                FieldByName('ReciptType').AsInteger);
              ContractF.qryRecipts.Locate('ReciptID;ServerID;YearID',
                VarArrayOf([ReciptID, ServerID, YearID]), []);
            end;
          4:
            begin
              CreateMDIForm2(TContractStuffF, ContractStuffF, frParent,
                FieldByName('ReciptType').AsInteger);
              if (ContractStuffF.qryRecipts.Active and
                (not ContractStuffF.qryRecipts.Locate
                ('ReciptID;ServerID;YearID', VarArrayOf([ReciptID, ServerID,
                YearID]), []))) then
                Warn('فرم پیدا نشد');
            end;
          5:
            ReciptsBuyF.Enter(FieldByName('ReciptType').AsInteger, False,
              FieldByName('StoreID').AsInteger, ReciptID);
          6:
            ;
          // CreateMDIForm2(TRentReciptsF, RentReciptsF, frParent,
          // FieldByName('ReciptType').AsInteger);
          7:
            begin
              CreateMDIForm2(TReciptsAnalysisF, ReciptsAnalysisF, frParent,
                FieldByName('ReciptType').AsInteger);
              if not ReciptsAnalysisF.qryRecipts.Locate
                ('ReciptID;ServerID;YearID',
                VarArrayOf([ReciptID, ServerID, YearID]), []) then
                Warn('فرم پیدا نشد');

            end;
          8:
            begin
              DMf.sql4Recal := ' AND ReciptID=' + IntToStr(ReciptID) +
                ' AND YearID  =' + IntToStr(YearID) + ' AND ServerID=' +
                IntToStr(ServerID);
              ReciptsStoreF.Enter(FieldByName('ReciptType').AsInteger, False,
                FieldByName('StoreID').AsInteger);
              // ReciptsStoreF.qryRecipts.Locate('ReciptID;ServerID;YearID',
              // VarArrayOf([ReciptID, ServerID, YearID]), []);
              BrowseAllForms4Qry(ReciptsStoreF.qryRecipts, ReciptID,
                ServerID, YearID);

              if not ReciptsStoreF.qryItems.Active then
              begin
                if not User.PowerUser then
                  ReciptsStoreF.Close
              end
              else
                ReciptsStoreF.qryItems.Locate('StuffCode', StuffCode, []);
            end;
          // 10:
          // begin
          // ReciptsGrid2F.Enter(FieldByName('ReciptType').AsInteger, False,
          // FieldByName('StoreID').AsInteger);
          // ReciptsGrid2F.OpenFromList := True;
          // ReciptsGrid2F.qryAllRecipts.Last;
          // BrowseAllForms4Qry(ReciptsGrid2F.qryAllRecipts, ReciptID,
          // ServerID, YearID);
          //
          // if not ReciptsGrid2F.qryItems.Active then
          // begin
          // if not Use r.admin then
          // ReciptsGrid2F.Close
          // end
          // else
          // ReciptsGrid2F.qryItems.Locate('StuffCode', StuffCode, []);
          // end;
          11:
            begin
              ActionPlansF.Enter(FieldByName('ReciptType').AsInteger, True,
                FieldByName('PersonID1').AsInteger);
              ActionPlansF.rgActionPlanState.ItemIndex :=
                FieldByName('ActionPlanState').AsInteger;
              ActionPlansF.qryActionPlans.Locate('ID', ActionPlanID, []);
            end;

        end;
      Active := False;
    finally
      opt.showBig := b;
    end;
  // if  Pos('reciptsf'+IntToStr(formType)+'@' ,opt.MenuNames)<>0 then
  // else Warn('ويرايش و نمايش اين فرم در سطح دسترسي شما نمي‌باشد.');
end;

procedure ShowReciptTypesIsParent(qry: TDataSet; frParent: TForm);
var
  qryT: TADOQuery;
begin
  if qry.FieldByName('PreReciptItemID').AsInteger = 0 then
  begin
    Warn2('فرم پدری برای این سطر وجود ندارد');
    Exit;
  end;
  qryT := TADOQuery.Create(DMf);
  with qryT do
  begin
    try
      Connection := DMf.adcBSell;
      SQL.Text :=
        'SELECT ReciptItemID, ReciptID, StuffCode, preReciptItemID, ServerID, YearID,ControlCode';
      SQL.Add('FROM ReciptItems');
      SQL.Add('WHERE (ReciptItemID = %d) AND (ServerID = %d) AND (YearID = %d)');
      SQL.Text := Format(SQL.Text,
        [qry.FieldByName('PreReciptItemID').AsInteger,
        qry.FieldByName('ServerID').AsInteger, qry.FieldByName('YearID')
        .AsInteger]);
      Active := True;
      ShowReciptTypes(qryT, frParent, FieldByName('StuffCode').AsLargeInt, 0, 0,
        FieldByName('ControlCode').AsLargeInt);
      Active := False;
    finally
      qryT.Free;
    end;
  end;
end;

function IsParent(qryRecipts: TDataSet; ParentFieldName: String;
  ReciptTypeCo: Integer): boolean;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DMf);
  with qry do
  begin
    try
      Connection := DMf.adcBSell;
      SQL.Text :=
        'SELECT COUNT(ReciptID) AS COUNT,max(ReciptNumber) AS ReciptNumber ';
      SQL.Add('FROM Recipts');
      SQL.Add('WHERE (%s = %d) AND (ServerID = %d) AND (YearID = %d) AND (ReciptType = %d)');
      SQL.Text := Format(SQL.Text, [ParentFieldName,
        qryRecipts.FieldByName('ReciptID').AsInteger,
        qryRecipts.FieldByName('ServerID').AsInteger,
        qryRecipts.FieldByName('YearID').AsInteger, ReciptTypeCo]);
      Active := True;
      Result := Fields[0].AsInteger > 0;
      if Result then
        initDesktopAlert(0, 'براي اين فرم شماره ' + FieldByName('ReciptNumber')
          .AsString + ' ثبت شده وجود دارد ', nil);
      Active := False;
    finally
      qry.Free;
    end;
  end;
end;

function preItemID(qryReciptsOrForms: TADOQuery;
  tblName, fldName: String): boolean;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DMf);
  with qry do
  begin
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT COUNT(pre' + fldName + ') FROM ' + tblName +
        ' WHERE pre' + fldName + '=' + qryReciptsOrForms.FieldByName
        (fldName).AsString;
      // IntToStr(preID);
      SQL.Add(' AND  ServerID=' + qryReciptsOrForms.FieldByName('ServerID')
        .AsString);
      SQL.Add(' AND  YearID  =' + qryReciptsOrForms.FieldByName('YearID')
        .AsString);
      Active := True;
      Result := Fields[0].AsInteger = 0;
      Active := False;
    finally
      qry.Free;
    end; // try
  end; // with
end;

// procedure ReItemID(qry_Items, qryMaster: TADOQuery;
// tblName, fldName, formName: String; Step: Integer);
// begin
// Exit;
// if qry_Items.RecordCount = 0 then
// Exit;
// qryMaster.Edit;
// with qry_Items do
// begin
// DisableControls;
// First;
// while not eof do
// begin
// // if preItemID(qry_Items, tblName, fldName) then
// // begin
// Edit;
// FieldByName(fldName).AsInteger := GetANewID(nil, formName, tblName,
// fldName, qryMaster, Step);
// Post;
// // end; // if
// Application.ProcessMessages;
// Next;
// end;
// EnableControls;
// end;
// // Warn('اشكال در ثبت فرم ');
// if opt.StuffCodingKind  in [1, 2] then
// qryMaster.Post;
// end;

procedure AccCodingShowInsert(qryinit, qryItems, qryRecipts: TADOQuery);
begin
  qryItems.FieldByName('acc_TopicCode').ReadOnly := False;
  qryItems.FieldByName('acc_DetailCode').ReadOnly := False;
  qryItems.FieldByName('acc_CTopicCode').ReadOnly := False;
  qryItems.FieldByName('acc_CTopicCode2').ReadOnly := False;
  qryItems.FieldByName('acc_CTopicCode3').ReadOnly := False;
  case qryinit.FieldByName('AccCodingShow').AsInteger of
    0, 1, 4, 5:
      begin
        qryItems.FieldByName('acc_TopicCode').AsInteger := 0;
        qryItems.FieldByName('acc_DetailCode').AsInteger := 0;
        qryItems.FieldByName('acc_CTopicCode').AsInteger := 0;
        qryItems.FieldByName('acc_CTopicCode2').AsInteger := 0;
        qryItems.FieldByName('acc_CTopicCode3').AsInteger := 0;
      end;
    2:
      begin
        With DMf.qryTmpTmp do
        begin
          Active := False;
          SQL.Text :=
            'SELECT CustomersGroup.acc_TopicCode, Customers.acc_DetailCode, Customers.acc_CTopicCode,';
          SQL.Add(' Customers.acc_CTopicCode2,Customers.acc_CTopicCode3');
          SQL.Add('FROM Customers INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
          SQL.Add('WHERE Customers.CustID= ' + qryRecipts.FieldByName
            ('PersonID1').AsString);
          Active := True;
          qryItems.FieldByName('acc_TopicCode').AsInteger :=
            FieldByName('acc_TopicCode').AsInteger;
          qryItems.FieldByName('acc_DetailCode').AsInteger :=
            FieldByName('acc_DetailCode').AsInteger;
          qryItems.FieldByName('acc_CTopicCode').AsInteger :=
            FieldByName('acc_CTopicCode').AsInteger;
          qryItems.FieldByName('acc_CTopicCode2').AsInteger :=
            FieldByName('acc_CTopicCode2').AsInteger;
          qryItems.FieldByName('acc_CTopicCode3').AsInteger :=
            FieldByName('acc_CTopicCode3').AsInteger;
          Active := False;
        end;
      end;
    3:
      begin
        With DMf.qryTmpTmp do
        begin
          Active := False;
          SQL.Text :=
            'SELECT acc_TopicCode, acc_DetailCode, acc_CTopicCode, acc_CTopicCode2, acc_CTopicCode3';
          SQL.Add('FROM UseUnits');
          SQL.Add('WHERE UseUnitID= ' +
            IntToStr(qryRecipts.FieldByName('UseUnitID').AsInteger));
          Active := True;
          qryItems.FieldByName('acc_TopicCode').AsInteger :=
            FieldByName('acc_TopicCode').AsInteger;
          qryItems.FieldByName('acc_DetailCode').AsInteger :=
            FieldByName('acc_DetailCode').AsInteger;
          qryItems.FieldByName('acc_CTopicCode').AsInteger :=
            FieldByName('acc_CTopicCode').AsInteger;
          qryItems.FieldByName('acc_CTopicCode2').AsInteger :=
            FieldByName('acc_CTopicCode2').AsInteger;
          qryItems.FieldByName('acc_CTopicCode3').AsInteger :=
            FieldByName('acc_CTopicCode3').AsInteger;
          Active := False;
        end;
      end;
  end;
end;

procedure CorrelateConversionCo(CallForm: TForm; qryinit, qryItems: TADOQuery;
  qryRecipts: TDataSet; StoreID: Integer; MyEntityDisplayType: Byte;
  ShowFilter: boolean = True);
var
  ReciptID, ReciptIDStandard, ReciptType, ReciptNumber, ReciptNumberStandard,
    ReciptCaption, msg: String;
  // formType: Integer;
  ChildFieldIOName, ParentFieldIOName, SqlText: String;
  qryItemsNew, qryReciptsNew, qryinitCo: TADOQuery;
  RestartFormNumberOnStore, GetStorrID: boolean;
  StandardConsumptionActive: Integer;
  StoreIDStandard, StoreIDConversion: TStore;

  // TotalStandardRate: Currency;
begin
  // use this procedure in Forms: ReciptsF,ReciptsGridF,ReciptsBuyF
  ReciptType := qryinit.FieldByName('ConversionCoSerial').AsString;
  qryinitCo := TADOQuery.Create(DMf);
  with qryinitCo do
  begin
    Connection := DMf.adcBSell;
    qryinitCo.SQL.Text := qryinit.SQL.Text;
    Parameters.ParamByName('ReciptType').Value := StrToInt(ReciptType);
    Active := True;
    ReciptCaption := FieldByName('ReciptCaption').AsString;
    ChildFieldIOName := IfThen(FieldByName('EffectType').AsInteger
      in [3, 4, 5, 7, 8], 'Output', 'Input');
    RestartFormNumberOnStore := FieldByName('RestartFormNumberOnStore')
      .AsInteger = 1;
  end;

  GetStorrID := not(qryinit.FieldByName('AutoCorrelateCo').AsInteger and
    Integer(CHkAutoCorrelateCoStoreID) <> 0);

  StoreIDStandard.Code := 0;
  if ((qryinit.FieldByName('AutoCorrelateCo').AsInteger <> 0) and
    (Integer(CHkGetStorIDFormFirstSelect) <> 0)) and
    StartsText('Rpt001F', qryinit.Owner.Name) then
    StoreIDConversion.Code := StoreID
  else
    StoreIDConversion.Code := 0;

  If not ReciptCorrelate_ConversionCo_Chk(qryRecipts, qryinit) then
    Abort;

  if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), qryRecipts)
  then
    Abort;

  if qryItems.RecordCount = 0 then
    Exit;

  StandardConsumptionActive := qryinit.FieldByName('StandardConsumptionActive')
    .AsInteger;
  myParams.Clear;

  if (qryinit.FieldByName('AutoCorrelateCo').AsInteger and
    Integer(CHkGetStorIDFormDestinationType) <> 0) and
    not StartsText('Rpt001F', qryinit.Owner.Name) then
  begin
    SelectStoreF.GetStore(StoreIDStandard, 'انبار فرم مقصد',
      qryinitCo.FieldByName('StoreKindList').AsString, MyEntityDisplayType);
    if StoreIDStandard.Code = 0 then
      Exit
    else
      StoreID := StoreIDStandard.Code;
  end
  else if GetStorrID then
  begin
    try
      if StandardConsumptionActive > 0 then
      begin
        SelectStoreF.GetStore(StoreIDStandard, 'انبار مصرف استاندارد',
          qryinit.FieldByName('StoreKindList').AsString, MyEntityDisplayType);
        if StoreIDStandard.Code = 0 then
        begin
          Warn2('اولین کنترل انبار مصرف استاندارد', 0);
          Exit;
        end;
      end;

      if (qryinit.FieldByName('ConversionCoSerial').AsInteger > 0) and
        (StoreID = 0) then
      begin
        SelectStoreF.GetStore(StoreIDConversion, 'انبار مصرف استاندارد',
          qryinit.FieldByName('StoreKindList').AsString, MyEntityDisplayType);
        if StoreIDConversion.Code = 0 then
        begin
          Warn2('دومین کنترل انبار مصرف استاندارد', 0);
          Exit;
        end;
      end;
      begin
        if qryinit.FieldByName('ConversionCoSerial').AsInteger > 0 then
          StoreID := StoreIDConversion.Code
        else
          StoreID := 0;
        if StandardConsumptionActive > 0 then
        else
          StoreIDStandard.Code := 0;
      end;
    finally
    end;
    if ((StoreIDStandard.Code = 0) and (StoreIDConversion.Code = 0)) then
    begin
      Warn2('سومین کنترل انبار مصرف استاندارد', 0);
      // Exit;
    end;
  end
  else
  begin
    if StoreID = 0 then
      StoreID := qryRecipts.FieldByName('StoreID').AsInteger;
    StoreIDStandard.Code := 0;
  end;
  // with

  if not StartsText('Rpt001F', qryinit.Owner.Name) then
    BigMessage('لطفا منتظر بمانید...', 0);

  with qryinit do
  begin
    ParentFieldIOName := IfThen(FieldByName('EffectType').AsInteger > 2,
      'Output', 'Input');
  end;
  // with
  msg := 'آيا براي ثبت فرم ' + ReciptCaption + ' مطمئن هستيد؟';
  if IsParent(qryRecipts, 'ParentCoReciptID', StrToInt(ReciptType)) then
  begin
    // Warn('براي اين فرم قبلا ' + ReciptCaption + ' ثبت شده است ', mtInformation);
    initDesktopAlert(0, 'براي اين فرم قبلا ' + ReciptCaption +
      qryRecipts.FieldByName('ReciptNumber').AsString + ' ثبت شده است ', nil);
    qryRecipts.Next;
    CloseMessage;
    Exit;
  end;
  ReciptID := IntToStr(GetANewID(nil, ReciptType, 'Recipts', 'ReciptID',
    qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger));

  ReciptIDStandard := IntToStr(GetANewID(nil, ReciptType, 'Recipts', 'ReciptID',
    qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger));

  DMf.adcBSell.BeginTrans; // ____________________________________
  try
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'UPDATE Recipts';
      SQL.Add('SET ParentCoReciptID = ' + ReciptID);
      SQL.Add('WHERE(ReciptID = ' + qryRecipts.FieldByName('ReciptID')
        .AsString + ')');
      SQL.Add('AND ServerID =' + qryRecipts.FieldByName('ServerID').AsString);
      SQL.Add('AND YearID =' + qryRecipts.FieldByName('YearID').AsString);
      ExecSQL;
    end;

    if qryinit.FieldByName('CorrelateCoReciptNumber_Kind').AsInteger = 1 then
    begin
      SqlText := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
        ReciptType + ')';
      if RestartFormNumberOnStore then
        SqlText := SqlText + 'AND(StoreID=' + IntToStr(StoreID) + ')';
      ReciptNumber := IntToStr(GetANewCode(ReciptType, SqlText,
        'ReciptNumber'));

    end
    else
    begin
      ReciptNumber := qryRecipts.FieldByName('ReciptNumber').AsString;
    end;

    try
      InsertRecipts(qryinit, qryRecipts, ReciptID, ReciptType, ReciptNumber,
        IntToStr(StoreID));
    except
      on E: Exception do
      begin
        if DMf.adcBSell.InTransaction then
          DMf.adcBSell.RollbackTrans;
        Warn2('اشكال در عمليات' + E.Message);
        CloseMessage;
        qryItemsNew.Free;
        qryReciptsNew.Free;
        qryinitCo.Free;
        Abort;
      end;

    end;

    qryReciptsNew := TADOQuery.Create(DMf);
    With qryReciptsNew do
    begin
      Connection := DMf.adcBSell;
      Active := False;
      SQL.Text := 'SELECT Recipts.*, Stores.n_ValuationType AS _ValuationType ';
      SQL.Add('FROM Recipts INNER JOIN');
      SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID');
      SQL.Add('WHERE(Recipts.ReciptID=' + ReciptID + ')');
      SQL.Add('AND Recipts.ServerID=' + qryRecipts.FieldByName('ServerID')
        .AsString);
      SQL.Add('AND Recipts.YearID=' + qryRecipts.FieldByName('YearID')
        .AsString);
      Active := True;
    end;

    qryItemsNew := TADOQuery.Create(DMf);
    qryItemsNew.Connection := DMf.adcBSell;
    qryItemsNew.SQL.Text := 'SELECT top 0 * FROM ReciptItems';
    qryItemsNew.Active := True;

    case qryinit.FieldByName('ConversionCoSerialFormula').AsInteger of
      0:
        begin
          Formula1(qryItemsNew, qryReciptsNew, qryItems, qryRecipts, qryinit,
            qryinitCo, ReciptID, ReciptType, ChildFieldIOName,
            ParentFieldIOName, ReciptNumber, ReciptCaption,
            MyEntityDisplayType);
        end;
      1, 2, 4, 5:
        begin
          Formula2(qryItemsNew, qryReciptsNew, qryItems, qryRecipts, qryinit,
            qryinitCo, ReciptID, ReciptType, ChildFieldIOName,
            ParentFieldIOName, ReciptNumber, ReciptCaption,
            MyEntityDisplayType);
        end;
    end;

    if ((StandardConsumptionActive > 0) and
      (qryinit.FieldByName('ConversionCoSerialFormula').AsInteger <> 5)) then
    begin
      if (StoreID <> StoreIDStandard.Code) and (0 <> StoreIDStandard.Code) and
        (StoreID <> 0) then
      begin
        SqlText := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
          ReciptType + ')';
        if RestartFormNumberOnStore then
          SqlText := SqlText + 'AND(StoreID=' +
            IntToStr(StoreIDStandard.Code) + ')';
        ReciptNumberStandard :=
          IntToStr(GetANewCode(ReciptType, SqlText, 'ReciptNumber'));

        ReciptIDStandard := IntToStr(GetANewID(nil, ReciptType, 'Recipts',
          'ReciptID', qryRecipts, qryinit.FieldByName('StepCorrelate')
          .AsInteger));
        InsertRecipts(qryinit, qryRecipts, ReciptIDStandard, ReciptType,
          ReciptNumberStandard, IntToStr(StoreIDStandard.Code));
        ReciptID := ReciptIDStandard;
      end;
      InsertReciptItems(qryItemsNew, qryReciptsNew, qryItems, qryRecipts,
        qryinit, qryinitCo, ReciptID, ReciptType, ChildFieldIOName,
        MyEntityDisplayType);

    end;

    FreeReservedCodes(DMf.adcBSell, 'recipts', '', ReciptType);
    FreeReservedCodes(DMf.adcBSell, 'reciptitems', '', ReciptType);
    qryRecipts.Next;
    qryItemsNew.Free;
    qryReciptsNew.Free;
    qryinitCo.Free;
    initDesktopAlert(0, ' فرم ' + ReciptCaption + '‌ با شماره فرم ' +
      ReciptNumber + ' ثبت شد.', nil);

    if ReciptNumberStandard <> EmptyStr then
      initDesktopAlert(0, ' فرم ' + ReciptCaption + '‌ با شماره فرم ' +
        ReciptNumberStandard + ' ثبت شد.', nil);

    // BigMessage(' فرم ' + ReciptCaption + '‌ با شماره فرم ' + ReciptNumber +
    // ' ثبت شد.', 2);
    DMf.adcBSell.CommitTrans;
    CloseMessage;

  except
    on E: Exception do
    begin
      if DMf.adcBSell.InTransaction then
        DMf.adcBSell.RollbackTrans;
      Warn2('اشكال در عمليات' + E.Message);
      CloseMessage;
    end;
  end;

end;

procedure InsertReciptItems(qryItemsNew, qryReciptsNew, qryItems: TADOQuery;
  qryRecipts: TDataSet; qryinit, qryinitCo: TADOQuery;
  ReciptID, ReciptType, ChildFieldIOName: String; MyEntityDisplayType: Byte);
var
  // StuffCode: Largeint;
  CurrentEntity, CurrentWeight: Extended;
  price: Currency;
begin
  with qryItems do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        qryItemsNew.Insert;
        qryItemsNew.FieldByName('ReciptItemID').Value :=
          GetANewID(nil, ReciptType, 'ReciptItems', 'ReciptItemID',
          qryReciptsNew, qryinit.FieldByName('StepCorrelate').AsInteger);
        qryItemsNew.FieldByName('ReciptID').Value := ReciptID;
        qryItemsNew.FieldByName('ServerID').Value :=
          qryReciptsNew.FieldByName('ServerID').AsInteger;
        qryItemsNew.FieldByName('YearID').Value :=
          qryReciptsNew.FieldByName('YearID').AsInteger;

        qryItemsNew.FieldByName('StuffCode').Value :=
          qryItems.FieldByName('ProductCode').AsLargeInt;
        /// //    add
        qryItemsNew.FieldByName('ProductCode').AsInteger :=
          qryItems.FieldByName('StuffCode').AsInteger;
        /// //    add

        qryItemsNew.FieldByName(ChildFieldIOName + 'Entity').Value :=
          qryItems.FieldByName('StandardConsumption').AsFloat;

        qryItemsNew.FieldByName('ItemNote').Value :=
          qryItems.FieldByName('ItemNote').AsString + ' مصرف کل استادارد';

        if qryinit.FieldByName('StandardRateActive').AsInteger = 3 then
        begin
          qryItemsNew.FieldByName('UnitSellPrice').Value :=
            RoundTo(qryItems.FieldByName('StandardRate').AsFloat, 0);

          price := qryItemsNew.FieldByName(ChildFieldIOName + 'Entity').AsFloat
            * qryItemsNew.FieldByName('UnitSellPrice').AsFloat;

          price := RoundTo(price, 0);
          qryItemsNew.FieldByName('Total' + ChildFieldIOName + 'Price')
            .Value := price;

          qryItemsNew.FieldByName('StandardRate').Value :=
            RoundTo(qryItems.FieldByName('StandardRate').AsFloat, 0);

          qryItemsNew.FieldByName('TotalStandardRate').Value := price;
        end;

        CurrentEntity := qryItemsNew.FieldByName
          (ChildFieldIOName + 'Entity').AsFloat;
        CurrentWeight := qryItemsNew.FieldByName
          (ChildFieldIOName + 'Weight').AsFloat;
        if not ControlEntity(CurrentEntity, CurrentWeight, qryItemsNew,
          qryReciptsNew, qryinitCo, ChildFieldIOName,
          qryinit.FieldByName('Person3Active').AsInteger = 1,
          MyEntityDisplayType, False) then
          Abort;

        try
          qryItemsNew.Post;
        except
          Warn('اشكال در ثبت كالاهاي مصرف استاندارد فرم‌');
          CloseMessage;
        end;
        Next;
      end;

    finally
      EnableControls;
    end;

end;

procedure InsertRecipts(qryinit: TADOQuery; qryRecipts: TDataSet;
  ReciptID, ReciptType, ReciptNumber, StoreID: String);
var
  GetStorrID: boolean;
  X: Integer;
begin
  GetStorrID := not(qryinit.FieldByName('AutoCorrelateCo').AsInteger and
    Integer(CHkAutoCorrelateCoStoreID) <> 0);
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'INSERT INTO Recipts';

    SQL.Add('(ReciptID,StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,ReciptType,SecondType,ServiceValue');
    SQL.Add(',ReciptValue,');
    SQL.Add('TotalValue,AddDecValue,DocNo,DocDate,ReciptNote,ParentCoReciptID,OperatorID,ModifyDate,');
    SQL.Add('ReciptState,UseUnitID,');
    SQL.Add('[ExpireDate],ProjectID,BudgetID,AidNumber,AidDate');
    SQL.Add(',YearID,ServerID');
    SQL.Add(', FirstUser,  ReciptStartDate, ReciptEndDate, DebtControlActive, StoreID2, TruckNumber,');
    SQL.Add(' MachineNo, MachineName,');
    SQL.Add('ArzTypeID, RialsEqual,  UseOtherID, ReciptsRow, SellsMethod, SellsEmporium, MasirID, DeliveryID,');
    SQL.Add('PersonID2Bed, RelatedID, PersonID3, CostDownSave, DefaultDate,  InsertDate, MachineInfo  ');

    SQL.Add(', InsertTime, EditTime, PrvYearID, UserRegistrationDoc, DefaultDuration, CalcGiftItems');
    SQL.Add(', CalcCostStorage, ReciptDateMiladi,MachineFullWeight, MachineWeight, PersonID4, PersonID5');

    SQL.Add(')SELECT ' + ReciptID + ',' + IfThen(GetStorrID, StoreID, 'StoreID')
      + ',' + ReciptNumber + ',');

    if (qryinit.FieldByName('AutoCorrelateCo').AsInteger and
      Integer(CHkFormRegisteredDateday) <> 0) then
      SQL.Add(QuotedStr(var_glb_CurrentDate) + ' AS ReciptDate,')
    else
      SQL.Add('ReciptDate,');

    SQL.Add('PersonID1,PersonID2,' + ReciptType +
      ',SecondType,ServiceValue,ReciptValue,');
    SQL.Add('TotalValue,AddDecValue,DocNo,DocDate,ReciptNote,ReciptID,OperatorID,GETDATE()');

    X := qryinit.FieldByName('ReciptStatecreatedFormCo').AsInteger;
    if X = 0 then
      SQL.Add(',ReciptState')
    else
      SQL.Add(',' + (X - 1).ToString + ' AS ReciptState');

    SQL.Add(',UseUnitID,');
    SQL.Add('[ExpireDate],ProjectID,BudgetID');
    if qryinit.FieldByName('AidInfoActive').AsInteger in [0, 1] then
      SQL.Add(',ReciptNumber,ReciptDate')
    else
      SQL.Add(',AidNumber,AidDate');
    { Parent }
    SQL.Add(',YearID,ServerID');
    SQL.Add(', ' + QuotedStr(User.Name) +
      ' AS FirstUser, ReciptStartDate, ReciptEndDate, DebtControlActive, StoreID2, TruckNumber,');
    SQL.Add(' MachineNo, MachineName,');
    SQL.Add('ArzTypeID, RialsEqual,  UseOtherID, ReciptsRow, SellsMethod, SellsEmporium, MasirID, DeliveryID,');
    SQL.Add('PersonID2Bed, RelatedID, PersonID3, CostDownSave, DefaultDate,  InsertDate, MachineInfo');

    SQL.Add(', InsertTime, EditTime, PrvYearID, UserRegistrationDoc, DefaultDuration, CalcGiftItems');
    SQL.Add(', CalcCostStorage, ReciptDateMiladi,MachineFullWeight, MachineWeight, PersonID4, PersonID5');

    SQL.Add('FROM Recipts');
    SQL.Add('WHERE(ReciptID = ' + qryRecipts.FieldByName('ReciptID')
      .AsString + ')');
    SQL.Add('AND ServerID = ' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add('AND YearID   = ' + qryRecipts.FieldByName('YearID').AsString);
    try
      ExecSQL;
      // BigMessage(' در حال ثبت فرم...', 0);
      Active := False;
    except
      on E: Exception do
      begin
        Warn('اشكال در ثبت كردن فرم‌' + E.Message);
        Abort;
      end;

    end;
    // try
  end; // with

end;

procedure Formula1(qryItemsNew, qryReciptsNew, qryItems: TADOQuery;
  qryRecipts: TDataSet; qryinit, qryinitCo: TADOQuery;
  ReciptID, ReciptType, ChildFieldIOName, ParentFieldIOName, ReciptNumber,
  ReciptCaption: string; MyEntityDisplayType: Byte);
var
  qryTransFormItems: TADOQuery;
  Stuff_Code: Largeint;
  CurrentEntity, CurrentWeight: Extended;
begin
  qryTransFormItems := TADOQuery.Create(DMf);
  with qryTransFormItems do
  begin
    Connection := DMf.adcBSell;
    SQL.Text :=
      'SELECT transformitems.id, transformitems.stuffcode, transformitems.entity,';
    SQL.Add('transformitems.weight, transforms.stuffmodel,');
    SQL.Add('transforms.entity as allentity, transforms.weight as allweight,transformitems.TransFormID');
    SQL.Add('from transformitems inner join');
    SQL.Add('transforms on transformitems.transformid = transforms.transformid');
    SQL.Add('where (transforms.stuffcode = :stuffcode )');
    if qryinit.FieldByName('ProcedureActive').AsInteger > 0 then
      SQL.Add('and(transforms.stuffmodel = :stuffmodel )');
  end;

  With qryItems do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if FieldByName('ProductModel').AsLargeInt <> 0 then
      begin

        qryTransFormItems.Active := False;
        if qryinit.FieldByName('ProcedureActive').AsInteger > 0 then
          Stuff_Code := FieldByName('ProductCode').AsLargeInt
        else
          Stuff_Code := FieldByName('StuffCode').AsLargeInt;

        qryTransFormItems.Parameters.ParamByName('StuffCode').Value :=
          Stuff_Code;

        if qryinit.FieldByName('ProcedureActive').AsInteger > 0 then
          qryTransFormItems.Parameters.ParamByName('StuffModel').Value :=
            FieldByName('ProductModel').AsInteger;
        qryTransFormItems.Active := True;
        // BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....',        qryTransFormItems.RecordCount);
        if qryTransFormItems.IsEmpty then
          Warn2('براي اين كد محصول و مدل محصول ضرايبي وجود ندارد!!!‏');
        while not qryTransFormItems.Eof do
        begin
          qryItemsNew.Insert;
          qryItemsNew.FieldByName('FirstUser').AsString := User.Name;
          // 'ID,StuffCode,Entity,Weight,StuffModel,AllEntity,  AllWeight '
          qryItemsNew.FieldByName('ReciptItemID').Value :=
            GetANewID(nil, ReciptType, 'ReciptItems', 'ReciptItemID',
            qryReciptsNew, qryinit.FieldByName('StepCorrelate').AsInteger);
          qryItemsNew.FieldByName('ReciptID').Value := ReciptID;
          qryItemsNew.FieldByName('ServerID').Value :=
            qryReciptsNew.FieldByName('ServerID').AsInteger;
          qryItemsNew.FieldByName('YearID').Value :=
            qryReciptsNew.FieldByName('YearID').AsInteger;
          qryItemsNew.FieldByName('StuffCode').Value :=
            qryTransFormItems.FieldByName('StuffCode').AsLargeInt;

          qryItemsNew.FieldByName('TransFormID').Value :=
            qryTransFormItems.FieldByName('TransFormID').AsInteger;

          qryItemsNew.FieldByName('ControlCode').AsString :=
            qryItems.FieldByName('ControlCode').AsString;

          qryItemsNew.FieldByName('PersonID1').AsInteger :=
            qryItems.FieldByName('PersonID1').AsInteger;

          qryItemsNew.FieldByName('UseUnitID').AsInteger :=
            qryItems.FieldByName('UseUnitID').AsInteger;

          if qryTransFormItems.FieldByName('allEntity').AsFloat <> 0 then
          begin
            qryItemsNew.FieldByName(ChildFieldIOName + 'Entity').Value :=
              (qryItems.FieldByName(ParentFieldIOName + 'Entity').AsFloat *
              qryTransFormItems.FieldByName('Entity').AsFloat) /
              qryTransFormItems.FieldByName('allEntity').AsFloat;
            qryItemsNew.FieldByName(ChildFieldIOName + 'Entity').Value :=
              RoundTo(qryItemsNew.FieldByName(ParentFieldIOName + 'Entity')
              .AsFloat, opt.RoundEntity);
          end;
          if qryTransFormItems.FieldByName('allWeight').AsFloat <> 0 then
          begin
            qryItemsNew.FieldByName(ChildFieldIOName + 'Weight').Value :=
              (qryItems.FieldByName(ParentFieldIOName + 'Weight').AsFloat *
              qryTransFormItems.FieldByName('Weight').AsFloat) /
              qryTransFormItems.FieldByName('allWeight').AsFloat;
            qryItemsNew.FieldByName(ChildFieldIOName + 'Weight').Value :=
              RoundTo(qryItemsNew.FieldByName(ParentFieldIOName + 'Weight')
              .AsFloat, opt.RoundEntity);
          end;
          CurrentEntity := qryItemsNew.FieldByName
            (ChildFieldIOName + 'Entity').AsFloat;
          CurrentWeight := qryItemsNew.FieldByName
            (ChildFieldIOName + 'Weight').AsFloat;
          if not ControlEntity(CurrentEntity, CurrentWeight, qryItemsNew,
            qryReciptsNew, qryinitCo, ChildFieldIOName,
            qryinit.FieldByName('Person3Active').AsInteger = 1,
            MyEntityDisplayType, False) then
            Abort;

          qryItemsNew.Post;
          // GoProgressBar(' در حال ثبت كالاهاي فرم...');
          qryTransFormItems.Next;
        end;
        try
        except
          on E: Exception do
          begin
            Warn('اشكال در ثبت كالاهاي فرم' + E.Message);
            CloseMessage;
          end;

        end;
      end;
      Next;
    end;
    EnableControls;
    qryTransFormItems.Free;
  end;
end;

procedure Formula2(qryItemsNew, qryReciptsNew, qryItems: TADOQuery;
  qryRecipts: TDataSet; qryinit, qryinitCo: TADOQuery;
  ReciptID, ReciptType, ChildFieldIOName, ParentFieldIOName, ReciptNumber,
  ReciptCaption: string; MyEntityDisplayType: Byte);
var
  qryTransFormItems: TADOQuery;
  CurrentEntity, CurrentWeight: Extended;
  price: Currency;
begin
  qryTransFormItems := TADOQuery.Create(DMf);
  with qryTransFormItems do
  begin
    Connection := DMf.adcBSell;

    case qryinit.FieldByName('ConversionCoSerialFormula').AsInteger of
      1, 4:
        begin
          SQL.Text :=
            'SELECT ReciptItems.UseUnitID,TransForms.StuffCode AS ProductCode, ReciptItems.PersonID1';
          SQL.Add(', TransFormItems.StuffCode,');
          SQL.Add('TransFormItems.ProcessID, TransForms.TransFormID,');

          SQL.Add('case when TransForms.Entity * ISNULL(TransFormItems.Entity,0) = 0 then 0 else (ReciptItems.InputEntity + ReciptItems.OutputEntity) / TransForms.Entity * TransFormItems.Entity end AS Entity,');
          SQL.Add('case when TransForms.Weight * ISNULL(TransFormItems.Weight,0) = 0 then 0 else (ReciptItems.InputWeight + ReciptItems.OutputWeight) / TransForms.Weight * TransFormItems.Weight end AS Weight');

          SQL.Add(', ReciptItems.StandardConsumptionCo');

          // SQL.Add('(ReciptItems.InputEntity + ReciptItems.OutputEntity) / TransForms.Entity * TransFormItems.Entity AS Entity,');
          // SQL.Add('(ReciptItems.InputWeight + ReciptItems.OutputWeight) / TransForms.Weight * TransFormItems.Weight AS Weight');

          SQL.Add('FROM TransFormItems INNER JOIN');
          SQL.Add('TransForms ON TransFormItems.TransFormID = TransForms.TransFormID INNER JOIN');
          SQL.Add('(SELECT StuffCode, MAX(TransFormID) AS TransFormID');
          SQL.Add('FROM TransForms AS TransForms_1');
          SQL.Add('WHERE (TransFormDate <= :Date )');
          SQL.Add('GROUP BY StuffCode) AS derivedtbl_1 ON TransForms.StuffCode = derivedtbl_1.StuffCode AND');
          SQL.Add('TransForms.TransFormID = derivedtbl_1.TransFormID INNER JOIN');

          if qryinit.FieldByName('ConversionCoSerialFormula').AsInteger = 4 then
            SQL.Add('ReciptItems ON ISNULL(StandardConsumptionCo,0)= 0 and TransForms.StuffCode = ReciptItems.ProductCode')
          else
            SQL.Add('ReciptItems ON TransForms.StuffCode = ReciptItems.StuffCode');

          SQL.Add('WHERE (TransFormItems.InfoType = 0)');
          SQL.Add('AND (ReciptItems.ReciptID = :ReciptID )');
          SQL.Add('AND (ReciptItems.ServerID = :ServerID )');
          SQL.Add('AND (ReciptItems.YearID = :YearID )');
          Parameters.ParamByName('Date').Value :=
            qryRecipts.FieldByName('ReciptDate').AsString;
        end;
      2, 5:
        begin
          SQL.Text :=
            'SELECT ReciptItems.UseUnitID,TransForms.StuffCode AS ProductCode, ReciptItems.PersonID1, TransFormItems.StuffCode,';
          SQL.Add('TransFormItems.ProcessID, TransForms.TransFormID,');
          SQL.Add('case when TransForms.Entity * ISNULL(TransFormItems.Entity,0) = 0 then 0 else (ReciptItems.InputEntity + ReciptItems.OutputEntity) / TransForms.Entity * TransFormItems.Entity end AS Entity,');
          SQL.Add('case when TransForms.Weight * ISNULL(TransFormItems.Weight,0) = 0 then 0 else (ReciptItems.InputWeight + ReciptItems.OutputWeight) / TransForms.Weight * TransFormItems.Weight end AS Weight');
          SQL.Add(',TransFormItems.StanRate AS StandardRate');
          // SQL.Add(',(ReciptItems.InputEntity + ReciptItems.OutputEntity)*TransFormItems.StanRate AS TotalStandardRate');

          SQL.Add(', StuffCoding.SellPrice1');

          SQL.Add('FROM TransFormItems INNER JOIN');
          SQL.Add('TransForms ON TransFormItems.TransFormID = TransForms.TransFormID INNER JOIN');
          SQL.Add('ReciptItems ON TransForms.StuffCode = ReciptItems.StuffCode ');
          SQL.Add('AND TransForms.TransFormID = ReciptItems.TransFormID');

          SQL.Add('INNER JOIN  StuffCoding ON TransFormItems.StuffCode = StuffCoding.c_StuffCode');

          SQL.Add('WHERE (TransFormItems.InfoType = 0)');
          SQL.Add('AND (ReciptItems.ReciptID = :ReciptID )');
          SQL.Add('AND (ReciptItems.ServerID = :ServerID )');
          SQL.Add('AND (ReciptItems.YearID = :YearID )');
        end;
    end;

    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryRecipts.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
      .AsInteger;
    Active := True;

    if ((qryinit.FieldByName('ConversionCoSerialFormula').AsInteger <> 4) and
      (qryTransFormItems.FieldByName('TransFormID').AsString.Trim = '')) then
    begin
      Warn('برای این فرم در این تاریخ فرمول ساخت تعریف نشده');
      Abort;
      Exit;
    end;

    if ((qryinit.FieldByName('ConversionCoSerialFormula').AsInteger <> 4) and
      (not(qryinit.FieldByName('AutoCorrelateCo').AsInteger and
      Integer(CHkAutoChangeUserFormula) <> 0))) then
      With DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'UPDATE ReciptItems';
        SQL.Add('SET TransFormID = ' + qryTransFormItems.FieldByName
          ('TransFormID').AsString);
        SQL.Add('WHERE(ReciptID = ' + qryItems.FieldByName('ReciptID')
          .AsString + ')');
        SQL.Add('AND ServerID =' + qryItems.FieldByName('ServerID').AsString);
        SQL.Add('AND YearID =' + qryItems.FieldByName('YearID').AsString);
        SQL.Add('AND ReciptItemID =' + qryItems.FieldByName('ReciptItemID')
          .AsString);
        ExecSQL;
      end;

    while not Eof do
    begin
      // BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....',        qryTransFormItems.RecordCount);
      if ((qryinit.FieldByName('ConversionCoSerialFormula').AsInteger <> 4) and
        (qryTransFormItems.IsEmpty)) then
        Warn('براي اين كد محصول و مدل محصول ضرايبي وجود ندارد!!!‏');

      qryItemsNew.Insert;
      qryItemsNew.FieldByName('FirstUser').AsString := User.Name;
      qryItemsNew.FieldByName('ReciptItemID').Value :=
        GetANewID(nil, ReciptType, 'ReciptItems', 'ReciptItemID', qryReciptsNew,
        qryinit.FieldByName('StepCorrelate').AsInteger);
      qryItemsNew.FieldByName('ReciptID').Value := ReciptID;
      qryItemsNew.FieldByName('ServerID').Value :=
        qryReciptsNew.FieldByName('ServerID').AsInteger;
      qryItemsNew.FieldByName('YearID').Value :=
        qryReciptsNew.FieldByName('YearID').AsInteger;
      qryItemsNew.FieldByName('StuffCode').Value :=
        qryTransFormItems.FieldByName('StuffCode').AsLargeInt;
      qryItemsNew.FieldByName('UseUnitID').Value :=
        qryTransFormItems.FieldByName('UseUnitID').AsLargeInt;
      qryItemsNew.FieldByName('PersonID1').AsInteger :=
        qryItems.FieldByName('PersonID1').AsInteger;

      qryItemsNew.FieldByName('ControlCode').AsString :=
        qryItems.FieldByName('ControlCode').AsString;

      qryItemsNew.FieldByName('ProductCode').AsInteger :=
        qryTransFormItems.FieldByName('ProductCode').AsInteger;

      if qryinit.FieldByName('ConversionCoSerialFormula').AsInteger = 4 then
        qryItemsNew.FieldByName(ChildFieldIOName + 'Entity').Value :=
          RoundTo(qryTransFormItems.FieldByName('Entity').AsFloat *
          qryTransFormItems.FieldByName('StandardConsumptionCo').AsFloat,
          opt.RoundEntity)
      else
        qryItemsNew.FieldByName(ChildFieldIOName + 'Entity').Value :=
          RoundTo(qryTransFormItems.FieldByName('Entity').AsFloat,
          opt.RoundEntity);

      qryItemsNew.FieldByName(ChildFieldIOName + 'Weight').Value :=
        RoundTo(qryTransFormItems.FieldByName('Weight').AsFloat,
        opt.RoundEntity);

      qryItemsNew.FieldByName('TransFormID').AsInteger :=
        qryTransFormItems.FieldByName('TransFormID').AsInteger;

      if (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
        Integer(CHKFormula_SellPrice)) <> 0 then
      begin
        qryItemsNew.FieldByName('UnitSellPrice').Value :=
          RoundTo(qryTransFormItems.FieldByName('SellPrice1').AsFloat, 0);

        price := qryItemsNew.FieldByName(ChildFieldIOName + 'Entity').AsFloat *
          qryItemsNew.FieldByName('UnitSellPrice').AsFloat;

        price := RoundTo(price, 0);
        qryItemsNew.FieldByName('Total' + ChildFieldIOName + 'Price')
          .Value := price;

      end;

      if qryinit.FieldByName('StandardRateActive').AsInteger = 3 then
      begin
        qryItemsNew.FieldByName('UnitSellPrice').Value :=
          RoundTo(qryTransFormItems.FieldByName('StandardRate').AsFloat, 0);

        price := qryItemsNew.FieldByName(ChildFieldIOName + 'Entity').AsFloat *
          qryItemsNew.FieldByName('UnitSellPrice').AsFloat;

        price := RoundTo(price, 0);
        qryItemsNew.FieldByName('Total' + ChildFieldIOName + 'Price')
          .Value := price;

        qryItemsNew.FieldByName('StandardRate').Value :=
          RoundTo(qryTransFormItems.FieldByName('StandardRate').AsFloat, 0);

        qryItemsNew.FieldByName('TotalStandardRate').Value := price;
      end;

      CurrentEntity := qryItemsNew.FieldByName
        (ChildFieldIOName + 'Entity').AsFloat;
      CurrentWeight := qryItemsNew.FieldByName
        (ChildFieldIOName + 'Weight').AsFloat;
      if not ControlEntity(CurrentEntity, CurrentWeight, qryItemsNew,
        qryReciptsNew, qryinitCo, ChildFieldIOName,
        qryinit.FieldByName('Person3Active').AsInteger = 1, MyEntityDisplayType,
        False) then
        Abort;

      try
        qryItemsNew.Post;
        // GoProgressBar(' در حال ثبت كالاهاي فرم...');
      except
        on E: Exception do
        begin
          Warn('اشكال در ثبت كالاهاي فرم' + E.Message);
          CloseMessage;
        end;
      end;
      Next;
    end;
    EnableControls;
    Free;
  end;
end;

procedure ServiceValue(qryRecipts, qryItems: TADOQuery);
begin
  // use this procedure in Forms: ReciptsF,ReciptsGridF,ReciptsBuyF
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ServiceCalcType,ServicePrice FROM Customers ';
    SQL.Add('WHERE(CustID=' + IntToStr(qryRecipts.FieldByName('PersonID2')
      .AsInteger) + ')');
    Active := True;
    case FieldByName('ServiceCalcType').AsInteger of
      1:
        qryRecipts.FieldByName('ServiceValue').AsCurrency :=
          RoundTo(FieldByName('ServicePrice').AsCurrency *
          (CalcSumFileds(qryItems, 'InputEntity') + CalcSumFileds(qryItems,
          'OutputEntity')), 0);
      2:
        qryRecipts.FieldByName('ServiceValue').AsCurrency :=
          RoundTo(FieldByName('ServicePrice').AsCurrency, 0);
      3:
        qryRecipts.FieldByName('ServiceValue').AsCurrency :=
          RoundTo(FieldByName('ServicePrice').AsCurrency *
          (CalcSumFileds(qryItems, 'TotalInputPrice') + CalcSumFileds(qryItems,
          'TotalOutputPrice')), 0);
    end;
    Active := False;
  end; // with
end;

function NotNull(s, _message: String): boolean;
begin
  // use this procedure in Forms: ReciptsF,ReciptsGridF,ReciptsBuyF
  Result := False;
  if s = '' then
  begin
    Warn(_message);
    Result := True;
  end;
  // if
end;

procedure AutoState__Change(qryInitQry, qryMaster_Forms: TDataSet);
begin
  if (qryInitQry.FieldByName('AutoStateChange').AsInteger = 1) and
    (qryMaster_Forms.FieldByName('FormState').Value = 0) then
  begin
    if not(qryMaster_Forms.State in dsEditModes) then
      qryMaster_Forms.Edit;
    qryMaster_Forms.FieldByName('FormState').Value := 1;
    qryMaster_Forms.Post;
  end; // if
end;

procedure FormStateAutoStateChange(qryinit, qryForms: TDataSet);
begin
  // 2-موقت باشد
  // 3-ثبت اولیه پیش نویس باشد

  case qryinit.FieldByName('AutoStateChange').AsInteger of
    3:
      qryForms.FieldByName('FormState').AsInteger := 12;
  else
    qryForms.FieldByName('FormState').AsInteger := 0;
  end;
end;

procedure ReciptStateAutoStateChange(qryinit, qryRecipts: TDataSet);
begin
  // 2-موقت باشد
  // 3-ثبت اولیه پیش نویس باشد
  case qryinit.FieldByName('AutoStateChange').AsInteger of
    3:
      qryRecipts.FieldByName('ReciptState').AsInteger := 5;
  else
    qryRecipts.FieldByName('ReciptState').AsInteger := 0;
  end;
end;

function StrInArray(const Value: String;
  const ArrayOfString: Array of String): boolean;
var
  Loop: String;
begin
  for Loop in ArrayOfString do
  begin
    if Value = Loop then
    begin
      Exit(True);
    end;
  end;
  Result := False;
end;

procedure CallRecall(qryinit: TADOQuery; formType: Integer; FormOutput: boolean;
  qryRecipts, qryItems, qryAllRecipts: TADOQuery; StoreID: Integer;
  FieldNameEntity, FieldNameWeight: string; MenSellPrice: TPopupMenu;
  mnuSp: array of TMenuItem);
var
  CheckPrice: boolean;
  // ItemsID: Integer;
  ReciptID, ServerID, YearID, i: Integer;
  // TxtCheckPrice, TxtPrice,
  TxtOutIn, txt, UseStoreIDOnRecall, SelectItemID, fN: String;
  qryTmp: TADOQuery;
  // qryInsert
  RecallTypeOption, UsePerson1OnRecall: Largeint;
  // i: TADOQuery;
begin
  // use this procedure in Forms: ReciptsF,ReciptsGridF,ReciptsBuyF
  txt := qryinit.FieldByName('RecallReciptTypes').AsString;
  If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
    'هيچ فرمي براي فراخواني مشخص نشده است') then
    Exit;
  // StoreID := qryRecipts.FieldByName('StoreID').AsInteger;
  // if StoreID = 0 then
  // := myStore.code;
  RecallTypeOption := qryinit.FieldByName('RecallTypeOption').AsLargeInt;

  UseStoreIDOnRecall := ' and (Recipts.StoreID  = ' + IntToStr(StoreID) + ') ';
  If qryinit.FieldByName('UseStoreIDOnRecall').AsInteger <> 1 Then
    UseStoreIDOnRecall := '';

  UsePerson1OnRecall := qryinit.FieldByName('UsePerson1OnRecall').AsLargeInt;
  if ((UsePerson1OnRecall and Integer(CHkPersonID1Filter)) <> 0) then
    UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID1  = ' +
      IntToStr(qryRecipts.FieldByName('PersonID1').AsInteger) + ') ';

  if ((UsePerson1OnRecall and Integer(CHkPersonID2Filter)) <> 0) then
    UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID2  = ' +
      IntToStr(qryRecipts.FieldByName('PersonID2').AsInteger) + ') ';

  if ((UsePerson1OnRecall and Integer(CHkPersonID3Filter)) <> 0) then
    UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID3  = ' +
      IntToStr(qryRecipts.FieldByName('PersonID3').AsInteger) + ') ';

  if ((UsePerson1OnRecall and Integer(CHkPersonID4Filter)) <> 0) then
    UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID4  = ' +
      IntToStr(qryRecipts.FieldByName('PersonID4').AsInteger) + ') ';

  if ((UsePerson1OnRecall and Integer(CHkPersonID5Filter)) <> 0) then
    UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID5  = ' +
      IntToStr(qryRecipts.FieldByName('PersonID5').AsInteger) + ') ';

  // case qryinit.FieldByName('UsePerson1OnRecall').AsInteger of
  // 1:
  // UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID1  = ' +
  // IntToStr(qryRecipts.FieldByName('PersonID1').AsInteger) + ') ';
  // 2:
  // UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID2  = ' +
  // IntToStr(qryRecipts.FieldByName('PersonID2').AsInteger) + ') ';
  // 3:
  // UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID3  = ' +
  // IntToStr(qryRecipts.FieldByName('PersonID3').AsInteger) + ') ';
  //
  // 4:
  // begin
  // UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID1  = '
  // + IntToStr(qryRecipts.FieldByName('PersonID1').AsInteger) + ') ';
  // UseStoreIDOnRecall := UseStoreIDOnRecall + ' and (Recipts.PersonID2  = '
  // + IntToStr(qryRecipts.FieldByName('PersonID2').AsInteger) + ') ';
  //
  // end;
  //
  // end;
  { همه وضعیت ها
    فقط اطلاعات قطعي فراخواني شود.‏
    فقط اطلاعات دائمی فراخواني شود.‏ }
  // UseStoreIDOnRecall := UseStoreIDOnRecall + ' AND(Recipts.ReciptState < 3 )';
  if qryinit.FieldByName('RecallReciptState1').AsInteger = 1 then
    UseStoreIDOnRecall := UseStoreIDOnRecall + ' AND(Recipts.ReciptState = 1 )';

  if qryinit.FieldByName('RecallReciptState1').AsInteger = 2 then
    UseStoreIDOnRecall := UseStoreIDOnRecall + ' AND(Recipts.ReciptState = 2 )';

  if qryinit.FieldByName('RecallReciptState1').AsInteger = 3 then
    UseStoreIDOnRecall := UseStoreIDOnRecall +
      ' AND(Recipts.ReciptState <> 3 )';

  RecallReciptsF.SelectRecall(txt, CheckPrice, ReciptID, ServerID, YearID,
    UseStoreIDOnRecall, formType, SelectItemID, qryinit, qryRecipts);
  if (ReciptID = 0) { or (SelectItemID = '') }
  then
  begin { qryRecipts.Cancel; }
    Exit;
  end;
  With qryTmp do
  begin
    qryTmp := TADOQuery.Create(DMf);
    qryTmp.Connection := DMf.adcBSell;
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM Recipts ');
    SQL.Add(Format('WHERE(ReciptID = %d ) AND (ReciptType IN( %s ))',
      [ReciptID, txt]));
    SQL.Add(Format('AND (YearID = %d )', [YearID]));
    SQL.Add(Format('AND (ServerID = %d )', [ServerID]));

    Active := True;
    if qryinit.FieldByName('RecallType').AsInteger = 9 then
    begin
      Edit;
      FieldByName('AidDate').AsString := FieldByName('ReciptDate').AsString;
      FieldByName('AidNumber').AsString := FieldByName('ReciptNumber').AsString;
      GetReciptNumber(qryinit, qryTmp, 0, myStore);
      FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
      FieldByName('ReciptType').AsInteger := qryinit.FieldByName('ReciptType')
        .AsInteger;
      FieldByName('YearID').AsInteger := APPBank.Year;
      FieldByName('LastUser').AsString := User.Name;

      ReciptStateAutoStateChange(qryinit, qryTmp);

      Post;

      if (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
        Integer(CHkRciptDateToItemDate)) <> 0 then
      begin
        SQL.Text := Format('UPDATE ReciptItems SET ItemDate = %s',
          [QuotedStr(var_glb_CurrentDate)]);
        SQL.Add(Format('WHERE(ReciptID = %d )', [ReciptID]));
        SQL.Add(Format('AND (YearID = %d )', [YearID]));
        SQL.Add(Format('AND (ServerID = %d )', [ServerID]));
        ExecSQL;
      end;

      if qryTmp <> nil then
        qryTmp.Free;
      qryRecipts.Requery();
      qryAllRecipts.Requery();
      qryAllRecipts.Locate('ReciptID;YearID;ServerID',
        VarArrayOf([ReciptID, YearID, ServerID, APPBank.Year,
        opt.ServerID]), []);
      Exit;
    end;

    for i := 0 to Fields.Count - 1 do
    begin
      fN := Fields[i].FieldName;
      if ((qryRecipts.FindField(fN) <> nil) and not IgonreReciptsFileds(fN))
      then
        if qryRecipts.FieldByName(fN).CanModify then
          if (qryRecipts.FieldByName(fN).AsString = EmptyStr) or
            (qryRecipts.FieldByName(fN).AsString = '0') then
            qryRecipts.FieldByName(fN).AsString := Fields[i].AsString;
    end;
    qryRecipts.FieldByName('FirstUser').AsString := User.Name;

    ReciptStateAutoStateChange(qryinit, qryRecipts);
    if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger <> 5 then
      qryRecipts.FieldByName('SellsEmporium').AsInteger :=
        FieldByName('SellsEmporium').AsInteger;

    { TODO -omahmood -cGeneral : ActionItem }
    qryRecipts.FieldByName('YearID').AsInteger := APPBank.Year;
    qryRecipts.FieldByName('prvYearID').AsInteger := YearID;

    if qryinit.FieldByName('RecallType').AsInteger = 20 then
    begin
      qryRecipts.FieldByName('StoreID').AsInteger := FieldByName('StoreID2')
        .AsInteger;
      qryRecipts.FieldByName('StoreID2').AsInteger := 0;
    end
    else
    begin
      if StoreID <> 0 then
        qryRecipts.FieldByName('StoreID').AsInteger := StoreID
      else
        qryRecipts.FieldByName('StoreID').AsInteger := FieldByName('StoreID')
          .AsInteger;
      // FieldByName('StoreID').AsInteger;   مبتکر
    end;

    if qryRecipts.FieldByName('PersonID1').AsInteger = 0 then
      qryRecipts.FieldByName('PersonID1').AsInteger := FieldByName('PersonID1')
        .AsInteger;

    // if not((RecallTypeOption and Integer(CHkNotUsingParentReciptID)) <> 0) then
    qryRecipts.FieldByName('ParentReciptID').AsInteger := ReciptID;
    qryRecipts.FieldByName('IRTAXID').AsString := FieldByName('TAXID').AsString;

    qryRecipts.FieldByName('PersonID2').AsInteger := FieldByName('PersonID2')
      .AsInteger;
    qryRecipts.FieldByName('PersonID3').AsInteger := FieldByName('PersonID3')
      .AsInteger;
    qryRecipts.FieldByName('PersonID4').AsInteger := FieldByName('PersonID4')
      .AsInteger;

    if qryRecipts.FindField('PersonID5') <> nil then
      qryRecipts.FieldByName('PersonID5').AsInteger := FieldByName('PersonID5')
        .AsInteger;

    qryRecipts.FieldByName('UseUnitID').AsInteger := FieldByName('UseUnitID')
      .AsInteger;

    qryRecipts.FieldByName('TruckNumber').AsString :=
      FieldByName('TruckNumber').AsString;

    if (qryRecipts.FindField('MasirID') <> nil) and
      (FieldByName('MasirID').AsInteger > 0) then
      qryRecipts.FieldByName('MasirID').AsInteger := FieldByName('MasirID')
        .AsInteger;
    qryRecipts.FieldByName('ReciptNote').AsString :=
      FieldByName('ReciptNote').AsString;

    if qryRecipts.FindField('MachineNo') <> nil then
      qryRecipts.FieldByName('MachineNo').AsString :=
        FieldByName('MachineNo').AsString;
    qryRecipts.FieldByName('ExpireDate').AsString :=
      FieldByName('ExpireDate').AsString;
    if qryRecipts.FindField('MachineName') <> nil then
      qryRecipts.FieldByName('MachineName').AsString :=
        FieldByName('MachineName').AsString;

    if qryinit.FieldByName('AidNumRestOnSecType').AsInteger <> 1 then
      qryRecipts.FieldByName('SecondType').AsInteger :=
        FieldByName('SecondType').AsInteger;

    // qryRecipts.FieldByName('ArzTypeID').AsInteger := FieldByName('ArzTypeID')
    // .AsInteger;
    // qryRecipts.FieldByName('RialsEqual').AsFloat :=
    // FieldByName('RialsEqual').AsFloat;

    case qryinit.FieldByName('InsertAidOnRecall').AsInteger of
      0, 1:
        begin
          qryRecipts.FieldByName('AidDate').AsString :=
            FieldByName('ReciptDate').AsString;
          qryRecipts.FieldByName('AidNumber').AsString :=
            FieldByName('ReciptNumber').AsString;
        end;
      2:
        begin
          qryRecipts.FieldByName('AidNumber').AsString :=
            FieldByName('AidNumber').AsString;

          qryRecipts.FieldByName('AidDate').AsString :=
            FieldByName('AidDate').AsString;
        end;
    end;

    if (RecallTypeOption and Integer(CHkInsertMastrReciptNumber)) <> 0 then
    begin
      qryRecipts.FieldByName('ReciptNumber').AsInteger :=
        FieldByName('ReciptNumber').AsInteger;
    end;
    if (SelectItemID = '') then
    begin
      Exit;
    end;

    Active := False;
    if qryinit.FieldByName('RecallType').AsInteger <> 19 then
    begin
      // qryRecipts.Post;
      // qryRecipts.Edit;
      // با فعال شدن این دو خط فرمی که از آن فراخوانی میشد تغییر تایپ میشد حذف میشد
    end;
    SQL.Text := 'SELECT * FROM  ReciptItems ';
    SQL.Add(Format('WHERE (ReciptID = %d )', [ReciptID]));
    SQL.Add(Format('AND (ServerID = %d)', [ServerID]));
    SQL.Add(Format('AND (YearID = %d)', [YearID]));
    SQL.Add(Format('AND (ReciptItemID IN( %s )) ', [SelectItemID]));
    if qryinit.FieldByName('RecallType').AsInteger <> 19 then
    begin
      Active := True;

      /// /new
      while not Eof do
      begin
        qryItems.Insert;

        for i := 0 to Fields.Count - 1 do
        begin
          fN := Fields[i].FieldName;
          if ((qryItems.FindField(fN) <> nil) and
            not(IgonreReciptItemsFileds(fN))) then
            if qryItems.FieldByName(fN).CanModify then
              if (qryItems.FieldByName(fN).AsString = EmptyStr) or
                (qryItems.FieldByName(fN).AsString = '0') then
                qryItems.FieldByName(fN).AsString := Fields[i].AsString;
        end;
        qryItems.FieldByName('FirstUser').AsString := User.Name;

        if (RecallTypeOption and Integer(CHkInsertTax)) = 0 then
        begin
          if qryItems.FindField('TaxCo') <> nil then
            qryItems.FieldByName('TaxCo').AsString :=
              FieldByName('TaxCo').AsString;
          if qryItems.FindField('TaxValue') <> nil then
            qryItems.FieldByName('TaxValue').AsString :=
              FieldByName('TaxValue').AsString;
        end;

        qryItems.FieldByName('StuffCode').AsLargeInt := FieldByName('StuffCode')
          .AsLargeInt;
        qryItems.FieldByName('preReciptItemID').AsString :=
          FieldByName('ReciptItemID').AsString;

        qryItems.FieldByName('ProductCode').AsLargeInt :=
          FieldByName('ProductCode').AsLargeInt;

        qryItems.FieldByName('StuffSize').AsString :=
          FieldByName('StuffSize').AsString;
        qryItems.FieldByName('StuffDiameter').AsString :=
          FieldByName('StuffDiameter').AsString;
        qryItems.FieldByName('StuffAlloy').AsString :=
          FieldByName('StuffAlloy').AsString;

        if qryinit.FieldByName('Section2Visible').AsInteger <> 2 then
        begin
          qryItems.FieldByName('RequestedWeight').AsString :=
            FieldByName('RequestedWeight').AsString;
          qryItems.FieldByName('RequestedEntity').AsString :=
            FieldByName('RequestedEntity').AsString;

          qryItems.FieldByName('AcceptWeight').AsString :=
            FieldByName('RequestedWeight').AsString;
          qryItems.FieldByName('AcceptEntity').AsString :=
            FieldByName('RequestedEntity').AsString;
        end;


        // SetOnChangeOff(qryItems.FieldByName('RequestedEntity'),
        // FieldByName('RequestedEntity').AsString);
        // SetOnChangeOff(qryItems.FieldByName('RequestedWeight'),
        // FieldByName('RequestedWeight').AsString);

        qryItems.FieldByName('ControlCode').AsString :=
          FieldByName('ControlCode').AsString;
        qryItems.FieldByName('StuffGrade').AsString :=
          FieldByName('StuffGrade').AsString;
        qryItems.FieldByName('ItemNote').AsString :=
          FieldByName('ItemNote').AsString;
        qryItems.FieldByName('UseUnitID').AsString :=
          FieldByName('UseUnitID').AsString;

        if qryItems.FindField('_PersonName1') <> nil then
          qryItems.FieldByName('_PersonName1').Required := False;
        qryItems.FieldByName('PersonID1').AsString :=
          FieldByName('PersonID1').AsString;

        qryItems.FieldByName('AidNumber').AsString :=
          FieldByName('AidNumber').AsString;
        qryItems.FieldByName('AidDate').AsString :=
          FieldByName('AidDate').AsString;

        TxtOutIn := IfThen(FormOutput, 'Output', 'Input');
        qryItems.FieldByName(TxtOutIn + 'Weight').ReadOnly := False;
        qryItems.FieldByName(TxtOutIn + 'Weight').AsFloat :=
          FieldByName('OutputWeight').AsFloat +
          FieldByName('InputWeight').AsFloat;
        qryItems.FieldByName(TxtOutIn + 'Entity').ReadOnly := False;
        qryItems.FieldByName(TxtOutIn + 'Entity').AsFloat :=
          FieldByName('OutputEntity').AsFloat +
          FieldByName('InputEntity').AsFloat;

        if ((opt.ConfigSettings and Integer(CHkCsSpecialCode)) <> 0) then
          if qryItems.FindField('SpecialCode') <> nil then
            qryItems.FieldByName('SpecialCode').AsString :=
              FieldByName('SpecialCode').AsString;

        if (CheckPrice or (qryinit.FieldByName('RecallType').AsInteger in [17]))
        then
        begin
          qryItems.FieldByName('Total' + TxtOutIn + 'Price').AsFloat :=
            FieldByName('TotalOutputPrice').AsFloat +
            FieldByName('TotalInputPrice').AsFloat;

          if (RecallTypeOption and Integer(ChkUnitSellPriceFromManifesto)) <> 0
          then
            qryItems.FieldByName('UnitSellPrice').AsFloat :=
              GetUnitSellPrice(qryItems, qryRecipts, qryinit, FieldNameEntity,
              MenSellPrice, mnuSp)
          else
            qryItems.FieldByName('UnitSellPrice').AsFloat :=
              FieldByName('UnitSellPrice').AsFloat;

          qryItems.FieldByName('TotallSellPrice').AsFloat :=
            FieldByName('TotallSellPrice').AsFloat;
        end;

        if qryItems.FieldByName('waterco').AsInteger = 0 then
          qryItems.FieldByName('DeficitValue').AsString :=
            FieldByName('DeficitValue').AsString;

        if qryItems.FindField('DeficitValueCo2') <> nil then
          qryItems.FieldByName('DeficitValueCo2').AsString :=
            FieldByName('DeficitValueCo2').AsString;

        qryItems.FieldByName('DeficitValue2').AsString :=
          FieldByName('DeficitValue2').AsString;

        if qryItems.FindField('DeficitValueCo3') <> nil then
          qryItems.FieldByName('DeficitValueCo3').AsString :=
            FieldByName('DeficitValueCo3').AsString;

        qryItems.FieldByName('DeficitValue3').AsString :=
          FieldByName('DeficitValue3').AsString;

        if qryItems.FindField('DeficitValueCo4') <> nil then
          qryItems.FieldByName('DeficitValueCo4').AsString :=
            FieldByName('DeficitValueCo4').AsString;

        if qryItems.FindField('DeficitValue4') <> nil then
          qryItems.FieldByName('DeficitValue4').AsString :=
            FieldByName('DeficitValue4').AsString;

        if (RecallTypeOption and Integer(CHkInsertTax)) <> 0 then
        begin
          if qryItems.FindField('TaxCo') <> nil then
            qryItems.FieldByName('TaxCo').AsString :=
              FieldByName('TaxCo').AsString;
          if qryItems.FindField('TaxValue') <> nil then
            qryItems.FieldByName('TaxValue').AsString :=
              FieldByName('TaxValue').AsString;
        end;

        if (qryItems.FindField('ArzRate') <> nil) and
          (qryItems.FieldByName('ArzRate').AsFloat <> 0) then
          qryItems.FieldByName('ArzRate').AsFloat :=
            qryItems.FieldByName('ArzRate').AsFloat;
        // ArzRate   پایین بود فی رو صفر وکرد تو طلاچین

        try
          qryItems.Post;
          // BigMessage(' در حال ثبت كالاهاي...' + qryItems.FieldByName
          // ('_StuffName').AsString, 0);
        except
          on E: Exception do
          begin
            Warn('اشكال در ثبت كردن فرم‌' + E.Message);
          end;
        end;
        Next;
      end; // while    new

      BigMessage('ثبت شد.', 1);
      CloseMessage;
      Active := False;

    end;

  end; // with DMf.qryTmp
  if qryTmp <> nil then
    qryTmp.Free;

end;

function IgonreReciptsFileds(FiledName: string): boolean;
begin
  Result := StrInArray(LowerCase(FiledName), ['docno', 'docdate', 'operatorid',
    'firstuser', 'lastuser', 'relatedid', 'inserttime', 'edittime', 'prvyearid',
    'tozinid', 'tax_status'])
end;

function IgonreReciptItemsFileds(FiledName: string): boolean;
begin
  Result := StrInArray(LowerCase(FiledName), ['firstuser', 'lastuser',
    'parentid', 'tozinid', 'inputentity', 'outputentity', 'inputweight',
    'outputweight', 'totalinputprice', 'totaloutputprice'])
end;

function NewReciptsCorrelateChkEntity(ID: Largeint; qryinit: TADOQuery)
  : boolean;
var
  Description: string;
  ReciptType, CorrelateReciptType, ControlEntityKind: Integer;
begin
  Result := True;
  if ((qryinit.FieldByName('ChangeAidReciptDate').AsLargeInt and
    Integer(CHkInventoryControl) = 0)) then
    Exit;

  With TADOStoredProc.Create(DMf) do
  begin
    Connection := DMf.adcBSell;
    ProcedureName := 'NewReciptsCorrelateChkEntity;1';
    Parameters.Refresh;
    Parameters.ParamByName('@OldID').Value := ID;
    /// Parameters.ParamByName('@FirstUser').Value := User.Name;
    Parameters.ParamByName('@Description').Value := '';
    ExecProc;
    Description := Parameters.ParamByName('@Description').Value;
    Result := Description = EmptyStr;
    Free;
  end;
  if not Result then
  begin
    Warn2('عدم موجودي :' + #13#10 + Description, 1500);
    with qryinit do
    begin
      ReciptType := FieldByName('ReciptType').AsInteger;
      CorrelateReciptType := FieldByName('CorrelateReciptType').AsInteger;
      Active := False;
      Parameters.ParamByName('ReciptType').Value := CorrelateReciptType;
      Active := True;
      ControlEntityKind := qryinit.FieldByName('ControlEntityKind').AsInteger;
      Active := False;
      Parameters.ParamByName('ReciptType').Value := ReciptType;
      Active := True;
      if ControlEntityKind = 0 then
        Result := True
      else
      begin
        Abort;
      end;
    end;
  end;

end;

function InsertCorrelateRecipt(qryinit: TADOQuery; qryItems: TADOQuery;
  formType: Integer; qryRecipts: TADOQuery; FormOutput: boolean;
  DBNavigator1: TDBNavigator; MyEntityDisplayType: Byte): Integer;
// FormName:String;
var
  CorrelateReciptType, ReciptNumber, SqlText, ReciptCaption, msg, SQL1, SQL2,
    ServerID: String;
  sID1, sID2: TStore;
  qryInsert: TADOQuery;
  ReciptItemID, CorrelateKind, X: Integer;
  ShowNotEntityOnSearch: Largeint;
  PostWithNewReciptsCorrelate: boolean;
begin
  try
    PostWithNewReciptsCorrelate :=
      ((qryinit.FieldByName('ChangeAidReciptDate').AsInteger and
      Integer(CHkPostWithNewReciptsCorrelate)) <> 0);
    if DBNavigator1 <> nil then
      DBNavigator1.Enabled := False;
    Result := 0;
    // use this procedure in Forms: ReciptsF,ReciptsGridF,ReciptsBuyF
    if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), qryRecipts)
    then
      Abort;
    if qryItems.IsEmpty then
      Exit;
    CorrelateReciptType := qryinit.FieldByName('CorrelateReciptType').AsString;
    ShowNotEntityOnSearch := qryinit.FieldByName('ShowNotEntityOnSearch')
      .AsLargeInt;
    with qryinit do
    begin
      Active := False;
      Parameters.ParamByName('ReciptType').Value :=
        StrToInt(CorrelateReciptType);
      Active := True;
      ReciptCaption := FieldByName('ReciptCaption').AsString;
      Active := False;
      Parameters.ParamByName('ReciptType').Value := formType;
      Active := True;
    end; // with
    msg := 'آيا براي ثبت فرم ' + ReciptCaption + ' مطمئن هستيد؟';
    if IsParent(qryRecipts, 'ParentReciptID', StrToInt(CorrelateReciptType))
    then
    begin
      // not(qryRecipts.FieldByName('ParentReciptID').IsNull)
      if (qryinit.FieldByName('AutoCorrelate').AsInteger <> 1) or PostWithNewReciptsCorrelate
      then
      begin
        Warn('براي اين فرم قبلا ' + ReciptCaption + ' ثبت شده است ',
          mtInformation);

        if qryinit.FieldByName('Correlate4EditActive').AsInteger = 6 then

          PostWithNewReciptsCorrelate := True
        else
          qryRecipts.Next;
      end; // if
      if qryinit.FieldByName('Correlate4EditActive').AsInteger <> 6 then
        Exit;
    end;

    if PostWithNewReciptsCorrelate then
    begin
      With DMf.stpNewReciptsCorrelate do
      begin
        Active := False;
        CommandTimeout := 0;
        Parameters.ParamByName('@OldID').Value := qryRecipts.FieldByName('ID')
          .AsLargeInt;
        Parameters.ParamByName('@FirstUser').Value := User.Name;
        Parameters.ParamByName('@ID').Value := 0;
        ExecProc;
        if VarToStr(Parameters.ParamByName('@ID').Value) <> '0' then
          Warn2('انجام شد.' + #13 +
            VarToStr(Parameters.ParamByName('@ID').Value))
        else
          Warn2('انجام شده.' + #13 +
            VarToStr(Parameters.ParamByName('@ID').Value));

        Active := False;
      end;
      Exit;
    end;

    sID2.Code := 0;
    if (qryinit.FieldByName('Store2Active').AsInteger <> 1) then
    begin
      if (qryinit.FieldByName('ShowSelectStore').AsInteger = 1) then
      begin
        SelectStoreF.GetStore(sID1, qryinit.FieldByName('StoreCaption').AsString
          + ' براي ثبت ', qryinit.FieldByName('StoreKindList').AsString,
          MyEntityDisplayType);
        if sID1.Code = 0 then
          Exit;
      end
      else
      begin
        sID1.Code := qryRecipts.FieldByName('StoreID').AsInteger;
        sID2.Code := qryRecipts.FieldByName('StoreID2').AsInteger;
      end;
    end
    else
    begin
      sID1.Code := qryRecipts.FieldByName('StoreID2').AsInteger;
      sID2.Code := qryRecipts.FieldByName('StoreID').AsInteger;
    end;

    if qryinit.FieldByName('StepCorrelate').AsInteger <> 1 then
      Result := qryRecipts.FieldByName('ReciptID').AsInteger - 1
    else
      // ReciptType
      Result := GetANewID(nil, qryinit.FieldByName('CorrelateReciptType')
        .AsString, 'Recipts', 'ReciptID', qryRecipts,
        qryinit.FieldByName('StepCorrelate').AsInteger);

    // with qryRecipts do begin
    // if not(state in dsEditModes) then Edit;
    // FieldByName('ParentReciptID').AsString:=ReciptID;
    // if (qryinit.FieldByName('AutoCorrelate').AsInteger<>1) then  Post;
    // end;//with

    if ((opt.ConfigSettings and Integer(CHkCsFillParentReciptID)) = 0) then
      With DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'update Recipts';
        SQL.Add('set ParentReciptID=' + IntToStr(Result));
        SQL.Add('WHERE (ReciptID = ' + qryRecipts.FieldByName('ReciptID')
          .AsString + ')');
        SQL.Add('AND   (YearID = ' + qryRecipts.FieldByName('YearID')
          .AsString + ')');
        SQL.Add('AND   (ServerID = ' + qryRecipts.FieldByName('ServerID')
          .AsString + ')');
        ExecSQL;
      end; // with

    ServerID := qryRecipts.FieldByName('ServerID').AsString;

    ReciptNumber := qryRecipts.FieldByName('ReciptNumber').AsString;
    if qryinit.FieldByName('CorrelateReciptNumberKind').AsInteger in [1, 3] then
    begin
      SqlText := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
        CorrelateReciptType + ')';

      if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger = 1 then
        SqlText := SqlText + 'AND(StoreID=' + IntToStr(sID1.Code) + ')';

      if qryinit.FieldByName('CorrelateReciptNumberKind').AsInteger in [3] then
        SqlText := SqlText + ' AND(YearID=' + qryRecipts.FieldByName('YearID')
          .AsInteger.ToString + ')';

      ReciptNumber := IntToStr(GetANewCode(CorrelateReciptType, SqlText,
        'ReciptNumber'));
    end;
    //

    /// /////ReciptID post
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'INSERT INTO Recipts';
      SQL.Add('(ReciptID,StoreID,StoreID2,ReciptNumber,PersonID1,PersonID2,PersonID3,PersonID4,PersonID5,ReciptType,SecondType,ServiceValue,ReciptValue,');
      SQL.Add('ReciptDate,AidDate,');
      SQL.Add('TotalValue,AddDecValue,ReciptNote,ParentReciptID,OperatorID,ModifyDate,ReciptState,UseUnitID,');
      SQL.Add('[ExpireDate],ProjectID,BudgetID,AidNumber,FirstUser, LastUser, ReciptStartDate, ReciptEndDate,');
      SQL.Add('UseOtherID');
      SQL.Add(',YearID,ServerID, DebtControlActive, TruckNumber, MachineNo, MachineName, MachineInfo, ArzTypeID,');
      SQL.Add(' RialsEqual, ReciptsRow');
      SQL.Add(', SellsMethod, SellsEmporium, MasirID ,DeliveryID, PersonID2Bed, RelatedID,  ');
      SQL.Add('CostDownSave, DefaultDate, InsertDate, InsertTime, EditTime');
      SQL.Add(',UserRegistrationDoc, DefaultDuration, CalcGiftItems, ReciptDateMiladi, MachineFullWeight');
      SQL.Add(', MachineWeight, CalcCostStorage, PortageBedbes, ReciptNote2, PO, ReciptNumberFormer)');
      // ParentCoReciptID,
      SQL.Add('SELECT ' + IntToStr(Result) + ',' + IntToStr(sID1.Code) + ',' +
        IntToStr(sID2.Code) + ',' + ReciptNumber +
        ',PersonID1,PersonID2,PersonID3,PersonID4,PersonID5,' +
        CorrelateReciptType + ',SecondType,ServiceValue,ReciptValue,');

      if ((qryinit.FieldByName('ChangeAidReciptDate').AsLargeInt and
        Integer(CHkChangeAidReciptDate)) <> 0) then
        // if (qryinit.FieldByName('ChangeAidReciptDate').AsInteger > 0) then
        SQL.Add('AidDate,ReciptDate,')
      else
      begin
        if (ShowNotEntityOnSearch and Integer(CHkCorrelateReciptDateNow) <> 0)
        then
          SQL.Add(QuotedStr(var_glb_CurrentDate) + ' AS ReciptDate,AidDate,')
        else if (qryinit.FieldByName('ChangeAidReciptDate').AsLargeInt and
          Integer(CHKReciptDateToAidDate) <> 0) then
          SQL.Add(' ReciptDate,ReciptDate AS AidDate,')
        else
          SQL.Add('ReciptDate,AidDate,')
      end;

      SQL.Add('TotalValue,AddDecValue,ReciptNote,ReciptID,OperatorID,GETDATE()');
      X := qryinit.FieldByName('ReciptStatecreatedForm').AsInteger;
      if X = 0 then
        SQL.Add(',ReciptState')
      else
        SQL.Add(',' + (X - 1).ToString + ' AS ReciptState');

      SQL.Add(',UseUnitID,[ExpireDate],ProjectID,BudgetID');

      if ((qryinit.FieldByName('Settings').AsLargeInt and
        Integer(CHkAidNumberNotCopy)) <> 0) then
        SQL.Add(',NULL as AidNumber')
      else
        SQL.Add(',AidNumber');

      SQL.Add(',' + QuotedStr(User.Name) +
        ' AS FirstUser,'''' LastUser, ReciptStartDate, ReciptEndDate,');
      SQL.Add('UseOtherID');
      { Parent }
      SQL.Add(',YearID,' + ServerID +
        ', DebtControlActive, TruckNumber, MachineNo, MachineName, MachineInfo, ArzTypeID,');
      SQL.Add(' RialsEqual, ReciptsRow');
      SQL.Add(', SellsMethod, SellsEmporium, MasirID, DeliveryID, PersonID2Bed, RelatedID,  ');
      SQL.Add('CostDownSave, DefaultDate,   InsertDate, InsertTime, EditTime');
      SQL.Add(',UserRegistrationDoc, DefaultDuration, CalcGiftItems, ReciptDateMiladi');
      SQL.Add(', MachineFullWeight, MachineWeight, CalcCostStorage, PortageBedbes');
      SQL.Add(', ReciptNote2, PO, ReciptNumberFormer'); // ParentCoReciptID,
      SQL.Add('FROM Recipts');
      SQL.Add('WHERE (ReciptID = ' + qryRecipts.FieldByName('ReciptID')
        .AsString + ')');
      SQL.Add('AND   (YearID = ' + qryRecipts.FieldByName('YearID')
        .AsString + ')');
      SQL.Add('AND   (ServerID = ' + qryRecipts.FieldByName('ServerID')
        .AsString + ')');
      // try
      ExecSQL;
      BigMessage(' در حال ثبت فرم...', 1);
      Active := False;
      // except
      // Warn('اشكال در ثبت كردن فرم‌');
      // end; // try
    end; // with
    CorrelateKind := qryinit.FieldByName('CorrelateKind').AsInteger;
    case CorrelateKind of
      { 'ثبت در وارده‏ها با مبلغ' }
      1, 6:
        begin
          SQL1 := 'OutputEntity,InputEntity,OutputWeight,InputWeight,' +
            'TotalOutputPrice,TotalInputPrice,UnitSellPrice,UnitSellPrice2' +
            IfThen(CorrelateKind = 1,
            ',DeficitValue, DeficitValue2, DeficitValue3, DeficitValue4', '') +
            ',TaxValue, Portage, Article,Wage' + ',Scoria,TotalStandardRate' +
            IfThen(CorrelateKind = 1, ', TotallSellPrice',
            ',TotalOutputPrice+TotalInputPrice') + ',TaxCo' +
            IfThen(CorrelateKind = 1, ', WaterCo', '') + ',UnitCommission';

          SQL2 := 'InputEntity,OutputEntity,InputWeight,OutputWeight,' +
            'TotalInputPrice,TotalOutputPrice,UnitSellPrice,UnitSellPrice2' +
            IfThen(CorrelateKind = 1,
            ',DeficitValue, DeficitValue2, DeficitValue3, DeficitValue4', '') +
            ',TaxValue, Portage, Article,Wage' + ',Scoria,TotalStandardRate' +
            IfThen(CorrelateKind = 1, ', TotallSellPrice',
            ',TotalOutputPrice+TotalInputPrice') + ',TaxCo' +
            IfThen(CorrelateKind = 1, ', WaterCo', '') + ',UnitCommission';

          SqlText := IfThen(FormOutput, SQL1, SQL2);
        end;

      { 'ثبت در وارده‏ها بدون مبلغ' }
      2:
        SqlText := IfThen(FormOutput,
          'OutputEntity,InputEntity,OutputWeight,InputWeight,0,0,0' +
          ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0',
          'InputEntity,OutputEntity,InputWeight,OutputWeight,0,0,0' +
          ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
      { 'ثبت در صادره‏ها با مبلغ' }
      3:
        SqlText := IfThen(FormOutput,
          'InputEntity,OutputEntity,InputWeight,OutputWeight,' +
          'TotalInputPrice,TotalOutputPrice,UnitSellPrice' +
          ',UnitSellPrice2,DeficitValue, DeficitValue2, DeficitValue3, DeficitValue4,TaxValue, Portage, Article,Wage'
          + ',Scoria,TotalStandardRate,TotallSellPrice,TaxCo, WaterCo,UnitCommission',
          'OutputEntity,InputEntity,OutputWeight,InputWeight,' +
          'TotalOutputPrice,TotalInputPrice,UnitSellPrice' +
          ',UnitSellPrice2,DeficitValue, DeficitValue2, DeficitValue3, DeficitValue4,TaxValue, Portage, Article,Wage'
          + ',Scoria,TotalStandardRate,TotallSellPrice,TaxCo, WaterCo,UnitCommission');
      { 'ثبت در صادره‏ها بدون مبلغ' }
      4:
        SqlText := IfThen(FormOutput,
          'InputEntity,OutputEntity,InputWeight,OutputWeight,0,0,0' +
          ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0',
          // UnitSellPrice
          'OutputEntity,InputEntity,OutputWeight,InputWeight,0,0,0' +
          ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
      // UnitSellPrice

      7:
        SqlText := IfThen(FormOutput,
          '0 AS InputEntity,RequestedEntity AS OutputEntity,0 AS InputWeight,RequestedWeight AS OutputWeight,0,0,0'
          + ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0',
          'RequestedEntity AS OutputEntity,0 AS InputEntity,RequestedEntity AS OutputWeight,0 AS InputWeight,0,0,0'
          + ',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');

      { 'ثبت در صادره‏ها با نرخ فروش' }
      5:
        SqlText := IfThen(FormOutput,
          'InputEntity,OutputEntity,InputWeight,OutputWeight,0,' +
          'dbo.AutoUnitSellPrice2(ID, 1 ),dbo.AutoUnitSellPrice2(ID, 0 ) ' +
          ',UnitSellPrice2,DeficitValue, DeficitValue2, DeficitValue3, DeficitValue4,TaxValue '
          + ', Portage, Article,Wage,Scoria,TotalStandardRate,' +
          'dbo.AutoUnitSellPrice2(ID, 1)  '
          // * (InputEntity + OutputEntity)
          + '-DeficitValue+ISNULL(TaxValue,0)  AS  TotallSellPrice ' +
          ',TaxCo, WaterCo,UnitCommission',
          'OutputEntity,InputEntity,OutputWeight,InputWeight,' +
          'dbo.AutoUnitSellPrice2(ID, 1 ) ,0,dbo.AutoUnitSellPrice2(ID, 0  )' +
          ',UnitSellPrice2,DeficitValue, DeficitValue2, DeficitValue3, DeficitValue4,TaxValue '
          + ', Portage, Article,Wage,Scoria,TotalStandardRate,' +
          'dbo.AutoUnitSellPrice2(ID, 1)  '
          // * (InputEntity + OutputEntity)
          + '-DeficitValue+ISNULL(TaxValue,0)  AS TotallSellPrice ' +
          ',TaxCo, WaterCo,UnitCommission');

    end; // case
    qryInsert := TADOQuery.Create(DMf);
    qryInsert.Connection := DMf.adcBSell;

    case CorrelateKind of
      8:
        With TADOStoredProc.Create(DMf) do
        begin
          Connection := DMf.adcBSell;
          ProcedureName := 'NewReciptsCorrelateKind8;1';
          Parameters.Refresh;
          Parameters.ParamByName('@NewReciptID').Value := Result;
          Parameters.ParamByName('@ReciptID').Value :=
            qryRecipts.FieldByName('ReciptID').AsInteger;
          Parameters.ParamByName('@YearID').Value :=
            qryRecipts.FieldByName('YearID').AsInteger;
          Parameters.ParamByName('@ServerID').Value :=
            qryRecipts.FieldByName('ServerID').AsInteger;
          ExecProc;
          Free;
        end;

    else
      With qryItems do
      begin
        DisableControls;
        First;
        while not Eof do
        begin
          qryInsert.Active := False;
          qryInsert.SQL.Text := 'INSERT INTO ReciptItems';
          qryInsert.SQL.Add
            ('(ReciptItemID,ReciptID,StuffCode,StuffSize,StuffDiameter,StuffAlloy,');
          qryInsert.SQL.Add('InputEntity,OutputEntity,InputWeight,');
          qryInsert.SQL.Add
            ('OutputWeight,TotalInputPrice,TotalOutputPrice,UnitSellPrice,');


          // qryInsert.SQL.Add
          // ('UnitSellPrice2,DeficitValue, DeficitValue2, DeficitValue3, DeficitValue4,TaxValue, Portage, Article,Wage, Scoria,');

          qryInsert.SQL.Add('UnitSellPrice2' + IfThen(CorrelateKind = 6, '',
            ',DeficitValue, DeficitValue2, DeficitValue3, DeficitValue4') +
            ',TaxValue, Portage, Article,Wage, Scoria,');

          qryInsert.SQL.Add('TotalStandardRate,TotallSellPrice,TaxCo' +
            IfThen(CorrelateKind = 6, '', ', WaterCo') + ',UnitCommission,');

          qryInsert.SQL.Add
            ('RequestedEntity,RequestedWeight,ControlCode,StuffGrade,');
          qryInsert.SQL.Add('ItemNote,');

          if (qryinit.FieldByName('TemplateCode').AsInteger = 0) or
            (ShowNotEntityOnSearch and Integer(CHkCorrelatepreReciptItemID) <> 0)
          then
            qryInsert.SQL.Add('preReciptItemID,');

          qryInsert.SQL.Add
            ('acc_TopicCode,acc_DetailCode,acc_CTopicCode,UseUnitID,AidNumber,AidDate,');
          qryInsert.SQL.Add
            ('Discount,acc_CTopicCode2,acc_CTopicCode3,PersonID1, FirstUser, ');
          qryInsert.SQL.Add
            ('ProductCode, ProductModel, ItemDate, OrderState, ContactRate, Shift,Auxiliary ');
          qryInsert.SQL.Add(',StandardRate,ArzAmount,');
          qryInsert.SQL.Add('SugarCo,SugarEntity,SecondTypeItem');
          qryInsert.SQL.Add
            (',MachineNo,MachineName,MachineFullWeight,MachineWeight');
          qryInsert.SQL.Add(',YearID,ServerID');
          qryInsert.SQL.Add(' , Waste1, Waste2, Function1, CustomerRate');
          qryInsert.SQL.Add
            (' , PestEntity, ArzRate, InsertTime, EditTime, IRow ');

          qryInsert.SQL.Add(', PrvYearID, Confirming, ');
          qryInsert.SQL.Add
            ('StuffCodingItemID, Length_, Width, DiagnosisCalcTotalPrice,');
          qryInsert.SQL.Add
            (' StandardConsumptionCo,InBox,SpecialCode, ArzRate2, HowConvert,');
          qryInsert.SQL.Add
            (' ArzTypeID2, ArzAmount2, ExchangePrice,  CommissionPrice');
          qryInsert.SQL.Add(',  UseOtherID_Item, PO');
          qryInsert.SQL.Add
            (', Commission, CurrencyDiscounts, RIDateMS, RIDateME, StuffpublicPercentI, ArzPortage,');
          qryInsert.SQL.Add('IneffectiveInput, CommissionCurrency');

          qryInsert.SQL.Add(', TransFormID');

          qryInsert.SQL.Add(')');

          // ----------------------------------------------------------------------

          if qryinit.FieldByName('StepCorrelate').AsInteger <> 1 then
            qryInsert.SQL.Add('SELECT  ReciptItemID - 1 ,' + IntToStr(Result) +
              ',StuffCode,StuffSize,StuffDiameter,StuffAlloy,')
          else
          begin
            // ''''''''''''''''''''''''''IntToStr(formType)
            ReciptItemID :=
              GetANewID(nil, qryinit.FieldByName('CorrelateReciptType')
              .AsString, 'ReciptItems', 'ReciptItemID', qryRecipts, 1);
            // (SELECT max(ReciptItemID)+1 FROM ReciptItems )
            qryInsert.SQL.Add(' SELECT ' + IntToStr(ReciptItemID) + ',' +
              IntToStr(Result) +
              ',StuffCode,StuffSize,StuffDiameter,StuffAlloy,');
          end;

          qryInsert.SQL.Add
            (SqlText +
            ',RequestedEntity,RequestedWeight,ControlCode,StuffGrade,ItemNote,');

          if (qryinit.FieldByName('TemplateCode').AsInteger = 0) or
            (ShowNotEntityOnSearch and Integer(CHkCorrelatepreReciptItemID) <> 0)
          then
            qryInsert.SQL.Add('preReciptItemID,');

          qryInsert.SQL.Add
            ('acc_TopicCode,acc_DetailCode,acc_CTopicCode,UseUnitID,AidNumber,AidDate,');

          qryInsert.SQL.Add
            ('Discount,acc_CTopicCode2,acc_CTopicCode3,PersonID1, ' +
            QuotedStr(User.Name) + ' AS FirstUser');

          qryInsert.SQL.Add
            (',ProductCode, ProductModel, ItemDate, OrderState, ContactRate');

          qryInsert.SQL.Add(',ReciptItemID AS Shift,Auxiliary ');
          qryInsert.SQL.Add
            (',StandardRate,ArzAmount,SugarCo,SugarEntity,SecondTypeItem');

          qryInsert.SQL.Add
            (',MachineNo,MachineName,MachineFullWeight,MachineWeight');
          qryInsert.SQL.Add(',YearID,' + ServerID +
            ', Waste1, Waste2, Function1, CustomerRate , PestEntity, ArzRate, InsertTime, EditTime, IRow');

          qryInsert.SQL.Add(', PrvYearID, Confirming, ');
          qryInsert.SQL.Add
            ('StuffCodingItemID, Length_, Width, DiagnosisCalcTotalPrice,');
          qryInsert.SQL.Add
            ('StandardConsumptionCo,InBox,SpecialCode, ArzRate2, HowConvert,');
          qryInsert.SQL.Add
            (' ArzTypeID2, ArzAmount2, ExchangePrice,  CommissionPrice,  UseOtherID_Item, PO');

          qryInsert.SQL.Add
            (', Commission, CurrencyDiscounts, RIDateMS, RIDateME, StuffpublicPercentI, ArzPortage,');
          qryInsert.SQL.Add('IneffectiveInput, CommissionCurrency');

          if (qryinit.FieldByName('ChangeAidReciptDate').AsLargeInt and
            Integer(CHKInsertTransFormID) <> 0) then
          begin
            qryInsert.SQL.Add(',(SELECT TOP (1) TransFormID FROM TransForms');
            qryInsert.SQL.Add
              ('WHERE (StuffCode = ReciptItems.StuffCode) AND (TransFormState = 0)');
            qryInsert.SQL.Add('ORDER BY TransFormNo DESC) AS TransFormID');
          end
          else
            qryInsert.SQL.Add(', TransFormID');

          qryInsert.SQL.Add('FROM ReciptItems');
          qryInsert.SQL.Add('WHERE (ReciptItemID = ' +
            FieldByName('ReciptItemID').AsInteger.ToString + ')');
          qryInsert.SQL.Add('AND (YearID = ' + qryRecipts.FieldByName('YearID')
            .AsInteger.ToString + ')');
          qryInsert.SQL.Add('AND (ServerID = ' + qryRecipts.FieldByName
            ('ServerID').AsInteger.ToString + ')');
          qryInsert.SQL.Add('AND (ReciptID = ' + qryRecipts.FieldByName
            ('ReciptID').AsInteger.ToString + ')');

          qryInsert.SQL.Add
            ('AND StuffCode NOT IN ( SELECT StuffCoding.c_StuffCode');
          qryInsert.SQL.Add('FROM ReciptTypesStuffGroups INNER JOIN');
          qryInsert.SQL.Add
            ('StuffCoding ON ReciptTypesStuffGroups.GroupID = StuffCoding.GroupID');
          qryInsert.SQL.Add('WHERE (ReciptTypesStuffGroups.ReciptType = ' +
            formType.ToString + ' ))');

          if ((qryinit.FieldByName('ChangeAidReciptDate').AsLargeInt and
            Integer(CHKEntityNotZero)) <> 0) then
            qryInsert.SQL.Add('AND (InputEntity + OutputEntity)>0');

          // try
          qryInsert.ExecSQL;

          qryInsert.SQL.Text := 'INSERT INTO ReciptItemsDetails ';
          qryInsert.SQL.Add
            ('(ReciptItemID,ServerID,YearID,ReciptID,DetailCaption, ReciptType, StuffGrade)');
          qryInsert.SQL.Add('SELECT ' + IntToStr(ReciptItemID) +
            ' AS ReciptItemID, D.ServerID, D.YearID, ' + IntToStr(Result) +
            ' as ReciptID, D.DetailCaption, ' + CorrelateReciptType +
            ', D.StuffGrade');
          qryInsert.SQL.Add('FROM ReciptItemsDetails AS D ');
          qryInsert.SQL.Add('WHERE (ReciptItemID = ' +
            qryItems.FieldByName('ReciptItemID').AsInteger.ToString + ')');
          qryInsert.SQL.Add('AND (D.ReciptID = ' + qryItems.FieldByName
            ('ReciptID').AsInteger.ToString + ')AND (D.ServerID= ' +
            qryItems.FieldByName('ServerID').AsInteger.ToString +
            ') AND (D.YearID= ' + qryItems.FieldByName('YearID')
            .AsInteger.ToString + ')');

          // qryInsert.SQL.Add
          // ('AND StuffCode NOT IN ( SELECT StuffCoding.c_StuffCode');
          // qryInsert.SQL.Add('FROM ReciptTypesStuffGroups INNER JOIN');
          // qryInsert.SQL.Add
          // ('StuffCoding ON ReciptTypesStuffGroups.GroupID = StuffCoding.GroupID');
          // qryInsert.SQL.Add
          // ('WHERE (ReciptTypesStuffGroups.ReciptType = '+FormType.ToString+' ))');

          qryInsert.ExecSQL;
          BigMessage(' در حال ثبت كالاهاي فرم...', 0);
          qryInsert.Active := False;
          // except
          // Warn('اشكال در ثبت كالاهاي فرم‌');
          // end; // try
          Next;
        end; // while
        EnableControls;
      end; // with
    end;

    if qryinit.FieldByName('CorrelateReciptsDeficits').AsInteger = 1 then
      With TADOStoredProc.Create(DMf) do
      begin
        Connection := DMf.adcBSell;
        ProcedureName := 'NewReciptsCorrelateDeficits;1';
        Parameters.Refresh;
        Parameters.ParamByName('@OldReciptID').Value :=
          qryRecipts.FieldByName('ReciptID').AsInteger;
        Parameters.ParamByName('@NewReciptID').Value := Result;
        Parameters.ParamByName('@ServerID').Value :=
          qryRecipts.FieldByName('ServerID').AsInteger;
        Parameters.ParamByName('@YearID').Value :=
          qryRecipts.FieldByName('YearID').AsInteger;
        ExecProc;
        Free;
      end;
    // With
    BigMessage(' فرم ' + ReciptCaption + '‌ با شماره فرم ' + ReciptNumber +
      ' ثبت شد.', 2);
    qryInsert.Free;
    SendReciptsCorrelateSMS(Result, qryRecipts.FieldByName('ServerID')
      .AsInteger, qryRecipts.FieldByName('YearID').AsInteger);
  finally
    if DBNavigator1 <> nil then
      DBNavigator1.Enabled := True;
    qryRecipts.EnableControls;
    FreeReservedCodes(DMf.adcBSell, 'Recipts', '',
      qryinit.FieldByName('CorrelateReciptType').AsString);
    FreeReservedCodes(DMf.adcBSell, 'ReciptItems', '',
      qryinit.FieldByName('CorrelateReciptType').AsString);

  end;
end;

function CheckMakeDoc(Dataset: TDataSet): boolean;
begin
  Result := True;
  if not opt.CheckMakeDoc4DelEdit then
    Exit;
  if Dataset.FieldByName('DocNo').AsInteger <> 0 then
  begin
    Warn('از اين فرم در صدور سند استفاده شده و قابل حذف و ويرايش نمي‏باشد.‏',
      mtInformation);
    Result := False;
  end;
end;

function CheckDay4Edit(qryinit, qryChek: TADOQuery; TypeForm: Byte = 0)
  : boolean;
var
  Day4Edit: Integer;
  ReciptDate: TDateTime;
  sReciptDate: string; // sModifyDate
  sNow: string;
begin
  Result := True;
  Day4Edit := qryinit.FieldByName('Day4Edit').AsInteger;
  if Day4Edit < 1 then
    Exit;

  if TypeForm = 0 then
    ReciptDate := Shamsi2Miladi(qryChek.FieldByName('ReciptDate').AsString)
  else
    ReciptDate := Shamsi2Miladi(qryChek.FieldByName('FormDate').AsString);

  // ReciptDate := IncDay(ReciptDate, Day4Edit);
  // sReciptDate := miladi2Shamsi(ReciptDate);
  // sModifyDate := miladi2Shamsi(qryChek.FieldByName('ModifyDate').AsDateTime);
  // if sReciptDate < sModifyDate then
  // begin
  // Warn('زمان لازم جهت ويرايش  و حذف فرم به پايان رسيده است.', mtInformation);
  // Result := False;
  // end;

  ReciptDate := IncDay(ReciptDate, Day4Edit);
  sReciptDate := miladi2Shamsi(ReciptDate);
  sNow := miladi2Shamsi(now);
  if sNow >= sReciptDate then
  begin
    Warn('زمان لازم جهت ويرايش  و حذف فرم به پايان رسيده است.', mtInformation);
    Result := False;
  end;

end;

function CheckUserlevel(FldLevelID: TField; qry4Post: TDataSet;
  msgActive: boolean = True): boolean;
begin
  Result := True;
  if (FldLevelID.FullName = 'PrintLevelID') and (qry4Post.State in dsEditModes)
  then
    qry4Post.Post;
  if FldLevelID.AsInteger > User.level then
  begin
    if msgActive then
      Warn('محدوديت سطح كاربري در دسترسي به امكانات سيستم', mtInformation);
    Result := False;
  end;
end;

function CheckUserlevel2(LevelID: ShortInt; msgActive: boolean = True): boolean;
begin
  Result := True;
  if LevelID > User.level then
  begin
    if msgActive then
      Warn('محدوديت سطح كاربري در دسترسي به امكانات سيستم(2)', mtInformation);
    Result := False;
  end;
end;

function GetDataPath(DataPath: string): string;
var
  qry: TADOQuery;
  conStr: String;
  userName: String;
  FileName, serName: String;
  i: Integer;
begin
  userName := ReadConfig('', 'UserName', 'FaraUser');
  conStr := GetConStr('master', 10);
  qry := TADOQuery.Create(DMf);
  try
    with qry do
    begin
      ConnectionString := conStr;
      Active := False;
      SQL.Text := 'SELECT FileName FROM master.dbo.sysdatabases WHERE name = ' +
        QuotedStr(DataPath);
      try
        Active := True;
        FileName := Fields[0].AsString;

        serName := opt.ServerName;
        i := Pos('\', serName) - 1;
        if i > 0 then
          serName := LeftStr(serName, i);
        Result := '\\' + serName + '\' + RightStr(FileName,
          Length(FileName) - 3);

        Result := ExtractFilePath(Result) + '..';
        Active := False;
      except
        on E: Exception do
        begin
          DataPath := '';
        end;
      end; // try
    end; // with

  finally
    qry.Free;
  end; // tryend;
end;

procedure assignServerName(adoCon: TADOConnection; dbName: string);
begin
  if Assigned(adoCon) then
    adoCon.ConnectionString := GetConStr(dbName, 15, adoCon)
end;

// procedure setColumns(Grid: TDBGrid; colNumber: string;
// StateCol: Boolean);
// var
// s:  string;
// i:  integer;
// begin
// for i:=0 to Grid.Columns.Count-1 do begin
// s:=Format('#%.2d%',[i]);
// if Pos(s,colNumber)<>0  then Grid.Columns[i].Visible:=StateCol;
// end;//for
// end;
//

// procedure InitReport(ReportName: TppReport; BandName: TppBand;aRegion: TppRegion; TopLine: TppLine; footer: string);
// var
// n,i:  Byte;
// ts: TStrings;
// begin
// n:=CountOfChar(footer,#13)+1;
// if n=1 then exit;
// ts:=TStringList.Create;
// ts.Text:=footer;
// for i:=0 to n-1 do
// begin
// if i<>0 then
// with TppLine.Create(reportname) do
// begin
// Region:=aRegion;
// Position:=lpLeft;
// Top:=TopLine.Top + TopLine.Height;
// Height:=aRegion.Top + aRegion.Height - TopLine.Top - TopLine.Height;
// Width:=1;
/// /      Left:=5 + trunc(TopLine.Width/n)*i;
// Left:=aRegion.Width - (trunc(TopLine.Width/n)*i) - Width+1;
// end;//with
// with TppLabel.Create(reportname) do
// begin
// AutoSize := True;
/// /      Font.Charset := graphics.ARABIC_CHARSET;
/// /      Font.Color := clBlack;
// Transparent := True;
// Band:=BandName;
// Region:=aRegion;
// TextAlignment:=taRightJustified;
// Font.Name:='zar';
// Font.Size:=9;
// Transparent:=True;
// Caption:=trim(ts[i]);
// Top:=TopLine.Top - TopLine.Height + 4;
// Left:=aRegion.Width - (trunc(TopLine.Width/n)*i) - Width-1;
// end;//with
// end;//for
// ts.Free;

// end;

procedure ReadAllOption;
var
  s: String;

  PortNumberStr: string;
  PortNumber: Integer;

  i: Integer;
  LastVer: String;
  function ReadOptionConfig(OptionName: string;
    DefaultValue: string = ''): string;
  begin
    if DMf.qryCn.FindField(OptionName) <> nil then
      Result := DMf.qryCn.FieldByName(OptionName).AsString
    else
      Result := DefaultValue;
  end;

begin
  try

    LastVer := Trim(DMf.ReadBankConfig('LastVersion', LastVertion));
    if CompareStr(LastVer, LastVertion) > 0 then
    begin
      Warn(' نسخه برنامه قديمي مي باشد لطفا با نسخه جديد وارد برنامه شويد ');

      if DebugHook = 0 then
        Application.Terminate;
    end;

    with DMf.qryCn do
      try
        SQL.Text := 'Select *  from ReciptTypes Where (ReciptType = 12)';
        try
          Active := True;
          // Warn2('BSell '+FieldByName('SPID').AsString,0);
          opt.DocType1 := StrToInt(ReadOptionConfig('CreditChecked1', '1'));
          opt.DocType2 := StrToInt(ReadOptionConfig('CreditChecked2', '-1'));
          opt.DocType3 := StrToInt(ReadOptionConfig('CreditChecked3', '-1'));
          opt.DocType4 := StrToInt(ReadOptionConfig('CreditChecked4', '-1'));
        except
          on E: Exception do
          begin
            Warn2('فرم تايپ 12 ايجاد شود‌' + E.Message);
            // CreateChildForm(TUpDateBankF, UpDateBankF, mainF, 0, alNone)
          end;
        end;
        // try

        if opt.DocType1 = 1 then
          opt.DocType1 := 10
        else
          opt.DocType1 := -1;

        if opt.DocType2 = 1 then
          opt.DocType2 := 4
        else
          opt.DocType2 := -1;

        if opt.DocType3 = 1 then
          opt.DocType3 := 3
        else
          opt.DocType3 := -1;

        if opt.DocType4 = 1 then
          opt.DocType4 := 11
        else
          opt.DocType4 := -1;

        Active := False;
        SQL.Text :=
          'SELECT COUNT(*) AS Vam FROM FormTypes WHERE (DisplayFormType = 5)';
        Active := True;
        opt.ActiveLoan := Fields[0].AsInteger > 0;

        Active := False;
        SQL.Text := 'Select * from Config';
        Active := True;

        Miladi_ValiDate_Date_Check :=
          ReadOptionConfig('Miladi_ValiDate_Date_Check', '0') = '1';
        if Miladi_ValiDate_Date_Check then
        begin
          if not StrToBool(ReadConfig(APPID, 'Miladi_ValiDate_Date_Check',
            'False')) then
          begin
            Warn('از برنامه خارج و دوباره وارد شويد.', mtInformation);
          end;
          var_glb_CurrentDate := formatdatetime('yyyy/mm/dd', now);
        end;
        SaveConfig(APPID, 'Miladi_ValiDate_Date_Check',
          BoolToStr(Miladi_ValiDate_Date_Check));

        opt._ArchivePath := ReadOptionConfig('ArchivePath', '');
        if opt._ArchivePath = EmptyStr then
          opt._ArchivePath := IncludeTrailingBackslash
            (ExtractFilePath(ParamStr(0))) + 'Archive\';
        opt.ServerName := ReadConfig(APPID, 'SqlServerName');
        opt.AutoBackup := StrToBool(ReadConfig(APPID, 'AutoBackup', '-1'));
        opt.CheckWarn := StrToBool(ReadConfig(APPID, 'CheckWarn', '-1'));
        opt.showBig := StrToBool(ReadConfig(APPID, 'showBig', '-1'));

        opt.PrintTaxCount := StrToInt(ReadConfig(APPID, 'PrintTaxCount', '0'));

        opt.LinkServerName := ReadOptionConfig('LinkServerName', '');

        opt.ConcatField4StuffNameKind :=
          StrToInt(ReadOptionConfig('ConcatField4StuffNameKind', '0'));

        opt.GroupReciptPostKind :=
          StrToInt(ReadOptionConfig('GroupReciptPostKind', '0'));

        opt.MakeDocumentPost :=
          StrToInt64(ReadOptionConfig('MakeDocumentPost', '7'));

        opt.AllControls := StrToInt64(ReadOptionConfig('AllControls', '0'));

        opt.DetailCodelength :=
          StrToInt(ReadOptionConfig('DetailCodelength', '15'));

        opt.ConfigSettings :=
          StrToInt64(ReadOptionConfig('ConfigSettings', '1'));

        try
          // DecimalSeparator := '.'; // Ensure consistent decimal separator
          opt.RoundEntity := -1 *
            StrToInt(ReadOptionConfig('RoundEntity', '3'));
          opt.MinEntity := StrToFloatDef(ReadOptionConfig('MinEntity',
            '0.0001'), 0.0001);
          if opt.RoundEntity > -4 then
            opt.RoundWeight := opt.RoundEntity - 1
          else
            opt.RoundWeight := opt.RoundEntity;
        except
          on E: Exception do
          begin
            add2log('Error setting RoundEntity/MinEntity: ' + E.Message);
            opt.MinEntity := 0.0001; // Fallback value
          end;
        end;

        opt.SystemWarn := StrToBool(ReadConfig(APPID, 'SystemWarn', '-1'));
        opt.ControlCodeActive :=
          StrToInt(ReadOptionConfig('ControlCodeActive', '1'));
        opt.ActiveSellPrice2 := ReadOptionConfig('ActiveSellPrice2', '0') = '1';
        opt.StuffKindActive := ReadOptionConfig('StuffKindActive', '0') = '1';
        opt.AccountName := ReadOptionConfig('AccountDBName', 'Accounting');
        opt.AccountServerName := ReadOptionConfig('AccountServerName', '');

        opt._StartMaliYear := ReadOptionConfig('StartMaliYear');
        opt._FinishMaliYear := ReadOptionConfig('FinishMaliYear');

        // opt.StartMaliYear:=ReadConfig(APPID,'StartMaliYear',IntToStr(APPBank.Year));
        // opt.FinishMaliYear:=ReadConfig(APPID,'FinishMaliYear',IntToStr(APPBank.Year));

        opt.StuffCodingKind :=
          StrToInt(ReadOptionConfig('StuffCodingKind', '0'));
        opt.SpecialReportsActive := ReadOptionConfig('SpecialReportsActive',
          '1') = '1';
        opt.EntityDisplayType :=
          StrToInt(ReadOptionConfig('EntityDisplayType', '0'));
        opt.StuffEnableKind :=
          StrToInt(ReadOptionConfig('StuffEnableKind', '0'));

        opt.ControlOrderPointEntity :=
          ReadOptionConfig('ControlOrderPointEntity', '0') = '1';
        opt.DefaultDateActive := ReadOptionConfig('DefaultDateActive',
          '0') = '1';
        opt.CheckMakeDoc4DelEdit := ReadOptionConfig('CheckMakeDoc4DelEdit',
          '1') = '1';
        opt.ControlEntryCustInfo := ReadOptionConfig('ControlEntryCustInfo',
          '0') = '1';

        // -------------------- Account --------------------------------------------
        // APPBank.AccAvailable:=ReadOptionConfig('AccountDBName')<>'';
        // DMf.adcAccounting.DefaultDatabase := ReadOptionConfig('AccountDBName');
        // if APPBank.AccAvailable then DMf.adcAccounting.Connected:=True
        // else DMf.adcAccounting.Connected:=False;
        // -------------------- OLD Account --------------------------------------------

        optA.AccOldAvailable := ReadOptionConfig('AccountDBNameOld') <> '';
        opt.AddMenuItem := ReadOptionConfig('AddMenuItem', '0') = '1';

        APPBank.AccAvailable := not optA.AccOldAvailable;
        APPBank.AccPath := ReadOptionConfig('AccountDBNameOld', '');
        optA.AccOwnerName := 'ACC.';
        if optA.AccOldAvailable then
        begin
          optA.AccOwnerName := EmptyStr;
          DMf.qryAccOldAndNew.Connection := DMf.adcOldAccounting;
          with DMf.adcOldAccounting do
          begin
            Connected := False;
            ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='
              + APPBank.AccPath + ';Persist Security Info=False';
            ConnectionString := ConnectionString +
              ';Jet OLEDB:Database Password=tycedar';
            try
              // Connected:=True;
            except
              // ConnectionString:=ConnectionString + ';Password =  ';
            end; // try
            // opt.AccOldAvailable:=DMF.adcOldAccounting.Connected;
          end; // with
        end
        else
        begin

          DMf.qryAccOldAndNew.Connection := DMf.adcAccounting;
          with DMf.adcOldAccounting do
          begin
            Connected := False;
            ConnectionString := '';
          end; // with
        end; // if

        // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        opt.ActiveBudget := ReadOptionConfig('ActiveBudget', '0') = '1';

        optSub.Subsys := ReadOptionConfig('ActiveSubsys', '0');
        SetLength(optSub.Subsys, Length(optSub.Subsys));
        if optSub.Subsys <> '0' then
        begin
          optSub.ActiveCoffer := optSub.Subsys[1] = '1';
          optSub.Activesell := optSub.Subsys[2] = '1';
          optSub.ActiveStore := optSub.Subsys[3] = '1';
          optSub.ActiveSchedule := optSub.Subsys[4] = '1';
          optSub.ActiveProcurement := optSub.Subsys[5] = '1';
          optSub.ActiveManeger := User.admin; // optSub.Subsys[30] = '1';
        end
        else
        begin
          optSub.Subsys := ReadOptionConfig('ActiveCoffer', '0') +
            ReadOptionConfig('ActiveBsell', '0') +
            ReadOptionConfig('ActiveStore', '0') +
            ReadOptionConfig('ActiveSchedule', '0') +
            ReadOptionConfig('ActiveProcurement', '0') + '0000000000000000000' +
            ReadOptionConfig('ActiveManeger', '0');

          optSub.ActiveCoffer := ReadOptionConfig('ActiveCoffer', '0') = '1';
          optSub.Activesell := ReadOptionConfig('ActiveBsell', '0') = '1';
          optSub.ActiveStore := ReadOptionConfig('ActiveStore', '0') = '1';
          optSub.ActiveSchedule := ReadOptionConfig('ActiveSchedule',
            '0') = '1';
          optSub.ActiveProcurement := ReadOptionConfig('ActiveProcurement',
            '0') = '1';
          optSub.ActiveManeger := User.admin;
          // ReadOptionConfig('ActiveManeger', '0') = '1';
        end;
        if User.admin then
        begin
          // SubsysMenu[High(SubsysMenu)].Active := True;
          optSub.Subsys[High(SubsysMenu) + 1] := '1'
        end;
        opt.CheckDateOffset :=
          StrToIntDef(ReadOptionConfig('CheckDateOffset'), 1);
        s := ReadOptionConfig('EntityDisplayType', '2');
        opt.EntityDisplay := (s = '2') OR (s = '3') OR (s = '0');
        opt.WeightDisplay := (s = '2') OR (s = '3') OR (s = '1');
        opt.Cartonint := StrToInt(ReadOptionConfig('Carton', '0'));
        opt.Carton := opt.Cartonint > 0;
        opt.AidInfoAvailable := ReadOptionConfig('StuffCodeAidInfoAvailable',
          '1') = '1';
        PrintDateEnabled :=
          StrToBool(ReadConfig(APPID, 'VisiblePrintDates', 'True'));

        SeletedPrintEnabled :=
          StrToBool(ReadConfig(APPID, 'SeletedPrintEnabled', 'False'));
        PrintPreview := StrToBool(ReadConfig(APPID, 'PrintPreview', 'True'));
        SetAlignment := StrToBool(ReadConfig(APPID, 'SetAlignment', 'False'));

        opt.EntityCaption := ReadOptionConfig('EntityCaption', 'مقدار');
        opt.WeightCaption := ReadOptionConfig('WeightCaption', 'وزن');
        opt.SearchCode := ReadOptionConfig('SearchCode', 'ControlCode');
        opt.StuffTecInfoActive := ReadOptionConfig('StuffTecInfoActive',
          '1') = '1';
        opt.RecoverPittedCode :=
          StrToInt(ReadOptionConfig('RecoverPittedCode', '0'));
        optA.CanRelation := ReadOptionConfig('CanRelation', '0') = '1';
        for i := 1 to 9 do
          opt.ExtraCoding.Captions[i] :=
            Trim(ReadOptionConfig('sd' + IntToStr(i) + '_caption', ''));
        opt.LowerLimit1 :=
          StrToCurr(ReadOptionConfig('EntityOutputLowerLimit', '0'));
        s := ReadOptionConfig('EntityOutputLowerLimit2', '0');
        if s = EmptyStr then
          s := '0';
        opt.LowerLimit2 := StrToCurr(s);
        optPort.TozinFileInputPath := ReadOptionConfig('FileInputPath',
          EmptyStr);
        opt.PhonBookIIPath := ReadOptionConfig('PhonBookIIPath', EmptyStr);

        opt.WarrantyFormTypes := ReadOptionConfig('WarrantyFormTypes',
          EmptyStr);

        opt.DocStatusDefault :=
          StrToInt(ReadOptionConfig('DocStatusDefault', '1'));
        opt.DocReciptStateDefault :=
          StrToInt(ReadOptionConfig('DocReciptStateDefault', '0'));

        i := StrToInt(ReadOptionConfig('EditCustNameLevelID', '0'));
        opt.EditCustNameLevelID := i > User.level;

        i := StrToInt(ReadOptionConfig('EditStuffNameLevelID', '0'));
        opt.EditStuffNameLevelID := i > User.level;

        opt.MakeDocsLevelID :=
          StrToInt(ReadOptionConfig('MakeDocsLevelID', '0'));
        opt.DocPostKindLevelID :=
          StrToInt(ReadOptionConfig('DocPostKindLevelID', '0'));

        opt.ServerID := StrToInt(ReadOptionConfig('ServerID', '0'));
        optA.AccChangeNames := ReadOptionConfig('ChangeAccNames', '');
        opt.RowInCardex := StrToInt(ReadOptionConfig('RowInCardex', '0'));
        opt.DefaultYearkind := StrToInt(ReadOptionConfig('DefaultYear', '0'));

        opt.OperatorsNewActive := ReadOptionConfig('OperatorsNewActive',
          '0') = '1';
        opt.ActiveConfigUser := ReadOptionConfig('ActiveConfigUser', '0') = '1';
        if opt.ActiveConfigUser then
        begin
          with DMf.qryConfigUser do
          begin
            Active := False;
            Parameters.ParamByName('UserID').Value := User.ID;
            Active := True;
            optPort.ComPortKind := FieldByName('ComPortKind').AsInteger;
            optPort.Port := FieldByName('Port').AsString;
            optPort.BaudRate := FieldByName('BaudRate').AsInteger;

            optPort.FlowControl := FieldByName('FlowControl').AsInteger;
            optPort.XonXoffIn := FieldByName('XonXoffIn').AsInteger = 1;
            optPort.XonXoffOut := FieldByName('XonXoffOut').AsInteger = 1;
            optPort.PackSize := FieldByName('PackSize').AsInteger;

            optPort.StopBits := FieldByName('StopBits').AsInteger;
            optPort.Parity := FieldByName('Parity').AsInteger;
          end;
          // User.ID  3

        end
        else
        begin
          optPort.ComPortKind := StrToInt(ReadOptionConfig('ComPortKind', '2'));
          optPort.Port := ReadOptionConfig('Port', 'COM1');
          optPort.BaudRate := StrToInt(ReadOptionConfig('BaudRate', '7'));

          optPort.FlowControl := StrToInt(ReadOptionConfig('FlowControl', '2'));
          optPort.XonXoffIn := ReadOptionConfig('XonXoffIn', '1') = '1';
          optPort.XonXoffOut := ReadOptionConfig('XonXoffOut', '1') = '1';
          optPort.PackSize := StrToInt(ReadOptionConfig('PackSize', '20'));

          optPort.StopBits := StrToInt(ReadOptionConfig('StopBits', '0'));
          optPort.Parity := StrToInt(ReadOptionConfig('Parity', '0'));

        end;

        opt.AccCenterTopicEqualUseUnitID :=
          StrToInt(ReadOptionConfig('AccCenterTopicEqualUseUnitID', '0'));

        opt.AccDetailCodeEqualCustID :=
          StrToInt(ReadOptionConfig('AccDetailCodeEqualCustID', '0'));

        opt.CustAccDetailCodeEqualCustID :=
          ReadOptionConfig('CustAccDetailCodeEqualCustID', '0');

        opt.UseUnitsYearID := ReadOptionConfig('UseUnitsYearID', '0') = '1';

        opt.stCount := StrToInt(ReadOptionConfig('stCount', '0'));

        opt.UnicStuffCodingKind :=
          StrToInt(ReadOptionConfig('UnicStuffCodingKind', '1'));

        opt.CHKPriorityTransDate := ReadOptionConfig('CHKPriorityTransDate',
          '1') = '1';

        opt.BrowseAllForms := ReadOptionConfig('BrowseAllForms', '1') = '1';

        opt.SysSmsActive := ReadOptionConfig('SysSmsActive', '0') > '0';

        // opt.TelegramBotAPI := ReadOptionConfig('TelegramBotAPI', '');

        opt.WorkFlowTime := StrToInt(ReadOptionConfig('WorkFlowActive', '0'));
        opt.WorkFlowActive := opt.WorkFlowTime > 0;

        opt.FilterOnServerID :=
          StrToInt(ReadOptionConfig('FilterOnServerID', '1'));

        opt.RequiredCustomers :=
          StrToInt64(ReadOptionConfig('RequiredCustomers', '1'));

        opt.CustomersUnicName :=
          StrToInt(ReadOptionConfig('CustomersUnicName', '0'));

        opt.CheckDateDefaultAct := ReadOptionConfig('CheckDateDefaultAct',
          '0') = '1';
        opt.CheckWarnDay := StrToInt(ReadOptionConfig('CheckWarnDay', '0'));

        opt.WarrantyDay := StrToInt(ReadOptionConfig('WarrantyDay', '0'));
        opt.EntityOrWeight := StrToInt(ReadOptionConfig('EntityOrWeight', '0'));

        opt.FunctionDate4EditFrom := ReadOptionConfig('FunctionDate4EditFrom',
          '0000/00/00');
        opt.FunctionDate4EditTo := ReadOptionConfig('FunctionDate4EditTo',
          '9999/99/99');

        opt.MachineryLookUpKind1 :=
          StrToInt(ReadOptionConfig('MachineryLookUpKind1', '0'));
        opt.MachineryLookUpKind2 :=
          StrToInt(ReadOptionConfig('MachineryLookUpKind2', '0'));
        opt.MachineryLookUpKind3 :=
          StrToInt(ReadOptionConfig('MachineryLookUpKind3', '0'));

        opt.MachineryLookUpKind4 :=
          StrToInt(ReadOptionConfig('MachineryLookUpKind4', '0'));
        opt.MachineryLookUpKind5 :=
          StrToInt(ReadOptionConfig('MachineryLookUpKind5', '0'));
        opt.MachineryLookUpKind6 :=
          StrToInt(ReadOptionConfig('MachineryLookUpKind6', '0'));

        tsConcatField4StuffName.Free;
        tsConcatField4StuffName := TStringList.Create;
        tsConcatField4StuffName.Text :=
          ReadOptionConfig('ConcatField4StuffName', '');

        opt.LevelIdStuffGroup :=
          StrToInt(ReadOptionConfig('LevelIdStuffGroup', '0'));

        optA.SendDoc2OtherSystems := ReadOptionConfig('SendDoc2OtherSystems',
          '0') = '1';

        SysSmsSendKind := StrToInt(DMf.ReadBankConfig('SysSmsActive', '0'));

        opt.chkExistAttachments := ReadOptionConfig('chkExistAttachments',
          '0') = '1';

        opt.PureSellActive := ReadOptionConfig('PureSellActive', '0') = '1';

        ActiveMiladi := ReadOptionConfig('ActiveMiladi', '0') = '1';

        opt.ArzActiveAll := ReadOptionConfig('ArzActiveAll', '0') = '1';

        opt.PlaqueReaderActive := ReadOptionConfig('PlaqueReaderActive',
          '0') = '1';

        opt.POActive := ReadOptionConfig('POActive', '0') = '1';
        opt.POCaption := ReadOptionConfig('POCaption', 'PO');

        opt.IPCameraURL := ReadOptionConfig('IPCameraURL', '');

        opt.NipcUserName := ReadOptionConfig('NipcUserName', '');
        opt.NipcPassWord := ReadOptionConfig('NipcPassWord', '');

        opt.FISCAL_ID := ReadOptionConfig('FISCAL_ID', '');
        opt.PUB_KEY := ReadOptionConfig('PUB_KEY', '');
        opt.PUB_KEY_ID := ReadOptionConfig('PUB_KEY_ID', '');
        opt.PRV_KY := ReadOptionConfig('PRV_KY', '');
        opt.Economic_Number := ReadOptionConfig('Economic_Number', '');
        opt.URL_MoadianAPI := ReadOptionConfig('URL_MoadianAPI', '');

        opt.CRT_KEY := ReadOptionConfig('CRT_KEY', '');

        PortNumberStr := ReadOptionConfig('PosPortNumber', '0');
        if TryStrToInt(PortNumberStr, PortNumber) then
          opt.PosPortNumber := PortNumber
        else
          opt.PosPortNumber := 0;

        opt.PosIPAddress := ReadOptionConfig('PosIPAddress', '');

        opt.NationalCode := ReadOptionConfig('NationalCode', '');
        opt.JamePassWord := ReadOptionConfig('JamePassWord', '');
        opt.UserRoleId := ReadOptionConfig('UserRoleId', '0');

        opt.CustomerKindsTransaction :=
          ReadOptionConfig('CustomerKindsTransaction', '0');

        opt.ChkUsersCustomersGroupsActive :=
          ReadOptionConfig('ChkUsersCustomersGroupsActive', '0') = '1';

        opt.SearchLimitCustomersGroups :=
          ReadOptionConfig('SearchLimitCustomersGroups', '0') = '1';

        opt.CalcReciptsRegulatesActive :=
          ReadOptionConfig('CalcReciptsRegulatesActive', '0') >= '1';

        opt.primaryLanguage :=
          StrToInt(ReadConfig(APPID, 'primaryLanguage', '0'));
        opt.secondaryLanguage :=
          StrToInt(ReadConfig(APPID, 'secondaryLanguage', '0'));
        opt.LanguageDisplay1 := not((opt.secondaryLanguage = 0) and
          (opt.primaryLanguage = 1));
        opt.LanguageDisplay2 := not((opt.secondaryLanguage = 0) and
          (opt.primaryLanguage = 0));

        DMf.qryCn.Active := False;
        DMf.qryStoreType.Active := False;
        DMf.qryStoreType.Active := True;

        if optSub.Subsys[16] = '1' { SubsysMenu[15].Active }
        then
          try
            SQL.Text := 'Select * from Assets.Config';
            Active := True;
            opt.ShowAmount := ReadOptionConfig('ShowAmount', '0') = '1';
            s := ReadOptionConfig('LevelForEditFirstDep', '15').Trim;
            if not s.IsEmpty then
              opt.LevelAccess := StrToInt(s);

            opt.StartLimitIDAss :=
              StrToInt(ReadOptionConfig('StartLimitID', '1'));
            opt.EndLimitIDAss := StrToInt(ReadOptionConfig('EndLimitID', '1'));
            opt.BaseDate := ReadOptionConfig('BaseDate');
            opt.RecallReciptTypes := ReadOptionConfig('RecallReciptTypes');

            opt.LevelGroup := StrToInt(ReadOptionConfig('LevelGroup', '0'));
            opt.EditableDepModeDepValue :=
              ReadOptionConfig('EditableDepModeDepValue', '1') = '1';
            opt.maliStartDate := ReadOptionConfig('FirstDayMaliYear');
            opt.maliExpireDate := ReadOptionConfig('EndDayMaliYear');
            opt.TimeToDefinitive :=
              StrToInt(ReadOptionConfig('TimeToDefinitive', '0'));

            opt.StopDepNo := StrToFloat(ReadOptionConfig('StopDepNo'));
            opt.FirstDepValueActive :=
              StrToBool(ReadOptionConfig('FirstDepValueActive'));

            opt.RequiredFields := TStringList.Create;
            opt.RequiredFields.Text :=
              StringReplace(ReadOptionConfig('RequiredFields'), ';', #13,
              [rfReplaceAll]);

          except
            on E: Exception do
              Warn2('  اشکال در تنظیمات دارائی ثابت ' + E.Message, 0);
          end;

        Active := False;
      finally
      end; // try

    if ((optSub.Subsys[17] = '1') or (optSub.Subsys[18] = '1')) then
      try
        ReadAccOption;
      except
        on E: Exception do
        begin
          add2log(E.Message);
          Warn('اشكال در خواندن تنظیمات حسابداری' + #13#10 + E.Message);
          // configf.Enter;
          // ReadAccOption;
        end;

      end;

    UserMail.Smtp := ReadConfig(APPID, 'Smtp', 'smtp.gmail.com');
    s := ReadConfig(APPID, 'pass');
    UserMail.pass := String(AnsiString((Decrypt(s, EncryptCode))));
    UserMail.userName := ReadConfig(APPID, 'Email', 'fararayanehdoc@Gmail.com');
    UserMail.Port := StrToInt(ReadConfig(APPID, 'Port', '465'));
    UserMail.SSl := StrToBool(ReadConfig(APPID, 'SSl', 'True'));
    // CheckBackupPath('AutoBackupPath');

    if ((optSub.Subsys[1] = '1') or (optSub.Subsys[2] = '1') or
      (optSub.Subsys[3] = '1') or (optSub.Subsys[4] = '1')) then
    begin

      if opt.WorkFlowActive and not User.PowerUser then
      begin
        DMf.tmrFlow.Enabled := opt.WorkFlowTime > 1;
        if DMf.tmrFlow.Enabled then
        begin
          DMf.tmrFlow.Interval := (opt.WorkFlowTime - 1) * 15 * 60 * 1000;
          if opt.WorkFlowTime > 5 then
            DMf.tmrFlow.Interval := (opt.WorkFlowTime - 1) * 60 * 60 * 1000;
        end;
        if opt.WorkFlowTime > 0 then
          DMf.tmrFlowTimer(DMf.tmrFlow);
      end;

      opt.ReplicationActive := checkIsReplication(theMainConnection, 'Recipts');
      opt.PublisherActive := IsPublisher(theMainConnection);

      InitAddItemFilter;

    end;
    try
      ReadAllOptionSalary;
    except
      on E: Exception do
      begin
        add2log(E.Message);
        Warn('اشكال در خواندن تنظیمات حقوق' + #13#10 + E.Message);
      end;

    end;
    // With DMf.qryTmpTmp do
    // begin
    // Active := False;
    // SQL.Text := 'SELECT syscolumns.name';
    // SQL.Add('FROM sysobjects INNER JOIN');
    // SQL.Add('syscolumns ON sysobjects.id = syscolumns.id');
    // SQL.Add('WHERE sysobjects.ID = OBJECT_ID(''StuffCoding'')');
    // SQL.Add('AND COLUMNPROPERTY(sysobjects.ID, syscolumns.name, ''IsIdentity'') = 1');
    // Active := True;
    // opt.IsIdentityST := LowerCase(Fields[0].AsString);
    // Active := False;
    // end;

    // GeneralDMF.SQLConnection.Connected := True;

  except
    on E: Exception do
    begin
      Warn('اشکال در تنظیمات سیستم خرید و فروش' + E.Message);
    end;
  end;

end;

procedure ReadAccOption;
var
  qry: TADOQuery;
  function CheckHasField(fldName: String): Variant;
  begin
    with qry do
    begin
      if Assigned(FindField(fldName)) then
        if FieldByName(fldName).IsNull then
          Result := EmptyStr
        else
          Result := FieldByName(fldName).AsVariant;
    end;
  end;

var
  ts: TStringList;
begin
  qry := TADOQuery.Create(DMf);
  with qry, optA do
    try
      Connection := DMf.qry_Temp.Connection;
      Close;
      SQL.Text := 'Select * From Acc.Config';
      try
        Open;
      except
        on E: Exception do
        begin
          Warn2('اشکال در تنظیمات سیستم حسابداری فرا' + E.Message);
          Exit;
        end;
      end;

      if FindField('AccBankNameOnLastYear') <> nil then
      begin
        LastAccYear := FieldByName('AccBankNameOnLastYear').AsString;
        LastAccYear := IfThen(LastAccYear = EmptyStr, APPBank.Name,
          LastAccYear);
      end;

      CheckRelation := CheckHasField('CheckRelation');
      if (CompanyFilterinLogin) and (not User.PowerAdmin) then
        DefaultCompany := FcompanyCodeLogin
      else
        DefaultCompany := CheckHasField('DefaultCompany');

      IsChkDetail := CheckHasField('IsCheckDetail');
      StartTopicCode := CheckHasField('StartTopicCode');
      EndTopicCode := CheckHasField('EndTopicCode');
      KindShowWarnDetail := CheckHasField('ShowWarnDetail');
      DocReport1 := CheckHasField('Report1OnDocName');
      DocReport2 := CheckHasField('Report2OnDocName');
      DocReport3 := CheckHasField('Report3OnDocName');

      // AccBankNames := CheckHasField('AccBankNames');
      ActiveCompany := CheckHasField('ActiveMultiCompany') = 1;
      // AccActive := CheckHasField('AccActive') = 1;
      // BudgetActive := CheckHasField('BudgetActive') = 1;
      // AuditActive := CheckHasField('AuditActive') = 1;
      // FinancialActive := CheckHasField('FinancialActive') = 1;
      // PortainActive := CheckHasField('PortainActive') = 1;
      // SpecialActive := CheckHasField('SpecialActive') = 1;
      // ManegeActive := CheckHasField('ManegeActive') = 1;
      CurrencyActive := CheckHasField('ActiveCurrencyInTrialBalance') = 1;
      MiladiActive := CheckHasField('MiladiDateActive');
      ActiveCtopic1 := CheckHasField('CTopicCode1Active') = 1;
      ActiveCtopic2 := CheckHasField('CTopicCode2Active') = 1;
      ActiveCtopic3 := CheckHasField('CTopicCode3Active') = '1';
      // SeletedPrintEnabled := CheckHasField('PrintSelected');
      RestDocCode := CheckHasField('RestDocCode') = 1;
      ChkBalancCTopicCode3 := CheckHasField('ChkBalancCTopicCode3') = 1;
      ChkSelfDocShow := CheckHasField('ChkSelfDocShow') = 1;

      CTopicCode2IsZero := CheckHasField('CTopicCode2IsZero') = 1;
      CTopicCode3IsZero := CheckHasField('CTopicCode3IsZero') = 1;
      TopicCaptionActive := CheckHasField('TopicCaptionActive') = 1;

      RatesCalculation := CheckHasField('RatesCalculation');
      ActivePartCompany := CheckHasField('ActivePartCompany') = 1;
      // POActive := CheckHasField('POActive') = 1;
      // RoundEntity := -4;
      DecimalActive := CheckHasField('DecimalActive');
      ChkEnterBudget := CheckHasField('ChkEnterBudget');
      ArzNumberOfDigits := CheckHasField('ArzNumberOfDigits');

      CtoipcRelatedKind := CheckHasField('CtoipcRelatedKind');
      CheckAccCodeInInsert := CheckHasField('CheckAccCodeInInsert') = 1;
      EditableDetailRange := CheckHasField('EditableDetailRange');
      AddStuffcoding := CheckHasField('AddStuffcoding') = 1;
      AccBookSortType := IfThen(CheckHasField('AccBookSortType') = 1, 1, 0);

      CountAccLevel := CheckHasField('CountAccLevel');
      // TryStrToInt(CheckHasField('SysSmsActive'), StartLimitID);
      // SysSmsSendKind := StartLimitID;
      BudgetType := CheckHasField('BudgetType');
      if CountAccLevel = 0 then
        CountAccLevel := 3;

      LevelIDOnKol := CheckHasField('LevelIDOnKol');
      StartLimitID := CheckHasField('StartLimitID');
      EndLimitID := CheckHasField('EndLimitID');

      if (StartLimitID = 0) and (EndLimitID = 0) then
      begin
        StartLimitID := 1;
        EndLimitID := 2147483647;
      end;

      Close;
    finally
      Free;
    end;

  with TADOQuery.Create(nil) do
    try
      Connection := DMf.adcAccounting;
      SQL.Text := 'SELECT Count(*) FROM Acc.Companies';
      Open;
      optA.CountCompany := Fields[0].AsInteger;
    finally
      Free;
    end;

  with optA do
  begin
    LastDoc := StrToBool(ReadConfig(APPID, 'LastDoc', 'False'));
    docdate := StrToBool(ReadConfig(APPID, 'DocDate', 'True'));
    /// PrintDateEnabled := StrToBool(ReadConfig(APPID, 'PrintDate', 'True'));
    ShowLevel := StrToBool(ReadConfig(APPID, 'ShowLevel', 'False'));
    DocTool := StrToBool(ReadConfig(APPID, 'DocTool', 'False'));
    ActiveSortTitle := StrToBool(ReadConfig(APPID, 'ActiveSortTitle', 'False'));
    CanRelation := StrToBool(ReadConfig(APPID, 'CanRelation', 'False'));
    SumBook := StrToBool(ReadConfig(APPID, 'SumBook', 'false'));
    gv_MultiCompany := (CountCompany > 1) and ActiveCompany;
  end;

end;

procedure SelectDefaultYear;
begin
  case opt.DefaultYearkind of
    0:
      opt.DefaultYear := APPBank.Year;
    1:
      opt.DefaultYear := APPBank.Year - 1;
  else
    with TADOQuery.Create(DMf) do
      try
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT MIN(YearID) FROM Util.MaliYear';
        Open;
        // add2log('OYO-SelectDefaultYear');
        opt.DefaultYear := Fields[0].AsInteger;
      finally
        Free;
      end;
  end;

  // if opt.DefaultYear < 20 then
  // opt.DefaultYear2 := opt.DefaultYear + 1400
  // else
  // opt.DefaultYear2 := opt.DefaultYear + 1300;
  opt.DefaultYear2 := opt.DefaultYear;

end;

function GetLimitFi(qry: TADOQuery): Currency;
begin
  case qry.FieldByName('_UnitPriceUseKind').AsInteger of
    0:
      Result := opt.LowerLimit1;
    3:
      Result := opt.LowerLimit2;
    4:
      Result := qry.FieldByName('_SellPrice_S').AsCurrency;
  else
    Result := opt.LowerLimit1;
  end; // end case
end;

function SetMenuName(mnu: TMainMenu): String;
var
  i, j, X: Integer;
  s: String;
begin
  if mnu = nil then
    Exit;
  for i := 0 to mnu.Items.Count - 1 do
  begin
    if mnu.Items[i].Tag = -1 then
      Continue;
    for j := 0 to mnu.Items[i].Count - 1 do
    begin
      if (mnu.Items[i].Items[j].Enabled) and (mnu.Items[i].Items[j].Visible)
      then
      begin
        s := mnu.Items[i].Items[j].Name;
        if s <> '-' then
          Result := Result + '@ ' + s;
        for X := 0 to mnu.Items[i].Items[j].Count - 1 do
        begin
          if (mnu.Items[i].Items[j].Items[X].Enabled) and
            (mnu.Items[i].Items[j].Items[X].Visible) then
          begin
            s := mnu.Items[i].Items[j].Items[X].Name;
            if s <> '-' then
              Result := Result + '@ ' + s;
          end; // if
        end; // for
      end; // if
    end; // for
  end; // forend;
  Result := LowerCase(Result)
end;

function ShamsiDate2String(inDate: String): String;
var
  Years, Month, Day: String;
  end_s, MonthName, YearName: String;
  MonthNames: array [1 .. 12] of string;
  LengthYear: Integer;
begin
  if not Miladi_ValiDate_Date_Check then
  begin
    MonthNames[1] := 'فروردين';
    MonthNames[2] := 'ارديبهشت';
    MonthNames[3] := 'خرداد';
    MonthNames[4] := 'تير';
    MonthNames[5] := 'مرداد';
    MonthNames[6] := 'شهريور';
    MonthNames[7] := 'مهر';
    MonthNames[8] := 'آبان';
    MonthNames[9] := 'آذر';
    MonthNames[10] := 'دي';
    MonthNames[11] := 'بهمن';
    MonthNames[12] := 'اسفند';
    MonthName := #254 + 'ماه' + #254;
    YearName := ' هزار سيصد و ';
  end
  else
  begin
    MonthNames[1] := 'January';
    MonthNames[2] := 'February';
    MonthNames[3] := 'March';
    MonthNames[4] := 'April';
    MonthNames[5] := 'May';
    MonthNames[6] := 'June';
    MonthNames[7] := 'July';
    MonthNames[8] := 'August';
    MonthNames[9] := 'September';
    MonthNames[10] := 'October';
    MonthNames[11] := 'November';
    MonthNames[12] := 'December';
    MonthName := '';
    YearName := 'Two thousand ';
  end;

  Day := num2alphabet(StrToInt64Def(Trim(RemoveComma(RightStr(inDate, 2))), 0));
  if not Miladi_ValiDate_Date_Check then
  begin
    end_s := Day + 'م' + #254;
    If (Day = 'سي') Then
      end_s := Day + ' ام' + #254;
    If (Day = 'بيست و سه') Then
      end_s := 'بيست و سوم' + #254;
    If (Day = 'سه') Then
      end_s := 'سوم' + #254;
    Day := end_s;
  end;

  // Month:=formatdatetime('yyyy',StrToDate(indate))+' ماه' + #254;
  // Month:=formatdatetime('mmmm',StrToDate(indate))+' ماه' + #254;

  Month := ' ' + MonthNames[StrToIntDef(MidStr(inDate, 6, 2), 1)] + MonthName;
  if inDate.Length > 8 then
  begin
    YearName := '';
    LengthYear := 4;
    Month := ' ' + MonthNames[StrToIntDef(MidStr(inDate, 6, 2), 1)] + MonthName;
  end
  else
    LengthYear := 2;

  Years := YearName + num2alphabet
    (StrToInt64Def(Trim(RemoveComma(LeftStr(inDate, LengthYear))), 0));
  Result := Day + ' ' + Month + ' ' + Years;
end;

function BackupDatabaseNet(ADC: TADOConnection; anAPPBank: TAPPBANK;
  pathName: String; ChooseDir: boolean = False; DoZip: boolean = True): boolean;
var
  cmd: String;
  adoCommand: TADOCommand;
  tmpDBpath, tmpDBpathZip: String;
  bPath: String;
  filepath: String;
  ts: TStringList;
begin
  Result := False;
  filepath := GetDataPath(anAPPBank.Name) + '\BackUpNet\' +
    MakeUniqDBBackupName(anAPPBank.Name, var_glb_CurrentDate) + '\' +
    MakeUniqDBBackupName(anAPPBank.Name, var_glb_CurrentDate) + '.zip';
  setkeyboardlatin;
  bPath := '';
  if ChooseDir then
  begin
    if not selectdirectory('لطفاً مسير پشتيبان گيري را وارد كنيد:‏', '', bPath)
    then
      Exit
  end
  else
    bPath := pathName;

  tmpDBpath := ExtractFilePath(filepath) + ExtractFileNameWithoutExt
    (filepath) + '.dat';

  if var_SQL_ProductVersion > 8 then
  begin
    cmd := Format('BACKUP DATABASE [%s] TO DISK = ''%s''  WITH  INIT',
      [anAPPBank.Name, tmpDBpath]);
    cmd := cmd + ',COMPRESSION';
  end
  else
    cmd := Format
      ('BACKUP DATABASE [%s] TO DISK = ''%s''  WITH PASSWORD = ''tycedar'' ,INIT',
      [anAPPBank.Name, tmpDBpath]);

  // cmd := Format
  // ('BACKUP DATABASE [%s] TO DISK = ''%s''  WITH PASSWORD = ''tycedar'' ,INIT',
  // [anAPPBank.Name, tmpDBpath]);

  if not SysUtils.DirectoryExists(tmpDBpath) then
    CreateDir(tmpDBpath);
  SysUtils.ForceDirectories(ExtractFilePath(tmpDBpath));
  DeleteFile(tmpDBpath);
  adoCommand := TADOCommand.Create(ADC);
  ts := TStringList.Create;
  ts.Text := 'عنوان پشتيبان=' + anAPPBank.Title;
  ts.Add('نام بانك=' + anAPPBank.Name);
  ts.Add('نام شركت=' + anAPPBank.CompanyName);
  ts.Add('سال مالي=' + IntToStr(anAPPBank.Year));
  ts.Add('تاريخ تهيه=' + miladi2Shamsi(Date));
  ts.Add('تهيه كننده= ' + User.Name);
  ts.Add('كد شركت=' + IntToStr(anAPPBank.n_subcompany));
  BigMessage('در حال تهيه پشتيبان ...', 0);
  try
    with adoCommand do
    begin
      Connection := ADC;
      ParamCheck := False;
      Prepared := False;
      CommandText := cmd;
      CommandTimeout := 0;
      try
        while not FileExists(tmpDBpath) do
          Execute;
        if FileExists(tmpDBpath) then
        begin
          sleep(1000);
          if DoZip then
            tmpDBpathZip := ExtractFilePath(tmpDBpath) +
              ExtractFileName(filepath);
          if not ZipFiles(tmpDBpath, filepath) then
            raise Exception.Create('اشكال در فشرده‌سازي پشتيبان');
        end;
        // if
        ts.SaveToFile(ExtractFilePath(filepath) + ExtractFileNameWithoutExt
          (filepath) + '.dsc');
        BigMessage('عمليات پشتيبان‌گيري با موفقيت انجام شد.', 1);
        Result := True;
      except
        on E: Exception do
        begin
          add2log(E.Message);
          Warn('اشكال در تهيه پشتيبان' + #13#10 + E.Message);
          Result := False;
        end;
      end;
      // try
    end; // with
  finally
    SetKeyboardFarsi;
    adoCommand.Free;
    ts.Free;
    CloseMessage;
    CopyFile(PChar(filepath), PChar(bPath), False);
    CopyFile(PChar(ExtractFilePath(filepath) + ExtractFileNameWithoutExt
      (filepath) + '.dsc'),
      PChar(ExtractFilePath(bPath) + ExtractFileNameWithoutExt(bPath) +
      '.dsc'), False);
    DelDir(GetDataPath(anAPPBank.Name) + '\BackUpNet');
  end;
  // try
end;

// function UnicFieldName(fldIDValue: String; fldValidValue: String;
// tblName, fldIDName, fldValidName: String; CustomerGrpID: Integer): boolean;
// begin
// Result := False;
// With DMf.qryTmpTmp do
// begin
// Active := False;
// SQL.Text := 'SELECT COUNT(*)';
// SQL.Add('FROM ' + tblName);
// SQL.Add('WHERE (' + fldValidName + ' = ''' + fldValidValue + ''') ');
// SQL.Add('AND (' + fldIDName + ' <> ''' + fldIDValue + ''')');
//
// if CustomerGrpID <> 0 then
// begin
// case opt.CustomersUnicName of
// 1:
// begin
// SQL.Add('AND (CustomerGrpID IN');
// SQL.Add('(SELECT CustomerGrpID');
// SQL.Add('FROM CustomersGroup');
// SQL.Add('WHERE (GroupType IN');
// SQL.Add('(SELECT GroupType');
// SQL.Add('FROM CustomersGroup AS CustomersGroup_1');
// SQL.Add('WHERE (CustomerGrpID = %d)))))');
// end;
// 2:
// SQL.Add('AND (CustomerGrpID = %d)');
// 3:
// begin
// Result := True;
// Exit;
// end;
// end;
// SQL.Text := Format(SQL.Text, [CustomerGrpID]);
// end;
//
// SQL.Add('GROUP BY ' + fldValidName + ', ' + fldIDName);
// Active := True;
// if (Fields[0].AsInteger <> 0) then
// begin
// Warn('نام وارد شده تكراري مي‌باشد.');
// Exit;
// end; // if
// Active := False;
// end; // with
// Result := True;
// end;

function UnicFieldName(IDField, Field4DuplicateValue: TField; tblName: String;
  CustomerGrpID: Integer; WHERESQL: string = ''): boolean;
begin
  Result := False;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*)';
    SQL.Add('FROM ' + tblName);
    SQL.Add('WHERE (' + Field4DuplicateValue.FieldName + ' = ''' +
      Field4DuplicateValue.AsString + ''') ');
    SQL.Add('AND (' + IDField.FieldName + ' <> ''' + IDField.AsString + ''')');
    SQL.Add('AND (' + IDField.FieldName + ' <> ''' +
      VarToStr(IDField.OldValue) + ''')');
    SQL.Add(WHERESQL);

    if CustomerGrpID <> 0 then
    begin
      case opt.CustomersUnicName of
        1:
          begin
            SQL.Add('AND (CustomerGrpID IN');
            SQL.Add('(SELECT CustomerGrpID');
            SQL.Add('FROM CustomersGroup');
            SQL.Add('WHERE (GroupType IN');
            SQL.Add('(SELECT GroupType');
            SQL.Add('FROM CustomersGroup AS CustomersGroup_1');
            SQL.Add('WHERE (CustomerGrpID = %d)))))');
          end;
        2:
          SQL.Add('AND (CustomerGrpID = %d)');
        3:
          begin
            Result := True;
            Exit;
          end;
      end;
      SQL.Text := Format(SQL.Text, [CustomerGrpID]);
    end;

    SQL.Add('GROUP BY ' + Field4DuplicateValue.FieldName + ', ' +
      IDField.FieldName);
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn(Field4DuplicateValue.DisplayLabel + ' وارد شده تكراري مي‌باشد.');
      Exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

function UnicFieldMobile(qryCustomer: TADOQuery): boolean;
var
  s: string;
begin
  Result := False;
  if qryCustomer.FieldByName('Mobile').AsString = '0' then
    Exit;

  if (LeftStr(qryCustomer.FieldByName('Mobile').AsString.Trim, 2) <> '09') or
    (Length(qryCustomer.FieldByName('Mobile').AsString.Trim) <> 11) then
  begin
    Result := True;
    s := 'شماره همراه معتبر نمی باشد';
    if mainF.Menu <> mainF.Mnu14Sell then
    begin
      Result := False;
      Warn2(s);
    end
    else
      Warn(s);

    Exit;
  end;

  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT str(CustID) + '' '' + CustName AS CustName';
    SQL.Add('FROM Customers');
    SQL.Add('WHERE (RIGHT(Mobile, 10) = :Mobile )');
    SQL.Add('AND (CustID <> :CustID )');
    Parameters.ParamByName('CustID').Value := qryCustomer.FieldByName('CustID')
      .AsInteger;
    Parameters.ParamByName('Mobile').Value :=
      RightStr(qryCustomer.FieldByName('Mobile').AsString.Trim, 10);
    Active := True;

    Result := (Fields[0].AsString <> EmptyStr);

    if Result then
    begin
      Warn2('شماره همراه برای ' + #13#10 + Fields[0].AsString + #13#10 +
        ' وارد شده و تكراري مي‌باشد.', 1000);
    end;
    Active := False;

    if not((opt.AllControls and Integer(CHkUnicMobile)) <> 0) then
      Result := False;

    if mainF.Menu <> mainF.Mnu14Sell then
      Result := False;

  end;
end;

procedure initCheckList(ChkLstBox: TCheckListBox; checkeds: String);
var
  i, r: Integer;
begin
  for i := 0 to ChkLstBox.Items.Count - 1 do
  begin
    ChkLstBox.Checked[i] := False;
  end;
  if (checkeds = '') or (ChkLstBox.Items.Count <= 0) then
    Exit;
  if (Length(checkeds) = 1) and (checkeds <> '') then
    ChkLstBox.Checked[StrToInt(checkeds)] := True
  else
    checkeds := checkeds + ',';
  while Pos(',', checkeds) <> 0 do
  begin
    r := StrToInt64Def(LeftStr(checkeds, Pos(',', checkeds) - 1), 0);
    ChkLstBox.Checked[r] := True;
    checkeds := copy(checkeds, Pos(',', checkeds) + 1, Length(checkeds));
  end;
end;

function GetCheckList(ChkLstBox: TCheckListBox): String;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to ChkLstBox.Items.Count - 1 do
  begin
    if ChkLstBox.Checked[i] then
      Result := Result + IntToStr(i) + ','
  end;
  Result := LeftStr(Result, Length(Result) - 1);
end;

procedure initCheckList2(ChkLstBox: TCheckListBox; f, power: Largeint);
var
  i, Pow: Largeint;
begin
  Pow := power;
  for i := 0 to ChkLstBox.Items.Count - 1 do
  begin
    ChkLstBox.Checked[i] := (f and Pow) <> 0;
    Pow := Pow * 2;
  end;
end;

function GetCheckList2(ChkLstBox: TCheckListBox; power: Largeint): Largeint;
var
  i, Pow: Largeint;
begin
  Result := 0;
  Pow := power;
  for i := 0 to ChkLstBox.Items.Count - 1 do
  begin
    if ChkLstBox.Checked[i] then
      Result := Result + Pow;
    Pow := Pow * 2;
  end;
end;

function DefaultDateCalc(DefaultDurationField, FormDateField: TField): string;
var
  FormDate: string;
  FormDateM: TDateTime;
  NumOfDay: Integer;
begin
  NumOfDay := DefaultDurationField.AsInteger;
  FormDate := FormDateField.AsString;
  FormDateM := Shamsi2Miladi(FormDate);
  FormDateM := IncDay(FormDateM, NumOfDay);
  Result := miladi2Shamsi(FormDateM);
end;

function UserSecurityCheck(iPower: Integer; kind: UserChekKind): boolean;
begin
  // 1// کاربر ثبت کننده
  // 2// کنترل نشود
  // 4// ارتباط کاربر با مشتری 1
  // 8// ارتباط کاربر با مشتری 2
  // 16// ارتباط کاربر با مشتری 3

  // فقط کاربر ثبت کننده بتواند ویرایش کند
  // فیلتر مشتری 1 براساس کاربر مجاز
  // فیلتر مشتری 2 براساس کاربر مجاز
  // فیلتر مشتری 3 براساس کاربر مجاز
  // فقط کاربر ثبت کننده فرم های ثبت شده خود را رویت کند

  Result := (iPower and Integer(UserChekKind(kind))) <> 0;


  // case UserChekKind(kind) of
  // UserRegistrar:
  // Result := (iPower and 1) <> 0;
  // UserUncontrolled:
  // Result := (iPower and 2) <> 0;
  // UserRelationWithcustomer1:
  // Result := (iPower and 4) <> 0;
  // UserRelationWithcustomer2:
  // Result := (iPower and 8) <> 0;
  // UserRelationWithcustomer3:
  // Result := (iPower and 16) <> 0;
  // end;

end;

function SumReciptsDeficits(qry_: TADOQuery; DeficitID: Integer): Currency;
var
  qry: TADOQuery;
  s: String;
begin
  qry := TADOQuery.Create(DMf);
  with qry do
    try
      qry.Connection := DMf.adcBSell;
      SQL.Text :=
        'SELECT SUM(ReciptsDeficits.DeficitAdd)-SUM(ReciptsDeficits.DeficitDec)AS DeficitAdd_Dec';
      SQL.Add('FROM ReciptsDeficits LEFT OUTER JOIN');
      SQL.Add('Deficits ON ReciptsDeficits.DeficitID = Deficits.DeficitID');
      SQL.Add('WHERE(ReciptsDeficits.ReciptID = :ReciptID ) AND(Deficits.BeforeDeficitCalc=1)');
      SQL.Add('AND(ReciptsDeficits.ServerID = :ServerID ) ');
      SQL.Add('AND(ReciptsDeficits.YearID = :YearID )');
      Parameters.ParamByName('ReciptID').Value := qry_.FieldByName('ReciptID')
        .AsInteger;
      Parameters.ParamByName('ServerID').Value := qry_.FieldByName('ServerID')
        .AsInteger;
      Parameters.ParamByName('YearID').Value := qry_.FieldByName('YearID')
        .AsInteger;

      Active := True;
      Result := Fields[0].AsCurrency;
      Active := False;
      /// ///////////////////////////////////////////////////////////////////////
      SQL.Text := 'SELECT RTRIM(DeficitsTogetherRange) AS Range ';
      SQL.Add('FROM   Deficits');
      SQL.Add('WHERE  DeficitID=' + IntToStr(DeficitID));
      Active := True;
      s := Fields[0].AsString;
      Active := False;
      if s <> '' then
      begin
        SQL.Text :=
          'SELECT SUM(ReciptsDeficits.DeficitAdd) - SUM(ReciptsDeficits.DeficitDec) AS DeficitAdd_Dec';
        SQL.Add('FROM ReciptsDeficits LEFT OUTER JOIN');
        SQL.Add('Deficits ON ReciptsDeficits.DeficitID = Deficits.DeficitID');
        SQL.Add('WHERE (Deficits.DeficitID in (' + s + ') ) ');
        SQL.Add('AND(ReciptsDeficits.ReciptID = :ReciptID )');
        SQL.Add('AND(ReciptsDeficits.ServerID = :ServerID ) ');
        SQL.Add('AND(ReciptsDeficits.YearID = :YearID )');
        Parameters.ParamByName('ReciptID').Value := qry_.FieldByName('ReciptID')
          .AsInteger;
        Parameters.ParamByName('ServerID').Value := qry_.FieldByName('ServerID')
          .AsInteger;
        Parameters.ParamByName('YearID').Value := qry_.FieldByName('YearID')
          .AsInteger;

        Active := True;
        Result := Result + Fields[0].AsCurrency;
        Active := False;
      end;
      // if
    finally
      qry.Free;
    end; // try
end;

function CalcDeficits(qry: TADOQuery; CalculationType: Integer;
  DeficitCo: Variant; CustomersDiscount: Real; DeficitID: Integer): Double;
var
  c: Integer;
  price, ReciptsPrice: Currency;
  ReciptsEntity: Real;
  b: boolean;
begin
  Result := 0;
  if qry.FieldByName('_HasDeficit').AsInteger <> 1 then
    Exit;
  with TADOQuery.Create(DMf) do
  begin
    Connection := DMf.adcBSell;
    Active := False;
    SQL.Text :=
      'SELECT COUNT(DeficitID) as DeficitID FROM  DeficitsCorrelationRecipts';
    SQL.Add('WHERE DeficitID =' + IntToStr(DeficitID));
    SQL.Add('AND ReciptID = ' + qry.FieldByName('ReciptID').AsString);
    SQL.Add('AND ServerID = ' + qry.FieldByName('ServerID').AsString);
    SQL.Add('AND  YearID  = ' + qry.FieldByName('YearID').AsString);
    Active := True;
    b := FieldByName('DeficitID').AsInteger > 0;
    Active := False;
    SQL.Text :=
      'SELECT SUM(InputEntity) + SUM(OutputEntity) AS Entity, SUM(TotalInputPrice) + SUM(TotalOutputPrice) AS Price';
    SQL.Add(',SUM(TotallSellPrice) AS TotallSellPrice ');
    SQL.Add('FROM DeficitsCorrelationRecipts  RIGHT OUTER JOIN ');
    // SQL.Add  ('ReciptItems ON DeficitsCorrelationRecipts.ReciptID = ReciptItems.ReciptID');
    SQL.Add('ReciptItems ON DeficitsCorrelationRecipts.StuffCode = ReciptItems.StuffCode');
    SQL.Add('AND DeficitsCorrelationRecipts.ReciptID = ReciptItems.ReciptID');
    SQL.Add('AND DeficitsCorrelationRecipts.YearID = ReciptItems.YearID');
    SQL.Add('AND DeficitsCorrelationRecipts.ServerID = ReciptItems.ServerID');

    SQL.Add('WHERE ReciptItems.ReciptID = ' + qry.FieldByName('ReciptID')
      .AsString);
    SQL.Add('AND   ReciptItems.ServerID = ' + qry.FieldByName('ServerID')
      .AsString);
    SQL.Add('AND   ReciptItems.YearID   = ' + qry.FieldByName('YearID')
      .AsString);

    if b then
      SQL.Add('AND (DeficitsCorrelationRecipts.DeficitID = ' +
        IntToStr(DeficitID) + ')');
    // ShowMessage(SQL.Text);
    Active := True;
    ReciptsEntity := FieldByName('Entity').AsCurrency;

    if CalculationType in [5, 6] then
      ReciptsPrice := FieldByName('TotallSellPrice').AsCurrency
    else
      ReciptsPrice := FieldByName('Price').AsCurrency;

    Active := False;
    Free;
  end;
  price := ReciptsPrice + SumReciptsDeficits(qry, DeficitID);
  price := RoundTo(price, 0);
  case CalculationType of
    0, 6:
      Result := DeficitCo * price;
    1:
      Result := DeficitCo * ReciptsEntity;
    2:
      Result := DeficitCo;
    3, 5:
      begin
        c := StrToInt(CurrToStr(price));
        Result := c mod DeficitCo;
      end;
    4:
      Result := CustomersDiscount * price / 100;

  end; // end case
  Result := RoundTo(Result, 0)
end;

function GetCustomerKind(CustomerGroups: String): String;
begin
  Result := '';
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := ' SELECT     GroupType ';
    SQL.Add('FROM         CustomersGroup');
    SQL.Add('WHERE     (CustomerGrpID IN (' + CustomerGroups + '))');
    SQL.Add('GROUP BY GroupType');
    Active := True;
    while not Eof do
    begin
      Result := Result + FieldByName('GroupType').AsString + ',';
      Next;
    end; // while
    Active := False;
  end; // with
  Result := LeftStr(Result, Length(Result) - 1)
end;

function CheckRequiredFieldsFill(Dataset: TDataSet): boolean;
var
  i: Integer;
begin
  Result := True;
  for i := 0 to Dataset.FieldCount - 1 do
    if Dataset.Fields[i].Required then
      if Dataset.Fields[i].IsNull then
      begin
        Result := False;
      end
      else
      begin
        Result := True;
        Break;
      end; // if
end;

procedure ShowAllFrom(Tag4Type: Integer; GroupIndex4case: Integer;
  frParent: TForm; qry: TDataSet);
begin
  case GroupIndex4case of
    0:
      CreateMDIForm3(False, TRptReportsF, RptReportsF, frParent, Tag4Type);
    1:
      begin
        RptCardexF.Enter(qry.FieldByName('n_StoreID').AsInteger,
          qry.FieldByName('StuffCode').AsLargeInt, 1);
        // myParams.CreateParam(ftInteger, 'ControlCode', ptInput).AsString :=
        // '0;999999999';
        // myParams.CreateParam(ftInteger, 'store', ptInput).AsString :=
        // qry.FieldByName('StoreID').AsString + ';' +
        // qry.FieldByName('StoreID').AsString;
        // myParams.CreateParam(ftDate, 'Date', ptInput).AsString :=
        // myParams.ParamValues['Date'];
        // myParams.CreateParam(ftInteger, 'StuffCode', ptInput).AsString :=
        // qry.FieldByName('StuffCode').AsLargeInt + ';' +
        // qry.FieldByName('StuffCode').AsLargeInt;
        // CreateMDIForm2(TRptCardexF, RptCardexF, frParent, 100);
        //
        // RptCardexF.cmbStore.ItemIndex := RptCardexF.cmbStore.Items.IndexOfObject
        // (TObject(qry.FieldByName('n_StoreID').AsInteger));
        // if not RptCardexF.qryStuffs.Locate('StuffCode',
        // qry.FieldByName('StuffCode').Value, []) then
        // Warn('كالاي مورد نظر يافت نشد');

      end;
    2:
      ShowReciptTypes(qry, frParent, qry.FieldByName('StuffCode').AsLargeInt);
    3:
      ShowFormTypesForms(qry, frParent);
  end;
end;

procedure ShowAllFrom2(ds: TDataSet; ReportID: Integer = 0;
  FromType: Integer = 0);
var
  OldAcc, SerialNum: Integer;
  // ds: TDataset;
  SourceTable: string;
begin
  // ds := grd.DataSource.Dataset;
  case ds.FieldByName('KindForm').AsInteger of
    0:
      Warn('فرمي براي نمايش وجود ندارد.!');
    1, 2:
      ShowFormTypesForms(ds, mdiMainF);
    3:
      ShowReciptTypes(ds, mdiMainF);
    // LocateField

    4:
      begin
        // ds := grd.DataSource.DataSet;
        case ReportID of
          6566:
            begin
              with Mypop do
              begin
                Items.Clear;
                if User.ID > 100 then
                  Items.Add(MyNewItem('موقت', 'UPDATE Expenses SET State = 0',
                    'ExpID'));
                Items.Add(MyNewItem('قطعي',
                  'UPDATE Expenses SET State = 2 WHERE (State < 2)', 'ExpID'));
                Items.Add(MyNewItem('دائم',
                  'UPDATE Expenses SET State = 3 WHERE (State < 3)', 'ExpID'));
                Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
              end;
            end;
          6567:
            begin
              with Mypop do
              begin
                Items.Clear;
                if User.ID > 100 then
                  Items.Add(MyNewItem('موقت', 'UPDATE Decrease SET State = 0',
                    'DecreaseID'));
                Items.Add(MyNewItem('قطعي',
                  'UPDATE Decrease SET State = 2 WHERE (State < 2)',
                  'DecreaseID'));
                Items.Add(MyNewItem('دائم',
                  'UPDATE Decrease SET State = 3 WHERE (State < 3)',
                  'DecreaseID'));
                Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
              end;
            end;
          6598, 6603:
            begin
              OldAcc := ds.FieldByName('AccTopicCode').AsInteger;
              try
                Var_glb_NoFilter := True;
                CreateMDIForm3(True, TRptReportsF, RptReportsF,
                  RptReportsF, 6596);
              finally
                Var_glb_NoFilter := False;
                RptReportsF.qryMaster.Locate('MasterCode', OldAcc, []);
              end;
            end;
          6596:
            Alladd2PopOther(1, nil);
          6599, 7005:
            begin
              OldAcc := ds.FieldByName('ExpCode').AsInteger;
              try
                // Var_glb_NoFilter := True;      >> plan   23952
                CreateMDIForm3(True, TRptReportsF, RptReportsF,
                  RptReportsF, 6597);
              finally
                Var_glb_NoFilter := False;
                RptReportsF.qryMaster.Locate('MasterCode', OldAcc, []);
              end;
            end;

        end;
      end; // case

    5:
      begin
        SourceTable := ds.FieldByName('sourcetable').AsString;
        SerialNum := ds.FieldByName('SerialNum').AsInteger;
        if SourceTable = 'Amval' then
          CreateMDIForm2(TAmvalF, AmvalF, Application.MainForm, SerialNum)
        else if SourceTable = 'AidAssets' then
          AidAssetsF.Enter(SerialNum)
        else if SourceTable = 'AlterAssets' then
        begin
          CreateMDIForm2(TAlterAssetsF, AlterAssetsF, Application.MainForm);
          AlterAssetsF.qryAlterAssets.Locate('Serial', SerialNum, []);
        end
        else if SourceTable = 'AssetsInsouranceSpecial' then
        begin
          CreateMDIForm2(TSpecialInsouranceF, SpecialInsouranceF,
            Application.MainForm);
          SpecialInsouranceF.qryIncSpecial.Locate('Serial', SerialNum, []);

        end
        else if SourceTable = 'BerakAmval' then
        begin
          CreateMDIForm2(TBerakAmvalF, BerakAmvalF, Application.MainForm);
          BerakAmvalF.qryBerakAmval.Locate('SerialNum', SerialNum, []);
        end
        else if SourceTable = 'Decrease' then
        begin
          CreateMDIForm2(TDecreaseF, DecreaseF, Application.MainForm);
          DecreaseF.qryDecrease.Locate('SerialNum', SerialNum, []);
        end
        else if SourceTable = 'Expenses' then
        begin
          CreateMDIForm2(TExpense1F, Expense1F, Application.MainForm);
          Expense1F.qryExpense1s.Locate('SerialNum', SerialNum, []);

        end
        else if SourceTable = 'Movement' then
        begin
          CreateMDIForm2(TMovementF, MovementF, Application.MainForm);
          MovementF.qryMovement.Locate('SerialNum', SerialNum, []);
        end
        else if SourceTable = 'ReValidateItems' then
        begin
          CreateMDIForm2(TRevalidateF, RevalidateF, Application.MainForm);
          RevalidateF.qryReValidateItems.Locate('SerialNum', SerialNum, []);
        end
        else
          Warn('فرمي براي نمايش وجود ندارد.!');

      end;

  end;
end;

function MyNewItem;
begin
  Result := TMyMenuItem.Create(nil);
  with TMyMenuItem(Result) do
  begin
    Caption := ACaption;
    Enabled := True;
    SqlText := AsqlTxt;
    KeyFieldName := KeyFldName;
  end;
end;

procedure Alladd2PopOther(TagOfMenu: Integer; grd: TCedarDbgrid);
var
  i: Integer;
  ds: TDataSet;
  TozinIDs, MaintenanceID: String;
begin
  ds := grd.DataSource.Dataset;
  case TagOfMenu of
    1:
      begin
        TozinIDs := GetSelectedRowsDBGrid(grd, 'TozinID');
        if TozinIDs = EmptyStr then
          Exit;
        if get_response('آيا براي ثبت ' + ds.FieldByName('ReciptCaption')
          .AsString + ' سطرهاي انتخاب شده مطمئن هستيد؟') <> mrYes then
          Exit;
        With TADOStoredProc.Create(DMf) do
        begin
          Connection := DMf.adcBSell;
          ProcedureName := 'NewTozin2Recipts;1';
          Parameters.Refresh;
          i := ds.FieldByName('TozinID').AsInteger;
          Parameters.ParamByName('@TozinIDs').Value := TozinIDs;
          Parameters.ParamByName('@ReciptID').Value := 0;
          Parameters.ParamByName('@ServerID').Value := opt.ServerID;
          Parameters.ParamByName('@YearID').Value := APPBank.Year;
          ExecProc;
          Free;
          TADOQuery(ds as TDataSet).Requery();
          ds.Locate('TozinID', i, []);
          // BigMessage('انجام شد.‏',0);
        end; // With

      end;
    2:
      begin
        MaintenanceID := GetSelectedRowsDBGrid(grd, 'MaintenanceID');
        if MaintenanceID = EmptyStr then
          Exit;
        if get_response('آيا براي تغيير وضعيت سطرهاي انتخاب شده مطمئن هستيد؟')
          <> mrYes then
          Exit;
        with DMf.qryTmpTmp do
        begin
          Active := False;
          SQL.Text :=
            'UPDATE Machin.Maintenance SET MaintenanceStatus = MaintenanceStatus + 1';
          SQL.Add('WHERE (MaintenanceStatus in(0,1) )');
          SQL.Add('AND (MaintenanceID in (%s))');
          SQL.Text := Format(SQL.Text, [MaintenanceID]);
          BigMessage(IntToStr(ExecSQL) + 'مورد انجام شد.', 1);
          i := ds.FieldByName('MaintenanceID').AsInteger;
          ds.Close;
          ds.Open;
          ds.Locate('MaintenanceID', i, []);
        end;
      end;
    3:
      begin
        CreateMDIForm2(TProformaF, ProformaF, mainF, 1);
        if not ProformaF.qryRecipts.Locate('ReciptID;ServerID;YearID',
          VarArrayOf([ds.FieldByName('ReciptID').AsInteger,
          ds.FieldByName('ServerID').AsInteger, ds.FieldByName('YearID')
          .AsInteger]), []) then
          Warn('پیدا نشد')
        else if not ProformaF.qryProforma.Locate('ProformaID',
          ds.FieldByName('ProformaID').AsInteger, []) then
          Warn('پیدا نشد');
      end;
    4:
      begin
        SelectCustID := ds.FieldByName('PersonID1').AsInteger;
        CreateMDIForm2(TrptCustomerTransactionF,
          rptCustomerTransactionF, mainF);

      end
  else
    Warn('Not Set');
  end;
end;

procedure ClearDoc(grd: TComponent; qry: TDataSet);
var
  s: string;
  ReciptID, ServerID, YearID, SelectedRowsCount: Integer;
begin
  ReciptID := qry.FieldByName('ReciptID').AsInteger;
  ServerID := qry.FieldByName('ServerID').AsInteger;
  YearID := qry.FieldByName('YearID').AsInteger;
  if grd is TDBGrid then
    SelectedRowsCount := (grd as TDBGrid).SelectedRows.Count
  else
    SelectedRowsCount := (grd as TCedarDbgrid).SelectedRows.Count;

  if SelectedRowsCount > 0 then
    if get_response
      ('آيا براي پاكسازي سند حسابداري فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  if grd is TDBGrid then
    s := GetSelectedRowsDBGrid((grd as TDBGrid), 'ID')
    // ReciptID
  else
    s := GetSelectedRowsDBGrid((grd as TCedarDbgrid), 'ID');
  // ReciptID

  If s = '' then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Recipts SET DocNo = 0,DocDate = '''' WHERE ID IN ('
      + s + ')';
    // SQL.Add(' AND  ServerID=' + qry.FieldByName('ServerID').AsString);
    // SQL.Add(' AND  YearID  =' + qry.FieldByName('YearID').AsString);
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ پاكسازي شد.', 2);
      SQL.Text := 'DELETE FROM ReciptsDoc WHERE Recipt_ID IN (' + s + ')';
      BigMessage(IntToStr(ExecSQL) + 'سریال های هم فرم‌ پاكسازي شد.', 2);
      Active := False;
      if qry is TFDQuery then
        TFDQuery(qry).Refresh
      else
        TADOQuery(qry).Requery;
      qry.Locate('ReciptID;ServerID;YearID',
        VarArrayOf([ReciptID, ServerID, YearID]), []);
    except
      Warn('اشكال در پاكسازي كردن فرم‌');
    end;
    // try
  end; // with
end;

procedure AccSpeedButtonCTopicCode3(ds: TDataSet;
  acc_CTopicCode3: String = 'acc_CTopicCode3';
  acc_CTopicCode: String = 'acc_CTopicCode'; filte: boolean = True;
  acc_TopicCode: String = 'acc_TopicCode';
  acc_CTopicCode2: String = 'acc_CTopicCode2');
var
  c, txt, s: String;
begin
  opt.Acc_CtoipcRelatedKind :=
    StrToInt(ReadAcc_BankConfig('CtoipcRelatedKind', '0'));
  case opt.Acc_CtoipcRelatedKind of
    0:
      begin
        txt := 'SELECT DISTINCT acc.CTopicCode3.CTopicCode3, acc.CTopicCode3.CTopicName3_L1, '
          + 'acc.CTopicCode3.CTopicName3_L2 FROM acc.CTopicCode3 INNER JOIN ' +
          'acc.CTopics2And3 ON acc.CTopicCode3.CTopicCode3 = acc.CTopics2And3.CTopicCode3 ';
        if (filte) and (Trim(ds.FieldByName(acc_CTopicCode).AsString) <> '0')
        then
          txt := txt + 'WHERE acc.CTopics2And3.CTopicCode2 = ' +
            ds.FieldByName(acc_CTopicCode2).AsInteger.ToString;
      end;
    1:
      begin
        txt := 'SELECT DISTINCT acc.CTopicCode3.CTopicCode3, acc.CTopicCode3.CTopicName3_L1,'
          + ' acc.CTopicCode3.CTopicName3_L2 FROM acc.CTopicCode3 INNER JOIN' +
          ' acc.CenterTopicAllRange ON acc.CTopicCode3.CTopicCode3 = acc.CenterTopicAllRange.CTopicCode3';
        if (filte) and (Trim(ds.FieldByName(acc_TopicCode).AsString) <> '0')
        then
          txt := txt + ' WHERE acc.CenterTopicAllRange.TopicCode = ' +
            ds.FieldByName(acc_TopicCode).AsInteger.ToString;
      end;
  end;

  if optA.AccOldAvailable then
    txt := DMf.qryACCTopicCode.SQL.Text;
  s := searchCode_ADOF.SearchCode(DMf.qryACCTopicCode.Connection, c,
    'مراكز هزينه', txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    ds.FieldByName(acc_CTopicCode3).AsString := c;
  end;
  // if
end;

procedure AccSpeedButtonCTopicCode2(ds: TDataSet;
  acc_CTopicCode2: String = 'acc_CTopicCode2';
  acc_CTopicCode: String = 'acc_CTopicCode'; filte: boolean = True;
  acc_TopicCode: String = 'acc_TopicCode');
var
  c, txt, s: String;
begin
  opt.Acc_CtoipcRelatedKind :=
    StrToInt(ReadAcc_BankConfig('CtoipcRelatedKind', '0'));
  case opt.Acc_CtoipcRelatedKind of
    0:
      begin
        txt := 'SELECT DISTINCT  acc.CenterTopics2.CTopicCode2, acc.CenterTopics2.CTopicName2_L1, '
          + 'acc.CenterTopics2.CTopicName2_L2 FROM acc.CenterTopics2 INNER JOIN '
          + 'acc.CTopicRangeTogether ON acc.CenterTopics2.CTopicCode2 = acc.CTopicRangeTogether.CTopicCode2 ';
        if (filte) and (Trim(ds.FieldByName(acc_CTopicCode).AsString) <> '0')
        then
          txt := txt + ' WHERE acc.CTopicRangeTogether.CTopicCode= ' +
            ds.FieldByName(acc_CTopicCode).AsInteger.ToString;
      end;
    1:
      begin
        txt := 'SELECT DISTINCT acc.CenterTopics2.CTopicCode2, acc.CenterTopics2.CTopicName2_L1,'
          + ' acc.CenterTopics2.CTopicName2_L2 FROM acc.CenterTopics2 INNER JOIN'
          + ' acc.CenterTopicAllRange ON acc.CenterTopics2.CTopicCode2 = acc.CenterTopicAllRange.CTopicCode2';
        if (filte) and (Trim(ds.FieldByName(acc_TopicCode).AsString) <> '0')
        then
          txt := txt + ' WHERE acc.CenterTopicAllRange.TopicCode=' +
            ds.FieldByName(acc_TopicCode).AsInteger.ToString;

      end;
  end;
  if optA.AccOldAvailable then
    txt := DMf.qryAccCenterTopics.SQL.Text;
  s := searchCode_ADOF.SearchCode(DMf.qryACCTopicCode.Connection, c,
    'مراكز هزينه', txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    ds.FieldByName(acc_CTopicCode2).AsString := c;
  end;
  // if
end;

procedure AccSpeedButtonCTopicCode(ds: TDataSet;
  acc_CTopicCode: String = 'acc_CTopicCode';
  acc_TopicCode: String = 'acc_TopicCode'; filte: boolean = True);
var
  c, txt, s: String;
begin

  txt := 'SELECT DISTINCT  acc.CenterTopics.CTopicCode, acc.CenterTopics.CTopicName_L1, '
    + 'acc.CenterTopics.CTopicName_L2 FROM  acc.CenterTopics INNER JOIN ' +
    'acc.CenterTopicRange ON acc.CenterTopics.CTopicCode = acc.CenterTopicRange.CTopicCode ';
  if (filte) and (Trim(ds.FieldByName(acc_TopicCode).AsString) <> '0') then
    txt := txt + ' WHERE     acc.CenterTopicRange.TopicCode =' +
      ds.FieldByName(acc_TopicCode).AsInteger.ToString;
  // IntToStr(ds.FieldByName(acc_TopicCode).AsInteger);
  if optA.AccOldAvailable then
    txt := DMf.qryAccCenterTopics.SQL.Text;
  s := searchCode_ADOF.SearchCode(DMf.qryACCTopicCode.Connection, c,
    'مراكز هزينه', txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    ds.FieldByName(acc_CTopicCode).AsString := c;
  end;
  // if

end;

procedure AccSpeedButtonDetailCode(ds: TDataSet;
  acc_DetailCode: string = 'acc_DetailCode';
  acc_TopicCode: String = 'acc_TopicCode'; filte: boolean = True);
var
  c, txt, s: String;
begin
  txt := 'SELECT DISTINCT  acc.Details.DetailCode, acc.Details.DetailName_L1, '
    + 'acc.Details.DetailName_L2 FROM  acc.DetailRange  RIGHT OUTER JOIN ' +
    'acc.Details ON acc.DetailRange.DetailCode = acc.Details.DetailCode ';
  if (filte) and (Trim(ds.FieldByName(acc_TopicCode).AsString) <> '0') then
    txt := txt + ' WHERE  acc.DetailRange.TopicCode=' +
      ds.FieldByName(acc_TopicCode).AsInteger.ToString;
  // IntToStr(ds.FieldByName(acc_TopicCode).AsLargeInt);
  if optA.AccOldAvailable then
    txt := 'SELECT distinct Details.DetailCode, Details.Desc ' +
      'FROM DetailRange INNER JOIN Details ON DetailRange.DetailCode = Details.DetailCode ';
  s := searchCode_ADOF.SearchCode(DMf.qryACCTopicCode.Connection, c,
    'حسابهاي تفصيلي', txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    // if not (ds.State in dseditmodes) then ds.edit;
    ds.FieldByName(acc_DetailCode).AsString := c;
    // Result:=c;
  end; // if
end;

procedure AccSpeedButtonBankNationalID(ds: TDataSet);
var
  c, txt, s: String;
begin
  txt := 'SELECT BankNationalID, BankName FROM BankNationals';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'شناسه ملی بانک', txt,
    ['کد', 'نام '], alLeft);
  if s <> '' then
  begin
    ds.FieldByName('BankNationalID').AsString := c;
  end;
  // if
end;

procedure AccSpeedButtonTopicCode(ds: TDataSet;
  acc_TopicCode: String = 'acc_TopicCode');
var
  c, txt, s: String;
begin
  txt := 'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 ,acc.Categories.MoeenName_L2 FROM acc.Categories LEFT OUTER JOIN '
    + 'acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
    + 'WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL)';
  if optA.AccOldAvailable then
    txt := DMf.qryACCTopicCode.SQL.Text;
  s := searchCode_ADOF.SearchCode(DMf.qryACCTopicCode.Connection, c,
    'حسابهاي معین', txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    if not(ds.State in dsEditModes) then
      ds.Edit;
    ds.FieldByName(acc_TopicCode).AsString := c;
  end;
  // if
end;

procedure AccSpeedButtonReciptItemsDetails;
var
  txt: String;
  results: array [0 .. 3] of String;
begin
  txt := 'SELECT D.DetailCaption, Ri.StuffCode, S.c_StuffName, T.ReciptCaption ,R.ReciptNumber'
    + ' FROM ReciptItemsDetails AS D INNER JOIN' +
    ' ReciptItems AS Ri ON D.ReciptItemID = Ri.ReciptItemID AND D.ReciptID = Ri.ReciptID AND D.ServerID ='
    + ' Ri.ServerID AND D.YearID = Ri.YearID INNER JOIN' +
    ' StuffCoding AS S ON Ri.StuffCode = S.c_StuffCode INNER JOIN' +
    ' ReciptTypes1 AS T ON D.ReciptType = T.ReciptType INNER JOIN' +
    ' Recipts AS R ON Ri.ReciptID = R.ReciptID AND Ri.ServerID = Ri.ServerID AND Ri.YearID = R.YearID';
  // b :=
  searchCode_ADOF.SearchCode2(DMf.adcBSell, ' موارد ثبت شده  ', txt,
    ['مشخصات', 'کد کالا', ' کالا', 'محل ثبت', 'شماره فرم'], results,
    [150, 100, 250, 100, 80], alLeft);
end;

procedure AccSpeedButtonBudgetCode(ds: TDataSet; BudgetCode: String);
var
  txt: String;
  results: array [0 .. 1] of String;
begin
  txt := 'SELECT acc.BudgetTopics.BudgetTopicID, acc.BudgetTopics.BudgetCaption_L1 FROM acc.BudgetTopics '
    + 'LEFT OUTER JOIN acc.BudgetTopicsForUse ON acc.BudgetTopics.BudgetTopicID = acc.BudgetTopicsForUse.PrvBudgetTopicID '
    + 'WHERE (acc.BudgetTopicsForUse.PrvBudgetTopicID IS NULL)';
  if searchCode_ADOF.SearchCode2(DMf.adcAccounting, ' بودجه ها  ', txt,
    ['كد', 'نام بودجه'], results, [100, 200], alLeft) then
    ds.FieldByName(BudgetCode).AsString := results[0];
end;

procedure AccSpeedButtonProjectsCode(ds: TDataSet;
  ProjectID, BudgetCode: String; filte: boolean = True);
var
  results: array [0 .. 1] of String;
  txt: String;
  b: boolean;
begin
  txt := 'SELECT acc.Projects.ProjectID , acc.Projects.ProjectCaption_L1 FROM acc.ProjectsRange INNER JOIN '
    + 'acc.Projects ON acc.ProjectsRange.ProjectID=acc.Projects.ProjectID ';
  if (filte) and (Trim(ds.FieldByName(BudgetCode).AsString) <> '0') then
    txt := txt + ' WHERE acc.ProjectsRange.BudgetTopicID=' +
      IfThen(ds.FieldByName(BudgetCode).AsString = '', '0',
      ds.FieldByName(BudgetCode).AsString);
  b := searchCode_ADOF.SearchCode2(DMf.adcAccounting, ' طرح ها  ', txt,
    ['كد', 'نام طرح'], results, [50, 100], alLeft);
  if b then
    ds.FieldByName(ProjectID).AsString := results[0];
end;

procedure SpeedButtonStuffCoding(ds: TDataSet; StuffCode, GroupType: String;

  var StuffName: string);
var
  txt: String;
  b: boolean;
  results: array [0 .. 1] of String;
begin
  txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName' +
    ' FROM StuffCoding INNER JOIN' +
    ' StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID' +
    ' WHERE (StuffGroups.GroupType IN (' + GroupType + '))';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'كالاها', txt,
    ['کد', 'شرح كالا'], results, [50, 150], alLeft);
  if b then
  begin
    ds.FieldByName(StuffCode).AsString := results[0];
    StuffName := results[1];
  end;
end;

function SpeedButtonCustomers(CustIDFld: TField; var CustID: string;
  var CustName: string): Integer;
var
  txt: String;
  b: boolean;
  results: array [0 .. 1] of String;
begin
  Result := 0;
  txt := 'SELECT CustID,CustName FROM Customers WHERE (CustID <> 0)';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشتريان', txt,
    ['کد', 'مشتري'], results, [50, 150], alLeft);
  if b then
  begin
    if CustIDFld <> nil then
      CustIDFld.AsString := results[0];
    CustID := results[0];
    CustName := results[1];
    Result := results[0].ToInteger;
  end;
end;

procedure SpeedButtonCustomersGroupTypes(CustID: TField; GroupTypes: String);
var
  txt: String;
  b: boolean;
  results: array [0 .. 1] of String;
begin
  txt := 'SELECT Customers.CustID, Customers.CustName FROM Customers ' +
    'INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + 'WHERE CustomersGroup.GroupType in(' + GroupTypes + ') ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشتريان', txt,
    ['کد', 'مشتري'], results, [50, 150], alLeft);
  if b then
    CustID.AsString := results[0];
end;

procedure SpeedButtonUseUnits(ds: TDataSet; Cap_tion: String);
var
  c, txt, s: String;
begin
  // txt := 'SELECT UseUnits.UseUnitID,UseUnits.UseUnitName ' +
  // ' +CASE WHEN Customers_1.CustName<>''0'' THEN ''>'' + Customers_1.CustName ELSE '''' END '
  // + ' +CASE WHEN Customers_2.CustName<>''0'' THEN ''>'' + Customers_2.CustName ELSE '''' END AS UseUnitName'
  // + ' FROM UseUnits LEFT OUTER JOIN' +
  // ' Customers AS Customers_2 ON UseUnits.CustID2 = Customers_2.CustID LEFT OUTER JOIN'
  // + ' Customers AS Customers_1 ON UseUnits.CustID1 = Customers_1.CustID' +
  // ' WHERE (UseUnits.UseActive = 0)';
  txt := 'SELECT UseUnitID,UseUnitName FROM Vu_UseUnitName ';

  if opt.UseUnitsYearID then
    txt := txt + ' WHERE (YearID = ' + IntToStr(APPBank.Year) + ')';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, Cap_tion + 'ها', txt,
    ['کد', 'نام ' + Cap_tion], alLeft);
  if s <> '' then
  begin
    // if not (qryRecipts.state in dsEditModes) then  qryRecipts.edit;
    ds.FieldByName('UseUnitID').AsString := c;
  end; // if
end;

procedure SpeedButtonUseOthers(ds: TDataSet; Cap_tion: String);
var
  c, txt, s: String;
begin
  txt := 'SELECT UseOtherID, UseOtherName,HealthNumber FROM UseOthers ' +
    'WHERE (ExpirationDate IS NULL)OR(LTRIM(ExpirationDate) = '''') ';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'سايرمحل مصرف', txt,
    ['کد', 'نام ' + Cap_tion, 'شماره پرونده'], alLeft);
  if s <> '' then
  begin
    // if not (qryRecipts.state in dsEditModes) then  qryRecipts.edit;
    ds['UseOtherID'] := c;
  end; // if
end;

function GetCustomersGroupTypeSQL(FName: string; qryinit: TADOQuery;
  ADDCustIDParam: boolean = False; UseCustomerID: boolean = False): string;
var
  s: string;
begin
  s := Trim(qryinit.FieldByName(FName).AsString);
  if s = EmptyStr then
    s := '-1';

  Result := ' LEFT OUTER JOIN CustomersGroup AS CustomersGroup_2 ON ' +
    ' Vu_CustomersGroups.CustomerGrpID2 = CustomersGroup_2.CustomerGrpID ' +

  /// add new2
  ///
    IfThen(UseCustomerID,
    ' INNER JOIN dbo.Fn_UseCustomerID( :FormID , :ServerID ' +
    ' ,	:YearID , :FormType , :UserID) AS Fn_UseCustomerID_1 ON Vu_CustomersGroups.CustID = Fn_UseCustomerID_1.FCustID ',
    '') +
  /// add new2

    ' WHERE (Vu_CustomersGroups.GroupType IN(' + s + ')' +
    '  OR CustomersGroup_2.GroupType IN(' + s + '))';

  Result := Result + IfThen(ADDCustIDParam, 'AND(CustID = :CustID)', '');
  if opt.ChkUsersCustomersGroupsActive then
    if UpperCase(FName) = UpperCase('CustomerKind1') then
      Result := Result +
        Format('AND (dbo.ChkUsersCustomersGroups( %d , %d , CustID ) = 1)',
        [IfThen(User.PowerUser, 1, 0), User.ID]);

  /// add new

  if FName = 'CustomerKind1' then
    Result := Result +
      IfThen(UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive')
      .AsInteger, UserRelationWithcustomer1), ' AND dbo.ChkUser(OperatorID,' +
      IntToStr(User.ID) + ')=1', '');

  if FName = 'CustomerKind2' then
    Result := Result +
      IfThen(UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive')
      .AsInteger, UserRelationWithcustomer2), ' AND dbo.ChkUser(OperatorID,' +
      IntToStr(User.ID) + ')=1', '');

  if FName = 'CustomerKind3' then
    Result := Result +
      IfThen(UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive')
      .AsInteger, UserRelationWithcustomer3), ' AND dbo.ChkUser(OperatorID,' +
      IntToStr(User.ID) + ')=1', '');

end;

procedure SpeedButtonCustomerGrpID(ds: TDataSet);
var
  c, txt, s: String;
begin
  txt := 'SELECT DISTINCT CustomerGroupID, CustomerGrpName FROM Vu_CustomersGroups ';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'گروههاي مشتريان', txt,
    ['کد', 'نام '], alLeft);
  if s <> '' then
    ds.FieldByName('CustomerGrpID2').AsString := c;
end;

procedure SpeedButtonProductModel(ds: TDataSet);
var
  c, txt, s: String;
begin
  txt := 'SELECT LookUpID,Name FROM  LookUps WHERE (Kind = 15) ';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'مدلها', txt,
    ['کد', 'نام مدل'], alLeft);
  if s <> '' then
  begin
    // if not (qryItems.state in dsEditModes) then   qryItems.edit;
    ds.FieldByName('ProductModel').AsString := c;
  end; // if

end;

procedure SpeedButtonProductModelEntity(ds: TDataSet; filterSQL: string);
var
  c, txt, s: String;
begin
  txt := 'SELECT R_S.ProductModel, LookUps.Name,' +
    ' ROUND(SUM(R_S.InputEntity - R_S.OutputEntity), 3) AS SUMEntity' +
    ' FROM ReciptItems_Stock AS R_S LEFT OUTER JOIN' +
    ' LookUps ON R_S.ProductModel = LookUps.LookUpID' +
    ' WHERE (LookUps.Kind = 15) ' + filterSQL +
    ' GROUP BY R_S.ProductModel, LookUps.Name';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'مدلها', txt,
    ['کد', 'نام مدل', 'موجودی'], alLeft);
  if s <> '' then
  begin
    ds.FieldByName('ProductModel').AsString := c;
  end;
end;

procedure SpeedButtonPersonID1DEntity(ds: TDataSet; filterSQL: string);
var
  c, txt, s: String;
begin
  txt := 'SELECT R_S.PersonID1D, Customers.CustName,' +
    ' ROUND(SUM(R_S.InputEntity - R_S.OutputEntity), 3) AS SUMEntity' +
    ' FROM ReciptItems_Stock AS R_S LEFT OUTER JOIN' +
    ' Vu_CustomersGroups Customers ON R_S.PersonID1D = Customers.CustID' +
    ' WHERE (1 = 1) ' + filterSQL +
    ' GROUP BY R_S.PersonID1D, Customers.CustName';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'مالک', txt,
    ['کد', 'نام مالک', 'موجودی'], alLeft);
  if s <> '' then
  begin
    ds.FieldByName('PersonID1').AsString := c;
  end;
end;

procedure SpeedButtonProductCode(ds: TDataSet; qryinit: TADOQuery);
var
  txt: String;
  b: boolean;
  results: array [0 .. 2] of String;
begin
  txt := Trim(qryinit.FieldByName('ProcedureKindList').AsString);
  if txt = EmptyStr then
    txt := '0';
  txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo'
    + ' FROM StuffCoding INNER JOIN' +
    ' StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID' +
    ' WHERE (StuffGroups.GroupType IN (' + txt + '))';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' محصولات  ', txt,
    ['کد', 'نام محصول', 'مشخصات فني'], results, [50, 150, 100], alLeft);
  if b then
  begin
    ds.FieldByName('ProductCode').AsString := results[0];
  end;
end;

procedure SpeedButtonTransFormID(ds: TDataSet; qryinit: TADOQuery);
var
  txt: String;
  b: boolean;
  results: array [0 .. 3] of String;
begin
  // txt := 'SELECT TransFormID,TransFormNo,TransFormDate,Note FROM TransForms ' +
  // 'WHERE (StuffCode = %d) AND (TransFormState = 0)';

  txt := 'SELECT DISTINCT TransForms.TransFormID, TransForms.TransFormNo, TransForms.TransFormDate, TransForms.Note'
    + ' FROM TransForms INNER JOIN' +
    ' TransFormItems ON TransForms.TransFormID = TransFormItems.TransFormID' +
    ' WHERE (TransForms.StuffCode = %d) AND (TransForms.TransFormState = 0)';

  txt := Format(txt, [ds.FieldByName('StuffCode').AsLargeInt]);
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'ضرايب تبديل', txt,
    ['شناسه', 'شماره فرم', 'تاريخ', 'توضيحات'], results,
    [50, 100, 80, 100], alLeft);
  if b then
  begin
    ds.FieldByName('TransFormID').AsString := results[0];
  end;
end;

{ TPerson3ActiveAdd }

function TPerson3ActiveAdd.load(qry: TDataSet; DBGrid: TDBGrid): string;
var
  sqll: string;
begin
  with DMf.qryTmpTmp do
  begin
    DMf.qryTmpTmp.Active := False;
    SQL.Text := 'SELECT Person3Active, Person3Caption,CustomerKind3';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (ReciptType  = 1)');
    DMf.qryTmpTmp.Active := True;
    FPerson3Active := FieldByName('Person3Active').AsInteger = 1;
    FPerson3Caption := FieldByName('Person3Caption').AsString;
    FCustomerKind3 := Trim(FieldByName('CustomerKind3').AsString);
    if (qry <> nil) then
      if FPerson3Active then
      begin
        if not qry.Active then
        begin
          if qry is TADOQuery then
            sqll := TADOQuery(qry).SQL.Text
          else
            sqll := TFDQuery(qry).SQL.Text;

          Result := StringReplace(sqll, ':Person3ActiveF',
            ', R.PersonID3, Customers3.CustName AS CustName3', [rfReplaceAll]);
          Result := StringReplace(Result, ':Person3ActiveG',
            ', R.PersonID3, Customers3.CustName', [rfReplaceAll]);

          if qry is TADOQuery then
            TADOQuery(qry).SQL.Text := Result
          else
            TFDQuery(qry).SQL.Text := Result;

        end;

        if (qry.FieldCount > 0) and (qry.FindField('PersonID3') = nil) then
          with TIntegerField.Create(qry) do
          begin
            FieldName := 'PersonID3';
            Dataset := qry;
            Name := qry.Name + FieldName;
            DisplayLabel := 'كد ' + FieldByName('Person3Caption').AsString;
            qry.FieldDefs.Add(Name, ftString, 0, True);
            if DBGrid <> nil then
              With DBGrid.Columns.Add do
              begin
                FieldName := 'PersonID3';
                Index := 4;
              end;
          end;
        if (qry.FindField('PersonID3') <> nil) then
          qry.FieldByName('PersonID3').DisplayLabel := 'كد ' +
            FieldByName('Person3Caption').AsString;

        if (qry.FieldCount > 0) and (qry.FindField('CustName3') = nil) then
          with TStringField.Create(qry) do
          begin
            FieldName := 'CustName3';
            Dataset := qry;
            Name := qry.Name + FieldName;
            DisplayLabel := 'نام ' + FieldByName('Person3Caption').AsString;
            Size := 100;
            qry.FieldDefs.Add(Name, ftString, 100, True);
            if DBGrid <> nil then
              With DBGrid.Columns.Add do
              begin
                FieldName := 'CustName3';
                Index := 5;
              end;
          end;
        if (qry.FindField('CustName3') <> nil) then
          qry.FieldByName('CustName3').DisplayLabel := 'نام ' +
            FieldByName('Person3Caption').AsString;

      end
      else
      begin
        if not qry.Active then
        begin
          if qry is TADOQuery then
            sqll := TADOQuery(qry).SQL.Text
          else
            sqll := TFDQuery(qry).SQL.Text;

          Result := StringReplace(sqll, ':Person3ActiveF', '', [rfReplaceAll]);
          Result := StringReplace(Result, ':Person3ActiveG', '',
            [rfReplaceAll]);

          if qry is TADOQuery then
            TADOQuery(qry).SQL.Text := Result
          else
            TFDQuery(qry).SQL.Text := Result;
        end;

      end;
    DMf.qryTmpTmp.Active := False;
  end;
end;

procedure WorkFlowSave(qryForm: TADOQuery; kind: Integer; KeyField: TField;
  formType: Integer);
var
  qry: TADOQuery;
begin
  if not opt.WorkFlowActive then
    Exit;
  qry := TADOQuery.Create(DMf);
  with qry do
  begin
    Connection := qryForm.Connection;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM WF_TransWorkFlow');
    SQL.Add(Format('WHERE (ServerID = %d) AND (YearID = %d) AND (FormID = %d)',
      [qryForm.FieldByName('ServerID').AsInteger, qryForm.FieldByName('YearID')
      .AsInteger, KeyField.AsInteger]));
    Active := True;
    if IsEmpty then
    begin
      Insert;
      FieldByName('kind').AsInteger := kind;
      FieldByName('ServerID').AsInteger := qryForm.FieldByName('ServerID')
        .AsInteger;
      FieldByName('YearID').AsInteger := qryForm.FieldByName('YearID')
        .AsInteger;
      FieldByName('FormID').AsInteger := KeyField.AsInteger;
      FieldByName('FormType').AsInteger := formType;
      FieldByName('ModifyDate').AsDateTime := now;
      FieldByName('UserID').AsInteger := User.ID;
      FieldByName('PositionCode').AsInteger := User.PositionCode;
      FieldByName('SortAccept').AsInteger := 1;
      FieldByName('State').AsInteger := 0;
      Post;
    end;
  end;
  qry.Free;
end;

function IsFlowFroms(kind, formType: Integer): boolean;
begin
  Result := False;
  if not opt.WorkFlowActive then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM WF_FlowFroms';
    SQL.Add('WHERE (Kind =:Kind) AND (FormTypeNum =:FormType)');
    Parameters.ParamByName('Kind').Value := kind;
    Parameters.ParamByName('formType').Value := formType;
    Active := True;
    Result := Fields[0].AsInteger > 0;
    Active := False;
  end;
end;

procedure EditBeforDeleteRecallType16(qryinit, qryRecipts, qryItems: TADOQuery;
  IsqryItemsDelete: boolean);
var
  qry: TADOQuery;
begin
  // 16_فراخواني ويژه عمومي _ تغيير نوع اطلاعات فرمهاي قبل درصورت ويرايش یا حذف فرم
  if (qryinit.FieldByName('RecallType').AsInteger <> 16) then
    Exit;
  qryRecipts.Edit;
  qry := TADOQuery.Create(DMf);
  with qry do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT LookUps.Code, ReciptItems.SecondTypeItem';
      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('LookUps ON ReciptItems.SecondTypeItem = LookUps.LookUpID');
      SQL.Add('WHERE (ReciptItems.ReciptID = :ReciptID )');
      SQL.Add('AND (ReciptItems.ServerID = :ServerID )');
      SQL.Add('AND (ReciptItems.YearID = :YearID )');
      Parameters.ParamByName('ReciptID').Value :=
        qryRecipts.FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryRecipts.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
        .AsInteger;
      if IsqryItemsDelete then
      begin
        SQL.Add('AND (ReciptItems.ReciptItemID = :ReciptItemID )');
        Parameters.ParamByName('ReciptItemID').Value :=
          qryItems.FieldByName('ReciptItemID').AsInteger;
        Active := True;
        qryItems.Edit;
        qryItems.FieldByName('SecondTypeItem').AsInteger := FieldByName('Code')
          .AsInteger;
        qryItems.Post;
      end
      else
      begin
        Active := True;
        qryItems.First;
        while not qryItems.Eof do
        begin
          qryItems.Edit;
          qryItems.FieldByName('SecondTypeItem').AsInteger :=
            FieldByName('Code').AsInteger;
          qryItems.Post;
          qryItems.Next;
        end;
      end;
    finally
      Free;
    end;
end;

procedure WorkFlowBeforDelete(qryForm: TDataSet);
begin
  Exit;
  // IsFlowFroms
  if opt.WorkFlowActive then
  begin
    Warn2('جلوگیری از حذف در گردش فرم ها');
    Abort;
    Exit;
    // opt.WF_ServerID := qryForm.FieldByName('ServerID').AsInteger;
    // opt.WF_YearID := qryForm.FieldByName('YearID').AsInteger;
    // if qryForm.FindField('FormID') <> nil then
    // opt.WF_FormID := qryForm.FieldByName('FormID').AsInteger
    // else
    // opt.WF_FormID := qryForm.FieldByName('ReciptID').AsInteger
  end;

end;

procedure WorkFlowAfterDelete(qryForm: TADOQuery);
// var
// qry: TADOQuery;
// kind: Integer;
begin
  // if not opt.WorkFlowActive then
  // Exit;
  // if qryForm.FindField('FormID') <> nil then
  // kind := 1
  // else
  // kind := 2;
  // qry := TADOQuery.Create(nil);
  // with qry do
  // begin
  // Connection := theMainConnection;
  // SQL.Text := 'DELETE  FROM WF_TransWorkFlow ';
  // SQL.Add('WHERE(ServerID = %d)AND(YearID = %d)AND(FormID = %d)AND(kind = %d)');
  // SQL.Text := Format(SQL.Text, [opt.WF_ServerID, opt.WF_YearID,
  // opt.WF_FormID, kind]);
  // ExecSQL;
  // end;
  // qry.Free;
end;

procedure RequiredCustomers(qryRequiredCustomers, qryinit: TADOQuery);
begin
  if qryinit = nil then
    with qryRequiredCustomers do
    begin
      FieldByName('Address').Required :=
        ((opt.RequiredCustomers and Integer(RcChkAddress)) <> 0);
      FieldByName('Tel').Required :=
        ((opt.RequiredCustomers and Integer(RcChkTel)) <> 0);
      FieldByName('EconomicNumber').Required :=
        ((opt.RequiredCustomers and Integer(RcChkEconomicNumber)) <> 0);
      FieldByName('NationalID').Required :=
        ((opt.RequiredCustomers and Integer(RcChkNationalID)) <> 0);
      FieldByName('PostalCode').Required :=
        ((opt.RequiredCustomers and Integer(RcChkPostalCode)) <> 0);
      FieldByName('Mobile').Required :=
        ((opt.RequiredCustomers and Integer(RcChkMobile)) <> 0);
      FieldByName('RegisterNumber').Required :=
        ((opt.RequiredCustomers and Integer(RcChkRegisterNumber)) <> 0);

      if FindField('ManageName') <> nil then
        FieldByName('ManageName').Required :=
          ((opt.RequiredCustomers and Integer(RcManageName)) <> 0);

      if FindField('Fax') <> nil then
        FieldByName('Fax').Required :=
          ((opt.RequiredCustomers and Integer(RcFax)) <> 0);

      if FindField('Tel2') <> nil then
        FieldByName('Tel2').Required :=
          ((opt.RequiredCustomers and Integer(RcTel2)) <> 0);

      if FindField('HCKharidarTypeCode') <> nil then
        FieldByName('HCKharidarTypeCode').Required :=
          ((opt.RequiredCustomers and Integer(RcHCKharidarTypeCode)) <> 0);

      if FindField('SellsMethod') <> nil then
        FieldByName('SellsMethod').Required :=
          ((opt.RequiredCustomers and Integer(RcSellsMethod)) <> 0);

      if FindField('SellsEmporium') <> nil then
        FieldByName('SellsEmporium').Required :=
          ((opt.RequiredCustomers and Integer(RcSellsEmporium)) <> 0);

      if FindField('Ostan') <> nil then
        FieldByName('Ostan').Required :=
          ((opt.RequiredCustomers and Integer(RcOstan)) <> 0);

      if FindField('_Ostan') <> nil then
        FieldByName('_Ostan').Required :=
          ((opt.RequiredCustomers and Integer(RcOstan)) <> 0);
    end
  else if (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
    Integer(CHkRequiredCustomers) <> 0) then
    with qryRequiredCustomers do
    begin
      FieldByName('_PersonTel').Required := True;
      FieldByName('_PersonAddress').Required := True;
      FieldByName('_PersonPostalCode').Required := True;
      FieldByName('_PersonEconomicNumber').Required := True;
      FieldByName('_PersonRegisterNumber').Required := True;
      FieldByName('_NationalID').Required := True;
      FieldByName('_Mobile').Required := True;

      FieldByName('_PersonTel').DisplayLabel := 'تلفن مشتری';
      FieldByName('_PersonAddress').DisplayLabel := 'آدرس مشتری';
      FieldByName('_PersonPostalCode').DisplayLabel := 'کدپستی مشتری';
      FieldByName('_PersonEconomicNumber').DisplayLabel :=
        'شماره اقتصادی مشتری';
      FieldByName('_PersonRegisterNumber').DisplayLabel := 'شماره ثبت مشتری';
      FieldByName('_NationalID').DisplayLabel := 'کدملی مشتری';
      FieldByName('_Mobile').DisplayLabel := 'همراه مشتری';

    end

end;

procedure SetShiftFunctions(qry: TADOQuery);
var
  s: string;
begin
  // ساعت کارکرد 07:00 تا 15:00 صبح کار
  // ساعت کارکرد15:00 تا 23:00 عصر کار
  // ساعت کارکرد 23:00 تا 07:00 شب کار
  s := formatdatetime('HH:mm', qry.FieldByName('StartHour').AsDateTime);
  if (s > '03:00') and (s < '11:00') then
    qry.FieldByName('Shift').AsInteger := 0;
  if (s > '11:00') and (s < '19:00') then
    qry.FieldByName('Shift').AsInteger := 1;
  if (s > '19:00') or (s < '03:00') then
    qry.FieldByName('Shift').AsInteger := 2;
end;

function AfterDividendIsNotEditable: boolean;
begin
  Result := True;
  if not opt.ActiveLoan then
    Exit;
  { TODO -oOwner -cCategory : AfterDividendIsNotEditable }
end;

function OkDeleteEditCheck(qryDetail_Item: TADOQuery): boolean;
var
  i: Byte;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT preFormItemID FROM FormItems ' +
      'WHERE  preFormItemID =' + qryDetail_Item.FieldByName('FormItemID')
      .AsString + 'AND (YearID = ' + IntToStr(APPBank.Year) + ') ' +
      ' AND (ServerID = ' + IntToStr(opt.ServerID) + ') ';
    Active := True;
    Result := IsEmpty;
    if not Result then
    begin
      Warn('از اين سطر در فرم‏هاي ديگر استفاده شده است و قابل حذف/ويرايش نيست.‏');
      with qryDetail_Item do
      begin
        for i := 0 to Fields.Count - 1 do
          Fields[i].ReadOnly := True;
        FieldByName('CustomerID2').ReadOnly := False;
        FieldByName('LastUser').ReadOnly := False;
        FieldByName('TopicCode').ReadOnly := False;
        FieldByName('DetailCode').ReadOnly := False;
        FieldByName('CTopicCode').ReadOnly := False;
        FieldByName('CTopicCode2').ReadOnly := False;
        FieldByName('CTopicCode3').ReadOnly := False;
      end; // with
    end;
    Active := False;
  end; // with
end;

procedure CheckItems(qryDetail_Item: TADOQuery);
begin
  With qryDetail_Item do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if not OkDeleteEditCheck(qryDetail_Item) then
        Abort;
      Next;
    end; // while
    EnableControls;
  end;

end;

function ADDKeyID(qry: TDataSet): string;
begin
  Result := qry.FieldByName('YearID').AsString + '_' +
    qry.FieldByName('ServerID').AsString + '_';
end;

function GetDetailKeyID(qryMaster_Forms: TADOQuery; FormItemID: String): string;
begin
  Result := ADDKeyID(qryMaster_Forms) + qryMaster_Forms.FieldByName('FormID')
    .AsString + '_' + FormItemID
end;

procedure ActiveSellPrice2Dbgrid(Grid: TCustomControl);
var
  cl: TCollectionItem;
  clmns: TCollection;
  // fldName: string;
begin
  if Grid is TDBGrideh then
    clmns := TDBGrideh(Grid).Columns
  else
    clmns := TDBGrid(Grid).Columns;
  for cl in clmns do
    if Pos(LowerCase('TotallSellPrice'), LowerCase(cl.displayname)) > 0 then
    begin
      if cl is TColumn then
        (cl as TColumn).Visible := opt.ActiveSellPrice2
      else
        (cl as TColumnEh).Visible := opt.ActiveSellPrice2
    end;
end;

{ TpopViewFile }

procedure TpopViewFile.Click;
begin
  inherited;
  ViewFileOnServerF.Enter(FileName, 'GetCheckF', True)
end;

function ChkFlowForms(qry: TADOQuery): boolean;
var
  kind, FormTypeNum, ServerID, YearID, FormID
  // , SortAccept,  UserSortAccept
    : Integer;
begin
  Result := False;
  if opt.WorkFlowActive then
  begin
    if qry.FindField('FormID') <> nil then
    begin
      FormID := qry.FieldByName('FormID').AsInteger;
      kind := 1;
      FormTypeNum := qry.FieldByName('FormType').AsInteger;
    end
    else
    begin
      FormID := qry.FieldByName('ReciptID').AsInteger;
      kind := 2;
      FormTypeNum := qry.FieldByName('ReciptType').AsInteger;
    end;
    ServerID := qry.FieldByName('ServerID').AsInteger;
    YearID := qry.FieldByName('YearID').AsInteger;
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT dbo.ChkUsersOnFlow4Edit';
      SQL.Add('( :YearID , :FormID , :ServerID , :FormType , :kind , ');
      SQL.Add(':UserID , :PositionCode )');
      Parameters.ParamByName('YearID').Value := YearID;
      Parameters.ParamByName('FormID').Value := FormID;
      Parameters.ParamByName('ServerID').Value := ServerID;
      Parameters.ParamByName('FormType').Value := FormTypeNum;
      Parameters.ParamByName('Kind').Value := kind;
      Parameters.ParamByName('UserID').Value := User.ID;
      Parameters.ParamByName('PositionCode').Value := User.PositionCode;
      Active := True;
      Result := Fields[0].AsInteger < 1;
      if Result then
        Warn('این فرم در گردش فرمها استفاده شده و قابل ویرایش نیست');

    end;
  end;

end;

function checkValidParent: boolean;
var
  s: string;
begin
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT GroupID, GroupName, UperGroupId FROM StuffGroups ';
    SQL.Add('WHERE GroupID = UperGroupId');
    Active := True;
    while not Eof do
    begin
      s := s + Format('%s=%s', [Fields[0].AsString, Fields[1].AsString]
        ) + #13#10;
      Next;
    end;
    Result := s = EmptyStr;
    if not Result then
      Warn2('سر گروه،گروه زیر باید اصلاح شود' + #13#10 + s, 0);
  end;

end;

// sheikh 2015/06/22
procedure SaveOtherCustomers(qryOtherGroups, qryCustomers: TADOQuery;
  chklist: TCheckListBox);
var
  arr: TStringDynArray;
  i: SmallInt;
begin
  if chklist = nil then
    Exit;
  if not qryOtherGroups.Active then
    qryOtherGroups.Open;
  with qryOtherGroups do
  begin
    First;
    while not Eof do
      Delete;
    arr := SplitString(GetCheckedCommaText(chklist), ',');
    for i := 0 to Length(arr) - 1 do
    begin
      Insert;
      qryOtherGroups.FieldByName('CustID').AsInteger :=
        qryCustomers.FieldByName('CustID').AsInteger;
      qryOtherGroups.FieldByName('CustomerGrpID').AsInteger := StrToInt(arr[i]);
      Post;
    end;
  end;
end;
// Sheikh 2015/06/22

procedure LoadOtherCustomers(qryOtherGroups: TADOQuery; chklist: TCheckListBox);
var
  s: string;
begin
  with qryOtherGroups do
  begin
    First;
    while not Eof do
    begin
      s := s + qryOtherGroups.FieldByName('CustomerGrpID').AsString + ',';
      Next;
    end;
    SetCheckedCommaText(chklist, s);
  end;
end;

procedure InitChkList(chklist: TCheckListBox; cmbGroups: TComboBox;
  IsFirstTime: boolean);
begin
  if chklist = nil then
    Exit;
  chklist.Clear;
  with DMf.qryTmpTmp do
  begin
    SQL.Text := 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ' +
      ' Order By CustomerGrpID';
    Open;
    while not Eof do
    begin
      if (IsFirstTime) or
        (Fields[0].AsInteger <> Integer(cmbGroups.Items.Objects
        [cmbGroups.ItemIndex])) then
        chklist.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end;
    Close;
  end;
end;

procedure ChangeCustID(qryCustomers: TADOQuery; cmbGroups: TComboBox;
  CustomerCaption: string; aProcedureName: string = 'ChangeCustID');
var
  CustID: Integer;
  formName: string;
begin
  if get_response('آيا براي تغيير كد  ' + CustomerCaption + ' مطمئن هستيد؟') <> mrYes
  then
    Abort;
  formName := TForm(qryCustomers.Owner).Name;
  CustID := GetANewCode(formName,
    'Select max(CustID) from Customers where  CustomerGrpID =' +
    IntToStr(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex])), 'CustID');
  CustID := StrToInt(Trim(get_box('تغيير كد  ' + CustomerCaption + '',
    'لطفاً كد جديد را وارد كنيد:', IntToStr(CustID))));

  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT CustID, CustName FROM Customers where CustID =' +
      IntToStr(CustID);
    Active := True;
    if FieldByName('CustName').AsString <> EmptyStr then
    begin
      if get_response('آيا براي ادغام كد  ' + CustomerCaption + ' ' +
        qryCustomers.FieldByName('CustID').AsString + ' با ' + IntToStr(CustID)
        + ' ' + FieldByName('CustName').AsString + ' مطمئن هستيد؟') <> mrYes
      then
        Abort;
    end
    else if get_response('آيا براي تغيير كد  ' + CustomerCaption + ' از ' +
      qryCustomers.FieldByName('CustID').AsString + ' به ' + IntToStr(CustID) +
      ' مطمئن هستيد؟') <> mrYes then
      Abort;

  end;

  With TADOStoredProc.Create(DMf) do
    try
      Active := False;
      ProcedureName := aProcedureName;
      Connection := DMf.adcBSell;
      Parameters.AddParameter;
      Parameters.Refresh;
      Parameters.ParamByName('@CustIDOld').Value :=
        qryCustomers.FieldByName('CustID').AsInteger;
      Parameters.ParamByName('@CustIDNew').Value := CustID;

      try
        ExecProc;
      except
        on E: Exception do
        begin
          Warn(E.Message);
          DMf.adcBSell.Connected := False;
          cmbGroups.DroppedDown := True;
        end;
      end;

    finally
      Free;
      FreeReservedCodes(DMf.adcBSell, '', '', formName);
      qryCustomers.Requery();
      qryCustomers.Locate('CustID', CustID, []);
    end;
end;

procedure ChangeCustomerGroup(Sender: TObject; qryCustomers: TADOQuery;
  CustomerCaption: string);
var
  rid: Integer;
begin
  if get_response('آيا براي " تغيير گروه " اين  ' + CustomerCaption +
    ' مطمئن هستيد؟') <> mrYes then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Customers SET CustomerGrpID = ' +
      IntToStr((Sender as TMenuItem).Tag) + ' WHERE CustID = ' +
      qryCustomers.FieldByName('CustID').AsString;
    try
      ExecSQL;
      BigMessage(' تغيير گروه انجام شد.', 2);
      Active := False;
    except
      on E: Exception do
      begin
        Warn('اشكال در تغيير گروه' + #13#10 + E.Message);
      end;
    end;
    // try
  end; // with
  qryCustomers.Next;
  rid := qryCustomers.FieldByName('CustID').AsInteger;
  qryCustomers.Requery();
  qryCustomers.Locate('CustID', rid, []);

end;

function IsActiveCalcPriceOnServer: boolean;
begin
  Result := True;
  if opt.ReplicationActive then
  begin
    if opt.PublisherActive then
    begin
      Result := get_response
        ('قبل از قیمت گذاری خروجیهای انبار اطمینان حاصل کنید که موارد زیر رعایت می شود :'
        + #13#10 +
        '1- شعب بر روی فرمهای سیستم انبار ثبت و ویرایش اطلاعات انجام نمی دهند .'
        + #13#10 +
        '2- ارتباط اینترنتی برقرار بوده و کلیه اطلاعات شعبات به دفتر مرکزی منتقل شده است'
        + #13#10 + 'آیا ادامه می دهید', clRed) = mrYes;
    end
    else
    begin
      Result := False;
      Warn2('به علت وجود  Replication  قیمت گذاری روی سرور اصلی مجاز است .', 0);
    end;
  end;
end;

function RelatedPostWhenCoefficientsPosted(qryinit,
  qryRecipts: TDataSet): boolean;
var
  ReciptType: String;
begin
  Result := False;
  if ((qryinit.FieldByName('ChangeAidReciptDate').AsLargeInt and
    Integer(CHkRelatedPostWhenCoefficientsPosted)) <> 0) then
  begin
    ReciptType := qryinit.FieldByName('ConversionCoSerial').AsString;
    Result := not IsParent(qryRecipts, 'ParentCoReciptID',
      StrToInt(ReciptType));
    if Result then
      Warn('فرم مرتبط به شرطی قابل ثبت است که فرم ضرایب ثبت شده باشد')
  end;
end;

function ADDItemChecked(qryMaster: TADOQuery): boolean;
begin
  Result := (not opt.ReplicationActive) or
    (qryMaster.FieldByName('ServerID').AsInteger = opt.ServerID);
  // if ((opt.ConfigSettings and Integer(CHkCsServerID4SellsEmporium)) <> 0) then
  // Result := false;
  if not Result then
    Warn2('امکان اضافه نمودن سطر روی این سرور وجود ندارد');
end;

function ReciptCorrelate_ConversionCo_Chk(qryMaster, qryinit: TDataSet)
  : boolean;
begin
  Result := (not opt.ReplicationActive) or
    (qryMaster.FieldByName('ServerID').AsInteger = opt.ServerID);
  if not Result then
  begin
    if User.OperatorKind > 0 then
      Result := get_response
        ('مطمئن شوید که کاربران شعبات بصورت همزمان با شما ثبت اطلاعات نمی کنند ،'
        + #13#10 + ' در غیر اینصورت ممکن است اطلاعات بدرستی منتقل نشود' + #13#10
        + 'آیا ادامه می دهید', clRed) = mrYes;
  end;

  { همه وضعیت ها
    فقط اطلاعات قطعي ثبت فرم مرتبط شود.‏
    فقط اطلاعات دائمی ثبت فرم مرتبط شود.‏ }
  case qryinit.FieldByName('CorrelateReciptState').AsInteger of
    0:
      Result := True;
  else
    begin
      Result := qryMaster.FieldByName('ReciptState')
        .AsInteger = qryinit.FieldByName('CorrelateReciptState').AsInteger;
      if not Result then
        Warn2('امکان ثبت فرم مرتبط در این وضعیت وجود ندارد');
    end;
  end;

end;

procedure InsertSeverable(qryChecks: TADOQuery;
  NewFormItemID, NewFormID: Integer);
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DMf);
  with qry do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'INSERT INTO Severable';
      SQL.Add('(FormItemID, CustID, TopicCode, DetailCode, CTopicCode,');
      SQL.Add('CTopicCode2, BudgetCode, ArzAmount, Amount,');
      SQL.Add('FormID, ServerID, YearID, SeverableNote, DeficitAmount)');
      SQL.Add('SELECT :NewFormItemID, CustID, TopicCode, DetailCode, CTopicCode,');
      SQL.Add('CTopicCode2, BudgetCode, ArzAmount, Amount, :NewFormID,');
      SQL.Add('ServerID, YearID, SeverableNote, DeficitAmount');
      SQL.Add('FROM Severable AS Severable_1');
      SQL.Add('WHERE (FormItemID = :FormItemID ) AND (FormID = :FormID)');
      SQL.Add('AND (ServerID = :ServerID) AND (YearID = :YearID)');
      Parameters.ParamByName('NewFormItemID').Value := NewFormItemID;
      Parameters.ParamByName('NewFormID').Value := NewFormID;
      Parameters.ParamByName('FormItemID').Value :=
        qryChecks.FieldByName('FormItemID').AsInteger;
      Parameters.ParamByName('FormID').Value := qryChecks.FieldByName('FormID')
        .AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryChecks.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryChecks.FieldByName('YearID')
        .AsInteger;
      ExecSQL;
    finally
      qry.Free;
    end;
end;

procedure MakeDocumentShow(qryForm, qryInitQry: TADOQuery);
begin
  var_tmp_str := qryForm.FieldByName('ID').AsString;
  if qryInitQry.FieldByName('DisplayFormType').AsInteger in [0, 7] then
    MakeDocumentCofferF.Enter(qryForm)
  else
    MakeDocumentCheckF.Enter(qryForm);
end;

function DefaultDateActive(qryInitQry: TADOQuery): boolean;
begin
  Result := qryInitQry.FieldByName('DefaultDateActive').AsInteger = 1
end;

procedure CallOtherForms(MyForm: Tform_Name; ftype, DesignFormID: Integer;
  qry: TDataSet);
begin
  case MyForm of
    FnCustomersInterView:
      CreateChildForm(TCustomersInterViewF, CustomersInterViewF, mainF,
        ftype, alNone);
    FnCustomersTax:
      CreateChildForm(TCustomersTaxF, CustomersTaxF, mainF, ftype, alNone);
    FnCustomers2:
      Customers2F.Enter(ftype);
    FnDesignForms:
      begin
        CreateMDIForm2(TDesignFormsF, DesignFormsF, mainF, DesignFormID);
        if not DesignFormsF.qryForm.Locate('id', ftype, []) then
          Warn('فرم پیدا نشد');

      end;
    FnShowReciptTypes:
      ShowReciptTypes(qry, mainF);

    FnShowFormTypesForms:
      ShowFormTypesForms(qry, mainF);

    FnActionPlans:
      // ActionPlansF.Enter(Form_Type; Restart_PersonID1: boolean;
      // PersonID1ID: Integer = 0)
    end;
  end;

  procedure GetPersonalPicture(Pic: TPicture; PersonelNo: Integer);
  var
    pathName: string;
  begin
    if opt.ScanState and SysUtils.DirectoryExists(opt.ArchiveScan) then
      pathName := opt.ArchiveScan + '\Archive\AllYear\Customers\'
    else
      pathName := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)) +
        'Archive\AllYear\Customers\');
    pathName := pathName + '1_' + IntToStr(PersonelNo) + '_1_0.jpg';
    if FileExists(pathName) then
      Pic.LoadFromFile(pathName)
    else
      Pic.Assign(nil);

  end;

  procedure AllAfterInsert4acc(Dataset: TDataSet);
  begin
    Dataset.FieldByName('TopicCode').AsLargeInt := 0;
    Dataset.FieldByName('DetailCode').AsInteger := 0;
    Dataset.FieldByName('CTopicCode').AsInteger := 0;
    Dataset.FieldByName('CTopicCode2').AsInteger := 0;
  end;

  procedure UpDateqryFormsCheck(qry, qryRecipts: TADOQuery; Form_Type: Integer);
  begin
    with qry do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value :=
        qryRecipts.FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryRecipts.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
        .AsInteger;
      Parameters.ParamByName('FormType').Value := Form_Type;
      Active := True;
    end;
  end;

  procedure CheckRequiredFieldsCustomer(Dataset: TDataSet);
  begin
    if (((opt.RequiredCustomers and Integer(RcChkNationalID)) <> 0) or
      ((opt.RequiredCustomers and Integer(RcChkEconomicNumber)) <> 0)) then
      case Dataset.FieldByName('HCKharidarTypeCode').AsInteger of
        1:
          begin
            Dataset.FieldByName('NationalID').Required := True;
            Dataset.FieldByName('EconomicNumber').Required := False;
          end;
        2, 3:
          begin
            Dataset.FieldByName('EconomicNumber').Required := True;
            Dataset.FieldByName('NationalID').Required := False;
          end
      else
        begin
          Dataset.FieldByName('NationalID').Required := True;
          Dataset.FieldByName('EconomicNumber').Required := True;
        end;
      end;

    if (Dataset.FieldByName('HCTarafGaradadTypeCode').AsInteger = 7) then
    begin
      Dataset.FieldByName('NationalID').Required := False;
      Dataset.FieldByName('EconomicNumber').Required := False;
    end;

  end;

  function GetCode(Tag: Integer): Integer;
  begin
    if Tag in [2, 6] then
      Result := 302
    else
      Result := Tag + 397
  end;

  function GetFilterSQLChooseChecks(qryInitQry, qryMaster_Forms
    : TADOQuery): string;
  begin
    case qryInitQry.FieldByName('Customer1UseInRecall').AsInteger of
      0:
        Result := '';
      1:
        Result := ' AND((F.CustomerID2 = ' + qryMaster_Forms.FieldByName
          ('CustomerID1').AsString + ')' + ' OR (F.CustomerID1 = ' +
          qryMaster_Forms.FieldByName('CustomerID1').AsString + '))';
      2:
        Result := ' AND F.CustomerID1 = ' + qryMaster_Forms.FieldByName
          ('CustomerID1').AsString;
      3:
        Result := ' AND F.CustomerID2 = ' + qryMaster_Forms.FieldByName
          ('CustomerID1').AsString;
      4:
        Result := ' AND F.CustomerID1 = ' + qryMaster_Forms.FieldByName
          ('CustomerID2').AsString;
      5:
        Result := ' AND F.CustomerID2 = ' + qryMaster_Forms.FieldByName
          ('CustomerID2').AsString + ' AND F.CustomerID1 = ' +
          qryMaster_Forms.FieldByName('CustomerID1').AsString;
      6:
        Result := ' AND F.CustomerID2 = ' + qryMaster_Forms.FieldByName
          ('CustomerID2').AsString;
    end;

  end;

  procedure Chk_CustomerActive(_CustomerActive, PersonID1: TField);
  begin
    if (_CustomerActive.AsInteger = 1) then
    begin
      Warn(PersonID1.DisplayLabel + ' انتخاب شده غير فعال شده');
      Abort;
    end;
  end;

  procedure ReplaceSyntheticCodeField_in_SqlQry(ReciptType: Integer;
    qry: TADOQuery);
  var
    str, SyntheticCodeField: string;
  begin
    with DMf.qryTmpTmp do
    begin
      Close;
      SQL.Text := 'select SyntheticCodeField from ReciptTypes where ReciptType='
        + ReciptType.ToString;
      Open;
      SyntheticCodeField := Fields[0].AsString;
      Close;
    end;
    if SyntheticCodeField = EmptyStr then
      Exit;

    SyntheticCodeField := LeftStr(SyntheticCodeField,
      Length(SyntheticCodeField) - 1);
    SyntheticCodeField := 'ltrim(reciptitems.' + SyntheticCodeField +
      ') as syntheticcodefield';
    SyntheticCodeField := ReplaceStr(SyntheticCodeField, ';',
      ')+''_''+ltrim(reciptitems.');

    str := LowerCase(qry.SQL.Text);
    qry.SQL.Text := ReplaceStr(str, ''''' as syntheticcodefield',
      SyntheticCodeField);

    SyntheticCodeField := ReplaceStr(ReplaceStr(SyntheticCodeField,
      ' as syntheticcodefield', ''), 'reciptitems.', '');
    qry.SQL.Text := ReplaceStr(qry.SQL.Text, '##', ',' + SyntheticCodeField);
  end;

  procedure qryCopyRowFields(qry: TADOQuery;

    Const AddFld: array of string);
  var
    aField: Variant;
    i: Integer;
  begin
    // Create a variant Array
    aField := VarArrayCreate([0, High(AddFld)], VarVariant);
    // read values into the array
    for i := 0 to (High(AddFld)) do
    begin
      if not(qry.FieldByName(AddFld[i]).ReadOnly) then
        aField[i] := qry.FieldByName(AddFld[i]).Value;
    end;
    qry.Append;
    // Put array values into new the record
    for i := 0 to (High(AddFld)) do
    begin
      if (not(qry.FieldByName(AddFld[i]).ReadOnly)) then
        try
          qry.FieldByName(AddFld[i]).Value := aField[i];
        except
          on E: Exception do
        end;

    end;

  end;

  procedure qryCopyRow(qry: TADOQuery;

    Const IgnoreFld: array of string);
  var
    aField: Variant;
    i: Integer;
  begin
    // Create a variant Array
    aField := VarArrayCreate([0, qry.FieldCount - 1], VarVariant);
    // read values into the array
    for i := 0 to (qry.FieldCount - 1) do
    begin
      if not IgnoreField(qry.Fields[i].FieldName, IgnoreFld) then
        aField[i] := qry.Fields[i].Value;
    end;
    qry.Last;
    qry.Insert;
    // Put array values into new the record
    for i := 0 to (qry.FieldCount - 1) do
    begin
      if (not(qry.Fields[i].ReadOnly) and
        not(IgnoreField(qry.Fields[i].FieldName, IgnoreFld))) then
        qry.Fields[i].Value := aField[i];
    end;

  end;

  function IgnoreField(IgnoreFieldName: string;

    Const IgnoreFld: array of string): boolean;
  var
    i: Integer;
  begin
    Result := False;
    for i := 0 to High(IgnoreFld) do
      if UpperCase(IgnoreFieldName) = UpperCase(IgnoreFld[i]) then
      begin
        Result := True;
        Break;
      end;
  end;

  function NewTozin2Recipts2(qryTozin: TDataSet;
    kind: TCorrelateORConversion): Integer;
  var
    sp: TADOStoredProc;
  begin
    sp := TADOStoredProc.Create(qryTozin.Owner);
    With sp do
      try
        Active := False;
        ProcedureName := 'NewTozin2Recipts2';
        Connection := DMf.adcBSell;
        Parameters.AddParameter;
        Parameters.Refresh;
        Parameters.ParamByName('@CorrelateORConversion').Value := kind;
        Parameters.ParamByName('@OldTozinID').Value :=
          qryTozin.FieldByName('TozinID').AsInteger;
        Parameters.ParamByName('@ServerID').Value :=
          qryTozin.FieldByName('ServerID').AsInteger;
        Parameters.ParamByName('@YearID').Value :=
          qryTozin.FieldByName('YearID').AsInteger;
        Parameters.ParamByName('@ReciptID').Value := 0;
        ExecProc;
        Result := Parameters.ParamByName('@ReciptID').Value;
      finally
        Free;
      end;
  end;

  procedure TozinCorrelateRecipt(qryinit, qryTozin, qryLicense: TADOQuery;
    Caption: string);
  var
    i: Integer;
    msg: string;
  begin
    if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), qryTozin)
    then
      Abort;
    with qryLicense do
    begin
      Close;
      Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
        .AsInteger;
      Open;
    end;
    if qryLicense.RecordCount > 0 then
    begin
      Warn('ثبت قابل انجام نیست', mtInformation);
      Abort;
    end;

    msg := ' آيا براي ثبت/نمایش ' + Caption + ' مطمئن هستيد؟';
    If ReciptCorrelate_ConversionCo_Chk(qryTozin, qryinit) then
      if get_response(msg) = mrYes then
      begin
        i := NewTozin2Recipts2(qryTozin, TCorrelate);
        if i <> 0 then
          BigMessage(Caption + ' انجام شد ', 2);
      end;

    // ShowReciptTypes(qryTozin, mainF, qryTozin.FieldByName('StuffCode')
    // .AsLargeInt, qryTozin.FieldByName('TozinID').AsInteger, 0);
  end;

  procedure TozinConversionCoSerial(qryinit: TADOQuery; qryTozin: TDataSet;
    qryLicense: TADOQuery; Caption, CaptionCo: string);
  var
    i: Integer;
    msg: string;
    qryInit2: TADOQuery;
  begin
    if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), qryTozin)
    then
      Abort;
    with qryLicense do
    begin
      Close;
      Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
        .AsInteger;
      Open;
    end;
    if qryLicense.RecordCount = 0 then
    begin
      Warn('ابتدا ' + Caption + ' ثبت شود ', mtInformation);
      Abort;
    end;

    if qryLicense.FieldByName('ReciptType').AsInteger = qryinit.FieldByName
      ('ConversionCoSerial').AsInteger then
    begin
      Warn('قبلا انجام شده');
      Abort;
    end;

    if qryinit.FieldByName('RecallTypeCo').AsInteger = 9 then
    begin
      qryInit2 := TADOQuery.Create(DMf);
      With qryInit2 do
      begin
        Connection := theMainConnection;
        SQL.Text := 'SELECT *';
        SQL.Add('FROM ReciptTypes');
        SQL.Add('where ReciptType= :ReciptType');
        Parameters.ParamByName('ReciptType').Value :=
          qryinit.FieldByName('ConversionCoSerial').AsInteger;
        Open;
      end;
      With DMf.qryTmpTmp do
      begin
        Close;
        SQL.Text := 'SELECT *';
        SQL.Add('FROM Recipts');
        SQL.Add('WHERE (ReciptID = :ReciptID) ');
        SQL.Add('AND (ServerID = :ServerID) ');
        SQL.Add('AND (YearID = :YearID)');
        Parameters.ParamByName('ServerID').Value :=
          qryLicense.FieldByName('ServerID').AsInteger;
        Parameters.ParamByName('YearID').Value :=
          qryLicense.FieldByName('YearID').AsInteger;
        Parameters.ParamByName('ReciptID').Value :=
          qryLicense.FieldByName('ReciptID').AsInteger;
        Open;
        if FieldByName('ReciptType').AsInteger = qryinit.FieldByName
          ('ConversionCoSerial').AsInteger then
          Warn('قبلا انجام شده')
        else
        begin
          if RecordCount > 0 then
          begin
            Edit;
            FieldByName('ReciptType').AsInteger :=
              qryinit.FieldByName('ConversionCoSerial').AsInteger;
            FieldByName('AidNumber').AsString :=
              FieldByName('ReciptNumber').AsString;
            FieldByName('AidDate').AsString :=
              FieldByName('ReciptDate').AsString;
            GetReciptNumber(qryInit2, DMf.qryTmpTmp, 0, myStore);
            Post;
            qryLicense.Requery();
            FreeReservedCodes(DMf.adcBSell);
            qryInit2.Free;
            Warn('انجام شد.')
          end;
        end;
      end;
    end
    else
    begin
      msg := ' آيا براي ثبت/نمایش ' + CaptionCo + ' مطمئن هستيد؟';
      If ReciptCorrelate_ConversionCo_Chk(qryTozin, qryinit) then
        if get_response(msg) = mrYes then
        begin
          i := NewTozin2Recipts2(qryTozin, TConversion);
          if i <> 0 then
            BigMessage(CaptionCo + ' انجام شد ', 2);
        end;
      ShowReciptTypes(qryTozin, mainF, qryTozin.FieldByName('StuffCode')
        .AsLargeInt, 0, qryTozin.FieldByName('TozinID').AsInteger);
    end;

  end;

  function CheckLimitID(fld: TField): boolean;
  begin
    Result := (fld.AsInteger >= opt.StartLimitIDAss) and
      (fld.AsInteger <= opt.EndLimitIDAss);
    if not(Result) then
      Warn(Format('%S وارد شده خارج از محدوده تعيين شده است',
        [fld.DisplayLabel]));

  end;

  function CheckUsingDate(inDate: String; sn: Integer): boolean;
  begin
    with TADOQuery.Create(nil) do
      try
        Connection := DMf.adcBSell;
        SQL.Text :=
          'SELECT Count(SerialNum) FROM Assets.Amval WHERE (SerialNum =:Sn) AND (InvoiceDate <= :Date)';
        Parameters[0].Value := sn;
        Parameters[1].Value := inDate;
        Open;
        Result := Fields[0].AsInteger <> 0;
        if not Result then
          Warn('تاريخ وارد شده از تاريخ خريد كوچكتر است');

      finally
        Free;
      end;
  end;

  Procedure UpdateAllQry(formName: TForm);
  var
    i: Integer;
  begin
    for i := 0 to formName.ComponentCount - 1 do
      if (formName.Components[i] is TADOQuery) then
        if (formName.Components[i] as TADOQuery).Active then
          (formName.Components[i] as TADOQuery).Requery;
  end;

  Procedure FreeLookupUnUse(DBText: TDBText);
  begin
    if not DBText.Parent.Visible then
    begin
      // باعث می شود دیتا ست لوکآپ اطلاعات نیاورد و سرعت افزایش یابد.
      DBText.DataSource.Dataset.FieldByName(DBText.DataField).Free;
      DBText.Free;
    end;

  end;

  procedure SetArzIni(grd1: TCedarDbgrid);
  var
    b: boolean;
    Tag: Integer;
  begin
    b := opt.ArzActiveAll;
    setColumns2(grd1, b, 'CurrenciesName');
    setColumns2(grd1, b, 'ArzRate');
    setColumns2(grd1, b, 'Arzbed');
    setColumns2(grd1, b, 'Arzbes');
    setColumns2(grd1, b, 'calcuArzBalance');
    setColumns2(grd1, b, 'ArzBalance');
    setColumns2(grd1, b, 'ArzFirstBalance');

    if b then
      Tag := 3
    else
      Tag := 0;

    if grd1.DataSource.Dataset.FindField('CurrenciesName') <> nil then
      grd1.DataSource.Dataset.FindField('CurrenciesName').Tag := Tag;

    if grd1.DataSource.Dataset.FindField('ArzRate') <> nil then
      grd1.DataSource.Dataset.FindField('ArzRate').Tag := Tag;

    if grd1.DataSource.Dataset.FindField('Arzbed') <> nil then
      grd1.DataSource.Dataset.FindField('Arzbed').Tag := Tag;

    if grd1.DataSource.Dataset.FindField('Arzbes') <> nil then
      grd1.DataSource.Dataset.FindField('Arzbes').Tag := Tag;

    if grd1.DataSource.Dataset.FindField('calcuArzBalance') <> nil then
    begin
      TNumericField(grd1.DataSource.Dataset.FindField('calcuArzBalance'))
        .DisplayFormat := '#.##;(#.##)';
      grd1.DataSource.Dataset.FindField('calcuArzBalance').Tag := Tag;
    end;

    if grd1.DataSource.Dataset.FindField('Arzbalance') <> nil then
    begin
      TNumericField(grd1.DataSource.Dataset.FindField('Arzbalance'))
        .DisplayFormat := '#.##;(#.##)';
      grd1.DataSource.Dataset.FindField('Arzbalance').Tag := Tag;
    end;

    if grd1.DataSource.Dataset.FindField('ArzFirstBalance') <> nil then
    begin
      TNumericField(grd1.DataSource.Dataset.FindField('ArzFirstBalance'))
        .DisplayFormat := '#.##;(#.##)';
      grd1.DataSource.Dataset.FindField('ArzFirstBalance').Tag := Tag;
    end;

  end;

  procedure CopyForm(qryInitQry, qryMaster_Forms, qryDetail_Item,
    qryAllForms: TADOQuery);
  var
    FormID, ServerID, YearID: Integer;
    FormNumber: Integer;
    qryInsert: TADOQuery;
    formType: Integer;
  begin
    if qryMaster_Forms.State in dsEditModes then
      qryMaster_Forms.Post;

    if not CheckUserlevel(qryInitQry.FieldByName('CopyFormLevelID'),
      qryMaster_Forms) then
      Abort;
    formType := qryInitQry.FieldByName('formType').AsInteger;
    if qryDetail_Item.IsEmpty then
      Exit;
    if get_response('آيا براي كپي اين فرم در فرم جديد مطمئن هستيد؟') <> mrYes
    then
      Exit;
    FormID := GetANewID(nil, IntToStr(formType), 'Forms', 'FormID', nil, 1);
    FormNumber := GetANewCode(IntToStr(formType),
      'SELECT MAX(FormNumber) FROM Forms WHERE FormType = ' +
      IntToStr(formType), '', DMf.adcBSell);
    With DMf.qryTmpTmp do
    begin
      Active := False;

      SQL.Text := 'INSERT INTO Forms';
      SQL.Add('(FormID, FormNumber, FormDate, FormType, CustomerID1, CustomerID2,');
      SQL.Add(' Amount, FomNote, FirstUser, LastUser,');
      SQL.Add('DetailCode, CTopicCode, AidInfoNo, AidInfoDate, CTopicCode2,');
      SQL.Add('CTopicCode3, CustomerName2, PayTypes, TopicTypes, ');
      SQL.Add('FormState, ModifyDate,ReciptID, ManegerNote');

      SQL.Add(', SubAmount, Rate, SellsMethod, SellsEmporium, DefaultDate');
      SQL.Add(', CustomerID3, AidFormType, ArzTypeID,');
      SQL.Add('ArzAmount, ArzRate, AidInfoNo2, AidInfoDate2, UserRegistrationDoc, DefaultDuration');

      SQL.Add(', OperatorID, TruckNumber');
      if APPBank.SysID = 40 then
        SQL.Add(', CostFactorsType, CostFactorsCode');

      SQL.Add(',YearID,ServerID)');
      SQL.Add('SELECT ' + IntToStr(FormID) + ',' + IntToStr(FormNumber) + ','''
        + var_glb_CurrentDate + ''',');
      SQL.Add(' FormType, CustomerID1, CustomerID2, Amount, FomNote,''' +
        User.Name + ''',''' + User.Name + '''');
      SQL.Add(',DetailCode, CTopicCode, AidInfoNo, AidInfoDate, CTopicCode2,');
      SQL.Add('CTopicCode3, CustomerName2, PayTypes, TopicTypes, ');
      SQL.Add('FormState, ModifyDate,ReciptID, ManegerNote');

      SQL.Add(', SubAmount, Rate, SellsMethod, SellsEmporium, DefaultDate, ');
      SQL.Add('CustomerID3, AidFormType, ArzTypeID,');
      SQL.Add('ArzAmount, ArzRate, AidInfoNo2, AidInfoDate2, UserRegistrationDoc, DefaultDuration');
      SQL.Add(', ' + User.ID.ToString + ', TruckNumber');

      if APPBank.SysID = 40 then
        SQL.Add(', CostFactorsType, CostFactorsCode');

      ServerID := opt.ServerID;
      YearID := APPBank.Year;

      SQL.Add(',' + IntToStr(YearID) + ' AS YearID,' + IntToStr(ServerID) +
        ' AS ServerID');
      SQL.Add('FROM Forms');

      SQL.Add('WHERE (FormID = ' + qryMaster_Forms.FieldByName('FormID')
        .AsString + ')');
      SQL.Add('AND (YearID = ' + qryMaster_Forms.FieldByName('YearID')
        .AsString + ')');
      SQL.Add('AND (ServerID = ' + qryMaster_Forms.FieldByName('ServerID')
        .AsString + ')');

      try
        ExecSQL;
        BigMessage(' در حال ثبت فرم...', 1);
        Active := False;
      except
        on E: Exception do
        begin
          Warn('اشكال در ثبت كردن فرم‌ ' + E.Message);
        end;

      end; // try
    end; // with
    With qryDetail_Item do
    begin
      DisableControls;
      First;
      qryInsert := TADOQuery.Create(DMf);
      qryInsert.Connection := DMf.adcBSell;

      // while not eof do
      begin
        qryInsert.Active := False;
        qryInsert.SQL.Text := 'INSERT INTO FormItems';
        qryInsert.SQL.Add
          (' (FormItemID, FormID, Row, CheckNumber, CheckDate, CheckType, ');
        qryInsert.SQL.Add
          ('ItemAmount, ItemNote, BankName, AccountNumber, City, CustomerID2, TopicCode,');
        qryInsert.SQL.Add
          ('DetailCode, CTopicCode, CTopicCode2,CTopicCode3, BudgetCode, ');
        qryInsert.SQL.Add
          ('ProjectID, preFormItemID, AidInfoNo, AidInfoDate, AccountNumberNew,');
        qryInsert.SQL.Add
          ('CheckState, CheckFor, AmountArz, CashWage, AccState, FirstUser, LastUser');

        qryInsert.SQL.Add
          (', VAT, TopicTypesI, AccountNumberNew1, ArzTypeID, ArzAmount, ');
        qryInsert.SQL.Add
          ('ArzRate, DayDelay, AmountDelay, CheckCounter, ProductCode');

        qryInsert.SQL.Add(',YearID,ServerID, LineCorrosion)');

        qryInsert.SQL.Add
          ('SELECT ROW_NUMBER() OVER(ORDER BY FormItemID ASC)+(SELECT max(FormItemID) FROM FormItems ),'
          + IntToStr(FormID) + ',');
        qryInsert.SQL.Add
          ('Row, CheckNumber, CheckDate, CheckType, ItemAmount, ItemNote, ');
        qryInsert.SQL.Add
          ('BankName, AccountNumber, City, CustomerID2, TopicCode,');
        qryInsert.SQL.Add
          ('DetailCode, CTopicCode, CTopicCode2,CTopicCode3, BudgetCode, ');
        qryInsert.SQL.Add
          ('ProjectID, preFormItemID, AidInfoNo, AidInfoDate, AccountNumberNew,');
        qryInsert.SQL.Add
          ('CheckState, CheckFor, AmountArz, CashWage, AccState,''' + User.Name
          + ''',''' + User.Name + '''');

        qryInsert.SQL.Add
          (', VAT, TopicTypesI, AccountNumberNew1, ArzTypeID, ArzAmount, ');
        qryInsert.SQL.Add
          ('ArzRate, DayDelay, AmountDelay, CheckCounter, ProductCode');

        qryInsert.SQL.Add(',YearID,ServerID, LineCorrosion');
        qryInsert.SQL.Add('FROM FormItems');
        // qryInsert.SQL.Add('WHERE (FormItemID = ' + FieldByName('FormItemID')          .AsString + ')');
        qryInsert.SQL.Add('WHERE (FormID = ' + qryMaster_Forms.FieldByName
          ('FormID').AsString + ')');
        qryInsert.SQL.Add('AND (YearID = ' + qryMaster_Forms.FieldByName
          ('YearID').AsString + ')');
        qryInsert.SQL.Add('AND (ServerID = ' + qryMaster_Forms.FieldByName
          ('ServerID').AsString + ')');

        try
          qryInsert.ExecSQL;
          BigMessage(' در حال ثبت چكهاي فرم...', 0);
          qryInsert.Active := False;
        except
          Warn('اشكال در ثبت چكهاي فرم‌');
        end;
        // try
        // Next;
      end; // while
      EnableControls;
      BigMessage(' فرم ' + qryInitQry.FieldByName('FormCaption').AsString +
        '‌ با شماره فرم ' + IntToStr(FormNumber) + ' ثبت شد.', 2);
      if qryAllForms = nil then
      begin
        qryMaster_Forms.Requery;
        qryMaster_Forms.Locate('FormID;ServerID;YearID',
          VarArrayOf([FormID, ServerID, YearID]), []);
      end
      else
      begin
        qryAllForms.Requery;
        qryAllForms.Locate('FormID;ServerID;YearID',
          VarArrayOf([FormID, ServerID, YearID]), []);
      end

    end; // with
    FreeReservedCodes(DMf.adcBSell, 'Forms', '', IntToStr(formType));
    qryInsert.Free;
  end;

  function GetFormTypes(CustomerDocType: string): string;
  begin
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT FormType FROM FormTypes';
      SQL.Add('WHERE ( Customer1DocType IN( %s ) and BedBes = 1 ) ');
      SQL.Add('OR( BedBes = 0 AND Customer2DocType IN ( %s ) ) ');
      SQL.Add('OR( CustomerDetailsDocType IN ( %s ) AND BedBesDetails = 1 )');
      SQL.Text := Format(SQL.Text, [CustomerDocType, CustomerDocType,
        CustomerDocType]);
      Active := True;
      while not Eof do
      begin
        Result := Result + Trim(FieldByName('FormType').AsString) + ',';
        Next;
      end;
      Active := False;
      Result := LeftStr(Result, Length(Result) - 1);
    end;
  end;

  procedure SetChkUsersCustomersGroupsActive(qry: TADOQuery;
    Tname: string = 'Forms');
  begin
    if opt.ChkUsersCustomersGroupsActive then
      with qry do
      begin // 'Forms'
        SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , ' +
          Tname + '.CustomerID1) = 1)');
        SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin2, :UserID2, ' +
          Tname + '.CustomerID2) = 1)');
        Parameters.ParamByName('UserAdmin').Value :=
          IfThen(User.PowerUser, 1, 0);
        Parameters.ParamByName('UserID').Value := User.ID;
        Parameters.ParamByName('UserAdmin2').Value :=
          IfThen(User.PowerUser, 1, 0);
        Parameters.ParamByName('UserID2').Value := User.ID;
      end;
  end;

  function SetWhereCustGroups: string;
  var
    qry: TADOQuery;
  begin
    Result := EmptyStr;
    if User.admin then
      Exit;

    if not opt.ChkUsersCustomersGroupsActive then
      Exit;

    qry := TADOQuery.Create(Application);
    with qry do
      try
        Connection := theMainConnection;
        SQL.Text := 'SELECT Count(CustomerGrpID)FROM UsersCustomersGroups ';
        SQL.Add('WHERE (UserID = :UserID)');
        Parameters.ParamByName('UserID').Value := User.ID;
        Active := True;
        if (Fields[0].AsInteger <> 0) then
          Result := ' AND CustomerGrpID IN (SELECT CustomerGrpID FROM UsersCustomersGroups'
            + Format(' WHERE (UserID = %d )) ', [User.ID])
      finally
        Free;
      end;

  end;

  procedure Customer2ActiveOnDetailChange(Sender: TField;
    qryinit, qryItems: TADOQuery);
  var
    CustomerFildName: string;
  BEGIN
    {
      0-نباشد
      1- باشد و پیش فرض ان مشتری 2 Master
      2-باشد بدون پيش فرض
      3-فقط در Grid مربوط به Detailنمايش شود.‏
      4-باشد و پیش فرض ان مشتری 2 Masterو غیرقابل ویرایش
      5-فعال باشد و پیشفرض ان مشتری 3 Master }

    if Sender.AsInteger = 0 then
      Exit;
    if (not qryItems.Active) then
      Exit;
    if (qryItems.RecordCount = 0) then
      Exit;
    if Sender.FieldName = 'CustomerID2' then
    begin
      if qryinit.FieldByName('Customer2ActiveOnDetail').AsInteger in [1, 4] then
        CustomerFildName := 'CustomerID2';
    end
    else
    begin
      if qryinit.FieldByName('Customer2ActiveOnDetail').AsInteger in [5] then
        CustomerFildName := 'CustomerID3';
    end;
    if CustomerFildName <> EmptyStr then
      if get_response('آيا براي تغییر کد مشتری آرتیکل ها هم مطمئن هستيد!؟‏‏') = mrYes
      then
      begin
        With qryItems do
        begin
          First;
          while not Eof do
          begin
            if FieldByName('CustomerID2').AsInteger = Sender.OldValue then
            begin
              Edit;
              FieldByName('CustomerID2').AsInteger := Sender.NewValue;
              Post;
            end;
            Next;
          end;
        end;
      end;
  END;

  procedure SetFieldValue(wField, rField: TField; nilOnChange: boolean = True);
  var
    aNotifyEvent: TFieldNotifyEvent;
    b: boolean;
  begin
    aNotifyEvent := wField.OnChange;
    b := wField.ReadOnly;
    if not rField.IsNull then
      try
        wField.ReadOnly := False;
        if nilOnChange then
          wField.OnChange := nil;

        wField.AsString := rField.AsString;
      finally
        wField.OnChange := aNotifyEvent;
        wField.ReadOnly := b;
      end;
  end;

  procedure SetFieldValue(wField: TField; Value: string;
    nilOnChange: boolean = True);
  var
    aNotifyEvent: TFieldNotifyEvent;
    b: boolean;
  begin
    aNotifyEvent := wField.OnChange;
    b := wField.ReadOnly;
    try
      wField.ReadOnly := False;
      if nilOnChange then
        wField.OnChange := nil;

      wField.AsString := Value;
    finally
      wField.OnChange := aNotifyEvent;
      wField.ReadOnly := b;
    end;
  end;

  procedure InitBMP(BtmTiket: TBitmap);
  begin
    BtmTiket := TBitmap.Create;
    with BtmTiket do
      try
        Transparent := True;
        LoadFromResourceName(HInstance, 'Tiket');
      finally
        // Free
      end;
  end;

  function MultiMaliYear: boolean;
  begin
    with DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(*) FROM Util.MaliYear';
      Active := True;
      Result := Fields[0].AsInteger > 1;
      Active := False;
    end;
  end;

  procedure SetCompanyFilterinLogin(Parameters: TParameters);
  begin
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
      with Parameters do
      begin
        if FindParam('CompanyCode') <> nil then
          ParamByName('CompanyCode').Value := FcompanyCodeLogin;

        if FindParam('CompanyCodeFrom') <> nil then
          ParamByName('CompanyCodeFrom').Value := FcompanyCodeLogin;

        if FindParam('CompanyCodeTo') <> nil then
          ParamByName('CompanyCodeTo').Value := FcompanyCodeLogin;

        if FindParam('CompanyCodeFrom2') <> nil then
          ParamByName('CompanyCodeFrom2').Value := FcompanyCodeLogin;

        if FindParam('CompanyCodeTO2') <> nil then
          ParamByName('CompanyCodeTO2').Value := FcompanyCodeLogin;

        if FindParam('CompanyCode1From') <> nil then
          ParamByName('CompanyCode1From').Value := FcompanyCodeLogin;

        if FindParam('CompanyCode1TO') <> nil then
          ParamByName('CompanyCode1TO').Value := FcompanyCodeLogin;

      end;

  end;

  function CheckDockWithStatus0: boolean;
  begin
    with DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(*) FROM Acc.DocGroups WHERE ((Status = 0)' +
        ' OR (Status IS NULL) OR (Status = '''')) AND ( YearID = ' +
        IntToStr(APPBank.Year) + ' )';
      Active := True;
      Result := Fields[0].AsInteger > 0;
      if Result then
        Warn('به علت وجود اسناد با وضعيت پيش نويس اين فرم قابل رويت نمي باشد.');
      Active := False;
    end;

  end;

  function CheckDockWithStatus01(CompanyCode: Integer): boolean;
  begin
    with DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT COUNT(*) FROM Acc.DocGroups WHERE ((Status=1) or (status=2)' +
        ' OR (Status IS NULL) OR (Status = '''')) AND ( YearID = ' +
        IntToStr(APPBank.Year) + ' )';
      SQL.Add('AND companyCode = ' + CompanyCode.ToString);

      Active := True;
      Result := Fields[0].AsInteger > 0;
      Active := False;
    end;

  end;

  function CheckRelatedIDExists(ID: Integer; kind: boolean): boolean;
  begin
    with DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text := Format('SELECT COUNT(*) FROM  Acc.Documents LEFT OUTER JOIN '
        + ' Acc.DocRelated ON Acc.Documents.Serial = Acc.DocRelated.Serial ' +
        ' AND Acc.Documents.CompanyCode = Acc.DocRelated.CompanyCode AND ' +
        ' Acc.Documents.ID = Acc.DocRelated.ID AND Acc.Documents.YearID = Acc.DocRelated.YearID '
        + ' WHERE ((Acc.Documents.RelatedID > 0) OR (Acc.DocRelated.RelatedID > 0)) '
        + ' AND Acc.Documents.YearID = %d AND CASE WHEN ' + BoolToStr(kind) +
        ' = -1 THEN Acc.Documents.Serial ELSE Acc.Documents.ID END = %d ',
        [APPBank.Year, ID]);
      Active := True;
      Result := Fields[0].AsInteger > 0;
      Active := False;
    end;
  end;

  function EkhtetamieCheck(docdate: string; CompanyCode: Integer)
    : boolean; { mehdi }
  var
    qry: TADOQuery;
    date1: string;
  begin
    qry := TADOQuery.Create(nil);
    qry.Connection := DMf.adcAccounting;
    with qry do
    begin
      Active := False;
      SQL.Text := 'SELECT DocDate';
      SQL.Add('FROM Acc.DocGroups');
      SQL.Add('WHERE (DocTypeCode = 5) AND (YearID = :YearID)');
      SQL.Add('AND (CompanyCode = :CompanyCode)');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('CompanyCode').Value := CompanyCode;
      Active := True;
      if qry.Fields[0].IsNull then
        Result := False
      else
      begin
        date1 := qry.Fields[0].AsString;
        if docdate > date1 then
          Result := True;
      end;
      Active := False;
    end;

  end;

  function DeleteRelatedID(Serial: Integer): boolean; { mehdi }
  var
    qry: TADOQuery;
    intRelatedID: Integer;
  begin

    qry := TADOQuery.Create(nil);
    qry.Connection := DMf.adcAccounting;
    with DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text :=
        Format('SELECT RelatedID, ID FROM Acc.Documents WHERE (RelatedID > 0) AND (Serial = %d)'
        + ' AND (YearID = %d) UNION ALL' +
        ' SELECT RelatedID, ID FROM Acc.DocRelated WHERE (RelatedID > 0) AND (Serial = %d)'
        + ' AND (YearID = %d)', [Serial, APPBank.Year, Serial, APPBank.Year]);
      Active := True;
      while not Eof do
      begin

        with qry do
        begin
          Active := False;
          SQL.Text := Format('SELECT ID FROM Acc.DocRelated ' +
            ' WHERE (RelatedID = %d) AND (ID <> %d) AND (YearID = %d) ',
            [DMf.qry_Temp.Fields[0].AsInteger, DMf.qry_Temp.Fields[1].AsInteger,
            APPBank.Year]);
          Active := True;
          if not qry.Fields[0].IsNull then
          begin
            intRelatedID := qry.Fields[0].AsInteger;
            Active := False;
            SQL.Text :=
              Format('SELECT RelatedID FROM Acc.DocRelated WHERE (ID = %d)' +
              'AND RelatedID NOT IN (0, %d) AND (YearID = %d) GROUP BY RelatedID',
              [intRelatedID, DMf.qry_Temp.Fields[0].AsInteger, APPBank.Year]);
            Active := True;
            if qry.Fields[0].IsNull then
              DMf.adcAccounting.Execute
                (Format('DELETE FROM Acc.DocRelated WHERE (ID = %d)',
                [intRelatedID]));
          end;
        end;

        DMf.adcAccounting.Execute
          (Format('UPDATE Acc.DocRelated SET RelatedID = 0 WHERE (RelatedID = %d)',
          [Fields[0].AsInteger]));
        DMf.adcAccounting.Execute
          (Format('UPDATE Acc.Documents SET RelatedID = 0 WHERE (RelatedID = %d)',
          [Fields[0].AsInteger]));
        Next;
      end;

      Active := False;
    end;

  end;

  procedure FreeReserveCodeAll(s: String);
  begin
    if get_response(Format('قبل از %s تمامي كاربران از برنامه خارج شوند.!!!!!!',
      [s]) + #13#10 + 'آيا ادامه مي دهيد؟') = mrYes then
      with DMf.qry_Temp do
      begin
        SQL.Text := 'DELETE FROM Util.CodesInProcess';
        ExecSQL;
        BigMessage('انجام شد.', 1);
      end;

  end;

  function CheckExistsImbalanceDoc: boolean;
  var
    SecNumbers: string;
  begin
    with DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text :=
        Format('SELECT Acc.DocGroups.SecondaryDocNo, Acc.Documents.CompanyCode FROM Acc.DocGroups INNER JOIN'
        + ' Acc.Documents ON Acc.DocGroups.Serial = Acc.Documents.Serial AND' +
        ' Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode AND Acc.DocGroups.YearID = Acc.Documents.YearID'
        + ' WHERE (Acc.DocGroups.YearID = %d) GROUP BY Acc.DocGroups.SecondaryDocNo, Acc.DocGroups.YearID, Acc.Documents.CompanyCode'
        + ' HAVING (SUM(Acc.Documents.Debt) - SUM(Acc.Documents.Credit) <> 0)' +
        ' ORDER BY Acc.Documents.CompanyCode, Acc.DocGroups.SecondaryDocNo',
        [APPBank.Year]);
      Active := True;
      if RecordCount > 0 then
      begin
        First;
        if gv_MultiCompany then
        begin
          while not Eof do
          begin
            SecNumbers := SecNumbers + Format('کدشرکت : %d و شماره سند : %d',
              [Fields[1].AsInteger, Fields[0].AsInteger]) + #13#10;
            Next;
          end;
        end
        else
        begin
          while not Eof do
          begin
            SecNumbers := SecNumbers + Fields[0].AsString + ', ';
            Next;
          end;
        end;

        SecNumbers := LeftStr(SecNumbers, Length(SecNumbers) - 2);
        Warn(Format('اسناد ذیل موازنه نمی باشند:%s%s', [#13#10, SecNumbers]));
        Result := True;
      end
      else
        Result := False;
      Active := False;
    end;
  end;

  function CheckExistsImbalanceDocLastYear: boolean;
  var
    SecNumbers: string;
  begin
    with DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text :=
        Format('SELECT DG.SecondaryDocNo FROM [%s].Acc.DocGroups DG INNER JOIN'
        + ' [%s].Acc.Documents D ON DG.Serial = D.Serial AND DG.CompanyCode = D.CompanyCode AND DG.YearID = D.YearID'
        + ' WHERE (DG.YearID = %d) GROUP BY DG.SecondaryDocNo, DG.YearID, D.CompanyCode'
        + ' HAVING (SUM(D.Debt) - SUM(D.Credit) <> 0)',
        [optA.LastAccYear, optA.LastAccYear, APPBank.Year - 1]);
      Active := True;
      if RecordCount > 0 then
      begin
        First;
        while not Eof do
        begin
          SecNumbers := SecNumbers + Fields[0].AsString + ',';
          Next;
        end;
        SecNumbers := LeftStr(SecNumbers, Length(SecNumbers) - 1);
        Warn(Format('اسناد ذیل در سال مالی %d موازنه نمی باشد:%s%s',
          [APPBank.Year - 1, #13#10, SecNumbers]));
        Result := True;
      end
      else
        Result := False;
      Active := False;
    end;
  end;

  function UsedAnalyze: boolean;
  begin
    with DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text :=
        Format('SELECT COUNT(*) FROM Acc.Documents WHERE (YearID = %d) AND (RelatedID > 0)',
        [APPBank.Year]);
      Active := True;
      Result := Fields[0].AsInteger > 1;
      Active := False;
    end;
  end;

  procedure CheckReapetedAidNo(ID: Integer; aidDocNo: Integer; isBed: Integer);
  var
    SecNumbers: string;
  begin
    with DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text :=
        Format('SELECT Acc.DocGroups.SecondaryDocNo FROM Acc.Documents INNER JOIN '
        + 'Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroups.Serial AND Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCode'
        + ' AND Acc.Documents.YearID = Acc.DocGroups.YearID WHERE (AidDocNo = %d) AND (Acc.DocGroups.YearID = %d) '
        + 'AND CASE WHEN Debt > 0 THEN 1 ELSE 0 END = %d AND ( Id <> %d ) GROUP BY Acc.Documents.AidDocNo, Acc.DocGroups.SecondaryDocNo',
        [aidDocNo, APPBank.Year, isBed, ID]);

      Active := True;

      if RecordCount > 0 then
      begin
        First;
        while not Eof do
        begin
          SecNumbers := SecNumbers + Fields[0].AsString + ',';
          Next;
        end;
        SecNumbers := LeftStr(SecNumbers, Length(SecNumbers) - 1);
        Warn(Format
          ('از این شماره کمکی در اسناد با شماره های زیر استفاده شده است: %s %s',
          [#13#10, SecNumbers]));
      end;
      Active := False;
    end;
  end;

  function FloatToTime(TimeFloat: Real): string;
  var
    // f: Real;
    Day: Real;
    Hour: Real;
    Min: Real;
    Symbol1, Symbol2: string;
    DayHour: Real;
  begin
    // if opt.FloatToTimeActive then
    // begin
    // f := RoundTo(Frac(TimeFloat), -4);
    // f := RoundTo(f * 60, 0);
    // Result := FloatToStr(Abs(Int(TimeFloat))) + ':' + FloatToStr(Abs(f));
    // if TimeFloat < 0 then
    // Result := '(' + Result + ')'
    // end
    // else
    // begin
    // Result := FloatToStr(TimeFloat);
    // end;

    if (optP.FloatToTimeActive) and (TimeFloat <> 0) then
    begin
      IF TimeFloat < 0 then
      BEGIN
        Symbol1 := '( ';
        Symbol2 := ')';
      END
      ELSE
      BEGIN
        Symbol1 := '';
        Symbol2 := '';
      END;

      DayHour := DMf.qryDayHourAmount.AsFloat;

      Day := Floor((abs(TimeFloat)));
      Hour := Floor(((abs(TimeFloat) - Day) * DayHour));
      Min := Floor(((abs(TimeFloat) - Day) * DayHour - Hour) * 60);

      if (Day = 0) and (Hour = 0) and (Min = 0) then
        Symbol1 := '-'
      else
        Symbol1 := '';

      if (Day = 0) then
        Symbol1 := Symbol1 + ''
      else
        Symbol1 := Symbol1 + FloatToStr(Day).Trim + 'روز';

      if (Day <> 0) and ((Hour <> 0) or (Min <> 0)) then
        Symbol1 := Symbol1 + 'و'
      else
        Symbol1 := Symbol1 + '';

      if ((Hour <> 0) or (Min <> 0)) then
        Symbol1 := Symbol1 + FloatToStr(Hour).Trim + ':' + FloatToStr(Min).Trim
      else
        Symbol1 := Symbol1 + '';

      Result := Symbol1 + Symbol2

    end
    else
    begin
      Result := FloatToStr(TimeFloat);
    end;
    // RETURN(Select @Symbol1
    // +   case when @Day=0 and @Hour=0 and @Min=0 then '-' else '' end
    // + 	case when @day = 0 then '' else  ltrim(rtrim(str(@Day)))  + ' روز  ' end
    // +   case when @day<>0 and (@Hour<>0 or @Min<>0) then '  و ' else '' end
    // +	case when (@Hour <> 0 or @Min <> 0) then  ltrim(rtrim(str(@Hour))) + ':' + ltrim(rtrim(str(@Min))) else '' end
    // +	@Symbol2)

  end;

  procedure CreateTRIGGER4LinkServer(TableName: string);
  begin
    if opt.LinkServerName <> EmptyStr then
      try
        DMf.adcBSell.Execute('exec dbo.CreateTRIGGER4LinkServer ''' +
          TableName + '''');
      except
        on E: Exception do
        begin
          Warn(' اشکال در LinkServerName ' + E.Message);
        end;

      end;

  end;

  procedure initCombosArz(qryInitForm: TADOQuery;
    CmbArzTypeID, cmbArzTypeIDExchange: TDBComboBox; edtArzRate: TDBEdit);
  var
    How2DisplayArzTypeID: Integer;
  begin
    with DMf.qryTmpTmp do
    begin
      How2DisplayArzTypeID := qryInitForm.FieldByName('How2DisplayArzTypeID')
        .AsInteger;
      if How2DisplayArzTypeID > 0 then
      begin
        Active := False;
        SQL.Text := 'SELECT CurrenciesID, CurrenciesName FROM Currencies';
        Active := True;
        while not Eof do
        begin
          CmbArzTypeID.Items.AddObject(Fields[1].AsString,
            TObject(Fields[0].AsInteger));

          cmbArzTypeIDExchange.Items.AddObject(Fields[1].AsString,
            TObject(Fields[0].AsInteger));

          Next;
        end;
        edtArzRate.ReadOnly := How2DisplayArzTypeID <> 1;
        // EdtAmount.ReadOnly := How2DisplayArzTypeID = 2;
      end;
      Active := False;

    end; // with
  end;

  procedure ReadAllOptionSalary;
  var
    i: Integer;
    NewCurrentDate: String;
  begin
    if ( { (optSub.SubSys[23] <> '1') or  (optSub.SubSys[24] <> '1') or }
      (optSub.Subsys[24] = '1') or (optSub.Subsys[25] = '1')) then
      try

        GetYearMounth(var_glb_CurrentMonth);
        // optP.ServerName := ReadConfig(APPID, 'SqlServerName');
        // opt.ServerName := optP.ServerName;
        // optP.AutoBackup := StrToBool(ReadConfig(APPID, 'AutoBackup', '-1'));

        Interdicts_WarnShow :=
          StrToBool(ReadConfig(APPID, 'Interdicts_WarnShow', '0'));
        APPBank_Budget.Name := DMf.ReadBankConfigPay('BudgetBankName');
        optP.ScanState :=
          StrToBool(IfThen(DMf.ReadBankConfigPay('ScanState') = EmptyStr, '0',
          DMf.ReadBankConfigPay('ScanState')));
        optP.ActiveRangeProject :=
          StrToBool(IfThen(DMf.ReadBankConfigPay('ActiveRangeProject')
          = EmptyStr, '0', DMf.ReadBankConfigPay('ActiveRangeProject')));

        optP.PersonelNoInInterdictNo :=
          StrToBool(IfThen(DMf.ReadBankConfigPay('PersonelNoInInterdictNo')
          = EmptyStr, '0', DMf.ReadBankConfigPay('PersonelNoInInterdictNo')));

        optP.ArchiveScan := DMf.ReadBankConfigPay('ArchiveScan');
        // -----------------------   Account --------------------------------------------
        APPBank.AccAvailable := DMf.ReadBankConfigPay('AccountDBName') <> '';
        AccountDBName := DMf.ReadBankConfigPay('AccountDBName', 'Accounting');
        // -----------------------   OLD Account ----------------------------------------
        optA.AccOldAvailable := DMf.ReadBankConfigPay('AccountDBNameOld') <> '';
        APPBank.AccAvailable := not optA.AccOldAvailable;
        APPBank.AccPath := DMf.ReadBankConfigPay('AccountDBNameOld', '');

        PrintDateEnabled :=
          StrToBool(ReadConfig(APPID, 'VisiblePrintDates', 'True'));
        optP.primaryLanguage :=
          StrToInt(ReadConfig(APPID, 'primaryLanguage', '0'));
        optP.secondaryLanguage :=
          StrToInt(ReadConfig(APPID, 'secondaryLanguage', '0'));

        optP.LanguageDisplay1 := not((optP.secondaryLanguage = 0) and
          (optP.primaryLanguage = 1));
        optP.LanguageDisplay2 := not((optP.secondaryLanguage = 0) and
          (optP.primaryLanguage = 0));

        opt.LanguageDisplay1 := optP.LanguageDisplay1;
        opt.LanguageDisplay2 := optP.LanguageDisplay2;

        opt._ArchivePath := IncludeTrailingPathDelimiter
          (ExtractFilePath(ParamStr(0))) + 'Archive_' + APPBank.Name + '\';
        // optP.StartMaliYear :=opt._StartMaliYear; // DMf.ReadBankConfig('StartMaliYear');
        // optP.FinishMaliYear :=opt._FinishMaliYear;// DMf.ReadBankConfig('FinishMaliYear');

        optP.NoPrintSalaryIDs := DMf.ReadBankConfigPay('NoPrintSalaryIDs');
        optP.InterdictItemSumSalary1 :=
          DMf.ReadBankConfigPay('InterdictItemSumSalary1');
        optP.InterdictItemSumSalary2 :=
          DMf.ReadBankConfigPay('InterdictItemSumSalary2');
        optP.InterdictItem4ListSalary :=
          DMf.ReadBankConfigPay('InterdictItem4ListSalary');

        optP.HideSalaryID4ListSalary :=
          DMf.ReadBankConfigPay('HideSalaryID4ListSalary');
        optP.ChkHideSalaryID4ListSalary :=
          StrToInt(DMf.ReadBankConfigPay('ChkHideSalaryID4ListSalary', '0'));

        if (optP.ChkHideSalaryID4ListSalary > 0) and
          (optP.HideSalaryID4ListSalary = EmptyStr) then
          Warn('كدهاي مخفي در فيش در تنظيمات سيستم بدرستي انتخاب نشده');

        // -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

        // optP.ActiveSalary := DMf.ReadBankConfigPay('ActiveSalary', '1') = '1';
        // optP.ActivePayRoll := DMf.ReadBankConfigPay('ActivePayRoll', '1') = '1';
        // optP.ActiveMange := DMf.ReadBankConfigPay('ActiveMange', '1') = '1';
        // optP.ActiveSchedule := DMf.ReadBankConfigPay('ActiveSchedule',
        // '0') = '1';
        // optP.ActiveOrganization := DMf.ReadBankConfigPay('ActiveOrganization',
        // '0') = '1';
        optP.FunctionKind :=
          StrToInt(DMf.ReadBankConfigPay('FunctionKind', '0'));
        // Sheikh 2015/05/17

        optP.DocTypeCode := StrToInt(DMf.ReadBankConfigPay('DocTypeCode', '7'));

        optP.FunctionDayDefault :=
          StrToInt(DMf.ReadBankConfigPay('FunctionDayDefault', '0'));

        optP.ClockCard4FieldName := DMf.ReadBankConfigPay('ClockCard4FieldName',
          'PersonelNo');

        optP.GovConstAmount := DMf.ReadBankConfigPay('GovConstAmount', '0');
        optP.GovSpouse := DMf.ReadBankConfigPay('GovSpouse', '0');
        optP.GovChild := DMf.ReadBankConfigPay('GovChild', '');

        opt.RoundEntity := -4;

        optP.FloatToTimeActive := DMf.ReadBankConfigPay('FloatToTimeActive',
          '0') = '1';

        optP.FunctionItemSeparation :=
          DMf.ReadBankConfigPay('FunctionItemSeparation', '0') = '1';

        i := StrToInt(DMf.ReadBankConfigPay('SubDayOfCurrentMonth', '5'));
        NewCurrentDate :=
          miladi2Shamsi(IncDay(Shamsi2Miladi(var_glb_CurrentDate), -i));
        var_glb_CurrentMonth := StrToIntDef(copy(NewCurrentDate, 6, 2), 0);

        GetYearMounth(var_glb_CurrentMonth);
        // optP.Year := IntToStr(aAPPBank.Year);

        optP.SituationTime :=
          StrToInt(DMf.ReadBankConfigPay('SituationTime', '0'));

        optP.PonyTaxAble := StrToInt(DMf.ReadBankConfigPay('PonyTaxAble', '0'));

        optP.ChkStateArchiveEdit := DMf.ReadBankConfigPay('ChkStateArchiveEdit',
          '0') = '1';
        optP.ChkGroupInterdicts := DMf.ReadBankConfigPay('ChkGroupInterdicts',
          '0') = '1';

        optP.FunctionActiveMinutes :=
          DMf.ReadBankConfigPay('FunctionActiveMinutes', '0') = '1';

        optP.AccDetailCodeEqualPersonelNo :=
          StrToInt(DMf.ReadBankConfigPay('AccDetailCodeEqualPersonelNo', '0'));

        optP.OffTimeInFish :=
          StrToInt(DMf.ReadBankConfigPay('OffTimeInFish', '0'));
        optP.TaxKindCalc := StrToInt(DMf.ReadBankConfigPay('TaxKindCalc', '1'));

        optP.DecimalOrMinute :=
          StrToInt(DMf.ReadBankConfigPay('DecimalOrMinute', '0'));

        optP.ActAnnuityInlistSalary :=
          StrToInt(DMf.ReadBankConfigPay('ActAnnuityInlistSalary', '0'));

        optP.ActRewardInlistSalary :=
          StrToInt(DMf.ReadBankConfigPay('ActRewardInlistSalary', '0'));

        optP.SalaryID4PartMakeBankDSK :=
          DMf.ReadBankConfigPay('SalaryID4PartMakeBankDSK', '');

        optP.SalaryID4PartKind := DMf.ReadBankConfigPay('SalaryID4PartKind',
          '0').ToInteger;

        optP.OffTimeControlMessages :=
          StrToInt(DMf.ReadBankConfigPay('OffTimeControlMessages', '0'));

        optP.MinBenefitsInsuranceList :=
          StrToCurr(DMf.ReadBankConfigPay('MinBenefitsInsuranceList',
          '1100000'));

        opt.SysSmsActive := DMf.ReadBankConfigPay('SysSmsActive', '0') >= '1';

        optP.EidiDisplayedSeparatelyOnTaxList :=
          DMf.ReadBankConfigPay('EidiDisplayedSeparatelyOnTaxList', '0') = '1';

        optA.SendDoc2OtherSystems := DMf.ReadBankConfigPay
          ('SendDoc2OtherSystems', '0') = '1';

        // SysSmsSendKind := StrToInt(DMf.ReadBankConfigPay('SysSmsActive', '0'));

        DMf.qryDayHour.Open;
        InterdictItemSumSalary(DMf.adcSalary.ConnectionString);

        With DMf.qryTmpTmpp do
        begin
          Active := False;
          SQL.Text :=
            'SELECT FormInfo4Function FROM Pay.FormTypes where FormType=28';
          Active := True;
          optP.FormInfo4Function := Fields[0].AsInteger;
          Active := False;

          SQL.Text := 'SELECT count(LabelID) FROM Pay.FixedLabels ';
          Active := True;
          optP.labelFilterON := Fields[0].AsInteger > 1;
          Active := False;
        end;

      except
        on E: Exception do
        begin
          Warn('اشکال در تنظیمات سیستم حقوق' + E.Message);
        end;
      end;

  end;

  procedure AddChangeType(qryinit: TADOQuery; Pop: TPopupMenu;
    mnu4Click: TNotifyEvent);
  var
    Itm: TMenuItem;
    RecallFormTypes: string;
  begin
    Pop.Items.Clear;
    Pop.AutoHotkeys := maManual;
    with DMf.qryTmpTmp do
      try
        Active := False;
        SQL.Text := 'SELECT FormType, FormCaption';
        SQL.Add('FROM FormTypes');
        RecallFormTypes := qryinit.FieldByName('RecallFormTypes').AsString.Trim;
        if RecallFormTypes = EmptyStr then
          RecallFormTypes := '-1000';
        SQL.Add('WHERE (FormType IN (' + RecallFormTypes + '))');
        Active := True;
        while not Eof do
        begin
          Itm := TMenuItem.Create(Pop);
          Itm.Caption := FieldByName('FormCaption').AsString;
          Itm.Tag := FieldByName('FormType').AsInteger;
          Itm.OnClick := mnu4Click;
          Pop.Items.Add(Itm);
          Next;
        end;
        Active := False;
      finally

      end;
  end;

  procedure InterdictItemSumSalary(Connection_String: string);
  var
    qry: TADOQuery;
    s1, s2: string;
  begin
    s1 := optP.InterdictItemSumSalary1;
    s2 := optP.InterdictItemSumSalary2;
    if s1 = EmptyStr then
      s1 := '0';
    if s2 = EmptyStr then
      s2 := '0';

    qry := TADOQuery.Create(DMf);
    with qry do
      try
        ConnectionString := Connection_String;
        SQL.Text :=
          'if exists (SELECT * FROM dbo.sysobjects where id = object_id(N''Pay.v_InterdictItemSumSalary'') and OBJECTPROPERTY';
        SQL.Add('(id,N''IsView'') = 1)');
        SQL.Add('drop view Pay.v_InterdictItemSumSalary');
        ExecSQL;
        SQL.Text := 'CREATE VIEW Pay.v_InterdictItemSumSalary';
        SQL.Add('AS');
        SQL.Add('SELECT InterdictID,SUM(CASE WHEN SalaryID IN (' + s1 +
          ') THEN Ii.Amount ELSE 0 END) AS Amount1,');
        SQL.Add('SUM(CASE WHEN SalaryID IN (' + s2 +
          ') THEN Ii.Amount ELSE 0 END) AS Amount2,');
        SQL.Add('SUM(CASE WHEN SalaryID IN (' + s1 + ',' + s2 +
          ') THEN Ii.Amount ELSE 0 END) AS AmountSum');
        SQL.Add(',CAST( ROUND(SUM(CASE WHEN SalaryID IN (' + s1 +
          ') THEN Ii.Amount ELSE 0 END)*(CASE WHEN ' +
          '(SELECT TOP 1 CalCulateType FROM Pay.FormsInfo WHERE FormInfoID IN ('
          + s1 + ')) = 6 then 30 else 0.0333333333333333 end), 0) AS Money) as AmountIn30');
        SQL.Add(',CAST( ROUND(SUM(CASE WHEN SalaryID IN (' + s1 +
          ') THEN Ii.Amount ELSE 0 END)*(CASE WHEN ' +
          '(SELECT TOP 1 CalCulateType FROM Pay.FormsInfo WHERE FormInfoID IN ('
          + s1 + ')) = 6 then 30 else 0.0333333333333333 end)');
        SQL.Add('+SUM(CASE WHEN SalaryID NOT IN (' + s1 +
          ') THEN Ii.Amount ELSE 0 END), 0) AS Money) as AmountSumAnd30');
        SQL.Add(',SUM(CASE WHEN F.WageKind = 1 THEN Ii.Amount ELSE 0 END) AS AmountInw');
        SQL.Add(',ROUND(SUM(CASE WHEN F.WageKind = 1 THEN Ii.Amount ELSE 0 END)/30, 0) AS AmountIn30w');
        SQL.Add('FROM Pay.InterdictItems Ii');
        SQL.Add('INNER JOIN Pay.FormsInfo F ON Ii.SalaryID = F.FormInfoID');
        SQL.Add(' GROUP BY InterdictID');
        ExecSQL;
      finally
        Free;
      end;
  end;

  { TMyMenuItem }

  procedure TMyMenuItem.Click;
  var
    i: Integer;
    Selected: String;
  begin
    inherited;
    with RptReportsF.DBGrid1 do
    begin
      if SelectedRows.Count < 1 then
      begin
        Warn('يك ركورد را براي تغيير وضعيت انتخاب كنيد');
        Exit;
      end;
      for i := 0 to SelectedRows.Count - 1 do
      begin
        DataSource.Dataset.GotoBookmark((SelectedRows.Items[i]));
        Selected := Selected + DataSource.Dataset.FieldByName(KeyFieldName)
          .AsString + ',';
      end;
      SetLength(Selected, Length(Selected) - 1);
      with TADOQuery.Create(nil) do
        try
          Connection := DMf.adcBSell;
          SQL.Text := SqlText;
          if Pos('WHERE', UpperCase(SqlText)) = 0 then
            SQL.Add('Where ' + KeyFieldName + ' In (' + Selected + ')')
          else
            SQL.Add('And ' + KeyFieldName + ' In (' + Selected + ')');
          try
            BigMessage(Format('%D ركورد %S شد', [ExecSQL, Caption]), 1);
          except
            Warn('اشكال در تغيير وضعيت');
          end;
        finally
          Free;
        end;
      TADOQuery(DataSource.Dataset).Requery;
    End;
  end;

  procedure TMyMenuItem.SetKeyFieldName(const Value: String);
  begin
    FKeyFieldName := Value;
  end;

  procedure TMyMenuItem.SetSqlText(const Value: String);
  begin
    FSqlText := Value;
  end;

initialization

if not Assigned(Mypop) then
  Mypop := TPopupMenu.Create(nil);

finalization

if Assigned(Mypop) then
  FreeAndNil(Mypop);

end.Pop := TPopupMenu.Create
(nil);

finalization

if Assigned(Mypop) then
  FreeAndNil(Mypop);

end.


