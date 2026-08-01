unit Contract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, DB, ADODB, ComCtrls, ppBands,
  ppClass, ppDB, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppVar, Menus, ppModule, ppTypes,
  Math, SumDBGrid, ppRegion, ppRichTx, ppParameter, DM, FarsiReportBuilde,
  ppDesignLayer, System.ImageList, System.Actions, FrVajheNaghd,
  FrRadioDisplayFormType;

type
  TContractF = class(Ttemplate2MDIF)
    qryInitForm: TADOQuery;
    srcFormItemsCheck: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetDeleteFormItems: TDataSetDelete;
    DataSetInsertFormItems: TDataSetInsert;
    DataSetPostRecipts: TDataSetPost;
    DataSetCancelFormItems: TDataSetCancel;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1Recipts: TppDBPipeline;
    ppDBPipeline2FormItemsCheck: TppDBPipeline;
    qryCustomer: TADOQuery;
    qryFormItemsCheck: TADOQuery;
    qryFormItemsCheckFormItemID: TIntegerField;
    qryFormItemsCheckFormID: TIntegerField;
    qryFormItemsCheckRow: TIntegerField;
    qryFormItemsCheckCheckNumber: TStringField;
    qryFormItemsCheckCheckDate: TStringField;
    qryFormItemsCheckCheckType: TWordField;
    qryFormItemsCheckItemAmount: TBCDField;
    qryFormItemsCheckItemNote: TStringField;
    qryFormItemsCheckBankName: TStringField;
    qryFormItemsCheckAccountNumber: TStringField;
    qryFormItemsCheckCity: TStringField;
    qryFormItemsCheckCustomerID2: TIntegerField;
    qryFormItemsCheckDetailCode: TStringField;
    qryFormItemsCheckCTopicCode: TStringField;
    qryFormItemsCheckCTopicCode2: TStringField;
    qryFormItemsCheckBudgetCode: TIntegerField;
    qryFormItemsCheckProjectID: TIntegerField;
    qryFormItemsCheckpreFormItemID: TIntegerField;
    qryFormItemsCheckAidInfoNo: TStringField;
    qryFormItemsCheckAidInfoDate: TStringField;
    qryFormItemsCheck_Cudtomername2: TStringField;
    actEdit: TAction;
    DBNavigator1: TDBNavigator;
    actDelete1: TAction;
    actselectCheck: TAction;
    PopChoose: TPopupMenu;
    N13: TMenuItem;
    N12: TMenuItem;
    BitBtn10: TBitBtn;
    popprint: TPopupMenu;
    mnuPrint1: TMenuItem;
    mnuPrint2: TMenuItem;
    AllC_L_i_c_k_: TMenuItem;
    N1Print1: TMenuItem;
    N2Print1: TMenuItem;
    N1Print2: TMenuItem;
    N2Print2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlCustomer1: TPanel;
    qryCustomers1: TADOQuery;
    qryStores: TADOQuery;
    qryStuff_Unit_TecInf: TADOQuery;
    qryinit: TADOQuery;
    qryRecipts: TADOQuery;
    qryReciptsStoreID: TSmallintField;
    qryRecipts_StoresName: TStringField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryRecipts_PersonName: TStringField;
    qryRecipts_PersonName3: TStringField;
    qryRecipts_PersonName4: TStringField;
    qryRecipts_PersonName5: TStringField;
    qryRecipts_PersonName1: TStringField;
    qryReciptsPersonID2: TIntegerField;
    qryRecipts_PersonName2: TStringField;
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
    qryReciptsUseUnitID: TIntegerField;
    qryReciptsExpireDate: TStringField;
    qryReciptsSecondType: TWordField;
    qryRecipts_ValuationType: TIntegerField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsOperatorID: TIntegerField;
    qryRecipts_PersonFax: TStringField;
    qryReciptsAidDate: TStringField;
    qryRecipts_CustValuationType: TIntegerField;
    qryRecipts_StoreKind: TIntegerField;
    qryReciptsFirstUser: TStringField;
    qryReciptsLastUser: TStringField;
    qryReciptsReciptStartDate: TStringField;
    qryReciptsReciptEndDate: TStringField;
    qryRecipts_HasDeficit: TIntegerField;
    srcRecipts: TDataSource;
    qryReciptsItems: TADOQuery;
    qryReciptsItemsReciptItemID: TIntegerField;
    qryReciptsItemsReciptID: TIntegerField;
    qryReciptsItemsInputEntity: TFloatField;
    qryReciptsItemsOutputEntity: TFloatField;
    qryReciptsItemsInputWeight: TFloatField;
    qryReciptsItemsOutputWeight: TFloatField;
    qryReciptsItemsTotalInputPrice: TBCDField;
    qryReciptsItemsTotalOutputPrice: TBCDField;
    qryReciptsItemsTotallSellPrice: TBCDField;
    qryReciptsItemsUnitSellPrice: TFMTBCDField;
    qryReciptsItems_StuffName: TStringField;
    qryReciptsItems_UnitName: TStringField;
    qryReciptsItemsDeficitValue: TBCDField;
    srcReciptsItems: TDataSource;
    LblReciptDate: TLabel;
    LblRecNo: TLabel;
    SBtnReciptNumber: TSpeedButton;
    EdtReciptDate: TDBEdit;
    EdtRNum: TDBEdit;
    SBtnPersonID1: TSpeedButton;
    EdtPersonID1: TDBEdit;
    LblPerson1: TLabel;
    DBTextPersonID1: TDBText;
    LblStore: TLabel;
    SBtnStoreID: TSpeedButton;
    DBTextStoreID: TDBText;
    EdtStoreID: TDBEdit;
    GroupBox1: TGroupBox;
    edtReciptEndDate: TDBEdit;
    Label2: TLabel;
    edtReciptStartDate: TDBEdit;
    Label1: TLabel;
    GrpReciptNote: TGroupBox;
    DBMemo2: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    qryReciptsDebtControlActive: TWordField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    TabSheet4: TTabSheet;
    GrdCheck: TDBGrid;
    GrdReciptsItems: TDBGrid;
    qryReciptsItemsUnitSellPrice2: TBCDField;
    DataSetInsertRecipts: TDataSetInsert;
    DataSetEditRecipts: TDataSetEdit;
    DataSetDeleteRecipts: TDataSetDelete;
    DataSetCancelRecipts: TDataSetCancel;
    DataSetCancelReciptsItems: TDataSetCancel;
    DataSetDeleteReciptsItems: TDataSetDelete;
    DataSetEditReciptsItems: TDataSetEdit;
    DataSetPostReciptsItems: TDataSetPost;
    DataSetInsertReciptsItems: TDataSetInsert;
    PnlReciptsItems: TPanel;
    newPanelReciptsItems: TPanel;
    BitBtn2: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn6: TBitBtn;
    okPanelReciptsItems: TPanel;
    BitBtn11: TBitBtn;
    BitBtn13: TBitBtn;
    qryReciptsItemsPersonID1: TIntegerField;
    qryReciptsItemsFirstUser: TStringField;
    qryReciptsItemsLastUser: TStringField;
    qryFormsCheck: TADOQuery;
    WordField1: TWordField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    BCDField1: TBCDField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    WordField2: TWordField;
    WordField3: TWordField;
    IntegerField7: TIntegerField;
    StringField15: TStringField;
    StringField16: TStringField;
    DateTimeField1: TDateTimeField;
    StringField17: TStringField;
    StringField18: TStringField;
    IntegerField8: TIntegerField;
    srcFormsCheck: TDataSource;
    Panel4: TPanel;
    Label8: TLabel;
    SBtnFormNumber: TSpeedButton;
    Label4: TLabel;
    EdtFNum: TDBEdit;
    EdtFormDate: TDBEdit;
    LblCustomerID1: TLabel;
    EdtCustomerID1: TDBEdit;
    SBtnCustomerID1: TSpeedButton;
    TxtCustomerID1: TDBText;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    DataSetInsertFormsCheck: TDataSetInsert;
    DataSetEditFormsCheck: TDataSetEdit;
    DataSetPostFormsCheck: TDataSetPost;
    DataSetCancelFormsCheck: TDataSetCancel;
    DataSetDeleteFormsCheck: TDataSetDelete;
    DataSetDeleteFormItemsCheck: TDataSetDelete;
    PnlFormItemsCheck: TPanel;
    newPanelFormsCheck: TPanel;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    okPanelFormsCheck: TPanel;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BtnAccCheck: TBitBtn;
    BitBtn26: TBitBtn;
    qryFormItemsCheckFirstUser: TStringField;
    qryFormItemsCheckLastUser: TStringField;
    DBNavigator2: TDBNavigator;
    qryFormsCheckFormID: TIntegerField;
    ppDBPipeline3Forms: TppDBPipeline;
    DataSetInsertFish: TDataSetInsert;
    DataSetEditFish: TDataSetEdit;
    DataSetPostFish: TDataSetPost;
    DataSetCancelFish: TDataSetCancel;
    DataSetDeleteFish: TDataSetDelete;
    ppDBPipeline4FormsCheck: TppDBPipeline;
    ppDetailBand1: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel4: TppLabel;
    ppPageStyle1: TppPageStyle;
    ppRichText1: TppRichText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLblAllStringReplace: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText4: TppDBText;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel3: TppLabel;
    ppLabel26: TppLabel;
    ppLblCompanyName: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape1: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    DBGrid1: TDBGrid;
    DataSetInsert_par: TDataSetInsert;
    DataSetEdit_par: TDataSetEdit;
    DataSetPost_par: TDataSetPost;
    DataSetCancel_par: TDataSetCancel;
    DataSetDelete_par: TDataSetDelete;
    SpeedButton1: TSpeedButton;
    actCopyPaste: TAction;
    qryReciptsUseOtherID: TWideStringField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsItemsServerID: TIntegerField;
    qryReciptsItemsYearID: TIntegerField;
    qryFormsCheckServerID: TIntegerField;
    qryFormsCheckYearID: TIntegerField;
    qryFormItemsCheckServerID: TIntegerField;
    qryFormItemsCheckYearID: TIntegerField;
    qryReciptsInsertDate: TDateTimeField;
    qryReciptsItemsStuffCode: TLargeintField;
    qryReciptsItemsProductModel: TIntegerField;
    qryReciptsAidNumber: TStringField;
    qryFormItemsCheckAccountNumberNew: TStringField;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    qryReciptsItemsProductCode: TLargeintField;
    qryFormsCheckTopicCode: TLargeintField;
    qryFormItemsCheckTopicCode: TLargeintField;
    qryReciptsReciptStartDateToEnd: TIntegerField;
    txtReciptStartDateToEnd: TDBText;
    frmGrdvjhnghd1: TfrmVajheNaghd;
    frmrdCheck: TfrmRadioDisplayFormType;
    frmrdVajhenaghd: TfrmRadioDisplayFormType;
    qryCustomersActivity: TADOQuery;
    dsCustomersActivity: TDataSource;
    plnCustomersActivity: TppDBPipeline;
    qryReciptsItemsDeficitValue2: TBCDField;
    qryReciptsItemsDeficitValue3: TBCDField;
    qryReciptsItemsDeficitValue4: TBCDField;
    qryReciptsItemsTotalDeficient: TBCDField;
    ppDBText1: TppDBText;
    plnReciptsItems: TppDBPipeline;
    qryFormsCheckAidInfoNo: TStringField;
    procedure qryFormItemsCheckAfterDelete(DataSet: TDataSet);
    procedure qryFormItemsCheckAfterInsert(DataSet: TDataSet);
    procedure qryFormItemsCheckBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure GrdCheckKeyPress(Sender: TObject; var Key: Char);
    procedure GrdCheckEditButtonClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryFormItemsCheckBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actDelete1Execute(Sender: TObject);
    procedure spdSelectCheckClick(Sender: TObject);
    procedure AllC_L_i_c_k_Click(Sender: TObject);
    procedure qryFormItemsCheckBeforeEdit(DataSet: TDataSet);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure SBtnPersonID1Click(Sender: TObject);
    procedure GrdReciptsItemsEditButtonClick(Sender: TObject);
    procedure GrdReciptsItemsKeyPress(Sender: TObject; var Key: Char);
    procedure qryReciptsAfterDelete(DataSet: TDataSet);
    procedure qryReciptsAfterEdit(DataSet: TDataSet);
    procedure qryReciptsAfterInsert(DataSet: TDataSet);
    procedure qryReciptsAfterPost(DataSet: TDataSet);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure qryReciptsBeforeCancel(DataSet: TDataSet);
    procedure qryReciptsBeforeDelete(DataSet: TDataSet);
    procedure qryReciptsBeforePost(DataSet: TDataSet);
    procedure srcReciptsStateChange(Sender: TObject);
    procedure qryReciptsItemsAfterDelete(DataSet: TDataSet);
    procedure qryReciptsItemsAfterEdit(DataSet: TDataSet);
    procedure qryReciptsItemsAfterInsert(DataSet: TDataSet);
    procedure qryReciptsItemsBeforeDelete(DataSet: TDataSet);
    procedure qryReciptsItemsBeforeEdit(DataSet: TDataSet);
    procedure qryReciptsItemsBeforeInsert(DataSet: TDataSet);
    procedure qryReciptsItemsBeforePost(DataSet: TDataSet);
    procedure srcReciptsItemsStateChange(Sender: TObject);
    procedure qryReciptsItemsInputWeightChange(Sender: TField);
    procedure qryReciptsItemsTotalInputPriceChange(Sender: TField);
    procedure SBtnStoreIDClick(Sender: TObject);
    procedure qryFormItemsCheckAfterEdit(DataSet: TDataSet);
    procedure qryFormsCheckAfterScroll(DataSet: TDataSet);
    procedure qryFormsCheckAfterPost(DataSet: TDataSet);
    procedure qryFormsCheckAfterEdit(DataSet: TDataSet);
    procedure SBtnFormNumberClick(Sender: TObject);
    procedure SBtnCustomerID1Click(Sender: TObject);
    procedure srcFormsCheckStateChange(Sender: TObject);
    procedure qryFormsCheckAfterInsert(DataSet: TDataSet);
    procedure qryFormsCheckBeforePost(DataSet: TDataSet);
    procedure qryFormItemsCheckBeforeInsert(DataSet: TDataSet);
    procedure qryFormsCheckBeforeCancel(DataSet: TDataSet);
    procedure qryFormsCheckBeforeDelete(DataSet: TDataSet);
    procedure EdtCustomerID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAccCheckClick(Sender: TObject);
    procedure ppLblAllStringReplaceGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actCopyPasteExecute(Sender: TObject);
    procedure qryItemsTaxCoChange(Sender: TField);
    procedure qryItemsTaxValueChange(Sender: TField);
    procedure srcFormItemsCheckStateChange(Sender: TObject);
    procedure frmrdVajhenaghdrgpFormTypeClick(Sender: TObject);
    procedure frmrdCheckrgpFormTypeClick(Sender: TObject);
    procedure frmGrdvjhnghd1BitBtn12Click(Sender: TObject);
    procedure frmGrdvjhnghd1BitBtn9Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qryReciptsItemsDeficitValue2Change(Sender: TField);
    procedure qryReciptsItemsDeficitValue3Change(Sender: TField);
    procedure qryReciptsItemsDeficitValue4Change(Sender: TField);
  private
    myStore: TStore;
    // Form_Type: Integer;
    ReciptType: Integer;
    FormOutput: Boolean;
    DbgrdOption: set of TDBGridOption;
    FieldNamePrice, FieldNameEntity, FieldNameWeight: String;
    qryCust1: TADOQuery;
    procedure DeleteCheck(ItemID: Integer);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function CheckRequiredFieldsFill(DataSet: TDataSet): Boolean;
    procedure initForm4Output;
    procedure initFormConfig;
    procedure initFormPanel;
    procedure gridReciptsItemskeyenter(Sender: TObject; var Key: Char);
    procedure initAddField;
    procedure EndOfPrice(Field_Name: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContractF: TContractF;

implementation

uses searchCode_ADO, mmessage, GlobalPro,
  sndkey32, FormFunctions, sort2, StrUtils,
  Account, ReciptsFunctions, FaraConsts;

{$R *.dfm}

procedure TContractF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 2;
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
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(GrdCheck.Columns[nextIndex].Visible) OR
          (GrdCheck.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      // #32, #157: if curIndex in [3, 7, 8, 9, 10, 11, 12] then
      // begin
      // Key := #0;
      // GrdCheckEditButtonClick(Sender);
      // end; // if
    end; // case

    if nextIndex >= 0 then
      while (nextIndex < GrdCheck.Columns.Count) and
        (not(GrdCheck.Columns[nextIndex].Visible) OR
        (GrdCheck.Columns[nextIndex].ReadOnly)) do
        Inc(nextIndex);
    if nextIndex >= (Sender as TDBGrid).Columns.Count then
      nextIndex := -1;
    if (curIndex <> nextIndex) then
      case nextIndex of
        - 1:
          begin
            sendkey(vk_down, [], false);
            (Sender as TDBGrid).SelectedIndex := 0;
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

procedure TContractF.qryFormItemsCheckBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› çﬂ „ÿ„∆‰ Â” Ìœ.') <> mryes then
    Abort;
end;

procedure TContractF.FormCreate(Sender: TObject);
begin
  inherited;
  myStore := DM.myStore;
  SetLookUpCash(qryFormItemsCheck);
  SetLookUpCash(qryRecipts);
  SetLookUpCash(qryReciptsItems);
  SetLookUpCash(qryFormsCheck);

  qryFormItemsCheck.Parameters.ParamByName('YearID').Value := APPBank.Year;
  qryRecipts.Parameters.ParamByName('YearID').Value := APPBank.Year;
  qryReciptsItems.Parameters.ParamByName('YearID').Value := APPBank.Year;
  qryFormsCheck.Parameters.ParamByName('YearID').Value := APPBank.Year;

  DbgrdOption := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];

  ReciptType := var_glb_gParam;
  lblCaption.Hint := ReciptType.ToString;
  frmrdVajhenaghd.InitType(ReciptType, 0);
  frmrdCheck.InitType(ReciptType, 1);
  with qryinit do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
    Caption := FieldByName('ReciptCaption').AsString;
    lblCaption.Caption := Caption;
    LblRecNo.Caption := '‘„«—Â ' + Caption;
    LblReciptDate.Caption := ' «—ÌŒ ' + Caption;
    N1Print1.Hint := FieldByName('PerformFileName').AsString;
    N2Print1.Hint := FieldByName('PerformFileName').AsString;
    N1Print2.Hint := FieldByName('ReportFileName').AsString;
    N2Print2.Hint := FieldByName('ReportFileName').AsString;

    if (FieldByName('ReportFileCaption1').AsString <> '') then
    begin
      mnuPrint1.Caption := FieldByName('ReportFileCaption1').AsString;
    end;
    if (FieldByName('ReportFileCaption2').AsString <> '') then
    begin
      mnuPrint2.Caption := FieldByName('ReportFileCaption2').AsString;
    end;
    initReportName(qryinit, popprint, AllC_L_i_c_k_Click);

  end; // with
  IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
  begin
    if qryinit.FieldByName('CustomerKind1').AsString = EmptyStr then
      Warn('ÂÌç ê—ÊÂÌ »—«Ì ê—ÊÂ „‘ —Ì 1 „‘Œ’ ‰‘œÂ «” ');
    with qryCustomers1 do
    begin
      Active := false;
      SQL.Add(' WHERE (CustomersGroup.GroupType IN(' +
        Trim(qryinit.FieldByName('CustomerKind1').AsString) +
        ')) AND dbo.ChkUser(Customers.OperatorID,' + IntToStr(user.id) + ')=1')

    end; // with
    qryCustCreate(qryCust1, '1', ContractF);

  end; // if
  FormOutput := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  if FormOutput then
  begin
    // Form_InOut:='Output';
    FieldNamePrice := 'TotalOutputPrice';
    FieldNameEntity := 'OutputEntity';
    FieldNameWeight := 'OutputWeight';
  end
  else
  begin
    // Form_InOut:='Input';
    FieldNamePrice := 'TotalInputPrice';
    FieldNameEntity := 'InputEntity';
    FieldNameWeight := 'InputWeight';
  end;

  qryReciptsItems.Active := false;
  initFormPanel;
  initFormConfig;
  if FormOutput then
    initForm4Output;
  With qryRecipts do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
  end; // with
  qryRecipts.Last;
  PageControl1.TabIndex := 0;

  frmGrdvjhnghd1.qryRecipts := qryRecipts;
  frmGrdvjhnghd1.ReciptType := ReciptType;

end;

procedure TContractF.GrdCheckKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // -------- move to newpanel
  if newPanel.Visible then
    BitBtn3.SetFocus
  else
    gridkeyenter(Sender, Key);
end;

procedure TContractF.GrdCheckEditButtonClick(Sender: TObject);
// var
// // c: String;
// aDataSet: TDataSet;
// TmpChar: Char;
// i: Smallint;
// sqlText: String;
// Results: array [0 .. 5] of String;
// // theFields: Variant;
begin
  inherited;
  // if (Sender as TDBGrid).ReadOnly then
  // exit;
  // i := (Sender as TDBGrid).SelectedIndex;
  // aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  // (Sender as TDBGrid).SelectedIndex := i;
  // if not(aDataSet.State in dseditmodes) then
  // aDataSet.Edit;
  // case i of
  // 3:
  // begin
  // sqlText :=
  // 'SELECT Customers.CustID,Customers.CustName FROM Customers LEFT OUTER JOIN '
  // + ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
  // + ' WHERE CustomersGroup.GroupType IN(' +
  // Trim(qryInitForm.FieldByName('CustomerKind2').AsString) + ')';
  //
  // if searchCode_ADOF.SearchCode2(DMf.adcBSell, '„‘Œ’«  œ—Ì«›  ﬂ‰‰œÂ',
  // sqlText, ['òœ', '‰«„ œ—Ì«›  ﬂ‰‰œÂ'], Results, [50, 150], alLeft) then
  // begin
  // aDataSet.FieldByName('CustomerID2').AsString := Results[0];
  // aDataSet.FieldByName('_Cudtomername2').AsString := Results[1];
  // TmpChar := #13;
  // gridkeyenter(Sender, TmpChar);
  // end; // if
  // end; // 6
  //
  // 7:
  // begin
  // AccSpeedButtonBudgetCode(aDataSet, 'BudgetCode');
  // TmpChar := #13;
  // gridkeyenter(Sender, TmpChar);
  // end; // if
  //
  // 8:
  // begin
  // AccSpeedButtonProjectsCode(aDataSet, 'ProjectID', 'BudgetCode');
  // TmpChar := #13;
  // gridkeyenter(Sender, TmpChar);
  // end; // if
  // // ----------------------------------------------
  // 9:
  // begin
  // AccSpeedButtonTopicCode(aDataSet, 'TopicCode');
  // TmpChar := #13;
  // gridkeyenter(Sender, TmpChar);
  // end;
  // 10:
  // begin
  // AccSpeedButtonDetailCode(aDataSet, 'DetailCode', 'TopicCode');
  // TmpChar := #13;
  // gridkeyenter(Sender, TmpChar);
  // end;
  // 11:
  // begin
  // AccSpeedButtonCTopicCode(aDataSet, 'CTopicCode', 'TopicCode');
  // TmpChar := #13;
  // gridkeyenter(Sender, TmpChar);
  // end;
  // 12:
  // begin
  // AccSpeedButtonCTopicCode(aDataSet, 'CTopicCode2', 'CTopicCode');
  // TmpChar := #13;
  // gridkeyenter(Sender, TmpChar);
  // end;
  // end; // case

end;

procedure TContractF.actPrintExecute(Sender: TObject);
begin
  inherited;
  qryFormItemsCheck.Open;
  popprint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TContractF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TContractF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  SBtnReciptNumber.Click
end;

procedure TContractF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TContractF.DeleteCheck(ItemID: Integer);
begin
  with DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'DELETE FROM FormItems WHERE FormItemID = ' + IntToStr(ItemID);
    SQL.Add('and ServerID = ' + qryFormItemsCheck.FieldByName('ServerID')
      .AsString);
    SQL.Add('and YearID = ' + qryFormItemsCheck.FieldByName('YearID').AsString);
    ExecSQL;
  end; // with
end;

procedure TContractF.qryFormItemsCheckAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TContractF.qryFormItemsCheckAfterInsert(DataSet: TDataSet);
begin
  inherited;
  AllAfterInsert4acc(DataSet);
  if not CheckRequiredFields(qryFormsCheck) then
  begin
    DataSet.Cancel;
    exit;
  end;
  // if not (qryFormsCheck.state in dsEditModes) then   qryFormsCheck.edit;
  DataSet.FieldByName('FirstUser').AsString := user.Name;
  DataSet.FieldByName('FormItemID').AsInteger := GetANewID(DataSet, Self.Name,
    'FormItems', 'FormItemID', qryRecipts, 1);
  DataSet.FieldByName('Row').AsInteger := abs(DataSet.RecordCount + 1);
  // GetANewCode(Self.Name,'SELECT MAX(Row) FROM FormItems WHERE FormID ='+qryForms.Fieldbyname('FormID').AsString ,'',dm_CofferF.adcCoffer);
  DataSet.FieldByName('FormID').AsInteger := qryFormsCheck.FieldByName('FormID')
    .AsInteger;
  DataSet.FieldByName('CustomerID2').AsString :=
    qryRecipts.FieldByName('PersonID1').AsString;
  GrdCheck.SetFocus

  // DataSet.FieldByName('BudgetCode').AsInteger:=qryForms.FieldByName('BudgetCode').AsInteger;
  // DataSet.FieldByName('ProjectID').AsInteger:=qryForms.FieldByName('ProjectID').AsInteger;
  // DataSet.FieldByName('TopicCode').AsString:=qryForms.FieldByName('TopicCode').AsString;
  // DataSet.FieldByName('DetailCode').AsString:=qryForms.FieldByName('DetailCode').AsString;
  // DataSet.FieldByName('CTopicCode').AsString:=qryForms.FieldByName('CTopicCode').AsString;
  // DataSet.FieldByName('CTopicCode2').AsString:=qryForms.FieldByName('CTopicCode2').AsString;
  // if Cus2DetailAsMaster then DataSet.FieldByName('CustomerID2').AsString:=qryForms.FieldByName('CustomerID2').AsString;

end;

procedure TContractF.qryFormItemsCheckBeforePost(DataSet: TDataSet);
begin
  inherited;
  // if (qryFormItemsCheckNumber.AsString='') and (DataSet.State=dsInsert) then begin
  // DataSet.Cancel;
  // if (DataSet.RecordCount+1)<>1 then
  // qryForms.Post;
  // Abort;
  // end
  // else begin
  if not CheckRequiredFieldsFill(qryFormItemsCheck) then
  begin
    qryFormItemsCheck.Delete;
    qryFormsCheck.Edit;
    qryFormItemsCheck.Edit;
    exit;
  end;

  if not CheckRequiredFields(qryFormItemsCheck) then
  begin
    if not(qryFormsCheck.State in dseditmodes) then
      qryFormsCheck.Edit;
    Abort;
  end;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  TrimStringFields(DataSet);
  // end;//if
  DataSet.FieldByName('CustomerID2').AsString :=
    qryRecipts.FieldByName('PersonID1').AsString;
end;

procedure TContractF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(GrdCheck, IntToStr(ReciptType));
  SaveColWidth(GrdReciptsItems, IntToStr(ReciptType));
  FreeMyComponent(Self, ['qryCust1', 'srcCustomers1',
    'ppDBPipelineCustomers1']);
end;

procedure TContractF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(GrdCheck, 7, True, IntToStr(ReciptType));
  SetColSize(GrdReciptsItems, 1, True, IntToStr(ReciptType));
  SetColSize(DBGrid1, 1, True, IntToStr(ReciptType));
end;

procedure TContractF.frmGrdvjhnghd1BitBtn12Click(Sender: TObject);
begin
  inherited;
  frmGrdvjhnghd1.BitBtn12Click(Sender);

end;

procedure TContractF.frmGrdvjhnghd1BitBtn9Click(Sender: TObject);
begin
  inherited;
  frmGrdvjhnghd1.BitBtn9Click(Sender);

end;

procedure TContractF.frmrdCheckrgpFormTypeClick(Sender: TObject);
begin
  inherited;
  frmrdCheck.rgpFormTypeClick(Sender);
  qryFormItemsCheck.Active := false;
  // Form_Type := frmrdCheck.FormType;
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('Type').Value := frmrdCheck.FormType;
    Active := True;
  end; // with
  UpDateqryFormsCheck(qryFormsCheck, qryRecipts, frmrdCheck.FormType);
end;

procedure TContractF.frmrdVajhenaghdrgpFormTypeClick(Sender: TObject);
begin
  inherited;
  frmrdVajhenaghd.rgpFormTypeClick(Sender);
  // Form_Type := frmrdVajhenaghd.FormType;
  frmGrdvjhnghd1.FormType := frmrdVajhenaghd.FormType;
  with frmGrdvjhnghd1.qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('Type').Value := frmrdVajhenaghd.FormType;
    Active := True;
  end; // with
  UpDateqryFormsCheck(frmGrdvjhnghd1.qryFormsFr, qryRecipts,
    frmrdVajhenaghd.FormType);
end;

procedure TContractF.actDelete1Execute(Sender: TObject);
var
  i: Integer;
  id: Integer;
  deletedCount: Integer;
begin
  inherited;
  if GrdCheck.SelectedRows.Count > 1 then
  begin
    with DMf.qryTmpTmp do
    begin
      Active := false;
      SQL.Text := 'select FormID from FormItems WHERE FormID=' +
        qryFormsCheck.FieldByName('FormID').AsString;
      Active := True;
      if RecNo = -1 then
      begin
        Warn('«» œ« «ÿ·«⁄«  —«  «ÌÌœ ﬂ‰Ìœ Ê ”Å” «ﬁœ«„ »Â ⁄„·Ì«  Õ–› „Ê—œ ‰Ÿ— ‰„«ÌÌœ..');
        exit;
      end; // if
    end; // with
    if get_response('—œÌ› Õ–› ‘œÂ ﬁ«»· »«“ê‘  ‰„Ì »«‘œ¬Ì« »—«Ì Õ–› ' +
      IntToStr(GrdCheck.SelectedRows.Count) + '«‰ Œ«» „ÿ„∆‰ Â” Ìœø') = mryes
    then
    begin
      deletedCount := 0;
      for i := 0 to GrdCheck.SelectedRows.Count - 1 do
      begin
        qryFormItemsCheck.GotoBookmark((GrdCheck.SelectedRows[i]));
        id := qryFormItemsCheck.FieldByName('FormItemID').AsInteger;
        DeleteCheck(id);
        Inc(deletedCount);
      end; // for
      qryFormItemsCheck.Active := false;
      qryFormItemsCheck.Active := True;
      Warn(IntToStr(deletedCount) + ' —œÌ› »« „Ê›ﬁ  Õ–› ‘œ. ');
    end; // if for get_response
  end
  else
    DataSetDeleteFormItems.Execute;

end;

procedure TContractF.spdSelectCheckClick(Sender: TObject);
begin
  inherited;
  PopChoose.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TContractF.AllC_L_i_c_k_Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline1Recipts.RangeBegin := rbCurrentRecord;
        ppDBPipeline1Recipts.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppDBPipeline1Recipts.RangeBegin := rbFirstRecord;
        ppDBPipeline1Recipts.RangeEnd := reLastRecord;
      end;
  end;
  try
    qryRecipts.DisableControls;
    frmGrdvjhnghd1.qryFormsFr.DisableControls;
    qryFormsCheck.DisableControls;
    qryFormItemsCheck.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  finally
    qryRecipts.EnableControls;
    frmGrdvjhnghd1.qryFormsFr.EnableControls;
    qryFormsCheck.EnableControls;
    qryFormItemsCheck.EnableControls;
  end;

end;

procedure TContractF.qryFormItemsCheckBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryFormsCheck.State in dseditmodes) then
    Abort;
end;

function TContractF.CheckRequiredFieldsFill(DataSet: TDataSet): Boolean;
var
  i: Integer;
begin
  Result := True;
  for i := 0 to DataSet.FieldCount - 1 do
    if DataSet.Fields[i].Required then
      if DataSet.Fields[i].IsNull then
      begin
        Result := false;
      end
      else
      begin
        Result := True;
        Break;
      end; // if
end;

procedure TContractF.SBtnReciptNumberClick(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 4] of String;
begin
  inherited;
  Txt := 'SELECT Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptDate, Stores.c_StoreName, Customers.CustName '
    + ' FROM  Recipts INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID INNER JOIN Customers ON Recipts.PersonID1 = Customers.CustID '
    + ' WHERE (Recipts.ReciptType = ' + IntToStr(ReciptType) + ') ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' ›—„Â«  ', Txt,
    ['', '‘„«—Â ›—„', ' «—ÌŒ', '‰«„ ' + qryinit.FieldByName('StoreCaption')
    .AsString, '‰«„ ÿ—› ﬁ—«—œ«œ'], Results, [50, 10, 50, 150, 150], alLeft);
  if b then
    qryRecipts.Locate('ReciptID', Results[0], []);
end;

procedure TContractF.SBtnPersonID1Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Txt := 'SELECT Customers.CustID,Customers.CustName FROM Customers ' +
    ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + ' WHERE (CustomersGroup.GroupType IN(' + qryinit.FieldByName
    ('CustomerKind1').AsString + ')) AND dbo.ChkUser(Customers.OperatorID,' +
    IntToStr(user.id) + ')=1';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + 'Â« ', Txt,
    ['òœ', qryinit.FieldByName('Person1Caption').AsString], Results,
    [50, 150], alLeft);
  if b then
  begin
    if not(qryRecipts.State in dseditmodes) then
      qryRecipts.Edit;
    qryRecipts['PersonID1'] := Results[0];
    // if PnlPerson2.Visible then EdtPersonID2.SetFocus
  end; // if
end;

procedure TContractF.GrdReciptsItemsEditButtonClick(Sender: TObject);
var
  // c: String;
  aDataSet: TDataSet;
  TmpChar: Char;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 1] of String;
  // theFields: Variant;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        sqlText := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName ' +
          ' FROM         StuffCoding INNER JOIN ' +
          ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode ' +
          ' WHERE     (StoreStuffs.n_StoreID = ' +
          qryReciptsStoreID.AsString + ' ) ';

        if searchCode_ADOF.SearchCode2(DMf.adcBSell, '„‘Œ’«  ﬂ«·«', sqlText,
          ['òœ', '„‘Œ’«  ﬂ«·«'], Results, [50, 150], alLeft) then
        begin
          aDataSet.FieldByName('StuffCode').AsString := Results[0];
          TmpChar := #13;
          gridReciptsItemskeyenter(Sender, TmpChar);
        end; // if
      end; // 6
  end; // case

end;

procedure TContractF.GrdReciptsItemsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // if newPanel.Visible then
  // BitBtn3.SetFocus
  // else
  gridReciptsItemskeyenter(Sender, Key);

end;

procedure TContractF.qryReciptsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('›—„ Õ–› ‘œ.', 1);
end;

procedure TContractF.qryReciptsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TContractF.qryReciptsAfterInsert(DataSet: TDataSet);
var
  Txt: String;
begin
  inherited;
  if not LblStore.Visible then
  begin
    DMf.qryStores.Open;
    myStore.code := DMf.qryStores.Fields[0].AsInteger;
    DataSet.FieldByName('StoreID').AsInteger := myStore.code;
  end;

  GetANewID(DataSet, Self.Name, 'Recipts', 'ReciptID', nil,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  Txt := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
    IntToStr(ReciptType) + ')';
  // IF RestartStore THEN Txt:=Txt+'AND(StoreID='+IntToStr(myStore.code)+')';
  DataSet.FieldByName('ReciptNumber').AsInteger :=
    GetANewCode(Self.Name, Txt, 'ReciptNumber');
  DataSet.FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('InsertDate').AsDateTime := now;
  DataSet.FieldByName('OperatorID').AsInteger := user.id;
  DataSet.FieldByName('ReciptType').AsInteger := ReciptType;
  // IF RestartStore THEN DataSet.FieldByName('StoreID').AsInteger:=myStore.code;//  2
  ReciptStateAutoStateChange(qryinit, qryRecipts);
  DataSet.FieldByName('AddDecValue').AsInteger := 0;
  DataSet.FieldByName('TotalValue').AsInteger := 0;
  DataSet.FieldByName('SecondType').AsCurrency := 0;
  DataSet.FieldByName('UseOtherID').AsCurrency := 0;
  DataSet.FieldByName('FirstUser').AsString := user.Name;
  DataSet.FieldByName('ReciptStartDate').AsString := APPBank.StartYear;
  DataSet.FieldByName('ReciptEndDate').AsString := APPBank.endYear;
  EdtRNum.SetFocus;

end;

procedure TContractF.qryReciptsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  // if qryForms.State=dsInsert then  SaveArticlesToFile;
  rid2 := qryReciptsItemsReciptItemID.AsInteger;
  if qryReciptsItems.State in dseditmodes then
    qryReciptsItems.Post;
  try
    qryReciptsItems.UpdateBatch;
    // if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø')<>mrYes then abort;
    BigMessage('À»  ‘œ.', 1);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('«‘ﬂ«· œ— À»  ›—„');
    end;
  end; // try
  rid := qryReciptsReciptID.AsInteger;
  qryRecipts.Requery;
  qryRecipts.Locate('ReciptID', rid, []);
  qryReciptsItems.Requery;
  qryReciptsItems.Locate('ReciptItemID', rid2, []);
end;

procedure TContractF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCustomersActivity do
  begin
    Active := false;
    Parameters.ParamByName('CustID').Value := qryReciptsPersonID1.AsInteger;
    Active := True;
  end;
  qryCustActive(qryCust1, qryRecipts.FieldByName('PersonID1').AsInteger);

  PageControl1Change(PageControl1);

end;

procedure TContractF.qryReciptsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryReciptsItems.Active then
  BEGIN
    if get_response(' €ÌÌ—«  ·€Ê ‘Ê‰œø') <> mryes then
      Abort;
    qryReciptsItems.Cancel;
    qryReciptsItems.Requery();
  END;
end;

procedure TContractF.qryReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT COUNT(*) FROM Forms GROUP BY ReciptID HAVING  ReciptID='
      + qryRecipts.FieldByName('ReciptID').AsString;
    Active := True;
    if (Fields[0].AsInteger > 0) then
    begin
      Warn('«» œ« «ÿ·«⁄«  Œ“«‰Â˛œ«—Ì „—»Êÿ »Â «Ì‰ ›—„ —« Õ–› ﬂ‰Ìœ.˛',
        mtInformation);
      Abort;
    end; // if
    Active := false;
  end; // with
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ Ê ﬂ·ÌÂ¡ ﬂ«·«Â«Ì ¬‰ „ÿ„∆‰ Â” Ìœø') <> mryes
  then
    Abort;

end;

procedure TContractF.qryReciptsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryReciptsItems.State in dseditmodes then
    qryReciptsItems.Post;
  if frmGrdvjhnghd1.qryFormsFr.State in dseditmodes then
    frmGrdvjhnghd1.qryFormsFr.Post;
  if qryFormsCheck.State in dseditmodes then
    qryFormsCheck.Post;

  DataSet.FieldByName('ModifyDate').AsDateTime := now;
  TrimStringFields(qryRecipts);
  if not CheckRequiredFields(qryRecipts) then
    Abort;

  if not ValidateDatasetDates(DataSet, ['ReciptEndDate'], APPBank.StartYear,
    APPBank.endYear) then
    Abort;

  if not ValidReciptNumber(qryRecipts, qryinit, myStore) then
    Abort;
  qryRecipts.FieldByName('ReciptValue').AsCurrency :=
    CalcSumFileds(qryReciptsItems, 'TotallSellPrice');
  // InsertReciptsDeficits;

end;

procedure TContractF.initFormPanel;
begin
  With qryinit do
  begin
    // < Form.Caption>
    Caption := FieldByName('ReciptCaption').AsString;
    lblCaption.Caption := Caption;
    // ________________________  ⁄‰Ê«‰ »Ã«Ì ﬂ·„Â „ﬁœ«— Ê Ê“ ‰__________________________

    qryReciptsItems.FieldByName('InputEntity').DisplayLabel :=
      opt.EntityCaption;
    qryReciptsItems.FieldByName('OutputEntity').DisplayLabel :=
      opt.EntityCaption;
    qryReciptsItems.FieldByName('InputWeight').DisplayLabel :=
      opt.WeightCaption;
    qryReciptsItems.FieldByName('OutputWeight').DisplayLabel :=
      opt.WeightCaption;

    // < 1 êœ «‰»«— ›⁄«· >
    LblStore.Visible := FieldByName('StoreActive').AsInteger = 1;
    EdtStoreID.Visible := LblStore.Visible;
    SBtnStoreID.Visible := LblStore.Visible;
    DBTextStoreID.Visible := LblStore.Visible;
    LblStore.Caption := 'ﬂœ ' + FieldByName('StoreCaption').AsString;
    qryRecipts.FieldByName('StoreID').DisplayLabel := 'ﬂœ ' +
      FieldByName('StoreCaption').AsString;
    // <   „‘ —Ì 1 ›⁄«· >
    qryRecipts.FieldByName('PersonID1').DisplayLabel := 'ﬂœ ' +
      LblPerson1.Caption;
    qryRecipts.FieldByName('_PersonName1').DisplayLabel := '‰«„ ' +
      LblPerson1.Caption;

    // < 12 «— »«ÿ »« Õ”«»œ«—Ì >

    actPrint.Hint := FieldByName('PerformFileName').AsString + #13#10 +
      FieldByName('ReportFileName').AsString + #13#10;

    EdtRNum.ReadOnly := FieldByName('EditReciptNumberActive').AsInteger <> 1;

    GrpReciptNote.Visible := (FieldByName('NoteShow').AsInteger = 1) or
      (FieldByName('NoteShow').AsInteger = 3);
  end; // with
  initAddField;
end;

procedure TContractF.PageControl1Change(Sender: TObject);
begin
  inherited;

  case PageControl1.TabIndex of
    0:
      begin
        with qryReciptsItems do
        begin
          Active := false;
          Parameters.ParamByName('ReciptID').Value :=
            qryReciptsReciptID.AsInteger;
          Parameters.ParamByName('ServerID').Value :=
            qryReciptsServerID.AsInteger;
          Active := True;
          // Last;
        end;

      end;
    1:
      begin
        UpDateqryFormsCheck(frmGrdvjhnghd1.qryFormsFr, qryRecipts,
          frmrdVajhenaghd.FormType);
      end;
    2:
      begin
        qryFormItemsCheck.Close;
        UpDateqryFormsCheck(qryFormsCheck, qryRecipts, frmrdCheck.FormType);

      end;
  end;
end;

procedure TContractF.initAddField;
begin
  VATActiveFields(qryStores, qryRecipts, qryReciptsItems, qryinit, nil, nil,
    qryStuff_Unit_TecInf, GrdReciptsItems, qryItemsTaxCoChange,
    qryItemsTaxValueChange, NIL);
end;

procedure TContractF.qryItemsTaxCoChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // TaxCo
end;

procedure TContractF.qryItemsTaxValueChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // TaxValue
end;

procedure TContractF.EndOfPrice(Field_Name: String);
var
  TaxCo: Real;
  TaxValue, TotallSellPrice: Currency;
  VATRound: Integer;
  procedure SellPrice;
  var
    c: Currency;
  begin
    c := 0;
    if qryinit.FieldByName('PawsFieldsActive').AsInteger > 0 then
    begin
      if qryinit.FieldByName('PawsFieldsActive').AsInteger in [1, 3] then
        c := qryReciptsItems.FieldByName('Portage').AsCurrency;
      if qryinit.FieldByName('PawsFieldsActive').AsInteger in [2, 3] then
        c := c + qryReciptsItems.FieldByName('Article').AsCurrency +
          qryReciptsItems.FieldByName('Wage').AsCurrency +
          qryReciptsItems.FieldByName('Scoria').AsCurrency;
    end;

    TotallSellPrice := qryReciptsItems.FieldByName(FieldNamePrice).AsCurrency +
      TaxValue - qryReciptsItems.FieldByName('DeficitValue').AsCurrency -
      qryReciptsItems.FieldByName('DeficitValue2').AsCurrency -
      qryReciptsItems.FieldByName('DeficitValue3').AsCurrency -
      qryReciptsItems.FieldByName('DeficitValue4').AsCurrency + c +
      qryReciptsItems.FieldByName('UnitSellPrice2').AsCurrency;
    if qryReciptsItems.FieldByName('TotallSellPrice').AsCurrency <> TotallSellPrice
    then
      qryReciptsItems.FieldByName('TotallSellPrice').AsCurrency :=
        TotallSellPrice;
  end;

begin
  TaxValue := 0;
  if qryinit.FieldByName('VATActive').AsInteger = 1 then
  begin
    TaxCo := qryReciptsItems.FieldByName('TaxCo').AsFloat;
    TaxValue := qryReciptsItems.FieldByName('TaxValue').AsCurrency;
    VATRound := qryinit.FieldByName('VATRound').AsInteger;
    if (Field_Name = 'DeficitValue') or (Field_Name = FieldNamePrice) or
      (Field_Name = 'TaxCo')

    then
    begin
      TaxValue := RoundTo((qryReciptsItems.FieldByName(FieldNamePrice)
        .AsCurrency + qryReciptsItems.FieldByName('UnitSellPrice2').AsCurrency -
        qryReciptsItems.FieldByName('DeficitValue').AsCurrency -
        qryReciptsItems.FieldByName('DeficitValue2').AsCurrency -
        qryReciptsItems.FieldByName('DeficitValue3').AsCurrency -
        qryReciptsItems.FieldByName('DeficitValue4').AsCurrency) * TaxCo /
        (100 * VATRound), 0) * VATRound;
      if qryReciptsItems.FieldByName('TaxValue').AsCurrency <> TaxValue then
        qryReciptsItems.FieldByName('TaxValue').AsCurrency := TaxValue;
    end;
  end;
  SellPrice
end;

procedure TContractF.initFormConfig;
begin
end;

procedure TContractF.initForm4Output;
var
  i: Integer;

begin
  // EdtIOEntity.DataField:='OutputEntity';
  // EdtIOWeight.DataField:='OutputWeight';
  // EdtTotalIOPrice.DataField:='TotalOutputPrice';
  for i := 0 to GrdReciptsItems.Columns.Count - 1 do
  begin
    if Pos('input', LowerCase(GrdReciptsItems.Columns[i].FieldName)) <> 0 then
      GrdReciptsItems.Columns[i].FieldName :=
        StringReplace(GrdReciptsItems.Columns[i].FieldName, 'Input',
        'Output', []);
  end; // for
end;

procedure TContractF.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryRecipts.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;

  newPanelReciptsItems.Visible := okPanel.Visible;
  // SumGridReciptsItems.Visible := newPanel.Visible;
  PnlReciptsItems.Visible := okPanel.Visible;
  PnlFormItemsCheck.Visible := okPanel.Visible;

  frmGrdvjhnghd1.newPanelVajheNaghd.Visible := okPanel.Visible;
  // frmVajheNaghd1.SumGridVajheNaghd.Visible := newPanel.Visible;
  frmGrdvjhnghd1.PnlVajheNaghd.Visible := okPanel.Visible;

  SBtnReciptNumber.Visible := newPanel.Visible;
  SBtnPersonID1.Visible := okPanel.Visible;
  SBtnStoreID.Enabled := okPanel.Visible;

  FreeReservedCodes(DMf.adcBSell, 'recipts', 'reciptid', Self.Name);
  FreeReservedCodes(DMf.adcBSell, 'recipts', 'reciptnumber', Self.Name);
  // FreeReservedCodes(DMf.adcBSell, 'recipts', '', IntToStr(ReciptType));
  // FreeReservedCodes(DMf.adcBSell, 'reciptitems', '', IntToStr(ReciptType));

end;

procedure TContractF.gridReciptsItemskeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 7;
          6:
            nextIndex := 7;
          7:
            nextIndex := 8;
          8:
            nextIndex := 9;
          9:
            nextIndex := 10;
          10:
            nextIndex := -1;
          11:
            nextIndex := -1;
          12:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not(GrdReciptsItems.Columns[nextIndex].Visible) OR
          (GrdReciptsItems.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if curIndex in [0] then

    begin
      Key := #0;
      GrdReciptsItemsEditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < GrdReciptsItems.Columns.Count) and
      (not(GrdReciptsItems.Columns[nextIndex].Visible) OR
      (GrdReciptsItems.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TDBGrid).SelectedIndex := 0;
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

procedure TContractF.qryReciptsItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ﬂ«·« Õ–› ‘œ.', 1);
end;

procedure TContractF.qryReciptsItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TContractF.qryReciptsItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryRecipts) then
  begin
    DataSet.Cancel;
    exit;
  end;
  if not(qryRecipts.State in dseditmodes) then
    qryRecipts.Edit;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryRecipts.FieldByName('PersonID1').AsInteger;
  GetANewID(DataSet, Self.Name, 'ReciptItems', 'ReciptItemID', qryRecipts,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').Value;
  DataSet.FieldByName('StuffCode').AsLargeInt := 0;
  DataSet.FieldByName('FirstUser').AsString := user.Name;
  if qryinit.FieldByName('VATActive').AsInteger = 1 then
    DataSet.FieldByName('TaxCo').AsFloat :=
      qryinit.FieldByName('VATCo').AsFloat;

  GrdReciptsItems.SetFocus;
end;

procedure TContractF.qryReciptsItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂ«·« „ÿ„∆‰ Â” Ìœø') <> mryes then
    Abort;
end;

procedure TContractF.qryReciptsItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryRecipts.State in dseditmodes) then
    Abort;
end;

procedure TContractF.qryReciptsItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryRecipts.State in dseditmodes) then
    Abort;

end;

procedure TContractF.qryReciptsItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryRecipts.FieldByName('PersonID1').AsInteger;
  if DataSet.FieldByName('StuffCode').AsLargeInt = 0 then
  begin
    DataSet.Cancel;
    okPanel.SetFocus;
    Abort
  end;
  TrimStringFields(qryReciptsItems);
  if not CheckRequiredFields(qryReciptsItems) then
    Abort;
  if not ValidateDatasetDates(qryReciptsItems, APPBank.StartYear,
    APPBank.endYear) then
    Abort;
  // if not ControlEntity then Abort;
  DataSet.FieldByName('InputWeight').AsFloat :=
    RoundTo(DataSet.FieldByName('InputWeight').AsFloat, opt.RoundEntity);
  DataSet.FieldByName('OutputWeight').AsFloat :=
    RoundTo(DataSet.FieldByName('OutputWeight').AsFloat, opt.RoundEntity);
  // DataSet.FieldByName('ControlCode').AsString:=IfThen(DataSet.FieldByName('ControlCode').IsNull,'0',DataSet.FieldByName('ControlCode').AsString);

end;

procedure TContractF.qryReciptsItemsDeficitValue2Change(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName)
end;

procedure TContractF.qryReciptsItemsDeficitValue3Change(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName)
end;

procedure TContractF.qryReciptsItemsDeficitValue4Change(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName)
end;

procedure TContractF.srcReciptsItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanelReciptsItems.Visible := qryReciptsItems.State in dseditmodes;
  newPanelReciptsItems.Visible := not okPanelReciptsItems.Visible and
    (qryRecipts.State in dseditmodes);
  BtnReject.Cancel := newPanelReciptsItems.Visible;
  FreeReservedCodes(DMf.adcBSell, 'reciptitems', 'reciptitemid', Self.Name);

end;

procedure TContractF.qryReciptsItemsInputWeightChange(Sender: TField);
begin
  inherited;
  qryReciptsItems.FieldByName(GrdReciptsItems.Columns[6].FieldName).Value :=
    qryReciptsItems.FieldByName(GrdReciptsItems.Columns[4].FieldName).AsFloat *
    qryReciptsItems.FieldByName('UnitSellPrice').AsFloat;
end;

procedure TContractF.qryReciptsItemsTotalInputPriceChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // DeficitValue
  // qryReciptsItems.FieldByName('TotallSellPrice').Value:=
  // qryReciptsItems.FieldByName(GrdReciptsItems.Columns[6].FieldName).AsFloat-
  // qryReciptsItems.FieldByName('DeficitValue').AsFloat;
end;

procedure TContractF.SBtnStoreIDClick(Sender: TObject);
var
  c, Txt, s: String;
begin
  inherited;
  Txt := 'SELECT n_StoreID, c_StoreName FROM Stores ';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c,
    qryinit.FieldByName('StoreCaption').AsString + 'Â«', Txt,
    ['òœ', '‰«„ ' + qryinit.FieldByName('StoreCaption').AsString], alLeft);
  if s <> '' then
  begin
    if not(qryRecipts.State in dseditmodes) then
      qryRecipts.Edit;
    qryRecipts['StoreID'] := c;
    // EdtPersonID1.SetFocus;
  end; // if
end;

procedure TContractF.qryFormItemsCheckAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TContractF.qryFormsCheckAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFormItemsCheck do
  begin
    Active := false;
    Parameters.ParamByName('FormID').Value := qryFormsCheckFormID.AsInteger;
    Parameters.ParamByName('ServerID').Value := qryFormsCheckServerID.AsInteger;
    Active := True;
  end;
end;

procedure TContractF.qryFormsCheckAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryFormItemsCheck.FieldByName('FormItemID').AsInteger;
  if qryFormItemsCheck.State in dseditmodes then
    qryFormItemsCheck.Post;
  try
    qryFormItemsCheck.UpdateBatch;
    // BigMessage('À»  ‘œ.',1);
  except
    Warn('«‘ﬂ«· œ— À»  ›—„');
  end; // try
  rid := qryFormsCheck.FieldByName('FormID').AsInteger;
  qryFormsCheck.Requery;
  qryFormsCheck.Locate('FormID', rid, []);
  qryFormItemsCheck.Requery;
  qryFormItemsCheck.Locate('FormItemID', rid2, []);
end;

procedure TContractF.qryFormsCheckAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TContractF.SBtnFormNumberClick(Sender: TObject);
var
  Results: array [0 .. 7] of String;
  Txt, AddFilter: String;
  b: Boolean;
begin
  inherited;
  // AddFilter:=IfThen(FilterCustomerID1,' and (CustomerID1='+IntToStr(CustomerID)+')','');
  Txt := 'SELECT FormID,ServerID,YearID,FormNumber, FormDate, CustomerID2, CustName+CustomerName2, Amount '
    + 'FROM  FormsCustomer WHERE ( FormType=' + IntToStr(frmrdCheck.FormType) +
    ')' + AddFilter;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' ›—„Â«  ', Txt,
    ['', '', '', '‘„«—Â ›—„', ' «—ÌŒ ›—„',
    'ﬂœ ' + qryInitForm.FieldByName('Customer2Lable').AsString,
    '‰«„ ' + qryInitForm.FieldByName('Customer2Lable').AsString, '„»·€'],
    Results, [0, 0, 0, 100, 50, 100, 100, 100], alLeft);
  if b then
    qryFormsCheck.Locate('FormID;ServerID;YearID',
      VarArrayOf([Results[0], Results[1], Results[2]]), []);
end;

procedure TContractF.SBtnCustomerID1Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Txt := 'SELECT Customers.CustID,Customers.CustName FROM Customers LEFT OUTER JOIN '
    + ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + ' WHERE CustomersGroup.GroupType IN(' +
    Trim(qryInitForm.FieldByName('CustomerKind1').AsString) + ')' +
    IfThen(qryinit.FieldByName('UserSecurityCheckActive').AsInteger = 1,
    ' AND dbo.ChkUser(Customers.OperatorID,' + IntToStr(user.id) + ')=1', '');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    Trim(qryInitForm.FieldByName('Customer1Label').AsString) + 'Â«', Txt,
    ['òœ', '‰«„ ' + Trim(qryInitForm.FieldByName('Customer1Label').AsString) +
    ''], Results, [50, 150], alLeft);
  if b then
  begin
    if not(qryFormsCheck.State in dseditmodes) then
      qryFormsCheck.Edit;
    qryFormsCheck['CustomerID1'] := Results[0];
  end; // if
end;

procedure TContractF.srcFormItemsCheckStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMf.adcBSell, 'formitems', 'formitemid', Self.Name);
end;

procedure TContractF.srcFormsCheckStateChange(Sender: TObject);
begin
  inherited;
  okPanelFormsCheck.Visible := qryFormsCheck.State in dseditmodes;
  newPanelFormsCheck.Visible := not okPanelFormsCheck.Visible;
  SBtnFormNumber.Visible := newPanelFormsCheck.Visible;

  // rgpFormType.Enabled := newPanelFormsCheck.Visible;

  DataSetDeleteFormItems.Visible := newPanel.Visible;
  // SumGridGrdCheck.Visible := newPanelFormsCheck.Visible;

  // FreeReservedCodes(DMf.adcBSell, 'Forms', 'FormNumber');
  // FreeReservedCodes(DMf.adcBSell, 'Forms', 'FormID');
  FreeReservedCodes(DMf.adcBSell, 'Forms', 'FormNumber', IntToStr(ReciptType));
  FreeReservedCodes(DMf.adcBSell, 'Forms', 'FormID', Self.Name);

end;

procedure TContractF.qryFormsCheckAfterInsert(DataSet: TDataSet);
begin
  inherited;
  AllAfterInsert4acc(DataSet);
  DataSet.FieldByName('BudgetCode').AsInteger := 0;
  DataSet.FieldByName('ProjectID').AsInteger := 0;
  DataSet.FieldByName('Amount').AsInteger := 0;
  // if canshow then DataSet.FieldByName('CustomerID1').AsInteger:=CustomerID;
  DataSet.FieldByName('FormID').AsInteger := GetANewID(DataSet, Self.Name,
    'Forms', 'FormID', qryRecipts, qryinit.FieldByName('StepCorrelate')
    .AsInteger);
  GetFormNumber(IntToStr(ReciptType), qryInitForm, qryFormsCheck);
  DataSet.FieldByName('FormType').AsInteger := frmrdCheck.FormType;
  DataSet.FieldByName('FormDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('CustomerID2').AsInteger :=
    qryRecipts.FieldByName('PersonID1').AsInteger;
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').AsInteger;
  DataSet.FieldByName('YearID').AsInteger := qryRecipts.FieldByName('YearID')
    .AsInteger;
  DataSet.FieldByName('ServerID').AsInteger :=
    qryRecipts.FieldByName('ServerID').AsInteger;
  DataSet.FieldByName('FirstUser').AsString := user.Name;
  EdtFNum.SetFocus
end;

procedure TContractF.qryFormsCheckBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryFormItemsCheck.State in dseditmodes then
    qryFormItemsCheck.Post;
  TrimStringFields(qryFormsCheck);
  if not CheckRequiredFields(qryFormsCheck) then
    Abort;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  DataSet.FieldByName('ModifyDate').AsDateTime := now;
  qryFormsCheck.FieldByName('Amount').AsCurrency :=
    CalcSumFileds(qryFormItemsCheck, 'ItemAmount');
  // DataSet.FieldByName('CustomerID2').AsInteger:=qryRecipts.FieldByName('PersonID1').AsInteger;
end;

procedure TContractF.qryFormItemsCheckBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryFormsCheck.State in dseditmodes) then
    Abort;
end;

procedure TContractF.qryFormsCheckBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryFormItemsCheck.Active then
  BEGIN
    if get_response(' €ÌÌ—«  ·€Ê ‘Ê‰œø') <> mryes then
      Abort;
    qryFormItemsCheck.Cancel;
    qryFormItemsCheck.Requery();
  end;
end;

procedure TContractF.qryFormsCheckBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ Ê ﬂ·ÌÂ¡ çﬂÂ«Ì ¬‰ „ÿ„∆‰ Â” Ìœø') <> mryes
  then
    Abort;
end;

procedure TContractF.EdtCustomerID1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SBtnCustomerID1.Click;
end;

procedure TContractF.BtnAccCheckClick(Sender: TObject);
begin
  inherited;
  Accountf.enter(qryFormsCheck)
end;

procedure TContractF.ppLblAllStringReplaceGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := StringReplace(Text, 'ÿ—›ﬁ—œ«œ', qryRecipts.FieldByName('_PersonName1')
    .AsString, [rfReplaceAll]);
  Text := StringReplace(Text, '»Â‰‘«‰Ì',
    qryRecipts.FieldByName('_PersonAddress').AsString, [rfReplaceAll]);
  Text := StringReplace(Text, 'Ã„⁄„ﬁœ«—',
    CurrToStr(CalcSumFileds(qryReciptsItems,
    GrdReciptsItems.Columns[3].FieldName)), [rfReplaceAll]);
  Text := StringReplace(Text, 'Ã„⁄„»·€',
    CurrToStrF(CalcSumFileds(qryReciptsItems, 'TotallSellPrice'), ffCurrency,
    0), [rfReplaceAll]);
  Text := StringReplace(Text, 'Ã„⁄Ê“‰', CurrToStr(CalcSumFileds(qryReciptsItems,
    GrdReciptsItems.Columns[4].FieldName)), [rfReplaceAll]);
end;

procedure TContractF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TContractF.actCopyPasteExecute(Sender: TObject);
begin
  inherited;
  CopyPaste(qryFormsCheck, qryFormItemsCheck, GrdCheck, AddMonth)
end;

end.
