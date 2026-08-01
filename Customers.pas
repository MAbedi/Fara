{ -----------------------------------------------------------------------------
  Unit Name: Customers
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit Customers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, Mask, zAPIBalloon, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ComCtrls, ppTypes, ppParameter, SMSUnit,
  CheckLst, ppDesignLayer, System.ImageList, System.Actions, frPelak,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.Grids, Vcl.DBGrids;

type
  TCustomersF = class(Ttemplate2MDIF)
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
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    edtCustID: TDBEdit;
    DBEdit2: TDBEdit;
    edtMaxCredit: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    dbmmoAddress: TDBMemo;
    DBEdit13: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
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
    DBEdit17: TDBEdit;
    qryCustomersInfoWeight: TFloatField;
    qryCustomersInfoDate: TStringField;
    CmbGrpActionCustomer: TDBComboBox;
    Label13: TLabel;
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
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label12: TLabel;
    CmbValuationType: TDBComboBox;
    CmbServiceCalcType: TDBComboBox;
    LblServiceCalcType: TLabel;
    EdtServicePrice: TDBEdit;
    LblServicePrice: TLabel;
    Label17: TLabel;
    dbmmoCustomerNote: TDBMemo;
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
    qryCustomers__CTopicCodeName2: TStringField;
    qryCustomersContactRate: TBCDField;
    qryCustomersManageName: TStringField;
    qryCustomersManagerSells: TStringField;
    qryCustomersContactNo: TStringField;
    qryCustomersDiscountNote: TStringField;
    qryCustomersDiscount: TFloatField;
    qryCustomersDayTime: TIntegerField;
    qryCustomersConveyKind: TWordField;
    TabSheet3: TTabSheet;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    DBEdit21: TDBEdit;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    edtDiscount: TDBEdit;
    Label30: TLabel;
    DBEdit25: TDBEdit;
    CmbConveyKind: TDBComboBox;
    Label31: TLabel;
    RepCustomers5: TMenuItem;
    CmbArzTypeID: TDBComboBox;
    Label32: TLabel;
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
    dbmmoCustomerNote1: TDBMemo;
    Label34: TLabel;
    actChangeCustID: TAction;
    actChangeCustID1: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    qryCustomersNationalID: TStringField;
    Label35: TLabel;
    DBEdit26: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    actGetExel: TAction;
    BitBtn10: TBitBtn;
    TabSheet4: TTabSheet;
    Label36: TLabel;
    edtInfoWeight: TDBEdit;
    SBtnInfoWeight1: TSpeedButton;
    SBtnInfoWeight2: TSpeedButton;
    RepCustomers6: TMenuItem;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label37: TLabel;
    DBEdit27: TDBEdit;
    qryCustomersMobile: TStringField;
    qryCustomersCustomersRow: TIntegerField;
    DBEdit28: TDBEdit;
    Label38: TLabel;
    btnRow: TBitBtn;
    actCustomersInterView: TAction;
    qryCustomersCustomerActive: TWordField;
    dbchkCustomerActive: TDBCheckBox;
    qryCustomersTechnicalCode: TStringField;
    edtTechnicalCode: TDBEdit;
    Label39: TLabel;
    qryCustomersacc_CTopicCode3: TStringField;
    qryCustomers__CTopicCodeName3: TStringField;
    DBEdit29: TDBEdit;
    Label48: TLabel;
    SpeedButton10: TSpeedButton;
    DBText3: TDBText;
    GroupBox1: TGroupBox;
    CmbaccStateDefault: TDBComboBox;
    qryCustomers__TopicCodeName: TStringField;
    Label49: TLabel;
    DBEdit30: TDBEdit;
    SpeedButton11: TSpeedButton;
    DBText4: TDBText;
    qryCustomersCustAccountNumber: TStringField;
    BitBtn15: TBitBtn;
    edtCustFirstName: TDBEdit;
    qryCustomersCustFirstName: TStringField;
    GroupBox2: TGroupBox;
    cmbGroups: TComboBox;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    btnSelect: TSpeedButton;
    chkAllCusts: TCheckBox;
    TabSheet5: TTabSheet;
    edtCustAccountNumber: TDBEdit;
    Label50: TLabel;
    qryCustomersBankId: TFloatField;
    qryCustomersBankName: TStringField;
    qryCustomersAccountNumber: TStringField;
    qryCustomersBankReports: TStringField;
    qryCustomersAccountKind: TIntegerField;
    qryCustomers_AccountKind: TStringField;
    edtAccountNumber: TDBEdit;
    Label1: TLabel;
    edtBankId: TDBEdit;
    Label33: TLabel;
    edtBankName: TDBEdit;
    Label40: TLabel;
    dblkcbb_AccountKind: TDBLookupComboBox;
    Label41: TLabel;
    qryCustomersacc_TopicCode: TLargeintField;
    tsOtherCustomer: TTabSheet;
    GroupBox3: TGroupBox;
    chklstOtherGroup: TCheckListBox;
    qryCustomersOtherGroups: TADOQuery;
    qryCustomersOtherGroupsCustID: TIntegerField;
    qryCustomersOtherGroupsCustomerGrpID: TIntegerField;
    qryCustomersAlternativeCustID: TLargeintField;
    qryCustomersAlternativeCustID2: TLargeintField;
    edtAlternativeCustID: TDBEdit;
    Label54: TLabel;
    edtAlternativeCustID2: TDBEdit;
    Label68: TLabel;
    frPelakF1: TfrPelakF;
    Label42: TLabel;
    qryCustomersPelak1: TStringField;
    qryCustomersPelak2: TStringField;
    qryCustomersPelak3: TStringField;
    qryCustomersPelak4: TStringField;
    DBGrid1: TCedarDbgrid;
    qryCustomersCustName_L2: TStringField;
    edtCustName_L2: TDBEdit;
    Label43: TLabel;
    qryCustomersTelegramChatID: TStringField;
    edtTelegramChatID: TDBEdit;
    Label44: TLabel;
    qryCustomersPostControl: TWordField;
    cmbPostControl: TDBComboBox;
    Label45: TLabel;
    qryCustomersLastUser: TWideStringField;
    qryCustomersFirstUser: TWideStringField;
    qryCustomersBankIDc: TStringField;
    edtBankIDc: TDBEdit;
    Label46: TLabel;
    dbchkCustomerState: TDBCheckBox;
    qryCustomersCustomerState: TWordField;
    qryCustomersDiscountOne: TFloatField;
    edtDiscountOne: TDBEdit;
    Label47: TLabel;
    actInfoSMSF: TAction;
    Label51: TLabel;
    qryCustomersCarType: TStringField;
    cmbCarType: TDBComboBox;
    qryCustomersCitizenCode: TStringField;
    edtCitizenCode: TDBEdit;
    Label78: TLabel;
    qryCustomersEditDateTime: TDateTimeField;
    TabSheet6: TTabSheet;
    dbtxt_PersonID1: TDBText;
    SpeedButton3: TSpeedButton;
    edtPersonID1: TDBEdit;
    Label10: TLabel;
    qryCustomersPersonID1: TIntegerField;
    qryCustomers_PersonID1: TStringField;
    qryLookUpCust: TADOQuery;
    qryCustomersBroker: TADOQuery;
    qryCustomersBrokerPersonID1: TIntegerField;
    qryCustomersBrokerPersonID2: TIntegerField;
    qryCustomersBroker_PersonID1: TStringField;
    dsCustomersBroker: TDataSource;
    GroupBox4: TGroupBox;
    dbgrdCustomersBroker: TDBGrid;
    DBNavigator1: TDBNavigator;
    qryCustomersStateCode: TIntegerField;
    qryCustomers_Ostan: TStringField;
    qryCustomersCityCode: TIntegerField;
    qryCustomers_Shahr: TStringField;
    Label52: TLabel;
    Label53: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    qryCustomersBlackList: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    qryCustomersBaleChatID: TStringField;
    edtBaleChatID: TDBEdit;
    Label55: TLabel;
    qryCustomersTaxMemoryUniqueId: TStringField;
    Label81: TLabel;
    edtTaxMemoryUniqueId: TDBEdit;
    qryCustomersFarmerUniqueCode: TStringField;
    edtFarmerUniqueCode: TDBEdit;
    Label82: TLabel;
    procedure FormCreate(Sender: TObject);
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
    procedure cmbGroupsChange(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryCustomersBeforePost(DataSet: TDataSet);
    procedure chkAllCustsClick(Sender: TObject);
    procedure qryCustomersServiceCalcTypeChange(Sender: TField);
    procedure actSearch_Execute(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
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
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure actSmsSendExecute(Sender: TObject);
    procedure chklstOtherGroupDblClick(Sender: TObject);
    procedure chklstOtherGroupClick(Sender: TObject);
    procedure qryCustomersAfterEdit(DataSet: TDataSet);
    procedure actInfoSMSFExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dbgrdCustomersBrokerEditButtonClick(Sender: TObject);
    procedure dbgrdCustomersBrokerKeyPress(Sender: TObject; var Key: Char);
    procedure qryCustomersBrokerAfterInsert(DataSet: TDataSet);
    procedure qryCustomersBrokerBeforeEdit(DataSet: TDataSet);
    procedure qryCustomersBrokerBeforePost(DataSet: TDataSet);
    procedure qryCustomersBrokerBeforeInsert(DataSet: TDataSet);
    procedure qryCustomers_OstanChange(Sender: TField);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
  private
    WHERESQL: String;
    AccDetailCodeEqualCustID: Boolean;
    InfoWeight1, InfoWeight2: Real;
    GroupType: Integer;
    CustomerCaption, mySelected, GrpIDInCmb, OrginalSQL: String;
    DataSetInsert: Boolean;
    procedure GetInfoWeight(TypeNo: Byte);
    procedure initCarType;

    // procedure UpDateList(kind: Byte);
    { Private declarations }
  public
    procedure Enter(CustID: string);
    { Public declarations }
  end;

var
  CustomersF: TCustomersF;

implementation

uses DM, GlobalPro, mmessage, searchCode_ADO, search2, FormFunctions,
  DBGrid2Print,  GetExcel, sort2, selected, CustomersInterView,
  mdiMain, CPortFunctions, FaraConsts, Marketting, ViewFileOnServer, infoSMS;

{$R *.dfm}

procedure TCustomersF.FormCreate(Sender: TObject);
var
  i: Byte;
  NewItem: TMenuItem;
  kind: String;
begin
  inherited;
  chkAllCusts.Visible := (not opt.ChkUsersCustomersGroupsActive) or
    (User.PowerUser);
  CreateComPort;
  OrginalSQL := qryCustomers.SQL.Text;
  GroupType := var_glb_gParam;
  chklstOtherGroup.Enabled := GroupType = 8;
  SetLookUpCash(qryCustomersBroker);

  CustomerCaption := CustGroupsNames[GroupType];
  Caption := 'معرفي ' + CustomerCaption;
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
  SBtnInfoWeight1.Visible := (User.level > 5);
  SBtnInfoWeight2.Visible := (User.level > 5);
  qryCustomers.FieldByName('MaxCredit').ReadOnly := User.level < 12;
  SetLookUpCash(qryCustomers);
  AccDetailCodeEqualCustID := DMF.ReadBankConfig('AccDetailCodeEqualCustID',
    '0') = '1';

  // if opt.AccOldAvailable then
  // begin
  // qryCustomers.FieldByName('__DetailCode').LookupResultField:='Desc';
  // qryCustomers.FieldByName('__CTopicCodeName2').LookupResultField:='Desc';
  // qryCustomers.FieldByName('__CTopicCodeName2').LookupKeyFields:='CTopicCode';
  // qryCustomers.FieldByName('__CTopicCodeName').LookupResultField:='Desc';
  //
  // end;//if

  LblServiceCalcType.Enabled := DMF.ReadBankConfig('SecondCustomerAvailable',
    '0') = '1';
  LblServicePrice.Enabled := LblServiceCalcType.Enabled;
  EdtServicePrice.Enabled := LblServiceCalcType.Enabled;
  CmbServiceCalcType.Enabled := LblServiceCalcType.Enabled;
  GrpIDInCmb := InitCombos(cmbGroups,
    'SELECT CustomerGrpID, CustomerGrpName+SPACE((SELECT MAX(LEN(CustomerGrpName))+2 FROM CustomersGroup WHERE GroupType='
    + IntToStr(GroupType) +
    ')-LEN(CustomerGrpName)) + ''از كد'' + str(StartCode)' +
    '+ '' تا كد '' + str(FinishCode) AS  CustomerGrpName ' +
    ' FROM CustomersGroup  WHERE (GroupType = ' + IntToStr(GroupType) +
    ') AND (FinishCode <> 0) ' + SetWhereCustGroups +
    ' ORDER BY CustomerGrpID');
  if cmbGroups.Items.Count > 0 then
  begin
    cmbGroups.ItemIndex := 0;
    cmbGroupsChange(cmbGroups);
  end; // if

  InitDBCombos(CmbGrpActionCustomer,
    'SELECT LookUpID,Name FROM LookUps WHERE(Kind = 250) ORDER BY Code');
  kind := DMF.ReadBankConfig('ArzTypeID', '0');
  if kind <> '' then
    InitDBCombos(CmbArzTypeID, 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = '
      + kind + ') ORDER BY Code');
  // Sheikh 2015/06/22
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
  initCarType;
end;

procedure TCustomersF.initCarType;
begin
  cmbCarType.Clear;
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT DISTINCT CarType FROM Customers ORDER BY CarType';
    Active := True;
    while not Eof do
    begin
      cmbCarType.Items.Add(Trim(Fields[0].AsString));
      Next;
    end;
    Active := False;
  end;
end;

procedure TCustomersF.ALLLookUpGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TCustomersF.ALLLookUpSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TCustomersF.srcCustomersStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCustomers.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, '', '', self.Name);
end;

procedure TCustomersF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryCustomers)
end;

procedure TCustomersF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes(qryCustomersPersonID1, '0')
end;

procedure TCustomersF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TCustomersF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if cmbGroups.ItemIndex = 0 then
    Text := 'همـــه گروهها'
  else
    Text := cmbGroups.Text;
end;

procedure TCustomersF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCustomersF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCustomers.DisableControls;
    PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryCustomers.EnableControls;
  end; // try
end;

procedure TCustomersF.qryCustomersAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TCustomersF.qryCustomersAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
  DataSet.FieldByName('EditDateTime').AsDateTime := Now;
end;

procedure TCustomersF.qryCustomersAfterInsert(DataSet: TDataSet);
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
        aRange := '0 and 999999999';
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
  if AccDetailCodeEqualCustID then
    qryCustomers.FieldByName('acc_DetailCode').AsInteger :=
      DataSet.FieldByName('CustID').AsInteger;
  GetInfoWeight(1);
  edtCustID.SetFocus;
end;

procedure TCustomersF.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DMf.qryOstan.Open;
  qryCustomers_OstanChange(nil);
end;

procedure TCustomersF.GetInfoWeight;
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

procedure TCustomersF.qryCustomersAfterPost(DataSet: TDataSet);
begin
  inherited;
  CustIDToDetailCode(qryCustomers, GroupType);
  // sheikh 2015/06/22
  SaveOtherCustomers(qryCustomersOtherGroups, qryCustomers, chklstOtherGroup);
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
  initCarType;

end;

procedure TCustomersF.qryCustomersBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين  ' + CustomerCaption + ' مطمئن هستيد؟') <> mrYes
  then
    Abort;
end;

procedure TCustomersF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryCustomers, 'acc_CTopicCode3', '', False)
end;

procedure TCustomersF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryCustomers)
end;

procedure TCustomersF.SpeedButton1Click(Sender: TObject);
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
    + 'ها  ', txt, ['کد', 'نام گروه'], alLeft);
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

procedure TCustomersF.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TCustomersF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCustomersF.qryCustomersServiceCalcTypeChange(Sender: TField);
begin
  inherited;
  EdtServicePrice.Enabled := qryCustomersServiceCalcType.AsInteger in [1, 2, 3];
  LblServicePrice.Enabled := EdtServicePrice.Enabled;
end;

procedure TCustomersF.cmbGroupsChange(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  UpDateListCustomers(1, qryCustomers, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL);
  For i := 0 to Mnu_AllClick.Count - 1 do
  begin
    Mnu_AllClick.Items[i].Checked :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex])
      = Mnu_AllClick.Items[i].Tag;
    Mnu_AllClick.Items[i].Default := Mnu_AllClick.Items[i].Checked;
    InitChkList(chklstOtherGroup, cmbGroups);;
  end;
end;

procedure TCustomersF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1, actSmsSend);
end;

procedure TCustomersF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryCustomers, nil, SmsCustomers, 0, GroupType, 1);
end;

procedure TCustomersF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustomers);
end;

procedure TCustomersF.qryCustomersBeforePost(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  qryCustomersTechnicalCode.AsString := frPelakF1.Pelak;
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
      zbal.Title := 'كد نامعتبر';
      zbal.Prompt.Text := 'كد جديد تخصيص يافته خارج ازمحدوده تعريف شده است.';
      zbal.Show(edtCustID);
      edtCustID.SetFocus;
      Abort;
    end; // if
  end; // with
  // if get_response('تغييرات ذخيره شوند؟')<>mrYes then abort;
  TrimStringFields(qryCustomers);

  // if not
  UnicFieldName(DataSet.FieldByName('CustID'), DataSet.FieldByName('CustName'),
    'Customers', qryCustomersCustomerGrpID.AsInteger);
  // then    Abort;

  // if (qryCustomersHCKharidarTypeCode.AsInteger = 1) then
  if not ValidateCodeMeli(qryCustomers.FieldByName('NationalID').AsString) then
  begin
    Warn('كد ملي معتبر نمي باشد');
    Abort;
  end;

  if not IsValidIBAN(qryCustomers.FieldByName('CustAccountNumber').AsString)
  then
  begin
    Warn('شماره شبا معتبر نمي باشد');
  end;

  if UnicFieldMobile(qryCustomers) then
    Abort;

  if ((opt.AllControls and Integer(CHkUnicNationalID)) <> 0) or
    ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0) then
  begin
    b := UnicFieldName(DataSet.FieldByName('CustID'),
      DataSet.FieldByName('NationalID'), 'Customers', 0);
    if not b and ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0)
    then
      Abort;
  end;
  if qryCustomersBroker.Active then
    if (qryCustomersBroker.State in dsEditModes) then
      qryCustomersBroker.Post;
  // if ((opt.AllControls and Integer(CHkUnicRegisterNumber)) <> 0) or
  // ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0) then
  // begin
  // b := UnicFieldName(DataSet.FieldByName('CustID'),
  // DataSet.FieldByName('RegisterNumber'), 'Customers', 0);
  // if not b and ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0)
  // then
  // Abort;
  // end;

end;

procedure TCustomersF.qryCustomersBrokerAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PersonID2').AsInteger :=
    qryCustomers.FieldByName('CustID').AsInteger;
end;

procedure TCustomersF.qryCustomersBrokerBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit
end;

procedure TCustomersF.qryCustomersBrokerBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit
end;

procedure TCustomersF.qryCustomersBrokerBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TCustomersF.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  UpDateListCustomers(2, qryCustomers, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL)
end;

procedure TCustomersF.chklstOtherGroupClick(Sender: TObject);
begin
  inherited;
  // if not (qryCustomers.State in dsEditModes) then
  // Exit;
  if not(qryCustomers.State in dsEditModes) then
    qryCustomers.Edit;
end;

procedure TCustomersF.chklstOtherGroupDblClick(Sender: TObject);
begin
  inherited;

end;

// procedure TCustomersF.UpDateList;
// var
// GrpID: Integer;
// begin
// qryCustomers.SQL.Text := OrginalSQL;
// if cmbGroups.ItemIndex = -1 then
// GrpID := 0
// else
// GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
// case kind of
// 1:
// begin
// with qryCustomers do
// begin
// Active := False;
// Parameters.ParamByName('CustomerGrpIDForm').Value := GrpID;
// Parameters.ParamByName('CustomerGrpIDTo').Value := GrpID;
// Active := True;
// end; // with
// end;
// 2:
// begin
// if chkAllCusts.Checked then
// begin
// cmbGroups.Enabled := False;
// with qryCustomers do
// begin
// Active := False;
// Parameters.ParamByName('CustomerGrpIDForm').Value := 0;
// Parameters.ParamByName('CustomerGrpIDTo').Value := 2147483647;
// Active := True;
// end; // with
// chkAllCusts.Checked;
// end // if
// else
// begin
// cmbGroups.Enabled := True;
// with qryCustomers do
// begin
// Active := False;
// Parameters.ParamByName('CustomerGrpIDForm').Value := GrpID;
// Parameters.ParamByName('CustomerGrpIDTo').Value := GrpID;
// Active := True;
// end; // with
// chkAllCusts.Checked := False;
// end; // if
// end;
// 3:
// begin
// if Length(mySelected) > 1 then
// with qryCustomers do
// begin
// cmbGroups.ItemIndex := -1;
// Active := False;
// SQL.Text := StringReplace(OrginalSQL,
// 'between :CustomerGrpIDForm and :CustomerGrpIDTO',
// 'in(' + mySelected + ')', [rfReplaceAll]);
// Active := True;
// end; // with
// end;
// end;
//
// end;

procedure TCustomersF.actSearch_Execute(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 9] of String;
  i: Integer;
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    i := 0
  else
    i := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  txt := 'SELECT  CustID, ISNULL(CustFirstName, '''') + '' '' + CustName AS CustName,'
    + 'Tel,Fax,Address,FirstBalance,CustomerGrpID,''‏''+TechnicalCode+''ایران'' AS TechnicalCode '
    + ',Mobile,NationalID FROM Customers ' +
    'WHERE CustomerGrpID in (SELECT CustomerGrpID FROM CustomersGroup WHERE GroupType = '
    + IntToStr(GroupType) + ')';
  if not chkAllCusts.Checked then
    txt := 'SELECT  CustID, ISNULL(CustFirstName, '''') + '' '' + CustName AS CustName'
      + ',Tel,Fax,Address,FirstBalance,CustomerGrpID,''‏''+TechnicalCode+''ایران'' AS TechnicalCode '
      + ',Mobile,NationalID  FROM Customers ' + 'WHERE     CustomerGrpID = ' +
      IntToStr(i);
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, '  ' + CustomerCaption +
    ' ها  ', txt, ['کد', 'نام', 'تلفن', 'فکس', 'آدرس', 'مانده ابتداي سال', '',
    'شماره پلاک', 'تلفن همراه', 'کدملی'], Results, [30, 150, 80, 80, 200, 100,
    0, 100, 80, 80], alLeft);
  if b then
  begin
    for i := 0 to cmbGroups.Items.Count - 1 do
      if Integer(cmbGroups.Items.Objects[i]) = StrToInt(Results[6]) then
        Break;
    cmbGroups.ItemIndex := i;
    qryCustomers.Locate('CustID', Results[0], []);

  end; // if
end;

procedure TCustomersF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  // cmbGroups.DroppedDown := True;
end;

procedure TCustomersF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCustomers.FieldByName('CustID'));
end;

procedure TCustomersF.ppLBGroupsGetText(Sender: TObject; var Text: String);
begin
  inherited;
  if chkAllCusts.Checked = True then
    Text := 'همه گروه ها'
  else
    Text := 'گروه : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

procedure TCustomersF.ppTxtServiceCalcTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CmbServiceCalcType.Items.Strings[StrToInt(Text)]
end;

procedure TCustomersF.AllClickClick(Sender: TObject);
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

procedure TCustomersF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryCustomers)
end;

procedure TCustomersF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryCustomers)
end;

procedure TCustomersF.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

procedure TCustomersF.DBEdit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

procedure TCustomersF.dbgrdCustomersBrokerEditButtonClick(Sender: TObject);
begin
  inherited;
  If dbgrdCustomersBroker.SelectedIndex = 0 then
  begin

    if not(qryCustomersBroker.State in dsEditModes) then
      qryCustomersBroker.Edit;
    SpeedButtonCustomersGroupTypes(qryCustomersBrokerPersonID1, '0')
  end;
end;

procedure TCustomersF.dbgrdCustomersBrokerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    dbgrdCustomersBrokerEditButtonClick(Sender);
  if Key = #13 then
    qryCustomersBroker.Append;
end;

procedure TCustomersF.qryCustomersCustIDChange(Sender: TField);
begin
  inherited;
  if AccDetailCodeEqualCustID then
    qryCustomers.FieldByName('acc_DetailCode').AsInteger := Sender.AsInteger;

end;

procedure TCustomersF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger];
end;

procedure TCustomersF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TCustomersF.N10Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TCustomersF.N4Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustomers);
end;

procedure TCustomersF.BitBtn15Click(Sender: TObject);
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

procedure TCustomersF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCustomersF.actViewFileExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(qryCustomers.FieldByName('CustID').AsString,
    'CustomersFiles', False);
end;

procedure TCustomersF.Mnu_AllClickClick(Sender: TObject);

begin
  inherited;
  ChangeCustomerGroup(Sender, qryCustomers, CustomerCaption)
end;

procedure TCustomersF.sdPopup(Sender: TObject);
begin
  inherited;
  Mnu_AllClick.Caption := 'تغيير گروه  ' + CustomerCaption + ' <> ' +
    qryCustomers.FieldByName('CustID').AsString
end;

procedure TCustomersF.qryCustomersBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  // CustID:=qryCustomers.Fieldbyname('CustID').AsInteger
end;

procedure TCustomersF.actChangeCustIDExecute(Sender: TObject);
begin
  inherited;
  ChangeCustID(qryCustomers, cmbGroups, CustomerCaption)
end;

procedure TCustomersF.actGetExelExecute(Sender: TObject);
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

procedure TCustomersF.actInfoSMSFExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryCustomers, 'Mobile', False);
end;

procedure TCustomersF.SBtnInfoWeight1Click(Sender: TObject);
begin
  inherited;
  GetInfoWeight(1)
end;

procedure TCustomersF.SBtnInfoWeight2Click(Sender: TObject);
begin
  inherited;
  GetInfoWeight(2)
end;

procedure TCustomersF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
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
  With qryCustomersBroker do
  begin
    Active := False;
    Parameters.ParamByName('CustID').Value := qryCustomers.FieldByName('CustID')
      .AsInteger;
    Active := True;
  end;
  DMf.qryOstan.Open;
  qryCustomers_OstanChange(nil);

end;

procedure TCustomersF.btnSelectClick(Sender: TObject);
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
      mySelected, GrpIDInCmb, WHERESQL);

end;

procedure TCustomersF.btnRowClick(Sender: TObject);
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
    while not Eof do
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

procedure TCustomersF.actCustomersInterViewExecute(Sender: TObject);
begin
  inherited;
  mdiMainF.actCustomersInterView.Execute
end;

procedure TCustomersF.Enter(CustID: string);
begin
  CreateMDIForm2(TCustomersF, CustomersF, MarkettingF);
  with CustomersF do
  begin
    chkAllCusts.Checked := True;
    with qryCustomers do
    begin
      DisableControls;
      Close;
      Filter := 'CustID=' + CustID;
      Filtered := True;
      Open;
      EnableControls;
    end;
  end;
end;

procedure TCustomersF.qryCustomers_OstanChange(Sender: TField);
begin
  inherited;
  With DMf.qryShahr do
  begin
    Active := False;
    Parameters.ParamByName('OstanCode').Value :=
      qryCustomersStateCode.AsInteger;
    Active := True
  end
end;


end.
