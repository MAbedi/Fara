unit ListSalary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ToolWin, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, Mask, DBCtrls, FaraConsts,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppModule, Math, ppParameter, jpeg,
  ppSubRpt, Menus, ppTypes, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, vcl.FileCtrl, Telegram,
  ppImageDevice, ppPDFDevice, ppPDFSettings, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.IOUtils, REST.Types,
  vcl.Imaging.pngimage, IdTCPConnection, IdTCPClient, UEitaa, BaleBot,
  IdExplicitTLSClientServerBase, IdMessageClient, IdIMAP4,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdServerIOHandler, IdComponent, IdCustomTCPServer, IdMappedPortTCP,
  IdMappedFTP, IdBaseComponent,
  IdMessage;

type
  TListSalaryF = class(Ttemplate2MDIF)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    pnlPersonel: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    srcPersonels: TDataSource;
    actFilter: TAction;
    qryFunctionsItem: TADOQuery;
    Panel4: TPanel;
    srcFunctionsItem: TDataSource;
    srcWages: TDataSource;
    srcDecs: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    btnPrint: TBitBtn;
    ppPersonels: TppDBPipeline;
    ppFunctionItem: TppDBPipeline;
    pnlFun: TPanel;
    qryWages: TADOQuery;
    qryWagesSalaryID: TIntegerField;
    qryWagesInfoName_L1: TStringField;
    qryWagesSumPrice: TBCDField;
    qryWages_radif: TIntegerField;
    qryDecs: TADOQuery;
    qryDecsSalaryID: TIntegerField;
    qryDecsInfoName_L1: TStringField;
    qryDecsSumPrice: TBCDField;
    qryDecs_radif: TIntegerField;
    qryPersonels: TADOQuery;
    Panel6: TPanel;
    qryFunctionsItemSalaryID: TIntegerField;
    qryFunctionsItemInfoName_L1: TStringField;
    qryFunctionsItemInfoName_L2: TStringField;
    qryFunctions: TADOQuery;
    srcFunctions: TDataSource;
    qryPayable_Delete: TADOQuery;
    srcPayable_Delete: TDataSource;
    qryPayable_DeletePrice: TBCDField;
    qryLoan: TADOQuery;
    BitBtn5: TBitBtn;
    actShowFunctionItemsF: TAction;
    BitBtn6: TBitBtn;
    actSort: TAction;
    PopMnuPrint: TPopupMenu;
    N3: TMenuItem;
    ppWages: TppDBPipeline;
    ppDecs: TppDBPipeline;
    qryWages2: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    BCDField1: TBCDField;
    srcWages2: TDataSource;
    ppWages2: TppDBPipeline;
    ppFunction: TppDBPipeline;
    qryDecsLoanRemain: TBCDField;
    N2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    CmbArchiveID: TComboBox;
    qryDecsFunctionID: TIntegerField;
    qryDecs_LoanRemain: TCurrencyField;
    qryFunctionsFunctionTime: TFloatField;
    qryFunctionsItemFHours: TFloatField;
    qryinit: TADOQuery;
    qryWagesInfoName_L2: TStringField;
    qryWages2InfoName_L2: TStringField;
    qryDecsInfoName_L2: TStringField;
    qryFunctionsItemFDaily: TFloatField;
    btnOtherMenu: TBitBtn;
    PopMnuOthers: TPopupMenu;
    ActShowInterdict: TAction;
    ActShowInterdict1: TMenuItem;
    ActPersonelInfoF: TAction;
    N1: TMenuItem;
    LblEndDateC: TLabel;
    LblEndDate: TLabel;
    qryFunctionsFunctionDay: TFloatField;
    Panel7: TPanel;
    Label12: TLabel;
    Panel8: TPanel;
    txtTotalWage: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Splitter1: TSplitter;
    Panel9: TPanel;
    Label15: TLabel;
    txtTotalDecs: TEdit;
    Label16: TLabel;
    EdtPayable: TEdit;
    qryFunctionsWageDay: TBCDField;
    qryDecscalculatekind: TWordField;
    qryFunctionsItemRemainDayDec: TStringField;
    qryItemsSum: TADOQuery;
    qryItemsSumAmount1: TBCDField;
    qryItemsSumAmount2: TBCDField;
    qryItemsSumAmountSum: TBCDField;
    qryItemsSumAmountIn30: TBCDField;
    qryItemsAmountSumAnd30: TBCDField;
    srcItemsSum: TDataSource;
    ppDBPipeline5: TppDBPipeline;
    NAllRecords: TMenuItem;
    pmOtherPrint: TPopupMenu;
    MenuItem5: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    All_Print: TMenuItem;
    ppItemsSum: TppDBPipeline;
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
    qryFunctionsItemFHoursT: TStringField;
    actEmail: TAction;
    BitBtn3: TBitBtn;
    popEmail: TPopupMenu;
    mnuEmail: TMenuItem;
    MenuItem3: TMenuItem;
    PNG1: TMenuItem;
    JPEG1: TMenuItem;
    PDF1: TMenuItem;
    BMP1: TMenuItem;
    GIF1: TMenuItem;
    RTF1: TMenuItem;
    DOC1: TMenuItem;
    extFile1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    qryWagesSum: TADOQuery;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    BCDField2: TBCDField;
    StringField3: TStringField;
    srcWagesSum: TDataSource;
    pdbplnWagesSum: TppDBPipeline;
    SpeedButton1: TSpeedButton;
    qryWagescalculatekind: TIntegerField;
    qryWagesSalaryIDMounthRetard: TLargeintField;
    rdgrpEmail: TRadioGroup;
    ppVacationType: TppDBPipeline;
    srcVacationType: TDataSource;
    qryFunctionsSickDay: TIntegerField;
    ppLoan: TppDBPipeline;
    srcLoan: TDataSource;
    qryLoan2: TADOQuery;
    qryLoan2LoanRemain: TFMTBCDField;
    qryLoan2InfoName_L1: TStringField;
    qryOtherDecWage: TADOQuery;
    ppOtherDecExt: TppDBPipeline;
    srcOtherDecWage: TDataSource;
    qryOtherDecWageSalaryID: TFMTBCDField;
    qryOtherDecWageSumPriceBed: TBCDField;
    qryOtherDecWageSumPriceBes: TBCDField;
    qryOtherDecWageInfoName_L1: TStringField;
    ppReportNew: TppReport;
    ppDetailBand4: TppDetailBand;
    ppShape13: TppShape;
    ppShape18: TppShape;
    ppShape17: TppShape;
    ppDBText41: TppDBText;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape16: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel21: TppLabel;
    ppLine16: TppLine;
    ppLabel33: TppLabel;
    ppLine20: TppLine;
    ppLabel34: TppLabel;
    ppLabel44: TppLabel;
    ppVariable3: TppVariable;
    ppLine24: TppLine;
    ppLabel67: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel94: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel101: TppLabel;
    ppLine27: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand5: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText31: TppDBText;
    ppDBText21: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel45: TppLabel;
    ppLine15: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBandWage1: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand7: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand8: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLine26: TppLine;
    ppLabel35: TppLabel;
    ppLabel43: TppLabel;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel57: TppLabel;
    ppLabel64: TppLabel;
    ppLine19: TppLine;
    ppLabel56: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine18: TppLine;
    ppLabel52: TppLabel;
    ppDBText30: TppDBText;
    ppLabel59: TppLabel;
    ppLabel65: TppLabel;
    ppDBText34: TppDBText;
    ppLine28: TppLine;
    ppLabel82: TppLabel;
    ppDBText35: TppDBText;
    ppLabel95: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel96: TppLabel;
    ppDBText16: TppDBText;
    ppLabel30: TppLabel;
    ppDBText38: TppDBText;
    ppLabel102: TppLabel;
    ppDBText39: TppDBText;
    ppLabel103: TppLabel;
    ppDBText40: TppDBText;
    ppLabel104: TppLabel;
    ppLabel53: TppLabel;
    ppLabel58: TppLabel;
    ppImage1: TppImage;
    ppLabel49: TppLabel;
    ppImage2: TppImage;
    ppLabel29: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    plblKhalesBhorof: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppParameterList4: TppParameterList;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    Print: TMenuItem;
    Panel10: TPanel;
    Label11: TLabel;
    edtFunctionDay: TDBEdit;
    Label2: TLabel;
    edtFunctionTime: TDBEdit;
    Label6: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Panel11: TPanel;
    lblColor2: TLabel;
    lblNotHasFunction: TLabel;
    Panel1: TPanel;
    lblColor1: TLabel;
    lblHasFunction: TLabel;
    ChkEndDate: TCheckBox;
    ChkHasFunction: TCheckBox;
    qryFn_WagesDecs: TADOQuery;
    plnFn_WagesDecs: TppDBPipeline;
    srcFn_WagesDecs: TDataSource;
    DBGrid1: TCedarDbgrid;
    actPdf: TAction;
    BitBtn4: TBitBtn;
    popTelegram: TPopupMenu;
    MenuItem1: TMenuItem;
    mnuTelegram: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    BitBtn7: TBitBtn;
    actTelegram: TAction;
    popSendToFile: TPopupMenu;
    MenuItem2: TMenuItem;
    mnuSendToFile: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    qryWagesPart1: TADOQuery;
    srcWagesPart1: TDataSource;
    qryDecsPart1: TADOQuery;
    srcDecsPart1: TDataSource;
    plnWagesPart1: TppDBPipeline;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    plnDecsPart1: TppDBPipeline;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    plblWagePart: TppLabel;
    plblDessPart: TppLabel;
    plblWage_Decs_Part: TppLabel;
    qryWagesPart1SalaryID: TIntegerField;
    qryWagesPart1InfoName_L1: TStringField;
    qryWagesPart1SumPrice: TBCDField;
    qryWagesPart1InfoName_L2: TStringField;
    qryWagesPart1calculatekind: TIntegerField;
    qryWagesPart1SalaryIDMounthRetard: TLargeintField;
    qryDecsPart1SalaryID: TIntegerField;
    qryDecsPart1InfoName_L1: TStringField;
    qryDecsPart1SumPrice: TBCDField;
    qryDecsPart1LoanRemain: TBCDField;
    qryDecsPart1FunctionID: TIntegerField;
    qryDecsPart1InfoName_L2: TStringField;
    qryDecsPart1calculatekind: TWordField;
    qryWagesPart2: TADOQuery;
    qryDecsPart2: TADOQuery;
    srcWagesPart2: TDataSource;
    srcDecsPart2: TDataSource;
    plnWagesPart2: TppDBPipeline;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    ppField36: TppField;
    plnDecsPart2: TppDBPipeline;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    plblWagePart2: TppLabel;
    plblDessPart2: TppLabel;
    plblWage_Decs_Part2: TppLabel;
    qryWagesPart2SalaryID: TIntegerField;
    qryWagesPart2InfoName_L1: TStringField;
    qryWagesPart2SumPrice: TBCDField;
    qryWagesPart2InfoName_L2: TStringField;
    qryWagesPart2calculatekind: TIntegerField;
    qryWagesPart2SalaryIDMounthRetard: TLargeintField;
    qryDecsPart2SalaryID: TIntegerField;
    qryDecsPart2InfoName_L1: TStringField;
    qryDecsPart2SumPrice: TBCDField;
    qryDecsPart2LoanRemain: TBCDField;
    qryDecsPart2FunctionID: TIntegerField;
    qryDecsPart2InfoName_L2: TStringField;
    qryDecsPart2calculatekind: TWordField;
    qryDecsPart2_LoanRemain: TCurrencyField;
    qryDecsPart1_LoanRemain: TCurrencyField;
    qryPersonelsPersonelNo: TIntegerField;
    qryPersonelsPersonel_L1: TStringField;
    qryPersonelsPersonel_L2: TStringField;
    qryPersonelsInfoID: TIntegerField;
    qryPersonelsStateName: TStringField;
    qryPersonelsjobCode: TIntegerField;
    qryPersonelsHasFunction: TIntegerField;
    qryPersonelsOfficeCode: TIntegerField;
    qryPersonelsAccountNumber: TStringField;
    qryPersonelsInsuranceNumber: TStringField;
    qryPersonelsOfficeName_l1: TStringField;
    qryPersonelsOfficeName_l2: TStringField;
    qryPersonelsOfficeCodeID: TIntegerField;
    qryPersonelsEmployTypeName: TStringField;
    qryPersonelsfatherName_L1: TStringField;
    qryPersonelsMarriageName: TStringField;
    qryPersonelschildNumber: TStringField;
    qryPersonelsCreditCardNo: TStringField;
    qryPersonelsInterdictItems2Amount: TBCDField;
    qryPersonelsInterdicEndDate: TStringField;
    qryPersonelsSpecialStateName: TStringField;
    qryPersonelsPersonelgrade: TStringField;
    qryPersonelsInterdictID: TIntegerField;
    qryPersonelsJobID: TIntegerField;
    qryPersonelsjobName: TStringField;
    qryPersonelsProjectName: TStringField;
    qryPersonelsNationalID: TStringField;
    qryPersonelsIDNumber: TStringField;
    qryPersonelsEmail: TWideStringField;
    qryPersonelsWageDay: TBCDField;
    qryPersonelsMonthID: TStringField;
    qryPersonelsMonth_Name: TStringField;
    qryPersonelsArchiveID: TIntegerField;
    Panel5: TPanel;
    chkAllMounth: TCheckBox;
    qryFunctionsItemFDaily2: TFloatField;
    qryPersonelsGroupName: TStringField;
    actSendServer: TAction;
    popSendToServer: TPopupMenu;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    Memo1: TMemo;
    actsSendEmailDirect: TAction;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    PNG2: TMenuItem;
    PNG3: TMenuItem;
    N24: TMenuItem;
    N28: TMenuItem;
    qryPersonelsDSW_JOB: TStringField;
    ppDBText1: TppDBText;
    qryPersonelsBankName: TStringField;
    qryPersonelsjobCityName: TStringField;
    DBGrid2: TCedarDbgrid;
    DBGrid3: TCedarDbgrid;
    DBGrid5: TCedarDbgrid;
    DBGrid6: TCedarDbgrid;
    qryPersonelsWageDayw: TBCDField;
    qryPersonelsAmountInw: TBCDField;
    qryDecs_LoanRemainFormat: TStringField;
    qryItemsSumAmount1_Day: TBCDField;
    BitBtn10: TBitBtn;
    actBale: TAction;
    qryPersonelsTelegramChatID: TStringField;
    qryPersonelsBaleChatID: TStringField;
    procedure ToolButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryPersonelsAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure qryWagesCalcFields(DataSet: TDataSet);
    procedure qryPersonelsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryWagesAfterOpen(DataSet: TDataSet);
    procedure qryDecsCalcFields(DataSet: TDataSet);
    procedure qryDecsAfterOpen(DataSet: TDataSet);
    procedure ppwl1GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2AfterGenerate(Sender: TObject);
    procedure vrbFooterGetText(Sender: TObject; var Text: String);
    procedure ppdlGetText(Sender: TObject; var Text: String);
    procedure ppflGetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure lblColor1Click(Sender: TObject);
    procedure actShowFunctionItemsFExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLbl_flGetText(Sender: TObject; var Text: String);
    procedure ppLbl_wl1GetText(Sender: TObject; var Text: String);
    procedure ppLbl_dlGetText(Sender: TObject; var Text: String);
    // procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure qryFunctionsAfterScroll(DataSet: TDataSet);
    procedure ChkHasFunctionClick(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure pplblNum2AlphaGetText(Sender: TObject; var Text: String);
    procedure ppLbTotalWageGetText(Sender: TObject; var Text: String);
    procedure ppLblTotalDecsGetText(Sender: TObject; var Text: String);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure ActShowInterdictExecute(Sender: TObject);
    procedure ActPersonelInfoFExecute(Sender: TObject);
    procedure ChkEndDateClick(Sender: TObject);
    procedure qryFunctionsItemAfterScroll(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure plblKhalesBhorofGetText(Sender: TObject; var Text: string);
    procedure NAllRecordsClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure mnuEmailClick(Sender: TObject);
    procedure actEmailExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryDecsAfterScroll(DataSet: TDataSet);
    procedure qryWagesAfterScroll(DataSet: TDataSet);
    procedure rdgrpEmailClick(Sender: TObject);
    procedure qryDecsAfterClose(DataSet: TDataSet);
    procedure txtSumBesGetText(Sender: TObject; var Text: string);
    procedure txtSumBedGetText(Sender: TObject; var Text: string);
    procedure All_PrintClick(Sender: TObject);
    procedure LblEndDateClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actPdfExecute(Sender: TObject);
    procedure mnuTelegramClick(Sender: TObject);
    procedure actTelegramExecute(Sender: TObject);
    procedure mnuSendToFileClick(Sender: TObject);
    procedure mnuSendToFileServerClick(Sender: TObject);
    procedure plblWagePartGetText(Sender: TObject; var Text: string);
    procedure plblDessPartGetText(Sender: TObject; var Text: string);
    procedure plblWage_Decs_PartGetText(Sender: TObject; var Text: string);
    procedure plblWagePart2GetText(Sender: TObject; var Text: string);
    procedure plblDessPart2GetText(Sender: TObject; var Text: string);
    procedure plblWage_Decs_Part2GetText(Sender: TObject; var Text: string);
    procedure chkAllMounthClick(Sender: TObject);
    procedure actSendServerExecute(Sender: TObject);
    procedure actsSendEmailDirectExecute(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure ppDBText1GetText(Sender: TObject; var Text: string);
    procedure actBaleExecute(Sender: TObject);
  private
    MonthNo: Byte;
    TaxInvolved: Currency;
    InterdictItemSumSalary: Boolean;
    InsInvolved: Currency;
    sumBed, SumBes: Currency;
    PersonelTotalWage: Currency;
    PersonelTotalDecs: Currency;
    FishMsg: String;
    ClintShare23, SendEmailDirect: Boolean;
    CurrentDate: String;
    FormInfoID: Integer;
    Standard_Days, Standard_Times: Real48;
    Filter4Print: Boolean;
    ArchiveID: Integer;
    procedure UpdateList;
    procedure HasUse(n: Byte);
    procedure InitClintShare23;
    procedure HideSalaryID4ListSalaryinqry(qry: TADOQuery);
    procedure HideSalaryID4ListSalaryOnPrint(qry: TADOQuery);
    procedure Prepare4Print;
    procedure ResetAfterPrint;
    procedure SendTelegramChatID(ChatID, Text_FileName: string;
      ApiName: tApiName);
    function ConvertFarsiToFinglish(S: string): string;
    procedure PrintSendTelegramChatID(dir, FileType: string);
    function SalaryFileName(fileExtension: string): string;
    function SalaryFileName2(fileExtension: string): string;
    procedure RenameFileI(File_Name: string);
    function getChatID: string;
    function getApiName: tApiName;
    // function run_api_command: Boolean;

  public
    { Public declarations }
  end;

var
  ListSalaryF: TListSalaryF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, Main,
  SalaryFunctions, StrUtils, FunctionItems, search2,
  sort2, Interdicts, PersonelInfo, MMESSAGE, GeneralDM,
  Filter_ADO_Const, mdiMain;

{$R *.dfm}

procedure TListSalaryF.ToolButton12Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  UpdateList;
end;

procedure TListSalaryF.txtSumBedGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := CurrToStr(sumBed);
end;

procedure TListSalaryF.txtSumBesGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := CurrToStr(SumBes);
end;

procedure TListSalaryF.UpdateList;
var
  CurPid, pState: String;
begin
  qryItemsSum.Active := False;
  qryWagesSum.Active := False;
  qryLoan.Active := False;
  qryFunctionsItem.Active := False;
  qryFunctions.Active := False;
  qryWages.Active := False;
  qryDecs.Active := False;
  qryFn_WagesDecs.Active := False;

  setColumns2(DBGrid1, chkAllMounth.Checked, 'Month_Name');
  ArchiveID := Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
  actBale.Enabled:= ArchiveID<>0;
  actTelegram.Enabled:= ArchiveID<>0;
  GetYearMounth(MonthNo);
  StandardDays(MonthNo, CurrentDate);
  if qryPersonels.Active then
    CurPid := qryPersonels.FieldByName('PersonelNo').AsString;

  with qryPersonels do
  begin
    Active := False;
    SQL.Text := 'SELECT PersonelInfo.PersonelNo, ';
    SQL.Add('PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS Personel_L1,');
    SQL.Add('PersonelInfo.lastName_L2 + '' '' + PersonelInfo.name_L2 AS Personel_L2, FormsInfo.InfoID, FormsInfo.InfoName_L1 AS');
    SQL.Add('StateName, Interdicts.jobCode,');
    SQL.Add('ISNULL(FunctionUsed.PersonelNo, 0) AS HasFunction, Interdicts.OfficeCode, PersonelInfo.AccountNumber,');
    SQL.Add('PersonelInfo.InsuranceNumber,');
    SQL.Add('FormsInfo_1OfficeCode.InfoName_L1 AS OfficeName_l1, FormsInfo_1OfficeCode.InfoName_L2 AS OfficeName_l2,');
    SQL.Add('FormsInfo_1OfficeCode.InfoID AS OfficeCodeID, FormsInfo_EmployTypeID.InfoName_L1 AS EmployTypeName,');

    SQL.Add('FormsInfo_GroupID.InfoName_L1 AS GroupName ,');

    SQL.Add('PersonelInfo.fatherName_L1,');
    SQL.Add('FormsInfo_Marriage.InfoName_L1 AS MarriageName, FormsInfo_childNumber.InfoName_L1 AS childNumber');
    SQL.Add(',PersonelInfo.CreditCardNo,');
    SQL.Add('isnull(Pay.InterdictItems2Amounts(PersonelInfo.PersonelNo),0) as InterdictItems2Amount,');
    SQL.Add('Interdicts.InterdicEndDate ,FormsInfo_SpecialState.InfoName_L1 AS SpecialStateName');
    SQL.Add(',FormsInfograde.InfoName_L1 as Personelgrade ,Interdicts.InterdictID, FormsInfo_jobCode.InfoID JobID,');
    SQL.Add('FormsInfo_jobCode.InfoName_L1 AS jobName');
    SQL.Add(', FormsInfo_Project.InfoName_L1 AS ProjectName,');
    SQL.Add('PersonelInfo.NationalID, PersonelInfo.IDNumber,PersonelInfo.Email , v_InterdictItemSumSalary.AmountIN30 AS WageDay');
    SQL.Add(', v_InterdictItemSumSalary.AmountInw , v_InterdictItemSumSalary.AmountIn30w AS WageDayw');

    SQL.Add(', PersonelInfo.TelegramChatID, PersonelInfo.BaleChatID, PersonelInfo.DSW_JOB');

    if chkAllMounth.Checked then
      SQL.Add(', Months.MonthID,Months.Name AS Month_Name,FinalArchiveWithPersonelNO.ArchiveID')
    else
      SQL.Add(', ''00'' AS MonthID,'''' AS Month_Name,0 AS ArchiveID');

    SQL.Add(',FormsInfo_Bank.InfoName_L1 AS BankName,FormsInfo_jobCity.InfoName_L1 AS jobCityName');
    // SQL.Add(', PersonelInfo.DSW_INC, PersonelInfo.DSW_SPOUSE');

    SQL.Add('FROM Pay.PersonelInfo INNER JOIN');
    SQL.Add('Pay.FormsInfo ON PersonelInfo.PersonelState = FormsInfo.FormInfoID INNER JOIN');
    SQL.Add('Pay.Interdicts ON PersonelInfo.PersonelNo = Interdicts.PersonelNo');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_1OfficeCode ON Pay.Interdicts.OfficeCode = FormsInfo_1OfficeCode.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_EmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfo_EmployTypeID.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_GroupID ON Pay.Interdicts.GroupID = FormsInfo_GroupID.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_Marriage ON PersonelInfo.marriage = FormsInfo_Marriage.FormInfoID LEFT OUTER JOIN');

    SQL.Add('Pay.FormsInfo FormsInfo_Bank ON PersonelInfo.BankCode = FormsInfo_Bank.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo FormsInfo_jobCity ON Pay.Interdicts.jobCity = FormsInfo_jobCity.FormInfoID LEFT OUTER JOIN');

    SQL.Add('Pay.FormsInfo FormsInfo_childNumber ON PersonelInfo.childNumber = FormsInfo_childNumber.FormInfoID LEFT');
    SQL.Add('OUTER JOIN');
    SQL.Add('(SELECT DISTINCT PersonelNo FROM Pay.Functions ');

    SQL.Add('WHERE(YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    if not chkAllMounth.Checked then
    begin
      SQL.Add('AND (Mounth = :MonthNo)');
      Parameters.ParamByName('MonthNo').Value := MonthNo;
    end;

    SQL.Add(') FunctionUsed ON PersonelInfo.PersonelNo = FunctionUsed.PersonelNo');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_SpecialState ON PersonelInfo.SpecialState = FormsInfo_SpecialState.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfograde ON Pay.Interdicts.grade = FormsInfograde.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON Pay.Interdicts.ProjectID = FormsInfo_Project.FormInfoID');
    SQL.Add('INNER JOIN Pay.v_InterdictItemSumSalary ON v_InterdictItemSumSalary.InterdictID = Interdicts.InterdictID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID');

    if chkAllMounth.Checked then
      SQL.Add('CROSS JOIN Pay.Months INNER JOIN FinalArchiveWithPersonelNO ON FinalArchiveWithPersonelNO.Mounth = cast(Months.MonthID as int) AND FinalArchiveWithPersonelNO.PersonelNO = PersonelInfo.PersonelNO ');

    if optP.labelFilterON then
    begin
      SQL.Add('INNER JOIN');
      SQL.Add('(SELECT DISTINCT PersonelNO, LabelID');
      SQL.Add('FROM Pay.FixedCalculated');
      SQL.Add('WHERE (Mounth = :MonthNoLabel )');
      SQL.Add('AND(YearID BETWEEN :YearIDFrom AND :YearIDTo )');
      SQL.Add('AND(LabelID BETWEEN :LabelIDFrom AND :LabelIDTo ))');
      SQL.Add(' AS FixedCal ON PersonelInfo.PersonelNo = FixedCal.PersonelNO');
      Parameters.ParamByName('MonthNoLabel').Value := MonthNo;
      Parameters.ParamByName('LabelIDFrom').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
      Parameters.ParamByName('LabelIDTo').Value :=
        GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);

      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    end;

    SQL.Add('WHERE (PersonelInfo.PersonelNo BETWEEN :pidFrom AND :pidTo)');
    setInOrNotIn4QRy(qryPersonels, myParams, 'c_PersonelNo',
      'PersonelInfo.PersonelNo');

    pState := GetcFrom(myParams.ParamValues['PersonelState'], Data.DB.ftString);
    if pState <> '' then
      SQL.Add('AND (FormsInfo.InfoID in(' + pState + '))');

    case rdgrpEmail.ItemIndex of
      0:
        ;
      1:
        SQL.Add('AND (LEN(PersonelInfo.Email) > 4)');
      3:
        SQL.Add('AND (LEN(PersonelInfo.TelegramChatID) > 1)');

      4:
        SQL.Add('AND (LEN(PersonelInfo.BaleChatID) > 1)');
    else
      SQL.Add('AND(LEN(PersonelInfo.Email) <= 4)');
    end;

    // SQL.Add('AND ( ( Interdicts.ProjectID BETWEEN :ProjectIDFrom AND :ProjectIDTo) OR Interdicts.ProjectID =0)');
    SQL.Add('AND ( ( FormsInfo_Project.InfoID BETWEEN :ProjectIDFrom AND :ProjectIDTo) OR Interdicts.ProjectID =0)');

    // if (CompanyFilterinLogin) and (not User.PowerAdmin) then

    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND((Interdicts.subcompanyCode = 0)OR(Interdicts.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo ))');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;

    if chkAllMounth.Checked then
    begin
      SQL.Add('AND (Interdicts.STATE < 50)');
    end
    else
    begin
      SQL.Add('AND (LEFT(Interdicts.InterdicStartDate,7)<= :YearMounth ) AND');
      SQL.Add('(LEFT(Interdicts.InterdicEndDate, 7) >= :YearMounth1 )');
      GetYearMounth(MonthNo);
      Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
      Parameters.ParamByName('YearMounth1').Value :=
        Parameters.ParamByName('YearMounth').Value;

    end;
    SQL.Add('and (FormsInfo_1OfficeCode.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo)');

    if ChkHasFunction.Checked then
      SQL.Add('AND (ISNULL(FunctionUsed.PersonelNo, 0) > 0)')
    else
      SQL.Add('AND (ISNULL(FunctionUsed.PersonelNo, 0) > -1)');

    SQL.Add('AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    SQL.Add('ORDER BY PersonelInfo.PersonelNo');

    Parameters.ParamByName('pidFrom').Value :=
      GetcFrom(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('pidTo').Value :=
      GetcTo(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode']);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode']);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID']);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID']);

    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], Data.DB.ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], Data.DB.ftInteger);

    Active := True;
  end; // with
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT ISNULL(FunctionUsed.PersonelNo, 0)';
    SQL.Add('FROM Pay.PersonelInfo INNER JOIN Pay.Interdicts ON PersonelInfo.PersonelNo =');
    SQL.Add('Interdicts.PersonelNo LEFT OUTER JOIN(SELECT PersonelNo FROM Pay.Functions');
    SQL.Add('WHERE (Mounth = :MonthNo)');
    SQL.Add('AND(YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    SQL.Add('GROUP BY PersonelNo) FunctionUsed ON PersonelInfo.PersonelNo = FunctionUsed.PersonelNo');
    SQL.Add('WHERE (Pay.PersonelInfo.PersonelNo BETWEEN :pidFrom AND :pidTo) ');
    SQL.Add('AND (ISNULL(FunctionUsed.PersonelNo, 0) <> 0)');

    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + optP.YearMounth
      + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      optP.YearMounth + ''')');

    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('pidFrom').Value :=
      GetcFrom(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('pidTo').Value :=
      GetcTo(myParams.ParamValues['c_PersonelNo']);
    Active := True;
    lblHasFunction.Caption := 'پرسنل با كاركرد = ' + IntToStr(RecordCount);
    lblNotHasFunction.Caption := 'پرسنل بدون كاركرد = ' +
      IntToStr(qryPersonels.RecordCount - RecordCount);
    Active := False;
  end; // with
  if (CurPid <> '') and (CurPid <> qryPersonelsPersonelNo.AsString) then
    qryPersonels.Locate('PersonelNo', CurPid, []);

end;

procedure TListSalaryF.FormShow(Sender: TObject);
begin
  inherited;
  actPdf.Visible := actPrint.Visible;
  actPdf.Enabled := actPrint.Enabled;
  actFilter.Execute;
  if myParams.FindParam('c_PersonelNo') = nil then
    close
  else
    CmbArchiveID.ItemIndex := GetcFrom(myParams.ParamValues['ArchiveID'],
      Data.DB.ftInteger);

end;

procedure TListSalaryF.actBaleExecute(Sender: TObject);
begin
  inherited;
  //if ArchiveID = 0 then
//    if get_response('اطلاعات فیش بایگانی ونهایی نشده است آیا ادامه می دهید؟') <> mrYes
//    then
//      Abort;

  rdgrpEmail.ItemIndex := 4;
  popTelegram.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListSalaryF.actEmailExecute(Sender: TObject);
begin
  inherited;
  // OlSecurityManager.ConnectTo(outlookApp);
  // OlSecurityManager.DisableOOMWarnings := True;
  try
    // ... any action with protected objects ...
    rdgrpEmail.ItemIndex := 1;
    UpdateList;
    popEmail.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

  finally
    // OlSecurityManager.DisableOOMWarnings = False;
  end;

end;

procedure TListSalaryF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItemFilter(GetFilter, TEmployTypeID);

      AddItem(DMF.adcSalary, 'ProjectID', 'كد پروژه/ م.هزينه', 'كد',
        Data.DB.ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE FormType =   ' +
        optP.FormInfo4Function.ToString,
        'SELECT 0,MAX(InfoID) FROM Pay.FormsInfo ');

      AddItem(DMF.adcSalary, 'PersonelState', 'وضعيت پرسنل', '',
        Data.DB.ftInteger, dvDefaults, 'true', '', ciCheck,
        'SELECT FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FormsInfo INNER JOIN '
        + ' Pay.PersonelInfo ON FormsInfo.FormInfoID = PersonelInfo.PersonelState WHERE (FormsInfo.FormType = 3)'
        + 'GROUP BY FormsInfo.InfoID, FormsInfo.InfoName_L1', '');

      AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد',
        Data.DB.ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1' +
        ' FROM  Pay.FormsInfo  ' + ' WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT  0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');

      AddItem(DMF.adcSalary, 'c_PersonelNo', 'مشخصات پرسنلي', 'شماره',
        Data.DB.ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT PersonelNo,name_L1 + ''  '' + lastName_L1 AS Personel FROM Pay.PersonelInfo ',
        'SELECT MIN(PersonelNo), MAX(PersonelNo) FROM Pay.PersonelInfo', True);

      AddItem(DMF.adcSalary, 'ArchiveID', ' شماره بايگاني', 'شماره',
        Data.DB.ftInteger, dvDefaults, '0', '', ciSingle, '', '');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TListSalaryF.actPdfExecute(Sender: TObject);
begin
  inherited;
  popSendToFile.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TListSalaryF.SendTelegramChatID(ChatID, Text_FileName: string;
  ApiName: tApiName);
var
  T: TTelegram;
  E: TUEitaa;
  S: string;
  Bot: TBaleBot;
begin
  if ChatID <> EmptyStr then
  begin
    S := 'فيش حقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه ' +
      optP.Year;

    // if IsDelphiRunning then
    if ApiName = AiTelegram then
    begin
      T := TTelegram.Create;
      try
        try
          T.Token := TelgeramUserBot;
          if Pos('.pdf', LowerCase(Text_FileName)) > 0 then
            T.SendDocument(ChatID, S, Text_FileName)
          else
            T.SendPhoto(ChatID, S, Text_FileName)
        except
        end;
      finally
        T.Free;
      end;
    end
    else if ApiName = AiBale then
    begin
      Bot := TBaleBot.Create(BaleUserBot);
      try
        if Pos('.pdf', LowerCase(Text_FileName)) > 0 then
          Bot.SendDocument(ChatID, S, Text_FileName)
        else
          Bot.SendPhoto(ChatID, S, Text_FileName);

      finally
        Bot.Free;
      end;

    end;

  end;
end;

function TListSalaryF.ConvertFarsiToFinglish(S: string): string;
Const
  Farsi: array [0 .. 34] of string = (' ', 'ا', 'ب', 'پ', 'ت', 'ث', 'ج', 'چ',
    'ح', 'خ', 'د', 'ذ', 'ر', 'ز', 'س', 'ش', 'ص', 'ض', 'ط', 'ظ', 'ع', 'غ', 'ف',
    'ق', 'ک', 'گ', 'ل', 'م', 'ء', 'ن', 'ه', 'و', 'ژ', 'و', 'ئ');

  Finglish: array [0 .. 34] of string = (' ', 'a', 'b', 'p', 't', 's', 'j',
    'ch', 'h', 'kh', 'd', 'z', 'r', 'z', 's', 'sh', 'c', 'z', 't', 'z', 'a',
    'gh', 'f', 'q', 'k', 'g', 'l', 'm', 'a', 'n', 'h', 'v', 'zh', 'v', 'y');

var
  i, j: Integer;
begin
  result := EmptyStr;
  for i := 0 to length(S) - 1 do
  begin
    for j := 0 to High(Farsi) - 1 do
      if S[i] = Farsi[j] then
        result := result + Finglish[j]
        // else
        // Result := Result + '?';
  end;
end;

procedure TListSalaryF.FormCreate(Sender: TObject);
begin
  inherited;
  InitDSW_JOB;
  SendEmailDirect := False;
  Memo1.Clear;
  pdbplnWagesSum.OpenDataSource := True;
  ppItemsSum.OpenDataSource := True;
  ppDBPipeline5.OpenDataSource := True;
  ppOtherDecExt.OpenDataSource := True;
  ppLoan.OpenDataSource := True;
  ppVacationType.OpenDataSource := True;
  ppWages.OpenDataSource := True;
  ppFunctionItem.OpenDataSource := True;
  ppPersonels.OpenDataSource := True;
  ppFunction.OpenDataSource := True;
  ppWages2.OpenDataSource := True;
  ppDecs.OpenDataSource := True;

  InterdictItemSumSalary := optP.InterdictItemSumSalary1 <> EmptyStr;
  if InterdictItemSumSalary then
  begin
    with qryItemsSum do
    begin
      Active := False;
      SQL.Text := 'SELECT Amount1,Amount2,AmountSum,AmountIn30,AmountSumAnd30';

      SQL.Add(',Amount1 * :FunctionDay  /30 AS Amount1_Day ');

      SQL.Add('FROM Pay.v_InterdictItemSumSalary WHERE ( InterdictID = :InterdictID )');

      // SQL.Text := 'SELECT SUM(CASE WHEN SalaryID IN (' +
      // opt.InterdictItemSumSalary1 + ') THEN Amount ELSE 0 END) AS Amount1,';
      // SQL.Add('SUM(CASE WHEN SalaryID IN (' + opt.InterdictItemSumSalary2 +
      // ') THEN Amount ELSE 0 END) AS Amount2,');
      // SQL.Add('SUM(CASE WHEN SalaryID IN (' + opt.InterdictItemSumSalary1 + ','
      // + opt.InterdictItemSumSalary2 +
      // ') THEN Amount ELSE 0 END) AS AmountSum');
      // SQL.Add(', ROUND(SUM(CASE WHEN SalaryID IN (' +
      // opt.InterdictItemSumSalary1 + ') THEN Amount ELSE 0 END)*(CASE WHEN ' +
      // '(SELECT TOP 1 CalCulateType FROM Pay.FormsInfo WHERE FormInfoID IN (' +
      // opt.InterdictItemSumSalary1 +
      // ')) = 6 then 30 else 0.0333333333333333 end), 0) as AmountIn30');
      // SQL.Add(', ROUND(SUM(CASE WHEN SalaryID IN (' +
      // opt.InterdictItemSumSalary1 + ') THEN Amount ELSE 0 END)*(CASE WHEN ' +
      // '(SELECT TOP 1 CalCulateType FROM Pay.FormsInfo WHERE FormInfoID IN (' +
      // opt.InterdictItemSumSalary1 +
      // ')) = 6 then 30 else 0.0333333333333333 end)');
      // SQL.Add('+SUM(CASE WHEN SalaryID NOT IN (' + opt.InterdictItemSumSalary1 +
      // ') THEN Amount ELSE 0 END), 0) as AmountSumAnd30');
      // SQL.Add('FROM Pay.InterdictItems WHERE ( InterdictID = :InterdictID )');
    end;

    With qryWagesSum do
    begin
      SQL.Text := EmptyStr;
      if optP.InterdictItemSumSalary1 <> EmptyStr then
      begin
        SQL.Add('SELECT 0 AS SalaryID, ''جمع مزد مبنا'' + CASE WHEN Mounth <> isnull(MounthRetard,0)');
        SQL.Add('THEN isnull(''('' + ''معوقه ماه '' + LTRIM(STR(MounthRetard))+ '')'' ,'''') ELSE');
        SQL.Add(''''' END AS InfoName_L1 ,');
        SQL.Add('SUM(Pay.FixedCalculated.Price) AS SumPrice,'''' AS InfoName_L2,0 as calculatekind');
        SQL.Add(', 10000 *  cast( isnull(FixedCalculated.MounthRetard,0) AS bigint) AS SalaryIDMounthRetard');
        SQL.Add('FROM Pay.FixedCalculated LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID');
        SQL.Add('WHERE (Pay.FixedCalculated.Mounth = :Mounth1 )');

        SQL.Add('AND (Pay.FixedCalculated.YearID = :YearID  ) AND (Pay.FixedCalculated.Years = :Years  )');
        Parameters.ParamByName('YearID').Value := APPBank.Year;
        Parameters.ParamByName('Years').Value := optP.Year;

        SQL.Add('AND (Pay.FixedCalculated.ShowListKind = 1)');
        SQL.Add('AND (Pay.FixedCalculated.PersonelNO = :PersonelNO1 )');
        SQL.Add('AND (Pay.FixedCalculated.ArchiveID = :ArchiveID1)');
        if (CompanyFilterinLogin) and (not User.PowerAdmin) then
        begin
          SQL.Add('AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode BETWEEN :companyCode1From AND :companyCode1To ))');
          Parameters.ParamByName('companyCode1From').Value := FcompanyCodeLogin;
          Parameters.ParamByName('companyCode1To').Value := FcompanyCodeLogin;
        end;

        SQL.Add('AND (FixedCalculated.LabelID BETWEEN :LabelID1From ANd :LabelID1To)');
        SQL.Add('AND (FixedCalculated.SalaryID IN (' +
          optP.InterdictItemSumSalary1 + '))');
        SQL.Add('GROUP BY FixedCalculated.MounthRetard,Mounth');
        SQL.Add('');
        SQL.Add('UNION ALL');
      end;
      if optP.InterdictItemSumSalary2 <> EmptyStr then
      begin
        SQL.Add('');
        SQL.Add('SELECT 0 AS SalaryID, ''جمع مزايا'' + CASE WHEN Mounth <> isnull(MounthRetard,0)');
        SQL.Add('THEN isnull(''('' + ''معوقه ماه '' + LTRIM(STR(MounthRetard))+ '')'' ,'''') ELSE');
        SQL.Add(''''' END AS InfoName_L1 ,');
        SQL.Add('SUM(Pay.FixedCalculated.Price) AS SumPrice,'''' AS InfoName_L2,0 as calculatekind');
        SQL.Add(', 10000 * cast( isnull(FixedCalculated.MounthRetard,0)  AS bigint) AS SalaryIDMounthRetard');
        SQL.Add('FROM Pay.FixedCalculated LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID');
        SQL.Add('WHERE (Pay.FixedCalculated.Mounth = :Mounth2)');

        SQL.Add('AND (Pay.FixedCalculated.YearID = :YearID2  ) AND (Pay.FixedCalculated.Years = :Years2  )');
        Parameters.ParamByName('YearID2').Value := APPBank.Year;
        Parameters.ParamByName('Years2').Value := optP.Year;;

        SQL.Add('AND (Pay.FixedCalculated.ShowListKind = 1)');
        SQL.Add('AND (Pay.FixedCalculated.PersonelNO = :PersonelNO2)');
        SQL.Add('AND (Pay.FixedCalculated.ArchiveID = :ArchiveID2)');
        if (CompanyFilterinLogin) and (not User.PowerAdmin) then

        begin
          SQL.Add('AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode BETWEEN :companyCode2From AND :companyCode2To ))');
          Parameters.ParamByName('companyCode2From').Value := FcompanyCodeLogin;
          Parameters.ParamByName('companyCode2To').Value := FcompanyCodeLogin;
        end;
        SQL.Add('AND (FixedCalculated.LabelID BETWEEN :LabelID2From ANd :LabelID2To)');
        SQL.Add('AND (FixedCalculated.SalaryID IN (' +
          optP.InterdictItemSumSalary2 + '))');
        SQL.Add('GROUP BY FixedCalculated.MounthRetard,Mounth');
        SQL.Add('UNION ALL');

      end;

      SQL.Add('SELECT Pay.FixedCalculated.SalaryID, FormsInfo.InfoName_L1 + CASE WHEN Mounth <> isnull(MounthRetard,0)');
      SQL.Add('THEN isnull(''('' + ''معوقه ماه '' + LTRIM(STR(MounthRetard))+ '')'' ,'''') ELSE');
      SQL.Add('');
      SQL.Add(''''' END AS InfoName_L1 ,');
      SQL.Add('SUM(Pay.FixedCalculated.Price) AS SumPrice, Pay.FormsInfo.InfoName_L2,0 as calculatekind');
      SQL.Add(',cast( FixedCalculated.SalaryID AS bigint)  + 10000 * cast(isnull(FixedCalculated.MounthRetard,0)  AS bigint) AS SalaryIDMounthRetard');
      SQL.Add('FROM Pay.FixedCalculated LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID');
      SQL.Add('WHERE (Pay.FixedCalculated.Mounth = :Mounth3)');

      SQL.Add('AND (Pay.FixedCalculated.YearID = :YearID3  ) AND (Pay.FixedCalculated.Years = :Years3  )');
      Parameters.ParamByName('YearID3').Value := APPBank.Year;
      Parameters.ParamByName('Years3').Value := optP.Year;;

      SQL.Add('AND (Pay.FixedCalculated.ShowListKind = 1)');
      SQL.Add('AND (Pay.FixedCalculated.PersonelNO = :PersonelNO3 )');
      SQL.Add('AND (Pay.FixedCalculated.ArchiveID = :ArchiveID3)');
      if (CompanyFilterinLogin) and (not User.PowerAdmin) then
      begin
        SQL.Add('AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode BETWEEN :companyCode3From AND :companyCode3To ))');
        Parameters.ParamByName('companyCode3From').Value := FcompanyCodeLogin;
        Parameters.ParamByName('companyCode3To').Value := FcompanyCodeLogin;
      end;
      SQL.Add('AND (FixedCalculated.LabelID BETWEEN :LabelID3From ANd :LabelID3To)');
      SQL.Add('AND(FixedCalculated.SalaryID NOT IN (' +
        optP.InterdictItemSumSalary1 + '))');
      SQL.Add('AND(FixedCalculated.SalaryID NOT IN (' +
        optP.InterdictItemSumSalary2 + '))');
      SQL.Add('GROUP BY Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L1');
      SQL.Add(', Pay.FormsInfo.InfoName_L2, FixedCalculated.MounthRetard,Mounth');
      // SQL.Add('ORDER BY Pay.FixedCalculated.SalaryID');
    end;
  end;
  // with

  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  qryinit.Active := True;
  ClintShare23 := qryinit.FieldByName('LimitMounthActive').AsInteger = 1;

  HideSalaryID4ListSalaryinqry(qryWages);
  HideSalaryID4ListSalaryinqry(qryWages2);
  HideSalaryID4ListSalaryinqry(qryDecs);

  if ClintShare23 then
    InitClintShare23;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT FormsInfo.FormInfoID, FormsInfo.StandardDays ,StandardTimes FROM Pay.FormTypes INNER JOIN Pay.FormsInfo ON FormTypes.FormType = FormsInfo.FormType';
    SQL.Add('WHERE (FormTypes.FormType = 16) AND (FormsInfo.InfoID = 1)');
    Active := True;
    FormInfoID := FieldByName('FormInfoID').AsInteger;
    Standard_Days := FieldByName('StandardDays').AsFloat;
    Standard_Times := FieldByName('StandardTimes').AsFloat;
    Active := False;
  end;

  if optP.InterdictItem4ListSalary <> EmptyStr then
    With qryFunctionsItem do
    begin
      SQL.Add('UNION ALL');
      SQL.Add('SELECT InterdictItems.SalaryID, ''نرخ ''+FormsInfo.InfoName_L1, FormsInfo.InfoName_L2, InterdictItems.Amount, 0 AS FHours');
      SQL.Add(','' '' AS  RemainDayDec ,'''' AS FHoursT , 0 AS FDaily2 ');
      SQL.Add('FROM Pay.InterdictItems INNER JOIN Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID');
      SQL.Add('WHERE(InterdictItems.InterdictID = :InterdictID )');
      SQL.Add('AND (InterdictItems.SalaryID IN (' +
        optP.InterdictItem4ListSalary + '))');
      // SQL.Text:=StringReplace(SQL.Text,'ORDER BY SalaryID','',[rfReplaceAll]);
    end;
  HideSalaryID4ListSalaryinqry(qryFunctionsItem);
  MakeMenuItem(49, All_PrintClick, pmOtherPrint);
  DBGrid6.Visible := optP.InterdictItemSumSalary1 <> EmptyStr;

  if optP.SalaryID4PartMakeBankDSK <> EmptyStr then
  begin
    qryWagesPart1.SQL.Text := StringReplace(qryWages.SQL.Text, ':ArchiveID',
      ':ArchiveID)AND(FixedCalculated.SalaryID NOT in(' +
      optP.SalaryID4PartMakeBankDSK + ')', [rfReplaceAll]);

    qryDecsPart1.SQL.Text := StringReplace(qryDecs.SQL.Text, ':ArchiveID',
      ':ArchiveID)AND(FixedCalculated.SalaryID NOT in(' +
      optP.SalaryID4PartMakeBankDSK + ')', [rfReplaceAll]);

    qryWagesPart2.SQL.Text := StringReplace(qryWages.SQL.Text, ':ArchiveID',
      ':ArchiveID)AND(FixedCalculated.SalaryID in(' +
      optP.SalaryID4PartMakeBankDSK + ')', [rfReplaceAll]);

    qryDecsPart2.SQL.Text := StringReplace(qryDecs.SQL.Text, ':ArchiveID',
      ':ArchiveID)AND(FixedCalculated.SalaryID in(' +
      optP.SalaryID4PartMakeBankDSK + ')', [rfReplaceAll]);

  end;

end;

procedure TListSalaryF.HideSalaryID4ListSalaryinqry;
begin
  if optP.ChkHideSalaryID4ListSalary = 1 then
    With qry do
    begin
      SQL.Text := 'SELECT * FROM (' + SQL.Text + ')abcd';
      SQL.Add('WHERE SalaryID NOT IN (0,' + optP.HideSalaryID4ListSalary + ')');
      SQL.Add('ORDER BY  SalaryID');
      SQL.Text := StringReplace(SQL.Text,
        'ORDER BY Pay.FixedCalculated.SalaryID;', '', [rfReplaceAll]);

      SQL.Text := StringReplace(SQL.Text, 'ORDER BY SalaryID', '',
        [rfReplaceAll]);

    end;
end;

procedure TListSalaryF.HideSalaryID4ListSalaryOnPrint(qry: TADOQuery);
var
  S: String;
begin
  if optP.ChkHideSalaryID4ListSalary = 2 then
    if Pos('SalaryID', qry.Filter) = 0 then
      With qry do
      begin
        S := 'SalaryID <> ';
        S := S + StringReplace(optP.HideSalaryID4ListSalary, ',',
          ' AND SalaryID <> ', [rfReplaceAll]);
        if Filter <> EmptyStr then
          Filter := Filter + ' AND ' + S
        else
          Filter := S;
        Filtered := True;
      end;
end;

procedure TListSalaryF.InitClintShare23;
var
  S: String;
begin
  // change by mostafa  95/10/15
  S := 'union all' +
    ' SELECT 2147483647 as SalaryID ,''23‏% حق بيمه كارفرما'' as InfoName_L1, sum(Price) AS SumPrice'
    + ',''Insurance'' as InfoName_L2 ,0 as calculatekind,0 as SalaryIDMounthRetard '
    + ' FROM Pay.FixedCalculated' +
    ' WHERE (ArchiveID = :ShareArchiveID and ShowListKind in(4,14)) AND (Mounth = :MonthNoShare)';
  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    S := S + ' AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode = '
      + FcompanyCodeLogin.ToString + ' ))';
  end;
  S := S + ' AND (LabelID BETWEEN :LabelIDShareFrom ANd :LabelIDShareTo)' +
    ' AND (PersonelNO = :PersonelNoShare)' + ' GROUP BY PersonelNO' +
    ' ORDER BY SalaryID';

  qryWages.SQL.Text := qryWages.SQL.Text.Replace('ORDER BY SalaryID', S)
    .Replace('ORDER BY Pay.FixedCalculated.SalaryID;', S);

  qryWages2.SQL.Text := qryWages2.SQL.Text.Replace('ORDER BY SalaryID', S)
    .Replace('ORDER BY Pay.FixedCalculated.SalaryID;', S);

  S := 'union all' +
    ' SELECT 0 as FunctionID ,2147483647 as SalaryID ,''23‏% حق بيمه كارفرما'' as InfoName_L1 '
    + ' , sum(Price) AS SumPrice,0 asLoanRemain' +
    ',''Insurance'' as InfoName_L2 ,0 as calculatekind,0 as SalaryIDMounthRetard '
    + ' FROM Pay.FixedCalculated' +
    ' WHERE (ArchiveID = :ShareArchiveID and ShowListKind in(4,14)) AND (Mounth = :MounthShare)';
  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    S := S + ' AND((FixedCalculated.subcompanyCode = 0)OR(FixedCalculated.subcompanyCode = '
      + FcompanyCodeLogin.ToString + ' ))';
  end;
  S := S + ' AND (Pay.FixedCalculated.YearID = ' + IntToStr(APPBank.Year) +
    '  ) AND (Pay.FixedCalculated.Years = ' + optP.Year + '  )'

    + ' AND (LabelID BETWEEN :LabelIDShareFrom ANd :LabelIDShareTo)' +
    ' AND (PersonelNO = :PersonelNOShare)' + ' GROUP BY PersonelNO' +
    ' ORDER BY SalaryID';
  // qryDecs.SQL.Text := StringReplace(qryDecs.SQL.Text, 'ORDER BY SalaryID', S,
  // [rfReplaceAll]);
  // qryDecs.SQL.Text := StringReplace(qryDecs.SQL.Text,
  // 'ORDER BY Pay.FixedCalculated.SalaryID', S, [rfReplaceAll]);

  qryDecs.SQL.Add(S);
end;

procedure TListSalaryF.qryPersonelsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text := 'تعداد پرسنل = ' +
    IntToStr(qryPersonels.RecordCount);

end;

procedure TListSalaryF.FormResize(Sender: TObject);
begin
  inherited;
  DBGrid3.Height := (Panel7.Height * 2) div 5;
  pnlPersonel.Width := (Panel3.Width) div 3;
  pnlFun.Width := (Panel3.Width) div 3;
end;

procedure TListSalaryF.qryWagesCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
end;

procedure TListSalaryF.rdgrpEmailClick(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TListSalaryF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TListSalaryF.qryPersonelsAfterScroll(DataSet: TDataSet);
var
  pid: String;
  ArchiveID: Integer;
begin
  inherited;
  if chkAllMounth.Checked then
  begin
    MonthNo := qryPersonelsMonthID.AsInteger;
    ArchiveID := qryPersonelsArchiveID.AsInteger;
  end
  else
    ArchiveID := Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);

  pid := DataSet.FieldByName('PersonelNo').AsString;
  if InterdictItemSumSalary then
  begin
    with qryItemsSum do
    begin
      Active := False;
      Parameters.ParamByName('InterdictID').Value :=
        DataSet.FieldByName('InterdictID').Value;
      Parameters.ParamByName('FunctionDay').Value := 30;

      // ShowQryParam(qryItemsSum);
      Active := True;
    end;
    with qryWagesSum do
    begin
      Active := False;
      Parameters.ParamByName('Mounth1').Value := MonthNo;
      Parameters.ParamByName('Mounth2').Value := MonthNo;
      Parameters.ParamByName('Mounth3').Value := MonthNo;

      Parameters.ParamByName('ArchiveID1').Value := ArchiveID;
      Parameters.ParamByName('LabelID1From').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
      Parameters.ParamByName('LabelID1To').Value :=
        GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);

      Parameters.ParamByName('ArchiveID2').Value := ArchiveID;
      Parameters.ParamByName('LabelID2From').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
      Parameters.ParamByName('LabelID2To').Value :=
        GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);

      Parameters.ParamByName('ArchiveID3').Value := ArchiveID;
      Parameters.ParamByName('LabelID3From').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
      Parameters.ParamByName('LabelID3To').Value :=
        GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);

      Parameters.ParamByName('PersonelNO1').Value := pid;
      Parameters.ParamByName('PersonelNO2').Value := pid;
      Parameters.ParamByName('PersonelNO3').Value := pid;
      // ShowQryParam(qryWagesSum);
      Active := True;
    end; // with

  end;

  with qryLoan do
  begin
    Active := False;
    Parameters.ParamByName('Month').Value := MonthNo + 1;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('PersonelNoFrom').Value := pid;
    Parameters.ParamByName('PersonelNoTo').Value := pid;
    Active := True;
  end; // with

  with qryFunctionsItem do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('YearIDFROM').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('InfoIDFrom').Value := 0;
    Parameters.ParamByName('InfoIDTo').Value := 999;
    Parameters.ParamByName('OffTimeInFish').Value := optP.OffTimeInFish;
    Parameters.ParamByName('PersonelNo').Value := pid;
    Parameters.ParamByName('PersonelNo2').Value := pid;
    // Parameters.ParamByName('PersonelNoFrom2').Value:=pid;
    // Parameters.ParamByName('PersonelNoTo2').Value:=pid;
    if optP.InterdictItem4ListSalary <> EmptyStr then
      Parameters.ParamByName('InterdictID').Value :=
        DataSet.FieldByName('InterdictID').Value;

    Active := True;
    /// 4 print

  end; // with

  // Application.ProcessMessages;
  with qryFunctions do // 1
  begin
    DisableControls;
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    Parameters.ParamByName('PersonelNo').Value := pid;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    EnableControls;
  end; // with

  with qryWages do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo1').Value := MonthNo;
    Parameters.ParamByName('MonthNo2').Value := MonthNo;
    Parameters.ParamByName('MonthNo3').Value := MonthNo;
    Parameters.ParamByName('MonthNo4').Value := MonthNo;

    Parameters.ParamByName('YearID2').Value := APPBank.Year;
    Parameters.ParamByName('YearID3').Value := APPBank.Year;
    Parameters.ParamByName('YearID4').Value := APPBank.Year;

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    // change by mostafa  95/10/15
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    if ClintShare23 then
    begin
      Parameters.ParamByName('MonthNoShare').Value := MonthNo;
      Parameters.ParamByName('ShareArchiveID').Value := ArchiveID;
      Parameters.ParamByName('LabelIDShareFrom').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
      Parameters.ParamByName('LabelIDShareTo').Value :=
        GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    end;

    Parameters.ParamByName('c_PersonelNo1').Value := pid;
    // نمايش نشود
    // هردو نمايش شـود
    // عیدی نمايش شـود
    // سنوات نمايش شـود

    if optP.ActAnnuityInlistSalary in [1, 2] then
      Parameters.ParamByName('c_PersonelNo2').Value := pid
    else
      Parameters.ParamByName('c_PersonelNo2').Value := 0;

    if optP.ActAnnuityInlistSalary in [1, 3] then
    begin
      Parameters.ParamByName('c_PersonelNo3').Value := pid;
    end
    else
    begin
      Parameters.ParamByName('c_PersonelNo3').Value := 0;
    end;

    if optP.ActRewardInlistSalary in [1] then
    begin
      Parameters.ParamByName('c_PersonelNo4').Value := pid;
    end
    else
    begin
      Parameters.ParamByName('c_PersonelNo4').Value := 0;
    end;

    if ClintShare23 then
      Parameters.ParamByName('PersonelNoShare').Value := pid;
    Active := True;
  end; // with

  with qryDecs do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('MonthNo3').Value := MonthNo;
    Parameters.ParamByName('MonthNo4').Value := MonthNo;

    Parameters.ParamByName('MonthNo5').Value := MonthNo;

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('YearID4').Value := APPBank.Year;
    Parameters.ParamByName('YearID5').Value := APPBank.Year;
    Parameters.ParamByName('YearID6').Value := APPBank.Year;

    Parameters.ParamByName('c_PersonelNo5').Value := pid;

    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    if ClintShare23 then
    begin
      Parameters.ParamByName('MounthShare').Value := MonthNo;
      Parameters.ParamByName('ShareArchiveID').Value := ArchiveID;
      Parameters.ParamByName('LabelIDShareFrom').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
      Parameters.ParamByName('LabelIDShareTo').Value :=
        GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    end;

    Parameters.ParamByName('c_PersonelNo').Value := pid;
    if ClintShare23 then
      Parameters.ParamByName('PersonelNoShare').Value := pid;

    if optP.ActAnnuityInlistSalary in [1, 2] then
    begin
      Parameters.ParamByName('c_PersonelNo3').Value := pid;
    end
    else
    begin
      Parameters.ParamByName('c_PersonelNo3').Value := 0;
    end;

    if optP.ActRewardInlistSalary in [1, 2] then
    begin
      Parameters.ParamByName('c_PersonelNo4').Value := pid;
    end
    else
    begin
      Parameters.ParamByName('c_PersonelNo4').Value := 0;
    end;

    Active := True;
  end; // with

  if optP.SalaryID4PartMakeBankDSK <> EmptyStr then
  begin
    with qryWagesPart1 do
    begin
      Active := False;
      Parameters := qryWages.Parameters;
      Active := True;
    end;
    with qryWagesPart2 do
    begin
      Active := False;
      Parameters := qryWages.Parameters;
      Active := True;
    end;
    with qryDecsPart1 do
    begin
      Active := False;
      Parameters := qryDecs.Parameters;
      Active := True;
    end;
    with qryDecsPart2 do
    begin
      Active := False;
      Parameters := qryDecs.Parameters;
      Active := True;
    end;
  end;

  InsInvolved := 0;
  TaxInvolved := 0;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT SUM(Price) AS SumTax FROM Pay.FixedCalculated';
    SQL.Add('Where (Mounth = :Mounth) AND (PersonelNO = :Pid)');
    SQL.Add('AND (YearID = :YearID  ) AND (Years = :Years  )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add(' AND (ShowListKind = :Type)');
    SQL.Add('AND (bedbes = 0)  AND (CalCulateKind = 12) ');
    SQL.Add('AND (ArchiveID = :ArchiveID )');
    SQL.Add('AND (LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
    SQL.Add('GROUP BY Mounth, PersonelNO, ShowListKind');

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);

    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('Pid').Value := DataSet['PersonelNo'];
    Parameters.ParamByName('Type').Value := 11;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;

    // if CtrlDown then
    // ShowQryParam(DMF.qryTmpTmpp);

    Active := True;
    TaxInvolved := Fields[0].AsCurrency;
    Active := False;
    SQL.Text := 'SELECT SUM(Price) AS SumTax FROM Pay.FixedCalculated';
    SQL.Add('Where (Mounth = :Mounth) AND (PersonelNO = :Pid)');
    SQL.Add('AND (YearID = :YearID  ) AND (Years = :Years  )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add(' AND (ShowListKind = :Type) AND (BedBes=0)');
    SQL.Add('AND (ArchiveID = :ArchiveID )');
    SQL.Add(' AND (LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
    SQL.Add('GROUP BY Mounth, PersonelNO, ShowListKind');

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);

    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('Pid').Value := DataSet['PersonelNo'];
    Parameters.ParamByName('Type').Value := 3;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;

    // if CtrlDown then
    // ShowQryParam(DMF.qryTmpTmpp);

    Active := True;
    InsInvolved := Fields[0].AsCurrency;
    Active := False;
    SQL.Text := 'SELECT SUM(PersonelDecExt.EmployeeAmount) AS SumPrice';
    SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID');
    SQL.Add('WHERE (FormsInfo.FormType = 111) and (FormsInfo.InfoID <= 10)');
    SQL.Add('AND (PersonelDecExt.PersonelNo = :PersonelNo )');
    SQL.Add('AND (PersonelDecExt.FirstMounth = :MonthNo )');

    SQL.Add('AND (Pay.PersonelDecExt.YearID = :YearID  )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Parameters.ParamByName('PersonelNo').Value := DataSet['PersonelNo'];
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    // if CtrlDown then
    // ShowQryParam(DMF.qryTmpTmpp);

    Active := True;
    TaxInvolved := TaxInvolved + Fields[0].AsCurrency;
    Active := False;

  end; // with

  StatusBar1.Panels[0].Text := 'مشمول بيمه = ' + CurrToStrF(InsInvolved,
    ffCurrency, 0);
  StatusBar1.Panels[1].Text := 'مشمول ماليات = ' + CurrToStrF(TaxInvolved,
    ffCurrency, 0);

  with qryFn_WagesDecs do
  begin
    Active := False;
    Parameters.ParamByName('c_PersonelNo').Value := pid;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    // Parameters.ParamByName('LabelIDFrom').Value :=   ,:LabelIDFrom  , :LabelIDTo
    // GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    // Parameters.ParamByName('LabelIDTo').Value :=
    // GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    Active := True;
  end; // with

  Prepare4Print;
end;

procedure TListSalaryF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if qryPersonelsHasFunction.AsInteger <> 0 then
      DBGrid1.Canvas.Font.Color := lblColor1.Color
    else
      DBGrid1.Canvas.Font.Color := lblColor2.Color;
    if qryPersonelsInterdicEndDate.AsString < CurrentDate then
      DBGrid1.Canvas.Font.Color := LblEndDate.Color;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TListSalaryF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPersonels.FieldByName('PersonelNo'));
end;

procedure TListSalaryF.qryWagesAfterOpen(DataSet: TDataSet);
var
  SalaryId4qryWages2: Largeint;
begin
  inherited;
  SalaryId4qryWages2 := 9223372036854775807;
  with DataSet do
  begin
    DisableControls;
    PersonelTotalWage := 0;
    while not eof do
    begin
      PersonelTotalWage := PersonelTotalWage + DataSet.FieldByName('SumPrice')
        .AsCurrency;
      if (ppDetailBandWage1 <> nil) and (RecNo = ppDetailBandWage1.PrintCount)
      then
        SalaryId4qryWages2 := DataSet.FieldByName('SalaryIDMounthRetard')
          .AsLargeInt;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  txtTotalWage.Text := CurrToStrF(PersonelTotalWage, ffCurrency, 0);

  with qryWages2 do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo1').Value := MonthNo;

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    // Parameters.ParamByName('MonthNo2').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    // change by mostafa  95/10/15
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);

    if ClintShare23 then
    begin
      Parameters.ParamByName('MonthNoShare').Value := MonthNo;
      Parameters.ParamByName('ShareArchiveID').Value := ArchiveID;
      Parameters.ParamByName('LabelIDShareFrom').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
      Parameters.ParamByName('LabelIDShareTo').Value :=
        GetcTo(myParams.ParamValues['LabelID'], Data.DB.ftInteger);
    end;
    Parameters.ParamByName('c_PersonelNo1').Value :=
      qryPersonels.FieldByName('PersonelNo').AsString;
    // Parameters.ParamByName('c_PersonelNo2').Value :=
    // qryPersonels.FieldByName('PersonelNo').AsString;
    Parameters.ParamByName('SalaryIDMounthRetard').Value := SalaryId4qryWages2;

    // change by mostafa  95/10/15
    if ClintShare23 then
      Parameters.ParamByName('PersonelNoShare').Value :=
        qryPersonels.FieldByName('PersonelNo').AsString;
    Active := True;
    Filter := 'InfoName_L1 <>''23‏% حق بيمه كارفرما''';
    if (ppDetailBandWage1 <> nil) then
      Filtered := DataSet.RecordCount <= ppDetailBandWage1.PrintCount;
  end; // with
end;

procedure TListSalaryF.qryWagesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid2.Hint := 'كد=' + DataSet.FieldByName('SalaryID').AsString;
end;

procedure TListSalaryF.qryDecsCalcFields(DataSet: TDataSet);
var
  Value: Double;
begin
  inherited;
  DataSet.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
  // DataSet.fieldbyname('_LoanRemain').Value:=_GetLoanRemain(DataSet.FieldByName('FunctionID').AsInteger);

  // ابتدا مقدار فیلد لوکاپ را بگیر
  if not DataSet.FieldByName('_LoanRemain').IsNull then
  begin
    Value := DataSet.FieldByName('_LoanRemain').AsFloat;
    // حالا آن را سه رقم سه رقم کن
    DataSet.FieldByName('_LoanRemainFormat').AsString :=
      FormatFloat('#,##0', Value);
  end
  else
    DataSet.FieldByName('_LoanRemainFormat').AsString := '';
end;

procedure TListSalaryF.qryDecsAfterClose(DataSet: TDataSet);
begin
  inherited;
  if qryLoan2.Active then
    qryLoan2.close;
end;

procedure TListSalaryF.qryDecsAfterOpen(DataSet: TDataSet);
var
  IntegrateLoanRemain: Boolean;
begin
  inherited;
  IntegrateLoanRemain := DMF.ReadBankConfigPay('IntegrateLoanRemain',
    '0') = '1';
  with DataSet do
  begin
    DisableControls;
    PersonelTotalDecs := 0;
    if IntegrateLoanRemain then
    begin
      qryLoan2.Open;
      qryLoan2.Requery;
    end;
    while not eof do
    begin
      PersonelTotalDecs := PersonelTotalDecs + DataSet.FieldByName('SumPrice')
        .AsCurrency;
      // Edit;
      // DataSet.fieldbyname('_LoanRemain').Value:=_GetLoanRemain(fieldbyname('SalaryID').AsInteger);
      // Post;
      if (IntegrateLoanRemain) AND (qryDecs_LoanRemain.AsCurrency > 0) then
      begin
        with qryLoan2 do
        begin
          Insert;
          qryLoan2LoanRemain.AsCurrency := qryDecs_LoanRemain.AsCurrency;
          qryLoan2InfoName_L1.AsString := qryDecsInfoName_L1.AsString;
          Post;
          // Next;
        end;
      end;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  txtTotalDecs.Text := CurrToStrF(PersonelTotalDecs, ffCurrency, 0);
  EdtPayable.Text := CurrToStrF(PersonelTotalWage - PersonelTotalDecs,
    ffCurrency, 0);
end;

procedure TListSalaryF.qryDecsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid3.Hint := 'كد=' + DataSet.FieldByName('SalaryID').AsString;
end;

procedure TListSalaryF.ppwl1GetText(Sender: TObject; var Text: String);

begin
  inherited;
  { }
end;

procedure TListSalaryF.ppLabel13GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := txtTotalWage.Text;
end;

procedure TListSalaryF.ppLabel14GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := txtTotalDecs.Text;
end;

procedure TListSalaryF.ppLabel23GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := StatusBar1.Panels[0].Text; // بيمه
end;

procedure TListSalaryF.ppLabel20GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := StatusBar1.Panels[1].Text; // ماليات
end;

procedure TListSalaryF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TListSalaryF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'فيش حقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه ' +
    optP.Year;
end;

procedure TListSalaryF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'صفحه ' + StringReplace(Text, 'of', 'از', []);
end;

procedure TListSalaryF.ppLabel46GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'تاريخ چاپ: ' + var_glb_CurrentDate;
end;

procedure TListSalaryF.ppLabel45GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TListSalaryF.ppLabel34GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'ليست حقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه ' +
    optP.Year;
end;

procedure TListSalaryF.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;
  // PrintTotals;
end;

procedure TListSalaryF.plblKhalesBhorofGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := num2alphabet(StrToInt64(RemoveComma(EdtPayable.Text))) +
    IfThen(ppReportNew.AllowPrintToFile, '', ' ريال');
end;

procedure TListSalaryF.plblWagePart2GetText(Sender: TObject; var Text: string);
var
  c: Int64;
begin
  inherited;
  c := Trunc(CalcSumFileds(qryWagesPart2SumPrice));
  Text := CurrToStrF(c, ffCurrency, 0) + #13#10 + num2alphabet(c);

end;

procedure TListSalaryF.plblWagePartGetText(Sender: TObject; var Text: string);
var
  c: Int64;
begin
  inherited;
  c := Trunc(CalcSumFileds(qryWagesPart1SumPrice));
  Text := CurrToStrF(c, ffCurrency, 0) + #13#10 + num2alphabet(c);
end;

procedure TListSalaryF.plblDessPart2GetText(Sender: TObject; var Text: string);
var
  c: Int64;
begin
  inherited;
  c := Trunc(CalcSumFileds(qryDecsPart2SumPrice));
  Text := CurrToStrF(c, ffCurrency, 0) + #13#10 + num2alphabet(c);

end;

procedure TListSalaryF.plblDessPartGetText(Sender: TObject; var Text: string);
var
  c: Int64;
begin
  inherited;
  c := Trunc(CalcSumFileds(qryDecsPart1SumPrice));
  Text := CurrToStrF(c, ffCurrency, 0) + #13#10 + num2alphabet(c);

end;

procedure TListSalaryF.plblWage_Decs_Part2GetText(Sender: TObject;
  var Text: string);
var
  c: Int64;
begin
  inherited;
  c := Trunc(CalcSumFileds(qryWagesPart2SumPrice) -
    CalcSumFileds(qryDecsPart2SumPrice));
  Text := CurrToStrF(c, ffCurrency, 0) + #13#10 + num2alphabet(c);

end;

procedure TListSalaryF.plblWage_Decs_PartGetText(Sender: TObject;
  var Text: string);
var
  c: Int64;
begin
  inherited;
  c := Trunc(CalcSumFileds(qryWagesPart1SumPrice) -
    CalcSumFileds(qryDecsPart1SumPrice));
  Text := CurrToStrF(c, ffCurrency, 0) + #13#10 + num2alphabet(c);
end;

procedure TListSalaryF.ppDBText1GetText(Sender: TObject; var Text: string);
// var
// S: string;
begin
  inherited;
  // S := Trim(qryPersonelsDSW_JOB.AsString);
  // if S <> EmptyStr then
  // result := VarToStr(qryDSW_JOB.Lookup('Job_Code', S, 'Job_Desc'));
  Text := Get_Job_Desc(qryPersonels)

end;

procedure TListSalaryF.ppDetailBand2AfterGenerate(Sender: TObject);
begin
  inherited;
  // PrintPersonelSalaryInList;
end;

procedure TListSalaryF.vrbFooterGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := FishMsg;
end;

procedure TListSalaryF.ppdlGetText(Sender: TObject; var Text: String);
begin
  inherited;
  { }
end;

procedure TListSalaryF.ppflGetText(Sender: TObject; var Text: String);

begin
  inherited; { }

end;

procedure TListSalaryF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := EdtPayable.Text
end;

procedure TListSalaryF.lblColor1Click(Sender: TObject);
begin
  inherited;
  HasUse((Sender as TLabel).tag);
end;

procedure TListSalaryF.LblEndDateClick(Sender: TObject);
begin
  inherited;
  qryPersonels.Filter := 'InterdicEndDate < ' + CurrentDate;
  qryPersonels.Filtered := not qryPersonels.Filtered;
  if qryPersonels.Filtered then
    LblEndDateC.Caption := 'پرسنل با كاركرد = ' +
      IntToStr(qryPersonels.RecordCount);
end;

procedure TListSalaryF.HasUse(n: Byte);
begin
  with qryPersonels do
  begin

    // if (Filter <> '') then
    // begin
    // if (n = 1) and (Pos('=', Filter) <> 0) then
    // begin
    // Filter := '';
    // Filter := 'HasFunction <> 0';
    // //    FindFirst;
    // Exit;
    // end
    // else if (Filter <> '') and (Pos('<>', Filter) <> 0) then
    // //   if not FindNext then
    // //    Filter := '';
    // if (n = 2) and (Pos('<>', Filter) <> 0) then
    // begin
    // Filter := '';
    // Filter := 'HasFunction = 0';
    // //    FindFirst;
    // Exit;
    // end
    // else if (Filter <> '') and (Pos('=', Filter) <> 0) then
    // //  if not FindNext then
    // //    Filter := '';
    // end
    // else
    begin
      case n of
        1:
          Filter := 'HasFunction <> 0';
        2:
          Filter := 'HasFunction = 0';
      end; // case
      Filtered := not Filtered;
      // FindFirst;
    end; // else
  end; // with
end;

procedure TListSalaryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    Filter4Print := True;
    // Prepare4Print;
    // qryDecs.DisableControls;
    // qryWages.DisableControls;
    // qryWagesSum.DisableControls;
    // qryDecs.DisableControls;
    // qryWages2.DisableControls;
    // qryPersonels.DisableControls;
    // qryFunctions.DisableControls;
    // qryFunctionsItem.DisableControls;
    // qryItemsSum.DisableControls;
    HideSalaryID4ListSalaryOnPrint(qryWages2);
    HideSalaryID4ListSalaryOnPrint(qryDecs);
    HideSalaryID4ListSalaryOnPrint(qryWages);
    FishMsg := ReadConfig(APPID, 'FishMessage', '');
    PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally

  end;
end;

procedure TListSalaryF.actShowFunctionItemsFExecute(Sender: TObject);
var
  Month_No: Byte;
begin
  inherited;
  Month_No := MonthNo - 1;
  CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
  FunctionItemsF.ToolBar1.Buttons[Month_No].Down := True;
  FunctionItemsF.ToolBar1.Buttons[Month_No].Click;
  FunctionItemsF.qryPersonel.Locate('PersonelNo',
    qryPersonels.FieldByName('PersonelNo').AsVariant, [])

end;

procedure TListSalaryF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonels);
end;

procedure TListSalaryF.actSendServerExecute(Sender: TObject);
begin
  inherited;
  popSendToServer.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListSalaryF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonels);
end;

procedure TListSalaryF.actsSendEmailDirectExecute(Sender: TObject);
begin
  inherited;
  rdgrpEmail.ItemIndex := 1;
  SendEmailDirect := True;
  popSendToServer.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListSalaryF.actTelegramExecute(Sender: TObject);
begin
  inherited;
  rdgrpEmail.ItemIndex := 3;
  popTelegram.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListSalaryF.All_PrintClick(Sender: TObject);
begin
  inherited;
  if NAllRecords.Checked then
  begin
    ppPersonels.RangeBegin := rbFirstRecord;
    ppPersonels.RangeEnd := reLastRecord;
  end
  else
  begin
    ppPersonels.RangeBegin := rbCurrentRecord;
    ppPersonels.RangeEnd := reCurrentRecord;
  end;
  InitReportFile(ppReportNew, (Sender as TMenuItem).Hint);
end;

procedure TListSalaryF.ppLbl_flGetText(Sender: TObject; var Text: String);

begin
  inherited;
  { }
end;

procedure TListSalaryF.ppLbl_wl1GetText(Sender: TObject; var Text: String);

begin
  inherited;
  { }
end;

procedure TListSalaryF.ppLbl_dlGetText(Sender: TObject; var Text: String);
begin
  inherited;
  { }
end;

procedure TListSalaryF.N2Click(Sender: TObject);
begin
  inherited;
  FishMsg := ReadConfig(APPID, 'FishMessage', '');
  FishMsg := Get_Box('', 'لطفاً متن پيام زير فيش را وارد كنيد', FishMsg);
  SaveConfig(APPID, 'FishMessage', FishMsg);

end;

procedure TListSalaryF.N5Click(Sender: TObject);
begin
  inherited;
  pmOtherPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListSalaryF.N7Click(Sender: TObject);
var
  sSort: string;
begin
  inherited;
  case (Sender as TMenuItem).tag of
    1:
      begin
        ppPersonels.RangeBegin := rbCurrentRecord;
        ppPersonels.RangeEnd := reCurrentRecord;
      end; // 1
    2:
      begin
        with qryPersonels do
        begin
          sSort := Sort;
          Active := False;
          ChkHasFunction.Checked := True;
          // Parameters.ParamByName('FunctionUsed').Value := 0;
          Active := True;
          Sort := sSort;
        end;
        ppPersonels.RangeBegin := rbFirstRecord;
        ppPersonels.RangeEnd := reLastRecord;
      end; // 2
  end; // case

  try
    qryFunctionsItem.DisableControls;
    qryFunctions.DisableControls;
    qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;
    if (Sender as TMenuItem).Hint = 'ForKaroon' then
    begin
      Prepare4Print;
      InitReportFile(ppReportNew, GetFileName(2));
    end
    else
      InitReportFile(ppReportNew, GetFileName);
  finally
    ResetAfterPrint;
  end; // try

end;

procedure TListSalaryF.mnuEmailClick(Sender: TObject);
var
  DoWhile: Boolean;
  procedure setEmail;
  begin
    ppReportNew.EmailSettings.Recipients.Text :=
      qryPersonels.FieldByName('Email').AsWideString;
    ppReportNew.EmailSettings.Subject := SYSCAPTION + ' > فيش حقوق > ' +
      qryPersonels.FieldByName('Personel_L1').AsWideString;
    ppReportNew.PDFSettings.EmbedFontOptions :=
      [efAllFonts, efFontList, efUseSubset];
    ppReportNew.PDFSettings.FontEncoding := feUnicode;
  end;

begin
  inherited;
  DoWhile := True;
  ppReportNew.DeviceType := TMenuItem(Sender).Hint;
  ppReportNew.EmailSettings.ReportFormat := TMenuItem(Sender).Hint;
  ppPersonels.RangeBegin := rbCurrentRecord;
  ppPersonels.RangeEnd := reCurrentRecord;
  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryFunctionsItem.DisableControls;
    qryFunctions.DisableControls;
    qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;
    case (Sender as TMenuItem).tag of
      1:
        begin
          setEmail;
          InitReportFile(ppReportNew, GetFileName, False, True);
        end;
      2:
        With qryPersonels do
        begin
          First;
          while (not eof) and (DoWhile) do
          begin
            setEmail;
            InitReportFile(ppReportNew, GetFileName, False, True);
            If LastKeyPressed = VK_ESCAPE then
              if get_response('عمليات متوقف شود؟') = mrYes then
              begin
                DoWhile := False;
                LastKeyPressed := 0;
              end;
            LastKeyPressed := 0;
            Next;
          end;
        end;
    end;

  finally
    qryFunctionsItem.EnableControls;
    qryFunctions.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
    CloseMessage;
  end; // try

end;

procedure TListSalaryF.mnuSendToFileClick(Sender: TObject);
var
  DoWhile: Boolean;
  dir: string;
begin
  inherited;
  if not SelectDirectory('لطفاً مسير ذخیره را وارد كنيد:‏', '', dir) then
    Exit;

  DoWhile := True;
  InitReportFile(ppReportNew, GetFileName, False, False);
  ppPersonels.RangeBegin := rbCurrentRecord;
  ppPersonels.RangeEnd := reCurrentRecord;

  ppReportNew.DeviceType := TMenuItem(Sender).Hint;
  ppReportNew.DefaultFileDeviceType := TMenuItem(Sender).Hint;
  ppReportNew.AllowPrintToFile := True;
  ppReportNew.ShowPrintDialog := False;
  ppReportNew.PDFSettings.EmbedFontList.Add('Badr');

  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryFunctionsItem.DisableControls;
    qryFunctions.DisableControls;
    // qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;

    case (Sender as TMenuItem).tag of
      1:
        begin
          ppReportNew.TextFileName := IncludeTrailingPathDelimiter(dir) +
            SalaryFileName(TMenuItem(Sender).Hint);
          // APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) + '000'
          // + qryPersonelsPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
          // (qryPersonelsPersonel_L1.AsString.Trim) +
          // // #254 +qryPersonelsPersonel_L1.AsString.Trim +
          // '.' + TMenuItem(Sender).Hint;;
          ppReportNew.PDFSettings.EmbedFontOptions :=
            [efAllFonts, efFontList, efUseSubset];
          ppReportNew.PDFSettings.FontEncoding := feUnicode;
          ppReportNew.PDFSettings.ImageCompressionLevel := 25;

          // ppReportNew.PDFSettings.CompressionLevel :=
          // TppCompressionLevel(clMax);
          ppReportNew.PDFSettings.ImageCompressionLevel := 1; // best quality
          ppReportNew.PDFSettings.OptimizeImageExport := True;
          ppReportNew.PDFSettings.ScaleImages := True;

          ppReportNew.Print;
          RenameFileI(ppReportNew.TextFileName)

        end;
      2:
        With qryPersonels do
        begin
          First;
          while (not eof) and (DoWhile) do
          begin
            If LastKeyPressed = VK_ESCAPE then
              if get_response('عمليات متوقف شود؟') = mrYes then
              begin
                DoWhile := False;
                LastKeyPressed := 0;
              end;
            LastKeyPressed := 0;
            ppReportNew.TextFileName := IncludeTrailingPathDelimiter(dir) +
              SalaryFileName(TMenuItem(Sender).Hint);
            // APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) +
            // '000' + qryPersonelsPersonelNo.AsString + ' ' +
            // ConvertFarsiToFinglish(qryPersonelsPersonel_L1.AsString.Trim) +
            // // #254 +qryPersonelsPersonel_L1.AsString.Trim +
            // '.' + TMenuItem(Sender).Hint;;

            ppReportNew.PDFSettings.EmbedFontOptions :=
              [efAllFonts, efFontList, efUseSubset];
            ppReportNew.PDFSettings.FontEncoding := feUnicode;
            ppReportNew.Print;
            RenameFileI(ppReportNew.TextFileName);

            // SendTelegramChatID(FieldByName(getChatID).AsString.Trim);

            Next;
          end;
        end;

    end;

  finally
    qryFunctionsItem.EnableControls;
    qryFunctions.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
    CloseMessage;
  end; // try

end;

procedure TListSalaryF.RenameFileI(File_Name: string);
var
  OldName, NewName: string;
begin
  OldName := ReplaceStr(File_Name, '.', '_1.');
  NewName := File_Name;
  RenameFile(OldName, NewName);
end;

procedure TListSalaryF.mnuSendToFileServerClick(Sender: TObject);
var
  DoWhile: Boolean;
  dir, strEmail, FileName, strlog: string;
begin
  inherited;
  if SendEmailDirect then
    dir := __TheTempDIR
  else
  begin
    if not SelectDirectory('لطفاً مسير ذخیره را وارد كنيد:‏', '', dir) then
      Exit;
  end;
  DoWhile := True;
  InitReportFile(ppReportNew, GetFileName, False, False);
  ppPersonels.RangeBegin := rbCurrentRecord;
  ppPersonels.RangeEnd := reCurrentRecord;

  ppReportNew.DeviceType := TMenuItem(Sender).Hint;
  ppReportNew.DefaultFileDeviceType := TMenuItem(Sender).Hint;
  ppReportNew.AllowPrintToFile := True;
  ppReportNew.ShowPrintDialog := False;
  // ppReportNew.PDFSettings.EmbedFontList.Add('Badr');
  // ppReportNew.PDFSettings.EmbedFontList.Add('badr Bold');
  // ppReportNew.PDFSettings.EmbedFontList.Add('BYekan.ttf');

  // '.' + TMenuItem(Sender).Hint;;
  // ppReportNew.PDFSettings.EmbedFontOptions :=
  // [efAllFonts, efFontList, efUseSubset];
  // ppReportNew.PDFSettings.FontEncoding := feUnicode;

  // ppReportNew.PDFSettings.CompressionLevel :=
  // TppCompressionLevel(clMax);
  // ppReportNew.PDFSettings.ImageCompressionLevel := 1; // best quality
  // ppReportNew.PDFSettings.OptimizeImageExport := True;
  // ppReportNew.PDFSettings.ScaleImages := False;

  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryFunctionsItem.DisableControls;
    qryFunctions.DisableControls;
    // qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;

    case (Sender as TMenuItem).tag of
      1:
        begin
          ppReportNew.TextFileName := IncludeTrailingPathDelimiter(dir) +
            SalaryFileName2(TMenuItem(Sender).Hint);

          ppReportNew.PDFSettings.FontEncoding := feUnicode;
          // ScaleImages to False for original quality
          ppReportNew.PDFSettings.ScaleImages := False;
          // I tesred Samim font support for Farsi DIGIT !
          ppReportNew.PDFSettings.EmbedFontOptions := [efAllFonts];

          // ppReportNew.DeviceType := dtPDF;
          // APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) + '000'
          // + qryPersonelsPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
          // (qryPersonelsPersonel_L1.AsString.Trim) +
          // // #254 +qryPersonelsPersonel_L1.AsString.Trim +
          // '.' + TMenuItem(Sender).Hint;;
          //
          // ppReportNew.PDFSettings.EmbedFontOptions :=
          // [efAllFonts, efFontList, efUseSubset];
          // ppReportNew.PDFSettings.FontEncoding := feUnicode;
          ppReportNew.Print;

          if SendEmailDirect then
          begin
            strEmail := qryPersonelsEmail.AsString;
            FileName := ppReportNew.TextFileName;
            // FileName := StringReplace(ppReportNew.TextFileName, '.PNG',              '_1.PNG', []);
            strlog := 'N=' + qryPersonelsPersonelNo.AsString + ',E=' +
              qryPersonelsEmail.AsString + ',M=' + MonthNo.ToString;
            if GlobalPro.SendMail(UserMail.UserName, strEmail,
              APPBank.CompanyName, '', FileName, UserMail.Smtp) then
              add2log(strlog + ' >Send.')
            else
              add2log(strlog + ' <Not Send!?');

            DeleteFile(FileName);
          end
          else
            SendServerFile(ppReportNew.TextFileName, Memo1);

        end;
      2:
        With qryPersonels do
        begin
          First;
          while (not eof) and (DoWhile) do
          begin
            If LastKeyPressed = VK_ESCAPE then
              if get_response('عمليات متوقف شود؟') = mrYes then
              begin
                DoWhile := False;
                LastKeyPressed := 0;
              end;
            LastKeyPressed := 0;
            ppReportNew.TextFileName := IncludeTrailingPathDelimiter(dir) +
              SalaryFileName2(TMenuItem(Sender).Hint);

            ppReportNew.PDFSettings.FontEncoding := feUnicode;
            // ScaleImages to False for original quality
            ppReportNew.PDFSettings.ScaleImages := False;
            // I tesred Samim font support for Farsi DIGIT !
            ppReportNew.PDFSettings.EmbedFontOptions := [efAllFonts];

            // ppReportNew.DeviceType := dtPDF;

            // ppReportNew.PDFSettings.EmbedFontOptions :=
            // [efAllFonts, efFontList, efUseSubset];
            // ppReportNew.PDFSettings.FontEncoding := feUnicode;
            ppReportNew.Print;

            if SendEmailDirect then
            begin
              strEmail := qryPersonelsEmail.AsString;
              FileName := ppReportNew.TextFileName;
              // FileName := StringReplace(ppReportNew.TextFileName, '.PNG',                '_1.PNG', []);

              strlog := 'N=' + qryPersonelsPersonelNo.AsString + ',E=' +
                qryPersonelsEmail.AsString + ',M=' + MonthNo.ToString;
              if GlobalPro.SendMail(UserMail.UserName, strEmail,
                APPBank.CompanyName, '', FileName, UserMail.Smtp) then
                add2log(strlog + ' >Send.')
              else
                add2log(strlog + ' <Not Send!?');

              DeleteFile(FileName);

            end
            else
              SendServerFile(ppReportNew.TextFileName, Memo1);

            Next;
          end;
        end;

    end;

  finally
    qryFunctionsItem.EnableControls;
    qryFunctions.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
    CloseMessage;
    SendEmailDirect := False;
  end; // try

end;

function TListSalaryF.SalaryFileName(fileExtension: string): string;
begin
  if fileExtension = 'JPEG' then
  begin
    result := qryPersonelsPersonelNo.AsString + '.' + fileExtension;
    result := ReplaceStr(result, '.JPEG', '.jpg');
  end
  else
    result := APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) +
      '000' + qryPersonelsPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
      (qryPersonelsPersonel_L1.AsString.Trim) + '.' + fileExtension;

end;

function TListSalaryF.SalaryFileName2(fileExtension: string): string;
begin
  result := 'PR_' + qryPersonelsNationalID.AsString + '_' +
    APPBank.Year.ToString + '_' + RightStr('0' + MonthNo.ToString, 2) + '_' +
    FcompanyCode.ToString + IfThen(fileExtension = 'PDF', '_1', '') + '.' +
    fileExtension;
end;

procedure TListSalaryF.mnuTelegramClick(Sender: TObject);
var
  DoWhile: Boolean;
  dir: string;
begin
  inherited;
  if not SelectDirectory('لطفاً مسير ذخیره را وارد كنيد:‏', '', dir) then
    Exit;

  DoWhile := True;
  InitReportFile(ppReportNew, GetFileName, False, False);
  ppPersonels.RangeBegin := rbCurrentRecord;
  ppPersonels.RangeEnd := reCurrentRecord;

  ppReportNew.DeviceType := TMenuItem(Sender).Hint;
  ppReportNew.DefaultFileDeviceType := TMenuItem(Sender).Hint;
  ppReportNew.AllowPrintToFile := True;
  ppReportNew.ShowPrintDialog := False;

  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryFunctionsItem.DisableControls;
    qryFunctions.DisableControls;
    // qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;

    case (Sender as TMenuItem).tag of
      1:
        PrintSendTelegramChatID(dir, TMenuItem(Sender).Hint);
      2:
        With qryPersonels do
        begin
          First;
          while (not eof) and (DoWhile) do
          begin
            If LastKeyPressed = VK_ESCAPE then
              if get_response('عمليات متوقف شود؟') = mrYes then
              begin
                DoWhile := False;
                LastKeyPressed := 0;
              end;
            LastKeyPressed := 0;
            PrintSendTelegramChatID(dir, TMenuItem(Sender).Hint);

            Next;
          end;
        end;
    end;

  finally
    qryFunctionsItem.EnableControls;
    qryFunctions.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
    CloseMessage;
  end; // try

end;

procedure TListSalaryF.PrintSendTelegramChatID(dir, FileType: string);
var
  lPDFDevice: TppPDFDevice;
  lPNGDevice: TppPNGDevice;
  lDeviceStream: TMemoryStream;

  Fname, FileName: string;
begin
  With qryPersonels do
  begin
    Fname := IncludeTrailingPathDelimiter(dir) + APPBank.Year.ToString +
      RightStr('0' + MonthNo.ToString, 2) + '000' +
      qryPersonelsPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
      (qryPersonelsPersonel_L1.AsString.Trim);
    ppReportNew.TextFileName := Fname + '.' + FileType;

    FileName := Fname + IfThen(Pos('pdf', LowerCase(FileType)) > 0, '', '_1') +
      '.' + FileType;

    /// ///////////////////////////////////////////////////
    If (Pos('pdf', LowerCase(FileType)) > 0) Then
    begin

      lPDFDevice := TppPDFDevice.Create(Self);

      lPDFDevice.PDFSettings := ppReportNew.PDFSettings;
      lPDFDevice.PDFSettings.OpenPDFFile := True;

      lPDFDevice.PDFSettings.EmbedFontOptions :=
        [efAllFonts, efFontList, efUseSubset];
      lPDFDevice.PDFSettings.FontEncoding := feUnicode;
      lPDFDevice.PDFSettings.ScaleImages := False;
      // lPDFDevice.PDFSettings.EmbedFontList.Add('Badr');
      // lPDFDevice.PDFSettings.EmbedFontList.Add('Zar');

      lPDFDevice.FileName := FileName;
      lPDFDevice.Publisher := ppReportNew.Publisher;
      ppReportNew.PrintToDevices;

      lPDFDevice.Free;

    end
    else
    begin
      lDeviceStream := TMemoryStream.Create;
      lPNGDevice := TppPNGDevice.Create(Self);
      try
        lPNGDevice.Scale := 2;
        lPNGDevice.OutputStream := lDeviceStream;
        lPNGDevice.Publisher := ppReportNew.Publisher;
        ppReportNew.PrintToDevices;
        FileName := ReplaceStr(FileName, '.JPEG', '.jpg');
        lDeviceStream.SaveToFile(FileName);
      finally
        lPNGDevice.Free;
        lDeviceStream.Free;
      end;
    end;

    // ppReportNew.Print;

    SendTelegramChatID(FieldByName(getChatID).AsString, FileName, getApiName);
  end;

end;

function TListSalaryF.getChatID: string;
begin
  case rdgrpEmail.ItemIndex of
    3:
      result := 'TelegramChatID';

    4:
      result := 'BaleChatID';
  else
    result := 'TelegramChatID'
  end;
end;

function TListSalaryF.getApiName: tApiName;
begin
  case rdgrpEmail.ItemIndex of
    3:
      result := AiTelegram;

    4:
      result := AiBale;
  else
    result := AiTelegram
  end;

end;

procedure TListSalaryF.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  NAllRecords.Checked := not NAllRecords.Checked;
end;

procedure TListSalaryF.Panel2Click(Sender: TObject);
var
  IdIMAP: TIdIMAP4;
  IdMessage: TIdMessage;
  // IdEmAddrItm: TIdEmailAddressItem;
  aSSL: TIdSSLIOHandlerSocketOpenSSL;

begin
  inherited;
  IdIMAP := TIdIMAP4.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  aSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  IdIMAP.IOHandler := aSSL;
  IdMessage.From.Name := 'My name';
  IdMessage.From.Address := UserMail.UserName;
  IdMessage.Sender.Name := 'My name';
  IdMessage.Sender.Address := UserMail.UserName;
  IdMessage.Subject := 'This is the subject';
  IdMessage.Body.Text := 'This is the body';
  // IdEmAddrItm := IdMessage.BccList.Add;
  // IdEmAddrItm.Name := 'Your name';
  // IdEmAddrItm.Address := 'aabedi25@gmail.COM';
  IdIMAP.Port := UserMail.Port;
  IdIMAP.Host := UserMail.Smtp;

  IdIMAP.UserName := UserMail.UserName;
  IdIMAP.Password := UserMail.pass;
  IdIMAP.Connect(True);
  // try
  IdIMAP.SendMsg(IdMessage);
  IdIMAP.Disconnect;
  // Unexpected: Non-last response line (i.e. a data    line)did not Start
  // with a * , offending line: From
  // : BAD No such command as " " Arni " except on E
  // : Exception do
  // memo1.lines.Add(E.Message);
  // end;
  IdMessage.Free;
  IdIMAP.Free;
end;

procedure TListSalaryF.qryFunctionsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFunctionsItem do
  begin
    Active := False;
    if optP.InterdictItem4ListSalary <> EmptyStr then
      Parameters.ParamByName('InterdictID').Value :=
        qryPersonelsInterdictID.AsInteger;
    Active := True;
  end; // with

  if InterdictItemSumSalary then
  begin
    with qryItemsSum do
    begin
      Active := False;
      Parameters.ParamByName('InterdictID').Value :=
        qryPersonels.FieldByName('InterdictID').Value;
      Parameters.ParamByName('FunctionDay').Value :=
        qryFunctionsFunctionDay.AsInteger;
      // ShowQryParam(qryItemsSum);
      Active := True;
    end;

  end;
end;

procedure TListSalaryF.ChkHasFunctionClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TListSalaryF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TListSalaryF.pplblNum2AlphaGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Trim(EdtPayable.Text);
  if Text = '0' then
    Exit;
  Text := num2alphabet(StrToInt64(RemoveComma(Text))) +
    IfThen(ppReportNew.AllowPrintToFile, '', ' ريال')
end;

procedure TListSalaryF.ppLbTotalWageGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := txtTotalWage.Text;
end;

procedure TListSalaryF.ppLblTotalDecsGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := txtTotalDecs.Text;
end;

procedure TListSalaryF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  PopMnuOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListSalaryF.chkAllMounthClick(Sender: TObject);
begin
  inherited;
  ToolBar1.Enabled := not chkAllMounth.Checked;
  UpdateList;
end;

procedure TListSalaryF.ActShowInterdictExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActInterdictsF.Execute then
    InterdictsF.qryInterdicts.Locate('PersonelNo',
      qryPersonels.FieldByName('PersonelNo').AsVariant, [])
end;

procedure TListSalaryF.ActPersonelInfoFExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryPersonels.FieldByName('PersonelNo').AsInteger, [])
end;

procedure TListSalaryF.ChkEndDateClick(Sender: TObject);
begin
  inherited;
  With qryPersonels do
  begin
    Filter := 'InterdicEndDate>=' + CurrentDate;
    Filtered := ChkEndDate.Checked;
  end;
end;

procedure TListSalaryF.qryFunctionsItemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid5.Hint := 'كد=' + DataSet.FieldByName('SalaryID').AsString;
  DBGrid5.Hint := DBGrid5.Hint + #13#10 + DataSet.FieldByName('InfoName_L1')
    .AsString + #13#10 + DataSet.FieldByName('RemainDayDec').AsString + #13#10;
end;

procedure TListSalaryF.Prepare4Print;
var
  FilterString: string;
begin
  if not Filter4Print then
    Exit;
  FilterString := DMF.ReadBankConfigPay('DecExtInFishPrint', ' ');
  if StringReplace(FilterString, ' ', '', [rfReplaceAll]) = '' then
    Exit;
  try
    with qryDecs do
    begin
      Filter := 'SalaryID <> ' + StringReplace(FilterString, ',',
        ' AND SalaryID <>', [rfReplaceAll]);
      Filtered := True;
      qryOtherDecWage.close;
      qryOtherDecWage.Open;
      sumBed := 0;
      SumBes := 0;
      while not eof do
      begin
        with qryOtherDecWage do
        begin
          Insert;
          qryOtherDecWageSalaryID.AsInteger := qryDecsSalaryID.AsInteger;
          qryOtherDecWageInfoName_L1.AsString := qryDecsInfoName_L1.AsString;
          qryOtherDecWageSumPriceBed.AsCurrency := qryDecsSumPrice.AsCurrency;
          sumBed := sumBed + qryDecsSumPrice.AsCurrency;
          Post;
        end;
        Next;
      end;
    end;
    with qryWages do
    begin
      Filter := qryDecs.Filter;

      Filtered := True;
      while not eof do
      begin
        with qryOtherDecWage do
        begin
          Insert;
          qryOtherDecWageSalaryID.AsInteger := qryWagesSalaryID.AsInteger;
          qryOtherDecWageInfoName_L1.AsString := qryWagesInfoName_L1.AsString;
          qryOtherDecWageSumPriceBes.AsCurrency := qryWagesSumPrice.AsCurrency;
          SumBes := SumBes + qryOtherDecWageSumPriceBes.AsCurrency;
          Post;
        end;
        Next;
      end;
    end;
  finally
    with qryDecs do
    begin
      Filtered := False;
      Filter := 'SalaryID = ' + StringReplace(FilterString, ',',
        ' OR SalaryID =', [rfReplaceAll]);
      Filtered := True;
    end;
    with qryWages do
    begin
      Filtered := False;
      Filter := qryDecs.Filter;
      Filtered := True;
    end;
  end;
end;

procedure TListSalaryF.ResetAfterPrint;
begin
  if (qryDecs.Filtered AND qryWages.Filtered) then
  begin
    qryDecs.Filtered := False;
    qryWages.Filtered := False;
  end;
  if qryOtherDecWage.Active then
    qryOtherDecWage.close;

  Filter4Print := False;
  qryDecs.EnableControls;
  qryWages.EnableControls;
  qryWagesSum.EnableControls;
  qryDecs.EnableControls;
  qryWages2.EnableControls;
  qryPersonels.EnableControls;
  qryFunctions.EnableControls;
  qryFunctionsItem.EnableControls;
  qryItemsSum.EnableControls;
end;

end.
