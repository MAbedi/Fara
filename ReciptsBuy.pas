{ -------------------------------------------------------------------------------
  Unit Name: ReciptsBuy
  Author:    Mahmood
  History: 86/08/20
  -------------------------------------------------------------------------------- }
unit ReciptsBuy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, DB, ADODB, ppComm, ppRelatv, ppDB, ppDBPipe,
  Grids, Vcl.DBGrids, DM, Menus, ppModule, ppStrtch, ppSubRpt,
  ppRegion, zAPIBalloon,
  FMTBcd, ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, Vcl.ComCtrls, frPelak;

type
  TReciptsBuyF = class(Ttemplate2MDIF)
    ppDBPipeline1: TppDBPipeline;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
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
    qryRecipts_ValuationType: TIntegerField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsOperatorID: TIntegerField;
    qryRecipts_PersonName: TStringField;
    qryRecipts_PersonName3: TStringField;
    qryRecipts_PersonName4: TStringField;
    qryRecipts_PersonName5: TStringField;
    actNoteMaster: TAction;
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
    qryItemsacc_CTopicCode2: TStringField;
    qryItems_CTopicCode: TStringField;
    btnOtherMenu: TBitBtn;
    qryRecipts_PersonFax: TStringField;
    qryItemsAidDate: TStringField;
    qryItemsDiscount: TIntegerField;
    actCorrelateRecipt: TAction;
    qryReciptsAidDate: TStringField;
    qry_Deficits4Print: TADOQuery;
    qry_Deficits4PrintDeficitName: TStringField;
    qry_Deficits4PrintDeficit_Add_Dec: TBCDField;
    ppDBPipeline3: TppDBPipeline;
    qryItems_Carton: TIntegerField;
    qryRecipts_CustValuationType: TIntegerField;
    qryItemsPersonID1: TIntegerField;
    N15: TMenuItem;
    qryItems_PersonName1: TStringField;
    N16: TMenuItem;
    srcDeficits4Print: TDataSource;
    actDeficits: TAction;
    qryItemsProductModel: TIntegerField;
    qry_Lookup: TADOQuery;
    qryItems_ProductModelName: TStringField;
    qryItems_ProductName: TStringField;
    qryRecipts_StoreKind: TIntegerField;
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
    BtnCorrelateConversionCo: TBitBtn;
    BtnCorrelateRecipt: TBitBtn;
    qryItems_CTopicCode22: TStringField;
    qryReciptsReciptStartDate: TStringField;
    qryReciptsReciptEndDate: TStringField;
    qryRecipts_HasDeficit: TIntegerField;
    qryItemsWaterCo: TFloatField;
    qryItemsDeficitValue: TBCDField;
    actReportSearch: TAction;
    actReciptOnFormsRange: TAction;
    DBPipFormsRange: TppDBPipeline;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppDBText34: TppDBText;
    ppDBText38: TppDBText;
    ppDBTextStuffSize: TppDBText;
    ppDBText1: TppDBText;
    ppDBTextIOEntity: TppDBText;
    ppDBTextIOWeight: TppDBText;
    ppDBText42: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppShape4: TppShape;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppDBText5: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppShape6: TppShape;
    ppShape1: TppShape;
    ppShape3: TppShape;
    ppLabel47: TppLabel;
    ppLabel42: TppLabel;
    ppLabel45: TppLabel;
    ppDBText23: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine38: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabelTotalOutputPrice: TppLabel;
    ppLabel6: TppLabel;
    ppLabelnum2alphabet: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText28: TppDBText;
    ppLabel8: TppLabel;
    ppDBText2: TppDBText;
    ppLabel9: TppLabel;
    ppDBText3: TppDBText;
    ppLabel10: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppLine39: TppLine;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppLine4: TppLine;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppImage3: TppImage;
    ppLine8: TppLine;
    ppLine12: TppLine;
    ppLabel7: TppLabel;
    ppLabel11: TppLabel;
    ppLine45: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    qryReciptsStoreID2: TSmallintField;
    qryRecipts_StoresName2: TStringField;
    qryItemsAuxiliary: TFloatField;
    PnlPerson1: TPanel;
    LblPerson1: TLabel;
    SBtnPersonID1: TSpeedButton;
    DBTextPersonID1: TDBText;
    EdtPersonID1: TDBEdit;
    PnlStore: TPanel;
    LblStore: TLabel;
    SBtnStoreID: TSpeedButton;
    DBTextStoreID: TDBText;
    EdtStoreID: TDBEdit;
    qryItemsOrderState: TWordField;
    qryItemsContactRate: TFloatField;
    qryItemsShift: TIntegerField;
    qryItemsUnitSellPrice2: TBCDField;
    qryItemsMachineWeight: TFloatField;
    qryItemsTotalWeight: TFloatField;
    qryItemsMachineNo: TStringField;
    qryItemsMachineName: TStringField;
    qryItemsMachineFullWeight: TFloatField;
    qryItemsSugarCo: TFloatField;
    qryItemsSugarEntity: TFloatField;
    Panel10: TPanel;
    Label20: TLabel;
    Label22: TLabel;
    LblUnit: TLabel;
    SpeedButton7: TSpeedButton;
    EdtStuffCode: TDBEdit;
    DBEdit2: TDBEdit;
    EdtUnit: TDBEdit;
    EdtStuffName: TDBEdit;
    PnlEarth: TPanel;
    SBtnProductCode: TSpeedButton;
    DBText7: TDBText;
    Label14: TLabel;
    Label10: TLabel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    edtStuffDiameter: TDBEdit;
    edtControlCode: TDBEdit;
    Panel4: TPanel;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    PnlMachine: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    edtMachineNo: TDBEdit;
    edtMachineName: TDBEdit;
    edtMachineFullWeight: TDBEdit;
    EdtMachineWeight: TDBEdit;
    panel19: TPanel;
    LblRequestedEntity: TLabel;
    LblRequestedWeight: TLabel;
    Label15: TLabel;
    edtRequestedEntity: TDBEdit;
    edtRequestedWeight: TDBEdit;
    edtContactRate: TDBEdit;
    PnlWet: TPanel;
    Label16: TLabel;
    Label21: TLabel;
    edtWaterCo: TDBEdit;
    edtAuxiliary: TDBEdit;
    PnlSugar: TPanel;
    Label8: TLabel;
    Label17: TLabel;
    edtSugarCo: TDBEdit;
    edtSugarEntity: TDBEdit;
    PnlEntityWeightPrice: TPanel;
    LblEntity: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    LblWeight: TLabel;
    EdtIOEntity: TDBEdit;
    EdtTotalIOPrice: TDBEdit;
    EdtUnitSellPrice: TDBEdit;
    EdtIOWeight: TDBEdit;
    pnlDeficitValueUnitSellPrice2: TPanel;
    LblAidInfoNo2: TLabel;
    Label24: TLabel;
    edtAidNumber: TDBEdit;
    edtPortage: TDBEdit;
    GrpBoxAccount: TGroupBox;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    DBText3: TDBText;
    Label9: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    DBText4: TDBText;
    DBText1: TDBText;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    grpItemNote: TGroupBox;
    dbmmoItemNote: TDBMemo;
    edtUnitSellPrice2: TDBEdit;
    lblUnitSellPrice2: TLabel;
    PnlPerson2: TPanel;
    LblPerson2: TLabel;
    EdtPersonID2: TDBEdit;
    SpeedButton6: TSpeedButton;
    DBTextPersonID2: TDBText;
    qryReciptsUseOtherID: TWideStringField;
    qryItemsServerID: TIntegerField;
    qryItemsYearID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsInsertDate: TDateTimeField;
    qryItemsStuffCode: TLargeintField;
    qryReciptsAidNumber: TStringField;
    qryItemsAidNumber: TStringField;
    qryItemsInvEntity: TFloatField;
    Label12: TLabel;
    edtInvEntity: TDBEdit;
    qryItemsProductCode: TLargeintField;
    qryItemsacc_CTopicCode3: TStringField;
    pnlPerson3: TPanel;
    LblPerson3: TLabel;
    btnPersonID3: TSpeedButton;
    dbtxtPersonID3: TDBText;
    dbedtPersonID3: TDBEdit;
    qryReciptsPersonID3: TIntegerField;
    qryItemsPrvYearID: TIntegerField;
    qryReciptsPrvYearID: TIntegerField;
    pnlDefaultDateSecondType: TPanel;
    PnlSecondType: TPanel;
    Label25: TLabel;
    CmbSecondType: TDBComboBox;
    pnlSells: TPanel;
    pnlSellsEmporium: TPanel;
    Label26: TLabel;
    dblkcbb_SellsEmporium: TDBLookupComboBox;
    pnlSellsMethod: TPanel;
    Label27: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    qryReciptsSellsMethod: TIntegerField;
    qryReciptsSellsEmporium: TIntegerField;
    qryItemsacc_TopicCode: TLargeintField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlTozin: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtTozinID: TDBEdit;
    edtMachineFullWeight1: TDBEdit;
    edtMandeh: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    edtTozinDate: TDBEdit;
    edtMachineName1: TDBEdit;
    edtMachineWeight1: TDBEdit;
    edtInputWeight1: TDBEdit;
    Label37: TLabel;
    Label38: TLabel;
    edtWaste1: TDBEdit;
    edtWaste2: TDBEdit;
    qryItemsWaste1: TBCDField;
    qryItemsWaste2: TBCDField;
    qryTozin: TADOQuery;
    qryTozinTozinID: TIntegerField;
    qryTozinTozinNumber: TIntegerField;
    qryTozinReciptType: TWordField;
    qryTozinMachineNo: TStringField;
    qryTozinStoreID: TSmallintField;
    qryTozinStuffCode: TLargeintField;
    qryTozinPersonID1: TIntegerField;
    qryTozinMachineName: TStringField;
    qryTozinMachineWeight: TFloatField;
    qryTozinMachineFullWeight: TFloatField;
    qryTozinTozinNote: TStringField;
    qryTozinEnterDate: TDateTimeField;
    qryTozinFirstUser: TStringField;
    qryTozinLastUser: TStringField;
    qryTozinTozinDate: TStringField;
    qryTozinReciptNumber: TIntegerField;
    qryTozinMoistureContent: TFloatField;
    qryTozinRisingUseful: TFloatField;
    qryTozinRisingNonUseFul: TFloatField;
    qryTozinPersonID2: TIntegerField;
    qryTozinIsSystem: TBooleanField;
    qryTozinRelatedRecipts: TStringField;
    qryTozinReciptID: TIntegerField;
    qryTozinMandeh: TFloatField;
    qryTozinExitDate: TDateTimeField;
    qryTozinTozinState: TWordField;
    srcTozin: TDataSource;
    qryReciptsTozinID: TIntegerField;
    SpeedButton1: TSpeedButton;
    qryTozinnote: TStringField;
    lblWheatDeficit: TLabel;
    plnTozin: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    pnlTozin2: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    edtAidNumber1: TDBEdit;
    edtInputWeight: TDBEdit;
    plblCalcWheatDeficit: TppLabel;
    edtAidDate: TDBEdit;
    Label42: TLabel;
    DBNavigator2: TDBNavigator;
    qryRecall: TADOQuery;
    plnRecall: TppDBPipeline;
    srcRecall: TDataSource;
    edtShift: TDBEdit;
    Label11: TLabel;
    edtTotalInputPrice: TDBEdit;
    Label41: TLabel;
    edtUnitSellPrice1: TDBEdit;
    Label43: TLabel;
    pdbtxtMiladi2Shamsi: TppDBText;
    qryItemsPortage: TBCDField;
    frPelakF1: TfrPelakF;
    qryTozinNumberOfBags: TBCDField;
    qryTozinPelak1: TStringField;
    qryTozinPelak2: TStringField;
    qryTozinPelak3: TStringField;
    qryTozinPelak4: TStringField;
    GroupBox1: TGroupBox;
    dbmmoReciptNote: TDBMemo;
    edtDeficitValue: TDBEdit;
    lblDeficitValue: TLabel;
    qryRecipts_PersonNationalID: TStringField;
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
    procedure qryReciptsAfterInsert(DataSet: TDataSet);
    procedure srcReciptsStateChange(Sender: TObject);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure EdtStuffCodeeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReciptsAfterPost(DataSet: TDataSet);
    procedure qryReciptsBeforeDelete(DataSet: TDataSet);
    procedure qryItemsBeforeDelete(DataSet: TDataSet);
    procedure qryReciptsAfterDelete(DataSet: TDataSet);
    procedure qryItemsAfterDelete(DataSet: TDataSet);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReciptsBeforeCancel(DataSet: TDataSet);
    procedure ppLblCompanyDescGetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryReciptsBeforePost(DataSet: TDataSet);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryReciptsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure EdtRNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearchExecute(Sender: TObject);
    procedure qryItemsBeforeInsert(DataSet: TDataSet);
    procedure qryReciptsPersonID2Change(Sender: TField);
    procedure actRecallExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actRecallSpecialExecute(Sender: TObject);
    procedure actPrint1Execute(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure ppLblAddresGetText(Sender: TObject; var Text: String);
    procedure ppLbTelGetText(Sender: TObject; var Text: String);
    procedure ppLblPostCodeGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblEconomicNumberGetText(Sender: TObject; var Text: String);
    procedure qryItemsStuffCodeChange(Sender: TField);
    procedure actNoteMasterExecute(Sender: TObject);
    procedure actSearchReciptNumberExecute(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLabelnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure ppDBTextStuffSizeGetText(Sender: TObject; var Text: String);
    procedure qryItemsInputWeightGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actCorrelateReciptExecute(Sender: TObject);
    procedure ppImage1DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLblFormFooterGetText(Sender: TObject; var Text: String);
    procedure qryReciptsStoreIDChange(Sender: TField);
    procedure qryReciptsPersonID1Change(Sender: TField);
    procedure ppLblReMainGetText(Sender: TObject; var Text: String);
    procedure ppLblReMainOldGetText(Sender: TObject; var Text: String);
    procedure logoPrint(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppDBTxtPayablePriceGetText(Sender: TObject; var Text: String);
    procedure actDeficitsExecute(Sender: TObject);
    procedure SBtnProductCodeClick(Sender: TObject);
    procedure SBtnProductModelClick(Sender: TObject);
    procedure actCorrelateConversionCoExecute(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actReciptStateTo0Execute(Sender: TObject);
    procedure ppLblState2ZeroDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLabelnum2alphabetPayebelGetText(Sender: TObject;
      var Text: String);
    procedure qryReciptsAfterEdit(DataSet: TDataSet);
    procedure qryItemsAfterEdit(DataSet: TDataSet);
    procedure ppLblAllStringReplaceGetText(Sender: TObject; var Text: String);
    procedure EdtStuffCodeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtStuffCodeChange(Sender: TObject);
    procedure ppLblHeaderGetText(Sender: TObject; var Text: String);
    procedure actReportSearchExecute(Sender: TObject);
    procedure actReciptOnFormsRangeExecute(Sender: TObject);
    procedure qryItemsRequestedWeightChange(Sender: TField);
    procedure qryItemsInputEntityChange(Sender: TField);
    procedure qryItemsUnitSellPriceChange(Sender: TField);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryItemsMachineWeightChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure EdtPersonID2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPersonID3Click(Sender: TObject);
    procedure qryReciptsBeforeInsert(DataSet: TDataSet);
    procedure qryReciptsSecondTypeChange(Sender: TField);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryReciptsBeforeOpen(DataSet: TDataSet);
    procedure qryReciptsTozinIDChange(Sender: TField);
    procedure plblCalcWheatDeficitGetText(Sender: TObject; var Text: string);
    procedure qryItemsInputWeightChange(Sender: TField);
    procedure qryItemsAfterScroll(DataSet: TDataSet);
    procedure pdbtxtMiladi2ShamsiGetText(Sender: TObject; var Text: string);
    procedure qryItemsPortageChange(Sender: TField);
    procedure qryTozinAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    myStore: TStore;
    ReciptID4ParentReciptID: String;
    RestartStore, FormOutput, FilterShow, PriceOn_StoreType: Boolean;
    formType, CustValuationType: Byte;
    ValueControl : LargeInt;
    PrintCount: Integer;
    FormReciptId, DiscountActive: Integer;
    FormInOut: String;
    Edit4Deficits: Boolean;
    qryCust3: TADOQuery;
    procedure initFormConfig;
    procedure initFormPanel;
    procedure initForm4Output;
    procedure RecallStateChange;
    function OkDeleteMaster(ReciptID: String): Boolean;
    function OkDeleteItem(ReciptItemID: String): Boolean;
    function LimitRecord: Boolean;
    function OkEditMaster(ReciptID: String): Boolean;
    function NonZeroControl: Boolean;
    procedure initAddField;
    procedure InitDBCombos;
    procedure CalcWheatDeficit;
  public
    procedure Enter(Form_Type: Integer; LimitShow: Boolean = True;
      StoreID: Integer = 0; ReciptID: int64 = 0);
    procedure initFormQry;
    { Public declarations }
  end;

var
  ReciptsBuyF: TReciptsBuyF;

implementation

uses searchCode_ADO, GlobalPro, mmessage, SelectStore, Math,
  Note, StrUtils, RecallSpecialRecipts,
  ReciptsDeficits, sort2,
  mdiMain, FormFunctions, searchReports, ChooseReciptOnFormsRange, FaraConsts,
  ReciptsFunctions, shamsiDate, RecallSpecialRecipts2;

{$R *.dfm}

procedure TReciptsBuyF.initFormQry;
var
  StoreKindList: String;
begin
  FilterShow := var_glb_Boolean;
  formType := var_glb_gParam;
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
    ValueControl := qryinit.FieldByName('ValueControl').AsLargeInt;
  end; // with
  with qryStores do
  begin
    StoreKindList := qryinit.FieldByName('StoreKindList').AsString;
    if StoreKindList <> '' then
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
  IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
  begin
    NotNull(qryinit.FieldByName('CustomerKind1').AsString,
      'هيچ گروهي براي گروه مشتري 1 مشخص نشده است');
    with qryCustomers1 do
    begin
      Active := False;
      SQL.Add(' WHERE (GroupType IN(' +
        Trim(qryinit.FieldByName('CustomerKind1').AsString) +
        ')) AND dbo.ChkUser(OperatorID,' + IntToStr(User.id) + ')=1')

    end; // with
  end; // if
  IF qryinit.FieldByName('Person2Active').AsInteger = 1 THEN
  begin
    NotNull(qryinit.FieldByName('CustomerKind2').AsString,
      'هيچ گروهي براي گروه مشتري 2  مشخص نشده است');
    with qryCustomers2 do
    begin
      Active := False;
      SQL.Add(' WHERE (GroupType IN(' +
        Trim(qryinit.FieldByName('CustomerKind2').AsString) +
        ')) AND dbo.ChkUser(OperatorID,' + IntToStr(User.id) + ')=1')
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
  if FormOutput then
    initForm4Output;

end;

procedure TReciptsBuyF.initFormPanel;
var
  ReciptType: Integer;
  b: Boolean;
begin
  With qryinit do
  begin
    // < Form.Caption>
    Caption := FieldByName('ReciptCaption').AsString;
    lblCaption.Caption := Caption;
    LblRecNo.Caption := 'شماره ' + Caption;
    LblReciptDate.Caption := 'تاريخ ' + Caption;
    // ________________________  عنوان بجاي كلمه مقدار و وز ن__________________________

    LblEntity.Caption := opt.EntityCaption;
    LblWeight.Caption := opt.WeightCaption;
    qryItems.FieldByName('InputEntity').DisplayLabel := opt.EntityCaption;
    qryItems.FieldByName('OutputEntity').DisplayLabel :=
      opt.EntityCaption + '#';
    qryItems.FieldByName('InputWeight').DisplayLabel := opt.WeightCaption;
    qryItems.FieldByName('OutputWeight').DisplayLabel :=
      opt.WeightCaption + '#';

    // < 1 كد انبار فعال >
    PnlStore.Visible := FieldByName('StoreActive').AsInteger = 1;
    LblStore.Caption := 'كد ' + FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('StoreID').Required := PnlStore.Visible;
    qryRecipts.FieldByName('StoreID').DisplayLabel := 'كد ' +
      FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('_StoresName').Required := PnlStore.Visible;
    qryRecipts.FieldByName('_StoresName').DisplayLabel := 'نام ' +
      FieldByName('StoreCaption').AsString;

    // <   مشتري 1 فعال >
    PnlPerson1.Visible := FieldByName('Person1Active').AsInteger = 1;
    LblPerson1.Caption := 'كد ' + FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('PersonID1').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('PersonID1').DisplayLabel := 'كد ' +
      FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('_PersonName1').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('_PersonName1').DisplayLabel := 'نام ' +
      FieldByName('Person1Caption').AsString;

    qryItems.FieldByName('PersonID1').DisplayLabel := 'كد ' +
      FieldByName('Person1Caption').AsString;
    qryItems.FieldByName('_PersonName1').DisplayLabel := 'نام ' +
      FieldByName('Person1Caption').AsString;

    // < 7  مشتري 2 فعال >
    PnlPerson2.Visible := FieldByName('Person2Active').AsInteger = 1;
    LblPerson2.Caption := 'كد ' + FieldByName('Person2Caption').AsString;
    qryRecipts.FieldByName('PersonID2').Required := PnlPerson2.Visible;
    qryRecipts.FieldByName('PersonID2').DisplayLabel := 'كد ' +
      LblPerson2.Caption;
    qryRecipts.FieldByName('_PersonName2').Required := PnlPerson2.Visible;
    qryRecipts.FieldByName('_PersonName2').DisplayLabel := 'نام ' +
      LblPerson2.Caption;

    // < 12 ارتباط با حسابداري >
    GrpBoxAccount.Visible := FieldByName('AccCodingShow').AsInteger > 0;
    // < مقدار ، وزن و بهاي كل اصلي نمايش شود >
    PnlEntityWeightPrice.Visible := FieldByName('Section1Visible')
      .AsInteger = 1;
    // < اطلاعات كسورات و اضافات نمايش شود >
    actDeficits.Visible := FieldByName('DeficitsActive').AsInteger >= 1;
    // <  توضيحات Datail فعال باشد >

    actCorrelateRecipt.Visible := FieldByName('CorrelateReciptType')
      .AsInteger > 0;
    actCorrelateRecipt.Enabled := FieldByName('CorrelateKind').AsInteger > 0;

    actCorrelateConversionCo.Visible := FieldByName('ConversionCoSerial')
      .AsInteger > 0;

    if (actCorrelateConversionCo.Visible) and (not actCorrelateRecipt.Visible)
    then
      BtnCorrelateConversionCo.Left := BtnCorrelateRecipt.Left;

    // ------------------------set PnlAidInfoMaster--------------------------//
    // PnlAidInfoItems.Visible:=(FieldByName('AidInfoActive').AsInteger=2) or (FieldByName('AidInfoActive').AsInteger=3);
    LblAidInfoNo2.Caption := LblAidInfoNo2.Caption +
      FieldByName('AidInfoCaption').AsString;

    actPrint.Hint := FieldByName('PerformFileName').AsString + #13#10 +
      FieldByName('ReportFileName').AsString + #13#10;

    EdtRNum.ReadOnly := FieldByName('EditReciptNumberActive').AsInteger <> 1;

    grpItemNote.Visible := (FieldByName('NoteShow').AsInteger = 2) or
      (FieldByName('NoteShow').AsInteger = 3);

    PnlMachine.Visible := FieldByName('MachineActive').AsInteger = 1;
    PnlEarth.Visible := FieldByName('EarthActive').AsInteger = 1;
    PnlWet.Visible := FieldByName('WetActive').AsInteger = 1;
    PnlSugar.Visible := FieldByName('SugarActive').AsInteger = 1;

    lblCaption.Hint := IntToStr(formType);

    DiscountActive := qryinit.FieldByName('DiscountActive').AsInteger;
    b := DiscountActive and Integer(CHkDeficitValue) <> 0;

    edtDeficitValue.Visible := DiscountActive = 1;
    lblDeficitValue.Visible := DiscountActive = 1;

    pnlDeficitValueUnitSellPrice2.Visible :=
      FieldByName('DeficitValueUnitSellPrice2').AsInteger = 1;

    PnlSecondType.Visible := FieldByName('SecondTypeActive').AsInteger
      in [1, 3];
    qryRecipts.FieldByName('SecondType').Required := PnlSecondType.Visible;
    b := FieldByName('SecondTypeActive').AsInteger in [0, 3];

    // pnlDefaultDate.Visible := DefaultDateActive(qryinit);
    pnlDefaultDateSecondType.Visible := // pnlDefaultDate.Visible or
      PnlSecondType.Visible;

    if PnlSecondType.Visible or b then
      InitDBCombos;
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
  initAddField
end;

procedure TReciptsBuyF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsBuyF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TReciptsBuyF.InitDBCombos;
var
  Kind: Integer;
begin
  CmbSecondType.Clear;
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

end;

procedure TReciptsBuyF.initAddField;
var
  qry: TADOQuery;
  b: Boolean;
  i: Integer;
begin
  // if opt.AidInfoAvailable then
  // begin
  // i := ColumnIndexByFieldName(DBGrid1, '_StuffTecInfo');
  // With DBGrid1.Columns.Add do
  // begin
  // FieldName := 'stuffalloy';
  // Index := i;
  // end;
  // With DBGrid1.Columns.Add do
  // begin
  // FieldName := 'stuffdiameter';
  // Index := i;
  // end;
  // With DBGrid1.Columns.Add do
  // begin
  // FieldName := 'stuffsize';
  // Index := i;
  // Alignment := taLeftJustify;
  // Font.Name := 'Modern';
  // Font.Height := -13;
  // end;
  // end; // if

  With qryinit do
  begin
    b := FieldByName('Person3Active').AsInteger = 1;
    pnlPerson3.Visible := b;
    if b then
    begin
      LblPerson3.Caption := 'كد ' + FieldByName('Person3Caption').AsString;
      qryRecipts.FieldByName('PersonID3').Required := pnlPerson3.Visible;
      qryRecipts.FieldByName('PersonID3').DisplayLabel :=
        'كد ' + LblPerson3.Caption;
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsBuyF);
        Name := 'qryCustomers3';
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT DISTINCT CustID, CustName,';
        SQL.Add('InfoWeight,Address FROM Vu_CustomersGroups ');
        if not NotNull(qryinit.FieldByName('CustomerKind3').AsString,
          'هيچ گروهي براي گروه مشتري 3  مشخص نشده است') then
          SQL.Add(GetCustomersGroupTypeSQL('CustomerKind3', qryinit));
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
      qryCustCreate(qryCust3, '3', ReciptsBuyF);
    end;

    b := FieldByName('SellsEmporiumActive').AsInteger = 1;
    pnlSellsEmporium.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsBuyF);
        Name := 'qrySellsEmporiums';
        Connection := DMf.adcBSell;
        SQL.Text :=
          'SELECT SellsEmporium,SellsEmporiumName FROM SellsEmporiums';
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
        LookUpDataset := qry;
        LookUpKeyFields := 'SellsEmporium';
        LookupResultField := 'SellsEmporiumName';
        Size := 100;
        DisplayLabel := 'مركز فروش';
        Required := True;
        qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
        dblkcbb_SellsEmporium.DataField := FieldName;
      end;
    end;

    b := FieldByName('SellsMethodActive').AsInteger = 1;
    pnlSellsMethod.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsBuyF);
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
        LookUpDataset := qry;
        LookUpKeyFields := 'SellsMethod';
        LookupResultField := 'SellsMethodName';
        Size := 100;
        DisplayLabel := 'نحوه فروش';
        Required := True;
        qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
        dblkcbb_SellsMethod.DataField := FieldName;
      end;
    end;

  end;
  pnlSells.Visible := pnlSellsEmporium.Visible or pnlSellsMethod.Visible;
end;

procedure TReciptsBuyF.initFormConfig;
begin
  ReciptID4ParentReciptID := '';
  EdtIOEntity.Visible := opt.EntityDisplay;
  /// / 9
  LblEntity.Visible := opt.EntityDisplay;
  EdtIOWeight.Visible := opt.WeightDisplay; // (s='2')OR(s='3')OR(s='1');
  LblWeight.Visible := EdtIOWeight.Visible; // opt.WeightDisplay;

end;

procedure TReciptsBuyF.initForm4Output;
begin
  EdtIOEntity.DataField := 'OutputEntity';
  EdtIOWeight.DataField := 'OutputWeight';
  EdtTotalIOPrice.DataField := 'TotalOutputPrice';
  edtTotalInputPrice.DataField := 'TotalOutputPrice';
end;

procedure TReciptsBuyF.SBtnPersonID1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if qryCustomers1.Active then
    qryCustomers1.Requery;
  txt := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
    ' WHERE (GroupType IN(' + qryinit.FieldByName('CustomerKind1').AsString +
    ')) AND dbo.ChkUser(OperatorID,' + IntToStr(User.id) + ')=1';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + 'ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString], Results,
    [50, 150], alLeft);
  if b then
  begin
//    if not(qryRecipts.state in dsEditModes) then
//      qryRecipts.edit;
    qryRecipts['PersonID1'] := Results[0];
    // if PnlPerson2.Visible then EdtPersonID2.SetFocus
  end; // if
end;

procedure TReciptsBuyF.SpeedButton6Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if qryCustomers2.Active then
    qryCustomers2.Requery;
  txt := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
    ' WHERE (GroupType IN(' + qryinit.FieldByName('CustomerKind2').AsString +
    ')) AND dbo.ChkUser(OperatorID,' + IntToStr(User.id) + ')=1';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person2Caption').AsString + 'ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person2Caption').AsString + ''],
    Results, [50, 150], alLeft);
  if b then
  begin
//    if not(qryRecipts.state in dsEditModes) then
//      qryRecipts.edit;
    qryRecipts['PersonID2'] := Results[0];
    // EdtServiceValue.SetFocus;
  end; // if
end;

procedure TReciptsBuyF.SBtnStoreIDClick(Sender: TObject);
var
  c, txt, s: String;
begin
  inherited;
  txt := 'SELECT n_StoreID, c_StoreName FROM Stores ';
  if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
    txt := txt + ' WHERE (StoreKind IN (' + qryinit.FieldByName('StoreKindList')
      .AsString + '))';

  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c,
    qryinit.FieldByName('StoreCaption').AsString + 'ها', txt,
    ['کد', 'نام ' + qryinit.FieldByName('StoreCaption').AsString], alLeft);
  if s <> '' then
  begin
//    if not(qryRecipts.state in dsEditModes) then
//      qryRecipts.edit;
    if (Sender as TSpeedButton).Tag = 2 then
      qryRecipts['StoreID2'] := c
    else
      qryRecipts['StoreID'] := c;
  end; // if
end;

procedure TReciptsBuyF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryItems)
end;

procedure TReciptsBuyF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryItems)
end;

procedure TReciptsBuyF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryItems)
end;

procedure TReciptsBuyF.EdtStoreIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnStoreID.Click;
end;

procedure TReciptsBuyF.EdtPersonID1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnPersonID1.Click;
end;

procedure TReciptsBuyF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // if not CheckRequiredFields(qryRecipts) then begin
  // DataSet.Cancel;
  // Exit;
  // end;
  if not(qryRecipts.state in dsEditModes) then
    qryRecipts.edit;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryRecipts.FieldByName('PersonID1').AsInteger;
  GetANewID(DataSet, IntToStr(formType), 'ReciptItems', 'ReciptItemID',
    qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').Value;
  DataSet.FieldByName('StuffCode').AsLargeInt := 0;
  DataSet.FieldByName('InvEntity').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := User.Name;
  AccCodingShowInsert(qryinit, qryItems, qryRecipts);
end;

procedure TReciptsBuyF.qryItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryRecall do
  begin
    Active := False;
    Parameters.ParamByName('ReciptItemID').Value :=
      qryItemspreReciptItemID.AsInteger;
    Active := True;
  end;
end;

procedure TReciptsBuyF.qryReciptsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  GetANewID(DataSet, IntToStr(formType), 'Recipts', 'ReciptID', nil,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('InsertDate').AsDateTime := Now;
  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  DataSet.FieldByName('ReciptType').AsInteger := formType;
  IF RestartStore THEN
    DataSet.FieldByName('StoreID').AsInteger := myStore.code; // 2
  if not PnlStore.Visible then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT MIN(n_StoreID) FROM    Stores ';
      Active := True;
      myStore.code := Fields[0].AsInteger;
      DataSet.FieldByName('StoreID').AsInteger := myStore.code;
      Active := False;
    end;
  ReciptStateAutoStateChange(qryinit, qryRecipts);

  DataSet.FieldByName('AddDecValue').AsInteger := 0;
  DataSet.FieldByName('TotalValue').AsInteger := 0;
  DataSet.FieldByName('SecondType').AsCurrency := 0;
  DataSet.FieldByName('UseOtherID').AsCurrency := 0;
  if not PnlPerson1.Visible then
    DataSet.FieldByName('PersonID1').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := User.Name;
  qryRecipts.FieldByName('SecondType').AsInteger := CmbSecondType.Tag;
  GetReciptNumber(qryinit, DataSet, 0, myStore);
  EdtRNum.SetFocus;
  qryItems.Insert;

end;

procedure TReciptsBuyF.SpeedButton7Click(Sender: TObject);
var
  txt, s_StoreID: String;
  b: Boolean;
  Results: array [0 .. 13] of String;
  i: Byte;
  Fields_SD_1_9: String;
  colTopics_1_3: array [0 .. 13] of String;
  colTopics_4_5: array [0 .. 13] of String;
const
  colWidths_1_3: array [0 .. 13] of Smallint = (50, 100, 100, 100, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0);
  colWidths_4_5: array [0 .. 13] of Smallint = (50, 100, 100, 100, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0);
begin
  inherited;
  qryStuff_Unit_TecInf.Requery;
  colTopics_4_5[0] := 'کد';
  colTopics_4_5[1] := 'نام كالا';
  colTopics_4_5[2] := 'بهاي فروش 1';
  if opt.EntityDisplay then
  begin
    colTopics_4_5[3] := opt.EntityCaption;
    colWidths_4_5[3] := 50;
  end;
  if opt.WeightDisplay then
  begin
    colTopics_4_5[4] := opt.WeightCaption;
    colWidths_4_5[4] := 80;
  end;
  colTopics_1_3[0] := 'کد';
  colTopics_1_3[1] := 'نام كالا';
  colTopics_1_3[2] := 'مشخصات فني';
  colTopics_1_3[3] := 'بهاي فروش 1';
  // colWidths_1_3[0]:=50;colWidths_1_3[1]:=100;colWidths_1_3[2]:=100;
  // colWidths_1_3[3]:=100;
  // colWidths_4_5[0]:=50;colWidths_4_5[1]:=100;
  // colWidths_4_5[2]:=100;colWidths_4_5[3]:=100;
  for i := 1 to 9 do
  begin
    colTopics_1_3[i + 3] := opt.ExtraCoding.Captions[i];
    colTopics_4_5[i + 4] := opt.ExtraCoding.Captions[i];
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      colWidths_1_3[i + 3] := 100;
      colWidths_4_5[i + 4] := 100;
      Fields_SD_1_9 := Fields_SD_1_9 + ',StuffCoding.sd' + IntToStr(i);
    end;
  end;
  b := False;
  s_StoreID := ifthen(qryRecipts.FieldByName('StoreID').IsNull, '0',
    qryRecipts.FieldByName('StoreID').AsString);

  txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,StuffCoding.SellPrice1 '
    + Fields_SD_1_9 + ' FROM         StuffCoding INNER JOIN ' +
    ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode ';
  IF PnlStore.Visible THEN
    txt := txt + ' WHERE (StuffCoding.State = 0)AND (StoreStuffs.n_StoreID = ' +
      s_StoreID + ' ) ';
  txt := txt +
    '  GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, StuffCoding.SellPrice1 ';
  txt := txt + Fields_SD_1_9;
  if qryinit.FieldByName('EffectType').AsInteger in [3] then
  begin
    txt := ' SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName,StuffCoding.SellPrice1,  '
      + '    SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) AS SUMEntity, '
      + '    SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) AS SUMWeight '
      + Fields_SD_1_9 + ' FROM   ReciptItems INNER JOIN ' +
      '        Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN '
      + '        ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN '
      + '        StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode '
      + ' WHERE (StuffCoding.State = 0)AND (Recipts.ReciptDate <= ''' +
      qryRecipts.FieldByName('ReciptDate').AsString + ''')  ' +
      ifthen(PnlStore.Visible, 'AND (Recipts.StoreID = ' + s_StoreID + ')', '')
      + '   AND (ReciptTypes.EffectType = 2 OR ReciptTypes.EffectType = 4) ' +
    /// 4stock
      '   AND (Recipts.ReciptState < 3) ' +
      ' GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName,StuffCoding.SellPrice1 '
      + Fields_SD_1_9;
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
      colTopics_4_5, Results, colWidths_4_5, alLeft);
  end;
  if not(qryinit.FieldByName('EffectType').AsInteger in [3]) then
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
      colTopics_1_3, Results, colWidths_1_3, alLeft);
  if b then
  begin
    if not(qryItems.state in dsEditModes) then
      qryItems.edit;
    qryItems.FieldByName('StuffCode').AsString := Results[0];
  end; // if
end;

procedure TReciptsBuyF.EdtStuffCodeeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton7.Click;

end;

procedure TReciptsBuyF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton4.Click
end;

procedure TReciptsBuyF.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click
end;

procedure TReciptsBuyF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click
end;

procedure TReciptsBuyF.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryRecipts.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  RecallStateChange;

  FreeReservedCodes(DMf.adcBSell, '', '', IntToStr(formType));
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);

  FreeReservedCodes(DMf.adcBSell, 'Recipts', 'ReciptNumber', '');

  if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger in [0, 1, 4] then
  begin
    FreeReservedCodes(DMf.adcBSell, 'recipts', '',
      qryRecipts.FieldByName('ReciptType').AsString + '_' +
      qryRecipts.FieldByName('StoreID').AsString);
    FreeReservedCodes(DMf.adcBSell, 'recipts', '',
      qryRecipts.FieldByName('ReciptType').AsString + '_');
  end;

  SBtnPersonID1.Visible := not qryRecipts.FieldByName('PersonID1').ReadOnly;
  SBtnStoreID.Visible := not qryRecipts.FieldByName('StoreID').ReadOnly;
  actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >= 1)
    and ReciptStateDeficitsVisible(qryRecipts) and
    (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1);
  actDeficits.Enabled := (newPanel.Visible) and
    (qryinit.FieldByName('DeficitValueEditing').AsInteger = 0);
  CalcWheatDeficit;
end;

procedure TReciptsBuyF.ppLblCompanyDescGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('CompanyDesc', 'سهامي خاص')
end;

procedure TReciptsBuyF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TReciptsBuyF.plblCalcWheatDeficitGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := lblWheatDeficit.Caption
end;

procedure TReciptsBuyF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TReciptsBuyF.qryReciptsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryItems.state in dsEditModes then
    qryItems.Post;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  TrimStringFields(qryRecipts);
  if not CheckRequiredFields(qryRecipts) then
    Abort;

  if not ValidateDatasetDates(DataSet, ['AidDate'], APPBank.StartYear,
    APPBank.endYear) then
    Abort;

  if not ValidReciptNumber(qryRecipts, qryinit, myStore) then
    Abort;
  if LimitRecord then
    Abort;
  GetReciptNumber(qryinit, DataSet, 1, myStore);

  if ((pnlTozin.Visible) and (qryItems.RecordCount > 1)) then
  begin
    Warn2('تنها یک رکورد قابل ثبت است');
    Abort;
  end;

end;

procedure TReciptsBuyF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
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
  DataSet.FieldByName(EdtIOWeight.DataField).AsFloat :=
    roundto(DataSet.FieldByName(EdtIOWeight.DataField).AsFloat,
    opt.RoundEntity);
  DataSet.FieldByName(EdtTotalIOPrice.DataField).AsFloat :=
    roundto(DataSet.FieldByName(EdtTotalIOPrice.DataField).AsFloat, 0);
  DataSet.FieldByName('ControlCode').AsString :=
    ifthen(DataSet.FieldByName('ControlCode').IsNull, '0',
    DataSet.FieldByName('ControlCode').AsString);
  if not NonZeroControl then
    Abort;

end;

function TReciptsBuyF.NonZeroControl;
begin
  Result := False;
  If (qryItems.FieldByName(EdtIOEntity.DataField).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [1, 4, 5, 6]) Then
  begin
    Warn(opt.EntityCaption + ' وارد شده نامعتبر است.');
    PnlEntityWeightPrice.SetFocus;
    Exit;
  end; // if
  If (qryItems.FieldByName(EdtIOWeight.DataField).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [2, 4, 6, 7]) Then
  begin
    Warn(opt.WeightCaption + ' وارد شده نامعتبر است.');
    PnlEntityWeightPrice.SetFocus;
    Exit;
  end; // if
  If (qryItems.FieldByName(EdtTotalIOPrice.DataField).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [3, 5, 6, 7]) Then
  begin
    Warn('مبلغ وارد شده نامعتبر است.');
    PnlEntityWeightPrice.SetFocus;
    Exit;
  end; // if
  Result := True;
end;

procedure TReciptsBuyF.qryReciptsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
  // PayablePrice:Currency;
begin
  inherited;
  rid2 := qryItemsReciptItemID.AsInteger;
  if qryItems.state in dsEditModes then
    qryItems.Post;
  try
    qryItems.UpdateBatch;
    rid := qryReciptsReciptID.AsInteger;
    qryRecipts.Requery;
    qryRecipts.Locate('ReciptID', rid, []);
    qryItems.Requery;
    qryItems.Locate('ReciptItemID', rid2, []);
    // if getresponseShow then begin
    // if get_response('تغييرات ذخيره شوند؟')<>mrYes then abort;
    BigMessage('ثبت شد.', 1);
    // end;
    // DeleteFile(__AppData + UnsavedFileName);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn(E.Message);
      DataToExcel(qryItems);
      // ReItemID(qryItems, qryRecipts, 'ReciptItems', 'ReciptItemID', Self.Name,        qryinit.FieldByName('StepCorrelate').AsInteger);
    end;
  end; // try
  InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits, qry_Deficits4Print,
    qryinit.FieldByName('StepCorrelate').AsInteger);

  // PayablePrice:=CalcSumFileds(qry_Deficits4Print,'Deficit_Add_Dec');
  // PayablePrice:=CalcSumFileds(qryItems,EdtTotalIOPrice.DataField)+PayablePrice;
  if (qryinit.FieldByName('AutoCorrelate').AsInteger = 1) and
    (qryinit.FieldByName('CorrelateReciptType').AsInteger > 0) then
    actCorrelateRecipt.Execute;
  if (qryinit.FieldByName('AutoStateChange').AsInteger = 0) and
    (qryRecipts.FieldByName('ReciptState').Value = 0) then
    AutoStateChange(qryRecipts, qryinit);

  qryRecipts.EnableControls;

end;

procedure TReciptsBuyF.qryReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryRecipts) then
    Abort;

  if not ChkReciptState4Delete(qryinit, qryRecipts) then
    Abort;

  if not OkDeleteMaster(qryRecipts.FieldByName('ReciptID').AsString) then
    Abort;
  if not OkDelete(qryRecipts, False, 0) then
    Abort;
  if not Check4OkDelete_Deficits(Caption, qry_Deficits, qryRecipts) then
    Abort;
end;

function TReciptsBuyF.OkDeleteMaster(ReciptID: String): Boolean;
begin
  ReciptID4ParentReciptID := '';
  if ChkIsStepCorrelate(qryRecipts) then
  begin
    Result := True;
    ReciptID4ParentReciptID := qryRecipts.FieldByName('ReciptID').AsString;
    Exit;
  end;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption '
      + 'FROM Recipts INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType '
      + 'WHERE Recipts.ParentReciptID =' + ReciptID;
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

procedure TReciptsBuyF.qryItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not OkDeleteItem(qryItems.FieldByName('ReciptItemID').AsString) then
    Abort;
  if not OkDelete(qryRecipts, False, qryItemsReciptItemID.AsInteger) then
    Abort;
  if get_response('آيا براي حذف اين كالا مطمئن هستيد؟') <> mrYes then
    Abort;
end;

function TReciptsBuyF.OkDeleteItem(ReciptItemID: String): Boolean;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption '
      + 'FROM         Recipts INNER JOIN ' +
      'ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID INNER JOIN '
      + 'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType ' +
      'WHERE  ReciptItems.preReciptItemID =' + ifthen(ReciptItemID = '', '0',
      ReciptItemID);
    Active := True;
    Result := IsEmpty;
    if not Result then
      Warn('از اين كالا در ' + Fields[2].AsString + '  با شماره ' +
        Fields[0].AsString + ' و تاريخ ' + Fields[1].AsString +
        '  استفاده شده است و قابل حذف نيست.‏', mtInformation);
    Active := False;
  end; // with
end;

procedure TReciptsBuyF.qryReciptsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if ReciptID4ParentReciptID <> '' then
  begin
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'UPDATE Recipts SET ParentReciptID=null  WHERE  ParentReciptID= ' +
        ReciptID4ParentReciptID;
      try
        ExecSQL;
        // BigMessage(IntToStr(ExecSQL) + ' فرم‌ مرتبط آگاه شد.',2);
        Active := False;
      except
        Warn('اشكال در آگاه سازي فرم مرتبط‌');
      end; // try
    end; // with
    ReciptID4ParentReciptID := '';
  end;
  BigMessage('فرم حذف شد.', 1);
end;

procedure TReciptsBuyF.qryItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كالا حذف شد.', 1);
end;

procedure TReciptsBuyF.qryReciptsBeforeCancel(DataSet: TDataSet);
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

procedure TReciptsBuyF.qryReciptsBeforeEdit(DataSet: TDataSet);
begin
  inherited; // and not System4Edit
  if not CheckUserlevel(qryinit.FieldByName('EditLevelID'), qryRecipts) then
    Abort;
  if not allStateControls(qryRecipts, qryItems, qryinit, 'Recipt') then
    Abort;
  if not OkEditMaster(qryRecipts.FieldByName('ReciptID').AsString) then
    Abort;
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
    end; // else

end;

procedure TReciptsBuyF.qryReciptsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CmbSecondType.Tag := qryRecipts.FieldByName('SecondType').AsInteger;
  if not CheckUserlevel(qryinit.FieldByName('ADDLevelID'), qryRecipts) then
    Abort;

end;

procedure TReciptsBuyF.qryReciptsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryTozin.Open;
end;

function TReciptsBuyF.OkEditMaster(ReciptID: String): Boolean;
var
  i: Integer;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.ReciptNumber, Recipts.ReciptDate, ReciptTypes.ReciptCaption '
      + 'FROM Recipts INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType '
      + 'WHERE Recipts.ParentReciptID =' + ReciptID;
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
            end; // qryRecipts
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
              EdtIOWeight.ReadOnly := True;
              // EdtControlCode.ReadOnly:=True;
            end; // qryItems
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

procedure TReciptsBuyF.qryReciptsAfterScroll(DataSet: TDataSet);
// var
// PayablePrice:Currency;
begin
  inherited;
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, TDBGrid(nil), nil);
  // EdtUnitSellPrice.Visible := PriceOn_StoreType;
  // EdtTotalIOPrice.Visible := PriceOn_StoreType;
  GrpBoxAccount.Visible := PriceOn_StoreType and
    (qryinit.FieldByName('AccCodingShow').AsInteger > 0);
  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := DataSet.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Active := True;
    Last;
  end; // with
  with qry_Deficits4Print do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := DataSet.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Active := True;
  end; // with
  with qry_Deficits do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('ReciptID').Value := DataSet.FieldByName('ReciptID')
      .AsInteger;
    Active := True;
  end; // with
  qryCustActive(qryCust3, qryRecipts.FieldByName('PersonID3').AsInteger);

  // PayablePrice:=CalcSumFileds(qry_Deficits4Print,'Deficit_Add_Dec');
  // PayablePrice:=CalcSumFileds(qryItems,EdtTotalIOPrice.DataField)+PayablePrice;

  LblRecNo.Hint := Format('فرم %d از %d', [DataSet.RecNo, DataSet.RecordCount]);

  actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >= 1)
    and ReciptStateDeficitsVisible(qryRecipts) and
    (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1);
  if pnlTozin.Visible then
    with qryTozin do
    begin
      Close;
      Parameters.ParamByName('tozinid').Value := qryReciptsTozinID.AsInteger;
      Open;
    end;
  CalcWheatDeficit;
end;

procedure TReciptsBuyF.CalcWheatDeficit;
var
  WheatDeficit: Real48;
begin
  WheatDeficit := qryItemsInputWeight.AsFloat - qryTozinMandeh.AsFloat;
  lblWheatDeficit.Caption := FloatToStr(WheatDeficit)
end;

procedure TReciptsBuyF.EdtRNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnSearchReciptNumber.Click;
end;

procedure TReciptsBuyF.actSearchExecute(Sender: TObject);
var
  Results: array [0 .. 10] of String;
  txt, TxtFieldOutIn: String;
  b: Boolean;
begin
  inherited;
  TxtFieldOutIn := ifthen(FormOutput,
    'ReciptItems.OutputEntity,ReciptItems.OutputWeight,ReciptItems.TotalOutputPrice ',
    'ReciptItems.InputEntity,ReciptItems.InputWeight,ReciptItems.TotalInputPrice ');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
    ['', 'کد كالا', 'نام كالا', LblEntity.Caption, LblWeight.Caption, 'بها'],
    Results, [0, 50, 150, 50, 50, 100], alLeft);
  if b then
    qryItems.Locate('ReciptItemID', Results[0], []);
end;

procedure TReciptsBuyF.qryItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If not ADDItemChecked(qryRecipts) then
    Abort;
  If LimitRecord then
    Abort;
  if not(qryRecipts.state in dsEditModes) then
    Abort;

end;

procedure TReciptsBuyF.qryReciptsPersonID2Change(Sender: TField);
begin
  inherited;
  ServiceValue(qryRecipts, qryItems)
end;

procedure TReciptsBuyF.actRecallExecute(Sender: TObject);
begin
  inherited;
  CallRecall(qryinit, formType, FormOutput, qryRecipts, qryItems, qryRecipts,
    myStore.code, '', '', nil, []);
end;

procedure TReciptsBuyF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryItems.FieldByName(opt.SearchCode));
end;

procedure TReciptsBuyF.actRecallSpecialExecute(Sender: TObject);
var
  rid: Integer;
begin
  inherited;
  myStore.code := qryRecipts.FieldByName('StoreID').AsInteger;
  rid := qryItems.RecordCount; //
  If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
    'هيچ فرمي براي فراخواني مشخص نشده است') then
    Exit;

  case qryinit.FieldByName('RecallType').AsInteger of

    3:
      RecallSpecialRecipts2F.SelectRecall(formType,
        qryReciptsReciptID.AsInteger, FormOutput, myStore.code, qryItems,
        qryRecipts, qryinit, 1);
    4:
      RecallSpecialRecipts2F.SelectRecall(formType,
        qryReciptsReciptID.AsInteger, FormOutput, myStore.code, qryItems,
        qryRecipts, qryinit, 2);
  else
    if RecallSpecialReciptsF.SelectRecall(qryItems, qryinit, qryRecipts,
      myStore, True, 0, True) then
    begin
      qryItems.MoveBy(rid);
    end;

  end;

end;

function TReciptsBuyF.LimitRecord: Boolean;
begin
  Result := False;
  If qryItems.RecNo > qryinit.FieldByName('MaxRowsPerForm').AsInteger then
  begin
    Warn('حداكثر ركورد قابل ثبت در فرم " ' + qryinit.FieldByName
      ('MaxRowsPerForm').AsString + ' " ركورد مي‌باشد.');
    Result := True;
  end; // if
end;

procedure TReciptsBuyF.RecallStateChange;
begin
  BtnRecall.Enabled := ((qryinit.FieldByName('RecallType').AsInteger = 1) and
    (qryRecipts.state = dsInsert));
  if BtnRecall.Enabled then
  begin
    BtnRecall.BringToFront;
    zbal.Title := 'فراخواني ';
    zbal.Prompt.Text := 'براي فراخواني از اين قسمت استفاده كنيد.';
    zbal.show(BtnRecall);
  end; // if
  BtnRecallSpecial.Enabled := (qryinit.FieldByName('RecallType').AsInteger
    in [2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16, 18, 21, 22, 23]) and
    ((qryRecipts.state = dsEdit) or (qryRecipts.state = dsInsert));
  if BtnRecallSpecial.Enabled then
  begin
    BtnRecallSpecial.BringToFront;
    zbal.Title := 'فراخواني ويژه';
    zbal.Prompt.Text := 'براي فراخواني ويژه از اين قسمت استفاده كنيد.';
    zbal.show(BtnRecallSpecial);
  end; // if
end;

procedure TReciptsBuyF.Enter(Form_Type: Integer; LimitShow: Boolean = True;
  StoreID: Integer = 0; ReciptID: int64 = 0);
begin
  DM.myStore.code := 0;
  if not LimitShow then
    DM.myStore.code := StoreID;
  CreateMDIForm3(LimitShow, TReciptsBuyF, ReciptsBuyF, mdiMainF, Form_Type);
  ReciptsBuyF.FormReciptId := ReciptID;
  if ReciptsBuyF.FormReciptId <> 0 then
    if not ReciptsBuyF.qryRecipts.Locate('ReciptId',
      ReciptsBuyF.FormReciptId, []) then
    begin
      Warn('هيچ اطلاعاتي براي نمايش وجود ندارد.‏');
      ReciptsBuyF.Close;
    end; // if
  if (ReciptsBuyF.myStore.code = 0) and ReciptsBuyF.RestartStore then
    ReciptsBuyF.Close;
end;

procedure TReciptsBuyF.actPrintExecute(Sender: TObject);
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
    initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine,
      qryinit.FieldByName('FormSignature').AsString);
    ppReport1.PrinterSetup.Copies := PrintCount;
    try
      qryRecipts.DisableControls;
      qryItems.DisableControls;

      if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
        ppReport1.DeviceType := 'Printer';
      if PrintPreview then
        ppReport1.DeviceType := 'Screen'
      else
      begin
        ppReport1.DeviceType := 'Printer';
        ppReport1.ShowPrintDialog := False;
      end;

      if qryinit.FieldByName('PerformFileName').AsString <> '' then
      begin
        PopMuPrint.Items[0].Click;
        Exit;
      end
      else
      begin
        ppReport1.Print;
      end;
    finally
      qryRecipts.EnableControls;
      qryItems.EnableControls;
    end; // try
  end; // else
end;

procedure TReciptsBuyF.actPrint1Execute(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  footer_ := Trim(qryinit.FieldByName('FormSignature').AsString);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath
      (qryinit.FieldByName('PerformFileName').AsString);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + qryinit.FieldByName('PerformFileName').AsString +
          ' نظر يافت نشد.!‏', mtInformation);
      // DeviceType:='Printer';
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      SetSendToBackShapeOnPrint(Self);

      if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
        DeviceType := 'Printer';
      if PrintPreview then
        DeviceType := 'Screen'
      else
      begin
        DeviceType := 'Printer';
        ShowPrintDialog := False;
      end;

      Print;
    finally
    end; // try
  end; // with
end;

procedure TReciptsBuyF.actPrint2Execute(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  footer_ := Trim(qryinit.FieldByName('FormSignature').AsString);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath
      (qryinit.FieldByName('ReportFileName').AsString);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + qryinit.FieldByName('ReportFileName').AsString +
          ' نظر يافت نشد.!‏', mtInformation);
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
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

      Print;
    finally
    end; // try
  end; // with

end;

procedure TReciptsBuyF.ppLblAddresGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Address', '')
end;

procedure TReciptsBuyF.ppLbTelGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Tel1', '')
end;

procedure TReciptsBuyF.ppLblPostCodeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('PostalCode', '')
end;

procedure TReciptsBuyF.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber', '')
end;

procedure TReciptsBuyF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TReciptsBuyF.ppSysVarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TReciptsBuyF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('ReciptCaption').AsString
end;

procedure TReciptsBuyF.qryItemsStuffCodeChange(Sender: TField);
var
  AutoPrice: Currency;
begin
  // ___________________________   انتقال قيمت في       ____________________________
  qryStuff_Unit_TecInf.Active := False;
  qryStuff_Unit_TecInf.Active := True;
  qryStuff_Unit_TecInf.Locate('c_StuffCode', qryItems.FieldByName('StuffCode')
    .AsLargeInt, []);
  case qryinit.FieldByName('AutoPrice').AsInteger of
    2:
      AutoPrice := qryStuff_Unit_TecInf.FieldByName
        ('SellPrice' + IntToStr(CustValuationType + 1)).AsCurrency;
    3:
      AutoPrice := qryStuff_Unit_TecInf.FieldByName('BuyPrice').AsCurrency;
    4:
      AutoPrice := qryStuff_Unit_TecInf.FieldByName('StandardRate').AsCurrency;
  else
    AutoPrice := 0;
  end; // end case
  // if (qryItems.FieldByName('UnitSellPrice').IsNull) or (qryItems.FieldByName('UnitSellPrice').AsCurrency=0) then
  if not(qryItems.state in dsEditModes) then
    qryItems.edit;
  qryItems.FieldByName('UnitSellPrice').AsCurrency := AutoPrice;
  // qryStuff_Unit_TecInf.Active:=False;
  // ______________________________________________________________________________
  // if not FormOutput then  Exit;
  // ___________________________   موجودي       ___________________________________
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) AS Entity, ';
    SQL.Add('SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight)');
    SQL.Add('AS Weight, SUM(ReciptItems.TotalInputPrice - ReciptItems.TotalOutputPrice) AS Price');
    SQL.Add('FROM ReciptItems INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID ');
    SQL.Add('AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN ');
    SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');
    SQL.Add('WHERE (Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
      ('ReciptDate').AsString + ''') AND  ');
    SQL.Add('(Recipts.StoreID = ' + IntToStr(qryRecipts.FieldByName('StoreID')
      .AsInteger) + ') AND  ');
    SQL.Add('(ReciptItems.StuffCode = ' + qryItems.FieldByName('StuffCode')
      .AsString +
      ') AND (ReciptTypes.EffectType = 2 OR ReciptTypes.EffectType = 4) AND ');
    // 4stock
    SQL.Add('(ReciptItems.ReciptItemID <> ' + qryItems.FieldByName
      ('ReciptItemID').AsString + ')AND  (Recipts.ReciptState < 3)');
    Active := True;
    // StatusBar2.Repaint;
    Active := False;
  end; // With
end;

procedure TReciptsBuyF.actNoteMasterExecute(Sender: TObject);
begin
  inherited;
  NoteF.Enter(qryRecipts,
    (ValueControl and Integer(MainFormIsEditableNote) = 0));
end;

procedure TReciptsBuyF.actSearchReciptNumberExecute(Sender: TObject);
begin
  inherited;
  SearchReciptNumber(qryinit, qryRecipts, myStore)
end;

procedure TReciptsBuyF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  PopOtherMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsBuyF.btnPersonID3Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  txt := TADOQuery(FindComponent('qryCustomers3')).SQL.Text;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person3Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person3Caption').AsString + '', 'وزن',
    'آدرس'], Results, [50, 150, 80, 200], alLeft);
  if b then
    qryRecipts['PersonID3'] := Results[0];
end;

procedure TReciptsBuyF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryItems)
end;

procedure TReciptsBuyF.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton2.Click;
end;

procedure TReciptsBuyF.ppLabelnum2alphabetGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'جمع كل به حروف : ' + num2alphabet
    (StrToInt64(CurrToStr(roundto(qryItems.FieldByName
    (EdtTotalIOPrice.DataField).AsCurrency, 0)))) + ' ريال ';
  // num2alphabet(StrToInt64(RemoveComma(CurrToStrF(CalcSumFileds('Price'),ffCurrency,0))))+' ريال ';
end;

procedure TReciptsBuyF.ppDBTextStuffSizeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + '';
end;

procedure TReciptsBuyF.qryItemsInputWeightChange(Sender: TField);
begin
  inherited;
  if pnlTozin.Visible then
    qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency :=
      qryItems.FieldByName('UnitSellPrice').AsCurrency *
      qryItems.FieldByName(EdtIOWeight.DataField).AsCurrency;

  CalcWheatDeficit;
  qryItemsPortageChange(qryItemsInputWeight)
end;

procedure TReciptsBuyF.qryItemsInputWeightGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not qryItems.FieldByName((Sender as TField).FieldName).IsNull then
    Text := FloatToStr(roundto(qryItems.FieldByName((Sender as TField)
      .FieldName).AsFloat, opt.RoundEntity));
end;

procedure TReciptsBuyF.actCorrelateReciptExecute(Sender: TObject);
begin
  inherited;
  If ReciptCorrelate_ConversionCo_Chk(qryRecipts, qryinit) then
    try
      InsertCorrelateRecipt(qryinit, qryItems, formType, qryRecipts, FormOutput,
        DBNavigator1, MyEntityDisplayType);
      InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits,
        qry_Deficits4Print, qryinit.FieldByName('StepCorrelate').AsInteger);
    finally
      qryRecipts.EnableControls;
    end;
end;

procedure TReciptsBuyF.ppImage1DrawCommandCreate(Sender, aDrawCommand: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath('logo.bmp');
  if (FileExists(s)) then
    (Sender as TppImage).Picture.LoadFromFile(s);
  // TppImage(FindComponent('ppImage1')).Picture.LoadFromFile(s);
end;

procedure TReciptsBuyF.ppLblFormFooterGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormFooter').AsString;
end;

procedure TReciptsBuyF.qryReciptsSecondTypeChange(Sender: TField);
var
  txt: string;
begin
  inherited;
  if qryinit.FieldByName('AidNumRestOnSecType').AsInteger <> 1 then
    Exit;
  txt := Format('SELECT MAX(ReciptNumber)FROM Recipts WHERE(SecondType = %d )',
    [Sender.AsInteger]);
  txt := txt + Format('AND (ReciptType = %d )', [formType]);
  IF RestartStore THEN
    txt := txt + 'AND(StoreID = ' + IntToStr(myStore.code) + ')';
  txt := txt + 'AND(YearID = ' + IntToStr(APPBank.Year) + ')';
  qryRecipts.FieldByName('ReciptNumber').AsInteger :=
    GetANewCode(IntToStr(formType), txt, 'ReciptNumber');
end;

procedure TReciptsBuyF.qryReciptsStoreIDChange(Sender: TField);
begin
  inherited;
  myStore.code := Sender.AsInteger;
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, TDBGrid(nil), nil);
  // EdtUnitSellPrice.Visible := PriceOn_StoreType;
  // EdtTotalIOPrice.Visible := PriceOn_StoreType;
  GrpBoxAccount.Visible := PriceOn_StoreType and
    (qryinit.FieldByName('AccCodingShow').AsInteger > 0);
end;

procedure TReciptsBuyF.qryReciptsTozinIDChange(Sender: TField);
begin
  inherited;
  CalcWheatDeficit
end;

procedure TReciptsBuyF.qryReciptsPersonID1Change(Sender: TField);
begin
  inherited;
  CustValuationType := qryRecipts.FieldByName('_CustValuationType').AsInteger;
end;

procedure TReciptsBuyF.ppLblReMainGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF
    (ReMainPersonRecipt(qryItems.FieldByName(EdtTotalIOPrice.DataField)
    .AsCurrency, qryRecipts, qryinit, True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsBuyF.ppLblReMainOldGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(0, qryRecipts, qryinit,
    True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsBuyF.logoPrint(Sender: TObject);
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

procedure TReciptsBuyF.SpeedButton10Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if not(qryRecipts.state in dsEditModes) then
    Exit;
  txt := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
    ' WHERE (GroupType IN(' + qryinit.FieldByName('CustomerKind1').AsString +
    ')) AND dbo.ChkUser(OperatorID,' + IntToStr(User.id) + ')=1';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + 'ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString], Results,
    [50, 150], alLeft);
  if b then
  begin
    if not(qryItems.state in dsEditModes) then
      qryItems.edit;
    qryItems.FieldByName('PersonID1').AsInteger := StrToInt(Results[0]);
  end; // if
end;

procedure TReciptsBuyF.SpeedButton1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT TozinID,Note FROM Vu_Tozin WHERE(ReciptType = 27) ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' باسکول ', txt,
    ['کد', 'توضیحات '], Results, [50, 200], alLeft);
  if b then
  begin
    qryRecipts.FieldByName('TozinID').AsString := Results[0];
    with qryTozin do
    begin
      Close;
      Parameters.ParamByName('TozinID').Value := qryReciptsTozinID.AsInteger;
      Open;
      if not(qryItems.state in dsEditModes) then
        qryItems.edit;
      qryItemsRequestedWeight.AsFloat := qryTozinMandeh.AsFloat;
    end;
  end;

end;

procedure TReciptsBuyF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TReciptsBuyF.ppDBTxtPayablePriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsBuyF.actDeficitsExecute(Sender: TObject);
// var
// PayablePrice:Currency;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('DeficitsLevelID'), qryRecipts) then
    Abort;
  if qryRecipts.FieldByName('_HasDeficit').AsInteger <> 1 then
    Exit;
  qry_Deficits4Print.Requery();
  // if not (qryRecipts.State  in dseditmodes) then qryRecipts.Edit;
  ReciptsDeficitsF.Enter(qryItems, qryinit, qryRecipts, FormOutput,
    GetCustomersNoDiscount(qryRecipts, qryinit), Edit4Deficits);
  qryRecipts.Post;

  // PayablePrice:=CalcSumFileds(qry_Deficits4Print,'Deficit_Add_Dec');
  // PayablePrice:=qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency+PayablePrice;
  qry_Deficits4Print.Requery();
end;

procedure TReciptsBuyF.SBtnProductCodeClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  // ss:=IfThen(qryRecipts.FieldByName('StoreID').IsNull,'0',qryRecipts.FieldByName('StoreID').AsString);
  txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo'
    + ' FROM StuffCoding INNER JOIN' +
    ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN'
    + ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID' +
    ' WHERE (Stores.StoreKind = 1)';
  // 'WHERE     (StoreStuffs.n_StoreID = '+ss+' ) ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' محصولات  ', txt,
    ['کد', 'نام محصول', 'مشخصات فني'], Results, [50, 150, 100], alLeft);
  if b then
  begin
    if not(qryItems.state in dsEditModes) then
      qryItems.edit;
    qryItems['ProductCode'] := Results[0];
  end; // if
end;

procedure TReciptsBuyF.SBtnProductModelClick(Sender: TObject);
var
  c, txt, s: String;
begin
  inherited;
  txt := 'SELECT LookUpID,Name FROM LookUps WHERE (Kind = 15) ';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'مدلها', txt,
    ['کد', 'نام مدل'], alLeft);
  if s <> '' then
  begin
    if not(qryItems.state in dsEditModes) then
      qryItems.edit;
    qryItems['ProductModel'] := c;
  end; // if
end;

procedure TReciptsBuyF.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnProductCode.Click
end;

procedure TReciptsBuyF.actReciptStateTo0Execute(Sender: TObject);
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

procedure TReciptsBuyF.ppLblState2ZeroDrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryRecipts.FieldByName('ReciptState')
    .AsInteger = 3;
end;

procedure TReciptsBuyF.ppLabelnum2alphabetPayebelGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := roundto(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsBuyF.qryReciptsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
  qryItems.edit;
end;

procedure TReciptsBuyF.qryItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
end;

procedure TReciptsBuyF.actCorrelateConversionCoExecute(Sender: TObject);
begin
  inherited;
  CorrelateConversionCo(Self, qryinit, qryItems, qryRecipts, 0,
    MyEntityDisplayType);
end;

procedure TReciptsBuyF.ppLblAllStringReplaceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := StringReplace(Text, 'طرفقرداد', qryRecipts.FieldByName('_PersonName1')
    .AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'بهنشاني',
    qryRecipts.FieldByName('_PersonAddress').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'جمعمقدار',
    CurrToStr(qryItems.FieldByName(EdtIOEntity.DataField).AsCurrency),
    [rfReplaceAll]);
  Text := StringReplace(Text, 'جمعمبلغ',
    CurrToStrF(qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency,
    ffCurrency, 0), [rfReplaceAll]);
end;

procedure TReciptsBuyF.EdtStuffCodeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    qryItems.FieldByName(EdtIOEntity.DataField).AsInteger := 1;
    qryItems.Post;
    qryItems.Insert;
  end;

end;

procedure TReciptsBuyF.EdtStuffCodeChange(Sender: TObject);
begin
  inherited;
  if (Sender as TDBEdit).Text = '0' then
    (Sender as TDBEdit).Text := '';
end;

procedure TReciptsBuyF.ppLblHeaderGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormHeader').AsString;
end;

procedure TReciptsBuyF.actReportSearchExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.show(ppReport1, 'recipt', Self);
end;

procedure TReciptsBuyF.actReciptOnFormsRangeExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if (qryRecipts.FieldByName('_PersonName1').AsString = '') then
    Exit;
  if qryinit.FieldByName('CofferType').AsString = '' then
  begin
    Warn('فرم هاي خزانه داري قابل ارتباط مشخس نشده.!‏');
    Exit
  end;
  s := ' AND ((Forms.CustomerID2 = ' + qryRecipts.FieldByName('PersonID1')
    .AsString + ')' + ' or (Forms.CustomerID1 = ' + qryRecipts.FieldByName
    ('PersonID1').AsString + '))';
  ChooseReciptOnFormsRangeF.SelectChecks(qryRecipts,
    qryinit.FieldByName('CofferType').AsString, s, 0);
end;

procedure TReciptsBuyF.qryItemsRequestedWeightChange(Sender: TField);
var
  RequestedEntity: Real48;
begin
  inherited;
  RequestedEntity := qryItems.FieldByName('RequestedEntity').AsFloat;
  if qryItems.FieldByName('InvEntity').AsInteger <> 0 then
    RequestedEntity := qryItems.FieldByName('RequestedEntity').AsFloat +
      qryItems.FieldByName('InvEntity').AsInteger;

  // وزن ناخالص *(100- (درصد مواد زايد)  )*(100-درصد رطوبت )
  qryItems.FieldByName('ContactRate').AsFloat := RequestedEntity *
    qryItems.FieldByName('RequestedWeight').AsFloat / 100;

  qryItems.FieldByName('Auxiliary').AsFloat := qryItems.FieldByName('WaterCo')
    .AsFloat * (qryItems.FieldByName('RequestedWeight').AsFloat -
    qryItems.FieldByName('ContactRate').AsFloat) / 100;

  if (qryinit.FieldByName('DeficitValueUnitSellPrice2').AsInteger = 1) and
    (DiscountActive = 1) then
  begin
    qryItems.FieldByName(EdtIOEntity.DataField).AsFloat :=
      (((qryItems.FieldByName('RequestedWeight').AsFloat -
      qryItems.FieldByName('ContactRate').AsFloat - qryItems.FieldByName
      ('Auxiliary').AsFloat)) / 86) * 100;
    qryItems.FieldByName(EdtIOEntity.DataField).AsFloat :=
      roundto(qryItems.FieldByName(EdtIOEntity.DataField).AsFloat, -2);

    qryItems.FieldByName('DeficitValue').AsCurrency :=
      roundto(15.5 * qryItems.FieldByName('RequestedWeight').AsFloat, 0);

    qryItems.FieldByName('UnitSellPrice2').AsCurrency :=
      roundto(59.5 * qryItems.FieldByName('RequestedWeight').AsFloat, 0);

  end
  else
  begin
    qryItems.FieldByName(EdtIOEntity.DataField).AsFloat :=
      qryItems.FieldByName('RequestedWeight').AsFloat -
      qryItems.FieldByName('ContactRate').AsFloat;
  end;

  CalcWheatDeficit

end;

procedure TReciptsBuyF.qryItemsInputEntityChange(Sender: TField);
begin
  inherited;
  qryItems.FieldByName('SugarEntity').AsFloat :=
  // RoundTo(
    qryItems.FieldByName(EdtIOEntity.DataField).AsFloat *
    qryItems.FieldByName('SugarCo').AsFloat / 100;
  // ,2);
  qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency :=
    qryItems.FieldByName('UnitSellPrice').AsCurrency *
    qryItems.FieldByName(EdtIOEntity.DataField).AsCurrency;

end;

procedure TReciptsBuyF.qryItemsUnitSellPriceChange(Sender: TField);
begin
  inherited;
  qryItems.FieldByName(EdtTotalIOPrice.DataField).AsCurrency :=
    qryItems.FieldByName('UnitSellPrice').AsCurrency *
    qryItems.FieldByName(EdtIOEntity.DataField).AsCurrency;

end;

procedure TReciptsBuyF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(formType));
  FreeMyComponent(Self, ['qryCust3']);
end;

procedure TReciptsBuyF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5, True, IntToStr(formType));

end;

procedure TReciptsBuyF.qryItemsMachineWeightChange(Sender: TField);
begin
  inherited;
  qryItems.FieldByName('RequestedWeight').AsFloat :=
    qryItems.FieldByName('MachineFullWeight').AsFloat -
    qryItems.FieldByName('MachineWeight').AsFloat
end;

procedure TReciptsBuyF.qryItemsPortageChange(Sender: TField);
begin
  inherited;
  if pnlTozin.Visible then
    qryItemsUnitSellPrice2.AsCurrency :=
      roundto(qryItemsPortage.AsCurrency * qryItemsInputWeight.AsFloat, 0)

end;

procedure TReciptsBuyF.FormCreate(Sender: TObject);
begin
  inherited;
  myStore := DM.myStore;
  SetLookUpCash(qryItems);
  SetLookUpCash(qryRecipts);
  ReciptsBuyF.initFormQry;
  TozinIDActive(qryinit, qryRecipts, qryTozin, pnlTozin, nil, Self);
  pnlTozin2.Visible := pnlTozin.Visible;
  if pnlTozin.Visible then
    lblUnitSellPrice2.Caption := 'هزینه حمل';

  PnlEntityWeightPrice.Visible := not pnlTozin.Visible;
  With qryRecipts do
  begin
    Active := False;
    IF RestartStore THEN
    begin // 2
      if (FilterShow) then
        SelectStoreF.GetStore(myStore, qryinit.FieldByName('StoreCaption')
          .AsString, qryinit.FieldByName('StoreKindList').AsString,
          MyEntityDisplayType);
      SQL.Text := 'SELECT * ';
      SQL.Add('FROM Recipts');
      SQL.Add('WHERE (StoreID= :StoreID) AND (ReciptType = :ReciptType) AND (YearID = :YearID )');
      SQL.Add('ORDER BY ReciptNumber');
      Parameters.ParamByName('StoreID').Value := myStore.code;
      EdtStoreID.Enabled := False;
      SBtnStoreID.Enabled := False;
    end; // if  // 2
    Parameters.ParamByName('ReciptType').Value := formType;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
  end; // with
  if FilterShow then
    qryRecipts.Last;
  PrintCount := 1;
  If qryinit.FieldByName('PrintCount').AsInteger > 1 then
    PrintCount := qryinit.FieldByName('PrintCount').AsInteger;
end;

procedure TReciptsBuyF.EdtPersonID2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

procedure TReciptsBuyF.pdbtxtMiladi2ShamsiGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if Text <> '' then
    Text := miladi2Shamsi(StrToDateTime(Text)) + ' ' +
      FormatDateTime('hh:mm:ss ampm', StrToDateTime(Text))
end;

procedure TReciptsBuyF.qryTozinAfterScroll(DataSet: TDataSet);
begin
  inherited;
  frPelakF1.Pelak := qryTozinMachineNo.AsString;

end;

end.
