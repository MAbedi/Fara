unit GetOtherMoney;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBCtrls, Mask, Buttons, Menus, ppDB,
  ppDBPipe, ppModule, ppMemo, ppCtrls, ppStrtch, ppRegion, ppPrnabl, ppClass,
  ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  DB, ADODB, DBActns, ActnList, ExtCtrls, ImgList, pptypes, ppParameter,
  SMSUnit, ppDesignLayer, System.ImageList, System.Actions, FarsiReportBuilde,
  Vcl.Imaging.pngimage, template2MDI;

type
  TGetOtherMoneyF = class(TTemplate4F)
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    qryInit: TADOQuery;
    qryForms: TADOQuery;
    qryFormsFormID: TIntegerField;
    qryFormsFormType: TWordField;
    qryFormsFormNumber: TIntegerField;
    qryFormsFormDate: TStringField;
    qryFormsCustomerID1: TIntegerField;
    qryForms_CustomerID1: TStringField;
    qryFormsCustomerID2: TIntegerField;
    qryForms_CustomerID2: TStringField;
    qryFormsAmount: TBCDField;
    qryFormsBudgetCode: TIntegerField;
    qryForms_TopicCode: TStringField;
    qryFormsDetailCode: TStringField;
    qryForms_DetailCode: TStringField;
    qryFormsCTopicCode: TStringField;
    qryForms_CTopicCode: TStringField;
    qryFormsFomNote: TStringField;
    srcForms: TDataSource;
    qryCustomers2: TADOQuery;
    qryCustomers1: TADOQuery;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    Panel3: TPanel;
    PnlAllPerson: TPanel;
    Panel5: TPanel;
    PnlCustomerID1: TPanel;
    LblCustomerID1: TLabel;
    SBtnCustomerID1: TSpeedButton;
    TxtCustomerID1: TDBText;
    EdtCustomerID1: TDBEdit;
    pnlCustomerID2: TPanel;
    lblCustomerID2: TLabel;
    SBtnCustomerID2: TSpeedButton;
    TxtCustomerID2: TDBText;
    EdtCustomerID2: TDBEdit;
    Panel4: TPanel;
    Label8: TLabel;
    SBtnFormNumber: TSpeedButton;
    LblReciptDate: TLabel;
    EdtFNum: TDBEdit;
    EdtFormDate: TDBEdit;
    PnlAmount: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    LblAmount: TLabel;
    EdtAmount: TDBEdit;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    ImageList1: TImageList;
    qryFormsProjectID: TIntegerField;
    qryForms_BudgetCode: TIntegerField;
    qryForms_ProjectID1: TIntegerField;
    qryForms_BudgetCode2: TIntegerField;
    qryForms__ProjectID2: TIntegerField;
    qryForms_BudgetName: TStringField;
    qryForms_ProjectName: TStringField;
    PnlBudget: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    txt_BudgetName: TDBText;
    SpeedButton1: TSpeedButton;
    txt_ProjectName: TDBText;
    SpeedButton2: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    qryFormsAidInfoNo: TStringField;
    qryFormsAidInfoDate: TStringField;
    f: TStringField;
    qryFormsCustomerName2: TStringField;
    EdtCustomerName2: TDBEdit;
    qryForms_CTopicCode3: TStringField;
    actPrint: TAction;
    actSearch: TAction;
    actExit: TAction;
    PopMuPrint: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    actPrint1: TAction;
    actPrint2: TAction;
    pnlPay_Topic: TPanel;
    LblTopicTypes: TLabel;
    LblPayTypes: TLabel;
    CmbPayTypes: TDBComboBox;
    CmbTopicTypes: TDBComboBox;
    qryFormsFormState: TWordField;
    TxtFormState: TDBText;
    ProcReMainPerson: TADOStoredProc;
    LblReMainPerson: TLabel;
    N4: TMenuItem;
    qryFormsFirstUser: TStringField;
    qryFormsLastUser: TStringField;
    qryFormsModifyDate: TDateTimeField;
    LblRecNo: TLabel;
    actSearchReprot: TAction;
    actSearchReprot1: TMenuItem;
    qryFormsPayTypes: TIntegerField;
    qryFormsTopicTypes: TIntegerField;
    actcustomerinter: TAction;
    qryFormsYearID: TIntegerField;
    qryFormsServerID: TIntegerField;
    qryFormsSellsMethod: TIntegerField;
    qryFormsSellsEmporium: TIntegerField;
    pnlSells: TPanel;
    pnlSellsEmporium: TPanel;
    Label13: TLabel;
    dblkcbb_SellsEmporium: TDBLookupComboBox;
    pnlSellsMethod: TPanel;
    Label10: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    qryValidData: TADOQuery;
    actFilter: TAction;
    NAllRecords: TMenuItem;
    ppParameterList1: TppParameterList;
    actInserNote: TAction;
    qryFormsDocNo: TIntegerField;
    actRptCoffer: TAction;
    qryFormsDefaultDate: TStringField;
    pnlDefaultDate: TPanel;
    pnlCustomerID3: TPanel;
    lblCustomerID3: TLabel;
    btnCustomerID3: TSpeedButton;
    txt_CustomerID3: TDBText;
    edtCustomerID3: TDBEdit;
    qryCustomers3: TADOQuery;
    qryForms_CustomerID3: TStringField;
    qryFormsCustomerID3: TIntegerField;
    btnPrint: TBitBtn;
    actGetExcel: TAction;
    qryFormsAidFormType: TWordField;
    qryForms_CTopicCode2: TStringField;
    qryFormsCTopicCode3: TStringField;
    aBigPanel: TPanel;
    horoofPanel: TPanel;
    qryRelatedRecipts: TADOQuery;
    qryFormsRelatedRecipts: TStringField;
    qryForms_RelatedRecipts: TStringField;
    pnlArz: TPanel;
    Label33: TLabel;
    Label35: TLabel;
    Label32: TLabel;
    edtArzRate: TDBEdit;
    edtArzAmount: TDBEdit;
    CmbArzTypeID: TDBComboBox;
    qryFormsArzTypeID: TIntegerField;
    qryFormsArzAmount: TBCDField;
    qryFormsArzRate: TFloatField;
    qryFormsCashCheckFormID: TIntegerField;
    qryForms_AccountKind: TIntegerField;
    qryForms_Mobile: TStringField;
    qryFormsTopicCode: TLargeintField;
    actViewFileF: TAction;
    actshowRelatedF: TAction;
    actWorkflowHistoryF: TAction;
    lblRemainPerson2: TLabel;
    Label12: TLabel;
    dbedtDefaultDate: TDBEdit;
    Label14: TLabel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    actStateChange: TAction;
    qryFormsDefaultDuration: TSmallintField;
    edtDefaultDuration: TDBEdit;
    actMakeDocumentShow: TAction;
    actRequestCash: TAction;
    qryFormsOperatorID: TIntegerField;
    txtDocDate: TDBText;
    txtDocNo: TDBText;
    txtFormState1: TDBText;
    qryFormsDocDate: TStringField;
    actCopyForm: TAction;
    BitBtn9: TBitBtn;
    ppDetailBand3: TppDetailBand;
    ppPageStyle1: TppPageStyle;
    plblCmbTopicTypes: TppLabel;
    plblCmbPayTypes: TppLabel;
    ppLabel1: TppLabel;
    ppDBText11: TppDBText;
    ppRecFooterLine: TppLine;
    ppRegion1: TppRegion;
    ppLabel47: TppLabel;
    ppLine16: TppLine;
    ppLabel46: TppLabel;
    ppLabel45: TppLabel;
    ppLine15: TppLine;
    ppLine14: TppLine;
    ppLabel44: TppLabel;
    ppLine13: TppLine;
    ppLabel43: TppLabel;
    ppLine11: TppLine;
    ppLabel42: TppLabel;
    ppLabel41: TppLabel;
    ppLine10: TppLine;
    ppLabel30: TppLabel;
    ppLine9: TppLine;
    ppLine6: TppLine;
    ppLine1: TppLine;
    ppLabel29: TppLabel;
    ppDBText14: TppDBText;
    ppLabel28: TppLabel;
    ppLabel39: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel37: TppLabel;
    ppLabel36: TppLabel;
    ppLabel35: TppLabel;
    ppLabel34: TppLabel;
    ppLabel33: TppLabel;
    ppLabel32: TppLabel;
    ppLabel31: TppLabel;
    ppDBText16: TppDBText;
    ppDBText7: TppDBText;
    ppLabel25: TppLabel;
    ppShape6: TppShape;
    ppDesignLayers1: TppDesignLayers;
    qryForms_Customer2Active: TIntegerField;
    qryForms_Customer1Active: TIntegerField;
    qryFormsReciptID: TIntegerField;
    pnlMainDown: TPanel;
    GrpBoxNote: TGroupBox;
    dbmmoFomNote: TDBMemo;
    GrpBoxAccount: TGroupBox;
    pnlCTopicCode2: TPanel;
    Label6: TLabel;
    SpeedButton6: TSpeedButton;
    txt_CTopicCode2: TDBText;
    DBEdit4: TDBEdit;
    pnlCTopicCode: TPanel;
    Label9: TLabel;
    SpeedButton5: TSpeedButton;
    txt_CTopicCode: TDBText;
    DBEdit6: TDBEdit;
    pnlDetailCode: TPanel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    txt_DetailCode: TDBText;
    DBEdit7: TDBEdit;
    pnlTopicCode: TPanel;
    txt_TopicCode: TDBText;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    pnlCTopicCode3: TPanel;
    Label11: TLabel;
    SpeedButton7: TSpeedButton;
    txt_CTopicCode3: TDBText;
    DBEdit8: TDBEdit;
    qryFormsManegerNote: TStringField;
    grpManegerNote: TGroupBox;
    dbmmoManegerNote: TDBMemo;
    qryFormsID: TLargeintField;
    qryAllForms: TADOQuery;
    qryAllFormsFormID: TIntegerField;
    qryAllFormsServerID: TIntegerField;
    qryAllFormsYearID: TIntegerField;
    qryAllFormsCustomerID1: TIntegerField;
    qryAllFormsCustomerID2: TIntegerField;
    qryAllFormsCustomerID3: TIntegerField;
    srcAllForms: TDataSource;
    qryCustomers4: TADOQuery;
    qryForms_CustomerID4: TStringField;
    qryFormsCustomerID4: TIntegerField;
    qryAllFormsCustomerID4: TIntegerField;
    Panel6: TPanel;
    pnlCustomerID4: TPanel;
    btnCustomerID4: TSpeedButton;
    lblCustomerID4: TLabel;
    txt_CustomerID4: TDBText;
    edtCustomerID4: TDBEdit;
    pnlRelatedRecipts: TPanel;
    btnRelatedRecipts: TSpeedButton;
    Label15: TLabel;
    txt_RelatedRecipts: TDBText;
    edtRelatedRecipts: TDBEdit;
    qryFormsPO: TStringField;
    pnlAidInfo_PO: TPanel;
    PnlAidInfo: TPanel;
    LblAidInfoNo: TLabel;
    LblAidInfoDate: TLabel;
    edtAidInfoNo: TDBEdit;
    edtAidInfoDate: TDBEdit;
    pnlPO: TPanel;
    lblPO: TLabel;
    edtPO: TDBEdit;
    plblArzType: TppLabel;
    qryFormsAidInfoNo2: TFloatField;
    txtAidInfoNo2: TDBText;
    qryFormsMachineNo: TStringField;
    actExcelComparisonF: TAction;
    popExcel: TPopupMenu;
    Excel1: TMenuItem;
    Excel2: TMenuItem;
    qryForms_AccountNumber: TStringField;
    dbtxt_AccountNumber: TDBText;
    popChangeType: TPopupMenu;
    MnuChangeType: TMenuItem;
    btnChangeType: TBitBtn;
    qryAllFormsID: TLargeintField;
    btnNewFormsCorrelate: TBitBtn;
    actCorrelateFormType: TAction;
    qryFormsArzAmountExchange: TBCDField;
    qryFormsArzTypeIDExchange: TIntegerField;
    qryFormsArzRateExchange: TFloatField;
    pnlArz2: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    edtArzAmountExchange: TDBEdit;
    edtArzRateExchange: TDBEdit;
    cmbArzTypeIDExchange: TDBComboBox;
    BitBtn15: TBitBtn;
    Panel7: TPanel;
    Label16: TLabel;
    dbtxt_CustAccountNumber: TDBText;
    procedure qryFormsAfterInsert(DataSet: TDataSet);
    procedure srcFormsStateChange(Sender: TObject);
    procedure SBtnCustomerID1Click(Sender: TObject);
    procedure SBtnCustomerID2Click(Sender: TObject);
    procedure EdtCustomerID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCustomerID2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtAmountChange(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qryFormsBeforePost(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure SBtnFormNumberClick(Sender: TObject);
    procedure EdtFNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPrintExecute(Sender: TObject);
    procedure ppDBTxtAmountLineGetText(Sender: TObject; var Text: String);
    procedure ppLblAmountGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyDescGetText(Sender: TObject; var Text: String);
    procedure qryFormsAmountChange(Sender: TField);
    procedure qryFormsBeforeDelete(DataSet: TDataSet);
    procedure qryFormsAfterDelete(DataSet: TDataSet);
    procedure qryFormsAfterPost(DataSet: TDataSet);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryFormsCustomerID1Change(Sender: TField);
    procedure qryFormsCustomerID2Change(Sender: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtAidInfoNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAidInfoDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure EdtCustomerID2Exit(Sender: TObject);
    procedure ppLbFormCaptionGetText(Sender: TObject; var Text: String);
    procedure actPrint1Execute(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure ppImage1DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppImage2DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure pplblAidInfoNoGetText(Sender: TObject; var Text: String);
    procedure ppDBMemo2GetMemo(Sender: TObject; aLines: TStrings);
    procedure ppLblFormFoterGetText(Sender: TObject; var Text: String);
    procedure EdtFNumEnter(Sender: TObject);
    procedure qryFormsFormStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFormsBeforeEdit(DataSet: TDataSet);
    procedure qryFormsAfterEdit(DataSet: TDataSet);
    procedure qryFormsAfterScroll(DataSet: TDataSet);
    procedure ppLblState2ZeroDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppLblState2ZeroDrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppLblState2ZeroGetText(Sender: TObject; var Text: String);
    procedure ppLblState2ZeroPrint(Sender: TObject);
    procedure actSearchReprotExecute(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CmbALLSetText(Sender: TField; const Text: String);
    procedure qryFormsBeforeInsert(DataSet: TDataSet);
    procedure actcustomerinterExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure NAllRecordsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actInserNoteExecute(Sender: TObject);
    procedure actRptCofferExecute(Sender: TObject);
    procedure qryFormsFormDateChange(Sender: TField);
    procedure btnCustomerID3Click(Sender: TObject);
    procedure edtCustomerID3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actGetExcelExecute(Sender: TObject);
    procedure qryFormsSellsEmporiumChange(Sender: TField);
    procedure SpeedButton7Click(Sender: TObject);
    procedure EdtAmountEnter(Sender: TObject);
    procedure EdtAmountExit(Sender: TObject);
    procedure EdtAmountKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRelatedReciptsClick(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure qryFormsArzTypeIDChange(Sender: TField);
    procedure qryFormsArzAmountChange(Sender: TField);
    procedure actSmsSendExecute(Sender: TObject);
    procedure qryFormsTopicCodeChange(Sender: TField);
    procedure actViewFileFExecute(Sender: TObject);
    procedure actshowRelatedFExecute(Sender: TObject);
    procedure plblCmbPayTypesGetText(Sender: TObject; var Text: string);
    procedure plblCmbTopicTypesGetText(Sender: TObject; var Text: string);
    procedure actWorkflowHistoryFExecute(Sender: TObject);
    procedure actStateChangeExecute(Sender: TObject);
    procedure mnu4allClick(Sender: TObject);
    procedure qryFormsDefaultDurationChange(Sender: TField);
    procedure actMakeDocumentShowExecute(Sender: TObject);
    procedure actRequestCashExecute(Sender: TObject);
    procedure actCopyFormExecute(Sender: TObject);
    procedure qryFormsPayTypesChange(Sender: TField);
    procedure FormResize(Sender: TObject);
    procedure qryFormsCustomerID3Change(Sender: TField);
    procedure qryAllFormsAfterScroll(DataSet: TDataSet);
    procedure btnCustomerID4Click(Sender: TObject);
    procedure qryFormsCustomerID4Change(Sender: TField);
    procedure edtCustomerID4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure plblArzTypeGetText(Sender: TObject; var Text: string);
    procedure EdtCustomerID1DblClick(Sender: TObject);
    procedure EdtCustomerID2DblClick(Sender: TObject);
    procedure actExcelComparisonFExecute(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure MnuChangeTypeClick(Sender: TObject);
    procedure btnChangeTypeClick(Sender: TObject);
    procedure actCorrelateFormTypeExecute(Sender: TObject);
    procedure qryFormsArzTypeIDExchangeChange(Sender: TField);
    procedure actPcPosFExecute(Sender: TObject);
  private
    { Private declarations }
    formType: Integer;
    FilterCustomerID1, FilterShow: Boolean;
    CustomerID: Integer;
    PrintCount: Integer;
    qryCust1, qryCust2, qryCust3, qryCust4: TADOQuery;
    CashCheckFormID: Integer;
    DataSetInsert, ShowImPortExcelon: Boolean;
    procedure initFormPanel;
    procedure initFormQry;
    function validData: Boolean;
    function ValidAidInfoNo(FormID: Integer): Boolean;
    procedure initCombos;
    function ReMain4post: Boolean;
    function ReMainPerson(NewReMain: Currency = 0): Currency;
    procedure UpdateList;
    procedure ProcHow2DisplayArzTypeID;
    procedure ReMainPersonPaymentCash4Thread(Sender: TField;
      LblReMainPerson: TLabel);
  public
    procedure enter(gParam: Integer; LimitShow: Boolean = True;
      CustID: Integer = 0; qryMaster: TADOQuery = nil;
      qryCashCheckFormID: TADOQuery = nil);
    // procedure ShowForm(FormType: int64);
    procedure initFormCreate(LimitShow: Boolean; CustID: Integer);
    { Public declarations }
  end;

var
  GetOtherMoneyF: TGetOtherMoneyF;

implementation

uses DM, GlobalPro, shamsiDate, searchCode_ADO, SelectCustomer, Math,
  StrUtils, mmessage, searchReports, FormFunctions, mdiMain, filter_ADO,
  FilterClass_ADO, RptCoffer, GetExcel, FaraConsts, ReciptsFunctions,
  Related, WorkflowHistory, WorkflowDm, RequestCash, ViewFileOnServer,
  ExcelComparison, PcPos;

{$R *.dfm}

procedure TGetOtherMoneyF.CmbALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TGetOtherMoneyF.CmbALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TGetOtherMoneyF.initCombos;
var
  How2DisplayArzTypeID: Integer;
begin
  initCombosPayTopic(CmbPayTypes, CmbTopicTypes, qryInit);
  with DMf.qryTmpTmp do
  begin
    How2DisplayArzTypeID := qryInit.FieldByName('How2DisplayArzTypeID')
      .AsInteger;
    if How2DisplayArzTypeID > 0 then
    begin
      Active := False;
      SQL.Text := 'SELECT CurrenciesID, CurrenciesName FROM Currencies';
      Active := True;
      while not eof do
      begin
        CmbArzTypeID.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end;
      edtArzRate.ReadOnly := How2DisplayArzTypeID <> 1;
      EdtAmount.ReadOnly := How2DisplayArzTypeID = 2;
    end;
    Active := False;

  end; // with
end;

procedure TGetOtherMoneyF.initFormQry;
var
  s, sOrderBy: string;
  CorrelateFormType: Integer;
  A: Boolean;
begin
  // formType:=var_glb_gParam;
  with qryInit do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := formType;
    Active := True;

    CorrelateFormType := FieldByName('CorrelateFormType').AsInteger;
    actCorrelateFormType.Visible := FieldByName('CorrelateFormType')
      .AsInteger > 0;

    Active := False;
    Parameters.ParamByName('FormType').Value := formType;
    Active := True;
    actCorrelateFormType.Caption := 'ثبت‏' + FieldByName('FormCaption')
      .AsString;
    btnNewFormsCorrelate.Hint := actCorrelateFormType.Caption;

    Active := False;
    Parameters.ParamByName('FormType').Value := formType;
    Active := True;

    A := (CurAccess and Integer(akChangeState) <> 0);

    actStateChange.Visible := CheckUserlevel(FieldByName('ChangeStateLevelID'),
      qryForms, False) and A;

  end; // with

  initCofferAddField(qryInit, qryForms, pnlSells, pnlSellsEmporium,
    pnlSellsMethod, dblkcbb_SellsEmporium, dblkcbb_SellsMethod);
  initCombos;
  initReportName(qryInit, PopMuPrint, mnu4allClick);

  initCombosArz(qryInit, CmbArzTypeID, cmbArzTypeIDExchange, edtArzRate);

  btnChangeType.Visible := qryInit.FieldByName('HasRecall').AsInteger in [4, 5];
  if btnChangeType.Visible then
  begin
    AddChangeType(qryInit, popChangeType, MnuChangeTypeClick);
  end;

  IF qryInit.FieldByName('Customer1Active').AsInteger = 1 THEN
  begin
    if qryInit.FieldByName('CustomerKind1').AsString = '' then
      Warn('هيچ گروهي براي گروه مشتري 1  مشخص نشده است');
    with qryCustomers1 do
    begin
      // Active := False;
      // SQL.Add(' WHERE (GroupType IN(' +
      // Trim(qryInit.FieldByName('CustomerKind1').AsString) + ')) ' +
      // IfThen(qryInit.FieldByName('UserSecurityCheckActive').AsInteger  in[1,3],
      // ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.id) + ')=1', ''));

      Active := False;
      s := Trim(qryInit.FieldByName('CustomerKind1').AsString);
      if s = EmptyStr then
      begin
        s := '-1';
        // Warn(' نوع مشتري 1 مشخص نشده است', mtInformation);
      end;
      SQL.Add(GetCustomersGroupTypeSQL('CustomerKind1', qryInit, True, False));
      SQL.Add(IfThen(qryInit.FieldByName('UserSecurityCheckActive')
        .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
        ')=1', ''));

    end; // with
    qryCustCreate(qryCust1, '1', GetOtherMoneyF);
  end; // if

  IF qryInit.FieldByName('Customer2Active').AsInteger = 1 THEN
  begin
    with qryCustomers2 do
    begin
      s := Trim(qryInit.FieldByName('CustomerKind2').AsString);
      if s = EmptyStr then
      begin
        s := '-1';
        // Warn(' نوع مشتري 2 مشخص نشده است', mtInformation);
      end;
      Active := False;
      SQL.Add(GetCustomersGroupTypeSQL('CustomerKind2', qryInit, True, False));
      SQL.Add(IfThen(qryInit.FieldByName('UserSecurityCheckActive')
        .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
        ')=1', ''));

      // If qryInit.FieldByName('CustomerKind2').AsString = '' Then
      // Warn('هيچ گروهي براي گروه مشتري 2  مشخص نشده است');

      // Active := False;
      // SQL.Add(' WHERE GroupType IN(' + Trim(qryInit.FieldByName('CustomerKind2')
      // .AsString) + ')')
    end; // with
    qryCustCreate(qryCust2, '2', GetOtherMoneyF);
  end; // if
  // IF qryInit.FieldByName('Customer3Active').AsInteger = 1 THEN
  with qryCustomers3 do
  begin
    s := Trim(qryInit.FieldByName('CustomerKind3').AsString);
    if s = EmptyStr then
    begin
      s := '-1';
      // Warn(' نوع مشتري 3 مشخص نشده است', mtInformation);
    end;
    Active := False;
    SQL.Add(GetCustomersGroupTypeSQL('CustomerKind3', qryInit, True, False));
  end; // with  begin
  qryCustCreate(qryCust3, '3', GetOtherMoneyF);

  // IF qryInit.FieldByName('Customer4Active').AsInteger = 1 THEN
  with qryCustomers4 do
  begin
    s := Trim(qryInit.FieldByName('CustomerKind4').AsString);
    if s = EmptyStr then
    begin
      s := '-1';
      // Warn(' نوع مشتري 4 مشخص نشده است', mtInformation);
    end;
    Active := False;
    SQL.Add(GetCustomersGroupTypeSQL('CustomerKind4', qryInit, True, False));
  end; // with  begin
  qryCustCreate(qryCust4, '4', GetOtherMoneyF);

  initFormPanel;
  FilterCustomerID1 := qryInit.FieldByName('RestartFormNumberOnCust1')
    .AsInteger = 1;
  pnlRelatedRecipts.Visible := SetRelatedReciptTypes(qryInit,
    qryRelatedRecipts);
  FreeLookupUnUse(txt_RelatedRecipts);

  // -------------------------set qryMaster---------------------------//
  sOrderBy := 'ORDER BY FormDate,FormNumber';
  if qryInit.FieldByName('OrderByFields').AsString <> EmptyStr then
    sOrderBy := 'ORDER BY ' + qryInit.FieldByName('OrderByFields').AsString;

  with qryForms do
  begin
    // AfterScroll := nil;
    Active := False;
    SQL.Text := 'SELECT * FROM Forms';
    SQL.Add('WHERE (FormType = :Type)');
    SQL.Add('AND ( FormID = :FormID ) ');
    SQL.Add('AND ( ServerID = :ServerID ) ');
    SQL.Add('AND ( YearID = :YearID ) ');

    SQL.Add('AND (FormNumber BETWEEN :NumberFrom AND :NumberTo)');
    SQL.Add('AND (FormDate BETWEEN :DateFrom AND :DateTo)');

    setChkUsersCustomersGroupsActive(qryForms);

    SQL.Add(sOrderBy);
    Parameters.ParamByName('NumberFrom').Value := -2147483646;
    Parameters.ParamByName('NumberTo').Value := 2147483647;
    Parameters.ParamByName('DateFrom').Value := '';
    Parameters.ParamByName('DateTo').Value := '9999/99/99';

    Parameters.ParamByName('Type').Value := formType;

  end;
  with qryAllForms do
  begin
    AfterScroll := nil;
    Active := False;
    SQL.Text := 'SELECT FormID, ServerID, YearID, CustomerID1, CustomerID2';
    SQL.Add(',CustomerID3,CustomerID4,ParentFormID, ID FROM Forms');
    SQL.Add('WHERE (FormType = :Type)');
    SQL.Add('AND ( YearID = :YearID ) '); // AND ( ServerID = :ServerID )
    SQL.Add(IfThen(FilterCustomerID1, ' AND ( CustomerID1 = :Cust )', ''));
    SQL.Add('AND (FormNumber BETWEEN :NumberFrom AND :NumberTo)');
    SQL.Add('AND (FormDate BETWEEN :DateFrom AND :DateTo)');

    setChkUsersCustomersGroupsActive(qryAllForms);

    SQL.Add(sOrderBy);
    Parameters.ParamByName('NumberFrom').Value := -2147483646;
    Parameters.ParamByName('NumberTo').Value := 2147483647;
    Parameters.ParamByName('DateFrom').Value := '';
    Parameters.ParamByName('DateTo').Value := '9999/99/99';
    if (FilterCustomerID1) then
    begin
      if FilterShow then
        selectCustomerF.GetCustomer(CustomerID,
          qryInit.FieldByName('Customer1Label').AsString,
          qryInit.FieldByName('CustomerKind1').AsString);
      Parameters.ParamByName('Cust').Value := CustomerID;
      EdtCustomerID1.Enabled := False;
      SBtnCustomerID1.Enabled := False;
    end; // if
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    AfterScroll := qryAllFormsAfterScroll;
    Last;
  end;

end;

procedure TGetOtherMoneyF.initFormPanel;
var
  b: Boolean;
begin
  With qryInit do
  begin
    Caption := FieldByName('FormCaption').AsString;
    actRptCoffer.Caption := 'ليست ' + Caption;
    lblTopic0.Caption := FieldByName('FormCaption').AsString;
    lblTopic0.Hint := formType.ToString;

    PnlCustomerID1.Visible := FieldByName('Customer1Active').AsInteger = 1;
    pnlCustomerID2.Visible := FieldByName('Customer2Active').AsInteger = 1;
    pnlCustomerID3.Visible := FieldByName('Customer3Active').AsInteger = 1;
    pnlCustomerID4.Visible := FieldByName('Customer4Active').AsInteger = 1;

    FreeLookupUnUse(txt_CustomerID3);
    FreeLookupUnUse(txt_CustomerID4);

    LblCustomerID1.Caption := 'كد و نام ' +
      Trim(FieldByName('Customer1Label').AsString);
    lblCustomerID2.Caption := 'كد و نام ' +
      Trim(FieldByName('Customer2Lable').AsString);
    lblCustomerID3.Caption := 'كد و نام ' +
      Trim(FieldByName('Customer3Lable').AsString);
    lblCustomerID4.Caption := 'كد و نام ' +
      Trim(FieldByName('Customer4Lable').AsString);

    qryForms.FieldByName('CustomerID1').DisplayLabel :=
      FieldByName('Customer1Label').AsString;
    qryForms.FieldByName('CustomerID2').DisplayLabel :=
      FieldByName('Customer2Lable').AsString;
    qryForms.FieldByName('CustomerID3').DisplayLabel :=
      FieldByName('Customer3Lable').AsString;
    qryForms.FieldByName('CustomerID4').DisplayLabel :=
      FieldByName('Customer4Lable').AsString;

    GrpBoxAccount.Caption := GrpBoxAccount.Caption +
      FieldByName('Relating4Help').AsString;
    GrpBoxNote.Visible := FieldByName('NoteVisible').AsInteger = 1;
    PnlAmount.Visible := FieldByName('ValueVisible').AsInteger = 1;
    b := FieldByName('AccountRelationPosition').AsInteger in [2, 3, 5, 6];
    GrpBoxAccount.Visible := b;
    pnlTopicCode.Visible := b and
      (FieldByName('TopicCodeActive').AsInteger = 1);
    FreeLookupUnUse(txt_TopicCode);

    pnlDetailCode.Visible := b and
      (FieldByName('DetailCodeActive').AsInteger = 1);
    FreeLookupUnUse(txt_DetailCode);

    pnlCTopicCode.Visible := b and
      (FieldByName('CTopicCode1Active').AsInteger = 1);
    FreeLookupUnUse(txt_CTopicCode);

    pnlCTopicCode2.Visible := b and
      (FieldByName('CTopicCode2Active').AsInteger = 1);
    FreeLookupUnUse(txt_CTopicCode2);

    pnlCTopicCode3.Visible := b and
      (FieldByName('CTopicCode3Active').AsInteger = 1);
    FreeLookupUnUse(txt_CTopicCode3);

    PnlBudget.Visible := FieldByName('BudgetCodePosition').AsInteger = 3;
    qryForms.FieldByName('BudgetCode').Required := PnlBudget.Visible;
    qryForms.FieldByName('ProjectID').Required := PnlBudget.Visible;
    FreeLookupUnUse(txt_BudgetName);
    FreeLookupUnUse(txt_ProjectName);

    // LblBudget.Visible:=qryInitBudgetCodePosition.AsInteger=3;
    // EdtBudget.Visible:=LblBudget.Visible;
    PnlAidInfo.Visible := FieldByName('AidInfoActive').AsInteger <> 0;
    LblAidInfoNo.Caption := LblAidInfoNo.Caption +
      FieldByName('AidInfoCaption').AsString;
    LblAidInfoDate.Caption := LblAidInfoDate.Caption +
      FieldByName('AidInfoCaption').AsString;

    lblPO.Caption := opt.POCaption;
    pnlPO.Visible := opt.POActive;
    pnlAidInfo_PO.Visible := PnlAidInfo.Visible or pnlPO.Visible;

    actPrint.Hint := FieldByName('ReportFileName1').AsString + #13#10 +
      FieldByName('ReportFileName2').AsString + #13#10;

    pnlPay_Topic.Visible := FieldByName('Pay_Topic_Active').AsInteger > 0;

    LblPayTypes.Visible := FieldByName('Pay_Topic_Active').AsInteger in [1, 3];
    CmbPayTypes.Visible := LblPayTypes.Visible;
    qryFormsPayTypes.Required := LblPayTypes.Visible;

    LblTopicTypes.Visible := FieldByName('Pay_Topic_Active').AsInteger
      in [2, 3];
    CmbTopicTypes.Visible := LblTopicTypes.Visible;
    qryFormsTopicTypes.Required := LblTopicTypes.Visible;

    b := FieldByName('How2DisplayArzTypeID').AsInteger > 0;
    pnlArz.Visible := b;

    grpManegerNote.Visible := FieldByName('ManegerNoteActive').AsInteger = 1;

  end;

  if pnlPay_Topic.Visible then
  begin
    LblPayTypes.Caption := ReadLookUps(0, 1, 'نوع دريافت/پرداخت');
    LblTopicTypes.Caption := ReadLookUps(0, 2, 'موضوع دريافت/پرداخت');
  end; // if

  EdtFNum.ReadOnly := qryInit.FieldByName('ChangeFormNo_DateActive')
    .AsInteger <> 1;
  EdtFormDate.ReadOnly := EdtFNum.ReadOnly;

  qryForms.FieldByName('CustomerID1').Required := PnlCustomerID1.Visible;
  qryForms.FieldByName('CustomerID2').Required := pnlCustomerID2.Visible;
  qryForms.FieldByName('CustomerID3').Required := pnlCustomerID3.Visible;
  qryForms.FieldByName('CustomerID4').Required := pnlCustomerID4.Visible;

  pnlDefaultDate.Visible := DefaultDateActive(qryInit);

end;

procedure TGetOtherMoneyF.qryFormsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FormType').AsInteger := formType;
  DataSetInsert := True;
  if CashCheckFormID > 0 then
    Self.qryForms.FieldByName('CashCheckFormID').AsInteger := CashCheckFormID;

  GetOtherMoneyF.qryForms.FieldByName('ReciptID').AsInteger := opt.ReciptID;

  GetOtherMoneyF.qryForms.FieldByName('CustomerID2').AsInteger :=
    opt.CustomerID1;
  if opt.PayablePriceActive then
    GetOtherMoneyF.qryForms.FieldByName('Amount').AsCurrency :=
      opt.PayablePrice;
  if PnlAidInfo.Visible then
  begin
    GetOtherMoneyF.qryForms.FieldByName('AidInfoNo').AsString := opt.AidInfoNo;
    GetOtherMoneyF.qryForms.FieldByName('AidInfoDate').AsString :=
      opt.AidInfoDate;
  end;

  if DataSet.State in [dsInsert] then
    GetOtherMoneyF.actStateChange.Caption := 'ثبت پيش نويس';
  FormStateAutoStateChange(qryInit, GetOtherMoneyF.qryForms);

  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('FormID').AsInteger :=
    GetANewid(DataSet, IntToStr(formType), 'Forms', 'FormID', nil, 1);
  if FilterCustomerID1 then
    DataSet.FieldByName('CustomerID1').AsInteger := CustomerID; // 2

  SetDefaultSellsMethodEmporium(qryForms, dblkcbb_SellsEmporium,
    dblkcbb_SellsMethod);
  GetFormNumber(IntToStr(formType), qryInit, qryForms);

  DataSet.FieldByName('FormDate').AsString := var_glb_CurrentDate;
  if DefaultDateActive(qryInit) then
    DataSet.FieldByName('DefaultDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('OperatorID').AsInteger := user.ID;
  // if not PnlPerson.Visible then  DataSet.FieldByName('CustomerID1').AsInteger:=0;

  if Self.Active then
  begin
    if EdtFNum.ReadOnly then
      EdtCustomerID1.SetFocus
    else
      EdtFNum.SetFocus;
  end;

  PostMessage(Application.Handle, WM_USER + 50, 122, 0);
end;

procedure TGetOtherMoneyF.srcFormsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryForms.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  actPrint.Enabled := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', IntToStr(formType));
  LblReMainPerson.Visible := False;
  lblRemainPerson2.Visible := False;
  TxtCustomerID1.Top := 9;
end;

procedure TGetOtherMoneyF.SBtnCustomerID1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,AccountNumber FROM Vu_CustomersGroups '
    + ' WHERE GroupType IN(' + Trim(qryInit.FieldByName('CustomerKind1')
    .AsString) + ')' + IfThen(qryInit.FieldByName('UserSecurityCheckActive')
    .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) +
    ')=1', '');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    Trim(qryInit.FieldByName('Customer1Label').AsString) + 'ها', txt,
    ['کد', 'نام ' + Trim(qryInit.FieldByName('Customer1Label').AsString) + '',
    'شماره حساب'], Results, [50, 150, 100], alLeft);
  if b then
  begin
    // if not (qryForms.state in dsEditModes) then   qryForms.edit;
    qryForms['CustomerID1'] := Results[0];
  end; // if
end;

procedure TGetOtherMoneyF.SBtnCustomerID2Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 4] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,tel,Address,AccountNumber ' +
    ' FROM Vu_CustomersGroups ' + ' WHERE GroupType IN(' +
    Trim(qryInit.FieldByName('CustomerKind2').AsString) + ')' +
    IfThen(qryInit.FieldByName('UserSecurityCheckActive').AsInteger  in[1,3],
    ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.ID) + ')=1', '');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    Trim(qryInit.FieldByName('Customer2Lable').AsString) + 'ها', txt,
    ['کد', 'نام ' + Trim(qryInit.FieldByName('Customer2Lable').AsString) + '',
    'تلفن', 'آدرس', 'شماره حساب'], Results, [50, 150, 80, 250, 80], alLeft);
  if b then
  begin
    // if not (qryForms.state in dsEditModes) then   qryForms.edit;
    qryForms['CustomerID2'] := Results[0];
  end; // if
end;

procedure TGetOtherMoneyF.EdtCustomerID1DblClick(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      ReMainPersonPaymentCash4Thread(qryFormsCustomerID1, LblReMainPerson);
    end);
  T.FreeOnTerminate := True;
  T.Start;

end;

procedure TGetOtherMoneyF.EdtCustomerID1KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnCustomerID1.Click;
end;

procedure TGetOtherMoneyF.EdtCustomerID2KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnCustomerID2.Click;
end;

procedure TGetOtherMoneyF.EdtAmountChange(Sender: TObject);
begin
  inherited;
  if EdtAmount.Text <> '' then
    LblAmount.Caption := num2alphabet(StrToInt64(RemoveComma(EdtAmount.Text))) +
      Currency_String;
end;

procedure TGetOtherMoneyF.EdtAmountEnter(Sender: TObject);
begin
  inherited;
  aBigPanel.Visible := True;
  showBigNum(qryFormsAmount.AsCurrency, aBigPanel, horoofPanel);
end;

procedure TGetOtherMoneyF.EdtAmountExit(Sender: TObject);
begin
  inherited;
  if aBigPanel.Visible then
    aBigPanel.Visible := False
end;

procedure TGetOtherMoneyF.EdtAmountKeyUp(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  showBigNum(StrToCurrDef(RemoveComma(EdtAmount.Text), 0), aBigPanel,
    horoofPanel);
end;

procedure TGetOtherMoneyF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryForms, 'TopicCode')
end;

procedure TGetOtherMoneyF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryForms, 'DetailCode', 'TopicCode')
end;

procedure TGetOtherMoneyF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryForms, 'CTopicCode', 'TopicCode')
end;

function TGetOtherMoneyF.validData: Boolean;
var
  s: String;
begin
  Result := False;
  if (PnlCustomerID1.Visible) and (qryForms_CustomerID1.AsString = '') and
    (qryFormsCustomerID1.AsInteger <> 0) Then
  begin
    Warn('كد ' + qryInit.FieldByName('Customer1Label').AsString +
      ' وارد شده نامعتبر است.');
    EdtCustomerID1.SetFocus;
    Exit;
  end; // if

  if (pnlCustomerID2.Visible) and (qryForms_CustomerID2.AsString = '') and
    (qryForms.FieldByName('CustomerID2').AsInteger <> 0) Then
  begin
    Warn('كد ' + qryInit.FieldByName('Customer2Lable').AsString +
      ' وارد شده نامعتبر است.');
    EdtCustomerID2.SetFocus;
    Exit;
  end; // if

  if (pnlCustomerID3.Visible) and (qryForms_CustomerID3.AsString = '') and
    (qryForms.FieldByName('CustomerID3').AsInteger <> 0) Then
  begin
    Warn('كد ' + qryInit.FieldByName('Customer3Lable').AsString +
      ' وارد شده نامعتبر است.');
    edtCustomerID3.SetFocus;
    Exit;
  end; // if

  if (pnlCustomerID4.Visible) and (qryForms_CustomerID4.AsString = '') and
    (qryForms.FieldByName('CustomerID4').AsInteger <> 0) Then
  begin
    Warn('كد ' + qryInit.FieldByName('Customer4Lable').AsString +
      ' وارد شده نامعتبر است.');
    edtCustomerID4.SetFocus;
    Exit;
  end; // if

  s := qryForms.FieldByName('FormDate').AsString;
  if not validate_date(False, APPBank.StartYear, APPBank.endYear, 'تاريخ فرم', s)
  then
  begin
    EdtFormDate.SetFocus;
    Exit;
  end; // if
  if (qryFormsAmount.AsCurrency <= 0) and (PnlAmount.Visible) Then
  begin
    Warn('مبلغ وارد شده نامعتبر است.');
    EdtAmount.SetFocus;
    Exit;
  end; // if
  if (PnlBudget.Visible) and (qryForms.FieldByName('ProjectID').AsString <> '0')
  then
  Begin
    With qryValidData do
    begin
      Active := False;
      SQL.Text :=
        'SELECT Projects.ProjectID,Projects.ProjectCaption FROM ProjectsRange INNER JOIN ';
      SQL.Add('Projects ON ProjectsRange.ProjectID = Projects.ProjectID ');
      SQL.Add('WHERE(ProjectsRange.BudgetTopicID=' + qryForms.FieldByName
        ('BudgetCode').AsString);
      SQL.Add(')AND(Projects.ProjectID=' + qryForms.FieldByName('ProjectID')
        .AsString + ')');
      Active := True;
      if IsEmpty then
      begin
        Warn('كد طرح وارد شده نامعتبر است.');
        DBEdit5.SetFocus;
        Exit;
      end; // if
    end; // With
  end; // if
  Result := True;
end;

procedure TGetOtherMoneyF.qryFormsBeforePost(DataSet: TDataSet);
var
  DefaultDate: String;
begin
  inherited;
  Chk_CustomerActive(qryForms_Customer1Active, qryFormsCustomerID1);
  Chk_CustomerActive(qryForms_Customer2Active, qryFormsCustomerID2);

  if DataSet.FindField('_TopicCode') <> nil then
    DataSet.FieldByName('_TopicCode').Required :=
      (Trim(DataSet.FieldByName('TopicCode').AsString) <> '0') and
      pnlTopicCode.Visible;

  if not CheckDay4Edit(qryInit, qryForms, 1) then
    Abort;

  // if qryInit.FieldByName('NextFormType').AsInteger >= 1 then
  // begin
  // DataSet.FieldByName('AidFormType').AsInteger :=
  // DataSet.FieldByName('FormType').AsInteger;
  //
  // DataSet.FieldByName('AidInfoNo').AsString :=
  // DataSet.FieldByName('FormNumber').AsInteger;
  // DataSet.FieldByName('AidInfoDate').AsString :=
  // DataSet.FieldByName('FormDate').AsString;
  //
  // end;

  DataSet.FieldByName('ModifyDate').AsDateTime := now;
  if (DataSet.FieldByName('FormNumber').AsInteger <
    qryInit.FieldByName('SerialNoFrom').AsInteger) or
    (DataSet.FieldByName('FormNumber').AsInteger > qryInit.FieldByName
    ('SerialNoTo').AsInteger) then
  begin
    Warn('شماره فرم وارد شده خارج از محدوده تعريف شده است!.‏');
    EdtFNum.SetFocus;
    Abort;
  end;
  // qryForms.FieldByName('CustomerID2').Required:=qryForms.FieldByName('CustomerID2').AsInteger<>0;
  if DataSet.FieldByName('ProjectID').IsNull then
    DataSet.FieldByName('ProjectID').AsInteger := 0;
  if DataSet.FieldByName('BudgetCode').IsNull then
    DataSet.FieldByName('BudgetCode').AsInteger := 0;
  if DataSet.FieldByName('AidInfoNo').IsNull then
    DataSet.FieldByName('AidInfoNo').AsString := '0';
  if DataSet.FieldByName('AidInfoDate').IsNull then
    DataSet.FieldByName('AidInfoDate').AsString := APPBank.StartYear;
  if not CheckRequiredFields(qryForms) then
    Abort;
  if not validData then
    Abort;

  DefaultDate := DataSet.FieldByName('DefaultDate').AsString;
  if not validate_date(True, '', '', 'تاريخ جانبي', DefaultDate) then
    Abort;
  try
    DataSet.FieldByName('DefaultDate').AsString := '';
    if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear)
    then
      Abort;
  finally
    DataSet.FieldByName('DefaultDate').AsString := DefaultDate;
  end;

  // if not validData then Abort;
  if not ValidAidInfoNo(qryFormsFormID.AsInteger) then
    Abort;
  if not ValidFormNumber(qryForms, qryInit) then
    Abort;
  // TrimStringFields(qryForms); CurrToStr()
  if not ReMain4post then
    Abort;

  TrimStringFields(DataSet);

  if not ChkCustomerState(qryForms) then
    Abort;

end;

function TGetOtherMoneyF.ReMain4post: Boolean;
var
  c: Currency;
begin
  Result := True;
  if qryInit.FieldByName('CheckEntity').AsInteger = 0 then
    Exit;
  c := qryForms.FieldByName('Amount').AsCurrency;
  if (qryInit.FieldByName('BedBes').AsInteger = 0) then
    c := c * -1;
  if ReMainPerson(c) < 0 then
  begin
    Warn('موجودي كافي نيست');
    Result := False;
  end;

end;

procedure TGetOtherMoneyF.SBtnFormNumberClick(Sender: TObject);
var
  Results: array [0 .. 10] of String;
  txt, AddFilter: String;
  b: Boolean;
begin
  inherited;
  AddFilter := IfThen(FilterCustomerID1, ' and (CustomerID1=' +
    IntToStr(CustomerID) + ')', '');
  txt := 'SELECT FormID,ServerID,YearID,FormNumber, FormDate, CustomerID2, CustName+CustomerName2 as CustName,ReagentName, Amount '
    + IfThen(PnlAidInfo.Visible, ' ,AidInfoNo,AidInfoDate ', '') +
    'FROM  FormsCustomer WHERE (YearID =' + IntToStr(APPBank.Year) +
    ')AND ( FormType=' + IntToStr(formType) + ')' + AddFilter;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' فرمها  ', txt,
    ['', '', '', 'شماره فرم', 'تاريخ فرم',
    'كد ' + qryInit.FieldByName('Customer2Lable').AsString,
    'نام ' + qryInit.FieldByName('Customer2Lable').AsString, 'کد کاردکس',
    'مبلغ', IfThen(PnlAidInfo.Visible, LblAidInfoNo.Caption, ''),
    IfThen(PnlAidInfo.Visible, LblAidInfoDate.Caption, '')], Results,
    [0, 0, 0, 100, 50, 100, 100, 50, 100, IfThen(PnlAidInfo.Visible, 80, 0),
    IfThen(PnlAidInfo.Visible, 80, 0)], alLeft);
  if b then
    qryAllForms.locate('FormID;ServerID;YearID',
      VarArrayOf([Results[0], Results[1], Results[2]]), []);
end;

procedure TGetOtherMoneyF.EdtFNumKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SBtnFormNumber.Click;
end;

procedure TGetOtherMoneyF.actSearchExecute(Sender: TObject);
begin
  inherited;
  SBtnFormNumber.Click;
end;

procedure TGetOtherMoneyF.actPrintExecute(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  footer_ := Trim(qryInit.FieldByName('FooterSigns').AsString);
  PopMuPrint.Items[1].Enabled := qryInit.FieldByName('ReportFileName2')
    .AsString <> '';
  // if qryInit.FieldByName('ReportFileName2').AsString<>'' then
  PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
  // else begin initReport(ppReport1,ppPageStyle1, ppRegion1, ppRecFooterLine,footer_);
  // ppReport1.PrinterSetup.Copies:=PrintCount;
  // try
  // qryForms.DisableControls;
  // if qryInit.FieldByName('ReportFileName1').AsString<>'' then begin
  // PopMuPrint.Items[0].Click;
  // Exit
  // end else ppRept1.Pint;
  // finally
  // if (qryinit.FieldByName('AutoStateChange').AsInteger=1)and(qryForms.FieldByName('FormState').Value=0)  then begin
  // if not(qryForms.State in dseditmodes ) then qryForms.Edit;
  // qryForms.FieldByName('FormState').Value:=1;
  // qryForms.Post;
  // end;//if
  // qryForms.EnableControls;
  // end;//try
  // end;//else
end;

procedure TGetOtherMoneyF.actPrint1Execute(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  if not CheckUserlevel(qryInit.FieldByName('PrintLevelID'), qryForms) then
    Abort;
  footer_ := Trim(qryInit.FieldByName('FooterSigns').AsString);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath
      (qryInit.FieldByName('ReportFileName1').AsString);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + qryInit.FieldByName('ReportFileName1').AsString +
          ' نظر يافت نشد.!‏', mtInformation);
      // DeviceType:='Printer';
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      if (qryInit.FieldByName('PrintAfterPost').AsInteger = 1) then
        DeviceType := 'Printer';
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
      if (qryInit.FieldByName('AutoStateChange').AsInteger = 1) and
        (qryForms.FieldByName('FormState').Value = 0) then
      begin
        if not(qryForms.State in dsEditModes) then
          qryForms.Edit;
        qryForms.FieldByName('FormState').Value := 1;
        qryForms.Post;
      end; // if
    end; // try
  end; // with
end;

procedure TGetOtherMoneyF.actPrint2Execute(Sender: TObject);
var
  footer_: String;
begin
  inherited;
  if not CheckUserlevel(qryInit.FieldByName('PrintLevelID'), qryForms) then
    Abort;
  footer_ := Trim(qryInit.FieldByName('FooterSigns').AsString);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath
      (qryInit.FieldByName('ReportFileName2').AsString);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + qryInit.FieldByName('ReportFileName2').AsString +
          ' نظر يافت نشد.!‏', mtInformation);
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      if (qryInit.FieldByName('PrintAfterPost').AsInteger = 1) then
        DeviceType := 'Printer';
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
      if (qryInit.FieldByName('AutoStateChange').AsInteger = 1) and
        (qryForms.FieldByName('FormState').Value = 0) then
      begin
        if not(qryForms.State in dsEditModes) then
          qryForms.Edit;
        qryForms.FieldByName('FormState').Value := 1;
        qryForms.Post;
      end; // if
    end; // try
  end; // with
end;

procedure TGetOtherMoneyF.ppDBTxtAmountLineGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := '/' + Text
end;

procedure TGetOtherMoneyF.ppLblAmountGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := LblAmount.Caption
end;

procedure TGetOtherMoneyF.ppLblCompanyNameGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
  // Text:=ReadBankConfig('CompanyName','شركت طرح و پردازش فرارايانه')
end;

procedure TGetOtherMoneyF.ppLblCompanyDescGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('CompanyDesc', 'سهامي خاص')
end;

procedure TGetOtherMoneyF.qryFormsAmountChange(Sender: TField);
begin
  inherited;
  if qryFormsAmount.AsString <> '' then
    LblAmount.Caption :=
      num2alphabet(StrToInt64(RemoveComma(qryFormsAmount.AsString))) +
      Currency_String;
end;

procedure TGetOtherMoneyF.qryFormsArzAmountChange(Sender: TField);
var
  r: Currency;
begin
  inherited;
  r := RoundTo(qryForms.FieldByName('ArzRate').AsFloat *
    (qryForms.FieldByName('ArzAmount').AsFloat), 0);
  if qryForms.FieldByName('Amount').AsCurrency <> r then
    qryForms.FieldByName('Amount').AsCurrency := r;

end;

procedure TGetOtherMoneyF.qryFormsArzTypeIDChange(Sender: TField);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT TOP 1 EqualityWithMainUnit FROM CurrenciesItems';
    SQL.Add('WHERE (CurrenciesID = :ID ) AND (CurrenciesDate <= :Date )');
    SQL.Add('ORDER BY CurrenciesDate DESC, CurrenciesTime DESC');
    Parameters.ParamByName('ID').Value := Sender.AsInteger;
    Parameters.ParamByName('Date').Value := qryFormsFormDate.AsString;
    Active := True;
    qryForms.FieldByName('ArzRate').AsFloat := Fields[0].AsFloat;
    Active := False;
  end;
end;

procedure TGetOtherMoneyF.qryFormsArzTypeIDExchangeChange(Sender: TField);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT TOP 1 EqualityWithMainUnit FROM CurrenciesItems';
    SQL.Add('WHERE (CurrenciesID = :ID ) AND (CurrenciesDate <= :Date )');
    SQL.Add('ORDER BY CurrenciesDate DESC, CurrenciesTime DESC');
    Parameters.ParamByName('ID').Value := Sender.AsInteger;
    Parameters.ParamByName('Date').Value := qryFormsFormDate.AsString;
    Active := True;
    if Sender.FieldName = 'ArzTypeID' then
      qryForms.FieldByName('ArzRate').AsFloat := Fields[0].AsFloat
    else
      qryForms.FieldByName('ArzRateExchange').AsFloat := Fields[0].AsFloat;

    Active := False;
  end;
end;

function TGetOtherMoneyF.ValidAidInfoNo(FormID: Integer): Boolean;
begin
  // Result := False;
  if (PnlAidInfo.Visible) and (qryForms.FieldByName('AidInfoNo').AsString <>
    '0') and (qryForms.FieldByName('AidInfoNo').AsString <> '') then
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(*) FROM Forms WHERE (AidInfoNo=''' +
        qryForms.FieldByName('AidInfoNo').AsString + ''')AND (FormID <> ' +
        IntToStr(FormID) + ')';
      Active := True;
      if (Fields[0].AsInteger <> 0) then
      begin
        Warn(LblAidInfoNo.Caption + ' وارد شده تكراري مي‌باشد.', mtInformation);
        edtAidInfoNo.SetFocus;
      end; // if
      Active := False;
    end; // with
  Result := True;
end;

procedure TGetOtherMoneyF.qryFormsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckDay4Edit(qryInit, qryForms, 1) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryInit.FieldByName('DeleteLevelID'), qryForms) then
    Abort;
  if qryForms.FieldByName('FormState').AsInteger > 0 then
  begin
    Warn('فقط ' + qryInit.FieldByName('FormCaption').AsString +
      'ي كه نوع اطلاعات آن موقت است قابل حذف است‏', mtInformation);
    Abort;
  end;
  WorkFlowBeforDelete(qryForms);
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TGetOtherMoneyF.qryAllFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    qryForms.DisableControls;
    // // ------------------------------ ADD NEW -------------------
    IF qryInit.FieldByName('Customer1Active').AsInteger = 1 THEN
      qryCustActive(qryCustomers1, DataSet.FieldByName('CustomerID1')
        .AsInteger);

    IF qryInit.FieldByName('Customer2Active').AsInteger = 1 THEN
      qryCustActive(qryCustomers2, DataSet.FieldByName('CustomerID2')
        .AsInteger);

    IF qryInit.FieldByName('Customer3Active').AsInteger = 1 THEN
      qryCustActive(qryCustomers3, DataSet.FieldByName('CustomerID3')
        .AsInteger);

    IF qryInit.FieldByName('Customer4Active').AsInteger = 1 THEN
      qryCustActive(qryCustomers4, DataSet.FieldByName('CustomerID4')
        .AsInteger);

    //
    // // ------------------------------ ADD NEW -------------------

    with qryForms do
    begin
      Active := False;
      Parameters.ParamByName('FormID').Value := qryAllFormsFormID.AsInteger;
      Parameters.ParamByName('ServerID').Value := qryAllFormsServerID.AsInteger;
      Parameters.ParamByName('YearID').Value := qryAllFormsYearID.AsInteger;
      Active := True;
    end;
  finally
    qryForms.EnableControls;
  end;
end;

procedure TGetOtherMoneyF.qryFormsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  WorkFlowAfterDelete(qryForms);
  qryAllForms.Delete;
  BigMessage('فرم حذف شد.', 1);
end;

procedure TGetOtherMoneyF.qryFormsAfterPost(DataSet: TDataSet);
var
  FormID, YearID, ServerID: Integer;
begin
  inherited;
  // if get_response('تغييرات ذخيره شوند؟')<>mrYes then abort;
  BigMessage('ثبت شد.', 1);
  if (qryInit.FieldByName('PrintAfterPost').AsInteger = 1) then
    actPrint1.Execute;
  WorkFlowSave(qryForms, 1, qryFormsFormID, formType);
  if qryInit.FieldByName('WorkflowID').AsInteger > 0 then
    WorkflowDmF.RunSomeWorkflow(qryInit.FieldByName('WorkflowID').AsInteger,
      qryForms, ppReport1, qryInit.FieldByName('ReportFileName1').AsString,
      qryForms.FieldByName('FormNumber').AsString);

  if DataSetInsert then
    actSmsSend.Execute;
  DataSetInsert := False;

  FormID := qryFormsFormID.AsInteger;
  ServerID := qryFormsServerID.AsInteger;
  YearID := qryFormsYearID.AsInteger;

  try
    qryForms.DisableControls;
    qryAllForms.AfterScroll := nil;
    // qryAllForms.BeforeScroll := nil;
    qryAllForms.Requery();
  finally
    qryAllForms.AfterScroll := qryAllFormsAfterScroll;
    // qryAllForms.BeforeScroll := qryAllFormsBeforeScroll;
    qryAllForms.locate('FormID;YearID;ServerID',
      VarArrayOf([FormID, YearID, ServerID]), []);
    qryForms.EnableControls;
  end;

end;

procedure TGetOtherMoneyF.initFormCreate(LimitShow: Boolean; CustID: Integer);
begin
  ShowImPortExcelon := False;
  DataSetDelete1.Visible := not opt.WorkFlowActive;
  aBigPanel.Visible := opt.showBig;
  FilterShow := LimitShow;
  CustomerID := CustID;
  initFormQry;
  qryForms.Last;
  PrintCount := 1;
  If qryInit.FieldByName('PrintCount').AsInteger > 1 then
    PrintCount := qryInit.FieldByName('PrintCount').AsInteger;

end;

procedure TGetOtherMoneyF.enter(gParam: Integer; LimitShow: Boolean = True;
CustID: Integer = 0; qryMaster: TADOQuery = nil;
qryCashCheckFormID: TADOQuery = nil);
var
  FormID, ServerID, YearID: Integer;
begin
  GetOtherMoneyF := TGetOtherMoneyF.Create(Application);
  if qryCashCheckFormID <> nil then
  begin
    GetOtherMoneyF.CashCheckFormID := qryCashCheckFormID.FieldByName('FormID')
      .AsInteger;
    opt.CustomerID1 := qryCashCheckFormID.FieldByName('CustomerID1').AsInteger;
  end;
  with GetOtherMoneyF do
    try
      formType := gParam;
      FilterShow := LimitShow;
      CustomerID := CustID;
      initFormQry;
      If LimitShow Then
        qryAllForms.Last
      else if qryMaster <> nil then
      begin
        if qryMaster.FindField('FormID') <> nil then
          FormID := qryMaster.FieldByName('FormID').AsInteger
        else
          FormID := qryMaster.FieldByName('ReciptID').AsInteger;

        ServerID := qryMaster.FieldByName('ServerID').AsInteger;
        YearID := qryMaster.FieldByName('YearID').AsInteger;

        BrowseAllForms4QryCoffer(GetOtherMoneyF.qryAllForms, FormID,
          ServerID, YearID);
        if not GetOtherMoneyF.qryAllForms.locate('FormID;ServerID;YearID',
          VarArrayOf([FormID, ServerID, YearID]), []) then
          GetOtherMoneyF.qryAllForms.Insert;

      end;

      if (qryCashCheckFormID <> nil) and
        (qryCashCheckFormID.FieldByName('FormID').AsInteger > 0) then
      begin
        if qryMaster.IsEmpty then
        begin
          GetOtherMoneyF.qryForms.Insert;
        end
        else if not GetOtherMoneyF.qryAllForms.locate('FormID;ServerID;YearID',
          VarArrayOf([qryMaster.FieldByName('FormID').AsInteger,
          qryMaster.FieldByName('ServerID').AsInteger,
          qryMaster.FieldByName('YearID').AsInteger]), []) then
          Warn('فرم يافت نشد.');

      end;
      ShowModal;
    finally
      Free;
    end; // try
end;

procedure TGetOtherMoneyF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton4.Click;
end;

procedure TGetOtherMoneyF.DBEdit7KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click;
end;

procedure TGetOtherMoneyF.DBEdit6KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

procedure TGetOtherMoneyF.ReMainPersonPaymentCash4Thread(Sender: TField;
LblReMainPerson: TLabel);
begin
  LblReMainPerson.Caption := 'در حال بررسی';
  LblReMainPerson.Caption := 'مانده=' +
    CurrToStrF(ReMainPersonPaymentCash((Sender as TField).Value,
    qryForms.FieldByName('FormDate').AsString, [1, 1, 2, 10]), ffCurrency, 0);
end;

procedure TGetOtherMoneyF.qryFormsCustomerID1Change(Sender: TField);
var
  // c: Currency;
  T: TThread;
begin
  inherited;
  IF qryInit.FieldByName('Customer1Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers1, Sender.AsInteger);

  // for  Change   PersonID
  qryFormsFormType.AsInteger := qryFormsFormType.AsInteger;
  // for  Change   PersonID

  // c := ReMainPersonPaymentCash(qryFormsCustomerID1.AsInteger,
  // qryForms.FieldByName('FormDate').AsString, [1, 1, 2, 10]);
  // LblReMainPerson.Caption := 'مانده=' + CurrToStrF(c, ffCurrency, 0);
  if not ShowImPortExcelon then
  begin

    T := TThread.CreateAnonymousThread(
      procedure()
      begin
        ReMainPersonPaymentCash4Thread(Sender, LblReMainPerson);
      end);

    T.FreeOnTerminate := True;

    T.Start;
  end;

  TxtCustomerID1.Top := 3;
  LblReMainPerson.Visible := True;

  ProcHow2DisplayArzTypeID;
  if (qryInit.FieldByName('How2DisplayArzTypeID').AsInteger > 0) or
    (qryForms_AccountKind.AsInteger > 0) then
    qryForms.FieldByName('ArzTypeID').AsInteger :=
      qryForms_AccountKind.AsInteger;

  if qryInit.FieldByName('BudgetRecalKind').AsInteger <> 1 Then
    Exit;
  if qryForms.FieldByName('BudgetCode').IsNull then
    qryForms.FieldByName('BudgetCode').Value :=
      qryForms.FieldByName('_BudgetCode1').Value;
  if qryForms.FieldByName('ProjectID').IsNull then
    qryForms.FieldByName('ProjectID').Value :=
      qryForms.FieldByName('_ProjectID1').Value;

end;

procedure TGetOtherMoneyF.qryFormsCustomerID2Change(Sender: TField);
var
  // c: Currency;
  T: TThread;
begin
  inherited;
  IF qryInit.FieldByName('Customer2Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers2, Sender.AsInteger);

  // for  Change   PersonID
  qryFormsFormType.AsInteger := qryFormsFormType.AsInteger;
  // for  Change   PersonID

  EdtCustomerName2.Visible := qryForms.FieldByName('CustomerID2').AsInteger = 0;
  // EdtCustomerName2.TabStop:=EdtCustomerName2.Visible;
  if TxtCustomerID2.Visible then
  begin
    // c := ReMainPersonPaymentCash(qryFormsCustomerID2.AsInteger,
    // qryForms.FieldByName('FormDate').AsString, [1, 1, 2, 10]);
    // lblRemainPerson2.Caption := 'مانده=' + CurrToStrF(c, ffCurrency, 0);
    TxtCustomerID2.Top := 3;
    lblRemainPerson2.Visible := True;

    if not ShowImPortExcelon then
    begin
      T := TThread.CreateAnonymousThread(
        procedure()
        begin
          ReMainPersonPaymentCash4Thread(Sender, lblRemainPerson2);
        end);
      T.FreeOnTerminate := True;
      T.Start;
    end;

  end;

  if qryInit.FieldByName('BudgetRecalKind').AsInteger <> 2 Then
    Exit;
  if qryForms.FieldByName('BudgetCode').IsNull then
    qryForms.FieldByName('BudgetCode').Value :=
      qryForms.FieldByName('_BudgetCode2').Value;
  if qryForms.FieldByName('ProjectID').IsNull then
    qryForms.FieldByName('ProjectID').Value :=
      qryForms.FieldByName('_ProjectID2').Value;
end;

procedure TGetOtherMoneyF.qryFormsCustomerID3Change(Sender: TField);
begin
  inherited;
  IF qryInit.FieldByName('Customer3Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers3, Sender.AsInteger);

  // for  Change   PersonID
  qryFormsFormType.AsInteger := qryFormsFormType.AsInteger;
  // for  Change   PersonID

end;

procedure TGetOtherMoneyF.qryFormsCustomerID4Change(Sender: TField);
begin
  inherited;
  IF qryInit.FieldByName('Customer4Active').AsInteger = 1 THEN
    qryCustActive(qryCustomers4, Sender.AsInteger);

  // for  Change   PersonID
  qryFormsFormType.AsInteger := qryFormsFormType.AsInteger;
  // for  Change   PersonID

end;

procedure TGetOtherMoneyF.qryFormsDefaultDurationChange(Sender: TField);
begin
  inherited;
  qryFormsDefaultDate.AsString := DefaultDateCalc(qryFormsDefaultDuration,
    qryFormsFormDate)
end;

procedure TGetOtherMoneyF.btnRelatedReciptsClick(Sender: TObject);
begin
  inherited;
  SBtnRelatedReciptTypes(qryRelatedRecipts.SQL.Text, qryForms)
end;

procedure TGetOtherMoneyF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonBudgetCode(qryForms, 'BudgetCode')
end;

procedure TGetOtherMoneyF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonProjectsCode(qryForms, 'ProjectID', 'BudgetCode')
end;

procedure TGetOtherMoneyF.edtAidInfoNoKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton2.Click
end;

procedure TGetOtherMoneyF.edtAidInfoDateKeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SpeedButton1.Click
end;

procedure TGetOtherMoneyF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryForms, 'CTopicCode2', 'CTopicCode', True,
    'TopicCode')
end;

procedure TGetOtherMoneyF.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryForms, 'CTopicCode3', 'CTopicCode', True,
    'TopicCode')
end;

procedure TGetOtherMoneyF.btnCustomerID4Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,tel,Address ' +
    ' FROM Vu_CustomersGroups  ' + ' WHERE GroupType IN(' +
    Trim(qryInit.FieldByName('CustomerKind4').AsString) + ')';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    Trim(qryInit.FieldByName('Customer4Lable').AsString) + 'ها', txt,
    ['کد', 'نام ' + Trim(qryInit.FieldByName('Customer4Lable').AsString) + '',
    'تلفن', 'آدرس'], Results, [50, 150, 80, 250], alLeft);
  if b then
  begin
    qryForms['CustomerID4'] := Results[0];
  end; // if

end;

procedure TGetOtherMoneyF.btnPrintClick(Sender: TObject);
begin
  inherited;
  popExcel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGetOtherMoneyF.actExcelComparisonFExecute(Sender: TObject);
begin
  inherited;
  try
    ShowImPortExcelon := True;
    qryForms.AfterPost := nil;
    // qryForms.AfterScroll := nil;
    qryForms.DisableControls;
    ExcelComparisonF.ShowImPortExcel(qryForms);
  finally
    ShowImPortExcelon := False;
    FreeReservedCodes(DMf.adcBSell, '', '', IntToStr(formType));
    qryForms.EnableControls;
    qryForms.AfterPost := qryFormsAfterPost;
    qryForms.AfterScroll := qryFormsAfterScroll;
  end;

end;

procedure TGetOtherMoneyF.actExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TGetOtherMoneyF.EdtCustomerID2DblClick(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      ReMainPersonPaymentCash4Thread(qryFormsCustomerID2, lblRemainPerson2);
    end);
  T.FreeOnTerminate := True;
  T.Start;

end;

procedure TGetOtherMoneyF.EdtCustomerID2Exit(Sender: TObject);
begin
  inherited;
  if Trim(EdtCustomerID2.Text) <> '0' then
    PnlAmount.SetFocus;
end;

procedure TGetOtherMoneyF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := miladi2Shamsi(now);
end;

procedure TGetOtherMoneyF.ppLbFormCaptionGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TGetOtherMoneyF.ppImage1DrawCommandCreate(Sender,
  aDrawCommand: TObject);
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

procedure TGetOtherMoneyF.ppImage2DrawCommandCreate(Sender,
  aDrawCommand: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath('Logo2.bmp');
  if (FileExists(s)) then
  begin
    (Sender as TppImage).Picture.LoadFromFile(s);
  end;
end;

procedure TGetOtherMoneyF.pplblAidInfoNoGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := Text + LblAidInfoNo.Caption;
end;

procedure TGetOtherMoneyF.plblCmbPayTypesGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  Text := CmbPayTypes.Text
end;

procedure TGetOtherMoneyF.plblCmbTopicTypesGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  Text := CmbTopicTypes.Text
end;

procedure TGetOtherMoneyF.ppDBMemo2GetMemo(Sender: TObject; aLines: TStrings);
begin
  inherited;
  if pnlPay_Topic.Visible then
    aLines.Text := LblTopicTypes.Caption + ' : ' + CmbTopicTypes.Text;
  aLines.Text := aLines.Text + #1310 + qryForms.FieldByName('FomNote').AsString;
end;

procedure TGetOtherMoneyF.ppLblFormFoterGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  Text := qryInit.FieldByName('FormDescription').AsString
end;

procedure TGetOtherMoneyF.EdtFNumEnter(Sender: TObject);
begin
  inherited;
  if (Sender as TDBEdit).ReadOnly then
    Warn('شما مجاز به ويرايش  شماره و تاريخ نمي باشيد');

end;

procedure TGetOtherMoneyF.qryFormsFormStateGetText(Sender: TField;
var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetFormState(Sender.AsInteger)
end;

procedure TGetOtherMoneyF.qryFormsPayTypesChange(Sender: TField);
begin
  inherited;
  IF qryInit.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 2 then
  begin
    FreeReservedCodes(DMf.adcBSell, '', 'FormNumber', IntToStr(formType));
    GetFormNumber(IntToStr(formType), qryInit, qryForms)
  end;
end;

procedure TGetOtherMoneyF.qryFormsBeforeEdit(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  if ChkFlowForms(qryForms) then
    Abort;
  if not CheckDay4Edit(qryInit, qryForms, 1) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryInit.FieldByName('EditLevelID'), qryForms) then
    Abort;
  if not AllStateControls(qryForms, qryForms, qryInit, 'Form') then
    Abort;

  b := (qryForms.FieldByName('AidFormType').AsInteger > 0) and
    (qryForms.FieldByName('AidFormType').AsInteger <> formType);
  qryFormsAmount.ReadOnly := qryFormsAmount.ReadOnly or b;
  qryFormsCustomerID2.ReadOnly := qryFormsCustomerID2.ReadOnly or b;
end;

function TGetOtherMoneyF.ReMainPerson(NewReMain: Currency = 0): Currency;
begin
  Result := NewReMain;
  With ProcReMainPerson do
  begin
    Active := False;
    Parameters.ParamByName('@FormID').Value :=
      qryForms.FieldByName('FormID').AsString;
    Parameters.ParamByName('@PersonID').Value :=
      qryForms.FieldByName('CustomerID1').AsString;
    Parameters.ParamByName('@FormDate').Value :=
      qryForms.FieldByName('FormDate').AsString;
    Parameters.ParamByName('@ServerID').Value :=
      qryForms.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('@YearID').Value := qryForms.FieldByName('YearID')
      .AsInteger;
    ExecProc;
    Result := Result + Parameters.ParamByName('@RETURN_VALUE').Value;
    Active := False;
  end; // With
end;

procedure TGetOtherMoneyF.qryFormsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TGetOtherMoneyF.ProcHow2DisplayArzTypeID;
var
  b: Boolean;
begin
  b := (qryInit.FieldByName('How2DisplayArzTypeID').AsInteger > 0) or
    (qryForms_AccountKind.AsInteger > 0);
  pnlArz.Visible := b;
  pnlArz2.Visible := b;
end;

procedure TGetOtherMoneyF.qryFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;

  showBigNum(qryFormsAmount.AsCurrency, aBigPanel, horoofPanel);
  if qryFormsFormState.AsInteger = 10 then
    TxtFormState.Font.Color := clRed
  else
    TxtFormState.Font.Color := clBlack;
  LblRecNo.Caption := Format('فرم %d از %d',
    [DataSet.RecNo, DataSet.RecordCount]);
  qryCustActive(qryCust1, qryForms.FieldByName('CustomerID1').AsInteger);
  qryCustActive(qryCust2, qryForms.FieldByName('CustomerID2').AsInteger);
  qryCustActive(qryCust3, qryForms.FieldByName('CustomerID3').AsInteger);
  qryCustActive(qryCust4, qryForms.FieldByName('CustomerID4').AsInteger);
  ProcHow2DisplayArzTypeID;
  AfterScrollAutoFormStateChange(actStateChange, qryInit, qryForms);

  EdtCustomerName2.Visible := qryForms.FieldByName('CustomerID2').AsInteger = 0;
  // EdtCustomerName2.TabStop:=EdtCustomerName2.Visible;

end;

procedure TGetOtherMoneyF.ppLblState2ZeroDrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryForms.FieldByName('FormState')
    .AsInteger = 10;
end;

procedure TGetOtherMoneyF.ppLblState2ZeroDrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryForms.FieldByName('FormState')
    .AsInteger = 10;
end;

procedure TGetOtherMoneyF.ppLblState2ZeroGetText(Sender: TObject;
var Text: String);
begin
  inherited;
  (Sender As TppLabel).Visible := qryForms.FieldByName('FormState')
    .AsInteger = 10;
end;

procedure TGetOtherMoneyF.ppLblState2ZeroPrint(Sender: TObject);
begin
  inherited;
  (Sender As TppLabel).Visible := qryForms.FieldByName('FormState')
    .AsInteger = 10;
end;

procedure TGetOtherMoneyF.actSearchReprotExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.Show(ppReport1, 'cash', Self);
end;

procedure TGetOtherMoneyF.actshowRelatedFExecute(Sender: TObject);
begin
  inherited;
  RelatedF.showRelatedF(qryForms, qryFormsCustomerID2.AsInteger);
end;

procedure TGetOtherMoneyF.DBEdit4KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

procedure TGetOtherMoneyF.qryFormsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not IsCorrelateFormType(qryInit) then
    Abort;

  if not CheckUserlevel(qryInit.FieldByName('ADDLevelID'), qryForms) then
    Abort
end;

procedure TGetOtherMoneyF.actCorrelateFormTypeExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي ' + actCorrelateFormType.Caption +
    ' اين فرم مطمئن هستيد؟') = mrYes then
    With DMf.spNewFormsCorrelate do
    begin
      Active := False;
      CommandTimeout := 0;
      Parameters.ParamByName('@OldID').Value := qryForms.FieldByName('ID')
        .AsLargeInt;
      Parameters.ParamByName('@FirstUser').Value := user.name;
      Parameters.ParamByName('@ID').Value := 0;
      ExecProc;
      if VarToStr(Parameters.ParamByName('@ID').Value) <> '0' then
        Warn('انجام شد.' + #13 + VarToStr(Parameters.ParamByName('@ID').Value))
      else
        Warn('انجام شده.' + #13 +
          VarToStr(Parameters.ParamByName('@ID').Value));

      Active := False;
    end;

end;

procedure TGetOtherMoneyF.actcustomerinterExecute(Sender: TObject);
begin
  inherited;
  mdiMainF.actCustomersInterView.Execute
end;

procedure TGetOtherMoneyF.FormDestroy(Sender: TObject);
begin
  inherited;
  opt.PayablePriceActive := False;
  FreeMyComponent(Self, ['qrySellsEmporiums', 'qrySellsMethods', 'qryCust1',
    'qryCust2', 'qryCust3', 'qryCust4']);
end;

procedure TGetOtherMoneyF.FormResize(Sender: TObject);
begin
  inherited;
  if pnlMainDown.Height > 184 then
    Self.Height := Self.Height - (pnlMainDown.Height - 184)
end;

procedure TGetOtherMoneyF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMf.adcBSell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(FormDate) from Forms WHERE FormType=' + IntToStr(formType));
      AddItem(DMf.adcBSell, 'number', 'شماره', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '',
        'Select Min(FormNumber),max(FormNumber) from Forms WHERE FormType=' +
        IntToStr(formType));
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TGetOtherMoneyF.UpdateList;
begin
  with qryAllForms Do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('NumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Active := True;
  end;
  with qryForms Do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('NumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Active := True;
  end;
end;

procedure TGetOtherMoneyF.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  ppReport1.DataPipeline := ppDBPipeline1;
  ppDBPipeline1.RangeBegin := rbFirstRecord;
  ppDBPipeline1.RangeEnd := reLastRecord;
  actFilter.Execute
end;

procedure TGetOtherMoneyF.FormShow(Sender: TObject);
begin
  inherited;
  LblAmount.Alignment := taLeftJustify;
  AccChangeNames(Self);
  HighLightRequiredFields(Self);
end;

procedure TGetOtherMoneyF.actInserNoteExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryFormsFomNote);
end;

procedure TGetOtherMoneyF.actMakeDocumentShowExecute(Sender: TObject);
begin
  inherited;
  MakeDocumentShow(qryForms, qryInit);
  Close
end;

procedure TGetOtherMoneyF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryForms, nil, smsForms, formType, 0, 1);
end;

procedure TGetOtherMoneyF.actStateChangeExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryInit.FieldByName('ChangeStateLevelID'), qryForms)
  then
    Abort;
  StateChangeAction(qryForms)
end;

procedure TGetOtherMoneyF.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.enter(ADDKeyID(qryForms) + qryFormsFormID.AsString,
    Self.name, True);
end;

procedure TGetOtherMoneyF.actWorkflowHistoryFExecute(Sender: TObject);
begin
  inherited;
  WorkflowHistoryF.enter(formType, qryFormsFormID.AsInteger,
    qryFormsYearID.AsInteger, qryFormsServerID.AsInteger);
end;

procedure TGetOtherMoneyF.actRequestCashExecute(Sender: TObject);
begin
  inherited;
  RequestCashF.enter(qryForms)
end;

procedure TGetOtherMoneyF.actRptCofferExecute(Sender: TObject);
begin
  inherited;
  RptCofferF.enter(qryForms)
end;

procedure TGetOtherMoneyF.qryFormsFormDateChange(Sender: TField);
begin
  inherited;
  // FormDateChange(qryForms)
end;

procedure TGetOtherMoneyF.btnChangeTypeClick(Sender: TObject);
begin
  inherited;
  popChangeType.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TGetOtherMoneyF.btnCustomerID3Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,tel,Address ' +
    ' FROM Vu_CustomersGroups  ' + ' WHERE GroupType IN(' +
    Trim(qryInit.FieldByName('CustomerKind3').AsString) + ')';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    Trim(qryInit.FieldByName('Customer3Lable').AsString) + 'ها', txt,
    ['کد', 'نام ' + Trim(qryInit.FieldByName('Customer3Lable').AsString) + '',
    'تلفن', 'آدرس'], Results, [50, 150, 80, 250], alLeft);
  if b then
  begin
    qryForms['CustomerID3'] := Results[0];
  end; // if
end;

procedure TGetOtherMoneyF.edtCustomerID3KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnCustomerID3.Click;
end;

procedure TGetOtherMoneyF.edtCustomerID4KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnCustomerID4.Click;
end;

procedure TGetOtherMoneyF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    ShowImPortExcelon := True;
    qryForms.AfterPost := nil;
    // qryForms.AfterScroll := nil;

    GetExcelF.ShowImPortExcel(qryForms);
  finally
    ShowImPortExcelon := False;
    qryForms.AfterPost := qryFormsAfterPost;
    qryForms.AfterScroll := qryFormsAfterScroll;

    qryAllForms.Requery();
    qryAllForms.Last;
    FreeReservedCodes(DMf.adcBSell, '', '', IntToStr(formType));

  end
end;

procedure TGetOtherMoneyF.qryFormsSellsEmporiumChange(Sender: TField);
begin
  inherited;
  IF qryInit.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 1 then
  begin
    FreeReservedCodes(DMf.adcBSell, '', 'FormNumber', IntToStr(formType));
    GetFormNumber(IntToStr(formType), qryInit, qryForms)
  end;
end;

procedure TGetOtherMoneyF.qryFormsTopicCodeChange(Sender: TField);
begin
  inherited;
  Sender.Tag := StrToInt64(Trim(Sender.AsString))
end;

procedure TGetOtherMoneyF.mnu4allClick(Sender: TObject);
begin
  inherited;
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
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  end;
end;

procedure TGetOtherMoneyF.MnuChangeTypeClick(Sender: TObject);
var
  ID: Largeint;
  formTypeNew, HasRecall: Integer;
  CallableStates, FormDate: string;
begin
  inherited;
  if get_response('آيا براي انتقال اين فرم به فرم ' + (Sender as TMenuItem)
    .Caption + ' مطمئن هستيد؟') <> mrYes then
    Exit;
  formTypeNew := (Sender as TMenuItem).Tag;
  try
    with qryInit do
    begin
      CallableStates := Trim(qryInit.FieldByName('CallableStates').AsString);
      HasRecall := qryInit.FieldByName('HasRecall').AsInteger;
      Active := False;
      Parameters.ParamByName('FormType').Value := formTypeNew;
      Active := True;
    end;
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT *';
      SQL.Add('FROM Forms');
      SQL.Add('WHERE (FormID = :FormID ) ');
      SQL.Add('AND (ServerID = :ServerID) AND (YearID = :YearID)');
      If Length(CallableStates) > 0 Then
        SQL.Add(Format('AND(FormState IN (%s))', [CallableStates]));
      Parameters.ParamByName('FormID').Value := qryForms.FieldByName('FormID')
        .AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryForms.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryForms.FieldByName('YearID')
        .AsInteger;
      Active := True;
      if RecordCount > 0 then
      begin
        Edit;
        GetFormNumber(IntToStr(formTypeNew), qryInit, DMf.qryTmpTmp);
        FieldByName('FormType').AsInteger := formTypeNew;
        if HasRecall = 5 then
        begin
          FormDate := FieldByName('FormDate').AsString;
          FieldByName('FormDate').AsString :=
            FieldByName('AidInfoDate').AsString;
          FieldByName('AidInfoDate').AsString := FormDate;
        end;
        Post;
        Warn('انجام شد.', mtInformation);
      end
      else
        Warn('تغییر فرم امکان پذیر نیست');
      qryAllForms.Next;
      ID := qryFormsID.AsLargeInt;
      qryAllForms.Requery();
      qryAllForms.locate('ID', ID, []);
    end;
  finally
    with qryInit do
    begin
      Active := False;
      Parameters.ParamByName('FormType').Value := formType;
      Active := True;
    end; // with
  end;

end;

procedure TGetOtherMoneyF.actCopyFormExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryInit.FieldByName('CopyFormLevelID'), qryForms) then
    Abort;
  if get_response('آيا براي كپي اين فرم در فرم جديد مطمئن هستيد؟') <> mrYes then
    Exit;

  qryCopyRowFields(qryForms, ['CustomerID1', 'CustomerID2', 'CustomerID3',
    'CustomerID4', 'Amount', 'FomNote', 'AidInfoNo', 'AidInfoDate',
    'SellsEmporium', 'SellsMethod', 'TopicCode', 'DetailCode', 'CTopicCode',
    'CTopicCode2', 'CTopicCode3']);

  //
  // FormID := GetANewid(nil, IntToStr(formType), 'Forms', 'FormID', nil, 1);
  // FormNumber := GetANewCode(IntToStr(formType),
  // 'SELECT MAX(FormNumber) FROM Forms WHERE FormType = ' + IntToStr(formType),
  // '', DMf.adcBSell);
  // With DMf.qryTmpTmp do
  // begin
  // Active := False;
  // SQL.Text := 'INSERT INTO Forms';
  // SQL.Add('(FormID, FormNumber, FormDate, FormType, CustomerID1, CustomerID2,');
  // SQL.Add(' Amount, FomNote, FirstUser, LastUser,');
  // SQL.Add('DetailCode, CTopicCode, AidInfoNo, AidInfoDate, CTopicCode2,');
  // SQL.Add('CTopicCode3, CustomerName2, PayTypes, TopicTypes, DocNo, DocDate, ');
  // SQL.Add('FormState, ModifyDate,ReciptID, ManegerNote');
  //
  // SQL.Add(', SubAmount, Rate, SellsMethod, SellsEmporium, DefaultDate, CustomerID3, AidFormType, ArzTypeID,');
  // SQL.Add('ArzAmount, ArzRate, AidInfoNo2, AidInfoDate2, UserRegistrationDoc, DefaultDuration');
  //
  // SQL.Add(',YearID,ServerID)');
  // SQL.Add('SELECT ' + IntToStr(FormID) + ',' + IntToStr(FormNumber) + ',''' +
  // var_glb_CurrentDate + ''',');
  // SQL.Add(' FormType, CustomerID1, CustomerID2, Amount, FomNote,''' +
  // user.name + ''',''' + user.name + '''');
  // SQL.Add(',DetailCode, CTopicCode, AidInfoNo, AidInfoDate, CTopicCode2,');
  // SQL.Add('CTopicCode3, CustomerName2, PayTypes, TopicTypes, DocNo, DocDate, ');
  // SQL.Add('FormState, ModifyDate,ReciptID, ManegerNote');
  //
  // SQL.Add(', SubAmount, Rate, SellsMethod, SellsEmporium, DefaultDate, CustomerID3, AidFormType, ArzTypeID,');
  // SQL.Add('ArzAmount, ArzRate, AidInfoNo2, AidInfoDate2, UserRegistrationDoc, DefaultDuration');
  //
  // ServerID := opt.ServerID;
  // YearID := APPBank.Year;
  //
  // SQL.Add(',' + IntToStr(YearID) + ' AS YearID,' + IntToStr(ServerID) +
  // ' AS ServerID');
  // SQL.Add('FROM Forms');
  //
  // SQL.Add('WHERE(FormID = ' + qryFormsFormID.AsString + ')');
  // SQL.Add('AND(YearID = ' + qryFormsYearID.AsString + ')');
  // SQL.Add('AND(ServerID = ' + qryFormsServerID.AsString + ')');
  // try
  // ExecSQL;
  // Active := False;
  // except
  // Warn('اشكال در ثبت كردن فرم‌');
  // end;
  // BigMessage(' فرم ' + Caption + '‌ با شماره فرم ' + IntToStr(FormNumber) +
  // ' ثبت شد.', 2);
  // qryForms.Requery;
  // qryForms.locate('FormID;ServerID;YearID',
  // VarArrayOf([FormID, ServerID, YearID]), []);
  // end;
  // FreeReservedCodes(DMf.adcBSell, 'Forms', '', IntToStr(formType));
end;

procedure TGetOtherMoneyF.plblArzTypeGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := CmbArzTypeID.Text
end;

procedure TGetOtherMoneyF.actPcPosFExecute(Sender: TObject);
begin
  inherited;
  PcPosF.enter(qryFormsAmount.AsString)
end;

end.
