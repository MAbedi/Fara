{ -----------------------------------------------------------------------------
  Unit Name: ReciptTypes
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit ReciptTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, DB, ADODB, ImgList,
  DBActns, ActnList, StdCtrls, ExtCtrls, Buttons, ComCtrls,
  DBCtrls, Mask, CheckLst, sndkey32, ppParameter, Menus, WorkflowDm,
  ppDesignLayer, System.ImageList, System.Actions, Winapi.ADOInt, Vcl.Grids,
  Vcl.DBGrids, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, uExtensionMethods,
  jsonadapter, Vcl.ValEdit, atDiagram, DFDBlocks, DiagramExtra;

type
  TReciptTypesF = class(Ttemplate2MDIF)
    qryReciptTypes: TADOQuery;
    srcReciptTypes: TDataSource;
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
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    ppDBPipeline1: TppDBPipeline;
    qryReciptTypesReciptType: TWordField;
    // d: TStringField;
    qryReciptTypesEffectType: TWordField;
    qryReciptTypesUseType: TWordField;
    qryReciptTypesRecallType: TWordField;
    qryReciptTypesMakeDoc: TWordField;
    qryReciptTypesFormSignature: TStringField;
    qryReciptTypesFormHeader: TStringField;
    qryReciptTypesFormFooter: TStringField;
    qryReciptTypesRecallReciptTypes: TStringField;
    qryReciptTypesReportFileName: TStringField;
    qryReciptTypesReciptDescription: TMemoField;
    qryReciptTypesStoreActive: TWordField;
    qryReciptTypesStoreCaption: TStringField;
    // c: TWordField;
    qryReciptTypesPerson1Active: TWordField;
    qryReciptTypesPerson2Active: TWordField;
    qryReciptTypesPerson1Caption: TStringField;
    qryReciptTypesPerson2Caption: TStringField;
    qryReciptTypesPerson1Groups: TStringField;
    qryReciptTypesPerson2Groups: TStringField;
    qryReciptTypesSection1Visible: TWordField;
    qryReciptTypesSection2Visible: TWordField;
    qryReciptTypesSection2Caption: TStringField;
    qryReciptTypesSecondTypeActive: TWordField;
    qryReciptTypesBedType: TWordField;
    qryReciptTypesBesType: TWordField;
    qryReciptTypesControlEntityActive: TWordField;
    qryReciptTypesExpireDateActive: TWordField;
    qryReciptTypesExpireDateCaption: TStringField;
    qryReciptTypesHelpID: TIntegerField;
    qryReciptTypesTemplateCode: TWordField;
    qryReciptTypesControlCodeCaption: TStringField;
    qryReciptTypesUseUnitCase: TWordField;
    qryReciptTypesUseStoreIDOnRecall: TWordField;
    qryReciptTypesDeficitsActive: TWordField;
    newPanel: TPanel;
    BtnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    BtnDelete: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    actSendExel: TAction;
    actPrint: TAction;
    actSort: TAction;
    qryReciptTypesUseUnitCaseCaption: TStringField;
    qryReciptTypesUnitPriceReadOnly: TWordField;
    qryReciptTypesMaxRowsPerForm: TIntegerField;
    OpenDialog1: TOpenDialog;
    qryReciptTypesPrintCount: TWordField;
    qryReciptTypesAutoPrice: TWordField;
    qryReciptTypesAidInfoActive: TWordField;
    qryReciptTypesDiscountActive: TWordField;
    qryReciptTypesOutPutWithTransFormActive: TWordField;
    qryReciptTypesFormTypeForTranseForm: TStringField;
    qryReciptTypesRecallReciptDeficitsType: TStringField;
    qryReciptTypesPerformFileName: TStringField;
    qryReciptTypesCorrelateReciptType: TWordField;
    qryReciptTypesCorrelateKind: TWordField;
    qryReciptTypesAidInfoCaption: TStringField;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel8: TppLabel;
    ppDBTxtBedBes: TppDBText;
    ppDBText9: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    qryReciptTypesEditReciptNumberActive: TWordField;
    qryReciptTypesPersonID1OnDetailActive: TWordField;
    qryReciptTypesNoteShow: TWordField;
    qryReciptTypesMaxCreditChecked: TWordField;
    qryReciptTypesAutoStateChange: TWordField;
    qryReciptTypesControlEntityKind: TWordField;
    qryReciptTypesMnuPlaceID: TWordField;
    qryReciptTypesDetailDateActive: TWordField;
    qryReciptTypesConversionCoSerial: TWordField;
    qryReciptTypesProcedureActive: TWordField;
    qryReciptTypesFormKindSerial: TIntegerField;
    qryReciptTypesCorrelate4EditActive: TWordField;
    qryReciptTypesAutoCorrelate: TWordField;
    qryReciptTypesRowOnMnu: TIntegerField;
    qryReciptTypesDefaultCTopic2_Bed: TWordField;
    qryReciptTypesDefaultCTopic2_Bes: TWordField;
    qryReciptTypesDefaultCTopic_Bed: TWordField;
    qryReciptTypesDefaultCTopic_Bes: TWordField;
    qryReciptTypesDefaultDetail_Bed: TWordField;
    qryReciptTypesDefaultDetail_Bes: TWordField;
    qryReciptTypesDefaultTopic_Bed: TWordField;
    qryReciptTypesDefaultTopic_Bes: TWordField;
    qryReciptTypesEffectOnCustomer: TWordField;
    qryReciptTypesCustomerKind1: TStringField;
    qryReciptTypesCustomerKind2: TStringField;
    qryReciptTypesShowSelectStore: TWordField;
    qryReciptTypesCustCodeUse4Bed: TWordField;
    qryReciptTypesCustCodeUse4Bes: TWordField;
    qryReciptTypesAccountKind4Deficits: TWordField;
    qryReciptTypesAmani_StuffActiveInDoc: TWordField;
    qryReciptTypesActiveDocOnCommission: TWordField;
    qryReciptTypesCofferType: TStringField;
    qryReciptTypesShowListOnMnu: TWordField;
    qryReciptTypesAccCodingShow: TWordField;
    qryReciptTypesStore2Active: TWordField;
    qryReciptTypesDetailNoteActive: TWordField;
    qryReciptTypesADDLevelID: TWordField;
    qryReciptTypesEditLevelID: TWordField;
    qryReciptTypesDeleteLevelID: TWordField;
    qryReciptTypesChangeStateLevelID: TWordField;
    qryReciptTypesPrintLevelID: TWordField;
    qryReciptTypesFormRelatedLevelID: TWordField;
    qryReciptTypesAccCodeLevelID: TWordField;
    qryReciptTypesStoreKindList: TStringField;
    qryReciptTypesDec_DetailCode: TStringField;
    qryReciptTypesDec_CTopicCode: TStringField;
    qryReciptTypesDec_CTopicCode2: TStringField;
    qryReciptTypesEffectOnCustomer2: TWordField;
    qryReciptTypesUseableCustomer: TWordField;
    qryReciptTypesNonZeroControl: TWordField;
    qryReciptTypesMachineActive: TWordField;
    qryReciptTypesEarthActive: TWordField;
    qryReciptTypesWetActive: TWordField;
    qryReciptTypesSugarActive: TWordField;
    qryReciptTypesCustomer2DetailKind: TStringField;
    qryReciptTypesDiscountEntryKind: TWordField;
    qryReciptTypesAidInfoCaptionNo: TStringField;
    qryReciptTypesEffectOnNotRecall: TWordField;
    qryReciptTypesDeficitValueEditing: TWordField;
    qryReciptTypesAidNumRestOnSecType: TWordField;
    qryReciptTypesArzActive: TWordField;
    qryReciptTypesArzTypeID: TIntegerField;
    qryReciptTypesSellEffect: TWordField;
    qryReciptTypesStandardRateActive: TWordField;
    qryReciptTypesNonZeroActive: TWordField;
    qryReciptTypesShowEntityOnSearch: TWordField;
    qryReciptTypesInsertEntity: TWordField;
    qryReciptTypesPriceReadOnly: TWordField;
    qryReciptTypesUnicCodeCheck: TWordField;
    qryReciptTypesReportFileCaption1: TStringField;
    qryReciptTypesReportFileCaption2: TStringField;
    qryReciptTypesStore2Caption: TStringField;
    qryReciptTypesDuplicateReciptNoActive: TWordField;
    actRecal: TAction;
    actMakeRecal: TAction;
    actRecal2: TAction;
    qryReciptTypesUsePerson1OnRecall: TWordField;
    qryReciptTypesExtraCodingAddStuffName: TWordField;
    qryReciptTypesState0ChangeLevelID: TWordField;
    qryReciptTypesState1ChangeLevelID: TWordField;
    qryReciptTypesState2ChangeLevelID: TWordField;
    qryReciptTypesState3ChangeLevelID: TWordField;
    qryReciptTypesFormItemKindSerial: TIntegerField;
    qryReciptTypesSection2CaptionWeight: TStringField;
    qryReciptTypesRequestedChange: TWordField;
    qryReciptTypesDeficitsLevelID: TWordField;
    BitBtn13: TBitBtn;
    qryReciptTypesMaxControlCode: TWordField;
    qryReciptTypesStoreControlEntity: TStringField;
    qryReciptTypesPerson2DetailCaption: TStringField;
    qryReciptTypesAidInfoControlDate: TWordField;
    qryReciptTypesControlCodeUnic: TWordField;
    qryReciptTypesUseOtherActive: TWordField;
    qryReciptTypesDeficate_MakeDocKind: TWordField;
    qryReciptTypesDeficate_DetailCode: TStringField;
    qryReciptTypesTozinActive: TWordField;
    qryReciptTypesOtherRptFiles: TStringField;
    qryReciptTypesOtherRptCaptions: TStringField;
    qryReciptTypesSearchReciptNumber: TWordField;
    qryReciptTypesAcceptRollbackEntity: TWordField;
    qryReciptTypesPrintAfterPost: TWordField;
    qryReciptTypesPriorityReciptDate: TWordField;
    qryReciptTypesEditableFields: TWideStringField;
    qryReciptTypesShowEntityWeightOnList: TWordField;
    qryReciptTypesShowKeepPlace: TWordField;
    actCopy: TAction;
    qryReciptTypesReciptNumberKind: TWordField;
    qryReciptTypesCorrelateReciptNumberKind: TWordField;
    qryReciptTypesAllotmentActive: TWordField;
    qryReciptTypesCorrelateReciptsDeficits: TWordField;
    qryReciptTypesRepelInsertRecipt: TWordField;
    qryReciptTypesDuplicateReciptNumber: TWordField;
    qryReciptTypesCorrelateStateChange: TWordField;
    qryReciptTypesDeficate_MakeDocApart: TWordField;
    qryReciptTypesVATActive: TWordField;
    qryReciptTypesVATCo: TFloatField;
    qryReciptTypesVATRound: TWordField;
    qryReciptTypesOrderByFields: TWideStringField;
    qryReciptTypesMasirActive: TWordField;
    qryReciptTypesDeliveryActive: TWordField;
    qryReciptTypesSellsEmporiumActive: TWordField;
    qryReciptTypesSellsMethodActive: TWordField;
    qryReciptTypesPerson4Active: TWordField;
    qryReciptTypesPerson4Caption: TWideStringField;
    qryReciptTypesCustomerKind4: TWideStringField;
    qryReciptTypesCreditChecked1: TWordField;
    qryReciptTypesCreditChecked2: TWordField;
    qryReciptTypesCreditChecked3: TWordField;
    qryReciptTypesCreditChecked4: TWordField;
    qryReciptTypesCreditChecked5: TWordField;
    qryReciptTypesCustCheckDateOffset: TWordField;
    qryReciptTypesCreditChkCurrentForm: TWordField;
    qryReciptTypesReciptNumberEventKind: TWordField;
    qryReciptTypesCostDownSaveActive: TWordField;
    qryReciptTypesWaterCoOrDeficitValueEdit: TWordField;
    qryReciptTypesStandardCaption: TWideStringField;
    qryReciptTypesPawsFieldsActive: TWordField;
    qryReciptTypesRecallEditKind: TWordField;
    qryReciptTypesDeficitValueUnitSellPrice2: TWordField;
    qryReciptTypesWastesFunctions: TWordField;
    qryReciptTypesCommendation: TWordField;
    PageControl1: TPageControl;
    TabSheet19: TTabSheet;
    Label26: TLabel;
    Label34: TLabel;
    Label78: TLabel;
    Label102: TLabel;
    Label112: TLabel;
    DBCheckBox8: TDBCheckBox;
    DBChkExpireDateActive: TDBCheckBox;
    cmbAidInfoActive: TDBComboBox;
    cmbNoteShow: TDBComboBox;
    DBCheckBox12: TDBCheckBox;
    CmbSection2Visible: TDBComboBox;
    CmbRequestedChange: TDBComboBox;
    dbchkAidInfoControlDate: TDBCheckBox;
    cmbSearchReciptNumber: TDBComboBox;
    dbchkShowKeepPlace: TDBCheckBox;
    dbchkAllotmentActive: TDBCheckBox;
    TabSheet20: TTabSheet;
    Label44: TLabel;
    Label13: TLabel;
    Label118: TLabel;
    cmbMnuPlaceID: TDBComboBox;
    DBEdit24: TDBEdit;
    cmbTemplateCode: TDBComboBox;
    dbchkShowEntityWeightOnList: TDBCheckBox;
    edtOrderByFields: TDBEdit;
    TabSheet26: TTabSheet;
    GroupBox5: TGroupBox;
    ChkBoxStoreKindList: TCheckListBox;
    DBEdit32: TDBEdit;
    ChkBoxStoreActive: TDBCheckBox;
    TabSheet34: TTabSheet;
    Label14: TLabel;
    Label106: TLabel;
    cmbUseUnitCase: TDBComboBox;
    CmbUseOtherActive: TDBComboBox;
    TabSheet36: TTabSheet;
    dbchkSellsEmporiumActive: TDBCheckBox;
    dbchkSellsMethodActive: TDBCheckBox;
    dbchkMasirActive: TDBCheckBox;
    dbchkDeliveryActive: TDBCheckBox;
    chkWastesFunctions: TDBCheckBox;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet10: TTabSheet;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label58: TLabel;
    CmbDefaultTopic_Bed: TDBComboBox;
    CmbDefaultDetail_Bed: TDBComboBox;
    cmbDefaultCTopic_Bed: TDBComboBox;
    cmbDefaultCTopic2_Bed: TDBComboBox;
    CmbCustCodeUse4Bed: TDBComboBox;
    TabSheet11: TTabSheet;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label59: TLabel;
    CmbDefaultTopic_Bes: TDBComboBox;
    CmbDefaultDetail_Bes: TDBComboBox;
    cmbDefaultCTopic_Bes: TDBComboBox;
    cmbDefaultCTopic2_Bes: TDBComboBox;
    CmbCustCodeUse4Bes: TDBComboBox;
    TabSheet12: TTabSheet;
    Label45: TLabel;
    Label46: TLabel;
    edtConstTopicCode_Bed: TDBEdit;
    edtConstTopicCode_Bes: TDBEdit;
    TabSheet21: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label55: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    cmbBedType: TDBComboBox;
    cmbBesType: TDBComboBox;
    cmbEffectOnCustomer: TDBComboBox;
    cmbEffectOnCustomer2: TDBComboBox;
    cmbUseableCustomer: TDBComboBox;
    TabSheet22: TTabSheet;
    Label109: TLabel;
    Label117: TLabel;
    chkHasRecall: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    cmbDeficate_MakeDocKind: TDBComboBox;
    cmbDeficate_MakeDocApart: TDBComboBox;
    TabSheet38: TTabSheet;
    GroupBox8: TGroupBox;
    ChkCustomerKind2: TCheckListBox;
    GroupBox9: TGroupBox;
    ChkCustomerKind1: TCheckListBox;
    BitBtn3: TBitBtn;
    TabSheet39: TTabSheet;
    GroupBox12: TGroupBox;
    ChkCustomer2DetailKind: TCheckListBox;
    GroupBox16: TGroupBox;
    chkCustomerKind3: TCheckListBox;
    TabSheet40: TTabSheet;
    Label36: TLabel;
    dbchkCreditChkCurrentForm: TDBCheckBox;
    cmbMaxCreditChecked: TDBComboBox;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label15: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    Label110: TLabel;
    btnOtherRptFiles: TSpeedButton;
    edtPerformFileName: TDBEdit;
    edtReportFileName: TDBEdit;
    dbmmoFormFooter: TDBMemo;
    dbmmoFormHeader: TDBMemo;
    dbmmoFormSignature: TDBMemo;
    edtPrintCount: TDBEdit;
    edtReportFileCaption1: TDBEdit;
    edtReportFileCaption2: TDBEdit;
    edtOtherRptFiles: TDBEdit;
    TabSheet24: TTabSheet;
    Label27: TLabel;
    GroupBox1: TGroupBox;
    dbedtMaxRowsPerForm: TDBEdit;
    dbchkOutPutWithTransFormActive: TDBCheckBox;
    GroupBox4: TGroupBox;
    SpeedButton9: TSpeedButton;
    dbedtFormTypeForTranseForm: TDBEdit;
    dbchkControlCodeUnic: TDBCheckBox;
    dbchkCostDownSaveActive: TDBCheckBox;
    TabSheet35: TTabSheet;
    Label18: TLabel;
    Label113: TLabel;
    Label123: TLabel;
    dbrgrpUnitPriceReadOnly: TDBRadioGroup;
    cmbAutoPrice: TDBComboBox;
    GroupBox7: TGroupBox;
    Label75: TLabel;
    cmbNonZeroControl: TDBComboBox;
    cmbAcceptRollbackEntity: TDBComboBox;
    cmbPriceReadOnly: TDBComboBox;
    TabSheet25: TTabSheet;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label103: TLabel;
    edtADDLevelID: TDBEdit;
    edtEditLevelID: TDBEdit;
    edtDeleteLevelID: TDBEdit;
    edtChangeStateLevelID: TDBEdit;
    edtPrintLevelID: TDBEdit;
    edtFormRelatedLevelID: TDBEdit;
    edtAccCodeLevelID: TDBEdit;
    edtState0ChangeLevelID: TDBEdit;
    edtState1ChangeLevelID: TDBEdit;
    edtState2ChangeLevelID: TDBEdit;
    edtState3ChangeLevelID: TDBEdit;
    edtDeficitsLevelID: TDBEdit;
    GroupBox15: TGroupBox;
    TabSheet30: TTabSheet;
    Label74: TLabel;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    cmbMachineActive: TDBComboBox;
    chkDeficitValueUnitSellPrice2: TDBCheckBox;
    ts1: TTabSheet;
    Label114: TLabel;
    Label115: TLabel;
    Label122: TLabel;
    dbchkDuplicateReciptNoActive: TDBCheckBox;
    dbchkEditReciptNumberActive: TDBCheckBox;
    dbchkAidNumRestOnSecType: TDBCheckBox;
    cmbReciptNumberKind: TDBComboBox;
    edtReciptNumberOfType: TDBEdit;
    cmbReciptNumberEventKind: TDBComboBox;
    TabSheet9: TTabSheet;
    Label17: TLabel;
    lblControlEntityKind: TLabel;
    Label92: TLabel;
    Label100: TLabel;
    cmbControlEntityActive: TDBComboBox;
    cmbControlEntityKind: TDBComboBox;
    CmbShowEntityOnSearch: TDBComboBox;
    ChkExtraCodingAddStuffName: TDBCheckBox;
    CmbInsertEntity: TDBComboBox;
    GroupBox14: TGroupBox;
    ChkBoxStoreControlEntity: TCheckListBox;
    chkCommendation: TDBCheckBox;
    ts4: TTabSheet;
    TabSheet27: TTabSheet;
    Label107: TLabel;
    Label108: TLabel;
    ChkDeficitsActive: TDBCheckBox;
    GrpDeficits1: TGroupBox;
    SpeedButton10: TSpeedButton;
    DBEdit16: TDBEdit;
    edtDeficate_TopicCode: TDBEdit;
    edtDeficate_DetailCode: TDBEdit;
    TabSheet29: TTabSheet;
    Label76: TLabel;
    dbchkDiscountActive: TDBCheckBox;
    GroupBox6: TGroupBox;
    Label56: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    edtDec_CTopicCode2: TDBEdit;
    edtDec_CTopicCode: TDBEdit;
    edtDec_DetailCode: TDBEdit;
    edtDec_TopicCode: TDBEdit;
    CmbDiscountEntryKind: TDBComboBox;
    dbrgrpWaterCoOrDeficitValueEdit: TDBRadioGroup;
    TabSheet37: TTabSheet;
    Label119: TLabel;
    Label120: TLabel;
    edtVATCo: TDBEdit;
    edtVATRound: TDBEdit;
    TabSheet13: TTabSheet;
    Label37: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label116: TLabel;
    edtCorrelateReciptType: TDBEdit;
    CmbCorrelateKind: TDBComboBox;
    CmbCorrelate4EditActive: TDBComboBox;
    dbchkChangeAidReciptDate: TDBCheckBox;
    cmbCorrelateReciptNumberKind: TDBComboBox;
    TabSheet17: TTabSheet;
    Label39: TLabel;
    Label40: TLabel;
    EdtConversionCoSerial: TDBEdit;
    CmbProcedureActive: TDBComboBox;
    TabSheet18: TTabSheet;
    Label41: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    edtFormKindSerial: TDBEdit;
    CmbSecondTypeActive: TDBComboBox;
    edtFormItemKindSerial: TDBEdit;
    TabSheet23: TTabSheet;
    Label21: TLabel;
    SpeedButton13: TSpeedButton;
    edtCofferType: TDBEdit;
    TabSheet41: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton3: TSpeedButton;
    Label16: TLabel;
    cmbRecallType: TDBComboBox;
    dbchkUseStoreIDOnRecall: TDBCheckBox;
    edtRecallReciptTypes: TDBEdit;
    cmbRecallEditKind: TDBComboBox;
    Panel7: TPanel;
    Panel1: TPanel;
    lbl1: TLabel;
    lblStoreCaption: TLabel;
    dbedtStore2Caption: TDBEdit;
    edtStoreCaption: TDBEdit;
    lblPerson2: TLabel;
    lblPerson1Caption: TLabel;
    dbedtPerson2Caption: TDBEdit;
    edtPerson1Caption: TDBEdit;
    BitBtn11: TBitBtn;
    lblPerson3: TLabel;
    lbl2: TLabel;
    dbedtPerson3Caption: TDBEdit;
    dbedtPerson2DetailCaption: TDBEdit;
    ts2: TTabSheet;
    pgc1: TPageControl;
    ts3: TTabSheet;
    pgc2: TPageControl;
    dbmmoReciptDescription: TDBMemo;
    Label19: TLabel;
    ts5: TTabSheet;
    pgc3: TPageControl;
    TabSheet1: TTabSheet;
    qryAccCode: TADOQuery;
    qryAccCodeReciptType: TWordField;
    qryAccCodeInfoKind: TWordField;
    qryAccCodeDetailCode: TStringField;
    qryAccCodeCTopicCode: TStringField;
    qryAccCodeCTopicCode2: TStringField;
    qryAccCodeCTopicCode3: TStringField;
    qryAccCodeNote: TWideStringField;
    srcAccCode: TDataSource;
    qryAccCodeBedBes: TWordField;
    cmbPawsFieldsActive: TDBComboBox;
    Label20: TLabel;
    qryReciptTypesPerson3ControlWeightCustomer: TWordField;
    dbchkPerson3ControlWeightCustomer: TDBCheckBox;
    pnl2: TPanel;
    lblRecordCount: TLabel;
    edtReciptCaption: TDBEdit;
    btnSBtnReciptNumber: TSpeedButton;
    edtReciptType: TDBEdit;
    lbl11: TLabel;
    lbl12: TLabel;
    pnl1: TPanel;
    lbl10: TLabel;
    edtArzTypeID: TDBEdit;
    qryReciptTypesReciptNumberOfType: TWideStringField;
    dbchkDeficitValueEditing: TDBCheckBox;
    qryReciptTypesTransmittalActive: TWordField;
    qryReciptTypesTransmittalLevelID: TWordField;
    Label5: TLabel;
    edtTransmittalLevelID: TDBEdit;
    qryReciptTypesCustomerRateAct: TWordField;
    Label6: TLabel;
    cmbCartonKind: TDBComboBox;
    cmbTozinActive: TDBComboBox;
    lblTozinActive: TLabel;
    qryReciptTypesCartonKind: TWordField;
    qryReciptTypesDocTypeCode: TIntegerField;
    TabSheet4: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    Label60: TLabel;
    CmbAccountKind4Deficits: TDBComboBox;
    CmbAccCodingShow: TDBComboBox;
    Label61: TLabel;
    Label7: TLabel;
    edtDocTypeCode: TDBEdit;
    TabSheet5: TTabSheet;
    dbchkCreditChecked1: TDBCheckBox;
    dbchkCreditChecked2: TDBCheckBox;
    dbchkCreditChecked3: TDBCheckBox;
    dbchkCreditChecked4: TDBCheckBox;
    dbchkCreditChecked5: TDBCheckBox;
    Label86: TLabel;
    Label121: TLabel;
    edtCustCheckDateOffset: TDBEdit;
    Label28: TLabel;
    qryReciptTypesActiveReMainPersonRecipt: TWordField;
    dbchkActiveReMainPersonRecipt: TDBCheckBox;
    qryReciptTypesActiveTimeToStr: TWordField;
    Label29: TLabel;
    cmbActiveTimeToStr: TDBComboBox;
    dbedtMinRowsPerForm: TDBEdit;
    qryReciptTypesMinRowsPerForm: TIntegerField;
    qryReciptTypesReciptIDEventKind: TWordField;
    Label30: TLabel;
    cmbReciptIDEventKind: TDBComboBox;
    qryReciptTypesWaterCoEffect: TWordField;
    cmbWaterCoEffect: TDBComboBox;
    Label31: TLabel;
    qryReciptTypesSumOnStuffCode: TWordField;
    cmbShowListOnMnu: TDBComboBox;
    Label32: TLabel;
    dbedtReportID: TDBEdit;
    Label33: TLabel;
    qryReciptTypesReportID: TIntegerField;
    cmbRestartFormNumberOnStore: TDBComboBox;
    Label35: TLabel;
    qryReciptTypesBarCodeKind: TWordField;
    cmbBarCodeKind: TDBComboBox;
    Label77: TLabel;
    cmbStandardRateActive: TDBComboBox;
    Label105: TLabel;
    Label79: TLabel;
    edtStepCorrelate: TDBEdit;
    qryReciptTypesStepCorrelate: TSmallintField;
    qryReciptTypesInsertAidOnRecall: TWordField;
    cmbInsertAidOnRecall: TDBComboBox;
    Label80: TLabel;
    dbchkSellPriceCheck: TDBCheckBox;
    qryReciptTypesSellPriceCheck: TWordField;
    qryReciptTypesControlEntityCol: TWordField;
    Label81: TLabel;
    cmbControlEntityCol: TDBComboBox;
    TabSheet6: TTabSheet;
    lbl8: TLabel;
    cmbEffectType: TDBComboBox;
    cmbSellEffect: TDBComboBox;
    lbl9: TLabel;
    GroupBox2: TGroupBox;
    qryReciptTypesIncreasingInventory: TWordField;
    qryReciptTypesIncreasingInventoryStore: TWordField;
    lblIncreasingInventoryStore: TLabel;
    cmbIncreasingInventoryStore: TDBComboBox;
    dbchkIncreasingInventory: TDBCheckBox;
    Label82: TLabel;
    cmbSumOnStuffCode: TDBComboBox;
    cmbShortCutKey: TDBComboBox;
    Label83: TLabel;
    qryReciptTypesShortCutKey: TStringField;
    qryReciptTypesTopicCodeActive: TWordField;
    qryReciptTypesDetailCodeActive: TWordField;
    qryReciptTypesCTopicCode1Active: TWordField;
    qryReciptTypesCTopicCode2Active: TWordField;
    grpAcc: TGroupBox;
    dbchkTopicCode: TDBCheckBox;
    dbchk1: TDBCheckBox;
    dbchk2: TDBCheckBox;
    dbchk3: TDBCheckBox;
    qryReciptTypesRoundCount: TSmallintField;
    lbl13: TLabel;
    edtRoundCount: TDBEdit;
    GroupBox3: TGroupBox;
    chklstMnuPlaceIDs: TCheckListBox;
    qryReciptTypesMnuPlaceIDs: TStringField;
    qryReciptTypesProcedureKindList: TStringField;
    GroupBox10: TGroupBox;
    chklstProcedureKindList: TCheckListBox;
    Label84: TLabel;
    edtProcedureCaption: TDBEdit;
    qryReciptTypesProcedureCaption: TStringField;
    TabSheet7: TTabSheet;
    qryReciptTypesEarthFieldGateActive: TWordField;
    dbchkEarthFieldGateActive: TDBCheckBox;
    dbchkReciptsRowActive: TDBCheckBox;
    qryReciptTypesReciptsRowActive: TWordField;
    qryReciptTypesDefaultCTopic3_Bed: TWordField;
    qryReciptTypesDefaultCTopic3_Bes: TWordField;
    cmbDefaultCTopic3_Bed: TDBComboBox;
    Label85: TLabel;
    cmbDefaultCTopic3_Bes: TDBComboBox;
    Label87: TLabel;
    qryReciptTypesStartEndHourActive: TWordField;
    dbchkStartEndHourActive: TDBCheckBox;
    dbchkCTopicCode3Active: TDBCheckBox;
    qryReciptTypesCTopicCode3Active: TWordField;
    qryReciptTypesRecallReciptState1: TWordField;
    qryReciptTypesCopyFormLevelID: TWordField;
    edtCopyFormLevelID: TDBEdit;
    Label91: TLabel;
    qryReciptTypesBuyEffect: TWordField;
    cmbBuyEffect: TDBComboBox;
    Label101: TLabel;
    qryReciptTypesConversionCoSerialFormula: TWordField;
    cmbConversionCoSerialFormula: TDBComboBox;
    Label104: TLabel;
    qryReciptTypesCommissionActive: TWordField;
    qryReciptTypesFilterYearIDActive: TWordField;
    dbchkFilterYearIDActive: TDBCheckBox;
    qryReciptTypesDay4Edit: TWordField;
    qryReciptTypesReciptBe4PostCtrlEntAct: TWordField;
    dbchkReciptBe4PostCtrlEntAct: TDBCheckBox;
    dbchkChekingTaxPrint: TDBCheckBox;
    qryReciptTypesChekingTaxPrint: TWordField;
    qryReciptTypesConfirmingActive: TWordField;
    dbchkChekingPrintEntity: TDBCheckBox;
    qryReciptTypesChekingPrintEntity: TWordField;
    dbchkChangePriceManifesto: TDBCheckBox;
    qryReciptTypesChangePriceManifesto: TWordField;
    cmbStore2Active: TDBComboBox;
    Label22: TLabel;
    Label23: TLabel;
    cmbCorrelateCoReciptNumber_Kind: TDBComboBox;
    qryReciptTypesCorrelateCoReciptNumber_Kind: TWordField;
    qryReciptTypesReciptType2: TWordField;
    qryReciptTypesAutoInsertPostInsert: TWordField;
    TabSheet8: TTabSheet;
    dbchkPrintAfterPost: TDBCheckBox;
    qryReciptTypesControlPrintingByDate: TWordField;
    TabSheet14: TTabSheet;
    cmbPriorityReciptDate: TDBComboBox;
    Label89: TLabel;
    GroupBox11: TGroupBox;
    Label111: TLabel;
    edtDay4Edit: TDBEdit;
    cmbControlPrintingByDate: TDBComboBox;
    Label24: TLabel;
    cmbDisplayStatusBar: TDBComboBox;
    Label25: TLabel;
    qryReciptTypesDisplayStatusBar: TWordField;
    qryAccCodeTopicCode: TLargeintField;
    qryReciptTypesConstTopicCode_Bed: TLargeintField;
    qryReciptTypesConstTopicCode_Bes: TLargeintField;
    qryReciptTypesDec_TopicCode: TLargeintField;
    qryReciptTypesDeficate_TopicCode: TLargeintField;
    cmbCommissionActive: TDBComboBox;
    Label124: TLabel;
    Label125: TLabel;
    cmbAutoInsertPostInsert: TDBComboBox;
    edtPrimaryReciptType: TDBEdit;
    Label126: TLabel;
    qryReciptTypesPrimaryReciptType: TWordField;
    qryReciptTypesCustomerGrpID4Add2Customers1: TIntegerField;
    qryReciptTypesCustomerGrpID4Add2Customers2: TIntegerField;
    qryCustomersGroup: TADOQuery;
    qryReciptTypes_CustomerGrpID4Add2Customers1: TStringField;
    qryReciptTypes_CustomerGrpID4Add2Customers2: TStringField;
    GroupBox13: TGroupBox;
    dblkcbb_CustomerGrpID4Add2Customers1: TDBLookupComboBox;
    dblkcbb_CustomerGrpID4Add2Customers2: TDBLookupComboBox;
    Label127: TLabel;
    Label128: TLabel;
    dbchkRecuestActive: TDBCheckBox;
    qryReciptTypesPaymentsActive: TWordField;
    lbl14: TLabel;
    lbl15: TLabel;
    cmbArzActive: TDBComboBox;
    lbl16: TLabel;
    cmbDetailDateActive: TDBComboBox;
    dbchkUserSecurityCheckActive: TDBCheckBox;
    grpUserSecurityCheckActive: TGroupBox;
    chklstUserSecurityCheckActive: TCheckListBox;
    lbl17: TLabel;
    cmbDeficitsActive: TDBComboBox;
    cmbCalculatedEntityOrWeight: TDBComboBox;
    Label129: TLabel;
    qryReciptTypesCalculatedEntityOrWeight: TWordField;
    qryReciptTypesAmountInAccountForm: TWordField;
    qryAccCodeCustID: TIntegerField;
    dbchkAmountInAccountForm: TDBCheckBox;
    TabSheet15: TTabSheet;
    Label130: TLabel;
    qryReciptTypesWorkFlowID: TIntegerField;
    CmbAutoStateChange: TDBComboBox;
    Label57: TLabel;
    dbchkStandardConsumptionActive: TDBCheckBox;
    qryReciptTypesStandardConsumptionActive: TWordField;
    qryReciptTypesAidNumberUnic: TWordField;
    cmbAidNumberUnic: TDBComboBox;
    Label131: TLabel;
    qryReciptTypesAlloyDiameterSizeDividedByAMillion: TWordField;
    qryReciptTypesMinAmountOfGiftItems: TIntegerField;
    qryReciptTypesPercentGiftItems: TFloatField;
    GroupBox17: TGroupBox;
    Label132: TLabel;
    edtMinAmountOfGiftItems: TDBEdit;
    edtPercentGiftItems: TDBEdit;
    Label133: TLabel;
    qryReciptTypesActiveGiftItems: TIntegerField;
    cmbActiveGiftItems: TDBComboBox;
    Label134: TLabel;
    qryReciptTypesDefaultDateActive: TWordField;
    dbchkDefaultDateActive: TDBCheckBox;
    Edit1: TEdit;
    chklstDiscountActive: TCheckListBox;
    SpeedButton1: TSpeedButton;
    edtSyntheticCodeField: TDBEdit;
    Label135: TLabel;
    edtSyntheticCodeInField: TDBEdit;
    Label136: TLabel;
    qryReciptTypesSyntheticCodeField: TStringField;
    qryReciptTypesSyntheticCodeInField: TStringField;
    TabSheet28: TTabSheet;
    chklstShowNotEntityOnSearch: TCheckListBox;
    qryReciptTypesStuffCodingAddField: TStringField;
    qryReciptTypesStuffCodingAddFieldCaption: TStringField;
    SpeedButton2: TSpeedButton;
    Label137: TLabel;
    Label138: TLabel;
    edtStuffCodingAddField: TDBEdit;
    edtStuffCodingAddFieldCaption: TDBEdit;
    cmbCustomersNoDiscount: TDBComboBox;
    Label139: TLabel;
    qryReciptTypesCustomersNoDiscount: TWordField;
    Splitter1: TSplitter;
    qryReciptTypesShowNotEntityOnSearch: TLargeintField;
    cmbRecallReciptState1: TDBComboBox;
    Label140: TLabel;
    GroupBox18: TGroupBox;
    chklstStoreKindProductModel: TCheckListBox;
    qryReciptTypesStoreKindProductModel: TStringField;
    GroupBox19: TGroupBox;
    chklstchkCustomerKindPayments: TCheckListBox;
    qryReciptTypesCustomerKindPayments: TWideStringField;
    tsCustomer4: TTabSheet;
    GroupBox20: TGroupBox;
    chkCustomerKind4: TCheckListBox;
    edtPerson4Caption: TDBEdit;
    Label141: TLabel;
    qryReciptTypesPerson3Active: TWordField;
    qryReciptTypesPerson3Caption: TWideStringField;
    qryReciptTypesCustomerKind3: TWideStringField;
    Memo1: TMemo;
    qryReciptTypesEffectOnCustomer3: TWordField;
    qryReciptTypesEffectOnCustomer4: TWordField;
    cmbEffectOnCustomer3: TDBComboBox;
    Label142: TLabel;
    cmbEffectOnCustomer4: TDBComboBox;
    Label143: TLabel;
    chklstRecallTypeOption: TCheckListBox;
    qryReciptTypesRecallTypeOption: TLargeintField;
    cmbUnicCodeCheck: TDBComboBox;
    Label144: TLabel;
    dbgrd2: TCedarDbgrid;
    dbgrdAccCode: TCedarDbgrid;
    cmbAlloyDiameterSizeDividedByAMillion: TDBComboBox;
    edtDesignFormID: TDBEdit;
    Label145: TLabel;
    qryReciptTypesDesignFormID: TIntegerField;
    Edit2: TEdit;
    cmbConfirmingActive: TDBComboBox;
    Label146: TLabel;
    qryReciptTypesFormulaID: TIntegerField;
    Label147: TLabel;
    edtFormulaID: TDBEdit;
    qryReciptTypesReciptCaption_L2: TStringField;
    edtReciptCaption_L2: TDBEdit;
    lblReciptCaption_L2: TLabel;
    CheckBox1: TCheckBox;
    qryReciptTypesUserSecurityCheckActive: TLargeintField;
    DBCheckBox3: TLabel;
    cmbVATActive: TDBComboBox;
    qryReciptTypesFindParentReciptID: TStringField;
    SpeedButton6: TSpeedButton;
    edtFindParentReciptID: TDBEdit;
    Label148: TLabel;
    qryReciptTypesCheckParentReciptID: TWordField;
    chklstAutoCorrelateCo: TCheckListBox;
    dbchkTransmittalActive: TDBCheckBox;
    qryReciptTypesCalcCostStorageCaption: TStringField;
    qryReciptTypesAidDateDay: TIntegerField;
    GroupBox21: TGroupBox;
    Label150: TLabel;
    edtAidDateDay: TDBEdit;
    Label151: TLabel;
    cmbPaymentsActive: TDBComboBox;
    Label152: TLabel;
    cmbFormStateDefault4Doc: TDBComboBox;
    Label153: TLabel;
    qryReciptTypesFormStateDefault4Doc: TWordField;
    Label154: TLabel;
    dblkcbb_CustomerGrpID4Add2Customers3: TDBLookupComboBox;
    qryReciptTypesCustomerGrpID4Add2Customers3: TIntegerField;
    qryReciptTypes_CustomerGrpID4Add2Customers3: TStringField;
    qryReciptTypesMachineNoCaption: TStringField;
    qryReciptTypesMachineNameCaption: TStringField;
    qryReciptTypesConstTopicCode_ArzBed: TLargeintField;
    qryReciptTypesConstTopicCode_ArzBes: TLargeintField;
    Label157: TLabel;
    Label158: TLabel;
    edtConstTopicCode_ArzBed: TDBEdit;
    edtConstTopicCode_ArzBes: TDBEdit;
    qryReciptTypesSettings: TLargeintField;
    chklstSettings: TCheckListBox;
    qryReciptTypesIneffectiveInputChk: TWordField;
    qryReciptTypesOtherFieldCaptions: TStringField;
    lstOtherFieldCaptions: TValueListEditor;
    cmbMaxControlCode: TDBComboBox;
    Label160: TLabel;
    Panel4: TPanel;
    lblSection2Caption: TLabel;
    lbl3: TLabel;
    lblExpireDateCaption: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    Label149: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    edtSection2Caption: TDBEdit;
    dbedtControlCodeCaption: TDBEdit;
    edtExpireDateCaption: TDBEdit;
    dbedtAidInfoCaption: TDBEdit;
    dbedtAidInfoCaptionNo: TDBEdit;
    dbedtSection2CaptionWeight: TDBEdit;
    dbedtStandardCaption: TDBEdit;
    edtCalcCostStorageCaption: TDBEdit;
    edtMachineNoCaption: TDBEdit;
    edtMachineNameCaption: TDBEdit;
    PageControl3: TPageControl;
    TabSheet16: TTabSheet;
    TabSheet31: TTabSheet;
    Label159: TLabel;
    lstFieldInTheField: TValueListEditor;
    qryReciptTypesFieldInTheField: TStringField;
    Label161: TLabel;
    chklstNonZeroActive: TCheckListBox;
    Panel5: TPanel;
    chklstUsePerson1OnRecall: TCheckListBox;
    qryRecallReciptTypes: TADOQuery;
    srcRecallReciptTypes: TDataSource;
    qryRecallReciptTypesReciptType: TIntegerField;
    qryRecallReciptTypesReciptCaption: TStringField;
    qryRecallReciptTypesRecallReciptType: TIntegerField;
    qryRecallReciptTypesRrReciptCaption: TStringField;
    qryRecallReciptTypesRecallType: TWordField;
    chklstChangeAidReciptDate: TCheckListBox;
    qryReciptTypesExcelRecallMaxAmount: TFloatField;
    edtExcelRecallMaxAmount: TDBEdit;
    Label42: TLabel;
    ChkBoxPerson1Active: TDBCheckBox;
    ChkBoxPerson2Active: TDBCheckBox;
    dbchkPerson3Active: TDBCheckBox;
    CmbPersonID1OnDetailActive: TDBComboBox;
    dbchkPerson4Active: TDBCheckBox;
    qryReciptTypesFormType4Service: TWordField;
    edtFormType4Service: TDBEdit;
    Label162: TLabel;
    SpeedButton7: TSpeedButton;
    qryReciptTypesInsuranceValue: TFloatField;
    edtInsuranceValue: TDBEdit;
    Label99: TLabel;
    edtReciptsSplit4PersonIDLevelID: TDBEdit;
    Label163: TLabel;
    qryReciptTypesReciptsSplit4PersonIDLevelID: TWordField;
    cmbReciptStatecreatedForm: TDBComboBox;
    Label164: TLabel;
    qryReciptTypesReciptStatecreatedForm: TWordField;
    qryReciptTypesReciptStateSmallerThan: TWordField;
    edtReciptStateSmallerThan: TDBEdit;
    Label165: TLabel;
    chklstRecuestActive: TCheckListBox;
    qryReciptTypesRecuestActive: TLargeintField;
    Panel6: TPanel;
    Label166: TLabel;
    edtIfFirstUserIsNotEdited: TDBEdit;
    Label167: TLabel;
    qryReciptTypesIfFirstUserIsNotEdited: TStringField;
    qryReciptTypesEffectOnCustomerReg: TWordField;
    cmbEffectOnCustomerReg: TDBComboBox;
    Label168: TLabel;
    qryReciptTypesFillPersonID1From: TWordField;
    cmbFillPersonID1From: TDBComboBox;
    Label169: TLabel;
    grpDay4Edit: TGroupBox;
    Label170: TLabel;
    edtDay4Edit1: TDBEdit;
    cmbCorrelateReciptState: TDBComboBox;
    lbl18: TLabel;
    qryReciptTypesCorrelateReciptState: TWordField;
    pnl3: TPanel;
    dbchkShowSelectStore: TDBCheckBox;
    dbchkCorrelateReciptsDeficits: TDBCheckBox;
    dbchkCorrelateStateChange: TDBCheckBox;
    dbchkRepelInsertRecipt: TDBCheckBox;
    dbchkAutoCorrelate: TDBCheckBox;
    dbchkCheckParentReciptID: TDBCheckBox;
    dbedtUseUnitCaseCaption: TDBEdit;
    lblUseUnitCase: TLabel;
    dbedtUseOtherCaption: TDBEdit;
    lbl19: TLabel;
    qryReciptTypesUseOtherCaption: TStringField;
    cmbCustomerRateAct: TDBComboBox;
    Label171: TLabel;
    GroupBox22: TGroupBox;
    chkCustomerKind5: TCheckListBox;
    dbchkPerson5Active: TDBCheckBox;
    edtPerson5Caption: TDBEdit;
    Label172: TLabel;
    qryReciptTypesPerson5Active: TWordField;
    qryReciptTypesPerson5Caption: TWideStringField;
    qryReciptTypesCustomerKind5: TWideStringField;
    qryReciptTypesPriceCo: TFloatField;
    edtPriceCo: TDBEdit;
    Label173: TLabel;
    qryReciptTypesStereotypyActive: TWordField;
    dbchkStereotypyActive: TDBCheckBox;
    qryReciptTypesUpdateChildFromFather: TWordField;
    dbchkUpdateChildFromFather: TDBCheckBox;
    dbchkUpdateChildFromFather1: TDBCheckBox;
    GroupBox23: TGroupBox;
    SpeedButton8: TSpeedButton;
    actUserNotification: TAction;
    grdPosition: TCedarDbgrid;
    qryPosition: TADOQuery;
    srcPosition: TDataSource;
    qryPositionPositionCode: TIntegerField;
    qryPositionPositionTitle: TStringField;
    qryReciptTypesValueControl: TLargeintField;
    TabSheet32: TTabSheet;
    chklstValueControl: TCheckListBox;
    TabSheet33: TTabSheet;
    Panel8: TPanel;
    chkCorrelateReciptType: TCheckBox;
    chkRecallReciptTypes: TCheckBox;
    chkConversionCoSerial: TCheckBox;
    BitBtn5: TBitBtn;
    SpeedButton11: TSpeedButton;
    Label174: TLabel;
    GroupBox24: TGroupBox;
    qryReciptTypesLabelCaptions: TWideStringField;
    lstLabelCaptions: TValueListEditor;
    qryReciptTypesChangeAidReciptDate: TLargeintField;
    qryReciptTypesReciptNumberControl: TLargeintField;
    chklstReciptNumberControl: TCheckListBox;
    Label175: TLabel;
    chklstOtherSettings: TCheckListBox;
    Panel9: TPanel;
    edtEditableFields: TDBEdit;
    btnEditableFields: TSpeedButton;
    qryReciptTypesOtherSettings: TLargeintField;
    qryReciptTypesReciptType4Copy: TWordField;
    Label176: TLabel;
    edtReciptType4Copy: TDBEdit;
    qryReciptTypesAutoCorrelateCo: TLargeintField;
    qryReciptTypesDefaultStoreID: TSmallintField;
    dbedtDefaultStoreID: TDBEdit;
    Label177: TLabel;
    TabSheet42: TTabSheet;
    grdRecallReciptTypes: TCedarDbgrid;
    qryReciptTypesReciptStatecreatedFormCo: TWordField;
    cmbReciptStatecreatedFormCo: TDBComboBox;
    Label178: TLabel;
    chklstShowSettings: TCheckListBox;
    qryReciptTypesShowSettings: TLargeintField;
    chklstSpecialSettings: TCheckListBox;
    qryReciptTypesSpecialSettings: TLargeintField;
    chklstIneffectiveInputChk: TCheckListBox;
    Panel10: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure srcReciptTypesStateChange(Sender: TObject);
    procedure qryReciptTypesAfterInsert(DataSet: TDataSet);
    procedure qryReciptTypesBeforePost(DataSet: TDataSet);
    procedure srcReciptTypesDataChange(Sender: TObject; Field: TField);
    procedure qryReciptTypesBeforeDelete(DataSet: TDataSet);
    procedure qryReciptTypesAfterPost(DataSet: TDataSet);
    procedure qryReciptTypesAfterDelete(DataSet: TDataSet);
    procedure actSendExelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtRecallReciptTypesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbEffectTypeEnter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ppDBTxtBedBesGetText(Sender: TObject; var Text: String);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryReciptTypesAfterScroll(DataSet: TDataSet);
    procedure ChkCustomerKind1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure btnSBtnReciptNumberClick(Sender: TObject);
    procedure actRecalExecute(Sender: TObject);
    procedure actMakeRecalExecute(Sender: TObject);
    procedure qryReciptTypesAfterOpen(DataSet: TDataSet);
    procedure actRecal2Execute(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure btnOtherRptFilesClick(Sender: TObject);
    procedure btnEditableFieldsClick(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure dbgrdAccCodeEditButtonClick(Sender: TObject);
    procedure dbgrdAccCodeKeyPress(Sender: TObject; var Key: Char);
    procedure qryAccCodeInfoKindGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryAccCodeBedBesGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryAccCodeAfterInsert(DataSet: TDataSet);
    procedure qryAccCodeInfoKindSetText(Sender: TField; const Text: String);
    procedure qryAccCodeBedBesSetText(Sender: TField; const Text: String);
    procedure qryAccCodeBeforePost(DataSet: TDataSet);
    procedure srcAccCodeStateChange(Sender: TObject);
    procedure dbgrd2KeyPress(Sender: TObject; var Key: Char);
    procedure cmbShortCutKeyEnter(Sender: TObject);
    procedure chklstUserSecurityCheckActiveClick(Sender: TObject);
    procedure chklstShowNotEntityOnSearchClick(Sender: TObject);
    procedure chklstDiscountActiveClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure chklstRecallTypeOptionClick(Sender: TObject);
    procedure qryReciptTypesControlEntityActiveChange(Sender: TField);
    procedure chklstAutoCorrelateCoClick(Sender: TObject);
    procedure chklstSettingsClick(Sender: TObject);
    procedure lstOtherFieldCaptionsEnter(Sender: TObject);
    procedure grdRecallReciptTypesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure dbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qryReciptTypesPriceCoChange(Sender: TField);
    procedure actUserNotificationExecute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
  private
    Mytabs: TTabSheet;
    { Private declarations }
    procedure VisibleCaption;
    function validData: Boolean;
    procedure initForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  ReciptTypesF: TReciptTypesF;

implementation

uses DM, GlobalPro, StrUtils, mmessage, ChooseItem, FormFunctions,
  searchCode_ADO, search2, addRemoveRpt, sort2, sort, FaraConsts,
  SearchComponents, SelectedJunctionTable, UpDateBank;

{$R *.dfm}

procedure TReciptTypesF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
end;

procedure TReciptTypesF.initForm;
var
  i: Integer;
begin
  // for i := 0 to ComponentCount do
  // if Components[i] is TPageControl then
  // TPageControl(Components[i]).ActivePageIndex :=
  // StrToInt(ReadConfig(APPID, Self.Name + Components[i].Name,
  // TPageControl(Components[i]).ActivePageIndex.ToString));
  // atDiagram1.Clear(False);

  ChkBoxStoreKindList.Clear;
  for i := 0 to High(StoreKind) do
    ChkBoxStoreKindList.Items.Add(StoreKind[i]);

  grpDay4Edit.Visible := User.PowerUser;

  chklstStoreKindProductModel.Items := ChkBoxStoreKindList.Items;

  cmbDefaultCTopic2_Bed.Items := cmbDefaultCTopic_Bed.Items;
  cmbDefaultCTopic3_Bed.Items := cmbDefaultCTopic_Bed.Items;

  cmbDefaultCTopic_Bes.Items := cmbDefaultCTopic_Bed.Items;
  cmbDefaultCTopic2_Bes.Items := cmbDefaultCTopic_Bed.Items;
  cmbDefaultCTopic3_Bes.Items := cmbDefaultCTopic_Bed.Items;

  CmbDefaultTopic_Bed.Items := cmbDefaultCTopic_Bed.Items;
  CmbDefaultDetail_Bed.Items := cmbDefaultCTopic_Bed.Items;

  CmbDefaultTopic_Bes.Items := cmbDefaultCTopic_Bed.Items;
  CmbDefaultDetail_Bes.Items := cmbDefaultCTopic_Bed.Items;

  BtnInsert.Visible := User.admin;
  BtnDelete.Visible := User.admin;
  getCustGroupsNames(ChkCustomerKind1.Items, True);
  ChkCustomerKind2.Items := ChkCustomerKind1.Items;
  ChkCustomer2DetailKind.Items := ChkCustomerKind1.Items;
  chkCustomerKind3.Items := ChkCustomerKind1.Items;
  chkCustomerKind4.Items := ChkCustomerKind1.Items;
  chkCustomerKind5.Items := ChkCustomerKind1.Items;
  chklstchkCustomerKindPayments.Items := ChkCustomerKind1.Items;

  GetStuffGroupsNames(chklstProcedureKindList.Items, True);
  /// /  TContainedAction.GetSecondaryShortCuts
  //
  // actSendExel.ShortCut.
  // s:=ActnList.ShortCutList.Create;
  // cmbShortCutKey.Items.Text:=s.Text;

  chklstShowNotEntityOnSearch.Columns := 2;
  // chklstSettings.Columns := 2;

  if User.PowerUser and not User.admin then
  begin
    for i := 0 to ComponentCount - 1 do
      if (Components[i] is TTabSheet) then
        TTabSheet(Components[i]).TabVisible := False;
    TabSheet3.TabVisible := True;
    ts2.TabVisible := True;
    TabSheet38.TabVisible := True;
    TabSheet39.TabVisible := True;
    tsCustomer4.TabVisible := True;

    pnl1.Visible := False;

    Mytabs := TTabSheet.Create(PageControl1);
    Mytabs.Caption := 'فراخواني';
    Mytabs.PageControl := PageControl1;
    cmbTozinActive.Parent := Mytabs;
    lblTozinActive.Parent := Mytabs;
  end;

  // cmbControlEntityActive.Width:=400;
  // cmbControlEntityKind.Width:=400;
  // CmbShowEntityOnSearch.Width:=400;
  // CmbInsertEntity.Width:=400;
  // cmbControlEntityCol.Width:=400;
  // cmbDisplayStatusBar.Width:=400;

  try
    qryReciptTypes.Active := True;

  except
    on E: Exception do
    begin
      Warn2(E.Message);
      CreateChildForm(TUpDateBankF, UpDateBankF, Self, 0, alNone);
      qryReciptTypes.Active := True;
    end;

  end;

end;

procedure TReciptTypesF.srcReciptTypesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryReciptTypes.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TReciptTypesF.qryReciptTypesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptType').AsInteger :=
    GetANewCode(Self.Name, 'ReciptTypes', 'ReciptType');
  DataSet.FieldByName('UnitPriceReadOnly').AsInteger := 0;
  edtReciptType.SetFocus;
end;

procedure TReciptTypesF.qryReciptTypesBeforePost(DataSet: TDataSet);
var
  s: string;
  i: Integer;
begin
  inherited;
  if (qryReciptTypesEffectType.AsInteger = 8) and
    (qryReciptTypesIncreasingInventoryStore.AsInteger = 0) then
  begin
    Warn('كد انبار موثر بر افزاينده موجودي مشخص نشده');
    Abort;
  end;

  if qryReciptTypesStepCorrelate.AsInteger < 1 then
  begin
    Warn('تعداد گام هاي رزرو براي فرم مرتبط معتبر نمي باشد');
    Abort;
  end;

  if not validData then
    Abort;
  if not CheckRequiredFields(qryReciptTypes) then
    Abort;
  TrimStringFields(qryReciptTypes);

  for i := 0 to High(SubsysMenu) do
  begin
    if SubsysMenu[i].SubsysCaption <> EmptyStr then
      s := s + ifthen(chklstMnuPlaceIDs.Checked[i], '1', '0')
    else
      s := s + '0';

  end; // for
  qryReciptTypesMnuPlaceIDs.AsString := s;

  qryReciptTypesOtherFieldCaptions.AsString :=
    lstOtherFieldCaptions.strings.Text;
  qryReciptTypesLabelCaptions.AsString := lstLabelCaptions.strings.Text;

  qryReciptTypesFieldInTheField.AsString := lstFieldInTheField.strings.Text;

end;

procedure TReciptTypesF.qryReciptTypesControlEntityActiveChange(Sender: TField);
begin
  inherited;
  if Sender.AsInteger = 5 then
    qryReciptTypesReciptBe4PostCtrlEntAct.AsInteger := 1
end;

procedure TReciptTypesF.qryReciptTypesPriceCoChange(Sender: TField);
begin
  inherited;
  chklstChangeAidReciptDate.Checked[2] := True;
end;

procedure TReciptTypesF.srcReciptTypesDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  VisibleCaption;
end;

procedure TReciptTypesF.lstOtherFieldCaptionsEnter(Sender: TObject);
begin
  inherited;
  if not(qryReciptTypes.State in dsEditModes) then
    qryReciptTypes.Edit;

end;

procedure TReciptTypesF.VisibleCaption;
begin
  { DBGrid1.Visible:=qryReciptTypesRecallType.AsInteger>0;
    PageControl1.Visible:=DBGrid1.Visible;
  }
  edtStoreCaption.Visible := qryReciptTypesStoreActive.AsInteger = 1;
  lblStoreCaption.Visible := edtStoreCaption.Visible;
  // dbchkRestartFormNumberOnStore.Visible := edtStoreCaption.Visible;

  edtPerson1Caption.Visible := qryReciptTypesPerson1Active.Value = 1;
  lblPerson1Caption.Visible := edtPerson1Caption.Visible;

  dbedtPerson2Caption.Visible := qryReciptTypesPerson2Active.Value = 1;
  lblPerson2.Visible := dbedtPerson2Caption.Visible;

  dbedtPerson3Caption.Visible := qryReciptTypesPerson3Active.Value = 1;
  lblPerson3.Visible := dbedtPerson3Caption.Visible;

  edtExpireDateCaption.Visible := qryReciptTypesExpireDateActive.Value = 1;
  lblExpireDateCaption.Visible := edtExpireDateCaption.Visible;

  edtSection2Caption.Visible := qryReciptTypesSection2Visible.Value
    in [0, 1, 3];
  lblSection2Caption.Visible := edtSection2Caption.Visible;
end;

procedure TReciptTypesF.qryReciptTypesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TReciptTypesF.qryReciptTypesAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryAccCode.State in dsEditModes then
    qryAccCode.Post;
  // if get_response('تغييرات ذخيره شوند؟')<>mrYes then abort;
  BigMessage('ثبت شد.', 1);
  qryRecallReciptTypes.Close;
  qryRecallReciptTypes.Open;
  qryRecallReciptTypes.Locate('ReciptType',
    qryReciptTypesReciptType.AsInteger, [])

end;

procedure TReciptTypesF.qryReciptTypesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

function TReciptTypesF.validData: Boolean;
begin
  Result := True;
  if (qryReciptTypesEffectType.AsInteger <= 2) and
    (qryReciptTypesControlEntityActive.AsInteger <> 0) and
    (qryReciptTypesControlEntityKind.AsInteger < 3) then
  begin
    Warn('براي اين " نوع تاثير بر اطلاعات انبار " كنترل موجودي لازم نيست .');
    if PageControl1.TabIndex <> 2 then
      PageControl1.TabIndex := 2;
    if pgc2.TabIndex <> 6 then
      pgc2.TabIndex := 6;

    cmbControlEntityActive.SetFocus;
    Result := true;
  end; // if
  if (qryReciptTypesBedType.AsInteger = 4) and
    (qryReciptTypesBesType.AsInteger = 4) then
  begin
    Warn('نوع بدهكار و بستانكار هردو نمي توانند "ارتباط با حسابداري" باشند.');
    if PageControl1.TabIndex <> 1 then
      PageControl1.TabIndex := 1;
    cmbBedType.SetFocus;
    Result := False;
  end; // if
  if (qryReciptTypesBedType.AsInteger = 0) and
    (qryReciptTypesBesType.AsInteger <> 0) then
  begin
    Warn('چون نوع بدهكار " ندارد " مي‌باشد نوع بستانكار نيز بايد " ندارد " باشد.');
    if PageControl1.TabIndex <> 1 then
      PageControl1.TabIndex := 1;
    cmbBesType.SetFocus;
    Result := False;
  end; // if
  if (qryReciptTypesBesType.AsInteger = 0) and
    (qryReciptTypesBedType.AsInteger <> 0) then
  begin
    Warn('چون نوع بستانكار " ندارد " مي‌باشد نوع بدهكار نيز بايد " ندارد " باشد.');
    if PageControl1.TabIndex <> 1 then
      PageControl1.TabIndex := 1;
    cmbBedType.SetFocus;
    Result := False;
  end; // if

  if (qryReciptTypesIncreasingInventory.AsInteger = 0) and
    (qryReciptTypesIncreasingInventoryStore.AsInteger <> 0) then
  begin
    Warn(lblIncreasingInventoryStore.Caption + ' بايد ندارد باشد ');
    if PageControl1.TabIndex <> 17 then
      PageControl1.TabIndex := 17;
    cmbIncreasingInventoryStore.SetFocus;
    Result := False;
  end; // if

  if (qryReciptTypesIncreasingInventory.AsInteger = 1) and
    (qryReciptTypesIncreasingInventoryStore.AsInteger = 0) then
  begin
    Warn(lblIncreasingInventoryStore.Caption + ' انبار مشخص شود ');
    if PageControl1.TabIndex <> 17 then
      PageControl1.TabIndex := 17;
    cmbIncreasingInventoryStore.SetFocus;
    Result := False;
  end; // if

end;

procedure TReciptTypesF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrd2);
end;

procedure TReciptTypesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, Self.Name);
end;

procedure TReciptTypesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryReciptTypes);
end;

procedure TReciptTypesF.actUserNotificationExecute(Sender: TObject);
var
  cSQL: string;
begin
  inherited;
  cSQL := 'SELECT PositionCode, PositionTitle FROM FaraSystems.dbo.Position ';
  SelectedJunctionTableF.ShowSelect(theMainConnection, 'پست', cSQL,
    ['کد', 'عنوان'], alLeft, [50, 400], 'PositionTitle',
    'Util.UserNotification', qryReciptTypesReciptType);

end;

procedure TReciptTypesF.SpeedButton3Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryReciptTypes.FieldByName((Sender AS TSpeedButton).Hint).AsString;
  if ChooseItemF.SelectChecks(s, 'ReciptType', 'ReciptCaption', ' ReciptTypes',
    'where ReciptType<>' + qryReciptTypesReciptType.AsString) then
  begin
    with qryReciptTypes do
    begin
      Edit;
      FieldByName((Sender AS TSpeedButton).Hint).Value :=
        LeftStr(s, length(s) - 1);
    end; // with
  end; // if
end;

procedure TReciptTypesF.edtRecallReciptTypesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click;
end;

procedure TReciptTypesF.chklstAutoCorrelateCoClick(Sender: TObject);
begin
  inherited;
  if not(qryReciptTypes.State in dsEditModes) then
    qryReciptTypes.Edit;
  qryReciptTypesAutoCorrelateCo.AsLargeInt :=
    GetCheckList2(chklstAutoCorrelateCo, 1);

end;

procedure TReciptTypesF.chklstDiscountActiveClick(Sender: TObject);
begin
  inherited;
  if not(qryReciptTypes.State in dsEditModes) then
    qryReciptTypes.Edit;
  qryReciptTypesDiscountActive.AsInteger :=
    GetCheckList2(chklstDiscountActive, 1);

end;

procedure TReciptTypesF.chklstRecallTypeOptionClick(Sender: TObject);
begin
  inherited;
  if not(qryReciptTypes.State in dsEditModes) then
    qryReciptTypes.Edit;
  qryReciptTypesRecallTypeOption.AsLargeInt :=
    GetCheckList2(chklstRecallTypeOption, 1);

  qryReciptTypesUsePerson1OnRecall.AsLargeInt :=
    GetCheckList2(chklstUsePerson1OnRecall, 1);

end;

procedure TReciptTypesF.chklstSettingsClick(Sender: TObject);
begin
  inherited;
  if not(qryReciptTypes.State in dsEditModes) then
    qryReciptTypes.Edit;
  qryReciptTypesIneffectiveInputChk.AsLargeInt := GetCheckList2(chklstIneffectiveInputChk, 1);

  qryReciptTypesSettings.AsLargeInt := GetCheckList2(chklstSettings, 1);



  qryReciptTypesOtherSettings.AsLargeInt :=
    GetCheckList2(chklstOtherSettings, 1);

  qryReciptTypesShowSettings.AsLargeInt :=
    GetCheckList2(chklstShowSettings, 1);

  qryReciptTypesSpecialSettings.AsLargeInt :=
    GetCheckList2(chklstSpecialSettings, 1);

  qryReciptTypesNonZeroActive.AsLargeInt :=
    GetCheckList2(chklstNonZeroActive, 1);
  qryReciptTypesChangeAidReciptDate.AsLargeInt :=
    GetCheckList2(chklstChangeAidReciptDate, 1);

  qryReciptTypesRecuestActive.AsLargeInt :=
    GetCheckList2(chklstRecuestActive, 1);

  qryReciptTypesValueControl.AsLargeInt := GetCheckList2(chklstValueControl, 1);

  qryReciptTypesReciptNumberControl.AsLargeInt :=
    GetCheckList2(chklstReciptNumberControl, 1);

end;

procedure TReciptTypesF.chklstShowNotEntityOnSearchClick(Sender: TObject);
begin
  inherited;
  if not(qryReciptTypes.State in dsEditModes) then
    qryReciptTypes.Edit;
  qryReciptTypesShowNotEntityOnSearch.AsLargeInt :=
    GetCheckList2(chklstShowNotEntityOnSearch, 1);
end;

procedure TReciptTypesF.chklstUserSecurityCheckActiveClick(Sender: TObject);
begin
  inherited;
  if not(qryReciptTypes.State in dsEditModes) then
    qryReciptTypes.Edit;
  qryReciptTypesUserSecurityCheckActive.AsLargeInt :=
    GetCheckList2(chklstUserSecurityCheckActive, 4);
end;

procedure TReciptTypesF.cmbEffectTypeEnter(Sender: TObject);
begin
  inherited;
  if (qryReciptTypes.State in dsEditModes) then
    (Sender as TDBComboBox).DroppedDown := True;
end;

procedure TReciptTypesF.cmbShortCutKeyEnter(Sender: TObject);
begin
  inherited;
  if (qryReciptTypes.State in dsEditModes) then
    cmbShortCutKey.DroppedDown := True;
  SetKeyboardLatin;
end;

procedure TReciptTypesF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.FileName := qryReciptTypes.FieldByName('PerformFileName')
    .AsString;
  if OpenDialog1.Execute then
  begin
    if not(qryReciptTypes.State in dsEditModes) then
      qryReciptTypes.Edit;
    qryReciptTypes.FieldByName('PerformFileName').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TReciptTypesF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.FileName := qryReciptTypes.FieldByName('ReportFileName').AsString;
  if OpenDialog1.Execute then
  begin
    if not(qryReciptTypes.State in dsEditModes) then
      qryReciptTypes.Edit;
    qryReciptTypes.FieldByName('ReportFileName').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TReciptTypesF.SpeedButton9Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryReciptTypes.FieldByName('FormTypeForTranseForm').AsString;
  if ChooseItemF.SelectChecks(s, 'ReciptType', 'ReciptCaption', 'ReciptTypes')
  then
  begin
    with qryReciptTypes do
    begin
      Edit;
      FieldByName('FormTypeForTranseForm').Value := LeftStr(s, length(s) - 1);
    end; // with
  end; // if

end;

procedure TReciptTypesF.SpeedButton10Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryReciptTypes.FieldByName('RecallReciptDeficitsType').AsString;
  if ChooseItemF.SelectChecks(s, 'DeficitID', 'DeficitName', 'Deficits',
    'WHERE(ExportType=1)') then
  begin
    with qryReciptTypes do
    begin
      // Edit;
      FieldByName('RecallReciptDeficitsType').Value :=
        LeftStr(s, length(s) - 1);
    end; // with
  end; // if
end;

procedure TReciptTypesF.SpeedButton11Click(Sender: TObject);
var
  cSQL: string;
begin
  inherited;
  cSQL := 'SELECT GroupID, GroupName FROM StuffGroups ';
  SelectedJunctionTableF.ShowSelect(theMainConnection, 'گروه های کالا', cSQL,
    ['کد', 'عنوان'], alLeft, [50, 400], 'GroupName', 'ReciptTypesStuffGroups',
    qryReciptTypesReciptType);
end;

procedure TReciptTypesF.ppDBTxtBedBesGetText(Sender: TObject; var Text: String);
begin
  inherited;
  case StrToInt(Text) of
    0:
      Text := 'ندارد';
    1:
      Text := 'حسابهاي مشتري';
    2:
      Text := 'انبار';
    3:
      Text := 'فروش';
    4:
      Text := 'ارتباط با حسابداري';
    5:
      Text := 'قيمت تمام شده';
    6:
      Text := 'كنترل حساب مشتري';
  end;
end;

procedure TReciptTypesF.FormResize(Sender: TObject);
begin
  inherited;
  Panel1.Height := (Panel3.Height * 2) div 5;
end;

procedure TReciptTypesF.FormDestroy(Sender: TObject);
// var
// i: Integer;
begin
  inherited;
  Mytabs.Free;
  // for i := 0 to ComponentCount do
  // if Components[i] is TPageControl then
  // SaveConfig(APPID, Self.Name + Components[i].Name, TPageControl(Components[i])
  // .ActivePageIndex.ToString);

end;

procedure TReciptTypesF.dbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  if ((DataCol < 2) or (Column.FieldName = qryReciptTypesAutoPrice.FieldName))
    and (qryReciptTypesAutoPrice.AsInteger = 1) then
  begin
    dbgrd2.Canvas.Font.Color := clRed;
  end
  else if ((DataCol < 2) or
    (Column.FieldName = qryReciptTypesBuyEffect.FieldName)) and
    (qryReciptTypesBuyEffect.AsInteger = 1) then
  begin
    dbgrd2.Canvas.Font.Color := clGreen;
  end
  else if ((DataCol < 2) or
    (Column.FieldName = qryReciptTypesBuyEffect.FieldName)) and
    (qryReciptTypesBuyEffect.AsInteger >= 2) then
  begin
    dbgrd2.Canvas.Font.Color := clPurple;
  end
  else if ((DataCol < 2) or
    (Column.FieldName = qryReciptTypesSellEffect.FieldName)) and
    (qryReciptTypesSellEffect.AsInteger = 1) then
  begin
    dbgrd2.Canvas.Font.Color := clBlue;
  end
  else if ((DataCol < 2) or
    (Column.FieldName = qryReciptTypesSellEffect.FieldName)) and
    (qryReciptTypesSellEffect.AsInteger = 2) then
  begin
    dbgrd2.Canvas.Font.Color := clMoneyGreen;
  end
  else if ((DataCol < 2) or
    (Column.FieldName = qryReciptTypesEffectType.FieldName)) and
    (qryReciptTypesEffectType.AsInteger in [3, 4, 5, 7, 8]) then
  begin
    dbgrd2.Canvas.Font.Color := clMaroon;
  end
  else
    dbgrd2.Canvas.Font.Color := clWindowText;

  dbgrd2.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TReciptTypesF.dbgrd2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryReciptTypesReciptType);
end;

procedure TReciptTypesF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Cmb' + Sender.FieldName));
  if cmb <> nil then
    Text := cmb.Items.strings[Sender.AsInteger];
end;

procedure TReciptTypesF.ALLSetText(Sender: TField; const Text: String);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Cmb' + Sender.FieldName));
  if cmb <> nil then
    Sender.AsInteger := cmb.ItemIndex;
end;

procedure TReciptTypesF.qryReciptTypesAfterScroll(DataSet: TDataSet);
var
  i: Integer;
  s: string;
begin
  inherited;
  initCheckList2(chklstIneffectiveInputChk,
    qryReciptTypesIneffectiveInputChk.AsLargeInt, 1);



  initCheckList2(chklstUserSecurityCheckActive,
    qryReciptTypesUserSecurityCheckActive.AsLargeInt, 4);

  initCheckList2(chklstShowNotEntityOnSearch,
    qryReciptTypesShowNotEntityOnSearch.AsLargeInt, 1);


  initCheckList2(chklstSettings, qryReciptTypesSettings.AsLargeInt, 1);

  initCheckList2(chklstOtherSettings,
    qryReciptTypesOtherSettings.AsLargeInt, 1);

  initCheckList2(chklstShowSettings,
    qryReciptTypesShowSettings.AsLargeInt, 1);

  initCheckList2(chklstSpecialSettings,
    qryReciptTypesSpecialSettings.AsLargeInt, 1);

  initCheckList2(chklstNonZeroActive,
    qryReciptTypesNonZeroActive.AsLargeInt, 1);

  initCheckList2(chklstChangeAidReciptDate,
    qryReciptTypesChangeAidReciptDate.AsLargeInt, 1);

  initCheckList2(chklstRecuestActive,
    qryReciptTypesRecuestActive.AsLargeInt, 1);

  initCheckList2(chklstValueControl, qryReciptTypesValueControl.AsLargeInt, 1);
  initCheckList2(chklstReciptNumberControl,
    qryReciptTypesReciptNumberControl.AsLargeInt, 1);

  initCheckList2(chklstRecallTypeOption,
    qryReciptTypesRecallTypeOption.AsLargeInt, 1);

  initCheckList2(chklstUsePerson1OnRecall,
    qryReciptTypesUsePerson1OnRecall.AsLargeInt, 1);

  initCheckList2(chklstDiscountActive,
    qryReciptTypesDiscountActive.AsInteger, 1);

  initCheckList2(chklstAutoCorrelateCo,
    qryReciptTypesAutoCorrelateCo.AsInteger, 1);

  initCheckList(ChkCustomerKind1,
    trim(qryReciptTypes.FieldByName('CustomerKind1').AsString));
  initCheckList(ChkCustomerKind2,
    trim(qryReciptTypes.FieldByName('CustomerKind2').AsString));
  initCheckList(ChkCustomer2DetailKind,
    trim(qryReciptTypes.FieldByName('Customer2DetailKind').AsString));
  initCheckList(chkCustomerKind3,
    trim(qryReciptTypes.FieldByName('CustomerKind3').AsString));

  initCheckList(chkCustomerKind4,
    trim(qryReciptTypes.FieldByName('CustomerKind4').AsString));

  initCheckList(chkCustomerKind5,
    trim(qryReciptTypes.FieldByName('CustomerKind5').AsString));

  initCheckList(chklstchkCustomerKindPayments,
    trim(qryReciptTypes.FieldByName('CustomerKindPayments').AsString));

  initCheckList(ChkBoxStoreKindList,
    trim(qryReciptTypes.FieldByName('StoreKindList').AsString));

  initCheckList(chklstStoreKindProductModel,
    trim(qryReciptTypes.FieldByName('StoreKindProductModel').AsString));

  initCheckList(ChkBoxStoreControlEntity,
    trim(qryReciptTypes.FieldByName('StoreControlEntity').AsString));

  initCheckList(chklstProcedureKindList,
    trim(qryReciptTypes.FieldByName('ProcedureKindList').AsString));

  chklstMnuPlaceIDs.Clear;
  s := qryReciptTypes.FieldByName('MnuPlaceIDs').AsString;
  if s = EmptyStr then
    s := '0000000000000000000000000';
  for i := 0 to High(SubsysMenu) do
  // if SubsysCaption[i] <> EmptyStr then
  begin
    chklstMnuPlaceIDs.AddItem(SubsysMenu[i].SubsysCaption, TObject(i));
    chklstMnuPlaceIDs.Checked[chklstMnuPlaceIDs.count - 1] := s[i + 1] = '1';
  end; // for

  With qryAccCode do
  begin
    Close;
    Parameters.ParamByName('ReciptType').Value :=
      qryReciptTypes.FieldByName('ReciptType').AsInteger;
    Open;
  end;
  With qryPosition do
  begin
    Close;
    Parameters.ParamByName('ReciptType').Value :=
      qryReciptTypes.FieldByName('ReciptType').AsInteger;
    Open;
  end;

  lstOtherFieldCaptions.strings.Text :=
    qryReciptTypesOtherFieldCaptions.AsString;

  lstLabelCaptions.strings.Text := qryReciptTypesLabelCaptions.AsString;

  lstFieldInTheField.strings.Text := qryReciptTypesFieldInTheField.AsString;

  // qryRecallReciptTypes.Close;
  // qryRecallReciptTypes.Open;
  // qryRecallReciptTypes.Locate('ReciptType',
  // qryReciptTypesReciptType.AsInteger, [])

end;

procedure TReciptTypesF.ChkCustomerKind1Click(Sender: TObject);
begin
  inherited;
  if not(qryReciptTypes.State in dsEditModes) then
    qryReciptTypes.Edit;
  // if pnlCustomer.Visible then
  // begin
  // qryReciptTypes.FieldByName('CustomerKind1').AsString:=GetCheckList(ChkCustomerKind1_);
  // qryReciptTypes.FieldByName('CustomerKind2').AsString:=GetCheckList(ChkCustomerKind2_);
  // qryReciptTypes.FieldByName('Customer2DetailKind').AsString:=GetCheckList(ChkCustomer2DetailKind_);
  // end
  // else begin
  qryReciptTypes.FieldByName('CustomerKind1').AsString :=
    GetCheckList(ChkCustomerKind1);
  qryReciptTypes.FieldByName('CustomerKind2').AsString :=
    GetCheckList(ChkCustomerKind2);
  qryReciptTypes.FieldByName('Customer2DetailKind').AsString :=
    GetCheckList(ChkCustomer2DetailKind);
  qryReciptTypes.FieldByName('CustomerKind3').AsString :=
    GetCheckList(chkCustomerKind3);

  qryReciptTypes.FieldByName('CustomerKind4').AsString :=
    GetCheckList(chkCustomerKind4);

  qryReciptTypes.FieldByName('CustomerKind5').AsString :=
    GetCheckList(chkCustomerKind5);

  qryReciptTypes.FieldByName('CustomerKindPayments').AsString :=
    GetCheckList(chklstchkCustomerKindPayments);

  // end;
  qryReciptTypes.FieldByName('StoreKindList').AsString :=
    GetCheckList(ChkBoxStoreKindList);

  qryReciptTypes.FieldByName('StoreKindProductModel').AsString :=
    GetCheckList(chklstStoreKindProductModel);

  qryReciptTypes.FieldByName('StoreControlEntity').AsString :=
    GetCheckList(ChkBoxStoreControlEntity);

  qryReciptTypes.FieldByName('MnuPlaceIDs').AsString :=
    GetCheckList(chklstMnuPlaceIDs);

  qryReciptTypes.FieldByName('ProcedureKindList').AsString :=
    GetCheckList(chklstProcedureKindList)

end;

procedure TReciptTypesF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  qryReciptTypes.AfterPost := nil;
  with qryReciptTypes do
  begin
    while not Eof do
    begin
      Edit;
      if (FieldByName('CustomerKind1').AsString = '') and
        (FieldByName('Person1Groups').AsString <> '') then
        FieldByName('CustomerKind1').AsString :=
          GetCustomerKind(FieldByName('Person1Groups').AsString);
      if (FieldByName('CustomerKind2').AsString = '') and
        (FieldByName('Person2Groups').AsString <> '') then
        FieldByName('CustomerKind2').AsString :=
          GetCustomerKind(FieldByName('Person2Groups').AsString);
      if (FieldByName('Customer2DetailKind').AsString = '') then
        FieldByName('Customer2DetailKind').AsString :=
          FieldByName('CustomerKind1').AsString;
      Next;
    end; // while
  end; // with
  qryReciptTypes.AfterPost := qryReciptTypesAfterPost;
  BigMessage('انجام شد.‏', 1);
end;

procedure TReciptTypesF.BitBtn5Click(Sender: TObject);
// var
// PBk, FromPro, ToPro: TDFDProcessBlock;
// DFDDFlL: TDFDDataFlowLine;
// lft: Extended;
// st: TStringList;
// i: Integer;
begin
  inherited;
  // atDiagram1.Clear(False);

  // With qryReciptTypes do
  // try
  // lft := 0;
  // DisableControls;
  // First;
  // while not Eof do
  // begin
  // PBk := TDFDProcessBlock.Create(atDiagram1);
  // PBk.Name := 'PBk' + qryReciptTypes.FieldByName('ReciptType').AsString;
  // PBk.strings.Text := qryReciptTypes.FieldByName('ReciptCaption')
  // .AsString;
  // PBk.Diagram := atDiagram1;
  // PBk.Left := lft;
  // lft := lft + PBk.Width + 4;
  // Next;
  // end;
  //
  // First;
  // while not Eof do
  // begin
  // if (chkCorrelateReciptType.Checked) and
  // (qryReciptTypes.FieldByName('CorrelateReciptType').AsInteger > 0) then
  // begin
  // DFDDFlL := TDFDDataFlowLine.Create(atDiagram1);
  // DFDDFlL.Diagram := atDiagram1;
  // DFDDFlL.Pen.Color := clGreen;
  // DFDDFlL.SelPen.Color := clGreen;
  //
  // FromPro := TDFDProcessBlock
  // (atDiagram1.FindComponent('PBk' + qryReciptTypes.FieldByName
  // ('ReciptType').AsString));
  // DFDDFlL.SourceLinkPoint.Anchor := FromPro;
  // DFDDFlL.SourceLinkPoint.AnchorIndex := 1;
  //
  // ToPro := TDFDProcessBlock
  // (atDiagram1.FindComponent('PBk' + qryReciptTypes.FieldByName
  // ('CorrelateReciptType').AsString));
  // DFDDFlL.TargetLinkPoint.Anchor := ToPro;
  //
  // DFDDFlL.TextCells.Items[0].Text := 'فرم مرتبط>' ;//+ ToPro.strings.Text;
  //
  // if (ToPro <> nil) and (FromPro <> nil) then
  // begin
  // ToPro.Left := FromPro.Left;
  // ToPro.top := FromPro.top + FromPro.Height * 2;
  // end;
  //
  // DFDDFlL.TargetLinkPoint.AnchorIndex := 0; // DFDDFlL.Visible := True;
  // end;
  //
  // Next;
  // end;
  //
  // First;
  // while not Eof do
  // begin
  // if (chkConversionCoSerial.Checked) and
  // (qryReciptTypes.FieldByName('ConversionCoSerial').AsInteger > 0) then
  // begin
  // DFDDFlL := TDFDDataFlowLine.Create(atDiagram1);
  // DFDDFlL.Diagram := atDiagram1;
  // DFDDFlL.Pen.Color := clRed;
  // DFDDFlL.SelPen.Color := clRed;
  //
  // FromPro := TDFDProcessBlock
  // (atDiagram1.FindComponent('PBk' + qryReciptTypes.FieldByName
  // ('ReciptType').AsString));
  // DFDDFlL.SourceLinkPoint.Anchor := FromPro;
  // DFDDFlL.SourceLinkPoint.AnchorIndex := 1;
  //
  // ToPro := TDFDProcessBlock
  // (atDiagram1.FindComponent('PBk' + qryReciptTypes.FieldByName
  // ('ConversionCoSerial').AsString));
  // DFDDFlL.TargetLinkPoint.Anchor := ToPro;
  //
  // DFDDFlL.TextCells.Items[0].Text := 'فرم ضرائب>' ;//+ ToPro.strings.Text;
  //
  // if (ToPro <> nil) and (FromPro <> nil) then
  // begin
  // ToPro.Left := FromPro.Left;
  // ToPro.top := FromPro.top + FromPro.Height * 2;
  // end;
  //
  // DFDDFlL.TargetLinkPoint.AnchorIndex := 0; // DFDDFlL.Visible := True;
  // end;
  //
  // Next;
  // end;
  //
  // First;
  // st := TStringList.Create;
  // while not Eof do
  // begin
  // if (chkRecallReciptTypes.Checked) and
  // (qryReciptTypes.FieldByName('RecallType').AsInteger > 0) and
  // (qryReciptTypes.FieldByName('RecallReciptTypes').AsString <> EmptyStr)
  // then
  // begin
  // st.Delimiter := ',';
  // st.StrictDelimiter := True;
  // st.DelimitedText := qryReciptTypes.FieldByName
  // ('RecallReciptTypes').AsString;
  //
  // for i := 0 to st.count - 1 do
  // begin
  // DFDDFlL := TDFDDataFlowLine.Create(atDiagram1);
  // DFDDFlL.Diagram := atDiagram1;
  // DFDDFlL.Pen.Color := clPurple;
  // DFDDFlL.SelPen.Color := clPurple;
  // DFDDFlL.TextCells.Items[0].Text := cmbRecallType.Items.strings
  // [qryReciptTypes.FieldByName('RecallType').AsInteger];
  //
  // FromPro := TDFDProcessBlock
  // (atDiagram1.FindComponent('PBk' + st[i]));
  // DFDDFlL.SourceLinkPoint.Anchor := FromPro;
  // DFDDFlL.SourceLinkPoint.AnchorIndex := 1;
  //
  // ToPro := TDFDProcessBlock
  // (atDiagram1.FindComponent('PBk' + qryReciptTypes.FieldByName
  // ('ReciptType').AsString));
  // DFDDFlL.TargetLinkPoint.Anchor := ToPro;
  //
  // DFDDFlL.TextCells.Items[0].Text := cmbRecallType.Items.strings
  // [qryReciptTypes.FieldByName('RecallType').AsInteger]+' > '+ ToPro.strings.Text;
  //
  // if (ToPro <> nil) and (FromPro <> nil) then
  // begin
  // ToPro.Left := FromPro.Left + (i * FromPro.Width);
  // ToPro.top := FromPro.top + FromPro.Height * 2 +
  // (i * FromPro.Height);
  // end;
  //
  // DFDDFlL.TargetLinkPoint.AnchorIndex := 0;
  // // DFDDFlL.Visible := True;
  //
  // end;
  // end;
  //
  // Next;
  // end;
  //
  // //
  //
  // finally
  // EnableControls;
  // st.Free;
  // atDiagram1.AutomaticNodes := True;
  // atDiagram1.AutoPage := True;
  //
  // end;
end;

procedure TReciptTypesF.SpeedButton13Click(Sender: TObject);
var
  s, fName: String;
begin
  inherited;
  fName := (Sender as TSpeedButton).Hint;
  s := qryReciptTypes.FieldByName(fName).AsString;
  if ChooseItemF.SelectChecks(s, 'FormType', 'FormCaption', 'FormTypes', '')
  then
  begin
    with qryReciptTypes do
    begin
      Edit;
      FieldByName(fName).Value := LeftStr(s, length(s) - 1);
    end; // with
  end; // if
end;

procedure TReciptTypesF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  EditableFields(qryReciptTypes, 'SyntheticCodeField', 'ReciptItems',
    'ReciptItems');
  OtherRptFiles(qryReciptTypes, 'SyntheticCodeField', 'SyntheticCodeInField')
end;

procedure TReciptTypesF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  EditableFields(qryReciptTypes, 'StuffCodingAddField', 'StuffCoding',
    'StuffCoding');
  OtherRptFiles(qryReciptTypes, 'StuffCodingAddField',
    'StuffCodingAddFieldCaption')
end;

procedure TReciptTypesF.btnSBtnReciptNumberClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' فرمها  ',
    'SELECT ReciptType, ReciptCaption, EffectType FROM ReciptTypes  ',
    ['شماره', ' فرم', 'اثر'], Results, [50, 300, 50], alLeft);
  if b then
    qryReciptTypes.Locate('ReciptType', Results[0], []);
end;

procedure TReciptTypesF.actRecalExecute(Sender: TObject);
begin
  inherited;
  try
    qryReciptTypes.AfterPost := nil;
    qryReciptTypes.BeforePost := nil;
    LoadTableFromZip2(qryReciptTypes, 'ReciptTypes', 'ReciptType', 'ReciptType',
      False, 'آيا براي فراخواني تنظيمات مطمئن هستيد؟' + #13 +
      'در صورت انجام كليه تنظيمات مطابق فايل مي‏شود.‏');
  finally
    qryReciptTypes.AfterPost := qryReciptTypesAfterPost;
    qryReciptTypes.BeforePost := qryReciptTypesBeforePost;
  end;

end;

procedure TReciptTypesF.actMakeRecalExecute(Sender: TObject);
begin
  inherited;
  MakeTableToZip2('ReciptTypes', DMf.adcBSell, '')
end;

procedure TReciptTypesF.qryReciptTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  lblRecordCount.Caption := IntToStr(DataSet.RecordCount);
  qryReciptTypes.Properties['Update Criteria'].Value := adCriteriaKey;
end;

procedure TReciptTypesF.actRecal2Execute(Sender: TObject);
begin
  inherited;

  qryReciptTypes.AfterPost := nil;
  LoadTableFromZip(qryReciptTypes, 'ReciptTypes', 'ReciptType', 'ReciptType',
    True, 'آيا براي فراخواني تنظيمات مطمئن هستيد؟' + #13 +
    'در صورت انجام كليه تنظيمات مطابق فايل مي‏شود.‏');
  qryReciptTypes.AfterPost := qryReciptTypesAfterPost;
end;

procedure TReciptTypesF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  qryReciptTypes.AfterPost := nil;
  with qryReciptTypes do
  begin
    while not Eof do
    begin
      Edit;
      FieldByName('Customer2DetailKind').AsString :=
        FieldByName('CustomerKind1').AsString;
      Next;
    end; // while
  end; // with
  qryReciptTypes.AfterPost := qryReciptTypesAfterPost;
  BigMessage('انجام شد.‏', 1);
end;

procedure TReciptTypesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  SearchComponentsF.ShowForms(ReciptTypesF, PageControl1);
end;

procedure TReciptTypesF.btnOtherRptFilesClick(Sender: TObject);
begin
  inherited;
  OtherRptFiles(qryReciptTypes)
end;

procedure TReciptTypesF.btnEditableFieldsClick(Sender: TObject);
begin
  inherited;
  EditableFields(qryReciptTypes, 'EditableFields', 'Recipts', 'ReciptItems');
end;

procedure TReciptTypesF.actCopyExecute(Sender: TObject);
var
  qry: TADOQuery;
  i, ReciptType: Integer;
begin
  inherited;
  // ReciptTypeOld := qryReciptTypesReciptType.AsInteger;
  ReciptType := GetANewCode(Self.Name, 'ReciptTypes', 'ReciptType');
  qry := TADOQuery.Create(DMf);
  try
    With qry do
    begin
      Connection := qryReciptTypes.Connection;
      SQL.Text := 'SELECT * FROM ReciptTypes1 WHERE (ReciptType = 0)';
      Active := True;
      Append;
      for i := 0 to Fields.count - 1 do
      begin
        if (qryReciptTypes.FindField(Fields[i].FieldName) <> nil) and
          not(qryReciptTypes.FieldByName(Fields[i].FieldName).IsNull) then
          FieldByName(Fields[i].FieldName).Value :=
            qryReciptTypes.FieldByName(Fields[i].FieldName).Value;
      end;
      FieldByName('ReciptType').AsInteger := ReciptType;
      FieldByName('ReciptCaption').AsString := FieldByName('ReciptCaption')
        .AsString + ' > ' + IntToStr(ReciptType);
      try
        Post;
      except
        DMf.adcBSell.Execute
          ('ALTER TABLE ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ConstTopicCode_ArzBed  DEFAULT (0) FOR ConstTopicCode_ArzBed   ALTER TABLE ReciptTypes2 ADD  CONSTRAINT DF_ReciptTypes2_ConstTopicCode_ArzBes  DEFAULT (0) FOR ConstTopicCode_ArzBes');
        Post;
      end;
      Active := False;
      SQL.Text := Format('SELECT * FROM ReciptTypes2 WHERE (ReciptType2 = %d)',
        [ReciptType]);
      Active := True;
      Edit;
      for i := 0 to Fields.count - 1 do
      begin
        if (qryReciptTypes.FindField(Fields[i].FieldName) <> nil) and
          not(qryReciptTypes.FieldByName(Fields[i].FieldName).IsNull) then
          FieldByName(Fields[i].FieldName).Value :=
            qryReciptTypes.FieldByName(Fields[i].FieldName).Value;
      end;
      FieldByName('ReciptType2').AsInteger := ReciptType;
      Post;
    end;

  finally
    qry.Free;
    qryReciptTypes.Requery();
    qryReciptTypes.Locate('ReciptType', ReciptType, []);
  end;

end;

procedure TReciptTypesF.dbgrdAccCodeEditButtonClick(Sender: TObject);
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

procedure TReciptTypesF.dbgrdAccCodeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TReciptTypesF.grdRecallReciptTypesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  // if not(gdSelected in State) then
  // begin
  // if ((qryRecallReciptTypesReciptType.AsInteger = qryReciptTypesReciptType.
  // AsInteger) or (qryRecallReciptTypesRecallReciptType.AsInteger =
  // qryReciptTypesReciptType.AsInteger)) then
  // grdRecallReciptTypes.Canvas.Brush.Color := const_Currency_columns_color;
  // end; // if
  // grdRecallReciptTypes.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TReciptTypesF.gridkeyenter(Sender: TObject; var Key: Char);
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
        if (curIndex > 0) and (aDataSet.FieldByName('InfoKind').IsNull) then
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

procedure TReciptTypesF.qryAccCodeInfoKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    exit;
  Text := dbgrdAccCode.Columns[0].PickList.strings[Sender.AsInteger]
end;

procedure TReciptTypesF.qryAccCodeBedBesGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    exit;
  Text := dbgrdAccCode.Columns[1].PickList.strings[Sender.AsInteger]
end;

procedure TReciptTypesF.qryAccCodeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptType').AsInteger :=
    qryReciptTypes.FieldByName('ReciptType').AsInteger;

end;

procedure TReciptTypesF.qryAccCodeInfoKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := dbgrdAccCode.Columns[0].PickList.IndexOf(Text);
end;

procedure TReciptTypesF.qryAccCodeBedBesSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := dbgrdAccCode.Columns[1].PickList.IndexOf(Text);
end;

procedure TReciptTypesF.qryAccCodeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('InfoKind').IsNull then
  begin
    DataSet.Cancel;
    Abort
  end;
end;

procedure TReciptTypesF.srcAccCodeStateChange(Sender: TObject);
begin
  inherited;
  if qryAccCode.State in dsEditModes then
    qryReciptTypes.Edit
end;

// در زمان فراخواني تاريخ . شماره كمكي از اطلاعات تاريخ . شماره فرم اصلي پر شود و تايپ به تايپ جديد تبديل شود‏
// اين حالت دقيقا شبيه به گزينه شماره 1 است ولي بجاي Insert‏ ركودهاي جديد  فقط تايپ تبديل شود.

{ object qryReciptTypes_WorkFlow: TStringField
  FieldKind = fkLookup
  FieldName = '_WorkFlow'
  LookupKeyFields = 'id'
  LookupResultField = 'name'
  KeyFields = 'WorkFlowID'
  Size = 255
  Lookup = True
  end
}

end.
