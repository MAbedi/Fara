{ -----------------------------------------------------------------------------
  Unit Name: Sellers
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit Sellers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, Mask, zAPIBalloon, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ComCtrls, ppParameter, sndkey32, SMSUnit,
  CheckLst, ReciptsFunctions, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.Grids, Vcl.DBGrids;

type
  TSellersF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    srcCustomers: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    zbal: TzAPIBalloon;
    actPrint: TAction;
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
    lblCode: TLabel;
    lblName: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    dbedtCustName: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    qryCustomersCustomerNote: TStringField;
    ppReport1: TppReport;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel5: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppDBPipeline1: TppDBPipeline;
    BitBtn6: TBitBtn;
    ppReport2: TppReport;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel35: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine8: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel36: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine9: TppLine;
    ppLine10: TppLine;
    qryCustomers__DetailCode: TStringField;
    actSendExel: TAction;
    PopMPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    actSort: TAction;
    BitBtn9: TBitBtn;
    qryCustomersValuationType: TWordField;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit17: TDBEdit;
    qryCustomersInfoWeight: TFloatField;
    qryCustomersInfoDate: TStringField;
    qryCustomersGrpActionCustomer: TWordField;
    CmbGrpActionCustomer: TDBComboBox;
    Label12: TLabel;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label22: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    Label24: TLabel;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label11: TLabel;
    edtacc_DetailCode: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    TabSheet2: TTabSheet;
    DBMemo2: TDBMemo;
    qryCustomersacc_CTopicCode: TStringField;
    qryCustomersacc_CTopicCode2: TStringField;
    qryCustomers__CTopicCodeName: TStringField;
    qryCustomers__CTopicCodeName2: TStringField;
    qryCustomersContactRate: TBCDField;
    qryCustomers: TADOQuery;
    qryCustomersManageName: TStringField;
    qryCustomersManagerSells: TStringField;
    qryCustomersContactNo: TStringField;
    qryCustomersDiscountNote: TStringField;
    qryCustomersDiscount: TFloatField;
    qryCustomersDayTime: TIntegerField;
    qryCustomersConveyKind: TWordField;
    TabSheet3: TTabSheet;
    Label25: TLabel;
    edtManageName: TDBEdit;
    Label26: TLabel;
    DBEdit21: TDBEdit;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    Label30: TLabel;
    DBEdit25: TDBEdit;
    CmbConveyKind: TDBComboBox;
    Label31: TLabel;
    popMnuGroups: TPopupMenu;
    Mnu_AllClick: TMenuItem;
    MenuItem3: TMenuItem;
    N7: TMenuItem;
    BitBtn10: TBitBtn;
    actgetExcel: TAction;
    TabSheet4: TTabSheet;
    qryCustomersGroup: TADOQuery;
    qryCustomersCustomerGrpID2: TIntegerField;
    qryCustomers_CustomerGrpID2: TStringField;
    Label47: TLabel;
    dbedtCustomerGrpID2: TDBEdit;
    btnCustomerGrpID2: TSpeedButton;
    dbtxt_CustomerGrpID2: TDBText;
    qryCustomersInsertAutoEffectID: TIntegerField;
    qryCustomersEffectID: TIntegerField;
    Label17: TLabel;
    dbedtInsertAutoEffectID: TDBEdit;
    btnInsertAutoEffectID: TSpeedButton;
    dbtxt_InsertAutoEffectID: TDBText;
    Label19: TLabel;
    dbedtEffectID: TDBEdit;
    btnEffectID: TSpeedButton;
    dbtxt_EffectID: TDBText;
    qryPurchaseEffect: TADOQuery;
    qryCustomers_InsertAutoEffectID: TStringField;
    qryCustomers_EffectID: TStringField;
    qryCustomersManag: TADOQuery;
    qryCustomersManagPersonID1: TIntegerField;
    qryCustomersManagJobCode: TIntegerField;
    qryCustomersManag_JobCode: TStringField;
    qryCustomersManagManagName: TWideStringField;
    qryCustomersManagMobile: TStringField;
    qryCustomersManagTel: TStringField;
    qryCustomersManagFax: TStringField;
    qryCustomersManagEmail: TStringField;
    qryCustomersManagBirthDate: TStringField;
    qryCustomersManagMarriageDate: TStringField;
    qryCustomersManagState: TWordField;
    qryCustomersManagSendKind: TIntegerField;
    qryCustomersManag_SendKind: TStringField;
    dsCustomersManag: TDataSource;
    TabSheet5: TTabSheet;
    grdCustomersManag: TDBGrid;
    Panel9: TPanel;
    BitBtn14: TBitBtn;
    qrySellsInfo46SendKind: TADOQuery;
    qrySellsInfo52Job: TADOQuery;
    qryCustomersAccountNumber: TStringField;
    edtAccountNumber1: TDBEdit;
    Label32: TLabel;
    qryCustomersPurchasePercent: TFloatField;
    Label33: TLabel;
    DBEdit27: TDBEdit;
    TabSheet6: TTabSheet;
    DBGridCustomersCapacity: TDBGrid;
    Panel5: TPanel;
    BitBtn11: TBitBtn;
    qryCustomersCapacity: TADOQuery;
    qryCustomersCapacityCustID: TIntegerField;
    qryCustomersCapacityStuffCode: TLargeintField;
    qryCustomersCapacityAmount: TFloatField;
    qryCustomersCapacityPrice: TBCDField;
    qryCustomersCapacityRunDate: TStringField;
    qryCustomersCapacityStates: TWordField;
    qryStuffCode: TADOQuery;
    qryCustomersCapacity_StuffCode: TStringField;
    qryCustomersCapacity_UnitName: TStringField;
    srcCustomersCapacity: TDataSource;
    actSelected: TAction;
    BitBtn12: TBitBtn;
    qryCustomersacc_CTopicCode3: TStringField;
    qryCustomers__CTopicCodeName3: TStringField;
    DBText3: TDBText;
    SpeedButton10: TSpeedButton;
    DBEdit29: TDBEdit;
    Label48: TLabel;
    qryCustomers__TopicCodeName: TStringField;
    DBText4: TDBText;
    SpeedButton11: TSpeedButton;
    DBEdit30: TDBEdit;
    Label49: TLabel;
    qryCustomersCustAccountNumber: TStringField;
    edtCustAccountNumber: TDBEdit;
    Label34: TLabel;
    qryCustomersMobile: TStringField;
    qryCustomersTel2: TWideStringField;
    DBEdit28: TDBEdit;
    Label35: TLabel;
    DBEdit31: TDBEdit;
    Label36: TLabel;
    DBEdit32: TDBEdit;
    Label37: TLabel;
    qryCustomersNationalID: TStringField;
    qryCustomersRegisterNumber: TStringField;
    edtRegisterNumber: TDBEdit;
    Label38: TLabel;
    CmbArzTypeID: TDBComboBox;
    Label39: TLabel;
    qryCustomersArzTypeID: TIntegerField;
    BitBtn15: TBitBtn;
    GroupBox1: TGroupBox;
    cmbGroups: TComboBox;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    chkAllCusts: TCheckBox;
    TabSheet8: TTabSheet;
    edtCustAccountNumber1: TDBEdit;
    Label50: TLabel;
    edtAccountNumber: TDBEdit;
    Label1: TLabel;
    edtBankId: TDBEdit;
    Label40: TLabel;
    edtBankName: TDBEdit;
    Label41: TLabel;
    dblkcbb_AccountKind: TDBLookupComboBox;
    Label42: TLabel;
    qryCustomersBankId: TFloatField;
    qryCustomersBankName: TStringField;
    qryCustomers_AccountKind: TStringField;
    qryCustomersAccountKind: TIntegerField;
    qryCustomersacc_TopicCode: TLargeintField;
    tsOtherGroups: TTabSheet;
    GroupBox3: TGroupBox;
    chklstOtherGroup: TCheckListBox;
    qryCustomersOtherGroups: TADOQuery;
    qryCustomersOtherGroupsCustID: TIntegerField;
    qryCustomersOtherGroupsCustomerGrpID: TIntegerField;
    CmbValuationType: TDBComboBox;
    Label43: TLabel;
    qryCustomersCustomerActive: TWordField;
    dbchkCustomerActive: TDBCheckBox;
    DBGrid1: TCedarDbgrid;
    qryCustomersCustFirstName: TStringField;
    edtCustFirstName: TDBEdit;
    Label44: TLabel;
    qryCustomersCustName_L2: TStringField;
    edtCustName_L2: TDBEdit;
    Label45: TLabel;
    qryCustomersAlternativeCustID: TLargeintField;
    edtAlternativeCustID: TDBEdit;
    Label46: TLabel;
    qryCustomersLastUser: TWideStringField;
    qryCustomersFirstUser: TWideStringField;
    qryCustomersHCKharidarTypeCode: TWordField;
    cmbHCKharidarTypeCode: TDBComboBox;
    Label67: TLabel;
    actViewFile: TAction;
    qryCustomersEditDateTime: TDateTimeField;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    qryCustomersAccount: TADOQuery;
    qryCustomersAccountID: TAutoIncField;
    qryCustomersAccountCustID: TIntegerField;
    qryCustomersAccountBankName: TStringField;
    qryCustomersAccountBranchCode: TStringField;
    qryCustomersAccountAccountNumber: TStringField;
    qryCustomersAccountAccountKind: TIntegerField;
    qryCustomersAccountAccountHolderName: TStringField;
    qryCustomersAccountIbanNumber: TStringField;
    qryCustomersAccountBankIDc: TStringField;
    DBGrid2: TDBGrid;
    srcCustomersAccount: TDataSource;
    qryCustomersAccount_AccountKind: TStringField;
    Panel7: TPanel;
    BitBtn13: TBitBtn;
    edtManageName1: TDBEdit;
    Label2: TLabel;
    TabSheet7: TTabSheet;
    qryCustomerLookUpInfo: TADOQuery;
    srcCustomerLookUpInfo: TDataSource;
    DBGrid3: TDBGrid;
    qryCustomerLookUpInfoCustID: TIntegerField;
    qryCustomerLookUpInfo_LookUpID: TStringField;
    qryCustomerLookUpInfo_LookUpItemID: TStringField;
    qry_Lookup: TADOQuery;
    qryCustomerLookUpInfoLookUpID: TIntegerField;
    qryCustomerLookUpInfoLookUpItemID: TIntegerField;
    actChangeCustID1: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    qryCustomersStateCode: TIntegerField;
    qryCustomers_Ostan: TStringField;
    qryCustomersCityCode: TIntegerField;
    qryCustomers_Shahr: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label79: TLabel;
    actCustomersInterView: TAction;
    BitBtn16: TBitBtn;
    edtCustName_LZ: TDBEdit;
    Label3: TLabel;
    qryCustomersCustomerState: TWordField;
    dbchkCustomerState: TDBCheckBox;
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
    procedure srcCustomersDataChange(Sender: TObject; Field: TField);
    procedure DBEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure actPrint1Execute(Sender: TObject);
    procedure qryCustomersServiceCalcTeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cmbGroupsChange(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryCustomersBeforePost(DataSet: TDataSet);
    procedure chkAllCustsClick(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryCustomersGrpActionCustomerGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryCustomersGrpActionCustomerSetText(Sender: TField;
      const Text: String);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure Mnu_AllClickClick(Sender: TObject);
    procedure PopMPrintPopup(Sender: TObject);
    procedure actgetExcelExecute(Sender: TObject);
    procedure btnCustomerGrpID2Click(Sender: TObject);
    procedure SpeedButtonClick(Sender: TObject);
    procedure qryCustomersCustIDChange(Sender: TField);
    procedure grdCustomersManagKeyPress(Sender: TObject; var Key: Char);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure qryCustomersManagStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryCustomersManagStateSetText(Sender: TField; const Text: String);
    procedure qryCustomersManagAfterInsert(DataSet: TDataSet);
    procedure qryCustomersCapacityAfterInsert(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure qryCustomersCapacityStatesGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryCustomersCapacityStatesSetText(Sender: TField;
      const Text: string);
    procedure DBGridCustomersCapacityEditButtonClick(Sender: TObject);
    procedure actSelectedExecute(Sender: TObject);
    procedure srcCustomersCapacityStateChange(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure ALLLookUpGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLLookUpSetText(Sender: TField; const Text: String);
    procedure BitBtn15Click(Sender: TObject);
    procedure actSmsSendExecute(Sender: TObject);
    procedure chklstOtherGroupDblClick(Sender: TObject);
    procedure qryCustomersAfterEdit(DataSet: TDataSet);
    procedure actViewFileExecute(Sender: TObject);
    procedure qryCustomersAccountAfterInsert(DataSet: TDataSet);
    procedure srcCustomersAccountStateChange(Sender: TObject);
    procedure qryCustomerLookUpInfoAfterInsert(DataSet: TDataSet);
    procedure qryCustomerLookUpInfoAfterPost(DataSet: TDataSet);
    procedure qryCustomerLookUpInfoAfterScroll(DataSet: TDataSet);
    procedure qryCustomerLookUpInfoBeforePost(DataSet: TDataSet);
    procedure qryCustomerLookUpInfoLookUpIDChange(Sender: TField);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure actChangeCustID1Execute(Sender: TObject);
    procedure qryCustomers_OstanChange(Sender: TField);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
    procedure actCustomersInterViewExecute(Sender: TObject);
  private
    GroupType: Integer;
    DataSetInsert: Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure initqryCustomerLookUpInfo(IsChange: Boolean);
    // procedure InitDBCombos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SellersF: TSellersF;

implementation

uses DM, GlobalPro, mmessage, searchCode_ADO, FormFunctions,
  GetExcel, sort2, FaraConsts, selected, mdiMain, ViewFileOnServer;

{$R *.dfm}

procedure TSellersF.FormCreate(Sender: TObject);
var
  i: Byte;
  NewItem: TMenuItem;
  kind: String;
begin
  inherited;
  RequiredCustomers(qryCustomers, nil);
  AddcmbHCKharidarTypeCode(cmbHCKharidarTypeCode);

  qryCustomersGroup.Open;
  InitConstTypeOfSale(CmbValuationType);
  PageControl1.TabIndex := 0;
  GroupType := var_glb_gParam;
  qryCustomers.Parameters.ParamByName('GroupType').Value := GroupType;
  Caption := CustGroupsNames[GroupType];
  GroupBox1.Caption := GroupBox1.Caption + Caption;
  lblCode.Caption := lblCode.Caption + Caption;
  lblName.Caption := lblName.Caption + Caption;
  qryCustomers.FieldByName('CustName').ReadOnly := opt.EditCustNameLevelID;

  SetLookUpCash(qryCustomers);
  // if opt.AccOldAvailable then
  // begin
  // qryCustomers.FieldByName('__DetailCode').LookupResultField:='Desc';

  // qryCustomers.FieldByName('__CTopicCodeName2').LookupResultField:='Desc';
  // qryCustomers.FieldByName('__CTopicCodeName').LookupResultField:='Desc';
  //
  // end;//if
  InitCombos(cmbGroups,
    'SELECT CustomerGrpID, CustomerGrpName + ''            «“ ﬂœ '' + ltrim(str(StartCode))'
    + '+ ''  « ﬂœ '' + ltrim(str(FinishCode)) AS  CustomerGrpName ' +
    ' FROM CustomersGroup  WHERE (GroupType = ' + IntToStr(GroupType) + ') ' +
    SetWhereCustGroups + ' ORDER BY CustomerGrpID');
  if cmbGroups.Items.Count > 0 then
  begin
    cmbGroups.ItemIndex := 0;
    cmbGroupsChange(cmbGroups);
  end; // if
  // qryCustomers.Active:=True;
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

end;

procedure TSellersF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGridCustomersCapacity, 1);
end;

procedure TSellersF.grdCustomersManagKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TSellersF.gridkeyenter;
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
          exit;
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
        SendKeys('000', false);
      end; // *
    #27:
      if grd.DataSource.DataSet.State in dseditmodes then
        grd.DataSource.DataSet.Cancel;

    #32, #157:
      if grd.Columns[curIndex].ButtonStyle = cbsEllipsis then
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
          sendkey(vk_down, [], false);
          grd.SelectedIndex := 0
        end; // 0
      -2:
        begin
          if grd.DataSource.State in dseditmodes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if grd.DataSource.State in dseditmodes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      grd.SelectedIndex := nextIndex;
    end; // case
end;

procedure TSellersF.srcCustomersStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCustomers.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, '', '', self.Name);
end;

procedure TSellersF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryCustomers); // , 'acc_DetailCode', '', false
end;

procedure TSellersF.ppSystemVariable1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSellersF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if cmbGroups.ItemIndex = 0 then
    Text := 'Â„‹‹‹Â ê—ÊÂÂ«'
  else
    Text := cmbGroups.Text;
end;

procedure TSellersF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSellersF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSellersF.qryCustomerLookUpInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryCustomerLookUpInfo.FieldByName('CustID').AsInteger :=
    qryCustomersCustID.AsInteger;
end;

procedure TSellersF.qryCustomerLookUpInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  initqryCustomerLookUpInfo(false);
  qryCustomerLookUpInfo.Requery();
end;

procedure TSellersF.qryCustomerLookUpInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  initqryCustomerLookUpInfo(false);
end;

procedure TSellersF.qryCustomerLookUpInfoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('LookUpID').AsInteger = 0 then
  begin
    DataSet.Cancel;
    Abort
  end;
end;

procedure TSellersF.qryCustomerLookUpInfoLookUpIDChange(Sender: TField);
begin
  inherited;
  initqryCustomerLookUpInfo(True);
end;

procedure TSellersF.initqryCustomerLookUpInfo(IsChange: Boolean);
begin
  With qry_Lookup do
  begin
    Active := false;
    SQL.Text := 'SELECT LookUpID, Name FROM LookUps';
    if IsChange then
    begin
      SQL.Add('WHERE (Kind = :Kind )');
      Parameters.ParamByName('Kind').Value := qryCustomerLookUpInfo.FieldByName
        ('LookUpID').AsInteger;
    end;
    Active := True;
  end;
end;

procedure TSellersF.qryCustomersAccountAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CustID').AsInteger := qryCustomers.FieldByName('CustID')
    .AsInteger;
end;

procedure TSellersF.qryCustomersAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TSellersF.qryCustomersAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
  DataSet.FieldByName('EditDateTime').AsDateTime := Now;
end;

procedure TSellersF.qryCustomersAfterInsert(DataSet: TDataSet);
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
    zbal.Prompt.Text :=
      '·ÿ›« ﬁ»· «“  ⁄—Ì› ÅﬂÌ‰ê/›—Ê‘‰œÂ ÃœÌœ ê—ÊÂ ¬‰—« „‘Œ’ ﬂ‰Ìœ.';
    zbal.Title := '«Œÿ«—!';
    zbal.Show(cmbGroups);
    DataSet.Cancel;
    exit;
  end; // if
  GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  with DMF.qryTmpTmp do
  begin
    Active := false;
    SQL.Text :=
      'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2,acc_CTopicCode3 from CustomersGroup where CustomerGrpID='
      + IntToStr(GrpID);
    Active := True;
    rFrom := Fields[0].AsInteger;
    rTo := Fields[1].AsInteger;
    DataSet.FieldByName('acc_CTopicCode').AsInteger := Fields[2].AsInteger;
    DataSet.FieldByName('acc_CTopicCode2').AsInteger := Fields[3].AsInteger;
    DataSet.FieldByName('acc_CTopicCode3').AsInteger := Fields[4].AsInteger;
    DataSet.FieldByName('FirstUser').AsString := User.Name;
    aRange := format('%d and %d', [rFrom, rTo]);
    Active := false;
    if aRange = ' and ' then
      aRange := '0 and 999999999';
  end; // with
  DataSet.FieldByName('CustomerGrpID').AsInteger := GrpID;
  DataSet.FieldByName('CustID').AsInteger :=
    GetANewCode(self.Name,
    'Select max(CustID) from Customers where CustID between ' + aRange +
    'and CustomerGrpID =' + IntToStr(GrpID), 'CustID');
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  DataSet.FieldByName('InfoDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('acc_DetailCode').AsInteger := 0;
  DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
  if not((DataSet.FieldByName('CustID').AsInteger >= rFrom) and
    (DataSet.FieldByName('CustID').AsInteger <= rTo)) then
    DataSet.FieldByName('CustID').AsInteger := rFrom;
  with DMF.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'Select count(CustID) from Customers where CustID = ' +
      DataSet.FieldByName('CustID').AsString + ' and CustomerGrpID =' +
      IntToStr(GrpID);
    Active := True;
    isValid := Fields[0].AsInteger = 0;
    Active := false;
  end; // with
  if not isValid then
  begin
    zbal.Title := 'ﬂœ ‰«„⁄ »—';
    zbal.Prompt.Text :=
      'ﬂœ ÃœÌœ  Œ’Ì’ Ì«› Â ‰«„⁄ »— «” . ·ÿ›« ﬂœ —« »’Ê—  œ” Ì Ê«—œ ﬂ‰Ìœ.';
    zbal.Show(DBEdit1);
  end; // if
  DBEdit1.SetFocus;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryCustomers.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      DataSet.FieldByName('CustID').AsInteger;
end;

procedure TSellersF.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DMf.qryOstan.Open;
  qryCustomers_OstanChange(nil);
end;

procedure TSellersF.qryCustomersAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryCustomersAccount.State in dseditmodes then
    qryCustomersAccount.Post;
  CustIDToDetailCode(qryCustomers, GroupType);
  // sheikh 2015/06/22
  SaveOtherCustomers(qryCustomersOtherGroups, qryCustomers, chklstOtherGroup);
  BigMessage('À»  ‘œ.', 1);
  if DataSetInsert then
    actSmsSend.Execute;
  DataSetInsert := false;
end;

procedure TSellersF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryCustomersManag do
  begin
    Close;
    Parameters.ParamByName('CustID').Value := qryCustomers.FieldByName('CustID')
      .AsInteger;
    Open;
  end;
  With qryCustomersAccount do
  begin
    Close;
    Parameters.ParamByName('CustID').Value := qryCustomers.FieldByName('CustID')
      .AsInteger;
    Open;
  end;
  With qryCustomerLookUpInfo do
  begin
    Close;
    Parameters.ParamByName('CustID').Value := qryCustomers.FieldByName('CustID')
      .AsInteger;
    Open;
  end;

  With qryCustomersCapacity do
    try
      Close;
      Parameters.ParamByName('CustID').Value :=
        qryCustomers.FieldByName('CustID').AsInteger;
      Open;
    finally
    end;

  // Sheikh 2015/06/22
  with qryCustomersOtherGroups, Parameters do
  begin
    Active := false;
    ParamByName('CustId').Value := qryCustomersCustID.AsInteger;
    Active := True;
  end;
  LoadOtherCustomers(qryCustomersOtherGroups, chklstOtherGroup);
  DMf.qryOstan.Open;
  qryCustomers_OstanChange(nil);

end;

procedure TSellersF.qryCustomersBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ÅﬂÌ‰ê/›—Ê‘‰œÂ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TSellersF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryCustomers, 'acc_CTopicCode3', '', false)
end;

procedure TSellersF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryCustomers)
end;

procedure TSellersF.SpeedButton1Click(Sender: TObject);
var
  i: Integer;
  c: String;
  txt: String;
  s: String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID, CustomerGrpName + ''            «“ ﬂœ '' + ltrim(str(StartCode))'
    + '+ ''  « ﬂœ '' + ltrim(str(FinishCode)) AS  CustomerGrpName ' +
    ' FROM CustomersGroup  WHERE (GroupType = ' + IntToStr(GroupType) + ') ';
  s := searchCode_ADOF.SearchCode(DMF.adcBSell, c, 'ê—ÊÂÂ«Ì Œ—Ìœ«—/ÅﬂÌ‰ê', txt,
    ['òœ', '‰«„ ê—ÊÂ'], alLeft);
  if s <> '' then
  begin
    for i := 0 to cmbGroups.Items.Count do
      if cmbGroups.Items.Strings[i] = s then
        Break;
    cmbGroups.ItemIndex := i;
    cmbGroupsChange(cmbGroups);
    cmbGroups.Hint := s;
    zbal.Title := AnsiString(s);
    zbal.Prompt.Text := c;
    zbal.Show(cmbGroups);
  end; // if
end;

procedure TSellersF.srcCustomersAccountStateChange(Sender: TObject);
begin
  inherited;
  if qryCustomersAccount.State in dseditmodes then
    if not(qryCustomers.State in dseditmodes) then
      qryCustomers.Edit;
end;

procedure TSellersF.srcCustomersCapacityStateChange(Sender: TObject);
begin
  inherited;
  // BtnReject.Cancel :=not( qryCustomersCapacity.State in dseditmodes);

end;

procedure TSellersF.srcCustomersDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  // ComboBox1.ItemIndex:=qryCustomersServiceCalcType.Value;
end;

procedure TSellersF.DBEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('btn' + (Sender as TDBEdit).DataField)).Click;
end;

procedure TSellersF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSellersF.ppLabel19GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'ê—ÊÂ : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

procedure TSellersF.actPrint1Execute(Sender: TObject);
begin
  inherited;
  ppReport2.Print;
end;

procedure TSellersF.qryCustomersServiceCalcTeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryCustomersServiceCalcType.AsInteger of
    0:
      Text := '‰œ«—œ';
    1:
      Text := '»— Õ”» „ﬁœ«—';
    2:
      Text := '‰—Œ À«» ';
  end; // case
end;

procedure TSellersF.qryCustomers_OstanChange(Sender: TField);
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

procedure TSellersF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGridCustomersCapacity);
end;

procedure TSellersF.cmbGroupsChange(Sender: TObject);
var
  i, CustomerGrpID: Integer;
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    exit;

  CustomerGrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  qryCustomersGroup.Locate('CustomerGrpID', CustomerGrpID, []);

  with qryCustomers do
  begin
    Active := false;
    Parameters.ParamByName('CustomerGrpIDForm').Value :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    Active := True;
  end; // with
  For i := 0 to Mnu_AllClick.Count - 1 do
  begin
    Mnu_AllClick.Items[i].Checked :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex])
      = Mnu_AllClick.Items[i].Tag;
    Mnu_AllClick.Items[i].Default := Mnu_AllClick.Items[i].Checked;
  end;
end;

procedure TSellersF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1, actSmsSend);
end;

procedure TSellersF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryCustomers, qryCustomersManag, SmsCustomers, 0, GroupType, 1)
end;

procedure TSellersF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  try
    qryCustomers.DisableControls;
    ppReport1.Print;
  finally
    qryCustomers.EnableControls;
  end; // try

end;

procedure TSellersF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  ppReport2.Print;
end;


procedure TSellersF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustomers);
end;

procedure TSellersF.actViewFileExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(qryCustomers.FieldByName('CustID').AsString,
    'CustomersFiles', false);
end;

procedure TSellersF.qryCustomersBeforePost(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  if not CheckRequiredFields(qryCustomers) then
    Abort;

  with DMF.qryTmpTmp do
  begin
    Active := false;
    SQL.Text :=
      'Select StartCode,FinishCode from CustomersGroup where CustomerGrpID=' +
      qryCustomers.FieldByName('CustomerGrpID').AsString;
    Active := True;
    if (qryCustomers.FieldByName('CustID').AsInteger < Fields[0].AsInteger) or
      (qryCustomers.FieldByName('CustID').AsInteger > Fields[1].AsInteger) then
    begin
      zbal.Title := 'ﬂœ ‰«„⁄ »—';
      zbal.Prompt.Text := 'ﬂœ ÃœÌœ  Œ’Ì’ Ì«› Â Œ«—Ã «“„ÕœÊœÂ  ⁄—Ì› ‘œÂ «” .';
      zbal.Show(DBEdit1);
      DBEdit1.SetFocus;
      Abort;
    end; // if
  end; // with
  // if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø')<>mrYes then abort;
  TrimStringFields(qryCustomers);
  if not UnicFieldName(DataSet.FieldByName('CustID'),
    DataSet.FieldByName('CustName'), 'Customers',
    qryCustomersCustomerGrpID.AsInteger) then
    Abort;

  // if (qryCustomersHCKharidarTypeCode.AsInteger = 1) then
  if not ValidateCodeMeli(qryCustomers.FieldByName('NationalID').AsString) then
  begin
    Warn('ﬂœ „·Ì „⁄ »— ‰„Ì »«‘œ');
    Abort;
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

  if ((opt.AllControls and Integer(CHkUnicRegisterNumber)) <> 0) or
    ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0) then
  begin
    b := UnicFieldName(DataSet.FieldByName('CustID'),
      DataSet.FieldByName('RegisterNumber'), 'Customers', 0);
    if not b and ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0)
    then
      Abort;
  end;

end;

procedure TSellersF.chkAllCustsClick(Sender: TObject);
var
  GrpID: Integer;
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    GrpID := 0
  else
    GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  if chkAllCusts.Checked then
  begin
    cmbGroups.Enabled := false;
    with qryCustomers do
    begin
      Active := false;
      Parameters.ParamByName('CustomerGrpIDForm').Value := -2147483646;
      Parameters.ParamByName('CustomerGrpIDTo').Value := 2147483647;
      Active := True;
    end; // with
    chkAllCusts.Checked;
  end // if
  else
  begin
    cmbGroups.Enabled := True;
    with qryCustomers do
    begin
      Active := false;
      Parameters.ParamByName('CustomerGrpIDForm').Value := GrpID;
      Parameters.ParamByName('CustomerGrpIDTo').Value := GrpID;
      Active := True;
    end; // with
    chkAllCusts.Checked := false;
  end; // if
end;

procedure TSellersF.chklstOtherGroupDblClick(Sender: TObject);
begin
  inherited;
  if not(qryCustomers.State in dseditmodes) then
    qryCustomers.Edit;

end;

procedure TSellersF.actSearch_Execute(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
  i: Integer;
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    i := 0
  else
    i := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  txt := 'SELECT  CustID, CustName,Tel,Fax,FirstBalance,CustomerGrpID FROM Customers ';
  if not chkAllCusts.Checked then
    txt := 'SELECT  CustID, CustName,Tel,Fax,FirstBalance,CustomerGrpID FROM Customers '
      + 'WHERE     CustomerGrpID = ' + IntToStr(i);
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' ÅﬂÌ‰ê/›—Ê‘‰œÂ Â«  ', txt,
    ['òœ', '‰«„', ' ·›‰', '›ò”', '„«‰œÂ «» œ«Ì ”«·'], Results,
    [30, 150, 80, 80, 100, 0], alLeft);
  if b then
  begin
    qryCustomers.Locate('CustID', Results[0], []);
    for i := 1 to cmbGroups.Items.Count do
      if Integer(cmbGroups.Items.Objects[i]) = StrToInt(Results[5]) then
        Break;
    cmbGroups.ItemIndex := i;

  end; // if
end;

procedure TSellersF.actSelectedExecute(Sender: TObject);
var
  s, sqlText: String;
  aResult: String;
  TSBreak: TStringList;
  i: Integer;
begin
  inherited;
  qryCustomers.DisableControls;
  with qryCustomersCapacity do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        s := s + qryCustomersCapacity.FieldByName('StuffCode').AsString + ',';
        Next;
      end;
      SetLength(s, length(s) - 1);
      if s = EmptyStr then
        s := '0';
      sqlText := format(qryStuffCode.SQL.Text +
        'AND (StuffCoding.c_StuffCode not in (%S))', [s]);

      sqlText := StringReplace(sqlText, ', Units.UnitName', '', []);
      aResult := selectedF.ShowSelect(DMF.adcBSell, 'ﬂ«·« Â«', sqlText,
        ['ﬂœ', '⁄‰Ê«‰'], alLeft, [50, 300]);
      if aResult <> EmptyStr then
      begin
        TSBreak := TStringList.Create;
        TSBreak.Text := StringReplace(aResult, ',', #13, [rfReplaceAll]);
        for i := 0 to TSBreak.Count - 1 do
        begin
          Append;
          FieldByName('StuffCode').AsString := TSBreak[i];
          Post
        end;
      end;
    finally
      FreeAndNil(TSBreak);
      EnableControls;
      qryCustomersCapacity.Requery;
    end;
  qryCustomers.EnableControls;

end;

procedure TSellersF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TSellersF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCustomers.FieldByName('CustID'));
end;

procedure TSellersF.DBGrid3EditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
begin
  inherited;
  if DBGrid2.SelectedIndex = 1 then
  begin
    txt := 'SELECT LookUpID, Name FROM LookUps WHERE ( Kind = %d )';
    txt := format(txt, [qryCustomerLookUpInfoLookUpID.AsInteger]);
    if searchCode_ADOF.SearchCode2(DMF.adcSalary, '«ÿ·«⁄« ', txt,
      ['ﬂœ', '⁄‰Ê«‰'], Results, [50, 100], alLeft) then
    begin
      if not(qryCustomerLookUpInfo.State in dseditmodes) then
        qryCustomerLookUpInfo.Edit;
      qryCustomerLookUpInfoLookUpItemID.AsString := Results[0];
    end;
  end;

end;

procedure TSellersF.DBGrid3Enter(Sender: TObject);
begin
  inherited;
  initqryCustomerLookUpInfo(false);
end;

procedure TSellersF.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TSellersF.DBGridCustomersCapacityEditButtonClick(Sender: TObject);
var
  id: SmallInt;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  if (qryCustomers.State in dseditmodes) then
    exit;
  id := (Sender as TDBGrid).SelectedIndex;
  if DBGridCustomersCapacity.Columns[id].FieldName = 'StuffCode' then
  begin
    b := searchCode_ADOF.SearchCode2(DMF.adcBSell, 'òœ Ê ⁄‰Ê«‰ ﬂ«·«',
      qryStuffCode.SQL.Text, ['òœ', ' ⁄‰Ê«‰ ﬂ«·«', 'Ê«Õœ'], Results,
      [50, 150, 50], alLeft);
    if b then
    begin
      if not(qryCustomersCapacity.State in dseditmodes) then
        qryCustomersCapacity.Edit;
      qryCustomersCapacity.FieldByName('StuffCode').AsString := Results[0];
    end;
  end;

end;

procedure TSellersF.qryCustomersGrpActionCustomerGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  // Combo_Box.Items.AddObject(Fields[1].AsString,TObject(Fields[0].AsInteger));
  Text := CmbGrpActionCustomer.Items
    [CmbGrpActionCustomer.Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TSellersF.qryCustomersGrpActionCustomerSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := Integer(CmbGrpActionCustomer.Items.Objects
    [CmbGrpActionCustomer.ItemIndex]);
end;

procedure TSellersF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryCustomers, 'acc_CTopicCode', '', false)
end;

procedure TSellersF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryCustomers);
end;

procedure TSellersF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger];
end;

procedure TSellersF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TSellersF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰  —œÌ› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
  qryCustomersCapacity.Delete

end;

procedure TSellersF.BitBtn14Click(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰  —œÌ› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
  qryCustomersManag.Delete

end;

procedure TSellersF.BitBtn13Click(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰  —œÌ› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
  qryCustomersAccount.Delete

end;

procedure TSellersF.BitBtn15Click(Sender: TObject);
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

procedure TSellersF.Mnu_AllClickClick(Sender: TObject);
begin
  inherited;
  ChangeCustomerGroup(Sender, qryCustomers, CustGroupsNames[GroupType])
end;

procedure TSellersF.PopMPrintPopup(Sender: TObject);
begin
  inherited;
  Mnu_AllClick.Caption := ' €ÌÌ— ê—ÊÂ  <> ' + qryCustomers.FieldByName
    ('CustID').AsString
end;

procedure TSellersF.actChangeCustID1Execute(Sender: TObject);
begin
  inherited;
  ChangeCustID(qryCustomers, cmbGroups, Caption)
end;

procedure TSellersF.actCustomersInterViewExecute(Sender: TObject);
begin
  inherited;
    mdiMainF.actCustomersInterView.Execute
end;

procedure TSellersF.actgetExcelExecute(Sender: TObject);
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

procedure TSellersF.btnCustomerGrpID2Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomerGrpID(qryCustomers)
end;

procedure TSellersF.SpeedButtonClick(Sender: TObject);
var
  c, txt, s: String;
begin
  txt := 'SELECT EffectID, EffectName FROM PurchaseEffect';
  s := searchCode_ADOF.SearchCode(DMF.adcBSell, c, '⁄‰«ÊÌ‰ „ÊÀ— »— Œ—Ìœ Œ«’',
    txt, ['òœ', '‰«„ '], alLeft);
  if s <> '' then
    qryCustomers.FieldByName((Sender as TSpeedButton).Hint).AsString := c;
end;

procedure TSellersF.qryCustomersCapacityAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CustID').AsInteger := qryCustomers.FieldByName('CustID')
    .AsInteger;
  DataSet.FieldByName('RunDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('States').AsInteger := 0;
end;

procedure TSellersF.qryCustomersCustIDChange(Sender: TField);
begin
  inherited;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryCustomers.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      Sender.AsInteger;

end;

procedure TSellersF.qryCustomersManagAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryCustomers.FieldByName('CustID').AsInteger;
end;

procedure TSellersF.qryCustomersManagStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col: TColumn;
begin
  inherited;
  col := grdCustomersManag.Columns[ColumnIndexByFieldName(grdCustomersManag,
    'State')];
  Text := col.PickList[Sender.AsInteger];
end;

procedure TSellersF.qryCustomersManagStateSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := grdCustomersManag.Columns
    [ColumnIndexByFieldName(grdCustomersManag, 'State')].PickList.IndexOf(Text);
end;

procedure TSellersF.qryCustomersCapacityStatesGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  col: TColumn;
begin
  inherited;
  col := DBGridCustomersCapacity.Columns
    [ColumnIndexByFieldName(DBGridCustomersCapacity, 'States')];
  Text := col.PickList[Sender.AsInteger];

end;

procedure TSellersF.qryCustomersCapacityStatesSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsInteger := DBGridCustomersCapacity.Columns
    [ColumnIndexByFieldName(DBGridCustomersCapacity, 'States')
    ].PickList.IndexOf(Text);

end;

procedure TSellersF.ALLLookUpGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TSellersF.ALLLookUpSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

end.
