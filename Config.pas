unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, DB, ADODB, Mask, DBCtrls, CheckLst, FileCtrl, StrUtils, Grids,
  ValEdit, System.Actions, FarsiReportBuilde, Telegram, FrLoginKind,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, SMSUnit;

type
  TConfigF = class(TTemplate4F)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
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
    qryConfigUsageDetailCode: TWordField;
    qryConfigUsageCTopicCode: TWordField;
    qryConfigSecondCustomerAvailable: TWordField;
    qryConfigStuffCodeAidInfoAvailable: TWordField;
    qryConfigActsFooter: TStringField;
    qryConfigUniqueSerial: TWordField;
    qryConfigFactorHeader: TStringField;
    qryConfigFactorFooter: TStringField;
    qryConfigFactorSigns: TStringField;
    qryConfigFactorReleaseRelation: TWordField;
    qryConfigAccountDBName: TStringField;
    qryConfigStartMaliYear: TStringField;
    qryConfigFinishMaliYear: TStringField;
    qryConfigBankState: TWordField;
    qryConfigEntityDisplayType: TWordField;
    qryConfigEntityOutputLowerLimit: TBCDField;
    qryConfigCheckDateOffset: TWordField;
    qryConfigCofferBankName: TStringField;
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
    edtEconomicNumber: TDBEdit;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    qryConfigBudgetBankName: TStringField;
    qryConfigCountStoreKind: TWordField;
    qryConfigEntityCaption: TStringField;
    qryConfigWeightCaption: TStringField;
    TabSheet4: TTabSheet;
    cmbSearchCode: TDBComboBox;
    Label16: TLabel;
    qryConfigSearchCode: TStringField;
    Label34: TLabel;
    Label36: TLabel;
    edtEntityCaption: TDBEdit;
    edtWeightCaption: TDBEdit;
    qryConfigAccountDBNameOld: TStringField;
    qryConfigCarton: TWordField;
    qryConfigControlOrderPointEntity: TWordField;
    dbchkControlOrderPointEntity: TDBCheckBox;
    Label13: TLabel;
    cmbEntityDisplayType: TDBComboBox;
    Label11: TLabel;
    edtEntityOutputLowerLimit: TDBEdit;
    dbchkStuffCodeAidInfoAvailable: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    qryConfigActivityKind: TStringField;
    DBEdit1: TDBEdit;
    Label18: TLabel;
    qryConfigControlCodeActive: TIntegerField;
    qryConfigAddMenuItem: TIntegerField;
    qryConfigActiveCoffer: TWordField;
    qryConfigActiveBsell: TWordField;
    qryConfigActiveBudget: TWordField;
    qryConfigActiveStore: TWordField;
    qryConfigActiveSchedule: TWordField;
    TabSheet6: TTabSheet;
    qryConfigActiveSellPrice2: TWordField;
    dbchkActiveSellPrice2: TDBCheckBox;
    qryConfigStuffKindActive: TWordField;
    qryConfigAccCenterTopicEqualUseUnitID: TWordField;
    Label21: TLabel;
    edtAuxiliaryCaption: TDBEdit;
    qryConfigAuxiliaryCaption: TStringField;
    qryConfigStuffCodingKind: TWordField;
    qryConfigSpecialReportsActive: TWordField;
    qryConfigCommunicableStores: TWordField;
    qryConfigStuffTecInfoActive: TWordField;
    qryConfigArzTypeID: TIntegerField;
    Label89: TLabel;
    edtArzTypeID: TDBEdit;
    qryConfigLevelIdStuffGroup: TWordField;
    qryConfigExpireDateKind: TWordField;
    qryConfigRecoverPittedCode: TWordField;
    Label25: TLabel;
    CmbRecoverPittedCode: TDBComboBox;
    qryConfigCanRelation: TWordField;
    DBMemo1: TDBMemo;
    qryConfigStuffEnableKind: TWordField;
    qryConfigFileInputPath: TStringField;
    Label27: TLabel;
    edtEntityOutputLowerLimit2: TDBEdit;
    qryConfigEntityOutputLowerLimit2: TBCDField;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    chlExtraCaptions: TCheckListBox;
    edtLevelIdStuffGroup: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    cmbStuffCodingKind: TDBComboBox;
    DBCheckBox16: TDBCheckBox;
    dbchkStuffTecInfoActive: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    CmbExpireDateKind: TDBComboBox;
    CmbStuffEnableKind: TDBComboBox;
    Label20: TLabel;
    edtExtraCaption: TEdit;
    qryConfigArchivePath: TWideStringField;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    edtArchivePath: TDBEdit;
    TabSheet9: TTabSheet;
    dbchkCanRelation: TDBCheckBox;
    lblDocStatusDefault: TLabel;
    Label30: TLabel;
    edtDocStatusDefault: TDBEdit;
    edtDocReciptStateDefault: TDBEdit;
    qryConfigDocStatusDefault: TWordField;
    qryConfigDocReciptStateDefault: TWordField;
    TabSheet10: TTabSheet;
    Label63: TLabel;
    edtEditCustNameLevelID: TDBEdit;
    qryConfigEditCustNameLevelID: TWordField;
    qryConfigServerID: TIntegerField;
    dbchkSelectedInvoiceEmission: TDBCheckBox;
    qryConfigSelectedInvoiceEmission: TWordField;
    qryConfigChangeAccNames: TWideStringField;
    qryConfigCheckControlsItems: TWideStringField;
    qryConfigCheckControlsKind: TWordField;
    TabSheet11: TTabSheet;
    GroupBox9: TGroupBox;
    chkCheckControlsItems: TCheckListBox;
    qryConfigDefaultDateActive: TWordField;
    dbchkDefaultDateActive: TDBCheckBox;
    qryConfigCheckMakeDoc4DelEdit: TWordField;
    dbchkCheckMakeDoc4DelEdit: TDBCheckBox;
    qryConfigStandardRateVatActive: TWordField;
    dbchkStandardRateVatActive: TDBCheckBox;
    qryConfigCalcReciptsRegulatesActive: TWordField;
    dbchkCalcReciptsRegulatesActive: TDBCheckBox;
    qryConfigRowInCardex: TWordField;
    cmbRowInCardex: TDBComboBox;
    lbl1: TLabel;
    qryConfigCustomerTrancKinds: TStringField;
    TabSheet12: TTabSheet;
    dbchkSpecialReportsActive: TDBCheckBox;
    qryConfigDefaultYear: TWordField;
    qryConfigComPortKind: TWordField;
    qryConfigPhonBookIIPath: TStringField;
    Label35: TLabel;
    dbedtEditStuffNameLevelID: TDBEdit;
    qryConfigEditStuffNameLevelID: TWordField;
    TabSheet15: TTabSheet;
    PageControl3: TPageControl;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    chkAcc: TCheckBox;
    GroupBox4: TGroupBox;
    Label38: TLabel;
    Label37: TLabel;
    cmbAccountDBName: TDBComboBox;
    dbedtAccountServerName: TDBEdit;
    GrpBoxAccOLd: TGroupBox;
    edtAccPathOld: TDBEdit;
    chkAccOLd: TCheckBox;
    SBtnAccPathOld: TSpeedButton;
    Label7: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label33: TLabel;
    cmbUsageDetailCode: TDBComboBox;
    cmbUsageCTopicCode: TDBComboBox;
    edtFinishMaliYear: TDBEdit;
    edtStartMaliYear: TDBEdit;
    cmbDefaultYear: TDBComboBox;
    qryConfigAccountServerName: TWideStringField;
    btn2: TSpeedButton;
    tsAdmin: TTabSheet;
    PageControl4: TPageControl;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    GroupBox3: TGroupBox;
    SpeedButton2: TSpeedButton;
    dbedtPhonBookIIPath: TDBEdit;
    qryConfigBaudRate: TWordField;
    qryConfigPort: TStringField;
    qryConfigActiveProcurement: TWordField;
    qryConfigActiveManeger: TWordField;
    qryConfigFlowControl: TWordField;
    qryConfigXonXoffIn: TWordField;
    qryConfigXonXoffOut: TWordField;
    qryConfigPackSize: TWordField;
    lbl2: TLabel;
    cmbComPortKind: TDBComboBox;
    grpPort: TGroupBox;
    Label41: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label40: TLabel;
    cmbFlowControl: TDBComboBox;
    cmbBaudRate: TDBComboBox;
    dbchkXonXoffIn: TDBCheckBox;
    dbchkXonXoffOut: TDBCheckBox;
    dbedtPackSize: TDBEdit;
    cmbPort: TDBComboBox;
    grpFile: TGroupBox;
    btnFileInputPath: TSpeedButton;
    EdtFileInputPath: TDBEdit;
    Label43: TLabel;
    Label44: TLabel;
    cmbStopBits: TDBComboBox;
    cmbParity: TDBComboBox;
    qryConfigStopBits: TWordField;
    qryConfigParity: TWordField;
    qryConfigUseUnitsYearID: TWordField;
    dbchkUseUnitsYearID: TDBCheckBox;
    qryConfigstCount: TWordField;
    Label45: TLabel;
    edtstCount: TDBEdit;
    cmbUnicStuffCodingKind: TDBComboBox;
    Label46: TLabel;
    qryConfigUnicStuffCodingKind: TWordField;
    qryConfigMiladi_ValiDate_Date_Check: TWordField;
    dbchkMiladi_ValiDate_Date_Check: TDBCheckBox;
    qryConfigActiveSubsys: TStringField;
    CheckListBox1: TCheckListBox;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    ValueListEditor1: TValueListEditor;
    qryConfigFunctionsAmountCaptions: TStringField;
    GroupBox5: TGroupBox;
    chklstCustAccDetailCodeEqualCustID: TCheckListBox;
    Label29: TLabel;
    qryConfigCustAccDetailCodeEqualCustID: TStringField;
    cmbAccDetailCodeEqualCustID: TDBComboBox;
    qryConfigMakeDocsLevelID: TWordField;
    qryConfigDocPostKindLevelID: TWordField;
    Label28: TLabel;
    Label47: TLabel;
    edtMakeDocsLevelID: TDBEdit;
    edtDocPostKindLevelID: TDBEdit;
    TabSheet3: TTabSheet;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    edtSmtp: TEdit;
    chkSSl: TCheckBox;
    edtPort: TMaskEdit;
    edtMail: TEdit;
    edtPass: TEdit;
    DBEdit19: TDBEdit;
    qryConfigAuxiliaryActive: TWordField;
    dbchkAuxiliaryActive: TDBCheckBox;
    qryOstan: TADOQuery;
    qryShahr: TADOQuery;
    qryConfigStateCode: TIntegerField;
    qryConfig_Ostan: TStringField;
    qryConfigCityCode: TIntegerField;
    qryConfig_Shahr: TStringField;
    dblkcbb_Ostan: TDBLookupComboBox;
    dblkcbb_Shahr: TDBLookupComboBox;
    Label52: TLabel;
    Label53: TLabel;
    qryConfigNationalCodeField: TStringField;
    edtNationalCodeField: TDBEdit;
    Label54: TLabel;
    dbchkCHKPriorityTransDate: TDBCheckBox;
    qryConfigCHKPriorityTransDate: TWordField;
    dbchkControlEntryCustIno: TDBCheckBox;
    qryConfigControlEntryCustInfo: TWordField;
    dbchkBrowseAllForms: TDBCheckBox;
    qryConfigBrowseAllForms: TWordField;
    qryConfigSysSmsActive: TWordField;
    tbsSMS: TTabSheet;
    qryConfigWorkFlowActive: TWordField;
    edtFara: TEdit;
    cmbBand: TDBComboBox;
    cmbSabteNam: TDBComboBox;
    Label55: TLabel;
    Label56: TLabel;
    qryConfigBand: TWordField;
    qryConfigSabteNam: TWordField;
    qryConfigFilterOnServerID: TWordField;
    qryConfigRequiredCustomers: TLargeintField;
    Panel2: TPanel;
    cmbCheckControlsKind: TDBComboBox;
    Label32: TLabel;
    qryConfigCustomersUnicName: TWordField;
    TabSheet18: TTabSheet;
    edtCheckDateOffset: TDBEdit;
    Label19: TLabel;
    dbchkFilterOnServerID: TDBCheckBox;
    qryConfigCheckDateDefaultAct: TWordField;
    qryConfigCheckWarnDay: TWordField;
    edtCheckWarnDay: TDBEdit;
    Label58: TLabel;
    dbchkCheckDateDefaultAct: TDBCheckBox;
    pnlFunctionDate4Edit: TPanel;
    edtFunctionDate4EditFrom: TDBEdit;
    Label59: TLabel;
    Label60: TLabel;
    edtFunctionDate4EditTo: TDBEdit;
    qryConfigFunctionDate4EditFrom: TStringField;
    qryConfigFunctionDate4EditTo: TStringField;
    TabSheet19: TTabSheet;
    qryConfigConcatField4StuffName: TStringField;
    GroupBox6: TGroupBox;
    dbmmoConcatField4StuffName: TDBMemo;
    Label64: TLabel;
    Memo1: TMemo;
    qryConfigMoadyName: TStringField;
    qryConfigTabeiat: TWordField;
    Label61: TLabel;
    cmbTabeiat: TDBComboBox;
    edtMoadyName: TDBEdit;
    Label62: TLabel;
    cmbWorkFlowActive: TDBComboBox;
    lbl3: TLabel;
    ts1: TTabSheet;
    grp2: TGroupBox;
    qryConfigMachineryLookUpKind1: TIntegerField;
    qryConfigMachineryLookUpKind2: TIntegerField;
    qryConfigMachineryLookUpKind3: TIntegerField;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    qryConfig_MachineryLookUpKind5: TStringField;
    qryConfig_MachineryLookUpKind6: TStringField;
    qryConfig_MachineryLookUpKind4: TStringField;
    dblkcbb_MachineryLookUpKind1: TDBLookupComboBox;
    dblkcbb_MachineryLookUpKind2: TDBLookupComboBox;
    dblkcbb_MachineryLookUpKind3: TDBLookupComboBox;
    qryConfigMachineryLookUpKind4: TIntegerField;
    qryConfigMachineryLookUpKind5: TIntegerField;
    qryConfigMachineryLookUpKind6: TIntegerField;
    qryConfig_MachineryLookUpKind1: TStringField;
    qryConfig_MachineryLookUpKind2: TStringField;
    qryConfig_MachineryLookUpKind3: TStringField;
    dblkcbb_MachineryLookUpKind5: TDBLookupComboBox;
    dblkcbb_MachineryLookUpKind4: TDBLookupComboBox;
    dblkcbb_MachineryLookUpKind6: TDBLookupComboBox;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    bvl1: TBevel;
    qryConfigSendDoc2OtherSystems: TIntegerField;
    dbchkSendDoc2OtherSystems: TDBCheckBox;
    cmbSysSmsActive: TDBComboBox;
    Label65: TLabel;
    qryConfigchkExistAttachments: TWordField;
    DBCheckBox5: TDBCheckBox;
    qryConfigActiveMil2adi: TWordField;
    dbchkPureSellActive: TDBCheckBox;
    qryConfigConcatField4StuffNameKind: TIntegerField;
    cmbConcatField4StuffNameKind: TDBComboBox;
    Label66: TLabel;
    BitBtn3: TBitBtn;
    cmbCarton: TDBComboBox;
    Label67: TLabel;
    qryConfigPureSellActive: TWordField;
    dbchkActiveMiladi: TDBCheckBox;
    TabSheet20: TTabSheet;
    cmbAccCenterTopicEqualUseUnitID: TDBComboBox;
    Label69: TLabel;
    qryConfigAccDetailCodeEqualCustID: TWordField;
    dbchkChkUsersCustomersGroupsActive: TDBCheckBox;
    qryConfigChkUsersCustomersGroupsActive: TWordField;
    qryConfigtaxPayerTypeField: TWordField;
    cmbtaxPayerTypeField: TDBComboBox;
    Label70: TLabel;
    qryConfigCompanyName_L2: TStringField;
    edtCompanyName_L2: TDBEdit;
    Label71: TLabel;
    qryConfigGroupReciptPostKind: TIntegerField;
    cmbGroupReciptPostKind: TDBComboBox;
    Label72: TLabel;
    qryConfigArzActiveAll: TWordField;
    dbchkArzActiveAll: TDBCheckBox;
    qryConfigMakeDocumentPost: TLargeintField;
    chklstAllControls: TCheckListBox;
    qryConfigAllControls: TLargeintField;
    qryConfigSmallDeals: TBCDField;
    qryConfigSmallDealsCo: TFloatField;
    qryConfigSmallDealsPrice: TFloatField;
    TabSheet21: TTabSheet;
    Label68: TLabel;
    edtSmallDeals: TDBEdit;
    Label73: TLabel;
    edtSmallDealsCo: TDBEdit;
    Label74: TLabel;
    edtSmallDealsPrice: TDBEdit;
    qryConfigPlaqueReaderActive: TWordField;
    qryConfigIPCameraURL: TStringField;
    GroupBox7: TGroupBox;
    edtIPCameraURL: TDBEdit;
    dbchkPlaqueReaderActive: TDBCheckBox;
    Label75: TLabel;
    qryConfigConfigSettings: TLargeintField;
    chklstConfigSettings: TCheckListBox;
    Panel3: TPanel;
    Label57: TLabel;
    cmbCustomersUnicName: TDBComboBox;
    qryConfigRoundEntity: TWordField;
    qryConfigMinEntity: TFMTBCDField;
    Label76: TLabel;
    edtRoundEntity: TDBEdit;
    Label77: TLabel;
    edtMinEntity: TDBEdit;
    dbchkChkSumTotalOutputPrice: TDBCheckBox;
    qryConfigChkSumTotalOutputPrice: TWordField;
    frmLoginKind1: TfrmLoginKind;
    GroupBox8: TGroupBox;
    GroupBox10: TGroupBox;
    chklstCustomerTrancKinds: TCheckListBox;
    GroupBox11: TGroupBox;
    chklstCustomerKindsTransaction: TCheckListBox;
    qryConfigCustomerKindsTransaction: TStringField;
    qryConfigDetailCodelength: TWordField;
    edtDetailCodelength: TDBEdit;
    Label78: TLabel;
    qryConfigSearchLimitCustomersGroups: TWordField;
    dbchkSearchLimitCustomersGroups: TDBCheckBox;
    qryConfigPOActive: TWordField;
    dbchkPOActive: TDBCheckBox;
    Panel4: TPanel;
    grp1: TGroupBox;
    lbl10: TLabel;
    dbmmoChangeAccNames: TDBMemo;
    GroupBox12: TGroupBox;
    chklstMakeDocumentPost: TCheckListBox;
    chklstRequiredCustomers: TCheckListBox;
    ts2: TTabSheet;
    qryConfigNipcUserName: TStringField;
    qryConfigNipcPassWord: TStringField;
    lbl11: TLabel;
    dbedtNipcUserName: TDBEdit;
    lbl12: TLabel;
    dbedtNipcPassWord: TDBEdit;
    qryConfigWarrantyFormTypes: TStringField;
    qryConfigWarrantyDay: TWordField;
    grp3: TGroupBox;
    edtWarrantyFormTypes: TDBEdit;
    lbl14: TLabel;
    edtWarrantyDay: TDBEdit;
    lbl13: TLabel;
    spd1: TSpeedButton;
    edtPoCaption: TDBEdit;
    Label79: TLabel;
    qryConfigPoCaption: TStringField;
    qryConfigLinkServerName: TStringField;
    pnlServer: TPanel;
    Label31: TLabel;
    edtServerID: TDBEdit;
    btn1: TSpeedButton;
    DBCheckBox6: TDBCheckBox;
    BitBtn4: TBitBtn;
    qryConfigFISCAL_ID: TStringField;
    qryConfigPUB_KEY: TStringField;
    qryConfigPUB_KEY_ID: TStringField;
    qryConfigPRV_KY: TStringField;
    TabSheet5: TTabSheet;
    GroupBox13: TGroupBox;
    dbmmoPRV_KY: TDBMemo;
    GroupBox14: TGroupBox;
    dbmmoPUB_KEY_ID: TDBMemo;
    GroupBox15: TGroupBox;
    dbmmoPUB_KEY: TDBMemo;
    GroupBox16: TGroupBox;
    dbmmoFISCAL_ID: TDBMemo;
    qryConfigECONOMIC_NUMBER: TStringField;
    GroupBox17: TGroupBox;
    dbmmoECONOMIC_NUMBER: TDBMemo;
    dbrgrpEntityOrWeight: TDBRadioGroup;
    qryConfigEntityOrWeight: TWordField;
    TabSheet22: TTabSheet;
    grdConfigUser: TCedarDbgrid;
    qryConfigUser: TADOQuery;
    srcConfigUser: TDataSource;
    qryConfigUserUserID: TIntegerField;
    qryConfigUserComPortKind: TWordField;
    qryConfigUserBaudRate: TWordField;
    qryConfigUserPort: TStringField;
    qryConfigUserFlowControl: TWordField;
    qryConfigUserXonXoffIn: TWordField;
    qryConfigUserXonXoffOut: TWordField;
    qryConfigUserPackSize: TWordField;
    qryConfigUserStopBits: TWordField;
    qryConfigUserParity: TWordField;
    dbchkActiveConfigUser: TDBCheckBox;
    Label81: TLabel;
    cmbControlCodeActive: TDBComboBox;
    qryConfigActiveConfigUser: TWordField;
    qryConfigCRT_KEY: TWideStringField;
    grpCRT_KEY: TGroupBox;
    dbmmoCRT_KEY: TDBMemo;
    qryConfigCSR_KEY: TWideStringField;
    grpCSR_KEY: TGroupBox;
    dbmmoCSR_KEY: TDBMemo;
    Label82: TLabel;
    Label80: TLabel;
    edtLinkServerName: TDBEdit;
    qryConfigOperatorsNewActive: TWordField;
    dbchkOperatorsNewActive: TDBCheckBox;
    Label83: TLabel;
    DBEdit4: TDBEdit;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    PageControl5: TPageControl;
    TabSheet25: TTabSheet;
    GroupBox18: TGroupBox;
    BitBtn5: TBitBtn;
    GroupBox19: TGroupBox;
    Label84: TLabel;
    Label85: TLabel;
    edtPosPortNumber: TDBEdit;
    edtPosIPAddress: TDBEdit;
    qryConfigPosPortNumber: TIntegerField;
    qryConfigPosIPAddress: TStringField;
    qryConfigJamePassWord: TStringField;
    Label86: TLabel;
    Label87: TLabel;
    edtNationalCode: TDBEdit;
    edtJamePassWord: TDBEdit;
    qryConfigNationalCode: TStringField;
    qryConfigUserRoleId: TIntegerField;
    Label88: TLabel;
    edtUserRoleId: TDBEdit;
    dbrgrpEntityOrWeight1: TDBRadioGroup;
    GroupBox20: TGroupBox;
    Label90: TLabel;
    edtMobile: TEdit;
    Label91: TLabel;
    mmoMasage: TMemo;
    BitBtn6: TBitBtn;
    procedure qryConfigEntityDisplayTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryConfigEntityDisplayTypeSetText(Sender: TField;
      const Text: String);
    procedure qryConfigUsageCTopicCodeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryConfigUsageCTopicCodeSetText(Sender: TField;
      const Text: String);
    procedure qryConfigUsageDetailCodeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryConfigUsageDetailCodeSetText(Sender: TField;
      const Text: String);
    procedure qryConfigAfterInsert(DataSet: TDataSet);
    procedure qryConfigBeforePost(DataSet: TDataSet);
    procedure chkAccClick(Sender: TObject);
    procedure SBtnAccPathOldClick(Sender: TObject);
    procedure qryConfigAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure chkAccOLdClick(Sender: TObject);
    procedure ChkBudgetClick(Sender: TObject);
    procedure edtAccPathEnter(Sender: TObject);
    procedure edtAccPathExit(Sender: TObject);
    procedure chlExtraCaptionsDblClick(Sender: TObject);
    procedure edtExtraCaptionExit(Sender: TObject);
    procedure qryConfigALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryConfigALLSetText(Sender: TField; const Text: String);
    procedure btnFileInputPathClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chkCheckControlsItemsClick(Sender: TObject);
    procedure qryConfigAfterOpen(DataSet: TDataSet);
    procedure btn1Click(Sender: TObject);
    procedure chklstCustomerTrancKindsClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cmbComPortKindChange(Sender: TObject);
    procedure CheckListBox1Click(Sender: TObject);
    procedure ValueListEditor1Enter(Sender: TObject);
    procedure edtPassEnter(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure qryConfig_OstanChange(Sender: TField);
    procedure edtFaraKeyPress(Sender: TObject; var Key: Char);
    procedure Image1Click(Sender: TObject);
    procedure edtFaraExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure chklstMakeDocumentPostClick(Sender: TObject);
    procedure qryConfigAfterScroll(DataSet: TDataSet);
    procedure chklstAllControlsClick(Sender: TObject);
    procedure chklstConfigSettingsClick(Sender: TObject);
    procedure spd1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure AllGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure qryConfigJamePassWordGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryConfigJamePassWordSetText(Sender: TField; const Text: string);
    procedure BitBtn6Click(Sender: TObject);
  private
    procedure initcmbTogrd;
    { Private declarations }
  public
    procedure enter;
    { Public declarations }
  end;

var
  ConfigF: TConfigF;

implementation

uses DM, GlobalPro, Encryption, FormFunctions, mmessage, CPort, CPortFunctions,
  FaraConsts, mdiMain, SearchComponents, ChooseItem, selected, UpDateBank;

{$R *.dfm}

procedure TConfigF.qryConfigEntityDisplayTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'مقدار';
    1:
      Text := 'وزن';
    2:
      Text := 'مقدار/وزن';
    3:
      Text := 'وزن/مقدار';
  end; // case
end;

procedure TConfigF.qryConfigEntityDisplayTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbEntityDisplayType.ItemIndex;
end;

procedure TConfigF.qryConfigJamePassWordGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Decrypt(Sender.AsString, 62354);
end;

procedure TConfigF.qryConfigJamePassWordSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString := Encrypt(Text, 62354);
end;

procedure TConfigF.qryConfigUsageCTopicCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'عنوان درآمد';
    1:
      Text := 'مراكز درآمدي';
  end; // case
end;

procedure TConfigF.qryConfigUsageCTopicCodeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbUsageCTopicCode.ItemIndex;
end;

procedure TConfigF.qryConfigUsageDetailCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'عنوان درآمد';
    1:
      Text := 'نام مشتري';
  end; // case

end;

procedure TConfigF.qryConfigUsageDetailCodeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbUsageDetailCode.ItemIndex;
end;

procedure TConfigF.qryConfig_OstanChange(Sender: TField);
begin
  inherited;
  With qryShahr do
  begin
    Active := False;
    Parameters.ParamByName('OstanCode').Value := qryConfigStateCode.AsInteger;
    Active := True;
  end;
end;

procedure TConfigF.qryConfigAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TConfigF.enter;
begin
  ConfigF := TConfigF.Create(Application);
  with ConfigF do
  begin
    try

      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TConfigF.qryConfigBeforePost(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;

  if not chkAccOLd.Checked then
    DataSet.FieldByName('AccountDBNameOld').AsString := '';
  // else
  // if not FileExists(edtAccPath.Text) then Warn('مسير بانك اطلاعات حسابداري معتبر نيست.');
  If DataSet.FieldByName('EntityCaption').AsString = '' then
    DataSet.FieldByName('EntityCaption').Value := 'مقدار';
  If DataSet.FieldByName('WeightCaption').AsString = '' then
    DataSet.FieldByName('WeightCaption').Value := 'وزن';

  if not chkAccOLd.Checked then
    if not(qryConfigDocStatusDefault.AsInteger in [0, 1, 2]) then
    begin
      Warn(lblDocStatusDefault.Caption + ' بايد ' + #13#10 + '1 = موقت' + #13#10
        + 'يا' + #13#10 + '2 = قطعي' + #13#10 + 'باشد');
      PageControl1.TabIndex := 6;
      edtDocStatusDefault.SetFocus;
      Abort;
    end;

  optSub.SubSys := EmptyStr;
  for i := 0 to High(SubsysMenu) - 1 do
  begin
    if SubsysMenu[i].SubsysCaption <> EmptyStr then
      optSub.SubSys := optSub.SubSys +
        ifthen(CheckListBox1.Checked[i], '1', '0')
    else
      optSub.SubSys := optSub.SubSys + '0';

  end; // for
  optSub.SubSys := optSub.SubSys +
    ifthen(CheckListBox1.Checked[CheckListBox1.count - 1], '1', '0');
  qryConfigActiveSubsys.AsString := optSub.SubSys;

  qryConfig.FieldByName('FunctionsAmountCaptions').AsString :=
    ValueListEditor1.strings.Text;

  TrimStringFields(qryConfig);

end;

procedure TConfigF.chkAccClick(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
  if chkAcc.Checked then
  begin
    if qryConfig.FieldByName('AccountDBName').AsString = '' then
      qryConfig.FieldByName('AccountDBName').AsString := 'Accounting'
  end;
end;

procedure TConfigF.SBtnAccPathOldClick(Sender: TObject);
begin
  inherited;
  OpenDialog1.Title := 'لطفاً بانك اطلاعات را انتخاب كنيد.';
  OpenDialog1.Filter := 'Access Databases|*.mdb';
  OpenDialog1.FileName := edtAccPathOld.Text;
  if OpenDialog1.Execute then
    edtAccPathOld.Text := OpenDialog1.FileName;
end;

procedure TConfigF.spd1Click(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := qryConfig.FieldByName((Sender as TSpeedButton).Hint).AsString;
  if ChooseItemF.SelectChecks(s, 'FormType', 'FormCaption', 'FormTypes', '',
    dmF.adcBSell) then
  begin
    with qryConfig do
    begin
      Edit;
      FieldByName((Sender as TSpeedButton).Hint).Value :=
        LeftStr(s, length(s) - 1);
    end; // with
  end; // if

end;

procedure TConfigF.qryConfigAfterPost(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  SaveConfig(APPID, 'Smtp', edtSmtp.Text);
  SaveConfig(APPID, 'Email', edtMail.Text);
  SaveConfig(APPID, 'Port', Trim(edtPort.Text));
  SaveConfig(APPID, 'Pass', Encrypt(edtPass.Text, EncryptCode));
  SaveConfig(APPID, 'SSl', BoolToStr(chkSSl.Checked));

  for i := 1 to chlExtraCaptions.count do
  begin
    if chlExtraCaptions.Checked[i - 1] then
      SaveBankConfig('sd' + inttostr(i) + '_caption',
        Trim(chlExtraCaptions.Items[i - 1]), 'dbo')
    else
      SaveBankConfig('sd' + inttostr(i) + '_caption', '', 'dbo');
  end; // for
  ReadAllOption;
  CreateComPort(True);

  try
    dmF.adcBSell.Execute('ALTER VIEW VU_BudgetTopics AS SELECT * from ' +
      qryConfigAccountDBName.AsString + '.Acc.BudgetTopics');
  except
    on E: Exception do
  end;
  BigMessage('ثبت شد.', 1);
  qryConfig.Requery();
  // ModalResult:=mrOk;
end;

procedure TConfigF.qryConfigAfterScroll(DataSet: TDataSet);
begin
  inherited;
  initCheckList2(chklstMakeDocumentPost,
    qryConfigMakeDocumentPost.AsLargeInt, 1);

  initCheckList2(chklstConfigSettings, qryConfigConfigSettings.AsLargeInt, 1);

  initCheckList2(chklstAllControls, qryConfigAllControls.AsLargeInt, 1);
  initCheckList2(chklstRequiredCustomers,
    qryConfigRequiredCustomers.AsLargeInt, 1);

end;

procedure TConfigF.FormCreate(Sender: TObject);
var
  i: Integer;
  s: Char;
begin
  inherited;
  pnlServer.Visible := user.OperatorKind >= 2;

  getCustGroupsNames(chklstCustomerTrancKinds.Items, True);
  chklstCustomerTrancKinds.Items[1] := '';
  chklstCustomerTrancKinds.Items[2] := '';
  chklstCustomerKindsTransaction.Items := chklstCustomerTrancKinds.Items;
  getCustGroupsNames(chklstCustAccDetailCodeEqualCustID.Items, True);

  try
    qryConfig.Active := True;

  except
    on E: Exception do
    begin
      Warn2(E.Message);
      CreateChildForm(TUpDateBankF, UpDateBankF, Self, 0, alNone);
      qryConfig.Active := True;
    end;

  end;

  FreeComPort;
  InitDBCombos(cmbAccountDBName,
    'SELECT Sid, BankName FROM FaraSystems.dbo.Sections WHERE (SysID in(4,40))');

  chkAcc.Checked := APPBank.AccAvailable;
  chkAccOLd.Checked := optA.AccOldAvailable;

  GrpBoxAccOLd.Visible := chkAccOLd.Checked;
  SBtnAccPathOld.Visible := chkAccOLd.Checked;
  tsAdmin.TabVisible := (user.admin);
  edtFaraKeyPress(edtFara, s);
  edtCompanyName.Visible := user.PowerUser;
  Label1.Visible := user.PowerUser;
  chlExtraCaptions.Clear;
  for i := 1 to 9 do
  begin
    chlExtraCaptions.AddItem(opt.ExtraCoding.Captions[i], TObject(i));
    chlExtraCaptions.Checked[i - 1] := opt.ExtraCoding.Captions[i] <> '';
  end; // for

  CheckListBox1.Clear;
  for i := 0 to High(SubsysMenu) do
    if SubsysMenu[i].SubsysCaption <> EmptyStr then
    begin
      CheckListBox1.AddItem(SubsysMenu[i].SubsysCaption, TObject(i));
      CheckListBox1.Checked[CheckListBox1.count - 1] :=
        optSub.SubSys[i + 1] = '1';
    end; // for

  edtPort.Text := inttostr(UserMail.Port);
  edtSmtp.Text := UserMail.Smtp;
  edtMail.Text := UserMail.UserName;
  edtPass.Text := UserMail.pass;
  chkSSl.Checked := UserMail.SSl;

  pnlFunctionDate4Edit.Visible := user.admin;
  initcmbTogrd;
end;

procedure TConfigF.initcmbTogrd;
begin
  grdConfigUser.FieldColumns['ComPortKind'].PickList := cmbComPortKind.Items;
  grdConfigUser.FieldColumns['BaudRate'].PickList := cmbBaudRate.Items;
  grdConfigUser.FieldColumns['Port'].PickList := cmbPort.Items;
  grdConfigUser.FieldColumns['StopBits'].PickList := cmbStopBits.Items;
  grdConfigUser.FieldColumns['Parity'].PickList := cmbParity.Items;
  grdConfigUser.FieldColumns['FlowControl'].PickList := cmbFlowControl.Items;
  qryConfigUser.Open;
end;

procedure TConfigF.AllGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  i: Integer;
begin
  if Sender.IsNull then
    Exit;
  i := ColumnIndexByFieldName(grdConfigUser, Sender.FieldName);
  Text := grdConfigUser.Columns[i].PickList.strings[Sender.AsInteger]
end;

procedure TConfigF.AllSetText(Sender: TField; const Text: String);
var
  i: Integer;
begin
  i := ColumnIndexByFieldName(grdConfigUser, Sender.FieldName);
  Sender.AsInteger := grdConfigUser.Columns[i].PickList.IndexOf(Text);
end;

procedure TConfigF.Image1Click(Sender: TObject);
begin
  inherited;
  edtFara.Visible := not edtFara.Visible;
  if edtFara.Visible then
    edtFara.SetFocus
end;

procedure TConfigF.chkAccOLdClick(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
  GrpBoxAccOLd.Visible := chkAccOLd.Checked;
  SBtnAccPathOld.Visible := chkAccOLd.Checked;
end;

procedure TConfigF.ChkBudgetClick(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
  if chkAcc.Checked then
    qryConfig.FieldByName('BudgetBankName').AsString := 'Budget'
  else
    qryConfig.FieldByName('BudgetBankName').AsString := '';
end;

procedure TConfigF.edtAccPathEnter(Sender: TObject);
begin
  inherited;
  SetKeyboardLatin;
end;

procedure TConfigF.edtAccPathExit(Sender: TObject);
begin
  inherited;
  SetKeyboardFarsi;
end;

procedure TConfigF.chlExtraCaptionsDblClick(Sender: TObject);
begin
  inherited;
  qryConfig.Edit;
  edtExtraCaption.Visible := True;
  edtExtraCaption.Text := chlExtraCaptions.Items[chlExtraCaptions.ItemIndex];
  edtExtraCaption.SetFocus;
end;

procedure TConfigF.cmbComPortKindChange(Sender: TObject);
begin
  inherited;
  grpPort.Visible := cmbComPortKind.ItemIndex >= 2;
  grpFile.Visible := cmbComPortKind.ItemIndex = 1;
end;

procedure TConfigF.edtFaraExit(Sender: TObject);
begin
  inherited;
  edtFara.Visible := False;
end;

procedure TConfigF.edtFaraKeyPress(Sender: TObject; var Key: Char);
var
  tc: Cardinal;
const
  t0: Cardinal = 0;
  __s: String = '';
begin
  inherited;
  tc := GetTickCount;
  if tc - t0 > 1500 then
    __s := Key
  else
    __s := __s + Key;
  CheckListBox1.Visible := checkPasWrd(__s);
  BitBtn4.Visible := CheckListBox1.Visible;
  tbsSMS.Visible := CheckListBox1.Visible;
  t0 := tc;
end;

procedure TConfigF.edtExtraCaptionExit(Sender: TObject);
begin
  inherited;
  chlExtraCaptions.Items[chlExtraCaptions.ItemIndex] :=
    Trim((Sender as TEdit).Text);
  (Sender as TEdit).Visible := False;
  chlExtraCaptions.Checked[chlExtraCaptions.ItemIndex] := chlExtraCaptions.Items
    [chlExtraCaptions.ItemIndex] <> '';
end;

procedure TConfigF.edtPassEnter(Sender: TObject);
begin
  inherited;
  SetKeyboardLatin
end;

procedure TConfigF.qryConfigALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TConfigF.qryConfigALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TConfigF.btnFileInputPathClick(Sender: TObject);
begin
  inherited;
  OpenDialog1.Title := 'لطفا مسير و فايل مورد نظر را انتخاب كنيد';
  OpenDialog1.Filter := 'Text Document (*.txt) |*.txt';
  OpenDialog1.FileName := EdtFileInputPath.Text;
  if OpenDialog1.Execute then
    EdtFileInputPath.Text := OpenDialog1.FileName
end;

procedure TConfigF.CheckListBox1Click(Sender: TObject);
begin
  inherited;
  qryConfig.Edit;
end;

procedure TConfigF.chklstAllControlsClick(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
  qryConfigAllControls.AsLargeInt := GetCheckList2(chklstAllControls, 1);
end;

procedure TConfigF.SpeedButton1Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryConfig.FieldByName('ArchivePath').AsString;
  if SelectDirectory('لطفاً  مسير ذخيره اطلاعات  اسكن  را وارد  كنيد:', '', s)
  then
    qryConfig.FieldByName('ArchivePath').AsString :=
      IncludeTrailingBackslash(s);

end;

procedure TConfigF.chkCheckControlsItemsClick(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
  qryConfig.FieldByName('CheckControlsItems').AsString :=
    GetCheckList(chkCheckControlsItems);
end;

procedure TConfigF.qryConfigAfterOpen(DataSet: TDataSet);
var
  i, j: Integer;
begin
  inherited;
  initCheckList(chkCheckControlsItems,
    Trim(qryConfig.FieldByName('CheckControlsItems').AsString));
  initCheckList(chklstCustomerTrancKinds,
    Trim(qryConfig.FieldByName('CustomerTrancKinds').AsString));

  initCheckList(chklstCustomerKindsTransaction,
    Trim(qryConfig.FieldByName('CustomerKindsTransaction').AsString));

  initCheckList(chklstCustAccDetailCodeEqualCustID,
    Trim(qryConfig.FieldByName('CustAccDetailCodeEqualCustID').AsString));
  grpPort.Visible := qryConfigComPortKind.AsInteger >= 2;
  grpFile.Visible := qryConfigComPortKind.AsInteger = 1;

  if qryConfig.FieldByName('FunctionsAmountCaptions').AsString = EmptyStr then
  begin
    for i := 0 to High(FunctionInfoType) do
      for j := 1 to 3 do
      begin
        ValueListEditor1.InsertRow(FunctionInfoType[i] + inttostr(j),
          'مقدار' + inttostr(j), True);
      end;
  end
  else
    ValueListEditor1.strings.Text := qryConfig.FieldByName
      ('FunctionsAmountCaptions').AsString;
  qryOstan.Open;
  qryConfig_OstanChange(nil);

end;

procedure TConfigF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  SearchComponentsF.ShowForms(ConfigF, PageControl1);
end;

procedure TConfigF.BitBtn4Click(Sender: TObject);
const
  cSQL = 'SELECT Sections.Sid,Systemparts.c_name as Title, Sections.BankName + '' سال مالی'' + CAST(Sections.MaliYear AS char(4))'
    + ' + '' '' + Sections.CompanyName AS BankName' +
    ' FROM Sections LEFT OUTER JOIN' +
    ' Systemparts ON Sections.SysID = Systemparts.n_systemparts ';
var
  SQLtxt: String;
  WhereClause, s, StrSid: string;
begin
  inherited;
  s := '(Sections.sysid = %d )';
  s := Format(s, [SYSID]);
  Add2Filter(WhereClause, s);
  Add2Filter(WhereClause, Format('Sections.BankName <> %s',
    [QuotedStr(APPBank.Name)]));

  SQLtxt := cSQL + WhereClause;
  StrSid := selectedF.ShowSelect(dmF.adcFaraSystem, 'سال مالي', SQLtxt,
    ['', 'سيستم', 'سال مالي'], alLeft, [0, 100, 400], StrSid, 'Title');

  if selectedF.FShowmodal = mrOk then
    if get_response('آيا براي ' + BitBtn4.Caption + ' انتخاب شده مطمئن هستيد؟')
      = mrYes then
      With dmF.qryTmpTmp do
      begin
        Close;
        s := qryConfigActiveSubsys.AsString;
        SQL.Text := 'DECLARE @ActiveSubsys varchar(max)=''' + s + '''';
        SQL.Add('DECLARE @qry varchar(max)=''''');
        SQL.Add('');
        SQL.Add('SELECT @qry=@qry + '' UPDATE '' + BankName +''.dbo.Config SET ActiveSubsys = ''''''+@ActiveSubsys+''''''''');
        SQL.Add('FROM FaraSystems.dbo.Sections');
        SQL.Add('WHERE (SysID = 40) and (Sid in(' + StrSid + '))');
        SQL.Add('SELECT @qry');
        Open;
        s := Fields[0].AsString;
        SQL.Text := s;
        if ExecSQL > 0 then
          BigMessage('  انجام شد.', 0);
        Close;
      end;

end;

procedure TConfigF.BitBtn6Click(Sender: TObject);
var
  REC_YEAR, REC_MONTH, REC_DAY, REC_HOUR, REC_MIN: string;
  Date4Send: TDateTime;
begin
  inherited;
  if qryConfig.State in dseditmodes then
    qryConfig.Post;
  Date4Send := now;
  REC_YEAR := formatdatetime('YYYY', Date4Send);
  REC_MONTH := formatdatetime('MM', Date4Send);
  REC_DAY := formatdatetime('DD', Date4Send);
  REC_HOUR := formatdatetime('HH', Date4Send);
  REC_MIN := formatdatetime('MM', Date4Send);

  InsertIntoOutBox(theFaraSystems, inttostr(1), user.Name, edtMobile.Text,
    mmoMasage.Lines.Text + #13#10, inttostr(1), REC_YEAR, REC_MONTH, REC_DAY,
    REC_HOUR, REC_MIN);
end;

procedure TConfigF.btn1Click(Sender: TObject);
var
  ServerID: Integer;
begin
  inherited;
  if get_response('آيا براي تغيير كد سرور مطمئن هستيد؟') <> mrYes then
    Abort;
  ServerID := qryConfig.FieldByName('ServerID').AsInteger;
  ServerID := StrToInt(Trim(get_box('تغيير كد سرور',
    'لطفاً كد جديد را وارد كنيد:', inttostr(ServerID))));
  if get_response('آيا براي تغيير كد سرور از ' + qryConfig.FieldByName
    ('ServerID').AsString + ' به ' + inttostr(ServerID) + ' مطمئن هستيد؟') <> mrYes
  then
    Abort;
  with TADOQuery.Create(Self) do
  begin
    Connection := dmF.adcBSell;
    SQL.Text := 'DECLARE @ServerIDOld int';
    SQL.Add('DECLARE @ServerIDNew int');
    SQL.Add('SET @ServerIDOld = :ServerIDOld');
    SQL.Add('SET @ServerIDNew = :ServerIDNew');

    SQL.Add('IF (SELECT COUNT(ServerID)');
    SQL.Add('FROM (SELECT ServerID');
    SQL.Add('FROM (SELECT ServerID');
    SQL.Add('FROM Recipts');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT ServerID FROM Forms) AS derivedtbl_1');
    SQL.Add('GROUP BY ServerID) AS derivedtbl_2)>1');
    SQL.Add('RAISERROR(''امكان تغيير وجود ندارد'',16,1)');
    SQL.Add('ELSE');
    SQL.Add('BEGIN');
    SQL.Add('UPDATE Config SET ServerID=@ServerIDNew WHERE ServerID=@ServerIDOld');
    SQL.Add('UPDATE Recipts SET ServerID=@ServerIDNew WHERE ServerID=@ServerIDOld');
    SQL.Add('UPDATE ReciptItems SET ServerID=@ServerIDNew WHERE ServerID=@ServerIDOld');
    SQL.Add('UPDATE Forms SET ServerID=@ServerIDNew WHERE ServerID=@ServerIDOld');
    SQL.Add('UPDATE FormItems SET ServerID=@ServerIDNew WHERE ServerID=@ServerIDOld');
    SQL.Add('UPDATE ReciptOnFormsRange SET ServerID=@ServerIDNew WHERE ServerID=@ServerIDOld');
    SQL.Add('UPDATE ReciptsDeficits SET ServerID=@ServerIDNew WHERE ServerID=@ServerIDOld');
    SQL.Add('UPDATE ReciptPurchaseEffect SET ServerID=@ServerIDNew WHERE ServerID=@ServerIDOld');
    SQL.Add('END');
    Parameters.ParamByName('ServerIDOld').Value :=
      qryConfig.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('ServerIDNew').Value := ServerID;
    ExecSQL;
    Free;
    qryConfig.Requery();
  end; // with

end;

procedure TConfigF.chklstConfigSettingsClick(Sender: TObject);
var
  i: Largeint;
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
  qryConfigConfigSettings.AsLargeInt := GetCheckList2(chklstConfigSettings, 1);
  qryConfigRequiredCustomers.AsLargeInt :=
    GetCheckList2(chklstRequiredCustomers, 1);

  if chklstRequiredCustomers.Checked[0] then
    for i := 1 to chklstRequiredCustomers.Items.count - 1 do
    begin
      chklstRequiredCustomers.Checked[i] := chklstRequiredCustomers.Checked[0]
    end;

end;

procedure TConfigF.chklstCustomerTrancKindsClick(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
  qryConfig.FieldByName('CustomerTrancKinds').AsString :=
    GetCheckList(chklstCustomerTrancKinds);

  qryConfig.FieldByName('CustomerKindsTransaction').AsString :=
    GetCheckList(chklstCustomerKindsTransaction);

  qryConfig.FieldByName('CustAccDetailCodeEqualCustID').AsString :=
    GetCheckList(chklstCustAccDetailCodeEqualCustID);
end;

procedure TConfigF.chklstMakeDocumentPostClick(Sender: TObject);
begin
  inherited;
  if not(qryConfig.State in dseditmodes) then
    qryConfig.Edit;
  qryConfigMakeDocumentPost.AsLargeInt :=
    GetCheckList2(chklstMakeDocumentPost, 1);
end;

procedure TConfigF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Title := 'لطفا مسير و فايل مورد نظر را انتخاب كنيد';
  OpenDialog1.Filter :=
    'FaraRayaneh PhonBook II DAT File Data.dat (*.dat) |*.dat';
  OpenDialog1.FileName := dbedtPhonBookIIPath.Text;
  if OpenDialog1.FileName = EmptyStr then
    OpenDialog1.FileName := 'Data.dat';

  if OpenDialog1.Execute then
    dbedtPhonBookIIPath.Text := OpenDialog1.FileName

end;

procedure TConfigF.TabSheet3Enter(Sender: TObject);
begin
  inherited;
  SetKeyboardLatin
end;

procedure TConfigF.ValueListEditor1Enter(Sender: TObject);
begin
  inherited;
  qryConfig.Edit;
end;

procedure TConfigF.btn2Click(Sender: TObject);
begin
  inherited;
  with TADOQuery.Create(nil) do
    try
      qryConfig.Post;
      dmF.adcAccounting.Connected := False;
      cmbAccountDBName.Clear;
      // Connection:=DMf.adcAccounting;
      ConnectionString := GetConStr('FaraSystems', 15, dmF.adcAccounting);
      SQL.Text :=
        'SELECT Sid, BankName FROM FaraSystems.dbo.Sections WHERE (SysID in(4,40))';
      Active := True;
      while not Eof do
      begin
        cmbAccountDBName.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end; // while
    finally
      Free;
    end;

end;

end.
