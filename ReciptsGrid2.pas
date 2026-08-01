{ -----------------------------------------------------------------------------
  Unit Name: ReciptsGrid
  Author:    Mahmood
  History: 86/10/17

  ---------------------------------------------------------------------------- }
unit ReciptsGrid2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBActns, ActnList, StdCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppProd, ppReport, DB,
  ADODB, ppDB, ppDBPipe, DM, Menus, ppSubRpt, ppRegion, ComCtrls, zAPIBalloon,
  DateUtils, ppTypes, DBClient, ppBarCod, ppParameter, Provider,
  ppStrtch, ppCache, ppComm, ppRelatv, Grids, ImgList, uExtensionMethods,
  ReciptsPayments, IniLang, Filter_ADO_Const, ppDesignLayer, System.ImageList,
  System.Actions, FarsiReportBuilde, DBCtrlsEh, ppModule, raCodMod,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TReciptsGrid2F = class(Ttemplate2MDIF)
    ppDBPipeline1: TppDBPipeline;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btnDataSetDelete1_: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    qryRecipts: TADOQuery;
    qryReciptsStoreID: TSmallintField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsReciptType: TWordField;
    qryReciptsServiceValue: TBCDField;
    qryReciptsReciptValue: TBCDField;
    qryReciptsTotalValue: TBCDField;
    qryReciptsAddDecValue: TBCDField;
    qryReciptsDocNo: TIntegerField;
    qryReciptsDocDate: TStringField;
    qryReciptsReciptNote: TStringField;
    qryReciptsParentReciptID: TIntegerField;
    qryReciptsModifyDate: TDateTimeField;
    qryReciptsReciptState: TWordField;
    qryItemsReciptItemID: TIntegerField;
    qryItemsReciptID: TIntegerField;
    qryItemsStuffAlloy: TStringField;
    qryItemsInputEntity: TFloatField;
    qryItemsOutputEntity: TFloatField;
    qryItemsInputWeight: TFloatField;
    qryItemsOutputWeight: TFloatField;
    qryItemsRequestedEntity: TFloatField;
    qryItemsRequestedWeight: TFloatField;
    qryItemsStuffGrade: TWordField;
    qryItemsTotalInputPrice: TBCDField;
    qryItemsTotalOutputPrice: TBCDField;
    qryItemsUnitSellPrice: TFMTBCDField;
    qryItemsTotallSellPrice: TBCDField;
    qryItemsItemNote: TStringField;
    qryStuff_Unit_TecInf: TADOQuery;
    qryItems_StuffName: TStringField;
    qryItems_UnitName2: TStringField;
    srcRecipts: TDataSource;
    qryStores: TADOQuery;
    qryRecipts_StoresName: TStringField;
    qryRecipts_PersonName1: TStringField;
    qryRecipts_PersonName2: TStringField;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    qryItems_StuffTecInfo: TStringField;
    actSendExel: TAction;
    actSort: TAction;
    actPrint: TAction;
    qryReciptsUseUnitID: TIntegerField;
    qryItemsacc_DetailCode: TStringField;
    qryItemsacc_CTopicCode: TStringField;
    qryUseUnits: TADOQuery;
    qryRecipts_UseUnitName: TStringField;
    qryItemsUseUnitID: TIntegerField;
    qryItems_UseUnitName: TStringField;
    qryItems_TopicCodeName: TStringField;
    qryItems_DetailCode: TStringField;
    qryReciptsExpireDate: TStringField;
    EdtRNum: TDBEdit;
    LblRecNo: TLabel;
    qryinit: TADOQuery;
    DataSetPost2: TDataSetPost;
    ppDBPipeline2: TppDBPipeline;
    qryItemspreReciptItemID: TIntegerField;
    PopOtherMenu: TPopupMenu;
    N1: TMenuItem;
    qryItemsStuffSize: TStringField;
    btnSearchReciptNumber: TSpeedButton;
    ppReport1: TppReport;
    actSearch: TAction;
    BitBtn6: TBitBtn;
    qryCustomers2: TADOQuery;
    qryCustomers1: TADOQuery;
    BtnRecall: TBitBtn;
    actRecall: TAction;
    actRecallSpecialReciptsF: TAction;
    BtnRecallSpecial: TBitBtn;
    zbal: TzAPIBalloon;
    qryItemsStuffDiameter: TFloatField;
    qryItemsControlCode: TLargeintField;
    actPrint1: TAction;
    PopMuPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    qryRecipts_ValuationType: TIntegerField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsOperatorID: TIntegerField;
    qryRecipts_OperatorName: TStringField;
    qryRecipts_MasirText: TStringField;
    qryRecipts_PersonName3: TStringField;
    qryRecipts_PersonName4: TStringField;
    qryRecipts_PersonName5: TStringField;
    PopMnuGrid: TPopupMenu;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    actNoteMaster: TAction;
    N8: TMenuItem;
    qry_Deficits: TADOQuery;
    actSearchReciptNumber: TAction;
    N14: TMenuItem;
    qryItemsacc_CTopicCode2: TStringField;
    qryItems_CTopicCode: TStringField;
    btnOtherMenu: TBitBtn;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    qryItems_radif: TIntegerField;
    qryRecipts_PersonFax: TStringField;
    qryItemsAidDate: TStringField;
    qryItemsDiscount: TIntegerField;
    actCorrelateRecipt: TAction;
    qryReciptsAidDate: TStringField;
    qry_Deficits4Print: TADOQuery;
    ppDBPipeline3: TppDBPipeline;
    qryRecipts_CustValuationType: TIntegerField;
    qryItemsPersonID1: TIntegerField;
    ALLN: TMenuItem;
    qryItems_PersonName1: TStringField;
    N16: TMenuItem;
    srcDeficits4Print: TDataSource;
    actDeficits: TAction;
    Timer1: TTimer;
    qryItemsProductModel: TIntegerField;
    qryItems_ProductModelName: TStringField;
    qryRecipts_StoreKind: TIntegerField;
    qryItemsItemDate: TStringField;
    actCorrelateConversionCo: TAction;
    actReciptStateTo0: TAction;
    N17: TMenuItem;
    mnuActGetCheckF10: TMenuItem;
    mnuActGetOtherMoneyF1: TMenuItem;
    qryReciptsFirstUser: TStringField;
    qryReciptsLastUser: TStringField;
    qryItemsFirstUser: TStringField;
    qryItemsLastUser: TStringField;
    BtnCorrelateConversionCo: TBitBtn;
    BtnCorrelateRecipt: TBitBtn;
    qryItems_CTopicCode3: TStringField;
    qryReciptsReciptStartDate: TStringField;
    qryReciptsReciptEndDate: TStringField;
    qryRecipts_HasDeficit: TIntegerField;
    qryItemsWaterCo: TFloatField;
    actReportSearch: TAction;
    actReciptOnFormsRange: TAction;
    qryReciptOnFormsRange: TADOQuery;
    DBPipFormsRange: TppDBPipeline;
    srcReciptOnFormsRange: TDataSource;
    qryReciptsStoreID2: TSmallintField;
    qryRecipts_StoresName2: TStringField;
    qryItemsAuxiliary: TFloatField;
    qryItemsMachineWeight: TFloatField;
    qryItemsMachineNo: TStringField;
    qryItemsMachineName: TStringField;
    qryItemsMachineFullWeight: TFloatField;
    qryCustomer2Detail: TADOQuery;
    qryReciptsMachineNo: TStringField;
    qryItems_Tabageh: TStringField;
    qryItems_Nevisandeh: TStringField;
    qryItems_PakhashCompany: TStringField;
    qryItems_Motarjem: TStringField;
    qryItems_ChapYear: TStringField;
    qryItems_gateKetab: TStringField;
    qryItems_NoeJeld: TStringField;
    qryRecipts_CustomersDiscount: TFloatField;
    qryRecipts_CustomersDiscountNote: TStringField;
    pnlStoreP1: TPanel;
    PnlPerson1: TPanel;
    LblPerson1: TLabel;
    btnPersonID1: TSpeedButton;
    DBTextPersonID1: TDBText;
    EdtPersonID1: TDBEdit;
    pnl1: TPanel;
    DBText12: TDBText;
    Label2: TLabel;
    BtnDeficits: TBitBtn;
    BitBtn15: TBitBtn;
    BtnDelete2: TBitBtn;
    GrpBoxAccount: TGroupBox;
    Label7: TLabel;
    dbtxt_DetailCode: TDBText;
    Lblacc_CTopicCode2: TLabel;
    dbtxt_CTopicCode2: TDBText;
    Label1: TLabel;
    dbtxt_TopicCodeName: TDBText;
    dbtxt_CTopicCode: TDBText;
    Label6: TLabel;
    PnlAidInfoMaster: TPanel;
    LblAidInfoNo: TLabel;
    LblAidInfoDate: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    qryRecipts_CustomersDayTime: TIntegerField;
    qryItems_moalef: TStringField;
    pnlPerson3: TPanel;
    qryReciptsArzTypeID: TIntegerField;
    qryReciptsRialsEqual: TBCDField;
    PnlPerson2_ArzActive: TPanel;
    PnlPerson2: TPanel;
    LblPerson2: TLabel;
    btnPersonID2: TSpeedButton;
    dbtxt_PersonName2: TDBText;
    EdtPersonID2: TDBEdit;
    PnlArzActive: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    CmbArzTypeID: TDBComboBox;
    DBEdit1: TDBEdit;
    qryItemsArzAmount: TFloatField;
    qryItemsStandardRate: TBCDField;
    Panel1: TPanel;
    DBText8: TDBText;
    LblReMainPerson: TLabel;
    qry_Lookup: TADOQuery;
    N2: TMenuItem;
    N3: TMenuItem;
    qryItemsInvEntity: TFloatField;
    qryItemsInvWeight: TFloatField;
    qryReciptsSecondType: TIntegerField;
    N4: TMenuItem;
    qry_Deficits4PrintID10: TADOQuery;
    srcDeficits4PrintID10: TDataSource;
    ppPiplneDeficits4PrintID10: TppDBPipeline;
    NReq_InvEntity: TMenuItem;
    qryItemsReq_InvEntity: TFloatField;
    qryItemsSecondTypeItem: TIntegerField;
    actDeleteCorrelateRecipt: TAction;
    qryItemsPakhshCompany: TStringField;
    qryItems_Carton: TFloatField;
    qryItemsc_StuffName: TStringField;
    actGetExcel: TAction;
    Excel1: TMenuItem;
    actAllEdit: TAction;
    N7: TMenuItem;
    N9: TMenuItem;
    qryRecipts_NationalID: TStringField;
    qryItemsUnitSellPrice3: TFloatField;
    pnlUse: TPanel;
    qryReciptsUseOtherID: TWideStringField;
    qryItems_UnitPriceUseKind: TIntegerField;
    qryItems_SellPrice_S: TCurrencyField;
    MenSellPrice: TPopupMenu;
    MenuItem3: TMenuItem;
    mnuSp1: TMenuItem;
    mnuSp2: TMenuItem;
    mnuSp3: TMenuItem;
    mnuSp4: TMenuItem;
    A_l_l_SP__Click: TMenuItem;
    qryItems_c_KeepPlace: TStringField;
    NAllRecords: TMenuItem;
    N10: TMenuItem;
    BtnMachineFullWeight2: TBitBtn;
    qryItemsTotalWeight: TFloatField;
    actCopyPaste: TAction;
    BitBtn9: TBitBtn;
    ppReportBarcode: TppReport;
    cliBarcode: TClientDataSet;
    PiplnBarcode: TppDBPipeline;
    srcBarcode: TDataSource;
    actBarcode: TAction;
    Barcode1: TMenuItem;
    pclmnhdrbnd1: TppColumnHeaderBand;
    pdtlbndBarcodeppDetailBand3: TppDetailBand;
    pdbtxt1: TppDBText;
    pdbrcd1: TppDBBarCode;
    pdbtxt2: TppDBText;
    plbl2: TppLabel;
    plbl3: TppLabel;
    pclmnftrbnd1: TppColumnFooterBand;
    plbl4: TppLabel;
    plbl1: TppLabel;
    pdbtxt3: TppDBText;
    qryItems____StuffTecInfo: TStringField;
    qryItemsAcceptEntity: TFloatField;
    qryItemsRollbackEntity: TFloatField;
    PnlMachineM: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    edtMachineName: TDBEdit;
    edtMachineNo: TDBEdit;
    grpItemNote: TGroupBox;
    dbmmoItemNote: TDBMemo;
    ppParameterList1: TppParameterList;
    qryItemsAcceptWeight: TFloatField;
    qryItemsRollbackWeight: TFloatField;
    actAllotment: TAction;
    qryItems_StuffpublicPercent: TFloatField;
    N11: TMenuItem;
    mnuActCustomersF: TMenuItem;
    pnlSells: TPanel;
    pnlSellsEmporium: TPanel;
    pnlSellsMethod: TPanel;
    pnlMasir_Delivery: TPanel;
    pnlMasir: TPanel;
    btnMasirID: TSpeedButton;
    dbtxt_MasirID: TDBText;
    Label11: TLabel;
    dbedtMasirID: TDBEdit;
    pnlDelivery: TPanel;
    Label12: TLabel;
    btnDeliveryID: TSpeedButton;
    dbtxt_DeliveryID: TDBText;
    dbedtDeliveryID: TDBEdit;
    Label13: TLabel;
    dblkcbb_SellsEmporium: TDBLookupComboBox;
    dbchkPersonID2Bed: TDBCheckBox;
    Label8: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    qryReciptsSellsMethod: TIntegerField;
    qryReciptsSellsEmporium: TIntegerField;
    qryReciptsMasirID: TIntegerField;
    qryReciptsDeliveryID: TIntegerField;
    qryReciptsPersonID2Bed: TWordField;
    qryAllRecipts: TADOQuery;
    dsAllRecipts: TDataSource;
    qryReciptsYearID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryItemsYearID: TIntegerField;
    qryItemsServerID: TIntegerField;
    PnlUseUnitM: TPanel;
    LblUseUnitM: TLabel;
    btnUseUnitID: TSpeedButton;
    DBTextUseUnitID_M: TDBText;
    EdtUseUnitID_M: TDBEdit;
    pnlUseOtherActive: TPanel;
    DBTxtUseOtherID: TDBText;
    btnUseOtherID: TSpeedButton;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    pnlStore: TPanel;
    pnlStore1: TPanel;
    LblStore: TLabel;
    btnStoreID: TSpeedButton;
    DBTextStoreID: TDBText;
    EdtStoreID: TDBEdit;
    pnlStore2: TPanel;
    dbtxt_StoresName2: TDBText;
    btnStoreID2: TSpeedButton;
    EdtStoreID2: TDBEdit;
    LblStore2: TLabel;
    qryReciptsMachineName: TStringField;
    qryReciptsPersonID4: TIntegerField;
    qryItems_StuffNote: TStringField;
    qryReciptsCostDownSave: TBCDField;
    mnuActGetCheckF50: TMenuItem;
    mnuActGetOtherMoneyF2: TMenuItem;
    N13: TMenuItem;
    qryItemsTotalStandardRate: TBCDField;
    actSaveFormItems: TAction;
    actLoadFormItems: TAction;
    actReciptsRegulates: TAction;
    N15: TMenuItem;
    Action11: TMenuItem;
    DataSetProvider1: TDataSetProvider;
    cliBarcode_radif: TIntegerField;
    cliBarcodeReciptItemID: TIntegerField;
    cliBarcodeReciptID: TIntegerField;
    cliBarcodeStuffSize: TStringField;
    cliBarcodeStuffAlloy: TStringField;
    cliBarcodeInputEntity: TFloatField;
    cliBarcodeOutputEntity: TFloatField;
    cliBarcodeInputWeight: TFloatField;
    cliBarcodeOutputWeight: TFloatField;
    cliBarcodeRequestedEntity: TFloatField;
    cliBarcodeRequestedWeight: TFloatField;
    cliBarcodeStuffGrade: TSmallintField;
    cliBarcodeTotalInputPrice: TBCDField;
    cliBarcodeTotalOutputPrice: TBCDField;
    cliBarcodeTotallSellPrice: TBCDField;
    cliBarcodeUnitSellPrice: TFMTBCDField;
    cliBarcodeItemNote: TStringField;
    cliBarcode_StuffName: TStringField;
    cliBarcode_UnitName: TStringField;
    cliBarcode_StuffTecInfo: TStringField;
    cliBarcodeacc_DetailCode: TStringField;
    cliBarcodeacc_CTopicCode: TStringField;
    cliBarcodeUseUnitID: TIntegerField;
    cliBarcode_UseUnitName: TStringField;
    cliBarcodepreReciptItemID: TIntegerField;
    cliBarcodeStuffDiameter: TFloatField;
    cliBarcodeControlCode: TLargeintField;
    cliBarcodeacc_CTopicCode2: TStringField;
    cliBarcodeAidDate: TStringField;
    cliBarcodeDiscount: TIntegerField;
    cliBarcodePersonID1: TIntegerField;
    cliBarcode_PersonName1: TStringField;
    cliBarcodeProductModel: TIntegerField;
    cliBarcode_ProductModelName: TStringField;
    cliBarcodeItemDate: TStringField;
    cliBarcodeFirstUser: TStringField;
    cliBarcodeLastUser: TStringField;
    cliBarcodeWaterCo: TFloatField;
    cliBarcodeDeficitValue: TBCDField;
    cliBarcodeAuxiliary: TFloatField;
    cliBarcodeMachineWeight: TFloatField;
    cliBarcodeMachineNo: TStringField;
    cliBarcodeMachineName: TStringField;
    cliBarcodeMachineFullWeight: TFloatField;
    cliBarcode_Tabageh: TStringField;
    cliBarcode_Nevisandeh: TStringField;
    cliBarcode_PakhashCompany: TStringField;
    cliBarcode_Motarjem: TStringField;
    cliBarcode_ChapYear: TStringField;
    cliBarcode_gateKetab: TStringField;
    cliBarcode_NoeJeld: TStringField;
    cliBarcode_moalef: TStringField;
    cliBarcodeArzAmount: TFloatField;
    cliBarcodeStandardRate: TBCDField;
    cliBarcodeInvEntity: TFloatField;
    cliBarcodeInvWeight: TFloatField;
    cliBarcodeSecondTypeItem: TIntegerField;
    cliBarcode_Carton: TFloatField;
    cliBarcodePakhshCompany: TStringField;
    cliBarcodeReq_InvEntity: TFloatField;
    cliBarcodec_StuffName: TStringField;
    cliBarcodeUnitSellPrice3: TFloatField;
    cliBarcode_UnitPriceUseKind: TIntegerField;
    cliBarcode_SellPrice_S: TCurrencyField;
    cliBarcode_c_KeepPlace: TStringField;
    cliBarcodeTotalWeight: TFloatField;
    cliBarcode____StuffTecInfo: TStringField;
    cliBarcodeAcceptEntity: TFloatField;
    cliBarcodeRollbackEntity: TFloatField;
    cliBarcodeAcceptWeight: TFloatField;
    cliBarcodeRollbackWeight: TFloatField;
    cliBarcode_StuffpublicPercent: TFloatField;
    cliBarcodeServerID: TIntegerField;
    cliBarcodeYearID: TIntegerField;
    cliBarcode_StuffNote: TStringField;
    cliBarcodeTotalStandardRate: TBCDField;
    actRpt001: TAction;
    actRpt0011: TMenuItem;
    pnlDefaultDateSecondType: TPanel;
    PnlSecondType: TPanel;
    Label3: TLabel;
    CmbSecondType: TDBComboBox;
    pnlDefaultDate: TPanel;
    Label10: TLabel;
    dbedtDefaultDate: TDBEdit;
    qryReciptsDefaultDate: TStringField;
    qryItemsTotalDeficient: TBCDField;
    qryUseOthers4Print: TADOQuery;
    pdbplnUseOthers4Print: TppDBPipeline;
    SrcUseOthers4Print: TDataSource;
    grpReciptNote: TGroupBox;
    dbmmoReciptNote: TDBMemo;
    mnuQuotaPostF: TMenuItem;
    actPrint2: TAction;
    qryReciptsParentCoReciptID: TIntegerField;
    qryItemsUnitSellPriceWeight: TFloatField;
    btn1: TBitBtn;
    qryReciptsInsertDate: TDateTimeField;
    qryItemsStuffCode: TLargeintField;
    cliBarcodeTotalDeficient: TBCDField;
    cliBarcodeUnitSellPriceWeight: TFloatField;
    cliBarcodeStuffCode: TLargeintField;
    actGetExcelMasterDetails: TAction;
    aBigPanel: TPanel;
    horoofPanel: TPanel;
    qryReciptsTruckNumber: TStringField;
    Label14: TLabel;
    edtTruckNumber: TDBEdit;
    edtMachineInfo: TDBEdit;
    lblMachineInfo: TLabel;
    qryReciptsMachineInfo: TStringField;
    mnuN12: TMenuItem;
    mnuN13: TMenuItem;
    N12: TMenuItem;
    BtnExcel: TBitBtn;
    actCopy: TAction;
    mnuN18: TMenuItem;
    mnuCopy: TMenuItem;
    LblPerson3: TLabel;
    dbedtPersonID3: TDBEdit;
    btnPersonID3: TSpeedButton;
    dbtxtPersonID3: TDBText;
    qryReciptsAidNumber: TStringField;
    qryItemsAidNumber: TStringField;
    cliBarcodeAidNumber: TStringField;
    qryReciptsInsertTime: TStringField;
    qryReciptsEditTime: TStringField;
    qryItemsInsertTime: TStringField;
    qryItemsEditTime: TStringField;
    actInsertNote1: TAction;
    qryItemsPestEntity: TBCDField;
    actRecallSpecialReciptsSumF: TAction;
    mnuN19: TMenuItem;
    actCardex: TAction;
    mnuCardex: TMenuItem;
    qry_Deficits4PrintDeficitName: TStringField;
    qry_Deficits4PrintDeficit_Add_Dec: TBCDField;
    mnuZero: TMenuItem;
    qryItemsProductCode: TLargeintField;
    cliBarcodeProductCode: TLargeintField;
    qryReciptsReciptsRow: TIntegerField;
    qryItemsacc_CTopicCode3: TStringField;
    qryItems_CTopicCode2: TStringField;
    dbtxt_CTopicCode3: TDBText;
    Lblacc_CTopicCode3: TLabel;
    mnuCofferType: TMenuItem;
    actInsertNote2: TAction;
    qryItemsTotalPrice_TaxValue: TBCDField;
    qryItemsPrvYearID: TIntegerField;
    qryReciptsPrvYearID: TIntegerField;
    actInfoSMSF: TAction;
    qryRecipts_Max4WaterCo: TStringField;
    qryItemsVATCoTotalPrice: TFloatField;
    qryItemsVATCoPrice: TFloatField;
    qryItems_StanCode: TStringField;
    lblWarn: TLabel;
    lblCaptionGrd: TLabel;
    actSplitForm: TAction;
    N18: TMenuItem;
    actPayments: TAction;
    btnPayments: TBitBtn;
    qryRecipts_Mobile2: TStringField;
    qryReciptsPayments: TADOQuery;
    qryReciptsPaymentsCustID: TIntegerField;
    qryReciptsPaymentsCustName: TStringField;
    qryReciptsPaymentsPayment: TBCDField;
    qryReciptsPaymentsNote: TStringField;
    srcReciptsPayments: TDataSource;
    pdbReciptsPayments: TppDBPipeline;
    qryRecipts_CustomerActive: TIntegerField;
    qryItemsacc_TopicCode: TLargeintField;
    cliBarcodeacc_TopicCode: TLargeintField;
    actCustomerGrpID4Add2Customers1: TAction;
    actCustomerGrpID4Add2Customers2: TAction;
    qry_Deficits4PrintDeficitAdd: TBCDField;
    qry_Deficits4PrintDeficitDec: TBCDField;
    pnlRecuest: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    edtMachineNo1: TDBEdit;
    edtExpireDate: TDBEdit;
    edtMachineName1: TDBEdit;
    mnuReturnRecallType9: TMenuItem;
    N19: TMenuItem;
    actshowRelatedF: TAction;
    N20: TMenuItem;
    qryRecipts_PersonAddress: TStringField;
    qryRecipts_Address: TStringField;
    qryItemsReq_InvEntity2: TFloatField;
    qryReciptsParentReciptNumber: TIntegerField;
    qryItemsParentForm: TStringField;
    actViewFileF: TAction;
    mnuViewFileF: TMenuItem;
    actAnalytical: TAction;
    mnuAnalytical: TMenuItem;
    actMakeDoc: TAction;
    mnuMakeDoc: TMenuItem;
    qryRecipts_Mobile: TStringField;
    pnlMaster: TPanel;
    actSaveGrid: TAction;
    actSaveGridClean: TAction;
    N21: TMenuItem;
    N22: TMenuItem;
    actWorkflowHistoryF: TAction;
    Label15: TLabel;
    actChangeState: TAction;
    Panel4: TPanel;
    LblStateChang: TLabel;
    dbtxtReciptState: TDBText;
    BitBtn5: TBitBtn;
    plnTransFormItems: TppDBPipeline;
    qryTransFormItems: TADOQuery;
    srcTransFormItems: TDataSource;
    cliBarcode_SD2: TStringField;
    cliBarcode_SD3: TStringField;
    cliBarcode_SD4: TStringField;
    cliBarcode_SD5: TStringField;
    cliBarcode_SD6: TStringField;
    cliBarcode_SD7: TStringField;
    cliBarcode_SD8: TStringField;
    cliBarcode_SD9: TStringField;
    cliBarcode_SD1: TStringField;
    qryItemsTotallSellPrice_InvWeight: TFloatField;
    actShowRecall: TAction;
    N23: TMenuItem;
    actFilter: TAction;
    qryReciptsDefaultDuration: TSmallintField;
    edtDefaultDuration: TDBEdit;
    qryReciptsCalcGiftItems: TBooleanField;
    mnuCalcGiftItems: TMenuItem;
    txtDocNo: TDBText;
    txtDocDate: TDBText;
    qry_Deficits4PrintDeficitCo: TFloatField;
    qry_Deficits4PrintDeficitPercent: TFloatField;
    qryItemsID: TLargeintField;
    qryItemsDeficitValue2: TBCDField;
    qryItemsDeficitValue3: TBCDField;
    qryItemsDeficitValueCo2: TBCDField;
    qryItemsDeficitValueCo3: TBCDField;
    N24: TMenuItem;
    N31: TMenuItem;
    qryItemsSyntheticCode: TStringField;
    dbtxtParentReciptNumber: TDBText;
    edtReciptsRow: TDBEdit;
    lblReciptsRow: TLabel;
    qryItemsDeficitValue123: TBCDField;
    qryItemsTotallSellPrice_DeficitValue3: TBCDField;
    qryRecipts_PersonRegisterNumber: TStringField;
    qryTmps: TADOQuery;
    qryEntityCodeExpirationDate: TADOQuery;
    cliBarcodeSyntheticCode: TStringField;
    qryItemsRegPrice: TBCDField;
    actAutoPrice: TAction;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    qryItems_UnitName: TStringField;
    cliBarcode_ST2: TStringField;
    cliBarcode_ST3: TStringField;
    cliBarcode_ST4: TStringField;
    cliBarcode_ST15: TStringField;
    cliBarcode_ST14: TStringField;
    cliBarcode_ST5: TStringField;
    cliBarcode_ST6: TStringField;
    cliBarcode_ST7: TStringField;
    cliBarcode_ST8: TStringField;
    cliBarcode_ST9: TStringField;
    cliBarcode_ST10: TStringField;
    cliBarcode_ST11: TStringField;
    cliBarcode_ST12: TStringField;
    cliBarcode_ST13: TStringField;
    cliBarcode_ST1: TStringField;
    qryItemsDeficitValue: TBCDField;
    qryItemsIRow: TIntegerField;
    actRow: TAction;
    actInsertRow: TAction;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    actChanger: TAction;
    N25: TMenuItem;
    qryRecipts_ReciptDayMoon: TStringField;
    qryReciptsReciptDateMiladi: TDateTimeField;
    Panel5: TPanel;
    edtReciptDateMiladi: TDBDateTimeEditEh;
    EdtReciptDate: TDBEdit;
    LblReciptDate: TLabel;
    actShowCorrelateRecipt: TAction;
    N26: TMenuItem;
    pnlInsertTime: TPanel;
    Panel7: TPanel;
    edtInsertTime: TDBEdit;
    Label18: TLabel;
    Panel8: TPanel;
    edtEditTime: TDBEdit;
    Label20: TLabel;
    sss1: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel21: TppLabel;
    plblSetField: TppLabel;
    plblAllStuffCoding: TppLabel;
    ppLabel20: TppLabel;
    plblDeficit_TotallSellPrice_Dec: TppLabel;
    plblDeficit_Price_Add: TppLabel;
    plblDeficit_Price_Dec: TppLabel;
    ppLabel18: TppLabel;
    ppImage1: TppImage;
    plblTotallSellPrice2percent: TppLabel;
    ppLabel12: TppLabel;
    ppLabel11: TppLabel;
    plbl_SellsMethod1: TppLabel;
    plbl_SellsMethod0: TppLabel;
    plblTotallSellPricedivEntity: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    plbl5: TppLabel;
    pdbtxtShamsi2Miladi1: TppDBText;
    plblTotallSellPrice2: TppLabel;
    ppLine3: TppLine;
    plblPrint1: TppLabel;
    plblAllReadBankConfig2: TppLabel;
    plblAllReadBankConfig1: TppLabel;
    plblAllReadBankConfig: TppLabel;
    plblAmount1Total_Price2: TppLabel;
    plblTotallSellPricAlpha: TppLabel;
    ppLabel10: TppLabel;
    plblTotallSellPrice: TppLabel;
    plblNameNote: TppLabel;
    plblDate: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    plblSecondTypeItem: TppLabel;
    plblName_Note: TppLabel;
    ppDBTextSumSelect: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppDBCalc11: TppDBCalc;
    DBnum2alphabet: TppDBText;
    ppLabel5: TppLabel;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLblHeader: TppLabel;
    ppLbl_PersonAddress: TppLabel;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppLabel52: TppLabel;
    ppDBText13: TppDBText;
    ppLabel32: TppLabel;
    ppLabel17: TppLabel;
    ppLabel51: TppLabel;
    ppLBLReportTopic: TppLabel;
    ppLabel27: TppLabel;
    ppDBText11: TppDBText;
    ppDBText10: TppDBText;
    ppLabel26: TppLabel;
    ppDBText12: TppDBText;
    ppDBText38: TppDBText;
    ppLabel34: TppLabel;
    ppLabel33: TppLabel;
    ppShape1: TppShape;
    ppDBImage1: TppDBImage;
    pdbtxt9Prcent: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppLine23: TppLine;
    ppLine22: TppLine;
    ppLine19: TppLine;
    ppLine18: TppLine;
    ppLine17: TppLine;
    ppLine16: TppLine;
    ppLine15: TppLine;
    ppLine14: TppLine;
    ppLine13: TppLine;
    ppLine12: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText20: TppDBText;
    ppDBText14: TppDBText;
    ppDBText24: TppDBText;
    ppDBText22: TppDBText;
    ppDBText25: TppDBText;
    ppDBText23: TppDBText;
    ppVariable1: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppDBCalc9: TppDBCalc;
    ppCalcNum2alphabet: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine8: TppLine;
    ppLabel24: TppLabel;
    ppPageStyle1: TppPageStyle;
    ppLabel15: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel6: TppLabel;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBCalc10: TppDBCalc;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBCalcnum2alphabet: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBText4: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppLine33: TppLine;
    ppLine32: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine25: TppLine;
    ppLine24: TppLine;
    ppLine5: TppLine;
    ppLabel46: TppLabel;
    ppLabel35: TppLabel;
    ppLabel29: TppLabel;
    ppLBLMandeh: TppLabel;
    ppLine21: TppLine;
    ppLabel19: TppLabel;
    ppLine20: TppLine;
    ppLabel30: TppLabel;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    raCodeModule1: TraCodeModule;
    raProgramInfo1: TraProgramInfo;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDesignLayer2: TppDesignLayer;
    qryReciptsMachineFullWeight: TFloatField;
    qryReciptsMachineWeight: TFloatField;
    pnlMasterTozinActive: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    edtMachineWeight: TDBEdit;
    edtMachineFullWeight: TDBEdit;
    actChangStuff: TAction;
    BitBtn13: TBitBtn;
    pnlPerson3And: TPanel;
    qryReciptsPersonID3: TIntegerField;
    pnlPerson4: TPanel;
    btnPersonID4: TSpeedButton;
    dbtxtPersonID4: TDBText;
    LblPerson4: TLabel;
    edtPersonID4: TDBEdit;
    DBGrid1: TCedarDbgrid;
    grd1: TCedarDbgrid;
    pdbtxtAllDBSUM: TppDBText;
    plblAllSum: TppLabel;
    qryReciptsID4Print: TLargeintField;
    procedure btnPersonID1Click(Sender: TObject);
    procedure btnPersonID2Click(Sender: TObject);
    procedure ALLDBEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReciptsAfterInsert(DataSet: TDataSet);
    procedure srcReciptsStateChange(Sender: TObject);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryReciptsAfterPost(DataSet: TDataSet);
    procedure qryItemsBeforeDelete(DataSet: TDataSet);
    procedure qryItemsAfterDelete(DataSet: TDataSet);
    procedure qryReciptsBeforeCancel(DataSet: TDataSet);
    procedure srcItemsStateChange(Sender: TObject);
    procedure ppLblCompanyDescGetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryReciptsBeforePost(DataSet: TDataSet);
    procedure qryItemsAfterPost(DataSet: TDataSet);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryReciptsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure CmbSecondTypeEnter(Sender: TObject);
    procedure qryItemsAfterScroll(DataSet: TDataSet);
    procedure qryItemsBeforeInsert(DataSet: TDataSet);
    procedure qryItemsUnitSellPriceChange(Sender: TField);
    procedure qryItemsInputEntityChange(Sender: TField);
    procedure qryItemsOutputEntityChange(Sender: TField);
    procedure qryItemsInputWeightChange(Sender: TField);
    procedure qryItemsOutputWeightChange(Sender: TField);
    procedure actRecallExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actRecallSpecialReciptsFExecute(Sender: TObject);
    procedure actPrint1Execute(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure ppLblAddresGetText(Sender: TObject; var Text: String);
    procedure ppLbTelGetText(Sender: TObject; var Text: String);
    procedure ppLblPostCodeGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblEconomicNumberGetText(Sender: TObject; var Text: String);
    // procedure qryItemsStuffCodeChange(Sender: TField);
    procedure actNoteMasterExecute(Sender: TObject);
    procedure actSearchReciptNumberExecute(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure qryItemsCalcFields(DataSet: TDataSet);
    procedure ppLabelOutputWeightGetText(Sender: TObject; var Text: String);
    procedure ppLabelOutputEntityGetText(Sender: TObject; var Text: String);
    procedure ppLabelTotalOutputPriceGetText(Sender: TObject; var Text: String);
    procedure ppLabelnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure ppDBTextStuffSizeGetText(Sender: TObject; var Text: String);
    procedure qryItemsInputWeightGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryItemsTotalInputPriceChange(Sender: TField);
    procedure qryItemsTotalOutputPriceChange(Sender: TField);
    procedure actCorrelateReciptExecute(Sender: TObject);
    procedure ppImage1DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLblFormFooterGetText(Sender: TObject; var Text: String);
    procedure qryReciptsStoreIDChange(Sender: TField);
    procedure qryReciptsPersonID1Change(Sender: TField);
    procedure ppLblReMainGetText(Sender: TObject; var Text: String);
    procedure ppLblReMainOldGetText(Sender: TObject; var Text: String);
    procedure logoPrint(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure qryItemsAfterOpen(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure ppDBTxtPayablePriceGetText(Sender: TObject; var Text: String);
    procedure actDeficitsExecute(Sender: TObject);
    procedure actCorrelateConversionCoExecute(Sender: TObject);
    procedure actReciptStateTo0Execute(Sender: TObject);
    procedure ppLblState2ZeroDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLabelnum2alphabetPayebelGetText(Sender: TObject;
      var Text: String);
    procedure ppLblSecondTypeGetText(Sender: TObject; var Text: String);
    procedure qryReciptsAfterEdit(DataSet: TDataSet);
    procedure qryItemsAfterEdit(DataSet: TDataSet);
    procedure ppLblAllStringReplaceGetText(Sender: TObject; var Text: String);
    procedure qryItemsWaterCoChange(Sender: TField);
    procedure qryItemsTaxValueChange(Sender: TField);
    procedure ppLblHeaderGetText(Sender: TObject; var Text: String);
    procedure actReportSearchExecute(Sender: TObject);
    procedure actReciptOnFormsRangeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryReciptsBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure btnStoreIDClick(Sender: TObject);
    procedure BtnRecallSpecialClick(Sender: TObject);
    procedure BtnExcelClick(Sender: TObject);
    procedure Panel3Enter(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure qryItemsRequestedEntityChange(Sender: TField);
    procedure qryReciptsSecondTypeChange(Sender: TField);
    procedure ALLNClick(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure qryItemsArzAmountChange(Sender: TField);
    procedure qryReciptsArzTypeIDChange(Sender: TField);
    procedure N2Click(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ppLbl__StandardRateGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtPayableSellPriceGetText(Sender: TObject; var Text: String);
    procedure ppLabelnum2alphabetPayebelSellPriceGetText(Sender: TObject;
      var Text: String);
    procedure NReq_InvEntityClick(Sender: TObject);
    // procedure DBGrid1TitleClick(Column: TColumneh);
    procedure qryReciptsBeforeScroll(DataSet: TDataSet);
    procedure qryItemsSecondTypeItemGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryItemsSecondTypeItemSetText(Sender: TField; const Text: String);
    procedure actDeleteCorrelateReciptExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actAllEditExecute(Sender: TObject);
    procedure DBnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure btnUseOtherIDClick(Sender: TObject);
    procedure ppDBText6GetText(Sender: TObject; var Text: String);
    procedure A_l_l_SP__ClickClick(Sender: TObject);
    procedure ppDBTextSumSelectGetText(Sender: TObject; var Text: String);
    procedure qryItemsMachineWeightChange(Sender: TField);
    procedure mnu4allClick(Sender: TObject);
    procedure NAllRecordsClick(Sender: TObject);
    procedure BtnMachineFullWeight2Click(Sender: TObject);
    procedure actCopyPasteExecute(Sender: TObject);
    procedure actBarcodeExecute(Sender: TObject);
    procedure ppLblBarCodeGetText(Sender: TObject; var Text: String);
    procedure qryItems____StuffTecInfoChange(Sender: TField);
    procedure Accept_Rollback_EntityChange(Sender: TField);
    procedure Accept_Rollback_WeightChange(Sender: TField);
    procedure qryItemsRequestedWeightChange(Sender: TField);
    procedure actAllotmentExecute(Sender: TObject);
    procedure plblName_NoteGetText(Sender: TObject; var Text: String);
    procedure plblSecondTypeItemGetText(Sender: TObject; var Text: String);
    procedure qryItemsTaxCoChange(Sender: TField);
    procedure qryItemsCustomerRateChange(Sender: TField);
    procedure btnMasirIDClick(Sender: TObject);
    procedure btnDeliveryIDClick(Sender: TObject);
    procedure qryAllReciptsAfterScroll(DataSet: TDataSet);
    procedure btnPersonID3Click(Sender: TObject);
    procedure plblDateGetText(Sender: TObject; var Text: String);
    procedure plblNameNoteGetText(Sender: TObject; var Text: String);
    procedure btnUseUnitIDClick(Sender: TObject);
    procedure qryReciptsAfterDelete(DataSet: TDataSet);
    procedure qryReciptsBeforeDelete(DataSet: TDataSet);
    procedure actSaveFormItemsExecute(Sender: TObject);
    procedure actLoadFormItemsExecute(Sender: TObject);
    procedure actReciptsRegulatesExecute(Sender: TObject);
    procedure plblTotallSellPriceGetText(Sender: TObject; var Text: String);
    procedure plblTotallSellPricAlphaGetText(Sender: TObject; var Text: String);
    procedure actRpt001Execute(Sender: TObject);
    procedure qryItemsDeficitValueChange(Sender: TField);
    procedure plblAmount1Total_PriceGetText(Sender: TObject; var Text: String);
    procedure qryItemsTotallSellPriceChange(Sender: TField);
    procedure qryItemsStandardRateChange(Sender: TField);
    procedure NAllGetStuffCodeFromStuffTecInfo(Sender: TObject);
    procedure plblAllReadBankConfigGetText(Sender: TObject; var Text: String);
    procedure actGetExcelMasterDetailsExecute(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryReciptsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure mnuN13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure qryItemsMachineFullWeightChange(Sender: TField);
    procedure actCopyExecute(Sender: TObject);
    procedure qryItemsArzRateChange(Sender: TField);
    procedure qryReciptsRialsEqualChange(Sender: TField);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure qryItemsStuffCodeChange(Sender: TField);
    procedure actInsertNote1Execute(Sender: TObject);
    procedure actRecallSpecialReciptsSumFExecute(Sender: TObject);
    procedure plblTotallSellPrice2GetText(Sender: TObject; var Text: string);
    procedure mnuN19Click(Sender: TObject);
    procedure qryRecipts_StoreKindChange(Sender: TField);
    procedure pdbtxtShamsi2Miladi1GetText(Sender: TObject; var Text: string);
    procedure actCardexExecute(Sender: TObject);
    procedure BtnDeficitsMouseEnter(Sender: TObject);
    procedure BtnDeficitsMouseLeave(Sender: TObject);
    procedure mnuZeroClick(Sender: TObject);
    procedure CartonKind5(Sender: TField);
    procedure actInsertNote2Execute(Sender: TObject);
    procedure qryItemsUnitCommissionChange(Sender: TField);
    procedure plblTotallSellPricedivEntityGetText(Sender: TObject;
      var Text: string);
    procedure actInfoSMSFExecute(Sender: TObject);
    procedure plbl_SellsMethod0GetText(Sender: TObject; var Text: string);
    procedure plblTotallSellPrice2percentGetText(Sender: TObject;
      var Text: string);
    procedure pplblCustomerNameGetText(Sender: TObject; var Text: string);
    procedure ppReport1AfterPrint(Sender: TObject);
    procedure ppLabel15GetText(Sender: TObject; var Text: string);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actSplitFormExecute(Sender: TObject);
    procedure actSmsSendExecute(Sender: TObject);
    procedure qryItemsacc_TopicCodeChange(Sender: TField);
    procedure actPaymentsExecute(Sender: TObject);
    procedure qryReciptsAfterOpen(DataSet: TDataSet);
    procedure qryReciptsSellsEmporiumChange(Sender: TField);
    procedure ppLblReMainTotallSellPriceGetText(Sender: TObject;
      var Text: String);
    procedure actCustomerGrpID4Add2Customers1Execute(Sender: TObject);
    procedure actCustomerGrpID4Add2Customers2Execute(Sender: TObject);
    procedure qryItemsLength_WidthstuffdiameterChange(Sender: TField);
    procedure plblDeficit_Price_DecGetText(Sender: TObject; var Text: string);
    procedure plblDeficit_Price_AddGetText(Sender: TObject; var Text: string);
    procedure plblDeficit_TotallSellPrice_DecGetText(Sender: TObject;
      var Text: string);
    procedure btnDataSetDelete1_Click(Sender: TObject);
    procedure actshowRelatedFExecute(Sender: TObject);
    procedure qryItemsSecondTypeItemChange(Sender: TField);
    procedure qryItemsPersonID1Change(Sender: TField);
    procedure actViewFileFExecute(Sender: TObject);
    procedure CmbSecondTypeDblClick(Sender: TObject);
    procedure qryItemsAidDateChange(Sender: TField);
    procedure actAnalyticalExecute(Sender: TObject);
    procedure qryReciptsAfterCancel(DataSet: TDataSet);
    procedure actMakeDocExecute(Sender: TObject);
    procedure actSaveGridExecute(Sender: TObject);
    procedure actSaveGridCleanExecute(Sender: TObject);
    procedure actWorkflowHistoryFExecute(Sender: TObject);
    procedure plblAllStuffCodingGetText(Sender: TObject; var Text: string);
    procedure actChangeStateExecute(Sender: TObject);
    procedure qryItemsStuffAlloySizeDiameterChange(Sender: TField);
    procedure qryItemsBeforeScroll(DataSet: TDataSet);
    procedure actShowRecallExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryReciptsDefaultDurationChange(Sender: TField);
    procedure mnuCalcGiftItemsClick(Sender: TObject);
    procedure qryReciptsPersonID2Change(Sender: TField);
    procedure plblSetFieldGetText(Sender: TObject; var Text: string);
    procedure qryItemsDeficitValueCo2Change(Sender: TField);
    procedure qryItemsDeficitValue2Change(Sender: TField);
    procedure qryItemsDeficitValue3Change(Sender: TField);
    procedure qryItemsDeficitValueCo3Change(Sender: TField);
    procedure qryItemsDeficitValueCo2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsDeficitValueCo3GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ppDBImage1GetPicture(Sender: TObject; aPicture: TPicture);
    procedure actAutoPriceExecute(Sender: TObject);
    procedure qryItemsBeforeOpen(DataSet: TDataSet);
    procedure actRowExecute(Sender: TObject);
    procedure actInsertRowExecute(Sender: TObject);
    procedure actChangerExecute(Sender: TObject);
    procedure qryReciptsReciptDateMiladiChange(Sender: TField);
    procedure qryReciptsReciptDateChange(Sender: TField);
    procedure actShowCorrelateReciptExecute(Sender: TObject);
    procedure sss1Click(Sender: TObject);
    procedure pdbtxt9PrcentGetText(Sender: TObject; var Text: string);
    procedure actChangStuffExecute(Sender: TObject);
    procedure qryReciptsPersonID3Change(Sender: TField);
    procedure pdbtxtAllDBSUMGetText(Sender: TObject; var Text: string);
    procedure plblAllSumGetText(Sender: TObject; var Text: string);
    // procedure qryItemsInvEntityChange(Sender: TField);
    // procedure qryItemsInvWeightChange(Sender: TField);

  private
    { Private declarations }
    // cloned:  TADOQuery;
    myStore: TStore;
    formType, DiscountActive, ParentReciptID: Integer;
    MultiFormType, TotallSellPriceAct: Boolean;
    UnsavedFileName_M, UnsavedFileName, ReciptID4ParentReciptID,
      AidDate_: String;
    Form_InOut, GridColumnsSavePath, SelectedStuffCode: String;
    FieldNamePrice, FieldNameEntity, FieldNameWeight: String;
    RestartStore, FormOutput, FilterShow, getresponseShow, PriceOn_StoreType,
      CTopicCode2Active, CTopicCode3Active: Boolean;
    // System4Edit           :Boolean;
    UnitPriceReadOnly, CustValuationType: Byte;
    PrintCount: Integer;
    CurrentEntity, CurrentWeight, EntityValue: Real48;
    AidNumber: Currency;
    LimitFi: Currency;
    MachineFullWeight1: Real;
    ReciptsDsInsert: Boolean;
    popStuffTecInfo: TPopupMenu;
    qryCust1, qryCust2, qryCust3, qryCustD, QryStore2, qryGroupDeficitID,
      qryCustManag1, qryCustManag2, qryCustManag3, qryCustManagD,
      qryCustomers3: TADOQuery;
    qryCust4, qryCustManag4, qryCustomers4: TADOQuery;
    qryStuffCodingItems: TADOQuery;
    Edit4Deficits: Boolean;
    RoundCount: SmallInt;
    GetExcelAct: Boolean;
    SrcStores: TDataSource;
    PipStores: TppDBPipeline;
    Person3Active, MasterTozinActive: Boolean;
    DataSet_Insert, IRow, RciptDateToItemDate: Boolean;
    AutoInsertPostInsert, SecondTypeItemActive, DeficitValue3Active: Boolean;
    _ReciptsPaymentsF: TReciptsPaymentsF;
    // stuffsizeId:Integer;
    procedure initFormConfig;
    procedure initFormPanel;
    procedure initForm4Output;
    procedure ChangeUnitSellPrice;
    procedure ChangeTotalInputPrice;
    procedure SaveArticlesToFile;
    procedure CheckUnsaved;
    procedure RecallStateChange;
    // procedure InsertReciptsDeficits;
    function Calc_SumFileds(FiledName: String): Currency;
    function CalcSumWeight: Currency;
    function OkDeleteMaster(ReciptID: String; ChkParentCo: Boolean): Boolean;
    function OkDeleteItem(ReciptItemID: String): Boolean;
    // function LimitRecord:Boolean;
    // function ControlEntity:Boolean;
    function OkEditMaster(ParentCoReciptID: string;
      ReciptTypeCo: TField): Boolean;
    procedure InitDBCombos;
    procedure EndOfPrice(Field_Name: String);
    function NonZeroControl: Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure RecallBook(flag: Byte);
    procedure initAddField;
    procedure GetStuffCodeFromStuffTecInfo(StuffTecInfo: String);
    procedure MachineFullWeight_MachineWeight;
    procedure PawsFieldsActive;
    procedure qryItemsFieldChange(Sender: TField);
    function EntityDisplay: Boolean;
    function WeightDisplay: Boolean;
    procedure OnChangeOff;
    procedure OnChangeOn;
    function ReciptBe4PostCtrlEntAct(IsOnDelelte: Boolean = False): Boolean;
    procedure SetSelected_StuffCode;
    procedure ReciptsLocate;
    function FindRemain: Double;
    procedure UpdateStatusBar1;
    function Deficit_Value_3: Currency;
    procedure ReciptBe4PostRecallType19;
    procedure GetItemDateOFpreReciptItemID;
    procedure WaterCoSetZero;

  public
    OpenFromList: Boolean;
    procedure Enter(Form_Type: Integer; LimitShow: Boolean = True;
      StoreID: Integer = 0);
    procedure initFormQry;
    { Public declarations }
  end;

var
  ReciptsGrid2F: TReciptsGrid2F;

implementation

uses searchCode_ADO, shamsiDate, GlobalPro, mmessage, SelectStore, Math, Note,
  StrUtils, RecallSpecialRecipts, ReciptsDeficits, sort2, sndkey32, mdiMain,
  FormFunctions, searchReports, ChooseReciptOnFormsRange, RecallSpecialRecipts2,
  GetExcel, Special_Search, searchCode_ADO4Scroll, GeneralDM, ppPrintr, Rpt001,
  FaraConsts, RecallIndent, Allotment, ReciptsFunctions, ReciptsRegulates,
  filter_ADO, FilterClass_ADO, GetExcelMasterDetails, RptCardex, CPortFunctions,
  StuffTransaction, RecallSpecialReciptsSum, main, infoSMS, SMSUnit,
  RecallSpecialRecipts3, FaraDesktopAlert, Related, ViewFile, MakeDocument,
  WorkflowHistory, WorkflowDm, AccFunctions, HelpShow, Changer,
  ExcelComparisonExcel2;

{$R *.dfm}

procedure TReciptsGrid2F.SaveArticlesToFile;
var
  i: Integer;
begin
  with qryRecipts do
  begin
    for i := 0 to Fields.Count - 1 do
      Save_iniConfig(__AppData + UnsavedFileName_M, Fields[i].FieldName,
        Fields[i].AsString);
  end; // with
  qryItems.SaveToFile(__AppData + UnsavedFileName);
end;

procedure TReciptsGrid2F.CheckUnsaved;
var
  i: Integer;
  aQry: TADOQuery;
  s: String;
begin
  if not FileExists(__AppData + UnsavedFileName) then
    exit;
  if get_response('آخرين كالاهاي وارد شده ' + Caption +
    ' قبلي در سيستم ذخيره نشده، آيا مي‌خواهيد اين كالاها بازخواني شوند؟') <> mrYes
  then
  begin
    DeleteFile(__AppData + UnsavedFileName);
    exit;
  end; // if
  aQry := TADOQuery.Create(Self);

  try

    with qryRecipts do
    begin
      for i := 0 to Fields.Count - 1 do
      begin
        s := Read_iniConfig(__AppData + UnsavedFileName_M, Fields[i].FieldName,
          EmptyStr);
        if s <> EmptyStr then
          if FindField(Fields[i].FieldName) <> nil then
            if qryRecipts.FieldByName(Fields[i].FieldName).CanModify then
            begin
              qryRecipts.FieldByName(Fields[i].FieldName).AsString := s;
            end;
      end;
    end; // with
    qryReciptsAfterInsert(qryRecipts);

    aQry.LoadFromFile(__AppData + UnsavedFileName);
    with qryItems do
    begin
      AfterOpen := nil;
      // AfterInsert:=nil;
      AfterEdit := nil;
      AfterPost := nil;
      AfterCancel := nil;
      AfterDelete := nil;
      AfterScroll := nil;
      // BeforePost:=nil;
      BeforeDelete := nil;
      BeforeEdit := nil;
      BeforeInsert := nil;
      OnCalcFields := nil;

      for i := 0 to aQry.Fields.Count - 1 do
        if qryItems.FindField(aQry.Fields[i].FieldName) <> nil then
        begin
          aQry.Fields[i].OnChange :=
            qryItems.FieldByName(aQry.Fields[i].FieldName).OnChange;
          qryItems.FieldByName(aQry.Fields[i].FieldName).OnChange := nil;
        end;

    end; // with
    with aQry do
    begin
      First;
      while not Eof do
      begin
        qryItems.Append;
        for i := 0 to Fields.Count - 1 do
          if qryItems.FindField(Fields[i].FieldName) <> nil then
            if qryItems.FieldByName(Fields[i].FieldName).CanModify then
            begin
              qryItems.FieldByName(Fields[i].FieldName).AsString :=
                Fields[i].AsString;
            end;
        qryItems.FieldByName('ReciptID').AsInteger :=
          qryItems.FieldByName('ReciptID').AsInteger;
        qryItems.Post;
        Next;
      end; // while
    end; // with
  finally

    for i := 0 to aQry.Fields.Count - 1 do
      if Assigned(aQry.Fields[i].OnChange) then
      begin
        qryItems.FieldByName(aQry.Fields[i].FieldName).OnChange :=
          aQry.Fields[i].OnChange;
      end;

    aQry.Free;

    qryItems.AfterOpen := qryItemsAfterOpen;
    qryItems.AfterInsert := qryItemsAfterInsert;
    qryItems.AfterEdit := qryItemsAfterEdit;
    qryItems.AfterPost := qryItemsAfterPost;
    qryItems.AfterDelete := qryItemsAfterDelete;
    qryItems.AfterScroll := qryItemsAfterScroll;
    qryItems.BeforePost := qryItemsBeforePost;
    qryItems.BeforeDelete := qryItemsBeforeDelete;
    qryItems.BeforeEdit := qryItemsBeforeEdit;
    qryItems.BeforeInsert := qryItemsBeforeInsert;
    qryItems.OnCalcFields := qryItemsCalcFields;

    // CalculateChecksTotal;
  end; // try
end;

procedure TReciptsGrid2F.initFormQry;
var
  StoreKindList, SyntheticCodeField: String;
  i: Integer;
begin
  MultiFormType := var_MultiType_Boolean;
  FilterShow := var_glb_Boolean;
  formType := var_glb_gParam;
  // '_' + IntToStr(formType) +   rmoved first and leter add .
  GridColumnsSavePath := __AppData + Self.Name + IntToStr(formType) + '_' +
    DBGrid1.Name;

  if MultiFormType then
  begin
    for i := 0 to ReciptsGrid2F.ActionList.ActionCount - 1 do
      if ReciptsGrid2F.ActionList.Actions[i].Category = 'Dataset' then
      begin
        TAction(ReciptsGrid2F.ActionList.Actions[i]).ShortCut := mrNone;
      end;
    ReciptsGrid2F.newPanel.Enabled := False;
    ReciptsGrid2F.BtnExcel.Enabled := False;
  end;

  getresponseShow := True;
  UnsavedFileName := 'UnsavedItem_Recipts' + IntToStr(formType) + '.DAT';
  UnsavedFileName_M := 'UnsavedMaster_Recipts' + IntToStr(formType) + '.DAT';
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
    if FieldByName('OrderByFields').AsString <> EmptyStr then
      qryItems.SQL.Add('ORDER BY ' + FieldByName('OrderByFields').AsString);

    qryItems.Parameters.ParamByName('VATCo1').Value :=
      FieldByName('VATCo').AsFloat;
    qryItems.Parameters.ParamByName('VATCo2').Value :=
      FieldByName('VATCo').AsFloat;

    AutoInsertPostInsert := FieldByName('AutoInsertPostInsert').AsInteger
      in [1, 3];

    if FieldByName('AutoInsertPostInsert').AsInteger = 4 then
      actPayments.Caption := 'واسط فروش';

    SyntheticCodeField := FieldByName('SyntheticCodeField').AsString;
    if SyntheticCodeField <> EmptyStr then
    begin
      SyntheticCodeField := LeftStr(SyntheticCodeField,
        Length(SyntheticCodeField) - 1);
      SyntheticCodeField := 'LTRIM(' + SyntheticCodeField +
        ') AS SyntheticCode';
      SyntheticCodeField := StringReplace(SyntheticCodeField, ';',
        ') + ''_'' + LTRIM(', [rfReplaceAll]);

      qryItems.SQL.Text := StringReplace(qryItems.SQL.Text,
        ' '''' AS SyntheticCode', SyntheticCodeField, [rfReplaceAll]);
    end;

  end;
  with qryStores do
  begin
    StoreKindList := qryinit.FieldByName('StoreKindList').AsString;
    if StoreKindList <> EmptyStr then
    begin
      StoreKindList := ' AND (Stores.StoreKind IN (' + StoreKindList + '))';
      SQL.Text := StringReplace(SQL.Text, ':StoreKindList', StoreKindList,
        [rfReplaceAll])
    end
    else
      SQL.Text := StringReplace(SQL.Text, ':StoreKindList', '', [rfReplaceAll]);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.admin, 127, User.id);
  end; // with
  IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
  begin
    NotNull(qryinit.FieldByName('CustomerKind1').AsString,
      'هيچ گروهي براي گروه مشتري 1 مشخص نشده است');
    with qryCustomers1 do
    begin
      Active := False;
      SQL.Add(GetCustomersGroupTypeSQL('CustomerKind1', qryinit, True));
    end; // with
    qryCustCreate(qryCust1, '1', Self);
    qryCustManagCreate(qryCustManag1, '1', Self);
  end; // if
  qryGroupDeficitIDCreate(qryGroupDeficitID, Self);
  IF qryinit.FieldByName('Person2Active').AsInteger = 1 THEN
  begin
    NotNull(qryinit.FieldByName('CustomerKind2').AsString,
      'هيچ گروهي براي گروه مشتري 2  مشخص نشده است');
    with qryCustomers2 do
    begin
      Active := False;
      SQL.Add(GetCustomersGroupTypeSQL('CustomerKind2', qryinit, True));

    end; // with
    qryCustCreate(qryCust2, '2', Self);
    qryCustManagCreate(qryCustManag2, '2', Self);
  end; // if

  IF qryinit.FieldByName('PersonID1OnDetailActive').AsInteger
    in [0, 1, 2, 3] THEN
  begin
    NotNull(qryinit.FieldByName('CustomerKind1').AsString,
      'هيچ گروهي براي گروه مشتري Detail مشخص نشده است');
    with qryCustomer2Detail do
    begin
      Active := False;
      SQL.Add(GetCustomersGroupTypeSQL('Customer2DetailKind', qryinit));
    end; // with
    qryCustCreate(qryCustD, 'D', Self);
    qryCustManagCreate(qryCustManagD, 'D', Self);
  end; // if

  RestartStore := qryinit.FieldByName('RestartFormNumberOnStore').AsInteger
    in [0, 1, 4];
  FormOutput := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  if FormOutput then
  begin
    Form_InOut := 'Output';
    FieldNamePrice := 'TotalOutputPrice';
    FieldNameEntity := 'OutputEntity';
    FieldNameWeight := 'OutputWeight';
    qryItems_StuffpublicPercent.Free;
    cliBarcode_StuffpublicPercent.Free;
  end
  else
  begin
    Form_InOut := 'Input';
    FieldNamePrice := 'TotalInputPrice';
    FieldNameEntity := 'InputEntity';
    FieldNameWeight := 'InputWeight';
  end;

  initAddmnuCofferType(Self, qryinit, qryRecipts, mnuCofferType);
  mnuActGetCheckF50.Visible := not FormOutput and (not mnuCofferType.Visible);
  mnuActGetOtherMoneyF2.Visible := not FormOutput and
    (not mnuCofferType.Visible);
  mnuActGetCheckF10.Visible := FormOutput and (not mnuCofferType.Visible);
  mnuActGetOtherMoneyF1.Visible := FormOutput and (not mnuCofferType.Visible);
  qryItems.Active := False;
  initFormPanel;
  initFormConfig;
  SetFieldIndexFormGrid(DBGrid1);
  HighLightRequiredFields(Self);
  ReturnRecallType9(qryinit, qryRecipts, mnuReturnRecallType9);
  if mnuReturnRecallType9.Visible then
  begin
    btnDataSetDelete1_.Action := nil;
    btnDataSetDelete1_.OnClick := btnDataSetDelete1_Click;
  end
  else
    btnDataSetDelete1_.Action := DataSetDelete1_;

  RequiredCustomers(qryRecipts, qryinit);
end;

function TReciptsGrid2F.EntityDisplay: Boolean;
begin
  Result := opt.EntityDisplay or (MyEntityDisplayType = 2)
end;

procedure TReciptsGrid2F.initFormPanel;
var
  ReciptType: Integer;
  b: Boolean;
begin
  With qryinit do
  begin
    // < Form.Caption>
    Caption := FieldByName('ReciptCaption').AsString;
    actRpt001.Caption := 'ليست ' + Caption;
    lblCaption.Caption := Caption;
    LblRecNo.Caption := 'شماره ' + Caption;
    LblReciptDate.Caption := 'تاريخ ' + Caption;
    if (FieldByName('ReportFileCaption1').AsString <> '') then
      actPrint1.Caption := FieldByName('ReportFileCaption1').AsString;
    if (FieldByName('ReportFileCaption2').AsString <> '') then
      actPrint2.Caption := FieldByName('ReportFileCaption2').AsString;

    actPrint1.Visible := Trim(FieldByName('PerformFileName').AsString)
      <> EmptyStr;
    actPrint2.Visible := Trim(FieldByName('ReportFileName').AsString)
      <> EmptyStr;

    edtReciptDateMiladi.Visible := (qryinit.FieldByName('ShowNotEntityOnSearch')
      .AsLargeInt and Integer(CHkRciptDateToMiladi)) <> 0;

    MasterTozinActive := (qryinit.FieldByName('ShowNotEntityOnSearch')
      .AsLargeInt and Integer(CHkMasterTozinActive)) <> 0;
    pnlMasterTozinActive.Visible := MasterTozinActive;

    pnlInsertTime.Visible := qryinit.FieldByName('ActiveTimeToStr')
      .AsInteger > 0;
    // ________________________  عنوان بجاي كلمه مقدار و وز ن__________________________

    qryItemsInputEntity.DisplayLabel := opt.EntityCaption;
    qryItemsOutputEntity.DisplayLabel := opt.EntityCaption + '#';
    qryItemsInputWeight.DisplayLabel := opt.WeightCaption;
    qryItemsOutputWeight.DisplayLabel := opt.WeightCaption + '#';
    DisplayLabel4InOut(qryinit, qryItems);
    // < 1 كد انبار فعال >
    pnlStore1.Visible := FieldByName('StoreActive').AsInteger = 1;
    LblStore.Caption := 'كد ' + FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('StoreID').Required := pnlStore1.Visible;
    qryRecipts.FieldByName('StoreID').DisplayLabel := 'كد ' +
      FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('_StoresName').Required := pnlStore1.Visible;
    qryRecipts.FieldByName('_StoresName').DisplayLabel := 'نام ' +
      LblStore.Caption;

    // < 2 كد انبار فعال >
    pnlStore2.Visible := FieldByName('Store2Active').AsInteger > 0;
    LblStore2.Caption := 'كد ' + FieldByName('Store2Caption').AsString;
    qryRecipts.FieldByName('StoreID2').Required := pnlStore2.Visible;
    qryRecipts.FieldByName('StoreID2').DisplayLabel := 'كد ' +
      FieldByName('Store2Caption').AsString;

    pnlStore.Visible := pnlStore1.Visible or pnlStore2.Visible;

    qryRecipts.FieldByName('_StoresName2').Required := pnlStore2.Visible;
    qryRecipts.FieldByName('_StoresName2').DisplayLabel := 'نام ' +
      LblStore2.Caption;
    if not pnlStore2.Visible then
    begin
      qryRecipts.FieldByName('_StoresName2').Free;
      dbtxt_StoresName2.Free;
    end
    else
    begin

    end;

    if FieldByName('Store2Active').AsInteger = 2 then
    begin
      QryStore2 := TADOQuery.Create(Self);
      With QryStore2 do
      begin
        Connection := qryStores.Connection;
        SQL.Text := 'SELECT n_StoreID, c_StoreName';
        SQL.Add('FROM Stores');
        qryRecipts.FieldByName('_StoresName2').LookupDataSet := QryStore2;
      end;
    end;

    RciptDateToItemDate := (qryinit.FieldByName('ShowNotEntityOnSearch')
      .AsLargeInt and Integer(CHkRciptDateToItemDate)) <> 0;
    setColumns2(DBGrid1, RciptDateToItemDate, 'ItemDate', aReadOnly);

    IRow := (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
      Integer(CHkIRow)) <> 0;
    actRow.Enabled := IRow;
    actInsertRow.Enabled := IRow;

    pnlStore.Visible := pnlStore1.Visible or pnlStore2.Visible;

    // <   مشتري 1 فعال >
    PnlPerson1.Visible := FieldByName('Person1Active').AsInteger = 1;
    LblPerson1.Caption := LblPerson1.Caption +
      FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('PersonID1').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('PersonID1').DisplayLabel := LblPerson1.Caption;
    qryRecipts.FieldByName('_PersonName1').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('_PersonName1').DisplayLabel := 'نام ' +
      LblPerson1.Caption;
    actCustomerGrpID4Add2Customers1.Caption := 'اضافه كردن ' +
      LblPerson1.Caption;

    b := FieldByName('PersonID1OnDetailActive').AsInteger in [1, 2, 3];
    setColumns2(DBGrid1, b, 'PersonID1');
    setColumns2(DBGrid1, b, '_PersonName1');
    qryItems.FieldByName('PersonID1').DisplayLabel :=
      FieldByName('Person2DetailCaption').AsString;
    qryItems.FieldByName('_PersonName1').DisplayLabel := 'نام ' +
      FieldByName('Person2DetailCaption').AsString;
    if not b then
    begin
      qryItems.FieldByName('_PersonName1').Free;
      cliBarcode_PersonName1.Free;
    end;

    // < 7  مشتري 2 فعال >
    PnlPerson2.Visible := FieldByName('Person2Active').AsInteger = 1;
    LblPerson2.Caption := 'كد ' + FieldByName('Person2Caption').AsString;
    qryRecipts.FieldByName('PersonID2').Required := PnlPerson2.Visible;
    qryRecipts.FieldByName('PersonID2').DisplayLabel := LblPerson2.Caption;
    qryRecipts.FieldByName('_PersonName2').Required := PnlPerson2.Visible;
    qryRecipts.FieldByName('_PersonName2').DisplayLabel := 'نام ' +
      LblPerson2.Caption;
    if not PnlPerson2.Visible then
    begin
      qryRecipts.FieldByName('_PersonName2').Free;
      dbtxt_PersonName2.Free;
    end;
    actCustomerGrpID4Add2Customers2.Caption := 'اضافه كردن ' +
      LblPerson2.Caption;

    b := FieldByName('NoteShow').AsInteger in [2, 3, 4];
    setColumns2(DBGrid1, b, 'ItemNote');
    grpItemNote.Visible := b;

    b := FieldByName('NoteShow').AsInteger in [1, 3, 4];
    grpReciptNote.Visible := b;

    setColumns2(DBGrid1, FieldByName('DetailDateActive').AsInteger in [0, 1],
      'ItemDate');
    if FieldByName('DetailDateActive').AsInteger = 0 then
      qryItemsItemDate.EditMask := '9999/99';

    b := FieldByName('ArzActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'ArzAmount');
    PnlArzActive.Visible := b;
    PnlPerson2_ArzActive.Visible := PnlPerson2.Visible or PnlArzActive.Visible;

    b := FieldByName('StandardRateActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'StandardRate');
    setColumns2(DBGrid1, b, 'TotalStandardRate');
    qryItems.FieldByName('StandardRate').DisplayLabel := 'نرخ‏' +
      FieldByName('StandardCaption').AsString;
    qryItems.FieldByName('TotalStandardRate').DisplayLabel := 'بهاي‏كل‏' +
      FieldByName('StandardCaption').AsString;

    b := (FieldByName('InsertEntity').AsInteger = 1);
    setColumns2(DBGrid1, b, 'InvEntity');

    setColumns2(DBGrid1, b, 'Req_InvEntity');
    setColumns2(DBGrid1, b, 'Req_InvEntity2');

    b := (FieldByName('WaterCoEffect').AsInteger = 3);
    setColumns2(DBGrid1, b, 'InvEntity');
    setColumns2(DBGrid1, b, 'InvWeight');
    setColumns2(DBGrid1, b, 'TotallSellPrice_InvWeight');
    if (FieldByName('WaterCoEffect').AsInteger = 3) then
    begin
      qryItemsInvEntity.DisplayLabel := 'سهم بیمه پایه';
      qryItemsInvWeight.DisplayLabel := 'بیمه مکمل';
      qryItemsTotallSellPrice_InvWeight.DisplayLabel := 'سهم بیمار';
      qryItemsInvEntity.Currency := True;
      qryItemsInvWeight.Currency := True;
    end;

    PnlAidInfoMaster.Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];
    b := FieldByName('AidInfoActive').AsInteger in [2, 3, 4];
    setColumns2(DBGrid1, b, 'AidNumber');
    setColumns2(DBGrid1, b, 'AidDate');
    if LblAidInfoNo.Caption = 'شماره ' then
      LblAidInfoNo.Caption := LblAidInfoNo.Caption + ' ' +
        FieldByName('AidInfoCaptionNo').AsString;
    if LblAidInfoDate.Caption = 'تاريخ ' then
      LblAidInfoDate.Caption := LblAidInfoDate.Caption + ' ' +
        FieldByName('AidInfoCaption').AsString;
    if qryItems.FieldByName('AidNumber').DisplayLabel = 'AidNumber' then
      qryItems.FieldByName('AidNumber').DisplayLabel :=
        FieldByName('AidInfoCaptionNo').AsString;
    if qryItems.FieldByName('AidDate').DisplayLabel = 'AidDate' then
      qryItems.FieldByName('AidDate').DisplayLabel := LblAidInfoDate.Caption;

    // < 12 ارتباط با حسابداري >
    b := FieldByName('AccCodingShow').AsInteger > 0;

    b := b and ((((CurAccess and Integer(akEditAccCode) <> 0)) or User.admin));

    GrpBoxAccount.Visible := b;
    setColumns2(DBGrid1, b AND (FieldByName('TopicCodeActive').AsInteger = 1),
      'acc_TopicCode');
    setColumns2(DBGrid1, b AND (FieldByName('DetailCodeActive').AsInteger = 1),
      'acc_DetailCode');
    setColumns2(DBGrid1, b AND (FieldByName('CTopicCode1Active').AsInteger = 1),
      'acc_CTopicCode');
    qryItems.FieldByName('_DetailCode').Required := b;
    qryItems.FieldByName('_CTopicCode').Required := b;
    if not b then
    begin
      qryItems_DetailCode.Free;
      qryItems_CTopicCode.Free;
      qryItems_TopicCodeName.Free;
      dbtxt_DetailCode.Free;
      dbtxt_CTopicCode.Free;
      dbtxt_TopicCodeName.Free;
    end
    else
    begin
      CTopicCode2Active := Readacc_BankConfig('CTopicCode2Active', '1') = '1';
      CTopicCode3Active := Readacc_BankConfig('CTopicCode3Active', '1') = '1';
    end;
    b := b and CTopicCode2Active AND
      (FieldByName('CTopicCode2Active').AsInteger = 1);
    setColumns2(DBGrid1, b, 'acc_CTopicCode2');
    Lblacc_CTopicCode2.Visible := b;
    dbtxt_CTopicCode2.Visible := b;
    qryItems.FieldByName('_CTopicCode2').Required := b;
    if not b then
    begin
      qryItems.FieldByName('_CTopicCode2').Free;
      dbtxt_CTopicCode2.Free;
    end;

    b := b and CTopicCode3Active AND
      (FieldByName('CTopicCode3Active').AsInteger = 1);
    setColumns2(DBGrid1, b, 'acc_CTopicCode3');
    Lblacc_CTopicCode3.Visible := b;
    dbtxt_CTopicCode3.Visible := b;
    qryItems.FieldByName('_CTopicCode3').Required := b;
    if not b then
    begin
      qryItems.FieldByName('_CTopicCode3').Free;
      dbtxt_CTopicCode3.Free;
    end;

    qryItemsRequestedEntity.DisplayLabel :=
      FieldByName('Section2Caption').AsString;
    qryItemsRequestedWeight.DisplayLabel :=
      FieldByName('Section2CaptionWeight').AsString;
    // < Recipts محل مصرف >
    LblUseUnitM.Caption := FieldByName('UseUnitCaseCaption').AsString;
    PnlUseUnitM.Visible := (FieldByName('UseUnitCase').AsInteger = 3) OR
      (FieldByName('UseUnitCase').AsInteger = 1);
    qryRecipts.FieldByName('UseUnitID').Required := PnlUseUnitM.Visible;
    qryRecipts.FieldByName('UseUnitID').DisplayLabel := LblUseUnitM.Caption;
    qryRecipts.FieldByName('_UseUnitName').Required := PnlUseUnitM.Visible;
    qryRecipts.FieldByName('_UseUnitName').DisplayLabel := LblUseUnitM.Caption;
    if not PnlUseUnitM.Visible then
    begin
      qryRecipts.FieldByName('_UseUnitName').Free;
      DBTextUseUnitID_M.Free;
    end;
    // < Items محل مصرف >
    b := (FieldByName('UseUnitCase').AsInteger = 3) OR
      (FieldByName('UseUnitCase').AsInteger = 2);
    setColumns2(DBGrid1, b, 'UseUnitID');
    setColumns2(DBGrid1, b, '_UseUnitName');
    qryItemsUseUnitID.Required := b;
    qryItemsUseUnitID.DisplayLabel := 'كد ' + LblUseUnitM.Caption;
    qryItems.FieldByName('_UseUnitName').Required := b;
    qryItems.FieldByName('_UseUnitName').DisplayLabel := 'نام ' +
      LblUseUnitM.Caption;
    if not b then
    begin
      qryItems.FieldByName('_UseUnitName').Free;
      cliBarcode_UseUnitName.Free;
    end;

    // < اطلاعات كسورات و اضافات نمايش شود >
    actDeficits.Visible := FieldByName('DeficitsActive').AsInteger >= 1;
    // <  توضيحات Datail فعال باشد >
    qryItems.FieldByName('ControlCode').DisplayLabel :=
      FieldByName('ControlCodeCaption').AsString;
    setColumns2(DBGrid1, opt.ControlCodeActive, 'ControlCode');

    PnlSecondType.Visible := FieldByName('SecondTypeActive').AsInteger
      in [1, 3];
    qryRecipts.FieldByName('SecondType').Required := PnlSecondType.Visible;
    SecondTypeItemActive := FieldByName('SecondTypeActive').AsInteger in [0, 3];

    pnlDefaultDate.Visible := DefaultDateActive(qryinit);
    pnlDefaultDateSecondType.Visible := pnlDefaultDate.Visible or
      PnlSecondType.Visible;

    setColumns2(DBGrid1, SecondTypeItemActive, 'SecondTypeItem');
    qryItems.FieldByName('SecondTypeItem').Required := SecondTypeItemActive;
    if PnlSecondType.Visible or PnlArzActive.Visible or SecondTypeItemActive
    then
      InitDBCombos;

    actCorrelateRecipt.Visible := FieldByName('CorrelateReciptType')
      .AsInteger > 0;
    actCorrelateRecipt.Enabled := FieldByName('CorrelateKind').AsInteger > 0;

    actCorrelateConversionCo.Visible :=
      (FieldByName('ConversionCoSerial').AsInteger > 0) or
      (FieldByName('StandardConsumptionActive').AsInteger > 0);

    if (actCorrelateConversionCo.Visible) and (not actCorrelateRecipt.Visible)
    then
      BtnCorrelateConversionCo.Left := BtnCorrelateRecipt.Left;

    // ------------------------set PnlAidInfoMaster--------------------------//

    actPrint.Hint := FieldByName('PerformFileName').AsString + #13#10 +
      FieldByName('ReportFileName').AsString + #13#10;

    EdtRNum.ReadOnly := FieldByName('EditReciptNumberActive').AsInteger <> 1;

    lblCaption.Hint := IntToStr(formType);

    DiscountActive := qryinit.FieldByName('DiscountActive').AsInteger;
    b := DiscountActive and Integer(CHkDeficitValue) <> 0;

    setColumns2(DBGrid1, b, 'WaterCo');
    TotallSellPriceAct := b or (FieldByName('VATActive').AsInteger = 1) or
      (FieldByName('PawsFieldsActive').AsInteger > 0) OR
      (FieldByName('CommissionActive').AsInteger > 0);

    TotallSellPriceAct := TotallSellPriceAct and
      ((FieldByName('BuyEffect').AsInteger > 0) OR
      (FieldByName('SellEffect').AsInteger > 0) OR
      (FieldByName('EffectType').AsInteger <> 4) OR
      (FieldByName('IncreasingInventory').AsInteger = 1));

    setColumns2(DBGrid1, TotallSellPriceAct, 'TotallSellPrice');

    // b:=b or  FieldByName('DeficitValueEditing').AsInteger=0;
    setColumns2(DBGrid1, b, 'DeficitValue');
    setColumns2(DBGrid1, b, 'TotalDeficient');

    b := DiscountActive and Integer(CHkDeficitValue2) <> 0;
    setColumns2(DBGrid1, b, 'DeficitValue2');
    setColumns2(DBGrid1, b, 'DeficitValueCo2');

    b := DiscountActive and Integer(CHkDeficitValue3C) <> 0;
    setColumns2(DBGrid1, b, 'TotallSellPrice_DeficitValue3');

    // if b then
    // i := ColumnIndexByFieldName(DBGrid1, 'TotallSellPrice_DeficitValue3') + 1
    // else
    // i := ColumnIndexByFieldName(DBGrid1, 'DeficitValue2');

    DeficitValue3Active := DiscountActive and Integer(CHkDeficitValue3) <> 0;
    setColumns2(DBGrid1, b, 'DeficitValue3');
    setColumns2(DBGrid1, b, 'DeficitValueCo3');

    b := qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and Integer(CHkRegPrice) <> 0;
    setColumns2(DBGrid1, b, 'RegPrice');

    setColumns2(DBGrid1, opt.Carton, '_UnitName2');


    // if DeficitValue3Active then
    // begin
    //
    // With DBGrid1.Columns.Add do
    // begin
    // FieldName := 'DeficitValue3';
    // Index := i;
    // end;
    // With DBGrid1.Columns.Add do
    // begin
    // FieldName := 'DeficitValueCo3';
    // Index := i;
    // end;
    // // DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'DeficitValue3')].
    // // Index := i;
    // // DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'DeficitValueCo3')].
    // // Index := i;
    // end;

    if FieldByName('ExtraCodingAddStuffName').AsInteger = 1 then
      qryItems.FieldByName('_StuffName').LookupResultField := 'StuffName';

    b := FieldByName('AcceptRollbackEntity').AsInteger in [1, 3];
    setColumns2(DBGrid1, b and (EntityDisplay or (MyEntityDisplayType = 2)),
      'AcceptEntity');
    setColumns2(DBGrid1, b and WeightDisplay, 'AcceptWeight');
    b := FieldByName('AcceptRollbackEntity').AsInteger in [2, 3];
    setColumns2(DBGrid1, b and EntityDisplay, 'RollbackEntity');
    setColumns2(DBGrid1, b and WeightDisplay, 'RollbackWeight');
    b := FieldByName('ShowKeepPlace').AsInteger = 1;
    setColumns2(DBGrid1, b, '_c_KeepPlace');
    if not b then
    begin
      qryItems_c_KeepPlace.Free;
      cliBarcode_c_KeepPlace.Free;
    end;
    PnlMachineM.Visible := FieldByName('MachineActive').AsInteger in [1, 3];
    actAllotment.Visible := FieldByName('AllotmentActive').AsInteger = 1;

    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [1], 'WaterCo', aReadOnly);
    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [0], 'DeficitValue', aReadOnly);
    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [0], 'DeficitValue2', aReadOnly);
    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [0], 'DeficitValue3', aReadOnly);

    b := (qryinit.FieldByName('BarCodeKind').AsInteger = 6);
    setColumns2(DBGrid1, b, 'preReciptItemID');

    b := (qryinit.FieldByName('ProcedureActive').AsInteger in [1, 2, 3]);
    setColumns2(DBGrid1, b, 'ProductModel');
    setColumns2(DBGrid1, b, '_ProductModelName');
    if not b then
    begin
      qryItems.FieldByName('_ProductModelName').Free;
      cliBarcode_ProductModelName.Free;
    end
    else
    begin
      qryItems.FieldByName('ProductModel').DisplayLabel :=
        'كد ' + qryinit.FieldByName('ProcedureCaption').AsString;
      qryItems.FieldByName('_ProductModelName').DisplayLabel := 'نام ' +
        qryinit.FieldByName('ProcedureCaption').AsString;
    end;

    b := (qryinit.FieldByName('ProcedureActive').AsInteger in [1, 2, 4]);
    setColumns2(DBGrid1, b, 'ProductCode');
    qryItems.FieldByName('ProductCode').DisplayLabel := 'كد ' +
      qryinit.FieldByName('ProcedureCaption').AsString;

    if FieldByName('RequestedChange').AsInteger in [2, 3] then
      MyEntityDisplayType := 2
    else
      MyEntityDisplayType := opt.EntityDisplayType;

    if myStore.EntityDisplayType > 0 then
      MyEntityDisplayType := 2;

    RoundCount := FieldByName('RoundCount').AsInteger;

    lblReciptsRow.Visible := FieldByName('ReciptsRowActive').AsInteger = 1;
    edtReciptsRow.Visible := lblReciptsRow.Visible;

    pnlRecuest.Visible := FieldByName('RecuestActive').AsInteger = 1;

    // setColumns2(DBGrid1, FieldByName('RecallType').AsInteger in [2, 3, 4, 5, 6,
    // 7, 8, 10, 11, 12, 13, 15, 16], 'ParentForm');

  end; // with
  initAddField;
  b := qryinit.FieldByName('TozinActive').AsInteger in [1, 4];
  if b then
    with TFloatField.Create(qryRecipts) do
    begin
      FieldName := '_InfoWeight';
      FieldKind := fkLookup;
      DataSet := qryRecipts;
      Name := 'qryRecipts' + FieldName;

      if qryinit.FieldByName('TozinActive').AsInteger = 1 then
      begin
        KeyFields := 'PersonID1';
        LookupDataSet := qryCustomers1;
      end
      else
      begin
        KeyFields := 'PersonID3';
        LookupDataSet := qryCustomers3;
      end;
      LookUpKeyFields := 'CustID';
      LookupResultField := 'InfoWeight';
      qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
    end;
  BtnMachineFullWeight2.Visible := b;
  setColumns2(DBGrid1, b, 'TotalWeight');

  b := b or ((not(CurAccess and Integer(akEditEntity) <> 0)) and
    not User.admin);

  setColumns2(DBGrid1, b, FieldNameWeight, aReadOnly);
  setColumns2(DBGrid1, b, FieldNameEntity, aReadOnly);
  b := (qryinit.FieldByName('TozinActive').AsInteger in [1, 3, 4]) or
    (qryinit.FieldByName('MachineActive').AsInteger in [2, 3]);
  setColumns2(DBGrid1, b, 'MachineWeight');
  setColumns2(DBGrid1, b, 'MachineFullWeight');

  b := not((qryinit.FieldByName('TozinActive').AsInteger in [0]) or
    (qryinit.FieldByName('MachineActive').AsInteger in [2, 3]) or
    (User.level >= 20));
  setColumns2(DBGrid1, b, 'MachineWeight', aReadOnly);
  setColumns2(DBGrid1, b, 'MachineFullWeight', aReadOnly);
  setColumns2(DBGrid1, b, 'TotalWeight', aReadOnly);

  b := (qryinit.FieldByName('MachineActive').AsInteger in [4]);
  setColumns2(DBGrid1, b, 'MachineNo');
  setColumns2(DBGrid1, b, 'MachineName');

  b := qryinit.FieldByName('TozinActive').AsInteger = 0;
  BtnExcel.Visible := b;
  actGetExcel.Visible := b;
  actGetExcelMasterDetails.Visible := b;

  with qryinit do
  begin
    ReciptType := FieldByName('CorrelateReciptType').AsInteger;
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
    actCorrelateRecipt.Caption := 'ثبت‏' + FieldByName('ReciptCaption')
      .AsString;
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
  end; // with
  b := opt.StuffCodingKind >= 1;
  setColumns2(DBGrid1, b, '_Tabageh');
  setColumns2(DBGrid1, b, '_Nevisandeh');
  setColumns2(DBGrid1, b, '_PakhashCompany');
  setColumns2(DBGrid1, b, '_Motarjem');
  setColumns2(DBGrid1, b, '_gateKetab');
  setColumns2(DBGrid1, b, '_NoeJeld');
  setColumns2(DBGrid1, b, '_moalef');
  setColumns2(DBGrid1, opt.StuffTecInfoActive, '_StuffTecInfo');
  if not opt.StuffTecInfoActive then
  begin
    qryItems.FieldByName('_StuffTecInfo').Free;
  end;

  b := (qryinit.FieldByName('AutoPrice').AsInteger = 9);
  if b then
    setColumns2(DBGrid1, True, 'UnitSellPrice', aReadOnly);


  // b := qryinit.FieldByName('AutoPrice').AsInteger = 10;
  // setColumns2(DBGrid1, b, 'WaterCo', aReadOnly);
  // setColumns2(DBGrid1, b, 'DeficitValue', aReadOnly);
  // setColumns2(DBGrid1, qryinit.FieldByName('RecallType').AsInteger
  // in [2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16], 'ParentForm');

  setColumns2(DBGrid1, qryinit.FieldByName('ParentFormActive').AsInteger > 0,
    'ParentForm');

  pnlStoreP1.Visible := PnlAidInfoMaster.Visible or PnlPerson1.Visible or
    pnlStore.Visible;

end;

procedure TReciptsGrid2F.initAddField;
var
  qry: TADOQuery;
  b: Boolean;
  i, k: Integer;
  txt: string;
begin

  if opt.AidInfoAvailable then
  begin
    i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo');
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'stuffalloy';
      Index := i;
    end;
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'stuffdiameter';
      Index := i;
    end;
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'stuffsize';
      Index := i;
      Alignment := taLeftJustify;
      Font.Name := 'Modern';
      Font.Height := -13;
    end;
  end; // if

  With qryinit do
  begin

    // if b then
    // begin
    // //SumGrid1.FieldsName := SumGrid1.FieldsName + 'DeficitValue2;';
    // with TFloatField.Create(qryItems) do
    // begin
    // FieldName := 'DeficitValue2Co';
    // FieldKind := fkInternalCalc;
    // DataSet := qryItems;
    // Name := 'qryItems' + FieldName;
    // DisplayLabel := 'درصد تخفيف2';
    // qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
    // i := ColumnIndexByFieldName(DBGrid1, 'DeficitValue2');
    // With DBGrid1.Columns.Add do
    // begin
    // FieldName := 'DeficitValue2Co';
    // Index := i;
    // end;
    // // OnChange := qryItemsArzRateChange;
    // end;
    // end;

    b := FieldByName('ArzActive').AsInteger >= 1;
    if b then
    begin
      with TBCDField.Create(qryItems) do
      begin
        FieldName := 'ArzRate';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'بهاي واحد ارز';
        // currency:=True;
        qryItems.FieldDefs.Add(Name, ftBCD, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, 'ArzAmount');
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'ArzRate';
          Index := i;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';';
        OnChange := qryItemsArzRateChange;
      end;
      k := ColumnIndexByFieldName(DBGrid1, 'UnitSellPrice');
      DBGrid1.Columns[k].Index := i + 1;

    end;

    b := FieldByName('CustomerRateAct').AsInteger = 1;
    if b then
    begin
      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'CustomerRate';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'نرخ توافقي';
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, 'UnitSellPrice');
        OnChange := qryItemsCustomerRateChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'CustomerRate';
          Index := i;
          // ReadOnly:=True;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';'
      end;
    end;

    b := FieldByName('UseOtherActive').AsInteger = 1;
    pnlUseOtherActive.Visible := b;
    pnlUse.Visible := pnlUseOtherActive.Visible or PnlUseUnitM.Visible;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(Self);
        Name := 'qryUseOthers';
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT UseOtherID, UseOtherName FROM UseOthers ';
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_UseOtherID';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        qryRecipts.FieldDefs.Add(Name, ftString, 50, True);
        Size := 50;
        KeyFields := 'UseOtherID';
        LookupDataSet := qry;
        LookUpKeyFields := 'UseOtherID';
        LookupResultField := 'UseOtherName';
        DBTxtUseOtherID.DataField := FieldName;
      end;

    end;

    VATActiveFields(qryStores, qryRecipts, qryItems, qryinit, qryCustomers2,
      qryStuff_Unit_TecInf, DBGrid1, qryItemsTaxCoChange,
      qryItemsTaxValueChange, nil); // SumGrid1 nil

    b := FieldByName('MasirActive').AsInteger = 1;
    pnlMasir.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(Self);
        Name := 'qryAddressInMasir';
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT MasirID,MasirText FROM AddressInMasir ';
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_MasirID';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'MasirID';
        LookupDataSet := qry;
        LookUpKeyFields := 'MasirID';
        LookupResultField := 'MasirText';
        Size := 500;
        qryRecipts.FieldDefs.Add(Name, ftString, 500, True);
        dbtxt_MasirID.DataField := FieldName;
      end;
      with TIntegerField.Create(qryRecipts) do
      begin
        FieldName := '_PersonID1MasirID';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'PersonID1';
        LookupDataSet := qryCustomers1;
        LookUpKeyFields := 'CustID';
        LookupResultField := 'MasirID';
        qryRecipts.FieldDefs.Add(Name, ftInteger, 0, True);
      end;
    end;

    b := FieldByName('DeliveryActive').AsInteger = 1;
    pnlDelivery.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(Self);
        Name := 'qrySellsInfo36';
        Connection := DMf.adcBSell;
        SQL.Text :=
          'SELECT SellsCode,SellsName FROM SellsInfo WHERE SellsType = 36';
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_DeliveryID';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'DeliveryID';
        LookupDataSet := qry;
        LookUpKeyFields := 'SellsCode';
        LookupResultField := 'SellsName';
        Size := 200;
        qryRecipts.FieldDefs.Add(Name, ftString, 200, True);
        dbtxt_DeliveryID.DataField := FieldName;
      end;
    end;

    b := FieldByName('SellsEmporiumActive').AsInteger = 1;
    pnlSellsEmporium.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(Self);
        Name := 'qrySellsEmporiums';
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT SellsEmporium,SellsEmporiumName,ServerID';
        SQL.Add('FROM SellsEmporiums ');
        // SQL.Add(Format('WHERE (ServerID = %d)', [opt.ServerID]));
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_SellsEmporium';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'SellsEmporium';
        LookupDataSet := qry;
        LookUpKeyFields := 'SellsEmporium';
        LookupResultField := 'SellsEmporiumName';
        Size := 100;
        DisplayLabel := 'مركز فروش';
        Required := True;
        qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
        dblkcbb_SellsEmporium.DataField := FieldName;
      end;
      with TIntegerField.Create(qryRecipts) do
      begin
        FieldName := '_ServerID4SellsEmporium';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'SellsEmporium';
        LookupDataSet := qry;
        LookUpKeyFields := 'SellsEmporium';
        LookupResultField := 'ServerID';
        qryRecipts.FieldDefs.Add(Name, ftInteger, 0, True);
      end;
    end;

    b := FieldByName('SellsMethodActive').AsInteger = 1;
    pnlSellsMethod.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(Self);
        Name := 'qrySellsMethods';
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT SellsMethod,SellsMethodName FROM SellsMethods';
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_SellsMethod';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'SellsMethod';
        LookupDataSet := qry;
        LookUpKeyFields := 'SellsMethod';
        LookupResultField := 'SellsMethodName';
        Size := 100;
        DisplayLabel := 'نحوه فروش';
        Required := True;
        qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
        dblkcbb_SellsMethod.DataField := FieldName;
      end;
    end;

    b := FieldByName('Person2Active').AsInteger = 1;
    if b then
    begin
      with TIntegerField.Create(qryRecipts) do
      begin
        FieldName := '_SellsDefaultState';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'PersonID1';
        LookupDataSet := qryCustomers1;
        LookUpKeyFields := 'CustID';
        LookupResultField := 'SellsDefaultState';
        qryRecipts.FieldDefs.Add(Name, ftInteger, 0, True);
      end;
      with TIntegerField.Create(qryRecipts) do
      begin
        FieldName := '_PersonID1Broker';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'PersonID1';
        LookupDataSet := qryCustomers1;
        LookUpKeyFields := 'CustID';
        LookupResultField := 'PersonID1';
        qryRecipts.FieldDefs.Add(Name, ftInteger, 0, True);
      end;

    end;

    PersonIdActive('3', qryinit, qryRecipts, qryCustomers3, qryCust3,
      qryCustManag3, pnlPerson3, LblPerson3, dbtxtPersonID3, Self);
    PersonIdActive('4', qryinit, qryRecipts, qryCustomers4, qryCust4,
      qryCustManag4, pnlPerson4, LblPerson4, dbtxtPersonID4, Self);
    pnlPerson3And.Visible := pnlPerson3.Visible; // or pnlPerson4.Visible;

    b := FieldByName('StandardRateActive').AsInteger >= 1;
    if b then
    begin
      // with TCurrencyField.Create(qryItems) do
      // begin
      // FieldName := '__Tax';
      // FieldKind:= fkCalculated;
      // DataSet := qryItems;
      // Name := 'qryItems' + FieldName;
      // currency:=True;
      // qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
      // end;
      // with TCurrencyField.Create(qryItems) do
      // begin
      // FieldName := '_TotalStandardRate';
      // FieldKind:= fkCalculated;
      // DataSet := qryItems;
      // Name := 'qryItems' + FieldName;
      // currency:=True;
      // qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
      // end;
      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := '_StandardRate';
        FieldKind := fkLookup;
        DataSet := qryItems;
        Currency := True;
        Name := 'qryItems' + FieldName;
        KeyFields := 'StuffCode';
        LookupDataSet := qryStuff_Unit_TecInf;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'StandardRate';
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
      end;
    end;

    i := ColumnIndexByFieldName(DBGrid1, 'ArzAmount');
    b := FieldByName('PawsFieldsActive').AsInteger in [1, 3];
    if b then
    begin
      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'Portage';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'كرايه حمل';
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
        OnChange := qryItemsWaterCoChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Portage';
          Index := i + 1;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';'
      end;
    end;
    b := FieldByName('PawsFieldsActive').AsInteger in [2, 3, 4];
    if b then
    begin
      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'Article';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'مواد';
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Article';
          Index := i + 2;
          Footer.ValueType := fvtSum;
        end;

        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';';
        OnChange := qryItemsWaterCoChange;
      end;
    end;
    b := FieldByName('PawsFieldsActive').AsInteger in [2, 3];
    if b then
    begin
      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'Wage';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'دستمزد';
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Wage';
          Index := i + 3;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';';
        OnChange := qryItemsWaterCoChange;
      end;
      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'Scoria';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'سربار';
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Scoria';
          Index := i + 4;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';';
        OnChange := qryItemsWaterCoChange;
      end;
    end;

    b := FieldByName('WastesFunctions').AsInteger = 1;
    if b then
    begin
      with TBCDField.Create(qryItems) do
      begin
        FieldName := 'Waste1';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'ضايعات1';
        qryItems.FieldDefs.Add(Name, ftBCD, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, 'OutputWeight') + 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Waste1';
          Index := i + 1;
        end;
      end;
      with TBCDField.Create(qryItems) do
      begin
        FieldName := 'Waste2';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'ضايعات2';
        qryItems.FieldDefs.Add(Name, ftBCD, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Waste2';
          Index := i + 2;
        end;
      end;
      with TBCDField.Create(qryItems) do
      begin
        FieldName := 'Function1';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'كاركرد';
        qryItems.FieldDefs.Add(Name, ftBCD, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Function1';
          Index := i + 3;
        end;
      end;

    end;

    b := opt.ExtraCoding.Captions[1] <> '';
    if b then
    begin
      i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo');
      for k := 1 to 9 do
        if opt.ExtraCoding.Captions[k] <> '' then
        begin
          with TStringField.Create(qryItems) do
          begin
            FieldName := '_SD' + IntToStr(k);
            FieldKind := fkLookup;
            KeyFields := 'StuffCode';
            LookupDataSet := qryStuff_Unit_TecInf;
            LookUpKeyFields := 'c_StuffCode';
            LookupResultField := 'sd' + IntToStr(k);
            DataSet := qryItems;
            Name := 'qryItems' + FieldName;
            DisplayLabel := opt.ExtraCoding.Captions[k];
            Size := 64;
            ReadOnly := True;
            qryItems.FieldDefs.Add(Name, ftString, 64, True);

            LookupCache := True;

            With DBGrid1.Columns.Add do
            begin
              FieldName := '_SD' + IntToStr(k);
              Index := i + k;
              Width := 64;
            end;
          end;

          // with TStringField.Create(cliBarcode) do
          // begin
          // FieldName := '_SD' + IntToStr(k);
          // FieldKind := fkData;
          // DataSet := cliBarcode;
          // Name := 'cliBarcode' + FieldName;
          // DisplayLabel := opt.ExtraCoding.Captions[k];
          // Size := 64;
          // cliBarcode.FieldDefs.Add(Name, ftString, 64, True);
          // end;

        end;

    end;

    b := FieldByName('SugarActive').AsInteger = 1;
    if b then
    begin
      with TFloatField.Create(qryItems) do
      begin
        FieldName := 'SugarCo';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'درصد';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, 'InputEntity');
        OnChange := CartonKind5;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'SugarCo';
          Index := i;
        end;
      end;
    end;

    b := FieldByName('EarthFieldGateActive').AsInteger > 0;
    if b then
    begin
      with TStringField.Create(qryItems) do
      begin
        FieldName := 'EarthField';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'مزرعه';
        Size := 10;
        qryItems.FieldDefs.Add(Name, ftString, 10, True);
        // i:=ColumnIndexByFieldName(DBGrid1,'OutputWeight')+1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'EarthField';
          // Index:=i+1;
        end;
      end;

      with TIntegerField.Create(qryItems) do
      begin
        FieldName := 'Gate';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'پارت';
        qryItems.FieldDefs.Add(Name, ftInteger, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Gate';
        end;
      end;
      if CLini <> nil then
        fillProps([Self], CLini);
    end;

    b := FieldByName('CartonKind').AsInteger = 5;
    if b then
    begin
      with TFloatField.Create(qryItems) do
      begin
        FieldName := '_StuffpurePercent';
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        KeyFields := 'StuffCode';
        LookupDataSet := qryStuff_Unit_TecInf;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'StuffpurePercent';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
      end;
    end;

    b := FieldByName('CommissionActive').AsInteger > 0;
    if b then
    begin
      with TFMTBCDField.Create(qryItems) do
      begin
        FieldName := 'UnitCommission';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'في كارمزد';
        // حق العمل كاري
        Precision := 20;
        Size := 4;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
        i := ColumnIndexByFieldName(DBGrid1, FieldNamePrice) + 1;
        OnChange := qryItemsUnitCommissionChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'UnitCommission';
          Index := i;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';'
      end;

      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'TotallCommission';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'مبلغ كارمزد';
        // حق العمل كاري
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
        i := i + 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'TotallCommission';
          Index := i;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';'
      end;

      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'UnitSellPriceCommission';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
      end;

      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'TotallCommissionTotalPrice';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
      end;

    end;

    b := FieldByName('ConversionCoSerialFormula').AsInteger > 1;
    if b then
    begin
      with TIntegerField.Create(qryItems) do
      begin
        FieldName := 'TransFormID';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'فرمول ساخت';
        qryItems.FieldDefs.Add(Name, ftInteger, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'TransFormID';
          ButtonStyle := TCellButtonStyleEh.cbsEllipsis;
          ReadOnly := False;
        end;
      end;
    end;

    b := DMf.ReadBankConfig('AuxiliaryActive', '0') = '1';
    if b then
      With DBGrid1.Columns.Add do
      begin
        Index := ColumnIndexByFieldName(DBGrid1, 'UnitSellPrice');
        qryItemsAuxiliary.DisplayLabel :=
          Trim(DMf.ReadBankConfig('AuxiliaryCaption'));
        FieldName := 'Auxiliary';
      end;

    stCountFields(qryItems, qryinit, DBGrid1, DBGrid1.Columns.Count,
      'StuffCode');

    i := 4;
    if opt.StuffCodingKind = 2 then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(Self);
        Name := 'qrylookupst_' + IntToStr(i);
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT StuffCoding.c_StuffCode, LookUps4Type.Name';
        SQL.Add(',StuffCoding.st' + IntToStr(i));
        SQL.Add('FROM StuffCoding INNER JOIN');
        SQL.Add('LookUps4Type(' + IntToStr(401) +
          ') AS LookUps4Type ON StuffCoding.st' + IntToStr(i) +
          ' = LookUps4Type.Code');
        SQL.Add('WHERE (StuffCoding.State = 0)');
        LockType := ltReadOnly;
        Active := True;
      end;

      with TStringField.Create(qryItems) do
      begin
        FieldName := '_st_' + IntToStr(i);
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'تکنیک'; // GetStName(i);
        KeyFields := 'StuffCode';
        LookupDataSet := qry;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'Name';
        Size := 50;
        qryItems.FieldDefs.Add(Name, ftString, 50, True);
        ReadOnly := True;
        if DBGrid1 <> nil then
        begin
          With DBGrid1.Columns.Add do
          begin
            FieldName := '_st_' + IntToStr(i);
            Index := DBGrid1.Columns.Count - 1;

          end;
        end;
      end;
    end;

    b := FieldByName('ConfirmingActive').AsInteger = 1;
    if b then
    begin
      with TStringField.Create(qryItems) do
      begin
        FieldName := 'Confirming';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'تاييد كننده';
        Size := 50;
        qryItems.FieldDefs.Add(Name, ftString, 50, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Confirming';
          ReadOnly := True;
        end;
      end;
    end;

    b := FieldByName('NoteShow').AsInteger = 4;
    if b then
    begin
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := 'ReciptNote2';
        // FieldKind := fkData;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        Size := 1500;
        qryRecipts.FieldDefs.Add(Name, ftString, 1500, True);
      end;
    end;

    b := FieldByName('AutoPrice').AsInteger = 11;
    if b then
    begin
      with TIntegerField.Create(qryItems) do
      begin
        FieldName := 'StuffCodingItemID';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'شناسه جزء';
        qryItems.FieldDefs.Add(Name, ftInteger, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo') + 1;
        // OnChange := qryItemsStuffCodingItemIDChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'StuffCodingItemID';
          ButtonStyle := TCellButtonStyleEh.cbsEllipsis;
          Index := i;
        end;
      end;

      with TFMTBCDField.Create(qryItems) do
      begin
        FieldName := 'Length_';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'طول';
        Precision := 20;
        Size := 4;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
        OnChange := qryItemsLength_WidthstuffdiameterChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Length_';
          Index := i + 1;
        end;
      end;
      with TFMTBCDField.Create(qryItems) do
      begin
        FieldName := 'Width';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'عرض';
        Precision := 20;
        Size := 4;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
        OnChange := qryItemsLength_WidthstuffdiameterChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Width';
          Index := i + 2;
        end;
      end;
      With DBGrid1.Columns.Add do
      begin
        FieldName := 'stuffdiameter';
        Index := i + 3;
      end;
      qryItemsStuffDiameter.OnChange := qryItemsLength_WidthstuffdiameterChange;

      With qry do
      begin
        qry := TADOQuery.Create(Self);
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT *';
        SQL.Add('FROM StuffCodingItems ');
        LockType := ltReadOnly;
        Active := True;
      end;
      qryStuffCodingItems := qry;

      with TFMTBCDField.Create(qryRecipts) do
      begin
        FieldName := '_Weight_';
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        KeyFields := 'StuffCode;StuffCodingItemID';
        LookupDataSet := qry;
        LookUpKeyFields := 'StuffCode;StuffCodingItemID';
        LookupResultField := 'Weight_';
        DisplayLabel := 'وزن تعريف شد در جزء كالا';
        Precision := 20;
        Size := 4;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
      end;

    end;

    b := FieldByName('StandardConsumptionActive').AsInteger > 0;
    if b then
    begin
      with TFMTBCDField.Create(qryItems) do
      begin
        FieldName := 'StandardConsumptionCo';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'ضریب مصرف استاندارد';
        Precision := 20;
        Size := 4;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
        i := ColumnIndexByFieldName(DBGrid1, 'ProductCode') + 1;
        // OnChange := qryItemsUnitCommissionChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'StandardConsumptionCo';
          Index := i;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';'
      end;

      with TFloatField.Create(qryItems) do
      begin
        FieldName := 'StandardConsumption';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'مصرف کل';
        ReadOnly := True;
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        i := i + 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'StandardConsumption';
          Index := i;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';'
      end;

    end;

    b := qryinit.FieldByName('ProcedureActive').AsInteger in [1, 2, 4];
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(Self);
        Name := 'qryProductCode';
        Connection := DMf.adcBSell;
        txt := Trim(qryinit.FieldByName('ProcedureKindList').AsString);
        if txt = EmptyStr then
          txt := '0';
        SQL.Text := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName' +
          ', StuffCoding.c_StuffTecInfo FROM StuffCoding INNER JOIN' +
          ' StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID' +
          ' WHERE (StuffGroups.GroupType IN (' + txt + '))';
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryItems) do
      begin
        FieldName := '_ProductCodeName';
        FieldKind := fkLookup;
        ReadOnly := True;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        KeyFields := 'ProductCode';
        LookupDataSet := qry;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'c_StuffName';
        Size := 150;
        DisplayLabel := 'نام ' + qryinit.FieldByName
          ('ProcedureCaption').AsString;
        Required := True;
        qryItems.FieldDefs.Add(Name, ftString, 150, True);
        i := ColumnIndexByFieldName(DBGrid1, 'ProductCode') + 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := '_ProductCodeName';
          Index := i;
        end;
      end;
    end;

    for k := 0 to opt.LevelIdStuffGroup do
    begin
      with TStringField.Create(qryItems) do
      begin
        FieldName := '_GroupName' + IntToStr(k);
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        KeyFields := 'StuffCode';
        LookupDataSet := qryStuff_Unit_TecInf;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'GroupName' + IntToStr(k);
        Size := 50;
        qryItems.FieldDefs.Add(Name, ftString, 50, True);
      end;
    end;

    b := FieldByName('ActiveGiftItems').AsInteger = 3;
    mnuCalcGiftItems.Visible := b;
    if b then
    begin
      with TFloatField.Create(qryItems) do
      begin
        FieldName := 'SugarEntity';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'تعداد هدیه/تخفیف';
        // ReadOnly := True;
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, 'OutputWeight') + 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'SugarEntity';
          Index := i;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';'
      end;
      with TFloatField.Create(qryItems) do
      begin
        FieldName := 'GiftEntity';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'تعداد با قیمت';
        ReadOnly := True;
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        i := i + 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'GiftEntity';
          Index := i;
          Footer.ValueType := fvtSum;
        end;
        // SumGrid1.FieldsName := SumGrid1.FieldsName + FieldName + ';'
      end;

    end;

  end; // with
  pnlSells.Visible := pnlSellsEmporium.Visible or pnlSellsMethod.Visible;
  pnlMasir_Delivery.Visible := pnlMasir.Visible or pnlDelivery.Visible;
  SetLookUpCash(qryItems);
  SetLookUpCash(qryRecipts);
  DBGrid1.ColorDBGrid;
  // ColorDBGrid(DBGrid1);
  // stuffsizeId:=ColumnIndexByFieldName(DBGrid1,'stuffsize');
  k := ColumnIndexByFieldName(DBGrid1, 'ParentForm');
  DBGrid1.Columns[k].Index := DBGrid1.Columns.Count - 1;

end;

procedure TReciptsGrid2F.qryItemsTaxCoChange(Sender: TField);
begin
  inherited;
  try
    Sender.OnChange := nil;
    EndOfPrice((Sender as TField).FieldName); // TaxCo
  finally
    Sender.OnChange := qryItemsTaxCoChange;
  end;
end;

procedure TReciptsGrid2F.qryItemsCustomerRateChange(Sender: TField);
var
  CustomerRate, UnitePrice, TotalPrice, DeficitValue, TaxValue: Currency;
  EntityWeight, TaxCo: Real;
  VATRound: Integer;
  VATCo: Real;
begin
  inherited;
  TaxCo := qryItems.FieldByName('TaxCo').AsFloat;
  VATRound := qryinit.FieldByName('VATRound').AsInteger;

  VATCo := (qryinit.FieldByName('VATCo').AsFloat * 0.01) + 1;

  CustomerRate := Sender.AsCurrency;

  if (RoundTo(CustomerRate / VATCo, RoundCount) > CustomerRate / VATCo) then
    UnitePrice := RoundTo(CustomerRate / VATCo, RoundCount)
  else
    UnitePrice := RoundTo(CustomerRate / VATCo, RoundCount) + 0.01;

  EntityWeight := qryItemsOutputWeight.AsFloat;
  TotalPrice := RoundTo(UnitePrice * EntityWeight, 0);

  DeficitValue := 0;
  // TaxValue:=0;

  TaxValue := RoundTo((TotalPrice - DeficitValue) * TaxCo / (100 * VATRound), 0)
    * VATRound;
  while TotalPrice + TaxValue - DeficitValue <>
    RoundTo(CustomerRate * EntityWeight, 0) do
  begin
    DeficitValue := TotalPrice + TaxValue -
      RoundTo(CustomerRate * EntityWeight, 0);
    TaxValue := RoundTo((TotalPrice - DeficitValue) * TaxCo / (100 * VATRound),
      0) * VATRound;
  end;
  DeficitValue := RoundTo(DeficitValue, 0);
  // if qryItemsUnitSellPrice.AsCurrency<>UnitePrice then
  qryItemsUnitSellPrice.AsCurrency := UnitePrice;
  // if qryItems.FieldByName('DeficitValue').AsCurrency<>DeficitValue then
  qryItems.FieldByName('DeficitValue').AsCurrency := DeficitValue;
  // qryItems.FieldByName('TaxValue').AsCurrency:=TaxValue;

end;

procedure TReciptsGrid2F.initFormConfig;
var
  b: Boolean;
begin
  ReciptID4ParentReciptID := '';
  UnitPriceReadOnly := qryinit.FieldByName('UnitPriceReadOnly').AsInteger;

  b := qryinit.FieldByName('PriceReadOnly').AsInteger = 1;

  b := b or ((not(CurAccess and Integer(akEditPrice) <> 0)) and not User.admin);

  // بهاي کل    في      هردو
  setColumns2(DBGrid1, b or (UnitPriceReadOnly in [0]), 'UnitSellPrice',
    aReadOnly);

  setColumns2(DBGrid1, b or (UnitPriceReadOnly in [1]), 'TotalInputPrice',
    aReadOnly);
  setColumns2(DBGrid1, b or (UnitPriceReadOnly in [1]), 'TotalOutputPrice',
    aReadOnly);

  b := b or ((not(CurAccess and Integer(akEditUnitSellPrice) <> 0)) and
    not User.admin);
  setColumns2(DBGrid1, b, 'UnitSellPrice', aReadOnly);

  // < 14 مقدارو وزن درخواستي >
  b := qryinit.FieldByName('Section2Visible').AsInteger in [0, 1];
  setColumns2(DBGrid1, b, 'RequestedEntity');
  b := qryinit.FieldByName('Section2Visible').AsInteger in [1, 3];
  setColumns2(DBGrid1, b, 'RequestedWeight');


  // qryItems.FieldByName(FieldNameEntity).ReadOnly:=(opt.ComPortKind=3) and
  // (qryinit.FieldByName('TozinActive').AsInteger=2);

  if mdiMainF.MainFrame.GetActiveIndex = 3 then
  begin
    setColumns2(DBGrid1, False, 'WaterCo');
    setColumns2(DBGrid1, False, 'DeficitValue');
    setColumns2(DBGrid1, False, 'DeficitValue2');
    setColumns2(DBGrid1, False, 'DeficitValue3');
    setColumns2(DBGrid1, False, 'TotalInputPrice');
    setColumns2(DBGrid1, False, 'TotalOutputPrice');
    setColumns2(DBGrid1, False, 'UnitSellPrice');
    setColumns2(DBGrid1, False, 'TotallSellPrice');
    setColumns2(DBGrid1, False, 'TotalStandardRate');
    setColumns2(DBGrid1, False, 'TotalDeficient');
    setColumns2(DBGrid1, False, 'TaxCo');
    setColumns2(DBGrid1, False, 'TaxValue');
    setColumns2(DBGrid1, False, 'Portage');
    setColumns2(DBGrid1, False, 'Article');
    setColumns2(DBGrid1, False, 'Wage');
    setColumns2(DBGrid1, False, 'Scoria');
  end;

end;

procedure TReciptsGrid2F.initForm4Output;
begin
  FormOutput := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  setColumns2(DBGrid1, (not FormOutput) and EntityDisplay, 'InputEntity');
  setColumns2(DBGrid1, (FormOutput) and EntityDisplay, 'OutputEntity');
  setColumns2(DBGrid1, (not FormOutput) and WeightDisplay, 'InputWeight');
  setColumns2(DBGrid1, (FormOutput) and WeightDisplay, 'OutputWeight');
  setColumns2(DBGrid1, not FormOutput, 'TotalInputPrice');
  setColumns2(DBGrid1, FormOutput, 'TotalOutputPrice');
end;

procedure TReciptsGrid2F.btnPersonID1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;
  // qryCustomers1.Active := False;
  txt := 'SELECT DISTINCT CustID,CustName,Address,Tel,PersonID3,' +
    'UseUnitID,Mobile,Fax,CustomerNote,' +
    ' CASE WHEN CustName LIKE N''%''+ ISNULL(CustFirstName, '''') +''%'' THEN CustName'
    + ' ELSE CustName + '' '' + ISNULL(CustFirstName, '''') END AS FullCustName '
    + 'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind1', qryinit);
  Add2Filter(txt, 'CustomerActive = 0');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + ' ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString, 'آدرس', 'تلفن',
    'مشتري3', 'محل مصرف', 'همراه', 'دورنما', 'توضيحات', 'مشخصات كامل'], Results,
    [50, 120, 100, 50, 50, 50, 50, 50, 100, 100], alLeft);
  if b then
  begin
    qryRecipts['PersonID1'] := Results[0];
    qryRecipts['PersonID3'] := Results[4];
    qryRecipts['UseUnitID'] := Results[5];
  end; // if
  // qryCustomers1.Active := True;
end;

procedure TReciptsGrid2F.btnPersonID2Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  // qryCustomers2.Active := False;
  // txt := qryCustomers2.SQL.Text;
  txt := 'SELECT DISTINCT CustID, CustName,InfoWeight,Address, CustomerActive, Mobile '
    + 'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind2', qryinit);
  Add2Filter(txt, 'CustomerActive = 0');

  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(PersonID1)';
    SQL.Add('FROM CustomersBroker');
    SQL.Add('WHERE PersonID1 = ' + IntToStr(qryRecipts.FieldByName('PersonID1')
      .AsInteger));
    Active := True;
    if Fields[0].AsInteger > 0 then
      txt := 'SELECT CustomersBroker.PersonID2, Customers.CustName,Customers.InfoWeight,Address, Customers.CustomerActive, Customers.Mobile  '
        + 'FROM CustomersBroker INNER JOIN ' +
        'Customers ON CustomersBroker.PersonID2 = Customers.CustID WHERE CustomersBroker.PersonID1 ='
        + IntToStr(qryRecipts.FieldByName('PersonID1').AsInteger);
    Active := False;
  end;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person2Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person2Caption').AsString + '', 'وزن',
    'آدرس', '', 'همراه'], Results, [50, 150, 80, 200, 0, 50], alLeft);

  if b then
  begin
    qryRecipts.FieldByName('PersonID2').AsString := Results[0];
    // qryRecipts.FieldByName('ReciptType').AsInteger :=
    // qryRecipts.FieldByName('ReciptType').AsInteger; // for Refresh

  end;
  // qryCustomers1.Active := True;
  // qryCustomers2.Active := True;

end;

procedure TReciptsGrid2F.ALLDBEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    if CtrlDown then
    begin
      if (Sender as TDBEdit).DataField = 'PersonID1' then
        actCustomerGrpID4Add2Customers1.Execute;
      if (Sender as TDBEdit).DataField = 'PersonID2' then
        actCustomerGrpID4Add2Customers2.Execute;
    end
    else
      TSpeedButton(FindComponent('Btn' + (Sender as TDBEdit).DataField)).Click;
end;

procedure TReciptsGrid2F.actCustomerGrpID4Add2Customers1Execute
  (Sender: TObject);
begin
  inherited;
  Add2Customers(qryCustomers1, qryReciptsPersonID1,
    qryinit.FieldByName('CustomerGrpID4Add2Customers1').AsInteger);
end;

procedure TReciptsGrid2F.actCustomerGrpID4Add2Customers2Execute
  (Sender: TObject);
begin
  inherited;
  Add2Customers(qryCustomers2, qryReciptsPersonID2,
    qryinit.FieldByName('CustomerGrpID4Add2Customers2').AsInteger);
end;

procedure TReciptsGrid2F.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if (not CheckRequiredFields(qryRecipts)) then
  begin
    DataSet.Cancel;
    exit;
  end;
  if not(qryRecipts.state in dsEditModes) then
    qryRecipts.edit;

  if (qryinit.FieldByName('ArzActive').AsInteger in [2]) then
    qryItems.FieldByName('ArzRate').AsFloat :=
      qryRecipts.FieldByName('RialsEqual').AsFloat;

  if (Not GetExcelAct) and (qryinit.FieldByName('ReciptIDEventKind')
    .AsInteger = 0) then // IntToStr(formType)
    GetANewID(DataSet, IntToStr(formType), 'ReciptItems', 'ReciptItemID',
      qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger)
  else
    DataSet.FieldByName('ReciptItemID').AsInteger := 0;

  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').AsInteger;

  DataSet.FieldByName('FirstUser').AsString := User.Name;

  GetCustomersDiscount(qryRecipts, qryItems, qryinit);

  DataSet.FieldByName('AidNumber').AsCurrency := AidNumber;
  DataSet.FieldByName('AidDate').AsString := AidDate_;
  AccCodingShowInsert(qryinit, TADOQuery(DataSet), qryRecipts);

  DataSet.FieldByName('PersonID1').AsInteger := 0;

  if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [0, 1] then
    DataSet.FieldByName('PersonID1').AsInteger :=
      qryRecipts.FieldByName('PersonID1').AsInteger;

  if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [3] then
    DataSet.FieldByName('PersonID1').AsInteger :=
      qryRecipts.FieldByName('PersonID2').AsInteger;

  if (qryinit.FieldByName('BarCodeKind').AsInteger in [0, 2, 4]) then
    DBGrid1.SelectedIndex := 1
  else
    DBGrid1.SelectedIndex := 0;

  if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [2, 3] then
    DataSet.FieldByName('InsertTime').AsString := SysUtils.TimeToStr(Now);

  if SecondTypeItemActive then
    DataSet.FieldByName('SecondTypeItem').AsInteger :=
      Integer(DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')
      ].PickList.Objects[0]);

  if qryinit.FieldByName('AutoPrice').AsInteger in [14, 15] then
    DataSet.FieldByName('ProductCode').AsInteger := 0;

  qryItemsIRow.ReadOnly := False;
  qryItemsIRow.AsInteger := Abs(qryItems.RecNo);

  if RciptDateToItemDate then
    DataSet.FieldByName('ItemDate').AsString := qryReciptsReciptDate.AsString

end;

procedure TReciptsGrid2F.qryReciptsAfterInsert(DataSet: TDataSet);
var
  SecondType, DayOrder: Integer;
  SelectDate: TDateTime;
begin
  inherited;
  DataSet_Insert := True;
  DataSet.FieldByName('InsertDate').AsDateTime := Now;
  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  DataSet.FieldByName('ReciptType').AsInteger := formType;
  GetReciptID(qryRecipts, qryItems, qryinit, 0);
  if qryinit.FieldByName('PriorityReciptDate').AsInteger in [1, 2] then
    DataSet.FieldByName('ReciptDate').ReadOnly := False;
  DataSet.FieldByName('ReciptDate').AsString := var_glb_CurrentDate;

  if DefaultDateActive(qryinit) then
  begin
    DayOrder := qryCustomers1.FieldByName('DayOrder').AsInteger;
    if DayOrder > 0 then
    begin
      SelectDate := Shamsi2Miladi(var_glb_CurrentDate);
      // SelectDate := IncDay(IncDay(DayOrder - DayOfWeek(SelectDate),
      // DaysBetween(0, SelectDate), 1), 7);
      DataSet.FieldByName('DefaultDate').AsString := miladi2Shamsi(SelectDate);
    end
    else
      DataSet.FieldByName('DefaultDate').AsString := var_glb_CurrentDate;
  end;

  SetDefaultSellsMethodEmporium(qryRecipts, dblkcbb_SellsEmporium,
    dblkcbb_SellsMethod);

  if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [1, 3] then
    DataSet.FieldByName('InsertTime').AsString := SysUtils.TimeToStr(Now);

  if RestartStore THEN
    DataSet.FieldByName('StoreID').AsInteger := myStore.code;
  // 2
  if not pnlStore1.Visible then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT MIN(n_StoreID) FROM Stores';
      Active := True;
      myStore.code := Fields[0].AsInteger;
      TADOQuery(DataSet).FieldByName('StoreID').AsInteger := myStore.code;
      Active := False;
    end;

  GetReciptNumber(qryinit, DataSet, 0, myStore);

  ReciptStateAutoStateChange(qryinit, DataSet);

  DataSet.FieldByName('AddDecValue').AsInteger := 0;
  DataSet.FieldByName('TotalValue').AsInteger := 0;

  SecondType := StrToInt(ReadConfig(APPID,
    APPBank.Name + '_ReciptsGridF_SecondType' + IntToStr(formType), '0'));
  if SecondType <> 0 then
    qryRecipts.FieldByName('SecondType').AsInteger := SecondType
  else
    qryRecipts.FieldByName('SecondType').AsInteger := CmbSecondType.Tag;
  // if not PnlSecondType.Visible then
  // DataSet.FieldByName('SecondType').AsCurrency:=0;

  DataSet.FieldByName('PersonID3').AsInteger := 0;
  DataSet.FieldByName('PersonID2').AsInteger := 0;
  // if not PnlPerson1.Visible then
  DataSet.FieldByName('PersonID1').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := User.Name;
  DataSet.FieldByName('UseOtherID').AsInteger := 0;
  if not AutoInsertPostInsert then
    EdtRNum.SetFocus
  else
    try
      DBGrid1.SetFocus;
      DBGrid1.SelectedIndex := 0;
    except
      on E: Exception do
    end;
end;

procedure TReciptsGrid2F.qryReciptsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if AutoInsertPostInsert and (not OpenFromList) then
    qryRecipts.Insert;

  if FileExists(GridColumnsSavePath) then
  begin
    lblCaptionGrd.Caption := '...';
    lblCaptionGrd.Hint := actSaveGrid.Caption + ' انجام شده ';
    DBGrid1.Columns.LoadFromFile(GridColumnsSavePath);
  end;
end;

procedure TReciptsGrid2F.FormDestroy(Sender: TObject);
begin
  inherited;
  opt.PayablePrice := 0;
  opt.CustomerID1 := 0;
  opt.CustomerID2 := 0;
  opt.ReciptID := 0;
  FreeMyComponent(Self, ['qryUseOthers', 'qryAddressInMasir', 'qrySellsInfo36',
    'qrySellsEmporiums', 'qrySellsMethods', 'qryCustomers3', 'qryCust1',
    'qryCust2', 'qryCust3', 'qryCustD', 'srcCustomers1', 'srcCustomers2',
    'srcCustomers3', 'ppDBPipelineCustomers1', 'ppDBPipelineCustomers2',
    'ppDBPipelineCustomers3', 'SrcStores', 'PipStores', 'QryStore2',
    'qryGroupDeficitID', 'qryCustManag1', 'qryCustManag2', 'qryCustManag3',
    'qryCustManagD', 'srcCustomersManag1', 'srcCustomersManag2',
    'srcCustomersManag3', 'srcCustomersManagD', 'PipCustomersManag1',
    'PipCustomersManag2', 'PipCustomersManag3', 'PipCustomersManagD',
    'qryProductCode']);
  // SaveColWidth(DBGrid1, IntToStr(formType));
  mainF.DelListRecipts('ReciptsGridF' + IntToStr(formType));
end;

procedure TReciptsGrid2F.FormResize(Sender: TObject);
begin
  inherited;
  // if not FileExists(GridColumnsSavePath) then
  // SetColSize(DBGrid1, 2, False, IntToStr(formType));
end;

procedure TReciptsGrid2F.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  if qryRecipts.state in [dsInsert] then
    actChangeState.Caption := 'ثبت پيش نويس';

  qryItems.Filtered := False;
  okPanel.Visible := qryRecipts.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  actAnalytical.Enabled := okPanel.Visible;

  if (qryinit.FieldByName('BarCodeKind').AsInteger in [1, 3, 5, 6]) and
    (okPanel.Visible) then
  begin
    DBGrid1.Columns[0].FieldName := '____StuffTecInfo';
    DBGrid1.Columns[0].ReadOnly := False;
  end
  else
  begin
    DBGrid1.Columns[0].FieldName := '_radif';
    DBGrid1.Columns[0].ReadOnly := True;
  end;
  if IRow then
  begin
    DBGrid1.Columns[0].FieldName := qryItemsIRow.FieldName;
    DBGrid1.Columns[0].ReadOnly := False;
  end;

  BtnReject.Cancel := newPanel.Visible;
  BtnDelete2.Visible := okPanel.Visible and DataSetDelete2.Visible;
  DataSetEdit2.Visible := okPanel.Visible;
  BtnMachineFullWeight2.Visible := (okPanel.Visible) and
    (qryinit.FieldByName('TozinActive').AsInteger = 1);
  StatusBar2.Visible := okPanel.Visible;
  RecallStateChange;
  LblReMainPerson.Visible := False;

  actInfoSMSF.Visible := newPanel.Visible;

  if Not MultiFormType then
  begin
    FreeReservedCodes(DMf.adcBSell, 'recipts', '', IntToStr(formType));
    FreeReservedCodes(DMf.adcBSell, 'reciptitems', '', IntToStr(formType));
    if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger in [0, 1, 4]
    then
    begin
      FreeReservedCodes(DMf.adcBSell, 'recipts', '',
        qryRecipts.FieldByName('ReciptType').AsString + '_' +
        qryRecipts.FieldByName('StoreID').AsString);
      FreeReservedCodes(DMf.adcBSell, 'recipts', '',
        qryRecipts.FieldByName('ReciptType').AsString + '_');
    end;
  end;

  btnPersonID1.Visible := not qryRecipts.FieldByName('PersonID1').ReadOnly;
  btnStoreID.Visible := not qryRecipts.FieldByName('StoreID').ReadOnly;
  actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >= 1)
    and ReciptStateDeficitsVisible(qryRecipts) and
    (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1) or
    (qryinit.FieldByName('EditableFields').AsString <> EmptyStr);
  actDeficits.Enabled := (newPanel.Visible) and
    (qryinit.FieldByName('DeficitValueEditing').AsInteger = 0) and
    PriceOn_StoreType;
  // SumGrid1.Visible := newPanel.Visible;

  actPayments.Visible := newPanel.Visible and
    (qryinit.FieldByName('PaymentsActive').AsInteger > 0);

  // if SumGrid1.Visible = True then
  // SumGrid1.MasterGrid := DBGrid1
  // else
  // begin
  // SumGrid1.MasterGrid := nil;
  // DBGrid1.Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize,
  // dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
  // end;

  if (qryinit.FieldByName('TozinActive').AsInteger > 0) and
    (qryRecipts.state in [dsInsert]) then
  begin
    setColumns2(DBGrid1, True, 'MachineWeight', aReadOnly);
    setColumns2(DBGrid1, True, 'MachineFullWeight', aReadOnly);
    setColumns2(DBGrid1, True, 'TotalWeight', aReadOnly);
  end;
end;

procedure TReciptsGrid2F.sss1Click(Sender: TObject);
begin
  inherited;
  ExcelComparisonExcel2F.ShowImPortExcel(qryRecipts, qryItems, Form_InOut);

end;

procedure TReciptsGrid2F.srcItemsStateChange(Sender: TObject);
begin
  inherited;
  BtnDelete2.Visible := (qryRecipts.state in dsEditModes) and
    DataSetDelete2.Visible;
  // BtnReject.Cancel:=newPanel2.Visible;
  // if qryItems.State in dsEditModes then  qryRecipts.Edit;
  SetSelected_StuffCode;
end;

procedure TReciptsGrid2F.ppLblCompanyDescGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('CompanyDesc', 'سهامي خاص')
end;

procedure TReciptsGrid2F.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TReciptsGrid2F.ppLabel15GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := Caption;
end;

procedure TReciptsGrid2F.plblAllSumGetText(Sender: TObject; var Text: string);
var
  c: Currency;
  s: string;
begin
  inherited;
  s := '0';
  if DBGrid1.FindFieldColumn(Text) <> nil then
    s := VarToStr(DBGrid1.FieldColumns[Text].Footer.SumValue);
  c := StrToCurr(s);
  Text := CurrToStrF(c, ffGeneral, 0);
end;

procedure TReciptsGrid2F.plblTotallSellPrice2percentGetText(Sender: TObject;
  var Text: string);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice');
  PayablePrice := RoundTo((98 * PayablePrice) / 100, 0);
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

function TReciptsGrid2F.Calc_SumFileds(FiledName: String): Currency;
var
  Total: String;
begin
  Total := ifthen(FiledName = 'Price', 'Total', '');
  Result := 0;
  if qryItems.Active then
    try
      with TADOQuery.Create(Self) do
      begin
        Clone(qryItems, ltReadOnly);
        First;
        while not Eof do
        begin
          Result := Result + FieldByName(Total + 'Input' + FiledName).AsCurrency
            + FieldByName(Total + 'Output' + FiledName).AsCurrency;
          Next;
        end; // while
        Free;
        if qryinit.FieldByName('EffectOnCustomer').AsInteger = 2 then
          Result := Result * -1;
      end; // with
    except
    end; // try
end;

procedure TReciptsGrid2F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1, actSmsSend)
end;

procedure TReciptsGrid2F.actShowCorrelateReciptExecute(Sender: TObject);
var
  qry: TADOQuery;
  ReciptID: Integer;
begin
  inherited;
  if qryReciptsParentReciptID.AsInteger = 0 then
    ReciptID := ParentReciptID
  else
    ReciptID := qryReciptsParentReciptID.AsInteger;

  qry := TADOQuery.Create(Self);
  With qry do
    try
      Connection := theMainConnection;
      qry.SQL.Text := 'SELECT %d AS ReciptID, %d AS ServerID, %d AS YearID';
      qry.SQL.Text := Format(qry.SQL.Text,
        [ReciptID, qryReciptsServerID.AsInteger, qryReciptsYearID.AsInteger]);
      Active := True;
      ShowReciptTypes(qry, mainF, qryItemsStuffCode.AsLargeInt);
    finally
      qry.Free;
    end;
end;

procedure TReciptsGrid2F.actShowRecallExecute(Sender: TObject);
begin
  inherited;
  if var_SQL_ProductVersion > 8 then
    with DMf.qryTmpTmp do
      try
        Active := False;
        SQL.Text := 'DECLARE @ReciptItemID int';
        SQL.Add('DECLARE @StuffCode Bigint');
        SQL.Add(Format('SET @ReciptItemID = %d ',
          [qryItemsReciptItemID.AsInteger]));
        SQL.Add(Format('SET @StuffCode = %d ', [qryItemsStuffCode.AsLargeInt]));
        SQL.Add('DECLARE @Caption varchar(1000)');
        SQL.Add('SET @Caption=''''');
        SQL.Add(';WITH #results AS');
        SQL.Add('(');
        SQL.Add('SELECT ReciptItemID,preReciptItemID');
        SQL.Add('FROM ReciptItems');
        SQL.Add('WHERE (ReciptItemID = @ReciptItemID )');
        SQL.Add('UNION ALL');
        SQL.Add('SELECT t.ReciptItemID,t.preReciptItemID');
        SQL.Add('FROM ReciptItems t');
        SQL.Add('INNER JOIN #results r ON r.preReciptItemID = t.ReciptItemID');
        SQL.Add(')');
        SQL.Add('SELECT @Caption=@Caption+char(13)+ '' سال ''+ltrim(str(Recipts.YearID))');
        SQL.Add('+'' ش ''+ltrim(str( Recipts.ReciptNumber))');
        SQL.Add('+'' ت ''+ Recipts.ReciptDate');
        SQL.Add('+'' ف. ''+ ReciptTypes.ReciptCaption+'' > ''');
        SQL.Add('FROM ReciptItems INNER JOIN');
        SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID');
        SQL.Add('= Recipts.YearID INNER JOIN');
        SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');
        SQL.Add('where ReciptItems.ReciptItemID IN(SELECT ReciptItemID');
        SQL.Add('FROM #results)');
        SQL.Add('AND (ReciptItems.ReciptItemID <> @ReciptItemID)');
        SQL.Add('AND (ReciptItems.StuffCode= @StuffCode)');
        SQL.Add('');
        SQL.Add('SELECT @Caption');
        Active := True;
        ShowBlue(actShowRecall.Caption, Fields[0].AsString);
        Active := False;
      except
        on E: Exception do
        begin
          add2log(E.Message);
        end;

      end;

end;

procedure TReciptsGrid2F.actshowRelatedFExecute(Sender: TObject);
begin
  inherited;
  RelatedF.showRelatedF(qryRecipts, qryReciptsPersonID1.AsInteger);
end;

procedure TReciptsGrid2F.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryRecipts, qryItems, SmsRecipts, formType, 0, 1);
end;

procedure TReciptsGrid2F.qryReciptsBeforePost(DataSet: TDataSet);
var
  DefaultDate, ReciptEndDate: String;
begin
  inherited;
  // qryRecipts.AfterScroll:=nil;
  if (qryItems.state in dsEditModes) and (qryItemsStuffCode.AsLargeInt <> 0)
  then
    qryItems.Post
  else
    qryItems.Cancel;

  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  TrimStringFields(qryRecipts);

  if qryReciptsExpireDate.AsString = '' then
    qryReciptsExpireDate.AsString := '  /  /  ';

  if qryReciptsDocDate.AsString = '' then
    qryReciptsDocDate.AsString := '  /  /  ';

  // qryRecipts_PersonName1.Required := qryReciptsPersonID1.AsInteger <> 0;
  // qryRecipts_PersonName2.Required := qryReciptsPersonID2.AsInteger <> 0;

  if not CheckRequiredFields(qryRecipts) then
    Abort;

  ReciptEndDate := qryReciptsReciptEndDate.AsString;
  DefaultDate := DataSet.FieldByName('DefaultDate').AsString;
  if not validate_date(True, '', '', 'تاريخ جانبي', DefaultDate) then
    Abort;

  try
    DataSet.FieldByName('DefaultDate').AsString := '';
    qryReciptsReciptEndDate.AsString := '';
    if not ValidateDatasetDatesRecipts(DataSet, qryinit) then
      Abort;
  finally
    DataSet.FieldByName('DefaultDate').AsString := DefaultDate;
    qryReciptsReciptEndDate.AsString := ReciptEndDate
  end;

  if not chkAidNumberUnic(qryRecipts, qryinit) then
    Abort;

  if not ValidReciptNumber(qryRecipts, qryinit, myStore) then
    Abort;
  qryRecipts.FieldByName('ReciptValue').AsCurrency := Calc_SumFileds('Price');
  if CheckedMaxCredit(qryinit, qryItems, qryRecipts) then
    Abort;
  if LimitRecord(qryItems, qryinit, False) then
    Abort;
  FnCorrelate4EditActiveDelete(qryRecipts,
    qryinit.FieldByName('Correlate4EditActive').AsInteger);
  ReciptsDsInsert := DataSet.state = dsInsert;
  GetReciptNumber(qryinit, DataSet, 1, myStore);
  GetReciptID(qryRecipts, qryItems, qryinit, 1);

  ReciptsSumOnStuffCode(qryRecipts, qryItems, qryinit, FieldNameEntity);

  Chk_CustomerActive(qryRecipts_CustomerActive, qryReciptsPersonID1);

  if (qryRecipts.FindField('_ServerID4SellsEmporium') <> nil) and
    (qryRecipts.FieldByName('_ServerID4SellsEmporium').AsInteger <>
    qryRecipts.FieldByName('ServerID').AsInteger) then
  begin
    Warn('مركز فروش انتخاب شده معتبر نمي باشد');
    Abort;
  end;

  if qryinit.FieldByName('ReciptBe4PostCtrlEntAct').AsInteger > 0 then
    ReciptBe4PostCtrlEntAct;

  if qryinit.FieldByName('AutoInsertPostInsert').AsInteger in [1, 2] then
  begin
    if qryItems.RecordCount > 0 then
      if ReciptsPaymentsF.Enter(qryRecipts, qryinit, qryItems, FormOutput,
        _ReciptsPaymentsF) <> mrOk then
        Abort;
  end;

  if qryinit.FieldByName('RecallType').AsInteger = 19 then
    ReciptBe4PostRecallType19;

  ReciptsSumOnStuffCodepreReciptItemID(qryRecipts, qryItems, qryinit,
    FieldNameWeight, FieldNameEntity);

end;

procedure TReciptsGrid2F.actAutoPriceExecute(Sender: TObject);
begin
  inherited;
  ReciptBe4PostAutoPrice14(qryReciptsPersonID1.AsInteger, qryItems, qryinit,
    False, False, qryReciptsReciptNumber.AsString);
end;

procedure TReciptsGrid2F.ReciptBe4PostRecallType19;
var
  smsg: string;
begin
  if qryReciptsReciptState.AsInteger = 5 then
    exit;
  smsg := 'سفارش مشتری بطور کامل ثبت نشده است';
  With qryTmps do
  begin
    Active := False;
    LockType := ltBatchOptimistic;

    SQL.Text := 'declare @R Table';
    SQL.Add('(StuffCode int,InputEntity float,OutputEntity float,InputWeight float,OutputWeight float)');
    SQL.Add('insert into @R');
    SQL.Add('SELECT StuffCode, SUM(InputEntity) AS InputEntity,');
    SQL.Add('SUM(OutputEntity) AS OutputEntity, SUM(InputWeight) AS InputWeight');
    SQL.Add(', SUM(OutputWeight) AS OutputWeight');
    SQL.Add('FROM ReciptItemS');
    SQL.Add(Format('WHERE (ReciptID = %d )',
      [qryReciptsParentReciptID.AsInteger]));
    SQL.Add(Format('AND (ServerID = %d)', [qryReciptsServerID.AsInteger]));
    SQL.Add(Format('AND (YearID = %d)', [qryReciptsYearID.AsInteger]));
    SQL.Add('GROUP BY StuffCode');
    SQL.Add('');
    SQL.Add('SELECT * FROM @R');

    Active := True;

    Filtered := False;
  end;
  if (qryItems.RecordCount = 0) then
  begin
    Warn2(smsg + #13#10 + ' همه اقلام فراخوان نشده', 0);
    Abort;
  end;

  With qryItems do
    try
      DisableControls;
      First;
      qryTmps.Filter := FieldNameEntity + ' > 0 ';
      while not Eof do
      begin
        qryTmps.Filtered := False;
        qryTmps.Filtered := True;
        if not qryTmps.Locate('StuffCode', qryItemsStuffCode.AsLargeInt, [])
        then
        begin
          Warn2(smsg + #13#10 + qryItemsStuffCode.AsString, 0);
          Abort;
        end
        else
        begin
          qryTmps.edit;
          qryTmps.FieldByName(FieldNameEntity).AsFloat :=
            qryTmps.FieldByName(FieldNameEntity).AsFloat -
            qryItems.FieldByName(FieldNameEntity).AsFloat;
          qryTmps.Post;
        end;
        Next;
      end;
    finally
      EnableControls;
    end;

  With qryTmps do
  begin
    Filter := FieldNameEntity + ' <> 0 ';
    Filtered := True;
    if RecordCount <> 0 then
    begin
      qryItems.Locate('StuffCode', FieldByName('StuffCode').AsLargeInt, []);
      Warn2(smsg + #13#10 + 'مغایرت در تعداد' + FieldByName('StuffCode')
        .AsString, 0);
      Abort;
    end;
    Active := False;
  end;
end;

function TReciptsGrid2F.ReciptBe4PostCtrlEntAct(IsOnDelelte
  : Boolean = False): Boolean;
begin
  Result := True;
  With qryItems do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        Result := ControlEntity(CurrentEntity, CurrentWeight, qryItems,
          qryRecipts, qryinit, Form_InOut, Person3Active, MyEntityDisplayType,
          qryEntityCodeExpirationDate, IsOnDelelte);
        if not Result then
          Abort;
        Next;
      end;
    finally
      EnableControls;
    end;
end;

procedure TReciptsGrid2F.qryItemsBeforePost(DataSet: TDataSet);
var
  cf: Real;
  DeficitValue: Currency;
begin
  inherited;
  if (qryinit.FieldByName('DiscountEntryKind').AsInteger = 1) then
  begin
    if (qryRecipts.FieldByName('_Max4WaterCo').AsFloat > 0) and
      (DataSet.FieldByName('WaterCo').AsFloat > qryRecipts.FieldByName
      ('_Max4WaterCo').AsFloat) then
    begin
      Warn(Format('در صد تخفيف بيشتر از %f نمي تواند باشد',
        [qryRecipts.FieldByName('_Max4WaterCo').AsFloat]));
      Abort;
    end;

    DeficitValue := RoundTo(qryItems.FieldByName(FieldNamePrice).AsCurrency *
      qryItemsWaterCo.AsFloat / 100, 0);
    if (qryItemsDeficitValue.AsFloat > DeficitValue) then
    begin
      Warn(Format('مبلغ تخفيف بيشتر از %m نمي تواند باشد', [DeficitValue]));
      Abort;
    end;
  end;

  if qryinit.FieldByName('ConversionCoSerialFormula').AsInteger = 3 then
    if DataSet.FieldByName('TransFormID').AsInteger < 1 then
    begin
      BigMessage('فرمول ساخت وارد نشده است.', 1);
      Abort
    end;

  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').Value;

  if Not GetExcelAct then
    if (qryinit.FieldByName('ReciptIDEventKind').AsInteger = 1) and
      not(qryRecipts.state in [dsInsert]) then
      GetANewID(DataSet, IntToStr(formType), 'ReciptItems', 'ReciptItemID',
        qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger);

  if DataSet.FindField('_TopicCodeName') <> nil then
    DataSet.FieldByName('_TopicCodeName').Required :=
      Trim(DataSet.FieldByName('acc_TopicCode').AsString) <> '0';

  DataSet.FieldByName('_StuffName').Required := False;
  if (DataSet.FieldByName('_StuffName').IsNull) then
    try
      // Warn2('نام كالا وارد نشده'+qryItemsStuffCode.AsString,3000);
      DataSet.Cancel;
      if not AutoInsertPostInsert then
      begin
        okPanel.SetFocus;
        if qryinit.FieldByName('RecallType').AsInteger = 0 then
          Warn2('نام كالا وارد نشده' + qryItemsStuffCode.AsString, 3000);
      end;
      Abort
    except
      on E: Exception do
      begin
      end;

    end;

  if (DataSet.FieldByName(FieldNameEntity).AsFloat < 0) or
    (DataSet.FieldByName(FieldNameWeight).AsFloat < 0) or
    (DataSet.FieldByName(FieldNamePrice).AsCurrency < 0) then
    if not(formType in [2, 3]) then
    begin
      Warn('عدد منفي است.‏');
      Abort;
    end;
  if (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
    Integer(CHkControlEntity) <> 0) then
    if qryItemspreReciptItemID.AsInteger <> 0 then
      if FindRemain - DataSet.FieldByName(FieldNameEntity).AsFloat < 0 then
        raise Exception.Create
          ('مقدار فراخوانی شده نمی تواند بیشتر از مقدار اصلی باشد');

  TrimStringFields(qryItems);
  if not CheckRequiredFields(qryItems) then
    Abort;

  if not ValidateDatasetDatesRecipts(qryRecipts, qryinit) then
    Abort;

  if qryinit.FieldByName('ControlEntityActive').AsInteger <> 3 then
    if not ControlEntity(CurrentEntity, CurrentWeight, qryItems, qryRecipts,
      qryinit, Form_InOut, Person3Active, MyEntityDisplayType,
      qryEntityCodeExpirationDate) then
      Abort;

  // DataSet.FieldByName(FormInOut+'Entity').AsFloat:=roundto(DataSet.FieldByName(FormInOut+'Entity').AsFloat,-3);
  cf := RoundTo(DataSet.FieldByName(FieldNameWeight).AsFloat, -4);
  if cf <> DataSet.FieldByName(FieldNameWeight).AsFloat then
    DataSet.FieldByName(FieldNameWeight).AsFloat := cf;
  // DataSet.FieldByName('Total'+FormInOut+'Price').AsFloat:=roundto(DataSet.FieldByName('Total'+FormInOut+'Price').AsFloat,0);

  cf := RoundTo(DataSet.FieldByName('TotallSellPrice').AsFloat, 0);
  if cf <> DataSet.FieldByName('TotallSellPrice').AsFloat then
    DataSet.FieldByName('TotallSellPrice').AsCurrency := cf;

  DataSet.FieldByName('ControlCode').AsString :=
    ifthen(DataSet.FieldByName('ControlCode').IsNull, '0',
    DataSet.FieldByName('ControlCode').AsString);

  cf := RoundTo(DataSet.FieldByName('UnitSellPrice').AsFloat, RoundCount);
  if cf <> DataSet.FieldByName('UnitSellPrice').AsFloat then
    DataSet.FieldByName('UnitSellPrice').AsCurrency := cf;

  if not NonZeroControl then
    Abort;
  if Price_Read_Only(qryinit, qryItems) then
    Abort;
  SellPriceCheck(qryItems, qryinit);

  GetItemDateOFpreReciptItemID;

end;

procedure TReciptsGrid2F.qryItemsBeforeScroll(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  for i := 0 to StatusBar2.Panels.Count - 1 do
    StatusBar2.Panels[i].Text := EmptyStr;
end;

function TReciptsGrid2F.NonZeroControl;
begin
  Result := False;
  If (qryItems.FieldByName(FieldNameEntity).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [1, 4, 5, 6]) Then
  begin
    Warn(opt.EntityCaption + ' وارد شده نامعتبر است.');
    DBGrid1.SetFocus;
    exit;
  end; // if
  If (qryItems.FieldByName(FieldNameWeight).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [2, 4, 6, 7]) Then
  begin
    Warn(opt.WeightCaption + ' وارد شده نامعتبر است.');
    DBGrid1.SetFocus;
    exit;
  end; // if
  If (qryItems.FieldByName(FieldNamePrice).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [3, 5, 6, 7]) Then
  begin
    Warn('مبلغ وارد شده نامعتبر است.');
    DBGrid1.SetFocus;
    exit;
  end;
  // if
  Result := True;
end;

procedure TReciptsGrid2F.N4Click(Sender: TObject);
var
  ReciptID: Integer;
begin
  inherited;
  if get_response('آيا براي حذف كدهاي تكراري كالا مطمئن هستيد؟؟!!‏') <> mrYes
  then
    exit;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'DELETE FROM ReciptItems WHERE(ReciptItemID IN (SELECT MAX(ReciptItemID) AS ReciptItemID ';
    SQL.Add('FROM ReciptItems AS ReciptItems_1  GROUP BY ReciptID, StuffCode');
    SQL.Add('HAVING (ReciptID = ' + IntToStr(ReciptID) + ') ');
    SQL.Add('AND (COUNT(StuffCode) > 1)))');
    SQL.Add('and ServerID = ' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add('and YearID = ' + qryRecipts.FieldByName('YearID').AsString);
    BigMessage(IntToStr(ExecSQL) + ' كد تكراري  ' + Caption + '‌ حذف شد.', 2);
    Active := False;
    qryItems.Requery();
  end; // with
end;

procedure TReciptsGrid2F.qryReciptsAfterPost(DataSet: TDataSet);
var
  ReciptID, YearID, ServerID, ReciptItemID: Integer;
  s: string;
  // CallFormAutoInsertPostInsert: Boolean;
begin
  inherited;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  ReciptItemID := qryItemsReciptItemID.AsInteger;
  if qryItems.state in dsEditModes then
    qryItems.Post;

  try
    qryItems.UpdateBatch;
    DeleteFile(__AppData + UnsavedFileName);
    DeleteFile(__AppData + UnsavedFileName_M);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      // Warn(E.Message);
      if Not GetExcelAct then
        DataToExcel(qryItems);
      // BigMessage('در حال ذخيره فرم  لطفا صبر كنيد....', 0);
      // ReItemID(qryItems, qryRecipts, 'reciptitems', 'ReciptItemID',
      // IntToStr(formType), qryinit.FieldByName('StepCorrelate').AsInteger);
    end;

    // Abort;
  end; // try
  if (qryinit.FieldByName('RecallType').AsInteger = 16) then
    if DMf.adcBSell.InTransaction then
      DMf.adcBSell.CommitTrans;
  GetExcelAct := False;
  InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits, qry_Deficits4Print,
    qryinit.FieldByName('StepCorrelate').AsInteger);

  if qryinit.FieldByName('WorkflowID').AsInteger > 0 then
    WorkflowDmF.RunSomeWorkflow(qryinit.FieldByName('WorkflowID').AsInteger,
      qryRecipts, ppReport1, qryinit.FieldByName('PerformFileName').AsString,
      qryRecipts.FieldByName('ReciptNumber').AsString);

  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 1 then
    StuffCodeUnic(qryRecipts);

  UpdateStatusBar1;

  if (qryinit.FieldByName('AutoCorrelate').AsInteger = 1) and
    (qryinit.FieldByName('CorrelateReciptType').AsInteger > 0) then
    actCorrelateRecipt.Execute;

  if (qryinit.FieldByName('AutoCorrelateCo').AsInteger = 1) and
    (qryinit.FieldByName('ConversionCoSerial').AsInteger > 0) then
    actCorrelateConversionCo.Execute;

  if (qryinit.FieldByName('AutoStateChange').AsInteger = 0) and
    (qryRecipts.FieldByName('ReciptState').Value = 0) then
    AutoStateChange(qryRecipts, qryinit);

  if qryinit.FieldByName('AutoInsertPostInsert').AsInteger in [3] then
  begin
    if qryItems.RecordCount > 0 then
    begin
      actDeficits.Execute;
      if ReciptsPaymentsF.Enter(qryRecipts, qryinit, qryItems, FormOutput,
        _ReciptsPaymentsF) <> mrOk then
        Abort;
    end;
  end;
  if (qryinit.FieldByName('AutoInsertPostInsert').AsInteger > 0) then
  begin
    if (_ReciptsPaymentsF <> nil) and (_ReciptsPaymentsF.ModalResult = mrOk)
    then
      _ReciptsPaymentsF.qryReciptsPayments.UpdateBatch;
    _ReciptsPaymentsF.Free;
  end;

  if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
    actPrint1.Execute;

  s := qryItems.Sort;
  qryAllRecipts.Requery();
  qryAllRecipts.Locate('ReciptID;YearID;ServerID',
    VarArrayOf([ReciptID, YearID, ServerID]), []);
  qryItems.Sort := s;
  if ReciptItemID <> 0 then
    qryItems.Locate('ReciptItemID', ReciptItemID, []);

  qryRecipts.EnableControls;
  chkPerson3ControlWeightCustomer(qryinit, qryRecipts);

  if getresponseShow then
  begin
    // if get_response('تغييرات ذخيره شوند؟')<>mrYes then abort;
    BigMessage('ثبت شد.', 1);
  end;

  if DataSet_Insert then
  begin
    DataSet_Insert := False;
    actSmsSend.Execute;
  end;

  try
    DMf.adcBSell.Execute
      (Format('DELETE FROM StuffCodeTemp WHERE (ReciptType = %d) AND (UserID = %d)',
      [formType, User.id]));
  except
    on E: Exception do
    begin
      add2log('D>>>' + E.Message);
    end;
  end;

end;

function TReciptsGrid2F.OkDeleteMaster(ReciptID: String;
  ChkParentCo: Boolean): Boolean;
var
  ParentFieldName: String;
begin
  ReciptID4ParentReciptID := '';
  ParentFieldName := 'ParentReciptID';
  if ChkParentCo then
  begin
    ParentFieldName := 'ParentCoReciptID';
    Result := qryRecipts.FieldByName('ReciptID').AsInteger >
      qryRecipts.FieldByName('ParentCoReciptID').AsInteger;
    if Result then
    begin
      ReciptID4ParentReciptID := qryRecipts.FieldByName('ReciptID').AsString;
      exit;
    end;
  end
  else if ChkIsStepCorrelate(qryRecipts) then
  begin
    Result := True;
    ReciptID4ParentReciptID := qryRecipts.FieldByName('ReciptID').AsString;
    exit;
  end;

  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption '
      + 'FROM Recipts INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType '
      + 'WHERE (' + ParentFieldName + ' = ' + ReciptID + ')';
    SQL.Add('and ServerID = ' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add('and YearID = ' + qryRecipts.FieldByName('YearID').AsString);
    Active := True;
    Result := IsEmpty;
    // Warn(ReciptID);
    if not Result then
      Warn('از اين ' + qryinit.FieldByName('ReciptCaption').AsString + ' در ' +
        Fields[2].AsString + '  با شماره ' + Fields[0].AsString + ' و تاريخ ' +
        Fields[1].AsString + '  استفاده شده است و قابل حذف نيست.‏',
        mtInformation);
    Active := False;
  end; // with
end;

procedure TReciptsGrid2F.qryItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (qryinit.FieldByName('RecallType').AsInteger = 16) then
    if not DMf.adcBSell.InTransaction then
      DMf.adcBSell.BeginTrans;
  if not OkDeleteItem(qryItems.FieldByName('ReciptItemID').AsString) then
    Abort;
  if not OkDelete(qryRecipts, False, qryItemsReciptItemID.AsInteger) then
    Abort;

  if qryinit.FieldByName('ControlEntityActive').AsInteger = 4 then
  begin
    if not ControlEntity(CurrentEntity, CurrentWeight, qryItems, qryRecipts,
      qryinit, Form_InOut, Person3Active, MyEntityDisplayType,
      qryEntityCodeExpirationDate, True) then
      Abort;
  end;

  if get_response(' آيا براي حذف كالا  ' + qryItemsStuffCode.AsString +
    DMf.s_Msm + '  مطمئن هستيد؟') <> mrYes then
    Abort
  else
    EditBeforDeleteRecallType16(qryinit, qryRecipts, qryItems, True);

end;

function TReciptsGrid2F.OkDeleteItem(ReciptItemID: String): Boolean;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption '
      + 'FROM   Recipts INNER JOIN ' +
      'ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID INNER JOIN '
      + 'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType ' +
      'WHERE  ReciptItems.preReciptItemID =' + ifthen(ReciptItemID = '', '0',
      ReciptItemID);
    SQL.Add('and Recipts.ServerID = ' + qryRecipts.FieldByName('ServerID')
      .AsString);
    SQL.Add('and Recipts.YearID = ' + qryRecipts.FieldByName('YearID')
      .AsString);
    Active := True;
    Result := IsEmpty;
    if not Result then
      Warn('از اين كالا در ' + Fields[2].AsString + '  با شماره ' +
        Fields[0].AsString + ' و تاريخ ' + Fields[1].AsString +
        '  استفاده شده است و قابل حذف نيست.‏', mtInformation);
    Active := False;
  end;
  // with
end;

procedure TReciptsGrid2F.qryItemsacc_TopicCodeChange(Sender: TField);
begin
  inherited;
  // Sender.Tag := StrToInt64(Trim(Sender.AsString))
end;

procedure TReciptsGrid2F.qryItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كالا حذف شد.', 1);
end;

procedure TReciptsGrid2F.qryReciptsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if get_response('تغييرات لغو شوند؟') <> mrYes then
    Abort;
  qryItems.Cancel;
  qryItems.Requery();
end;

procedure TReciptsGrid2F.qryItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  // StatusBar2.Panels[0].Text:='';  StatusBar2.Panels[1].Text:='';  StatusBar2.Panels[2].Text:='';
  // Timer1.Enabled:=False;
  // Image1.Visible:=False;
  // if qryRecipts.State=dsInsert then
  SaveArticlesToFile;
  If PnlPerson2.Visible then
    ServiceValue(qryRecipts, qryItems);
  if WeightDisplay then
    StatusBar1.Panels[1].Text := LeftStr(opt.WeightCaption, 3) + '=' +
      FloatToStr(CalcSumWeight);
  if EntityDisplay then
    StatusBar1.Panels[2].Text := LeftStr(opt.EntityCaption, 5) + '=' +
      CurrToStr(Calc_SumFileds('Entity'));
  if PriceOn_StoreType then
    StatusBar1.Panels[0].Text := CurrToStrF(Abs(Calc_SumFileds('Price')),
      ffCurrency, 0) + ' ريال '
  else
    StatusBar1.Panels[0].Text := '';

end;

procedure TReciptsGrid2F.qryReciptsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  // and not System4Edit
  // qryRecipts.AfterScroll:=nil;
  // if not DMf.CheckUser(qryinit.FieldByName('ReciptType').AsString, 'Recipts',
  // 'ReciptID', qryRecipts) then
  // Abort;
  if ChkFlowForms(qryRecipts) then
    Abort;

  if not CheckDay4Edit(qryinit, qryRecipts) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('EditLevelID'), qryRecipts) then
    Abort;
  if not AllStateControls(qryRecipts, qryItems, qryinit, 'Recipt') then
    Abort;

  if not OkEditMaster('ParentReciptID',
    qryinit.FieldByName('CorrelateReciptType')) then
    Abort;
  if not OkEditMaster('ParentCoReciptID',
    qryinit.FieldByName('ConversionCoSerial')) then
    Abort;

  // if not OkEditMasterCo(qryRecipts, qryinit, Edit4Deficits) then
  // Abort;

  // if qryinit.FieldByName('UserSecurityCheckActive').Value = 1 then
  if UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive').AsInteger,
    UserRegistrar) then
    if ((qryReciptsOperatorID.AsInteger = User.id) or (User.admin)) then
    begin
    end // if
    else
    begin
      Warn('ويرايش اين فرم در سطح دسترسي کاربر ثبت کننده آن مي‌باشد.');
      Abort;
    end;
  // else

  CHKPriorityReciptDate(qryRecipts, qryinit);

end;

function TReciptsGrid2F.OkEditMaster(ParentCoReciptID: string;
  ReciptTypeCo: TField): Boolean;
var
  i: Integer;
begin
  // قابل ويرايش نباشد
  // مبلغ قابل ويرايش باشد
  // بصورت كلي قابل ويرايش باشد
  // بصورت كلي قابل ويرايش و حذف باشد(پس از هر ويرايش فرم مرتبط ثبت شده حذف كردد)
  // تاریخ قابل ويرايش باشد
  if qryinit.FieldByName('Correlate4EditActive').AsInteger in [0, 1, 4, 5] then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT Recipts.ReciptNumber, Recipts.ReciptDate,  ';
      SQL.Add('ReciptTypes.ReciptCaption FROM Recipts INNER JOIN ReciptTypes');
      SQL.Add('ON Recipts.ReciptType = ReciptTypes.ReciptType ');
      if ReciptTypeCo.AsInteger = 0 then
      begin
        SQL.Add(Format('WHERE (Recipts.%s = %d)', [ParentCoReciptID,
          qryRecipts.FieldByName('ReciptID').AsInteger]));
        SQL.Add(Format('AND (ReciptTypes.%s = %d)', [ReciptTypeCo.FieldName,
          formType]));
      end
      else
      begin
        SQL.Add(Format('WHERE (Recipts.%s = %d)',
          ['ReciptID', qryRecipts.FieldByName(ParentCoReciptID).AsInteger]));
        SQL.Add(Format('AND (ReciptTypes.ReciptType = %d)',
          [ReciptTypeCo.AsInteger]));
      end;
      SQL.Add(Format('and (Recipts.ServerID = %d)',
        [qryRecipts.FieldByName('ServerID').AsInteger]));
      SQL.Add(Format('and (Recipts.YearID = %d)',
        [qryRecipts.FieldByName('YearID').AsInteger]));

      // ShowQryParam(DMf.qryTmpTmp);
      Active := True;
      Result := IsEmpty;
      if not Result then
        case qryinit.FieldByName('Correlate4EditActive').AsInteger of
          0:
            begin
              Result := False;

              if Edit4Deficits then
                Result := True
              else
                Warn('از اين ' + qryinit.FieldByName('ReciptCaption').AsString +
                  ' در ' + Fields[2].AsString + '  با شماره ' +
                  Fields[0].AsString + ' و تاريخ ' + Fields[1].AsString +
                  '  استفاده شده است و قابل ويرايش نيست.‏');
            end;
          1, 4, 5:
            begin
              With qryRecipts do
              begin
                for i := 0 to FieldCount - 1 do
                  Fields[i].ReadOnly := True;
                FieldByName('ModifyDate').ReadOnly := False;
                FieldByName('ReciptValue').ReadOnly := False;
                FieldByName('AidDate').ReadOnly := False;
                FieldByName('DefaultDate').ReadOnly := False;

                FieldByName('ExpireDate').ReadOnly := False;
                FieldByName('DocDate').ReadOnly := False;

                if qryinit.FieldByName('Correlate4EditActive').AsInteger = 4
                then
                  FieldByName('ReciptDate').ReadOnly := False;
                if qryinit.FieldByName('Correlate4EditActive').AsInteger = 5
                then
                  FieldByName('AidNumber').ReadOnly := False;
              end;
              With qryItems do
              begin
                for i := 0 to FieldCount - 1 do
                  Fields[i].ReadOnly := True;
                FieldByName('ReciptID').ReadOnly := False;

                if qryinit.FieldByName('Correlate4EditActive').AsInteger = 1
                then
                begin
                  FieldByName('UnitSellPrice').ReadOnly := False;
                  FieldByName(FieldNamePrice).ReadOnly := False;

                  // FieldByName('InputWeight').ReadOnly := False;   // sahand  .
                  // FieldByName('OutputWeight').ReadOnly := False;  // sahand  .
                  FieldByName('WaterCo').ReadOnly := False; // sahand  .

                  // FieldByName('InputEntity').ReadOnly:=False;
                  // FieldByName('OutputEntity').ReadOnly:=False;
                  FieldByName('ControlCode').ReadOnly := False;
                  FieldByName('AidDate').ReadOnly := False;
                  FieldByName('ItemDate').ReadOnly := False;
                  FieldByName('DeficitValue').ReadOnly := False;
                  FieldByName('DeficitValue2').ReadOnly := False;
                  FieldByName('DeficitValue3').ReadOnly := False;
                  FieldByName('TotalStandardRate').ReadOnly := False;
                  FieldByName('StandardRate').ReadOnly := False;
                  FieldByName('TotallSellPrice').ReadOnly := False;
                  if qryinit.FieldByName('CommissionActive').AsInteger > 0 then
                    FieldByName('UnitCommission').ReadOnly := False;
                  if qryinit.FieldByName('VATActive').AsInteger = 1 then
                  begin
                    FieldByName('TaxCo').ReadOnly := False;
                    FieldByName('TaxValue').ReadOnly := False;
                  end;

                end;

                // EdtIOWeight.ReadOnly:=True;
                // EdtControlCode.ReadOnly:=True;
              end; // qryItems
              Result := True;
            end;
          2, 3:
            Result := True;
        end; // case
      Active := False;
    end
  else
    Result := True;

  qryItems.FieldByName('FirstUser').ReadOnly := False;
  qryItems.FieldByName('LastUser').ReadOnly := False;
  qryRecipts.FieldByName('FirstUser').ReadOnly := False;
  qryRecipts.FieldByName('LastUser').ReadOnly := False;
end;

procedure TReciptsGrid2F.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryRecipts.state in dsEditModes) then
    Abort;

  if (qryinit.FieldByName('RecallEditKind').AsInteger = 7) and
    (qryItemsParentForm.AsString <> EmptyStr) then
  begin
    Warn('از اطلاعات این ردیف در فراخوانی استفاده شده است و قابل ویرایش نمی باشد.');
    Abort;
  end;
end;

procedure TReciptsGrid2F.PawsFieldsActive;
var
  b: Boolean;
begin
  b := qryinit.FieldByName('PawsFieldsActive').AsInteger in [2, 3, 4];
  b := b and (qryRecipts_StoreKind.AsInteger in [1, 3]);
  setColumns2(DBGrid1, b, 'Article');

  b := qryinit.FieldByName('PawsFieldsActive').AsInteger in [2, 3];
  b := b and (qryRecipts_StoreKind.AsInteger in [1, 3]);
  setColumns2(DBGrid1, b, 'Wage');
  setColumns2(DBGrid1, b, 'Scoria');
  if b and (qryRecipts_StoreKind.AsInteger = 1) then
    setColumns2(DBGrid1, False, 'TotallSellPrice');
end;

procedure TReciptsGrid2F.qryReciptsAfterScroll(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  try
    EdtRNum.Hint := qryReciptsReciptID.AsString;
    // qryRecipts.DisableControls;
    // qryItems.DisableControls;
    ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, lblWarn);

    PawsFieldsActive;

    PriceOn_StoreType := PriceOnStoreType(qryReciptsStoreID.AsInteger, DBGrid1,
      qryItems, qryinit.FieldByName('StoreKindProductModel').AsString);
    b := PriceOn_StoreType and
      (qryinit.FieldByName('AccCodingShow').AsInteger > 0);

    b := b and ((((AccessForm and Integer(akEditAccCode) <> 0)) or User.admin));

    GrpBoxAccount.Visible := b;
    setColumns2(DBGrid1, b AND (qryinit.FieldByName('TopicCodeActive')
      .AsInteger = 1), 'acc_TopicCode');
    setColumns2(DBGrid1, b AND (qryinit.FieldByName('DetailCodeActive')
      .AsInteger = 1), 'acc_DetailCode');
    setColumns2(DBGrid1, b AND (qryinit.FieldByName('CTopicCode1Active')
      .AsInteger = 1), 'acc_CTopicCode');
    setColumns2(DBGrid1, b and CTopicCode2Active AND
      (qryinit.FieldByName('CTopicCode2Active').AsInteger = 1),
      'acc_CTopicCode2');

    setColumns2(DBGrid1, b and CTopicCode3Active AND
      (qryinit.FieldByName('CTopicCode3Active').AsInteger = 1),
      'acc_CTopicCode3');

    with qryItems do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
        .FieldByName('YearID').AsInteger;
      Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Active := True;
      // Last;
    end; // with

    if qryinit.FieldByName('ConversionCoSerialFormula').AsInteger > 1 then
      with qryTransFormItems do
      begin
        Active := False;
        Parameters.ParamByName('ReciptID').Value :=
          qryItems.FieldByName('ReciptID').AsInteger;
        Parameters.ParamByName('YearID').Value := qryItems.FieldByName('YearID')
          .AsInteger;
        Parameters.ParamByName('ServerID').Value :=
          qryItems.FieldByName('ServerID').AsInteger;
        Active := True;
      end;

    qryCustActive(qryCust1, qryRecipts.FieldByName('PersonID1').AsInteger);
    qryCustActive(qryCust2, qryRecipts.FieldByName('PersonID2').AsInteger);
    qryCustActive(qryCust3, qryRecipts.FieldByName('PersonID3').AsInteger);
    qryCustActive(qryCust4, qryRecipts.FieldByName('PersonID4').AsInteger);

    qryCustActive(qryCustManag1, qryRecipts.FieldByName('PersonID1').AsInteger);
    qryCustActive(qryCustManag2, qryRecipts.FieldByName('PersonID2').AsInteger);
    qryCustActive(qryCustManag3, qryRecipts.FieldByName('PersonID3').AsInteger);
    qryCustActive(qryCustManag4, qryRecipts.FieldByName('PersonID4').AsInteger);

    qryGroupDeficitIDActive(qryGroupDeficitID, qryRecipts);

    // SumGrid1.Active := False;
    // SumGrid1.Active := True;
    with qryReciptOnFormsRange do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
        .FieldByName('YearID').AsInteger;
      Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Active := True;
    end; // with
    with qry_Deficits4Print do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
        .FieldByName('YearID').AsInteger;
      Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Active := True;
    end; // with
    with qry_Deficits4PrintID10 do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
        .FieldByName('YearID').AsInteger;
      Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Active := True;
    end; // with
    with qry_Deficits do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
        .FieldByName('YearID').AsInteger;
      Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Active := True;
    end; // with
    with qryReciptsPayments do
    begin
      Active := False;
      Parameters := qry_Deficits.Parameters;
      Active := True;
    end; // with

    if qryinit.FieldByName('UseOtherActive').AsInteger = 1 then
      with qryUseOthers4Print do
      begin
        Active := False;
        Parameters.ParamByName('UseOtherID').Value := TADOQuery(DataSet)
          .FieldByName('UseOtherID').AsString;
        Active := True;
      end; // with
    if (DataSet.state = dsInsert) then
      CheckUnsaved;
    Timer1.Enabled := qryRecipts.FieldByName('ReciptState').AsInteger = 3;
    if Timer1.Enabled then
      WriteText(LblStateChang.Caption, 1, 60, False);
    LblStateChang.Visible := Timer1.Enabled;

    UpdateStatusBar1;

    LblRecNo.Hint := Format('' + Caption + ' %d از %d',
      [DataSet.RecNo, DataSet.RecordCount]);

    actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >=
      1) and ReciptStateDeficitsVisible(qryRecipts) and
      (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1);

    if (qryinit.FieldByName('Person2Active').AsInteger = 1) then
    begin
      dbchkPersonID2Bed.Visible := qryRecipts.FieldByName('_SellsDefaultState')
        .AsInteger > 1;
    end;

    // if qryinit.FieldByName('ChekingTaxPrint').AsInteger = 1 then
    // actPrint1.Visible := SumGrid1.GetValueField('TaxValue') <= 0;
    if qryinit.FieldByName('ChekingTaxPrint').AsInteger = 1 then
      if DBGrid1.FindFieldColumn('TaxValue') <> nil then
        actPrint1.Visible := DBGrid1.FieldColumns['TaxValue']
          .Footer.SumValue <= 0;

  finally
    // qryRecipts.EnableControls;
    // qryItems.EnableControls;
  end;

  if (AutoInsertPostInsert) then
  /// Here is qryRecipts AfterScroll
  begin
    try
      DBGrid1.SetFocus;
      DBGrid1.SelectedIndex := 0;
    except
      on E: Exception do
    end;
  end;

  DBTextPersonID1.Hint := qryRecipts_PersonAddress.AsString + #13#10 +
    qryRecipts_Mobile.AsString + #13#10 + qryRecipts_PersonFax.AsString + #13#10
    + qryRecipts_MasirText.AsString + #13#10 +
    qryRecipts_CustomersDiscountNote.AsString + #13#10 +
    qryRecipts_NationalID.AsString;

  // ____________________________________________________________________________
  // اگر وضعيت 5 يا 4 بود عنوان ان بشود "ثبت موقت "
  // اگر وضعيت 0 بود عنوان ان بشود "قطعي کردن "
  // اگر وضعيت 1 بود و کاربر "مقداري و ريالي بود "عنوان ان بشود "دائم نمودن"
  // غير از موارد فوق کلا خاموش شود .
  actChangeState.Enabled := qryinit.FieldByName('AutoStateChange').AsInteger
    in [3, 4];
  case qryReciptsReciptState.AsInteger of
    4, 5:
      begin
        actChangeState.Caption := 'ثبت موقت';
        actChangeState.Visible := True;
      end;
    0:
      begin
        actChangeState.Caption := 'قطعي کردن';
        actChangeState.Visible := True;

      end;
    1:
      begin
        actChangeState.Caption := 'دائم نمودن';
        actChangeState.Visible := PriceOn_StoreType
      end;
  else
    actChangeState.Visible := False;
  end;
  // ____________________________________________________________________________
  PrintTax(qryinit, qryItems, cliBarcode);
  mnuCalcGiftItems.Checked := (qryReciptsCalcGiftItems.AsBoolean or
    qryReciptsCalcGiftItems.IsNull);

  qryEntityCodeExpirationDate.Close;

end;

procedure TReciptsGrid2F.actChangerExecute(Sender: TObject);
begin
  inherited;
  ChangerF.ShowChanger(qryItems);
end;

procedure TReciptsGrid2F.actChangeStateExecute(Sender: TObject);
var
  ReciptID, ServerID, YearID: Integer;
begin
  inherited;
  // ____________________________________________________________________________
  // اگر وضعيت 5 يا 4 بود عنوان ان بشود "ثبت موقت "
  // اگر وضعيت 0 بود عنوان ان بشود "قطعي کردن "
  // اگر وضعيت 1 بود و کاربر "مقداري و ريالي بود "عنوان ان بشود "دائم نمودن"
  // غير از موارد فوق کلا خاموش شود .
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;
  if qryinit.FieldByName('RecallType').AsInteger = 19 then
    ReciptBe4PostRecallType19;
  if qryinit.FieldByName('ControlEntityActive').AsInteger = 3 then
    if not ReciptBe4PostCtrlEntAct then
      Abort;

  with DMf.qryTmpTmp do
  begin
    Active := False;
    case qryReciptsReciptState.AsInteger of
      4, 5:
        begin
          // SQL.Text := 'UPDATE Recipts SET ReciptState = 0 ';
          qryRecipts.edit;
          ReciptBe4PostCtrlEntAct;
          qryReciptsReciptState.AsInteger := 0;
          qryRecipts.Post;
          exit;
        end;
      0:
        SQL.Text := 'UPDATE Recipts SET ReciptState = 1 ';
    else
      SQL.Text := 'UPDATE Recipts SET ReciptState = 2 ';
    end;
    SQL.Add(Format(' WHERE (ReciptID = %d)', [ReciptID]));
    SQL.Add(Format('AND (ServerID = %d)', [ServerID]));
    SQL.Add(Format('AND (YearID = %d)', [YearID]));

    if ExecSQL > 0 then
      BigMessage('انجام شد.', 1)
    else
      BigMessage('اشکال در ثبت', 1);
    qryAllRecipts.First;
    qryAllRecipts.Locate('ReciptID;ServerID;YearID',
      VarArrayOf([ReciptID, ServerID, YearID]), []);
    Active := False;
  end;
end;

procedure TReciptsGrid2F.actChangStuffExecute(Sender: TObject);
begin
  inherited;
  With qryItems do
    try
      // DisableControls;
      First;
      while not Eof do
      begin
        if qryItemsProductCode.AsInteger = 0 then
        begin
          edit;
          qryItemsStuffCodeChange(qryItemsStuffCode);
          Post;
        end;
        Next;
      end;
    finally
      EnableControls;
    end;
end;

procedure TReciptsGrid2F.actSearchExecute(Sender: TObject);
var
  Results: array [0 .. 15] of String;
  txt, TxtFieldOutIn: String;
  b: Boolean;
begin
  inherited;
  if opt.StuffCodingKind in [1, 2] then
  begin
    b := special_SearchF.SearchCode(DMf.adcBSell, ' كالاها  ',
      ' SELECT     ReciptItems.ReciptItemID, ReciptItems.StuffCode, StuffCoding.c_StuffName, ReciptItems.OutputEntity + ReciptItems.InputEntity AS Entity, '
      + ' ReciptItems.OutputWeight + ReciptItems.InputWeight AS Weight, ReciptItems.TotalOutputPrice + ReciptItems.TotalInputPrice AS Price, Units.UnitName, '
      + ' StuffCoding.c_StuffTecInfo, StuffCoding.sd2 AS chapDate, StuffCoding.sd1 AS tabageh, nevisandeh.Name AS nevisandeh, motarjem.Name AS motarjem, '
      + ' gateketab.Name AS gateketab, StuffCoding.SellPrice1, PakhshCompany.Name AS PakhshCompany, noejeld.Name AS noejeldName '
      + ' FROM         ReciptItems INNER JOIN ' +
      ' StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN '
      + ' Units ON StuffCoding.n_UnitCode = Units.UnitCode LEFT OUTER JOIN ' +
      ' LookUps4Type(303) AS nevisandeh ON StuffCoding.st3 = nevisandeh.Code LEFT OUTER JOIN '
      + ' LookUps4Type(305) AS motarjem ON StuffCoding.st5 = motarjem.Code LEFT OUTER JOIN '
      + ' LookUps4Type(311) AS gateketab ON StuffCoding.st11 = gateketab.Code LEFT OUTER JOIN '
      + ' LookUps4Type(312) AS noejeld ON StuffCoding.st12 = noejeld.Code LEFT OUTER JOIN '
      + ' LookUps4Type(313) AS PakhshCompany ON StuffCoding.st13 = PakhshCompany.Code '
      + 'WHERE     ReciptItems.ReciptID =' + qryReciptsReciptID.AsString,
      ['', 'كد كتاب', 'عنوان كتاب', opt.EntityCaption, opt.WeightCaption,
      'مبلغ', 'واحد', 'مشخصات فني', 'سال چاپ', 'طبقه', 'نام نويسنده', 'مترجم',
      'قطع كتاب', 'بهاي فروش', 'شركت پخش', 'نوع جلد'], Results,
      [0, 50, 100, 50, ifthen(WeightDisplay, 50, 0), 50, 50, 50, 50, 50, 50, 50,
      50, 50, 50, 50], alLeft, 3);
    if b then
    begin
      if not(qryItems.state in dsEditModes) then
        qryItems.Locate('ReciptItemID', Results[0], []);
    end;
    exit;
  end;
  TxtFieldOutIn := ifthen(FormOutput,
    'ReciptItems.OutputEntity,ReciptItems.OutputWeight,ReciptItems.TotalOutputPrice ',
    'ReciptItems.InputEntity,ReciptItems.InputWeight,ReciptItems.TotalInputPrice ');
  txt := 'SELECT ReciptItems.ReciptItemID,ReciptItems.StuffCode,StuffCoding.c_StuffName,'
    + TxtFieldOutIn +
    'FROM ReciptItems INNER JOIN StuffCoding ON ReciptItems.StuffCode=StuffCoding.c_StuffCode  '
    + 'WHERE ReciptItems.ReciptID = ' + qryReciptsReciptID.AsString;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
    ['', 'کد كالا', 'نام كالا', opt.EntityCaption, opt.WeightCaption, 'بها'],
    Results, [0, 50, 150, 50, 50, 100], alLeft);
  if b then
    qryItems.Locate('ReciptItemID', Results[0], []);
end;

procedure TReciptsGrid2F.CmbSecondTypeDblClick(Sender: TObject);
begin
  inherited;
  if (qryRecipts.state in dsEditModes) then
    qryRecipts.Post;
  SaveConfig(APPID, APPBank.Name + '_ReciptsGridF_SecondType' +
    IntToStr(formType), qryReciptsSecondType.AsString);
  Warn2('پیش فرض نوع اطلاعات تنظیم شد', 1000);
end;

procedure TReciptsGrid2F.CmbSecondTypeEnter(Sender: TObject);
begin
  inherited;
  (Sender as TDBComboBox).DroppedDown := True;
end;

procedure TReciptsGrid2F.qryItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (opt.showBig) and (showBigOnField(DBGrid1)) then
    showBigNum(DBGrid1.Columns[DBGrid1.SelectedIndex].Field.AsCurrency,
      aBigPanel, horoofPanel);
  // IF qryinit.FieldByName('PersonID1OnDetailActive').AsInteger
  // in [0, 1, 2, 3] THEN
  // qryCustActive(qryCustomer2Detail, qryItems.FieldByName('PersonID1')
  // .AsInteger);
  qryCustActive(qryCustD, qryItems.FieldByName('PersonID1').AsInteger);
  qryCustActive(qryCustManagD, qryItems.FieldByName('PersonID1').AsInteger);

end;

procedure TReciptsGrid2F.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsGrid2F.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TReciptsGrid2F.qryItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If not ADDItemChecked(qryRecipts) then
    Abort;
  If LimitRecord(qryItems, qryinit, True) then
    Abort;
  if not(qryRecipts.state in dsEditModes) then
    Abort;
  AidNumber := DataSet.FieldByName('AidNumber').AsCurrency;

  AidDate_ := DataSet.FieldByName('AidDate').AsString;
end;

procedure TReciptsGrid2F.qryItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.SelectedRows.Clear;
end;

procedure TReciptsGrid2F.qryItemsUnitCommissionChange(Sender: TField);
begin
  inherited;
  Sender.OnChange := nil;
  EndOfPrice(Sender.FieldName);
  Sender.OnChange := qryItemsUnitCommissionChange;
end;

procedure TReciptsGrid2F.qryItemsUnitSellPriceChange(Sender: TField);
begin
  inherited;
  try
    qryItemsUnitSellPrice.OnChange := nil;
    ChangeUnitSellPrice;
    StandardRateActiveUnitSellPriceChange(qryinit, qryItems, LimitFi,
      MyEntityDisplayType);
  finally
    qryItemsUnitSellPrice.OnChange := qryItemsUnitSellPriceChange;
  end;

end;

procedure TReciptsGrid2F.ChangeTotalInputPrice;
var
  Total, Weight, Entity: Currency;
  SellPrice: Real;
begin
  inherited;
  if not(qryRecipts.state in dsEditModes) or not(qryItems.state in dsEditModes)
  then
    exit;

  if (UnitPriceReadOnly in [0, 2]) then
  begin
    Entity := qryItems.FieldByName(FieldNameEntity).AsCurrency;
    // SellPrice := qryItemsUnitSellPrice.AsFloat;
    Total := qryItems.FieldByName(FieldNamePrice).AsCurrency;
    Weight := qryItems.FieldByName(FieldNameWeight).AsCurrency;
    Weight := RoundTo(Weight, -3);
    if Entity = 0 then
      Entity := 1;
    if Weight = 0 then
      Weight := 1;
    LimitFi := GetLimitFi(qryItems);
    SellPrice := 0;
    case MyEntityDisplayType of
      0:
        SellPrice := Total / Entity;
      1:
        SellPrice := Total / Weight;
      2:
        if Total >= LimitFi * Entity then
          // SellPrice >= LimitFi then
          SellPrice := Total / Weight
        else
          SellPrice := Total / Entity;
      3:
        if Total >= LimitFi * Weight then
          // if SellPrice >= LimitFi then
          SellPrice := Total / Entity
        else
          SellPrice := Total / Weight;
    end;
    // case
    SellPrice := RoundTo(SellPrice, RoundCount);

    // فی =  بهای واحد ارز (Detail) * ریال/ارز (Master)
    if (qryinit.FieldByName('ArzActive').AsInteger = 3) then
    begin
      SellPrice := qryRecipts.FieldByName('RialsEqual').AsFloat *
        qryItems.FieldByName('ArzRate').AsFloat;
      SellPrice := RoundTo(SellPrice, -3);
    end;
    // فی =  بهای واحد ارز (Detail) * ریال/ارز (Master)

    if SellPrice <> qryItemsUnitSellPrice.AsFloat then
      qryItemsUnitSellPrice.AsFloat := SellPrice;
  end; // if
end;

procedure TReciptsGrid2F.ChangeUnitSellPrice;
var
  Total, Weight, Entity: Currency;
  SellPrice, ArzAmount: Real;
begin
  if not(qryRecipts.state in dsEditModes) or not(qryItems.state in dsEditModes)
  then
    exit;
  SellPrice := qryItemsUnitSellPrice.AsFloat;
  Entity := qryItems.FieldByName(FieldNameEntity).AsCurrency;
  if (qryinit.FieldByName('ArzActive').AsInteger = 1) and
    (qryinit.FieldByName('ArzTypeID').AsInteger <> 0) then
  begin
    qryItems.FieldByName('ArzAmount').AsFloat :=
      RoundTo(Entity * SellPrice, RoundCount);
    qryItems.FieldByName(FieldNamePrice).AsCurrency :=
      qryItems.FieldByName('ArzAmount').AsFloat * qryRecipts.FieldByName
      ('RialsEqual').AsFloat;
    exit;
  end;
  Weight := qryItems.FieldByName(FieldNameWeight).AsCurrency;
  Weight := RoundTo(Weight, -3);
  Total := 0;

  if UnitPriceReadOnly in [1, 2] then
  begin
    LimitFi := GetLimitFi(qryItems);
    case MyEntityDisplayType of
      0:
        Total := Entity * SellPrice;
      1:
        Total := Weight * SellPrice;
      2:
        if SellPrice >= LimitFi then
          Total := Weight * SellPrice
        else
          Total := Entity * SellPrice;
      3:
        if SellPrice >= LimitFi then
          Total := Entity * SellPrice
        else
          Total := Weight * SellPrice;
    end; // case
    Total := RoundTo(Total, 0);
    if Total <> qryItems.FieldByName(FieldNamePrice).AsCurrency then
      qryItems.FieldByName(FieldNamePrice).AsCurrency := Total;
  end; // if

  if (qryinit.FieldByName('ArzActive').AsInteger = 2) and
    (qryItems.FieldByName('ArzRate').AsInteger <> 0) then
  begin
    ArzAmount := Total / qryItems.FieldByName('ArzRate').AsFloat;
    ArzAmount := RoundTo(ArzAmount, -3);
    qryItems.FieldByName('ArzAmount').AsFloat := ArzAmount;
  end;

  // مقدار ارز (Detail) =  تعداد *  بهای واحد ارز (Detail)
  if (qryinit.FieldByName('ArzActive').AsInteger = 3) then
  begin
    ArzAmount := Entity * qryItems.FieldByName('ArzRate').AsFloat;
    ArzAmount := RoundTo(ArzAmount, -3);
    qryItems.FieldByName('ArzAmount').AsFloat := ArzAmount;
  end;

end;

procedure TReciptsGrid2F.WaterCoSetZero;
begin
  if actAutoPrice.Visible then
    qryItems.FieldByName('WaterCo').AsFloat := 0;
end;

procedure TReciptsGrid2F.qryItemsInputEntityChange(Sender: TField);
var
  r: Real;
begin
  inherited; // 1    InputWeight
  try
    OnChangeOff;
    WaterCoSetZero;
    if (not qryItemsInputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [0, 2]) then
    begin
      r := RoundTo((qryItemsInputEntity.AsFloat) * (qryItems_Carton.AsFloat),
        RoundCount);
      if qryItemsInputWeight.AsFloat <> r then
        qryItemsInputWeight.AsFloat := r
    end;

    if (not qryItemsInputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [3, 6]) then
    /// add [4]
    begin
      r := RoundTo((qryItemsInputEntity.AsFloat) / (qryItems_Carton.AsFloat),
        RoundCount);
      if qryItemsInputWeight.AsFloat <> r then
        qryItemsInputWeight.AsFloat := r
    end;

    if UnitPriceReadOnly in [0, 2] then
      ChangeTotalInputPrice;

    if UnitPriceReadOnly in [1, 2] then
      ChangeUnitSellPrice;

    StandardRateActiveReciptsGrid(qryinit, qryItems);
    qryItemsLength_WidthstuffdiameterChange(nil);

  finally
    OnChangeOn;
  end;

end;

procedure TReciptsGrid2F.qryItemsOutputEntityChange(Sender: TField);
var
  r: Real;
begin
  inherited; // 2  OutputWeight
  try
    OnChangeOff;
    WaterCoSetZero;
    if (not qryItemsOutputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [0, 2]) then
    begin
      r := RoundTo((qryItemsOutputEntity.AsFloat) * (qryItems_Carton.AsFloat),
        RoundCount);
      if qryItemsOutputWeight.AsFloat <> r then
        qryItemsOutputWeight.AsFloat := r;
    end;

    if (not qryItemsOutputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [3, 6]) then
    /// add [4]
    begin
      r := RoundTo((qryItemsOutputEntity.AsFloat) / (qryItems_Carton.AsFloat),
        RoundCount);
      if qryItemsOutputWeight.AsFloat <> r then
        qryItemsOutputWeight.AsFloat := r;
    end;

    if UnitPriceReadOnly in [0, 2] then
      ChangeTotalInputPrice;

    if UnitPriceReadOnly in [1, 2] then
      ChangeUnitSellPrice;

    if qryinit.FieldByName('ControlEntityActive').AsInteger <> 3 then
      ControlEntity(CurrentEntity, CurrentWeight, qryItems, qryRecipts, qryinit,
        Form_InOut, Person3Active, MyEntityDisplayType,
        qryEntityCodeExpirationDate);
    StandardRateActiveReciptsGrid(qryinit, qryItems);
    qryItemsLength_WidthstuffdiameterChange(nil);

  finally
    OnChangeOn;

  end;
end;

procedure TReciptsGrid2F.qryItemsInputWeightChange(Sender: TField);
var
  r: Real;
begin
  inherited; // 3   InputEntity
  try
    OnChangeOff;
    WaterCoSetZero;

    if (not qryItemsInputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [1, 2]) then
    begin
      r := RoundTo((qryItemsInputWeight.AsFloat) / (qryItems_Carton.AsFloat),
        RoundCount);
      if qryItemsInputEntity.AsFloat <> r then
        qryItemsInputEntity.AsFloat := r
    end;

    if (not qryItemsInputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [4, 6]) then
    begin
      r := RoundTo((qryItemsInputWeight.AsFloat) * (qryItems_Carton.AsFloat),
        RoundCount);
      if qryItemsInputEntity.AsFloat <> r then
        qryItemsInputEntity.AsFloat := r
    end;

    if UnitPriceReadOnly in [0, 2] then
      ChangeTotalInputPrice;

    if UnitPriceReadOnly in [1, 2] then
      ChangeUnitSellPrice;

  finally
    OnChangeOn;
  end;

end;

procedure TReciptsGrid2F.qryItemsOutputWeightChange(Sender: TField);
var
  r: Real;
begin
  inherited; // 4  OutputEntity
  try
    OnChangeOff;
    WaterCoSetZero;

    if (not qryItemsOutputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [1, 2]) then
    begin
      r := RoundTo((qryItemsOutputWeight.AsFloat) / (qryItems_Carton.AsFloat),
        RoundCount);
      if qryItemsOutputEntity.AsFloat <> r then
        qryItemsOutputEntity.AsFloat := r;
    end;

    if (not qryItemsOutputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [4, 6]) then
    begin
      r := RoundTo((qryItemsOutputWeight.AsFloat) * (qryItems_Carton.AsFloat),
        RoundCount);
      if qryItemsOutputEntity.AsFloat <> r then
        qryItemsOutputEntity.AsFloat := r;
    end;

    if UnitPriceReadOnly in [0, 2] then
      ChangeTotalInputPrice;

    if UnitPriceReadOnly in [1, 2] then
      ChangeUnitSellPrice;

  finally
    OnChangeOn;

  end;

end;

procedure TReciptsGrid2F.OnChangeOff;
begin
  qryItemsInputEntity.OnChange := nil;
  qryItemsOutputEntity.OnChange := nil;
  qryItemsInputWeight.OnChange := nil;
  qryItemsOutputWeight.OnChange := nil;
end;

procedure TReciptsGrid2F.OnChangeOn;
begin
  qryItemsInputEntity.OnChange := qryItemsInputEntityChange;
  qryItemsOutputEntity.OnChange := qryItemsOutputEntityChange;
  qryItemsInputWeight.OnChange := qryItemsInputWeightChange;
  qryItemsOutputWeight.OnChange := qryItemsOutputWeightChange;

end;

procedure TReciptsGrid2F.actRecallExecute(Sender: TObject);
begin
  inherited;
  getresponseShow := False;
  CallRecall(qryinit, formType, FormOutput, qryRecipts, qryItems, qryAllRecipts,
    myStore.code);
  getresponseShow := True;
  if DBGrid1.Enabled then
    DBGrid1.SetFocus;
end;

procedure TReciptsGrid2F.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName)
      = 'stuffcode') then
    begin
    end;
end;

procedure TReciptsGrid2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (qryinit.FieldByName('BarCodeKind').AsInteger in [0, 1, 4, 5, 6]) or
    (DBGrid1.SelectedIndex > 1) then
    gridkeyenter(Sender, Key)
end;

procedure TReciptsGrid2F.actRecallSpecialReciptsFExecute(Sender: TObject);
var
  rid: Integer;
begin
  inherited;
  myStore.code := qryRecipts.FieldByName('StoreID').AsInteger;
  rid := qryItems.RecordCount; //
  If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
    'هيچ فرمي براي فراخواني مشخص نشده است') then
    exit;

  if qryinit.FieldByName('RecallType').AsInteger <> 13 then
  begin
    if RecallSpecialReciptsF.SelectRecall(qryItems, qryinit, qryRecipts,
      myStore, True, qryReciptsPersonID1.AsInteger) then
    begin
      qryItems.MoveBy(rid);
    end;

  end
  else
  begin
    if RecallSpecialRecipts3F.SelectRecall(qryItems, qryinit, qryRecipts,
      myStore, True, qryReciptsPersonID1.AsInteger) then
    begin
      qryItems.MoveBy(rid);
    end;
  end;

end;

procedure TReciptsGrid2F.actRecallSpecialReciptsSumFExecute(Sender: TObject);
var
  qry, qryUp: TADOQuery;
begin
  inherited;
  DMf.adcBSell.BeginTrans;
  try
    qryItems.DisableControls;
    qry := TADOQuery.Create(Self);
    qry.Connection := DMf.adcBSell;
    qryUp := TADOQuery.Create(Self);
    qryUp.Connection := DMf.adcBSell;
    If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
      'هيچ فرمي براي فراخواني مشخص نشده است') then
      exit;

    try
      if RecallSpecialReciptsSumF.SelectRecall(qryItems, qryinit, qryRecipts,
        qry, myStore) then
        With qryUp do
        begin
          SQL.Text := 'UPDATE Recipts';
          SQL.Add(Format('SET ParentReciptID = %d ',
            [qryReciptsReciptID.AsInteger]));
          SQL.Add('FROM ReciptItems INNER JOIN');
          SQL.Add('Recipts ON ReciptItems.ReciptID=Recipts.ReciptID INNER JOIN');
          SQL.Add('Units INNER JOIN');
          SQL.Add('StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode');
          SQL.Add('ON ReciptItems.StuffCode = StuffCoding.c_StuffCode');
          SQL.Add(qry.SQL.Text);
          Parameters := qry.Parameters;
          BigMessage(IntToStr(ExecSQL) + ' مورد انجام شد.', 1);
        end;
      DMf.adcBSell.CommitTrans;
    except
      on E: Exception do
      begin
        Warn(E.Message);
        qryItems.Requery();
        DMf.adcBSell.RollbackTrans;
      end;
    end;

  finally
    qry.Free;
    qryItems.EnableControls;

  end;

end;

procedure TReciptsGrid2F.RecallStateChange;
begin
  BtnRecall.Enabled := ((qryinit.FieldByName('RecallType').AsInteger in [1, 14,
    15, 17, 19, 20]) and (qryRecipts.state = dsInsert));
  if BtnRecall.Enabled then
  begin
    BtnRecall.BringToFront;
    zbal.Title := 'فراخواني ';
    zbal.Prompt.Text := 'براي فراخواني از اين قسمت استفاده كنيد.';
    zbal.show(BtnRecall);
  end; // if
  BtnRecallSpecial.Enabled :=
    ((qryinit.FieldByName('RecallType').AsInteger in [2, 3, 4, 5, 6, 7, 8, 10,
    11, 12, 13, 15, 16, 18]) and ((qryRecipts.state = dsEdit) or
    (qryRecipts.state = dsInsert)));
  if BtnRecallSpecial.Enabled then
  begin
    BtnRecallSpecial.BringToFront;
    zbal.Title := 'فراخواني ويژه';
    zbal.Prompt.Text := 'براي فراخواني ويژه از اين قسمت استفاده كنيد.';
    zbal.show(BtnRecallSpecial);
  end; // if

  case qryinit.FieldByName('RecallEditKind').AsInteger of
    0:
      begin
        DBGrid1.Enabled := not BtnRecall.Enabled and
          not BtnRecallSpecial.Enabled;
        BtnExcel.Enabled := DBGrid1.Enabled;
      end;
    2, 3:
      begin
        ReciptsRecallEditKind(qryItems, qryRecipts, qryinit,
          RE_RecallStateChange);
        DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'UnitSellPrice')
          ].ReadOnly := True;
        DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'TotalInputPrice')
          ].ReadOnly := True;
        DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'TotalOutputPrice')
          ].ReadOnly := True;
      end;

    5:
      begin
        DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'OutputEntity')
          ].ReadOnly := True;
        DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'InputEntity')
          ].ReadOnly := True;
      end;
    6:
      begin
        DBGrid1.Enabled := False;
        BtnExcel.Enabled := DBGrid1.Enabled;
        pnlMaster.Enabled := DBGrid1.Enabled;
        // ReciptsRecallEditKind(qryItems, qryRecipts, qryinit, '');
      end;

  end;
  actGetExcel.Visible := (qryinit.FieldByName('RecallType').AsInteger = 0) or
    (qryinit.FieldByName('RecallEditKind').AsInteger = 4);
  actGetExcelMasterDetails.Visible := actGetExcel.Visible;
  BtnExcel.Visible := actGetExcel.Visible;
end;

procedure TReciptsGrid2F.Enter(Form_Type: Integer; LimitShow: Boolean = True;
  StoreID: Integer = 0);
begin
  mainF.AddListRecipts('ReciptsGridF' + IntToStr(Form_Type));
  DM.myStore.code := 0;
  if not LimitShow then
    DM.myStore.code := StoreID;
  CreateMDIForm3(LimitShow, TReciptsGrid2F, ReciptsGrid2F, mdiMainF, Form_Type);
  // ReciptsGrid2F.DBGrid1.SetSavePath('ReciptsGridF' + IntToStr(Form_Type));
  // ReciptsGrid2F.DBGrid1.sh
  if (ReciptsGrid2F.myStore.code = 0) and ReciptsGrid2F.RestartStore then
    ReciptsGrid2F.Close;
end;

procedure TReciptsGrid2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  // qryRecipts.AfterScroll:=nil;
  if not CheckUserlevel(qryinit.FieldByName('PrintLevelID'), qryRecipts) then
    Abort;

  if not CheckControlPrintingByDate(qryinit, qryRecipts) then
    Abort;

  if (qryinit.FieldByName('AutoStateChange').AsInteger = 1) and
    (qryRecipts.FieldByName('ReciptState').Value = 0) then
    AutoStateChange(qryRecipts, qryinit);

  if (qryinit.FieldByName('ChekingPrintEntity').AsInteger = 1) then
  begin
    if FormOutput then
      qryItems.Filter := ' OutputEntity <> 0 '
    else
      qryItems.Filter := ' InputEntity <> 0 ';
    qryItems.Filtered := True;
  end;
  try
    // qryRecipts.DisableControls;
    qryItems.DisableControls;
    // qryAllRecipts.AfterScroll := nil;

    PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
  finally
    // qryAllRecipts.AfterScroll:=qryAllReciptsAfterScroll;
    qryRecipts.EnableControls;
    qryItems.EnableControls;
    // qryItems.Filtered := False;
  end; // try
end;

procedure TReciptsGrid2F.actPaymentsExecute(Sender: TObject);
begin
  inherited;
  try
    ReciptsPaymentsF.Enter(qryRecipts, qryinit, qryItems, FormOutput,
      _ReciptsPaymentsF);
  finally
    if _ReciptsPaymentsF.ModalResult = mrOk then
      _ReciptsPaymentsF.qryReciptsPayments.UpdateBatch;
    _ReciptsPaymentsF.Free;
  end;
end;

procedure TReciptsGrid2F.actPrint1Execute(Sender: TObject);
var
  footer_: String;
  strfFldName: String;
begin
  inherited;
  if qryinit.FieldByName('UseOtherActive').AsInteger = 1 then
    qryUseOthers4Print.Active := True;
  strfFldName := ifthen((Sender as TAction).Tag = 1, 'PerformFileName',
    'ReportFileName');

  FilterOnPrint(qryinit, qryItems, qryinit.FieldByName(strfFldName).AsString);

  if qryinit.FieldByName('AutoInsertPostInsert').AsInteger in [3] then
    qryRecipts.AfterPost := nil;

  if not CheckUserlevel(qryinit.FieldByName('PrintLevelID'), qryRecipts) then
    Abort;

  qryRecipts.AfterPost := qryReciptsAfterPost;

  if not CheckControlPrintingByDate(qryinit, qryRecipts) then
    Abort;

  footer_ := Trim(qryinit.FieldByName('FormSignature').AsString);
  with ppReport1 do
    try
      Template.FileName := GetReportFileWithPath
        (qryinit.FieldByName(strfFldName).AsString);

      if FileExists(Template.FileName) then
      begin
        Template.LoadFromFile;
        PreviewFormSettings.SinglePageOnly := True;
        PDFSettings.FontEncoding := feUnicode;
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
      end
      else
        Warn('فايل چاپي ' + qryinit.FieldByName(strfFldName).AsString +
          ' نظر يافت نشد.!‏', mtInformation);
      // initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
        DeviceType := 'Printer';
      if PrintPreview then
        DeviceType := 'Screen'
      else
      begin
        DeviceType := 'Printer';
        ShowPrintDialog := False;
      end;
      ppReport1.AfterPrint := ppReport1AfterPrint;
      SetSendToBackShapeOnPrint(Self);

      // SumGrid1.DataSource.DataSet.DisableControls;
      // DBGrid1.DataSource := nil;
      // SumGrid1.Enable_Controls := False;
      // qryRecipts.DisableControls;
      qryItems.DisableControls;
      qryTransFormItems.DisableControls;
      qryReciptOnFormsRange.DisableControls;
      qry_Deficits4Print.DisableControls;
      qry_Deficits4PrintID10.DisableControls;
      qry_Deficits.DisableControls;
      qryReciptsPayments.DisableControls;
      Print;
    finally
      // SumGrid1.DataSource.DataSet.EnableControls;
      // SumGrid1.Enable_Controls := True;
      DBGrid1.DataSource := srcItems;
      qryRecipts.EnableControls;
      qryItems.EnableControls;
      qryTransFormItems.EnableControls;
      qryReciptOnFormsRange.EnableControls;
      qry_Deficits4Print.EnableControls;
      qry_Deficits4PrintID10.EnableControls;
      qry_Deficits.EnableControls;
      qryReciptsPayments.EnableControls;
    end;
  // try

end;

procedure TReciptsGrid2F.actPrint2Execute(Sender: TObject);
begin
  inherited;
  actPrint1Execute(Sender)
end;

procedure TReciptsGrid2F.ppLblAddresGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Address', '')
end;

procedure TReciptsGrid2F.ppLbTelGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Tel1', '')
end;

procedure TReciptsGrid2F.ppReport1AfterPrint(Sender: TObject);
begin
  inherited;
  qryItems.Filtered := False;
end;

procedure TReciptsGrid2F.ppLblPostCodeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('PostalCode', '')
end;

procedure TReciptsGrid2F.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber', '')
end;

procedure TReciptsGrid2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TReciptsGrid2F.pplblCustomerNameGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := qryItems.FieldByName('FullName').AsString
end;

procedure TReciptsGrid2F.ppSysVarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TReciptsGrid2F.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('ReciptCaption').AsString
end;

procedure TReciptsGrid2F.actNoteMasterExecute(Sender: TObject);
begin
  inherited;
  NoteF.Enter(qryRecipts);
end;

procedure TReciptsGrid2F.actSearchReciptNumberExecute(Sender: TObject);
begin
  inherited;
  SearchReciptNumber(qryinit, qryAllRecipts, myStore)
end;

procedure TReciptsGrid2F.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  opt.PayablePriceActive := True;
  opt.CustomerID1 := qryRecipts.FieldByName('PersonID1').AsInteger;
  opt.CustomerID2 := qryRecipts.FieldByName('PersonID2').AsInteger;
  opt.ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  opt.AidInfoNo := qryRecipts.FieldByName('AidNumber').AsCurrency;
  opt.AidInfoDate := qryRecipts.FieldByName('AidDate').AsString;
  PopOtherMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsGrid2F.qryItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryItems.FieldByName('_radif').AsInteger := Abs(DataSet.RecNo);
end;

procedure TReciptsGrid2F.ppLabelOutputWeightGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStr(CalcSumWeight)
end;

procedure TReciptsGrid2F.ppLabelOutputEntityGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStr(Calc_SumFileds('Entity'))
end;

procedure TReciptsGrid2F.ppLabelTotalOutputPriceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(Calc_SumFileds('Price'), ffCurrency, 0)
end;

procedure TReciptsGrid2F.ppLabelnum2alphabetGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'جمع كل به حروف : ' + num2alphabet
    (StrToInt64(CurrToStr(RoundTo(Calc_SumFileds('Price'), 0)))) + ' ريال ';
  // num2alphabet(StrToInt64(RemoveComma(CurrToStrF(CalcSumFileds('Price'),ffCurrency,0))))+' ريال ';
end;

procedure TReciptsGrid2F.ppDBTextStuffSizeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + '';
end;

procedure TReciptsGrid2F.qryItemsInputWeightGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not qryItems.FieldByName((Sender as TField).FieldName).IsNull then
    Text := FloatToStr(RoundTo(qryItems.FieldByName((Sender as TField)
      .FieldName).AsFloat, -3));
end;

// procedure TReciptsGridF.qryItemsInvEntityChange(Sender: TField);
// begin
// inherited;
// try
// qryItemsInvWeight.OnChange := nil;
// qryItemsInvWeight.AsFloat :=
// RoundTo(qryItemsInvEntity.AsFloat * qryItemsTotallSellPrice.AsFloat
// / 100, 0);
// finally
// qryItemsInvWeight.OnChange := qryItemsInvWeightChange;
// end;
// end;
//
// procedure TReciptsGridF.qryItemsInvWeightChange(Sender: TField);
// begin
// inherited;
// try
// qryItemsInvEntity.OnChange := nil;
// qryItemsInvEntity.AsFloat := RoundTo(qryItemsInvWeight.AsFloat * 100 /
// qryItemsTotallSellPrice.AsFloat, -2)
// finally
// qryItemsInvEntity.OnChange := qryItemsInvEntityChange;
// end;
// end;

function TReciptsGrid2F.CalcSumWeight: Currency;
begin
  Result := 0;
  try
    with TADOQuery.Create(Self) do
    begin
      Clone(qryItems, ltReadOnly);
      First;
      while not Eof do
      begin
        Result := Result + FieldByName('InputWeight').AsFloat +
          FieldByName('OutputWeight').AsFloat;
        Next;
      end; // while
      Free;
    end; // with
  except
    on E: Exception do
    begin
      Warn(E.Message);
    end;
  end; // try
end;

procedure TReciptsGrid2F.qryItemsTotalInputPriceChange(Sender: TField);
begin
  inherited;
  try
    qryItemsTotalInputPrice.OnChange := nil;
    ChangeTotalInputPrice;
    EndOfPrice((Sender as TField).FieldName);
    // TotalInputPrice
  finally
    qryItemsTotalInputPrice.OnChange := qryItemsTotalInputPriceChange;
  end;
end;

procedure TReciptsGrid2F.qryItemsTotalOutputPriceChange(Sender: TField);
begin
  inherited;
  try
    qryItemsTotalOutputPrice.OnChange := nil;
    ChangeTotalInputPrice;
    EndOfPrice((Sender as TField).FieldName);
    // TotalOutputPrice
  finally
    qryItemsTotalOutputPrice.OnChange := qryItemsTotalOutputPriceChange;
  end;
end;

procedure TReciptsGrid2F.actCorrelateReciptExecute(Sender: TObject);
begin
  inherited;
  If ReciptCorrelate_ConversionCo_Chk(qryRecipts) then
  begin
    DMf.adcBSell.BeginTrans;
    try
      try
        getresponseShow := False;
        ParentReciptID := InsertCorrelateRecipt(qryinit, qryItems, formType,
          qryRecipts, FormOutput, DBNavigator1, MyEntityDisplayType);
        InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits,
          qry_Deficits4Print, qryinit.FieldByName('StepCorrelate').AsInteger);
        DMf.adcBSell.CommitTrans;
      except
        on E: Exception do
        begin
          DMf.adcBSell.RollbackTrans;
          add2log(E.Message);
          Warn(E.Message);
        end;
      end;
    finally
      getresponseShow := True;
      qryRecipts.EnableControls;
    end;
  end;
end;

procedure TReciptsGrid2F.ppImage1DrawCommandCreate(Sender,
  aDrawCommand: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath('logo.bmp');
  if (FileExists(s)) then
    (Sender as TppImage).Picture.LoadFromFile(s);
  // TppImage(FindComponent('ppImage1')).Picture.LoadFromFile(s);
end;

procedure TReciptsGrid2F.ppLblFormFooterGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormFooter').AsString;
end;

procedure TReciptsGrid2F.qryReciptsStoreIDChange(Sender: TField);
var
  b: Boolean;
begin
  inherited;
  myStore.code := Sender.AsInteger;
  ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, lblWarn);
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, DBGrid1, qryItems, qryinit.FieldByName('StoreKindProductModel')
    .AsString);
  b := PriceOn_StoreType and (qryinit.FieldByName('AccCodingShow')
    .AsInteger > 0);

  b := b and ((((AccessForm and Integer(akEditAccCode) <> 0)) or User.admin));

  GrpBoxAccount.Visible := b;
  setColumns2(DBGrid1, b AND (qryinit.FieldByName('TopicCodeActive')
    .AsInteger = 1), 'acc_TopicCode');
  setColumns2(DBGrid1, b AND (qryinit.FieldByName('DetailCodeActive')
    .AsInteger = 1), 'acc_DetailCode');
  setColumns2(DBGrid1, b AND (qryinit.FieldByName('CTopicCode1Active')
    .AsInteger = 1), 'acc_CTopicCode');
  setColumns2(DBGrid1, b AND (qryinit.FieldByName('CTopicCode2Active')
    .AsInteger = 1) and CTopicCode2Active, 'acc_CTopicCode2');

  setColumns2(DBGrid1, b AND (qryinit.FieldByName('CTopicCode3Active')
    .AsInteger = 1) and CTopicCode3Active, 'acc_CTopicCode3');

end;

procedure TReciptsGrid2F.qryRecipts_StoreKindChange(Sender: TField);
begin
  inherited;
  PawsFieldsActive
end;

procedure TReciptsGrid2F.qryReciptsPersonID1Change(Sender: TField);
var
  a: TDateTime;
begin
  inherited;
  IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers1, Sender.AsInteger);

  // for  Change   PersonID
  qryRecipts.FieldByName('ReciptType').AsInteger :=
    qryRecipts.FieldByName('ReciptType').AsInteger;
  // for  Change   PersonID

  CustValuationType := qryRecipts.FieldByName('_CustValuationType').AsInteger;
  ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, lblWarn);
  if qryinit.FieldByName('ActiveReMainPersonRecipt').AsInteger = 1 then
  begin
    LblReMainPerson.Visible := True;
    LblReMainPerson.Caption := 'مانده=' +
      CurrToStrF(ReMainPersonRecipt(0, qryRecipts, False, LblReMainPerson),
      ffCurrency, 0);

  end;

  if (qryinit.FieldByName('DiscountEntryKind').AsInteger <> 0) then
  begin
    a := Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate').AsString);
    a := IncDay(a, qryRecipts.FieldByName('_CustomersDayTime').AsInteger);
    qryRecipts.FieldByName('AidDate').AsString := miladi2Shamsi(a);
  end;

  if (qryinit.FieldByName('Person2Active').AsInteger = 1) then
  begin

    qryRecipts.FieldByName('PersonID2').AsInteger :=
      qryRecipts.FieldByName('_PersonID1Broker').AsInteger;

    dbchkPersonID2Bed.Visible := qryRecipts.FieldByName('_SellsDefaultState')
      .AsInteger > 1;
    dbchkPersonID2Bed.Checked := qryRecipts.FieldByName('_SellsDefaultState')
      .AsInteger = 2;
    if dbchkPersonID2Bed.Checked then
      qryRecipts.FieldByName('PersonID2Bed').AsInteger := 1;
  end;

  if (qryinit.FieldByName('MasirActive').AsInteger = 1) and
    (qryRecipts.FieldByName('_PersonID1MasirID').AsInteger > 0) then
    qryRecipts.FieldByName('MasirID').AsInteger :=
      qryRecipts.FieldByName('_PersonID1MasirID').AsInteger;

end;

procedure TReciptsGrid2F.qryReciptsPersonID2Change(Sender: TField);
begin
  inherited;
  IF qryinit.FieldByName('Person2Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers2, Sender.AsInteger);
  // for  Change   PersonID
  qryRecipts.FieldByName('ReciptType').AsInteger :=
    qryRecipts.FieldByName('ReciptType').AsInteger;
  // for  Change   PersonID

end;

procedure TReciptsGrid2F.qryReciptsPersonID3Change(Sender: TField);
begin
  inherited;
  if Sender.FieldName = qryReciptsPersonID3.FieldName then
  begin
    IF qryinit.FieldByName('Person3Active').AsInteger = 1 THEN
      qryCustActive(qryCustomers3, Sender.AsInteger);
  end
  else IF qryinit.FieldByName('Person4Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers4, Sender.AsInteger);

  // for  Change   PersonID
  qryRecipts.FieldByName('ReciptType').AsInteger :=
    qryRecipts.FieldByName('ReciptType').AsInteger;
  // for  Change   PersonID

end;

procedure TReciptsGrid2F.ppLblReMainTotallSellPriceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF
    (ReMainPersonRecipt(CalcSumFileds(qryItemsTotallSellPrice) +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), qryRecipts, True,
    nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsGrid2F.ppLblReMainGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(Calc_SumFileds('Price') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), qryRecipts, True,
    nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsGrid2F.ppLblReMainOldGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(0, qryRecipts, True, nil),
    ffCurrency, 0) + ' ريال '
end;

procedure TReciptsGrid2F.logoPrint(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath((Sender as TppImage).Name + '.bmp');
  if (FileExists(s)) then
  begin
    (Sender as TppImage).Picture.LoadFromFile(s);
  end;
end;

procedure TReciptsGrid2F.Timer1Timer(Sender: TObject);
begin
  inherited;
  LblStateChang.Visible := not LblStateChang.Visible;
end;

function TReciptsGrid2F.WeightDisplay: Boolean;
begin
  Result := opt.WeightDisplay or (MyEntityDisplayType = 2)
end;

procedure TReciptsGrid2F.qryItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;

  // if SumGrid1.Enable_Controls then
  begin
    if WeightDisplay then
      StatusBar1.Panels[1].Text := opt.WeightCaption + ' =' +
        CurrToStr(CalcSumWeight);
    if EntityDisplay then
      StatusBar1.Panels[2].Text := opt.EntityCaption + ' =' +
        CurrToStr(Calc_SumFileds('Entity'));
    if PriceOn_StoreType then
      StatusBar1.Panels[0].Text := CurrToStrF(Abs(Calc_SumFileds('Price')),
        ffCurrency, 0) + ' ريال '
    else
      StatusBar1.Panels[0].Text := '';
    if PnlArzActive.Visible then
      StatusBar1.Panels[3].Text :=
        CurrToStr(CalcSumFileds(qryItems, 'ArzAmount'));

    SetSelected_StuffCode;
  end;

end;

procedure TReciptsGrid2F.actSortExecute(Sender: TObject);
begin
  inherited;
  try
    sort2F.ShowSort(qryItems);
  finally
    if opt.StuffCodingKind in [1, 2] then
      With qryinit do
      begin
        edit;
        FieldByName('OrderByFields').AsString := qryItems.Sort;
        Post;
      end;
  end;
end;

procedure TReciptsGrid2F.ppDBTxtPayablePriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price') + CalcSumFileds(qry_Deficits4Print,
    'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsGrid2F.ppDBTxtPayableSellPriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsGrid2F.ppLabelnum2alphabetPayebelGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price') + CalcSumFileds(qry_Deficits4Print,
    'Deficit_Add_Dec');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsGrid2F.ppLabelnum2alphabetPayebelSellPriceGetText
  (Sender: TObject; var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsGrid2F.actDeficitsExecute(Sender: TObject);

begin
  inherited;
  try
    if not CheckUserlevel(qryinit.FieldByName('DeficitsLevelID'), qryRecipts)
    then
      Abort;
    if qryRecipts.FieldByName('_HasDeficit').AsInteger <> 1 then
      exit;
    qry_Deficits4Print.Requery();
    // if not (qryRecipts.State  in dseditmodes) then qryRecipts.Edit;

    ReciptsDeficitsF.Enter(qryItems, qryinit, qryRecipts, FormOutput,
      GetCustomersNoDiscount(qryRecipts, qryinit), Edit4Deficits);

    if (qryRecipts.state in dsEditModes) then
      qryRecipts.Post;
  finally
    qry_Deficits4Print.Requery();
    UpdateStatusBar1;
    // if PriceOn_StoreType then
    // begin
    // PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
    // StatusBar1.Panels[4].Text := ' كسورات=' + CurrToStrF(PayablePrice,
    // ffCurrency, 0);
    // PayablePrice := Calc_SumFileds('Price') + PayablePrice;
    // StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' بهاي كل=' +
    // CurrToStrF(PayablePrice, ffCurrency, 0);
    // if TotallSellPriceAct then
    // StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' خالص ' +
    // CurrToStrF(CalcSumFileds(qryItems, 'TotallSellPrice') +
    // CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), ffCurrency, 0);
    // end;

  end;

end;

procedure TReciptsGrid2F.InitDBCombos;
var
  Kind: Integer;
begin
  CmbSecondType.Clear;
  CmbArzTypeID.Clear;
  Kind := qryinit.FieldByName('FormKindSerial').AsInteger;
  if Kind <> 0 then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
        IntToStr(Kind) + ')ORDER BY Code';
      Active := True;
      while not Eof do
      begin
        CmbSecondType.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end; // while
    end; // with

  Kind := qryinit.FieldByName('FormItemKindSerial').AsInteger;
  if Kind <> 0 then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
        IntToStr(Kind) + ')ORDER BY Code';
      Active := True;
      while not Eof do
      begin
        DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')
          ].PickList.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end; // while
    end; // with

  Kind := qryinit.FieldByName('ArzTypeID').AsInteger;
  if qryinit.FieldByName('ArzActive').AsInteger >= 1 then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      if Kind <> 0 then
        SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
          IntToStr(Kind) + ')ORDER BY Code'
      else
        SQL.Text := 'SELECT CurrenciesID, CurrenciesName FROM Currencies';
      Active := True;
      while not Eof do
      begin
        CmbArzTypeID.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end; // while
      Active := False;
    end; // with
end;

procedure TReciptsGrid2F.actReciptStateTo0Execute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي باطل كردن اين ' + Caption + ' مطمئن هستيد!؟‏‏') = mrYes
  then
    if AutoStateChange(qryRecipts, qryinit, 3) then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          'Update ReciptItems Set preReciptItemID = preReciptItemID * - 1 where ReciptID = '
          + qryRecipts.FieldByName('ReciptID').AsString;
        SQL.Add('and ServerID = ' + qryRecipts.FieldByName('ServerID')
          .AsString);
        SQL.Add('and YearID = ' + qryRecipts.FieldByName('YearID').AsString);
        ExecSQL;
        Active := False;
      end; // with
end;

procedure TReciptsGrid2F.ppLblState2ZeroDrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryRecipts.FieldByName('ReciptState')
    .AsInteger = 3;
end;

procedure TReciptsGrid2F.ppLblSecondTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CmbSecondType.Text;
end;

procedure TReciptsGrid2F.qryReciptsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if MasterTozinActive then
  begin
    if FormOutput then
    begin
      if DataSet.FieldByName('MachineFullWeight').AsFloat = 0 then
        DataSet.FieldByName('MachineFullWeight').AsFloat := ReadFromTxtOrComPort
    end
    else
    begin
      if DataSet.FieldByName('MachineWeight').AsFloat = 0 then
        DataSet.FieldByName('MachineWeight').AsFloat := ReadFromTxtOrComPort;
    end;
  end;

  DataSet.FieldByName('LastUser').AsString := User.Name;
  if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [1, 3] then
    DataSet.FieldByName('EditTime').AsString := SysUtils.TimeToStr(Now);
end;

procedure TReciptsGrid2F.qryItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if qryinit.FieldByName('TozinActive').AsInteger = 3 then
  begin
    if FormOutput then
    begin
      if qryItems.FieldByName('MachineFullWeight').AsFloat = 0 then
        qryItems.FieldByName('MachineFullWeight').AsFloat :=
          ReadFromTxtOrComPort
    end
    else
    begin
      if qryItems.FieldByName('MachineWeight').AsFloat = 0 then
        qryItems.FieldByName('MachineWeight').AsFloat := ReadFromTxtOrComPort;
    end;
  end;
  DataSet.FieldByName('LastUser').AsString := User.Name;

  if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [2, 3] then
    DataSet.FieldByName('EditTime').AsString := SysUtils.TimeToStr(Now);
end;

procedure TReciptsGrid2F.actCorrelateConversionCoExecute(Sender: TObject);
begin
  inherited;
  getresponseShow := False;
  CorrelateConversionCo(Self, qryinit, qryItems, qryRecipts, 0,
    MyEntityDisplayType);
  ReciptsLocate;
  getresponseShow := True;
end;

procedure TReciptsGrid2F.ppLblAllStringReplaceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := StringReplace(Text, 'طرفقرداد', qryRecipts.FieldByName('_PersonName1')
    .AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'بهنشاني',
    qryRecipts.FieldByName('_PersonAddress').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'جمعمقدار', CurrToStr(Calc_SumFileds('Entity')),
    [rfReplaceAll]);
  Text := StringReplace(Text, 'جمعمبلغ', CurrToStrF(Calc_SumFileds('Price'),
    ffCurrency, 0), [rfReplaceAll]);
  Text := StringReplace(Text, 'ناممشتري', qryRecipts.FieldByName('_PersonName1')
    .AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'آدرسمشتري',
    qryRecipts.FieldByName('_PersonAddress').AsString, [rfReplaceAll]);
end;

procedure TReciptsGrid2F.qryItemsWaterCoChange(Sender: TField);
begin
  inherited;
  if qryRecipts.FieldByName('_Max4WaterCo').AsFloat > 0 then
    if Sender.AsFloat > qryRecipts.FieldByName('_Max4WaterCo').AsFloat then
    begin
      qryItemsWaterCo.OnChange := nil;
      Sender.AsFloat := qryRecipts.FieldByName('_Max4WaterCo').AsFloat;
      qryItemsWaterCo.OnChange := qryItemsWaterCoChange;
      initDesktopAlert(0, 'مبلغ درصد تخفيف بالاتر از حد مجاز انتخاب شده',
        nil, 1000);
      // Warn('مبلغ درصد تخفيف بالاتر از حد مجاز انتخاب شده');
    end;
  qryItemsWaterCo.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName); // WaterCo

  /// /CHkDeficitValue3C
  if DiscountActive and Integer(CHkDeficitValue3C) <> 0 then
    GetCustomersDiscount(qryRecipts, qryItems, qryinit);
  /// /CHkDeficitValue3C

  qryItemsWaterCo.OnChange := qryItemsWaterCoChange;
end;

procedure TReciptsGrid2F.CartonKind5(Sender: TField);
var
  StuffpurePercent: Real48;
begin
  inherited;
  if (qryinit.FieldByName('CartonKind').AsInteger = 5) then
  begin
    qryItems.FieldByName(FieldNameEntity).ReadOnly := False;
    StuffpurePercent := qryItems.FieldByName('_StuffpurePercent').AsFloat;
    if StuffpurePercent = 0 then
      StuffpurePercent := 1;
    qryItems.FieldByName(FieldNameEntity).AsFloat :=
      RoundTo((qryItemsRequestedEntity.AsFloat / StuffpurePercent) *
      qryItems.FieldByName('SugarCo').AsFloat, RoundCount);
    qryItems.FieldByName(FieldNameWeight).AsFloat :=
      qryItems.FieldByName(FieldNameEntity).AsFloat;
    qryItems.FieldByName(FieldNameEntity).ReadOnly := True;
  end;
end;

procedure TReciptsGrid2F.qryItemsTaxValueChange(Sender: TField);
begin
  inherited;
  Sender.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName); // TaxValue
  Sender.OnChange := qryItemsTaxValueChange;
end;

procedure TReciptsGrid2F.EndOfPrice;
var
  TaxCo, WaterCo1: Real;
  TotallSellPrice, TotallPrice: Currency;
  DeficitValue1, DeficitValue2, DeficitValue3: Currency;
  VATRound: Integer;
  function CalcTaxValue: Currency;
  begin
    if qryItems.FindField('TaxCo') = nil then
    begin
      Result := 0;
      exit
    end
    else
      TaxCo := qryItems.FindField('TaxCo').AsCurrency;

    Result := TotallPrice - qryItems.FieldByName('DeficitValue').AsCurrency -
      qryItems.FieldByName('DeficitValue2').AsCurrency - Deficit_Value_3;
    Result := Result * TaxCo / (100 * ifthen(VATRound = 0, 1, VATRound));
    Result := RoundTo(Result * ifthen(VATRound = 0, 1, VATRound), 0);

    // Result := RoundTo((TotallPrice -
    // qryItems.FieldByName('DeficitValue').AsCurrency) * TaxCo /
    // (100 * IfThen(VATRound = 0, 1, VATRound)), 0) *
    // IfThen(VATRound = 0, 1, VATRound);

    if qryItems.FieldByName('TaxValue').AsCurrency <> Result then
    begin
      qryItems.FieldByName('TaxValue').OnChange := nil;
      qryItems.FieldByName('TaxValue').AsCurrency := Result;
      qryItems.FieldByName('TaxValue').OnChange := qryItemsTaxValueChange;
    end;

  end;

  procedure CalcSellPrice;
  var
    c: Currency;
  begin
    c := 0;
    if qryinit.FieldByName('PawsFieldsActive').AsInteger > 0 then
    begin
      if qryinit.FieldByName('PawsFieldsActive').AsInteger in [1, 3] then
        c := qryItems.FieldByName('Portage').AsCurrency;
      if qryinit.FieldByName('PawsFieldsActive').AsInteger in [2, 3] then
        c := c + qryItems.FieldByName('Article').AsCurrency +
          qryItems.FieldByName('Wage').AsCurrency + qryItems.FieldByName
          ('Scoria').AsCurrency;
      if qryinit.FieldByName('PawsFieldsActive').AsInteger in [4] then
        c := c + qryItems.FieldByName('Article').AsCurrency;

      if qryinit.FieldByName('PawsFieldsActive').AsInteger in [2] then
        if qryItems.FieldByName(FieldNamePrice).AsCurrency <> c then
          qryItems.FieldByName(FieldNamePrice).AsCurrency := c;
    end;

    TotallSellPrice := RoundTo(TotallPrice + CalcTaxValue -
      qryItemsDeficitValue.AsCurrency - qryItemsDeficitValue2.AsCurrency -
      qryItemsDeficitValue3.AsCurrency + c, 0);
    if qryItemsTotallSellPrice.AsCurrency <> TotallSellPrice then
    begin
      qryItemsTotallSellPrice.OnChange := nil;
      qryItemsTotallSellPrice.AsCurrency := TotallSellPrice;
      qryItemsTotallSellPrice.OnChange := qryItemsTotallSellPriceChange;
    end;
  end;

begin
  TotallPrice := 0;
  if qryinit.FieldByName('CommissionActive').AsInteger > 0 then
    TotallPrice := RoundTo(qryItems.FieldByName(FieldNameEntity).AsCurrency *
      qryItems.FieldByName('UnitCommission').AsCurrency, 0);
  TotallPrice := TotallPrice + qryItems.FieldByName(FieldNamePrice).AsCurrency;
  if qryinit.FieldByName('VATActive').AsInteger = 1 then
  begin
    VATRound := qryinit.FieldByName('VATRound').AsInteger;
    if (Field_Name = 'DeficitValue') or (Field_Name = 'DeficitValue2') or
      (Field_Name = 'DeficitValue3') or (Field_Name = FieldNamePrice) or
      (Field_Name = 'TaxCo') or (Field_Name = 'UnitCommission') then
      CalcTaxValue;
  end;

  // if (qryinit.FieldByName('DiscountActive').AsInteger <> 1) and
  if (qryinit.FieldByName('DiscountActive').AsInteger = 0) and
    (qryinit.FieldByName('VATActive').AsInteger <> 1) then
    if qryinit.FieldByName('PawsFieldsActive').AsInteger > 0 then
    begin
      CalcSellPrice;
      exit;
    end;

  if ((Field_Name = 'WaterCo') or (Field_Name = FieldNamePrice) or
    (Field_Name = 'UnitCommission')) and
    (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [0, 2]) then
  begin
    DeficitValue1 := RoundTo(TotallPrice * qryItems.FieldByName('WaterCo')
      .AsFloat / 100, 0);
    if qryItems.FieldByName('DeficitValue').AsCurrency <> DeficitValue1 then
    begin
      qryItems.FieldByName('DeficitValue').OnChange := nil;
      qryItems.FieldByName('DeficitValue').AsCurrency := DeficitValue1;
      qryItems.FieldByName('DeficitValue').OnChange :=
        qryItemsDeficitValueChange;
    end;
  end;

  /// ////////// new
  if ((Field_Name = 'DeficitValueCo2') or (Field_Name = FieldNamePrice) or
    (Field_Name = 'UnitCommission')) and
    (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [0, 2]) then
  begin
    DeficitValue2 := RoundTo((TotallPrice - qryItems.FieldByName('DeficitValue')
      .AsFloat) * qryItems.FieldByName('DeficitValueCo2').AsFloat / 100, 0);
    if qryItems.FieldByName('DeficitValue2').AsCurrency <> DeficitValue2 then
      qryItems.FieldByName('DeficitValue2').AsCurrency := DeficitValue2;
  end;

  if DeficitValue3Active then
    if ((Field_Name = 'DeficitValueCo3') or (Field_Name = FieldNamePrice) or
      (Field_Name = 'UnitCommission')) and
      (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [0, 2])
    then
    begin
      DeficitValue3 := RoundTo((qryItems.FieldByName(FieldNamePrice).AsCurrency
        - qryItems.FieldByName('DeficitValue').AsFloat) *
        qryItems.FieldByName('DeficitValueCo3').AsFloat / 100, 0);
      // if qryItems.FieldByName('DeficitValue3').AsCurrency <> DeficitValue then
      qryItems.FieldByName('DeficitValue3').AsCurrency := DeficitValue3;
    end;
  /// new

  if ((Field_Name = 'DeficitValue') or (Field_Name = FieldNamePrice) or
    (Field_Name = 'UnitCommission')) and
    (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [1, 2]) and
    (TotallPrice <> 0) then
  begin
    WaterCo1 := RoundTo(qryItems.FieldByName('DeficitValue').AsCurrency * 100 /
      TotallPrice, 0); // RoundCount
    if qryItems.FieldByName('WaterCo').AsFloat <> WaterCo1 then
    begin
      qryItems.FieldByName('WaterCo').OnChange := nil;
      qryItems.FieldByName('WaterCo').AsFloat := WaterCo1;
      qryItems.FieldByName('WaterCo').OnChange := qryItemsWaterCoChange;
    end;

  end;

  CalcSellPrice

end;

procedure TReciptsGrid2F.ppLblHeaderGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormHeader').AsString;
end;

procedure TReciptsGrid2F.actReportSearchExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.show(ppReport1, 'recipt', Self);
end;

procedure TReciptsGrid2F.actRowExecute(Sender: TObject);
begin
  inherited;
  With qryItems do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        edit;
        qryItemsIRow.AsInteger := RecNo;
        Post;
        Next;
      end;
    finally
      EnableControls;
    end;
end;

procedure TReciptsGrid2F.actReciptOnFormsRangeExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if (qryRecipts.FieldByName('_PersonName1').AsString = '') then
    exit;
  if qryinit.FieldByName('CofferType').AsString = '' then
  begin
    Warn('' + Caption + ' هاي خزانه داري قابل ارتباط مشخس نشده.!‏');
    exit
  end;
  s := ' AND ((Forms.CustomerID2 = ' + qryRecipts.FieldByName('PersonID1')
    .AsString + ')' + ' or (Forms.CustomerID1 = ' + qryRecipts.FieldByName
    ('PersonID1').AsString + '))';
  ChooseReciptOnFormsRangeF.SelectChecks(qryRecipts,
    qryinit.FieldByName('CofferType').AsString, s, 0);
end;

procedure TReciptsGrid2F.FormActivate(Sender: TObject);
begin
  inherited;
  // if opt.isUpdateStuffCoding then
  // begin
  /// /    qryReciptsAfterScroll(qryRecipts);
  // opt.isUpdateStuffCoding := False;
  // end;
end;

procedure TReciptsGrid2F.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  try
    DMf.adcBSell.Execute
      (Format('DELETE FROM StuffCodeTemp WHERE (ReciptType = %d) AND (UserID = %d)',
      [formType, User.id]));
  except
    on E: Exception do
    begin
      add2log('D>>>' + E.Message);
    end;
  end;

end;

procedure TReciptsGrid2F.FormCreate(Sender: TObject);
begin
  inherited;
  GetExcelAct := False;
  myStore := DM.myStore;
  aBigPanel.Visible := opt.showBig;
  SetLookUpCash(qryRecipts);

  if opt.StuffCodingKind in [0] then
  begin
    qryItems_Tabageh.Free;
    qryItems_Nevisandeh.Free;
    qryItems_Motarjem.Free;
    qryItems_ChapYear.Free;
    qryItems_gateKetab.Free;
    qryItems_NoeJeld.Free;
    qryItems_moalef.Free;
    qryItems_PakhashCompany.Free;

    cliBarcode_Tabageh.Free;
    cliBarcode_Nevisandeh.Free;
    cliBarcode_Motarjem.Free;
    cliBarcode_ChapYear.Free;
    cliBarcode_gateKetab.Free;
    cliBarcode_NoeJeld.Free;
    cliBarcode_moalef.Free;
    cliBarcode_PakhashCompany.Free;
  end;

  try
    ReciptsGrid2F.initFormQry;
  except
    on E: Exception do
    begin
      Warn(E.Message);
      Self.Free;
      exit;
    end;
  end;
  With qryAllRecipts do
  begin
    Active := False;
    IF RestartStore THEN
    begin
      // 2
      if (FilterShow) then
        SelectStoreF.GetStore(myStore, qryinit.FieldByName('StoreCaption')
          .AsString, qryinit.FieldByName('StoreKindList').AsString,
          MyEntityDisplayType);

      SQL.Text :=
        'SELECT ReciptID, YearID, ServerID, PersonID1, PersonID2, PersonID3, PersonID4';
      SQL.Add('FROM Recipts');
      SQL.Add('WHERE (ReciptType = :ReciptType) AND (YearID = :YearID ) ');
      SQL.Add('And(ReciptNumber BetWeen :ReciptNumberFrom and :ReciptNumberTo )');
      SQL.Add('And(StoreID BetWeen :StoreIDFrom and :StoreIDTo )');

      SQL.Add('And(PersonID1 BetWeen :PersonID1From and :PersonID1To )');

      if opt.ChkUsersCustomersGroupsActive then
        SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , Recipts.PersonID1) = 1)');

      SQL.Add('And(ReciptDate BetWeen :ReciptDateFrom and :ReciptDateTo )');
      EdtStoreID.Enabled := False;
      btnStoreID.Enabled := False;
    end;

    if UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive')
      .AsInteger, UserRegistrarShowForm) and (not User.admin) then
      SQL.Add(Format('AND (OperatorID = %d)', [User.id]));
    SQL.Add('ORDER BY ReciptNumber');

    IF RestartStore THEN
    begin
      Parameters.ParamByName('StoreIDFrom').Value := myStore.code;
      Parameters.ParamByName('StoreIDTo').Value := myStore.code;
    end
    else
    begin
      Parameters.ParamByName('StoreIDFrom').Value := -32768;
      Parameters.ParamByName('StoreIDTo').Value := 32767;
    end;

    Parameters.ParamByName('ReciptType').Value := formType;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ReciptNumberFrom').Value := -99999999;
    Parameters.ParamByName('ReciptNumberTo').Value := 2147483647;

    Parameters.ParamByName('ReciptDateFrom').Value := '0000/00/00';
    Parameters.ParamByName('ReciptDateTo').Value := '9999/99/99';

    Parameters.ParamByName('UserAdmin').Value := ifthen(User.admin, 1, 0);
    Parameters.ParamByName('UserID').Value := User.id;

    Parameters.ParamByName('PersonID1From').Value := -2147483646;
    Parameters.ParamByName('PersonID1To').Value := 2147483647;

    AfterScroll := nil;
    // SQL.Text:=GetUsersStore(SQL.Text);
    Active := True;
    AfterScroll := qryAllReciptsAfterScroll;
    // if RecNo=0 then qryRecipts.Active:=True;
    if FilterShow then
      Last;
  end; // with
  initForm4Output;
  initReportName(qryinit, PopMuPrint, mnu4allClick);
  PrintCount := 1;
  If qryinit.FieldByName('PrintCount').AsInteger > 1 then
    PrintCount := qryinit.FieldByName('PrintCount').AsInteger;

  CreateComPort;

  SrcStores := TDataSource.Create(Self);
  PipStores := TppDBPipeline.Create(Self);
  SrcStores.DataSet := qryStores;
  PipStores.Name := 'PipStores';
  PipStores.DataSource := SrcStores;
  PipStores.MasterDataPipeline := ppDBPipeline1;

  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Person3Active, Person3Caption,CustomerKind3';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (ReciptType  = 1)');
    Active := True;
    Person3Active := FieldByName('Person3Active').AsInteger = 1;
  end;

  actAutoPrice.Visible := qryinit.FieldByName('AutoPrice').AsInteger
    in [14, 15];
  actChangStuff.Visible := actAutoPrice.Visible;

end;

procedure TReciptsGrid2F.mnu4allClick(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline2, DBGrid1);

  FilterOnPrint(qryinit, qryItems, (Sender as TMenuItem).Hint);

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

    try // SumGrid1.DataSource.DataSet.DisableControls;
      // DBGrid1.DataSource := nil;
      // qryRecipts.DisableControls;
      qryItems.DisableControls;
      qryTransFormItems.DisableControls;
      qryReciptOnFormsRange.DisableControls;
      qry_Deficits4Print.DisableControls;
      qry_Deficits4PrintID10.DisableControls;
      qry_Deficits.DisableControls;
      qryReciptsPayments.DisableControls;
      InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
    finally
      // SumGrid1.DataSource.DataSet.EnableControls;
      DBGrid1.DataSource := srcItems;
      qryRecipts.EnableControls;
      qryItems.EnableControls;
      qryTransFormItems.EnableControls;
      qryReciptOnFormsRange.EnableControls;
      qry_Deficits4Print.EnableControls;
      qry_Deficits4PrintID10.EnableControls;
      qry_Deficits.EnableControls;
      qryReciptsPayments.EnableControls;
    end;
  end;
end;

procedure TReciptsGrid2F.mnuCalcGiftItemsClick(Sender: TObject);
begin
  inherited;
  qryReciptsCalcGiftItems.AsBoolean := not qryReciptsCalcGiftItems.AsBoolean;
  mnuCalcGiftItems.Checked := qryReciptsCalcGiftItems.AsBoolean
end;

procedure TReciptsGrid2F.qryReciptsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not IsCorrelateReciptType(qryinit) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('ADDLevelID'), qryRecipts) then
    Abort;
  CmbSecondType.Tag := qryRecipts.FieldByName('SecondType').AsInteger;
  if not RecallChangeType(getresponseShow, qryinit, qryAllRecipts, formType,
    FormOutput, qryRecipts, qryItems, myStore.code) then
  begin
    Abort;
  end;

end;

procedure TReciptsGrid2F.SetSelected_StuffCode;
var
  qry: TADOQuery;
  s: string;
begin
  if qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
    Integer(CHkDelInSearchSelected) <> 0 then
  begin
    if qryItems.state = dsBrowse then
    begin
      qry := TADOQuery.Create(nil);
      with qry do
        try
          Clone(qryItems, ltReadOnly);
          First;
          s := '0';
          while not Eof do
          begin
            s := s + ',' + IntToStr(FieldByName('StuffCode').AsLargeInt);
            Next;
          end;
        finally
          SelectedStuffCode := s;
          Free;
        end;
    end;
  end
  else
    SelectedStuffCode := '0';
end;

procedure TReciptsGrid2F.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  k, id: SmallInt;
  txt, s_StoreID, TxtScroll, TxtYearID, FldName: String;
  b: Boolean;
  Results: array [0 .. 31] of String;
  Fields_SD_1_9, st_Fld, st_FldGROUPBY: String;
  colTopics_1_3: array [0 .. 31] of String;
  ShowEntityOnSearch, i, countCosnt, PersonID1: Integer;
  UnitSellPrice: Real;
const
  colWidths_1_3: array [0 .. 31] of SmallInt = (50, 200, 100, 100, 50, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
begin
  inherited;
  ShowEntityOnSearch := qryinit.FieldByName('ShowEntityOnSearch').AsInteger;
  b := False;
  if (Sender as TDBGrideh).ReadOnly then
    exit;
  id := (Sender as TDBGrideh).SelectedIndex;
  aDataSet := (Sender as TDBGrideh).DataSource.DataSet;
  (Sender as TDBGrideh).SelectedIndex := id;

  if not(aDataSet.state in dsEditModes) then
    aDataSet.edit;

  s_StoreID := qryReciptsStoreID.AsInteger.ToString;

  if DBGrid1.Columns[id].FieldName = 'StuffCodingItemID' then
  begin
    if not(qryRecipts.state in dsEditModes) then
      exit;
    txt := 'SELECT StuffCodingItemID, Length_, Width, Thickness,' +
      ' Weight_, Barcode, Description_ FROM StuffCodingItems' +
      Format(' WHERE (StuffCode = %d )', [qryItemsStuffCode.AsLargeInt]);
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'اجزاء كالا', txt,
      ['شناسه جزء', 'طول', 'عرض', 'ضخامت', 'وزن', 'باركد', 'توضيحات'], Results,
      [50, 50, 50, 50, 50, 50, 100], alLeft);
    if b then
    begin
      if not(qryItems.state in dsEditModes) then
        qryItems.edit;
      qryItems.FieldByName('StuffCodingItemID').AsString := Results[0];
      qryItems.FieldByName('Length_').AsString := Results[1];
      qryItems.FieldByName('Width').AsString := Results[2];
      qryItems.FieldByName('stuffdiameter').AsString := Results[3];
    end;
    exit;
  end;

  if DBGrid1.Columns[id].FieldName = 'StuffCode' then
  begin
    if (qryinit.FieldByName('AutoPrice').AsInteger = 9) and (not ShiftDown) then
    begin
      if qryinit.FieldByName('ControlEntityActive').AsInteger = 1 then
      begin
        txt := 'SELECT Cnt.ContractOperations.OperationId AS c_stuffcode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo,'
          + ' Units.UnitName, SUM(Cnt.ContractOperations.Amount) AS amount,' +
          ' SUM(Cnt.ContractOperations.Amount) - MAX(a.sumoutputentity) AS balance,'
          + ' SUM(CASE stuffcoding.unitpriceusekind WHEN 5 THEN cnt.contractoperations.totalprice WHEN 6 THEN'
          + ' cnt.contracts.contractbaseprice ELSE cnt.contractoperations.baseprice END) AS unitprice,'
          + ' MAX(Cnt.ContractOperations.ContractOperationNote) AS ContractOperationNote,'
          + ' CASE WHEN Cnt.Contracts.UpperCaseNo > 0 THEN Cnt.Contracts.UpperCaseNo ELSE Cnt.Contracts.CaseNo'
          + ' END AS CaseNo, MIN(Cnt.Contracts.ContractNo) AS ContractNo,' +
          ' MIN(Cnt.Contracts.ContractDate) AS ContractDate, MAX(CASE WHEN Cnt.Contracts.UpperCaseNo > 0 THEN'
          + ' Cnt.Contracts.CaseNo ELSE 0 END) AS maxCaseNo' +
          ' FROM Cnt.ContractOperations INNER JOIN' +
          ' Cnt.Contracts ON Cnt.ContractOperations.CaseNo = Cnt.Contracts.CaseNo INNER JOIN'
          + ' StuffCoding ON Cnt.ContractOperations.OperationId = StuffCoding.c_StuffCode LEFT OUTER JOIN'
          + ' (SELECT Recipts.AidNumber, ReciptItems.StuffCode, SUM(ISNULL(ReciptItems.OutputEntity, 0)) AS'
          + ' sumoutputentity' + ' FROM Recipts INNER JOIN' +
          ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID ='
          + ' ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID' +
          ' WHERE (Recipts.YearID = %d )AND(Recipts.ReciptDate <= %s ) AND (ReciptItems.ID NOT IN ( %s ))'
          + ' GROUP BY Recipts.ReciptType, Recipts.ServerID, Recipts.YearID, Recipts.AidNumber,'
          + ' ReciptItems.StuffCode' +
          ' HAVING (Recipts.ReciptType = %d )) AS a ON Cnt.ContractOperations.OperationId = a.StuffCode AND'
          + ' Cnt.Contracts.CaseNo = a.AidNumber LEFT OUTER JOIN' +
          ' Units ON StuffCoding.n_UnitCode = Units.UnitCode' +
          ' WHERE (Cnt.Contracts.EmployerId = %d )' +
          ' GROUP BY Cnt.ContractOperations.OperationId, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName,'
          + ' CASE WHEN Cnt.Contracts.UpperCaseNo > 0 THEN Cnt.Contracts.UpperCaseNo ELSE Cnt.Contracts.CaseNo'
          + ' END';
        txt := Format(txt, [qryRecipts.FieldByName('YearID').AsInteger,
          QuotedStr(qryRecipts.FieldByName('ReciptDate').AsString),
          GetReciptItemIDs(CurrentEntity, CurrentWeight, qryItems, Form_InOut,
          MyEntityDisplayType, 'ID'), formType, qryReciptsPersonID1.AsInteger]);
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
          ['كد', 'عنوان', 'مشخصات فني', 'واحد', 'مقدار', 'مانده', 'في',
          'توضيحات', 'شناسه قرارداد', 'شماره قرارداد', 'تاريخ قرارداد'],
          Results, [80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80], alLeft);
      end
      else
      begin
        txt := 'SELECT Cnt.ContractOperations.OperationId AS c_stuffcode, ' +
          'StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo,' +
          ' Units.UnitName, Cnt.ContractOperations.Amount,' +
          ' tbl_Out.Entity, Cnt.ContractOperations.Amount - tbl_Out.Entity AS Amount_Entity,'
          + ' CASE StuffCoding.UnitPriceUseKind WHEN 5 THEN Cnt.ContractOperations.TotalPrice WHEN 6 THEN'
          + ' Cnt.Contracts.ContractBasePrice ELSE Cnt.ContractOperations.BasePrice'
          + ' END AS unitPrice, Cnt.ContractOperations.ContractOperationNote, Cnt.Contracts.CaseNo,'
          + ' Cnt.Contracts.ContractNo, Cnt.Contracts.ContractDate' +
          ' FROM Cnt.ContractOperations INNER JOIN' +
          ' Cnt.Contracts ON Cnt.ContractOperations.CaseNo = Cnt.Contracts.CaseNo INNER JOIN'
          + ' StuffCoding ON Cnt.ContractOperations.OperationId = StuffCoding.c_StuffCode  LEFT OUTER JOIN '
          + ' (SELECT Recipts.PersonID1, ReciptItems.StuffCode, ' +
          'SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS Entity ' +
          ' FROM Recipts INNER JOIN' +
          ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID ='
          + ' ReciptItems.ServerID AND' + ' Recipts.YearID = ReciptItems.YearID'
          + ' WHERE (Recipts.ReciptState < 3)AND(Recipts.ReciptType = %d )' +
          'AND (Recipts.ReciptID <> %d ) ' +
          ' GROUP BY Recipts.PersonID1, ReciptItems.StuffCode' +
          ') AS tbl_Out ON Cnt.Contracts.EmployerId = tbl_Out.PersonID1 AND' +
          ' Cnt.ContractOperations.OperationId = tbl_Out.StuffCode LEFT OUTER JOIN'
          + ' Units ON StuffCoding.n_UnitCode = Units.UnitCode' +
          ' WHERE (Cnt.Contracts.EmployerId = %d ) AND (StuffCoding.State = 0)';
        txt := Format(txt, [formType, qryReciptsReciptID.AsInteger,
          qryReciptsPersonID1.AsInteger]);
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
          ['كد', 'عنوان', 'مشخصات فني', 'واحد', 'مقدار', 'مقدارخارج شده',
          'مقدارمانده', 'في', 'توضيحات', 'شناسه قرارداد', 'شماره قرارداد',
          'تاريخ قرارداد'], Results, [80, 80, 80, 80, 80, 80, 80, 80, 80, 80,
          80, 80], alLeft);
        if b then
        begin
          if not(qryItems.state in dsEditModes) then
            qryItems.edit;
          qryItemsStuffCode.AsString := Results[0];
          qryItems.FieldByName(FieldNameEntity).AsString := Results[4];
          qryItemsUnitSellPrice.AsString := Results[7];
          qryRecipts.FieldByName('AidNumber').AsInteger := StrToInt(Results[7]);
          qryItems.FieldByName('AidNumber').AsInteger := StrToInt(Results[10]);
          qryItems.FieldByName('AidDate').AsString := Results[11];
          exit;
        end;

      End;

      if b then
      begin
        if not(qryItems.state in dsEditModes) then
          qryItems.edit;
        qryItemsStuffCode.AsString := Results[0];
        if not(qryRecipts.state in dsEditModes) then
          qryRecipts.edit;

        if qryinit.FieldByName('ControlEntityActive').AsInteger = 1 then
        begin
          qryRecipts.FieldByName('AidNumber').AsInteger := StrToInt(Results[8]);
          qryItemsUnitSellPrice.AsString := Results[6];
        end
        else
        begin
          qryItemsUnitSellPrice.AsString := Results[5];
          qryRecipts.FieldByName('AidNumber').AsInteger := StrToInt(Results[7]);
        end;

      end; // if
      exit;

    end;

    if DBGrid1.Columns[id].FieldName = 'StuffCode' then
    begin
      if (qryinit.FieldByName('AutoPrice').AsInteger in [14, 15]) then
      begin
        if (qryinit.FieldByName('AutoPrice').AsInteger = 14) then
        begin
          PersonID1 := qryReciptsPersonID1.AsInteger;
          txt := '';
          FldName := 'UnitSellPrice';
        end
        else
        begin
          PersonID1 := 0;
          txt := ' WHERE (ContractsStatus = 1) ';
          FldName := 'SellPrice' +
            IntToStr(qryRecipts_CustValuationType.AsInteger + 1);
        end;
        txt := 'SELECT DISTINCT c_stuffcode, c_StuffName, c_StuffTecInfo, UnitName, '
          + FldName +
          ', ContractOperationNote, CaseNo, ContractNo, ContractDate ' +
          'FROM Cnt.GetContractOperations( %d ) AS GetContractOperations_1 ' +
          txt;
        txt := Format(txt, [PersonID1]);
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
          ['كد', 'عنوان', 'مشخصات فني', 'واحد', 'في', 'توضيحات',
          'شناسه قرارداد', 'شماره قرارداد', 'تاريخ قرارداد'], Results,
          [80, 80, 80, 80, 80, 80, 80, 80, 80], alLeft);
        if b then
        begin
          if not(qryItems.state in dsEditModes) then
            qryItems.edit;
          qryItemsStuffCode.AsString := Results[0];
          UnitSellPrice := Results[4].ToDouble;
          UnitSellPrice := UnitSellPriceAutoPrice_14_15(UnitSellPrice,
            qryItems);
          qryItemsUnitSellPrice.AsFloat := UnitSellPrice;
          qryItemsControlCode.AsString := Results[6];
          // qryRecipts.FieldByName('AidNumber').AsInteger := StrToInt(Results[0]);
          // qryItems.FieldByName('AidNumber').AsInteger := StrToInt(Results[0]);
          // qryItems.FieldByName('AidDate').AsString := Results[0];
        end;
        exit;
      end;
    end;

    if opt.StuffCodingKind in [1, 2] then
    begin
      case ShowEntityOnSearch of
        0:
          b := special_SearchF.SearchCode(DMf.adcBSell, ' كالاها  ',
            ' SELECT  c_StuffCode, c_StuffName, UnitName, c_StuffTecInfo,tabageh, nevisandeh, '
            + ' PakhshCompany,motarjem, chapDate, gateketab, noejeldName ,SellPrice1  '
            + ' FROM Aid_StuffCoding WHERE (State = 0)' +
            'AND (c_StuffCode NOT IN(' + SelectedStuffCode + '))',
            ['كد كتاب', 'عنوان كتاب', 'واحد', 'مشخصات فني', 'طبقه',
            'نام نويسنده', 'شركت پخش', 'مترجم', 'سال چاپ', 'قطع كتاب',
            'نوع جلد', 'بهاي فروش'], Results, [50, 50, 100, 70, 100, 50, 70, 70,
            50, 50, 50, 50], alLeft, 3);
        1:
          b := special_SearchF.SearchCode(DMf.adcBSell, ' كالاها  ',
            ' SELECT   c_StuffCode, c_StuffName, UnitName, c_StuffTecInfo, tabageh, nevisandeh, '
            + ' PakhshCompany, motarjem, chapDate, gateketab, noejeldName, SellPrice1, SUMEntity '
            + ' FROM Aid_StuffCodingEntity(''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''', ' + qryRecipts.FieldByName('StoreID')
            .AsString + ', ' + qryRecipts.FieldByName('StoreID').AsString +
            ', DEFAULT, DEFAULT) ' +
            ' WHERE (State = 0) AND (c_StuffCode NOT IN(' + SelectedStuffCode +
            '))' + ifthen(qryinit.FieldByName('ShowNotEntityOnSearch')
            .AsLargeInt and Integer(CHkDelInSearchNotEntity) <> 0,
            ' AND (SumEntity <> 0) ', ''), ['كد كتاب', 'عنوان كتاب', 'واحد',
            'مشخصات فني', 'طبقه', 'نام نويسنده', 'شركت پخش', 'مترجم', 'سال چاپ',
            'قطع كتاب', 'نوع جلد', 'بهاي فروش', 'موجودي'], Results,
            [50, 100, 50, 70, 100, 50, 70, 70, 50, 50, 50, 50, 60], alLeft, 3);
      end;
      if b then
      begin
        if not(qryItems.state in dsEditModes) then
          qryItems.edit;
        qryItemsStuffCode.AsString := Results[0];
      end;
      exit;
    end;
    colTopics_1_3[0] := 'کد';
    colTopics_1_3[1] := 'نام كالا';
    colTopics_1_3[2] := 'مشخصات فني';
    colTopics_1_3[3] := 'بهاي فروش 1';
    colTopics_1_3[4] := 'بهاي خريد';
    if EntityDisplay and (ShowEntityOnSearch <> 2) then
    begin
      colTopics_1_3[5] := opt.EntityCaption;
      colWidths_1_3[5] := 50;
    end;
    if WeightDisplay and (ShowEntityOnSearch <> 2) then
    begin
      colTopics_1_3[6] := opt.WeightCaption;
      colWidths_1_3[6] := 80;
    end;

    colTopics_1_3[7] := 'نقطه سفارش';
    colWidths_1_3[7] := 80;
    // n_orderPoint

    if ShowEntityOnSearch in [7, 9] then
    begin
      for i := 1 to opt.stCount do
      begin
        // if opt.IsIdentityST = 'st' + IntToStr(i) then
        // begin
        // st_Fld := st_Fld + ',StuffCoding.st' + IntToStr(i) + ' AS st' +
        // IntToStr(i);
        // st_FldGROUPBY := st_FldGROUPBY + ',StuffCoding.st' + IntToStr(i);
        // end
        // else
        // begin
        st_Fld := st_Fld + ',LookUps_ST' + IntToStr(i) + '.Name AS Name' +
          IntToStr(i);
        st_FldGROUPBY := st_FldGROUPBY + ',LookUps_ST' + IntToStr(i) + '.Name';
        // end;

        colTopics_1_3[7 + i] := GetStName(i);
        colWidths_1_3[7 + i] := 80;
      end;
    end;

    countCosnt := 7;
    if ShowEntityOnSearch = 10 then
      countCosnt := 11;

    for k := 1 to 9 do
    begin
      colTopics_1_3[k + countCosnt + opt.stCount] :=
        opt.ExtraCoding.Captions[k];
      if opt.ExtraCoding.Captions[k] <> '' then
      begin
        colWidths_1_3[k + countCosnt + opt.stCount] := 50;
        Fields_SD_1_9 := Fields_SD_1_9 + ',StuffCoding.sd' + IntToStr(k);
      end;
    end;

    TxtYearID := Format(' AND (Recipts.YearID BETWEEN %d AND %d )',
      [opt.DefaultYear, APPBank.Year]);
    // TxtYearID := TxtYearID + ' AND Recipts.ServerID = ' + qryRecipts.FieldByName
    // ('ServerID').AsString;
    TxtYearID := TxtYearID + ' AND Recipts.YearID = ' + qryRecipts.FieldByName
      ('YearID').AsString;

    if qryinit.FieldByName('ControlEntityActive').AsInteger = 2 then
      TxtYearID := TxtYearID + ' AND (ReciptItems.ProductModel = ' +
        IntToStr(qryItems.FieldByName('ProductModel').AsInteger) + ')';

    if qryinit.FieldByName('Commendation').AsInteger = 0 then
      TxtYearID := TxtYearID + 'AND (  ReciptTypes.EffectType in(2,4))'
    else
      TxtYearID := TxtYearID + 'AND (  ReciptTypes.EffectType in(2,4)  or ' +
        ' ( Recipts.ReciptType= ' + qryRecipts.FieldByName('ReciptType')
        .AsString + ' and ParentReciptID is null )  )';

    if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
      TxtYearID := TxtYearID + ' AND (Stores.StoreKind IN (' +
        qryinit.FieldByName('StoreKindList').AsString + '))';

    b := False;

    txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,'
      + ' StuffCoding.SellPrice1' + ifthen(ShowEntityOnSearch <> 9,
      ',StuffCoding.BuyPrice', ',0 AS BuyPrice');

    txt := txt + ifthen(ShowEntityOnSearch in [7, 9],
      ', MAX(Mojodi.Entity) AS Entity, MAX(Mojodi.Weight) AS Weight',
      ',0 AS e,0 AS w') + ',StuffCoding.n_orderPoint' + st_Fld + Fields_SD_1_9 +
      ' FROM StuffCoding INNER JOIN ' +
      ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode ';

    if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
      txt := txt +
        ' INNER JOIN Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID ';
    txt := txt + addAgreementsSQL(qryinit, qryRecipts);

    if ShowEntityOnSearch in [7, 9] then
    begin
      for i := 1 to opt.stCount do
      begin
        txt := txt + ' LEFT OUTER JOIN  LookUps as LookUps_ST' + IntToStr(i) +
          ' ON dbo.StuffCoding.st' + IntToStr(i) + ' = LookUps_ST' + IntToStr(i)
          + '.Code AND LookUps_st' + IntToStr(i) + '.Kind = ' +
          IntToStr(300 + i);
      end;

      txt := txt + ' LEFT OUTER JOIN' +
        ' (SELECT StuffCode, ROUND(SUM(InputEntity - OutputEntity), 3) AS Entity,'
        + ' ROUND(SUM(InputWeight - OutputWeight), 3) AS Weight' +
        ' FROM ReciptItems_Stock WHERE (ReciptDate <= ''' +
        qryRecipts.FieldByName('ReciptDate').AsString + ''')  ' +
        ifthen(pnlStore1.Visible, 'AND (StoreID = ' + s_StoreID + ')', '') +
      // ' AND YearID = ' + qryRecipts.FieldByName('YearID').AsString +   ///Bsell_Nashr_93
        ' GROUP BY StuffCode) AS Mojodi ON StuffCoding.c_StuffCode = Mojodi.StuffCode';

    end;

    txt := txt + ' WHERE  (StuffCoding.State = 0)';
    if pnlStore1.Visible then
      txt := txt + ' AND (StoreStuffs.n_StoreID = ' + s_StoreID + ' ) ';

    txt := txt + 'AND (StuffCoding.c_StuffCode NOT IN(' +
      SelectedStuffCode + '))';

    if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
      txt := txt + ' AND (Stores.StoreKind IN (' + qryinit.FieldByName
        ('StoreKindList').AsString + '))';

    txt := txt +
      ' GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo,'
      + ' StuffCoding.SellPrice1,StuffCoding.BuyPrice ,StuffCoding.n_orderPoint ';
    txt := txt + st_FldGROUPBY + Fields_SD_1_9;
    case ShowEntityOnSearch of
      0, 7, 9:
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
          colTopics_1_3, Results, colWidths_1_3, alLeft);
      1:
        begin
          TxtYearID := StringReplace(TxtYearID, 'Recipts.',
            'ReciptItems_Stock.', [rfReplaceAll]);
          TxtYearID := StringReplace(TxtYearID, 'ReciptTypes.',
            'ReciptItems_Stock.', [rfReplaceAll]);

          TxtYearID := StringReplace(TxtYearID, 'ReciptItems.',
            'ReciptItems_Stock.', [rfReplaceAll]);

          txt := ' SELECT dbo.ReciptItems_Stock.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,dbo.StuffCoding.SellPrice1,  '
            + ' MAX((CASE ReciptItems_Stock.EffectType WHEN 2 THEN dbo.ReciptItems_Stock.UnitSellPrice ELSE 0 END)) AS MaxUnitSellPrice, '
            + ' ROUND(SUM(dbo.ReciptItems_Stock.InputEntity - dbo.ReciptItems_Stock.OutputEntity),2) AS SumEntity, '
            + ' ROUND(SUM(dbo.ReciptItems_Stock.InputWeight - dbo.ReciptItems_Stock.OutputWeight),2) AS SumWeight '
            + Fields_SD_1_9 + ' FROM   ReciptItems_Stock ' +
            ' INNER JOIN dbo.StuffCoding ON dbo.ReciptItems_Stock.StuffCode = dbo.StuffCoding.c_StuffCode '
            + ' INNER JOIN Stores ON ReciptItems_Stock.StoreID = Stores.n_StoreID '
            + ' WHERE  (StuffCoding.State = 0)AND(ReciptItems_Stock.ReciptDate <= '''
            + qryRecipts.FieldByName('ReciptDate').AsString + ''')  ' +
            ifthen(pnlStore1.Visible, 'AND (ReciptItems_Stock.StoreID = ' +
            s_StoreID + ')', '') + TxtYearID;
          txt := txt + 'AND (StuffCode NOT IN(' + SelectedStuffCode + '))' +
            ' GROUP BY dbo.ReciptItems_Stock.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,dbo.StuffCoding.SellPrice1,StuffCoding.BuyPrice '
            + Fields_SD_1_9 +
            ifthen(qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
            Integer(CHkDelInSearchNotEntity) <> 0,
            ' HAVING (SUM(ReciptItems_Stock.InputEntity - ReciptItems_Stock.OutputEntity) <> 0) ',
            '');

          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            colTopics_1_3, Results, colWidths_1_3, alLeft);

        end;
      2:
        begin
          TxtScroll :=
            'SELECT isnull(ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity),2),0) AS مقدار '
            + ifthen(WeightDisplay,
            ', isnull(ROUND(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight),2),0) AS وزن  ',
            '') +
          // ' , AVG(ReciptItems.UnitSellPrice)  as ميانگين‏في , '+
          // ' ROUND((case when isnull(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity),0)<>0 then  '+
          // ' isnull(SUM(ReciptItems.TotalInputPrice - ReciptItems.TotalOutputPrice),0)/isnull(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity),0) else 0 end), 0)  as  في‏كل , '+
          // ' isnull(SUM(ReciptItems.TotalInputPrice - ReciptItems.TotalOutputPrice),0) AS مبلغ '+
            ' FROM ReciptItems INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN '
            + 'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType ' +
            ' INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +
            'WHERE (Recipts.ReciptDate <=  ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + '''  ) ' + ifthen(pnlStore1.Visible,
            'AND (Recipts.StoreID = ' + s_StoreID + ')', '') +
            '  AND (ReciptItems.StuffCode =  :StuffCode ) AND (ReciptTypes.EffectType = 2 OR ReciptTypes.EffectType = 4) AND '
            + '(ReciptItems.ReciptItemID <> ' +
            IntToStr(qryItems.FieldByName('ReciptItemID').AsInteger) +
            ' )AND  (Recipts.ReciptState < 3) ' + TxtYearID;
          // txt := txt + 'AND (StuffCode NOT IN(' + SelectedStuffCode + '))'
          b := searchCode_ADO4ScrollF.SearchCode2(DMf.adcBSell, ' كالاها  ',
            txt, colTopics_1_3, Results, colWidths_1_3, alLeft, TxtScroll);
        end;
      // 2
      3, 10:
        begin
          colTopics_1_3[0] := 'کد';
          colTopics_1_3[1] := 'نام كالا';

          if opt.StuffTecInfoActive then
          begin
            colWidths_1_3[2] := 80;
            colTopics_1_3[2] := 'مشخصات فني';
          end
          else
          begin
            colWidths_1_3[2] := 0;
            colTopics_1_3[2] := EmptyStr;
          end;

          if EntityDisplay then
          begin
            colTopics_1_3[3] := opt.EntityCaption;
            colWidths_1_3[3] := 80;
          end
          else
          begin
            colWidths_1_3[3] := 0;
            colTopics_1_3[3] := EmptyStr;
          end;

          if WeightDisplay then
          begin
            colTopics_1_3[4] := opt.WeightCaption;
            colWidths_1_3[4] := 80;
          end
          else
          begin
            colTopics_1_3[4] := EmptyStr;
            colWidths_1_3[4] := 0;
          end;

          colWidths_1_3[5] := 80;
          colTopics_1_3[5] := 'بهاي خرید';
          colWidths_1_3[6] := 80;
          colTopics_1_3[6] := 'بهاي فروش 1';
          colWidths_1_3[7] := 80;
          colTopics_1_3[7] := 'بيشترين بها';

          if ShowEntityOnSearch = 10 then
          begin
            colWidths_1_3[8] := 80;
            colTopics_1_3[8] := 'بهاي فروش 2';
            colWidths_1_3[9] := 80;
            colTopics_1_3[9] := 'بهاي فروش 3';
            colWidths_1_3[10] := 80;
            colTopics_1_3[10] := 'بهاي فروش 4';
            colWidths_1_3[11] := 80;
            colTopics_1_3[11] := 'واحد شمارش';
          end;

          txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, '
            + ' abcd.SUMEntity, abcd.SUMWeight,StuffCoding.BuyPrice,StuffCoding.SellPrice1,abcd.MaxUnitSellPrice'
            + ifthen(ShowEntityOnSearch = 10,
            ',StuffCoding.SellPrice2,StuffCoding.SellPrice3,StuffCoding.SellPrice4,Units.UnitName',
            '')

            + Fields_SD_1_9 + ' FROM StuffCoding ' +
            ' INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode '
            + ' LEFT OUTER JOIN (SELECT ReciptItems.StuffCode, MAX((CASE ReciptTypes.EffectType WHEN 2 THEN'
            + ' ReciptItems.UnitSellPrice ELSE 0 END))AS MaxUnitSellPrice, ' +
            ' ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity), 3) AS SUMEntity,'
            + ' ROUND(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight), 3) AS SUMWeight'
            + ' FROM ReciptItems INNER JOIN' +
            ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN'
            + ' ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType' +
            ' INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +
            ' WHERE (Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''') ' + ifthen(pnlStore1.Visible,
            ' AND (Recipts.StoreID = ' + s_StoreID + ')', '') +
            ' AND (ReciptTypes.EffectType IN (2,4)) AND (Recipts.ReciptState < 3)'
            + TxtYearID + ' GROUP BY ReciptItems.StuffCode' +
            ' HAVING (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) >= 0.0001) OR'
            + ' (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <= - 0.0001) OR'
            + ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) >= 0.0001) OR'
            + ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) <= - 0.0001)) AS abcd ON'
            + ' StuffCoding.c_StuffCode = abcd.StuffCode' +
            ifthen(ShowEntityOnSearch = 10,
            ' INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode', '')
            +

            ' WHERE (StoreStuffs.n_StoreID = ' + s_StoreID +
            ')AND (StuffCoding.State = 0)';
          txt := txt + 'AND (StuffCode NOT IN(' + SelectedStuffCode + '))';
          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            colTopics_1_3, Results, colWidths_1_3, alLeft);
        end;

      4:
        begin
          txt := 'SELECT ReciptItems.StuffCode, ReciptItems.ProductModel, StuffCoding.c_StuffName,'
            + ' Units.UnitName, LookUps.LookUpID, LookUps.Name,' +
            ' StuffCoding.c_StuffTecInfo, ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity), 3) AS SUMEntity               '
            + ' FROM ReciptItems INNER JOIN' +
            ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND'
            + ' ReciptItems.YearID = Recipts.YearID INNER JOIN' +
            ' ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN'
            + ' StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode LEFT OUTER JOIN'
            + ' LookUps ON ReciptItems.ProductModel = LookUps.LookUpID ' +
            ' INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode ' +
            ' INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +
            ' WHERE (Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''') ' + ifthen(pnlStore1.Visible,
            'AND (Recipts.StoreID = ' + s_StoreID + ')', '') +
            ' AND (ReciptTypes.EffectType IN (2,4)) AND (Recipts.ReciptState < 3) AND '
            + ' (LookUps.Kind = 15)AND (StuffCoding.State = 0)' + TxtYearID;
          txt := txt + 'AND (ReciptItems.StuffCode NOT IN(' + SelectedStuffCode
            + ')) ' + ' GROUP BY ReciptItems.StuffCode, ReciptItems.ProductModel, LookUps.Name, StuffCoding.c_StuffName'
            + ' ,StuffCoding.c_StuffTecInfo, Units.UnitName,  LookUps.LookUpID  ';
          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            ['كدكالا', '', 'كالا', 'واحد', 'كدمدل', 'مدل', 'مشخصات فني',
            'موجودي'], Results, [100, 0, 100, 50, 100, 100, 100, 100], alLeft);
          if b then
          begin
            if not(qryItems.state in dsEditModes) then
              qryItems.edit;
            qryItems.FieldByName('ProductModel').AsString := Results[1];
          end; // if
        end;

      5:
        begin
          txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName, StuffCoding.c_StuffTecInfo,'
            + ' derivedtbl_1.SUMEntity' + ' FROM Units INNER JOIN' +
            ' StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode '

            + ' INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode  '

            + 'LEFT OUTER JOIN (SELECT TOP 100 PERCENT  ReciptItems.StuffCode, ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity), 3) AS'
            + ' SUMEntity' + ' FROM ReciptItems INNER JOIN' +
            ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID ='
            + ' Recipts.ServerID AND' +
            ' ReciptItems.YearID = Recipts.YearID INNER JOIN' +
            ' ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType' +
            ' INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +
            ' WHERE (Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''') ' + ifthen(pnlStore1.Visible,
            'AND (Recipts.StoreID = ' + s_StoreID + ')', '') +
            ' AND (ReciptTypes.EffectType IN (2,4)) AND (Recipts.ReciptState < 3)  '
            + TxtYearID +
            ' GROUP BY ReciptItems.StuffCode ORDER BY ReciptItems.StuffCode ) AS derivedtbl_1 ON StuffCoding.c_StuffCode = derivedtbl_1.StuffCode'
            + ' WHERE (StoreStuffs.n_StoreID = ' + s_StoreID +
            ')AND (StuffCoding.State = 0)';
          txt := txt + 'AND (StuffCoding.c_StuffCode NOT IN(' +
            SelectedStuffCode + '))';
          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            ['كدكالا', 'كالا', 'واحد', 'مشخصات فني', 'موجودي'], Results,
            [100, 100, 50, 100, 100], alLeft);
        end;

      6:
        begin
          txt := ' SELECT dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,dbo.StuffCoding.SellPrice1,  '
            + ' MAX((CASE ReciptTypes.EffectType WHEN 2 THEN dbo.ReciptItems.UnitSellPrice ELSE 0 END)) AS MaxUnitSellPrice, '
            + ' SUM(dbo.ReciptItems.InputEntity - dbo.ReciptItems.OutputEntity) AS SumEntity '
            + ',c_KeepPlace'

            + ' FROM   dbo.ReciptItems INNER JOIN ' +
            'dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID INNER JOIN '
            + 'dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTypes.ReciptType INNER JOIN '
            + 'dbo.StuffCoding ON dbo.ReciptItems.StuffCode = dbo.StuffCoding.c_StuffCode '
            + 'INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +
            'WHERE  (StuffCoding.State = 0)AND(dbo.Recipts.ReciptDate <= ''' +
            qryRecipts.FieldByName('ReciptDate').AsString + ''')  ' +
            ifthen(pnlStore1.Visible, 'AND (dbo.Recipts.StoreID = ' + s_StoreID
            + ')', '') +
            ' AND (dbo.ReciptTypes.EffectType = 2 OR dbo.ReciptTypes.EffectType = 4) '
            + ' AND (dbo.Recipts.ReciptState < 3) ' + TxtYearID;
          txt := txt + 'AND (dbo.ReciptItems.StuffCode NOT IN(' +
            SelectedStuffCode + '))';
          txt := txt +
            ' GROUP BY dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,dbo.StuffCoding.SellPrice1,StuffCoding.BuyPrice '
            + ',c_KeepPlace' +
            ifthen(qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
            Integer(CHkDelInSearchNotEntity) <> 0,
            ' HAVING (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <> 0) ',
            '');
          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            ['كدكالا', 'كالا', 'مشخصات فني', 'بهاي فروش 1', 'بهاي خريد',
            'موجودي', 'محل نگهداري'], Results, [100, 100, 50, 100, 100, 80,
            100], alLeft);

        end;

      8:
        begin
          txt := 'SELECT Cnt.ContractOperations.OperationId AS c_stuffcode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo,'
            + ' Units.UnitName, SUM(Cnt.ContractOperations.Amount) AS amount,' +
            ' SUM(Cnt.ContractOperations.Amount) - MAX(a.sumoutputentity) AS balance,'
            + ' SUM(CASE stuffcoding.unitpriceusekind WHEN 5 THEN cnt.contractoperations.totalprice'
            + ' WHEN 6 THEN cnt.contracts.contractbaseprice ELSE' +
            ' cnt.contractoperations.baseprice END) AS unitprice,' +
            ' MAX(Cnt.ContractOperations.ContractOperationNote) AS ContractOperationNote,'
            + ' CASE WHEN Cnt.Contracts.UpperCaseNo > 0 THEN Cnt.Contracts.UpperCaseNo'
            + ' ELSE Cnt.Contracts.CaseNo END AS CaseNo, MIN(Cnt.Contracts.ContractNo)'
            + ' AS ContractNo,' +
            ' MIN(Cnt.Contracts.ContractDate) AS ContractDate, MAX(CASE WHEN Cnt.Contracts.UpperCaseNo > 0'
            + ' THEN Cnt.Contracts.CaseNo ELSE 0 END) AS maxCaseNo' +
            ' FROM Cnt.ContractOperations INNER JOIN' +
            ' Cnt.Contracts ON Cnt.ContractOperations.CaseNo = Cnt.Contracts.CaseNo INNER JOIN'
            + ' StuffCoding ON Cnt.ContractOperations.OperationId = StuffCoding.c_StuffCode LEFT OUTER JOIN'
            + ' (SELECT Recipts.AidNumber, ReciptItems.StuffCode,' +
            ' SUM(ISNULL(ReciptItems.OutputEntity, 0)) AS sumoutputentity' +
            ' FROM Recipts INNER JOIN' +
            ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND' +
            ' Recipts.ServerID = ReciptItems.ServerID  AND' +
            ' Recipts.YearID = ReciptItems.YearID' +
            ' WHERE (Recipts.ReciptDate <= %s )' +
          // ' AND (ReciptItems.ReciptItemID NOT IN (125344, 125344))' +
            ' AND (Recipts.ReciptType = %d )' +
            ' GROUP BY Recipts.ReciptType, Recipts.ServerID, Recipts.YearID, Recipts.AidNumber,'
            + ' ReciptItems.StuffCode' +
            ' ) AS a ON Cnt.ContractOperations.OperationId =' +
            ' a.StuffCode AND Cnt.Contracts.CaseNo = a.AidNumber LEFT OUTER JOIN'
            + ' Units ON StuffCoding.n_UnitCode = Units.UnitCode' +
            ' WHERE (Cnt.Contracts.EmployerId = %d )' +
            ' GROUP BY Cnt.ContractOperations.OperationId, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName,'
            + ' CASE WHEN Cnt.Contracts.UpperCaseNo > 0 THEN Cnt.Contracts.UpperCaseNo ELSE Cnt.Contracts.CaseNo'
            + ' END';
          txt := Format(txt, [qryRecipts.FieldByName('ReciptDate').AsString,
            formType, qryRecipts.FieldByName('PersonID1').AsInteger]);

          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            ['كدكالا', 'كالا', 'مشخصات فني', 'واحد', 'مقدار', 'موجودي',
            'بهاي فروش', 'توضيحات', 'شناسه قرارداد', 'شماره قرارداد',
            'تاريخ انعقاد', 'آخرين شناسه قرارداد'], Results,
            [80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80], alLeft);

        end;

    end; // case

    if b then
    begin
      if not(qryItems.state in dsEditModes) then
        qryItems.edit;
      qryItemsStuffCode.AsString := Results[0];
    end;
    // if
  END;
  if DBGrid1.Columns[id].FieldName = 'PersonID1' then
  begin
    if not(qryRecipts.state in dsEditModes) then
      exit;
    txt := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
      GetCustomersGroupTypeSQL('Customer2DetailKind', qryinit);
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
      qryinit.FieldByName('Person2DetailCaption').AsString + 'ها ', txt,
      ['کد', qryinit.FieldByName('Person2DetailCaption').AsString], Results,
      [50, 150], alLeft);
    if b then
    begin
      if not(qryItems.state in dsEditModes) then
        qryItems.edit;
      qryItems.FieldByName('PersonID1').AsInteger := StrToInt(Results[0]);
    end; // if
  end;
  if DBGrid1.Columns[id].FieldName = 'UseUnitID' then
    SpeedButtonUseUnits(qryItems, LblUseUnitM.Caption);
  if DBGrid1.Columns[id].FieldName = 'acc_TopicCode' then
    accSpeedButtonTopicCode(qryItems);
  if DBGrid1.Columns[id].FieldName = 'acc_DetailCode' then
    accSpeedButtonDetailCode(qryItems);
  if DBGrid1.Columns[id].FieldName = 'acc_CTopicCode' then
    accSpeedButtonCTopicCode(qryItems);
  if DBGrid1.Columns[id].FieldName = 'acc_CTopicCode2' then
    accSpeedButtonCTopicCode2(qryItems);

  if DBGrid1.Columns[id].FieldName = 'acc_CTopicCode3' then
    accSpeedButtonCTopicCode3(qryItems);

  if DBGrid1.Columns[id].FieldName = 'ProductModel' then
    if qryinit.FieldByName('ControlEntityActive').AsInteger <> 2 then
      SpeedButtonProductModel(qryItems)
    else
    begin
      txt := 'AND(R_S.ReciptDate <= ''' + qryRecipts.FieldByName('ReciptDate')
        .AsString + ''')  ' + ifthen(pnlStore1.Visible, 'AND (R_S.StoreID = ' +
        s_StoreID + ')', '');
      SpeedButtonProductModelEntity(qryItems, txt);
    end;

  if DBGrid1.Columns[id].FieldName = 'ProductCode' then
    SpeedButtonProductCode(qryItems, qryinit);

  if DBGrid1.Columns[id].FieldName = 'TransFormID' then
    SpeedButtonTransFormID(qryItems, qryinit);

end;

procedure TReciptsGrid2F.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  i: Integer;
begin
  curIndex := (Sender as TDBGrideh).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if ShiftDown then
          exit;
        aDataSet := (Sender as TDBGrideh).DataSource.DataSet;

        Key := #0;
        if (qryinit.FieldByName('BarCodeKind').AsInteger = 4) then
        begin
          if (curIndex in [0, 1]) then
          begin
            i := ColumnIndexByFieldName(DBGrid1, FieldNameEntity);
            nextIndex := i;
          end
          else
            nextIndex := -1;

        end
        else
          nextIndex := curIndex + 1;

        if (curIndex > 0) and (aDataSet.FieldByName('_StuffName').IsNull) then
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
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      if LowerCase(DBGrid1.Columns[curIndex].FieldName) <> 'stuffsize' then
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrideh).DataSource.DataSet.state in dsEditModes then
        (Sender as TDBGrideh).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = TCellButtonStyleEh.cbsEllipsis
      then

    begin
      // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  else
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      inc(nextIndex);

  if nextIndex >= (Sender as TDBGrideh).Columns.Count then
    if (qryinit.FieldByName('RecallType').AsInteger > 0) and
      (qryinit.FieldByName('RecallEditKind').AsInteger <> 4) then
      nextIndex := -2
    else
      nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          if (qryinit.FieldByName('BarCodeKind').AsInteger in [0, 2]) then
            DBGrid1.SelectedIndex := 1
          else
            DBGrid1.SelectedIndex := 0;
        end;
      // 0
      -2:
        begin
          if (Sender as TDBGrideh).DataSource.state in dsEditModes then
            (Sender as TDBGrideh).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrideh).DataSource.state in dsEditModes then
            (Sender as TDBGrideh).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      begin
        if (qryinit.FieldByName('BarCodeKind').AsInteger in [6]) then
          DBGrid1.SelectedIndex := 0
        else
          (Sender as TDBGrideh).SelectedIndex := nextIndex;
      end;
    end;
  // case

end;

procedure TReciptsGrid2F.btnStoreIDClick(Sender: TObject);
var
  c, txt, s: String;
begin
  inherited;
  txt := 'SELECT n_StoreID, c_StoreName FROM Stores ';
  if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
    txt := txt + ' WHERE (StoreKind IN (' + qryinit.FieldByName('StoreKindList')
      .AsString + '))';
  // txt:=GetUsersStore(txt);
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c,
    qryinit.FieldByName('StoreCaption').AsString + 'ها', txt,
    ['کد', 'نام ' + qryinit.FieldByName('StoreCaption').AsString], alLeft);
  if s <> '' then
  begin
    // if not (qryRecipts.state in dsEditModes) then qryRecipts.edit;
    if (Sender as TSpeedButton).Tag = 2 then
      qryRecipts['StoreID2'] := c
    else
      qryRecipts['StoreID'] := c;
  end; // if

end;

procedure TReciptsGrid2F.BtnRecallSpecialClick(Sender: TObject);
begin
  inherited;
  if (qryinit.FieldByName('RecallEditKind').AsInteger <> 6) then
    if not(StrToBool(ReadConfig(APPID, 'RecallSpecialReciptsFchkActiveMaster' +
      qryinit.FieldByName('ReciptType').AsString, 'False'))) and
      (not CheckRequiredFields(qryRecipts)) then
      exit;
  try
    qryItems.DisableControls;
    qryItems.AutoCalcFields := False;
    qryItems.OnCalcFields := nil;
    qryItems.AfterScroll := nil;
    qryItemsAidDate.OnChange := nil;
    qryItemsSecondTypeItem.OnChange := nil;
    qryItemsPersonID1.OnChange := nil;
    case qryinit.FieldByName('RecallType').AsInteger of
      0, 1, 14, 17, 19, 20:
        actRecall.Execute;
      2, 5, 10, 11, 13, 15, 16, 18:
        actRecallSpecialReciptsF.Execute;
      3:
        RecallBook(1);
      4:
        RecallBook(2);

      7, 12:
        RecallIndentF.SelectRecall(FormOutput, qryinit, qryRecipts, qryItems);
      8:
        actRecallSpecialReciptsSumF.Execute;

      // 0_ندارد
      // 1_فراخواني يك به يك
      // 2_فراخواني ويژه موجودي
      // 3_فراخواني بر اساس اطلاعات سفارشات - مقدار نهايي
      // 4_فراخواني بر اساس اطلاعات سفارشات - مقدار درخواست
      // 5_فراخواني ويژه عمومي
      // 6_جستجوي كدينگ كالاي خاص
      // 7_فراخواني سفارشات
      // 8_فراخواني تجميعي
      // 9_فراخواني يك به يك (تغيير تايپ فرم)‏
      // 10_فراخواني ويژه عمومي(كپي مقدار درخواست)
      // 11_فراخواني ويژه عمومي(كپي تفاوت مقدار درخواست و خرید)
      // 12_فراخواني سفارشات-كنترل موجودي
      // 13_فراخواني عمومي تجميعي
      // 14_فراخواني يك به يك (و ثبت عادي)‏
      // 15_فراخواني ويژه عمومي _ ويرايش و كنترل موجودي مقدار
      // 16_فراخواني ويژه عمومي _ تغيير نوع اطلاعات فرمهاي قبل درصورت ويرايش آن
      // 17 - فراخوانی یک به یک با انتقال فی

    end;
  finally
    qryItemsAidDate.OnChange := qryItemsAidDateChange;
    qryItemsSecondTypeItem.OnChange := qryItemsSecondTypeItemChange;
    qryItemsPersonID1.OnChange := qryItemsPersonID1Change;
    qryItems.AfterScroll := qryItemsAfterScroll;
    qryItems.AutoCalcFields := True;
    qryItems.OnCalcFields := qryItemsCalcFields;
    qryItems.EnableControls;
  end;
end;

procedure TReciptsGrid2F.RecallBook(flag: Byte);
var
  rid: Integer;
begin
  try
    qryItems.AfterOpen := nil;
    // qryItems.AfterScroll:=nil;
    qryItems.AfterPost := nil;
    myStore.code := qryRecipts.FieldByName('StoreID').AsInteger;
    rid := qryItems.RecordCount;
    If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
      'هيچ فرمي براي فراخواني مشخص نشده است') then
      exit;
    if RecallSpecialRecipts2F.SelectRecall(formType,
      qryReciptsReciptID.AsInteger, FormOutput, myStore.code, qryItems, qryinit,
      flag) then
    begin
      qryItems.MoveBy(rid);
    end;
  finally
    qryItems.AfterOpen := qryItemsAfterOpen;
    // qryItems.AfterScroll:=qryItemsAfterScroll;
    qryItems.AfterPost := qryItemsAfterPost;
  end;

end;

procedure TReciptsGrid2F.BtnExcelClick(Sender: TObject);
begin
  inherited;
  try
    qryItems.AfterOpen := nil;
    qryItems.AfterScroll := nil;
    qryItems.AfterPost := nil;
    qryRecipts.edit;
    GetExcelAct := True;
    GetExcelF.ShowImPortExcel(qryItems);
  finally
    if GetExcelAct then
      GetANewID4Excel(qryItems, qryRecipts, qryinit);
    qryItems.AfterOpen := qryItemsAfterOpen;
    qryItems.AfterScroll := qryItemsAfterScroll;
    qryItems.AfterPost := qryItemsAfterPost;
  end;
end;

procedure TReciptsGrid2F.Panel3Enter(Sender: TObject);
begin
  inherited;
  if DBGrid1.Enabled then
    try
      DBGrid1.SetFocus;
      DBGrid1.SelectedIndex := 0;
    except
      on E: Exception do
    end;

end;

procedure TReciptsGrid2F.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  if qryinit.FieldByName('BarCodeKind').AsInteger in [0, 2, 4] then
    DBGrid1.SelectedIndex := 1
  else
    DBGrid1.SelectedIndex := 0
end;

procedure TReciptsGrid2F.qryReciptsSecondTypeChange(Sender: TField);
var
  txt: string;
begin
  inherited;
  if qryinit.FieldByName('AidNumRestOnSecType').AsInteger <> 1 then
    exit;
  if Not MultiFormType then
    FreeReservedCodes(DMf.adcBSell, 'Recipts', 'ReciptNumber',
      IntToStr(formType));
  txt := Format('SELECT MAX(ReciptNumber)FROM Recipts WHERE(SecondType = %d )',
    [Sender.AsInteger]);
  txt := txt + Format('AND (ReciptType = %d )', [formType]);
  IF RestartStore THEN
    txt := txt + 'AND(StoreID=' + IntToStr(myStore.code) + ')';
  txt := txt + 'AND(YearID=' + IntToStr(APPBank.Year) + ')';
  qryRecipts.FieldByName('ReciptNumber').AsInteger :=
    GetANewCode(IntToStr(formType), txt, 'ReciptNumber');
end;

procedure TReciptsGrid2F.qryReciptsSellsEmporiumChange(Sender: TField);
begin
  inherited;
  if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger = 5 then
  begin
    if Not MultiFormType then
      FreeReservedCodes(DMf.adcBSell, 'Recipts', 'ReciptNumber',
        IntToStr(formType));
    GetReciptNumber(qryinit, qryRecipts, 0, myStore);
  end;

end;

procedure TReciptsGrid2F.qryItemsArzAmountChange(Sender: TField);
var
  r: Currency;
begin
  inherited;
  if (qryinit.FieldByName('ArzActive').AsInteger = 1) then
  begin
    r := RoundTo(qryItems.FieldByName('ArzAmount').AsFloat *
      qryRecipts.FieldByName('RialsEqual').AsFloat, RoundCount);
    if qryItems.FieldByName(FieldNamePrice).AsCurrency <> r then
      qryItems.FieldByName(FieldNamePrice).AsCurrency := r;
  end;

end;

procedure TReciptsGrid2F.qryItemsArzRateChange(Sender: TField);
var
  r: Currency;
begin
  inherited;
  if (qryinit.FieldByName('ArzActive').AsInteger = 1) then
  begin
    r := RoundTo(qryItems.FieldByName('ArzRate').AsFloat *
      (qryItems.FieldByName(FieldNameWeight).AsFloat), RoundCount);
    if qryItems.FieldByName('ArzAmount').AsCurrency <> r then
      qryItems.FieldByName('ArzAmount').AsCurrency := r;
  end;

  if (qryinit.FieldByName('ArzActive').AsInteger in [2]) then
    ChangeUnitSellPrice;

  if (qryinit.FieldByName('ArzActive').AsInteger in [3]) then
  begin
    r := RoundTo(qryItems.FieldByName('ArzRate').AsFloat *
      qryRecipts.FieldByName('RialsEqual').AsFloat, RoundCount);
    if qryItemsUnitSellPrice.AsCurrency <> r then
      qryItemsUnitSellPrice.AsCurrency := r;
  end;

end;

procedure TReciptsGrid2F.qryReciptsArzTypeIDChange(Sender: TField);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    if qryinit.FieldByName('ArzTypeID').AsInteger <> 0 then
      SQL.Text := 'SELECT Amount1 FROM LookUps WHERE LookUpID=' +
        IntToStr(Sender.AsInteger)
    else
    begin
      SQL.Text := 'SELECT TOP 1 EqualityWithMainUnit FROM CurrenciesItems';
      SQL.Add('WHERE (CurrenciesID = :ID ) AND (CurrenciesDate <= :Date )');
      SQL.Add('ORDER BY CurrenciesDate DESC, CurrenciesTime DESC');
      Parameters.ParamByName('ID').Value := Sender.AsInteger;
      Parameters.ParamByName('Date').Value := qryReciptsReciptDate.AsString;
    end;
    Active := True;
    qryRecipts.FieldByName('RialsEqual').AsCurrency := Fields[0].AsCurrency;
    Active := False;
  end;
end;

procedure TReciptsGrid2F.ALLNClick(Sender: TObject);
var
  FieldVal, FieldName: string;
  DoWhile: Boolean;
  ignore: Integer;
begin
  inherited;
  FieldName := (Sender as TMenuItem).Hint;
  ignore := (Sender as TMenuItem).Tag;
  if FieldName = 'Entity' then
    FieldName := FieldNameEntity;
  DoWhile := True;
  With qryItems do
  begin
    FieldVal := FieldByName(FieldName).AsString;
    FieldVal := Trim(get_box(' مقدار تعمیم ' + FieldByName(FieldName)
      .DisplayLabel, 'مقدار تعمیم را برای اعمال در بقیه سطرها وارد کنید',
      FieldVal));
    First;
    while (not Eof) and DoWhile do
    begin
      edit;
      if ignore <> 0 then
      begin
        if FieldByName(FieldName).AsString <> IntToStr(ignore) then
          FieldByName(FieldName).AsString := FieldVal;
      end
      else
        FieldByName(FieldName).AsString := FieldVal;

      If LastKeyPressed = VK_ESCAPE then
        if get_response('عمليات متوقف شود؟') = mrYes then
        begin
          DoWhile := False;
          LastKeyPressed := 0;
        end;
      LastKeyPressed := 0;
      Next;
      Application.ProcessMessages;
    end;
  end;
end;

procedure TReciptsGrid2F.N2Click(Sender: TObject);
var
  DoWhile: Boolean;
begin
  inherited;
  DoWhile := True;
  With qryItems do
  begin
    First;
    while (not Eof) and DoWhile do
    begin
      edit;
      CalcOnStuffDiscont(qryItems, qryRecipts, qryinit);
      If LastKeyPressed = VK_ESCAPE then
        if get_response('عمليات متوقف شود؟') = mrYes then
        begin
          DoWhile := False;
          LastKeyPressed := 0;
        end;
      LastKeyPressed := 0;
      Next;
      Application.ProcessMessages;
    end;
  end;
end;

procedure TReciptsGrid2F.ppDBCalcnum2alphabetGetText(Sender: TObject;
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

procedure TReciptsGrid2F.ppDBImage1GetPicture(Sender: TObject;
  aPicture: TPicture);
var
  flName: string;
begin
  inherited;
  flName := opt._ArchivePath + '\' + qryItemsStuffCode.AsString + '.jpg';
  if FileExists(flName) then
  begin
    aPicture.LoadFromFile(flName);
  end
  else
    aPicture.Bitmap := nil;
end;

procedure TReciptsGrid2F.FormShow(Sender: TObject);
var
  i: Byte;
begin
  inherited;
  DataSetDelete1_.Visible := not IsFlowFroms(2, formType);
  for i := 0 to DBGrid1.Columns.Count - 1 do
    if (DBGrid1.Columns[i].Visible) and
      (DBGrid1.Columns[i].FieldName <> EmptyStr) and
      (qryItems.FindField(DBGrid1.Columns[i].FieldName) <> nil) and
      (qryItems.FieldByName(DBGrid1.Columns[i].FieldName).FieldKind in [fkData])
    then
    begin
      qryItems.FieldByName(DBGrid1.Columns[i].FieldName).Tag := 3;
    end;

  if opt.StuffCodingKind in [1, 2] then
  begin
    DBGrid1.Columns[4].Index := 52;
    DBGrid1.Columns[3].Index := 51;
  end;
  PriceOn_StoreType := PriceOnStoreType(myStore.code, DBGrid1, qryItems);

  // HighLightRequiredFields(qryRecipts,clSkyBlue);

  // for i := 0 to ComponentCount - 1 do
  // begin
  // if (components[i] is TPanel) then
  // begin
  // TPanel(components[i]).Caption := TPanel(components[i]).Name;
  // end;
  // end;

end;

procedure TReciptsGrid2F.ppLbl__StandardRateGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := 0;
  With qryItems do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      PayablePrice := FieldByName('StandardRate').AsFloat *
        FieldByName(FieldNameEntity).AsFloat + PayablePrice;
      Next;
    end;
    EnableControls;
  end;
  qry_Deficits4PrintID10.Requery;
  PayablePrice := PayablePrice + CalcSumFileds(qry_Deficits4PrintID10,
    'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsGrid2F.NReq_InvEntityClick(Sender: TObject);
begin
  inherited;
  qryItems.Filter := ' Req_InvEntity < 0 ';
  qryItems.Filtered := not qryItems.Filtered;
  NReq_InvEntity.Checked := qryItems.Filtered;
end;

// procedure TReciptsGrid2F.DBGrid1TitleClick(Column: TColumneh);
// begin
// inherited;
// SortTitle(Column);
// end;

procedure TReciptsGrid2F.qryReciptsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if (qryinit.FieldByName('ChekingPrintEntity').AsInteger = 0) then
    qryItems.Filtered := False;
end;

procedure TReciptsGrid2F.qryReciptsDefaultDurationChange(Sender: TField);
begin
  inherited;
  qryReciptsDefaultDate.AsString := DefaultDateCalc(qryReciptsDefaultDuration,
    qryReciptsReciptDate)
end;

procedure TReciptsGrid2F.qryItemsAidDateChange(Sender: TField);
begin
  inherited;
  qryItemsFieldChange(Sender)
end;

procedure TReciptsGrid2F.qryItemsSecondTypeItemChange(Sender: TField);
begin
  inherited;
  qryItemsFieldChange(Sender)
end;

procedure TReciptsGrid2F.qryItemsPersonID1Change(Sender: TField);
begin
  inherited;
  // IF qryinit.FieldByName('PersonID1OnDetailActive').AsInteger
  // in [0, 1, 2, 3] THEN
  // qryCustActive(qryCustomer2Detail, Sender.AsInteger);
  qryItemsFieldChange(Sender)
end;

procedure TReciptsGrid2F.GetItemDateOFpreReciptItemID;
var
  qry: TADOQuery;
begin
  if (qryinit.FieldByName('ControlEntityActive').AsInteger = 3) and
    (qryItemspreReciptItemID.AsLargeInt <> 0) then
  begin
    qry := TADOQuery.Create(Self);
    With qry do
      try
        Connection := theMainConnection;
        SQL.Text := 'SELECT ItemDate';
        SQL.Add('FROM ReciptItems');
        SQL.Add(Format('WHERE (ReciptItemID = %d )',
          [qryItemspreReciptItemID.AsInteger]));
        SQL.Add(Format('AND (StuffCode = %d)', [qryItemsStuffCode.AsLargeInt]));
        SQL.Add(Format('AND (YearID = %d)', [qryItemsYearID.AsInteger]));
        SQL.Add(Format('AND (ServerID = %d)', [qryItemsServerID.AsInteger]));
        Active := True;
        qryItemsItemDate.AsString := Fields[0].AsString;
        Active := False;
      finally
        Free;
      end;
  end;
end;

procedure TReciptsGrid2F.qryItemsFieldChange(Sender: TField);
var
  i: Integer;
begin
  if (qryinit.FieldByName('RecallType').AsInteger = 16) and
    (qryItemspreReciptItemID.AsInteger > 0) then
    if var_SQL_ProductVersion > 8 then
      with DMf.qryTmpTmp do
        try
          SQL.Text := 'DECLARE @NewValue varchar(20),@YearID int,@ServerID int';
          SQL.Add('DECLARE @childId int,@preReciptItemID int,@StuffCode bigint ');
          SQL.Add(Format('SET @childId=%d', [qryItemsReciptItemID.AsInteger]));
          SQL.Add(Format('SET @YearID=%d', [qryItemsYearID.AsInteger]));
          SQL.Add(Format('SET @ServerID=%d', [qryItemsServerID.AsInteger]));

          SQL.Add(Format('SET @NewValue=%s', [QuotedStr(Sender.AsString)]));
          SQL.Add(Format('SET @preReciptItemID=%d',
            [qryItemspreReciptItemID.AsInteger]));

          SQL.Add(Format('SET @StuffCode=%d', [qryItemsStuffCode.AsLargeInt]));

          SQL.Add(';WITH #results AS');
          SQL.Add('(');
          SQL.Add('SELECT @childId AS ReciptItemID,@preReciptItemID AS preReciptItemID');
          SQL.Add(',@YearID AS YearID,@ServerID AS ServerID');
          SQL.Add('FROM ReciptItems');

          SQL.Add('where ( (ReciptItemID = @preReciptItemID)OR(preReciptItemID = @preReciptItemID)');
          SQL.Add('or(ReciptItemID = @childId)OR(preReciptItemID = @childId))');

          SQL.Add('UNION ALL');
          SQL.Add('SELECT t.ReciptItemID,');
          SQL.Add('t.preReciptItemID ,t.YearID,t.ServerID');
          SQL.Add('FROM ReciptItems t');
          SQL.Add('INNER JOIN #results r ON r.preReciptItemID = t.ReciptItemID');
          SQL.Add(')');
          SQL.Add('UPDATE ReciptItems');
          SQL.Add(Format('SET %s=@NewValue', [Sender.FieldName]));
          SQL.Add('where ReciptItemID IN(SELECT ReciptItemID');
          SQL.Add('FROM #results)');
          // SQL.Add('AND (YearID = @YearID)');
          SQL.Add('AND (StuffCode = @StuffCode)');
          SQL.Add('AND (ServerID = @ServerID)');
          SQL.Add('AND (ReciptItemID <> @childId)');

          // SQL.Add('AND ( (ReciptItemID = @preReciptItemID)OR(preReciptItemID = @preReciptItemID)');
          // SQL.Add('or(ReciptItemID = @childId)OR(preReciptItemID = @childId))');

          i := ExecSQL;
          if i > 0 then
            Warn2(IntToStr(i) + Format(' مورد %s تغيير يافت',
              [Sender.DisplayLabel]));
        finally

        end
    else
      Warn2('اين مورد در Microsoft SQL Server 2008 و بالاتر امكان پذير است');
end;

procedure TReciptsGrid2F.qryItemsSecondTypeItemGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col: TColumneh;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')];
  if col.PickList.IndexOfObject(TObject(Sender.AsInteger)) <> -1 then
    Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsGrid2F.qryItemsSecondTypeItemSetText(Sender: TField;
  const Text: String);
var
  col: TColumneh;
  i: Integer;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')];
  i := col.PickList.IndexOf(Text);
  if i <> -1 then
    Sender.AsInteger := Integer(col.PickList.Objects[i])
end;

procedure TReciptsGrid2F.actDeleteCorrelateReciptExecute(Sender: TObject);
begin
  inherited;
  DeleteCorrelateRecipt(qryinit, qryRecipts)
end;

procedure TReciptsGrid2F.actGetExcelExecute(Sender: TObject);
var
  qryItm: TADOQuery;
  Grd2: TDBGrideh;
  DataSource1: TDataSource;
  i: Integer;
  fN: string;
begin
  inherited;
  qryItm := TADOQuery.Create(Self);
  Grd2 := TDBGrideh.Create(Self);
  DataSource1 := TDataSource.Create(Self);
  try
    DataSource1.DataSet := qryItm;
    Grd2.DataSource := DataSource1;
    qryItm.LockType := ltBatchOptimistic;
    qryItm.Connection := DMf.adcBSell;
    qryItm.CommandTimeout := 0;
    // q_r_y.Fields.Clear;
    qryItm.SQL.Text := 'SELECT * FROM ReciptItems WHERE ReciptID = 0 ';
    qryItm.Active := True;
    for i := 0 to qryItm.Fields.Count - 1 do
    begin
      fN := qryItm.Fields[i].FieldName;
      if qryItems.FindField(fN) <> nil then
      begin
        qryItm.Fields[i].DisplayLabel := qryItems.FieldByName(fN).DisplayLabel;
        qryItm.Fields[i].Tag := qryItems.FieldByName(fN).Tag;
      end;
    end;

    for i := 0 to qryItems.Fields.Count - 1 do
    begin
      fN := qryItems.Fields[i].FieldName;
      if qryItm.FindField(fN) <> nil then
      begin
        qryItm.FieldByName(fN).Index := qryItems.Fields[i].Index;
      end;
    end;

    qryItm.AfterInsert := qryItemsAfterInsert;
    // BeforePost:=qryItemsBeforePost;
    // SetFieldIndexFormGrid(qry,DBGrid1);
    GetExcelAct := True;
    GetExcelF.ShowImPortExcel(qryItm);
  finally

    if GetExcelAct then
      if GetANewID4Excel(qryItm, qryRecipts, qryinit, True) then
        try
          qryItm.UpdateBatch;
        except
          on E: Exception do
          begin
            add2log(E.Message);

            Warn(E.Message);
          end;
        end; // try
    ReciptsLocate;
    qryItm.Free;
  end;
end;

procedure TReciptsGrid2F.ReciptsLocate;
var
  ReciptID, ServerID, YearID: Integer;
begin
  ReciptID := qryAllRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryAllRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryAllRecipts.FieldByName('YearID').AsInteger;
  qryAllRecipts.First;
  qryAllRecipts.Locate('ReciptID;ServerID;YearID',
    VarArrayOf([ReciptID, ServerID, YearID]), []);
end;

procedure TReciptsGrid2F.actWorkflowHistoryFExecute(Sender: TObject);
begin
  inherited;
  WorkflowHistoryF.Enter(formType, qryReciptsReciptID.AsInteger,
    qryReciptsYearID.AsInteger, qryReciptsServerID.AsInteger);
end;

procedure TReciptsGrid2F.actAllEditExecute(Sender: TObject);
begin
  inherited;
  AllEdit(qryRecipts, qryItems)
end;

procedure TReciptsGrid2F.DBnum2alphabetGetText(Sender: TObject;
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

procedure TReciptsGrid2F.btnUseOtherIDClick(Sender: TObject);
begin
  inherited;
  SpeedButtonUseOthers(qryRecipts, LblUseUnitM.Caption)
end;

procedure TReciptsGrid2F.ppDBText6GetText(Sender: TObject; var Text: String);
var
  col: TColumneh;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')];
  if col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
    .AsInteger)) <> -1 then
    Text := col.PickList
      [col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
      .AsInteger))];

end;

procedure TReciptsGrid2F.pdbtxtAllDBSUMGetText(Sender: TObject;
  var Text: string);
var
  c: Currency;
  s: string;
begin
  inherited;
  s := '0';
  if DBGrid1.FindFieldColumn((Sender as TppDBText).DataField) <> nil then
    s := VarToStr(DBGrid1.FieldColumns[(Sender as TppDBText).DataField]
      .Footer.SumValue);
  c := StrToCurr(s);
  Text := CurrToStrF(c, ffGeneral, 0);
end;

procedure TReciptsGrid2F.A_l_l_SP__ClickClick(Sender: TObject);
begin
  inherited;
  qryItemsUnitSellPrice.AsCurrency := StrToCurr((Sender as TMenuItem).Hint)
end;

procedure TReciptsGrid2F.btnDataSetDelete1_Click(Sender: TObject);
begin
  inherited;
  Warn(' از فلش سبز رنگ سمت چپ فرم ' + mnuReturnRecallType9.Caption +
    ' استفاده كنيد ');
end;

procedure TReciptsGrid2F.BtnDeficitsMouseEnter(Sender: TObject);
begin
  inherited;
  // grd1.DrawingStyle := gdsGradient;
  grd1.Visible := True;
end;

procedure TReciptsGrid2F.BtnDeficitsMouseLeave(Sender: TObject);
begin
  inherited;
  grd1.Visible := False
end;

procedure TReciptsGrid2F.ppDBTextSumSelectGetText(Sender: TObject;
  var Text: String);
var
  c: Currency;
begin
  inherited;
  c := CalcSumFileds
    (TADOQuery(FindComponent(((Sender as TppDBText).DataPipeline.GetDataSetName)
    )), (Sender as TppDBText).DataField);
  Text := CurrToStrF(c, ffGeneral, 0)
end;

procedure TReciptsGrid2F.qryItemsMachineWeightChange(Sender: TField);
begin
  inherited;
  case qryinit.FieldByName('TozinActive').AsInteger of
    0, 3:
      MachineFullWeight_MachineWeight;
  else
    begin
      qryItems.FieldByName('MachineFullWeight').AsFloat := MachineFullWeight1 +
        qryItems.FieldByName('TotalWeight').AsFloat;
    end;
  end

end;

procedure TReciptsGrid2F.MachineFullWeight_MachineWeight;
var
  w: Real;
begin
  w := qryItems.FieldByName('MachineFullWeight').AsFloat -
    qryItems.FieldByName('MachineWeight').AsFloat;
  if w < 0 then
  begin
    w := Abs(w);
    /// w := 0;   هیتال بتن
    BigMessage('حاصل منفي مي شود.‏', 1);
  end;
  qryItems.FieldByName(FieldNameEntity).AsFloat := w
end;

procedure TReciptsGrid2F.qryItemsMachineFullWeightChange(Sender: TField);
begin
  inherited;
  MachineFullWeight_MachineWeight
end;

procedure TReciptsGrid2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterReciptDate);

      if qryinit.FieldByName('Person1Active').AsInteger = 1 then
        AddItem(DMf.adcBSell, 'PersonID1', qryinit.FieldByName('Person1Caption')
          .AsString, 'كد', ftInteger, dvMinMax, '', '', ciLookup,
          ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
          + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
          + Trim(qryinit.FieldByName('CustomerKind1').AsString) + '))',

          ' SELECT isnull(min(CustID),0),isnull(max(CustID),0) FROM Customers INNER JOIN CustomersGroup ON '
          + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
          + Trim(qryinit.FieldByName('CustomerKind1').AsString) + '))');

      AddItem(DMf.adcBSell, 'ReciptNumber', ' فرم ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts WHERE ReciptType = '
        + IntToStr(formType) + ifthen(RestartStore, ' And ( StoreID  = ' +
        qryReciptsStoreID.AsString + ' )', ''));

      if ShowModal = mrOk then
      begin
        GetFilterString;
        With qryAllRecipts do
        begin
          qryItems.Close;
          Close;
          Parameters.ParamByName('ReciptNumberFrom').Value :=
            GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
          Parameters.ParamByName('ReciptNumberTo').Value :=
            GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

          Parameters.ParamByName('ReciptDateFrom').Value :=
            GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
          Parameters.ParamByName('ReciptDateTo').Value :=
            GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

          IF RestartStore THEN
          begin
            Parameters.ParamByName('StoreIDFrom').Value := myStore.code;
            Parameters.ParamByName('StoreIDTo').Value := myStore.code;
          end
          else
          begin
            Parameters.ParamByName('StoreIDFrom').Value := -32768;
            Parameters.ParamByName('StoreIDTo').Value := 32767;
          end;

          if qryinit.FieldByName('Person1Active').AsInteger = 1 then
          begin
            Parameters.ParamByName('PersonID1From').Value :=
              GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
            Parameters.ParamByName('PersonID1To').Value :=
              GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
          end
          else
          begin
            Parameters.ParamByName('PersonID1From').Value := -2147483646;
            Parameters.ParamByName('PersonID1To').Value := 2147483647;
          end;

          Open;
        end;
        With qryRecipts do
        begin
          Close;
          Parameters.ParamByName('ReciptIDFrom').Value := 0;
          Parameters.ParamByName('ReciptIDTo').Value := 2147483647;
          Parameters.ParamByName('ReciptNumberFrom').Value :=
            GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
          Parameters.ParamByName('ReciptNumberTo').Value :=
            GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

          Parameters.ParamByName('ReciptDateFrom').Value :=
            GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
          Parameters.ParamByName('ReciptDateTo').Value :=
            GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

          Parameters.ParamByName('ServerIDFrom').Value := -999;
          Parameters.ParamByName('ServerIDTo').Value := 2147483647;

          if qryinit.FieldByName('Person1Active').AsInteger = 1 then
          begin
            Parameters.ParamByName('PersonID1From').Value :=
              GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
            Parameters.ParamByName('PersonID1To').Value :=
              GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
          end
          else
          begin
            Parameters.ParamByName('PersonID1From').Value := -2147483646;
            Parameters.ParamByName('PersonID1To').Value := 2147483647;
          end;

          IF RestartStore THEN
          begin
            Parameters.ParamByName('StoreIDFrom').Value := myStore.code;
            Parameters.ParamByName('StoreIDTo').Value := myStore.code;
          end
          else
          begin
            Parameters.ParamByName('StoreIDFrom').Value := -32768;
            Parameters.ParamByName('StoreIDTo').Value := 32767;
          end;

          Open;
        end;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TReciptsGrid2F.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  NAllRecords.Checked := not NAllRecords.Checked
end;

procedure TReciptsGrid2F.BtnMachineFullWeight2Click(Sender: TObject);
begin
  inherited;
  if not(qryItems.state in dsEditModes) then
    qryItems.edit;
  qryItems.FieldByName('TotalWeight').AsFloat := ReadFromTxtOrComPort;
  qryItemsMachineWeightChange(qryItems.FieldByName('MachineWeight'));
end;

procedure TReciptsGrid2F.actCopyPasteExecute(Sender: TObject);
var
  qry: TADOQuery;
  i, k, RowCount: Integer;
  ts: TStringList;
begin
  inherited;
  // RowCount := 1;
  RowCount := StrToInt(Trim(get_box('تعداد سطر',
    'تعداد سطرها را براي كپي سطر جاري وارد كنيد', '1', False, '999')));
  BigMessageProgBar('در حال كپي آرتيكل  ...‏', RowCount);
  if not(qryRecipts.state in dsEditModes) then
    qryRecipts.edit;
  if (qryItems.state in dsEditModes) then
    qryItems.Post;
  ts := TStringList.Create;
  for i := 1 to DBGrid1.Columns.Count - 1 do
  begin
    if (not DBGrid1.Columns[i].ReadOnly) and (DBGrid1.Columns[i].Visible) then
      ts.Add(DBGrid1.Columns[i].FieldName);
  end;
  qry := TADOQuery.Create(Self);
  try
    qryItems.DisableControls;
    with qry do
    begin
      Clone(qryItems, ltReadOnly);
      Filter := 'ReciptItemID=' + qryItems.FieldByName('ReciptItemID').AsString;
      Filtered := True;
      for k := 1 to RowCount do
      begin
        qryItems.Append;
        for i := 0 to ts.Count - 1 do
        begin
          qryItems.FieldByName(ts[i]).AsString := FieldByName(ts[i]).AsString;
        end;
        GoProgressBar(IntToStr(k));
        qryItems.Post;
      end;
      DBGrid1.SetFocus;
    end;
  finally
    qryItems.EnableControls;
    qry.Free;
    ts.Free;
    BigMessage('آرتيكل كپي شد.‏', 1);
  end;
end;

procedure TReciptsGrid2F.actBarcodeExecute(Sender: TObject);
begin
  inherited;
  PrintBarcode(qryinit, qryItems, ppReportBarcode, cliBarcode,
    pdtlbndBarcodeppDetailBand3, Form_InOut)
end;

procedure TReciptsGrid2F.ppLblBarCodeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  if cliBarcode.FieldByName('StuffCode').AsLargeInt = 0 then
    Text := EmptyStr;
end;

procedure TReciptsGrid2F.qryItems____StuffTecInfoChange(Sender: TField);
begin
  inherited;
  case qryinit.FieldByName('BarCodeKind').AsInteger of
    6:
      GetStuffCodeFromsynthetic(Sender.AsString, qryinit, qryItems,
        SyntheticCodeIn);

  else
    GetStuffCodeFromStuffTecInfo(Sender.AsString);
  end;
end;

procedure TReciptsGrid2F.Accept_Rollback_EntityChange(Sender: TField);
var
  aNotifyEvent: TFieldNotifyEvent;
begin
  inherited;
  if qryinit.FieldByName('CartonKind').AsInteger <> 6 then
    try
      qryItemsRollbackWeight.OnChange := nil;
      qryItemsRollbackWeight.AsFloat :=
        RoundTo(qryItemsRollbackEntity.AsFloat * (qryItems_Carton.AsFloat),
        RoundCount);
    finally
      qryItemsRollbackWeight.OnChange := Accept_Rollback_WeightChange;
    end;

  aNotifyEvent := qryItems.FieldByName(FieldNameEntity).OnChange;
  try
    // qryItems.FieldByName(FieldNameEntity).OnChange := nil;
    qryItems.FieldByName(FieldNameEntity).AsFloat :=
      RoundTo(qryItemsAcceptEntity.AsFloat, RoundCount) -
      RoundTo(qryItemsRollbackEntity.AsFloat, RoundCount);
  finally
    qryItems.FieldByName(FieldNameEntity).OnChange := aNotifyEvent;
  end;

  if opt.Carton then
    if qryinit.FieldByName('CartonKind').AsInteger = 6 then
      try
        qryItemsAcceptWeight.OnChange := nil;
        qryItemsRollbackWeight.OnChange := nil;
        qryItemsRequestedWeight.OnChange := nil;

        qryItemsAcceptWeight.AsFloat :=
          RoundTo(qryItemsAcceptEntity.AsFloat / (qryItems_Carton.AsFloat),
          RoundCount);

        qryItemsRollbackWeight.AsFloat :=
          RoundTo(qryItemsRollbackEntity.AsFloat / (qryItems_Carton.AsFloat),
          RoundCount);
        /// ////////////////////
        qryItemsRequestedWeight.AsFloat :=
          RoundTo(qryItemsRequestedEntity.AsFloat / (qryItems_Carton.AsFloat),
          RoundCount);
      finally
        qryItemsAcceptWeight.OnChange := Accept_Rollback_WeightChange;
        qryItemsRollbackWeight.OnChange := Accept_Rollback_WeightChange;
        qryItemsRequestedWeight.OnChange := qryItemsRequestedWeightChange;
      end
    else
    begin
      qryItemsAcceptWeight.AsFloat :=
        RoundTo(qryItemsAcceptEntity.AsFloat * (qryItems_Carton.AsFloat),
        RoundCount);
    end

end;

procedure TReciptsGrid2F.Accept_Rollback_WeightChange(Sender: TField);
begin
  inherited;
  if WeightDisplay then
    qryItems.FieldByName(FieldNameWeight).AsFloat :=
      RoundTo(qryItemsAcceptWeight.AsFloat, RoundCount) -
      RoundTo(qryItemsRollbackWeight.AsFloat, RoundCount);

  if qryinit.FieldByName('CartonKind').AsInteger = 6 then
    try
      qryItemsRequestedEntity.OnChange := nil;
      qryItemsRollbackEntity.OnChange := nil;
      qryItemsAcceptEntity.OnChange := nil;
      /// ///////////
      qryItemsRequestedEntity.AsFloat :=
        RoundTo((qryItemsRequestedWeight.AsFloat) * (qryItems_Carton.AsFloat),
        RoundCount);

      qryItemsRollbackEntity.AsFloat :=
        RoundTo((qryItemsRollbackWeight.AsFloat) * (qryItems_Carton.AsFloat),
        RoundCount);

      qryItemsAcceptEntity.AsFloat :=
        RoundTo((qryItemsAcceptWeight.AsFloat) * (qryItems_Carton.AsFloat),
        RoundCount);

    finally
      qryItemsRequestedEntity.OnChange := qryItemsRequestedEntityChange;
      qryItemsRollbackEntity.OnChange := Accept_Rollback_EntityChange;
      qryItemsAcceptEntity.OnChange := Accept_Rollback_EntityChange;

    end;

end;

procedure TReciptsGrid2F.qryItemsRequestedEntityChange(Sender: TField);
begin
  inherited;
  qryItems.FieldByName(FieldNameEntity).AsInteger := 0;
  qryItemsStuffCodeChange(qryItemsStuffCode);

  if qryinit.FieldByName('RequestedChange').AsInteger = 3 then
  begin
    qryItems.FieldByName(FieldNameEntity).AsFloat :=
      qryItemsRequestedEntity.AsFloat;
  end;
  /// //////////////////////////////////95/10/05

  if qryItemsRequestedEntity.AsFloat - EntityValue > 0 then
    qryItems.FieldByName(FieldNameEntity).AsFloat :=
      RoundTo(qryItemsRequestedEntity.AsFloat - EntityValue, RoundCount);

  if (qryinit.FieldByName('AcceptRollbackEntity').AsInteger > 0) or
    (qryinit.FieldByName('CartonKind').AsInteger = 6) then
  begin
    qryItemsAcceptEntity.AsFloat := RoundTo(qryItemsRequestedEntity.AsFloat,
      RoundCount);

    qryItemsRequestedWeight.OnChange := nil;
    qryItemsRequestedWeight.AsFloat :=
      RoundTo((qryItemsRequestedEntity.AsFloat) / (qryItems_Carton.AsFloat),
      RoundCount);
    qryItemsRequestedWeight.OnChange := qryItemsRequestedWeightChange;
  end;
  CartonKind5(Sender);

end;

procedure TReciptsGrid2F.qryItemsRequestedWeightChange(Sender: TField);
begin
  inherited;
  if qryinit.FieldByName('CartonKind').AsInteger = 6 then
    qryItemsRequestedEntity.AsFloat :=
      RoundTo((qryItemsRequestedWeight.AsFloat) * (qryItems_Carton.AsFloat),
      RoundCount);

  if qryinit.FieldByName('RequestedChange').AsInteger in [2, 3] then
  begin
    qryItems.FieldByName(FieldNameWeight).AsFloat :=
      qryItemsRequestedWeight.AsFloat;
  end;
  if (qryinit.FieldByName('AcceptRollbackEntity').AsInteger > 0) and WeightDisplay
  then
    qryItemsAcceptWeight.AsFloat := RoundTo(qryItemsRequestedWeight.AsFloat,
      RoundCount);
end;

procedure TReciptsGrid2F.actAllotmentExecute(Sender: TObject);
begin
  inherited;
  if qryinit.FieldByName('EffectType').AsInteger in [4] then
    exit;
  AllotmentF.ShowChanger(qryItems, DBGrid1)
end;

procedure TReciptsGrid2F.actAnalyticalExecute(Sender: TObject);
var
  qry: TADOQuery;
  Entity, i: Integer;
  CalcFieldName: string;
begin
  inherited;
  if get_response('آیا برای ' + actAnalytical.Caption + '  مطمئن هستید؟',
    clGreen) <> mrYes then
    exit;
  BigMessage('لطفا صبر کنید', 0);
  CalcFieldName := Form_InOut + 'Entity';
  qryItems.DisableControls;
  qry := TADOQuery.Create(Self);
  with qry do
    try
      Clone(qryItems, ltReadOnly);
      First;
      while not Eof do
      begin
        Entity := FieldByName(CalcFieldName).AsInteger;
        while (Entity > 1) do
        begin
          Dec(Entity);
          qryItems.Insert;
          for i := 1 to DBGrid1.Columns.Count - 1 do
          begin
            if (not DBGrid1.Columns[i].ReadOnly) and (DBGrid1.Columns[i].Visible)
            then
              qryItems.FieldByName(DBGrid1.Columns[i].FieldName).AsString :=
                FieldByName(DBGrid1.Columns[i].FieldName).AsString;
          end;
          qryItems.FieldByName(CalcFieldName).AsInteger := 1;

        end;
        Next;
      end;
    finally
      Free;
    end;
  with qryItems do
  begin
    First;
    while not Eof do
    begin
      if FieldByName(CalcFieldName).AsInteger <> 1 then
      begin
        edit;
        FieldByName(CalcFieldName).AsInteger := 1;
        Post;
      end;
      Next;
    end;
  end;
  qryItems.EnableControls;
  BigMessage('انجام شد', 1);
end;

procedure TReciptsGrid2F.plblName_NoteGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryItems.FieldByName('_StuffName').AsString + ' ' +
    qryItems.FieldByName('ItemNote').AsString
end;

procedure TReciptsGrid2F.plblSecondTypeItemGetText(Sender: TObject;
  var Text: String);
var
  col: TColumneh;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')];
  if col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
    .AsInteger)) <> -1 then
    Text := col.PickList
      [col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
      .AsInteger))];
end;

procedure TReciptsGrid2F.plblSetFieldGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if qryItems.FindField(Text) <> nil then
    Text := CurrToStrF(qryItems.FieldByName(Text).AsCurrency, ffCurrency, 0)
end;

procedure TReciptsGrid2F.btnMasirIDClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  txt := 'SELECT MasirID,MasirText FROM AddressInMasir';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' مسيرها ', txt,
    ['کد', 'شرح مسير'], Results, [50, 150], alLeft);
  if b then
    qryRecipts['MasirID'] := Results[0];
end;

procedure TReciptsGrid2F.btnDeliveryIDClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  txt := 'SELECT SellsCode,RIGHT(SellsCode, LEN(SellsCode) - 2) AS SellsCode2 '
    + ',SellsName FROM SellsInfo WHERE SellsType = 36 ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' محلهاي تحويل ', txt,
    ['', 'کد', 'محل تحويل'], Results, [0, 50, 150], alLeft);
  if b then
    qryRecipts['DeliveryID'] := Results[0];
end;

procedure TReciptsGrid2F.qryAllReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // ------------------------------ ADD NEW -------------------
  IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers1, DataSet.FieldByName('PersonID1').AsInteger);
  IF qryinit.FieldByName('Person2Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers2, DataSet.FieldByName('PersonID2').AsInteger);

  IF qryinit.FieldByName('Person3Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers3, DataSet.FieldByName('PersonID3').AsInteger);

  IF qryinit.FieldByName('Person4Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers4, DataSet.FieldByName('PersonID4').AsInteger);

  // ------------------------------ ADD NEW -------------------
  With qryRecipts do
    try
      DisableControls;
      qryItems.DisableControls;
      Close;
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('ReciptIDFrom').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('ReciptIDTo').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('ServerIDFrom').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('ServerIDTo').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('ReciptType').Value :=
        qryAllRecipts.Parameters.ParamByName('ReciptType').Value;
      Open;
    finally
      EnableControls;
      qryItems.EnableControls;
    end;
end;

procedure TReciptsGrid2F.btnPersonID3Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
  Sid: string;
begin
  inherited;
  Sid := (Sender as TSpeedButton).Tag.ToString;
  txt := 'SELECT DISTINCT CustID,CustName,InfoWeight,Address,Mobile ' +
    'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind' + Sid, qryinit);
  Add2Filter(txt, 'CustomerActive = 0');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person' + Sid + 'Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person' + Sid + 'Caption').AsString +
    '', 'وزن', 'آدرس', 'همراه'], Results, [50, 150, 80, 50, 200], alLeft);
  if b then
  begin
    qryRecipts.FieldByName('PersonID' + Sid).AsString := Results[0];
    // qryRecipts.FieldByName('ReciptType').AsInteger :=
    // qryRecipts.FieldByName('ReciptType').AsInteger; // for Refresh
  end;
end;

procedure TReciptsGrid2F.plblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DateToStr(Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate')
    .AsString))
end;

procedure TReciptsGrid2F.plblDeficit_Price_AddGetText(Sender: TObject;
  var Text: string);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price') + CalcSumFileds(qry_Deficits4Print,
    'DeficitAdd');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsGrid2F.plblDeficit_Price_DecGetText(Sender: TObject;
  var Text: string);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price') - CalcSumFileds(qry_Deficits4Print,
    'DeficitDec');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)

end;

procedure TReciptsGrid2F.plblDeficit_TotallSellPrice_DecGetText(Sender: TObject;
  var Text: string);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') -
    CalcSumFileds(qry_Deficits4Print, 'DeficitDec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)

end;

procedure TReciptsGrid2F.plblNameNoteGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryItems.FieldByName('_StuffName').AsString + ' ' +
    qryItems.FieldByName('_StuffNote').AsString
end;

procedure TReciptsGrid2F.btnUseUnitIDClick(Sender: TObject);
begin
  inherited;
  SpeedButtonUseUnits(qryRecipts, LblUseUnitM.Caption)
end;

procedure TReciptsGrid2F.qryReciptsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryAllReciptsAfterScroll(qryAllRecipts);
  if (qryinit.FieldByName('RecallType').AsInteger = 16) then
    if DMf.adcBSell.InTransaction then
      DMf.adcBSell.RollbackTrans;
end;

procedure TReciptsGrid2F.qryReciptsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if ReciptID4ParentReciptID <> '' then
  begin
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'UPDATE Recipts SET ParentReciptID=null,ParentCoReciptID=null ' +
        'WHERE (ParentReciptID= ' + ReciptID4ParentReciptID +
        '  OR   ParentCoReciptID= ' + ReciptID4ParentReciptID + ')';
      SQL.Add('AND   ServerID = ' + qryAllRecipts.FieldByName('ServerID')
        .AsString);
      SQL.Add('AND   YearID   = ' + qryAllRecipts.FieldByName('YearID')
        .AsString);
      try
        ExecSQL;
        // BigMessage(IntToStr(ExecSQL) + ' '+Caption+'‌ مرتبط آگاه شد.',2);
        Active := False;
      except
        Warn('اشكال در آگاه سازي ' + Caption + ' مرتبط‌');
      end; // try
    end; // with
    ReciptID4ParentReciptID := '';
  end;
  WorkFlowAfterDelete(qryRecipts);
  qryAllRecipts.Delete;
  BigMessage('' + Caption + ' حذف شد.', 1);

end;

procedure TReciptsGrid2F.qryReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if qryinit.FieldByName('ControlEntityActive').AsInteger = 4 then
    if not ReciptBe4PostCtrlEntAct(True) then
      Abort;

  if not CheckDay4Edit(qryinit, qryRecipts) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryRecipts) then
    Abort;

  if not ChkReciptState4Delete(qryinit, qryRecipts) then
    Abort;

  if not OkDeleteMaster(qryRecipts.FieldByName('ReciptID').AsString, False) then
    Abort;
  if not OkDeleteMaster(qryRecipts.FieldByName('ReciptID').AsString, True) then
    Abort;

  if not OkDelete(qryRecipts, False, 0) then
    Abort;

  WorkFlowBeforDelete(qryRecipts);
  if not Check4OkDelete_Deficits(Caption, qry_Deficits, qryRecipts) then
    Abort;

  EditBeforDeleteRecallType16(qryinit, qryRecipts, qryItems, False);

end;

procedure TReciptsGrid2F.actSaveFormItemsExecute(Sender: TObject);
begin
  inherited;
  SaveFormItems(qryItems)
end;

procedure TReciptsGrid2F.actSaveGridCleanExecute(Sender: TObject);
begin
  inherited;
  if FileExists(GridColumnsSavePath) then
  begin
    if DeleteFile(GridColumnsSavePath) then
      Warn('فرم را دوباره باز کنید');
  end
  else
    Warn('ذخیره انجام نشده');

end;

procedure TReciptsGrid2F.actSaveGridExecute(Sender: TObject);
begin
  inherited;
  DBGrid1.Columns.SaveToFile(GridColumnsSavePath);
end;

procedure TReciptsGrid2F.actLoadFormItemsExecute(Sender: TObject);
begin
  inherited;
  LoadFormItems(qryItems)
end;

procedure TReciptsGrid2F.actMakeDocExecute(Sender: TObject);
begin
  inherited;
  MakeDocumentF.Enter(qryRecipts, False)
end;

procedure TReciptsGrid2F.actReciptsRegulatesExecute(Sender: TObject);
begin
  inherited;
  ReciptsRegulatesF.Enter(qryItems, qryinit, qryRecipts)
end;

procedure TReciptsGrid2F.plblTotallSellPrice2GetText(Sender: TObject;
  var Text: string);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsGrid2F.plblTotallSellPricedivEntityGetText(Sender: TObject;
  var Text: string);
var
  Price: Currency;
begin
  inherited;
  Price := qryItems.FieldByName(FieldNameEntity).AsCurrency;
  if Price <> 0 then
    Price := qryItemsTotallSellPrice.AsCurrency / Price;
  Text := CurrToStrF(Price, ffCurrency, 0)
end;

procedure TReciptsGrid2F.plblTotallSellPriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsGrid2F.plbl_SellsMethod0GetText(Sender: TObject;
  var Text: string);
var
  lbl: TppLabel;
begin
  inherited;
  lbl := (Sender as TppLabel);
  if qryRecipts.FieldByName('SellsMethod').AsInteger = lbl.Tag then
    Text := 'X'
  else
    Text := '  ';
end;

procedure TReciptsGrid2F.plblTotallSellPricAlphaGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsGrid2F.actRpt001Execute(Sender: TObject);
begin
  inherited;
  Rpt001F.Enter(qryRecipts, qryinit)
end;

procedure TReciptsGrid2F.qryItemsDeficitValue2Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValue2.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName);
  qryItemsDeficitValue2.OnChange := qryItemsDeficitValue2Change;
end;

procedure TReciptsGrid2F.qryItemsDeficitValue3Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValue3.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName);
  qryItemsDeficitValue3.OnChange := qryItemsDeficitValue3Change;
end;

procedure TReciptsGrid2F.qryItemsDeficitValueChange(Sender: TField);
begin
  inherited;
  qryItemsDeficitValue.OnChange := nil;
  // qryItemsDeficitValue.AsInteger := qryItemsDeficitValue.AsInteger;
  EndOfPrice((Sender as TField).FieldName);
  qryItemsDeficitValue.OnChange := qryItemsDeficitValueChange;
  // DeficitValue
end;

procedure TReciptsGrid2F.qryItemsDeficitValueCo2Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValueCo2.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName); // DeficitValueCo2
  qryItemsDeficitValueCo2.OnChange := qryItemsDeficitValueCo2Change;
end;

procedure TReciptsGrid2F.qryItemsDeficitValueCo2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  c: Currency;
begin
  inherited;
  if qryItemsDeficitValue2.AsFloat <> 0 then
  begin
    c := qryItems.FieldByName(FieldNamePrice).AsCurrency -
      qryItemsDeficitValue.AsCurrency;
    if c <> 0 then
      Text := FloatToStr(RoundTo(qryItemsDeficitValue2.AsCurrency * 100 / c,
        RoundCount));
  end
  else
    Text := '0';

end;

function TReciptsGrid2F.Deficit_Value_3: Currency;
begin
  if DiscountActive and Integer(CHkDeficitValue3C) <> 0 then
    Result := 0
  else
    Result := qryItemsDeficitValue3.AsCurrency
end;

procedure TReciptsGrid2F.qryItemsDeficitValueCo3Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValueCo3.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName); // DeficitValueCo3
  qryItemsDeficitValueCo3.OnChange := qryItemsDeficitValueCo3Change;
end;

procedure TReciptsGrid2F.qryItemsDeficitValueCo3GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  c: Currency;
begin
  inherited;
  if qryItemsDeficitValue3.AsFloat <> 0 then
  begin
    if (DiscountActive and Integer(CHkDeficitValue3C) <> 0) then
    begin
      c := qryItems.FieldByName(FieldNamePrice).AsCurrency -
        qryItemsDeficitValue.AsCurrency;
      if c <> 0 then
        Text := FloatToStr(RoundTo(qryItemsDeficitValue3.AsCurrency * 100 / c,
          RoundCount));

    end
    else
    begin
      c := qryItems.FieldByName(FieldNamePrice).AsCurrency;
      if c <> 0 then
        Text := FloatToStr(RoundTo(qryItemsDeficitValue3.AsCurrency * 100 / c,
          RoundCount));
    end;
  end
  else
    Text := '0';

end;

procedure TReciptsGrid2F.plblAmount1Total_PriceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Amount1 FROM LookUps WHERE LookUpID = ' +
      qryRecipts.FieldByName('SecondType').AsString;
    Active := True;
    Text := CurrToStrF(Fields[0].AsCurrency * qryRecipts.FieldByName
      ('ReciptValue').AsCurrency, ffCurrency, 0);
    Active := False;
  end;
end;

procedure TReciptsGrid2F.qryItemsTotallSellPriceChange(Sender: TField);
begin
  inherited;
  try
    qryItemsTotallSellPrice.OnChange := nil;
    EndOfPrice((Sender as TField).Name);
  finally
    qryItemsTotallSellPrice.OnChange := qryItemsTotallSellPriceChange;
  end;
end;

procedure TReciptsGrid2F.qryItemsStandardRateChange(Sender: TField);
begin
  inherited;
  StandardRateActiveReciptsGrid(qryinit, qryItems);
end;

procedure TReciptsGrid2F.qryItemsStuffCodeChange(Sender: TField);
var
  row: Integer;
begin
  inherited;
  try
    DMf.adcBSell.Execute
      (Format('INSERT INTO StuffCodeTemp(StuffCode, ReciptType, UserID)' +
      'VALUES(%s,%d,%d)', [qryItemsStuffCode.AsString, formType,
      User.id]), row);
    if row > 0 then
    begin
      ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, lblWarn);
      RefreshLookupList(qryItems);
    end;
  except
    on E: Exception do
    begin
      // add2log('I>>>' + E.Message);
      // Warn('I>>>' + E.Message);
    end;
  end;

  BarCodeCount(Form_InOut, qryItems, qryRecipts, qryinit, EntityValue,
    StatusBar2, PriceOn_StoreType, MachineFullWeight1, FormOutput,
    FieldNameEntity, FieldNameWeight, mnuSp1, mnuSp2, mnuSp3, mnuSp4,
    MenSellPrice);

  InsertDefault(qryinit, qryItems, qryStuffCodingItems, qry_Lookup);

end;

procedure TReciptsGrid2F.qryItemsStuffAlloySizeDiameterChange(Sender: TField);
var
  StuffAlloy, StuffDiameter, StuffSize, Calc: Double;
begin
  inherited;
  if qryinit.FieldByName('AlloyDiameterSizeDividedByAMillion').AsInteger = 0
  then
    exit;
  // if (qryItems.FieldByName('StuffAlloy').AsString = '') then
  // StuffAlloy := 0
  // else
  // StuffAlloy := qryItems.FieldByName('StuffAlloy').AsFloat;
  TryStrToFloat(qryItems.FieldByName('StuffAlloy').AsString, StuffAlloy);

  // StuffDiameter := ifthen(qryItems.FieldByName('StuffDiameter').AsString = '',
  // 0, qryItems.FieldByName('StuffDiameter').AsFloat);
  TryStrToFloat(qryItems.FieldByName('StuffDiameter').AsString, StuffDiameter);

  TryStrToFloat(qryItems.FieldByName('StuffSize').AsString, StuffSize);
  // StuffSize := ifthen( = '', 0,     qryItems.FieldByName('StuffSize').AsFloat);

  Calc := (StuffAlloy * StuffDiameter * StuffSize) / 1000000;
  if Frac(Calc) <= 0.5 then
    qryItems.FieldByName(FieldNameEntity).AsFloat := Floor(Calc)
  else
    qryItems.FieldByName(FieldNameEntity).AsFloat := RoundTo(Calc, 0);

end;

procedure TReciptsGrid2F.GetStuffCodeFromStuffTecInfo(StuffTecInfo: String);
var
  mnu: TMenuItem;
  findFiled: string;
begin
  if StuffTecInfo <> EmptyStr then
    findFiled := 'c_StuffTecInfo';
  if (qryinit.FieldByName('BarCodeKind').AsInteger in [5]) then
    findFiled := 'VendorBarcode';
  With TADOQuery.Create(DMf) do
  begin
    Connection := DMf.adcBSell;
    SQL.Text := 'SELECT c_StuffCode, ';
    SQL.Add('dbo.GetStuffName(c_StuffCode) + STR(c_StuffCode) + ''  '' + ');
    SQL.Add('dbo.GetLookUpsName(c_StuffCode, 313) + STR(SellPrice1) AS StuffName');
    SQL.Add('FROM StuffCoding WHERE  ' + findFiled + '=''' +
      StuffTecInfo + '''');
    SQL.Add(' and  ' + findFiled + '<>''0''');
    Active := True;

    if RecordCount > 1 then
    begin
      popStuffTecInfo := TPopupMenu.Create(nil);
      while not Eof do
      begin
        mnu := TMenuItem.Create(popStuffTecInfo);
        mnu.OnClick := NAllGetStuffCodeFromStuffTecInfo;
        mnu.Hint := FieldByName('c_StuffCode').AsString;
        mnu.Caption := FieldByName('StuffName').AsString;
        popStuffTecInfo.Items.Add(mnu);
        Next;
      end;
      popStuffTecInfo.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
    end
    else
      qryItemsStuffCode.AsLargeInt := FieldByName('c_StuffCode').AsLargeInt;
    Free;
  end;

end;

procedure TReciptsGrid2F.NAllGetStuffCodeFromStuffTecInfo(Sender: TObject);
begin
  inherited;
  qryItemsStuffCode.AsString := (Sender as TMenuItem).Hint;
  popStuffTecInfo.Free;
end;

procedure TReciptsGrid2F.pdbtxt9PrcentGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if qryItems.FieldByName('TaxValue').AsInteger <> 0 then
    Text := FloatToStr(RoundTo(StrToFloat(Text) * 1.09, 0))
end;

procedure TReciptsGrid2F.pdbtxtShamsi2Miladi1GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := DateToStr(Shamsi2Miladi(Text));
end;

procedure TReciptsGrid2F.plblAllReadBankConfigGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig(Text, '')
end;

procedure TReciptsGrid2F.plblAllStuffCodingGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if (qryStuff_Unit_TecInf.FindField(Text) <> nil) and
    (qryStuff_Unit_TecInf.Locate('c_StuffCode',
    qryItemsStuffCode.AsLargeInt, [])) then
    Text := qryStuff_Unit_TecInf.FieldByName('VendorBarcode').AsString;
end;

procedure TReciptsGrid2F.actGetExcelMasterDetailsExecute(Sender: TObject);
begin
  inherited;
  try
    getresponseShow := False;
    GetExcelMasterDetailsF.ShowImPortExcel(qryRecipts, qryItems);
  finally
    getresponseShow := True;
  end;
end;

procedure TReciptsGrid2F.actInsertNote2Execute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryReciptsReciptNote);
end;

procedure TReciptsGrid2F.actInsertRowExecute(Sender: TObject);
var
  IRow: Integer;
begin
  inherited;
  IRow := qryItemsIRow.AsInteger;
  qryItems.Insert;
  qryItemsIRow.AsInteger := IRow + 1;
end;

procedure TReciptsGrid2F.actInfoSMSFExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryRecipts, '_Mobile', False);
end;

procedure TReciptsGrid2F.actInsertNote1Execute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryItemsItemNote);
end;

procedure TReciptsGrid2F.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if (opt.showBig) and (showBigOnField(Sender)) then
  begin
    aBigPanel.Visible := True;
    showBigNumDBGrid1ColEnter(Sender, aBigPanel, horoofPanel)
  end;

  if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = 'stuffsize')
    or (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName)
    = 'stuffdiameter') or
    (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = 'stuffalloy')
  then
    SetKeyboardLatin
end;

procedure TReciptsGrid2F.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = 'stuffalloy')
  then
    SetKeyboardFarsi
end;

procedure TReciptsGrid2F.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if aBigPanel.Visible then
    aBigPanel.Visible := False
end;

procedure TReciptsGrid2F.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (qryinit.FieldByName('RecallType').AsInteger > 0) and
    (qryinit.FieldByName('RecallEditKind').AsInteger <> 4) and (Key = vk_down)
    and (qryItems.state in [dsInsert]) then
    qryItems.Cancel;

  if showBigOnField(Sender) then
    if (DBGrid1.EditorMode) and (DBGrid1.InplaceEditor <> nil) then
      showBigNum(StrToCurrDef(RemoveComma(DBGrid1.InplaceEditor.Text), 0),
        aBigPanel, horoofPanel);

end;

procedure TReciptsGrid2F.qryReciptsReciptDateChange(Sender: TField);
begin
  inherited;
  try
    qryReciptsReciptDateMiladi.OnChange := nil;
    qryReciptsReciptDateMiladi.AsDateTime := Shamsi2Miladi(Sender.AsString)
  finally
    qryReciptsReciptDateMiladi.OnChange := qryReciptsReciptDateMiladiChange;
  end;
end;

procedure TReciptsGrid2F.qryReciptsReciptDateMiladiChange(Sender: TField);
begin
  inherited;
  try
    qryReciptsReciptDate.OnChange := nil;
    qryReciptsReciptDate.AsString := miladi2Shamsi(Sender.AsDateTime)
  finally
    qryReciptsReciptDate.OnChange := qryReciptsReciptDateChange;
  end;
end;

procedure TReciptsGrid2F.qryReciptsReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

procedure TReciptsGrid2F.qryReciptsRialsEqualChange(Sender: TField);
begin
  inherited;
  if ((qryinit.FieldByName('ArzActive').AsInteger = 1) and
    (qryinit.FieldByName('ArzTypeID').AsInteger = 0)) then
    With qryItems do
    begin
      First;
      while not Eof do
      begin
        edit;
        FieldByName('ArzAmount').AsFloat := FieldByName('ArzAmount').AsFloat;
        Next;
      end;
    end;
end;

procedure TReciptsGrid2F.mnuN13Click(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryReciptsStoreID.AsInteger, qryItemsStuffCode.AsLargeInt, 1)
end;

procedure TReciptsGrid2F.mnuN19Click(Sender: TObject);
begin
  inherited;
  qryItems.Sort := 'ReciptItemID';
end;

procedure TReciptsGrid2F.mnuZeroClick(Sender: TObject);
begin
  inherited;
  mnuZero.Checked := not mnuZero.Checked;
  if mnuZero.Checked then
  begin
    qryItems.Filter := FieldNameEntity + '<>0';
    qryItems.Filtered := True;
  end
  else
  begin
    qryItems.Filter := EmptyStr;
    qryItems.Filtered := False;
  end
end;

procedure TReciptsGrid2F.N12Click(Sender: TObject);
begin
  inherited;
  StuffTransactionF.Enter(qryReciptsStoreID.AsInteger,
    qryItemsStuffCode.AsLargeInt)
end;

procedure TReciptsGrid2F.actCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryReciptsStoreID.AsInteger, qryItemsStuffCode.AsInteger, 1);
end;

procedure TReciptsGrid2F.actCopyExecute(Sender: TObject);
begin
  inherited;
  CopyNewRecipts(qryRecipts, qryinit)
end;

procedure TReciptsGrid2F.actSplitFormExecute(Sender: TObject);
begin
  inherited;
  ReciptsSplit(qryAllRecipts, qryinit)
end;

procedure TReciptsGrid2F.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileF.Enter(ADDKeyID(qryRecipts) + qryReciptsReciptID.AsString,
    'ReciptsF', True);
end;

procedure TReciptsGrid2F.qryItemsLength_WidthstuffdiameterChange
  (Sender: TField);
begin
  inherited;
  if qryinit.FieldByName('AutoPrice').AsInteger = 11 then
  begin
    qryItems.FieldByName(FieldNameWeight).AsFloat :=
      RoundTo(qryItems.FieldByName('_Weight_').AsFloat *
      qryItems.FieldByName('Length_').AsFloat * qryItems.FieldByName('Width')
      .AsFloat * qryItems.FieldByName('stuffdiameter').AsFloat *
      qryItems.FieldByName(FieldNameEntity).AsFloat / 10000, -4);
    StuffCodeChange(qryItems, qryRecipts, qryinit, EntityValue, StatusBar2,
      PriceOn_StoreType, MachineFullWeight1, FormOutput, FieldNameEntity,
      FieldNameWeight, mnuSp1, mnuSp2, mnuSp3, mnuSp4, MenSellPrice);
  end;

end;

function TReciptsGrid2F.FindRemain: Double;
begin
  with DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text :=
      'SELECT SUM( CASE WHEN preReciptItemID = %d THEN -(InputEntity+OutputEntity) '
      + 'WHEN ReciptItemID = %d THEN (InputEntity+OutputEntity) ELSE 0 END) RemainEntity';
    SQL.Add('FROM ReciptItems WHERE ( (preReciptItemID = %d )OR (ReciptItemID = %d)) '
      + ' AND (ReciptItemID <> %d)  AND (YearID = %d)');
    SQL.Text := Format(SQL.Text, [qryItemspreReciptItemID.AsInteger,
      qryItemspreReciptItemID.AsInteger, qryItemspreReciptItemID.AsInteger,
      qryItemspreReciptItemID.AsInteger, qryItemsReciptItemID.AsInteger,
      qryReciptsYearID.AsInteger]);
    // qryReciptsServerID.AsInteger,         AND ( ServerID = %d )
    Open;
    Result := Fields[0].AsFloat;
    Close;
  end;
end;

procedure TReciptsGrid2F.UpdateStatusBar1;
var
  Deficit_Add_Dec: Currency;
begin
  // if SumGrid1.Enable_Controls then
  if PriceOn_StoreType then
  begin
    Deficit_Add_Dec := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec')
    // -      CalcSumFileds(qryItems, 'DeficitValue123')
      ;
    opt.PayablePrice := Deficit_Add_Dec;
    StatusBar1.Panels[4].Text := '   كسورات/اضافات=' +
      CurrToStrF(opt.PayablePrice, ffCurrency, 0);
    opt.PayablePrice := CalcSumFileds(qryItems, FieldNamePrice) +
      opt.PayablePrice;
    StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' بهاي كل=' +
      CurrToStrF(opt.PayablePrice, ffCurrency, 0);
    if TotallSellPriceAct then
    begin
      opt.PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
        Deficit_Add_Dec;
      StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' خالص ' +
        CurrToStrF(opt.PayablePrice, ffCurrency, 0);
    end;
  end;
end;

end.
