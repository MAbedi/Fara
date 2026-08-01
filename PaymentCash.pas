unit PaymentCash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, DB, ADODB, ComCtrls, ppBands, System.Math,
  ppClass, ppDB, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppVar, Menus, ppModule, ppTypes,
  sndkey32, ppParameter, FarsiReportBuilde, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TAxisBarEhCrack = class(TAxisBarEh);

  TPaymentCashF = class(Ttemplate2MDIF)
    pnlmasterAccount: TPanel;
    srcForms: TDataSource;
    qryForms: TADOQuery;
    qryInitForm: TADOQuery;
    srcFormItems: TDataSource;
    qryFormsFormID: TIntegerField;
    qryFormsFormType: TWordField;
    qryFormsFormNumber: TIntegerField;
    qryFormsFormDate: TStringField;
    qryFormsCustomerID1: TIntegerField;
    qryFormsCustomerID2: TIntegerField;
    qryFormsAmount: TBCDField;
    qryFormsBudgetCode: TIntegerField;
    qryFormsProjectID: TIntegerField;
    qryFormsDetailCode: TStringField;
    qryFormsCTopicCode: TStringField;
    qryFormsFomNote: TStringField;
    qryFormsAidInfoNo: TStringField;
    qryFormsAidInfoDate: TStringField;
    qryFormsCustomerName2: TStringField;
    qryForms_BudgetName: TStringField;
    qryForms_ProjectName: TStringField;
    qryForms_CTopicName: TStringField;
    qryForms_CTopicName3: TStringField;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    qryForms_DetailsName: TStringField;
    qryForms_TopicCodeName: TStringField;
    qryForms_CustomerName: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetItemDelette: TDataSetDelete;
    DataSetInsert2: TDataSetInsert;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    qryFormItems: TADOQuery;
    qryFormItemsFormItemID: TIntegerField;
    qryFormItemsFormID: TIntegerField;
    qryFormItemsRow: TIntegerField;
    qryFormItemsCheckDate: TStringField;
    qryFormItemsCheckType: TWordField;
    qryFormItemsItemAmount: TBCDField;
    qryFormItemsItemNote: TStringField;
    qryFormItemsBankName: TStringField;
    qryFormItemsAccountNumber: TStringField;
    qryFormItemsCity: TStringField;
    qryFormItemsCustomerID2: TIntegerField;
    qryFormItemsBudgetCode: TIntegerField;
    qryFormItemsProjectID: TIntegerField;
    qryFormItemspreFormItemID: TIntegerField;
    qryFormItemsAidInfoNo: TStringField;
    qryFormItemsAidInfoDate: TStringField;
    qryFormItems_Cudtomername2: TStringField;
    actEdit: TAction;
    DBNavigator1: TDBNavigator;
    actDelete1: TAction;
    actselectCheck: TAction;
    PopChoose: TPopupMenu;
    N13: TMenuItem;
    N12: TMenuItem;
    qryFormsDocNo: TIntegerField;
    qryFormsDocDate: TStringField;
    pnlmasterBudject: TPanel;
    BtnBudgetCode: TSpeedButton;
    Label7: TLabel;
    btnProjectID: TSpeedButton;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit14: TDBEdit;
    pnlAidInfo: TPanel;
    LblAidInfoNo: TLabel;
    LblAidInfoDate: TLabel;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    BitBtn10: TBitBtn;
    qryFormsCTopicCode2: TStringField;
    popPrint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    StatusBar1: TStatusBar;
    pnlDelete: TPanel;
    spdSelectCheck: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Panel1: TPanel;
    AllC_L_i_c_k_: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    qryFormsModifyDate: TDateTimeField;
    pnlmasterBudject_AidInfo: TPanel;
    N32: TMenuItem;
    qryFormItems_CTopicName_L1: TStringField;
    qryFormItems_CTopicName3_L1: TStringField;
    qryFormItems_DetailsName_L1: TStringField;
    qryFormItems_TopicCodeName_L1: TStringField;
    NReportFileName1: TMenuItem;
    NReportFileName2: TMenuItem;
    actReportsearch: TAction;
    Panel5: TPanel;
    pnlCustomer1: TPanel;
    lbcustomer1: TLabel;
    btnCustomerID1: TSpeedButton;
    edtCustomerID1: TDBEdit;
    DBEdit11: TDBEdit;
    pnlCustomer2: TPanel;
    lbcustomer2: TLabel;
    btnCustomerID2: TSpeedButton;
    edtCustomerID2: TDBEdit;
    DBEdit7: TDBEdit;
    qryForms_CustomerName2: TStringField;
    qryFormsFormState: TWordField;
    qryFormsFirstUser: TStringField;
    qryFormsLastUser: TStringField;
    actCopyPaste: TAction;
    BitBtn2: TBitBtn;
    qryFormItemsItemState: TWordField;
    qryFormItemsItemStateComment: TWideStringField;
    qryFormItemsSeverableAmount: TWordField;
    pnlTopicCodeDetails: TPanel;
    pnlDetailCodeDetail: TPanel;
    pnlCTopicCode1Detail: TPanel;
    pnlCTopicCode2Detail: TPanel;
    DBEdit26: TDBEdit;
    Label4: TLabel;
    DBEdit18: TDBEdit;
    Label3: TLabel;
    Label8: TLabel;
    DBEdit23: TDBEdit;
    Label6: TLabel;
    DBEdit24: TDBEdit;
    btnOtherMenu: TBitBtn;
    actSeverable: TAction;
    ItemState: TMenuItem;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel3: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryFormItems_BudgetCode: TStringField;
    Label1: TLabel;
    edtFormNumber: TDBEdit;
    SpeedButton5: TSpeedButton;
    edtFormDate: TDBEdit;
    Label2: TLabel;
    lblReMainPerson: TLabel;
    qryFormsServerID: TIntegerField;
    qryFormsYearID: TIntegerField;
    qryFormItemsServerID: TIntegerField;
    qryFormItemsYearID: TIntegerField;
    qryFormsSellsMethod: TIntegerField;
    qryFormsSellsEmporium: TIntegerField;
    pnlSells: TPanel;
    pnlSellsEmporium: TPanel;
    Label24: TLabel;
    dblkcbb_SellsEmporium: TDBLookupComboBox;
    pnlSellsMethod: TPanel;
    Label26: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    actItemNote: TAction;
    actGetExcel: TAction;
    qryFormItemsFirstUser: TStringField;
    qryFormItemsLastUser: TStringField;
    plblAmount1Total_Price1: TppLabel;
    grpMasterNote: TGroupBox;
    DBMemo2: TDBMemo;
    BitBtn6: TBitBtn;
    qryFormsRelatedRecipts: TStringField;
    qryRelatedRecipts: TADOQuery;
    qryForms_RelatedRecipts: TStringField;
    qryFormItemsVAT: TBCDField;
    qryFormsCustomerID3: TIntegerField;
    qryForms_CustomerID3: TStringField;
    pnlCTopicCode3: TPanel;
    SpeedButton18: TSpeedButton;
    Label28: TLabel;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    qryFormsCTopicCode3: TStringField;
    qryForms_CTopicName2_L1: TStringField;
    qryFormItems_CTopicName2_L1: TStringField;
    pnlCTopicCode3Detail: TPanel;
    Label9: TLabel;
    DBEdit20: TDBEdit;
    qryFormItemsCheckNumber: TStringField;
    qryFormsTopicCode: TLargeintField;
    qryFormItemsTopicCode: TLargeintField;
    actViewFileF: TAction;
    qryFormItemsItemAmount_VAT: TBCDField;
    actWorkflowHistoryF: TAction;
    qryFormItemsProductCode: TLargeintField;
    actStateChange: TAction;
    Panel4: TPanel;
    BitBtn11: TBitBtn;
    actWorkflow: TAction;
    actMakeDocumentShow: TAction;
    actRequestCash: TAction;
    qryFormsOperatorID: TIntegerField;
    txtFormState: TDBText;
    txtDocDate: TDBText;
    txtDocNo: TDBText;
    txtFormState1: TDBText;
    qryFormItems_Customer2Active: TIntegerField;
    qryFormItems_AccountNumber: TStringField;
    qryFormItems_BankId: TStringField;
    qryFormsReciptID: TIntegerField;
    actPostOverallType: TAction;
    BitBtn13: TBitBtn;
    pnlPay_Topic: TPanel;
    LblTopicTypes: TLabel;
    LblPayTypes: TLabel;
    CmbPayTypes: TDBComboBox;
    CmbTopicTypes: TDBComboBox;
    qryFormsPayTypes: TIntegerField;
    qryFormsTopicTypes: TIntegerField;
    DBGrid1: TCedarDbgrid;
    ppDBPipelineSumGrid1: TppDBPipeline;
    aBigPanel: TPanel;
    horoofPanel: TPanel;
    qryFormItemsCashWage: TBCDField;
    qryFormsArzTypeID: TIntegerField;
    qryFormsArzAmount: TBCDField;
    qryFormsArzRate: TFloatField;
    qryForms_AccountKind: TIntegerField;
    actCopyForm: TAction;
    qryFormItemsVatCo: TFloatField;
    pnlRelatedRecipts: TPanel;
    btnRelatedRecipts: TSpeedButton;
    Label5: TLabel;
    txt_RelatedRecipts: TDBText;
    DBEdit5: TDBEdit;
    qryFormItemsDetailCode: TStringField;
    qryFormItemsCTopicCode: TStringField;
    qryFormItemsCTopicCode2: TStringField;
    qryFormItemsCTopicCode3: TStringField;
    qryFormsArzAmountExchange: TBCDField;
    qryFormsArzRateExchange: TFloatField;
    qryFormsArzTypeIDExchange: TIntegerField;
    qryCustomer1: TADOQuery;
    qryCustomer2: TADOQuery;
    qryCustomer3: TADOQuery;
    qryCustomer2Detail: TADOQuery;
    qryAllForms: TADOQuery;
    qryAllFormsFormID: TIntegerField;
    qryAllFormsServerID: TIntegerField;
    qryAllFormsYearID: TIntegerField;
    qryAllFormsCustomerID1: TIntegerField;
    qryAllFormsCustomerID2: TIntegerField;
    qryAllFormsCustomerID3: TIntegerField;
    srcAllForms: TDataSource;
    pnllTopicCodeDetailCode: TPanel;
    pnlTopicCode: TPanel;
    btnTopicCode: TSpeedButton;
    lbl1: TLabel;
    edt1: TDBEdit;
    edt2: TDBEdit;
    pnlDetailCode: TPanel;
    btnDetailCode: TSpeedButton;
    lbl2: TLabel;
    edt3: TDBEdit;
    edt4: TDBEdit;
    pnlCTopicCode1CTopicCode2: TPanel;
    pnlCTopicCode1: TPanel;
    btnCTopicCode: TSpeedButton;
    lbl3: TLabel;
    edt5: TDBEdit;
    edt6: TDBEdit;
    pnlCTopicCode2: TPanel;
    btnCTopicCode2: TSpeedButton;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    plblCmbTopicTypes: TppLabel;
    plblCmbPayTypes: TppLabel;
    plblArz: TppLabel;
    qryFormItemsAccountNumberNew: TStringField;
    pnlArz: TPanel;
    pnlArz1: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtArzAmount: TDBEdit;
    edtArzRate: TDBEdit;
    CmbArzTypeID: TDBComboBox;
    pnlArz2: TPanel;
    edtArzAmountExchange: TDBEdit;
    Label14: TLabel;
    edtArzRateExchange: TDBEdit;
    Label16: TLabel;
    cmbArzTypeIDExchange: TDBComboBox;
    Label17: TLabel;
    qryFormsID: TLargeintField;
    qryRelatedReciptItems: TADOQuery;
    qryFormItemsReciptItems_ID: TLargeintField;
    qryFormItems_ReciptItems_ID: TStringField;
    ProcReMainPerson: TADOStoredProc;
    qryFormsPO: TStringField;
    qryFormItemsPO: TStringField;
    pnlCustomerID3_PO: TPanel;
    pnlCustomerID3: TPanel;
    lblCustomerID3: TLabel;
    btnCustomerID3: TSpeedButton;
    edtCustomerID3: TDBEdit;
    DBEdit2: TDBEdit;
    pnlPO: TPanel;
    lblPO: TLabel;
    edtPO: TDBEdit;
    qryFormItemsArzAmount: TFloatField;
    NAllRecords: TMenuItem;
    N1: TMenuItem;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    qryForms_CustomerNote1: TStringField;
    qryForms_CustomerNote2: TStringField;
    ppDBCalcnum2alphabet: TppDBCalc;
    qryFormItemsCheckFor: TStringField;
    plblRecordCount: TppLabel;
    procedure qryFormItemsAfterDelete(DataSet: TDataSet);
    procedure qryFormItemsAfterInsert(DataSet: TDataSet);
    procedure qryFormItemsBeforeDelete(DataSet: TDataSet);
    procedure BtnBudgetCodeClick(Sender: TObject);
    procedure btnProjectIDClick(Sender: TObject);
    procedure btnDetailCodeClick(Sender: TObject);
    procedure btnCTopicCodeClick(Sender: TObject);
    procedure btnCTopicCode2Click(Sender: TObject);
    procedure btnTopicCodeClick(Sender: TObject);
    procedure btnCustomerID1Click(Sender: TObject);
    procedure srcFormsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryFormsAfterInsert(DataSet: TDataSet);
    procedure qryFormsAfterPost(DataSet: TDataSet);
    procedure qryFormsAfterScroll(DataSet: TDataSet);
    procedure qryFormsAfterDelete(DataSet: TDataSet);
    procedure qryFormsBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qryFormItemsBeforePost(DataSet: TDataSet);
    procedure qryFormsBeforePost(DataSet: TDataSet);
    procedure qryFormItemsAfterPost(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    // procedure actDelete1Execute(Sender: TObject);
    procedure actselectCheckExecute(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure spdSelectCheckClick(Sender: TObject);
    procedure qryFormItemsAfterOpen(DataSet: TDataSet);
    procedure AllC_L_i_c_k_Click(Sender: TObject);
    procedure qryFormItemsBeforeEdit(DataSet: TDataSet);
    procedure ppDBCalcSumItemAmountGetText(Sender: TObject; var Text: String);
    procedure actReportsearchExecute(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure ALLDBEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryFormsBeforeEdit(DataSet: TDataSet);
    procedure qryFormItemsBeforeInsert(DataSet: TDataSet);
    procedure actCopyPasteExecute(Sender: TObject);
    procedure qryFormsBeforeCancel(DataSet: TDataSet);
    procedure AllPickListGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllPickListSetText(Sender: TField; const Text: String);
    procedure qryFormItemsItemStateChange(Sender: TField);
    procedure actSeverableExecute(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryFormItemsAfterScroll(DataSet: TDataSet);
    procedure AllpdbtxtGetText(Sender: TObject; var Text: String);
    procedure qryFormsCustomerID1Change(Sender: TField);
    procedure actItemNoteExecute(Sender: TObject);
    procedure plblRemainGetText(Sender: TObject; var Text: String);
    procedure actGetExcelExecute(Sender: TObject);
    procedure qryFormItemsAfterEdit(DataSet: TDataSet);
    procedure qryFormsSellsEmporiumChange(Sender: TField);
    procedure btnRelatedReciptsClick(Sender: TObject);
    procedure btnCustomerID3Click(Sender: TObject);
    procedure edtCustomerID3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton18Click(Sender: TObject);
    procedure btnOtherMenuMouseEnter(Sender: TObject);
    procedure btnOtherMenuMouseLeave(Sender: TObject);
    procedure qryFormItemsCheckNumberChange(Sender: TField);
    procedure qryFormsTopicCodeChange(Sender: TField);
    procedure actViewFileFExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actWorkflowHistoryFExecute(Sender: TObject);
    procedure actStateChangeExecute(Sender: TObject);
    procedure qryFormsFormStateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actWorkflowExecute(Sender: TObject);
    procedure actMakeDocumentShowExecute(Sender: TObject);
    procedure actRequestCashExecute(Sender: TObject);
    procedure actPostOverallTypeExecute(Sender: TObject);
    procedure plblCmbPayTypesGetText(Sender: TObject; var Text: string);
    procedure plblCmbTopicTypesGetText(Sender: TObject; var Text: string);
    procedure CmbALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CmbALLSetText(Sender: TField; const Text: String);
    procedure DBnum2alphabetGetText(Sender: TObject; var Text: String);
    procedure qryFormsArzTypeIDChange(Sender: TField);
    procedure qryFormsArzAmountChange(Sender: TField);
    procedure actCopyFormExecute(Sender: TObject);
    procedure qryFormItemsVatCoChange(Sender: TField);
    procedure qryFormsPayTypesChange(Sender: TField);
    procedure qryFormsCustomerID2Change(Sender: TField);
    procedure qryFormsCustomerID3Change(Sender: TField);
    procedure qryAllFormsAfterScroll(DataSet: TDataSet);
    procedure plblArzGetText(Sender: TObject; var Text: string);
    procedure qryFormItemsArzAmountChange(Sender: TField);
    procedure edtCustomerID1DblClick(Sender: TObject);
    procedure edtCustomerID2DblClick(Sender: TObject);
    procedure qryFormItemsItemAmountChange(Sender: TField);
    procedure mnu4allClick(Sender: TObject);
    procedure ppLblReMainGetText(Sender: TObject; var Text: String);
    procedure qryFormsBeforeInsert(DataSet: TDataSet);
    procedure plblRecordCountGetText(Sender: TObject; var Text: string);
  private
    Sev_: TForm;
    FormType, PostOverallType: Integer;
    Customer_ID: Integer;
    canShow: Boolean;
    // RoundCount: SmallInt;
    canFilter, IsInsert: Boolean;
    Cus2DetailAsMaster: Boolean;
    UnsavedFileName: String;
    DbgrdOption: set of TDBGridOption;
    qryCust1, qryCust2, qryCust3: TADOQuery;
    OtherSettings: Largeint;
    procedure SaveArticlesToFile;
    // procedure DeleteCheck(ItemID:Integer);
    procedure CheckUnsaved;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function CheckRequiredFieldsFill(DataSet: TDataSet): Boolean;
    procedure ProcHow2DisplayArzTypeID;
    procedure initCombosArz;
    procedure ReMainPersonPaymentCash4Thread(Sender: TField;
      lblReMainPerson: TLabel);
    function ReMain4post: Boolean;
    function ReMainPerson(NewReMain: Currency = 0): Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentCashF: TPaymentCashF;

implementation

uses DM, FormFunctions, CofferFormTypes, searchCode_ADO, mmessage, GlobalPro,
  search2, sort2, SelectCustomer, StrUtils,
  ChooseChecks, ChooseDisk, searchReports, Severable, GetExcel, FaraConsts,
  WorkflowHistory, WorkflowDm, RequestCash, GetCheck,
  GetCheckPostOverallType, ReciptsFunctions, ViewFileOnServer, shamsiDate;

{$R *.dfm}

procedure TPaymentCashF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          3:
            nextIndex := 5;
          19:
            nextIndex := 21;
          31:
            nextIndex := -1;
        else
          nextIndex := curIndex + 1;

        end; // case
        if (curIndex > 5) and (aDataSet.FieldByName('CheckDate').IsNull) and
          (aDataSet.FieldByName('CustomerID2').IsNull) and
          (aDataSet.FieldByName('ItemAmount').IsNull) then
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
      begin
        if not shiftDown then
        begin
          Key := #0;
          SendKeys('000', false);
        end;
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis
      // if curIndex in [3,7,8,9,10,11,12]
      then
    begin
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
          sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TPaymentCashF.qryFormItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.FieldByName('DeleteLevelID'), qryForms) then
    Abort;
  if qryForms.FieldByName('FormState').AsInteger > 0 then
  begin
    Warn('فقط ' + qryInitForm.FieldByName('FormCaption').AsString +
      'ي كه نوع اطلاعات آن موقت است قابل حذف است‏', mtInformation);
    Abort;
  end;
  if not OkDeleteEditCheck(qryFormItems) then
    Abort;

  if get_response('آيا از حذف رديف مطمئن هستيد.') <> mryes then
    Abort;
end;

procedure TPaymentCashF.BtnBudgetCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonBudgetCode(qryForms, 'BudgetCode')
end;

procedure TPaymentCashF.btnProjectIDClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonProjectsCode(qryForms, 'ProjectID', 'BudgetCode')
end;

procedure TPaymentCashF.btnDetailCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryForms, 'DetailCode', 'TopicCode')
end;

procedure TPaymentCashF.btnCTopicCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryForms, 'CTopicCode', 'TopicCode')
end;

procedure TPaymentCashF.btnCTopicCode2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryForms, 'CTopicCode2', 'CTopicCode', True,
    'TopicCode')
end;

procedure TPaymentCashF.btnTopicCodeClick(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryForms, 'TopicCode')
end;

procedure TPaymentCashF.btnCustomerID1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  results: array [0 .. 1] of String;
  Ttag: String;
  CustomerLabel: String;
begin
  inherited;
  Ttag := IntToStr((Sender as TSpeedButton).Tag);
  if Ttag = '2' then
    CustomerLabel := 'Customer2Lable'
  else
    CustomerLabel := 'Customer1Label';
  txt := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
    ' WHERE GroupType IN(' + Trim(qryInitForm.FieldByName('CustomerKind' + Ttag)
    .AsString) + ')' + IfThen(qryInitForm.FieldByName('UserSecurityCheckActive')
    .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.id) +
    ')=1', '');
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell,
    Trim(qryInitForm.FieldByName(CustomerLabel).AsString) + 'ها', txt,
    ['کد', 'نام ' + Trim(qryInitForm.FieldByName(CustomerLabel).AsString) + ''],
    results, [50, 150], alLeft);
  if b then
  begin
    // if not (qryForms.state in dsEditModes) then   qryForms.edit;
    qryForms['CustomerID' + Ttag] := results[0];
  end; // ifend;
end;

procedure TPaymentCashF.btnCustomerID3Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  results: array [0 .. 3] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,tel,' +
    'Address FROM Vu_CustomersGroups ' + ' WHERE GroupType IN(' +
    Trim(qryInitForm.FieldByName('CustomerKind3').AsString) + ')';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell,
    Trim(qryInitForm.FieldByName('Customer3Lable').AsString) + 'ها', txt,
    ['کد', 'نام ' + Trim(qryInitForm.FieldByName('Customer3Lable').AsString) +
    '', 'تلفن', 'آدرس'], results, [50, 150, 80, 250], alLeft);
  if b then
  begin
    qryForms['CustomerID3'] := results[0];
  end; // if
end;

procedure TPaymentCashF.FormCreate(Sender: TObject);
var
  b: Boolean;
  s, sOrderBy: string;
begin
  inherited;
  aBigPanel.Visible := opt.showBig;
  SetLookUpCash(qryForms);
  SetLookUpCash(qryFormItems);
  DbgrdOption := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];


  // if opt.AccOldAvailable then
  // begin
  // qryForms.FieldByName('_CTopicName2_L1').LookupResultField:='Desc';
  // qryForms.FieldByName('_CTopicName2_L1').LookupKeyFields:='CTopicCode';
  // qryForms.FieldByName('_CTopicName_L1').LookupResultField:='Desc';
  // qryFormItems.FieldByName('_CTopicName2_L1').LookupResultField:='Desc';
  // qryFormItems.FieldByName('_CTopicName2_L1').LookupKeyFields:='CTopicCode';
  // qryFormItems.FieldByName('_CTopicName_L1').LookupResultField:='Desc';
  // qryForms.FieldByName('_DetailsName_L1').LookupResultField:='Desc';
  // qryForms.FieldByName('_TopicCodeName_L1').LookupResultField:='MoeenName';
  // qryFormItems.FieldByName('_DetailsName_L1').LookupResultField:='Desc';
  // qryFormItems.FieldByName('_TopicCodeName_L1').LookupResultField:='MoeenName';
  // end;//if

  FormType := var_glb_gParam;
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
    initReportName(qryInitForm, popPrint, mnu4allClick);

    initCombosPayTopic(CmbPayTypes, CmbTopicTypes, qryInitForm);
    pnlPay_Topic.Visible := FieldByName('Pay_Topic_Active').AsInteger > 0;
    LblPayTypes.Visible := FieldByName('Pay_Topic_Active').AsInteger in [1, 3];
    CmbPayTypes.Visible := LblPayTypes.Visible;
    qryFormsPayTypes.Required := LblPayTypes.Visible;

    LblTopicTypes.Visible := FieldByName('Pay_Topic_Active').AsInteger
      in [2, 3];
    CmbTopicTypes.Visible := LblTopicTypes.Visible;
    qryFormsTopicTypes.Required := LblTopicTypes.Visible;
    if pnlPay_Topic.Visible then
    begin
      LblPayTypes.Caption := ReadLookUps(0, 1, 'نوع دريافت/پرداخت');
      LblTopicTypes.Caption := ReadLookUps(0, 2, 'موضوع دريافت/پرداخت');
    end; // if

    initCofferAddField(qryInitForm, qryForms, pnlSells, pnlSellsEmporium,
      pnlSellsMethod, dblkcbb_SellsEmporium, dblkcbb_SellsMethod);
    Caption := FieldByName('FormCaption').AsString;
    lblCaption.Caption := Caption;
    lblCaption.Hint := IntToStr(FormType);

    canShow := FieldByName('RestartFormNumberOnCust1').Value;
    canFilter := FieldByName('Customer1UseInRecall').Value;

    OtherSettings := FieldByName('OtherSettings').AsLargeInt;
    b := ((OtherSettings and Integer(CHkBankInfo)) <> 0);
    setColumns2(DBGrid1, b, 'BankName');
    setColumns2(DBGrid1, b, 'AccountNumber');
    setColumns2(DBGrid1, b, 'AccountNumberNew');

    b := FieldByName('CheckNumberActive').AsInteger = 1;
    setColumns2(DBGrid1, b, 'CheckNumber');

    // -------------------------set Customer2Detail---------------------------//
    b := FieldByName('Customer2ActiveOnDetail').AsInteger in [1, 2, 3, 5];
    setColumns2(DBGrid1, b, 'CustomerID2');
    setColumns2(DBGrid1, b, '_Cudtomername2');
    qryFormItems.FieldByName('_Cudtomername2').DisplayLabel := ' نام ' +
      FieldByName('Customer2Lable').AsString;
    qryFormItems.FieldByName('CustomerID2').Required := b;
    qryFormItems.FieldByName('_Cudtomername2').Required := b;
    Cus2DetailAsMaster := FieldByName('Customer2ActiveOnDetail').AsInteger
      in [0, 1];

    pnlCustomer1.Visible := FieldByName('Customer1Active').Value;
    if pnlCustomer2.Visible then
    begin
      qryCustCreate(qryCust2, '2', PaymentCashF);
      lbcustomer1.Caption := ' كد و نام ' +
        FieldByName('Customer1Label').AsString;
    end;
    qryForms.FieldByName('CustomerID1').DisplayLabel := ' كد ' +
      FieldByName('Customer1Label').AsString;
    qryForms.FieldByName('_CustomerName').DisplayLabel := ' نام ' +
      FieldByName('Customer1Label').AsString;

    qryFormsCustomerID1.Required := pnlCustomer1.Visible;
    qryForms_CustomerName.Required := pnlCustomer1.Visible;

    pnlCustomer2.Visible := FieldByName('Customer2Active').AsInteger = 1;
    if pnlCustomer1.Visible then
      qryCustCreate(qryCust1, '1', PaymentCashF);

    qryForms.FieldByName('CustomerID2').Required := pnlCustomer2.Visible;

    lbcustomer2.Caption := ' كد و نام ' + FieldByName('Customer2Lable')
      .AsString;

    pnlCustomerID3.Visible := FieldByName('Customer3Active').AsInteger = 1;
    if pnlCustomerID3.Visible then
      qryCustCreate(qryCust3, '3', PaymentCashF);
    lblCustomerID3.Caption := 'كد و نام ' +
      Trim(FieldByName('Customer3Lable').AsString);
    qryForms.FieldByName('CustomerID3').DisplayLabel :=
      FieldByName('Customer3Lable').AsString;
    qryForms.FieldByName('CustomerID3').Required := pnlCustomerID3.Visible;
    qryForms.FieldByName('_CustomerID3').Required := pnlCustomerID3.Visible;

    lblPO.Caption := opt.POCaption;
    pnlPO.Visible := opt.POActive;
    pnlCustomerID3_PO.Visible := pnlCustomerID3.Visible or pnlPO.Visible;
    setColumns2(DBGrid1, opt.POActive, 'PO');

    qryFormItems.FieldByName('CustomerID2').DisplayLabel := ' كد ' +
      FieldByName('Customer2OnDetailLable').AsString;
    qryFormItems.FieldByName('_Cudtomername2').DisplayLabel := ' نام ' +
      FieldByName('Customer2OnDetailLable').AsString;
    pnlCustomer1.Enabled := not canShow;
    edtCustomerID1.Enabled := pnlCustomer1.Enabled;
    // RoundCount := FieldByName('RoundCount').AsInteger;
    // -------------------------set qryLookUp-------------------------//
    with qryCustomer1 do
    begin
      Active := false;
      s := Trim(qryInitForm.FieldByName('CustomerKind1').AsString);
      if s = EmptyStr then
        s := '-1';
      SQL.Add(GetCustomersGroupTypeSQL('CustomerKind1', qryInitForm,
        True, false));
      SQL.Add(IfThen(qryInitForm.FieldByName('UserSecurityCheckActive')
        .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.id) +
        ')=1', ''));
    end; // with

    with qryCustomer2 do
    begin
      s := Trim(qryInitForm.FieldByName('CustomerKind2').AsString);
      if s = EmptyStr then
        s := '-1';
      Active := false;
      SQL.Add(GetCustomersGroupTypeSQL('CustomerKind2', qryInitForm,
        True, false));
      SQL.Add(IfThen(qryInitForm.FieldByName('UserSecurityCheckActive')
        .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.id) +
        ')=1', ''));
    end; // with

    with qryCustomer3 do
    begin
      s := Trim(qryInitForm.FieldByName('CustomerKind3').AsString);
      if s = EmptyStr then
        s := '-1';
      Active := false;
      SQL.Add(GetCustomersGroupTypeSQL('CustomerKind3', qryInitForm,
        True, false));
    end; // with

    with qryCustomer2Detail do
    begin
      s := Trim(qryInitForm.FieldByName('Customer2DetailKind').AsString);
      if s = EmptyStr then
      begin
        s := '-1';
        Warn('كد مشتري 2 در Detail‏ مشخص نشده است.‏', mtInformation);
      end;
      Active := false;
      SQL.Add(GetCustomersGroupTypeSQL('Customer2DetailKind', qryInitForm,
        false, false));
      SQL.Add(IfThen(qryInitForm.FieldByName('UserSecurityCheckActive')
        .AsInteger  in[1,3], ' AND dbo.ChkUser(OperatorID,' + IntToStr(user.id) +
        ')=1', ''));
    end; // with

    // ------------------------set CheckDateActive--------------------------//
    b := (qryInitForm.FieldByName('CheckDateActive').AsInteger in [1, 2]);
    setColumns2(DBGrid1, b, 'CheckDate');
    qryFormItems.FieldByName('CheckDate').Required :=
      (FieldByName('CheckDateActive').AsInteger in [1]);

    // ------------------------set PnlAidInfoMaster--------------------------//
    pnlAidInfo.Visible := FieldByName('AidInfoActive').AsInteger in [1, 3, 4];
    LblAidInfoNo.Caption := LblAidInfoNo.Caption + ' ' + qryInitForm.FieldByName
      ('AidInfoCaption').AsString;
    LblAidInfoDate.Caption := LblAidInfoDate.Caption + ' ' +
      qryInitForm.FieldByName('AidInfoCaption').AsString;

    // ------------------------set PnlAidInfoDetail--------------------------//
    b := FieldByName('AidInfoActive').AsInteger in [2, 3, 4];
    setColumns2(DBGrid1, b, 'AidInfoNo');
    setColumns2(DBGrid1, b, 'AidInfoDate');

    qryFormItems.FieldByName('AidInfoNo').DisplayLabel := LblAidInfoNo.Caption;
    qryFormItems.FieldByName('AidInfoDate').DisplayLabel :=
      LblAidInfoDate.Caption;

    setColumns2(DBGrid1, FieldByName('ValueVisible').Value, 'ItemAmount');
    StatusBar1.Visible := FieldByName('ValueVisible').Value;
    if (FieldByName('ValueVisible').Value) <> 1 then
      qryFormItems.FieldByName('ItemAmount').Required := false;

    setColumns2(DBGrid1, FieldByName('DetailNoteVisible').Value, 'ItemNote');

    // -------------------------set qryForms AccountRelationPosition---------------------------//
    b := FieldByName('AccountRelationPosition').AsInteger in [2, 3];
    pnlmasterAccount.Visible := b;
    pnlTopicCode.Visible := b and
      (FieldByName('TopicCodeActive').AsInteger = 1);
    if pnlTopicCode.Visible then
      pnlmasterAccount.Height := pnlTopicCode.Height;

    pnlDetailCode.Visible := b and
      (FieldByName('DetailCodeActive').AsInteger = 1);
    if pnlDetailCode.Visible then
      pnlmasterAccount.Height := pnlTopicCode.Height + pnlDetailCode.Height;

    pnlTopicCodeDetails.Visible := pnlTopicCode.Visible or
      pnlDetailCode.Visible;
    pnlCTopicCode1.Visible := b and
      (FieldByName('CTopicCode1Active').AsInteger = 1);
    pnlCTopicCode2.Visible := b and
      (FieldByName('CTopicCode2Active').AsInteger = 1);

    pnlCTopicCode1CTopicCode2.Visible := pnlCTopicCode1.Visible or
      pnlCTopicCode2.Visible;
    pnlCTopicCode3.Visible := b and
      (FieldByName('CTopicCode3Active').AsInteger = 1);

    if pnlCTopicCode3.Visible then
      pnlmasterAccount.Height := pnlTopicCode.Height + pnlDetailCode.Height +
        pnlCTopicCode3.Height;

    b := FieldByName('AccountRelationPosition').AsInteger in [1, 2];
    setColumns2(DBGrid1, b and (FieldByName('TopicCodeActive').AsInteger = 1),
      'TopicCode');
    setColumns2(DBGrid1, b and (FieldByName('DetailCodeActive').AsInteger = 1),
      'DetailCode');
    setColumns2(DBGrid1, b and (FieldByName('CTopicCode1Active').AsInteger = 1),
      'CTopicCode');
    setColumns2(DBGrid1, b and (FieldByName('CTopicCode2Active').AsInteger = 1),
      'CTopicCode2');
    setColumns2(DBGrid1, b and (FieldByName('CTopicCode3Active').AsInteger = 1),
      'CTopicCode3');

    pnlTopicCodeDetails.Visible := b and
      (FieldByName('TopicCodeActive').AsInteger = 1);
    qryFormItems_TopicCodeName_L1.Required := pnlTopicCodeDetails.Visible;

    pnlDetailCodeDetail.Visible := b and
      (FieldByName('DetailCodeActive').AsInteger = 1);
    qryFormItems_DetailsName_L1.Required := pnlDetailCodeDetail.Visible;

    pnlCTopicCode1Detail.Visible := b and
      (FieldByName('CTopicCode1Active').AsInteger = 1);
    qryFormItems_CTopicName_L1.Required := pnlCTopicCode1Detail.Visible;

    pnlCTopicCode2Detail.Visible := b and
      (FieldByName('CTopicCode2Active').AsInteger = 1);
    qryFormItems_CTopicName2_L1.Required := pnlCTopicCode2Detail.Visible;

    pnlCTopicCode3Detail.Visible := b and
      (FieldByName('CTopicCode3Active').AsInteger = 1);
    qryFormItems_CTopicName3_L1.Required := pnlCTopicCode3Detail.Visible;

    // -------------------------set Budget---------------------------//
    pnlmasterBudject.Visible := FieldByName('BudgetCodePosition').AsInteger
      in [2, 3];
    b := FieldByName('BudgetCodePosition').AsInteger in [1, 2];
    setColumns2(DBGrid1, b, 'BudgetCode');
    setColumns2(DBGrid1, b, '_BudgetCode');
    setColumns2(DBGrid1, b, 'ProjectID');

    NReportFileName1.Hint := FieldByName('ReportFileName1').AsString;
    NReportFileName2.Hint := FieldByName('ReportFileName2').AsString;
    NReportFileName1.Visible := NReportFileName1.Hint <> '';
    NReportFileName2.Visible := NReportFileName2.Hint <> '';

    b := FieldByName('UpholdActive').AsInteger = 1;
    setColumns2(DBGrid1, b, 'ItemState');
    setColumns2(DBGrid1, b, 'ItemStateComment');
    setColumns2(DBGrid1, b, 'SeverableAmount');
    btnOtherMenu.Visible := b;

    grpMasterNote.Visible := FieldByName('NoteVisible').Value = 1;

    pnlRelatedRecipts.Visible := SetRelatedReciptTypes(qryInitForm,
      qryRelatedRecipts);
    FreeLookupUnUse(txt_RelatedRecipts);
    b := pnlRelatedRecipts.Visible;
    if b then
      SetRelatedReciptItemTypes(qryInitForm, qryRelatedReciptItems)
    else
      qryFormItems_ReciptItems_ID.Free;
    setColumns2(DBGrid1, b, 'ReciptItems_ID');
    setColumns2(DBGrid1, b, '_ReciptItems_ID');

    b := FieldByName('VATActive').AsInteger = 1;
    setColumns2(DBGrid1, b, 'VatCo');
    setColumns2(DBGrid1, b, 'VAT');
    setColumns2(DBGrid1, b, 'ItemAmount_VAT');

    actSeverable.Visible := FieldByName('UpholdActive').AsInteger = 1;

    b := Trim(FieldByName('ProcedureKindList').AsString) <> EmptyStr;
    setColumns2(DBGrid1, b, 'ProductCode');

    PostOverallType := FieldByName('PostOverallType').AsInteger;
    actPostOverallType.Visible := PostOverallType > 0;
    actPostOverallType.Caption :=
      FieldByName('_PostOverallTypeCaption').AsString;

    b := FieldByName('CashWageActive').Value > 0;
    setColumns2(DBGrid1, b, 'CashWage');

    initCombosArz;
    b := FieldByName('How2DisplayArzTypeID').AsInteger > 0;
    pnlArz.Visible := b;

    setColumns2(DBGrid1, b, 'ArzAmount');
    setColumns2(DBGrid1, FieldByName('How2DisplayArzTypeID').AsInteger = 2,
      'ArzAmount', aReadOnly);

    sOrderBy := 'ORDER BY FormDate,FormNumber';
    if FieldByName('OrderByFields').AsString <> EmptyStr then
      sOrderBy := 'ORDER BY ' + FieldByName('OrderByFields').AsString;

  end; // with

  pnlmasterBudject_AidInfo.Visible := (pnlAidInfo.Visible) or
    (pnlmasterBudject.Visible);
  with qryFormItems do
  begin
    Active := false;
    if qryInitForm.FieldByName('OrderByFieldsItem').AsString <> EmptyStr then
      SQL.Add('ORDER BY ' + qryInitForm.FieldByName
        ('OrderByFieldsItem').AsString)
  end;

  // -------------------------set qryForms---------------------------//
  with qryForms do
  begin
    // AfterScroll := nil;
    Active := false;
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

    Parameters.ParamByName('Type').Value := FormType;

  end;
  with qryAllForms do
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM Forms';
    SQL.Add('WHERE (FormType = :FormType)');
    SQL.Add('AND ( YearID = :YearID ) '); // AND ( ServerID = :ServerID )
    SQL.Add(IfThen(canShow, ' AND (CustomerID1 = :Cust)', ''));

    setChkUsersCustomersGroupsActive(qryAllForms);

    SQL.Add(sOrderBy);
    Parameters.ParamByName('FormType').Value :=
      qryInitForm.Parameters.ParamByName('Type').Value;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    qryFormItems.Parameters.ParamByName('YearID').Value := APPBank.Year;

    if (canShow) then
    begin
      if (SelectCustomerFDefaultCusID = 0) then
        SelectCustomerF.GetCustomer(Customer_ID,
          qryInitForm.FieldByName('Customer1Label').AsString,
          qryInitForm.FieldByName('CustomerKind1').AsString)
      else
        Customer_ID := SelectCustomerFDefaultCusID;
      Parameters.ParamByName('Cust').Value := Customer_ID;
    end; // if
    Active := True;
    Last;
  end; // wih

  UnsavedFileName := 'UnsavedItem_PaymentCashF' + IntToStr(FormType) + '.DAT';
  DBGrid1.SetFooter4Sum([]);
  ppDBPipelineSumGrid1.DataSource := DBGrid1.srcSum;
end;

procedure TPaymentCashF.ProcHow2DisplayArzTypeID;
var
  b: Boolean;
begin
  b := (qryInitForm.FieldByName('How2DisplayArzTypeID').AsInteger > 0) or
    (qryForms_AccountKind.AsInteger > 0);
  pnlArz.Visible := b;
end;

procedure TPaymentCashF.initCombosArz;
var
  How2DisplayArzTypeID: Integer;
begin
  with DMF.qryTmpTmp do
  begin
    How2DisplayArzTypeID := qryInitForm.FieldByName('How2DisplayArzTypeID')
      .AsInteger;
    if How2DisplayArzTypeID > 0 then
    begin
      Active := false;
      SQL.Text := 'SELECT CurrenciesID, CurrenciesName FROM Currencies';
      Active := True;
      while not eof do
      begin
        CmbArzTypeID.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));

        cmbArzTypeIDExchange.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));

        Next;
      end;
      edtArzRate.ReadOnly := How2DisplayArzTypeID <> 1;
      // EdtAmount.ReadOnly := How2DisplayArzTypeID = 2;
    end;
    Active := false;

  end; // with
end;

procedure TPaymentCashF.CheckUnsaved;
var
  i: SmallInt;
  aQry: TADOQuery;
begin

  if not FileExists(__AppData + UnsavedFileName) then
  begin
    // --------------display row---------------------------mary
    // qryFormItems.Insert;
    exit;
  end;
  if get_response('آيا مي خواهيد آخرين اطلاعات ثبت نشده بازخواني شود') <> mryes
  then
  begin
    DeleteFile(__AppData + UnsavedFileName);
    // ---------------display row
    // qryFormItems.Insert;
    exit;
  end; // if
  qryForms.FieldByName('CustomerID1').AsInteger := Customer_ID;
  aQry := TADOQuery.Create(Self);
  try
    aQry.LoadFromFile(__AppData + UnsavedFileName);
    with qryFormItems do
    begin
      AfterInsert := nil;
      BeforePost := nil;
      AfterScroll := nil;
      AfterPost := nil;
    end; // with
    with aQry do
    begin
      First;
      while not eof do
      begin
        qryFormItems.Append;
        for i := 0 to Fields.Count - 1 do
          if qryFormItems.FindField(Fields[i].FieldName) <> nil then
            if qryFormItems.FieldByName(Fields[i].FieldName).CanModify then
            begin
              qryFormItems.FieldByName(Fields[i].FieldName).AsVariant :=
                Fields[i].AsVariant;
            end;
        qryFormItems.FieldByName('FormID').AsInteger :=
          qryFormItems.FieldByName('FormID').AsInteger;
        qryFormItems.Post;
        Next;
      end; // while
    end; // with
  finally
    aQry.Free;
    qryFormItems.AfterInsert := qryFormItemsAfterInsert;
    qryFormItems.BeforePost := qryFormItemsBeforePost;
    qryFormItems.AfterPost := qryFormItemsAfterPost;

  end; // try
  // ----------- save to bank---------------------------------------mary
  if ((qryForms.State in dseditmodes) or (qryFormItems.State in dseditmodes))
  then
  begin
    qryForms.Post;
  end; // if
end;

procedure TPaymentCashF.qryFormsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  WorkFlowAfterDelete(qryForms);
  qryAllForms.Delete;
  BigMessage('حذف شد.', 1);
end;

procedure TPaymentCashF.qryFormsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryInitForm.FieldByName('DeleteLevelID'), qryForms) then
    Abort;
  if qryForms.FieldByName('FormState').AsInteger > 0 then
  begin
    Warn('فقط ' + qryInitForm.FieldByName('FormCaption').AsString +
      'ي كه نوع اطلاعات آن موقت است قابل حذف است‏', mtInformation);
    Abort;
  end;
  CheckItems(qryFormItems);
  WorkFlowBeforDelete(qryForms);
  if get_response('آيا براي حذف اين فرم و كليه سطرهاي آن مطمئن هستيد؟') <> mryes
  then
    Abort;
end;

procedure TPaymentCashF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // -------- move to newpanel
  if newPanel.Visible then
    BitBtn3.SetFocus
  else
    gridkeyenter(Sender, Key);
  // lblItemAmount.Caption:=key+lblItemAmount.Caption;
end;

procedure TPaymentCashF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: SmallInt;
  sqlText: String;
  results: array [0 .. 5] of String;
  b: Boolean;
begin
  inherited;
  try

    i := (Sender as TCedarDbgrid).SelectedIndex;
    aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
    (Sender as TCedarDbgrid).SelectedIndex := i;
    if not(aDataSet.State in dseditmodes) then
      aDataSet.Edit;

    if DBGrid1.Columns[i].FieldName = 'CustomerID2' then
    begin
      if qryInitForm.FieldByName('Customer2DetailKind').AsString = EmptyStr then
        Warn('مشتري 2 در Detail ارتباط داده نشده');
      sqlText := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
        ' WHERE GroupType IN(' +
        Trim(qryInitForm.FieldByName('Customer2DetailKind').AsString) + ')';

      if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'مشخصات دريافت كننده',
        sqlText, ['کد', 'نام دريافت كننده'], results, [50, 150], alLeft) then
      begin
        aDataSet.FieldByName('CustomerID2').AsString := results[0];
        aDataSet.FieldByName('_Cudtomername2').AsString := results[1];
      end; // if
    end;
    if DBGrid1.Columns[i].FieldName = 'BudgetCode' then
      AccSpeedButtonBudgetCode(aDataSet, 'BudgetCode');

    if DBGrid1.Columns[i].FieldName = 'TopicCode' then
      AccSpeedButtonTopicCode(aDataSet, 'TopicCode');

    if DBGrid1.Columns[i].FieldName = 'DetailCode' then
      AccSpeedButtonDetailCode(aDataSet, 'DetailCode', 'TopicCode');

    if DBGrid1.Columns[i].FieldName = 'CTopicCode' then
      AccSpeedButtonCTopicCode(aDataSet, 'CTopicCode', 'TopicCode');

    if DBGrid1.Columns[i].FieldName = 'CTopicCode2' then
      AccSpeedButtonCTopicCode2(aDataSet, 'CTopicCode2', 'CTopicCode', True,
        'TopicCode');

    if DBGrid1.Columns[i].FieldName = 'CTopicCode3' then
      AccSpeedButtonCTopicCode3(aDataSet, 'CTopicCode3', 'CTopicCode', True,
        'TopicCode', 'CTopicCode2');

    if DBGrid1.Columns[i].FieldName = 'ProductCode' then
      SpeedButtonProductCode(qryFormItems, qryInitForm);

    if DBGrid1.Columns[i].FieldName = 'ReciptItems_ID' then
    begin
      b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' فرم ها  ',
        qryRelatedReciptItems.SQL.Text, ['', 'شماره', 'شرح', 'تاریخ', 'کد کالا',
        'شرح کالا'], results, [0, 80, 300, 50, 60, 100], alLeft);
      if b then
      begin
        qryFormItems.FieldByName('ReciptItems_ID').AsString := results[0];
      end;
    end;

  except
    on e: Exception do
    begin
      add2log(e.Message);
    end;
  end;
end;

procedure TPaymentCashF.actPostOverallTypeExecute(Sender: TObject);
// var
// ParentFormID, ServerID, YearID: Integer;
begin
  inherited;
  // ParentFormID := qryForms.FieldByName('FormID').AsInteger;
  // ServerID := qryForms.FieldByName('ServerID').AsInteger;
  // YearID := qryForms.FieldByName('YearID').AsInteger;
  // GetCheckF.Enter(PostOverallType);
  // if not GetCheckF.qryAllForms.Locate('ParentFormID;ServerID;YearID',
  // VarArrayOf([ParentFormID, ServerID, YearID]), []) then
  // GetCheckF.qryMaster_Forms.Insert;
  // if GetCheckF.qryMaster_Forms.State in [dsInsert] then
  // GetCheckPostOverallTypeF.Enter(ParentFormID, ServerID, YearID);

  if GetCheckF.qryMaster_Forms.State in [dsInsert] then
    GetCheckPostOverallTypeF.Enter(FormType,
      qryInitForm.FieldByName('PostOverallTypeCall').AsInteger);

end;

procedure TPaymentCashF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.FieldByName('PrintLevelID'), qryForms) then
    Abort;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPaymentCashF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPaymentCashF.ppLabel11GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPaymentCashF.plblRecordCountGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := qryFormItems.RecordCount.ToString
end;

procedure TPaymentCashF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPaymentCashF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPaymentCashF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormItems);
end;

procedure TPaymentCashF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormItems);
end;

procedure TPaymentCashF.actStateChangeExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.FieldByName('ChangeStateLevelID'), qryForms) then
    Abort;
  StateChangeAction(qryForms)
end;

procedure TPaymentCashF.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.Enter(ADDKeyID(qryForms) + qryFormsFormID.AsString,
    Self.name, True);
end;

procedure TPaymentCashF.actWorkflowExecute(Sender: TObject);
begin
  inherited;
  if qryInitForm.FieldByName('WorkflowID').AsInteger > 0 then
    WorkflowDmF.RunSomeWorkflow(qryInitForm.FieldByName('WorkflowID').AsInteger,
      qryForms, ppReport1, qryInitForm.FieldByName('ReportFileName1').AsString,
      qryForms.FieldByName('FormNumber').AsString);

end;

procedure TPaymentCashF.actWorkflowHistoryFExecute(Sender: TObject);
begin
  inherited;
  WorkflowHistoryF.Enter(FormType, qryFormsFormID.AsInteger,
    qryFormsYearID.AsInteger, qryFormsServerID.AsInteger);

end;

procedure TPaymentCashF.SpeedButton18Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryForms, 'CTopicCode3', 'CTopicCode', True,
    'TopicCode')
end;

procedure TPaymentCashF.btnRelatedReciptsClick(Sender: TObject);
begin
  inherited;
  SBtnRelatedReciptTypes(qryRelatedRecipts.SQL.Text, qryForms)
end;

procedure TPaymentCashF.SpeedButton5Click(Sender: TObject);
var
  txt: String;
  result: array [0 .. 8] of String;
begin
  inherited;
  txt := 'SELECT Forms.FormID,Forms.ServerID,Forms.YearID,Forms.FormNumber, Forms.FormDate, Forms.CustomerID1, '
    + 'Customers.CustName,Forms.AidInfoNo, Forms.AidInfoDate ' +
    'FROM Forms LEFT OUTER JOIN FormTypes ON Forms.FormType = FormTypes.FormType '
    + ' LEFT OUTER JOIN Customers ON Forms.CustomerID1 = Customers.CustID ' +
    'WHERE (Forms.YearID =' + IntToStr(APPBank.Year) + ')AND Forms.FormType =' +
    IntToStr(FormType) + IfThen(canShow, ' And Forms.CustomerID1 =' +
    IntToStr(Customer_ID), '');
  if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'جستجو كد', txt,
    ['', '', '', 'شماره فرم', 'تاريخ فرم',
    'كد ' + Trim(qryInitForm.FieldByName('Customer1Label').AsString),
    'نام ' + Trim(qryInitForm.FieldByName('Customer1Label').AsString),
    'شماره كمكي', 'تاريخ كمكي'], result, [0, 0, 0, 50, 100, 100, 100, 100, 100],
    alLeft) then
    qryAllForms.Locate('FormID;ServerID;YearID',
      VarArrayOf([result[0], result[1], result[2]]), []);
end;

// procedure TPaymentCashF.DeleteCheck(ItemID:Integer);
// begin
// with dmF.qryTmpTmp do begin
// Active:=False;
// SQL.Text:='DELETE FROM FormItems WHERE FormItemID = '+IntToStr(ItemID);
// ExecSQL;
// end;//with
// end;

procedure TPaymentCashF.qryAllFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    qryForms.DisableControls;
    qryFormItems.DisableControls;
    // // ------------------------------ ADD NEW -------------------
    IF qryInitForm.FieldByName('Customer1Active').AsInteger = 1 THEN
      qryCustActive(qryCustomer1, DataSet.FieldByName('CustomerID1').AsInteger);

    IF qryInitForm.FieldByName('Customer2Active').AsInteger = 1 THEN
      qryCustActive(qryCustomer2, DataSet.FieldByName('CustomerID2').AsInteger);

    IF qryInitForm.FieldByName('Customer3Active').AsInteger = 1 THEN
      qryCustActive(qryCustomer3, DataSet.FieldByName('CustomerID3').AsInteger);

    //
    // // ------------------------------ ADD NEW -------------------

    with qryForms do
    begin
      Active := false;
      Parameters.ParamByName('FormID').Value := qryAllFormsFormID.AsInteger;
      Parameters.ParamByName('ServerID').Value := qryAllFormsServerID.AsInteger;
      Parameters.ParamByName('YearID').Value := qryAllFormsYearID.AsInteger;
      Active := True;
    end;
  finally
    qryForms.EnableControls;
    qryFormItems.EnableControls;
  end;

end;

procedure TPaymentCashF.qryFormItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TPaymentCashF.qryFormsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
    actStateChange.Caption := 'ثبت پيش نويس';
  FormStateAutoStateChange(qryInitForm, DataSet);

  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('OperatorID').AsInteger := user.id;
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('FormDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('Amount').AsInteger := 0;
  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('ProjectID').AsInteger := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('BudgetCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('CTopicCode3').AsInteger := 0;
  if (canShow) and (Customer_ID <> 0) then
    DataSet.FieldByName('CustomerID1').AsInteger := Customer_ID;
  DataSet.FieldByName('FormID').AsInteger :=
    GetANewID(DataSet, IntToStr(FormType), 'Forms', 'FormID', nil, 1);

  SetDefaultSellsMethodEmporium(qryForms, dblkcbb_SellsEmporium,
    dblkcbb_SellsMethod);
  GetFormNumber(IntToStr(FormType), qryInitForm, qryForms);

  edtFormNumber.SetFocus;
  IsInsert := qryForms.State = dsInsert;

  PaymentCashF.qryForms.FieldByName('CustomerID2').AsInteger := opt.CustomerID1;
  if pnlAidInfo.Visible then
  begin
    PaymentCashF.qryForms.FieldByName('AidInfoNo').AsString := opt.AidInfoNo;
    PaymentCashF.qryForms.FieldByName('AidInfoDate').AsString :=
      opt.AidInfoDate;
  end;

end;

procedure TPaymentCashF.srcFormsStateChange(Sender: TObject);
begin
  inherited;
  // ShowMessage('srcFormsStateChange');
  okPanel.Visible := qryForms.State in dseditmodes;

  if qryForms.State in dseditmodes then
  begin
    DBGrid1.Options := DBGrid1.Options - [dgMultiSelect] + [dgEditing]
  end
  else
  begin
    DBGrid1.Options := DBGrid1.Options + [dgMultiSelect];

  end;

  newPanel.Visible := not okPanel.Visible;
  btnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  pnlDelete.Visible := okPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, 'Forms', '', IntToStr(FormType));
  FreeReservedCodes(DMF.adcBSell, 'FormItems', '', IntToStr(FormType));
  lblReMainPerson.Visible := false;
  // if newPanel.Visible then  newPanel.SetFocus;

end;

procedure TPaymentCashF.qryFormItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('CTopicCode3').AsInteger := 0;
//  DataSet.FieldByName('CustomerID2').AsInteger := 0;

  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('FormItemID').AsInteger :=
    GetANewID(DataSet, IntToStr(FormType), 'FormItems', 'FormItemID',
    qryForms, 1);
  DataSet.FieldByName('Row').AsInteger := abs(DataSet.RecordCount + 1);
  DataSet.FieldByName('FormID').AsInteger := qryForms.FieldByName('FormID')
    .AsInteger;
  DataSet.FieldByName('PO').AsString := qryForms.FieldByName('PO').AsString;

  if opt.PayablePriceActive then
    PaymentCashF.qryFormItems.FieldByName('ItemAmount').AsCurrency :=
      opt.PayablePrice;

  // DataSet.FieldByName('ServerID').AsInteger:=qryForms.FieldByName('ServerID').AsInteger;
  // DataSet.FieldByName('YearID').AsInteger:=qryForms.FieldByName('YearID').AsInteger;
end;

procedure TPaymentCashF.qryFormsAfterScroll(DataSet: TDataSet);

begin
  inherited;

  with qryFormItems do
  begin
    Active := false;
    Parameters.ParamByName('FormID').Value := qryForms.FieldByName('FormID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Active := True;
  end; // with
  if DataSet.State = dsInsert then
    CheckUnsaved;

  AfterScrollAutoFormStateChange(actStateChange, qryInitForm, qryForms);
  ProcHow2DisplayArzTypeID;

end;

procedure TPaymentCashF.qryFormsAfterPost(DataSet: TDataSet);
var
  FormID, FormItemID, ServerID, YearID: Integer;
  s: string;
begin
  inherited;
  FormItemID := qryFormItemsFormItemID.AsInteger;
  if qryFormItems.State in dseditmodes then
    qryFormItems.Post;
  try
    qryFormItems.UpdateBatch;
    DeleteFile(__AppData + UnsavedFileName);
    BigMessage('ثبت شد.', 1);
  except
    on e: Exception do
    begin
      Warn(e.Message);
      DataToExcel(qryFormItems);
      // ReItemID(qryFormItems, qryForms, 'FormItems', 'FormItemID',        IntToStr(FormType), 1);
    end;
  end; // try
  FormID := qryFormsFormID.AsInteger;
  ServerID := qryFormsServerID.AsInteger;
  YearID := qryFormsYearID.AsInteger;

  s := qryFormItems.Sort;
  try
    qryForms.DisableControls;
    qryAllForms.AfterScroll := nil;
    qryAllForms.Requery();
  finally
    qryAllForms.AfterScroll := qryAllFormsAfterScroll;
    qryAllForms.Locate('FormID;YearID;ServerID',
      VarArrayOf([FormID, YearID, ServerID]), []);
    qryForms.EnableControls;
  end;

  // qryRecipts.BeforeCancel := qryReciptsBeforeCancel;
  qryFormItems.Sort := s;

  qryFormItems.Locate('FormItemID;FormID;ServerID;YearID',
    VarArrayOf([FormItemID, FormID, ServerID, YearID]), []);

  if qryInitForm.FieldByName('ValueVisible').Value = 1 then
    StatusBar1.Panels[0].Text :=
      CurrToStrF(CalcSumFileds(qryFormItems, 'ItemAmount'), ffCurrency, 0)
      + ' ريال ';
  if (qryInitForm.FieldByName('PrintAfterPost').AsInteger = 1) then
    N9.Click;
  WorkFlowSave(qryForms, 1, qryFormsFormID, FormType);

  if IsInsert then
    actWorkflow.Execute

end;

procedure TPaymentCashF.qryFormItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  Chk_CustomerActive(qryFormItems_Customer2Active, qryFormItemsCustomerID2);

  if DataSet.FindField('_TopicCodeName_L1') <> nil then
    DataSet.FieldByName('_TopicCodeName_L1').Required :=
      (Trim(DataSet.FieldByName('TopicCode').AsString) <> '0') and
      pnlTopicCodeDetails.Visible;;

  // if DataSet.FindField('_CTopicName_L1') <> nil then
  // DataSet.FieldByName('_CTopicName_L1').Required :=
  // Trim(DataSet.FieldByName('CTopicCode').AsString) <> '0';
  //
  // if DataSet.FindField('_CTopicName2_L1') <> nil then
  // DataSet.FieldByName('_CTopicName2_L1').Required :=
  // Trim(DataSet.FieldByName('CTopicCode2').AsString) <> '0';
  //
  // if DataSet.FindField('_CTopicName3_L1') <> nil then
  // DataSet.FieldByName('_CTopicName3_L1').Required :=
  // Trim(DataSet.FieldByName('CTopicCode3').AsString) <> '0';

  // if (qryFormItemsCheckNumber.AsString='') and (DataSet.State=dsInsert) then begin
  // DataSet.Cancel;
  // if (DataSet.RecordCount+1)<>1 then
  // qryForms.Post;
  // Abort;
  // end
  // else begin

  // qryFormsTopicCode.Tag := qryFormItemsTopicCode.AsLargeInt +
  // qryFormItemsDetailCode.AsLargeInt + qryFormItemsCTopicCode.AsLargeInt +
  // qryFormItemsCTopicCode2.AsLargeInt + qryFormItemsCTopicCode3.AsLargeInt;
  if not CheckRequiredFieldsFill(qryFormItems) then
  begin
    qryFormItems.Delete;
    qryForms.Edit;
    qryFormItems.Edit;
    exit;
  end;
  TrimStringFields(DataSet);

  qryFormItems.FieldByName('ItemStateComment').Required :=
    qryFormItems.FieldByName('ItemState').AsInteger = 1;
  if (not qryFormItems.FieldByName('ItemStateComment').Required) and
    (qryFormItems.FieldByName('ItemStateComment').AsString <> EmptyStr) then
  begin
    Warn('شرح عدم تائيد لازم نيست.‏');
    Abort;
  end;
  if qryFormItems.FieldByName('SeverableAmount').AsInteger = 1 then
    with DMF.qryTmpTmp do
    begin
      Active := false;
      SQL.Text := 'SELECT sum(Amount) FROM Severable';
      SQL.Add('WHERE FormItemID = :FormItemID');
      Parameters.ParamByName('FormItemID').Value :=
        qryFormItems.FieldByName('FormItemID').AsInteger;
      Active := True;
    end;

  if not CheckRequiredFields(qryFormItems) then
  begin
    if not(qryForms.State in dseditmodes) then
      qryForms.Edit;
    Abort;
  end;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  // end;//if

  if not ChkCustomerState(qryFormItems) then
    Abort;

end;

procedure TPaymentCashF.qryFormItemsCheckNumberChange(Sender: TField);
begin
  inherited;
  Sender.Tag := StrToInt64(Trim(Sender.AsString))
end;

procedure TPaymentCashF.qryFormsBeforePost(DataSet: TDataSet);
var
  AidInfoDate: String;
  FormDate: String;
begin
  inherited;
  if DataSet.FindField('_TopicCodeName_L1') <> nil then
    DataSet.FieldByName('_TopicCodeName_L1').Required :=
      (Trim(DataSet.FieldByName('TopicCode').AsString) <> '0') and
      pnlTopicCode.Visible;

  if qryFormItems.State in dseditmodes then
    qryFormItems.Post;
  TrimStringFields(qryForms);
  DataSet.FieldByName('ModifyDate').AsDateTime := now;
  if not ValidFormNumber(qryForms, qryInitForm) then
    Abort;
  if not ChkCustomerState(qryForms) then
    Abort;

  FormDate := qryForms.FieldByName('FormDate').AsString;
  AidInfoDate := qryForms.FieldByName('AidInfoDate').AsString;

  try
    if not pnlAidInfo.Visible then
      DataSet.FieldByName('AidInfoDate').AsString := '';
    if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear)
    then
      Abort;

    if not ValidateDatasetDatesForms(DataSet, qryInitForm) then
      Abort;

  finally
    DataSet.FieldByName('AidInfoDate').AsString := AidInfoDate;
  end;

  if not validate_date(false, APPBank.StartYear, APPBank.endYear, ' ', FormDate)
  then
  begin
    // if getresponseShow then
    edtFormDate.SetFocus;
    Abort;
  end; // if

  if not ReMain4post then
    Abort;

end;

function TPaymentCashF.ReMain4post: Boolean;
var
  c: Currency;
begin
  result := True;
  if qryInitForm.FieldByName('CheckEntity').AsInteger = 0 then
    exit;
  c := CalcSumFileds(qryFormItems, 'ItemAmount');
  if (qryInitForm.FieldByName('BedBes').AsInteger = 0) then
    c := c * -1;
  if ReMainPerson(c) < 0 then
  begin
    Warn('موجودي كافي نيست');
    result := false;
  end;

end;

function TPaymentCashF.ReMainPerson(NewReMain: Currency = 0): Currency;
begin
  result := NewReMain;
  With ProcReMainPerson do
  begin
    Active := false;
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
    result := result + Parameters.ParamByName('@RETURN_VALUE').Value;
    Active := false;
  end; // With
end;

procedure TPaymentCashF.SaveArticlesToFile;
begin
  qryFormItems.SaveToFile(__AppData + UnsavedFileName);
end;

procedure TPaymentCashF.qryFormItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryForms.State = dsInsert then
    SaveArticlesToFile;
  if qryInitForm.FieldByName('ValueVisible').Value = 1 then
    StatusBar1.Panels[0].Text :=
      CurrToStrF(CalcSumFileds(qryFormItems, 'ItemAmount'), ffCurrency, 0)
      + ' ريال ';

end;

procedure TPaymentCashF.N1Click(Sender: TObject);
begin
  inherited;
  with qryFormItems do
  begin
    if not(qryForms.State in [dsedit]) then
    begin
      Warn('ابتدا مد ويرايش را انتخاب كنيد');
      exit;
    end;
    First;
    while not(eof) do
    begin
      if not(State in [dsedit]) then
        Edit;
      FieldByName('FormID').AsInteger := qryForms.FieldByName('FormID')
        .AsInteger;
      FieldByName('BudgetCode').AsInteger := qryForms.FieldByName('BudgetCode')
        .AsInteger;
      FieldByName('ProjectID').AsInteger := qryForms.FieldByName('ProjectID')
        .AsInteger;
      FieldByName('TopicCode').AsString :=
        qryForms.FieldByName('TopicCode').AsString;
      FieldByName('DetailCode').AsString :=
        qryForms.FieldByName('DetailCode').AsString;
      FieldByName('CTopicCode').AsString :=
        qryForms.FieldByName('CTopicCode').AsString;
      FieldByName('CTopicCode2').AsString :=
        qryForms.FieldByName('CTopicCode2').AsString;
      FieldByName('CTopicCode3').AsString :=
        qryForms.FieldByName('CTopicCode3').AsString;
      Next;
    end; // while
  end; // with
end;

procedure TPaymentCashF.FormDestroy(Sender: TObject);
begin
  inherited;
  opt.PayablePriceActive := false;
  FreeMyComponent(Self, ['qrySellsEmporiums', 'qrySellsMethods', 'qryCust1',
    'qryCust2', 'qryCust3']);
  // SaveColWidth(DBGrid1, IntToStr(FormType));

end;

procedure TPaymentCashF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 4, True, IntToStr(FormType));
end;

procedure TPaymentCashF.FormShow(Sender: TObject);
begin
  inherited;
  DataSetItemDelette.Visible := not IsFlowFroms(1, FormType);
  DataSetDelete1_.Visible := DataSetItemDelette.Visible;

end;

// procedure TPaymentCashF.actDelete1Execute(Sender: TObject);
// var
// i:Integer;
// id: Integer;
// deletedCount: Integer;
// begin
// inherited;
// if DBGrid1.SelectedRows.Count>1 then begin
// with dmF.qryTmpTmp do begin
// Active:=False;
// SQL.Text:='select FormID from FormItems WHERE FormID='+qryForms.Fieldbyname('FormID').AsString;
// Active:=true;
// if   RecNo=-1 then begin
// Warn('ابتدا اطلاعات را تاييد كنيد و سپس اقدام به عمليات حذف مورد نظر نماييد..');
// Exit;
// end;//if
// end;//with
// if get_response('رديف حذف شده قابل بازگشت نمي باشدآيا براي حذف '+ inttostr(DBGrid1.SelectedRows.Count) +'انتخاب مطمئن هستيد؟')  = mryes then begin
// deletedCount:=0;
// for i:=0 to DBGrid1.SelectedRows.Count-1 do begin
// qryFormItems.GotoBookmark(pointer(DBGrid1.SelectedRows[i]));
// id:=qryFormItems.fieldbyname('FormItemID').AsInteger;
// DeleteCheck(id);
// inc(deletedCount);
// end;//for
// qryFormItems.Active:=False;
// qryFormItems.Active:=True;
// Warn(IntToStr(deletedCount) + ' رديف حذف شد. ');
// end;//if for get_response
// end else DataSetDelete1.Execute;
//
// end;

procedure TPaymentCashF.actselectCheckExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if qryForms.State in dseditmodes then
    qryForms.Post;
  if (canFilter) And (qryForms.FieldByName('CustomerID1').AsString = '') then
    exit;
  s := IfThen(canFilter, ' AND Forms.CustomerID1 = ' +
    qryForms.FieldByName('CustomerID2').AsString, '');
  ChooseChecksF.SelectChecks(qryInitForm, s, qryForms, qryFormItems)
  // if ChooseChecksF.SelectChecks(qryInitForm,s,
  // qryForms,qryFormItems)
  // then begin
  // qryFormItems.Requery;
  // qryForms.Edit;
  // qryFormItems.post;
  // end;//if
end;

procedure TPaymentCashF.N13Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  if qryForms.State in dseditmodes then
    qryForms.Post;
  if (canFilter) And (qryForms.FieldByName('CustomerID1').AsString = '') then
    exit;
  s := IfThen(canFilter, ' AND Forms.CustomerID1 = ' +
    qryForms.FieldByName('CustomerID2').AsString, '');
  if ChooseDiskF.SelectChecks(qryInitForm.FieldByName('RecallFormTypes')
    .AsString, s, FormType, qryForms) then
  begin
    qryFormItems.Requery;
    qryForms.Edit;
    qryForms.Post;
  end; // if

end;

procedure TPaymentCashF.spdSelectCheckClick(Sender: TObject);
begin
  inherited;
  PopChoose.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPaymentCashF.qryFormItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qryInitForm.FieldByName('ValueVisible').Value = 1 then
    StatusBar1.Panels[0].Text :=
      CurrToStrF(CalcSumFileds(qryFormItems, 'ItemAmount'), ffCurrency, 0)
      + ' ريال ';
end;

procedure TPaymentCashF.AllC_L_i_c_k_Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline1.RangeBegin := rbCurrentRecord;
        ppDBPipeline1.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppDBPipeline1.RangeBegin := rbFirstRecord;
        ppDBPipeline1.RangeEnd := reLastRecord;
      end;
  end;
  try
    qryForms.DisableControls;
    qryFormItems.DisableControls;
    if (Sender as TMenuItem).name = 'ItemState' then
      qryFormItems.Sort := (Sender as TMenuItem).name;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  finally
    AutoState__Change(qryInitForm, qryForms);
    qryFormItems.EnableControls;
    qryForms.EnableControls;
  end;

end;

procedure TPaymentCashF.qryFormItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryForms.State in dseditmodes) then
    Abort;
  if not CheckUserlevel(qryInitForm.FieldByName('EditLevelID'), qryForms) then
    Abort;

  OkDeleteEditCheck(qryFormItems);
  if not AllStateControls(qryForms, qryFormItems, qryInitForm, 'Form') then
    Abort;
end;

function TPaymentCashF.CheckRequiredFieldsFill(DataSet: TDataSet): Boolean;
var
  i: Integer;
begin
  result := True;
  for i := 0 to DataSet.FieldCount - 1 do
    if DataSet.Fields[i].Required then
      if DataSet.Fields[i].IsNull then
      begin
        result := false;
      end
      else
      begin
        result := True;
        Break;
      end; // if
end;

procedure TPaymentCashF.ppDBCalcSumItemAmountGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := num2alphabet(StrToInt64(RemoveComma(Text)));
end;

procedure TPaymentCashF.actReportsearchExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.Show(ppReport1, 'PaymentCash', Self)
end;

procedure TPaymentCashF.actRequestCashExecute(Sender: TObject);
begin
  inherited;
  RequestCashF.Enter(qryForms)
end;

procedure TPaymentCashF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 1;
end;

procedure TPaymentCashF.ALLDBEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('Btn' + (Sender as TDBEdit).DataField)).Click;
end;

procedure TPaymentCashF.qryFormsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if ChkFlowForms(qryForms) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryInitForm.FieldByName('EditLevelID'), qryForms) then
    Abort;
  if not AllStateControls(qryForms, qryFormItems, qryInitForm, 'Form') then
    Abort;
end;

procedure TPaymentCashF.qryFormsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.FieldByName('ADDLevelID'), qryForms) then
    Abort

end;

procedure TPaymentCashF.qryFormItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.FieldByName('ADDLevelID'), qryForms) then
    Abort;
  If not ADDItemChecked(qryForms) then
    Abort;
  if not CheckRequiredFields(qryForms) then
    Abort;
end;

procedure TPaymentCashF.actCopyFormExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.FieldByName('CopyFormLevelID'), qryForms)
  then
    Abort;
  CopyForm(qryInitForm, qryForms, qryFormItems, qryAllForms);
end;

procedure TPaymentCashF.actCopyPasteExecute(Sender: TObject);
var
  qry: TADOQuery;
  i: Byte;
begin
  inherited;
  if not CheckUserlevel(qryInitForm.FieldByName('CopyFormLevelID'), qryForms)
  then
    Abort;
  BigMessageProgBar('در حال كپي آرتيكل  ...‏', DBGrid1.Columns.Count - 1);
  if not(qryForms.State in dseditmodes) then
    qryForms.Edit;
  if (qryFormItems.State in dseditmodes) then
    qryFormItems.Post;
  qry := TADOQuery.Create(DMF);
  try
    with qry do
    begin
      Clone(qryFormItems, ltReadOnly);
      Filter := 'FormItemID=' + qryFormItems.FieldByName('FormItemID').AsString;
      Filtered := True;
      qryFormItems.Append;
      for i := 0 to DBGrid1.Columns.Count - 1 do
      begin
        if (not DBGrid1.Columns[i].ReadOnly) and (DBGrid1.Columns[i].Visible)
          and (qryFormItems.FieldByName(DBGrid1.Columns[i].FieldName)
          .FieldKind = fkData) then
          qryFormItems.FieldByName(DBGrid1.Columns[i].FieldName).Value :=
            FieldByName(DBGrid1.Columns[i].FieldName).Value;
        GoProgressBar(IntToStr(i));
      end;
      DBGrid1.SetFocus;
    end; // with
  finally
    qry.Free;
    BigMessage('آرتيكل كپي شد.‏', 1);
  end; // try
end;

procedure TPaymentCashF.qryFormsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryFormItems.Active then
  BEGIN
    if get_response('تغييرات لغو شوند؟') <> mryes then
      Abort;
    qryFormItems.Cancel;
    qryFormItems.Requery();
  END;
end;

procedure TPaymentCashF.AllPickListGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  col: TColumnEh;
begin
  inherited;
  if Sender.AsInteger < 0 then
    exit;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, Sender.FieldName)];
  Text := col.PickList.Strings[Sender.AsInteger];
end;

procedure TPaymentCashF.AllPickListSetText(Sender: TField; const Text: String);
var
  col: TColumnEh;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, Sender.FieldName)];
  Sender.AsInteger := col.PickList.IndexOf(Text);
end;

procedure TPaymentCashF.qryFormItemsItemAmountChange(Sender: TField);
var
  ArzAmount: Real;
begin
  inherited;
  if (pnlArz1.Visible) then
  begin
    qryFormItemsItemAmount.OnChange := nil;
    if qryFormsArzRate.AsFloat <> 0 then
      ArzAmount :=RoundTo( qryFormItemsItemAmount.AsFloat / qryFormsArzRate.AsFloat ,-4)
    else
      ArzAmount := 0;
    if qryFormItemsArzAmount.AsFloat <> ArzAmount then
      qryFormItemsArzAmount.AsFloat := ArzAmount;
    qryFormItemsItemAmount.OnChange := qryFormItemsItemAmountChange;
  end;

end;

procedure TPaymentCashF.qryFormItemsItemStateChange(Sender: TField);
begin
  inherited;
  // qryFormItems.FieldByName('ItemStateComment').ReadOnly:=Sender.AsInteger=0;
end;

procedure TPaymentCashF.qryFormItemsVatCoChange(Sender: TField);
begin
  inherited;
  qryFormItemsVAT.AsCurrency :=
    RoundTo(qryFormItemsVatCo.AsFloat * qryFormItemsItemAmount.AsInteger
    / 100, 0);
end;

procedure TPaymentCashF.actSeverableExecute(Sender: TObject);
begin
  inherited;
  FreeAndNil(Sev_);
  if qryFormItems.FieldByName('SeverableAmount').AsInteger = 1 then
    CreateChildForm(TSeverableF, SeverableF, Self, 0, alNone);
end;

procedure TPaymentCashF.btnOtherMenuMouseEnter(Sender: TObject);
begin
  inherited;
  Sev_ := SeverableF.ShowOnly(0);
end;

procedure TPaymentCashF.btnOtherMenuMouseLeave(Sender: TObject);
begin
  inherited;
  FreeAndNil(Sev_);
end;

procedure TPaymentCashF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if (opt.showBig) and (showBigOnField(Sender)) then
  begin
    aBigPanel.Visible := True;
    showBigNumDBGrid1ColEnter(Sender, aBigPanel, horoofPanel)
  end;
end;

procedure TPaymentCashF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if aBigPanel.Visible then
    aBigPanel.Visible := false
end;

procedure TPaymentCashF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if showBigOnField(DBGrid1) then
    if (DBGrid1.EditorMode) and (DBGrid1.InplaceEditor <> nil) then
      showBigNum(StrToCurrDef(RemoveComma(DBGrid1.InplaceEditor.Text), 0),
        aBigPanel, horoofPanel);

end;

procedure TPaymentCashF.edtCustomerID1DblClick(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  lblReMainPerson.Align := alRight;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      ReMainPersonPaymentCash4Thread(qryFormsCustomerID1, lblReMainPerson);
    end);
  T.FreeOnTerminate := True;
  T.Start;
end;

procedure TPaymentCashF.edtCustomerID2DblClick(Sender: TObject);
var
  T: TThread;
begin
  inherited;
  lblReMainPerson.Align := alLeft;
  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      ReMainPersonPaymentCash4Thread(qryFormsCustomerID2, lblReMainPerson);
    end);
  T.FreeOnTerminate := True;
  T.Start;

end;

procedure TPaymentCashF.edtCustomerID3KeyDown(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnCustomerID3.Click;
end;

procedure TPaymentCashF.qryFormItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if showBigOnField(DBGrid1) then
    showBigNum(DBGrid1.Columns[DBGrid1.SelectedIndex].Field.AsCurrency,
      aBigPanel, horoofPanel);

end;

procedure TPaymentCashF.qryFormItemsArzAmountChange(Sender: TField);
var
  r: Currency;
begin
  inherited;

  if (pnlArz1.Visible) then
  begin
    qryFormItemsArzAmount.OnChange := nil;
    r := RoundTo(qryFormItemsArzAmount.AsFloat * qryFormsArzRate.AsFloat, 0);
    if qryFormItemsItemAmount.AsCurrency <> r then
      qryFormItemsItemAmount.AsCurrency := r;
    qryFormItemsArzAmount.OnChange := qryFormItemsArzAmountChange;
  end;
end;

procedure TPaymentCashF.AllpdbtxtGetText(Sender: TObject; var Text: String);
var
  col: TColumnEh;
begin
  inherited;
  col := DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1,
    (Sender as TppDBText).DataField)];
  Text := col.PickList.Strings[(Sender as TppDBText).FieldValue];
end;

procedure TPaymentCashF.qryFormsCustomerID1Change(Sender: TField);
var
  T: TThread;
begin
  inherited;
  IF qryInitForm.FieldByName('Customer1Active').AsInteger = 1 THEN
    qryCustActive(qryCustomer1, Sender.AsInteger);

  // for  Change   PersonID
  qryFormsFormType.AsInteger := qryFormsFormType.AsInteger;
  // for  Change   PersonID

  T := TThread.CreateAnonymousThread(
    procedure()
    begin
      ReMainPersonPaymentCash4Thread(Sender, lblReMainPerson);
    end);
  T.FreeOnTerminate := True;

  ProcHow2DisplayArzTypeID;
end;

procedure TPaymentCashF.qryFormsCustomerID2Change(Sender: TField);
begin
  inherited;
  IF qryInitForm.FieldByName('Customer2Active').AsInteger = 1 THEN
    qryCustActive(qryCustomer2, Sender.AsInteger);
  // for  Change   PersonID
  qryFormsFormType.AsInteger := qryFormsFormType.AsInteger;
  // for  Change   PersonID

end;

procedure TPaymentCashF.qryFormsCustomerID3Change(Sender: TField);
begin
  inherited;
  IF qryInitForm.FieldByName('Customer3Active').AsInteger = 1 THEN
    qryCustActive(qryCustomer3, Sender.AsInteger);
  // for  Change   PersonID
  qryFormsFormType.AsInteger := qryFormsFormType.AsInteger;
  // for  Change   PersonID

end;

procedure TPaymentCashF.ReMainPersonPaymentCash4Thread(Sender: TField;
lblReMainPerson: TLabel);
begin
  lblReMainPerson.Visible := True;
  lblReMainPerson.Caption := 'در حال بررسی';
  lblReMainPerson.Caption := 'مانده=' +
    CurrToStrF(ReMainPersonPaymentCash((Sender as TField).Value,
    qryForms.FieldByName('FormDate').AsString, [1, 1, 2, 10]), ffCurrency, 0);

end;

procedure TPaymentCashF.ppLblReMainGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := CurrToStrF(ReMainPersonPaymentCash
    (qryForms.FieldByName((Sender as TppLabel).HyperLink).AsInteger,
    qryForms.FieldByName('FormDate').AsString, [1, 1, 2, 10]), ffCurrency, 0)
    + ' ريال '
end;

procedure TPaymentCashF.qryFormsFormStateGetText(Sender: TField;
var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetFormState(Sender.AsInteger)
end;

procedure TPaymentCashF.qryFormsPayTypesChange(Sender: TField);
begin
  inherited;
  IF qryInitForm.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 2
  then
  begin
    FreeReservedCodes(DMF.adcBSell, '', 'FormNumber', IntToStr(FormType));
    GetFormNumber(IntToStr(FormType), qryInitForm, qryForms)
  end;

end;

procedure TPaymentCashF.actItemNoteExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Note(qryFormItemsItemNote);
end;

procedure TPaymentCashF.actMakeDocumentShowExecute(Sender: TObject);
begin
  inherited;
  MakeDocumentShow(qryForms, qryInitForm)
end;

procedure TPaymentCashF.plblRemainGetText(Sender: TObject; var Text: String);
begin
  inherited;
  qryFormsCustomerID1Change(qryFormsCustomerID1);
  Text := lblReMainPerson.Caption
end;

procedure TPaymentCashF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryForms.Edit;
    GetExcelF.ShowImPortExcel(qryFormItems);
  finally
    qryFormItems.First;
  end;

end;

procedure TPaymentCashF.qryFormItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TPaymentCashF.qryFormsSellsEmporiumChange(Sender: TField);
begin
  inherited;
  IF qryInitForm.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 1
  then
  begin
    FreeReservedCodes(DMF.adcBSell, '', 'FormNumber', IntToStr(FormType));
    GetFormNumber(IntToStr(FormType), qryInitForm, qryForms);
  end;
end;

procedure TPaymentCashF.qryFormsTopicCodeChange(Sender: TField);
begin
  inherited;
  Sender.Tag := StrToInt64(Trim(Sender.AsString))
end;

procedure TPaymentCashF.plblArzGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := CmbArzTypeID.Text
end;

procedure TPaymentCashF.plblCmbPayTypesGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  Text := CmbPayTypes.Text
end;

procedure TPaymentCashF.plblCmbTopicTypesGetText(Sender: TObject;
var Text: string);
begin
  inherited;
  Text := CmbTopicTypes.Text
end;

procedure TPaymentCashF.CmbALLGetText(Sender: TField; var Text: String;
DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TPaymentCashF.CmbALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TPaymentCashF.DBnum2alphabetGetText(Sender: TObject;
var Text: String);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure TPaymentCashF.qryFormsArzTypeIDChange(Sender: TField);
begin
  inherited;
  With DMF.qryTmpTmp do
  begin
    Active := false;
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

    Active := false;
  end;
end;

procedure TPaymentCashF.qryFormsArzAmountChange(Sender: TField);
var
  r: Currency;
begin
  inherited;
  r := RoundTo(qryForms.FieldByName('ArzRate').AsFloat *
    (qryForms.FieldByName('ArzAmount').AsFloat), 0);
  if qryForms.FieldByName('Amount').AsCurrency <> r then
    qryForms.FieldByName('Amount').AsCurrency := r;

end;

procedure TPaymentCashF.mnu4allClick(Sender: TObject);
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
    AutoState__Change(qryInitForm, qryForms);
  end;
end;

end.
