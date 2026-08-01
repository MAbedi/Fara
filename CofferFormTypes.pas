{ -------------------------------------------------------------------------------
  Unit Name: CofferFormTypes
  Author:    Mostafa
  ------------------------------------------------------------------------------- }
unit CofferFormTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, ComCtrls, ppProd, sndkey32,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache,
  ppCtrls, ppVar, ppPrnabl, CheckLst, ppParameter, WorkflowDm, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TCofferFormTypesF = class(Ttemplate2MDIF)
    qryFormTypes: TADOQuery;
    qryFormTypesFormType: TWordField;
    qryFormTypesFormCaption: TStringField;
    qryFormTypesHasRecall: TWordField;
    qryFormTypesRecallFormTypes: TStringField;
    qryFormTypesCustomer1Active: TWordField;
    qryFormTypesCustomer1UseInRecall: TWordField;
    qryFormTypesCustomer1Groups: TStringField;
    qryFormTypesCustomer1Label: TStringField;
    qryFormTypesCustomer1DocType: TWordField;
    qryFormTypesBedBes: TWordField;
    qryFormTypesCustomer2Active: TWordField;
    qryFormTypesCustomer2Groups: TStringField;
    qryFormTypesCustomer2Lable: TStringField;
    qryFormTypesCustomer2DocType: TWordField;
    qryFormTypesDisplayFormType: TWordField;
    qryFormTypesRestartFormNumberOnCust1: TWordField;
    qryFormTypesNoteVisible: TWordField;
    qryFormTypesValueVisible: TWordField;
    qryFormTypesCheckEntity: TWordField;
    qryFormTypesReportFileName1: TStringField;
    qryFormTypesShowListForReport2: TWordField;
    qryFormTypesBudgetCodePosition: TWordField;
    qryFormTypesAccountRelationPosition: TWordField;
    qryFormTypesDetailNoteVisible: TWordField;
    qryFormTypesCustomer2ActiveOnDetail: TWordField;
    qryFormTypesDefaultCustDetailCodeFromMaster: TWordField;
    qryFormTypesDetailDataType: TWordField;
    srcFormTypes: TDataSource;
    newPanel: TPanel;
    BtnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    BtnDelete: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryFormTypesPrintCount: TWordField;
    qryFormTypesFooterSigns: TStringField;
    qryFormTypesFormDescription: TStringField;
    qryFormTypesReportFileName2: TStringField;
    OpenDialog1: TOpenDialog;
    qryFormTypesBudgetEffect: TWordField;
    qryFormTypesBudgetEffectChangeAction: TWordField;
    qryFormTypesBudgetActiveOnCustomer1: TWordField;
    qryFormTypesBudgetRecalKind: TWordField;
    qryFormTypesAidInfoActive: TWordField;
    qryFormTypesAidInfoCaption: TStringField;
    qryFormTypesCheckDateActive: TWordField;
    BitBtn6: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actprint: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel8: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBTxtBedBes: TppDBText;
    ppDBText9: TppDBText;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel9: TppLabel;
    qryFormTypesPay_Topic_Active: TWordField;
    qryFormTypesMnuPlaceID: TIntegerField;
    qryFormTypesSerialNoFrom: TIntegerField;
    qryFormTypesSerialNoTo: TIntegerField;
    Panel1: TPanel;
    Label5: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbchkDetailNoteVisible: TDBCheckBox;
    dbchkNoteVisible: TDBCheckBox;
    dbchkValueVisible: TDBCheckBox;
    dbchkCheckEntity: TDBCheckBox;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label32: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    DBEdit7: TDBEdit;
    DBMemo4: TDBMemo;
    DBEdit10: TDBEdit;
    DBEdit20: TDBEdit;
    TabSheet6: TTabSheet;
    DBMemo1: TDBMemo;
    actSort: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn9: TBitBtn;
    actSendToExcel: TAction;
    dbchkAutoStateChange: TDBCheckBox;
    qryFormTypesAutoStateChange: TWordField;
    qryFormTypesUserSecurityCheckActive: TWordField;
    qryFormTypesMaxRowsPerForm: TIntegerField;
    qryFormTypesCustomer2OnDetailLable: TStringField;
    qryFormTypesChangeFormNo_DateActive: TWordField;
    Label34: TLabel;
    DBEdit22: TDBEdit;
    dbchkChangeFormNo_DateActive: TDBCheckBox;
    qryFormTypesCustomerKind1: TStringField;
    qryFormTypesCustomerKind2: TStringField;
    TabSheet7: TTabSheet;
    GroupBox9: TGroupBox;
    ChkCustomerKind1: TCheckListBox;
    GroupBox8: TGroupBox;
    qryFormTypesSerialCheckActive: TWordField;
    qryFormTypesShowListOnMnu: TWordField;
    TabSheet8: TTabSheet;
    cmbMnuPlaceID: TDBComboBox;
    Label12: TLabel;
    dbchkShowListOnMnu: TDBCheckBox;
    qryFormTypesRowOnMnu: TIntegerField;
    Label38: TLabel;
    DBEdit26: TDBEdit;
    chkCustomer1: TDBCheckBox;
    chkCustomer2: TDBCheckBox;
    chkCustomerKind2: TCheckListBox;
    qryFormTypesCheckFor_4Print: TWordField;
    Label6: TLabel;
    Label16: TLabel;
    cmbDisplayFormType: TDBComboBox;
    cmbDetailDataType: TDBComboBox;
    BitBtn3: TBitBtn;
    qryFormTypesCustomer1Effect: TWordField;
    qryFormTypesCustomer2Effect: TWordField;
    CmbCustomer1Effect: TDBComboBox;
    Label39: TLabel;
    CmbCustomer2Effect: TDBComboBox;
    Label40: TLabel;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cmbCustomer1DocType: TDBComboBox;
    cmbCustomer2DocType: TDBComboBox;
    cmbBedBes: TDBComboBox;
    TabSheet12: TTabSheet;
    PageControl4: TPageControl;
    TabSheet13: TTabSheet;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    CmbDefaultTopic_Bed: TDBComboBox;
    CmbDefaultDetail_Bed: TDBComboBox;
    CmbDefaultCTopic_Bed: TDBComboBox;
    CmbDefaultCTopic2_Bed: TDBComboBox;
    TabSheet14: TTabSheet;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    CmbDefaultTopic_Bes: TDBComboBox;
    CmbDefaultDetail_Bes: TDBComboBox;
    CmbDefaultCTopic_Bes: TDBComboBox;
    CmbDefaultCTopic2_Bes: TDBComboBox;
    TabSheet15: TTabSheet;
    Label45: TLabel;
    Label46: TLabel;
    edtConstTopicCode_Bed: TDBEdit;
    edtConstTopicCode_Bes: TDBEdit;
    qryFormTypesDefaultCTopic2_Bed: TWordField;
    qryFormTypesDefaultCTopic2_Bes: TWordField;
    qryFormTypesDefaultCTopic_Bed: TWordField;
    qryFormTypesDefaultCTopic_Bes: TWordField;
    qryFormTypesDefaultDetail_Bed: TWordField;
    qryFormTypesDefaultDetail_Bes: TWordField;
    qryFormTypesDefaultTopic_Bed: TWordField;
    qryFormTypesDefaultTopic_Bes: TWordField;
    qryFormTypesCustCodeUse4Bed: TWordField;
    qryFormTypesCustCodeUse4Bes: TWordField;
    qryFormTypesMakeDoc: TWordField;
    CmbCustCodeUse4Bed: TDBComboBox;
    Label41: TLabel;
    CmbCustCodeUse4Bes: TDBComboBox;
    Label42: TLabel;
    TabSheet16: TTabSheet;
    Label14: TLabel;
    Label22: TLabel;
    SpeedButton8: TSpeedButton;
    Label24: TLabel;
    Label25: TLabel;
    Label23: TLabel;
    cmbBudgetCodePosition: TDBComboBox;
    DBEdit15: TDBEdit;
    cmbBudgetEffectChangeAction: TDBComboBox;
    cmbBudgetRecalKind: TDBComboBox;
    cmbBudgetEffect: TDBComboBox;
    TabSheet3: TTabSheet;
    qryFormTypesCashWageActive: TWordField;
    qryFormTypesCashWageDetailCode: TStringField;
    qryFormTypesCashWageCTopicCode: TStringField;
    qryFormTypesCashWageCTopicCode2: TStringField;
    Label44: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    edtCashWageTopicCode: TDBEdit;
    edtCashWageDetailCode: TDBEdit;
    edtCashWageCTopicCode: TDBEdit;
    edtCashWageCTopicCode2: TDBEdit;
    Label58: TLabel;
    Label59: TLabel;
    edtConstDetailCode_Bed: TDBEdit;
    edtConstDetailCode_Bes: TDBEdit;
    qryFormTypesConstDetailCode_Bed: TStringField;
    qryFormTypesConstDetailCode_Bes: TStringField;
    qryFormTypesADDLevelID: TWordField;
    qryFormTypesEditLevelID: TWordField;
    qryFormTypesDeleteLevelID: TWordField;
    qryFormTypesChangeStateLevelID: TWordField;
    qryFormTypesPrintLevelID: TWordField;
    qryFormTypesFormRelatedLevelID: TWordField;
    qryFormTypesAccCodeLevelID: TWordField;
    qryFormTypesRptAddAccountKind: TWordField;
    qryFormTypesRptAddUtilizeCustCode: TWordField;
    qryFormTypesRptAddWorkableCheckKind: TWordField;
    qryFormTypesRptDecAccountKind: TWordField;
    qryFormTypesRptDecUtilizeCustCode: TWordField;
    qryFormTypesRptDecWorkableCheckKind: TWordField;
    qryFormTypesCustAddUtilizeCustCode: TWordField;
    qryFormTypesCustAddCondition: TWordField;
    qryFormTypesCustAddWorkableCheckKind: TWordField;
    qryFormTypesCustDecUtilizeCustCode: TWordField;
    qryFormTypesCustDecCondition: TWordField;
    qryFormTypesCustDecWorkableCheckKind: TWordField;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    GroupBox7: TGroupBox;
    GroupBox10: TGroupBox;
    cmbRptAddAccountKind: TDBComboBox;
    Label67: TLabel;
    cmbRptAddUtilizeCustCode: TDBComboBox;
    Label68: TLabel;
    cmbRptAddWorkableCheckKind: TDBComboBox;
    cmbRptDecAccountKind: TDBComboBox;
    cmbRptDecUtilizeCustCode: TDBComboBox;
    Label71: TLabel;
    cmbRptDecWorkableCheckKind: TDBComboBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    cmbCustAddCondition: TDBComboBox;
    cmbCustAddUtilizeCustCode: TDBComboBox;
    cmbCustAddWorkableCheckKind: TDBComboBox;
    cmbCustDecUtilizeCustCode: TDBComboBox;
    Label73: TLabel;
    cmbCustDecCondition: TDBComboBox;
    Label74: TLabel;
    cmbCustDecWorkableCheckKind: TDBComboBox;
    Label75: TLabel;
    Label70: TLabel;
    Label69: TLabel;
    Label72: TLabel;
    GroupBox13: TGroupBox;
    ChkCustomer2DetailKind: TCheckListBox;
    qryFormTypesCustomer2DetailKind: TStringField;
    Label86: TLabel;
    Label87: TLabel;
    CmbAccStateActive: TDBComboBox;
    qryFormTypesAccStateActive: TWordField;
    qryFormTypesManegerNoteActive: TWordField;
    dbchkManegerNoteActive: TDBCheckBox;
    CmbTabSheetActive: TDBComboBox;
    Label88: TLabel;
    qryFormTypesTabSheetActive: TWordField;
    TabSheet21: TTabSheet;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    CmbDefaultTopicInInset: TDBComboBox;
    CmbDefaultDetailInInsert: TDBComboBox;
    CmbDefaultCTopicInInsert: TDBComboBox;
    CmbDefaultCTopic2InInsert: TDBComboBox;
    qryFormTypesDefaultTopicInInset: TWordField;
    qryFormTypesDefaultDetailInInsert: TWordField;
    qryFormTypesDefaultCTopicInInsert: TWordField;
    qryFormTypesDefaultCTopic2InInsert: TWordField;
    qryFormTypesCheckType: TIntegerField;
    qryFormTypesCashType: TIntegerField;
    Label93: TLabel;
    edtCheckType: TDBEdit;
    Label94: TLabel;
    edtCashType: TDBEdit;
    CmbInfoUse4Bed: TDBComboBox;
    Label95: TLabel;
    qryFormTypesInfoUse4Bed: TWordField;
    qryFormTypesInfoUse4Bes: TWordField;
    CmbInfoUse4Bes: TDBComboBox;
    Label96: TLabel;
    actRecal: TAction;
    actMakeRecal: TAction;
    actRecal2: TAction;
    Label97: TLabel;
    CmbCheckDateActive: TDBComboBox;
    BitBtn12: TBitBtn;
    TabSheet17: TTabSheet;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label101: TLabel;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    edtFormRelatedLevelID: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit54: TDBEdit;
    qryFormTypesState0ChangeLevelID: TWordField;
    qryFormTypesState1ChangeLevelID: TWordField;
    qryFormTypesState10ChangeLevelID: TWordField;
    PageControl5: TPageControl;
    TabSheet22: TTabSheet;
    TabSheet23: TTabSheet;
    Label11: TLabel;
    Label13: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label35: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    cmbAidInfoActive: TDBComboBox;
    DBEdit16: TDBEdit;
    edtCustomer2OnDetailLable: TDBEdit;
    Label43: TLabel;
    CmbPay_Topic_Active: TDBComboBox;
    edtFormTopicSerial: TDBEdit;
    Label100: TLabel;
    qryFormTypesFormTopicSerial: TIntegerField;
    qryFormTypesFormPaySerial: TIntegerField;
    edtFormPaySerial: TDBEdit;
    Label102: TLabel;
    qryFormTypesMasterLoan: TWordField;
    dbchkMasterLoan: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    qryFormTypesRecallFormDisk: TWordField;
    TabSheet24: TTabSheet;
    DBCheckBox17: TDBCheckBox;
    Label15: TLabel;
    cmbAccountRelationPosition: TDBComboBox;
    grpAcc: TGroupBox;
    qryFormTypesTopicCodeActive: TWordField;
    qryFormTypesDetailCodeActive: TWordField;
    qryFormTypesCTopicCode1Active: TWordField;
    qryFormTypesCTopicCode2Active: TWordField;
    qryFormTypesUpholdActive: TWordField;
    dbchkUpholdActive: TDBCheckBox;
    qryFormTypesEditableFields: TWideStringField;
    actCopy: TAction;
    Label104: TLabel;
    cmbCustomerDetailsDocType: TDBComboBox;
    Label105: TLabel;
    cmbBedBesDetails: TDBComboBox;
    qryFormTypesCustomerDetailsDocType: TWordField;
    qryFormTypesBedBesDetails: TWordField;
    qryFormTypesSellsEmporiumActive: TWordField;
    qryFormTypesSellsMethodActive: TWordField;
    TabSheet25: TTabSheet;
    dbchkSellsEmporiumActive: TDBCheckBox;
    dbchkSellsMethodActive: TDBCheckBox;
    qryFormTypesDuplicateFormNoActive: TWordField;
    Label106: TLabel;
    cmbSerialCheckActive: TDBComboBox;
    dbchkPrintAfterPost: TDBCheckBox;
    qryFormTypesPrintAfterPost: TWordField;
    dbchkCalcCheckDateOfLookUpsAmount1: TDBCheckBox;
    qryFormTypesCalcCheckDateOfLookUpsAmount1: TWordField;
    GroupBox15: TGroupBox;
    btnEditableFields: TSpeedButton;
    edtEditableFields: TDBEdit;
    GroupBox1: TGroupBox;
    chkCustomerKind3: TCheckListBox;
    dbchkPerson3Active: TDBCheckBox;
    qryFormTypesCustomer3Active: TWordField;
    qryFormTypesCustomer3Lable: TWideStringField;
    qryFormTypesCustomerKind3: TWideStringField;
    Label17: TLabel;
    cmbCustomer2ActiveOnDetail: TDBComboBox;
    Label1: TLabel;
    edtCustomer3Lable: TDBEdit;
    qryFormTypesEffectableFormTypes: TStringField;
    qryFormTypesRestartFormNumberOnSellsEmporium: TWordField;
    ts1: TTabSheet;
    dbchkRestartFormNumberOnCust1: TDBCheckBox;
    dbchkDuplicateFormNoActive: TDBCheckBox;
    cmbCheckFor_4Print: TDBComboBox;
    Label2: TLabel;
    qryFormTypesTransmittalActive: TWordField;
    qryFormTypesTransmittalLevelID: TWordField;
    dbchkTransmittalActive: TDBCheckBox;
    DBEdit5: TDBEdit;
    Label20: TLabel;
    qryFormTypesDocTypeCode: TIntegerField;
    Label21: TLabel;
    edtDocTypeCode: TDBEdit;
    qryFormTypesRelatedReciptTypes: TStringField;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    edtRelatedReciptTypes: TDBEdit;
    TabSheet9: TTabSheet;
    qryFormTypesVATActive: TWordField;
    dbchkVATActive: TDBCheckBox;
    qryFormTypesNextFormType: TWordField;
    qryFormTypesDefaultCTopic3_Bed: TWordField;
    qryFormTypesDefaultCTopic3_Bes: TWordField;
    cmbDefaultCTopic3_Bed: TDBComboBox;
    Label28: TLabel;
    cmbDefaultCTopic3_Bes: TDBComboBox;
    Label29: TLabel;
    qryFormTypesCTopicCode3Active: TWordField;
    qryFormTypesAccountNumberNewActive: TWordField;
    dbchkAccountNumberNewActive: TDBCheckBox;
    qryFormTypesCopyFormLevelID: TWordField;
    edtCopyFormLevelID: TDBEdit;
    Label30: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    SBtnReciptNumber: TSpeedButton;
    lbl1: TLabel;
    DBEdit3: TDBEdit;
    edtFormCaption: TDBEdit;
    GroupBox5: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    edtNextFormType: TDBEdit;
    LblRecordCount: TLabel;
    TabSheet10: TTabSheet;
    edtOrderByFields: TDBEdit;
    Label118: TLabel;
    qryFormTypesOrderByFields: TWideStringField;
    GroupBox3: TGroupBox;
    Label31: TLabel;
    edtDay4Edit: TDBEdit;
    qryFormTypesDay4Edit: TWordField;
    qryFormTypesHow2DisplayArzTypeID: TWordField;
    cmbHow2DisplayArzTypeID: TDBComboBox;
    Label33: TLabel;
    qryFormTypesLoansType: TIntegerField;
    qryFormTypesGuaranteesType: TIntegerField;
    Label79: TLabel;
    Label80: TLabel;
    edtGuaranteesType: TDBEdit;
    edtLoansType: TDBEdit;
    qryFormTypesAidInfo2NoCaption: TStringField;
    qryFormTypesSubAmountCaption: TStringField;
    edtAidInfo2NoCaption: TDBEdit;
    Label81: TLabel;
    edtSubAmountCaption: TDBEdit;
    Label82: TLabel;
    qryFormTypesConstTopicCode_Bed: TLargeintField;
    qryFormTypesConstTopicCode_Bes: TLargeintField;
    qryFormTypesCashWageTopicCode: TLargeintField;
    qryFormTypesAutoPrintOnItemAmount: TBCDField;
    GroupBox4: TGroupBox;
    edtAutoPrintOnItemAmount: TDBEdit;
    lbl2: TLabel;
    cmbPriorityFormDate: TDBComboBox;
    qryFormTypesPriorityFormDate: TWordField;
    qryFormTypesRelating4Help: TStringField;
    edtRelating4Help: TDBEdit;
    lbl4: TLabel;
    TabSheet20: TTabSheet;
    GroupBox6: TGroupBox;
    chklstProcedureKindList: TCheckListBox;
    qryFormTypesProcedureKindList: TStringField;
    qryFormTypesWorkFlowID: TIntegerField;
    TabSheet26: TTabSheet;
    Label83: TLabel;
    CmbAutoStateChange: TDBComboBox;
    Label84: TLabel;
    qryFormTypesOtherRptFiles: TStringField;
    qryFormTypesOtherRptCaptions: TStringField;
    Label85: TLabel;
    DBEdit1: TDBEdit;
    btnOtherRptFiles: TSpeedButton;
    qryFormTypesCheckNumberActive: TWordField;
    dbchkCheckNumberActive: TDBCheckBox;
    qryFormTypesCallableStates: TStringField;
    edtCallableStates: TDBEdit;
    Label107: TLabel;
    qryFormTypesInsertSeverableOnRecall: TWordField;
    qryFormTypesDefaultDateActive: TWordField;
    dbchkDefaultDateActive: TDBCheckBox;
    cmbCustomer3Effect: TDBComboBox;
    Label108: TLabel;
    qryFormTypesCustomer3Effect: TWordField;
    qryFormTypesOrderByFieldsItem: TWideStringField;
    edtOrderByFieldsItem: TDBEdit;
    Label109: TLabel;
    qryFormTypesRelationshipFormTypes: TStringField;
    GroupBox14: TGroupBox;
    SpeedButton3: TSpeedButton;
    edtRelationshipFormTypes: TDBEdit;
    qryFormTypesPostOverallType: TIntegerField;
    TabSheet27: TTabSheet;
    edtPostOverallType: TDBEdit;
    Label110: TLabel;
    DBGrid1: TCedarDbgrid;
    qryFormTypesNotSelcetCheckType1InRecall: TWordField;
    DBCheckBox2: TDBCheckBox;
    TabSheet28: TTabSheet;
    dbchkProjectIDActive: TDBCheckBox;
    GroupBox16: TGroupBox;
    chkProjectIDKind: TCheckListBox;
    edtProjectIDLable: TDBEdit;
    Label111: TLabel;
    qryFormTypesProjectIDActive: TWordField;
    qryFormTypesProjectIDLable: TWideStringField;
    qryFormTypesProjectIDKind: TWideStringField;
    cmbCustomer1UseInRecall: TDBComboBox;
    Label103: TLabel;
    DBCheckBox3: TLabel;
    DBCheckBox5: TLabel;
    DBCheckBox6: TLabel;
    DBCheckBox7: TLabel;
    DBCheckBox8: TLabel;
    cmbTopicCodeActive: TDBComboBox;
    cmbDetailCodeActive: TDBComboBox;
    cmbCTopicCode1Active: TDBComboBox;
    cmbCTopicCode2Active: TDBComboBox;
    cmbCTopicCode3Active: TDBComboBox;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    edtCashWageTopicCode1: TDBEdit;
    edtCashWageDetailCode1: TDBEdit;
    edtCashWageCTopicCode1: TDBEdit;
    edtCashWageCTopicCode3: TDBEdit;
    cmbRestartFormNumberOnSellsEmporium: TDBComboBox;
    Label116: TLabel;
    cmbFormStateDefault4Doc: TDBComboBox;
    Label117: TLabel;
    qryFormTypesFormStateDefault4Doc: TWordField;
    qryFormTypesConstTopicCode_ArzBed: TLargeintField;
    qryFormTypesConstTopicCode_ArzBes: TLargeintField;
    Label157: TLabel;
    Label158: TLabel;
    edtConstTopicCode_ArzBed: TDBEdit;
    edtConstTopicCode_ArzBes: TDBEdit;
    TabSheet29: TTabSheet;
    chklstOtherSettings: TCheckListBox;
    qryFormTypesOtherSettings: TLargeintField;
    lbl3: TLabel;
    cmbHasRecall: TDBComboBox;
    Label119: TLabel;
    edtRecallFormTypes: TDBEdit;
    SpeedButton1: TSpeedButton;
    qryFormTypesFormDateBiggerCheckDate: TWordField;
    dbchkCustomer4Active: TDBCheckBox;
    GroupBox17: TGroupBox;
    chkCustomerKind4: TCheckListBox;
    qryFormTypesCustomer4Active: TWordField;
    qryFormTypesCustomer4Lable: TWideStringField;
    qryFormTypesCustomerKind4: TWideStringField;
    edtCustomer4Lable: TDBEdit;
    Label120: TLabel;
    qryFormTypesSeparationDoc: TWordField;
    dbchkSeparationDoc: TDBCheckBox;
    qryFormTypesCopyAccOnRecall: TLargeintField;
    Panel5: TPanel;
    chklstCopyAccOnRecall: TCheckListBox;
    chklstInsertSeverableOnRecall: TCheckListBox;
    dbchkFormDateBiggerCheckDate: TDBCheckBox;
    dbchkFilterYearIDActive: TDBCheckBox;
    qryFormTypesFilterYearIDActive: TWordField;
    cmbCashWageActive: TDBComboBox;
    Label121: TLabel;
    qryFormTypesUseBudgetKind: TWordField;
    cmbUseBudgetKind: TDBComboBox;
    Label122: TLabel;
    qryFormTypesFormCaption_L2: TStringField;
    edtFormCaption_L2: TDBEdit;
    Label123: TLabel;
    qryFormTypesCorrelateFormType: TWordField;
    Label124: TLabel;
    edtCorrelateFormType: TDBEdit;
    qryFormTypesFormRegistrationControls: TLargeintField;
    chklstFormRegistrationControls: TCheckListBox;
    cmbDefaultCurrencyType_Bed: TDBComboBox;
    Label125: TLabel;
    cmbDefaultBudget_Bed: TDBComboBox;
    Label126: TLabel;
    cmbDefaultProject_Bed: TDBComboBox;
    Label127: TLabel;
    cmbDefaultAidInfo_Bed: TDBComboBox;
    Label128: TLabel;
    qryFormTypesDefaultCurrencyType_Bed: TWordField;
    qryFormTypesDefaultCurrencyType_Bes: TWordField;
    qryFormTypesDefaultBudget_Bed: TWordField;
    qryFormTypesDefaultBudget_Bes: TWordField;
    qryFormTypesDefaultProject_Bed: TWordField;
    qryFormTypesDefaultProject_Bes: TWordField;
    qryFormTypesDefaultAidInfo_Bed: TWordField;
    qryFormTypesDefaultAidInfo_Bes: TWordField;
    cmbDefaultCurrencyType_Bes: TDBComboBox;
    Label129: TLabel;
    cmbDefaultBudget_Bes: TDBComboBox;
    Label130: TLabel;
    cmbDefaultProject_Bes: TDBComboBox;
    Label131: TLabel;
    cmbDefaultAidInfo_Bes: TDBComboBox;
    Label132: TLabel;
    qryAccCode: TADOQuery;
    qryAccCodeInfoKind: TWordField;
    qryAccCodeBedBes: TWordField;
    qryAccCodeTopicCode: TLargeintField;
    qryAccCodeDetailCode: TStringField;
    qryAccCodeCTopicCode: TStringField;
    qryAccCodeCTopicCode2: TStringField;
    qryAccCodeCTopicCode3: TStringField;
    qryAccCodeNote: TWideStringField;
    qryAccCodeCustID: TIntegerField;
    srcAccCode: TDataSource;
    TabSheet30: TTabSheet;
    dbgrdAccCode: TCedarDbgrid;
    qryAccCodeFormType: TWordField;
    edtPrimaryFormType: TDBEdit;
    Label133: TLabel;
    qryFormTypesPrimaryFormType: TWordField;
    cmbUserSecurityCheckActive: TDBComboBox;
    Label134: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure srcFormTypesStateChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryFormTypesAfterInsert(DataSet: TDataSet);
    procedure qryFormTypesAfterPost(DataSet: TDataSet);
    procedure qryFormTypesBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure qryFormTypesBeforePost(DataSet: TDataSet);
    procedure actprintExecute(Sender: TObject);
    procedure ppDBText6GetText(Sender: TObject; var Text: String);
    procedure ALLppDBTextGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtBedBesGetText(Sender: TObject; var Text: String);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure ChkCustomerKind1Click(Sender: TObject);
    procedure qryFormTypesAfterScroll(DataSet: TDataSet);
    procedure ForAllDBComboBoxGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ForAllDBComboBoxSetText(Sender: TField; const Text: String);
    procedure BtnCustomerGroupsToCustomerKindClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure actRecalExecute(Sender: TObject);
    procedure actMakeRecalExecute(Sender: TObject);
    procedure qryFormTypesAfterOpen(DataSet: TDataSet);
    procedure actRecal2Execute(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure btnEditableFieldsClick(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnOtherRptFilesClick(Sender: TObject);
    procedure chklstOtherSettingsClick(Sender: TObject);
    procedure dbgrdAccCodeEditButtonClick(Sender: TObject);
    procedure qryAccCodeInfoKindGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryAccCodeBedBesGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryAccCodeAfterInsert(DataSet: TDataSet);
    procedure qryAccCodeInfoKindSetText(Sender: TField; const Text: string);
    procedure qryAccCodeBedBesSetText(Sender: TField; const Text: string);
    procedure qryAccCodeBeforePost(DataSet: TDataSet);
    procedure srcAccCodeStateChange(Sender: TObject);
    procedure dbgrdAccCodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure initform;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  CofferFormTypesF: TCofferFormTypesF;

implementation

uses DM, StrUtils, ChooseItem, GlobalPro, mmessage, sort2, search2,
  FormFunctions, searchCode_ADO, FaraConsts, SearchComponents, IniLang,
  UpDateBank;

{$R *.dfm}

procedure TCofferFormTypesF.SpeedButton1Click(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := qryFormTypes.fieldbyname((Sender as TSpeedButton).Hint).AsString;
  if ChooseItemF.SelectChecks(s, 'FormType', 'FormCaption', 'FormTypes', '',
    dmF.adcBSell) then
  begin
    with qryFormTypes do
    begin
      Edit;
      fieldbyname((Sender as TSpeedButton).Hint).Value :=
        LeftStr(s, length(s) - 1);
    end; // with
  end; // if
end;

procedure TCofferFormTypesF.SpeedButton2Click(Sender: TObject);
var
  s: string;
begin
  inherited;
  s := qryFormTypes.fieldbyname('RelatedReciptTypes').AsString;
  if ChooseItemF.SelectChecks(s, 'ReciptType', 'ReciptCaption', 'ReciptTypes',
    '', dmF.adcBSell) then
  begin
    with qryFormTypes do
    begin
      Edit;
      fieldbyname('RelatedReciptTypes').Value := LeftStr(s, length(s) - 1);
    end; // with
  end; // if

end;

procedure TCofferFormTypesF.srcAccCodeStateChange(Sender: TObject);
begin
  inherited;
  if qryAccCode.State in dsEditModes then
    qryFormTypes.Edit
end;

procedure TCofferFormTypesF.srcFormTypesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFormTypes.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(dmF.adcBSell, '', '', Self.Name);
end;

procedure TCofferFormTypesF.initform;
var
  i: Integer;
  // m: Integer;
  // cmpt: TControl;
  // val, comp, nomComp: string;
begin

  cmbDetailCodeActive.Items.Text := cmbTopicCodeActive.Items.Text;
  cmbCTopicCode1Active.Items.Text := cmbTopicCodeActive.Items.Text;
  cmbCTopicCode2Active.Items.Text := cmbTopicCodeActive.Items.Text;
  cmbCTopicCode3Active.Items.Text := cmbTopicCodeActive.Items.Text;

  CmbDefaultCTopic2_Bed.Items.Text := CmbDefaultCTopic_Bed.Items.Text;
  cmbDefaultCTopic3_Bed.Items.Text := CmbDefaultCTopic_Bed.Items.Text;
  CmbDefaultCTopic_Bes.Items.Text := CmbDefaultCTopic_Bed.Items.Text;
  CmbDefaultCTopic2_Bes.Items.Text := CmbDefaultCTopic_Bed.Items.Text;
  cmbDefaultCTopic3_Bes.Items.Text := CmbDefaultCTopic_Bed.Items.Text;

  CmbCustomer2Effect.Items.Text := CmbCustomer1Effect.Items.Text;
  cmbCustomer3Effect.Items.Text := CmbCustomer1Effect.Items.Text;

  CmbDefaultTopic_Bes.Items.Text := CmbDefaultTopic_Bed.Items.Text;

  CmbCustCodeUse4Bes.Items.Text := CmbCustCodeUse4Bed.Items.Text;
  CmbInfoUse4Bes.Items.Text := CmbInfoUse4Bed.Items.Text;
  CmbDefaultDetail_Bes.Items.Text := CmbDefaultDetail_Bed.Items.Text;

  cmbDefaultCurrencyType_Bes.Items.Text :=
    cmbDefaultCurrencyType_Bed.Items.Text;

  cmbDefaultBudget_Bed.Items.Text := cmbTopicCodeActive.Items.Text;
  cmbDefaultBudget_Bes.Items.Text := cmbTopicCodeActive.Items.Text;
  cmbDefaultProject_Bed.Items.Text := cmbTopicCodeActive.Items.Text;
  cmbDefaultProject_Bes.Items.Text := cmbTopicCodeActive.Items.Text;

  cmbDefaultAidInfo_Bes.Items.Text := cmbDefaultAidInfo_Bed.Items.Text;

  GetStuffGroupsNames(chklstProcedureKindList.Items, True);
  getCustGroupsNames(ChkCustomerKind1.Items, True);
  chkCustomerKind2.Items := ChkCustomerKind1.Items;
  chkCustomerKind3.Items := ChkCustomerKind1.Items;
  chkCustomerKind4.Items := ChkCustomerKind1.Items;
  ChkCustomer2DetailKind.Items := ChkCustomerKind1.Items;
  chkProjectIDKind.Items := ChkCustomerKind1.Items;

  cmbCustomer2DocType.Items := cmbCustomer1DocType.Items;
  cmbCustomerDetailsDocType.Items := cmbCustomer1DocType.Items;

  Panel4.Enabled := User.admin;

  try
    qryFormTypes.Active := True;

  except
    on E: Exception do
    begin
      Warn2(E.Message);
      CreateChildForm(TUpDateBankF, UpDateBankF, Self, 0, alNone);
      qryFormTypes.Active := True;
    end;

  end;

  BtnInsert.Enabled := Panel4.Enabled;
  BtnDelete.Enabled := Panel4.Enabled;

  if User.PowerUser and not User.admin then
  begin
    for i := 0 to ComponentCount - 1 do
      if (Components[i] is TTabSheet) then
        TTabSheet(Components[i]).TabVisible := False;
    TabSheet5.TabVisible := True;
    TabSheet7.TabVisible := True;
  end;

  // for i := 0 to Self.ControlCount - 1 do
  // begin
  // cmpt := Self.Controls[i];
  // nomComp := cmpt.Name;
  // if HasProperty(cmpt, 'DataField') and
  // not(getProp(cmpt, 'DataField') = '') then
  // if (cmpt.Hint = '') then
  // begin
  // cmpt.ShowHint:=True;
  // cmpt.Hint:=getProp(cmpt, 'DataField');
  // end;
  // end;

end;

procedure TCofferFormTypesF.FormResize(Sender: TObject);
begin
  inherited;
  PageControl1.Height := (Panel3.Height * 3) div 5;
end;

procedure TCofferFormTypesF.qryAccCodeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('FormType').AsInteger :=
    qryFormTypes.fieldbyname('FormType').AsInteger;
end;

procedure TCofferFormTypesF.qryAccCodeBedBesGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    exit;
  Text := dbgrdAccCode.Columns[1].PickList.strings[Sender.AsInteger]

end;

procedure TCofferFormTypesF.qryAccCodeBedBesSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsInteger := dbgrdAccCode.Columns[1].PickList.IndexOf(Text);
end;

procedure TCofferFormTypesF.qryAccCodeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.fieldbyname('InfoKind').IsNull then
  begin
    DataSet.Cancel;
    Abort
  end;
end;

procedure TCofferFormTypesF.qryAccCodeInfoKindGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    exit;
  Text := dbgrdAccCode.Columns[0].PickList.strings[Sender.AsInteger]
end;

procedure TCofferFormTypesF.qryAccCodeInfoKindSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsInteger := dbgrdAccCode.Columns[0].PickList.IndexOf(Text);

end;

procedure TCofferFormTypesF.qryFormTypesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('FormType').AsInteger :=
    GetANewCode(Self.Name, 'FormTypes', 'FormType', dmF.adcBSell);
end;

procedure TCofferFormTypesF.qryFormTypesAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryAccCode.State in dsEditModes then
    qryAccCode.Post;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TCofferFormTypesF.qryFormTypesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TCofferFormTypesF.FormCreate(Sender: TObject);
begin
  inherited;
  initform;
end;

procedure TCofferFormTypesF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.FileName := qryFormTypes.fieldbyname('ReportFileName1').AsString;
  if OpenDialog1.Execute then
  begin
    if not(qryFormTypes.State in dsEditModes) then
      qryFormTypes.Edit;
    qryFormTypes.fieldbyname('ReportFileName1').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TCofferFormTypesF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.FileName := qryFormTypes.fieldbyname('ReportFileName2').AsString;
  if OpenDialog1.Execute then
  begin
    if not(qryFormTypes.State in dsEditModes) then
      qryFormTypes.Edit;
    qryFormTypes.fieldbyname('ReportFileName2').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TCofferFormTypesF.SpeedButton8Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryFormTypes.fieldbyname('EffectableFormTypes').AsString;
  if ChooseItemF.SelectChecks(s, 'InterfaceID', 'InterfaceCaption',
    'ACC.Interfaces', '', dmF.adcAccounting) then
  begin
    with qryFormTypes do
    begin
      Edit;
      fieldbyname('EffectableFormTypes').Value := LeftStr(s, length(s) - 1);
    end; // with
  end; // if

end;

procedure TCofferFormTypesF.qryFormTypesBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(qryFormTypes);
end;

procedure TCofferFormTypesF.actprintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TCofferFormTypesF.ppDBText6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if Text = '' then
    exit;
  ALLppDBTextGetText(Sender, Text);
end;

procedure TCofferFormTypesF.ppDBTxtBedBesGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  ALLppDBTextGetText(Sender, Text);
  if Text = '' then
    exit;

end;

procedure TCofferFormTypesF.ppDBText3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  ALLppDBTextGetText(Sender, Text);
  if Text = '' then
    exit;
end;

procedure TCofferFormTypesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.showsort(qryFormTypes);
end;

procedure TCofferFormTypesF.ALLppDBTextGetText(Sender: TObject;
  var Text: String);
begin
  if Text = '' then
    exit;
  Text := TDBComboBox(FindComponent('Cmb' + (Sender AS TppDBText).DataField))
    .Items.strings[strtoint(Text)];
end;

procedure TCofferFormTypesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  SearchComponentsF.ShowForms(CofferFormTypesF, PageControl1);
end;

procedure TCofferFormTypesF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCofferFormTypesF.ChkCustomerKind1Click(Sender: TObject);
begin
  inherited;
  if not(qryFormTypes.State in dsEditModes) then
    qryFormTypes.Edit;
  qryFormTypes.fieldbyname('CustomerKind1').AsString :=
    GetCheckList(ChkCustomerKind1);
  qryFormTypes.fieldbyname('CustomerKind2').AsString :=
    GetCheckList(chkCustomerKind2);
  qryFormTypes.fieldbyname('CustomerKind3').AsString :=
    GetCheckList(chkCustomerKind3);
  qryFormTypes.fieldbyname('CustomerKind4').AsString :=
    GetCheckList(chkCustomerKind4);

  qryFormTypes.fieldbyname('Customer2DetailKind').AsString :=
    GetCheckList(ChkCustomer2DetailKind);

  qryFormTypes.fieldbyname('ProcedureKindList').AsString :=
    GetCheckList(chklstProcedureKindList);

  qryFormTypes.fieldbyname('ProjectIDKind').AsString :=
    GetCheckList(chkProjectIDKind);

end;

procedure TCofferFormTypesF.chklstOtherSettingsClick(Sender: TObject);
begin
  inherited;
  if not(qryFormTypes.State in dsEditModes) then
    qryFormTypes.Edit;
  qryFormTypesOtherSettings.AsLargeInt := GetCheckList2(chklstOtherSettings, 1);

  qryFormTypesFormRegistrationControls.AsLargeInt :=
    GetCheckList2(chklstFormRegistrationControls, 1);

  qryFormTypesCopyAccOnRecall.AsLargeInt :=
    GetCheckList2(chklstCopyAccOnRecall, 1);

  qryFormTypesInsertSeverableOnRecall.AsLargeInt :=
    GetCheckList2(chklstInsertSeverableOnRecall, 1);

end;

procedure TCofferFormTypesF.dbgrdAccCodeEditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  id: Integer;
begin
  inherited;
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;
  id := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  (Sender as TCedarDbgrid).SelectedIndex := id;
  if not(aDataSet.State in dsEditModes) then
    aDataSet.Edit;
  if dbgrdAccCode.Columns[id].FieldName = 'TopicCode' then
    accSpeedButtonTopicCode(qryAccCode, 'TopicCode');
  if dbgrdAccCode.Columns[id].FieldName = 'DetailCode' then
    accSpeedButtonDetailCode(qryAccCode, 'DetailCode', 'TopicCode');
  if dbgrdAccCode.Columns[id].FieldName = 'CTopicCode' then
    accSpeedButtonCTopicCode(qryAccCode, 'CTopicCode', 'TopicCode');
  if dbgrdAccCode.Columns[id].FieldName = 'CTopicCode2' then
    accSpeedButtonCTopicCode2(qryAccCode, 'CTopicCode2', 'CTopicCode', True,
      'TopicCode');
  if dbgrdAccCode.Columns[id].FieldName = 'CTopicCode3' then
    AccSpeedButtonCTopicCode3(qryAccCode, 'CTopicCode3', 'CTopicCode', True,
      'TopicCode');

end;

procedure TCofferFormTypesF.dbgrdAccCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TCofferFormTypesF.qryFormTypesAfterScroll(DataSet: TDataSet);
begin
  inherited;

  initCheckList2(chklstInsertSeverableOnRecall,
    qryFormTypesInsertSeverableOnRecall.AsLargeInt, 1);

  initCheckList2(chklstCopyAccOnRecall,
    qryFormTypesCopyAccOnRecall.AsLargeInt, 1);
  initCheckList2(chklstOtherSettings, qryFormTypesOtherSettings.AsLargeInt, 1);
  initCheckList2(chklstFormRegistrationControls,
    qryFormTypesFormRegistrationControls.AsLargeInt, 1);

  initCheckList(ChkCustomerKind1, trim(qryFormTypes.fieldbyname('CustomerKind1')
    .AsString));
  initCheckList(chkCustomerKind2, trim(qryFormTypes.fieldbyname('CustomerKind2')
    .AsString));
  initCheckList(chkCustomerKind3, trim(qryFormTypes.fieldbyname('CustomerKind3')
    .AsString));
  initCheckList(chkCustomerKind4, trim(qryFormTypes.fieldbyname('CustomerKind4')
    .AsString));

  initCheckList(chkProjectIDKind, trim(qryFormTypes.fieldbyname('ProjectIDKind')
    .AsString));

  initCheckList(ChkCustomer2DetailKind,
    trim(qryFormTypes.fieldbyname('Customer2DetailKind').AsString));

  initCheckList(chklstProcedureKindList,
    trim(qryFormTypes.fieldbyname('ProcedureKindList').AsString));

  With qryAccCode do
  begin
    Close;
    Parameters.ParamByName('FormType').Value :=
      qryFormTypes.fieldbyname('FormType').AsInteger;
    Open;
  end;

end;

procedure TCofferFormTypesF.ForAllDBComboBoxGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TCofferFormTypesF.ForAllDBComboBoxSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TCofferFormTypesF.BtnCustomerGroupsToCustomerKindClick
  (Sender: TObject);
begin
  inherited;
  qryFormTypes.AfterPost := nil;
  with qryFormTypes do
  begin
    while not Eof do
    begin
      Edit;
      if (fieldbyname('CustomerKind1').AsString = '') and
        (fieldbyname('Customer1Groups').AsString <> '') then
        fieldbyname('CustomerKind1').AsString :=
          GetCustomerKind(fieldbyname('Customer1Groups').AsString);
      if (fieldbyname('CustomerKind2').AsString = '') and
        (fieldbyname('Customer2Groups').AsString <> '') then
        fieldbyname('CustomerKind2').AsString :=
          GetCustomerKind(fieldbyname('Customer2Groups').AsString);
      if (fieldbyname('Customer2DetailKind').AsString = '') then
        fieldbyname('Customer2DetailKind').AsString :=
          fieldbyname('CustomerKind1').AsString;

      Next;
    end; // while
  end; // with
  qryFormTypes.AfterPost := qryFormTypesAfterPost;
  BigMessage('«‰Ã«„ ‘œ.˛', 1);
end;

procedure TCofferFormTypesF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFormTypesFormType);
end;

procedure TCofferFormTypesF.SBtnReciptNumberClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(dmF.adcBSell, ' ›—„Â«  ',
    'SELECT FormType, FormCaption FROM FormTypes  ', ['‘„«—Â', ' ⁄‰Ê«‰', '«À—'],
    Results, [100, 300], alLeft);
  if b then
    qryFormTypes.Locate('FormType', Results[0], []);
end;

procedure TCofferFormTypesF.actRecalExecute(Sender: TObject);
begin
  inherited;
  qryFormTypes.AfterPost := nil;
  LoadTableFromZip(qryFormTypes, 'FormTypes', 'FormType', 'FormType', False,
    '¬Ì« »—«Ì ›—«ŒÊ«‰Ì  ‰ŸÌ„«  „ÿ„∆‰ Â” Ìœø' + #13 +
    'œ— ’Ê—  «‰Ã«„ ﬂ·ÌÂ  ‰ŸÌ„«  „ÿ«»ﬁ ›«Ì· „Ì˛‘Êœ.˛');
  qryFormTypes.AfterPost := qryFormTypesAfterPost;
end;

procedure TCofferFormTypesF.actMakeRecalExecute(Sender: TObject);
begin
  inherited;
  MakeTableToZip('FormTypes', dmF.adcBSell, '');
end;

procedure TCofferFormTypesF.qryFormTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  LblRecordCount.Caption := IntToStr(DataSet.RecordCount)
end;

procedure TCofferFormTypesF.actRecal2Execute(Sender: TObject);
begin
  inherited;
  qryFormTypes.AfterPost := nil;
  LoadTableFromZip(qryFormTypes, 'FormTypes', 'FormType', 'FormType', True,
    '¬Ì« »—«Ì ›—«ŒÊ«‰Ì  ‰ŸÌ„«  „ÿ„∆‰ Â” Ìœø' + #13 +
    'œ— ’Ê—  «‰Ã«„ ﬂ·ÌÂ  ‰ŸÌ„«  „ÿ«»ﬁ ›«Ì· „Ì˛‘Êœ.˛');
  qryFormTypes.AfterPost := qryFormTypesAfterPost;
end;

procedure TCofferFormTypesF.BitBtn12Click(Sender: TObject);
begin
  inherited;
  qryFormTypes.AfterPost := nil;
  with qryFormTypes do
  begin
    while not Eof do
    begin
      Edit;
      fieldbyname('Customer2DetailKind').AsString :=
        fieldbyname('CustomerKind2').AsString;
      Next;
    end; // while
  end; // with
  qryFormTypes.AfterPost := qryFormTypesAfterPost;
  BigMessage('«‰Ã«„ ‘œ.˛', 1);
end;

procedure TCofferFormTypesF.btnEditableFieldsClick(Sender: TObject);
begin
  inherited;
  EditableFields(qryFormTypes, 'EditableFields', 'Forms', 'FormItems')
end;

procedure TCofferFormTypesF.btnOtherRptFilesClick(Sender: TObject);
begin
  inherited;
  OtherRptFiles(qryFormTypes)
end;

procedure TCofferFormTypesF.actCopyExecute(Sender: TObject);
begin
  inherited;
  CopyPasteRec(qryFormTypes)
end;

procedure TCofferFormTypesF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        nextIndex := curIndex + 1;
        if (curIndex > 0) and (aDataSet.fieldbyname('InfoKind').IsNull) then
        begin
          aDataSet.Cancel;
          okPanel.SetFocus;
          exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(dbgrdAccCode.Columns[nextIndex].Visible)
          OR (dbgrdAccCode.Columns[nextIndex].ReadOnly)) do
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
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if dbgrdAccCode.Columns[curIndex].ButtonStyle = cbsEllipsis
      then
    begin
      Key := #0;
      dbgrdAccCodeEditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < dbgrdAccCode.Columns.count) and
      (not(dbgrdAccCode.Columns[nextIndex].Visible) OR
      (dbgrdAccCode.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          (Sender as TCedarDbgrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

end.
