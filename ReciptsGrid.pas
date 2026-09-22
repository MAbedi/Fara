{ ----------------------------------------------------------------------------
  Unit Name: ReciptsGrid
  Author:    Mahmood
  History: 86/10/17

  ---------------------------------------------------------------------------- }
unit ReciptsGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBActns, ActnList, StdCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppProd, ppReport, DB,
  ADODB, ppDB, ppDBPipe, DM, Menus, ppSubRpt, ppRegion, ComCtrls, zAPIBalloon,
  ReciptsFunctions, ppTypes, DBClient, ppBarCod, ppParameter, Provider, jpeg,
  ppComm, ImgList, ReciptsPayments, IniLang, Filter_ADO_Const, ppDesignLayer,
  System.Actions, FarsiReportBuilde, DBCtrlsEh, Vcl.FileCtrl, REST.Json,
  ppStrtch, ppCache, ppRelatv, System.ImageList, ToolCtrlsEh, DMTax, BaleBot,
  DBGridEhToolCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, IdHTTP,
  CedarDbGrid, myChkBox, ReciptPurchaseEffect, taxunit, IdBaseComponent, Json,
  IdSSLOpenSSLHeaders_static, IdIOHandler, IdIOHandlerStack,
  ppBarCode2D, IdSSL, IdSSLOpenSSL, IdSSLOpenSSLHeaders, DynVarsEh,
  Vcl.ToolWin, REST.Types, REST.Client, Vcl.Imaging.pngimage,
  System.DateUtils, DBGridEhGrouping, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBarCode, dxDBBarCode;

type
  TInsRow = record
    CanInsert: Boolean;
    BMark: TBookmark;
    Row: Integer;
  end;

  THackGrid = class(TCedarDbgrid);

  TSuccess = class
  private
    Fstatus: Integer;
    Ferror: Integer;
  public
    property error: Integer read Ferror write Ferror;
    property status: Integer read Fstatus write Fstatus;
  end;

  TReciptsGridF = class(Ttemplate2MDIF)
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
    qryItemsRequestedEntity: TFloatField;
    qryItemsRequestedWeight: TFloatField;
    qryItemsStuffGrade: TWordField;
    qryItemsTotalInputPrice: TBCDField;
    qryItemsTotalOutputPrice: TBCDField;
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
    BtnPcPos: TBitBtn;
    BtnDelete2: TBitBtn;
    GrpBoxAccount: TGroupBox;
    Label7: TLabel;
    dbtxt_DetailCode: TDBText;
    Lblacc_CTopicCode2: TLabel;
    dbtxt_CTopicCode2: TDBText;
    qryRecipts_CustomersDayTime: TIntegerField;
    pnlPerson3: TPanel;
    qryReciptsArzTypeID: TIntegerField;
    qryReciptsRialsEqual: TBCDField; // exr
    PnlPerson2_PO: TPanel;
    PnlPerson2: TPanel;
    LblPerson2: TLabel;
    btnPersonID2: TSpeedButton;
    dbtxt_PersonName2: TDBText;
    EdtPersonID2: TDBEdit;
    qryItemsArzAmount: TFloatField; // exr
    qryItemsStandardRate: TBCDField;
    Panel1: TPanel;
    DBText8: TDBText;
    LblReMainPerson1: TLabel;
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
    pnlAllUseP5: TPanel;
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
    lblSellsEmporium: TLabel;
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
    dbedtUseOtherID: TDBEdit;
    lblUseOtherID: TLabel;
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
    pnlDefaultDateSecondTypeInv: TPanel;
    PnlSecondType: TPanel;
    lblSecondType: TLabel;
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
    edtPersonID3: TDBEdit;
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
    mnuCofferType: TMenuItem;
    actInsertNote2: TAction;
    qryItemsTotalPrice_TaxValue: TBCDField;
    qryItemsPrvYearID: TIntegerField;
    qryReciptsPrvYearID: TIntegerField;
    actInfoSMSF: TAction;
    qryItemsVATCoTotalPrice: TFloatField;
    qryItemsVATCoPrice: TFloatField;
    qryItems_StanCode: TStringField;
    lblWarn: TLabel;
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
    lblMachineNo1: TLabel;
    lblExpireDate: TLabel;
    lblMachineName1: TLabel;
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
    N21: TMenuItem;
    N22: TMenuItem;
    actWorkflowHistoryF: TAction;
    Label15: TLabel;
    actChangeState: TAction;
    Panel4: TPanel;
    lblStateChang: TLabel;
    dbtxtReciptState: TDBText;
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
    qryItemsDeficitValue2: TBCDField;
    qryItemsDeficitValue3: TBCDField;
    qryItemsDeficitValue4: TBCDField;
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
    mnuExcelComparisonExcel2F: TMenuItem;
    qryReciptsMachineFullWeight: TFloatField;
    qryReciptsMachineWeight: TFloatField;
    actChangStuff: TAction;
    BitBtn13: TBitBtn;
    pnlPerson3AndTozin: TPanel;
    qryReciptsPersonID3: TIntegerField;
    pnlPerson4_ArzActive: TPanel;
    pnlChangeState: TPanel;
    btnChangeState: TBitBtn;
    pnlTozinID: TPanel;
    btnTozin: TSpeedButton;
    txtTozinID: TDBText;
    Label23: TLabel;
    edtTozinID: TDBEdit;
    qryReciptsTozinID: TIntegerField;
    qryTozin: TADOQuery;
    qryItemsDiagnosisCalcTotalPrice: TWordField;
    actDBGrid1EditButtonClick: TAction;
    actRecallSpecial: TAction;
    LblReMainPerson2: TLabel;
    DBGrid1: TCedarDbgrid;
    ppDBPipelineSumGrid1: TppDBPipeline;
    grd1: TCedarDbgrid;
    actSetUnitSellPriceZero: TAction;
    actOfferItems: TAction;
    mnuSp7: TMenuItem;
    mnuSp6: TMenuItem;
    mnuSp5: TMenuItem;
    qryRecipts_Max4WaterCo: TFloatField;
    actDesignFormsF: TAction;
    actPrintAll: TAction;
    N27: TMenuItem;
    N28: TMenuItem;
    actReciptsTradesF: TAction;
    qryTozinStuffCode: TADOQuery;
    pnlMasterTozinActive_CalcCostStorage: TPanel;
    pnlMasterTozinActive: TPanel;
    Label3: TLabel;
    Label21: TLabel;
    edtMachineWeight: TDBEdit;
    edtMachineFullWeight: TDBEdit;
    qryReciptsCalcCostStorage: TBooleanField;
    dbchkCalcCostStorage: TDBCheckBox;
    actTelegram: TAction;
    popTelegram: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem26: TMenuItem;
    txtTechnicalCode: TDBText;
    actAdd2CustomersMasir: TAction;
    qryLookUP: TADOQuery;
    srcLookUp: TDataSource;
    qryItems_SecondTypeItem: TStringField;
    N29: TMenuItem;
    actSumPrice: TAction;
    N30: TMenuItem;
    qryItemsDifferenceEntity: TFloatField;
    qryItemsDifferenceWeight: TFloatField;
    qryItemsCurrencyDiscounts: TFMTBCDField;
    qryRecipts_StoreNote: TStringField;
    cmbPortageBedbes: TDBComboBox;
    lblPortageBedbes: TLabel;
    qryReciptsPortageBedbes: TWordField;
    actReciptPurchaseEffect: TAction;
    N32: TMenuItem;
    qryReciptPurchaseEffect: TADOQuery;
    srcReciptPurchaseEffect: TDataSource;
    plnReciptPurchaseEffect: TppDBPipeline;
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
    actDeleteCorrelateConversionCo: TAction;
    qryFn_EffectCross: TADOQuery;
    srcFn_EffectCross: TDataSource;
    plnFn_EffectCross: TppDBPipeline;
    qryItemsIneffectiveInput: TWordField;
    qryReciptsID: TLargeintField;
    actFilterTr: TAction;
    N33: TMenuItem;
    qryItemsArzTypeID2: TIntegerField;
    qryItems_ArzTypeID2: TStringField;
    PnlArzActive: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    lblArzRate2: TLabel;
    lbl_ArzTypeID2: TLabel;
    CmbArzTypeID: TDBComboBox;
    edtRialsEqual: TDBEdit;
    cmb_ArzTypeID2: TComboBox;
    edtArzRate2: TEdit;
    PnlPerson4: TPanel;
    dbtxtPersonID4: TDBText;
    btnPersonID4: TSpeedButton;
    edtPersonID4: TDBEdit;
    LblPerson4: TLabel;
    edtExchangePrice: TEdit;
    lblExchangePrice: TLabel;
    btnRialsEqualChange: TSpeedButton;
    cmbHowConvert: TComboBox;
    lblHowConvert: TLabel;
    actChangeReciptItemsPersonID1: TAction;
    actReciptItemsDetails: TAction;
    qryReciptItemsDetails: TADOQuery;
    qryReciptItemsDetailsDetailsID: TAutoIncField;
    qryReciptItemsDetailsReciptItemID: TIntegerField;
    qryReciptItemsDetailsServerID: TIntegerField;
    qryReciptItemsDetailsYearID: TIntegerField;
    qryReciptItemsDetailsReciptID: TIntegerField;
    qryReciptItemsDetailsDetailCaption: TStringField;
    actOkInSite: TAction;
    N34: TMenuItem;
    qryItems_ExternalId: TStringField;
    qryRIDEntity: TADOQuery;
    qryRIDEntityDetailCaption: TStringField;
    qryRIDEntityEntity: TIntegerField;
    qryReciptItemsDetailsReciptType: TWordField;
    qryReciptItemsDetails_radif: TIntegerField;
    qryReciptItemsDetailsStuffGrade: TWordField;
    qryItemsCountDetails: TBCDField;
    pnlInsuranceValue: TPanel;
    Panel9: TPanel;
    actNewReciptsSplitRecall4PersonID: TAction;
    actChangeReciptItemsPersonID11: TMenuItem;
    qryReciptsPO: TStringField;
    qryItemsPO: TStringField;
    pnlPO: TPanel;
    lblPO: TLabel;
    edtPO: TDBEdit;
    actStuffCoding: TAction;
    actShowCorrelateReciptP: TAction;
    actShowCorrelateReciptC: TAction;
    txtTruckNumber: TDBText;
    qryReciptsChildReciptNumber: TIntegerField;
    txtChildReciptNumber: TDBText;
    plnReciptItemsDetails: TppDBPipeline;
    srcReciptItemsDetails: TDataSource;
    qryReciptItemsDetails4Print: TADOQuery;
    qryReciptItemsDetails4PrintDetailCaption: TStringField;
    qryReciptItemsDetails4PrintStuffGrade: TWordField;
    srcReciptItemsDetails4Print: TDataSource;
    actRowDown: TAction;
    actRowUp: TAction;
    actInsertRow2: TAction;
    tlb1: TToolBar;
    btnInsertRow: TToolButton;
    btnactCnPrefixWizard: TToolButton;
    btnactCnPrefixWizard1: TToolButton;
    actPreItem: TAction;
    MnuN35: TMenuItem;
    MnuPreItem: TMenuItem;
    actShowpreReciptItemIDsF: TAction;
    MnuShowpreReciptItemIDsF: TMenuItem;
    qryItemsStuffInBox: TStringField;
    qryItemsTozinID: TIntegerField;
    PnlPerson5: TPanel;
    dbtxtPersonID5: TDBText;
    btnPersonID5: TSpeedButton;
    LblPerson5: TLabel;
    edtPersonID5: TDBEdit;
    qryReciptsPersonID5: TIntegerField;
    qryItemsDeficitValue124: TBCDField;
    actStereotypyShowF: TAction;
    dbtxtReagentName: TDBText;
    qryStuffCodePrint: TADOQuery;
    srcStuffCodePrint: TDataSource;
    plnStuffCodePrint: TppDBPipeline;
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
    ppField53: TppField;
    ppField54: TppField;
    ppField55: TppField;
    ppField56: TppField;
    ppField57: TppField;
    ppField58: TppField;
    ppField59: TppField;
    ppField60: TppField;
    ppField61: TppField;
    ppField62: TppField;
    qryItemsUnitSellDeficient: TFloatField;
    N35: TMenuItem;
    dbtxtParentCoReciptNumber: TDBText;
    qryReciptsParentCoReciptNumber: TIntegerField;
    qryItemsWeightSD1InBox: TFloatField;
    qryItemsWeightSD1InBoxArz: TFloatField;
    actSp_UpdateChildFromFather: TAction;
    N36: TMenuItem;
    qryRecipts_CurrencySymbol: TStringField;
    qryItemsDeficitValueCo4: TFMTBCDField;
    qryItemsDeficitValueCo2: TFMTBCDField;
    qryItemsDeficitValueCo3: TFMTBCDField;
    actBarcode2: TAction;
    Label1: TLabel;
    dbtxt_TopicCodeName: TDBText;
    Label6: TLabel;
    dbtxt_CTopicCode: TDBText;
    Lblacc_CTopicCode3: TLabel;
    actMoaadiyan: TAction;
    qryItems_NationalStuffCode: TStringField;
    qryItems_Tax_mu: TStringField;
    MnuTaxMoaadiyan: TMenuItem;
    qryReciptstax_status: TWordField;
    dbtxttax_status: TDBText;
    qryReciptsTAXID: TStringField;
    qryReciptsIRTAXID: TStringField;
    qryReciptsTAXUID: TStringField;
    qryReciptsREFERENCENUMBER: TStringField;
    qryReciptsDATE_OF_SEND_TO_TAX: TDateTimeField;
    actCheckMoaadiyan: TAction;
    MnuCheckMoaadiyan: TMenuItem;
    N39: TMenuItem;
    pnl2: TPanel;
    grpLoanPayment: TGroupBox;
    edtLoanPayment: TDBEdit;
    qryReciptsLoanPayment: TBCDField;
    N41: TMenuItem;
    MnuTaxCorrection: TMenuItem;
    MnuTaxCancellation: TMenuItem;
    MnuTaxReturnFromSale: TMenuItem;
    N45: TMenuItem;
    btnTax: TBitBtn;
    N42: TMenuItem;
    popMoaadiyan: TPopupMenu;
    btnPrint: TBitBtn;
    pnlInvoiceTemplate: TPanel;
    Label9: TLabel;
    dblkcbb_InvoiceTemplate: TDBLookupComboBox;
    qryReciptsInvoiceTemplate: TWordField;
    qryItemsTotallSellPrice: TFMTBCDField;
    qryItemsID: TFMTBCDField;
    Mnusandbox: TMenuItem;
    qryTrades: TADOQuery;
    qryReciptsCurrencyCode: TStringField;
    MnuLoop: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    btnTax1: TSpeedButton;
    cliBarcode_NationalStuffCode: TStringField;
    cliBarcode_Tax_mu: TStringField;
    cliBarcodeArzRate: TBCDField;
    srcSP_CalcTopCheck1: TDataSource;
    plnCalcTopCheck1: TppDBPipeline;
    qrySP_CalcTopCheck1: TADOQuery;
    qrySP_CalcTopCheck2: TADOQuery;
    srcSP_CalcTopCheck2: TDataSource;
    plnSP_CalcTopCheck2: TppDBPipeline;
    cliBarcodeTaxCo: TFloatField;
    cliBarcodeTaxValue: TBCDField;
    edtCRN: TDBEdit;
    lblCRN: TLabel;
    qryReciptsCRN: TStringField;
    qryItems_VendorBarcode: TStringField;
    qryReciptsReciptNumberHex: TStringField;
    edtReciptNumber: TDBText;
    dbtxtIRTAXID: TDBEdit;
    dbtxtTAXID: TDBEdit;
    qryItemsReturn: TADOQuery;
    edtREFERENCENUMBER: TDBEdit;
    lblTTMS: TLabel;
    MnuTaxReturnFromSaleP: TMenuItem;
    N40: TMenuItem;
    qryItems_PersonDAddress: TStringField;
    actReciptType4Copy: TAction;
    lblLoanPayment: TLabel;
    MnuTaxReturnFromSaleNext: TMenuItem;
    MnuTaxCorrection2: TMenuItem;
    qryItems_StuffName_L2: TStringField;
    MnuBarCode: TMenuItem;
    N43: TMenuItem;
    actJame: TAction;
    actPcPosF: TAction;
    BitBtn5: TBitBtn;
    qryItemsUnitSellPrice: TFMTBCDField;
    PopPcPos: TPopupMenu;
    N44: TMenuItem;
    N46: TMenuItem;
    qryItemsUnitSellPriceW: TFMTBCDField;
    mnuFixed: TMenuItem;
    mnuViewItemInFolder: TMenuItem;
    btnJame: TBitBtn;
    popJame: TPopupMenu;
    h1: TMenuItem;
    actJameEs: TAction;
    N48: TMenuItem;
    N49: TMenuItem;
    qryReciptsNtswID: TLargeintField;
    qryItemsInputEntity: TFMTBCDField;
    qryItemsOutputEntity: TFMTBCDField;
    qryItemsInputWeight: TFMTBCDField;
    qryItemsOutputWeight: TFMTBCDField;
    qryItemsUnitSellPrice3: TFMTBCDField;
    qryItemsUnitSellPriceE: TFMTBCDField;
    cliBarcodeUnitSellPriceW: TFMTBCDField;
    cliBarcodeUnitSellPriceE: TFMTBCDField;
    plnItemsReturn: TppDBPipeline;
    ppMasterFieldLink1: TppMasterFieldLink;
    ppMasterFieldLink2: TppMasterFieldLink;
    ppMasterFieldLink3: TppMasterFieldLink;
    cliBarcodeInputEntity: TFMTBCDField;
    cliBarcodeOutputEntity: TFMTBCDField;
    cliBarcodeInputWeight: TFMTBCDField;
    cliBarcodeOutputWeight: TFMTBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel4: TppLabel;
    ppLabel21: TppLabel;
    plblSetField: TppLabel;
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
    ppDBText12: TppDBText;
    ppDBText38: TppDBText;
    ppLabel34: TppLabel;
    ppLabel33: TppLabel;
    ppShape1: TppShape;
    ppDBImage1: TppDBImage;
    pdbtxtAllDBSUM: TppDBText;
    plblAllSum: TppLabel;
    pdbtxtMiladi2Shamsi: TppDBText;
    ppVariable2: TppVariable;
    myDBCheckBox1: TmyDBCheckBox;
    ppVariable3: TppVariable;
    plblPositiveBalance: TppLabel;
    plblNegativeBalance: TppLabel;
    ppLabel23: TppLabel;
    ppDB2DBarCode1: TppDB2DBarCode;
    plblInsuranceValue: TppLabel;
    ppImage2: TppImage;
    pdbtxtReciptState: TppDBText;
    ppDBText8: TppDBText;
    plblAllStuffCoding: TppLabel;
    ppDBText9: TppDBText;
    ppDBCalc16: TppDBCalc;
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
    ppLabel22: TppLabel;
    pdbtxt9Prcent: TppDBText;
    ppLabel25: TppLabel;
    pdbtxtRevSetId: TppDBText;
    pdbtxtSetId: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppDBCalc9: TppDBCalc;
    ppCalcNum2alphabet: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine8: TppLine;
    ppLabel24: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBCalc15: TppDBCalc;
    ppDBCalc17: TppDBCalc;
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
    ppPageStyle1: TppPageStyle;
    ppLabel15: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDesignLayer2: TppDesignLayer;
    ppLabel26: TppLabel;
    actChangeYearID: TAction;
    plblToman1: TppLabel;
    qryItems_MaterialUsageCo: TFMTBCDField;
    qryItemsReturnPrn: TADOQuery;
    mnuPrintReturned: TMenuItem;
    plnItemsReturnPrn: TppDBPipeline;
    ppMasterFieldLink4: TppMasterFieldLink;
    ppMasterFieldLink5: TppMasterFieldLink;
    ppMasterFieldLink6: TppMasterFieldLink;
    actDelete: TAction;
    N47: TMenuItem;
    qryEntityImages: TADOQuery;
    pdbplnEntityImages: TppDBPipeline;
    ppMasterFieldLink7: TppMasterFieldLink;
    ppMasterFieldLink8: TppMasterFieldLink;
    ppMasterFieldLink9: TppMasterFieldLink;
    srcEntityImages: TDataSource;
    pnlBarCode: TPanel;
    Label13: TLabel;
    edtBarCode: TEdit;
    pmgStuffImage: TppImage;
    mnuEntity: TMenuItem;
    mnuWeight: TMenuItem;
    N50: TMenuItem;
    qryItemsBarcodeField: TStringField;
    dxDBBarCode1: TdxDBBarCode;
    imgBarcode: TImage;
    qryItemsBarCodeSSRPR: TWideStringField;
    cliBarcodeBarCodeSSRPR: TWideStringField;
    actBale: TAction;
    ppBarCode1: TppBarCode;
    PnlAidInfoMaster: TPanel;
    LblAidInfoNo: TLabel;
    LblAidInfoDate: TLabel;
    edtAidNumber: TDBEdit;
    edtAidDate: TDBEdit;
    actPrintAll2: TAction;
    N210: TMenuItem;
    qryStuffCodingImage: TADOQuery;
    pipStuffCodingImage: TppDBPipeline;
    ppField63: TppField;
    ppField64: TppField;
    ppField65: TppField;
    ppField66: TppField;
    ppField67: TppField;
    ppField68: TppField;
    ppField69: TppField;
    ppField70: TppField;
    ppField71: TppField;
    srcStuffCodingImage: TDataSource;
    qryReciptsInsr: TBooleanField;
    qryReciptsIndati2m: TDateTimeField;
    qryReciptsNti1: TStringField;
    qryReciptsNti2: TStringField;
    dbchkInsr: TDBCheckBox;
    pnlNti: TPanel;
    Panel10: TPanel;
    Label16: TLabel;
    edtNti1: TDBEdit;
    Panel11: TPanel;
    Label17: TLabel;
    edtNti2: TDBEdit;
    procedure dbchkInsrClick(Sender: TObject);
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
    procedure qryItemsInBoxChange(Sender: TField);
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
    procedure qryItemsCommissionChange(Sender: TField);
    procedure qryItemsCommissionCurrencyChange(Sender: TField);
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
    // procedure qryItemsDeficitValueCo2GetText(Sender: TField; var Text: string;
    // DisplayText: Boolean);
    // procedure qryItemsDeficitValueCo3GetText(Sender: TField; var Text: string;
    // DisplayText: Boolean);
    procedure ppDBImage1GetPicture(Sender: TObject; aPicture: TPicture);
    procedure actAutoPriceExecute(Sender: TObject);
    procedure qryItemsBeforeOpen(DataSet: TDataSet);
    procedure actRowExecute(Sender: TObject);
    procedure actChangerExecute(Sender: TObject);
    procedure qryReciptsReciptDateMiladiChange(Sender: TField);
    procedure qryReciptsReciptDateChange(Sender: TField);
    procedure actShowCorrelateReciptExecute(Sender: TObject);
    procedure mnuExcelComparisonExcel2FClick(Sender: TObject);
    procedure pdbtxt9PrcentGetText(Sender: TObject; var Text: string);
    procedure actChangStuffExecute(Sender: TObject);
    procedure qryReciptsPersonID3Change(Sender: TField);
    procedure btnTozinClick(Sender: TObject);
    procedure qryAllReciptsBeforeScroll(DataSet: TDataSet);
    procedure qryItemsDiagnosisCalcTotalPriceChange(Sender: TField);
    procedure actDBGrid1EditButtonClickExecute(Sender: TObject);
    procedure edtTozinIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pdbtxtMiladi2ShamsiGetText(Sender: TObject; var Text: string);
    procedure actRecallSpecialExecute(Sender: TObject);
    procedure qryItemsacc_TopicCodeChange(Sender: TField);
    procedure actSetUnitSellPriceZeroExecute(Sender: TObject);
    procedure actOfferItemsExecute(Sender: TObject);
    procedure actDesignFormsFExecute(Sender: TObject);
    procedure actPrintAllExecute(Sender: TObject);
    procedure actReciptsTradesFExecute(Sender: TObject);
    procedure ppVariable2GetText(Sender: TObject; var Text: string);
    procedure mnuTelegramClick(Sender: TObject);
    procedure actTelegramExecute(Sender: TObject);
    procedure dbedtMasirIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actAdd2CustomersMasirExecute(Sender: TObject);
    procedure EdtPersonID1DblClick(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure actSumPriceExecute(Sender: TObject);
    procedure qryItemsTotallCommissionChange(Sender: TField);
    procedure qryItemsCurrencyDiscountsChange(Sender: TField);
    procedure plblPositiveBalanceGetText(Sender: TObject; var Text: string);
    procedure plblNegativeBalanceGetText(Sender: TObject; var Text: string);
    procedure ppLabel23GetText(Sender: TObject; var Text: string);
    procedure actReciptPurchaseEffectExecute(Sender: TObject);
    procedure actDeleteCorrelateConversionCoExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actFilterTrExecute(Sender: TObject);
    procedure qryItemsArzRate2Change(Sender: TField);
    procedure btnRialsEqualChangeClick(Sender: TObject);
    procedure actReciptItemsDetailsExecute(Sender: TObject);
    procedure qryReciptItemsDetailsAfterInsert(DataSet: TDataSet);
    procedure qryReciptItemsDetailsBeforeDelete(DataSet: TDataSet);
    procedure qryReciptItemsDetailsBeforePost(DataSet: TDataSet);
    procedure actOkInSiteExecute(Sender: TObject);
    procedure qryReciptItemsDetailsBeforeEdit(DataSet: TDataSet);
    procedure qryReciptItemsDetailsAfterScroll(DataSet: TDataSet);
    procedure qryReciptItemsDetailsAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qryReciptItemsDetailsCalcFields(DataSet: TDataSet);
    procedure actMahExExecute(Sender: TObject);
    procedure DBTextPersonID1DblClick(Sender: TObject);
    procedure actNewReciptsSplitRecall4PersonIDExecute(Sender: TObject);
    procedure plblInsuranceValueGetText(Sender: TObject; var Text: string);
    procedure pdbtxtReciptStateGetText(Sender: TObject; var Text: string);
    procedure qryItemsCommissionPriceChange(Sender: TField);
    procedure actStuffCodingExecute(Sender: TObject);
    procedure actShowCorrelateReciptCExecute(Sender: TObject);
    procedure actShowCorrelateReciptPExecute(Sender: TObject);
    procedure qryItemsUnitCode2Change(Sender: TField);
    procedure DBGrid1ColumnsUnit2OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure qryItemsAfterCancel(DataSet: TDataSet);
    // procedure qryItemsInvEntityChange(Sender: TField);
    // procedure qryItemsInvWeightChange(Sender: TField);
    procedure actRowDownExecute(Sender: TObject);
    procedure actRowUpExecute(Sender: TObject);
    procedure actInsertRow2Execute(Sender: TObject);
    procedure actInsertRowExecute(Sender: TObject);
    procedure actPreItemExecute(Sender: TObject);
    procedure actShowpreReciptItemIDsFExecute(Sender: TObject);
    procedure qryItemsDeficitValue4Change(Sender: TField);
    procedure qryItemsDeficitValueCo4Change(Sender: TField);
    // procedure qryItemsDeficitValueCo4GetText(Sender: TField; var Text: string;
    // DisplayText: Boolean);
    procedure qryReciptsPersonID5Change(Sender: TField);
    procedure actStereotypyShowFExecute(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure actSp_UpdateChildFromFatherExecute(Sender: TObject);
    procedure actBarcode2Execute(Sender: TObject);
    procedure actMoaadiyanExecute(Sender: TObject);
    procedure actCheckMoaadiyanExecute(Sender: TObject);
    procedure MnuTaxCorrectionClick(Sender: TObject);
    procedure MnuTaxCancellationClick(Sender: TObject);
    procedure MnuTaxReturnFromSaleClick(Sender: TObject);
    procedure qryReciptstax_statusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure N42Click(Sender: TObject);
    procedure btnTaxClick(Sender: TObject);
    procedure edtAidDateDblClick(Sender: TObject);
    procedure MnuLoopClick(Sender: TObject);
    procedure btnTax1Click(Sender: TObject);
    procedure qryReciptsInvoiceTemplateChange(Sender: TField);
    procedure lblSellsEmporiumDblClick(Sender: TObject);
    procedure qryItemsUnitCommissionCoChange(Sender: TField);
    procedure MnuTaxReturnFromSalePClick(Sender: TObject);
    procedure dbtxtIRTAXIDDblClick(Sender: TObject);
    procedure actReciptType4CopyExecute(Sender: TObject);
    procedure Label8DblClick(Sender: TObject);
    procedure grpLoanPaymentDblClick(Sender: TObject);
    procedure qryReciptsLoanPaymentChange(Sender: TField);
    procedure MnuTaxReturnFromSaleNextClick(Sender: TObject);
    procedure MnuTaxCorrection2Click(Sender: TObject);
    procedure qryItemsReturnAfterOpen(DataSet: TDataSet);
    procedure MnuBarCodeClick(Sender: TObject);
    procedure actJameExecute(Sender: TObject);
    procedure actPcPosFExecute(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure mnuViewItemInFolderClick(Sender: TObject);
    procedure btnJameClick(Sender: TObject);
    procedure actJameEsExecute(Sender: TObject);
    procedure actChangeYearIDExecute(Sender: TObject);
    procedure plblToman1GetText(Sender: TObject; var Text: string);
    procedure cmbPortageBedbesDblClick(Sender: TObject);
    procedure qryItemsReturnPrnAfterOpen(DataSet: TDataSet);
    procedure mnuPrintReturnedClick(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure edtBarCodeKeyPress(Sender: TObject; var Key: Char);
    procedure pmgStuffImagePrint(Sender: TObject);
    procedure mnuEntityClick(Sender: TObject);
    procedure mnuWeightClick(Sender: TObject);
    procedure actBaleExecute(Sender: TObject);
    procedure actPrintAll2Execute(Sender: TObject);
  private
    { Private declarations }
    // cloned:  TADOQuery;
    myStore: TStore;
    formType, SellEffect, BuyEffect, DiscountActive, ParentReciptID: Integer;
    MultiFormType, TotallSellPriceAct: Boolean;
    UnsavedFileName_M, UnsavedFileName, ReciptID4ParentReciptID,
      AidDate_: String;
    ProductCodel_: Integer;
    Form_InOut, GridColumnsSavePath, SelectedStuffCode: String;
    FieldNamePrice, FieldNameEntity, FieldNameWeight, Carton: String;
    RestartStore, FormOutput, FilterShow, getresponseShow, PriceOn_StoreType,
      EditCarton: Boolean;
    ActiveExcelComparisonExcel2F: Boolean;
    // System4Edit           :Boolean;
    UnitPriceReadOnly, CustValuationType: Byte;
    PrintCount: Integer;
    CurrentEntity, CurrentWeight, EntityValue: Extended;
    AidNumber: String;
    LimitFi: Currency;
    MachineFullWeight1: Real;
    ReciptsDsInsert, RequestedChangeON: Boolean;
    popStuffTecInfo: TPopupMenu;
    qryCust1, qryCust2, qryCust3, qryCustD, QryStore2, qryGroupDeficitID,
      qryCustManag1, qryCustManag2, qryCustManag3, qryCustManagD,
      qryCustomers3: TADOQuery;
    qryCust4, qryCustManag4, qryCustomers4, qryCust5, qryCustManag5,
      qryCustomers5, qryTozin1, qryDesignForm: TADOQuery;
    qryStuffCodingItems, qryAddressInMasir, qryUnit2Stuffs: TADOQuery;
    Edit4Deficits: Boolean;
    RoundCount: SmallInt;
    GetExcelAct, UnitCoAct: Boolean;
    SrcStores: TDataSource;
    PipStores: TppDBPipeline;
    Person3Active, MasterTozinActive: Boolean;
    DataSet_Insert, IRow, RciptDateToItemDate: Boolean;
    AutoInsertPostInsert, SecondTypeItemActive, DeficitValue3Active: Boolean;
    _ReciptsPaymentsF: TReciptsPaymentsF;
    _ReciptPurchaseEffectF: TReciptPurchaseEffectF;
    ShowNotEntityOnSearch, Settings, RecallTypeOption, RecuestActive,
      SpecialSettings: Largeint;
    CalculatedEntityOrWeight: Int8;
    SellsDefaultState, DeviceTypePrinter, ActCommission, CountDetail: Boolean;
    wcActive: TWinControl;
    Telegram_ChatID, Bale_ChatID, Send_Message: string;
    InsertRow: TInsRow;
    SrcStereotypy: TDataSource;
    PipStereotypy: TppDBPipeline;
    qryStereotypyP: TADOQuery;

    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    grdTax: TCedarDbgrid;
    grdItemsReturn: TCedarDbgrid;
    srcItemsReturn: TDataSource;
    SplItemsReturn: TSplitter;
    ValueControl: Largeint;
    PaymentsActive: Integer;
    grdItemsReturnprn: TCedarDbgrid;
    srcItemsReturnprn: TDataSource;
    SplItemsReturnprn: TSplitter;

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
    function Calc_SumFileds(FiledName: String): Double;
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
    procedure RecallType19Check;
    procedure SetQryParam(qry: TADOQuery);
    procedure TozinActiveSetReadOnly;
    procedure PrintSendTelegramChatID(dir, FileType: string);
    procedure SendTelegramChatID(Text_FileName: string);
    procedure ChkReportFileName(var ReportFileName: string);
    procedure ChangeToResarve;
    function DeficitValue3Add: Currency;
    procedure GetANewReciptItemID(DataSet: TDataSet);
    function GetRialsEqual: Extended;
    function GetArzAmount: Extended;
    procedure RialsEqualChange;
    function ColumnIndexByFieldName(DBGrid: TDBGridEh; fldname: String)
      : Integer;
    procedure PostAddRecipt;
    procedure ShowCorrelateReciptCP(ReciptID, ParentReciptID: Integer);
    procedure SetqryUnit2Stuffs(IsEnter: Boolean);
    procedure SetRow;
    procedure EditPersonID;
    procedure SetRest(Matod: string; aTax: TMainTax);
    procedure CheckRequest(aTax: TMainTax; uid, ReferenceNumber, TAXID: string;
      TaxFormKind: TTaxFormKind);
    // function ErrorTrans(SUCCESS, error: string): string;
    // function ErrorTransW(error: string): TMsgDlgType;
    procedure Moaadiyan(TaxFormKind: TTaxFormKind; ReturnFromSaleNext: Boolean);
    procedure SetKeysModel(aaTax: TMainTax);
    procedure TaxStateMenu;
    procedure MoaadiyanTaxCorrection(TaxFormKind: TTaxFormKind);
    procedure MaterialUsageFactor;
    function GenerateBarcodeImage(BarcodeText: string): TBitmap;
  public
    OpenFromList, FilterTruckNumber: Boolean;
    procedure Enter(Form_Type: Integer; LimitShow: Boolean = True;
      StoreID: Integer = 0);
    procedure initFormQry;
    { Public declarations }
  end;

var
  ReciptsGridF: TReciptsGridF;

const
  StrReciptNumber =
    'And(Recipts.ReciptNumber BetWeen :ReciptNumberFrom and :ReciptNumberTo )';

implementation

uses searchCode_ADO, shamsiDate, GlobalPro, mmessage, SelectStore, Math,
  Note, StrUtils, RecallSpecialRecipts, ReciptsDeficits, sort2, sndkey32,
  mdiMain, FormFunctions, searchReports, ChooseReciptOnFormsRange,
  RecallSpecialRecipts2, GetExcel, Special_Search, searchCode_ADO4Scroll,
  GeneralDM, ppPrintr, Rpt001, FaraConsts, RecallIndent, Allotment,
  ReciptsRegulates, filter_ADO, FilterClass_ADO,
  GetExcelMasterDetails, RptCardex, CPortFunctions, StuffTransaction,
  RecallSpecialReciptsSum, main, infoSMS, SMSUnit, RecallSpecialRecipts3,
  FaraDesktopAlert, Related, MakeDocument, WorkflowHistory, WorkflowDm,
  Changer, ExcelComparisonExcel2, RecallSpecialReciptsEh,
  DesignForms, ReciptsTrades, ViewFileOnServer, Telegram, SpecialCodings,
  ReciptItemsDetails, StuffCoding, Customers2, ShowpreReciptItemIDs,
  RecallSpecialTozin, StereotypyShow, CustomersTax, PcPos;

{$R *.dfm}

procedure TReciptsGridF.SaveArticlesToFile;

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

procedure TReciptsGridF.CheckUnsaved;

var
  i: Integer;
  aQry: TADOQuery;
  s: String;
begin
  if ((RecuestActive and Integer(chkCheckUnsaved)) <> 0) then
    exit;

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

procedure TReciptsGridF.initFormQry;

var
  StoreKindList, SyntheticCodeField: String;
  i: Integer;
  b: Boolean;
  aColumn: TColumnEh;
begin
  MultiFormType := var_MultiType_Boolean;
  FilterShow := var_glb_Boolean;
  formType := var_glb_gParam;
  // '_' + IntToStr(formType) +   rmoved first and leter add .
  GridColumnsSavePath := __AppData + Self.Name + IntToStr(formType) + '_' +
    DBGrid1.Name;

  if MultiFormType then
  begin
    for i := 0 to ReciptsGridF.ActionList.ActionCount - 1 do
      if ReciptsGridF.ActionList.Actions[i].Category = 'Dataset' then
      begin
        TAction(ReciptsGridF.ActionList.Actions[i]).ShortCut := mrNone;
      end;
    ReciptsGridF.newPanel.Enabled := False;
    ReciptsGridF.BtnExcel.Enabled := False;
  end;

  getresponseShow := True;
  ActiveExcelComparisonExcel2F := False;
  UnsavedFileName := 'UnsavedItem_Recipts' + IntToStr(formType) + '.DAT';
  UnsavedFileName_M := 'UnsavedMaster_Recipts' + IntToStr(formType) + '.DAT';

  with qryTozin do
  begin
    Parameters.ParamByName('YearID').Value := APPBank.Year;
  end;

  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
    ValueControl := qryinit.FieldByName('ValueControl').AsLargeInt;
    PaymentsActive := qryinit.FieldByName('PaymentsActive').AsInteger;

    ShowNotEntityOnSearch := qryinit.FieldByName('ShowNotEntityOnSearch')
      .AsLargeInt;
    Settings := qryinit.FieldByName('Settings').AsLargeInt;
    SpecialSettings := qryinit.FieldByName('SpecialSettings').AsLargeInt;
    RecuestActive := qryinit.FieldByName('RecuestActive').AsLargeInt;
    SellEffect := qryinit.FieldByName('SellEffect').AsInteger;
    BuyEffect := qryinit.FieldByName('BuyEffect').AsInteger;

    btnTax.Visible := not(((CurAccess and Integer(akSendTax) <> 0)));
    btnTax1.Visible := btnTax.Visible;
    btnTax.Visible := btnTax.Visible and (SellEffect > 0);
    dbtxttax_status.Visible := btnTax.Visible;
    dbchkInsr.Visible := btnTax.Visible;
    pnlNti.Visible := btnTax.Visible;

    if (btnTax.Visible) and (qryinit.FieldByName('ShowNotEntityOnSearch')
      .AsLargeInt and Integer(CHkPrintTax) <> 0) then
    begin
      grdTax := TCedarDbgrid.Create(Self);
      grdTax.Visible := False;
      grdTax.Name := 'grdTax';
      grdTax.Parent := Panel3;
      grdTax.TabStop := False;
      grdTax.Align := alBottom;
      for i := 0 to qryItems.FieldCount - 1 do
        if cliBarcode.FindField(qryItems.Fields[i].FieldName) <> nil then
          cliBarcode.FieldByName(qryItems.Fields[i].FieldName).DisplayLabel :=
            qryItems.Fields[i].DisplayLabel;
    end;

    RecallTypeOption := qryinit.FieldByName('RecallTypeOption').AsLargeInt;

    EdtPersonID1.ReadOnly :=
      ((RecallTypeOption and Integer(chk_RTO_ChangePersonID1)) <> 0);

    b := ((RecallTypeOption and Integer(chk_RTO_ChangeAcc_CTopicCode3)) <> 0);
    setColumns2(DBGrid1, b, 'acc_CTopicCode3', aReadOnly);

    lblTTMS.Visible := ((Settings and Integer(chkTTMS)) <> 0);
    edtREFERENCENUMBER.Visible := lblTTMS.Visible;

    actOkInSite.Visible := ((Settings and Integer(chkOkInSite)) <> 0);
    actNewReciptsSplitRecall4PersonID.Visible :=
      ((Settings and Integer(CHkChangePersonIDInRecipts)) <> 0);

    EditCarton := ((Settings and Integer(chkEditCarton)) <> 0);
    if EditCarton then
      Carton := 'InBox'
    else
      Carton := '_Carton';

    if FieldByName('OrderByFields').AsString <> EmptyStr then
      qryItems.SQL.Add('ORDER BY ' + FieldByName('OrderByFields').AsString);
    qryItems.SQL.Add('OPTION (RECOMPILE);');

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
      // DBGrid1.RowHeight := 36;
      dxDBBarCode1.Visible := True;


      // for i := 0 to DBGrid1.Columns.Count - 1 do
      // if DBGrid1.Columns[i].FieldName = 'SyntheticCode' then
      // begin
      // DBGrid1.Columns[i].Font.Name := 'Code 128';
      // DBGrid1.Columns[i].Font.Size := 100;
      // DBGrid1.Columns[i].Font.Height := DBGrid1.RowHeight;
      // // اندازه برابر با ارتفاع سلول
      // DBGrid1.Columns[i].Font.Charset := ANSI_CHARSET;
      // DBGrid1.Columns[i].Font.Color := clBlack;
      // end;

      SyntheticCodeField := LeftStr(SyntheticCodeField,
        Length(SyntheticCodeField) - 1);
      SyntheticCodeField := ' LTRIM(' + SyntheticCodeField +
        ') AS SyntheticCode';
      SyntheticCodeField := StringReplace(SyntheticCodeField, ';',
        ') + ''_'' + LTRIM(', [rfReplaceAll]);

      qryItems.SQL.Text := StringReplace(qryItems.SQL.Text,
        ' '''' AS SyntheticCode', SyntheticCodeField, [rfReplaceAll]);

      // With DBGrid1.Columns.Add do
      // begin
      // FieldName := 'SyntheticCode';
      // Font.Name := 'Code 39';
      // i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo') + 1;
      // Index := i + 1;
      // end;

    end;

    if ((Settings and Integer(chkTariffsID)) <> 0) then
    begin
      qryItems.SQL.Text := StringReplace(qryItems.SQL.Text, 'SELECT *',
        'SELECT *, dbo.GetTariffsID(StuffCode, StuffDiameter, StuffSize) AS TariffsID',
        [rfReplaceAll]);

      with TStringField.Create(qryItems) do
      begin
        FieldName := 'TariffsID';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        ReadOnly := True;
        Size := 15;
        DisplayLabel := 'شماره تعرفه';
        qryItems.FieldDefs.Add(Name, ftString, 15, True);
        i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo') + 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'TariffsID';
          Index := i + 1;
        end;

      end;
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
    Parameters.ParamByName('UserAdmin').Value := ifthen(User.PowerUser, 1, 0);
  end; // with
  // IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
  begin
    // NotNull(qryinit.FieldByName('CustomerKind1').AsString,
    // 'هيچ گروهي براي گروه مشتري 1 مشخص نشده است');
    with qryCustomers1 do
    begin
      Active := False;
      SQL.Add(GetCustomersGroupTypeSQL('CustomerKind1', qryinit, True));
    end; // with
    qryCustCreate(qryCust1, '1', ReciptsGridF);
    dbtxtReagentName.DataSource := TDataSource(FindComponent('srcCustomers1'));
    dbtxtReagentName.DataField := 'ReagentName';
    qryCustManagCreate(qryCustManag1, '1', ReciptsGridF);
  end; // if
  qryGroupDeficitIDCreate(qryGroupDeficitID, ReciptsGridF);
  // IF qryinit.FieldByName('Person2Active').AsInteger = 1 THEN
  begin
    // NotNull(qryinit.FieldByName('CustomerKind2').AsString,
    // 'هيچ گروهي براي گروه مشتري 2  مشخص نشده است');
    with qryCustomers2 do
    begin
      Active := False;
      SQL.Add(GetCustomersGroupTypeSQL('CustomerKind2', qryinit, True));

    end; // with
    qryCustCreate(qryCust2, '2', ReciptsGridF);
    txtTechnicalCode.DataSource := TDataSource(FindComponent('srcCustomers2'));
    txtTechnicalCode.DataField := 'TechnicalCode';
    qryCustManagCreate(qryCustManag2, '2', ReciptsGridF);
  end; // if

  // IF qryinit.FieldByName('PersonID1OnDetailActive').AsInteger
  // in [0, 1, 2, 3] THEN
  begin
    // NotNull(qryinit.FieldByName('CustomerKind1').AsString,
    // 'هيچ گروهي براي گروه مشتري Detail مشخص نشده است');
    with qryCustomer2Detail do
    begin
      Active := False;
      SQL.Add(GetCustomersGroupTypeSQL('Customer2DetailKind', qryinit));
    end;
    // with
    qryCustCreate(qryCustD, 'D', ReciptsGridF);
    qryCustManagCreate(qryCustManagD, 'D', ReciptsGridF);
  end; // if

  DesignFormIDActive(qryinit, qryRecipts, qryDesignForm, Self);

  RestartStore := qryinit.FieldByName('RestartFormNumberOnStore').AsInteger
    in [0, 1, 4];
  FormOutput := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  if FormOutput then
  begin
    Form_InOut := 'Output';
    FieldNamePrice := 'TotalOutputPrice';
    FieldNameEntity := 'OutputEntity';
    FieldNameWeight := 'OutputWeight';
    // qryItems_StuffpublicPercent.Free;
    // cliBarcode_StuffpublicPercent.Free;
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
  SetQryParam(qryFn_EffectCross);

end;

procedure TReciptsGridF.Label8DblClick(Sender: TObject);
begin
  inherited;
  if (qryRecipts.State in dsEditModes) then
    qryRecipts.Post;
  SaveConfig(APPID, APPBank.Name + '_ReciptsGridF_SellsMethod' +
    IntToStr(formType), qryReciptsSellsMethod.AsString);
  Warn2('پیش فرض نحوه فروش تنظیم شد', 1000);

end;

function TReciptsGridF.EntityDisplay: Boolean;
begin
  Result := opt.EntityDisplay or (MyEntityDisplayType = 2)
end;

procedure TReciptsGridF.initFormPanel;

var
  ReciptType, ConversionCoSerial: Integer;
  b: Boolean;
begin
  With qryinit do
  begin
    // < Form.Caption>
    Caption := FieldByName('ReciptCaption').AsString;

    // actOkInSite.Caption := 'تایید ' + Caption + ' روی سایت';

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

    actSp_UpdateChildFromFather.Visible := FieldByName('UpdateChildFromFather')
      .AsInteger = 1;

    SellsDefaultState := ((FieldByName('ShowNotEntityOnSearch').AsLargeInt and
      Integer(CHKSellsDefaultState) <> 0));

    b := FieldByName('MaxControlCode').AsInteger = 2;
    setColumns2(DBGrid1, b, 'ControlCode', aReadOnly);

    edtReciptDateMiladi.Visible :=
      (ShowNotEntityOnSearch and Integer(CHkRciptDateToMiladi)) <> 0;

    MasterTozinActive := (ShowNotEntityOnSearch and
      Integer(CHkMasterTozinActive)) <> 0;
    pnlMasterTozinActive.Visible := MasterTozinActive;

    dbchkCalcCostStorage.Visible :=
      (ShowNotEntityOnSearch and Integer(CHKCalcCostStorage)) <> 0;

    dbchkCalcCostStorage.Caption :=
      FieldByName('CalcCostStorageCaption').AsString;

    b := qryinit.FieldByName('BarCodeKind').AsInteger in [7, 8, 9, 10, 11];
    pnlBarCode.Visible := b;
    dxDBBarCode1.Visible := b;
    pnlMasterTozinActive_CalcCostStorage.Visible :=
      pnlMasterTozinActive.Visible or dbchkCalcCostStorage.Visible or b;

    actBarcode.Visible := (ShowNotEntityOnSearch and
      Integer(CHkBarCodePrint)) = 0;

    pnlInsuranceValue.Visible := qryinit.FieldByName('InsuranceValue')
      .AsInteger <> 0;

    pnlInsertTime.Visible := qryinit.FieldByName('ActiveTimeToStr')
      .AsInteger > 0;

    qryItemsUnitSellPrice.Currency :=
      ((opt.ConfigSettings and Integer(CHkCsUnitSellPriceCurrency)) <> 0);


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
    qryRecipts.FieldByName('StoreID2').DisplayLabel := 'كد ' +
      FieldByName('Store2Caption').AsString;

    pnlStore.Visible := pnlStore1.Visible or pnlStore2.Visible;

    if (ShowNotEntityOnSearch and Integer(CHKStores2Required)) <> 0 then
    begin
      qryRecipts.FieldByName('StoreID2').Required := False;
      qryRecipts.FieldByName('_StoresName2').Required := False;
    end
    else
    begin
      qryRecipts.FieldByName('StoreID2').Required := pnlStore2.Visible;
      qryRecipts.FieldByName('_StoresName2').Required := pnlStore2.Visible;
    end;

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
    initAddField;
    // THackGrid(DBGrid1).DoLoad;
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

    RciptDateToItemDate := (ShowNotEntityOnSearch and
      Integer(CHkRciptDateToItemDate)) <> 0;
    setColumns2(DBGrid1, RciptDateToItemDate, 'ItemDate', aReadOnly);

    if qryinit.FieldByName('RecallType').AsInteger > 0 then
    BEGIN
      b := not(qryinit.FieldByName('RecallEditKind').AsInteger in [1, 4]);
      setColumns2(DBGrid1, b, 'StuffCode', aReadOnly);
      if b then
        DBGrid1.FieldColumns['StuffCode'].ButtonStyle :=
          TCellButtonStyleEh.cbsNone;
    END;

    IRow := (ShowNotEntityOnSearch and Integer(CHkIRow)) <> 0;
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
    qryItems.FieldByName('_PersonName1').Required := b;
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

    lblPO.Caption := opt.POCaption;
    pnlPO.Visible := opt.POActive;
    PnlPerson2_PO.Visible := PnlPerson2.Visible or opt.POActive;
    setColumns2(DBGrid1, opt.POActive, 'PO');

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
    setColumns2(DBGrid1, b, 'CurrencyDiscounts');
    setColumns2(DBGrid1, not FieldByName('ArzActive').AsInteger in [3, 4, 6],
      'ArzAmount', aReadOnly);

    // qryReciptsArzTypeID.Required := b;
    PnlArzActive.Visible := b;
    pnlPerson4_ArzActive.Visible := PnlPerson4.Visible or PnlArzActive.Visible;

    b := FieldByName('StandardRateActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'StandardRate');
    setColumns2(DBGrid1, b, 'TotalStandardRate');
    qryItems.FieldByName('StandardRate').DisplayLabel := 'نرخ‏' +
      FieldByName('StandardCaption').AsString;
    qryItems.FieldByName('TotalStandardRate').DisplayLabel := 'بهاي‏كل‏' +
      FieldByName('StandardCaption').AsString;

    b := (FieldByName('InsertEntity').AsInteger >= 1);
    setColumns2(DBGrid1, b, 'InvEntity');

    setColumns2(DBGrid1, b, 'Req_InvEntity');
    setColumns2(DBGrid1, b, 'Req_InvEntity2');

    setColumns2(DBGrid1, opt.Carton, '_UnitName2');

    b := b or (FieldByName('WaterCoEffect').AsInteger = 3);
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

    b := b and ((((Settings and Integer(CHKShowAccCode) <> 0)) or
      User.PowerUser));

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
    end;
    b := GrpBoxAccount.Visible and optA.ActiveCtopic2 AND
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

    b := GrpBoxAccount.Visible and optA.ActiveCtopic3 AND
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
    PnlUseUnitM.Visible := (FieldByName('UseUnitCase').AsInteger in [3, 1]);
    qryRecipts.FieldByName('UseUnitID').Required := PnlUseUnitM.Visible;
    qryRecipts.FieldByName('UseUnitID').DisplayLabel := LblUseUnitM.Caption;
    qryRecipts.FieldByName('_UseUnitName').Required := PnlUseUnitM.Visible;
    qryRecipts.FieldByName('_UseUnitName').DisplayLabel := 'نام ' +
      LblUseUnitM.Caption;
    if not PnlUseUnitM.Visible then
    begin
      qryRecipts.FieldByName('_UseUnitName').Free;
      DBTextUseUnitID_M.Free;
    end;
    // < Items محل مصرف >
    b := (FieldByName('UseUnitCase').AsInteger in [3, 2]);
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
    qryItems.FieldByName('ControlCode').Required := opt.ControlCodeActive = 2;
    qryItems.FieldByName('ControlCode').DisplayLabel :=
      FieldByName('ControlCodeCaption').AsString;
    setColumns2(DBGrid1, opt.ControlCodeActive > 0, 'ControlCode');

    PnlSecondType.Visible := FieldByName('SecondTypeActive').AsInteger
      in [1, 3];
    qryRecipts.FieldByName('SecondType').Required := PnlSecondType.Visible;
    SecondTypeItemActive := FieldByName('SecondTypeActive').AsInteger in [0, 3];

    pnlDefaultDate.Visible := DefaultDateActive(qryinit);
    pnlDefaultDateSecondTypeInv.Visible := pnlDefaultDate.Visible or
      PnlSecondType.Visible or pnlInvoiceTemplate.Visible;

    setColumns2(DBGrid1, SecondTypeItemActive, '_SecondTypeItem');
    qryItems.FieldByName('SecondTypeItem').Required := SecondTypeItemActive;

    if PnlSecondType.Visible or PnlArzActive.Visible or SecondTypeItemActive or
      cmbPortageBedbes.Visible then
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
    EdtRNum.TabStop := not EdtRNum.ReadOnly;
    // EdtReciptDate.TabStop := EdtRNum.TabStop;

    lblCaption.Hint := IntToStr(formType);

    DiscountActive := qryinit.FieldByName('DiscountActive').AsInteger;
    b := DiscountActive and Integer(CHkDeficitValue) <> 0;

    setColumns2(DBGrid1, b, 'WaterCo');
    TotallSellPriceAct := b or (FieldByName('VATActive').AsInteger >= 1) or
      (FieldByName('PawsFieldsActive').AsInteger > 0) OR
      (FieldByName('CommissionActive').AsInteger > 0);

    TotallSellPriceAct := TotallSellPriceAct and
      ((FieldByName('BuyEffect').AsInteger > 0) OR
      (FieldByName('SellEffect').AsInteger > 0) OR
      (FieldByName('EffectType').AsInteger <> 4) OR
      (FieldByName('IncreasingInventory').AsInteger = 1));

    setColumns2(DBGrid1, TotallSellPriceAct, 'TotallSellPrice');
    grpLoanPayment.Visible := TotallSellPriceAct;

    // b:=b or  FieldByName('DeficitValueEditing').AsInteger=0;
    setColumns2(DBGrid1, b, 'DeficitValue');
    setColumns2(DBGrid1, b, 'TotalDeficient');
    setColumns2(DBGrid1, b, 'UnitSellDeficient');

    b := DiscountActive and Integer(CHkDeficitValue2) <> 0;
    setColumns2(DBGrid1, b, 'DeficitValue2');
    setColumns2(DBGrid1, b, 'DeficitValueCo2');

    b := DiscountActive and Integer(CHkDeficitValue4) <> 0;
    setColumns2(DBGrid1, b, 'DeficitValue4');
    setColumns2(DBGrid1, b, 'DeficitValueCo4');
    setColumns2(DBGrid1, b, 'DeficitValue124');

    b := DiscountActive and Integer(CHkDeficitValue3C) <> 0;
    setColumns2(DBGrid1, b, 'TotallSellPrice_DeficitValue3');

    // if b then
    // i := ColumnIndexByFieldName(DBGrid1, 'TotallSellPrice_DeficitValue3') + 1
    // else
    // i := ColumnIndexByFieldName(DBGrid1, 'DeficitValue2');

    DeficitValue3Active := DiscountActive and Integer(CHkDeficitValue3) <> 0;
    setColumns2(DBGrid1, DeficitValue3Active, 'DeficitValue3');
    setColumns2(DBGrid1, DeficitValue3Active, 'DeficitValueCo3');

    b := ShowNotEntityOnSearch and Integer(CHkRegPrice) <> 0;
    setColumns2(DBGrid1, b, 'RegPrice');

    CountDetail := ((Settings and Integer(ChkCountDetails)) <> 0);
    setColumns2(DBGrid1, CountDetail, 'CountDetails');
    if CountDetail then
      With DBGrid1.Columns.Add do
      begin
        FieldName := 'stuffgrade';
        Index := ColumnIndexByFieldName(DBGrid1, 'CountDetails');
      end;

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

    setColumns2(DBGrid1, b and EntityDisplay, 'DifferenceEntity');
    setColumns2(DBGrid1, b and WeightDisplay, 'DifferenceWeight');

    b := FieldByName('ShowKeepPlace').AsInteger = 1;
    setColumns2(DBGrid1, b, '_c_KeepPlace');
    if not b then
    begin
      qryItems_c_KeepPlace.Free;
      cliBarcode_c_KeepPlace.Free;
    end;
    PnlMachineM.Visible := FieldByName('MachineActive').AsInteger in [1, 3];

    Label27.Visible := ((SpecialSettings and Integer(chkShowMachineName)) <> 0);
    edtMachineName.Visible :=
      ((SpecialSettings and Integer(chkShowMachineName)) <> 0);

    Label28.Visible := ((SpecialSettings and Integer(chkShowMachineNo)) <> 0);
    edtMachineNo.Visible :=
      ((SpecialSettings and Integer(chkShowMachineNo)) <> 0);

    lblMachineInfo.Visible :=
      ((SpecialSettings and Integer(chkShowMachineInfo)) <> 0);
    edtMachineInfo.Visible :=
      ((SpecialSettings and Integer(chkShowMachineInfo)) <> 0);

    Label14.Visible := ((SpecialSettings and Integer(chkShowTruckNumber)) <> 0);
    edtTruckNumber.Visible :=
      ((SpecialSettings and Integer(chkShowTruckNumber)) <> 0);

    if PnlMachineM.Visible and ((Settings and Integer(chkMachineRequired)) <> 0)
    then
    begin
      qryReciptsMachineName.Required := True;
      qryReciptsMachineNo.Required := True;
      qryReciptsMachineInfo.Required := True;
      qryReciptsTruckNumber.Required := True;
    end;

    actAllotment.Visible := FieldByName('AllotmentActive').AsInteger = 1;

    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [1, 3], 'WaterCo', aReadOnly);
    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [0, 3], 'DeficitValue', aReadOnly);

    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [0, 3], 'DeficitValue2', aReadOnly);
    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [0, 3], 'DeficitValue4', aReadOnly);

    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [0, 3], 'DeficitValue3', aReadOnly);

    b := (qryinit.FieldByName('BarCodeKind').AsInteger > 0);
    setColumns2(DBGrid1, b, 'BarCodeSSRPR');

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
      qryItems.FieldByName('ProductModel').DisplayLabel := 'كد .' +
        qryinit.FieldByName('ProcedureCaption').AsString;
      qryItems.FieldByName('_ProductModelName').DisplayLabel := 'نام .' +
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

    // pnlRecuest.Visible := FieldByName('RecuestActive').AsInteger = 1;
    pnlRecuest.Visible :=
      ((RecuestActive and Integer(CHkAllRecuestActive)) <> 0);

    if not pnlRecuest.Visible then
      if ((RecuestActive and Integer(CHkDateRecuestActive)) <> 0) then
      begin
        pnlRecuest.Visible := True;
        qryReciptsExpireDate.Required := True;

        lblExpireDate.Left := lblMachineNo1.Left;
        edtExpireDate.Left := edtMachineNo1.Left;

        lblMachineNo1.Visible := False;
        edtMachineNo1.Visible := False;
        lblMachineName1.Visible := False;
        edtMachineName1.Visible := False;
      end;

    CalculatedEntityOrWeight := FieldByName('CalculatedEntityOrWeight')
      .AsInteger;
    b := CalculatedEntityOrWeight > 0;
    setColumns2(DBGrid1, b, 'DiagnosisCalcTotalPrice');
    if b then
    begin
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'DiagnosisCalcTotalPrice')
        ].PickList.AddObject('مقدار', TObject(0));
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'DiagnosisCalcTotalPrice')
        ].PickList.AddObject('وزن', TObject(1));
    end;

    // b := FieldByName('IneffectiveInputChk').AsInteger > 0;

    b := ((FieldByName('IneffectiveInputChk').AsLargeInt and
      CHkIneffectiveInputChk) <> 0);

    setColumns2(DBGrid1, b, 'IneffectiveInput');
    if b then
    begin
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'IneffectiveInput')
        ].PickList.AddObject('غیر فعال', TObject(0));
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'IneffectiveInput')
        ].PickList.AddObject('فعال', TObject(1));
    end;

    // setColumns2(DBGrid1, FieldByName('RecallType').AsInteger in [2, 3, 4, 5, 6,
    // 7, 8, 10, 11, 12, 13, 15, 16], 'ParentForm');

  end; // with

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
    not User.PowerUser);

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

  b := (qryinit.FieldByName('MachineActive').AsInteger in [3, 4]);
  setColumns2(DBGrid1, b, 'MachineNo');
  setColumns2(DBGrid1, b, 'MachineName');

  qryItemsMachineNo.DisplayLabel :=
    qryinit.FieldByName('MachineNoCaption').AsString;
  qryItemsMachineName.DisplayLabel :=
    qryinit.FieldByName('MachineNameCaption').AsString;

  b := qryinit.FieldByName('TozinActive').AsInteger = 0;
  BtnExcel.Visible := b;
  actGetExcel.Visible := b;
  actGetExcelMasterDetails.Visible := b;

  with qryinit do
  begin
    ReciptType := FieldByName('CorrelateReciptType').AsInteger;
    ConversionCoSerial := FieldByName('ConversionCoSerial').AsInteger;

    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
    actCorrelateRecipt.Caption := 'ثبت‏' + FieldByName('ReciptCaption')
      .AsString;
    BtnCorrelateRecipt.Hint := actCorrelateRecipt.Caption;
    Active := False;

    Parameters.ParamByName('ReciptType').Value := ConversionCoSerial;
    Active := True;
    actCorrelateConversionCo.Caption := 'ثبت‏' +
      FieldByName('ReciptCaption').AsString;
    BtnCorrelateConversionCo.Hint := actCorrelateConversionCo.Caption;
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

  pnl2.Visible := grpLoanPayment.Visible or grpReciptNote.Visible;

  initOtherFieldCaptions(qryinit, qryItems, qryRecipts);

  THackGrid(DBGrid1).DoLoad;

end;

function TReciptsGridF.ColumnIndexByFieldName(DBGrid: TDBGridEh;
  fldname: String): Integer;
begin
  Result := GlobalPro.ColumnIndexByFieldName(DBGrid, fldname);
  if Result = -1 then
  begin
    Warn2(fldname + ' بررسی شود');
    Result := DBGrid.Columns.Count - 1;
  end;

end;

procedure TReciptsGridF.initAddField;

var
  qry: TADOQuery;
  b: Boolean;
  i, k: Integer;
  txt, UseOtherCaption: string;
begin
  qry := nil;
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
  end
  else if ((qryinit.FieldByName('OtherSettings').AsLargeInt and
    Integer(CHkMaterialUsageCo)) <> 0) then
  begin
    // i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo');
    // With DBGrid1.Columns.Add do
    // begin
    // FieldName := '_MaterialUsageCo';
    // Index := i;
    // ReadOnly:=True;
    // end;
    qryItemsStuffDiameter.DisplayLabel := 'وزن مواد';
    qryItemsStuffDiameter.DisplayFormat := '0.000';
    // qryItemsOutputWeight.DisplayLabel:='وزن مس';
    // qryItemsInputWeight.DisplayLabel:='وزن مس';
    i := ColumnIndexByFieldName(DBGrid1, 'UnitSellPrice');
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'stuffdiameter';
      Index := i - 1;
    end;

  end;

  With qryinit do
  begin
    b := FieldByName('AlloyDiameterSizeDividedByAMillion').AsInteger = 2;
    if b then
    begin
      qryItems.FieldByName('stuffsize').DisplayLabel := 'کیسه';
      qryItems.FieldByName('stuffdiameter').DisplayLabel := 'میانگبن هر کیسه';
      i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo');
      With DBGrid1.Columns.Add do
      begin
        FieldName := 'stuffsize';
        Index := i;
        Alignment := taLeftJustify;
      end;
      With DBGrid1.Columns.Add do
      begin
        FieldName := 'stuffdiameter';
        Index := i;
      end;
    end; // if

    // AlloyDiameterSizeDividedByAMillion
    // if b then
    // begin
    // SumGrid1.FieldsName := SumGrid1.FieldsName + 'DeficitValue2;';
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

    if EditCarton then
    begin
      with TFloatField.Create(qryItems) do
      begin
        FieldName := 'InBox';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'تعداد در کارتن';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, 'InputWeight');
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'InBox';
          Index := i;
        end;
        OnChange := qryItemsInBoxChange;
      end;

    end;

    if ((Settings and Integer(chkStuffpublicPercentI)) <> 0) then
    begin
      with TFloatField.Create(qryItems) do
      begin
        FieldName := 'StuffpublicPercentI';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'ضریب واحدمشترک';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, 'InputEntity');
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'StuffpublicPercentI';
          Index := i;
        end;
      end;

    end;

    if ((RecuestActive and Integer(chkbsrn)) <> 0) then
    begin
      with TStringField.Create(qryItems) do
      begin
        FieldName := 'bsrn';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'شناسه یکتای ثبت قرارداد حق العمل کاری';
        FixedChar := True;
        Size := 12;
        qryItems.FieldDefs.Add(Name, ftString, 12, True);
        i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo');
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'bsrn';
          Index := i;
        end;
      end;

    end;

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
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
        OnChange := qryItemsArzRateChange;
      end;
      k := ColumnIndexByFieldName(DBGrid1, 'UnitSellPrice');
      DBGrid1.Columns[k].Index := i + 1;

      if FieldByName('PawsFieldsActive').AsInteger in [1, 3] then
      begin
        with TFloatField.Create(qryItems) do
        begin
          FieldName := 'ArzPortage';
          FieldKind := fkData;
          DataSet := qryItems;
          Name := 'qryItems' + FieldName;
          DisplayLabel := 'كرايه حمل ارزی';
          qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
          With DBGrid1.Columns.Add do
          begin
            FieldName := 'ArzPortage';
            Index := i + 1;
          end;
        end;
      end;

    end;

    b := FieldByName('CustomerRateAct').AsInteger > 0;
    if b then
    begin
      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'CustomerRate';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        if FieldByName('CustomerRateAct').AsInteger = 2 then
          DisplayLabel := 'خالص توافقي'
        else
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
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
      end;
    end;

    PnlUseUnitM.Visible := (FieldByName('UseUnitCase').AsInteger in [3, 1]);

    if FieldByName('UseOtherActive').AsInteger > 0 then
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsGridF);
        Name := 'qryUseOthers';
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT UseOtherID, UseOtherName FROM UseOthers ';
        LockType := ltReadOnly;
        Active := True;
      end;

    b := FieldByName('UseOtherActive').AsInteger in [1, 3];
    pnlUseOtherActive.Visible := b;

    if b then
    begin
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

    UseOtherCaption := FieldByName('UseOtherCaption').AsString.Trim;
    if UseOtherCaption <> EmptyStr then
      lblUseOtherID.Caption := UseOtherCaption;

    b := FieldByName('UseOtherActive').AsInteger in [2, 3];
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsGridF);
        Name := 'qryUseOthersInt';
        Connection := DMf.adcBSell;
        SQL.Text :=
          'SELECT cast(UseOtherID as int) AS UseOtherID, UseOtherName FROM UseOthers ';
        LockType := ltReadOnly;
        Active := True;
      end;
      with TIntegerField.Create(qryItems) do
      begin
        FieldName := 'UseOtherID_Item';
        FieldKind := fkData;
        DataSet := qryItems;
        Required := False;
        Name := 'qryItems' + FieldName;
        UseOtherCaption := FieldByName('UseOtherCaption').AsString.Trim;
        if UseOtherCaption = EmptyStr then
          UseOtherCaption := lblUseOtherID.Caption;
        DisplayLabel := 'کد ' + UseOtherCaption;

        lblUseOtherID.Caption := UseOtherCaption;
        lblUseOtherID.Hint := UseOtherCaption;

        qryItems.FieldDefs.Add(Name, ftInteger, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, 'AidNumber') - 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'UseOtherID_Item';
          Index := i;
          ButtonStyle := cbsEllipsis;
        end;
      end;
      with TStringField.Create(qryItems) do
      begin
        FieldName := '_UseOtherID_Item';
        FieldKind := fkLookup;
        Required := False;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := UseOtherCaption;
        qryItems.FieldDefs.Add(Name, ftString, 50, True);
        Size := 50;
        KeyFields := 'UseOtherID_Item';
        LookupDataSet := qry;
        LookUpKeyFields := 'UseOtherID';
        LookupResultField := 'UseOtherName';
        With DBGrid1.Columns.Add do
        begin
          FieldName := '_UseOtherID_Item';
          Index := i + 1;
          ReadOnly := True;
        end;
      end;
    end;

    // ---------------------- UnitCo --------------------
    UnitCoAct := (opt.ConfigSettings and Integer(CHkCsUnitCo)) <> 0;
    if UnitCoAct then
    begin
      qryUnit2Stuffs := TADOQuery.Create(ReciptsGridF);
      With qryUnit2Stuffs do
      begin
        // Name := 'qryUnit2Stuffs';   UnitCode2
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT Unit2Stuffs.StuffCode, Unit2Stuffs.UnitCode,';
        SQL.Add('Unit2Stuffs.UnitCo, Units.UnitName');
        SQL.Add('FROM Unit2Stuffs INNER JOIN');
        SQL.Add('Units ON Unit2Stuffs.UnitCode = Units.UnitCode');
        SQL.Add('WHERE (Unit2Stuffs.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo )');
        Parameters.ParamByName('StuffCodeFrom').Value := -2147483646;
        Parameters.ParamByName('StuffCodeTo').Value := 2147483647;
        LockType := ltReadOnly;
        Active := True;
      end;
      with TIntegerField.Create(qryItems) do
      begin
        FieldName := 'UnitCode2';
        FieldKind := fkData;
        DataSet := qryItems;
        Required := False;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'کد واحد2';
        qryItems.FieldDefs.Add(Name, ftInteger, 0, True);
        OnChange := qryItemsUnitCode2Change;
      end;
      with TStringField.Create(qryItems) do
      begin
        FieldName := '_UnitCode2';
        FieldKind := fkLookup;
        Required := False;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'واحد2';
        qryItems.FieldDefs.Add(Name, ftString, 50, True);
        Size := 50;
        KeyFields := 'UnitCode2;StuffCode';
        LookupDataSet := qryUnit2Stuffs;
        LookUpKeyFields := 'UnitCode;StuffCode';
        LookupResultField := 'UnitName';
        i := ColumnIndexByFieldName(DBGrid1, FieldNameEntity) + 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := '_UnitCode2';
          Index := i;
          OnOpenDropDownForm := DBGrid1ColumnsUnit2OpenDropDownForm;
        end;
      end;
      with TBCDField.Create(qryItems) do
      begin
        FieldName := '_UnitCo';
        FieldKind := fkLookup;
        Required := False;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'ضریب واحد2';
        qryItems.FieldDefs.Add(Name, ftBCD, 0, True);
        KeyFields := 'UnitCode2;StuffCode';
        LookupDataSet := qryUnit2Stuffs;
        LookUpKeyFields := 'UnitCode;StuffCode';
        LookupResultField := 'UnitCo';
        With DBGrid1.Columns.Add do
        begin
          FieldName := '_UnitCo';
          Index := i + 1;
          ReadOnly := True;
        end;
      end;

    end;
    // ---------------------- UnitCo --------------------

    // ---------------------- StereotypyID -------------------------------------
    b := FieldByName('StereotypyActive').AsInteger = 1;
    if b then
    begin
      qryStereotypyP := TADOQuery.Create(ReciptsGridF);
      With qryStereotypyP do
      begin
        Name := 'qryStereotypyP';
        Connection := DMf.adcBSell;
        SQL.Text :=
          'SELECT * FROM Stereotypy WHERE (StereotypyID = :StereotypyID)';
        LockType := ltReadOnly;
      end;
      SrcStereotypy := TDataSource.Create(Self);
      PipStereotypy := TppDBPipeline.Create(Self);
      SrcStereotypy.DataSet := qryStereotypyP;
      PipStereotypy.Name := 'PipStereotypy';
      PipStereotypy.DataSource := SrcStereotypy;
      PipStereotypy.MasterDataPipeline := ppDBPipeline1;

      With qry do
      begin
        qry := TADOQuery.Create(ReciptsGridF);
        Name := 'qryStereotypy';
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT StereotypyID,StereotypyCaption FROM Stereotypy ';
        LockType := ltReadOnly;
        Active := True;
      end;

      with TIntegerField.Create(qryItems) do
      begin
        FieldName := 'StereotypyID';
        FieldKind := fkData;
        DataSet := qryItems;
        Required := False;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'کد کلیشه' + UseOtherCaption;
        qryItems.FieldDefs.Add(Name, ftInteger, 0, True);
        i := ColumnIndexByFieldName(DBGrid1, 'AidNumber') - 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'StereotypyID';
          Index := i;
          ButtonStyle := cbsEllipsis;
        end;
      end;
      with TStringField.Create(qryItems) do
      begin
        FieldName := '_StereotypyCaption';
        FieldKind := fkLookup;
        Required := False;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'کلیشه';
        qryItems.FieldDefs.Add(Name, ftString, 100, True);
        Size := 100;
        KeyFields := 'StereotypyID';
        LookupDataSet := qry;
        LookUpKeyFields := 'StereotypyID';
        LookupResultField := 'StereotypyCaption';
        With DBGrid1.Columns.Add do
        begin
          FieldName := '_StereotypyCaption';
          Index := i + 1;
          ReadOnly := True;
        end;
      end;
    end;
    // ----------------------StereotypyID----------------------------------------

    // --------------------------------------------------------------

    // by mostafa
    VATActiveFields(qryStores, qryRecipts, qryItems, qryinit, qryCustomers2,
      qryCustomers1, qryStuff_Unit_TecInf, DBGrid1, qryItemsTaxCoChange,
      qryItemsTaxValueChange, nil);

    b := FieldByName('MasirActive').AsInteger = 1;
    pnlMasir.Visible := b;
    if b then
    begin
      qryAddressInMasir := TADOQuery.Create(ReciptsGridF);
      With qryAddressInMasir do
      begin
        Name := 'qryAddressInMasir';
        Connection := DMf.adcBSell;
        // SQL.Text := 'SELECT MasirID,MasirText FROM AddressInMasir ';
        SQL.Text := 'SELECT CustomersMasir.ID, '; // MasirID
        SQL.Add('AddressInMasir.MasirText + '' '' + CustomersMasir.MasirNote AS MasirText');
        SQL.Add('FROM CustomersMasir INNER JOIN');
        SQL.Add('AddressInMasir ON CustomersMasir.MasirID = AddressInMasir.MasirID');

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
        LookupDataSet := qryAddressInMasir;
        LookUpKeyFields := 'ID'; // MasirID
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
        qry := TADOQuery.Create(ReciptsGridF);
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
        qry := TADOQuery.Create(ReciptsGridF);
        Name := 'qrySellsEmporiums';
        Connection := DMf.adcBSell;
        SQL.Text :=
          'SELECT SellsEmporium,SellsEmporiumName,ServerID,ReportFileName';
        SQL.Add('FROM SellsEmporiums ');
        // SQL.Add(Format('WHERE (ServerID = %d)', [opt.ServerID]));
        SQL.Add('WHERE (dbo.ChkUsersSellsEmporium(:UserAdmin1 , :UserID1,:UserSecurityCheckActive,SellsEmporium) = 1) ');
        Parameters.ParamByName('UserAdmin1').Value :=
          ifthen(User.PowerUser, 1, 0);
        Parameters.ParamByName('UserID1').Value := User.id;
        Parameters.ParamByName('UserSecurityCheckActive').Value :=
          qryinit.FieldByName('UserSecurityCheckActive').AsLargeInt;
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
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_ReportFileName';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'SellsEmporium';
        LookupDataSet := qry;
        LookUpKeyFields := 'SellsEmporium';
        LookupResultField := 'ReportFileName';
        Size := 500;
        qryRecipts.FieldDefs.Add(Name, ftString, 500, True);
      end;

    end;

    b := FieldByName('SellsMethodActive').AsInteger = 1;
    pnlSellsMethod.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsGridF);
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

    b := FieldByName('SellEffect').AsInteger > 0;
    pnlInvoiceTemplate.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsGridF);
        Name := 'qryInvoiceTemplates';
        Connection := DMf.adcBSell;
        SQL.Text :=
          'SELECT InvoiceTemplate,InvoiceTemplateName FROM InvoiceTemplates';
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_InvoiceTemplate';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'InvoiceTemplate';
        LookupDataSet := qry;
        LookUpKeyFields := 'InvoiceTemplate';
        LookupResultField := 'InvoiceTemplateName';
        Size := 100;
        DisplayLabel := 'الگوی صورتحساب';
        Required := True;
        qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
        dblkcbb_InvoiceTemplate.DataField := FieldName;
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

    // b := qryinit.FieldByName('ArzActive').AsInteger >= 1;
    // if b then
    // begin
    // with TStringField.Create(qryRecipts) do
    // begin
    // FieldName := '_CurrencySymbol';
    // DataSet := qryRecipts;
    // Name := 'qryRecipts' + FieldName;
    // DisplayLabel := 'علامت اختصاری';
    // FieldKind := fkLookup;
    // LookupDataSet := DMf.qryCurrencies;
    // KeyFields := 'ArzTypeID';
    // LookUpKeyFields := 'CurrenciesID';
    // LookupResultField := 'CurrencySymbol';
    // Size := 10;
    // Lookup := True;
    // qryRecipts.FieldDefs.Add(Name, ftString, 10, True);
    // end;
    // end;

    PersonIdActive('3', qryinit, qryRecipts, qryCustomers3, qryCust3,
      qryCustManag3, pnlPerson3, LblPerson3, dbtxtPersonID3, Self);

    PersonIdActive('4', qryinit, qryRecipts, qryCustomers4, qryCust4,
      qryCustManag4, PnlPerson4, LblPerson4, dbtxtPersonID4, Self);

    PersonIdActive('5', qryinit, qryRecipts, qryCustomers5, qryCust5,
      qryCustManag5, PnlPerson5, LblPerson5, dbtxtPersonID5, Self);

    pnlAllUseP5.Visible := pnlUseOtherActive.Visible or PnlUseUnitM.Visible or
      PnlPerson5.Visible;

    TozinIDActive(qryinit, qryRecipts, qryTozin, pnlTozinID, txtTozinID, Self);
    if pnlTozinID.Visible then
      qryTozinCreate(qryTozin1, Self);

    if not pnlPerson3.Visible then
      pnlTozinID.Align := alClient;

    pnlPerson3AndTozin.Visible := (pnlPerson3.Visible or pnlTozinID.Visible);

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
    lblPortageBedbes.Visible := b;
    cmbPortageBedbes.Visible := b;
    if b then
    begin
      qryReciptsPortageBedbes.OnGetText := ALLGetText;
      qryReciptsPortageBedbes.OnSetText := ALLSetText;
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
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
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
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
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

        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
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
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
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
      // if CLini <> nil then
      // fillProps([Self], CLini);
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
        FieldName := 'UnitCommissionCo';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'درصد کارمزد';
        Precision := 10;
        Size := 7;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
        i := ColumnIndexByFieldName(DBGrid1, FieldNamePrice) + 1;
        OnChange := qryItemsUnitCommissionCoChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'UnitCommissionCo';
          Index := i;
        end;
      end;

      with TFMTBCDField.Create(qryItems) do
      begin
        FieldName := 'UnitCommission';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'فی کارمزد';
        // حق العمل كاري
        Precision := 20;
        Size := 4;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
        i := i + 1;
        OnChange := qryItemsUnitCommissionChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'UnitCommission';
          Index := i;
        end;

        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
      end;

      with TCurrencyField.Create(qryItems) do
      begin
        FieldName := 'TotallCommission';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'مبلغ کارمزد';
        // حق العمل كاري
        Currency := True;
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
        i := i + 2;
        OnChange := qryItemsTotallCommissionChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'TotallCommission';
          Index := i;
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
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
          ButtonStyle := cbsEllipsis;
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

    b := ((FieldByName('ConfirmingActive').AsInteger in [1, 2]) or
      (FieldByName('BarCodeKind').AsInteger in [11]));
    if b then
    begin
      with TStringField.Create(qryItems) do
      begin
        FieldName := 'Confirming';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        if FieldByName('BarCodeKind').AsInteger in [11] then
          DisplayLabel := 'بارکد فراخوانی شده'
        else
          DisplayLabel := 'تاييد كننده';

        Size := 50;
        qryItems.FieldDefs.Add(Name, ftString, 50, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Confirming';
          ReadOnly := (FieldByName('ConfirmingActive').AsInteger = 1) or
            (FieldByName('BarCodeKind').AsInteger in [11]);
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
          ButtonStyle := cbsEllipsis;
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
        qry := TADOQuery.Create(ReciptsGridF);
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
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
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
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
      end;

    end;

    b := qryinit.FieldByName('ProcedureActive').AsInteger in [1, 2, 4];
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsGridF);
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

      with TIntegerField.Create(qryItems) do
      begin
        FieldName := '_GroupID' + IntToStr(k);
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        KeyFields := 'StuffCode';
        LookupDataSet := qryStuff_Unit_TecInf;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'GroupID' + IntToStr(k);
        qryItems.FieldDefs.Add(Name, ftInteger, 0, True);
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
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
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
        end;
        // by mostafa
        // DBGrid1.Add2SumFooter(FieldName);
      end;

    end;
    ActCommission := FieldByName('FormulaID').AsInteger <> 0;
    if ActCommission then
    begin
      with TFMTBCDField.Create(qryItems) do
      begin
        FieldName := 'Commission';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'پورسانت(درصد/ضریب)';
        Precision := 20;
        Size := 8;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
        i := ColumnIndexByFieldName(DBGrid1, 'TotallSellPrice');
        OnChange := qryItemsCommissionChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'Commission';
          Index := i;
        end;
      end;

      with TFMTBCDField.Create(qryItems) do
      begin
        FieldName := 'CommissionCurrency';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'تعداد ارز پورسانت';
        Precision := 20;
        Size := 8;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
        OnChange := qryItemsCommissionCurrencyChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'CommissionCurrency';
          Index := i + 1;
        end;
      end;

      with TFMTBCDField.Create(qryItems) do
      begin
        FieldName := 'CommissionPrice';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'مبلغ پورسانت';
        Precision := 20;
        Size := 8;
        qryItems.FieldDefs.Add(Name, ftFMTBcd, 4, True);
        Currency := True;
        OnChange := qryItemsCommissionPriceChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'CommissionPrice';
          Index := i + 2;
        end;
      end;

    end;

    b := (ShowNotEntityOnSearch and Integer(chkRIDateMS_RIDateME)) <> 0;
    if b then
    begin
      with TDateTimeField.Create(qryItems) do
      begin
        FieldName := 'RIDateMS';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'تاریخ شروع';
        qryItems.FieldDefs.Add(Name, ftDateTime);
        ReadOnly := True;
        i := DBGrid1.Columns.Count - 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'RIDateMS';
          Index := i;
        end;
      end;
      with TDateTimeField.Create(qryItems) do
      begin
        FieldName := 'RIDateME';
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'تاریخ پایان';
        qryItems.FieldDefs.Add(Name, ftDateTime);
        ReadOnly := True;
        i := DBGrid1.Columns.Count - 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'RIDateME';
          Index := i;
        end;
      end;

    end;

    b := ((opt.ConfigSettings and Integer(CHkCsSpecialCode)) <> 0);
    if b then
    begin
      with TStringField.Create(qryItems) do
      begin
        FieldName := 'SpecialCode';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'شماره شاسی';
        FixedChar := True;
        Size := 25;
        qryItems.FieldDefs.Add(Name, ftString, 25, True);
        // i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo') + 1;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'SpecialCode';
          ButtonStyle := cbsEllipsis;
          // Index:=i+1;
        end;
      end;
    end;

    b := ((Settings and Integer(ChkArzType2)) <> 0);
    setColumns2(DBGrid1, b, '_ArzTypeID2');
    cmb_ArzTypeID2.Visible := b;
    edtArzRate2.Visible := b;
    edtExchangePrice.Visible := b;
    cmbHowConvert.Visible := b;
    lbl_ArzTypeID2.Visible := b;
    lblHowConvert.Visible := b;
    lblArzRate2.Visible := b;
    lblExchangePrice.Visible := b;
    btnRialsEqualChange.Visible := b;

    if b then
    begin
      with TFloatField.Create(qryItems) do
      begin
        FieldName := 'ArzRate2';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'نرخ تبدیل';
        DisplayFormat := '#,0.0000;(#,0.0000)';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'ArzRate2';
        end;
        OnChange := qryItemsArzRate2Change;
      end;

      with TWordField.Create(qryItems) do
      begin
        FieldName := 'HowConvert';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'نحوه تبدیل ارز';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'HowConvert';
        end;
        i := ColumnIndexByFieldName(DBGrid1, 'HowConvert');

        DBGrid1.Columns[i].PickList.AddObject('ضرب', TObject(0));
        DBGrid1.Columns[i].PickList.AddObject('تقسیم', TObject(1));

        cmbHowConvert.Items.AddObject('ضرب', TObject(0));
        cmbHowConvert.Items.AddObject('تقسیم', TObject(1));

        OnChange := qryItemsArzRate2Change;
        OnGetText := qryItemsSecondTypeItemGetText;
        OnSetText := qryItemsSecondTypeItemSetText;
      end;

      // with TIntegerField.Create(qryItems) do
      // begin
      // FieldName := 'ArzTypeID2';
      // FieldKind := fkData;
      // DataSet := qryItems;
      // Name := 'qryItems' + FieldName;
      // qryItems.FieldDefs.Add(Name, ftInteger, 0, True);
      // end;

      with TFloatField.Create(qryItems) do
      begin
        FieldName := 'ArzAmount2';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'مقدار ارز پرداختی';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'ArzAmount2';
        end;
      end;

      with TBCDField.Create(qryItems) do
      begin
        FieldName := 'ExchangePrice';
        FieldKind := fkData;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'بهای واحد ارز پرداختی';
        qryItems.FieldDefs.Add(Name, ftCurrency, 0, True);
        Currency := True;
        OnChange := qryItemsArzAmountChange;
        With DBGrid1.Columns.Add do
        begin
          FieldName := 'ExchangePrice';
        end;
      end;

    end
    else
    begin
      qryItemsArzTypeID2.Free;
      qryItems_ArzTypeID2.Free;
      edtRialsEqual.Margins.Left := edtTruckNumber.Left + 1;
      // edtRialsEqual.Left:=edtTruckNumber.Left;
      CmbArzTypeID.Margins.Left := edtTruckNumber.Left + 18;
    end;

    if CLini <> nil then
      fillProps([Self], CLini);

  end; // with
  pnlSells.Visible := pnlSellsEmporium.Visible or pnlSellsMethod.Visible;
  pnlMasir_Delivery.Visible := pnlMasir.Visible or pnlDelivery.Visible;
  SetLookUpCash(qryItems);
  SetLookUpCash(qryRecipts);
  // ColorDBGrid(DBGrid1);
  // stuffsizeId:=ColumnIndexByFieldName(DBGrid1,'stuffsize');
  k := ColumnIndexByFieldName(DBGrid1, 'ParentForm');
  DBGrid1.Columns[k].Index := DBGrid1.Columns.Count - 1;

end;

procedure TReciptsGridF.qryItemsTaxCoChange(Sender: TField);
begin
  inherited;
  try
    Sender.OnChange := nil;
    EndOfPrice((Sender as TField).FieldName); // TaxCo
  finally
    Sender.OnChange := qryItemsTaxCoChange;
  end;
end;

procedure TReciptsGridF.qryItemsCommissionChange(Sender: TField);
var
  EntityWeight: string;
begin
  inherited;
  try
    qryItems.FieldByName('CommissionCurrency').OnChange := nil;
    qryItems.FieldByName('Commission').OnChange := nil;

    if (qryinit.FieldByName('AutoCorrelateCo').AsInteger and
      Integer(CHkCommissionPriceOfTotalPrice) <> 0) then
    begin
      qryItems.FieldByName('CommissionPrice').AsFloat :=
        Trunc(((qryItems.FieldByName(FieldNamePrice).AsFloat -
        qryItems.FieldByName('DeficitValue').AsFloat) *
        qryItems.FieldByName('Commission').AsFloat) / 100);

    end
    else if (qryinit.FieldByName('AutoCorrelateCo').AsInteger and
      Integer(CHkCommissionPriceOfTotalPriceOnly) <> 0) then
    begin
      qryItems.FieldByName('CommissionPrice').AsFloat :=
        Trunc(((qryItems.FieldByName(FieldNamePrice).AsFloat) *
        qryItems.FieldByName('Commission').AsFloat) / 100);

    end
    else
    begin
      case MyEntityDisplayType of
        0, 2:
          EntityWeight := FieldNameEntity;
        1, 3:
          EntityWeight := FieldNameWeight;
      end;
      // -----      , ROUND((InputWeight + OutputWeight) *  Commission  , 0) AS  CommissionPrice
      qryItems.FieldByName('CommissionPrice').AsFloat :=
        Trunc(qryItems.FieldByName(EntityWeight).AsFloat *
        qryItems.FieldByName('Commission').AsFloat);

      EndOfPrice((Sender as TField).FieldName); // Commission
    end;

  finally
    qryItems.FieldByName('CommissionCurrency').OnChange :=
      qryItemsCommissionCurrencyChange;
    qryItems.FieldByName('Commission').OnChange := qryItemsCommissionChange;
  end;
end;

procedure TReciptsGridF.qryItemsCommissionCurrencyChange(Sender: TField);
begin
  inherited;
  try
    qryItems.FieldByName('CommissionCurrency').OnChange := nil;
    qryItems.FieldByName('Commission').OnChange := nil;
    qryItems.FieldByName('CommissionPrice').AsFloat :=
      Trunc(qryReciptsRialsEqual.AsFloat * qryItems.FieldByName
      ('CommissionCurrency').AsFloat);
    // EndOfPrice((Sender as TField).FieldName); // Commission
  finally
    qryItems.FieldByName('CommissionCurrency').OnChange :=
      qryItemsCommissionCurrencyChange;
    qryItems.FieldByName('Commission').OnChange := qryItemsCommissionChange;
    Sender.OnChange := qryItemsCommissionChange;
  end;
end;

procedure TReciptsGridF.qryItemsCommissionPriceChange(Sender: TField);
var
  c: Real;
begin
  inherited;
  try
    Sender.OnChange := nil;
    if qryReciptsRialsEqual.AsFloat <> 0 then
      qryItems.FieldByName('CommissionCurrency').AsFloat :=
        RoundTo(qryItems.FieldByName('CommissionPrice').AsFloat /
        qryReciptsRialsEqual.AsFloat, -8);

    if (qryinit.FieldByName('AutoCorrelateCo').AsInteger and
      Integer(CHkCommissionPriceOfTotalPrice) <> 0) then
    begin
      c := qryItems.FieldByName(FieldNamePrice).AsFloat -
        qryItems.FieldByName('DeficitValue').AsFloat;
      if c <> 0 then
        qryItems.FieldByName('Commission').AsFloat :=
          RoundTo(qryItems.FieldByName('CommissionPrice').AsFloat * 100
          / c, -8);

    end;
    if (qryinit.FieldByName('AutoCorrelateCo').AsInteger and
      Integer(CHkCommissionPriceOfTotalPriceOnly) <> 0) then
    begin
      c := qryItems.FieldByName(FieldNamePrice).AsFloat;
      if c <> 0 then
        qryItems.FieldByName('Commission').AsFloat :=
          RoundTo(qryItems.FieldByName('CommissionPrice').AsFloat * 100
          / c, -8);
    end;

    /// EndOfPrice((Sender as TField).FieldName); // Commission
  finally
    Sender.OnChange := qryItemsCommissionPriceChange;
  end;
end;

procedure TReciptsGridF.qryItemsCurrencyDiscountsChange(Sender: TField);
begin
  inherited;
  if PnlArzActive.Visible then
    try
      Sender.OnChange := nil;
      qryItemsDeficitValue.AsFloat :=
        Trunc(Sender.AsFloat * qryReciptsRialsEqual.AsFloat);
    finally
      Sender.OnChange := qryItemsCurrencyDiscountsChange;
    end;
end;

procedure TReciptsGridF.qryItemsCustomerRateChange(Sender: TField);

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

  case qryinit.FieldByName('CustomerRateAct').AsInteger of
    2:
      begin
        // بهای کل = خالص توافقی +تخفیف - مالیات

        DeficitValue := qryItems.FieldByName('DeficitValue').AsCurrency;
        VATCo := ((Sender.AsCurrency)) / (1 + (TaxCo / 100));
        // (TaxCo * 0.01) + 1;
        TotalPrice := DeficitValue + VATCo;
        EntityWeight := qryItems.FieldByName(FieldNameEntity).AsFloat;
        if EntityWeight <> 0 then
          UnitePrice := TotalPrice / EntityWeight
        else
          UnitePrice := TotalPrice;
        qryItemsUnitSellPrice.AsCurrency := UnitePrice;
        SetOnChangeOff(qryItems.FieldByName('TaxValue'),
          Sender.AsCurrency - VATCo);
        SetOnChangeOff(qryItemsTotallSellPrice, Sender.AsCurrency);
        qryItems.FieldByName('DeficitValue').AsCurrency := DeficitValue;
        SetOnChangeOff(qryItems.FieldByName('TaxValue'),
          Sender.AsCurrency - VATCo);
        exit;
      end;
  else
    begin
      CustomerRate := Sender.AsCurrency;
      if (RoundTo(CustomerRate / VATCo, RoundCount) > CustomerRate / VATCo) then
        UnitePrice := RoundTo(CustomerRate / VATCo, RoundCount)
      else
        UnitePrice := RoundTo(CustomerRate / VATCo, RoundCount) + 0.01;

    end;
  end;

  EntityWeight := qryItemsOutputWeight.AsFloat;
  TotalPrice := Trunc(UnitePrice * EntityWeight);

  DeficitValue := 0;
  // TaxValue:=0;

  // TaxValue := RoundTo((TotalPrice - DeficitValue) * TaxCo / (100 * VATRound), 0) * VATRound;

  TaxValue := Trunc((TotalPrice - DeficitValue) * TaxCo / (100 * VATRound))
    * VATRound;

  while TotalPrice + TaxValue - DeficitValue <>
    Trunc(CustomerRate * EntityWeight) do
  begin
    DeficitValue := TotalPrice + TaxValue - Trunc(CustomerRate * EntityWeight);
    // TaxValue := RoundTo((TotalPrice - DeficitValue) * TaxCo / (100 * VATRound),
    // 0) * VATRound;

    TaxValue := Trunc((TotalPrice - DeficitValue) * TaxCo / (100 * VATRound))
      * VATRound;

  end;
  DeficitValue := Trunc(DeficitValue);
  // if qryItemsUnitSellPrice.AsCurrency<>UnitePrice then
  qryItemsUnitSellPrice.AsCurrency := UnitePrice;
  // if qryItems.FieldByName('DeficitValue').AsCurrency<>DeficitValue then
  qryItems.FieldByName('DeficitValue').AsCurrency := DeficitValue;
  // qryItems.FieldByName('TaxValue').AsCurrency:=TaxValue;

end;

procedure TReciptsGridF.initFormConfig;

var
  b: Boolean;
begin
  ReciptID4ParentReciptID := '';
  UnitPriceReadOnly := qryinit.FieldByName('UnitPriceReadOnly').AsInteger;

  b := qryinit.FieldByName('PriceReadOnly').AsInteger = 1;

  b := b or ((not(CurAccess and Integer(akEditPrice) <> 0)) and
    not User.PowerUser);

  // بهاي کل    في      هردو
  setColumns2(DBGrid1, b or (UnitPriceReadOnly in [0]), 'UnitSellPrice',
    aReadOnly);

  setColumns2(DBGrid1, b or (UnitPriceReadOnly in [1]), 'TotalInputPrice',
    aReadOnly);
  setColumns2(DBGrid1, b or (UnitPriceReadOnly in [1]), 'TotalOutputPrice',
    aReadOnly);

  if ((not(CurAccess and Integer(akEditUnitSellPrice) <> 0)) and
    not User.PowerUser) then
    setColumns2(DBGrid1, False, 'UnitSellPrice', aReadOnly);

  // b := b or ((not(CurAccess and Integer(akEditUnitSellPrice) <> 0)) and
  // not User.a dmin);
  // setColumns2(DBGrid1, b, 'UnitSellPrice', aReadOnly);

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
    setColumns2(DBGrid1, False, 'DeficitValue4');
    setColumns2(DBGrid1, False, 'TotalInputPrice');
    setColumns2(DBGrid1, False, 'TotalOutputPrice');
    setColumns2(DBGrid1, False, 'UnitSellPrice');
    setColumns2(DBGrid1, False, 'TotallSellPrice');
    setColumns2(DBGrid1, False, 'TotalStandardRate');
    setColumns2(DBGrid1, False, 'TotalDeficient');
    setColumns2(DBGrid1, False, 'UnitSellDeficient');
    setColumns2(DBGrid1, False, 'TaxCo');
    setColumns2(DBGrid1, False, 'TaxValue');
    setColumns2(DBGrid1, False, 'Portage');
    setColumns2(DBGrid1, False, 'Article');
    setColumns2(DBGrid1, False, 'Wage');
    setColumns2(DBGrid1, False, 'Scoria');
  end;

end;

procedure TReciptsGridF.initForm4Output;
begin
  FormOutput := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  setColumns2(DBGrid1, (not FormOutput) and EntityDisplay, 'InputEntity');
  setColumns2(DBGrid1, (FormOutput) and EntityDisplay, 'OutputEntity');
  setColumns2(DBGrid1, (not FormOutput) and WeightDisplay, 'InputWeight');
  setColumns2(DBGrid1, (FormOutput) and WeightDisplay, 'OutputWeight');
  setColumns2(DBGrid1, not FormOutput, 'TotalInputPrice');
  setColumns2(DBGrid1, FormOutput, 'TotalOutputPrice');
end;

procedure TReciptsGridF.btnPersonID1Click(Sender: TObject);

var
  txt: String;
  b: Boolean;
  Results: array [0 .. 9] of String;
begin
  inherited;
  // qryCustomers1.Active := False;
  IF ((RecallTypeOption and Integer(chk_RTO_ChangePersonID1)) <> 0) then
    if qryItems.RecordCount > 0 then
      exit;

  txt := 'SELECT DISTINCT CustID,CustName,Address,Tel,PersonID3,' +
    'UseUnitID,Mobile,Fax,CustomerNote,nationalid FROM Vu_CustomersGroups ' +
    GetCustomersGroupTypeSQL('CustomerKind1', qryinit);
  Add2Filter(txt, 'CustomerActive = 0');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + ' ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString, 'آدرس', 'تلفن',
    'مشتري3', 'محل مصرف', 'همراه', 'دورنما', 'توضيحات', 'کد ملی'], Results,
    [50, 120, 100, 50, 50, 50, 50, 50, 100, 80], alLeft);
  if b then
  begin
    qryRecipts['PersonID1'] := Results[0];
    qryRecipts['PersonID3'] := Results[4];
    qryRecipts['UseUnitID'] := Results[5];
  end; // if
  // qryCustomers1.Active := True;
end;

procedure TReciptsGridF.btnPersonID2Click(Sender: TObject);

var
  txt: String;
  b: Boolean;
  Results: array [0 .. 6] of String;
begin
  inherited;
  // qryCustomers2.Active := False;
  // txt := qryCustomers2.SQL.Text;       CustomerActive,
  txt := 'SELECT DISTINCT CustID, CustName,InfoWeight,Address,  Mobile ,TechnicalCode,nationalid '
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
      txt := 'SELECT CustomersBroker.PersonID2, Customers.CustName,Customers.InfoWeight,Address, '
        + ' Customers.CustomerActive, Customers.Mobile,nationalid  ' +
        'FROM CustomersBroker INNER JOIN ' +
        'Customers ON CustomersBroker.PersonID2 = Customers.CustID WHERE CustomersBroker.PersonID1 ='
        + IntToStr(qryRecipts.FieldByName('PersonID1').AsInteger);
    Active := False;
  end;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person2Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person2Caption').AsString + '', 'وزن',
    'آدرس', 'همراه', 'کد فنی', 'کد ملی'], Results, [50, 150, 80, 300, 50, 60,
    80], alLeft);

  if b then
  begin
    qryRecipts.FieldByName('PersonID2').AsString := Results[0];
    // qryRecipts.FieldByName('ReciptType').AsInteger :=
    // qryRecipts.FieldByName('ReciptType').AsInteger; // for Refresh

  end;
  // qryCustomers1.Active := True;
  // qryCustomers2.Active := True;

end;

procedure TReciptsGridF.ALLDBEditKeyDown(Sender: TObject; var Key: Word;
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

procedure TReciptsGridF.actCustomerGrpID4Add2Customers1Execute(Sender: TObject);
begin
  inherited;
  Add2Customers(qryCustomers1, qryReciptsPersonID1,
    qryinit.FieldByName('CustomerGrpID4Add2Customers1').AsInteger);
end;

procedure TReciptsGridF.actCustomerGrpID4Add2Customers2Execute(Sender: TObject);
begin
  inherited;
  Add2Customers(qryCustomers2, qryReciptsPersonID2,
    qryinit.FieldByName('CustomerGrpID4Add2Customers2').AsInteger);
end;

procedure TReciptsGridF.GetANewReciptItemID(DataSet: TDataSet);
begin
  inherited;
  if qryReciptsServerID.AsInteger = opt.ServerID then
    GetANewID(DataSet, IntToStr(formType), 'ReciptItems', 'ReciptItemID',
      qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger)
  else
    GetANewID(DataSet, IntToStr(formType), 'ReciptItems', 'ReciptItemID',
      qryRecipts, -1, False);
end;

procedure TReciptsGridF.qryItemsAfterInsert(DataSet: TDataSet);
var
  s: string;
begin
  inherited;
  if (not CheckRequiredFields(qryRecipts)) then
  begin
    DataSet.Cancel;
    exit;
  end;
  // qryItemsDeficitValue.AsInteger := 0;
  if not(qryRecipts.State in dsEditModes) then
    qryRecipts.edit;

  DataSet.FieldByName('Irow').ReadOnly := False;
  if InsertRow.CanInsert then
    DataSet.FieldByName('Irow').AsInteger := InsertRow.Row
  else
    DataSet.FieldByName('Irow').AsInteger := InsertRow.Row + 1;

  if CountDetail then
    DataSet.FieldByName('stuffgrade').AsInteger := 1;

  if CalculatedEntityOrWeight > 0 then
    qryItemsDiagnosisCalcTotalPrice.AsInteger := CalculatedEntityOrWeight - 1;

  if (qryinit.FieldByName('ArzActive').AsInteger in [2]) then
    qryItems.FieldByName('ArzRate').AsFloat :=
      qryRecipts.FieldByName('RialsEqual').AsFloat;

  if (Not GetExcelAct) and (qryinit.FieldByName('ReciptIDEventKind')
    .AsInteger = 0) then // IntToStr(formType)
    GetANewReciptItemID(DataSet)
  else
  begin
    DataSet.FieldByName('ReciptItemID').AsInteger := 0;
  end;

  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').AsInteger;

  DataSet.FieldByName('PO').ReadOnly := False;
  DataSet.FieldByName('PO').AsString := qryRecipts.FieldByName('PO').AsString;

  DataSet.FieldByName('FirstUser').AsString := User.Name;

  GetCustomersDiscount(qryRecipts, qryItems, qryinit);

  DataSet.FieldByName('AidNumber').AsString := AidNumber;
  DataSet.FieldByName('AidDate').AsString := AidDate_;

  // if ((Settings and Integer(CHkAidDateAmountRepeated)) <> 0) then
  // begin
  // qryItemsAidDate.Value := qryItemsAidDate.OldValue;
  // qryItemsAidNumber.Value := qryItemsAidNumber.OldValue;
  // end;

  if (qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
    Integer(CHkBarCodePrint) <> 0) then
    qryItemsProductCode.AsInteger := ProductCodel_;

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

  // if SecondTypeItemActive then
  // DataSet.FieldByName('SecondTypeItem').AsInteger :=
  // Integer(DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')
  // ].PickList.Objects[0]);
  if SecondTypeItemActive then
    DataSet.FieldByName('SecondTypeItem').AsInteger :=
      qryLookUP.FieldByName('LookUpID').AsInteger;

  if qryinit.FieldByName('AutoPrice').AsInteger in [14, 15] then
    DataSet.FieldByName('ProductCode').AsLargeInt := 0;

  qryItemsIRow.ReadOnly := False;
  if (qryItems.State in dsEditModes) then
    qryItemsIRow.AsInteger := Abs(qryItems.RecNo);

  if RciptDateToItemDate then
    DataSet.FieldByName('ItemDate').AsString := qryReciptsReciptDate.AsString;

  if (ShowNotEntityOnSearch and Integer(chkDefaultUseUnit)) <> 0 then
    DataSet.FieldByName('UseUnitID').AsInteger := 0;

  if ((Settings and Integer(ChkArzType2)) <> 0) then
  begin
    qryItemsArzTypeID2.AsInteger :=
      Integer(cmb_ArzTypeID2.Items.Objects[cmb_ArzTypeID2.ItemIndex]);
    qryItems.FieldByName('ArzRate2').AsString := edtArzRate2.Text;

    s := edtExchangePrice.Text;
    if s.Trim = '' then
      s := '1';
    qryItems.FieldByName('ExchangePrice').AsString := s;
    qryItems.FieldByName('HowConvert').AsInteger :=
      Integer(cmbHowConvert.Items.Objects[cmbHowConvert.ItemIndex]);

  end;

end;

procedure TReciptsGridF.qryReciptsAfterInsert(DataSet: TDataSet);

var
  SecondType, DayOrder, PortageBedbes: Integer;
  SelectDate: TDateTime;
begin
  inherited;
  DataSet_Insert := True;
  qryReciptsInsertDate.AsDateTime := Now;
  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  DataSet.FieldByName('ReciptType').AsInteger := formType;
  DataSet.FieldByName('Insr').AsBoolean := False;
  GetReciptID(qryRecipts, qryItems, qryinit, 0);
  if qryinit.FieldByName('PriorityReciptDate').AsInteger in [1, 2, 3] then
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

  if (Settings and Integer(chkSetDefaultSellsMethodEmporium) = 0) then
    SetDefaultSellsMethodEmporium(qryRecipts, dblkcbb_SellsEmporium,
      dblkcbb_SellsMethod);

  if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [1, 3] then
    DataSet.FieldByName('InsertTime').AsString := SysUtils.TimeToStr(Now);

  if RestartStore THEN
    DataSet.FieldByName('StoreID').AsInteger := myStore.code;
  // 2
  if not pnlStore1.Visible then
  // with DMf.qryTmpTmp do
  begin
    // Active := False;
    // SQL.Text := 'SELECT MIN(n_StoreID) FROM Stores';
    // Active := True;
    // myStore.code := Fields[0].AsInteger;
    // Active := False;
    myStore.code := qryinit.FieldByName('DefaultStoreID').AsInteger;
    TADOQuery(DataSet).FieldByName('StoreID').AsInteger := myStore.code;
  end;

  if IsSendingMoadiyan then
    GetReciptNumber(qryinit, DataSet, 0, myStore, True, False)
  else
    GetReciptNumber(qryinit, DataSet, 0, myStore);

  ReciptStateAutoStateChange(qryinit, DataSet);

  DataSet.FieldByName('InvoiceTemplate').AsInteger := 1;
  DataSet.FieldByName('AddDecValue').AsInteger := 0;
  DataSet.FieldByName('TotalValue').AsInteger := 0;

  if (Settings and Integer(chkSetDefaultSellsMethodEmporium) = 0) then
  begin
    SecondType := StrToInt(ReadConfig(APPID,
      APPBank.Name + '_ReciptsGridF_SecondType' + IntToStr(formType), '0'));
    if SecondType <> 0 then
      qryRecipts.FieldByName('SecondType').AsInteger := SecondType
    else
      qryRecipts.FieldByName('SecondType').AsInteger := CmbSecondType.Tag;
    // if not PnlSecondType.Visible then
    // DataSet.FieldByName('SecondType').AsCurrency:=0;
  end;

  PortageBedbes := StrToInt(ReadConfig(APPID,
    APPBank.Name + '_ReciptsGridF_PortageBedbes' + IntToStr(formType), '0'));
  if PortageBedbes <> 0 then
    qryRecipts.FieldByName('PortageBedbes').AsInteger := PortageBedbes;

  IF DataSet.FieldByName('PersonID5').IsNull THEN
    DataSet.FieldByName('PersonID5').AsInteger := 0;
  IF DataSet.FieldByName('PersonID4').IsNull THEN
    DataSet.FieldByName('PersonID4').AsInteger := 0;
  IF DataSet.FieldByName('PersonID3').IsNull THEN
    DataSet.FieldByName('PersonID3').AsInteger := 0;
  IF DataSet.FieldByName('PersonID2').IsNull THEN
    DataSet.FieldByName('PersonID2').AsInteger := 0;
  // if not PnlPerson1.Visible then
  IF DataSet.FieldByName('PersonID1').IsNull THEN
    DataSet.FieldByName('PersonID1').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := User.Name;
  DataSet.FieldByName('UseOtherID').AsInteger := 0;

  if CmbArzTypeID.Items.Count > 0 then
    DataSet.FieldByName('ArzTypeID').AsInteger := CmbArzTypeID.Tag;

  if (not AutoInsertPostInsert) then
  begin
    if EdtRNum.TabStop then
      EdtRNum.SetFocus
    else if EdtReciptDate.TabStop then
      EdtReciptDate.SetFocus
    else if PnlPerson2.Visible then
      EdtPersonID2.SetFocus;
  end
  else
    try
      DBGrid1.SetFocus;
      DBGrid1.SelectedIndex := 0;
    except
      on E: Exception do
    end;

end;

procedure TReciptsGridF.qryReciptsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // if FileExists(GridColumnsSavePath) then
  // begin
  // lblCaptionGrd.Caption := '...';
  // lblCaptionGrd.Hint := actSaveGrid.Caption + ' انجام شده ';
  // DBGrid1.Columns.LoadFromFile(GridColumnsSavePath);
  // end;
end;

procedure TReciptsGridF.FormDestroy(Sender: TObject);
begin
  // zAPIBalloon allocates FToolInfo.lpszText for every Show call. Its
  // destructor does not release that buffer when the balloon is still
  // active, so close it while the component is still alive.
  if Assigned(zbal) then
    zbal.Close;
  inherited;
  opt.PayablePrice := 0;
  opt.CustomerID1 := 0;
  opt.CustomerID2 := 0;
  opt.ReciptID := 0;
  opt.RelatedRecipts := EmptyStr;
  FreeMyComponent(Self, ['qryUseOthers', 'qryUseOthersInt', 'qryAddressInMasir',
    'qrySellsInfo36', 'qrySellsEmporiums', 'qrySellsMethods', 'qryCustomers3',
    'qryCust1', 'qryCust2', 'qryCust3', 'qryCustD', 'srcCustomers1',
    'srcCustomers2', 'srcCustomers3', 'ppDBPipelineCustomers1',
    'ppDBPipelineCustomers2', 'ppDBPipelineCustomers3', 'SrcStores',
    'PipStores', 'QryStore2', 'qryGroupDeficitID', 'qryCustManag1',
    'qryCustManag2', 'qryCustManag3', 'qryCustManagD', 'srcCustomersManag1',
    'srcCustomersManag2', 'srcCustomersManag3', 'srcCustomersManagD',
    'PipCustomersManag1', 'PipCustomersManag2', 'PipCustomersManag3',
    'PipCustomersManagD', 'qryProductCode', 'qryCust4', 'qryCustManag4',
    'qryCustomers4', 'qryTozin1', 'SrcTozin1', 'ppDBPipelineTozin1',
    'srcDesignForm', 'PlnDesignForm', 'qryDesignForm', 'qryUnit2Stuffs',
    'qryStereotypy', 'SrcStereotypy', 'PipStereotypy', 'qryStereotypyP',
    'RESTResponse1', 'RESTRequest1', 'RESTClient1', 'grdTax', 'srcItemsReturn',
    'grdItemsReturn', 'SplItemsReturn', 'srcItemsReturnprn',
    'grdItemsReturnprn', 'SplItemsReturnprn']);

  THackGrid(DBGrid1).DoSave;
  // SaveColWidth(DBGrid1, IntToStr(formType));
  mainF.DelListRecipts('ReciptsGridF' + IntToStr(formType));
end;

procedure TReciptsGridF.FormResize(Sender: TObject);
begin
  inherited;
  // if not FileExists(GridColumnsSavePath) then
  // SetColSize(DBGrid1, 2, False, IntToStr(formType));
  btnTax1.Left := Width;
end;

procedure TReciptsGridF.EditPersonID;
var
  b: Boolean;
begin
  b := not(qryRecipts.State in [dsInsert]);

  if (ValueControl and Integer(EditPersonID1Active) <> 0) then
  begin
    EdtPersonID1.ReadOnly := b;
    btnPersonID1.Enabled := not b;
  end;

  if (ValueControl and Integer(EditPersonID2Active) <> 0) then
  begin
    EdtPersonID2.ReadOnly := b;
    btnPersonID2.Enabled := not b;
  end;

  if (ValueControl and Integer(EditPersonID3Active) <> 0) then
  begin
    edtPersonID3.ReadOnly := b;
    btnPersonID3.Enabled := not b;
  end;

  if (ValueControl and Integer(EditPersonID4Active) <> 0) then
  begin
    edtPersonID4.ReadOnly := b;
    btnPersonID4.Enabled := not b;
  end;

  if (ValueControl and Integer(EditPersonID5Active) <> 0) then
  begin
    edtPersonID5.ReadOnly := b;
    btnPersonID5.Enabled := not b;
  end;

end;

procedure TReciptsGridF.edtAidDateDblClick(Sender: TObject);
var
  AidDate: TDateTime;
  i: int64;
begin
  inherited;
  AidDate := Shamsi2Miladi(qryReciptsAidDate.AsString);
  AidDate := AidDate + Time;
  i := DateTimeToUTC(AidDate);
  MessageDlg(i.ToString, mtWarning, [mbOK], 0);
end;

procedure TReciptsGridF.edtBarCodeKeyPress(Sender: TObject; var Key: Char);
var
  c_StuffCode: int64;
  BarCodeKind: Integer;
  SearchField, SQLQuery, BarcodeText: string;
  Row: Integer;
begin
  inherited;
  if Key = #13 then // وقتی کلید Enter فشار داده شد
  begin
    Key := #0; // جلوگیری از صدای بوق
    if Trim(edtBarCode.Text) <> '' then
    begin
      try
        // خواندن BarCodeKind
        BarCodeKind := qryinit.FieldByName('BarCodeKind').AsInteger;
        BarcodeText := edtBarCode.Text;

        // تعیین فیلد جستجو بر اساس BarCodeKind
        case BarCodeKind of
          7:
            SearchField := 'c_StuffCode';
          8:
            SearchField := 'c_StuffTecInfo';
          9:
            SearchField := 'StanCode';
          10:
            SearchField := 'VendorBarcode';
          11:
            begin
              BarcodeText := LeftStr(BarcodeText, 5);
            end
        else
          begin
            ShowMessage('نوع بارکد نامعتبر است!');
            exit;
          end;
        end;

        // جستجو در جدول StuffCoding
        with TADOQuery.Create(nil) do
          try
            Connection := qryItems.Connection; // استفاده از همان اتصال qryItems
            SQL.Text :=
              Format('SELECT c_StuffCode FROM StuffCoding WHERE %s = :Code',
              [SearchField]);
            Parameters.ParamByName('Code').Value := BarcodeText;
            if BarCodeKind <> 11 then
            begin
              Open;
              c_StuffCode := FieldByName('c_StuffCode').AsLargeInt;
            end
            else
              c_StuffCode := StrToInt64(BarcodeText);

            if c_StuffCode <> 0 then
            begin
              try
                SetqryUnit2Stuffs(True);
                DMf.adcBSell.Execute
                  (Format('INSERT INTO StuffCodeTemp(StuffCode, ReciptType, UserID)'
                  + 'VALUES(%s,%d,%d)', [c_StuffCode.ToString, formType,
                  User.id]), Row);
                if Row > 0 then
                begin
                  ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit,
                    qryRecipts, lblWarn);
                  // RefreshLookupList(qryItems);
                end;
              except
                on E: Exception do
                begin
                  add2log('I>>>StuffCodeTemp' + E.Message);
                  Warn2('I>>>StuffCodeTemp' + E.Message);
                end;
              end;

            end
            else
            begin
              Warn2('کد وارد شده در جدول StuffCoding یافت نشد!');
              exit;
            end;
          finally
            Free;
          end;

        // جستجو یا درج در qryItems

        try
          // if not qryItems.Locate('StuffCode',c_StuffCode,[]) then
          // begin
          // // اگر رکورد وجود داشت، مقدار را افزایش بده
          // qryItems.edit;
          // qryItems.FieldByName(FieldNameEntity).AsInteger :=
          // qryItems.FieldByName(FieldNameEntity).AsInteger + 1;
          // qryItems.Post;
          // end
          // else
          begin
            // اگر رکورد وجود نداشت، رکورد جدید اضافه کن
            qryItems.DisableControls;
            qryItems.Last;
            qryItems.Insert;
            if BarCodeKind = 11 then
              qryItems.FieldByName('Confirming').AsString := edtBarCode.Text;
            qryItems.FieldByName('StuffCode').AsLargeInt := c_StuffCode;
            qryItems.FieldByName(FieldNameEntity).AsInteger := 1;
            // سایر فیلدها را می‌توانید اینجا مقداردهی کنید
            qryItems.Post;
          end;
        finally
          // پاکسازی و آماده‌سازی برای ورودی بعدی
          edtBarCode.Text := '';
          qryItems.EnableControls;

        end;
      except
        on E: Exception do
        begin
          Warn2('خطا: ' + E.Message);
        end;
      end;
    end;
  end;
end;

procedure TReciptsGridF.srcReciptsStateChange(Sender: TObject);
var
  i: Integer;
  Control: TControl;
  b: Boolean;
begin
  inherited;
  pnlChangeState.Visible := not(qryRecipts.State in [dsInsert]);
  if qryRecipts.State in [dsInsert] then
    actChangeState.Caption := 'ثبت پيش نويس';

  EditPersonID;

  qryItems.Filtered := False;
  okPanel.Visible := qryRecipts.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  actAnalytical.Enabled := okPanel.Visible;
  actSearchReciptNumber.Enabled := newPanel.Visible;

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
  LblReMainPerson1.Visible := False;
  LblReMainPerson2.Visible := False;

  actInfoSMSF.Visible := newPanel.Visible;
  DBNavigator1.Visible := newPanel.Visible;
  mnuExcelComparisonExcel2F.Enabled := newPanel.Visible;

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

  // btnPersonID1.Visible := not qryRecipts.FieldByName('PersonID1').ReadOnly;
  // btnStoreID.Visible := not qryRecipts.FieldByName('StoreID').ReadOnly;
  actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >= 1)
    and ReciptStateDeficitsVisible(qryRecipts) and
    (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1) or
    (qryinit.FieldByName('EditableFields').AsString <> EmptyStr);
  actDeficits.Enabled := (newPanel.Visible) and
    (qryinit.FieldByName('DeficitValueEditing').AsInteger = 0) and
    PriceOn_StoreType;
  // SumGrid1.Visible := newPanel.Visible;

  actPayments.Visible := newPanel.Visible and (PaymentsActive > 0);

  // if SumGrid1.Visible = True then
  // SumGrid1.MasterGrid := DBGrid1
  // else
  // begin
  // SumGrid1.MasterGrid := nil;
  // DBGrid1.Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize,
  // dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
  // end;

  if qryRecipts.State in dsEditModes then
  begin
    DBGrid1.Options := DBGrid1.Options - [dgMultiSelect] + [dgEditing];
    DBGrid1.OptionsEh := DBGrid1.OptionsEh - [dghAutoSortMarking,
      dghMultiSortMarking]

  end
  else
  begin
    DBGrid1.Options := DBGrid1.Options + [dgMultiSelect];
    DBGrid1.OptionsEh := DBGrid1.OptionsEh + [dghAutoSortMarking,
      dghMultiSortMarking]
  end;

  if (qryinit.FieldByName('TozinActive').AsInteger > 0) and
    (qryRecipts.State in [dsInsert]) then
  begin
    setColumns2(DBGrid1, True, 'MachineWeight', aReadOnly);
    setColumns2(DBGrid1, True, 'MachineFullWeight', aReadOnly);
    setColumns2(DBGrid1, True, 'TotalWeight', aReadOnly);
  end;

  TaxStateMenu;

end;

procedure TReciptsGridF.mnuEntityClick(Sender: TObject);
begin
  inherited;
  mnuWeight.Checked := not mnuEntity.Checked
end;

procedure TReciptsGridF.mnuExcelComparisonExcel2FClick(Sender: TObject);
begin
  inherited;
  try
    getresponseShow := False;
    ActiveExcelComparisonExcel2F := True;
    qryAllRecipts.DisableControls;
    qryRecipts.DisableControls;
    qryItems.DisableControls;
    ExcelComparisonExcel2F.ShowImPortExcel(formType,
      qryReciptsStoreID.AsInteger, Form_InOut, CmbSecondType.Items);
    qryAllRecipts.Requery([]);
    qryAllRecipts.Last;
  finally
    qryAllRecipts.EnableControls;
    qryRecipts.EnableControls;
    qryItems.EnableControls;
    getresponseShow := True;
    ActiveExcelComparisonExcel2F := False;
  end;
end;

procedure TReciptsGridF.srcItemsStateChange(Sender: TObject);
begin
  inherited;
  BtnDelete2.Visible := (qryRecipts.State in dsEditModes) and
    DataSetDelete2.Visible;
  // BtnReject.Cancel:=newPanel2.Visible;
  // if qryItems.State in dsEditModes then  qryRecipts.Edit;
  SetSelected_StuffCode;
  TozinActiveSetReadOnly;

end;

procedure TReciptsGridF.SetqryUnit2Stuffs(IsEnter: Boolean);
var
  b: Boolean;
  UnitCount: Integer;
  SingleUnitCode: Integer;
begin
  if UnitCoAct then
  begin
    With qryUnit2Stuffs do
    begin
      Active := False;
      if IsEnter then
      begin
        Parameters.ParamByName('StuffCodeFrom').Value :=
          qryItemsStuffCode.AsLargeInt;
        Parameters.ParamByName('StuffCodeTo').Value :=
          qryItemsStuffCode.AsLargeInt;
      end
      else
      begin
        Parameters.ParamByName('StuffCodeFrom').Value := -2147483646;
        Parameters.ParamByName('StuffCodeTo').Value := 2147483647;
      end;
      Active := True;
      if qryItems.State in dsEditModes then
      begin
        { A single configured second unit is unambiguous and can be selected
          automatically.  When more than one unit is configured, leave the
          field empty so the user can choose it manually. }
        UnitCount := 0;
        SingleUnitCode := 0;
        First;
        while not Eof do
        begin
          Inc(UnitCount);
          if UnitCount = 1 then
            SingleUnitCode := FieldByName('UnitCode').AsInteger;
          if UnitCount > 1 then
            Break;
          Next;
        end;
        First;

        if IsEnter and (UnitCount = 1) and
          (qryItems.FieldByName('UnitCode2').IsNull or
          (qryItems.FieldByName('UnitCode2').AsInteger = 0)) then
        begin
          b := qryItems.FieldByName('UnitCode2').ReadOnly;
          qryItems.FieldByName('UnitCode2').ReadOnly := False;
          qryItems.FieldByName('UnitCode2').AsInteger := SingleUnitCode;
          qryItems.FieldByName('UnitCode2').ReadOnly := b;
        end;
      end;

    end;
  end;
end;

procedure TReciptsGridF.TozinActiveSetReadOnly;

var
  b: Boolean;
begin
  exit;
  b := (qryinit.FieldByName('TozinActive').AsInteger in [1, 4]) and
    (qryItemsStuffCode.AsLargeInt > 0);
  if b then
  begin
    if not qryTozinStuffCode.Active then
      qryTozinStuffCode.Open;
    if qryTozinStuffCode.Locate('c_StuffCode', qryItemsStuffCode.AsLargeInt, [])
    then
      b := False;
    b := b or ((not(CurAccess and Integer(akEditEntity) <> 0)) and
      not User.PowerUser);
    setColumns2(DBGrid1, b, FieldNameWeight, aReadOnly);
    setColumns2(DBGrid1, b, FieldNameEntity, aReadOnly);
  end;
end;

procedure TReciptsGridF.ppLblCompanyDescGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('CompanyDesc', 'سهامي خاص')
end;

procedure TReciptsGridF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TReciptsGridF.ppLabel15GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := Caption;
end;

procedure TReciptsGridF.ppLabel23GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := CmbArzTypeID.Text;
end;

procedure TReciptsGridF.plblPositiveBalanceGetText(Sender: TObject;
  var Text: string);

var
  PayablePrice: Currency;
begin
  inherited;
  // Calc_SumFileds('Price') +    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec')
  PayablePrice := ReMainPersonRecipt(0, qryRecipts, qryinit, True, nil, False);
  if PayablePrice > 0 then
    Text := CurrToStrF(PayablePrice, ffCurrency, 0)
  else
    Text := EmptyStr;
end;

procedure TReciptsGridF.plblNegativeBalanceGetText(Sender: TObject;
  var Text: string);

var
  PayablePrice: Currency;
begin
  inherited;
  // Calc_SumFileds('Price') +    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec')
  PayablePrice := ReMainPersonRecipt(0, qryRecipts, qryinit, True, nil, False);
  if PayablePrice < 0 then
    Text := CurrToStrF(PayablePrice, ffCurrency, 0)
  else
    Text := EmptyStr;
end;

procedure TReciptsGridF.plblTotallSellPrice2percentGetText(Sender: TObject;
  var Text: string);

var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice');
  PayablePrice := Trunc((98 * PayablePrice) / 100);
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

function TReciptsGridF.Calc_SumFileds(FiledName: String): Double;

var
  Total: String;
begin
  Total := ifthen(FiledName = 'Price', 'Total', '');
  Result := 0;
  if ((not UserQualitative) and UserQualitativeOnF(FiledName)) then
    exit;

  if qryItems.Active then
    try
      with TADOQuery.Create(Self) do
      begin
        Clone(qryItems, ltReadOnly);
        First;
        while not Eof do
        begin
          Result := Result + FieldByName(Total + 'Input' + FiledName).AsFloat +
            FieldByName(Total + 'Output' + FiledName).AsFloat;
          Next;
        end; // while
        Free;
        if qryinit.FieldByName('EffectOnCustomer').AsInteger = 2 then
          Result := Result * -1;
      end; // with
    except
    end; // try
end;

procedure TReciptsGridF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1, actSmsSend)
end;

procedure TReciptsGridF.actSetUnitSellPriceZeroExecute(Sender: TObject);
begin
  inherited;
  try
    qryItemsUnitSellPrice.OnChange := nil;
    if not(qryItems.State in dsEditModes) then
      qryItems.edit;
    qryItemsUnitSellPrice.AsInteger := 0;
  finally
    qryItemsUnitSellPrice.OnChange := qryItemsUnitSellPriceChange
  end;
end;

procedure TReciptsGridF.actShowCorrelateReciptCExecute(Sender: TObject);
begin
  inherited;
  ShowCorrelateReciptCP(qryReciptsReciptID.AsInteger,
    qryReciptsParentReciptID.AsInteger)
end;

procedure TReciptsGridF.actShowCorrelateReciptExecute(Sender: TObject);
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
      if ((opt.ConfigSettings and Integer(CHkCsFillParentReciptID)) = 0) then
      begin
        qry.SQL.Text := 'SELECT %d AS ReciptID, %d AS ServerID, %d AS YearID';
        qry.SQL.Text := Format(qry.SQL.Text,
          [ReciptID, qryReciptsServerID.AsInteger, qryReciptsYearID.AsInteger]);
      end
      else
      begin
        qry.SQL.Text := 'SELECT ReciptID, ServerID, YearID';
        qry.SQL.Add('FROM Recipts');
        qry.SQL.Add('WHERE ParentReciptID = :ReciptID');
        Parameters.ParamByName('ReciptID').Value :=
          qryReciptsReciptID.AsInteger;
      end;
      Active := True;
      ShowReciptTypes(qry, mainF, qryItemsStuffCode.AsLargeInt);
    finally
      qry.Free;
    end;
end;

procedure TReciptsGridF.actShowCorrelateReciptPExecute(Sender: TObject);
begin
  inherited;
  ShowCorrelateReciptCP(qryReciptsParentReciptID.AsInteger,
    qryReciptsReciptID.AsInteger)
end;

procedure TReciptsGridF.actShowpreReciptItemIDsFExecute(Sender: TObject);
begin
  inherited;
  ShowpreReciptItemIDsF.enter2(qryItems)
end;

procedure TReciptsGridF.ShowCorrelateReciptCP(ReciptID, ParentReciptID
  : Integer);
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  With qry do
    try
      Connection := theMainConnection;
      SQL.Text := 'DECLARE @ReciptID int = :ReciptID ';
      SQL.Add('DECLARE @ParentReciptID int = :ParentReciptID ');
      SQL.Add('SELECT ReciptID, ServerID, YearID');
      SQL.Add('FROM Recipts');
      SQL.Add('WHERE ((ISNULL(ParentReciptID,0) = @ReciptID) OR (ReciptID = @ParentReciptID))');
      SQL.Add('AND (ReciptID <> @ReciptID)');
      Parameters.ParamByName('ReciptID').Value := ReciptID;
      Parameters.ParamByName('ParentReciptID').Value := ParentReciptID;
      Active := True;
      ShowReciptTypes(qry, mainF, qryItemsStuffCode.AsLargeInt);
    finally
      qry.Free;
    end;
end;

procedure TReciptsGridF.actShowRecallExecute(Sender: TObject);
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

procedure TReciptsGridF.actshowRelatedFExecute(Sender: TObject);
begin
  inherited;
  RelatedF.showRelatedF(qryRecipts, qryReciptsPersonID1.AsInteger);
end;

procedure TReciptsGridF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryRecipts, qryItems, SmsRecipts, formType, 0, 1);
end;

procedure TReciptsGridF.RecallType19Check;
begin
  if qryinit.FieldByName('RecallType').AsInteger = 19 then
    if qryReciptsParentReciptID.AsInteger = 0 then
    begin
      Warn('فراخوانی انجام نشده');
      Abort;
    end;
end;

procedure TReciptsGridF.qryReciptsBeforePost(DataSet: TDataSet);
var
  DefaultDate, ExpireDate, ReciptEndDate, ReciptStartDate: String;
  b: Boolean;
begin
  inherited;
  // qryRecipts.AfterScroll:=nil;
  if (qryItems.State in dsEditModes) and (qryItemsStuffCode.AsLargeInt <> 0)
  then
    qryItems.Post
  else
    qryItems.Cancel;

  if not chkUsersStoreReciptTypes(qryReciptsStoreID.AsInteger, formType) then
    Abort;

  if qryinit.FieldByName('PriorityReciptDate').AsInteger in [3] then
    if CHKPriorityReciptDate(qryRecipts, qryinit) >=
      DataSet.FieldByName('ReciptDate').AsString then
    begin
      Warn(' در تاریخ بزرگتری فرمها دایمی/قطعی هستند،', mtInformation);
      Abort;
    end;

  RecallType19Check;

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

  if not CheckAidDateDay(qryinit, qryRecipts) then
    Abort;

  ReciptEndDate := qryReciptsReciptEndDate.AsString;
  ReciptStartDate := qryReciptsReciptStartDate.AsString;

  ExpireDate := qryReciptsExpireDate.AsString;
  if not validate_date(True, '', '', qryReciptsExpireDate.DisplayLabel,
    ExpireDate) then
    Abort;

  DefaultDate := DataSet.FieldByName('DefaultDate').AsString;
  if not validate_date(True, '', '', 'تاريخ جانبي', DefaultDate) then
    Abort;

  try
    DataSet.FieldByName('DefaultDate').ReadOnly := False;
    DataSet.FieldByName('DefaultDate').AsString := '';
    qryReciptsReciptEndDate.AsString := '';
    qryReciptsReciptStartDate.AsString := '';
    DataSet.FieldByName('ExpireDate').ReadOnly := False;
    DataSet.FieldByName('ExpireDate').AsString := '';
    b := DataSet.FieldByName('ExpireDate').Required;
    DataSet.FieldByName('ExpireDate').Required := False;

    if not ValidateDatasetDatesRecipts(DataSet, qryinit) then
      Abort;
  finally
    DataSet.FieldByName('DefaultDate').AsString := DefaultDate;
    qryReciptsReciptEndDate.AsString := ReciptEndDate;
    qryReciptsReciptStartDate.AsString := ReciptStartDate;
    qryReciptsExpireDate.AsString := ExpireDate;
    DataSet.FieldByName('ExpireDate').Required := b

  end;

  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 2 then
    StuffCodeUnic(qryRecipts, qryItems, qryinit);

  if not chkAidNumberUnic(qryRecipts, qryinit) then
    Abort;

  if ((SpecialSettings and Integer(chkDuplicateMachineInfo)) <> 0) then
    if not DuplicateMachineInfo(qryRecipts, qryinit) then
      Abort;

  if (pnlTozinID.Visible) and (not chkTozinIDUnic(qryRecipts, qryinit)) then
    Abort;

  if not ValidReciptNumber(qryRecipts, qryinit, myStore) then
  begin
    // if (qryReciptsIRTAXID.AsString = EmptyStr) then
    Abort;
  end;

  qryRecipts.FieldByName('ReciptValue').AsCurrency := Calc_SumFileds('Price');

  if not ActiveExcelComparisonExcel2F then
    if CheckedMaxCredit(qryinit, qryItems, qryRecipts) then
      Abort;
  if LimitRecord(qryItems, qryinit, False) then
    Abort;
  FnCorrelate4EditActiveDelete(qryRecipts,
    qryinit.FieldByName('Correlate4EditActive').AsInteger);
  ReciptsDsInsert := DataSet.State = dsInsert;
  GetReciptNumber(qryinit, DataSet, 1, myStore);
  GetReciptID(qryRecipts, qryItems, qryinit, 1);

  ReciptsSumOnStuffCode(qryRecipts, qryItems, qryinit, FieldNameEntity);

  Chk_CustomerActive(qryRecipts_CustomerActive, qryReciptsPersonID1);

  if ((opt.ConfigSettings and Integer(CHkCsServerID4SellsEmporium)) <> 0) then
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

  if not ChkCustomerState(qryRecipts) then
    Abort;

  GetControlCode(qryinit, qryItems, qryRecipts);

  if PnlMachineM.Visible and ((Settings and Integer(chkMachineRequired)) <> 0)
  then
  begin
    if (qryReciptsMachineInfo.AsString = EmptyStr) // or
    // (qryReciptsMachineInfo.AsString.Replace('0', '', [rfReplaceAll]) = '') or
    // (qryReciptsMachineInfo.AsString.Length < 3)
    then
    begin
      Warn2(qryReciptsMachineInfo.DisplayLabel + ' وارد نشده');
      Abort;
    end;

    if (qryReciptsTruckNumber.AsString = EmptyStr) or
      (qryReciptsTruckNumber.AsString.Replace('0', '', [rfReplaceAll]) = '') or
      (qryReciptsTruckNumber.AsString.Length < 3) then
    begin
      Warn2(qryReciptsTruckNumber.DisplayLabel + ' وارد نشده');
      Abort;
    end;

  end;

  if (ValueControl and Integer(chkSyadSystem) <> 0) then
    // ابتدا بررسی چک‌های سیاد
    if UserWantsToAbortBecauseOfPendingChecks(theMainConnection,
      qryReciptsPersonID1.AsInteger) then
    begin
      // کاربر لغو کرد → خروج
      Abort;
    end;

end;

procedure TReciptsGridF.actAutoPriceExecute(Sender: TObject);
begin
  inherited;
  ReciptBe4PostAutoPrice14(qryReciptsPersonID1.AsInteger, qryItems, qryinit,
    False, False, qryReciptsReciptNumber.AsString);
end;

procedure TReciptsGridF.ReciptBe4PostRecallType19;

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

function TReciptsGridF.ReciptBe4PostCtrlEntAct(IsOnDelelte
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
          GetExcelAct, qryEntityCodeExpirationDate, IsOnDelelte);
        if not Result then
          Abort;
        Next;
      end;
    finally
      EnableControls;
    end;
end;

procedure TReciptsGridF.qryItemsBeforePost(DataSet: TDataSet);

var
  cf: Real;
  DeficitValue, UnitSellPrice: Currency;
begin
  inherited;
  if (qryItemsIRow.IsNull) or (qryItemsIRow.AsString = EmptyStr) then
    qryItemsIRow.AsInteger := InsertRow.Row;

  StuffCodeUnic(qryRecipts, qryItems, qryinit, False);

  if opt.ControlCodeActive = 2 then
    if (qryItems.FieldByName('ControlCode').AsLargeInt = 0) then
    begin
      Warn(qryItems.FieldByName('ControlCode').DisplayLabel +
        ' نمی تواند صفر یا خالی باشد ');
      Abort;
    end;

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

    DeficitValue := Trunc(qryItems.FieldByName(FieldNamePrice).AsCurrency *
      qryItemsWaterCo.AsFloat / 100);
    if (qryItemsDeficitValue.AsFloat > DeficitValue) then
    begin
      Warn(Format('مبلغ تخفيف بيشتر از %m نمي تواند باشد', [DeficitValue]));
      Abort;
    end;
  end;

  qryItems.FieldByName('DeficitValue').OnChange := nil;
  qryItems.FieldByName('DeficitValue').AsCurrency :=
    Trunc(qryItems.FieldByName('DeficitValue').AsCurrency);
  qryItems.FieldByName('DeficitValue').OnChange := qryItemsDeficitValueChange;

  if qryinit.FieldByName('ConversionCoSerialFormula').AsInteger = 3 then
  begin
    if DataSet.FieldByName('TransFormID').AsInteger < 1 then
    begin
      BigMessage('فرمول ساخت وارد نشده است.', 1);
      Abort
    end;
  end;

  if (qryinit.FieldByName('AutoCorrelateCo').AsInteger and
    Integer(CHkTransFormIDOnStuffCode) <> 0) then
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(*)';
      SQL.Add('FROM TransForms INNER JOIN TransFormItems ON TransForms.TransFormID = TransFormItems.TransFormID');
      SQL.Add('WHERE (TransForms.StuffCode = :StuffCode )');
      SQL.Add('AND (TransForms.TransFormState = 0)');
      SQL.Add('AND (TransForms.TransFormID = :TransFormID)');
      Parameters.ParamByName('StuffCode').Value := qryItemsStuffCode.AsLargeInt;
      Parameters.ParamByName('TransFormID').Value :=
        qryItems.FieldByName('TransFormID').AsLargeInt;
      Active := True;
      if Fields[0].AsInteger = 0 then
      begin
        Warn('فرمول ساخت بدرستی وارد نشده است.');
        Abort
      end;
      Active := False;
    end;

  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').Value;

  if Not GetExcelAct then
  begin
    if (qryinit.FieldByName('ReciptIDEventKind').AsInteger = 1) and
      not(qryRecipts.State in [dsInsert]) then
      GetANewReciptItemID(DataSet);
  end
  else
    GetANewReciptItemID(DataSet);

  if DataSet.FindField('_TopicCodeName') <> nil then
    DataSet.FieldByName('_TopicCodeName').Required :=
      Trim(DataSet.FieldByName('acc_TopicCode').AsString) <> '0';

  DataSet.FieldByName('_StuffName').Required := False;
  if (DataSet.FieldByName('_StuffName').IsNull) and
    (qryinit.FieldByName('BarCodeKind').AsInteger < 7) then
    try
      // Warn2('نام كالا وارد نشده'+qryItemsStuffCode.AsString,3000);
      DataSet.Cancel;
      if not AutoInsertPostInsert then
      begin
        okPanel.SetFocus;
        if qryinit.FieldByName('RecallType').AsInteger = 0 then
          Warn2('نام كالا وارد نشده' + qryItemsStuffCode.AsString, 3000);
        if not GetExcelAct then
          DBGrid1.SetFocus;
      end;
      Abort;
    except
      on E: Exception do
      begin
        // Warn2(qryItemsStuffCode.AsString + 'نام كالا وارد نشده' +
        // E.Message, 3000);
        add2log2(E.Message + 'بررسی ارتباط انبار با کالا' +
          qryItemsStuffCode.AsString);
      end;

    end;

  if not((RecallTypeOption and Integer(chkExcelComparisonRecall)) <> 0) then
    if (DataSet.FieldByName(FieldNameEntity).AsFloat < 0) or
      (DataSet.FieldByName(FieldNameWeight).AsFloat < 0) or
      (DataSet.FieldByName(FieldNamePrice).AsCurrency < 0) then
      if not(formType in [2, 3]) then
      begin
        Warn2('عدد منفی است.‏');
        Abort;
      end;
  if (ShowNotEntityOnSearch and Integer(CHkControlEntity) <> 0) then
    if qryItemspreReciptItemID.AsInteger <> 0 then
      if RoundTo(FindRemain - DataSet.FieldByName(FieldNameEntity).AsFloat,
        -2) < 0 then
        raise Exception.Create
          ('مقدار فراخوانی شده نمی تواند بیشتر از مقدار اصلی باشد');

  if ShowNotEntityOnSearch and Integer(CHKOptimumPoint) <> 0 then
  begin
    qryStuff_Unit_TecInf.Locate('c_StuffCode',
      qryItemsStuffCode.AsLargeInt, []);
    if (qryItems.FieldByName(FieldNameEntity).AsFloat <
      qryStuff_Unit_TecInf.FieldByName('OptimumPoint').AsFloat) then
    begin
      Warn(Format
        ('مقدار کارتن کمتر از حداقل تنظیم شده (%s مقدار سفارش) در کد کالا می باشد',
        [qryStuff_Unit_TecInf.FieldByName('OptimumPoint').AsString]));
      Abort;
    end;

  end;

  TrimStringFields(qryItems);
  if not CheckRequiredFields(qryItems) then
    Abort;

  if not ValidateDatasetDatesRecipts(qryRecipts, qryinit) then
    Abort;

  if ((qryinit.FieldByName('NonZeroActive').AsInteger and
    Integer(CHkInventoryControlDuring)) = 0) then
    if not(qryinit.FieldByName('ControlEntityActive').AsInteger in [3, 5]) then
      if not ControlEntity(CurrentEntity, CurrentWeight, qryItems, qryRecipts,
        qryinit, Form_InOut, Person3Active, MyEntityDisplayType, GetExcelAct,
        qryEntityCodeExpirationDate) then
        Abort;

  if not ControlByuPrice(qryItems, qryRecipts, qryinit) then
    Abort;

  if qryinit.FieldByName('BarCodeKind').AsInteger <> 3 then
  begin
    // DataSet.FieldByName(FormInOut+'Entity').AsFloat:=roundto(DataSet.FieldByName(FormInOut+'Entity').AsFloat,-3);
    cf := RoundTo(DataSet.FieldByName(FieldNameWeight).AsFloat,
      opt.RoundWeight);
    if cf <> DataSet.FieldByName(FieldNameWeight).AsFloat then
      DataSet.FieldByName(FieldNameWeight).AsFloat := cf;
    // DataSet.FieldByName('Total'+FormInOut+'Price').AsFloat:=roundto(DataSet.FieldByName('Total'+FormInOut+'Price').AsFloat,0);

    cf := Trunc(DataSet.FieldByName('TotallSellPrice').AsFloat);
    if cf <> DataSet.FieldByName('TotallSellPrice').AsFloat then
      DataSet.FieldByName('TotallSellPrice').AsFloat := cf;

    DataSet.FieldByName('ControlCode').AsString :=
      ifthen(DataSet.FieldByName('ControlCode').IsNull, '0',
      DataSet.FieldByName('ControlCode').AsString);

    cf := RoundTo(DataSet.FieldByName('UnitSellPrice').AsFloat, RoundCount);
    if cf <> DataSet.FieldByName('UnitSellPrice').AsFloat then
      DataSet.FieldByName('UnitSellPrice').AsCurrency := cf;
  end;

  if not NonZeroControl then
    Abort;
  if Price_Read_Only(qryinit, qryItems) then
    Abort;
  SellPriceCheck(qryItems, qryinit);

  GetItemDateOFpreReciptItemID;

  if qryinit.FieldByName('PriceReadOnly').AsInteger = 3 then
  begin
    UnitSellPrice := GetUnitSellPrice(qryItems, qryRecipts, qryinit,
      FieldNameEntity, nil, []);

    if DataSet.FieldByName('UnitSellPrice').AsCurrency < UnitSellPrice then
    begin
      Warn('مبلغ بهای واحد به اعداد بزرگتر از فی پیش فرض قابل ویراش می باشد.' +
        #10#13 + 'مبلغ از ' + CurrToStrF(UnitSellPrice, ffCurrency, 0) +
        ' نمیتواند کوچکتر باشد');
      Abort;
    end;
  end;

  if not ChkCustomerState(qryItems) then
    Abort;

  if not ChkCTopicCodeState(qryItems) then
    Abort;


  // if qryItems.FindField('CommissionPrice') <> nil then
  // qryItems.FieldByName('CommissionPrice').AsFloat :=
  // RoundTo(qryItems.FieldByName('CommissionPrice').AsFloat, 0);

end;

procedure TReciptsGridF.qryItemsBeforeScroll(DataSet: TDataSet);

var
  i: Integer;
begin
  inherited;
  for i := 0 to StatusBar2.Panels.Count - 1 do
    StatusBar2.Panels[i].Text := EmptyStr;
end;

function TReciptsGridF.NonZeroControl;
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

procedure TReciptsGridF.N42Click(Sender: TObject);
begin
  inherited;
  AllEditUnitSellPrice(qryRecipts, qryItems, 'UnitSellPrice');
  AllEditUnitSellPrice(qryRecipts, qryItems, 'TaxCo');
end;

procedure TReciptsGridF.N44Click(Sender: TObject);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') -
    CalcSumFileds(qry_Deficits4Print, 'DeficitDec');
  PcPosF.Enter(CurrToStr(PayablePrice))

end;

procedure TReciptsGridF.N46Click(Sender: TObject);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItemsTotallSellPrice) +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');

  PayablePrice := ReMainPersonRecipt(PayablePrice, qryRecipts, qryinit,
    True, nil);
  PcPosF.Enter(CurrToStr(PayablePrice))
end;

procedure TReciptsGridF.mnuPrintReturnedClick(Sender: TObject);
begin
  inherited;
  if grdItemsReturnprn = nil then
  begin
    SplItemsReturnprn := TSplitter.Create(Self);
    SplItemsReturnprn.Align := alBottom;
    SplItemsReturnprn.Parent := Panel3;
    grdItemsReturnprn := TCedarDbgrid.Create(Self);
    srcItemsReturnprn := TDataSource.Create(Self);
    srcItemsReturnprn.DataSet := qryItemsReturnPrn;
    plnItemsReturnPrn.DataSource := srcItemsReturnprn;
  end;
  with qryItemsReturnPrn do
  begin
    Active := False;
    Parameters.ParamByName('irTAXID').Value := qryReciptsIRTAXID.AsString;
    Parameters.ParamByName('TAXID').Value := qryReciptsIRTAXID.AsString;
    Active := True;
  end;
end;

procedure TReciptsGridF.mnuViewItemInFolderClick(Sender: TObject);
var
  ReciptID, ServerID, YearID, i: Integer;
  b: Boolean;
  s: string;
begin
  inherited;
  if get_response(' آیا برای تغییر وضعیت به ارسال شده مطمن هستید    ?!' + #13#10
    + ' کاربر گرامی انتخاب این گزینه به این معنی است که فاکتور درامدی شما به سازمان اعلام شده'
    + #13#10 + 'و مسئولیت انتخاب واعلام آن بر عهده ی کاربر است..', clRed) <> mrYes
  then
    exit;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;
  s := 'UPDATE Recipts SET tax_status = 1 , LastUser = RIGHT(''' + User.Name +
    ' t_s=1 ''+LastUser,50) WHERE (TAXUID <> '''') AND (TAXID <> '''') and  (ReciptID = %d)AND(YearID = %d)AND(ServerID = %d)';
  s := Format(s, [ReciptID, YearID, ServerID]);
  DMf.adcBSell.Execute(s, i);
  qryRecipts.Requery();

end;

procedure TReciptsGridF.mnuWeightClick(Sender: TObject);
begin
  inherited;
  mnuEntity.Checked := not mnuWeight.Checked
end;

procedure TReciptsGridF.MnuTaxReturnFromSaleNextClick(Sender: TObject);
begin
  inherited;
  Moaadiyan(TaxReturn, True);
  ReciptsGridF.newPanel.Enabled := True;
end;

procedure TReciptsGridF.N4Click(Sender: TObject);

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
    SQL.Add('and ReciptID = ' + qryRecipts.FieldByName('ReciptID').AsString);
    BigMessage(IntToStr(ExecSQL) + ' كد تكراري  ' + Caption + '‌ حذف شد.', 2);
    Active := False;
    qryItems.Requery();
  end; // with
end;

procedure TReciptsGridF.qryReciptsAfterPost(DataSet: TDataSet);
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
  if qryItems.State in dsEditModes then
    qryItems.Post;

  try
    qryItems.UpdateBatch;
    qryReciptItemsDetails.Filtered := False;
    // qryReciptItemsDetails.UpdateBatch;
    DeleteFile(__AppData + UnsavedFileName);
    DeleteFile(__AppData + UnsavedFileName_M);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn2(E.Message, 3000);
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

  StuffCodeUnic(qryRecipts, qryItems, qryinit);

  UpdateStatusBar1;

  if (qryinit.FieldByName('AutoCorrelate').AsInteger = 1) and
    (qryinit.FieldByName('CorrelateReciptType').AsInteger > 0) then
    actCorrelateRecipt.Execute;

  if (qryinit.FieldByName('AutoCorrelateCo').AsInteger and
    Integer(CHkAutoCorrelateCo) <> 0) and
    (qryinit.FieldByName('ConversionCoSerial').AsInteger > 0) then
    actCorrelateConversionCo.Execute;

  if (qryinit.FieldByName('AutoStateChange').AsInteger = 0) and
    (qryRecipts.FieldByName('ReciptState').Value = 0) then
    AutoStateChange(qryRecipts, qryinit);
  /// ////////qryReciptsAfterPost
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
    // qryRecipts.BeforeCancel := nil;
    if (_ReciptsPaymentsF <> nil) and (_ReciptsPaymentsF.ModalResult = mrOk)
    then
      _ReciptsPaymentsF.qryReciptsPayments.UpdateBatch;
    _ReciptsPaymentsF.Free;
  end;
  //

  if (_ReciptPurchaseEffectF <> nil) and
    (_ReciptPurchaseEffectF.ModalResult = mrOk) then
  begin
    _ReciptPurchaseEffectF.qryReciptPurchaseEffect.UpdateBatch;
    _ReciptPurchaseEffectF.Free;
  end;

  if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
    actPrint1.Execute;

  if (qryinit.FieldByName('AutoInsertPostInsert').AsInteger = 0) then
  begin
    s := qryItems.Sort;
    try
      qryRecipts.DisableControls;
      qryAllRecipts.AfterScroll := nil;
      qryAllRecipts.BeforeScroll := nil;
      qryAllRecipts.Requery();
    finally
      qryAllRecipts.AfterScroll := qryAllReciptsAfterScroll;
      qryAllRecipts.BeforeScroll := qryAllReciptsBeforeScroll;
      qryAllRecipts.Locate('ReciptID;YearID;ServerID',
        VarArrayOf([ReciptID, YearID, ServerID]), []);
      qryRecipts.EnableControls;
    end;

    // qryRecipts.BeforeCancel := qryReciptsBeforeCancel;
    qryItems.Sort := s;
  end
  else if AutoInsertPostInsert and (not OpenFromList) then
    qryRecipts.Insert;

  if ReciptItemID <> 0 then
    qryItems.Locate('ReciptItemID', ReciptItemID, []);

  // qryRecipts.EnableControls;
  chkPerson3ControlWeightCustomer(qryinit, qryRecipts);

  if qryinit.FieldByName('AcceptRollbackEntity').AsInteger > 0 then
  begin
    if (DBGrid1.GetFooterValue(DBGrid1.Columns[0].Footer,
      DBGrid1.FieldColumns['DifferenceEntity']) <> '0') then
      Warn2('اختلاف مقدار در خواستی با مقدار تاییدی را بررسی کنید.', 1000);
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

  ControlCodeUnicOnType(qryItems, qryinit);

  if DataSet_Insert then
  begin
    DataSet_Insert := False;
    actSmsSend.Execute;
  end;
  if getresponseShow then
  begin
    // if get_response('تغييرات ذ�يره شوند؟')<>mrYes then abort;
    BigMessage('ثبت شد.', 1);
  end;

end;

function TReciptsGridF.OkDeleteMaster(ReciptID: String;
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

procedure TReciptsGridF.qryItemsBeforeDelete(DataSet: TDataSet);
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
      qryinit, Form_InOut, Person3Active, MyEntityDisplayType, GetExcelAct,
      qryEntityCodeExpirationDate, True) then
      Abort;
  end;

  if get_response(' آيا براي حذف كالا  ' + qryItemsStuffCode.AsString +
    DMf.s_Msm + '  مطمئن هستيد؟') <> mrYes then
    Abort
  else
    EditBeforDeleteRecallType16(qryinit, qryRecipts, qryItems, True);

end;

function TReciptsGridF.OkDeleteItem(ReciptItemID: String): Boolean;
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

procedure TReciptsGridF.qryItemsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  InsertRow.CanInsert := False;
end;

procedure TReciptsGridF.qryItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كالا حذف شد.', 1);
end;

procedure TReciptsGridF.qryReciptsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if getresponseShow then
    if qryItems.Active then
    BEGIN
      if get_response('تغييرات لغو شوند؟') <> mrYes then
        Abort;
      qryItems.Cancel;
      qryItems.Requery();
    END;
end;

procedure TReciptsGridF.qryItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  // StatusBar2.Panels[0].Text:='';  StatusBar2.Panels[1].Text:='';  StatusBar2.Panels[2].Text:='';
  // Timer1.Enabled:=False;
  // Image1.Visible:=False;
  // if qryRecipts.State=dsInsert then
  SaveArticlesToFile;
  SetRow;
  If PnlPerson2.Visible then
    ServiceValue(qryRecipts, qryItems);
  if WeightDisplay then
    StatusBar1.Panels[1].Text := LeftStr(opt.WeightCaption, 3) + '=' +
      FloatToStr(Calc_SumFileds('Weight'));
  if EntityDisplay then
    StatusBar1.Panels[2].Text := LeftStr(opt.EntityCaption, 5) + '=' +
      CurrToStr(Calc_SumFileds('Entity'));
  if PriceOn_StoreType then
    StatusBar1.Panels[0].Text := CurrToStrF(Abs(Calc_SumFileds('Price')),
      ffCurrency, 0) + ' ريال '
  else
    StatusBar1.Panels[0].Text := '';

end;

procedure TReciptsGridF.qryReciptsBeforeEdit(DataSet: TDataSet);
var
  FirstUserEdited: string;
  b: Boolean;
begin
  inherited;
  if not EditCorrelateReciptType(qryinit) then
    Abort;

  if ((not User.admin) and ((((CurAccess and Integer(akNoEditingMaster) <> 0)))))
  then
  begin
    b := qryRecipts.State in [dsInsert];
    EdtRNum.Enabled := b;
    EdtReciptDate.Enabled := b;
    ToggleDBEditsEnabledInPanel(pnlMaster, b);
  end;

  if ((Settings and Integer(CHKDidNotEditValidDraftForms)) <> 0) and
    (qryReciptsReciptState.AsInteger = 5) then
  begin
    Warn('فرم های پیش نویس قابل ویرایش نیستند');
    Abort;
  end;

  if (qryReciptstax_status.AsInteger in [1, 2]) then
  begin
    Warn('فرم های ارسال شده به مودیان قابل ویرایش نیستند');
    Abort;
  end;

  FirstUserEdited := qryinit.FieldByName('IfFirstUserIsNotEdited').AsString;
  if (FirstUserEdited <> EmptyStr) and
    (qryReciptsFirstUser.AsString = FirstUserEdited) then
  begin
    Warn('اطلاعات ثبت شده توسط ' + qryReciptsFirstUser.AsString +
      ' قابل ویرایش نیست');
    Abort;
  end;

  if not chkUsersStoreReciptTypes(qryReciptsStoreID.AsInteger, formType) then
    Abort;

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
    if ((qryReciptsOperatorID.AsInteger = User.id) or (User.PowerUser)) then
    begin
    end // if
    else
    begin
      Warn('ويرايش اين فرم در سطح دسترسي کاربر ثبت کننده آن مي‌باشد.');
      Abort;
    end;
  // else

  CHKPriorityReciptDate(qryRecipts, qryinit);

  if ((qryinit.FieldByName('OtherSettings').AsLargeInt and
    Integer(CHkOnlyFieldsEdited)) <> 0) then
  begin
    MyEditableContolor(Self, qryinit);
  end;

end;

function TReciptsGridF.OkEditMaster(ParentCoReciptID: string;
  ReciptTypeCo: TField): Boolean;

var
  i: Integer;
begin
  // قابل ويرايش نباشد
  // مبلغ قابل ويرايش باشد
  // بصورت كلي قابل ويرايش باشد
  // بصورت كلي قابل ويرايش و حذف باشد(پس از هر ويرايش فرم مرتبط ثبت شده حذف كردد)
  // تاریخ قابل ويرايش باشد
  if qryinit.FieldByName('Correlate4EditActive').AsInteger in [0, 1, 4, 5, 7]
  then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT Recipts.ReciptNumber, Recipts.ReciptDate,  ';
      SQL.Add('ReciptTypes.ReciptCaption FROM Recipts INNER JOIN ReciptTypes');
      SQL.Add('ON Recipts.ReciptType = ReciptTypes.ReciptType ');
      if ReciptTypeCo.FieldName = 'CorrelateReciptType' then
      begin
        SQL.Add(Format('WHERE (Recipts.%s = %d)', [ParentCoReciptID,
          qryRecipts.FieldByName('ReciptID').AsInteger]));
        // SQL.Add(Format('AND (ReciptTypes.%s = %d)', [ReciptTypeCo.FieldName,
        // formType]));
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
          1, 4, 5, 7:
            begin
              With qryRecipts do
              begin
                for i := 0 to FieldCount - 1 do
                  Fields[i].ReadOnly := True;
                FieldByName('ModifyDate').ReadOnly := False;
                FieldByName('ReciptValue').ReadOnly := False;
                FieldByName('AidDate').ReadOnly := False;
                FieldByName('DefaultDate').ReadOnly := False;
                FieldByName('ReciptEndDate').ReadOnly := False;
                FieldByName('ReciptStartDate').ReadOnly := False;

                FieldByName('ExpireDate').ReadOnly := False;
                FieldByName('DocDate').ReadOnly := False;

                if qryinit.FieldByName('Correlate4EditActive').AsInteger = 4
                then
                  FieldByName('ReciptDate').ReadOnly := False;

                if qryinit.FieldByName('Correlate4EditActive').AsInteger = 5
                then
                  FieldByName('AidNumber').ReadOnly := False;

                if qryinit.FieldByName('Correlate4EditActive').AsInteger = 7
                then
                  FieldByName('PersonID3').ReadOnly := False;

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
                  FieldByName('DeficitValue4').ReadOnly := False;
                  FieldByName('DeficitValue3').ReadOnly := False;
                  FieldByName('TotalStandardRate').ReadOnly := False;
                  FieldByName('StandardRate').ReadOnly := False;
                  FieldByName('TotallSellPrice').ReadOnly := False;
                  if qryinit.FieldByName('CommissionActive').AsInteger > 0 then
                    FieldByName('UnitCommission').ReadOnly := False;
                  if qryinit.FieldByName('VATActive').AsInteger >= 1 then
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

procedure TReciptsGridF.qryItemsBeforeEdit(DataSet: TDataSet);
var
  a: Largeint;
begin
  inherited;
  if not(qryRecipts.State in dsEditModes) then
    Abort;

  if (qryinit.FieldByName('RecallEditKind').AsInteger in [7]) and
    (qryItemsParentForm.AsString <> EmptyStr) then
  begin
    Warn('از اطلاعات این ردیف در فراخوانی استفاده شده است و قابل ویرایش نمی باشد.');
    Abort;
  end;

  a := qryinit.FieldByName('UsePerson1OnRecall').AsLargeInt;

  if ((a and Integer(CHkNotEditValueTfUsedc)) <> 0) then
  begin
    qryItems.FieldByName(FieldNameEntity).ReadOnly :=
      qryReciptsChildReciptNumber.AsInteger <> 0;
    qryItems.FieldByName(FieldNameWeight).ReadOnly :=
      qryItems.FieldByName(FieldNameEntity).ReadOnly;
    if qryItems.FieldByName(FieldNameEntity).ReadOnly then
      Warn2('به علت استفاده این فرم در فراخوانی یک به یک مقدار قابل ویرایش نیست');
  end;
  if ((a and Integer(CHkNotEditValueTfUsedP)) <> 0) then
  begin
    qryItems.FieldByName(FieldNameEntity).ReadOnly :=
      qryReciptsParentReciptNumber.AsInteger <> 0;
    qryItems.FieldByName(FieldNameWeight).ReadOnly :=
      qryItems.FieldByName(FieldNameEntity).ReadOnly;
    if qryItems.FieldByName(FieldNameEntity).ReadOnly then
      Warn2('به علت استفاده این فرم در فراخوانی یک به یک مقدار قابل ویرایش نیست');
  end;

end;

procedure TReciptsGridF.PawsFieldsActive;

var
  b: Boolean;
begin
  b := qryinit.FieldByName('PawsFieldsActive').AsInteger in [2, 3, 4];
  b := b and (qryRecipts_StoreKind.AsInteger in [1, 3, 10]); //
  setColumns2(DBGrid1, b, 'Article');

  b := qryinit.FieldByName('PawsFieldsActive').AsInteger in [2, 3];
  b := b and (qryRecipts_StoreKind.AsInteger in [1, 3]);
  setColumns2(DBGrid1, b, 'Wage');
  setColumns2(DBGrid1, b, 'Scoria');
  if b and (qryRecipts_StoreKind.AsInteger = 1) then
    setColumns2(DBGrid1, False, 'TotallSellPrice');
end;

procedure TReciptsGridF.qryReciptsAfterScroll(DataSet: TDataSet);

var
  b: Boolean;
  i: Integer;
  col: TColumnEh;
  s: string;
begin
  inherited;
  try
    lblCRN.Visible := qryReciptsInvoiceTemplate.AsInteger = 4;
    edtCRN.Visible := lblCRN.Visible;
    DBGrid1.SelectedRows.Clear;
    ppDBPipeline2.ClearBookmarkList;

    EdtRNum.Hint := qryReciptsReciptID.AsString;
    // qryRecipts.DisableControls;
    // qryItems.DisableControls;
    ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, lblWarn);

    PawsFieldsActive;

    PriceOn_StoreType := PriceOnStoreType(qryReciptsStoreID.AsInteger, DBGrid1,
      qryItems, qryinit.FieldByName('StoreKindProductModel').AsString) or
      (Settings and Integer(CHKShowAccCode) <> 0);
    b := PriceOn_StoreType and
      (qryinit.FieldByName('AccCodingShow').AsInteger > 0);

    b := b and ((((Settings and Integer(CHKShowAccCode) <> 0)) or
      User.PowerUser));

    GrpBoxAccount.Visible := b;
    setColumns2(DBGrid1, b AND (qryinit.FieldByName('TopicCodeActive')
      .AsInteger = 1), 'acc_TopicCode');
    setColumns2(DBGrid1, b AND (qryinit.FieldByName('DetailCodeActive')
      .AsInteger = 1), 'acc_DetailCode');
    setColumns2(DBGrid1, b AND (qryinit.FieldByName('CTopicCode1Active')
      .AsInteger = 1), 'acc_CTopicCode');
    setColumns2(DBGrid1, b and optA.ActiveCtopic2 AND
      (qryinit.FieldByName('CTopicCode2Active').AsInteger = 1),
      'acc_CTopicCode2');

    setColumns2(DBGrid1, b and optA.ActiveCtopic3 AND
      (qryinit.FieldByName('CTopicCode3Active').AsInteger = 1),
      'acc_CTopicCode3');

    with qryItems do
    begin
      Active := False;
      Parameters.ParamByName('ReciptNumber').Value :=
        qryReciptsReciptNumber.AsInteger;
      Parameters.ParamByName('StoreID').Value := qryReciptsStoreID.AsInteger;
      Parameters.ParamByName('PersonID1').Value :=
        qryReciptsPersonID1.AsInteger;
      Parameters.ParamByName('ReciptDate').Value :=
        qryReciptsReciptDate.AsString.Replace('/', '', [rfReplaceAll]);
    end;
    SetQryParam(qryItems);

    SetQryParam(qryReciptItemsDetails);
    // with qryReciptItemsDetails do
    // begin
    // Active := False;
    // Parameters.ParamByName('ReciptItemID').Value :=
    // qryItems.FieldByName('ReciptItemID').AsInteger;
    // Parameters.ParamByName('ReciptID').Value := qryItems.FieldByName('ReciptID')
    // .AsInteger;
    // Parameters.ParamByName('ServerID').Value := qryItems.FieldByName('ServerID')
    // .AsInteger;
    // Parameters.ParamByName('YearID').Value := qryItems.FieldByName('YearID')
    // .AsInteger;
    // Active := True;
    // end;

    if qryinit.FieldByName('ConversionCoSerialFormula').AsInteger > 1 then
      SetQryParam(qryTransFormItems);

    qryCustActive(qryCust1, qryRecipts.FieldByName('PersonID1').AsInteger);
    qryCustActive(qryCust2, qryRecipts.FieldByName('PersonID2').AsInteger);
    qryCustActive(qryCust3, qryRecipts.FieldByName('PersonID3').AsInteger);
    qryCustActive(qryCust4, qryRecipts.FieldByName('PersonID4').AsInteger);
    qryCustActive(qryCust5, qryRecipts.FieldByName('PersonID5').AsInteger);

    qryCustActive(qryCustManag1, qryRecipts.FieldByName('PersonID1').AsInteger);
    qryCustActive(qryCustManag2, qryRecipts.FieldByName('PersonID2').AsInteger);
    qryCustActive(qryCustManag3, qryRecipts.FieldByName('PersonID3').AsInteger);
    qryCustActive(qryCustManag4, qryRecipts.FieldByName('PersonID4').AsInteger);
    qryCustActive(qryCustManag5, qryRecipts.FieldByName('PersonID5').AsInteger);

    if pnlTozinID.Visible then
      qryTozinActive(qryTozin1, qryReciptsTozinID.AsInteger);

    qryGroupDeficitIDActive(qryGroupDeficitID, qryRecipts);

    // SumGrid1.Active := False;
    // SumGrid1.Active := True;
    if ppReport1.Printing then
    begin
      SetQryParam(qryReciptOnFormsRange);
      SetQryParam(qryFn_EffectCross);
      with qryEntityImages do
      begin
        Active := False;
        Parameters.ParamByName('EntityID').Value := ADDKeyID(qryRecipts) +
          qryReciptsReciptID.AsString;
        Active := True;
      end;

    end;
    SetQryParam(qry_Deficits4PrintID10);
    SetQryParam(qry_Deficits4Print);
    SetQryParam(qry_Deficits);
    SetQryParam(qryReciptsPayments);
    SetQryParam(qryReciptPurchaseEffect);
    SetQryParam(qryTrades);
    if qryDesignForm <> nil then
      SetQryParam(qryDesignForm);

    if qryinit.FieldByName('UseOtherActive').AsInteger = 1 then
      with qryUseOthers4Print do
      begin
        Active := False;
        Parameters.ParamByName('UseOtherID').Value := TADOQuery(DataSet)
          .FieldByName('UseOtherID').AsString;
        Active := True;
      end; // with
    if (DataSet.State = dsInsert) then
      CheckUnsaved;
    Timer1.Enabled := qryRecipts.FieldByName('ReciptState').AsInteger = 3;
    if Timer1.Enabled then
      WriteText(lblStateChang.Caption, 1, 60, False);
    lblStateChang.Visible := Timer1.Enabled;

    UpdateStatusBar1;

    LblRecNo.Hint := Format('' + Caption + ' %d از %d',
      [DataSet.RecNo, DataSet.RecordCount]);

    actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >=
      1) and ReciptStateDeficitsVisible(qryRecipts) and
      (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1);

    if (qryinit.FieldByName('Person2Active').AsInteger = 1) then
    begin
      dbchkPersonID2Bed.Visible := (qryRecipts.FieldByName('_SellsDefaultState')
        .AsInteger > 1) OR (SellsDefaultState);
    end;

    if qryinit.FieldByName('ChekingTaxPrint').AsInteger = 1 then
      Warn2('کنترل چاپ جهت ارزش افزوده اعمال شود.‏');
    // if (qryItems.FindField('TaxValue') <> nil) then
    // actPrint1.Visible := ppDBPipelineSumGrid1.DataSource.DataSet.FieldByName
    // ('TaxValue').AsInteger = 0;

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

  b := (CurAccess and Integer(akChangeState) <> 0);

  actChangeState.Enabled := qryinit.FieldByName('AutoStateChange').AsInteger
    in [3, 4];
  case qryReciptsReciptState.AsInteger of
    4, 5:
      begin
        actChangeState.Caption := 'ثبت موقت';
        actChangeState.Visible := True and b;
      end;
    0:
      begin
        actChangeState.Caption := 'قطعي کردن';
        actChangeState.Visible := True and b;

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

  if grdTax <> nil then
  begin
    grdTax.DataSource := srcBarcode;
    for i := 0 to grdTax.Columns.Count - 1 do
      grdTax.Columns[i].Visible := False;

    for i := 0 to DBGrid1.Columns.Count - 1 do
      if cliBarcode.FindField(DBGrid1.Columns[i].FieldName) <> nil then
      begin
        col := grdTax.FieldColumns[DBGrid1.Columns[i].FieldName];
        if col <> nil then
        begin
          col.Index := i;
          col.Width := DBGrid1.Columns[i].Width;
          col.Visible := DBGrid1.Columns[i].Visible;
          col.Color := DBGrid1.Columns[i].Color;
          if col.Field is TBCDField then
            TBCDField(col.Field).Currency := True;
        end;
      end;
  end;

  mnuCalcGiftItems.Checked := (qryReciptsCalcGiftItems.AsBoolean or
    qryReciptsCalcGiftItems.IsNull);

  qryEntityCodeExpirationDate.Active := False;

  if not qryinit.FieldByName('CofferType').AsString.Trim.IsEmpty then
  begin
    with qrySP_CalcTopCheck1 do
    begin
      Active := False;
      Parameters.ParamByName('list').Value := 1;
      Parameters.ParamByName('TopCalc').Value := 0;
      Parameters.ParamByName('ReciptID').Value :=
        qryRecipts.FieldByName('ReciptID').AsLargeInt;
      Parameters.ParamByName('ServerID').Value :=
        qryRecipts.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
        .AsInteger;
      Active := True;
    end;
    with qrySP_CalcTopCheck2 do
    begin
      Active := False;
      Parameters.ParamByName('list').Value := 0;
      Parameters.ParamByName('TopCalc').Value := 1;
      Parameters.ParamByName('ReciptID').Value :=
        qryRecipts.FieldByName('ReciptID').AsLargeInt;
      Parameters.ParamByName('ServerID').Value :=
        qryRecipts.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
        .AsInteger;
      Active := True;
    end;

  end;
  lblLoanPayment.Visible := qryReciptsLoanPayment.AsCurrency <> 0

end;

procedure TReciptsGridF.SetQryParam(qry: TADOQuery);
begin
  with qry do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.FieldByName('ReciptID').AsLargeInt;
    Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryRecipts.FieldByName('ServerID').AsInteger;
    Active := True;
  end;

end;

procedure TReciptsGridF.actChangerExecute(Sender: TObject);
begin
  inherited;
  ChangerF.ShowChanger(qryItems);
end;

procedure TReciptsGridF.actChangeStateExecute(Sender: TObject);

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
  if (qryinit.FieldByName('ControlEntityActive').AsInteger = 3) and
    (qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8]) then
    if not ReciptBe4PostCtrlEntAct then
      Abort;

  with DMf.qryTmpTmp do
  begin
    Active := False;
    case qryReciptsReciptState.AsInteger of
      4, 5:
        begin
          SQL.Text := 'UPDATE Recipts SET ReciptState = 0 ';
          // qryRecipts.edit;
          // // ReciptBe4PostCtrlEntAct;
          // qryReciptsReciptState.AsInteger := 0;
          // qryRecipts.Post;
          // exit;
        end;
      0:
        SQL.Text := 'UPDATE Recipts SET ReciptState = 1 ,LastUser = ''' +
          User.Name + ' قطعی' + ''' ';
    else
      SQL.Text := 'UPDATE Recipts SET ReciptState = 2 ,LastUser = ''' +
        User.Name + ' دائمی' + ''' ';
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

procedure TReciptsGridF.actChangStuffExecute(Sender: TObject);
begin
  inherited;
  With qryItems do
    try
      // DisableControls;
      RequestedChangeON := False;
      qryItemsRequestedEntity.OnChange := nil;
      qryItemsRequestedWeight.OnChange := nil;
      First;
      while not Eof do
      begin
        if qryItemsProductCode.AsInteger = 0 then
        begin
          edit;
          qryItemsRequestedEntity.AsFloat :=
            qryItems.FieldByName(FieldNameEntity).AsFloat;
          qryItemsRequestedWeight.AsFloat :=
            qryItems.FieldByName(FieldNameWeight).AsFloat;
          qryItemsStuffCodeChange(qryItemsStuffCode);
          Post;
        end;
        Next;
      end;
    finally
      EnableControls;
      RequestedChangeON := True;
      qryItemsRequestedEntity.OnChange := qryItemsRequestedEntityChange;
      qryItemsRequestedWeight.OnChange := qryItemsRequestedWeightChange;
    end;
end;

procedure TReciptsGridF.actSearchExecute(Sender: TObject);

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
      if not(qryItems.State in dsEditModes) then
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

procedure TReciptsGridF.CmbSecondTypeDblClick(Sender: TObject);
begin
  inherited;
  if (qryRecipts.State in dsEditModes) then
    qryRecipts.Post;
  SaveConfig(APPID, APPBank.Name + '_ReciptsGridF_SecondType' +
    IntToStr(formType), qryReciptsSecondType.AsString);
  Warn2('پیش فرض نوع اطلاعات تنظیم شد', 1000);
end;

procedure TReciptsGridF.lblSellsEmporiumDblClick(Sender: TObject);
begin
  inherited;
  if (qryRecipts.State in dsEditModes) then
    qryRecipts.Post;
  SaveConfig(APPID, APPBank.Name + '_ReciptsGridF_SellsEmporium' +
    IntToStr(formType), qryReciptsSellsEmporium.AsString);
  Warn2('پیش فرض مرکز فروش تنظیم شد', 1000);

end;

procedure TReciptsGridF.CmbSecondTypeEnter(Sender: TObject);
begin
  inherited;
  (Sender as TDBComboBox).DroppedDown := True;
end;

procedure TReciptsGridF.dbedtMasirIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    if CtrlDown then
    begin
      actAdd2CustomersMasir.Execute;
    end
    else
      btnMasirID.Click;
end;

procedure TReciptsGridF.qryItemsAfterScroll(DataSet: TDataSet);
var
  BarcodeImage: TBitmap;

begin
  inherited;
  if (opt.showBig) and (showBigOnField(DBGrid1)) then
    showBigNum(DBGrid1.Columns[DBGrid1.SelectedIndex].Field.AsFloat, aBigPanel,
      horoofPanel);
  // IF qryinit.FieldByName('PersonID1OnDetailActive').AsInteger
  // in [0, 1, 2, 3] THEN
  // qryCustActive(qryCustomer2Detail, qryItems.FieldByName('PersonID1')
  // .AsInteger);
  qryCustActive(qryCustD, qryItems.FieldByName('PersonID1').AsInteger);
  qryCustActive(qryCustManagD, qryItems.FieldByName('PersonID1').AsInteger);

  if (Settings and Integer(chkReciptItemsDetails4Print) <> 0) then
    with qryReciptItemsDetails4Print do
    begin
      Active := False;
      Parameters.ParamByName('ReciptItemID').Value :=
        qryItems.FieldByName('ReciptItemID').AsInteger;
      Parameters.ParamByName('ReciptID').Value :=
        qryItems.FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryItems.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryItems.FieldByName('YearID')
        .AsInteger;
      Active := True;
    end;

  if qryinit.FieldByName('StereotypyActive').AsInteger = 1 then
    With qryStereotypyP do
    begin
      Active := False;
      Parameters.ParamByName('StereotypyID').Value :=
        qryItems.FieldByName('StereotypyID').AsInteger;
      Active := True;
    end;

  With qryStuffCodePrint do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      qryItems.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end;

  if GrpBoxAccount.Visible then
  begin
    if dbtxt_TopicCodeName <> nil then
      dbtxt_TopicCodeName.Hint := qryItems_TopicCodeName.AsString;
    if dbtxt_DetailCode <> nil then
      dbtxt_DetailCode.Hint := qryItems_DetailCode.AsString;
    if dbtxt_CTopicCode <> nil then
      dbtxt_CTopicCode.Hint := qryItems_CTopicCode.AsString;
    if dbtxt_CTopicCode2 <> nil then
      dbtxt_CTopicCode2.Hint := qryItems_CTopicCode2.AsString;
    if dbtxt_CTopicCode3 <> nil then
      dbtxt_CTopicCode3.Hint := qryItems_CTopicCode3.AsString;

  end;

  BarcodeImage := GenerateBarcodeImage(qryItemsSyntheticCode.AsString);
  // از تابع قبلی
  try
    imgBarcode.Picture.Bitmap := BarcodeImage; // نمایش در TImage
  finally
    BarcodeImage.Free;
  end;

  With qryStuffCodingImage do
  begin
    Active := False;
    Parameters.ParamByName('ReciptItemID').Value :=
      qryItems.FieldByName('ReciptItemID').AsInteger;
    Parameters.ParamByName('ReciptID').Value := qryItems.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := qryItems.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := qryItems.FieldByName('YearID')
      .AsInteger;
    Active := True;
  end;

end;

procedure TReciptsGridF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsGridF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TReciptsGridF.qryItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not chkUsersStoreReciptTypes(qryReciptsStoreID.AsInteger, formType) then
    Abort;
  RecallType19Check;
  If not ADDItemChecked(qryRecipts) then
    Abort;
  If LimitRecord(qryItems, qryinit, True) then
    Abort;
  if not(qryRecipts.State in dsEditModes) then
    Abort;
  AidNumber := DataSet.FieldByName('AidNumber').AsString;

  AidDate_ := DataSet.FieldByName('AidDate').AsString;

  ProductCodel_ := qryItemsProductCode.AsInteger;
  InsertRow.Row := DataSet.FieldByName('irow').AsInteger;
  InsertRow.BMark := DataSet.GetBookmark;

end;

procedure TReciptsGridF.qryItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.SelectedRows.Clear;
  ppDBPipeline2.ClearBookmarkList;

end;

procedure TReciptsGridF.qryItemsUnitCommissionChange(Sender: TField);
begin
  inherited;
  Sender.OnChange := nil;
  EndOfPrice(Sender.FieldName);
  Sender.OnChange := qryItemsUnitCommissionChange;
end;

procedure TReciptsGridF.qryItemsUnitCommissionCoChange(Sender: TField);
begin
  inherited;
  Sender.OnChange := nil;
  EndOfPrice(Sender.FieldName);
  Sender.OnChange := qryItemsUnitCommissionCoChange;
end;

procedure TReciptsGridF.qryItemsTotallCommissionChange(Sender: TField);
begin
  inherited;
  Sender.OnChange := nil;
  EndOfPrice(Sender.FieldName);
  Sender.OnChange := qryItemsTotallCommissionChange;
end;

procedure TReciptsGridF.qryItemsUnitSellPriceChange(Sender: TField);
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

procedure TReciptsGridF.ChangeTotalInputPrice;
var
  Total: Real48;
  SellPrice, Weight, Entity: Extended;
begin
  inherited;
  if not(qryRecipts.State in dsEditModes) or not(qryItems.State in dsEditModes)
  then
    exit;

  if (UnitPriceReadOnly in [0, 2]) then
  begin
    Entity := qryItems.FieldByName(FieldNameEntity).AsExtended;
    // SellPrice := qryItemsUnitSellPrice.AsFloat;
    Total := qryItems.FieldByName(FieldNamePrice).AsExtended;
    Weight := qryItems.FieldByName(FieldNameWeight).AsExtended;
    Weight := RoundTo(Weight, opt.RoundEntity);
    if Entity = 0 then
      Entity := 1;
    if Weight = 0 then
      Weight := 1;
    LimitFi := GetLimitFi(qryItems);
    SellPrice := 0;

    if CalculatedEntityOrWeight > 0 then
      MyEntityDisplayType := qryItemsDiagnosisCalcTotalPrice.AsInteger;

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
    if (qryinit.FieldByName('ArzActive').AsInteger in [3, 6]) then
      if (qryRecipts.FieldByName('RialsEqual').AsFloat *
        qryItems.FieldByName('ArzRate').AsFloat) <> 0 then
      begin
        SellPrice := qryRecipts.FieldByName('RialsEqual').AsFloat *
          qryItems.FieldByName('ArzRate').AsFloat;
        SellPrice := RoundTo(SellPrice, opt.RoundEntity);
      end;
    // فی =  بهای واحد ارز (Detail) * ریال/ارز (Master)

    if ((SellPrice <> qryItemsUnitSellPrice.AsFloat) and (SellPrice <> 0)) then
      qryItemsUnitSellPrice.AsFloat := SellPrice;
  end; // if
end;

procedure TReciptsGridF.ChangeUnitSellPrice;
var
  Total: Real48;
  SellPrice, ArzAmount, Weight, Entity: Extended;
begin
  if not(qryRecipts.State in dsEditModes) or not(qryItems.State in dsEditModes)
  then
    exit;
  SellPrice := qryItemsUnitSellPrice.AsFloat;
  Entity := qryItems.FieldByName(FieldNameEntity).AsFloat;
  if (qryinit.FieldByName('ArzActive').AsInteger in [1]) and
    (qryinit.FieldByName('ArzTypeID').AsInteger <> 0) then
  begin
    qryItems.FieldByName('ArzAmount').AsFloat :=
      RoundTo(Entity * SellPrice, RoundCount);
    qryItems.FieldByName(FieldNamePrice).AsCurrency :=
      Trunc(qryItems.FieldByName('ArzAmount').AsFloat * qryRecipts.FieldByName
      ('RialsEqual').AsFloat);
    exit;
  end;

  // مقدار * بهای واحد ارز = بهای کل صادره
  // TotalOutputPrice = ArzRate  *  OutputEntity
  if (qryinit.FieldByName('ArzActive').AsInteger in [5]) and
    (qryinit.FieldByName('ArzTypeID').AsInteger <> 0) then
  begin
    // qryItems.FieldByName('ArzAmount').AsFloat :=      RoundTo(Entity * SellPrice, RoundCount);
    qryItems.FieldByName(FieldNamePrice).AsCurrency :=
      Trunc(qryItems.FieldByName('ArzRate').AsFloat * Entity);
    exit;
  end;

  Weight := qryItems.FieldByName(FieldNameWeight).AsFloat;
  Weight := RoundTo(Weight, opt.RoundEntity);
  Total := 0;

  if CalculatedEntityOrWeight > 0 then
    MyEntityDisplayType := qryItemsDiagnosisCalcTotalPrice.AsInteger;

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
    Total := Trunc(Total);
    if ((Total <> qryItems.FieldByName(FieldNamePrice).AsExtended) { and
        (Total <> 0) } ) then
      qryItems.FieldByName(FieldNamePrice).AsExtended := Total;
  end; // if

  if (qryinit.FieldByName('ArzActive').AsInteger in [2]) and
    (qryItems.FieldByName('ArzRate').AsInteger <> 0) then
  begin
    ArzAmount := Total / qryItems.FieldByName('ArzRate').AsFloat;
    ArzAmount := RoundTo(ArzAmount, opt.RoundEntity);
    qryItems.FieldByName('ArzAmount').AsFloat := ArzAmount;
  end;

  // مقدار ارز (Detail) =  تعداد *  بهای واحد ارز (Detail)
  if (qryinit.FieldByName('ArzActive').AsInteger in [3]) then
  begin
    // ArzAmount := Entity * qryItems.FieldByName('ArzRate').AsFloat;
    case MyEntityDisplayType of
      0:
        ArzAmount := Entity * qryItems.FieldByName('ArzRate').AsFloat;
      1:
        ArzAmount := Weight * qryItems.FieldByName('ArzRate').AsFloat;
      2:
        if SellPrice >= LimitFi then
          ArzAmount := Weight * qryItems.FieldByName('ArzRate').AsFloat
        else
          ArzAmount := Entity * qryItems.FieldByName('ArzRate').AsFloat;
      3:
        if SellPrice >= LimitFi then
          ArzAmount := Entity * qryItems.FieldByName('ArzRate').AsFloat
        else
          ArzAmount := Weight * qryItems.FieldByName('ArzRate').AsFloat;
    else
      ArzAmount := 0;
    end;

    if ((Settings and Integer(ChkTonnage)) <> 0) then
      ArzAmount := ArzAmount / 1000;
    ArzAmount := RoundTo(ArzAmount, opt.RoundEntity);
    qryItems.FieldByName('ArzAmount').AsFloat := ArzAmount;
  end;

end;

procedure TReciptsGridF.WaterCoSetZero;
begin
  if actAutoPrice.Visible then
    qryItems.FieldByName('WaterCo').AsFloat := 0;
end;

procedure TReciptsGridF.qryItemsInBoxChange(Sender: TField);
begin
  if FormOutput then
    qryItemsOutputEntityChange(qryItemsOutputEntity)
  else
    qryItemsInputEntityChange(qryItemsInputEntity)
end;

procedure TReciptsGridF.qryItemsUnitCode2Change(Sender: TField);
var
  r: Real;
begin
  if UnitCoAct then
  begin
    if Sender.FieldName = FieldNameEntity then
    begin
      r := qryItems.FieldByName(FieldNameEntity).AsFloat *
        qryItems.FieldByName('_UnitCo').AsFloat;
      SetOnChangeOff(qryItems.FieldByName(FieldNameWeight), r); // 'Auxiliary'
    end
    else
    begin // Auxiliary
      if (qryItems.FieldByName('_UnitCo').AsFloat <> 0) then
      begin
        r := qryItems.FieldByName(FieldNameWeight).AsFloat /
          qryItems.FieldByName('_UnitCo').AsFloat;
        SetOnChangeOff(qryItems.FieldByName(FieldNameEntity), r);
      end;
    end;
  end;
end;

procedure TReciptsGridF.qryItemsInputEntityChange(Sender: TField);
var
  r: Real;
begin
  inherited; // 1    InputWeight
  try
    OnChangeOff;
    WaterCoSetZero;
    MaterialUsageFactor;
    if (not qryItemsInputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [0, 2]) then
    begin
      r := RoundTo((qryItemsInputEntity.AsFloat) * (qryItems.FieldByName(Carton)
        .AsFloat), RoundCount);
      if qryItemsInputWeight.AsFloat <> r then
        qryItemsInputWeight.AsFloat := r
    end;

    if (not qryItemsInputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [3, 6]) then
    /// add [4]
    begin
      r := RoundTo((qryItemsInputEntity.AsFloat) / (qryItems.FieldByName(Carton)
        .AsFloat), RoundCount);
      if qryItemsInputWeight.AsFloat <> r then
        qryItemsInputWeight.AsFloat := r
    end;

    // 7- تعداد در کارتن * مقدار = وزن   (وزن / تعداد در کارتن =  مقدار)
    if (not qryItemsInputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [7]) then
    begin
      r := RoundTo((qryItemsInputEntity.AsFloat) * (qryItems.FieldByName(Carton)
        .AsFloat), RoundCount);
      if qryItemsInputWeight.AsFloat <> r then
        qryItemsInputWeight.AsFloat := r
    end;

    qryItemsUnitCode2Change(Sender);

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

procedure TReciptsGridF.qryItemsOutputEntityChange(Sender: TField);

var
  r: Real;
begin
  inherited; // 2  OutputWeight
  try
    OnChangeOff;
    WaterCoSetZero;
    MaterialUsageFactor;
    if (not qryItemsOutputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [0, 2]) then
    begin
      r := RoundTo((qryItemsOutputEntity.AsFloat) *
        (qryItems.FieldByName(Carton).AsFloat), RoundCount);
      if qryItemsOutputWeight.AsFloat <> r then
        qryItemsOutputWeight.AsFloat := r;
    end;

    if (not qryItemsOutputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [3, 6]) then
    /// add [4]
    begin
      r := RoundTo((qryItemsOutputEntity.AsFloat) /
        (qryItems.FieldByName(Carton).AsFloat), RoundCount);
      if qryItemsOutputWeight.AsFloat <> r then
        qryItemsOutputWeight.AsFloat := r;
    end;

    // 7- تعداد در کارتن * مقدار = وزن   (وزن / تعداد در کارتن =  مقدار)
    if (not qryItemsOutputEntity.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [7]) then
    /// add [4]
    begin
      r := RoundTo((qryItemsOutputEntity.AsFloat) *
        (qryItems.FieldByName(Carton).AsFloat), RoundCount);
      if qryItemsOutputWeight.AsFloat <> r then
        qryItemsOutputWeight.AsFloat := r;
    end;

    qryItemsUnitCode2Change(Sender);
    if UnitPriceReadOnly in [0, 2] then
      ChangeTotalInputPrice;

    if UnitPriceReadOnly in [1, 2] then
      ChangeUnitSellPrice;

    { 0- ندارد
      1- بر حسب كالا(شناسايي ويژه)‏
      2- برحسب كالا و مدل كالا
      3- کد کالا و تاریخ انقضاء
      4- کنترل موجودی افزاینده
      5- کنترل باقیمانده فراخوانی
    }
    if getresponseShow then
      if not(qryinit.FieldByName('ControlEntityActive').AsInteger in [3, 5])
      then
        ControlEntity(CurrentEntity, CurrentWeight, qryItems, qryRecipts,
          qryinit, Form_InOut, Person3Active, MyEntityDisplayType, GetExcelAct,
          qryEntityCodeExpirationDate);

    StandardRateActiveReciptsGrid(qryinit, qryItems);
    qryItemsLength_WidthstuffdiameterChange(nil);

  finally
    OnChangeOn;

  end;
end;

procedure TReciptsGridF.MaterialUsageFactor;
var
  stuffdiameter: Extended;
begin
  if ((qryinit.FieldByName('OtherSettings').AsLargeInt and
    Integer(CHkMaterialUsageCo)) <> 0) then
  begin
    stuffdiameter :=
    // RoundTo(
      (qryItemsInputEntity.AsFloat + qryItemsOutputEntity.AsFloat) *
      (qryItems_MaterialUsageCo.AsExtended) // , RoundCount)
      ;
    if qryItemsStuffDiameter.AsExtended <> stuffdiameter then
      qryItemsStuffDiameter.AsExtended := stuffdiameter;

  end;

end;

procedure TReciptsGridF.qryItemsInputWeightChange(Sender: TField);

var
  r: Real;
begin
  inherited; // 3   InputEntity
  try
    OnChangeOff;
    WaterCoSetZero;

    if ActCommission then
      qryItemsCommissionChange(qryItems.FieldByName('Commission'));

    if (not qryItemsInputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [1, 2]) then
    begin
      r := RoundTo((qryItemsInputWeight.AsFloat) / (qryItems.FieldByName(Carton)
        .AsFloat), RoundCount);
      if qryItemsInputEntity.AsFloat <> r then
        qryItemsInputEntity.AsFloat := r
    end;

    if (not qryItemsInputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [4, 6]) then
    begin
      r := RoundTo((qryItemsInputWeight.AsFloat) * (qryItems.FieldByName(Carton)
        .AsFloat), RoundCount);
      if qryItemsInputEntity.AsFloat <> r then
        qryItemsInputEntity.AsFloat := r
    end;

    // 7- تعداد در کارتن * مقدار = وزن   (وزن / تعداد در کارتن =  مقدار)
    if (not qryItemsInputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [7]) then
    begin
      r := RoundTo((qryItemsInputWeight.AsFloat) / (qryItems.FieldByName(Carton)
        .AsFloat), RoundCount);
      if qryItemsInputEntity.AsFloat <> r then
        qryItemsInputEntity.AsFloat := r
    end;
    qryItemsUnitCode2Change(Sender);

    if UnitPriceReadOnly in [0, 2] then
      ChangeTotalInputPrice;

    if UnitPriceReadOnly in [1, 2] then
      ChangeUnitSellPrice;

    if (qryinit.FieldByName('ValueControl').AsLargeInt and
      Integer(CHkAuxiliary_SD1ToWeight) <> 0) then
      qryItemsAuxiliary.AsFloat := qryItems.FieldByName('_SD1').AsFloat *
        Sender.AsFloat;

  finally
    OnChangeOn;
  end;

end;

procedure TReciptsGridF.qryItemsOutputWeightChange(Sender: TField);

var
  r: Real;
begin
  inherited; // 4  OutputEntity
  try
    OnChangeOff;
    WaterCoSetZero;

    if ActCommission then
      qryItemsCommissionChange(qryItems.FieldByName('Commission'));

    if (not qryItemsOutputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [1, 2]) then
    begin
      r := RoundTo((qryItemsOutputWeight.AsFloat) /
        (qryItems.FieldByName(Carton).AsFloat), RoundCount);
      if qryItemsOutputEntity.AsFloat <> r then
        qryItemsOutputEntity.AsFloat := r;
    end;

    if (not qryItemsOutputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [4, 6]) then
    begin
      r := RoundTo((qryItemsOutputWeight.AsFloat) *
        (qryItems.FieldByName(Carton).AsFloat), RoundCount);
      if qryItemsOutputEntity.AsFloat <> r then
        qryItemsOutputEntity.AsFloat := r;
    end;

    // 7- تعداد در کارتن * مقدار = وزن   (وزن / تعداد در کارتن =  مقدار)
    if (not qryItemsOutputWeight.IsNull) and (opt.Carton) and
      (qryinit.FieldByName('CartonKind').AsInteger in [7]) then
    begin
      r := RoundTo((qryItemsOutputWeight.AsFloat) /
        (qryItems.FieldByName(Carton).AsFloat), RoundCount);
      if qryItemsOutputEntity.AsFloat <> r then
        qryItemsOutputEntity.AsFloat := r;
    end;

    qryItemsUnitCode2Change(Sender);

    if UnitPriceReadOnly in [0, 2] then
      ChangeTotalInputPrice;

    if UnitPriceReadOnly in [1, 2] then
      ChangeUnitSellPrice;

    if (qryinit.FieldByName('ValueControl').AsLargeInt and
      Integer(CHkAuxiliary_SD1ToWeight) <> 0) and
      (qryItems.FieldByName('_SD1').AsString <> '') then
      qryItemsAuxiliary.AsFloat := qryItems.FieldByName('_SD1').AsFloat *
        Sender.AsFloat;

  finally
    OnChangeOn;

  end;

end;

procedure TReciptsGridF.OnChangeOff;
begin
  qryItemsInputEntity.OnChange := nil;
  qryItemsOutputEntity.OnChange := nil;
  qryItemsInputWeight.OnChange := nil;
  qryItemsOutputWeight.OnChange := nil;
end;

procedure TReciptsGridF.OnChangeOn;
begin
  qryItemsInputEntity.OnChange := qryItemsInputEntityChange;
  qryItemsOutputEntity.OnChange := qryItemsOutputEntityChange;
  qryItemsInputWeight.OnChange := qryItemsInputWeightChange;
  qryItemsOutputWeight.OnChange := qryItemsOutputWeightChange;

end;

procedure TReciptsGridF.actRecallExecute(Sender: TObject);
begin
  inherited;
  qryItems.AutoCalcFields := False;
  DBGrid1.SumList.Active := False;
  if not chkUsersStoreReciptTypes(qryReciptsStoreID.AsInteger, formType) then
    Abort;
  getresponseShow := False;
  // qryItems.DisableControls;
  CallRecall(qryinit, formType, FormOutput, qryRecipts, qryItems, qryAllRecipts,
    myStore.code, FieldNameEntity, FieldNameWeight, MenSellPrice,
    [mnuSp1, mnuSp2, mnuSp3, mnuSp4, mnuSp5, mnuSp6, mnuSp7]);
  getresponseShow := True;
  // qryItems.EnableControls;
  if DBGrid1.Enabled then
    DBGrid1.SetFocus;
  DBGrid1.SumList.Active := True;
  qryItems.AutoCalcFields := True;

end;

procedure TReciptsGridF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName)
      = 'stuffcode') then
    begin

    end;
  // if Key = VK_DOWN then
  // begin
  // if qryItems.State in dsEditModes then
  // begin
  // qryItems.Post;
  // qryItems.Next;
  // Key:=0;
  // end;
  // end;

end;

procedure TReciptsGridF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (qryinit.FieldByName('BarCodeKind').AsInteger in [0, 1, 4, 5, 6, 7, 8, 9,
    10, 11]) or (DBGrid1.SelectedIndex > 1) then
    gridkeyenter(Sender, Key)
end;

procedure TReciptsGridF.actRecallSpecialReciptsFExecute(Sender: TObject);

var
  rid: Integer;
begin
  inherited;
  DBGrid1.SumList.Active := False;

  myStore.code := qryRecipts.FieldByName('StoreID').AsInteger;
  if qryItems.Active then
    rid := qryItems.RecordCount
  else
    rid := 0;

  If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
    'هيچ فرمي براي فراخواني مشخص نشده است') then
    exit;

  case qryinit.FieldByName('RecallType').AsInteger of
    13:
      begin
        if RecallSpecialRecipts3F.SelectRecall(qryItems, qryinit, qryRecipts,
          myStore, True, qryReciptsPersonID1.AsInteger) then
        begin
          qryItems.MoveBy(rid);
        end;
      end;

    21, 22, 23:
      begin
        if RecallSpecialReciptsEhF.SelectRecall(qryItems, qryinit, qryRecipts,
          myStore, True, qryReciptsPersonID1.AsInteger) then
        begin
          qryItems.MoveBy(rid);
        end;
      end;
    25:
      begin
        if RecallSpecialTozinF.SelectRecall(qryItems, qryinit, qryRecipts,
          myStore, True, qryReciptsPersonID1.AsInteger) then
        begin
          qryItems.MoveBy(rid);
        end;
      end

  else
    begin
      if RecallSpecialReciptsF.SelectRecall(qryItems, qryinit, qryRecipts,
        myStore, True, qryReciptsPersonID1.AsInteger) then
      begin
        qryItems.MoveBy(rid);
      end;
    end;

  end;

  DBGrid1.SumList.Active := True;

end;

procedure TReciptsGridF.actRecallSpecialReciptsSumFExecute(Sender: TObject);
var
  qry1, qryUp1: TADOQuery;
begin
  inherited;
  DBGrid1.SumList.Active := False;
  qryUp1 := TADOQuery.Create(Self);
  qry1 := TADOQuery.Create(Self);
  try
    qryItems.DisableControls;
    qry1.Connection := DMf.adcBSell;
    qryUp1.Connection := DMf.adcBSell;
    If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
      'هيچ فرمي براي فراخواني مشخص نشده است') then
      exit;

    try
      if RecallSpecialReciptsSumF.SelectRecall(qryItems, qryinit, qryRecipts,
        qry1, myStore) then
        With qryUp1 do
        begin
          DMf.adcBSell.BeginTrans;
          SQL.Text := 'UPDATE Recipts ';
          SQL.Add(Format('SET ParentReciptID = %d ',
            [qryReciptsReciptID.AsInteger]));
          SQL.Add('FROM ReciptItems Ri INNER JOIN');
          SQL.Add('Recipts R ON Ri.ReciptID=R.ReciptID  AND R.ServerID = Ri.ServerID AND R.YearID =');
          SQL.Add('Ri.YearID INNER JOIN');
          SQL.Add('Units U INNER JOIN');
          SQL.Add('StuffCoding S ON U.UnitCode = S.n_UnitCode');
          SQL.Add('ON Ri.StuffCode = S.c_StuffCode');
          SQL.Add('LEFT OUTER JOIN LookUps LookUps_M ON R.SecondType = LookUps_M.LookUpID');
          SQL.Add(qry1.SQL.Text);
          Parameters := qry1.Parameters;
          BigMessage(IntToStr(ExecSQL) + ' مورد انجام شد.', 1);
        end;
      if DMf.adcBSell.InTransaction then
        DMf.adcBSell.CommitTrans;
    except
      on E: Exception do
      begin
        qryItems.Requery();
        DMf.adcBSell.RollbackTrans;
        Warn2(E.Message);
      end;
    end;

  finally
    qryUp1.Free;
    qry1.Free;
    qryItems.EnableControls;
    DBGrid1.SumList.Active := True;

  end;

end;

procedure TReciptsGridF.RecallStateChange;
var
  b: Boolean;
begin
  BtnRecall.Enabled := ((qryinit.FieldByName('RecallType').AsInteger in [1, 14,
    15, 17, 19, 20]) and (qryRecipts.State = dsInsert));
  if BtnRecall.Enabled then
  begin
    BtnRecall.BringToFront;
    zbal.Title := 'فراخواني ';
    zbal.Prompt.Text := 'براي فراخواني از اين قسمت استفاده كنيد.';
    zbal.show(BtnRecall);
  end; // if

  b := ((RecallTypeOption and Integer(chkExcelComparisonRecall)) <> 0);
  BtnRecallSpecial.Enabled :=
    ((qryinit.FieldByName('RecallType').AsInteger in [2, 3, 4, 5, 6, 7, 8, 10,
    11, 12, 13, 15, 16, 18, 21, 22, 23, 24, 25]) and
    ((qryRecipts.State = dsEdit) or (qryRecipts.State = dsInsert))) or b;

  if BtnRecallSpecial.Enabled and not b then
  begin
    BtnRecallSpecial.BringToFront;
    zbal.Title := 'فراخواني ويژه';
    zbal.Prompt.Text := 'براي فراخواني ويژه از اين قسمت استفاده كنيد.';
    zbal.show(BtnRecallSpecial);
  end; // if

  case qryinit.FieldByName('RecallEditKind').AsInteger of
    0:
      begin
        // DBGrid1.Enabled := not BtnRecall.Enabled and
        // not BtnRecallSpecial.Enabled;
        DBGrid1.ReadOnly := qryinit.FieldByName('RecallType').AsInteger <> 0;
        BtnExcel.Enabled := not DBGrid1.ReadOnly;
      end;

    2, 3, 8:
      begin
        ReciptsRecallEditKind(qryItems, qryRecipts, qryinit,
          RE_RecallStateChange);
        // DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'UnitSellPrice')
        // ].ReadOnly := False;
        // DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'TotalInputPrice')
        // ].ReadOnly := False;
        // DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'TotalOutputPrice')
        // ].ReadOnly := False;
      end;

    9:
      begin
        ReciptsRecallEditKind(qryItems, qryRecipts, qryinit,
          RE_RecallStateChange);

        DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, '_SecondTypeItem')
          ].ReadOnly := False;
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
    (qryinit.FieldByName('RecallEditKind').AsInteger in [4, 8]);
  actGetExcelMasterDetails.Visible := actGetExcel.Visible;
  BtnExcel.Visible := actGetExcel.Visible;
end;

procedure TReciptsGridF.Enter(Form_Type: Integer; LimitShow: Boolean = True;
  StoreID: Integer = 0);
begin
  mainF.AddListRecipts('ReciptsGridF' + IntToStr(Form_Type));
  DM.myStore.code := 0;
  if not LimitShow then
    DM.myStore.code := StoreID;
  CreateMDIForm3(LimitShow, TReciptsGridF, ReciptsGridF, mdiMainF, Form_Type);
  if (ReciptsGridF.myStore.code = 0) and ReciptsGridF.RestartStore then
    ReciptsGridF.Close;
end;

procedure TReciptsGridF.actPrintExecute(Sender: TObject);
begin
  inherited;
  SetQryParam(qryFn_EffectCross);
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
  qryItemsAfterScroll(qryItems);
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

procedure TReciptsGridF.actPaymentsExecute(Sender: TObject);
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

procedure TReciptsGridF.actPcPosFExecute(Sender: TObject);
begin
  inherited;
  PopPcPos.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TReciptsGridF.actPreItemExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypesIsParent(qryItems, mainF);
end;

procedure TReciptsGridF.actPrint1Execute(Sender: TObject);

var
  footer_: String;
  strfFldName, Report_FileName: String;
begin
  inherited;
  DBGrid1.SelectedRows.Clear;
  ppDBPipeline2.ClearBookmarkList;

  if qryinit.FieldByName('UseOtherActive').AsInteger = 1 then
    qryUseOthers4Print.Active := True;
  strfFldName := ifthen((Sender as TAction).Tag = 1, 'PerformFileName',
    'ReportFileName');

  Report_FileName := qryinit.FieldByName(strfFldName).AsString;
  FilterOnPrint(qryinit, qryItems, Report_FileName);

  ChkReportFileName(Report_FileName);

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
      Template.FileName := GetReportFileWithPath(Report_FileName);

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
        Warn('فايل چاپي ' + Report_FileName + ' نظر يافت نشد.!‏',
          mtInformation);
      // ---------------------------
      // initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      InitReportISDEMO(ppReport1);
      SetUserQualitativeOnPrint(ppReport1);
      // -----------------------------------------------------
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

      if DeviceTypePrinter then
      begin
        DeviceType := 'Printer';
        // ModalPreview := False;
        ShowPrintDialog := False;
      end;

      ppReport1.AfterPrint := ppReport1AfterPrint;
      SetSendToBackShapeOnPrint(Self);

      // SumGrid1.DataSource.DataSet.DisableControls;
      // DBGrid1.DataSource := nil;
      // SumGrid1.Enable_Controls := False;
      // qryRecipts.DisableControls;
      // qryItems.DisableControls;//   برای مشتری دیتیل  غیر فعال شد
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

procedure TReciptsGridF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  actPrint1Execute(Sender)
end;

procedure TReciptsGridF.actPrintAll2Execute(Sender: TObject);
begin
  inherited;
  try
    DeviceTypePrinter := True;
    actFilter.Execute;
    NAllRecords.Checked := True;
    qryAllRecipts.First;
    if get_response(' آيا براي چاپ کل فرمهای انتخاب شده در محدوده مطمئن هستيد؟')
      = mrYes then
      while not qryAllRecipts.Eof do
      begin
        actPrint2.Execute;
        qryAllRecipts.Next;
      end;
  finally
    DeviceTypePrinter := False;
  end;
end;

procedure TReciptsGridF.actPrintAllExecute(Sender: TObject);
begin
  inherited;
  try
    DeviceTypePrinter := True;
    actFilter.Execute;
    NAllRecords.Checked := True;
    qryAllRecipts.First;
    if get_response(' آيا براي چاپ کل فرمهای انتخاب شده در محدوده مطمئن هستيد؟')
      = mrYes then
      while not qryAllRecipts.Eof do
      begin
        actPrint1.Execute;
        qryAllRecipts.Next;
      end;
  finally
    DeviceTypePrinter := False;
  end;

end;

procedure TReciptsGridF.ppLblAddresGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Address', '')
end;

procedure TReciptsGridF.ppLbTelGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Tel1', '')
end;

procedure TReciptsGridF.ppReport1AfterPrint(Sender: TObject);
begin
  inherited;
  qryItems.Filtered := False;
end;

procedure TReciptsGridF.ppLblPostCodeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('PostalCode', '')
end;

procedure TReciptsGridF.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber', '')
end;

procedure TReciptsGridF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TReciptsGridF.pplblCustomerNameGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := qryItems.FieldByName('FullName').AsString
end;

procedure TReciptsGridF.ppSysVarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TReciptsGridF.ppVariable2GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Text <> EmptyStr then
    Text := num2alphabet(StrToFloat(Text)) + ' ريال ';
end;

procedure TReciptsGridF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('ReciptCaption').AsString
end;

procedure TReciptsGridF.actNewReciptsSplitRecall4PersonIDExecute
  (Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      AddItem(DMf.adcBSell, 'PersonID1', 'مشتری', 'كد', ftInteger, dvMinMax, '',
        '', ciSingleLookup,
        'SELECT CustID,CustName FROM Customers WHERE(CustID<>0)', 'SELECT 0,0');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        PostAddRecipt;
      end;
    finally
      Free;
    end;
  end;

end;

procedure TReciptsGridF.PostAddRecipt();
var
  ID12: int64;
  NewPersonID1: Integer;
  // ReciptID, YearID, ServerID,
  ReciptNumber: Integer;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('ReciptsSplit4PersonIDLevelID'),
    qryRecipts) then
    Abort;
  ReciptNumber := 0;
  NewPersonID1 := GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
  if NewPersonID1 = 0 then
    exit;
  if get_response('آيا براي تغییر کد مشتری جاری به کد ' + NewPersonID1.ToString
    + '  مطمئن هستيد؟�؏' + #13 + 'فرم های مرتبط نیز ویرایش و یا تفکیک می شوند')
    <> mrYes then
    exit;
  ID12 := qryRecipts.FieldByName('ID').AsLargeInt;
  With TADOStoredProc.Create(Application) do
    try
      ProcedureName := 'NewReciptsSplitRecall4PersonID';
      ConnectionString := GetConStr(APPBank.Name);
      Parameters.Refresh;
      Parameters.ParamByName('@ID12').Value := ID12;
      Parameters.ParamByName('@NewPersonID1').Value := NewPersonID1;
      Parameters.ParamByName('@ReciptNumber').Value := ReciptNumber;
      ExecProc;
      ReciptNumber := Parameters.ParamByName('@RETURN_VALUE').Value;
      // ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
      // YearID := qryRecipts.FieldByName('YearID').AsInteger;
      // ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
      qryRecipts.Requery();
      if ReciptNumber = 0 then
        BigMessage('انجام شد.‏', 1)
      else
        BigMessage('در فرم خروجی جدید با شماره ' + ReciptNumber.ToString +
          ' انجام شد.‏', 0);
    finally
      Free;
    end;
end;

procedure TReciptsGridF.actNoteMasterExecute(Sender: TObject);
begin
  inherited;
  NoteF.Enter(qryRecipts,
    (ValueControl and Integer(MainFormIsEditableNote) = 0));
end;

procedure TReciptsGridF.actOfferItemsExecute(Sender: TObject);
var
  ReportSql, ReportTxt: string;
  i: Integer;
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ReportSql';
    SQL.Add('FROM FaraSystems.dbo.Reports');
    SQL.Add('WHERE (ReportID = 876)');
    Active := True;
    ReportSql := Fields[0].AsString;
    Active := False;
    ReportSql := ReplaceStr(ReportSql, ':GroupID0From', '0');
    ReportSql := ReplaceStr(ReportSql, ':GroupID0To', '999999999');
    ReportSql := ReplaceStr(ReportSql, ':GroupID1From', '0');
    ReportSql := ReplaceStr(ReportSql, ':GroupID1To', '999999999');
    ReportSql := ReplaceStr(ReportSql, ':GroupID2From', '0');
    ReportSql := ReplaceStr(ReportSql, ':GroupID2To', '999999999');
    SQL.Text := ReportSql;

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('StuffCodeFrom').Value :=
      qryItemsStuffCode.AsLargeInt;
    Parameters.ParamByName('StuffCodeTo').Value := qryItemsStuffCode.AsLargeInt;
    Parameters.ParamByName('DateFrom').Value := '00';
    Parameters.ParamByName('DateTo').Value := '9999/99/99';
    Parameters.ParamByName('Date1From').Value := '00';
    Parameters.ParamByName('Date1To').Value := '9999/99/99';
    Active := True;
    for i := 0 to Fields.Count - 1 do
      ReportTxt := ReportTxt + #13#10 + Fields[i].DisplayLabel + '=' +
        Fields[i].AsString;
    Active := False;
    Warn(ReportTxt);
  end;
end;

procedure TReciptsGridF.actSearchReciptNumberExecute(Sender: TObject);
begin
  inherited;
  SearchReciptNumber(qryinit, qryAllRecipts, myStore)
end;

procedure TReciptsGridF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  opt.PayablePriceActive := True;
  if dbchkPersonID2Bed.Checked then
    opt.CustomerID1 := qryRecipts.FieldByName('PersonID2').AsInteger
  else
    opt.CustomerID1 := qryRecipts.FieldByName('PersonID1').AsInteger;

  if dbchkPersonID2Bed.Checked then
    opt.CustomerID2 := 0
  else
    opt.CustomerID2 := qryRecipts.FieldByName('PersonID2').AsInteger;

  opt.ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  opt.RelatedRecipts := qryRecipts.FieldByName('ServerID').AsString + '-' +
    qryRecipts.FieldByName('YearID').AsString + '-' + qryRecipts.FieldByName
    ('ReciptID').AsString;

  if (ShowNotEntityOnSearch and Integer(CHkAidCopy)) <> 0 then
  begin
    opt.AidInfoNo := qryReciptsReciptNumber.AsString;
    opt.AidInfoDate := qryReciptsReciptDate.AsString;
  end
  else
  begin
    opt.AidInfoNo := qryRecipts.FieldByName('AidNumber').AsString;
    opt.AidInfoDate := qryRecipts.FieldByName('AidDate').AsString;
  end;

  if qryinit.FieldByName('ControlEntityActive').AsInteger = 4 then
    try
      With qryItems do
        try
          DisableControls;
          First;
          BigMessage('در حال بررسی امکان تغییر تایپ.....', 0);
          while not Eof do
          begin
            if ControlEntity(CurrentEntity, CurrentWeight, qryItems, qryRecipts,
              qryinit, Form_InOut, Person3Active, MyEntityDisplayType,
              GetExcelAct, qryEntityCodeExpirationDate, True) then
            BEGIN
              mnuReturnRecallType9.Tag := 3;
              actReciptStateTo0.Enabled := False;
              Break;
            END
            else
            begin
              mnuReturnRecallType9.Tag := 0;
              actReciptStateTo0.Enabled := True;
            end;
            Next;
          end;
        finally
          CloseMessage;
          EnableControls;
        end;
    except
      on E: Exception do
        CloseMessage;
    end;

  PopOtherMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsGridF.qryItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryItems.FieldByName('_radif').AsInteger := Abs(DataSet.RecNo);
end;

procedure TReciptsGridF.ppLabelOutputWeightGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStr(Calc_SumFileds('Weight'))
end;

procedure TReciptsGridF.ppLabelOutputEntityGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStr(Calc_SumFileds('Entity'))
end;

procedure TReciptsGridF.ppLabelTotalOutputPriceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(Calc_SumFileds('Price'), ffCurrency, 0)
end;

procedure TReciptsGridF.ppLabelnum2alphabetGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'جمع كل به حروف : ' + num2alphabet
    (StrToFloat(CurrToStr(RoundTo(Calc_SumFileds('Price'), 0)))) + ' ريال ';
  // num2alphabet(StrToFloat(RemoveComma(CurrToStrF(CalcSumFileds('Price'),ffCurrency,0))))+' ريال ';
end;

procedure TReciptsGridF.ppDBTextStuffSizeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + '';
end;



// procedure TReciptsGridF.qryItemsInputWeightGetText(Sender: TField;
// var Text: String; DisplayText: Boolean);
// begin
// inherited;
// // if not qryItems.FieldByName((Sender as TField).FieldName).IsNull then
// //   Text := FloatToStr(RoundTo(qryItems.FieldByName((Sender as TField)
// //     .FieldName).AsFloat, opt.RoundEntity));
// end;

procedure TReciptsGridF.qryItemsTotalInputPriceChange(Sender: TField);
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

procedure TReciptsGridF.qryItemsTotalOutputPriceChange(Sender: TField);
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

procedure TReciptsGridF.actCorrelateReciptExecute(Sender: TObject);
begin
  inherited;
  if RelatedPostWhenCoefficientsPosted(qryinit, qryRecipts) then
    Abort;

  if not NewReciptsCorrelateChkEntity(qryReciptsID.AsLargeInt, qryinit) then
    Abort;

  if not chkUsersStoreReciptTypes(qryReciptsStoreID.AsInteger, formType) then
    Abort;
  If ReciptCorrelate_ConversionCo_Chk(qryRecipts, qryinit) then
  begin
    DMf.adcBSell.BeginTrans;
    try
      try
        getresponseShow := False;
        ParentReciptID := InsertCorrelateRecipt(qryinit, qryItems, formType,
          qryRecipts, FormOutput, DBNavigator1, MyEntityDisplayType);

        if not((qryinit.FieldByName('ChangeAidReciptDate').AsInteger and
          Integer(CHkPostWithNewReciptsCorrelate)) <> 0) then
          InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits,
            qry_Deficits4Print, qryinit.FieldByName('StepCorrelate').AsInteger);
        ChangeToResarve;
        DMf.adcBSell.CommitTrans;
      except
        on E: Exception do
        begin
          DMf.adcBSell.RollbackTrans;
          add2log(E.Message);
          Warn2(E.Message);
        end;
      end;
    finally
      getresponseShow := True;
      qryRecipts.EnableControls;
    end;
  end;
end;

procedure TReciptsGridF.ChangeToResarve;

begin
  if ((RecallTypeOption and Integer(CHkPostChangeState)) <> 0) then
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'UPDATE Recipts';
      SQL.Add('SET ReciptState = 4 ,LastUser = ''' + User.Name + ' رزرو'
        + '''  ');
      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ');
      SQL.Add('ReciptItems.ServerID = Recipts.ServerID AND');
      SQL.Add('ReciptItems.YearID = Recipts.YearID');
      SQL.Add('WHERE (ReciptItems.ReciptItemID = :ReciptItemID) ');
      // SQL.Add('AND (Recipts.ReciptType = 41) ');
      SQL.Add('AND (Recipts.ServerID = :ServerID) ');
      SQL.Add('AND (Recipts.YearID = :YearID)');
      Parameters.ParamByName('ReciptItemID').Value :=
        qryItemspreReciptItemID.AsInteger;
      Parameters.ParamByName('ServerID').Value := qryItemsServerID.AsInteger;
      Parameters.ParamByName('YearID').Value := qryItemsYearID.AsInteger;
      ExecSQL;
    end;
end;

procedure TReciptsGridF.ppImage1DrawCommandCreate(Sender,
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

procedure TReciptsGridF.ppLblFormFooterGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormFooter').AsString;
end;

procedure TReciptsGridF.qryReciptsStoreIDChange(Sender: TField);

var
  b: Boolean;
begin
  inherited;
  myStore.code := Sender.AsInteger;
  ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, lblWarn);
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, DBGrid1, qryItems, qryinit.FieldByName('StoreKindProductModel')
    .AsString) or (Settings and Integer(CHKShowAccCode) <> 0);
  b := PriceOn_StoreType and (qryinit.FieldByName('AccCodingShow')
    .AsInteger > 0);

  b := b and ((((Settings and Integer(CHKShowAccCode) <> 0)) or
    User.PowerUser));

  GrpBoxAccount.Visible := b;
  setColumns2(DBGrid1, b AND (qryinit.FieldByName('TopicCodeActive')
    .AsInteger = 1), 'acc_TopicCode');
  setColumns2(DBGrid1, b AND (qryinit.FieldByName('DetailCodeActive')
    .AsInteger = 1), 'acc_DetailCode');
  setColumns2(DBGrid1, b AND (qryinit.FieldByName('CTopicCode1Active')
    .AsInteger = 1), 'acc_CTopicCode');
  setColumns2(DBGrid1, b AND (qryinit.FieldByName('CTopicCode2Active')
    .AsInteger = 1) and optA.ActiveCtopic2, 'acc_CTopicCode2');

  setColumns2(DBGrid1, b AND (qryinit.FieldByName('CTopicCode3Active')
    .AsInteger = 1) and optA.ActiveCtopic3, 'acc_CTopicCode3');

  if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger = 6 then
  begin
    if Not MultiFormType then
      FreeReservedCodes(DMf.adcBSell, 'Recipts', 'ReciptNumber',
        IntToStr(formType));
    GetReciptNumber(qryinit, qryRecipts, 0, myStore);
  end;

end;

procedure TReciptsGridF.qryReciptstax_statusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Gettax_statusCaption(Sender.AsInteger)
end;

procedure TReciptsGridF.qryRecipts_StoreKindChange(Sender: TField);
begin
  inherited;
  PawsFieldsActive
end;

procedure TReciptsGridF.qryReciptsPersonID1Change(Sender: TField);

var
  a: TDateTime;
  T: TThread;
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
    LblReMainPerson1.Visible := True;
    // LblReMainPerson1.Caption := 'مانده=' +
    // CurrToStrF(ReMainPersonRecipt(0, qryRecipts, qryinit, False,
    // LblReMainPerson1), ffCurrency, 0);

    LblReMainPerson1.Caption := 'در حال بررسی';
    T := TThread.CreateAnonymousThread(
      procedure()
      begin
        LblReMainPerson1.Caption := 'مانده=' + CurrToStrF(ReMainPersonRecipt(0,
          qryRecipts, qryinit, False, LblReMainPerson1), ffCurrency, 0);
      end);
    T.FreeOnTerminate := True;
    T.Start;

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

    dbchkPersonID2Bed.Visible := (qryRecipts.FieldByName('_SellsDefaultState')
      .AsInteger > 1) OR (SellsDefaultState);
    dbchkPersonID2Bed.Checked := (qryRecipts.FieldByName('_SellsDefaultState')
      .AsInteger = 2);
    if dbchkPersonID2Bed.Checked then
      qryRecipts.FieldByName('PersonID2Bed').AsInteger := 1;
  end;

  if (qryinit.FieldByName('MasirActive').AsInteger = 1) and
    (qryRecipts.FieldByName('_PersonID1MasirID').AsInteger > 0) then
    qryRecipts.FieldByName('MasirID').AsInteger :=
      qryRecipts.FieldByName('_PersonID1MasirID').AsInteger;

  PersonIDOnDetailActiveChange(Sender, qryinit, qryItems);

  if ((RecuestActive and Integer(chkSellsEmporiumRA)) <> 0) then
  begin
    qryReciptsSellsEmporium.AsInteger := qryCustomers1.FieldByName
      ('SellsEmporium').AsInteger
  end;

  if ((RecuestActive and Integer(chkSellsMethodRA)) <> 0) then
  begin
    qryReciptsSellsMethod.AsInteger := qryCustomers1.FieldByName('SellsMethod')
      .AsInteger
  end;

end;

procedure TReciptsGridF.qryReciptsPersonID2Change(Sender: TField);

var
  T: TThread;
begin
  inherited;
  IF qryinit.FieldByName('Person2Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers2, Sender.AsInteger);
  // for  Change   PersonID
  qryRecipts.FieldByName('ReciptType').AsInteger :=
    qryRecipts.FieldByName('ReciptType').AsInteger;
  // for  Change   PersonID
  PersonIDOnDetailActiveChange(Sender, qryinit, qryItems);

  if qryinit.FieldByName('ActiveReMainPersonRecipt').AsInteger = 1 then
  begin
    LblReMainPerson2.Visible := True;
    // LblReMainPerson2.Caption := 'مانده=' +
    // CurrToStrF(ReMainPersonRecipt(0, qryRecipts, qryinit, False,
    // LblReMainPerson2), ffCurrency, 0);

    LblReMainPerson2.Caption := 'در حال بررسی';
    T := TThread.CreateAnonymousThread(
      procedure()
      begin
        LblReMainPerson2.Caption := 'مانده=' + CurrToStrF(ReMainPersonRecipt(0,
          qryRecipts, qryinit, False, LblReMainPerson2), ffCurrency, 0);
      end);
    T.FreeOnTerminate := True;
    T.Start;

  end;

end;

procedure TReciptsGridF.ppLblReMainTotallSellPriceGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF
    (ReMainPersonRecipt(CalcSumFileds(qryItemsTotallSellPrice) +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), qryRecipts, qryinit,
    True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsGridF.ppLblReMainGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(Calc_SumFileds('Price') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), qryRecipts, qryinit,
    True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsGridF.ppLblReMainOldGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(0, qryRecipts, qryinit,
    True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsGridF.logoPrint(Sender: TObject);

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

procedure TReciptsGridF.Timer1Timer(Sender: TObject);
begin
  inherited;
  lblStateChang.Visible := not lblStateChang.Visible;
end;

function TReciptsGridF.WeightDisplay: Boolean;
begin
  Result := opt.WeightDisplay or (MyEntityDisplayType = 2)
end;

procedure TReciptsGridF.qryItemsAfterOpen(DataSet: TDataSet);
var
  s: string;
  BarcodeImage: TBitmap;
begin
  inherited;
  BarcodeImage := GenerateBarcodeImage(qryItemsSyntheticCode.AsString);
  try
    imgBarcode.Picture.Bitmap := BarcodeImage;
  finally
    BarcodeImage.Free;
  end;

  if (qryinit.FieldByName('ReciptIDEventKind').AsInteger <> 1) then
    qryItems.Sort := qryinit.FieldByName('OrderByFields').AsString;

  if WeightDisplay then
    StatusBar1.Panels[1].Text := opt.WeightCaption + ' =' +
      CurrToStr(Calc_SumFileds('Weight'));
  if EntityDisplay then
    StatusBar1.Panels[2].Text := opt.EntityCaption + ' =' +
      CurrToStr(Calc_SumFileds('Entity'));

  if ((qryinit.FieldByName('OtherSettings').AsLargeInt and
    Integer(CHkMaterialUsageCo)) <> 0) then
    StatusBar1.Panels[4].Text := qryItemsStuffDiameter.DisplayLabel + '=' +
      CurrToStr(CalcSumFileds(qryItems, 'stuffdiameter'));

  if PriceOn_StoreType then
    StatusBar1.Panels[0].Text := CurrToStrF(Abs(Calc_SumFileds('Price')),
      ffCurrency, 0) + ' ريال '
  else
    StatusBar1.Panels[0].Text := '';
  if PnlArzActive.Visible then
    StatusBar1.Panels[3].Text :=
      CurrToStr(CalcSumFileds(qryItems, 'ArzAmount'));

  SetSelected_StuffCode;

  if ((Settings and Integer(ChkArzType2)) <> 0) then
  begin

    cmb_ArzTypeID2.ItemIndex := cmb_ArzTypeID2.Items.IndexOfObject
      (TObject(qryItemsArzTypeID2.AsInteger));
    edtArzRate2.Text := qryItems.FieldByName('ArzRate2').AsString;
    edtExchangePrice.Text := qryItems.FieldByName('ExchangePrice').AsString;

    s := edtExchangePrice.Text;
    if s.Trim = '' then
      s := '1';
    edtExchangePrice.Text := s;

    cmbHowConvert.ItemIndex := cmbHowConvert.Items.IndexOfObject
      (TObject(qryItems.FieldByName('HowConvert').AsInteger));

  end;
  if qryinit.FieldByName('StereotypyActive').AsInteger = 1 then
    With qryStereotypyP do
    begin
      Active := False;
      Parameters.ParamByName('StereotypyID').Value :=
        qryItems.FieldByName('StereotypyID').AsInteger;
      Active := True;
    end;

end;

procedure TReciptsGridF.actSortExecute(Sender: TObject);
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

procedure TReciptsGridF.ppDBTxtPayablePriceGetText(Sender: TObject;
var Text: String);

var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price') + CalcSumFileds(qry_Deficits4Print,
    'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsGridF.ppDBTxtPayableSellPriceGetText(Sender: TObject;
var Text: String);

var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsGridF.ppLabelnum2alphabetPayebelGetText(Sender: TObject;
var Text: String);

var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price') + CalcSumFileds(qry_Deficits4Print,
    'Deficit_Add_Dec');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToFloat(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsGridF.ppLabelnum2alphabetPayebelSellPriceGetText
  (Sender: TObject; var Text: String);

var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToFloat(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsGridF.actDBGrid1EditButtonClickExecute(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := ColumnIndexByFieldName(DBGrid1,
    qryItemsStuffCode.FieldName);
  DBGrid1EditButtonClick(DBGrid1)
end;

procedure TReciptsGridF.actDeficitsExecute(Sender: TObject);

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

    if (qryRecipts.State in dsEditModes) then
      qryRecipts.Post;
  finally
    qry_Deficits4Print.Requery();
    UpdateStatusBar1;
    // if PriceOn_StoreType then
    // begin
    // PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
    // StatusBar1.Panels[5].Text := ' كسورات=' + CurrToStrF(PayablePrice,
    // ffCurrency, 0);
    // PayablePrice := Calc_SumFileds('Price') + PayablePrice;
    // StatusBar1.Panels[5].Text := StatusBar1.Panels[5].Text + ' بهاي كل=' +
    // CurrToStrF(PayablePrice, ffCurrency, 0);
    // if TotallSellPriceAct then
    // StatusBar1.Panels[5].Text := StatusBar1.Panels[5].Text + ' خالص ' +
    // CurrToStrF(CalcSumFileds(qryItems, 'TotallSellPrice') +
    // CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), ffCurrency, 0);
    // end;

  end;

end;

procedure TReciptsGridF.InitDBCombos;

var
  Kind: Integer;
  // IX: Integer;
begin
  CmbSecondType.Clear;
  CmbArzTypeID.Clear;
  cmb_ArzTypeID2.Clear;

  with cmbPortageBedbes do
  begin
    Clear;
    Items.AddObject('ندارد', TObject(0));
    Items.AddObject('مشتری بدهکار', TObject(1));
    Items.AddObject('مشتری بستانکار', TObject(2));
  end;

  Kind := qryinit.FieldByName('FormKindSerial').AsInteger;
  if Kind <> 0 then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT LookUpID,Name ';
      SQL.Add(',(SELECT TOP (1) L1.Name FROM LookUps AS L1 ');
      SQL.Add('WHERE (L1.LookUpID = LookUps.Kind) AND (L1.Kind = 0)) AS LookUpName');
      SQL.Add('FROM LookUps WHERE(Kind = ' + IntToStr(Kind) + ')');
      SQL.Add('ORDER BY Code');
      Active := True;
      lblSecondType.Caption := FieldByName('LookUpName').AsString;
      while not Eof do
      begin
        CmbSecondType.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end; // while
    end; // with

  Kind := qryinit.FieldByName('FormItemKindSerial').AsInteger;
  if Kind <> 0 then
    with qryLookUP do
    begin
      Active := False;
      Parameters.ParamByName('Kind').Value := Kind;
      Active := True;
    end;
  if SecondTypeItemActive then
  begin
    qryLookUP.Active := True;
    if qryLookUP.FieldByName('LookUpName').AsString <> EmptyStr then
      qryItems.FieldByName('SecondTypeItem').DisplayLabel :=
        'کد' + qryLookUP.FieldByName('LookUpName').AsString;
    qryItems.FieldByName('_SecondTypeItem').DisplayLabel :=
      qryLookUP.FieldByName('LookUpName').AsString;
  end;

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
      CmbArzTypeID.Tag := Fields[0].AsInteger;
      while not Eof do
      begin
        CmbArzTypeID.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));

        cmb_ArzTypeID2.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));

        Next;
      end; // while
      Active := False;
    end; // with
end;

procedure TReciptsGridF.actReciptStateTo0Execute(Sender: TObject);
begin
  inherited;
  if not OkDelete(qryRecipts, False, 0, True) then
    Abort;

  ReciptBe4PostCtrlEntAct;

  if get_response('آيا براي باطل كردن اين ' + Caption + ' مطمئن هستيد!؟‏‏') = mrYes
  then
    if AutoStateChange(qryRecipts, qryinit, 3) then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          'Update ReciptItems Set preReciptItemID = preReciptItemID * - 1 ,LastUser = '''
          + User.Name + ' قطع ارتباط ''   where ReciptID = ' +
          qryRecipts.FieldByName('ReciptID').AsString;
        SQL.Add('and ServerID = ' + qryRecipts.FieldByName('ServerID')
          .AsString);
        SQL.Add('and YearID = ' + qryRecipts.FieldByName('YearID').AsString);
        ExecSQL;
        Active := False;
      end; // with
end;

procedure TReciptsGridF.actReciptsTradesFExecute(Sender: TObject);
begin
  inherited;
  ReciptsTradesF.Enter(qryinit, qryRecipts);
end;

procedure TReciptsGridF.actReciptType4CopyExecute(Sender: TObject);
begin
  inherited;
  ReciptType4Copy(qryAllRecipts, qryRecipts, qryItems, qryinit)
end;

procedure TReciptsGridF.ppLblState2ZeroDrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryRecipts.FieldByName('ReciptState')
    .AsInteger = 3;
end;

procedure TReciptsGridF.ppLblSecondTypeGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := CmbSecondType.Text;
end;

procedure TReciptsGridF.qryReciptsAfterEdit(DataSet: TDataSet);
var
  b: Boolean;
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
  begin
    b := DataSet.FieldByName('EditTime').ReadOnly;
    DataSet.FieldByName('EditTime').ReadOnly := False;
    DataSet.FieldByName('EditTime').AsString := SysUtils.TimeToStr(Now);
    DataSet.FieldByName('EditTime').ReadOnly := b;
  end;

end;

procedure TReciptsGridF.qryItemsAfterEdit(DataSet: TDataSet);
var
  b: Boolean;
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
  begin
    b := DataSet.FieldByName('EditTime').ReadOnly;
    DataSet.FieldByName('EditTime').ReadOnly := False;
    DataSet.FieldByName('EditTime').AsString := SysUtils.TimeToStr(Now);
    DataSet.FieldByName('EditTime').ReadOnly := b;
  end;
end;

procedure TReciptsGridF.actCorrelateConversionCoExecute(Sender: TObject);
begin
  inherited;
  if not chkUsersStoreReciptTypes(qryReciptsStoreID.AsInteger, formType) then
    Abort;
  getresponseShow := False;
  CorrelateConversionCo(Self, qryinit, qryItems, qryRecipts, 0,
    MyEntityDisplayType);
  ReciptsLocate;
  getresponseShow := True;
end;

procedure TReciptsGridF.ppLblAllStringReplaceGetText(Sender: TObject;
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

procedure TReciptsGridF.qryItemsWaterCoChange(Sender: TField);
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

procedure TReciptsGridF.CartonKind5(Sender: TField);

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

procedure TReciptsGridF.qryItemsTaxValueChange(Sender: TField);
begin
  inherited;
  Sender.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName); // TaxValue
  Sender.OnChange := qryItemsTaxValueChange;
end;

function TReciptsGridF.DeficitValue3Add: Currency;
begin
  if DiscountActive and Integer(CHkDeficitValue3Add) <> 0 then
    Result := qryItemsDeficitValue3.AsCurrency
  else
    Result := -qryItemsDeficitValue3.AsCurrency
end;

procedure TReciptsGridF.EndOfPrice(Field_Name: String);

var
  TaxCo, WaterCo1: Extended;
  TotallSellPrice, TotallPrice, EW: Currency;
  DeficitValue1, DeficitValue2, DeficitValue4, DeficitValue3, TotallCommission,
    UnitCommission: Currency;
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

    if qryinit.FieldByName('VATActive').AsInteger <> 3 then
    begin

      Result := TotallPrice - qryItems.FieldByName('DeficitValue').AsCurrency -
        qryItems.FieldByName('DeficitValue2').AsCurrency -
        qryItems.FieldByName('DeficitValue4').AsCurrency - Deficit_Value_3;
      Result := Result * TaxCo / (100 * ifthen(VATRound = 0, 1, VATRound));
      // Result := RoundTo(Result * ifthen(VATRound = 0, 1, VATRound), 0);

      Result := Trunc(Result * ifthen(VATRound = 0, 1, VATRound));

      if qryItems.FieldByName('TaxValue').AsCurrency <> Result then
      begin
        qryItems.FieldByName('TaxValue').OnChange := nil;
        qryItems.FieldByName('TaxValue').AsCurrency := Result;
        qryItems.FieldByName('TaxValue').OnChange := qryItemsTaxValueChange;
      end;
    end
    else
      Result := qryItems.FieldByName('TaxValue').AsCurrency;
  end;

  procedure CalcSellPrice;

  var
    c, Commission: Currency;
  begin
    // Memo1.Lines.Add(qryItemsReciptItemID.AsString+' , '+Field_Name);
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
      c := Trunc(c);
      if qryinit.FieldByName('PawsFieldsActive').AsInteger in [2] then
        if qryItems.FieldByName(FieldNamePrice).AsCurrency <> c then
          qryItems.FieldByName(FieldNamePrice).AsCurrency := c;
    end;
    { آقای قربانی  11:21 ق.ظ
      به آقای عابدی بگو فقط توی فرم های افزاینده (خنثی،اماده و) اضافه بشه ولی توی کاهنده ها اثری نداشته باشه }
    if ((ActCommission) and (not FormOutput)) then
    begin
      Commission := qryItems.FieldByName('CommissionPrice').AsLargeInt;
      // qryItems.FieldByName(FieldNameWeight).AsFloat *  qryItems.FieldByName('Commission').AsFloat;
    end
    else
      Commission := 0;

    TotallSellPrice := Trunc(TotallPrice + CalcTaxValue -
      qryItemsDeficitValue.AsCurrency - qryItemsDeficitValue2.AsCurrency -
      qryItemsDeficitValue4.AsCurrency + DeficitValue3Add + c + Commission);

    if qryItemsTotallSellPrice.AsCurrency <> TotallSellPrice then
    begin
      qryItemsTotallSellPrice.OnChange := nil;
      qryItemsTotallSellPrice.AsCurrency := TotallSellPrice;
      qryItemsTotallSellPrice.OnChange := qryItemsTotallSellPriceChange;
    end;
  end;

begin
  TotallPrice := 0;

  if qryinit.FieldByName('CommissionActive').AsInteger in [1, 2, 3] then
  begin
    EW := ifthen(qryItemsDiagnosisCalcTotalPrice.AsInteger = 0,
      qryItems.FieldByName(FieldNameEntity).AsCurrency,
      qryItems.FieldByName(FieldNameWeight).AsCurrency);
    TotallPrice := Trunc((EW * qryItems.FieldByName('UnitCommission')
      .AsCurrency));
  end;

  TotallPrice := TotallPrice + qryItems.FieldByName(FieldNamePrice).AsCurrency;

  VATRound := qryinit.FieldByName('VATRound').AsInteger;
  if qryinit.FieldByName('VATActive').AsInteger in [2, 3] then
    if (Field_Name = 'TaxValue') then
    begin
      TaxCo := TotallPrice - qryItems.FieldByName('DeficitValue').AsCurrency -
        qryItems.FieldByName('DeficitValue2').AsCurrency -
        qryItems.FieldByName('DeficitValue4').AsCurrency - Deficit_Value_3;
      TaxCo := (qryItems.FieldByName('TaxValue').AsCurrency * 100) / TaxCo;
      // TaxCo := RoundTo(TaxCo, -1 * VATRound);
      if qryItems.FieldByName('TaxCo').AsFloat <> TaxCo then
      begin
        qryItems.FieldByName('TaxCo').OnChange := nil;
        qryItems.FieldByName('TaxCo').AsCurrency := TaxCo;
        qryItems.FieldByName('TaxCo').OnChange := qryItemsTaxCoChange;
      end;
    end;

  if qryinit.FieldByName('VATActive').AsInteger >= 1 then
  begin
    if (Field_Name = 'DeficitValue') or (Field_Name = 'DeficitValue2') or
      (Field_Name = 'DeficitValue4') or (Field_Name = 'DeficitValue3') or
      (Field_Name = FieldNamePrice) or (Field_Name = 'TaxCo') or
      (Field_Name = 'UnitCommission') then
      CalcTaxValue;
  end;

  // if (qryinit.FieldByName('DiscountActive').AsInteger <> 1) and
  if (qryinit.FieldByName('DiscountActive').AsInteger = 0) and
    (qryinit.FieldByName('VATActive').AsInteger = 0) then
    if qryinit.FieldByName('PawsFieldsActive').AsInteger > 0 then
    begin
      CalcSellPrice;
      exit;
    end;

  if ((Field_Name = 'UnitCommissionCo')) then
  begin
    TotallCommission :=
      Trunc(TotallPrice * qryItems.FieldByName('UnitCommissionCo')
      .AsFloat / 100);
    if qryItems.FieldByName('TotallCommission').AsCurrency <> TotallCommission
    then
    begin
      qryItems.FieldByName('TotallCommission').OnChange := nil;
      qryItems.FieldByName('TotallCommission').AsCurrency := TotallCommission;
      qryItems.FieldByName('TotallCommission').OnChange :=
        qryItemsTotallCommissionChange;
    end;

    UnitCommission :=
      Trunc(TotallCommission / qryItems.FieldByName(FieldNameEntity)
      .AsCurrency);
    if qryItems.FieldByName('UnitCommission').AsCurrency <> UnitCommission then
    begin
      qryItems.FieldByName('UnitCommission').OnChange := nil;
      qryItems.FieldByName('UnitCommission').AsCurrency := UnitCommission;
      qryItems.FieldByName('UnitCommission').OnChange :=
        qryItemsUnitCommissionChange;
    end;

  end;

  if ((Field_Name = 'WaterCo') or (Field_Name = FieldNamePrice) or
    (Field_Name = 'UnitCommission')) and
    (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [0, 2, 3])
  then
  begin
    DeficitValue1 := Trunc(TotallPrice * qryItems.FieldByName('WaterCo')
      .AsFloat / 100);
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
    (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [0, 2, 3])
  then
  begin
    DeficitValue2 := Trunc((TotallPrice - qryItems.FieldByName('DeficitValue')
      .AsFloat - qryItems.FieldByName('DeficitValue4').AsFloat) *
      qryItems.FieldByName('DeficitValueCo2').AsFloat / 100);
    if qryItems.FieldByName('DeficitValue2').AsCurrency <> DeficitValue2 then
      qryItems.FieldByName('DeficitValue2').AsCurrency := DeficitValue2;
  end;

  if ((Field_Name = 'DeficitValueCo4') or (Field_Name = FieldNamePrice) or
    (Field_Name = 'UnitCommission')) and
    (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [0, 2, 3])
  then
  begin
    DeficitValue4 := Trunc((TotallPrice - qryItems.FieldByName('DeficitValue')
      .AsFloat - qryItems.FieldByName('DeficitValue2').AsFloat) *
      qryItems.FieldByName('DeficitValueCo4').AsFloat / 100);
    if (qryItems.FieldByName('DeficitValue4').AsCurrency = 0) and
      (qryItems.FieldByName('DeficitValue4').AsCurrency <> DeficitValue4) then
      qryItems.FieldByName('DeficitValue4').AsCurrency := DeficitValue4;
  end;

  if DeficitValue3Active then
    if ((Field_Name = 'DeficitValueCo3') or (Field_Name = FieldNamePrice) or
      (Field_Name = 'UnitCommission')) and
      (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [0, 2, 3])
    then
    begin
      DeficitValue3 := Trunc((qryItems.FieldByName(FieldNamePrice).AsCurrency -
        qryItems.FieldByName('DeficitValue').AsFloat) *
        qryItems.FieldByName('DeficitValueCo3').AsFloat / 100);
      // if qryItems.FieldByName('DeficitValue3').AsCurrency <> DeficitValue then
      qryItems.FieldByName('DeficitValue3').AsCurrency := DeficitValue3;
    end;
  /// new

  if ((Field_Name = 'DeficitValue') or (Field_Name = FieldNamePrice) or
    (Field_Name = 'UnitCommission')) and
    (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [1, 2, 3])
    and (TotallPrice <> 0) then
  begin
    WaterCo1 := RoundTo(qryItems.FieldByName('DeficitValue').AsCurrency * 100 /
      TotallPrice, RoundCount); // RoundCount
    if qryItems.FieldByName('WaterCo').AsFloat <> WaterCo1 then
    begin
      qryItems.FieldByName('WaterCo').OnChange := nil;
      qryItems.FieldByName('WaterCo').AsFloat := WaterCo1;
      qryItems.FieldByName('WaterCo').OnChange := qryItemsWaterCoChange;
    end;

  end;

  CalcSellPrice

end;

procedure TReciptsGridF.ppLblHeaderGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormHeader').AsString;
end;

procedure TReciptsGridF.actReportSearchExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.show(ppReport1, 'recipt', Self);
end;

procedure TReciptsGridF.actRowExecute(Sender: TObject);
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

procedure TReciptsGridF.actReciptItemsDetailsExecute(Sender: TObject);
var
  id: Largeint;
begin
  inherited;
  ReciptItemsDetailsF.Enter(qryReciptItemsDetails, qryItems, qryRecipts,
    FormOutput);
  if not(qryItems.State in dsEditModes) then
  begin
    id := qryItemsID.AsLargeInt;
    qryItems.Requery();
    qryItems.Locate('ID', id, []);
  end;

end;

procedure TReciptsGridF.actReciptOnFormsRangeExecute(Sender: TObject);
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

procedure TReciptsGridF.FormActivate(Sender: TObject);
begin
  inherited;
  try
    if Assigned(qryRecipts) and (qryRecipts.State in dsEditModes) then
    begin
      if MyStuffCode <> 0 then
      begin
        if Assigned(qryItems) and not(qryItems.State in dsEditModes) then
          qryItems.Insert;
        if Assigned(qryItems) and (qryItems.State in dsEditModes) and
          (qryItemsStuffCode.AsLargeInt = 0) then
        begin
          qryItemsStuffCode.AsLargeInt := MyStuffCode;
          MyStuffCode := 0;
          // DBGrid1.SetFocus; // موقتاً کامنت
          DBGrid1.SelectedIndex := 0;
        end;
      end;

      if myCustID <> 0 then
      begin
        if PnlPerson1.Visible and (qryReciptsPersonID1.AsLargeInt = 0) then
        begin
          qryReciptsPersonID1.AsInteger := myCustID;
          myCustID := 0;
          // EdtPersonID1.SetFocus; // موقتاً کامنت
        end;
      end;
    end;

    // موقتاً غیرفعال برای تست
    if DBGrid1.Height <= 100 then
    begin
      qryAllRecipts.First;
      qryAllRecipts.Last;
    end;
  except
    on E: Exception do
      ShowMessage('Exception in FormActivate: ' + E.Message);
  end;
end;

procedure TReciptsGridF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

  if (PaymentsActive = 2) and (CalcSumFileds(qryReciptsPaymentsPayment) = 0) and
    (CalcSumFileds(qryItemsUnitSellPrice) > 0) then
  begin
    CanClose := False;
    Warn2('نحوه پرداخت مشخص نشده است', 2000);
  end;

end;

procedure TReciptsGridF.FormCreate(Sender: TObject);
var
  UserSCA: Largeint;
  b: Boolean;
begin
  inherited;

  IsSendingMoadiyan := False;
  Mnusandbox.Checked := (DebugHook <> 0);

  mnuEntity.Checked := opt.EntityOrWeight = 0;
  mnuWeight.Checked := opt.EntityOrWeight = 1;
  mnuEntity.Visible := opt.EntityOrWeight = 2;
  mnuWeight.Visible := opt.EntityOrWeight = 2;

  mnuViewItemInFolder.Visible := User.ViewItemInFolder;

  // DBGrid1.ReadOnly:=True;
  DeviceTypePrinter := False;
  GetExcelAct := False;
  myStore := DM.myStore;
  aBigPanel.Visible := opt.showBig;
  SetLookUpCash(qryRecipts);
  RequestedChangeON := True;
  if opt.StuffCodingKind in [0] then
  begin
    // qryItems_Tabageh.Free;
    // qryItems_Nevisandeh.Free;
    // qryItems_Motarjem.Free;
    // qryItems_ChapYear.Free;
    // qryItems_gateKetab.Free;
    // qryItems_NoeJeld.Free;
    // qryItems_moalef.Free;
    // qryItems_PakhashCompany.Free;

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
    ReciptsGridF.initFormQry;
  except
    on E: Exception do
    begin
      Warn2(E.Message);
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
          MyEntityDisplayType,formType);

      EdtStoreID.Enabled := False;
      btnStoreID.Enabled := False;
    end;
    SQL.Text :=
      'SELECT Recipts.ReciptID, Recipts.YearID, Recipts.ServerID, Recipts.PersonID1, Recipts.PersonID2';
    SQL.Add(', Recipts.PersonID3, Recipts.PersonID4,Recipts.PersonID5, Recipts.StoreID');
    SQL.Add('FROM Recipts');
    UserSCA := qryinit.FieldByName('UserSecurityCheckActive').AsLargeInt;
    if UserSecurityCheck(UserSCA, UserFilterFormOnCustomer1) and
      (not User.PowerUser) then
    begin
      SQL.Add('INNER JOIN Customers AS Customers_1 ON Recipts.PersonID1 = Customers_1.CustID ');
      SQL.Add('AND ('',''+Customers_1.OperatorID+'','' LIKE N''%,' +
        User.id.ToString.Trim + ',%'')');
    end;
    if UserSecurityCheck(UserSCA, UserFilterFormOnCustomer2) and
      (not User.PowerUser) then
    begin
      SQL.Add('INNER JOIN Customers AS Customers_2 ON Recipts.PersonID2 = Customers_2.CustID ');
      SQL.Add('AND ('',''+Customers_2.OperatorID+'','' LIKE N''%,' +
        User.id.ToString.Trim + ',%'')');
    end;
    if UserSecurityCheck(UserSCA, UserFilterFormOnCustomer3) and
      (not User.PowerUser) then
    begin
      SQL.Add('INNER JOIN Customers AS Customers_3 ON Recipts.PersonID3 = Customers_3.CustID ');
      SQL.Add('AND ('',''+Customers_3.OperatorID+'','' LIKE N''%,' +
        User.id.ToString.Trim + ',%'')');
    end;

    SQL.Add('WHERE (Recipts.ReciptType = :ReciptType) AND (Recipts.YearID = :YearID ) ');
    SQL.Add(StrReciptNumber);
    SQL.Add('And(Recipts.StoreID BetWeen :StoreIDFrom and :StoreIDTo )');

    SQL.Add('And(Recipts.PersonID1 BetWeen :PersonID1From and :PersonID1To )');
    SQL.Add('And(Recipts.PersonID2 BetWeen :PersonID2From and :PersonID2To )');
    SQL.Add('And(Recipts.PersonID3 BetWeen :PersonID3From and :PersonID3To )');
    SQL.Add('And(Recipts.PersonID4 BetWeen :PersonID4From and :PersonID4To )');

    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin2 , :UserID2 , Recipts.PersonID1) = 1)');
      Parameters.ParamByName('UserAdmin2').Value :=
        ifthen(User.PowerUser, 1, 0);
      Parameters.ParamByName('UserID2').Value := User.id;
    end;

    SQL.Add('AND (dbo.ChkUsersSellsEmporium(:UserAdmin3 , :UserID3,:UserSecurityCheckActive,Recipts.SellsEmporium) = 1) ');
    Parameters.ParamByName('UserAdmin3').Value := ifthen(User.PowerUser, 1, 0);
    Parameters.ParamByName('UserID3').Value := User.id;
    Parameters.ParamByName('UserSecurityCheckActive').Value :=
      qryinit.FieldByName('UserSecurityCheckActive').AsLargeInt;

    SQL.Add('And(Recipts.ReciptDate BetWeen :ReciptDateFrom and :ReciptDateTo )');

    SQL.Add('And(Recipts.SellsEmporium BetWeen :SellsEmporiumFrom and :SellsEmporiumTo)');

    if UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive')
      .AsInteger, UserRegistrarShowForm) and (not User.PowerUser) then
      SQL.Add(Format('AND (Recipts.OperatorID = %d)', [User.id]));
    SQL.Add('ORDER BY Recipts.ReciptNumber');
    SQL.Add('OPTION (RECOMPILE);');

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

    Parameters.ParamByName('PersonID1From').Value := -2147483646;
    Parameters.ParamByName('PersonID1To').Value := 2147483647;

    Parameters.ParamByName('PersonID2From').Value := -2147483646;

    Parameters.ParamByName('PersonID2To').Value := 2147483647;

    Parameters.ParamByName('PersonID3From').Value := -2147483646;
    Parameters.ParamByName('PersonID3To').Value := 2147483647;

    Parameters.ParamByName('PersonID4From').Value := -2147483646;
    Parameters.ParamByName('PersonID4To').Value := 2147483647;

    // Parameters.ParamByName('PersonID5From').Value := -2147483646;
    // Parameters.ParamByName('PersonID5To').Value := 2147483647;

    Parameters.ParamByName('SellsEmporiumFrom').Value := -99999999;
    Parameters.ParamByName('SellsEmporiumTo').Value := 2147483647;

    AfterScroll := nil;
    qryItems.AfterScroll := nil;
    // SQL.Text:=GetUsersStore(SQL.Text);
    Active := True;
    AfterScroll := qryAllReciptsAfterScroll;

    // if RecNo=0 then qryRecipts.Active:=True;
    if FilterShow then
      Last;
    qryItems.AfterScroll := qryItemsAfterScroll;

    if AutoInsertPostInsert and (not OpenFromList) and qryRecipts.Active then
      qryRecipts.Insert;
  end; // with
  initForm4Output;
  initReportName(qryinit, PopMuPrint, mnu4allClick);
  PrintCount := 1;
  If qryinit.FieldByName('PrintCount').AsInteger > 1 then
    PrintCount := qryinit.FieldByName('PrintCount').AsInteger;

  CreateComPort(True);

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
  DBGrid1.SetFooter4Sum(['WaterCo', 'DeficitValueCo2', 'DeficitValueCo3',
    'DeficitValueCo4', 'TaxCo', 'AidNumber', 'UnitSellPrice', 'ArzRate']);
  ppDBPipelineSumGrid1.DataSource := DBGrid1.srcSum;

end;

procedure TReciptsGridF.mnu4allClick(Sender: TObject);

var
  s: string;
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
      qryItems.DisableControls; // بخاطر کار نکردن اسکرول بعضی کوری ها
      qryTransFormItems.DisableControls;
      qryReciptOnFormsRange.DisableControls;
      qry_Deficits4Print.DisableControls;
      qry_Deficits4PrintID10.DisableControls;
      qry_Deficits.DisableControls;
      qryReciptsPayments.DisableControls;

      s := (Sender as TMenuItem).Hint;
      ChkReportFileName(s);
      (Sender as TMenuItem).Hint := s;

      SeletedPrint(ppDBPipeline1, DBGrid1);
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

procedure TReciptsGridF.MnuBarCodeClick(Sender: TObject);
begin
  inherited;
  PrintBarcode(qryinit, qryItems, ppReportBarcode, cliBarcode,
    pdtlbndBarcodeppDetailBand3, Form_InOut, 'ReportFileName',
    (Sender as TMenuItem).Hint)

end;

procedure TReciptsGridF.ChkReportFileName(var ReportFileName: string);

var
  i: Integer;
  SellsFileNames: string;
begin
  if (ShowNotEntityOnSearch and Integer(chkPrintOnSellsEmporium)) <> 0 then
  begin
    if (qryRecipts.FindField('_ReportFileName') <> nil) then
    begin
      SellsFileNames := qryRecipts.FieldByName('_ReportFileName').AsString.Trim;
      if (SellsFileNames <> EmptyStr) then
      begin
        if Pos(ReportFileName, SellsFileNames) = 0 then
        begin
          Warn2('برای این مرکز فروش چاپ مشخص شده است');
          i := Pos(';', SellsFileNames);
          if i > 0 then
            ReportFileName := LeftStr(SellsFileNames, i - 1)
          else
            ReportFileName := SellsFileNames;
        end;
      end;
    end;
  end;
end;

procedure TReciptsGridF.cmbPortageBedbesDblClick(Sender: TObject);
begin
  inherited;
  if (qryRecipts.State in dsEditModes) then
    qryRecipts.Post;
  SaveConfig(APPID, APPBank.Name + '_ReciptsGridF_PortageBedbes' +
    IntToStr(formType), qryReciptsPortageBedbes.AsString);
  Warn2('پیش فرض تاثیر حساب تنظیم شد', 1000);

end;

procedure TReciptsGridF.mnuCalcGiftItemsClick(Sender: TObject);
begin
  inherited;
  qryReciptsCalcGiftItems.AsBoolean := not qryReciptsCalcGiftItems.AsBoolean;
  mnuCalcGiftItems.Checked := qryReciptsCalcGiftItems.AsBoolean
end;

procedure TReciptsGridF.qryReciptsBeforeInsert(DataSet: TDataSet);
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

procedure TReciptsGridF.SetSelected_StuffCode;

var
  qry: TADOQuery;
  s: string;
begin
  if ShowNotEntityOnSearch and Integer(CHkDelInSearchSelected) <> 0 then
  begin
    if qryItems.State = dsBrowse then
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

procedure TReciptsGridF.btnRialsEqualChangeClick(Sender: TObject);
begin
  inherited;
  RialsEqualChange;
end;

procedure TReciptsGridF.btnTax1Click(Sender: TObject);
begin
  inherited;
  CreateChildForm(TCustomersTaxF, CustomersTaxF, mainF,
    qryReciptsPersonID1.AsInteger, alNone)
  // mdiMainF.actCustomersTaxF.Execute
end;

procedure TReciptsGridF.btnTaxClick(Sender: TObject);
begin
  inherited;
  if not(mnuEntity.Checked or mnuWeight.Checked) then
    Warn('لطفا نوع ارسال  مقدار یا وزن را مشخص کنید');

  if grdTax <> nil then
    grdTax.Visible := True;
  popMoaadiyan.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsGridF.dbchkInsrClick(Sender: TObject);
begin
  inherited;
  if not(qryRecipts.State in dsEditModes) then
    exit;
  if dbchkInsr.Checked then
  begin
    if qryReciptsIndati2m.IsNull then
      qryReciptsIndati2m.AsDateTime := Now;
  end
  else
    qryReciptsIndati2m.Clear;
end;

procedure TReciptsGridF.btnTozinClick(Sender: TObject);

var
  txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  qryTozin.Requery();
  if ((Settings and Integer(chkTozinDate)) <> 0) then
    txt := 'AND(TozinDate =''%S'' )'
  else
    txt := 'AND(TozinDate <=''%S'' )';

  txt := 'SELECT TozinNumber, Note, TozinID FROM Vu_Tozin ' +
    'WHERE (YearID = %d) AND (MachineWeight > 0) ' + txt +
    ifthen(qryinit.FieldByName('EffectType').AsInteger in [3, 4],
    'AND(WeightKind=0)', 'AND(WeightKind=1)');
  // AND (MachineFullWeight > 0)

  txt := Format(txt, [APPBank.Year, qryReciptsReciptDate.AsString]);
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' باسکول ', txt,
    ['شماره', 'توضیحات ', 'کد'], Results, [50, 200, 50], alLeft);
  if b then
  begin
    qryRecipts.FieldByName('TozinID').AsString := Results[2];
  end;

end;

procedure TReciptsGridF.DBGrid1EditButtonClick(Sender: TObject);

var
  aDataSet: TDataSet;
  k, id: SmallInt;
  txt, txtview, s_StoreID, TxtScroll, TxtYearID, fldname: String;
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
  id := (Sender as TCedarDbgrid).SelectedIndex;
  if DBGrid1.Columns[id].ReadOnly then
    exit;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  (Sender as TCedarDbgrid).SelectedIndex := id;

  if (DBGrid1.Columns[id].FieldName = '_StuffTecInfo') or
    (DBGrid1.Columns[id].FieldName = 'CountDetails') then
  begin
    actReciptItemsDetails.Execute;
    exit;
  end;

  ShowEntityOnSearch := qryinit.FieldByName('ShowEntityOnSearch').AsInteger;
  b := False;
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;

  if not(aDataSet.State in dsEditModes) then
    aDataSet.edit;

  s_StoreID := qryReciptsStoreID.AsInteger.ToString;

  if DBGrid1.Columns[id].FieldName = 'StereotypyID' then
  begin
    if not(qryRecipts.State in dsEditModes) then
      exit;
    txt := 'SELECT StereotypyID, StereotypyCaption FROM Stereotypy';
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'کلیشه ها', txt,
      ['کد', 'عنوان'], Results, [50, 150], alLeft);
    if b then
      qryItems.FieldByName('StereotypyID').AsString := Results[0];
    exit;
  end;

  if DBGrid1.Columns[id].FieldName = 'UseOtherID_Item' then
  begin
    if not(qryRecipts.State in dsEditModes) then
      exit;
    txt := 'SELECT UseOtherID, UseOtherName,HealthNumber FROM UseOthers';
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'سایر محل های مصرف', txt,
      ['کد', 'شرح'], Results, [50, 150], alLeft);
    if b then
      qryItems.FieldByName('UseOtherID_Item').AsString := Results[0];
    exit;
  end;

  if DBGrid1.Columns[id].FieldName = 'StuffCodingItemID' then
  begin
    if not(qryRecipts.State in dsEditModes) then
      exit;
    txt := 'SELECT StuffCodingItemID, Length_, Width, Thickness,' +
      ' Weight_, Barcode, Description_ FROM StuffCodingItems' +
      Format(' WHERE (StuffCode = %d )', [qryItemsStuffCode.AsLargeInt]);
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'اجزاء كالا', txt,
      ['شناسه جزء', 'طول', 'عرض', 'ضخامت', 'وزن', 'باركد', 'توضيحات'], Results,
      [50, 50, 50, 50, 50, 50, 100], alLeft);
    if b then
    begin
      if not(qryItems.State in dsEditModes) then
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
          GetReciptItemIDs(CurrentEntity, CurrentWeight, qryItems, qryinit,
          Form_InOut, MyEntityDisplayType, 'ID', False), formType,
          qryReciptsPersonID1.AsInteger]);
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
          + ' Cnt.Contracts.ContractNo, Cnt.Contracts.ContractDate, Cnt.Contracts.TaxAble'
          + ' FROM Cnt.ContractOperations INNER JOIN' +
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
          ' WHERE (Cnt.Contracts.EmployerId = %d )';
        txt := txt + ' AND (StuffCoding.State = 0)';
        if (IsFormOutput(qryinit)) then
          txt := txt + ' AND (StuffCoding.BlockOutput = 0)';

        txt := Format(txt, [formType, qryReciptsReciptID.AsInteger,
          qryReciptsPersonID1.AsInteger]);
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
          ['كد', 'عنوان', 'مشخصات فني', 'واحد', 'مقدار', 'مقدارخارج شده',
          'مقدارمانده', 'في', 'توضيحات', 'شناسه قرارداد', 'شماره قرارداد',
          'تاريخ قرارداد', ''], Results, [80, 80, 80, 80, 80, 80, 80, 80, 80,
          80, 80, 80, 0], alLeft);
        if b then
        begin
          if not(qryItems.State in dsEditModes) then
            qryItems.edit;
          qryItemsStuffCode.AsString := Results[0];
          qryItems.FieldByName(FieldNameEntity).AsString := Results[4];
          qryItemsUnitSellPrice.AsString := Results[7];
          qryRecipts.FieldByName('AidNumber').AsString := (Results[7]);
          qryItems.FieldByName('AidNumber').AsString := (Results[10]);
          qryItems.FieldByName('AidDate').AsString := Results[11];
          if Trim(Results[12]) = '1' then
            qryItems.FieldByName('Taxco').AsFloat :=
              qryinit.FieldByName('VATCo').AsFloat
          else
            qryItems.FieldByName('Taxco').AsFloat := 0;

          exit;
        end;

      End;

      if b then
      begin
        if not(qryItems.State in dsEditModes) then
          qryItems.edit;
        qryItemsStuffCode.AsString := Results[0];
        if not(qryRecipts.State in dsEditModes) then
          qryRecipts.edit;

        if qryinit.FieldByName('ControlEntityActive').AsInteger = 1 then
        begin
          qryRecipts.FieldByName('AidNumber').AsString := (Results[8]);
          qryItemsUnitSellPrice.AsString := Results[6];
        end
        else
        begin
          qryItemsUnitSellPrice.AsString := Results[5];
          qryRecipts.FieldByName('AidNumber').AsString := (Results[7]);
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
          fldname := 'UnitSellPrice';
        end
        else
        begin
          PersonID1 := 0;
          txt := ' WHERE (ContractsStatus = 1) ';
          fldname := 'SellPrice' +
            IntToStr(qryRecipts_CustValuationType.AsInteger + 1);
        end;
        txt := 'SELECT DISTINCT c_stuffcode, c_StuffName, c_StuffTecInfo, UnitName, '
          + fldname +
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
          if not(qryItems.State in dsEditModes) then
            qryItems.edit;
          qryItemsStuffCode.AsString := Results[0];
          UnitSellPrice := Results[4].ToDouble;
          UnitSellPrice := UnitSellPriceAutoPrice_14_15(UnitSellPrice,
            qryItems);
          qryItemsUnitSellPrice.AsFloat := UnitSellPrice;
          qryItemsControlCode.AsString := Results[6];
          // qryRecipts.FieldByName('AidNumber').AsString := StrToInt(Results[0]);
          // qryItems.FieldByName('AidNumber').AsString := StrToInt(Results[0]);
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
            '))' + ifthen(ShowNotEntityOnSearch and
            Integer(CHkDelInSearchNotEntity) <> 0, ' AND (SumEntity <> 0) ',
            ''), ['كد كتاب', 'عنوان كتاب', 'واحد', 'مشخصات فني', 'طبقه',
            'نام نويسنده', 'شركت پخش', 'مترجم', 'سال چاپ', 'قطع كتاب',
            'نوع جلد', 'بهاي فروش', 'موجودي'], Results,
            [50, 100, 50, 70, 100, 50, 70, 70, 50, 50, 50, 50, 60], alLeft, 3);
      end;
      if b then
      begin
        if not(qryItems.State in dsEditModes) then
          qryItems.edit;
        qryItemsStuffCode.AsString := Results[0];
      end;
      exit;
    end;
    colTopics_1_3[0] := 'کد';
    colTopics_1_3[1] := 'نام كالا';
    colTopics_1_3[2] := 'مشخصات فني';

    if PriceOn_StoreType then
    begin
      colTopics_1_3[3] := 'بهاي فروش/خرید 1';
      colTopics_1_3[4] := 'بهاي فروش/خرید 2';
    end
    else
    begin
      colTopics_1_3[3] := '';
      colTopics_1_3[4] := '';
      colWidths_1_3[3] := 0;
      colWidths_1_3[4] := 0;
    end;

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
    // orderPoint
    colTopics_1_3[8] := 'محل نگهداری';
    colWidths_1_3[8] := 80;
    // c_KeepPlace

    colTopics_1_3[9] := 'کد تفصیلی';
    colWidths_1_3[9] := 80;
    // acc_DetaiCode
    countCosnt := 9;

    if ShowEntityOnSearch = 10 then
      countCosnt := 12;

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

        colTopics_1_3[8 + i] := GetStName(i);
        colWidths_1_3[8 + i] := 80;
      end;
    end;

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

    if qryinit.FieldByName('ControlEntityActive').AsInteger = 6 then
      TxtYearID := TxtYearID + ' AND (ReciptItems.PersonID1 = ' +
        IntToStr(qryItems.FieldByName('PersonID1').AsInteger) + ')';

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
      + ' M.SellPrice1,M.SellPrice2';

    txt := txt + ifthen(ShowEntityOnSearch in [7, 9],
      ', MAX(Mojodi.Entity) AS Entity, MAX(Mojodi.Weight) AS Weight',
      ',0 AS e,0 AS w') + ',ScS.orderPoint,StuffCoding.c_KeepPlace' + st_Fld +
      Fields_SD_1_9 +
      ',StuffCoding.acc_DetaiCode as کدتفصیلی FROM StuffCoding INNER JOIN ' +
      ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode ';

    if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
      txt := txt +
        ' INNER JOIN Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID ' +
        ' LEFT OUTER JOIN StuffCodingStock AS ScS ON StuffCoding.c_StuffCode = ScS.StuffCode and  Stores.n_StoreID = ScS.StoreID'
    else
      txt := txt +
        ' LEFT OUTER JOIN StuffCodingStock AS ScS ON StuffCoding.c_StuffCode = ScS.StuffCode ';

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

        ifthen(ShowEntityOnSearch = 7, ' AND (YearID = ' +
        qryRecipts.FieldByName('YearID').AsString + ')', '') +
      /// Bsell_Nashr_93
        ' GROUP BY StuffCode) AS Mojodi ON StuffCoding.c_StuffCode = Mojodi.StuffCode';

    end;

    txt := txt + ' LEFT OUTER JOIN ' +
      ' (SELECT TOP (1) Mi.StuffCode, Mi.SellPrice1, Mi.SellPrice2 ' +
      'FROM Manifesto M INNER JOIN ManifestoItems Mi ON M.ManifestoID = Mi.ManifestoID '
      + 'WHERE (M.SellOrBuy = ' + ifthen(((SellEffect <> 2) AND (BuyEffect <> 1)
      ), '0', '1') + ') AND (M.ManifestoRunDate <= ''' + qryRecipts.FieldByName
      ('ReciptDate').AsString + ''') ' +
      'ORDER BY M.ManifestoRunDate DESC, M.ManifestoNo DESC) AS M ON StuffCoding.c_StuffCode = M.StuffCode ';

    txt := txt + ' WHERE  (StuffCoding.State = 0)';
    if (IsFormOutput(qryinit)) then
      txt := txt + ' AND (StuffCoding.BlockOutput = 0)';
    if pnlStore1.Visible then
      txt := txt + ' AND (StoreStuffs.n_StoreID = ' + s_StoreID + ' ) ';

    txt := txt + 'AND (StuffCoding.c_StuffCode NOT IN(' +
      SelectedStuffCode + '))';

    if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
      txt := txt + ' AND (Stores.StoreKind IN (' + qryinit.FieldByName
        ('StoreKindList').AsString + '))';

    txt := txt +
      ' GROUP BY StuffCoding.c_StuffCode,StuffCoding.acc_DetaiCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo,'
      + ' M.SellPrice1,M.SellPrice2 ,ScS.orderPoint,StuffCoding.c_KeepPlace ';
    txt := txt + st_FldGROUPBY + Fields_SD_1_9;
    // ShowEntityOnSearch:= StrToInt(Trim(get_box(' شماره رديف فرم را وارد كنيد',
    // 'شماره رديف فرم:', IntToStr(ShowEntityOnSearch))));

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

          txt := ' SELECT dbo.ReciptItems_Stock.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,M.SellPrice1,  '
            + ' MAX((CASE ReciptItems_Stock.EffectType WHEN 2 THEN dbo.ReciptItems_Stock.UnitSellPrice ELSE 0 END)) AS MaxUnitSellPrice, '
            + ' ROUND(SUM(dbo.ReciptItems_Stock.InputEntity - dbo.ReciptItems_Stock.OutputEntity),2) AS SumEntity, '
            + ' ROUND(SUM(dbo.ReciptItems_Stock.InputWeight - dbo.ReciptItems_Stock.OutputWeight),2) AS SumWeight '
            + Fields_SD_1_9 + ' FROM   ReciptItems_Stock ' +
            ' INNER JOIN dbo.StuffCoding ON dbo.ReciptItems_Stock.StuffCode = dbo.StuffCoding.c_StuffCode '
            + ' INNER JOIN Stores ON ReciptItems_Stock.StoreID = Stores.n_StoreID '

            + ' LEFT OUTER JOIN ' +
            ' (SELECT TOP (1) Mi.StuffCode, Mi.SellPrice1, Mi.SellPrice2 ' +
            'FROM Manifesto M INNER JOIN ManifestoItems Mi ON M.ManifestoID = Mi.ManifestoID '
            + 'WHERE (M.SellOrBuy = ' +
            ifthen(((SellEffect <> 2) AND (BuyEffect <> 1)), '0', '1') +
            ') AND (M.ManifestoRunDate <= ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''') ' +
            'ORDER BY M.ManifestoRunDate DESC, M.ManifestoNo DESC) AS M ON ReciptItems_Stock.StuffCode = M.StuffCode'
            +

            ' WHERE (ReciptItems_Stock.ReciptDate <= ''' +
            qryRecipts.FieldByName('ReciptDate').AsString + ''')  ' +
            ifthen(pnlStore1.Visible, 'AND (ReciptItems_Stock.StoreID = ' +
            s_StoreID + ')', '') + TxtYearID;
          if (IsFormOutput(qryinit)) then
            txt := txt + ' AND (StuffCoding.BlockOutput = 0)';
          txt := txt + 'AND (StuffCoding.State = 0)';

          txt := txt + 'AND (ReciptItems_Stock.StuffCode NOT IN(' +
            SelectedStuffCode + '))' +
            ' GROUP BY dbo.ReciptItems_Stock.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,M.SellPrice1 '
            + Fields_SD_1_9 + ifthen(ShowNotEntityOnSearch and
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

          if PriceOn_StoreType then
          begin
            colWidths_1_3[5] := 80;
            colTopics_1_3[5] := 'بهاي فروش 1';
            colWidths_1_3[6] := 80;
            colTopics_1_3[6] := 'بهاي فروش 2';
            colWidths_1_3[7] := 80;
            colTopics_1_3[7] := 'بيشترين بها';
          end;

          if ShowEntityOnSearch = 10 then
          begin
            if PriceOn_StoreType then
            begin
              colWidths_1_3[8] := 80;
              colTopics_1_3[8] := 'بهاي فروش 3';
              colWidths_1_3[9] := 80;
              colTopics_1_3[9] := 'بهاي فروش 4';
              colWidths_1_3[10] := 80;
              colTopics_1_3[10] := 'بهاي فروش 5';
            end;
            colWidths_1_3[11] := 80;
            colTopics_1_3[11] := 'واحد شمارش';

            colWidths_1_3[12] := 80;
            colTopics_1_3[12] := 'StuffName';
            colWidths_1_3[13] := 80;
            colTopics_1_3[13] := 'طبقه';
            colWidths_1_3[14] := 80;
            colTopics_1_3[14] := 'ردیف';
            colWidths_1_3[15] := 80;
            colTopics_1_3[15] := 'محل نگهداري';
            colWidths_1_3[16] := 80;
            colTopics_1_3[16] := 'توضيحات ضروري';
            colWidths_1_3[17] := 80;
            colTopics_1_3[17] := 'نقطه سفارش';
            colWidths_1_3[18] := 80;
            colTopics_1_3[18] := 'کدتفصیلی';

          end
          else
          begin
            colWidths_1_3[8] := 80;
            colTopics_1_3[8] := 'StuffName';
            colWidths_1_3[9] := 80;
            colTopics_1_3[9] := 'طبقه';
            colWidths_1_3[10] := 80;
            colTopics_1_3[10] := 'ردیف';
            colWidths_1_3[11] := 80;
            colTopics_1_3[11] := 'محل نگهداري';
            colWidths_1_3[12] := 80;
            colTopics_1_3[12] := 'توضيحات ضروري';
            colWidths_1_3[13] := 80;
            colTopics_1_3[13] := 'نقطه سفارش';
            colWidths_1_3[14] := 80;
            colTopics_1_3[14] := 'کدتفصیلی';

          end;

          txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, '
            + ' abcd.SUMEntity, abcd.SUMWeight,M.SellPrice1,M.SellPrice2,abcd.MaxUnitSellPrice'
            + ifthen(ShowEntityOnSearch = 10,
            ',M.SellPrice3,M.SellPrice4,M.SellPrice5,Units.UnitName', '')

            + Fields_SD_1_9 +

            ',StuffCoding.c_StuffName_L2,StuffCoding.Cabinet,StuffCoding.Tierced,StuffCoding.c_KeepPlace,StuffCoding.StuffNote'
            + ',abcd.orderPoint,StuffCoding.acc_DetaiCode' +

            ' FROM StuffCoding ' +
            ' INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode '
            + ' LEFT OUTER JOIN (SELECT ReciptItems.StuffCode,orderPoint, MAX((CASE ReciptTypes.EffectType WHEN 2 THEN'
            + ' ReciptItems.UnitSellPrice ELSE 0 END))AS MaxUnitSellPrice, ' +
            ' ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity), 3) AS SUMEntity,'
            + ' ROUND(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight), 3) AS SUMWeight'
            + ' FROM ReciptItems INNER JOIN' +
            ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN'
            + ' ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType' +
            ' INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +
            ' LEFT OUTER JOIN StuffCodingStock AS ScS ON ReciptItems.StuffCode = ScS.StuffCode and  Stores.n_StoreID = ScS.StoreID'

            + ' WHERE (Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''') ' + ifthen(pnlStore1.Visible,
            ' AND (Recipts.StoreID = ' + s_StoreID + ')', '') +
            ' AND (ReciptTypes.EffectType IN (2,4)) AND (Recipts.ReciptState < 3)'
            + TxtYearID + ' GROUP BY ReciptItems.StuffCode,orderPoint ' +
            ' HAVING (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) >= 0.0001) OR'
            + ' (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <= - 0.0001) OR'
            + ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) >= 0.0001) OR'
            + ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) <= - 0.0001)) AS abcd ON'
            + ' StuffCoding.c_StuffCode = abcd.StuffCode' +
            ifthen(ShowEntityOnSearch = 10,
            ' INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode', '')

            + ' LEFT OUTER JOIN ' +
            ' (SELECT TOP (1) Mi.StuffCode, Mi.SellPrice1, Mi.SellPrice2, Mi.SellPrice3, Mi.SellPrice4, Mi.SellPrice5 '
            + 'FROM Manifesto M INNER JOIN ManifestoItems Mi ON M.ManifestoID = Mi.ManifestoID '
            + 'WHERE (M.SellOrBuy = ' +
            ifthen(((SellEffect <> 2) AND (BuyEffect <> 1)), '0', '1') +
            ') AND (M.ManifestoRunDate <= ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''') ' +
            'ORDER BY M.ManifestoRunDate DESC, M.ManifestoNo DESC) AS M ON StuffCoding.c_StuffCode = M.StuffCode '
            +

            ' WHERE (StoreStuffs.n_StoreID = ' + s_StoreID + ')';
          if (IsFormOutput(qryinit)) then
            txt := txt + ' AND (StuffCoding.BlockOutput = 0)';
          txt := txt + 'AND (StuffCoding.State = 0)';

          txt := txt + 'AND (StuffCoding.c_StuffCode NOT IN(' +
            SelectedStuffCode + '))';
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
            + ' (LookUps.Kind = 15) ' + TxtYearID;

          if (IsFormOutput(qryinit)) then
            txt := txt + ' AND (StuffCoding.BlockOutput = 0)';
          txt := txt + 'AND (StuffCoding.State = 0)';

          txt := txt + 'AND (StuffCoding.c_StuffCode NOT IN(' +
            SelectedStuffCode + ')) ' +
            ' GROUP BY ReciptItems.StuffCode, ReciptItems.ProductModel, LookUps.Name, StuffCoding.c_StuffName'
            + ' ,StuffCoding.c_StuffTecInfo, Units.UnitName,  LookUps.LookUpID  ';
          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            ['كدكالا', '', 'كالا', 'واحد', 'كدمدل', 'مدل', 'مشخصات فني',
            'موجودي'], Results, [100, 0, 100, 50, 100, 100, 100, 100], alLeft);
          if b then
          begin
            if not(qryItems.State in dsEditModes) then
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
            + ' WHERE (StoreStuffs.n_StoreID = ' + s_StoreID + ')';
          if (IsFormOutput(qryinit)) then
            txt := txt + ' AND (StuffCoding.BlockOutput = 0)';
          txt := txt + 'AND (StuffCoding.State = 0)';

          txt := txt + 'AND (StuffCoding.c_StuffCode NOT IN(' +
            SelectedStuffCode + '))';
          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            ['كدكالا', 'كالا', 'واحد', 'مشخصات فني', 'موجودي'], Results,
            [100, 100, 50, 100, 100], alLeft);
        end;

      6:
        begin
          txt := ' SELECT dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,M.SellPrice1,  '
            + ' MAX((CASE ReciptTypes.EffectType WHEN 2 THEN dbo.ReciptItems.UnitSellPrice ELSE 0 END)) AS MaxUnitSellPrice, '
            + ' SUM(dbo.ReciptItems.InputEntity - dbo.ReciptItems.OutputEntity) AS SumEntity '
            + ',c_KeepPlace'

            + ' FROM   dbo.ReciptItems INNER JOIN ' +
            'dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID INNER JOIN '
            + 'dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTypes.ReciptType INNER JOIN '
            + 'dbo.StuffCoding ON dbo.ReciptItems.StuffCode = dbo.StuffCoding.c_StuffCode '
            + 'INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +

            ' LEFT OUTER JOIN ' +
            ' (SELECT TOP (1) Mi.StuffCode, Mi.SellPrice1, Mi.SellPrice2 ' +
            'FROM Manifesto M INNER JOIN ManifestoItems Mi ON M.ManifestoID = Mi.ManifestoID '
            + 'WHERE (M.SellOrBuy = ' +
            ifthen(((SellEffect <> 2) AND (BuyEffect <> 1)), '0', '1') +
            ') AND (M.ManifestoRunDate <= ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''') ' +
            'ORDER BY M.ManifestoRunDate DESC, M.ManifestoNo DESC) AS M ON StuffCoding.c_StuffCode = M.StuffCode '
            +

            'WHERE (dbo.Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''')  ' + ifthen(pnlStore1.Visible,
            'AND (dbo.Recipts.StoreID = ' + s_StoreID + ')', '') +
            ' AND (dbo.ReciptTypes.EffectType = 2 OR dbo.ReciptTypes.EffectType = 4) '
            + ' AND (dbo.Recipts.ReciptState < 3) ' + TxtYearID;

          if (IsFormOutput(qryinit)) then
            txt := txt + ' AND (StuffCoding.BlockOutput = 0)';
          txt := txt + 'AND (StuffCoding.State = 0)';

          txt := txt + 'AND (StuffCoding.c_StuffCode NOT IN(' +
            SelectedStuffCode + '))';
          txt := txt +
            ' GROUP BY dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,M.SellPrice1 '
            + ',c_KeepPlace' + ifthen(ShowNotEntityOnSearch and
            Integer(CHkDelInSearchNotEntity) <> 0,
            ' HAVING (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <> 0) ',
            '');
          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            ['كدكالا', 'كالا', 'مشخصات فني', 'بهاي فروش 1', 'بیشترین بها',
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

      11:
        begin
          txtview := 'SELECT * FROM Vu_SearchStuff' + formType.ToString;
          txtview := txtview + ' WHERE  (State = 0)';
          if (IsFormOutput(qryinit)) then
            txtview := txtview + ' AND (BlockOutput = 0)';
          if pnlStore1.Visible then
            txtview := txtview + ' AND (n_StoreID = ' + s_StoreID + ' ) ';

          txtview := txtview + 'AND (c_StuffCode NOT IN(' +
            SelectedStuffCode + '))';

          if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
            txtview := txtview + ' AND (StoreKind IN (' +
              qryinit.FieldByName('StoreKindList').AsString + '))';

          b := searchCode_ADOF.SearchCodeView(DMf.adcBSell, ' كالاها  ',
            txtview, Results, alLeft);
        end;

      12:
        begin
          txtview := 'SELECT * FROM dbo.Fn_SearchStuff' + formType.ToString;

          txtview := txtview + '(' + QuotedStr(qryReciptsReciptDate.AsString);

          if pnlStore1.Visible then
            txtview := txtview + ',' + s_StoreID + ',' + s_StoreID
          else
            txtview := txtview + ',0,9999';

          txtview := txtview + Format(',%d ,%d ,%d ,%d  ,%d )aaaa ',
            [qryRecipts.FieldByName('YearID').AsInteger,
            qryItems.FieldByName('ProductModel').AsInteger,
            qryItems.FieldByName('PersonID1').AsInteger,
            qryRecipts.FieldByName('PersonID1').AsInteger,
            qryRecipts.FieldByName('PersonID2').AsInteger]);

          txtview := txtview + ' WHERE  (State = 0)';
          if (IsFormOutput(qryinit)) then
            txtview := txtview + ' AND (BlockOutput = 0)';

          txtview := txtview + 'AND (c_StuffCode NOT IN(' +
            SelectedStuffCode + '))';

          if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
            txtview := txtview + ' AND (StoreKind IN (' +
              qryinit.FieldByName('StoreKindList').AsString + '))';

          b := searchCode_ADOF.SearchCodeView(DMf.adcBSell, ' كالاها  ',
            txtview, Results, alLeft);

        end;
    end; // case

    if b then
    begin
      if not(qryItems.State in dsEditModes) then
        qryItems.edit;
      qryItemsStuffCode.AsLargeInt := StrToInt64(Results[0]);
    end;
    // if
  END;
  if DBGrid1.Columns[id].FieldName = 'PersonID1' then
    if qryinit.FieldByName('ControlEntityActive').AsInteger <> 6 then
    begin
      if not(qryRecipts.State in dsEditModes) then
        exit;
      txt := 'SELECT DISTINCT CustID,CustName,nationalid FROM Vu_CustomersGroups '
        + GetCustomersGroupTypeSQL('Customer2DetailKind', qryinit);
      b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
        qryinit.FieldByName('Person2DetailCaption').AsString + 'ها ', txt,
        ['کد', qryinit.FieldByName('Person2DetailCaption').AsString, 'کد ملی'],
        Results, [50, 150, 80], alLeft);
      if b then
      begin
        if not(qryItems.State in dsEditModes) then
          qryItems.edit;
        qryItems.FieldByName('PersonID1').AsInteger := StrToInt(Results[0]);
      end;

    end
    else
    begin
      txt := 'AND(R_S.ReciptDate <= ''' + qryRecipts.FieldByName('ReciptDate')
        .AsString + ''')  ' + ifthen(pnlStore1.Visible, 'AND (R_S.StoreID = ' +
        s_StoreID + ')', '');
      SpeedButtonPersonID1dEntity(qryItems, txt);

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
    IF ((RecallTypeOption and Integer(chk_RTO_ChangeAcc_CTopicCode3)) = 0) then
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

  if DBGrid1.Columns[id].FieldName = 'SpecialCode' then
    DBGrid1DblClick(DBGrid1);

end;

procedure TReciptsGridF.gridkeyenter(Sender: TObject; var Key: Char);

var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  i: Integer;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if ShiftDown then
          exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;

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

        if (curIndex > 0) and ((aDataSet.FieldByName('_StuffName').IsNull) and
          (aDataSet.FieldByName('StuffCode').IsNull)) then
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
        if not ShiftDown then
        begin
          Key := #0;
          SendKeys('000', False);
        end;
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if ((DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis) and
        ((not DBGrid1.Columns[curIndex].ReadOnly))) then

    begin
      // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  else
  end; // case

  // if LowerCase(DBGrid1.Columns[curIndex].FieldName) = 'DeficitValueCo4' then
  // begin
  // qryItemsDeficitValueCo4.OnChange := nil;
  // qryItems.Edit;
  // qryItemsDeficitValueCo4.AsInteger := 0;
  // qryItemsDeficitValueCo4.OnChange := qryItemsDeficitValueCo4Change;
  // end;

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);

  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    if (qryinit.FieldByName('RecallType').AsInteger > 0) and
      (not(qryinit.FieldByName('RecallEditKind').AsInteger in [4, 8])) then
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
      begin
        if (qryinit.FieldByName('BarCodeKind').AsInteger in [6]) then
          DBGrid1.SelectedIndex := 0
        else
          (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
      end;
    end;
  // case

end;

procedure TReciptsGridF.grpLoanPaymentDblClick(Sender: TObject);
begin
  inherited;
  qryReciptsLoanPayment.AsCurrency := CalcSumFileds(qryItems, 'TotallSellPrice')
end;

procedure TReciptsGridF.btnStoreIDClick(Sender: TObject);

var
  c, txt, s: String;
begin
  inherited;
  txt := 'SELECT DISTINCT Stores.n_StoreID, Stores.c_StoreName FROM Stores ' +
    'INNER JOIN UsersStore ON Stores.n_StoreID = UsersStore.n_StoreID ';
  txt := txt + ' WHERE((UsersStore.n_UserID = ' + User.id.ToString +
    ') OR (1 = ' + ifthen(User.PowerUser, '1', '0') + ')) ';
  if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
    txt := txt + ' AND (StoreKind IN (' + qryinit.FieldByName('StoreKindList')
      .AsString + '))';
  // محدودیت بر اساس UsersStoreReciptTypes
  txt := txt + ' AND ( NOT EXISTS (SELECT 1 FROM UsersStoreReciptTypes WHERE UserID = ' +
    User.id.ToString + ' AND ReciptType = ' + IntToStr(formType) + ')' +
    ' OR Stores.n_StoreID IN (SELECT StoreID FROM UsersStoreReciptTypes WHERE UserID = ' +
    User.id.ToString + ' AND ReciptType = ' + IntToStr(formType) + ') )';
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

procedure TReciptsGridF.actRecallSpecialExecute(Sender: TObject);

var
  MasterActive: Boolean;
begin
  inherited;
  qryItems.AutoCalcFields := False;
  DBGrid1.SumList.Active := False;

  MasterActive := (RecallTypeOption and Integer(CHk00Master)) <> 0;

  if not((RecallTypeOption and Integer(chkExcelComparisonRecall)) <> 0) then

    if (qryinit.FieldByName('RecallEditKind').AsInteger <> 6) then
      if not(MasterActive) and (not CheckRequiredFields(qryRecipts)) then
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
      2, 5, 10, 11, 13, 15, 16, 18, 21, 22, 23, 25:
        begin
          if qryinit.FieldByName('RecallType').AsInteger = 18 then
          begin
            qryItemsInputEntity.OnChange := nil;
            qryItemsInputWeight.OnChange := nil;
            qryItemsOutputEntity.OnChange := nil;
            qryItemsOutputWeight.OnChange := nil;
          end;

          actRecallSpecialReciptsF.Execute;
        end;
      3:
        RecallBook(1);
      4:
        RecallBook(2);

      7, 12:
        RecallIndentF.SelectRecall(FormOutput, qryinit, qryRecipts, qryItems);
      8, 24:
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

    qryItemsInputEntity.OnChange := qryItemsInputEntityChange;
    qryItemsInputWeight.OnChange := qryItemsInputWeightChange;
    qryItemsOutputEntity.OnChange := qryItemsOutputEntityChange;
    qryItemsOutputWeight.OnChange := qryItemsOutputWeightChange;

    qryItems.AutoCalcFields := True;
    qryItems.OnCalcFields := qryItemsCalcFields;
    qryItems.EnableControls;
    DBGrid1.SumList.Active := True;

  end;
end;

procedure TReciptsGridF.BtnRecallSpecialClick(Sender: TObject);
begin
  inherited;
  getresponseShow := False;
  if (qryItems.State in [dsInsert]) and (qryItemsStuffCode.AsLargeInt = 0) then
    qryItems.Cancel;
  if not chkUsersStoreReciptTypes(qryReciptsStoreID.AsInteger, formType) then
    Abort;
  actRecallSpecial.Execute;
  getresponseShow := True;
end;

procedure TReciptsGridF.RecallBook(flag: Byte);
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
      qryReciptsReciptID.AsInteger, FormOutput, myStore.code, qryItems,
      qryRecipts, qryinit, flag) then
    begin
      qryItems.MoveBy(rid);
    end;
  finally
    qryItems.AfterOpen := qryItemsAfterOpen;
    // qryItems.AfterScroll:=qryItemsAfterScroll;
    qryItems.AfterPost := qryItemsAfterPost;
  end;

end;

procedure TReciptsGridF.BtnExcelClick(Sender: TObject);
begin
  inherited;
  if (qryItems.RecordCount = 0) or (DataSetEdit1.Execute) then
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

procedure TReciptsGridF.actOkInSiteExecute(Sender: TObject);
var
  url: string;
  IdHTTP: TIdHTTP;
  // id_SSL: TIdSSLIOHandlerSocketOpenSSL;
  val: string;
  Recipt, Item, Items, Recipt_Items: string;
  s: string;
  SUCCESS: TSuccess;
  b: Boolean;

  // hh: THamTelClass;
  // proc: TProductsClass;
  // ArrProc: TArray<TProductsClass>;
  //
  // jsobj, jso: TJsonObject;
  // jsa: TJsonArray;
  // jsp: TJsonPair;

begin
  inherited;
  if qryReciptsReciptState.AsInteger <> 0 then
  begin
    Warn('فرم در حالت پیش فرض فقط برای تایید به سایت ارسال می شود.');
    exit;
  end;

  if get_response('آیا برای تایید فرم رو سایت مطمئن هستید؟', clGreen) <> mrYes
  then
    exit;
  if qryReciptsTruckNumber.AsString = EmptyStr then
  begin
    Warn('فیلد ارتباطی مقدار ندارد');
    exit;
  end;

  b := True;
  SUCCESS := TSuccess.Create;
  IdHTTP := TIdHTTP.Create;

  // s:=   ExtractFilePath(Application.ExeName);
  // IdOpenSSLSetLibPath(s);

  // id_SSL := TIdSSLIOHandlerSocketOpenSSL.Create(IdHTTP);
  /// /  id_SSL := TIdSSLIOHandlerSocket.Create(nil);
  // id_SSL.SSLOptions.Method := sslvTLSv1;
  // id_SSL.SSLOptions.Mode := sslmUnassigned;
  // IdHTTP.HandleRedirects := true;
  // IdHTTP.IOHandler := id_SSL;





  // IdHTTP.HandleRedirects := True;
  // IdHTTP.Request.ContentType := 'application/json';
  // IdHTTP.Request.Connection := 'Keep-Alive';
  // // IdHTTP.IOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  // IdHTTP.Request.Accept := '*/*';
  // IdHTTP.ReadTimeout := 30000;
  // IdHTTP.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
  // IdHTTP.ConnectTimeout := 60;

  // hh := THamTelClass.Create;
  // hh.oid := qryReciptsTruckNumber.AsExtended;
  // with qryItems do
  // begin
  // First;
  // while not Eof do
  // begin
  // if qryItems_ExternalId.AsString = EmptyStr then
  // begin
  // Warn2('فیلد ارتباطی ' + qryItemsStuffCode.AsString + ' مقدار ندارد', 0);
  // b := False;
  // end;
  //
  // proc:=  TProductsClass.Create;
  // proc.id:= qryItems_ExternalId.AsExtended;
  // proc.unitprice:=qryItemsUnitSellPrice.AsExtended;
  // proc.count:=qryItemsInputEntity.AsInteger + qryItemsOutputEntity.AsInteger;
  //
  // ArrProc[RecNo]:=proc;
  //
  // Next;
  // end;
  // hh.products:=ArrProc;
  // s:= hh.ToJsonString;
  // end;
  // Warn('iiiiiiiiiiiiiii');  22222222222
  // Exit;

  try
    Recipt := Format('&acc={"oid":%s', [qryReciptsTruckNumber.AsString.Trim]);
    with qryItems do
    begin
      First;
      while not Eof do
      begin
        if qryItems_ExternalId.AsString = EmptyStr then
        begin
          Warn2('فیلد ارتباطی ' + qryItemsStuffCode.AsString +
            ' مقدار ندارد', 0);
          b := False;
        end;
        Item := Format('{"id":%s,"unitprice":%s,"count":%d}',
          [qryItems_ExternalId.AsString.Trim,
          qryItemsUnitSellPrice.AsString.Trim, qryItemsInputEntity.AsInteger +
          qryItemsOutputEntity.AsInteger]);
        Items := Items + Item + ifthen((RecNo = RecordCount) or
          (RecordCount = 1), '', ',');
        Next;
      end;
    end;
    Recipt_Items := Format(',"products":[%s]}', [Items.Trim]);
    // url := 'http://hamrahtel.com/panel/acct.php?key=2505348c8511ba1846f40ae90b951c0cd754c1203b16ce117e&acc={"oid":2904,"products":[{"id" : 288,"unitprice":3000, "count":6}]}';
    url := 'https://hamrahtel.com/panel/acct.php?key=2505348c8511ba1846f40ae90b951c0cd754c1203b16ce117e';
    url := url + Recipt.Trim + Recipt_Items.Trim;
    try
      if CtrlDown then
        add2log(url);
      if b then
        val := IdHTTP.Get(url);

      if (val <> 'null') and (val <> '') then
      begin
        SUCCESS := TJson.JsonToObject<TSuccess>(val);
        if SUCCESS.status = 1 then
        begin
          if not(qryRecipts.State in dsEditModes) then
            qryRecipts.edit;
          qryReciptsReciptState.AsInteger := 1;
          qryRecipts.Post;
          Warn('انجام شد', mtConfirmation);
        end
        else
        begin
          case SUCCESS.error of
            3110:
              s := 'خطا در پارامتر ها';
            3120:
              s := 'ID سفارش وجود ندارد';
            3210, 3010:
              s := 'کلید اشتباه است';
            5017, 5019:
              s := 'سفارش وجود ندارد';
            5018:
              s := 'سفارش قبلا تایید شده است';
            5021:
              s := 'کالای ارسال شده در این سفارش وجود ندارد';
            5121:
              s := 'خطا در قیمت کالا';
            5020:
              s := 'اقلام سفارش همخوانی ندارد';
            5016:
              s := 'خطا در تکرار کالا';
            5022:
              s := 'تعداد کالا کمتر از کالای قطعیست'
          else
            s := 'Request time out';
          end;
          Warn(SUCCESS.error.ToString + #13#10 + s);
        end;
      end;
    except
      on E: Exception do
      begin
        // add2log(url);
        add2log(E.Message);
        Warn(E.Message);
      end;
    end;
  finally
    SUCCESS.Free;
    // id_SSL.Free;
    IdHTTP.Free;
  end;

end;

procedure TReciptsGridF.Panel3Enter(Sender: TObject);
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

procedure TReciptsGridF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  if qryinit.FieldByName('BarCodeKind').AsInteger in [0, 2, 4] then
    DBGrid1.SelectedIndex := 1
  else
    DBGrid1.SelectedIndex := 0
end;

procedure TReciptsGridF.qryReciptsSecondTypeChange(Sender: TField);

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

procedure TReciptsGridF.qryReciptsSellsEmporiumChange(Sender: TField);
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

procedure TReciptsGridF.qryReciptsPersonID3Change(Sender: TField);
begin
  inherited;
  if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger = 6 then
  begin
    if Not MultiFormType then
      FreeReservedCodes(DMf.adcBSell, 'Recipts', 'ReciptNumber',
        IntToStr(formType));
    GetReciptNumber(qryinit, qryRecipts, 0, myStore);
  end;

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

procedure TReciptsGridF.qryReciptsPersonID5Change(Sender: TField);
begin
  inherited;
  IF qryinit.FieldByName('Person5Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers5, Sender.AsInteger);
  // for  Change   PersonID
  qryRecipts.FieldByName('ReciptType').AsInteger :=
    qryRecipts.FieldByName('ReciptType').AsInteger;
  // for  Change   PersonID
end;

function TReciptsGridF.GetArzAmount: Extended;
begin
  if ((Settings and Integer(ChkArzType2)) <> 0) then
    Result := qryItems.FieldByName('ArzAmount2').AsFloat
  else
    Result := qryItems.FieldByName('ArzAmount').AsFloat;
end;

function TReciptsGridF.GetRialsEqual: Extended;
begin
  if ((Settings and Integer(ChkArzType2)) <> 0) then
    Result := qryItems.FieldByName('ExchangePrice').AsFloat
  else
    Result := qryRecipts.FieldByName('RialsEqual').AsFloat;
end;

procedure TReciptsGridF.qryItemsArzAmountChange(Sender: TField);
var
  r: Currency;
begin
  inherited;
  if (qryinit.FieldByName('ArzActive').AsInteger in [1]) then
  begin
    r := Trunc(GetArzAmount * GetRialsEqual); // , RoundCount);
    if qryItems.FieldByName(FieldNamePrice).AsCurrency <> r then
      qryItems.FieldByName(FieldNamePrice).AsCurrency := r;

    if ((Settings and Integer(ChkArzType2)) <> 0) then
      qryItemsArzRate2Change(nil)
  end;

end;

procedure TReciptsGridF.qryItemsArzRate2Change(Sender: TField);
begin
  inherited;
  if qryItems.FieldByName('HowConvert').AsInteger = 0 then
  begin
    qryItems.FieldByName('ArzAmount2').AsFloat :=
      RoundTo(qryItems.FieldByName('ArzAmount').AsFloat *
      qryItems.FieldByName('ArzRate2').AsFloat, -2);
  end
  else
  begin
    if qryItems.FieldByName('ArzRate2').AsFloat <> 0 then
      qryItems.FieldByName('ArzAmount2').AsFloat :=
        RoundTo(qryItems.FieldByName('ArzAmount').AsFloat /
        qryItems.FieldByName('ArzRate2').AsFloat, -2);
  end;

end;

procedure TReciptsGridF.qryItemsArzRateChange(Sender: TField);

var
  r: Currency;
begin
  inherited;
  if (qryinit.FieldByName('ArzActive').AsInteger in [1, 6]) then
  begin
    r := RoundTo(qryItems.FieldByName('ArzRate').AsFloat *
      (qryItems.FieldByName(FieldNameWeight).AsFloat), RoundCount);

    if ((Settings and Integer(ChkTonnage)) <> 0) then
      r := RoundTo(r / 1000, RoundCount);

    if qryItems.FieldByName('ArzAmount').AsCurrency <> r then
      qryItems.FieldByName('ArzAmount').AsCurrency := r;
  end;

  // if (qryinit.FieldByName('ArzActive').AsInteger = 5) then
  // begin
  // r := RoundTo(qryItems.FieldByName('ArzRate').AsFloat *
  // (qryItems.FieldByName(FieldNameEntity).AsFloat), RoundCount);
  //
  // if qryItems.FieldByName('ArzAmount').AsCurrency <> r then
  // qryItems.FieldByName('ArzAmount').AsCurrency := r;
  // end;

  if (qryinit.FieldByName('ArzActive').AsInteger in [2]) then
    ChangeUnitSellPrice;

  if (qryinit.FieldByName('ArzActive').AsInteger in [3]) and
    (qryRecipts.FieldByName('RialsEqual').AsFloat <> 0) then
  begin
    r := RoundTo(qryItems.FieldByName('ArzRate').AsFloat *
      qryRecipts.FieldByName('RialsEqual').AsFloat, RoundCount);
    if qryItemsUnitSellPrice.AsCurrency <> r then
      qryItemsUnitSellPrice.AsCurrency := r;
  end;
end;

procedure TReciptsGridF.qryReciptsArzTypeIDChange(Sender: TField);
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

procedure TReciptsGridF.ALLNClick(Sender: TObject);

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

procedure TReciptsGridF.N29Click(Sender: TObject);
var
  txt: String;
  Result: array [0 .. 10] of String;
  TransFormID: Integer;
  qry: TADOQuery;
begin
  inherited;
  txt := 'SELECT  DISTINCT TransForms.TransFormID, TransForms.TransFormNo, ' +
    ' TransForms.TransFormDate, TransForms.StuffCode, StuffCoding.c_StuffName '
    + ' FROM  TransForms INNER JOIN StuffCoding ON TransForms.StuffCode = StuffCoding.c_StuffCode';
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'جستجو كد', txt,
    ['سريال', 'شماره فرم', 'تاريخ فرم', 'کد کالا', 'نام کالا '], Result,
    [50, 50, 100, 100, 200], alLeft) then
  begin
    TransFormID := Result[0].ToInteger;
    qry := TADOQuery.Create(Self);
    With qry do
      try
        Connection := theMainConnection;
        SQL.Text := 'SELECT StuffCode, Entity';
        SQL.Add('FROM TransFormItems');
        SQL.Add('WHERE (TransFormID = :TransFormID)and( InfoType=0)');
        // SQL.Add('and ProcessID = 0');
        SQL.Add('ORDER BY ID');
        Parameters.ParamByName('TransFormID').Value := TransFormID;
        Active := True;
        while not Eof do
        begin
          qryItems.Insert;
          qryItemsStuffCode.AsLargeInt := FieldByName('StuffCode').AsLargeInt;
          qryItems.FieldByName(FieldNameEntity).AsFloat :=
            FieldByName('Entity').AsFloat;
          qryItems.Post;
          Next;
        end;

      finally
        Free;
      end;

  end;

end;

procedure TReciptsGridF.N2Click(Sender: TObject);
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

procedure TReciptsGridF.N35Click(Sender: TObject);
begin
  inherited;
  if not(qryRecipts.State in dsEditModes) then
    qryRecipts.edit;
  With qryItems do
  begin
    First;
    while not Eof do
    begin
      edit;
      qryItems.FieldByName(FieldNameEntity).AsFloat :=
        qryItems.FieldByName(FieldNameEntity).AsFloat;
      Post;
      Next;
    End;
  end;
  // with
end;

procedure TReciptsGridF.MnuLoopClick(Sender: TObject);
var
  ReciptID, ServerID, YearID, i: Integer;
  b: Boolean;
  s: string;
begin
  inherited;
  if get_response(' آیا برای ارسال دوباره  فرم ' + TaxFormKindName(TaxMain) +
    ' به سامانه مودیان مطمئن هستید؟ ', clGray) <> mrYes then
    exit;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;
  s := 'UPDATE Recipts SET tax_status = 0 WHERE tax_status = 2 and  (ReciptID = %d)AND(YearID = %d)AND(ServerID = %d)';
  s := Format(s, [ReciptID, YearID, ServerID]);
  DMf.adcBSell.Execute(s, i);
  qryRecipts.Requery();
  actMoaadiyan.Execute;
end;

procedure TReciptsGridF.ppDBCalcnum2alphabetGetText(Sender: TObject;
var Text: String);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    numReail2Toman(Sender, c);
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToFloat(CurrToStr(c)));
  end;
end;

procedure TReciptsGridF.ppDBImage1GetPicture(Sender: TObject;
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

procedure TReciptsGridF.FormShow(Sender: TObject);

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
  // if (Components[i] is TPanel) then
  // begin
  // TPanel(Components[i]).Caption := TPanel(Components[i]).Name;
  // end;
  // end;

end;

procedure TReciptsGridF.ppLbl__StandardRateGetText(Sender: TObject;
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

procedure TReciptsGridF.NReq_InvEntityClick(Sender: TObject);
begin
  inherited;
  qryItems.Filter := ' Req_InvEntity < 0 ';
  qryItems.Filtered := not qryItems.Filtered;
  NReq_InvEntity.Checked := qryItems.Filtered;
end;

procedure TReciptsGridF.qryReciptsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if (qryinit.FieldByName('ChekingPrintEntity').AsInteger = 0) then
    qryItems.Filtered := False;
  // qryItems.Close;

end;

procedure TReciptsGridF.qryReciptsDefaultDurationChange(Sender: TField);
begin
  inherited;
  if not((RecallTypeOption and Integer(chkDefaultDateFillIn)) <> 0) then

    qryReciptsDefaultDate.AsString := DefaultDateCalc(qryReciptsDefaultDuration,
      qryReciptsReciptDate)
end;

procedure TReciptsGridF.qryReciptsInvoiceTemplateChange(Sender: TField);
begin
  inherited;
  lblCRN.Visible := Sender.AsInteger = 4;
  edtCRN.Visible := lblCRN.Visible
end;

procedure TReciptsGridF.qryReciptsLoanPaymentChange(Sender: TField);
begin
  inherited;
  lblLoanPayment.Visible := qryReciptsLoanPayment.AsCurrency <> 0
end;

procedure TReciptsGridF.qryItemsAidDateChange(Sender: TField);
begin
  inherited;
  qryItemsFieldChange(Sender)
end;

procedure TReciptsGridF.qryItemsSecondTypeItemChange(Sender: TField);
begin
  inherited;
  qryItemsFieldChange(Sender)
end;

procedure TReciptsGridF.qryItemsPersonID1Change(Sender: TField);
begin
  inherited;
  // IF qryinit.FieldByName('PersonID1OnDetailActive').AsInteger
  // in [0, 1, 2, 3] THEN
  // qryCustActive(qryCustomer2Detail, Sender.AsInteger);
  qryItemsFieldChange(Sender)
end;

procedure TReciptsGridF.GetItemDateOFpreReciptItemID;
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

procedure TReciptsGridF.qryItemsFieldChange(Sender: TField);

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

procedure TReciptsGridF.qryItemsSecondTypeItemGetText(Sender: TField;
var Text: String; DisplayText: Boolean);

var
  col: TColumnEh;
begin
  inherited;
  col := DBGrid1.FindFieldColumn(Sender.FieldName);
  // // Columns[ColumnIndexByFieldName(DBGrid1, )];
  if col.PickList.IndexOfObject(TObject(Sender.AsInteger)) <> -1 then
    Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsGridF.qryItemsSecondTypeItemSetText(Sender: TField;
const Text: String);

var
  col: TColumnEh;
  i: Integer;
begin
  inherited;
  col := DBGrid1.FindFieldColumn(Sender.FieldName);
  // Columns[ColumnIndexByFieldName(DBGrid1, )];
  i := col.PickList.IndexOf(Text);
  if i <> -1 then
    Sender.AsInteger := Integer(col.PickList.Objects[i])
end;

procedure TReciptsGridF.actDeleteCorrelateConversionCoExecute(Sender: TObject);
begin
  inherited;
  DeleteCorrelateConversionCo(qryinit, qryRecipts)
end;

procedure TReciptsGridF.actDeleteCorrelateReciptExecute(Sender: TObject);
begin
  inherited;
  DeleteCorrelateRecipt(qryinit, qryRecipts)
end;

procedure TReciptsGridF.actDeleteExecute(Sender: TObject);
var
  ReciptID, ServerID, YearID: Integer;
begin
  inherited;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;
  qryReciptsBeforeDelete(qryRecipts);
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Recipts ';
    SQL.Add('WHERE ServerID = ' + ServerID.ToString);
    SQL.Add('and YearID = ' + YearID.ToString);
    SQL.Add('and ReciptID = ' + ReciptID.ToString);
    BigMessage(IntToStr(ExecSQL) + '‌ حذف شد.', 2);
    Active := False;
  end; // with
  qryAllRecipts.Next;
  ReciptID := qryAllRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryAllRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryAllRecipts.FieldByName('YearID').AsInteger;
  qryAllRecipts.Requery;
  qryAllRecipts.Locate('ReciptID;ServerID;YearID',
    VarArrayOf([ReciptID, ServerID, YearID]), []);

end;

procedure TReciptsGridF.actDesignFormsFExecute(Sender: TObject);

var
  ReciptID, ServerID, YearID: Integer;
begin
  inherited;
  CreateMDIForm2(TDesignFormsF, DesignFormsF, mainF, 1);
  With DesignFormsF do
  begin
    qryCallRecipts := qryRecipts;
    ReciptID := qryAllRecipts.FieldByName('ReciptID').AsInteger;
    ServerID := qryAllRecipts.FieldByName('ServerID').AsInteger;
    YearID := qryAllRecipts.FieldByName('YearID').AsInteger;
    if not qryForm.Locate('ReciptID;ServerID;YearID',
      VarArrayOf([ReciptID, ServerID, YearID]), []) then
      qryForm.Insert;
    DataSetInsert1.Visible := False;
  end;
end;

procedure TReciptsGridF.actGetExcelExecute(Sender: TObject);

var
  qryItm: TADOQuery;
  Grd2: TCedarDbgrid;
  DataSource1: TDataSource;
  i: Integer;
  fN: string;
begin
  inherited;
  qryItm := TADOQuery.Create(Self);
  Grd2 := TCedarDbgrid.Create(Self);
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

procedure TReciptsGridF.ReciptsLocate;

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

procedure TReciptsGridF.actWorkflowHistoryFExecute(Sender: TObject);
begin
  inherited;
  WorkflowHistoryF.Enter(formType, qryReciptsReciptID.AsInteger,
    qryReciptsYearID.AsInteger, qryReciptsServerID.AsInteger);
end;

procedure TReciptsGridF.actAdd2CustomersMasirExecute(Sender: TObject);
begin
  inherited;
  Add2CustomersMasir(qryRecipts.FieldByName('PersonID1').AsInteger,
    qryAddressInMasir, qryReciptsMasirID)
end;

procedure TReciptsGridF.actAllEditExecute(Sender: TObject);
begin
  inherited;
  AllEdit(qryRecipts, qryItems)
end;

procedure TReciptsGridF.DBnum2alphabetGetText(Sender: TObject;
var Text: String);

var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    numReail2Toman(Sender, c);
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToFloat(CurrToStr(c)));
  end;
end;

procedure TReciptsGridF.DBTextPersonID1DblClick(Sender: TObject);
begin
  inherited;
  DBTextPersonID1.Hint := GetFullCustName(qryReciptsPersonID1.AsInteger);
end;

procedure TReciptsGridF.dbtxtIRTAXIDDblClick(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      IRTAXIDFind((Sender as TDBEdit));
    end);
  T.FreeOnTerminate := True;
  T.Start;
end;

procedure TReciptsGridF.btnUseOtherIDClick(Sender: TObject);
begin
  inherited;
  SpeedButtonUseOthers(qryRecipts, lblUseOtherID.Caption)
end;

procedure TReciptsGridF.ppDBText6GetText(Sender: TObject; var Text: String);
// var
// col: TColumnEh;
begin
  inherited;
  // col := DBGrid1.FindFieldColumn('SecondTypeItem');
  // // Columns[ColumnIndexByFieldName(DBGrid1, )];
  // if col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
  // .AsInteger)) <> -1 then
  // Text := col.PickList
  // [col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
  // .AsInteger))];
  Text := qryItems.FieldByName('_SecondTypeItem').AsString

end;

procedure TReciptsGridF.A_l_l_SP__ClickClick(Sender: TObject);
begin
  inherited;
  qryItemsUnitSellPrice.AsCurrency := StrToCurr((Sender as TMenuItem).Hint)
end;

procedure TReciptsGridF.btnJameClick(Sender: TObject);
begin
  inherited;
  popJame.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsGridF.btnDataSetDelete1_Click(Sender: TObject);
begin
  inherited;
  Warn(' از فلش سبز رنگ سمت چپ فرم ' + mnuReturnRecallType9.Caption +
    ' استفاده كنيد ');
end;

procedure TReciptsGridF.BtnDeficitsMouseEnter(Sender: TObject);
begin
  inherited;
  // grd1.DrawingStyle := gdsGradient;
  grd1.Visible := True;
end;

procedure TReciptsGridF.BtnDeficitsMouseLeave(Sender: TObject);
begin
  inherited;
  grd1.Visible := False
end;

procedure TReciptsGridF.ppDBTextSumSelectGetText(Sender: TObject;
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

procedure TReciptsGridF.qryItemsMachineWeightChange(Sender: TField);
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

procedure TReciptsGridF.MachineFullWeight_MachineWeight;

var
  w: Real;
begin
  if ((RecallTypeOption and Integer(chkExcelComparisonRecall)) <> 0) then
    exit;

  w := qryItems.FieldByName('MachineFullWeight').AsFloat -
    qryItems.FieldByName('MachineWeight').AsFloat;
  if w < 0 then
  begin
    w := Abs(w);
    /// w := 0;   هیتال بتن
    Warn2('حاصل منفی مي شود.‏');
  end;
  qryItems.FieldByName(FieldNameEntity).ReadOnly := False;
  qryItems.FieldByName(FieldNameEntity).AsFloat := w
end;

procedure TReciptsGridF.qryItemsMachineFullWeightChange(Sender: TField);
begin
  inherited;
  MachineFullWeight_MachineWeight
end;

procedure TReciptsGridF.actFilterExecute(Sender: TObject);
var
  sstr: string;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterReciptDate);
      AddItemFilter(GetFilter, TFilterSellsEmporium);

      if qryinit.FieldByName('Person4Active').AsInteger = 1 then
        AddItemFilter(GetFilter, TFilterPersonID4);

      if qryinit.FieldByName('Person3Active').AsInteger = 1 then
        AddItemFilter(GetFilter, TFilterPersonID3);

      if qryinit.FieldByName('Person2Active').AsInteger = 1 then
        AddItem(DMf.adcBSell, 'PersonID2', qryinit.FieldByName('Person2Caption')
          .AsString, 'كد', ftInteger, dvMinMax, '', '', ciLookup,
          ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
          + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
          + Trim(qryinit.FieldByName('CustomerKind2').AsString) + '))',

          'SELECT 0,2147483647');

      if qryinit.FieldByName('Person1Active').AsInteger = 1 then
        AddItem(DMf.adcBSell, 'PersonID1', qryinit.FieldByName('Person1Caption')
          .AsString, 'كد', ftInteger, dvMinMax, '', '', ciLookup,
          ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
          + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
          + Trim(qryinit.FieldByName('CustomerKind1').AsString) + '))',

          'SELECT 0,2147483647');

      AddItem(DMf.adcBSell, 'ReciptNumber', ' فرم ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts WHERE ReciptType = '
        + IntToStr(formType) + ifthen(RestartStore, ' And ( StoreID  = ' +
        qryReciptsStoreID.AsString + ' )', ''));

      if FilterTruckNumber then
        AddItemFilter(GetFilter, TFilterTruckNumber);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        With qryAllRecipts do
        begin
          qryItems.Active := False;
          Active := False;

          if FilterTruckNumber then
          begin
            sstr := 'And(Recipts.TruckNumber BetWeen :TruckNumberFrom and :TruckNumberTo)';

            if Pos(sstr, SQL.Text) = 0 then
              SQL.Text := ReplaceStr(SQL.Text, StrReciptNumber,
                StrReciptNumber + sstr);
            Parameters.ParamByName('TruckNumberFrom').Value :=
              GetcFrom(myParams.ParamValues['TruckNumber'], ftString);
            Parameters.ParamByName('TruckNumberTo').Value :=
              GetcTo(myParams.ParamValues['TruckNumber'], ftString);
          end;

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

          if qryinit.FieldByName('Person2Active').AsInteger = 1 then
          begin
            Parameters.ParamByName('PersonID2From').Value :=
              GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
            Parameters.ParamByName('PersonID2To').Value :=
              GetcTo(myParams.ParamValues['PersonID2'], ftInteger);
          end
          else
          begin
            Parameters.ParamByName('PersonID2From').Value := -2147483646;
            Parameters.ParamByName('PersonID2To').Value := 2147483647;
          end;

          if qryinit.FieldByName('Person3Active').AsInteger = 1 then
          begin
            Parameters.ParamByName('PersonID3From').Value :=
              GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
            Parameters.ParamByName('PersonID3To').Value :=
              GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
          end
          else
          begin
            Parameters.ParamByName('PersonID3From').Value := -2147483646;
            Parameters.ParamByName('PersonID3To').Value := 2147483647;
          end;

          if qryinit.FieldByName('Person4Active').AsInteger = 1 then
          begin
            Parameters.ParamByName('PersonID4From').Value :=
              GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
            Parameters.ParamByName('PersonID4To').Value :=
              GetcTo(myParams.ParamValues['PersonID4'], ftInteger);
          end
          else
          begin
            Parameters.ParamByName('PersonID4From').Value := -2147483646;
            Parameters.ParamByName('PersonID4To').Value := 2147483647;
          end;

          Parameters.ParamByName('SellsEmporiumFrom').Value :=
            GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
          Parameters.ParamByName('SellsEmporiumTo').Value :=
            GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

          Active := True;
        end;
        With qryRecipts do
        begin
          Active := False;
          Parameters.ParamByName('ReciptIDFrom').Value := -2147483646;
          Parameters.ParamByName('ReciptIDTo').Value := 2147483647;
          Parameters.ParamByName('ReciptNumberFrom').Value :=
            GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
          Parameters.ParamByName('ReciptNumberTo').Value :=
            GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

          Parameters.ParamByName('ReciptDateFrom').Value :=
            GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
          Parameters.ParamByName('ReciptDateTo').Value :=
            GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

          Parameters.ParamByName('ServerIDFrom').Value := -2147483646;
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
          if qryinit.FieldByName('Person2Active').AsInteger = 1 then
          begin
            Parameters.ParamByName('PersonID2From').Value :=
              GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
            Parameters.ParamByName('PersonID2To').Value :=
              GetcTo(myParams.ParamValues['PersonID2'], ftInteger);
          end
          else
          begin
            Parameters.ParamByName('PersonID2From').Value := -2147483646;
            Parameters.ParamByName('PersonID2To').Value := 2147483647;
          end;

          if qryinit.FieldByName('Person3Active').AsInteger = 1 then
          begin
            Parameters.ParamByName('PersonID3From').Value :=
              GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
            Parameters.ParamByName('PersonID3To').Value :=
              GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
          end
          else
          begin
            Parameters.ParamByName('PersonID3From').Value := -2147483646;
            Parameters.ParamByName('PersonID3To').Value := 2147483647;
          end;

          if qryinit.FieldByName('Person4Active').AsInteger = 1 then
          begin
            Parameters.ParamByName('PersonID4From').Value :=
              GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
            Parameters.ParamByName('PersonID4To').Value :=
              GetcTo(myParams.ParamValues['PersonID4'], ftInteger);
          end
          else
          begin
            Parameters.ParamByName('PersonID4From').Value := -2147483646;
            Parameters.ParamByName('PersonID4To').Value := 2147483647;
          end;

          Parameters.ParamByName('SellsEmporiumFrom').Value :=
            GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
          Parameters.ParamByName('SellsEmporiumTo').Value :=
            GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

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

          Active := True;

        end;
        qryAllRecipts.Active := True;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TReciptsGridF.actFilterTrExecute(Sender: TObject);
begin
  inherited;
  FilterTruckNumber := True;
  actFilter.Execute;
end;

procedure TReciptsGridF.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  NAllRecords.Checked := not NAllRecords.Checked
end;

procedure TReciptsGridF.BtnMachineFullWeight2Click(Sender: TObject);
begin
  inherited;
  if not(qryItems.State in dsEditModes) then
    qryItems.edit;
  qryItems.FieldByName('TotalWeight').AsFloat := ReadFromTxtOrComPort;
  qryItemsMachineWeightChange(qryItems.FieldByName('MachineWeight'));
end;

procedure TReciptsGridF.actCopyPasteExecute(Sender: TObject);

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
  if not(qryRecipts.State in dsEditModes) then
    qryRecipts.edit;
  if (qryItems.State in dsEditModes) then
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
          if FindField(ts[i]) <> nil then
            qryItems.FieldByName(ts[i]).AsString := FieldByName(ts[i]).AsString;
        end;
        GoProgressBar(IntToStr(k));
        qryItemspreReciptItemID.AsInteger := FieldByName('preReciptItemID')
          .AsInteger;
        if (qryinit.FieldByName('MaxControlCode').AsInteger = 2) then
          qryItemsControlCode.AsInteger := 0;

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

procedure TReciptsGridF.actBarcode2Execute(Sender: TObject);
begin
  inherited;
  PrintBarcode(qryinit, qryItems, ppReportBarcode, cliBarcode,
    pdtlbndBarcodeppDetailBand3, Form_InOut, 'ReportFileName', '')

end;

procedure TReciptsGridF.actBarcodeExecute(Sender: TObject);
begin
  inherited;
  PrintBarcode(qryinit, qryItems, ppReportBarcode, cliBarcode,
    pdtlbndBarcodeppDetailBand3, Form_InOut, 'PerformFileName', '')
end;

procedure TReciptsGridF.ppLblBarCodeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  if cliBarcode.FieldByName('StuffCode').AsLargeInt = 0 then
    Text := EmptyStr;
end;

procedure TReciptsGridF.qryItems____StuffTecInfoChange(Sender: TField);
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

procedure TReciptsGridF.Accept_Rollback_EntityChange(Sender: TField);

var
  aNotifyEvent: TFieldNotifyEvent;
begin
  inherited;
  if qryinit.FieldByName('Section2Visible').AsInteger <> 2 then
    try
      qryItemsAcceptEntity.OnChange := nil;
      qryItemsRollbackEntity.OnChange := nil;
      qryItemsRequestedEntity.OnChange := nil;

      if qryinit.FieldByName('CartonKind').AsInteger < 6 then
        try
          qryItemsRollbackWeight.OnChange := nil;
          qryItemsRollbackWeight.AsFloat :=
            RoundTo(qryItemsRollbackEntity.AsFloat *
            (qryItems.FieldByName(Carton).AsFloat), RoundCount);
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
              RoundTo(qryItemsAcceptEntity.AsFloat /
              (qryItems.FieldByName(Carton).AsFloat), RoundCount);

            qryItemsRollbackWeight.AsFloat :=
              RoundTo(qryItemsRollbackEntity.AsFloat /
              (qryItems.FieldByName(Carton).AsFloat), RoundCount);
            /// ////////////////////
            qryItemsRequestedWeight.AsFloat :=
              RoundTo(qryItemsRequestedEntity.AsFloat /
              (qryItems.FieldByName(Carton).AsFloat), RoundCount);
          finally
            qryItemsAcceptWeight.OnChange := Accept_Rollback_WeightChange;
            qryItemsRollbackWeight.OnChange := Accept_Rollback_WeightChange;
            qryItemsRequestedWeight.OnChange := qryItemsRequestedWeightChange;
          end
        else
        begin
          qryItemsAcceptWeight.AsFloat :=
            RoundTo(qryItemsAcceptEntity.AsFloat * (qryItems.FieldByName(Carton)
            .AsFloat), RoundCount);
        end

    finally
      qryItemsAcceptEntity.OnChange := Accept_Rollback_EntityChange;
      qryItemsRollbackEntity.OnChange := Accept_Rollback_EntityChange;
      qryItemsRequestedEntity.OnChange := qryItemsRequestedEntityChange;

    end;

end;

procedure TReciptsGridF.Accept_Rollback_WeightChange(Sender: TField);
begin
  inherited;
  if qryinit.FieldByName('Section2Visible').AsInteger <> 2 then
    try
      qryItemsAcceptWeight.OnChange := nil;
      qryItemsRollbackWeight.OnChange := nil;
      qryItemsRequestedWeight.OnChange := nil;

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
            RoundTo((qryItemsRequestedWeight.AsFloat) *
            (qryItems.FieldByName(Carton).AsFloat), RoundCount);

          qryItemsRollbackEntity.AsFloat :=
            RoundTo((qryItemsRollbackWeight.AsFloat) *
            (qryItems.FieldByName(Carton).AsFloat), RoundCount);

          qryItemsAcceptEntity.AsFloat :=
            RoundTo((qryItemsAcceptWeight.AsFloat) *
            (qryItems.FieldByName(Carton).AsFloat), RoundCount);

        finally
          qryItemsRequestedEntity.OnChange := qryItemsRequestedEntityChange;
          qryItemsRollbackEntity.OnChange := Accept_Rollback_EntityChange;
          qryItemsAcceptEntity.OnChange := Accept_Rollback_EntityChange;

        end;

    finally
      qryItemsAcceptWeight.OnChange := Accept_Rollback_WeightChange;
      qryItemsRollbackWeight.OnChange := Accept_Rollback_WeightChange;
      qryItemsRequestedWeight.OnChange := qryItemsRequestedWeightChange;
    end;

end;

procedure TReciptsGridF.qryItemsRequestedEntityChange(Sender: TField);

var
  RequestedEntity: Real48;
begin
  inherited;

  if qryinit.FieldByName('Section2Visible').AsInteger <> 2 then
    try
      qryItemsRequestedEntity.OnChange := nil;

      SetOnChangeOff(qryItems.FieldByName(FieldNameEntity), 0);
      // qryItems.FieldByName(FieldNameEntity).AsInteger := 0;
      // Warn2('qryItemsStuffCodeChange(qryItemsStuffCode);');
      qryItemsStuffCodeChange(qryItemsStuffCode);

      if qryinit.FieldByName('RequestedChange').AsInteger = 3 then
      begin
        qryItems.FieldByName(FieldNameEntity).AsFloat :=
          qryItemsRequestedEntity.AsFloat;
      end;
      /// //////////////////////////////////95/10/05

      RequestedEntity := RoundTo(qryItemsRequestedEntity.AsFloat - EntityValue,
        RoundCount);
      if RequestedEntity > 0 then
        qryItems.FieldByName(FieldNameEntity).AsFloat := RequestedEntity;

      if (qryinit.FieldByName('CartonKind').AsInteger <> 7) then
        if (qryinit.FieldByName('AcceptRollbackEntity').AsInteger > 0) or
          (qryinit.FieldByName('CartonKind').AsInteger = 6) then
        begin
          qryItemsAcceptEntity.AsFloat :=
            RoundTo(qryItemsRequestedEntity.AsFloat, RoundCount);

          qryItemsRequestedWeight.OnChange := nil;
          qryItemsRequestedWeight.AsFloat :=
            RoundTo((qryItemsRequestedEntity.AsFloat) /
            (qryItems.FieldByName(Carton).AsFloat), RoundCount);
          qryItemsRequestedWeight.OnChange := qryItemsRequestedWeightChange;
        end;

      if (qryinit.FieldByName('CartonKind').AsInteger = 7) then
      begin
        qryItemsAcceptEntity.AsFloat := RoundTo(qryItemsRequestedEntity.AsFloat,
          RoundCount);

        qryItemsRequestedWeight.OnChange := nil;
        qryItemsRequestedWeight.AsFloat :=
          RoundTo((qryItemsRequestedEntity.AsFloat) *
          (qryItems.FieldByName(Carton).AsFloat), RoundCount);
        qryItemsRequestedWeight.OnChange := qryItemsRequestedWeightChange;
      end;

      CartonKind5(Sender);

    finally
      qryItemsRequestedEntity.OnChange := qryItemsRequestedEntityChange;
    end;

end;

procedure TReciptsGridF.qryItemsRequestedWeightChange(Sender: TField);
begin
  inherited;
  if qryinit.FieldByName('Section2Visible').AsInteger <> 2 then
    try
      qryItemsRequestedWeight.OnChange := nil;

      if qryinit.FieldByName('CartonKind').AsInteger = 6 then
        qryItemsRequestedEntity.AsFloat :=
          RoundTo((qryItemsRequestedWeight.AsFloat) *
          (qryItems.FieldByName(Carton).AsFloat), RoundCount);

      if qryinit.FieldByName('CartonKind').AsInteger = 7 then
        qryItemsRequestedEntity.AsFloat :=
          RoundTo((qryItemsRequestedWeight.AsFloat) /
          (qryItems.FieldByName(Carton).AsFloat), RoundCount);

      if qryinit.FieldByName('RequestedChange').AsInteger in [2, 3] then
      begin
        SetOnChangeOff(qryItems.FieldByName(FieldNameWeight),
          qryItemsRequestedWeight.AsFloat);
        // qryItems.FieldByName(FieldNameWeight).AsFloat :=
        // qryItemsRequestedWeight.AsFloat;
      end;
      if (qryinit.FieldByName('AcceptRollbackEntity').AsInteger > 0) and WeightDisplay
      then
        qryItemsAcceptWeight.AsFloat := RoundTo(qryItemsRequestedWeight.AsFloat,
          RoundCount);

    finally
      qryItemsRequestedWeight.OnChange := qryItemsRequestedWeightChange;
    end;

end;

procedure TReciptsGridF.qryItemsReturnAfterOpen(DataSet: TDataSet);
var
  i, IX: Integer;
  col: TColumnEh;
begin
  inherited;
  if grdItemsReturn = nil then
    exit;

  grdItemsReturn.Visible := True;
  grdItemsReturn.Name := 'grdItemsReturn';
  grdItemsReturn.Parent := Panel3;
  grdItemsReturn.TabStop := False;
  grdItemsReturn.Align := alBottom;
  grdItemsReturn.SortTitle := True;
  grdItemsReturn.SortLocal := True;
  SplItemsReturn.Top := grdItemsReturn.Top;
  for i := 0 to qryItems.FieldCount - 1 do
    if qryItemsReturn.FindField(qryItems.Fields[i].FieldName) <> nil then
      qryItemsReturn.FieldByName(qryItems.Fields[i].FieldName).DisplayLabel :=
        qryItems.Fields[i].DisplayLabel;

  grdItemsReturn.DataSource := srcItemsReturn;
  // for i := 0 to grdItemsReturn.Columns.Count - 1 do
  // grdItemsReturn.Columns[i].Visible := False;
  IX := 0;
  for i := 0 to DBGrid1.Columns.Count - 1 do
    if qryItemsReturn.FindField(DBGrid1.Columns[i].FieldName) <> nil then
    begin
      col := grdItemsReturn.FieldColumns[DBGrid1.Columns[i].FieldName];
      if col <> nil then
      begin
        col.Title.TitleButton := True;
        // if i < grdItemsReturn.Columns.Count then
        col.Index := IX;
        Inc(IX);
        col.Width := DBGrid1.Columns[i].Width;
        col.Visible := DBGrid1.Columns[i].Visible;
        col.Color := DBGrid1.Columns[i].Color;
        if col.Field is TBCDField then
          TBCDField(col.Field).Currency := True;
        if col.Field is TFMTBCDField then
          TFMTBCDField(col.Field).Currency := True;
      end;
    end;
  // ColorDBGrid(grdItemsReturn)

end;

procedure TReciptsGridF.qryItemsReturnPrnAfterOpen(DataSet: TDataSet);
var
  i, IX: Integer;
  col: TColumnEh;
begin
  inherited;
  if grdItemsReturnprn = nil then
    exit;

  grdItemsReturnprn.Visible := True;
  grdItemsReturnprn.Name := 'grdItemsReturnprn';
  grdItemsReturnprn.Parent := Panel3;
  grdItemsReturnprn.TabStop := False;
  grdItemsReturnprn.Align := alBottom;
  grdItemsReturnprn.SortTitle := True;
  grdItemsReturnprn.SortLocal := True;
  SplItemsReturnprn.Top := grdItemsReturnprn.Top;

  grdItemsReturnprn.DataSource := srcItemsReturnprn;
  // ColorDBGrid(grdItemsReturnprn)

end;

procedure TReciptsGridF.actAllotmentExecute(Sender: TObject);
begin
  inherited;
  if qryinit.FieldByName('EffectType').AsInteger in [4] then
    exit;
  AllotmentF.ShowChanger(qryItems, DBGrid1)
end;

procedure TReciptsGridF.actAnalyticalExecute(Sender: TObject);

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

procedure TReciptsGridF.plblName_NoteGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryItems.FieldByName('_StuffName').AsString + ' ' +
    qryItems.FieldByName('ItemNote').AsString
end;

procedure TReciptsGridF.plblSecondTypeItemGetText(Sender: TObject;
var Text: String);
// var
// col: TColumnEh;
begin
  inherited;
  // col := DBGrid1.FindFieldColumn('SecondTypeItem');
  // if col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
  // .AsInteger)) <> -1 then
  // Text := col.PickList
  // [col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
  // .AsInteger))];
  Text := qryItems.FieldByName('_SecondTypeItem').AsString

end;

procedure TReciptsGridF.plblSetFieldGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if qryItems.FindField(Text) <> nil then
    Text := CurrToStrF(qryItems.FieldByName(Text).AsCurrency, ffCurrency, 0)
end;

procedure TReciptsGridF.btnMasirIDClick(Sender: TObject);

var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  // txt := 'SELECT MasirID,MasirText FROM AddressInMasir' +
  txt := 'SELECT CustomersMasir.ID' + // MasirID
    ' , AddressInMasir.MasirText + '' '' + CustomersMasir.MasirNote AS MasirTextNote'
    + ' FROM CustomersMasir INNER JOIN' +
    ' AddressInMasir ON CustomersMasir.MasirID = AddressInMasir.MasirID' +
    ' WHERE (CustomersMasir.PersonID1 = ' + qryRecipts.FieldByName('PersonID1')
    .AsInteger.ToString + ')';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' مسيرها ', txt,
    ['کد', 'شرح مسير'], Results, [50, 150], alLeft);
  if b then
    qryRecipts['MasirID'] := Results[0];
end;

procedure TReciptsGridF.btnDeliveryIDClick(Sender: TObject);

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

procedure TReciptsGridF.qryAllReciptsAfterScroll(DataSet: TDataSet);
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

  IF qryinit.FieldByName('Person5Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers5, DataSet.FieldByName('PersonID5').AsInteger);

  // ------------------------------ ADD NEW -------------------
  With qryRecipts do
    try
      // DisableControls;
      // qryItems.DisableControls;
      Active := False;
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
      Active := True;

    finally
      // EnableControls;
      // qryItems.EnableControls;
    end;
  if grdItemsReturn <> nil then
    grdItemsReturn.Visible := False;

end;

procedure TReciptsGridF.qryAllReciptsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  // qryItems.Close;
  if (PaymentsActive = 2) and (CalcSumFileds(qryReciptsPaymentsPayment) = 0) and
    (CalcSumFileds(qryItemsUnitSellPrice) > 0) then
  begin
    Warn2('نحوه پرداخت مشخص نشده است', 2000);
  end;
end;

procedure TReciptsGridF.btnPersonID3Click(Sender: TObject);

var
  txt: String;
  b: Boolean;
  Results: array [0 .. 6] of String;
  Sid: string;
begin
  inherited;
  Sid := (Sender as TSpeedButton).Tag.ToString;
  txt := 'SELECT DISTINCT CustID,CustName,InfoWeight,Address,Mobile,nationalid '
    + 'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind' + Sid, qryinit);
  Add2Filter(txt, 'CustomerActive = 0');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person' + Sid + 'Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person' + Sid + 'Caption').AsString +
    '', 'وزن', 'آدرس', 'همراه', 'کد ملی'], Results,
    [50, 150, 80, 50, 200, 80], alLeft);
  if b then
  begin
    qryRecipts.FieldByName('PersonID' + Sid).AsString := Results[0];
    // qryRecipts.FieldByName('ReciptType').AsInteger :=
    // qryRecipts.FieldByName('ReciptType').AsInteger; // for Refresh
  end;
end;

procedure TReciptsGridF.plblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DateToStr(Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate')
    .AsString))
end;

procedure TReciptsGridF.plblDeficit_Price_AddGetText(Sender: TObject;
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

procedure TReciptsGridF.plblDeficit_Price_DecGetText(Sender: TObject;
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

procedure TReciptsGridF.plblDeficit_TotallSellPrice_DecGetText(Sender: TObject;
var Text: string);

var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') -
    CalcSumFileds(qry_Deficits4Print, 'DeficitDec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)

end;

procedure TReciptsGridF.plblInsuranceValueGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  Text := pnlInsuranceValue.Caption
end;

procedure TReciptsGridF.plblNameNoteGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryItems.FieldByName('_StuffName').AsString + ' ' +
    qryItems.FieldByName('_StuffNote').AsString
end;

procedure TReciptsGridF.btnUseUnitIDClick(Sender: TObject);
begin
  inherited;
  SpeedButtonUseUnits(qryRecipts, LblUseUnitM.Caption)
end;

procedure TReciptsGridF.qryReciptItemsDetailsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptItemID').AsInteger :=
    qryItems.FieldByName('ReciptItemID').AsInteger;
  DataSet.FieldByName('ReciptID').AsInteger := qryItems.FieldByName('ReciptID')
    .AsInteger;
  DataSet.FieldByName('ServerID').AsInteger := qryItems.FieldByName('ServerID')
    .AsInteger;
  DataSet.FieldByName('YearID').AsInteger := qryItems.FieldByName('YearID')
    .AsInteger;
  DataSet.FieldByName('ReciptType').AsInteger :=
    qryRecipts.FieldByName('ReciptType').AsInteger;

  DataSet.FieldByName('StuffGrade').AsInteger :=
    qryItems.FieldByName('StuffGrade').AsInteger;

end;

procedure TReciptsGridF.qryReciptItemsDetailsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if ReciptItemsDetailsF <> nil then
    ReciptItemsDetailsF.InitPanel;
end;

procedure TReciptsGridF.qryReciptItemsDetailsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if ReciptItemsDetailsF <> nil then
    ReciptItemsDetailsF.InitPanel;
end;

procedure TReciptsGridF.qryReciptItemsDetailsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  qryReciptItemsDetailsBeforeEdit(DataSet);
  if get_response(' آيا براي حذف سطر مطمئن هستيد؟') <> mrYes then
    Abort
end;

procedure TReciptsGridF.qryReciptItemsDetailsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryItemsID.AsString = '' then
  begin
    Warn('فرم اصلی ثبت و تایید شود');
    Abort;
  end;
end;

procedure TReciptsGridF.qryReciptItemsDetailsBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if qryReciptItemsDetailsDetailCaption.AsString.Length <> opt.DetailCodelength
  then
  begin
    Warn('طول کد صحیح نمی باشد');
    Beep;
    Beep;
    qryReciptItemsDetailsDetailCaption.AsString := EmptyStr;
    Abort;
  end;

  if ((qryinit.FieldByName('NonZeroActive').AsInteger and
    Integer(CHkCheckEntityDetailCaption)) <> 0) then
  begin
    if not qryRIDEntity.Locate('DetailCaption',
      qryReciptItemsDetailsDetailCaption.AsString, []) then
    begin
      Warn(qryReciptItemsDetailsDetailCaption.AsString +
        ' سریال در ورودی ها ثبت نشده است');
      Abort;
    end;
  end;

  // if ((qryinit.FieldByName('NonZeroActive').AsInteger and
  // integer(CHkCheckEntityDetailCaption)) <> 0) then
  // with DMf.qryTmpTmp do
  // begin
  // Active := False;
  // SQL.Text := 'SELECT ReciptItemsDetails.DetailCaption';
  // SQL.Add('FROM ReciptItemsDetails INNER JOIN');
  // SQL.Add('ReciptItems ON ReciptItemsDetails.ReciptItemID = ReciptItems.ReciptItemID AND ReciptItemsDetails.ReciptID');
  // SQL.Add('= ReciptItems.ReciptID AND ReciptItemsDetails.ServerID = ReciptItems.ServerID AND');
  // SQL.Add('ReciptItemsDetails.YearID = ReciptItems.YearID INNER JOIN');
  // SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
  // SQL.Add('ReciptItems.YearID = Recipts.YearID INNER JOIN');
  // SQL.Add('ReciptTypes1 ON Recipts.ReciptType = ReciptTypes1.ReciptType');
  // SQL.Add('WHERE (ReciptTypes1.EffectType = 2) ');
  // SQL.Add('AND (ReciptItemsDetails.DetailCaption = :DetailCaption )');
  // Parameters.ParamByName('DetailCaption').Value :=
  // qryReciptItemsDetailsDetailCaption.AsString;
  // Active := True;
  // if Fields[0].AsString <> qryReciptItemsDetailsDetailCaption.AsString then
  // Warn2(qryReciptItemsDetailsDetailCaption.AsString +
  // ' سریال در ورودی ها ثبت نشده است');
  // Active := False;
  // end;

end;

procedure TReciptsGridF.qryReciptItemsDetailsCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryReciptItemsDetails_radif.AsInteger := Abs(DataSet.RecNo);
end;

procedure TReciptsGridF.qryReciptsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if not AutoInsertPostInsert then
    qryAllReciptsAfterScroll(qryAllRecipts);
  if (qryinit.FieldByName('RecallType').AsInteger = 16) then
    if DMf.adcBSell.InTransaction then
      DMf.adcBSell.RollbackTrans;
end;

procedure TReciptsGridF.qryReciptsAfterDelete(DataSet: TDataSet);
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
      SQL.Add('AND ServerID = ' + qryAllRecipts.FieldByName('ServerID')
        .AsString);
      SQL.Add('AND YearID   = ' + qryAllRecipts.FieldByName('YearID').AsString);
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

procedure TReciptsGridF.qryReciptsBeforeDelete(DataSet: TDataSet);
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

procedure TReciptsGridF.actSaveFormItemsExecute(Sender: TObject);
begin
  inherited;
  SaveFormItems(qryItems)
end;

procedure TReciptsGridF.actSaveGridExecute(Sender: TObject);
begin
  inherited;
  // DBGrid1.Columns.SaveToFile(GridColumnsSavePath);
end;

procedure TReciptsGridF.actLoadFormItemsExecute(Sender: TObject);
begin
  inherited;
  LoadFormItems(qryItems)
end;

procedure TReciptsGridF.actMahExExecute(Sender: TObject);
begin
  inherited;
end;
// procedure TReciptsGridF.actMahExExecute(Sender: TObject);
// var
// url: string;
// IdHTTP: TIdHTTP;
// val: string;
// Recipt, Item, Items, Recipt_Items: string;
// s: string;
// Success: TSuccess;
// // b: Boolean;
// begin
// inherited;
// if get_response('آیا برای ارسال به سایت ماهکس مطمئن هستید؟', clGreen) <> mrYes
// then
// exit;
//
// IdHTTP := TIdHTTP.Create;
// IdHTTP.ConnectTimeout := 10000;
// // IdHTTP.Request.Accept := 'application/json';
// // IdHTTP.Request.ContentType := 'application/json';
// IdHTTP.Request.BasicAuthentication := True;
// IdHTTP.Request.Password := '';
// IdHTTP.Request.Username := 'obtEuZpQ3Ha4MnfL4kYFnGp23hqntcZUP72cF7AhVvyckCwa';
//
// Success := TSuccess.Create;
// try
// Recipt := Format('&acc={"oid":%s', [qryReciptsTruckNumber.AsString]);
// with qryItems do
// begin
// First;
// while not Eof do
// begin
// Item := Format('{"id":%s,"unitprice":%s,"count":%d}',
// [qryItems_ExternalId.AsString, qryItemsUnitSellPrice.AsString,
// qryItemsInputEntity.AsInteger + qryItemsOutputEntity.AsInteger]);
// Items := Items + Item + ifthen((RecNo = RecordCount) or
// (RecordCount = 1), '', ',');
// Next;
// end;
// end;
// Recipt_Items := Format(',"products":[%s]}', [Items]);
// url := 'http://api.mahex.com/v2/hello';
//
// // url := url + Recipt + Recipt_Items;
// try
// if CtrlDown then
// add2log(url);
// // if b then
// val := IdHTTP.Get(url);
//
// if (val <> 'null') and (val <> '') then
// begin
// Success := TJson.JsonToObject<TSuccess>(val);
// if Success.status = 1 then
// Warn('انجام شد', mtConfirmation)
// else
// begin
//
// Warn(Success.error.ToString + #13#10 + s);
// end;
// end;
// except
// on E: Exception do
// begin
// add2log(url);
// add2log(E.Message);
// Warn(E.Message);
// end;
// end;
// finally
// Success.Free;
// IdHTTP.Free;
// end;
// end;

procedure TReciptsGridF.actMakeDocExecute(Sender: TObject);
begin
  inherited;
  var_tmp_str := qryRecipts.FieldByName('ID').AsString;
  MakeDocumentF.Enter(qryRecipts, False)
end;

procedure TReciptsGridF.actReciptsRegulatesExecute(Sender: TObject);
begin
  inherited;
  ReciptsRegulatesF.Enter(qryItems, qryinit, qryRecipts)
end;

procedure TReciptsGridF.plblTotallSellPrice2GetText(Sender: TObject;
var Text: string);

var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToFloat(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsGridF.plblTotallSellPricedivEntityGetText(Sender: TObject;
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

procedure TReciptsGridF.plblTotallSellPriceGetText(Sender: TObject;
var Text: String);

var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsGridF.plbl_SellsMethod0GetText(Sender: TObject;
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

procedure TReciptsGridF.pmgStuffImagePrint(Sender: TObject);
var
  Stream: TStream;
  Jpg: TJPEGImage;
  Png: TPngImage;
  Bmp: TBitmap;
  ImageType: Integer;
begin
  inherited;

  // گرفتن StuffCode از سطر فعلی گزارش
  if not qryItems.FieldByName('StuffCode').IsNull then
  begin
    // باز کردن query برای لود عکس
    DMf.qryStuffImages.Close;
    DMf.qryStuffImages.Parameters.ParamByName('StuffCode').Value :=
      qryItems.FieldByName('StuffCode').AsLargeInt;
    DMf.qryStuffImages.Open;

    try
      if not DMf.qryStuffImages.IsEmpty then
      begin
        ImageType := DMf.qryStuffImages.FieldByName('ImageType').AsInteger;
        Stream := DMf.qryStuffImages.CreateBlobStream
          (DMf.qryStuffImages.FieldByName('StuffImage'), bmRead);
        try
          case ImageType of
            0: // JPG
              begin
                Jpg := TJPEGImage.Create;
                try
                  Jpg.LoadFromStream(Stream);
                  TppImage(Sender).Picture.Graphic := Jpg;
                finally
                  Jpg.Free;
                end;
              end;
            1: // PNG
              begin
                Png := TPngImage.Create;
                try
                  Png.LoadFromStream(Stream);
                  TppImage(Sender).Picture.Graphic := Png;
                finally
                  Png.Free;
                end;
              end;
            2: // BMP
              begin
                Bmp := TBitmap.Create;
                try
                  Bmp.LoadFromStream(Stream);
                  TppImage(Sender).Picture.Graphic := Bmp;
                finally
                  Bmp.Free;
                end;
              end;
          end;
        finally
          Stream.Free;
        end;
      end
      else
      begin
        // اگر عکسی نبود، تصویر خالی یا پیش‌فرض
        TppImage(Sender).Picture.Graphic := nil;
        // یا اگر تصویر پیش‌فرض داری:
        // TppImage(Sender).Picture.LoadFromFile('path\to\no-image.jpg');
      end;
    finally
      DMf.qryStuffImages.Close; // بستن query برای آزادسازی منابع
    end;
  end
  else
  begin
    TppImage(Sender).Picture.Graphic := nil;
  end;
end;

procedure TReciptsGridF.plblToman1GetText(Sender: TObject; var Text: string);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := RoundTo(PayablePrice * 0.1, 0);
  Text := num2alphabet(StrToFloat(CurrToStr(PayablePrice)));
end;

procedure TReciptsGridF.plblTotallSellPricAlphaGetText(Sender: TObject;
var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToFloat(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsGridF.actRpt001Execute(Sender: TObject);
begin
  inherited;
  Rpt001F.Enter(qryRecipts, qryinit)
end;

procedure TReciptsGridF.qryItemsDeficitValue2Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValue2.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName);
  qryItemsDeficitValue2.OnChange := qryItemsDeficitValue2Change;
end;

procedure TReciptsGridF.qryItemsDeficitValue3Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValue3.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName);
  qryItemsDeficitValue3.OnChange := qryItemsDeficitValue3Change;
end;

procedure TReciptsGridF.qryItemsDeficitValue4Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValue4.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName);
  qryItemsDeficitValue4.OnChange := qryItemsDeficitValue4Change;

end;

procedure TReciptsGridF.qryItemsDeficitValueChange(Sender: TField);
begin
  inherited;
  if qryinit.FieldByName('CustomerRateAct').AsInteger = 2 then
    exit;
  qryItemsDeficitValue.OnChange := nil;
  // qryItemsDeficitValue.AsInteger := qryItemsDeficitValue.AsInteger;
  EndOfPrice((Sender as TField).FieldName);
  qryItemsDeficitValue.OnChange := qryItemsDeficitValueChange;
  // DeficitValue
end;

procedure TReciptsGridF.qryItemsDeficitValueCo2Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValueCo2.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName); // DeficitValueCo2
  qryItemsDeficitValueCo2.OnChange := qryItemsDeficitValueCo2Change;
end;

// procedure TReciptsGridF.qryItemsDeficitValueCo2GetText(Sender: TField;
// var Text: string; DisplayText: Boolean);
// var
// c: Currency;
// begin
// inherited;
/// /  if qryItemsDeficitValue2.AsFloat <> 0 then
/// /  begin
/// /    c := qryItems.FieldByName(FieldNamePrice).AsCurrency;
/// /    if DiscountActive and Integer(CHkDeficitValueCo2FreeDeficitValue1) = 0 then
/// /      c := c - qryItemsDeficitValue.AsCurrency -
/// /        qryItemsDeficitValue4.AsCurrency; // خانم فلاحی بسپار تحریر
/// /    if c <> 0 then
/// /      Text := FloatToStr(RoundTo(qryItemsDeficitValue2.AsCurrency * 100 / c,
/// /        RoundCount));
/// /  end
/// /  else
/// /    Text := '0';
// end;

procedure TReciptsGridF.qryItemsDeficitValueCo4Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValueCo4.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName); // DeficitValue4
  qryItemsDeficitValueCo4.OnChange := qryItemsDeficitValueCo4Change;

end;

// procedure TReciptsGridF.qryItemsDeficitValueCo4GetText(Sender: TField;
// var Text: string; DisplayText: Boolean);
// var
// c: Currency;
// begin
// inherited;
/// /  if qryItemsDeficitValue4.AsFloat <> 0 then
/// /  begin
/// /    c := qryItems.FieldByName(FieldNamePrice).AsCurrency;
/// /    if DiscountActive and Integer(CHkDeficitValueCo2FreeDeficitValue1) = 0 then
/// /      c := c - qryItemsDeficitValue.AsCurrency -
/// /        qryItemsDeficitValue2.AsCurrency; // خانم فلاحی بسپار تحریر
/// /
/// /    if c <> 0 then
/// /      Text := FloatToStr(RoundTo(qryItemsDeficitValue4.AsCurrency * 100 / c,
/// /        -9)); // -9
/// /  end
/// /  else
/// /    Text := '0';
//
// end;

function TReciptsGridF.Deficit_Value_3: Currency;
begin
  if DiscountActive and Integer(CHkDeficitValue3C) <> 0 then
    Result := 0
  else
  begin
    if DiscountActive and Integer(CHkDeficitValue3Add) <> 0 then
      Result := -qryItemsDeficitValue3.AsCurrency
    else
      Result := qryItemsDeficitValue3.AsCurrency
  end;
end;

procedure TReciptsGridF.EdtPersonID1DblClick(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      PersonIDHistoryOnType((Sender as TDBEdit), qryRecipts, qryinit);
    end);
  T.FreeOnTerminate := True;
  T.Start;
end;

procedure TReciptsGridF.edtTozinIDKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  btnTozin.Click
end;

procedure TReciptsGridF.qryItemsDeficitValueCo3Change(Sender: TField);
begin
  inherited;
  qryItemsDeficitValueCo3.OnChange := nil;
  EndOfPrice((Sender as TField).FieldName); // DeficitValueCo3
  qryItemsDeficitValueCo3.OnChange := qryItemsDeficitValueCo3Change;
end;

// procedure TReciptsGridF.qryItemsDeficitValueCo3GetText(Sender: TField;
// var Text: string; DisplayText: Boolean);
// var
// c: Currency;
// begin
// inherited;
/// /  if qryItemsDeficitValue3.AsFloat <> 0 then
/// /  begin
/// /    c := qryItems.FieldByName(FieldNamePrice).AsCurrency -
/// /      qryItemsDeficitValue.AsCurrency;
/// /    if c <> 0 then
/// /      Text := FloatToStr(RoundTo(qryItemsDeficitValue3.AsCurrency * 100 / c,
/// /        RoundCount));
/// /
/// /  end
/// /  else
/// /    Text := '0';
//
// end;

procedure TReciptsGridF.qryItemsDiagnosisCalcTotalPriceChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly = 0 then
    ChangeTotalInputPrice;
  if UnitPriceReadOnly <> 0 then
    ChangeUnitSellPrice;
end;

procedure TReciptsGridF.plblAmount1Total_PriceGetText(Sender: TObject;
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

procedure TReciptsGridF.qryItemsTotallSellPriceChange(Sender: TField);
begin
  inherited;
  try
    qryItemsTotallSellPrice.OnChange := nil;
    EndOfPrice((Sender as TField).Name);
  finally
    qryItemsTotallSellPrice.OnChange := qryItemsTotallSellPriceChange;
  end;
end;

procedure TReciptsGridF.qryItemsStandardRateChange(Sender: TField);
begin
  inherited;
  StandardRateActiveReciptsGrid(qryinit, qryItems);
end;

procedure TReciptsGridF.qryItemsStuffCodeChange(Sender: TField);
var
  Row: Integer;
begin
  inherited;
  try
    if (ValueControl and Integer(ZeroingAmountWhenEditingCode) <> 0) then
    begin
      qryItems.FieldByName(Form_InOut + 'Entity').AsInteger := 0;
      qryItems.FieldByName(Form_InOut + 'Weight').AsInteger := 0;
    end;
    SetqryUnit2Stuffs(True);
    if qryItems.FindField('TransFormID') <> nil then
      qryItems.FieldByName('TransFormID').AsString := EmptyStr;
    if qryItemsStuffCode.AsString.Trim <> EmptyStr then
      DMf.adcBSell.Execute
        (Format('INSERT INTO StuffCodeTemp(StuffCode, ReciptType, UserID)' +
        'VALUES(%s,%d,%d)', [qryItemsStuffCode.AsString, formType,
        User.id]), Row);
    if Row > 0 then
    begin
      ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, lblWarn);
      RefreshLookupList(qryItems);
    end;
  except
    on E: Exception do
    begin
      add2log('I>>>StuffCodeTemp' + E.Message);
      Warn2('I>>>StuffCodeTemp' + E.Message);
    end;
  end;

  begin
    BarCodeCount(Form_InOut, qryItems, qryRecipts, qryinit, EntityValue,
      StatusBar2, PriceOn_StoreType, MachineFullWeight1, FormOutput,
      FieldNameEntity, FieldNameWeight, MenSellPrice,
      [mnuSp1, mnuSp2, mnuSp3, mnuSp4, mnuSp5, mnuSp6, mnuSp7]);

    InsertDefault(qryinit, qryItems, qryStuffCodingItems, qry_Lookup);

    if qryStuff_Unit_TecInf.Locate('c_StuffCode',
      qryItems.FieldByName('StuffCode').AsLargeInt, []) then
      if qryStuff_Unit_TecInf.FieldByName('DefaultValue').AsFloat <> 0 then
      begin
        qryItems.FieldByName(FieldNameEntity).AsFloat :=
          qryStuff_Unit_TecInf.FieldByName('DefaultValue').AsFloat
      end;

    if qryinit.FieldByName('Section2Visible').AsInteger <> 2 then
      if RequestedChangeON AND (qryinit.FieldByName('CartonKind').AsInteger <> 7)
      then
        try
          qryItemsRequestedEntity.OnChange := nil;
          qryItemsRequestedWeightChange(qryItemsRequestedWeight);
        finally
          qryItemsRequestedEntity.OnChange := qryItemsRequestedEntityChange;
        end;

    TozinActiveSetReadOnly;
    if EditCarton then
    begin
      qryItems.FieldByName('InBox').AsFloat := qryItems_Carton.AsFloat;
    end;
    if ((Settings and Integer(chkStuffpublicPercentI)) <> 0) then
      qryItems.FieldByName('StuffpublicPercentI').AsFloat :=
        qryItems.FieldByName('_StuffpublicPercent').AsFloat;

  end;
end;

procedure TReciptsGridF.qryItemsStuffAlloySizeDiameterChange(Sender: TField);

var
  StuffAlloy, stuffdiameter, StuffSize, Calc: Double;
begin
  inherited;
  case qryinit.FieldByName('AlloyDiameterSizeDividedByAMillion').AsInteger of
    0:
      begin
        exit;
      end;
    1:
      begin
        TryStrToFloat(qryItems.FieldByName('StuffAlloy').AsString, StuffAlloy);

        TryStrToFloat(qryItems.FieldByName('StuffDiameter').AsString,
          stuffdiameter);

        TryStrToFloat(qryItems.FieldByName('StuffSize').AsString, StuffSize);

        Calc := (StuffAlloy * stuffdiameter * StuffSize) / 1000000;
        if Frac(Calc) <= 0.5 then
          qryItems.FieldByName(FieldNameEntity).AsFloat := floor(Calc)
        else
          qryItems.FieldByName(FieldNameEntity).AsFloat := RoundTo(Calc, 0);

      end;
    2:
      begin
        TryStrToFloat(qryItems.FieldByName('StuffSize').AsString, StuffSize);
        TryStrToFloat(qryItems.FieldByName('StuffDiameter').AsString,
          stuffdiameter);
        Calc := (stuffdiameter * StuffSize);
        qryItems.FieldByName(FieldNameEntity).AsFloat := Calc;
      end;

    3:
      begin
        TryStrToFloat(qryItems.FieldByName('StuffAlloy').AsString, StuffAlloy);
        TryStrToFloat(qryItems.FieldByName('StuffDiameter').AsString,
          stuffdiameter);
        TryStrToFloat(qryItems.FieldByName('StuffSize').AsString, StuffSize);

        Calc := (StuffAlloy * stuffdiameter * StuffSize * 2.5) / 1000000;
        // if Frac(Calc) <= 0.5 then
        // qryItems.FieldByName(FieldNameEntity).AsFloat := Floor(Calc)
        // else
        qryItems.FieldByName(FieldNameWeight).AsFloat := RoundTo(Calc, 0);

      end;

  end;

end;

procedure TReciptsGridF.GetStuffCodeFromStuffTecInfo(StuffTecInfo: String);

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
      popStuffTecInfo := TPopupMenu.Create(Self);
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

procedure TReciptsGridF.NAllGetStuffCodeFromStuffTecInfo(Sender: TObject);
begin
  inherited;
  qryItemsStuffCode.AsString := (Sender as TMenuItem).Hint;
  popStuffTecInfo.Free;
end;

procedure TReciptsGridF.pdbtxt9PrcentGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if (qryItems.FindField('TaxValue') <> nil) and
    (qryItems.FieldByName('TaxValue').AsInteger <> 0) then
    Text := FloatToStr(RoundTo(StrToFloat(Text) * 1.09, 0))
end;

procedure TReciptsGridF.pdbtxtShamsi2Miladi1GetText(Sender: TObject;
var Text: string);
begin
  inherited;
  Text := DateToStr(Shamsi2Miladi(Text));
end;

procedure TReciptsGridF.plblAllReadBankConfigGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig(Text, '')
end;

procedure TReciptsGridF.plblAllStuffCodingGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  if (qryStuff_Unit_TecInf.FindField(Text) <> nil) and
    (qryStuff_Unit_TecInf.Locate('c_StuffCode',
    qryItemsStuffCode.AsLargeInt, [])) then
    Text := qryStuff_Unit_TecInf.FieldByName('VendorBarcode').AsString;
end;

procedure TReciptsGridF.actGetExcelMasterDetailsExecute(Sender: TObject);
begin
  inherited;
  try
    getresponseShow := False;
    GetExcelMasterDetailsF.ShowImPortExcel(qryRecipts, qryItems);
  finally
    getresponseShow := True;
  end;
end;

procedure TReciptsGridF.actInsertNote2Execute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryReciptsReciptNote);
end;

procedure TReciptsGridF.actInsertRow2Execute(Sender: TObject);
begin
  inherited;
  if not okPanel.Visible then
    exit;
  InsertRow.CanInsert := True;
  qryItems.Insert;
end;

procedure TReciptsGridF.actInsertRowExecute(Sender: TObject);
var
  IRow: Integer;
begin
  inherited;
  IRow := qryItemsIRow.AsInteger;
  qryItems.Insert;
  qryItemsIRow.AsInteger := IRow + 1;
end;

procedure TReciptsGridF.actChangeYearIDExecute(Sender: TObject);
begin
  inherited;
  ChangerYearID(qryAllRecipts, qryRecipts)
end;

procedure TReciptsGridF.actJameEsExecute(Sender: TObject);
begin
  inherited;
  DMTaxf.JameTajaratEst(qryCustomers1, qryAllRecipts, qryRecipts, qryItems,
    qryTrades, qryinit, cliBarcode, False)

end;

procedure TReciptsGridF.actJameExecute(Sender: TObject);
begin
  inherited;
  DMTaxf.JameTajarat(qryCustomers1, qryAllRecipts, qryRecipts, qryItems,
    qryTrades, qryinit, cliBarcode)
end;

procedure TReciptsGridF.actReciptPurchaseEffectExecute(Sender: TObject);
begin
  inherited;
  try
    ReciptPurchaseEffectF.Enter(qryItems, _ReciptPurchaseEffectF,
      not(qryRecipts.State in dsEditModes));
  finally
    if not(qryRecipts.State in dsEditModes) then
      _ReciptPurchaseEffectF.Free;
  end;
end;

procedure TReciptsGridF.actInfoSMSFExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryRecipts, '_Mobile', False);
end;

procedure TReciptsGridF.actInsertNote1Execute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryItemsItemNote);
end;

procedure TReciptsGridF.DBGrid1ColEnter(Sender: TObject);
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
    SetKeyboardLatin;

  if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = '_unitcode2')
  then
    SetqryUnit2Stuffs(True);

end;

procedure TReciptsGridF.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = 'stuffalloy')
  then
    SetKeyboardFarsi;

  if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = '_unitcode2')
  then
    SetqryUnit2Stuffs(False);

end;

procedure TReciptsGridF.DBGrid1ColumnsUnit2OpenDropDownForm
  (Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  inherited;
  if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = '_unitcode2')
  then
    SetqryUnit2Stuffs(True);
end;

procedure TReciptsGridF.DBGrid1DblClick(Sender: TObject);

var
  SpecialCode: string;
  id: Integer;
begin
  inherited;
  id := (Sender as TCedarDbgrid).SelectedIndex;
  if DBGrid1.Columns[id].FieldName = 'SpecialCode' then
  begin
    SpecialCode := qryItems.FieldByName('SpecialCode').AsString;
    SpecialCode := SpecialCodingsF.Enter(SpecialCode);
    if SpecialCode <> EmptyStr then
      if qryRecipts.State in dsEditModes then
      begin
        qryItems.edit;
        qryItems.FieldByName('SpecialCode').AsString := SpecialCode
      end;
  end;

end;

procedure TReciptsGridF.DBGrid1DrawColumnCell(Sender: TObject;
const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
var
  BarcodeImage: TBitmap;
  SafeWidth, SafeHeight: Integer;
  aRect: TRect;
begin
  inherited;
  if CountDetail then
  begin
    DBGrid1.Canvas.Font.Color := clWindowText;
    if qryItemsCountDetails.AsInteger <> qryItems.FieldByName(FieldNameEntity).AsInteger
    then
      DBGrid1.Canvas.Font.Color := clMaroon;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  // if Column.FieldName = 'SyntheticCode' then
  // begin
  // Column.Font.Name := 'Code 128';
  // Column.Font.Size := 100;
  // Column.Font.Height := -SafeHeight; // اندازه برابر با ارتفاع سلول
  // Column.Font.Charset := ANSI_CHARSET;
  // Column.Font.Color := clBlack;

  // exit;
  // BarcodeImage := TBitmap.Create;
  // try
  // SafeWidth := Max(1, Rect.Width);
  // SafeHeight := Max(1, Rect.Height);
  // BarcodeImage.Width := SafeWidth;
  // BarcodeImage.Height := SafeHeight;
  // if (BarcodeImage.Width > 0) and (BarcodeImage.Height > 0) then
  // begin
  // BarcodeImage.PixelFormat := pf32bit;
  // BarcodeImage.Canvas.Lock;
  // try
  // if Assigned(BarcodeImage.Canvas) then
  // begin
  // BarcodeImage.Canvas.Brush.Color := clWhite;
  // // aRect := Rect(0, 0, BarcodeImage.Width, BarcodeImage.Height); // مقداردهی aRect
  // aRect.Width := 600; // BarcodeImage.Width div 4;
  // aRect.Height := BarcodeImage.Height;
  // BarcodeImage.Canvas.FillRect(aRect);
  // BarcodeImage.Canvas.Font.Name := 'Code 128';
  // BarcodeImage.Canvas.Font.Size := 100;
  // BarcodeImage.Canvas.Font.Height := -SafeHeight;
  // // اندازه برابر با ارتفاع سلول
  // BarcodeImage.Canvas.Font.Charset := ANSI_CHARSET;
  // BarcodeImage.Canvas.Font.Color := clBlack;
  // BarcodeImage.Canvas.TextOut(0, 0,
  // PersianToLatinDigits(Column.Field.AsString));
  // end
  // else
  // ShowMessage('Canvas نامعتبر است');
  // finally
  // BarcodeImage.Canvas.Unlock;
  // end;
  // DBGrid1.Canvas.StretchDraw(Rect, BarcodeImage);
  // end
  // else
  // ShowMessage('ابعاد تصویر نامعتبر است: Width=' + IntToStr(SafeWidth) +
  // ', Height=' + IntToStr(SafeHeight));
  // finally
  // BarcodeImage.Free;
  // end;
  // end;
end;

procedure TReciptsGridF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if aBigPanel.Visible then
    aBigPanel.Visible := False
end;

procedure TReciptsGridF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if (qryinit.FieldByName('RecallType').AsInteger > 0) and
    (not(qryinit.FieldByName('RecallEditKind').AsInteger in [4, 8])) and
    (Key = vk_down) and (qryItems.State in [dsInsert]) then
    qryItems.Cancel;

  if showBigOnField(Sender) then
    if (DBGrid1.EditorMode) and (DBGrid1.InplaceEditor <> nil) then
      showBigNum(StrToCurrDef(RemoveComma(DBGrid1.InplaceEditor.Text), 0),
        aBigPanel, horoofPanel);

end;

procedure TReciptsGridF.qryReciptsReciptDateChange(Sender: TField);
begin
  inherited;
  try
    qryReciptsReciptDateMiladi.OnChange := nil;
    qryReciptsReciptDateMiladi.ReadOnly := False;
    qryReciptsReciptDateMiladi.AsDateTime := Shamsi2Miladi(Sender.AsString)
  finally
    qryReciptsReciptDateMiladi.OnChange := qryReciptsReciptDateMiladiChange;
  end;
end;

procedure TReciptsGridF.qryReciptsReciptDateMiladiChange(Sender: TField);
begin
  inherited;
  try
    qryReciptsReciptDate.OnChange := nil;
    qryReciptsReciptDate.AsString := miladi2Shamsi(Sender.AsDateTime)
  finally
    qryReciptsReciptDate.OnChange := qryReciptsReciptDateChange;
  end;
end;

procedure TReciptsGridF.qryReciptsReciptStateGetText(Sender: TField;
var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

procedure TReciptsGridF.qryReciptsRialsEqualChange(Sender: TField);
begin
  inherited;
  if not((Settings and Integer(ChkArzType2)) <> 0) then
    if ((qryinit.FieldByName('ArzActive').AsInteger in [1]) and
      (qryinit.FieldByName('ArzTypeID').AsInteger = 0)) then
      RialsEqualChange
end;

procedure TReciptsGridF.RialsEqualChange;
var
  s: string;
begin
  inherited;
  if cmbHowConvert.ItemIndex <> -1 then
    With qryItems do
      try
        DisableControls;
        First;
        while not Eof do
        begin
          edit;
          FieldByName('ArzAmount').AsFloat := FieldByName('ArzAmount').AsFloat;
          qryItems.FieldByName('HowConvert').AsInteger :=
            Integer(cmbHowConvert.Items.Objects[cmbHowConvert.ItemIndex]);

          qryItemsArzTypeID2.AsInteger :=
            Integer(cmb_ArzTypeID2.Items.Objects[cmb_ArzTypeID2.ItemIndex]);

          qryItems.FieldByName('ArzRate2').AsString := edtArzRate2.Text;
          s := edtExchangePrice.Text;
          if s.Trim = '' then
            s := '1';
          qryItems.FieldByName('ExchangePrice').AsString := s;
          Next;
        end;
      finally
        EnableControls;
        Warn('انتقال ارز به آرتیکل هاانجام شد.', mtInformation);
      end;
end;

procedure TReciptsGridF.mnuN13Click(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryReciptsStoreID.AsInteger, qryItemsStuffCode.AsLargeInt, 1)
end;

procedure TReciptsGridF.mnuN19Click(Sender: TObject);
begin
  inherited;
  qryItems.Sort := 'ReciptItemID';
end;

procedure TReciptsGridF.mnuZeroClick(Sender: TObject);
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

procedure TReciptsGridF.N12Click(Sender: TObject);
begin
  inherited;
  StuffTransactionF.Enter(qryReciptsStoreID.AsInteger,
    qryItemsStuffCode.AsLargeInt)
end;

procedure TReciptsGridF.actCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryReciptsStoreID.AsInteger, qryItemsStuffCode.AsInteger, 1);
end;

procedure TReciptsGridF.actCopyExecute(Sender: TObject);
begin
  inherited;
  if ((Settings and Integer(CHKBeforCopySetCorrelateRecipt)) <> 0) then
  begin
    if actCorrelateRecipt.Execute then
      CopyNewRecipts(qryAllRecipts, qryRecipts, qryinit)
  end
  else
    CopyNewRecipts(qryAllRecipts, qryRecipts, qryinit);
end;

procedure TReciptsGridF.actSplitFormExecute(Sender: TObject);
begin
  inherited;
  ReciptsSplit(qryAllRecipts, qryinit)
end;

procedure TReciptsGridF.actSp_UpdateChildFromFatherExecute(Sender: TObject);
begin
  inherited;
  if get_response
    ('آیا برای تطبیق دادن فرم جاری با فرم پدر و یکسان سازی آن مطمئن هستید؟',
    clGreen) <> mrYes then
    exit;

  try
    Sp_UpdateChildFromFather(qryReciptsID.AsLargeInt, qryRecipts)
  finally
    qryReciptsAfterScroll(qryRecipts)
  end;
end;

procedure TReciptsGridF.actStereotypyShowFExecute(Sender: TObject);
begin
  inherited;
  StereotypyShowF.Enter(qryItems.FieldByName('StereotypyID').AsInteger);
end;

procedure TReciptsGridF.actStuffCodingExecute(Sender: TObject);
begin
  inherited;
  mdiMainF.actCoding.Execute
end;

procedure TReciptsGridF.actSumPriceExecute(Sender: TObject);

var
  txt: String;
  Result: array [0 .. 10] of String;
begin
  inherited;
  txt := 'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptItemSum.TotallSellPrice + ISNULL'
    + ' (AllDeficits_ForRecipts.DeficitAdd_Dec, 0) AS TotallPrice' +
    ' FROM ReciptItemSum INNER JOIN' +
    ' Recipts ON ReciptItemSum.ReciptID = Recipts.ReciptID AND ReciptItemSum.ServerID = Recipts.ServerID AND'
    + ' ReciptItemSum.YearID = Recipts.YearID LEFT OUTER JOIN' +
    ' AllDeficits_ForRecipts ON Recipts.ReciptID = AllDeficits_ForRecipts.ReciptID AND Recipts.ServerID ='
    + ' AllDeficits_ForRecipts.ServerID AND Recipts.YearID = AllDeficits_ForRecipts.YearID'
    + ' WHERE (Recipts.ReciptType = ' + qryinit.FieldByName('RecallReciptTypes')
    .AsString + ')';

  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'جستجو كد', txt,
    ['شماره فرم', 'تاريخ فرم', 'مبلغ'], Result, [100, 100, 200], alLeft) then
  begin
    qryItems.FieldByName(FieldNameEntity).AsFloat := 1;
    qryItems.FieldByName('UnitSellPrice').AsString := Result[2];
    qryItems.FieldByName(FieldNamePrice).AsString := Result[2];
  end;
end;

procedure TReciptsGridF.actTelegramExecute(Sender: TObject);
var
  qry: TADOQuery;
  msg: string;
begin
  inherited;
  Telegram_ChatID := EmptyStr;
  Bale_ChatID := EmptyStr;
  wcActive := ReciptsGridF.ActiveControl;
  if wcActive is TDBEdit then
  begin
    qry := TADOQuery(FindComponent(TDBEdit(wcActive).Hint));
    if qry <> nil then
      Telegram_ChatID := qry.FieldByName('TelegramChatID').AsString.Trim;
  end
  else
    msg := 'برای کد انتخاب شده تلگرام فعال نیست';

  if Telegram_ChatID = EmptyStr then
  begin
    msg := msg + #13 + 'برای کد انتخاب شده Telegram Chat ID وجود ندارد';
    Warn(msg);
    exit;
  end;

  popTelegram.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsGridF.actBaleExecute(Sender: TObject);
var
  qry: TADOQuery;
  msg: string;
begin
  inherited;
  Telegram_ChatID := EmptyStr;
  Bale_ChatID := EmptyStr;
  wcActive := ReciptsGridF.ActiveControl;
  if wcActive is TDBEdit then
  begin
    qry := TADOQuery(FindComponent(TDBEdit(wcActive).Hint));
    if qry <> nil then
      Bale_ChatID := qry.FieldByName('BaleChatID').AsString.Trim;
  end
  else
    msg := 'برای کد انتخاب شده بله فعال نیست';

  if Bale_ChatID = EmptyStr then
  begin
    msg := msg + #13 + 'برای کد انتخاب شده بله Chat ID وجود ندارد';
    Warn(msg);
    exit;
  end;

  popTelegram.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TReciptsGridF.mnuTelegramClick(Sender: TObject);

var
  // DoWhile: Boolean;
  dir: string;
begin
  inherited;
  // dir := __TheTempDIR;
  if not SelectDirectory('لطفاً مسير ذخیره را وارد كنيد:‏', '', dir) then
    exit;

  // DoWhile := True;
  SeletedPrint(ppDBPipeline1, DBGrid1);
  InitReportFile(ppReport1, qryinit.FieldByName('PerformFileName').AsString,
    True, False, 'فرم', True, psSendFlow);
  ppDBPipeline1.RangeBegin := rbCurrentRecord;
  ppDBPipeline1.RangeEnd := reCurrentRecord;

  ppReport1.DeviceType := TMenuItem(Sender).Hint;
  ppReport1.DefaultFileDeviceType := TMenuItem(Sender).Hint;
  ppReport1.AllowPrintToFile := True;
  ppReport1.ShowPrintDialog := False;

  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryRecipts.DisableControls;
    qryItems.DisableControls;

    // case (Sender as TMenuItem).Tag of
    // 1:
    PrintSendTelegramChatID(dir, TMenuItem(Sender).Hint);
    // 2:
    // With qryRecipts do
    // begin
    // First;
    // while (not Eof) and (DoWhile) do
    // begin
    // If LastKeyPressed = VK_ESCAPE then
    // if get_response('عمليات متوقف شود؟') = mrYes then
    // begin
    // DoWhile := False;
    // LastKeyPressed := 0;
    // end;
    // LastKeyPressed := 0;
    // PrintSendTelegramChatID(dir, TMenuItem(Sender).Hint);
    //
    // Next;
    // end;
    // end;
    // end;

  finally
    qryRecipts.EnableControls;
    qryItems.EnableControls;
    CloseMessage;
  end;

end;

procedure TReciptsGridF.PrintSendTelegramChatID(dir, FileType: string);

var
  Fname: string;
begin
  With qryRecipts do
  begin
    Fname := IncludeTrailingPathDelimiter(dir) + APPBank.Year.ToString +
      qryReciptsReciptType.AsString + '_' +
      qryReciptsReciptNumber.AsString.Trim;
    ppReport1.TextFileName := Fname + '.' + FileType;
    // ppReport1.PDFSettings.CompressionLevel := 0;
    // ppReport1.PDFSettings.ImageCompressionLevel := 0;

    ppReport1.Print;

    if Telegram_ChatID <> EmptyStr then
      SendTelegramChatID(Fname + ifthen(Pos('pdf', LowerCase(FileType)) > 0, '',
        '_1') + '.' + FileType)
    else
      SendTelegramChatID(Fname + '.' + FileType);

  end;

end;

procedure TReciptsGridF.SendTelegramChatID(Text_FileName: string);

var
  T: TTelegram;
  b: TBaleBot;
  s, Text_FileName2: string;
begin
  if Telegram_ChatID + Bale_ChatID <> EmptyStr then
  begin
    s := Caption + ' ' + qryReciptsReciptNumber.AsString + #13#10 + 'تاریخ ' +
      qryReciptsReciptDate.AsString;

    if PnlPerson1.Visible then
      s := s + #13#10 + qryRecipts.FieldByName('_PersonName1').AsString;
    if PnlPerson2.Visible then
      s := s + #13#10 + qryRecipts.FieldByName('_PersonName2').AsString;
    if pnlPerson3.Visible then

      s := s + #13#10 + qryRecipts.FieldByName('_PersonName3').AsString;

    Text_FileName2 := ReplaceStr(Text_FileName, '_1.', '_2.');

    if Telegram_ChatID <> EmptyStr then
    begin
      T := TTelegram.Create;
      try
        try
          T.Token := TelgeramUserBot;
          if Pos('.pdf', LowerCase(Text_FileName)) > 0 then
          begin
            T.SendDocument(Telegram_ChatID, s, Text_FileName);
            if FileExists(Text_FileName2) and (Text_FileName2 <> Text_FileName)
            then
              T.SendDocument(Telegram_ChatID, '2-' + s, Text_FileName2);
          end
          else
          begin
            T.SendPhoto(Telegram_ChatID, s, Text_FileName);
            if FileExists(Text_FileName2) and (Text_FileName2 <> Text_FileName)
            then
              T.SendPhoto(Telegram_ChatID, '2-' + s, Text_FileName2);

          end;

        except
        end;
      finally
        T.Free;
      end;
    end;
    if Bale_ChatID <> EmptyStr then
    begin
      b := TBaleBot.Create(BaleUserBot);
      try
        try
          if Pos('.pdf', LowerCase(Text_FileName)) > 0 then
          begin
            b.SendDocument(Bale_ChatID, s, Text_FileName);
            if FileExists(Text_FileName2) and (Text_FileName2 <> Text_FileName)
            then
              b.SendDocument(Bale_ChatID, '2-' + s, Text_FileName2);
          end
          else
          begin
            b.SendPhoto(Bale_ChatID, s, Text_FileName);
            if FileExists(Text_FileName2) and (Text_FileName2 <> Text_FileName)
            then
              b.SendPhoto(Bale_ChatID, '2-' + s, Text_FileName2);

          end;

        except
        end;
      finally
        b.Free;
      end;
    end;

  end;
end;

procedure TReciptsGridF.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  // ViewFileF.Enter(ADDKeyID(qryRecipts) + qryReciptsReciptID.AsString,
  // 'ReciptsF', True);
  ViewFileOnServerF.Enter(ADDKeyID(qryRecipts) + qryReciptsReciptID.AsString,
    'ReciptsF', True);

end;

procedure TReciptsGridF.qryItemsLength_WidthstuffdiameterChange(Sender: TField);
begin
  inherited;
  if qryinit.FieldByName('AutoPrice').AsInteger = 11 then
  begin
    qryItems.FieldByName(FieldNameWeight).AsFloat :=
      RoundTo(qryItems.FieldByName('_Weight_').AsFloat *
      qryItems.FieldByName('Length_').AsFloat * qryItems.FieldByName('Width')
      .AsFloat * qryItems.FieldByName('stuffdiameter').AsFloat *
      qryItems.FieldByName(FieldNameEntity).AsFloat / 10000, opt.RoundWeight);
    StuffCodeChange(qryItems, qryRecipts, qryinit, EntityValue, StatusBar2,
      PriceOn_StoreType, MachineFullWeight1, FormOutput, FieldNameEntity,
      FieldNameWeight, MenSellPrice, [mnuSp1, mnuSp2, mnuSp3, mnuSp4, mnuSp5,
      mnuSp6, mnuSp7]);
  end;

end;

function TReciptsGridF.FindRemain: Double;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT SUM( CASE WHEN preReciptItemID = %d THEN -(InputEntity+OutputEntity) '
      + 'WHEN ReciptItemID = %d THEN (InputEntity+OutputEntity) ELSE 0 END) RemainEntity';
    SQL.Add('FROM ReciptItems WHERE ( (preReciptItemID = %d )OR (ReciptItemID = %d)) '
      + ' AND (ReciptItemID <> %d)  AND (YearID = %d)');
    SQL.Text := Format(SQL.Text, [qryItemspreReciptItemID.AsInteger,
      qryItemspreReciptItemID.AsInteger, qryItemspreReciptItemID.AsInteger,
      qryItemspreReciptItemID.AsInteger, qryItemsReciptItemID.AsInteger,
      qryReciptsYearID.AsInteger]);
    // qryReciptsServerID.AsInteger,      AND ( ServerID = %d )
    Active := True;

    Result := Fields[0].AsFloat;
    Active := False;
  end;
end;

procedure TReciptsGridF.UpdateStatusBar1;
var
  Deficit_Add_Dec, c: Currency;
begin
  c := 0;
  Deficit_Add_Dec := 0;
  // if SumGrid1.Enable_Controls then
  if PriceOn_StoreType then
  begin
    Deficit_Add_Dec := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec')
    // -      CalcSumFileds(qryItems, 'DeficitValue123')
      ;
    opt.PayablePrice := Deficit_Add_Dec;
    StatusBar1.Panels[5].Text := '   كسورات/اضافات=' +
      CurrToStrF(opt.PayablePrice, ffCurrency, 0);
    opt.PayablePrice := CalcSumFileds(qryItems, FieldNamePrice) +
      opt.PayablePrice;
    StatusBar1.Panels[5].Text := StatusBar1.Panels[5].Text + ' بهاي كل=' +
      CurrToStrF(opt.PayablePrice, ffCurrency, 0);
    if TotallSellPriceAct then
    begin
      opt.PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
        Deficit_Add_Dec;
      StatusBar1.Panels[5].Text := StatusBar1.Panels[5].Text + ' خالص ' +
        CurrToStrF(opt.PayablePrice, ffCurrency, 0);
    end;
    c := opt.PayablePrice;
  end;
  if pnlInsuranceValue.Visible then
  begin
    if c = 0 then
      c := CalcSumFileds(qryItems, 'TotallSellPrice') + Deficit_Add_Dec;
    c := RoundTo(c, qryinit.FieldByName('InsuranceValue').AsInteger);
    pnlInsuranceValue.Caption := CurrToStrF(c, ffCurrency, 0)
  end;

end;

procedure TReciptsGridF.pdbtxtMiladi2ShamsiGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  if Text <> '' then
    Text := miladi2Shamsi(StrToDateTime(Text)) + ' ' +
      FormatDateTime('hh:mm:ss ampm', StrToDateTime(Text))
end;

procedure TReciptsGridF.pdbtxtReciptStateGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  Text := GetReciptState(qryReciptsReciptState.AsInteger)
end;

procedure TReciptsGridF.qryItemsacc_TopicCodeChange(Sender: TField);
begin
  inherited;
  // Sender.Tag := StrToInt64(Trim(Sender.AsString))

  // ppDBText6.Hyperlink

end;

procedure TReciptsGridF.SetRow;
begin
  if (qryinit.FieldByName('ReciptIDEventKind').AsInteger = 1) then
    exit;
  if not InsertRow.CanInsert then
    exit;
  with qryItems do
    try
      with InsertRow do
      begin
        DisableControls;
        AfterPost := nil;
        GotoBookmark(BMark);
        while not Eof do
        begin
          edit;
          FieldByName('irow').AsInteger := FieldByName('irow').AsInteger + 1;
          Post;
          Next;
        end;
      end;
    finally
      EnableControls;
      GotoBookmark(InsertRow.BMark);
      InsertRow.CanInsert := False;
      AfterPost := qryItemsAfterPost;
    end;
end;

procedure TReciptsGridF.actRowDownExecute(Sender: TObject);
begin
  inherited;
  With qryItems do
  begin
    edit;
    qryItemsIRow.AsInteger := qryItemsIRow.AsInteger + 1;
    Post;
  end;
end;

procedure TReciptsGridF.actRowUpExecute(Sender: TObject);
begin
  inherited;
  With qryItems do
  begin
    edit;
    qryItemsIRow.AsInteger := qryItemsIRow.AsInteger - 1;
    Post;
  end;
end;

procedure TReciptsGridF.actMoaadiyanExecute(Sender: TObject);
begin
  inherited;
  if ((qryReciptsIRTAXID.AsString <> EmptyStr) and (SellEffect <> 2)) then
  BEGIN
    MnuTaxCorrectionClick(Sender);
  END
  else if qryReciptsReciptState.AsInteger = 3 then
    Moaadiyan(TaxCancellation, False)
  else if SellEffect = 2 then
    Moaadiyan(TaxReturn, False)
  else
    Moaadiyan(TaxMain, False);
end;

procedure TReciptsGridF.MnuTaxCancellationClick(Sender: TObject);
begin
  inherited;
  Moaadiyan(TaxCancellation, False);
end;

procedure TReciptsGridF.MnuTaxReturnFromSaleClick(Sender: TObject);
begin
  inherited;
  Moaadiyan(TaxReturn, False);
end;

procedure TReciptsGridF.MnuTaxReturnFromSalePClick(Sender: TObject);
begin
  inherited;
  if grdItemsReturn = nil then
  begin
    SplItemsReturn := TSplitter.Create(Self);
    SplItemsReturn.Align := alBottom;
    SplItemsReturn.Parent := Panel3;
    grdItemsReturn := TCedarDbgrid.Create(Self);
    srcItemsReturn := TDataSource.Create(Self);
    srcItemsReturn.DataSet := qryItemsReturn;
    plnItemsReturn.DataSource := srcItemsReturn;
  end;
  with qryItemsReturn do
  begin
    Active := False;
    Parameters.ParamByName('ID').Value := qryReciptsID.AsLargeInt;
    Active := True;
  end;
end;

procedure TReciptsGridF.MnuTaxCorrectionClick(Sender: TObject);
begin
  inherited;
  MoaadiyanTaxCorrection(TaxCorrection)
end;

procedure TReciptsGridF.MnuTaxCorrection2Click(Sender: TObject);
begin
  inherited;
  MoaadiyanTaxCorrection(TaxCorrection2)
end;

procedure TReciptsGridF.MoaadiyanTaxCorrection(TaxFormKind: TTaxFormKind);
var
  OldReciptID, ReciptID, ServerID, YearID, i, ReciptNumber: Integer;
  b: Boolean;
  s: string;
begin
  if (qryReciptsDocNo.AsInteger <> 0) then
  begin
    Warn('فرم دارای سند حسابداری می باشد و قابل ارسال به مودیان نیست!!');
    exit;
  end;

  if get_response(' آیا برای ایجاد /ارسال  فرم ' + TaxFormKindName(TaxFormKind)
    + ' به سامانه مودیان مطمئن هستید؟ ', clGreen) <> mrYes then
    exit;

  if TaxFormKind = TaxCorrection then
    if (qryReciptsIRTAXID.AsString <> EmptyStr) then
    begin
      Moaadiyan(TaxCorrection, False);
      exit;
    end;

  OldReciptID := qryAllRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryAllRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryAllRecipts.FieldByName('YearID').AsInteger;

  DMf.adcBSell.BeginTrans;
  With TADOStoredProc.Create(Application) do
    try

      try

        ProcedureName := 'NewRecipts';
        ConnectionString := DMf.adcBSell.ConnectionString;
        // Parameters.AddParameter;
        Parameters.Refresh;
        Parameters.ParamByName('@ReciptID').Value := 0;
        Parameters.ParamByName('@OldReciptID').Value := OldReciptID;
        Parameters.ParamByName('@ServerID').Value := ServerID;
        Parameters.ParamByName('@YearID').Value := YearID;
        ExecProc;
        ReciptID := Parameters.ParamByName('@RETURN_VALUE').Value;
        BigMessage('كپي شد.‏', 1);
        ReciptNumber := GetReciptNumber(qryinit, qryRecipts,
          qryinit.FieldByName('ReciptNumberEventKind').AsInteger, myStore,
          False, False);

        s := 'UPDATE Recipts SET DATE_OF_SEND_TO_TAX = GETDATE()' +
          ',ReciptNumber = ' + ReciptNumber.ToString +
          ',tax_status = 3,TAXID ='''',IRTAXID = ''' + qryReciptsTAXID.AsString
          + ''' ,LastUser =''#' + User.Name +
          ''' WHERE(ReciptID = %d)AND(YearID = %d)AND(ServerID = %d)';
        s := Format(s, [ReciptID, YearID, ServerID]);
        DMf.adcBSell.Execute(s, i);

        qryAllRecipts.Requery();
        if qryAllRecipts.Locate('ReciptID;ServerID;YearID',
          VarArrayOf([ReciptID, ServerID, YearID]), []) then
        begin
          // qryRecipts.edit;
          // b := qryRecipts.FieldByName('ReciptNumber').ReadOnly;
          // qryRecipts.FieldByName('ReciptNumber').ReadOnly := False;
          // GetReciptNumber(qryinit, qryRecipts,
          // qryinit.FieldByName('ReciptNumberEventKind').AsInteger, myStore,
          // False, False);
          // qryRecipts.FieldByName('ReciptNumber').ReadOnly := b;
          // qryRecipts.Post;
        end;

        s := 'UPDATE Recipts SET ReciptState = 3, LastUser =''##' + User.Name +
          ''' WHERE(ReciptID = %d)AND(YearID = %d)AND(ServerID = %d)';
        s := Format(s, [OldReciptID, YearID, ServerID]);
        DMf.adcBSell.Execute(s, i);
        if i > 0 then
          if DMf.adcBSell.InTransaction then
            DMf.adcBSell.CommitTrans;

      except
        on E: Exception do
        begin
          if DMf.adcBSell.InTransaction then
            DMf.adcBSell.RollbackTrans;
          add2log(E.Message);
          Warn2(E.Message);
        end;

      end;

    finally
      pnlDefaultDate.Visible := True;
      Warn('اصلاحات را روی فرم جاری انجام داده و دوباره ارسال اصلاحی را بزنید');
      Free;
    end;
end;

procedure TReciptsGridF.Moaadiyan(TaxFormKind: TTaxFormKind;
ReturnFromSaleNext: Boolean);
var
  aTax: TMainTax;
  Item: TInvoiceBodyDto;
  Result, s, SQL: string;
  SUCCESS: TSuccess;
  res: TPacketResponse;
  ReciptDate: TDateTime;
  cdcDate: TDateTime;
  Time: TTime;
  Tonw, ArzAmount: Real;
  Temp, TotalPrice_T, prdis, tprdis, Tadis: Largeint;
  TotallSellPrice_T, DeficitValue, tvam_TaxValue, id, tsstam, cop, vop,
    tvop: Largeint;
  b: Boolean;
  DsItem: TDataSet;

  CapValue: Largeint;
  TadisValue: Largeint;
  CashRatio: Double;
  RowAdis: Largeint;
  RowTax: Largeint;
  VsValue: Largeint;
  OsValue: Largeint;
  KsValue: Largeint;

begin
  inherited;
  if qryRecipts.State in dsEditModes then
    qryRecipts.Post;
  qryCustomers1.Requery();

  qryTrades.Requery();

  if (TaxFormKind in [TaxCancellation, TaxCorrection]) and
    (qryReciptsDocNo.AsInteger <> 0) then
  begin
    if get_response('فرم دارای سند حسابداری می باشد ' + ' آیا برای ارسال فرم ' +
      TaxFormKindName(TaxFormKind) + ' به سامانه مودیان مطمئن هستید؟ ', clRed)
      <> mrYes then
      exit;
  end;

  if qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
    Integer(CHkPrintTax) = 0 then
    DsItem := qryItems
  else
    DsItem := cliBarcode;

  if ((TaxFormKind = TaxReturn) or (ReturnFromSaleNext)) then
    with qryItemsReturn do
    begin

      if (qryinit.FieldByName('ReciptNumberOfType').AsString.Length < 4) then
      begin
        Warn2('تنظیمات شماره فرم برگشت از فروش تنظیم دقیق تنظیم نشده');
        exit;
      end;

      Active := False;
      Parameters.ParamByName('ID').Value := qryReciptsID.AsLargeInt;
      Active := True;
      DsItem := qryItemsReturn;
    end;

  if qryReciptsInvoiceTemplate.AsInteger = 7 then
  begin
    s := EmptyStr;
    if qryReciptsArzTypeID.AsInteger <> qryTrades.FieldByName('ArzType').AsInteger
    then
      s := 'نوع ارز در اطلاعات ارزي با اطلاعات فرم همخواني ندارد' + #13#13;
    if RoundTo(Calc_SumFileds('Weight'), -3) <>
      RoundTo(qryTrades.FieldByName('RTWeight').AsFloat, -3) then
      s := s + 'وزن در اطلاعات ارزي با اطلاعات فرم همخواني ندارد(تا دو رقم اعشار)'
        + #13#10 + FloatToStr(Calc_SumFileds('Weight')) + '<>' +
        qryTrades.FieldByName('RTWeight').AsString;

    if s <> EmptyStr then
    begin
      Warn(s);
      actReciptsTradesF.Execute;
      exit;
    end;
  end;

  if get_response(' آیا برای ارسال فرم ' + TaxFormKindName(TaxFormKind) +
    ' به سامانه مودیان مطمئن هستید؟ ', clGreen) <> mrYes then
    exit;
  IsSendingMoadiyan := True;

  if ((((TaxFormKind = TaxReturn) or (ReturnFromSaleNext)) and
    (qryReciptsIRTAXID.AsString = EmptyStr)) or ((ReturnFromSaleNext) and
    (qryReciptstax_status.AsInteger = 1))) then
  begin
    DMTaxf.MoaadiyanTaxReturnFromSale(TaxFormKind, qryCustomers1, qryAllRecipts,
      qryRecipts, qryItems, qryTrades, qryinit, cliBarcode, MnuCheckMoaadiyan,
      Mnusandbox, MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection,
      MnuTaxReturnFromSale, MnuLoop, mnuEntity, mnuWeight, ReturnFromSaleNext);
    exit;
  end;

  if (TaxFormKind = TaxCancellation) and
    ((qryReciptsIRTAXID.AsString = EmptyStr) or (qryItems.RecordCount > 0)) then
  begin
    id := qryRecipts.FieldByName('ID').AsLargeInt;
    // s := 'update Recipts set ReciptState = 3  WHERE  id= %s  ';    // s := Format(s, [qryRecipts.FieldByName('ID').AsString]);    // DMf.adcBSell.Execute(s);
    if actReciptStateTo0.Execute then
    begin
      FreeReservedCodes(DMf.adcBSell, 'Recipts', 'ReciptNumber',
        IntToStr(formType));
      qryRecipts.Insert;
      pnlDefaultDate.Visible := True;
      NewReciptOnly(id, qryRecipts);
      qryAllRecipts.Requery();
      qryAllRecipts.Last;
      pnlDefaultDate.Visible := True;
      if True { ((RecuestActive and Integer(CHkEditTaxCancellation)) <> 0) }
      then
      begin
        Warn2('اصلاحات احتمالی شماره و تاریخ را روی فرم جاری انجام داده و دوباره منوی  '
          + MnuCheckMoaadiyan.Caption + ' را بزنید', 0);
        exit;
      end
      else
        Warn2('درصورت ارسال نشدن با منو ' + MnuCheckMoaadiyan.Caption +
          ' کنترل کنید ', 0);
      pnlDefaultDate.Visible := True;
    end;
  end;

  if (TaxFormKind = TaxMain) and (qryReciptstax_status.AsInteger = 1) then
  begin
    Warn('فرم قبلا به سامانه مودیان ارسال شده');
    exit;
  end;

  if (qryReciptstax_status.AsInteger = 2) then
  begin
    Warn('لطفا صبر کنید ...فرم قبلا به سامانه مودیان ارسال شده');
    exit;
  end;

  if (TaxFormKind <> TaxCorrection) and (TaxFormKind <> TaxReturn) and
    (not ReturnFromSaleNext) and (qryReciptstax_status.AsInteger = 3) then
  begin
    Warn('اصلاحی صادر شود');
    exit;
  end;

  aTax := TMainTax.Create;
  if Mnusandbox.Checked then
  begin
    if get_response(' آیا برای ارسال به محیط سند باکس فرم ' +
      TaxFormKindName(TaxFormKind) + ' به سامانه مودیان مطمئن هستید؟ ', clGray)
      <> mrYes then
      exit;
    aTax.ConfigModel.SERVERTYPE := '2';
  end
  else
    aTax.ConfigModel.SERVERTYPE := '1';

  SetKeysModel(aTax);
  TotallSellPrice_T := Trunc(CalcSumFileds(DsItem, 'TotallSellPrice'));
  TotalPrice_T := Trunc(CalcSumFileds(DsItem, 'TotalOutputPrice'));
  TotalPrice_T := TotalPrice_T +
    Trunc(CalcSumFileds(DsItem, 'TotalInputPrice'));
  DeficitValue := Trunc(CalcSumFileds(DsItem, 'DeficitValue'));
  tvam_TaxValue := Trunc(CalcSumFileds(DsItem, 'TaxValue'));
  tvop := 0;
  tprdis := 0;
  Tonw := 0;
  ArzAmount := 0;
  Tadis := 0;

{$REGION 'InvoiceHeaderDto'}
  // with aTax.InvoiceHeaderDto do
  begin
    /// الگوی صورتحساب
    /// وضوع صورتحساب شامل: اصلی 1 ،اصالحی 2 ،ابطالی 3 و برگشتاز فروش 4 ،است.
    aTax.InvoiceHeaderDto.ins := IntToStr(Integer(TaxFormKind));

    if TaxFormKind <> TaxMain then
      aTax.InvoiceHeaderDto.irtaxid := qryReciptsTAXID.AsString;
    if TaxFormKind in [TaxCancellation, TaxReturn] then
      aTax.InvoiceHeaderDto.irtaxid := qryReciptsIRTAXID.AsString;

    if TaxFormKind = TaxCorrection then
      aTax.InvoiceHeaderDto.irtaxid := qryReciptsIRTAXID.AsString;

    Time := TimeOf(Now); // TimeOf(IncMinute(Now, -5));

    if (((TaxFormKind = TaxCancellation) or (TaxFormKind = TaxCorrection) or
      (TaxFormKind = TaxReturn)) and
      (Length(qryReciptsDefaultDate.AsString.Trim) = 10)) then
      ReciptDate := Shamsi2Miladi(qryReciptsDefaultDate.AsString)
    else
      ReciptDate := Shamsi2Miladi(qryReciptsReciptDate.AsString);

    ReciptDate := ReciptDate + Time;
    aTax.InvoiceHeaderDto.indatim := DateTimeToUTC(ReciptDate);
    // ماده (9) قانون پایانه‌های فروشگاهی: insr/indati2m فقط برای اسناد
    // ثبت‌شده/کتمان‌شده دیرارسال پر می‌شوند، نه برای هر سند.
    if qryReciptsInsr.AsBoolean then
    begin
      aTax.InvoiceHeaderDto.Insr := '1';
      if not qryReciptsIndati2m.IsNull then
        aTax.InvoiceHeaderDto.Indati2m :=
          DateTimeToUTC(qryReciptsIndati2m.AsDateTime);
    end
    else
      aTax.InvoiceHeaderDto.Indati2m := aTax.InvoiceHeaderDto.indatim;
    if qryReciptsNti1.AsString.Trim <> EmptyStr then
      aTax.InvoiceHeaderDto.Nti1 := qryReciptsNti1.AsString;
    if qryReciptsNti2.AsString.Trim <> EmptyStr then
      aTax.InvoiceHeaderDto.Nti2 := qryReciptsNti2.AsString;
    // taxId:=taxId;

    aTax.InvoiceHeaderDto.inno :=
      RightStr('0000000000' + qryReciptsReciptNumber.AsString.Trim, 10);
    // if TaxFormKind = TaxCancellation then
    // aTax.InvoiceHeaderDto.inno := '-' + aTax.InvoiceHeaderDto.inno;

    // aTax.PaymentDto.pid := qryCustomers1.FieldByName('HCKharidarTypeCode')      .AsString; // کد ملی  اتباع

    aTax.InvoiceHeaderDto.inp := qryReciptsInvoiceTemplate.AsInteger; // '1';
    /// HCTarafGaradadTypeCode
    // if qryCustomers1.FieldByName('HCKharidarTypeCode').AsInteger = 5 then
    /// HCKharidarTypeCode
    if qryCustomers1.FieldByName('HCTarafGaradadTypeCode').AsInteger in [1, 8]
    then
    begin
      aTax.InvoiceHeaderDto.inty := '2'; // =2= نوع صورتحساب
    end
    else
    begin
      aTax.InvoiceHeaderDto.inty := '1'; // نوع صورتحساب
    end;

    if qryReciptsInvoiceTemplate.AsInteger = 7 then
      aTax.InvoiceHeaderDto.inty := '1'; // نوع صورتحساب

    if qryReciptsInvoiceTemplate.AsInteger = 4 then
    begin
      aTax.InvoiceHeaderDto.Crn := qryReciptsCRN.AsString;
    end;

    // وش ت�ویه شامل: نقدی ۱ ،نسیه ۲ و نقدی/نسیه ۳ است.
    if qryReciptsLoanPayment.AsCurrency > 0 then
    begin
      if ((qryReciptsLoanPayment.AsCurrency = TotallSellPrice_T) or
        (TaxFormKind = TaxCancellation)) then
      begin
        // نسیه کامل
        aTax.InvoiceHeaderDto.setm := '2';
        aTax.InvoiceHeaderDto.cap := '0';
        aTax.InvoiceHeaderDto.insp := IntToStr(TotallSellPrice_T);
      end
      else
      begin
        // نقد و نسیه (setm = 3)
        aTax.InvoiceHeaderDto.setm := '3';

        // طبق فرمول رسمی سند (صفحه ۴۶ و ۴۷):
        // C  = Xs - W2 - W - Cr
        // Cr = مبلغ نسیه (LoanPayment)
        // W  = tvam
        // W2 = todam (در کد شما همیشه ۰ است)
        // Xs = TotallSellPrice_T (tbill)

        aTax.InvoiceHeaderDto.insp :=
          IntToStr(qryReciptsLoanPayment.AsLargeInt); // Cr

        aTax.InvoiceHeaderDto.cap :=
          IntToStr(TotallSellPrice_T - qryReciptsLoanPayment.AsLargeInt -
          tvam_TaxValue);
        // C = Xs - Cr - W   (چون W2 = 0)
      end;
    end
    else
    begin
      // نقدی کامل
      aTax.InvoiceHeaderDto.setm := '1';
      aTax.InvoiceHeaderDto.cap := IntToStr(TotallSellPrice_T);
      aTax.InvoiceHeaderDto.insp := '0';
    end;

    aTax.InvoiceHeaderDto.tins := opt.Economic_Number;

    if not((qryReciptsInvoiceTemplate.AsInteger = 7) or
      (aTax.InvoiceHeaderDto.inty = '2')) then
    begin

      aTax.InvoiceHeaderDto.tob := qryCustomers1.FieldByName
        ('HCKharidarTypeCode').AsString; // نوع شخص خریدار

      if qryCustomers1.FieldByName('HCKharidarTypeCode').AsInteger <> 3 then
        aTax.InvoiceHeaderDto.bid := qryRecipts_NationalID.AsString;

      if qryCustomers1.FieldByName('HCKharidarTypeCode').AsInteger = 2 then
        aTax.InvoiceHeaderDto.tinb := qryCustomers1.FieldByName
          ('NationalCode').AsString
      else
        aTax.InvoiceHeaderDto.tinb := qryCustomers1.FieldByName
          ('EconomicNumber').AsString;
      // شماره اقتصادی خریدا

      // کد شعبه فروشنده
      // if (qryinit.FieldByName('SellsEmporiumActive').AsInteger = 1) then
      /// aTax.InvoiceHeaderDto.sbc := qryReciptsSellsEmporium.AsString;

      aTax.InvoiceHeaderDto.bpc := qryCustomers1.FieldByName
        ('PostalCode').AsString;
    end;

    if qryCustomers1.FieldByName('Buyerbbc').AsString <> EmptyStr then
      aTax.InvoiceHeaderDto.bbc := qryCustomers1.FieldByName
        ('Buyerbbc').AsString;

    // aTax.InvoiceHeaderDto.tprdis := IntToStr(TotalPrice);  پایین تر
    // مجموع مبلغ کل قبل از کسر تخفیف

    { مجموع مبلغ کل پس از کسر تخفیف )Vs )برابر است با: جمع مبلغ
      پس از کسر تخفیف در صورتحساب }

    // if DeficitValue <> 0 then
    aTax.InvoiceHeaderDto.tdis := IntToStr(DeficitValue);

    // IntToStr(StrToInt(tprdis) - StrToInt(tadis));  //7 مجموع تخفیفات
    Temp := (TotallSellPrice_T);
    aTax.InvoiceHeaderDto.tbill := IntToStr(Temp);


    // فیلد مجموع صورتحساب

    aTax.InvoiceHeaderDto.todam := '0'; // یلد مجموع سایر مالیات،

    aTax.InvoiceHeaderDto.tvam := IntToStr(tvam_TaxValue);
    // مجموع مالیات بر ارزش افزوده


    // Tax17  := tvam ;

  end;
{$ENDREGION}
{$REGION 'InvoiceBodyDto'}
  with DsItem do
  begin
    First;
    while not Eof do
    begin
      if DsItem.FieldByName('TotallSellPrice').AsFloat > 0 then
      begin
        Item := TInvoiceBodyDto.Create;
        Item.sstid := DsItem.FieldByName('_NationalStuffCode').AsString;

        if (ValueControl and Integer(CHkNotSendItemNote) <> 0) then
          Item.Sstt := DsItem.FieldByName('_StuffName').AsString
        else
          Item.Sstt := DsItem.FieldByName('_StuffName').AsString + ' ' +
            DsItem.FieldByName('ItemNote').AsString;

        Item.Sstt := Copy(Item.Sstt, 1, 300);

        Item.mu := DsItem.FieldByName('_Tax_mu').AsString;

        if ((DsItem.FindField('bsrn') <> nil) and
          (DsItem.FieldByName('bsrn').AsString.Trim <> EmptyStr)) then
        begin
          Item.bsrn := DsItem.FieldByName('bsrn').AsString;
        end;

        if ((mnuEntity.Checked) or
          (DsItem.FieldByName('DiagnosisCalcTotalPrice').AsInteger = 0)) then
        begin
          Item.am := FloatToStr(DsItem.FieldByName('OutputEntity').AsFloat +
            DsItem.FieldByName('InputEntity').AsFloat);

          Item.Fee := FormatFloat('0.00000000',
            (DsItem.FieldByName('UnitSellPrice').AsFloat));
          if mnuFixed.Checked then
            Item.Fee := FloatToStrF(DsItem.FieldByName('UnitSellPriceE').AsFloat
              + 0.000001, ffFixed, 38, 8);
        end;
        if ((mnuWeight.Checked) or
          (DsItem.FieldByName('DiagnosisCalcTotalPrice').AsInteger = 1)) then
        begin
          Item.am := FloatToStr(DsItem.FieldByName('OutputWeight').AsFloat +
            DsItem.FieldByName('InputWeight').AsFloat);

          Item.Fee := FormatFloat('0.00000000',
            (DsItem.FieldByName('UnitSellPrice').AsFloat));
          if mnuFixed.Checked then
            Item.Fee := FloatToStrF(DsItem.FieldByName('UnitSellPriceW').AsFloat
              + 0.000001, ffFixed, 38, 8);
        end;

        ArzAmount := ArzAmount + DsItem.FieldByName('ArzAmount').AsFloat;
        if qryReciptsInvoiceTemplate.AsInteger = 7 then
        begin

          Item.Nw := FloatToStr(DsItem.FieldByName('OutputWeight').AsFloat +
            DsItem.FieldByName('InputWeight').AsFloat);

          // HeaderDto.torv
          Item.ssrv := DsItem.FieldByName('TotallSellPrice').AsString;

          // HeaderDto.tocv        مجموع ارزش ارزی
          Item.sscv := DsItem.FieldByName('ArzAmount').AsFloat.ToString;

          Tonw := Tonw + DsItem.FieldByName('OutputWeight').AsFloat +
            DsItem.FieldByName('InputWeight').AsFloat;

        end;

        if DsItem.FieldByName('ArzAmount').AsFloat <> 0 then
        begin
          Item.Cut := qryReciptsCurrencyCode.AsString.Trim; // 'USD''840'
          Item.cFee := DsItem.FieldByName('ArzRate').AsFloat.ToString;
          Item.exr := DsItem.FieldByName('ArzAmount').AsFloat.ToString;
          Item.exr := qryReciptsRialsEqual.AsFloat.ToString;

        end
        else
        begin
        end;

        {
          مبلغ قبل از تخفیف )Es )از فرمول زیر محاسبه میشود.
          Es=As*Cs
          As : تعداد/مقدار
          Cs : مبلغ واحد
          مهم
          2
          مبلغ قبل از تخفیف میبایست بزرگتر از صفر باشد }
        prdis := DsItem.FieldByName('TotalInputPrice').AsLargeInt +
          DsItem.FieldByName('TotalOutputPrice').AsLargeInt

        // else
        // prdis := Trunc((DsItem.FieldByName('OutputWeight').AsFloat +
        // DsItem.FieldByName('InputWeight').AsFloat) *
        // DsItem.FieldByName('UnitSellPrice').AsFloat)
          ;

        Item.prdis := IntToStr(prdis);
        tprdis := tprdis + prdis;

        // if DsItem.FieldByName('DeficitValue').AsLargeInt <> 0 then
        Item.dis := DsItem.FieldByName('DeficitValue').AsLargeInt.ToString;;
        Item.adis := IntToStr(prdis - DsItem.FieldByName('DeficitValue')
          .AsLargeInt);
        // Item.adis :='0';
        Tadis := Tadis + StrToInt64(Item.adis);

        aTax.InvoiceHeaderDto.Tadis := IntToStr(Tadis); // IntToStr(Temp);
        // aTax.InvoiceHeaderDto.tadis := '0';

        // Item.vra :=FloatToStr( {ROUNDTO(} Items.FieldByName('TaxCo').AsFloat/100 {,-2)} );
        Item.vra := DsItem.FieldByName('TaxCo').AsFloat.ToString;
        // نرخ مالیات بر ارزش‌افزوده

        // مبلغ مالیات بر ارزش
        Item.vam := DsItem.FieldByName('TaxValue').AsLargeInt.ToString;

        // حق العمل      111
        if qryinit.FieldByName('CommissionActive').AsInteger > 0
        // DsItem.FindField('TotallCommission') <> nil
        then
        begin
          Item.Bros := DsItem.FieldByName('TotallCommission')
            .AsLargeInt.ToString;

          // جمع کل اجرت، حق العمل و سود
          Item.tcpbs := DsItem.FieldByName('TotallCommission')
            .AsLargeInt.ToString;

        end;

        if (qryinit.FieldByName('PawsFieldsActive').AsInteger in [2, 3]) and
          (DsItem.FindField('Wage') <> nil) then
          Item.consfee := DsItem.FieldByName('Wage').AsLargeInt.ToString;

        { مبلغ کل کاال/خدمت )Os )برابر است با: جمع مبلغ مالیات بر ارزش افزوده،
          مبلغ بعد از تخفیف، مبلغ سایر مالیات و عوارض و مبلغ سایر وجوه قانونی.
          فرمول محاسبه به صورت زیر میباشد }
        tsstam := (DsItem.FieldByName('TotalInputPrice').AsLargeInt +
          DsItem.FieldByName('TotalOutputPrice').AsLargeInt) +
          DsItem.FieldByName('TaxValue').AsLargeInt -
          DsItem.FieldByName('DeficitValue').AsLargeInt;
        Item.tsstam := IntToStr(tsstam);
        // Item.tsstam := tadis;//  مبلغ کل کالا و خدمت

        // وش تسویه شامل: نقدی ۱ ،نسیه ۲ و نقدی/نسیه ۳ است.
        if aTax.InvoiceHeaderDto.setm = '3' then
        begin
          CapValue := StrToInt64Def(aTax.InvoiceHeaderDto.cap, 0);
          VsValue := StrToInt64Def(aTax.InvoiceHeaderDto.Tadis, 0);

          if (VsValue > 0) and (CapValue > 0) then
          begin
            // مبلغ بعد از تخفیف ردیف
            RowAdis := StrToInt64Def(Item.adis, 0); // یا prdis - DeficitValue

            // cop صحیح
            cop := Trunc((int64(RowAdis) * CapValue) / VsValue);
            if cop < 0 then
              cop := 0;
            Item.cop := IntToStr(cop);

            // vop صحیح
            RowTax := DsItem.FieldByName('TaxValue').AsLargeInt;
            vop := Trunc((int64(RowTax) * CapValue) / VsValue);
            if vop < 0 then
              vop := 0;
            Item.vop := IntToStr(vop);

            tvop := tvop + vop;
          end
          else
          begin
            Item.cop := '0';
            Item.vop := '0';
          end;
        end;
        aTax.InvoiceBodyDto.Add(Item);
      end;
      Next;
    end; // همه سطرها

    if (TaxFormKind <> TaxCancellation) then
      aTax.InvoiceHeaderDto.tprdis := IntToStr(tprdis);
    if aTax.InvoiceHeaderDto.setm = '3' then // نقد و نسیه
      aTax.InvoiceHeaderDto.tvop := tvop.ToString;
    // مجموع سهم مالیات بر ارزش افزوده از پرداخت

    if qryReciptsInvoiceTemplate.AsInteger = 7 then
    begin
      aTax.InvoiceHeaderDto.Tonw := FloatToStr(Tonw);

      // مجموع ارزش ریالی       Item.ssrv
      aTax.InvoiceHeaderDto.torv := TotallSellPrice_T.ToString;

      // Item.sscv       مجموع ارزش ارزی
      aTax.InvoiceHeaderDto.tocv := FloatToStr(ArzAmount);

      // شماره کوتاژ اظهارنامه گمرکی
      aTax.InvoiceHeaderDto.cdcn := qryTrades.FieldByName('Kotaj_No').AsString;

      // تاریخ کوتاژ اظهارنامه گمرکی
      if Length(Trim(qryTrades.FieldByName('Kotaj_Date').AsString)) = 10 then
      begin
        cdcDate := Shamsi2Miladi(qryTrades.FieldByName('Kotaj_Date').AsString);
        cdcDate := cdcDate + Time;
        aTax.InvoiceHeaderDto.cdcd :=
          IntToStr(DateTimeToUTC(cdcDate) div 86400000);
      end;

    end;
    //
    if TaxFormKind = TaxReturn then // Result := 'برگشت از فروش';
      aTax.InvoiceHeaderDto.tbill :=
        IntToStr(StrToInt64(aTax.InvoiceHeaderDto.Tadis) +
        StrToInt64(aTax.InvoiceHeaderDto.tvam) +
        StrToInt64(aTax.InvoiceHeaderDto.todam));

  end;

{$ENDREGION}
  SUCCESS := TSuccess.Create;
  try
    SetRest('INVOICE', aTax);
    add2log2('_______________1INVOICE=' + qryReciptsReciptNumber.AsString);
    add2log2(#13#10 + aTax.AsJson);
    add2logLast(aTax.AsJson);
    RESTRequest1.Timeout := 60000;
    RESTRequest1.Execute;

    if RESTResponse1.status.SUCCESS then
      Result := RESTResponse1.Content
    else
      Result := RESTResponse1.Content;

    try
      add2log2('_______________2INVOICE=' + qryReciptsReciptNumber.AsString);
      add2log2(#13#10 + Result);
      res := TPacketResponse.Create;
      res.AsJson := Result;
    except
      // on E: Exception do
      res.uid := '';
      res.Message := Result;
    end;

    if ((res.TAXID <> EmptyStr) { and (qryReciptsTAXID.AsString = EmptyStr) } )
    then
    begin
      SQL := ' update Recipts set TAXID = ''%s''';
      SQL := SQL + ' WHERE  id= %s ';
      SQL := Format(SQL, [res.TAXID, qryRecipts.FieldByName('ID').AsString]);
      DMf.adcBSell.Execute(SQL);
    end;

    if res.uid <> EmptyStr then
      CheckRequest(aTax, res.uid, res.ReferenceNumber, res.TAXID, TaxFormKind)
    else
      s := ' از سامانه مودیان پاسخی دریافت نشد ' + #13#10 + res.error;

  except
    on E: Exception do
    begin
      // add2log(url);
      add2log(E.Message);
      Warn(E.Message);
    end;
  end;

  res.Free;
  SUCCESS.Free;
  qryRecipts.Requery();
  if qryReciptstax_status.AsInteger = 1 then
    Warn2('ارسال به سامانه مودیان انجام شد')
  else
  begin
    if s <> EmptyStr then
      MessageDlg(s + #13#10 + Send_Message, mtError, [mbOK], 0)
    else
      Warn2(s + #13#10 + Send_Message, 3000);

    s := __TheTempDIR + qryReciptsID.AsString + 'RN' +
      qryReciptsReciptNumber.AsString + '.html';
    try
      SaveUniCodeFile(Result, s);
      if CtrlDown then
        RunDoc(s);
    except
    end;

  end;

  TaxStateMenu;
  // id_SSL.Free;
  // IdHTTP.Free;
  IsSendingMoadiyan := False;
end;

procedure TReciptsGridF.TaxStateMenu;
begin
  MnuTaxMoaadiyan.Visible := (qryReciptstax_status.AsInteger = 0) and
    (qryReciptsReciptState.AsInteger <> 3);
  MnuTaxCancellation.Visible := ((qryReciptstax_status.AsInteger in [1]) and
    (qryReciptsReciptState.AsInteger <> 3)) or
    (qryReciptsIRTAXID.AsString <> EmptyStr) or
    ((qryItems.Active) and (qryItems.RecordCount = 0) and
    (qryReciptstax_status.AsInteger <> 1));

  MnuTaxCorrection.Visible := (qryReciptstax_status.AsInteger in [1, 3]) and
    (qryReciptsReciptState.AsInteger <> 3);
  MnuTaxCorrection2.Visible := MnuTaxCorrection.Visible and
    (qryReciptsIRTAXID.AsString <> EmptyStr) and
    (qryReciptsTAXID.AsString <> EmptyStr);
  MnuTaxReturnFromSale.Visible :=
    ((SellEffect = 2) or (qryReciptstax_status.AsInteger in [1, 3])) and
    (qryReciptsReciptState.AsInteger <> 3);

  MnuTaxReturnFromSaleNext.Visible := (SellEffect = 2) or
    MnuTaxCorrection2.Visible;

  MnuTaxReturnFromSaleP.Visible := MnuTaxReturnFromSale.Visible;

  MnuCheckMoaadiyan.Visible := (qryReciptstax_status.AsInteger <> 1);
  MnuLoop.Visible := (qryReciptstax_status.AsInteger = 2);
  if not DefaultDateActive(qryinit) then
  begin
    pnlDefaultDate.Visible := ((MnuTaxCancellation.Visible) or
      (MnuTaxCorrection.Visible));
  end;

end;

// procedure TReciptsGridF.CheckRequest(aTax: TMainTax;
// uid, ReferenceNumber, TAXID: string; TaxFormKind: TTaxFormKind);
// var
// RError: TRError;
// s, Result: string;
// begin
// try
// aTax.QueryModel.uid := uid;
// aTax.QueryModel.ReferenceNumber := ReferenceNumber;
// SetRest('QUERY_UID', aTax);
// /// /     QUERY_REF_NUMBER      QUERY_UID
// add2log2('_______________3QUERY_UID=' + qryReciptsReciptNumber.AsString);
// add2log2(#13#10 + aTax.AsJson);
//
// RESTRequest1.Execute;
// if RESTResponse1.status.SUCCESS then
// begin
// Result := RESTResponse1.Content;
// end
// else
// begin
// Result := RESTResponse1.Content;
// end;
//
// try
// add2log2('_______________4QUERY_UID=' + qryReciptsReciptNumber.AsString);
// add2log2(#13#10 + Result);
// RError := TRError.Create;
// RError.AsJson := Result;
// except
// on E: Exception do
// begin
// RError.error := E.Message;
// add2log(E.Message);
// end;
//
// end;
//
// s := 'declare @v_return varchar(2000)= %s ' + ' update Recipts' +
// ' set DATE_OF_SEND_TO_TAX = GETDATE(), tax_status = case when @v_return =''SUCCESS'' then 1 when @v_return = ''FAILED''  then 0 else 2 end'
// + ' , TAXID = ''%s''' + ' ,TAXUID = ''%s''' +
// ' ,REFERENCENUMBER =  ''%s''';
//
// // if SellEffect = 2 then
// // s := s + ' , IRTAXID =   ''' + qryReciptsIRTAXID.AsString +
// // '''' + #13#10;
//
// if TaxFormKind = TaxCancellation then
// s := s + ' ,ReciptState = case when @v_return =''SUCCESS'' then 3 else 0 end  WHERE  id= %s  '
// /// isnull(tax_status,0) = 1 and
// else
// s := s + ' WHERE  id= %s '; // isnull(tax_status,0)<>1 and
//
// s := Format(s, [QuotedStr(RError.status), TAXID, uid, ReferenceNumber,
// qryRecipts.FieldByName('ID').AsString]);
// DMf.adcBSell.Execute(s);
// // Warn(res.Message);
//
// MessageDlg(DMTaxf.ErrorTrans(RError.status, RError.error),
// DMTaxf.ErrorTransW(RError.status), [mbOK], 0);
// RError.Free;
// except
// on E: Exception do
// begin
// Warn2('اشکال در ارتباط به سامانه', 3000);
// add2log(E.Message);
// end;
//
// end;
//
// end;

procedure TReciptsGridF.CheckRequest(aTax: TMainTax;
uid, ReferenceNumber, TAXID: string; TaxFormKind: TTaxFormKind);
var
  RError: TRError;
  ResponseContent: string;
  SQLQuery: string;
  qry: TADOQuery;
begin
  RError := TRError.Create;
  qry := TADOQuery.Create(nil);
  try
    try
      // --- بخش ۱: ارسال درخواست و دریافت پاسخ ---
      aTax.QueryModel.uid := uid;
      aTax.QueryModel.ReferenceNumber := ReferenceNumber;
      SetRest('QUERY_UID', aTax);

      add2log2('_______________3QUERY_UID=' + qryReciptsReciptNumber.AsString);
      add2log2(#13#10 + aTax.AsJson);

      RESTRequest1.Execute;

      // بررسی موفقیت پاسخ
      if not RESTResponse1.status.SUCCESS then
      begin
        RError.status := 'REQUEST_FAILED';
        RError.error := 'پاسخ موفقی از سامانه دریافت نشد';
        add2log('پاسخ ناموفق از سامانه مالیاتی');
      end;

      ResponseContent := RESTResponse1.Content;
      add2log2('_______________4QUERY_UID=' + qryReciptsReciptNumber.AsString);
      add2log2(#13#10 + ResponseContent);

      // --- بخش ۲: پردازش پاسخ دریافت شده ---
      try
        RError.AsJson := ResponseContent;
      except
        on E: Exception do
        begin
          RError.error := E.Message;
          RError.status := 'JSON_PARSE_ERROR';
          add2log('خطا در تجزیه JSON: ' + E.Message);
        end;
      end;

      // --- بخش ۳: به‌روزرسانی پایگاه داده با TADOQuery ---
      SQLQuery := 'DECLARE @v_return varchar(2000) = :status;' +
        'UPDATE Recipts SET DATE_OF_SEND_TO_TAX = GETDATE(), ' +
        'tax_status = CASE WHEN @v_return = ''SUCCESS'' THEN 1 WHEN @v_return = ''FAILED'' THEN 0 ELSE 2 END, '
        + 'TAXID = :TAXID, TAXUID = :uid, REFERENCENUMBER = :ReferenceNumber';

      if TaxFormKind = TaxCancellation then
        SQLQuery := SQLQuery +
          ', ReciptState = CASE WHEN @v_return = ''SUCCESS'' THEN 3 ELSE 0 END';

      SQLQuery := SQLQuery + ' WHERE id = :id';

      qry.Connection := DMf.adcBSell;
      qry.SQL.Text := SQLQuery;

      qry.Parameters.ParamByName('status').Value := RError.status;
      qry.Parameters.ParamByName('TAXID').Value := TAXID;
      qry.Parameters.ParamByName('uid').Value := uid;
      qry.Parameters.ParamByName('ReferenceNumber').Value := ReferenceNumber;
      qry.Parameters.ParamByName('id').Value :=
        qryRecipts.FieldByName('ID').Value;

      qry.ExecSQL;

      // --- بخش ۴: نمایش نتیجه به کاربر ---
      MessageDlg(DMTaxf.ErrorTrans(RError.status, RError.error),
        DMTaxf.ErrorTransW(RError.status), [mbOK], 0);

    except
      on E: Exception do
      begin
        Warn2('اشکال در ارتباط به سامانه', 3000);
        add2log('خطای ارتباطی/پایگاه داده: ' + E.Message);
      end;
    end;
  finally
    qry.Free;
    RError.Free;
  end;
end;

procedure TReciptsGridF.actCheckMoaadiyanExecute(Sender: TObject);
var
  aTax: TMainTax;
  s: string;
begin
  inherited;
  aTax := TMainTax.Create;
  if Mnusandbox.Checked then
  begin
    aTax.ConfigModel.SERVERTYPE := '2';
  end
  else
    aTax.ConfigModel.SERVERTYPE := '1';

  SetKeysModel(aTax);
  try
    if qryReciptsTAXUID.AsString <> EmptyStr then
      CheckRequest(aTax, qryReciptsTAXUID.AsString,
        qryReciptsREFERENCENUMBER.AsString, qryReciptsTAXID.AsString,
        TaxCorrection)
    else
      s := 'از سامانه مودیان پاسخی دریافت نشد';
  except
    on E: Exception do
    begin
      // add2log(url);
      add2log(E.Message);
      Warn(E.Message);
    end;
  end;

  aTax.Free;

  qryRecipts.Requery();
  TaxStateMenu;
  if qryReciptstax_status.AsInteger = 1 then
    Warn2('ارسال به سامانه مودیان انجام شده')
  else
    Warn2(s + #13#10 + Send_Message);

end;

// function TReciptsGridF.ErrorTrans(SUCCESS, error: string): string;
// var
// i: Integer;
// s: string;
// begin
// i := Pos('SUCCESS', SUCCESS);
// if i > 0 then
// s := 'ارسال موفق.' + #13#10
// else
// begin
// i := Pos('PENDING', SUCCESS);
// if i > 0 then
// begin
// Result := 'ارسال با موفقیت در صف انتظار تائید قرار گرفت.' + #13#10;
// exit;
// end
// else
// s := 'ارسال ناموفق!';
// end;
// Result := s;
// i := Pos('FiscalId =', error);
// if i > 0 then
// error := midstr(error, i + 10, Length(error));
//
// i := Pos('error', error);
// if i > 0 then
// Result := Result + #13#10 + midstr(error, i + 5, Length(error))
// else
// Result := Result + #13#10 + error;
//
// // i := Pos(':is:', Result);
// // if i > 0 then
// // Result := s + ':is:' + #13#10 + Result;
//
// Result := ReplaceStr(Result, '\', '');
// Result := ReplaceStr(Result, '"', '');
// Result := ReplaceStr(Result, 'errorType:ERROR', #13#10 + 'msg=');
//
// Result := ReplaceStr(Result, 'errorType:WARNING', #13#10 + 'اخطار' + #13#10
// + #13#10);
//
// Result := ReplaceStr(Result, 'confirmationReferenceId:nullerror', '');
//
// Result := ReplaceStr(Result, 'message:', '');
// Result := ReplaceStr(Result, ',message:', #13#10 + 'msg=');
//
// Result := ReplaceStr(Result, 'msg=', #13#10 + 'msg=');
// Result := ReplaceStr(Result, 'msg=', '');
// Result := ReplaceStr(Result, 'status:SUCCESS', 'ارسال موفق.');
// Result := ReplaceStr(Result, 'warning:', #13#10 + 'اخطار:' + #13#10);
//
// Result := ReplaceStr(Result, 'code:', 'C');
//
// Result := ReplaceStr(Result, 'detail=[]', 'D');
//
// Result := ReplaceStr(Result, 'message:', '');
// Result := ReplaceStr(Result, 'warning:', '');
// Result := ReplaceStr(Result, 'errorType:WARNINGsuccess', '');
//
// Result := ReplaceStr(Result, 'errorType:WARNING', #13#10 + '');
//
// Result := ReplaceStr(Result, '[', '');
// Result := ReplaceStr(Result, ']', '');
// Result := ReplaceStr(Result, '{', '');
// Result := ReplaceStr(Result, '}', '');
// Result := ReplaceStr(Result, ',', '');
//
// end;

// function TReciptsGridF.ErrorTransW(error: string): TMsgDlgType;
// var
// i: Integer;
// begin
// i := Pos('SUCCESS', error);
// if i > 0 then
// Result := mtInformation
// else
// begin
// i := Pos('PENDING', error);
// if i > 0 then
// begin
// Result := mtWarning;
// Send_Message := 'ارسال با موفقیت در صف انتظار تایید سامانه قرار گرفت';
// end
// else
// begin
// Result := mtError;
// Send_Message := 'ارسال انجام نـشـد';
// end;
// end;
// end;

procedure TReciptsGridF.SetKeysModel(aaTax: TMainTax);
begin
  aaTax.KeysModel.ECONOMICNUMBER := opt.Economic_Number;
  aaTax.KeysModel.FISCALId := opt.FISCAL_ID;
  aaTax.KeysModel.PUBKEY := opt.PUB_KEY;
  aaTax.KeysModel.PUBKEYID := opt.PUB_KEY_ID;
  aaTax.KeysModel.PRVKY := opt.PRV_KY;
  aaTax.KeysModel.CRT_KEY := opt.CRT_KEY;
end;

function DateTimeToUTC(dt: TDateTime): int64;
var
  tzi: TTimeZoneInformation;
begin
  Result := DateTimeToUnix(dt);
  GetTimeZoneInformation(tzi);
  Result := (Result + tzi.Bias * 60) * 1000; //
end;

procedure TReciptsGridF.SetRest(Matod: string; aTax: TMainTax);
// var  url: string;
begin
  // url :='http://213.108.242.54:8080/moadianwsh/MoadianAPI/FARA/';

  if RESTRequest1 <> nil then
    RESTRequest1.Free;

  if RESTResponse1 <> nil then
    RESTResponse1.Free;

  if RESTClient1 <> nil then
    RESTClient1.Free;

  RESTResponse1 := TRESTResponse.Create(Self);
  RESTRequest1 := TRESTRequest.Create(Self);
  RESTClient1 := TRESTClient.Create(Self);

  RESTResponse1.Name := 'RESTResponse1';
  RESTRequest1.Name := 'RESTRequest1';
  RESTRequest1.Client := RESTClient1;
  RESTRequest1.Method := rmPOST;
  with RESTRequest1.Params.AddItem do
  begin
    Kind := pkREQUESTBODY;
    name := 'body';
    Options := [poDoNotEncode];
    ContentType := ctAPPLICATION_JSON;
  end;
  RESTRequest1.Response := RESTResponse1;
  RESTRequest1.SynchronizedEvents := False;
  RESTClient1.Name := 'RESTClient1';
  RESTClient1.Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
  RESTClient1.AcceptCharset := 'UTF-8, *;q=0.8';

  RESTClient1.BaseURL := opt.URL_MoadianAPI + Matod;

  RESTClient1.ContentType := 'application/json';
  // RESTClient1.Params := <>;
  RESTClient1.HandleRedirects := True;
  RESTClient1.RaiseExceptionOn500 := False;

  RESTRequest1.Body.ClearBody;
  RESTRequest1.Body.Add(aTax.AsJson);

end;

function TReciptsGridF.GenerateBarcodeImage(BarcodeText: string): TBitmap;
begin
  Result := TBitmap.Create;
  Result.Width := imgBarcode.Width; // عرض دلخواه
  Result.Height := imgBarcode.Height; // ارتفاع دلخواه
  Result.PixelFormat := pf24bit;
  Result.Canvas.Brush.Color := clWhite;
  Result.Canvas.FillRect(Rect(0, 0, Result.Width, Result.Height));
  Result.Canvas.Font.Name := 'Code 128';
  Result.Canvas.Font.Height := -80; // اندازه بزرگ‌تر برای نمایش بهتر
  Result.Canvas.Font.Charset := ANSI_CHARSET;
  Result.Canvas.Font.Color := clBlack;
  Result.Canvas.TextOut(0, 0, (BarcodeText)); // تبدیل اعداد فارسی اگر لازم
end;

end.
