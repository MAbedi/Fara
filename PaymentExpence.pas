unit PaymentExpence;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, DB, ADODB, ComCtrls, ppBands,
  ppClass, ppDB, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppVar, Menus, ppModule, ppTypes,
  SumDBGrid, math, ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde;

type
  TPaymentExpenceF = class(Ttemplate2MDIF)
    srcForms: TDataSource;
    qryForms: TADOQuery;
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
    qryForms_CTopicName: TStringField;
    qryForms_CTopicName2: TStringField;
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
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    qryCustomer: TADOQuery;
    qryFormItems: TADOQuery;
    qryFormItemsFormItemID: TIntegerField;
    qryFormItemsFormID: TIntegerField;
    qryFormItemsRow: TIntegerField;
    qryFormItemsCheckNumber: TStringField;
    qryFormItemsCheckDate: TStringField;
    qryFormItemsCheckType: TWordField;
    qryFormItemsItemAmount: TBCDField;
    qryFormItemsItemNote: TStringField;
    qryFormItemsBankName: TStringField;
    qryFormItemsAccountNumber: TStringField;
    qryFormItemsCity: TStringField;
    qryFormItemsCustomerID2: TIntegerField;
    qryFormItemsDetailCode: TStringField;
    qryFormItemsCTopicCode: TStringField;
    qryFormItemsCTopicCode2: TStringField;
    qryFormItemsBudgetCode: TIntegerField;
    qryFormItemsProjectID: TIntegerField;
    qryFormItemspreFormItemID: TIntegerField;
    qryFormItemsAidInfoNo: TStringField;
    qryFormItemsAidInfoDate: TStringField;
    qryFormItems_Cudtomername2: TStringField;
    actEdit: TAction;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    edtFormNumber: TDBEdit;
    DBEdit2: TDBEdit;
    actDelete1: TAction;
    actselectCheck: TAction;
    qryFormsDocNo: TIntegerField;
    qryFormsDocDate: TStringField;
    BitBtn10: TBitBtn;
    qryFormsCTopicCode2: TStringField;
    popprint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    AllC_L_i_c_k_: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    qryFormsModifyDate: TDateTimeField;
    N32: TMenuItem;
    ppDetailBand1: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText23: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppDBText21: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalcSumItemAmount: TppDBCalc;
    ppPageStyle1: TppPageStyle;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBText11: TppDBText;
    ppLabel3: TppLabel;
    ppLine9: TppLine;
    ppLine6: TppLine;
    ppLine16: TppLine;
    ppLabel1: TppLabel;
    ppDBText10: TppDBText;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppShape3: TppShape;
    ppLabel15: TppLabel;
    ppLabel13: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppDBCalc2: TppDBCalc;
    qryFormItems_CTopicName_L1: TStringField;
    qryFormItems_CTopicName2_L1: TStringField;
    qryFormItems_DetailsName_L1: TStringField;
    qryFormItems_TopicCodeName_L1: TStringField;
    NReportFileName1: TMenuItem;
    NReportFileName2: TMenuItem;
    actReportsearch: TAction;
    Panel5: TPanel;
    pnlCustomer1: TPanel;
    lbcustomer1: TLabel;
    SpeedButton11: TSpeedButton;
    edtCustomerID1: TDBEdit;
    DBEdit11: TDBEdit;
    pnlCustomer2: TPanel;
    lbcustomer2: TLabel;
    SpeedButton7: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    PageControl1: TPageControl;
    tbsAsnad: TTabSheet;
    DBGrid1: TDBGrid;
    pnlDelete: TPanel;
    SpeedButton16: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit18: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit26: TDBEdit;
    tbsFish: TTabSheet;
    tbsCheck: TTabSheet;
    pnlManegeComment: TPanel;
    edtAmountMaster: TDBEdit;
    lblAmountMaster: TLabel;
    edtAidInfoDate: TDBEdit;
    LblAidInfoDate: TLabel;
    edtAidInfoNo: TDBEdit;
    LblAidInfoNo: TLabel;
    qryForms_CustomerName2: TStringField;
    qryFormsManegerNote: TStringField;
    qryFormItemsAccState: TWordField;
    qryFormItems_AccStateDefault: TIntegerField;
    SumGrid1: TSumGrid;
    srcFormsDetail: TDataSource;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DBGrid2: TDBGrid;
    qryDetail_Item: TADOQuery;
    qryDetail_ItemFormItemID: TIntegerField;
    qryDetail_ItemFormID: TIntegerField;
    qryDetail_ItemRow: TIntegerField;
    qryDetail_ItemCheckNumber: TStringField;
    qryDetail_ItemCheckDate: TStringField;
    qryDetail_ItemCheckType: TWordField;
    qryDetail_ItemItemAmount: TBCDField;
    qryDetail_ItemItemNote: TStringField;
    qryDetail_ItemBankName: TStringField;
    qryDetail_ItemCity: TStringField;
    qryDetail_ItemDetailCode: TStringField;
    qryDetail_ItemCustomerID2: TIntegerField;
    qryDetail_ItemCTopicCode: TStringField;
    qryDetail_ItemBudgetCode: TIntegerField;
    qryDetail_ItempreFormItemID: TIntegerField;
    qryDetail_ItemAccountNumber: TStringField;
    qryDetail_ItemProjectID: TIntegerField;
    qryDetail_ItemAidInfoNo: TStringField;
    qryDetail_ItemAidInfoDate: TStringField;
    qryDetail_ItemCTopicCode2: TStringField;
    qryDetail_Item_CustomerID2: TStringField;
    qryDetail_ItemFirstUser: TStringField;
    qryDetail_ItemLastUser: TStringField;
    qryDetail_ItemCheckFor: TStringField;
    qryDetail_ItemAmountArz: TFloatField;
    qryDetail_ItemCashWage: TBCDField;
    srcDetail_Item: TDataSource;
    Panel10: TPanel;
    Panel11: TPanel;
    pnl1: TPanel;
    DataSetInsert3: TDataSetInsert;
    DataSetEdit3: TDataSetEdit;
    DataSetPost3: TDataSetPost;
    DataSetCancel3: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    DataSetInsert4: TDataSetInsert;
    DataSetEdit4: TDataSetEdit;
    DataSetPost4: TDataSetPost;
    DataSetCancel4: TDataSetCancel;
    DataSetDelete3: TDataSetDelete;
    DBGridCheck: TDBGrid;
    qryFormsPayTypes: TIntegerField;
    qryFormsTopicTypes: TIntegerField;
    qryFormsServerID: TIntegerField;
    qryFormsYearID: TIntegerField;
    qryFormItemsServerID: TIntegerField;
    qryFormItemsYearID: TIntegerField;
    qryDetail_ItemServerID: TIntegerField;
    qryDetail_ItemYearID: TIntegerField;
    qryDetail_ItemAccountNumberNew: TStringField;
    btnExcel: TBitBtn;
    actPrintCheck: TAction;
    grpDetailNote: TGroupBox;
    DBMemo5: TDBMemo;
    BitBtn15: TBitBtn;
    qryDetail_ItemFormNumber: TIntegerField;
    qryDetail_ItemFormDate: TStringField;
    qryDetail_ItemCustomerID1: TIntegerField;
    btnRecal: TBitBtn;
    qryDetail_ItemCashCheckFormID: TIntegerField;
    qryFormsDetail: TADOQuery;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    tbsLoan: TTabSheet;
    tbsCheckT: TTabSheet;
    Panel7: TPanel;
    btnLoans: TBitBtn;
    Panel8: TPanel;
    btnGuaranteesFormID: TBitBtn;
    qryDetail_ItemT: TADOQuery;
    srcDetail_ItemT: TDataSource;
    DBGridCheckT: TDBGrid;
    qryDetail_ItemTFormNumber: TIntegerField;
    qryDetail_ItemTFormDate: TStringField;
    qryDetail_ItemTCustomerID1: TIntegerField;
    qryDetail_ItemTFormItemID: TIntegerField;
    qryDetail_ItemTFormID: TIntegerField;
    qryDetail_ItemTRow: TIntegerField;
    qryDetail_ItemTCheckNumber: TStringField;
    qryDetail_ItemTCheckDate: TStringField;
    qryDetail_ItemTCheckType: TWordField;
    qryDetail_ItemTItemAmount: TBCDField;
    qryDetail_ItemTItemNote: TStringField;
    qryDetail_ItemTBankName: TStringField;
    qryDetail_ItemTServerID: TIntegerField;
    qryDetail_ItemTYearID: TIntegerField;
    qryDetail_ItemTCity: TStringField;
    qryDetail_ItemTDetailCode: TStringField;
    qryDetail_ItemTCustomerID2: TIntegerField;
    qryDetail_ItemTCTopicCode: TStringField;
    qryDetail_ItemTBudgetCode: TIntegerField;
    qryDetail_ItemTpreFormItemID: TIntegerField;
    qryDetail_ItemTAccountNumber: TStringField;
    qryDetail_ItemTProjectID: TIntegerField;
    qryDetail_ItemTAidInfoNo: TStringField;
    qryDetail_ItemTAidInfoDate: TStringField;
    qryDetail_ItemTCTopicCode2: TStringField;
    qryDetail_ItemT_CustomerID2: TStringField;
    qryDetail_ItemTFirstUser: TStringField;
    qryDetail_ItemTCashCheckFormID: TIntegerField;
    qryDetail_ItemTLastUser: TStringField;
    qryDetail_ItemTCheckFor: TStringField;
    qryDetail_ItemTAmountArz: TFloatField;
    qryDetail_ItemTCashWage: TBCDField;
    qryDetail_ItemTAccountNumberNew: TStringField;
    qryLoan: TADOQuery;
    IntegerField7: TIntegerField;
    IntegerField9: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    BCDField2: TBCDField;
    StringField11: TStringField;
    IntegerField10: TIntegerField;
    qryFormItemsCashWage: TBCDField;
    srcLoan: TDataSource;
    DBGrid3: TDBGrid;
    qryLoanFormNumber: TIntegerField;
    qryLoanFormDate: TStringField;
    qryLoanCustomerID1: TIntegerField;
    qryLoanLoansFormID: TIntegerField;
    qryLoanServerID: TIntegerField;
    qryLoanYearID: TIntegerField;
    Panel9: TPanel;
    GrpNote: TGroupBox;
    DBMemo1: TDBMemo;
    GrpCommand: TGroupBox;
    DBMemo3: TDBMemo;
    qryLoanFormID: TIntegerField;
    qryDetail_ItemTCustName: TStringField;
    qryDetail_ItemCustName2: TStringField;
    pnlAidSubAmountCaption: TPanel;
    lblAidInfo2NoCaption: TLabel;
    edtAidInfoNo2: TDBEdit;
    qryFormsSubAmount: TBCDField;
    pnlAidInfo2NoCaption: TPanel;
    pnlSubAmountCaption: TPanel;
    edtSubAmount: TDBEdit;
    lblSubAmountCaption: TLabel;
    lblAidInfo2NoCaptionDate: TLabel;
    edtAidInfoDate2: TDBEdit;
    qryFormsAidInfoDate2: TStringField;
    qryFormsAidInfoNo2: TFloatField;
    pdbLoan: TppDBPipeline;
    pdbDetail_Item: TppDBPipeline;
    pdbDetail_ItemT: TppDBPipeline;
    pdbFormsDetail: TppDBPipeline;
    qryLoan_CustomerName: TStringField;
    qryLoan_CustomerName2: TStringField;
    qryLoanAidInfoNo: TStringField;
    qryLoanAidInfoDate: TStringField;
    qryLoanAccountNumberNew: TStringField;
    qryLoanAmountArz: TFloatField;
    qryLoanCheckState: TWordField;
    qryLoanCheckFor: TStringField;
    qryLoanAccState: TWordField;
    qryLoanItemState: TWordField;
    qryLoanItemStateComment: TWideStringField;
    qryLoanSeverableAmount: TWordField;
    qryLoanVAT: TBCDField;
    qryLoanTopicTypesI: TIntegerField;
    qryLoanAccountNumberNew1: TStringField;
    qryLoanItemAmount_CashWage: TBCDField;
    qryFormsTopicCode: TLargeintField;
    qryDetail_ItemTopicCode: TLargeintField;
    qryFormItemsTopicCode: TLargeintField;
    qryDetail_ItemTTopicCode: TLargeintField;
    actViewFileF: TAction;
    BitBtn6: TBitBtn;
    Panel12: TPanel;
    BitBtn11: TBitBtn;
    actStateChange: TAction;
    qryFormsFormState2: TWordField;
    txtFormState: TDBText;
    actRequestCash: TAction;
    qryFormsOperatorID: TIntegerField;
    qryRelatedRecipts: TADOQuery;
    qryForms_RelatedRecipts: TStringField;
    qryFormsRelatedRecipts: TStringField;
    qryFormsReciptID: TIntegerField;
    qryRelatType: TADOQuery;
    qryRelatTypeFormType: TWordField;
    qryRelatTypeFormCaption: TStringField;
    qryRelatTypeDisplayFormType: TWordField;
    popRelatType: TPopupMenu;
    mnuGetOtherMoney: TMenuItem;
    mnuPaymentCash: TMenuItem;
    mnuGetCheck: TMenuItem;
    mnuLoan: TMenuItem;
    mnuPaymentCashF: TMenuItem;
    SpeedButton1: TSpeedButton;
    actOther: TAction;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    actCallGetCheck: TAction;
    actCallGetOtherMoney: TAction;
    actCallLoan: TAction;
    qryFormsDetailFormID: TIntegerField;
    qryFormsDetailFormType: TWordField;
    qryFormsDetailFormNumber: TIntegerField;
    qryFormsDetailFormDate: TStringField;
    qryFormsDetailCustomerID1: TIntegerField;
    qryFormsDetail_CustomerID1: TStringField;
    qryFormsDetailCustomerID2: TIntegerField;
    qryFormsDetail_CustomerID2: TStringField;
    qryFormsDetailAmount: TBCDField;
    qryFormsDetailBudgetCode: TIntegerField;
    qryFormsDetailServerID: TIntegerField;
    qryFormsDetailYearID: TIntegerField;
    qryFormsDetailTopicCode: TLargeintField;
    qryFormsDetailDetailCode: TStringField;
    qryFormsDetailCTopicCode: TStringField;
    qryFormsDetailFomNote: TStringField;
    qryFormsDetailProjectID: TIntegerField;
    qryFormsDetailAidInfoNo: TStringField;
    qryFormsDetailAidInfoDate: TStringField;
    qryFormsDetailCTopicCode2: TStringField;
    qryFormsDetailCustomerName2: TStringField;
    qryFormsDetailPayTypes: TWordField;
    qryFormsDetailTopicTypes: TWordField;
    qryFormsDetailFormState: TWordField;
    qryFormsDetailFirstUser: TStringField;
    qryFormsDetailLastUser: TStringField;
    qryFormsDetailModifyDate: TDateTimeField;
    qryFormsDetailCashCheckFormID: TIntegerField;
    qryFormTypes: TADOQuery;
    qryFormTypesFormType: TWordField;
    qryFormTypesFormCaption: TStringField;
    qryDetail_ItemFormType: TWordField;
    pnlRelatedRecipts: TPanel;
    btnRelatedRecipts: TSpeedButton;
    Label5: TLabel;
    txt_RelatedRecipts: TDBText;
    edtRelatedRecipts: TDBEdit;
    qryDetail_ItemCustName1: TStringField;
    qryDetail_ItemCustomerID2D: TIntegerField;
    qryDetail_ItemCustName2D: TStringField;
    qryDetail_ItemPayTypeName: TStringField;
    qryDetail_ItemTopicTypeName: TStringField;
    qryDetail_ItemTCustName2: TStringField;
    qryDetail_ItemTCustomerID2D: TIntegerField;
    qryDetail_ItemTCustNameD: TStringField;
    qryLoanCustomerID2D: TIntegerField;
    qryLoanCustomerNameD2: TStringField;
    qryLoanReciptCaption: TStringField;
    qryLoanReciptNumber: TIntegerField;
    qryLoanStuffCode: TLargeintField;
    qryLoanc_StuffName: TStringField;
    qryLoanTotalPrice: TBCDField;
    qryLoanTaxCo: TFloatField;
    qryLoanTaxValue: TBCDField;
    qryLoanTotallSellPrice: TBCDField;
    qryLoanPayTypeName: TStringField;
    qryFormsMachineNo: TStringField;
    edtMachineNo: TDBEdit;
    lblMachineNo: TLabel;
    procedure qryFormItemsAfterDelete(DataSet: TDataSet);
    procedure qryFormItemsAfterInsert(DataSet: TDataSet);
    procedure qryFormItemsBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure srcFormsStateChange(Sender: TObject);
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
    procedure N1Click(Sender: TObject);
    procedure qryFormsBeforeCancel(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AllC_L_i_c_k_Click(Sender: TObject);
    procedure qryFormItemsBeforeEdit(DataSet: TDataSet);
    procedure ppDBCalcSumItemAmountGetText(Sender: TObject; var Text: String);
    procedure actReportsearchExecute(Sender: TObject);
    procedure qryFormItemsAccStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFormItemsAccStateSetText(Sender: TField; const Text: String);
    procedure qryFormItemsCustomerID2Change(Sender: TField);
    procedure edtCustomerID1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDetail_ItemCheckTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CmbALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CmbALLSetText(Sender: TField; const Text: String);
    procedure btnExcelClick(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure btnRecalClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnLoansClick(Sender: TObject);
    procedure btnGuaranteesFormIDClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actViewFileFExecute(Sender: TObject);
    procedure qryFormItemsBeforeInsert(DataSet: TDataSet);
    procedure actStateChangeExecute(Sender: TObject);
    procedure qryFormsFormState2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actRequestCashExecute(Sender: TObject);
    procedure btnRelatedReciptsClick(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actCallGetCheckExecute(Sender: TObject);
    procedure actCallGetOtherMoneyExecute(Sender: TObject);
    procedure actCallLoanExecute(Sender: TObject);
    procedure SButClick(Sender: TObject);
    procedure qryFormsDetailFormTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    QInit, QInitCheck, QInitCheckT, QInitCash: TADOQuery;
    FormType: Integer;
    CheckType: Integer;
    CashType: Integer;
    LoansType: Integer;
    GuaranteesType: Integer;
    CustomerID: Integer;
    canShow: Boolean;
    canFilter: Boolean;
    Cus2DetailAsMaster: Boolean;
    ActiveFormslocate: Boolean;

    DbgrdOption: set of TDBGridOption;
    RelationshipFormTypes: string;
    procedure myInitReportFile(GeneralFileName: string);
    procedure AccCode(QInit: TADOQuery; Sender: TField; Flag: Byte = 1);
    procedure initForm;
    function CheckRequiredFieldsFill(DataSet: TDataSet): Boolean;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    // function ReadLookUps(Kind: Integer = 0; Code: Integer = 1;
    // DefaultValue: string = ''): string;
    Procedure InitCheck(qryinit: TADOQuery; DBGrid: TDBGrid);
    Procedure InitCash;
    procedure Formslocate;
    function SumChecked: Boolean;
    procedure initRelationshipFormTypes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentExpenceF: TPaymentExpenceF;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro, sndkey32, FormFunctions, search2,
  sort2, StrUtils, ChooseChecks, ChooseDisk, searchReports, FaraConsts,
  GetExcel, GetCheck, RecallAcc, GetOtherMoney, Loan,  RequestCash,
  mdiMain, main, ViewFileOnServer;

{$R *.dfm}

procedure TPaymentExpenceF.CmbALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.DataSet.Name +
    Sender.FieldName)).Items
    [TDBComboBox(FindComponent('Cmb' + Sender.DataSet.Name + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TPaymentExpenceF.CmbALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.DataSet.Name +
    Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.DataSet.Name + Sender.FieldName))
    .ItemIndex]);
end;

procedure TPaymentExpenceF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := IfThen(aDataSet.FieldByName('AidInfoDate').AsString <>
              EmptyStr, 2, -2);
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 7;
          7:
            nextIndex := 8;
          8:
            nextIndex := 9;
          9:
            nextIndex := 10;
          10:
            nextIndex := 11;
          11:
            nextIndex := 12;
          12:
            nextIndex := 13;
          13:
            nextIndex := -1;
        end; // case
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
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if curIndex in [3, 7, 8, 9, 10, 11, 12] then
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
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          (Sender as TDBGrid).SelectedIndex := 1;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TPaymentExpenceF.qryFormItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از حذف مطمئن هستيد.') <> mryes then
    Abort;
end;

procedure TPaymentExpenceF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryForms, 'CTopicCode', 'TopicCode')
end;

procedure TPaymentExpenceF.SpeedButton4Click(Sender: TObject);
var
  // txt:  String;
  // b:Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'جستجو مشتري',
    'SELECT dbo.Customers.CustID,dbo.Customers.CustName FROM dbo.Customers LEFT OUTER JOIN '
    + 'dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID '
    + ' WHERE dbo.CustomersGroup.GroupType IN(' +
    Trim(QInitCheck.FieldByName('Customer2DetailKind').AsString) + ')' +
    IfThen(QInitCheck.FieldByName('UserSecurityCheckActive').AsInteger  in[1,3],
    'AND dbo.ChkUser(Customers.OperatorID,' + IntToStr(user.id) + ')=1', ''),
    ['كد', Trim(QInitCheck.FieldByName('Customer2Lable').AsString)], Results,
    [60, 250], alLeft) then
  begin
    if not(qryDetail_Item.State in dseditmodes) then
      qryDetail_Item.edit;
    qryDetail_Item['CustomerID2'] := Results[0];

  end;
end;

procedure TPaymentExpenceF.SpeedButton11Click(Sender: TObject);
var
  txt, Custkind: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Custkind := IfThen((Sender as TSpeedButton).Tag = 1, 'CustomerKind1',
    'CustomerKind2');
  txt := 'SELECT dbo.Customers.CustID,dbo.Customers.CustName FROM dbo.Customers LEFT OUTER JOIN '
    + ' dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID '
    + ' WHERE dbo.CustomersGroup.GroupType IN(' +
    Trim(QInit.FieldByName(Custkind).AsString) + ')' +
    IfThen(QInit.FieldByName('UserSecurityCheckActive').AsInteger  in[1,3],
    ' AND dbo.ChkUser(Customers.OperatorID,' + IntToStr(user.id) + ')=1', '');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    Trim(QInit.FieldByName('Customer1Label').AsString) + 'ها', txt,
    ['کد', 'نام ' + Trim(QInit.FieldByName('Customer1Label').AsString) + ''],
    Results, [50, 150], alLeft);
  if b then
  begin
    // if not (qryForms.state in dsEditModes) then   qryForms.edit;
    case (Sender as TSpeedButton).Tag of
      1:
        qryForms['CustomerID1'] := Results[0];
      2:
        qryForms['CustomerID2'] := Results[0];
    end;
  end; // ifend;
end;

procedure TPaymentExpenceF.SButClick(Sender: TObject);
begin
  inherited;
  actOther.Tag := (Sender as TSpeedButton).Tag;
  actOther.Execute
end;

procedure TPaymentExpenceF.btnRelatedReciptsClick(Sender: TObject);
begin
  inherited;
  SBtnRelatedReciptTypes(qryRelatedRecipts.SQL.Text, qryForms)
end;

// procedure TPaymentExpenceF.CheckUnsaved;
// var
// i:  Smallint;
// aQry: TADOQuery;
// begin
//
// if not FileExists(__AppData + UnsavedFileName) then
// begin
/// /--------------display row---------------------------mary
// qryFormItems.Insert;
// exit;
// end;
// if get_response('آيا مي خواهيد آخرين اطلاعات ثبت نشده بازخواني شود')<>mrYes then begin
// DeleteFile(__AppData + UnsavedFileName);
/// /---------------display row
// qryFormItems.Insert;
// exit;
// end;//if
// aQry:=TADOQuery.Create(Self);
// try
// aQry.LoadFromFile(__AppData + UnsavedFileName);
// with qryFormItems do begin
// AfterInsert:=nil;
// BeforePost:=nil;
// AfterScroll:=nil;
// AfterPost:=nil;
// end;//with
// with aQry do begin
// First;
// while not Eof do begin
// qryFormItems.Append;
// for i:=0 to Fields.Count-1 do
// if qryFormItems.FieldByName(Fields[i].FieldName).CanModify then begin
// qryFormItems.FieldByName(Fields[i].FieldName).AsString:=Fields[i].AsString;
// end;
// qryFormItems.FieldByName('FormID').AsInteger:=qryFormItems.FieldByName('FormID').AsInteger;
// qryFormItems.Post;
// Next;
// end;//while
// end;//with
// finally
// aQry.Free;
// qryFormItems.AfterInsert:=qryFormItemsAfterInsert;
// qryFormItems.BeforePost:=qryFormItemsBeforePost;
// qryFormItems.AfterPost:=qryFormItemsAfterPost;
//
// end;//try
/// /----------- save to bank---------------------------------------mary
// if ((qryForms.State in dseditModes) or (qryFormItems.State in dseditModes)) then begin
// qryForms.post;
// end;//if
// end;

procedure TPaymentExpenceF.qryFormsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TPaymentExpenceF.qryFormsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mryes then
    Abort;
end;

procedure TPaymentExpenceF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // -------- move to newpanel
  if newPanel.Visible then
    BitBtn3.SetFocus
  else
    gridkeyenter(Sender, Key);
end;

procedure TPaymentExpenceF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  TmpChar: Char;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 5] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.edit;
  case i of
    3:
      begin
        sqlText :=
          'SELECT dbo.Customers.CustID,dbo.Customers.CustName FROM dbo.Customers LEFT OUTER JOIN '
          + ' dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID '
          + ' WHERE dbo.CustomersGroup.GroupType IN(' +
          Trim(QInit.FieldByName('CustomerKind2').AsString) + ')';

        if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشخصات دريافت كننده',
          sqlText, ['کد', 'نام دريافت كننده'], Results, [50, 150], alLeft) then
        begin
          aDataSet.FieldByName('CustomerID2').AsString := Results[0];
          aDataSet.FieldByName('_Cudtomername2').AsString := Results[1];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end; // 6

    8:
      begin
        AccSpeedButtonTopicCode(aDataSet, 'TopicCode');
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end;
    9:
      begin
        AccSpeedButtonDetailCode(aDataSet, 'DetailCode', 'TopicCode');
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end;
    10:
      begin
        AccSpeedButtonCTopicCode(aDataSet, 'CTopicCode', 'TopicCode');
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end;
    11:
      begin
        AccSpeedButtonCTopicCode(aDataSet, 'CTopicCode2', 'CTopicCode');
        TmpChar := #13;
        gridkeyenter(Sender, TmpChar);
      end;
  end; // case

end;

procedure TPaymentExpenceF.actOtherExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to popRelatType.Items.Count - 1 do
    popRelatType.Items[i].Visible := popRelatType.Items[i].Tag = actOther.Tag;
  popRelatType.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPaymentExpenceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popprint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TPaymentExpenceF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPaymentExpenceF.ppLabel11GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPaymentExpenceF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPaymentExpenceF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPaymentExpenceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormItems);
end;

procedure TPaymentExpenceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormItems);
end;

procedure TPaymentExpenceF.actStateChangeExecute(Sender: TObject);
begin
  inherited;
//  if not CheckUserlevel(qryinit.FieldByName('ChangeStateLevelID'), qryForms) then
//    Abort;
  StateChangeAction(qryForms)
end;

procedure TPaymentExpenceF.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.enter(ADDKeyID(qryForms) + qryFormsFormID.AsString,
    'PaymentExpenceFiles', True);
end;

procedure TPaymentExpenceF.SpeedButton5Click(Sender: TObject);
var
  txt: String;
  result: array [0 .. 5] of String;
begin
  inherited;
  txt := 'SELECT Forms.FormID,dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.Forms.CustomerID1, '
    + 'dbo.Customers.CustName,dbo.Forms.AidInfoNo, dbo.Forms.AidInfoDate ' +
    'FROM dbo.Forms LEFT OUTER JOIN dbo.FormTypes ON dbo.Forms.FormType = dbo.FormTypes.FormType '
    + ' LEFT OUTER JOIN dbo.Customers ON dbo.Forms.CustomerID1 = dbo.Customers.CustID '
    + 'WHERE dbo.Forms.FormType =' + IntToStr(FormType) +
    IfThen(canShow, ' And dbo.Forms.CustomerID1 =' + IntToStr(CustomerID), '');
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'جستجو كد', txt,
    ['', 'شماره فرم', 'تاريخ فرم',
    'كد ' + Trim(QInit.FieldByName('Customer1Label').AsString),
    'نام ' + Trim(QInit.FieldByName('Customer1Label').AsString), 'شماره كمكي',
    'تاريخ كمكي'], result, [0, 50, 100, 100, 100, 100, 100], alLeft) then
    qryForms.locate('FormID', result[0], []);
end;

procedure TPaymentExpenceF.qryFormItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TPaymentExpenceF.qryFormsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
    actStateChange.Caption := 'ثبت پيش نويس';
  FormStateAutoStateChange(QInit, DataSet);

  if opt.CustomerID2 = 0 then
    DataSet.FieldByName('CustomerID1').AsInteger := opt.CustomerID1
  else
    DataSet.FieldByName('CustomerID1').AsInteger := opt.CustomerID2;

  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('BudgetCode').AsInteger := 0;
  DataSet.FieldByName('ProjectID').AsInteger := 0;
  DataSet.FieldByName('Amount').AsInteger := 0;
  if canShow then
    DataSet.FieldByName('CustomerID1').AsInteger := CustomerID;
  GetANewID(DataSet, Self.Name, 'Forms', 'FormID', nil, 1);
  GetFormNumber(IntToStr(FormType), QInit, qryForms);
  DataSet.FieldByName('OperatorID').AsInteger := user.id;
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('FormDate').AsString := var_glb_CurrentDate;
  if pnlRelatedRecipts.Visible then
  begin
    DataSet.FieldByName('ReciptID').AsInteger := opt.ReciptID;
    DataSet.FieldByName('RelatedRecipts').AsString := opt.RelatedRecipts;
  end;

  edtFormNumber.SetFocus;
end;

procedure TPaymentExpenceF.srcFormsStateChange(Sender: TObject);
begin
  inherited;
  // ShowMessage('srcFormsStateChange');
  okPanel.Visible := qryForms.State in dseditmodes;
  SumGrid1.Visible := NOT okPanel.Visible;

  if not okPanel.Visible then
    DBGrid1.Options := DbgrdOption - [dgEditing] + [dgMultiSelect]
    // +[dgRowSelect]
  else
    DBGrid1.Options := DbgrdOption + [dgEditing]; // -[dgRowSelect]
  newPanel.Visible := not okPanel.Visible;
  btnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := newPanel.Visible;
  pnlDelete.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, 'forms', 'formid', Self.Name);
  FreeReservedCodes(DMf.adcBSell, 'forms', 'formnumber', IntToStr(FormType));
  // if newPanel.Visible then  newPanel.SetFocus;
  btnExcel.Visible := okPanel.Visible;
end;

procedure TPaymentExpenceF.qryFormItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FormItemID').AsInteger :=
    GetANewID(DataSet, IntToStr(FormType), 'FormItems', 'FormItemID',
    qryForms, 1);
  DataSet.FieldByName('Row').AsInteger := abs(DataSet.RecordCount + 1);
  DataSet.FieldByName('FormID').AsInteger := qryForms.FieldByName('FormID')
    .AsInteger;
  DataSet.FieldByName('AccState').AsInteger := 0;
  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DBGrid1.SelectedIndex := 1;
end;

procedure TPaymentExpenceF.qryFormsAfterScroll(DataSet: TDataSet);

begin
  inherited;
  AfterScrollAutoFormStateChange(actStateChange, QInit, qryForms);
  with qryDetail_Item do
  begin
    Active := False;
    SQL.Text := 'SELECT F.FormType, F.FormNumber, F.FormDate';
    SQL.Add(', F.CustomerID1, C1.CustName AS CustName1');
    SQL.Add(',F.CustomerID2,C2.CustName AS CustName2');
    SQL.Add(',Fi.CustomerID2 CustomerID2D,C2D.CustName AS CustName2D ,');
    SQL.Add('Fi.FormItemID, Fi.FormID, Fi.Row, Fi.CheckNumber,Fi.CheckDate, Fi.CheckType, Fi.ItemAmount, Fi.ItemNote,');
    SQL.Add('Fi.BankName, Fi.AccountNumber, Fi.City, Fi.TopicCode, Fi.DetailCode, Fi.CTopicCode,');
    SQL.Add('Fi.CTopicCode2, Fi.BudgetCode,Fi.ProjectID, Fi.preFormItemID, Fi.AidInfoNo, Fi.AidInfoDate,');
    SQL.Add('Fi.FirstUser, Fi.LastUser,Fi.AccountNumberNew, Fi.AmountArz, Fi.CheckFor, Fi.CashWage,');
    SQL.Add('Fi.ServerID, Fi.YearID,F.CashCheckFormID,Lp.name as PayTypeName,Lt.name as TopicTypeName');
    SQL.Add('FROM FormItems Fi INNER JOIN');
    SQL.Add('Forms F ON Fi.FormID = F.FormID AND Fi.ServerID = F.ServerID AND Fi.YearID');
    SQL.Add('= F.YearID INNER JOIN');
    SQL.Add('Customers C1 ON F.CustomerID1 = C1.CustID INNER JOIN');
    SQL.Add('Customers C2 ON F.CustomerID2 = C2.CustID left JOIN');
    SQL.Add('Customers C2D ON Fi.CustomerID2 = C2D.CustID');
    SQL.Add('LEFT OUTER JOIN LookUps Lp ON F.PayTypes = Lp.LookUpID');
    SQL.Add('LEFT OUTER JOIN LookUps Lt ON F.TopicTypes = Lt.LookUpID');

    SQL.Add('WHERE (F.CashCheckFormID = :CashCheckFormID )');
    SQL.Add('AND ( F.YearID = :YearID )');
    SQL.Add('AND ( F.ServerID = :ServerID )');
    if RelationshipFormTypes.IsEmpty then
    begin
      SQL.Add('AND (F.FormType in ( ' + CheckType.ToString + ' ) )');
    end
    else
    begin
      SQL.Add('AND (F.FormType in ( ' + RelationshipFormTypes + ' ) )');
    end;
    SQL.Add('ORDER BY Fi.FormID');

    // Parameters.ParamByName('Type').Value := CheckType;
    Parameters.ParamByName('CashCheckFormID').Value :=
      DataSet.FieldByName('FormID').AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Active := True;
  end;

  with qryDetail_ItemT do
  begin
    Active := False;
    Parameters.ParamByName('GuaranteesFormID').Value :=
      DataSet.FieldByName('FormID').AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('Type').Value := GuaranteesType;
    Active := True;
  end;

  with qryLoan do
  begin
    Active := False;
    Parameters.ParamByName('LoansFormID').Value := DataSet.FieldByName('FormID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('LoansType').Value := LoansType;
    Active := True;
  end;

  with qryFormItems do
  begin
    Close;
    Parameters.ParamByName('FormID').Value := DataSet.FieldByName('FormID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID')
      .AsInteger;

    Open;
  end; // with

  with qryFormsDetail do
  begin
    Close;
    SQL.Text := 'SELECT * FROM Forms';
    SQL.Add('WHERE ( CashCheckFormID = :FormID)');
    if RelationshipFormTypes.IsEmpty then
    begin
      SQL.Add('AND (Forms.FormType in ( ' + CashType.ToString + ' ) )');
    end
    else
    begin
      SQL.Add('AND (Forms.FormType in ( ' + RelationshipFormTypes + ' ) )');
    end;

    SQL.Add('and ( YearID = :YearID )');
    SQL.Add('and ( ServerID = :ServerID )');
    SQL.Add('ORDER BY FormNumber');

    Parameters.ParamByName('FormID').Value := DataSet.FieldByName('FormID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID')
      .AsInteger;

    Open;
  end;
end;

procedure TPaymentExpenceF.qryFormsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryFormItems.State in dseditmodes then
    qryFormItems.Post;
  if qryFormsDetail.State in dseditmodes then
    qryFormsDetail.Post;

  try
    if PageControl1.ActivePageIndex = 0 then
      qryFormItems.UpdateBatch;
    if PageControl1.ActivePageIndex = 1 then
      qryFormsDetail.UpdateBatch;
    if PageControl1.ActivePageIndex = 2 then
    begin
    end;
    BigMessage('ثبت شد.', 1);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      warn('اشكال در ثبت فرم' + #10#13 + E.Message);
    end;
  end; // try
end;

procedure TPaymentExpenceF.qryFormItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  // if (qryFormItemsCheckNumber.AsString='') and (DataSet.State=dsInsert) then begin
  // DataSet.Cancel;
  // if (DataSet.RecordCount+1)<>1 then
  // qryForms.Post;
  // Abort;
  // end
  // else begin
  if not CheckRequiredFieldsFill(qryFormItems) then
  begin
    qryFormItems.Delete;
    qryForms.edit;
    qryFormItems.edit;
    exit;
  end;

  if not CheckRequiredFields(qryFormItems) then
  begin
    if not(qryForms.State in dseditmodes) then
      qryForms.edit;
    Abort;
  end;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  // end;//if
end;

procedure TPaymentExpenceF.qryFormsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not SumChecked then
    Abort;
  DataSet.FieldByName('ModifyDate').AsDateTime := now;
end;

procedure TPaymentExpenceF.qryFormsDetailFormTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := VarToStr(qryFormTypes.Lookup('FormType', Sender.AsInteger,
    'FormCaption'));
end;

procedure TPaymentExpenceF.qryFormsFormState2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetFormState(Sender.AsInteger)
end;

procedure TPaymentExpenceF.N1Click(Sender: TObject);
begin
  inherited;
  with qryFormItems do
  begin
    if not(qryForms.State in [dsedit]) then
    begin
      warn('ابتدا مد ويرايش را انتخاب كنيد');
      exit;
    end;
    First;
    while not(eof) do
    begin
      if not(State in [dsedit]) then
        edit;
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
      Next;
    end; // while
  end; // with
end;

procedure TPaymentExpenceF.qryFormsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  // if get_response('تغييرات لغو شوند؟')<>mrYes then Abort;
  // qryFormItems.Cancel;
  // qryFormItems.Requery();

end;

procedure TPaymentExpenceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(DBGrid2, IntToStr(FormType));
  SaveColWidth(DBGrid3, IntToStr(FormType));
  SaveColWidth(DBGridCheck, IntToStr(FormType));
  SaveColWidth(DBGridCheckT, IntToStr(FormType));
  FreeAndNil(QInit);
  FreeAndNil(QInitCheck);
  FreeAndNil(QInitCheckT);
  FreeAndNil(QInitCash);
end;

procedure TPaymentExpenceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4, True, IntToStr(FormType));
  SetColSize(DBGrid2, 3, True, IntToStr(FormType));
  SetColSize(DBGridCheck, 14, True, IntToStr(FormType));
  SetColSize(DBGridCheckT, 14, True, IntToStr(FormType));
  SetColSize(DBGrid3, 6, True, IntToStr(FormType));
end;

procedure TPaymentExpenceF.myInitReportFile(GeneralFileName: string);
begin
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(GeneralFileName);
    if FileExists(Template.FileName) then
    begin
      Template.LoadFromFile;
      InitReportISDEMO(ppReport1);
      SetSendToBackShapeOnPrint(Self);
      print;
    end
    else
    begin
      warn('فايل چاپي  يافت نشد.!‏');
      exit;
    end; // else
  end; // with
end;

procedure TPaymentExpenceF.AllC_L_i_c_k_Click(Sender: TObject);
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
    myInitReportFile((Sender as TMenuItem).Hint);
  finally
    qryFormItems.EnableControls;
    qryForms.EnableControls;
  end;

end;

procedure TPaymentExpenceF.btnGuaranteesFormIDClick(Sender: TObject);
begin
  inherited;
  ActiveFormslocate := True;

  opt.CustomerID1 := qryForms.FieldByName('CustomerID1').AsInteger;

  GetCheckF.enter(GuaranteesType, True, qryForms.FieldByName('FormID')
    .AsInteger, qryForms.FieldByName('FormID').AsInteger);
  if not GetCheckF.qryAllForms.locate('FormID;ServerID;YearID',
    VarArrayOf([qryDetail_ItemTFormID.AsInteger,
    qryDetail_ItemTServerID.AsInteger, qryDetail_ItemTYearID.AsInteger]), [])
  then
    GetCheckF.qryMaster_Forms.Insert;

end;

procedure TPaymentExpenceF.BitBtn15Click(Sender: TObject);
begin
  inherited;
  actCallGetCheck.Tag := CheckType;
  actCallGetCheck.Execute;
end;

procedure TPaymentExpenceF.actCallGetCheckExecute(Sender: TObject);
begin
  inherited;
  ActiveFormslocate := True;

  opt.CustomerID1 := qryForms.FieldByName('CustomerID1').AsInteger;

  GetCheckF.enter((Sender as TAction).Tag, True, qryForms.FieldByName('FormID')
    .AsInteger, qryForms.FieldByName('FormID').AsInteger);
  if not GetCheckF.qryAllForms.locate('FormID;ServerID;YearID',
    VarArrayOf([qryDetail_ItemFormID.AsInteger,
    qryDetail_ItemServerID.AsInteger, qryDetail_ItemYearID.AsInteger]), []) then
    GetCheckF.qryMaster_Forms.Insert;
end;

procedure TPaymentExpenceF.actCallGetOtherMoneyExecute(Sender: TObject);
begin
  inherited;
  try
    ActiveFormslocate := True;
    GetOtherMoneyF.enter((Sender as TAction).Tag, True, 0, qryFormsDetail,
      qryForms);
    qryFormsDetail.Requery();
  finally
  end;
end;

procedure TPaymentExpenceF.actCallLoanExecute(Sender: TObject);
begin
  inherited;
  LoanF.enter((Sender as TAction).Tag, qryForms.FieldByName('FormID')
    .AsInteger);
  if not LoanF.qryForms.locate('FormID;ServerID;YearID',
    VarArrayOf([qryLoanFormID.AsInteger, qryLoanServerID.AsInteger,
    qryLoanYearID.AsInteger]), []) then
  begin
    warn('وام يافت نشد');
    LoanF.qryForms.Insert;
  end;
  ActiveFormslocate := True;
end;

procedure TPaymentExpenceF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  actCallGetOtherMoney.Tag := CashType;
  actCallGetOtherMoney.Execute;
end;

procedure TPaymentExpenceF.btnLoansClick(Sender: TObject);
begin
  inherited;
  actCallLoan.Tag := LoansType;
  actCallLoan.Execute;
end;

procedure TPaymentExpenceF.Formslocate;
var
  FormID, ServerID, YearID: Integer;
begin
  if not ActiveFormslocate then
    exit;
  FormID := qryForms.FieldByName('FormID').AsInteger;
  ServerID := qryForms.FieldByName('ServerID').AsInteger;
  YearID := qryForms.FieldByName('YearID').AsInteger;
  qryForms.Requery();
  qryForms.locate('FormID;ServerID;YearID',
    VarArrayOf([FormID, ServerID, YearID]), []);
end;

procedure TPaymentExpenceF.btnExcelClick(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryFormItems);
end;

procedure TPaymentExpenceF.btnRecalClick(Sender: TObject);
begin
  inherited;
  RecallAccF.SelectRecall(qryFormItems, qryForms);
end;

procedure TPaymentExpenceF.qryFormItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryForms.State in dseditmodes) then
    Abort;
end;

procedure TPaymentExpenceF.qryFormItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If not ADDItemChecked(qryForms) then
    Abort;
end;

function TPaymentExpenceF.CheckRequiredFieldsFill(DataSet: TDataSet): Boolean;
var
  i: Integer;
begin
  result := True;
  for i := 0 to DataSet.FieldCount - 1 do
    if DataSet.Fields[i].Required then
      if DataSet.Fields[i].IsNull then
      begin
        result := False;
      end
      else
      begin
        result := True;
        Break;
      end; // if
end;

procedure TPaymentExpenceF.ppDBCalcSumItemAmountGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := num2alphabet(StrToInt64(RemoveComma(Text)));
end;

procedure TPaymentExpenceF.actReportsearchExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.Show(ppReport1, 'PaymentCash', Self)
end;

procedure TPaymentExpenceF.actRequestCashExecute(Sender: TObject);
begin
  inherited;
  RequestCashF.enter(qryForms)
end;

procedure TPaymentExpenceF.qryFormItemsAccStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := DBGrid1.Columns[6].PickList[Sender.AsInteger];
end;

procedure TPaymentExpenceF.qryFormItemsAccStateSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := DBGrid1.Columns[6].PickList.IndexOf(Text)
end;

procedure TPaymentExpenceF.qryFormItemsCustomerID2Change(Sender: TField);
begin
  inherited;
  if DBGrid1.Columns[6].Visible then
    qryFormItems.FieldByName('AccState').AsInteger :=
      IfThen(qryFormItems.FieldByName('_AccStateDefault').AsInteger = 2, 1, 0);
  AccCode(QInit, Sender);
end;

procedure TPaymentExpenceF.edtCustomerID1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    if (Sender as TDBEdit).Tag = 1 then
      SpeedButton11.Click
    else
      SpeedButton7.Click;
end;

procedure TPaymentExpenceF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  (Sender as TDBGrid).SelectedIndex := 0;
end;

procedure TPaymentExpenceF.AccCode;
var
  TopicCode: LargeInt;
  DetailCode, CTopicCode, CTopicCode2: Integer;
  CanAcc: Byte;
begin
  TopicCode := 0;
  DetailCode := 0;
  CTopicCode := 0;
  CTopicCode2 := 0;
  CanAcc := QInit.FieldByName('AccountRelationPosition').AsInteger;
  if CanAcc = 0 then
    exit;
  with TADOQuery.Create(nil) do
    try
      Connection := DMf.adcBSell;
      Close;
      SQL.Text := 'SELECT Customers.acc_DetailCode, Customers.acc_CTopicCode,';
      SQL.Add('Customers.acc_CTopicCode2,CustomersGroup.acc_TopicCode,');
      SQL.Add('CustomersGroup.acc_CTopicCode AS GroupCTopicCode, ');
      SQL.Add('CustomersGroup.acc_CTopicCode2 AS GroupCTopicCode2');
      SQL.Add('FROM Customers INNER JOIN');
      SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
      SQL.Add('WHERE (Customers.CustID = :Cust)');
      Parameters.ParamByName('Cust').Value := Sender.Value;
      Open;
      if IsEmpty then
        exit;

      if Sender.FieldName = 'CustomerID1' then
      begin
        TopicCode := IfThen(QInit.FieldByName('DefaultTopicInInset')
          .AsInteger = 1, FieldByName('acc_TopicCode').AsInteger, 0);
        DetailCode := IfThen(QInit.FieldByName('DefaultDetailInInsert')
          .AsInteger = 1, FieldByName('acc_DetailCode').AsInteger, 0);
        case QInit.FieldByName('DefaultCTopicInInsert').AsInteger of
          1:
            CTopicCode := FieldByName('acc_CTopicCode').AsInteger;
          4:
            CTopicCode := FieldByName('GroupCTopicCode').AsInteger;
        end;

        case QInit.FieldByName('DefaultCTopic2InInsert').AsInteger of
          1:
            CTopicCode2 := FieldByName('acc_CTopicCode2').AsInteger;
          4:
            CTopicCode2 := FieldByName('GroupCTopicCode2').AsInteger;
        end;
      end;
      if (Sender.FieldName = 'CustomerID2') and (Flag = 3) then
      begin
        TopicCode := IfThen(QInit.FieldByName('DefaultTopicInInset')
          .AsInteger = 2, FieldByName('acc_TopicCode').AsInteger, 0);
        DetailCode := IfThen(QInit.FieldByName('DefaultDetailInInsert')
          .AsInteger = 2, FieldByName('acc_DetailCode').AsInteger, 0);
        case QInit.FieldByName('DefaultCTopicInInsert').AsInteger of
          2:
            CTopicCode := FieldByName('acc_CTopicCode').AsInteger;
          5:
            CTopicCode := FieldByName('GroupCTopicCode').AsInteger;
        end;

        case QInit.FieldByName('DefaultCTopic2InInsert').AsInteger of
          2:
            CTopicCode2 := FieldByName('acc_CTopicCode2').AsInteger;
          5:
            CTopicCode2 := FieldByName('GroupCTopicCode2').AsInteger;
        end;
      end;

      if (Sender.FieldName = 'CustomerID2') and (Flag = 1) then
      begin
        TopicCode := IfThen(QInit.FieldByName('DefaultTopicInInset')
          .AsInteger = 3, FieldByName('acc_TopicCode').AsInteger, 0);
        DetailCode := IfThen(QInit.FieldByName('DefaultDetailInInsert')
          .AsInteger = 3, FieldByName('acc_DetailCode').AsInteger, 0);
        case QInit.FieldByName('DefaultCTopicInInsert').AsInteger of
          3:
            CTopicCode := FieldByName('acc_CTopicCode').AsInteger;
          6:
            CTopicCode := FieldByName('GroupCTopicCode').AsInteger;
        end;

        case QInit.FieldByName('DefaultCTopic2InInsert').AsInteger of
          3:
            CTopicCode2 := FieldByName('acc_CTopicCode2').AsInteger;
          6:
            CTopicCode2 := FieldByName('GroupCTopicCode2').AsInteger;
        end;
      end;
    finally
      Free;
    end;
  If (CanAcc = Flag) or (CanAcc = 2) then
    with Sender.DataSet do
      try
        if TopicCode <> 0 then
          FieldByName('TopicCode').AsLargeInt := TopicCode;
        if CTopicCode <> 0 then
          FieldByName('CTopicCode').AsInteger := CTopicCode;
        if CTopicCode2 <> 0 then
          FieldByName('CTopicCode2').AsInteger := CTopicCode2;
        if DetailCode <> 0 then
          FieldByName('DetailCode').AsInteger := DetailCode;
      except
      end;

end;

procedure TPaymentExpenceF.initRelationshipFormTypes;
var
  NewItem, MnuLocation: TMenuItem;
  NewAction: TAction;
begin
  MnuLocation := nil;
  if RelationshipFormTypes <> EmptyStr then
    with qryRelatType do
    begin
      Connection := QInit.Connection;
      Close;
      SQL.Text := 'SELECT FormType, FormCaption, DisplayFormType';
      SQL.Add('FROM FormTypes');
      SQL.Add(Format('WHERE (FormType IN (%S))', [RelationshipFormTypes]));
      Open;
      while not eof do
      begin
        NewItem := TMenuItem.Create(Self);
        NewAction := TAction.Create(Self);
        NewAction.Caption := FieldByName('FormCaption').AsString;
        NewAction.Tag := FieldByName('FormType').AsInteger;
        case FieldByName('DisplayFormType').AsInteger of
          0,7:
            begin
              MnuLocation := mnuGetOtherMoney;
              NewAction.OnExecute := actCallGetOtherMoney.OnExecute;
            end;
          1:
            begin
              MnuLocation := mnuGetCheck;
              NewAction.OnExecute := actCallGetCheck.OnExecute;
            end;
          2:
            Warn2('براي فراخواني فرمي وجود ندارد.‏');
          3:
            begin
              MnuLocation := mnuPaymentCash;
              NewAction.OnExecute := mdiMainF.actMnuPaymentCashF.OnExecute;
            end;
          4:
            begin
              MnuLocation := mnuPaymentCashF;

              NewAction.OnExecute := mdiMainF.actMnuPaymentExpenceF.OnExecute;
            end;
          5:
            begin
              MnuLocation := mnuLoan;
              NewAction.OnExecute := actCallLoan.OnExecute;
            end;
          6:
            begin
              // Warn2('براي فراخواني فرمي وجود ندارد.‏');
            end;
        end;
        NewItem.Action := NewAction;
        NewAction.ActionList := mdiMainF.ActionList1;
        MnuLocation.Add(NewItem);

        Next;
      end; // while

      Active := False;

    end;

end;

procedure TPaymentExpenceF.initForm;
var
  b: Boolean;

Const
  SqlTxt = 'SELECT * FROM FormTypes WHERE  FormType = %d';

begin
  qryFormTypes.Open;
  ActiveFormslocate := False;
  FormType := var_glb_gParam;
  QInit := TADOQuery.Create(nil);
  QInitCheck := TADOQuery.Create(nil);
  QInitCheckT := TADOQuery.Create(nil);
  QInitCash := TADOQuery.Create(nil);
  try
    with QInit do
    begin
      Connection := DMf.adcBSell;
      Close;
      SQL.Text := Format(SqlTxt, [FormType]);
      Open;
      CheckType := FieldByName('CheckType').AsInteger;
      CashType := FieldByName('CashType').AsInteger;

      LoansType := FieldByName('LoansType').AsInteger;
      GuaranteesType := FieldByName('GuaranteesType').AsInteger;
      RelationshipFormTypes := FieldByName('RelationshipFormTypes').AsString;
      initRelationshipFormTypes;
    end;

    b := CheckType <> 50;
    setColumns2(DBGridCheck, b, 'BankName');
    setColumns2(DBGridCheck, b, 'AccountNumber');
    setColumns2(DBGridCheck, b, 'AccountNumberNew');
    setColumns2(DBGridCheck, b, 'City');
    setColumns2(DBGridCheck, b, 'CheckFor');

    with QInitCheck do
    begin
      Connection := QInit.Connection;
      Close;
      SQL.Text := Format(SqlTxt, [CheckType]);
      Open;
    end;

    with QInitCheckT do
    begin
      Connection := QInit.Connection;
      Close;
      SQL.Text := Format(SqlTxt, [GuaranteesType]);
      Open;
    end;

    with QInitCash do
    begin
      Connection := QInit.Connection;
      Close;
      SQL.Text := Format(SqlTxt, [CashType]);
      Open;
    end;

  except
  end;

  tbsAsnad.TabVisible := False;
  tbsFish.TabVisible := False;
  tbsCheck.TabVisible := False;
  tbsCheckT.TabVisible := False;
  tbsLoan.TabVisible := False;

  SetLookUpCash(qryForms);
  SetLookUpCash(qryFormItems);
  SetLookUpCash(qryFormsDetail);

  DbgrdOption := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];
  // if opt.AccOldAvailable then
  // begin
  // qryForms.FieldByName('_CTopicName2_L1').LookupResultField:='Desc';
  // qryForms.FieldByName('_CTopicName2_L1').LookupKeyFields:='CTopicCode';
  // qryForms.FieldByName('_CTopicName_L1').LookupResultField:='Desc';
  //
  // qryFormItems.FieldByName('_CTopicName2_L1').LookupResultField:='Desc';
  // qryFormItems.FieldByName('_CTopicName2_L1').LookupKeyFields:='CTopicCode';
  // qryFormItems.FieldByName('_CTopicName_L1').LookupResultField:='Desc';
  //
  //
  // qryForms.FieldByName('_DetailsName_L1').LookupResultField:='Desc';
  // qryForms.FieldByName('_TopicCodeName_L1').LookupResultField:='MoeenName';
  //
  // qryFormItems.FieldByName('_DetailsName_L1').LookupResultField:='Desc';
  // qryFormItems.FieldByName('_TopicCodeName_L1').LookupResultField:='MoeenName';
  // end;//if

  with QInit do
  begin
    Caption := FieldByName('FormCaption').AsString;
    lblCaption.Caption := Caption;
    pnlRelatedRecipts.Visible := SetRelatedReciptTypes(QInit,
      qryRelatedRecipts);
    FreeLookupUnUse(txt_RelatedRecipts);

    lblAmountMaster.Visible := FieldByName('ValueVisible').AsInteger = 1;
    edtAmountMaster.Visible := lblAmountMaster.Visible;

    canShow := FieldByName('RestartFormNumberOnCust1').Value;
    canFilter := FieldByName('Customer1UseInRecall').Value;

    // -------------------------set Customer2Detail---------------------------//
    case FieldByName('Customer2ActiveOnDetail').AsInteger of
      0:
        begin
          Cus2DetailAsMaster := True;
          DBGrid1.Columns[3].Visible := False;
        end;
      1:
        begin
          Cus2DetailAsMaster := True;
          DBGrid1.Columns[3].Visible := Cus2DetailAsMaster;
        end;
      2, 5:
        DBGrid1.Columns[3].Visible := True;
    end; // case
    DBGrid1.Columns[4].Visible := DBGrid1.Columns[3].Visible;

    // -------------------------set Customer---------------------------//
    if DBGrid1.Columns[3].Visible then
    begin
      DBGrid1.Columns[4].Title.Caption := ' نام ' +
        FieldByName('Customer2OnDetailLable').AsString;
      DBGrid1.Columns[3].Title.Caption := ' كد ' +
        FieldByName('Customer2OnDetailLable').AsString;

    end;
    qryFormItems.FieldByName(DBGrid1.Columns[3].FieldName).Required :=
      DBGrid1.Columns[3].Visible;
    qryFormItems.FieldByName(DBGrid1.Columns[4].FieldName).Required :=
      DBGrid1.Columns[4].Visible;
    case FieldByName('AccStateActive').AsInteger of
      0:
        DBGrid1.Columns[6].Visible := False;
      1:
        DBGrid1.Columns[6].Visible := True;
      2:
        begin
          DBGrid1.Columns[6].Visible := True;
          DBGrid1.Columns[6].ReadOnly := True
        end;
    end; // case

    pnlCustomer2.Visible := FieldByName('Customer2Active').Value = 1;
    if pnlCustomer2.Visible then
      lbcustomer2.Caption := ' كد و نام ' +
        FieldByName('Customer2Lable').AsString;

    pnlCustomer1.Visible := FieldByName('Customer1Active').Value;
    if pnlCustomer1.Visible then
      lbcustomer1.Caption := ' كد و نام ' +
        FieldByName('Customer1Label').AsString;
    pnlCustomer1.Enabled := not canShow;
    // ------------------------set CheckDateActive--------------------------//
    DBGrid1.Columns[1].Visible := (FieldByName('CheckDateActive').AsInteger
      in [1, 2]);
    qryFormItems.FieldByName(DBGrid1.Columns[1].FieldName).Required :=
      (FieldByName('CheckDateActive').AsInteger in [1]);

    // ------------------------set PnlAidInfoMaster--------------------------//
    // pnlAidInfo.Visible:=(FieldByName('AidInfoActive').AsInteger=1) or (FieldByName('AidInfoActive').AsInteger=3)or (FieldByName('AidInfoActive').AsInteger=4);
    LblAidInfoNo.Caption := LblAidInfoNo.Caption + ' ' +
      FieldByName('AidInfoCaption').AsString;
    LblAidInfoDate.Caption := LblAidInfoDate.Caption + ' ' +
      FieldByName('AidInfoCaption').AsString;

    // DBGrid1.Columns[7].Visible := FieldByName('ValueVisible').Value;
    // SumGrid1.Visible := FieldByName('ValueVisible').Value;
    // if (FieldByName('ValueVisible').Value) <> 1 then
    // qryFormItems.FieldByName('ItemAmount').Required := False;

    lblSubAmountCaption.Caption := FieldByName('SubAmountCaption').AsString;
    pnlSubAmountCaption.Visible :=
      Length(Trim(lblSubAmountCaption.Caption)) > 0;

    lblAidInfo2NoCaption.Caption := 'شماره ' +
      FieldByName('AidInfo2NoCaption').AsString;
    lblAidInfo2NoCaptionDate.Caption := 'تاريخ ' +
      FieldByName('AidInfo2NoCaption').AsString;
    pnlAidInfo2NoCaption.Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];
    // Length(Trim(FieldByName('AidInfo2NoCaption').AsString)) > 0;

    pnlAidSubAmountCaption.Visible := pnlSubAmountCaption.Visible or
      pnlAidInfo2NoCaption.Visible;

    DBGrid1.Columns[5].Visible := FieldByName('DetailNoteVisible').Value;

    case FieldByName('TabSheetActive').AsInteger of
      0:
        tbsAsnad.TabVisible := True;
      1:
        tbsFish.TabVisible := True;
      2:
        tbsCheck.TabVisible := True;
      3:
        begin
          tbsAsnad.TabVisible := True;
          tbsFish.TabVisible := True;
        end;
      4:
        begin
          tbsAsnad.TabVisible := True;
          tbsCheck.TabVisible := True;
        end;
      5:
        begin
          tbsFish.TabVisible := True;
          tbsCheck.TabVisible := True;
        end;
      6:
        begin
          tbsAsnad.TabVisible := True;
          tbsFish.TabVisible := True;
          tbsCheck.TabVisible := True;
        end;

      7:
        begin
          tbsCheck.TabVisible := True;
          tbsLoan.TabVisible := True;
          tbsCheckT.TabVisible := True;
        end;

    end; // case

    NReportFileName1.Hint := FieldByName('ReportFileName1').AsString;
    NReportFileName2.Hint := FieldByName('ReportFileName2').AsString;
    NReportFileName1.Visible := NReportFileName1.Hint <> EmptyStr;
    NReportFileName2.Visible := NReportFileName2.Hint <> EmptyStr;

    GrpNote.Visible := FieldByName('NoteVisible').AsInteger = 1;
    GrpCommand.Visible := FieldByName('ManegerNoteActive').AsInteger = 1;
    Panel9.Visible := GrpNote.Visible or GrpCommand.Visible;

    with qryForms do
    begin
      Close;
      SQL.Text := 'SELECT * FROM Forms';
      SQL.Add('WHERE FormType = :FormType');
      SQL.Add('AND ( YearID = :YearID ) ');
      // AND ( ServerID = :ServerID )

      setChkUsersCustomersGroupsActive(qryForms);

      SQL.Add('ORDER BY FormType');
      Parameters.ParamByName('FormType').Value := FormType;
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Open;
      Last;
    end; // wih
    InitCash;
    InitCheck(QInitCheck, DBGridCheck);
    InitCheck(QInitCheckT, DBGridCheckT);

  end; // with

end;

// function TPaymentExpenceF.ReadLookUps(Kind: Integer = 0; Code: Integer = 1;
// DefaultValue: string = ''): string;
//
// begin
// with TADOQuery.Create(DMf) do
// try
// Connection := DMf.adcBSell;
// SQL.Text :=
// Format('SELECT Name FROM LookUps WHERE (Kind = %d) AND (Code = %d) ',
// [Kind, Code]);
// Open;
// result := FieldByName('Name').AsString;
// if result = EmptyStr then
// result := DefaultValue;
// Close;
// finally
// Free;
// end;
// // try
// end;

procedure TPaymentExpenceF.FormActivate(Sender: TObject);
begin
  inherited;

  Formslocate;

end;

procedure TPaymentExpenceF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
end;

procedure TPaymentExpenceF.InitCheck(qryinit: TADOQuery; DBGrid: TDBGrid);
begin
  with qryinit do
  begin
    canShow := FieldByName('RestartFormNumberOnCust1').Value = 1;
    canFilter := FieldByName('Customer1UseInRecall').Value = 1;

    // ------------------------set CheckDateActive--------------------------//
    edtFormNumber.ReadOnly := (FieldByName('ChangeFormNo_DateActive')
      .AsInteger <> 1);
    qryDetail_Item.FieldByName('CheckDate').Required :=
      (FieldByName('CheckDateActive').AsInteger in [1]);
    // ------------------------set PnlAidInfoMaster--------------------------//
    LblAidInfoNo.Caption := LblAidInfoNo.Caption +
      FieldByName('AidInfoCaption').AsString;
    LblAidInfoDate.Caption := LblAidInfoDate.Caption +
      FieldByName('AidInfoCaption').AsString;

    // ------------------------set PnlAidInfoDetail--------------------------//

    // -------------------------set Customer---------------------------//

    grpDetailNote.Visible := FieldByName('DetailNoteVisible').Value = 1;

    actPrint.Hint := FieldByName('ReportFileName1').AsString + #13#10 +
      FieldByName('ReportFileName2').AsString + #13#10 + IntToStr(FormType);
    lblCaption.Hint := IntToStr(FormType);

    // -------------------------set Customer2Detail---------------------------//
    case FieldByName('Customer2ActiveOnDetail').AsInteger of
      0:
        begin
          Cus2DetailAsMaster := True;
          // setColumns2(DBGrid, False, 'CustomerID2');
        end;
      1:
        begin
          Cus2DetailAsMaster := True;
          // setColumns2(DBGrid, False, 'CustomerID2');
        end;
      2, 5:
        begin
          // setColumns2(DBGrid, False, 'CustomerID2');
        end;
      3:
        begin
          // setColumns2(DBGrid, False, 'CustomerID2');
        end;
    end;

    // // -------------------------set qryMaster---------------------------//
    // with qryForms do
    // begin
    // if pnlCustomer1.Visible then
    // begin
    // FieldByName('CustomerID1').DisplayLabel :=
    // Trim(qryinit.FieldByName('Customer1Label').AsString);
    // end;
    //
    // if pnlCustomer2.Visible then
    // begin
    // FieldByName('CustomerID2').DisplayLabel :=
    // Trim(qryinit.FieldByName('Customer2Lable').AsString);
    // end;
    // end;

  end;

end;

procedure TPaymentExpenceF.InitCash;
begin
  with QInitCash do
  begin
    // b := FieldByName('Customer1Active').AsInteger = 1;
    setColumns2(DBGrid2, False, 'CustomerID1');
    // b := FieldByName('Customer2Active').AsInteger = 1;
    setColumns2(DBGrid2, False, 'CustomerID2');

    qryFormsDetail.FieldByName('CustomerID1').DisplayLabel :=
      Trim(FieldByName('Customer1Label').AsString);

    qryFormsDetail.FieldByName('_CustomerID1').DisplayLabel := 'نام ' +
      Trim(FieldByName('Customer1Label').AsString);

    qryFormsDetail.FieldByName('CustomerID2').DisplayLabel :=
      Trim(FieldByName('Customer2Lable').AsString);

    qryFormsDetail.FieldByName('_CustomerID2').DisplayLabel := 'نام ' +
      Trim(FieldByName('Customer2Lable').AsString);

    LblAidInfoNo.Caption := LblAidInfoNo.Caption +
      FieldByName('AidInfoCaption').AsString;
    LblAidInfoDate.Caption := LblAidInfoDate.Caption +
      FieldByName('AidInfoCaption').AsString;
    actPrint.Hint := FieldByName('ReportFileName1').AsString + #13#10 +
      FieldByName('ReportFileName2').AsString + #13#10;
  end; // with

end;

procedure TPaymentExpenceF.qryDetail_ItemCheckTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'چك مدت دار';
    1:
      Text := 'چك روز';
    2:
      Text := 'ساير';
  end; // if

end;

function TPaymentExpenceF.SumChecked: Boolean;
var
  c1, sum: Currency;
begin
  // result := True;
  sum := 0;
  try
    with qryFormItems do
    begin
      DisableControls;
      First;
      while not eof do
      begin
        sum := sum + FieldByName('ItemAmount').AsCurrency;
        Next;
      end;
      EnableControls;
    end;
  finally
    c1 := sum - qryForms.FieldByName('Amount').AsCurrency;
    c1 := Round(c1);
    result := c1 = 0;
  end;
  if not result then
    if get_response
      ('برای ذخیره اطلاعات جمع اسناد هزینه باید با مبلغ درخواستی برابر باشد' +
      #13#10 + 'آیا جمع مبالغ اسناد هزینه در مبلغ درخواستی ذخیره شود') = mryes
    then
    begin
      qryForms.FieldByName('Amount').AsCurrency := sum;
    end;
end;

end.
