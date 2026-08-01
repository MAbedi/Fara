/// FUNCTION InventoryAvilable4Sells
unit ReviewRequests;

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
  THackCedarDbgrid = class(TCedarDbgrid);

  TReviewRequestsF = class(Ttemplate2MDIF)
    srcInv4Sell: TDataSource;
    qryInv4Sell: TADOQuery;
    qryInv4SellStuffCode: TLargeintField;
    qryInv4SellInvEntity: TFloatField;
    qryInv4SellInvWeight: TFloatField;
    qryInv4SellEntityTheWay: TFloatField;
    qryInv4SellWeightTheWay: TFloatField;
    qryInv4SellEntityTheWay2: TFloatField;
    qryInv4SellWeightTheWay2: TFloatField;
    qryInv4SellEntityAvilable4Sells: TFloatField;
    qryInv4SellWeightAvilable4Sells: TFloatField;
    qryInv4Sellc_StuffName: TStringField;
    qryInv4SellUnitName: TStringField;
    actFilter: TAction;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    frmType: TFrmReciptType;
    srcReciptsItems: TDataSource;
    qryReciptItems: TADOQuery;
    SumGrid1: TSumGrid;
    qryItems: TADOQuery;
    actReQry: TAction;
    qryCustomer: TADOQuery;
    qryInitForm: TADOQuery;
    actShowForm: TAction;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
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
    Splitter2: TSplitter;
    CedarDbgrid2: TCedarDbgrid;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    actSt1Confirming: TAction;
    BitBtn10: TBitBtn;
    actFilter2: TAction;
    actSt2Perpetuate: TAction;
    qryInv4SellName: TStringField;
    qryInv4Sellacc_DetailCode: TStringField;
    qryInv4SellCarton: TFloatField;
    qryInv4SellEntityorder: TFloatField;
    qryInv4SellWeightOrder: TFloatField;
    actAutomaticRegistration: TAction;
    pb2: TProgressBar;
    qryReciptItems4Add: TADOQuery;
    qryReciptItems4AddReciptItemID: TIntegerField;
    qryReciptItems4AddReciptID: TIntegerField;
    qryReciptItems4AddStuffCode: TLargeintField;
    qryReciptItems4AddStuffSize: TStringField;
    qryReciptItems4AddStuffDiameter: TFloatField;
    qryReciptItems4AddStuffAlloy: TStringField;
    qryReciptItems4AddInputEntity: TFloatField;
    qryReciptItems4AddOutputEntity: TFloatField;
    qryReciptItems4AddInputWeight: TFloatField;
    qryReciptItems4AddOutputWeight: TFloatField;
    qryReciptItems4AddRequestedEntity: TFloatField;
    qryReciptItems4AddRequestedWeight: TFloatField;
    qryReciptItems4AddControlCode: TLargeintField;
    qryReciptItems4AddStuffGrade: TWordField;
    qryReciptItems4AddTotalInputPrice: TBCDField;
    qryReciptItems4AddTotalOutputPrice: TBCDField;
    qryReciptItems4AddUnitSellPrice: TFMTBCDField;
    qryReciptItems4AddTotallSellPrice: TBCDField;
    qryReciptItems4AddItemNote: TStringField;
    qryReciptItems4AddpreReciptItemID: TIntegerField;
    qryReciptItems4Addacc_TopicCode: TLargeintField;
    qryReciptItems4Addacc_DetailCode: TStringField;
    qryReciptItems4Addacc_CTopicCode: TStringField;
    qryReciptItems4AddUseUnitID: TIntegerField;
    qryReciptItems4AddAidNumber: TStringField;
    qryReciptItems4AddAidDate: TStringField;
    qryReciptItems4AddDiscount: TIntegerField;
    qryReciptItems4Addacc_CTopicCode2: TStringField;
    qryReciptItems4AddPersonID1: TIntegerField;
    qryReciptItems4AddProductCode: TLargeintField;
    qryReciptItems4AddProductModel: TIntegerField;
    qryReciptItems4AddItemDate: TStringField;
    qryReciptItems4AddOrderState: TWordField;
    qryReciptItems4AddContactRate: TFloatField;
    qryReciptItems4AddWaterCo: TFloatField;
    qryReciptItems4AddFirstUser: TStringField;
    qryReciptItems4AddLastUser: TStringField;
    qryReciptItems4AddShift: TIntegerField;
    qryReciptItems4AddDeficitValue: TBCDField;
    qryReciptItems4AddUnitSellPrice2: TBCDField;
    qryReciptItems4AddMachineWeight: TFloatField;
    qryReciptItems4AddTotalWeight: TFloatField;
    qryReciptItems4AddAuxiliary: TFloatField;
    qryReciptItems4AddMachineNo: TStringField;
    qryReciptItems4AddMachineName: TStringField;
    qryReciptItems4AddMachineFullWeight: TFloatField;
    qryReciptItems4AddSugarCo: TFloatField;
    qryReciptItems4AddSugarEntity: TFloatField;
    qryReciptItems4AddStandardRate: TBCDField;
    qryReciptItems4AddArzAmount: TFloatField;
    qryReciptItems4AddInvEntity: TFloatField;
    qryReciptItems4AddInvWeight: TFloatField;
    qryReciptItems4AddSecondTypeItem: TIntegerField;
    qryReciptItems4AddTotalStandardRate: TBCDField;
    qryReciptItems4AddAcceptEntity: TFloatField;
    qryReciptItems4AddRollbackEntity: TFloatField;
    qryReciptItems4AddAcceptWeight: TFloatField;
    qryReciptItems4AddRollbackWeight: TFloatField;
    qryReciptItems4AddTaxCo: TFloatField;
    qryReciptItems4AddTaxValue: TBCDField;
    qryReciptItems4AddServerID: TIntegerField;
    qryReciptItems4AddYearID: TIntegerField;
    qryReciptItems4AddPortage: TBCDField;
    qryReciptItems4AddArticle: TBCDField;
    qryReciptItems4AddWage: TBCDField;
    qryReciptItems4AddScoria: TBCDField;
    qryReciptItems4AddWaste1: TBCDField;
    qryReciptItems4AddWaste2: TBCDField;
    qryReciptItems4AddFunction1: TBCDField;
    qryReciptItems4AddCustomerRate: TBCDField;
    qryReciptItems4AddPestEntity: TBCDField;
    qryReciptItems4AddArzRate: TBCDField;
    qryReciptItems4AddInsertTime: TStringField;
    qryReciptItems4AddEditTime: TStringField;
    qryReciptItems4AddIRow: TIntegerField;
    qryReciptItems4Addacc_CTopicCode3: TStringField;
    qryReciptItems4AddUnitCommission: TFMTBCDField;
    qryReciptItems4AddTransFormID: TIntegerField;
    qryReciptItems4AddPrvYearID: TIntegerField;
    qryReciptItems4AddConfirming: TStringField;
    qryReciptItems4AddStuffCodingItemID: TIntegerField;
    qryReciptItems4AddLength_: TFMTBCDField;
    qryReciptItems4AddWidth: TFMTBCDField;
    qryReciptItems4AddDiagnosisCalcTotalPrice: TWordField;
    qryReciptItems4AddStandardConsumptionCo: TFMTBCDField;
    qryReciptItems4AddStandardConsumption: TFloatField;
    qryReciptItems4AddDeficitValue2: TBCDField;
    qryReciptItems4AddDeficitValue3: TBCDField;
    qryRecipts4Add: TADOQuery;
    qryRecipts4AddReciptID: TIntegerField;
    qryRecipts4AddStoreID: TSmallintField;
    qryRecipts4AddReciptNumber: TIntegerField;
    qryRecipts4AddReciptDate: TStringField;
    qryRecipts4AddPersonID1: TIntegerField;
    qryRecipts4AddPersonID2: TIntegerField;
    qryRecipts4AddReciptType: TWordField;
    qryRecipts4AddSecondType: TIntegerField;
    qryRecipts4AddServiceValue: TBCDField;
    qryRecipts4AddReciptValue: TBCDField;
    qryRecipts4AddTotalValue: TBCDField;
    qryRecipts4AddAddDecValue: TBCDField;
    qryRecipts4AddDocNo: TIntegerField;
    qryRecipts4AddDocDate: TStringField;
    qryRecipts4AddReciptNote: TStringField;
    qryRecipts4AddParentReciptID: TIntegerField;
    qryRecipts4AddOperatorID: TIntegerField;
    qryRecipts4AddModifyDate: TDateTimeField;
    qryRecipts4AddReciptState: TWordField;
    qryRecipts4AddUseUnitID: TIntegerField;
    qryRecipts4AddExpireDate: TStringField;
    qryRecipts4AddProjectID: TIntegerField;
    qryRecipts4AddBudgetID: TIntegerField;
    qryRecipts4AddAidNumber: TStringField;
    qryRecipts4AddAidDate: TStringField;
    qryRecipts4AddFirstUser: TStringField;
    qryRecipts4AddLastUser: TStringField;
    qryRecipts4AddReciptStartDate: TStringField;
    qryRecipts4AddReciptEndDate: TStringField;
    qryRecipts4AddDebtControlActive: TWordField;
    qryRecipts4AddStoreID2: TSmallintField;
    qryRecipts4AddTruckNumber: TStringField;
    qryRecipts4AddMachineNo: TStringField;
    qryRecipts4AddMachineName: TStringField;
    qryRecipts4AddArzTypeID: TIntegerField;
    qryRecipts4AddRialsEqual: TBCDField;
    qryRecipts4AddUseOtherID: TWideStringField;
    qryRecipts4AddReciptsRow: TIntegerField;
    qryRecipts4AddSellsMethod: TIntegerField;
    qryRecipts4AddSellsEmporium: TIntegerField;
    qryRecipts4AddMasirID: TIntegerField;
    qryRecipts4AddDeliveryID: TIntegerField;
    qryRecipts4AddPersonID2Bed: TWordField;
    qryRecipts4AddRelatedID: TIntegerField;
    qryRecipts4AddServerID: TIntegerField;
    qryRecipts4AddYearID: TIntegerField;
    qryRecipts4AddPersonID3: TIntegerField;
    qryRecipts4AddCostDownSave: TBCDField;
    qryRecipts4AddDefaultDate: TStringField;
    qryRecipts4AddParentCoReciptID: TIntegerField;
    qryRecipts4AddTransmittal: TIntegerField;
    qryRecipts4AddInsertDate: TDateTimeField;
    qryRecipts4AddMachineInfo: TStringField;
    qryRecipts4AddInsertTime: TStringField;
    qryRecipts4AddEditTime: TStringField;
    qryRecipts4AddPrvYearID: TIntegerField;
    qryRecipts4AddUserRegistrationDoc: TStringField;
    qryRecipts4AddDefaultDuration: TSmallintField;
    qryRecipts4AddCalcGiftItems: TBooleanField;
    Label2: TLabel;
    cmbStore: TComboBox;
    qryReciptItemsReciptID: TIntegerField;
    qryReciptItemsServerID: TIntegerField;
    qryReciptItemsYearID: TIntegerField;
    qryReciptItemsReciptType: TWordField;
    qryReciptItemsReciptNumber: TIntegerField;
    qryReciptItemsReciptDate: TStringField;
    qryReciptItemsPersonID1: TIntegerField;
    qryReciptItemsCustName: TStringField;
    qryReciptItemsStuffCode: TLargeintField;
    qryReciptItemsc_StuffName: TStringField;
    qryReciptItemsCarton: TFloatField;
    qryReciptItemsRequestedEntity: TFloatField;
    qryReciptItemsRequestedWeight: TFloatField;
    qryReciptItemsAcceptEntity: TFloatField;
    qryReciptItemsAcceptWeight: TFloatField;
    qryReciptItemsOutputEntity: TFloatField;
    qryReciptItemsOutputWeight: TFloatField;
    qryReciptItemsUnitSellPrice: TFMTBCDField;
    qryReciptItemsTotalOutputPrice: TBCDField;
    qryReciptItemsTaxCo: TFloatField;
    qryReciptItemsTaxValue: TBCDField;
    qryReciptItemsTotallSellPrice: TBCDField;
    qryReciptItemsNumberCreditInstallments: TIntegerField;
    qryReciptItemsProductCode: TLargeintField;
    qryReciptItemsTotalInputPrice: TBCDField;
    qryReciptItemsInputEntity: TFloatField;
    qryReciptItemsInputWeight: TFloatField;
    qrySellOrder: TADOQuery;
    qrySellOrderc_StuffName: TStringField;
    qrySellOrderUnitName: TStringField;
    qrySellOrderUniteName2: TStringField;
    qrySellOrdercarton: TFloatField;
    qrySellOrderName: TStringField;
    qrySellOrderInvEntity: TFloatField;
    qrySellOrderEntityTheWay: TFloatField;
    qrySellOrderEntityTheWay2: TFloatField;
    qrySellOrderEntityAvilable4Sells: TFloatField;
    qrySellOrderorderEntityPoint: TFloatField;
    qrySellOrderMinOrder: TFloatField;
    qrySellOrderMaxOrder: TFloatField;
    qrySellOrderOrderDeliveryTime: TIntegerField;
    qrySellOrderLeadTime: TIntegerField;
    qrySellOrderMaximumLife: TIntegerField;
    qrySellOrdersellentity: TFloatField;
    qrySellOrdersellentityDay: TFloatField;
    qrySellOrderBasePrice: TBCDField;
    qrySellOrderOverheadPrice: TBCDField;
    qrySellOrderTotalPrice: TBCDField;
    qrySellOrdercaseno: TIntegerField;
    qrySellOrderMarginSafety: TIntegerField;
    qrySellOrderContractDate: TStringField;
    qrySellOrderStartDate: TStringField;
    qrySellOrderEndDate: TStringField;
    qrySellOrderAcc_DetailCode: TStringField;
    TabControl1: TTabControl;
    qrySellOrderStuffCode: TLargeintField;
    qrySellOrderEntityorder: TFloatField;
    qrySellOrderWeightOrder: TFloatField;
    qryInv4SellEntityTheWay_dec: TFloatField;
    qryInv4SellWeightTheWay_dec: TFloatField;
    chkFilter: TCheckBox;
    qryInv4SellStuffNote: TStringField;
    qryReciptItems4AddID: TFMTBCDField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkNegativeClick(Sender: TObject);
    procedure FrmReciptType1cmbReciptTypeChange(Sender: TObject);
    procedure qryReciptItemsBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcReciptsItemsStateChange(Sender: TObject);
    procedure qryReciptItemsAfterPost(DataSet: TDataSet);
    procedure actReQryExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FrmReciptType1cmbReciptTypeEnter(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure actSt1ConfirmingExecute(Sender: TObject);
    procedure actAutomaticRegistrationExecute(Sender: TObject);
    procedure cmbStoreChange(Sender: TObject);
    procedure qryInv4SellAfterScroll(DataSet: TDataSet);
    procedure qryReciptItems4AddAfterInsert(DataSet: TDataSet);
    procedure TabControl1Change(Sender: TObject);
    procedure chkFilterClick(Sender: TObject);
    procedure qryInv4SellEntityorderChange(Sender: TField);
    procedure qryInv4SellWeightOrderChange(Sender: TField);
  private
    ReciptType, StoreID, StepCorrelate: Integer;
    procedure UpdateFilter;
    procedure InitFormCreate;
    procedure Add2Recipt;
    procedure Add2ReciptItem;
    function SelectADOQuery: TADOQuery;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReviewRequestsF: TReviewRequestsF;

const
  LoanFormType = 105;

implementation

uses
  GlobalPro, DM, filter_ADO, Filter_ADO_Const, ReciptsFunctions, Loan,
  FormFunctions, FaraConsts, MMESSAGE, search2, sort2, shamsiDate, runScript;

{$R *.dfm}

procedure TReviewRequestsF.actSt1ConfirmingExecute(Sender: TObject);
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

    Parameters.ParamByName('ReciptType').Value := ReciptType;

    Parameters.ParamByName('YearIDFrom').Value :=
      GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    Parameters.ParamByName('YearIDTo').Value :=
      GetcTo(myParams.ParamValues['YearID'], ftInteger);

    Parameters.ParamByName('StoreIDFrom').Value := StoreID;
    // GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value := StoreID;
    // GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Warn2(ExecSQL.ToString + ' مورد قطعی شد');
    Free;
  end;

end;

procedure TReviewRequestsF.actAutomaticRegistrationExecute(Sender: TObject);
var
  acc_DetailCode: Integer;
  ReciptDate: string;
begin
  inherited;
  if cmbStore.ItemIndex = -1 then
  begin
    Warn('انبار انتخاب نشده');
    Abort;
  end;

  if get_response('آيا براي ثبت فرم‌ها مطمئن هستيد؟') <> mrYes then
    Exit;

  chkNegative.Checked := True;
  qryRecipts4Add.Open;
  qryReciptItems4Add.Open;

  ReciptDate := EmptyStr;
  StepCorrelate := frmType.qryinit.FieldByName('StepCorrelate').AsInteger;

  with SelectADOQuery do
    try
      pb2.Min := 1;
      pb2.Position := 0;
      pb2.Step := 1;
      DisableControls;
      Filter := 'acc_DetailCode<>0';
      Filtered := True;
      pb2.Max := RecordCount + 1;
      Sort := 'acc_DetailCode';
      First;
      acc_DetailCode := 0;
      while not Eof do
      begin
        if acc_DetailCode <> FieldByName('acc_DetailCode').AsInteger then
        begin
          if qryReciptItems4Add.RecordCount > 0 then
          begin
            ReciptBe4PostAutoPrice14(acc_DetailCode, qryReciptItems4Add,
              frmType.qryinit, False, True,
              qryRecipts4AddReciptNumber.AsString);
            if qryReciptItems4Add.State in dsEditModes then
              qryReciptItems4Add.Post;

            qryReciptItems4Add.UpdateBatch();
            qryReciptItems4Add.Requery();
          end;
          acc_DetailCode := FieldByName('acc_DetailCode').AsInteger;
          Add2Recipt;
          qryReciptItems4Add.Requery();
        end;
        Add2ReciptItem;
        // lblCaptionS.Caption := 'رديف:‏' + IntToStr(RecNo);
        Next;
        pb2.StepIt;
        Application.ProcessMessages;
      end;
      if qryReciptItems4Add.RecordCount > 0 then
        ReciptBe4PostAutoPrice14(acc_DetailCode, qryReciptItems4Add,
          frmType.qryinit, False, True, qryRecipts4AddReciptNumber.AsString);

      // pb2.Position := 100;
      if qryReciptItems4Add.State in dsEditModes then
        qryReciptItems4Add.Post;
      qryReciptItems4Add.UpdateBatch();
      qryReciptItems4Add.Requery();
    finally
      EnableControls;
      FreeReservedCodes(DMF.adcBSell, 'recipts', '', IntToStr(ReciptType));
      FreeReservedCodes(DMF.adcBSell, 'reciptitems', '', IntToStr(ReciptType));
      BigMessage('انجام شد', 2);
      UpdateFilter;
      // ProgressBar1.Position := 100;
      // Warn2('انتقال سر لیست ' + mskCodeSarList.Text + ' انجام شد.‏', 5000);
      // qry_Recipts.Close;
      // qry_Recipt_Items.Close;
    end;

end;

procedure TReviewRequestsF.Add2Recipt;
begin
  with qryRecipts4Add do
  begin
    Insert;
    FieldByName('ReciptID').AsInteger := GetANewID(nil, IntToStr(ReciptType),
      'Recipts', 'ReciptID', nil, StepCorrelate);
    FieldByName('ReciptType').AsInteger := ReciptType;
    FieldByName('StoreID').AsInteger := StoreID;
    FieldByName('InsertDate').AsDateTime := now;
    FieldByName('OperatorID').AsInteger := User.id;
    FieldByName('AddDecValue').AsInteger := 0;
    FieldByName('TotalValue').AsInteger := 0;

    FieldByName('PersonID1').AsInteger := SelectADOQuery.FieldByName
      ('acc_DetailCode').AsInteger;
    // with qryUnitSellPrice do
    // begin
    // Active := False;
    // Parameters[0].Value := qryInv4Sellacc_DetailCode.AsInteger;
    // Active := True;
    // end;

    FieldByName('PersonID2').AsInteger := 0;
    FieldByName('PersonID3').AsInteger := 0;

    FieldByName('ReciptState').AsInteger := 0;
    FieldByName('FirstUser').AsString := User.Name;
    FieldByName('UseOtherID').AsInteger := 0;
    FieldByName('ServerID').AsInteger := Opt.ServerID;
    FieldByName('YearID').AsInteger := AppBank.Year;
    FieldByName('ModifyDate').AsDateTime := now;

    GetReciptNumber(frmType.qryinit, qryRecipts4Add, 0, myStore);
    qryRecipts4AddReciptDate.AsString := var_glb_CurrentDate;

    Post;
  end;
end;

procedure TReviewRequestsF.Add2ReciptItem;
begin
  with SelectADOQuery do
  begin
    qryReciptItems4Add.Insert;

    qryReciptItems4AddStuffCode.AsLargeInt := FieldByName('StuffCode')
      .AsLargeInt;

    // if qryUnitSellPrice.Locate('c_stuffcode',
    // qryInv4SellStuffCode.AsLargeInt, []) then
    // qryReciptItems4AddUnitSellPrice.AsInteger :=
    // qryUnitSellPrice.FieldByName('UnitSellPrice').AsInteger;

    qryReciptItems4AddInputEntity.AsFloat := FieldByName('Entityorder').AsFloat;
    qryReciptItems4AddInputWeight.AsFloat := FieldByName('WeightOrder').AsFloat;

    qryReciptItems4Add.Post;

  end;
end;

procedure TReviewRequestsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterReciptDate);
      AddItemFilter(GetFilter, TFilterYearID);
      // AddItemFilter(GetFilter, TFilterStoreID);
      AddItemFilter(GetFilter, TFilterStuffCode);
      AddItemFilter(GetFilter, TFilterST1);

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

procedure TReviewRequestsF.actReQryExecute(Sender: TObject);
begin
  inherited;
  SelectADOQuery.Requery();
end;

procedure TReviewRequestsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryReciptItems, Self, SelectADOQuery.FieldByName('StuffCode')
    .AsLargeInt);
end;

procedure TReviewRequestsF.BitBtn12Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TReviewRequestsF.BitBtn13Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryReciptItems);
end;

procedure TReviewRequestsF.BitBtn14Click(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qryReciptItems);
end;

procedure TReviewRequestsF.chkFilterClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TReviewRequestsF.chkNegativeClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TReviewRequestsF.cmbStoreChange(Sender: TObject);
begin
  inherited;
  StoreID := Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
  UpdateFilter
end;

procedure TReviewRequestsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitFormCreate
end;

procedure TReviewRequestsF.InitFormCreate;
begin
  InitCombos(cmbStore, 'SELECT n_StoreID,c_StoreName FROM Stores');
  frmType.EffectType := 1;
  frmType.initFrmCombo;
  ActiveControl := frmType.cmbReciptType;
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := LoanFormType;
    Active := True;
    // pnlLoanTitel.Caption := FieldByName('FormCaption').AsString;
  end;

  frmType.cmbReciptType.ItemIndex := frmType.cmbReciptType.Items.Count - 1;
  FrmReciptType1cmbReciptTypeChange(frmType.cmbReciptType);

end;

procedure TReviewRequestsF.PageControl1Change(Sender: TObject);
begin
  inherited;
  // if (PageControl1.TabIndex = 1) then
  // actFilter2.Execute
  // else
  // actFilter.Execute;
end;

procedure TReviewRequestsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);

  // SaveColWidth(grdTasviye);
end;

procedure TReviewRequestsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5, True);

  // SetColSize(grdTasviye, 3, True);
end;

procedure TReviewRequestsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close;
end;

procedure TReviewRequestsF.FrmReciptType1cmbReciptTypeChange(Sender: TObject);
begin
  inherited;
  if frmType.cmbReciptType.ItemIndex = -1 then
    raise Exception.Create('نوع فرم انتخاب نشده است');
  frmType.cmbReciptTypeChange(Sender);
  ReciptType := frmType.ReciptType;
  if cmbStore.ItemIndex <> -1 then
    UpdateFilter;
end;

procedure TReviewRequestsF.FrmReciptType1cmbReciptTypeEnter(Sender: TObject);
begin
  inherited;
  frmType.cmbReciptType.DroppedDown := True;
end;

procedure TReviewRequestsF.qryInv4SellAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryReciptItems do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Parameters.ParamByName('StuffCode').Value :=
      DataSet.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end;
end;

procedure TReviewRequestsF.qryInv4SellEntityorderChange(Sender: TField);
begin
  inherited;
  SetOnChangeOff(qryInv4SellWeightOrder,
    RoundTo(qryInv4SellEntityorder.AsFloat / qryInv4SellCarton.AsInteger, -2))
end;

procedure TReviewRequestsF.qryInv4SellWeightOrderChange(Sender: TField);
begin
  inherited;
  SetOnChangeOff(qryInv4SellEntityorder,
    RoundTo(qryInv4SellWeightOrder.AsFloat * qryInv4SellCarton.AsInteger, -2))
end;

procedure TReviewRequestsF.qryReciptItems4AddAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryReciptItems4AddReciptItemID.AsInteger :=
    GetANewID(nil, IntToStr(ReciptType), 'ReciptItems', 'ReciptItemID', nil,
    StepCorrelate);
  qryReciptItems4AddReciptID.AsInteger := qryRecipts4AddReciptID.AsInteger;
  qryReciptItems4AddFirstUser.AsString := User.Name;
  qryReciptItems4AddInsertTime.AsString := TimeToStr(now);
  qryReciptItems4AddServerID.AsInteger := Opt.ServerID;
  qryReciptItems4AddYearID.AsInteger := AppBank.Year;
end;

procedure TReviewRequestsF.qryReciptItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if frmType.qryinit.FieldByName('AutoPrice').AsInteger in [15] then
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
      frmType.qryinit, True, False, qryRecipts4AddReciptNumber.AsString);
  end;

end;

procedure TReviewRequestsF.qryReciptItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Abort
end;

function TReviewRequestsF.SelectADOQuery: TADOQuery;
begin
  if TabControl1.TabIndex = 0 then
    Result := qryInv4Sell
  else
    Result := qrySellOrder;
end;

procedure TReviewRequestsF.srcReciptsItemsStateChange(Sender: TObject);
begin
  inherited;
  btnOk.Visible := qryReciptItems.State in dsEditModes;
  btnEdit.Visible := not btnOk.Visible;
end;

procedure TReviewRequestsF.TabControl1Change(Sender: TObject);

begin
  inherited;
  qrySellOrder.Close;
  qryInv4Sell.Close;
  if TabControl1.TabIndex = 0 then
    srcInv4Sell.DataSet := qryInv4Sell
  else
    srcInv4Sell.DataSet := qrySellOrder;
  chkNegative.Visible := TabControl1.TabIndex = 0;
  UpdateFilter;

end;

procedure TReviewRequestsF.UpdateFilter;
begin

  if cmbStore.ItemIndex >= 0 then
    with SelectADOQuery do
    begin
      Active := False;

      Parameters.ParamByName('st1From').Value :=
        GetcFrom(myParams.ParamValues['ST1'], ftInteger);
      Parameters.ParamByName('st1To').Value :=
        GetcTo(myParams.ParamValues['ST1'], ftInteger);

      Parameters.ParamByName('DateTo').Value :=
        GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

      Parameters.ParamByName('YearIDFrom').Value :=
        GetcFrom(myParams.ParamValues['YearID'], ftInteger);
      Parameters.ParamByName('YearIDTo').Value :=
        GetcTo(myParams.ParamValues['YearID'], ftInteger);

      Parameters.ParamByName('StoreIDFrom').Value := StoreID;
      // GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
      Parameters.ParamByName('StoreIDTo').Value := StoreID;
      // GetcTo(myParams.ParamValues['StoreID'], ftInteger);

      if TabControl1.TabIndex = 1 then
      begin
        Parameters.ParamByName('StoreID2From').Value := StoreID;
        Parameters.ParamByName('StoreID2To').Value := StoreID;
      end;

      Parameters.ParamByName('StuffCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffCodeTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

      if TabControl1.TabIndex = 0 then
      begin
        Parameters.ParamByName('chkNegative').Value :=
          ifthen(chkNegative.Checked, 0, 1);

        Parameters.ParamByName('chkFilter').Value :=
          ifthen(chkFilter.Checked, 0, 1);

      end;

      Active := True;
      CedarDbgrid2.ColorDBGrid;
      if TabControl1.TabIndex = 0 then
      begin
        CedarDbgrid2.FieldColumns['EntityTheWay_dec'].Color := $00B7B7FF;
        CedarDbgrid2.FieldColumns['WeightTheWay_dec'].Color := $00B7B7FF;
      end;
      THackCedarDbgrid(CedarDbgrid2).DoLoad;

    end;
end;

end.

