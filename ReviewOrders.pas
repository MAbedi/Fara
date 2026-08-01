/// FUNCTION InventoryAvilable4Sells
unit ReviewOrders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  template2MDI, System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, math,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ComCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, FrReciptType, SumDBGrid, Vcl.Mask, Vcl.DBCtrls, CedarDbGrid,
  FrVajheNaghd, FrRadioDisplayFormType;

type
  TReviewOrdersF = class(Ttemplate2MDIF)
    srcInv4Sell: TDataSource;
    qryInv4Sell: TADOQuery;
    qryInv4SellServerID: TIntegerField;
    qryInv4SellYearID: TIntegerField;
    qryInv4SellStoreID: TIntegerField;
    qryInv4SellStuffCode: TLargeintField;
    qryInv4SellInvEntity: TFloatField;
    qryInv4SellInvWeight: TFloatField;
    qryInv4SellEntityTheWay: TFloatField;
    qryInv4SellWeightTheWay: TFloatField;
    qryInv4SellEntityAvilable4Sells: TFloatField;
    qryInv4SellWeightAvilable4Sells: TFloatField;
    qryInv4Sellc_StuffName: TStringField;
    qryInv4SellUnitName: TStringField;
    actFilter: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    FrmReciptType1: TFrmReciptType;
    srcReciptsItems: TDataSource;
    qryReciptItems: TADOQuery;
    actAutoEdit: TAction;
    SumGrid1: TSumGrid;
    qryReciptItemsReciptType: TWordField;
    qryReciptItemsReciptNumber: TIntegerField;
    qryReciptItemsReciptDate: TStringField;
    qryReciptItemsPersonID1: TIntegerField;
    qryReciptItemsCustName: TStringField;
    qryReciptItemsStuffCode: TLargeintField;
    qryReciptItemsc_StuffName: TStringField;
    qryReciptItemsOutputEntity: TFloatField;
    qryReciptItemsOutputWeight: TFloatField;
    qryReciptItemsRequestedEntity: TFloatField;
    qryReciptItemsRequestedWeight: TFloatField;
    qryReciptItemsAcceptEntity: TFloatField;
    qryReciptItemsAcceptWeight: TFloatField;
    qryReciptItemsTotalOutputPrice: TBCDField;
    qryReciptItemsUnitSellPrice: TFMTBCDField;
    qryReciptItemsTotallSellPrice: TBCDField;
    qryReciptItemsTaxCo: TFloatField;
    qryReciptItemsTaxValue: TBCDField;
    qryItems: TADOQuery;
    qryReciptItemsReciptID: TIntegerField;
    qryReciptItemsServerID: TIntegerField;
    qryReciptItemsYearID: TIntegerField;
    actReQry: TAction;
    qryReciptItemsCarton: TFloatField;
    pnlLoanTitel: TPanel;
    srcForms: TDataSource;
    srcFormItems: TDataSource;
    PnlLoan: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    edtAmount: TDBEdit;
    edtAidInfoNo2: TDBEdit;
    qryCustomer: TADOQuery;
    qryForms: TADOQuery;
    qryFormsOperatorID: TIntegerField;
    qryFormsFormID: TIntegerField;
    qryFormsFormType: TWordField;
    qryFormsFormNumber: TIntegerField;
    qryFormsFormDate: TStringField;
    qryFormsCustomerID1: TIntegerField;
    qryFormsCustomerID2: TIntegerField;
    qryFormsAmount: TBCDField;
    qryFormsBudgetCode: TIntegerField;
    qryFormsProjectID: TIntegerField;
    qryFormsTopicCode: TLargeintField;
    qryFormsDetailCode: TStringField;
    qryForms_Mobile: TStringField;
    qryFormsCTopicCode: TStringField;
    qryFormsFomNote: TStringField;
    qryFormsAidInfoNo: TStringField;
    qryFormsAidInfoDate: TStringField;
    qryFormsCustomerName2: TStringField;
    qryForms_CustomerName: TStringField;
    qryFormsPayTypes: TWordField;
    qryFormsDocNo: TIntegerField;
    qryFormsDocDate: TStringField;
    qryFormsCTopicCode2: TStringField;
    qryFormsModifyDate: TDateTimeField;
    qryForms_CustomerName2: TStringField;
    qryFormsFormState: TWordField;
    qryFormsFirstUser: TStringField;
    qryFormsLastUser: TStringField;
    qryFormsManegerNote: TStringField;
    qryFormsSubAmount: TBCDField;
    qryFormsRate: TFloatField;
    qryFormsServerID: TIntegerField;
    qryFormsYearID: TIntegerField;
    qryFormsLoansFormID: TIntegerField;
    qryFormsAidInfoNo2: TFloatField;
    qryMaster_FormsSellsMethod: TIntegerField;
    qryFormsSellsEmporium: TIntegerField;
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
    qryFormItems_Cudtomername2: TStringField;
    qryFormItemspreFormItemID: TIntegerField;
    qryFormItemsAidInfoNo: TStringField;
    qryFormItemsAidInfoDate: TStringField;
    qryFormItemsFirstUser: TStringField;
    qryFormItemsLastUser: TStringField;
    qryFormItemsServerID: TIntegerField;
    qryFormItemsYearID: TIntegerField;
    qryFormItemsSeverableAmount: TWordField;
    qryFormItemsDayDelay: TIntegerField;
    qryFormItemsAmountDelay: TBCDField;
    qryFormItems_CheckDate: TStringField;
    qryFormItems_FormNumber: TIntegerField;
    qryFormItemsTopicCode: TLargeintField;
    qryFormItemsDetailCode: TStringField;
    qryFormItemsCTopicCode: TStringField;
    qryFormItemsCTopicCode2: TStringField;
    qryFormItemsCTopicCode3: TStringField;
    DBGrid2: TDBGrid;
    qryInitForm: TADOQuery;
    qryFormItemsBudgetCode: TIntegerField;
    qryFormItemsProjectID: TIntegerField;
    qryFormItemsAccountNumberNew: TStringField;
    qryFormItemsAmountArz: TFloatField;
    qryFormItemsCheckState: TWordField;
    qryFormItemsCheckFor: TStringField;
    qryFormItemsAccState: TWordField;
    qryFormItemsItemState: TWordField;
    qryFormItemsItemStateComment: TWideStringField;
    qryFormItemsRelatedID: TIntegerField;
    qryFormItemsVAT: TBCDField;
    qryFormItemsTopicTypesI: TIntegerField;
    qryFormItemsAccountNumberNew1: TStringField;
    qryFormItemsArzTypeID: TIntegerField;
    qryFormItemsArzAmount: TBCDField;
    qryFormItemsArzRate: TFloatField;
    qryFormItemsCashWage: TBCDField;
    qryFormsReciptID: TIntegerField;
    actShowForm: TAction;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    qryOrders: TADOQuery;
    srcOrders: TDataSource;
    qryOrdersReciptID: TIntegerField;
    qryOrdersServerID: TIntegerField;
    qryOrdersYearID: TIntegerField;
    qryOrdersReciptNumber: TIntegerField;
    qryOrdersReciptDate: TStringField;
    qryOrdersPersonID1: TIntegerField;
    qryOrdersCustName: TStringField;
    qryOrdersReciptNote: TStringField;
    qryOrdersOutputEntity: TFloatField;
    qryOrdersOutputWeight: TFloatField;
    qryOrdersTotallSellPrice: TBCDField;
    qryOrdersNumberCreditInstallments: TIntegerField;
    chkNegative: TCheckBox;
    Panel7: TPanel;
    Panel4: TPanel;
    btnOk: TBitBtn;
    btnEdit: TBitBtn;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn3: TBitBtn;
    rgpOrder: TRadioGroup;
    btnCalcAll: TSpeedButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    CedarDbgrid2: TCedarDbgrid;
    grdOrders: TCedarDbgrid;
    Label1: TLabel;
    edtFormNumber: TDBEdit;
    PageControl2: TPageControl;
    tsLoan: TTabSheet;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    newPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    frmrdVajhenaghd: TfrmRadioDisplayFormType;
    frmGrdvjhnghd1: TfrmVajheNaghd;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    qryFormItemsCheckDateWeek: TStringField;
    qryOrdersLoanDate: TStringField;
    qryOrdersDayOrder: TWordField;
    qryOrdersMaxWeeklyShoppingCredit: TFMTBCDField;
    qryOrdersMinWeeklyShoppingAmount: TBCDField;
    qryOrdersLoanAmount: TBCDField;
    qryOrdersPayAmount: TBCDField;
    qryOrdersTotalAmount: TBCDField;
    qryOrdersDifferenceAmount: TBCDField;
    actAutoEditAll: TAction;
    actSt1Confirming: TAction;
    BitBtn10: TBitBtn;
    qryReciptItemsProductCode: TLargeintField;
    actFilter2: TAction;
    Panel8: TPanel;
    BitBtn11: TBitBtn;
    BitBtn15: TBitBtn;
    actSt2Perpetuate: TAction;
    qryOrdersreMainLoan: TStringField;
    qryOrdersLeaseValidityDate: TStringField;
    chkFilter: TCheckBox;
    qryInv4SellEntityTheWay2: TFloatField;
    qryInv4SellWeightTheWay2: TFloatField;
    qryInv4SellEntityTheWay_dec: TFloatField;
    qryInv4SellWeightTheWay_dec: TFloatField;
    qryReciptItemsRequestedEntityFinal: TFloatField;
    qryReciptItemsRequestedWeightFinal: TFloatField;
    qryInv4SellAvilableEntity: TFloatField;
    qryInv4SellAvilableWeight: TFloatField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkNegativeClick(Sender: TObject);
    procedure FrmReciptType1cmbReciptTypeChange(Sender: TObject);
    procedure qryReciptItemsBeforeDelete(DataSet: TDataSet);
    procedure qryInv4SellAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actAutoEditExecute(Sender: TObject);
    procedure srcReciptsItemsStateChange(Sender: TObject);
    procedure qryReciptItemsAfterPost(DataSet: TDataSet);
    procedure actReQryExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FrmReciptType1cmbReciptTypeEnter(Sender: TObject);
    procedure qryFormItemsAfterInsert(DataSet: TDataSet);
    procedure qryFormsAfterInsert(DataSet: TDataSet);
    procedure srcFormsStateChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qryFormsAfterScroll(DataSet: TDataSet);
    procedure qryFormsBeforePost(DataSet: TDataSet);
    procedure qryFormItemsBeforePost(DataSet: TDataSet);
    procedure qryFormsAfterPost(DataSet: TDataSet);
    procedure qryFormsAfterEdit(DataSet: TDataSet);
    procedure qryFormItemsBeforeDelete(DataSet: TDataSet);
    procedure qryFormsBeforeDelete(DataSet: TDataSet);
    procedure qryFormItemsBeforeEdit(DataSet: TDataSet);
    procedure qryFormItemsBeforeInsert(DataSet: TDataSet);
    procedure actShowFormExecute(Sender: TObject);
    procedure qryOrdersAfterScroll(DataSet: TDataSet);
    procedure rgpOrderClick(Sender: TObject);
    procedure btnCalcAllClick(Sender: TObject);
    procedure frmrdVajhenaghdrgpFormTypeClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure qryFormItemsCheckDateWeekGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryOrdersDayOrderGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryFormsBeforeInsert(DataSet: TDataSet);
    procedure grdOrdersDblClick(Sender: TObject);
    procedure actAutoEditAllExecute(Sender: TObject);
    procedure actSt1ConfirmingExecute(Sender: TObject);
    procedure actFilter2Execute(Sender: TObject);
    procedure actSt2PerpetuateExecute(Sender: TObject);
    procedure chkFilterClick(Sender: TObject);
    procedure qryReciptItemsOutputEntityChange(Sender: TField);
    procedure qryReciptItemsOutputWeightChange(Sender: TField);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    Form_Type: Integer;
    procedure UpdateFilter;
    procedure InitFormCreate;
    function SumChecked: Boolean;
    procedure CalcLoan;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReviewOrdersF: TReviewOrdersF;

const
  LoanFormType = 105;

implementation

uses
  GlobalPro, DM, filter_ADO, Filter_ADO_Const, ReciptsFunctions, Loan,
  FormFunctions, FaraConsts, MMESSAGE, search2, sort2, shamsiDate;

{$R *.dfm}

procedure TReviewOrdersF.actAutoEditAllExecute(Sender: TObject);
begin
  inherited;
  With qryInv4Sell do
    try
      BigMessage('لطفا صبر کنید', 0);
      DisableControls;
      First;
      while not eof do
      begin
        actAutoEdit.Execute;
        Next;
      end;
    finally
      // actSt1Confirming.Execute;
      actReQry.Execute;
      BigMessage('انجام شد', 1);
      EnableControls;
    end;
end;

procedure TReviewOrdersF.actAutoEditExecute(Sender: TObject);
var
  RequestedEntityFinal: Currency;
  RequestedWeightFinal: Currency;
  AcceptEntity, AcceptWeight: Real48;
  Avilable4: Real48;
begin
  inherited;
  RequestedEntityFinal := SumGrid1.GetValueField('RequestedEntityFinal');
  RequestedWeightFinal := SumGrid1.GetValueField('RequestedWeightFinal');

  if (RequestedEntityFinal > 0) and (RequestedWeightFinal > 0) and
    ((qryInv4SellEntityAvilable4Sells.AsFloat < 0) and
    (qryInv4SellWeightAvilable4Sells.AsFloat < 0)) then
    With qryReciptItems do
      try
        Filter := 'ProductCode = 0 AND RequestedEntityFinal > 0 ';
        Filtered := True;
        Avilable4 := qryInv4SellAvilableWeight.AsFloat;
        DisableControls;
        First;
        while not eof do
        begin
          Edit;
          AcceptWeight :=
            Abs(RoundTo((qryReciptItemsRequestedWeight.AsFloat /
            RequestedWeightFinal) * Avilable4, 0));

          // AcceptEntity :=Abs(
          // RoundTo((qryReciptItemsRequestedEntity.AsFloat / RequestedEntity) *
          // qryInv4SellEntityAvilable4Sells.AsFloat, 0));
          AcceptEntity := AcceptWeight * qryReciptItemsCarton.AsFloat;

          qryReciptItemsAcceptEntity.AsFloat := AcceptEntity;
          qryReciptItemsOutputEntity.AsFloat := AcceptEntity;

          qryReciptItemsAcceptWeight.AsFloat := AcceptWeight;
          qryReciptItemsOutputWeight.AsFloat := AcceptWeight;

          qryReciptItemsTotalOutputPrice.AsCurrency :=
            RoundTo(AcceptEntity * qryReciptItemsUnitSellPrice.AsCurrency, 0);

          qryReciptItemsTaxValue.AsCurrency :=
            RoundTo(qryReciptItemsTotalOutputPrice.AsCurrency *
            qryReciptItemsTaxCo.AsFloat / 100, 0);

          qryReciptItemsTotallSellPrice.AsCurrency :=
            RoundTo(qryReciptItemsTotalOutputPrice.AsCurrency +
            qryReciptItemsTaxValue.AsCurrency, 0);

          Post;
          Next;
        end;
      finally
        Filtered := False;
        EnableControls;
      end;
end;

procedure TReviewOrdersF.actSt1ConfirmingExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  if get_response('آيا براي قطعي نمودن فرم‌هاي کالاهای انتخاب شده مطمئن هستيد؟'
    + #13#10 + 'فرم هايي كه موقت باشند تبديل به قطعي ميشوند.') <> mrYes then
    Exit;

  qry := TADOQuery.Create(Self);
  with qry do
  begin
    Connection := theMainConnection;
    SQL.Text := 'UPDATE Recipts';
    SQL.Add('SET ReciptState = 1');
    SQL.Add('FROM Recipts INNER JOIN');
    SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID ');
    SQL.Add('AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID');
    SQL.Add('WHERE (Recipts.ReciptType = :ReciptType) ');
    SQL.Add('AND (NOT (ReciptItems.StuffCode IN(SELECT StuffCode');
    SQL.Add('FROM dbo.InventoryAvilable4Sells(''0001/01/01'', ''9999/99/99'', 0, 1499, 0,99) AS Inv4Sell');
    SQL.Add('WHERE (EntityAvilable4Sells < 0))))');
    SQL.Add('AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
    SQL.Add('AND (CASE WHEN Recipts.DefaultDate IS NULL');
    SQL.Add('OR ltrim(Recipts.DefaultDate) = '''' THEN Recipts.ReciptDate ');
    SQL.Add('ELSE Recipts.DefaultDate END BETWEEN :DateFrom AND :DateTo)');
    SQL.Add('AND (Recipts.ReciptState = 0)');

    Parameters.ParamByName('ReciptType').Value := FrmReciptType1.ReciptType;

    Parameters.ParamByName('YearIDFrom').Value :=
      GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    Parameters.ParamByName('YearIDTo').Value :=
      GetcTo(myParams.ParamValues['YearID'], ftInteger);

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Warn2(ExecSQL.ToString + ' مورد قطعی شد');
    Free;
  end;

end;

procedure TReviewOrdersF.actSt2PerpetuateExecute(Sender: TObject);
var
  i, c: Integer;
  s: string;
  OkState: Boolean;
const
  PartSise = 100;
  procedure sUPDATE;
  begin
    If s <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          'UPDATE Recipts SET ReciptState = 2 WHERE (ReciptState in(1)) AND ' +
          '(ReciptID IN (' + s + '))';
        SQL.Add(' AND  ServerID=' + qryOrders.FieldByName('ServerID').AsString);
        SQL.Add(' AND  YearID  =' + qryOrders.FieldByName('YearID').AsString);
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' فرم از ' +
          IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ دائمي شد.', 1);
        Active := False;
        s := EmptyStr;
      end;
  end;

begin
  inherited;
  c := 0;
  if not CheckUserlevel(qryInitForm.FieldByName('ChangeStateLevelID'), qryOrders)
  then
    Abort;
  if grdOrders.SelectedRows.Count > 0 then
    if get_response('آيا براي دائمي نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟' +
      #13#10 + 'فرم هايي كه موقت يا قطعي باشند تبديل به دائم ميشوند.') <> mrYes
    then
      Exit;
  try
    qryOrders.AfterScroll := nil;
    qryOrders.DisableControls;
    with grdOrders.DataSource.DataSet do
      for i := 0 to grdOrders.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdOrders.SelectedRows.Items[i]));
        if s <> '' then
          s := s + ',';

        OkState := qryOrdersLeaseValidityDate.AsString >=
          qryOrdersReciptDate.AsString;
        if not OkState then
          Warn2(qryOrdersCustName.DisplayLabel + ':' +
            qryOrdersCustName.AsString + '>>' +
            'تاریخ اعتبار اجاره نامه باید از تاریخ فرم  سفارش بزرگتر باشه', 0);

        OkState := qryOrdersreMainLoan.AsString.Trim = EmptyStr;
        if not OkState then
          Warn2(qryOrdersCustName.DisplayLabel + ':' +
            qryOrdersCustName.AsString + '>>' +
            qryOrdersreMainLoan.AsString, 0);

        OkState := qryOrdersDifferenceAmount.AsLargeInt = 0;
        if not OkState then
          Warn2(qryOrdersCustName.DisplayLabel + ':' +
            qryOrdersCustName.AsString + '>>اختلاف در مبلغ' +
            qryOrdersDifferenceAmount.AsString, 0);

        if OkState then
        begin
          s := s + FieldByName('ReciptID').AsString;
          // if qryInitForm.FieldByName('CorrelateStateChange').AsInteger = 1 then
          // if not FieldByName('ParentReciptID').IsNull then
          // s := s + ',' + FieldByName('ParentReciptID').AsString;
        end;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    qryOrders.EnableControls;
    qryOrders.AfterScroll := qryOrdersAfterScroll;
    // finallyqryRecipts;
  end;

end;

procedure TReviewOrdersF.actFilter2Execute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterReciptNumber);
      AddItemFilter(GetFilter, TFilterPersonID1);
      AddItemFilter(GetFilter, TFilterReciptDate);
      AddItemFilter(GetFilter, TFilterYearID);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TReviewOrdersF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterReciptDate);
      AddItemFilter(GetFilter, TFilterYearID);
      AddItemFilter(GetFilter, TFilterStoreID);
      AddItemFilter(GetFilter, TFilterStuffCode);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
    finally
      Free;
    end;
  end;

end;

procedure TReviewOrdersF.actReQryExecute(Sender: TObject);
begin
  inherited;
  qryInv4Sell.Requery();
end;

procedure TReviewOrdersF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryReciptItems, Self, qryInv4SellStuffCode.AsLargeInt);
end;

procedure TReviewOrdersF.BitBtn12Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TReviewOrdersF.BitBtn13Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryReciptItems);
end;

procedure TReviewOrdersF.BitBtn14Click(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qryReciptItems);
end;

procedure TReviewOrdersF.chkFilterClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TReviewOrdersF.chkNegativeClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TReviewOrdersF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  case Key of
    #13:
      begin
        Key := #0;
        DBGrid1.SelectedIndex := ColumnIndexByFieldName(DBGrid1, 'OutputWeight')
      end;
    '+':
      begin
        Key := #0;
        DBGrid1.SelectedIndex := ColumnIndexByFieldName(DBGrid1, 'OutputEntity')
      end;
  end;
end;

procedure TReviewOrdersF.FormCreate(Sender: TObject);
begin
  inherited;
  InitFormCreate
end;

procedure TReviewOrdersF.InitFormCreate;
begin
  setColumns2(grdOrders, False, 'Row');
  FrmReciptType1.EffectType := 3;
  FrmReciptType1.initFrmCombo;
  PageControl1.TabIndex := 0;
  ActiveControl := FrmReciptType1.cmbReciptType;
  qryInv4Sell.AfterScroll := nil;
  pnlLoanTitel.Hint := IntToStr(LoanFormType);
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := LoanFormType;
    Active := True;
    // pnlLoanTitel.Caption := FieldByName('FormCaption').AsString;
    tsLoan.Caption := FieldByName('FormCaption').AsString;
  end;

  frmGrdvjhnghd1.qryRecipts := qryOrders;

  frmGrdvjhnghd1.FormType := Form_Type;

  FrmReciptType1.cmbReciptType.ItemIndex :=
    FrmReciptType1.cmbReciptType.Items.Count - 1;
  FrmReciptType1cmbReciptTypeChange(FrmReciptType1.cmbReciptType);

end;

procedure TReviewOrdersF.PageControl1Change(Sender: TObject);
begin
  inherited;
  if (PageControl1.TabIndex = 1) then
    actFilter2.Execute
  else
    actFilter.Execute;
end;

procedure TReviewOrdersF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  // SaveColWidth(grdTasviye);
end;

procedure TReviewOrdersF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5, True);
  SetColSize(DBGrid2, 3, True);
  // SetColSize(grdTasviye, 3, True);
end;

procedure TReviewOrdersF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close;
end;

procedure TReviewOrdersF.frmrdVajhenaghdrgpFormTypeClick(Sender: TObject);
begin
  inherited;
  frmrdVajhenaghd.rgpFormTypeClick(Sender);
  Form_Type := frmrdVajhenaghd.FormType;
  frmGrdvjhnghd1.FormType := Form_Type;
  with frmGrdvjhnghd1.qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := Form_Type;
    Active := True;
  end;
  UpDateqryFormsCheck(frmGrdvjhnghd1.qryFormsFr, qryOrders, Form_Type);
end;

procedure TReviewOrdersF.FrmReciptType1cmbReciptTypeChange(Sender: TObject);
begin
  inherited;
  if FrmReciptType1.cmbReciptType.ItemIndex = -1 then
    raise Exception.Create('نوع فرم انتخاب نشده است');
  FrmReciptType1.cmbReciptTypeChange(Sender);
  with qryReciptItems do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := FrmReciptType1.ReciptType;
    Parameters.ParamByName('StuffCode').Value :=
      qryInv4SellStuffCode.AsLargeInt;
    if Assigned(myParams.FindParam('ReciptDate')) then
    begin
      Parameters.ParamByName('DateFrom').Value :=
        GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
      Parameters.ParamByName('DateTo').Value :=
        GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    end
    else
    begin
      Parameters.ParamByName('DateFrom').Value := '0000/00/00';
      Parameters.ParamByName('DateTo').Value := '9999/99/99';
    end;
    Active := True;
  end;
  qryInv4Sell.AfterScroll := qryInv4SellAfterScroll;

  frmrdVajhenaghd.InitType(FrmReciptType1.ReciptType, 0);
  frmGrdvjhnghd1.ReciptType := FrmReciptType1.ReciptType;

end;

procedure TReviewOrdersF.FrmReciptType1cmbReciptTypeEnter(Sender: TObject);
begin
  inherited;
  FrmReciptType1.cmbReciptType.DroppedDown := True;
end;

procedure TReviewOrdersF.grdOrdersDblClick(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryOrders, Self, 0);
end;

procedure TReviewOrdersF.qryFormItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FirstUser').AsString := user.Name;
  DataSet.FieldByName('FormItemID').AsInteger := GetANewID(DataSet, Self.Name,
    'FormItems', 'FormItemID', qryForms, 1);
  DataSet.FieldByName('Row').AsInteger := Abs(DataSet.RecordCount + 1);
  DataSet.FieldByName('FormID').AsInteger := qryForms.FieldByName('FormID')
    .AsInteger;

  DataSet.FieldByName('CheckDate').AsString :=
    Date1400Cnv(qryOrdersLoanDate.AsString);

  qryFormItemsCheckState.AsInteger := 0;
  qryFormItemsItemState.AsInteger := 0;
  qryFormItemsSeverableAmount.AsInteger := 0;
  qryFormItemsRelatedID.AsInteger := 0;
  qryFormItemsVAT.AsInteger := 0;
  qryFormItemsArzAmount.AsInteger := 0;
  qryFormItemsAmountDelay.AsInteger := 0;

  if qryInitForm.FieldByName('Customer2ActiveOnDetail').AsInteger in [1] then
    DataSet.FieldByName('CustomerID2').AsInteger :=
      qryForms.FieldByName('CustomerID2').AsInteger;

  if qryInitForm.FieldByName('Customer2ActiveOnDetail').AsInteger = 5 then
    DataSet.FieldByName('CustomerID2').AsInteger :=
      qryForms.FieldByName('CustomerID3').AsInteger;

  if qryFormsAidInfoNo2.AsInteger > 0 then
  begin
    qryFormItemsItemAmount.AsCurrency :=
      RoundTo(qryFormsAmount.AsCurrency / qryFormsAidInfoNo2.AsInteger, 0);

  end;
end;

procedure TReviewOrdersF.qryFormItemsBeforeDelete(DataSet: TDataSet);
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

  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;

end;

procedure TReviewOrdersF.qryFormItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryForms.State in dseditmodes) then
    qryForms.Edit;
  if not AllStateControls(qryForms, qryFormItems, qryInitForm, 'Form') then
    Abort;
  OkDeleteEditCheck(qryFormItems);
end;

procedure TReviewOrdersF.qryFormItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If not ADDItemChecked(qryForms) then
    Abort;
end;

procedure TReviewOrdersF.qryFormItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not(qryForms.State in dseditmodes) then
    qryForms.Edit;
  if DataSet.FieldByName('ItemAmount').IsNull and
    DataSet.FieldByName('CheckNumber').IsNull and
    DataSet.FieldByName('CheckDate').IsNull then
  begin
    DataSet.Cancel;
    Abort
  end;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(qryFormItems) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  // if not SumChecked then Abort;
end;

procedure TReviewOrdersF.qryFormItemsCheckDateWeekGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Format('%s', [formatdatetime('dddd',
    Shamsi2Miladi(qryFormItemsCheckDate.AsString))]);
end;

procedure TReviewOrdersF.qryFormsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TReviewOrdersF.qryFormsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // if LoansFormID > 0 then
  // Self.qryForms.FieldByName('LoansFormID').AsInteger := LoansFormID;
  DataSet.FieldByName('AidInfoDate').AsString := qryOrdersReciptDate.AsString;
  DataSet.FieldByName('AidInfoNo').AsString := qryOrdersReciptNumber.AsString;

  DataSet.FieldByName('AidInfoNo2').AsInteger :=
    qryOrdersNumberCreditInstallments.AsInteger;

  qryFormsCustomerID1.AsInteger := 0;
  qryFormsCustomerID2.AsInteger := qryOrdersPersonID1.AsInteger;

  qryFormsReciptID.AsInteger := qryOrdersReciptID.AsInteger;

  if qryOrdersTotallSellPrice.AsCurrency > qryOrdersMaxWeeklyShoppingCredit.AsCurrency
  then
    qryFormsAmount.AsCurrency := qryOrdersMaxWeeklyShoppingCredit.AsCurrency
  else
    qryFormsAmount.AsCurrency := qryOrdersTotallSellPrice.AsCurrency;

  DataSet.FieldByName('FirstUser').AsString := user.Name;
  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('BudgetCode').AsInteger := 0;
  DataSet.FieldByName('ProjectID').AsInteger := 0;

  DataSet.FieldByName('FormID').AsInteger := GetANewID(DataSet, Self.Name,
    'Forms', 'FormID', nil, 1);

  DataSet.FieldByName('OperatorID').AsInteger := user.id;
  DataSet.FieldByName('FormType').AsInteger := LoanFormType;
  DataSet.FieldByName('FormDate').AsString := var_glb_CurrentDate;

  GetFormNumber(IntToStr(LoanFormType), qryInitForm, qryForms);

end;

procedure TReviewOrdersF.qryFormsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryFormItems.State in dseditmodes then
    qryFormItems.Post;
  try
    qryFormItems.UpdateBatch;
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('اشكال در ثبت فرم');
    end;
  end;
end;

procedure TReviewOrdersF.qryFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFormItems do
  begin
    Active := False;
    Parameters.ParamByName('FormID').Value := qryFormsFormID.AsInteger;
    Parameters.ParamByName('ServerID').Value := qryFormsServerID.AsInteger;
    Parameters.ParamByName('YearID').Value := qryFormsYearID.AsInteger;
    Active := True;
  end;
end;

procedure TReviewOrdersF.qryFormsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if qryForms.FieldByName('FormState').AsInteger > 0 then
  begin
    Warn('فقط ' + qryInitForm.FieldByName('FormCaption').AsString +
      'ي كه نوع اطلاعات آن موقت است قابل حذف است‏', mtInformation);
    Abort;
  end;
  CheckItems(qryFormItems);
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TReviewOrdersF.qryFormsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if qryOrdersTotallSellPrice.AsCurrency < qryOrdersMinWeeklyShoppingAmount.AsCurrency
  then
  begin
    Warn2(Format('حداقل مبلغ خرید جهت دریافت وام %s می باشد',
      [CurrToStrF(qryOrdersMinWeeklyShoppingAmount.AsCurrency,
      ffCurrency, 0)]), 0);
    Abort;
  end;
end;

procedure TReviewOrdersF.qryFormsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ModifyDate').AsDateTime := now;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not SumChecked then
    Abort;
  if qryFormItems.State in dseditmodes then
    qryFormItems.Post;
  if (qryFormsAidInfoNo2.AsInteger <> qryFormItems.RecordCount) then
    if get_response('تعداد اقساط تعريف شده با مدت ماه تعين شده برابر نيست' +
      #10#13 + 'آيا ادامه مي دهيد') <> mrYes then
      Abort;
end;

function TReviewOrdersF.SumChecked: Boolean;
var
  c: Currency;
begin
  c := 0;
  try
    with qryFormItems do
    begin
      DisableControls;
      First;
      while not eof do
      begin
        c := c + FieldByName('ItemAmount').AsCurrency;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
    c := c - qryForms.FieldByName('Amount').AsCurrency;
    c := Round(c);
    result := c = 0;
  end; // try
  if not result then
    Warn('مغايرت در مبلغ و اقساط وام به اندازه ' + CurrToStrF(c, ffCurrency, 0)
      + ' مي‏باشد!.‏');
end;

procedure TReviewOrdersF.qryInv4SellAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FrmReciptType1cmbReciptTypeChange(FrmReciptType1.cmbReciptType)
end;

procedure TReviewOrdersF.qryOrdersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryForms do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value :=
      qryInitForm.Parameters.ParamByName('Type').Value;
    Parameters.ParamByName('YearID').Value := qryOrdersYearID.AsInteger;
    Parameters.ParamByName('CustomerID2').Value := qryOrdersPersonID1.AsInteger;
    Parameters.ParamByName('ServerID').Value := qryOrdersServerID.AsInteger;
    Active := True;
    Last;
  end;
  UpDateqryFormsCheck(frmGrdvjhnghd1.qryFormsFr, qryOrders, Form_Type);
end;

procedure TReviewOrdersF.qryOrdersDayOrderGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger in [1 .. 7] then
    Text := FormatSettings.LongDayNames[Sender.AsInteger]
end;

procedure TReviewOrdersF.qryReciptItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if FrmReciptType1.qryinit.FieldByName('AutoPrice').AsInteger in [15] then
  begin
    With qryItems do
    begin
      Active := False;
      Parameters.ParamByName('ReciptID').Value :=
        qryReciptItemsReciptID.AsInteger;
      Parameters.ParamByName('YearID').Value := qryReciptItemsYearID.AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryReciptItemsServerID.AsInteger;
      Active := True;
    end;
    ReciptBe4PostAutoPrice14(qryReciptItemsPersonID1.AsInteger, qryItems,
      FrmReciptType1.qryinit, True, False, qryReciptItemsReciptNumber.AsString);
  end;

end;

procedure TReviewOrdersF.qryReciptItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Abort
end;

procedure TReviewOrdersF.qryReciptItemsOutputEntityChange(Sender: TField);
begin
  inherited;
  SetOnChangeOff(qryReciptItemsOutputWeight,
    RoundTo(qryReciptItemsOutputEntity.AsFloat /
    qryReciptItemsCarton.AsInteger, -2))
end;

procedure TReviewOrdersF.qryReciptItemsOutputWeightChange(Sender: TField);
begin
  inherited;
  SetOnChangeOff(qryReciptItemsOutputEntity,
    RoundTo(qryReciptItemsOutputWeight.AsFloat *
    qryReciptItemsCarton.AsInteger, -2))

end;

procedure TReviewOrdersF.rgpOrderClick(Sender: TObject);
begin
  inherited;
  // PageControl1Change(PageControl1)
  UpdateFilter;
end;

procedure TReviewOrdersF.btnCalcAllClick(Sender: TObject);
var
  i: Integer;
  ReciptID, YearID, ServerID: Integer;
begin
  inherited;
  ReciptID := qryOrders.FieldByName('ReciptID').AsInteger;
  YearID := qryOrders.FieldByName('YearID').AsInteger;
  ServerID := qryOrders.FieldByName('ServerID').AsInteger;
  if grdOrders.SelectedRows.Count = 0 then
  begin
    Warn('سفارشی انتخاب نشده است');
    Exit;
  end;
  if get_response(Format('آیا برای  %S مطمئن هستید', [btnCalcAll.Caption])) = mrYes
  then
    with grdOrders.DataSource.DataSet do
      try
        for i := 0 to grdOrders.SelectedRows.Count - 1 do
        begin
          GotoBookmark((grdOrders.SelectedRows.Items[i]));
          qryForms.Insert;
          CalcLoan;
          qryForms.Post;
        end;
      finally
        qryOrders.Requery();
        qryOrders.Locate('ReciptID;YearID;ServerID',
          VarArrayOf([ReciptID, YearID, ServerID]), []);
        BigMessage('ثبت شد.', 1);
      end;
end;

procedure TReviewOrdersF.CalcLoan;
var
  i, c: Integer;
  ItemAmount: Currency;
begin
  try
    qryFormItems.Insert;
    if qryFormsAidInfoNo2.AsInteger > 0 then
    begin
      qryFormItemsItemAmount.AsCurrency :=
        RoundTo(qryFormsAmount.AsCurrency / qryFormsAidInfoNo2.AsInteger, 0);
    end;
    qryFormItemsCheckNumber.AsInteger := 1;
    qryFormItems.Post;

    c := qryFormsAidInfoNo2.AsInteger - 1;
    for i := 0 to c - 1 do
    begin
      CopyPaste(qryForms, qryFormItems, DBGrid2, AddWeek)
    end;
    ItemAmount := qryFormsAidInfoNo2.AsCurrency *
      qryFormItemsItemAmount.AsCurrency;
    c := StrToInt(CurrToStr(qryFormsAmount.AsInteger - ItemAmount));
    if c <> 0 then
    begin
      qryFormItems.Edit;
      qryFormItemsItemAmount.AsInteger := qryFormItemsItemAmount.AsInteger + c;
      qryFormItems.Post;
    end;
  finally
  end;
end;

procedure TReviewOrdersF.srcFormsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryForms.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  btnReject.Cancel := newPanel.Visible;

  FreeReservedCodes(theMainConnection, 'Forms', 'FormID', Self.Name);
  FreeReservedCodes(theMainConnection, 'Forms', 'FormNumber',
    LoanFormType.ToString);
end;

procedure TReviewOrdersF.srcReciptsItemsStateChange(Sender: TObject);
begin
  inherited;
  btnOk.Visible := qryReciptItems.State in dseditmodes;
  btnEdit.Visible := not btnOk.Visible;
end;

procedure TReviewOrdersF.UpdateFilter;
begin
  case PageControl1.TabIndex of
    0:
      with qryInv4Sell do
      begin
        Active := False;
        SQL.Text :=
          'SELECT Inv4Sell.ServerID, Inv4Sell.YearID, Inv4Sell.StoreID, Inv4Sell.StuffCode, StuffCoding.c_StuffName,';
        SQL.Add('Units.UnitName,');
        SQL.Add('Inv4Sell.InvEntity, Inv4Sell.InvWeight, Inv4Sell.EntityTheWay, Inv4Sell.WeightTheWay,');
        SQL.Add('Inv4Sell.EntityTheWay2,Inv4Sell.WeightTheWay2,');
        SQL.Add('Inv4Sell.EntityTheWay_Dec,Inv4Sell.WeightTheWay_Dec,');
        SQL.Add('Inv4Sell.EntityAvilable4Sells, Inv4Sell.WeightAvilable4Sells');
        SQL.Add(',Inv4Sell.AvilableEntity, Inv4Sell.AvilableWeight');

        SQL.Add('FROM dbo.InventoryAvilable4Sells(DEFAULT , :DateTo, :YearIDFrom, :YearIDTo, :StoreIDFrom, :StoreIDTo) AS Inv4Sell');
        SQL.Add('INNER JOIN');
        SQL.Add('StuffCoding ON Inv4Sell.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
        SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode');

        if chkFilter.Checked then
        begin
          SQL.Add('inner join');
          SQL.Add('(');
          SQL.Add('SELECT distinct StuffCode');
          SQL.Add('FROM Vu_ReciptItems4Edit');
          SQL.Add('WHERE (ReciptType = :ReciptType2) AND (StuffCode Between :StuffCode2From AND :StuffCode2To )');
          SQL.Add('AND (ReciptDate between :Date2From and :Date2To )');

          SQL.Add(') DetailGrid on Inv4Sell.StuffCode=DetailGrid.StuffCode');

          Parameters.ParamByName('ReciptType2').Value :=
            FrmReciptType1.ReciptType;

          Parameters.ParamByName('StuffCode2From').Value :=
            GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
          Parameters.ParamByName('StuffCode2To').Value :=
            GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

          Parameters.ParamByName('Date2From').Value :=
            GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
          Parameters.ParamByName('Date2To').Value :=
            GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

        end;

        SQL.Add('WHERE ( (EntityAvilable4Sells < 0) OR (1 = :chkNegative ))');
        SQL.Add('AND (Inv4Sell.StuffCode Between :StuffCodeFrom AND :StuffCodeTo )');

        Parameters.ParamByName('DateTo').Value :=
          GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

        Parameters.ParamByName('YearIDFrom').Value :=
          GetcFrom(myParams.ParamValues['YearID'], ftInteger);
        Parameters.ParamByName('YearIDTo').Value :=
          GetcTo(myParams.ParamValues['YearID'], ftInteger);

        Parameters.ParamByName('StoreIDFrom').Value :=
          GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
        Parameters.ParamByName('StoreIDTo').Value :=
          GetcTo(myParams.ParamValues['StoreID'], ftInteger);

        Parameters.ParamByName('StuffCodeFrom').Value :=
          GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
        Parameters.ParamByName('StuffCodeTo').Value :=
          GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

        Parameters.ParamByName('chkNegative').Value :=
          ifthen(chkNegative.Checked, 0, 1);
        Active := True;
      end;
    1:
      begin
        if myParams.FindParam('ReciptNumber') <> nil then
          with qryOrders do
          begin
            Active := False;
            Parameters.ParamByName('ReciptType').Value :=
              FrmReciptType1.ReciptType;

            Parameters.ParamByName('YearIDFrom').Value :=
              GetcFrom(myParams.ParamValues['YearID'], ftInteger);
            Parameters.ParamByName('YearIDTo').Value :=
              GetcTo(myParams.ParamValues['YearID'], ftInteger);

            Parameters.ParamByName('ReciptNumberFrom').Value :=
              GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
            Parameters.ParamByName('ReciptNumberTo').Value :=
              GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

            Parameters.ParamByName('PersonID1From').Value :=
              GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
            Parameters.ParamByName('PersonID1To').Value :=
              GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

            Parameters.ParamByName('DateFrom').Value :=
              GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
            Parameters.ParamByName('DateTo').Value :=
              GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

            Parameters.ParamByName('CheckDateTo').Value := var_glb_CurrentDate;

            Active := True;
            case rgpOrder.ItemIndex of
              0:
                begin
                  Filter := 'LoanAmount = 0';
                  Filtered := True;
                end;
              1:
                begin
                  Filter := 'LoanAmount <> 0';
                  Filtered := True;
                end;
            else
              begin
                Filter := '';
                Filtered := False;
              end
            end;

          end;
      end;
  end;
  CedarDbgrid2.FieldColumns['EntityTheWay_dec'].Color := $00B7B7FF;
  CedarDbgrid2.FieldColumns['WeightTheWay_dec'].Color := $00B7B7FF;

end;

end.
