{ ------------------------------------------------------------------------------
  Unit Name: Interdicts
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit Interdicts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBActns, ActnList, StdCtrls, ExtCtrls, Buttons,
  Vcl.DBGrids, DB, ADODB, DBCtrls, ComCtrls, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppPrnabl, sndkey32, Vcl.FileCtrl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppModule, Math, ppParameter, jpeg,
  ppSubRpt, Menus, ppTypes, ppDesignLayer, ppEndUsr, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Grids, Vcl.Mask, System.ImageList, Vcl.ImgList,
  System.Actions, ppRichTx, Filter_ADO_Const;

type
  // TMYSpeedButton = class(TSpeedButton)
  // Fcmbo: TDBComboBox;
  // property cmbo: TDBComboBox read Fcmbo write Fcmbo;
  // end;

  TInterdictsF = class(Ttemplate2MDIF)
    qryItems: TADOQuery;
    srcItems: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryInterdicts: TADOQuery;
    SrcInterdicts: TDataSource;
    sbtnInterdictNo: TSpeedButton;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtInterdictDate: TDBEdit;
    lblEmployTypeID: TLabel;
    ComboEmployTypeID: TDBComboBox;
    qryInterdictsInterdictID: TIntegerField;
    qryInterdictsInterdictNo: TStringField;
    qryInterdictsInterdictDate: TStringField;
    qryInterdictssubcompanyCode: TIntegerField;
    qryInterdictsOfficeCode: TIntegerField;
    qryInterdictsjobCode: TIntegerField;
    qryInterdictsgrade: TIntegerField;
    qryInterdictsjobCity: TIntegerField;
    qryInterdictsInterdicType: TIntegerField;
    qryInterdictsEmployTypeID: TIntegerField;
    qryInterdictsInterdicStartDate: TStringField;
    qryInterdictsemployDaytime: TWordField;
    qryInterdictsState: TWordField;
    qryPeronal_Info: TADOQuery;
    qry_FormsInfo: TADOQuery;
    qryInterdicts_PrsnNAME: TStringField;
    qryInterdicts_PrsnlastName: TStringField;
    qryInterdicts_PrsnFatherName: TStringField;
    qryInterdicts_PrsnId: TStringField;
    qryInterdicts_PrsnNationalID: TStringField;
    qryInterdicts_LicenceName: TStringField;
    qryInterdicts_marriage: TStringField;
    qryInterdictsPersonelNo: TIntegerField;
    qryInterdicts_subcompanyName: TStringField;
    qryInterdicts_child_Number: TStringField;
    qryItemsInterdictItemsID: TIntegerField;
    qryItemsInterdictID: TIntegerField;
    qryItemsSalaryID: TIntegerField;
    qryItemsAmount: TBCDField;
    qryItemsFirstMounth: TWordField;
    qryItemsEndMounth: TWordField;
    qryItems_InfoName_L1: TStringField;
    qryItems_InfoName_L2: TStringField;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    ActRecall: TAction;
    qryItemsAccTopicCode: TIntegerField;
    qryItemsAccDetailCode: TIntegerField;
    qryItemsAccCTopicCode: TIntegerField;
    qryItemsAccCTopicCode2: TIntegerField;
    qryInterdictsAccCTopicCode: TIntegerField;
    qryInterdictsAccTopicCode: TIntegerField;
    qryInterdictsAccDetailCode: TIntegerField;
    qryInterdictsAccCTopicCode2: TIntegerField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    qryPeronalInfo2: TADOQuery;
    ppDBPipeline3: TppDBPipeline;
    SrcPeronalInfo2: TDataSource;
    actPrint: TAction;
    qryInterdictsInterdicEndDate: TStringField;
    qryInterdictsTotalYearsWork: TWordField;
    qryInsert: TADOQuery;
    DataSetProvider1: TDataSetProvider;
    cliInsert: TClientDataSet;
    BitBtn9: TBitBtn;
    ActComment: TAction;
    PopList4Print: TPopupMenu;
    qryInterdictsInterdicStartDateM: TDateTimeField;
    Label24: TLabel;
    edtState: TDBEdit;
    qryItemsItemNote_L1: TStringField;
    BtnPrint: TBitBtn;
    BitBtn6: TBitBtn;
    ppDesigner1: TppDesigner;
    qryInterdictsinsuranceID: TWordField;
    qryInterdictsStandardEmployAmount: TBCDField;
    qryInterdictsProjectID: TIntegerField;
    qryInterdicts_ProjectName_L1: TStringField;
    Panel1: TPanel;
    DBEdit20: TDBEdit;
    Label25: TLabel;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    SBnPersonelNo: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label32: TLabel;
    Label29: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    ComboTaxCalculationType: TDBComboBox;
    ComboinsuranceID: TDBComboBox;
    Label5: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label22: TLabel;
    EdtStartDate: TDBEdit;
    edtInterdicEndDate: TDBEdit;
    ComboJobCity: TDBComboBox;
    DBEdit17: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    ComboJobCode: TDBComboBox;
    ComboOfficeCode: TDBComboBox;
    DBEdit18: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label14: TLabel;
    edtProjectID: TDBEdit;
    DBEdit9: TDBEdit;
    edtStandardEmployAmount: TDBEdit;
    Panel8: TPanel;
    GroupBox1: TGroupBox;
    dbmmoKargozinyNote_L1: TDBMemo;
    Panel11: TPanel;
    BtnAccInterdicts: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn14: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    PnlEdit: TPanel;
    BtnAccItems: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    StatusBar1: TStatusBar;
    DBNavigator1: TDBNavigator;
    SproNewInterdict: TADOStoredProc;
    actNewInterdict: TAction;
    mnuWordDocuments: TMenuItem;
    DBEdit5: TDBEdit;
    Label18: TLabel;
    qryInterdictsManegePercent: TFloatField;
    qryInterdictsOfficeManegePercent: TFloatField;
    actSearchReport: TAction;
    ComboGroupID: TDBComboBox;
    Label26: TLabel;
    qryInterdictsGroupID: TIntegerField;
    ComboSubInterdictID: TDBComboBox;
    LblSubInterdictID: TLabel;
    ComboSubFunctionID: TDBComboBox;
    Label28: TLabel;
    ComboGrpExpense: TDBComboBox;
    Label30: TLabel;
    ComboPayehNo: TDBComboBox;
    Label31: TLabel;
    qryInterdictsGrpExpense: TIntegerField;
    qryInterdictsSubFunctionID: TIntegerField;
    qryInterdictsSubInterdictID: TIntegerField;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn18: TBitBtn;
    qrySubInterdicts: TADOQuery;
    ppDBPipeline4: TppDBPipeline;
    srcSubInterdicts: TDataSource;
    qryItems_OldAmount: TCurrencyField;
    qryInterdictsLastInterdictID: TIntegerField;
    qryInterdicts_GroupNoName: TStringField;
    qryInterdicts_GradeName: TStringField;
    qryInterdicts_PayehNoName: TStringField;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppDBCalc2: TppDBCalc;
    ppPageStyle1: TppPageStyle;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel17: TppLabel;
    ppLabel22: TppLabel;
    ppLine5: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText5: TppDBText;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText10: TppDBText;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppLine14: TppLine;
    ppDBText15: TppDBText;
    ppLblemployDaytime: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel3: TppLabel;
    ppLine25: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine26: TppLine;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel11: TppLabel;
    ppLine20: TppLine;
    ppLine4: TppLine;
    ppLabel29: TppLabel;
    ppLabel50: TppLabel;
    ppLabel31: TppLabel;
    ppLabel4: TppLabel;
    ppLabel42: TppLabel;
    ppLabel58: TppLabel;
    ppDBText6: TppDBText;
    ppLine7: TppLine;
    ppLine13: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText17: TppDBText;
    ppLabel67: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel86: TppLabel;
    ppLine18: TppLine;
    ppLabel10: TppLabel;
    ppDBText19: TppDBText;
    ppLine27: TppLine;
    ppImage3: TppImage;
    ppLabel2: TppLabel;
    ppDBText20: TppDBText;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText21: TppDBText;
    ppLine33: TppLine;
    ppLabel8: TppLabel;
    ppDBText12: TppDBText;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText13: TppDBText;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLabel1: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLine10: TppLine;
    ppLine15: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine9: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine24: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel32: TppLabel;
    ppLabel53: TppLabel;
    ppLine37: TppLine;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLine39: TppLine;
    ppLabel57: TppLabel;
    ppLine40: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel38: TppLabel;
    ppDBText7: TppDBText;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLine2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    NAllRecords: TMenuItem;
    PopMnuOthers: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    actSearch: TAction;
    N4: TMenuItem;
    qryInterdicts_PostalCode: TStringField;
    A_l_l_Click__: TMenuItem;
    qryInterdictsAccCTopicCode3: TIntegerField;
    ppLabel33: TppLabel;
    qryInterdictsInterdicTypeTxt: TStringField;
    EdtInterdicType: TDBEdit;
    DBGrid2: TDBGrid;
    qryItemsSum: TADOQuery;
    srcItemsSum: TDataSource;
    qryItemsSumAmount1: TBCDField;
    qryItemsSumAmount2: TBCDField;
    ppDBPipeline5: TppDBPipeline;
    qryInterdictsGradeDate: TStringField;
    DBEdit24: TDBEdit;
    Label27: TLabel;
    qryItemsSumAmountSum: TBCDField;
    ppDBText16: TppDBText;
    ppDBText29: TppDBText;
    actCopyInterdictPNo: TAction;
    N1: TMenuItem;
    qryInitQry: TADOQuery;
    qryInterdictsHasRetard: TWordField;
    qryItemsFirstdate: TStringField;
    qryItemsExpenseType: TWordField;
    qryItemsItemNote_L2: TStringField;
    qryItemsEnddate: TStringField;
    pnlHasRetard: TPanel;
    dbchkHasRetard: TDBCheckBox;
    btnHasRetard: TSpeedButton;
    actState: TAction;
    N5: TMenuItem;
    qryInterdictsInsuranceStartDate: TStringField;
    qryInterdictsInsuranceEndDate: TStringField;
    lbl1: TLabel;
    edtInsuranceStartDate: TDBEdit;
    lbl2: TLabel;
    edtInsuranceEndDate: TDBEdit;
    qryItemsAmountSumAnd30: TBCDField;
    qryItemsSumAmountIn30: TBCDField;
    qryItemsAmount2: TBCDField;
    actStateTo1: TAction;
    mniStateTo1: TMenuItem;
    actFilter: TAction;
    mnuFilter: TMenuItem;
    mnuFilter1: TMenuItem;
    plblSanavat: TppLabel;
    qryInterdictItemsP: TADOQuery;
    pdbplnInterdictItemsp: TppDBPipeline;
    srcInterdictItemsp: TDataSource;
    ppDBText30: TppDBText;
    ppLabel39: TppLabel;
    qryItemsAmount30: TBCDField;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    Label8: TLabel;
    ComboGrade: TDBComboBox;
    Label33: TLabel;
    qryJob: TADOQuery;
    srcjob: TDataSource;
    edtjobsGroup: TDBEdit;
    SpeedButton3: TSpeedButton;
    edt_jobsGroupName: TDBEdit;
    qryInterdictsjobsGroup: TIntegerField;
    qryInterdicts_jobsGroupName: TStringField;
    Label17: TLabel;
    Label34: TLabel;
    edtTaxDays: TDBEdit;
    edtTaxMounth: TDBEdit;
    qryInterdictsTaxMounth: TWordField;
    qryInterdictsTaxDays: TSmallintField;
    qryInterdictsLastUser: TWideStringField;
    qryInterdictsFirstUser: TWideStringField;
    qryInterdictItemsOldP: TADOQuery;
    srcqryInterdictItemsOldP: TDataSource;
    pdbplnInterdictItemsOldp: TppDBPipeline;
    qryItemsSum2: TADOQuery;
    pdbplnItemsSum2: TppDBPipeline;
    srcItemsSum2: TDataSource;
    qryItemsSum2Old: TADOQuery;
    srcItemsSum2Old: TDataSource;
    pdbplnItemsSum2Old: TppDBPipeline;
    actScan: TAction;
    N6: TMenuItem;
    pdbtxtFormInfoID2InfoID: TppDBText;
    ppDBText31: TppDBText;
    ppLabel47: TppLabel;
    pnlCompanyAid: TPanel;
    pnlCompany: TPanel;
    SpeedButton1: TSpeedButton;
    LblPerson1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit15: TDBEdit;
    EdtAidNo1: TDBEdit;
    lblAidNo1: TLabel;
    LblAidDate1: TLabel;
    EdtAidDate1: TDBEdit;
    qryInterdictsAidNo1: TStringField;
    qryInterdictsAidDate1: TStringField;
    Panel4: TPanel;
    qryInterdicts_jobCodeInfoID: TIntegerField;
    plblSanavatBime: TppLabel;
    pdbtxtInfoName_L1: TppDBText;
    srcInsurance: TDataSource;
    qryInsurance: TADOQuery;
    plnInsurance: TppDBPipeline;
    qryOfficeCode: TADOQuery;
    mnuPersonalCard: TMenuItem;
    ppImgPersonalPic: TppImage;
    ppTitleBand2: TppTitleBand;
    qryInterdictsKargozinyNote_L1: TMemoField;
    qryInterdictsKargozinyNote_L2: TMemoField;
    qryInterdictsComment: TMemoField;
    actExcelImportInterdicts: TAction;
    actInterdicts4HistoryF: TAction;
    BitBtn19: TBitBtn;
    N7: TMenuItem;
    qryInterdicts_FullName: TStringField;
    Panel5: TPanel;
    pnlManege: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit3: TDBEdit;
    DBEdit11: TDBEdit;
    BitBtn15: TBitBtn;
    Panel6: TPanel;
    ComboTypeOfContract: TDBComboBox;
    Label35: TLabel;
    qryInterdictsTypeOfContract: TIntegerField;
    qryItemsUserID: TIntegerField;
    qryInterdictsUserID: TIntegerField;
    ppDBRichText1: TppDBRichText;
    popEmail: TPopupMenu;
    PNG1: TMenuItem;
    mnuEmail: TMenuItem;
    MenuItem3: TMenuItem;
    JPEG1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    PDF1: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    BMP1: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    GIF1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    RTF1: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    DOC1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    extFile1: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    qryInterdictsEmail: TWideStringField;
    actEmail: TAction;
    BitBtn20: TBitBtn;
    Panel7: TPanel;
    rdgrpEmail: TRadioGroup;
    Label36: TLabel;
    DBEdit16: TDBEdit;
    edtStandardClock: TDBEdit;
    Label37: TLabel;
    qryInterdictsStandardClock: TBCDField;
    qryPersonelTypeInfo: TADOQuery;
    srcPersonelTypeInfo: TDataSource;
    plnPersonelTypeInfo: TppDBPipeline;
    plnPersonelTypeInfoppField1: TppField;
    plnPersonelTypeInfoppField2: TppField;
    plnPersonelTypeInfoppField3: TppField;
    plnPersonelTypeInfoppField4: TppField;
    plnPersonelTypeInfoppField5: TppField;
    mmoREST: TMemo;
    popSendToServer: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    actSendServer: TAction;
    qryDSW_JOB: TADOQuery;
    pdbtxtDSW_JOB: TppDBText;
    PDF2: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    PNG2: TMenuItem;
    qryItemsJobScore: TFloatField;
    qryInterdicts_jobName: TStringField;
    qryInterdictsRetardActive: TWordField;
    dbchkRetardActive: TDBCheckBox;
    qryItemsP2: TADOQuery;
    srcItemsP2: TDataSource;
    plnItemsP2: TppDBPipeline;
    qryItemsP1: TADOQuery;
    srcItemsP1: TDataSource;
    plnItemsP1: TppDBPipeline;
    ppImage1: TppImage;
    ppDBText32: TppDBText;
    pdbtxtShamsi2Miladi1: TppDBText;
    qryInterdictsRetirementDate: TStringField;
    edtRetirementDate: TDBEdit;
    Label38: TLabel;
    qryItemsAmount30w: TBCDField;
    qryItemsWageKind: TWordField;
    actNewInterdicts: TAction;
    sproNewInterdict_S: TADOStoredProc;
    PopNewInterdict: TPopupMenu;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    qryInterdictsjobCityAddress: TStringField;
    edtjobCityAddress: TDBEdit;
    Label39: TLabel;
    ppLabel48: TppLabel;
    ppLabel55: TppLabel;
    qryInterdictsTaxCalculationType: TIntegerField;
    procedure srcItemsStateChange(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryInterdictsAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure sbtnInterdictNoClick(Sender: TObject);
    procedure SBnPersonelNoClick(Sender: TObject);
    procedure qryInterdictsEmployTypeIDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryInterdictsEmployTypeIDSetText(Sender: TField;
      const Text: String);
    procedure qryInterdictsAfterInsert(DataSet: TDataSet);
    procedure SrcInterdictsStateChange(Sender: TObject);
    procedure ComboEmployTypeIDEnter(Sender: TObject);
    procedure BtnAccInterdictsClick(Sender: TObject);
    procedure BtnAccItemsClick(Sender: TObject);
    procedure qryInterdictsBeforePost(DataSet: TDataSet);
    procedure BitBtn12Click(Sender: TObject);
    procedure qryInterdictsAfterPost(DataSet: TDataSet);
    procedure ActRecallExecute(Sender: TObject);
    procedure qryInterdictsBeforeDelete(DataSet: TDataSet);
    procedure qryInterdictsAfterDelete(DataSet: TDataSet);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryItemsBeforeEdit(DataSet: TDataSet);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure qryItemsAfterScroll(DataSet: TDataSet);
    procedure ppTxtLookUpGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryInterdictsInterdicStartDateChange(Sender: TField);
    procedure qryInterdictsPersonelNoChange(Sender: TField);
    procedure ActCommentExecute(Sender: TObject);
    procedure pplbl5GetText(Sender: TObject; var Text: String);
    procedure ppLblAmount(Sender: TObject; var Text: String);
    procedure ppLblCommentGetText(Sender: TObject; var Text: String);
    procedure ppLblResponsibleGetText(Sender: TObject; var Text: String);
    procedure ppLblText2GetText(Sender: TObject; var Text: String);
    procedure pplblTime2GetText(Sender: TObject; var Text: String);
    procedure ppLblTimeGetText(Sender: TObject; var Text: String);
    procedure ppLblTopicGetText(Sender: TObject; var Text: String);
    procedure BitBtn16Click(Sender: TObject);
    procedure ppLblAmount2TextGetText(Sender: TObject; var Text: String);
    procedure ppDBTxt_PrsnId2txtGetText(Sender: TObject; var Text: String);
    procedure BitBtn9Click(Sender: TObject);
    procedure ppLblPersonelGetText(Sender: TObject; var Text: String);
    procedure ppImage1Print(Sender: TObject);
    procedure ppLblemployDaytimeGetText(Sender: TObject; var Text: String);
    procedure qryInterdictsStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppLblResponsible2GetText(Sender: TObject; var Text: String);
    procedure BitBtn17Click(Sender: TObject);
    procedure ppLblNumber4ItemsGetText(Sender: TObject; var Text: String);
    procedure ppLblEmployTypeGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtGetPersonelNameGetText(Sender: TObject; var Text: String);
    procedure qryInterdictsinsuranceIDSetText(Sender: TField;
      const Text: String);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SrcInterdictsDataChange(Sender: TObject; Field: TField);
    procedure qryItemsBeforeInsert(DataSet: TDataSet);
    procedure actNewInterdictExecute(Sender: TObject);
    procedure qryInterdictsBeforeEdit(DataSet: TDataSet);
    procedure qryInterdictsBeforeInsert(DataSet: TDataSet);
    procedure ppLblPersonelInfoReplaceGetText(Sender: TObject;
      var Text: String);
    procedure ppLblTimeReplaceGetText(Sender: TObject; var Text: String);
    procedure ppLbl4AllOnlyReplaceGetText(Sender: TObject; var Text: String);
    procedure ComboEmployTypeIDChange(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure edtProjectIDExit(Sender: TObject);
    procedure ComboOfficeCodeChange(Sender: TObject);
    procedure edtStateKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn15Click(Sender: TObject);
    procedure qryInterdictsAfterCancel(DataSet: TDataSet);
    procedure ppRchTxt4AllOnlyReplaceGetTextPrint(Sender: TObject);
    procedure ppLblGradeGetText(Sender: TObject; var Text: String);
    procedure actSearchReportExecute(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure NAllRecordsClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure A_l_l_Click__Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCopyInterdictPNoExecute(Sender: TObject);
    procedure qryItemsBeforeDelete(DataSet: TDataSet);
    procedure qryInterdictsHasRetardChange(Sender: TField);
    procedure dbchkHasRetardClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnHasRetardClick(Sender: TObject);
    procedure actStateExecute(Sender: TObject);
    procedure actStateTo1Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure plblSanavatGetText(Sender: TObject; var Text: string);
    procedure ppLabel39GetText(Sender: TObject; var Text: string);
    procedure qryInterdictsjobsGroupChange(Sender: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryInterdictsAfterEdit(DataSet: TDataSet);
    procedure ComboSubFunctionIDKeyPress(Sender: TObject; var Key: Char);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure actScanExecute(Sender: TObject);
    procedure AllSpeedButtonClick(Sender: TObject);
    procedure AllDDBComboBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pdbtxtFormInfoID2InfoIDGetText(Sender: TObject; var Text: string);
    procedure plblSanavatBimeGetText(Sender: TObject; var Text: string);
    procedure pdbtxtInfoName_L1GetText(Sender: TObject; var Text: string);
    procedure ppImgPersonalPicPrint(Sender: TObject);
    procedure actExcelImportInterdictsExecute(Sender: TObject);
    procedure actInterdicts4HistoryFExecute(Sender: TObject);
    procedure qryInterdictsinsuranceIDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mnuEmailClick(Sender: TObject);
    procedure rdgrpEmailClick(Sender: TObject);
    procedure actEmailExecute(Sender: TObject);
    procedure edtInterdicEndDateDblClick(Sender: TObject);
    procedure mnuSendToFileServerClick(Sender: TObject);
    procedure actSendServerExecute(Sender: TObject);
    procedure pdbtxtDSW_JOBGetText(Sender: TObject; var Text: string);
    procedure actNewInterdictsExecute(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure ppReport1AfterPrint(Sender: TObject);
  private
    IsEmail: Boolean;
    IsPrintTime: Boolean;
    Form_MyType: Byte;
    MyInterdicType: Integer;
    DbgrdOption: set of TDBGridOption;
    EditEnabled, ExcelImport: Boolean;
    TopicKind, DetailKind, CTopicKind, CTopicKind2: Byte;
    mnu_: TMenuItem;
    Firstdate, Enddate, OrginalSQL: String;
    FStateFrom: Integer;
    FStateTo: Integer;
    FirstReportName: string;
    function ValidInterdictNo(InterdictNo: String;
      InterdictID: Integer): Boolean;
    function CalcSumFileds(FiledName: String): Currency;
    procedure InitForm(State_From: Integer; State_To: Integer);
    procedure InterdictsWage(SelectSalaryID: Integer);
    procedure initComboinsuranceID;
    function InterdictIdCount: Boolean;
    procedure validLimitDate;
    function ReplaceText(Text: String): String;
    procedure OkEditMaster;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure InitqryForm;
    function validDateInMah(Date_s, InterdicEndDate: string): Boolean;
    procedure GetInterdictNo;
    function ppSetHyperLinkText(Sender: TObject; Text: String): string;
    procedure UpdateList;
    procedure InitPrint;
    function SalaryFileName2(fileExtension: string): string;
    function Get_Job_Desc: AnsiString;
    procedure InitDSW_JOB;
    { Private declarations }
  public
    procedure Enter(Form_Type, StateFrom, StateTo, Interdic_Type,
      InterdictID: Integer);
    { Public declarations }
  end;

var
  InterdictsF: TInterdictsF;

implementation

uses DM, StrUtils, SalaryFunctions, search2, sort2, GlobalPro,
  mmessage, searchCode_ADO, DateUtils, NotePay,
  ChooseItem, shamsiDate, PersonelInfo, searchReports, GetExcel, main,
  filter_ADO, FilterClass_ADO, ScanImage, FaraDesktopAlert,
  ExcelImportInterdicts, Interdicts4History, WorkflowDm, FaraConsts, GeneralDM,
  mdiMain, AccountP, selected;

{$R *.dfm}

procedure TInterdictsF.srcItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryInterdicts.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
end;

procedure TInterdictsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  // search2F.ShowSearch(qryInterdicts);
  sbtnInterdictNo.Click;
end;

procedure TInterdictsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInterdicts);
end;

procedure TInterdictsF.actSendServerExecute(Sender: TObject);
begin
  inherited;
  popSendToServer.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdictsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  datatoExcel(qryInterdicts);
end;

procedure TInterdictsF.qryInterdictsAfterScroll(DataSet: TDataSet);
var
  InterdictID, LastInterdictID: Integer;
begin
  inherited;
  InterdictID := qryInterdicts.FieldByName('InterdictID').AsInteger;
  LastInterdictID := qryInterdicts.FieldByName('LastInterdictID').AsInteger;
  with qryItems do
  begin
    Active := False;
    SQL.Text := 'SELECT TOP 100 PERCENT';

    SQL.Add('(SELECT WageKind');
    SQL.Add('FROM Pay.FormsInfo AS FormsInfo_1');
    SQL.Add('WHERE (FormInfoID = InterdictItems.SalaryID)) AS WageKind ,');
    SQL.Add('CASE WHEN');
    SQL.Add('(SELECT WageKind');
    SQL.Add('FROM Pay.FormsInfo AS FormsInfo_1');
    SQL.Add('WHERE (FormInfoID = InterdictItems.SalaryID)) = 1 then ROUND(Amount / 30, 0) else');
    SQL.Add('Amount end AS Amount30W ,');

    SQL.Add('CASE WHEN');
    SQL.Add('(SELECT CalCulateType');
    SQL.Add('FROM Pay.FormsInfo AS FormsInfo_1');
    SQL.Add('WHERE (FormInfoID = InterdictItems.SalaryID)) in( 1,2,4,7,8 ) then 0 else');
    SQL.Add('1 end AS AmountType ,');
    SQL.Add('CASE WHEN');
    SQL.Add('(SELECT CalCulateType');
    SQL.Add('FROM Pay.FormsInfo AS FormsInfo_1');
    SQL.Add('WHERE (FormInfoID = InterdictItems.SalaryID)) in( 1,2,4,7,8 ) then ROUND(Amount / 30, 0) else');
    SQL.Add('Amount end AS Amount30,');
    SQL.Add('*,');
    SQL.Add('(SELECT InfoID');
    SQL.Add('FROM Pay.FormsInfo');
    SQL.Add('WHERE FormInfoID = SalaryID) AS SalaryID, CASE WHEN');
    SQL.Add('(SELECT CalCulateType');
    SQL.Add('FROM Pay.FormsInfo AS FormsInfo_1');
    SQL.Add('WHERE (FormInfoID = InterdictItems.SalaryID)) in ( 6,9) THEN Amount * 30 ELSE Amount END AS');
    SQL.Add('Amount2');

    // SQL.Text := 'SELECT TOP 100 PERCENT ROUND(Amount / 30, 0) AS Amount30, * ';
    // SQL.Add(',(SELECT InfoID FROM Pay.FormsInfo WHERE FormInfoID = SalaryID) AS SalaryID ');
    // SQL.Add(', CASE WHEN (SELECT CalCulateType FROM Pay.FormsInfo AS FormsInfo_1');
    // SQL.Add('WHERE (FormInfoID = InterdictItems.SalaryID)) = 6 THEN Amount * 30 ELSE Amount END AS Amount2');
    SQL.Add('FROM Pay.InterdictItems WHERE (InterdictID = :InterdictID)');

    if ((IsPrintTime) and (optp.NoPrintSalaryIDs <> EmptyStr)) then
      SQL.Add('AND  NOT EXISTS (SELECT 1 FROM Pay.SplitString(''' +
        optp.NoPrintSalaryIDs + ''', '','') S WHERE InterdictItems.SalaryID = CAST(S.part AS INT))');

    SQL.Add('ORDER BY (SELECT InfoID FROM Pay.FormsInfo WHERE FormInfoID = SalaryID)');
    SQL.Add(',(SELECT InfoID FROM Pay.FormsInfo WHERE FormInfoID = SalaryID)');

    Parameters.ParamByName('InterdictID').Value := InterdictID;
    Active := True;
  end; // with
  if DBGrid2.Visible then
  begin
    with qryItemsSum do
    begin
      Active := False;
      Parameters.ParamByName('InterdictID').Value := InterdictID;
      Active := True;
    end;

    with qryItemsP1 do
    begin
      Active := False;
      Parameters.ParamByName('InterdictID').Value := InterdictID;
      Active := True;
    end;
    with qryItemsP2 do
    begin
      Active := False;
      Parameters.ParamByName('InterdictID').Value := InterdictID;
      Active := True;
    end;

    with qryItemsSum2 do
    begin
      Active := False;
      Parameters.ParamByName('InterdictID1').Value := InterdictID;
      Parameters.ParamByName('InterdictID2').Value := InterdictID;
      Parameters.ParamByName('InterdictID3').Value := InterdictID;
      Active := True;
    end;

    with qryItemsSum2Old do
    begin
      Active := False;
      Parameters.ParamByName('InterdictID1').Value := LastInterdictID;
      Parameters.ParamByName('InterdictID2').Value := LastInterdictID;
      Parameters.ParamByName('InterdictID3').Value := LastInterdictID;
      // ShowQryParam(qryItemsSum2);
      Active := True;
    end;

  end;

  with qryPeronalInfo2 do
  begin
    Active := False;
    Parameters.ParamByName('PersonelNo').Value :=
      qryInterdicts.FieldByName('PersonelNo').AsInteger;
    Active := True;
  end;

  PnlEdit.Visible := qryInterdicts.FieldByName('State').AsInteger = 0;
  DBGrid1.ReadOnly := not PnlEdit.Visible;
  With qrySubInterdicts do
  begin
    Active := False;
    Parameters.ParamByName('InterdictId').Value :=
      qryInterdicts.FieldByName('InterdictID').AsInteger;
    Active := True;
  end;
  // with
  setColumns2(DBGrid1, qryInterdicts.FieldByName('HasRetard').AsInteger = 1,
    'Firstdate');
  setColumns2(DBGrid1, qryInterdicts.FieldByName('HasRetard').AsInteger = 1,
    'Enddate');
  DBGrid1.ShowHint := qryInterdicts.FieldByName('HasRetard').AsInteger = 1;
  btnHasRetard.Visible := DBGrid1.ShowHint;

  with qryInterdictItemsP do
  begin
    Active := False;
    Parameters.ParamByName('InterdictID').Value :=
      qryInterdicts.FieldByName('InterdictID').AsInteger;
    Active := True;
  end;
  with qryInterdictItemsOldP do
  begin
    Active := False;
    Parameters.ParamByName('InterdictID').Value := LastInterdictID;
    Active := True;
  end;
  with qryInsurance do
  begin
    Active := False;
    Parameters.ParamByName('insuranceID').Value :=
      qryInterdicts.FieldByName('insuranceID').AsInteger;
    Active := True;
  end;

  With qryPersonelTypeInfo do
  begin
    Active := False;
    Parameters.ParamByName('PersonelNo').Value :=
      qryInterdicts.FieldByName('PersonelNo').AsInteger;
    Active := True;
  end;

  InitPrint;

end;

procedure TInterdictsF.InitForm(State_From: Integer; State_To: Integer);
// var
// FiledId:Integer;
begin
  with InterdictsF do
  begin
    FStateFrom := State_From;
    FStateTo := State_To;
    DbgrdOption := [dgEditing, dgTitles, dgIndicator, dgColumnResize,
      dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete,
      dgCancelOnExit];
    with DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := 'SELECT * FROM Pay.FormTypes';
      SQL.Add('where FormType=:Type');
      Parameters.ParamByName('Type').Value := InterdictsF.Form_MyType;
      Active := True;
      TopicKind := FieldByName('TopicCodeKind').AsInteger;
      DetailKind := FieldByName('DetailCodeKind').AsInteger;
      CTopicKind := FieldByName('CTopicCodeKind').AsInteger;
      CTopicKind2 := FieldByName('CTopicCode2Kind').AsInteger;
      if FieldByName('ChangeAmountActive').AsInteger <> 1 then
        DbgrdOption := DbgrdOption - [dgEditing];
      Active := False;
    end; // with

    InterdictsF.qry_FormsInfo.Active := False;
    InterdictsF.qry_FormsInfo.Active := True;

    qryPeronal_Info.Active := False;
    qryPeronal_Info.Active := True;

    initDBComboBoxpay(ComboEmployTypeID, 14);
    initDBComboBoxpay(ComboJobCity, 1);
    initDBComboBoxpay(ComboOfficeCode, 12);
    initDBComboBoxpay(ComboJobCode, 13);
    initDBComboBoxpay(ComboGrade, 27);

    initDBComboBoxpay(ComboTaxCalculationType, 21);
    initDBComboBoxpay(ComboGroupID, 68);

    initDBComboBoxpay(ComboPayehNo, 78);
    initDBComboBoxpay(ComboGrpExpense, 73);

    initDBComboBoxpay(ComboSubInterdictID, 77);
    with DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT FormCaption_L1 FROM Pay.FormTypes WHERE FormType= 77 ';
      Active := True;
      LblSubInterdictID.Caption := Fields[0].AsString;
      Active := False;
    end; // with

    initDBComboBoxpay(ComboSubFunctionID, 70);

    initDBComboBoxpay(ComboTypeOfContract, 131);

    initComboinsuranceID;

    UpdateList;

  end;
end;

procedure TInterdictsF.UpdateList;
begin
  with qryInterdicts do
  begin
    Active := False;
    Parameters.ParamByName('StateFrom').Value := FStateFrom;
    Parameters.ParamByName('StateTo').Value := FStateTo;
    Parameters.ParamByName('InterdicType').Value := MyInterdicType;

    // Parameters.ParamByName('CompanyCodeFrom').DataType := ftInteger;
    // Parameters.ParamByName('CompanyCodeTo').DataType := ftInteger;
          if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;

    end
    else
    begin
      Parameters.ParamByName('companyCodeFrom').Value := 0;
      Parameters.ParamByName('companyCodeTo').Value := 2147483647;
    end;

    case rdgrpEmail.ItemIndex of
      0:
        SQL.Text := StringReplace(OrginalSQL, ':Email', EmptyStr,
          [rfReplaceAll]);
      1:
        SQL.Text := StringReplace(OrginalSQL, ':Email',
          ' (LEN((SELECT Email FROM Pay.PersonelInfo AS PersonelInfo_1 WHERE (PersonelNo = aa.PersonelNo)))  > 4)AND',
          [rfReplaceAll]);
    else
      SQL.Text := StringReplace(OrginalSQL, ':Email',
        '(LEN((SELECT Email FROM Pay.PersonelInfo AS PersonelInfo_1 WHERE (PersonelNo = aa.PersonelNo))) <= 4)AND',
        [rfReplaceAll]);
    end;

    Active := True;
    Last;
  end;
end;

procedure TInterdictsF.initComboinsuranceID;
begin
  ComboinsuranceID.Clear;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT InsuranceCONSTinfo.insuranceNo,Ltrim(insuranceNo)+InsuranceCONSTinfo.insurancename '
      + 'FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID';
    Active := True;
    while not eof do
    begin
      ComboinsuranceID.AddItem(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure TInterdictsF.Enter(Form_Type, StateFrom, StateTo, Interdic_Type,
  InterdictID: Integer);
begin
  if not(mainF.MnuPay_2InterdictsF.Visible or mainF.MnuPay_3InterdictsF.Visible)
  then
    Abort;
  CreateMDIForm2(TInterdictsF, InterdictsF, mainF, Form_Type);
  // ,wsMinimized);
  SetLookUpCash(InterdictsF.qryInterdicts);
  SetLookUpCash(InterdictsF.qryPeronal_Info);
  SetLookUpCash(InterdictsF.qryItems);
  InterdictsF.Form_MyType := var_glb_gParam;

  InterdictsF.MyInterdicType := Interdic_Type;
  InterdictsF.InitForm(StateFrom, StateTo);
  SetColSize(InterdictsF.DBGrid1, 1, True, IntToStr(Form_Type));
  ColorDBEdits(InterdictsF);
  InterdictsF.EditEnabled := True;
  if (StateTo >= 50) then
  begin
    // InterdictsF.newPanel.Visible:=False;
    InterdictsF.EditEnabled := False;
    InterdictsF.Caption := ' حكم هاي كارگزيني غيرفعال';
    InterdictsF.lblCaption.Caption := ' حكم هاي كارگزيني غيرفعال';
    InterdictsF.actState.Enabled := False;
  end;
  if (InterdictsF.MyInterdicType > 0) then
  begin
    InterdictsF.Caption := ' متمم حكم هاي كارگزيني ';
    InterdictsF.lblCaption.Caption := ' متمم حكم هاي كارگزيني ';
    InterdictsF.EdtInterdicType.Visible := False;
  end;
  InterdictsF.qryInterdicts.Locate('InterdictID', InterdictID, [])

end;

procedure TInterdictsF.SpeedButton1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMF.adcAccounting, 'شركت ها',
    'SELECT CompanyCode,CompanyName_L1 FROM   acc.Companies',
    ['كد شركت', 'نام شركت'], Results, [100, 100], alLeft);
  if s then
  begin
    if not(qryInterdicts.State in dsEditModes) then
      qryInterdicts.edit;
    qryInterdicts['subcompanyCode'] := Results[0];
  end;
  // if
end;

procedure TInterdictsF.SpeedButton2Click(Sender: TObject);
var
  Txt, FormInfo4Function: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  FormInfo4Function := qryInitQry.FieldByName('FormInfo4Function').AsString;
  if FormInfo4Function = '12' then
    FormInfo4Function := '40';

  Txt := 'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + ' WHERE  FormType = ' + FormInfo4Function;
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, ' كد و سطح عنوان قبلي ', Txt,
    ['سريال', 'كد', 'عنوان 1', 'عنوان 2'], Results, [50, 50, 100, 100], alLeft);
  if s then
  begin
    if not(qryInterdicts.State in dsEditModes) then
      qryInterdicts.edit;
    qryInterdicts.FieldByName('ProjectID').AsInteger := StrToInt(Results[0]);
  end; // if
end;

procedure TInterdictsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(Form_MyType));
  SaveColWidth(DBGrid2, IntToStr(Form_MyType));
  /// /  if mnu_ <> nil then
  // mnu_.Free;
end;

procedure TInterdictsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(Form_MyType));
  SetColSize(DBGrid2, 1, True, IntToStr(Form_MyType));
end;

procedure TInterdictsF.sbtnInterdictNoClick(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  s: Boolean;
  Results: array [0 .. 12] of String;
begin
  inherited;
  TxtL1_L2 :=
    'PersonelInfo.name_L1,PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1,';
  if optp.primaryLanguage <> 0 then
    TxtL1_L2 :=
      'PersonelInfo.name_L1, PersonelInfo.name_L2, PersonelInfo.lastName_L1, PersonelInfo.lastName_L2, PersonelInfo.fatherName_L1, PersonelInfo.fatherName_L2, ';
  Txt := 'SELECT Interdicts.InterdictID,Interdicts.InterdictNo, Interdicts.InterdictDate, Interdicts.PersonelNo,  '
    + TxtL1_L2 +
    'PersonelInfo.IDNumber, PersonelInfo.NationalID, PersonelInfo.InsuranceNumber '
    + 'FROM Pay.Interdicts INNER JOIN ' +
    'Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = PersonelInfo.PersonelNo ' +
    'WHERE (Interdicts.InterdicType = ' + IntToStr(MyInterdicType) + ') ' +
    'AND (Interdicts.State between ' +
    IntToStr(qryInterdicts.Parameters.ParamByName('StateFrom').Value) + ' and '
    + IntToStr(qryInterdicts.Parameters.ParamByName('StateTo').Value) + ')';
          if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    Txt := Txt + ' AND (Interdicts.subcompanyCode BETWEEN ' +
      FcompanyCodeLogin.ToString + ' AND ' + FcompanyCodeLogin.ToString + ') ';
  end;

  if optp.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, Caption, Txt,
      ['', 'شماره حكم', 'تاريخ حكم', 'شماره پرسنل', 'نام زبان1', 'نام زبان2',
      ' نام خانوادگي زبان1', 'نام خانوادگي زبان2', 'نام پدر زبان1',
      'نام پدر زبان', 'شماره شناسنامه', 'كد ملي', 'ش بیمه'], Results,
      [0, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100, 10, 50, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, Caption, Txt,
      ['', 'شماره حكم', 'تاريخ حكم', 'شماره پرسنل', 'نام ', ' نام خانوادگي ',
      'نام پدر', 'شماره شناسنامه', 'كد ملي', 'ش بیمه'], Results,
      [0, 50, 50, 80, 100, 100, 100, 100, 100, 100, 50], alLeft);

  if s then
    qryInterdicts.Locate('InterdictID', Results[0], []);
end;

procedure TInterdictsF.SBnPersonelNoClick(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  s: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;
  TxtL1_L2 := ' name_L1, lastName_L1,  fatherName_L1';
  if optp.primaryLanguage <> 0 then
    TxtL1_L2 :=
      ' name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2';
  Txt := 'SELECT  PersonelNo,' + TxtL1_L2 + ', NationalID, IDNumber ' +
    'FROM Pay.PersonelInfo ';
  if optp.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام', 'Name', ' نام خانوادگي', 'lastName', 'نام پدر ',
      'fatherName', 'شماره شناسنامه', 'كد ملي'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام ', ' نام خانوادگي', 'نام پدر', 'شماره شناسنامه',
      'كد ملي'], Results, [10, 100, 100, 100, 100, 100], alLeft);

  if s then
  begin
    if not(qryInterdicts.State in dsEditModes) then
      exit;
    qryInterdicts['PersonelNo'] := Results[0];
  end; // if
end;

procedure TInterdictsF.qryInterdictsEmployTypeIDGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger < 0 then
    exit;
  Text := VarToStr(qry_FormsInfo.Lookup('FormInfoID', Sender.AsInteger,
    'InfoName_L1'));
  TDBComboBox(FindComponent('Combo' + Sender.FieldName)).Hint :=
    IntToStr(Sender.AsInteger);
end;

procedure TInterdictsF.qryInterdictsEmployTypeIDSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Combo' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Combo' + Sender.FieldName)).ItemIndex]);
end;

procedure TInterdictsF.qryInterdictsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('InterdictID').AsInteger :=
    GetANewCode('', 'Pay.Interdicts', 'InterdictID');
  DataSet.FieldByName('firstuser').AsString := User.name;
  DataSet.FieldByName('InterdictNo').AsFloat :=
    GetANewCode('',
    'SELECT MAX(CONVERT(float, InterdictNo)) AS Expr1 FROM Pay.Interdicts',
    'InterdictNo');

  if qryInitQry.FieldByName('AidInfoNo1Active').AsInteger = 2 then
  begin
    qryInterdictsAidNo1.AsFloat :=
      GetANewCode('',
      'SELECT ISNULL( MAX(CONVERT(float, AidNo1)),0) AS Expr1 FROM Pay.Interdicts',
      'AidNo1');
  end;
  if qryInitQry.FieldByName('AidInfoDate1Active').AsInteger = 1 then
    qryInterdictsAidDate1.AsString := var_glb_CurrentDate;

  DataSet.FieldByName('UserID').AsInteger := User.id;
  DataSet.FieldByName('EmployTypeID').AsInteger :=
    Integer(ComboEmployTypeID.Items.Objects[0]);
  DataSet.FieldByName('OfficeCode').AsInteger :=
    Integer(ComboOfficeCode.Items.Objects[0]);
  DataSet.FieldByName('grade').AsInteger :=
    Integer(ComboGrade.Items.Objects[0]);
  DataSet.FieldByName('jobCode').AsInteger :=
    Integer(ComboJobCode.Items.Objects[0]);
  DataSet.FieldByName('jobCity').AsInteger :=
    Integer(ComboJobCity.Items.Objects[0]);
  DataSet.FieldByName('InterdicType').AsInteger := MyInterdicType;
  DataSet.FieldByName('InterdictDate').AsString := var_glb_CurrentDate;

  // DataSet.FieldByName('GroupID').AsInteger:=integer(comboGroupID.Items.Objects[0]);
  ComboEmployTypeID.SetFocus;
  qryInterdictssubcompanyCode.AsInteger := optA.AccDefaultCompany;
end;

procedure TInterdictsF.SrcInterdictsStateChange(Sender: TObject);

begin
  inherited;
  okPanel.Visible := qryInterdicts.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  if not okPanel.Visible then
    DBGrid1.Options := DbgrdOption + [dgRowSelect]
  else
    DBGrid1.Options := DbgrdOption - [dgRowSelect];
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcSalary);
  BtnAccInterdicts.Visible := okPanel.Visible;
  BtnAccItems.Visible := okPanel.Visible;
  SBnPersonelNo.Enabled := okPanel.Visible;
  sbtnInterdictNo.Visible := newPanel.Visible;
  actNewInterdict.Visible := newPanel.Visible;
  actCopyInterdictPNo.Visible := newPanel.Visible;
  actState.Visible := okPanel.Visible;
end;

procedure TInterdictsF.ComboEmployTypeIDEnter(Sender: TObject);
begin
  inherited;
  ComboEmployTypeID.DroppedDown := True;
end;

procedure TInterdictsF.BtnAccInterdictsClick(Sender: TObject);
begin
  inherited;
  if CheckUserlevel(qryInitQry.FieldByName('AccCodeLevelID').AsInteger) then
    AccountpF.Enter(qryInterdicts)
end;

procedure TInterdictsF.BtnAccItemsClick(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryItems)
end;

procedure TInterdictsF.qryInterdictsBeforePost(DataSet: TDataSet);
var
  InsuranceStartDate, InsuranceEndDate, AidDate1: String;
  InterdictNo: Real48;
begin
  inherited;
  try
    InterdictNo := qryInterdictsInterdictNo.AsFloat;
  except
    on E: Exception do
    begin
      Warn(FloatToStr(InterdictNo) + 'شماره حکم معتبر نمی باشد');
      Abort;
    end;
  end;

  if not ValidateDatasetDates(DataSet, '', '') then
    Abort;

  if (DataSet.FieldByName('InterdicStartDate').AsString <
    qryPeronalInfo2.FieldByName('employDate').AsString) then
  begin
    Warn('تاريخ اجراي حکم نمي تواند از تاريخ استخدام کوچکتر باشد.‏');
    Abort;
  end; // if
  if (DataSet.FieldByName('InterdicEndDate').AsString <
    DataSet.FieldByName('InterdicStartDate').AsString) then
  begin
    Warn('تاريخ پايان قرارداد نمي تواند از تاريخ اجراي حکم کوچکتر باشد.‏');
    Abort;
  end; // if
  if not CheckRequiredFields(qryInterdicts) then
    Abort;
  if (InterdictsF.MyInterdicType = 0) then
  begin
    if not InterdictIdCount then
      Abort;
    if not ValidInterdictNo(DataSet.FieldByName('InterdictNo').AsString,
      DataSet.FieldByName('InterdictID').AsInteger) then
      Abort;
    validLimitDate;
  end;
  TrimStringFields(qryInterdicts);
  qryPeronalInfo2.Requery();
  if Length(Trim(qryPeronalInfo2.FieldByName('finishEmployDate').AsString)) > 4
  then
  begin
    Warn('براي اين پرسنل تاريخ خاتمه قرارداد ثبت شده است و حكم قابل تاييد نيست.‏');
    Abort;
  end; // if

  try
    InsuranceStartDate := DataSet.FieldByName('InsuranceStartDate').AsString;
    InsuranceEndDate := DataSet.FieldByName('InsuranceEndDate').AsString;
    AidDate1 := DataSet.FieldByName('AidDate1').AsString;

    DataSet.FieldByName('InsuranceStartDate').AsString := '';
    DataSet.FieldByName('InsuranceEndDate').AsString := '';
    DataSet.FieldByName('AidDate1').AsString := '';
    if not ValidateDatasetDates(DataSet, optp.StartMaliYear, optp.FinishMaliYear)
    then
      Abort;
  finally
    DataSet.FieldByName('InsuranceStartDate').AsString := InsuranceStartDate;
    DataSet.FieldByName('InsuranceEndDate').AsString := InsuranceEndDate;
    DataSet.FieldByName('AidDate1').AsString := AidDate1;
  end;

  if not chkPersonelState(qryPeronalInfo2.FieldByName('PersonStateNo').AsInteger)
  then
    Abort;

  Check_JobPromissory(qryInterdicts)

end;

function TInterdictsF.validDateInMah(Date_s, InterdicEndDate: string): Boolean;
begin
  if { optP.ActivePayRoll } True then
    Result := (MidStr(Date_s, 6, 2) > MidStr(InterdicEndDate, 6, 2))
  else
    Result := (MidStr(Date_s, 6, 2) >= MidStr(InterdicEndDate, 6, 2));
  if (MidStr(Date_s, 1, 4) > MidStr(InterdicEndDate, 1, 4)) then
    Result := True;
end;

procedure TInterdictsF.validLimitDate;
var
  canInsert: Boolean;
  StartDate, Enddate: String;
begin
  if not { optP.ActivePayRoll } True then
    exit;
  StartDate := StringReplace(MidStr(qryInterdictsInterdicStartDate.AsString, 1,
    7), '/', '', [rfReplaceAll]);
  Enddate := StringReplace(MidStr(qryInterdictsInterdicEndDate.AsString, 1, 7),
    '/', '', [rfReplaceAll]);
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(InterdictID) FROM Pay.Interdicts ';
    SQL.Add('WHERE (' + StartDate +
      ' BETWEEN REPLACE(SUBSTRING(InterdicStartDate, 1, 7), ''/'', '''')' +
      ' AND REPLACE(SUBSTRING(InterdicEndDate, 1, 7), ''/'', '''')) ' +
      'AND (InterdictID <> ' + qryInterdictsInterdictID.AsString +
      ') AND (PersonelNo = ' + qryInterdictsPersonelNo.AsString + ') OR');
    SQL.Add('(InterdictID <> ' + qryInterdictsInterdictID.AsString +
      ') AND (PersonelNo = ' + qryInterdictsPersonelNo.AsString + ') AND (' +
      Enddate + ' BETWEEN REPLACE(SUBSTRING(InterdicStartDate, 1, 7), ''/'', '''') '
      + ' AND REPLACE(SUBSTRING(InterdicEndDate, 1, 7), ''/'', ''''))');
    Active := True;
    canInsert := Fields[0].AsInteger <> 0;
    Active := False;
  end;
  // with
  if canInsert then
  begin
    Warn('محدوده تاريخ(سال و ماه) تعريف شده با محدوده هاي قبلي  تداخل دارد.');
    EdtStartDate.SetFocus;
    Abort;
  end; // if
end;

function TInterdictsF.ValidInterdictNo(InterdictNo: String;
  InterdictID: Integer): Boolean;
begin
  Result := False;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM Pay.Interdicts WHERE(InterdictNo=''' +
      InterdictNo + ''')AND (InterdictID <> ' + IntToStr(InterdictID) + ')';
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn('شماره حكم وارد شده تكراري مي‌باشد.');
      DBEdit8.SetFocus;
      exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

function TInterdictsF.InterdictIdCount;
begin
  // Result:=False;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT COUNT(InterdictID) AS InterdictIdCount FROM Pay.Interdicts';
    SQL.Add('WHERE (State < 50)');
    SQL.Add('AND (InterdictID <> ' + qryInterdicts.FieldByName('InterdictID')
      .AsString + ')');
    SQL.Add('AND (PersonelNo = ' + qryInterdicts.FieldByName('PersonelNo')
      .AsString + ')');
    SQL.Add('GROUP BY InterdictID, PersonelNo, State');
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      // Result := not
      // (get_response
      // ('براي اين پرسنل قبلا حكم صادر شده است. آيا حكم قبلي غير فعال شود؟!‏')
      // <> mrYes);
      Result := True;
      initDesktopAlert(0, 'حکم قبلی این پرسنل غیر فعال میشود', nil, 5000);

      exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

procedure TInterdictsF.BitBtn17Click(Sender: TObject);
begin
  inherited;
  if qryItems.RecordCount <= 0 then
    exit;
  if get_response('آيا از محاسبه مجدد مبلغ' + #10#13 + '"' +
    qryItems.FieldByName('_InfoName_L1').AsString + '"' + #10#13 +
    'مطمئن هستيد.') = mrYes then
    InterdictsWage(qryItems.FieldByName('SalaryID').AsInteger);
end;

procedure TInterdictsF.BitBtn12Click(Sender: TObject);
begin
  inherited;
  if qryItems.RecordCount > 0 then
  begin
    if get_response('آيا از محاسبه مجدد مطمئن هستيد.') = mrYes then
      InterdictsWage(0)
  end
  else
    InterdictsWage(0);
end;

procedure TInterdictsF.InterdictsWage(SelectSalaryID: Integer);
var
  s: String;
  LastYearsWork: String;
  // اين متغير براي نگهداري اطلاعات تعداد سالهاي كاركرد قبلي تنظيم شده است
  storeSalary, PriceSalary: Currency;
  // اين متغير براي نگهداري اطلاعات مبلغ حق سنوات  سالهاي  قبلي تنظيم شده است
  SalaryID: Integer;

begin
  if qryInterdicts.State <> dsEdit then
    qryInterdicts.edit;
  if SelectSalaryID = 0 then
  begin
    with qryItems do
    begin
      First;
      while not eof do
        Delete;
    end; // with
  end; // if
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT PersonelNo,StrFilter FROM Pay.Filter4InterdictsWage WHERE PersonelNo='
      + qryInterdicts.FieldByName('PersonelNo').AsString;
    Active := True;
    s := Fields[1].AsString;
    if s = '' then
      s := '0';
    s := s + ',' + qryInterdicts.FieldByName('EmployTypeID').AsString + ',' +
      qryInterdicts.FieldByName('jobCity').AsString + ',' +
      qryInterdicts.FieldByName('OfficeCode').AsString + ',' +
      qryInterdicts.FieldByName('jobCode').AsString + ',' +
      qryInterdicts.FieldByName('grade').AsString + ',' +
      qryInterdicts.FieldByName('GroupID').AsString;
    Active := False;
    SQL.Text :=
      'SELECT PersonelDecExt.PersonelNo, SUM(PersonelDecExt.DayQuntity) AS DayQuntity, '
      + 'SUM(PersonelDecExt.EmployeeAmount) AS EmployeeAmount ' +
      'FROM Pay.PersonelDecExt INNER JOIN Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID '
      + 'WHERE (FormsInfo.FormType = 52) and PersonelNo=' +
      qryInterdicts.FieldByName('PersonelNo').AsString +
      'GROUP BY PersonelDecExt.PersonelNo ';
    Active := True;
    LastYearsWork := IfThen(Fields[1].IsNull, '0', Fields[1].AsString);
    storeSalary := Fields[2].AsCurrency;
  end;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    // براي محاسبه حق سنوات پرسنل تنظيم شده است .//
    SQL.Text :=
      'SELECT * FROM( SELECT FormInfoItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoName_L2, '
      + 'SUM(FormInfoItems.Amount) * (' + qryInterdicts.FieldByName
      ('TotalYearsWork').AsString + '-' + LastYearsWork + ') AS PriceSalary, ' +
      'FormsInfo.AccTopicCode, FormsInfo.AccDetailCode, FormsInfo.AccCTopicCode, FormsInfo.AccCTopicCode2 '
      + 'FROM Pay.FormInfoItems INNER JOIN ' +
      'Pay.FormsInfo ON FormInfoItems.SalaryID = FormsInfo.FormInfoID ' +
      'WHERE (FormInfoItems.FormInfoID IN (' + s + ')) and ' +
      'FormInfoItems.SalaryID IN (SELECT  SalaryRange.SalaryID ' +
      'FROM Pay.FormsInfo INNER JOIN   Pay.SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID '
      + 'WHERE     (FormsInfo.FormInfoID = ' + qryInterdicts.FieldByName
      ('EmployTypeID').AsString + ') )' +
      'GROUP BY FormInfoItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoName_L2, FormsInfo.AccTopicCode, FormsInfo.AccDetailCode, '
      + 'FormsInfo.AccCTopicCode, FormsInfo.AccCTopicCode2 ' +
      'HAVING  (FormInfoItems.SalaryID = ' + DMF.ReadBankConfigPay
      ('storeSalaryID') + '))a';
    Active := True;
    SalaryID := Fields[0].AsInteger;
    PriceSalary := Fields[3].AsCurrency;
  end;
  With qryInsert do
  begin
    Active := False;
    // براي محاسبه كليه اطلاعات حكم كارگزيني تنظيم شده است //
    // SQL.Text :=
    // 'SELECT FormInfoItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoName_L2,';
    // SQL.Add('SUM(FormInfoItems.Amount) AS PriceSalary, FormsInfo.AccTopicCode, ');
    // SQL.Add('FormsInfo.AccDetailCode,FormsInfo.AccCTopicCode, FormsInfo.AccCTopicCode2 ');
    // SQL.Add(',Fitful.FitfulID AS _PriceSalary');
    // SQL.Add('FROM FormInfoItems INNER JOIN');
    // SQL.Add('Pay.FormsInfo ON FormInfoItems.SalaryID = FormsInfo.FormInfoID');
    // SQL.Add('CROSS JOIN dbo.Fitful');
    // SQL.Add('WHERE (FormInfoItems.FormInfoID IN (' + s +
    // ')) and FormInfoItems.SalaryID IN (SELECT SalaryRange.SalaryID FROM Pay.FormsInfo');
    // SQL.Add('INNER JOIN Pay.SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID');
    // SQL.Add('WHERE (FormsInfo.FormInfoID = ' +
    // IntToStr(qryInterdicts.FieldByName('EmployTypeID').AsInteger) + ') )');
    // SQL.Add('GROUP BY FormInfoItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoName_L2, FormsInfo.AccTopicCode,');
    // SQL.Add('FormsInfo.AccDetailCode, FormsInfo.AccCTopicCode, FormsInfo.AccCTopicCode2 ');
    // SQL.Add(', Fitful.FitfulID');
    SQL.Text := 'SELECT Fn_Calc.SalaryID, Fn_Calc.InfoName_L1,';
    SQL.Add(' Fn_Calc.InfoName_L2,SUM(Fn_Calc.Amount) AS PriceSalary,');
    SQL.Add('Fn_Calc.AccTopicCode, Fn_Calc.AccDetailCode, Fn_Calc.AccCTopicCode, Fn_Calc.AccCTopicCode2,');
    SQL.Add('dbo.Fitful.FitfulID AS _PriceSalary');
    SQL.Add('FROM Pay.Fn_CalculateSalaryRange(:EmployTypeID, :FormInfoID, :jobCode) AS Fn_Calc CROSS JOIN');
    SQL.Add('dbo.Fitful');
    SQL.Add('GROUP BY Fn_Calc.SalaryID, Fn_Calc.InfoName_L1, Fn_Calc.InfoName_L2, Fn_Calc.AccTopicCode, Fn_Calc.AccDetailCode,');
    SQL.Add('Fn_Calc.AccCTopicCode, Fn_Calc.AccCTopicCode2, Fitful.FitfulID');

    Parameters.ParamByName('EmployTypeID').Value :=
      qryInterdictsEmployTypeID.AsInteger;
    Parameters.ParamByName('FormInfoID').Value := s;
    Parameters.ParamByName('jobCode').Value := qryInterdictsjobsGroup.AsInteger;

    cliInsert.Active := False;
    cliInsert.Active := True;
  end;
  if (SalaryID <> 0) and (cliInsert.Locate('SalaryID', SalaryID, [])) then
  begin
    cliInsert.edit;
    cliInsert.FieldByName('_PriceSalary').AsCurrency := PriceSalary +
      storeSalary;
    cliInsert.post;
  end;
  with cliInsert do
    if SelectSalaryID = 0 then
    begin
      First;
      while not eof do
      begin
        qryItems.Insert;
        qryItems.FieldByName('InterdictID').Value :=
          qryInterdicts.FieldByName('InterdictID').AsString;
        qryItems.FieldByName('SalaryID').Value := Fields[0].AsInteger;
        if FieldByName('_PriceSalary').AsCurrency = 0 then
          qryItems.FieldByName('Amount').Value := FieldByName('PriceSalary')
            .AsCurrency
        else
          qryItems.FieldByName('Amount').Value := FieldByName('_PriceSalary')
            .AsCurrency;
        qryItems.FieldByName('accTopicCode').Value := Fields[4].AsInteger;
        qryItems.FieldByName('accDetailCode').Value := Fields[5].AsInteger;
        qryItems.FieldByName('accCTopicCode').Value := Fields[6].AsInteger;
        qryItems.FieldByName('accCTopicCode2').Value := Fields[7].AsInteger;
        qryItems.FieldByName('ExpenseType').Value := 1;
        qryItems.FieldByName('UserID').Value := User.id;
        qryItems.post;
        Next;
      end;
    end
    else
      with cliInsert do
      begin
        First;
        Locate('SalaryID', SelectSalaryID, []);
        qryItems.Locate('SalaryID', SelectSalaryID, []);
        qryItems.edit;
        qryItems.FieldByName('Amount').Value := Fields[3].AsCurrency;
        qryItems.FieldByName('UserID').Value := User.id;
        qryItems.post;
      end; // with
  qryInterdicts.post;
end;

procedure TInterdictsF.qryInterdictsAfterPost(DataSet: TDataSet);
var
  InterdictItemsID: Integer;
begin
  inherited;
  With qryItems do
  begin
    First;
    while Not eof do
    begin
      if FieldByName('InterdictItemsID').IsNull then
      begin
        edit;
        InterdictItemsID := GetANewCode('', 'Pay.InterdictItems',
          'InterdictItemsID');
        qryItems.FieldByName('InterdictItemsID').AsInteger :=
          InterdictItemsID + RecNo;
        post;
      end;
      // if;
      Next;
    end; // while
  end; // with
  qryItems.UpdateBatch;

  if (InterdictsF.MyInterdicType = 0) then
    With DMF.qryTmpTmpp do
    begin
      // غير فعال كردن حكم هاي قبلي پرسنل
      Active := False;
      SQL.Text := 'UPDATE Pay.Interdicts ' +
        'SET State=50 WHERE  (InterdictID <> ' + qryInterdicts.FieldByName
        ('InterdictID').AsString + ') AND (PersonelNo = ' +
        qryInterdicts.FieldByName('PersonelNo').AsString + ')' +
        ' AND (InterdicType = 0)';
      ExecSQL;
      Active := False;
    end; // with

  if qryInitQry.FieldByName('WorkflowID').AsInteger > 0 then
    WorkflowDmF.RunSomeWorkflow(qryInitQry.FieldByName('WorkflowID').AsInteger,
      qryInterdicts, ppReport1, qryInitQry.FieldByName('ReportFileName1')
      .AsString, qryInterdicts.FieldByName('InterdictNo').AsString);

  if not ExcelImport then
    BigMessage('ثبــت شد', 1);

end;

procedure TInterdictsF.ActRecallExecute(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'شرح ها',
    'SELECT FormInfoID,InfoName_L1,InfoName_L2,Note FROM Pay.FormsInfo WHERE(FormType=15)',
    ['كد شرح', 'شرح', 'ReLate', ''], Results, [15, 200, 100, 0], alLeft);
  if s then
  begin
    if not(qryInterdicts.State in dsEditModes) then
      qryInterdicts.edit;
    qryInterdicts.FieldByName('KargozinyNote_L1').AsString :=
      qryInterdicts.FieldByName('KargozinyNote_L1').AsString + Results[3];
    qryInterdicts.FieldByName('KargozinyNote_L2').AsString :=
      qryInterdicts.FieldByName('KargozinyNote_L2').AsString + Results[2];
  end; // if
end;

procedure TInterdictsF.qryInterdictsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID').AsInteger) then
    Abort;
  if not(EditEnabled) then
    Abort;
  if qryInterdicts.FieldByName('State').AsInteger > 0 then
  begin
    Warn('فقط حكم پيش نويس قابل حذف مي باشد.');
    Abort;
  end;

  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TInterdictsF.qryInterdictsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حـذف شــد', 1)
end;

procedure TInterdictsF.qryInterdictsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').ReadOnly := False;
  DataSet.FieldByName('LastUser').AsString := User.name;
end;

procedure TInterdictsF.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SBnPersonelNo.Click
end;

procedure TInterdictsF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton1.Click
end;

procedure TInterdictsF.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    sbtnInterdictNo.Click
end;

function TInterdictsF.CalcSumFileds(FiledName: String): Currency;
var
  cloned: TADOQuery;
begin
  cloned := TADOQuery.Create(Self);
  Result := 0;
  try
    with cloned do
    begin
      Clone(qryItems, ltReadOnly);
      First;
      while not eof do
      begin
        Result := Result + FieldByName(FiledName).AsCurrency;
        Next;
      end; // while
    end; // with
  except
  end; // try
  cloned.Free;
end;

procedure TInterdictsF.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryInterdicts.State in dsEditModes) then
    qryInterdicts.edit;
  Firstdate := qryItems.FieldByName('Firstdate').AsString;
  Enddate := qryItems.FieldByName('Enddate').AsString;

end;

procedure TInterdictsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TInterdictsF.qryItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text := CurrToStrF(CalcSumFileds('Amount'),
    ffCurrency, 0);
end;

procedure TInterdictsF.ppTxtLookUpGetText(Sender: TObject; var Text: String);
begin
  inherited;
  if (Text = '0') or (Text = '') then
    exit;
  Text := VarToStr(qry_FormsInfo.Lookup('FormInfoID', StrToInt(Text),
    'InfoName_L1'));
end;

procedure TInterdictsF.InitPrint;
var
  ReportNames: String;
  ts: TStrings;
  i: Integer;
begin
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT WordDocuments FROM Pay.FormsInfo WHERE (FormType =14) '
      + 'AND FormInfoID=' + qryInterdicts.FieldByName('EmployTypeID')
      .AsInteger.ToString;
    Active := True;
    ReportNames := Fields[0].AsString;
    if MyInterdicType > 0 then
      ReportNames := StringReplace(ReportNames, '.rtm', '__M.rtm', []);
    Active := False;
  end; // with
  mnuWordDocuments.Clear;
  ts := TStringList.Create;
  ts.Text := Trim(ReportNames);
  if ts.Count > 0 then
  begin
    FirstReportName := ts.Strings[0];
    for i := 0 to ts.Count - 1 do
    begin
      mnu_ := TMenuItem.Create(PopList4Print);
      mnu_.OnClick := A_l_l_Click__Click;
      mnu_.Caption := StringReplace(ts.Strings[i], '.rtm', '', []);
      // IntToStr(i)+
      mnu_.Hint := ts.Strings[i];
      mnuWordDocuments.Add(mnu_);
    end;
  end;
  mnuWordDocuments.Caption := 'چاپ هاي ' + ComboEmployTypeID.Text + ' ... ';
  mnuWordDocuments.Visible := mnuWordDocuments.Count > 0;
  ts.Free;

end;

procedure TInterdictsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  IsEmail := False;
  IsPrintTime := True;
  if not CheckUserlevel(qryInitQry.FieldByName('PrintLevelID').AsInteger) then
    Abort;
  if qryInterdicts.FieldByName('EmployTypeID').AsString = EmptyStr then
    Abort;

  PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdictsF.qryInterdictsInterdicStartDateChange(Sender: TField);
var
  StoreDayTime, employDate, i: Integer;
begin
  inherited;
  if qryPeronalInfo2.FieldByName('employDate').AsString.Trim = EmptyStr then
  begin
    Warn2('تاریخ استخدام وارد نشده', 0);
    Abort;
  end;
  i := 1;
  StoreDayTime := qryPeronalInfo2.FieldByName('StoreDayTime').AsInteger;
  employDate := StrToIntDef(copy(qryPeronalInfo2.FieldByName('employDate')
    .AsString, 0, 4), 0);
  With qryInterdicts do
  begin
    if copy(FieldByName('InterdicStartDate').AsString, 6, 5) >=
      copy(qryPeronalInfo2.FieldByName('employDate').AsString, 6, 5) then
      i := 0;
    i := StoreDayTime +
      (StrToIntDef(copy(FieldByName('InterdicStartDate').AsString, 0, 4), 0) -
      employDate - i);
    FieldByName('TotalYearsWork').ReadOnly := False;
    FieldByName('TotalYearsWork').AsInteger := 0;
    if i > 0 then
      FieldByName('TotalYearsWork').AsInteger := i;
  end; // With
end;

procedure TInterdictsF.qryInterdictsjobsGroupChange(Sender: TField);
begin
  inherited;
  if optp.ChkGroupInterdicts then
  begin
    qryJob.Locate('jobCode', qryInterdicts.FieldByName('jobsGroup')
      .AsInteger, []);
    with qryInterdicts do
    begin
      if qryJob.FieldByName('GroupCode').AsInteger <> 0 then
        FieldByName('GroupID').AsInteger := qryJob.FieldByName('GroupCode')
          .AsInteger;

      if qryJob.FieldByName('GradeID').AsInteger <> 0 then
        FieldByName('grade').AsInteger := qryJob.FieldByName('GradeID')
          .AsInteger;

      if qryJob.FieldByName('RankID').AsInteger <> 0 then
        FieldByName('PayehNo').AsInteger := qryJob.FieldByName('RankID')
          .AsInteger;

      if qryJob.FieldByName('Organizational').AsInteger <> 0 then
        FieldByName('jobCode').AsInteger := qryJob.FieldByName('Organizational')
          .AsInteger;
    end;
  end;
end;

procedure TInterdictsF.qryInterdictsPersonelNoChange(Sender: TField);
begin
  inherited;
  with qryPeronalInfo2 do
  begin
    Active := False;
    Parameters.ParamByName('PersonelNo').Value :=
      qryInterdicts.FieldByName('PersonelNo').AsInteger;
    Active := True;
    qryInterdicts.FieldByName('insuranceID').AsInteger :=
      FieldByName('insuranceID').AsInteger;
    qryInterdicts.FieldByName('TaxCalculationType').AsInteger :=
      FieldByName('TaxCalculationType').AsInteger;
    if FieldByName('EmployTypeID').AsInteger <> 0 then
      qryInterdicts.FieldByName('EmployTypeID').AsInteger :=
        FieldByName('EmployTypeID').AsInteger
    else
      Warn2(lblEmployTypeID.Caption + ' در معرفي پرسنل مشخص نشده');

  end; // with
  // if (qryInterdicts.State=dsinsert) then AccInsert;
  if not(qryInterdicts.State in dsEditModes) then
    exit;
  if (qryInterdicts.FieldByName('InterdicStartDate').IsNull) then
  begin
    qryInterdicts.FieldByName('InterdicStartDate').AsString :=
      APPBank.StartYear;
    qryInterdicts.FieldByName('InterdicEndDate').AsString := APPBank.endYear;
  end; // if
  qryInterdictsInterdicStartDateChange(qryInterdictsInterdicStartDate);
  if (qryInterdicts.FieldByName('InsuranceStartDate').IsNull) then
    qryInterdicts.FieldByName('InsuranceStartDate').AsString :=
      qryPeronalInfo2.FieldByName('employDate').AsString;

  GetInterdictNo

end;

procedure TInterdictsF.GetInterdictNo;
begin
  if optp.PersonelNoInInterdictNo then
    With DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := EmptyStr;
      SQL.Add('DECLARE @PersonelNo INT');
      SQL.Add('DECLARE @InterdictNo FLOAT');
      SQL.Add('SET @PersonelNo = :PersonelNo ');
      SQL.Add('SET @InterdictNo=(SELECT max(CAST(InterdictNo AS Float)) FROM Pay.Interdicts WHERE (PersonelNo = @PersonelNo))');
      SQL.Add('SET @InterdictNo=Isnull( @InterdictNo+0.01 ,@PersonelNo)');
      SQL.Add('SELECT @InterdictNo');
      Parameters.ParamByName('PersonelNo').Value :=
        qryInterdicts.FieldByName('PersonelNo').AsInteger;
      Active := True;
      qryInterdicts.FieldByName('InterdictNo').AsString := Fields[0].AsString;
    end;
end;

procedure TInterdictsF.ActCommentExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := NotePayF.Enter(qryInterdicts.FieldByName('Comment').AsString,
    'موضوع قرارداد');
  if s <> '' then
  begin
    if not(qryInterdicts.State in dsEditModes) then
    begin
      qryInterdicts.edit;
      qryInterdicts.FieldByName('Comment').Value := s;
      qryInterdicts.post;
    end // if
    else
      qryInterdicts.FieldByName('Comment').Value := s;
  end; // if
end;

procedure TInterdictsF.ppLblTopicGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + APPBank.CompanyName + ' به آدرس:‏ ' + DMF.ReadBankConfigPay
    ('address') + ' تلفن:‏ ' + DMF.ReadBankConfigPay('Tel1') + ' فاكس:  ‏  ' +
    DMF.ReadBankConfigPay('Tel2') + ' كه اختصاراً شركت ناميده ميشود،از يكطرف و '
    + GetPersonelName(qryInterdicts.FieldByName('PersonelNo').AsString) +
    ' فرزند:‏ ' + qryPeronalInfo2.FieldByName('fatherName_L1').AsString +
    ' بشماره شناسنامه ' + qryPeronalInfo2.FieldByName('IDNumber').AsString +
    ' متولد:‏ ' + qryPeronalInfo2.FieldByName('BirthDate').AsString +
    ' صادره از  ' + qryPeronalInfo2.FieldByName('SodurPlace_L1').AsString +
    ' داراي مدرك تحصيلي: ‏ ' + qryPeronalInfo2.FieldByName('licence_L1')
    .AsString + ' به آدرس:  ‏ ' + qryPeronalInfo2.FieldByName('address_L1')
    .AsString + ' تلفن:  ‏ ' + qryPeronalInfo2.FieldByName('Tel').AsString +
    ' كه از اين پس طرف قرارداد ناميده ميشود،از طرف ديگر تحت شرايط زير منعقد ميگردد:‏ ';
end;

procedure TInterdictsF.ppLblCommentGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := qryInterdicts.FieldByName('Comment').AsString;
end;

procedure TInterdictsF.ppLblTimeGetText(Sender: TObject; var Text: String);
var
  StartDate, Enddate: String;
begin
  inherited;
  StartDate := qryInterdicts.FieldByName('InterdicStartDate').AsString;
  Enddate := qryInterdicts.FieldByName('InterdicEndDate').AsString;
  Text := Text + StartDate + '  الي  ' + Enddate
  // +'  بمدت  '+IntToStr(DaysBetween(Shamsi2Miladi(StartDate),Shamsi2Miladi(EndDate)))
    + '  بصورت " ' + ComboEmployTypeID.Text +
    ' " ميباشد،كه پس از طي دوره مزبور در صورت رضايت شركت قابل تمديد ميباشد  ';
end;

procedure TInterdictsF.ppLblResponsibleGetText(Sender: TObject;
  var Text: String);
var
  c, SalaryLaw: Currency;
begin
  inherited;
  With DMF.qryTmpTmpp do
  begin //
    Active := False;
    SQL.Text :=
      'SELECT SUM(Amount) AS SUMAmount FROM Pay.InterdictItems WHERE(SalaryID  not IN ('
      + DMF.ReadBankConfigPay('RecalSalaryLaw', '0') + ')) ' +
      'GROUP BY InterdictID HAVING InterdictID =' + qryInterdicts.FieldByName
      ('InterdictID').AsString;
    Active := True;
    SalaryLaw := Fields[0].AsCurrency;
    Active := False;
  end; // with
  c := CalcSumFileds('Amount');
  Text := Text + CurrToStrF(SalaryLaw, ffCurrency, 0) +
    ' ريال بابت حقوق و مزايا و' + CurrToStrF(c - SalaryLaw, ffCurrency, 0) +
    ' ريال بابت مزاياي ناشي از قانون كار كه در مجموع ' +
    CurrToStrF(c, ffCurrency, 0) + 'ريال مي‏شود، پرداخت نمايد.‏ '
end;

procedure TInterdictsF.ppLblText2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + '' + APPBank.CompanyName + ' به آدرس:‏ ' +
    DMF.ReadBankConfigPay('address') + ' تلفن:‏ ' + DMF.ReadBankConfigPay
    ('Tel1') + ' كه منبعد در اين قرارداد شركت ناميده ميشود از يكطرف و ' +
    GetPersonelName(qryInterdicts.FieldByName('PersonelNo').AsString) +
    ' بشماره شناسنامه ' + qryPeronalInfo2.FieldByName('IDNumber').AsString +
    ' صادره از  ' + qryPeronalInfo2.FieldByName('SodurPlace_L1').AsString +
    ' ساكن ' + qryPeronalInfo2.FieldByName('address_L1').AsString +
    ' كه در اين قرارداد مشاور ناميده ميشود از طرف ديگر تحت شرايط زير منعقد ميگردد:‏  ';
end;

procedure TInterdictsF.ppLblAmount(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + CurrToStrF(CalcSumFileds('Amount'), ffCurrency, 0);
end;

procedure TInterdictsF.pplblTime2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + qryInterdicts.FieldByName('InterdicStartDate').AsString +
    ' لغايت ' + qryInterdicts.FieldByName('InterdicEndDate').AsString +
    ' ميباشد وتمديد قرارداد منوط به توافق طرفين خواهد بود.‏  ';
end;

procedure TInterdictsF.pplbl5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + qryInterdicts.FieldByName('InterdicStartDate').AsString +
    ' ميباشد.‏ '
end;

procedure TInterdictsF.BitBtn16Click(Sender: TObject);
var
  s, code: String;
  i, InterdictItemsID: Integer;
begin
  inherited;
  with qryItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      s := s + FieldByName('SalaryID').AsString + ',';
      Next;
    end; // while
    s := LeftStr(s, Length(s) - 1);
    if s = '' then
      s := '0';
    EnableControls;
  end; // with
  if ChooseItemF.SelectChecks(s, 'FormInfoID ', IfThen(optp.LanguageDisplay1,
    'InfoName_L1 ', 'InfoName_L2 '),
    ' Pay.FormsInfo INNER JOIN Pay.FormTypes ON FormsInfo.FormType=FormTypes.FormType  ',
    ' WHERE (FormTypes.SalaryKind BETWEEN 1 AND 4) and (FormInfoID not in(' + s
    + '))') then
  begin
    for i := 1 to Length(s) do
    begin
      if s[i] <> ',' then
        code := code + s[i]
      else
      begin
        with qryItems do
        begin
          Insert;
          InterdictItemsID := GetANewCode('', 'Pay.InterdictItems',
            'InterdictItemsID');
          InterdictItemsID := InterdictItemsID + i;
          InterdictItemsID := InterdictItemsID - 1;
          FieldByName('InterdictItemsID').AsInteger := InterdictItemsID;
          FieldByName('SalaryID').Value := StrToInt(code);
          FieldByName('Userid').Value := User.id;
          FieldByName('InterdictID').Value :=
            qryInterdicts.FieldByName('InterdictID').AsInteger;
          FieldByName('ExpenseType').Value := 1;
          post;
        end; // with
        code := '';
      end;
    end; // for
  end; // if
  FreeReservedCodes(DMF.adcSalary, 'Pay.InterdictItems');
end;

procedure TInterdictsF.ppLblAmount2TextGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ppSetHyperLinkText(Sender, '‏22-') + Text +
    num2alphabet(round(CalcSumFileds('Amount'))) + ' ريال';
end;

function TInterdictsF.ppSetHyperLinkText(Sender: TObject; Text: String): string;
begin
  if Sender is TppLabel then
    Result := (Sender as TppLabel).HyperLink;
  if Result = EmptyStr then
    Result := Text
end;

procedure TInterdictsF.ppDBTxt_PrsnId2txtGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPersonelName(Text)
end;

procedure TInterdictsF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  if (mainF.MnuPay_2PersonelInfo.Visible or mainF.MnuPay_3PersonelInfo.Visible)
    and mdiMainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryInterdicts.FieldByName('PersonelNo').AsInteger, [])
end;

procedure TInterdictsF.ppLblPersonelGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ppSetHyperLinkText(Sender, '‏27-') + Text +
    GetPersonelName(qryInterdicts.FieldByName('PersonelNo').AsString)
end;

procedure TInterdictsF.ppImage1Print(Sender: TObject);
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

procedure TInterdictsF.ppImgPersonalPicPrint(Sender: TObject);
begin
  inherited;
  // if opt.ScanState and DirectoryExists(opt.ArchiveScan) then
  // pathName := opt.ArchiveScan + '\Archive\AllYear\PersonelInfo\'
  // else
  // pathName := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)) +
  // 'Archive\AllYear\PersonelInfo\');
  // pathName := pathName + '1_' + qryInterdicts.FieldByName('PersonelNo')
  // .AsString + '_1_0.jpg';
  // if FileExists(pathName) then
  // (Sender as TppImage).Picture.LoadFromFile(pathName)
  // else (Sender as TppImage).Picture := nil;
  GetPersonalPicture((Sender as TppImage).Picture,
    qryInterdicts.FieldByName('PersonelNo').AsInteger);
end;

procedure TInterdictsF.ppLblemployDaytimeGetText(Sender: TObject;
  var Text: String);
var
  StartDate, Enddate: String;
begin
  inherited;
  StartDate := qryInterdicts.FieldByName('InterdicStartDate').AsString;
  Enddate := qryInterdicts.FieldByName('InterdicEndDate').AsString;
  // Text:=IntToStr(DaysBetween(Shamsi2Miladi(StartDate),Shamsi2Miladi(EndDate)))+' روز'
  Text := ppSetHyperLinkText(Sender, '‏18-') + Text + 'از' + StartDate + 'تا' +
    Enddate + '‏';
end;

procedure TInterdictsF.qryInterdictsStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryInterdicts.FieldByName('State').AsInteger of
    0:
      Text := 'پيش نويس';
    1:
      Text := 'نهائي';
    50:
      Text := 'بايگاني';
  end; // case
end;

procedure TInterdictsF.ppLblResponsible2GetText(Sender: TObject;
  var Text: String);
var
  c: Currency;
begin
  inherited;
  c := CalcSumFileds('Amount');
  Text := Text + CurrToStrF(c, ffCurrency, 0) +
    ' ريال بابت حقوق پرداخت نمايد.‏ '
end;

procedure TInterdictsF.ppLblNumber4ItemsGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Sender is TppLabel then
    Text := '‏' + ppSetHyperLinkText(Sender, IntToStr((Sender as TppLabel).Tag))
      + '-‏' + Text + '‏'
end;

procedure TInterdictsF.ppLblEmployTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ComboEmployTypeID.Text
end;

procedure TInterdictsF.pdbtxtInfoName_L1GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := VarToStr(qry_FormsInfo.Lookup('FormInfoID', Text, 'InfoName_L1'));
end;

procedure TInterdictsF.ppDBTxtGetPersonelNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPersonelName(qryInterdicts.FieldByName('PersonelNo').AsString)
end;

procedure TInterdictsF.qryInterdictsinsuranceIDGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := ComboinsuranceID.Items
    [ComboinsuranceID.Items.IndexOfObject(TObject(Sender.AsInteger))]
end;

procedure TInterdictsF.qryInterdictsinsuranceIDSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := Integer(ComboinsuranceID.Items.Objects
    [ComboinsuranceID.ItemIndex]);
end;

procedure TInterdictsF.SpeedButton3Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT jobCode, jobName FROM Pay.jobs ';
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, ' کد و عنوان شغل ', Txt,
    ['كد', 'عنوان '], Results, [80, 180], alLeft);
  if s then
  begin
    if not(qryInterdicts.State in dsEditModes) then
      qryInterdicts.edit;
    qryInterdicts.FieldByName('jobsGroup').AsInteger := StrToInt(Results[0]);
  end; // if
end;

procedure TInterdictsF.SrcInterdictsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  StatusBar1.Panels[2].Text := Format('حكم %d از %d',
    [qryInterdicts.RecNo, qryInterdicts.RecordCount])
end;

procedure TInterdictsF.qryItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryInterdicts.State in dsEditModes) then
    qryInterdicts.edit;
end;

procedure TInterdictsF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not ValidateDatasetDates(DataSet, '', '') then
    Abort;
  if Trim(qryItems.FieldByName('Firstdate').AsString) = EmptyStr then
    qryItems.FieldByName('Firstdate').AsVariant := Null;
  if Trim(qryItems.FieldByName('Enddate').AsString) = EmptyStr then
    qryItems.FieldByName('Enddate').AsVariant := Null;

end;

procedure TInterdictsF.rdgrpEmailClick(Sender: TObject);
begin
  inherited;
  actEmail.Enabled := rdgrpEmail.ItemIndex = 1;
  UpdateList
end;

procedure TInterdictsF.actNewInterdictExecute(Sender: TObject);
var
  Date_: TDateTime;
  Date_s, Mess, InterdicDate: string;
  OldInterdictID, NewInterdictID: Integer;
begin
  inherited;
  if { optP.ActivePayRoll } True and
    (qryInterdicts.FieldByName('State').AsInteger = 0) then
  begin
    Warn('كپي حكم از حكم پيش نويس امكان پذير نمي باشد.‏' + #13 + #10 +
      'وضعيت حكم بايد نهايي يا بايگاني باشد.‏', mtInformation);
    exit;
  end;

  if get_response
    ('لطفاٌ قبل "كپي حكم" تاريخ پايان قراداد حكم جاري را كنترل كنيد.‏' + #10 +
    'آيا براي كپي اين حكم مطمئن هستيد؟‏') <> mrYes then
    exit;

  Date_ := Shamsi2Miladi(qryInterdicts.FieldByName('InterdicEndDate').AsString);
  Date_ := IncDay(Date_);
  Date_s := miladi2Shamsi(Date_);

  Mess := 'تاريخ شروع قرارداد را وارد كنيد';
  repeat
    Date_s := StringReplace(Date_s, '/', '', [rfReplaceAll]);
    Date_s := get_box('تاريخ شروع قرارداد', Mess, Date_s, False, '9999/99/99');
    Mess := 'تاريخ شروع قرارداد را بدرستي وارد كنيد';

  until (Date_s = EmptyStr) or
    ((validate_date(False, '', '', 'تاريخ وارد شده', Date_s)) and
    (Date_s > qryInterdicts.FieldByName('InterdicEndDate').AsString) and
    validDateInMah(Date_s, qryInterdicts.FieldByName('InterdicEndDate')
    .AsString));

  InterdicDate := Date_s;
  Mess := 'تاريخ قرارداد را وارد كنيد';
  repeat
    InterdicDate := StringReplace(InterdicDate, '/', '', [rfReplaceAll]);
    InterdicDate := get_box('تاريخ قرارداد', Mess, InterdicDate, False,
      '9999/99/99');
    Mess := 'تاريخ قرارداد را بدرستي وارد كنيد';

  until (InterdicDate = EmptyStr) or
    ((validate_date(False, '', '', 'تاريخ وارد شده', InterdicDate)));

  if Date_s = EmptyStr then
    exit;

  OldInterdictID := qryInterdicts.FieldByName('InterdictID').AsInteger;
  With DMF.qryTmpTmpp do
  begin // پيدا كردن متمم حكم كاگزيني براي كپي
    Active := False;
    SQL.Text := 'SELECT InterdictID FROM Pay.Interdicts ';
    SQL.Add('WHERE (PersonelNo = ' + qryInterdicts.FieldByName('PersonelNo')
      .AsString + ')');
    SQL.Add(' AND (State < 50) AND (InterdicType = 1)');
    SQL.Add('ORDER BY InterdictID DESC');
    Active := True;
    if FieldByName('InterdictID').AsInteger <> 0 then
      OldInterdictID := FieldByName('InterdictID').AsInteger;
    Active := False;
  end;

  try
    With SproNewInterdict do
    begin
      DMF.adcSalary.BeginTrans;
      Parameters.ParamByName('@OldInterdictID').Value := OldInterdictID;
      Parameters.ParamByName('@InterdicStartDate').Value := Date_s;
      Parameters.ParamByName('@InterdicEndDate').Value :=APPBank.endYear;
      Parameters.ParamByName('@InterdicType').Value := MyInterdicType;
      Parameters.ParamByName('@FirstUser').Value := User.name;
      Parameters.ParamByName('@PersonelNo').Value := 0;

      ExecProc;

      BigMessage('كپي شد.‏', 1);
      qryInterdicts.Requery();
      NewInterdictID := Parameters.ParamByName('@RETURN_VALUE').Value;
      if qryInterdicts.Locate('InterdictID', NewInterdictID, []) then
      begin
        qryInterdicts.edit;
        qryInterdicts.FieldByName('InterdicStartDate').ReadOnly := False;
        qryInterdicts.FieldByName('InterdicStartDate').AsString :=
          qryInterdicts.FieldByName('InterdicStartDate').AsString;

        qryInterdictsInterdictDate.ReadOnly := False;
        qryInterdictsInterdictDate.AsString := InterdicDate;

        qryInterdicts.post;
      end;
      DMF.adcSalary.CommitTrans;
      BigMessage('انجام شد.‏', 1);
    end;

  except
    on E: Exception do
    begin
      if DMF.adcSalary.InTransaction then
        DMF.adcSalary.RollbackTrans;
      if qryInterdicts.State in dsEditModes then
        qryInterdicts.Cancel;
      qryInterdicts.Locate('InterdictID', OldInterdictID, []);
      Warn('اشکال در ثبت' + #13#10 + E.Message);
    end;
  end;

end;

procedure TInterdictsF.gridkeyenter;
var
  nextIndex: Integer;
  curIndex: Integer;
  grd: TDBGrid;
begin
  grd := (Sender as TDBGrid);
  curIndex := grd.SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13, #98:
      begin
        if shiftDown then
          exit;
        // aDataSet:=grd.DataSource.DataSet;
        Key := #0;
        nextIndex := curIndex + 1;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(grd.Columns[nextIndex].Visible) OR
          (grd.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if grd.DataSource.DataSet.State in dsEditModes then
        grd.DataSource.DataSet.Cancel;

    #32, #157:
      if grd.Columns[curIndex].ButtonStyle = cbsEllipsis then
      begin
        // in [1,17,19,23,24,25,26] then begin
        Key := #0;
        grd.OnEditButtonClick(Sender);
        // dbgrdCustomersManagEditButtonClick(sender);
      end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < grd.Columns.Count) and
      (not(grd.Columns[nextIndex].Visible) OR
      (grd.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= grd.Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          grd.SelectedIndex := 1;
        end; // 0
      -2:
        begin
          if grd.DataSource.State in dsEditModes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if grd.DataSource.State in dsEditModes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      grd.SelectedIndex := nextIndex;
    end; // case
end;

procedure TInterdictsF.qryInterdictsBeforeEdit(DataSet: TDataSet);
var
  i: Integer;
  InterdicStartDate: String;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('EditLevelID').AsInteger) then
    Abort;
  OkEditMaster;
  if (qryInterdicts.FieldByName('State').AsInteger = 0) and not optp.ChkStateArchiveEdit
  then
  begin
    for i := 0 to qryInterdicts.FieldCount - 1 do
      qryInterdicts.Fields[i].ReadOnly := False;
    for i := 0 to qryItems.FieldCount - 1 do
      qryItems.Fields[i].ReadOnly := False;

    with DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := 'SELECT MAX(Mounth) FROM Pay.FixedCalculated';
      SQL.Add('WHERE (PersonelNO = :PersonelNO )');
      SQL.Add('AND (ArchiveID > 0)');
      Parameters.ParamByName('PersonelNO').Value :=
        qryInterdicts.FieldByName('PersonelNo').AsInteger;
      Active := True;
      if Fields[0].IsNull then
        exit;
      GetYearMounth(Fields[0].AsInteger);
      Active := False;
      InterdicStartDate := MidStr(qryInterdicts.FieldByName('InterdicStartDate')
        .AsString, 1, 7);
      if InterdicStartDate <= optp.YearMounth then
      begin
        Warn('از اطلاعات اين حكم در محاسبات بايگاني شده  حقوق استفاده شده' +
          ' و قابل ويرايش نيست');
        Abort;
      end;
    end;
  end;
end;

procedure TInterdictsF.OkEditMaster;
var
  i: Integer;
begin
  if (qryInterdicts.FieldByName('State').AsInteger <> 0) then
  begin
    With qryInterdicts do
    begin
      for i := 0 to FieldCount - 1 do
        Fields[i].ReadOnly := True;
      FieldByName('InterdicEndDate').ReadOnly := False;
      FieldByName('ProjectID').ReadOnly := False;
      FieldByName('jobCode').ReadOnly := False;
      FieldByName('AccTopicCode').ReadOnly := False;
      FieldByName('AccDetailCode').ReadOnly := False;
      FieldByName('AccCTopicCode').ReadOnly := False;
      FieldByName('AccCTopicCode2').ReadOnly := False;
      FieldByName('AccCTopicCode3').ReadOnly := False;
      FieldByName('KargozinyNote_L1').ReadOnly := False;
      FieldByName('InsuranceStartDate').ReadOnly := False;
      FieldByName('InsuranceEndDate').ReadOnly := False;
      FieldByName('AidDate1').ReadOnly := False;
    end; // qryRecipts
    With qryItems do
    begin
      for i := 0 to FieldCount - 1 do
        Fields[i].ReadOnly := True;
    end; // qryItems
  end;

end;

procedure TInterdictsF.qryInterdictsBeforeInsert(DataSet: TDataSet);

begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('ADDLevelID').AsInteger) then
    Abort;
  if not(EditEnabled) then
    Abort;
end;

procedure TInterdictsF.ppLblPersonelInfoReplaceGetText(Sender: TObject;
  var Text: String);
var
  s: String;
begin
  inherited;
  s := GetPersonelName(qryInterdicts.FieldByName('PersonelNo').AsString) +
    ' فرزند:‏ ' + qryPeronalInfo2.FieldByName('fatherName_L1').AsString +
    ' بشماره شناسنامه ' + qryPeronalInfo2.FieldByName('IDNumber').AsString +
    ' متولد:‏ ' + qryPeronalInfo2.FieldByName('BirthDate').AsString +
    ' صادره از  ' + qryPeronalInfo2.FieldByName('SodurPlace_L1').AsString +
    ' داراي مدرك تحصيلي: ‏ ' + qryPeronalInfo2.FieldByName('licence_L1')
    .AsString + ' به آدرس:  ‏ ' + qryPeronalInfo2.FieldByName('address_L1')
    .AsString + ' تلفن:  ‏ ' + qryPeronalInfo2.FieldByName('Tel').AsString;
  Text := StringReplace(Text, 'مشخصاتپرسنل', s, []);

end;

procedure TInterdictsF.ppLblTimeReplaceGetText(Sender: TObject;
  var Text: String);
var
  s: String;
begin
  inherited;
  s := 'تاريخ' + qryInterdicts.FieldByName('InterdicStartDate').AsString +
    '  لغايت  ' + qryInterdicts.FieldByName('InterdicEndDate').AsString +
    '  بمدت  ' + IntToStr
    (1 + DaysBetween(Shamsi2Miladi(qryInterdicts.FieldByName
    ('InterdicStartDate').AsString),
    Shamsi2Miladi(qryInterdicts.FieldByName('InterdicEndDate').AsString))) +
    '‏روز مي‏باشد.‏';
  Text := StringReplace(Text, 'تاريختااتريخ', s, []);
  Text := StringReplace(Text, ' تاريختاتاريخ ', s, []);

end;

procedure TInterdictsF.pdbtxtFormInfoID2InfoIDGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := VarToStr(qry_FormsInfo.Lookup('FormInfoID', Text, 'InfoID'));
end;

procedure TInterdictsF.plblSanavatBimeGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  With TADOStoredProc.Create(nil) do
  begin
    Connection := DMF.adcSalary;
    ProcedureName := 'Pay.GetDifferenceDate';
    Parameters.Refresh;
    Parameters.ParamByName('@StartDate').Value :=
      qryInterdicts.FieldByName('InsuranceStartDate').AsString;;
    Parameters.ParamByName('@EndDate').Value :=
      qryInterdicts.FieldByName('InterdicStartDate').AsString;
    Parameters.ParamByName('@OutputType').Value := 1;
    ExecProc;
    Text := VarToStr(Parameters.ParamByName('@RETURN_VALUE').Value);
    Free;
  end
end;

procedure TInterdictsF.plblSanavatGetText(Sender: TObject; var Text: string);
begin
  inherited;
  With TADOStoredProc.Create(nil) do
  begin
    Connection := DMF.adcSalary;
    ProcedureName := 'Pay.GetDifferenceDate';
    Parameters.Refresh;
    Parameters.ParamByName('@StartDate').Value :=
      qryPeronalInfo2.FieldByName('employDate').AsString;;
    Parameters.ParamByName('@EndDate').Value :=
      qryInterdicts.FieldByName('InterdicStartDate').AsString;
    Parameters.ParamByName('@OutputType').Value := 1;
    ExecProc;
    Text := VarToStr(Parameters.ParamByName('@RETURN_VALUE').Value);
    Free;
  end
end;

procedure TInterdictsF.ppLabel39GetText(Sender: TObject; var Text: string);
var
  c: Int64;
begin
  inherited;
  c := StrToInt64(RemoveComma(CurrToStr(CalcSumFileds('Amount'))));
  Text := num2alphabet(c);

end;

procedure TInterdictsF.ppLbl4AllOnlyReplaceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ReplaceText(Text);
end;

function TInterdictsF.ReplaceText(Text: String): String;
var
  s: String;
begin
  s := 'تاريخ' + qryInterdicts.FieldByName('InterdicStartDate').AsString +
    '  لغايت  ' + qryInterdicts.FieldByName('InterdicEndDate').AsString;
  Text := StringReplace(Text, ' تاريختاتاريخ ', s, [rfReplaceAll]);
  Text := StringReplace(Text, 'تاريختااتريخ', s, [rfReplaceAll]);
  s := '  بمدت  ' + IntToStr
    (1 + DaysBetween(Shamsi2Miladi(qryInterdicts.FieldByName
    ('InterdicStartDate').AsString),
    Shamsi2Miladi(qryInterdicts.FieldByName('InterdicEndDate').AsString)));
  Text := StringReplace(Text, 'تعدادروز', s, [rfReplaceAll]);

  s := ShamsiDateMonthCount(qryInterdictsInterdicStartDate.AsString,
    qryInterdictsInterdicEndDate.AsString);
  Text := StringReplace(Text, 'تعدادماهوروز', s, [rfReplaceAll]);

  Text := StringReplace(Text, 'محلخدمت', ComboJobCity.Text, [rfReplaceAll]);
  Text := StringReplace(Text, 'نوعحكم', ComboEmployTypeID.Text, [rfReplaceAll]);
  Text := StringReplace(Text, 'وضعيتتاهل',
    qryPeronalInfo2.FieldByName('marriage_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'تعدادفرزند',
    qryPeronalInfo2.FieldByName('childnumber_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'نامونامخانوادگي ',
    GetPersonelName(qryInterdicts.FieldByName('PersonelNo').AsString),
    [rfReplaceAll]);
  Text := StringReplace(Text, 'شمارهشناسنامه ',
    qryPeronalInfo2.FieldByName('IDNumber').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'صادرهاز ',
    qryPeronalInfo2.FieldByName('SodurPlace_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'تاريختولد ',
    qryPeronalInfo2.FieldByName('BirthDate').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'نامپدر ',
    qryPeronalInfo2.FieldByName('fatherName_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'بهآدرس ',
    qryPeronalInfo2.FieldByName('address_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'ميزانتحصيلات ',
    qryPeronalInfo2.FieldByName('licence_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'نظاموظيفه ',
    qryPeronalInfo2.FieldByName('SoldierState_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'واحدسازماني ', ComboOfficeCode.Text,
    [rfReplaceAll]);
  Text := StringReplace(Text, 'رتبهشغلي ', ComboGrade.Text, [rfReplaceAll]);
  Text := StringReplace(Text, 'گروهحکم', ComboGroupID.Text, [rfReplaceAll]);
  Text := StringReplace(Text, 'گروه', ComboGroupID.Text, [rfReplaceAll]);
  Text := StringReplace(Text, 'پستسازماني ', ComboJobCode.Text, [rfReplaceAll]);
  Text := StringReplace(Text, 'مبلغبحروف ',
    num2alphabet(StrToInt64(RemoveComma(StatusBar1.Panels[0].Text))),
    [rfReplaceAll]);
  Text := StringReplace(Text, 'مبلغبعدد ', StatusBar1.Panels[0].Text,
    [rfReplaceAll]);
  Text := StringReplace(Text, 'شمارهتلفن ', qryPeronalInfo2.FieldByName('Tel')
    .AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'grade', ComboGrade.Text, [rfReplaceAll]);
  Text := StringReplace(Text, 'نوعكاركرد', ComboSubFunctionID.Text,
    [rfReplaceAll]);
  Text := StringReplace(Text, 'نوعدوحكم', ComboSubInterdictID.Text,
    [rfReplaceAll]);
  Text := StringReplace(Text, 'مدركتحصيلي',
    qryPeronalInfo2.FieldByName('licence_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'رشتهتحصيلي',
    qryPeronalInfo2.FieldByName('studyField_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'توضيحاتتوضيحات',
    qryInterdicts.FieldByName('KargozinyNote_L1').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'پايهحكم', ComboPayehNo.Text, [rfReplaceAll]);

  Text := StringReplace(Text, 'عنوانشغل', qryInterdicts_jobsGroupName.AsString,
    [rfReplaceAll]);

  Text := StringReplace(Text, 'کدمللی', qryInterdicts_PrsnNationalID.AsString,
    [rfReplaceAll]);

  Result := Text;
end;

procedure TInterdictsF.ComboEmployTypeIDChange(Sender: TObject);
begin
  inherited;
  with qryInterdicts do
  begin
    if (TopicKind = 5) then
      FieldByName('AccTopicCode').AsInteger := Calculate_AccCode(1, TopicKind,
        FieldByName('EmployTypeID').AsInteger);
    if (DetailKind = 5) then
      FieldByName('AccDetailCode').AsInteger := Calculate_AccCode(2, DetailKind,
        FieldByName('EmployTypeID').AsInteger);
    if (CTopicKind = 5) then
      FieldByName('AccCTopicCode').AsInteger := Calculate_AccCode(3, CTopicKind,
        FieldByName('EmployTypeID').AsInteger);
    if (CTopicKind2 = 5) then
      FieldByName('AccCTopicCode2').AsInteger :=
        Calculate_AccCode(4, CTopicKind2, FieldByName('EmployTypeID')
        .AsInteger);
  end; // with
end;

procedure TInterdictsF.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  with qryInterdicts do
  begin
    if (TopicKind = 6) then
      FieldByName('AccTopicCode').AsInteger := Calculate_AccCode(1, TopicKind,
        FieldByName('PersonelNo').AsInteger);
    if (DetailKind = 6) then
      FieldByName('AccDetailCode').AsInteger := Calculate_AccCode(2, DetailKind,
        FieldByName('PersonelNo').AsInteger);
    if (CTopicKind = 6) then
      FieldByName('AccCTopicCode').AsInteger := Calculate_AccCode(3, CTopicKind,
        FieldByName('PersonelNo').AsInteger);
    if (CTopicKind2 = 6) then
      FieldByName('AccCTopicCode2').AsInteger :=
        Calculate_AccCode(4, CTopicKind2, FieldByName('PersonelNo').AsInteger);
  end;
  // with
end;

procedure TInterdictsF.edtInterdicEndDateDblClick(Sender: TObject);
begin
  inherited;
  Warn(ShamsiDateMonthCount(qryInterdictsInterdicStartDate.AsString,
    qryInterdictsInterdicEndDate.AsString));
end;

procedure TInterdictsF.edtProjectIDExit(Sender: TObject);
begin
  inherited;
  with qryInterdicts do
  begin
    if (TopicKind = 3) then
      FieldByName('AccTopicCode').AsInteger := Calculate_AccCode(1, TopicKind,
        FieldByName('ProjectID').AsInteger);
    if (DetailKind = 3) then
      FieldByName('AccDetailCode').AsInteger := Calculate_AccCode(2, DetailKind,
        FieldByName('ProjectID').AsInteger);
    if (CTopicKind = 3) then
      FieldByName('AccCTopicCode').AsInteger := Calculate_AccCode(3, CTopicKind,
        FieldByName('ProjectID').AsInteger);
    if (CTopicKind2 = 3) then
      FieldByName('AccCTopicCode2').AsInteger :=
        Calculate_AccCode(4, CTopicKind2, FieldByName('ProjectID').AsInteger);
  end;
  // with
end;

procedure TInterdictsF.ComboOfficeCodeChange(Sender: TObject);
begin
  inherited;
  with qryInterdicts do
  begin
    if (TopicKind = 4) then
      FieldByName('AccTopicCode').AsInteger := Calculate_AccCode(1, TopicKind,
        FieldByName('OfficeCode').AsInteger);
    if (DetailKind = 4) then
      FieldByName('AccDetailCode').AsInteger := Calculate_AccCode(2, DetailKind,
        FieldByName('OfficeCode').AsInteger);
    if (CTopicKind = 4) then
      FieldByName('AccCTopicCode').AsInteger := Calculate_AccCode(3, CTopicKind,
        FieldByName('OfficeCode').AsInteger);
    if (CTopicKind2 = 4) then
      FieldByName('AccCTopicCode2').AsInteger :=
        Calculate_AccCode(4, CTopicKind2, FieldByName('OfficeCode').AsInteger);
  end;
  // with
end;

procedure TInterdictsF.ComboSubFunctionIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (shiftDown) and (Key = #32) then
  begin
    LookUpSearch((Sender as TDBComboBox), qryInterdicts,
      (Sender as TDBComboBox).Tag);
    Key := ' ';
  end;
end;

procedure TInterdictsF.edtStateKeyPress(Sender: TObject; var Key: Char);
var
  tc: Cardinal;
const
  t0: Cardinal = 0;
  __s: String = '';
begin
  inherited;
  tc := GetTickCount;
  if tc - t0 > 1500 then
    __s := Key
  else
    __s := __s + Key;
  if checkPasWrd(__s) then
    pnlManege.Visible := not pnlManege.Visible;
  t0 := tc;
end;

procedure TInterdictsF.BitBtn15Click(Sender: TObject);
var
  RecalSalaryLaw: String;
  SpacialWageCode: Integer;
  c: Currency;
  CodeExists: Boolean;
begin
  inherited;
  RecalSalaryLaw := DMF.ReadBankConfigPay('RecalSalaryLaw', '');
  SpacialWageCode := StrToInt(DMF.ReadBankConfigPay('SpacialWageCode', '0'));
  if (RecalSalaryLaw = '') or (SpacialWageCode = 0) then
    exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT SUM(Amount)  as SumAmount';
    SQL.Add('FROM Pay.InterdictItems');
    SQL.Add('WHERE (InterdictID = :InterdictID) AND (SalaryID IN (' +
      RecalSalaryLaw + '))');
    Parameters.ParamByName('InterdictID').Value :=
      IfThen(qryInterdicts.FieldByName('InterdictID').IsNull, 0,
      qryInterdicts.FieldByName('InterdictID').AsInteger);
    Active := True;
    c := FieldByName('SumAmount').AsCurrency;
    Active := False;
  end; // with
  CodeExists := False;

  With qryItems do
  begin
    DisableControls;
    First;
    while Not eof do
    begin
      if FieldByName('SalaryID').AsInteger = SpacialWageCode then
      begin
        edit;
        qryItems.FieldByName('Amount').AsCurrency :=
          qryItems.FieldByName('Amount').AsCurrency + c *
          (qryInterdicts.FieldByName('ManegePercent').AsCurrency +
          qryInterdicts.FieldByName('OfficeManegePercent').AsCurrency) / 100;
        CodeExists := True;
        post;
      end; // if;
      Next;
    end; // while
    EnableControls;
  end; // with
  if not CodeExists then
    with qryItems do
    begin
      Insert;
      FieldByName('InterdictItemsID').Value :=
        GetANewCode('', 'Pay.InterdictItems', 'InterdictItemsID');
      FieldByName('SalaryID').Value := SpacialWageCode;
      FieldByName('Userid').Value := User.id;
      FieldByName('InterdictID').Value := qryInterdicts.FieldByName
        ('InterdictID').AsInteger;
      FieldByName('ExpenseType').Value := 1;
      FieldByName('Amount').AsCurrency :=
        c * (qryInterdicts.FieldByName('ManegePercent').AsCurrency +
        qryInterdicts.FieldByName('OfficeManegePercent').AsCurrency) / 100;
      post;
    end; // with
end;

procedure TInterdictsF.qryInterdictsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryItems.Requery();
end;

procedure TInterdictsF.ppRchTxt4AllOnlyReplaceGetTextPrint(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := ReplaceText((Sender as TppRichText).PlainText);
  (Sender as TppRichText).Text := s;
end;

procedure TInterdictsF.ppReport1AfterPrint(Sender: TObject);
begin
  inherited;
  IsPrintTime := False;
  qryInterdictsAfterScroll(qryInterdicts)
end;

procedure TInterdictsF.ppReport1BeforePrint(Sender: TObject);
begin
  inherited;
  IsPrintTime := True;
end;

procedure TInterdictsF.ppLblGradeGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ComboGrade.Text;
end;

procedure TInterdictsF.actSearchReportExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.Show(ppReport1, 'interdict', Self);
end;

procedure TInterdictsF.BitBtn7Click(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryInterdicts);
end;

procedure TInterdictsF.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  NAllRecords.Checked := not NAllRecords.Checked;
end;

procedure TInterdictsF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopMnuOthers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdictsF.BitBtn6Click(Sender: TObject);
begin
  inherited;
  PopNewInterdict.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TInterdictsF.actScanExecute(Sender: TObject);
begin
  inherited;
  try
    ScanImageF.ScanImage(DMF.adcSalary, 'Interdicts',
      qryInterdicts.FieldByName('PersonelNo').AsString, 1, False,
      qryPeronalInfo2.FieldByName('name_L1').AsString + ' ' +
      qryPeronalInfo2.FieldByName('lastName_L1').AsString, True, '', True, True,
      optp.ScanState, optp.ArchiveScan, False)
  finally
  end;

end;

procedure TInterdictsF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInterdicts);
end;

procedure TInterdictsF.A_l_l_Click__Click(Sender: TObject);
begin
  inherited;
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

  try
    qryInterdicts.DisableControls;
    qryItems.DisableControls;
    if IsEmail then
    begin
      try
        FirstReportName := (Sender as TMenuItem).Hint;
        popEmail.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
      finally
      end;

    end
    else
      InitReportFile(ppReport1, (Sender as TMenuItem).Hint);

  finally
    qryInterdicts.EnableControls;
    qryItems.EnableControls;
  end;
end;

procedure TInterdictsF.FormCreate(Sender: TObject);
begin
  inherited;
  IsPrintTime := False;
  InitDSW_JOB;
  InitqryForm;
  InitAllSpeedButton(InterdictsF, AllSpeedButtonClick);
  HighLightRequiredFields(Self);
end;

procedure TInterdictsF.InitqryForm;
var
  SalaryID: string;
begin
  OrginalSQL := qryInterdicts.SQL.Text;
  lblCaption.Hint := '45';
  ExcelImport := False;
  With qryInitQry do
  begin
    Active := True;

    EdtAidNo1.Visible := FieldByName('AidInfoNo1Active').AsInteger > 0;
    lblAidNo1.Visible := EdtAidNo1.Visible;
    lblAidNo1.Caption := 'شماره‏' + FieldByName('AidInfo1Caption').AsString;

    EdtAidDate1.Visible := FieldByName('AidInfoDate1Active').AsInteger = 1;
    LblAidDate1.Visible := EdtAidDate1.Visible;
    LblAidDate1.Caption := 'تاريخ‏‏' + FieldByName('AidInfo1Caption').AsString;

    pnlCompany.Visible := gv_MultiCompany;
    pnlCompanyAid.Visible := pnlCompany.Visible or EdtAidNo1.Visible;
  end;

  DBGrid2.Visible := optp.InterdictItemSumSalary1 <> EmptyStr;
  if DBGrid2.Visible then
  begin
    with qryItemsSum do
    begin
      Active := False;
      SQL.Text := 'SELECT Amount1,Amount2,AmountSum,AmountIn30,AmountSumAnd30';
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

    With qryItemsSum2 do
    begin
      SQL.Text := EmptyStr;
      if optp.InterdictItemSumSalary1 <> EmptyStr then
      begin
        SQL.Add('SELECT MIN(InterdictItems.SalaryID) AS SalaryID,');
        SQL.Add('SUM(InterdictItems.Amount) AS Amount,');
        SQL.Add('MIN(InterdictItems.Amount) AS _OldAmount,');
        SQL.Add('''جمع مزد مبنا'' AS _InfoName_L1 , ''Total wages for the base'' AS _InfoName_L2');
        SQL.Add('FROM Pay.InterdictItems INNER JOIN');
        SQL.Add('Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID');
        SQL.Add('WHERE (InterdictItems.InterdictID = :InterdictID1 ) AND');
        SQL.Add('(InterdictItems.SalaryID IN (' +
          optp.InterdictItemSumSalary1 + '))');
        SQL.Add('UNION ALL');
      end;
      if optp.InterdictItemSumSalary2 <> EmptyStr then
      begin
        SQL.Add('SELECT MIN(InterdictItems.SalaryID) AS SalaryID,');
        SQL.Add('SUM(InterdictItems.Amount) AS Amount,');
        SQL.Add('MIN(InterdictItems.Amount) AS _OldAmount,');
        SQL.Add('''جمع مزايا'' AS _InfoName_L1 , ''Sum benefits'' AS _InfoName_L2');
        SQL.Add('FROM Pay.InterdictItems INNER JOIN');
        SQL.Add('Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID');
        SQL.Add('WHERE (InterdictItems.InterdictID = :InterdictID2 ) AND');
        SQL.Add('(InterdictItems.SalaryID IN (' +
          optp.InterdictItemSumSalary2 + '))');
        SQL.Add('UNION ALL');
      end;

      SQL.Add('SELECT InterdictItems.SalaryID, InterdictItems.Amount, 0 AS _OldAmount,');
      SQL.Add('FormsInfo.InfoName_L1, FormsInfo.InfoName_L2');
      SQL.Add('FROM Pay.InterdictItems INNER JOIN');
      SQL.Add('Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID');
      SQL.Add('WHERE  (InterdictItems.InterdictID = :InterdictID3 ) AND');
      SQL.Add('(InterdictItems.SalaryID NOT IN (' + optp.InterdictItemSumSalary1
        + '))AND');
      SQL.Add('(InterdictItems.SalaryID NOT IN (' +
        optp.InterdictItemSumSalary2 + '))');
      qryItemsSum2Old.SQL.Text := SQL.Text;
    end;

  end;

  if optp.InterdictItemSumSalary1 <> EmptyStr then
    With qryItemsP1 do
    begin
      SQL.Text := EmptyStr;
      SQL.Add('SELECT ''جمع مزد مبنا'' AS _Name ,*');
      SQL.Add('FROM Pay.InterdictItems INNER JOIN');
      SQL.Add('Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID');
      SQL.Add('WHERE (InterdictItems.InterdictID = :InterdictID ) AND');
      SQL.Add('(InterdictItems.SalaryID IN (' +
        optp.InterdictItemSumSalary1 + '))');
    end;
  if optp.InterdictItemSumSalary2 <> EmptyStr then
    With qryItemsP2 do
    begin
      SQL.Text := EmptyStr;
      SQL.Add('SELECT ''جمع مزايا'' AS _Name ,*');
      SQL.Add('FROM Pay.InterdictItems INNER JOIN');
      SQL.Add('Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID');
      SQL.Add('WHERE (InterdictItems.InterdictID = :InterdictID ) AND');
      SQL.Add('(InterdictItems.SalaryID IN (' +
        optp.InterdictItemSumSalary2 + '))');
    end;

  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT DISTINCT InterdictItems.SalaryID,';
    SQL.Add('FormsInfo.FormType * 100 + FormsInfo.InfoID AS FormType');
    SQL.Add('FROM Pay.InterdictItems INNER JOIN');
    SQL.Add('Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID');
    SQL.Add('ORDER BY FormType');
    Active := True;
    if RecordCount > 0 then
    begin
      qryInterdictItemsP.SQL.Text := 'SELECT';
      while not eof do
      begin
        qryInterdictItemsP.SQL.Add('SUM(CASE WHEN SalaryID = ' +
          Fields[0].AsString);
        qryInterdictItemsP.SQL.Add('THEN Amount ELSE 0 END) AS Amount' +
          Fields[1].AsString + '_' + Fields[0].AsString + ',');

        qryInterdictItemsP.SQL.Add('SUM(CASE WHEN SalaryID = ' +
          Fields[0].AsString);
        qryInterdictItemsP.SQL.Add('THEN Amount ELSE 0 END)*30 AS Amount' +
          Fields[1].AsString + '_' + Fields[0].AsString + 'Mult,');

        qryInterdictItemsP.SQL.Add('ROUND(SUM(CASE WHEN SalaryID = ' +
          Fields[0].AsString);
        qryInterdictItemsP.SQL.Add('THEN Amount ELSE 0 END)/30, 0)  AS Amount' +
          Fields[1].AsString + '_' + Fields[0].AsString + 'Div,');

        Next;
      end;
      qryInterdictItemsP.SQL.Add
        ('SUM(Amount) as SumAmount FROM Pay.InterdictItems ');
      qryInterdictItemsP.SQL.Add('WHERE(InterdictID = :InterdictID)');
    end;
    Active := False;
  end;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT DISTINCT OldInterdictItems.SalaryID,WageInfo.FormType * 100 + WageInfo.InfoID AS FormType';
    SQL.Add(', WageInfo.CalCulateType  FROM');
    SQL.Add(' Pay.FormsInfo GradeInfo RIGHT OUTER JOIN');
    SQL.Add(' Pay.FormsInfo PayehInfo RIGHT OUTER JOIN');
    SQL.Add(' Pay.InterdictItems OldInterdictItems INNER JOIN');
    SQL.Add(' Pay.Interdicts OldInterdicts ON OldInterdictItems.InterdictID = OldInterdicts.InterdictID RIGHT OUTER JOIN');
    SQL.Add(' Pay.InterdictItems NEWInterdictItems INNER JOIN');
    SQL.Add(' Pay.Interdicts NEWInterdicts ON NEWInterdictItems.InterdictID = NEWInterdicts.InterdictID INNER JOIN');
    SQL.Add(' Pay.FormsInfo WageInfo ON NEWInterdictItems.SalaryID = WageInfo.FormInfoID ON OldInterdictItems.SalaryID =');
    SQL.Add(' NEWInterdictItems.SalaryID AND');
    SQL.Add(' OldInterdicts.InterdictID = NEWInterdicts.LastInterdictID ON PayehInfo.FormInfoID = OldInterdicts.PayehNo ON');
    SQL.Add(' GradeInfo.FormInfoID = OldInterdicts.grade LEFT OUTER JOIN');
    SQL.Add(' Pay.FormsInfo GroupInfo ON OldInterdicts.GroupID = GroupInfo.FormInfoID');
    SQL.Add(' WHERE  (NOT (OldInterdictItems.SalaryID IS NULL))  ');
    // AND (WageInfo.InfoID < 20)
    // qryInterdictItemsP  و  وجود اين شرط باعث اختلاف دو  qryInterdictItemsOldP مي شود

    Active := True;
    SalaryID := '0';
    if RecordCount > 0 then
    begin
      qryInterdictItemsOldP.SQL.Text := 'SELECT';
      while not eof do
      begin
        qryInterdictItemsOldP.SQL.Add('SUM(CASE WHEN SalaryID = ' +
          Fields[0].AsString);
        qryInterdictItemsOldP.SQL.Add('THEN Amount ELSE 0 END) AS Amount' +
          Fields[1].AsString + '_' + Fields[0].AsString + ',');

        qryInterdictItemsOldP.SQL.Add('SUM(CASE WHEN SalaryID = ' +
          Fields[0].AsString);
        qryInterdictItemsOldP.SQL.Add('THEN Amount ELSE 0 END)*30 AS Amount' +
          Fields[1].AsString + '_' + Fields[0].AsString + 'Mult,');

        qryInterdictItemsOldP.SQL.Add('ROUND(SUM(CASE WHEN SalaryID = ' +
          Fields[0].AsString);
        qryInterdictItemsOldP.SQL.Add
          ('THEN Amount ELSE 0 END)/30, 0)  AS Amount' + Fields[1].AsString +
          '_' + Fields[0].AsString + 'Div,');

        if FieldByName('CalCulateType').AsInteger = 1 then
          SalaryID := SalaryID + ',' + Fields[0].AsString;
        Next;
      end;

      qryInterdictItemsOldP.SQL.Add('ROUND(SUM(CASE WHEN SalaryID IN( ' +
        SalaryID + ')');
      qryInterdictItemsOldP.SQL.Add
        ('THEN Amount/30 ELSE 0 END), 0)  AS SumAmountDiv30,');

      qryInterdictItemsOldP.SQL.Add
        ('SUM(Amount) as SumAmount FROM Pay.InterdictItems  ');
      qryInterdictItemsOldP.SQL.Add('WHERE(InterdictID = :InterdictID)');
    end;
    Active := False;
  end;
  qryJob.Active := True;

end;

procedure TInterdictsF.AllDDBComboBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Warn('btn' + (Sender as TDBComboBox).name);
    TMYSpeedButton(FindComponent('btn' + (Sender as TDBComboBox).name)).Click;
  end;
end;

procedure TInterdictsF.AllSpeedButtonClick(Sender: TObject);
begin
  inherited;
  LookUpSearch((Sender as TMYSpeedButton).cmbo, qryInterdicts,
    (Sender as TMYSpeedButton).cmbo.Tag);
end;

procedure TInterdictsF.actCopyInterdictPNoExecute(Sender: TObject);
var
  PersonelNo: Integer;
begin
  inherited;
  PersonelNo := qryInterdicts.FieldByName('PersonelNo').AsInteger + 1;
  PersonelNo := StrToInt(get_box('كپي حكم جاري به پرسنل ديگر',
    'شماره پرسنل براي كپي حكم را وارد كنيد.‏', IntToStr(PersonelNo)));
  if get_response('آيا براي كپي اين حكم براي پرسنل بشماره  ' +
    IntToStr(PersonelNo) + '  مطمئن هستيد؟‏') <> mrYes then
    exit;
  With SproNewInterdict do
  begin
    Parameters.ParamByName('@OldInterdictID').Value :=
      qryInterdicts.FieldByName('InterdictID').AsInteger;
    Parameters.ParamByName('@InterdicType').Value :=
      qryInterdicts.FieldByName('InterdicType').AsInteger;
    Parameters.ParamByName('@PersonelNo').Value := PersonelNo;
    Parameters.ParamByName('@FirstUser').Value := User.name;
    ExecProc;
    BigMessage('كپي شد.‏', 1);
    qryInterdicts.Requery();
    qryInterdicts.Locate('InterdictID', Parameters.ParamByName('@RETURN_VALUE')
      .Value, []);
    qryInterdicts.edit;
    qryInterdicts.FieldByName('InterdicStartDate').AsString :=
      qryInterdicts.FieldByName('InterdicStartDate').AsString;
    qryInterdicts.post;
  end;
end;

procedure TInterdictsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');
      AddItem(DMF.adcSalary, 'InterdictDate', 'تاريخ حكم', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(InterdictDate), MAX(InterdictDate) FROM Pay.Interdicts');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMF.adcSalary, 'GroupID', 'گروه حكم', 'گروه', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 68)',
        'SELECT MIN(FormInfoID), MAX(FormInfoID) FROM Pay.FormsInfo WHERE  (FormType = 68)');
      AddItem(DMF.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(FormInfoID), MAX(FormInfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12) ',
        'SELECT MIN(FormInfoID), MAX(FormInfoID) FROM Pay.FormsInfo where  (FormType = 12) ');

      AddItem(DMF.adcSalary, 'ProjectID', 'پروژه/ م.هزينه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 40) ',
        'SELECT MIN(FormInfoID),MAX(FormInfoID) FROM Pay.FormsInfo WHERE (FormType = 40) ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        with qryInterdicts do
        begin
          Active := False;
          Parameters.ParamByName('ProjectIDFrom').Value :=
            GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
          Parameters.ParamByName('ProjectIDTo').Value :=
            GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

          Parameters.ParamByName('GroupIDFrom').Value :=
            GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
          Parameters.ParamByName('GroupIDTo').Value :=
            GetcTo(myParams.ParamValues['GroupID'], ftInteger);

          Parameters.ParamByName('EmployTypeIDFrom').Value :=
            GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
          Parameters.ParamByName('EmployTypeIDTo').Value :=
            GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

          Parameters.ParamByName('OfficeCodeFrom').Value :=
            GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
          Parameters.ParamByName('OfficeCodeTo').Value :=
            GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

          Parameters.ParamByName('PersonelNoFrom').Value :=
            GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
          Parameters.ParamByName('PersonelNoTo').Value :=
            GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

          Parameters.ParamByName('InterdictDateFrom').Value :=
            GetcFrom(myParams.ParamValues['InterdictDate'], ftDate);
          Parameters.ParamByName('InterdictDateTo').Value :=
            GetcTo(myParams.ParamValues['InterdictDate'], ftDate);

          Parameters.ParamByName('PersonelStateFrom').Value :=
            GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
          Parameters.ParamByName('PersonelStateTo').Value :=
            GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

          Active := True;
        end;
        // with
      end; // if
    finally
      Free;
    end; // try
  end; // end

end;

procedure TInterdictsF.actInterdicts4HistoryFExecute(Sender: TObject);
begin
  inherited;
  Interdicts4HistoryF.Enter(qryInterdictsPersonelNo.AsInteger,
    qryInterdictsInterdictID.AsInteger)
end;

procedure TInterdictsF.actNewInterdictsExecute(Sender: TObject);
var
  Txt, PersonnelNos: String;
begin
  inherited;
  Txt := 'SELECT PersonelNo, PersonelName_L1 FROM Pay.EmployeeInfo';
  PersonnelNos := selectedF.ShowSelect(DMF.adcBSell,
    'انتخاب پرسنل برای کپی حکم جاری برای آنها', Txt, ['كد', 'مشخصات'], alLeft,
    [50, 400], PersonnelNos);

  if PersonnelNos <> EmptyStr then
  begin
    if get_response('آيا براي كپي اين حكم براي پرسنل بشماره  ' + PersonnelNos +
      '  مطمئن هستيد؟‏') <> mrYes then
      exit;
    With sproNewInterdict_S do
    begin
      Parameters.ParamByName('@OldInterdictID').Value :=
        qryInterdicts.FieldByName('InterdictID').AsInteger;
      Parameters.ParamByName('@PersonnelNos').Value := PersonnelNos;
      Parameters.ParamByName('@FirstUser').Value := User.name;
      Parameters.ParamByName('@InterdictID').Value := 0;
      ExecProc;
      BigMessage('كپي شد.‏', 1);
      qryInterdicts.Requery();
      qryInterdicts.Locate('InterdictID',
        Parameters.ParamByName('@RETURN_VALUE').Value, []);
    end;

  end;

end;

procedure TInterdictsF.actEmailExecute(Sender: TObject);
begin
  inherited;
  IsEmail := True;
  PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdictsF.actExcelImportInterdictsExecute(Sender: TObject);
begin
  inherited;
  try
    ExcelImport := True;
    ExcelImportInterdictsF.ShowImPortExcel(qryInterdicts, qryItems);
  finally
    qryInterdicts.Requery;
    ExcelImport := False;
  end;
end;

procedure TInterdictsF.qryItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID').AsInteger) then
    Abort

end;

procedure TInterdictsF.qryInterdictsHasRetardChange(Sender: TField);
begin
  inherited;
  setColumns2(DBGrid1, qryInterdicts.FieldByName('HasRetard').AsInteger = 1,
    'Firstdate');
  DBGrid1.ShowHint := qryInterdicts.FieldByName('HasRetard').AsInteger = 1;
  btnHasRetard.Visible := DBGrid1.ShowHint;
  try
    if Sender.AsInteger = 0 then
      if get_response
        ('در صورتيكه حكم معوقه ندارد تاريخ معوقه سطرها بايد پاك شود ' + #13#10 +
        'آيا براي پاك كردن تاريخ معوقه ها مطمئن هستيد؟') = mrYes then
        With qryItems do
        begin
          First;
          while not eof do
          begin
            edit;
            FieldByName('Firstdate').AsVariant := Null;
            FieldByName('Enddate').AsVariant := Null;
            Next;
          end;
        end
      else
      begin
        qryInterdictsHasRetard.OnChange := nil;
        Sender.AsInteger := 1;
      end;
  finally
    qryInterdictsHasRetard.OnChange := qryInterdictsHasRetardChange;
  end;

end;

procedure TInterdictsF.dbchkHasRetardClick(Sender: TObject);
begin
  inherited;
  setColumns2(DBGrid1, dbchkHasRetard.Checked, 'Firstdate');
  setColumns2(DBGrid1, dbchkHasRetard.Checked, 'Enddate');
  DBGrid1.ShowHint := dbchkHasRetard.Checked;
  btnHasRetard.Visible := DBGrid1.ShowHint;
end;

procedure TInterdictsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TInterdictsF.btnHasRetardClick(Sender: TObject);
var
  NewFirstdate, NewEnddate: String;
begin
  inherited;
  if dbchkHasRetard.Checked then
    With qryItems do
    begin
      NewFirstdate := FieldByName('Firstdate').AsString;
      NewEnddate := FieldByName('Enddate').AsString;
      Next;
      while not eof do
      begin
        if Firstdate = FieldByName('Firstdate').AsString then
        begin
          edit;
          FieldByName('Firstdate').AsString := NewFirstdate;
        end;
        if Enddate = FieldByName('Enddate').AsString then
        begin
          edit;
          FieldByName('Enddate').AsString := NewEnddate;
        end;
        Next;
      end;
    end;
end;

procedure TInterdictsF.actStateExecute(Sender: TObject);
begin
  inherited;
  qryInterdicts.FieldByName('State').AsInteger :=
    (1 - qryInterdicts.FieldByName('State').AsInteger) * 1
end;

procedure TInterdictsF.actStateTo1Execute(Sender: TObject);
begin
  inherited;
  With qryInterdicts do
  begin
    if FieldByName('State').AsInteger = 0 then
      FieldByName('State').AsInteger := 1;
  end;
end;

procedure TInterdictsF.mnuEmailClick(Sender: TObject);
var
  DoWhile: Boolean;
  procedure setEmail;
  begin
    ppReport1.EmailSettings.Recipients.Text :=
      qryInterdicts.FieldByName('Email').AsWideString;
    ppReport1.EmailSettings.Subject := SYSCAPTION + ' > حکم کارگزینی > ' +
      qryInterdicts_PrsnNAME.AsWideString + ' ' +
      qryInterdicts_PrsnlastName.AsWideString;
    ppReport1.PDFSettings.FontEncoding := feUnicode;
  end;

begin
  inherited;
  DoWhile := True;
  ppReport1.DeviceType := TMenuItem(Sender).Hint;
  ppReport1.EmailSettings.ReportFormat := TMenuItem(Sender).Hint;
  ppDBPipeline1.RangeBegin := rbCurrentRecord;
  ppDBPipeline1.RangeEnd := reCurrentRecord;
  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    case (Sender as TMenuItem).Tag of
      1:
        begin
          setEmail;
          InitReportFile(ppReport1, FirstReportName, False, True);
        end;
      2:
        With qryInterdicts do
        begin
          First;
          while (not eof) and (DoWhile) do
          begin
            setEmail;
            InitReportFile(ppReport1, FirstReportName, False, True);
            Application.ProcessMessages;
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
    CloseMessage;
  end; // try

end;

procedure TInterdictsF.mnuSendToFileServerClick(Sender: TObject);
var
  DoWhile: Boolean;
  dir: string;
begin
  inherited;
  if not SelectDirectory('لطفاً مسير ذخیره را وارد كنيد:‏', '', dir) then
    exit;
  DoWhile := True;
  InitReportFile(ppReport1, FirstReportName, False, False);
  ppDBPipeline1.RangeBegin := rbCurrentRecord;
  ppDBPipeline1.RangeEnd := reCurrentRecord;

  ppReport1.DeviceType := TMenuItem(Sender).Hint;
  ppReport1.DefaultFileDeviceType := TMenuItem(Sender).Hint;
  ppReport1.AllowPrintToFile := True;
  ppReport1.ShowPrintDialog := False;

  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryInterdicts.DisableControls;
    qryItems.DisableControls;

    case (Sender as TMenuItem).Tag of
      1:
        begin
          ppReport1.TextFileName := IncludeTrailingPathDelimiter(dir) +
            SalaryFileName2(TMenuItem(Sender).Hint);
          // APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) + '000'
          // + qryPersonelsPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
          // (qryPersonelsPersonel_L1.AsString.Trim) +
          // // #254 +qryPersonelsPersonel_L1.AsString.Trim +
          // '.' + TMenuItem(Sender).Hint;;

          ppReport1.PDFSettings.FontEncoding := feUnicode;
          ppReport1.Print;
          SendServerFile(ppReport1.TextFileName, mmoREST);
        end;
      2:
        With qryInterdicts do
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
            ppReport1.Reset;
            ppReport1.TextFileName := IncludeTrailingPathDelimiter(dir) +
              SalaryFileName2(TMenuItem(Sender).Hint);

            ppReport1.PDFSettings.FontEncoding := feUnicode;
            ppReport1.Print;

            SendServerFile(ppReport1.TextFileName, mmoREST);

            Next;
          end;
        end;

    end;

  finally
    qryInterdicts.EnableControls;
    qryItems.EnableControls;
    CloseMessage;
  end; // try

end;

function TInterdictsF.SalaryFileName2(fileExtension: string): string;
begin
  Result := 'WA_' + qryInterdicts_PrsnNationalID.AsString + '_' +
    APPBank.Year.ToString + '_' +
    MidStr(qryInterdictsInterdicStartDate.AsString, 6, 2) + '_' +
    FcompanyCode.ToString + IfThen(fileExtension = 'PDF', '_1', '') + '.' +
    fileExtension;
end;

procedure TInterdictsF.pdbtxtDSW_JOBGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := Get_Job_Desc;
end;

function TInterdictsF.Get_Job_Desc: AnsiString;
var
  s: string;
begin
  s := Trim(qryPeronalInfo2.FieldByName('DSW_JOB').AsString);
  if s <> EmptyStr then
    Result := VarToStr(qryDSW_JOB.Lookup('Job_Code', s, 'Job_Desc'));
end;

procedure TInterdictsF.InitDSW_JOB;
begin
  inherited;

  if not FileExists(pathManufactory) then
  begin
    Warn('فايل ليست كدهاي شغل بيمه به نام ' + pathManufactory +
      '  پيدا نشد.!‏');
    exit;
  end;
  with qryDSW_JOB do
  begin
    Active := False;
    ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
      pathManufactory + ';Persist Security Info=False';
    try
      Active := True;
    except
      on E: Exception do
      begin
        Warn('اشكال در فايل ليست كدهاي شغل بيمه' + E.Message);
      end;
    end; // try
  end; // with
end;

end.
