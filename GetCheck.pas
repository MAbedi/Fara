{ -----------------------------------------------------------------------------
  Unit Name: GetCheck
  Author:    Mostafa
  ----------------------------------------------------------------------------- }
unit GetCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, ComCtrls, System.StrUtils,
  zAPIBalloon, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppCtrls, ppBands, ppPrnabl, ppCache, ppStrtch,
  ppRegion, Menus, ppMemo, jpeg, ppVar, ppTypes, ppParameter, Math,
  ppDesignLayer, System.ImageList, System.Actions, FarsiReportBuilde,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.Samples.Spin,
  FrGetCheckPostOverallType;

type
  TGetCheckF = class(Ttemplate2MDIF)
    qryMaster_Forms: TADOQuery;
    srcMaster_Forms: TDataSource;
    qryMaster_FormsFormID: TIntegerField;
    qryMaster_FormsFormType: TWordField;
    qryMaster_FormsFormNumber: TIntegerField;
    qryMaster_FormsFormDate: TStringField;
    qryMaster_FormsCustomerID1: TIntegerField;
    qryMaster_FormsCustomerID2: TIntegerField;
    qryMaster_FormsAmount: TBCDField;
    qryMaster_FormsBudgetCode: TIntegerField;
    qryMaster_FormsDetailCode: TStringField;
    qryMaster_FormsCTopicCode: TStringField;
    qryMaster_FormsFomNote: TStringField;
    qryDetail_Item: TADOQuery;
    srcDetail_Item: TDataSource;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    qryInitQry: TADOQuery;
    actNote: TAction;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    Panel1: TPanel;
    pnlBottomCheck: TPanel;
    newPanel2: TPanel;
    qryMaster_Forms_MoeinName: TStringField;
    qryMaster_Forms_CTopicCodeName2: TStringField;
    qryMaster_Forms_DetailName: TStringField;
    qryCustomer1: TADOQuery;
    qryCustomer2: TADOQuery;
    qryMaster_Forms_Customer1Name: TStringField;
    qryMaster_Forms_Customer3Name: TStringField;
    BitBtn5: TBitBtn;
    DBNavigator1: TDBNavigator;
    actselectCheck: TAction;
    Panel4: TPanel;
    DBText4: TDBText;
    pnlDetailCust: TPanel;
    PnlDetailBudege: TPanel;
    SpeedButton12: TSpeedButton;
    Label15: TLabel;
    txt_BudgetNameD: TDBText;
    DBEdit21: TDBEdit;
    pnlDetailCustomer2: TPanel;
    DBText5: TDBText;
    btnCustomerID2: TSpeedButton;
    edtCustomerID2d: TDBEdit;
    pnlReceiveCheck: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    edtAccountNumber: TDBEdit;
    cmbCities: TDBComboBox;
    cmbBanks: TDBComboBox;
    pnlCheck: TPanel;
    Label2: TLabel;
    EdtCheckNumber: TDBEdit;
    pnlChecktype: TPanel;
    Label6: TLabel;
    cmbCheckType: TDBComboBox;
    PnlValue: TPanel;
    Label8: TLabel;
    lblValue: TLabel;
    edtItemAmount: TDBEdit;
    grpDetailNote: TGroupBox;
    DBMemo1: TDBMemo;
    BitBtn7: TBitBtn;
    actPrint: TAction;
    StatusBar1: TStatusBar;
    ppReport1: TppReport;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    actCopyArticle: TAction;
    actPastArticle: TAction;
    actDelete: TAction;
    Panel9: TPanel;
    grpMasterAccount: TGroupBox;
    pnlCustomer1: TPanel;
    btnCustomerID1: TSpeedButton;
    lblCustomer1: TLabel;
    DBText8: TDBText;
    edtCustomerID1: TDBEdit;
    pnlCustomer2: TPanel;
    lblCustomer2: TLabel;
    SpeedButton7: TSpeedButton;
    DBText7: TDBText;
    edtCustomerID2: TDBEdit;
    pnlMasterValue: TPanel;
    Label17: TLabel;
    edtMasterValue: TDBEdit;
    PnlMasterBudege: TPanel;
    SpeedButton11: TSpeedButton;
    Label23: TLabel;
    txt_BudgetNameM: TDBText;
    DBEdit20: TDBEdit;
    grpMasterNote: TGroupBox;
    pnlWarning: TPanel;
    imgWarning: TImage;
    lblWarning: TLabel;
    zBall: TzAPIBalloon;
    PopMnuGrid: TPopupMenu;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    N6: TMenuItem;
    N1: TMenuItem;
    N10: TMenuItem;
    qryMaster_FormsAidInfoNo: TStringField;
    qryMaster_FormsAidInfoDate: TStringField;
    pnlAidInfoDateMaster: TPanel;
    LblAidInfoNo: TLabel;
    DBEdit4: TDBEdit;
    LblAidInfoDate: TLabel;
    DBEdit6: TDBEdit;
    pnlAidInfoDateDetail: TPanel;
    LblAidInfoNo1: TLabel;
    LblAidInfoDate1: TLabel;
    edtAidInfoNo: TDBEdit;
    edtAidInfoDate: TDBEdit;
    PopChoose: TPopupMenu;
    ChooseDiskMeli: TMenuItem;
    MnuChooseChecksF: TMenuItem;
    qryMaster_FormsCTopicCode2: TStringField;
    qryMaster_Forms_CTopicCodeName: TStringField;
    qryMaster_Forms_BudgetName: TStringField;
    ppRptChecks4Print: TppReport;
    qry_RptChecks: TADOQuery;
    PopChecks4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    actPrintCheck: TAction;
    BitBtn8: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    PnlCheckDate: TPanel;
    edtCheckDate: TDBEdit;
    Label3: TLabel;
    PopMuPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    actPrint1: TAction;
    actPrint2: TAction;
    pnlPay_Topic2: TPanel;
    pnlPay_Topic1: TPanel;
    cmbPayTypes: TDBComboBox;
    Label18: TLabel;
    Label16: TLabel;
    cmbTopicTypes: TDBComboBox;
    lblDetailCustomer2: TLabel;
    BitBtn14: TBitBtn;
    actSendToExcel: TAction;
    DBMemo2: TDBMemo;
    lblTopCheck: TLabel;
    qryMaster_FormsFormState: TWordField;
    qryMaster_FormsFirstUser: TStringField;
    qryMaster_FormsLastUser: TStringField;
    okPanel2: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    pnlEditNew: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn11: TBitBtn;
    qryMaster_FormsModifyDate: TDateTimeField;
    actSort: TAction;
    ChooseDiskMelat: TMenuItem;
    qryMaster_Forms_BankName: TStringField;
    qryMaster_Forms_AccountNumber: TStringField;
    qryMaster_Forms_BankId: TStringField;
    actSearchReport: TAction;
    qryDetail_ItemFormItemID: TIntegerField;
    qryDetail_ItemFormID: TIntegerField;
    qryDetail_ItemRow: TIntegerField;
    qryDetail_ItemCheckNumber: TStringField;
    qryDetail_ItemCheckDate: TStringField;
    qryDetail_ItemCheckType: TWordField;
    qryDetail_ItemItemAmount: TBCDField;
    qryDetail_ItemItemNote: TStringField;
    qryDetail_ItemBankName: TStringField;
    qryDetail_ItemCity: TStringField;
    qryDetail_ItemDetailCode: TStringField;
    qryDetail_ItemCustomerID2: TIntegerField;
    qryDetail_ItemCTopicCode: TStringField;
    qryDetail_ItemBudgetCode: TIntegerField;
    qryDetail_ItempreFormItemID: TIntegerField;
    qryDetail_Item_MoeinName: TStringField;
    qryDetail_Item_CTopicCodeName: TStringField;
    qryDetail_Item_CTopicCodeName3: TStringField;
    qryDetail_Item_DetailName: TStringField;
    qryDetail_ItemAccountNumber: TStringField;
    qryDetail_ItemProjectID: TIntegerField;
    qryDetail_ItemAidInfoNo: TStringField;
    qryDetail_ItemAidInfoDate: TStringField;
    qryDetail_Item_BudgetName: TStringField;
    qryDetail_ItemCTopicCode2: TStringField;
    qryDetail_Item_CustomerID2: TStringField;
    qryDetail_ItemFirstUser: TStringField;
    qryDetail_ItemLastUser: TStringField;
    qryDetail_ItemCheckFor: TStringField;
    qryDetail_ItemAmountArz: TFloatField;
    qryDetail_ItemCashWage: TBCDField;
    PnlCashWage: TPanel;
    Label25: TLabel;
    edtCashWage: TDBEdit;
    qryMaster_Forms_Address: TStringField;
    qryMaster_Forms_Fax: TStringField;
    qryMaster_Forms_Tel: TStringField;
    A_l_l_Click__: TMenuItem;
    mnuBankReports: TMenuItem;
    qryMaster_Forms_BankReports: TStringField;
    qryCustomer2Detail: TADOQuery;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnOtherMenu: TBitBtn;
    PopMnuOther: TPopupMenu;
    qryMaster_FormsPayTypes: TIntegerField;
    qryMaster_FormsTopicTypes: TIntegerField;
    ppParameterList1: TppParameterList;
    qryMaster_FormsYearID: TIntegerField;
    qryMaster_FormsServerID: TIntegerField;
    qryDetail_ItemServerID: TIntegerField;
    qryDetail_ItemYearID: TIntegerField;
    pnlSells: TPanel;
    pnlSellsEmporium: TPanel;
    Label24: TLabel;
    dblkcbb_SellsEmporium: TDBLookupComboBox;
    pnlSellsMethod: TPanel;
    Label26: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    qryMaster_FormsSellsMethod: TIntegerField;
    qryMaster_FormsSellsEmporium: TIntegerField;
    NAllRecords: TMenuItem;
    actFilter: TAction;
    actPrintRecover: TAction;
    ppBDEPipeline2: TppDBPipeline;
    ppBDEPipeline1: TppDBPipeline;
    actInserNote: TAction;
    N3: TMenuItem;
    N4: TMenuItem;
    pnlTopicCode: TPanel;
    Label22: TLabel;
    SpeedButton9: TSpeedButton;
    txt_MoeinNameM: TDBText;
    DBEdit19: TDBEdit;
    pnlDetailCode: TPanel;
    Label20: TLabel;
    SpeedButton8: TSpeedButton;
    txt_DetailNameM: TDBText;
    DBEdit17: TDBEdit;
    pnlCTopicCode: TPanel;
    SpeedButton10: TSpeedButton;
    Label21: TLabel;
    txt_CTopicCodeNameM: TDBText;
    DBEdit18: TDBEdit;
    pnlCTopicCode3: TPanel;
    SpeedButton17: TSpeedButton;
    Label9: TLabel;
    txt_CTopicCodeName3M: TDBText;
    DBEdit26: TDBEdit;
    qryMaster_FormsDocNo: TIntegerField;
    actRptCoffer: TAction;
    actRptCoffer1: TMenuItem;
    qryMaster_FormsDefaultDate: TStringField;
    pnlDefaultDate: TPanel;
    actSeverable: TAction;
    N7: TMenuItem;
    N9: TMenuItem;
    pnlCustomer3: TPanel;
    lblCustomer3: TLabel;
    SpeedButton16: TSpeedButton;
    DBText16: TDBText;
    DBEdit24: TDBEdit;
    qryMaster_FormsCustomerID3: TIntegerField;
    qryCustomer3: TADOQuery;
    qryMaster_Forms_Customer2Name: TStringField;
    pnlCheckFor_AccountKind_LineCorrosion: TPanel;
    pnlCheckFor: TPanel;
    lblCheckFor: TLabel;
    dbedtCheckFor: TDBEdit;
    aBigPanel: TPanel;
    horoofPanel: TPanel;
    btnGetExcel: TBitBtn;
    actExcell: TAction;
    mnuExcell: TMenuItem;
    actGetExcelMasterDetails: TAction;
    actCopyPaste: TAction;
    mnuCopyPaste: TMenuItem;
    btnCopyPaste: TSpeedButton;
    lblReMainPerson: TLabel;
    qryDetail_ItemTopicTypesI: TIntegerField;
    pnlPay_Topic2I: TPanel;
    Label13: TLabel;
    cmbTopicTypesI: TDBComboBox;
    mnCheck: TMenuItem;
    qryMaster_FormsAidFormType: TWordField;
    qryDetail_ItemCTopicCode3: TStringField;
    qryDetail_Item_CTopicCodeName2: TStringField;
    pnlCTopicCode2: TPanel;
    SpeedButton19: TSpeedButton;
    Label29: TLabel;
    txt_CTopicCodeName2M: TDBText;
    DBEdit22: TDBEdit;
    qryMaster_Forms_CTopicCodeName3: TStringField;
    qryMaster_FormsCTopicCode3: TStringField;
    qryMaster_Forms_CustAccountNumber: TStringField;
    edtAccountNumberNew: TDBEdit;
    Label30: TLabel;
    qryRelatedRecipts: TADOQuery;
    qryMaster_FormsRelatedRecipts: TStringField;
    qryMaster_Forms_RelatedRecipts: TStringField;
    SpeedButton21: TSpeedButton;
    BitBtn15: TBitBtn;
    qryMaster_FormsCashCheckFormID: TIntegerField;
    pnlArz: TPanel;
    Label33: TLabel;
    Label35: TLabel;
    edtArzRate: TDBEdit;
    edtArzAmount: TDBEdit;
    CmbArzTypeID: TDBComboBox;
    Label32: TLabel;
    qryDetail_ItemArzTypeID: TIntegerField;
    qryDetail_ItemArzAmount: TBCDField;
    qryDetail_ItemArzRate: TFloatField;
    qryMaster_Forms_AccountKind: TIntegerField;
    qryMaster_Forms_Mobile: TStringField;
    qryMaster_FormsGuaranteesFormID: TIntegerField;
    actMnuReciptsF1: TMenuItem;
    qryDetail_ItemCheckState: TWordField;
    qryDetail_ItemAccState: TWordField;
    qryDetail_ItemItemState: TWordField;
    qryDetail_ItemItemStateComment: TWideStringField;
    qryDetail_ItemSeverableAmount: TWordField;
    qryDetail_ItemRelatedID: TIntegerField;
    qryDetail_ItemVAT: TBCDField;
    qryDetail_ItemAccountNumberNew1: TStringField;
    qryMaster_FormsTopicCode: TLargeintField;
    qryDetail_ItemTopicCode: TLargeintField;
    actViewFileF: TAction;
    N11: TMenuItem;
    SpeedButton22: TSpeedButton;
    actDetail_ViewFileF: TAction;
    N13: TMenuItem;
    actshowRelatedF: TAction;
    N14: TMenuItem;
    qryDetail_Itemchk_ExistAttachments: TStringField;
    qryMaster_Forms_CustomerCheckNote: TStringField;
    qryMaster_Forms_MobileCustomer1: TStringField;
    qryDetail_ItemCheckCounter: TIntegerField;
    edtCheckCounter: TDBEdit;
    lbl2: TLabel;
    mnuN15: TMenuItem;
    qryMaster_FormsParentFormID: TIntegerField;
    actWorkflowHistoryF: TAction;
    lblRemainPerson2: TLabel;
    actInsertCheckFor: TAction;
    SpeedButton4: TSpeedButton;
    Label27: TLabel;
    dbedtDefaultDate: TDBEdit;
    Label34: TLabel;
    Panel5: TPanel;
    BitBtn16: TBitBtn;
    actStateChange: TAction;
    qryMaster_FormsDefaultDuration: TSmallintField;
    edtDefaultDuration: TDBEdit;
    actMakeDocumentShow: TAction;
    N15: TMenuItem;
    actRequestCash: TAction;
    N16: TMenuItem;
    qryMaster_FormsOperatorID: TIntegerField;
    qryMaster_FormsDocDate: TStringField;
    txtFormState: TDBText;
    txtDocNo: TDBText;
    txtDocDate: TDBText;
    txtFormState1: TDBText;
    actCopyForm: TAction;
    N17: TMenuItem;
    actCopyForm2: TAction;
    qryMaster_Forms_Customer1Active: TIntegerField;
    qryMaster_Forms_Customer2Active: TIntegerField;
    qryMaster_FormsReciptID: TIntegerField;
    actGetCheckPostOverallTypeF: TAction;
    btnGetCheckPostOverallTypeF: TBitBtn;
    qrySeverable: TADOQuery;
    qrySeverableID: TAutoIncField;
    qrySeverableFormItemID: TIntegerField;
    qrySeverableCustID: TIntegerField;
    qrySeverableTopicCode: TLargeintField;
    qrySeverableDetailCode: TStringField;
    qrySeverableCTopicCode: TStringField;
    qrySeverableCTopicCode2: TStringField;
    qrySeverableBudgetCode: TIntegerField;
    qrySeverableAmount: TBCDField;
    qrySeverableServerID: TIntegerField;
    qrySeverableYearID: TIntegerField;
    qrySeverableFormID: TIntegerField;
    qrySeverableSeverableNote: TWideStringField;
    qrySeverableDeficitAmount: TBCDField;
    qrySeverableArzAmount: TBCDField;
    ppDetailBand1: TppDetailBand;
    ppPageStyle2: TppPageStyle;
    ppDBTxtItemAmount2: TppLabel;
    ppDBTxtCheckDate: TppDBText;
    ppLblItemAmountText: TppLabel;
    ppLblHavalehCardHide: TppLabel;
    ppDBTxtItemAmount: TppDBText;
    ppLblDateString: TppLabel;
    ppDBTxtAmountArz: TppDBText;
    ppDBMemHavalehCard: TppDBText;
    ppDBText13: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppDesignLayer3: TppDesignLayer;
    qryMaster_Forms_NationalIDCustomer1: TStringField;
    qryMaster_Forms_NationalIDCustomer2: TStringField;
    pdbtxt_NationalIDCustomer2: TppDBText;
    pdbtxt_NationalIDCustomer1: TppDBText;
    plblItemAmountSplit: TppLabel;
    pdbtxtLeftCheckDateBox: TppDBText;
    pdbtxtValueNumbox: TppDBText;
    DBGrid1: TCedarDbgrid;
    qryDetail_ItemLineCorrosion: TBooleanField;
    plblLineCorrosion: TppLabel;
    dbchkLineCorrosion: TDBCheckBox;
    qryRptSeverable: TADOQuery;
    IntegerField2: TIntegerField;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    BCDField1: TBCDField;
    qrySeverable_CTopicName_L1: TStringField;
    qrySeverable_CTopicName2_L1: TStringField;
    qrySeverable_DetailsName_L1: TStringField;
    qrySeverable_TopicCodeName_L1: TStringField;
    WideStringField1: TWideStringField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    srcRptSeverable: TDataSource;
    plnRptSeverable: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    ppField36: TppField;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    ppField44: TppField;
    ppField45: TppField;
    ppField46: TppField;
    ppField47: TppField;
    ppField48: TppField;
    ppField49: TppField;
    ppField50: TppField;
    ppField51: TppField;
    ppField52: TppField;
    qryRptSeverableCustName: TStringField;
    qryRptSeverableAddress: TStringField;
    qryRptSeverableTel: TStringField;
    qryRptSeverableFax: TStringField;
    qryRptSeverableemail: TStringField;
    qryRptSeverableEconomicNumber: TStringField;
    qryRptSeverableCustomerNote: TStringField;
    qryRptSeverableBankName: TStringField;
    qryRptSeverableManageName: TStringField;
    qryRptSeverableNationalID: TStringField;
    qryRptSeverableMobile: TStringField;
    qryRptSeverableTel2: TWideStringField;
    qryRptSeverableTel3: TWideStringField;
    qryRptSeverableCustAccountNumber: TStringField;
    qryRptSeverableRegisterNumber: TStringField;
    qryRptSeverableCustFirstName: TStringField;
    pnlProjectID: TPanel;
    txt_ProjectID: TDBText;
    btnProjectID: TSpeedButton;
    lblProjectID: TLabel;
    DBEdit25: TDBEdit;
    qryProjects: TADOQuery;
    qryAllForms: TADOQuery;
    qryAllFormsFormID: TIntegerField;
    qryAllFormsServerID: TIntegerField;
    qryAllFormsYearID: TIntegerField;
    srcAllForms: TDataSource;
    qryAllFormsCustomerID1: TIntegerField;
    qryAllFormsCustomerID2: TIntegerField;
    qryAllFormsCustomerID3: TIntegerField;
    SpinButton1: TSpinButton;
    frmGetCheckPostOverallType1: TfrmGetCheckPostOverallType;
    qryMaster_FormsID: TLargeintField;
    pnlCustomer4: TPanel;
    lblCustomer4: TLabel;
    btnCustomerID4: TSpeedButton;
    txt_Customer4Name: TDBText;
    DBEdit28: TDBEdit;
    qryMaster_Forms_Customer4Name: TStringField;
    qryMaster_FormsCustomerID4: TIntegerField;
    qryCustomer4: TADOQuery;
    qryAllFormsCustomerID4: TIntegerField;
    actCalcCheck: TAction;
    N2: TMenuItem;
    qryMaster_Forms_MobileCustomer2: TStringField;
    qryDetail_Item_MobileCustomerD2: TStringField;
    actSmsSend_D: TAction;
    SmsManager1: TMenuItem;
    BitBtn17: TBitBtn;
    plblItemAmountSplitRevers: TppLabel;
    qryDetail_ItemPO: TStringField;
    qryMaster_FormsPO: TStringField;
    pnlRelatedRecipts_PO: TPanel;
    pnlRelatedRecipts: TPanel;
    btnRelatedRecipts: TSpeedButton;
    Label31: TLabel;
    txt_RelatedRecipts: TDBText;
    DBEdit2: TDBEdit;
    pnlPO: TPanel;
    Label36: TLabel;
    edtPO: TDBEdit;
    pnlAccountNumberNew_PO: TPanel;
    pnlAccountNumberNew: TPanel;
    IBAN: TLabel;
    edtAccountNumberNew1: TDBEdit;
    pnlPOi: TPanel;
    lblPO: TLabel;
    edtPOi: TDBEdit;
    grpDetailAccount: TPanel;
    pnlTopicCodeD: TPanel;
    Label12: TLabel;
    SpeedButton2: TSpeedButton;
    txt_MoeinNameD: TDBText;
    DBEdit11: TDBEdit;
    pnlDetailCodeD: TPanel;
    txt_DetailNameD: TDBText;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit9: TDBEdit;
    pnlCTopicCodeD: TPanel;
    Label11: TLabel;
    SpeedButton3: TSpeedButton;
    txt_CTopicCodeNameD: TDBText;
    DBEdit10: TDBEdit;
    pnlCTopicCode2D: TPanel;
    SpeedButton13: TSpeedButton;
    txt_CTopicCodeName2D: TDBText;
    Label1: TLabel;
    DBEdit23: TDBEdit;
    Panel6: TPanel;
    qryDetail_ItemHunterCode: TStringField;
    edtHunterCode: TDBEdit;
    Label37: TLabel;
    actRow: TAction;
    PnlCashWage_National: TPanel;
    edtOtherNationalCode: TDBEdit;
    lblOtherNationalCode: TLabel;
    qryDetail_ItemOtherNationalCode: TStringField;
    actCallOtherNationalCode: TAction;
    qryDetail_ItemSyadSystem: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    qryDetail_ItemAmountDelay: TBCDField;
    qryFormsArzAmountExchange: TBCDField;
    qryFormsArzRateExchange: TFloatField;
    qryDetail_ItemArzTypeIDExchange: TIntegerField;
    pnlArz2: TPanel;
    lblArzAmountExchange: TLabel;
    lblArzRateExchange: TLabel;
    Label40: TLabel;
    edtArzAmountExchange: TDBEdit;
    edtArzRateExchange: TDBEdit;
    cmbArzTypeIDExchange: TDBComboBox;
    edtSwiftCode: TDBEdit;
    Label41: TLabel;
    edtIBAN: TDBEdit;
    Label42: TLabel;
    qryDetail_ItemSwiftCode: TStringField;
    qryDetail_ItemIBAN: TStringField;
    pnlIban_SW: TPanel;
    pnlCTopicCode3D: TPanel;
    txt_CTopicCodeName3D: TDBText;
    Label19: TLabel;
    DBEdit27: TDBEdit;
    SpeedButton18: TSpeedButton;
    ppDetailBand2: TppDetailBand;
    ppDBCalc1: TppDBCalc;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    pdbtxtShamsi2MiladiCheckDate: TppDBText;
    plblDateToWord: TppLabel;
    plblItemAmount: TppLabel;
    plblTopicTypesI: TppLabel;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLine1: TppLine;
    ppDBText14: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppLine11: TppLine;
    ppShape1: TppShape;
    ppShape4: TppShape;
    ppDBMemo1: TppDBMemo;
    ppDBText5: TppDBText;
    ppLabel21: TppLabel;
    ppLabel18: TppLabel;
    ppLabel7: TppLabel;
    ppLine9: TppLine;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppLabel13: TppLabel;
    ppLabel12: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppLabel10: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppLine12: TppLine;
    ppLine8: TppLine;
    ppLine6: TppLine;
    ppLine5: TppLine;
    ppLabel20: TppLabel;
    ppLabel19: TppLabel;
    ppLabel17: TppLabel;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppDBText10: TppDBText;
    ppDBText9: TppDBText;
    ppLabel27: TppLabel;
    ppLabel26: TppLabel;
    ppLblFormCaption: TppLabel;
    ppLabel15: TppLabel;
    ppShape2: TppShape;
    plblArzType: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayer1: TppDesignLayer;
    pln1: TPanel;
    Panel7: TPanel;
    spdSelectCheck: TSpeedButton;
    SpeedButton5: TSpeedButton;
    EdtFormNumber: TDBEdit;
    LblFormNumber: TLabel;
    EdtFormDate: TDBEdit;
    Label14: TLabel;
    Panel8: TPanel;
    Panel10: TPanel;
    qryDetail_ItemAccountNumberNew: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure srcDetail_ItemStateChange(Sender: TObject);
    procedure srcMaster_FormsStateChange(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btnCustomerID2Click(Sender: TObject);
    procedure btnCustomerID1Click(Sender: TObject);
    procedure qryMaster_FormsAfterInsert(DataSet: TDataSet);
    procedure qryMaster_FormsAfterScroll(DataSet: TDataSet);
    procedure qryDetail_ItemAfterInsert(DataSet: TDataSet);
    procedure qryDetail_ItemCheckTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryDetail_ItemCheckTypeSetText(Sender: TField;
      const Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qryDetail_ItemBeforeDelete(DataSet: TDataSet);
    procedure qryMaster_FormsBeforeDelete(DataSet: TDataSet);
    procedure qryMaster_FormsBeforePost(DataSet: TDataSet);
    procedure EdtFormNumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCustomerID2dKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCustomerID2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCustomerID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actselectCheckExecute(Sender: TObject);
    procedure qryMaster_FormsAfterPost(DataSet: TDataSet);
    procedure qryDetail_ItemAfterOpen(DataSet: TDataSet);
    procedure qryDetail_ItemItemAmountChange(Sender: TField);
    procedure qryDetail_ItemAfterScroll(DataSet: TDataSet);
    procedure qryDetail_ItemBeforePost(DataSet: TDataSet);
    procedure qryDetail_ItemCheckDateChange(Sender: TField);
    procedure qryDetail_ItemAfterPost(DataSet: TDataSet);
    procedure srcDetail_ItemDataChange(Sender: TObject; Field: TField);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
    procedure ppLabel24GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure qryMaster_FormsBeforeCancel(DataSet: TDataSet);
    procedure actCopyArticleExecute(Sender: TObject);
    procedure actPastArticleExecute(Sender: TObject);
    procedure qryDetail_ItemAfterDelete(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure qryDetail_ItemAfterEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure qryMaster_FormsAfterCancel(DataSet: TDataSet);
    procedure qryDetail_ItemAfterCancel(DataSet: TDataSet);
    procedure ChooseDiskMeliClick(Sender: TObject);
    procedure spdSelectCheckClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure ppLblItemAmountTextGetText(Sender: TObject; var Text: String);
    procedure ppRptChecks4PrintBeforePrint(Sender: TObject);
    procedure AllClikPopClick(Sender: TObject);
    procedure actPrintCheckExecute(Sender: TObject);
    procedure ppDBMemHavalehCardGetMemo(Sender: TObject; aLines: TStrings);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblAmountGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLBLsumGetText(Sender: TObject; var Text: String);
    procedure ppLblTiChekCountGetText(Sender: TObject; var Text: String);
    procedure actPrint1Execute(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure ppLblCompanyDescGetText(Sender: TObject; var Text: String);
    procedure ppDBMemHavalehCardGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtNameToNoteGetText(Sender: TObject; var Text: String);
    procedure logoPrint(Sender: TObject);
    procedure logoDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure edtItemAmountChange(Sender: TObject);
    procedure ppLblFormCaptionGetText(Sender: TObject; var Text: String);
    procedure ppMemo1Print(Sender: TObject);
    procedure ppLblvar_glb_CurrentDateGetText(Sender: TObject;
      var Text: String);
    procedure ppLblCompanyAddressGetText(Sender: TObject; var Text: String);
    procedure ppLblWebSiteGetText(Sender: TObject; var Text: String);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryMaster_FormsFormStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure EdtFormNumberEnter(Sender: TObject);
    procedure ppLblDateStringGetText(Sender: TObject; var Text: String);
    procedure ppLblTopCheckGetText(Sender: TObject; var Text: String);
    procedure qryMaster_FormsAfterEdit(DataSet: TDataSet);
    procedure qryDetail_ItemBeforeEdit(DataSet: TDataSet);
    procedure qryMaster_FormsBeforeEdit(DataSet: TDataSet);
    procedure qryMaster_FormsCustomerID1Change(Sender: TField);
    procedure ppLblSumItemAmountGetText(Sender: TObject; var Text: String);
    procedure ppLblSumItemAmount2alphabetGetText(Sender: TObject;
      var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblState2ZeroDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLblState2ZeroDrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppLblState2ZeroGetText(Sender: TObject; var Text: String);
    procedure ppLblState2ZeroPrint(Sender: TObject);
    procedure ChooseDiskMelatClick(Sender: TObject);
    procedure actSearchReportExecute(Sender: TObject);
    procedure ppLblNum2alphabetItemAmountGetText(Sender: TObject;
      var Text: String);
    procedure ppLbl4AllStringReplaceGetText(Sender: TObject; var Text: String);
    procedure DBEdit26KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit23KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryDetail_ItemItemNoteChange(Sender: TField);
    procedure A_l_l_Click__Click(Sender: TObject);
    procedure qryMaster_FormsBeforeInsert(DataSet: TDataSet);
    procedure grpMasterAccountEnter(Sender: TObject);
    procedure btnGetExcelClick(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure CmbALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CmbALLSetText(Sender: TField; const Text: String);
    procedure NAllRecordsClick(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintRecoverExecute(Sender: TObject);
    procedure qryMaster_FormsFormDateChange(Sender: TField);
    procedure qryMaster_FormsBeforeScroll(DataSet: TDataSet);
    procedure actInserNoteExecute(Sender: TObject);
    procedure actRptCofferExecute(Sender: TObject);
    procedure actSeverableExecute(Sender: TObject);
    procedure DBEdit24KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryMaster_FormsSellsEmporiumChange(Sender: TField);
    procedure edtItemAmountEnter(Sender: TObject);
    procedure edtItemAmountExit(Sender: TObject);
    procedure edtItemAmountKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actExcellExecute(Sender: TObject);
    procedure actGetExcelMasterDetailsExecute(Sender: TObject);
    procedure actCopyPasteExecute(Sender: TObject);
    procedure plblTopicTypesIGetText(Sender: TObject; var Text: string);
    procedure plblCheckDateGetText(Sender: TObject; var Text: string);
    procedure plblItemAmountGetText(Sender: TObject; var Text: string);
    procedure plblDateToWordGetText(Sender: TObject; var Text: string);
    procedure mnCheckClick(Sender: TObject);
    procedure pdbtxtShamsi2MiladiCheckDateGetText(Sender: TObject;
      var Text: string);
    procedure btnRelatedReciptsClick(Sender: TObject);
    procedure BitBtn15MouseEnter(Sender: TObject);
    procedure BitBtn15MouseLeave(Sender: TObject);
    procedure qryDetail_ItemArzTypeIDChange(Sender: TField);
    procedure qryDetail_ItemArzAmountChange(Sender: TField);
    procedure qryMaster_FormsAfterDelete(DataSet: TDataSet);
    procedure actMnuReciptsF1Click(Sender: TObject);
    procedure actSmsSendExecute(Sender: TObject);
    procedure qryDetail_ItemTopicCodeChange(Sender: TField);
    procedure actViewFileFExecute(Sender: TObject);
    procedure actDetail_ViewFileFExecute(Sender: TObject);
    procedure actshowRelatedFExecute(Sender: TObject);
    procedure lblTopCheckClick(Sender: TObject);
    procedure mnuN15Click(Sender: TObject);
    procedure actWorkflowHistoryFExecute(Sender: TObject);
    procedure qryMaster_FormsCustomerID2Change(Sender: TField);
    procedure actInsertCheckForExecute(Sender: TObject);
    procedure qryDetail_ItemBeforeInsert(DataSet: TDataSet);
    procedure actStateChangeExecute(Sender: TObject);
    procedure mnu4allClick(Sender: TObject);
    procedure qryMaster_FormsDefaultDurationChange(Sender: TField);
    procedure actMakeDocumentShowExecute(Sender: TObject);
    procedure actRequestCashExecute(Sender: TObject);
    procedure actCopyFormExecute(Sender: TObject);
    procedure actCopyForm2Execute(Sender: TObject);
    procedure actGetCheckPostOverallTypeFExecute(Sender: TObject);
    procedure plblItemAmountSplitGetText(Sender: TObject; var Text: string);
    procedure pdbtxtLeftCheckDateBoxGetText(Sender: TObject; var Text: string);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure plblLineCorrosionGetText(Sender: TObject; var Text: string);
    procedure DBEdit25KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryMaster_FormsCustomerID3Change(Sender: TField);
    procedure qryDetail_ItemCustomerID2Change(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qryDetail_ItemProjectIDChange(Sender: TField);
    procedure qryMaster_FormsAfterOpen(DataSet: TDataSet);
    procedure qryAllFormsAfterScroll(DataSet: TDataSet);
    procedure ppDBTxtCheckDateGetText(Sender: TObject; var Text: string);
    procedure frmGetCheckPostOverallType1btnokClick(Sender: TObject);
    procedure frmGetCheckPostOverallType1SpeedButton1Click(Sender: TObject);
    procedure qryMaster_FormsCustomerID4Change(Sender: TField);
    procedure DBEdit28KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCustomerID4Click(Sender: TObject);
    procedure actCalcCheckExecute(Sender: TObject);
    procedure actSmsSend_DExecute(Sender: TObject);
    procedure plblItemAmountSplitReversGetText(Sender: TObject;
      var Text: string);
    procedure plblArzTypeGetText(Sender: TObject; var Text: string);
    procedure edtCustomerID1DblClick(Sender: TObject);
    procedure edtCustomerID2DblClick(Sender: TObject);
    procedure actRowExecute(Sender: TObject);
    procedure actCallOtherNationalCodeExecute(Sender: TObject);
    procedure qryDetail_ItemArzTypeIDExchangeChange(Sender: TField);
    procedure DBEdit27KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryDetail_ItemAccountNumberNewSetText(Sender: TField;
      const Text: string);
    procedure qryDetail_ItemHunterCodeSetText(Sender: TField;
      const Text: string);
    procedure ValidateNumericField(Sender: TField; const Text: string;
      MaxLength: Integer; FieldDisplayName: string);
    procedure edtAccountNumberNewKeyPress(Sender: TObject; var Key: Char);
    procedure edtHunterCodeKeyPress(Sender: TObject; var Key: Char);
    procedure NumericOnlyKeyPress(Sender: TObject; var Key: Char;
      MaxLen: Integer);
    // procedure SpinButton1DownClick(Sender: TObject);
    // procedure SpinButton1UpClick(Sender: TObject);
    // procedure edtCheckDateEnter(Sender: TObject);
    // procedure edtCheckDateExit(Sender: TObject);

  private
    callForm: Boolean;
    FormType: Byte;
    CustomerID: Integer;
    canshow: Boolean;
    canFilter: Boolean;
    tmrWarning: TTimer;
    Cus2DetailAsMaster, getresponseShow: Boolean;
    lastCheck: array of Variant;
    PrintCount: Integer;
    TopCheck: Currency;
    mnu: TMenuItem;
    // CanChangeDate:Boolean;
    MyFileName: String;
    CheckControlsItems: String;
    CheckControlsKind: Byte;
    mnuCheck: TMenuItem;
    qryCust1, qryCust2, qryCust3, qryCust4, qryProject: TADOQuery;
    Sev_: TForm;
    CashCheckFormID: Integer;
    GuaranteesFormID, PostOverallTypeCall: Integer;
    DataSetInsert: Boolean;
    InsertCheckNumberAct, RunPrint: Boolean;
    MaxCheckNumber: string;
    procedure SaveArticlesToFile;
    procedure MakeMenuItem;
    procedure SaveChecks;
    procedure LoadChecks;
    procedure StopWarn;
    procedure CheckUnsaved;
    procedure InitForm(ShowFilter: Boolean);
    procedure tmrWarningOnTimer(Sender: TObject);
    procedure DeleteCheck(ItemID: Integer);
    function ShowWarning(DataSet: TDataSet): Boolean;
    function CalculateChecksTotal: Currency;
    function GetSearchCode(ID: Byte): Integer;
    procedure initCombos;
    function CalcTopCheck: Currency;
    function ValidCheckNumber(DataSet: TDataSet): Boolean;
    procedure InsertCheckNumber(DataSet: TDataSet);
    procedure UpdateList;
    procedure CalcCheckDate;
    procedure InitCheck;
    function CheckControls: Boolean;
    procedure MyFields;
    procedure initAddField;
    procedure How2DisplayArzTypeID;
    procedure HasRecall2;
    procedure qryDetail_ItemFieldChange(Sender: TField);
    procedure GetMaxCheckNumber;
    procedure ReMainPersonPaymentCash4Thread(Sender: TField;
      lblReMainPerson: TLabel);
    procedure ArzTypeIDExchangeSet;
    function IsOnlyDigits(const S: string): Boolean;
    // function MaskChange(Field4Mask: TField; UpDown: Integer): string;
    // procedure QryCustScroll(qryCustomer: TADOQuery);
    // procedure DELETE_CustIDTemp;
    // procedure INSERT_CustIDTemp(Sender: TField; qryCustomer: TADOQuery);
    // function GetDetailKeyID: string;

    { Private declarations }
  public
    procedure Enter(Form_Type: Integer; ShowFilter: Boolean = True;
      CashCheckFormID: Integer = 0; GuaranteesFormID: Integer = 0);
    // procedure ShowForm(CofferId: int64; CustId: int64);
    { Public declarations }
  end;

var
  GetCheckF: TGetCheckF;
  CallFromPaymentExpence: Boolean;

const
  _UnsavedFileName = 'UnsavedCheck_Coffer.dat';

implementation

uses DM, GlobalPro, searchCode_ADO, SelectCustomer, shamsiDate,
  ChooseChecks, mmessage, DateUtils, FormFunctions,
  ChooseDisk, sort2, ChooseDiskMelat, searchReports, GetExcel, filter_ADO,
  FilterClass_ADO, RptCoffer, Severable, GetExcelMasterDetails, mdiMain,
  NumberToWords, FaraConsts, ReciptsFunctions, DMSMS, SMSUnit, ViewFileOnServer,
  Related, TopUpCalc, search2, WorkflowHistory, WorkflowDm, RequestCash,
  GetCheckPostOverallType, SearchStringItems, CheckCalc;

{$R *.dfm}

procedure TGetCheckF.SaveArticlesToFile;
begin
  qryDetail_Item.SaveToFile(__AppData + _UnsavedFileName);
end;

procedure TGetCheckF.CheckUnsaved;
var
  i: Smallint;
  aQry: TADOQuery;
begin
  if not FileExists(__AppData + _UnsavedFileName) then
    exit;
  if get_response
    ('آخرين چك وارد شده در سيستم ذخيره نشده، آيا مي‌خواهيد اين چك بازخواني شود؟')
    <> mrYes then
  begin
    DeleteFile(__AppData + _UnsavedFileName);
    exit;
  end; // if
  aQry := TADOQuery.Create(Self);
  try
    aQry.LoadFromFile(__AppData + _UnsavedFileName);
    with qryDetail_Item do
    begin
      AfterInsert := nil;
      BeforePost := nil;
      AfterScroll := nil;
      AfterPost := nil;
    end; // with
    with aQry do
    begin
      First;
      while not Eof do
      begin
        qryDetail_Item.Last;
        qryDetail_Item.Insert;
        for i := 0 to Fields.Count - 1 do
          if ((qryDetail_Item.FindField(Fields[i].FieldName) <> nil) and
            (qryDetail_Item.FieldByName(Fields[i].FieldName).CanModify)) then
          begin
            qryDetail_Item.FieldByName(Fields[i].FieldName).AsString :=
              Fields[i].AsString;
          end;
        qryDetail_Item.FieldByName('FormID').AsInteger :=
          qryMaster_FormsFormID.AsInteger;
        qryDetail_Item.Post;
        Next;
      end;
      // while
    end; // with
  finally
    aQry.Free;
    qryDetail_Item.AfterInsert := qryDetail_ItemAfterInsert;
    qryDetail_Item.BeforePost := qryDetail_ItemBeforePost;
    qryDetail_Item.AfterScroll := qryDetail_ItemAfterScroll;
    qryDetail_Item.AfterPost := qryDetail_ItemAfterPost;
    // CalculateChecksTotal;
  end; // try
end;

procedure TGetCheckF.InitCheck;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT CheckControlsItems,CheckControlsKind FROM Config';
    Active := True;
    CheckControlsItems := FieldByName('CheckControlsItems').AsString;
    CheckControlsKind := FieldByName('CheckControlsKind').AsInteger;
    Active := False;
  end; // with
end;

function TGetCheckF.CheckControls;
begin
  Result := True;
  if CheckControlsKind = 0 then
    exit;
  // دريافت چك
  // صدور چك
  // فراخواني
  // تنخواه

  if qryInitQry.FieldByName('DetailDataType').AsInteger < 2 then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(*) ';
      SQL.Add('FROM FormItems INNER JOIN Forms ON FormItems.FormID = Forms.FormID');
      SQL.Add('AND FormItems.ServerID = Forms.ServerID AND');
      SQL.Add('FormItems.YearID = Forms.YearID INNER JOIN');
      SQL.Add('FormTypes ON Forms.FormType = FormTypes.FormType');
      SQL.Add('WHERE (FormItems.FormItemID <> ' + qryDetail_Item.FieldByName
        ('FormItemID').AsString + ')');
      // SQL.Add('AND(FormTypes.DetailDataType < 2)');
      SQL.Add(Format('AND (Forms.FormType IN (%D, 52, 53))', [FormType]));

      if (qryDetail_Item.FieldByName('CheckNumber').AsString <> EmptyStr) and
        (pos('0', CheckControlsItems) <> 0) then
        SQL.Add('AND(CheckNumber = ''' + qryDetail_Item.FieldByName
          ('CheckNumber').AsString + ''')');

      if (qryDetail_Item.FieldByName('BankName').AsString <> EmptyStr) and
        (pos('1', CheckControlsItems) <> 0) then
        SQL.Add('AND(BankName = ''' + qryDetail_Item.FieldByName('BankName')
          .AsString + ''')');

      if (qryDetail_Item.FieldByName('AccountNumberNew').AsString <> EmptyStr)
        and (pos('2', CheckControlsItems) <> 0) then
        SQL.Add('AND(AccountNumberNew = ''' + qryDetail_Item.FieldByName
          ('AccountNumberNew').AsString + ''')');

      if (qryMaster_Forms.FieldByName('CustomerID1').AsInteger <> 0) and
        (pos('3', CheckControlsItems) <> 0) then
        SQL.Add('AND(Forms.CustomerID1 = ' + qryMaster_Forms.FieldByName
          ('CustomerID1').AsString + ')');

      if (qryMaster_Forms.FieldByName('CustomerID2').AsInteger <> 0) and
        (pos('4', CheckControlsItems) <> 0) then
        SQL.Add('AND(Forms.CustomerID2 = ' + qryMaster_Forms.FieldByName
          ('CustomerID2').AsString + ')');

      Active := True;
      // if Fields[0].AsInteger mod 2 <> 0 then    آقای رضائی و خانم رشیدی
      if Fields[0].AsInteger > 0 then
      begin
        Warn('شماره چك تكراري است.' + Fields[0].AsString, mtInformation);
        if CheckControlsKind = 2 then
        begin
          Result := False;
          if getresponseShow then
            if not EdtCheckNumber.ReadOnly then
              EdtCheckNumber.SetFocus;
        end;
      end;
      Active := False;
    end; // with
end;

procedure TGetCheckF.InitForm(ShowFilter: Boolean);
var
  qry: TADOQuery;
  b: Boolean;
  s: String;
  sOrderBy: string;
  OtherSettings: Largeint;
  A: Boolean;
begin
  with GetCheckF do
  begin
    /// Exist 2 Columns with Name ROW   ...
    DBGrid1.Columns[12].Visible := opt.chkExistAttachments;
    /// Exist 2 Columns with Name ROW   ...

    FormType := var_glb_gParam;
    qrySeverable.Active := True;

    callForm := True;
    with qryInitQry do
    begin
      Active := False;
      Parameters.ParamByName('Type').Value := FormType;
      Active := True;

      A := (CurAccess and Integer(akChangeState) <> 0);

      actStateChange.Visible :=
        CheckUserlevel(FieldByName('ChangeStateLevelID'), qryMaster_Forms,
        False) and A;

      initCofferAddField(qryInitQry, qryMaster_Forms, pnlSells,
        pnlSellsEmporium, pnlSellsMethod, dblkcbb_SellsEmporium,
        dblkcbb_SellsMethod);
      if FormType = 10 then
        lblCheckFor.Caption := 'تحويل دهنده';
      Caption := FieldByName('FormCaption').AsString;
      actRptCoffer.Caption := 'ليست ' + Caption;
      canshow := FieldByName('RestartFormNumberOnCust1').Value = 1;
      canFilter := FieldByName('Customer1UseInRecall').Value = 1;
      // opt.Footer := FieldByName('FooterSigns').AsString;
      spdSelectCheck.Visible := FieldByName('HasRecall').AsInteger > 0;
      btnGetExcel.Visible := not spdSelectCheck.Visible;
      if not spdSelectCheck.Visible then
        lblTopCheck.Left := spdSelectCheck.Left;

      // ------------------------set CheckDateActive--------------------------//
      PnlCheckDate.Visible := (FieldByName('CheckDateActive').AsInteger
        in [1, 2]);
      qryDetail_Item.FieldByName('CheckDate').Required :=
        (FieldByName('CheckDateActive').AsInteger in [1]);
      EdtFormNumber.ReadOnly := (FieldByName('ChangeFormNo_DateActive')
        .AsInteger <> 1);
      EdtFormDate.ReadOnly := EdtFormNumber.ReadOnly;
      // ------------------------set PnlAidInfoMaster--------------------------//
      pnlAidInfoDateMaster.Visible := FieldByName('AidInfoActive').AsInteger
        in [1, 3, 4];
      LblAidInfoNo.Caption := LblAidInfoNo.Caption + qryInitQry.FieldByName
        ('AidInfoCaption').AsString;
      LblAidInfoDate.Caption := LblAidInfoDate.Caption + qryInitQry.FieldByName
        ('AidInfoCaption').AsString;

      // ------------------------set PnlAidInfoDetail--------------------------//
      pnlAidInfoDateDetail.Visible := qryInitQry.FieldByName('AidInfoActive')
        .AsInteger in [2, 3, 4];
      LblAidInfoNo1.Caption := LblAidInfoNo.Caption;
      LblAidInfoDate1.Caption := LblAidInfoDate.Caption;

      // -------------------------set panelCheck---------------------------//
      pnlCheck.Visible := FieldByName('DetailDataType').AsInteger in [0, 1];

      pnlAccountNumberNew.Visible := FieldByName('AccountNumberNewActive')
        .AsInteger = 1;
      pnlPOi.Visible := opt.POActive;
      pnlAccountNumberNew_PO.Visible := pnlAccountNumberNew.Visible or
        opt.POActive or pnlIban_SW.Visible;

      lblPO.Caption := opt.POCaption;

      pnlPO.Visible := opt.POActive;

      pnlReceiveCheck.Visible := FieldByName('DetailDataType').Value = 0;
      pnlChecktype.Visible := not pnlReceiveCheck.Visible;
      pnlCheckFor.Visible := FieldByName('CheckFor_4Print').AsInteger
        in [1, 2, 3, 4];

      dbchkLineCorrosion.Visible := pnlCheckFor.Visible;

      pnlPay_Topic1.Visible := FieldByName('Pay_Topic_Active').AsInteger
        in [1, 3];
      qryMaster_FormsPayTypes.Required := pnlPay_Topic1.Visible;

      pnlPay_Topic2.Visible := FieldByName('Pay_Topic_Active').AsInteger
        in [2, 3, 4];
      qryMaster_FormsTopicTypes.Required := pnlPay_Topic2.Visible;

      pnlPay_Topic2I.Visible := FieldByName('Pay_Topic_Active').AsInteger
        in [4, 5];

      // -------------------------set Button---------------------------//
      pnlEditNew.Visible := FieldByName('DetailDataType').AsInteger <> 2;
      actCopyArticle.Enabled := pnlEditNew.Visible;
      actPastArticle.Enabled := pnlEditNew.Visible;
      actselectCheck.Visible := (not pnlEditNew.Visible) or
        (FieldByName('HasRecall').AsInteger = 3);

      actCopyArticle.Visible := not actselectCheck.Visible;
      actCopyPaste.Visible := actCopyArticle.Visible;

      // -------------------------set Customer---------------------------//
      pnlCustomer2.Visible := (FieldByName('Customer2Active').Value = 1) and
        (not CallFromPaymentExpence);
      if pnlCustomer2.Visible then
      begin
        lblCustomer2.Caption := ' كد و نام ' +
          FieldByName('Customer2Lable').AsString;
        qryCustCreate(qryCust2, '2', GetCheckF);
      end;
      lblDetailCustomer2.Caption :=
        FieldByName('Customer2OnDetailLable').AsString;

      pnlCustomer1.Visible := FieldByName('Customer1Active').Value = 1;
      if pnlCustomer1.Visible then
      begin
        lblCustomer1.Caption := ' كد و نام ' +
          FieldByName('Customer1Label').AsString;
        qryCustCreate(qryCust1, '1', GetCheckF);
      end;
      pnlCustomer1.Enabled := not canshow;

      pnlCustomer3.Visible := (FieldByName('Customer3Active').AsInteger = 1) and
        (not CallFromPaymentExpence);
      lblCustomer3.Caption := ' كد و نام ' +
        FieldByName('Customer3Lable').AsString;
      if pnlCustomer3.Visible then
        qryCustCreate(qryCust3, '3', GetCheckF);

      pnlCustomer4.Visible := (FieldByName('Customer4Active').AsInteger = 1) and
        (not CallFromPaymentExpence);
      lblCustomer4.Caption := ' كد و نام ' +
        FieldByName('Customer4Lable').AsString;
      if pnlCustomer4.Visible then
        qryCustCreate(qryCust4, '4', GetCheckF);

      pnlProjectID.Visible := (FieldByName('ProjectIDActive').AsInteger = 1);
      lblProjectID.Caption := ' كد و نام ' +
        FieldByName('ProjectIDLable').AsString;
      if pnlProjectID.Visible then
        qryCustCreate(qryProject, 'P', GetCheckF);

      grpDetailNote.Visible := FieldByName('DetailNoteVisible').Value = 1;
      grpMasterNote.Visible := FieldByName('NoteVisible').Value = 1;

      PnlCashWage.Visible := FieldByName('CashWageActive').Value > 0;

      PnlValue.Visible := FieldByName('ValueVisible').Value = 1;
      qryDetail_Item.FieldByName('ItemAmount').Required := PnlValue.Visible;

      actPrint.Hint := qryInitQry.FieldByName('ReportFileName1').AsString +
        #13#10 + qryInitQry.FieldByName('ReportFileName2').AsString + #13#10 +
        IntToStr(FormType);
      lblCaption.Hint := IntToStr(FormType);

      actPrintCheck.Hint :=
        'از فرم معرفي انواع چاپ چك براي تنظيم چاپ استفاده كنيد.' + #13#10;

      // -------------------------set grpMasterAccount---------------------------//

      grpMasterAccount.Caption := grpMasterAccount.Caption +
        FieldByName('Relating4Help').AsString;
      grpDetailAccount.Caption := grpDetailAccount.Caption +
        FieldByName('Relating4Help').AsString;

      b := FieldByName('AccountRelationPosition').AsInteger in [2, 3];
      grpMasterAccount.Visible := b and (not CallFromPaymentExpence);
      pnlTopicCode.Visible := b AND (FieldByName('TopicCodeActive').AsInteger
        in [1, 2]);
      qryMaster_Forms_MoeinName.Required := pnlTopicCode.Visible;
      FreeLookupUnUse(txt_MoeinNameM);

      pnlDetailCode.Visible := b AND (FieldByName('DetailCodeActive').AsInteger
        in [1, 2]);
      qryMaster_Forms_DetailName.Required := pnlDetailCode.Visible;
      FreeLookupUnUse(txt_DetailNameM);

      pnlCTopicCode.Visible := b AND (FieldByName('CTopicCode1Active').AsInteger
        in [1, 2]);
      qryMaster_Forms_CTopicCodeName.Required := pnlCTopicCode.Visible;
      FreeLookupUnUse(txt_CTopicCodeNameM);

      pnlCTopicCode2.Visible := b AND
        (FieldByName('CTopicCode2Active').AsInteger in [1, 2]);
      qryMaster_Forms_CTopicCodeName2.Required := pnlCTopicCode2.Visible;
      FreeLookupUnUse(txt_CTopicCodeName2M);

      pnlCTopicCode3.Visible := b AND
        (FieldByName('CTopicCode3Active').AsInteger in [1, 2]);
      qryMaster_Forms_CTopicCodeName3.Required := pnlCTopicCode3.Visible;
      FreeLookupUnUse(txt_CTopicCodeName3M);

      b := FieldByName('AccountRelationPosition').AsInteger in [1, 2];
      grpDetailAccount.Visible := b and (not CallFromPaymentExpence);

      pnlTopicCodeD.Visible := b AND (FieldByName('TopicCodeActive').AsInteger
        in [1, 3]);
      qryDetail_Item_MoeinName.Required := pnlTopicCodeD.Visible;
      FreeLookupUnUse(txt_MoeinNameD);

      pnlDetailCodeD.Visible := b AND (FieldByName('DetailCodeActive').AsInteger
        in [1, 3]);
      qryDetail_Item_DetailName.Required := pnlDetailCodeD.Visible;
      FreeLookupUnUse(txt_DetailNameD);

      pnlCTopicCodeD.Visible := b AND
        (FieldByName('CTopicCode1Active').AsInteger in [1, 3]);
      qryDetail_Item_CTopicCodeName.Required := pnlCTopicCodeD.Visible;
      FreeLookupUnUse(txt_CTopicCodeNameD);

      pnlCTopicCode2D.Visible := b AND
        (FieldByName('CTopicCode2Active').AsInteger in [1, 3]);
      qryDetail_Item_CTopicCodeName2.Required := pnlCTopicCode2D.Visible;
      FreeLookupUnUse(txt_CTopicCodeName2D);

      pnlCTopicCode3D.Visible := b AND
        (FieldByName('CTopicCode3Active').AsInteger in [1, 3]);
      qryDetail_Item_CTopicCodeName3.Required := pnlCTopicCode3D.Visible;
      FreeLookupUnUse(txt_CTopicCodeName3D);

      // -----------------------------set Customer2Detail----------------------------//
      case FieldByName('Customer2ActiveOnDetail').AsInteger of
        0:
          begin
            Cus2DetailAsMaster := True;
            pnlDetailCustomer2.Visible := False;
            setColumns2(DBGrid1, False, 'CustomerID2');
          end;
        1, 4:
          begin
            Cus2DetailAsMaster := True;
            pnlDetailCustomer2.Visible := Cus2DetailAsMaster;
            setColumns2(DBGrid1, False, 'CustomerID2');
          end;
        2, 5:
          begin
            pnlDetailCustomer2.Visible := True;
            setColumns2(DBGrid1, False, 'CustomerID2');
          end;
        3:
          begin
            pnlDetailCustomer2.Visible := False;
            setColumns2(DBGrid1, False, 'CustomerID2');
          end;
      end; // case

      pnlDetailCustomer2.Visible := pnlDetailCustomer2.Visible and
        (not CallFromPaymentExpence);

      btnCustomerID2.Enabled := FieldByName('Customer2ActiveOnDetail')
        .AsInteger <> 4;
      edtCustomerID2d.Enabled := btnCustomerID2.Enabled;

      // -------------------------set Budget---------------------------//
      case FieldByName('BudgetCodePosition').AsInteger of
        0:
          begin
            PnlMasterBudege.Visible := False;
            PnlDetailBudege.Visible := PnlMasterBudege.Visible;
          end;
        1:
          begin
            PnlMasterBudege.Visible := False;
            PnlDetailBudege.Visible := not PnlMasterBudege.Visible;
          end;
        2:
          begin
            PnlMasterBudege.Visible := True;
            PnlDetailBudege.Visible := PnlMasterBudege.Visible;
          end;
        3:
          begin
            PnlMasterBudege.Visible := True;
            PnlDetailBudege.Visible := not PnlMasterBudege.Visible;
          end;
      end;
      // case
      pnlDetailCust.Visible := (PnlDetailBudege.Visible) or
        (pnlDetailCustomer2.Visible) or (grpDetailNote.Visible);
      setColumns2(DBGrid1, PnlDetailBudege.Visible, 'BudgetCode');
      FreeLookupUnUse(txt_BudgetNameM);
      FreeLookupUnUse(txt_BudgetNameD);


      // -------------------------set DBGrid---------------------------//

      // setColumns2(DBGrid1,pnlReceiveCheck.Visible,'BankName');
      // setColumns2(DBGrid1,pnlReceiveCheck.Visible,'AccountNumber');

      // setColumns2(DBGrid1,pnlReceiveCheck.Visible,'AccountNumberNew');
      // setColumns2(DBGrid1,pnlReceiveCheck.Visible,'City');
      setColumns2(DBGrid1, grpDetailNote.Visible, 'ItemNote');
      // -------------------------set qryLookUp-------------------------//
      // if pnlCustomer1.Visible then
      with qryCustomer1 do
      begin
        Active := False;
        s := Trim(qryInitQry.FieldByName('CustomerKind1').AsString);
        if s = EmptyStr then
        begin
          s := '-1';
          // Warn(' نوع مشتري 1 مشخص نشده است', mtInformation);
        end;
        SQL.Add(GetCustomersGroupTypeSQL('CustomerKind1', qryInitQry,
          True, False));
        SQL.Add(IfThen(qryInitQry.FieldByName('UserSecurityCheckActive')
          .AsInteger in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
          ')=1', ''));
      end; // with

      // if pnlCustomer2.Visible then
      with qryCustomer2 do
      begin
        s := Trim(qryInitQry.FieldByName('CustomerKind2').AsString);
        if s = EmptyStr then
        begin
          s := '-1';
          // Warn(' نوع مشتري 2 مشخص نشده است', mtInformation);
        end;
        Active := False;
        SQL.Add(GetCustomersGroupTypeSQL('CustomerKind2', qryInitQry,
          True, False));
        SQL.Add(IfThen(qryInitQry.FieldByName('UserSecurityCheckActive')
          .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
          ')=1', ''));
      end; // with

      // if pnlCustomer3.Visible then
      with qryCustomer3 do
      begin
        s := Trim(qryInitQry.FieldByName('CustomerKind3').AsString);
        if s = EmptyStr then
        begin
          s := '-1';
          // Warn(' نوع مشتري 3 مشخص نشده است', mtInformation);
        end;
        Active := False;
        SQL.Add(GetCustomersGroupTypeSQL('CustomerKind3', qryInitQry,
          True, False));
      end; // with

      // if pnlCustomer4.Visible then
      with qryCustomer4 do
      begin
        s := Trim(qryInitQry.FieldByName('CustomerKind4').AsString);
        if s = EmptyStr then
        begin
          s := '-1';
          // Warn(' نوع مشتري 4 مشخص نشده است', mtInformation);
        end;
        Active := False;
        SQL.Add(GetCustomersGroupTypeSQL('CustomerKind4', qryInitQry,
          True, False));
      end; // with

      if pnlProjectID.Visible then
        with qryProjects do
        begin
          s := Trim(qryInitQry.FieldByName('ProjectIDKind').AsString);
          if s = EmptyStr then
          begin
            s := '-1';
            Warn(' نوع پروژه مشخص نشده است', mtInformation);
          end;
          Active := False;
          SQL.Add(GetCustomersGroupTypeSQL('ProjectIDKind', qryInitQry,
            False, False));

          with TStringField.Create(qryDetail_Item) do
          begin
            FieldName := '_ProjectID';
            FieldKind := fkLookup;
            DataSet := qryDetail_Item;
            Name := 'qryDetail_Item' + FieldName;
            DisplayLabel := 'مشتری';
            KeyFields := 'ProjectID';
            LookupDataSet := qryProjects;
            LookUpKeyFields := 'CustID';
            LookupResultField := 'CustName';
            Size := 50;
            qryDetail_Item.FieldDefs.Add(Name, ftString, 50, True);
            ReadOnly := True;
            txt_ProjectID.DataField := FieldName;
          end;

        end;

      // if FieldByName('Customer2ActiveOnDetail').AsInteger > 0 then
      with qryCustomer2Detail do
      begin
        s := Trim(qryInitQry.FieldByName('Customer2DetailKind').AsString);
        if s = EmptyStr then
        begin
          s := '-1';
          Warn('كد مشتري 2 در Detail‏ مشخص نشده است.‏', mtInformation);
        end;
        Active := False;
        SQL.Add(GetCustomersGroupTypeSQL('Customer2DetailKind', qryInitQry,
          False, False));
        SQL.Add(IfThen(qryInitQry.FieldByName('UserSecurityCheckActive')
          .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
          ')=1', ''));
      end; // with

      if FieldByName('RecallFormDisk').AsInteger = 0 then
        spdSelectCheck.Action := actselectCheck;

      actSeverable.Visible := FieldByName('UpholdActive').AsInteger = 1;

      pnlRelatedRecipts.Visible := SetRelatedReciptTypes(qryInitQry,
        qryRelatedRecipts);
      pnlRelatedRecipts_PO.Visible := pnlRelatedRecipts.Visible or opt.POActive;
      FreeLookupUnUse(txt_RelatedRecipts);

      sOrderBy := 'ORDER BY FormDate,FormNumber';
      if FieldByName('OrderByFields').AsString <> EmptyStr then
        sOrderBy := 'ORDER BY ' + FieldByName('OrderByFields').AsString;

      InsertCheckNumberAct :=
        ((FormType in [50, 70]) or (FieldByName('DefaultTopic_Bes').AsInteger
        in [6, 7, 8]));

      actGetCheckPostOverallTypeF.Caption := 'ثبت ' +
        FieldByName('PostOverallTypeCaption').AsString;
      PostOverallTypeCall := FieldByName('PostOverallTypeCall').AsInteger;
      actGetCheckPostOverallTypeF.Visible := PostOverallTypeCall > 0;
      frmGetCheckPostOverallType1.Visible := PostOverallTypeCall > 0;
      frmGetCheckPostOverallType1.lblCaption.Caption := 'ثبت ' +
        FieldByName('PostOverallTypeCaption').AsString;

      frmGetCheckPostOverallType1.qryInitQry := qryInitQry;
      frmGetCheckPostOverallType1.FormType := FormType;
      frmGetCheckPostOverallType1.PostOverallTypeCall := PostOverallTypeCall;

    end; // with qryiniqry

    // -------------------------Load ComboBox---------------------------//
    cmbBanks.Clear;
    cmbCities.Clear;
    qry := TADOQuery.Create(GetCheckF);
    try
      with qry do
      begin
        Connection := DMf.adcBsell;
        SQL.Text := 'SELECT DISTINCT BankName FROM FormItems ORDER BY BankName';
        Active := True;
        while not Eof do
        begin
          cmbBanks.Items.Add(Trim(Fields[0].AsString));
          Next;
        end; // while
        Active := False;
        SQL.Text := 'SELECT DISTINCT City FROM FormItems ORDER BY City';
        Active := True;
        while not Eof do
        begin
          cmbCities.Items.Add(Trim(Fields[0].AsString));
          Next;
        end; // while
      end; // with
    finally
      qry.Free;
    end; // try
    initCombos;
    initAddField;
    initReportName(qryInitQry, PopMuPrint, mnu4allClick);

    with qryDetail_Item do
    begin
      if qryInitQry.FieldByName('OrderByFieldsItem').AsString <> EmptyStr then
        SQL.Add('ORDER BY ' + qryInitQry.FieldByName
          ('OrderByFieldsItem').AsString)
      else
        SQL.Add('ORDER BY FormID,Row ');

    end;

    // -------------------------set qryMaster---------------------------//
    with qryMaster_Forms do
    begin
      // AfterScroll := nil;
      Active := False;
      SQL.Text := 'SELECT * FROM Forms';
      SQL.Add('WHERE (FormType = :Type)');
      SQL.Add('AND ( FormID = :FormID ) ');
      SQL.Add('AND ( ServerID = :ServerID ) ');
      SQL.Add('AND ( YearID = :YearID ) ');

      SQL.Add('AND (FormNumber BETWEEN :NumberFrom AND :NumberTo)');
      SQL.Add('AND (FormDate BETWEEN :DateFrom AND :DateTo)');

      setChkUsersCustomersGroupsActive(qryMaster_Forms);

      SQL.Add(sOrderBy);
      Parameters.ParamByName('NumberFrom').Value := -2147483646;
      Parameters.ParamByName('NumberTo').Value := 2147483647;
      Parameters.ParamByName('DateFrom').Value := '';
      Parameters.ParamByName('DateTo').Value := '9999/99/99';

      Parameters.ParamByName('Type').Value := FormType;

    end;
    with qryAllForms do
    begin
      AfterScroll := nil;
      Active := False;
      SQL.Text := 'SELECT FormID, ServerID, YearID, CustomerID1, CustomerID2';
      SQL.Add(',CustomerID3,CustomerID4,ParentFormID FROM Forms');
      SQL.Add('WHERE (FormType = :Type)');
      SQL.Add('AND ( YearID = :YearID ) '); // AND ( ServerID = :ServerID )
      SQL.Add(IfThen(canshow, ' AND ( CustomerID1 = :Cust )', ''));
      SQL.Add('AND (FormNumber BETWEEN :NumberFrom AND :NumberTo)');
      SQL.Add('AND (FormDate BETWEEN :DateFrom AND :DateTo)');

      setChkUsersCustomersGroupsActive(qryAllForms);

      SQL.Add(sOrderBy);
      Parameters.ParamByName('NumberFrom').Value := -2147483646;
      Parameters.ParamByName('NumberTo').Value := 2147483647;
      Parameters.ParamByName('DateFrom').Value := '';
      Parameters.ParamByName('DateTo').Value := '9999/99/99';
      if (canshow) then
      begin
        if ShowFilter then
          selectCustomerF.GetCustomer(CustomerID,
            qryInitQry.FieldByName('Customer1Label').AsString,
            qryInitQry.FieldByName('CustomerKind1').AsString);
        Parameters.ParamByName('Cust').Value := CustomerID;
      end; // if
      qryDetail_Item.Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Type').Value := FormType;
      Active := True;
      AfterScroll := qryAllFormsAfterScroll;
      Last;
    end;

    with qryMaster_Forms do
    begin

      // QryCustScroll(qryCustomer1);
      // QryCustScroll(qryCustomer2);
      // QryCustScroll(qryCustomer3);
      // QryCustScroll(qryCustomer2Detail);
      // QryCustScroll(qryProjects);

      // Active := True;
      // Properties['Update Criteria'].Value := 0;
      // adCriteriaKey;

      if (ShowFilter) and (canshow) and (IsEmpty) then
        Warn('هيچ موردي براي نمايش نيست.');

      // ---------------------------set Required----------------------//
      FieldByName('CustomerID1').Required := pnlCustomer1.Visible;
      FieldByName('CustomerID2').Required := pnlCustomer2.Visible;
      FieldByName('CustomerID3').Required := pnlCustomer3.Visible;
      FieldByName('CustomerID4').Required := pnlCustomer4.Visible;

      FieldByName('_Customer1Name').Required := pnlCustomer1.Visible;
      FieldByName('_Customer2Name').Required := pnlCustomer2.Visible;
      FieldByName('_Customer3Name').Required := pnlCustomer3.Visible;
      FieldByName('_Customer4Name').Required := pnlCustomer4.Visible;

      if pnlCustomer1.Visible then
      begin
        FieldByName('CustomerID1').DisplayLabel :=
          Trim(qryInitQry.FieldByName('Customer1Label').AsString);
        FieldByName('_Customer1Name').DisplayLabel := ' نام ' +
          Trim(qryInitQry.FieldByName('Customer1Label').AsString);
      end; // if

      if pnlCustomer2.Visible then
      begin
        FieldByName('CustomerID2').DisplayLabel :=
          Trim(qryInitQry.FieldByName('Customer2Lable').AsString);
        FieldByName('_Customer2Name').DisplayLabel := ' نام ' +
          Trim(qryInitQry.FieldByName('Customer2Lable').AsString);
      end; // if

      if pnlCustomer3.Visible then
      begin
        FieldByName('CustomerID3').DisplayLabel :=
          Trim(qryInitQry.FieldByName('Customer3Lable').AsString);
        FieldByName('_Customer3Name').DisplayLabel := ' نام ' +
          Trim(qryInitQry.FieldByName('Customer3Lable').AsString);
      end; // if

      if pnlCustomer4.Visible then
      begin
        FieldByName('CustomerID4').DisplayLabel :=
          Trim(qryInitQry.FieldByName('Customer4Lable').AsString);
        FieldByName('_Customer4Name').DisplayLabel := ' نام ' +
          Trim(qryInitQry.FieldByName('Customer4Lable').AsString);
      end; // if

    end; // with for qryMaster

    with qryDetail_Item do
    begin
      // Active := False;
      FieldByName('CustomerID2').DisplayLabel := lblDetailCustomer2.Caption;
      FieldByName('CheckNumber').Required := pnlCheck.Visible;

      // Active := True;
    end; // with for QryDetail
    lblCaption.Caption := Caption;
    ColorDBEdits(GetCheckF);
    OtherSettings := qryInitQry.FieldByName('OtherSettings').AsLargeInt;
    actPrintCheck.Visible := (FormType in [50, 70]) or
      ((OtherSettings and Integer(CHkPrintCheck)) <> 0);
    if not actPrintCheck.Visible then
    begin
      btnOtherMenu.Left := BitBtn14.Left;
      BitBtn14.Left := BitBtn8.Left;
    end; // if
    if qryInitQry.FieldByName('CheckFor_4Print').AsInteger in [1, 2, 4] then
    begin
      ppDBMemHavalehCard.DataField := 'CheckFor';
      ppDBMemHavalehCard.DataPipeline := ppDBPipeline2;
    end; // if
  end; // with
  pnlDefaultDate.Visible := DefaultDateActive(qryInitQry);

end;

procedure TGetCheckF.initAddField;
begin

  // if DMSMSF.nrgsm.Active then
  begin
    with TStringField.Create(qryDetail_Item) do
    begin
      FieldName := 'Mobile';
      FieldKind := fkLookup;
      DataSet := qryDetail_Item;
      Name := 'qryDetail_Item' + FieldName;
      qryDetail_Item.FieldDefs.Add(Name, ftString, 20, True);
      Size := 20;
      KeyFields := 'CustomerID2';
      LookupDataSet := qryCustomer2Detail;
      LookUpKeyFields := 'CustID';
      LookupResultField := 'Mobile';
    end;
  end;
end;

function TGetCheckF.GetSearchCode(ID: Byte): Integer;
var
  Results: array [0 .. 3] of String;
  dbedit: TDBEdit;
  b: Boolean;
  qryname: TDataSet;
begin
  Result := 0;
  b := True;
  dbedit := TDBEdit(FindComponent('DBEdit' + IntToStr(ID)));
  if ID = 8 then
    dbedit := edtCustomerID2d;
  if ID = 14 then
    dbedit := edtCustomerID1;
  if ID = 15 then
    dbedit := edtCustomerID2;

  if dbedit = nil then
  begin
    Warn('فيلد مقصد پيدا نشد.');
    exit;
  end;
  // if
  qryname := dbedit.DataSource.DataSet;
  case ID of
    17, 9:
      begin
        if ID = 17 then
          AccSpeedButtonDetailCode(qryMaster_Forms, 'DetailCode', 'TopicCode')
        else
          AccSpeedButtonDetailCode(qryDetail_Item, 'DetailCode', 'TopicCode');
        exit;
      end;
    18, 10:
      begin
        if ID = 18 then
          AccSpeedButtonCTopicCode(qryMaster_Forms, 'CTopicCode', 'TopicCode')
        else
          AccSpeedButtonCTopicCode(qryDetail_Item, 'CTopicCode', 'TopicCode');
        exit;
      end;
    22, 23:
      begin
        if ID = 22 then
          AccSpeedButtonCTopicCode2(qryMaster_Forms, 'CTopicCode2',
            'CTopicCode', True, 'TopicCode')
        else
          AccSpeedButtonCTopicCode2(qryDetail_Item, 'CTopicCode2', 'CTopicCode',
            True, 'TopicCode');
        exit;
      end;
    26, 27:
      begin
        if ID = 27 then
          AccSpeedButtonCTopicCode3(qryMaster_Forms, 'CTopicCode3',
            'CTopicCode', True, 'TopicCode')
        else
          AccSpeedButtonCTopicCode3(qryDetail_Item, 'CTopicCode3', 'CTopicCode',
            True, 'TopicCode');
        exit;
      end;
    11, 19:
      begin
        if ID = 19 then
          AccSpeedButtonTopicCode(qryMaster_Forms, 'TopicCode')
        else
          AccSpeedButtonTopicCode(qryDetail_Item, 'TopicCode');
        exit;
      end;
    15:
      begin // مشتري2
        if Trim(qryInitQry.FieldByName('CustomerKind2').AsString) = '' then
        begin
          Warn('گروه  تعريف نشده است.‏');
          exit;
        end; // if
        b := searchCode_ADOF.SearchCode2(DMf.adcBsell, 'جستجو مشتري',
          'SELECT DISTINCT CustID,CustName,tel,Address FROM Vu_CustomersGroups '
          + GetCustomersGroupTypeSQL('CustomerKind2', qryInitQry) +

          IfThen(qryInitQry.FieldByName('UserSecurityCheckActive')
          .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
          ')=1', ''), ['كد', Trim(qryInitQry.FieldByName('Customer2Lable')
          .AsString), 'تلفن', 'آدرس'], Results, [60, 250, 80, 250], alLeft);
      end; // 15

    8:
      begin // مشتري2
        if Trim(qryInitQry.FieldByName('Customer2DetailKind').AsString) = ''
        then
        begin
          Warn('گروه  تعريف نشده است.‏');
          exit;
        end; // if
        b := searchCode_ADOF.SearchCode2(DMf.adcBsell, 'جستجو مشتري',
          'SELECT DISTINCT CustID,CustName,tel,Address FROM Vu_CustomersGroups '
          + GetCustomersGroupTypeSQL('Customer2DetailKind', qryInitQry) +

          IfThen(qryInitQry.FieldByName('UserSecurityCheckActive')
          .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
          ')=1', ''), ['كد', Trim(qryInitQry.FieldByName('Customer2Lable')
          .AsString), 'تلفن', 'آدرس'], Results, [60, 250, 80, 250], alLeft);
      end; // 8

    24:
      begin // مشتري3
        if Trim(qryInitQry.FieldByName('CustomerKind3').AsString) = '' then
        begin
          Warn('گروه  تعريف نشده است.‏');
          exit;
        end; // if
        b := searchCode_ADOF.SearchCode2(DMf.adcBsell, 'جستجو مشتري',
          'SELECT DISTINCT CustID,CustName,tel,Address FROM Vu_CustomersGroups '
          + GetCustomersGroupTypeSQL('CustomerKind3', qryInitQry),
          ['كد', Trim(qryInitQry.FieldByName('Customer3Lable').AsString),
          'تلفن', 'آدرس'], Results, [60, 250, 80, 250], alLeft);
      end; // 22

    28:
      begin // مشتري4
        if Trim(qryInitQry.FieldByName('CustomerKind4').AsString) = '' then
        begin
          Warn('گروه  تعريف نشده است.‏');
          exit;
        end; // if
        b := searchCode_ADOF.SearchCode2(DMf.adcBsell, 'جستجو مشتري',
          'SELECT DISTINCT CustID,CustName,tel,Address FROM Vu_CustomersGroups '
          + GetCustomersGroupTypeSQL('CustomerKind4', qryInitQry),
          ['كد', Trim(qryInitQry.FieldByName('Customer4Lable').AsString),
          'تلفن', 'آدرس'], Results, [60, 250, 80, 250], alLeft);
      end; // 24

    14:
      begin
        if Trim(qryInitQry.FieldByName('CustomerKind1').AsString) = '' then
        begin
          Warn('گروه  تعريف نشده است.‏');
          exit;
        end; // if
        b := searchCode_ADOF.SearchCode2(DMf.adcBsell,
          Trim(qryInitQry.FieldByName('Customer1Label').AsString),
          'SELECT DISTINCT CustID,CustName,AccountNumber FROM Vu_CustomersGroups '
          + GetCustomersGroupTypeSQL('CustomerKind1', qryInitQry) +
          IfThen(qryInitQry.FieldByName('UserSecurityCheckActive')
          .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
          ')=1', ''), ['كد', Trim(qryInitQry.FieldByName('Customer1Label')
          .AsString), 'شماره حساب'], Results, [60, 250, 80], alLeft);
      end;
    // 14
    20, 21:
      AccSpeedButtonBudgetCode(qryname, 'BudgetCode');

    25:
      begin
        if Trim(qryInitQry.FieldByName('ProjectIDKind').AsString) = '' then
        begin
          Warn('گروه  تعريف نشده است.‏');
          exit;
        end; // if
        b := searchCode_ADOF.SearchCode2(DMf.adcBsell, 'جستجو مشتري',
          'SELECT DISTINCT CustID,CustName,tel,Address FROM Vu_CustomersGroups '
          + GetCustomersGroupTypeSQL('ProjectIDKind', qryInitQry),
          ['كد', Trim(qryInitQry.FieldByName('ProjectIDLable').AsString),
          'تلفن', 'آدرس'], Results, [60, 250, 80, 250], alLeft);
      end; // 22
  end; // case
  if b then
  begin
    if not(qryname.State in dseditmodes) then
      qryname.Edit;
    qryname.FieldByName(dbedit.DataField).Value := Results[0];
    Result := StrToIntDef(Results[0], 0);
    if getresponseShow then
      dbedit.SetFocus;
    if dbedit.DataField = qryDetail_ItemCustomerID2.FieldName then
      qryDetail_ItemFieldChange(qryDetail_ItemCustomerID2);

  end; // if
end;

function TGetCheckF.CalculateChecksTotal: Currency;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  try
    with qry do
    begin
      Clone(qryDetail_Item, ltReadOnly);
      Result := 0;
      First;
      while not Eof do
      begin
        Result := Result + FieldByName('ItemAmount').AsCurrency;
        Next;
      end; // while
    end; // with
  finally
    qry.Free;
  end; // try
end;

procedure TGetCheckF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  // DELETE_CustIDTemp
end;

procedure TGetCheckF.FormCreate(Sender: TObject);
begin
  inherited;
  RunPrint := False;
  // dbo.Fn_chk_ExistAttachments(CheckNumber, FormItemID, YearID, ServerID)
  getresponseShow := True;
  aBigPanel.Visible := opt.showBig;
  // SetLookUpCash(qryMaster_Forms);
  // SetLookUpCash(qryDetail_Item);
  try
    InitForm(var_glb_Boolean);
    tmrWarning := TTimer.Create(Self);
    tmrWarning.Enabled := False;
    tmrWarning.OnTimer := tmrWarningOnTimer;
    SetLength(lastCheck, qryDetail_Item.FieldCount);
    MakeMenuItem;
    InitCheck;
    initCombosArz(qryInitQry, CmbArzTypeID, cmbArzTypeIDExchange, edtArzRate);
    PrintCount := 1;
    If qryInitQry.FieldByName('PrintCount').AsInteger > 1 then
      PrintCount := qryInitQry.FieldByName('PrintCount').AsInteger;
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn(E.Message + #13#10 + 'اشكال در تنظيمات سيستم');
      GetCheckF.Close;
    end;

  end;
  DBGrid1.SetFooter4Sum([]);
end;

procedure TGetCheckF.srcDetail_ItemStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryDetail_Item.State in dseditmodes;
  if qryMaster_Forms.State in dseditmodes then
    okPanel.Visible := not okPanel2.Visible;
  newPanel2.Visible := not okPanel2.Visible;
  DataSetPost1.Enabled := okPanel.Visible;
  DataSetCancel1.Enabled := okPanel.Visible;
end;

procedure TGetCheckF.srcMaster_FormsStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMf.adcBsell, 'Forms', '', IntToStr(FormType));
  FreeReservedCodes(DMf.adcBsell, 'FormItems', '', IntToStr(FormType));
  okPanel.Visible := qryMaster_Forms.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  pnlBottomCheck.Visible := okPanel.Visible;
  // lblReMainPerson.Visible := False;
  // lblRemainPerson2.Visible := False;
  lblReMainPerson.Caption := EmptyStr;
  lblRemainPerson2.Caption := EmptyStr;

  DBNavigator1.Enabled := newPanel.Visible;
end;

procedure TGetCheckF.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

// procedure TGetCheckF.SpinButton1DownClick(Sender: TObject);
// begin
// inherited;
// MaskChange(qryDetail_ItemCheckDate, 13)
// end;
//
// procedure TGetCheckF.SpinButton1UpClick(Sender: TObject);
// begin
// inherited;
// MaskChange(qryDetail_ItemCheckDate, 14)
// end;
//
// function TGetCheckF.MaskChange(Field4Mask: TField; UpDown: Integer): string;
// var
// s: string;
// begin
// inherited;
// s := LeftStr(Field4Mask.EditMask, 2);
// s := (UpDown).ToString;
// Field4Mask.EditMask := s + Field4Mask.EditMask;
// end;

procedure TGetCheckF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.btnRelatedReciptsClick(Sender: TObject);
begin
  inherited;
  SBtnRelatedReciptTypes(qryRelatedRecipts.SQL.Text, qryMaster_Forms)
end;

procedure TGetCheckF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.btnCustomerID2Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.btnCustomerID4Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.btnCustomerID1Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.qryMaster_FormsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSetInsert := True;
  if CashCheckFormID > 0 then
    Self.qryMaster_Forms.FieldByName('CashCheckFormID').AsInteger :=
      CashCheckFormID;

  if GuaranteesFormID > 0 then
    Self.qryMaster_Forms.FieldByName('GuaranteesFormID').AsInteger :=
      GuaranteesFormID;

  if pnlRelatedRecipts.Visible then
  begin
    DataSet.FieldByName('ReciptID').AsInteger := opt.ReciptID;
    DataSet.FieldByName('RelatedRecipts').AsString := opt.RelatedRecipts;
  end;

  Self.qryMaster_Forms.FieldByName('ReciptID').AsInteger := opt.ReciptID;
  Self.qryMaster_Forms.FieldByName('CustomerID2').AsInteger := opt.CustomerID1;
  if opt.PayablePriceActive then
    Self.qryMaster_Forms.FieldByName('Amount').AsCurrency := opt.PayablePrice;
  Self.qryMaster_Forms.FieldByName('AidInfoNo').AsString := opt.AidInfoNo;

  if pnlAidInfoDateMaster.Visible then
    Self.qryMaster_Forms.FieldByName('AidInfoDate').AsString := opt.AidInfoDate;

  if qryMaster_Forms.State in [dsInsert] then
    actStateChange.Caption := 'ثبت پيش نويس';
  FormStateAutoStateChange(qryInitQry, qryMaster_Forms);

  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('BudgetCode').AsInteger := 0;
  DataSet.FieldByName('OperatorID').AsInteger := user.ID;
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('FormDate').AsString := var_glb_CurrentDate;
  if DefaultDateActive(qryInitQry) then
    DataSet.FieldByName('DefaultDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('FormId').AsInteger :=
    GetANewID(DataSet, IntToStr(FormType), 'Forms', 'FormID', nil, 1);
  if canshow then
    DataSet.FieldByName('CustomerID1').AsInteger := CustomerID;

  SetDefaultSellsMethodEmporium(qryMaster_Forms, dblkcbb_SellsEmporium,
    dblkcbb_SellsMethod);
  GetFormNumber(IntToStr(FormType), qryInitQry, qryMaster_Forms);

  if getresponseShow then
    if EdtFormNumber.ReadOnly then
      if pnlSellsEmporium.Visible then
        pnlSellsEmporium.SetFocus
      else
        edtCustomerID1.SetFocus
    else
      EdtFormNumber.SetFocus;
  HasRecall2;

  if actGetCheckPostOverallTypeF.Visible then
    btnGetCheckPostOverallTypeF.SetFocus

end;

procedure TGetCheckF.qryMaster_FormsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // qryMaster_Forms_Customer1Name.Lookup := False;
  // qryMaster_Forms_Customer1Name.Lookup := True;
  // qryMaster_Forms.AutoCalcFields := True;
  // qryMaster_Forms.AutoCalcFields := False;
  // qryMaster_Forms.Edit;
  // qryMaster_Forms.Cancel;
end;

procedure TGetCheckF.HasRecall2;
var
  txt: String;
  Result: array [0 .. 10] of String;
begin
  if qryInitQry.FieldByName('HasRecall').AsInteger <> 2 then
    exit;

  txt := 'SELECT Forms.FormID, Forms.FormNumber, Forms.FormDate, Forms.CustomerID1, Customers_1.CustName AS CustName1,'
    + ' Forms.CustomerID2, Customers_2.CustName AS CustName2, Forms.Amount, Forms.FomNote'
    + ' FROM Customers AS Customers_2 INNER JOIN' + ' Forms INNER JOIN' +
    ' Customers AS Customers_1 ON Forms.CustomerID1 = Customers_1.CustID ON Customers_2.CustID ='
    + ' Forms.CustomerID2' +
    ' WHERE (Forms.FormType IN ( %s )) AND (NOT (Forms.FormID IN' +
    ' (SELECT DISTINCT ISNULL(ParentFormID, 0) AS ParentFormID' +
    ' FROM Forms AS Forms_1  WHERE (FormType = %d ))))';
  txt := Format(txt, [qryInitQry.FieldByName('RecallFormTypes').AsString,
    FormType]);

  if searchCode_ADOF.SearchCode2(DMf.adcBsell, 'جستجو كد', txt,
    ['', 'شماره فرم', 'تاريخ فرم',
    'کد ' + qryInitQry.FieldByName('Customer1Label').AsString,
    'نام ' + qryInitQry.FieldByName('Customer1Label').AsString,
    'کد ' + qryInitQry.FieldByName('Customer2Lable').AsString,
    'نام ' + qryInitQry.FieldByName('Customer2Lable').AsString, 'مبلغ',
    'توضیحات'], Result, [0, 0, 50, 50, 100, 50, 100, 50, 100, 50, 100], alLeft)
  then
  begin
    qryMaster_FormsParentFormID.AsString := Result[0];
    qryMaster_FormsFormNumber.AsString := Result[1];
    qryMaster_FormsFormDate.AsString := Result[2];
    qryMaster_FormsCustomerID1.AsString := Result[3];
    qryMaster_FormsCustomerID2.AsString := Result[5];
    opt.PayablePriceActive := True;
    opt.PayablePrice := StrToCurr(Result[7]);
    qryMaster_FormsFomNote.AsString := Result[8];
  end
  else
    qryMaster_Forms.Cancel

end;

procedure TGetCheckF.How2DisplayArzTypeID;
var
  b: Boolean;
begin
  b := (qryInitQry.FieldByName('How2DisplayArzTypeID').AsInteger > 0) or
    (qryMaster_Forms_AccountKind.AsInteger > 0);
  pnlArz.Visible := b;
  pnlArz2.Visible := b;
  pnlIban_SW.Visible := pnlArz.Visible;
  pnlAccountNumberNew_PO.Visible := b or pnlAccountNumberNew.Visible or
    opt.POActive or pnlIban_SW.Visible;

end;

procedure TGetCheckF.qryMaster_FormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  ChkControlEntryCustInfo(qryMaster_Forms, lblWarning);
  // QryCustScroll(qryCustomer1);
  // QryCustScroll(qryCustomer2);
  // QryCustScroll(qryCustomer2Detail);
  // QryCustScroll(qryCustomer3);

  How2DisplayArzTypeID;
  with qryDetail_Item do
  begin
    Active := False;
    Parameters.ParamByName('FormID').Value := TADOQuery(DataSet)
      .FieldByName('FormID').AsVariant;
    Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
      .FieldByName('ServerID').AsInteger;
    Active := True;
  end; // with
  if DataSet.State in [dsInsert] then
    CheckUnsaved;
  if not(DataSet.State in [dsInsert]) then
    CalcTopCheck;
  // pnlAccountKind.Visible := qryMaster_Forms.FieldByName('_AccountKind').AsInteger > 0;
  pnlCheckFor_AccountKind_LineCorrosion.Visible := pnlCheckFor.Visible
  // or    pnlAccountKind.Visible
    ;

  qryMaster_Forms.FieldByName('CustomerID1').ReadOnly := False;

  qryCustActive(qryCust1, qryMaster_Forms.FieldByName('CustomerID1').AsInteger);
  qryCustActive(qryCust2, qryMaster_Forms.FieldByName('CustomerID2').AsInteger);
  qryCustActive(qryCust3, qryMaster_Forms.FieldByName('CustomerID3').AsInteger);
  qryCustActive(qryCust4, qryMaster_Forms.FieldByName('CustomerID4').AsInteger);

  qryCustActive(qryProject, qryDetail_Item.FieldByName('ProjectID').AsInteger);

  AfterScrollAutoFormStateChange(actStateChange, qryInitQry, qryMaster_Forms);

end;

// procedure TGetCheckF.QryCustScroll(qryCustomer: TADOQuery);
// begin
// if qryCustomer.Parameters.FindParam('FormID') <> nil then
// With qryCustomer do
// begin
// Active := False;
// Parameters.ParamByName('FormID').Value := qryMaster_FormsFormID.AsInteger;
// Parameters.ParamByName('ServerID').Value :=
// qryMaster_FormsServerID.AsInteger;
// Parameters.ParamByName('YearID').Value := qryMaster_FormsYearID.AsInteger;
// Parameters.ParamByName('FormType').Value := FormType;
// Parameters.ParamByName('UserID').Value := user.ID;
// Active := True;
// end;
// end;

function TGetCheckF.CalcTopCheck: Currency;
var
  sumCalc, sumAmount: Currency;
  Days: Integer;
  Date: TDateTime;
begin
  sumCalc := 0;
  sumAmount := 0;
  try
    With qryDetail_Item do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        Days := DaysBetween
          (Shamsi2Miladi(Date1400Cnv(qryMaster_Forms.FieldByName('FormDate')
          .AsString)), Shamsi2Miladi(Date1400Cnv(FieldByName('CheckDate')
          .AsString)));
        if Date1400Cnv(qryMaster_Forms.FieldByName('FormDate').AsString) >
          Date1400Cnv(FieldByName('CheckDate').AsString) then
          Days := 0;
        sumCalc := sumCalc + Days * FieldByName('ItemAmount').AsCurrency;
        sumAmount := sumAmount + FieldByName('ItemAmount').AsCurrency;
        Next;
      end;
      StatusBar1.Panels[2].Text := 'تعدادچكها=' +
        IntToStr(qryDetail_Item.RecordCount);
      EnableControls;
    end;
    if sumAmount <= 0 then
      sumAmount := 1;
    TopCheck := sumCalc / sumAmount;
  finally
    lblTopCheck.Caption := ' رأس چكها ' +
      Trim(CurrToStrF(TopCheck, ffCurrency, 0));
    Result := sumAmount;
    Date := Now;
    Date := IncDay(Date, Round(TopCheck));
    lblTopCheck.Caption := lblTopCheck.Caption + ' = ' + miladi2Shamsi(Date);
  end;

end;

procedure TGetCheckF.qryDetail_ItemAfterInsert(DataSet: TDataSet);
var
  txt: string;
begin
  inherited;
  if qryMaster_Forms_MoeinName <> nil then
    qryMaster_Forms_MoeinName.Required :=
      (Trim(qryMaster_FormsTopicCode.AsString) <> '0') and pnlTopicCode.Visible;

  if not CheckRequiredFields(qryMaster_Forms) then
  begin
    DataSet.Cancel;
    exit;
  end;

  if qryInitQry.FieldByName('Customer2ActiveOnDetail').AsInteger = 5 then
    Self.qryDetail_Item.FieldByName('CustomerID2').AsInteger :=
      qryMaster_Forms.FieldByName('CustomerID3').AsInteger
  else
    Self.qryDetail_Item.FieldByName('CustomerID2').AsInteger := opt.CustomerID1;

  if opt.PayablePriceActive then
    Self.qryDetail_Item.FieldByName('ItemAmount').AsCurrency :=
      opt.PayablePrice;

  if pnlAidInfoDateDetail.Visible then
    qryDetail_ItemAidInfoDate.AsString := opt.AidInfoDate;

  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('Checktype').AsInteger := 1;

  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('AmountDelay').AsInteger := 0;
  DataSet.FieldByName('SyadSystem').AsBoolean := False;

  DataSet.FieldByName('FormItemID').AsInteger :=
    GetANewID(DataSet, IntToStr(FormType), 'FormItems', 'FormItemID',
    qryMaster_Forms, 1);
  DataSet.FieldByName('FormID').AsInteger := qryMaster_Forms.FieldByName
    ('FormID').AsInteger;
  DataSet.FieldByName('PO').AsString := qryMaster_Forms.FieldByName
    ('PO').AsString;

  DataSet.FieldByName('Row').AsInteger := DataSet.RecordCount + 1;
  // GetANewCode(Self.Name,'SELECT MAX(Row) FROM FormItems WHERE FormID ='+qryMaster_FormsFormID.AsString ,'',dmF.adcBSell);
  DataSet.FieldByName('BudgetCode').AsInteger :=
    qryMaster_Forms.FieldByName('BudgetCode').AsInteger;
  if (Cus2DetailAsMaster) and (not actselectCheck.Visible) then
    DataSet.FieldByName('CustomerID2').AsString :=
      qryMaster_Forms.FieldByName('CustomerID2').AsString;
  if pnlCheckFor.Visible then
  begin
    DataSet.FieldByName('CheckFor').AsString :=
      qryMaster_Forms.FieldByName('_Customer2Name').AsString;

    if qryMaster_Forms_CustomerCheckNote.AsString <> EmptyStr then
      DataSet.FieldByName('CheckFor').AsString :=
        qryMaster_Forms_CustomerCheckNote.AsString;
  end;

  DataSet.FieldByName('AccountNumberNew').AsString :=
    qryMaster_Forms.FieldByName('_CustAccountNumber').AsString;

  if getresponseShow then
    pnlCheck.SetFocus;
  InsertCheckNumber(DataSet);
  // SetDefaultSellsMethodEmporium(qryMaster_Forms,dblkcbb_SellsEmporium,dblkcbb_SellsMethod);

  if (FormType = 50) and (opt.CheckDateDefaultAct) then
    qryDetail_ItemCheckDate.AsString := Date1400Cnv(var_glb_CurrentDate);

  CalcCheckDate;

  if qryInitQry.FieldByName('Pay_Topic_Active').AsInteger in [4] then
    DataSet.FieldByName('TopicTypesI').AsInteger :=
      qryMaster_Forms.FieldByName('TopicTypes').AsInteger;

  if (qryInitQry.FieldByName('How2DisplayArzTypeID').AsInteger > 0) or
    (qryMaster_Forms_AccountKind.AsInteger > 0) then
    qryDetail_Item.FieldByName('ArzTypeID').AsInteger :=
      qryMaster_Forms_AccountKind.AsInteger;
  // InsertPersonID1(qryMaster_Forms,DataSet);
  Perform(WM_NEXTDLGCTL, 0, 0);

  if FormType in [10, 50] then
  begin
    txt := 'SELECT MAX(FormItems.CheckCounter) AS CheckCounter FROM FormItems INNER JOIN '
      + 'Forms ON FormItems.FormID = Forms.FormID AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID = Forms.YearID '
      + 'WHERE (Forms.FormType = %d)AND(Forms.YearID = %d)';
    txt := Format(txt, [FormType, APPBank.Year]);

    qryDetail_Item.FieldByName('CheckCounter').AsInteger :=
      GetANewCode(IntToStr(FormType), txt, 'CheckCounter', DMf.adcBsell);
  end;

end;

procedure TGetCheckF.InsertCheckNumber(DataSet: TDataSet);
var
  Customer1DocType: Integer;
  qry: TADOQuery;
begin
  if not InsertCheckNumberAct then
    exit;
  Customer1DocType := qryInitQry.FieldByName('Customer1DocType').AsInteger;
  qry := TADOQuery.Create(DataSet.Owner);
  With qry do
    try
      qry.Connection := theMainConnection;
      Active := False;
      SQL.Text := 'SELECT dbo.GetMaxCheckNumber( :CustomerID1 ,';
      SQL.Add(' :CustomerID2 ,:Customer1DocType , :MaxCheckNumber , :YearID )');
      Parameters.ParamByName('CustomerID1').Value :=
        qryMaster_FormsCustomerID1.AsLargeInt;
      Parameters.ParamByName('CustomerID2').Value :=
        qryMaster_FormsCustomerID2.AsLargeInt;
      Parameters.ParamByName('Customer1DocType').Value := Customer1DocType;
      Parameters.ParamByName('MaxCheckNumber').Value := MaxCheckNumber;
      Parameters.ParamByName('YearID').Value := qryMaster_FormsYearID.AsInteger;
      Active := True;
      DataSet.FieldByName('CheckNumber').AsString := Trim(Fields[0].AsString);
      Active := False;
    finally
      Free;
    end;
end;

procedure TGetCheckF.lblTopCheckClick(Sender: TObject);
begin
  inherited;
  TopUpCalcF.ShowCalcF(qryDetail_Item, qryMaster_FormsFormDate.AsString)
end;

procedure TGetCheckF.qryDetail_ItemCheckTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryDetail_ItemCheckType.AsInteger of
    0:
      Text := 'چك مدت دار';
    1:
      Text := 'چك روز';
    2:
      Text := 'ساير';
  end;
end;

procedure TGetCheckF.qryDetail_ItemCheckTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbCheckType.ItemIndex;
end;

procedure TGetCheckF.qryDetail_ItemCustomerID2Change(Sender: TField);
begin
  inherited;
  // INSERT_CustIDTemp(Sender, qryCustomer2Detail);
end;

procedure TGetCheckF.actSearch_Execute(Sender: TObject);
var
  Result: array [0 .. 6] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcBsell, 'مراكز هزينه',
    'SELECT FormItemID, CheckNumber, CheckDate, ItemAmount, BankName, AccountNumber FROM FormItems '
    + 'WHERE  FormID =' + qryMaster_Forms.FieldByName('FormID').AsString,
    ['', 'شماره چك', 'تاريخ چك ', 'مبلغ', 'نام بانك', 'شماره حساب'], Result,
    [0, 50, 100, 100, 100, 100], alLeft) then
    qryDetail_Item.Locate('FormItemID', Result[0], [])
end;

procedure TGetCheckF.SpeedButton5Click(Sender: TObject);
var
  txt: String;
  Result: array [0 .. 10] of String;
begin
  inherited;
  txt := 'SELECT FormID,ServerID,YearID,FormNumber, FormDate, CustomerID2,CustName , AidInfoNo, AidInfoDate,CheckNumber, '
    + 'CheckDate   FROM FormsCustomer WHERE (YearID =' + IntToStr(APPBank.Year)
    + ')AND FormType =' + IntToStr(FormType) +
    IfThen(canshow, ' And CustomerID1 =' + IntToStr(CustomerID), '');

  if searchCode_ADOF.SearchCode2(DMf.adcBsell, 'جستجو كد', txt,
    ['', '', '', 'شماره فرم', 'تاريخ فرم',
    'کد ' + qryInitQry.FieldByName('Customer2Lable').AsString,
    'نام ' + qryInitQry.FieldByName('Customer2Lable').AsString, 'شماره تقسيط',
    'تاريخ تقسيط', 'شماره چک', 'تاريخ چک'], Result, [0, 0, 0, 50, 100, 100, 100,
    100, 100, 100, 100], alLeft) then
    qryAllForms.Locate('FormID;ServerID;YearID',
      VarArrayOf([Result[0], Result[1], Result[2]]), []);
end;

procedure TGetCheckF.qryDetail_ItemBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not(qryMaster_Forms.FieldByName('FormState').AsInteger in [0, 12]) then
  begin
    Warn('فقط ' + qryInitQry.FieldByName('FormCaption').AsString +
      'ي كه نوع اطلاعات آن موقت است قابل حذف است‏', mtInformation);
    Abort;
  end;
  if not OkDeleteEditCheck(qryDetail_Item) then
    Abort;
  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TGetCheckF.qryMaster_FormsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckDay4Edit(qryInitQry, qryMaster_Forms, 1) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID'), qryMaster_Forms)
  then
    Abort;
  if not(qryMaster_Forms.FieldByName('FormState').AsInteger in [0, 12]) then
  begin
    Warn('فقط ' + qryInitQry.FieldByName('FormCaption').AsString +
      'ي كه نوع اطلاعات آن موقت است قابل حذف است‏', mtInformation);
    Abort;
  end;
  CheckItems(qryDetail_Item);
  WorkFlowBeforDelete(qryMaster_Forms);

  if get_response('آيا از حذف اين فرم وكليه چكهاي آن مطمئن هستيد.') <> mrYes
  then
    Abort;
end;

procedure TGetCheckF.qryMaster_FormsBeforePost(DataSet: TDataSet);
var
  DefaultDate, AidInfoDate: String;
  FormDate: String;
begin
  inherited;
  Chk_CustomerActive(qryMaster_Forms_Customer1Active,
    qryMaster_FormsCustomerID1);
  Chk_CustomerActive(qryMaster_Forms_Customer2Active,
    qryMaster_FormsCustomerID2);

  if qryMaster_Forms_MoeinName <> nil then
    qryMaster_Forms_MoeinName.Required :=
      (Trim(qryMaster_FormsTopicCode.AsString) <> '0') and pnlTopicCode.Visible;

  if qryDetail_Item.State in dseditmodes then
    qryDetail_Item.Post;
  // begin

  if (not spdSelectCheck.Visible) and (qryDetail_Item.IsEmpty) then
  begin
    Warn('چكي ثبت نشده است و فرم قابل تائيد نمي‏باشد.‏‏', mtInformation);
    Abort;
  end;

  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  if (DataSet.FieldByName('FormNumber').AsInteger < qryInitQry.FieldByName
    ('SerialNoFrom').AsInteger) or (DataSet.FieldByName('FormNumber').AsInteger
    > qryInitQry.FieldByName('SerialNoTo').AsInteger) then
  begin
    Warn('شماره فرم وارد شده خارج از محدوده تعريف شده است!.‏');
    if getresponseShow then
      EdtFormNumber.SetFocus;
    Abort;
  end;

  FormDate := qryMaster_Forms.FieldByName('FormDate').AsString;
  AidInfoDate := qryMaster_Forms.FieldByName('AidInfoDate').AsString;

  DefaultDate := DataSet.FieldByName('DefaultDate').AsString;
  if not validate_date(True, '', '', 'تاريخ جانبي', DefaultDate) then
    Abort;
  try
    DataSet.FieldByName('DefaultDate').AsString := '';
    if not pnlAidInfoDateMaster.Visible then
      DataSet.FieldByName('AidInfoDate').AsString := '';
    if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear)
    then
      Abort;

    if not ValidateDatasetDatesForms(DataSet, qryInitQry) then
      Abort;

  finally
    DataSet.FieldByName('DefaultDate').AsString := DefaultDate;
    DataSet.FieldByName('AidInfoDate').AsString := AidInfoDate;
  end;

  if not validate_date(False, APPBank.StartYear, APPBank.endYear, ' ', FormDate)
  then
  begin
    if getresponseShow then
      EdtFormDate.SetFocus;
    Abort;
  end; // if
  if not ShowWarning(DataSet) then
    Abort;
  qryMaster_Forms.FieldByName('Amount').AsCurrency :=
    CalcSumFileds(qryDetail_Item, 'ItemAmount');
  if not ValidFormNumber(qryMaster_Forms, qryInitQry) then
    Abort;

  if not ChkCustomerState(qryMaster_Forms) then
    Abort;

end;

procedure TGetCheckF.EdtFormNumberKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton5.Click;
  end; // if

end;

procedure TGetCheckF.DBEdit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton9.Click;
  end; // if

end;

procedure TGetCheckF.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton10.Click;
  end; // if

end;

procedure TGetCheckF.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton8.Click;
  end; // if

end;

procedure TGetCheckF.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton2.Click;
  end; // if

end;

procedure TGetCheckF.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton3.Click;
  end; // if

end;

procedure TGetCheckF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton1.Click;
  end; // if

end;

procedure TGetCheckF.DBGrid1CellClick(Column: TColumnEh);
begin
  inherited;
  if var_SQL_ProductVersion > 8 then
    with DMf.qryTmpTmp do
      try
        Active := False;
        SQL.Text := 'DECLARE @childId int';
        SQL.Add(Format('SET @childId=%d',
          [qryDetail_ItemFormItemID.AsInteger]));
        SQL.Add('DECLARE @s varchar(1000)');
        SQL.Add('SET @s=''''');
        SQL.Add(';WITH #results AS');
        SQL.Add('(');
        SQL.Add('SELECT FormItemID,preFormItemID');
        SQL.Add('FROM FormItems');
        SQL.Add('WHERE FormItemID = @childId');
        SQL.Add('UNION ALL');
        SQL.Add('SELECT t.FormItemID,t.preFormItemID');
        SQL.Add('FROM FormItems t');
        SQL.Add('INNER JOIN #results r ON r.preFormItemID = t.FormItemID');
        SQL.Add(')');
        SQL.Add('SELECT @s=@s+ '' سال ''+ltrim(str(Forms.YearID))');
        SQL.Add('+'' ش ''+ltrim(str( Forms.FormNumber))');
        SQL.Add('+'' ت ''+ Forms.FormDate');
        SQL.Add('+'' ف. ''+ FormTypes.FormCaption+'' > ''');
        SQL.Add('FROM FormItems INNER JOIN');
        SQL.Add('Forms ON FormItems.FormID = Forms.FormID AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID');
        SQL.Add('= Forms.YearID INNER JOIN');
        SQL.Add('FormTypes ON Forms.FormType = FormTypes.FormType');
        SQL.Add('where FormItems.FormItemID IN(SELECT FormItemID');
        SQL.Add('FROM #results)');
        SQL.Add('AND (FormItems.FormItemID <> @childId)');
        SQL.Add(Format('AND (FormItems.CheckNumber=%s)',
          [QuotedStr(qryDetail_ItemCheckNumber.AsString)]));
        SQL.Add('SELECT @s');
        Active := True;
        DBGrid1.Hint := Fields[0].AsString;
        Active := False;
      except
        on E: Exception do
        begin
          add2log(E.Message);
        end;

      end;
end;

procedure TGetCheckF.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
  inherited;
  if TDBGridColumnEh(Sender).ID = 12 then
    AddpopViewFile2Grid(Rect, DBGrid1,
      qryDetail_Itemchk_ExistAttachments.AsString)
end;

// procedure TGetCheckF.edtCheckDateEnter(Sender: TObject);
// begin
// inherited;
// if qryDetail_ItemCheckDate.AsString = EmptyStr then
// qryDetail_ItemCheckDate.EditMask := '1399/99/99'
// else
// qryDetail_ItemCheckDate.EditMask :=
// LeftStr(qryDetail_ItemCheckDate.AsString, 2) + '9999/99/99'
// end;
//
// procedure TGetCheckF.edtCheckDateExit(Sender: TObject);
// begin
// inherited;
// qryDetail_ItemCheckDate.EditMask := '9999/99/99'
// end;

procedure TGetCheckF.edtCustomerID2DblClick(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      ReMainPersonPaymentCash4Thread(qryMaster_FormsCustomerID2,
        lblRemainPerson2);
    end);

  T.FreeOnTerminate := True;

  T.Start;
end;

procedure TGetCheckF.edtCustomerID2dKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    btnCustomerID2.Click;
  end;
end;

procedure TGetCheckF.DBEdit25KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    btnProjectID.Click;
  end;
end;

procedure TGetCheckF.DBEdit21KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton12.Click;
  end; // if

end;

procedure TGetCheckF.edtCustomerID2KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton7.Click;
  end; // if

end;

procedure TGetCheckF.edtCustomerID1DblClick(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  lblReMainPerson.Visible := True;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      ReMainPersonPaymentCash4Thread(qryMaster_FormsCustomerID1,
        lblReMainPerson);
    end);
  T.FreeOnTerminate := True;
  T.Start;
end;

procedure TGetCheckF.edtCustomerID1KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    btnCustomerID1.Click;
  end;
  // if

end;

procedure TGetCheckF.DBEdit20KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton11.Click;
  end; // if

end;

procedure TGetCheckF.FormResize(Sender: TObject);
begin
  inherited;
  Panel2.Height := spdSelectCheck.Height + Panel10.Height + Panel8.Height;
  if Panel2.Height < 100 then
    Panel2.Height := 100;

  aBigPanel.Top := DBGrid1.Top + (DBGrid1.Height - aBigPanel.Height) + 20
end;

procedure TGetCheckF.frmGetCheckPostOverallType1btnokClick(Sender: TObject);
begin
  inherited;
  frmGetCheckPostOverallType1.actOkExecute(Sender);
end;

procedure TGetCheckF.frmGetCheckPostOverallType1SpeedButton1Click
  (Sender: TObject);
begin
  inherited;
  frmGetCheckPostOverallType1.SpeedButton1Click(Sender);
end;

procedure TGetCheckF.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeMyComponent(Self, ['qrySellsEmporiums', 'qrySellsMethods', 'qryCust1',
    'qryCust2', 'qryCust3', 'qryCust4', 'qryProject']);
  mnu.Free
end;

procedure TGetCheckF.actselectCheckExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if not(qryMaster_Forms.State in [dsInsert]) then
    qryMaster_FormsBeforeEdit(qryMaster_Forms);
  // if not CheckRequiredFields(qryMaster_Forms) then Exit;
  if qryMaster_Forms.State in dseditmodes then
    qryMaster_Forms.Post;
  if (canFilter) And (qryMaster_Forms.FieldByName('CustomerID1').AsString = '')
  then
    exit;

  s := GetFilterSQLChooseChecks(qryInitQry, qryMaster_Forms);

  if pnlSellsEmporium.Visible then
    s := s + Format(' AND (F.SellsEmporium = %D) ',
      [qryMaster_Forms.FieldByName('SellsEmporium').AsInteger]);

  ChooseChecksF.SelectChecks(qryInitQry, s, qryMaster_Forms, qryDetail_Item);

end;

procedure TGetCheckF.qryMaster_FormsAfterPost(DataSet: TDataSet);
var
  c, sumAmount: Currency;
  s: string;
  FormID, YearID, ServerID: Integer;
begin
  inherited;
  sumAmount := 0;
  if qryDetail_Item.State in dseditmodes then
    qryDetail_Item.Post;
  try
    qryDetail_Item.UpdateBatch(arAll);
    qrySeverable.UpdateBatch(arAll);
    if getresponseShow then
      BigMessage('ثبت شد.', 1);
    DeleteFile(__AppData + _UnsavedFileName);
    sumAmount := CalcTopCheck;
  except
    on E: Exception do
    begin
      Warn(E.Message);
      DataToExcel(qryDetail_Item);
      // ReItemID(qryDetail_Item, qryMaster_Forms, 'FormItems', 'FormItemID',        IntToStr(FormType), 1);
    end;
  end; // try
  StopWarn;

  if qryInitQry.FieldByName('CheckEntity').AsInteger = 1 then
  begin
    lblReMainPerson.Visible := True;
    c := ReMainPersonPaymentCash(qryMaster_FormsCustomerID1.AsInteger,
      qryMaster_Forms.FieldByName('FormDate').AsString,
      [opt.DocType1, opt.DocType2, opt.DocType3, opt.DocType4]);
    lblReMainPerson.Caption := 'مانده=' + CurrToStrF(c, ffCurrency, 0);
    if c <= 0 then
      Warn('مانده ' + qryInitQry.FieldByName('Customer1Label').AsString +
        '  منفی مي شود');
  end;

  if (qryInitQry.FieldByName('PrintAfterPost').AsInteger = 1) then
    actPrint1.Execute;

  if (qryInitQry.FieldByName('AutoPrintOnItemAmount').AsCurrency > 0) and
    (sumAmount >= qryInitQry.FieldByName('AutoPrintOnItemAmount').AsCurrency)
  then
    actPrint2.Execute;

  if DataSetInsert then
    actSmsSend.Execute;
  DataSetInsert := False;
  WorkFlowSave(qryMaster_Forms, 1, qryMaster_FormsFormID, FormType);
  if qryInitQry.FieldByName('WorkflowID').AsInteger > 0 then
    WorkflowDmF.RunSomeWorkflow(qryInitQry.FieldByName('WorkflowID').AsInteger,
      qryMaster_Forms, ppReport1, qryInitQry.FieldByName('ReportFileName1')
      .AsString, qryMaster_Forms.FieldByName('FormNumber').AsString);

  // DELETE_CustIDTemp;

  FormID := qryMaster_FormsFormID.AsInteger;
  ServerID := qryMaster_FormsServerID.AsInteger;
  YearID := qryMaster_FormsYearID.AsInteger;
  s := qryDetail_Item.Sort;
  try
    qryMaster_Forms.DisableControls;
    qryAllForms.AfterScroll := nil;
    // qryAllForms.BeforeScroll := nil;
    qryAllForms.Requery();
  finally
    qryAllForms.AfterScroll := qryAllFormsAfterScroll;
    // qryAllForms.BeforeScroll := qryAllFormsBeforeScroll;
    qryAllForms.Locate('FormID;YearID;ServerID',
      VarArrayOf([FormID, YearID, ServerID]), []);
    qryMaster_Forms.EnableControls;
  end;

  // qryRecipts.BeforeCancel := qryReciptsBeforeCancel;
  qryDetail_Item.Sort := s;

end;

// procedure TGetCheckF.DELETE_CustIDTemp;
// begin
// try
// DMf.adcBsell.Execute
// (Format('DELETE FROM CustIDTemp WHERE (FormType = %d) AND (UserID = %d)',
// [FormType, user.ID]));
// except
// on E: Exception do
// begin
// add2log('D>>>' + E.Message);
// end;
// end;
// end;

procedure TGetCheckF.qryDetail_ItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryDetail_ItemItemAmountChange(qryDetail_Item.FieldByName('ItemAmount'));
end;

procedure TGetCheckF.qryDetail_ItemItemAmountChange(Sender: TField);
begin
  inherited;
  lblValue.Caption := num2alphabet(Round(Sender.AsCurrency)) + Currency_String;
end;

procedure TGetCheckF.qryDetail_ItemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  showBigNum(qryDetail_ItemItemAmount.AsCurrency, aBigPanel, horoofPanel);
  qryDetail_ItemItemAmountChange(qryDetail_Item.FieldByName('ItemAmount'));
  ArzTypeIDExchangeSet;
  if RunPrint then
    With qryRptSeverable do
    begin
      Close;
      Parameters.ParamByName('FormItemID').Value :=
        qryDetail_Item.FieldByName('FormItemID').AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryDetail_Item.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value :=
        qryDetail_Item.FieldByName('YearID').AsInteger;
      Parameters.ParamByName('FormID').Value :=
        qryDetail_Item.FieldByName('FormID').AsInteger;
      Open;
    end;
end;

procedure TGetCheckF.qryDetail_ItemArzAmountChange(Sender: TField);
var
  r: Currency;
begin
  inherited;
  r := RoundTo(qryDetail_Item.FieldByName('ArzRate').AsFloat *
    (qryDetail_Item.FieldByName('ArzAmount').AsFloat), 0);
  if qryDetail_Item.FieldByName('ItemAmount').AsCurrency <> r then
    qryDetail_Item.FieldByName('ItemAmount').AsCurrency := r;
end;

procedure TGetCheckF.qryDetail_ItemArzTypeIDChange(Sender: TField);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT TOP 1 EqualityWithMainUnit FROM CurrenciesItems';
    SQL.Add('WHERE (CurrenciesID = :ID ) AND (CurrenciesDate <= :Date )');
    SQL.Add('ORDER BY CurrenciesDate DESC, CurrenciesTime DESC');
    Parameters.ParamByName('ID').Value := Sender.AsInteger;
    Parameters.ParamByName('Date').Value := qryMaster_FormsFormDate.AsString;
    Active := True;
    qryDetail_Item.FieldByName('ArzRate').AsFloat := Fields[0].AsFloat;
    Active := False;
  end;
end;

procedure TGetCheckF.qryDetail_ItemArzTypeIDExchangeChange(Sender: TField);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT TOP 1 EqualityWithMainUnit FROM CurrenciesItems';
    SQL.Add('WHERE (CurrenciesID = :ID ) AND (CurrenciesDate <= :Date )');
    SQL.Add('ORDER BY CurrenciesDate DESC, CurrenciesTime DESC');
    Parameters.ParamByName('ID').Value := Sender.AsInteger;
    Parameters.ParamByName('Date').Value := qryMaster_FormsFormDate.AsString;
    Active := True;
    if Sender.FieldName = 'ArzTypeID' then
      qryDetail_Item.FieldByName('ArzRate').AsFloat := Fields[0].AsFloat
    else
      qryDetail_Item.FieldByName('ArzRateExchange').AsFloat :=
        Fields[0].AsFloat;

    Active := False;
  end;
  ArzTypeIDExchangeSet;
end;

procedure TGetCheckF.ArzTypeIDExchangeSet;
var
  b: Boolean;
begin
  b := qryDetail_ItemArzTypeIDExchange.AsInteger > 0;
  lblArzRateExchange.Visible := b;
  lblArzAmountExchange.Visible := b;
  edtArzRateExchange.Visible := b;
  edtArzAmountExchange.Visible := b;
end;

procedure TGetCheckF.qryDetail_ItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('_MoeinName') <> nil then
    DataSet.FieldByName('_MoeinName').Required :=
      (Trim(DataSet.FieldByName('TopicCode').AsString) <> '0') and
      pnlTopicCodeD.Visible;

  if DataSet.State in dseditmodes then // for actSeverable
    DataSet.FieldByName('FormID').AsInteger := qryMaster_Forms.FieldByName
      ('FormID').AsInteger;

  if not ShowWarning(DataSet) then
    Abort;
  if qryDetail_Item.FieldByName('ItemAmount').AsCurrency <= 0 then
  begin
    Warn('مبلغ بايد بزرگتر از صفر باشد.‏');
    Abort;
  end;
  if (FormType = 50) and
    (Date1400Cnv(qryDetail_Item.FieldByName('CheckDate').AsString) <
    Date1400Cnv(qryMaster_Forms.FieldByName('FormDate').AsString)) then
  begin
    Warn('تاريخ سررسيد نبايد از تاريخ فرم كوچكتر باشد.‏‏');
    Abort;
  end;

  if DataSet.State in dseditmodes then
  begin
    if not ValidateDatasetDates(DataSet, '0000/00/00', '9999/99/99') then
      Abort;
    trimStringFields(DataSet);
  end;
  if not ValidCheckNumber(DataSet) then
    Abort;

  if not CheckControls then
    Abort;

  if not ValidateDatasetDatesForms(qryMaster_Forms, qryInitQry) then
    Abort;

  if not ChkCustomerState(qryMaster_Forms) then
    Abort;

  if not CheckRequiredFields(qryDetail_Item) then
    Abort;

end;

function TGetCheckF.ValidCheckNumber(DataSet: TDataSet): Boolean;
var
  i: Int64;
  canInsert: Boolean;
begin
  Result := True;
  if qryInitQry.FieldByName('SerialCheckActive').AsInteger = 0 then
    exit;
  i := StrToInt64(Trim(DataSet.FieldByName('CheckNumber').AsString));
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(CheckBookID) FROM CheckBook ';
    SQL.Add('WHERE (' + IntToStr(i) + ' BETWEEN SerialFrom AND SerialTo)');
    SQL.Add('AND (ChkBookActive = 0 )AND (BankID = ' +
      qryMaster_Forms.FieldByName('CustomerID1').AsString + ')');
    Active := True;
    canInsert := Fields[0].AsInteger > 0;
    Active := False;
  end;
  // with
  if not canInsert then
  begin
    Warn('شماره چك وارد شده در محدوده دسته چكهاي تعريف شده در سيستم نمي‏باشد.',
      mtInformation);
    if getresponseShow then
      if not EdtCheckNumber.ReadOnly then
        EdtCheckNumber.SetFocus;
    Result := qryInitQry.FieldByName('SerialCheckActive').AsInteger <> 2;
  end;
  // if
end;

procedure TGetCheckF.qryDetail_ItemCheckDateChange(Sender: TField);
begin
  inherited;
  if pnlChecktype.Visible then
  begin
    if DaysBetween(Shamsi2Miladi(Date1400Cnv(Sender.AsString)),
      Shamsi2Miladi(Date1400Cnv(EdtFormDate.Text))) >= opt.CheckDateOffset then
      qryDetail_Item.FieldByName('CheckType').Value := 0
    else
      qryDetail_Item.FieldByName('CheckType').Value := 1;
  end;
  // if
end;

procedure TGetCheckF.qryDetail_ItemAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryMaster_Forms.State = dsInsert then
    SaveArticlesToFile;
  StopWarn;
  if getresponseShow then
    newPanel2.SetFocus;
end;

procedure TGetCheckF.srcDetail_ItemDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  StatusBar1.Panels[2].Text := 'تعداد چكها = ' +
    IntToStr(qryDetail_Item.RecordCount);
  StatusBar1.Panels[1].Text := 'جمع=' + CurrToStrF(CalculateChecksTotal,
    ffCurrency, 0);

end;

procedure TGetCheckF.actPrintExecute(Sender: TObject);
var
  ts: TStrings;
  i: Byte;
  // s:String;
begin
  inherited;
  try
    actPrint.Enabled := False;
    if qryMaster_Forms.State in dseditmodes then
      qryMaster_Forms.Post;
    sleep2(1500);

    ppDBPipeline2.MasterDataPipeline := ppDBPipeline1;
    ppDBPipeline2.RangeBegin := rbFirstRecord;
    ppDBPipeline2.RangeEnd := reLastRecord;

    ppBDEPipeline1.RangeBegin := rbFirstRecord;
    ppBDEPipeline1.RangeEnd := reLastRecord;

    SeletedPrint(ppDBPipeline1, DBGrid1);
    SeletedPrint(ppDBPipeline2, DBGrid1);
    if not CheckUserlevel(qryInitQry.FieldByName('PrintLevelID'),
      qryMaster_Forms) then
      Abort;
    mnuBankReports.Clear;
    ts := TStringList.Create;
    ts.Text := Trim(qryMaster_Forms.FieldByName('_BankReports').AsString);
    if ts.Count > 0 then
      for i := 0 to ts.Count - 1 do
      begin
        mnu := TMenuItem.Create(PopMuPrint);
        mnu.OnClick := A_l_l_Click__Click;
        mnu.Caption := StringReplace(ts.Strings[i], '.rtm', '', []);
        // IntToStr(i)+
        mnu.Hint := ts.Strings[i];
        mnuBankReports.Add(mnu);
      end;

    mnuBankReports.Caption := qryMaster_Forms.FieldByName
      ('_Customer1Name').AsString;
    mnuBankReports.Visible := mnuBankReports.Count > 0;
    ts.Free;
    // PopMuPrint.Items[1].Enabled:=qryInitQry.FieldByName('ReportFileName2').AsString<>'';
    if qryInitQry.FieldByName('ReportFileName2').AsString <> '' then
      PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
    else
    begin
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine,
        qryInitQry.FieldByName('FooterSigns').AsString);
      ppReport1.PrinterSetup.Copies := PrintCount;
      try
        RunPrint := True;
        qryMaster_Forms.DisableControls;
        qryDetail_Item.DisableControls;
        // ppReport1.DataPipeline:=ppDBPipeline1;
        SetSendToBackShapeOnPrint(Self);
        if qryInitQry.FieldByName('ReportFileName1').AsString <> '' then
        begin
          PopMuPrint.Items[0].Click;
          exit
        end
        else
          ppReport1.Print;
      finally
        qryMaster_Forms.EnableControls;
        qryDetail_Item.EnableControls;
        RunPrint := False;

      end;
      // try
    end; // else

  finally
    actPrint.Enabled := True;

  end;

end;

procedure TGetCheckF.actPrint1Execute(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('PrintLevelID'), qryMaster_Forms)
  then
    Abort;
  footer_ := Trim(qryInitQry.FieldByName('FooterSigns').AsString);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath
      (qryInitQry.FieldByName('ReportFileName1').AsString);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + qryInitQry.FieldByName('ReportFileName1').AsString +
          ' نظر يافت نشد.!‏', mtInformation);
      // DeviceType:='Printer';
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      if (qryInitQry.FieldByName('PrintAfterPost').AsInteger = 1) then
        DeviceType := 'Printer';
      qryMaster_Forms.DisableControls;
      qryDetail_Item.DisableControls;
      // ppReport1.DataPipeline:=ppDBPipeline1;
      SetSendToBackShapeOnPrint(Self);
      RunPrint := True;
      Print;
    finally
      AutoState__Change(qryInitQry, qryMaster_Forms);
      qryMaster_Forms.EnableControls;
      qryDetail_Item.EnableControls;
      RunPrint := False;

    end; // try
  end; // with
end;

procedure TGetCheckF.actPrint2Execute(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('PrintLevelID'), qryMaster_Forms)
  then
    Abort;
  footer_ := Trim(qryInitQry.FieldByName('FooterSigns').AsString);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath
      (qryInitQry.FieldByName('ReportFileName2').AsString);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + qryInitQry.FieldByName('ReportFileName2').AsString +
          ' نظر يافت نشد.!‏', mtInformation);
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      if (qryInitQry.FieldByName('PrintAfterPost').AsInteger = 1) then
        DeviceType := 'Printer';
      qryMaster_Forms.DisableControls;
      qryDetail_Item.DisableControls;
      // ppReport1.DataPipeline:=ppDBPipeline1;
      SetSendToBackShapeOnPrint(Self);
      RunPrint := True;
      Print;
    finally
      AutoState__Change(qryInitQry, qryMaster_Forms);
      qryMaster_Forms.EnableControls;
      qryDetail_Item.EnableControls;
      RunPrint := False;

    end; // try
  end; // with
end;

procedure TGetCheckF.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := num2alphabet(Round(qryMaster_Forms.FieldByName('Amount').AsCurrency));
end;

procedure TGetCheckF.ppLabel15GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := var_glb_CompanyName;
end;

procedure TGetCheckF.plblItemAmountSplitGetText(Sender: TObject;
var Text: string);
var
  s: string;
  i: Integer;
begin
  inherited;
  s := qryDetail_ItemItemAmount.AsString;
  Text := EmptyStr;
  for i := Length(s) downto 1 do
    Text := Text + ' ' + s[i];

  for i := Length(s) to 15 do
    Text := Text + ' #';

  // Text := Text.Trim;
end;

procedure TGetCheckF.plblItemAmountSplitReversGetText(Sender: TObject;
var Text: string);
var
  s: string;
  i: Integer;
begin
  inherited;
  s := qryDetail_ItemItemAmount.AsString;
  Text := EmptyStr;
  for i := 0 to Length(s) do
    Text := Text + ' ' + s[i];

  for i := Length(s) to 15 do
    Text := Text + ' #';

  // Text := Text.Trim;
end;

procedure TGetCheckF.plblLineCorrosionGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  (Sender as TppLabel).Visible := qryDetail_ItemLineCorrosion.AsBoolean
end;

procedure TGetCheckF.pdbtxtLeftCheckDateBoxGetText(Sender: TObject;
var Text: string);
var
  s: string;
  i: Integer;
begin
  inherited;
  if Text.Trim <> EmptyStr then
  begin
    s := Text;
    if ((Sender AS TppDBText).DataField = 'CheckDate') AND
      (LeftStr(s, 2) <> '13') and (LeftStr(s, 2) <> '14') then
      s := '13' + s;
    Text := EmptyStr;
    for i := Length(s) downto 1 do
      if s[i] in ['0' .. '9'] then
        Text := Text + ' ' + s[i];

    for i := Length(s) to 15 do
      Text := Text + ' #';
  end;
end;

procedure TGetCheckF.ppLabel24GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' تعداد  ' + num2alphabet(qryDetail_Item.RecordCount) +
    '  فقره چك / اوراق بهادار  ';
end;

procedure TGetCheckF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TGetCheckF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'تعداد  ' + num2alphabet(qryDetail_Item.RecordCount) +
    '  فقره چك / اوراق بهادار  ';
end;

procedure TGetCheckF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := num2alphabet(Round(qryMaster_Forms.FieldByName('Amount').AsCurrency));

end;

procedure TGetCheckF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'بابت ' + qryMaster_Forms.FieldByName('FomNote').AsString + #10 +
    'واگذار گرديد.‏';
end;

procedure TGetCheckF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' بابت:‏ ' + qryMaster_Forms.FieldByName('FomNote').AsString + #10 +
    'تحويل گرديد.‏';
end;

procedure TGetCheckF.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := num2alphabet(Round(qryMaster_Forms.FieldByName('Amount').AsCurrency))
    + Currency_String;
end;

procedure TGetCheckF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' بابت: ‏' + qryMaster_Forms.FieldByName('FomNote').AsString + #10 +
    ' پرداخت گردد. ‏'
end;

procedure TGetCheckF.qryMaster_FormsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryDetail_Item.State in dseditmodes then
    qryDetail_Item.Cancel;
end;

procedure TGetCheckF.SaveChecks;
var
  i: Integer;
begin
  for i := 0 to qryDetail_Item.FieldCount - 1 do
    if qryDetail_Item.CanModify and
      not(pfinkey in qryDetail_Item.Fields[i].ProviderFlags) and
      not(qryDetail_Item.Fields[i].ReadOnly) then
      lastCheck[i] := qryDetail_Item.Fields[i].AsVariant;
  actPastArticle.Visible := True;
end;

procedure TGetCheckF.LoadChecks;
var
  i: Integer;
begin
  for i := 0 to qryDetail_Item.FieldCount - 1 do
    if qryDetail_Item.CanModify and
      not(pfinkey in qryDetail_Item.Fields[i].ProviderFlags) and
      not(qryDetail_Item.Fields[i].ReadOnly) then
      if Trim(VarToStr(lastCheck[i])) <> '' then
        qryDetail_Item.Fields[i].Value := lastCheck[i];
  qryDetail_Item.FieldByName('FormID').AsInteger :=
    qryMaster_Forms.FieldByName('FormID').AsInteger;

end;

procedure TGetCheckF.actCalcCheckExecute(Sender: TObject);
begin
  inherited;
  CheckCalcF.ShowCalcF(qryMaster_Forms, qryDetail_Item);
end;

procedure TGetCheckF.actCallOtherNationalCodeExecute(Sender: TObject);
begin
  inherited;
  mdiMainf.actCallOtherNationalCode.Execute
end;

procedure TGetCheckF.actCopyArticleExecute(Sender: TObject);
begin
  inherited;
  SaveChecks;
end;

procedure TGetCheckF.actPastArticleExecute(Sender: TObject);
begin
  inherited;
  if not(qryMaster_Forms.State in dseditmodes) then
    exit;
  if not(qryDetail_Item.State in dseditmodes) then
    qryDetail_Item.Insert;
  LoadChecks;
  MyFields;
end;

// procedure TGetCheckF.ShowForm(CofferId: int64; CustId: int64);
// begin
// DataSetDelete1_.Visible := not IsFlowFroms(1, FormType);
// with GetCheckF.qryMaster_Forms do
// begin
// if GetCheckF.canshow then
// begin
// Active := False;
// Parameters.ParamByName('Cust').Value := CustId;
// Active := True;
// end; // if
// if not Locate('FormId', CofferId, []) then
// begin
// Warn('هيچ اطلاعاتي براي نمايش وجود ندارد.‏');
// GetCheckF.Close;
// end; // if
// end; // with
// HighLightRequiredFields(Self);
// end;

procedure TGetCheckF.qryDetail_ItemAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TGetCheckF.DeleteCheck;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM FormItems WHERE FormItemID = ' + IntToStr(ItemID);
    SQL.Add('and ServerID = ' + qryDetail_Item.FieldByName('ServerID')
      .AsString);
    SQL.Add('and YearID = ' + qryDetail_Item.FieldByName('YearID').AsString);
    ExecSQL;
  end; // with

end;

procedure TGetCheckF.actDeleteExecute(Sender: TObject);
var
  i: Integer;
  ID: Integer;
  deletedCount: Integer;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 1 then
  begin
    if get_response('آيا براي حذف ' + IntToStr(DBGrid1.SelectedRows.Count) +
      'انتخاب مطمئن هستيد؟') = mrYes then
    begin
      deletedCount := 0;
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        qryDetail_Item.GotoBookmark((DBGrid1.SelectedRows[i]));
        ID := qryDetail_Item.FieldByName('FormItemID').AsInteger;
        DeleteCheck(ID);
        inc(deletedCount);
      end; // for
      qryDetail_Item.Active := False;
      qryDetail_Item.Active := True;
      Warn(IntToStr(deletedCount) + ' چك با موفقيت حذف شد. ');
    end;
    // if for get_response
  end
  else
    DataSetDelete1.Execute;

end;

procedure TGetCheckF.actDetail_ViewFileFExecute(Sender: TObject);
// var
// ts: TStringList;
// i, k: Integer;
// b: Boolean;
// s: string;
begin
  inherited;
  AddpopViewFile(qryDetail_Itemchk_ExistAttachments.AsString,
    GetDetailKeyID(qryMaster_Forms, qryDetail_ItemFormItemID.AsString),
    Caption);
  // with DMf.qryTmpTmp do
  // begin
  // Active := False;
  // SQL.Text := 'SELECT FormTypes.FormCaption';
  // SQL.Add('FROM FormTypes INNER JOIN');
  // SQL.Add('Forms ON FormTypes.FormType = Forms.FormType INNER JOIN');
  // SQL.Add('FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID');
  // SQL.Add('= FormItems.YearID');
  // SQL.Add('WHERE (LTRIM(STR(Forms.YearID)) + ''_'' + LTRIM(STR(Forms.ServerID)) + ''_'' + LTRIM(STR(Forms.FormID)) + ''_'' + LTRIM');
  // SQL.Add('(STR(FormItems.FormItemID)) = :FormItemID1 )');
  // SQL.Add('OR (LTRIM(STR(Forms.YearID)) + ''_'' + LTRIM(STR(Forms.ServerID)) + ''_'' + LTRIM(STR(Forms.FormID)) + ''_'' + LTRIM');
  // SQL.Add('(STR(ISNULL(FormItems.preFormItemID,0))) = :FormItemID2 )');
  //
  // s := 'پيوست و اسكن  ';
  // popViewFile.Items.Clear;
  // popViewFile.Items.Add(NewItem(s + Caption, 0, False, True, mnuViewFileClick,
  // 0, 'mnuViewFile'));
  // k := 0;
  // try
  // ts := TStringList.Create;
  // ts.Text := StringReplace(qryDetail_Itemchk_ExistAttachments.AsString, ',',
  // #13, [rfReplaceAll]);
  // for i := 0 to ts.Count - 1 do
  // begin
  // b := (ViewFileF.Enter(ts[i], 'GetCheckF', True, True)) and
  // (GetDetailKeyID <> ts[i]);
  // if b then
  // begin
  // inc(k);
  // Active := False;
  // Parameters.ParamByName('FormItemID1').Value := ts[i];
  // Parameters.ParamByName('FormItemID2').Value := ts[i];
  // Active := True;
  // popViewFile.Items.Add(NewItem(s + Fields[0].AsString, 0, False, True,
  // mnuViewFile1Click, 0, 'mnuViewFile' + IntToStr(i)));
  // popViewFile.Items[k].Hint := ts[i];
  // end;
  // end;
  // finally
  // ts.Free;
  // Active := False;
  // end;
  // end;
  //
  // popViewFile.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGetCheckF.qryDetail_ItemAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
  DataSetEdit1.Execute;
end;

procedure TGetCheckF.Enter(Form_Type: Integer; ShowFilter: Boolean = True;
CashCheckFormID: Integer = 0; GuaranteesFormID: Integer = 0);
begin
  CallFromPaymentExpence := CashCheckFormID > 0;
  CreateMDIForm3(ShowFilter, TGetCheckF, GetCheckF, mdiMainf, Form_Type);
  GetCheckF.CashCheckFormID := CashCheckFormID;
  GetCheckF.GuaranteesFormID := GuaranteesFormID;
end;

function TGetCheckF.ShowWarning(DataSet: TDataSet): Boolean;
var
  i: Integer;
  aControl: TWinControl;
begin
  aControl := Screen.ActiveControl;
  Result := True;
  for i := 0 to DataSet.FieldCount - 1 do
    if DataSet.Fields[i].Required then
      if DataSet.Fields[i].IsNull then
      begin
        lblWarning.Caption := DataSet.Fields[i].DisplayName + ' وارد نشده است ';
        DataSet.Fields[i].FocusControl;
        aControl := Screen.ActiveControl;
        if aControl <> nil then
          FlashAControl(aControl);
        Result := False;
        Break;
      end
      else
      begin
        if (DataSet.Fields[i].DataType = ftString) or
          (DataSet.Fields[i].DataType = ftwideString) then
          if DataSet.Fields[i].AsString = '' then
          begin
            lblWarning.Caption := DataSet.Fields[i].DisplayName +
              ' وارد نشده است ';
            DataSet.Fields[i].FocusControl;
            aControl := Screen.ActiveControl;
            if aControl <> nil then
              FlashAControl(aControl);
            Result := False;
            Break;
          end; // if
      end; // if

  if not Result then
  begin
    zBall.Title := 'اخطار!';
    zBall.Prompt.Text := DataSet.Fields[i].DisplayName + ' را وارد كنيد.‏';
    zBall.Show(aControl);
  end; // if

  pnlWarning.Visible := not Result;
  imgWarning.Visible := Result;
  with tmrWarning do
  begin
    Enabled := False;
    Interval := 400;
    Enabled := True;
  end; // with
end;

procedure TGetCheckF.tmrWarningOnTimer(Sender: TObject);
begin
  if pnlWarning.Visible then
    imgWarning.Visible := not imgWarning.Visible
end;

procedure TGetCheckF.StopWarn;
begin
  tmrWarning.Enabled := False;
  imgWarning.Visible := False;
  pnlWarning.Visible := False;
end;

procedure TGetCheckF.FormActivate(Sender: TObject);
begin
  inherited;
  if (canshow) and (CustomerID = 0) then
    Close;
end;

procedure TGetCheckF.qryMaster_FormsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  StopWarn;
end;

procedure TGetCheckF.qryMaster_FormsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  WorkFlowAfterDelete(qryMaster_Forms);
  qryAllForms.Delete;
end;

procedure TGetCheckF.qryAllFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    qryMaster_Forms.DisableControls;
    qryDetail_Item.DisableControls;
    // // ------------------------------ ADD NEW -------------------
    IF qryInitQry.FieldByName('Customer1Active').AsInteger = 1 THEN
      qryCustActive(qryCustomer1, DataSet.FieldByName('CustomerID1').AsInteger);

    IF qryInitQry.FieldByName('Customer2Active').AsInteger = 1 THEN
      qryCustActive(qryCustomer2, DataSet.FieldByName('CustomerID2').AsInteger);

    IF qryInitQry.FieldByName('Customer3Active').AsInteger = 1 THEN
      qryCustActive(qryCustomer3, DataSet.FieldByName('CustomerID3').AsInteger);

    IF qryInitQry.FieldByName('Customer4Active').AsInteger = 1 THEN
      qryCustActive(qryCustomer4, DataSet.FieldByName('CustomerID4').AsInteger);

    //
    // // ------------------------------ ADD NEW -------------------

    with qryMaster_Forms do
    begin
      Active := False;
      Parameters.ParamByName('FormID').Value := qryAllFormsFormID.AsInteger;
      Parameters.ParamByName('ServerID').Value := qryAllFormsServerID.AsInteger;
      Parameters.ParamByName('YearID').Value := qryAllFormsYearID.AsInteger;
      Active := True;
    end;
  finally
    qryMaster_Forms.EnableControls;
    qryDetail_Item.EnableControls;
  end;

end;

procedure TGetCheckF.qryDetail_ItemAfterCancel(DataSet: TDataSet);
begin
  inherited;
  StopWarn;
end;

procedure TGetCheckF.ChooseDiskMeliClick(Sender: TObject);
var
  s: String;
begin
  inherited;
  // if not CheckRequiredFields(qryMaster_Forms) then Exit;
  if qryMaster_Forms.State in dseditmodes then
    qryMaster_Forms.Post;
  if (canFilter) And (qryMaster_Forms.FieldByName('CustomerID1').AsString = '')
  then
    exit;
  s := IfThen(canFilter, ' AND Forms.CustomerID1 = ' +
    qryMaster_Forms.FieldByName('CustomerID2').AsString, '');
  if ChooseDiskF.SelectChecks(qryInitQry.FieldByName('RecallFormTypes')
    .AsString, s, FormType, qryMaster_Forms) then
  begin
    qryDetail_Item.Requery;
    qryMaster_Forms.Edit;
    qryMaster_Forms.Post;
  end; // if
end;

procedure TGetCheckF.spdSelectCheckClick(Sender: TObject);
begin
  inherited;
  if not(qryMaster_Forms.State in [dsInsert]) then

    qryMaster_FormsBeforeEdit(qryMaster_Forms);
  PopChoose.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGetCheckF.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.SpeedButton17Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  GetSearchCode((Sender as TControl).Tag);
end;

procedure TGetCheckF.ppLblItemAmountTextGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := num2alphabet
    (StrToInt64(CurrToStr(qryDetail_Item.FieldByName('ItemAmount').AsCurrency)))
    + ' ' + Currency_String + IfThen(Miladi_ValiDate_Date_Check, 'Only',
    '##') + '‏'
end;

procedure TGetCheckF.actPrintCheckExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('PrintLevelID'), qryMaster_Forms)
  then
    Abort;
  For i := 0 to PopChecks4Print.Items.Count - 1 do
    if PopChecks4Print.Items[i].Tag = qryMaster_Forms.FieldByName('CustomerID1')
      .AsInteger then
    begin
      PopChecks4Print.Items[i].Default := True;
    end;
  PopChecks4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGetCheckF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  ppDBPipeline2.MasterDataPipeline := nil;
  ppDBPipeline2.RangeBegin := rbCurrentRecord;
  ppDBPipeline2.RangeEnd := reCurrentRecord;

  ppBDEPipeline1.RangeBegin := rbCurrentRecord;
  ppBDEPipeline1.RangeEnd := reCurrentRecord;

  MyFileName := (Sender as TMenuItem).Hint;
  if MyFileName <> '' then
  begin
    InitReportFile(ppRptChecks4Print, MyFileName, True);
    exit;
  end;

  with ppRptChecks4Print do
  begin
    MyFileName := 'GetCheckDefault.rtm';
    Template.FileName := GetReportFileWithPath(MyFileName);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + MyFileName + ' يافت نشد.!‏');
      InitReportISDEMO(ppRptChecks4Print);
    finally
      AutoState__Change(qryInitQry, qryMaster_Forms);
    end;
    // try
  end; // with
  With qry_RptChecks do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM RptChecks WHERE RptCheckNo=' +
      IntToStr((Sender as TMenuItem).Tag);
  end; // With
  ppLblHavalehCardHide.Visible := mnuCheck.Checked;
  ppRptChecks4Print.Print;
end;

procedure TGetCheckF.ppRptChecks4PrintBeforePrint(Sender: TObject);
begin
  inherited;
  With qry_RptChecks do
  begin
    Active := True;
    if MyFileName <> 'GetCheckDefault.rtm' then
      exit;
    ppRptChecks4Print.PrinterSetup.PaperHeight := FieldByName('HeightPaper')
      .AsInteger;
    ppRptChecks4Print.PrinterSetup.PaperWidth := FieldByName('WidthPaper')
      .AsInteger;

    ppDBTxtCheckDate.Left := FieldByName('LeftCheckDate').AsInteger;
    ppDBTxtCheckDate.Top := FieldByName('TopCheckDate').AsInteger;
    ppDBTxtCheckDate.Width := FieldByName('WidthCheckDate').AsInteger;

    ppLblItemAmountText.Left := FieldByName('LeftValueText').AsInteger;
    ppLblItemAmountText.Top := FieldByName('TopValueText').AsInteger;
    ppLblItemAmountText.Width := FieldByName('WidthValueText').AsInteger;

    ppDBTxtItemAmount.Left := FieldByName('LeftValueNum').AsInteger;
    ppDBTxtItemAmount.Top := FieldByName('TopValueNum').AsInteger;
    ppDBTxtItemAmount.Width := FieldByName('WidthValueNum').AsInteger;

    ppDBTxtItemAmount2.Left := FieldByName('LeftValueNum').AsInteger;
    ppDBTxtItemAmount2.Top := FieldByName('TopValueNum').AsInteger;
    ppDBTxtItemAmount2.Width := FieldByName('WidthValueNum').AsInteger;

    if plblItemAmountSplit <> nil then
    begin
      plblItemAmountSplit.Left := FieldByName('LeftValueNum').AsInteger;
      plblItemAmountSplit.Top := FieldByName('TopValueNum').AsInteger;
      plblItemAmountSplit.Width := FieldByName('WidthValueNum').AsInteger;
    end
    else
      Warn2('GetCheckDefault.rtm قدیمی است');

    if pdbtxtLeftCheckDateBox <> nil then
    begin
      pdbtxtLeftCheckDateBox.Left := FieldByName('LeftCheckDateBox').AsInteger;
      pdbtxtLeftCheckDateBox.Top := FieldByName('TopCheckDateBox').AsInteger;
      pdbtxtLeftCheckDateBox.Width := FieldByName('WidthCheckDateBox')
        .AsInteger;
    end
    else
      Warn2('GetCheckDefault.rtm قدیمی است');

    if pdbtxtValueNumbox <> nil then
    begin
      pdbtxtValueNumbox.Left := FieldByName('LeftValueNumbox').AsInteger;
      pdbtxtValueNumbox.Top := FieldByName('TopValueNumbox').AsInteger;
      pdbtxtValueNumbox.Width := FieldByName('WidthValueNumbox').AsInteger;
    end;

    if plblLineCorrosion <> nil then
    begin
      plblLineCorrosion.Left := FieldByName('LeftLineCorrosion').AsInteger;
      plblLineCorrosion.Top := FieldByName('TopLineCorrosion').AsInteger;
      plblLineCorrosion.Width := FieldByName('WidthLineCorrosion').AsInteger;

    end;

    ppDBTxtItemAmount.AutoSize := FieldByName('LeftValueNumbox').AsInteger = 0;

    ppDBMemHavalehCard.Left := FieldByName('LeftHavalehCard').AsInteger;
    ppDBMemHavalehCard.Top := FieldByName('TopHavalehCard').AsInteger;
    ppDBMemHavalehCard.Width := FieldByName('WidthHavalehCard').AsInteger;

    ppLblHavalehCardHide.Left := FieldByName('LeftHavalehCardHide').AsInteger;
    ppLblHavalehCardHide.Top := FieldByName('TopHavalehCardHide').AsInteger;
    ppLblHavalehCardHide.Width := FieldByName('WidthHavalehCardHide').AsInteger;

    ppLblDateString.Left := FieldByName('LeftDateString').AsInteger;
    ppLblDateString.Top := FieldByName('TopDateString').AsInteger;
    ppLblDateString.Width := FieldByName('WidthDateString').AsInteger;

    ppDBTxtAmountArz.Left := FieldByName('LeftAmountArz').AsInteger;
    ppDBTxtAmountArz.Top := FieldByName('TopAmountArz').AsInteger;
    ppDBTxtAmountArz.Width := FieldByName('WidthAmountArz').AsInteger;

    if pdbtxt_NationalIDCustomer1 <> nil then
    begin
      pdbtxt_NationalIDCustomer1.Left := FieldByName('LeftNationalID1')
        .AsInteger;
      pdbtxt_NationalIDCustomer1.Top := FieldByName('TopNationalID1').AsInteger;
      pdbtxt_NationalIDCustomer1.Width := FieldByName('WidthNationalID1')
        .AsInteger;

      pdbtxt_NationalIDCustomer2.Left := FieldByName('LeftNationalID2')
        .AsInteger;
      pdbtxt_NationalIDCustomer2.Top := FieldByName('TopNationalID2').AsInteger;
      pdbtxt_NationalIDCustomer2.Width := FieldByName('WidthNationalID2')
        .AsInteger;
    end
    else
      Warn2('GetCheckDefault.rtm قدیمی است');

  end
  // With
end;

procedure TGetCheckF.MakeMenuItem;
var
  MenuItem: array of TMenuItem;
  i: Integer;
begin
  With qry_RptChecks do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM RptChecks '; // WHERE RptCheckNo= 1
    Active := True;
    SetLength(MenuItem, RecordCount);
    i := 0;
    while not Eof do
    begin
      MenuItem[i] := NewItem(FieldByName('RptCheckName').AsString,
        TextToShortCut(''), False, True, AllClikPopClick, 0,
        'Item' + FieldByName('RptCheckNo').AsString);
      MenuItem[i].Tag := FieldByName('RptCheckNo').AsInteger;
      MenuItem[i].Hint := FieldByName('ReportFileName').AsString;
      inc(i);
      Next;
    end; // while
  end; // With
  PopChecks4Print := NewPopupMenu(Self, 'MyMenu', paRight, True, MenuItem);
  mnuCheck := TMenuItem.Create(PopChecks4Print);
  mnuCheck.Caption := mnCheck.Caption;
  mnuCheck.OnClick := mnCheckClick;
  mnuCheck.Checked := True;
  PopChecks4Print.Items.Add(mnuCheck);
end;

procedure TGetCheckF.mnCheckClick(Sender: TObject);
begin
  inherited;
  mnuCheck.Checked := not mnuCheck.Checked;
end;

procedure TGetCheckF.mnuN15Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetail_Item);
end;

// procedure TGetCheckF.mnuViewFile1Click(Sender: TObject);
// begin
// inherited;
// ViewFileF.Enter((Sender as TMenuItem).Hint, 'GetCheckF', True);
// end;
//
// procedure TGetCheckF.mnuViewFileClick(Sender: TObject);
// begin
// inherited;
// ViewFileF.Enter(GetDetailKeyID, 'GetCheckF', True);
// end;

procedure TGetCheckF.ppDBMemHavalehCardGetMemo(Sender: TObject;
aLines: TStrings);
begin
  inherited;
  aLines.Text := Chr($202B) + qryMaster_Forms.FieldByName('_Customer2Name')
    .AsString + ' - ' + qryDetail_Item.FieldByName('ItemNote').AsString + '‏';
end;

procedure TGetCheckF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TGetCheckF.ppLblAmountGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := CurrToStrF(qryMaster_Forms.FieldByName('Amount').AsCurrency,
    ffCurrency, 0)
end;

procedure TGetCheckF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TGetCheckF.ppLBLsumGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := num2alphabet(Round(qryMaster_Forms.FieldByName('Amount').AsCurrency));
end;

procedure TGetCheckF.ppLblTiChekCountGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := num2alphabet(qryDetail_Item.RecordCount) +
    '  فقره چك / اوراق بهادار  ';
end;

procedure TGetCheckF.ppLblCompanyDescGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('CompanyDesc', 'سهامي خاص')
end;

procedure TGetCheckF.ppDBMemHavalehCardGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  case qryInitQry.FieldByName('CheckFor_4Print').AsInteger of
    1, 2:
      Text := qryDetail_Item.FieldByName('CheckFor').AsString;
    4:
      Text := Trim(qryDetail_Item.FieldByName('ItemNote').AsString) + ' ' +
        Trim(Text);
  else
    Text := Trim(Text) + ' ' +
      Trim(qryDetail_Item.FieldByName('ItemNote').AsString)
  end;
  Text := Trim(Text) + '##' + #254;
  // if qryInitQry.FieldByName('CheckFor_4Print').AsInteger in [1, 2] then
  // else
  // Text := Trim(Text) + ' ' +
  // Trim(qryDetail_Item.FieldByName('ItemNote').AsString)
end;

procedure TGetCheckF.ppDBTxtCheckDateGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Text.Trim <> EmptyStr then
    if (LeftStr(Text, 2) <> '13') and (LeftStr(Text, 2) <> '14') then
      Text := '13' + Text;
end;

procedure TGetCheckF.ppDBTxtNameToNoteGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  if (Length(Text) <= 1) then
    Text := qryDetail_Item.FieldByName('ItemNote').AsString
end;

procedure TGetCheckF.logoPrint(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath('logo.bmp');
  if (FileExists(s)) then
  begin
    (Sender as TppImage).Picture.LoadFromFile(s);
  end;
end;

procedure TGetCheckF.CmbALLGetText(Sender: TField; var Text: String;
DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TGetCheckF.CmbALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TGetCheckF.initCombos;
var
  How2DisplayArzTypeID: Integer;
begin
  cmbPayTypes.Clear;
  cmbTopicTypes.Clear;
  cmbTopicTypesI.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT LookUpID,Name FROM LookUps';
    SQL.Add('WHERE (Kind = ' + IntToStr(qryInitQry.FieldByName('FormPaySerial')
      .AsInteger) + ')and (Kind <>0) ORDER BY Name');
    Active := True;
    while not Eof do
    begin
      cmbPayTypes.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
    SQL.Text := 'SELECT LookUpID,Name FROM LookUps';
    SQL.Add('WHERE (Kind = ' +
      IntToStr(qryInitQry.FieldByName('FormTopicSerial').AsInteger) +
      ')and (Kind <>0) ORDER BY Name');
    Active := True;
    while not Eof do
    begin
      cmbTopicTypes.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      cmbTopicTypesI.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    How2DisplayArzTypeID := qryInitQry.FieldByName('How2DisplayArzTypeID')
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
        Next;
      end;
      edtArzRate.ReadOnly := How2DisplayArzTypeID <> 1;
      edtItemAmount.ReadOnly := How2DisplayArzTypeID = 2;
    end;
    Active := False;
  end; // with
end;

procedure TGetCheckF.logoDrawCommandCreate(Sender, aDrawCommand: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath((Sender as TppImage).name + '.bmp');
  if (FileExists(s)) then
  begin
    (Sender as TppImage).Picture.LoadFromFile(s);
  end;
end;

procedure TGetCheckF.edtItemAmountChange(Sender: TObject);
begin
  inherited;
  if edtItemAmount.Text <> '' then
    lblValue.Caption := num2alphabet(StrToInt64(RemoveComma(edtItemAmount.Text))
      ) + Currency_String;
end;

procedure TGetCheckF.ppLblFormCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TGetCheckF.ppMemo1Print(Sender: TObject);
var
  txt: String;
begin
  inherited;
  txt := (Sender as TppMemo).Text;
  txt := StringReplace(txt, 'ششمم', qryDetail_ItemCheckNumber.AsString, []);
  txt := StringReplace(txt, 'مموو', qryDetail_ItemCheckDate.AsString, []);
  txt := StringReplace(txt, 'ممبب', qryDetail_ItemItemAmount.AsString, []);
  txt := StringReplace(txt, 'بباا', qryDetail_ItemItemNote.AsString, []);
  (Sender as TppMemo).Text := txt;
end;

procedure TGetCheckF.ppLblvar_glb_CurrentDateGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := var_glb_CurrentDate;
end;

procedure TGetCheckF.ppLblCompanyAddressGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Address', '')
end;

procedure TGetCheckF.ppLblWebSiteGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('WebSite', '')
end;

procedure TGetCheckF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TGetCheckF.qryMaster_FormsFormStateGetText(Sender: TField;
var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetFormState(Sender.AsInteger)
end;

procedure TGetCheckF.EdtFormNumberEnter(Sender: TObject);
begin
  inherited;
  if (Sender as TDBEdit).ReadOnly then
    Warn('شما مجاز به ويرايش  شماره و تاريخ نمي باشيد');

end;

procedure TGetCheckF.ppLblDateStringGetText(Sender: TObject; var Text: String);
begin
  inherited;
  if Trim(qryDetail_Item.FieldByName('CheckDate').AsString) = '' then
  begin
    Text := '';
    exit;
  end;
  Text := ShamsiDate2String(qryDetail_Item.FieldByName('CheckDate').AsString)
end;

procedure TGetCheckF.ppLblTopCheckGetText(Sender: TObject; var Text: String);
begin
  inherited;
  if TopCheck = 0 then
    Text := ' '
  else
    Text := lblTopCheck.Caption + '‏ روزه';
end;

procedure TGetCheckF.qryMaster_FormsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TGetCheckF.qryDetail_ItemBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  // if not     then Abort;
  OkDeleteEditCheck(qryDetail_Item);
  if not AllStateControls(qryMaster_Forms, qryDetail_Item, qryInitQry, 'Form')
  then
    Abort;
end;

procedure TGetCheckF.qryDetail_ItemBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If not ADDItemChecked(qryMaster_Forms) then
    Abort;
  GetMaxCheckNumber;
end;

procedure TGetCheckF.GetMaxCheckNumber;
begin
  if InsertCheckNumberAct then
    With qryDetail_Item do
      try
        DisableControls;
        First;
        MaxCheckNumber := qryDetail_ItemCheckNumber.AsString;
        while not Eof do
        begin
          if qryDetail_ItemCheckNumber.AsString > MaxCheckNumber then
            MaxCheckNumber := qryDetail_ItemCheckNumber.AsString;
          Next;
        end;
        if MaxCheckNumber = EmptyStr then
          MaxCheckNumber := '0';

      finally
        EnableControls;
      end;
end;

procedure TGetCheckF.qryMaster_FormsBeforeEdit(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  if ChkFlowForms(qryMaster_Forms) then
    Abort;
  if not CheckDay4Edit(qryInitQry, qryMaster_Forms, 1) then
    Abort;
  if not CheckUserlevel(qryInitQry.FieldByName('EditLevelID'), qryMaster_Forms)
  then
    Abort;
  if not AllStateControls(qryMaster_Forms, qryDetail_Item, qryInitQry, 'Form')
  then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  // CheckItems;
  if (qryInitQry.FieldByName('Customer1UseInRecall').AsInteger = 1) and
    (qryDetail_Item.RecordCount > 0) then
    qryMaster_Forms.FieldByName('CustomerID1').ReadOnly := True;

  b := (qryMaster_Forms.FieldByName('AidFormType').AsInteger > 0) and
    (qryMaster_Forms.FieldByName('AidFormType').AsInteger <> FormType);
  qryMaster_FormsAmount.ReadOnly := b;
  qryMaster_FormsCustomerID2.ReadOnly := b;
  qryDetail_ItemItemAmount.ReadOnly := b;
  qryDetail_ItemCustomerID2.ReadOnly := b;

  CHKPriorityFormDate(qryMaster_Forms, qryInitQry)

end;

// procedure TGetCheckF.INSERT_CustIDTemp(Sender: TField; qryCustomer: TADOQuery);
// var
// row: Integer;
// begin
// try
// DMf.adcBsell.Execute
// (Format('INSERT INTO CustIDTemp(CustID, FormType, UserID)' +
// 'VALUES(%d,%d,%d)', [Sender.AsInteger, FormType, user.ID]), row);
// if row > 0 then
// begin
// QryCustScroll(qryCustomer);
// RefreshLookupList(TADOQuery(Sender.DataSet));
// end;
// except
// on E: Exception do
// begin
// add2log('I>>>' + E.Message);
// Warn2('I>>>' + E.Message);
// end;
// end;
// end;

procedure TGetCheckF.qryMaster_FormsCustomerID1Change(Sender: TField);
var
  T: TThread;
begin
  inherited;
  IF qryInitQry.FieldByName('Customer1Active').AsInteger = 1 THEN
    qryCustActive(qryCustomer1, Sender.AsInteger);

  // for  Change   PersonID
  qryMaster_FormsFormType.AsInteger := qryMaster_FormsFormType.AsInteger;
  // for  Change   PersonID
  // INSERT_CustIDTemp(Sender, qryCustomer1);

  // pnlAccountKind.Visible := qryMaster_Forms.FieldByName('_AccountKind')    .AsInteger > 0;
  pnlCheckFor_AccountKind_LineCorrosion.Visible := pnlCheckFor.Visible
  // or    pnlAccountKind.Visible
    ;
  lblReMainPerson.Visible := True;

  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      ReMainPersonPaymentCash4Thread(Sender, lblReMainPerson);
    end);

  T.FreeOnTerminate := True;

  T.Start;

  How2DisplayArzTypeID;

  Customer2ActiveOnDetailChange(Sender, qryInitQry, qryDetail_Item);

end;

procedure TGetCheckF.ReMainPersonPaymentCash4Thread(Sender: TField;
lblReMainPerson: TLabel);
begin
  lblReMainPerson.Visible := True;
  lblReMainPerson.Caption := 'در حال بررسی';
  lblReMainPerson.Caption := 'مانده=' +
    CurrToStrF(ReMainPersonPaymentCash((Sender as TField).Value,
    qryMaster_Forms.FieldByName('FormDate').AsString,
    [opt.DocType1, opt.DocType2, opt.DocType3, opt.DocType4]), ffCurrency, 0);
end;

procedure TGetCheckF.qryMaster_FormsCustomerID2Change(Sender: TField);
var
  T: TThread;
begin
  inherited;
  //ChkControlEntryCustInfo(qryMaster_Forms, lblWarning);
  IF qryInitQry.FieldByName('Customer2Active').AsInteger = 1 THEN
    qryCustActive(qryCustomer2, Sender.AsInteger);

  // for  Change   PersonID
  qryMaster_FormsFormType.AsInteger := qryMaster_FormsFormType.AsInteger;
  // for  Change   PersonID
  // INSERT_CustIDTemp(Sender, qryCustomer2);

  // lblRemainPerson2.Visible := True;
  // lblRemainPerson2.Caption := 'مانده=' +
  // CurrToStrF(ReMainPersonPaymentCash((Sender as TField).Value,
  // qryMaster_Forms.FieldByName('FormDate').AsString,
  // [opt.DocType1, opt.DocType2, opt.DocType3, opt.DocType4]), ffCurrency, 0);

  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      ReMainPersonPaymentCash4Thread(Sender, lblRemainPerson2);
    end);

  T.FreeOnTerminate := True;

  T.Start;

  Customer2ActiveOnDetailChange(Sender, qryInitQry, qryDetail_Item);

end;

procedure TGetCheckF.qryMaster_FormsCustomerID3Change(Sender: TField);
begin
  inherited;
  IF qryInitQry.FieldByName('Customer3Active').AsInteger = 1 THEN
    qryCustActive(qryCustomer3, Sender.AsInteger);

  // for  Change   PersonID
  qryMaster_FormsFormType.AsInteger := qryMaster_FormsFormType.AsInteger;
  // for  Change   PersonID
  // INSERT_CustIDTemp(Sender, qryCustomer3);
end;

procedure TGetCheckF.qryMaster_FormsCustomerID4Change(Sender: TField);
begin
  inherited;
  IF qryInitQry.FieldByName('Customer4Active').AsInteger = 1 THEN
    qryCustActive(qryCustomer4, Sender.AsInteger);

  // for  Change   PersonID
  qryMaster_FormsFormType.AsInteger := qryMaster_FormsFormType.AsInteger;
  // for  Change   PersonID
  // INSERT_CustIDTemp(Sender, qryCustomer3);

end;

procedure TGetCheckF.qryMaster_FormsDefaultDurationChange(Sender: TField);
begin
  inherited;
  qryMaster_FormsDefaultDate.AsString :=
    DefaultDateCalc(qryMaster_FormsDefaultDuration, qryMaster_FormsFormDate);

end;

procedure TGetCheckF.ppLblSumItemAmountGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := CurrToStrF(CalcSumFileds(qryDetail_Item, 'ItemAmount'),
    ffCurrency, 0);
end;

procedure TGetCheckF.ppLblSumItemAmount2alphabetGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := num2alphabet(Round(CalcSumFileds(qryDetail_Item, 'ItemAmount'))) +
    Currency_String
end;

procedure TGetCheckF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetail_Item);
end;

procedure TGetCheckF.actStateChangeExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('ChangeStateLevelID'),
    qryMaster_Forms) then
    Abort;
  StateChangeAction(qryMaster_Forms)
end;

procedure TGetCheckF.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(ADDKeyID(qryMaster_Forms) +
    qryMaster_FormsFormID.AsString, 'GetCheckF', True);
end;

procedure TGetCheckF.actWorkflowHistoryFExecute(Sender: TObject);
begin
  inherited;
  WorkflowHistoryF.Enter(FormType, qryMaster_FormsFormID.AsInteger,
    qryMaster_FormsYearID.AsInteger, qryMaster_FormsServerID.AsInteger)
end;

procedure TGetCheckF.ppLblState2ZeroDrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryMaster_Forms.FieldByName('FormState')
    .AsInteger = 10;
end;

procedure TGetCheckF.ppLblState2ZeroDrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryMaster_Forms.FieldByName('FormState')
    .AsInteger = 10;
end;

procedure TGetCheckF.ppLblState2ZeroGetText(Sender: TObject; var Text: String);
begin
  inherited;
  (Sender As TppLabel).Visible := qryMaster_Forms.FieldByName('FormState')
    .AsInteger = 10;
end;

procedure TGetCheckF.ppLblState2ZeroPrint(Sender: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryMaster_Forms.FieldByName('FormState')
    .AsInteger = 10;
end;

procedure TGetCheckF.ChooseDiskMelatClick(Sender: TObject);
var
  s: String;
begin
  inherited;
  // if not CheckRequiredFields(qryMaster_Forms) then Exit;
  if qryMaster_Forms.State in dseditmodes then
    qryMaster_Forms.Post;
  if (canFilter) And (qryMaster_Forms.FieldByName('CustomerID1').AsString = '')
  then
    exit;
  s := IfThen(canFilter, ' AND Forms.CustomerID1 = ' +
    qryMaster_Forms.FieldByName('CustomerID2').AsString, '');
  if ChooseDiskMelatF.SelectChecks(qryInitQry.FieldByName('RecallFormTypes')
    .AsString, s, qryMaster_Forms) then
  begin
    qryDetail_Item.Requery;
    qryMaster_Forms.Edit;
    qryMaster_Forms.Post;
  end; // if
end;

procedure TGetCheckF.actSearchReportExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.Show(ppReport1, 'check', Self)
end;

procedure TGetCheckF.ppLblNum2alphabetItemAmountGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := num2alphabet(Round(qryDetail_Item.FieldByName('ItemAmount')
    .AsCurrency))
end;

procedure TGetCheckF.ppLbl4AllStringReplaceGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := StringReplace(Text, 'تعدادچك',
    num2alphabet(qryDetail_Item.RecordCount) +
    IntToStr(qryDetail_Item.RecordCount), [rfReplaceAll]);
  Text := StringReplace(Text, 'شمارهحساب',
    Trim(qryMaster_Forms.FieldByName('_AccountNumber').AsString),
    [rfReplaceAll]);
  Text := StringReplace(Text, 'نامشركت', APPBank.CompanyName, [rfReplaceAll]);
end;

procedure TGetCheckF.DBEdit26KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton17.Click;
  end; // if

end;

procedure TGetCheckF.DBEdit28KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton16.Click;
end;

procedure TGetCheckF.DBEdit23KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton13.Click;
  end; // if
end;

procedure TGetCheckF.DBEdit27KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SpeedButton18.Click;
  end; // if
end;

procedure TGetCheckF.qryDetail_ItemItemNoteChange(Sender: TField);
begin
  inherited;

  case qryInitQry.FieldByName('CheckFor_4Print').AsInteger of
    2:
      qryDetail_Item.FieldByName('CheckFor').AsString :=
        qryMaster_Forms.FieldByName('_Customer2Name').AsString + ' ' +
        qryDetail_Item.FieldByName('ItemNote').AsString;
    4:
      qryDetail_Item.FieldByName('CheckFor').AsString :=
        qryDetail_Item.FieldByName('ItemNote').AsString + ' ' +
        qryMaster_Forms.FieldByName('_Customer2Name').AsString;
  else
  end;
  // if (qryInitQry.FieldByName('CheckFor_4Print').AsInteger = 2) then
  // qryDetail_Item.FieldByName('CheckFor').AsString :=
  // qryMaster_Forms.FieldByName('_Customer2Name').AsString + ' ' +
  // qryDetail_Item.FieldByName('ItemNote').AsString;
end;

procedure TGetCheckF.qryDetail_ItemProjectIDChange(Sender: TField);
begin
  inherited;
  // INSERT_CustIDTemp(Sender, qryProjects);
end;

procedure TGetCheckF.qryDetail_ItemTopicCodeChange(Sender: TField);
begin
  inherited;
  Sender.Tag := StrToInt64(Trim(Sender.AsString))
end;

procedure TGetCheckF.A_l_l_Click__Click(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  footer_ := Trim(qryInitQry.FieldByName('FooterSigns').AsString);

  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath((Sender as TMenuItem).Hint);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + (Sender as TMenuItem).Hint + ' نظر يافت نشد.!‏',
          mtInformation);
      // DeviceType:='Printer';
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      SetSendToBackShapeOnPrint(Self);
      RunPrint := True;
      Print;
    finally
      AutoState__Change(qryInitQry, qryMaster_Forms);
      RunPrint := False;

    end; // try
  end; // with

  // PopMuPrint.Items.Add();
end;

procedure TGetCheckF.BitBtn15MouseEnter(Sender: TObject);
begin
  inherited;
  if Sev_ <> nil then
    FreeAndNil(Sev_);
  Sev_ := SeverableF.ShowOnly(1);
end;

procedure TGetCheckF.BitBtn15MouseLeave(Sender: TObject);
begin
  inherited;
  FreeAndNil(Sev_);
end;

procedure TGetCheckF.qryMaster_FormsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  frmGetCheckPostOverallType1.EdtFormNumber.Text := EmptyStr;
  EdtFormNumber.OnEnter := EdtFormNumberEnter;
  if not CheckUserlevel(qryInitQry.FieldByName('ADDLevelID'), qryMaster_Forms)
  then
    Abort;
end;

procedure TGetCheckF.grpMasterAccountEnter(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('AccCodeLevelID'),
    qryMaster_Forms) then
    if getresponseShow then
      Panel2.SetFocus;
end;

procedure TGetCheckF.btnGetExcelClick(Sender: TObject);
begin
  inherited;
  qryMaster_Forms.Edit;
  GetExcelF.ShowImPortExcel(qryDetail_Item);
  FreeReservedCodes(DMf.adcBsell, 'Forms', '', IntToStr(FormType));
  FreeReservedCodes(DMf.adcBsell, 'FormItems', '', IntToStr(FormType));
end;

procedure TGetCheckF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGetCheckF.pdbtxtShamsi2MiladiCheckDateGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  Text := ShamsiDate2String(Text)
end;

procedure TGetCheckF.plblArzTypeGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := CmbArzTypeID.Text
end;

procedure TGetCheckF.plblCheckDateGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := DateToStr(Shamsi2Miladi(qryDetail_ItemCheckDate.AsString))
end;

procedure TGetCheckF.plblDateToWordGetText(Sender: TObject; var Text: string);
// var
// myDate : TDateTime;
// formattedDateTime : string;
// CheckDate:string;
begin
  inherited;
  // CheckDate:=qryDetail_ItemCheckDate.AsString;
  // myDate :=  EncodeDate(2000+StrToInt(MidStr(CheckDate,1,2)),
  // StrToInt(MidStr(CheckDate,4,2)),
  // StrToInt(MidStr(CheckDate,7,2)));
  // DateTimeToString(formattedDateTime, 'yyyy mmmm dddd ', myDate);
  // Text:=formattedDateTime;
  Text := ShamsiDate2String(qryDetail_Item.FieldByName('CheckDate').AsString)

end;

procedure TGetCheckF.plblItemAmountGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := ConvertToWords(qryDetail_ItemItemAmount.AsCurrency, False);
end;

procedure TGetCheckF.plblTopicTypesIGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := cmbTopicTypesI.Items
    [cmbTopicTypesI.Items.IndexOfObject
    (TObject(qryDetail_ItemTopicTypesI.AsInteger))];
end;

procedure TGetCheckF.ppDBCalcnum2alphabetGetText(Sender: TObject;
var Text: String);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure TGetCheckF.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  ppReport1.DataPipeline := ppDBPipeline1;
  if NAllRecords.Checked then
  begin
    ppDBPipeline1.RangeBegin := rbFirstRecord;
    ppDBPipeline1.RangeEnd := reLastRecord;

  end
  else
  begin
    ppDBPipeline1.RangeBegin := rbCurrentRecord;
    ppDBPipeline1.RangeEnd := reCurrentRecord;

  end;
  actFilter.Execute
end;

procedure TGetCheckF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMf.adcBsell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select ''' + APPBank.StartYear +
        ''',max(FormDate) from Forms WHERE FormType=' + IntToStr(FormType));
      AddItem(DMf.adcBsell, 'number', 'شماره', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '',
        'Select Min(FormNumber),max(FormNumber) from Forms WHERE FormType=' +
        IntToStr(FormType));
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TGetCheckF.UpdateList;
begin
  with qryAllForms Do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('NumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Active := True;
  end;
  with qryMaster_Forms Do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('NumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Active := True;
  end;
end;

procedure TGetCheckF.actPrintRecoverExecute(Sender: TObject);
var
  myDBText: TppDBText;
  i: Integer;
begin
  inherited;
  try
    for i := 0 to ComponentCount - 1 do
      if Components[i] is TppDBText then
      begin
        myDBText := TppDBText(Components[i]);
        if (myDBText.DataPipeline = nil) then
        begin
          if (qryMaster_Forms.FindField(myDBText.DataField) <> nil) then
            myDBText.DataPipeline := ppDBPipeline1
          else if (qryDetail_Item.FindField(myDBText.DataField) <> nil) then
            myDBText.DataPipeline := ppDBPipeline2;
        end;
      end;
  finally
    ppReport1.Template.Save;
    Warn('انجام شد', mtInformation);
  end;
  // SELECT     FormType, FormCaption, ReportFileName1
  // FROM         FormTypes
  // WHERE     (DisplayFormType = 1) AND (ReportFileName1 <> '')
  // union all
  // SELECT     FormType, FormCaption, ReportFileName2
  // FROM         FormTypes
  // WHERE     (DisplayFormType = 1) AND (ReportFileName2 <> '')

end;

procedure TGetCheckF.CalcCheckDate;
var
  Amount1: Integer;
  Date_: TDateTime;
begin
  if qryInitQry.FieldByName('CalcCheckDateOfLookUpsAmount1').AsInteger = 0 then
    exit;
  if cmbPayTypes.ItemIndex < 0 then
  begin
    Warn('نوع دريافت/پرداخت وارد نشده است');
    qryDetail_Item.Cancel;
    exit;
  end;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Amount1 FROM LookUps';
    SQL.Add('WHERE  LookUpID = ' +
      IntToStr(Integer(cmbPayTypes.Items.Objects[cmbPayTypes.ItemIndex])));
    Active := True;
    Amount1 := Fields[0].AsInteger;
    Active := False;
  end;
  Date_ := Shamsi2Miladi(qryMaster_Forms.FieldByName('FormDate').AsString);
  Date_ := IncDay(Date_, Amount1);
  qryDetail_Item.FieldByName('CheckDate').AsString :=
    Date1400Cnv(miladi2Shamsi(Date_));
end;

procedure TGetCheckF.qryMaster_FormsFormDateChange(Sender: TField);
begin
  inherited;
  // FormDateChange(qryMaster_Forms);
  if qryInitQry.FieldByName('CalcCheckDateOfLookUpsAmount1').AsInteger = 1 then
    With qryDetail_Item do
    begin
      if not Active then
        exit;
      First;
      while not Eof do
      begin
        Edit;
        CalcCheckDate;
        Next;
      end;
    end;
  IF qryInitQry.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 2
  then
  begin
    FreeReservedCodes(DMf.adcBsell, '', 'FormNumber', IntToStr(FormType));
    GetFormNumber(IntToStr(FormType), qryInitQry, qryMaster_Forms)
  end;

end;

procedure TGetCheckF.qryMaster_FormsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryDetail_Item.Active := False;
end;

procedure TGetCheckF.actInserNoteExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryDetail_ItemItemNote);
end;

procedure TGetCheckF.actInsertCheckForExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryDetail_ItemCheckFor);

end;

procedure TGetCheckF.actMakeDocumentShowExecute(Sender: TObject);
begin
  inherited;
  MakeDocumentShow(qryMaster_Forms, qryInitQry)
end;

procedure TGetCheckF.actMnuReciptsF1Click(Sender: TObject);
begin
  inherited;
  if (optSub.ActiveSell) and (mdiMainf.actSell.Visible) and
    (mdiMainf.actSell.Enabled) then
    mdiMainf.actSell.Execute

end;

procedure TGetCheckF.actRequestCashExecute(Sender: TObject);
begin
  inherited;
  RequestCashF.Enter(qryMaster_Forms)
end;

procedure TGetCheckF.actRowExecute(Sender: TObject);
begin
  inherited;
  With qryDetail_Item do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        Edit;
        qryDetail_ItemRow.AsInteger := RecNo;
        Post;
        Next;
      end;
    finally
      EnableControls;
    end;
end;

procedure TGetCheckF.actRptCofferExecute(Sender: TObject);
begin
  inherited;
  RptCofferF.Enter(qryMaster_Forms)
end;

procedure TGetCheckF.actSeverableExecute(Sender: TObject);
begin
  inherited;
  FreeAndNil(Sev_);
  if qryMaster_Forms.State in dseditmodes then
    qryDetail_ItemBeforePost(qryDetail_Item);
  // if qryDetail_Item.FieldByName('SeverableAmount').AsInteger=1 then
  CreateChildForm(TSeverableF, SeverableF, Self, 1, alNone);
end;

procedure TGetCheckF.actshowRelatedFExecute(Sender: TObject);
begin
  inherited;
  RelatedF.showRelatedF(qryDetail_Item, qryMaster_FormsCustomerID2.AsInteger);
end;

procedure TGetCheckF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryMaster_Forms, qryDetail_Item, smsForms, FormType, 0, 1);
end;

procedure TGetCheckF.actSmsSend_DExecute(Sender: TObject);
begin
  inherited;
  try
    qryDetail_Item.Filter := 'FormItemID = ' +
      qryDetail_ItemFormItemID.AsString;
    qryDetail_Item.Filtered := True;
    SmsSendQry(qryMaster_Forms, qryDetail_Item, smsForms, FormType, 0, 1);
  finally
    qryDetail_Item.Filtered := False;
  end;

end;

procedure TGetCheckF.DBEdit24KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton16.Click;

end;

procedure TGetCheckF.qryMaster_FormsSellsEmporiumChange(Sender: TField);
begin
  inherited;
  IF qryInitQry.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 1
  then
  begin
    FreeReservedCodes(DMf.adcBsell, '', 'FormNumber', IntToStr(FormType));
    GetFormNumber(IntToStr(FormType), qryInitQry, qryMaster_Forms);
  end;
end;

procedure TGetCheckF.edtItemAmountEnter(Sender: TObject);
begin
  inherited;
  aBigPanel.Visible := True;
  showBigNum(qryDetail_ItemItemAmount.AsCurrency, aBigPanel, horoofPanel);
end;

procedure TGetCheckF.edtItemAmountExit(Sender: TObject);
begin
  inherited;
  if aBigPanel.Visible then
    aBigPanel.Visible := False
end;

procedure TGetCheckF.edtItemAmountKeyUp(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  showBigNum(StrToCurrDef(RemoveComma(edtItemAmount.Text), 0), aBigPanel,
    horoofPanel);
end;

procedure TGetCheckF.actExcellExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1, actSmsSend)
end;

procedure TGetCheckF.actGetCheckPostOverallTypeFExecute(Sender: TObject);
begin
  inherited;
  GetCheckPostOverallTypeF.Enter(FormType, PostOverallTypeCall);
end;

procedure TGetCheckF.actGetExcelMasterDetailsExecute(Sender: TObject);
begin
  inherited;
  try
    getresponseShow := False;
    GetExcelMasterDetailsF.ShowImPortExcel(qryMaster_Forms, qryDetail_Item);
  finally
    getresponseShow := True;
    FreeReservedCodes(DMf.adcBsell, 'Forms', '', IntToStr(FormType));
    FreeReservedCodes(DMf.adcBsell, 'FormItems', '', IntToStr(FormType));
  end;

end;

procedure TGetCheckF.actCopyForm2Execute(Sender: TObject);

begin
  inherited;
  qryCopyRow(qryMaster_Forms, ['FormID', 'ServerID', 'YearID', 'FormNumber',
    'DocNo', 'DocDate'])
end;

procedure TGetCheckF.actCopyFormExecute(Sender: TObject);
// var
// FormID, ServerID, YearID: Integer;
// FormNumber: Integer;
// qryInsert: TADOQuery;
begin
  inherited;
  CopyForm(qryInitQry, qryMaster_Forms, qryDetail_Item, qryAllForms);

  // if not CheckUserlevel(qryInitQry.FieldByName('CopyFormLevelID'),
  // qryMaster_Forms) then
  // Abort;
  // if qryDetail_Item.IsEmpty then
  // exit;
  // if get_response('آيا براي كپي اين فرم در فرم جديد مطمئن هستيد؟') <> mrYes then
  // exit;
  // FormID := GetANewID(nil, IntToStr(FormType), 'Forms', 'FormID', nil, 1);
  // FormNumber := GetANewCode(IntToStr(FormType),
  // 'SELECT MAX(FormNumber) FROM Forms WHERE FormType = ' + IntToStr(FormType),
  // '', DMf.adcBsell);
  // With DMf.qryTmpTmp do
  // begin
  // Active := False;
  //
  // SQL.Text := 'INSERT INTO Forms';
  // SQL.Add('(FormID, FormNumber, FormDate, FormType, CustomerID1, CustomerID2,');
  // SQL.Add(' Amount, FomNote, FirstUser, LastUser,');
  // SQL.Add('DetailCode, CTopicCode, AidInfoNo, AidInfoDate, CTopicCode2,');
  // SQL.Add('CTopicCode3, CustomerName2, PayTypes, TopicTypes, ');
  // SQL.Add('FormState, ModifyDate,ReciptID, ManegerNote');
  //
  // SQL.Add(', SubAmount, Rate, SellsMethod, SellsEmporium, DefaultDate, CustomerID3, AidFormType, ArzTypeID,');
  // SQL.Add('ArzAmount, ArzRate, AidInfoNo2, AidInfoDate2, UserRegistrationDoc, DefaultDuration');
  //
  // SQL.Add(',YearID,ServerID)');
  // SQL.Add('SELECT ' + IntToStr(FormID) + ',' + IntToStr(FormNumber) + ',''' +
  // var_glb_CurrentDate + ''',');
  // SQL.Add(' FormType, CustomerID1, CustomerID2, Amount, FomNote,''' +
  // user.name + ''',''' + user.name + '''');
  // SQL.Add(',DetailCode, CTopicCode, AidInfoNo, AidInfoDate, CTopicCode2,');
  // SQL.Add('CTopicCode3, CustomerName2, PayTypes, TopicTypes, ');
  // SQL.Add('FormState, ModifyDate,ReciptID, ManegerNote');
  //
  // SQL.Add(', SubAmount, Rate, SellsMethod, SellsEmporium, DefaultDate, CustomerID3, AidFormType, ArzTypeID,');
  // SQL.Add('ArzAmount, ArzRate, AidInfoNo2, AidInfoDate2, UserRegistrationDoc, DefaultDuration');
  //
  // ServerID := opt.ServerID;
  // YearID := APPBank.Year;
  //
  // SQL.Add(',' + IntToStr(YearID) + ' AS YearID,' + IntToStr(ServerID) +
  // ' AS ServerID');
  // SQL.Add('FROM Forms');
  //
  // SQL.Add('WHERE (FormID = ' + qryMaster_FormsFormID.AsString + ')');
  // SQL.Add('AND (YearID = ' + qryMaster_FormsYearID.AsString + ')');
  // SQL.Add('AND (ServerID = ' + qryMaster_FormsServerID.AsString + ')');
  //
  // try
  // ExecSQL;
  // BigMessage(' در حال ثبت فرم...', 1);
  // Active := False;
  // except
  // Warn('اشكال در ثبت كردن فرم‌');
  // end; // try
  // end; // with
  // With qryDetail_Item do
  // begin
  // DisableControls;
  // First;
  // qryInsert := TADOQuery.Create(DMf);
  // qryInsert.Connection := DMf.adcBsell;
  // while not Eof do
  // begin
  // qryInsert.Active := False;
  // qryInsert.SQL.Text := 'INSERT INTO FormItems';
  // qryInsert.SQL.Add
  // (' (FormItemID, FormID, Row, CheckNumber, CheckDate, CheckType, ItemAmount, ItemNote, BankName, AccountNumber, City, CustomerID2, TopicCode,');
  // qryInsert.SQL.Add
  // ('DetailCode, CTopicCode, CTopicCode2,CTopicCode3, BudgetCode, ProjectID, preFormItemID, AidInfoNo, AidInfoDate, AccountNumberNew,');
  // qryInsert.SQL.Add
  // ('CheckState, CheckFor, AmountArz, CashWage, AccState, FirstUser, LastUser');
  //
  // qryInsert.SQL.Add
  // (', VAT, TopicTypesI, AccountNumberNew1, ArzTypeID, ArzAmount, ArzRate, DayDelay, AmountDelay, CheckCounter, ProductCode');
  //
  // qryInsert.SQL.Add(',YearID,ServerID)');
  //
  // qryInsert.SQL.Add('SELECT (SELECT max(FormItemID)+1 FROM FormItems ),' +
  // IntToStr(FormID) + ',');
  // qryInsert.SQL.Add
  // ('Row, CheckNumber, CheckDate, CheckType, ItemAmount, ItemNote, BankName, AccountNumber, City, CustomerID2, TopicCode,');
  // qryInsert.SQL.Add
  // ('DetailCode, CTopicCode, CTopicCode2,CTopicCode3, BudgetCode, ProjectID, preFormItemID, AidInfoNo, AidInfoDate, AccountNumberNew,');
  // qryInsert.SQL.Add('CheckState, CheckFor, AmountArz, CashWage, AccState,'''
  // + user.name + ''',''' + user.name + '''');
  //
  // qryInsert.SQL.Add
  // (', VAT, TopicTypesI, AccountNumberNew1, ArzTypeID, ArzAmount, ArzRate, DayDelay, AmountDelay, CheckCounter, ProductCode');
  //
  // qryInsert.SQL.Add(',YearID,ServerID');
  // qryInsert.SQL.Add('FROM FormItems');
  // qryInsert.SQL.Add('WHERE (FormItemID = ' + FieldByName('FormItemID')
  // .AsString + ')');
  // try
  // qryInsert.ExecSQL;
  // BigMessage(' در حال ثبت چكهاي فرم...', 0);
  // qryInsert.Active := False;
  // except
  // Warn('اشكال در ثبت چكهاي فرم‌');
  // end; // try
  // Next;
  // end; // while
  // EnableControls;
  // BigMessage(' فرم ' + Caption + '‌ با شماره فرم ' + IntToStr(FormNumber) +
  // ' ثبت شد.', 2);
  // qryAllForms.Requery;
  // qryAllForms.Locate('FormID;ServerID;YearID',
  // VarArrayOf([FormID, ServerID, YearID]), []);
  // end; // with
  // FreeReservedCodes(DMf.adcBsell, 'Forms', '', IntToStr(FormType));
  // qryInsert.Free;
end;

procedure TGetCheckF.actCopyPasteExecute(Sender: TObject);
var
  qry: TADOQuery;
  i: Byte;
  Fstr: String;
begin
  inherited;
  // BigMessageProgBar('در حال كپي چك  ...‏',DBGrid1.Columns.Count-1);
  if not(qryMaster_Forms.State in dseditmodes) then
    qryMaster_Forms.Edit;
  if (qryDetail_Item.State in dseditmodes) then
    qryDetail_Item.Post;
  qry := TADOQuery.Create(DMf);
  try
    with qry do
    begin
      Clone(qryDetail_Item, ltReadOnly);
      Filter := 'FormItemID=' + qryDetail_Item.FieldByName
        ('FormItemID').AsString;
      Filtered := True;
      qryDetail_Item.Append;
      for i := 0 to qry.FieldCount - 1 do
      begin
        Fstr := qry.Fields[i].FieldName;
        if (qryDetail_Item.FindField(Fstr) <> nil) and
          (not(pfinkey in qryDetail_Item.FieldByName(Fstr).ProviderFlags)) and
          not(qry.Fields[i].ReadOnly) then
          qryDetail_Item.FieldByName(Fstr).AsString :=
            FieldByName(Fstr).AsString;
      end;
      DBGrid1.SetFocus;
      MyFields;
      for i := 0 to qryDetail_Item.FieldCount - 1 do
        if (qryDetail_Item.Fields[i].IsNull) and
          (qryDetail_Item.Fields[i].FieldName <> 'preFormItemID') and
          not(qryDetail_Item.Fields[i].ReadOnly) and
          not(qryDetail_Item.Fields[i] is TBooleanField) then
        begin
          qryDetail_Item.Fields[i].AsInteger := 0
        end;
    end; // with
  finally
    qry.Free;
    BigMessage('چك كپي شد.‏', 1);
  end; // try
end;

procedure TGetCheckF.MyFields;
var
  AddDay: Byte;
  myDate: TDateTime;
begin
  qryDetail_ItemCheckNumber.AsString :=
    IntToStr(StrToInt64Def(RemoveComma(qryDetail_ItemCheckNumber.
    AsString), 0) + 1);
  AddDay := 30;
  if MidStr(qryDetail_ItemCheckDate.AsString, 6, 2) < '07' then
    AddDay := 31;

  AddDay := StrToInt(get_box('تعداد روزها', 'تعداد روزهاي اختلاف با چك جديد:',
    IntToStr(AddDay)));

  myDate := Shamsi2Miladi(qryDetail_ItemCheckDate.AsString);
  myDate := IncDay(myDate, AddDay);

  qryDetail_ItemCheckDate.AsString := Date1400Cnv(miladi2Shamsi(myDate));

  qryDetail_Item.FieldByName('ArzAmount').AsInteger := 0;
  qryDetail_Item.FieldByName('CheckState').AsInteger := 1;
  qryDetail_Item.FieldByName('SeverableAmount').AsInteger := 0;
  qryDetail_Item.FieldByName('VAT').AsInteger := 0;
  qryDetail_Item.FieldByName('RelatedID').AsInteger := 0;
  qryDetail_Item.FieldByName('ItemState').AsInteger := 0;
end;

procedure TGetCheckF.qryDetail_ItemFieldChange(Sender: TField);
var
  i: Integer;
  s: string;
begin
  if user.OperatorKind = 0 then
    exit;

  if (qryDetail_ItempreFormItemID.AsInteger > 0) then
    if var_SQL_ProductVersion > 8 then
      with DMf.qryTmpTmp do
        try
          s := Format
            ('آیا می خواهید %s فرمهای قبل هم که فرم جاری از آن فراخوان شده ویرایش شود',
            [Sender.DisplayLabel]);
          if get_response(s) <> mrYes then
            exit;

          SQL.Text := 'DECLARE @NewValue varchar(20),@YearID int,@ServerID int';
          SQL.Add('DECLARE @childId int,@preFormItemID int,@CheckNumber char(15) ');
          SQL.Add(Format('SET @childId=%d',
            [qryDetail_ItemFormItemID.AsInteger]));
          SQL.Add(Format('SET @YearID=%d', [qryDetail_ItemYearID.AsInteger]));
          SQL.Add(Format('SET @ServerID=%d',
            [qryDetail_ItemServerID.AsInteger]));

          SQL.Add(Format('SET @NewValue=%s', [QuotedStr(Sender.AsString)]));
          SQL.Add(Format('SET @preFormItemID=%d',
            [qryDetail_ItempreFormItemID.AsInteger]));

          SQL.Add(Format('SET @CheckNumber=%s',
            [QuotedStr(Trim(qryDetail_ItemCheckNumber.AsString))]));

          SQL.Add(';WITH #results AS');
          SQL.Add('(');
          SQL.Add('SELECT @childId AS FormItemID,@preFormItemID AS preFormItemID');
          SQL.Add(',@YearID AS YearID,@ServerID AS ServerID');
          SQL.Add('FROM FormItems');

          SQL.Add('where ( (FormItemID = @preFormItemID)OR(preFormItemID = @preFormItemID)');
          SQL.Add('or(FormItemID = @childId)OR(preFormItemID = @childId))');

          SQL.Add('UNION ALL');
          SQL.Add('SELECT t.FormItemID,');
          SQL.Add('t.preFormItemID ,t.YearID,t.ServerID');
          SQL.Add('FROM FormItems t');
          SQL.Add('INNER JOIN #results r ON r.preFormItemID = t.FormItemID');
          SQL.Add(')');
          SQL.Add('UPDATE FormItems');
          SQL.Add(Format('SET %s=@NewValue', [Sender.FieldName]));
          SQL.Add('where FormItemID IN(SELECT FormItemID');
          SQL.Add('FROM #results)');
          // SQL.Add('AND (YearID = @YearID)');
          SQL.Add('AND (CheckNumber = @CheckNumber)');
          SQL.Add('AND (ServerID = @ServerID)');
          SQL.Add('AND (FormItemID <> @childId)');

          // SQL.Add('AND ( (FormItemID = @preFormItemID)OR(preFormItemID = @preFormItemID)');
          // SQL.Add('or(FormItemID = @childId)OR(preFormItemID = @childId))');

          i := ExecSQL;
          s := Format(' مورد %s تغيير يافت', [Sender.DisplayLabel]);
          if i > 0 then
            Warn2(IntToStr(i) + s, 1000);
        finally

        end
    else
      Warn2('اين مورد در Microsoft SQL Server 2008 و بالاتر امكان پذير است');
end;

procedure TGetCheckF.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
  begin
    if NAllRecords.Checked then
    begin
      ppDBPipeline1.RangeBegin := rbFirstRecord;
      ppDBPipeline1.RangeEnd := reLastRecord;
    end
    else
    begin
      ppDBPipeline1.RangeBegin := rbCurrentRecord;
      ppDBPipeline1.RangeEnd := reCurrentRecord;
    end;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True)
  end;
end;

procedure TGetCheckF.qryDetail_ItemHunterCodeSetText(
  Sender: TField; const Text: string);
begin
  ValidateNumericField(Sender, Text, 16, 'کد صیاد');
end;

procedure TGetCheckF.qryDetail_ItemAccountNumberNewSetText(
  Sender: TField; const Text: string);
begin
  ValidateNumericField(Sender, Text, 24, 'شماره حساب');
end;

procedure TGetCheckF.ValidateNumericField(Sender: TField;
  const Text: string; MaxLength: Integer; FieldDisplayName: string);
var
  S: string;
begin
  S := Trim(Text);

  // حذف کاراکترهای اضافی
  S := StringReplace(S, ' ', '', [rfReplaceAll]);
  S := StringReplace(S, '-', '', [rfReplaceAll]);
  S := StringReplace(S, '_', '', [rfReplaceAll]);
  S := StringReplace(S, ',', '', [rfReplaceAll]);

  if not IsOnlyDigits(S) then
    DatabaseError(Format('%s فقط می‌تواند شامل اعداد (۰-۹) باشد', [FieldDisplayName]));

  if Length(S) > MaxLength then
    DatabaseError(Format('%s نمی‌تواند بیشتر از %d رقم باشد', [FieldDisplayName, MaxLength]));

  Sender.AsString := S;
end;

function TGetCheckF.IsOnlyDigits(const S: string): Boolean;
var
  i: Integer;
begin
  if S = '' then
  begin
    Result := False;
    Exit;
  end;

  Result := True;
  for i := 1 to Length(S) do
    if not (S[i] in ['0'..'9']) then
    begin
      Result := False;
      Break;
    end;
end;

// تابع مشترک (بالای implementation)
procedure TGetCheckF.NumericOnlyKeyPress(Sender: TObject; var Key: Char; MaxLen: Integer);
var
  Edit: TDBEdit;
begin
  if not (Sender is TDBEdit) then Exit;

  Edit := TDBEdit(Sender);

  // فقط عدد
  if not (Key in ['0'..'9', #8, #9, #13]) then
    Key := #0;

  // محدودیت طول
  if (Length(Edit.Text) >= MaxLen) and (Key in ['0'..'9']) then
    Key := #0;
end;

// استفاده:
procedure TGetCheckF.edtAccountNumberNewKeyPress(Sender: TObject; var Key: Char);
begin
  NumericOnlyKeyPress(Sender, Key, 24);
end;

procedure TGetCheckF.edtHunterCodeKeyPress(Sender: TObject; var Key: Char);
begin
  NumericOnlyKeyPress(Sender, Key, 16);
end;

end.
