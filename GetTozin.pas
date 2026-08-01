unit GetTozin;

interface

uses
  Windows, Messages, SysUtils, System.JSON, Variants, Classes, Graphics,
  Controls, Forms, REST.JSON,
  Dialogs, template4, StdCtrls, ExtCtrls, DBActns, ActnList, FarsiReportBuilde,
  Buttons, DB, ADODB, DBCtrls, Mask, CPort, ppDB, ppDBPipe, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, ppPrnabl, ppCtrls, math,
  ppParameter, ppDesignLayer, System.Actions, CPortFunctions, Vcl.Menus,
  ppTableGrid, ppStrtch, Vcl.ComCtrls, ppVar, frPelak,
  ToolCtrlsEh, DBGridEhToolCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, DBGridEhGrouping, DynVarsEh, DBCtrlsEh,
  System.ImageList, Vcl.ImgList, Vcl.ExtDlgs, VidGrab;

type

  TGetTozinF = class(TTemplate4F)
    qryTozin: TADOQuery;
    qryTozinTozinID: TIntegerField;
    qryTozinTozinNumber: TIntegerField;
    qryTozinPersonID1: TIntegerField;
    qryTozinMachineName: TStringField;
    qryTozinStoreID: TSmallintField;
    qryTozinMachineNo: TStringField;
    qryTozinReciptType: TWordField;
    qryTozinMachineWeight: TFloatField;
    qryTozinMachineFullWeight: TFloatField;
    qryTozinTozinNote: TStringField;
    qryTozinEnterDate: TDateTimeField;
    qryTozinFirstUser: TStringField;
    qryTozinLastUser: TStringField;
    srcTozin: TDataSource;
    actSearch: TAction;
    newPanel: TPanel;
    BitBtn2: TBitBtn;
    btnState3: TBitBtn;
    okPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    qryTozinTozinDate: TStringField;
    Label9: TLabel;
    edtTozinNumber: TDBEdit;
    Label10: TLabel;
    edtTozinDate: TDBEdit;
    qryStore: TADOQuery;
    qryStuff: TADOQuery;
    BitBtn3: TBitBtn;
    qryCustomers: TADOQuery;
    qryTozin_StuffName: TStringField;
    qryTozin_StoreName: TStringField;
    qryTozin_CustName: TStringField;
    qryTozinReciptNumber: TIntegerField;
    qryTozinMoistureContent: TFloatField;
    qryTozinRisingUseful: TFloatField;
    qryTozinRisingNonUseFul: TFloatField;
    dbnvgr1: TDBNavigator;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    ppParameterList1: TppParameterList;
    qryTozinStuffCode: TLargeintField;
    actStoreSettings: TAction;
    qryinit: TADOQuery;
    qryTozinPersonID2: TIntegerField;
    qryTozinIsSystem: TBooleanField;
    qryTozin_CustName2: TStringField;
    actManualInsert: TAction;
    BitBtn7: TBitBtn;
    qryRelatedRecipts: TADOQuery;
    qryTozinRelatedRecipts: TStringField;
    qryTozinReciptID: TIntegerField;
    qryTozinMandeh: TFloatField;
    qryTozinExitDate: TDateTimeField;
    qryTozinTozinState: TWordField;
    Timer12: TTimer;
    actRecipts11: TAction;
    pnlAll: TPanel;
    pnlCustomer: TPanel;
    Panel3: TPanel;
    pnlWeight: TPanel;
    Panel5: TPanel;
    btnWeight: TSpeedButton;
    Panel7: TPanel;
    grpCustomer2: TGroupBox;
    spdPersonID2: TSpeedButton;
    edtPersonID2: TDBEdit;
    edt_CustName2: TDBEdit;
    Panel6: TPanel;
    Label8: TLabel;
    Label7: TLabel;
    edtMachineName: TDBEdit;
    grpNote: TGroupBox;
    dbmmoTozinNote: TDBMemo;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    txtEnter: TDBEdit;
    txtExit: TDBEdit;
    edtMachineWeight: TDBEdit;
    edtFullweight: TDBEdit;
    edtMandeh: TEdit;
    grpWet: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtMoistureContent: TDBEdit;
    edtRisingUseful: TDBEdit;
    edtRisingNonUseFul: TDBEdit;
    grpPerson3: TGroupBox;
    btnPersonID3: TSpeedButton;
    edtPersonID3: TDBEdit;
    edt_CustName3: TDBEdit;
    qryTozinPersonID3: TIntegerField;
    qryTozin_CustName3: TStringField;
    qryTozinNumberOfBags: TBCDField;
    edtNumberOfBags: TDBEdit;
    lblNumberOfBags: TLabel;
    edtUseAbleWeight: TDBEdit;
    lblUseAbleWeight: TLabel;
    edtMachineFullWeight: TDBEdit;
    Label15: TLabel;
    edtentity: TDBEdit;
    Label16: TLabel;
    srcRelatedRecipts: TDataSource;
    actCorrelateRecipt: TAction;
    btnCorrelateRecipt1: TBitBtn;
    qryTozinServerID: TIntegerField;
    qryTozinYearID: TIntegerField;
    btnConversionCoSerial: TBitBtn;
    actConversionCoSerial: TAction;
    plnRelatedRecipts: TppDBPipeline;
    pnlRelatedRecipts: TPanel;
    PopMuPrint: TPopupMenu;
    qryTozin_Carton: TFloatField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppPageStyle1: TppPageStyle;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppTableGrid1: TppTableGrid;
    ppTableRow1: TppTableRow;
    ppTableCell1: TppTableCell;
    ppDBText2: TppDBText;
    ppTableCell2: TppTableCell;
    ppDBText12: TppDBText;
    ppTableCell3: TppTableCell;
    ppTableCell7: TppTableCell;
    ppDBText5: TppDBText;
    ppTableRow2: TppTableRow;
    ppTableCell4: TppTableCell;
    ppTableCell5: TppTableCell;
    ppTableCell6: TppTableCell;
    ppTableCell8: TppTableCell;
    ppTableRow3: TppTableRow;
    ppTableCell9: TppTableCell;
    ppDBText4: TppDBText;
    ppTableCell10: TppTableCell;
    ppDBText7: TppDBText;
    ppTableCell11: TppTableCell;
    ppTableCell12: TppTableCell;
    ppDBText8: TppDBText;
    ppTableRow4: TppTableRow;
    ppTableCell13: TppTableCell;
    ppDBText6: TppDBText;
    ppTableCell14: TppTableCell;
    ppTableCell15: TppTableCell;
    ppTableCell16: TppTableCell;
    ppDBText9: TppDBText;
    ppTableColumn1: TppTableColumn;
    ppTableColumn2: TppTableColumn;
    ppTableColumn3: TppTableColumn;
    ppTableColumn4: TppTableColumn;
    ppDBText56: TppDBText;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppDBText3: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText13: TppDBText;
    pdbtxtMiladi2Shamsi: TppDBText;
    ppLabel12: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayer1: TppDesignLayer;
    qryLicense: TADOQuery;
    srcLicense: TDataSource;
    plnLicense: TppDBPipeline;
    btnEdit: TBitBtn;
    mskWeight: TMaskEdit;
    UpDown1: TUpDown;
    qryInit2: TADOQuery;
    qryLicenseRpt: TADOQuery;
    srcLicenseRpt: TDataSource;
    qryLicenseWeight: TFloatField;
    btnSearchReciptNumber: TSpeedButton;
    actCustomerGrpID4Add2Customers2: TAction;
    actUpDown1Min: TAction;
    qryTozinWeightKind: TWordField;
    rgpWeightKind: TDBRadioGroup;
    actSplitTozin: TAction;
    BitBtn8: TBitBtn;
    qryTozinPrvTozinID: TIntegerField;
    qryOldTozin: TADOQuery;
    qryOldTozinTozinID: TIntegerField;
    qryOldTozinTozinNumber: TIntegerField;
    qryOldTozinTozinDate: TStringField;
    qryOldTozinStuffCode: TLargeintField;
    qryOldTozinPersonID1: TIntegerField;
    qryOldTozinMachineName: TStringField;
    qryOldTozinStoreID: TSmallintField;
    qryOldTozinMachineNo: TStringField;
    qryOldTozinReciptType: TWordField;
    qryOldTozinMachineWeight: TFloatField;
    qryOldTozinMachineFullWeight: TFloatField;
    qryOldTozinTozinNote: TStringField;
    qryOldTozinEnterDate: TDateTimeField;
    qryOldTozinExitDate: TDateTimeField;
    qryOldTozinFirstUser: TStringField;
    qryOldTozinLastUser: TStringField;
    qryOldTozinReciptNumber: TIntegerField;
    qryOldTozinMoistureContent: TFloatField;
    qryOldTozinRisingUseful: TFloatField;
    qryOldTozinRisingNonUseFul: TFloatField;
    qryOldTozinPersonID2: TIntegerField;
    qryOldTozinIsSystem: TBooleanField;
    qryOldTozinRelatedRecipts: TStringField;
    qryOldTozinReciptID: TIntegerField;
    qryOldTozinTozinState: TWordField;
    qryOldTozinPersonID3: TIntegerField;
    qryOldTozinNumberOfBags: TBCDField;
    qryOldTozinServerID: TIntegerField;
    qryOldTozinYearID: TIntegerField;
    qryOldTozinPrvTozinID: TIntegerField;
    qryOldTozinWeightKind: TWordField;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    frPelakF1: TfrPelakF;
    actEdit: TAction;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    plnRecipts: TppDBPipeline;
    qryTozinPelak1: TStringField;
    qryTozinPelak2: TStringField;
    qryTozinPelak3: TStringField;
    qryTozinPelak4: TStringField;
    qryLicenseRptReciptID: TIntegerField;
    qryLicenseRptServerID: TIntegerField;
    qryLicenseRptYearID: TIntegerField;
    qryLicenseRptReciptNumber: TIntegerField;
    qryLicenseRptReciptDate: TStringField;
    qryLicenseRptReciptType: TWordField;
    qryLicenseRpttxt: TStringField;
    qryLicenseRptEntity: TFloatField;
    qryLicenseRptWeight: TFloatField;
    qryLicenseRptCarton: TFloatField;
    qryLicenseRptStuffCode: TLargeintField;
    qryLicenseRptc_StuffName: TStringField;
    qryLicenseRptPersonID2: TIntegerField;
    qryLicenseRptCustName2: TStringField;
    qryLicenseRptCustName: TStringField;
    qryLicenseRptPersonID1: TIntegerField;
    qryLicenseRptCustNameD: TStringField;
    qryLicenseRptAidNumber: TStringField;
    qryTozinParentReciptItemID: TIntegerField;
    qryTozinDirectDownload: TWordField;
    qryTozin_PostControl: TSmallintField;
    pnUseUnitSecondType: TPanel;
    PnlSecondType: TPanel;
    lblSecondType: TLabel;
    CmbSecondType: TDBComboBox;
    qryTozinSecondType: TIntegerField;
    qryTozinMasirID: TIntegerField;
    PnlUseUnitM: TPanel;
    LblUseUnitM: TLabel;
    btnUseUnitID: TSpeedButton;
    DBTextUseUnitID_M: TDBText;
    EdtUseUnitID_M: TDBEdit;
    qryTozinUseUnitID: TIntegerField;
    qryTozin_UseUnitName: TStringField;
    qryTozin_StuffVolume: TFloatField;
    dbrgrpDirectDownload: TDBRadioGroup;
    qryTozinStoreID2: TSmallintField;
    qryTozin_StoresName2: TStringField;
    grpDriver: TGroupBox;
    spdPersonID1: TSpeedButton;
    edtPersonID1: TDBEdit;
    edt_CustName: TDBEdit;
    edt4ShowMachineNo: TDBEdit;
    actAdd2CustomersMasir: TAction;
    qryTozin_InfoWeight: TFloatField;
    actTozinPurchaseEffectF: TAction;
    qryPurchaseEffect: TADOQuery;
    srcPurchaseEffect: TDataSource;
    plnPurchaseEffect: TppDBPipeline;
    edtEnterDate: TDBDateTimeEditEh;
    edtExitDate: TDBDateTimeEditEh;
    PnlAidInfoMaster: TPanel;
    LblAidInfoNo: TLabel;
    LblAidInfoDate: TLabel;
    edtAidNumber: TDBEdit;
    edtAidDate: TDBEdit;
    qryTozinAidDate: TStringField;
    qryTozinAidNumber: TStringField;
    actTozinDeficitsF: TAction;
    qryTozinsRelatedRecipts: TADOQuery;
    qryTozinsRelatedReciptsRowNumber: TLargeintField;
    qryTozinsRelatedReciptsTozinID: TIntegerField;
    Panel4: TPanel;
    txtTozinState: TDBText;
    lblTozinID: TLabel;
    plbTozinaOfTozin: TppLabel;
    qryTransFormItems: TADOQuery;
    plnTransFormItems: TppDBPipeline;
    srcTransFormItems: TDataSource;
    plbltxtEnter: TppLabel;
    plbledtEnterDate: TppLabel;
    plbltxtExit: TppLabel;
    plbledtExitDate: TppLabel;
    qryFn_EffectCross: TADOQuery;
    plnFn_EffectCross: TppDBPipeline;
    srcFn_EffectCross: TDataSource;
    actCustomerGrpID4Add2Customers1: TAction;
    actCustomerGrpID4Add2Customers3: TAction;
    qryTozinPrvYearID: TIntegerField;
    SpeedButton3: TSpeedButton;
    actPlaque: TAction;
    ImageList1: TImageList;
    actCamera: TAction;
    OpenPictureDialog1: TOpenPictureDialog;
    pnlPlaque: TPanel;
    Panel2: TPanel;
    grpRelatedRecipts: TGroupBox;
    spdRelatedRecipts: TSpeedButton;
    edtRelatedRecipts: TDBEdit;
    edtRelatedName: TDBEdit;
    grpStore: TGroupBox;
    spdStoreID: TSpeedButton;
    edtStoreID: TDBEdit;
    edt_StoreName: TDBEdit;
    grpStuff: TGroupBox;
    spdStuffCode: TSpeedButton;
    SpeedButton2: TSpeedButton;
    edtStuffCode: TDBEdit;
    edt_StuffName: TDBEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Label17: TLabel;
    edtWeightLicense: TDBEdit;
    CedarDbgrid1: TCedarDbgrid;
    grpStoreID2: TGroupBox;
    SpeedButton1: TSpeedButton;
    edtStoreID2: TDBEdit;
    edt_StoresName2: TDBEdit;
    grpMasir: TGroupBox;
    btnMasirID: TSpeedButton;
    dbedtMasirID: TDBEdit;
    edt_MasirID: TDBEdit;
    Panel10: TPanel;
    BitBtn9: TBitBtn;
    frPlaquereader: TfrPelakF;
    vc1: TVideoGrabber;
    imgPlaqueReader: TImage;
    actDeleteRecipts: TAction;
    actCustomersTaxF: TAction;
    qryTozinSellsMethod: TIntegerField;
    qryTozinTruckNumber: TStringField;
    pnlTruckNumber_SellsMethod: TPanel;
    pnlTruckNumber: TPanel;
    edtTruckNumber: TDBEdit;
    lblTruckNumber: TLabel;
    pnlSellsMethod: TPanel;
    Label1: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    qryTozin_CarType: TStringField;
    qryLookUps: TADOQuery;
    plblSecondType: TppLabel;
    qryTozinExitDateM: TDateTimeField;
    qryTozinPersonID4: TIntegerField;
    qryTozin_CustName4: TStringField;
    grpPerson4: TGroupBox;
    btnPersonID4: TSpeedButton;
    edtPersonID4: TDBEdit;
    edt_CustName4: TDBEdit;
    pnlPO: TPanel;
    lblPO: TLabel;
    edtPO: TDBEdit;
    qryTozinPO: TStringField;
    qryTozinPersonID5: TIntegerField;
    qryTozin_CustName5: TStringField;
    grpPerson5: TGroupBox;
    btnPersonID5: TSpeedButton;
    edtPersonID5: TDBEdit;
    edt_CustName5: TDBEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    qryTozinMachineEntity: TFMTBCDField;
    pnlMachineEntity: TPanel;
    Label19: TLabel;
    edtMachineEntity: TDBEdit;
    procedure srcTozinStateChange(Sender: TObject);
    procedure spdPersonID1Click(Sender: TObject);
    procedure spdStoreIDClick(Sender: TObject);
    procedure spdStuffCodeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryTozinAfterInsert(DataSet: TDataSet);
    procedure rgpWeightKindClick(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure qryTozinEnterDateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryTozinExitDateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryTozinAfterEdit(DataSet: TDataSet);
    procedure qryTozinAfterPost(DataSet: TDataSet);
    procedure qryTozinBeforeDelete(DataSet: TDataSet);
    procedure qryTozinBeforePost(DataSet: TDataSet);
    procedure srcTozinDataChange(Sender: TObject; Field: TField);
    procedure qryTozinAfterCancel(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure qryTozinBeforeEdit(DataSet: TDataSet);
    procedure ppLabel73GetText(Sender: TObject; var Text: String);
    procedure ppLabel74GetText(Sender: TObject; var Text: String);
    procedure ppLabel75GetText(Sender: TObject; var Text: String);
    procedure actStoreSettingsExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure spdPersonID2Click(Sender: TObject);
    procedure actManualInsertExecute(Sender: TObject);
    procedure spdRelatedReciptsClick(Sender: TObject);
    procedure Timer12Timer(Sender: TObject);
    procedure btnWeightClick(Sender: TObject);
    procedure actRecipts11Execute(Sender: TObject);
    procedure pdbtxtMiladi2ShamsiGetText(Sender: TObject; var Text: string);
    procedure qryTozinBeforeInsert(DataSet: TDataSet);
    procedure btnPersonID3Click(Sender: TObject);
    procedure qryTozinAfterScroll(DataSet: TDataSet);
    procedure actCorrelateReciptExecute(Sender: TObject);
    procedure actConversionCoSerialExecute(Sender: TObject);
    procedure qryTozinRelatedReciptsChange(Sender: TField);
    procedure mnu4allClick(Sender: TObject);
    procedure qryTozinMachineFullWeightChange(Sender: TField);
    procedure UpDown1ChangingEx(Sender: TObject; var AllowChange: Boolean;
      NewValue: Integer; Direction: TUpDownDirection);
    procedure btnSearchReciptNumberClick(Sender: TObject);
    procedure btnState3Click(Sender: TObject);
    procedure mskWeightDblClick(Sender: TObject);
    procedure qryTozinTozinStateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actCustomerGrpID4Add2Customers2Execute(Sender: TObject);
    procedure edtPersonID2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSplitTozinExecute(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: string);
    procedure qryTozinMachineNameChange(Sender: TField);
    procedure qryTozinMachineNoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryTozinMachineNoSetText(Sender: TField; const Text: string);
    procedure actEditExecute(Sender: TObject);
    procedure qryTozinBeforeScroll(DataSet: TDataSet);
    procedure qryRelatedReciptsAfterOpen(DataSet: TDataSet);
    procedure edtRelatedReciptsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStoreIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStuffCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryTozinStoreIDChange(Sender: TField);
    procedure qryTozinStuffCodeChange(Sender: TField);
    procedure btnMasirIDClick(Sender: TObject);
    procedure btnUseUnitIDClick(Sender: TObject);
    procedure actAdd2CustomersMasirExecute(Sender: TObject);
    procedure dbedtMasirIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryTozinPersonID2Change(Sender: TField);
    procedure actTozinPurchaseEffectFExecute(Sender: TObject);
    procedure actTozinDeficitsFExecute(Sender: TObject);
    procedure plbTozinaOfTozinGetText(Sender: TObject; var Text: string);
    procedure plbltxtEnterGetText(Sender: TObject; var Text: string);
    procedure plbledtEnterDateGetText(Sender: TObject; var Text: string);
    procedure plbltxtExitGetText(Sender: TObject; var Text: string);
    procedure plbledtExitDateGetText(Sender: TObject; var Text: string);
    procedure actCustomerGrpID4Add2Customers1Execute(Sender: TObject);
    procedure actCustomerGrpID4Add2Customers3Execute(Sender: TObject);
    procedure actPlaqueExecute(Sender: TObject);
    procedure actCameraExecute(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure vc1MotionDetected(Sender: TObject; GlobalMotionRatio: Double;
      MaxMotionCellX, MaxMotionCellY: Integer; FrameBitmap: TBitmap;
      FrameNumber: Cardinal; FrameTime: Int64; FrameId: Integer;
      var CaptureFrame: Boolean);
    procedure vc1Click(Sender: TObject);
    procedure actDeleteReciptsExecute(Sender: TObject);
    procedure actCustomersTaxFExecute(Sender: TObject);
    procedure qryTozinMachineNoChange(Sender: TField);
    procedure qryTozin_SellAmountChange(Sender: TField);
    procedure qryTozinSecondTypeChange(Sender: TField);
    procedure plblSecondTypeGetText(Sender: TObject; var Text: string);
    procedure Panel1Click(Sender: TObject);
    procedure btnPersonID4Click(Sender: TObject);
    procedure btnPersonID5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    // FComPort: TComPort;
    // frmPlaqueReader1: TfrmPlaqueReader;
    Hbar: Thandle;
    qryAddressInMasir: TADOQuery;
    TsStuff: TStringList;
    UseAbleWeightFldName, EntityFldName: string;
    FWeight: real;
    FFormType: SmallInt;
    RecallType: Integer;
    RestartStore, FcallanotherForm, getresponseShow, FormOutput,
      InfoWeight: Boolean;
    FCorrelateReciptType, FCorrelateKind: Integer;
    CorrelateReciptType, ConversionCoSerial: Integer;
    RoundCount: Integer;
    ShowNotEntityOnSearch, Settings, RecuestActive: Largeint;

    procedure DOWeigh(Sender: TObject; const Weight: real);

    // Procedure InitCombo;
    // function ReadFromTxt: String;
    procedure NewReciptsGridF(ReciptType: Integer);
    procedure NewReciptsBuyF(ReciptType: Integer);
    procedure qryTozinRequery;
    procedure GetTozinNumber;
    procedure UseAbleWeightSetName;
    procedure UpdateEdtMandeh;
    function ChekRemain: Boolean;
    procedure InitDBCombos;

    procedure RecognizeBuffer(bmp: TBitmap);
    // procedure UpdateFarsiResult(LPResult: string);
    function AnprCreate(ainstance: Byte; aPer_plate_license: Byte;
      aseccurity_code: WideString; alog_level: Byte;
      acfg_file: PWideChar): Int16;
    function anpr_recognize_buffer(instance: Byte; buffer: PAnsiChar;
      W, H, step: Integer; aresult: PWideChar; pcnf: PSingle;
      prc: PRect): Int16;
    procedure anpr_get_en_result(result_fa, result_en: PWideChar);
    procedure PlaqueReader_;
    procedure OnTerminatePlaqueReader(Sender: TObject);

    function ConvertPelckChar(fapelak: string; enpelak: string): string;
    procedure FindMachineName;
    procedure SetMachineWeight;
    procedure anprabout;
    // function InsertCorrelateRecipt(qryinit, qryItems: TADOQuery;
    // formType: Integer; qryRecipts: TADOQuery; FormOutput: Boolean;
    // DBNavigator1: TDBNavigator; MyEntityDisplayType: Byte): Integer;
    // procedure DOWeight(Sender: TObject; const Weight: real);
    { Private declarations }
    // function IsShortCut(var Message: TWMKey): Boolean; override;
  public
    procedure enter(const TozinID: Integer; ShowOnly: Boolean);
    { Public declarations }
  end;

  TcharArray = array [0 .. 255] of char;
  Tanpr_create = function(instance: Byte; per_plate_license: Byte;
    seccurity_code: WideString; log_level: Byte; cfg_file: PWideChar)
    : Int16; stdcall;

  Tanpr_about = procedure(); stdcall;

  Tanpr_recognize_buffer = function(instance: Byte; buffer: PAnsiChar;
    W: Integer; H: Integer; step: Integer; result: PWideChar; pcnf: PSingle;
    prc: PRect): Int16; stdcall;
  // short	anpr_recognize_buffer(byte instance, char* bytes, int W, int H, int step, wchar_t* result, float* pcnf, RECT* prc)

  Tanpr_get_en_result = procedure(result_fa: PWideChar;
    result_en: PWideChar); stdcall;

  // TUNICODE_SUPPORT = UNICODE_SUPPORT; stdcall;

var
  GetTozinF: TGetTozinF;

implementation

uses dm, GlobalPro, searchCode_ADO, shamsiDate, mmessage, StrUtils,
  FormFunctions, ReciptsGrid, ReciptsBuy, FaraConsts, main,
  ReciptsFunctions, TozinPurchaseEffect, UTozin, TozinDeficits, CustomersTax,
  mdiMain, SelectStore;

{$R *.dfm}

procedure TGetTozinF.srcTozinStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryTozin.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  FreeReservedCodes(DmF.adcBSell, '', '', 'GetTozin' + FFormType.ToString);

  // pnlCustomer.Enabled := qryTozin.State in [dsInsert];
  // rgpWeightKind.Enabled := pnlCustomer.Enabled;
  // btnWeight.Enabled := pnlCustomer.Enabled;

  edtFullweight.ReadOnly := True;
  edtMachineWeight.ReadOnly := True;
  edtFullweight.TabStop := False;
  edtMachineWeight.TabStop := False;
  // BtnReject.Cancel:=newPanel.Visible;
  // newPanel2.Visible:=okPanel.Visible;

end;

procedure TGetTozinF.Timer12Timer(Sender: TObject);
begin
  inherited;
  try
    // Timer1.Enabled := False;

    FWeight := ReadFromTxtOrComPort;
    UpDown1.Min := Round(FWeight) - 50;
    UpDown1.Max := Round(FWeight) + 50;
    mskWeight.Text := FloatToStr(FWeight);
    // Timer1.Enabled := True;
  except
    // Timer1.Enabled := False;
  end;
end;

procedure TGetTozinF.UpDown1ChangingEx(Sender: TObject;
  var AllowChange: Boolean; NewValue: Integer; Direction: TUpDownDirection);
begin
  inherited;
  FWeight := NewValue
end;

procedure TGetTozinF.spdPersonID1Click(Sender: TObject);
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
  b := searchCode_ADOF.SearchCode2(DmF.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + ' ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString, 'آدرس', 'تلفن',
    'مشتري3', 'محل مصرف', 'همراه', 'دورنما', 'توضيحات', 'مشخصات كامل'], Results,
    [50, 120, 100, 50, 50, 50, 50, 50, 100, 100], alLeft);
  if b then
  begin
    qryTozin['PersonID1'] := Results[0];

  end; // if
  // qryCustomers1.Active := True;
end;

procedure TGetTozinF.spdStoreIDClick(Sender: TObject);
var
  c, txt, s: String;
begin
  inherited;
  txt := 'SELECT DISTINCT Stores.n_StoreID, Stores.c_StoreName FROM Stores ' +
    'INNER JOIN UsersStore ON Stores.n_StoreID = UsersStore.n_StoreID ';
  txt := txt + 'WHERE ((UsersStore.n_UserID = ' + User.ID.ToString +
    ') OR (1 = ' + IfThen(User.PowerUser, '1', '0') + ')) ';
  if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
    txt := txt + ' AND (StoreKind IN (' + qryinit.FieldByName('StoreKindList')
      .AsString + '))';

  s := searchCode_ADOF.SearchCode(DmF.adcBSell, c,
    qryinit.FieldByName('StoreCaption').AsString + 'ها', txt,
    ['کد', 'نام ' + qryinit.FieldByName('StoreCaption').AsString], alLeft);
  if s <> '' then
  begin
    if (Sender as TSpeedButton).Tag = 2 then
      qryTozin['StoreID2'] := c
    else
      qryTozin['StoreID'] := c;
  end;
end;

procedure TGetTozinF.spdStuffCodeClick(Sender: TObject);
var
  txt: String;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := ' SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName,StuffCoding.c_StuffTecInfo '
    + ' FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode '
    + ' LEFT OUTER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode ' +
    ' WHERE (StuffCoding.State = 0)AND(StoreStuffs.n_StoreID = ' +
    qryTozin.FieldByName('StoreID').AsString + ' ) ' +
    '  GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName, StuffCoding.c_StuffTecInfo, StuffCoding.SellPrice1 ';
  if searchCode_ADOF.SearchCode2(DmF.adcBSell, ' كالاها  ', txt,
    ['کد', 'نام كالا', 'واحد', 'مشخصات فني'], Results, [50, 100, 100, 100],
    alLeft) then
  begin
    if not(qryTozin.State in dsEditModes) then
      qryTozin.edit;
    qryTozin['StuffCode'] := Results[0];
  end;
end;

procedure TGetTozinF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  anprabout
end;

procedure TGetTozinF.btnMasirIDClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT CustomersMasir.ID' +
    ' , AddressInMasir.MasirText + '' '' + CustomersMasir.MasirNote AS MasirTextNote'
    + ' FROM CustomersMasir INNER JOIN' +
    ' AddressInMasir ON CustomersMasir.MasirID = AddressInMasir.MasirID' +
    ' WHERE (CustomersMasir.PersonID1 = ' + qryRelatedRecipts.FieldByName
    ('PersonID1').AsInteger.ToString + ')';
  b := searchCode_ADOF.SearchCode2(DmF.adcBSell, ' آدرس ها ', txt,
    ['کد', 'آدرس'], Results, [50, 150], alLeft);
  if b then
    qryTozin['MasirID'] := Results[0];
end;

procedure TGetTozinF.btnPersonID3Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,InfoWeight,Address,Mobile ' +
    'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind3', qryinit);
  Add2Filter(txt, 'CustomerActive = 0');
  b := searchCode_ADOF.SearchCode2(DmF.adcBSell,
    qryinit.FieldByName('Person3Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person3Caption').AsString + '', 'وزن',
    'آدرس', 'همراه'], Results, [50, 150, 80, 50, 200], alLeft);
  if b then
  begin
    qryTozin.FieldByName('PersonID3').AsString := Results[0];
  end;

end;

procedure TGetTozinF.btnPersonID4Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,InfoWeight,Address,Mobile ' +
    'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind4', qryinit);
  Add2Filter(txt, 'CustomerActive = 0');
  b := searchCode_ADOF.SearchCode2(DmF.adcBSell,
    qryinit.FieldByName('Person4Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person4Caption').AsString + '', 'وزن',
    'آدرس', 'همراه'], Results, [50, 150, 80, 50, 200], alLeft);
  if b then
  begin
    qryTozin.FieldByName('PersonID4').AsString := Results[0];
  end;

end;

procedure TGetTozinF.btnPersonID5Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,InfoWeight,Address,Mobile ' +
    'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind5', qryinit);
  Add2Filter(txt, 'CustomerActive = 0');
  b := searchCode_ADOF.SearchCode2(DmF.adcBSell,
    qryinit.FieldByName('Person5Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person5Caption').AsString + '', 'وزن',
    'آدرس', 'همراه'], Results, [50, 150, 80, 50, 200], alLeft);
  if b then
  begin
    qryTozin.FieldByName('PersonID5').AsString := Results[0];
  end;
end;

procedure TGetTozinF.btnSearchReciptNumberClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 6] of String;
begin
  inherited;
  txt := 'SELECT Tozin.TozinID, Tozin.TozinNumber, Tozin.TozinDate,' +
    ' Tozin.PersonID2, Customers.CustName ,Tozin.MachineNo, Tozin.MachineName '
    + ' FROM Tozin INNER JOIN Customers ON ' +
    ' Tozin.PersonID2 = Customers.CustID WHERE(Tozin.YearID = ' +
    APPBank.Year.ToString + ') ';

  txt := txt + Format('AND(ReciptType = %d)', [FFormType]);

  b := searchCode_ADOF.SearchCode2(DmF.adcBSell, Caption, txt,
    ['', 'شماره', 'تاریخ ', 'کد راننده', 'راننده', 'شماره ماشین', 'نام راننده'],
    Results, [0, 50, 50, 80, 200, 50, 90], alLeft);
  if b then
  begin
    if not qryTozin.Locate('TozinID', Results[0], []) then
      Warn('یافت نشد');
  end;

end;

procedure TGetTozinF.btnUseUnitIDClick(Sender: TObject);
begin
  inherited;
  SpeedButtonUseUnits(qryTozin, LblUseUnitM.Caption)
end;

procedure TGetTozinF.btnWeightClick(Sender: TObject);
begin
  inherited;
  if CmPack = nil then
    exit;

  if Assigned(CmPack.OnWeight) then
  begin
    CmPack.OnWeight := nil;
    mskWeight.Font.Color := clBlack;
  end
  else
  begin
    CmPack.OnWeight := DOWeigh;
    mskWeight.Font.Color := clRed
  end;

  // Timer1.Enabled := not Timer1.Enabled;
  // if Timer1.Enabled then
  //
  // else
  //

  rgpWeightKindClick(rgpWeightKind)
end;

procedure TGetTozinF.DOWeigh(Sender: TObject; const Weight: real);
begin
  FWeight := Weight;
  UpDown1.Min := Round(FWeight) - 50;
  UpDown1.Max := Round(FWeight) + 50;
  mskWeight.Text := FloatToStr(FWeight);
end;

procedure TGetTozinF.spdPersonID2Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  // qryCustomers2.Active := False;
  // txt := qryCustomers2.SQL.Text;
  txt := 'SELECT DISTINCT CustID, CustName,TechnicalCode,InfoWeight,Address,  Mobile '
    + 'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind2', qryinit);
  Add2Filter(txt, 'CustomerActive = 0');

  b := searchCode_ADOF.SearchCode2(DmF.adcBSell,
    qryinit.FieldByName('Person2Caption').AsString + ' ها ', txt,
    ['کد', 'نام ' + qryinit.FieldByName('Person2Caption').AsString + '',
    'کد فنی', 'وزن', 'آدرس', 'همراه'], Results, [80, 150, 100, 100, 200,
    80], alLeft);

  if b then
  begin
    qryTozin.FieldByName('PersonID2').AsString := Results[0];
    qryTozin.FieldByName('MachineName').AsString := Results[1];
    qryTozin.FieldByName('MachineNo').AsString := Results[2];
  end;

end;

procedure TGetTozinF.spdRelatedReciptsClick(Sender: TObject);
var
  Results: array [0 .. 30] of String;
  b: Boolean;
  I1, I2: Integer;
  C1, C2, SqlTxt: string;
begin
  inherited;
  case RecallType of
    1:
      begin
        // try
        SqlTxt := 'SELECT ReciptID, RelatedNo,ReciptItemID, MasirID,LookUpID,UseUnitID,RelatedName, '
          + 'ReciptNumber, ReciptDate,StuffCode,StuffName  ' +
          ', StoreID, PersonID1, CustName, ' +
          ' Entity,  MachineFullWeight, ReUseAbleWeight , ' +
          '   UseUnitName,  Name,  Masir, ExitCount,Tel,ReciptNote,YearID' +
          ' FROM dbo.Fn_RelatedReciptItemsTozin4List(' + FFormType.ToString +
          ',' + User.ID.ToString + ',' + IfThen(User.PowerUser, '1', '0') +
          ') AS f join Miladi_Shamsi m on m.ShamsiSlash=f.reciptdate ' +
          ' and m.Miladi = CONVERT (date, GETDATE()) ';
        // ReciptDate=right(dbo.MiladiToShamsi(SYSDATETIME()),10)

        { همه وضعیت ها
          فقط اطلاعات قطعي فراخواني شود.‏
          فقط اطلاعات دائمی فراخواني شود.‏ }
        // SqlTxt := SqlTxt + ' AND(ReciptState < 3 )';
        if qryinit.FieldByName('RecallReciptState1').AsInteger = 1 then
          SqlTxt := SqlTxt + ' WHERE(ReciptState = 1 )';

        if qryinit.FieldByName('RecallReciptState1').AsInteger = 2 then
          SqlTxt := SqlTxt + ' WHERE(ReciptState = 2 )';

        if qryinit.FieldByName('RecallReciptState1').AsInteger = 3 then
          SqlTxt := SqlTxt + ' AND(ReciptState <> 3 )';

        b := searchCode_ADOF.SearchCode2(DmF.adcBSell, ' فرم ها  ', SqlTxt,
          ['', '', '', '', '', '', '', 'شماره حواله', 'تاریخ حواله', '',
          'شرح کالا', '', 'کدخریدار', 'خریدار', opt.EntityCaption,
          'مقدار بارگیری شده', 'مقدار باقیمانده', 'روش تخلیه', 'محل تخلیه',
          'مقصد', 'تعداد خروجی', 'تلفن', 'توضیحات', ''], Results,
          [0, 0, 0, 0, 0, 0, 0, 50, 50, 0, 80, 0, 50, 80, 50, 50, 50, 80, 50,
          80, 50, 80, 100, 0], alLeft);

        if b then
        begin
          qryTozin.FieldByName('ReciptID').AsString := Results[0];

          if Results[20] = '0' then
            qryTozin.FieldByName('UseUnitID').AsString := Results[5];

          qryTozin.FieldByName('RelatedRecipts').AsString := Results[1];

          qryTozin.FieldByName('ParentReciptItemID').AsString := Results[2];
          qryTozin.FieldByName('MasirID').AsString := Results[3];
          qryTozin.FieldByName('SecondType').AsString := Results[4];

          qryTozin.FieldByName('StuffCode').AsString := Results[9];
          qryTozin.FieldByName('StoreID').AsString := Results[11];
          if qryTozin.FieldByName('PersonID1').AsInteger = 0 then
            qryTozin.FieldByName('PersonID1').AsString := Results[12];

          qryTozin.FieldByName('PrvYearID').AsString := Results[23];

        end;

        // except
        // on E: Exception do
        // Warn('جستجوی فانکشن Fn_RelatedReciptItemsTozin1 با توجه به نحوه فراخواني اطلاعات  یا '
        // + #13#10 + E.Message);
        // end;
      end;

  else
    begin
      if grpStoreID2.Visible then
      begin
        I1 := 30;
        I2 := 50;
        C1 := 'کدانبار2';
        C2 := 'انبار2';
      end
      else
      begin
        I1 := 0;
        I2 := 0;
        C1 := '';
        C2 := '';
      end;
      b := searchCode_ADOF.SearchCode2(DmF.adcBSell, ' فرم ها  ',
        ' SELECT Fn_R.ReciptID,Fn_R.RelatedNo,Fn_R.ReciptItemID, Fn_R.ReciptNumber,'
        + ' Fn_R.ReciptDate, Fn_R.StuffCode,StuffCoding.c_StuffName,' +
        '  Fn_R.StoreID,Fn_R.StoreID2 , Fn_R.StoreName2 , Fn_R.PersonID1, Fn_R.CustName, '
        + ' PersonID2 , CustName2 , Fn_R.entity,' +
        ' Fn_R.MachineFullWeight, Fn_R.UseAbleWeight, Fn_R.CostOfStorage,YearID,SecondType'
        + ' FROM dbo.Fn_RelatedReciptItemsTozin(' + FFormType.ToString + ',' +
        User.ID.ToString + ',' + IfThen(User.PowerUser, '1', '0') +
        ') AS Fn_R INNER JOIN' +
        ' StuffCoding ON Fn_R.StuffCode = StuffCoding.c_StuffCode' +
        '	WHERE (Entity - isnull(MachineFullWeight ,0) > 0 )',
        ['', '', '', 'شماره حواله', 'تاریخ حواله', 'کدکالا', 'شرح کالا',
        'انبار', C1, C2, 'کدخریدار', 'خریدار', 'کدباربری', 'باربری',
        opt.EntityCaption, 'وزن بارگیری شده', 'وزن باقیمانده',
        'هزینه انبار داری', ''], Results, [0, 0, 0, 50, 80, 50, 80, 50, I1, I2,
        50, 100, 50, 100, 100, 100, 100, 100, 0], alLeft);
      if b then
      begin
        qryTozin.FieldByName('StuffCode').AsString := Results[5];
        qryTozin.FieldByName('ReciptID').AsString := Results[0];
        qryTozin.FieldByName('RelatedRecipts').AsString := Results[1];
        qryTozin.FieldByName('ParentReciptItemID').AsString := Results[2];
        qryTozin.FieldByName('StoreID').AsString := Results[7];
        if grpStoreID2.Visible then
          qryTozin.FieldByName('StoreID2').AsString := Results[8];
        // qryTozin.FieldByName('PersonID1').AsString := Results[10];
        qryTozin.FieldByName('PersonID1').AsString := Results[12];
        qryTozin.FieldByName('PrvYearID').AsString := Results[18];
        qryTozin.FieldByName('SecondType').AsString := Results[19];

      end;

    end;
  end;

end;

// procedure TGetTozinF.InitCombo;
// begin
// cmbReciptType.Clear;
// with TADOQuery.Create(nil) do
// try
// Connection := DmF.adcBSell;
// SQL.Text :=
// 'SELECT ReciptType, ReciptCaption FROM ReciptTypes WHERE (EffectType IN (2, 4))';
// Open;
// while not eof do
// begin
// cmbReciptType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
// Next;
// end;
// finally
// Free;
// end;

// end;
function TGetTozinF.AnprCreate(ainstance: Byte; aPer_plate_license: Byte;
  aseccurity_code: WideString; alog_level: Byte; acfg_file: PWideChar): Int16;
var
  anpr_create: Tanpr_create;
begin
  Hbar := LoadLibrary('ANPR.dll');
  if Hbar >= 32 then { success }
  begin
    anpr_create := GetProcAddress(Hbar, 'anpr_create');
    anpr_create(ainstance, aPer_plate_license, aseccurity_code, alog_level,
      acfg_file);

  end
  else
    MessageDlg('Error: could not find ANPR.DLL', mtError, [mbOk], 0)

end;

procedure TGetTozinF.anprabout();
var
  anpr_about: Tanpr_about;
begin
  if Hbar >= 32 then { success }
  begin
    anpr_about := GetProcAddress(Hbar, 'anpr_about');
    anpr_about();

  end
  else
    MessageDlg('Error: could not find ANPR.DLL', mtError, [mbOk], 0);

end;

procedure TGetTozinF.anpr_get_en_result(result_fa: PWideChar;
  result_en: PWideChar);
var
  anpr_get_en_result: Tanpr_get_en_result;
begin
  if Hbar >= 32 then { success }
  begin
    anpr_get_en_result := GetProcAddress(Hbar, 'anpr_get_en_result');
    anpr_get_en_result(result_fa, result_en);

  end
  else
    MessageDlg('Error: could not find ANPR.DLL', mtError, [mbOk], 0);

end;

function TGetTozinF.anpr_recognize_buffer(instance: Byte; buffer: PAnsiChar;
  W: Integer; H: Integer; step: Integer; aresult: PWideChar; pcnf: PSingle;
  prc: PRect): Int16;
var
  anpr_recognize_buffer: Tanpr_recognize_buffer;
begin
  if Hbar >= 32 then { success }
  begin
    anpr_recognize_buffer := GetProcAddress(Hbar, 'anpr_recognize_buffer');
    result := anpr_recognize_buffer(instance, buffer, W, H, step, aresult,
      pcnf, prc);
    // FreeLibrary(Hbar);
  end
  else
    MessageDlg('Error: could not find ANPR.DLL', mtError, [mbOk], 0)
end;

procedure TGetTozinF.PlaqueReader_;
var
  t: TThread;
begin
  actPlaque.Visible := opt.PlaqueReaderActive;
  imgPlaqueReader.Visible := opt.PlaqueReaderActive;
  if opt.PlaqueReaderActive then
  begin
    // frmPlaqueReader1 := TfrmPlaqueReader.Create(Self);
    actPlaque.Visible := True;
    actPlaque.Enabled := False;
    t := TThread.CreateAnonymousThread(
      procedure()

      begin

        TThread.Synchronize(TThread.CurrentThread,
          procedure()
          begin
            AnprCreate(0, 0, 'www.shahaab-co.com 02331099', 1, NIL);
            /// www.farsiocr.ir 09361392929
            vc1.VideoSource := vs_VideoCaptureDevice;
            vc1.VideoDevice := 0;
            if opt.IPCameraURL <> EmptyStr then
            begin

              vc1.IPCameraURL := opt.IPCameraURL;
              vc1.VideoSource := vs_IPCamera;

            end;
            vc1.StartPreview;
          end);

      end);
    t.FreeOnTerminate := True;
    t.OnTerminate := OnTerminatePlaqueReader;
    t.Start;

  end;

end;

procedure TGetTozinF.FormCreate(Sender: TObject);
var
  b, A: Boolean;
  StoreKindList: String;
  qry: TADOQuery;
begin
  inherited;

  PlaqueReader_;

  FFormType := var_glb_gParam;
  lblTopic0.Hint := FFormType.ToString;
  // ---- CASE WHEN MoistureContent + RisingUseful + RisingNonUseFul <> 0     THEN (100 - (MoistureContent + RisingUseful + RisingNonUseFul)) ELSE 0 END
  actEdit.Visible := (CurAccess and Integer(akedit) <> 0);
  actManualInsert.Visible := (CurAccess and Integer(akManualInsert) <> 0);
  UpDown1.Visible := actManualInsert.Visible;
  FcallanotherForm := False;
  getresponseShow := True;
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := FFormType;
    Active := True;
    RestartStore := FieldByName('RestartFormNumberOnStore').AsInteger
      in [0, 1, 4];
    ConversionCoSerial := FieldByName('ConversionCoSerial').AsInteger;
    CorrelateReciptType := FieldByName('CorrelateReciptType').AsInteger;
    // عنوان فرم مرتبط
    Active := False;
    Parameters.ParamByName('ReciptType').Value := CorrelateReciptType;
    Active := True;
    actCorrelateRecipt.Visible := CorrelateReciptType > 0;
    actCorrelateRecipt.Caption := FieldByName('ReciptCaption').AsString;
    btnCorrelateRecipt1.Hint := actCorrelateRecipt.Caption;
    // عنوان فرم مرتبط
    // عنوان فرم ضرائب
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ConversionCoSerial;
    Active := True;
    actConversionCoSerial.Visible := ConversionCoSerial > 0;
    actConversionCoSerial.Caption := FieldByName('ReciptCaption').AsString;
    btnConversionCoSerial.Hint := actConversionCoSerial.Caption;
    // عنوان فرم ضرائب

    Active := False;
    Parameters.ParamByName('ReciptType').Value := FFormType;
    Active := True;

    b := CheckUserlevel(FieldByName('TransmittalLevelID'), nil, False);
    edtTozinNumber.ReadOnly := b and
      (FieldByName('EditReciptNumberActive').AsInteger <> 1);
    edtTozinNumber.TabStop := not edtTozinNumber.ReadOnly;

    ShowNotEntityOnSearch := FieldByName('ShowNotEntityOnSearch').AsLargeInt;
    RecuestActive := FieldByName('RecuestActive').AsLargeInt;
    Settings := qryinit.FieldByName('Settings').AsLargeInt;

    RecallType := qryinit.FieldByName('RecallType').AsInteger;

    pnlMachineEntity.Visible :=
      (RecuestActive and Integer(CHKMachineEntity)) <> 0;

    TsStuff := TStringList.Create;
    TsStuff.Text := FieldByName('FormSignature').AsString;

    Caption := FieldByName('ReciptCaption').AsString;
    lblTopic0.Caption := FieldByName('ReciptCaption').AsString;
    grpCustomer2.Visible := FieldByName('Person2Active').AsInteger = 1;
    grpCustomer2.Caption := FieldByName('Person2Caption').AsString;
    qryTozinPersonID2.DisplayLabel := grpCustomer2.Caption;
    qryTozin_CustName2.Required := grpCustomer2.Visible;
    actCustomerGrpID4Add2Customers2.Caption := 'اضافه كردن ' +
      grpCustomer2.Caption;

    grpDriver.Caption := FieldByName('Person1Caption').AsString;
    qryTozinPersonID1.DisplayLabel := grpDriver.Caption;
    actCustomerGrpID4Add2Customers1.Caption := 'اضافه كردن ' +
      grpDriver.Caption;

    grpPerson5.Visible := FieldByName('Person5Active').AsInteger = 1;
    grpPerson5.Caption := FieldByName('Person5Caption').AsString;
    qryTozinPersonID5.DisplayLabel := grpPerson5.Caption;
    qryTozin_CustName5.Required := grpPerson5.Visible;

    grpPerson4.Visible := FieldByName('Person4Active').AsInteger = 1;
    grpPerson4.Caption := FieldByName('Person4Caption').AsString;
    qryTozinPersonID4.DisplayLabel := grpPerson4.Caption;
    // actCustomerGrpID4Add2Customers4.Caption := 'اضافه كردن ' +      grpPerson4.Caption;
    qryTozin_CustName4.Required := grpPerson4.Visible;

    grpPerson3.Visible := FieldByName('Person3Active').AsInteger = 1;
    grpPerson3.Caption := FieldByName('Person3Caption').AsString;
    qryTozinPersonID3.DisplayLabel := grpPerson3.Caption;
    actCustomerGrpID4Add2Customers3.Caption := 'اضافه كردن ' +
      grpPerson3.Caption;

    qryTozin_CustName3.Required := grpPerson3.Visible;

    grpDriver.Visible := FieldByName('Person1Active').AsInteger = 1;
    qryTozin_CustName.Required := grpDriver.Visible;

    grpRelatedRecipts.Visible := SetRelatedReciptTypes(qryinit, nil);
    pnlRelatedRecipts.Visible := grpRelatedRecipts.Visible;

    qryTozinRelatedRecipts.Required := grpRelatedRecipts.Visible;

    FCorrelateReciptType := FieldByName('CorrelateReciptType').AsInteger;
    FCorrelateKind := FieldByName('CorrelateKind').AsInteger;
    FormOutput := FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
    // actCorrelateRecipt.Enabled := FieldByName('CorrelateKind').AsInteger > 0;
    initReportName(qryinit, PopMuPrint, mnu4allClick);

    edtEnterDate.ReadOnly :=
      not((ShowNotEntityOnSearch and Integer(chkEditTime)) <> 0);
    edtExitDate.ReadOnly := edtEnterDate.ReadOnly;

    dbrgrpDirectDownload.Visible :=
      (ShowNotEntityOnSearch and Integer(CHKCalcCostStorage)) <> 0;

    if (ShowNotEntityOnSearch and Integer(CHKNumberOfBags)) <> 0 then
      lblNumberOfBags.Caption := 'حجم';

    rgpWeightKind.ReadOnly := FieldByName('EffectType').AsInteger <> 8;

    CedarDbgrid1.SetFooter4Sum([]);
    CedarDbgrid1.HorzScrollBar.ExtraPanel.Visible := False;

    // <  محل مصرف >
    LblUseUnitM.Caption := FieldByName('UseUnitCaseCaption').AsString;
    PnlUseUnitM.Visible := (FieldByName('UseUnitCase').AsInteger in [3, 1]);
    qryTozin.FieldByName('UseUnitID').Required := PnlUseUnitM.Visible;
    qryTozin.FieldByName('UseUnitID').DisplayLabel := 'کد ' +
      LblUseUnitM.Caption;
    qryTozin.FieldByName('_UseUnitName').Required := PnlUseUnitM.Visible;
    qryTozin.FieldByName('_UseUnitName').DisplayLabel := LblUseUnitM.Caption;
    if not PnlUseUnitM.Visible then
    begin
      qryTozin.FieldByName('_UseUnitName').Free;
      DBTextUseUnitID_M.Free;
    end;
    // <  محل مصرف >

    PnlSecondType.Visible := FieldByName('SecondTypeActive').AsInteger
      in [1, 3];
    qryTozin.FieldByName('SecondType').Required := PnlSecondType.Visible;

    pnUseUnitSecondType.Visible := PnlUseUnitM.Visible or PnlSecondType.Visible;

    if PnlSecondType.Visible { or PnlArzActive.Visible or SecondTypeItemActive }
    then
      InitDBCombos;

    b := FieldByName('MasirActive').AsInteger = 1;
    grpMasir.Visible := b;
    qryTozinMasirID.Required := b;
    if b then
    begin
      qryAddressInMasir := TADOQuery.Create(GetTozinF);
      With qryAddressInMasir do
      begin
        Name := 'qryAddressInMasir';
        Connection := DmF.adcBSell;
        SQL.Text := 'SELECT CustomersMasir.ID, ';
        SQL.Add('AddressInMasir.MasirText + '' '' + CustomersMasir.MasirNote AS MasirTextNote');
        SQL.Add('FROM CustomersMasir INNER JOIN');
        SQL.Add('AddressInMasir ON CustomersMasir.MasirID = AddressInMasir.MasirID');
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryTozin) do
      begin
        FieldName := '_MasirID';
        FieldKind := fkLookup;
        DataSet := qryTozin;
        Name := 'qryTozin' + FieldName;
        KeyFields := 'MasirID';
        LookupDataSet := qryAddressInMasir;
        LookUpKeyFields := 'ID';
        LookupResultField := 'MasirTextNote';
        Size := 500;
        qryTozin.FieldDefs.Add(Name, ftString, 500, True);
        edt_MasirID.DataField := FieldName;
      end;
    end;

    // < 2 كد انبار فعال >
    grpStoreID2.Visible := FieldByName('Store2Active').AsInteger > 0;

    grpStoreID2.Caption := 'كد ' + FieldByName('Store2Caption').AsString;
    qryTozin.FieldByName('StoreID2').Required := grpStoreID2.Visible;
    qryTozin.FieldByName('StoreID2').DisplayLabel := 'كد ' +
      FieldByName('Store2Caption').AsString;

    qryTozin.FieldByName('_StoresName2').Required := grpStoreID2.Visible;
    qryTozin.FieldByName('_StoresName2').DisplayLabel := 'نام ' +
      grpStoreID2.Caption;
    if not grpStoreID2.Visible then
    begin
      qryTozin.FieldByName('_StoresName2').Free;
      edt_StoresName2.Free;
    end;

    RoundCount := FieldByName('RoundCount').AsInteger;

    PnlAidInfoMaster.Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];

    // if LblAidInfoNo.Caption = 'شماره ' then
    LblAidInfoNo.Caption := // LblAidInfoNo.Caption + ' ' +
      FieldByName('AidInfoCaptionNo').AsString;
    edtAidNumber.Visible := LblAidInfoNo.Caption <> EmptyStr;
    // if LblAidInfoDate.Caption = 'تاريخ ' then
    LblAidInfoDate.Caption := // LblAidInfoDate.Caption + ' ' +
      FieldByName('AidInfoCaption').AsString;
    edtAidDate.Visible := LblAidInfoDate.Caption <> EmptyStr;

    grpWet.Visible := FieldByName('WetActive').AsInteger = 1;

    qryTozin_StuffName.Required := FieldByName('UnicCodeCheck').AsInteger = 1;

    b := FieldByName('SellsMethodActive').AsInteger = 1;
    pnlSellsMethod.Visible := b;
    if b then
    begin
      With qry do
      begin
        qry := TADOQuery.Create(Self);
        Name := 'qrySellsMethods';
        Connection := DmF.adcBSell;
        SQL.Text :=
          'SELECT SellsMethod,SellsMethodName,SellAmount FROM SellsMethods';
        LockType := ltReadOnly;
        Active := True;
      end;
      with TStringField.Create(qryTozin) do
      begin
        FieldName := '_SellsMethod';
        FieldKind := fkLookup;
        DataSet := qryTozin;
        Name := 'qryTozin' + FieldName;
        KeyFields := 'SellsMethod';
        LookupDataSet := qry;
        LookUpKeyFields := 'SellsMethod';
        LookupResultField := 'SellsMethodName';
        Size := 100;
        DisplayLabel := 'نحوه فروش';
        Required := True;
        qryTozin.FieldDefs.Add(Name, ftString, 100, True);
        dblkcbb_SellsMethod.DataField := FieldName;
      end;
      with TFloatField.Create(qryTozin) do
      begin
        FieldName := '_SellAmount';
        FieldKind := fkLookup;
        DataSet := qryTozin;
        Name := 'qryTozin' + FieldName;
        KeyFields := 'SellsMethod';
        LookupDataSet := qry;
        LookUpKeyFields := 'SellsMethod';
        LookupResultField := 'SellAmount';
        qryTozin.FieldDefs.Add(Name, ftFloat, 0, True);
        qryTozinSellsMethod.OnChange := qryTozin_SellAmountChange;
      end;
    end;

    pnlTruckNumber.Visible := FieldByName('MachineActive').AsInteger in [1, 3];
    pnlTruckNumber_SellsMethod.Visible := pnlTruckNumber.Visible or
      pnlSellsMethod.Visible;

    // دسترسی منو های تغییر وضعیت ================
    A := (CurAccess and Integer(akChangeState) <> 0);

    btnState3.Visible := CheckUserlevel(FieldByName('State3ChangeLevelID'),
      qryTozin, False) and A;

    lblPO.Caption := opt.POCaption;
    pnlPO.Visible := opt.POActive;

  end;
  with qryStore do
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
    Parameters.ParamByName('UserID').Value := User.ID;
    Parameters.ParamByName('UserAdmin').Value := IfThen(User.PowerUser, 1, 0);
  end; // with

  SetLookUpCash(qryTozin);
  // InitCombo;
  InfoWeight := (ShowNotEntityOnSearch and Integer(CHKInfoWeight)) <> 0;

  qryRelatedRecipts.SQL.Text := 'SELECT *';

  case RecallType of
    1:
      begin
        rgpWeightKind.ItemIndex := 0;
        qryRelatedRecipts.SQL.Add
          ('FROM dbo.Fn_RelatedReciptItemsTozin1( :ReciptType ,' +
          User.ID.ToString + ',' + IfThen(User.PowerUser, '1', '0') +
          ', CONVERT(DateTime, :ExitDateM ) )');

      end;
  else
    begin
      qryRelatedRecipts.SQL.Add
        ('FROM dbo.Fn_RelatedReciptItemsTozin( :ReciptType ,' + User.ID.ToString
        + ',' + IfThen(User.PowerUser, '1', '0') + ')');

    end;
  end;

  //
  // if InfoWeight then
  // begin
  // end
  // else
  // begin
  // end;
  qryRelatedRecipts.SQL.Add
    ('WHERE (ReciptID = :ReciptID ) AND (RelatedNo = :RelatedNo )');
  qryRelatedRecipts.Parameters.ParamByName('ReciptType').Value := FFormType;

  With qryTozin do
  begin
    Active := False;

    IF RestartStore THEN
    begin
      // 2
      // if (FilterShow) then
      SelectStoreF.GetStore(myStore, qryinit.FieldByName('StoreCaption')
        .AsString, qryinit.FieldByName('StoreKindList').AsString,
        MyEntityDisplayType);

      edtStoreID.Enabled := False;
      spdStoreID.Enabled := False;
    end;
    qryTozin.Parameters.ParamByName('TozinDate').Value := APPBank.StartYear;
    qryTozin.Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    qryTozin.Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    qryTozin.Parameters.ParamByName('ReciptType').Value := FFormType;
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
    qryTozin.Open;
    qryTozin.Last;

  end;

  // optPort.ComPortKind := 2;
  try
    // FComPort := CreateComPort();
    CreateComPort(True);
    if Assigned(CmPack) then
      CmPack.OnWeight := DOWeigh;
    // Timer1.Enabled := False;
  except
    Warn2('!اشکال در ارتباط با باسکول');
    // Timer1.Enabled := False;
  end;
  Entity_Weight(CedarDbgrid1);

  if grpNote.Height > 108 then
  begin
    pnlAll.Height := pnlAll.Height - (grpNote.Height - 108);
  end;
  if pnlWeight.Height > 72 then
  begin
    Height := Height - ((pnlWeight.Height - 72));
  end;

end;

procedure TGetTozinF.InitDBCombos;
var
  Kind: Integer;
begin
  CmbSecondType.Clear;
  Kind := qryinit.FieldByName('FormKindSerial').AsInteger;
  if Kind <> 0 then
    with qryLookUps do
    begin
      Active := False;
      SQL.Text := 'SELECT LookUpID,Name,Amount1 ';
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
end;

procedure TGetTozinF.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
  begin
    try
      qryTozin.DisableControls;
      InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
    finally
      qryTozin.EnableControls;
    end;
  end;
end;

procedure TGetTozinF.FormDestroy(Sender: TObject);
begin
  inherited;
  qryAddressInMasir.Free;
  TsStuff.Free;
  FreeComPort;
  if Hbar > 32 then
    FreeLibrary(Hbar);
  // frmPlaqueReader1.Destroy;

  FreeMyComponent(Self, ['qrySellsMethods']);
end;

procedure TGetTozinF.qryTozinRelatedReciptsChange(Sender: TField);
begin
  inherited;
  qryTozinAfterScroll(qryTozin);
  With DmF.qryTmpTmp do
    try
      Active := False;
      SQL.Text := 'SELECT TOP (1) WeightKind, DirectDownload,UseUnitID';
      SQL.Add('FROM Tozin');
      SQL.Add('WHERE (RelatedRecipts = :RelatedRecipts )');
      SQL.Add('ORDER BY TozinID DESC');
      Parameters.ParamByName('RelatedRecipts').Value := Sender.AsString;
      Active := True;
      qryTozinWeightKind.AsInteger := FieldByName('WeightKind').AsInteger;
      qryTozinDirectDownload.AsInteger := FieldByName('DirectDownload')
        .AsInteger;
      if FieldByName('UseUnitID').AsInteger > 0 then
        qryTozinUseUnitID.AsInteger := FieldByName('UseUnitID').AsInteger;
    finally
      Active := False;
    end;
end;

procedure TGetTozinF.GetTozinNumber;
var
  txt: String;
begin
  with qryinit do
  begin
    if (FieldByName('ReciptNumberOfType').AsString <> EmptyStr) and
      (FieldByName('ReciptNumberOfType').AsString <> '0') then
      txt := 'SELECT MAX(TozinNumber)FROM Tozin WHERE(ReciptType in(' +
        FieldByName('ReciptNumberOfType').AsString + ',' +
        FieldByName('ReciptType').AsString + '))'
    else
      txt := 'SELECT MAX(TozinNumber)FROM Tozin WHERE(ReciptType=' +
        FieldByName('ReciptType').AsString + ')';

    txt := txt + ' AND yearid=' + IntToStr(APPBank.Year);
    txt := txt + GetSqlOnRestartFormNumberOnStore(qryinit, myStore, qryTozin);

    qryTozinTozinNumber.AsInteger :=
      GetANewCode('GetTozin' + FFormType.ToString, txt, 'TozinNumber');
  end;
end;

procedure TGetTozinF.qryTozinAfterInsert(DataSet: TDataSet);

begin
  inherited;
  if RestartStore THEN
    DataSet.FieldByName('StoreID').AsInteger := myStore.code;
  if InfoWeight then
    qryTozinWeightKind.AsInteger := 0
  else
  begin
    if qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8] then
    begin
      qryTozinWeightKind.AsInteger := 0
    end
    else
    begin
      qryTozinWeightKind.AsInteger := 1;
    end;
  end;

  qryTozinReciptType.AsInteger := FFormType;
  qryTozinIsSystem.AsBoolean := True;
  qryTozinTozinID.AsInteger := GetANewCode('GetTozin' + FFormType.ToString,
    'Tozin', 'TozinID');
  qryTozinServerID.AsInteger := opt.ServerID;
  qryTozinYearID.AsInteger := APPBank.Year;
  if (qryinit.FieldByName('ReciptNumberEventKind').AsInteger = 0) then
  begin
    FreeReservedCodes(DmF.adcBSell, 'Tozin', 'TozinNumber',
      'GetTozin' + FFormType.ToString);
    GetTozinNumber;
  end;
  qryTozinTozinDate.AsString := var_glb_CurrentDate;
  qryTozinEnterDate.AsDateTime := NowFormServer;
  // qryTozinExitDate.AsVariant := Null;
  // edtExitTime.Text := '';
  qryTozinMoistureContent.AsInteger := 0;
  qryTozinRisingUseful.AsInteger := 0;
  qryTozinRisingNonUseFul.AsInteger := 0;
  qryTozinPersonID1.AsInteger := 0;
  qryTozinPersonID2.AsInteger := 0;
  qryTozinStoreID.AsInteger := qryTozinStoreID.Tag;
  qryTozinStuffCode.AsLargeInt := 0; // qryTozinStuffCode.Origin.ToInt64;
  if grpPerson3.Visible then
    edtPersonID3.SetFocus;

  DataSet.FieldByName('FirstUser').AsString := User.Name;



  // if not Timer1.Enabled then
  // btnWeight.Click

end;

// function TGetTozinF.ReadFromTxt: String;
// var
// flPath: String;
// F1: TextFile;
// begin
// Result := EmptyStr;
// flPath := DmF.ReadBankConfig('FileInputPath');
// if FileExists(flPath) then
// try
// AssignFile(F1, flPath);
// Reset(F1);
// Read(F1, Result)
// finally
// CloseFile(F1)
// end;
// end;

procedure TGetTozinF.rgpWeightKindClick(Sender: TObject);
// var
// s: String;
begin
  inherited;
  // s := Trim(FloatToStr(FWeight));
  if InfoWeight then
  begin
    if FWeight <> 0 then
      qryTozin.FieldByName('MachineFullWeight').AsFloat := FWeight
  end
  else
    with qryTozin do
    begin
      if not((Settings and Integer(CHkFillingCustomerWeight)) <> 0) then
        if State in [dsInsert] then
        begin
          FieldByName('MachineFullWeight').AsFloat := 0;
          FieldByName('MachineWeight').AsFloat := 0;
        End;
      if FWeight <> 0 then
        case rgpWeightKind.ItemIndex of
          0:

            begin

              if FieldByName('MachineWeight').AsFloat = 0 then
                FieldByName('MachineWeight').AsFloat := FWeight
              else
                FieldByName('MachineFullWeight').AsFloat := FWeight;

            end;
          1:
            begin
              if FieldByName('MachineFullWeight').AsFloat = 0 then
                FieldByName('MachineFullWeight').AsFloat := FWeight
              else
                FieldByName('MachineWeight').AsFloat := FWeight;
            end;
        end;
    end;
end;

procedure TGetTozinF.SetMachineWeight;
begin

end;

procedure TGetTozinF.actSearchExecute(Sender: TObject);
var
  txt: String;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := 'select TozinID ,TozinNumber,TozinDate,MachineNo,MachineName from tozin ';
  if rgpWeightKind.ItemIndex = 1 then
    txt := txt + ' WHERE (MachineFullWeight > 0) and (MachineWeight = 0) '
  else
    txt := txt + ' WHERE (MachineFullWeight = 0) and (MachineWeight > 0) ';
  txt := txt + Format('AND (TozinState <> 3) AND(ReciptType = %d)',
    [FFormType]);
  if searchCode_ADOF.SearchCode2(DmF.adcBSell, ' كالاها  ', txt,
    ['', 'شماره', 'تاريخ', 'شماره ماشين', 'نام ماشين'], Results,
    [0, 50, 100, 100, 100], alLeft) then
  begin
    qryTozin.Locate('TozinID', Results[0], []);
    if not(qryTozin.State in dsEditModes) then
    begin
      qryTozin.edit;
      if rgpWeightKind.ItemIndex = 0 then
      begin
        edtFullweight.SetFocus;
        edtFullweight.ReadOnly := True; // False
        edtMachineWeight.ReadOnly := True;
      end
      else
      begin
        edtMachineWeight.SetFocus;
        edtMachineWeight.ReadOnly := True; // False;
        edtFullweight.ReadOnly := True;
      end;

    end;
  end;
end;

procedure TGetTozinF.actSplitTozinExecute(Sender: TObject);
var
  NewWeight, MachineFullWeight, MachineWeight: real;
  StrWeight: string;
begin
  inherited;
  ChkTozinState(qryTozin);
  if get_response('آيا براي تقسیم توزین مطمئن هستيد؟') = mrYes then
    try
      MachineFullWeight := qryTozinMachineFullWeight.AsFloat;
      MachineWeight := qryTozinMachineWeight.AsFloat;
      NewWeight := MachineFullWeight - MachineWeight;
      StrWeight := FloatToStr(NewWeight);
      StrWeight := get_box('وزن', 'وزن در خواستي را وارد كنيد.', StrWeight);
      if StrWeight = EmptyStr then
        exit;
      NewWeight := StrToFloat(StrWeight);

      if NewWeight < MachineFullWeight - MachineWeight then
        with qryTozin do
        begin
          if not(State in dsEditModes) then
          begin
            edit;
            qryTozinMachineFullWeight.AsFloat := MachineWeight + NewWeight;
            Post;
            with qryOldTozin do
            begin
              Close;
              Parameters.ParamByName('TozinID').Value :=
                qryTozinTozinID.AsInteger;
              Open;
            end;
            Insert;
            qryTozinPrvTozinID.AsInteger := qryOldTozinTozinID.AsInteger;
            qryTozinPersonID1.AsInteger := qryOldTozinPersonID1.AsInteger;
            qryTozinPersonID2.AsInteger := qryOldTozinPersonID2.AsInteger;
            qryTozinPersonID3.AsInteger := qryOldTozinPersonID3.AsInteger;
            qryTozinStoreID.AsInteger := qryOldTozinStoreID.AsInteger;
            qryTozinStuffCode.AsLargeInt := qryOldTozinStuffCode.AsLargeInt;
            qryTozinMachineFullWeight.AsFloat := MachineFullWeight - NewWeight;
            qryTozinMachineWeight.AsFloat := MachineWeight;
            qryTozinMachineNo.AsString := qryOldTozinMachineNo.AsString;
            qryTozinMachineName.AsString := qryOldTozinMachineName.AsString;
            qryTozinTozinNote.AsString := qryOldTozinTozinNote.AsString;
            Post;
          end;
        end;
    finally
    end;

end;

procedure TGetTozinF.qryTozinEnterDateGetText(Sender: TField; var Text: String;
DisplayText: Boolean);
begin
  inherited;
  Text := miladi2Shamsi(Sender.AsDateTime);
  // edtEnterTime.Text := FormatDateTime('HH:mm', Sender.AsDateTime);
end;

procedure TGetTozinF.qryTozinExitDateGetText(Sender: TField; var Text: String;
DisplayText: Boolean);

begin
  inherited;
  if Sender.AsString <> '' then
  begin
    Text := miladi2Shamsi(Sender.AsDateTime);
    // edtExitTime.Text := FormatDateTime('HH:mm', Sender.AsDateTime)
  end;
end;

procedure TGetTozinF.qryTozinAfterEdit(DataSet: TDataSet);
begin
  inherited;
  // if qryTozinMachineWeight.AsFloat = 0 then
  // rgpWeightKind.ItemIndex := 0
  // else
  // rgpWeightKind.ItemIndex := 1;
  DataSet.FieldByName('LastUser').AsString := User.Name;

  if qryTozinExitDate.IsNull then
    qryTozinExitDate.AsDateTime := NowFormServer;
end;

procedure TGetTozinF.qryTozinAfterPost(DataSet: TDataSet);
var
  ReciptID: Integer;

begin
  inherited;
  ReciptID := 0;
  // actRecipts11.Execute;
  // 2-1) اگر نوع وزن بر روی بارگیری بود و وزن خالی پر شود
  // درخواست ثبت فرم مرتبط 1 داده شود
  // 2-2) اگر نوع وزن بر روی بارگیری بود و وزن پر پر شود
  // درخواست ثبت فرم مرتبط 2 داده شود
  // 2-3)اگر نوع وزن بر روی تخلیه بود و وزن خالی پر شود
  // درخواست ثبت فرم مرتبط 1 داده شود
  case rgpWeightKind.ItemIndex of
    0:
      begin
        if (qryTozinMachineWeight.AsInteger > 0) and
          (qryTozinMachineFullWeight.AsInteger = 0) then
          actCorrelateRecipt.Execute
        else if (qryTozinMachineWeight.AsInteger > 0) and
          (qryTozinMachineFullWeight.AsInteger > 0) then
        begin
          if qryinit.FieldByName('AutoCorrelate').AsInteger = 1 then
            if ConversionCoSerial <> 0 then
              actConversionCoSerial.Execute
            else
              TozinCorrelateRecipt2(Self, qryinit, qryTozin, qryLicense,
                actCorrelateRecipt.Caption, StrToFloat(edtMandeh.Text), False,
                False, ReciptID)
        end;
      end
  else
    if (CorrelateReciptType > 0) and (qryTozinMachineWeight.AsInteger > 0) then
      actCorrelateRecipt.Execute
  end;
  /// Locate for update Mandeh
  qryTozinRequery;
  /// Locate for update Mandeh
  ///
  // UpDown1.Position := 0;
  BigMessage('ثبت شد.', 1);
end;

procedure TGetTozinF.qryTozinRequery;
var
  TozinID: Integer;
begin
  TozinID := qryTozinTozinID.AsInteger;
  qryTozin.Requery();
  qryTozin.Locate('TozinID', TozinID, []);
end;

procedure TGetTozinF.qryTozin_SellAmountChange(Sender: TField);
begin
  inherited;
  if qryTozin.FieldByName('_SellAmount').AsFloat <> 0 then
    qryTozinAidNumber.AsString := qryTozin.FieldByName('_SellAmount').AsString
end;

procedure TGetTozinF.qryTozinSecondTypeChange(Sender: TField);
begin
  inherited;
  if ((Settings and Integer(CHkFillingAidNumberAmount1)) <> 0) then
    if qryLookUps.Locate('LookUpID', Sender.AsInteger, []) then
      if qryLookUps.FieldByName('Amount1').AsFloat <> 0 then
        qryTozinAidNumber.AsString := qryLookUps.FieldByName('Amount1').AsString
end;

procedure TGetTozinF.qryTozinStoreIDChange(Sender: TField);
begin
  inherited;
  myStore.code := Sender.AsInteger;
  if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger = 1 then
  begin
    FreeReservedCodes(DmF.adcBSell, 'Tozin', 'TozinNumber',
      'GetTozin' + FFormType.ToString);
    GetTozinNumber;
  end;

end;

procedure TGetTozinF.qryTozinStuffCodeChange(Sender: TField);
begin
  inherited;
  UseAbleWeightSetName;
  qryTozinMachineFullWeightChange(qryTozinMachineFullWeight)
end;

procedure TGetTozinF.UseAbleWeightSetName;
var
  Index: Integer;
begin
  if TsStuff.Find(qryTozinStuffCode.AsString, Index) then
  begin
    UseAbleWeightFldName := 'CostOfStorage';
    EntityFldName := 'Entity';
  end
  else
  begin
    UseAbleWeightFldName := 'UseAbleWeight';
    EntityFldName := 'Entity';
  end;
  edtUseAbleWeight.DataField := UseAbleWeightFldName;
end;

procedure TGetTozinF.vc1Click(Sender: TObject);
begin
  inherited;
  actCamera.Execute;
end;

procedure TGetTozinF.vc1MotionDetected(Sender: TObject;
GlobalMotionRatio: Double; MaxMotionCellX, MaxMotionCellY: Integer;
FrameBitmap: TBitmap; FrameNumber: Cardinal; FrameTime: Int64; FrameId: Integer;
var CaptureFrame: Boolean);
begin
  inherited;
  actCamera.Execute
end;

procedure TGetTozinF.qryTozinTozinStateGetText(Sender: TField; var Text: string;
DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

procedure TGetTozinF.qryTozinAfterScroll(DataSet: TDataSet);
var
  RelatedNo: string;
begin
  inherited;
  UseAbleWeightSetName;
  with qryLicense do
  begin
    Close;
    Parameters.ParamByName('TozinID').Value := qryTozinTozinID.AsInteger;
    Open;
  end;

  if FormOutput then
    with qryLicenseRpt do
    begin
      Close;
      Parameters.ParamByName('TozinID').Value := qryTozinTozinID.AsInteger;
      Open;
      CedarDbgrid1.Visible := RecordCount > 0;
    end;

  with qryRelatedRecipts do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := qryTozin.FieldByName('ReciptID')
      .AsInteger;
    RelatedNo := qryTozin.FieldByName('RelatedRecipts').AsString;
    if RelatedNo = EmptyStr then
      RelatedNo := '0';
    Parameters.ParamByName('RelatedNo').Value := RelatedNo;

    if Parameters.FindParam('ExitDatem') <> nil then
      Parameters.ParamByName('ExitDatem').Value := qryTozinExitDateM.AsDateTime;

    Active := True;
  end;

  with qryTozinsRelatedRecipts do
  begin
    Active := False;
    SQL.Text := 'SELECT ROW_NUMBER() OVER(ORDER BY TozinID) AS RowNumber';
    SQL.Add(', TozinID FROM Tozin');
    if grpRelatedRecipts.Visible then
    begin
      SQL.Add('WHERE (RelatedRecipts = :RelatedRecipts )');
      SQL.Add('ORDER BY TozinID');
      Parameters.ParamByName('RelatedRecipts').Value :=
        qryTozin.FieldByName('RelatedRecipts').AsString;
    end
    else
    begin
      SQL.Add('WHERE (TozinDate = :TozinDate )');
      SQL.Add('AND (ReciptType = :ReciptType ) ');
      SQL.Add('ORDER BY TozinDate');
      Parameters.ParamByName('TozinDate').Value :=
        qryTozin.FieldByName('TozinDate').AsString;
      Parameters.ParamByName('ReciptType').Value := FFormType;
    end;
    Active := True;
    if Locate('TozinID', qryTozinTozinID.AsInteger, []) then
      lblTozinID.Caption := Caption + ' ' + qryTozinsRelatedReciptsRowNumber.
        AsString + ' از ' + RecordCount.ToString
    else
      lblTozinID.Caption := EmptyStr;
  end;

  with qryRecipts do
  begin
    Close;
    Parameters.ParamByName('TozinID').Value := qryTozinTozinID.AsInteger;
    Parameters.ParamByName('YearID').Value := qryTozinYearID.AsInteger;
    Parameters.ParamByName('ServerID').Value := qryTozinServerID.AsInteger;
    Open;
  end;

  with qryPurchaseEffect do
  begin
    Active := False;
    Parameters.ParamByName('TozinID').Value := qryTozinTozinID.AsInteger;
    Parameters.ParamByName('ServerID').Value := qryTozinTozinID.AsInteger;
    Active := True;
  end;

  with qryTransFormItems do
  begin
    Close;
    Parameters.ParamByName('StuffCode').Value := qryTozinStuffCode.AsLargeInt;
    Open;
  end;

  with qryFn_EffectCross do
  begin
    Close;
    Parameters.ParamByName('StuffCode').Value := qryTozinStuffCode.AsLargeInt;
    // Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
    // .AsInteger;
    // Parameters.ParamByName('ServerID').Value := qryTozin.FieldByName('TozinID')
    // .AsInteger;
    Open;
  end;

end;

procedure TGetTozinF.qryTozinBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryTozin) then
    Abort;

  if qryTozinTozinState.AsInteger <> 0 then
  begin
    Warn('وضعیت اطلاعات قابل حذف نیست', mtInformation);
    Abort;
  end;

  with DmF.qryTmpTmp do
  begin
    Active := False;
    Active := False;
    SQL.Text := 'DECLARE @TozinID INT= %d ';
    SQL.Add('DECLARE @YearID INT= %d');
    SQL.Add('DECLARE @ServerID INT= %d');
    SQL.Add('SELECT ReciptNumber FROM(');
    SQL.Add('SELECT ''شماره فرم ''+LTRIM(ReciptNumber)+''تايپ '' ++LTRIM(ReciptType) AS ReciptNumber FROM Recipts');
    SQL.Add('WHERE (TozinID = @TozinID ) AND (YearID = @YearID) AND (ServerID = @ServerID)');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT ''شماره توزين ''+LTRIM(TozinNumber)+''تايپ '' ++LTRIM(ReciptType) FROM Tozin');
    SQL.Add('WHERE (PrvTozinID = @TozinID ) AND (YearID = @YearID) AND (ServerID = @ServerID))ABC');
    SQL.Text := Format(SQL.Text, [qryTozinTozinID.AsInteger,
      qryTozinYearID.AsInteger, qryTozinServerID.AsInteger]);
    Active := True;
    if not Fields[0].AsString.IsEmpty then
    begin
      Warn('از اين ' + qryinit.FieldByName('ReciptCaption').AsString + ' در ' +
        Fields[0].AsString + '  استفاده شده است و قابل حذف نيست.‏',
        mtInformation);
      Abort;
    end;
    Active := False;
  end;

  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort;

end;

procedure TGetTozinF.edtPersonID2KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
var
  Cn: TComponent;
begin
  inherited;
  if Key = 32 then
    if CtrlDown then
    begin
      if (Sender as TDBEdit).DataField = 'PersonID1' then
        actCustomerGrpID4Add2Customers1.Execute;
      if (Sender as TDBEdit).DataField = 'PersonID2' then
        actCustomerGrpID4Add2Customers2.Execute;
      if (Sender as TDBEdit).DataField = 'PersonID3' then
        actCustomerGrpID4Add2Customers3.Execute;
    end
    else
    begin
      Cn := FindComponent('spd' + (Sender as TDBEdit).DataField);
      if Key = 32 then
        if Assigned(Cn) then
          TSpeedButton(Cn).Click;
    end;
end;

procedure TGetTozinF.edtRelatedReciptsKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    spdRelatedRecipts.Click
end;

procedure TGetTozinF.edtStoreIDKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    spdStoreID.Click

end;

procedure TGetTozinF.edtStuffCodeKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    spdStuffCode.Click
end;

procedure TGetTozinF.mskWeightDblClick(Sender: TObject);
begin
  inherited;
  rgpWeightKindClick(rgpWeightKind)
end;

// procedure TGetTozinF.DOWeight(Sender: TObject; const Weight: real);
// begin
// FWeight := Weight;
// SendDebug(FloatToStr(Weight));
// lblWeight.Caption := CurrToStrF(Weight / 1, ffCurrency, 0);
// end;

procedure TGetTozinF.enter(const TozinID: Integer; ShowOnly: Boolean);
begin
  GetTozinF := TGetTozinF.Create(Application);
  with GetTozinF do
    try
      if ShowOnly then
      begin
        if not qryTozin.Locate('tozinId', TozinID, []) then
          Warn('یافت نشد.');
      end
      else
      begin
        if TozinID = 0 then
          qryTozin.Insert
        else
        begin
          if qryTozin.Locate('tozinId', TozinID, []) then
          begin
            qryTozin.edit;
            case rgpWeightKind.ItemIndex of
              0:
                qryTozin.FieldByName('MachineWeight').AsFloat := FWeight;
              1:
                qryTozin.FieldByName('MachineFullWeight').AsFloat := FWeight;
            end;
            edtFullweight.ReadOnly := False;
          end;
        end;
        btnClose.Cancel := True;
        FcallanotherForm := True;
        dbnvgr1.Visible := False;
      end;

      ShowModal;
    finally
      GetTozinF.Free;
    end;
end;

procedure TGetTozinF.qryTozinBeforePost(DataSet: TDataSet);
var
  Msg: string;
  Weight, WeightUp, WeightDown, VATRound: real;
  MachineFullWeight, MachineWeight: real;
begin
  inherited;

  if (qryTozin_StuffName.Required) and (qryTozinStuffCode.AsLargeInt = 0) then
  begin
    Warn('کد کالا وارد نشده');
    Abort;
  end;

  if (grpDriver.Visible) and (qryTozinPersonID1.AsLargeInt = 0) then
  begin
    Warn('کد ' + grpDriver.Caption + ' وارد نشده');
    Abort;
  end;

  if qryTozin_PostControl.AsInteger > 0 then
  begin
    Warn('برای این ' + grpCustomer2.Caption +
      ' در اطلاعات پایه کنترل ثبت تنظیم شده است');
    if qryTozin_PostControl.AsInteger > 1 then
      Abort;
  end;

  if not CheckRequiredFields(DataSet) then
    Abort;

  if (Settings and Integer(chkTozinUseAbleWeight)) <> 0 then
    if qryTozinNumberOfBags.AsFloat > qryRelatedRecipts.FieldByName
      (UseAbleWeightFldName).AsFloat then
    begin
      Warn('وزن مبدا از باقی مانده بیشتر میشود و قابل تایید نیست');
      Abort;
    end;

  if not InfoWeight then
  begin
    Msg := Format('وزن پر   %f ' + #13 + 'وزن خالي  %f' + #13 + 'وزن خالص  %s',
      [DataSet.FieldByName('MachineFullWeight').AsFloat,
      qryTozinMachineWeight.AsFloat, edtMandeh.Text]);
    Warn2(Msg, 1500);
    // if get_response(msg) <> mrYes then
    // Abort;

    if (StrToFloat(edtMandeh.Text) > 0) and
      (qryinit.FieldByName('ControlEntityKind').AsInteger in [0, 1]) then
      if StrToFloat(edtMandeh.Text) <> qryLicenseWeight.AsFloat then
      begin
        if (qryinit.FieldByName('ControlEntityKind').AsInteger = 0) then
          Warn2('مقدار مطابقت ندارد')
        else
          raise Exception.Create('مقدار مطابقت ندارد')
      end;

    if (StrToFloat(edtMandeh.Text) > 0) and (CedarDbgrid1.Visible) then
    begin
      Weight := qryLicenseWeight.AsFloat;
      VATRound := qryinit.FieldByName('VATRound').AsInteger;
      WeightUp := Weight + (Weight * VATRound / 100);
      WeightDown := Weight - (Weight * VATRound / 100);
      if not((StrToFloat(edtMandeh.Text) <= WeightUp) and
        (StrToFloat(edtMandeh.Text) >= WeightDown)) then
        Warn('وزن توزین با جمع مجوز اختلاف دارد');
    end;
  end;

  if grpRelatedRecipts.Visible then
    if ChekRemain then
    begin
      Warn('وزن از مقدار حواله بیشتر است');

      if (not InfoWeight) and (get_response('آيا براي تقسیم توزین مطمئن هستيد؟')
        = mrYes) then
        try
          MachineFullWeight := qryTozinMachineFullWeight.AsFloat;

          MachineWeight := qryTozinMachineWeight.AsFloat;

          qryTozinMachineFullWeight.AsFloat := qryRelatedRecipts.FieldByName
            (UseAbleWeightFldName).AsFloat + MachineWeight;

          with qryTozin do
          begin
            Post;
            with qryOldTozin do
            begin
              Close;
              Parameters.ParamByName('TozinID').Value :=
                qryTozinTozinID.AsInteger;
              Open;
            end;
            Insert;
            qryTozinPrvTozinID.AsInteger := qryOldTozinTozinID.AsInteger;
            qryTozinPersonID1.AsInteger := qryOldTozinPersonID1.AsInteger;
            qryTozinPersonID2.AsInteger := qryOldTozinPersonID2.AsInteger;
            qryTozinPersonID3.AsInteger := qryOldTozinPersonID3.AsInteger;
            qryTozinStoreID.AsInteger := qryOldTozinStoreID.AsInteger;
            qryTozinStuffCode.AsLargeInt := qryOldTozinStuffCode.AsLargeInt;
            qryTozinMachineFullWeight.AsFloat := MachineFullWeight;
            qryTozinMachineWeight.AsFloat :=
              qryOldTozinMachineFullWeight.AsFloat;
            qryTozinMachineNo.AsString := qryOldTozinMachineNo.AsString;
            qryTozinMachineName.AsString := qryOldTozinMachineName.AsString;
            qryTozinTozinNote.AsString := qryOldTozinTozinNote.AsString;
            if (qryinit.FieldByName('ControlEntityKind').AsInteger = 1) then
              Abort;

          end;
        finally

        end
      else
      begin
        if (qryinit.FieldByName('ControlEntityKind').AsInteger = 1) then
          Abort;
      end;

    end;

  if (qryinit.FieldByName('ReciptNumberEventKind').AsInteger = 1) and
    (DataSet.State in [dsInsert]) then
  begin
    FreeReservedCodes(DmF.adcBSell, 'Tozin', 'TozinNumber',
      'GetTozin' + FFormType.ToString);
    GetTozinNumber;
  end;

end;

function TGetTozinF.ChekRemain: Boolean;
var
  Index: Integer;
begin
  if opt.GroupReciptPostKind = 2 then
  begin
    result := (qryRelatedRecipts.FieldByName(EntityFldName).AsFloat -
      (qryRelatedRecipts.FieldByName('MachineFullWeight').AsFloat +
      qryTozinNumberOfBags.AsFloat) < 0)
  end
  else
  begin

    if TsStuff.Find(qryTozinStuffCode.AsString, Index) then
    begin
      result := qryRelatedRecipts.FieldByName('CostOfStorage').AsFloat <
        StrToFloat(edtMandeh.Text)
    end
    else
    begin
      result := (qryRelatedRecipts.FieldByName(EntityFldName).AsFloat -
        (qryRelatedRecipts.FieldByName('MachineFullWeight').AsFloat +
        StrToFloat(edtMandeh.Text)) < 0)
    end;
  end;

end;

procedure TGetTozinF.dbedtMasirIDKeyDown(Sender: TObject; var Key: Word;
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

procedure TGetTozinF.qryTozinBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  // edtExitTime.Text := '';
end;

procedure TGetTozinF.srcTozinDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  UpdateEdtMandeh
end;

procedure TGetTozinF.UpdateEdtMandeh;
var
  Mandeh: real;
begin
  Mandeh := (qryTozinMachineFullWeight.AsFloat - qryTozinMachineWeight.AsFloat);
  if Mandeh < 0 then
    Mandeh := 0;
  edtMandeh.Text := FloatToStr(Mandeh);

end;

procedure TGetTozinF.qryTozinMachineFullWeightChange(Sender: TField);
var
  Mandeh: real;
begin
  inherited;
  UpdateEdtMandeh;
  qryTozinNumberOfBags.AsFloat := 0;
  Mandeh := StrToFloat((edtMandeh.Text));
  if (qryTozin_Carton.AsFloat <> 0) then
  begin
    if (ShowNotEntityOnSearch and Integer(CHKNumberOfBags)) <> 0 then
      Mandeh := Mandeh * qryTozin_StuffVolume.AsFloat
    else
      Mandeh := RoundTo(Mandeh / qryTozin_Carton.AsFloat, RoundCount); // -2
    if Mandeh <> qryTozinNumberOfBags.AsFloat then
      qryTozinNumberOfBags.AsFloat := Mandeh;
  end;
  qryLicense.Requery();
end;

procedure TGetTozinF.qryTozinMachineNameChange(Sender: TField);
var
  SQL: string;
  i: Integer;
begin
  inherited;
  if qryTozin_CustName2.AsString <> Sender.AsString then
  begin
    SQL := 'UPDATE Customers SET CustName = ''%S'' ,LastUser  = ''%S'' WHERE (CustID = %d)';
    SQL := Format(SQL, [Sender.AsString, User.Name,
      qryTozinPersonID2.AsInteger]);
    DmF.adcBSell.Execute(SQL, i);
    if i > 0 then
      BigMessage('نام راننده تغییر یافت', 2);
    qryCustomers.Requery();
    qryTozinPersonID2.AsInteger := qryTozinPersonID2.AsInteger;
  end;

end;

procedure TGetTozinF.FindMachineName;
var
  qry: TADOQuery;
begin
  qryTozinMachineName.OnChange := nil;
  try
    if (qryTozin.Active) and (qryTozin.State in [dsInsert]) and
      (qryTozinMachineNo.AsString <> '') then
    begin
      // pelak := pelak.Replace('-', '');
      qry := TADOQuery.Create(Self);
      with qry do
      begin
        try
          qry.Connection := theMainConnection;
          SQL.Text := ' Select top 1 CustID, CustName from customers';
          SQL.Add('where TechnicalCode = :pelak order by CustID desc');
          Parameters.ParamByName('pelak').Value := qryTozinMachineNo.AsString;
          Open;
          qryTozinPersonID2.AsString := Fields[0].AsString;
          qryTozinMachineName.AsString := Fields[1].AsString;
        finally
          qry.Free;
        end;
      end;
    end;
  finally
    qryTozinMachineName.OnChange := qryTozinMachineNameChange;
  end;

end;

procedure TGetTozinF.qryTozinMachineNoChange(Sender: TField);
var
  t: TThread;
begin
  inherited;
  t := TThread.CreateAnonymousThread(
    procedure()
    begin
      MachineNoHistory(edt4ShowMachineNo, qryTozin, qryinit);
    end);
  t.FreeOnTerminate := True;
  t.Start;
end;

procedure TGetTozinF.qryTozinMachineNoGetText(Sender: TField; var Text: string;
DisplayText: Boolean);
begin
  inherited;
  frPelakF1.pelak := Sender.AsString;
end;

procedure TGetTozinF.qryTozinMachineNoSetText(Sender: TField;
const Text: string);
begin
  inherited;
  Sender.AsString := frPelakF1.pelak;
end;

procedure TGetTozinF.qryTozinPersonID2Change(Sender: TField);
var
  StrWeight, SQL: string;
begin
  inherited;
  if (InfoWeight) or ((Settings and Integer(CHkFillingCustomerWeight)) <> 0)
  then
    qryTozinMachineWeight.AsFloat := qryTozin_InfoWeight.AsFloat;

  if ((Settings and Integer(CHkFillingCustomerWeight)) <> 0) and
    (Sender.AsInteger <> 0) and (qryTozin_InfoWeight.AsFloat = 0) then
  begin
    StrWeight := FloatToStr(FWeight);
    StrWeight := get_box('وزن', 'وزن خالی را وارد كنيد.', StrWeight);
    if StrWeight <> EmptyStr then
    begin
      SQL := 'UPDATE Customers SET InfoWeight = %s WHERE (CustID = %s) AND (InfoWeight = 0)';
      SQL := Format(SQL, [StrWeight, Sender.AsString]);
      DmF.adcBSell.Execute(SQL);
      qryCustomers.Requery([]);
      qryTozinMachineWeight.AsFloat := StrToFloat(StrWeight);
    end;
  end;

  if ((Settings and Integer(CHKInfoWeight2)) <> 0) and
    (qryTozin_InfoWeight.AsFloat <> 0) then
  begin
    qryTozinMachineWeight.AsFloat := 1;
    qryTozinMachineFullWeight.AsFloat := qryTozin_InfoWeight.AsFloat + 1;
  end;

  With DmF.qryTmpTmp do
    try
      Active := False;
      SQL.Text := 'SELECT TOP (1) PersonID1 ';
      SQL.Add('FROM Tozin');
      SQL.Add('WHERE  (ReciptType = :ReciptType ) AND (PersonID2 = :PersonID2 )');
      SQL.Add('ORDER BY TozinID DESC');
      Parameters.ParamByName('PersonID2').Value := Sender.AsString;
      Parameters.ParamByName('ReciptType').Value := FFormType;
      Active := True;
      qryTozinPersonID1.AsInteger := FieldByName('PersonID1').AsInteger;
    finally
      Active := False;
    end;
end;

procedure TGetTozinF.qryRelatedReciptsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qryRelatedRecipts.FieldByName(UseAbleWeightFldName).AsFloat < 0 then
  begin
    lblUseAbleWeight.Font.Color := clRed;
    edtUseAbleWeight.Font.Color := clRed;
  end
  else
  begin
    lblUseAbleWeight.Font.Color := clWindowText;
    edtUseAbleWeight.Font.Color := clWindowText;
  end
end;

procedure TGetTozinF.qryTozinAfterCancel(DataSet: TDataSet);
begin
  inherited;
  // rgpWeightKind.ItemIndex := -1;
  if FcallanotherForm then
    Close;

end;

procedure TGetTozinF.actAdd2CustomersMasirExecute(Sender: TObject);
begin
  inherited;
  Add2CustomersMasir(qryRelatedRecipts.FieldByName('PersonID1').AsInteger,
    qryAddressInMasir, qryTozinMasirID)
end;

function TGetTozinF.ConvertPelckChar(fapelak: string; enpelak: string): string;
var
  enp: TArray<string>;
begin
  if not(fapelak.IsEmpty and enpelak.IsEmpty) then
  begin
    enp := enpelak.Split(['-']);
    result := enpelak.Replace(enp[1], fapelak.Substring(2, 1)).Replace('-', '');
  end;
end;

procedure TGetTozinF.RecognizeBuffer(bmp: TBitmap);
var
  cnf: Single;
  DstRect, SrcRect: TRect;
  res: array [0 .. 255] of WideChar;
  res_en: TcharArray;
  LPResult: WideString;
  ptr: Pointer;
  W, H, step: Integer;
begin
  W := bmp.Width;
  H := bmp.Height;
  ptr := bmp.ScanLine[0];
  step := Integer(bmp.ScanLine[1]) - Integer(ptr);
  anpr_recognize_buffer(0, ptr, W, H, step, @res[0], @cnf, @SrcRect);
  anpr_get_en_result(@res[0], @res_en[0]);

  LPResult := ConvertPelckChar(res, res_en);
  frPlaquereader.PelakNoSlash := LPResult;
  imgPlaqueReader.Picture := nil;
  if LPResult <> '' then
  begin
    DstRect := Rect(0, 0, imgPlaqueReader.Width, imgPlaqueReader.Height);
    imgPlaqueReader.Canvas.Pen.Color := RGB(200, 0, 0);
    imgPlaqueReader.Canvas.Brush.Style := bsClear;
    imgPlaqueReader.Canvas.CopyRect(DstRect, bmp.Canvas, SrcRect);
  end;

  if qryTozin.State in dsEditModes then
  begin
    frPelakF1.PelakNoSlash := LPResult;
    qryTozinMachineNo.AsString := frPelakF1.pelak;
    FindMachineName;
  end;

end;

procedure TGetTozinF.actCameraExecute(Sender: TObject);
var
  aBMP: TBitmap;
begin
  inherited;

  try
    aBMP := vc1.GetLastFrameAsTBitmap(0, False, 0, 0, 0, 0, 0, 0, 24);

    RecognizeBuffer(aBMP);

  finally
    if Assigned(aBMP) then
      aBMP.Free;

  end;
end;

procedure TGetTozinF.actConversionCoSerialExecute(Sender: TObject);
var
  i: Integer;
  Msg: string;
begin
  inherited;
  ChkTozinState(qryTozin);
  // TozinConversionCoSerial(qryinit, qryTozin, qryLicense,
  // actCorrelateRecipt.Caption, actConversionCoSerial.Caption,
  // ConversionCoSerial);
  if not CheckUserlevel(qryinit.FieldByName('FormRelatedLevelID'), qryTozin)
  then
    Abort;

  if (qryLicense.Active) and (qryLicenseWeight.AsFloat = 0) then
  begin
    Warn('ابتدا مجوز بارگیری صادر شود ', mtInformation);
    Abort;
  end;
  if qryLicenseRpt.FieldByName('ReciptType').AsInteger = ConversionCoSerial then
  begin
    Warn(actCorrelateRecipt.Caption + ' قبلا ثبت شده است.');
    Abort;
  end;

  if qryinit.FieldByName('RecallTypeCo').AsInteger = 9 then
  begin
    With qryInit2 do
    begin
      Close;
      Parameters.ParamByName('ReciptType').Value := ConversionCoSerial;
      Open;
    end;
    With DmF.qryTmpTmp do
    begin
      Close;
      SQL.Text := 'SELECT *';
      SQL.Add('FROM Recipts');
      SQL.Add('WHERE (ReciptID = :ReciptID) ');
      SQL.Add('AND (ServerID = :ServerID) ');
      SQL.Add('AND (YearID = :YearID)');
      Parameters.ParamByName('ServerID').Value :=
        qryLicenseRpt.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value :=
        qryLicenseRpt.FieldByName('YearID').AsInteger;
      Parameters.ParamByName('ReciptID').Value :=
        qryLicenseRpt.FieldByName('ReciptID').AsInteger;
      Open;
      if FieldByName('ReciptType').AsInteger = ConversionCoSerial then
        Warn(actCorrelateRecipt.Caption + ' قبلا ثبت شده است.')
      else
      begin
        if RecordCount > 0 then
        begin
          if qryTozinMachineFullWeight.AsFloat = 0 then
          begin
            Warn('نوبت دوم توزین ثبت نشده است');
            Abort;
          end;
          edit;
          FieldByName('ReciptType').AsInteger := ConversionCoSerial;
          FieldByName('AidNumber').AsString :=
            FieldByName('ReciptNumber').AsString;
          FieldByName('AidDate').AsString := FieldByName('ReciptDate').AsString;
          GetReciptNumber(qryInit2, DmF.qryTmpTmp, 0, myStore);

          FieldByName('InsertTime').AsString :=
            FieldByName('FirstUser').AsString;
          FieldByName('FirstUser').AsString := User.Name;

          Post;
          qryLicense.Requery();
          FreeReservedCodes(DmF.adcBSell, '', '',
            'GetTozin' + FFormType.ToString);
          qryRecipts.Requery();
          qryLicenseRpt.Requery();
          Warn(actCorrelateRecipt.Caption + ' ثبت شد.')
        end
        else
          Warn(actCorrelateRecipt.Caption + ' قبلا ثبت شده است.')
      end;
    end;
  end
  else
  begin
    Msg := ' آيا براي ثبت/نمایش ' + actConversionCoSerial.Caption +
      ' مطمئن هستيد؟';
    If ReciptCorrelate_ConversionCo_Chk(qryTozin, qryinit) then
      if get_response(Msg) = mrYes then
      begin
        i := NewTozin2Recipts2(qryTozin, TConversion);
        if i <> 0 then
          BigMessage(actConversionCoSerial.Caption + ' انجام شد ', 2);
      end;
    ShowReciptTypes(qryTozin, mainF, qryTozinStuffCode.AsLargeInt, 0,
      qryTozinTozinID.AsInteger);
  end;

end;

procedure TGetTozinF.actCorrelateReciptExecute(Sender: TObject);
var
  ReciptID: Integer;
begin
  inherited;
  ReciptID := 0;
  TozinCorrelateRecipt2(Self, qryinit, qryTozin, qryLicense,
    actCorrelateRecipt.Caption, StrToFloat(edtMandeh.Text), True, False,
    ReciptID);
end;

procedure TGetTozinF.actCustomerGrpID4Add2Customers1Execute(Sender: TObject);
begin
  inherited;
  Add2Customers(qryCustomers, qryTozinPersonID1,
    qryinit.FieldByName('CustomerGrpID4Add2Customers1').AsInteger);

end;

procedure TGetTozinF.actCustomerGrpID4Add2Customers2Execute(Sender: TObject);
begin
  inherited;
  Add2Customers(qryCustomers, qryTozinPersonID2,
    qryinit.FieldByName('CustomerGrpID4Add2Customers2').AsInteger);
end;

procedure TGetTozinF.actCustomerGrpID4Add2Customers3Execute(Sender: TObject);
begin
  inherited;
  Add2Customers(qryCustomers, qryTozinPersonID3,
    qryinit.FieldByName('CustomerGrpID4Add2Customers3').AsInteger);

end;

procedure TGetTozinF.actDeleteReciptsExecute(Sender: TObject);
var
  TozinID, i: Integer;
begin
  inherited;
  if get_response('آيا براي حذف فرم مرتبط اين توزین مطمئن هستيد؟') <> mrYes then
    Abort;
  TozinID := qryTozin.FieldByName('TozinID').AsInteger;
  with DmF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Delete Recipts WHERE TozinID =' + qryTozin.FieldByName
      ('TozinID').AsInteger.ToString;
    i := ExecSQL;
    SQL.Text := 'UPDATE Tozin SET ReciptID = NULL  WHERE  TozinID= ' +
      qryTozin.FieldByName('TozinID').AsString;
    ExecSQL;
    Active := False;
  end; // with
  qryTozin.Requery;
  qryTozin.Locate('TozinID', TozinID, []);
  BigMessage(i.ToString + 'فرم مرتبط  حذف شد.', 1);
end;

procedure TGetTozinF.actEditExecute(Sender: TObject);
begin
  inherited;
  With DmF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM Tozin WHERE (TozinID = :TozinID ) ';
    SQL.Add('AND (TozinState = 0) AND (SELECT COUNT( TozinID) FROM Recipts');
    SQL.Add('WHERE (TozinID = Tozin.TozinID ) AND (YearID = Tozin.YearID) ');
    SQL.Add('AND (ServerID = Tozin.ServerID) AND (ReciptState <> 3))=0');
    Parameters.ParamByName('TozinID').Value := qryTozinTozinID.AsInteger;
    Active := True;
    if Fields[0].AsInteger = 0 then
    begin
      Warn('به علت استفاده از این توزین در فرم غیرباطله امکان ویرایش کردن وجود ندارد',
        mtInformation);
      exit;
    end;
  end;

  try
    qryTozin.AfterEdit := nil;
    qryTozin.edit;
    qryTozinLastUser.AsString := User.Name;
    if qryTozinExitDate.IsNull then
      qryTozinExitDate.AsDateTime := NowFormServer;
    edtFullweight.ReadOnly := False;
    edtMachineWeight.ReadOnly := False;
  finally
    qryTozin.AfterEdit := qryTozinAfterEdit;
  end;
end;

procedure TGetTozinF.actCustomersTaxFExecute(Sender: TObject);
begin
  inherited;
  mdiMainF.CallCustomers(TCustomersTaxF, CustomersTaxF);
end;

procedure TGetTozinF.actTozinDeficitsFExecute(Sender: TObject);
begin
  inherited;
  TozinDeficitsF.enter(qryinit, qryTozin)
end;

procedure TGetTozinF.actManualInsertExecute(Sender: TObject);
begin
  inherited;
  qryTozin.Insert;
  qryTozinIsSystem.AsBoolean := False;
  qryTozinExitDate.AsDateTime := NowFormServer;
  edtFullweight.ReadOnly := False;
  edtMachineWeight.ReadOnly := False;
  edtFullweight.TabStop := True;
  edtMachineWeight.TabStop := True;
end;

procedure TGetTozinF.actPlaqueExecute(Sender: TObject);
begin
  inherited;
  // vc1.ResumePreview;
  pnlPlaque.Visible := True;
  frPlaquereader.pelak := '';
  pnlPlaque.BringToFront;
  imgPlaqueReader.Picture := nil;
end;

procedure TGetTozinF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if PopMuPrint.Items.Count > 0 then
    PopMuPrint.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y)
  else
    InitReportFile(ppReport1, 'Tozin');
end;

procedure TGetTozinF.actRecipts11Execute(Sender: TObject);
begin
  inherited;
  if qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8] then
  begin
    if (qryTozinMachineWeight.AsFloat > 0) and
      (qryTozinMachineFullWeight.AsFloat = 0) then
      if get_response('آيا براي ثبت مجوز بارگيري مطمئن هستيد؟') = mrYes then
        NewReciptsGridF(11);

    if (qryTozinMachineWeight.AsFloat > 0) and
      (qryTozinMachineFullWeight.AsFloat > 0) then
      if get_response('آيا براي ثبت ' + actCorrelateRecipt.Caption +
        ' مطمئن هستيد؟') = mrYes then
        NewReciptsGridF(15)
  end
  else
  begin
    if (qryTozinMachineWeight.AsFloat > 0) and
      (qryTozinMachineFullWeight.AsFloat > 0) then
      if get_response('آيا براي ثبت رسيد گندم مطمئن هستيد؟') = mrYes then
        NewReciptsBuyF(19);
  end;

end;

procedure TGetTozinF.NewReciptsBuyF(ReciptType: Integer);
begin
  ReciptsBuyF.enter(ReciptType);
  // , False, qryTozinStoreID.AsInteger
  with ReciptsBuyF do
  begin
    qryRecipts.Insert;
    if ReciptType <> 15 then
    begin
      qryReciptsStoreID.AsInteger := GetTozinF.qryTozinStoreID.AsInteger;
      qryReciptsPersonID1.AsInteger := GetTozinF.qryTozinPersonID1.AsInteger;
      qryReciptsPersonID2.AsInteger := GetTozinF.qryTozinPersonID2.AsInteger;
      qryReciptsTozinID.AsInteger := GetTozinF.qryTozinTozinID.AsInteger;
    end;
    GetTozinF.Close;
  end;
end;

procedure TGetTozinF.NewReciptsGridF(ReciptType: Integer);
begin
  ReciptsGridF.enter(ReciptType);
  // , False, qryTozinStoreID.AsInteger
  with ReciptsGridF do
  begin
    qryRecipts.Insert;
    qryReciptsStoreID.AsInteger := GetTozinF.qryTozinStoreID.AsInteger;
    qryReciptsPersonID1.AsInteger := GetTozinF.qryTozinPersonID1.AsInteger;
    qryReciptsPersonID2.AsInteger := GetTozinF.qryTozinPersonID2.AsInteger;
    qryReciptsTozinID.AsInteger := GetTozinF.qryTozinTozinID.AsInteger;
    GetTozinF.Close;
  end;
end;

procedure TGetTozinF.OnTerminatePlaqueReader(Sender: TObject);
begin
  actPlaque.Enabled := True;
end;

procedure TGetTozinF.Panel1Click(Sender: TObject);
begin
  inherited;
  spdRelatedRecipts.Click
end;

procedure TGetTozinF.pdbtxtMiladi2ShamsiGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  if Text <> '' then
    Text := miladi2Shamsi(StrToDateTime(Text)) + ' ' +
      FormatDateTime('hh:mm:ss ampm', StrToDateTime(Text))
end;

procedure TGetTozinF.plbledtEnterDateGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := edtEnterDate.Text
end;

procedure TGetTozinF.plbledtExitDateGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := edtExitDate.Text
end;

procedure TGetTozinF.plblSecondTypeGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := CmbSecondType.Text
end;

procedure TGetTozinF.plbltxtEnterGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := txtEnter.Text
end;

procedure TGetTozinF.plbltxtExitGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := txtExit.Text
end;

procedure TGetTozinF.plbTozinaOfTozinGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := lblTozinID.Caption
end;

procedure TGetTozinF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := edtMandeh.Text
end;

procedure TGetTozinF.qryTozinBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not AllStateControls(qryTozin, qryTozin, qryinit, 'Tozin') then
    Abort;

  // If User.level < 100 then
  // begin
  // Warn('شما مجاز به ويرايش نمي باشيد ');
  // Abort;
  // end;
end;

procedure TGetTozinF.qryTozinBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  qryTozinStoreID.Tag := qryTozinStoreID.AsInteger;
  qryTozinStuffCode.Origin := qryTozinStuffCode.AsString;
end;

procedure TGetTozinF.ppLabel73GetText(Sender: TObject; var Text: String);
begin
  inherited;
  // Text := cmbReciptType.Text;
end;

procedure TGetTozinF.ppLabel74GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := edtEnterDate.Text;
end;

procedure TGetTozinF.ppLabel75GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := edtExitDate.Text;
end;

procedure TGetTozinF.actStoreSettingsExecute(Sender: TObject);
begin
  inherited;
  // FComPort.ShowSetupDialog;
  // FComPort.StoreSettings(stIniFile, GetCurrentDir() + '\\TozinPort.ini');
end;

procedure TGetTozinF.actTozinPurchaseEffectFExecute(Sender: TObject);
begin
  inherited;
  TozinPurchaseEffectF.enter(qryTozin);
end;

procedure TGetTozinF.btnState3Click(Sender: TObject);
var
  txt: string;
  i: Integer;
begin
  inherited;
  txt := 'UPDATE Tozin SET TozinState = 3 WHERE (TozinID = %d) AND (TozinState = 0)'
    + ' AND (SELECT COUNT( TozinID) FROM Recipts' +
    ' WHERE (TozinID = Tozin.TozinID ) AND (YearID = Tozin.YearID) AND (ServerID = Tozin.ServerID) AND (ReciptState <> 3))=0';

  txt := Format(txt, [qryTozinTozinID.AsInteger]);
  DmF.adcBSell.Execute(txt, i);
  if i = 0 then
    Warn('به علت استفاده از این توزین در فرم غیرباطله امکان باطل کردن وجود ندارد',
      mtInformation);
  qryTozinRequery
end;

procedure TGetTozinF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  // vc1.PausePreview;
  pnlPlaque.Visible := False;
end;

procedure TGetTozinF.ppSystemVariable1GetText(Sender: TObject;
var Text: string);
begin
  inherited;
  Text := GetPageNumberString(Text);
  Canvas
end;

end.
