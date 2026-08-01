{ -----------------------------------------------------------------------------
  Unit Name: Rpt001
  Author:    Mostafa
  ----------------------------------------------------------------------------- }
unit Rpt001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, System.StrUtils, DMTax,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, Mask, DBCtrls, ppDB, TaxUnit,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppDsgnDB, ppDBJIT, ppVar, Menus, ComCtrls,
  myChkBox, ppStrtch, ppRegion, ppModule, ppSubRpt, daDataModule, ppParameter,
  GeneralDM, ManagGridColumns, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TRpt001F = class(Ttemplate2MDIF)
    Panel1: TPanel;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    qryReciptsReciptID: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsRegPrice: TBCDField;
    qryReciptsDeficitAddDec: TBCDField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsRelatedReciptType: TWordField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsCustName2: TStringField;
    qryReciptsReciptNote: TStringField;
    qryInitQry: TADOQuery;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    actSendToExcel: TAction;
    lblStoreName: TLabel;
    actPrint: TAction;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSort: TAction;
    actReciptState1: TAction;
    BtnReciptState: TBitBtn;
    actReciptState2: TAction;
    qryReciptsReciptState: TWordField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    btnPrint: TBitBtn;
    qryReciptsEntity: TFloatField;
    qryReciptsWeight: TFloatField;
    srcItems: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    qryItems: TADOQuery;
    qryItemsReciptItemID: TIntegerField;
    qryItemsReciptID: TIntegerField;
    qryItemsStuffSize: TStringField;
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
    qryItemsTotallSellPrice: TBCDField;
    qryItemsUnitSellPrice: TFMTBCDField;
    qryItemsItemNote: TStringField;
    qryItemsacc_DetailCode: TStringField;
    qryItemsacc_CTopicCode: TStringField;
    qryItemsUseUnitID: TIntegerField;
    qryItemspreReciptItemID: TIntegerField;
    qryItemsStuffDiameter: TFloatField;
    qryItemsControlCode: TLargeintField;
    qryItemsacc_CTopicCode2: TStringField;
    qryItemsPersonID1: TIntegerField;
    qryItems_radif: TIntegerField;
    qryItemsAidDate: TStringField;
    qryItemsDiscount: TIntegerField;
    PopupMenu1: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    qryRecipts_PersonName1: TStringField;
    qryRecipts_PersonAddress: TStringField;
    qryRecipts_Tel: TStringField;
    qryRecipts_EconomicNumber: TStringField;
    qryRecipts_PostalCode: TStringField;
    qryReciptsAidDate: TStringField;
    N7: TMenuItem;
    qryReciptsDocNo: TIntegerField;
    qryReciptsDocDate: TStringField;
    actDocNo: TAction;
    btnDocNo: TBitBtn;
    PopMnuReciptState: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    actReciptState3: TAction;
    PerformFileName: TMenuItem;
    actReciptState0: TAction;
    actReciptState01: TMenuItem;
    qryReciptsFactorNumber: TIntegerField;
    qryReciptsFirstUser: TStringField;
    qryReciptsLastUser: TStringField;
    qryReciptspriceWithDef: TBCDField;
    qry_Deficits4Print: TADOQuery;
    qry_Deficits4PrintDeficitName: TStringField;
    qry_Deficits4PrintDeficit_Add_Dec: TBCDField;
    ppDBPipeline3: TppDBPipeline;
    srcDeficits4Print: TDataSource;
    ReportFileName: TMenuItem;
    qryReciptsParentReciptID: TIntegerField;
    qryRecipts_StoresName: TStringField;
    qryReciptsc_StoreName: TStringField;
    qryReciptsSecondTypeName: TStringField;
    actCorrelateRecipt: TAction;
    qryItems_StuffName: TStringField;
    qryItems_UnitName: TStringField;
    qryItems_StuffTecInfo: TStringField;
    qryItems_Carton: TFloatField;
    qryReciptsDeficitValue: TBCDField;
    qryReciptsTotallSellPrice: TBCDField;
    qryReciptsPayebelPrice: TBCDField;
    actSortRun: TAction;
    qryItems_UseUnitName: TStringField;
    qryItems_CTopicCode: TStringField;
    qryItems_CTopicCode2: TStringField;
    qryRecipts_PersonTel: TStringField;
    qryRecipts_PersonFax: TStringField;
    BitBtn3: TBitBtn;
    PopMnuOther: TPopupMenu;
    actPrintVijeh: TAction;
    actUpdate: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actDBGridSelectAll: TAction;
    N4: TMenuItem;
    qryReciptsStoreID2: TSmallintField;
    qryReciptsc_StoreName2: TStringField;
    actReciptDelete: TAction;
    qryReciptsPayebelPrice2: TBCDField;
    qryReciptsStandardRate: TBCDField;
    qryItemsStandardRate: TBCDField;
    qryItemsTotalStandardRate: TBCDField;
    qryItems__Tax: TBCDField;
    qryItems_TotalStandardRate: TBCDField;
    qryReciptsUseOtherID: TWideStringField;
    qryRecipts_UseOtherID: TWideStringField;
    qryRecipts_UseOtherCode: TWideStringField;
    qryReciptsUseUnitID: TIntegerField;
    qryRecipts_UseUnitName: TStringField;
    qryRecipts_PersonName2: TStringField;
    fltfldItemsAcceptEntity: TFloatField;
    fltfldItemsRollbackEntity: TFloatField;
    fltfldItemsAcceptWeight: TFloatField;
    fltfldItemsRollbackWeight: TFloatField;
    qryItemsReq_InvEntity: TFloatField;
    qryItems____StuffTecInfo: TStringField;
    qryItemsc_StuffName: TStringField;
    qryItemsUnitSellPrice3: TFloatField;
    qryItems_PakhashCompany: TStringField;
    qryItemsDeficitValue: TBCDField;
    qryItemsProductModel: TIntegerField;
    qryItemsItemDate: TStringField;
    qryItemsOrderState: TWordField;
    qryItemsContactRate: TFloatField;
    qryItemsWaterCo: TFloatField;
    qryItemsFirstUser: TStringField;
    qryItemsLastUser: TStringField;
    qryItemsShift: TIntegerField;
    qryItemsUnitSellPrice2: TBCDField;
    qryItemsMachineWeight: TFloatField;
    qryItemsTotalWeight: TFloatField;
    qryItemsAuxiliary: TFloatField;
    qryItemsMachineNo: TStringField;
    qryItemsMachineName: TStringField;
    qryItemsMachineFullWeight: TFloatField;
    qryItemsSugarCo: TFloatField;
    qryItemsSugarEntity: TFloatField;
    qryItemsArzAmount: TFloatField;
    qryItemsInvEntity: TFloatField;
    qryItemsInvWeight: TFloatField;
    qryItemsSecondTypeItem: TIntegerField;
    qryReciptsPersonID3: TIntegerField;
    qryRecipts_PersonName3: TStringField;
    qryReciptsSellsMethod: TIntegerField;
    qryReciptsSellsMethodName: TWideStringField;
    qryReciptsSellsEmporium: TIntegerField;
    qryReciptsSellsEmporiumName: TWideStringField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryItemsTaxCo: TFloatField;
    qryItemsTaxValue: TBCDField;
    qryItemsServerID: TIntegerField;
    qryItemsYearID: TIntegerField;
    actMakeDocument: TAction;
    actCorrelateConversionCo: TAction;
    qryItems_c_KeepPlace: TStringField;
    actTransmittal: TAction;
    N5: TMenuItem;
    N6: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryItemsStuffCode: TLargeintField;
    qryReciptsReciptCaption: TStringField;
    qryItemsPortage: TBCDField;
    qryItemsArticle: TBCDField;
    qryItemsWage: TBCDField;
    qryItemsScoria: TBCDField;
    qryItemsWaste1: TBCDField;
    qryItemsWaste2: TBCDField;
    qryItemsFunction1: TBCDField;
    qryItemsCustomerRate: TBCDField;
    qryItemsPestEntity: TBCDField;
    qryItemsAidNumber: TStringField;
    plblSellsEmporiumName: TppLabel;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    ppLblShowLimitPlace1: TppLabel;
    ppLblShowLimitPlace2: TppLabel;
    ppDBText1: TppDBText;
    actCancellationFixes: TAction;
    mnuCancellationFixes: TMenuItem;
    qryItemsProductCode: TLargeintField;
    qryReciptsReciptsRow: TIntegerField;
    actReciptsRow: TAction;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    qryReciptsTaxValue: TBCDField;
    qryUpDate: TADOQuery;
    actDocumentUpDate: TAction;
    N11: TMenuItem;
    popSortRun: TPopupMenu;
    N12: TMenuItem;
    N13: TMenuItem;
    allSort1: TMenuItem;
    qryReciptsModifyDate: TDateTimeField;
    actSecondType: TAction;
    mnuSecondType: TMenuItem;
    mnuAllSecondType: TMenuItem;
    qryItemsacc_TopicCode: TLargeintField;
    mnuReturnRecallType9: TMenuItem;
    qryItemsTotalDeficient: TBCDField;
    actRecallSpecialReciptsF: TAction;
    mnuRecallSpecialReciptsF: TMenuItem;
    qryReciptsprice: TBCDField;
    qryItemsStandardConsumptionCo: TFMTBCDField;
    qryItemsStandardConsumption: TFloatField;
    qryReciptsUserRegistrationDoc: TStringField;
    qryReciptsDefaultDate: TStringField;
    qryReciptsDefaultDuration: TSmallintField;
    qryReciptsReciptType: TWordField;
    qryItemsDeficitValue2: TBCDField;
    qryItemsDeficitValue3: TBCDField;
    qryReciptsRegDocNo: TIntegerField;
    qryReciptsRegDocDate: TStringField;
    mnuAllCheck: TMenuItem;
    qryReciptsReciptDateMiladi: TDateTimeField;
    qryReciptsPersonID4: TIntegerField;
    qryRecipts_PersonName4: TStringField;
    qryReciptsTozin_Note: TStringField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    ppDBPipelineSumGrid1: TppDBPipeline;
    ppDBPipelineSumGrid2: TppDBPipeline;
    qryReciptsInsertDate: TDateTimeField;
    qryReciptsRelatedID: TIntegerField;
    RadioGroup1: TRadioGroup;
    dbmmoReciptNote: TDBMemo;
    Panel5: TPanel;
    chkFooter4Sum: TCheckBox;
    actDelReciptsDeficits: TAction;
    qryReciptspriceWithDef2: TBCDField;
    qryReciptsCalcCostStorage: TBooleanField;
    actCalcCostStorage: TAction;
    actReciptState4: TAction;
    actReciptState5: TAction;
    N14: TMenuItem;
    N15: TMenuItem;
    chkAidNumber: TCheckBox;
    qryRecipts_ValuationType: TSmallintField;
    qryReciptsArzAmount: TBCDField;
    qryReciptsMachineName: TStringField;
    actNewReciptsCorrelatePrice: TAction;
    qryReciptsID: TLargeintField;
    qryReciptsTruckNumber: TStringField;
    qryReciptsMachineInfo: TStringField;
    qryReciptsCustomerGrpName1: TStringField;
    qryReciptsArticle: TBCDField;
    qryReciptsWage: TBCDField;
    qryReciptsScoria: TBCDField;
    qryReciptsMachineNo: TStringField;
    qryReciptsInsuranceValue: TLargeintField;
    qryReciptsAddress: TStringField;
    Panel6: TPanel;
    Label2: TLabel;
    pb1: TProgressBar;
    qryReciptsReciptNumberFormer: TIntegerField;
    chkCorrelateReciptType: TCheckBox;
    actwebNipc: TAction;
    qryItemsArzRate: TBCDField;
    qryItemsInsertTime: TStringField;
    qryItemsEditTime: TStringField;
    qryItemsIRow: TIntegerField;
    qryItemsacc_CTopicCode3: TStringField;
    qryItemsUnitCommission: TFMTBCDField;
    qryItemsTransFormID: TIntegerField;
    qryItemsPrvYearID: TIntegerField;
    qryItemsConfirming: TStringField;
    qryItemsStuffCodingItemID: TIntegerField;
    qryItemsLength_: TFMTBCDField;
    qryItemsWidth: TFMTBCDField;
    qryItemsDiagnosisCalcTotalPrice: TWordField;
    qryItemsCommission: TFMTBCDField;
    qryItemsParentID: TLargeintField;
    qryItemsCurrencyDiscounts: TFMTBCDField;
    qryItemsRIDateMS: TDateTimeField;
    qryItemsRIDateME: TDateTimeField;
    qryItemsInBox: TFloatField;
    qryItemsStuffpublicPercentI: TFloatField;
    qryItemsArzPortage: TFloatField;
    qryItemsIneffectiveInput: TWordField;
    qryItemsSpecialCode: TStringField;
    qryItemsArzRate2: TFloatField;
    qryItemsHowConvert: TWordField;
    qryItemsArzTypeID2: TIntegerField;
    qryItemsArzAmount2: TFloatField;
    qryItemsExchangePrice: TBCDField;
    qryItemsTozinID: TIntegerField;
    qryItemsCommissionPrice: TBCDField;
    qryItemsFormItems_ID: TLargeintField;
    qryItemsUseOtherID_Item: TIntegerField;
    qryItemsPO: TStringField;
    qryItemsCommissionCurrency: TFMTBCDField;
    qryItemsUnitCode2: TWordField;
    qryItems_SD1: TStringField;
    qryItems_SD2: TStringField;
    qryReciptsWarehouseID: TStringField;
    qryItems_SD3: TStringField;
    qryItems_SD4: TStringField;
    qryItems_SD5: TStringField;
    qryItems_SD6: TStringField;
    qryItems_SD7: TStringField;
    qryItems_SD8: TStringField;
    qryItems_SD9: TStringField;
    qryReciptsExternal_ID: TStringField;
    actwebNipcCheck: TAction;
    qryItemsDeficitValue4: TBCDField;
    qryReciptsReagentName: TWideStringField;
    qryReciptsPersonID5: TIntegerField;
    qryRecipts_PersonName5: TStringField;
    actViewFileF: TAction;
    N16: TMenuItem;
    actAppendix: TAction;
    qryReciptsAppendix: TIntegerField;
    qryReciptsExpireDate: TStringField;
    qryReciptstax_status: TWordField;
    qryReciptstax_statusNote: TStringField;
    qryReciptsLoanPayment: TBCDField;
    qryReciptsTAXID: TStringField;
    qryReciptsIRTAXID: TStringField;
    qryItemsID: TFMTBCDField;
    chkReciptNumberCo: TCheckBox;
    popMoaadiyan: TPopupMenu;
    MnuTaxMoaadiyan: TMenuItem;
    MnuCheckMoaadiyan: TMenuItem;
    N41: TMenuItem;
    Mnusandbox: TMenuItem;
    N17: TMenuItem;
    btnTax: TBitBtn;
    qryReciptsREFERENCENUMBER: TStringField;
    qryReciptsDATE_OF_SEND_TO_TAX: TDateTimeField;
    qryReciptsInvoiceTemplate: TWordField;
    qryReciptsHCTarafGaradadTypeCode: TWordField;
    qryReciptsHCKharidarTypeCode: TWordField;
    qryRecipts_NationalID: TStringField;
    qryReciptsNationalCode: TStringField;
    qryReciptsEconomicNumber: TStringField;
    qryReciptsPostalCode: TStringField;
    qryItems_NationalStuffCode: TStringField;
    qryItems_Tax_mu: TStringField;
    qryReciptsCurrencyCode: TStringField;
    qryReciptsRialsEqual: TBCDField;
    qryReciptsArzTypeID: TIntegerField;
    qryTrades: TADOQuery;
    rgTax: TRadioGroup;
    qryReciptsReciptsFlag: TWideStringField;
    qryReciptsTAXUID: TStringField;
    qryReciptsDeficitValue3: TBCDField;
    qryReciptsportage: TFloatField;
    N18: TMenuItem;
    mnuEntity: TMenuItem;
    mnuWeight: TMenuItem;
    qryReciptsAidNumber: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actReciptState1Execute(Sender: TObject);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure actReciptState2Execute(Sender: TObject);
    procedure qryReciptsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblFormNameGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtStateGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure ppImage1DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblEconomicNumberGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumGetText(Sender: TObject; var Text: String);
    procedure ppDBTextStuffSizeGetText(Sender: TObject; var Text: String);
    procedure ppLabelnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure qryItemsCalcFields(DataSet: TDataSet);
    procedure N7Click(Sender: TObject);
    procedure actReciptState3Execute(Sender: TObject);
    procedure BtnReciptStateClick(Sender: TObject);
    procedure PerformFileNameClick(Sender: TObject);
    procedure actReciptState0Execute(Sender: TObject);
    procedure ppLabelnum2alphabetPayebelGetText(Sender: TObject;
      var Text: String);
    procedure ppLblSecondTypeGetText(Sender: TObject; var Text: String);
    procedure logoPrint(Sender: TObject);
    procedure ppLabelTotalOutputPriceGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtPayablePriceGetText(Sender: TObject; var Text: String);
    procedure ppLabelOutputWeightGetText(Sender: TObject; var Text: String);
    procedure ppLabelOutputEntityGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actCorrelateReciptExecute(Sender: TObject);
    procedure actSortRunExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure actDocNoExecute(Sender: TObject);
    procedure actDBGridSelectAllExecute(Sender: TObject);
    procedure actReciptDeleteExecute(Sender: TObject);
    procedure ppLabel__StandardRateGetText(Sender: TObject; var Text: String);
    procedure ppLbl__TaxGetText(Sender: TObject; var Text: String);
    procedure ppLbl_TotalStandardRateAlphaGetText(Sender: TObject;
      var Text: String);
    procedure ppLbl_TotalStandardRateGetText(Sender: TObject; var Text: String);
    procedure qryReciptsBeforeOpen(DataSet: TDataSet);
    procedure ppLblState2ZeroDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLblReMainGetText(Sender: TObject; var Text: String);
    procedure ppLblReMainOldGetText(Sender: TObject; var Text: String);
    procedure plblTotallSellPricAlphaGetText(Sender: TObject; var Text: String);
    procedure plblTotallSellPriceGetText(Sender: TObject; var Text: String);
    procedure actMakeDocumentExecute(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure actCorrelateConversionCoExecute(Sender: TObject);
    procedure mnu4allClick(Sender: TObject);
    procedure actTransmittalExecute(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure ppLblShowLimitPlace1GetText(Sender: TObject; var Text: String);
    procedure ppLblShowLimitPlace2GetText(Sender: TObject; var Text: String);
    procedure actCancellationFixesExecute(Sender: TObject);
    procedure actReciptsRowExecute(Sender: TObject);
    procedure ppDBTxtPayableSellPriceGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actDocumentUpDateExecute(Sender: TObject);
    procedure allSort1Click(Sender: TObject);
    procedure qryReciptsModifyDateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mnuAllSecondTypeClick(Sender: TObject);
    procedure actRecallSpecialReciptsFExecute(Sender: TObject);
    procedure plblAllReadBankConfigGetText(Sender: TObject; var Text: String);
    procedure plblAllStuffCodingGetText(Sender: TObject; var Text: string);
    procedure ppReport1AfterPrint(Sender: TObject);
    procedure actManagGridColumnsExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumnEh);
    procedure RadioGroup1Click(Sender: TObject);
    procedure chkFooter4SumClick(Sender: TObject);
    procedure actDelReciptsDeficitsExecute(Sender: TObject);
    procedure actCalcCostStorageExecute(Sender: TObject);
    procedure actReciptState4Execute(Sender: TObject);
    procedure actReciptState5Execute(Sender: TObject);
    procedure actNewReciptsCorrelatePriceExecute(Sender: TObject);
    procedure chkCorrelateReciptTypeClick(Sender: TObject);
    procedure actwebNipcExecute(Sender: TObject);
    procedure actwebNipcCheckExecute(Sender: TObject);
    procedure actViewFileFExecute(Sender: TObject);
    procedure actAppendixExecute(Sender: TObject);
    procedure MnuTaxMoaadiyanClick(Sender: TObject);
    procedure MnuCheckMoaadiyanClick(Sender: TObject);
    procedure btnTaxClick(Sender: TObject);
    procedure rgTaxClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure mnuEntityClick(Sender: TObject);
    procedure mnuWeightClick(Sender: TObject);
  private
    formType: Integer;
    RecallTypeOption, Settings, ShowSettings: Largeint;
    canfilter, UseUnitM, SellsEmporiumActive, SellsMethodActive,
      ReciptsRowActive, AidInfoActive: Boolean;
    pp_LblState2Zero, ActiveCalcCostStorage: Boolean;
    qryCust1, qryCust2, qryCust3, qryCust4, qryCust5 { , qryCustD } : TADOQuery;
    // OrginalSQL: String;
    ConversionCoAct: Boolean;
    FindParentReciptID, SubQry: String;
    UserSCA: Largeint;
    FieldLst, FieldDef: string;
    Procedure InitForm;
    procedure UpdateList;
    procedure finallyqryRecipts;
    procedure AutoStateChange;
    procedure InitPOP;
    procedure FilterONServerID;
    procedure ReciptState3_5_4(Caption: string; ReciptState: Integer);
    function MakeSQLInsert(ReciptIDS, Descriptions: string;
      qryRecipts: TADOQuery): string;
    procedure callstpNewReciptsCorrelate;
    procedure ProcCheckExistsFile;
    procedure TaxStateMenu;
    // procedure DBGridSelectAll(AGrid: TDBGrid);
    { Private declarations }
  public
    Procedure Enter(qry, qryini: TADOQuery);
    { Public declarations }
  end;

var
  Rpt001F: TRpt001F;
  CallReciptNumber: Integer;

const
  PartSise = 100;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, Math, FormFunctions, search2,
  sort2, mmessage, main, DBGrid2Print, MakeDocument, mdiMain, FaraConsts,
  ReciptsFunctions, DocumentUpDate, shamsiDate, RecallSpecialRecipts,
  SelectStore, DMnipc, ViewFileOnServer, ViewFileOnServerDB;

{$R *.dfm}
{ TRpt001F }

procedure TRpt001F.Enter;
var
  cap: string;
  b: Boolean;
begin
  cap := 'ليست ' + qryini.FieldByName('ReciptCaption').AsString;
  b := False;
  if mainF.Menu = mainF.Mnu1Sell then
    if mainF.mnuItemOther1.Find(cap) <> nil then
      b := mainF.mnuItemOther1.Find(cap).Visible;
  if (mainF.Menu = mainF.Mnu2Store) or (mainF.Menu = mainF.Mnu13Store) then
    if mainF.mnuItemOther2.Find(cap) <> nil then
      b := mainF.mnuItemOther2.Find(cap).Visible;
  // or (Pos(cap, User.Menus.Text) <> 0)
  if (User.PowerUser) or b then
    With qry do
    begin
      CallReciptNumber := FieldByName('ReciptNumber').AsInteger;
      CreateMDIForm2(TRpt001F, Rpt001F, mainF, FieldByName('ReciptType')
        .AsInteger);
      if Rpt001F.qryRecipts.Active then
        Rpt001F.qryRecipts.Locate('ReciptID;ServerID;YearID',
          VarArrayOf([FieldByName('ReciptID').AsInteger, FieldByName('ServerID')
          .AsInteger, FieldByName('YearID').AsInteger]), []);
      CallReciptNumber := 0;
    end;
end;

procedure TRpt001F.InitPOP;
var
  Kind: Integer;
  newItem: TMenuItem;
begin
  mnuSecondType.Visible := (qryInitQry.FieldByName('SecondTypeActive').AsInteger
    in [1, 3]) and
    (CheckUserlevel(qryInitQry.FieldByName('State0ChangeLevelID'),
    qryRecipts, False));
  if not mnuSecondType.Visible then
    Exit;
  mnuSecondType.Clear;
  Kind := qryInitQry.FieldByName('FormKindSerial').AsInteger;
  if Kind <> 0 then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
        IntToStr(Kind) + ')ORDER BY Code';
      Active := True;
      while not Eof do
      begin
        newItem := TMenuItem.Create(PopMnuOther);
        newItem.Caption := Fields[1].AsString;
        newItem.Tag := Fields[0].AsInteger;
        newItem.OnClick := mnuAllSecondTypeClick;
        mnuSecondType.Add(newItem);
        Next;
      end;
    end;
end;

procedure TRpt001F.InitForm;
var
  ReciptCaption: string;
  b, A: Boolean;
  i: Integer;
  ts: TStringList;
begin
  formType := var_glb_gParam;
  // ManagGridColumnsF.SetColumns(DMf.adcBSell, DBGrid1, formType);

  if formType = 0 then
    lblCaption.Hint := 'كليه فرم ها'
  else
  begin
    lblCaption.Hint := IntToStr(formType);
    setColumns2(DBGrid1, False, 'ReciptCaption');
  end;

  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
    Caption := FieldByName('ReciptCaption').AsString;
    initOtherFieldCaptions(qryInitQry, qryItems, qryRecipts);
    PerformFileName.Caption := 'چاپ 1 ' + Caption;
    ReportFileName.Caption := 'چاپ 2 ' + Caption;
    Caption := 'ليست ' + Caption;
    PerformFileName.Visible := FieldByName('PerformFileName').AsString <> '';
    ReportFileName.Visible := FieldByName('ReportFileName').AsString <> '';
    canfilter := False;
    lblStoreName.Visible := canfilter;

    RecallTypeOption := FieldByName('RecallTypeOption').AsLargeInt;
    Settings := FieldByName('Settings').AsLargeInt;
    ShowSettings := FieldByName('ShowSettings').AsLargeInt;

    btnTax.Visible := not(((CurAccess and Integer(akSendTax) <> 0)));
    rgTax.Visible := btnTax.Visible;
    btnTax.Visible := btnTax.Visible and
      (FieldByName('SellEffect').AsInteger > 0);

    qryReciptsCalcCostStorage.DisplayLabel :=
      FieldByName('CalcCostStorageCaption').AsString;

    actCalcCostStorage.Caption := 'تغییر ' +
      FieldByName('CalcCostStorageCaption').AsString;

    ActiveCalcCostStorage := (FieldByName('ShowNotEntityOnSearch')
      .AsLargeInt and Integer(CHKCalcCostStorage)) <> 0;
    setColumns2(DBGrid1, ActiveCalcCostStorage, 'CalcCostStorage');

    b := (FieldByName('ShowNotEntityOnSearch').AsLargeInt and
      Integer(CHkRciptDateToMiladi)) <> 0;
    setColumns2(DBGrid1, b, 'ReciptDateMiladi');

    b := FieldByName('PawsFieldsActive').AsInteger in [2, 3, 4];
    setColumns2(DBGrid1, b, 'Article');
    b := FieldByName('PawsFieldsActive').AsInteger in [2, 3];
    setColumns2(DBGrid1, b, 'Wage');
    setColumns2(DBGrid1, b, 'Scoria');

    // ------------------------set Columns---------------------//
    b := FieldByName('Person1Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID1');
    setColumns2(DBGrid1, b, '_PersonName1');
    qryCustCreate(qryCust1, '1', Rpt001F);

    b := FieldByName('Person2Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID2');
    setColumns2(DBGrid1, b, 'CustName2');
    qryCustCreate(qryCust2, '2', Rpt001F);

    b := FieldByName('Person3Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID3');
    setColumns2(DBGrid1, b, '_PersonName3');
    qryCustCreate(qryCust3, '3', Rpt001F);

    b := FieldByName('Person4Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID4');
    setColumns2(DBGrid1, b, '_PersonName4');
    qryCustCreate(qryCust4, '4', Rpt001F);

    b := FieldByName('Person5Active').Value = 1;
    setColumns2(DBGrid1, b, 'PersonID5');
    setColumns2(DBGrid1, b, '_PersonName5');
    qryCustCreate(qryCust5, '5', Rpt001F);

    qryRecipts.FieldByName('PersonID1').DisplayLabel := ' كد ' +
      FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('_PersonName1').DisplayLabel := 'شركت/نام خانوادگي '
      + FieldByName('Person1Caption').AsString;

    qryRecipts.FieldByName('PersonID2').DisplayLabel := ' كد ' +
      FieldByName('Person2Caption').AsString;
    qryRecipts.FieldByName('CustName2').DisplayLabel := 'نام ' +
      FieldByName('Person2Caption').AsString;

    qryRecipts.FieldByName('PersonID3').DisplayLabel := ' كد ' +
      FieldByName('Person3Caption').AsString;
    qryRecipts.FieldByName('_PersonName3').DisplayLabel := 'نام ' +
      FieldByName('Person3Caption').AsString;

    qryRecipts.FieldByName('PersonID4').DisplayLabel := ' كد ' +
      FieldByName('Person4Caption').AsString;
    qryRecipts.FieldByName('_PersonName4').DisplayLabel := 'نام ' +
      FieldByName('Person4Caption').AsString;

    qryRecipts.FieldByName('PersonID5').DisplayLabel := ' كد ' +
      FieldByName('Person5Caption').AsString;
    qryRecipts.FieldByName('_PersonName5').DisplayLabel := 'نام ' +
      FieldByName('Person5Caption').AsString;

    // b := FieldByName('DiscountActive').AsInteger and
    // Integer(CHkDeficitValue2) <> 0;
    // setColumns2(DBGrid1, b, 'DeficitValue2');
    //
    // b := FieldByName('DiscountActive').AsInteger and
    // Integer(CHkDeficitValue3) <> 0;
    // setColumns2(DBGrid1, b, 'DeficitValue3');

    b := FieldByName('ArzActive').AsInteger > 0;
    setColumns2(DBGrid1, b, 'ArzAmount');

    b := FieldByName('DiscountActive').AsInteger and
      Integer(CHkDeficitValue) <> 0;
    // b := FieldByName('DiscountActive').Value = 1;
    setColumns2(DBGrid1, b, 'DeficitValue');
    setColumns2(DBGrid1, b, 'PayebelPrice2');
    setColumns2(DBGrid1, not b, 'priceWithDef');
    b := b or (FieldByName('VATActive').AsInteger = 1) OR
      (FieldByName('PawsFieldsActive').AsInteger > 0) OR
      (FieldByName('CommissionActive').AsInteger > 0);
    setColumns2(DBGrid1, b, 'TotallSellPrice');

    b := not canfilter;
    setColumns2(DBGrid1, b, 'StoreID');
    setColumns2(DBGrid1, b, 'c_StoreName');
    b := FieldByName('Store2Active').Value > 0;
    setColumns2(DBGrid1, b, 'StoreID2');
    setColumns2(DBGrid1, b, 'c_StoreName2');

    qryRecipts.FieldByName('StoreID').DisplayLabel := 'كد ' +
      FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('c_StoreName').DisplayLabel := 'نام ' +
      FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('StoreID2').DisplayLabel := 'كد ' +
      FieldByName('Store2Caption').AsString;
    qryRecipts.FieldByName('c_StoreName2').DisplayLabel := 'نام ' +
      FieldByName('Store2Caption').AsString;

    b := FieldByName('NoteShow').AsInteger in [1, 3];
    setColumns2(DBGrid1, b, 'ReciptNote');

    setColumns2(DBGrid1, (FieldByName('CorrelateReciptType').AsInteger > 0) or
      (FieldByName('CorrelateReciptTypes').AsString <> '-1'), 'FactorNumber');
    setColumns2(DBGrid1, FieldByName('SecondTypeActive').AsInteger in [1, 3],
      'SecondTypeName');

    b := FieldByName('StandardRateActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'StandardRate');

    AidInfoActive := FieldByName('AidInfoActive').AsInteger in [1, 3, 4];
    setColumns2(DBGrid1, AidInfoActive, 'AidNumber');
    setColumns2(DBGrid1, AidInfoActive, 'AidDate');
    qryRecipts.FieldByName('AidNumber').DisplayLabel := 'شماره ' +
      FieldByName('AidInfoCaptionNo').AsString;
    chkAidNumber.Caption := 'جمع ' + FieldByName('AidInfoCaptionNo').AsString;
    qryRecipts.FieldByName('AidDate').DisplayLabel := 'تاريخ ' +
      FieldByName('AidInfoCaption').AsString;

    b := FieldByName('ShowEntityWeightOnList').AsInteger = 1;
    setColumns2(DBGrid1, b and opt.EntityDisplay, 'Entity');
    setColumns2(DBGrid1, b and opt.WeightDisplay, 'Weight');

    UseUnitM := FieldByName('UseUnitCase').AsInteger in [1, 3];
    setColumns2(DBGrid1, UseUnitM, 'UseUnitID');
    setColumns2(DBGrid1, UseUnitM, '_UseUnitName');
    qryRecipts.FieldByName('UseUnitID').DisplayLabel :=
      'كد' + FieldByName('UseUnitCaseCaption').AsString;
    qryRecipts.FieldByName('_UseUnitName').DisplayLabel :=
      FieldByName('UseUnitCaseCaption').AsString;

    b := FieldByName('DeficitsActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'DeficitAddDec');
    setColumns2(DBGrid1, b, 'priceWithDef');

    SellsEmporiumActive := FieldByName('SellsEmporiumActive').AsInteger = 1;
    setColumns2(DBGrid1, SellsEmporiumActive, 'SellsEmporium');
    setColumns2(DBGrid1, SellsEmporiumActive, 'SellsEmporiumName');

    SellsMethodActive := FieldByName('SellsMethodActive').AsInteger = 1;
    setColumns2(DBGrid1, SellsMethodActive, 'SellsMethod');
    setColumns2(DBGrid1, SellsMethodActive, 'SellsMethodName');

    ReciptsRowActive := FieldByName('ReciptsRowActive').AsInteger = 1;
    setColumns2(DBGrid1, ReciptsRowActive, 'ReciptsRowActive');

    // actReciptDelete.Visible := not(FieldByName('CorrelateReciptType')
    // .AsInteger > 0);
    // actReciptDelete.Enabled := not(FieldByName('CorrelateKind').AsInteger > 0);

    actCorrelateRecipt.Visible := FieldByName('CorrelateReciptType')
      .AsInteger > 0;
    actCorrelateRecipt.Enabled := FieldByName('CorrelateKind').AsInteger > 0;

    actNewReciptsCorrelatePrice.Visible := actCorrelateRecipt.Visible;

    actCancellationFixes.Enabled := User.PowerUser;

    // b := DefaultDateActive(qryInitQry);
    // setColumns2(DBGrid1, b, 'DefaultDate');

    b := FieldByName('VATActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'TaxValue');

    b := FieldByName('MachineActive').AsInteger in [1, 3];
    setColumns2(DBGrid1, b, 'MachineName');
    setColumns2(DBGrid1, b, 'MachineNo');

    b := FieldByName('SellEffect').AsInteger > 0;
    setColumns2(DBGrid1, b, 'TAXID');
    setColumns2(DBGrid1, b, 'IRTAXID');
    setColumns2(DBGrid1, b, 'LoanPayment');
    setColumns2(DBGrid1, b, 'tax_statusNote');

    ReturnRecallType9(qryInitQry, qryRecipts, mnuReturnRecallType9);

    ConversionCoAct := FieldByName('ConversionCoSerial').AsInteger > 0;

    actRecallSpecialReciptsF.Visible := FieldByName('RecallType').AsInteger
      in [2, 5, 10, 11, 13, 15, 16];

    // دسترسی منو های تغییر وضعیت ================
    A := (CurAccess and Integer(akChangeState) <> 0);

    actReciptState0.Visible :=
      CheckUserlevel(FieldByName('State0ChangeLevelID'), qryRecipts,
      False) and A;

    actReciptState1.Visible :=
      CheckUserlevel(FieldByName('State1ChangeLevelID'), qryRecipts,
      False) and A;

    actReciptState2.Visible :=
      CheckUserlevel(FieldByName('State2ChangeLevelID'), qryRecipts,
      False) and A;

    actReciptState3.Visible :=
      CheckUserlevel(FieldByName('State3ChangeLevelID'), qryRecipts,
      False) and A;

    actReciptState4.Visible :=
      CheckUserlevel(FieldByName('State0ChangeLevelID'), qryRecipts, False) AND
      ((FieldByName('AutoStateChange').AsInteger in [3]) or
      ((Settings and Integer(CHKkReciptState4And5Active)) <> 0)) and A;
    actReciptState5.Visible :=
      CheckUserlevel(FieldByName('State0ChangeLevelID'), qryRecipts, False) AND
      actReciptState4.Visible;

    actTransmittal.Visible := A;

    actwebNipc.Visible := (Settings and Integer(CHKwebNipc) <> 0);
    actwebNipc.Caption := 'انتقال  ' + FieldByName('ReciptCaption').AsString +
      ' به سامانه جامع انبارها';

    ts := TStringList.Create;
    ts.Text := qryInitQry.FieldByName('LabelCaptions').AsString;
    for i := 0 to ts.Count - 1 do
    begin
      if qryRecipts.FindField(ts.KeyNames[i]) <> nil then
        qryRecipts.FieldByName(ts.KeyNames[i]).DisplayLabel :=
          ts.ValueFromIndex[i];
    end;
    ts.Free;

  end; // with for InitQry
  InitPOP;
  FieldLst := 'R1.ReciptID';
  for i := 2 to qryRecipts.FieldCount - 1 do
  begin
    FieldLst := FieldLst + ', R1.' + qryRecipts.Fields[i].FieldName;
    if i mod 6 = 0 then
      FieldLst := FieldLst + #13#10;
  end;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ReciptsDeficits.DeficitID, Deficits.DeficitName';
    SQL.Add('FROM ReciptsDeficits INNER JOIN');
    SQL.Add('Deficits ON ReciptsDeficits.DeficitID = Deficits.DeficitID INNER JOIN');
    SQL.Add('Recipts ON ReciptsDeficits.ReciptID = Recipts.ReciptID');
    SQL.Add('WHERE (Recipts.ReciptType BETWEEN :ReciptTypeFrom AND :ReciptTypeTo)');
    SQL.Add('AND (ReciptsDeficits.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('GROUP BY ReciptsDeficits.DeficitID, Deficits.DeficitName');
    SQL.Add('ORDER BY ReciptsDeficits.DeficitID');
    if formType = 0 then
    begin
      Parameters.ParamByName('ReciptTypeFrom').Value := 0;
      Parameters.ParamByName('ReciptTypeTo').Value := 9999;
    end
    else
    begin
      Parameters.ParamByName('ReciptTypeFrom').Value := formType;
      Parameters.ParamByName('ReciptTypeTo').Value := formType;
    end;
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Active := True;
    SubQry := '(SELECT ReciptsDeficits.ReciptID, ReciptsDeficits.ServerID, ReciptsDeficits.YearID'
      + #13#10;
    while not Eof do
    begin
      SubQry := SubQry + #13#10 +
        Format(',SUM(CASE WHEN ReciptsDeficits.DeficitID = %d  THEN ReciptsDeficits.DeficitAdd - ReciptsDeficits.DeficitDec ELSE 0 END) as DeficitID%d',
        [FieldByName('DeficitID').AsInteger, FieldByName('DeficitID')
        .AsInteger]);
      FieldDef := FieldDef + ',tbl_ReciptsDeficits.DeficitID' +
        FieldByName('DeficitID').AsString;
      with TBCDField.Create(qryRecipts) do
      begin
        FieldName := 'DeficitID' + FieldByName('DeficitID').AsString;
        DisplayLabel := FieldByName('DeficitName').AsString;
        FieldKind := fkData;
        DataSet := qryRecipts;
        Name := 'qryRecipts' + FieldName;
        currency := True;
        qryRecipts.FieldDefs.Add(Name, ftCurrency, 0, True);
        DBGrid1.Columns.Add;
        DBGrid1.Columns.Items[DBGrid1.Columns.Count - 1].Title.Caption :=
          FieldByName('DeficitName').AsString;
        DBGrid1.Columns.Items[DBGrid1.Columns.Count - 1].Width := 90;
        DBGrid1.Columns.Items[DBGrid1.Columns.Count - 1].FieldName := FieldName;
        // SumGrid2.FieldsName := SumGrid2.FieldsName + FieldName + ';';
      end;
      Next;
    end;
    Active := False;
  end;
  with qryRecipts Do
  begin
    Active := False;

  end; // with for qryformlist

  chkReciptNumberCo.Visible := ConversionCoAct;
  if ConversionCoAct then
  begin
    with TIntegerField.Create(qryRecipts) do
    begin
      FieldName := 'ReciptNumberCo';
      DataSet := qryRecipts;
      Name := 'qryRecipts' + FieldName;
      Tag := 3;
      DisplayLabel := 'شماره ف ضرائب';
      qryRecipts.FieldDefs.Add(Name, ftInteger, 0, True);
      With DBGrid1.Columns.Add do
      begin
        FieldName := 'ReciptNumberCo';
        Title.Font.Color := clBlue;
      end;
    end;

    with TStringField.Create(qryRecipts) do
    begin
      FieldName := 'ReciptDateCo';
      DataSet := qryRecipts;
      Name := 'ReciptDateCo' + FieldName;
      Tag := 3;
      DisplayLabel := 'تاريخ ف ضرائب';
      qryRecipts.FieldDefs.Add(Name, ftString, 10, True);
      Size := 10;
      With DBGrid1.Columns.Add do
      begin
        FieldName := 'ReciptDateCo';
        Title.Font.Color := clBlue;
      end;
    end;

  end;

  if ((RecallTypeOption and Integer(chkParentForm)) <> 0) then
    with TStringField.Create(qryRecipts) do
    begin
      FieldName := 'ParentForm';
      DataSet := qryRecipts;
      Name := 'ParentForm' + FieldName;
      DisplayLabel := 'فراخوان شده از/با';
      qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
      Size := 100;
      Width := 100;
      With DBGrid1.Columns.Add do
      begin
        FieldName := 'ParentForm';
        Title.Font.Color := clGreen;
        Index := 1;
      end;
    end;

  IF FindParentReciptID <> EmptyStr then
  begin
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'DECLARE @ReciptCaption VARCHAR(500)=''''';
      SQL.Add('SELECT @ReciptCaption=@ReciptCaption+''/''+ ReciptCaption');
      SQL.Add('FROM ReciptTypes');
      SQL.Add('WHERE (ReciptType IN (' + FindParentReciptID + '))');
      SQL.Add('SELECT @ReciptCaption');
      Active := True;
      ReciptCaption := Fields[0].AsString;
      Active := False;

    end;
    with TIntegerField.Create(qryRecipts) do
    begin
      FieldName := 'ParentReciptNumber';
      DataSet := qryRecipts;
      Name := 'qryRecipts' + FieldName;
      Tag := 3;
      DisplayLabel := 'شماره' + ReciptCaption;
      qryRecipts.FieldDefs.Add(Name, ftInteger, 0, True);
      With DBGrid1.Columns.Add do
      begin
        FieldName := 'ParentReciptNumber';
        Title.Font.Color := clRed;
      end;
    end;

  end;

  actDocNo.Enabled := (CheckUserlevel(qryInitQry.FieldByName('AccCodeLevelID'),
    qryRecipts, False)) OR (User.PowerUser);

  actDocNo.Visible := not opt.CheckMakeDoc4DelEdit;
  if not actDocNo.Visible then
    btnPrint.Left := btnDocNo.Left;

  actSortRun.Visible := User.PowerUser; // كاربرسطح بالا
  initReportName(qryInitQry, PopupMenu1, mnu4allClick);

end;

procedure TRpt001F.actFilterExecute(Sender: TObject);
var
  MnuPlaceIDs, SQL, WhreSQl: String;
  fi: TfilterF;
  i: Integer;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      AddItem(DMf.adcBSell, 'storeId2', 'انبار2', 'كدانبار2', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT  n_StoreID,c_StoreName FROM dbo.Stores ', 'Select 0,32767 ');

      if ((Settings and Integer(chkTruckNumberFilterInlist)) <> 0) then
        AddItemFilter(GetFilter, TFilterTruckNumber);
      // AddItem(DMf.adcBSell, 'ADDItems', 'انتخاب جزئیات', 'جزئیات', ftUnknown,
      // dvDefaults, '0', '', ciRadioGroup,
      // 'SELECT 0 As MasterType,''ندارد'' as MasterName Union All ' +
      // 'SELECT 1 ,''دارد''  ');

      if ((ShowSettings and Integer(chkAidNumberFilterInlist)) <> 0) then
        AddItem(DMf.adcBSell, 'AidNumber', 'اطلاعات كمكي', 'شماره', ftString,
          dvMinMax, '', '', ciSimple, '', 'Select ''0'',''9999999999999999''');

      if ((ShowSettings and Integer(chkAidDateFilterInlist)) <> 0) then
        AddItemFilter(GetFilter, TFilterAidDate);

      if ReciptsRowActive then
        AddItem(DMf.adcBSell, 'ReciptsRow', 'رديف فرم', 'شماره', ftInteger,
          dvMinMax, '', '', ciSimple, '', 'Select 0,2147483647  ');

      if SellsMethodActive then
        AddItemFilter(GetFilter, TFilterSellsMethod);

      if SellsEmporiumActive then
        AddItemFilter(GetFilter, TFilterSellsEmporium);

      if qryInitQry.FieldByName('SecondTypeActive').AsInteger in [1, 3] then
        AddItem(DMf.adcBSell, 'LookUpsCode', 'نوع اطلاعات', 'كد اطلاعات ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT Code,Name FROM LookUps WHERE (kind = ' +
          qryInitQry.FieldByName('FormKindSerial').AsInteger.ToString + ')',
          'SELECT 0,9999 ', True);

      // 'SELECT distinct LookUps.Code as Code, LookUps.Name as Name FROM Recipts INNER JOIN LookUps ON '
      // + 'Recipts.SecondType = LookUps.LookUpID ',
      // 'SELECT MIN(LookUps.Code),MAX(LookUps.Code) FROM Recipts LEFT OUTER JOIN LookUps ON '
      // + 'Recipts.SecondType = LookUps.LookUpID');

      if UseUnitM then
        AddItem(DMf.adcBSell, 'UseUnitID',
          qryInitQry.FieldByName('UseUnitCaseCaption').AsString, 'كد',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT UseUnitID, UseUnitName FROM  UseUnits ',
          'SELECT 0,2147483647');

      if opt.ChkUsersCustomersGroupsActive then
        WhreSQl :=
          Format(' AND (dbo.ChkUsersCustomersGroups( %d , %d , CustID  ) = 1)',
          [IfThen(User.PowerUser, 1, 0), User.id])
      else
        WhreSQl := EmptyStr;

      if qryInitQry.FieldByName('Person5Active').AsInteger = 1 then
        AddItem(DMf.adcBSell, 'PersonID5',
          ['كد ' + qryInitQry.FieldByName('Person5Caption').AsString,
          ' نام  ' + qryInitQry.FieldByName('Person5Caption').AsString,
          'کد ملی'], ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CustID,CustName,NationalID FROM Vu_CustomersGroups_F ' +
          'WHERE GroupType in(' + Trim(qryInitQry.FieldByName('CustomerKind5')
          .AsString) + ')' + WhreSQl, ' SELECT 0,2147483647 ');

      if qryInitQry.FieldByName('Person4Active').AsInteger = 1 then
        AddItem(DMf.adcBSell, 'PersonID4',
          ['كد ' + qryInitQry.FieldByName('Person4Caption').AsString,
          ' نام  ' + qryInitQry.FieldByName('Person4Caption').AsString,
          'کد ملی'], ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CustID,CustName,NationalID FROM Vu_CustomersGroups_F ' +
          'WHERE GroupType in(' + Trim(qryInitQry.FieldByName('CustomerKind4')
          .AsString) + ')' + WhreSQl, ' SELECT 0,2147483647 ');

      if (qryInitQry.FieldByName('Person3Active').AsInteger = 1) then
        AddItem(DMf.adcBSell, 'PersonID3',
          ['كد ' + qryInitQry.FieldByName('Person3Caption').AsString,
          ' نام  ' + qryInitQry.FieldByName('Person3Caption').AsString,
          'کد ملی'], ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CustID,CustName,NationalID FROM Vu_CustomersGroups_F ' +
          'WHERE GroupType in(' + Trim(qryInitQry.FieldByName('CustomerKind3')
          .AsString) + ')' + WhreSQl, ' SELECT 0,2147483647 ');

      if qryInitQry.FieldByName('Person2Active').AsInteger = 1 then
        AddItem(DMf.adcBSell, 'PersonID2',
          ['كد ' + qryInitQry.FieldByName('Person2Caption').AsString,
          ' نام  ' + qryInitQry.FieldByName('Person2Caption').AsString,
          'کد ملی'], ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CustID,CustName,NationalID FROM Vu_CustomersGroups_F ' +
          'WHERE GroupType in(' + Trim(qryInitQry.FieldByName('CustomerKind2')
          .AsString) + ')' + WhreSQl, ' SELECT 0,2147483647 ');

      if qryInitQry.FieldByName('MasirActive').AsInteger = 1 then
        AddItem(DMf.adcBSell, 'MasirID', 'مسير', 'كد', ftInteger, dvMinMax, '',
          '', ciLookup, 'SELECT MasirID,MasirText FROM AddressInMasir',
          'SELECT 0,2147483647');

      if qryInitQry.FieldByName('Person1Active').AsInteger = 1 then
      begin
        AddItem(DMf.adcBSell, 'PersonID1',
          ['كد ' + qryInitQry.FieldByName('Person1Caption').AsString,
          ' نام  ' + qryInitQry.FieldByName('Person1Caption').AsString,
          'کد ملی'], ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CustID,CustName,NationalID FROM Vu_CustomersGroups_F ' +
          'WHERE GroupType in(' + Trim(qryInitQry.FieldByName('CustomerKind1')
          .AsString) + ')' + WhreSQl, ' SELECT 0,2147483647 ');

        AddItemFilter(GetFilter, TFilterCustomerGrpID);

      end;

      AddItemFilter(GetFilter, TFilterStates);

      if ((Settings and Integer(ChkConfigDate)) <> 0) then
        AddItemFilter(GetFilter, TFilterConfigDate)
      else
        AddItemFilter(GetFilter, TFilterReciptDate);

      if opt.DefaultDateActive then
        AddItemFilter(GetFilter, TFilterDefaultDate);

      AddItemFilter(GetFilter, TFilterYearID);

      if CallReciptNumber <> 0 then
        SQL := 'Select ' + IntToStr(CallReciptNumber) + ',' +
          IntToStr(CallReciptNumber)
      else
        SQL := 'Select 0,2147483647 ';
      AddItem(DMf.adcBSell, 'number', 'فرم', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '', SQL, True);

      if canfilter then
        AddItem(DMf.adcBSell, 'storeId', 'انبار', 'نام انبار', ftInteger,
          dvDefaults, '', '', ciCombo,
          'SELECT  n_StoreID, c_StoreName FROM Stores', '', True)
      else
        AddItem(DMf.adcBSell, 'storeId', 'انبار', 'كدانبار', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT  n_StoreID,c_StoreName FROM dbo.Stores ',
          'Select 0,32767 ', True);

      if formType = 0 then
      begin
        i := mdiMainF.MainFrame.GetActiveIndex;

        case i of
          4, 5:
            MnuPlaceIDs := 'WHERE (Recipts.ReciptType in(4,5,31,140))';
          24:
            MnuPlaceIDs := EmptyStr;
        else
          MnuPlaceIDs := 'WHERE (SUBSTRING(MnuPlaceIDs, ' + IntToStr(i + 1) +
            ', 1) = 1)';
        end;

        AddItem(DMf.adcBSell, 'TypeChecked', 'انتخاب فرمها ', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT DISTINCT Recipts.ReciptType, ReciptTypes.ReciptCaption  ' +
          ' FROM ReciptTypes INNER JOIN Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType '
          + MnuPlaceIDs + ' ORDER BY Recipts.ReciptType');

      end;

      if qryInitQry.FieldByName('ReciptNumberOfType').AsString.Length > 3 then
      begin
        AddItem(DMf.adcBSell, 'TypeChecked', 'انتخاب فرمها ', '', ftUnknown,
          dvDefaults, 'false', '', ciCheck,
          'SELECT ReciptType, ReciptCaption FROM ReciptTypes  ' +
          ' WHERE (ReciptType in(' + qryInitQry.FieldByName
          ('ReciptNumberOfType').AsString + '))');

      end;

      if ActiveCalcCostStorage then
      begin
        AddItem(DMf.adcBSell, 'CalcCostStorage', 'انتخاب  ', '', ftUnknown,
          dvDefaults, '0', '', ciRadioGroup,
          Format('%s#%s#%s', ['همه موارد',
          qryInitQry.FieldByName('CalcCostStorageCaption').AsString +
          ' (فعال) ', qryInitQry.FieldByName('CalcCostStorageCaption').AsString
          + ' (غیر فعال) ']));

      end;

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        pnlLblLimitPlace.Hint := GetFilterStringCaption;
        UpdateList;
      end; // if
    finally
      fi.Free;
    end; // t
  end;
end;

procedure TRpt001F.ppLblShowLimitPlace1GetText(Sender: TObject;
  var Text: String);
begin
  Text := LblShowLimitPlace1.Caption;
end;

procedure TRpt001F.ppLblShowLimitPlace2GetText(Sender: TObject;
  var Text: String);
begin
  Text := LblShowLimitPlace2.Caption;
end;

procedure TRpt001F.UpdateList;
var
  S: String;
begin
  Entity_Weight(DBGrid1);

  // ADDItems := GetcFrom(myParams.ParamValues['ADDItems'], ftInteger) = '1';
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryRecipts);
  with qryRecipts Do
  begin
    Active := False;

    FindParentReciptID := qryInitQry.FieldByName('FindParentReciptID')
      .AsString.Trim;

    SQL.Text := 'SELECT ' + FieldLst + #13#10 + FieldDef;

    if ConversionCoAct then
      SQL.Add(',IsNull(Recipts.ReciptNumber,0) AS ReciptNumberCo,Recipts.ReciptDate AS ReciptDateCo');

    IF FindParentReciptID <> EmptyStr then
    BEGIN
      SQL.Add(',ParentRecipts.ReciptNumber AS ParentReciptNumber');
    END;

    // if ADDItems then
    // SQL.Add(',ReciptItems.PersonID1 AS PersonID1D, Customers_D.CustNameD');

    if ((RecallTypeOption and Integer(chkParentForm)) <> 0) then
      SQL.Add(',dbo.GetParentForm2(R1.ReciptID, R1.ServerID, R1.YearID) AS ParentForm');

    SQL.Add(', Fitful.DetailCode AS Appendix');

    SQL.Add('FROM dbo.ReciptsList( :ReciptTypeFrom, :ReciptTypeTo, :NumberFrom, :NumberTo');
    SQL.Add(', :DateFrom , :DateTo , :StoreFrom, :StoreTo, :States , :LookUpsCodeFrom, :LookUpsCodeTo');
    SQL.Add(', :PersonID1From , :PersonID1To , :UseUnitIDFrom , :UseUnitIDTo , :PersonID3From , :PersonID3To ');
    SQL.Add(', :PersonID4From , :PersonID4To , :PersonID5From , :PersonID5To');
    SQL.Add(', :SellsMethodFrom  ,:SellsMethodTo ,   :SellsEmporiumFrom  , :SellsEmporiumTo');
    SQL.Add(', :ReciptsRowFrom , :ReciptsRowTo , :AidNumberFrom , :AidNumberTo , :PersonID2From');
    SQL.Add(', :PersonID2To , :MasirIDFrom , :MasirIDTo , :UserID');
    SQL.Add(', :UserAdmin  ,:CustomerGrpIDFrom  , :CustomerGrpIDTo , :DefaultDateFrom , :DefaultDateTo');
    SQL.Add(' , :AidDateFrom , :AidDateTo ,:CorrelateReciptTypes , :Store2From , :Store2To , :YearIDFrom , :YearIDTo  )AS R1 ');
    SQL.Add('LEFT OUTER JOIN ' + SubQry + ' FROM ReciptsDeficits ');

    SQL.Add('GROUP BY ReciptsDeficits.ReciptID, ReciptsDeficits.ServerID, ReciptsDeficits.YearID) ');
    SQL.Add('AS tbl_ReciptsDeficits ON R1.ReciptID = tbl_ReciptsDeficits.ReciptID');
    SQL.Add('AND R1.ServerID = tbl_ReciptsDeficits.ServerID AND R1.YearID = tbl_ReciptsDeficits.YearID');
    SQL.Add('CROSS JOIN Fitful ');
    if ConversionCoAct then
      SQL.Add(Format
        ('LEFT OUTER JOIN Recipts ON R1.ServerID = Recipts.ServerID ' +
        'AND R1.YearID = Recipts.YearID ' +
        'AND R1.ReciptID = Recipts.ParentCoReciptID AND Recipts.ReciptType = %d ',
        [qryInitQry.FieldByName('ConversionCoSerial').AsInteger]));
    // 'AND R1.ReciptID = Recipts.ParentCoReciptID ');

    // SQL.Add('INNER JOIN UsersStore ON R1.StoreID = UsersStore.n_StoreID');

    // if ADDItems then
    // begin
    // SQL.Add('LEFT OUTER JOIN ReciptItems ON R1.ReciptID = ReciptItems.ReciptID '
    // + 'AND R1.YearID = ReciptItems.YearID AND R1.ServerID = ReciptItems.ServerID');
    // SQL.Add('LEFT OUTER JOIN Customers Customers_D ON ReciptItems.PersonID1 = Customers_D.CustID');
    // end;

    UserSCA := qryInitQry.FieldByName('UserSecurityCheckActive').AsLargeInt;
    if UserSecurityCheck(UserSCA, UserFilterFormOnCustomer1) and
      (not User.PowerUser) then
    begin
      SQL.Add('INNER JOIN Customers AS Customers_1 ON R1.PersonID1 = Customers_1.CustID ');
      SQL.Add('AND ('',''+Customers_1.OperatorID+'','' LIKE N''%,' +
        User.id.ToString.Trim + ',%'')');
    end;
    if UserSecurityCheck(UserSCA, UserFilterFormOnCustomer2) and
      (not User.PowerUser) then
    begin
      SQL.Add('INNER JOIN Customers AS Customers_2 ON R1.PersonID2 = Customers_2.CustID ');
      SQL.Add('AND ('',''+Customers_2.OperatorID+'','' LIKE N''%,' +
        User.id.ToString.Trim + ',%'')');
    end;
    if UserSecurityCheck(UserSCA, UserFilterFormOnCustomer3) and
      (not User.PowerUser) then
    begin
      SQL.Add('INNER JOIN Customers AS Customers_3 ON R1.PersonID3 = Customers_3.CustID ');
      SQL.Add('AND ('',''+Customers_3.OperatorID+'','' LIKE N''%,' +
        User.id.ToString.Trim + ',%'')');
    end;

    IF FindParentReciptID <> EmptyStr then
    begin
      SQL.Add('LEFT OUTER JOIN Recipts AS ParentRecipts ON ParentRecipts.ReciptType in('
        + FindParentReciptID + ')  ');
      SQL.Add('AND R1.ReciptID = ParentRecipts.ParentReciptID');
      SQL.Add('AND R1.ServerID = ParentRecipts.ServerID ');
      SQL.Add('AND R1.YearID = ParentRecipts.YearID');
    end;

    // SQL.Add('WHERE (R1.YearID BETWEEN :YearIDFrom AND :YearIDTo )'); add to  functiom
    SQL.Add('WHERE (1=1)');

    if ((formType = 0) or (qryInitQry.FieldByName('ReciptNumberOfType')
      .AsString.Length > 3)) then
    begin
      S := GetcFrom(myParams.ParamValues['TypeChecked'], ftString);
      if S <> EmptyStr then
      begin
        S := ' AND R1.ReciptType IN (' + S + ')';
        SQL.Add(S);
      end
      else if (qryInitQry.FieldByName('ReciptNumberOfType').AsString.Length > 3)
      then
      begin
        S := ' AND R1.ReciptType IN (' + formType.ToString + ')';
        SQL.Add(S);
      end

    end;

    // SQL.Add('And ((:NotReciptNumber2 =''-1'') or R1.ReciptNumber not in (Select part From dbo.SplitString(:NotReciptNumber,'','')))');
    setInOrNotIn4QRy(qryRecipts, myParams, 'number', 'R1.ReciptNumber');
    // SQL.Add('And ((:NotStoreID2 =''-1'') or R1.StoreID not in (Select part From dbo.SplitString(:NotStoreID,'','')))');
    setInOrNotIn4QRy(qryRecipts, myParams, 'StoreID', 'R1.StoreID');

    // SQL.Add('And ((:NotSecondType2 =''-1'') or R1.SecondType not in (Select part From dbo.SplitString(:NotSecondType,'','')))');
    if qryInitQry.FieldByName('SecondTypeActive').AsInteger in [1, 3] then
      setInOrNotIn4QRy(qryRecipts, myParams, 'LookUpsCode', 'R1.SecondType');

    // SQL.Add('AND ( (UsersStore.n_UserID = :UserIDStore ) OR (1 = :User_Admin)) ');
    SQL.Add('AND (NOT (dbo.ChkUsersStore(:UserIDStore , R1.StoreID, :User_Admin) IS NULL))');
    Parameters.ParamByName('UserIDStore').Value := User.id;
    Parameters.ParamByName('User_Admin').Value := IfThen(User.PowerUser, 1, 0);

    if ((formType = 0) or (qryInitQry.FieldByName('ReciptNumberOfType')
      .AsString.Length > 3)) then
    begin
      Parameters.ParamByName('ReciptTypeFrom').Value := 0;
      Parameters.ParamByName('ReciptTypeTo').Value := 9999;
      // SQL.Add(' :TypeChecked ');
    end
    else
    begin
      Parameters.ParamByName('ReciptTypeFrom').Value := formType;
      Parameters.ParamByName('ReciptTypeTo').Value := formType;
    end;

    if ActiveCalcCostStorage then
    begin
      SQL.Add('AND (CASE WHEN (:CalcCostStorage1From = 1) THEN 1');
      SQL.Add('WHEN (:CalcCostStorage2From = 2) AND (R1.CalcCostStorage = 1) THEN 1');
      SQL.Add('WHEN (:CalcCostStorage3From = 3) AND (R1.CalcCostStorage = 0) THEN 1');
      SQL.Add('ELSE 0 END)=1');
    end;

    if ((Settings and Integer(chkTruckNumberFilterInlist)) <> 0) then
      SQL.Add('And((R1.TruckNumber='''')or(R1.TruckNumber BetWeen :TruckNumberFrom and :TruckNumberTo))');

    // // SQL.Add('GROUP BY ' + FieldLst);
    // if ConversionCoAct then
    // SQL.Add(',Recipts.ReciptNumber ,Recipts.ReciptDate ');
    SQL.Add('ORDER BY R1.ReciptNumber, R1.ReciptDate');
    // OrginalSQL := SQL.Text;
    AfterScroll := nil;

    Parameters.ParamByName('CorrelateReciptTypes').Value :=
      qryInitQry.FieldByName('CorrelateReciptTypes').AsString;

    if ((Settings and Integer(chkTruckNumberFilterInlist)) <> 0) then
    begin
      Parameters.ParamByName('TruckNumberFrom').Value :=
        GetcFrom(myParams.ParamValues['TruckNumber'], ftString);

      Parameters.ParamByName('TruckNumberTo').Value :=
        GetcTo(myParams.ParamValues['TruckNumber'], ftString);
    end;

    if ActiveCalcCostStorage then
    begin
      Parameters.ParamByName('CalcCostStorage1From').Value :=
        GetcFrom(myParams.ParamValues['CalcCostStorage'], ftInteger);
      Parameters.ParamByName('CalcCostStorage2From').Value :=
        GetcFrom(myParams.ParamValues['CalcCostStorage'], ftInteger);
      Parameters.ParamByName('CalcCostStorage3From').Value :=
        GetcFrom(myParams.ParamValues['CalcCostStorage'], ftInteger);

    end;

    Parameters.ParamByName('Store2From').Value :=
      GetcFrom(myParams.ParamValues['storeId2'], ftInteger);
    Parameters.ParamByName('Store2To').Value :=
      GetcTo(myParams.ParamValues['storeId2'], ftInteger);

    if canfilter then
    begin
      Parameters.ParamByName('StoreFrom').Value :=
        GetcTo(myParams.ParamValues['storeId'], ftInteger);
      Parameters.ParamByName('StoreTo').Value :=
        GetcTo(myParams.ParamValues['storeId'], ftInteger);
      lblStoreName.Caption :=
        GetcFrom(myParams.ParamValues['storeId'], ftString)
    end
    else
    Begin
      Parameters.ParamByName('StoreFrom').Value :=
        GetcFrom(myParams.ParamValues['storeId'], ftInteger);
      Parameters.ParamByName('StoreTo').Value :=
        GetcTo(myParams.ParamValues['storeId'], ftInteger);
    end; // else



    // Parameters.ParamByName('NotReciptNumber').Value :=
    // GetcNot(myParams.ParamValues['number']);
    // Parameters.ParamByName('NotReciptNumber2').Value :=
    // GetcNot(myParams.ParamValues['number']);

    Parameters.ParamByName('numberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('numberto').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);

    // Parameters.ParamByName('NotStoreID').Value :=
    // GetcNot(myParams.ParamValues['StoreID']);
    //
    // Parameters.ParamByName('NotStoreID2').Value :=
    // GetcNot(myParams.ParamValues['StoreID']);


    // Parameters.ParamByName('StateFrom').Value :=
    // GetcFrom(myParams.ParamValues['State'], ftInteger);
    // Parameters.ParamByName('StateTo').Value :=
    // GetcFrom(myParams.ParamValues['State'], ftInteger);

    Parameters.ParamByName('States').Value :=
      GetcFrom(myParams.ParamValues['States'], ftString);

    if qryInitQry.FieldByName('SecondTypeActive').AsInteger in [1, 3] then
    begin
      Parameters.ParamByName('LookUpsCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['LookUpsCode'], ftInteger);
      Parameters.ParamByName('LookUpsCodeTo').Value :=
        GetcTo(myParams.ParamValues['LookUpsCode'], ftInteger);
      // Parameters.ParamByName('NotSecondType').Value :=
      // GetcNot(myParams.ParamValues['LookUpsCode']);
      //
      // Parameters.ParamByName('NotSecondType2').Value :=
      // GetcNot(myParams.ParamValues['LookUpsCode']);
    end
    else
    begin
      Parameters.ParamByName('LookUpsCodeFrom').Value := 0;
      Parameters.ParamByName('LookUpsCodeTo').Value := 999999999;
      // Parameters.ParamByName('NotSecondType').Value := -1;
      // Parameters.ParamByName('NotSecondType2').Value := -1;
    end;

    if qryInitQry.FieldByName('Person1Active').AsInteger = 1 then
    begin
      Parameters.ParamByName('PersonID1From').Value :=
        GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
      Parameters.ParamByName('PersonID1To').Value :=
        GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

      Parameters.ParamByName('CustomerGrpIDFrom').Value :=
        GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
      Parameters.ParamByName('CustomerGrpIDTo').Value :=
        GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);
    end
    else
    begin
      // Parameters.ParamByName('PersonID1From').Value := 0;
      // Parameters.ParamByName('PersonID1To').Value := 9999;
      SQL.Text := StringReplace(SQL.Text, ':PersonID1From', '0',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':PersonID1To', '2147483647',
        [rfReplaceAll]);

      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID1From',
        '0', [rfReplaceAll]);
      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID1To',
        '2147483647', [rfReplaceAll]);

      SQL.Text := StringReplace(SQL.Text, ':CustomerGrpIDFrom', '0',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':CustomerGrpIDTo', '2147483647',
        [rfReplaceAll]);

      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text,
        ':CustomerGrpIDFrom', '0', [rfReplaceAll]);
      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text,
        ':CustomerGrpIDTo', '2147483647', [rfReplaceAll]);

    end;

    if qryInitQry.FieldByName('MasirActive').AsInteger = 1 then
    begin
      Parameters.ParamByName('MasirIDFrom').Value :=
        GetcFrom(myParams.ParamValues['MasirID'], ftInteger);
      Parameters.ParamByName('MasirIDTo').Value :=
        GetcTo(myParams.ParamValues['MasirID'], ftInteger);
    end
    else
    begin
      SQL.Text := StringReplace(SQL.Text, ':MasirIDFrom', '0', [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':MasirIDTo', '2147483647',
        [rfReplaceAll]);

      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':MasirIDFrom',
        '0', [rfReplaceAll]);
      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':MasirIDTo',
        '2147483647', [rfReplaceAll]);
    end;

    if qryInitQry.FieldByName('Person5Active').AsInteger = 1 then
    begin
      Parameters.ParamByName('PersonID5From').Value :=
        GetcFrom(myParams.ParamValues['PersonID5'], ftInteger);
      Parameters.ParamByName('PersonID5To').Value :=
        GetcTo(myParams.ParamValues['PersonID5'], ftInteger);
    end
    else
    begin
      SQL.Text := StringReplace(SQL.Text, ':PersonID5From', '0',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':PersonID5To', '2147483647',
        [rfReplaceAll]);

      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID5From',
        '0', [rfReplaceAll]);
      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID5To',
        '2147483647', [rfReplaceAll]);
    end;

    if qryInitQry.FieldByName('Person4Active').AsInteger = 1 then
    begin
      Parameters.ParamByName('PersonID4From').Value :=
        GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
      Parameters.ParamByName('PersonID4To').Value :=
        GetcTo(myParams.ParamValues['PersonID4'], ftInteger);
    end
    else
    begin
      SQL.Text := StringReplace(SQL.Text, ':PersonID4From', '0',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':PersonID4To', '2147483647',
        [rfReplaceAll]);

      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID4From',
        '0', [rfReplaceAll]);
      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID4To',
        '2147483647', [rfReplaceAll]);
    end;

    if qryInitQry.FieldByName('Person3Active').AsInteger = 1 then
    begin
      Parameters.ParamByName('PersonID3From').Value :=
        GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
      Parameters.ParamByName('PersonID3To').Value :=
        GetcTo(myParams.ParamValues['PersonID3'], ftInteger);
    end
    else
    begin
      SQL.Text := StringReplace(SQL.Text, ':PersonID3From', '0',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':PersonID3To', '2147483647',
        [rfReplaceAll]);

      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID3From',
        '0', [rfReplaceAll]);
      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID3To',
        '2147483647', [rfReplaceAll]);

    end;

    if qryInitQry.FieldByName('Person2Active').AsInteger = 1 then
    begin
      Parameters.ParamByName('PersonID2From').Value :=
        GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
      Parameters.ParamByName('PersonID2To').Value :=
        GetcTo(myParams.ParamValues['PersonID2'], ftInteger);
    end
    else
    begin
      SQL.Text := StringReplace(SQL.Text, ':PersonID2From', '0',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':PersonID2To', '2147483647',
        [rfReplaceAll]);

      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID2From',
        '0', [rfReplaceAll]);
      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':PersonID2To',
        '2147483647', [rfReplaceAll]);
    end;

    if UseUnitM then
    begin
      Parameters.ParamByName('UseUnitIDFrom').Value :=
        GetcFrom(myParams.ParamValues['UseUnitID'], ftInteger);
      Parameters.ParamByName('UseUnitIDTo').Value :=
        GetcTo(myParams.ParamValues['UseUnitID'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('UseUnitIDFrom').Value := 0;
      Parameters.ParamByName('UseUnitIDTo').Value := 9999;
    end;

    if SellsEmporiumActive then
    begin
      Parameters.ParamByName('SellsEmporiumFrom').Value :=
        GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
      Parameters.ParamByName('SellsEmporiumTo').Value :=
        GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('SellsEmporiumFrom').Value := 0;
      Parameters.ParamByName('SellsEmporiumTo').Value := 9999;
    end;
    if SellsMethodActive then
    begin
      Parameters.ParamByName('SellsMethodFrom').Value :=
        GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
      Parameters.ParamByName('SellsMethodTo').Value :=
        GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('SellsMethodFrom').Value := 0;
      Parameters.ParamByName('SellsMethodTo').Value := 9999;
    end;

    if ((ShowSettings and Integer(chkAidNumberFilterInlist)) <> 0) then
    begin
      Parameters.ParamByName('AidNumberFrom').Value :=
        GetcFrom(myParams.ParamValues['AidNumber'], ftString);
      Parameters.ParamByName('AidNumberTo').Value :=
        GetcTo(myParams.ParamValues['AidNumber'], ftString);

    end
    else
    begin
      SQL.Text := StringReplace(SQL.Text, ':AidNumberFrom', '''''',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':AidNumberTo',
        '''999999999999999999999999999999999999''', [rfReplaceAll]);

      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':AidNumberFrom',
        '''''', [rfReplaceAll]);
      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':AidNumberTo',
        '''999999999999999999999999999999999999''', [rfReplaceAll]);

    end;

    if ((ShowSettings and Integer(chkAidDateFilterInlist)) <> 0) then
    begin

      Parameters.ParamByName('AidDateFrom').Value :=
        GetcFrom(myParams.ParamValues['AidDate'], ftDate);
      Parameters.ParamByName('AidDateTo').Value :=
        GetcTo(myParams.ParamValues['AidDate'], ftDate);

    end
    else
    begin
      SQL.Text := StringReplace(SQL.Text, ':AidDateFrom', '''0000/00/00''',
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ':AidDateTo', '''9999/99/99''',
        [rfReplaceAll]);

      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':AidDateFrom',
        '''0000/00/00''', [rfReplaceAll]);
      qryUpDate.SQL.Text := StringReplace(qryUpDate.SQL.Text, ':AidDateTo',
        '''9999/99/99''', [rfReplaceAll]);
    end;

    if ReciptsRowActive then
    begin
      Parameters.ParamByName('ReciptsRowFrom').Value :=
        GetcFrom(myParams.ParamValues['ReciptsRow'], ftInteger);
      Parameters.ParamByName('ReciptsRowTo').Value :=
        GetcTo(myParams.ParamValues['ReciptsRow'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('ReciptsRowFrom').Value := 0;
      Parameters.ParamByName('ReciptsRowTo').Value := 9999;
    end;

    if opt.DefaultDateActive then
    begin
      Parameters.ParamByName('DefaultDateFrom').Value :=
        GetcFrom(myParams.ParamValues['DefaultDate'], ftDate);
      Parameters.ParamByName('DefaultDateTo').Value :=
        GetcTo(myParams.ParamValues['DefaultDate'], ftDate);
    end
    else
    begin
      Parameters.ParamByName('DefaultDateFrom').Value := '0000/00/00';
      Parameters.ParamByName('DefaultDateTo').Value := '9999/99/99';
    end;

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('YearIDFrom').Value :=
      GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    Parameters.ParamByName('YearIDTo').Value :=
      GetcTo(myParams.ParamValues['YearID'], ftInteger);

    Parameters.ParamByName('UserID').Value := User.id;

    Parameters.ParamByName('UserAdmin').Value := IfThen(User.PowerUser, 1, 0);

    LblShowLimitPlace1.Caption := 'محدوده شماره فرم : ' + ' از ' +
      IntToStr(Parameters.ParamValues['NumberFrom']) + ' تا ' +
      IntToStr(Parameters.ParamValues['NumberTo']);
    LblShowLimitPlace2.Caption := 'محدوده تاريخ فرم : ' + ' از ' +
      Parameters.ParamValues['DateFrom'] + ' تا ' + Parameters.ParamValues
      ['DateTo'];
    Active := True;
  end; // with

end;

procedure TRpt001F.FormCreate(Sender: TObject);
begin
  inherited;
  mnuEntity.Checked := opt.EntityOrWeight = 0;
  mnuWeight.Checked := opt.EntityOrWeight = 1;
  mnuEntity.Visible := opt.EntityOrWeight = 2;
  mnuWeight.Visible := opt.EntityOrWeight = 2;

  pp_LblState2Zero := False;
  qryItems.SQL.Text := StringReplace(qryItems.SQL.Text, 'Accounting',
    opt.AccountName, [rfIgnoreCase, rfReplaceAll]);
  InitForm;

  ppDBPipelineSumGrid2.DataSource := DBGrid1.srcSum;
  DBGrid1.OnDrawColumnCell := DBGrid1DrawColumnCell;
end;

procedure TRpt001F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close
end;

procedure TRpt001F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRpt001F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts, mainF);
end;

procedure TRpt001F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TRpt001F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TRpt001F.DBGrid1CellClick(Column: TColumnEh);
var
  T: TThread;
begin
  inherited;
  if ((Column.Field.FieldName = 'TAXID') or (Column.Field.FieldName = 'IRTAXID'))
  then
  begin

    T := TThread.CreateAnonymousThread(
      procedure()
      begin
        IRTAXIDFind(Column);
      end);
    T.FreeOnTerminate := True;
    T.Start;
  end;
end;

procedure TRpt001F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TRpt001F.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
var
  aDataSet: TDataSet;
begin
  inherited;
  if gdSelected in State then
  begin
    DBGrid1.Canvas.Brush.Color := $00B0CAFF;
    DBGrid1.Canvas.Font.Color := clWindowText;
  end
  else
  begin
    aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;

    if (aDataSet.FieldByName('ReciptState').AsInteger = 3) then
      DBGrid1.Canvas.Font.Color := clGray
    else
      DBGrid1.Canvas.Font.Color := clWindowText;

    if (qryInitQry.FieldByName('CorrelateReciptType').AsInteger <> 0) then
      if (qryInitQry.FieldByName('CorrelateReciptType').AsInteger <>
        aDataSet.FieldByName('RelatedReciptType').AsInteger) then
      begin
        DBGrid1.Canvas.Font.Color := clRed;
      end
      else
      begin
        if (qryInitQry.FieldByName('ConversionCoSerial').AsInteger > 0) then
          if (aDataSet.FieldByName('ReciptNumberCo').AsInteger = 0) then
          begin
            DBGrid1.Canvas.Font.Color := clBlue;
          end
          else
            DBGrid1.Canvas.Font.Color := clWindowText;
      end;

  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TRpt001F.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeMyComponent(Self, ['qryCust1', 'qryCust2', 'qryCust3', 'qryCust4',
    'qryCust5', 'srcCustomers1', 'srcCustomers2', 'srcCustomers3',
    'ppDBPipelineCustomers1', 'ppDBPipelineCustomers2',
    'ppDBPipelineCustomers3']);
  // SaveColWidth(DBGrid1, IntToStr(formType));
end;

procedure TRpt001F.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 6, True, IntToStr(formType));
end;

procedure TRpt001F.actReciptState1Execute(Sender: TObject);
var
  i, c: Integer;
  S, Descriptions: string;
  procedure sUPDATE;
  begin
    If S <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'UPDATE Recipts SET ReciptState = 1 ,LastUser = ''' +
          User.Name + ' قطعی' + ''' WHERE (ReciptState in(0,5)) AND ' +
          '(ReciptID IN (' + S + '))';
        SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID')
          .AsString);
        SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
        c := c + ExecSQL;

        Descriptions := IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ قطعي شد.';
        BigMessage(Descriptions, 1);

        SQL.Text := MakeSQLInsert(S, Descriptions, qryRecipts);
        ExecSQL;

        S := EmptyStr;
      end; // with
  end;

begin
  inherited;
  c := 0;
  if not CheckUserlevel(qryInitQry.FieldByName('ChangeStateLevelID'), qryRecipts)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي قطعي نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟' +
      #13#10 + 'فرم هايي كه موقت باشند تبديل به قطعي ميشوند.') <> mrYes then
      Exit;

  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if S <> '' then
          S := S + ',';
        S := S + FieldByName('ReciptID').AsString;
        if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
          if not FieldByName('ParentReciptID').IsNull then
            S := S + ',' + FieldByName('ParentReciptID').AsString;

        if ((RecallTypeOption and Integer(CHkNotUsingParentReciptID)) <> 0) then
        begin
          mnuAllCheck.Checked := True;
          qryReciptsAfterScroll(qryRecipts);
          mnuAllCheck.Checked := False;
          if not ReciptBe4PostCtrlEntAct(qryItems, qryRecipts, qryInitQry, True)
          then
            S := '0';
          if (i + 1) mod PartSise = 0 then
            sUPDATE;
          Break;
        end
        else
        begin
          if (i + 1) mod PartSise = 0 then
            sUPDATE;
        end;

      end;
    sUPDATE;
  finally
    finallyqryRecipts;
  end;
end;

procedure TRpt001F.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pp_LblState2Zero then
    TppLabel(FindComponent('ppLblState2Zero')).Visible :=
      qryRecipts.FieldByName('ReciptState').AsInteger = 3;

  if mnuAllCheck.Checked then
  begin

    with qryItems do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
        .FieldByName('YearID').AsInteger;
      Active := True;
    end; // with
    with qryTrades do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
        .FieldByName('YearID').AsInteger;
      Active := True;
    end; // with
    // SumGrid1.Active := False;
    // SumGrid1.Active := True;

    qryCustActive(qryCust1, qryRecipts.FieldByName('PersonID1').AsInteger);
    qryCustActive(qryCust2, qryRecipts.FieldByName('PersonID2').AsInteger);
    qryCustActive(qryCust3, qryRecipts.FieldByName('PersonID3').AsInteger);
    qryCustActive(qryCust4, qryRecipts.FieldByName('PersonID4').AsInteger);
    qryCustActive(qryCust5, qryRecipts.FieldByName('PersonID5').AsInteger);

    with qry_Deficits4Print do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
        .FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
        .FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
        .FieldByName('YearID').AsInteger;
      Active := True;
    end; // with

  end;

end;

procedure TRpt001F.actReciptState2Execute(Sender: TObject);
var
  i, c: Integer;
  S, Descriptions: string;

  procedure sUPDATE;
  begin
    If S <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'UPDATE Recipts SET ReciptState = 2 ,LastUser = ''' +
          User.Name + ' دائمی' + ''' ';
        SQL.Add('WHERE (ReciptState in(0,1)) ');
        SQL.Add('AND (ReciptID IN (' + S + '))');
        SQL.Add('AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
        SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);

        if ((Settings and Integer(chk1TruckNumberOnReciptState2)) <> 0) then
        begin
          SQL.Add('AND (TruckNumber NOT IN');
          SQL.Add('(SELECT DISTINCT TruckNumber');
          SQL.Add('FROM Recipts AS Recipts_1');
          SQL.Add('WHERE (ReciptState = 2)))');
        end;

        c := c + ExecSQL;

        Descriptions := IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ دائمي شد.';
        BigMessage(Descriptions, 0);

        SQL.Text := MakeSQLInsert(S, Descriptions, qryRecipts);
        ExecSQL;

        Active := False;
        S := EmptyStr;
      end;
  end;

begin
  inherited;
  if ((Settings and Integer(chk1TruckNumberOnReciptState2)) <> 0) then
    Descriptions := 'بررسی فرمها دائم با توجه به TruckNumber';
  if ((qryInitQry.FieldByName('ChangeAidReciptDate').AsInteger and
    Integer(CHkBeforReciptState2CHKCorrelate)) <> 0) then
    Descriptions := Descriptions + #13#10 +
      'بررسی و ثبت فرم مرتبط هم انجام می شود';

  c := 0;
  if not CheckUserlevel(qryInitQry.FieldByName('ChangeStateLevelID'), qryRecipts)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي دائمي نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟' +
      #13#10 + 'فرم هايي كه موقت يا قطعي باشند تبديل به دائم ميشوند.' + #13#10 +
      Descriptions) <> mrYes then
      Exit;

  BigMessageProgBar('در حال دائمي نمودن فرم‌', DBGrid1.SelectedRows.Count);

  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        if ((qryInitQry.FieldByName('ChangeAidReciptDate').AsInteger and
          Integer(CHkBeforReciptState2CHKCorrelate)) <> 0) then
          callstpNewReciptsCorrelate;

        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if S <> '' then
          S := S + ',';
        S := S + FieldByName('ReciptID').AsString;
        if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
          if not FieldByName('ParentReciptID').IsNull then
            S := S + ',' + FieldByName('ParentReciptID').AsString;

        if ((RecallTypeOption and Integer(CHkNotUsingParentReciptID)) <> 0) then
        begin
          mnuAllCheck.Checked := True;
          qryReciptsAfterScroll(qryRecipts);
          mnuAllCheck.Checked := False;
          if not ReciptBe4PostCtrlEntAct(qryItems, qryRecipts, qryInitQry, True)
          then
            S := '0';
          if (i + 1) mod PartSise = 0 then
            sUPDATE;
          Break;
        end
        else
        begin
          if (i + 1) mod PartSise = 0 then
            sUPDATE;
        end;

      end;
    sUPDATE;
  finally
    finallyqryRecipts;
  end;
end;

procedure TRpt001F.qryReciptsReciptStateGetText(Sender: TField;
var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(qryRecipts.FieldByName('ReciptState').AsInteger)
end;

procedure TRpt001F.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  case RadioGroup1.ItemIndex of
    0:
      begin
        qryRecipts.Filter := '(RelatedID <> 0) AND (RelatedID <> -1)';
        qryRecipts.Sort := 'RelatedID';
      end;
    1:
      qryRecipts.Filter := 'RelatedID = 0';
    2:
      begin
        qryRecipts.Filter := EmptyStr;
        qryRecipts.Sort := EmptyStr;
      end;
  end;
  qryRecipts.Filtered := qryRecipts.Filter <> EmptyStr;
end;

procedure TRpt001F.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRpt001F.ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRpt001F.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRpt001F.ppLblFormNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + Caption
end;

procedure TRpt001F.ppDBTxtStateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetReciptState(qryRecipts.FieldByName('ReciptState').AsInteger)
end;

procedure TRpt001F.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppDBPipelineSumGrid1.DataSource := DBGrid2.srcSum;
  pp_LblState2Zero := TppLabel(FindComponent('ppLblState2Zero')) <> nil;
  qryRecipts.AfterScroll := qryReciptsAfterScroll;
  qryReciptsAfterScroll(qryRecipts);
  AutoStateChange;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt001F.AutoStateChange;
var
  ReciptID, ServerID, YearID: Integer;
  S: string;
begin
  if (qryInitQry.FieldByName('AutoStateChange').AsInteger <> 1) then
    Exit;
  if ((formType = 0) and
    (not CheckUserlevel(qryInitQry.FieldByName('State1ChangeLevelID'),
    qryRecipts))) then
    Exit;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;
  try
    qryUpDate.Parameters := qryRecipts.Parameters;
    S := ShowQryParam(qryUpDate, True);
    DMf.adcBSell.Execute(S);
    // qryUpDate.ExecSQL;
    qryRecipts.Requery();
    qryRecipts.Locate('ReciptID;ServerID;YearID',
      VarArrayOf([ReciptID, ServerID, YearID]), []);
  except
    Warn('اشكال در ثبت‌');
  end;
end;

procedure TRpt001F.MenuItem3Click(Sender: TObject);
begin
  inherited;
  try
    mnuAllCheck.Checked := False;
    qryRecipts.DisableControls;
    SeletedPrint(ppDBPipeline1, DBGrid1);
    InitReportFile(ppReport1, 'Rpt001', True);
  finally
    qryRecipts.EnableControls;
  end;
end;

procedure TRpt001F.MenuItem4Click(Sender: TObject);
begin
  inherited;
  try
    try
      mnuAllCheck.Checked := True;
      qryRecipts.DisableControls;
      qryItems.DisableControls;
      SeletedPrint(ppDBPipeline1, DBGrid1);
      InitReportFile(ppReport1, 'Rpt001All', True);
    except
      on E: Exception do
      begin
        qryRecipts.AfterScroll := nil;
        Warn(E.Message);
      end;

    end;

  finally
    qryRecipts.EnableControls;
    qryItems.EnableControls;
  end;
end;

procedure TRpt001F.ppImage1DrawCommandCreate(Sender, aDrawCommand: TObject);
var
  S: String;
begin
  inherited;
  S := GetReportFileWithPath('logo.bmp');
  if (FileExists(S)) then
    TppImage(FindComponent('ppImage1')).Picture.LoadFromFile(S);
end;

procedure TRpt001F.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryInitQry.FieldByName('ReciptCaption').AsString
end;

procedure TRpt001F.ppLblEconomicNumberGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber', '')
end;

procedure TRpt001F.ppSysVarPageNumGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRpt001F.qryItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryItems.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
end;

procedure TRpt001F.mnuAllSecondTypeClick(Sender: TObject);
var
  i, c: Integer;
  S: string;
  procedure sUPDATE;
  begin
    If S <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        // (ReciptState = 0) AND
        SQL.Text := Format('UPDATE Recipts SET SecondType = %d WHERE  ',
          [(Sender as TMenuItem).Tag]) + '(ReciptID IN (' + S + '))';
        SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID')
          .AsString);
        SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ انجام شد.', 1);
        S := EmptyStr;
      end; // with
  end;

begin
  inherited;
  c := 0;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response(Format('آيا براي %S نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟',
      [(Sender as TMenuItem).Caption]) + #13#10 +
      Format('فرم هايي كه موقت باشند تبديل به %S ميشوند.',
      [(Sender as TMenuItem).Caption])) <> mrYes then
      Exit;
  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if S <> '' then
          S := S + ',';
        S := S + FieldByName('ReciptID').AsString;
        if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
          if not FieldByName('ParentReciptID').IsNull then
            S := S + ',' + FieldByName('ParentReciptID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    finallyqryRecipts;
  end;

end;

procedure TRpt001F.MnuCheckMoaadiyanClick(Sender: TObject);
var
  aTax: TMainTax;
  S, Send_Message: string;
  i: Integer;
begin
  inherited;

  if DBGrid1.SelectedRows.Count > 0 then
    if get_response(' آیا برای ارسال همه فرم های این لیست  ' +
      TaxFormKindName(TaxMain) + ' به سامانه مودیان مطمئن هستید؟ ', clGreen) <> mrYes
    then
      Exit;
  mnuAllCheck.Checked := True;

  try
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));

        aTax := TMainTax.Create;
        if Mnusandbox.Checked then
        begin
          aTax.ConfigModel.SERVERTYPE := '2';
        end
        else
          aTax.ConfigModel.SERVERTYPE := '1';

        DMTaxF.SetKeysModel(aTax);
        try
          if qryRecipts.FieldByName('TAXUID').AsString <> EmptyStr then
            DMTaxF.CheckRequest(aTax, qryRecipts.FieldByName('TAXUID').AsString,
              qryRecipts.FieldByName('REFERENCENUMBER').AsString,
              qryRecipts.FieldByName('TAXID').AsString, TaxCorrection,
              qryRecipts)
          else
            S := 'از سامانه مودیان پاسخی دریافت نشد';
        except
          on E: Exception do
          begin
            // add2log(url);
            add2log(E.Message);
            Warn2(E.Message);
            Send_Message := E.Message;
          end;
        end;

        aTax.Free;

        if qryReciptstax_status.AsInteger = 1 then
          Warn2('ارسال به سامانه مودیان انجام شده' +
            qryReciptsReciptNumber.AsString)
        else
          Warn2(S + #13#10 + Send_Message + qryReciptsReciptNumber.AsString);

      end;
  finally
    finallyqryRecipts;
    mnuAllCheck.Checked := False;
  end;

end;

procedure TRpt001F.TaxStateMenu;
begin
  MnuTaxMoaadiyan.Visible := (qryReciptstax_status.AsInteger = 0) and
    (qryReciptsReciptState.AsInteger <> 3);

  MnuCheckMoaadiyan.Visible := (qryReciptstax_status.AsInteger <> 1);

end;

procedure TRpt001F.MnuTaxMoaadiyanClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response(' آیا برای ارسال همه فرم های این لیست  ' +
      TaxFormKindName(TaxMain) + ' به سامانه مودیان مطمئن هستید؟ ', clGreen) <> mrYes
    then
      Exit;
  mnuAllCheck.Checked := True;

  try
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if (qryReciptstax_status.AsInteger <> 1) and
          (qryReciptsReciptState.AsInteger <> 3) then
        begin
          qryReciptsAfterScroll(qryRecipts);
          DMTaxF.Moaadiyan(TaxMain, qryRecipts, qryRecipts, qryRecipts,
            qryItems, qryTrades, qryInitQry, nil, MnuCheckMoaadiyan, Mnusandbox,
            MnuTaxMoaadiyan, N17, N17, N17, N17, mnuEntity, mnuWeight, False);
        end;

      end;
  finally
    finallyqryRecipts;
    mnuAllCheck.Checked := False;
  end;
end;

procedure TRpt001F.N7Click(Sender: TObject);
begin
  inherited;
  try
    mnuAllCheck.Checked := False;
    qryRecipts.DisableControls;
    SeletedPrint(ppDBPipeline1, DBGrid1);
    InitReportFile(ppReport1, 'Rpt001Entity', True);
  finally
    qryRecipts.EnableControls;
  end;
end;

procedure TRpt001F.ReciptState3_5_4(Caption: string; ReciptState: Integer);
var
  i, c: Integer;
  S, Descriptions: string;
  procedure sUPDATE;
  begin
    If S <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          'UPDATE Recipts SET ReciptState = :ReciptState ,LastUser = ''' +
          User.Name + ' تبدیل=' + Caption + ''' WHERE (ReciptState<=1) AND ' +
          '(ReciptID IN (' + S + '))';
        SQL.Add(' AND ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
        SQL.Add(' AND YearID  =' + qryRecipts.FieldByName('YearID').AsString);
        SQL.Add('AND ( Recipts.DocNo < 1)');
        Parameters.ParamByName('ReciptState').Value := ReciptState;
        c := c + ExecSQL;
        SQL.Text := EmptyStr;

        Descriptions := IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ ' + Caption + ' شد.';
        BigMessage(Descriptions, 1);

        SQL.Text := MakeSQLInsert(S, Descriptions, qryRecipts);
        ExecSQL;

        Active := False;
        S := EmptyStr;
      end; // with
  end;

begin
  c := 0;
  if not CheckUserlevel(qryInitQry.FieldByName('ChangeStateLevelID'), qryRecipts)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي ' + Caption +
      ' نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟' + #13#10 +
      'فرم هايي كه صدور سند شده ،يا دائم باشند ' + Caption + ' پذير نيستند.') <> mrYes
    then
      Exit;

  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if S <> '' then
          S := S + ',';

        if (ReciptState = 4) or OkDelete(qryRecipts, False, 0) then
        begin
          S := S + FieldByName('ReciptID').AsString;
          if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
            if not FieldByName('ParentReciptID').IsNull then
              S := S + ',' + FieldByName('ParentReciptID').AsString;
        end
        else
          S := S + '0';

        if qryInitQry.FieldByName('ControlEntityActive').AsInteger = 4 then
        begin
          mnuAllCheck.Checked := True;
          qryReciptsAfterScroll(qryRecipts);
          mnuAllCheck.Checked := False;
          if ReciptBe4PostCtrlEntAct(qryItems, qryRecipts, qryInitQry, True)
          then
            S := '0';
          if (i + 1) mod PartSise = 0 then
            sUPDATE;
          Break;
        end
        else
        begin
          if (i + 1) mod PartSise = 0 then
            sUPDATE;
        end;

      end;
    sUPDATE;
  finally
    finallyqryRecipts;
  end;

end;

procedure TRpt001F.rgTaxClick(Sender: TObject);
begin
  inherited;
  case rgTax.ItemIndex of
    0:
      qryRecipts.Filter := 'tax_status = 0';
    1:
      qryRecipts.Filter := 'tax_status = 1';
    2:
      qryRecipts.Filter := 'tax_status = 2';
    3:
      qryRecipts.Filter := 'tax_status = NULL';
  else
    begin
      qryRecipts.Filter := EmptyStr;
      qryRecipts.Sort := EmptyStr;
    end;
  end;
  qryRecipts.Filtered := qryRecipts.Filter <> EmptyStr;
end;

procedure TRpt001F.actReciptState3Execute(Sender: TObject);
begin
  inherited;
  ReciptState3_5_4('باطل', 3)
end;

procedure TRpt001F.actReciptState4Execute(Sender: TObject);
begin
  inherited;
  ReciptState3_5_4('رزرو', 4)
end;

procedure TRpt001F.actReciptState5Execute(Sender: TObject);
begin
  inherited;
  ReciptState3_5_4('پیش نویس', 5)
end;

procedure TRpt001F.BtnReciptStateClick(Sender: TObject);
begin
  inherited;
  PopMnuReciptState.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt001F.btnTaxClick(Sender: TObject);
begin
  inherited;
  if not(mnuEntity.Checked or mnuWeight.Checked) then
    Warn('لطفا نوع ارسال  مقدار یا وزن را مشخص کنید');
  popMoaadiyan.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt001F.chkCorrelateReciptTypeClick(Sender: TObject);
begin
  inherited;
  if chkCorrelateReciptType.Checked then
    qryRecipts.Filter := '  FactorNumber = 0 '
  else
    qryRecipts.Filter := '';

  if chkReciptNumberCo.Checked then
  begin
    qryRecipts.Filter := qryRecipts.Filter +
      IfThen(chkCorrelateReciptType.Checked, ' AND ', '') +
      '  ReciptNumberCo = 0 ';
  end;

  qryRecipts.Filtered := chkCorrelateReciptType.Checked or
    chkReciptNumberCo.Checked;
end;

procedure TRpt001F.chkFooter4SumClick(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedSum := chkFooter4Sum.Checked;
  if chkFooter4Sum.Checked then
  begin
    if chkAidNumber.Checked then
      DBGrid1.SetFooter4Sum([])
    else
      DBGrid1.SetFooter4Sum(['AidNumber']);
    DBGrid2.SetFooter4Sum([])
  end;
end;

procedure TRpt001F.PerformFileNameClick(Sender: TObject);
begin
  inherited;
  try
    SeletedPrint(ppDBPipeline1, DBGrid1);
    InitReportFile(ppReport1, qryInitQry.FieldByName((Sender as TMenuItem).Name)
      .AsString, True);
  finally
  end;

end;

procedure TRpt001F.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
  begin
    SeletedPrint(ppDBPipeline1, DBGrid1);
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  end;
end;

function TRpt001F.MakeSQLInsert(ReciptIDS, Descriptions: string;
qryRecipts: TADOQuery): string;
begin
  Result := ' INSERT INTO ReciptStateChangs' +
    ' (ReciptIDS, ServerID, YearID, UserName, DateOfAction, Descriptions)' +
    ' VALUES (''' + ReciptIDS + ''', ' + qryRecipts.FieldByName('ServerID')
    .AsString + ', ' + qryRecipts.FieldByName('YearID').AsString + ', ''' +
    User.Name + ''', GETDATE(), ''' + Caption + ' ' + Descriptions + ''')';

end;

procedure TRpt001F.actReciptState0Execute(Sender: TObject);
var
  i, c: Integer;
  S, Descriptions: string;
  procedure sUPDATE;
  begin
    If S <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'UPDATE Recipts SET ReciptState = 0 ,LastUser = ''' +
          User.Name + ' موقت' + '''  WHERE (ReciptState > = 0) AND ' +
          '(ReciptID IN (' + S + '))';
        SQL.Add(' AND  ReciptState <> 3 ');
        SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID')
          .AsString);
        // IntToStr(opt.ServerID)); //
        SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
        // IntToStr(APPBank.Year));///

        c := c + ExecSQL;

        Descriptions := IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ موقت شد.';
        BigMessage(Descriptions, 1);

        SQL.Text := MakeSQLInsert(S, Descriptions, qryRecipts);
        ExecSQL;

        Active := False;
        S := EmptyStr;
      end; // with
  end;

begin
  inherited;
  c := 0;
  if not CheckUserlevel(qryInitQry.FieldByName('ChangeStateLevelID'), qryRecipts)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي به موقت درآوردن فرم‌هاي انتخاب شده مطمئن هستيد؟' +
      #13#10 + 'فرم هايي كه دائم يا قطعي باشند تبديل به موقت ميشوند.') <> mrYes
    then
      Exit;

  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if S <> '' then
          S := S + ',';
        S := S + FieldByName('ReciptID').AsString;
        if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
          if not FieldByName('ParentReciptID').IsNull then
            S := S + ',' + FieldByName('ParentReciptID').AsString;
        if ((RecallTypeOption and Integer(CHkNotUsingParentReciptID)) <> 0) then
        begin
          mnuAllCheck.Checked := True;
          qryReciptsAfterScroll(qryRecipts);
          mnuAllCheck.Checked := False;
          if not ReciptBe4PostCtrlEntAct(qryItems, qryRecipts, qryInitQry, True)
          then
            S := '0';
          if (i + 1) mod PartSise = 0 then
            sUPDATE;
          Break;
        end
        else
        begin
          if (i + 1) mod PartSise = 0 then
            sUPDATE;
        end;
      end;
    sUPDATE;
  finally
    finallyqryRecipts;
  end;

end;

procedure TRpt001F.ppDBTextStuffSizeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + '';
end;

procedure TRpt001F.ppLabelnum2alphabetGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := 'جمع كل به حروف : ' + num2alphabet
    (StrToInt64(qryRecipts.FieldByName('priceWithDef').AsString)) + ' ريال ';
end;

procedure TRpt001F.ppLabelnum2alphabetPayebelGetText(Sender: TObject;
var Text: String);
var
  PayablePrice: currency;
begin
  inherited;
  PayablePrice := qryRecipts.FieldByName('priceWithDef').AsCurrency;
  PayablePrice := RoundTo(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TRpt001F.ppLblSecondTypeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ''; // ComboType.Text;

end;

procedure TRpt001F.logoPrint(Sender: TObject);
var
  S: String;
begin
  inherited;
  S := GetReportFileWithPath((Sender as TppImage).Name + '.bmp');
  if (FileExists(S)) then
  begin
    (Sender as TppImage).Picture.LoadFromFile(S);
  end;
end;

procedure TRpt001F.ppLabelTotalOutputPriceGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := CurrToStrF(qryRecipts.FieldByName('price').AsCurrency, ffCurrency, 0);
end;

procedure TRpt001F.ppDBTxtPayablePriceGetText(Sender: TObject;
var Text: String);
var
  PayablePrice: currency;
begin
  inherited;
  PayablePrice := qryRecipts.FieldByName('priceWithDef').AsCurrency;
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TRpt001F.ppLabelOutputWeightGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := qryReciptsWeight.AsString;
end;

procedure TRpt001F.ppLabelOutputEntityGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := qryReciptsEntity.AsString;
end;

procedure TRpt001F.DBGrid1KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if (HiWord(GetKeyState(VK_RIGHT)) <> 0) or (HiWord(GetKeyState(VK_LEFT)) <> 0)
  then
    DBGrid1.Options := DBGrid1.Options - [dgMultiSelect]
  else
    DBGrid1.Options := DBGrid1.Options + [dgMultiSelect];

end;

procedure TRpt001F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryReciptsReciptNumber);
end;

procedure TRpt001F.DBGrid1TitleClick(Column: TColumnEh);
var
  i: Integer;
begin
  inherited;
  i := ColumnIndexByFieldName(DBGrid1, 'FactorNumber');
  if i <> -1 then
    DBGrid1.Columns[i].Title.Font.Color := clRed;

  i := ColumnIndexByFieldName(DBGrid1, 'ReciptNumberCo');
  if i <> -1 then
    DBGrid1.Columns[i].Title.Font.Color := clBlue;

  i := ColumnIndexByFieldName(DBGrid1, 'ReciptDateCo');
  if i <> -1 then
    DBGrid1.Columns[i].Title.Font.Color := clBlue;
end;

procedure TRpt001F.actCorrelateReciptExecute(Sender: TObject);
var
  i, id: Largeint;
begin
  inherited;
  FilterONServerID;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي ثبت فرم مرتبط فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  qryRecipts.DisableControls;
  id := qryRecipts.FieldByName('ID').AsLargeInt;
  BigMessageProgBar('در حال ثبت فرم مرتبط', DBGrid1.SelectedRows.Count);

  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if not NewReciptsCorrelateChkEntity(qryReciptsID.AsLargeInt, qryInitQry)
        then
          Abort;
        if not RelatedPostWhenCoefficientsPosted(qryInitQry, qryRecipts) then
          callstpNewReciptsCorrelate
      end; // for

  except
    on E: Exception do
    begin
      Warn(E.Message);
      CloseMessage;
    end;
  end;

  // qryRecipts.AfterScroll:=qryReciptsAfterScroll;
  qryRecipts.EnableControls;

  try
    qryRecipts.Active := False;
    qryRecipts.Open;
    qryRecipts.Locate('ID', id, []);
    CloseMessage;
  except
    if not chkCorrelateReciptType.Checked then
      Warn('اشكال در ثبت كردن فرم‌');
  end; // try
  qryRecipts.EnableControls;
end;

procedure TRpt001F.callstpNewReciptsCorrelate;
begin
  With DMf.stpNewReciptsCorrelate do
  begin
    Active := False;
    Parameters.ParamByName('@OldID').Value :=
      qryRecipts.FieldByName('ID').AsString;
    Parameters.ParamByName('@FirstUser').Value := User.Name;

    Parameters.ParamByName('@ID').Value := 0;
    ExecProc;
    GoProgressBar(qryRecipts.FieldByName('ReciptNumber').AsString);
    Active := False;
  end; // With
end;

procedure TRpt001F.actNewReciptsCorrelatePriceExecute(Sender: TObject);
begin
  inherited;
  if get_response
    ('آيا براي به ثبت قیمت فرم‌هاي مرتبط تاریخ انتخاب شده مطمئن هستيد؟' + #13 +
    LblShowLimitPlace2.Caption + #13 + 'صدور سند می تواند دلیل ثبت نشدن باشد.')
    = mrYes then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'UPDATE ReciptItems';
      SQL.Add('SET UnitSellPrice = derivedtbl_1.UnitSellPrice, TotalInputPrice = derivedtbl_1.TotalInputPrice, TotallSellPrice =');
      SQL.Add('derivedtbl_1.TotalInputPrice');
      SQL.Add('FROM Recipts INNER JOIN');
      SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
      SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
      SQL.Add('(SELECT Recipts_1.ReciptID, Recipts_1.ParentReciptID, ReciptItems_1.StuffCode,');
      SQL.Add('ReciptItems_1.InputEntity, ReciptItems_1.UnitSellPrice,');
      SQL.Add('ReciptItems_1.TotalInputPrice, Recipts_1.YearID, Recipts_1.ServerID');
      SQL.Add('FROM Recipts AS Recipts_1 INNER JOIN');
      SQL.Add('ReciptItems AS ReciptItems_1 ON Recipts_1.ReciptID = ReciptItems_1.ReciptID AND');
      SQL.Add('Recipts_1.ServerID = ReciptItems_1.ServerID AND');
      SQL.Add('Recipts_1.YearID = ReciptItems_1.YearID');
      SQL.Add('WHERE (Recipts_1.ReciptDate Between :ReciptDateFrom and :ReciptDateTo) ');
      SQL.Add('AND (Recipts_1.ReciptType = :ReciptType)) AS derivedtbl_1');
      SQL.Add('ON ReciptItems.ReciptID =');
      SQL.Add('derivedtbl_1.ParentReciptID AND');
      SQL.Add('ReciptItems.StuffCode = derivedtbl_1.StuffCode AND ReciptItems.YearID = derivedtbl_1.YearID');
      SQL.Add('AND ReciptItems.ServerID = derivedtbl_1.ServerID');
      SQL.Add('WHERE (Recipts.ReciptDate Between :ReciptDate2From and :ReciptDate2To) ');

      SQL.Add(' AND (Recipts.DocNo = 0) ');

      SQL.Add('AND (Recipts.ReciptType = :CorrelateReciptType)');

      Parameters.ParamByName('ReciptDateFrom').Value :=
        GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
      Parameters.ParamByName('ReciptDateTo').Value :=
        GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
      Parameters.ParamByName('ReciptDate2From').Value :=
        GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
      Parameters.ParamByName('ReciptDate2To').Value :=
        GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

      Parameters.ParamByName('ReciptType').Value := formType;

      Parameters.ParamByName('CorrelateReciptType').Value :=
        qryInitQry.FieldByName('CorrelateReciptType').AsInteger;

      BigMessage(IntToStr(ExecSQL) + ' فرم‌ ثبت شد.', 0);
      Active := False;
    end;

end;

procedure TRpt001F.actSortRunExecute(Sender: TObject);
begin
  inherited;
  popSortRun.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt001F.allSort1Click(Sender: TObject);
begin
  inherited;
  allSortRecipts(qryRecipts, qryInitQry, (Sender as TMenuItem).Tag)
end;

procedure TRpt001F.BitBtn3Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt001F.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, formType);
end;

procedure TRpt001F.actUpdateExecute(Sender: TObject);
var
  rid: Integer;
begin
  inherited;
  rid := qryReciptsReciptID.AsInteger;
  qryRecipts.Requery();
  qryRecipts.Locate('ReciptID', rid, []);
end;

procedure TRpt001F.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(ADDKeyID(qryRecipts) + qryReciptsReciptID.AsString,
    'ReciptsF', True);
end;

procedure TRpt001F.actwebNipcCheckExecute(Sender: TObject);
var
  // pp: TJsonDTO;
  // S: string;
  i: Integer;
  // T: TThread;
begin
  inherited;
  // c := 0;
  if not CheckUserlevel(qryInitQry.FieldByName('ChangeStateLevelID'), qryRecipts)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي بررسی ثبت  فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));

        // T := TThread.CreateAnonymousThread(
        // procedure()
        // begin
        DMnipcF.PostCheck(qryRecipts)
        // end);
        // T.FreeOnTerminate := True;
        // T.Start;
        // S := DMnipcF.post(qryRecipts, qryItems, qryInitQry);
        // MessageDlg(S, mtWarning, [mbOK], 0);
      end;

  finally
    finallyqryRecipts
  end;

end;

procedure TRpt001F.actwebNipcExecute(Sender: TObject);
var
  // pp: TJsonDTO;
  i: Integer;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('ChangeStateLevelID'), qryRecipts)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي ارسال فرم‌هاي انتخاب شده مطمئن هستيد؟' + #13#10 +
      'فرم هايي كه قبلا ارسال نشده باشند ارسال می شوند.') <> mrYes then
      Exit;

  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));

        // T := TThread.CreateAnonymousThread(
        // procedure()
        // begin
        DMnipcF.post(qryRecipts, qryItems, qryInitQry)
        // end);
        // T.FreeOnTerminate := True;
        // T.Start;
        // S := DMnipcF.post(qryRecipts, qryItems, qryInitQry);
        // MessageDlg(S, mtWarning, [mbOK], 0);
      end;

  finally
    finallyqryRecipts;
  end;

end;

procedure TRpt001F.actDocNoExecute(Sender: TObject);
begin
  inherited;
  ClearDoc(DBGrid1, qryRecipts);
end;

procedure TRpt001F.actDocumentUpDateExecute(Sender: TObject);
begin
  inherited;
  DocumentUpDateF.Enter(qryRecipts, fkRcipts);
end;

procedure TRpt001F.actDBGridSelectAllExecute(Sender: TObject);
begin
  inherited;
  try
    qryRecipts.AfterScroll := nil;
    DBGridSelectAll(DBGrid1);
  finally
    qryRecipts.EnableControls;
  end;

end;


// procedure TRpt001F.DBGridSelectAll(AGrid: TDBGrid);
// var
// DoWhile: Boolean;
// begin
// DoWhile := True;
// AGrid.SelectedRows.Clear;
// with AGrid.DataSource.DataSet do
// begin
// pb1.Max := RecordCount;
// pb1.Min := 1;
// pb1.Step := 1;
// DisableControls;
// First;
// try
// while not Eof and DoWhile do
// begin
// AGrid.SelectedRows.CurrentRowSelected := True;
// Next;
// If LastKeyPressed = VK_ESCAPE then
// if get_response('عمليات متوقف شود؟') = mrYes then
// begin
// DoWhile := False;
// LastKeyPressed := 0;
// end;
// LastKeyPressed := 0;
// pb1.StepIt;
// end;
// finally
// EnableControls;
// end;
// end;
// end;

procedure TRpt001F.actRecallSpecialReciptsFExecute(Sender: TObject);
begin
  inherited;
  myStore.code := qryRecipts.FieldByName('StoreID').AsInteger;
  If NotNull(qryInitQry.FieldByName('RecallReciptTypes').AsString,
    'هيچ فرمي براي فراخواني مشخص نشده است') then
    Exit;

  if qryInitQry.FieldByName('RecallType').AsInteger <> 13 then
    RecallSpecialReciptsF.SelectRecall(qryItems, qryInitQry, qryRecipts,
      myStore, True, qryReciptsPersonID1.AsInteger)

end;

procedure TRpt001F.actReciptDeleteExecute(Sender: TObject);
var
  i: Integer;
  S: string;
begin
  inherited;
  WorkFlowBeforDelete(qryRecipts);
  if not CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID'), qryRecipts)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي به حذف كردن فرم‌هاي انتخاب شده مطمئن هستيد؟' + #13
      + 'صدور سند یا موقت نبودن می تواند دلیل حذف نشدن باشد.') <> mrYes then
      Exit;

  try
    qryRecipts.AfterScroll := nil;
    S := GetSelectedRowsDBGrid(DBGrid1, 'ReciptID');
  finally
    // qryRecipts.AfterScroll:=qryReciptsAfterScroll;
    qryRecipts.EnableControls;
  end;
  If S = '' then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Recipts';

    SQL.Add('FROM Recipts LEFT OUTER JOIN ');
    SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
    SQL.Add('Recipts.YearID = ReciptItems.YearID LEFT OUTER JOIN');
    SQL.Add('ReciptItems AS ReciptItems_Per ON ReciptItems.ServerID = ReciptItems_Per.ServerID AND ReciptItems.YearID');
    SQL.Add('= ReciptItems_Per.YearID AND ReciptItems.ReciptItemID = ReciptItems_Per.preReciptItemID');

    SQL.Add('LEFT OUTER JOIN Recipts AS Recipts_P ON Recipts.YearID = Recipts_P.YearID ');
    SQL.Add('AND Recipts.ServerID = Recipts_P.ServerID AND Recipts.ReciptID = Recipts_P.ParentReciptID');

    SQL.Add('WHERE (ReciptItems_Per.preReciptItemID IS NULL)');
    SQL.Add('AND (Recipts.ReciptState=0) AND (Recipts.DocNo = 0) ');
    SQL.Add('AND (Recipts.ReciptID IN (' + S + ')) ');
    SQL.Add(Format('AND (Recipts.ServerID = %d)',
      [qryRecipts.FieldByName('ServerID').AsInteger]));
    SQL.Add(Format('AND (Recipts.YearID  = %d)',
      [qryRecipts.FieldByName('YearID').AsInteger]));
    SQL.Add('AND (Recipts.ReciptID > ISNULL(Recipts.ParentReciptID, 0))');

    SQL.Add('AND (Recipts_P.ReciptID IS NULL)');

    SQL.Add('UPDATE Recipts SET ParentReciptID=null ');

    SQL.Add('FROM Recipts INNER JOIN');
    SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
    SQL.Add('Recipts.YearID = ReciptItems.YearID LEFT OUTER JOIN');
    SQL.Add('ReciptItems AS ReciptItems_Per ON ReciptItems.ServerID = ReciptItems_Per.ServerID AND ReciptItems.YearID');
    SQL.Add('= ReciptItems_Per.YearID AND ReciptItems.ReciptItemID = ReciptItems_Per.preReciptItemID');

    SQL.Add(' WHERE (ReciptItems_Per.preReciptItemID IS NULL)AND(Recipts.ReciptState = 0) AND '
      + '(Recipts.ParentReciptID IN (' + S + '))');
    SQL.Add(Format('AND (Recipts.ServerID = %d)',
      [qryRecipts.FieldByName('ServerID').AsInteger]));
    SQL.Add(Format('AND (Recipts.YearID  = %d)',
      [qryRecipts.FieldByName('YearID').AsInteger]));
    SQL.Add('AND (Recipts.ReciptID < ISNULL(Recipts.ParentReciptID, 0))');

    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ حذف شد.', 2);
      Active := False;
      i := qryRecipts.FieldByName('ReciptID').AsInteger;
      qryRecipts.Active := False;
      qryRecipts.Open;
      qryRecipts.Locate('ReciptID', i, [])

    except
      on E: Exception do
      begin
        Warn('اشكال در  حذف كردن  فرم‌' + #13#10 + E.Message);
        add2log(E.Message);
      end;
    end; // try
  end; // with
end;

procedure TRpt001F.actDelReciptsDeficitsExecute(Sender: TObject);
var
  i: Integer;
  S: string;
begin
  inherited;
  WorkFlowBeforDelete(qryRecipts);
  if not CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID'), qryRecipts)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response
      ('آيا براي به حذف کردن کسورات/اضافات فرم‌هاي انتخاب شده مطمئن هستيد؟' +
      #13 + 'صدور سند یا موقت نبودن می تواند دلیل حذف نشدن باشد.') <> mrYes then
      Exit;

  try
    qryRecipts.AfterScroll := nil;
    S := GetSelectedRowsDBGrid(DBGrid1, 'ReciptID');
  finally
    // qryRecipts.AfterScroll:=qryReciptsAfterScroll;
    qryRecipts.EnableControls;
  end;
  If S = '' then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM ReciptsDeficits';
    SQL.Add('FROM ReciptsDeficits INNER JOIN');
    SQL.Add('Recipts ON ReciptsDeficits.ReciptID = Recipts.ReciptID ');
    SQL.Add('AND ReciptsDeficits.ServerID = Recipts.ServerID ');
    SQL.Add('AND ReciptsDeficits.YearID = Recipts.YearID');
    SQL.Add('WHERE (Recipts.ReciptState = 0) AND (Recipts.DocNo = 0)');
    SQL.Add('AND (ReciptsDeficits.ReciptID IN (' + S + ')) ');
    SQL.Add(Format('AND (ReciptsDeficits.ServerID = %d)',
      [qryRecipts.FieldByName('ServerID').AsInteger]));
    SQL.Add(Format('AND (ReciptsDeficits.YearID  = %d)',
      [qryRecipts.FieldByName('YearID').AsInteger]));

    try
      BigMessage(IntToStr(ExecSQL) + ' کسورات/اضافات فرم‌‌ حذف شد.', 2);
      Active := False;
      i := qryRecipts.FieldByName('ReciptID').AsInteger;
      qryRecipts.Active := False;
      qryRecipts.Open;
      qryRecipts.Locate('ReciptID', i, [])
    except
      Warn('اشكال در  حذف كردن  کسورات/اضافات فرم‌‌');
    end;
  end;

end;

procedure TRpt001F.ppLabel__StandardRateGetText(Sender: TObject;
var Text: String);
var
  c: currency;
begin
  inherited;
  ///
  c := CalcSumFileds(qryItems, 'TotalStandardRate');
  c := RoundTo(c, 0);
  Text := CurrToStrF(c, ffCurrency, 0)
end;

procedure TRpt001F.ppLbl__TaxGetText(Sender: TObject; var Text: String);
var
  cloned: TADOQuery;
  c: currency;
begin
  inherited;
  c := 0;
  cloned := TADOQuery.Create(DMf.adcBSell);
  try
    with cloned do
    begin
      Clone(qryItems, ltReadOnly);
      DisableControls;
      First;
      while not Eof do
      begin
        c := c + FieldByName('TotalStandardRate').AsCurrency *
          qryInitQry.FieldByName('VATCo').AsFloat / 100;
        Next;
      end;
      // while
      EnableControls;
    end; // with
  finally
  end; // try
  cloned.Free;
  c := RoundTo(c, 0);
  Text := CurrToStrF(c, ffCurrency, 0)
end;

procedure TRpt001F.ppLbl_TotalStandardRateGetText(Sender: TObject;
var Text: String);
var
  cloned: TADOQuery;
  c: currency;
begin
  inherited;
  c := 0;
  cloned := TADOQuery.Create(DMf.adcBSell);
  try
    with cloned do
    begin
      Clone(qryItems, ltReadOnly);
      DisableControls;
      First;
      while not Eof do
      begin
        c := c + FieldByName('TotalStandardRate').AsCurrency +
          FieldByName('TotalStandardRate').AsCurrency * qryInitQry.FieldByName
          ('VATCo').AsFloat / 100;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
  end; // try
  cloned.Free;
  c := RoundTo(c, 0);
  Text := CurrToStrF(c, ffCurrency, 0)
end;

procedure TRpt001F.ppLbl_TotalStandardRateAlphaGetText(Sender: TObject;
var Text: String);
var
  cloned: TADOQuery;
  c: currency;
begin
  inherited;
  c := 0;
  cloned := TADOQuery.Create(DMf.adcBSell);
  try
    with cloned do
    begin
      Clone(qryItems, ltReadOnly);
      DisableControls;
      First;
      while not Eof do
      begin
        c := c + FieldByName('TotalStandardRate').AsCurrency +
          FieldByName('TotalStandardRate').AsCurrency * qryInitQry.FieldByName
          ('VATCo').AsFloat / 100;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
  end; // try
  cloned.Free;
  c := RoundTo(c, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(c)))
end;

procedure TRpt001F.qryReciptsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  // GetSumGridFields(DBGrid1, SumGrid2);
end;

procedure TRpt001F.qryReciptsModifyDateGetText(Sender: TField; var Text: string;
DisplayText: Boolean);
begin
  inherited;
  Text := TimeToStr(Sender.AsDateTime) + ' ' + miladi2Shamsi(Sender.AsDateTime);
end;

procedure TRpt001F.ppLblState2ZeroDrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryRecipts.FieldByName('ReciptState')
    .AsInteger = 3;
end;

procedure TRpt001F.ppLblReMainOldGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(0, qryRecipts, qryInitQry,
    True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TRpt001F.ppLblReMainGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF
    (ReMainPersonRecipt(qryRecipts.FieldByName('Price').AsCurrency +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), qryRecipts,
    qryInitQry, True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TRpt001F.plblTotallSellPriceGetText(Sender: TObject;
var Text: String);
var
  PayablePrice: currency;
begin
  inherited;
  PayablePrice := qryRecipts.FieldByName('TotallSellPrice').AsCurrency;
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TRpt001F.plblTotallSellPricAlphaGetText(Sender: TObject;
var Text: String);
var
  PayablePrice: currency;
begin
  inherited;
  PayablePrice := qryRecipts.FieldByName('PayebelPrice2').AsCurrency;
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TRpt001F.actMakeDocumentExecute(Sender: TObject);
begin
  inherited;
  var_tmp_str := GetSelectedRowsDBGrid(DBGrid1, 'ID');
  With MakeDocumentF do
    try
      Var_glb_NoFilter := True;
      // CreateMDIForm2(TMakeDocumentF, MakeDocumentF, Self);
      MakeDocumentF.Enter(qryRecipts, True);
      cmbGroups.ItemIndex := MakeDocumentF.cmbGroups.Items.IndexOfObject
        (TObject(formType));
      chkTajmia.Tag := 1;
      chkTajmia.OnClick := nil;
      chkTajmia.Checked := False;
      cmbGroupsChange(nil);
      chkTajmia.OnClick := chkTajmiaClick;
      MakeDocumentF.actFilter.Enabled := False;
    finally
      Var_glb_NoFilter := False;
    end;
end;

procedure TRpt001F.actManagGridColumnsExecute(Sender: TObject);
begin
  inherited;
  // ManagGridColumnsF.ShowColumns(DMf.adcBSell, DBGrid1, formType)
end;

procedure TRpt001F.ppDBCalcnum2alphabetGetText(Sender: TObject;
var Text: String);
var
  c: currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure TRpt001F.actAppendixExecute(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      TThread.Synchronize(nil, ProcCheckExistsFile)
    end);
  T.FreeOnTerminate := True;
  T.Start;
end;

procedure TRpt001F.ProcCheckExistsFile;
var
  DoWhile: Boolean;
begin
  With qryRecipts do
    try
      DoWhile := True;
      BtnReject.Cancel := False;
      Warn2('در حال بررسی پیوست ها', 0);
      First;
      AfterScroll := nil;
      DBGrid1.OnDrawColumnCell := nil;
      DisableControls;
      while (not Eof and DoWhile) do
      begin
        Edit;
        qryRecipts.FieldByName('Appendix').AsInteger :=
          IfThen(ViewFileOnServerDBF.CheckExistsFile(ADDKeyID(qryRecipts) +
          qryReciptsReciptID.AsString, 'ReciptsF', True), 1, 0);
        post;
        Next;
        Application.ProcessMessages;
        If LastKeyPressed = VK_ESCAPE then
          if get_response('عمليات متوقف شود؟') = mrYes then
          begin
            DoWhile := False;
            LastKeyPressed := 0;
          end;
        LastKeyPressed := 0;

      end;
    finally
      First;
      AfterScroll := qryReciptsAfterScroll;
      DBGrid1.OnDrawColumnCell := DBGrid1DrawColumnCell;
      EnableControls;
      BtnReject.Cancel := True;
      Warn2('انجام شد.', 0);

    end;
end;

procedure TRpt001F.actCalcCostStorageExecute(Sender: TObject);
var
  i, c: Integer;
  S: string;
  procedure sUPDATE;
  begin
    If S <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          'UPDATE Recipts SET CalcCostStorage = CASE WHEN CalcCostStorage = 1 THEN 0 ELSE 1 END ';
        SQL.Add('WHERE (ReciptID IN (' + S + '))');
        SQL.Add(' AND ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
        SQL.Add(' AND YearID =' + qryRecipts.FieldByName('YearID').AsString);
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ انجام شد.', 1);
        Active := False;
        S := EmptyStr;
      end; // with
  end;

begin
  inherited;
  c := 0;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي به ' + actCalcCostStorage.Caption +
      ' فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes then
      Exit;
  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if S <> '' then
          S := S + ',';
        S := S + FieldByName('ReciptID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    finallyqryRecipts;
  end;

end;

procedure TRpt001F.actCancellationFixesExecute(Sender: TObject);
var
  i, c: Integer;
  S, Descriptions: string;
  procedure sUPDATE;
  begin
    If S <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'UPDATE Recipts SET ReciptState = 0 ,LastUser = ''' +
          User.Name + ' موقت' + '''  WHERE (ReciptState  = 3 ) AND ' +
          '(ReciptID IN (' + S + '))';
        SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID')
          .AsString);
        // IntToStr(opt.ServerID)); //
        SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
        // IntToStr(APPBank.Year));///
        c := c + ExecSQL;

        Descriptions := IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ موقت شد.';
        BigMessage(Descriptions, 1);

        SQL.Text := MakeSQLInsert(S, Descriptions, qryRecipts);
        ExecSQL;

        Active := False;
        S := EmptyStr;
      end; // with
  end;

begin
  inherited;
  if Pos(VarToStr(qryRecipts.Parameters.ParamByName('States').Value), '3') < 1
  then
  begin
    Warn('محدوده فرم را فقط براي وضعيت باطله تنظيم كنيد.');
    Exit;
  end;
  c := 0;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي به موقت درآوردن فرم‌هاي انتخاب شده مطمئن هستيد؟')
      <> mrYes then
      Exit;
  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if S <> '' then
          S := S + ',';
        S := S + FieldByName('ReciptID').AsString;
        if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
          if not FieldByName('ParentReciptID').IsNull then
            S := S + ',' + FieldByName('ParentReciptID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    finallyqryRecipts;
  end;

end;

procedure TRpt001F.FilterONServerID;
begin
  // if User.OperatorKind = 0 then
  // begin
  // qryRecipts.Filter := Format('ServerID = %d ', [opt.ServerID]);
  // qryRecipts.Filtered := True;
  // end;
  If not ReciptCorrelate_ConversionCo_Chk(qryRecipts, qryInitQry) then
    Abort;
end;

procedure TRpt001F.actCorrelateConversionCoExecute(Sender: TObject);
var
  i, id, StoreID: Integer;
  sID1: TStore;
  qryinitCo: TADOQuery;
  StoreKindList: string;
begin
  inherited;
  StoreID := 0;
  sID1.code := 0;
  mnuAllCheck.Checked := True;
  FilterONServerID;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي ثبت فرم ضرائب فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  if (qryInitQry.FieldByName('AutoCorrelateCo').AsInteger and
    Integer(CHkGetStorIDFormDestinationType) <> 0) then
  begin
    qryinitCo := TADOQuery.Create(DMf);
    with qryinitCo do
    begin
      Connection := DMf.adcBSell;
      qryinitCo.SQL.Text := qryInitQry.SQL.Text;
      Parameters.ParamByName('ReciptType').Value :=
        qryInitQry.FieldByName('ConversionCoSerial').AsString;;
      Active := True;
      StoreKindList := FieldByName('StoreKindList').AsString;
    end;
    qryinitCo.Free;
  end
  else
  begin
    StoreKindList := '';
  end;

  if not(qryInitQry.FieldByName('AutoCorrelateCo').AsInteger and
    Integer(CHkAutoCorrelateCoStoreID) <> 0) then
  begin
    SelectStoreF.GetStore(sID1, 'انبار براي ثبت ', StoreKindList,
      MyEntityDisplayType);
    if sID1.code = 0 then
      Exit
    else
      StoreID := sID1.code;
  end;

  qryRecipts.DisableControls;
  id := qryRecipts.FieldByName('ReciptID').AsInteger;
  // BigMessageProgBar('در حال ثبت فرم ضرائب', DBGrid1.SelectedRows.Count);

  pb1.Max := DBGrid1.SelectedRows.Count;
  pb1.Min := 1;
  pb1.Step := 1;
  pb1.Position := 0;
  pb1.Step := 1;
  BigMessage('لطفا منتظر بمانید...', 0);

  try
    qryRecipts.AfterScroll := qryReciptsAfterScroll;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        CorrelateConversionCo(Self, qryInitQry, qryItems, qryRecipts, StoreID,
          MyEntityDisplayType, False);
        pb1.StepIt;
        // GoProgressBar(qryRecipts.FieldByName('ReciptNumber').AsString);
      end;
    // for

  finally
    // qryRecipts.AfterScroll:=qryReciptsAfterScroll;
    qryRecipts.EnableControls;
    pb1.Position := DBGrid1.SelectedRows.Count;

  end;

  try
    qryRecipts.Active := False;
    qryRecipts.Open;
    qryRecipts.Locate('ReciptID', id, []);
    CloseMessage;
  except
    Warn('اشكال در ثبت كردن فرم‌');
  end; // try
  qryRecipts.EnableControls;
end;

procedure TRpt001F.actReciptsRowExecute(Sender: TObject);
var
  i, c, ReciptsRow: Integer;
  S: string;
  procedure sUPDATE;
  begin
    If S <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'UPDATE Recipts SET ReciptsRow = ' + IntToStr(ReciptsRow) +
          ' WHERE (isnull(ReciptsRow,0)=0)' + ' AND(ReciptID IN (' + S + '))';
        SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID')
          .AsString);
        SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ تنظيم شد.', 1);
        S := EmptyStr;
      end; // with
  end;

begin
  inherited;
  c := 0;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response
      ('آيا براي تنظيم تنخواه نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ISNULL(MAX(ReciptsRow),0)+1 FROM Recipts';
    Active := True;
    ReciptsRow := Fields[0].AsInteger;
    ReciptsRow := StrToInt(Trim(get_box('تنظيم تنخواه', 'تنظيم با عدد:',
      IntToStr(ReciptsRow))));
  end;
  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if S <> '' then
          S := S + ',';
        S := S + FieldByName('ReciptID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    finallyqryRecipts;
  end;

end;

procedure TRpt001F.actTransmittalExecute(Sender: TObject);
var
  i, c: Integer;
  S: string;
  procedure sUPDATE;
  begin
    If S <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          'UPDATE Recipts SET Transmittal = 1  WHERE (Transmittal = 3) AND ' +
          '(ReciptID IN (' + S + '))';
        SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID')
          .AsString);
        SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ تغيير وضعيت ارسال شد.', 1);
        Active := False;
        S := EmptyStr;
      end;
  end;

begin
  inherited;
  c := 0;
  if not CheckUserlevel(qryInitQry.FieldByName('TransmittalLevelID'), qryRecipts)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response
      ('آيا براي "تغيير وضعيت ارسال به وضعيت ويرايش" فرم‌هاي انتخاب شده مطمئن هستيد؟')
      <> mrYes then
      Exit;

  try
    qryRecipts.AfterScroll := nil;
    qryRecipts.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if S <> '' then
          S := S + ',';
        S := S + FieldByName('ReciptID').AsString;
        if qryInitQry.FieldByName('CorrelateStateChange').AsInteger = 1 then
          if not FieldByName('ParentReciptID').IsNull then
            S := S + ',' + FieldByName('ParentReciptID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    finallyqryRecipts;
  end;
end;

procedure TRpt001F.finallyqryRecipts;
var
  i: Integer;
begin
  With qryRecipts do
  begin
    // AfterScroll:=qryReciptsAfterScroll;
    EnableControls;
    i := FieldByName('ReciptID').AsInteger;
    Active := False;
    Open;
    Locate('ReciptID', i, [])
  end;
end;

procedure TRpt001F.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  qryRecipts.AfterScroll := nil
end;

procedure TRpt001F.ppDBTxtPayableSellPriceGetText(Sender: TObject;
var Text: String);
var
  PayablePrice: currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TRpt001F.ppReport1AfterPrint(Sender: TObject);
begin
  inherited;
  qryItems.Filtered := False;
end;

procedure TRpt001F.plblAllStuffCodingGetText(Sender: TObject; var Text: string);
begin
  inherited;
  // if (qryStuff_Unit_TecInf.FindField(Text) <> nil) and
  // (qryStuff_Unit_TecInf.Locate('c_StuffCode',
  // qryItemsStuffCode.AsLargeInt, [])) then
  // Text := qryStuff_Unit_TecInf.FieldByName('VendorBarcode').AsString;
end;

procedure TRpt001F.plblAllReadBankConfigGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig(Text, '')
end;

procedure TRpt001F.mnuEntityClick(Sender: TObject);
begin
  inherited;
  mnuWeight.Checked := not mnuEntity.Checked
end;

procedure TRpt001F.mnuWeightClick(Sender: TObject);
begin
  inherited;
  mnuEntity.Checked := not mnuWeight.Checked
end;

end.
