unit Document;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppRegion, ppCtrls, ppReport, ppStrtch, ppVar,
  ppTypes, ppPrnabl, ppCache, ppProd, DB, ppDB, ppComm, ppRelatv, ppDBPipe,
  Menus, ADODB, DBActns, StdCtrls, DBCtrls, ComCtrls, ToolWin,
  Mask, Buttons, ImgList, ActnList, ExtCtrls, template2MDI,
  ppParameter, ppArchiv, ppModule, ppSubRpt, QuickSearch, MySplitter,
  OleServer, math, FormFunctions, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, raCodMod;

type
  TShowType = (SHOnlyDoc, SHAllDoc);
  THackGrid = class(TCedarDbgrid);

  TInsRow = record
    CanInsert: Boolean;
    BMark: TBookmark;
    Row: Integer;
  end;

  TDocumentF = class(Ttemplate2MDIF)
    Panel4: TPanel;
    qry_Documents: TADOQuery;
    pnlCompony: TPanel;
    qry_Company: TADOQuery;
    Label1: TLabel;
    edtCompanyCode: TDBEdit;
    src_DocGroups: TDataSource;
    DBEdit9: TDBEdit;
    Label5: TLabel;
    edtPrimaryDocNo: TDBEdit;
    Label6: TLabel;
    edtSerial: TDBEdit;
    Label7: TLabel;
    edtStatus: TDBEdit;
    qry_DocTypes: TADOQuery;
    Label8: TLabel;
    src_Documents: TDataSource;
    qry_DocumentsID: TIntegerField;
    qry_DocumentsSerial: TIntegerField;
    qry_DocumentsTopicCode: TLargeintField;
    qry_DocumentsDetailCode: TIntegerField;
    qry_DocumentsCTopicCode: TIntegerField;
    qry_DocumentsCTopicCode2: TIntegerField;
    qry_DocumentsRow: TIntegerField;
    qry_DocumentsAidDocdate: TStringField;
    qry_DocumentsBudgetTopicID: TIntegerField;
    qry_DocumentsBudgetID: TIntegerField;
    qry_DocumentsReferenceNo: TIntegerField;
    qry_DocumentsReferenceTxt: TStringField;
    qry_DocumentsReferenceDate: TStringField;
    qry_DocumentsProjectID: TIntegerField;
    qry_DocumentsReferenceCheck: TWordField;
    qryAccCode: TADOQuery;
    src_AccCode: TDataSource;
    qryAccCodeLevelID_L: TIntegerField;
    qryAccCodeLevelCaption: TStringField;
    qryAccCodePrvLevelID: TIntegerField;
    qryAccCodeCodeLength: TWordField;
    qryAccCodeMoeenName: TStringField;
    qry_Details: TADOQuery;
    qry_CTopics: TADOQuery;
    qry_CTopics2: TADOQuery;
    qry_Categories: TADOQuery;
    qry_Documents_MoeenName_l2: TStringField;
    qry_Documents_DetailName_l2: TStringField;
    qry_Documents_CtopicName_l2: TStringField;
    qry_Documents_CTopicName2_l2: TStringField;
    newPanel: TPanel;
    btnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    btnDel: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    qry_Documents_Radif: TIntegerField;
    SpeedButton1: TSpeedButton;
    actCalculator: TAction;
    actPopMenu: TAction;
    actDocCopy: TAction;
    popCompanies: TPopupMenu;
    actCopyDescArticle: TAction;
    actPasteDescArticle: TAction;
    DataSetDelete1: TDataSetDelete;
    actSearchArticle: TAction;
    StatusBar1: TStatusBar;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    InsertMandeh: TAction;
    qry_CompanyCompanyCode: TIntegerField;
    actCopyArticle: TAction;
    actCheckDocument: TAction;
    pnlWarning: TPanel;
    lblWarnRow: TLabel;
    lblWarning: TLabel;
    imgWarning: TImage;
    imgOK: TImage;
    qry_Documents_HasAid: TIntegerField;
    actPrint1: TAction;
    btnPrint: TBitBtn;
    popPrint: TPopupMenu;
    pop1: TMenuItem;
    pop2: TMenuItem;
    pop3: TMenuItem;
    qry_DocGroups: TADOQuery;
    qry_DocGroupsSerial: TIntegerField;
    qry_DocGroupsCompanyCode: TIntegerField;
    qry_DocGroupsSecondaryDocNo: TIntegerField;
    qry_DocGroupsPrimaryDocNo: TIntegerField;
    qry_DocGroupsDocDate: TStringField;
    qry_DocGroupsDocTypeCode: TIntegerField;
    qry_DocGroupsAttachFolderName: TStringField;
    qry_DocGroupsDocNote: TStringField;
    qry_DocGroups_CompanyName: TStringField;
    qry_DocGroups_DocTypeName: TStringField;
    qry_CompanyLevelID: TIntegerField;
    qry_CompanyMakeDate: TDateTimeField;
    qry_DocGroupsMakeDate: TDateTimeField;
    qry_CompanyCompanyName_L1: TStringField;
    qry_CompanyCompanyName_L2: TStringField;
    qry_CompanyComment_L1: TStringField;
    qry_CompanyComment_L2: TStringField;
    qry_DocGroupsDocNote_L2: TStringField;
    qry_DocumentsBedBes: TIntegerField;
    qry_DocumentscodeKol: TStringField;
    qry_Lookup_Kol: TADOQuery;
    qry_Documents_KolName_l2: TStringField;
    popAddCode: TPopupMenu;
    actFastSearch: TAction;
    BitBtn19: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn6: TBitBtn;
    qry_DocGroups_DocTypeName_L2: TStringField;
    actRollAcc: TAction;
    actDescTemp: TAction;
    asd1: TMenuItem;
    qryAccTopicLevels: TADOQuery;
    qry_Documents_HasBudget: TIntegerField;
    qry_Documents_BudgetTopicID: TIntegerField;
    qry_Documents_ProjectID: TIntegerField;
    qry_DocGroupsUserID: TIntegerField;
    Panel6: TPanel;
    Panel8: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtDocDate: TDBEdit;
    dbedtSecondaryDocNo: TDBEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton5: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    Label19: TLabel;
    edtBed: TEdit;
    edtBes: TEdit;
    qryKindInsertBudget: TADOQuery;
    qry_Documents_Essence: TIntegerField;
    qry_Documents_RepEssence: TIntegerField;
    qry_Documents_LevelID: TIntegerField;
    qry_Documents_LenghtTopic: TIntegerField;
    qry_DocumentsCompanyCode: TIntegerField;
    qry_DocGroupsFirstUser: TStringField;
    qry_DocGroupsSecondUser: TStringField;
    ToolButton16: TToolButton;
    actChangeBedBes: TAction;
    SpeedButton2: TSpeedButton;
    qry_DocumentsCTopicCode3: TIntegerField;
    qry_DocumentsAuditDoPrint: TWordField;
    qry_CTopics3: TADOQuery;
    qry_DocumentsCTopicName3_l2: TStringField;
    actPastLastArticl: TAction;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    mnuPrint: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    ToolButton17: TToolButton;
    actImportExcel: TAction;
    qry_DocumentsComment: TStringField;
    qry_DocumentsComment_L2: TStringField;
    qry_DocGroupsDocTopic_L2: TStringField;
    qry_DocGroupsDocTopic_L1: TStringField;
    qry_DocGroupsDocDateMiladi: TDateTimeField;
    ToolButton18: TToolButton;
    actScan: TAction;
    popScan: TPopupMenu;
    mnuScan: TMenuItem;
    N16: TMenuItem;
    actMoveDoc: TAction;
    actInsertRow: TAction;
    btnInsertRow: TToolButton;
    actStaticComment: TAction;
    actInsert: TAction;
    qry_DocGroupsYearID: TIntegerField;
    actPortion: TAction;
    qryCheck: TADOQuery;
    qry_DocumentsYearID: TIntegerField;
    qry_DocumentsRelatedID: TIntegerField;
    btnRestore: TToolButton;
    actRestore: TAction;
    qry_Documents_MaxCredit: TCurrencyField;
    pnlBottom: TPanel;
    pnl2: TPanel;
    dbtxtSerial: TDBText;
    dbnvgr1: TDBNavigator;
    pnl5: TPanel;
    PanelAid_PO: TPanel;
    pnlAidAmount: TPanel;
    lblAidAmount: TLabel;
    edtAidAmount: TDBEdit;
    pnlAidNo: TPanel;
    lbl5: TLabel;
    edtAidNo: TDBEdit;
    pnlAidDate: TPanel;
    lbl6: TLabel;
    edtAidDate: TDBEdit;
    grp1: TGroupBox;
    mmoDocTopic_L1: TDBMemo;
    aBigPanel: TPanel;
    horooflbl: TLabel;
    actRestValue: TAction;
    actGetExcelMasterDetails: TAction;
    qryAccCodeLevelCaption_l2: TStringField;
    qryAccCodeMoeenName_L2: TStringField;
    qry_Documents_MoeenName: TStringField;
    qry_Documents_DetailName: TStringField;
    qry_Documents_CtopicName: TStringField;
    qry_Documents_CTopicName2: TStringField;
    qry_DocumentsCTopicName3_l1: TStringField;
    qry_Documents_KolName: TStringField;
    qry_DocumentsSumBedBes: TBCDField;
    pnl3: TPanel;
    pnl4: TPanel;
    lbl1: TLabel;
    edtBalance: TEdit;
    pnlBudget: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    edtBudget: TDBEdit;
    edtProject: TDBEdit;
    MySplitter1: TMySplitter;
    actSpecialGetExcel: TAction;
    qry_DocGroupsStatus: TWordField;
    qry_DocGroupsSourceDataBase: TStringField;
    pnlGeneralWarning: TPanel;
    lblWarnCount: TLabel;
    lslWarnings: TListBox;
    qry_DocumentsAidAmount: TFloatField;
    qry_DocumentsAidDocNo: TFMTBCDField;
    ppDetail: TppDBPipeline;
    ppMaster: TppDBPipeline;
    qry_Documents_DetailCurrencyType: TIntegerField;
    pnlCurType: TPanel;
    Label4: TLabel;
    qry_Currencies: TADOQuery;
    qry_DocumentsCurrencyType: TIntegerField;
    qry_Documents_CurrencyName: TStringField;
    dbl_CurrencyName: TDBLookupComboBox;
    actDelete: TAction;
    actPost: TAction;
    ToolButton6: TToolButton;
    actAddFile: TAction;
    actSelectAll: TAction;
    actMultiSelect: TAction;
    ppReport1: TppReport;
    ppParameterList2: TppParameterList;
    qry_CategorieLookup: TADOQuery;
    qry_CategorieLookupTopicCode: TLargeintField;
    qry_CategorieLookupMoeenName: TStringField;
    qry_CategorieLookupPrvTopicCode: TStringField;
    qry_CategorieLookupMoeenName_L2: TStringField;
    qry_Documents_Moeen_2_Name_L1: TStringField;
    qry_Documents_Moeen_2_name_L2: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppComent: TppDBText;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine5: TppLine;
    ppLine18: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLine25: TppLine;
    ppLine30: TppLine;
    ppLine32: TppLine;
    ppLine34: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape2: TppShape;
    ppLine26: TppLine;
    ppLabel17: TppLabel;
    ppDBText7: TppDBText;
    ppLabel18: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppHorof: TppLabel;
    ppLine11: TppLine;
    ppRegion3: TppRegion;
    ppLine12: TppLine;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBText9: TppDBText;
    ppKolname: TppDBText;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText2: TppDBText;
    DBAccName: TppDBText;
    ppLine4: TppLine;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLine29: TppLine;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppGroupFooterBand6: TppGroupFooterBand;
    // raCodeModule1: TraCodeModule;
    ppFooterBand1: TppFooterBand;
    ppRegion4: TppRegion;
    ppLine41: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppPageStyle1: TppPageStyle;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppShape4: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel22: TppLabel;
    ppLabel33: TppLabel;
    ppDocType: TppDBText;
    ppLine24: TppLine;
    ppLabel34: TppLabel;
    ppSecDocNum: TppDBText;
    ppDocDate: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppRegion2: TppRegion;
    ppLine7: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppRecFooterLine2: TppLine;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppLabel19: TppLabel;
    ppLabel16: TppLabel;
    plbl1: TppLabel;
    ppLabel1: TppLabel;
    ppDBText6: TppDBText;
    ppLine9: TppLine;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    // raCodeModule2: TraCodeModule;
    qry_DocumentsCashType: TWordField;
    actGeneralizComment: TAction;
    qrySanama: TADOQuery;
    qry_Documents_FormType: TIntegerField;
    srcSanama: TDataSource;
    qrySanamaTopicCode: TLargeintField;
    qrySanamaFormType: TIntegerField;
    qrySanamaKind: TWordField;
    qrySanamaDefaultValue: TIntegerField;
    qry_DocumentsSanamaID: TWideMemoField;
    ToolButton11: TToolButton;
    actEditSanama: TAction;
    ToolButton12: TToolButton;
    Label10: TLabel;
    DBText1: TDBText;
    btnChangeState: TSpeedButton;
    popChangeState: TPopupMenu;
    mnuChangeState: TMenuItem;
    DBGrid1: TCedarDbgrid;
    grd1: TCedarDbgrid;
    qry_DocumentsPO: TStringField;
    pnlPO: TPanel;
    Label9: TLabel;
    edtPO: TDBEdit;
    ToolButton13: TToolButton;
    ToolButton19: TToolButton;
    actRowDown: TAction;
    actRowUp: TAction;
    plblAidAmountBed: TppLabel;
    plblAidAmountBes: TppLabel;
    mnuZoomPercentage: TMenuItem;
    Label11: TLabel;
    tmr1: TTimer;
    actShowForm: TAction;
    BitBtn1: TBitBtn;
    qryDetailCodeExcel: TADOQuery;
    qry_Documents_BudgetCaption_L1: TStringField;
    qryBudgetCaptions: TADOQuery;
    qry_DocumentsCurrencyDebit: TFMTBCDField;
    qry_DocumentsCurrencyCredit: TFMTBCDField;
    qry_DocumentsCurrencyRate: TFMTBCDField;
    plblHorof: TppLabel;
    plblHorof_Farsi: TppLabel;
    edtCurrencyCredit: TEdit;
    lblCurr: TLabel;
    edtCurrencyDebit: TEdit;
    plblCurrencyDebit: TppLabel;
    plblSumCurrencyCredit: TppLabel;
    qry_DocumentsDebt: TFMTBCDField;
    qry_DocumentsCredit: TFMTBCDField;
    actSourceDataBase: TAction;
    qry_CompanyManagingDirector: TStringField;
    qry_CompanyFinancialManager: TStringField;
    qry_DocGroups_ManagingDirector: TStringField;
    qry_DocGroups_FinancialManager: TStringField;
    procedure qry_DocGroupsStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure src_DocGroupsStateChange(Sender: TObject);
    procedure qry_DocGroupsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure qry_DocGroupsAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure qry_DocumentsBeforePost(DataSet: TDataSet);
    procedure qry_DocumentsBeforePostExcel(DataSet: TDataSet);
    procedure qry_DocGroupsAfterPost(DataSet: TDataSet);
    procedure qry_DocumentsAfterPost(DataSet: TDataSet);
    procedure qry_DocumentsAfterScroll(DataSet: TDataSet);
    procedure qry_DocumentsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtBedClick(Sender: TObject);
    procedure edtBesClick(Sender: TObject);
    procedure qry_DocGroupsBeforeCancel(DataSet: TDataSet);
    procedure qry_DocGroupsBeforeEdit(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCalculatorExecute(Sender: TObject);
    procedure qry_DocumentsAfterDelete(DataSet: TDataSet);
    procedure actPopMenuExecute(Sender: TObject);
    procedure actDocCopyExecute(Sender: TObject);
    procedure actCopyDescArticleExecute(Sender: TObject);
    procedure actPasteDescArticleExecute(Sender: TObject);
    procedure qry_DocGroupsAfterCancel(DataSet: TDataSet);
    procedure actSearchArticleExecute(Sender: TObject);
    procedure qry_DocumentsAfterCancel(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure InsertMandehExecute(Sender: TObject);
    procedure actCopyArticleExecute(Sender: TObject);
    procedure actCheckDocumentExecute(Sender: TObject);
    procedure lblWarningDblClick(Sender: TObject);
    procedure qry_DocGroupsAfterDelete(DataSet: TDataSet);
    procedure qry_DocGroupsBeforeDelete(DataSet: TDataSet);
    procedure ppLblCompanyDescGetText(Sender: TObject; var Text: string);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: string);
    procedure ppLblDocFooterGetText(Sender: TObject; var Text: string);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: string);
    procedure actPrint1Execute(Sender: TObject);
    procedure ppLabel9GetText(Sender: TObject; var Text: string);
    procedure ppDBText9GetText(Sender: TObject; var Text: string);
    procedure ppDBText5GetText(Sender: TObject; var Text: string);
    procedure ppKolnameGetText(Sender: TObject; var Text: string);
    procedure ppLabel8GetText(Sender: TObject; var Text: string);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure lslWarningsDblClick(Sender: TObject);
    procedure actRollAccExecute(Sender: TObject);
    procedure actDescTempExecute(Sender: TObject);
    procedure qry_DocumentsTopicCodeChange(Sender: TField);
    procedure qry_DocGroupsBeforeInsert(DataSet: TDataSet);
    procedure qry_DocumentsDebtChange(Sender: TField);
    procedure qry_DocumentsCreditChange(Sender: TField);
    procedure qry_DocGroupsCompanyCodeChange(Sender: TField);
    procedure ppDocTypeGetText(Sender: TObject; var Text: string);
    procedure DBAccNameGetText(Sender: TObject; var Text: string);
    procedure ppComentGetText(Sender: TObject; var Text: string);
    procedure ppHorofGetText(Sender: TObject; var Text: string);
    procedure qry_DocumentsDetailCodeChange(Sender: TField);
    procedure qry_DocumentsCTopicCodeChange(Sender: TField);
    procedure qry_DocGroupsAfterEdit(DataSet: TDataSet);
    procedure qry_DocGroupsSecondaryDocNoChange(Sender: TField);
    procedure PanelAid_POExit(Sender: TObject);
    procedure actChangeBedBesExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure actPastLastArticlExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure mnuPrintClick(Sender: TObject);
    procedure actImportExcelExecute(Sender: TObject);
    procedure qry_DocumentsBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure qry_DocGroupsDocDateChange(Sender: TField);
    procedure qry_DocumentsCalcFields(DataSet: TDataSet);
    procedure mnuScanClick(Sender: TObject);
    procedure actScanExecute(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: string);
    procedure ppSysVarPageNumGetText(Sender: TObject; var Text: string);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: string);
    procedure qry_DocumentsDetailCodeChangeExcel(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure actMoveDocExecute(Sender: TObject);
    procedure actInsertRowExecute(Sender: TObject);
    procedure actStaticCommentExecute(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure actPortionExecute(Sender: TObject);
    procedure actRestoreExecute(Sender: TObject);
    procedure qry_DocumentsBeforeDelete(DataSet: TDataSet);
    procedure actRestValueExecute(Sender: TObject);
    procedure actGetExcelMasterDetailsExecute(Sender: TObject);
    procedure ppLabel5GetText(Sender: TObject; var Text: string);
    procedure plbl1GetText(Sender: TObject; var Text: string);
    procedure DbaccDetailNameGetText(Sender: TObject; var Text: string);
    procedure edtCompanyCodeKeyPress(Sender: TObject; var Key: Char);
    procedure qry_DocumentsBeforeOpen(DataSet: TDataSet);
    procedure qry_DocumentsCTopicCode2Change(Sender: TField);
    procedure qry_DocumentsCTopicCode3Change(Sender: TField);
    procedure qryAccCodeAfterScroll(DataSet: TDataSet);
    procedure ppDBAccName2GetText(Sender: TObject; var Text: string);
    procedure ppDocDateGetText(Sender: TObject; var Text: string);
    procedure actSpecialGetExcelExecute(Sender: TObject);
    procedure qry_DocGroupsBeforeScroll(DataSet: TDataSet);
    procedure DBGrid1ColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure actDeleteExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actAddFileExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure actMultiSelectExecute(Sender: TObject);
    procedure ppLabelAccNameWithoutCentersGetText(Sender: TObject;
      var Text: string);
    procedure qry_DocumentsCashTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qry_DocumentsCashTypeSetText(Sender: TField; const Text: string);
    procedure actGeneralizCommentExecute(Sender: TObject);
    procedure actEditSanamaExecute(Sender: TObject);
    procedure mnuChangeStateClick(Sender: TObject);
    procedure btnChangeStateClick(Sender: TObject);
    procedure qry_DocGroupsBeforePost(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumnEh);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure grd1DblClick(Sender: TObject);
    procedure actRowDownExecute(Sender: TObject);
    procedure actRowUpExecute(Sender: TObject);
    procedure mnuZoomPercentageClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure qry_DocumentsCurrencyRateChange(Sender: TField);
    procedure qry_DocumentsCurrencyDebitChange(Sender: TField);
    procedure qry_DocumentsCurrencyCreditChange(Sender: TField);
    procedure plblHorofGetText(Sender: TObject; var Text: string);
    procedure plblHorof_FarsiGetText(Sender: TObject; var Text: string);
    procedure plblCurrencyDebitGetText(Sender: TObject; var Text: string);
    procedure plblSumCurrencyCreditGetText(Sender: TObject; var Text: string);
    procedure Panel2Click(Sender: TObject);
    procedure actGetExcelMasterDetails2Execute(Sender: TObject);
    procedure qryDocGrpAfterInsert(DataSet: TDataSet);
    procedure qryDocAfterInsert(DataSet: TDataSet);
    procedure actSourceDataBaseExecute(Sender: TObject);

  private
    qryCategories: TADOQuery;
    HasCurrency, FormType: Integer;
    InsertRow: TInsRow;
    _ShowDocType: Byte;
    bed, bes, CurrencyDebit, CurrencyCredit, mandeh: Extended;
    tmrWarning: TTimer;
    Cloned: TADOQuery;
    SelectedColumn: Byte;
    CopiedArticle: string;
    LastArticleDec: string;
    popNote: TPopupMenu;
    ChkDocEmpty: Boolean;
    DefaultDate: string;
    SumSelValue: Currency;
    ListRecord: TList;
    StaticComment: string;
    FlenKol: Byte;
    getresponseShow: Boolean;
    InsertFromExcel: Boolean;
    ChekPrint: Boolean;
    EditAnotherUser: Boolean;
    CanEditSecondaryDocNo: Boolean;
    SQL_Version: Boolean;
    QryDoc, QryDocGrp: TADOQuery;
    serialExcell: Integer;
    AssignedDocForm: Integer;
    function MakeNewCompanySecNo(cc: Largeint): Largeint;
    // function ChkHasCompany: Integer;
    function ValidateDocument: Boolean;
    function ValidateArticle(CurentRow: Boolean; out ResultMessage: string;
      QryDoc: TADOQuery = nil): Boolean;
    function AddCode(out msg: string): Boolean;
    function CheckAid: Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure InitForm;
    procedure showBigNum(num: Currency; NumberOfDigits: Integer = 0);
    procedure CalculateSummary;
    procedure ShowWarning(msg: string; fault: Boolean = True);
    procedure tmrWarningOnTimer(Sender: TObject);
    procedure StopWarn;
    procedure RefreshPanels;
    procedure CheckUnsaved(filname: string);
    procedure SaveArticlesToFile;
    procedure ShowBalance;
    procedure ChangeArticlesOrder(how: Byte = 0);
    procedure initpop(TopicType: Byte);
    procedure SampelClick(Sender: TObject);
    procedure CompanyClick(Sender: TObject);
    procedure ShowGeneralWarning;
    procedure callAccBook(TypeCode: Byte);
    procedure SampelClickNote(Sender: TObject);
    procedure DocTransation(State: TDataSetState);
    function EssenceCheck(Balance: Currency): Boolean;
    procedure CheckHasAid;
    procedure UpdateCoding;
    procedure SumSelectRow(Column: TColumnEh);
    procedure SaveInLog(FldName, IDFld: TField);
    // procedure UpdateCompany;
    procedure SetRow;
    // procedure UpdateDocumnet(const Cm: Integer);
    procedure RemoveExistRelatedId(DocQry: TADOQuery);
    procedure InitPopNote;
    function GetId(FldName: string): Integer;
    function GetNumberOfDigits(FldName: string): Integer;
    procedure qryDocBeforeInsert(DataSet: TDataSet);
    { Private declarations }
  public
    function checkSecondaryDocNo: Boolean;
    procedure FindDoc(Serial1: Integer; MaliYear: Integer; COmpanyCode: Integer;
      ShowType: TShowType = SHOnlyDoc);
    { Public declarations }
  end;

var
  DocumentF: TDocumentF;

const
  _UnsavedFileName = 'UnsavedDocForParseh.dat';
  _LastRemoveDoc = 'LastRemoveDoc.dat';

implementation

uses
  Dm, GlobalPro, sndkey32, searchCode_ADO, mmessage, shamsiDate, Calculator,
  DocCopy, Main, AccUnits, StrUtils, Details, Categories, accCode2, sort2,
  Rpt_AccBook, Rpt_AccDetailOnTopicBook,
  Rpt_CtopicsOnDetailsBook, Rpt_Ctopics2OnDetailsBook, Types, filter_ADO,
  FilterClass_ADO, GetExcel, SpecialSearchDoc, ScanImage, MoveDoc, DateUtils,
  PortionInDoc, DocRelated2, Resource, GetExcelMasterDetails, ADOInt,
  NumberToWords, DocumentSetting, FaraConsts, infoSMS, HelpShow,
  WorkflowDm, DocSanama, ViewFileOnServer, Rpt_Ctopics3OnDetailsBook;

{$R *.dfm}

procedure TDocumentF.CalculateSummary;
begin
  bed := 0;
  bes := 0;
  CurrencyDebit := 0;
  CurrencyCredit := 0;
  mandeh := 0;

  with Cloned do
  begin
    DisableControls;
    Clone(qry_Documents, ltReadOnly);
    First;
    while not eof do
    begin
      bed := bed + fieldbyname('Debt').AsLargeInt;
      bes := bes + fieldbyname('Credit').AsLargeInt;

      CurrencyDebit := CurrencyDebit + fieldbyname('CurrencyDebit').AsFloat;
      CurrencyCredit := CurrencyCredit + fieldbyname('CurrencyCredit').AsFloat;

      Next;
    end; // while
    EnableControls;
  end; // with

  mandeh := RoundTo(bed - bes, -2);

  if not opta.DecimalActive then
  begin
    // edtBed.Text := CurrToStrF(bed, ffCurrency, 0);
    // edtBes.Text := CurrToStrF(bes, ffCurrency, 0);
    edtBed.Text := FloatToStrF(bed, ffCurrency, 39, 0);
    edtBes.Text := FloatToStrF(bes, ffCurrency, 39, 0);

    StatusBar1.Panels[0].Text := 'مانده ' + CurrToStrF(mandeh, ffCurrency, 0)
  end
  else
  begin
    edtBed.Text := FloatToStr(bed);
    edtBes.Text := FloatToStr(bes);
    StatusBar1.Panels[0].Text := 'مانده ' + FloatToStr(mandeh);

  end;
  edtCurrencyDebit.Text := formatFloat(Change_Format(opta.ArzNumberOfDigits),
    CurrencyDebit);
  // FloatToStrF(CurrencyDebit, ffCurrency, 39,    opta.ArzNumberOfDigits);
  edtCurrencyCredit.Text := formatFloat(Change_Format(opta.ArzNumberOfDigits),
    CurrencyCredit);
  // FloatToStrF(CurrencyCredit, ffCurrency, 39,    opta.ArzNumberOfDigits);

  // edtMandeh.Text:=CurrToStrF(mandeh,ffCurrency,0);
end;

procedure TDocumentF.grd1DblClick(Sender: TObject);
begin
  inherited;
  grd1.Options := grd1.Options + [dgTitles, dgColumnResize, dgEditing] -
    [dgRowSelect];
  grd1.OptionsEh := grd1.OptionsEh + [dghColumnResize, dghColumnMove];
end;

procedure TDocumentF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := DBGrid1.SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := DBGrid1.DataSource.DataSet;
        Key := #0;
        // case curIndex of
        if DBGrid1.Columns[curIndex].FieldName = '_Radif' then // 0:
          nextIndex := GetId('TopicCode');
        if DBGrid1.Columns[curIndex].FieldName = 'CTopicCode3' then // 1:
          nextIndex := IfThen(aDataSet.fieldbyname('_MoeenName_L1')
            .AsString = '', GetId('TopicCode'), GetId('Comment_L1'));
        if DBGrid1.Columns[curIndex].FieldName = 'CTopicCode2' then // 2:
          nextIndex := IfThen(aDataSet.fieldbyname('_MoeenName_L1')
            .AsString = '', GetId('TopicCode'),
            IfThen(HasExpenseCode3(aDataSet.fieldbyname
            (IfThen(opta.CtoipcRelatedKind = 0, 'CTopicCode2', 'TopicCode'))
            .AsInteger), GetId('CTopicCode3'), GetId('Comment_L1')));
        if DBGrid1.Columns[curIndex].FieldName = 'CTopicCode' then // 3:
          if aDataSet.fieldbyname('_MoeenName_L1').AsString = '' then
            nextIndex := GetId('TopicCode')
          else if HasExpenseCode2
            (aDataSet.fieldbyname(IfThen(opta.CtoipcRelatedKind = 0,
            'CTopicCode', 'TopicCode')).AsInteger) then
            nextIndex := GetId('CTopicCode2')
          else if HasExpenseCode3(aDataSet.fieldbyname('TopicCode').AsLargeInt)
            and (opta.CtoipcRelatedKind = 1) then
            nextIndex := GetId('CTopicCode3')
          else
            nextIndex := GetId('Comment_L1');
        if DBGrid1.Columns[curIndex].FieldName = 'DetailCode' then // 4:
          if (qry_Documents.fieldbyname('_MoeenName_L1').AsString = '') then
            nextIndex := GetId('TopicCode')
          else if HasExpenseCode(aDataSet.fieldbyname('TopicCode').AsInteger)
          then
            nextIndex := GetId('CTopicCode')
          else if HasExpenseCode2(aDataSet.fieldbyname('TopicCode').AsLargeInt)
            and (opta.CtoipcRelatedKind = 1) then
            nextIndex := GetId('CTopicCode2')
          else if HasExpenseCode3(aDataSet.fieldbyname('TopicCode').AsLargeInt)
            and (opta.CtoipcRelatedKind = 1) then
            nextIndex := GetId('CTopicCode3')
          else
            nextIndex := GetId('Comment_L1');

        if DBGrid1.Columns[curIndex].FieldName = 'Comment_L1' then // 7:
        begin
          nextIndex := IfThen(aDataSet.fieldbyname('_MoeenName_L1')
            .AsString = '', GetId('TopicCode'), GetId('Comment_L2'));
          ShowBalance;
          if (not(aDataSet.fieldbyname('_FormType').IsNull)) and
            (aDataSet.fieldbyname('SanamaID').IsNull) then
            actEditSanama.Execute;
        end;
        if DBGrid1.Columns[curIndex].FieldName = 'Comment_L2' then // 8:
        begin
          if HasCurrency > 0 then
            nextIndex := GetId('CurrencyType')
          else
            nextIndex := GetId('Debt')

        end;

        if DBGrid1.Columns[curIndex].FieldName = 'CurrencyType' then // 13:
        begin
          nextIndex := GetId('CurrencyDebit')
        end;

        if DBGrid1.Columns[curIndex].FieldName = 'CurrencyDebit' then // 9:
          nextIndex := IfThen(aDataSet.fieldbyname('CurrencyDebit').AsFloat <>
            0, GetId('CurrencyRate'), GetId('CurrencyCredit'));

        if DBGrid1.Columns[curIndex].FieldName = 'CurrencyCredit' then
        begin
          nextIndex := GetId('CurrencyRate')
        end;

        if DBGrid1.Columns[curIndex].FieldName = 'CurrencyRate' then // 13:
        begin
          if aDataSet.fieldbyname('CurrencyDebit').AsFloat <> 0 then
            nextIndex := GetId('Debt')
          else
            nextIndex := GetId('Credit');
        end;

        if DBGrid1.Columns[curIndex].FieldName = 'Debt' then // 9:
          nextIndex := IfThen(aDataSet.fieldbyname('Debt').AsFloat <> 0,
            GetId('AidDocNo'), GetId('Credit'));

        if DBGrid1.Columns[curIndex].FieldName = 'Credit' then // 10:
          nextIndex := IfThen(aDataSet.fieldbyname('BudgetTopicID').AsInteger <>
            0, GetId('BudgetTopicID'), GetId('AidDocNo'));

        if DBGrid1.Columns[curIndex].FieldName = 'AidDocNo' then // 11:
          nextIndex := IfThen(aDataSet.fieldbyname('_MoeenName_L1')
            .AsString = '', GetId('TopicCode'), GetId('AidDocdate'));

        if DBGrid1.Columns[curIndex].FieldName = 'AidDocdate' then // 12:
          nextIndex := IfThen(aDataSet.fieldbyname('_MoeenName_L1')
            .AsString = '', GetId('TopicCode'), GetId('AidAmount'));

        if DBGrid1.Columns[curIndex].FieldName = 'AidAmount' then
          nextIndex := -1;
        //
        // IfThen(aDataSet.fieldbyname('_MoeenName_L1')
        // .AsString = '', GetId('TopicCode'), GetId('CurrencyDebit'));

        // if DBGrid1.Columns[curIndex].FieldName = 'CurrencyDebit' then // 14:
        // nextIndex := IfThen(aDataSet.fieldbyname('_MoeenName_L1')
        // .AsString = '', GetId('TopicCode'),
        // IfThen(aDataSet.fieldbyname('BudgetTopicID').AsInteger <> 0,
        // GetId('BudgetID'), -1));

        if DBGrid1.Columns[curIndex].FieldName = 'BudgetID' then // 15:
          nextIndex := IfThen(aDataSet.fieldbyname('_MoeenName_L1')
            .AsString = '', GetId('TopicCode'),
            IfThen(aDataSet.fieldbyname('BudgetTopicID').AsInteger <> 0,
            GetId('CashType'), -1));
        if DBGrid1.Columns[curIndex].FieldName = 'CashType' then // 16:
          nextIndex := IfThen(aDataSet.fieldbyname('_MoeenName_L1')
            .AsString = '', GetId('TopicCode'), -1);
        if DBGrid1.Columns[curIndex].FieldName = 'BudgetTopicID' then // 5:
        begin
          if aDataSet.fieldbyname('_MoeenName_L1').AsString = '' then
            nextIndex := GetId('TopicCode')
          else
          begin
            if HasDetail(aDataSet.fieldbyname('TopicCode').AsLargeInt) then
              nextIndex := GetId('DetailCode')
            else if HasExpenseCode(aDataSet.fieldbyname('TopicCode').AsInteger)
            then
              nextIndex := GetId('CTopicCode')
            else if HasExpenseCode2(aDataSet.fieldbyname('TopicCode').AsInteger)
              and (opta.CtoipcRelatedKind = 1) then
              nextIndex := GetId('CTopicCode2')
            else if HasExpenseCode3(aDataSet.fieldbyname('TopicCode').AsInteger)
              and (opta.CtoipcRelatedKind = 1) then
              nextIndex := GetId('CTopicCode3')
            else
              nextIndex := GetId('Comment_L1');
          end;
        end;

        if DBGrid1.Columns[curIndex].FieldName = 'TopicCode' then // 6:
        begin
          if (aDataSet.fieldbyname('TopicCode').AsString = '') or
            (aDataSet.fieldbyname('TopicCode').AsFloat = 0) then
            nextIndex := -2
          else
          begin
            if HasBudget(aDataSet.fieldbyname('TopicCode').AsLargeInt) then
              nextIndex := GetId('BudgetTopicID') // 5
            else if HasDetail(aDataSet.fieldbyname('TopicCode').AsLargeInt) then
              nextIndex := GetId('DetailCode') // 4
            else if HasExpenseCode(aDataSet.fieldbyname('TopicCode').AsInteger)
            then
              nextIndex := GetId('CTopicCode') // 3
            else if HasExpenseCode2(aDataSet.fieldbyname('TopicCode').AsInteger)
              and (opta.CtoipcRelatedKind = 1) then
              nextIndex := GetId('CTopicCode2') // 2
            else if HasExpenseCode3(aDataSet.fieldbyname('TopicCode').AsInteger)
              and (opta.CtoipcRelatedKind = 1) then
              nextIndex := GetId('CTopicCode3') // 1
            else
              nextIndex := GetId('Comment_L1'); // 7;
          end; // else
        end; // 5
        // end; // case
        // if curIndex in [1 .. 6] then
        if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
          UpdateCoding;
      end; // #13
    '+':
      if not((LowerCase(DBGrid1.Columns[nextIndex].FieldName) = 'comment_l1') or
        (LowerCase(DBGrid1.Columns[nextIndex].FieldName) = 'comment_l2')) then
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) or
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      if not((LowerCase(DBGrid1.Columns[nextIndex].FieldName) = 'comment_l1') or
        (LowerCase(DBGrid1.Columns[nextIndex].FieldName) = 'comment_l2')) then
      begin
        Key := #0;
        SendKeys('000', false);
      end;
    // *
    #27:
      if DBGrid1.DataSource.DataSet.State in dseditmodes then
        DBGrid1.DataSource.DataSet.Cancel;
    #32, #157:
      // if (curIndex in [1 .. 6]) or (curIndex = 14) then
      if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
      begin
        Key := #0;
        DBGrid1EditButtonClick(Sender);
      end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) or
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= DBGrid1.Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          DBGrid1.SelectedIndex := GetId('TopicCode');
        end; // 0
      -2:
        begin
          if DBGrid1.DataSource.State in dseditmodes then
            DBGrid1.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if DBGrid1.DataSource.State in dseditmodes then
            DBGrid1.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      begin
        DBGrid1.SelectedIndex := nextIndex;
      end;
      if nextIndex in [GetId('CashType')] then // GetId('_CurrencyName'),
      begin
        DBGrid1.EditorMode := True;
        keybd_event(VK_MENU, MapVirtualKey(VK_MENU, 0), 0, 0);
        keybd_event(vk_down, MapVirtualKey(vk_down, 0), 0, 0);
        keybd_event(vk_down, 0, KEYEVENTF_KEYUP, 0);
        keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);
      end;
    end; // case

end;

procedure TDocumentF.qry_DocGroupsStatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case qry_DocGroups.fieldbyname('Status').AsInteger of
    0:
      Text := 'پيش نويس';
    1:
      Text := 'موقت';
    2:
      Text := 'قطعي';
    3:
      Text := 'دائم';
  end; // case
end;

procedure TDocumentF.src_DocGroupsStateChange(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  okPanel.Visible := qry_DocGroups.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  dbedtSecondaryDocNo.ReadOnly := CanEditSecondaryDocNo or newPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  btnChangeState.Enabled := newPanel.Visible;
  if okPanel.Visible then
  begin
    DBGrid1.SortLocal := false;
    DBGrid1.SortTitle := false;
    for i := 0 to DBGrid1.Columns.Count - 1 do
    begin
      DBGrid1.Columns[i].Title.TitleButton := false;
    end;
  end
  else
  begin
    DBGrid1.SortLocal := True;
    DBGrid1.SortTitle := True;
    for i := 0 to DBGrid1.Columns.Count - 1 do
    begin
      DBGrid1.Columns[i].Title.TitleButton := True;
    end;

  end;
  if qry_DocGroups.State in dseditmodes then
    mmoDocTopic_L1.PopupMenu := popNote
  else
    mmoDocTopic_L1.PopupMenu := nil;
  FreeReservedCodes(dmf.adcAccounting, 'Acc.DocGroups');
  StopWarn;
  actDocCopy.Enabled := okPanel.Visible;
end;

procedure TDocumentF.qry_DocGroupsAfterInsert(DataSet: TDataSet);
var
  SecondaryDocNo, serial: Integer;
begin
  inherited;
  qry_DocGroupsFirstUser.AsString := user.name;

  qry_DocGroupsCompanyCode.OnChange := nil;
  if CompanyFilterinLogin then
    qry_DocGroupsCompanyCode.AsInteger := FcompanyCodeLogin
  else
    qry_DocGroupsCompanyCode.AsInteger := opta.DefaultCompany;

  qry_DocGroupsCompanyCode.OnChange := qry_DocGroupsCompanyCodeChange;

  qry_DocGroupsMakeDate.AsDateTime := Now;
  qry_DocGroupsYearID.AsInteger := APPBank.Year;
  if opta.DocDate then
    qry_DocGroupsDocDate.AsString := var_glb_CurrentDate
  else
    qry_DocGroupsDocDate.AsString := DefaultDate;

  qry_DocGroupsDocTypeCode.AsInteger := 10;
  qry_DocGroupsStatus.AsInteger := AssignedDocForm;

  // gv_MultiCompany is false for users restricted to a single company.
  // Keep independent document numbering scoped to that company as well.
  if opta.RestDocCode and (gv_MultiCompany or CompanyFilterinLogin) then
    SecondaryDocNo := GetANewCode(
      Format('Document_SecondaryDocNo_%d',
        [qry_DocGroupsCompanyCode.AsInteger]),
      Format('select max(SecondaryDocNo) from acc.docGroups where (CompanyCode = %d )'
      + ' and (YearID = %d) AND (SecondaryDocNo BETWEEN %d AND %d)',
      [qry_DocGroupsCompanyCode.AsInteger, APPBank.Year, opta.StartLimitID,
      opta.EndLimitID]),
      'SecondaryDocNo', dmf.adcAccounting)
  else
    SecondaryDocNo := GetANewCode('',
      Format('select max(SecondaryDocNo) from acc.docGroups where (YearID = %d) AND (SecondaryDocNo BETWEEN %d AND %d)',
      [APPBank.Year, opta.StartLimitID, opta.EndLimitID]), 'SecondaryDocNo',
      dmf.adcAccounting);

  if SecondaryDocNo < opta.StartLimitID then
    qry_DocGroupsSecondaryDocNo.AsInteger := opta.StartLimitID
  else
    qry_DocGroupsSecondaryDocNo.AsInteger := SecondaryDocNo;

  serial := GetANewCode('',
    Format('select max(serial) from acc.docGroups where (YearID = %d) AND (serial BETWEEN %d AND %d)',
    [APPBank.Year, opta.StartLimitID, opta.EndLimitID]), 'serial',
    dmf.adcAccounting);

  if serial < opta.StartLimitID then
    qry_DocGroupsSerial.AsInteger := opta.StartLimitID
  else
    qry_DocGroupsSerial.AsInteger := serial;

  qry_DocGroupsUserID.AsInteger := user.id;
  ChangeArticlesOrder(_ShowDocType);
  if pnlCompony.Visible then
    edtCompanyCode.SetFocus
  else
    dbedtSecondaryDocNo.SetFocus;
  qryAccCode.Active := false;
  edtBalance.Text := '';
end;

procedure TDocumentF.qry_DocGroupsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryAccCode.Close;
  edtBalance.Text := '0';
end;

function TDocumentF.MakeNewCompanySecNo(cc: Largeint): Largeint;
begin
  // with dmf.qry_Temp do
  // begin
  // Close;
  // sql.Text := 'Select Max(SecondaryDocNo) from acc.DocGroups';
  // sql.Add('where CompanyCode=' + IntToStr(cc));
  // sql.Add('And YearID=' + IntToStr(APPBank.Year));
  // Open;
  // Result := Fields[0].AsInteger + 1;
  // Close;
  // end; // with
  Result := GetANewCode(
    Format('Document_SecondaryDocNo_%d', [cc]),
    Format('select max(SecondaryDocNo) from acc.docGroups where (CompanyCode = %d )'
    + ' and (YearID = %d) AND (SecondaryDocNo BETWEEN %d AND %d)',
    [cc, APPBank.Year, opta.StartLimitID, opta.EndLimitID]), 'SecondaryDocNo',
    dmf.adcAccounting);
  if Result < opta.StartLimitID then
    Result := opta.StartLimitID

end;

procedure TDocumentF.InitForm;
var
  flag, b: Boolean;
  aWhere: string;
  i: SmallInt;
  // pList: TStringList;
  mnu: TMenuItem;
  // Cm: TColumnEh;

begin
  flag := var_glb_Boolean;
  FlenKol := dmf.lenKol;
  StaticComment := EmptyStr;
  pnlCompony.Visible := gv_MultiCompany;
  pnlPO.Visible := opt.PoActive;
  // -------------------------SetCloums------------------------------------------\

  b := dmf.ReadBankConfigAcc('CTopicCode3Active') = '1';
  i := ColumnIndexByFieldName(DBGrid1, 'TopicCode');
  if b then
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'CTopicCode3';
      Index := i;
      ButtonStyle := TCellButtonStyleEh.cbsEllipsis;
    end;

  b := dmf.ReadBankConfigAcc('CTopicCode2Active') = '1';
  i := ColumnIndexByFieldName(DBGrid1, 'TopicCode');
  if b then
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'CTopicCode2';
      Index := i;
      ButtonStyle := TCellButtonStyleEh.cbsEllipsis;
    end;

  b := dmf.ReadBankConfigAcc('CTopicCode1Active') = '1';
  i := ColumnIndexByFieldName(DBGrid1, 'TopicCode');
  if b then
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'CTopicCode';
      Index := i;
      ButtonStyle := TCellButtonStyleEh.cbsEllipsis;
    end;

  b := dmf.ReadBankConfigAcc('DetailCodeActive') = '1';
  i := ColumnIndexByFieldName(DBGrid1, 'TopicCode');
  if b then
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'DetailCode';
      Index := i;
      ButtonStyle := TCellButtonStyleEh.cbsEllipsis;
    end;

  if opta.TopicCaptionActive then
  begin
    qryCategories := TADOQuery.Create(DocumentF);
    With qryCategories do
    begin
      Name := 'qryCategories';
      Connection := dmf.adcAccounting;
      SQL.Text := 'SELECT acc.Categories.TopicCode,';
      SQL.Add(' acc.Categories.MoeenName_L1');
      SQL.Add('FROM acc.Categories LEFT OUTER JOIN');
      SQL.Add('acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode');
      SQL.Add('WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL)');
      LockType := ltReadOnly;
      Active := True;
    end;
    with TStringField.Create(qry_Documents) do
    begin
      FieldName := '_TopicCode';
      FieldKind := fkLookup;
      Required := false;
      DataSet := qry_Documents;
      Name := 'qry_Documents' + FieldName;
      DisplayLabel := 'عنوان معین';
      qry_Documents.FieldDefs.Add(Name, ftString, 100, True);
      Size := 100;
      KeyFields := 'TopicCode';
      LookupDataSet := qryCategories;
      LookUpKeyFields := 'TopicCode';
      LookupResultField := 'MoeenName_L1';
      With DBGrid1.Columns.Add do
      begin
        FieldName := '_TopicCode';
        i := ColumnIndexByFieldName(DBGrid1, 'TopicCode');
        Index := i + 1;
        ReadOnly := True;
      end;
    end;
  end;

  b := dmf.ReadBankConfigAcc('BudgetActive') = '1';
  i := ColumnIndexByFieldName(DBGrid1, 'TopicCode');
  if b then
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'BudgetTopicID';
      Index := i;
      ButtonStyle := TCellButtonStyleEh.cbsEllipsis;
    end;

  i := ColumnIndexByFieldName(DBGrid1, 'Comment_L2'); // for find id
  if opta.CurrencyActive then
  begin
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'CurrencyType';
      ButtonStyle := TCellButtonStyleEh.cbsEllipsis;
      Index := i + 1;
    end;
    With DBGrid1.Columns.Add do
    begin
      FieldName := '_CurrencyName';
      ReadOnly := True;
      Index := i + 2;
    end;
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'CurrencyDebit';
      Index := i + 3;
      Color := edtBed.Color;
    end;
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'CurrencyCredit';
      Index := i + 4;
      Color := edtBes.Color;
    end;
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'CurrencyRate';
      Index := i + 5;
    end;
  end;

  b := dmf.ReadBankConfigAcc('BudgetActive') = '1';
  if b then
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'BudgetID';
      Index := i;
    end;
  if b then
    With DBGrid1.Columns.Add do
    begin
      FieldName := 'CashType';
      Index := i;
    end;

  THackGrid(DBGrid1).DoLoad;

  // ------------------------SetOrderby-------------------------------------------\
  qry_DocumentsDebt.Currency := not opta.DecimalActive;
  qry_DocumentsCredit.Currency := not opta.DecimalActive;
  if opt.primaryLanguage <> 0 then
    DBLookupComboBox1.DataField := '_DocTypeName_L2'
  else
    DBLookupComboBox1.DataField := '_DocTypeName_L1';
  // _PrintDocType:=StrToInt(Dmf.ReadBankConfigAcc('ReportKind'));
  _ShowDocType := StrToInt(dmf.ReadBankConfigAcc('docKind'));
  ChkDocEmpty := StrToInt(dmf.ReadBankConfigAcc('docEmpty')) = 1;
  DefaultDate := var_glb_CurrentDate;
  ToolBar1.Visible := not opta.DocTool;
  CanEditSecondaryDocNo := (CurAccess and Integer(akDocNum)) = 0;

  // if DBGrid1.Columns[13].Visible then
  // pList := TStringList.Create;
  // if opta.CurrencyActive then
  // try
  // with qry_Currencies do
  // begin
  // Active := True;
  // DisableControls;
  // First;
  // while not eof do
  // begin
  // pList.Add(qry_Currencies.fieldbyname('CurrenciesName').AsString);
  // Next;
  // end;
  // DBGrid1.FieldColumns['_CurrencyName'].PickList := pList;
  // EnableControls;
  // end;
  // finally
  // end;
  // pList.Free;
  // popPrint.Items[0].Visible := FileExists(opta.ReportPath + opta.DocReport1);
  // popPrint.Items[1].Visible := FileExists(opta.ReportPath + opta.DocReport2);
  // popPrint.Items[2].Visible := FileExists(opta.ReportPath + opta.DocReport3);
  case APPBank.StatusYear of
    1:
      begin
        btnInsert.Enabled := false;
        btnDel.Enabled := false;
      end;
    2:
      newPanel.Enabled := false;
  end;
  if flag then
  begin
    aWhere := 'where YearID=:Year ';
    if not dmf.CheckLevel(AccessPermanent, FormType, false) then
      Add2Filter(aWhere, 'Status <> 2');
    if not dmf.CheckLevel(AccessCertain, FormType, false) then
      Add2Filter(aWhere, 'Status <> 3');

    if ((opta.ChkSelfDocShow) and
      ((CurAccess and Integer(TMyAccessKind.akSelfDocShow)) = 0)) then
      // if (CurAccess and Integer(TMyAccessKind.akSelfDocShow)) = 0 then
      Add2Filter(aWhere, 'UserID = ' + user.id.ToString);

    if CompanyFilterinLogin then
      Add2Filter(aWhere, 'Acc.DocGroups.companyCode = ' +
        FcompanyCodeLogin.ToString);

    with qry_DocGroups do
      try
        AfterScroll := nil;
        qry_Documents.AfterScroll := nil;
        Close;
        SQL.Text := 'Select * from acc.Docgroups';
        SQL.Add(aWhere);
        SQL.Add('order by secondarydocno,PrimaryDocNo');
        Parameters.ParamByName('Year').Value := APPBank.Year;
        Open;
      finally
        AfterScroll := qry_DocGroupsAfterScroll;
        // qry_Documents.AfterScroll := qry_DocumentsAfterScroll;

        Last;
      end;

    With qry_Company do
    begin
      while not eof do
      begin
        mnu := TMenuItem.Create(popCompanies);
        mnu.Caption := qry_CompanyCompanyName_L1.AsString;
        mnu.Tag := qry_CompanyCompanyCode.AsInteger;
        mnu.OnClick := CompanyClick;

        popCompanies.Items.Add(mnu);
        Next;
      end;
    end;

  end;
  qry_DocTypes.Open;

  DBGrid1.SearchPanel.Enabled := false;
  grd1.SearchPanel.Enabled := false;

end;

procedure TDocumentF.FormCreate(Sender: TObject);
begin
  inherited;
  try
    AssignedDocForm := IfThen(dmf.ReadBankConfigAcc('AssignedDocForm')
      = '0', 0, 1);
    qry_Documents.AfterScroll := nil;
    // SetLookUpCash(qry_DocGroups);
    // SetLookUpCash(qry_Documents);
    SQL_Version := var_SQL_ProductVersion > 10;
    FormType := var_glb_gParam;
    Cloned := TADOQuery.Create(Self);
    tmrWarning := TTimer.Create(Self);
    popNote := TPopupMenu.Create(Self);
    popNote.AutoHotkeys := maManual;
    InitPopNote;
    tmrWarning.Enabled := false;
    tmrWarning.OnTimer := tmrWarningOnTimer;
    // DBGrid1.SetFooter4Sum([]);

    edtCurrencyCredit.Visible := opta.CurrencyActive;
    edtCurrencyDebit.Visible := opta.CurrencyActive;
    lblCurr.Visible := opta.CurrencyActive;

    { The persistent fields used to be fixed at three decimal places in the
      DFM.  Keep their scale in sync with the accounting currency setting so
      values entered with more than three decimals are not rounded by the
      dataset field before posting. }
    qry_DocumentsCurrencyRate.Size := opta.ArzNumberOfDigits;
    qry_DocumentsCurrencyDebit.Size := opta.ArzNumberOfDigits;
    qry_DocumentsCurrencyCredit.Size := opta.ArzNumberOfDigits;

    qry_DocumentsCurrencyRate.DisplayFormat :=
      Change_Format(opta.ArzNumberOfDigits);
    qry_DocumentsCurrencyDebit.DisplayFormat :=
      Change_Format(opta.ArzNumberOfDigits);
    qry_DocumentsCurrencyCredit.DisplayFormat :=
      Change_Format(opta.ArzNumberOfDigits);

    with qry_Company do
    begin
      SQL.Text := 'SELECT * FROM acc.Companies';
      if (CompanyFilterinLogin) and (not user.PowerAdmin) then
        SQL.Add('WHERE companyCode = ' + FcompanyCodeLogin.ToString);
      SQL.Add('order by companycode');
      Open;
    end;

    SumSelValue := 0;
    ListRecord := TList.Create;
    getresponseShow := True;
    InsertFromExcel := false;
    ChekPrint := dmf.ReadBankConfigAcc('CheckPrint', '0') = '1';

    btnChangeState.Visible := (CurAccess and Integer(akChangeState) <> 0);
    actShowForm.Visible := (CurAccess and Integer(akShow) <> 0);
    // QuickSearchF1.Qry := qry_Documents;

    // UseAnalyze := UsedAnalyze();

    DBGrid1.OnTitleClick := nil;
    InitForm;
    DBGrid1.OnTitleClick := DBGrid1TitleClick;

  except
    on e: exception do
    begin
      add2log('Create Doc :' + e.Message);
      Warn('اشکال در باز کردن سند' + e.Message);
    end;
  end;
end;

procedure TDocumentF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 7, false);
end;

procedure TDocumentF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (qry_Documents.fieldbyname('TopicCode').AsString <> '') and
    (qry_Documents.State in dseditmodes) then
    if (qry_Documents.fieldbyname('_MoeenName_L1').AsString = '') and
      (qry_Documents.fieldbyname('TopicCode').AsString <> '0') then
      with dmf.qry_Temp do
      begin
        Active := false;
        SQL.Text :=
          'SELECT TopicCode,MoeenName_L1 ,MoeenName_L2 FROM  acc.Categories where (TopicCode='
          + qry_Documents.fieldbyname('TopicCode').AsLargeInt.ToString +
          ' ) AND (Acc.Categories.Active=1)';
        Active := True;
        if fieldbyname('TopicCode').AsString <> '' then
        begin
          Warn('كد حساب معتبر نيست.' + #13#10 + 'یا کد حساب فعال نیست');
          exit;
        end // if
        else
          qry_Documents.fieldbyname('_MoeenName_L1').AsString :=
            fieldbyname('MoeenName_L1').AsString;
      end; // with
  gridkeyenter(Sender, Key);

end;

procedure TDocumentF.DBGrid1EditButtonClick(Sender: TObject);
var
  // c: String;
  aDataSet: TDataSet;
  TmpChar: Char;
  i, j: SmallInt;
  sqlText: string;
  Results: array [0 .. 5] of string;
begin
  inherited;

  if DBGrid1.ReadOnly then
    exit;

  i := DBGrid1.SelectedIndex;
  aDataSet := DBGrid1.DataSource.DataSet;
  // 960619 - 17:47:49 عابدي - Admin - سند حسابداري : Incorrect syntax near ')'

  // (Sender as TDBGrid).SelectedIndex := i;

  // 960619 - 17:47:49 عابدي - Admin - سند حسابداري : Incorrect syntax near ')'
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;

  if DBGrid1.Columns[i].FieldName = 'BudgetTopicID' then
  begin
    if (aDataSet.fieldbyname('_MoeenName_L1').AsString = '') or CtrlDown then
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'كدهاي بودجه مرتبط با '
        + GetMoeenName(aDataSet.fieldbyname('TopicCode').AsLargeInt),
        'SELECT BudgetTopicID, BudgetCaption_L1, BudgetCaption_L2 FROM Acc.BudgetTopics '
        + ' WHERE (LevelID = (SELECT MAX(LevelID) AS Expr1 FROM Acc.BudgetTopicLevels WHERE (TopicType = 0)))',
        ['کد بودجه', 'عنوان بودجه', 'Caption'], Results, [40, 200, 200], alLeft)
      then
      begin
        aDataSet.fieldbyname('BudgetTopicID').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end;
    end
    else
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'كدهاي بودجه مرتبط با '
        + GetMoeenName(aDataSet.fieldbyname('TopicCode').AsLargeInt),
        ' SELECT Acc.BudgetTopics.BudgetTopicID, Acc.BudgetTopics.BudgetCaption_L1, Acc.BudgetTopics.BudgetCaption_L2'
        + ' FROM Acc.BudgetTopics INNER JOIN' +
                  ' Acc.BudgetTopicRange ON Acc.BudgetTopics.BudgetTopicID = Acc.BudgetTopicRange.BudgetTopicID '
        + ' WHERE (Acc.BudgetTopicRange.TopicCode = ' +
        aDataSet.fieldbyname('TopicCode').AsLargeInt.ToString + ')',
        ['کد بودجه', 'عنوان بودجه', 'Caption'], Results, [40, 200, 200], alLeft)
      then
      begin
        aDataSet.fieldbyname('BudgetTopicID').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end;
    end;
  end;
  if DBGrid1.Columns[i].FieldName = 'TopicCode' then
  begin
    case StrToIntDef(dmf.ReadBankConfigAcc('KindSearchDoc'), 0) of
      0:
        begin
          if shiftDown then
          begin
            sqlText :=
              'SELECT acc.Categories.TopicCode, acc.DetailRange.DetailCode, ' +
              ' MoeenName_l1 + '' - '' + acc.Details.DetailName_L1 AS TopicDesc_L1 , '
              + ' MoeenName_l2 + '' - '' + acc.Details.DetailName_L2 AS TopicDesc_L2  '
              + ' FROM (acc.Categories INNER JOIN acc.DetailRange ON acc.Categories.TopicCode = acc.DetailRange.TopicCode) INNER JOIN acc.Details ON acc.DetailRange.DetailCode = acc.Details.DetailCode'
              + ' WHERE  UseKindInCo = 0 or  acc.Details.CompanyCode = ' +
              qry_DocGroups.fieldbyname('CompanyCode').AsInteger.ToString +
              ') and (acc.Categories.active=1)';
            if searchCode_ADOF.SearchCode2(dmf.adcAccounting,
              'حسابهاي معین  تفصيلي', sqlText, ['كد حساب', 'كد تفصيلي ',
              'عنوان معین ', 'Acc Name '], Results, [80, 70, 350, 350], alLeft)
            then
            begin
              aDataSet.fieldbyname('TopicCode').AsString := Results[0];
              aDataSet.fieldbyname('DetailCode').AsString := Results[1];
              TmpChar := #13;
              gridkeyenter(Sender, TmpChar);
            end; // if
          end
          else
          begin
            sqlText :=
              'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_l1 , acc.Categories.MoeenName_l2 FROM acc.Categories LEFT OUTER JOIN '
              + 'acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
              + 'WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) AND (Acc.Categories.LevelID>=3)'
              + ' AND (Acc.Categories.Active=1)';
            if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'حسابهاي معین',
              sqlText, ['كد حساب', 'شرح', 'acc name '], Results, [80, 250, 250],
              alLeft) then
            begin
              aDataSet.fieldbyname('TopicCode').AsString := Results[0];
              TmpChar := #13;
              gridkeyenter(Sender, TmpChar);
            end; // if
          end;
        end; // 0
      1:
        begin
          sqlText :=
            'SELECT acc.CategoriesForUse.TopicCode, Categories_Before.TopicCode AS BeforeTopicCode,'
            + ' Categories_ToBefore.TopicCode AS TooBeforeTopicCode,' +
            ' acc.CategoriesForUse.MoeenName_L1, acc.CategoriesForUse.MoeenName_L2,'
            + ' Categories_Before.MoeenName_L1 AS BeforeMoeenName_L1 ,' +
            ' Categories_Before.MoeenName_L2 AS BeforeMoeenName_L2,' +
            ' Categories_ToBefore.MoeenName_L1 AS TooBeforeMoeenName_L1 ,' +
            ' Categories_ToBefore.MoeenName_L2 AS TooBeforeMoeenName_L2' +
            ' FROM acc.CategoriesForUse Categories_ToBefore RIGHT OUTER JOIN' +
            ' acc.CategoriesForUse Categories_Before ON Categories_ToBefore.TopicCode = '
            + ' Categories_Before.PrvTopicCode RIGHT OUTER JOIN' +
            ' acc.CategoriesForUse ON Categories_Before.TopicCode = ' +
            ' acc.CategoriesForUse.PrvTopicCode LEFT OUTER JOIN ' +
            ' acc.CategoriesForUse Categories4Null ON Acc.CategoriesForUse.TopicCode ='
            + ' Categories4Null.PrvTopicCode' +
            ' WHERE (Categories4Null.PrvTopicCode IS NULL) AND (Acc.CategoriesForUse.LevelID > 2)'
            + '  AND (Acc.CategoriesForUse.Active=1) ';

          if opt.primaryLanguage <> 0 then
            j := 150
          else
            j := 0;

          if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'حسابهاي معین',
            sqlText, ['كد حساب', 'كد کل', 'كد گروه', 'شرح حساب', 'Acc name ',
            'شرح کل', 'Before acc name ', 'شرح گروه', 'before than acc name '],
            Results, [60, 60, 60, 150, j, 150, j, 150, j], alLeft) then
          begin
            aDataSet.fieldbyname('TopicCode').AsString := Results[0];
            TmpChar := #13;
            gridkeyenter(Sender, TmpChar);
          end;
        end;
      // 1
      2:
        begin
          aDataSet.fieldbyname('TopicCode').AsString :=
            IntToStr(SpecialSearchDocF.Enter);
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end;
    end; // 2
  end;

  if DBGrid1.Columns[i].FieldName = 'DetailCode' then

  begin
    if (aDataSet.fieldbyname('_MoeenName_L1').AsString = '') or CtrlDown then
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'كدهاي تفصيلي',
        'SELECT distinct CompanyCode,DetailCode, DetailName_L1, DetailName_L2 FROM acc.Details'
        + ' where  detailcode <>0  and (  UseKindInCo =0 or  CompanyCode=' +
        qry_DocGroups.fieldbyname('CompanyCode').AsInteger.ToString + ')',
        ['', 'كد تفصيلي', 'نام حساب'], Results, [0, 80, 200], alLeft) then
      begin
        aDataSet.fieldbyname('DetailCode').AsString := Results[1];;
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end; // if
    end
    else
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'كدهاي تفصيلي مرتبط با '
        + GetMoeenName(aDataSet.fieldbyname('TopicCode').AsLargeInt),
        'SELECT distinct acc.Details.CompanyCode, acc.Details.DetailCode, acc.Details.DetailName_L1 , acc.Details.DetailName_L2 FROM acc.Details '
        + 'INNER JOIN acc.DetailRange ON acc.Details.DetailCode = acc.DetailRange.DetailCode '
        + 'WHERE acc.DetailRange.TopicCode=' + aDataSet.fieldbyname('TopicCode')
        .AsLargeInt.ToString +
        ' and  (  UseKindInCo =0 or  acc.Details.CompanyCode=' +
        qry_DocGroups.fieldbyname('CompanyCode').AsInteger.ToString + ')',
        ['', 'كد تفصيلي', 'نام حساب', 'detail name'], Results,
        [0, 80, 200, 200], alLeft) then
      begin
        aDataSet.fieldbyname('DetailCode').AsString := Results[1];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end; // if
    end; // else
  end; // 2
  if DBGrid1.Columns[i].FieldName = 'CTopicCode' then

  begin
    if (aDataSet.fieldbyname('_MoeenName_L1').AsString = '') or CtrlDown then
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'كدهاي تفصیلی 1',
        'SELECT CTopicCode, CTopicName_L1, CTopicName_L2 FROM acc.CenterTopics  where CTopicCode <>0 ',
        ['كد تفصیلی 1', 'نام حساب', 'name'], Results, [150, 250, 250], alLeft)
      then
      begin
        aDataSet.fieldbyname('CTopicCode').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end; // if
    end
    else
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting,
        'كدهاي تفصیلی 1 مرتبط با ' +
        GetMoeenName(aDataSet.fieldbyname('TopicCode').AsLargeInt),
        'SELECT acc.CenterTopics.CTopicCode,acc.CenterTopics.CTopicName_L1,acc.CenterTopics.CTopicName_L2 FROM acc.CenterTopics '
        + 'INNER JOIN acc.CenterTopicRange ON acc.CenterTopics.CTopicCode = acc.CenterTopicRange.CTopicCode '
        + 'WHERE (((acc.CenterTopicRange.TopicCode)=' +
        aDataSet.fieldbyname('TopicCode').AsLargeInt.ToString + '))',
        ['كد تفصیلی 2', 'نام حساب', 'name'], Results, [150, 250, 250], alLeft)
      then
      begin
        aDataSet.fieldbyname('CTopicCode').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end; // if
    end; // else
  end; // 2
  if DBGrid1.Columns[i].FieldName = 'CTopicCode2' then

  begin
    if // (aDataSet.fieldbyname('_CtopicName_l1').AsString = '') or
      CtrlDown then
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'كدهاي تفصیلی 3',
        dmf.sqlSetText(1), ['كد تفصیلی 3', 'نام حساب', 'name'], Results,
        [150, 250, 250], alLeft) then
      begin
        aDataSet.fieldbyname('CTopicCode2').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end; // if
    end
    else
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting,
        'كدهاي تفصیلی 3 مرتبط با ' +
        GetCTopicName(aDataSet.fieldbyname('CTopicCode').AsInteger),
        dmf.sqlSetText(opta.CtoipcRelatedKind + 3) +
        IfThen(opta.CtoipcRelatedKind = 0, aDataSet.fieldbyname('CTopicCode')
        .AsString, aDataSet.fieldbyname('TopicCode').AsString) + '))',
        ['كد تفصیلی 3', 'نام حساب', 'name'], Results, [150, 350, 350], alLeft)
      then
      begin
        aDataSet.fieldbyname('CTopicCode2').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end; // if
    end; // else
  end; // 1

  if DBGrid1.Columns[i].FieldName = 'CTopicCode3' then
  begin
    if
    // (aDataSet.fieldbyname('_CtopicName_l1').AsString = '')  or
      CtrlDown then
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'كدهاي تفصیلی 4',
        dmf.sqlSetText(20), ['كد تفصیلی 4', 'نام حساب', 'name'], Results,
        [150, 350, 350], alLeft) then
      begin
        aDataSet.fieldbyname('CTopicCode3').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end; // if
    end
    else
    begin
      if searchCode_ADOF.SearchCode2(dmf.adcAccounting,
        'كدهاي تفصیلی 4 مرتبط با ' +
        GetCTopicName(aDataSet.fieldbyname('CTopicCode').AsInteger),
        dmf.sqlSetText(opta.CtoipcRelatedKind + 22) +
        IfThen(opta.CtoipcRelatedKind = 0, aDataSet.fieldbyname('CTopicCode2')
        .AsString, aDataSet.fieldbyname('TopicCode').AsString) + ')',
        ['كد تفصیلی 4', 'نام حساب', 'name'], Results, [150, 250, 250], alLeft)
      then
      begin
        aDataSet.fieldbyname('CTopicCode3').AsString := Results[0];
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end; // if
    end; // else
  end; // 1
  if DBGrid1.Columns[i].FieldName = 'BudgetID' then
  begin
    sqlText :=
      ' SELECT Acc.Budgets.BudgetID, Acc.Budgets.BudgetSerial, Acc.Budgets.BudgetDate, Acc.Interfaces.InterfaceCaption_L1, '
      + ' Acc.Budgets.CompanyCode,' +
      ' CASE WHEN Acc.Budgets.Status = 3 THEN ''تاييد شده'' END AS Status ' +
      ' FROM Acc.Budgets INNER JOIN' +
      ' Acc.Interfaces ON Acc.Budgets.InterfaceID = Acc.Interfaces.InterfaceID '
      + ' WHERE (Acc.Interfaces.BudgetEffect = 2) AND (Acc.Budgets.Status = 3) ';
    if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'تعهدات تایید شده',
      sqlText, ['', 'شماره تهعد', 'تاریخ', 'نوع تعهد', 'واحد اجرایی', 'وضعیت'],
      Results, [0, 70, 30, 100, 65, 100], alLeft) then
    begin
      aDataSet.fieldbyname('BudgetID').AsString := (Results[0]);
      TmpChar := #13;
      gridkeyenter(Sender, TmpChar);
    end;
  end;

  if DBGrid1.Columns[i].FieldName = 'CurrencyType' then
  begin
    sqlText := ' SELECT CurrenciesID, CurrenciesName FROM Acc.Currencies ';
    if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'ارزها', sqlText,
      ['کد', 'عنوان ارز'], Results, [65, 100], alLeft) then
    begin
      aDataSet.fieldbyname('CurrencyType').AsString := (Results[0]);
      TmpChar := #13;
      gridkeyenter(Sender, TmpChar);
    end;
  end;

end;

function TDocumentF.ValidateArticle(CurentRow: Boolean;
  out ResultMessage: string; QryDoc: TADOQuery = nil): Boolean;
var
  Q: TADOQuery;
begin
  ResultMessage := EmptyStr;
  Result := false;
  if QryDoc = nil then
    Q := qry_Documents
  else
    Q := QryDoc;

  with Q do
  begin

    if (not SQL_Version) or (CurentRow) then
      With qryCheck do
      begin
        CommandTimeout := 0;
        qryCheck.Close;
        qryCheck.SQL.Text :=
          'select * from acc.CheckAccCode(:TopicCode,:DetailCode,:CtopicCode1,:CtopicCode2,:CtopicCode3) as a ';
        Parameters.ParamByName('TopicCode').Value :=
          Q.fieldbyname('TopicCode').AsString;
        Parameters.ParamByName('DetailCode').Value :=
          Q.fieldbyname('DetailCode').AsInteger;
        Parameters.ParamByName('CtopicCode1').Value :=
          Q.fieldbyname('CTopicCode').AsInteger;
        Parameters.ParamByName('CTopicCode2').Value :=
          Q.fieldbyname('CTopicCode2').AsInteger;
        Parameters.ParamByName('CtopicCode3').Value :=
          Q.fieldbyname('CTopicCode3').AsInteger;
        Open;
      end;

    if not dmf.CheckDetailComapany(Q.fieldbyname('DetailCode').AsInteger,
      qry_DocGroupsCompanyCode.AsInteger) then
    begin
      ResultMessage := 'تفصیلی برای شرکت تعریف نشده است ';
      exit;

    end;
    // if FieldByName('_MoeenName_L1').AsString = EmptyStr then
    // with Dmf.qry_Temp do
    // begin

    if qryCheck.fieldbyname('HassMoeen').AsInteger = 0 then
    begin
      ResultMessage := 'كد حساب معتبر نيست.';
      exit;
      // Abort;
    end; // if
    // end; //with
    if qryCheck.fieldbyname('HassDetail').AsInteger > 0 then
    begin
      if not CompanyFilterinLogin then
        if qryCheck.fieldbyname('IsValidDetailForMoeen').IsNull then
        begin
          // if GetDetailsOfMoeen(Fieldbyname('TopicCode').AsLargeInt).IndexOf(fieldbyname('DetailCode').AsString)=-1 then begin
          DBGrid1.SelectedIndex := GetId('DetailCode');
          ResultMessage := 'كد تفصيلي معتبر نيست.';
          exit;
        end;

    end
    else
    begin
      if not CompanyFilterinLogin then
        if fieldbyname('DetailCode').AsInteger <> 0 then
        begin
          ResultMessage := 'كد تفصيلي ' + fieldbyname('DetailCode').AsString +
            'براي كد حساب ' + fieldbyname('TopicCode').AsString +
            ' معتبر نيست.';
          DBGrid1.SelectedIndex := GetId('DetailCode');
          exit;

        end;

    end; // else not HasDetail

    if qryCheck.fieldbyname('HassCTopic3').AsInteger > 0 then
    begin
      if not CompanyFilterinLogin then
        if qryCheck.fieldbyname('IsValidCTopic3ForCTopics2').IsNull then
        begin
          ResultMessage := 'كد تفصیلی 4 معتبر نيست.';
          DBGrid1.SelectedIndex := GetId('CTopicCode3');
          exit;
        end;
    end
    else
    begin
      if fieldbyname('CTopicCode3').AsInteger <> 0 then
      begin
        ResultMessage := ' كد تفصیلی 4 ' + fieldbyname('CTopicCode3').AsString +
          ' براي كد تفصیلی 3 ' + fieldbyname('CTopicCode2').AsString +
          ' معتبر نيست.';
        DBGrid1.SelectedIndex := GetId('CTopicCode3');
        exit;
      end;
    end;
    // else not HassCTopic3

    if qryCheck.fieldbyname('HassCTopic2').AsInteger > 0 then
    begin
      if not CompanyFilterinLogin then

        if qryCheck.fieldbyname('IsValidCTopic2ForCTopics').IsNull then
        begin
          ResultMessage := 'كد تفصیلی 3 معتبر نيست.';
          DBGrid1.SelectedIndex := GetId('CTopicCode2');
          exit;
        end;
    end
    else
    begin
      if fieldbyname('CTopicCode2').AsInteger <> 0 then
      begin
        ResultMessage := ' كد تفصیلی 3 ' + fieldbyname('CTopicCode2').AsString +
          ' براي كد تفصیلی 2 ' + fieldbyname('CTopicCode').AsString +
          ' معتبر نيست.';
        DBGrid1.SelectedIndex := GetId('CTopicCode2');
        exit;
      end;

    end; // else not HassCTopic3

    if qryCheck.fieldbyname('HassCTopic').AsInteger > 0 then
    begin
      if not CompanyFilterinLogin then
        if qryCheck.fieldbyname('IsValidCTopicForMoeen').IsNull then
        begin
          ResultMessage := 'كد تفصیلی 2 معتبر نيست.';
          DBGrid1.SelectedIndex := GetId('CTopicCode');
          exit;
        end;
    end
    else if fieldbyname('CTopicCode').AsInteger <> 0 then
    begin
      ResultMessage := '__كد تفصیلی 2 ' + fieldbyname('CTopicCode').AsString +
        'براي كد حساب ' + fieldbyname('TopicCode').AsString + ' معتبر نيست.';
      DBGrid1.SelectedIndex := GetId('CTopicCode');
      exit;
    end;

    if (fieldbyname('Debt').AsFloat < 0) or (fieldbyname('Credit').AsFloat < 0)
    then
    begin
      ResultMessage := 'مبلغ منفي معتبر نيست.';
      DBGrid1.SelectedIndex := GetId('Debt');
      exit;
    end; // if

    if (fieldbyname('Debt').AsFloat > 0) and (fieldbyname('Credit').AsFloat > 0)
    then
    begin
      ResultMessage := 'مبلغ بدهكار و بستانكار همزمان وارد شده‌اند.';
      DBGrid1.SelectedIndex := GetId('Debt');
      exit;
    end; // if

    if ChkDocEmpty then
      if (fieldbyname('Debt').AsFloat + fieldbyname('Credit').AsFloat) = 0 then
      begin
        ResultMessage := 'مبلغ وارد نشده ';
        DBGrid1.SelectedIndex := GetId('Debt');
        exit;
      end;
    // if

    if (fieldbyname('Debt').AsString = Null) then
      fieldbyname('Debt').AsFloat := 0;
    if (fieldbyname('Credit').AsString = Null) then
      fieldbyname('Credit').AsFloat := 0;

  end; // with

  Result := True;

end;

function TDocumentF.GetId(FldName: string): Integer;
begin
  Result := ColumnIndexByFieldName(DBGrid1, FldName)
end;

function TDocumentF.GetNumberOfDigits(FldName: string): Integer;
begin
  if ((FldName = 'CurrencyDebit') or (FldName = 'CurrencyCredit')) then
    Result := opta.ArzNumberOfDigits
  else
    Result := 0
end;

procedure TDocumentF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if DBGrid1.SelectedIndex in [GetId('Debt'), GetId('Credit')] then
    if DBGrid1.EditorMode then
      showBigNum(StrToCurrDef(RemoveComma(DBGrid1.InplaceEditor.Text), 0),
        GetNumberOfDigits(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName));

  if DBGrid1.SelectedIndex in [GetId('CurrencyDebit'), GetId('CurrencyCredit')]
  then
    if DBGrid1.EditorMode then
      showBigNum(StrToCurrDef(RemoveComma(DBGrid1.InplaceEditor.Text),
        opta.ArzNumberOfDigits),
        GetNumberOfDigits(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName));

end;

procedure TDocumentF.DBGrid1TitleClick(Column: TColumnEh);
begin
  inherited;
  SelectedColumn := Column.Index;
  if not(Column.Index in [0 .. 5]) then
    // SortTitle(Column)
  else if MainF.MnuAcc_MnuAccCoding.Visible then
  begin
    // case Column.Index of
    // if DBGrid1.Columns[SelectedColumn].FieldName = 'CTopicCode2' then // 2:
    // initpop(2);
    // if DBGrid1.Columns[SelectedColumn].FieldName = 'CTopicCode' then // 3:
    // initpop(1);
    // if DBGrid1.Columns[SelectedColumn].FieldName = 'DetailCode' then // 4:
    if DBGrid1.Columns[SelectedColumn].FieldName = 'TopicCode' then // 5:
      initpop(0)
    else
      CreateMDIForm2(TDetailsF, DetailsF, Self);

    // end; // case
  end;
end;

procedure TDocumentF.showBigNum(num: Currency; NumberOfDigits: Integer = 0);
begin
  // aBigPanel.Caption := CurrToStrF(num, ffCurrency, NumberOfDigits);
  aBigPanel.Caption := formatFloat(Change_Format(opta.ArzNumberOfDigits), num);

  if ((opta.DecimalActive) or (NumberOfDigits > 0)) then
    horooflbl.Caption := ConvertToWords(num, false)
  else
    horooflbl.Caption := num2alphabet(trunc(num));

end;

procedure TDocumentF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := GetId('TopicCode');
  tmr1.Enabled := True;
end;

procedure TDocumentF.DBGrid1CellClick(Column: TColumnEh);
begin
  inherited;
  SumSelectRow(Column);
end;

procedure TDocumentF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  qry_Documents.AfterScroll := qry_DocumentsAfterScroll;
  aBigPanel.Visible := DBGrid1.SelectedIndex in [GetId('Debt'), GetId('Credit'),
    GetId('CurrencyDebit'), GetId('CurrencyCredit')];
  if aBigPanel.Visible then
  begin
    showBigNum(DBGrid1.Columns[DBGrid1.SelectedIndex].Field.AsFloat,
      GetNumberOfDigits(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName));
    aBigPanel.BringToFront;
  end
  else
    aBigPanel.SendToBack;

  if (DBGrid1.SelectedIndex = GetId('Comment_L2')) and (okPanel.Visible) and
    (qry_Documents.fieldbyname('Comment_L1').AsString <> EmptyStr) then
    LastArticleDec := qry_Documents.fieldbyname('Comment_L1').AsString;

  if DBGrid1.SelectedIndex = GetId('TopicCode') then
    SetKeyboardFarsi;
end;

procedure TDocumentF.DBGrid1ColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
begin
  inherited;
  // DBGrid1.Columns[ToIndex].Index := FromIndex;
end;

procedure TDocumentF.qry_DocGroupsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  newPanel.Enabled := ((qry_DocGroupsYearID.AsInteger = APPBank.Year) or
    (qry_DocGroupsYearID.AsInteger = 0));

  with qry_Details do
  begin
    if Parameters.ParamByName('CompanyCode').Value <> qry_DocGroupsCompanyCode.Value
    then
      Close;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_DocGroupsCompanyCode.AsInteger;
    Open;
  end;
  with qry_Documents do
  begin
    Close;
    AfterScroll := nil;
    Parameters.ParamByName('serial').Value := qry_DocGroupsSerial.AsInteger;
    Parameters.ParamByName('YearID').Value := qry_DocGroupsYearID.AsInteger;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_DocGroupsCompanyCode.AsInteger;
    Parameters.ParamByName('LenCodeKol').Value := FlenKol;
    Open;
    AfterScroll := qry_DocumentsAfterScroll;
  end; // with

  actRestValue.Execute;
  RefreshPanels;
  StopWarn;
  CalculateSummary;
  if DataSet.State = dsInsert then
    CheckUnsaved(_UnsavedFileName);
  ChangeArticlesOrder(_ShowDocType);
end;

procedure TDocumentF.FormDestroy(Sender: TObject);
begin
  inherited;
  THackGrid(DBGrid1).DoSave;
  FreeAndNil(Cloned);
  FreeAndNil(popNote);
  FreeAndNil(ListRecord);
  // SaveColWidth(DBGrid1);
  FreeReservedCodes(dmf.adcAccounting, 'Acc.DocGroups', '', '', 1);
end;

procedure TDocumentF.qry_DocumentsBeforePost(DataSet: TDataSet);
var
  msg: string;
  // Cm: Integer;
  b, TopicHasBudget: Boolean;
begin
  inherited;
  if (qry_DocumentsRow.IsNull) or (qry_DocumentsRow.AsString = EmptyStr) then
    qry_DocumentsRow.AsInteger := InsertRow.Row;

  if (qry_Documents_MoeenName.AsString = EmptyStr) and (DataSet.State = dsInsert)
  then
  begin
    DataSet.Cancel;
    Abort;
    exit;
  end;
  // if
  if not CheckAid then
    Abort;
  if qry_DocumentsDebt.AsString = EmptyStr then
    qry_DocumentsDebt.AsFloat := 0;
  if qry_DocumentsCredit.AsString = EmptyStr then
    qry_DocumentsCredit.AsFloat := 0;
  if qry_DocumentsDetailCode.AsString = EmptyStr then
    qry_DocumentsDetailCode.AsFloat := 0;
  if qry_DocumentsCTopicCode.AsString = EmptyStr then
    qry_DocumentsCTopicCode.AsFloat := 0;
  if qry_DocumentsCTopicCode2.AsString = EmptyStr then
    qry_DocumentsCTopicCode2.AsFloat := 0;
  if qry_DocumentsCTopicCode3.AsString = EmptyStr then
    qry_DocumentsCTopicCode3.AsFloat := 0;
  if not opta.DecimalActive then
  begin
    qry_DocumentsDebt.AsLargeInt := (qry_DocumentsDebt.AsLargeInt);
    qry_DocumentsCredit.AsLargeInt := (qry_DocumentsCredit.AsLargeInt);
  end;
  if opta.CheckAccCodeInInsert then
    if not ValidateArticle(True, msg) then
      ShowWarning(msg);

  if DataSet.fieldbyname('RelatedID').AsInteger > 0 then
    Warn('از این کد در آنالیز حساب استفاده شده است .');

  if DataSet.fieldbyname('_HasAid').AsInteger >= 100 then
    CheckReapetedAidNo(DataSet.fieldbyname('Id').AsInteger,
      DataSet.fieldbyname('AidDocNo').AsInteger,
      IfThen(DataSet.fieldbyname('Debt').AsLargeInt > 0, 1, 0));

  if opta.ChkEnterBudget > 0 then
    if DataSet.fieldbyname('_HasBudget').AsInteger > 0 then
    begin
      TopicHasBudget := qryBudgetCaptions.Locate('TopicCode',
        qry_DocumentsTopicCode.AsLargeInt, []);
      b := not qryBudgetCaptions.Locate('TopicCode;BudgetTopicID',
        VarArrayOf([qry_DocumentsTopicCode.AsLargeInt,
        qry_DocumentsBudgetTopicID.AsLargeInt]), []);
      if ((qry_Documents_BudgetCaption_L1.AsString = EmptyStr) and (b)) and
        ((qry_DocumentsBudgetTopicID.AsLargeInt <> 0) or TopicHasBudget) then
      begin
        Warn('کد بودجه وارد نشده');
        Abort;
      end;
    end;

  if (not(DataSet.fieldbyname('_FormType').IsNull)) and
    (DataSet.fieldbyname('SanamaID').IsNull) then
  begin
    actEditSanama.Execute;
    if DataSet.fieldbyname('SanamaID').IsNull then
    begin
      Warn('اطلاعات سناما وارد نشده است');
      Abort;
    end;
  end;
  // if BalancCTopicCode3(qry_Documents) then
  // ShowWarning('سند مورد تأييد است.', false)
  // else
  // begin
  // ShowGeneralWarning;
  // ShowWarning('سند نامعتبر است.');
  // end; // else
  if not ChkCustomerState(qry_Documents) then
    Abort;

end;

procedure TDocumentF.qry_DocumentsBeforePostExcel(DataSet: TDataSet);
begin
  if (qry_DocumentsDebt.AsLargeInt <> (qry_DocumentsDebt.AsLargeInt)) or
    (qry_DocumentsCredit.AsLargeInt <> (qry_DocumentsCredit.AsLargeInt)) then
  begin
    Warn('قبل از دریافت نسبت به رند نمودن اعداد اقدام فرمائید. ');
    Abort;
  end;

end;

procedure TDocumentF.qry_DocGroupsAfterPost(DataSet: TDataSet);
begin
  inherited;
  qry_Documents.UpdateBatch;
  if InsertFromExcel then
  begin
    FreeReservedCodes(dmf.adcAccounting, 'Acc.DocGroups', '', '', 1);
    DeleteFile(__AppData + _UnsavedFileName);
  end;
  qry_Documents.OnCalcFields := qry_DocumentsCalcFields;
  // if opta.ActiveWorkFlow then
  // WorkflowDmF.RunSomeWorkflow(1, qry_DocGroups, ppReport1, opta.DocReport1,
  // qry_DocGroups.fieldbyname('PrimaryDocNo').AsString);

end;

procedure TDocumentF.RemoveExistRelatedId(DocQry: TADOQuery);
var
  qry: TADOQuery;
  Analyze: Boolean;
begin
  qry := TADOQuery.Create(nil);
  qry.Connection := dmf.adcAccounting;
  try
    // if not dmf.adcAccounting.InTransaction then
    // dmf.adcAccounting.BeginTrans;
    with qry do
    begin
      Active := false;
      SQL.Text :=
        Format('SELECT count(*) FROM Acc.DocRelated WHERE Serial = %d AND YearID = %d ',
        [DocQry.fieldbyname('Serial').AsInteger, APPBank.Year]);
      Active := True;
      Analyze := Fields[0].AsInteger > 0;
    end;
    try
      with DocQry do
      begin
        DisableControls;
        if not Analyze then
        begin
          Filter := 'RelatedID >0';
          Filtered := True;
        end;
        First;
        with qry do
        begin
          Active := false;
          SQL.Text :=
            Format('SELECT ID, TopicCode, DetailCode, Debt, Credit, RelatedID FROM Acc.Documents '
            + 'WHERE (YearID = %d) AND (CompanyCode = %d) AND (Serial = %d) ',
            [APPBank.Year, DocQry.fieldbyname('CompanyCode').AsInteger,
            DocQry.fieldbyname('Serial').AsInteger]);
          Active := True;
        end;

        while not eof do
        begin
          if (qry.Locate('ID', fieldbyname('ID').AsInteger, []) = false) then
            Next;
          if (not((qry.fieldbyname('TopicCode').AsInteger = fieldbyname
            ('TopicCode').AsInteger) and (qry.fieldbyname('DetailCode')
            .AsInteger = fieldbyname('DetailCode').AsInteger) and
            (qry.fieldbyname('Debt').AsInteger = fieldbyname('Debt').AsInteger)
            and (qry.fieldbyname('Credit').AsInteger = fieldbyname('Credit')
            .AsInteger))) then
          begin
            dmf.adcAccounting.Execute
              (Format('UPDATE Acc.Documents SET RelatedID = 0 WHERE YearID = %d AND RelatedID = %d',
              [APPBank.Year, fieldbyname('RelatedID').AsInteger]));

            dmf.adcAccounting.Execute
              (Format('DELETE FROM Acc.DocRelated WHERE (ID = %d) OR (ID IN (SELECT ID FROM Acc.DocRelated WHERE RelatedID = %d))',
              [fieldbyname('ID').AsInteger, fieldbyname('RelatedID')
              .AsInteger]));

          end;
          Next;
        end;
        Filtered := false;
        EnableControls;
      end;
      // dmf.adcAccounting.CommitTrans;
    except
      on e: exception do
      begin
        // if dmf.adcAccounting.InTransaction then
        // dmf.adcAccounting.RollbackTrans;
        add2log(e.Message);
      end;

    end;
  finally
    qry.Free;
  end;

end;

function TDocumentF.ValidateDocument: Boolean;
var
  msg, sSQL, ts: string;
  s, StartDate: string;
  ClonDoc: TADOQuery;
begin
  Result := True;
  ClonDoc := TADOQuery.Create(Self);
  try
    lslWarnings.Clear;
    ClonDoc.Clone(qry_Documents, ltBatchOptimistic);
    with ClonDoc do
      try
        First;
        Sort := qry_Documents.Sort;
        if (qry_DocGroups.State in [dsInsert]) then
          if checkSecondaryDocNo then
          begin
            lslWarnings.Items.AddObject('شماره فرعي تكراري است.‏', TObject(0));
            ShowWarning('شماره فرعي تكراري است.‏');
            Result := false;
          end;

        if qry_DocGroupsStatus.AsInteger <> 0 then
        begin
          if mandeh <> 0 then
          begin
            lslWarnings.Items.AddObject('سند موازنه نيست.', TObject(0));
            ShowWarning('سند موازنه نيست.');
            Result := false;
          end; // if

        end;

        s := qry_DocGroupsDocDate.AsString;
        StartDate := GetLastConstDocDate;

        if Length(Trim(s)) < 7 then
        begin
          lslWarnings.Items.AddObject('تاريخ سند معتبر نيست', TObject(0));
          ShowWarning('تاريخ سند معتبر نيست‏');
          Result := false;
        end;

        if not ValidateDatasetDates(qry_DocGroups, APPBank.StartYear,
          APPBank.endYear) then
        begin
          lslWarnings.Items.AddObject('تاريخ سند معتبر نيست.', TObject(0));
          Result := false;
        end
        else if not(((qry_DocGroups.State in [dsedit]) and
          (dmf.CheckLevel(edtState2, FormType, false) or
          dmf.CheckLevel(edtState3, FormType, false)))) then
          if not validate_date(false, StartDate, APPBank.endYear, 'تاريخ سند',
            s, false) then
          begin

            lslWarnings.Items.AddObject('سند در اين تاريخ دائم شده است .‏',
              TObject(0));
            ShowWarning('سند در اين تاريخ دائم شده است .‏ ' + StartDate + '  ' +
              APPBank.endYear);
            Result := false;
          end;
        First;
        BigMessage('در حال چک کردن سند ... ', 0);

        if SQL_Version then
        begin
          while not eof do
          begin

            // _____________________________  make SQL  ____________________________
            sSQL := ' INSERT INTO #Tc SELECT %s,%s,%s,%s,%s ';
            sSQL := Format(sSQL, [fieldbyname('TopicCode').AsString,
              fieldbyname('DetailCode').AsString, fieldbyname('CTopicCode')
              .AsString, fieldbyname('CTopicCode2').AsString,
              fieldbyname('CTopicCode3').AsString]);

            ts := ts + #13#10 + sSQL;
            // _____________________________  make SQL  ____________________________

            Next;
          end;
          With qryCheck do
          begin
            Close;
            CommandTimeout := 0;
            SQL.Text := EmptyStr;
            SQL.Add('EXEC(''IF OBJECT_ID(''''TempDB.dbo.#Tc'''') IS NOT NULL DROP TABLE #Tc'')');
            SQL.Add('CREATE TABLE #Tc (ID int identity(1,1),Moeen bigint,Detail int,CTopic int,CTopic2 int,CTopic3 int)');
            SQL.Add(ts);
            SQL.Add('SELECT * FROM #Tc');
            SQL.Add('CROSS APPLY Acc.CheckAccCode(#Tc.Moeen ,#Tc.Detail,#Tc.CTopic,#Tc.CTopic2,#Tc.CTopic3)');
            SQL.Add('ORDER BY ID');
            qryCheck.Open;
          end;
        end;
        First;

        while not eof do
        begin
          if not ValidateArticle(false, msg, ClonDoc) then
          begin
            Result := false;
            lslWarnings.Items.AddObject(Format('[رديف %d]: %s', [RecNo, msg]),
              TObject(RecNo));

          end; // if
          Next;
          qryCheck.Next;
        end; // while

        lblWarnCount.Caption := 'تعداد خطاها = ' + IntToStr(lslWarnings.Count);
      finally
        ClonDoc.Free;
        // CloseMessage;
      end; // try

  except
    on e: exception do
    begin
      Result := false;
      add2log('check Doc :' + e.Message);
      Warn('اشکال در چک کردن سند ' + e.Message);
    end;
  end;
end;

procedure TDocumentF.qry_DocumentsAfterPost(DataSet: TDataSet);
begin
  inherited;
  SetRow;
  SaveArticlesToFile;
  CalculateSummary;
  LastArticleDec := qry_Documents.fieldbyname('Comment_L1').AsString;

end;

procedure TDocumentF.qry_DocumentsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateCoding;
  ShowBalance;
  if DBGrid1.SelectedIndex in [GetId('Debt'), GetId('Credit'),
    GetId('CurrencyDebit'), GetId('CurrencyCredit')] then
    showBigNum(DBGrid1.Columns[DBGrid1.SelectedIndex].Field.AsFloat,
      GetNumberOfDigits(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName));
  DBGrid1.Hint := qry_DocumentsComment.AsString;
  DBGrid1.ShowHint := True;
  CheckHasAid;

  // pnlBudget.Visible := qry_Documents.fieldbyname('_HasBudget').AsInteger <> 0;
  PanelAid_PO.Tag := 0;

end;

procedure TDocumentF.qry_DocumentsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // pnlCompony.Enabled := false;
  // DataSet.fieldbyname('ID').AsInteger :=
  // GetANewCode(Format('select Max(ID) From acc.Documents where Serial = %D',
  // [qry_DocGroups.fieldbyname('Serial').AsInteger]), 'ID',dmf.adcAccounting);
  DataSet.fieldbyname('Serial').AsInteger := qry_DocGroupsSerial.AsInteger;
  DataSet.fieldbyname('CompanyCode').AsInteger :=
    qry_DocGroupsCompanyCode.AsInteger;

  DataSet.fieldbyname('CurrencyRate').AsLargeInt := 1;
  DataSet.fieldbyname('TopicCode').AsLargeInt := 0;
  DataSet.fieldbyname('DetailCode').AsInteger := 0;
  DataSet.fieldbyname('CTopicCode').AsInteger := 0;
  DataSet.fieldbyname('CTopicCode2').AsInteger := 0;
  DataSet.fieldbyname('CTopicCode3').AsInteger := 0;
  DataSet.fieldbyname('BudgetTopicID').AsInteger := 0;
  DataSet.fieldbyname('AuditDoPrint').AsInteger := 0;
  DataSet.fieldbyname('CashType').AsInteger := 1;
  DataSet.fieldbyname('Debt').AsExtended := 0;
  DataSet.fieldbyname('Credit').AsExtended := 0;

  DataSet.fieldbyname('YearID').AsInteger := APPBank.Year;
  DataSet.fieldbyname('Comment_L1').AsString := StaticComment;
  if InsertRow.CanInsert then
    DataSet.fieldbyname('row').AsInteger := InsertRow.Row
  else
    DataSet.fieldbyname('row').AsInteger := InsertRow.Row + 1;

  DBGrid1.SelectedIndex := GetId('TopicCode');
  DBGrid1.SetFocus;
end;

procedure TDocumentF.SpeedButton1Click(Sender: TObject);
var
  c: string;
begin
  inherited;
  if (CompanyFilterinLogin) and (not user.PowerAdmin) then
    exit;
  if searchCode_ADOF.SearchCode(dmf.adcAccounting, c, ',جستجو شركت',
    'SELECT CompanyCode,CompanyName_l1 FROM  acc.Companies', ['کد', 'نام شركت'],
    alLeft) <> '' then
  begin
    if not(qry_DocGroups.State in dseditmodes) then
      qry_DocGroups.Edit;
    qry_DocGroupsCompanyCode.AsString := c;
  end;
  // if
end;

procedure TDocumentF.ShowWarning(msg: string; fault: Boolean = True);
begin
  lblWarning.Caption := msg + #254;
  lblWarnRow.Caption := 'رديف ' + IntToStr(qry_Documents.fieldbyname('row')
    .AsInteger) + ':' + #254;
  pnlWarning.Visible := True;
  imgWarning.Visible := fault;
  imgOK.Visible := not fault;
  lblWarning.font.Color := IfThen(fault, clRed, clBlack);
  lblWarnRow.Visible := fault;
  with tmrWarning do
  begin
    Enabled := false;
    Interval := 300;
    Enabled := True;
  end; // with
end;

procedure TDocumentF.tmr1Timer(Sender: TObject);
begin
  inherited;
  if Screen.ActiveForm.name = 'MemoEditWinEh' then
    Screen.ActiveForm.Close;
end;

procedure TDocumentF.tmrWarningOnTimer(Sender: TObject);
begin
  if lblWarnRow.Visible then
    imgWarning.Visible := not imgWarning.Visible
  else
    imgOK.Visible := not imgOK.Visible;
end;

procedure TDocumentF.ToolButton15Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if not(qry_DocGroups.State in dseditmodes) then
  begin
    Warn('سند در حالت ویرایش نیست', mtInformation);
    Abort;
  end;

  if get_response(Format('آيا براي حذف %S انتخاب شده مطمئن هستيد؟',
    [IfThen(DBGrid1.SelectedRows.Count < 2, 'سطر', 'سطرهای')])) <> mrYes then
    Abort;

  if (dgMultiSelect in DBGrid1.Options) then
    try
      qry_Documents.DisableControls;
      with DBGrid1.DataSource.DataSet do
        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          GotoBookmark((DBGrid1.SelectedRows.Items[i]));
          qry_Documents.Delete
        end;
    finally
      DBGrid1.SelectedRows.Clear;
      qry_Documents.EnableControls;
      DBGrid1.SetFocus;
    end
  else
    qry_Documents.Delete;

end;

procedure TDocumentF.StopWarn;
begin
  tmrWarning.Enabled := false;
  pnlWarning.Visible := false;
  pnlGeneralWarning.Visible := false;
  DBGrid1.ShowHint := false;
end;

procedure TDocumentF.edtBedClick(Sender: TObject);
begin
  inherited;
  showBigNum(StrToCurrDef(RemoveComma(edtBes.Text), 0));
end;

procedure TDocumentF.edtBesClick(Sender: TObject);
begin
  inherited;
  showBigNum(StrToCurrDef(RemoveComma(edtBed.Text), 0));
end;

procedure TDocumentF.qry_DocGroupsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if not qry_Documents.IsEmpty then
    if get_response('آيا براي انصراف مطمئن هستيد؟') <> mrYes then
      Abort;
  qry_Documents.Cancel;
end;

procedure TDocumentF.qry_DocGroupsBeforeEdit(DataSet: TDataSet);
var
  intSerial: Integer;
begin
  inherited;
  if not dmf.CheckLevel(EdtLevel, FormType) then
    Abort;

  if qry_DocGroupsDocTypeCode.Value = 5 then
  begin
    Warn('سند اختتامیه قابل ویرایش نمی باشد.');
    Abort;
  end;

  if ((Trim(qry_DocGroupsSourceDataBase.AsString) <> EmptyStr) and
    ((dmf.ReadBankConfigAcc('AllowDelDocSubSystem') = '0'))) then
  begin
    Warn('به دلیل ارسال سند از سایر نرم افزارها امکان ویرایش وجود ندارد.');
    Abort;
  end;

  with TADOQuery.Create(nil) do
    try
      Connection := dmf.adcAccounting;
      Close;
      SQL.Text := Format('Select * from acc.AccTopicLevels where LevelID=%d',
        [FormType]);
      Open;
      if IsEmpty then
      begin
        if (qry_DocGroups.fieldbyname('Status').AsInteger > 1) then
        begin
          Warn('اسناد دائم و قطعي قابل ويرايش نمي باشند.‏ ');
          Abort;
        end;
        // if
      end
      else
        case qry_DocGroups.fieldbyname('Status').AsInteger of
          2:
            if not dmf.CheckLevel(edtState2, FormType) then
              Abort;
          3:
            if not dmf.CheckLevel(edtState3, FormType) then
              Abort;
        end;
    finally
      Free;
    end;

  if not user.admin then
    if (CurAccess and Integer(TMyAccessKind.akSelfDocRedaction)) <> 0 then
      if (qry_DocGroupsFirstUser.AsString <> user.name) then
        raise exception.Create
          ('محدودیت دسترسی در ویرایش اسناد ثبت شده توسط سایر کاربران');

  if EditAnotherUser then
  begin
    intSerial := qry_DocGroupsSerial.AsInteger;
    qry_DocGroups.Requery();
    qry_DocGroups.Locate('Serial;YearId',
      VarArrayOf([intSerial, APPBank.Year]), []);
    EditAnotherUser := false;
  end;

  if not dmf.CheckUser('', 'Acc.Docgroups', 'Serial', qry_DocGroups) then
  begin
    EditAnotherUser := True;
    Abort;
  end;

end;

procedure TDocumentF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  n: Integer;
begin
  inherited;
  if okPanel.Visible then
  begin
    n := get_response('سند ذخيره نشده است. تغييرات ذخيره شوند؟‏');
    case n of
      mrYes:
        begin
          if (qry_Documents.State in dseditmodes) or
            (qry_DocGroups.State in dseditmodes) then
          begin
            if not(qry_Documents.State in dseditmodes) then
              qry_Documents.Edit;

            qry_DocumentsBeforePost(qry_Documents);
            qry_DocGroupsBeforePost(qry_DocGroups);
            CanClose := pnlGeneralWarning.Visible;
            if not pnlGeneralWarning.Visible then
              Warn('قبل از بستن فرم وضعیت ثبت یا انصراف سند را مشخص کنید');
          end;
        end;
      mrNo:
        qry_DocGroups.Cancel;
      mrCancel:
        CanClose := false;
    end;
    // case
  end; // if
end;

procedure TDocumentF.actAddFileExecute(Sender: TObject);
var
  ReadOnly: Boolean;
begin
  inherited;
  readOnly := not dmf.CheckLevel(EdtLevel, FormType);
//  if CtrlDown then
//    ViewFileF.Enter(qry_DocGroupsSerial.AsString + '_' +
//      qry_DocGroupsCompanyCode.AsString + '_' + qry_DocGroupsYearID.AsString,
//      Self.name, false { MultiMaliYear } , readOnly)
//  else
    ViewFileOnServerF.Enter(qry_DocGroupsSerial.AsString + '_' +
      qry_DocGroupsCompanyCode.AsString + '_' + qry_DocGroupsYearID.AsString,
      Self.name, false { MultiMaliYear } , readOnly)

end;

procedure TDocumentF.actCalculatorExecute(Sender: TObject);
begin
  inherited;
  // CalculatorF.Calculate(Self.Handle, True);
end;

procedure TDocumentF.qry_DocumentsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CalculateSummary;
end;

procedure TDocumentF.actPopMenuExecute(Sender: TObject);
begin
  inherited;
  popCompanies.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TDocumentF.actDocCopyExecute(Sender: TObject);
begin
  inherited;
  // pnlCompony.Enabled:=False  ;
  qry_DocGroups.Edit;
  qry_Documents.Last;
  // by mostafa
  DocCopyF.copyFromDoc(DBGrid1, qry_DocGroupsSerial.AsInteger,
    qry_DocGroupsCompanyCode.AsInteger, qry_DocumentsRow.AsInteger);
  CalculateSummary;
  // qry_Documents.Parameters.ParamByName('CompanyCode').Value :=
  // qry_DocGroupsCompanyCode.AsInteger;

end;

procedure TDocumentF.actEditSanamaExecute(Sender: TObject);
var
  FformInfo: string;
begin
  inherited;
  if not(qry_DocGroups.State in dseditmodes) then
  begin
    Warn('فرم در حالت ویرایش نیست');
    exit;
  end;

  FformInfo := DocSanamaF.Enter(qry_DocumentsTopicCode.AsInteger,
    qry_Documents.fieldbyname('_MoeenName_L1').AsString,
    qry_DocumentsSanamaID.AsString);

  if (FformInfo <> EmptyStr) and (FformInfo <> '<Sanama" /></Sanama>') then
  begin
    if not(qry_Documents.State in dseditmodes) then
      qry_Documents.Edit;
    qry_Documents.fieldbyname('SanamaID').AsString := FformInfo;
  end;
end;

procedure TDocumentF.actCopyDescArticleExecute(Sender: TObject);
begin
  inherited;
  CopiedArticle := qry_DocumentsComment.AsString;
end;

procedure TDocumentF.actPasteDescArticleExecute(Sender: TObject);
begin
  inherited;
  if qry_DocGroups.State in dseditmodes then
  begin
    if CopiedArticle = '' then
      CopiedArticle := LastArticleDec;
    if not(qry_Documents.State in dseditmodes) then
      qry_Documents.Edit;
    qry_DocumentsComment.AsString := CopiedArticle;
  end;
  // if
end;

procedure TDocumentF.qryAccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  grd1.Hint := qryAccCodeMoeenName.AsString;
end;

procedure TDocumentF.qry_DocGroupsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qry_Documents.Cancel;
  // qry_Documents.Close;
  // qry_Documents.Open;
  qry_Documents.CancelBatch;

  // qry_DocGroups.Requery;
  CalculateSummary;
  ChangeArticlesOrder(_ShowDocType);
  DeleteFile(__AppData + _UnsavedFileName);
  FreeReservedCodes(dmf.adcAccounting, 'Acc.DocGroups', '', '', 1);
  // for checkuser
end;

procedure TDocumentF.actSearchArticleExecute(Sender: TObject);
var
  Results: array [0 .. 12] of string;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'جستجوي سند',
    'SELECT TopicCode, DetailCode, CTopicCode, CTopicCode2, Comment_L1,' +
    ' Debt, Credit, AidDocNo, AidAmount, AidDocdate, BudgetID, ProjectID ,id' +
    ' FROM acc.Documents WHERE  Serial =' +
    qry_DocumentsSerial.AsInteger.ToString + 'And YearID = ' +
    IntToStr(APPBank.Year), ['كد حساب', 'كد تفصيلي', 'م.هزينه1', 'م.هزينه2',
    'شرح  سند', 'بدهكار', 'بستانكار', 'شماره كمكي', 'مقدار كمكي', 'تاريخ كمكي',
    'كد بودجه', 'كد طرح', ''], Results, [50, 50, 50, 50, 250, 50, 50, 50, 50,
    50, 50, 50], alLeft) then
    qry_Documents.Locate('id', Results[12], []);
end;

procedure TDocumentF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1);
  dbedtSecondaryDocNo.SetFocus
end;

procedure TDocumentF.RefreshPanels;
begin
  StatusBar1.Panels[0].Text := ' تفاوت ' + CurrToStrF(mandeh, ffCurrency, 0);
  StatusBar1.Panels[2].Text := ' شماره  ' + IntToStr(qry_DocGroups.RecNo) +
    ' از ' + IntToStr(qry_DocGroups.RecordCount);
end;

procedure TDocumentF.qry_DocumentsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  InsertRow.CanInsert := false;
  // StopWarn;
end;

procedure TDocumentF.CheckUnsaved;
var
  i: SmallInt;
  aQry: TADOQuery;
  LastDocDate: string;
begin
  if not FileExists(__AppData + filname) then
    exit;
  if get_response
    ('آخرين سند وارد شده در سيستم ذخيره نشده، آيا مي‌خواهيد اين سند بازخواني شود؟')
    <> mrYes then
  begin
    DeleteFile(__AppData + filname);
    exit;
  end;
  // if
  aQry := TADOQuery.Create(Self);
  try
    aQry.LoadFromFile(__AppData + filname);
    with qry_Documents do
    begin
      AfterInsert := nil;
      BeforePost := nil;
      AfterScroll := nil;
      AfterPost := nil;
    end; // with
    LastDocDate := ReadConfig(APPID, 'LastDocDate');
    qry_DocGroupsDocDate.AsString := LastDocDate;
    with aQry do
    begin
      First;
      while not eof do
      begin
        qry_Documents.Append;
        for i := 0 to Fields.Count - 1 do
          if (qry_Documents.fieldbyname(Fields[i].FieldName).CanModify) and
            (qry_Documents.fieldbyname(Fields[i].FieldName).FieldKind <>
            fkCalculated) and (qry_Documents.fieldbyname(Fields[i].FieldName)
            .name <> 'qry_DocumentscodeKol') then
            if Fields[i].IsNull then
            begin
              if qry_Documents.fieldbyname(Fields[i].FieldName).name <> 'qry_DocumentsSanamaID'
              then
                qry_Documents.fieldbyname(Fields[i].FieldName).AsInteger := 0;
            end
            else
              qry_Documents.fieldbyname(Fields[i].FieldName).AsString :=
                Fields[i].AsString;
        // qry_Documents.FieldByName('ID').AsInteger:= GetANewCode('Documents','ID',dmf.adcAccounting);
        qry_Documents.fieldbyname('Serial').AsInteger :=
          qry_DocGroupsSerial.AsInteger;
        qry_Documents.Post;

        Next;
      end; // while
    end; // with
  finally
    aQry.Free;
    qry_Documents.AfterInsert := qry_DocumentsAfterInsert;
    qry_Documents.AfterScroll := qry_DocumentsAfterScroll;
    qry_Documents.BeforePost := qry_DocumentsBeforePost;
    qry_Documents.AfterPost := qry_DocumentsAfterPost;
    CalculateSummary;
  end;
  // try
end;

procedure TDocumentF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (qry_DocGroups.State <> dsBrowse) then
    exit;
  case Key of
    vk_next:
      begin
        Key := 0;
        DataSetNext1.Execute;
      end;
    VK_PRIOR:
      begin
        Key := 0;
        DataSetPrior1.Execute;
      end;
  end;
end;

procedure TDocumentF.SaveArticlesToFile;
begin
  qry_Documents.SaveToFile(__AppData + _UnsavedFileName);
  SaveConfig(APPID, 'LastDocDate', qry_DocGroupsDocDate.AsString);
end;

procedure TDocumentF.InsertMandehExecute(Sender: TObject);
begin
  inherited;
  if not(qry_DocGroups.State in dseditmodes) then
    exit;
  if mandeh = 0 then
    exit;
  if not(qry_Documents.State in dseditmodes) then
    qry_Documents.Edit;
  if mandeh < 0 then
    qry_DocumentsDebt.AsExtended := abs(mandeh)
  else
    qry_DocumentsCredit.AsExtended := abs(mandeh);
  CalculateSummary;

end;

procedure TDocumentF.actCopyArticleExecute(Sender: TObject);
var
  i: Integer;
  lastArticle: array [0 .. 100] of string;
begin
  inherited;
  if not(qry_DocGroups.State in dseditmodes) then
    exit;

  if (qry_Documents.State in dseditmodes) then
    qry_Documents.Post;

  for i := 0 to qry_Documents.FieldCount - 1 do
    lastArticle[i] := qry_Documents.Fields[i].AsString;

  qry_Documents.Last;
  qry_Documents.Append;
  for i := 0 to qry_Documents.FieldCount - 1 do
    if qry_Documents.CanModify and
      not(pfinkey in qry_Documents.Fields[i].ProviderFlags) and
      not(qry_Documents.Fields[i].ReadOnly) and
      not(qry_Documents.Fields[i].FieldKind in [fkLookup]) and
      (qry_Documents.Fields[i].FieldKind <> fkCalculated) then
    begin
      // else
      // SetFieldValue(qry_Documents.Fields[i], lastArticle[i]);
      qry_Documents.Fields[i].AsString := lastArticle[i];
      if qry_Documents.Fields[i].IsNull then
        qry_Documents.Fields[i].AsString := '0';

    end;
  qry_Documents.Post;
  CalculateSummary;

end;

procedure TDocumentF.actCheckDocumentExecute(Sender: TObject);
begin
  inherited;
  if not okPanel.Visible then
    exit;

  try
    if not(qry_DocGroups.State in dseditmodes) then
      qry_DocGroups.Edit;
    CalculateSummary;
    if ValidateDocument then
      ShowWarning('سند مورد تأييد است.', false)
    else
    begin
      ShowGeneralWarning;
      ShowWarning('سند نامعتبر است.');
    end;
    // else
  finally
    // qry_DocGroups.Post;
  end;
end;

procedure TDocumentF.lblWarningDblClick(Sender: TObject);
var
  msg: string;
begin
  inherited;
  StopWarn;
  if AddCode(msg) then
    BigMessage(msg + ' اضافه شد. ', 1)
end;

procedure TDocumentF.qry_DocGroupsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TDocumentF.qry_DocGroupsBeforeDelete(DataSet: TDataSet);
var
  qry: TADOQuery;
  intRelatedID: Integer;
begin
  inherited;
  if not user.admin then
    if (CurAccess and Integer(TMyAccessKind.akSelfDocDelete)) <> 0 then
      if (qry_DocGroupsFirstUser.AsString <> user.name) then
        raise exception.Create
          ('محدودیت دسترسی در حذف اسناد ثبت شده توسط سایر کاربران');

  if not dmf.CheckLevel(DelLevel, FormType) then
    Abort;
  if DataSet.fieldbyname('Status').AsInteger > 1 then
  begin
    Warn('سند قابل حذف كردن نيست.');
    Abort;
  end; // if
  if get_response('آيا براي حذف سند شماره ' +
    qry_DocGroupsSecondaryDocNo.AsString + ' مطمئن هستيد؟') <> mrYes then
    Abort;

  if CheckRelatedIDExists(DataSet.fieldbyname('Serial').AsInteger, True) then
    if get_response
      ('این سند در آنالیز حساب استفاده شده آیا مایل به حذف می باشید؟') <> mrYes
    then
      Abort
    else
    begin
      qry := TADOQuery.Create(DocumentF);
      qry.Connection := dmf.adcAccounting;
      with dmf.qry_Temp do
      begin
        Active := false;
        SQL.Text :=
          Format('SELECT RelatedID, ID FROM Acc.Documents WHERE (RelatedID > 0) AND (Serial = %d)'
          + ' AND (YearID = %d) UNION ALL' +
          ' SELECT RelatedID, ID FROM Acc.DocRelated WHERE (RelatedID > 0) AND (Serial = %d)'
          + ' AND (YearID = %d)', [qry_DocGroupsSerial.AsInteger, APPBank.Year,
          qry_DocGroupsSerial.AsInteger, APPBank.Year]);
        Active := True;
        while not eof do
        begin

          with qry do
          begin
            Active := false;
            SQL.Text := Format('SELECT ID FROM Acc.DocRelated ' +
              ' WHERE (RelatedID = %d) AND (ID <> %d) AND (YearID = %d) ',
              [dmf.qry_Temp.Fields[0].AsInteger,
              dmf.qry_Temp.Fields[1].AsInteger, APPBank.Year]);
            Active := True;
            if not qry.Fields[0].IsNull then
            begin
              intRelatedID := qry.Fields[0].AsInteger;
              Active := false;
              SQL.Text :=
                Format('SELECT RelatedID FROM Acc.DocRelated WHERE (ID = %d)' +
                'AND RelatedID NOT IN (0, %d) AND (YearID = %d) GROUP BY RelatedID',
                [intRelatedID, dmf.qry_Temp.Fields[0].AsInteger, APPBank.Year]);
              Active := True;
              if qry.Fields[0].IsNull then
                dmf.adcAccounting.Execute
                  (Format('DELETE FROM Acc.DocRelated WHERE (ID = %d)',
                  [intRelatedID]));
            end;
          end;

          dmf.adcAccounting.Execute
            (Format('UPDATE Acc.DocRelated SET RelatedID = 0 WHERE (RelatedID = %d)',
            [Fields[0].AsInteger]));
          dmf.adcAccounting.Execute
            (Format('UPDATE Acc.Documents SET RelatedID = 0 WHERE (RelatedID = %d)',
            [Fields[0].AsInteger]));
          Next;
        end;

        Active := false;
      end;

    end;
  qry_Documents.SaveToFile(__AppData + _LastRemoveDoc);
  // ocTransation(dsOldValue);
end;

procedure TDocumentF.ppLblCompanyNameGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TDocumentF.ppLblPrintDateGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TDocumentF.ppLblDocFooterGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := dmf.ReadBankConfigAcc('DocumentsFooter', 'متن ذيل سند: ‏');
end;

procedure TDocumentF.ppLblCompanyDescGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := dmf.ReadBankConfigAcc('CompanyDesc')
end;

procedure TDocumentF.ShowBalance;
begin
  edtBalance.Text :=
    CurrToStrF(GetAccountBalance(qry_DocumentsTopicCode.AsLargeInt,
    qry_DocumentsDetailCode.AsInteger, qry_DocumentsCTopicCode.AsInteger,
    qry_DocumentsCTopicCode2.AsInteger), ffCurrency, 0);
end;

procedure TDocumentF.actPrint1Execute(Sender: TObject);
var
  p: TPoint;
begin
  inherited;

  if qry_DocGroups.State in dseditmodes then
  begin
    Warn('قبل از چاپ سند را تائيد كنيد.‏', mtInformation);
    exit;
  end;

  qry_Documents.Close;
  qry_Documents.Open;
  p := ClientToScreen(Point(btnPrint.Left, btnPrint.Top + PnlUnderButton.Top));
  popPrint.Popup(p.X + popPrint.Items.Count, p.Y - popPrint.Items.Count * 21);
end;

procedure TDocumentF.FindDoc(Serial1: Integer; MaliYear: Integer;
  COmpanyCode: Integer; ShowType: TShowType);
var
  frm: TForm;
  aWhere: string;
  strMessage: string;
begin
  frm := Screen.ActiveForm;
  if not Assigned(frm) then
    frm := MainF;
  if not MainF.MnuAcc_Document.Enabled then
    exit;
  CreateMDIForm3(false, TDocumentF, DocumentF, frm, 101);
  with DocumentF do
    try

      qry_Documents.DisableControls;
      qry_DocGroups.DisableControls;
      aWhere := 'where YearID=:Year ';

      // if CompanyFilterinLogin then
      if (CompanyFilterinLogin) and (not user.PowerAdmin) then
        Add2Filter(aWhere, 'companyCode = ' + FcompanyCodeLogin.ToString);

      if not dmf.CheckLevel(AccessPermanent, FormType, false) then
      begin
        Add2Filter(aWhere, 'Status <> 2');
        strMessage := ' محدودیت در دسترسی به اسناد قطعی';
      end;

      if not dmf.CheckLevel(AccessCertain, FormType, false) then
      begin
        Add2Filter(aWhere, 'Status <> 3');
        strMessage := strMessage + ' محدودیت در دسترسی به اسناد دائم';
      end;

      if ((opta.ChkSelfDocShow) and
        ((CurAccess and Integer(TMyAccessKind.akSelfDocShow)) = 0)) then
        // if (CurAccess and Integer(TMyAccessKind.akSelfDocShow)) = 0 then
        Add2Filter(aWhere, 'UserID = ' + user.id.ToString);

      with qry_DocGroups do
      begin
        SQL.Text := 'Select * from acc.Docgroups';
        SQL.Add(aWhere);
        SQL.Add('order by secondarydocno,PrimaryDocNo');
        Parameters.ParamByName('Year').Value := APPBank.Year;
        Close;

        Parameters.ParamByName('Year').Value := MaliYear;
        Open;
        case ShowType of
          SHOnlyDoc:
            begin
              Filter := Format('CompanyCOde = %d And Serial = %d',
                [COmpanyCode, Serial1]);
              Filtered := True;

            end;
          SHAllDoc:
            if (not Locate('CompanyCOde;Serial',
              VarArrayOf([COmpanyCode, Serial1]), [loPartialKey])) then
            begin
              add2log(Format('سند در دسترس نمی باشد شاید به این دلایل : %s ',
                [strMessage]));
            end;
        end;
        // Filtered := False;
      end;
    finally
      qry_Documents.EnableControls;
      qry_DocGroups.EnableControls;
    end;
end;

procedure TDocumentF.ppLabel9GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDocumentF.ppLabelAccNameWithoutCentersGetText(Sender: TObject;
  var Text: string);
begin
  inherited;

  Text := Trim(qry_Documents_MoeenName.AsString);
  if qry_DocumentsDetailCode.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' + Trim(qry_Documents_DetailName.AsString);

end;

procedure TDocumentF.ppDBText9GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := LeftStr(Text, FlenKol)
end;

procedure TDocumentF.ChangeArticlesOrder(how: Byte = 0);
var
  SaveMark: TBookmark;
begin
  how := how + 1;
  if (how = 3) and (qry_DocGroups.State in dseditmodes) then
    how := 1;
  SaveMark := qry_Documents.GetBookmark;
  if qry_Documents.Active then
    with qry_Documents do
      try
        AfterScroll := nil;
        DisableControls;

        case how of
          1:
            Sort := 'Row,Id';
          2:
            Sort := 'BedBes,TopicCode,DetailCode,CTopicCode,CTopicCode2,CTopicCode3';
          3:
            Sort := 'BedBes,ID';

          4:
            Sort := 'TopicCode,DetailCode,BedBes'
        end; // case
        Last;
      finally
        if BookmarkValid(SaveMark) then
          GotoBookmark(SaveMark);
        EnableControls;
        // AfterScroll := qry_DocumentsAfterScroll;
        qry_DocumentsAfterScroll(qry_Documents);

      end;
end;

procedure TDocumentF.ppDBAccName2GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if (Sender as TppDBText).DataField <> '_DetailName_L2' then
    if qry_DocumentsDetailCode.AsInteger <> 0 then
      Text := Trim(Text) + ' - ' +
        Trim(qry_Documents_DetailName_l2.AsString) + #254;
  if qry_DocumentsCTopicCode.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' +
      Trim(qry_Documents_CtopicName_l2.AsString) + #254;
  if qry_DocumentsCTopicCode2.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' +
      Trim(qry_Documents_CTopicName2_l2.AsString) + #254;
  if qry_DocumentsCTopicCode3.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' +
      Trim(qry_DocumentsCTopicName3_l2.AsString) + #254;

end;

procedure TDocumentF.ppDBText5GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := CurrToStrF(FloatToCurr(qry_DocumentsDebt.AsLargeInt +
    qry_DocumentsCredit.AsLargeInt), ffCurrency, 0);

end;

procedure TDocumentF.ppKolnameGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := Trim(Text) + #254;
  if qry_DocumentsDebt.AsLargeInt = 0 then
    (Sender as TppDBText).TextAlignment := taLeftJustified
  else
    (Sender as TppDBText).TextAlignment := taRightJustified;
end;

procedure TDocumentF.ppLabel8GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := qry_Documents_CTopicName2.AsString + '_' +
    qry_Documents_CtopicName.AsString + '_' + qry_Documents_DetailName.AsString
    + '_' + qry_Documents_MoeenName.AsString + #254;
end;

procedure TDocumentF.initpop(TopicType: Byte);
var
  i: Byte;
begin
  with dmf.qry_Temp do
    try
      Active := false;
      SQL.Text := 'Select * from acc.AccTopicLevels';
      SQL.Add('where TopicType=' + IntToStr(TopicType));
      SQL.Add('order by LevelID');
      Active := True;
      i := 0;
      popAddCode.Items.Clear;
      while not eof do
      begin
        popAddCode.Items.Add(NewItem(fieldbyname('LevelCaption_L1').AsString,
          TextToShortCut(''), false, True, SampelClick, 0,
          'i' + fieldbyname('PrvLevelID').AsString));
        popAddCode.Items[i].Tag := fieldbyname('LevelID').AsInteger;
        Inc(i);
        Next;
      end; // while
      popAddCode.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
    finally
      Close;
    end;

end;

procedure TDocumentF.SampelClick(Sender: TObject);
var
  Plevel: Boolean;
  FormType: Integer;
begin
  inherited;
  FormType := TMenuItem(Sender).Tag;
  Plevel := StrToInt(RightStr(TMenuItem(Sender).name,
    Length(TMenuItem(Sender).name) - 1)) = 0;
  case SelectedColumn of
    // 2:
    // begin
    // if Plevel then
    // CreateMDIForm2(TcenterTopics2F, centerTopics2F, Self, FormType)
    // else
    // CreateMDIForm2(TcenterTopics2F, centerTopics2F, Self, FormType)
    // end; // 1
    //
    // 3:
    // begin
    // if Plevel then
    // CreateMDIForm2(TcenterTopics1F, centerTopics1F, Self, FormType)
    //
    // else
    // CreateMDIForm2(TcenterTopics1_No2F, centerTopics1_No2F,
    // Self, FormType)
    // end; // 2

    5:
      begin
        if Plevel then
          CreateMDIForm2(TCategoriesF, CategoriesF, Self, FormType)
        else
          CreateMDIForm2(TAccCode2F, AccCode2F, Self, FormType);
      end;
    // 4

  end; // case
end;

procedure TDocumentF.SampelClickNote(Sender: TObject);
begin
  inherited;
  if qry_DocGroups.State in dseditmodes then
    if ActiveControl = mmoDocTopic_L1 then
      with qry_DocGroups do
      begin
        Edit;
        fieldbyname('DocTopic_L1').AsString := TMenuItem(Sender).Caption;
      end
    else
      with qry_Documents do
      begin
        Edit;
        fieldbyname('Comment_L1').AsString := TMenuItem(Sender).Caption;
      end;

end;

procedure TDocumentF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Documents);

end;

procedure TDocumentF.actSourceDataBaseExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا ارتباط بين سایر سیستم ها با این سند قطع گردد' +
    sLineBreak +
    'درصورتی که دوباره اقدام به صدور سند می کنید این کار توصیه می شود', clRed) = mrYes
  then
    With dmf.qry_Temp do
    begin
      try

        SQL.Clear;
        SQL.Add('UPDATE Acc.DocGroups');
        SQL.Add('SET SourceDataBase = NULL');
        SQL.Add('WHERE (Serial = :Serial) AND (CompanyCode = :CompanyCode) AND (YearID = :YearID)');
        Parameters.ParamByName('Serial').Value :=
          qry_DocGroups.fieldbyname('Serial').AsString;
        Parameters.ParamByName('CompanyCode').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        Parameters.ParamByName('YearID').Value :=
          qry_DocGroups.fieldbyname('YearID').AsInteger;
        ExecSQL;

        Warn('ارتباط با موفقیت قطع شد.', mtInformation);
      except
        on e: exception do
          Warn('خطا در اجرای عملیات: ' + e.Message, mtError);
      end;

    end;
end;

procedure TDocumentF.actSpecialGetExcelExecute(Sender: TObject);
begin
  inherited;
  DocumentSettingF.showDocumentSetting(qry_Documents);
end;

procedure TDocumentF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
  // SendToExcel(qry_Documents);
end;

procedure TDocumentF.actShowFormExecute(Sender: TObject);
var
  sdb, msg: string;
  qry: TADOQuery;
begin
  inherited;
  sdb := Trim(UpperCase(qry_DocGroupsSourceDataBase.AsString));
  msg := 'برای این سند فرم مبدا یافت نشد';
  if sdb = EmptyStr then
  begin
    Warn(msg);
    exit;
  end;

  qry := TADOQuery.Create(dmf);
  with qry do
    try
      Connection := theMainConnection;
      SQL.Text := 'Select * from ' + sdb;
      SQL.Add('WHERE (DocNo = :DocNo ) AND (DocDate = :DocDate ) AND (YearID = :YearID )');
      Parameters.ParamByName('DocNo').Value :=
        qry_DocGroupsSecondaryDocNo.AsInteger;
      Parameters.ParamByName('DocDate').Value := qry_DocGroupsDocDate.AsString;
      Parameters.ParamByName('YearID').Value := qry_DocGroupsYearID.AsInteger;
      Active := True;
      if Pos(UpperCase('dbo.Recipts'), sdb) <> 0 then
        ShowReciptTypes(qry, MainF)
      else if Pos(UpperCase('dbo.Forms'), sdb) <> 0 then
        ShowFormTypesForms(qry, MainF)
      else
        Warn(msg);

    finally
      Active := false;
      Free;
    end;

end;

procedure TDocumentF.ShowGeneralWarning;
begin
  pnlGeneralWarning.Visible := True;
  pnlGeneralWarning.BringToFront;
  // lslWarnings.SetFocus;
  if lslWarnings.Items.Count > 0 then
  begin
    lslWarnings.ItemIndex := 0;
    lslWarningsDblClick(lslWarnings);
  end; // if
end;

procedure TDocumentF.lslWarningsDblClick(Sender: TObject);
var
  i: SmallInt;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    exit;
  qry_Documents.First;
  qry_Documents.MoveBy(Integer((Sender as TListBox).Items.Objects[i]) - 1);

end;

function TDocumentF.AddCode(out msg: string): Boolean;
var
  b: Boolean;
begin
  b := false;
  Result := b;
  if not opta.CanRelation then
    exit;
  with dmf.qry_Temp do
  begin
    // ----------------------------DetailCode------------------------------------
    if Pos('كد تفصيلي', lblWarning.Caption) <> 0 then
      if get_response('آيا ارتباط بين تفصيلي و حساب برقرار گردد') = mrYes then
      begin
        msg := 'كد تفصيلي';
        if qry_Documents.fieldbyname('DetailCode').AsInteger = 0 then
          exit;
        Active := false;
        SQL.Text := 'SELECT TopicCode, DetailCode,CompanyCode';
        SQL.Add('FROM acc.DetailRange');
        Active := True;
        Append;
        fieldbyname('TopicCode').AsLargeInt :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;
        fieldbyname('DetailCode').AsInteger :=
          qry_Documents.fieldbyname('DetailCode').AsInteger;
        fieldbyname('CompanyCode').AsInteger :=
          qry_Company.fieldbyname('CompanyCode').AsInteger;
        b := True;
      end;
    // if
    // --------------------------AddCTopicCode-----------------------------------
    if Pos('__كد تفصیلی 1', lblWarning.Caption) <> 0 then
      if get_response('آيا ارتباط بين مركزهزينه و حساب برقرار گردد') = mrYes
      then
      begin
        msg := 'كد تفصیلی 2';
        if qry_Documents.fieldbyname('CTopicCode').AsInteger = 0 then
          exit;
        Active := false;
        SQL.Text := 'SELECT TopicCode, CTopicCode';
        SQL.Add('FROM acc.CenterTopicRange');
        Active := True;
        Append;
        fieldbyname('TopicCode').AsLargeInt :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;
        fieldbyname('CTopicCode').AsInteger :=
          qry_Documents.fieldbyname('CTopicCode').AsInteger;
        b := True;
      end;
    // if
    // -------------------------AddCTopicCode2-----------------------------------
    if (Pos('كد تفصیلی 3', lblWarning.Caption) <> 0) then
      if get_response('آيا ارتباط بين مركزهزينه2 و حساب برقرار گردد') = mrYes
      then
      begin
        msg := 'كد تفصیلی 3';
        if qry_Documents.fieldbyname('CTopicCode2').AsInteger = 0 then
          exit;
        Active := false;
        SQL.Text := 'SELECT CTopicCode, CTopicCode2';
        SQL.Add('FROM acc.CTopicRangeTogether');
        Active := True;
        Append;
        fieldbyname('CTopicCode').AsInteger :=
          qry_Documents.fieldbyname('CTopicCode').AsInteger;
        fieldbyname('CTopicCode2').AsInteger :=
          qry_Documents.fieldbyname('CTopicCode2').AsInteger;
        b := True;
      end;
    // if
    try
      if b then
        Post;
      Result := b;
    except
      on e: exception do
      begin
        Warn('اشكال در ارتباط كدها');
        add2log(e.Message);
        Result := false;
      end;
    end; // try
    Active := false;
  end; // with
end;

procedure TDocumentF.callAccBook(TypeCode: Byte);
var
  i: Integer;
begin
  i := DBGrid1.SelectedIndex;

  if DBGrid1.Columns[i].FieldName = 'TopicCode' then
  begin
    CreateMDIForm3(false, TRpt_AccBookF, Rpt_AccBookF, Self, 3);
    with Rpt_AccBookF do
    begin
      with qry_Doc do
      begin
        Active := false;
        Parameters.ParamByName('FromYearId').Value := APPBank.Year;
        Parameters.ParamByName('ToYearId').Value := APPBank.Year;
        Parameters.ParamByName('Status1').Value := '';
        Parameters.ParamByName('Status2').Value := -1;
        Parameters.ParamByName('DocTypeCodeFrom').Value := '';

      end; // with
      with qry_AccCode do
      begin
        Active := false;
        Parameters.ParamByName('UserAdmin').Value :=
          IfThen(user.PowerUser, 1, 0);
        Parameters.ParamByName('UserID').Value := user.id;
        Parameters.ParamByName('AccCodeFrom').Value :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;
        Parameters.ParamByName('AccCodeTo').Value :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;

        // Parameters.ParamByName('DetailCodeFrom').Value :=
        // qry_Documents.fieldbyname('DetailCode').AsInteger;
        // Parameters.ParamByName('DetailCodeTo').Value :=
        // qry_Documents.fieldbyname('DetailCode').AsInteger;
        // Parameters.ParamByName('CTopicCodeFrom').Value :=
        // qry_Documents.fieldbyname('CTopicCode').AsInteger;
        // Parameters.ParamByName('CTopicCodeTo').Value :=
        // qry_Documents.fieldbyname('CTopicCode').AsInteger;
        // // Parameters.ParamByName('Status1').Value :=
        // qry_DocGroups.fieldbyname('Status').AsString;
        // Parameters.ParamByName('Status2').Value := -1;
        // qry_DocGroups.fieldbyname('Status').AsString;
        // Parameters.ParamByName('CompanyCode').Value:=qry_DocGroupsCompanyCode.AsInteger;
      end; // with
      with qry_Companies do
      begin
        Active := false;
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        SetCompanyFilterinLogin(Parameters);
        Active := True;
        qry_AccCode.Active := True;
      end;
      // with
      qry_AccCode.Locate('AccCode', qry_Documents.fieldbyname('TopicCode')
        .AsVariant, []);

    end; // with form
  end; // 2

  if DBGrid1.Columns[i].FieldName = 'DetailCode' then
  begin
    CreateMDIForm3(false, TRpt_AccDetailOnTopicBookF,
      Rpt_AccDetailOnTopicBookF, Self);
    with Rpt_AccDetailOnTopicBookF do
    begin
      with qry_Doc do
      begin
        Active := false;
        // Parameters.ParamByName('DocDateFrom').Value:=qry_DocGroups.fieldbyname('DocDate').AsString;
        // Parameters.ParamByName('DocDateTo').Value:=qry_DocGroups.fieldbyname('DocDate').AsString;
        // Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_DocGroups.fieldbyname('PrimaryDocNo').AsInteger;
        // Parameters.ParamByName('PrimaryDocNoTo').Value:=qry_DocGroups.fieldbyname('PrimaryDocNo').AsInteger;
        // Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_DocGroups.fieldbyname('SecondaryDocNo').AsString;

        Parameters.ParamByName('Status1').Value := '';
        Parameters.ParamByName('Status2').Value := -1;

        Parameters.ParamByName('DocTypeCodeFrom').Value := '';
        Parameters.ParamByName('DocTypeCodeTo').Value := -1;

        Parameters.ParamByName('FromYearId').Value := APPBank.Year;
        Parameters.ParamByName('ToYearId').Value := APPBank.Year;
      end; // with
      with qry_AccCode do
      begin
        Active := false;
        // Parameters.ParamByName('SecondaryDocNoTo').Value:=qry_DocGroups.fieldbyname('SecondaryDocNo').AsString;
        // Parameters.ParamByName('PrimaryDocNoTo').Value:=qry_DocGroups.fieldbyname('PrimaryDocNo').AsString;
        // Parameters.ParamByName('DocDateTo').Value:=qry_DocGroups.fieldbyname('DocDate').AsString;
        Parameters.ParamByName('TopicCodeFrom').Value :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;
        Parameters.ParamByName('TopicCodeTo').Value :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;
        Parameters.ParamByName('DetailCodeFrom').Value :=
          qry_Documents.fieldbyname('DetailCode').AsInteger;
        Parameters.ParamByName('DetailCodeTo').Value :=
          qry_Documents.fieldbyname('DetailCode').AsInteger;
        // Parameters.ParamByName('Status1').Value := 0;
        // qry_DocGroups.fieldbyname('Status').AsString;
        // Parameters.ParamByName('Status2').Value := 0;
        // qry_DocGroups.fieldbyname('Status').AsString;
        // Parameters.ParamByName('CompanyCode').Value:=qry_DocGroupsCompanyCode.AsInteger;

      end; // with
      with qry_Companies do
      begin
        Active := false;
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        SetCompanyFilterinLogin(Parameters);
        Active := True;
      end;
      // with
      qry_AccCode.Locate('TopicCode;DetailCode',
        VarArrayOf([qry_Documents.fieldbyname('TopicCode').AsLargeInt,
        qry_Documents.fieldbyname('DetailCode').AsInteger]), []);

    end; // with form
  end; // 3

  if DBGrid1.Columns[i].FieldName = 'BudgetTopicID' then
  begin
    CreateMDIForm3(false, TRpt_AccBookF, Rpt_AccBookF, Self, 3);
    with Rpt_AccBookF do
    begin
      with qry_Doc do
      begin
        Active := false;
        // Parameters.ParamByName('DocDateFrom').Value:='0001/01/01';//qry_DocGroups.fieldbyname('DocDate').AsString;
        // Parameters.ParamByName('DocDateTo').Value:='99/12/29';//qry_DocGroups.fieldbyname('DocDate').AsString;
        // Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_DocGroups.fieldbyname('PrimaryDocNo').AsInteger;
        // Parameters.ParamByName('PrimaryDocNoTo').Value:=qry_DocGroups.fieldbyname('PrimaryDocNo').AsInteger;
        // Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_DocGroups.fieldbyname('SecondaryDocNo').AsString;
        // Parameters.ParamByName('SecondaryDocNoTo').Value:=qry_DocGroups.fieldbyname('SecondaryDocNo').AsString;
        Parameters.ParamByName('AccCodeLen').Value :=
          qry_Documents.fieldbyname('_LenghtTopic').AsInteger;
        Parameters.ParamByName('Status1').Value := '';
        // qry_DocGroups.fieldbyname('Status').AsString;
        Parameters.ParamByName('Status2').Value := -1;
        Parameters.ParamByName('DocTypeCodeFrom').Value := '';
        Parameters.ParamByName('DocTypeCodeTo').Value := -1;
        Parameters.ParamByName('FromYearId').Value := APPBank.Year;
        Parameters.ParamByName('ToYearId').Value := APPBank.Year;
      end; // with
      with qry_Companies do
      begin
        Active := false;
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        SetCompanyFilterinLogin(Parameters);
        Active := True;
      end;
      // with
      with qry_AccCode do
      begin
        Active := false;
        Parameters.ParamByName('UserAdmin').Value :=
          IfThen(user.PowerUser, 1, 0);
        Parameters.ParamByName('UserID').Value := user.id;
        Parameters.ParamByName('AccCodeFrom').Value :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;
        Parameters.ParamByName('AccCodeTo').Value :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;
        Parameters.ParamByName('FormType').Value :=
          qry_Documents.fieldbyname('_LevelID').AsInteger;
        // Parameters.ParamByName('CompanyCode').Value:=qry_DocGroupsCompanyCode.AsInteger;
        Active := True;
      end; // with

      qry_AccCode.Locate('AccCode', qry_Documents.fieldbyname('TopicCode')
        .AsCurrency, []);

    end; // with form
  end; // 4

  if DBGrid1.Columns[i].FieldName = 'CTopicCode' then
  begin
    CreateMDIForm3(false, TRpt_CtopicsOnDetailsBookF,
      Rpt_CtopicsOnDetailsBookF, Self);
    with Rpt_CtopicsOnDetailsBookF do
    begin
      with qry_Doc do
      begin
        Active := false;
        Parameters.ParamByName('FromYearId').Value := APPBank.Year;
        Parameters.ParamByName('ToYearId').Value := APPBank.Year;
        Parameters.ParamByName('Status1').Value := '';
        Parameters.ParamByName('Status2').Value := -1;
        Parameters.ParamByName('DocTypeCodeFrom').Value := '';

        // Parameters.ParamByName('DocDateFrom').Value:=qry_DocGroups.fieldbyname('DocDate').AsString;
        // Parameters.ParamByName('DocDateTo').Value:=qry_DocGroups.fieldbyname('DocDate').AsString;
        // Parameters.ParamByName('PrimaryDocNoFrom').Value:=qry_DocGroups.fieldbyname('PrimaryDocNo').AsString;
        // Parameters.ParamByName('PrimaryDocNoTo').Value:=qry_DocGroups.fieldbyname('PrimaryDocNo').AsString;
        // Parameters.ParamByName('SecondaryDocNoFrom').Value:=qry_DocGroups.fieldbyname('SecondaryDocNo').AsString;
        // Parameters.ParamByName('SecondaryDocNoTo').Value:=qry_DocGroups.fieldbyname('SecondaryDocNo').AsString;
      end; // with
      with qry_AccCode do
      begin
        Active := false;
        // Parameters.ParamByName('SecondaryDocNoTo').Value:=qry_DocGroups.fieldbyname('SecondaryDocNo').AsInteger;
        // Parameters.ParamByName('PrimaryDocNoTo').Value:=qry_DocGroups.fieldbyname('PrimaryDocNo').AsInteger;
        // Parameters.ParamByName('DocDateTo').Value:=qry_DocGroups.fieldbyname('DocDate').AsString;
        Parameters.ParamByName('TopicCodeFrom').Value :=
          qry_Documents.fieldbyname('TopicCode').AsCurrency;
        Parameters.ParamByName('TopicCodeTo').Value :=
          qry_Documents.fieldbyname('TopicCode').AsCurrency;
        Parameters.ParamByName('DetailCodeFrom').Value :=
          qry_Documents.fieldbyname('DetailCode').AsInteger;
        Parameters.ParamByName('DetailCodeTo').Value :=
          qry_Documents.fieldbyname('DetailCode').AsInteger;
        Parameters.ParamByName('CTopicCodeFrom').Value :=
          qry_Documents.fieldbyname('CTopicCode').AsInteger;
        Parameters.ParamByName('CTopicCodeTo').Value :=
          qry_Documents.fieldbyname('CTopicCode').AsInteger;
        // Parameters.ParamByName('Status1').Value :=
        // qry_DocGroups.fieldbyname('Status').AsString;
        // Parameters.ParamByName('Status2').Value := -1;
        // qry_DocGroups.fieldbyname('Status').AsString;
        // Parameters.ParamByName('CompanyCode').Value:=qry_DocGroupsCompanyCode.AsInteger;
      end; // with
      with qry_Companies do
      begin
        Active := false;
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        SetCompanyFilterinLogin(Parameters);
        Active := True;
      end;
      // with
      qry_AccCode.Locate('TopicCode;DetailCode',
        VarArrayOf([qry_Documents.fieldbyname('TopicCode').AsCurrency,
        qry_Documents.fieldbyname('DetailCode').AsInteger]), []);

    end; // with form
  end; // 2
  if DBGrid1.Columns[i].FieldName = 'CTopicCode2' then
  begin
    CreateMDIForm3(false, TRpt_Ctopics2OnDetailsBookF,
      Rpt_Ctopics2OnDetailsBookF, Self);
    with Rpt_Ctopics2OnDetailsBookF do
    begin
      with qry_Doc do
      begin
        Active := false;
        Parameters.ParamByName('FromYearId').Value := APPBank.Year;
        Parameters.ParamByName('ToYearId').Value := APPBank.Year;
        Parameters.ParamByName('Status1').Value := '';
        Parameters.ParamByName('Status2').Value := -1;
        Parameters.ParamByName('DocTypeCodeFrom').Value := '';
      end; // with
      with qry_AccCode do
      begin
        Active := false;
        Parameters.ParamByName('TopicCodeFrom').Value :=
          qry_Documents.fieldbyname('TopicCode').AsCurrency;
        Parameters.ParamByName('TopicCodeTo').Value :=
          qry_Documents.fieldbyname('TopicCode').AsCurrency;
        Parameters.ParamByName('DetailCodeFrom').Value :=
          qry_Documents.fieldbyname('DetailCode').AsInteger;
        Parameters.ParamByName('DetailCodeTo').Value :=
          qry_Documents.fieldbyname('DetailCode').AsInteger;
        Parameters.ParamByName('CTopicCode2From').Value :=
          qry_Documents.fieldbyname('CTopicCode2').AsInteger;
        Parameters.ParamByName('CTopicCode2To').Value :=
          qry_Documents.fieldbyname('CTopicCode2').AsInteger;
        // qry_DocGroups.fieldbyname('Status').AsString;
        // Parameters.ParamByName('CompanyCode').Value:=qry_DocGroupsCompanyCode.AsInteger;
        Parameters.ParamByName('CTopicCodeFrom').Value :=
          qry_Documents.fieldbyname('CTopicCode').AsInteger;
        Parameters.ParamByName('CTopicCodeTo').Value :=
          qry_Documents.fieldbyname('CTopicCode').AsInteger;

                  Parameters.ParamByName('CTopicCode3From').Value :=
          qry_Documents.fieldbyname('CTopicCode3').AsInteger;
        Parameters.ParamByName('CTopicCode3To').Value :=
          qry_Documents.fieldbyname('CTopicCode3').AsInteger;


      end; // with
      with qry_Companies do
      begin
        Active := false;
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        SetCompanyFilterinLogin(Parameters);
        Active := True;
      end;
      // with
      qry_AccCode.Locate('TopicCode;DetailCode',
        VarArrayOf([qry_Documents.fieldbyname('TopicCode').AsCurrency,
        qry_Documents.fieldbyname('DetailCode').AsInteger]), []);
    end;
    // with form
  end; // 1

  if DBGrid1.Columns[i].FieldName = 'CTopicCode3' then
  begin
    CreateMDIForm3(false, TRpt_Ctopics3OnDetailsBookF,
      Rpt_Ctopics3OnDetailsBookF, Self);
    with Rpt_Ctopics3OnDetailsBookF do
    begin
      with qry_Doc do
      begin
        Active := false;
        Parameters.ParamByName('FromYearId').Value := APPBank.Year;
        Parameters.ParamByName('ToYearId').Value := APPBank.Year;
        Parameters.ParamByName('Status1').Value := '';
        Parameters.ParamByName('Status2').Value := -1;
        Parameters.ParamByName('DocTypeCodeFrom').Value := '';
      end; // with
      with qry_AccCode do
      begin
        Active := false;
        Parameters.ParamByName('TopicCodeFrom').Value :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;
        Parameters.ParamByName('TopicCodeTo').Value :=
          qry_Documents.fieldbyname('TopicCode').AsLargeInt;
        Parameters.ParamByName('DetailCodeFrom').Value :=
          qry_Documents.fieldbyname('DetailCode').AsInteger;
        Parameters.ParamByName('DetailCodeTo').Value :=
          qry_Documents.fieldbyname('DetailCode').AsInteger;

        Parameters.ParamByName('CTopicCode3From').Value :=0;
  //      qry_Documents.fieldbyname('CTopicCode3').AsInteger;
        Parameters.ParamByName('CTopicCode3To').Value :=999999999;
//        qry_Documents.fieldbyname('CTopicCode3').AsInteger;

        Parameters.ParamByName('CTopicCode2From').Value :=
          qry_Documents.fieldbyname('CTopicCode2').AsInteger;
        Parameters.ParamByName('CTopicCode2To').Value :=
          qry_Documents.fieldbyname('CTopicCode2').AsInteger;

        Parameters.ParamByName('CTopicCodeFrom').Value :=
          qry_Documents.fieldbyname('CTopicCode').AsInteger;
        Parameters.ParamByName('CTopicCodeTo').Value :=
          qry_Documents.fieldbyname('CTopicCode').AsInteger;
        // qry_DocGroups.fieldbyname('Status').AsString;
        // Parameters.ParamByName('CompanyCode').Value:=qry_DocGroupsCompanyCode.AsInteger;
      end; // with
      with qry_Companies do
      begin
        Active := false;
        Parameters.ParamByName('CompanyCodeFrom').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        Parameters.ParamByName('CompanyCodeTo').Value :=
          qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
        SetCompanyFilterinLogin(Parameters);
        Active := True;
      end;
      // with
      qry_AccCode.Locate('TopicCode;DetailCode',
        VarArrayOf([qry_Documents.fieldbyname('TopicCode').AsLargeInt,
        qry_Documents.fieldbyname('DetailCode').AsInteger]), []);
    end;
    // with form
  end; // 1

end;

procedure TDocumentF.actRollAccExecute(Sender: TObject);
begin
  inherited;
  callAccBook(1);
end;

procedure TDocumentF.actRowDownExecute(Sender: TObject);
begin
  inherited;
  With qry_Documents do
  begin
    Edit;
    qry_DocumentsRow.AsInteger := qry_DocumentsRow.AsInteger + 1;
    Post;
  end;
end;

procedure TDocumentF.actRowUpExecute(Sender: TObject);
begin
  inherited;
  With qry_Documents do
  begin
    Edit;
    qry_DocumentsRow.AsInteger := qry_DocumentsRow.AsInteger - 1;
    Post;
  end;

end;

procedure TDocumentF.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if not dmf.adcAccounting.InTransaction then
    dmf.adcAccounting.BeginTrans;
  try
    DocTransation(dsOldValue);
    qry_DocGroups.Delete;
    if dmf.adcAccounting.InTransaction then
      dmf.adcAccounting.CommitTrans;
  except
    on e: exception do
    begin
      if dmf.adcAccounting.InTransaction then
        dmf.adcAccounting.RollbackTrans;
      if not(e is EAbort) then
      begin
        Warn('اشکال در حذف' + #10#13 + e.Message);
        add2log(e.Message);
      end;
    end;
  end;
end;

procedure TDocumentF.actDescTempExecute(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFocus;
  popNote.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TDocumentF.InitPopNote();
var
  i: Integer;
begin
  inherited;
  popNote.Items.Clear;
  i := 0;
  with dmf.qry_Temp do
    try
      Close;
      SQL.Text := 'select InfoName_L1 from acc.FormsInfo';
      SQL.Add('where FormType=2');
      Open;
      while not eof do
      begin
        popNote.Items.Add(NewItem(Fields[0].AsString, TextToShortCut(''), false,
          True, SampelClickNote, 0, 'items' + IntToStr(i)));
        Inc(i);
        Next;
      end; // while
    finally
    end; // with
end;

procedure TDocumentF.qry_DocumentsTopicCodeChange(Sender: TField);
begin
  inherited;
  if (qry_Documents.fieldbyname('_MoeenName_L1').AsString = '') and
    (qry_Documents.fieldbyname('TopicCode').AsString <> '0') then
    with dmf.qry_Temp do
    begin
      Active := false;
      SQL.Text :=
        'SELECT TopicCode,MoeenName_L1 FROM  acc.Categories where (TopicCode=' +
        qry_Documents.fieldbyname('TopicCode').AsString +
        ' ) AND (Acc.Categories.Active=1)';
      Active := True;
      if fieldbyname('TopicCode').AsString = EmptyStr then
      begin
        Warn('كد حساب معتبر نيست.' + #13#10 + 'یا کد حساب فعال نیست');
        // Abort;
      end // if
      else
        qry_Documents.fieldbyname('_MoeenName_L1').AsString :=
          fieldbyname('MoeenName_L1').AsString;
    end; // with
  CheckHasAid;
  // pnlBudget.Visible := qry_Documents.fieldbyname('_HasBudget').AsInteger <> 0;
  case qry_Documents.fieldbyname('_HasBudget').AsInteger of
    1:
      begin
        edtBudget.ReadOnly := false;
        edtProject.ReadOnly := false;
        qry_Documents.fieldbyname('ProjectID').AsString := '';
        qry_Documents.fieldbyname('BudgetTopicID').AsString := '';
      end;
    2:
      if qry_DocGroups.State in [dsInsert] then
        if qry_Documents.fieldbyname('_HasBudget').AsInteger = 2 then
        begin
          edtBudget.ReadOnly := false;
          edtProject.ReadOnly := false;
          qry_Documents.fieldbyname('ProjectID').AsInteger :=
            qry_Documents.fieldbyname('_ProjectID').AsInteger;
          qry_Documents.fieldbyname('BudgetTopicID').AsInteger :=
            qry_Documents.fieldbyname('_BudgetTopicID').AsInteger;
        end;
    3:
      begin
        edtBudget.ReadOnly := True;
        edtProject.ReadOnly := True;
        qry_Documents.fieldbyname('ProjectID').AsInteger :=
          qry_Documents.fieldbyname('_ProjectID').AsInteger;
        qry_Documents.fieldbyname('BudgetTopicID').AsInteger :=
          qry_Documents.fieldbyname('_BudgetTopicID').AsInteger;
      end;
  end;
  // case
  qry_DocumentsSanamaID.AsVariant := Null;
end;

procedure TDocumentF.DocTransation(State: TDataSetState);
var
  n: Byte;
begin
  case State of
    dsInsert:
      n := 1;
    dsedit:
      n := 2;
    dsOldValue:
      n := 3;
  else
    n := 0;
  end; // case

  with TADOQuery.Create(nil) do
    try
      Connection := dmf.adcAccounting;
      Close;
      SQL.Text := 'SELECT * FROM acc.DocsTransaction where 1 = 0';
      Open;
      Append;
      fieldbyname('serial').AsInteger := qry_DocGroupsSerial.AsInteger;
      fieldbyname('SecondaryDocNo').AsInteger :=
        qry_DocGroupsSecondaryDocNo.AsInteger;
      fieldbyname('TransType').AsInteger := n;
      fieldbyname('DocDate').AsString := qry_DocGroupsDocDate.AsString;
      fieldbyname('TransDate').AsString := var_glb_CurrentDate;
      fieldbyname('UserName').AsString := user.name;
      Post;

    finally
      Free;
    end;

end;

procedure TDocumentF.qry_DocGroupsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  qry_DocGroups.Filtered := false;
  if not dmf.CheckLevel(AddLevel, FormType) then
    Abort;
  CheckExistsImbalanceDoc;
end;

procedure TDocumentF.qry_DocGroupsBeforePost(DataSet: TDataSet);
begin
  inherited;
  qry_Documents.OnCalcFields := nil;
  if opta.ChkBalancCTopicCode3 then
    if not BalancCTopicCode3(qry_Documents) then
      Abort;

  if (qry_Documents.State in dseditmodes) and
    (qry_DocumentsTopicCode.AsLargeInt <> 0) then
    qry_Documents.Post
  else
    qry_Documents.Cancel;
end;

function TDocumentF.EssenceCheck;
var
  messag: Boolean;
  Man: Currency;
begin
  messag := false;
  Result := false;
  Man := StrToCurrDef(RemoveComma(edtBalance.Text), 0);
  case qry_Documents.fieldbyname('_Essence').AsInteger of
    1:
      if Man + Balance < 0 then
        messag := True;
    2:
      if Man + Balance > 0 then
        messag := True;
  end;
  if messag then
    if qry_Documents.fieldbyname('_RepEssence').AsInteger = 1 then
      Warn(' ماهيت حساب كد حساب' + qry_Documents.fieldbyname('TopicCode')
        .AsString + 'تغيير يافت')
    else if qry_Documents.fieldbyname('_RepEssence').AsInteger = 2 then
    begin
      Warn(' با اين ثبت ماهيت حساب كد حساب ' + qry_Documents.fieldbyname
        ('TopicCode').AsString + ' تغييرخواهد كرد و شما مجاز به ثبث نمي باشيد');
      Result := True;
    end;
end;

procedure TDocumentF.qry_DocumentsDebtChange(Sender: TField);
begin
  inherited;
  if EssenceCheck(Sender.AsExtended) then
    qry_Documents.Cancel;
  SaveInLog(Sender, qry_DocGroupsSerial);

  if qry_DocumentsCurrencyDebit.AsFloat <> 0 then
  begin
    qry_DocumentsCurrencyRate.OnChange := nil;
    qry_DocumentsCurrencyRate.AsFloat := qry_DocumentsDebt.AsLargeInt /
      qry_DocumentsCurrencyDebit.AsFloat;
    qry_DocumentsCurrencyRate.OnChange := qry_DocumentsCurrencyRateChange;
  end;

end;

procedure TDocumentF.qry_DocumentsCreditChange(Sender: TField);
begin
  inherited;
  if EssenceCheck(-Sender.AsExtended) then
    qry_Documents.Cancel;

  if qry_DocumentsCurrencyCredit.AsFloat <> 0 then
  begin
    qry_DocumentsCurrencyRate.OnChange := nil;
    qry_DocumentsCurrencyRate.AsFloat := qry_DocumentsCredit.AsLargeInt /
      qry_DocumentsCurrencyCredit.AsFloat;
    qry_DocumentsCurrencyRate.OnChange := qry_DocumentsCurrencyRateChange;
  end;

end;

procedure TDocumentF.qry_DocGroupsCompanyCodeChange(Sender: TField);
begin
  inherited;
  with qry_Details do
  begin
    if Parameters.ParamByName('CompanyCode').Value <> qry_DocGroupsCompanyCode.Value
    then
      Active := false;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_DocGroups.fieldbyname('CompanyCode').AsInteger;
    Active := True;
  end;

  if opta.RestDocCode and (gv_MultiCompany or CompanyFilterinLogin) then
  begin
    FreeReservedCodes(dmf.adcAccounting, 'Acc.DocGroups', 'SecondaryDocNo');
    if qry_DocGroups.State in dseditmodes then
      dbedtSecondaryDocNo.Field.Value := MakeNewCompanySecNo(Sender.Value);
  end; //
  // if not(qry_DocGroups.State in [dsInsert]) then
  // begin
  // // qry_Documents.;
  // // getresponseShow := false;
  // UpdateDocumnet(Sender.AsInteger);
  // // UpdateDocumnet(Sender.AsInteger);
  // // qry_DocGroupsCompanyCode.OnChange := nil;
  // // qry_DocGroups.Post;
  // // qry_Documents.Requery();
  // // qry_DocGroups.Edit;
  // // qry_DocGroupsCompanyCode.OnChange := qry_DocGroupsCompanyCodeChange;
  // end;
  // getresponseShow := True;
end;

procedure TDocumentF.ppDocDateGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if not PrintDateEnabled then
    Text := EmptyStr;
end;

procedure TDocumentF.ppDocTypeGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := qry_DocGroups_DocTypeName.AsString;
end;

procedure TDocumentF.DBAccNameGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if (Sender as TppDBText).DataField <> '_DetailName_L1' then
    if qry_DocumentsDetailCode.AsInteger <> 0 then
      Text := Trim(Text) + ' - ' +
        Trim(qry_Documents_DetailName.AsString) + #254;
  if qry_DocumentsCTopicCode.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' + Trim(qry_Documents_CtopicName.AsString) + #254;
  if qry_DocumentsCTopicCode2.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' +
      Trim(qry_Documents_CTopicName2.AsString) + #254;
  if qry_DocumentsCTopicCode3.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' +
      Trim(qry_DocumentsCTopicName3_l1.AsString) + #254;

end;

procedure TDocumentF.ppComentGetText(Sender: TObject; var Text: string);
begin
  inherited;
  CheckHasAid;
  if pnlAidNo.Visible then
    Text := Text + ' به شماره ' + qry_DocumentsAidDocNo.AsString;
  if pnlAidAmount.Visible then
    Text := Text + ' به مبلغ ' + qry_DocumentsAidAmount.AsString;
  if pnlAidDate.Visible then
    Text := Text + ' به تاريخ ' + qry_DocumentsAidDocdate.AsString;
  Text := Text + #254;
end;

procedure TDocumentF.ppHorofGetText(Sender: TObject; var Text: string);
begin
  inherited;
  // opt.LanguageDisplay2
  if opta.DecimalActive then
    // Text := num2alphabet(StrToInt64(RemoveComma(edtBed.Text))) + ' شيلينگ '
    Text := ConvertToWords(StrToInt64(RemoveComma(edtBed.Text)), false)
  else
    Text := num2alphabet(StrToInt64(RemoveComma(edtBed.Text))) + ' ريــال '

end;

procedure TDocumentF.qry_DocumentsDetailCodeChange(Sender: TField);
begin
  inherited;
  if qry_Documents.fieldbyname('_DetailName_L1').AsString = '' then
    with dmf.qry_Temp do
    begin
      Active := false;
      SQL.Text :=
        'SELECT DetailCode, DetailName_L1 FROM acc.Details where DetailCode=' +
        Sender.AsInteger.ToString;
      Active := True;
      if fieldbyname('DetailCode').AsString = '' then
      begin
        Warn('كد تفصيلي معتبر نيست.');
        Abort;
      end // if
      else
        qry_Documents.fieldbyname('_DetailName_L1').AsString :=
          fieldbyname('DetailName_L1').AsString;
    end; // with
  CheckHasAid;

end;

procedure TDocumentF.qry_DocumentsDetailCodeChangeExcel(Sender: TField);
begin
  inherited;
  if qry_Documents.fieldbyname('_DetailName_L1').AsString = '' then
    with qryDetailCodeExcel do
    begin
      Active := True;
      if not Locate('DetailCode', Sender.AsInteger, []) then
      begin
        Warn('كد تفصيلي معتبر نيست.');
        Abort;
      end // if
      else
        qry_Documents.fieldbyname('_DetailName_L1').AsString :=
          fieldbyname('DetailName_L1').AsString;
    end; // with
end;

procedure TDocumentF.qry_DocumentsCTopicCodeChange(Sender: TField);
begin
  inherited;
  if qry_Documents.fieldbyname('_CTopicName_L1').AsString = '' then
    with dmf.qry_Temp do
    begin
      Active := false;
      SQL.Text :=
        'SELECT CTopicCode, CTopicName_L1 FROM acc.CenterTopics where CTopicCode='
        + qry_Documents.fieldbyname('CTopicCode').AsLargeInt.ToString;
      Active := True;
      if fieldbyname('CTopicCode').AsString = '' then
      begin
        Warn('كد تفصیلی 2 معتبر نيست.');
        Abort;
      end // if
      else
        qry_Documents.fieldbyname('_CTopicName_L1').AsString :=
          fieldbyname('CTopicName_L1').AsString;
    end; // with
end;

procedure TDocumentF.qry_DocumentsCurrencyCreditChange(Sender: TField);
begin
  inherited;
  if qry_DocumentsCurrencyCredit.AsFloat > 0 then
  begin
    qry_DocumentsCredit.OnChange := nil;
    qry_DocumentsCredit.AsExtended :=
      RoundTo(qry_DocumentsCurrencyCredit.AsFloat *
      qry_DocumentsCurrencyRate.AsFloat, 0);
    qry_DocumentsCredit.OnChange := qry_DocumentsCreditChange;
  end;

end;

procedure TDocumentF.qry_DocumentsCurrencyDebitChange(Sender: TField);
begin
  inherited;
  if qry_DocumentsCurrencyDebit.AsFloat > 0 then
  begin
    qry_DocumentsDebt.OnChange := nil;
    qry_DocumentsDebt.AsExtended := RoundTo(qry_DocumentsCurrencyDebit.AsFloat *
      qry_DocumentsCurrencyRate.AsFloat, 0);
    qry_DocumentsDebt.OnChange := qry_DocumentsDebtChange;
  end;
end;

procedure TDocumentF.qry_DocumentsCurrencyRateChange(Sender: TField);
begin
  inherited;
  if qry_DocumentsCurrencyDebit.AsFloat > 0 then
  begin
    qry_DocumentsDebt.OnChange := nil;
    qry_DocumentsDebt.AsExtended := RoundTo(qry_DocumentsCurrencyDebit.AsFloat *
      qry_DocumentsCurrencyRate.AsFloat, 0);
    qry_DocumentsDebt.OnChange := qry_DocumentsDebtChange;
  end;
  if qry_DocumentsCurrencyCredit.AsFloat > 0 then
  begin
    qry_DocumentsCredit.OnChange := nil;
    qry_DocumentsCredit.AsExtended :=
      RoundTo(qry_DocumentsCurrencyCredit.AsFloat *
      qry_DocumentsCurrencyRate.AsFloat, 0);
    qry_DocumentsCredit.OnChange := qry_DocumentsCreditChange;
  end;

end;

procedure TDocumentF.qry_DocGroupsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qry_DocGroupsSecondUser.AsString := user.name;
  ChangeArticlesOrder;
  // DBEdit2.ReadOnly := (CurAccess and Integer(akDocDate)) = 0;
end;

procedure TDocumentF.CheckHasAid;
begin
  pnlAidNo.Visible := false;
  pnlAidDate.Visible := false;
  pnlAidAmount.Visible := false;
  HasCurrency := qry_Documents_HasAid.AsInteger;
  if HasCurrency = 0 then
    HasCurrency := IfThen(qry_Documents_DetailCurrencyType.AsInteger <>
      0, 6, 0);
  lblAidAmount.Caption := 'مقدار کمکی';
  pnlCurType.Visible := false;

  // if HasCurrency = 6 then
  if ((qry_Documents.fieldbyname('_DetailCurrencyType').AsInteger <> 0) and
    (opta.CurrencyActive)) then
  begin
    if ((qry_DocumentsCurrencyType.AsInteger = 0) and
      (qry_Documents.State in dseditmodes)) then
      qry_DocumentsCurrencyType.AsInteger :=
        qry_Documents_DetailCurrencyType.AsInteger;

    pnlCurType.Visible := True;
    // lblAidAmount.Caption := 'مقــــــــدار ارز';

  end;
  pnlAidDate.Left := 163;

end;

function TDocumentF.checkSecondaryDocNo;
var
  WCompany: string;
begin
  if opta.RestDocCode then
    WCompany := 'and CompanyCode = ' + qry_DocGroups.fieldbyname
      ('CompanyCode').AsString
  else
    WCompany := EmptyStr;
  with dmf.qry_Temp do
  begin
    Close;
    SQL.Text := 'SELECT count(SecondaryDocNo) FROM  acc.DocGroups ';
    SQL.Add(' where SecondaryDocNo=%S %S and YearID =%d');
    SQL.Add(' GROUP BY SecondaryDocNo');
    SQL.Text := Format(SQL.Text, [qry_DocGroups.fieldbyname('SecondaryDocNo')
      .AsString, WCompany, APPBank.Year]);
    Open;
    Result := not IsEmpty;
    Close;
  end;
end;

procedure TDocumentF.qry_DocGroupsSecondaryDocNoChange(Sender: TField);
begin
  inherited;
  if checkSecondaryDocNo then
  begin
    Warn('شماره فرعي تكراري است.‏');
    FlashAControl(dbedtSecondaryDocNo);
    Abort;
  end;
end;

procedure TDocumentF.Panel2Click(Sender: TObject);
begin
  inherited;
  qry_DocumentsCurrencyDebit.DisplayFormat :=
    Change_Format(opta.ArzNumberOfDigits);
  qry_DocumentsCurrencyCredit.DisplayFormat :=
    Change_Format(opta.ArzNumberOfDigits);

end;

procedure TDocumentF.PanelAid_POExit(Sender: TObject);
begin
  inherited;
  if DBGrid1.DataSource.DataSet.State in dseditmodes then
  begin
    PanelAid_PO.Tag := 1;
    DBGrid1.SetFocus;
    DBGrid1.SelectedIndex := GetId('TopicCode');
  end; // if
end;

procedure TDocumentF.actChangeBedBesExecute(Sender: TObject);
var
  i: Integer;
  C1: Real;
begin
  inherited;
  if not okPanel.Visible then
    exit;

  if DBGrid1.SelectedRows.Count <= 1 then
    with qry_Documents do
    begin
      Edit;

      C1 := fieldbyname('Debt').AsLargeInt;
      // fieldbyname('Debt').AsFloat := fieldbyname('Credit').AsFloat;
      // fieldbyname('Credit').AsFloat := C1;
      SetFieldValue(fieldbyname('Debt'), fieldbyname('Credit'));
      SetFieldValue(fieldbyname('Credit'), FloatToStr(C1));

      C1 := fieldbyname('CurrencyDebit').AsFloat;
      // fieldbyname('CurrencyDebit').AsFloat :=
      // fieldbyname('CurrencyCredit').AsFloat;
      // fieldbyname('CurrencyCredit').AsFloat := C1;
      SetFieldValue(fieldbyname('CurrencyDebit'),
        fieldbyname('CurrencyCredit'));
      SetFieldValue(fieldbyname('CurrencyCredit'), FloatToStr(C1));

      Post;
    end
  else
  begin
    try
      BigMessageProgBar('در حال ثبت جابجایی بدهکار بستانکار ',
        DBGrid1.SelectedRows.Count);
      try
        qry_Documents.DisableControls;
        with DBGrid1.DataSource.DataSet do
          for i := 0 to DBGrid1.SelectedRows.Count - 1 do
          begin
            GotoBookmark((DBGrid1.SelectedRows.Items[i]));
            with qry_Documents do
            begin
              Edit;

              C1 := qry_DocumentsCredit.AsExtended;
              // qry_DocumentsCredit.AsCurrency := qry_DocumentsDebt.AsCurrency;
              // qry_DocumentsDebt.AsCurrency := C1;
              SetFieldValue(qry_DocumentsCredit, qry_DocumentsDebt);
              SetFieldValue(qry_DocumentsDebt, FloatToStr(C1));

              C1 := qry_DocumentsCurrencyCredit.AsExtended;
              // qry_DocumentsCurrencyCredit.AsCurrency :=
              // qry_DocumentsCurrencyDebit.AsCurrency;
              // qry_DocumentsCurrencyDebit.AsCurrency := C1;
              SetFieldValue(qry_DocumentsCurrencyCredit,
                qry_DocumentsCurrencyDebit);
              SetFieldValue(qry_DocumentsCurrencyDebit, FloatToStr(C1));

              Post;
              GoProgressBar(qry_DocumentsRow.AsString);
            end;
          end;

      except
        on e: exception do
        begin
          add2log(e.Message);
          Warn(e.Message);
          CloseMessage;
        end;
      end;
    finally
      DBGrid1.SelectedRows.Clear;
      qry_Documents.EnableControls;
      CloseMessage;
      DBGrid1.SetFocus;
    end;

  end;

end;

procedure TDocumentF.btn1Click(Sender: TObject);
var
  Results: array [0 .. 1] of string;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'جستجوي سند',
    'SELECT BudgetTopicID, BudgetCaption_L1 FROM  acc.BudgetTopicsForUse',
    ['كد بودجه', 'عنوان'], Results, [50, 50], alLeft) then
    qry_Documents['BudgetTopicID'] := Results[0]

end;

procedure TDocumentF.btn2Click(Sender: TObject);
var
  Results: array [0 .. 1] of string;

begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'جستجوي سند',
    'SELECT  ProjectID, ProjectCaption_L1 FROM acc.ProjectsForUse',
    ['كد', 'عنوان'], Results, [50, 50], alLeft) then
    qry_Documents['ProjectID'] := Results[0]
end;

procedure TDocumentF.btnChangeStateClick(Sender: TObject);
begin
  inherited;
  if qry_DocGroups.RecordCount = 0 then
    exit;
  case qry_DocGroupsStatus.AsInteger of
    0:
      begin

        mnuChangeState.Caption := 'تبدیل به موقت';
        mnuChangeState.Tag := 1;
      end;
    1:
      begin

        mnuChangeState.Caption := 'تبدیل به قطعی';
        mnuChangeState.Tag := 2;
      end;
    2:
      exit;
  end;
  popChangeState.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TDocumentF.actPastLastArticlExecute(Sender: TObject);
begin
  inherited;
  if qry_DocGroups.State in dseditmodes then
  begin
    if not(qry_Documents.State in dseditmodes) then
      qry_Documents.Edit;
    qry_DocumentsComment.AsString := LastArticleDec;
  end; // if
end;

procedure TDocumentF._actSearchExecute(Sender: TObject);
var
  Results: array [0 .. 10] of string;
  SQL: string;
begin
  inherited;
  if ((opta.ChkSelfDocShow) and
    ((CurAccess and Integer(TMyAccessKind.akSelfDocShow)) = 0)) then
    // if (CurAccess and Integer(TMyAccessKind.akSelfDocShow)) = 0 then
    SQL := 'AND UserID = ' + user.id.ToString
  else
    SQL := EmptyStr;

  if searchCode_ADOF.SearchCode2(dmf.adcAccounting, 'جستجوي سند',
    'SELECT  acc.DocGroups.Serial, acc.DocGroups.SecondaryDocNo,acc.DocGroups.PrimaryDocNo, '
    + 'acc.DocGroups.DocDate,acc.DocGroups.DocTopic_L1,' +
    ' acc.DocTypes.DocTypeName_L1,' +
    ' case when ( status=0 ) then ''پيش نويس''' +
    '      when ( status=1 ) then ''موقت''' +
    '      when ( status=2 ) then ''قطعي''' +
    '      when ( status=3 ) then ''دائم''  end as statusName,' +
    ' acc.DocGroups.CompanyCode,acc.Companies.CompanyName_L1' +
    ' FROM acc.DocGroups INNER JOIN acc.Companies ON acc.DocGroups.CompanyCode = acc.Companies.CompanyCode INNER JOIN '
    + ' acc.DocTypes ON acc.DocGroups.DocTypeCode = acc.DocTypes.DocTypeCode where acc.DocGroups.YearID = '
    + IntToStr(APPBank.Year) + SQL, ['', 'شماره فرعي', 'شماره سند', 'تاريخ سند',
    'شرح سند', 'نوع سند', 'وضعيت سند', 'كد شركت', 'نام شركت'], Results,
    [0, 50, 50, 50, 250, 30, 50, 50, 150], alLeft) then
    qry_DocGroups.Locate('Serial', Results[0], []);
end;

procedure TDocumentF.mnuChangeStateClick(Sender: TObject);
var
  Fco, Fse, Fye, Fstate: Integer;
  Q: TADOQuery;
begin
  inherited;
  Fco := qry_DocGroupsCompanyCode.AsInteger;
  Fye := qry_DocGroupsYearID.AsInteger;
  Fse := qry_DocGroupsSerial.AsInteger;
  Fstate := mnuChangeState.Tag;
  if Fstate = 1 then
  begin
    if not(qry_DocGroups.State in dseditmodes) then
      qry_DocGroups.Edit;

    qry_DocGroupsStatus.AsInteger := 1;
    if not ValidateDocument then
    begin
      ShowGeneralWarning;
      Abort;
    end;
    qry_DocGroups.Post;
  end
  else
  begin
    Q := TADOQuery.Create(Self);
    with Q do
      try
        Connection := dmf.adcAccounting;
        SQL.Text := Format('update acc.docgroups set Status = %d ' +
          'where companycode = %d and yearid = %d and Serial = %d',
          [Fstate, Fco, Fye, Fse]);
        ExecSQL;
      finally
        Q.Free;
        qry_DocGroups.Requery;
        qry_DocGroups.Locate('Serial;YearId;companycode',
          VarArrayOf([Fse, Fye, Fco]), []);
      end;
  end;
end;

procedure TDocumentF.mnuPrintClick(Sender: TObject);
var
  s: string;
  filename: string;
  tmpSort: string;
  BT: TBookmark;
  serial, company, Year: Integer;
  afrom, ato, i: Integer;
  lblCompany: TppLabel;
begin
  inherited;

  case TMenuItem(Sender).Parent.Tag of
    1:
      filename := opta.DocReport1;
    2:
      filename := opta.DocReport2;
    3:
      filename := opta.DocReport3;
  end;
  // case
  case TMenuItem(Sender).Tag of
    1:
      begin
        ppMaster.RangeBegin := rbCurrentRecord;
        ppMaster.RangeEnd := reCurrentRecord;
      end; // 1
    2:
      begin
        ppMaster.RangeBegin := rbFirstRecord;
        ppMaster.RangeEnd := reLastRecord;
      end; // 2
  end;
  s := GetReportFileWithPath(filename);
  // S := opta.ReportPath + filename;
  if not FileExists(s) then
  begin
    Warn('فایل چاپی ' + s + '  یافت نشد');
    exit;
  end;
  if TMenuItem(Sender).Tag = 2 then
    with TfilterF.Create2(Self, myParams) do
      try
        AddItem(dmf.adcAccounting, 'UserID', 'کاریر', 'كد کاریر', ftInteger,
          dvMinMax, '', '', ciLookup, 'SELECT DISTINCT DG.UserID, O.name ' +
          'FROM Acc.DocGroups AS DG  LEFT OUTER JOIN ' +
          ' FaraSystems.dbo.Operators AS O ON DG.UserID = O.UserID ',
          'Select Min(UserID),max(UserID) from Acc.DocGroups');

        AddItem(dmf.adcAccounting, 'Date', 'تاريخ', 'تاريخ', ftDate, dvMinMax,
          '', '', ciSimple, '', Format(strMaxMinDocDate, [APPBank.Year]));
        AddItem(dmf.adcAccounting, 'SecondaryDocNo', 'شماره فرعي ',
          'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
        AddItem(dmf.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
          'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
          Format(strMaxMinPrimaryDocNo, [APPBank.Year]));

        if gv_MultiCompany then
          AddItem(dmf.adcAccounting, 'CompanyCode', 'كد شركت ', 'كد شركت',
            ftInteger, dvMinMax, '', '', ciLookup,
            'SELECT  CompanyCode, CompanyName_L1 FROM  acc.Companies  ',
            ' Select 0,99999 ');

        if ShowModal = mrOk then
        begin
          GetFilterString;
          tmpSort := qry_DocGroups.Sort;
          qry_DocGroups.Filter := '(((SecondaryDocNo >= ' +
            VarToStr(GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger)
            ) + ') and (SecondaryDocNo <=' +
            VarToStr(GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger))
            + ')) AND ((DocDate >= ' +
            QuotedStr(GetcFrom(myParams.ParamValues['Date'], ftDate)) +
            ') and (DocDate <=' + QuotedStr(GetcTo(myParams.ParamValues['Date'],
            ftDate)) + '))' + 'And (PrimaryDocNo >= ' +
            VarToStr(GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger))
            + ') and (PrimaryDocNo <=' +
            VarToStr(GetcTo(myParams.ParamValues['PrimaryDocNo'],
            ftInteger)) + '))'

            + 'And ((UserID >= ' +
            VarToStr(GetcFrom(myParams.ParamValues['UserID'], ftInteger)) +
            ') and (UserID <=' + VarToStr(GetcTo(myParams.ParamValues['UserID'],
            ftInteger)) + '))'

            ;

          if gv_MultiCompany then
            qry_DocGroups.Filter := qry_DocGroups.Filter +
              'And (CompanyCode >= ' +
              VarToStr(GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger))
              + ') and (CompanyCode <=' +
              VarToStr(GetcTo(myParams.ParamValues['CompanyCode'],
              ftInteger)) + ')';

          qry_DocGroups.Sort := 'PrimaryDocNo';
          qry_DocGroups.Filtered := True;
          if ChekPrint then
            with dmf.qry_Temp do
            begin
              Close;
              SQL.Text := 'UPDATE    Acc.DocGroups  SET   Status =2  ' +
                ' WHERE (SecondaryDocNo BETWEEN ' +
                IntToStr(GetcFrom(myParams.ParamValues['SecondaryDocNo'],
                ftInteger)) + ' AND ' +
                IntToStr(GetcTo(myParams.ParamValues['SecondaryDocNo'],
                ftInteger)) + ') ' + '  AND  (PrimaryDocNo BETWEEN ' +
                IntToStr(GetcFrom(myParams.ParamValues['PrimaryDocNo'],
                ftInteger)) + ' AND ' +
                IntToStr(GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger)
                ) + ') ' + '  AND (DocDate BETWEEN ''' +
                GetcFrom(myParams.ParamValues['Date'], ftDate) + ''' AND ''' +
                GetcTo(myParams.ParamValues['Date'], ftDate) +
                ''') AND (YearID =' + IntToStr(APPBank.Year) + ') ' +
                ' AND (CompanyCode =' +
                IntToStr(qry_DocGroups.fieldbyname('CompanyCode').AsInteger) +
                ') AND (Status < 2)'

                + '  AND  (UserID BETWEEN ' +
                IntToStr(GetcFrom(myParams.ParamValues['UserID'], ftInteger)) +
                ' AND ' + IntToStr(GetcTo(myParams.ParamValues['UserID'],
                ftInteger)) + ') ';

              if gv_MultiCompany then
                SQL.Text := SQL.Text + '  AND  (CompanyCode BETWEEN ' +
                  IntToStr(GetcFrom(myParams.ParamValues['CompanyCode'],
                  ftInteger)) + ' AND ' +
                  IntToStr(GetcTo(myParams.ParamValues['CompanyCode'],
                  ftInteger)) + ') ';

              ExecSQL;
              Close;
            end;

        end

        else
          exit;

      finally
        Free;
      end // try
  else if ChekPrint then
    with dmf.qry_Temp do
    begin
      Close;
      SQL.Text := 'UPDATE Acc.DocGroups SET Status =2  WHERE (Serial =' +
        IntToStr(qry_DocGroups.fieldbyname('Serial').AsInteger) +
        ') AND (Status <2)';
      ExecSQL;
      Close;
    end;

  _ShowDocType := StrToInt(dmf.ReadBankConfigAcc('ReportKind'));
  try
    ChangeArticlesOrder(_ShowDocType);
    qry_Documents.DisableControls;
    qry_DocGroups.DisableControls;
    qry_Documents.AfterScroll := nil;
    BT := qry_DocGroups.GetBookmark;
    serial := qry_DocGroups.fieldbyname('serial').AsVariant;
    Year := qry_DocGroups.fieldbyname('YearId').AsVariant;
    company := qry_DocGroups.fieldbyname('companycode').AsVariant;
    qry_DocGroups.Requery();
    qry_DocGroups.Locate('Serial;YearId;companycode',
      VarArrayOf([serial, Year, company]), []);

    with ppReport1 do
    begin
      Template.filename := s;
      Template.LoadFromFile;
      PreviewFormSettings.SinglePageOnly := True;
      if PrintPreview then
        DeviceType := 'Screen'
      else
        DeviceType := 'Printer';
      if ppSecDocNum <> nil then
        ppSecDocNum.Visible :=
          StrToInt(dmf.ReadBankConfigAcc('SecondaryDocNoActiveOnPrint')) = 1;
      if ppDocDate <> nil then
        ppDocDate.Visible :=
          StrToInt(dmf.ReadBankConfigAcc('DocDateActiveOnPrint')) = 1;

      initReport(ppReport1, ppFooterBand1, ppRegion1, ppRecFooterLine,
        dmf.ReadBankConfigAcc('DocumentsSignature'));
      if ReadConfig(APPID, 'DocReportName') <> 'docp_style.rtm' then
        initReport(ppReport1, ppSummaryBand1, ppRegion2, ppRecFooterLine2,
          dmf.ReadBankConfigAcc('DocumentsSignature'));
      PreviewFormSettings.SinglePageOnly := True;
      PreviewFormSettings.ZoomPercentage :=
        Xopt.ReadLocalConfig('ZoomPercentage',
        PreviewFormSettings.ZoomPercentage);

      if DocumentF.myParams.FindParam('CompanyCode') <> nil then
      begin
        afrom := GetcFrom(DocumentF.myParams.ParamValues['CompanyCode'],
          ftInteger);;
        ato := GetcTo(DocumentF.myParams.ParamValues['CompanyCode'],
          ftInteger);;
        if afrom = ato then
        begin
          for i := 0 to DocumentF.ComponentCount - 1 do
            if DocumentF.Components[i] is TppLabel then
            begin
              lblCompany := TppLabel(DocumentF.Components[i]);
              if LowerCase(lblCompany.UserName) = 'pplbcompanyname' then
              begin
                lblCompany.OnGetText := nil;
                lblCompany.Text := GetCompanyName(afrom);
                Break;
              end;

            end;

        end;
      end; // if

      print;
    end; // with
  finally
    if TMenuItem(Sender).Tag = 2 then
      /// abedi
      qry_DocGroups.Sort := tmpSort;

    qry_Documents.EnableControls;
    qry_DocGroups.EnableControls;
    qry_Documents.AfterScroll := qry_DocumentsAfterScroll;
    qry_DocGroups.Filtered := false;
    _ShowDocType := StrToInt(dmf.ReadBankConfigAcc('docKind'));

    qry_DocGroups.GotoBookmark(BT);
    // ChangeArticlesOrder(_ShowDocType);
  end; // try
end;

procedure TDocumentF.actImportExcelExecute(Sender: TObject);
begin
  inherited;
  if not okPanel.Visible then
    exit;
  try
    OffDataSetEvents(qry_Documents);
    getresponseShow := false;
    if not(opta.DecimalActive) then
      qry_Documents.BeforePost := qry_DocumentsBeforePostExcel;
    qry_DocumentsDetailCode.OnChange := qry_DocumentsDetailCodeChangeExcel;
    GetExcelF.ShowImPortExcel(qry_Documents);
  finally
    getresponseShow := True;
    OnDataSetEvents(qry_Documents);
  end;

end;

procedure TDocumentF.qry_DocumentsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  // DataSet.Last;
  InsertRow.Row := DataSet.fieldbyname('row').AsInteger;
  InsertRow.BMark := DataSet.GetBookmark;
end;

procedure TDocumentF.SaveInLog(FldName, IDFld: TField);
var
  // conStr: String;
  // userName: String;
  ST: Byte;
begin
  if not BankExists('Log_File') then
    exit;
  // userName := ReadConfig('','UserName','FaraUser');
  // conStr:=Format('Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;Initial Catalog=Log_File'
  // + ';Data Source=%s;User ID=%s',[opta.ServerName,userName]);

  case FldName.DataSet.State of
    dsInsert:
      ST := 1;
    dsedit:
      ST := 2;
  else
    ST := 3;
  end;
  with TADOStoredProc.Create(Self) do
    try
      ConnectionString := GetConStr('Log_File');
      ProcedureName := 'InsertToLog;1';
      Parameters.Refresh;
      // if ParamCount = 0 then Exit;
      Parameters.ParamByName('@SysID').Value := SYSID;
      Parameters.ParamByName('@FormName').Value := FldName.Owner.name;
      Parameters.ParamByName('@FormID').Value := IDFld.AsInteger;
      Parameters.ParamByName('@FieldName').Value := FldName.FieldName;
      Parameters.ParamByName('@CreateDate').Value := Now;
      Parameters.ParamByName('@Amount_New').Value := FldName.Value;
      Parameters.ParamByName('@Amount_Last').Value := 0;
      Parameters.ParamByName('@State').Value := ST;
      Parameters.ParamByName('@UserName').Value := user.name;
      try
        ExecProc;
      except
      end;
    finally
      Free;
    end; //
end;

procedure TDocumentF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if aBigPanel.Visible then
    aBigPanel.Visible := false;
  tmr1.Enabled := false;
end;

function TDocumentF.CheckAid: Boolean;
begin
  Result := True;
  if (qry_Documents.fieldbyname('_HasAid').AsInteger in [4, 7, 8, 10]) and
    (qry_Documents.fieldbyname('AidDocNo').AsString = EmptyStr) then
  begin
    ShowWarning('شماره كمكي وارد نشده است‏');
    // edtAidNo.SetFocus;
    Result := false;
    exit;
  end;
  if (qry_Documents.fieldbyname('_HasAid').AsInteger in [5, 7, 9, 10]) and
    (qry_Documents.fieldbyname('AidDocdate').AsString = EmptyStr) then
  begin
    ShowWarning('تاريخ كمكي وارد نشده است‏');
    // edtAidDate.SetFocus;
    Result := false;
    exit;
  end;
  if (qry_Documents.fieldbyname('_HasAid').AsInteger in [6, 8, 9, 10]) and
    (qry_Documents.fieldbyname('AidAmount').AsString = EmptyStr) then
  begin
    ShowWarning('مقدار كمكي وارد نشده است‏');
    // edtAidAmount.SetFocus;
    Result := false;
    exit;
  end;
  StopWarn;
end;

procedure TDocumentF.qry_DocGroupsDocDateChange(Sender: TField);
var
  s: string;
  StartDate: string;
begin
  inherited;
  StartDate := GetLastConstDocDate;

  s := Sender.AsString;
  if not validate_date(false, StartDate, APPBank.endYear, 'تاريخ سند', s, false)
  then
  begin
    ShowWarning('تاريخ سند نامعتبر است');
    edtDocDate.SetFocus;
  end
  else if not validate_date(false, StartDate, APPBank.endYear, 'تاريخ سند', s,
    false) then
  begin
    // if not ( Dmf.CheckLevel(edtState2,FormType)
    /// /    or Dmf.CheckLevel(edtState3,FormType)
    // ) then begin
    ShowWarning('سند در اين تاريخ دائم شده است .‏');
    edtDocDate.SetFocus;
    // end ;//if
  end
  else
    StopWarn;
end;

procedure TDocumentF.qry_DocumentsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('_Radif').AsInteger := abs(DataSet.RecNo);
end;

procedure TDocumentF.qry_DocumentsCashTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'نقدی';
    2:
      Text := 'غیر نقدی';
  end;
end;

procedure TDocumentF.qry_DocumentsCashTypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'نقدی' then
    Sender.AsInteger := 1;
  if Text = 'غیر نقدی' then
    Sender.AsInteger := 2;
end;

procedure TDocumentF.mnuScanClick(Sender: TObject);
var
  tblName: string;
  keyTbl: string;
  ReadOnly: Boolean;
begin
  inherited;
  case TMenuItem(Sender).Tag of
    0:
      begin
        tblName := 'util.ScanInfo';
        keyTbl := qry_DocGroups.fieldbyname('Serial').AsString;
      end;
    1:
      begin
        tblName := 'util.ScanInfo';
        keyTbl := 'D_' + qry_Documents.fieldbyname('ID').AsString;
      end;

  end;

  readOnly := not dmf.CheckLevel(EdtLevel, FormType);

  ScanImageF.ScanImage(dmf.adcAccounting, tblName, keyTbl, 1, readOnly, '',
    false, '', dmf.CheckLevel(AddLevel, 101, false),
    dmf.CheckLevel(DelLevel, 101, false))
end;

procedure TDocumentF.mnuZoomPercentageClick(Sender: TObject);
var
  ZoomPercentage: string;
begin
  inherited;
  ZoomPercentage := Xopt.ReadLocalConfig('ZoomPercentage',
    ppReport1.PreviewFormSettings.ZoomPercentage).ToString;
  ZoomPercentage := get_box('درصد پیش نمایش',
    'درصد پیش نمایش چاپ سند را وارد كنيد', ZoomPercentage);
  if ZoomPercentage <> EmptyStr then
    Xopt.SaveLocalConfig('ZoomPercentage', ZoomPercentage);
end;

procedure TDocumentF.actScanExecute(Sender: TObject);
begin
  inherited;
  // if not(dmf.CheckLevel(EdtLevel, FormType) and (okPanel.Visible)) then
  // exit;
  popScan.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TDocumentF.ppSystemVariable1GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TDocumentF.ppSysVarPageNumGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TDocumentF.ppSystemVariable2GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TDocumentF.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if (Self.Components[i] is TADOQuery) then
      if ((Self.Components[i] as TADOQuery).Active) and
        ((Self.Components[i] as TADOQuery).LockType in [ltReadOnly]) and
        ((Self.Components[i] as TADOQuery).name <> EmptyStr) then
        (Self.Components[i] as TADOQuery).Requery;

end;

procedure TDocumentF.actMoveDocExecute(Sender: TObject);
begin
  inherited;

  // CreateMDIForm2(TMoveDocF,MoveDocF,Self,qry_DocGroups.fieldbyname('Serial').AsInteger);
end;

procedure TDocumentF.actMultiSelectExecute(Sender: TObject);
begin
  inherited;
  // mniMultiSelect.Checked := not mniMultiSelect.Checked;
  // if mniMultiSelect.Checked then
  // DBGrid1.Options := DBGrid1.Options + [dgMultiSelect]
  // else
  // DBGrid1.Options := DBGrid1.Options - [dgMultiSelect]
end;

procedure TDocumentF.actInsertRowExecute(Sender: TObject);
begin
  inherited;
  if not okPanel.Visible then
    exit;
  InsertRow.CanInsert := True;
  qry_Documents.Insert;
end;

procedure TDocumentF.SetRow;
begin
  if not InsertRow.CanInsert then
    exit;
  with qry_Documents do
    try
      with InsertRow do
      begin
        DisableControls;
        AfterPost := nil;
        GotoBookmark(BMark);
        while not eof do
        begin
          Edit;
          fieldbyname('row').AsInteger := fieldbyname('row').AsInteger + 1;
          Post;
          Next;
        end;
      end;
    finally
      EnableControls;
      GotoBookmark(InsertRow.BMark);
      InsertRow.CanInsert := false;
      AfterPost := qry_DocumentsAfterPost;
    end;
end;

procedure TDocumentF.actStaticCommentExecute(Sender: TObject);
begin
  inherited;
  StaticComment := get_box('شرح سند', 'شرح نمونه سند را وارد كنيد', '');
end;

procedure TDocumentF.actInsertExecute(Sender: TObject);
begin
  inherited;
  qry_Documents.Last;
  qry_Documents.Append;
end;

procedure TDocumentF.actPortionExecute(Sender: TObject);
begin
  inherited;
  CreateChildForm(TPortionInDocF, PortionInDocF, Self,
    qry_DocGroups.fieldbyname('Serial').AsInteger, alNone)
end;

procedure TDocumentF.actPostExecute(Sender: TObject);
begin
  inherited;

  try
{$REGION 'Before Post Doc_Groups'}
    if not((qry_DocGroupsSecondaryDocNo.AsInteger >= opta.StartLimitID) and
      (qry_DocGroupsSecondaryDocNo.AsInteger <= opta.EndLimitID)) then
    begin
      Warn('شماره سند وارده خارج از محدوده تعیین شده است.');
      Abort;
    end;
    if EkhtetamieCheck(qry_DocGroupsDocDate.AsString,
      qry_DocGroupsCompanyCode.AsInteger) then
    begin
      Warn('امکان ثبت سند به تاریخ قبل از اختتامیه وجود ندارد. ');
      Abort;
    end;
    if qry_Documents.State in dseditmodes then
    begin
      if ((qry_DocumentsDebt.AsExtended + qry_DocumentsCredit.AsExtended) = 0)
        or (qry_Documents_MoeenName.AsString = EmptyStr) then
        qry_Documents.Cancel
      else
        qry_Documents.Post;
    end;
    if qry_Documents.IsEmpty and ChkDocEmpty then
    begin
      Warn(strEmptyDoc);
      Abort;
    end;
    // CalculateSummary;
    if not ValidateDocument then
    begin
      ShowGeneralWarning;
      Abort;
    end;
    qry_DocGroupsMakeDate.AsDateTime := Now;
    qry_DocGroupsDocDateMiladi.AsDateTime :=
      Shamsi2Miladi(qry_DocGroupsDocDate.AsString);
{$REGION 'For Update MasterKey To DetailKey'}
    with qry_Documents do
      try
        qry_Documents.DisableControls;
        qry_Documents.BeforePost := nil;
        qry_Documents.AfterPost := nil;
        qry_Documents.AfterScroll := nil;
        qry_Documents.First;
        while not qry_Documents.eof do
        begin
          qry_Documents.Edit;
          qry_DocumentsSerial.AsInteger := qry_DocGroupsSerial.AsInteger;
          qry_DocumentsYearID.AsInteger := qry_DocGroupsYearID.AsInteger;
          qry_DocumentsCompanyCode.AsInteger :=
            qry_DocGroupsCompanyCode.AsInteger;
          qry_Documents.Post;
          Next;
        end;
      finally
        qry_Documents.BeforePost := qry_DocumentsBeforePost;
        qry_Documents.AfterPost := qry_DocumentsAfterPost;
        qry_Documents.AfterScroll := qry_DocumentsAfterScroll;
        qry_Documents.EnableControls;
      end;
{$ENDREGION}
{$ENDREGION}
    DocTransation(qry_DocGroups.State);

    if opta.UseAnalyze then
      if not dmf.adcAccounting.InTransaction then
        dmf.adcAccounting.BeginTrans;
    qry_DocGroups.Post;
    if opta.UseAnalyze then
      RemoveExistRelatedId(qry_Documents);
    qry_Documents.UpdateBatch;
    if opta.UseAnalyze then
      if dmf.adcAccounting.InTransaction then
        dmf.adcAccounting.CommitTrans;

    if getresponseShow then
    begin
      BigMessage('ثبت شد.', 1);
    end;

    FreeReservedCodes(dmf.adcAccounting, 'Acc.DocGroups', '', '', 1);
    DeleteFile(__AppData + _UnsavedFileName);
    ChangeArticlesOrder(_ShowDocType);
    DefaultDate := qry_DocGroupsDocDate.AsString;

  except
    on e: exception do
    begin
      if opta.UseAnalyze then
        if dmf.adcAccounting.InTransaction then
          dmf.adcAccounting.RollbackTrans;
      if not(e is EAbort) then
      begin
        Warn('اشکال در ثبت' + #10#13 + e.Message);
        add2log(e.Message);
      end;
    end;
  end;
end;

procedure TDocumentF.actRestoreExecute(Sender: TObject);
begin
  inherited;
  if FileExists(__AppData + _LastRemoveDoc) then
    CheckUnsaved(_LastRemoveDoc);
end;

procedure TDocumentF.qry_DocumentsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not user.admin then
    if (CurAccess and Integer(TMyAccessKind.akSelfDocDelete)) <> 0 then
      if (qry_DocGroupsFirstUser.AsString <> user.name) then
        raise exception.Create
          ('محدودیت دسترسی در حذف اسناد ثبت شده توسط سایر کاربران');

  if not okPanel.Visible then
    Abort;
  if not dmf.CheckLevel(DelRowLevel, FormType) then
    Abort;
  if CheckRelatedIDExists(DataSet.fieldbyname('ID').AsInteger, false) then
    if get_response
      ('این ثبت در آنالیز حساب استفاده شده آیا مایل به حذف می باشید؟') <> mrYes
    then
      Abort
    else
    begin
      if qry_DocumentsRelatedID.AsInteger > 0 then
      begin
        dmf.adcAccounting.Execute
          (Format('UPDATE Acc.DocRelated SET RelatedID = 0 WHERE (RelatedID = %d)',
          [qry_DocumentsRelatedID.AsInteger]));
        dmf.adcAccounting.Execute
          (Format('UPDATE Acc.Documents SET RelatedID = 0 WHERE (RelatedID = %d)',
          [qry_DocumentsRelatedID.AsInteger]));
      end
      else
        with dmf.qry_Temp do
        begin
          Active := false;
          SQL.Text := Format('SELECT  Acc.DocRelated.RelatedID ' +
            ' FROM Acc.Documents INNER JOIN ' +
            ' Acc.DocRelated ON Acc.Documents.Serial = Acc.DocRelated.Serial ' +
            ' AND Acc.Documents.CompanyCode = Acc.DocRelated.CompanyCode AND ' +
            ' Acc.Documents.ID = Acc.DocRelated.ID AND Acc.Documents.YearID = Acc.DocRelated.YearID '
            + ' WHERE (Acc.DocRelated.RelatedID > 0) AND (Acc.Documents.ID = %d )',
            [qry_DocumentsID.AsInteger]);
          Active := True;
          while not eof do
          begin
            dmf.adcAccounting.Execute
              (Format('UPDATE Acc.DocRelated SET RelatedID = 0 WHERE (RelatedID = %d)',
              [Fields[0].AsInteger]));
            dmf.adcAccounting.Execute
              (Format('UPDATE Acc.Documents SET RelatedID = 0 WHERE (RelatedID = %d)',
              [Fields[0].AsInteger]));
            Next;
          end;
          Active := false;
        end;
    end;

end;

procedure TDocumentF.UpdateCoding;
begin
  with qryAccCode do
  begin
    Close;
    Parameters.ParamByName('TopicCode').Value :=
      qry_Documents.fieldbyname('TopicCode').AsLargeInt;
    // Parameters.ParamByName('TopicCode1').Value :=
    // qry_Documents.fieldbyname('TopicCode').AsLargeInt;
    // Parameters.ParamByName('TopicCode2').Value := qry_Documents.fieldbyname
    // ('TopicCode').AsInteger;
    // Parameters.ParamByName('TopicCode3').Value := qry_Documents.fieldbyname
    // ('TopicCode').AsInteger;
    Parameters.ParamByName('DetailCode').Value :=
      qry_Documents.fieldbyname('DetailCode').AsInteger;
    Parameters.ParamByName('CTopic').Value :=
      qry_Documents.fieldbyname('CTopicCode').AsInteger;
    // Parameters.ParamByName('CTopic1').Value := qry_Documents.fieldbyname
    // ('CTopicCode').AsInteger;
    Parameters.ParamByName('CTopic2').Value :=
      qry_Documents.fieldbyname('CTopicCode2').AsInteger;
    // Parameters.ParamByName('CTopic4').Value := qry_Documents.fieldbyname
    // ('CTopicCode2').AsInteger;
    Parameters.ParamByName('CTopic3').Value :=
      qry_Documents.fieldbyname('CTopicCode3').AsInteger;

    Parameters.ParamByName('CompanyCode').Value := 1;

    Open;
  end; // with
end;

procedure TDocumentF.actRestValueExecute(Sender: TObject);
begin
  inherited;
  SumSelValue := 0;
  ListRecord.Clear;
  StatusBar1.Panels[1].Text := CurrToStrF(SumSelValue, ffCurrency, 0);
  DBGrid1.Repaint;
end;

procedure TDocumentF.SumSelectRow(Column: TColumnEh);
var
  Rowinx: Integer;
  SelRowValue: Real;
begin
  if not(Column.Index in [8, 9]) then
    exit;
  if CtrlDown then
  begin
    Rowinx := ListRecord.IndexOf(pointer(qry_Documents.RecNo));
    SelRowValue := IfThen(Column.Index = 8, Column.Field.AsFloat,
      -Column.Field.AsFloat);
    if Rowinx = -1 then
    begin
      ListRecord.Add(pointer(qry_Documents.RecNo));
      SumSelValue := SumSelValue + SelRowValue;
    end
    else
    begin
      SumSelValue := SumSelValue - SelRowValue;
      ListRecord.Delete(Rowinx);
    end;
    StatusBar1.Panels[1].Text := CurrToStrF(SumSelValue, ffCurrency, 0);
  end;
end;

procedure TDocumentF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  if DataCol in [8, 9] then
    if ListRecord.IndexOf(pointer(qry_Documents.RecNo)) <> -1 then
    begin
      DBGrid1.Canvas.font.Color := clMaroon;
      DBGrid1.Canvas.font.Style := [fsBold];
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

// function TDocumentF.ChkHasCompany: Integer;
// begin
// Result := -1;
/// /  with dmf.qry_Temp do
/// /  begin
/// /    Close;
/// /    SQL.Text := 'if ((Select COUNT( *) From Acc.Details ';
/// /    SQL.Add('Where CompanyCode = :Cm AND DetailCode = :DT) = 0)');
/// /    SQL.Add('begin');
/// /    SQL.Add('Select CompanyCode From Acc.Details');
/// /    SQL.Add('Where DetailCode = :DT2 And UseKindInCo = 0');
/// /    SQL.Add('end');
/// /    SQL.Add('else select -1');
/// /    Parameters.ParamByName('CM').Value := qry_DocumentsDetail Company.AsInteger;
/// /    Parameters.ParamByName('DT').Value := qry_DocumentsDetailCode.AsInteger;
/// /    Parameters.ParamByName('DT2').Value := qry_DocumentsDetailCode.AsInteger;
/// /    Open;
/// /    if not Fields[0].IsNull then
/// /      Result := Fields[0].AsInteger;
/// /    Close;
/// /  end;
// end;

procedure TDocumentF.CompanyClick(Sender: TObject);
var
  tg: Integer;
  cmd: string;

begin
  if get_response('از تغییر کد شرکت اطمینان هستید؟') = mrYes then
  begin
    tg := (Sender as TMenuItem).Tag;
    cmd := 'Update acc.docGroups set companyCode=' + tg.ToString +
      ' where serial=' + qry_DocGroupsSerial.AsString + ' and yearid=' +
      APPBank.Year.ToString;
    dmf.adcAccounting.Execute(cmd);
    qry_DocGroups.Requery();
  end;
end;

procedure TDocumentF.actGeneralizCommentExecute(Sender: TObject);
var
  CommentStr, CommentStr_L2: string;
begin
  inherited;
  if qry_DocGroups.State in dseditmodes then
    with qry_Documents do
    begin
      CommentStr := qry_DocumentsComment.AsString;
      CommentStr_L2 := qry_DocumentsComment_L2.AsString;
      if CommentStr <> EmptyStr then
        try
          DisableControls;
          Next;
          while not eof do
          begin
            Edit;
            qry_DocumentsComment.AsString := CommentStr;
            qry_DocumentsComment_L2.AsString := CommentStr_L2;
            Post;
            Next;
          end;
        finally
          EnableControls;
        end;
    end;
end;

procedure TDocumentF.actGetExcelMasterDetailsExecute(Sender: TObject);
begin
  inherited;
  try
    getresponseShow := false;
    InsertFromExcel := True;
    GetExcelMasterDetailsF.ShowImPortExcel(qry_DocGroups, qry_Documents);
  finally
    InsertFromExcel := false;
    getresponseShow := True;
  end;
end;

procedure TDocumentF.plblSumCurrencyCreditGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := CurrToStrF(CurrencyCredit, ffCurrency, 2);
end;

procedure TDocumentF.ppLabel5GetText(Sender: TObject; var Text: string);
begin
  inherited;

  Text := CurrToStrF(bed, ffCurrency, 0);
end;

procedure TDocumentF.plbl1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := CurrToStrF(bes, ffCurrency, 0);
end;

procedure TDocumentF.plblCurrencyDebitGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := CurrToStrF(CurrencyDebit, ffCurrency, 2);

end;

procedure TDocumentF.plblHorofGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := ConvertToWords(StrToInt64(RemoveComma(edtBed.Text)), false)
end;

procedure TDocumentF.plblHorof_FarsiGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := num2alphabet(StrToInt64(RemoveComma(edtBed.Text))) + ' ريــال '
end;

procedure TDocumentF.DbaccDetailNameGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if (Sender as TppDBText).DataField <> '_DetailName_L1' then
    if qry_DocumentsDetailCode.AsInteger <> 0 then
      Text := Trim(Text) + ' - ' +
        Trim(qry_Documents_DetailName.AsString) + #254;
  if qry_DocumentsCTopicCode.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' + Trim(qry_Documents_CtopicName.AsString) + #254;
  if qry_DocumentsCTopicCode2.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' +
      Trim(qry_Documents_CTopicName2.AsString) + #254;
  if qry_DocumentsCTopicCode3.AsInteger <> 0 then
    Text := Trim(Text) + ' - ' +
      Trim(qry_DocumentsCTopicName3_l1.AsString) + #254;
end;

procedure TDocumentF.edtCompanyCodeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton1.Click

end;

procedure TDocumentF.qry_DocumentsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qry_Documents.Parameters.ParamByName('CompanyCode').Value :=
    qry_DocGroupsCompanyCode.AsInteger
end;

procedure TDocumentF.qry_DocumentsCTopicCode2Change(Sender: TField);
begin
  inherited;
  if qry_Documents.fieldbyname('_CTopicName2_L1').AsString = '' then
    with dmf.qry_Temp do
    begin
      Active := false;
      SQL.Text :=
        'SELECT CTopicCode2, CTopicName2_L1 FROM acc.CenterTopics2 where CTopicCode2='
        + qry_Documents.fieldbyname('CTopicCode2').AsInteger.ToString;
      Active := True;
      if fieldbyname('CTopicCode2').AsString = '' then
      begin
        Warn('كد تفصیلی 3 معتبر نيست.');
        Abort;
      end // if
      else
        qry_Documents.fieldbyname('_CTopicName2_L1').AsString :=
          fieldbyname('CTopicName2_L1').AsString;
    end;
end;

procedure TDocumentF.qry_DocumentsCTopicCode3Change(Sender: TField);
begin
  inherited;
  if qry_Documents.fieldbyname('CTopicName3_l1').AsString = '' then
    with dmf.qry_Temp do
    begin
      Active := false;
      SQL.Text :=
        'SELECT CTopicCode3, CTopicName3_L1 FROM  Acc.CTopicCode3 Where CTopicCode3='
        + qry_Documents.fieldbyname('CTopicCode3').AsLargeInt.ToString;
      Active := True;

      if fieldbyname('CTopicCode3').AsString = '' then
      begin
        Warn('كد مركز هينه 3 معبتر نيست.');
        Abort;
      end // if
      else
        qry_Documents.fieldbyname('CTopicName3_l1').AsString :=
          fieldbyname('CTopicName3_L1').AsString;
    end;
end;

procedure TDocumentF.actGetExcelMasterDetails2Execute(Sender: TObject);
var
  i: Integer;
  FieldNew, FieldOld: TField;
begin
  inherited;
  QryDoc := TADOQuery.Create(DocumentF);
  QryDocGrp := TADOQuery.Create(DocumentF);
  with QryDocGrp do
  begin
    Name := 'QryDocGrp';
    Connection := theMainConnection;
    AfterInsert := qryDocGrpAfterInsert;
    SQL.Text := 'SELECT TOP 0 *';
    SQL.Add('FROM Acc.DocGroups');
    SQL.Add('WHERE (Serial = 0)');
    Open;

    for i := 0 to FieldCount - 1 do
    begin
      FieldNew := Fields[i];
      FieldOld := qry_DocGroups.FindField(FieldNew.FieldName);
      if FieldOld <> nil then
      begin
        FieldNew.DisplayLabel := FieldOld.DisplayLabel;
      end;
    end

  end;
  with QryDoc do
  begin
    Name := 'QryDoc';
    Connection := theMainConnection;
    AfterInsert := qryDocAfterInsert;
    BeforeInsert := qryDocBeforeInsert;
    SQL.Text := 'SELECT TOP 0 *';
    SQL.Add('FROM Acc.Documents');
    SQL.Add('WHERE (Serial = 0)');
    Open;

    for i := 0 to FieldCount - 1 do
    begin
      FieldNew := Fields[i];
      FieldOld := qry_Documents.FindField(FieldNew.FieldName);
      if FieldOld <> nil then
      begin
        FieldNew.DisplayLabel := FieldOld.DisplayLabel;
      end;
    end

  end;

  try
    getresponseShow := false;
    serialExcell := GetANewCode('',
      Format('select max(serial) from acc.docGroups where (YearID = %d) AND (serial BETWEEN %d AND %d)',
      [APPBank.Year, opta.StartLimitID, opta.EndLimitID]), 'serial',
      dmf.adcAccounting);
    Warn2('تا پایان عملیات  ثبت سند توسط سایر همکاران انجام نشود', 0);

    GetExcelMasterDetailsF.ShowImPortExcel(QryDocGrp, QryDoc);
  finally
    QryDoc.Free;
    QryDocGrp.Free;
    getresponseShow := True;
    qry_DocGroups.Requery();
  end;
end;

procedure TDocumentF.qryDocBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IF QryDocGrp.State in dseditmodes then
    QryDocGrp.Post;
end;

procedure TDocumentF.qryDocGrpAfterInsert(DataSet: TDataSet);
begin
  inherited;
  InsertRow.Row := 0;

  DataSet.fieldbyname('FirstUser').AsString := user.name;

  DataSet.fieldbyname('CompanyCode').AsInteger := opta.DefaultCompany;
  qry_DocGroupsCompanyCode.OnChange := qry_DocGroupsCompanyCodeChange;

  DataSet.fieldbyname('MakeDate').AsDateTime := Now;
  DataSet.fieldbyname('YearID').AsInteger := APPBank.Year;
  DataSet['DocTypeCode'] := 10;
  DataSet['Status'] := AssignedDocForm;

  Inc(serialExcell);
  if serialExcell < opta.StartLimitID then
    DataSet.fieldbyname('serial').AsInteger := opta.StartLimitID
  else
    DataSet.fieldbyname('serial').AsInteger := serialExcell;

  DataSet.fieldbyname('Userid').AsInteger := user.id;
  qryAccCode.Active := false;
  edtBalance.Text := '';
end;

procedure TDocumentF.qryDocAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('Serial').AsInteger := QryDocGrp.fieldbyname('Serial')
    .AsInteger;
  DataSet.fieldbyname('CompanyCode').AsInteger :=
    QryDocGrp.fieldbyname('CompanyCode').AsInteger;

  DataSet.fieldbyname('DetailCompany').AsInteger := 1;
  DataSet.fieldbyname('TopicCode').AsLargeInt := 0;
  DataSet.fieldbyname('DetailCode').AsInteger := 0;
  DataSet.fieldbyname('CTopicCode').AsInteger := 0;
  DataSet.fieldbyname('CTopicCode2').AsInteger := 0;
  DataSet.fieldbyname('CTopicCode3').AsInteger := 0;
  DataSet.fieldbyname('AuditDoPrint').AsInteger := 0;
  DataSet.fieldbyname('Debt').AsExtended := 0;
  DataSet.fieldbyname('Credit').AsExtended := 0;
  DataSet.fieldbyname('YearID').AsInteger := APPBank.Year;
  Inc(InsertRow.Row);
  DataSet.fieldbyname('row').AsInteger := InsertRow.Row;
end;

{
  این متد در هنگام تغییر کدشرکت  صدا زده میشود
}
// procedure TDocumentF.UpdateDocumnet(const Cm: Integer);
// begin
// with qry_Documents do
// try
// // OffDataSetEvents(qry_Documents);
// OffDataSetEvents(qry_DocGroups);
// qry_DocGroupsCompanyCode.OnChange := nil;
// DisableControls;
// while not eof do
// begin
// Edit;
// qry_DocumentsCompanyCode.AsInteger :=
// qry_DocGroupsCompanyCode.AsInteger;
// Post;
// Next;
// end;
// Parameters.ParamByName('CompanyCode').Value := Cm;
// // Requery();
// finally
// // OnDataSetEvents(qry_Documents);
// OnDataSetEvents(qry_DocGroups);
// EnableControls;
// end;
// end;

end.
