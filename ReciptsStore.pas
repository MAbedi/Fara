{ -----------------------------------------------------------------------------
  Unit Name: ReciptsStore
  Author:    Mahmood
  History: 89/11/30

  ----------------------------------------------------------------------------- }
unit ReciptsStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, DB, ADODB, ppComm, ppRelatv, ppDB, ppDBPipe,
  Grids, DM, Menus, ppModule, ppStrtch, ppSubRpt,
  ppRegion, ComCtrls, zAPIBalloon, FMTBcd, ppTypes,
  DBClient, ppBarCod, ppParameter, AppEvnts, Provider, jpeg,
  ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TReciptsStoreF = class(Ttemplate2MDIF)
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
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    qryRecipts: TADOQuery;
    qryReciptsStoreID: TSmallintField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsReciptType: TWordField;
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
    qryItemsOutputEntity: TFloatField;
    qryItemsOutputWeight: TFloatField;
    qryItemsTotalOutputPrice: TBCDField;
    qryItemsUnitSellPrice: TFMTBCDField;
    qryItemsItemNote: TStringField;
    qryStuff_Unit_TecInf: TADOQuery;
    qryItems_StuffName: TStringField;
    qryItems_UnitName: TStringField;
    srcRecipts: TDataSource;
    qryStores: TADOQuery;
    qryRecipts_StoresName: TStringField;
    qryRecipts_PersonName1: TStringField;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    actSendExel: TAction;
    actSort: TAction;
    actPrint: TAction;
    qryReciptsUseUnitID: TIntegerField;
    qryReciptsExpireDate: TStringField;
    LblReciptDate: TLabel;
    EdtReciptDate: TDBEdit;
    EdtRNum: TDBEdit;
    LblRecNo: TLabel;
    qryinit: TADOQuery;
    DataSetPost2: TDataSetPost;
    ppDBPipeline2: TppDBPipeline;
    PopOtherMenu: TPopupMenu;
    N1: TMenuItem;
    btnSearchReciptNumber: TSpeedButton;
    ppReport1: TppReport;
    actSearch: TAction;
    BitBtn6: TBitBtn;
    qryCustomers1: TADOQuery;
    actRecall: TAction;
    actRecallSpecial: TAction;
    zbal: TzAPIBalloon;
    actPrint1: TAction;
    PopMuPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    qryRecipts_ValuationType: TIntegerField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsOperatorID: TIntegerField;
    qryRecipts_OperatorName: TStringField;
    PopMnuGrid: TPopupMenu;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    actNoteMaster: TAction;
    N8: TMenuItem;
    actSearchReciptNumber: TAction;
    N14: TMenuItem;
    btnOtherMenu: TBitBtn;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    actCorrelateRecipt: TAction;
    qryReciptsAidDate: TStringField;
    qry_Deficits4Print: TADOQuery;
    ppDBPipeline3: TppDBPipeline;
    qryRecipts_CustValuationType: TIntegerField;
    LblStateChang: TLabel;
    qryItemsPersonID1: TIntegerField;
    ALLN: TMenuItem;
    N16: TMenuItem;
    srcDeficits4Print: TDataSource;
    actDeficits: TAction;
    Timer1: TTimer;
    qryRecipts_StoreKind: TIntegerField;
    actCorrelateConversionCo: TAction;
    actReciptStateTo0: TAction;
    N17: TMenuItem;
    mnuActGetCheckF10: TMenuItem;
    mnuActGetOtherMoneyF1: TMenuItem;
    qryReciptsFirstUser: TStringField;
    qryReciptsLastUser: TStringField;
    qryItemsFirstUser: TStringField;
    qryItemsLastUser: TStringField;
    qryReciptsReciptStartDate: TStringField;
    qryReciptsReciptEndDate: TStringField;
    qryRecipts_HasDeficit: TIntegerField;
    actReportSearch: TAction;
    actReciptOnFormsRange: TAction;
    qryReciptsMachineNo: TStringField;
    Panel4: TPanel;
    DBText12: TDBText;
    Label2: TLabel;
    BtnDeficits: TBitBtn;
    BitBtn15: TBitBtn;
    BtnDelete2: TBitBtn;
    qryReciptsArzTypeID: TIntegerField;
    qryReciptsRialsEqual: TBCDField;
    N2: TMenuItem;
    N3: TMenuItem;
    qryReciptsSecondType: TIntegerField;
    N4: TMenuItem;
    NReq_InvEntity: TMenuItem;
    actDeleteCorrelateRecipt: TAction;
    actGetExcel: TAction;
    Excel1: TMenuItem;
    actAllEdit: TAction;
    N7: TMenuItem;
    N9: TMenuItem;
    qryReciptsUseOtherID: TWideStringField;
    MenSellPrice: TPopupMenu;
    MenuItem3: TMenuItem;
    mnuSp1: TMenuItem;
    mnuSp2: TMenuItem;
    mnuSp3: TMenuItem;
    mnuSp4: TMenuItem;
    A_l_l_SP__Click: TMenuItem;
    NAllRecords: TMenuItem;
    N10: TMenuItem;
    BtnMachineFullWeight2: TBitBtn;
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
    grpItemNote: TGroupBox;
    dbmmoItemNote: TDBMemo;
    ppParameterList1: TppParameterList;
    actAllotment: TAction;
    N11: TMenuItem;
    mnuActCustomersF: TMenuItem;
    qryReciptsSellsMethod: TIntegerField;
    qryReciptsSellsEmporium: TIntegerField;
    qryReciptsMasirID: TIntegerField;
    qryReciptsDeliveryID: TIntegerField;
    qryReciptsPersonID2Bed: TWordField;
    qryReciptsYearID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryItemsYearID: TIntegerField;
    qryItemsServerID: TIntegerField;
    qryReciptsMachineName: TStringField;
    qryReciptsPersonID3: TIntegerField;
    qryReciptsCostDownSave: TBCDField;
    mnuActGetCheckF50: TMenuItem;
    mnuActGetOtherMoneyF2: TMenuItem;
    N13: TMenuItem;
    actSaveFormItems: TAction;
    actLoadFormItems: TAction;
    actReciptsRegulates: TAction;
    N15: TMenuItem;
    Action11: TMenuItem;
    DataSetProvider1: TDataSetProvider;
    actRpt001: TAction;
    actRpt0011: TMenuItem;
    qryReciptsDefaultDate: TStringField;
    grpReciptNote: TGroupBox;
    dbmmoReciptNote: TDBMemo;
    mnuQuotaPostF: TMenuItem;
    actPrint2: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppShape5: TppShape;
    ppShape1: TppShape;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText38: TppDBText;
    ppDBText12: TppDBText;
    ppLabel26: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel27: TppLabel;
    ppLBLReportTopic: TppLabel;
    ppLabel51: TppLabel;
    ppLabel17: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel32: TppLabel;
    ppDBText13: TppDBText;
    ppLabel41: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel52: TppLabel;
    ppLabel21: TppLabel;
    ppLine9: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLbl_PersonAddress: TppLabel;
    ppLblHeader: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppShape2: TppShape;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    DBnum2alphabet: TppDBText;
    ppDBCalc11: TppDBCalc;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBTextSumSelect: TppDBText;
    plblName_Note: TppLabel;
    plblSecondTypeItem: TppLabel;
    ppLabel9: TppLabel;
    ppLabel8: TppLabel;
    plblDate: TppLabel;
    plblNameNote: TppLabel;
    plblTotallSellPrice: TppLabel;
    ppLabel10: TppLabel;
    plblTotallSellPricAlpha: TppLabel;
    plblAmount1Total_Price2: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText14: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText19: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape11: TppShape;
    ppLabel24: TppLabel;
    ppLine8: TppLine;
    ppDBCalc5: TppDBCalc;
    ppCalcNum2alphabet: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel3: TppLabel;
    ppLabel30: TppLabel;
    ppLine20: TppLine;
    ppLabel19: TppLabel;
    ppLine21: TppLine;
    ppLBLMandeh: TppLabel;
    ppLabel29: TppLabel;
    ppLabel35: TppLabel;
    ppLabel46: TppLabel;
    ppLine5: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBText4: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalcnum2alphabet: TppDBCalc;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBCalc10: TppDBCalc;
    // raCodeModule1: TraCodeModule;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel14: TppLabel;
    ppLabel13: TppLabel;
    ppPageStyle1: TppPageStyle;
    qryReciptsParentCoReciptID: TIntegerField;
    plblAllReadBankConfig: TppLabel;
    plblAllReadBankConfig1: TppLabel;
    plblAllReadBankConfig2: TppLabel;
    btn1: TBitBtn;
    qryReciptsInsertDate: TDateTimeField;
    qryItemsStuffCode: TLargeintField;
    actGetExcelMasterDetails: TAction;
    aBigPanel: TPanel;
    horoofPanel: TPanel;
    qryReciptsTruckNumber: TStringField;
    dbtxtReciptState: TDBText;
    qryReciptsMachineInfo: TStringField;
    mnuN12: TMenuItem;
    mnuN13: TMenuItem;
    N12: TMenuItem;
    BtnExcel: TBitBtn;
    actCopy: TAction;
    mnuN18: TMenuItem;
    mnuCopy: TMenuItem;
    plblPrint1: TppLabel;
    ppLabel12: TppLabel;
    qryReciptsAidNumber: TStringField;
    qryReciptsInsertTime: TStringField;
    qryReciptsEditTime: TStringField;
    actInsertNote: TAction;
    cliBarcodeStuffCode: TLargeintField;
    cliBarcodeOutputEntity: TFloatField;
    cliBarcodeOutputWeight: TFloatField;
    cliBarcodeUnitSellPrice: TFMTBCDField;
    cliBarcodeTotalOutputPrice: TBCDField;
    cliBarcodeItemNote: TStringField;
    cliBarcodeReciptItemID: TIntegerField;
    cliBarcodeReciptID: TIntegerField;
    cliBarcode_StuffName: TStringField;
    cliBarcode_UnitName: TStringField;
    cliBarcodePersonID1: TIntegerField;
    cliBarcodeFirstUser: TStringField;
    cliBarcodeLastUser: TStringField;
    cliBarcodeServerID: TIntegerField;
    cliBarcodeYearID: TIntegerField;
    qryItems____StuffTecInfo: TStringField;
    qryItemsInputEntity: TFloatField;
    qryItemsInputWeight: TFloatField;
    qryItemsTotalInputPrice: TBCDField;
    qryItemsControlCode: TLargeintField;
    qryItemsacc_DetailCode: TStringField;
    qryItemsacc_CTopicCode: TStringField;
    qryItemsacc_CTopicCode2: TStringField;
    qryItemsIRow: TIntegerField;
    qryItemsAidDate: TStringField;
    qryItemsPestEntity: TBCDField;
    actRow: TAction;
    mnuRow: TMenuItem;
    actGo2Entity: TAction;
    PnlMachineM: TPanel;
    Label27: TLabel;
    edtMachineName: TDBEdit;
    PnlPerson1: TPanel;
    LblPerson1: TLabel;
    btnPersonID1: TSpeedButton;
    DBTextPersonID1: TDBText;
    EdtPersonID1: TDBEdit;
    Panel1: TPanel;
    PnlAidInfoMaster: TPanel;
    LblAidInfoNo: TLabel;
    LblAidInfoDate: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    pnlStore: TPanel;
    Label1: TLabel;
    lblTotalValue: TLabel;
    pnlStore1: TPanel;
    LblStore: TLabel;
    btnStoreID: TSpeedButton;
    DBTextStoreID: TDBText;
    EdtStoreID: TDBEdit;
    dbedtTotalValue: TDBEdit;
    actGo2Code: TAction;
    pnlSells: TPanel;
    pnlSellsEmporium: TPanel;
    Label13: TLabel;
    dblkcbb_SellsEmporium: TDBLookupComboBox;
    pnlSellsMethod: TPanel;
    Label8: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    qryRecipts_CustomersDiscount: TFloatField;
    qryItems_CTopicCode3: TStringField;
    qryItemsacc_CTopicCode3: TStringField;
    qryItemsProductModel: TIntegerField;
    qryItemsacc_TopicCode: TLargeintField;
    BtnCorrelateRecipt: TBitBtn;
    DBGrid1: TCedarDbgrid;
    ppDBPipelineSumGrid1: TppDBPipeline;
    mnuSp5: TMenuItem;
    mnuSp6: TMenuItem;
    mnuSp7: TMenuItem;
    qryItemsID: TFMTBCDField;
    procedure btnPersonID1Click(Sender: TObject);
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
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
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
    procedure ppLabelOutputWeightGetText(Sender: TObject; var Text: String);
    procedure ppLabelOutputEntityGetText(Sender: TObject; var Text: String);
    procedure ppLabelTotalOutputPriceGetText(Sender: TObject; var Text: String);
    procedure ppLabelnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure ppDBTextStuffSizeGetText(Sender: TObject; var Text: String);
    procedure qryItemsInputWeightGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryItemsTotalInputPriceChange(Sender: TField);
    procedure qryItemsTotalOutputPriceChange(Sender: TField);
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
    procedure actReciptStateTo0Execute(Sender: TObject);
    procedure ppLblState2ZeroDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLabelnum2alphabetPayebelGetText(Sender: TObject;
      var Text: String);
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
    procedure N3Click(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure N4Click(Sender: TObject);
    procedure ppLbl__StandardRateGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtPayableSellPriceGetText(Sender: TObject; var Text: String);
    procedure ppLabelnum2alphabetPayebelSellPriceGetText(Sender: TObject;
      var Text: String);
    procedure NReq_InvEntityClick(Sender: TObject);
    procedure qryReciptsBeforeScroll(DataSet: TDataSet);
    procedure actDeleteCorrelateReciptExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actAllEditExecute(Sender: TObject);
    procedure DBnum2alphabetGetText(Sender: TObject; var Text: String);
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
    procedure actAllotmentExecute(Sender: TObject);
    procedure plblName_NoteGetText(Sender: TObject; var Text: String);
    procedure plblSecondTypeItemGetText(Sender: TObject; var Text: String);
    procedure qryItemsTaxCoChange(Sender: TField);
    procedure btnMasirIDClick(Sender: TObject);
    procedure btnDeliveryIDClick(Sender: TObject);
    procedure btnPersonID3Click(Sender: TObject);
    procedure plblDateGetText(Sender: TObject; var Text: String);
    procedure plblNameNoteGetText(Sender: TObject; var Text: String);
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
    procedure NAllGetStuffCodeFromStuffTecInfo(Sender: TObject);
    procedure plblAllReadBankConfigGetText(Sender: TObject; var Text: String);
    procedure actGetExcelMasterDetailsExecute(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryReciptsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure mnuN13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure qryItemsMachineFullWeightChange(Sender: TField);
    procedure actCopyExecute(Sender: TObject);
    procedure qryItemsArzRateChange(Sender: TField);
    procedure qryReciptsRialsEqualChange(Sender: TField);
    procedure qryItemsStuffCodeChange(Sender: TField);
    procedure actInsertNoteExecute(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure qryReciptsAfterCancel(DataSet: TDataSet);
    procedure actRowExecute(Sender: TObject);
    procedure actGo2EntityExecute(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure actGo2CodeExecute(Sender: TObject);
    procedure actCorrelateReciptExecute(Sender: TObject);
    procedure qryItemsSecondTypeItemGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryItemsSecondTypeItemSetText(Sender: TField; const Text: String);

  private
    { Private declarations }
    // cloned:  TADOQuery;
    myStore: TStore;
    UnsavedFileName_M, UnsavedFileName, ReciptID4ParentReciptID: String;
    Form_InOut: String;
    FieldNamePrice, FieldNameEntity, FieldNameWeight: String;
    RestartStore, FormOutput, FilterShow, getresponseShow,
      PriceOn_StoreType: Boolean;
    UnitPriceReadOnly, formType, CustValuationType: Byte;
    ValueControl: LargeInt;
    PrintCount: Integer;
    EntityValue: Real48;
    MachineFullWeight1: Real;
    ReciptsDsInsert: Boolean;
    popStuffTecInfo: TPopupMenu;
    MyEntityDisplayType: Byte;
    qryCust1: TADOQuery;
    BeforeServerID, BeforeYearID: String;
    Edit4Deficits: Boolean;
    CurrentEntity, CurrentWeight: Extended;
    procedure initFormConfig;
    procedure initFormPanel;
    procedure initForm4Output;
    procedure ChangeUnitSellPrice;
    procedure ChangeTotalInputPrice;
    procedure SaveArticlesToFile;
    function Calc_SumFileds(FiledName: String): Currency;
    function CalcSumWeight: Currency;
    function OkDeleteMaster(ReciptID: String): Boolean;
    function OkDeleteItem(ReciptItemID: String): Boolean;
    function OkEditMaster(ReciptID: String): Boolean;
    procedure EndOfPrice(Field_Name: String);
    function NonZeroControl: Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure initAddField;
    // procedure LocateRecipts(qry: TADOQuery);
    procedure GetStuffCodeFromStuffTecInfo(StuffTecInfo: String;
      StoreID: Integer);
    procedure MachineFullWeight_MachineWeight;
    procedure ChangeSQlqryStuff;
    function ReciptBe4PostCtrlEntAct(IsOnDelelte: Boolean = False): Boolean;

  public
    procedure Enter(Form_Type: Integer; LimitShow: Boolean = True;
      StoreID: Integer = 0);
    procedure initFormQry;
    { Public declarations }
  end;

var
  ReciptsStoreF: TReciptsStoreF;

implementation

uses searchCode_ADO, shamsiDate, GlobalPro, mmessage, SelectStore, Math,
  Note, StrUtils,
  ReciptsDeficits, sort2, sndkey32,
  mdiMain, FormFunctions, searchReports, ChooseReciptOnFormsRange,
  GetExcel, Special_Search, searchCode_ADO4Scroll,
  GeneralDM, ppPrintr, Allotment, ReciptsFunctions,
  ReciptsRegulates, Rpt001, filter_ADO, FilterClass_ADO,
  GetExcelMasterDetails, RptCardex, StuffTransaction, CPort, CPortFunctions,
  FaraConsts;

{$R *.dfm}

procedure TReciptsStoreF.SaveArticlesToFile;
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

procedure TReciptsStoreF.initFormQry;
var
  StoreKindList: String;
begin
  // cloned:=TADOQuery.Create(Self);
  // WaterCoID:=ColumnIndexByFieldName(DBGrid1,'WaterCo');
  // DeficitValueID:=ColumnIndexByFieldName(DBGrid1,'DeficitValue');

  // if opt.StuffEnableKind in[0] then qryStuff_Unit_TecInf.SQL.Add(\'AND State = 0');  1

  FilterShow := var_glb_Boolean;
  formType := var_glb_gParam;
  getresponseShow := True;
  UnsavedFileName := 'UnsavedItem_Recipts' + IntToStr(formType) + '.DAT';
  UnsavedFileName_M := 'UnsavedMaster_Recipts' + IntToStr(formType) + '.DAT';
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
    ValueControl := qryinit.FieldByName('ValueControl').AsLargeInt;
    if FieldByName('OrderByFields').AsString <> EmptyStr then
      qryItems.SQL.Add('ORDER BY ' + FieldByName('OrderByFields').AsString);
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
      ifthen(User.PowerUser, 127, User.id);
  end; // with
  IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
  begin
    NotNull(qryinit.FieldByName('CustomerKind1').AsString,
      'هيچ گروهي براي گروه مشتري 1 مشخص نشده است');
    with qryCustomers1 do
    begin
      Active := False;
      SQL.Add(' WHERE (CustomersGroup.GroupType IN(' +
        Trim(qryinit.FieldByName('CustomerKind1').AsString) + ')) ');

    end; // with
    qryCustCreate(qryCust1, '1', ReciptsStoreF);
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
  end
  else
  begin
    Form_InOut := 'Input';
    FieldNamePrice := 'TotalInputPrice';
    FieldNameEntity := 'InputEntity';
    FieldNameWeight := 'InputWeight';
  end;
  mnuActGetCheckF50.Visible := not FormOutput;
  mnuActGetOtherMoneyF2.Visible := not FormOutput;
  mnuActGetCheckF10.Visible := FormOutput;
  mnuActGetOtherMoneyF1.Visible := FormOutput;
  // qryStuff_Unit_TecInf.Active:=true;
  qryItems.Active := False;
  initFormPanel;
  initForm4Output;
  initFormConfig;
  SetFieldIndexFormGrid(DBGrid1);
end;

procedure TReciptsStoreF.initFormPanel;
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
    // ________________________  عنوان بجاي كلمه مقدار و وز ن__________________________

    qryItems.FieldByName('InputEntity').DisplayLabel := opt.EntityCaption;
    qryItems.FieldByName('OutputEntity').DisplayLabel :=
      opt.EntityCaption + '#';
    qryItems.FieldByName('InputWeight').DisplayLabel := opt.WeightCaption;
    qryItems.FieldByName('OutputWeight').DisplayLabel :=
      opt.WeightCaption + '#';
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

    // <   مشتري 1 فعال >
    PnlPerson1.Visible := FieldByName('Person1Active').AsInteger = 1;
    LblPerson1.Caption := LblPerson1.Caption +
      FieldByName('Person1Caption').AsString;
    qryRecipts.FieldByName('PersonID1').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('PersonID1').DisplayLabel := 'كد ' +
      LblPerson1.Caption;
    qryRecipts.FieldByName('_PersonName1').Required := PnlPerson1.Visible;
    qryRecipts.FieldByName('_PersonName1').DisplayLabel := 'نام ' +
      LblPerson1.Caption;

    b := FieldByName('PersonID1OnDetailActive').AsInteger in [1, 2, 3];
    setColumns2(DBGrid1, b, 'PersonID1');
    setColumns2(DBGrid1, b, '_PersonName1');
    qryItems.FieldByName('PersonID1').DisplayLabel :=
      FieldByName('Person2DetailCaption').AsString;


    // < 7  مشتري 2 فعال >

    b := FieldByName('NoteShow').AsInteger in [2, 3];
    setColumns2(DBGrid1, b, 'ItemNote');
    grpItemNote.Visible := b;

    b := FieldByName('NoteShow').AsInteger in [1, 3];
    grpReciptNote.Visible := b;

    setColumns2(DBGrid1, FieldByName('DetailDateActive').AsInteger = 1,
      'ItemDate');

    b := FieldByName('StandardRateActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'StandardRate');
    setColumns2(DBGrid1, b, 'TotalStandardRate');

    PnlAidInfoMaster.Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];
    b := FieldByName('AidInfoActive').AsInteger in [2, 3, 4];
    setColumns2(DBGrid1, b, 'AidNumber');
    setColumns2(DBGrid1, b, 'AidDate');
    LblAidInfoNo.Caption := LblAidInfoNo.Caption + ' ' +
      FieldByName('AidInfoCaptionNo').AsString;
    LblAidInfoDate.Caption := LblAidInfoDate.Caption + ' ' +
      FieldByName('AidInfoCaption').AsString;

    // < اطلاعات كسورات و اضافات نمايش شود >
    actDeficits.Visible := FieldByName('DeficitsActive').AsInteger >= 1;
    // <  توضيحات Datail فعال باشد >
    qryItems.FieldByName('ControlCode').DisplayLabel :=
      FieldByName('ControlCodeCaption').AsString;
    setColumns2(DBGrid1, opt.ControlCodeActive > 0, 'ControlCode');

    actCorrelateRecipt.Visible := FieldByName('CorrelateReciptType')
      .AsInteger > 0;
    actCorrelateRecipt.Enabled := FieldByName('CorrelateKind').AsInteger > 0;
    actCorrelateRecipt.Visible := False;

    actCorrelateConversionCo.Visible := FieldByName('ConversionCoSerial')
      .AsInteger > 0;


    // ------------------------set PnlAidInfoMaster--------------------------//

    actPrint.Hint := FieldByName('PerformFileName').AsString + #13#10 +
      FieldByName('ReportFileName').AsString + #13#10;

    EdtRNum.ReadOnly := FieldByName('EditReciptNumberActive').AsInteger <> 1;

    lblCaption.Hint := IntToStr(formType);

    b := FieldByName('DiscountActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'WaterCo');
    setColumns2(DBGrid1, b or (FieldByName('VATActive').AsInteger = 1) or
      (FieldByName('PawsFieldsActive').AsInteger > 0), 'TotallSellPrice');
    // b:=b or  FieldByName('DeficitValueEditing').AsInteger=0;
    setColumns2(DBGrid1, b, 'DeficitValue');

    if FieldByName('ExtraCodingAddStuffName').AsInteger = 1 then
      qryItems.FieldByName('_StuffName').LookupResultField := 'StuffName';

    b := FieldByName('AcceptRollbackEntity').AsInteger in [1, 3];
    setColumns2(DBGrid1, b and opt.EntityDisplay, 'AcceptEntity');
    setColumns2(DBGrid1, b and opt.WeightDisplay, 'AcceptWeight');
    b := FieldByName('AcceptRollbackEntity').AsInteger in [2, 3];
    setColumns2(DBGrid1, b and opt.EntityDisplay, 'RollbackEntity');
    setColumns2(DBGrid1, b and opt.WeightDisplay, 'RollbackWeight');

    actAllotment.Visible := FieldByName('AllotmentActive').AsInteger = 1;

    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [1], 'WaterCo', aReadOnly);
    setColumns2(DBGrid1, FieldByName('WaterCoOrDeficitValueEdit').AsInteger
      in [0], 'DeficitValue', aReadOnly);

    b := (qryinit.FieldByName('ProcedureActive').AsInteger > 0);
    setColumns2(DBGrid1, b, 'ProductModel');
    setColumns2(DBGrid1, b, '_ProductModelName');

    if FieldByName('RequestedChange').AsInteger = 2 then
      MyEntityDisplayType := 2
    else
      MyEntityDisplayType := opt.EntityDisplayType;

    if qryinit.FieldByName('BarCodeKind').AsInteger in [0, 2, 4, 7, 8, 9, 10, 11]
    then
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, '____StuffTecInfo')].Free;

    PnlMachineM.Visible := FieldByName('MachineActive').AsInteger in [1, 3];

    PnlPerson1.Visible := PnlAidInfoMaster.Visible or PnlPerson1.Visible;

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
        LookUpDataset := qryCustomers1;
      end
      else
      begin
        KeyFields := 'PersonID3';
        LookUpDataset :=
          TADOQuery(ReciptsStoreF.FindComponent('qryCustomers3'));
      end;
      LookUpKeyFields := 'CustID';
      LookupResultField := 'InfoWeight';
      qryItems.FieldDefs.Add(Name, ftFloat, 0, True);
    end;
  BtnMachineFullWeight2.Visible := b;
  setColumns2(DBGrid1, b, 'TotalWeight');
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

end;

procedure TReciptsStoreF.initAddField;
var
  b: Boolean;
  qry: TADOQuery;
begin
  With qryinit do
  begin

    VATActiveFields(qryStores, qryRecipts, qryItems, qryinit, nil, nil,
      qryStuff_Unit_TecInf, DBGrid1, qryItemsTaxCoChange,
      qryItemsTaxValueChange, nil);

    b := FieldByName('SellsEmporiumActive').AsInteger = 1;
    pnlSellsEmporium.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(ReciptsStoreF);
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
        qry := TADOQuery.Create(ReciptsStoreF);
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
        qryRecipts.FieldDefs.Add(Name, ftString, 100, True);
        dblkcbb_SellsMethod.DataField := FieldName;
      end;
    end;
    pnlSells.Visible := pnlSellsEmporium.Visible or pnlSellsMethod.Visible;

  end;
  SetLookUpCash(qryItems);
  SetLookUpCash(qryRecipts);
  // ColorDBGrid(DBGrid1);

end;

procedure TReciptsStoreF.qryItemsTaxCoChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // TaxCo
end;

procedure TReciptsStoreF.initFormConfig;
var
  b: Boolean;
begin
  ReciptID4ParentReciptID := '';
  UnitPriceReadOnly := qryinit.FieldByName('UnitPriceReadOnly').AsInteger;

  b := qryinit.FieldByName('PriceReadOnly').AsInteger = 1;

  // بهاي کل    في      هردو

  setColumns2(DBGrid1, b or (UnitPriceReadOnly in [0]), 'UnitSellPrice',
    aReadOnly);
  setColumns2(DBGrid1, b or (UnitPriceReadOnly in [1]), 'TotalInputPrice',
    aReadOnly);
  setColumns2(DBGrid1, b or (UnitPriceReadOnly in [1]), 'TotalOutputPrice',
    aReadOnly);

  // setColumns2(DBGrid1,(UnitPriceReadOnly in[0,2]) or b,'UnitSellPrice','ReadOnly');
  // setColumns2(DBGrid1,(UnitPriceReadOnly in[1,2]) or b,'TotalInputPrice','ReadOnly');
  // setColumns2(DBGrid1,(UnitPriceReadOnly in[1,2]) or b,'TotalOutputPrice','ReadOnly');

  // < 14 مقدارو وزن درخواستي >
  b := qryinit.FieldByName('Section2Visible').AsInteger in [0, 1];
  setColumns2(DBGrid1, b, 'RequestedEntity');
  b := qryinit.FieldByName('Section2Visible').AsInteger in [1, 3];
  setColumns2(DBGrid1, b, 'RequestedWeight');

  // qryItems.FieldByName(FieldNameEntity).ReadOnly:=(opt.ComPortKind=3) and
  // (qryinit.FieldByName('TozinActive').AsInteger=2);

end;

procedure TReciptsStoreF.initForm4Output;
begin
  setColumns2(DBGrid1, (not FormOutput) and opt.EntityDisplay, 'InputEntity');
  setColumns2(DBGrid1, (FormOutput) and opt.EntityDisplay, 'OutputEntity');
  setColumns2(DBGrid1, (not FormOutput) and opt.WeightDisplay, 'InputWeight');
  setColumns2(DBGrid1, (FormOutput) and opt.WeightDisplay, 'OutputWeight');
  setColumns2(DBGrid1, not FormOutput, 'TotalInputPrice');
  setColumns2(DBGrid1, FormOutput, 'TotalOutputPrice');
end;

procedure TReciptsStoreF.btnPersonID1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  qryCustomers1.Active := False;
  qryCustomers1.Active := True;
  txt := 'SELECT Customers.CustID,Customers.CustName,Address,Tel,PersonID3,UseUnitID FROM Customers '
    + ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + ' WHERE (CustomersGroup.GroupType IN(' + qryinit.FieldByName
    ('CustomerKind1').AsString + ')) ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + ' ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString, 'آدرس', 'تلفن',
    'مشتري3', 'محل مصرف'], Results, [50, 150, 200, 50, 50, 50], alLeft);
  if b then
  begin
    // if not (qryRecipts.state in dsEditModes) then   qryRecipts.edit;
    qryRecipts['PersonID1'] := Results[0];
    qryRecipts['PersonID3'] := Results[4];
    qryRecipts['UseUnitID'] := Results[5];
    // if PnlPerson2.Visible then EdtPersonID2.SetFocus
  end; // if
end;

procedure TReciptsStoreF.ALLDBEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('Btn' + (Sender as TDBEdit).DataField)).Click;
end;

procedure TReciptsStoreF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if (not CheckRequiredFields(qryRecipts)) then
  begin
    DataSet.Cancel;
    Exit;
  end;

  if not(qryRecipts.state in dsEditModes) then
    qryRecipts.edit;

  if qryinit.FieldByName('ReciptIDEventKind').AsInteger = 0 then
    GetANewID(DataSet, IntToStr(formType), 'ReciptItems', 'ReciptItemID',
      qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger)
  else
    DataSet.FieldByName('ReciptItemID').AsInteger := 0;

  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').AsInteger;
  DataSet.FieldByName('FirstUser').AsString := User.name;
  if (qryinit.FieldByName('DiscountEntryKind').AsInteger = 1) then
    DataSet.FieldByName('WaterCo').AsFloat :=
      GetCustomersNoDiscount(qryRecipts, qryinit);
  AccCodingShowInsert(qryinit, TADOQuery(DataSet), qryRecipts);
  if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [0, 1] then
    DataSet.FieldByName('PersonID1').AsInteger :=
      qryRecipts.FieldByName('PersonID1').AsInteger;
  if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [3] then
    DataSet.FieldByName('PersonID1').AsInteger :=
      qryRecipts.FieldByName('PersonID2').AsInteger;

  // if qryinit.FieldByName('VATActive').AsInteger=1 then
  // DataSet.FieldByName('TaxCo').AsFloat:=qryinit.FieldByName('VATCo').AsFloat;

  if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [2, 3] then
    DataSet.FieldByName('InsertTime').AsString := SysUtils.TimeToStr(Now);

  qryItemsIRow.AsInteger := qryItems.RecordCount + 1;

  try
    DBGrid1.SetFocus;
    DBGrid1.SelectedIndex := 1;
  except
    on E: Exception do
    begin
    end;
  end;

end;

procedure TReciptsStoreF.qryReciptsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  GetReciptID(qryRecipts, qryItems, qryinit, 0);
  DataSet.FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
  if DefaultDateActive(qryinit) then
    DataSet.FieldByName('DefaultDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  GetReciptNumber(qryinit, DataSet, 0, myStore);
  DataSet.FieldByName('InsertDate').AsDateTime := Now;
  DataSet.FieldByName('ReciptType').AsInteger := formType;

  SetDefaultSellsMethodEmporium(qryRecipts, dblkcbb_SellsEmporium,
    dblkcbb_SellsMethod);

  if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [1, 3] then
    DataSet.FieldByName('InsertTime').AsString := SysUtils.TimeToStr(Now);

  IF RestartStore THEN
    DataSet.FieldByName('StoreID').AsInteger := myStore.code; // 2

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

  ReciptStateAutoStateChange(qryinit, DataSet);

  DataSet.FieldByName('AddDecValue').AsInteger := 0;

  DataSet.FieldByName('TotalValue').AsInteger := 0;
  // if not PnlSecondType.Visible then
  // DataSet.FieldByName('SecondType').AsCurrency:=0;

  DataSet.FieldByName('PersonID3').AsCurrency := 0;
  DataSet.FieldByName('UseOtherID').AsCurrency := 0;
  qryReciptsPersonID1.AsInteger := qryReciptsPersonID1.Tag;
  DataSet.FieldByName('FirstUser').AsString := User.name;

  qryReciptsSellsMethod.AsInteger := 1;
  qryReciptsSellsEmporium.AsInteger := 1;

  if PnlPerson1.Visible then
  begin
    if (qryinit.FieldByName('AutoInsertPostInsert').AsInteger = 0) then
      EdtPersonID1.SetFocus
    else
      qryItems.Insert;
    SendKeys(#13, False);
  end;
  if PnlMachineM.Visible then
    edtMachineName.SetFocus;

end;

procedure TReciptsStoreF.FormDestroy(Sender: TObject);
begin
  inherited;
  opt.PayablePrice := 0;
  opt.CustomerID1 := 0;
  opt.ReciptID := 0;
  FreeMyComponent(Self, ['qryUseOthers', 'qryAddressInMasir', 'qrySellsInfo36',
    'qrySellsEmporiums', 'qrySellsMethods', 'qryCustomers3', 'qryCust1',
    'qryCust2', 'qryCust3', 'srcCustomers1', 'srcCustomers2', 'srcCustomers3',
    'ppDBPipelineCustomers1', 'ppDBPipelineCustomers2',
    'ppDBPipelineCustomers3']);
  // SaveColWidth(DBGrid1, IntToStr(formType));
end;

procedure TReciptsStoreF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 2, False, IntToStr(formType));
end;

procedure TReciptsStoreF.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  qryItems.Filtered := False;
  okPanel.Visible := qryRecipts.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  BtnDelete2.Visible := okPanel.Visible and DataSetDelete2.Visible;
  DataSetEdit2.Visible := okPanel.Visible;
  BtnMachineFullWeight2.Visible := (okPanel.Visible) and
    (qryinit.FieldByName('TozinActive').AsInteger = 1);
  StatusBar2.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, 'Recipts', '', IntToStr(formType));
  FreeReservedCodes(DMf.adcBSell, 'ReciptItems', '', IntToStr(formType));
  // FreeReservedCodes(DMf.adcBSell, 'recipts', '', '_');
  FreeReservedCodes(DMf.adcBSell, 'recipts', '',
    qryRecipts.FieldByName('ReciptType').AsString + '_' + qryRecipts.FieldByName
    ('StoreID').AsString);

  btnPersonID1.Visible := not qryRecipts.FieldByName('PersonID1').ReadOnly;
  btnStoreID.Visible := not qryRecipts.FieldByName('StoreID').ReadOnly;
  actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >= 1)
    and ReciptStateDeficitsVisible(qryRecipts) and
    (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1) or
    (qryinit.FieldByName('EditableFields').AsString <> EmptyStr);
  actDeficits.Enabled := (newPanel.Visible) and
    (qryinit.FieldByName('DeficitValueEditing').AsInteger = 0);
  if newPanel.Visible then
    // SumGrid1.MasterGrid := DBGrid1
  else
  begin
    // SumGrid1.MasterGrid := nil;
    DBGrid1.Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize,
      dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
  end;

  if (qryRecipts.state in [dsInsert]) then
  begin
    setColumns2(DBGrid1, True, 'MachineWeight', aReadOnly);
    setColumns2(DBGrid1, True, 'MachineFullWeight', aReadOnly);
    setColumns2(DBGrid1, True, 'TotalWeight', aReadOnly);
  end;

  if (qryinit.FieldByName('BarCodeKind').AsInteger in [1, 3, 5]) then
    DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, '____StuffTecInfo')].Visible
      := okPanel.Visible;

end;

procedure TReciptsStoreF.srcItemsStateChange(Sender: TObject);
begin
  inherited;
  BtnDelete2.Visible := (qryRecipts.state in dsEditModes) and
    DataSetDelete2.Visible;
  // BtnReject.Cancel:=newPanel2.Visible;
  // if qryItems.State in dsEditModes then  qryRecipts.Edit;
end;

procedure TReciptsStoreF.ppLblCompanyDescGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('CompanyDesc', 'سهامي خاص')
end;

procedure TReciptsStoreF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

function TReciptsStoreF.Calc_SumFileds(FiledName: String): Currency;
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
        while not eof do
        begin
          Result := Result + FieldByName(Total + 'Input' + FiledName).AsCurrency
            + FieldByName(Total + 'Output' + FiledName).AsCurrency;
          Next;
        end; // while
        Free;
        // if qryinit.FieldByName('EffectOnCustomer').AsInteger=2 then
        // Result:=Result*-1;
      end; // with
    except
    end; // try
end;

procedure TReciptsStoreF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TReciptsStoreF.qryReciptsBeforePost(DataSet: TDataSet);
var
  DefaultDate: String;
begin
  inherited;
  // qryRecipts.AfterScroll:=nil;
  if qryItems.state in dsEditModes then
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
  actRow.Execute;

  if qryinit.FieldByName('ReciptBe4PostCtrlEntAct').AsInteger > 0 then
    ReciptBe4PostCtrlEntAct;

  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 2 then
    StuffCodeUnic(qryRecipts, qryItems, qryinit);

end;

procedure TReciptsStoreF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').Value;

  if (qryinit.FieldByName('ReciptIDEventKind').AsInteger = 1) and
    not(qryRecipts.state in [dsInsert]) then
    GetANewID(DataSet, IntToStr(formType), 'ReciptItems', 'ReciptItemID',
      qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger);

  if DataSet.FieldByName('_StuffName').IsNull then
    try
      DataSet.Cancel;
      // okPanel.SetFocus;
      warn2('نام كالا وارد نشده');
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
      Warn('عدد منفی است.‏');
      Abort;
    end;
  TrimStringFields(qryItems);
  if not CheckRequiredFields(qryItems) then
    Abort;
  if not ValidateDatasetDatesRecipts(qryItems, qryinit) then
    Abort;
  DataSet.FieldByName(FieldNameWeight).AsFloat :=
    roundto(DataSet.FieldByName(FieldNameWeight).AsFloat, opt.RoundEntity);
  DataSet.FieldByName('ControlCode').AsString :=
    ifthen(DataSet.FieldByName('ControlCode').IsNull, '0',
    DataSet.FieldByName('ControlCode').AsString);
  DataSet.FieldByName('UnitSellPrice').AsCurrency :=
    roundto(DataSet.FieldByName('UnitSellPrice').AsFloat, -2);
  if not NonZeroControl then
    Abort;
  if Price_Read_Only(qryinit, qryItems) then
    Abort;

end;

function TReciptsStoreF.NonZeroControl;
begin
  Result := False;
  If (qryItems.FieldByName(FieldNameEntity).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [1, 4, 5, 6]) Then
  begin
    Warn(opt.EntityCaption + ' وارد شده نامعتبر است.');
    DBGrid1.SetFocus;
    Exit;
  end; // if
  If (qryItems.FieldByName(FieldNameWeight).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [2, 4, 6, 7]) Then
  begin
    Warn(opt.WeightCaption + ' وارد شده نامعتبر است.');
    DBGrid1.SetFocus;
    Exit;
  end; // if
  If (qryItems.FieldByName(FieldNamePrice).AsFloat <= 0) and
    (qryinit.FieldByName('NonZeroControl').AsInteger in [3, 5, 6, 7]) Then
  begin
    Warn('مبلغ وارد شده نامعتبر است.');
    DBGrid1.SetFocus;
    Exit;
  end; // if
  Result := True;
end;

procedure TReciptsStoreF.N4Click(Sender: TObject);
var
  ReciptID: Integer;
begin
  inherited;
  if get_response('آيا براي حذف كدهاي تكراري كالا مطمئن هستيد؟؟!!‏') <> mrYes
  then
    Exit;
  ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'DELETE FROM ReciptItems WHERE(ReciptItemID IN (SELECT MAX(ReciptItemID) AS ReciptItemID ';
    SQL.Add('FROM ReciptItems AS ReciptItems_1  GROUP BY ReciptID, StuffCode');
    SQL.Add('HAVING (ReciptID = ' + IntToStr(ReciptID) +
      ') AND (COUNT(StuffCode) > 1)))');
    SQL.Add('and ServerID = ' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add('and YearID = ' + qryRecipts.FieldByName('YearID').AsString);
    SQL.Add('and ReciptID = ' + qryRecipts.FieldByName('ReciptID').AsString);
    BigMessage(IntToStr(ExecSQL) + ' ' + Caption + '‌ حذف شد.', 2);
    Active := False;
    qryItems.Requery();
  end; // with
end;

procedure TReciptsStoreF.qryReciptsAfterPost(DataSet: TDataSet);
begin
  inherited;
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
      Warn(E.Message);
      DataToExcel(qryItems);
      // ReItemID(qryItems, qryRecipts, 'ReciptItems', 'ReciptItemID',
      // IntToStr(formType), qryinit.FieldByName('StepCorrelate').AsInteger);
    end;
  end; // try

  InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits4Print,
    qry_Deficits4Print, qryinit.FieldByName('StepCorrelate').AsInteger);

  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 1 then
    StuffCodeUnic(qryRecipts, qryItems, qryinit);

  opt.PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  StatusBar1.Panels[4].Text := '   كسورات=' + CurrToStrF(opt.PayablePrice,
    ffCurrency, 0);
  opt.PayablePrice := CalcSumFileds(qryItems, FieldNamePrice) +
    opt.PayablePrice;
  StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' قابل پرداخت=' +
    CurrToStrF(opt.PayablePrice, ffCurrency, 0);
  if qryinit.FieldByName('DiscountActive').AsInteger = 1 then
    StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' خالص ' +
      CurrToStrF(CalcSumFileds(qryItems, 'TotallSellPrice') +
      CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), ffCurrency, 0);

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

  qryRecipts.EnableControls;
  chkPerson3ControlWeightCustomer(qryinit, qryRecipts);
  if getresponseShow then
  begin
    // if get_response('تغييرات ذخيره شوند؟')<>mrYes then abort;
    BigMessage('ثبت شد.', 1);
  end;

  if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
    actPrint1.Execute;

  if (qryinit.FieldByName('AutoInsertPostInsert').AsInteger in [1, 3]) then
  begin
    qryRecipts.Insert;
    qryItems.Insert;
  end;

end;

// procedure TReciptsStoreF.LocateRecipts;
// var
// ReciptID, YearID, ServerID, ReciptItemID: Integer;
// begin
// ReciptID := qry.FieldByName('ReciptID').AsInteger;
// YearID := qry.FieldByName('YearID').AsInteger;
// ServerID := qry.FieldByName('ServerID').AsInteger;
//
// ReciptItemID := qryItemsReciptItemID.AsInteger;
//
// qryRecipts.Requery();
// qryRecipts.Locate('ReciptID;YearID;ServerID',
// VarArrayOf([ReciptID, YearID, ServerID]), []);
// qryItems.Locate('ReciptItemID', ReciptItemID, []);
// end;

function TReciptsStoreF.OkDeleteMaster(ReciptID: String): Boolean;
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
      + 'WHERE (ParentReciptID= ' + ReciptID + '  OR   ParentCoReciptID= ' +
      ReciptID + ')';
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

procedure TReciptsStoreF.qryItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not OkDeleteItem(qryItems.FieldByName('ReciptItemID').AsString) then
    Abort;
  if not OkDelete(qryRecipts, False, qryItemsReciptItemID.AsInteger) then
    Abort;
  if get_response(' آيا براي حذف كالا  ' + qryItemsStuffCode.AsString +
    DMf.s_Msm + '  مطمئن هستيد؟') <> mrYes then
    Abort;
end;

function TReciptsStoreF.OkDeleteItem(ReciptItemID: String): Boolean;
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
  end; // with
end;

procedure TReciptsStoreF.qryItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كالا حذف شد.', 1);
  actRow.Execute;
  qryItemsAfterOpen(DataSet)
end;

procedure TReciptsStoreF.qryReciptsBeforeCancel(DataSet: TDataSet);
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

procedure TReciptsStoreF.qryItemsAfterPost(DataSet: TDataSet);
var
  c: Currency;
begin
  inherited;
  SaveArticlesToFile;
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := LeftStr(opt.WeightCaption, 3) + '=' +
      FloatToStr(CalcSumWeight);
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := LeftStr(opt.EntityCaption, 5) + '=' +
      CurrToStr(Calc_SumFileds('Entity'));

  if PriceOn_StoreType then
  begin
    c := Calc_SumFileds('Price');
    StatusBar1.Panels[0].Text := CurrToStrF(c, ffCurrency, 0) + ' ريال ';
    c := qryReciptsTotalValue.AsCurrency - c;
    lblTotalValue.Caption := 'مانده:‏ ' + CurrToStrF(c, ffCurrency, 0);
  end
  else
    StatusBar1.Panels[0].Text := '';

end;

procedure TReciptsStoreF.qryReciptsBeforeEdit(DataSet: TDataSet);
begin
  inherited; // and not System4Edit
  // qryRecipts.AfterScroll:=nil;
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

function TReciptsStoreF.OkEditMaster(ReciptID: String): Boolean;
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
            end; // qryRecipts
            With qryItems do
            begin
              for i := 0 to FieldCount - 1 do
                Fields[i].ReadOnly := True;
              FieldByName('UnitSellPrice').ReadOnly := False;
              FieldByName(FieldNamePrice).ReadOnly := False;
              FieldByName('InputWeight').ReadOnly := False;
              FieldByName('OutputWeight').ReadOnly := False;
              FieldByName('ControlCode').ReadOnly := False;
              FieldByName('AidDate').ReadOnly := False;
              FieldByName('ItemDate').ReadOnly := False;
              FieldByName('DeficitValue').ReadOnly := False;
              FieldByName('TotalStandardRate').ReadOnly := False;
              FieldByName('StandardRate').ReadOnly := False;
              FieldByName('TotallSellPrice').ReadOnly := False;

              if qryinit.FieldByName('VATActive').AsInteger = 1 then
              begin
                FieldByName('TaxCo').ReadOnly := False;
                FieldByName('TaxValue').ReadOnly := False;
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
  end; // with
  qryItems.FieldByName('FirstUser').ReadOnly := False;
  qryItems.FieldByName('LastUser').ReadOnly := False;
  qryRecipts.FieldByName('FirstUser').ReadOnly := False;
  qryRecipts.FieldByName('LastUser').ReadOnly := False;

end;

procedure TReciptsStoreF.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryRecipts.state in dsEditModes) then
    Abort;
end;

procedure TReciptsStoreF.ChangeSQlqryStuff;
var
  FieldNames: string;
begin
  FieldNames :=
    ' StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName, ' +
    'StuffCoding.UnitPriceUseKind, StuffCoding.SellPrice_S, StuffCoding.VatExempt, StuffCoding.VatExemptCo ';

  if (qryinit.FieldByName('AutoPrice').AsInteger in [6, 13]) or
    (qryRecipts.FieldByName('_CustValuationType').AsInteger = 5) then
    with qryStuff_Unit_TecInf do
    begin
      if (Parameters.FindParam('YearID') <> nil) and
        ((Parameters.ParamByName('YearID').Value <> APPBank.Year) or
        (Parameters.ParamByName('PersonID1').Value <> qryRecipts.FieldByName
        ('PersonID1').AsInteger) or (Parameters.ParamByName('ReciptDate').Value
        <> qryRecipts.FieldByName('ReciptDate').AsString)) then
      begin
        Active := False;
        SQL.Text := 'SELECT ' + FieldNames;
        SQL.Add('FROM StuffCoding RIGHT OUTER JOIN');
        SQL.Add('Agreements ON StuffCoding.c_StuffCode = Agreements.StuffCode');
        SQL.Add('INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode');

        SQL.Add('WHERE (AgrState = 0)');
        SQL.Add('AND (AgreementsDate <= :ReciptDate )');
        SQL.Add('AND (YearID = :YearID )');
        SQL.Add('AND (PersonID1 = :PersonID1 )');

        if opt.StuffEnableKind in [0] then
          SQL.Add('AND  (State = 0)');

        Parameters.ParamByName('PersonID1').Value :=
          ifthen((qryinit.FieldByName('AutoPrice').AsInteger = 6),
          qryRecipts.FieldByName('PersonID1').AsInteger,
          qryRecipts.FieldByName('PersonID2').AsInteger);

        Parameters.ParamByName('YearID').Value := APPBank.Year;
        Parameters.ParamByName('ReciptDate').Value :=
          qryRecipts.FieldByName('ReciptDate').AsString;
        Active := True;
      end;

    end
  else
    with qryStuff_Unit_TecInf do
      if (Parameters.FindParam('StoreID') <> nil) and
        (Parameters.ParamByName('StoreID').Value <> qryRecipts.FieldByName
        ('StoreID').AsInteger) then
      begin
        Active := False;
        if opt.StuffCodingKind in [1, 2] then
        begin
          SQL.Text := 'SELECT ' + FieldNames + ' FROM StuffCoding ';
          SQL.Add('INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode');
          SQL.Add('WHERE (State = 0)');
        end
        else
        begin
          SQL.Text := 'SELECT ' + FieldNames;
          SQL.Add('FROM StuffCoding INNER JOIN  StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode');
          SQL.Add('INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode');
          SQL.Add('WHERE (StoreStuffs.n_StoreID = :StoreID )');
          Parameters.ParamByName('StoreID').Value :=
            qryRecipts.FieldByName('StoreID').AsInteger;
        end;
        Active := True;
      end

end;

procedure TReciptsStoreF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    qryRecipts.DisableControls;
    qryItems.DisableControls;
    ChangeSQlqryStuff;
    PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
      .AsInteger, DBGrid1, qryItems);

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

    qryCustActive(qryCust1, qryRecipts.FieldByName('PersonID1').AsInteger);

    // SumGrid1.Active := False;
    // SumGrid1.Active := True;
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
    // if DataSet.State=dsInsert then CheckUnsaved;
    Timer1.Enabled := qryRecipts.FieldByName('ReciptState').AsInteger = 3;
    if Timer1.Enabled then
      WriteText(LblStateChang.Caption, 1, 60, False);
    LblStateChang.Visible := Timer1.Enabled;

    opt.PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
    StatusBar1.Panels[4].Text := '   كسورات=' + CurrToStrF(opt.PayablePrice,
      ffCurrency, 0);
    opt.PayablePrice := CalcSumFileds(qryItems, FieldNamePrice) +
      opt.PayablePrice;
    StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' قابل پرداخت=' +
      CurrToStrF(opt.PayablePrice, ffCurrency, 0);

    lblTotalValue.Caption := 'مانده:‏ ' +
      CurrToStrF(qryReciptsTotalValue.AsCurrency - opt.PayablePrice,
      ffCurrency, 0);

    if qryinit.FieldByName('DiscountActive').AsInteger = 1 then
      StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' خالص ' +
        CurrToStrF(CalcSumFileds(qryItems, 'TotallSellPrice') +
        CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), ffCurrency, 0);

    LblRecNo.Hint := Format('' + Caption + ' %d از %d',
      [DataSet.RecNo, DataSet.RecordCount]);

    actDeficits.Visible := (qryinit.FieldByName('DeficitsActive').AsInteger >=
      1) and ReciptStateDeficitsVisible(qryRecipts) and
      (qryRecipts.FieldByName('_HasDeficit').AsInteger = 1);

  finally
    qryRecipts.EnableControls;
    qryItems.EnableControls;
  end;

end;

procedure TReciptsStoreF.actSearchExecute(Sender: TObject);
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
      [0, 50, 100, 50, ifthen(opt.WeightDisplay, 50, 0), 50, 50, 50, 50, 50, 50,
      50, 50, 50, 50, 50], alLeft, 3);
    if b then
    begin
      if not(qryItems.state in dsEditModes) then
        qryItems.Locate('ReciptItemID', Results[0], []);
    end;
    Exit;
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

procedure TReciptsStoreF.CmbSecondTypeEnter(Sender: TObject);
begin
  inherited;
  (Sender as TDBComboBox).DroppedDown := True;
end;

procedure TReciptsStoreF.qryItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (opt.showBig) and (showBigOnField(DBGrid1)) then
    showBigNum(DBGrid1.Columns[DBGrid1.SelectedIndex].Field.AsCurrency,
      aBigPanel, horoofPanel);
  // StatusBar1.Panels[4].Text:=Format('كالا %d از %d',[DataSet.RecNo,DataSet.RecordCount]);
end;

procedure TReciptsStoreF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsStoreF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TReciptsStoreF.qryItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If not ADDItemChecked(qryRecipts) then
    Abort;
  If LimitRecord(qryItems, qryinit, True) then
    Abort;
  if not(qryRecipts.state in dsEditModes) then
    Abort;
end;

procedure TReciptsStoreF.qryItemsUnitSellPriceChange(Sender: TField);
begin
  inherited;
  ChangeUnitSellPrice;
end;

procedure TReciptsStoreF.ChangeTotalInputPrice;
var
  Total, Weight, Entity: Currency;
  SellPrice: Real;
begin
  inherited;
  if not(qryRecipts.state in dsEditModes) or not(qryItems.state in dsEditModes)
  then
    Exit;
  if (UnitPriceReadOnly in [0, 2]) then
  begin
    Entity := qryItems.FieldByName(FieldNameEntity).AsCurrency;
    SellPrice := qryItems.FieldByName('UnitSellPrice').AsFloat;
    Total := qryItems.FieldByName(FieldNamePrice).AsCurrency;
    Weight := qryItems.FieldByName(FieldNameWeight).AsCurrency;
    Weight := roundto(Weight, opt.RoundEntity);
    if Entity = 0 then
      Entity := 1;
    if Weight = 0 then
      Weight := 1;
    case MyEntityDisplayType of
      0, 2:
        SellPrice := Total / Entity;
      1, 3:
        SellPrice := Total / Weight;
    end; // case
    SellPrice := roundto(SellPrice, -2);
    if SellPrice <> qryItems.FieldByName('UnitSellPrice').AsFloat then
      qryItems.FieldByName('UnitSellPrice').AsFloat := SellPrice;
  end; // if
end;

procedure TReciptsStoreF.ChangeUnitSellPrice;
var
  Total, Weight, Entity: Currency;
  SellPrice: Real;
begin
  if not(qryRecipts.state in dsEditModes) or not(qryItems.state in dsEditModes)
  then
    Exit;
  SellPrice := qryItems.FieldByName('UnitSellPrice').AsFloat;
  Entity := qryItems.FieldByName(FieldNameEntity).AsCurrency;
  Weight := qryItems.FieldByName(FieldNameWeight).AsCurrency;
  Weight := roundto(Weight, opt.RoundEntity);
  Total := 0;
  if UnitPriceReadOnly in [1, 2] then
  begin
    case MyEntityDisplayType of
      0, 2:
        Total := Entity * SellPrice;
      1, 3:
        Total := Weight * SellPrice;
    end; // case
    Total := roundto(Total, 0);
    if Total <> qryItems.FieldByName(FieldNamePrice).AsCurrency then
      qryItems.FieldByName(FieldNamePrice).AsCurrency := Total;
  end; // if
end;

procedure TReciptsStoreF.qryItemsInputEntityChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly in [0, 2] then
    ChangeTotalInputPrice;
  if UnitPriceReadOnly in [1, 2] then
    ChangeUnitSellPrice;
end;

procedure TReciptsStoreF.qryItemsOutputEntityChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly in [0, 2] then
    ChangeTotalInputPrice;
  if UnitPriceReadOnly in [1, 2] then
    ChangeUnitSellPrice;
end;

procedure TReciptsStoreF.qryItemsInputWeightChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly in [0, 2] then
    ChangeTotalInputPrice;
  if UnitPriceReadOnly in [1, 2] then
    ChangeUnitSellPrice;
end;

procedure TReciptsStoreF.qryItemsOutputWeightChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly in [0, 2] then
    ChangeTotalInputPrice;
  if UnitPriceReadOnly in [1, 2] then
    ChangeUnitSellPrice;
end;

procedure TReciptsStoreF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (qryinit.FieldByName('BarCodeKind').AsInteger in [0, 1, 4]) or
    (DBGrid1.SelectedIndex > 1) then
    gridkeyenter(Sender, Key)
end;

procedure TReciptsStoreF.Enter(Form_Type: Integer; LimitShow: Boolean = True;
  StoreID: Integer = 0);
begin
  DM.myStore.code := 0;
  if not LimitShow then
    DM.myStore.code := StoreID;
  CreateMDIForm3(LimitShow, TReciptsStoreF, ReciptsStoreF, mdiMainF, Form_Type);
  if (ReciptsStoreF.myStore.code = 0) and ReciptsStoreF.RestartStore then
    ReciptsStoreF.Close;
end;

procedure TReciptsStoreF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('PrintLevelID'), qryRecipts) then
    Abort;
  if not CheckControlPrintingByDate(qryinit, qryRecipts) then
    Abort;

  if (qryinit.FieldByName('AutoStateChange').AsInteger = 1) and
    (qryRecipts.FieldByName('ReciptState').Value = 0) then
    AutoStateChange(qryRecipts, qryinit);

  try
    qryRecipts.DisableControls;
    qryItems.DisableControls;
    // qryAllRecipts.AfterScroll := nil;
    PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)

  finally
    // qryAllRecipts.AfterScroll:=qryAllReciptsAfterScroll;
    qryRecipts.EnableControls;
    qryItems.EnableControls;
  end; // try
end;

procedure TReciptsStoreF.actPrint1Execute(Sender: TObject);
var
  footer_: String;
  strfFldName: String;
begin
  inherited;
  strfFldName := ifthen((Sender as TAction).Tag = 1, 'PerformFileName',
    'ReportFileName');

  if not CheckUserlevel(qryinit.FieldByName('PrintLevelID'), qryRecipts) then
    Abort;
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
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try

end;

procedure TReciptsStoreF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  actPrint1Execute(Sender);
end;

procedure TReciptsStoreF.ppLblAddresGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Address', '')
end;

procedure TReciptsStoreF.ppLbTelGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Tel1', '')
end;

procedure TReciptsStoreF.ppLblPostCodeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('PostalCode', '')
end;

procedure TReciptsStoreF.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber', '')
end;

procedure TReciptsStoreF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TReciptsStoreF.ppSysVarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TReciptsStoreF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('ReciptCaption').AsString
end;

procedure TReciptsStoreF.actNoteMasterExecute(Sender: TObject);
begin
  inherited;
  NoteF.Enter(qryRecipts,
    (ValueControl and Integer(MainFormIsEditableNote) = 0));
end;

procedure TReciptsStoreF.actSearchReciptNumberExecute(Sender: TObject);
begin
  inherited;
  SearchReciptNumber(qryinit, qryRecipts, myStore)
end;

procedure TReciptsStoreF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  opt.CustomerID1 := qryRecipts.FieldByName('PersonID1').AsInteger;
  opt.ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
  opt.AidInfoNo := qryRecipts.FieldByName('AidNumber').AsString;
  opt.AidInfoDate := qryRecipts.FieldByName('AidDate').AsString;
  PopOtherMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TReciptsStoreF.ppLabelOutputWeightGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStr(CalcSumWeight)
end;

procedure TReciptsStoreF.ppLabelOutputEntityGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStr(Calc_SumFileds('Entity'))
end;

procedure TReciptsStoreF.ppLabelTotalOutputPriceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(Calc_SumFileds('Price'), ffCurrency, 0)
end;

procedure TReciptsStoreF.ppLabelnum2alphabetGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'جمع كل به حروف : ' + num2alphabet
    (StrToInt64(CurrToStr(roundto(Calc_SumFileds('Price'), 0)))) + ' ريال ';
  // num2alphabet(StrToInt64(RemoveComma(CurrToStrF(CalcSumFileds('Price'),ffCurrency,0))))+' ريال ';
end;

procedure TReciptsStoreF.ppDBTextStuffSizeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + '';
end;

procedure TReciptsStoreF.qryItemsInputWeightGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not qryItems.FieldByName((Sender as TField).FieldName).IsNull then
    Text := FloatToStr(roundto(qryItems.FieldByName((Sender as TField)
      .FieldName).AsFloat, opt.RoundEntity));
end;

function TReciptsStoreF.CalcSumWeight: Currency;
begin
  Result := 0;
  try
    with TADOQuery.Create(Self) do
    begin
      Clone(qryItems, ltReadOnly);
      First;
      while not eof do
      begin
        Result := Result + FieldByName('InputWeight').AsFloat +
          FieldByName('OutputWeight').AsFloat;
        Next;
      end; // while
      Free;
    end; // with
  except
  end; // try
end;

procedure TReciptsStoreF.qryItemsTotalInputPriceChange(Sender: TField);
begin
  inherited;
  ChangeTotalInputPrice;
  EndOfPrice((Sender as TField).FieldName); // TotalInputPrice
end;

procedure TReciptsStoreF.qryItemsTotalOutputPriceChange(Sender: TField);
begin
  inherited;
  ChangeTotalInputPrice;
  EndOfPrice((Sender as TField).FieldName); // TotalOutputPrice
end;

procedure TReciptsStoreF.ppImage1DrawCommandCreate(Sender,
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

procedure TReciptsStoreF.ppLblFormFooterGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormFooter').AsString;
end;

procedure TReciptsStoreF.qryReciptsStoreIDChange(Sender: TField);
begin
  inherited;
  ChangeSQlqryStuff;
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, DBGrid1, qryItems);
end;

procedure TReciptsStoreF.qryReciptsPersonID1Change(Sender: TField);
begin
  inherited;
  CustValuationType := qryRecipts.FieldByName('_CustValuationType').AsInteger;
  ChangeSQlqryStuff;
end;

procedure TReciptsStoreF.ppLblReMainGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(Calc_SumFileds('Price') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), qryRecipts, qryinit,
    True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsStoreF.ppLblReMainOldGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + CurrToStrF(ReMainPersonRecipt(0, qryRecipts, qryinit,
    True, nil), ffCurrency, 0) + ' ريال '
end;

procedure TReciptsStoreF.logoPrint(Sender: TObject);
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

procedure TReciptsStoreF.Timer1Timer(Sender: TObject);
begin
  inherited;
  LblStateChang.Visible := not LblStateChang.Visible;
end;

procedure TReciptsStoreF.qryItemsAfterOpen(DataSet: TDataSet);
var
  c: Currency;
begin
  inherited;
  // qryItems.Properties['Update Criteria'].Value := adCriteriaKey;
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := opt.WeightCaption + ' =' +
      CurrToStr(CalcSumWeight);
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := opt.EntityCaption + ' =' +
      CurrToStr(Calc_SumFileds('Entity'));

  if PriceOn_StoreType then
  begin
    c := Calc_SumFileds('Price');
    StatusBar1.Panels[0].Text := CurrToStrF(c, ffCurrency, 0) + ' ريال ';
    c := qryReciptsTotalValue.AsCurrency - c;
    lblTotalValue.Caption := 'مانده:‏ ' + CurrToStrF(c, ffCurrency, 0);
  end
  else
    StatusBar1.Panels[0].Text := '';

end;

procedure TReciptsStoreF.actSortExecute(Sender: TObject);
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

procedure TReciptsStoreF.ppDBTxtPayablePriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := Calc_SumFileds('Price') + CalcSumFileds(qry_Deficits4Print,
    'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsStoreF.ppDBTxtPayableSellPriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsStoreF.ppLabelnum2alphabetPayebelGetText(Sender: TObject;
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

procedure TReciptsStoreF.ppLabelnum2alphabetPayebelSellPriceGetText
  (Sender: TObject; var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := roundto(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsStoreF.actDeficitsExecute(Sender: TObject);
var
  PayablePrice: Currency;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('DeficitsLevelID'), qryRecipts) then
    Abort;
  if qryRecipts.FieldByName('_HasDeficit').AsInteger <> 1 then
    Exit;
  qry_Deficits4Print.Requery();
  // if not (qryRecipts.State  in dseditmodes) then qryRecipts.Edit;
  ReciptsDeficitsF.Enter(qryItems, qryinit, qryRecipts, FormOutput, 0,
    Edit4Deficits);
  qryRecipts.Post;

  PayablePrice := CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  StatusBar1.Panels[4].Text := ' كسورات=' + CurrToStrF(PayablePrice,
    ffCurrency, 0);
  PayablePrice := Calc_SumFileds('Price') + PayablePrice;
  StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' قابل پرداخت=' +
    CurrToStrF(PayablePrice, ffCurrency, 0);
  if qryinit.FieldByName('DiscountActive').AsInteger = 1 then
    StatusBar1.Panels[4].Text := StatusBar1.Panels[4].Text + ' خالص ' +
      CurrToStrF(CalcSumFileds(qryItems, 'TotallSellPrice') +
      CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec'), ffCurrency, 0);
  // qryRecipts.Post;
  qry_Deficits4Print.Requery();
end;

procedure TReciptsStoreF.actReciptStateTo0Execute(Sender: TObject);
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

procedure TReciptsStoreF.ppLblState2ZeroDrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryRecipts.FieldByName('ReciptState')
    .AsInteger = 3;
end;

procedure TReciptsStoreF.qryReciptsAfterEdit(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.name;
  if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [1, 3] then
  begin
    b := DataSet.FieldByName('EditTime').ReadOnly;
    DataSet.FieldByName('EditTime').ReadOnly := False;
    DataSet.FieldByName('EditTime').AsString := SysUtils.TimeToStr(Now);
    DataSet.FieldByName('EditTime').ReadOnly := b;
  end;

end;

procedure TReciptsStoreF.qryItemsAfterEdit(DataSet: TDataSet);
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
  DataSet.FieldByName('LastUser').AsString := User.name;

  if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [2, 3] then
  begin
    b := DataSet.FieldByName('EditTime').ReadOnly;
    DataSet.FieldByName('EditTime').ReadOnly := False;
    DataSet.FieldByName('EditTime').AsString := SysUtils.TimeToStr(Now);
    DataSet.FieldByName('EditTime').ReadOnly := b;
  end;

end;

procedure TReciptsStoreF.ppLblAllStringReplaceGetText(Sender: TObject;
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

procedure TReciptsStoreF.qryItemsWaterCoChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // WaterCo
end;

procedure TReciptsStoreF.qryItemsTaxValueChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // TaxValue
end;

procedure TReciptsStoreF.EndOfPrice;
var
  TaxCo: Real;
  TaxValue: Currency;
  VATRound: Integer;
begin
  // TaxValue := 0;
  if qryinit.FieldByName('VATActive').AsInteger = 1 then
  begin
    TaxCo := qryItems.FieldByName('TaxCo').AsFloat;
    // TaxValue := qryItems.FieldByName('TaxValue').AsCurrency;
    VATRound := qryinit.FieldByName('VATRound').AsInteger;
    if (Field_Name = 'DeficitValue') or (Field_Name = FieldNamePrice) or
      (Field_Name = 'TaxCo')

    then
    begin
      TaxValue := roundto((qryItems.FieldByName(FieldNamePrice).AsCurrency -
        qryItems.FieldByName('DeficitValue').AsCurrency) * TaxCo /
        (100 * VATRound), 0) * VATRound;
      if qryItems.FieldByName('TaxValue').AsCurrency <> TaxValue then
        qryItems.FieldByName('TaxValue').AsCurrency := TaxValue;
    end;
  end;

end;

procedure TReciptsStoreF.ppLblHeaderGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryinit.FieldByName('FormHeader').AsString;
end;

procedure TReciptsStoreF.actReportSearchExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.Show(ppReport1, 'recipt', Self);
end;

procedure TReciptsStoreF.actRowExecute(Sender: TObject);
begin
  inherited;
  With qryItems do
    try
      DisableControls;
      First;
      while not eof do
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

procedure TReciptsStoreF.actReciptOnFormsRangeExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if (qryRecipts.FieldByName('_PersonName1').AsString = '') then
    Exit;
  if qryinit.FieldByName('CofferType').AsString = '' then
  begin
    Warn('' + Caption + ' هاي خزانه داري قابل ارتباط مشخس نشده.!‏');
    Exit
  end;
  s := ' AND ((Forms.CustomerID2 = ' + qryRecipts.FieldByName('PersonID1')
    .AsString + ')' + ' or (Forms.CustomerID1 = ' + qryRecipts.FieldByName
    ('PersonID1').AsString + '))';
  ChooseReciptOnFormsRangeF.SelectChecks(qryRecipts,
    qryinit.FieldByName('CofferType').AsString, s, 0);
end;

procedure TReciptsStoreF.FormCreate(Sender: TObject);
begin
  inherited;
  myStore := DM.myStore;
  aBigPanel.Visible := opt.showBig;
  SetLookUpCash(qryRecipts);
  try
    ReciptsStoreF.initFormQry;
  except
    on E: Exception do
    begin
      Warn(E.Message);
      Self.Free;
      Exit;
    end;
  end;
  With qryRecipts do
  begin
    Active := False;
    IF RestartStore THEN
    begin // 2
      if (FilterShow) then
        SelectStoreF.GetStore(myStore, qryinit.FieldByName('StoreCaption')
          .AsString, qryinit.FieldByName('StoreKindList').AsString,
          MyEntityDisplayType);
      SQL.Text := 'SELECT top 1  * ';
      SQL.Add('FROM Recipts');
      SQL.Add('WHERE (StoreID= :StoreID) AND (ReciptType = :ReciptType) AND (YearID = :YearID ) ');
      SQL.Add(GetSqlOnRestartFormNumberOnStore(qryinit, myStore, qryRecipts));
      SQL.Add(DMf.sql4Recal);
      DMf.sql4Recal := EmptyStr;
      SQL.Add('ORDER BY ReciptNumber desc ');
      Parameters.ParamByName('StoreID').Value := myStore.code;
      EdtStoreID.Enabled := False;
      btnStoreID.Enabled := False;
    end; // if  // 2
    Parameters.ParamByName('ReciptType').Value := formType;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    AfterScroll := nil;
    // SQL.Text:=GetUsersStore(SQL.Text);
    Active := True;
    AfterScroll := qryReciptsAfterScroll;
    // if RecNo=0 then qryRecipts.Active:=True;
    if FilterShow then
      Last;
    if (qryinit.FieldByName('AutoInsertPostInsert').AsInteger in [1, 3]) then
    begin
      qryRecipts.Insert;
      qryItems.Insert;
    end;

  end; // with
  initReportName(qryinit, PopMuPrint, mnu4allClick);
  PrintCount := 1;
  If qryinit.FieldByName('PrintCount').AsInteger > 1 then
    PrintCount := qryinit.FieldByName('PrintCount').AsInteger;

  CreateComPort(True);
  DBGrid1.SetFooter4Sum(['WaterCo', 'DeficitValueCo2', 'DeficitValueCo3',
    'TaxCo', 'AidNumber', 'UnitSellPrice']);
  ppDBPipelineSumGrid1.DataSource := DBGrid1.srcSum;

end;

procedure TReciptsStoreF.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
end;

procedure TReciptsStoreF.qryReciptsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not IsCorrelateReciptType(qryinit) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('ADDLevelID'), qryRecipts) then
    Abort;
  qryReciptsPersonID1.Tag := qryReciptsPersonID1.AsInteger;
end;

procedure TReciptsStoreF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  k, id: Smallint;
  txt, s_StoreID, TxtScroll, TxtYearID: String;
  b: Boolean;
  Results: array [0 .. 15] of String;
  Fields_SD_1_9: String;
  colTopics_1_3: array [0 .. 15] of String;
const
  colWidths_1_3: array [0 .. 15] of Smallint = (50, 100, 100, 100, 50, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0);
begin
  inherited;
  b := False;
  if (Sender as TCedarDbgrid).ReadOnly then
    Exit;
  id := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  (Sender as TCedarDbgrid).SelectedIndex := id;
  if qryStuff_Unit_TecInf.Active then
    qryStuff_Unit_TecInf.Requery()
  else
    qryStuff_Unit_TecInf.Open;
  if not(aDataSet.state in dsEditModes) then
    aDataSet.edit;
  if DBGrid1.Columns[id].FieldName = 'StuffCode' then
  begin
    if opt.StuffCodingKind in [1, 2] then
    begin
      case qryinit.FieldByName('ShowEntityOnSearch').AsInteger of
        0:
          b := special_SearchF.SearchCode(DMf.adcBSell, ' كالاها  ',
            ' SELECT  c_StuffCode, c_StuffName, UnitName, c_StuffTecInfo,tabageh, nevisandeh, '
            + ' PakhshCompany,motarjem, chapDate, gateketab, noejeldName ,SellPrice1  '
            + ' FROM Aid_StuffCoding WHERE (State = 0)',
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
            ifthen(qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
            Integer(CHkDelInSearchNotEntity) <> 0, ' WHERE (SumEntity <> 0) ',
            ''), ['كد كتاب', 'عنوان كتاب', 'واحد', 'مشخصات فني', 'طبقه',
            'نام نويسنده', 'شركت پخش', 'مترجم', 'سال چاپ', 'قطع كتاب',
            'نوع جلد', 'بهاي فروش', 'موجودي'], Results,
            [50, 100, 50, 70, 100, 50, 70, 70, 50, 50, 50, 50, 60], alLeft, 3);
      end; // case ShowEntityOnSearch
      if b then
      begin
        if not(qryItems.state in dsEditModes) then
          qryItems.edit;
        qryItems.FieldByName('StuffCode').AsString := Results[0];
      end;
      Exit;
    end;
    if opt.EntityDisplay and (qryinit.FieldByName('ShowEntityOnSearch')
      .AsInteger <> 2) then
    begin
      colTopics_1_3[5] := opt.EntityCaption;
      colWidths_1_3[5] := 50;
    end;
    if opt.WeightDisplay and (qryinit.FieldByName('ShowEntityOnSearch')
      .AsInteger <> 2) then
    begin
      colTopics_1_3[6] := opt.WeightCaption;
      colWidths_1_3[6] := 80;
    end;
    colTopics_1_3[0] := 'کد';
    colTopics_1_3[1] := 'نام كالا';
    colTopics_1_3[2] := 'مشخصات فني';
    colTopics_1_3[3] := 'بهاي فروش 1';
    colTopics_1_3[4] := 'بهاي خريد';
    for k := 1 to 9 do
    begin
      colTopics_1_3[k + 6] := opt.ExtraCoding.Captions[k];
      if opt.ExtraCoding.Captions[k] <> '' then
      begin
        colWidths_1_3[k + 6] := 50;
        Fields_SD_1_9 := Fields_SD_1_9 + ',StuffCoding.sd' + IntToStr(k);
      end;
    end;

    TxtYearID := Format(' AND (Recipts.YearID BETWEEN %d AND %d )',
      [opt.DefaultYear, APPBank.Year]);
    TxtYearID := TxtYearID + ' AND Recipts.ServerID = ' + qryRecipts.FieldByName
      ('ServerID').AsString;
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
    s_StoreID := ifthen(qryRecipts.FieldByName('StoreID').IsNull, '0',
      qryRecipts.FieldByName('StoreID').AsString);

    txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,'
      + ' StuffCoding.SellPrice1,StuffCoding.BuyPrice,0 as e,0 as w ' +
      Fields_SD_1_9 + ' FROM StuffCoding INNER JOIN ' +
      ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode ';
    if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
      txt := txt +
        ' INNER JOIN Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID ';
    txt := txt + addAgreementsSQL(qryinit, qryRecipts);
    if pnlStore1.Visible then
      txt := txt +
        ' WHERE  (StuffCoding.State = 0)AND (StoreStuffs.n_StoreID = ' +
        s_StoreID + ' ) ';

    if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
      txt := txt + ' AND (Stores.StoreKind IN (' + qryinit.FieldByName
        ('StoreKindList').AsString + '))';

    txt := txt +
      ' GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo,'
      + ' StuffCoding.SellPrice1,StuffCoding.BuyPrice ';
    txt := txt + Fields_SD_1_9;
    case qryinit.FieldByName('ShowEntityOnSearch').AsInteger of
      0:
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
          colTopics_1_3, Results, colWidths_1_3, alLeft);
      1:
        begin
          txt := ' SELECT dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,dbo.StuffCoding.SellPrice1,  '
            + ' MAX((CASE ReciptTypes.EffectType WHEN 2 THEN dbo.ReciptItems.UnitSellPrice ELSE 0 END)) AS MaxUnitSellPrice, '
            + ' SUM(dbo.ReciptItems.InputEntity - dbo.ReciptItems.OutputEntity) AS SumEntity, '
            + ' SUM(dbo.ReciptItems.InputWeight - dbo.ReciptItems.OutputWeight) AS SumWeight '
            + Fields_SD_1_9 + ' FROM   dbo.ReciptItems INNER JOIN ' +
            '        dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID INNER JOIN '
            + '        dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTypes.ReciptType INNER JOIN '
            + '        dbo.StuffCoding ON dbo.ReciptItems.StuffCode = dbo.StuffCoding.c_StuffCode '
            + ' INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +
            ' WHERE  (StuffCoding.State = 0)AND(dbo.Recipts.ReciptDate <= ''' +
            qryRecipts.FieldByName('ReciptDate').AsString + ''')  ' +
            ifthen(pnlStore1.Visible, 'AND (dbo.Recipts.StoreID = ' + s_StoreID
            + ')', '') +
            '   AND (dbo.ReciptTypes.EffectType = 2 OR dbo.ReciptTypes.EffectType = 4) '
            + '   AND (dbo.Recipts.ReciptState < 3) ' + TxtYearID +
            ' GROUP BY dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,dbo.StuffCoding.SellPrice1,StuffCoding.BuyPrice '
            + Fields_SD_1_9 +
            ifthen(qryinit.FieldByName('ShowNotEntityOnSearch').AsLargeInt and
            Integer(CHkDelInSearchNotEntity) <> 0,
            ' HAVING      (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <> 0) ',
            '');
          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            colTopics_1_3, Results, colWidths_1_3, alLeft);

        end;
      2:
        begin
          TxtScroll :=
            'SELECT isnull(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity),0) AS مقدار '
            + ifthen(opt.WeightDisplay,
            ', isnull(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight),0) AS وزن  ',
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
          b := searchCode_ADO4ScrollF.SearchCode2(DMf.adcBSell, ' كالاها  ',
            txt, colTopics_1_3, Results, colWidths_1_3, alLeft, TxtScroll);
        end; // 2
      3:
        begin
          txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, StuffCoding.SellPrice1,'
            + ' abcd.SUMEntity, abcd.SUMWeight,abcd.MaxUnitSellPrice' +
            ' FROM StuffCoding LEFT OUTER JOIN' +
            ' (SELECT ReciptItems.StuffCode, MAX((CASE ReciptTypes.EffectType WHEN 2 THEN'
            + ' ReciptItems.UnitSellPrice ELSE 0 END))AS MaxUnitSellPrice, ' +
            ' ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity), 3) AS SUMEntity,'
            + ' ROUND(SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight), 3) AS SUMWeight'
            + Fields_SD_1_9 + ' FROM ReciptItems INNER JOIN' +
            ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID INNER JOIN'
            + ' ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType' +
            ' INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +
            ' WHERE (Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
            ('ReciptDate').AsString + ''') ' + ifthen(pnlStore1.Visible,
            'AND (Recipts.StoreID = ' + s_StoreID + ')', '') +
            ' AND (ReciptTypes.EffectType IN (2,4)) AND (Recipts.ReciptState < 3)'
            + TxtYearID + ' GROUP BY ReciptItems.StuffCode' +
            ' HAVING (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) >= 0.0001) OR'
            + ' (SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) <= - 0.0001) OR'
            + ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) >= 0.0001) OR'
            + ' (SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) <= - 0.0001)) AS abcd ON'
            + ' StuffCoding.c_StuffCode = abcd.StuffCode';
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
            + ' (LookUps.Kind = 15)' + TxtYearID +
            ' GROUP BY ReciptItems.StuffCode, ReciptItems.ProductModel, LookUps.Name, StuffCoding.c_StuffName'
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
            ' StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode LEFT OUTER JOIN'
            + ' (SELECT    TOP 100 PERCENT  ReciptItems.StuffCode, ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity), 3) AS'
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
            ' GROUP BY ReciptItems.StuffCode ORDER BY ReciptItems.StuffCode ) AS derivedtbl_1 ON StuffCoding.c_StuffCode = derivedtbl_1.StuffCode';
          b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ', txt,
            ['كدكالا', 'كالا', 'واحد', 'مشخصات فني', 'موجودي'], Results,
            [100, 100, 50, 100, 100], alLeft);
        end;

    end; // case

    if b then
    begin
      if not(qryItems.state in dsEditModes) then
        qryItems.edit;
      qryItems.FieldByName('StuffCode').AsString := Results[0];
    end; // if
  END;
  if DBGrid1.Columns[id].FieldName = 'PersonID1' then
  begin
    if not(qryRecipts.state in dsEditModes) then
      Exit;
    txt := 'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
      ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
      + ' WHERE (CustomersGroup.GroupType IN(' + qryinit.FieldByName
      ('Customer2DetailKind').AsString + ')) ';
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
  if DBGrid1.Columns[id].FieldName = 'acc_TopicCode' then
    accSpeedButtonTopicCode(qryItems);
  if DBGrid1.Columns[id].FieldName = 'acc_DetailCode' then
    accSpeedButtonDetailCode(qryItems);
  if DBGrid1.Columns[id].FieldName = 'acc_CTopicCode' then
    accSpeedButtonCTopicCode(qryItems);
  if DBGrid1.Columns[id].FieldName = 'acc_CTopicCode2' then
    accSpeedButtonCTopicCode2(qryItems);
  if DBGrid1.Columns[id].FieldName = 'ProductModel' then
    SpeedButtonProductModel(qryItems);
end;

procedure TReciptsStoreF.gridkeyenter(Sender: TObject; var Key: Char);
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
        if shiftDown then
          Exit;
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

        if (curIndex > 0) and (aDataSet.FieldByName('_StuffName').IsNull) then
        begin
          aDataSet.Cancel;
          okPanel.SetFocus;
          Exit;
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
      if (Sender as TCedarDbgrid).DataSource.DataSet.state in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then

    begin // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          DBGrid1.SelectedIndex := 1
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.state in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.state in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TReciptsStoreF.btnStoreIDClick(Sender: TObject);
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

procedure TReciptsStoreF.BtnExcelClick(Sender: TObject);
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

procedure TReciptsStoreF.Panel2Click(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFocus;
  DBGrid1.SelectedIndex := 1;
end;

procedure TReciptsStoreF.Panel3Enter(Sender: TObject);
begin
  inherited;
  if DBGrid1.Enabled then
    DBGrid1.SetFocus;
end;

procedure TReciptsStoreF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 1
end;

procedure TReciptsStoreF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if aBigPanel.Visible then
    aBigPanel.Visible := False

end;

procedure TReciptsStoreF.qryItemsRequestedEntityChange(Sender: TField);
begin
  inherited;
  qryItems.FieldByName(FieldNameEntity).AsInteger := 0;
  qryItemsStuffCodeChange(qryItemsStuffCode);
  if qryItems.FieldByName('RequestedEntity').AsFloat - EntityValue > 0 then
    qryItems.FieldByName(FieldNameEntity).AsFloat :=
      roundto(qryItems.FieldByName('RequestedEntity').AsFloat -
      EntityValue, -2);
  if qryinit.FieldByName('AcceptRollbackEntity').AsInteger > 0 then
  begin
    qryItems.FieldByName('AcceptEntity').AsFloat :=
      roundto(qryItems.FieldByName('RequestedEntity').AsFloat, -2);
  end;
end;

procedure TReciptsStoreF.qryReciptsSecondTypeChange(Sender: TField);
var
  txt: string;
begin
  inherited;
  if qryinit.FieldByName('AidNumRestOnSecType').AsInteger <> 1 then
    Exit;
  FreeReservedCodes(DMf.adcBSell, 'Recipts', 'ReciptNumber',
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

procedure TReciptsStoreF.ALLNClick(Sender: TObject);
var
  Entity: Real;
  DoWhile: Boolean;
begin
  inherited;
  DoWhile := True;
  With qryItems do
  begin
    Entity := FieldByName(FieldNameEntity).AsFloat;
    First;
    while (not eof) and DoWhile do
    begin
      edit;
      FieldByName(FieldNameEntity).AsFloat := Entity;
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

procedure TReciptsStoreF.qryItemsArzAmountChange(Sender: TField);
var
  r: Currency;
begin
  inherited;
  r := roundto(qryItems.FieldByName('ArzAmount').AsFloat *
    qryRecipts.FieldByName('RialsEqual').AsFloat, -2);
  if qryItems.FieldByName(FieldNamePrice).AsCurrency <> r then
    qryItems.FieldByName(FieldNamePrice).AsCurrency := r;
end;

procedure TReciptsStoreF.qryItemsArzRateChange(Sender: TField);
var
  r: Currency;
begin
  inherited;
  r := roundto(qryItems.FieldByName('ArzRate').AsFloat *
    (qryItems.FieldByName(FieldNameWeight).AsFloat), -2);
  if qryItems.FieldByName('ArzAmount').AsCurrency <> r then
    qryItems.FieldByName('ArzAmount').AsCurrency := r;

end;

procedure TReciptsStoreF.qryReciptsArzTypeIDChange(Sender: TField);
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

procedure TReciptsStoreF.N2Click(Sender: TObject);
var
  DoWhile: Boolean;
begin
  inherited;
  DoWhile := True;
  With qryItems do
  begin
    First;
    while (not eof) and DoWhile do
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

procedure TReciptsStoreF.N3Click(Sender: TObject);
var
  WaterCo: Real;
  DoWhile: Boolean;
begin
  inherited;
  DoWhile := True;
  With qryItems do
  begin
    WaterCo := FieldByName('WaterCo').AsFloat;
    First;
    while (not eof) and DoWhile do
    begin
      edit;
      FieldByName('WaterCo').AsFloat := WaterCo;
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

procedure TReciptsStoreF.ppDBCalcnum2alphabetGetText(Sender: TObject;
  var Text: String);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := roundto(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure TReciptsStoreF.ppLbl__StandardRateGetText(Sender: TObject;
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
    while not eof do
    begin
      PayablePrice := FieldByName('StandardRate').AsFloat *
        FieldByName(FieldNameEntity).AsFloat + PayablePrice;
      Next;
    end;
    EnableControls;
  end;
  PayablePrice := PayablePrice + CalcSumFileds(qry_Deficits4Print,
    'Deficit_Add_Dec');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsStoreF.NReq_InvEntityClick(Sender: TObject);
begin
  inherited;
  qryItems.Filter := ' Req_InvEntity < 0 ';
  qryItems.Filtered := not qryItems.Filtered;
  NReq_InvEntity.Checked := qryItems.Filtered;
end;

procedure TReciptsStoreF.qryReciptsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryItems.Filtered := False;
end;

procedure TReciptsStoreF.actDeleteCorrelateReciptExecute(Sender: TObject);
begin
  inherited;
  DeleteCorrelateRecipt(qryinit, qryRecipts)
end;

procedure TReciptsStoreF.actGetExcelExecute(Sender: TObject);
var
  q_r_y: TADOQuery;
  i: Integer;
  ReciptID, ServerID, YearID: Integer;
  fN: string;
begin
  inherited;
  q_r_y := TADOQuery.Create(Self);
  try
    q_r_y.Connection := DMf.adcBSell;
    q_r_y.Fields.Clear;
    q_r_y.SQL.Text := 'SELECT * FROM ReciptItems WHERE ReciptID=0 ';
    q_r_y.Active := True;
    for i := 0 to q_r_y.Fields.Count - 1 do
    begin
      fN := q_r_y.Fields[i].FieldName;
      if qryItems.FindField(fN) <> nil then
      begin
        q_r_y.Fields[i].DisplayLabel := qryItems.FieldByName(fN).DisplayLabel;
        q_r_y.Fields[i].Tag := qryItems.FieldByName(fN).Tag;
      end;
    end;

    for i := 0 to qryItems.Fields.Count - 1 do
    begin
      fN := qryItems.Fields[i].FieldName;
      if q_r_y.FindField(fN) <> nil then
      begin
        q_r_y.FieldByName(fN).Index := qryItems.Fields[i].Index;
      end;
    end;

    q_r_y.AfterInsert := qryItemsAfterInsert;
    // BeforePost:=qryItemsBeforePost;
    // SetFieldIndexFormGrid(qry,DBGrid1);
    GetExcelF.ShowImPortExcel(q_r_y);
  finally
    q_r_y.Free;
    ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
    ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
    YearID := qryRecipts.FieldByName('YearID').AsInteger;
    qryRecipts.First;
    qryRecipts.Locate('ReciptID;ServerID;YearID',
      VarArrayOf([ReciptID, ServerID, YearID]), []);
  end; // try
end;

procedure TReciptsStoreF.actAllEditExecute(Sender: TObject);
begin
  inherited;
  AllEdit(qryRecipts, qryItems)
end;

procedure TReciptsStoreF.DBnum2alphabetGetText(Sender: TObject;
  var Text: String);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := roundto(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure TReciptsStoreF.ppDBText6GetText(Sender: TObject; var Text: String);
var
  col: TColumnEh;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')];
  if col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
    .AsInteger)) <> -1 then
    Text := col.PickList
      [col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
      .AsInteger))];

end;

procedure TReciptsStoreF.A_l_l_SP__ClickClick(Sender: TObject);
begin
  inherited;
  qryItems.FieldByName('UnitSellPrice').AsCurrency :=
    StrToCurr((Sender as TMenuItem).Hint)
end;

procedure TReciptsStoreF.ppDBTextSumSelectGetText(Sender: TObject;
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

procedure TReciptsStoreF.qryItemsMachineWeightChange(Sender: TField);
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

procedure TReciptsStoreF.MachineFullWeight_MachineWeight;
var
  w: Real;
begin
  w := qryItems.FieldByName('MachineFullWeight').AsFloat -
    qryItems.FieldByName('MachineWeight').AsFloat;
  if w < 0 then
  begin
    w := 0;
    BigMessage('حاصل منفی مي شود.‏', 1);
  end;
  qryItems.FieldByName(FieldNameEntity).AsFloat := w
end;

procedure TReciptsStoreF.qryItemsMachineFullWeightChange(Sender: TField);
begin
  inherited;
  MachineFullWeight_MachineWeight
end;

procedure TReciptsStoreF.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'ReciptNumber', ' فرم ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts WHERE ReciptType = '
        + IntToStr(formType));
      if ShowModal = mrOk then
      begin
        GetFilterString;
        With qryRecipts do
        begin
          Close;
          Parameters.ParamByName('ReciptIDFrom').Value := -2147483646;
          Parameters.ParamByName('ReciptIDTo').Value := 2147483647;
          Parameters.ParamByName('ReciptNumberFrom').Value :=
            GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
          Parameters.ParamByName('ReciptNumberTo').Value :=
            GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
          Open;
        end;
      end; // if
    finally
      Free;
    end; // try
  end; // with

  NAllRecords.Checked := not NAllRecords.Checked
end;

procedure TReciptsStoreF.BtnMachineFullWeight2Click(Sender: TObject);
begin
  inherited;
  if not(qryItems.state in dsEditModes) then
    qryItems.edit;
  qryItems.FieldByName('TotalWeight').AsFloat := ReadFromTxtOrComPort;
  qryItemsMachineWeightChange(qryItems.FieldByName('MachineWeight'));
end;

procedure TReciptsStoreF.actCopyPasteExecute(Sender: TObject);
var
  qry: TADOQuery;
  i: Byte;
begin
  inherited;
  actCopyPaste.Checked := True;
  BigMessageProgBar('در حال كپي آرتيكل  ...‏', DBGrid1.Columns.Count - 1);
  if not(qryRecipts.state in dsEditModes) then
    qryRecipts.edit;
  if (qryItems.state in dsEditModes) then
    qryItems.Post;
  qry := TADOQuery.Create(DMf);
  try
    with qry do
    begin
      Clone(qryItems, ltReadOnly);
      Filter := 'ReciptItemID=' + qryItems.FieldByName('ReciptItemID').AsString;
      Filtered := True;
      qryItems.Append;
      for i := 1 to DBGrid1.Columns.Count - 1 do
      begin
        if (not DBGrid1.Columns[i].ReadOnly) and (DBGrid1.Columns[i].Visible)
        then
          qryItems.FieldByName(DBGrid1.Columns[i].FieldName).AsString :=
            FieldByName(DBGrid1.Columns[i].FieldName).AsString;
        GoProgressBar(IntToStr(i));
      end;
      DBGrid1.SetFocus;
    end; // with
  finally
    qry.Free;
    BigMessage('آرتيكل كپي شد.‏', 1);
    actCopyPaste.Checked := False;
  end; // try
end;

procedure TReciptsStoreF.actCorrelateReciptExecute(Sender: TObject);
begin
  inherited;
  If ReciptCorrelate_ConversionCo_Chk(qryRecipts, qryinit) then
  begin
    DMf.adcBSell.BeginTrans;
    try
      try
        getresponseShow := False;
        InsertCorrelateRecipt(qryinit, qryItems, formType, qryRecipts,
          FormOutput, nil, MyEntityDisplayType);
        InsertReciptsDeficits(qryRecipts, qryItems, qry_Deficits4Print,
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

procedure TReciptsStoreF.actBarcodeExecute(Sender: TObject);
begin
  inherited;
  PrintBarcode(qryinit, qryItems, ppReportBarcode, cliBarcode,
    pdtlbndBarcodeppDetailBand3, Form_InOut, 'PerformFileName', '')
end;

procedure TReciptsStoreF.ppLblBarCodeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  if cliBarcode.FieldByName('StuffCode').AsLargeInt = 0 then
    Text := EmptyStr;
end;

procedure TReciptsStoreF.qryItems____StuffTecInfoChange(Sender: TField);
begin
  inherited;
  GetStuffCodeFromStuffTecInfo(Sender.AsString, qryReciptsStoreID.AsInteger);
end;

procedure TReciptsStoreF.actAllotmentExecute(Sender: TObject);
begin
  inherited;
  if FormOutput then
    Exit;
  AllotmentF.ShowChanger(qryItems, DBGrid1)
end;

procedure TReciptsStoreF.plblName_NoteGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryItems.FieldByName('_StuffName').AsString + ' ' +
    qryItems.FieldByName('ItemNote').AsString
end;

procedure TReciptsStoreF.plblSecondTypeItemGetText(Sender: TObject;
  var Text: String);
var
  col: TColumnEh;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')];
  if col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
    .AsInteger)) <> -1 then
    Text := col.PickList
      [col.PickList.IndexOfObject(TObject(qryItems.FieldByName('SecondTypeItem')
      .AsInteger))];

end;

procedure TReciptsStoreF.btnMasirIDClick(Sender: TObject);
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

procedure TReciptsStoreF.btnDeliveryIDClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  txt := 'SELECT SellsCode,RIGHT(SellsCode, LEN(SellsCode) - 2) AS SellsCode2,SellsName FROM SellsInfo WHERE SellsType = 36 ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' محلهاي تحويل ', txt,
    ['', 'کد', 'محل تحويل'], Results, [0, 50, 150], alLeft);
  if b then
    qryRecipts['DeliveryID'] := Results[0];
end;

procedure TReciptsStoreF.btnPersonID3Click(Sender: TObject);
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

procedure TReciptsStoreF.plblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DateToStr(Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate')
    .AsString))
end;

procedure TReciptsStoreF.plblNameNoteGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryItems.FieldByName('_StuffName').AsString + ' ' +
    qryItems.FieldByName('_StuffNote').AsString
end;

procedure TReciptsStoreF.qryReciptsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryItemsAfterOpen(DataSet);
end;

procedure TReciptsStoreF.qryReciptsAfterDelete(DataSet: TDataSet);
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
      SQL.Add('AND ServerID = ' + BeforeServerID);
      SQL.Add('AND YearID   = ' + BeforeYearID);
      try
        ExecSQL;
        // BigMessage(IntToStr(ExecSQL) + ' '+Caption+'‌ مرتبط آگاه شد.',2);
        Active := False;
      except
        on E: Exception do
        begin
          Warn(E.Message);
          Warn('اشكال در آگاه سازي ' + Caption + ' مرتبط‌');
        end;
      end; // try
    end; // with
    ReciptID4ParentReciptID := '';
  end;
  BigMessage('' + Caption + ' حذف شد.', 1);

end;

procedure TReciptsStoreF.qryReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckDay4Edit(qryinit, qryRecipts) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryRecipts) then
    Abort;

  if not ChkReciptState4Delete(qryinit, qryRecipts) then
    Abort;

  if not OkDeleteMaster(qryRecipts.FieldByName('ReciptID').AsString) then
    Abort;
  if not OkDelete(qryRecipts, False, 0) then
    Abort;
  if not Check4OkDelete_Deficits(Caption, qry_Deficits4Print, qryRecipts) then
    Abort;
  BeforeServerID := qryRecipts.FieldByName('ServerID').AsString;
  BeforeYearID := qryRecipts.FieldByName('YearID').AsString;
end;

procedure TReciptsStoreF.actSaveFormItemsExecute(Sender: TObject);
begin
  inherited;
  SaveFormItems(qryItems)
end;

procedure TReciptsStoreF.actLoadFormItemsExecute(Sender: TObject);
begin
  inherited;
  LoadFormItems(qryItems)
end;

procedure TReciptsStoreF.actReciptsRegulatesExecute(Sender: TObject);
begin
  inherited;
  ReciptsRegulatesF.Enter(qryItems, qryinit, qryRecipts)
end;

procedure TReciptsStoreF.plblTotallSellPriceGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice');
  Text := CurrToStrF(PayablePrice, ffCurrency, 0)
end;

procedure TReciptsStoreF.plblTotallSellPricAlphaGetText(Sender: TObject;
  var Text: String);
var
  PayablePrice: Currency;
begin
  inherited;
  PayablePrice := CalcSumFileds(qryItems, 'TotallSellPrice') +
    CalcSumFileds(qry_Deficits4Print, 'Deficit_Add_Dec');
  PayablePrice := roundto(PayablePrice, 0);
  Text := num2alphabet(StrToInt64(CurrToStr(PayablePrice))) + ' ريال ';
end;

procedure TReciptsStoreF.actRpt001Execute(Sender: TObject);
begin
  inherited;
  Rpt001F.Enter(qryRecipts, qryinit)
end;

procedure TReciptsStoreF.qryItemsDeficitValueChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // DeficitValue
end;

procedure TReciptsStoreF.plblAmount1Total_PriceGetText(Sender: TObject;
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

procedure TReciptsStoreF.qryItemsTotallSellPriceChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).name);
end;

procedure TReciptsStoreF.qryItemsStuffCodeChange(Sender: TField);
var
  AutoPrice, AgrAmount: Real;
  myCustValuationType: Integer;
  Rate: Currency;
  AutoPriceTag: Byte;
  StuffCode: LargeInt;
  aTFieldNotifyEvent: TFieldNotifyEvent;
begin
  inherited;
  // ___________________________   انتقال قيمت في       ____________________________
  if qryItems.FieldByName('StuffCode').AsLargeInt = 0 then
    Exit;
  StuffCode := qryItems.FieldByName('StuffCode').AsLargeInt;
  AutoPrice := 0;
  Rate := 0;
  AgrAmount := 0;

  myCustValuationType := qryRecipts.FieldByName('_CustValuationType').AsInteger;
  AutoPriceTag := qryinit.FieldByName('AutoPrice').AsInteger;
  // ___________________________   انتقال قيمت في       ____________________________
  With DMf.qryTmpTmp do
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
        ifthen((qryinit.FieldByName('AutoPrice').AsInteger = 6),
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
      SQL.Add('Customers.CustomerGrpID AND(');
      SQL.Add('Manifesto.CustIDFrom <= Customers.CustID AND Manifesto.CustIDTo >= Customers.CustID');
      SQL.Add(')AND (SellOrBuy = 0)AND (ManifestoRunDate <= ''' +
        qryRecipts.FieldByName('ReciptDate').AsString + ''')');
      SQL.Add(' AND (Manifesto.SellsMethod = ' + qryRecipts.FieldByName
        ('SellsMethod').AsInteger.ToString + ')');

      if ((qryinit.FieldByName('RecuestActive').AsLargeInt and
        Integer(CHKManifestoSellsEmporiumOffFilter)) = 0) then
        SQL.Add(' AND (Manifesto.SellsEmporium = ' + qryRecipts.FieldByName
          ('SellsEmporium').AsInteger.ToString + ')');
      SQL.Add(' AND (Customers.CustID = ' + qryRecipts.FieldByName('PersonID1')
        .AsInteger.ToString + ')');

      SQL.Add(' AND (ManifestoItems.StuffCode = ' + IntToStr(StuffCode) + ')');

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

      3:
        AutoPrice := FieldByName('BuyPrice').AsCurrency;
      4:
        AutoPrice := FieldByName('StandardRate').AsCurrency;
      6:
        AutoPrice := Rate;
    else
      AutoPrice := 0;
    end;
    if (opt.StuffEnableKind in [2]) and (FieldByName('State').AsInteger = 1)
    then
    begin
      Warn('كالاي انتخاب شده غير فعال است!!‏');
      aTFieldNotifyEvent := qryItems.FieldByName('StuffCode').OnChange;
      qryItems.FieldByName('StuffCode').AsFloat := 0;
      qryItems.FieldByName('StuffCode').OnChange := aTFieldNotifyEvent;
    end;
    Active := False;
  end;
  if not(qryItems.state in dsEditModes) then
    qryItems.edit;
  if AutoPriceTag in [6, 7, 13] then
    qryItems.FieldByName(FieldNameEntity).AsFloat := AgrAmount;
  qryItems.FieldByName('UnitSellPrice').AsFloat := AutoPrice;
  if qryinit.FieldByName('TozinActive').AsInteger = 2 then
  begin
    // qryItems.FieldByName(FieldNameEntity).ReadOnly:=False;
    qryItems.FieldByName(FieldNameEntity).AsFloat := ReadFromTxtOrComPort;
    // qryItems.FieldByName(FieldNameEntity).ReadOnly:=True;
  end;

  qryItems.FieldByName(FieldNameEntity).AsInteger := 1;
  if not actCopyPaste.Checked and (qryinit.FieldByName('BarCodeKind').AsInteger
    in [2, 3]) then
  begin
    qryItems.Post;
    qryItems.Append;
  end;

end;

procedure TReciptsStoreF.GetStuffCodeFromStuffTecInfo(StuffTecInfo: String;
  StoreID: Integer);
var
  mnu: TMenuItem;
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(DMf);
  if StuffTecInfo <> EmptyStr then
    With qry do
    begin
      Connection := DMf.adcBSell;
      SQL.Text :=
        'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName AS StuffName ';
      // SQL.Add  ('dbo.GetStuffName(StuffCoding.c_StuffCode) + STR(StuffCoding.c_StuffCode) + ''  '' + ');
      // SQL.Add  ('dbo.GetLookUpsName(StuffCoding.c_StuffCode, 313) + STR(SellPrice1) AS StuffName');
      SQL.Add('FROM StuffCoding INNER JOIN');
      SQL.Add('StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode');
      SQL.Add('WHERE (StoreStuffs.n_StoreID = :StoreID ) ');
      SQL.Add('AND c_StuffTecInfo=''' + StuffTecInfo + '''');
      SQL.Add(' and  c_StuffTecInfo<>''0''');
      Parameters.ParamByName('StoreID').Value := StoreID;
      Active := True;
      if RecordCount > 1 then
      begin
        popStuffTecInfo := TPopupMenu.Create(nil);
        while not eof do
        begin
          mnu := TMenuItem.Create(popStuffTecInfo);
          mnu.OnClick := NAllGetStuffCodeFromStuffTecInfo;
          mnu.Tag := StrToInt64(FieldByName('c_StuffCode').AsString);
          mnu.Caption := FieldByName('StuffName').AsString;
          popStuffTecInfo.Items.Add(mnu);
          Next;
        end;
        popStuffTecInfo.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
      end
      else
        qryItems.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('c_StuffCode').AsLargeInt;
      Free;
    end;

end;

procedure TReciptsStoreF.NAllGetStuffCodeFromStuffTecInfo(Sender: TObject);
begin
  inherited;
  qryItems.FieldByName('StuffCode').AsLargeInt := (Sender as TMenuItem).Tag;
  popStuffTecInfo.Free;
end;

procedure TReciptsStoreF.plblAllReadBankConfigGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig(Text, '')
end;

procedure TReciptsStoreF.actGetExcelMasterDetailsExecute(Sender: TObject);
begin
  inherited;
  try
    getresponseShow := False;
    GetExcelMasterDetailsF.ShowImPortExcel(qryRecipts, qryItems);
  finally
    getresponseShow := True;
  end;
end;

procedure TReciptsStoreF.actGo2CodeExecute(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFocus;
  DBGrid1.SelectedIndex := ColumnIndexByFieldName(DBGrid1, 'StuffCode');

end;

procedure TReciptsStoreF.actGo2EntityExecute(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFocus;
  DBGrid1.SelectedIndex := ColumnIndexByFieldName(DBGrid1, FieldNameEntity);
end;

procedure TReciptsStoreF.actInsertNoteExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryItemsItemNote);
end;

procedure TReciptsStoreF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if (opt.showBig) and (showBigOnField(Sender)) then
  begin
    aBigPanel.Visible := True;
    showBigNumDBGrid1ColEnter(Sender, aBigPanel, horoofPanel)
  end;
end;

procedure TReciptsStoreF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if showBigOnField(Sender) then
    if (DBGrid1.EditorMode) and (DBGrid1.InplaceEditor <> nil) then
      showBigNum(StrToCurrDef(RemoveComma(DBGrid1.InplaceEditor.Text), 0),
        aBigPanel, horoofPanel);

end;

procedure TReciptsStoreF.qryReciptsReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)

end;

procedure TReciptsStoreF.qryReciptsRialsEqualChange(Sender: TField);
begin
  inherited;
  if (qryinit.FieldByName('ArzActive').AsInteger = 1) and
    (qryinit.FieldByName('ArzTypeID').AsInteger = 0) then
    With qryItems do
    begin
      First;
      while not eof do
      begin
        edit;
        FieldByName('ArzAmount').AsFloat := FieldByName('ArzAmount').AsFloat;
        Next;
      end;
    end;
end;

procedure TReciptsStoreF.mnuN13Click(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryReciptsStoreID.AsInteger, qryItemsStuffCode.AsLargeInt, 1)
end;

procedure TReciptsStoreF.N12Click(Sender: TObject);
begin
  inherited;
  StuffTransactionF.Enter(qryReciptsStoreID.AsInteger,
    qryItemsStuffCode.AsLargeInt)
end;

procedure TReciptsStoreF.actCopyExecute(Sender: TObject);
begin
  inherited;
  CopyNewRecipts(qryRecipts, qryRecipts, qryinit)
end;

function TReciptsStoreF.ReciptBe4PostCtrlEntAct(IsOnDelelte
  : Boolean = False): Boolean;
begin
  Result := True;
  With qryItems do
    try
      DisableControls;
      First;
      while not eof do
      begin
        Result := ControlEntity(CurrentEntity, CurrentWeight, qryItems,
          qryRecipts, qryinit, Form_InOut, False, MyEntityDisplayType, False,
          nil, IsOnDelelte, False);
        if not Result then
          Abort;
        Next;
      end;
    finally
      EnableControls;
    end;
end;

procedure TReciptsStoreF.qryItemsSecondTypeItemGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col: TColumnEh;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')];
  if col.PickList.IndexOfObject(TObject(Sender.AsInteger)) <> -1 then
    Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsStoreF.qryItemsSecondTypeItemSetText(Sender: TField;
  const Text: String);
var
  col: TColumnEh;
  i: Integer;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'SecondTypeItem')];
  i := col.PickList.IndexOf(Text);
  if i <> -1 then
    Sender.AsInteger := Integer(col.PickList.Objects[i])
end;

end.
