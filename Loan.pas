unit Loan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, DB, ADODB, ppBands, ppClass, ppDB,
  ppCtrls, ppReport, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDBPipe,
  ppVar, Menus, ppTypes, SumDBGrid, ppParameter, SMSUnit, ppStrtch, ppSubRpt,
  ComCtrls, Math, ppDesignLayer, System.ImageList, System.Actions;

type
  TLoanF = class(Ttemplate2MDIF)
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
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    qryForms_CustomerName: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    DataSetInsert2: TDataSetInsert;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    DBGrid1: TDBGrid;
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
    qryFormItemspreFormItemID: TIntegerField;
    qryFormItemsAidInfoNo: TStringField;
    qryFormItemsAidInfoDate: TStringField;
    actEdit: TAction;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    btnFormNumber: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    edtFormNumber: TDBEdit;
    edtFormDate: TDBEdit;
    actDelete1: TAction;
    actselectLoan: TAction;
    qryFormsPayTypes: TWordField;
    qryFormsDocNo: TIntegerField;
    qryFormsDocDate: TStringField;
    BitBtn10: TBitBtn;
    qryFormsCTopicCode2: TStringField;
    pnlDelete: TPanel;
    SpeedButton16: TSpeedButton;
    qryFormsModifyDate: TDateTimeField;
    actReportsearch: TAction;
    Panel5: TPanel;
    pnlCustomer1: TPanel;
    lbcustomer1: TLabel;
    sbtnCustomerID1: TSpeedButton;
    edtCustomerID1: TDBEdit;
    DBEdit11: TDBEdit;
    pnlCustomer2: TPanel;
    lbcustomer2: TLabel;
    sbtnCustomerID2: TSpeedButton;
    edtCustomerID2: TDBEdit;
    DBEdit7: TDBEdit;
    qryForms_CustomerName2: TStringField;
    qryFormsFormState: TWordField;
    qryFormsFirstUser: TStringField;
    qryFormsLastUser: TStringField;
    Panel6: TPanel;
    LblPayTypes: TLabel;
    CmbPayTypes: TDBComboBox;
    popPrint: TPopupMenu;
    NReportFileName1: TMenuItem;
    NReportFileName2: TMenuItem;
    grpNote: TGroupBox;
    DBMemo1: TDBMemo;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    qryFormItemsCashWage: TBCDField;
    qryFormsManegerNote: TStringField;
    qryFormsSubAmount: TBCDField;
    qryFormsRate: TFloatField;
    PnlLoan: TPanel;
    Label3: TLabel;
    edtAmount1: TDBEdit;
    Label7: TLabel;
    edtSubAmount: TDBEdit;
    Label5: TLabel;
    edtRate: TDBEdit;
    grpLoan: TGroupBox;
    DBMemo2: TDBMemo;
    SumGrid1: TSumGrid;
    actCopyPaste: TAction;
    SpeedButton1: TSpeedButton;
    qryFormItemsFirstUser: TStringField;
    qryFormItemsLastUser: TStringField;
    SpeedButton2: TSpeedButton;
    BitBtn11: TBitBtn;
    qryFormItems_Cudtomername2: TStringField;
    qryFormsServerID: TIntegerField;
    qryFormsYearID: TIntegerField;
    qryFormItemsServerID: TIntegerField;
    qryFormItemsYearID: TIntegerField;
    qryFormsLoansFormID: TIntegerField;
    qryForms_Mobile: TStringField;
    edtAidInfoNo2: TDBEdit;
    Label4: TLabel;
    qryFormsAidInfoNo2: TFloatField;
    SpeedButton3: TSpeedButton;
    actCalc: TAction;
    qryFormItemsItemAmount_CashWage: TBCDField;
    N1: TMenuItem;
    N2: TMenuItem;
    mnuCheck: TMenuItem;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppShape1: TppShape;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBText21: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText2: TppDBText;
    ppDBText24: TppDBText;
    ppLabel14: TppLabel;
    ppLabel5: TppLabel;
    ppLabel16: TppLabel;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppLabel3: TppLabel;
    ppLabel1: TppLabel;
    ppDBText10: TppDBText;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel17: TppLabel;
    ppDBText7: TppDBText;
    ppLabel18: TppLabel;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLabel15: TppLabel;
    ppDBText9: TppDBText;
    ppLabel19: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel20: TppLabel;
    ppDBText13: TppDBText;
    ppLabel21: TppLabel;
    qryFormItemsSeverableAmount: TWordField;
    qryFormItemsDayDelay: TIntegerField;
    qryFormItemsAmountDelay: TBCDField;
    qryLoan: TADOQuery;
    qryFormItems_CheckDate: TStringField;
    qryFormItems_FormNumber: TIntegerField;
    qryFormsTopicCode: TLargeintField;
    btnCalcInterestLoan: TBitBtn;
    edtAmount: TDBEdit;
    lblAmount: TLabel;
    ProgressBar1: TProgressBar;
    btnTasviye: TBitBtn;
    qryFormItemsTopicCode: TLargeintField;
    qryFormItemsDetailCode: TStringField;
    qryFormItemsCTopicCode: TStringField;
    qryFormItemsCTopicCode2: TStringField;
    qryFormItemsCTopicCode3: TStringField;
    SpeedButton4: TSpeedButton;
    actCalcDaydelay: TAction;
    pnlSells: TPanel;
    pnlSellsEmporium: TPanel;
    lbl1: TLabel;
    dblkcbb_SellsEmporium: TDBLookupComboBox;
    pnlSellsMethod: TPanel;
    lbl2: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    qryMaster_FormsSellsMethod: TIntegerField;
    qryFormsSellsEmporium: TIntegerField;
    qryFormsOperatorID: TIntegerField;
    pnlAidSubAmountCaption: TPanel;
    pnlAidInfo2NoCaption: TPanel;
    lblAidInfo2NoCaptionDate: TLabel;
    edtAidInfoDate2: TDBEdit;
    qryFormsAidInfoDate2: TStringField;
    Panel1: TPanel;
    LblAidInfoNo: TLabel;
    LblAidInfoDate: TLabel;
    edtAidInfoNo1: TDBEdit;
    edtAidInfoDate1: TDBEdit;
    actReciptForm: TAction;
    qryRecipts: TADOQuery;
    qryReciptItems: TADOQuery;
    qryinit: TADOQuery;
    qryFormItemsID: TLargeintField;
    actCalc2: TAction;
    SpeedButton5: TSpeedButton;
    actReciptCashWage: TAction;
    actReciptAmountDelay: TAction;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    grdRecipts1: TDBGrid;
    qryRecipts1: TADOQuery;
    srcRecipts1: TDataSource;
    qryRecipts1ReciptCaption: TStringField;
    qryRecipts1ReciptNumber: TIntegerField;
    qryRecipts1StuffCode: TLargeintField;
    qryRecipts1c_StuffName: TStringField;
    qryRecipts1TaxCo: TFloatField;
    qryRecipts1TaxValue: TBCDField;
    qryRecipts1TotallSellPrice: TBCDField;
    qryRecipts1TotalPrice: TBCDField;
    qryRecipts1ReciptID: TIntegerField;
    qryRecipts1ServerID: TIntegerField;
    qryRecipts1YearID: TIntegerField;
    procedure qryFormItemsAfterDelete(DataSet: TDataSet);
    procedure qryFormItemsAfterInsert(DataSet: TDataSet);
    procedure qryFormItemsBeforeDelete(DataSet: TDataSet);
    procedure sbtnCustomerID1Click(Sender: TObject);
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
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure btnFormNumberClick(Sender: TObject);
    procedure qryFormItemsBeforePost(DataSet: TDataSet);
    procedure qryFormsBeforePost(DataSet: TDataSet);
    procedure qryFormItemsAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actDelete1Execute(Sender: TObject);
    procedure AllC_L_i_c_k_Click(Sender: TObject);
    procedure qryFormItemsBeforeEdit(DataSet: TDataSet);
    procedure ppDBCalcSumItemAmountGetText(Sender: TObject; var Text: String);
    procedure actReportsearchExecute(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure ALLDBEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure actCopyPasteExecute(Sender: TObject);
    procedure qryFormItemsAfterEdit(DataSet: TDataSet);
    procedure qryFormsAfterEdit(DataSet: TDataSet);
    procedure actselectLoanExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryFormItemsBeforeInsert(DataSet: TDataSet);
    procedure actSmsSendExecute(Sender: TObject);
    procedure ppLblAmountGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLBLsumGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actCalcExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure qryFormItemsCheckDateChange(Sender: TField);
    procedure btnCalcInterestLoanClick(Sender: TObject);
    procedure btnTasviyeClick(Sender: TObject);
    procedure actCalcDaydelayExecute(Sender: TObject);
    procedure qryFormsSellsEmporiumChange(Sender: TField);
    procedure qryFormsPayTypesChange(Sender: TField);
    procedure actReciptFormExecute(Sender: TObject);
    procedure actCalc2Execute(Sender: TObject);
    procedure actReciptCashWageExecute(Sender: TObject);
    procedure actReciptAmountDelayExecute(Sender: TObject);
    procedure qryFormItemsAfterScroll(DataSet: TDataSet);
    procedure qryFormsBeforeScroll(DataSet: TDataSet);
    procedure grdRecipts1DblClick(Sender: TObject);
  private
    FormType: Integer;
    CustomerID, LoansFormID: Integer;
    canShow: Boolean;
    canFilter: Boolean;
    Cus2DetailAsMaster: Boolean;
    UnsavedFileName: String;
    DbgrdOption: set of TDBGridOption;
    DataSetInsert: Boolean;
    UnitSellPrice: Currency;
    procedure myInitReportFile(GeneralFileName: string);
    procedure SaveArticlesToFile;
    procedure DeleteCheck(ItemID: Integer);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function SumChecked: Boolean;
    procedure initCombos;
    procedure AddRecipt(var ReciptID: Integer);
    procedure AddReciptItems(var ReciptID: Integer);
    procedure PostAddRecipt;
    { Private declarations }
  public
    procedure Enter(Form_Type: Integer; LoansFormID: Integer = 0);
    { Public declarations }
  end;

var
  LoanF: TLoanF;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro,
  sndkey32, FormFunctions, search2, sort2, SelectCustomer, StrUtils,
  ChooseChecks, searchReports, Account, FaraConsts, main, filter_ADO,
  Filter_ADO_Const, FilterClass_ADO;

{$R *.dfm}

procedure TLoanF.Enter(Form_Type: Integer; LoansFormID: Integer = 0);
begin
  CreateMDIForm2(TLoanF, LoanF, mainF, Form_Type);
  LoanF.LoansFormID := LoansFormID;
end;

procedure TLoanF.grdRecipts1DblClick(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts1, mainF);
end;

procedure TLoanF.gridkeyenter(Sender: TObject; var Key: Char);
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
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 5;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 7;
          7:
            nextIndex := -1;
        end; // case
        if (curIndex > 7) and (aDataSet.FieldByName('CheckDate').IsNull) and
          (aDataSet.FieldByName('CheckNumber').IsNull) and
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
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if curIndex in [3] then
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

procedure TLoanF.qryFormItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if qryForms.FieldByName('FormState').AsInteger > 0 then
  begin
    Warn('فقط ' + qryInitForm.FieldByName('FormCaption').AsString +
      'ي كه نوع اطلاعات آن موقت است قابل حذف است‏', mtInformation);
    Abort;
  end;
  if not OkDeleteEditCheck(qryFormItems) then
    Abort;

  if get_response('آيا از حذف مطمئن هستيد.') <> mryes then
    Abort;
end;

procedure TLoanF.sbtnCustomerID1Click(Sender: TObject);
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
  txt := 'SELECT dbo.Customers.CustID,dbo.Customers.CustName FROM dbo.Customers LEFT OUTER JOIN '
    + ' dbo.CustomersGroup ON dbo.Customers.CustomerGrpID = dbo.CustomersGroup.CustomerGrpID '
    + ' WHERE dbo.CustomersGroup.GroupType IN(' +
    Trim(qryInitForm.FieldByName('CustomerKind' + Ttag).AsString) + ')' +
    IfThen(qryInitForm.FieldByName('UserSecurityCheckActive').AsInteger  in[1,3],
    ' AND dbo.ChkUser(Customers.OperatorID,' + IntToStr(user.id) + ')=1', '');
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell,
    Trim(qryInitForm.FieldByName(CustomerLabel).AsString) + 'ها', txt,
    ['کد', 'نام ' + Trim(qryInitForm.FieldByName(CustomerLabel).AsString) + ''],
    results, [50, 150], alLeft);
  if b then
  begin
    if not(qryForms.State in dseditmodes) then
      qryForms.edit;
    qryForms['CustomerID' + Ttag] := results[0];
  end; // ifend;
end;

procedure TLoanF.FormCreate(Sender: TObject);
var
  b: Boolean;
  s: string;
  i: Integer;
begin
  inherited;
  SetLookUpCash(qryForms);
  SetLookUpCash(qryFormItems);
  DbgrdOption := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];
  FormType := var_glb_gParam;
  lblCaption.Hint := IntToStr(FormType);
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
    Caption := FieldByName('FormCaption').AsString;
    lblCaption.Caption := Caption;
    initCombos;
    initCofferAddField(qryInitForm, qryForms, pnlSells, pnlSellsEmporium,
      pnlSellsMethod, dblkcbb_SellsEmporium, dblkcbb_SellsMethod);

    canShow := FieldByName('RestartFormNumberOnCust1').AsInteger = 1;
    canFilter := FieldByName('Customer1UseInRecall').AsInteger = 1;

    // -------------------------set Customer2Detail---------------------------//
    case FieldByName('Customer2ActiveOnDetail').AsInteger of
      0:
        begin
          Cus2DetailAsMaster := True;
          setColumns2(DBGrid1, false, 'CustomerID2');
          setColumns2(DBGrid1, false, '_Cudtomername2');
        end;
      1:
        begin
          Cus2DetailAsMaster := True;
          setColumns2(DBGrid1, Cus2DetailAsMaster, 'CustomerID2');
          setColumns2(DBGrid1, Cus2DetailAsMaster, '_Cudtomername2');
        end;
      2, 5:
        begin
          setColumns2(DBGrid1, True, 'CustomerID2');
          setColumns2(DBGrid1, True, '_Cudtomername2');
        end;
    end; // case
    // -------------------------set Customer---------------------------//

    qryFormItems.FieldByName('CustomerID2').DisplayLabel := ' كد ' +
      FieldByName('Customer2OnDetailLable').AsString;
    qryFormItems.FieldByName('_Cudtomername2').DisplayLabel := ' نام ' +
      FieldByName('Customer2OnDetailLable').AsString;
    qryFormItems.FieldByName('CustomerID2').Required := Cus2DetailAsMaster;
    qryFormItems.FieldByName('_Cudtomername2').Required := Cus2DetailAsMaster;

    pnlCustomer1.Visible := FieldByName('Customer1Active').Value;
    if pnlCustomer1.Visible then
      lbcustomer1.Caption := ' كد و نام ' +
        FieldByName('Customer1Label').AsString;

    pnlCustomer2.Visible := FieldByName('Customer2Active').AsInteger = 1;
    // qryForms.FieldByName('CustomerID2').Required:=pnlCustomer2.Visible;

    lbcustomer2.Caption := ' كد و نام ' + FieldByName('Customer2Lable')
      .AsString;
    pnlCustomer1.Enabled := not canShow;

    // ------------------------set CheckDateActive--------------------------//
    b := (qryInitForm.FieldByName('CheckDateActive').AsInteger in [1, 2]);
    setColumns2(DBGrid1, b, 'CheckDate');
    qryFormItems.FieldByName('CheckDate').Required :=
      (FieldByName('CheckDateActive').AsInteger in [1]);

    // ------------------------set PnlAidInfoMaster--------------------------//

    setColumns2(DBGrid1, FieldByName('ValueVisible').Value, 'ItemAmount');
    if (FieldByName('ValueVisible').Value) <> 1 then
      qryFormItems.FieldByName('ItemAmount').Required := false;

    b := FieldByName('DetailNoteVisible').Value;
    setColumns2(DBGrid1, b, 'ItemNote');

    grpNote.Visible := FieldByName('NoteVisible').AsInteger = 1;

    // -------------------------set qryForms AccountRelationPosition---------------------------//
    b := FieldByName('AccountRelationPosition').AsInteger in [1, 2];
    setColumns2(DBGrid1, b and (FieldByName('TopicCodeActive').AsInteger = 1),
      'TopicCode');
    setColumns2(DBGrid1, b and (FieldByName('DetailCodeActive').AsInteger = 1),
      'DetailCode');
    setColumns2(DBGrid1, b and (FieldByName('CTopicCode1Active').AsInteger = 1),
      'CTopicCode');
    setColumns2(DBGrid1, b and (FieldByName('CTopicCode2Active').AsInteger = 1),
      'CTopicCode2');

    // -------------------------set Budget---------------------------//

    NReportFileName1.Hint := FieldByName('ReportFileName1').AsString;
    NReportFileName2.Hint := FieldByName('ReportFileName2').AsString;
    NReportFileName1.Visible := NReportFileName1.Hint <> '';
    NReportFileName2.Visible := NReportFileName2.Hint <> '';

    LblPayTypes.Visible := FieldByName('Pay_Topic_Active').AsInteger in [1, 3];
    CmbPayTypes.Visible := LblPayTypes.Visible;

    PnlLoan.Visible := FieldByName('MasterLoan').AsInteger = 0;
    grpLoan.Visible := PnlLoan.Visible;
    qryFormItemsCashWage.Required := PnlLoan.Visible;
    setColumns2(DBGrid1, PnlLoan.Visible, 'CashWage');

    actselectLoan.Visible := (qryInitForm.FieldByName('HasRecall')
      .AsInteger = 1) and
      (Trim(qryInitForm.FieldByName('RecallFormTypes').AsString) <> EmptyStr);
    SpeedButton2.Visible := actselectLoan.Visible;

    actReciptAmountDelay.Visible := actselectLoan.Visible;
    actReciptCashWage.Visible := not actselectLoan.Visible;

    setColumns2(DBGrid1, actselectLoan.Visible, 'DayDelay');
    setColumns2(DBGrid1, actselectLoan.Visible, 'AmountDelay');
    setColumns2(DBGrid1, (actselectLoan.Visible) and (FormType <> 113),
      '_CheckDate');
    setColumns2(DBGrid1, (actselectLoan.Visible), '_FormNumber');
    if actselectLoan.Visible then
    begin
      for i := 0 to DBGrid1.Columns.Count - 1 do
        setColumns2(DBGrid1, True, DBGrid1.Columns[i].FieldName, aReadOnly);
      setColumns2(DBGrid1, false, 'CheckDate', aReadOnly);
    end;

    // if actselectLoan.Visible then
    // begin
    // qryFormItemsDayDelay.Free;
    // qryFormItemsAmountDelay.Free;
    // end;

    qryFormItems_CheckDate.DisplayLabel := 'تاريخ سررسيد';
    if actselectLoan.Visible then
      qryFormItemsCheckDate.DisplayLabel := 'تاريخ پرداخت قسط';

    if FormType = 113 then
      qryFormItems.LockType := ltReadOnly;

    LblAidInfoNo.Caption := LblAidInfoNo.Caption + ' ' +
      FieldByName('AidInfoCaption').AsString;
    LblAidInfoDate.Caption := LblAidInfoDate.Caption + ' ' +
      FieldByName('AidInfoCaption').AsString;

    lblAidInfo2NoCaptionDate.Caption := 'تاريخ ' +
      FieldByName('AidInfo2NoCaption').AsString;
    pnlAidInfo2NoCaption.Visible := FieldByName('AidInfoActive').AsInteger
      in [1, 3, 4];

  end; // with

  with qryLoan Do
  begin
    Active := false;
    s := Trim(qryInitForm.FieldByName('RecallFormTypes').AsString);
    if s <> EmptyStr then
      SQL.Add(Format('AND(Forms.FormType IN (%s))', [Trim(s)]));
  end;

  with qryForms do
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM Forms';
    SQL.Add('WHERE FormType = :FormType');
    SQL.Add('AND ( YearID = :YearID ) ');
    SQL.Add(IfThen(canShow, ' AND CustomerID1 = :Cust', ''));

    setChkUsersCustomersGroupsActive(qryForms);

    SQL.Add('ORDER BY FormDate,FormNumber');
    Parameters.ParamByName('FormType').Value :=
      qryInitForm.Parameters.ParamByName('Type').Value;
    qryForms.Parameters.ParamByName('YearID').Value := APPBank.Year;
    qryFormItems.Parameters.ParamByName('YearID').Value := APPBank.Year;
    if (canShow) then
    begin
      selectCustomerF.GetCustomer(CustomerID,
        qryInitForm.FieldByName('Customer1Label').AsString,
        qryInitForm.FieldByName('CustomerKind1').AsString);
      Parameters.ParamByName('Cust').Value := CustomerID;
    end; // if
    Active := True;
    Last;
  end; // wih
  qryFormItems.Active := false;
  qryFormItems.Parameters.ParamByName('FormID').Value :=
    qryForms.FieldByName('FormID').AsInteger;
  qryFormItems.Parameters.ParamByName('ServerID').Value :=
    qryForms.FieldByName('ServerID').AsInteger;
  qryFormItems.Active := True;
  UnsavedFileName := 'UnsavedItem_' + Self.Name + IntToStr(FormType) + '.DAT';
  btnCalcInterestLoan.Visible := FormType = 114;
  btnTasviye.Visible := FormType = 115;

  lblAmount.Visible := FormType = 113;
  edtAmount.Visible := lblAmount.Visible;
  if FormType = 113 then
  begin
    qryFormItems_FormNumber.DisplayLabel := 'شماره فرم';
    qryFormItemsCheckDate.DisplayLabel := 'تاريخ پرداخت';
  end;
  actCalc.Visible := FormType = 109;
  actCalcDaydelay.Visible := FormType in [110, 111];

end;

procedure TLoanF.qryFormsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TLoanF.qryFormsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if qryForms.FieldByName('FormState').AsInteger > 0 then
  begin
    Warn('فقط ' + qryInitForm.FieldByName('FormCaption').AsString +
      'ي كه نوع اطلاعات آن موقت است قابل حذف است‏', mtInformation);
    Abort;
  end;
  CheckItems(qryFormItems);
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mryes then
    Abort;
end;

procedure TLoanF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // -------- move to newpanel
  if newPanel.Visible then
    BitBtn3.SetFocus
  else
    gridkeyenter(Sender, Key);
end;

procedure TLoanF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  TmpChar: Char;
  i: Smallint;
  sqlText: String;
  results: array [0 .. 5] of String;
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
          Trim(qryInitForm.FieldByName('Customer2DetailKind').AsString) + ')';

        if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'مشخصات مشتري', sqlText,
          ['کد', 'نام مشتري'], results, [50, 150], alLeft) then
        begin
          aDataSet.FieldByName('CustomerID2').AsString := results[0];
          aDataSet.FieldByName('_Cudtomername2').AsString := results[1];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end; // 6
  end; // case

end;

procedure TLoanF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TLoanF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1, actSmsSend);
end;

procedure TLoanF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryForms, qryFormItems, smsForms, FormType, 0, 1);
end;

procedure TLoanF.actReciptAmountDelayExecute(Sender: TObject);
begin
  inherited;
  UnitSellPrice := qryFormItemsAmountDelay.AsCurrency;
  actReciptForm.Execute
end;

procedure TLoanF.actReciptCashWageExecute(Sender: TObject);
begin
  inherited;
  UnitSellPrice := qryFormItemsCashWage.AsCurrency;
  actReciptForm.Execute;
  qryFormItemsAfterScroll(qryFormItems);
end;

procedure TLoanF.actReciptFormExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try

      AddItem(DMF.adcBSell, 'PersonID1', 'اتحادیه', 'كد', ftInteger, dvMinMax,
        '', '', ciSingleLookup,
        'SELECT CustID,CustName FROM Customers WHERE(CustID<>0)',
        'SELECT ' + qryFormsCustomerID1.AsString +
        ',MAX(CustID) FROM Customers   ');

      AddItem(DMF.adcBSell, 'PersonID2', 'فروشنده/قرارداد', 'كد', ftInteger,
        dvMinMax, '', '', ciSingleLookup,
        'SELECT CustID,CustName FROM Customers WHERE(CustID<>0)',
        'SELECT ' + qryFormsCustomerID2.AsString +
        ',MAX(CustID) FROM Customers   ');

      AddItem(DMF.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
        '', ciSingleLookup, LookupSQL4Store, 'SELECT 21,21');

      AddItem(DMF.adcBSell, 'TaxCo', 'مالیات', 'درصد', ftFloat, dvDefaults, '9',
        '9', ciSingle, '', '');

      AddItemFilter(GetFilter, TFilterStuffCodeSin);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        PostAddRecipt;
      end;
    finally
      Free;
    end;
  end;

end;

procedure TLoanF.PostAddRecipt;
var
  ReciptID: Integer;
begin
  with DMF.qryTmpTmp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT LTRIM(Recipts.ReciptNumber) + '' '' + ReciptTypes1.ReciptCaption AS ReciptCaption';
    SQL.Add('FROM ReciptItems INNER JOIN');
    SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
    SQL.Add('ReciptItems.YearID = Recipts.YearID INNER JOIN');
    SQL.Add('ReciptTypes1 ON Recipts.ReciptType = ReciptTypes1.ReciptType');
    SQL.Add('WHERE (ReciptItems.FormItems_ID = :ID )');
    Parameters.ParamByName('ID').Value := qryFormItemsID.AsLargeInt;
    Active := True;
    if FieldByName('ReciptCaption').AsString <> EmptyStr then
    begin
      Warn('قبلا ' + FieldByName('ReciptCaption').AsString + ' ثبت شده است.!');
      exit;
    end;
  end;

  qryinit.Open;
  qryRecipts.Open;
  qryReciptItems.Open;
  ReciptID := 0;
  AddRecipt(ReciptID);
  if ReciptID <> 0 then
  begin
    AddReciptItems(ReciptID);
    BigMessage('ثبت شد.', 0);
  end;

end;

procedure TLoanF.AddRecipt(var ReciptID: Integer);

begin
  with qryRecipts Do
  begin
    Open;
    Insert;
    FieldByName('ReciptType').AsInteger := 12;
    ReciptID := GetanewID(qryRecipts, Self.Name, 'Recipts', 'ReciptID', nil, 1);
    FieldByName('StoreID').AsInteger :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);

    FieldByName('PersonID1').AsInteger :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);

    FieldByName('PersonID2').AsInteger :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);

    FieldByName('PersonID4').AsInteger :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);

    FieldByName('ReciptDate').AsString := var_glb_CurrentDate;

    myStore.code := FieldByName('StoreID').AsInteger;

    GetReciptNumber(qryinit, qryRecipts, 0, myStore);
    FieldByName('UseOtherID').AsInteger := 0;
    FieldByName('OperatorID').AsInteger := user.id;
    FieldByName('InsertDate').AsDateTime := Now;
    FieldByName('ModifyDate').AsDateTime := Now;
    FieldByName('FirstUser').AsString := user.Name;
    Post;

  end;
end;

procedure TLoanF.AddReciptItems(var ReciptID: Integer);
var
  VATRound: Integer;
begin
  inherited;
  VATRound := qryinit.FieldByName('VATRound').AsInteger;
  with qryReciptItems Do
    try
      Close;
      Open;
      Insert;

      FieldByName('FormItems_ID').AsLargeInt := qryFormItemsID.AsLargeInt;

      FieldByName('ReciptID').AsInteger := ReciptID;
      FieldByName('ReciptItemID').AsInteger :=
        GetanewID(qryReciptItems, Self.Name, 'ReciptItems ',
        'ReciptItemID', nil, 1);

      FieldByName('StuffCode').AsLargeInt :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);

      FieldByName('FirstUser').AsString := user.Name;
      FieldByName('UnitSellPrice').AsCurrency := UnitSellPrice;

      FieldByName('UseUnitID').AsInteger := 0;

      FieldByName('ItemNote').AsString := qryFormsFormNumber.AsString;

      FieldByName('TotalOutputPrice').AsFloat := UnitSellPrice;

      FieldByName('OutputEntity').AsFloat := 1;

      FieldByName('TaxCo').AsFloat :=
        GetcFrom(myParams.ParamValues['TaxCo'], ftFloat);

      FieldByName('TaxValue').AsFloat :=
        Trunc(FieldByName('TotalOutputPrice').AsFloat * FieldByName('TaxCo')
        .AsFloat / (100 * VATRound)) * VATRound;

      FieldByName('TotallSellPrice').AsFloat := FieldByName('TotalOutputPrice')
        .AsFloat + FieldByName('TaxValue').AsFloat;

      Post;
    finally

    end;
end;

procedure TLoanF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormItems);
end;

procedure TLoanF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormItems);
end;

procedure TLoanF.btnCalcInterestLoanClick(Sender: TObject);
begin
  inherited;
  With DMF.qryTmpTmp do
    try
      Active := false;
      SQL.Text := Format('DECLARE @YearMounth CHAR(7) =%s',
        [QuotedStr(LeftStr(qryFormsFormDate.AsString, 7))]);
      SQL.Add(Format(',@InterestDate Char(10) =%s',
        [QuotedStr(qryFormsFormDate.AsString)]));
      SQL.Add('SELECT View_SahamVaSoodTaghsimi.CustomerID2, ROUND(dbo.CalcLoan(@YearMounth, @InterestDate)');
      SQL.Add('* View_SahamVaSoodTaghsimi.ItemAmount / derivedtbl_1.SUMItemAmount, 0) AS Interest');
      SQL.Add('FROM View_SahamVaSoodTaghsimi CROSS JOIN');
      SQL.Add('(SELECT SUM(ItemAmount) AS SUMItemAmount');
      SQL.Add('FROM View_SahamVaSoodTaghsimi AS View_SahamVaSoodTaghsimi_1) AS derivedtbl_1');
      SQL.Add('ORDER BY View_SahamVaSoodTaghsimi.CustomerID2');
      Active := True;
      ProgressBar1.Max := RecordCount;
      qryFormItems.DisableControls;
      while not Eof do
      begin
        qryFormItems.Insert;
        qryFormItemsCustomerID2.AsInteger := FieldByName('CustomerID2')
          .AsInteger;
        qryFormItemsItemAmount.AsLargeInt := FieldByName('Interest').AsLargeInt;
        if qryFormItemsItemAmount.AsLargeInt < 0 then
        begin
          Warn(Format('كد %d به نام %S سود منفی تعلق مي گيرد و قابل ثبت نيست',
            [qryFormItemsCustomerID2.AsInteger,
            qryFormItems_Cudtomername2.AsString]), mtInformation);
          qryForms.Cancel;
          Abort;
        end;
        qryFormItems.Post;
        ProgressBar1.StepIt;
        Application.ProcessMessages;
        Next;
      end;

    finally
      qryFormItems.EnableControls;
      ProgressBar1.Position := 0;
    end;
end;

procedure TLoanF.btnFormNumberClick(Sender: TObject);
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
  if searchCode_ADOF.SearchCode2(DMF.adcBSell, 'جستجو كد', txt,
    ['', 'شماره فرم', 'تاريخ فرم',
    'كد ' + Trim(qryInitForm.FieldByName('Customer1Label').AsString),
    'نام ' + Trim(qryInitForm.FieldByName('Customer1Label').AsString),
    'شماره كمكي', 'تاريخ كمكي'], result, [0, 50, 100, 100, 100, 100, 100],
    alLeft) then
    qryForms.locate('FormID', result[0], []);
end;

procedure TLoanF.btnTasviyeClick(Sender: TObject);
begin
  inherited;
  With DMF.qryTmpTmp do
    try
      Active := false;
      SQL.Text := 'SELECT FormItems.CustomerID2,';
      SQL.Add('CAST(SUM(CASE WHEN Forms.FormType IN (103, 114)');
      SQL.Add('THEN FormItems.ItemAmount ELSE - (FormItems.ItemAmount + ISNULL(FormItems.CashWage, 0)) END) AS float) AS ItemAmount,');
      SQL.Add('Forms.FormType, FormTypes.FormCaption');
      SQL.Add('FROM FormItems AS FormItems INNER JOIN');
      SQL.Add('Forms AS Forms ON FormItems.FormID = Forms.FormID AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID = Forms.YearID INNER JOIN');
      SQL.Add('FormTypes ON Forms.FormType = FormTypes.FormType');
      SQL.Add('WHERE (Forms.FormType IN (103, 114, 2, 111))');
      SQL.Add('AND (FormItems.CustomerID2 = :CustomerID2 )');
      SQL.Add('GROUP BY FormItems.CustomerID2, Forms.FormType, FormTypes.FormCaption');
      Parameters.ParamByName('CustomerID2').Value :=
        qryFormsCustomerID2.AsInteger;
      Active := True;
      ProgressBar1.Min := 0;
      ProgressBar1.Max := RecordCount;
      qryFormItems.DisableControls;
      while not Eof do
      begin
        qryFormItems.Insert;
        qryFormItemsCustomerID2.AsInteger := FieldByName('CustomerID2')
          .AsInteger;
        qryFormItemsItemAmount.AsLargeInt := FieldByName('ItemAmount')
          .AsLargeInt;
        qryFormItemsItemNote.AsString := FieldByName('FormCaption').AsString;
        qryFormItems.Post;
        ProgressBar1.StepIt;
        Application.ProcessMessages;
        Next;
      end;

    finally
      qryFormItems.EnableControls;
      ProgressBar1.Position := 0;
    end;

end;

procedure TLoanF.DeleteCheck(ItemID: Integer);
begin
  with DMF.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'DELETE FROM FormItems WHERE FormItemID = ' + IntToStr(ItemID);
    SQL.Add('and ServerID = ' + qryFormItems.FieldByName('ServerID').AsString);
    SQL.Add('and YearID = ' + qryFormItems.FieldByName('YearID').AsString);
    ExecSQL;
  end; // with
end;

procedure TLoanF.qryFormItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TLoanF.qryFormsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSetInsert := True;
  if LoansFormID > 0 then

    Self.qryForms.FieldByName('LoansFormID').AsInteger := LoansFormID;

  DataSet.FieldByName('FirstUser').AsString := user.Name;
  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('BudgetCode').AsInteger := 0;
  DataSet.FieldByName('ProjectID').AsInteger := 0;
  DataSet.FieldByName('Amount').AsInteger := 0;
  if canShow then
    DataSet.FieldByName('CustomerID1').AsInteger := CustomerID;
  DataSet.FieldByName('FormID').AsInteger := GetanewID(DataSet, Self.Name,
    'Forms', 'FormID', nil, 1);
  DataSet.FieldByName('OperatorID').AsInteger := user.id;
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('FormDate').AsString := var_glb_CurrentDate;

  SetDefaultSellsMethodEmporium(qryForms, dblkcbb_SellsEmporium,
    dblkcbb_SellsMethod);
  GetFormNumber(IntToStr(FormType), qryInitForm, qryForms);

  if edtFormNumber.ReadOnly then
    if pnlSellsEmporium.Visible then
      pnlSellsEmporium.SetFocus
    else
      edtCustomerID1.SetFocus
  else
    edtFormNumber.SetFocus;
end;

procedure TLoanF.srcFormsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryForms.State in dseditmodes;

  if not okPanel.Visible then
    DBGrid1.Options := DbgrdOption - [dgEditing] + [dgMultiSelect]
  else
    DBGrid1.Options := DbgrdOption + [dgEditing];

  newPanel.Visible := not okPanel.Visible;
  btnReject.Cancel := newPanel.Visible;
  DBGrid1.ReadOnly := (newPanel.Visible) or (FormType = 114);
  pnlDelete.Visible := okPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, 'Forms', 'FormID', Self.Name);
  FreeReservedCodes(DMF.adcBSell, 'Forms', 'FormNumber', IntToStr(FormType));
  btnFormNumber.Visible := newPanel.Visible;
  btnCalcInterestLoan.Enabled := okPanel.Visible;
  btnTasviye.Enabled := okPanel.Visible;
end;

procedure TLoanF.qryFormItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FirstUser').AsString := user.Name;
  DataSet.FieldByName('FormItemID').AsInteger := GetanewID(DataSet, Self.Name,
    'FormItems', 'FormItemID', qryForms, 1);
  DataSet.FieldByName('Row').AsInteger := abs(DataSet.RecordCount + 1);
  DataSet.FieldByName('FormID').AsInteger := qryForms.FieldByName('FormID')
    .AsInteger;

  DataSet.FieldByName('CheckDate').AsString := Date1400Cnv(var_glb_CurrentDate);

  if qryInitForm.FieldByName('Customer2ActiveOnDetail').AsInteger in [0] then
    DataSet.FieldByName('CustomerID2').AsInteger := 0;

  if qryInitForm.FieldByName('Customer2ActiveOnDetail').AsInteger in [1] then
    DataSet.FieldByName('CustomerID2').AsInteger :=
      qryForms.FieldByName('CustomerID2').AsInteger;

  if qryInitForm.FieldByName('Customer2ActiveOnDetail').AsInteger = 5 then
    DataSet.FieldByName('CustomerID2').AsInteger :=
      qryForms.FieldByName('CustomerID3').AsInteger;

  if qryFormsAidInfoNo2.AsInteger > 0 then
  begin
    qryFormItemsItemAmount.AsCurrency :=
      Trunc(qryFormsAmount.AsCurrency / qryFormsAidInfoNo2.AsInteger);

    qryFormItemsCashWage.AsCurrency :=
      Trunc((qryFormsAmount.AsCurrency * qryFormsRate.AsFloat / 1200));

  end;

end;

procedure TLoanF.qryFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFormItems do
  begin
    Active := false;
    Parameters.ParamByName('FormID').Value := qryForms.FieldByName('FormID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID')
      .AsInteger;
    Active := True;
  end; // with
end;

procedure TLoanF.qryFormsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryFormItemsFormItemID.AsInteger;
  if qryFormItems.State in dseditmodes then
    qryFormItems.Post;
  try
    if FormType <> 113 then
      qryFormItems.UpdateBatch;
    DeleteFile(__AppData + UnsavedFileName);
    BigMessage('ثبت شد.', 1);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('اشكال در ثبت فرم');
    end;
  end; // try
  rid := qryFormsFormID.AsInteger;
  qryForms.Requery;
  qryForms.locate('FormID', rid, []);
  qryFormItems.Requery;
  qryFormItems.locate('FormItemID', rid2, []);
  if DataSetInsert then
    actSmsSend.Execute;
  DataSetInsert := false;

end;

procedure TLoanF.qryFormItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not(qryForms.State in dseditmodes) then
    qryForms.edit;
  if DataSet.FieldByName('ItemAmount').IsNull and
    DataSet.FieldByName('CheckNumber').IsNull and
    DataSet.FieldByName('CheckDate').IsNull then
  begin
    DataSet.Cancel;
    okPanel.SetFocus;
    Abort
  end;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(qryFormItems) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  // if not SumChecked then Abort;
end;

procedure TLoanF.qryFormItemsCheckDateChange(Sender: TField);
begin
  inherited;
  if actselectLoan.Visible then
    With DMF.qryTmpTmp do
    begin
      Active := false;
      SQL.Text := 'DECLARE @CheckDate CHAR(10)';
      SQL.Add('DECLARE @CurrentDate CHAR(10)');
      SQL.Add('DECLARE @ItemAmount MONEY');
      SQL.Add(Format('SET @CheckDate= %s ',
        [QuotedStr(qryFormItems_CheckDate.AsString)]));
      SQL.Add(Format('SET @CurrentDate= %s ',
        [QuotedStr(qryFormItemsCheckDate.AsString)]));
      SQL.Add(Format('SET @ItemAmount= %f', [qryFormItemsItemAmount.AsFloat]));
      SQL.Add('SELECT DBO.GetAmountDelay( DATEDIFF(DAY, dbo.shamsitomiladi(@CheckDate), ');
      SQL.Add('dbo.shamsitomiladi( @CurrentDate )) ,@ItemAmount) AS AmountDelay');
      SQL.Add(', DATEDIFF(DAY, dbo.shamsitomiladi(@CheckDate), dbo.shamsitomiladi( @CurrentDate )) AS DayDelay');
      Active := True;
      qryFormItemsAmountDelay.AsCurrency := FieldByName('AmountDelay')
        .AsCurrency;
      qryFormItemsDayDelay.AsCurrency := FieldByName('DayDelay').AsCurrency;
      Active := false;
    end;

end;

procedure TLoanF.qryFormsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not SumChecked then
    Abort;
  if qryFormItems.State in dseditmodes then
    qryFormItems.Post;
  if (not(actselectLoan.Visible or btnCalcInterestLoan.Visible or
    btnTasviye.Visible)) and
    (qryFormsAidInfoNo2.AsInteger <> qryFormItems.RecordCount) then
    if get_response('تعداد اقساط تعريف شده با مدت ماه تعين شده برابر نيست' +
      #10#13 + 'آيا ادامه مي دهيد') <> mryes then
      Abort;
end;

procedure TLoanF.qryFormsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryFormItems.Close;
  qryRecipts1.Close
end;

procedure TLoanF.qryFormsPayTypesChange(Sender: TField);
begin
  inherited;
  IF qryInitForm.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 2
  then
  begin
    FreeReservedCodes(DMF.adcBSell, '', 'FormNumber', IntToStr(FormType));
    GetFormNumber(IntToStr(FormType), qryInitForm, qryForms)
  end;

end;

procedure TLoanF.qryFormsSellsEmporiumChange(Sender: TField);
begin
  inherited;
  IF qryInitForm.FieldByName('RestartFormNumberOnSellsEmporium').AsInteger = 1
  then
  begin
    FreeReservedCodes(DMF.adcBSell, '', 'FormNumber', IntToStr(FormType));
    GetFormNumber(IntToStr(FormType), qryInitForm, qryForms);
  end;

end;

procedure TLoanF.SaveArticlesToFile;
begin
  qryFormItems.SaveToFile(__AppData + UnsavedFileName);
end;

procedure TLoanF.qryFormItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryForms.State = dsInsert then
    SaveArticlesToFile;
end;

procedure TLoanF.qryFormItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryRecipts1 do
  begin
    Active := false;
    Parameters.ParamByName('ID').Value := qryFormItemsID.AsLargeInt;
    Active := True;
  end;
end;

procedure TLoanF.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeMyComponent(Self, ['qrySellsEmporiums', 'qrySellsMethods', 'qryCust1',
    'qryCust2', 'qryCust3']);
  SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(grdRecipts1, IntToStr(FormType));
end;

procedure TLoanF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5, True, IntToStr(FormType));
  SetColSize(grdRecipts1, 5, True, IntToStr(FormType));
end;

procedure TLoanF.actDelete1Execute(Sender: TObject);
var
  i: Integer;
  id: Integer;
  deletedCount: Integer;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 1 then
  begin
    with DMF.qryTmpTmp do
    begin
      Active := false;
      SQL.Text := 'select FormID from FormItems WHERE FormID=' +
        qryForms.FieldByName('FormID').AsString;
      Active := True;
      if RecNo = -1 then
      begin
        Warn('ابتدا اطلاعات را تاييد كنيد و سپس اقدام به عمليات حذف مورد نظر نماييد..');
        exit;
      end; // if
    end; // with
    if get_response('رديف حذف شده قابل بازگشت نمي باشدآيا براي حذف ' +
      IntToStr(DBGrid1.SelectedRows.Count) + 'انتخاب مطمئن هستيد؟') = mryes then
    begin
      deletedCount := 0;
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        qryFormItems.GotoBookmark((DBGrid1.SelectedRows[i]));
        id := qryFormItems.FieldByName('FormItemID').AsInteger;
        DeleteCheck(id);
        Inc(deletedCount);
      end; // for
      qryFormItems.Active := false;
      qryFormItems.Active := True;
      Warn(IntToStr(deletedCount) + ' رديف با موفقت حذف شد. ');
    end; // if for get_response
  end
  else
    DataSetDelete1.Execute;

end;

procedure TLoanF.myInitReportFile(GeneralFileName: string);
begin
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(GeneralFileName);
    if FileExists(Template.FileName) then
    begin
      Template.LoadFromFile;
      SetSendToBackShapeOnPrint(Self);
      print;
    end
    else
    begin
      Warn('فايل چاپي  يافت نشد.!‏');
      exit;
    end; // else
  end; // with
end;

procedure TLoanF.AllC_L_i_c_k_Click(Sender: TObject);
begin
  inherited;
  if mnuCheck.Checked then
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
    qryForms.DisableControls;
    qryFormItems.DisableControls;
    myInitReportFile((Sender as TMenuItem).Hint);
  finally
    qryFormItems.EnableControls;
    qryForms.EnableControls;
  end;

end;

procedure TLoanF.qryFormItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryForms.State in dseditmodes) then
    qryForms.edit;
  if not AllStateControls(qryForms, qryFormItems, qryInitForm, 'Form') then
    Abort;
  OkDeleteEditCheck(qryFormItems);
end;

procedure TLoanF.qryFormItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If not ADDItemChecked(qryForms) then
    Abort;
  if actselectLoan.Visible then
    Abort;
end;

procedure TLoanF.ppDBCalcSumItemAmountGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := num2alphabet(StrToInt64(RemoveComma(Text)));
end;

procedure TLoanF.actReportsearchExecute(Sender: TObject);
begin
  inherited;
  searchReportsF.Show(ppReport1, 'PaymentCash', Self)
end;

procedure TLoanF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 1;
end;

procedure TLoanF.ALLDBEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('sBtn' + (Sender as TDBEdit).DataField)).Click;
end;

procedure TLoanF.initCombos;
begin
  CmbPayTypes.Clear;
  with DMF.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT LookUpID,Name FROM LookUps';
    SQL.Add('WHERE (Kind = ' + IntToStr(qryInitForm.FieldByName('FormPaySerial')
      .AsInteger) + ') ORDER BY Name');
    Active := True;
    while not Eof do
    begin
      CmbPayTypes.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := false;
  end; // with
end;

procedure TLoanF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TLoanF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TLoanF.BitBtn6Click(Sender: TObject);
begin
  inherited;
  grpNote.Visible := not grpNote.Visible
end;

procedure TLoanF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Accountf.Enter(qryForms)
end;

procedure TLoanF.actCalc2Execute(Sender: TObject);
var
  ts: TStrings;
  CountMonth, Month, Y: Integer;

begin
  inherited;
  edtFormDate.SetFocus;
  CountMonth := qryFormsAidInfoNo2.AsInteger;
  if qryFormItemsCheckNumber.AsString = '' then
  begin
    qryFormItems.edit;
    ts := TStringList.Create;
    ts.Text := StringReplace(qryForms.FieldByName('FormDate').AsString, '/',
      #13, [rfReplaceAll]);

    if ts[1] = '12' then // '12'
    begin
      ts[1] :=RightStr('0' + CountMonth.ToString.Trim, 2) ;// '01';
      ts[0] := IntToStr(StrToInt(ts[0]) +1+ CountMonth div 12);
    end
    else
    begin
      Month := StrToInt(ts[1]) + CountMonth;
      Y := Month div 12;
      Month := Month - (Y * 12);
      if Month = 0 then
      begin
        Month := 12;
        y:=y-1;
      end;

      ts[1] := RightStr('0' + Month.ToString.Trim, 2);
      ts[0] := IntToStr(StrToInt(ts[0]) + Y);
    end;
    ts.Text := Trim(ts.Text);
    ts.Text := ts[0] + '/' + ts[1] + '/' + ts[2];
    qryFormItems.FieldByName('CheckDate').AsString := Date1400Cnv(ts.Text);

    qryFormItemsCheckNumber.AsInteger := 1;
    qryFormItemsItemAmount.AsCurrency := qryFormsAmount.AsCurrency;
    qryFormItemsCashWage.AsCurrency :=
      Trunc((qryFormsAmount.AsCurrency * qryFormsRate.AsFloat * CountMonth /
      1200));
    qryFormItems.Post;
  end;

end;

procedure TLoanF.actCalcDaydelayExecute(Sender: TObject);
begin
  inherited;
  With qryFormItems do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      edit;
      qryFormItemsCheckDateChange(qryFormItemsCheckDate);
      Post;
      Next;
    end;
    EnableControls;
  end;
end;

procedure TLoanF.actCalcExecute(Sender: TObject);
var
  i, c: Integer;
  ItemAmount: Currency;
begin
  inherited;
  try
    if qryFormItemsCheckNumber.IsNull then
    begin
      qryFormItems.edit;
      qryFormItemsCheckNumber.AsInteger := 1;
      qryFormItems.Post;
    end;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := qryFormsAidInfoNo2.AsInteger;

    c := qryFormsAidInfoNo2.AsInteger - 1;
    if get_response
      (Format('آيا براي محاسبه %D قسط ديگر از روي قسط جاري مطمئن هستيد؟', [c]))
      = mryes then
      for i := 0 to c - 1 do
      begin
        actCopyPaste.Execute;
        ProgressBar1.StepIt;
        Application.ProcessMessages;
      end;
    ItemAmount := qryFormsAidInfoNo2.AsCurrency *
      qryFormItemsItemAmount.AsCurrency;
    c := StrToInt(CurrToStr(qryFormsAmount.AsInteger - ItemAmount));
    if c <> 0 then
    begin
      qryFormItems.edit;
      qryFormItemsItemAmount.AsInteger := qryFormItemsItemAmount.AsInteger + c;
      qryFormItems.Post;
    end;
  finally
    ProgressBar1.Position := 0;
  end;
end;

procedure TLoanF.actCopyPasteExecute(Sender: TObject);
begin
  inherited;
  CopyPaste(qryForms, qryFormItems, DBGrid1, AddMonth)
end;

procedure TLoanF.qryFormItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TLoanF.qryFormsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TLoanF.actselectLoanExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if qryForms.State in dseditmodes then
    qryForms.Post;
  if (canFilter) And (qryForms.FieldByName('CustomerID1').AsString = '') then
    exit;
  s := GetFilterSQLChooseChecks(qryInitForm, qryForms);

  ChooseChecksF.SelectChecks(qryInitForm, s, qryForms, qryFormItems, True);
  if FormType = 113 then
  begin
    qryForms.edit;
    qryFormsAmount.AsCurrency := CalcSumFileds(qryFormItems, 'AmountDelay');
    qryForms.Post;
  end;
end;

function TLoanF.SumChecked: Boolean;
var
  c, CashWage: Currency;
begin
  result := True;
  // if Trim(qryInitForm.FieldByName('RecallFormTypes').AsString) <> EmptyStr then
  // exit;
  if actselectLoan.Visible or btnCalcInterestLoan.Visible or btnTasviye.Visible
  then

    exit;
  c := 0;
  CashWage := 0;
  try
    with qryFormItems do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        c := c + FieldByName('ItemAmount').AsCurrency + FieldByName('CashWage')
          .AsCurrency;
        CashWage := CashWage + FieldByName('CashWage').AsCurrency;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
    qryForms.FieldByName('SubAmount').AsCurrency := Round(CashWage);
    c := c - qryForms.FieldByName('Amount').AsCurrency -
      qryForms.FieldByName('SubAmount').AsCurrency;
    c := Round(c);
    result := c = 0;
  end; // try
  if not result then
    Warn('مغايرت در مبلغ و اقساط وام به اندازه ' + CurrToStrF(c, ffCurrency, 0)
      + ' مي‏باشد!.‏');
end;

procedure TLoanF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  actselectLoan.Execute
end;

procedure TLoanF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TLoanF.ppLblAmountGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := CurrToStrF(qryForms.FieldByName('Amount').AsCurrency, ffCurrency, 0)
end;

procedure TLoanF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TLoanF.ppLBLsumGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := num2alphabet(Round(qryForms.FieldByName('Amount').AsCurrency));
end;

procedure TLoanF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TLoanF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

end.
