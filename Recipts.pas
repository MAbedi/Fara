{ -------------------------------------------------------------------------------
  Unit Name: Recipts
  Author:    Mahmood
  History: 84/02/31
  -------------------------------------------------------------------------------- }
unit Recipts;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBActns, ActnList, StdCtrls, ExtCtrls, ppTypes,
  Buttons, Mask, DBCtrls, ppCtrls, ppBands, ppPrnabl, ppClass, ppReport, DB,
  ADODB, ppDB, ppDBPipe, DM, Menus, ppSubRpt, zAPIBalloon, DMTax,
  ppRegion, ComCtrls, DateUtils, ppParameter, ppStrtch, ppCache,
  ppProd, ppComm, ppRelatv, ImgList, SumDBGrid, filter_ADO, FilterClass_ADO,
  ppDesignLayer, System.ImageList, System.Actions, FarsiReportBuilde,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.ToolWin;

type

  TInsRow = record
    CanInsert: Boolean;
    BMark: TBookmark;
    Row: Integer;
  end;

  TReciptsF = class(Ttemplate2MDIF)
    ppDBPipeline1: TppDBPipeline;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    Panel1: TPanel;
    pnlPerson2: TPanel;
    LblPerson2: TLabel;
    EdtPersonID2: TDBEdit;
    SpeedButton6: TSpeedButton;
    DBTextPersonID2: TDBText;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
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
    qryItems_UnitName: TStringField;
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
    PnlPerson1: TPanel;
    LblPerson1: TLabel;
    EdtPersonID1: TDBEdit;
    SBtnPersonID1: TSpeedButton;
    DBTextPersonID1: TDBText;
    PnlUseUnitM: TPanel;
    LblUseUnitM: TLabel;
    SpeedButton8: TSpeedButton;
    DBTextUseUnitID_M: TDBText;
    EdtUseUnitID_M: TDBEdit;
    PnlStore: TPanel;
    LblStore: TLabel;
    EdtStoreID: TDBEdit;
    SBtnStoreID: TSpeedButton;
    DBTextStoreID: TDBText;
    RdGrpReciptState: TDBRadioGroup;
    LblReciptDate: TLabel;
    EdtReciptDate: TDBEdit;
    EdtRNum: TDBEdit;
    LblRecNo: TLabel;
    qryinit: TADOQuery;
    DataSetPost2: TDataSetPost;
    qryReciptsSecondType: TWordField;
    ppDBPipeline2: TppDBPipeline;
    qryItemspreReciptItemID: TIntegerField;
    PopOtherMenu: TPopupMenu;
    N1: TMenuItem;
    qryItemsStuffSize: TStringField;
    PnlSecondType: TPanel;
    CmbSecondType: TDBComboBox;
    Label3: TLabel;
    btnSearchReciptNumber: TSpeedButton;
    ppReport1: TppReport;
    actSearch: TAction;
    BitBtn6: TBitBtn;
    qryCustomers2: TADOQuery;
    qryCustomers1: TADOQuery;
    BtnRecall: TBitBtn;
    actRecall: TAction;
    actRecallSpecial: TAction;
    BtnRecallSpecial: TBitBtn;
    zbal: TzAPIBalloon;
    qryItemsStuffDiameter: TFloatField;
    qryItemsControlCode: TLargeintField;
    actPrint1: TAction;
    actPrint2: TAction;
    PopMuPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Panel4: TPanel;
    DBText12: TDBText;
    Label2: TLabel;
    BtnDeficits: TBitBtn;
    btnNoteMaster: TBitBtn;
    qryRecipts_ValuationType: TIntegerField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsOperatorID: TIntegerField;
    qryRecipts_OperatorName: TStringField;
    qryRecipts_PersonAddress: TStringField;
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
    qry_DeficitsReciptDeficitID: TIntegerField;
    qry_DeficitsReciptID: TIntegerField;
    qry_DeficitsDeficitID: TSmallintField;
    qry_DeficitsDeficitAdd: TBCDField;
    qry_DeficitsDeficitDec: TBCDField;
    qry_DeficitsDeficitNote: TStringField;
    qry_Deficits_DeficitName: TStringField;
    qry_Deficits_CalculationType: TIntegerField;
    qry_Deficits_DeficitCo: TFloatField;
    qry_Deficits_ExportType: TIntegerField;
    actSearchReciptNumber: TAction;
    N14: TMenuItem;
    qryItemsacc_CTopicCode2: TStringField;
    qryItems_CTopicCode: TStringField;
    btnOtherMenu: TBitBtn;
    Panel15: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    StatusBar2: TStatusBar;
    PnlItems: TPanel;
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    newPanel2: TPanel;
    BitBtn9: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn10: TBitBtn;
    Pnl_GradeToAlloy: TPanel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdtStuffGrade: TDBEdit;
    EdtStuffAlloy: TDBEdit;
    DBEdit19: TDBEdit;
    EdtStuffSize: TDBEdit;
    pnlStuffCode: TPanel;
    Label20: TLabel;
    lbl_StuffTecInfo: TLabel;
    LblUnit: TLabel;
    LblControlCode: TLabel;
    SpeedButton7: TSpeedButton;
    EdtStuffCode: TDBEdit;
    EdtControlCode: TDBEdit;
    edt_StuffTecInfo: TDBEdit;
    EdtUnit: TDBEdit;
    EdtStuffName: TDBEdit;
    PnlEntityWeightPrice: TPanel;
    LblEntity: TLabel;
    LblWeight: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    EdtIOEntity: TDBEdit;
    EdtIOWeight: TDBEdit;
    EdtTotalIOPrice: TDBEdit;
    EdtUnitSellPrice: TDBEdit;
    GrpBoxAccount: TGroupBox;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    DBText3: TDBText;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    DBText4: TDBText;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    qryItems_radif: TIntegerField;
    qryRecipts_PersonFax: TStringField;
    actInsertCopy: TAction;
    BitBtn13: TBitBtn;
    qryItemsAidDate: TStringField;
    qryItemsDiscount: TIntegerField;
    actCorrelateRecipt: TAction;
    qryReciptsAidDate: TStringField;
    qry_Deficits4Print: TADOQuery;
    qry_Deficits4PrintDeficitName: TStringField;
    qry_Deficits4PrintDeficit_Add_Dec: TBCDField;
    ppDBPipeline3: TppDBPipeline;
    PnlAidInfoMaster: TPanel;
    LblAidInfoNo: TLabel;
    LblAidInfoDate: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    qryRecipts_CustValuationType: TIntegerField;
    qryItemsPersonID1: TIntegerField;
    N15: TMenuItem;
    PnlProductCode_UseUnit: TPanel;
    qryItems_PersonName1: TStringField;
    N16: TMenuItem;
    srcDeficits4Print: TDataSource;
    actDeficits: TAction;
    PnlReciptNote: TPanel;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    PnlAidInfoItems: TPanel;
    LblAidInfoNo2: TLabel;
    LblAidInfoDate2: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    LblReMainPerson: TLabel;
    PnlItemNote: TPanel;
    Label11: TLabel;
    DBMemo2: TDBMemo;
    Timer1: TTimer;
    PnlProduct: TPanel;
    DBText6: TDBText;
    Label12: TLabel;
    SBtnProductModel: TSpeedButton;
    DBEdit12: TDBEdit;
    SBtnProductCode: TSpeedButton;
    DBEdit13: TDBEdit;
    DBText7: TDBText;
    Label14: TLabel;
    qryItemsProductModel: TIntegerField;
    qry_Lookup: TADOQuery;
    qryItems_ProductModelName: TStringField;
    qryItems_ProductName: TStringField;
    qryRecipts_StoreKind: TIntegerField;
    EdtItemDate: TDBEdit;
    LblItemDate: TLabel;
    qryItemsItemDate: TStringField;
    actCorrelateConversionCo: TAction;
    actReciptStateTo0: TAction;
    N17: TMenuItem;
    mniActGetCheckF10: TMenuItem;
    mniActGetOtherMoneyF1: TMenuItem;
    qryReciptsFirstUser: TStringField;
    qryReciptsLastUser: TStringField;
    qryItemsFirstUser: TStringField;
    qryItemsLastUser: TStringField;
    PnlPersonID1OnDetail: TPanel;
    DBText2: TDBText;
    SpeedButton10: TSpeedButton;
    LblPerson1Items: TLabel;
    DBEdit8: TDBEdit;
    PnlUseUnitD: TPanel;
    DBTextUseUnitID_D: TDBText;
    LblUseUnitD: TLabel;
    SpeedButton9: TSpeedButton;
    EdtUseUnitID_D: TDBEdit;
    BtnCorrelateConversionCo: TBitBtn;
    BtnCorrelateRecipt: TBitBtn;
    qryItems_CTopicCode22: TStringField;
    qryReciptsReciptStartDate: TStringField;
    qryReciptsReciptEndDate: TStringField;
    qryRecipts_HasDeficit: TIntegerField;
    PnlDiscountActive: TPanel;
    Label8: TLabel;
    Label16: TLabel;
    edtWaterCo: TDBEdit;
    edtTotallSellPrice1: TDBEdit;
    edtDeficitValue: TDBEdit;
    Label21: TLabel;
    qryItemsWaterCo: TFloatField;
    qryItemsDeficitValue: TBCDField;
    actReportSearch: TAction;
    actReciptOnFormsRange: TAction;
    qryReciptOnFormsRange: TADOQuery;
    qryReciptOnFormsRangeFormCaption: TStringField;
    qryReciptOnFormsRangeFormItemsAmount: TBCDField;
    qryReciptOnFormsRangeCheckNumber: TStringField;
    qryReciptOnFormsRangeCheckDate: TStringField;
    qryReciptOnFormsRangeBankName: TStringField;
    qryReciptOnFormsRangeAccountNumber: TStringField;
    DBPipFormsRange: TppDBPipeline;
    srcReciptOnFormsRange: TDataSource;
    PnlStore2: TPanel;
    LblStore2: TLabel;
    SBtnStoreID2: TSpeedButton;
    DBTextStoreID2: TDBText;
    EdtStoreID2: TDBEdit;
    qryReciptsStoreID2: TSmallintField;
    qryRecipts_StoresName2: TStringField;
    qryItemsAuxiliary: TFloatField;
    edtAuxiliary: TDBEdit;
    lblAuxiliary: TLabel;
    Lbl4panel15: TLabel;
    PnlMachineD: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    EdtMachineWeight: TDBEdit;
    qryItemsMachineWeight: TFloatField;
    qryItemsMachineNo: TStringField;
    qryItemsMachineName: TStringField;
    qryItemsMachineFullWeight: TFloatField;
    qryCustomer2Detail: TADOQuery;
    PnlMachineM: TPanel;
    edtMachineName: TDBEdit;
    lblMachineName: TLabel;
    edtMachineNo: TDBEdit;
    lblMachineNo: TLabel;
    qryReciptsMachineNo: TStringField;
    qryReciptsMachineName: TStringField;
    qryItems_Tabageh: TStringField;
    qryItems_Nevisandeh: TStringField;
    qryItemsPakhashCompany: TStringField;
    qryItems_Motarjem: TStringField;
    qryItems_ChapYear: TStringField;
    qryItems_gateKetab: TStringField;
    qryItems_NoeJeld: TStringField;
    qryRecipts_CustomersDiscount: TFloatField;
    qryRecipts_CustomersDiscountNote: TStringField;
    DBText8: TDBText;
    qryRecipts_CustomersDayTime: TIntegerField;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    PnlCTopicCode2: TPanel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    qryItems_SellPrice1: TCurrencyField;
    qryReciptsReciptNote: TStringField;
    actDeleteCorrelateRecipt: TAction;
    qryItemsSecondTypeItem: TIntegerField;
    qryItemsInvEntity: TFloatField;
    qryItemsInvWeight: TFloatField;
    Panel6: TPanel;
    SpeedButton2: TSpeedButton;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBText1: TDBText;
    actStuffCodingSpecialSearch: TAction;
    qryItems_Carton: TFloatField;
    qryRecipts_NationalID: TStringField;
    actFileInputPath: TAction;
    PnlSecondTypeItem_StandardRate: TPanel;
    PnlSecondTypeItem: TPanel;
    Label29: TLabel;
    CmbSecondTypeItem: TDBComboBox;
    PnlStandardRate: TPanel;
    edtTotalStandardRate: TDBEdit;
    lblTotalStandardRate: TLabel;
    qryItemsStandardRate: TBCDField;
    edtStandardRate: TDBEdit;
    lblStandardRate: TLabel;
    MenSellPrice: TPopupMenu;
    mnuSp1: TMenuItem;
    mnuSp2: TMenuItem;
    mnuSp3: TMenuItem;
    mnuSp4: TMenuItem;
    A_l_l_SP__Click: TMenuItem;
    N2: TMenuItem;
    qryItems__Tax: TCurrencyField;
    mniActGetCheckF50: TMenuItem;
    mniActGetOtherMoneyF2: TMenuItem;
    qryReciptsUseOtherID: TWideStringField;
    qryItemsTotalStandardRate: TBCDField;
    qryItems_TotalStandardRate: TCurrencyField;
    qryItems_UnitPriceUseKind: TIntegerField;
    qryItems_SellPrice_S: TCurrencyField;
    actChanger: TAction;
    BtnRecallSpecial2: TBitBtn;
    medt_StuffTecInfo: TMaskEdit;
    qryItemsTotalWeight: TFloatField;
    qryItems_c_KeepPlace: TStringField;
    edt_c_KeepPlace: TDBEdit;
    lbl_c_KeepPlace: TLabel;
    actAllotment: TAction;
    qryItems_StuffpublicPercent: TFloatField;
    qryReciptsYearID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryItemsYearID: TIntegerField;
    qryItemsServerID: TIntegerField;
    qryReciptsSellsEmporium: TIntegerField;
    qry_DeficitsYearID: TIntegerField;
    qry_DeficitsServerID: TIntegerField;
    qryReciptsSellsMethod: TIntegerField;
    qryReciptsCostDownSave: TBCDField;
    N4: TMenuItem;
    actSaveFormItems: TAction;
    actLoadFormItems: TAction;
    actReciptsRegulates: TAction;
    N3: TMenuItem;
    Action11: TMenuItem;
    actRpt001: TAction;
    qryReciptsParentCoReciptID: TIntegerField;
    qryReciptsDefaultDate: TStringField;
    qryReciptsInsertDate: TDateTimeField;
    qryItemsStuffCode: TLargeintField;
    pnlSellsEmporium: TPanel;
    Label4: TLabel;
    dblkcbb_SellsEmporium: TDBLookupComboBox;
    pnlSellsMethod: TPanel;
    Label22: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    pnlPerson3: TPanel;
    lblPerson3: TLabel;
    SpeedButton1: TSpeedButton;
    dbtxtPersonID3: TDBText;
    dbedtPersonID3: TDBEdit;
    qryReciptsPersonID3: TIntegerField;
    Panel8: TPanel;
    PnlSection2Visible: TPanel;
    LblRequestedEntity: TLabel;
    LblRequestedWeight: TLabel;
    edtRequestedEntity: TDBEdit;
    edtRequestedWeight: TDBEdit;
    pnlPestEntity: TPanel;
    Label30: TLabel;
    dbedtPestEntity: TDBEdit;
    qryItemsPestEntity: TBCDField;
    Label31: TLabel;
    dbedtPestEntity1: TDBEdit;
    mnuN7: TMenuItem;
    N7: TMenuItem;
    btnExcel: TBitBtn;
    actAllEdit: TAction;
    actCopy: TAction;
    mnuN9: TMenuItem;
    mnuCopy: TMenuItem;
    mnuAllEdit: TMenuItem;
    qryReciptsAidNumber: TStringField;
    qryItemsAidNumber: TStringField;
    actInsertNote: TAction;
    qryItemsInsertTime: TStringField;
    qryReciptOnFormsRangeAccountNumberNew: TStringField;
    qryItemsProductCode: TLargeintField;
    PnlCTopicCode3: TPanel;
    Label32: TLabel;
    SpeedButton11: TSpeedButton;
    DBText9: TDBText;
    DBEdit23: TDBEdit;
    qryItems_CTopicCode3: TStringField;
    qryItemsacc_CTopicCode3: TStringField;
    qryItemsPrvYearID: TIntegerField;
    qryReciptsPrvYearID: TIntegerField;
    LblWarn: TLabel;
    qryRecipts_Mobile: TStringField;
    qryItemsacc_TopicCode: TLargeintField;
    N11111: TMenuItem;
    NAllRecords: TMenuItem;
    actshowRelatedF: TAction;
    cmbDiagnosisCalcTotalPrice: TDBComboBox;
    qryItemsDiagnosisCalcTotalPrice: TWordField;
    lblDiagnosisCalcTotalPrice: TLabel;
    qryItemsAcceptEntity: TFloatField;
    qryItemsRollbackEntity: TFloatField;
    qryItemsAcceptWeight: TFloatField;
    qryItemsRollbackWeight: TFloatField;
    qry_Deficits4PrintDeficitCo: TFloatField;
    qry_Deficits4PrintDeficitPercent: TFloatField;
    pnlDefaultDate: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    dbedtDefaultDate: TDBEdit;
    edtDefaultDuration: TDBEdit;
    qryReciptsDefaultDuration: TSmallintField;
    qryRecipts_PersonRegisterNumber: TStringField;
    Panel9: TPanel;
    dbtxtReciptState: TDBText;
    txtDocNo: TDBText;
    txtDocDate: TDBText;
    LblStateChang: TLabel;
    qryRecipts_CustomerActive: TIntegerField;
    edtMachineInfo: TDBEdit;
    lblMachineInfo: TLabel;
    edtTruckNumber: TDBEdit;
    lblTruckNumber: TLabel;
    qryReciptsTruckNumber: TStringField;
    qryReciptsMachineInfo: TStringField;
    qryItemsTotalDeficient: TFloatField;
    qryItemsTotallSellPrice_DeficitValue3: TBCDField;
    qryItemsTotallCommission: TFloatField;
    qryItemsTotalPrice_TaxValue: TBCDField;
    qryItemsUnitSellPriceCommission: TFMTBCDField;
    qryItemsTotallCommissionTotalPrice: TFloatField;
    qryItemsReq_InvEntity2: TFloatField;
    qryItemsParentForm: TWideStringField;
    qryItemsVATCoTotalPrice: TFMTBCDField;
    qryItemsVATCoPrice: TFMTBCDField;
    qryItemsTotallSellPrice_InvWeight: TFloatField;
    qryItemsGiftEntity: TFloatField;
    qryItemsDeficitValueCo2: TBCDField;
    qryItemsDeficitValueCo3: TBCDField;
    qryItemsSyntheticCode: TStringField;
    qryItemsDeficitValue123: TBCDField;
    qryItemsRegPrice: TBCDField;
    qryItemsReq_InvEntity: TFloatField;
    qryItems____StuffTecInfo: TStringField;
    qryItemsPakhshCompany: TStringField;
    qryItemsc_StuffName: TStringField;
    qryItemsUnitSellPrice3: TFloatField;
    qryItemsUnitSellPriceWeight: TFloatField;
    DBGrid1: TCedarDbgrid;
    ppDBPipelineSumGrid1: TppDBPipeline;
    grd1: TCedarDbgrid;
    mnuSp5: TMenuItem;
    mnuSp6: TMenuItem;
    mnuSp7: TMenuItem;
    actViewFileF: TAction;
    pnlTax: TPanel;
    Label27: TLabel;
    Label35: TLabel;
    edtTaxCo: TDBEdit;
    edtTaxValue: TDBEdit;
    qryItemsTaxCo: TFloatField;
    qryItemsTaxValue: TBCDField;
    edtTotallSellPrice2: TDBEdit;
    Label28: TLabel;
    qryItemsDeficitValue2: TBCDField;
    qryItemsDeficitValue3: TBCDField;
    actMakeDocumentF: TAction;
    actReciptsTradesF: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    qryReciptsID: TLargeintField;
    actSend: TAction;
    qryReciptsPersonID4: TIntegerField;
    qryReciptsPO: TStringField;
    pnlPO: TPanel;
    lblPO: TLabel;
    edtPO: TDBEdit;
    dbmmoReciptNote2: TDBMemo;
    qryItemsIRow: TIntegerField;
    actInsertRow: TAction;
    actRowDown: TAction;
    actRowUp: TAction;
    pnl1: TPanel;
    tlb1: TToolBar;
    btnInsertRow: TToolButton;
    btnactCnPrefixWizard: TToolButton;
    btnactCnPrefixWizard1: TToolButton;
    StatusBar1: TStatusBar;
    actPreItem: TAction;
    MnuPreItem: TMenuItem;
    MnuN11: TMenuItem;
    actShowpreReciptItemIDsF: TAction;
    MnuShowpreReciptItemIDsF: TMenuItem;
    qryReciptstax_status: TWordField;
    qryReciptsTAXID: TStringField;
    qryReciptsIRTAXID: TStringField;
    qryReciptsTAXUID: TStringField;
    qryReciptsREFERENCENUMBER: TStringField;
    qryReciptsDATE_OF_SEND_TO_TAX: TDateTimeField;
    qryReciptsLoanPayment: TBCDField;
    qryItems_NationalStuffCode: TStringField;
    qryItems_Tax_mu: TStringField;
    qryItemsID: TFMTBCDField;
    popMoaadiyan: TPopupMenu;
    MnuTaxMoaadiyan: TMenuItem;
    MnuCheckMoaadiyan: TMenuItem;
    N41: TMenuItem;
    MnuTaxCorrection: TMenuItem;
    MnuTaxCancellation: TMenuItem;
    MnuTaxReturnFromSale: TMenuItem;
    N45: TMenuItem;
    N42: TMenuItem;
    N37: TMenuItem;
    Mnusandbox: TMenuItem;
    N38: TMenuItem;
    MnuLoop: TMenuItem;
    btnTax: TBitBtn;
    qryReciptsInvoiceTemplate: TWordField;
    dbtxtTAXID: TDBText;
    dbtxtIRTAXID: TDBText;
    dbtxttax_status: TDBText;
    btnTax1: TSpeedButton;
    ppDetailBand4: TppDetailBand;
    pmg1: TppImage;
    ppFooterBand1: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    ppLabel7: TppLabel;
    ppLbl_TotalStandardRateAlpha: TppLabel;
    ppDBText2: TppDBText;
    DBnum2alphabet: TppDBText;
    ppDBCalcnum2alphabet: TppDBCalc;
    ppLabel44: TppLabel;
    ppLabelTotalOutputPrice: TppLabel;
    ppLabelnum2alphabet: TppLabel;
    ppLabel1: TppLabel;
    ppLine47: TppLine;
    plblAmount1Total_Price2: TppLabel;
    ppLabel27: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppDesignLayer3: TppDesignLayer;
    ppLabel2: TppLabel;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    N11: TMenuItem;
    mnuEntity: TMenuItem;
    mnuWeight: TMenuItem;
    qryItemsPortage: TBCDField;
    PnlAidInfoItems_Portage: TPanel;
    pnlPortage: TPanel;
    edtPortage: TDBEdit;
    Label36: TLabel;
    qryReciptsInsr: TBooleanField;
    qryReciptsIndati2m: TDateTimeField;
    qryReciptsNti1: TStringField;
    qryReciptsNti2: TStringField;
    pnlNti: TPanel;
    Panel10: TPanel;
    Label37: TLabel;
    edtNti1: TDBEdit;
    Panel11: TPanel;
    Label38: TLabel;
    edtNti2: TDBEdit;
    dbchkInsr: TDBCheckBox;
    procedure dbchkInsrClick(Sender: TObject);
    procedure SBtnPersonID1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SBtnStoreIDClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure EdtStoreIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtPersonID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtPersonID2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReciptsAfterInsert(DataSet: TDataSet);
    procedure srcReciptsStateChange(Sender: TObject);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure EdtStuffCodeeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure qryReciptsAfterPost(DataSet: TDataSet);
    procedure qryReciptsBeforeDelete(DataSet: TDataSet);
    procedure qryItemsBeforeDelete(DataSet: TDataSet);
    procedure qryReciptsAfterDelete(DataSet: TDataSet);
    procedure qryItemsAfterDelete(DataSet: TDataSet);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReciptsBeforeCancel(DataSet: TDataSet);
    procedure EdtUseUnitID_MKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure srcItemsStateChange(Sender: TObject);
    procedure ppLblCompanyDescGetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryReciptsBeforePost(DataSet: TDataSet);
    procedure SpeedButton9Click(Sender: TObject);
    procedure qryItemsAfterPost(DataSet: TDataSet);
    procedure EdtUseUnitID_DKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryReciptsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure EdtRNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearchExecute(Sender: TObject);
    procedure CmbSecondTypeEnter(Sender: TObject);
    procedure qryItemsAfterScroll(DataSet: TDataSet);
    procedure qryItemsBeforeInsert(DataSet: TDataSet);
    procedure qryItemsUnitSellPriceChange(Sender: TField);
    procedure qryReciptsPersonID2Change(Sender: TField);
    procedure qryItemsInputEntityChange(Sender: TField);
    procedure qryItemsOutputEntityChange(Sender: TField);
    procedure qryItemsInputWeightChange(Sender: TField);
    procedure qryItemsOutputWeightChange(Sender: TField);
    procedure actRecallExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actRecallSpecialExecute(Sender: TObject);
    procedure actPrint1Execute(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure ppLblAddress(Sender: TObject; var Text: String);
    procedure ppLblTel1(Sender: TObject; var Text: String);
    procedure ppLblPostalCode(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblEconomicNumberGetText(Sender: TObject; var Text: String);
    procedure qryItemsStuffCodeChange(Sender: TField);
    procedure actNoteMasterExecute(Sender: TObject);
    procedure qryItemsAfterCancel(DataSet: TDataSet);
    procedure actSearchReciptNumberExecute(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryItemsCalcFields(DataSet: TDataSet);
    procedure ppLabelOutputWeightGetText(Sender: TObject; var Text: String);
    procedure ppLabelOutputEntityGetText(Sender: TObject; var Text: String);
    procedure ppLabelTotalOutputPriceGetText(Sender: TObject; var Text: String);
    procedure ppLabelnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure ppDBTextStuffSizeGetText(Sender: TObject; var Text: String);
    procedure EdtStuffAlloyEnter(Sender: TObject);
    procedure EdtStuffAlloyExit(Sender: TObject);
    procedure actInsertCopyExecute(Sender: TObject);
    procedure EdtStuffSizeEnter(Sender: TObject);
    procedure EdtStuffSizeExit(Sender: TObject);
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
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSortExecute(Sender: TObject);
    procedure ppDBTxtPayablePriceGetText(Sender: TObject; var Text: String);
    procedure actDeficitsExecute(Sender: TObject);
    procedure EdtStuffSizeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBtnProductCodeClick(Sender: TObject);
    procedure SBtnProductModelClick(Sender: TObject);
    procedure actCorrelateConversionCoExecute(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actReciptStateTo0Execute(Sender: TObject);
    procedure ppLblState2ZeroDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLabelnum2alphabetPayebelGetText(Sender: TObject;
      var Text: String);
    procedure ppLblSecondTypeGetText(Sender: TObject; var Text: String);
    procedure qryReciptsAfterEdit(DataSet: TDataSet);
    procedure qryItemsAfterEdit(DataSet: TDataSet);
    procedure ppLblAllStringReplaceGetText(Sender: TObject; var Text: String);
    procedure EdtStuffCodeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtStuffCodeChange(Sender: TObject);
    procedure qryItemsTotallSellPriceChange(Sender: TField);
    procedure qryItemsWaterCoChange(Sender: TField);
    procedure ppLblHeaderGetText(Sender: TObject; var Text: String);
    procedure actReportSearchExecute(Sender: TObject);
    procedure actReciptOnFormsRangeExecute(Sender: TObject);
    procedure qryItemsAuxiliaryChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure qryReciptsBeforeInsert(DataSet: TDataSet);
    procedure GrpBoxAccountEnter(Sender: TObject);
    procedure BtnRecallSpecialClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure actDeleteCorrelateReciptExecute(Sender: TObject);
    procedure AllGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure qryItemsRequestedEntityChange(Sender: TField);
    procedure qryItemsRequestedWeightChange(Sender: TField);
    procedure actStuffCodingSpecialSearchExecute(Sender: TObject);
    procedure DBnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure ppLblRegisterNumberGetText(Sender: TObject; var Text: String);
    procedure qryReciptsSecondTypeChange(Sender: TField);
    procedure A_l_l_SP__ClickClick(Sender: TObject);
    procedure ppLabel__StandardRateGetText(Sender: TObject; var Text: String);
    procedure ppLbl__TaxGetText(Sender: TObject; var Text: String);
    procedure ppLbl_TotalStandardRateGetText(Sender: TObject; var Text: String);
    procedure ppLbl_TotalStandardRateAlphaGetText(Sender: TObject;
      var Text: String);
    procedure ppDBTextSumSelectGetText(Sender: TObject; var Text: String);
    procedure actChangerExecute(Sender: TObject);
    procedure mnu4allClick(Sender: TObject);
    procedure medt_StuffTecInfoChange(Sender: TObject);
    procedure medt_StuffTecInfoEnter(Sender: TObject);
    procedure actAllotmentExecute(Sender: TObject);
    procedure plblSecondTypeItemGetText(Sender: TObject; var Text: String);
    procedure actSaveFormItemsExecute(Sender: TObject);
    procedure actLoadFormItemsExecute(Sender: TObject);
    procedure actReciptsRegulatesExecute(Sender: TObject);
    procedure actRpt001Execute(Sender: TObject);
    procedure plblAmount1Total_PriceGetText(Sender: TObject; var Text: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure mnuN7Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure actAllEditExecute(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure actInsertNoteExecute(Sender: TObject);
    procedure BtnDeficitsMouseLeave(Sender: TObject);
    procedure BtnDeficitsMouseEnter(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure qryItemsTaxCoChange(Sender: TField);
    procedure qryItemsTaxValueChange(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actSmsSendExecute(Sender: TObject);
    procedure NAllRecordsClick(Sender: TObject);
    procedure actshowRelatedFExecute(Sender: TObject);
    procedure ALLGetTextID(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetTextID(Sender: TField; const Text: String);
    procedure qryItemsDiagnosisCalcTotalPriceChange(Sender: TField);
    procedure qryReciptsDefaultDurationChange(Sender: TField);
    procedure qryReciptsReciptStateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actViewFileFExecute(Sender: TObject);
    procedure qryItemsDeficitValueChange(Sender: TField);
    procedure actMakeDocumentFExecute(Sender: TObject);
    procedure actReciptsTradesFExecute(Sender: TObject);
    procedure actSendExecute(Sender: TObject);
    procedure DBTextPersonID2DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actInsertRowExecute(Sender: TObject);
    procedure actRowDownExecute(Sender: TObject);
    procedure actRowUpExecute(Sender: TObject);
    procedure actPreItemExecute(Sender: TObject);
    procedure actShowpreReciptItemIDsFExecute(Sender: TObject);
    procedure qryReciptstax_statusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actMoaadiyanExecute(Sender: TObject);
    procedure MnuTaxCancellationClick(Sender: TObject);
    procedure MnuTaxCorrectionClick(Sender: TObject);
    procedure MnuTaxReturnFromSaleClick(Sender: TObject);
    procedure actCheckMoaadiyanExecute(Sender: TObject);
    procedure btnTaxClick(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure MnuLoopClick(Sender: TObject);
    procedure btnTax1Click(Sender: TObject);
    procedure dbtxtIRTAXIDDblClick(Sender: TObject);
    procedure plblToman1GetText(Sender: TObject; var Text: string);
    procedure plblTotallSellPricAlphaGetText(Sender: TObject; var Text: string);
    procedure mnuEntityClick(Sender: TObject);
    procedure mnuWeightClick(Sender: TObject);
    procedure EdtIOEntityEnter(Sender: TObject);
  private
    { Private declarations }
    MultiFormType: Boolean;
    myStore: TStore;
    cloned: TADOQuery;
    UnsavedFileName_M, UnsavedFileName, ReciptID4ParentReciptID: String;
    RestartStore, UnitPriceReadOnly, FormOutput, FilterShow, getresponseShow,
      PriceOn_StoreType: Boolean;
    // System4Edit           :Boolean;
    formType: Byte;
    PrintCount, SellEffect: Integer;
    ValueControl: LargeInt;
    EntityEdit, WeightEdit: Double;
    CurrentEntity, CurrentWeight: Extended;
    // FormReciptId:Integer;
    LimitFi: Currency;
    FormInOut: String;
    MachineFullWeight1: Real;
    BeforeServerID, BeforeYearID: String;
    qryCust1, qryCust2, qryCust3, qryGroupDeficitID: TADOQuery;
    Form_InOut: String;
    FieldNamePrice, FieldNameEntity, FieldNameWeight: String;
    Edit4Deficits: Boolean;
    Person3Active: Boolean;
    DataSetInsert: Boolean;
    CalculatedEntityOrWeight: Int8;
    InsertRow: TInsRow;
    procedure initFormConfig;
    procedure initFormPanel;
    procedure initForm4Output;
    procedure ChangeUnitSellPrice;
    procedure ChangeTotalInputPrice;
    procedure SaveArticlesToFile;
    procedure CheckUnsaved;
    procedure RecallStateChange;
    function Calc_SumFileds(FiledName: String): Currency;
    function ValidCodeReciptItems: Boolean;
    function OkEditMaster(ReciptID: String): Boolean;
    procedure InitDBCombos;
    procedure EndOfPrice(Field_Name: String);
    procedure EndOfPriceTax(Field_Name: String);
    function NonZeroControl: Boolean;
    procedure RecallBook(flag: Byte);
    procedure RequestedChangeEntityWeight;
    // procedure GetSellPriceonCustValuationType(const Sp: array of Currency);
    procedure initAddField;
    procedure SetRow;
    // procedure initAddField;
    // procedure OnMyMessage(var Msg: TMessage); message WM_USER + 50;
  public
    procedure Enter(Form_Type: Integer; LimitShow: Boolean = True;
      StoreID: Integer = 0);
    procedure initFormQry;
    { Public declarations }
  end;

var
  ReciptsF: TReciptsF;

implementation

uses GlobalPro, searchCode_ADO, shamsiDate, mmessage, SelectStore, Math,
  Note, StrUtils, RecallSpecialRecipts,
  ReciptsDeficits, sort2,
  mdiMain, FormFunctions, searchReports, ChooseReciptOnFormsRange,
  RecallSpecialRecipts2, GetExcel, searchCode_ADO4Scroll,
  StuffCodingSpecialSearch, Changer, Allotment,
  ReciptsFunctions, ReciptsRegulates, Rpt001, RptCardex, StuffTransaction,
  CPortFunctions, FaraConsts, main, SMSUnit, Related, WorkflowDm, AccFunctions,
  ViewFileOnServer, MakeDocument, ReciptsTrades, ShowpreReciptItemIDs;

{$R *.dfm}

procedure TReciptsF.SaveArticlesToFile;
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

procedure TReciptsF.CheckUnsaved;
var
  i: Smallint;
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
        if qryItems.FindField(Fields[i].FieldName) <> nil then
        begin
          aQry.Fields[i].OnChange :=
            qryItems.FieldByName(Fields[i].FieldName).OnChange;
          qryItems.FieldByName(Fields[i].FieldName).OnChange := nil;
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
      if qryItems.FindField(aQry.Fields[i].FieldName) <> nil then
      begin
        qryItems.Fields[i].OnChange :=
          aQry.FieldByName(aQry.Fields[i].FieldName).OnChange;
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

procedure TReciptsF.initFormQry;
var
  StoreKindList, s: String;
  i: Integer;
begin
  MultiFormType := var_MultiType_Boolean;
  FilterShow := var_glb_Boolean;
  formType := var_glb_gParam;

  if MultiFormType then
  begin
    for i := 0 to ReciptsF.ActionList.ActionCount - 1 do
      if ReciptsF.ActionList.Actions[i].Category = 'Dataset' then
      begin
        TAction(ReciptsF.ActionList.Actions[i]).ShortCut := mrNone;
      end;
    ReciptsF.newPanel.Enabled := False;
    ReciptsF.btnExcel.Enabled := False;
  end;

  // ______________________________________________________________________________
  cloned := TADOQuery.Create(Self);
  getresponseShow := True;
  UnsavedFileName_M := 'UnsavedMaster_Recipts' + IntToStr(formType) + '.DAT';
  UnsavedFileName := 'UnsavedItem_Recipts' + IntToStr(formType) + '.DAT';
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
    SellEffect := qryinit.FieldByName('SellEffect').AsInteger;
    ValueControl := qryinit.FieldByName('ValueControl').AsLargeInt;

    btnTax.Visible := not(((CurAccess and Integer(akSendTax) <> 0)));
    btnTax1.Visible := btnTax.Visible;
    btnTax.Visible := btnTax.Visible and (SellEffect > 0);
    dbtxttax_status.Visible := btnTax.Visible;
    dbchkInsr.Visible := btnTax.Visible;
    pnlNti.Visible := btnTax.Visible;

    edtDeficitValue.ReadOnly := qryinit.FieldByName('WaterCoOrDeficitValueEdit')
      .AsInteger = 0;
    edtWaterCo.ReadOnly := qryinit.FieldByName('WaterCoOrDeficitValueEdit')
      .AsInteger = 1;

    if FieldByName('OrderByFields').AsString <> EmptyStr then
    begin
      qryItems.SQL.Add('ORDER BY ' + FieldByName('OrderByFields').AsString);
    end;

    qryItems.Parameters.ParamByName('VATCo1').Value :=
      FieldByName('VATCo').AsFloat;
    qryItems.Parameters.ParamByName('VATCo2').Value :=
      FieldByName('VATCo').AsFloat;

  end; // with
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
      ifthen(User.PowerUser, 127, User.id);
  end; // with
  // if qryinit.FieldByName('Person1Active').AsInteger = 1 then
  begin
    // NotNull(qryinit.FieldByName('CustomerKind1').AsString,
    // 'هيچ گروهي براي گروه مشتري 1 مشخص نشده است');
    with qryCustomers1 do
    begin
      Active := False;
      s := Trim(qryinit.FieldByName('CustomerKind1').AsString);
      if s = EmptyStr then
        s := '-1';
      SQL.Add(' WHERE (CustomersGroup.GroupType IN(' + s + ')) ');

    end; // with
    qryCustCreate(qryCust1, '1', ReciptsF);
  end; // if
  qryGroupDeficitIDCreate(qryGroupDeficitID, ReciptsF);
  // if qryinit.FieldByName('Person2Active').AsInteger = 1 then
  begin
    // NotNull(qryinit.FieldByName('CustomerKind2').AsString,
    // 'هيچ گروهي براي گروه مشتري 2  مشخص نشده است');
    with qryCustomers2 do
    begin
      Active := False;
      s := Trim(qryinit.FieldByName('CustomerKind2').AsString);
      if s = EmptyStr then
        s := '-1';
      SQL.Add(' WHERE (CustomersGroup.GroupType IN(' + s + ')) ');
    end; // with
    qryCustCreate(qryCust2, '2', ReciptsF);
  end; // if

  // IF qryinit.FieldByName('PersonID1OnDetailActive').AsInteger
  // in [0, 1, 2, 3] THEN
  begin
    // NotNull(qryinit.FieldByName('CustomerKind1').AsString,
    // 'هيچ گروهي براي گروه مشتري Detail مشخص نشده است');
    with qryCustomer2Detail do
    begin
      Active := False;
      s := Trim(qryinit.FieldByName('Customer2DetailKind').AsString);
      if s = EmptyStr then
        s := '-1';
      SQL.Add(' WHERE (CustomersGroup.GroupType IN(' + s + ')) ');

    end; // with
  end; // if

  RestartStore := qryinit.FieldByName('RestartFormNumberOnStore').AsInteger
    in [0, 1, 4];
  FormOutput := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  FormInOut := 'Input';
  if FormOutput then
    FormInOut := 'Output';
  qryItems.Active := False;
  initFormPanel;
  initFormConfig;
  setColumns2(DBGrid1, FormOutput, 'OutputEntity');
  setColumns2(DBGrid1, FormOutput, 'OutputWeight');
  setColumns2(DBGrid1, FormOutput, 'TotalOutputPrice');

  setColumns2(DBGrid1, not FormOutput, 'InputEntity');
  setColumns2(DBGrid1, not FormOutput, 'InputWeight');
  setColumns2(DBGrid1, not FormOutput, 'TotalInputPrice');
  if FormOutput then
  begin
    initForm4Output;
    Form_InOut := 'Output';
    FieldNamePrice := 'TotalOutputPrice';
    FieldNameEntity := 'OutputEntity';
    FieldNameWeight := 'OutputWeight';
  end
  else
  begin
    Form_InOut := 'Input';
    FieldNamePrice := 'TotalInputPrice';
    FieldNameEntity := 'InputEntity';
    FieldNameWeight := 'InputWeight';
  end;

  mniActGetOtherMoneyF2.Visible := not FormOutput;
  mniActGetCheckF50.Visible := not FormOutput;
  mniActGetCheckF10.Visible := FormOutput;
  mniActGetOtherMoneyF1.Visible := FormOutput;
  SetFieldIndexFormGrid(DBGrid1);
  HighLightRequiredFields(Self);

  RequiredCustomers(qryRecipts, qryinit);

end;

procedure TReciptsF.initFormPanel;
var
  ReciptType: Integer;
  b: Boolean;
begin
  actInsertCopy.Visible := opt.AidInfoAvailable;
  edt_StuffTecInfo.Visible := opt.StuffTecInfoActive;
  lbl_StuffTecInfo.Visible := opt.StuffTecInfoActive;
  lblPO.Caption := opt.POCaption;
  pnlPO.Visible := opt.POActive;
  With qryinit do
  begin
    initAddField;
    // < Form.Caption>

    initCofferAddField(qryinit, qryRecipts, nil, pnlSellsEmporium,
      pnlSellsMethod, dblkcbb_SellsEmporium, dblkcbb_SellsMethod);
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

    qryItemsUnitSellPrice.Currency :=
      ((opt.ConfigSettings and Integer(CHkCsUnitSellPriceCurrency)) <> 0);

    // ________________________  عنوان بجاي كلمه مقدار و وز ن__________________________

    LblEntity.Caption := opt.EntityCaption;
    LblWeight.Caption := opt.WeightCaption;
    qryItems.FieldByName('InputEntity').DisplayLabel := opt.EntityCaption;
    qryItems.FieldByName('OutputEntity').DisplayLabel :=
      opt.EntityCaption + '#';
    qryItems.FieldByName('InputWeight').DisplayLabel := opt.WeightCaption;
    qryItems.FieldByName('OutputWeight').DisplayLabel :=
      opt.WeightCaption + '#';
    DisplayLabel4InOut(qryinit, qryItems);

    // < 1 كد انبار فعال >
    PnlStore.Visible := FieldByName('StoreActive').AsInteger = 1;
    LblStore.Caption := 'كد ' + FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('StoreID').Required := PnlStore.Visible;
    qryRecipts.FieldByName('StoreID').DisplayLabel := 'كد ' +
      FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('_StoresName').Required := PnlStore.Visible;
    qryRecipts.FieldByName('_StoresName').DisplayLabel := 'نام ' +
      LblStore.Caption;

    // < 2 كد انبار فعال >
    PnlStore2.Visible := FieldByName('Store2Active').AsInteger > 0;
    LblStore2.Caption := 'كد ' + FieldByName('Store2Caption').AsString;
    qryRecipts.FieldByName('StoreID2').Required := PnlStore2.Visible;
    qryRecipts.FieldByName('StoreID2').DisplayLabel := 'كد ' +
      FieldByName('Store2Caption').AsString;
    qryRecipts.FieldByName('_StoresName2').Required := PnlStore2.Visible;
    qryRecipts.FieldByName('_StoresName2').DisplayLabel := 'نام ' +
      LblStore2.Caption;

    // <   مشتري 1 فعال >
    PnlPerson1.Visible := FieldByName('Person1Active').AsInteger = 1;
    LblPerson1.Caption := 'كد ' + FieldByName('Person1Caption').AsString;
    LblPerson1Items.Caption := 'كد ' + FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('PersonID1').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('PersonID1').DisplayLabel := 'كد ' +
      LblPerson1.Caption;
    qryRecipts.FieldByName('_PersonName1').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('_PersonName1').DisplayLabel := 'نام ' +
      LblPerson1.Caption;

    PnlPersonID1OnDetail.Visible := FieldByName('PersonID1OnDetailActive')
      .AsInteger in [1, 2, 3];
    LblPerson1Items.Caption := 'كد ' +
      FieldByName('Person2DetailCaption').AsString;
    qryItems.FieldByName('PersonID1').DisplayLabel := 'كد ' +
      LblPerson1.Caption;
    qryItems.FieldByName('_PersonName1').DisplayLabel := 'نام ' +
      LblPerson1.Caption;
    qryItems.FieldByName('PersonID1').Required := PnlPersonID1OnDetail.Visible;
    // < 7  مشتري 2 فعال >
    pnlPerson2.Visible := FieldByName('Person2Active').AsInteger = 1;
    LblPerson2.Caption := 'كد ' + FieldByName('Person2Caption').AsString;
    qryRecipts.FieldByName('PersonID2').Required := pnlPerson2.Visible;
    qryRecipts.FieldByName('PersonID2').DisplayLabel := 'كد ' +
      LblPerson2.Caption;
    qryRecipts.FieldByName('_PersonName2').Required := pnlPerson2.Visible;
    qryRecipts.FieldByName('_PersonName2').DisplayLabel := 'نام ' +
      LblPerson2.Caption;
    // < 12 ارتباط با حسابداري >
    GrpBoxAccount.Visible := FieldByName('AccCodingShow').AsInteger > 0;
    if GrpBoxAccount.Visible then
    begin
      PnlCTopicCode2.Visible := Readacc_BankConfig('CTopicCode2Active',
        '1') = '1';
      PnlCTopicCode3.Visible := Readacc_BankConfig('CTopicCode3Active',
        '1') = '1';
    end;

    pnlDefaultDate.Visible := DefaultDateActive(qryinit);

    // < 14 مقدارو وزن درخواستي >
    b := FieldByName('Section2Visible').AsInteger in [0, 1];
    edtRequestedEntity.Visible := b;
    LblRequestedEntity.Visible := b;
    b := FieldByName('Section2Visible').AsInteger in [1, 3];
    edtRequestedWeight.Visible := b;
    LblRequestedWeight.Visible := b;
    PnlSection2Visible.Visible := FieldByName('Section2Visible').AsInteger
      in [0, 1, 3];
    // LblRequestedEntity.Visible:=opt.EntityDisplay;
    // LblRequestedWeight.Visible:=opt.WeightDisplay;
    // edtRequestedEntity.Visible:=opt.EntityDisplay;
    // edtRequestedWeight.Visible:=opt.WeightDisplay;
    LblRequestedEntity.Caption := FieldByName('Section2Caption').AsString;
    LblRequestedWeight.Caption := FieldByName('Section2CaptionWeight').AsString;
    // < مقدار ، وزن و بهاي كل اصلي نمايش شود >
    PnlEntityWeightPrice.Visible := FieldByName('Section1Visible')
      .AsInteger = 1;
    // < Recipts محل مصرف >
    LblUseUnitM.Caption := FieldByName('UseUnitCaseCaption').AsString;
    PnlUseUnitM.Visible := (FieldByName('UseUnitCase').AsInteger = 3) OR
      (FieldByName('UseUnitCase').AsInteger = 1);
    LblUseUnitD.Caption := FieldByName('UseUnitCaseCaption').AsString;
    qryRecipts.FieldByName('UseUnitID').Required := PnlUseUnitM.Visible;
    qryRecipts.FieldByName('UseUnitID').DisplayLabel := LblUseUnitM.Caption;
    qryRecipts.FieldByName('_UseUnitName').Required := PnlUseUnitM.Visible;
    qryRecipts.FieldByName('_UseUnitName').DisplayLabel := LblUseUnitM.Caption;
    // < Items محل مصرف >
    PnlUseUnitD.Visible := (FieldByName('UseUnitCase').AsInteger = 3) OR
      (FieldByName('UseUnitCase').AsInteger = 2);
    qryItems.FieldByName('UseUnitID').Required := PnlUseUnitD.Visible;
    qryItems.FieldByName('UseUnitID').DisplayLabel := 'كد ' +
      LblUseUnitM.Caption;
    qryItems.FieldByName('_UseUnitName').Required := PnlUseUnitD.Visible;
    qryItems.FieldByName('_UseUnitName').DisplayLabel := 'نام ' +
      LblUseUnitM.Caption;
    // < اطلاعات كسورات و اضافات نمايش شود >
    actDeficits.Visible := FieldByName('DeficitsActive').AsInteger = 1;
    // <  توضيحات Datail فعال باشد >
    LblControlCode.Caption := FieldByName('ControlCodeCaption').AsString;
    qryItems.FieldByName('ControlCode').DisplayLabel :=
      FieldByName('ControlCodeCaption').AsString;
    PnlSecondType.Visible := FieldByName('SecondTypeActive').AsInteger
      in [1, 3];
    qryRecipts.FieldByName('SecondType').Required := PnlSecondType.Visible;
    PnlSecondTypeItem.Visible := FieldByName('SecondTypeActive').AsInteger
      in [0, 3];
    if PnlSecondType.Visible or PnlSecondTypeItem.Visible then
      InitDBCombos;

    actCorrelateRecipt.Visible := FieldByName('CorrelateReciptType')
      .AsInteger > 0;
    actCorrelateRecipt.Enabled := FieldByName('CorrelateKind').AsInteger > 0;

    actCorrelateConversionCo.Visible := FieldByName('ConversionCoSerial')
      .AsInteger > 0;

    if (actCorrelateConversionCo.Visible) and (not actCorrelateRecipt.Visible)
    then
      BtnCorrelateConversionCo.Left := BtnCorrelateRecipt.Left;

    // ----------------------------set PnlAidInfoMaster----------------------------//
    PnlAidInfoMaster.Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];
    PnlAidInfoItems.Visible := FieldByName('AidInfoActive').AsInteger
      in [2, 3, 4];
    LblAidInfoNo.Caption := LblAidInfoNo.Caption + ' ' +
      FieldByName('AidInfoCaptionNo').AsString;
    LblAidInfoDate.Caption := LblAidInfoDate.Caption + ' ' +
      FieldByName('AidInfoCaption').AsString;

    LblAidInfoNo2.Caption := LblAidInfoNo.Caption;
    LblAidInfoDate2.Caption := LblAidInfoDate.Caption;

    pnlPortage.Visible := FieldByName('PawsFieldsActive').AsInteger in [1, 3];

    PnlAidInfoItems_Portage.Visible := PnlAidInfoItems.Visible or
      pnlPortage.Visible;

    actPrint.Hint := FieldByName('PerformFileName').AsString + #13#10 +
      FieldByName('ReportFileName').AsString + #13#10;

    EdtRNum.ReadOnly := FieldByName('EditReciptNumberActive').AsInteger <> 1;

    PnlReciptNote.Visible := FieldByName('NoteShow').AsInteger in [1, 3, 4];;
    PnlItemNote.Visible := FieldByName('NoteShow').AsInteger in [2, 3, 4];

    EdtItemDate.Visible := FieldByName('DetailDateActive').AsInteger = 1;
    LblItemDate.Visible := EdtItemDate.Visible;

    PnlDiscountActive.Visible := FieldByName('DiscountActive').AsInteger = 1;
    setColumns2(DBGrid1, PnlDiscountActive.Visible, 'TotalDeficient');

    lblAuxiliary.Caption := DMF.ReadBankConfig('AuxiliaryCaption');
    lblAuxiliary.Visible := lblAuxiliary.Caption <> EmptyStr;
    edtAuxiliary.Visible := lblAuxiliary.Visible;
    lblCaption.Hint := IntToStr(formType);

    if FieldByName('ExtraCodingAddStuffName').AsInteger = 1 then
      qryItems.FieldByName('_StuffName').LookupResultField := 'StuffName';

    b := FieldByName('StandardRateActive').AsInteger >= 1;
    PnlStandardRate.Visible := b;
    PnlSecondTypeItem_StandardRate.Visible := PnlSecondTypeItem.Visible or
      PnlStandardRate.Visible;
    lblStandardRate.Caption := 'نرخ‏' + FieldByName('StandardCaption').AsString;
    lblTotalStandardRate.Caption := 'بهاي‏كل‏' +
      FieldByName('StandardCaption').AsString;
    qryItems.FieldByName('StandardRate').DisplayLabel :=
      lblStandardRate.Caption;
    qryItems.FieldByName('TotalStandardRate').DisplayLabel :=
      lblTotalStandardRate.Caption;

    b := qryinit.FieldByName('TozinActive').AsInteger = 1;
    PnlMachineM.Visible := FieldByName('MachineActive').AsInteger in [1, 3];
    PnlMachineD.Visible := (FieldByName('MachineActive').AsInteger
      in [2, 3]) or b;
    if b then
      with TFloatField.Create(qryRecipts) do
      begin
        FieldName := '_InfoWeight';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'PersonID1';
        LookUpDataset := qryCustomers1;
        LookUpKeyFields := 'CustID';
        LookupResultField := 'InfoWeight';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
      end;
    setColumns2(DBGrid1, b, 'MachineWeight');
    setColumns2(DBGrid1, b, 'MachineFullWeight');
    setColumns2(DBGrid1, b, 'TotalWeight');
    setColumns2(DBGrid1, b, FormInOut + 'Entity', aReadOnly);

    b := qryinit.FieldByName('TozinActive').AsInteger = 5;
    pnlPestEntity.Visible := b;
    qryItems.FieldByName(EdtIOEntity.DataField).ReadOnly := b;
    qryItems.FieldByName('PestEntity').ReadOnly := b;
    if b then
    begin
      with TFloatField.Create(qryItems) do
      begin
        FieldName := '_StuffpurePercent';
        FieldKind := fkLookup;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        KeyFields := 'StuffCode';
        LookUpDataset := qryStuff_Unit_TecInf;
        LookUpKeyFields := 'c_StuffCode';
        LookupResultField := 'StuffpurePercent';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
      end;
      with TFloatField.Create(qryItems) do
      begin
        FieldName := '__PestEntity';
        FieldKind := fkCalculated;
        DataSet := qryItems;
        Name := 'qryItems' + FieldName;
        DisplayLabel := 'مقدار ناخالص';
        qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
        dbedtPestEntity1.DataField := FieldName;
      end;

      With DBGrid1.Columns.Add do
      begin
        FieldName := '__PestEntity';
        Index := 6;
      end;
      With DBGrid1.Columns.Add do
      begin
        FieldName := 'PestEntity';
        Index := 7;
      end;

    end;

    b := qryinit.FieldByName('TozinActive').AsInteger = 0;
    btnExcel.Visible := b;

    lbl_c_KeepPlace.Visible := FieldByName('ShowKeepPlace').AsInteger = 1;
    edt_c_KeepPlace.Visible := lbl_c_KeepPlace.Visible;

    actAllotment.Visible := FieldByName('AllotmentActive').AsInteger = 1;

    CalculatedEntityOrWeight := FieldByName('CalculatedEntityOrWeight')
      .AsInteger;
    lblDiagnosisCalcTotalPrice.Visible := CalculatedEntityOrWeight > 0;
    cmbDiagnosisCalcTotalPrice.Visible := lblDiagnosisCalcTotalPrice.Visible;

  end; // with
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
end;

procedure TReciptsF.initFormConfig;
var
  i: Integer;
begin
  ReciptID4ParentReciptID := '';
  if not opt.AidInfoAvailable then
  begin // (8)
    for i := 0 to DBGrid1.Columns.Count - 1 do
    begin
      if Pos('stuffsize', LowerCase(DBGrid1.Columns[i].FieldName)) <> 0 then
        DBGrid1.Columns[i].FieldName := '_UnitName';
      if Pos('stuffdiameter', LowerCase(DBGrid1.Columns[i].FieldName)) <> 0 then
        DBGrid1.Columns[i].FieldName := '_StuffTecInfo';
      if Pos('stuffalloy', LowerCase(DBGrid1.Columns[i].FieldName)) <> 0 then
        DBGrid1.Columns[i].Visible := False;
    end; // for
    Pnl_GradeToAlloy.Visible := False;
  end; // if
  EdtIOEntity.Visible := opt.EntityDisplay;
  /// / 9
  LblEntity.Visible := opt.EntityDisplay;
  if qryinit.FieldByName('Section2Visible').AsInteger <> 1 then
  begin
    EdtIOWeight.Visible := opt.WeightDisplay; // (s='2')OR(s='3')OR(s='1');
    LblWeight.Visible := opt.WeightDisplay;
  end;

  Entity_Weight(DBGrid1);

  UnitPriceReadOnly := qryinit.FieldByName('UnitPriceReadOnly').AsInteger = 0;
  EdtUnitSellPrice.ReadOnly := UnitPriceReadOnly;
  EdtUnitSellPrice.TabStop := not UnitPriceReadOnly;
  EdtTotalIOPrice.ReadOnly := not UnitPriceReadOnly;
  EdtTotalIOPrice.TabStop := not EdtTotalIOPrice.ReadOnly;
  LblControlCode.Visible := opt.ControlCodeActive > 0;
  EdtControlCode.Visible := opt.ControlCodeActive > 0;

  if qryinit.FieldByName('PriceReadOnly').AsInteger = 1 then
  begin
    EdtUnitSellPrice.ReadOnly := True;
    EdtTotalIOPrice.ReadOnly := True;
  end;

end;

procedure TReciptsF.initForm4Output;
begin
  EdtIOEntity.DataField := 'OutputEntity';
  EdtIOWeight.DataField := 'OutputWeight';
  EdtTotalIOPrice.DataField := 'TotalOutputPrice';
  // for i := 0 to DBGrid1.Columns.Count - 1 do
  // begin
  // if Pos('input', LowerCase(DBGrid1.Columns[i].FieldName)) <> 0 then
  // DBGrid1.Columns[i].FieldName :=
  // StringReplace(DBGrid1.Columns[i].FieldName, 'Input', 'Output', []);
  // end; // for
end;

procedure TReciptsF.SBtnPersonID1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  qryCustomers1.Active := False;
  qryCustomers1.Active := True;
  txt := 'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
    ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + ' WHERE (CustomersGroup.GroupType IN(' + qryinit.FieldByName
    ('CustomerKind1').AsString + '))  ';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + 'ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString], Results,
    [50, 150], alLeft);
  if b then
  begin
    // if not (qryRecipts.state in dsEditModes) then   qryRecipts.edit;
    qryRecipts['PersonID1'] := Results[0];
    // if PnlPerson2.Visible then EdtPersonID2.SetFocus
  end; // if
end;

procedure TReciptsF.SpeedButton6Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  qryCustomers2.Active := False;
  qryCustomers2.Active := True;
  txt := 'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
    ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + ' WHERE (CustomersGroup.GroupType IN(' + qryinit.FieldByName
    ('CustomerKind2').AsString + ')) ';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell,
    qryinit.FieldByName('Person2Caption').AsString + 'ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person2Caption').AsString + ''],
    Results, [50, 150], alLeft);
  if b then
  begin
    // if not (qryRecipts.state in dsEditModes) then   qryRecipts.edit;
    qryRecipts['PersonID2'] := Results[0];
  end; // if
end;

procedure TReciptsF.SBtnStoreIDClick(Sender: TObject);
var
  c, txt, s: String;
begin
  inherited;
  txt := 'SELECT n_StoreID, c_StoreName FROM Stores ';
  if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
    txt := txt + ' WHERE (StoreKind IN (' + qryinit.FieldByName('StoreKindList')
      .AsString + '))';

  s := searchCode_ADOF.SearchCode(DMF.adcBSell, c,
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

procedure TReciptsF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  accSpeedButtonDetailCode(qryItems);
end;

procedure TReciptsF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  accSpeedButtonTopicCode(qryItems)
end;

procedure TReciptsF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  accSpeedButtonCTopicCode2(qryItems)
end;

procedure TReciptsF.EdtStoreIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    if (Sender as TDBEdit).Tag = 2 then
      SBtnStoreID2.Click
    else
      SBtnStoreID.Click;
end;

procedure TReciptsF.EdtIOEntityEnter(Sender: TObject);
begin
  inherited;
  if EntityEdit = 0 then
    EntityEdit := qryItems.FieldByName(EdtIOEntity.DataField).AsFloat;
  if WeightEdit = 0 then
    WeightEdit := qryItems.FieldByName(EdtIOWeight.DataField).AsFloat;

end;

procedure TReciptsF.EdtPersonID1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnPersonID1.Click;
end;

procedure TReciptsF.EdtPersonID2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

procedure TReciptsF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryRecipts) then
  begin
    DataSet.Cancel;
    exit;
  end;
  if not(qryRecipts.State in dsEditModes) then
    qryRecipts.edit;

  DataSet.FieldByName('Irow').ReadOnly := False;
  if InsertRow.CanInsert then
    DataSet.FieldByName('Irow').AsInteger := InsertRow.Row
  else
    DataSet.FieldByName('Irow').AsInteger := InsertRow.Row + 1;

  if CalculatedEntityOrWeight > 0 then
    qryItemsDiagnosisCalcTotalPrice.AsInteger := CalculatedEntityOrWeight - 1;

  GetANewID(DataSet, IntToStr(formType), 'ReciptItems', 'ReciptItemID',
    qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').AsInteger;
  DataSet.FieldByName('StuffCode').AsLargeInt := 0;
  AccCodingShowInsert(qryinit, qryItems, qryRecipts);
  if EdtItemDate.Visible then
    qryItems.FieldByName('ItemDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('FirstUser').AsString := User.name;
  if (qryinit.FieldByName('DiscountEntryKind').AsInteger = 1) then
  begin
    DataSet.FieldByName('WaterCo').AsFloat :=
      GetCustomersNoDiscount(qryRecipts, qryinit);
  end;
  if (qryinit.FieldByName('MaxControlCode').AsInteger = 1) and
    (DataSet.RecordCount = 0) then
  begin
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT MAX(ReciptItems.ControlCode) + 1 FROM Recipts INNER JOIN ' +
        ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID '
        + ' WHERE Recipts.StoreID=' + qryReciptsStoreID.AsString;
      Active := True;
      TADOQuery(DataSet).FieldByName('ControlCode').AsString :=
        Fields[0].AsString;
      Active := False;
    end;
  end;
  if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [0, 1] then
    DataSet.FieldByName('PersonID1').AsInteger :=
      qryRecipts.FieldByName('PersonID1').AsInteger;
  if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [3] then
    DataSet.FieldByName('PersonID1').AsInteger :=
      qryRecipts.FieldByName('PersonID2').AsInteger;
  if qryinit.FieldByName('TozinActive').AsInteger = 1 then
  begin

    MachineFullWeight1 := ReadFromTxtOrComPort;
    qryItems.FieldByName('TotalWeight').AsFloat := 0;
    DataSet.FieldByName('MachineFullWeight').AsFloat := MachineFullWeight1;
    DataSet.FieldByName('MachineWeight').AsFloat :=
      qryRecipts.FieldByName('_InfoWeight').AsFloat;

  end;

  if pnlStuffCode.Enabled then
    if (qryinit.FieldByName('BarCodeKind').AsInteger = 0) then
      EdtStuffCode.SetFocus

    else
      medt_StuffTecInfo.SetFocus;

  if qryinit.FieldByName('TozinActive').AsInteger = 2 then
  begin
    // qryItems.FieldByName(EdtIOEntity.DataField).ReadOnly:=False;
    qryItems.FieldByName(EdtIOEntity.DataField).AsFloat := ReadFromTxtOrComPort;
    // qryItems.FieldByName(EdtIOEntity.DataField).ReadOnly:=True;
  end;

end;

procedure TReciptsF.qryReciptsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSetInsert := True;
  GetANewID(DataSet, IntToStr(formType), 'Recipts', 'ReciptID', nil,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('ReciptDate').AsString := var_glb_CurrentDate;

  if DefaultDateActive(qryinit) then
    DataSet.FieldByName('DefaultDate').AsString := var_glb_CurrentDate;

  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  DataSet.FieldByName('ReciptType').AsInteger := formType;
  DataSet.FieldByName('Insr').AsBoolean := False;
  GetReciptNumber(qryinit, DataSet, 0, myStore);
  SetDefaultSellsMethodEmporium(qryRecipts, dblkcbb_SellsEmporium,
    dblkcbb_SellsMethod);
  DataSet.FieldByName('InsertDate').AsDateTime := Now;
  IF RestartStore THEN
    DataSet.FieldByName('StoreID').AsInteger := myStore.code; // 2

  if not PnlStore.Visible then
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

  ReciptStateAutoStateChange(qryinit, DataSet);

  DataSet.FieldByName('AddDecValue').AsInteger := 0;
  DataSet.FieldByName('TotalValue').AsInteger := 0;
  qryRecipts.FieldByName('SecondType').AsInteger := CmbSecondType.Tag;
  // if not PnlSecondType.Visible then
  // DataSet.FieldByName('SecondType').AsCurrency:=0;
  DataSet.FieldByName('UseOtherID').AsCurrency := 0;

  DataSet.FieldByName('PersonID2').AsInteger := 0;
  DataSet.FieldByName('PersonID3').AsInteger := 0;
  DataSet.FieldByName('PersonID4').AsInteger := 0;

  if not PnlPerson1.Visible then
    DataSet.FieldByName('PersonID1').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := User.name;
  EdtRNum.SetFocus;

end;

procedure TReciptsF.SpeedButton7Click(Sender: TObject);
var
  txt, s_StoreID, TxtScroll, TxtYearID: String;
  b: Boolean;
  Results: array [0 .. 15] of String;
  i: Byte;
  Fields_SD_1_9: String;
  colTopics_Search: array [0 .. 15] of String;
const
  colWidths_Search: array [0 .. 15] of Smallint = (50, 100, 50, 100, 100, 70,
    70, 0, 0, 0, 0, 0, 0, 0, 0, 0);
begin
  inherited;
  if opt.StuffCodingKind in [1, 2] then
  begin
    if searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ',
      ' SELECT  c_StuffCode, c_StuffName, UnitName, c_StuffTecInfo,tabageh, nevisandeh, '
      + ' PakhshCompany,motarjem, chapDate, gateketab, noejeldName,SellPrice1  '
      + ' FROM Aid_StuffCoding   WHERE     (State = 0) ',
      ['كد كتاب', 'عنوان كتاب', 'واحد', 'مشخصات فني', 'طبقه', 'نام نويسنده',
      'شركت پخش', 'مترجم', 'سال چاپ', 'قطع كتاب', 'نوع جلد', 'بهاي فروش'],
      Results, [50, 50, 100, 70, 100, 50, 70, 70, 50, 50, 50, 50], alLeft) then
    begin
      if not(qryItems.State in dsEditModes) then
        qryItems.edit;
      qryItems.FieldByName('StuffCode').AsString := Results[0];
    end;
    exit;
  end;
  if opt.EntityDisplay then
    colTopics_Search[5] := opt.EntityCaption;
  if opt.WeightDisplay then
    colTopics_Search[6] := opt.WeightCaption;
  colTopics_Search[0] := 'کد';
  colTopics_Search[1] := 'نام كالا';
  colTopics_Search[2] := 'واحد';
  colTopics_Search[3] := 'مشخصات فني';
  colTopics_Search[4] := 'بهاي فروش 1';
  for i := 1 to 9 do
  begin
    colTopics_Search[i + 6] := opt.ExtraCoding.Captions[i];
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      colWidths_Search[i + 6] := 100;
      Fields_SD_1_9 := Fields_SD_1_9 + ',StuffCoding.sd' + IntToStr(i);
    end;
  end;
  TxtYearID := Format(' AND (Recipts.YearID BETWEEN %d AND %d )',
    [opt.DefaultYear, APPBank.Year]);
  b := False;
  s_StoreID := ifthen(qryRecipts.FieldByName('StoreID').IsNull, '0',
    qryRecipts.FieldByName('StoreID').AsString);

  txt := ' SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName,StuffCoding.c_StuffTecInfo,StuffCoding.SellPrice1 '
    + Fields_SD_1_9 +
    ' FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode '
    + ' LEFT OUTER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode ';

  IF PnlStore.Visible THEN
    txt := txt + ' WHERE (StuffCoding.State = 0)AND(StoreStuffs.n_StoreID = ' +
      s_StoreID + ' ) ';
  txt := txt +
    '  GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName, StuffCoding.c_StuffTecInfo, StuffCoding.SellPrice1 ';
  txt := txt + Fields_SD_1_9;
  case qryinit.FieldByName('ShowEntityOnSearch').AsInteger of
    0:
      b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', txt,
        colTopics_Search, Results, colWidths_Search, alLeft);
    1:
      begin
        txt := ' SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName, Units.UnitName,StuffCoding.c_StuffTecInfo,StuffCoding.SellPrice1,  '
          + ' round(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity),3) AS SUMEntity, '
          + ' round(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight),3) AS SUMWeight '
          + Fields_SD_1_9 +
          ' FROM ReciptItems INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN '
          + ' ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN '
          + ' StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode ' +
          ' LEFT OUTER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode ' +
          ' WHERE (StuffCoding.State = 0)AND(Recipts.ReciptDate <= ''' +
          qryRecipts.FieldByName('ReciptDate').AsString + ''')  ' +
          ifthen(PnlStore.Visible, 'AND (Recipts.StoreID = ' + s_StoreID + ')',
          '') + ' AND (ReciptTypes.EffectType = 2 OR ReciptTypes.EffectType = 4) AND (Recipts.ReciptState < 3) '
          + TxtYearID +
          ' GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName, Units.UnitName,StuffCoding.c_StuffTecInfo,StuffCoding.SellPrice1 '
          + Fields_SD_1_9;
        b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', txt,
          // colTopics_Search1,Results,colWidths_Search1,alLeft);
          colTopics_Search, Results, colWidths_Search, alLeft);
      end;
    2:
      begin
        TxtYearID := Format(' AND (YearID BETWEEN %d AND %d )',
          [opt.DefaultYear, APPBank.Year]);
        TxtScroll :=
          '  SELECT isnull(SUM(InputEntity - OutputEntity),0) AS مقدار ' +
          ifthen(opt.WeightDisplay,
          ', isnull(SUM(InputWeight - OutputWeight),0) AS وزن  ', '') +
          ' FROM ReciptItems_Stock' + ' WHERE (ReciptDate <=  ''' +
          qryRecipts.FieldByName('ReciptDate').AsString + '''  ) ' +
          ifthen(PnlStore.Visible, 'AND (StoreID = ' + s_StoreID + ')', '') +
          ' AND (StuffCode =  :StuffCode ) AND (EffectType = 2 OR EffectType = 4) AND '
          + ' (ReciptItemID <> ' + IntToStr(qryItems.FieldByName('ReciptItemID')
          .AsInteger) + ' )AND  (ReciptState < 3) ' + TxtYearID;

        b := searchCode_ADO4ScrollF.SearchCode2(DMF.adcBSell, ' كالاها  ', txt,
          colTopics_Search, Results, colWidths_Search, alLeft, TxtScroll);
      end;
    3:
      begin
        txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName, StuffCoding.c_StuffTecInfo, StuffCoding.SellPrice1,'
          + ' abcd.SUMEntity, abcd.SUMWeight,abcd.MaxUnitSellPrice' +
          ' FROM StuffCoding INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode LEFT OUTER JOIN '
          +
        // ' FROM StuffCoding LEFT OUTER JOIN' +
          ' (SELECT ReciptItems.StuffCode, MAX((CASE ReciptTypes.EffectType WHEN 2 THEN'
          + ' ReciptItems.UnitSellPrice ELSE 0 END))AS MaxUnitSellPrice, ' +
          ' ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity), 3) AS SUMEntity,'
          + ' ROUND(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight), 3) AS SUMWeight'
          + Fields_SD_1_9 + ' FROM ReciptItems INNER JOIN' +
          ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN'
          + ' ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType' +
          ' WHERE (Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
          ('ReciptDate').AsString + ''') ' + ifthen(PnlStore.Visible,
          'AND (Recipts.StoreID = ' + s_StoreID + ')', '') +
          ' AND (ReciptTypes.EffectType IN (2,4)) AND (Recipts.ReciptState < 3)'
          + TxtYearID + ' GROUP BY ReciptItems.StuffCode' +
          ' HAVING (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) >= 0.0001) OR'
          + ' (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <= - 0.0001) OR'
          + ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) >= 0.0001) OR'
          + ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) <= - 0.0001)) AS abcd ON'
          + ' StuffCoding.c_StuffCode = abcd.StuffCode';
        b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', txt,
          colTopics_Search, Results, colWidths_Search, alLeft);
      end;

  end;
  if b then
  begin
    if not(qryItems.State in dsEditModes) then
      qryItems.edit;
    qryItems.FieldByName('StuffCode').AsString := Results[0];
  end; // if
end;

procedure TReciptsF.EdtStuffCodeeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton7.Click;
end;

procedure TReciptsF.FormDestroy(Sender: TObject);
begin
  inherited;
  opt.PayablePrice := 0;
  opt.CustomerID1 := 0;
  opt.ReciptID := 0;
  cloned.Free;
  FreeMyComponent(Self, ['qrySellsEmporiums', 'qrySellsMethods',
    'qryCustomers3', 'qryCust1', 'qryCust2', 'qryCust3', 'srcCustomers1',
    'srcCustomers2', 'srcCustomers3', 'ppDBPipelineCustomers1',
    'ppDBPipelineCustomers2', 'ppDBPipelineCustomers3', 'qryGroupDeficitID']);
  mainF.DelListRecipts('ReciptsF' + IntToStr(formType));
end;

procedure TReciptsF.FormResize(Sender: TObject);
begin
  inherited;
  dbmmoReciptNote2.Height := PnlReciptNote.Height div 2;
end;

procedure TReciptsF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  SpeedButtonUseUnits(qryRecipts, LblUseUnitM.Caption)
end;

procedure TReciptsF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton4.Click
end;

procedure TReciptsF.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click
end;

procedure TReciptsF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click
end;

procedure TReciptsF.EdtUseUnitID_MKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton8.Click;
end;

procedure TReciptsF.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryRecipts.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;

  actPrint.Enabled := newPanel.Visible;
  // actPrint1.Visible:=newPanel.Visible;
  // actPrint2.Visible:=newPanel.Visible;

  newPanel2.Visible := okPanel.Visible;
  if not PnlUseUnitD.Visible then
    PnlItems.Visible := okPanel.Visible;

  // tlb1.Enabled := newPanel2.Visible;

  RecallStateChange;
  LblReMainPerson.Visible := False;
  if Not MultiFormType then
  begin
    FreeReservedCodes(DMF.adcBSell, 'recipts', '', IntToStr(formType));
    FreeReservedCodes(DMF.adcBSell, 'reciptitems', '', IntToStr(formType));
    if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger in [0, 1, 4]
    then
    begin
      FreeReservedCodes(DMF.adcBSell, 'recipts', '',
        qryRecipts.FieldByName('ReciptType').AsString + '_' +
        qryRecipts.FieldByName('StoreID').AsString);
      FreeReservedCodes(DMF.adcBSell, 'recipts', '',
        qryRecipts.FieldByName('ReciptType').AsString + '_');
    end;
  end;
  SBtnPersonID1.Visible := not qryRecipts.FieldByName('PersonID1').ReadOnly;
  SBtnStoreID.Visible := not qryRecipts.FieldByName('StoreID').ReadOnly;

  actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >= 1)
    and ReciptStateDeficitsVisible(qryRecipts) and
    (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1) or
    (qryinit.FieldByName('EditableFields').AsString <> EmptyStr);
  actDeficits.Enabled := (newPanel.Visible) and
    (qryinit.FieldByName('DeficitValueEditing').AsInteger = 0);

  DMTaxF.TaxStateMenu(MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection,
    MnuTaxReturnFromSale, MnuCheckMoaadiyan, MnuLoop, qryRecipts, SellEffect)

end;

procedure TReciptsF.srcItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryItems.State in dsEditModes;
  newPanel2.Visible := not okPanel2.Visible and
    (qryRecipts.State in dsEditModes);
  BtnReject.Cancel := newPanel2.Visible;
  medt_StuffTecInfo.Visible :=
    (qryinit.FieldByName('BarCodeKind').AsInteger = 1) and okPanel2.Visible;

  // qryItemsDiagnosisCalcTotalPrice.ReadOnly := not(qryItems.State in [dsInsert]);
  // if qryItems.State in dsEditModes then  qryRecipts.Edit;
end;

procedure TReciptsF.ppLblCompanyDescGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMF.ReadBankConfig('CompanyDesc', 'سهامي خاص')
end;

procedure TReciptsF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TReciptsF.plblTotallSellPricAlphaGetText(Sender: TObject;
  var Text: string);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsF.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  SpeedButtonUseUnits(qryItems, LblUseUnitM.Caption)
end;

procedure TReciptsF.EdtUseUnitID_DKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton9.Click
end;

function TReciptsF.Calc_SumFileds(FiledName: String): Currency;
var
  Total: String;
begin
  Total := ifthen(FiledName = 'Price', 'Total', '');
  Result := 0;
  try
    with cloned do
    begin
      Clone(qryItems, ltReadOnly);
      First;
      while not Eof do
      begin
        Result := Result + FieldByName(Total + 'Input' + FiledName).AsCurrency +
          FieldByName(Total + 'Output' + FiledName).AsCurrency;
        Next;
      end; // while
    end; // with
    // if qryinit.FieldByName('EffectOnCustomer').AsInteger=2 then
    // if formType=5 then   Result:=Result*-1;
  except
  end; // try
end;

procedure TReciptsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1, actSmsSend)
end;

procedure TReciptsF.actShowpreReciptItemIDsFExecute(Sender: TObject);
begin
  inherited;
  ShowpreReciptItemIDsF.enter2(qryItems)
end;

procedure TReciptsF.actshowRelatedFExecute(Sender: TObject);
begin
  inherited;
  RelatedF.showRelatedF(qryRecipts, qryReciptsPersonID1.AsInteger);
end;

procedure TReciptsF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryRecipts, qryItems, SmsRecipts, formType, 0, 1);
end;

procedure TReciptsF.qryReciptsBeforePost(DataSet: TDataSet);
var
  DefaultDate: String;
begin
  inherited;
  if qryItems.State in dsEditModes then
    qryItems.Post;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  TrimStringFields(qryRecipts);
  if not CheckRequiredFields(qryRecipts) then
    Abort;

  DefaultDate := DataSet.FieldByName('DefaultDate').AsString;
  if not validate_date(True, '', '', 'تاريخ جانبي', DefaultDate) then
    Abort;

  try
    DataSet.FieldByName('DefaultDate').AsString := '';
    if not ValidateDatasetDatesRecipts(DataSet, qryinit) then
      Abort;
  finally
    DataSet.FieldByName('DefaultDate').AsString := DefaultDate;
  end;

  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 2 then
    StuffCodeUnic(qryRecipts, qryItems, qryinit);

  if not ValidReciptNumber(qryRecipts, qryinit, myStore) then
    Abort;
  qryRecipts.FieldByName('ReciptValue').AsCurrency := Calc_SumFileds('Price');
  if CheckedMaxCredit(qryinit, qryItems, qryRecipts) then
    Abort;
  if LimitRecord(qryItems, qryinit, False) then
    Abort;
  FnCorrelate4EditActiveDelete(qryRecipts,
    qryinit.FieldByName('Correlate4EditActive').AsInteger);
  GetReciptNumber(qryinit, DataSet, 1, myStore);
  ReciptsSumOnStuffCode(qryRecipts, qryItems, qryinit, FieldNameEntity);

  if qryinit.FieldByName('ReciptBe4PostCtrlEntAct').AsInteger > 0 then
    With qryItems do
      try
        DisableControls;
        First;
        while not Eof do
        begin
          if not ControlEntity(CurrentEntity, CurrentWeight, qryItems,
            qryRecipts, qryinit, Form_InOut, Person3Active, MyEntityDisplayType,
            False) then
            Abort;
          Next;
        end;
      finally
        EnableControls;
      end;

  Chk_CustomerActive(qryRecipts_CustomerActive, qryReciptsPersonID1);

  if not ChkCustomerState(qryRecipts) then
    Abort;

end;

procedure TReciptsF.qryReciptsDefaultDurationChange(Sender: TField);
begin
  inherited;
  qryReciptsDefaultDate.AsString := DefaultDateCalc(qryReciptsDefaultDuration,
    qryReciptsReciptDate)
end;

procedure TReciptsF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qryItemsIRow.IsNull) or (qryItemsIRow.AsString = EmptyStr) then
    qryItemsIRow.AsInteger := InsertRow.Row;

  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').AsInteger;
  // GrpBoxAccount.Tag := DataSet.FieldByName('acc_TopicCode').AsInteger +
  // DataSet.FieldByName('acc_DetailCode').AsInteger +
  // DataSet.FieldByName('acc_CTopicCode').AsInteger +
  // DataSet.FieldByName('acc_CTopicCode2').AsInteger;

  if (DataSet.FieldByName(EdtIOEntity.DataField).AsFloat < 0) or
    (DataSet.FieldByName(EdtIOWeight.DataField).AsFloat < 0) or
    (DataSet.FieldByName(EdtTotalIOPrice.DataField).AsCurrency < 0) then
    if not(formType in [2, 3]) then
    begin
      Warn('عدد منفی است.‏');
      Abort;
    end;
  TrimStringFields(qryItems);
  if not CheckRequiredFields(qryItems) then
    Abort;
  if not ValidateDatasetDatesRecipts(qryItems, qryinit) then
    Abort;
  if not ValidCodeReciptItems then
    Abort;
  if not ControlEntity(CurrentEntity, CurrentWeight, qryItems, qryRecipts,
    qryinit, FormInOut, Person3Active, MyEntityDisplayType, False) then
    Abort;
  // DataSet.FieldByName(EdtIOWeight.DataField).AsFloat:=roundto(DataSet.FieldByName(EdtIOWeight.DataField).AsFloat,-3);
  // DataSet.FieldByName(EdtTotalIOPrice.DataField).AsFloat:=roundto(DataSet.FieldByName(EdtTotalIOPrice.DataField).AsFloat,0);
  if PnlDiscountActive.Visible then
    DataSet.FieldByName('TotallSellPrice').AsFloat :=
      roundto(DataSet.FieldByName('TotallSellPrice').AsFloat, 0);
  DataSet.FieldByName('ControlCode').AsString :=
    ifthen(DataSet.FieldByName('ControlCode').IsNull, '0',
    DataSet.FieldByName('ControlCode').AsString);
  if not NonZeroControl then
    Abort;

  if (opt.StuffEnableKind in [2]) then
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT State ';
      SQL.Add('FROM StuffCoding WHERE c_StuffCode=' +
        qryItems.FieldByName('StuffCode').AsString);
      Active := True;
      if FieldByName('State').AsInteger > 0 then
      begin
        Warn('كالاي انتخاب شده غير فعال است!!‏');
        Abort;
      end;
      Active := False;
    end;
  if Price_Read_Only(qryinit, qryItems) then
    Abort;

  if not ChkCustomerState(qryItems) then
    Abort;

end;

function TReciptsF.NonZeroControl;
begin
  Result := False;
  If (qryItems.FieldByName(EdtIOEntity.DataField).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [1, 4, 5, 6]) Then
  begin
    Warn(opt.EntityCaption + ' وارد شده نامعتبر است.');
    PnlEntityWeightPrice.SetFocus;
    exit;
  end; // if
  If (qryItems.FieldByName(EdtIOWeight.DataField).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [2, 4, 6, 7]) Then
  begin
    Warn(opt.WeightCaption + ' وارد شده نامعتبر است.');
    PnlEntityWeightPrice.SetFocus;
    exit;
  end; // if
  If (qryItems.FieldByName(EdtTotalIOPrice.DataField).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [3, 5, 6, 7]) Then
  begin
    Warn('مبلغ وارد شده نامعتبر است.');
    PnlEntityWeightPrice.SetFocus;
    exit;
  end; // if
  Result := True;
end;

procedure TReciptsF.qryReciptsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryItemsReciptItemID.AsInteger;
  if qryItems.State in dsEditModes then
    qryItems.Post;
  try
    qryItems.UpdateBatch;
    rid := qryReciptsReciptID.AsInteger;
    qryRecipts.Requery;
    qryRecipts.Locate('ReciptID', rid, []);
    qryItems.Requery;
    qryItems.Locate('ReciptItemID', rid2, []);
    DeleteFile(__AppData + UnsavedFileName);
    DeleteFile(__AppData + UnsavedFileName_M);

    if getresponseShow then
    begin
      // if get_response('تغييرات ذخيره شوند؟')<>mrYes then abort;
      BigMessage('ثبت شد.', 1);
    end;
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn(E.Message);
      DataToExcel(qryItems);
      // ReItemID(qryItems, qryRecipts, 'ReciptItems', 'ReciptItemID',        IntToStr(formType), qryinit.FieldByName('StepCorrelate').AsInteger);
    end;
  end; // try
  InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits, qry_Deficits4Print,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  if qryinit.FieldByName('WorkflowID').AsInteger > 0 then
    WorkflowDmF.RunSomeWorkflow(qryinit.FieldByName('WorkflowID').AsInteger,
      qryRecipts, ppReport1, qryinit.FieldByName('PerformFileName').AsString,
      qryRecipts.FieldByName('ReciptNumber').AsString);

  if opt.ControlCodeActive > 0 then
    ControlCodeUnic(qryRecipts.FieldByName('ReciptID').AsInteger, qryinit);

  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 1 then
    StuffCodeUnic(qryRecipts, qryItems, qryinit);
  opt.PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  StatusBar1.Panels[3].Text := 'كسورات=' + CurrToStrF(opt.PayablePrice,
    ffCurrency, 0);
  opt.PayablePrice := CalcSumFileds(qryItems, EdtTotalIOPrice.DataField) +
    opt.PayablePrice;
  StatusBar1.Panels[3].Text := StatusBar1.Panels[3].Text + ' قابل پرداخت=' +
    CurrToStrF(opt.PayablePrice, ffCurrency, 0);

  if (qryinit.FieldByName('AutoCorrelate').AsInteger = 1) and
    (qryinit.FieldByName('CorrelateReciptType').AsInteger > 0) then
    actCorrelateRecipt.Execute;

  if (qryinit.FieldByName('AutoCorrelateCo').AsInteger and
    Integer(CHkAutoCorrelateCo) <> 0) and
    (qryinit.FieldByName('ConversionCoSerial').AsInteger > 0) then
    actCorrelateConversionCo.Execute;

  if (qryinit.FieldByName('AutoStateChange').AsInteger = 0) and
    (qryRecipts.FieldByName('ReciptState').AsInteger = 0) then
    AutoStateChange(qryRecipts, qryinit);

  if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
    actPrint1.Execute;
  qryRecipts.EnableControls;

  if DataSetInsert then
    actSmsSend.Execute;
  DataSetInsert := False;

  // StuffCode_s := '0';
  DMF.adcBSell.Execute
    (Format('DELETE FROM StuffCodeTemp WHERE (ReciptType = %d) AND (UserID = %d)',
    [formType, User.id]));
end;

procedure TReciptsF.qryReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckMakeDoc(DataSet) then
    Abort;

  if not CheckDay4Edit(qryinit, qryRecipts) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryRecipts) then
    Abort;

  if not ChkReciptState4Delete(qryinit, qryRecipts) then
    Abort;

  If not OkDeleteItem(GetReciptItemIDs(CurrentEntity, CurrentWeight, qryItems,
    qryinit, FormInOut, MyEntityDisplayType, 'ReciptItemID', False), qryRecipts)
  then
    Abort;
  if not OkDeleteMaster(qryRecipts.FieldByName('ReciptID').AsString,
    ReciptID4ParentReciptID, qryRecipts, qryinit) then
    Abort;
  if not OkDelete(qryRecipts, False, 0) then
    Abort;
  if not Check4OkDelete_Deficits(Caption, qry_Deficits, qryRecipts) then
    Abort;
  BeforeServerID := qryRecipts.FieldByName('ServerID').AsString;
  BeforeYearID := qryRecipts.FieldByName('YearID').AsString;
end;

procedure TReciptsF.qryItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not OkDeleteItem(qryItems.FieldByName('ReciptItemID').AsString, qryRecipts)
  then
    Abort;
  // if not OkDelete(qryRecipts.FieldByName('ReciptID').AsString) then Abort;
  if get_response(' آيا براي حذف كالا  ' + qryItemsStuffCode.AsString +
    DMF.s_Msm + '  مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TReciptsF.qryReciptsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if ReciptID4ParentReciptID <> '' then
  begin
    with DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'UPDATE Recipts SET ParentReciptID=null,ParentCoReciptID=null ' +
        'WHERE (ParentReciptID= ' + ReciptID4ParentReciptID +
        '  OR   ParentCoReciptID= ' + ReciptID4ParentReciptID + ')';
      SQL.Add('AND   ServerID = ' + BeforeServerID);
      SQL.Add('AND   YearID   = ' + BeforeYearID);
      try
        ExecSQL;
        // BigMessage(IntToStr(ExecSQL) + ' فرم‌ مرتبط آگاه شد.',2);
        Active := False;
      except
        Warn('اشكال در آگاه سازي ' + Caption + ' مرتبط‌');
      end; // try
    end; // with
    ReciptID4ParentReciptID := '';
  end;
  BigMessage('فرم حذف شد.', 1);
end;

procedure TReciptsF.qryItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كالا حذف شد.', 1);
end;

procedure TReciptsF.qryReciptsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryItems.Active then
  BEGIN
    if get_response('تغييرات لغو شوند؟') <> mrYes then
      Abort;
    qryItems.Cancel;
    qryItems.Requery();
  END;
end;

procedure TReciptsF.qryItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  SetRow;
  StatusBar2.Visible := False;
  // Timer1.Enabled:=False;
  // Image1.Visible:=False;
  SaveArticlesToFile;
  If pnlPerson2.Visible then
    ServiceValue(qryRecipts, qryItems);
  if newPanel2.Visible then
    PnlItems.SetFocus;
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := LeftStr(opt.WeightCaption, 3) + '=' +
      FloatToStr(Calc_SumFileds('Weight'));
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := LeftStr(opt.EntityCaption, 5) + '=' +
      CurrToStr(Calc_SumFileds('Entity'));
  if PriceOn_StoreType then
    StatusBar1.Panels[0].Text := CurrToStrF(Calc_SumFileds('Price'), ffCurrency,
      0) + ' ريال '
  else
    StatusBar1.Panels[0].Text := '';
end;

procedure TReciptsF.qryReciptsBeforeEdit(DataSet: TDataSet);
begin
  inherited; // and not System4Edit
  if not CheckDay4Edit(qryinit, qryRecipts) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('EditLevelID'), qryRecipts) then
    Abort;
  if not AllStateControls(qryRecipts, qryItems, qryinit, 'Recipt') then
    Abort;
  if not OkEditMaster(qryRecipts.FieldByName('ReciptID').AsString) then
    Abort;

  if not OkEditMasterCo(qryRecipts, qryinit, Edit4Deficits) then
    Abort;

  // if qryinit.FieldByName('UserSecurityCheckActive').Value = 1 then
  if UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive').AsInteger,
    UserRegistrar) then
    if ((qryReciptsOperatorID.AsInteger = User.id) or (User.PowerUser)) then
    begin
      newPanel2.Visible := True;
    end // if
    else
    begin
      Warn('ويرايش اين فرم در سطح دسترسي کاربر ثبت کننده آن مي‌باشد.');
      Abort;
    end; // else

end;

function TReciptsF.OkEditMaster(ReciptID: String): Boolean;
var
  i: Integer;
begin
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption '
      + 'FROM Recipts INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType '
      + 'WHERE Recipts.ParentReciptID =' + ReciptID;
    SQL.Add('and ServerID = ' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add('and YearID = ' + qryRecipts.FieldByName('YearID').AsString);
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
                ' در ' + Fields[2].AsString + '  با شماره ' + Fields[0].AsString
                + ' و تاريخ ' + Fields[1].AsString +
                '  استفاده شده است و قابل ويرايش نيست.‏');
          end;
        1:
          begin
            With qryRecipts do
            begin
              for i := 0 to FieldCount - 1 do
                Fields[i].ReadOnly := True;
              FieldByName('ModifyDate').ReadOnly := False;
              FieldByName('ReciptValue').ReadOnly := False;
              FieldByName('AidDate').ReadOnly := False;
              FieldByName('DefaultDate').ReadOnly := False;
            end;
            With qryItems do
            begin
              for i := 0 to FieldCount - 1 do
                Fields[i].ReadOnly := True;
              FieldByName('UnitSellPrice').ReadOnly := False;
              FieldByName('Total' + FormInOut + 'Price').ReadOnly := False;
              FieldByName('InputWeight').ReadOnly := False;
              FieldByName('OutputWeight').ReadOnly := False;
              FieldByName('ControlCode').ReadOnly := False;
              FieldByName('AidDate').ReadOnly := False;
              FieldByName('ItemDate').ReadOnly := False;
              FieldByName('StandardRate').ReadOnly := False;
              FieldByName('TotalStandardRate').ReadOnly := False;
              FieldByName('ReciptID').ReadOnly := False;
              EdtIOWeight.ReadOnly := True;
              EdtControlCode.ReadOnly := True;
            end;
            Result := True;
          end;
        2, 3:
          Result := True;
      end; // case
    Active := False;
  end; // with
  qryItems.FieldByName('FirstUser').ReadOnly := False;
  qryItems.FieldByName('LastUser').ReadOnly := False;
  qryRecipts.FieldByName('FirstUser').ReadOnly := False;
  qryRecipts.FieldByName('LastUser').ReadOnly := False;
end;

procedure TReciptsF.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  EntityEdit := 0;
  WeightEdit := 0;
  if not(qryRecipts.State in dsEditModes) then
    Abort;
  if not qryItems.FieldByName(EdtIOEntity.DataField).IsNull then
    EntityEdit := qryItems.FieldByName(EdtIOEntity.DataField).AsFloat;
  if not qryItems.FieldByName(EdtIOWeight.DataField).IsNull then
    WeightEdit := qryItems.FieldByName(EdtIOWeight.DataField).AsFloat;
end;

function TReciptsF.ValidCodeReciptItems: Boolean;
begin
  Result := False;
  If (qryItemsStuffGrade.AsInteger > 255) and (Pnl_GradeToAlloy.Visible) Then
  begin
    Warn('درجه كالاي  وارد شده نامعتبر است.');
    EdtStuffGrade.SetFocus;
    exit;
  end; // if
  Result := True;
end;

procedure TReciptsF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, LblWarn);
  qryRecipts.DisableControls;
  qryItems.DisableControls;
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, DBGrid1, qryItems);
  EdtUnitSellPrice.Visible := PriceOn_StoreType;
  EdtTotalIOPrice.Visible := PriceOn_StoreType;
  GrpBoxAccount.Visible := PriceOn_StoreType and
    (qryinit.FieldByName('AccCodingShow').AsInteger > 0);
  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
      .FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
      .FieldByName('ServerID').AsInteger;
    Active := True;
    // Sheikh 2015/09/02 : خط زیر برای حل مشکل ردیف تکراری در گرید کامنت شده است
    // Last;
  end; // with

  qryCustActive(qryCust1, qryRecipts.FieldByName('PersonID1').AsInteger);
  qryCustActive(qryCust2, qryRecipts.FieldByName('PersonID2').AsInteger);
  qryCustActive(qryCust3, qryRecipts.FieldByName('PersonID3').AsInteger);
  qryGroupDeficitIDActive(qryGroupDeficitID, qryRecipts);

  with qryReciptOnFormsRange do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
      .FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
      .FieldByName('ServerID').AsInteger;
    Active := True;
  end; // with
  with qry_Deficits4Print do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
      .FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
      .FieldByName('ServerID').AsInteger;
    Active := True;
  end; // with
  with qry_Deficits do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
      .FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
      .FieldByName('ServerID').AsInteger;
    Active := True;
  end; // with
  if DataSet.State = dsInsert then
    CheckUnsaved;
  Timer1.Enabled := qryRecipts.FieldByName('ReciptState').AsInteger = 3;
  if Timer1.Enabled then
    WriteText(LblStateChang.Caption, 1, 60, False);
  LblStateChang.Visible := Timer1.Enabled;

  opt.PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  StatusBar1.Panels[3].Text := 'كسورات=' + CurrToStrF(opt.PayablePrice,
    ffCurrency, 0);
  opt.PayablePrice := CalcSumFileds(qryItems, EdtTotalIOPrice.DataField) +
    opt.PayablePrice;
  StatusBar1.Panels[3].Text := StatusBar1.Panels[3].Text + ' قابل پرداخت=' +
    CurrToStrF(opt.PayablePrice, ffCurrency, 0);

  PnlProduct.Visible := (qryinit.FieldByName('ProcedureActive').AsInteger > 0)
    and (qryRecipts.FieldByName('_StoreKind').AsInteger > 0);

  PnlProductCode_UseUnit.Visible := (PnlProduct.Visible) or
    (PnlPersonID1OnDetail.Visible);
  LblRecNo.Hint := Format('فرم %d از %d', [DataSet.RecNo, DataSet.RecordCount]);

  actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >= 1)
    and ReciptStateDeficitsVisible(qryRecipts) and
    (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1);

  qryRecipts.EnableControls;
  qryItems.EnableControls;

  DBTextPersonID1.Hint := qryRecipts_PersonAddress.AsString + #13#10 +
    qryRecipts_Mobile.AsString + #13#10 + qryRecipts_NationalID.AsString +
    #13#10 + qryRecipts_CustomersDiscountNote.AsString + #13#10 +
    qryRecipts_PersonFax.AsString;
  DBTextPersonID2.Hint := '';
end;

procedure TReciptsF.EdtRNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnSearchReciptNumber.Click;
end;

procedure TReciptsF.actSearchExecute(Sender: TObject);
var
  Results: array [0 .. 10] of String;
  txt, TxtFieldOutIn: String;
  b: Boolean;
begin
  inherited;
  TxtFieldOutIn := ifthen(FormOutput,
    'ReciptItems.OutputEntity,ReciptItems.OutputWeight,ReciptItems.TotalOutputPrice ',
    'ReciptItems.InputEntity,ReciptItems.InputWeight,ReciptItems.TotalInputPrice ');
  if Pnl_GradeToAlloy.Visible then
  begin
    txt := 'SELECT ReciptItems.ReciptItemID,ReciptItems.StuffCode,StuffCoding.c_StuffName,ReciptItems.StuffGrade,ReciptItems.StuffSize,'
      + 'ReciptItems.StuffDiameter,ReciptItems.StuffAlloy,' + TxtFieldOutIn +
      'FROM ReciptItems INNER JOIN StuffCoding ON ReciptItems.StuffCode=StuffCoding.c_StuffCode '
      + 'WHERE (ReciptItems.ReciptID = ' + qryReciptsReciptID.AsString + ')';
    b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', txt,
      ['', 'کد كالا', 'نام كالا', 'درجه', 'ابعاد', 'ضخامت', 'آلياژ',
      LblEntity.Caption, LblWeight.Caption, 'بها'], Results,
      [0, 50, 150, 50, 50, 50, 50, 50, 50, 100], alLeft);
  end // if
  else
  begin
    txt := 'SELECT ReciptItems.ReciptItemID,ReciptItems.StuffCode,StuffCoding.c_StuffName,'
      + TxtFieldOutIn +
      'FROM ReciptItems INNER JOIN StuffCoding ON ReciptItems.StuffCode=StuffCoding.c_StuffCode  '
      + 'WHERE (ReciptItems.ReciptID = ' + qryReciptsReciptID.AsString + ')';
    b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', txt,
      ['', 'کد كالا', 'نام كالا', LblEntity.Caption, LblWeight.Caption, 'بها'],
      Results, [0, 50, 150, 50, 50, 100], alLeft);
  end; // else
  if b then
    qryItems.Locate('ReciptItemID', Results[0], []);
end;

procedure TReciptsF.CmbSecondTypeEnter(Sender: TObject);
begin
  inherited;
  // (Sender as TDBComboBox).DroppedDown:=True;
end;

procedure TReciptsF.qryItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // StatusBar1.Panels[3].Text:=Format('كالا %d از %d',[DataSet.RecNo,DataSet.RecordCount]);
  // EdtIOEntity.Hint := qryItems.FieldByName('InvEntity').AsString;
  // EdtIOWeight.Hint := qryItems.FieldByName('InvWeight').AsString;
end;

procedure TReciptsF.AllGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('cmb' + Sender.FieldName));
  Text := cmb.Items[cmb.Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsF.AllSetText(Sender: TField; const Text: String);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('cmb' + Sender.FieldName));
  Sender.AsInteger := Integer(cmb.Items.Objects[cmb.ItemIndex]);
end;

procedure TReciptsF.ALLGetTextID(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TReciptsF.AllSetTextID(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TReciptsF.qryItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If not ADDItemChecked(qryRecipts) then
    Abort;
  If LimitRecord(qryItems, qryinit, True) then
    Abort;
  if not(qryRecipts.State in dsEditModes) then
    Abort;
  InsertRow.Row := DataSet.FieldByName('irow').AsInteger;
  InsertRow.BMark := DataSet.GetBookmark;

end;

procedure TReciptsF.qryItemsUnitSellPriceChange(Sender: TField);
begin
  inherited;
  ChangeUnitSellPrice;
  if qryItems.FieldByName('Auxiliary').AsInteger > 0 then
  begin
    qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency :=
      roundto(qryItems.FieldByName('UnitSellPrice').AsCurrency *
      qryItems.FieldByName('Auxiliary').AsCurrency, 0)
  end;
  RequestedChangeEntityWeight;
  StandardRateActiveUnitSellPriceChange(qryinit, qryItems, LimitFi,
    MyEntityDisplayType);
end;

procedure TReciptsF.qryReciptsPersonID2Change(Sender: TField);
begin
  inherited;
  ServiceValue(qryRecipts, qryItems);
  PersonIDOnDetailActiveChange(Sender, qryinit, qryItems);
end;

procedure TReciptsF.qryReciptsReciptStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

procedure TReciptsF.ChangeTotalInputPrice;
var
  Total, SellPrice: Currency;
  Weight, Entity: Real48;
  EntityDisplayType: Int8;
begin
  inherited;
  if qryItems.FieldByName('Auxiliary').AsInteger > 0 then
    exit;
  if not(qryRecipts.State in dsEditModes) or not(qryItems.State in dsEditModes)
  then
    exit;
  Total := qryItems.FieldByName('TotalInputPrice').AsCurrency +
    qryItems.FieldByName('TotalOutputPrice').AsCurrency;
  Weight := qryItems.FieldByName(EdtIOWeight.DataField).AsFloat;
  Weight := roundto(Weight, opt.RoundEntity);
  Entity := qryItems.FieldByName(EdtIOEntity.DataField).AsFloat;
  if Entity = 0 then
    Entity := 1;
  if Weight = 0 then
    Weight := 1;
  SellPrice := qryItems.FieldByName('UnitSellPrice').AsCurrency;

  EntityDisplayType := opt.EntityDisplayType;
  if CalculatedEntityOrWeight > 0 then
    EntityDisplayType := qryItemsDiagnosisCalcTotalPrice.AsInteger;

  if (UnitPriceReadOnly) then
  begin
    LimitFi := GetLimitFi(qryItems);
    case EntityDisplayType of
      0:
        SellPrice := Total / Entity;
      1:
        SellPrice := Total / Weight;
      2:
        if SellPrice >= LimitFi then
          SellPrice := Total / Weight
        else
          SellPrice := Total / Entity;
      3:
        if SellPrice >= LimitFi then
          SellPrice := Total / Entity
        else
          SellPrice := Total / Weight;
    end; // case
    qryItems.FieldByName('UnitSellPrice').AsCurrency := SellPrice;
  end; // if
  StandardRateActiveUnitSellPriceChange(qryinit, qryItems, LimitFi,
    MyEntityDisplayType);

end;

procedure TReciptsF.ChangeUnitSellPrice;
var
  Total, SellPrice: Currency;
  Weight, Entity: Real48;
  EntityDisplayType: Int8;
begin
  if qryItems.FieldByName('Auxiliary').AsInteger > 0 then
    exit;
  if not(qryRecipts.State in dsEditModes) or not(qryItems.State in dsEditModes)
  then
    exit;
  Weight := qryItems.FieldByName('InputWeight').AsFloat +
    qryItems.FieldByName('OutputWeight').AsFloat;
  Weight := roundto(Weight, opt.RoundEntity);
  Entity := qryItems.FieldByName(EdtIOEntity.DataField).AsFloat;
  SellPrice := qryItems.FieldByName('UnitSellPrice').AsCurrency;
  Total := 0;

  EntityDisplayType := opt.EntityDisplayType;
  if CalculatedEntityOrWeight > 0 then
    EntityDisplayType := qryItemsDiagnosisCalcTotalPrice.AsInteger;

  if not UnitPriceReadOnly then
  begin
    LimitFi := GetLimitFi(qryItems);
    case EntityDisplayType of
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
    qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency :=
      roundto(Total, 0);
  end; // if
end;

procedure TReciptsF.qryItemsInputEntityChange(Sender: TField);
begin
  inherited;

  if (not qryItems.FieldByName('InputWeight').IsNull) and (EntityEdit <> 0) then
    qryItems.FieldByName('InputWeight').AsFloat :=
      roundto((WeightEdit * qryItems.FieldByName('InputEntity').AsFloat) /
      EntityEdit, opt.RoundEntity);
  if (not qryItems.FieldByName('InputEntity').IsNull) and (opt.Carton) then
    qryItems.FieldByName('InputWeight').AsFloat :=
      roundto((qryItems.FieldByName('InputEntity').AsFloat) *
      (qryItems.FieldByName('_Carton').AsFloat), opt.RoundEntity);

  if UnitPriceReadOnly then
    ChangeTotalInputPrice;
  if not UnitPriceReadOnly then
    ChangeUnitSellPrice;
  RequestedChangeEntityWeight;
end;

procedure TReciptsF.qryItemsOutputEntityChange(Sender: TField);
begin
  inherited;

  if (not qryItems.FieldByName('OutputWeight').IsNull) and (EntityEdit <> 0)
  then
    qryItems.FieldByName('OutputWeight').AsFloat :=
      roundto((WeightEdit * qryItems.FieldByName('OutputEntity').AsFloat) /
      EntityEdit, opt.RoundEntity);
  if (not qryItems.FieldByName('OutputEntity').IsNull) and (opt.Carton) then
    qryItems.FieldByName('OutputWeight').AsFloat :=
      roundto((qryItems.FieldByName('OutputEntity').AsFloat) *
      (qryItems.FieldByName('_Carton').AsFloat), opt.RoundEntity);
  if UnitPriceReadOnly then
    ChangeTotalInputPrice;
  if not UnitPriceReadOnly then
    ChangeUnitSellPrice;
  RequestedChangeEntityWeight;
end;

procedure TReciptsF.qryItemsInputWeightChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly then
    ChangeTotalInputPrice;
  if not UnitPriceReadOnly then
    ChangeUnitSellPrice;
end;

procedure TReciptsF.qryItemsOutputWeightChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly then
    ChangeTotalInputPrice;
  if not UnitPriceReadOnly then
    ChangeUnitSellPrice;
end;

procedure TReciptsF.actRecallExecute(Sender: TObject);
begin
  inherited;
  getresponseShow := False;
  CallRecall(qryinit, formType, FormOutput, qryRecipts, qryItems, qryRecipts,
    myStore.code, FieldNameEntity, FieldNameWeight, MenSellPrice,
    [mnuSp1, mnuSp2, mnuSp3, mnuSp4, mnuSp5, mnuSp6, mnuSp7]);
  getresponseShow := True;
end;

procedure TReciptsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryItems.FieldByName(opt.SearchCode));
end;

procedure TReciptsF.actRecallSpecialExecute(Sender: TObject);
var
  rid: Integer;
begin
  inherited;
  myStore.code := qryRecipts.FieldByName('StoreID').AsInteger;
  rid := qryItems.RecordCount; //
  If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
    'هيچ فرمي براي فراخواني مشخص نشده است') then
    exit;
  if RecallSpecialReciptsF.SelectRecall(qryItems, qryinit, qryRecipts, myStore)
  then
  begin
    qryItems.MoveBy(rid);
  end;
end;

// function TReciptsF.LimitRecord: Boolean;
// begin
// Result:=False;
// If qryItems.RecNo>qryinit.FieldByName('MaxRowsPerForm').AsInteger then
// begin
// Warn('حداكثر ركورد قابل ثبت در فرم " '+qryinit.FieldByName('MaxRowsPerForm').AsString+' " ركورد مي‌باشد.');
// Result:=True;
// end;//if
// end;

procedure TReciptsF.RecallStateChange;
begin
  BtnRecall.Enabled := ((qryinit.FieldByName('RecallType').AsInteger = 1) and
    (qryRecipts.State = dsInsert));

  if BtnRecall.Enabled then
  begin
    BtnRecall.BringToFront;
    zbal.Title := 'فراخواني ';
    zbal.Prompt.Text := 'براي فراخواني از اين قسمت استفاده كنيد.';
    zbal.show(BtnRecall);
  end; // if
  BtnRecallSpecial.Enabled := (qryinit.FieldByName('RecallType').AsInteger
    in [2, 5, 6]) and ((qryRecipts.State = dsEdit) or
    (qryRecipts.State = dsInsert));
  BtnRecallSpecial2.Enabled := BtnRecallSpecial.Enabled;

  pnlStuffCode.Enabled := not(qryinit.FieldByName('RecallType').AsInteger
    in [2, 5, 6]);

  case qryinit.FieldByName('RecallEditKind').AsInteger of
    0:
      begin
        pnlStuffCode.Enabled := not BtnRecall.Enabled and
          not BtnRecallSpecial.Enabled;
        btnExcel.Enabled := pnlStuffCode.Enabled;
        Pnl_GradeToAlloy.Enabled := pnlStuffCode.Enabled;
      end;
    2, 3:
      ReciptsRecallEditKind(qryItems, qryRecipts, qryinit,
        RE_RecallStateChange);
    4:
      pnlStuffCode.Enabled := True;
  end;

  if BtnRecallSpecial.Enabled then
  begin
    BtnRecallSpecial.BringToFront;
    zbal.Title := 'فراخواني ويژه';
    zbal.Prompt.Text := 'براي فراخواني ويژه از اين قسمت استفاده كنيد.';
    zbal.show(BtnRecallSpecial);
  end; // if

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
  // 16_فراخواني ويژه عمومي _ تغيير نوع اطلاعات فرمهاي قبل درصورت ويرايش یا حذف فرم
  // 17 - فراخوانی یک به یک با انتقال فی
  // 18_فراخواني ويژه عمومي-تا سقف موجودی
  btnExcel.Visible := qryinit.FieldByName('RecallType').AsInteger = 0;

end;

procedure TReciptsF.Enter(Form_Type: Integer; LimitShow: Boolean = True;
  StoreID: Integer = 0);
begin
  mainF.AddListRecipts('ReciptsF' + IntToStr(Form_Type));
  DM.myStore.code := 0;
  if not LimitShow then
    DM.myStore.code := StoreID;
  CreateMDIForm3(LimitShow, TReciptsF, ReciptsF, mdiMainF, Form_Type);
  // if not ReciptsF.qryRecipts.Locate('ReciptId',ReciptsF.FormReciptId,[])
  // then
  // begin
  // Warn('هيچ اطلاعاتي براي نمايش وجود ندارد.‏');
  // ReciptsF.close;
  // end;//if
  if (ReciptsF.myStore.code = 0) and ReciptsF.RestartStore then
    ReciptsF.Close;
end;

procedure TReciptsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('PrintLevelID'), qryRecipts) then
    Abort;
  if not CheckControlPrintingByDate(qryinit, qryRecipts) then
    Abort;
  if (qryinit.FieldByName('AutoStateChange').AsInteger = 1) and
    (qryRecipts.FieldByName('ReciptState').Value = 0) then
    AutoStateChange(qryRecipts, qryinit);
  // PopMuPrint.Items[1].Enabled:=qryinit.FieldByName('ReportFileName').AsString<>'';
  if qryinit.FieldByName('ReportFileName').AsString <> '' then
    PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
  else
  begin
    SeletedPrint(ppDBPipeline2, DBGrid1);
    initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine,
      qryinit.FieldByName('FormSignature').AsString);
    ppReport1.EmailSettings.Enabled := True;
    ppReport1.PrinterSetup.Copies := PrintCount;
    try
      qryRecipts.DisableControls;
      qryItems.DisableControls;
      if qryinit.FieldByName('PerformFileName').AsString <> '' then
      begin
        PopMuPrint.Items[0].Click;
        exit;
      end
      else
      begin
        if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
          ppReport1.DeviceType := 'Printer';
        ppReport1.Print;
      end;
    finally
      qryRecipts.EnableControls;
      qryItems.EnableControls;
    end; // try
  end; // else
end;

procedure TReciptsF.actPreItemExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypesIsParent(qryItems, mainF);
end;

procedure TReciptsF.actPrint1Execute(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('PrintLevelID'), qryRecipts) then
    Abort;
  if not CheckControlPrintingByDate(qryinit, qryRecipts) then
    Abort;
  footer_ := Trim(qryinit.FieldByName('FormSignature').AsString);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath
      (qryinit.FieldByName('PerformFileName').AsString);
    try
      if FileExists(Template.FileName) then
      begin
        Template.LoadFromFile;
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
        Warn('فايل چاپي ' + qryinit.FieldByName('PerformFileName').AsString +
          ' نظر يافت نشد.!‏', mtInformation);
      SeletedPrint(ppDBPipeline2, DBGrid1);
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
        DeviceType := 'Printer';
      EmailSettings.Enabled := True;
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with
end;

procedure TReciptsF.actPrint2Execute(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('PrintLevelID'), qryRecipts) then
    Abort;
  if not CheckControlPrintingByDate(qryinit, qryRecipts) then
    Abort;
  footer_ := Trim(qryinit.FieldByName('FormSignature').AsString);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath
      (qryinit.FieldByName('ReportFileName').AsString);
    try
      if FileExists(Template.FileName) then
      begin
        Template.LoadFromFile;
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
        Warn('فايل چاپي ' + qryinit.FieldByName('ReportFileName').AsString +
          ' نظر يافت نشد.!‏', mtInformation);
      SeletedPrint(ppDBPipeline2, DBGrid1);
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
        DeviceType := 'Printer';
      EmailSettings.Enabled := True;
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with

end;

procedure TReciptsF.ppLblAddress(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMF.ReadBankConfig('Address', '')
end;

procedure TReciptsF.ppLblTel1(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMF.ReadBankConfig('Tel1', '')
end;

procedure TReciptsF.ppLblPostalCode(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMF.ReadBankConfig('PostalCode', '')
end;

procedure TReciptsF.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMF.ReadBankConfig('EconomicNumber', '')
end;

procedure TReciptsF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TReciptsF.ppSysVarPageNumGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TReciptsF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('ReciptCaption').AsString
end;

// procedure TReciptsF.GetSellPriceonCustValuationType;
// begin
// mnuSp1.Caption:=CurrToStrF(sp[0],ffCurrency,0);
// mnuSp2.Caption:=CurrToStrF(sp[1],ffCurrency,0);
// mnuSp3.Caption:=CurrToStrF(sp[2],ffCurrency,0);
// mnuSp4.Caption:=CurrToStrF(sp[3],ffCurrency,0);
// mnuSp1.Hint:=CurrToStr(sp[0]);
// mnuSp2.Hint:=CurrToStr(sp[1]);
// mnuSp3.Hint:=CurrToStr(sp[2]);
// mnuSp4.Hint:=CurrToStr(sp[3]);
// MenSellPrice.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
// end;

procedure TReciptsF.qryItemsStuffCodeChange(Sender: TField);
var
  AutoPrice, AgrAmount: Real;
  myCustValuationType: Integer;
  Entity, CalcEntity, Percent: Real;
  TxtYearID: string;
  StuffCode: LargeInt;
  Rate: Currency;
  AutoPriceTag: Byte;
  aTFieldNotifyEvent: TFieldNotifyEvent;
  Row: Integer;
  DisplayStatusBar: Integer;
begin
  if qryItems.FieldByName('StuffCode').AsLargeInt = 0 then
    exit;

  try
    if qryItemsStuffCode.AsString.Trim <> EmptyStr then
      DMF.adcBSell.Execute
        (Format('INSERT INTO StuffCodeTemp(StuffCode, ReciptType, UserID)' +
        'VALUES(%s,%d,%d)', [qryItemsStuffCode.AsString, formType,
        User.id]), Row);
    if Row > 0 then
    begin
      ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, LblWarn);
      RefreshLookupList(qryItems);
    end;
  except
    on E: Exception do
    begin
      // add2log('I>>>' + E.Message);
    end;
  end;

  // if Pos(',' + qryItemsStuffCode.AsString + ',', StuffCodes + ',') = 0 then
  // begin
  // StuffCodes := StuffCodes + ',' + qryItemsStuffCode.AsString;
  // end;

  // ___________________________   انتقال قيمت في       ____________________________
  StuffCode := qryItems.FieldByName('StuffCode').AsLargeInt;
  if qryinit.FieldByName('VATActive').AsInteger = 1 then
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT VatExempt,VatExemptCo ';
      SQL.Add('FROM StuffCoding WHERE c_StuffCode=' + IntToStr(StuffCode));
      Active := True;
      if FieldByName('VatExempt').AsInteger = 0 then
        qryItems.FieldByName('TaxCo').AsFloat :=
          qryinit.FieldByName('VATCo').AsFloat
      else
        qryItems.FieldByName('TaxCo').AsFloat :=
          FieldByName('VatExemptCo').AsFloat;

    end;
  AutoPrice := 0;
  Rate := 0;
  AgrAmount := 0;
  myCustValuationType := qryRecipts.FieldByName('_CustValuationType').AsInteger;
  AutoPriceTag := qryinit.FieldByName('AutoPrice').AsInteger;
  // ___________________________   انتقال قيمت في       ____________________________
  With DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT c_StuffCode, SellPrice1, SellPrice2, SellPrice3, SellPrice4, BuyPrice, StandardRate,State';
    SQL.Add('FROM StuffCoding WHERE c_StuffCode=' + IntToStr(StuffCode));

    if AutoPriceTag in [6, 7, 13] then
    begin
      SQL.Text := 'SELECT Rate,AgrAmount FROM Agreements';
      SQL.Add('WHERE (AgrState = 0)');
      SQL.Add('AND (YearID = :YearID )');
      SQL.Add('AND (StuffCode = :StuffCode )');
      SQL.Add('AND (PersonID1 = :PersonID1 )');
      SQL.Add('AND (AgreementsDate <= :ReciptDate )');
      SQL.Add('AND (SellsMethod = :SellsMethod )');
      SQL.Add('ORDER BY  AgreementsDate DESC, AgreementsID DESC');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('StuffCode').Value := StuffCode;

      Parameters.ParamByName('PersonID1').Value :=
        ifthen((qryinit.FieldByName('AutoPrice').AsInteger in [6, 7]),
        qryRecipts.FieldByName('PersonID1').AsInteger,
        qryRecipts.FieldByName('PersonID2').AsInteger);

      Parameters.ParamByName('SellsMethod').Value :=
        qryRecipts.FieldByName('SellsMethod').AsInteger;

      Parameters.ParamByName('ReciptDate').Value :=
        qryRecipts.FieldByName('ReciptDate').AsString;
      Active := True;
      Rate := FieldByName('Rate').AsCurrency;
      AgrAmount := FieldByName('AgrAmount').AsFloat;
    end;
    if (AutoPriceTag = 5) or ((AutoPriceTag = 7) and (Rate = 0)) then
    begin
      Active := False;
      SQL.Text :=
        'SELECT TOP 1 StuffCode, ManifestoItems.SellPrice1,ManifestoItems.SellPrice2, ManifestoItems.SellPrice3,ManifestoItems.SellPrice4,';
      SQL.Add('BuyPrice, StandardRate, StuffCoding.State');
      SQL.Add('FROM Manifesto INNER JOIN');
      SQL.Add('ManifestoItems ON Manifesto.ManifestoID = ManifestoItems.ManifestoID INNER JOIN');
      SQL.Add('StuffCoding ON ManifestoItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
      SQL.Add('Customers ON Manifesto.CustomerGrpIDFrom <= Customers.CustomerGrpID AND Manifesto.CustomerGrpIDTo >=');
      SQL.Add('Customers.CustomerGrpID AND');
      SQL.Add('Manifesto.CustIDFrom <= Customers.CustID AND Manifesto.CustIDTo >= Customers.CustID');
      SQL.Add('WHERE(StuffCode = ' + IntToStr(StuffCode));
      SQL.Add(')AND (SellOrBuy = 0) AND (ManifestoRunDate <= ''' +
        qryRecipts.FieldByName('ReciptDate').AsString + ''')');
      SQL.Add(' AND ISNULL(Manifesto.Active, 1) = 1 AND ISNULL(ManifestoItems.Active, 1) = 1');
      SQL.Add(' AND (Manifesto.SellsMethod = ' + qryRecipts.FieldByName
        ('SellsMethod').AsInteger.ToString + ')');

      if ((qryinit.FieldByName('RecuestActive').AsLargeInt and
        Integer(CHKManifestoSellsEmporiumOffFilter)) = 0) then
        SQL.Add(' AND (Manifesto.SellsEmporium = ' + qryRecipts.FieldByName
          ('SellsEmporium').AsInteger.ToString + ')');

      SQL.Add(' AND (Customers.CustID = ' + qryRecipts.FieldByName('PersonID1')
        .AsInteger.ToString + ')');
      SQL.Add('ORDER BY Manifesto.ManifestoRunDate DESC,Manifesto.ManifestoNo DESC');

    end;

    Active := True;
    case AutoPriceTag of
      2, 5, 7:
        if Rate = 0 then
        begin
          case myCustValuationType of
            0, 1, 2, 3:
              AutoPrice :=
                FieldByName('SellPrice' + IntToStr(myCustValuationType + 1))
                .AsCurrency;
            4:
              AutoPrice := GetSellPriceonCustValuationType
                ([Fields[1].AsCurrency, Fields[2].AsInteger,
                Fields[3].AsInteger, Fields[4].AsInteger], MenSellPrice,
                [mnuSp1, mnuSp2, mnuSp3, mnuSp4, mnuSp5, mnuSp6, mnuSp7],
                qryItems);
            5:
              AutoPrice := Rate;
          end;
        end
        else
          AutoPrice := Rate;

      // begin
      // if myCustValuationType=4 then
      // GetSellPriceonCustValuationType([Fields[1].AsCurrency,Fields[2].AsInteger,Fields[3].AsInteger,Fields[4].AsInteger])
      // else AutoPrice:=Fieldbyname('SellPrice'+IntToStr(myCustValuationType+1)).AsCurrency;
      // if myCustValuationType=5 then AutoPrice:=Rate;
      // end;

      3:
        AutoPrice := FieldByName('BuyPrice').AsCurrency;
      4:
        AutoPrice := FieldByName('StandardRate').AsCurrency;
      6, 13:
        AutoPrice := Rate;
    else
      AutoPrice := 0;
    end; // end case
    if (opt.StuffEnableKind in [2]) and (FieldByName('State').AsInteger = 1)
    then
    begin
      Warn('كالاي انتخاب شده غير فعال است!!‏');
      aTFieldNotifyEvent := qryItems.FieldByName('StuffCode').OnChange;
      qryItems.FieldByName('StuffCode').AsFloat := 0;
      qryItems.FieldByName('StuffCode').OnChange := aTFieldNotifyEvent;
    end;
    Active := False;
  end; // end case
  // if (qryItems.FieldByName('UnitSellPrice').IsNull) or (qryItems.FieldByName('UnitSellPrice').AsCurrency=0) then
  if not(qryItems.State in dsEditModes) then
    qryItems.edit;
  if AutoPriceTag in [6, 7, 13] then
    qryItems.FieldByName(FieldNameEntity).AsFloat := AgrAmount;
  qryItems.FieldByName('UnitSellPrice').AsFloat := AutoPrice;

  // ______________________________________________________________________________

  // if not FormOutput then  Exit;
  // ___________________________   موجودي       ___________________________________
  StatusBar2.Color := clBtnFace;
  TxtYearID := Format(' AND (YearID BETWEEN %d AND %d )',
    [opt.DefaultYear, APPBank.Year]);
  With DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT round(SUM(InputEntity - OutputEntity),3) AS Entity, round(SUM(InputWeight - OutputWeight),3)';
    SQL.Add('AS Weight, round(SUM(TotalInputPrice - TotalOutputPrice),3) AS Price');
    SQL.Add('FROM ReciptItems_Stock ');
    SQL.Add('WHERE (ReciptDate <= :ReciptDate)   ');
    SQL.Add('AND (StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )   ');
    SQL.Add('AND(StuffCode = :StuffCode)AND(ReciptItemID <> :ReciptItemID )');
    SQL.Add('AND(ReciptState < 3)' + TxtYearID);

    Parameters.ParamByName('ReciptDate').Value :=
      qryRecipts.FieldByName('ReciptDate').AsString;

    Parameters.ParamByName('StoreIDFrom').Value :=
      qryRecipts.FieldByName('StoreID').AsInteger;
    Parameters.ParamByName('StoreIDTo').Value :=
      qryRecipts.FieldByName('StoreID').AsInteger;

    Parameters.ParamByName('StuffCode').Value :=
      qryItems.FieldByName('StuffCode').AsLargeInt;

    Parameters.ParamByName('ReciptItemID').Value :=
      qryItems.FieldByName('ReciptItemID').AsInteger;

    Active := True;

    DisplayStatusBar := qryinit.FieldByName('DisplayStatusBar').AsInteger;
    StatusBar2.Visible := DisplayStatusBar > 0;

    if (FieldByName('Entity').AsInteger <= 0) or
      (FieldByName('Weight').AsInteger <= 0) or
      (FieldByName('Price').AsInteger <= 0) then
      StatusBar2.Color := clSilver;
    StatusBar2.Panels[3].Text := 'موجودي زمان ثبت';
    if (opt.EntityDisplay) and (DisplayStatusBar in [1, 3]) then
      StatusBar2.Panels[2].Text := LblEntity.Caption + '=' +
        ifthen(FieldByName('Entity').AsString = '', '0',
        FieldByName('Entity').AsString);
    if (opt.WeightDisplay) and (DisplayStatusBar in [1, 3]) then
      StatusBar2.Panels[1].Text := LblWeight.Caption + '=' +
        ifthen(FieldByName('Weight').AsString = '', '0',
        FieldByName('Weight').AsString);
    if (PriceOn_StoreType) and (DisplayStatusBar in [2, 3]) then
      StatusBar2.Panels[0].Text := 'مبلغ=' +
        CurrToStrF(FieldByName('Price').AsCurrency, ffCurrency, 0)
    else
      StatusBar2.Panels[0].Text := '';
    // StatusBar2.Visible := True;
    case qryinit.FieldByName('InsertEntity').AsInteger of
      1:
        begin
          qryItems.FieldByName('InvEntity').AsFloat :=
            FieldByName('Entity').AsFloat;
          qryItems.FieldByName('InvWeight').AsFloat :=
            FieldByName('Weight').AsFloat;
        end;
      2:
        begin
          Active := False;
          Parameters.ParamByName('StoreIDFrom').Value := 0;
          Parameters.ParamByName('StoreIDTo').Value := 9999;
          Active := True;
          qryItems.FieldByName('InvEntity').AsFloat :=
            FieldByName('Entity').AsFloat;
          qryItems.FieldByName('InvWeight').AsFloat :=
            FieldByName('Weight').AsFloat;
        end;
    end; // case
    Active := False;
    // _______________________________________كتاب_______________________________________________

    if (opt.StuffCodingKind >= 1) and
      (qryinit.FieldByName('DiscountEntryKind').AsInteger = 2) then
      with DMF.qryTmpTmp do
      begin
        Close;
        SQL.Text :=
          'SELECT  top 1 ReciptItems.StuffCode, ISNULL(ReciptItems.WaterCo, 0) AS WaterCo';
        SQL.Add('FROM ReciptItems INNER JOIN');
        SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID');
        SQL.Add('WHERE (Recipts.StoreID = %d ) AND (ReciptItems.StuffCode = %d ) AND (Recipts.ReciptType = 5)');
        SQL.Add('ORDER BY Recipts.ReciptDate DESC, Recipts.ReciptNumber DESC, ReciptItems.ReciptID, ReciptItems.ReciptItemID');
        SQL.Text := Format(SQL.Text,
          [qryRecipts.FieldByName('StoreId').AsInteger, Sender.AsInteger]);
        Open;
        qryItems.FieldByName('WaterCo').AsInteger := FieldByName('WaterCo')
          .AsInteger - 6 - ifthen(qryRecipts.FieldByName('AidDate').AsString >
          '80/00/00',
          MonthsBetween(Shamsi2Miladi(qryRecipts.FieldByName('AidDate')
          .AsString) + 1, Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate')
          .AsString)), 0);
      end;

  end; // With

  if qryinit.FieldByName('TozinActive').AsInteger = 5 then
  begin
    qryItems.FieldByName(EdtIOEntity.DataField).ReadOnly := False;
    qryItems.FieldByName('PestEntity').ReadOnly := False;
    Entity := // RoundTo(
      ReadFromTxtOrComPort; // ,0);
    Percent := qryItems.FieldByName('_StuffpurePercent').AsFloat;
    if Percent = 0 then
      Percent := 100;
    CalcEntity := Entity * Percent / 100;
    CalcEntity := roundto(CalcEntity, -1);
    qryItems.FieldByName(EdtIOEntity.DataField).AsFloat := CalcEntity;
    qryItems.FieldByName('PestEntity').AsFloat := Entity - CalcEntity;
    qryItems.FieldByName(EdtIOEntity.DataField).ReadOnly := True;
    qryItems.FieldByName('PestEntity').ReadOnly := True;
  end;

end;

procedure TReciptsF.actNoteMasterExecute(Sender: TObject);
begin
  inherited;
  NoteF.Enter(qryRecipts,
    (ValueControl and Integer(MainFormIsEditableNote) = 0));
end;

procedure TReciptsF.qryItemsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  InsertRow.CanInsert := False;
  StatusBar2.Visible := False;
end;

procedure TReciptsF.actSearchReciptNumberExecute(Sender: TObject);
begin
  inherited;
  SearchReciptNumber(qryinit, qryRecipts, myStore)
end;

procedure TReciptsF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  opt.PayablePriceActive := True;
  opt.CustomerID1 := qryRecipts.FieldByName('PersonID1').AsInteger;
  opt.ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  opt.AidInfoNo := qryRecipts.FieldByName('AidNumber').AsString;
  opt.AidInfoDate := qryRecipts.FieldByName('AidDate').AsString;
  PopOtherMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  accSpeedButtonCTopicCode(qryItems)
end;

procedure TReciptsF.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton2.Click;
end;

procedure TReciptsF.qryItemsCalcFields(DataSet: TDataSet);
begin
  qryItems_radif.AsInteger := abs(DataSet.RecNo);
  StandardRateActiveRecipts(qryinit, qryItems);

  if qryinit.FieldByName('TozinActive').AsInteger = 5 then
  begin
    qryItems.FieldByName('__PestEntity').AsFloat :=
      qryItems.FieldByName(EdtIOEntity.DataField).AsFloat +
      qryItems.FieldByName('PestEntity').AsFloat
  end;

end;

procedure TReciptsF.qryItemsDeficitValueChange(Sender: TField);
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

procedure TReciptsF.qryItemsDiagnosisCalcTotalPriceChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly then
    ChangeTotalInputPrice;
  if not UnitPriceReadOnly then
    ChangeUnitSellPrice;
end;

procedure TReciptsF.ppLabelOutputWeightGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStr(Calc_SumFileds('Weight'))
end;

procedure TReciptsF.ppLabelOutputEntityGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStr(Calc_SumFileds('Entity'))
end;

procedure TReciptsF.ppLabelTotalOutputPriceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(Calc_SumFileds('Price'), ffCurrency, 0)
end;

procedure TReciptsF.ppLabelnum2alphabetGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'جمع كل به حروف : ' + num2alphabet
    (StrToInt64(CurrToStr(roundto(Calc_SumFileds('Price'), 0)))) + ' ريال ';
  // num2alphabet(StrToInt64(RemoveComma(CurrToStrF(CalcSumFileds('Price'),ffCurrency,0))))+' ريال ';
end;

procedure TReciptsF.ppDBTextStuffSizeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + '';
end;

procedure TReciptsF.EdtStuffAlloyEnter(Sender: TObject);
begin
  inherited;
  SetKeyboardLatin;
end;

procedure TReciptsF.EdtStuffAlloyExit(Sender: TObject);
begin
  inherited;
  SetKeyboardFarsi;
end;

procedure TReciptsF.actInsertCopyExecute(Sender: TObject);
var
  copyRec: array [0 .. 7] of string;
  // i:Integer;
begin
  inherited;
  With qryItems do
  begin
    Post;
    copyRec[0] := FieldByName('StuffCode').AsString;
    copyRec[1] := FieldByName('ControlCode').AsString;
    copyRec[2] := FieldByName('StuffAlloy').AsString;
    copyRec[3] := FieldByName('StuffGrade').AsString;
    copyRec[4] := FieldByName('StuffSize').AsString;
    copyRec[5] := FieldByName('StuffDiameter').AsString;
    copyRec[6] := FieldByName(EdtIOEntity.DataField).AsString;
    copyRec[7] := IntToStr(FieldByName('PersonID1').AsInteger);
    Append;
    FieldByName('StuffCode').AsString := copyRec[0];
    FieldByName('ControlCode').AsLargeInt := StrToInt64Def(copyRec[1], 0) + 1;
    FieldByName('StuffAlloy').AsString := copyRec[2];
    FieldByName('StuffGrade').AsString := copyRec[3];
    FieldByName('StuffSize').AsString := copyRec[4];
    FieldByName('StuffDiameter').AsFloat := StrToFloatDef(copyRec[5], 0);
    FieldByName(EdtIOEntity.DataField).AsFloat := StrToFloatDef(copyRec[6], 0);
    FieldByName('PersonID1').AsString := copyRec[7];
  end; // With
  EdtIOWeight.SetFocus;
end;

procedure TReciptsF.actInsertNoteExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryItemsItemNote);
end;

procedure TReciptsF.actInsertRowExecute(Sender: TObject);
begin
  inherited;
  if not okPanel.Visible then
    exit;
  InsertRow.CanInsert := True;
  qryItems.Insert;
end;

procedure TReciptsF.SetRow;
begin
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

procedure TReciptsF.actSendExecute(Sender: TObject);
var
  txt, Cap_tion: String;
  b, RestartStore: Boolean;
  Results: array [0 .. 10] of String;
  ReciptType: Integer;
begin
  inherited;
  if get_response(' آيا براي انتقال كالا  ' + qryItemsStuffCode.AsString +
    'به فرم دیگر مطمئن هستيد؟') <> mrYes then
    Abort;

  if myStore.code = 0 then
    myStore.code := qryRecipts.FieldByName('StoreID').AsInteger;
  // b := False;
  RestartStore := qryinit.FieldByName('RestartFormNumberOnStore').AsInteger
    in [0, 1, 4];
  ReciptType := qryinit.FieldByName('ReciptType').AsInteger;
  Cap_tion := qryinit.FieldByName('ReciptCaption').AsString;
  txt := 'SELECT ReciptID,ServerID,YearID,ReciptNumber,ReciptDate,StoreID,PersonID1 FROM Recipts '
    + ' WHERE (ReciptType = ' + IntToStr(ReciptType) + ') ' +
    ifthen(RestartStore, 'AND (StoreID =' + IntToStr(myStore.code) + ')', '');
  Cap_tion := qryinit.FieldByName('ReciptCaption').AsString;
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, Cap_tion + 'ها', txt,
    ['', '', '', 'شماره ' + Cap_tion, 'تاريخ', 'انبار', 'کدمشتری'], Results,
    [0, 0, 0, 50, 150, 50, 50], alLeft);

  if b then
    with DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'UPDATE ReciptItems';
      SQL.Add('SET ReciptID = :NewReciptID');
      SQL.Add('WHERE YearID = :YearID And ServerID = :ServerID ');
      SQL.Add('And ReciptID = :ReciptID');
      SQL.Add(' And ReciptItemID = :ReciptItemID ');
      Parameters.ParamByName('ReciptItemID').Value :=
        qryItemsReciptItemID.AsInteger;
      Parameters.ParamByName('YearID').Value := qryItemsYearID.AsInteger;
      Parameters.ParamByName('ServerID').Value := qryItemsServerID.AsInteger;
      Parameters.ParamByName('ReciptID').Value := qryItemsReciptID.AsInteger;
      Parameters.ParamByName('NewReciptID').Value := Results[0];
      ExecSQL;

      SQL.Text := ';WITH #tbParent as';
      SQL.Add('(');
      SQL.Add('select r.ControlCode, s.ReciptNumber,s.ReciptDate,s.ReciptType, r.ReciptID,');
      SQL.Add('r.ReciptItemID,r.YearID,r.PrvYearID,r.preReciptItemID ,r.PersonID1');
      SQL.Add('from ReciptItems r join recipts s on r.ReciptID=s.ReciptID and r.YearID=s.YearID and r.ServerID=s.ServerID');
      SQL.Add('where r.YearID = :YearID1 and (r.preReciptItemID = :ReciptItemID1 or r.ReciptItemID = :ReciptItemID2)');
      SQL.Add('union all');
      SQL.Add('select t.ControlCode, v.ReciptNumber,v.ReciptDate,v.ReciptType, t.ReciptID,');
      SQL.Add('t.ReciptItemID,t.YearID,t.PrvYearID,t.preReciptItemID');
      SQL.Add(',t.PersonID1');
      SQL.Add('from ReciptItems t');
      SQL.Add('join #tbParent on t.preReciptItemID=#tbParent.ReciptItemID and t.PrvYearID=#tbParent.YearID');
      SQL.Add('join recipts v on t.ReciptID=v.ReciptID and t.YearID=v.YearID and t.ServerID=v.ServerID');
      SQL.Add('where t.YearID = :YearID2 ');
      SQL.Add('');
      SQL.Add(')');
      SQL.Add('');
      SQL.Add('UPDATE ReciptItems');
      SQL.Add('SET PersonID1 = :PersonID1 ');
      SQL.Add('WHERE YearID = :YearID3 And ServerID = :ServerID');
      SQL.Add('And ReciptItemID in (select distinct p.ReciptItemID');
      SQL.Add('from #tbParent p)');

      Parameters.ParamByName('ReciptItemID1').Value :=
        qryItemsReciptItemID.AsInteger;
      Parameters.ParamByName('ReciptItemID2').Value :=
        qryItemsReciptItemID.AsInteger;
      Parameters.ParamByName('YearID1').Value := qryItemsYearID.AsInteger;
      Parameters.ParamByName('YearID2').Value := qryItemsYearID.AsInteger;
      Parameters.ParamByName('YearID3').Value := qryItemsYearID.AsInteger;
      Parameters.ParamByName('ServerID').Value := qryItemsServerID.AsInteger;
      Parameters.ParamByName('PersonID1').Value := Results[6];

      if CtrlDown then
        ShowQryParam(DMF.qryTmpTmp);

      Warn2(ExecSQL.ToString + 'مورد انجام شد');

    end;

end;

procedure TReciptsF.EdtStuffSizeEnter(Sender: TObject);
begin
  inherited;
  SetKeyboardLatin;
end;

procedure TReciptsF.EdtStuffSizeExit(Sender: TObject);
begin
  inherited;
  SetKeyboardFarsi;
end;

procedure TReciptsF.qryItemsInputWeightGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if not qryItems.FieldByName((Sender as TField).FieldName).IsNull then
    Text := FloatToStr(roundto(qryItems.FieldByName((Sender as TField)
      .FieldName).AsFloat, opt.RoundEntity));
end;

procedure TReciptsF.qryItemsTotalInputPriceChange(Sender: TField);
begin
  inherited;
  ChangeTotalInputPrice;
  EndOfPrice((Sender as TField).FieldName);
end;

procedure TReciptsF.qryItemsTotalOutputPriceChange(Sender: TField);
begin
  inherited;
  ChangeTotalInputPrice;
  EndOfPrice((Sender as TField).FieldName);
end;

procedure TReciptsF.actCorrelateReciptExecute(Sender: TObject);
begin
  inherited;
  If ReciptCorrelate_ConversionCo_Chk(qryRecipts, qryinit) then
  begin
    DMF.adcBSell.BeginTrans;
    try
      try
        getresponseShow := False;
        InsertCorrelateRecipt(qryinit, qryItems, formType, qryRecipts,
          FormOutput, DBNavigator1, MyEntityDisplayType);
        InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits,
          qry_Deficits4Print, qryinit.FieldByName('StepCorrelate').AsInteger);
        DMF.adcBSell.CommitTrans;
      except
        on E: Exception do
        begin
          DMF.adcBSell.RollbackTrans;
          Warn(E.Message);
        end;
      end;
    finally
      getresponseShow := True;
      qryRecipts.EnableControls;
    end;
  end;
end;

procedure TReciptsF.ppImage1DrawCommandCreate(Sender, aDrawCommand: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath('logo.bmp');
  if (FileExists(s)) then
    (Sender as TppImage).Picture.LoadFromFile(s);
  // TppImage(FindComponent('ppImage1')).Picture.LoadFromFile(s);
end;

procedure TReciptsF.ppLblFormFooterGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormFooter').AsString;
end;

procedure TReciptsF.qryReciptsStoreIDChange(Sender: TField);
begin
  inherited;
  myStore.code := Sender.AsInteger;
  ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, LblWarn);
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, DBGrid1, qryItems);
  EdtUnitSellPrice.Visible := PriceOn_StoreType;
  EdtTotalIOPrice.Visible := PriceOn_StoreType;
  GrpBoxAccount.Visible := PriceOn_StoreType and
    (qryinit.FieldByName('AccCodingShow').AsInteger > 0);
  PnlProduct.Visible := (qryinit.FieldByName('ProcedureActive').AsInteger > 0)
    and (qryRecipts.FieldByName('_StoreKind').AsInteger > 0);
  PnlProductCode_UseUnit.Visible := (PnlProduct.Visible) or
    (PnlPersonID1OnDetail.Visible);

end;

procedure TReciptsF.qryReciptsPersonID1Change(Sender: TField);
begin
  inherited;
  ChangeSQlqryStuff(qryStuff_Unit_TecInf, qryinit, qryRecipts, LblWarn);
  if qryinit.FieldByName('ActiveReMainPersonRecipt').AsInteger = 1 then
  begin
    LblReMainPerson.Visible := True;
    LblReMainPerson.Caption := 'مانده=' +
      CurrToStrF(ReMainPersonRecipt(0, qryRecipts, qryinit, False,
      LblReMainPerson), ffCurrency, 0);
  end;
  PersonIDOnDetailActiveChange(Sender, qryinit, qryItems);
end;

procedure TReciptsF.ppLblReMainGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(Calc_SumFileds('Price') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), qryRecipts, qryinit,
    True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsF.ppLblReMainOldGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(0, qryRecipts, qryinit,
    True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsF.logoPrint(Sender: TObject);
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

procedure TReciptsF.Timer1Timer(Sender: TObject);
begin
  inherited;
  LblStateChang.Visible := not LblStateChang.Visible;
end;

procedure TReciptsF.qryItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryItems.Sort := qryinit.FieldByName('OrderByFields').AsString;
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := opt.WeightCaption + ' =' +
      CurrToStr(Calc_SumFileds('Weight'));
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := opt.EntityCaption + ' =' +
      CurrToStr(Calc_SumFileds('Entity'));
  if PriceOn_StoreType then
    StatusBar1.Panels[0].Text := CurrToStrF(Calc_SumFileds('Price'), ffCurrency,
      0) + ' ريال '
  else
    StatusBar1.Panels[0].Text := '';
end;

procedure TReciptsF.SpeedButton10Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if not(qryRecipts.State in dsEditModes) then
    exit;
  txt := 'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
    ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + ' WHERE (CustomersGroup.GroupType IN(' + qryinit.FieldByName
    ('Customer2DetailKind').AsString + ')) ';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell,
    qryinit.FieldByName('Person2DetailCaption').AsString + 'ها ', txt,
    ['کد', qryinit.FieldByName('Person2DetailCaption').AsString], Results,
    [50, 150], alLeft);
  if b then
  begin
    if not(qryItems.State in dsEditModes) then
      qryItems.edit;
    qryItems.FieldByName('PersonID1').AsInteger := StrToInt(Results[0]);
    DBEdit8.SetFocus;
  end; // if
end;

procedure TReciptsF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryItems)
end;

procedure TReciptsF.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton10.Click;

end;

procedure TReciptsF.actSortExecute(Sender: TObject);
begin
  inherited;
  try
    sort2F.ShowSort(qryItems);
  finally
    With qryinit do
    begin
      edit;
      FieldByName('OrderByFields').AsString := qryItems.Sort;
      Post;
    end;
  end;
end;

procedure TReciptsF.ppDBTxtPayablePriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price') + CalcSumFileds(qry_Deficits4Print,
    'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsF.actDeficitsExecute(Sender: TObject);
var
  PayablePrice: Currency;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('DeficitsLevelID'), qryRecipts) then
    Abort;
  if qryRecipts.FieldByName('_HasDeficit').AsInteger <> 1 then
    exit;
  qry_Deficits4Print.Requery();
  // if not (qryRecipts.State  in dseditmodes) then qryRecipts.Edit;
  ReciptsDeficitsF.Enter(qryItems, qryinit, qryRecipts, FormOutput,
    GetCustomersNoDiscount(qryRecipts, qryinit), Edit4Deficits);

  if qryRecipts.State in dsEditModes then
    qryRecipts.Post;

  PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  StatusBar1.Panels[3].Text := 'كسورات=' + CurrToStrF(PayablePrice,
    ffCurrency, 0);
  PayablePrice := Calc_SumFileds('Price') + PayablePrice;
  StatusBar1.Panels[3].Text := StatusBar1.Panels[3].Text + ' قابل پرداخت=' +
    CurrToStrF(PayablePrice, ffCurrency, 0);
  // qryRecipts.Post;
  qry_Deficits4Print.Requery();
end;

procedure TReciptsF.EdtStuffSizeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
    DBEdit19.SetFocus;
end;

procedure TReciptsF.InitDBCombos;
begin
  // if  qryinit.FieldByName('FormKindSerial').AsInteger<=0 then begin
  // Warn('سريال نوع اطلاعات فرم مشخص نشده است.‏');
  // Exit;
  // end;
  CmbSecondType.Clear;
  CmbSecondTypeItem.Clear;
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
      qryinit.FieldByName('FormKindSerial').AsString + ') ORDER BY Code';
    Active := True;
    while not Eof do
    begin
      CmbSecondType.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
    SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
      qryinit.FieldByName('FormItemKindSerial').AsString + ') ORDER BY Code';
    Active := True;
    while not Eof do
    begin
      CmbSecondTypeItem.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure TReciptsF.SBtnProductCodeClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo'
    + ' FROM StuffCoding INNER JOIN' +
    ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN'
    + ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID' +
    ' WHERE (Stores.StoreKind = 1)';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' محصولات  ', txt,
    ['کد', 'نام محصول', 'مشخصات فني'], Results, [50, 150, 100], alLeft);
  if b then
  begin
    // if not (qryItems.state in dsEditModes) then   qryItems.edit;
    qryItems['ProductCode'] := Results[0];
  end; // if
end;

procedure TReciptsF.SBtnProductModelClick(Sender: TObject);
begin
  inherited;
  SpeedButtonProductModel(qryItems);
end;

procedure TReciptsF.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnProductCode.Click

end;

procedure TReciptsF.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnProductModel.Click
end;

procedure TReciptsF.actReciptStateTo0Execute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي باطل كردن اين ' + Caption + ' مطمئن هستيد!؟‏‏') = mrYes
  then
    if AutoStateChange(qryRecipts, qryinit, 3) then
      with DMF.qryTmpTmp do
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

procedure TReciptsF.actReciptsTradesFExecute(Sender: TObject);
begin
  inherited;
  ReciptsTradesF.Enter(qryinit, qryRecipts);
end;

procedure TReciptsF.ppLblState2ZeroDrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryRecipts.FieldByName('ReciptState')
    .AsInteger = 3;
end;

procedure TReciptsF.ppLabelnum2alphabetPayebelGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price') + CalcSumFileds(qry_Deficits4Print,
    'Deficit_Add_Dec');
  PayablePrice := roundto(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';

end;

procedure TReciptsF.plblToman1GetText(Sender: TObject; var Text: string);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := roundto(PayablePrice * 0.1, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' تومان';
end;

procedure TReciptsF.ppLblSecondTypeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := CmbSecondType.Text;
end;

procedure TReciptsF.qryReciptsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').ReadOnly := False;
  DataSet.FieldByName('LastUser').AsString := User.name;
end;

procedure TReciptsF.qryItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').ReadOnly := False;
  DataSet.FieldByName('LastUser').AsString := User.name;
end;

procedure TReciptsF.actCorrelateConversionCoExecute(Sender: TObject);
begin
  inherited;
  getresponseShow := False;
  CorrelateConversionCo(Self, qryinit, qryItems, qryRecipts, 0,
    MyEntityDisplayType);
  getresponseShow := True;
end;

procedure TReciptsF.ppLblAllStringReplaceGetText(Sender: TObject;
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

procedure TReciptsF.EdtStuffCodeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    qryItems.FieldByName(EdtIOEntity.DataField).AsInteger := 1;
    qryItems.Post;
    qryItems.Insert;

  end;

end;

procedure TReciptsF.EdtStuffCodeChange(Sender: TObject);
begin
  inherited;
  if (Sender as TDBEdit).Text = '0' then
    (Sender as TDBEdit).Text := '';
end;

procedure TReciptsF.qryItemsTotallSellPriceChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName);
end;

procedure TReciptsF.qryItemsWaterCoChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName);
end;

procedure TReciptsF.EndOfPrice;
begin
  if (qryinit.FieldByName('VATActive').AsInteger = 1) or
    (qryinit.FieldByName('PawsFieldsActive').AsInteger > 0) then
    EndOfPriceTax(Field_Name)
  else
  begin
    if qryinit.FieldByName('DiscountActive').AsInteger <> 1 then
      exit;
    if Field_Name = 'WaterCo' then
    begin
      qryItems.FieldByName('TotallSellPrice').AsCurrency :=
        roundto(((100 - qryItems.FieldByName('WaterCo').AsFloat) *
        qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency) / 100, 0);
      exit;
    end;

    if Field_Name = 'TotallSellPrice' then
    begin
      qryItems.FieldByName('DeficitValue').AsCurrency :=
        roundto(qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency -
        qryItems.FieldByName('TotallSellPrice').AsCurrency, 0);
      exit;
    end;
    // ___________________ for  TotalInputPrice and TotalOutputPrice ________________

    qryItems.FieldByName('TotallSellPrice').AsCurrency :=
      roundto(((100 - qryItems.FieldByName('WaterCo').AsFloat) *
      qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency) / 100, 0);
  end;
end;

procedure TReciptsF.EndOfPriceTax;
var
  TaxCo, WaterCo1: Real;
  TotallSellPrice, TotallPrice: Currency;
  DeficitValue1: Currency;
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

    Result := TotallPrice - qryItems.FieldByName('DeficitValue').AsCurrency;
    Result := Result * TaxCo / (100 * ifthen(VATRound = 0, 1, VATRound));
    Result := roundto(Result * ifthen(VATRound = 0, 1, VATRound), 0);

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

    TotallSellPrice := roundto(TotallPrice + CalcTaxValue -
      qryItemsDeficitValue.AsCurrency + c, 0);
    if qryItemsTotallSellPrice.AsCurrency <> TotallSellPrice then
    begin
      qryItemsTotallSellPrice.OnChange := nil;
      qryItemsTotallSellPrice.AsCurrency := TotallSellPrice;
      qryItemsTotallSellPrice.OnChange := qryItemsTotallSellPriceChange;
    end;
  end;

begin
  TotallPrice := 0;
  if ((qryinit.FieldByName('CommissionActive').AsInteger > 0) and
    (qryItems.FindField('UnitCommission') <> nil)) then
    TotallPrice := roundto(qryItems.FieldByName(FieldNameEntity).AsCurrency *
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
    DeficitValue1 := trunc(TotallPrice * qryItems.FieldByName('WaterCo')
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

  if ((Field_Name = 'DeficitValue') or (Field_Name = FieldNamePrice) or
    (Field_Name = 'UnitCommission')) and
    (qryinit.FieldByName('WaterCoOrDeficitValueEdit').AsInteger in [1, 2]) and
    (TotallPrice <> 0) then
  begin
    WaterCo1 := roundto(qryItems.FieldByName('DeficitValue').AsCurrency * 100 /
      TotallPrice, -3); // RoundCount
    if qryItems.FieldByName('WaterCo').AsFloat <> WaterCo1 then
    begin
      qryItems.FieldByName('WaterCo').OnChange := nil;
      qryItems.FieldByName('WaterCo').AsFloat := WaterCo1;
      qryItems.FieldByName('WaterCo').OnChange := qryItemsWaterCoChange;
    end;

  end;

  CalcSellPrice

end;

procedure TReciptsF.ppLblHeaderGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormHeader').AsString;
end;

procedure TReciptsF.actReportSearchExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.show(ppReport1, 'recipt', Self);
end;

procedure TReciptsF.actRowDownExecute(Sender: TObject);
begin
  inherited;
  With qryItems do
  begin
    edit;
    qryItemsIRow.AsInteger := qryItemsIRow.AsInteger + 1;
    Post;
  end;
end;

procedure TReciptsF.actRowUpExecute(Sender: TObject);
begin
  inherited;
  With qryItems do
  begin
    edit;
    qryItemsIRow.AsInteger := qryItemsIRow.AsInteger - 1;
    Post;
  end;
end;

procedure TReciptsF.actReciptOnFormsRangeExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if (qryRecipts.FieldByName('_PersonName1').AsString = '') then
    exit;
  if qryinit.FieldByName('CofferType').AsString = '' then
  begin
    Warn('فرم هاي خزانه داري قابل ارتباط مشخس نشده.!‏');
    exit
  end;
  s := ' AND ((Forms.CustomerID2 = ' + qryRecipts.FieldByName('PersonID1')
    .AsString + ')' + ' or (Forms.CustomerID1 = ' + qryRecipts.FieldByName
    ('PersonID1').AsString + '))';
  ChooseReciptOnFormsRangeF.SelectChecks(qryRecipts,
    qryinit.FieldByName('CofferType').AsString, s, 0);
end;

procedure TReciptsF.qryItemsAuxiliaryChange(Sender: TField);
begin
  inherited;
  if qryItems.FieldByName('Auxiliary').AsInteger > 0 then
  begin
    qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency :=
      roundto(qryItems.FieldByName('UnitSellPrice').AsCurrency *
      qryItems.FieldByName('Auxiliary').AsCurrency, 0)
  end;
end;

procedure TReciptsF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  try
    DMF.adcBSell.Execute
      (Format('DELETE FROM StuffCodeTemp WHERE (ReciptType = %d) AND (UserID = %d)',
      [formType, User.id]));
  except
    on E: Exception do
    begin
      add2log('D>>>' + E.Message);
    end;
  end;
end;

procedure TReciptsF.FormCreate(Sender: TObject);
begin
  inherited;
  mnuEntity.Checked := opt.EntityOrWeight = 0;
  mnuWeight.Checked := opt.EntityOrWeight = 1;
  mnuEntity.Visible := opt.EntityOrWeight = 2;
  mnuWeight.Visible := opt.EntityOrWeight = 2;

  IsSendingMoadiyan := False;
  myStore := DM.myStore;
  // _CTopicCode2AccOldAvailable(qryItems);

  try
    SetLookUpCash(qryRecipts);
    SetLookUpCash(qryItems);
    ReciptsF.initFormQry;
  except
    Self.Free;
    exit;
  end;
  With qryRecipts do
  begin
    Active := False;
    if RestartStore then
    begin // 2
      if (FilterShow) then
        SelectStoreF.GetStore(myStore, qryinit.FieldByName('StoreCaption')
          .AsString, qryinit.FieldByName('StoreKindList').AsString,
          MyEntityDisplayType);
      SQL.Text := 'SELECT * ';
      SQL.Add('FROM Recipts');
      SQL.Add('WHERE (StoreID= :StoreID) AND (ReciptType = :ReciptType) AND (YearID = :YearID ) ');
      SQL.Add('And ( ReciptNumber BetWeen :ReciptNumberFrom and :ReciptNumberTo )');
      SQL.Add('ORDER BY ReciptNumber');
      Parameters.ParamByName('StoreID').Value := myStore.code;
      EdtStoreID.Enabled := False;
      SBtnStoreID.Enabled := False;
    end; // if  // 2
    Parameters.ParamByName('ReciptType').Value := formType;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ReciptNumberFrom').Value := -99999999;
    Parameters.ParamByName('ReciptNumberTo').Value := 2147483647;
    Active := True;
  end; // with
  if FilterShow then
    qryRecipts.Last;
  SeletedPrint(ppDBPipeline2, DBGrid1);
  initReportName(qryinit, PopMuPrint, mnu4allClick);
  PrintCount := 1;
  If qryinit.FieldByName('PrintCount').AsInteger > 1 then
    PrintCount := qryinit.FieldByName('PrintCount').AsInteger;
  CreateComPort(True);

  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Person3Active, Person3Caption,CustomerKind3';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (ReciptType  = 1)');
    Active := True;
    Person3Active := FieldByName('Person3Active').AsInteger = 1;
  end;
  DBGrid1.SetFooter4Sum(['WaterCo', 'DeficitValueCo2', 'DeficitValueCo3',
    'TaxCo', 'AidNumber']);
  ppDBPipelineSumGrid1.DataSource := DBGrid1.srcSum;

end;

procedure TReciptsF.mnu4allClick(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline2, DBGrid1);
  if Assigned(Sender) then
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
end;

procedure TReciptsF.mnuEntityClick(Sender: TObject);
begin
  inherited;
  mnuWeight.Checked := not mnuEntity.Checked
end;

procedure TReciptsF.MnuLoopClick(Sender: TObject);
var
  ReciptID, ServerID, YearID, i: Integer;
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
  DMF.adcBSell.Execute(s, i);
  qryRecipts.Requery();
  DMTaxF.Moaadiyan(TaxMain, qryCustomers1, qryRecipts, qryRecipts, qryItems,
    nil, qryinit, nil, MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan,
    MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop,
    mnuEntity, mnuWeight);

end;

procedure TReciptsF.qryReciptsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not IsCorrelateReciptType(qryinit) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('ADDLevelID'), qryRecipts) then
    Abort;
  CmbSecondType.Tag := qryRecipts.FieldByName('SecondType').AsInteger;
  if not RecallChangeType(getresponseShow, qryinit, qryRecipts, formType,
    FormOutput, qryRecipts, qryItems, myStore.code) then
    Abort;
end;

procedure TReciptsF.GrpBoxAccountEnter(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('AccCodeLevelID'), qryRecipts) then
    Panel2.SetFocus;
end;

procedure TReciptsF.BtnRecallSpecialClick(Sender: TObject);
begin
  inherited;
  try
    begin
      qryItems.DisableControls;
      case qryinit.FieldByName('RecallType').AsInteger of
        0:
          actRecall.Execute;
        1:
          actRecall.Execute;
        2:
          actRecallSpecial.Execute;
        3:
          RecallBook(1);
        4:
          RecallBook(2);
        5:
          actRecallSpecial.Execute;
        6:
          actStuffCodingSpecialSearch.Execute;
      end;
    end;
  finally
    qryItems.EnableControls;
  end;
end;

procedure TReciptsF.btnTax1Click(Sender: TObject);
begin
  inherited;
  mdiMainF.actCustomersTaxF.Execute
end;

procedure TReciptsF.btnTaxClick(Sender: TObject);
begin
  inherited;
  if not(mnuEntity.Checked or mnuWeight.Checked) then
    Warn('لطفا نوع ارسال  مقدار یا وزن را مشخص کنید');
  // if grdTax <> nil then    grdTax.Visible := True;
  popMoaadiyan.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TReciptsF.dbchkInsrClick(Sender: TObject);
begin
  inherited;
  if not (qryRecipts.State in dsEditModes) then
    Exit;
  if dbchkInsr.Checked then
  begin
    if qryReciptsIndati2m.IsNull then
      qryReciptsIndati2m.AsDateTime := Now;
  end
  else
    qryReciptsIndati2m.Clear;
end;

procedure TReciptsF.RecallBook(flag: Byte);
var
  rid: Integer;
begin
  myStore.code := qryRecipts.FieldByName('StoreID').AsInteger;
  rid := qryItems.RecordCount;
  If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
    'هيچ فرمي براي فراخواني مشخص نشده است') then
    exit;
  if RecallSpecialRecipts2F.SelectRecall(formType, qryReciptsReciptID.AsInteger,
    FormOutput, myStore.code, qryItems, qryRecipts, qryinit, flag) then
  begin
    qryItems.MoveBy(rid);
  end;
end;

procedure TReciptsF.btnExcelClick(Sender: TObject);
begin
  inherited;
  try
    qryItems.AfterOpen := nil;
    qryItems.AfterScroll := nil;
    qryItems.AfterPost := nil;
    qryRecipts.edit;
    GetExcelF.ShowImPortExcel(qryItems);
  finally
    qryItems.AfterOpen := qryItemsAfterOpen;
    qryItems.AfterScroll := qryItemsAfterScroll;
    qryItems.AfterPost := qryItemsAfterPost;
  end;
end;

procedure TReciptsF.ppDBCalcnum2alphabetGetText(Sender: TObject;
  var Text: String);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := roundto(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c))) + ' ريال ';
  end;
end;

procedure TReciptsF.actDeleteCorrelateReciptExecute(Sender: TObject);
begin
  inherited;
  DeleteCorrelateRecipt(qryinit, qryRecipts)
end;

procedure TReciptsF.RequestedChangeEntityWeight;
var
  Weight: Real;
begin
  inherited;
  if qryinit.FieldByName('RequestedChange').AsInteger <> 1 then
    exit;
  Weight := qryItems.FieldByName(FormInOut + 'Entity').AsFloat *
    qryItems.FieldByName('RequestedEntity').AsFloat;
  Weight := qryItems.FieldByName('RequestedWeight').AsFloat - Weight;
  Weight := roundto(Weight, opt.RoundEntity);
  qryItems.FieldByName(FormInOut + 'Weight').AsFloat := Weight;
  qryItems.FieldByName('Total' + FormInOut + 'Price').AsCurrency :=
    roundto(qryItems.FieldByName('UnitSellPrice').AsCurrency * Weight, 0);

end;

procedure TReciptsF.qryItemsRequestedEntityChange(Sender: TField);
begin
  inherited;
  RequestedChangeEntityWeight;
end;

procedure TReciptsF.qryItemsRequestedWeightChange(Sender: TField);
begin
  inherited;
  RequestedChangeEntityWeight;
end;

procedure TReciptsF.actStuffCodingSpecialSearchExecute(Sender: TObject);
begin
  inherited;
  if not CheckRequiredFields(qryRecipts) then
    exit;
  StuffCodingSpecialSearchF.Enter(1, qryItems, qryRecipts.FieldByName('AidDate')
    .AsString);
end;

procedure TReciptsF.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(ADDKeyID(qryRecipts) + qryReciptsReciptID.AsString,
    'ReciptsF', True);
end;

procedure TReciptsF.DBnum2alphabetGetText(Sender: TObject; var Text: String);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := roundto(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c))) + ' ريال ';
  end;
end;

procedure TReciptsF.DBTextPersonID2DblClick(Sender: TObject);
begin
  inherited;
  DBTextPersonID2.Hint := GetFullCustName(qryReciptsPersonID2.AsInteger);
end;

procedure TReciptsF.dbtxtIRTAXIDDblClick(Sender: TObject);
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

procedure TReciptsF.ppLblRegisterNumberGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := DMF.ReadBankConfig('RegisterNumber', 'شماره ثبت')
end;

procedure TReciptsF.qryReciptsSecondTypeChange(Sender: TField);
var
  txt: string;
begin
  inherited;
  if qryinit.FieldByName('AidNumRestOnSecType').AsInteger <> 1 then
    exit;
  if Not MultiFormType then
    FreeReservedCodes(DMF.adcBSell, 'Recipts', 'ReciptNumber',
      IntToStr(formType));
  txt := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(SecondType=' +
    IntToStr(Sender.AsInteger) + ')';
  txt := txt + Format('AND (ReciptType = %d )', [formType]);
  IF RestartStore THEN
    txt := txt + 'AND(StoreID=' + IntToStr(myStore.code) + ')';
  txt := txt + 'AND(YearID=' + IntToStr(APPBank.Year) + ')';
  qryRecipts.FieldByName('ReciptNumber').AsInteger :=
    GetANewCode(IntToStr(formType), txt, 'ReciptNumber');
end;

procedure TReciptsF.A_l_l_SP__ClickClick(Sender: TObject);
begin
  inherited;
  qryItems.FieldByName('UnitSellPrice').AsCurrency :=
    StrToCurr((Sender as TMenuItem).Hint)
end;

procedure TReciptsF.BtnDeficitsMouseEnter(Sender: TObject);
begin
  inherited;
  grd1.Visible := True;
end;

procedure TReciptsF.BtnDeficitsMouseLeave(Sender: TObject);
begin
  inherited;
  grd1.Visible := False;
end;

procedure TReciptsF.ppLabel__StandardRateGetText(Sender: TObject;
var Text: String);
var
  c: Currency;
begin
  inherited;
  c := CalcSumFileds(qryItems, 'TotalStandardRate');
  c := roundto(c, 0);
  Text := CurrToStrF(c, ffCurrency, 0)
end;

procedure TReciptsF.ppLbl__TaxGetText(Sender: TObject; var Text: String);
var
  cloned: TADOQuery;
  c: Currency;
begin
  inherited;
  c := 0;
  cloned := TADOQuery.Create(DMF.adcBSell);
  try
    with cloned do
    begin
      Clone(qryItems, ltReadOnly);
      DisableControls;
      First;
      while not Eof do
      begin
        c := c + FieldByName('TotalStandardRate').AsCurrency *
          qryinit.FieldByName('VATCo').AsFloat / 100;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
  end; // try
  cloned.Free;
  c := roundto(c, 0);
  Text := CurrToStrF(c, ffCurrency, 0)
end;

procedure TReciptsF.ppLbl_TotalStandardRateGetText(Sender: TObject;
var Text: String);
var
  cloned: TADOQuery;
  c: Currency;
begin
  inherited;
  c := 0;
  cloned := TADOQuery.Create(DMF.adcBSell);
  try
    with cloned do
    begin
      Clone(qryItems, ltReadOnly);
      DisableControls;
      First;
      while not Eof do
      begin
        c := c + FieldByName('TotalStandardRate').AsCurrency +
          FieldByName('TotalStandardRate').AsCurrency *
          qryinit.FieldByName('VATCo').AsFloat / 100;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
  end; // try
  cloned.Free;
  c := roundto(c, 0);
  Text := CurrToStrF(c, ffCurrency, 0)
end;

procedure TReciptsF.ppLbl_TotalStandardRateAlphaGetText(Sender: TObject;
var Text: String);
var
  cloned: TADOQuery;
  c: Currency;
begin
  inherited;
  c := 0;
  cloned := TADOQuery.Create(DMF.adcBSell);
  try
    with cloned do
    begin
      Clone(qryItems, ltReadOnly);
      DisableControls;
      First;
      while not Eof do
      begin
        c := c + FieldByName('TotalStandardRate').AsCurrency +
          FieldByName('TotalStandardRate').AsCurrency *
          qryinit.FieldByName('VATCo').AsFloat / 100;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
  end; // try
  cloned.Free;
  c := roundto(c, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(c))) + ' ريال '
end;

procedure TReciptsF.ppDBTextSumSelectGetText(Sender: TObject; var Text: String);
var
  c: Currency;
begin
  inherited;
  c := CalcSumFileds
    (TADOQuery(FindComponent(((Sender as TppDBText).DataPipeline.GetDataSetName)
    )), (Sender as TppDBText).DataField);
  Text := CurrToStrF(c, ffGeneral, 0)
end;

procedure TReciptsF.actChangerExecute(Sender: TObject);
begin
  inherited;
  ChangerF.ShowChanger(qryItems);
end;

procedure TReciptsF.medt_StuffTecInfoChange(Sender: TObject);
begin
  inherited;
  // qryItems.FieldByName('StuffCode').AsLargeInt:=GetStuffCodeFromStuffTecInfo(medt_StuffTecInfo.Text)
end;

procedure TReciptsF.medt_StuffTecInfoEnter(Sender: TObject);
begin
  inherited;
  medt_StuffTecInfo.SelectAll;
end;

procedure TReciptsF.actAllotmentExecute(Sender: TObject);
begin
  inherited;
  if FormOutput then
    exit;
  AllotmentF.ShowChanger(qryItems, DBGrid1)
end;

procedure TReciptsF.plblSecondTypeItemGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := CmbSecondTypeItem.Text
end;

procedure TReciptsF.actSaveFormItemsExecute(Sender: TObject);
begin
  inherited;
  SaveFormItems(qryItems)
end;

procedure TReciptsF.actLoadFormItemsExecute(Sender: TObject);
begin
  inherited;
  LoadFormItems(qryItems)
end;

procedure TReciptsF.actMakeDocumentFExecute(Sender: TObject);
begin
  inherited;
  var_tmp_str := qryRecipts.FieldByName('ID').AsString;
  MakeDocumentF.Enter(qryRecipts, False)
end;

procedure TReciptsF.actReciptsRegulatesExecute(Sender: TObject);
begin
  inherited;
  ReciptsRegulatesF.Enter(qryItems, qryinit, qryRecipts)
end;

procedure TReciptsF.actRpt001Execute(Sender: TObject);
begin
  inherited;
  Rpt001F.Enter(qryRecipts, qryinit)
end;

procedure TReciptsF.plblAmount1Total_PriceGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  With DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Amount1 FROM LookUps WHERE LookUpID=' +
      qryRecipts.FieldByName('SecondType').AsString;
    Active := True;
    Text := CurrToStrF(Fields[0].AsCurrency * qryRecipts.FieldByName
      ('ReciptValue').AsCurrency, ffCurrency, 0);
    Active := False;
  end;
end;

procedure TReciptsF.SpeedButton1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := TADOQuery(FindComponent('qryCustomers3')).SQL.Text;
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell,
    qryinit.FieldByName('Person3Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person3Caption').AsString + '', 'وزن',
    'آدرس'], Results, [50, 150, 80, 200], alLeft);
  if b then
    qryRecipts['PersonID3'] := Results[0];
end;

procedure TReciptsF.initAddField;
var
  qry: TADOQuery;
  b: Boolean;
begin
  With qryinit do
  begin
    b := FieldByName('Person3Active').AsInteger = 1;
    pnlPerson3.Visible := b;
    if b then
    begin
      lblPerson3.Caption := 'كد ' + FieldByName('Person3Caption').AsString;
      qryRecipts.FieldByName('PersonID3').Required := pnlPerson3.Visible;
      qryRecipts.FieldByName('PersonID3').DisplayLabel :=
        'كد ' + lblPerson3.Caption;
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsF);
        Name := 'qryCustomers3';
        Connection := DMF.adcBSell;
        SQL.Text :=
          'SELECT DISTINCT Customers.CustID, Customers.CustName,Customers.InfoWeight,Address FROM Customers INNER JOIN';
        SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
        if not NotNull(qryinit.FieldByName('CustomerKind3').AsString,
          'هيچ گروهي براي گروه مشتري 3  مشخص نشده است') then
          SQL.Add(' WHERE (CustomersGroup.GroupType IN(' +
            Trim(qryinit.FieldByName('CustomerKind3').AsString) + ')) ');
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryRecipts) do
      begin
        FieldName := '_PersonName3';
        FieldKind := fkLookup;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        KeyFields := 'PersonID3';
        LookUpDataset := qry;
        LookUpKeyFields := 'CustID';
        LookupResultField := 'CustName';
        Required := pnlPerson3.Visible;
        DisplayLabel := 'نام ' + FieldByName('Person3Caption').AsString;
        Size := 100;
        qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
        dbtxtPersonID3.DataField := FieldName;
      end;
      qryCustCreate(qryCust3, '3', ReciptsF);
    end;

    pnlTax.Visible := FieldByName('VATActive').AsInteger = 1;
    VATActiveFields(qryStores, qryRecipts, qryItems, qryinit, qryCustomers2,
      qryCustomers1, qryStuff_Unit_TecInf, DBGrid1, qryItemsTaxCoChange,
      qryItemsTaxValueChange, nil);

    dbmmoReciptNote2.Visible := FieldByName('NoteShow').AsInteger = 4;
    if dbmmoReciptNote2.Visible then
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

      dbmmoReciptNote2.DataField := 'ReciptNote2';

    end;

  end;
end;

procedure TReciptsF.qryItemsTaxCoChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // TaxCo
end;

procedure TReciptsF.qryItemsTaxValueChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // TaxValue
end;

procedure TReciptsF.mnuN7Click(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryReciptsStoreID.AsInteger,
    qryItemsStuffCode.AsLargeInt, 2);
end;

procedure TReciptsF.N42Click(Sender: TObject);
begin
  inherited;
  AllEditUnitSellPrice(qryRecipts, qryItems, 'UnitSellPrice');
  AllEditUnitSellPrice(qryRecipts, qryItems, 'TaxCo');
end;

procedure TReciptsF.N7Click(Sender: TObject);
begin
  inherited;
  StuffTransactionF.Enter(qryReciptsStoreID.AsInteger,
    qryItemsStuffCode.AsLargeInt)
end;

procedure TReciptsF.actAllEditExecute(Sender: TObject);
begin
  inherited;
  AllEdit(qryRecipts, qryItems)
end;

procedure TReciptsF.actCopyExecute(Sender: TObject);
begin
  inherited;
  CopyNewRecipts(qryRecipts, qryRecipts, qryinit)
end;

procedure TReciptsF.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'ReciptNumber', ' فرم ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts WHERE ReciptType = '
        + IntToStr(formType));
      if ShowModal = mrOk then
      begin
        GetFilterString;
        With qryRecipts do
        begin
          Close;
          Parameters.ParamByName('ReciptNumberFrom').Value :=
            GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
          Parameters.ParamByName('ReciptNumberTo').Value :=
            GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
          Open;
        end;
      end;
      // if
    finally
      Free;
    end; // try
  end; // with

  NAllRecords.Checked := not NAllRecords.Checked
end;

procedure TReciptsF.qryReciptstax_statusGetText(Sender: TField;
var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Gettax_statusCaption(Sender.AsInteger)
end;

procedure TReciptsF.actMoaadiyanExecute(Sender: TObject);
begin
  inherited;
  IsSendingMoadiyan := True;
  if ((qryReciptsIRTAXID.AsString <> EmptyStr) and (SellEffect <> 2)) then
  BEGIN
    MnuTaxCorrectionClick(Sender);
  END
  else if qryReciptsReciptState.AsInteger = 3 then
    DMTaxF.Moaadiyan(TaxCancellation, qryCustomers1, qryRecipts, qryRecipts,
      qryItems, nil, qryinit, nil, MnuCheckMoaadiyan, Mnusandbox,
      MnuTaxMoaadiyan, MnuTaxCancellation, MnuTaxCorrection,
      MnuTaxReturnFromSale, MnuLoop, mnuEntity, mnuWeight)
  else if SellEffect = 2 then
    DMTaxF.Moaadiyan(TaxReturn, qryCustomers1, qryRecipts, qryRecipts, qryItems,
      nil, qryinit, nil, MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan,
      MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop,
      mnuEntity, mnuWeight)
  else
    DMTaxF.Moaadiyan(TaxMain, qryCustomers1, qryRecipts, qryRecipts, qryItems,
      nil, qryinit, nil, MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan,
      MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop,
      mnuEntity, mnuWeight);
  IsSendingMoadiyan := False;

end;

procedure TReciptsF.MnuTaxCorrectionClick(Sender: TObject);
begin
  inherited;
  DMTaxF.Moaadiyan(TaxCorrection, qryCustomers1, qryRecipts, qryRecipts,
    qryItems, nil, qryinit, nil, MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan,
    MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop,
    mnuEntity, mnuWeight);
end;

procedure TReciptsF.MnuTaxCancellationClick(Sender: TObject);
begin
  inherited;
  DMTaxF.Moaadiyan(TaxCancellation, qryCustomers1, qryRecipts, qryRecipts,
    qryItems, nil, qryinit, nil, MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan,
    MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop,
    mnuEntity, mnuWeight);
end;

procedure TReciptsF.MnuTaxReturnFromSaleClick(Sender: TObject);
begin
  inherited;
  DMTaxF.Moaadiyan(TaxReturn, qryCustomers1, qryRecipts, qryRecipts, qryItems,
    nil, qryinit, nil, MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan,
    MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop,
    mnuEntity, mnuWeight);
end;

procedure TReciptsF.mnuWeightClick(Sender: TObject);
begin
  inherited;
  mnuEntity.Checked := not mnuWeight.Checked
end;

procedure TReciptsF.actCheckMoaadiyanExecute(Sender: TObject);
begin
  inherited;
  DMTaxF.CheckMoaadiyan(MnuCheckMoaadiyan, Mnusandbox, MnuTaxMoaadiyan,
    MnuTaxCancellation, MnuTaxCorrection, MnuTaxReturnFromSale, MnuLoop,
    qryRecipts, SellEffect)
end;

end.
