unit F5040;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, template2MDI, Data.DB,
  Vcl.Dialogs, Vcl.ExtDlgs, Data.Win.ADODB, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons, System.Math,
  Data.Bind.Components, Unit5040, System.IOUtils, Data.Bind.EngExt,
  System.StrUtils, IdHTTP, System.Generics.Collections,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Grid, Data.Bind.Controls, Vcl.Bind.Navigator,
  System.Json, REST.Json, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid,
  Vcl.CheckLst,
  // REST.Client, REST.Types;
  System.Net.HttpClient, System.Net.Mime;

type
  TF5040F = class(Ttemplate2MDIF)
    qry_Recipts: TADOQuery;
    qry_Recipt_Items: TADOQuery;
    srcRecipts: TDataSource;
    srcReciptItems: TDataSource;
    statRecipts: TStatusBar;
    statReciptItems: TStatusBar;
    qry_ReciptsCodeMeliMoshtari: TStringField;
    qry_ReciptsMobileMoshtari: TStringField;
    qry_ReciptsTelMoshtari: TStringField;
    qry_ReciptsTakhfif: TBCDField;
    qry_ReciptsBimeVaAvarez: TBCDField;
    qry_ReciptsHazineErsal: TBCDField;
    qry_ReciptsMaliat: TBCDField;
    qry_ReciptsTarikhErsal: TStringField;
    qry_ReciptsTarikhFaktor: TStringField;
    actAddCustomers: TAction;
    spAdd2Recipt: TADOStoredProc;
    qry_ReciptsAddress: TStringField;
    qryCustomersAdd: TADOQuery;
    qryCustomersAddCustID: TIntegerField;
    qryCustomersAddCustomerGrpID: TIntegerField;
    qryCustomersAddCustName: TStringField;
    qryCustomersAddMobile: TStringField;
    qryCustomersAddTel: TStringField;
    qryCustomersAddTel2: TWideStringField;
    qryCustomersAddTel3: TWideStringField;
    qryCustomersAddFax: TStringField;
    qryCustomersAddemail: TStringField;
    qryCustomersAddNationalID: TStringField;
    qryCustomersAddAddress: TStringField;
    qryCustomersAddCustomerNote: TStringField;
    qryCustomersAddModifyDate: TDateTimeField;
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
    qry_ReciptsTarikhSarList: TStringField;
    qry_ReciptsSerialFaktor: TIntegerField;
    qry_ReciptsNameMoshtari: TStringField;
    qry_ReciptsMablaghKol: TBCDField;
    qry_ReciptsTedadFaktor: TStringField;
    qry_ReciptsCodePeyk: TStringField;
    qry_ReciptsNamePeyk: TStringField;
    qry_ReciptsCodeNamayandegi: TStringField;
    qry_ReciptsNameNamayandegi: TStringField;
    qry_ReciptsCodePeygiri: TStringField;
    qry_ReciptsVaziatPardakht: TStringField;
    qry_ReciptsVaziarErsal: TStringField;
    qry_ReciptsNoePardakht: TStringField;
    qry_ReciptsTarikhTaeinVaziat: TStringField;
    actMove: TAction;
    pb1: TProgressBar;
    qryinit: TADOQuery;
    BitBtn2: TBitBtn;
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
    qry_Recipt_ItemsSerialFaktor: TIntegerField;
    qry_Recipt_ItemsCodeMahsoul: TLargeintField;
    qry_Recipt_ItemsOnvanMahsoul: TStringField;
    qry_Recipt_ItemsCodeGheymat: TStringField;
    qry_Recipt_ItemsCodeVahedShomaresh: TStringField;
    qry_Recipt_ItemsOnvaneVahedShomaresh: TStringField;
    qry_Recipt_ItemsGheymatVahed: TBCDField;
    qry_Recipt_ItemsTedad: TFloatField;
    qryStuffcoding: TADOQuery;
    pnlTop: TPanel;
    Label3: TLabel;
    cmbReciptType: TComboBox;
    dlg1: TOpenTextFileDialog;
    actReadList: TAction;
    qry_ReciptsCodeSarList: TStringField;
    qryDeficits4Add: TADOQuery;
    qryDeficits4AddReciptDeficitID: TIntegerField;
    qryDeficits4AddReciptID: TIntegerField;
    qryDeficits4AddDeficitID: TSmallintField;
    qryDeficits4AddDeficitAdd: TBCDField;
    qryDeficits4AddDeficitDec: TBCDField;
    qryDeficits4AddDeficitNote: TStringField;
    qryDeficits4AddServerID: TIntegerField;
    qryDeficits4AddYearID: TIntegerField;
    qryDeficits4AddArzAmount: TBCDField;
    qryDeficits4AddDeficitCo: TFloatField;
    qryTransFormItems: TADOQuery;
    pnlB_or_C: TPanel;
    Label4: TLabel;
    mskend: TMaskEdit;
    mskstart: TMaskEdit;
    Label5: TLabel;
    Button3: TButton;
    qrySerialFaktors: TADOQuery;
    qryStuffcodingStuffCode: TLargeintField;
    lblCaptionS: TLabel;
    pb2: TProgressBar;
    qryCustomersAlternative: TADOQuery;
    qryCustomersAlternativeCustID: TIntegerField;
    qryLookUps1200: TADOQuery;
    qryLookUps1200LookUpID: TIntegerField;
    qry_ReciptsPersonalCode: TStringField;
    qrySellsEmporiums: TADOQuery;
    qrySellsEmporiumsSellsEmporium: TIntegerField;
    qrySellsEmporiumsSellsEmporiumName: TWideStringField;
    qry_ReciptsD_Collectedcount: TBCDField;
    qry_ReciptsD_Collecteditem_price: TBCDField;
    qry_ReciptsD_Price: TBCDField;
    qry_ReciptsD_Cityid: TStringField;
    qry_ReciptsD_Product_id: TStringField;
    qry_ReciptsD_Reseller: TStringField;
    qry_ReciptsD_Resellerid: TStringField;
    qry_ReciptsD_Title: TStringField;
    qry_ReciptsD_ostan: TStringField;
    grdRecipts: TCedarDbgrid;
    grdReciptItems: TCedarDbgrid;
    qry_Recipt_ItemsD_Resellerid: TIntegerField;
    qryStoresAlternative: TADOQuery;
    qry_ReciptsD_StoreID: TIntegerField;
    qry_ReciptsNoePardakhtCode: TStringField;
    qryReciptItems4AddID: TFMTBCDField;
    qry_ReciptsCodeMoshtari: TStringField;
    qryCustomersAlternativeAlternativeID: TStringField;
    mskstartT: TMaskEdit;
    mskendT: TMaskEdit;
    qrySerialFaktorsTruckNumber: TStringField;
    qryReciptItems4AddDeficitValue4: TBCDField;
    qryReciptItems4AddDeficitValueCo2: TFMTBCDField;
    qryReciptItems4AddDeficitValueCo3: TFMTBCDField;
    qryReciptItems4AddDeficitValueCo4: TFMTBCDField;
    qryReciptItems4AddArzPortage: TFloatField;
    qryReciptItems4AddIneffectiveInput: TWordField;
    qryReciptItems4AddCommissionPrice: TBCDField;
    qryReciptItems4AddCommissionCurrency: TFMTBCDField;
    qryReciptItems4AddCurrencyDiscounts: TFMTBCDField;
    qry_Recipt_ItemsDarSadTakhfif: TFloatField;
    qry_Recipt_Itemsfinal_price: TFMTBCDField;
    qryLookUps1200FactorType: TStringField;
    qryStuffcodingAlternativeStuffCode: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actAddCustomersExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qry_ReciptsAfterScroll(DataSet: TDataSet);
    procedure actMoveExecute(Sender: TObject);
    procedure cmbReciptTypeChange(Sender: TObject);
    procedure qry_ReciptsBeforeEdit(DataSet: TDataSet);
    procedure qry_ReciptsBeforeInsert(DataSet: TDataSet);
    procedure qry_Recipt_ItemsBeforeEdit(DataSet: TDataSet);
    procedure qry_Recipt_ItemsBeforeInsert(DataSet: TDataSet);
    procedure actReadListExecute(Sender: TObject);
    procedure srcReciptsStateChange(Sender: TObject);
    procedure cmbReciptTypeEnter(Sender: TObject);
    procedure qry_Recipt_ItemsAfterOpen(DataSet: TDataSet);
    procedure qry_ReciptsBeforeOpen(DataSet: TDataSet);
    procedure mskstartExit(Sender: TObject);
  private
    ReciptType: Integer;
    function GetfaktorJsonNew: string;
    procedure ReadRecipt(aRecipt: Unit5040.TDataInv);
    procedure ReadProducts(aReciptItem: TObjectList<TProducts>; Serial: string);
    procedure ReadGifts(aReciptItem: TObjectList<TGifts>; Serial: string);
    procedure Add2Recipt(ReciptID: Integer);
    procedure Add2ReciptItem(ReciptID: Integer; var ReciptItemID: Integer;
      StepCorrelate: Integer);
    procedure Add2ReciptItemFild(ReciptID: Integer; var ReciptItemID: Integer;
      StepCorrelate: Integer);
    procedure Add2ReciptsDeficits(ReciptID, StepCorrelate: Integer;
      var ReciptDeficitID: Integer);
    function LocateAlternativeCustID(code: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F5040F: TF5040F;

implementation

uses
  DM, GlobalPro, MMESSAGE, FaraConsts, FormFunctions, NamaUnit, selected,
  shamsiDate;

{$R *.dfm}
// function TF5040F.MakeCustomerID(CustomerID: Integer): Integer;
// var
// s: string;
// begin
// s := '111' + RightStr('0000000' + CustomerID.ToString, 7);
// Result := s.ToInteger(s);
// end;

procedure TF5040F.mskstartExit(Sender: TObject);
begin
  inherited;
  mskend.Text := mskstart.Text
end;

procedure TF5040F.qry_Recipt_ItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  grdReciptItems.ColorDBGrid;
end;

procedure TF5040F.qry_Recipt_ItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  Abort
end;

procedure TF5040F.qry_Recipt_ItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Abort
end;

procedure TF5040F.qry_ReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (qry_Recipt_Items.Active) and (qry_Recipts.RecordCount > 0) then
  begin
    qry_Recipt_Items.Filter := 'SerialFaktor=' +
      qry_ReciptsSerialFaktor.AsString;
    qry_Recipt_Items.Filtered := True;
    statReciptItems.Panels[0].Text := 'تعداد=' +
      qry_Recipt_Items.RecordCount.ToString;
  end;
end;

procedure TF5040F.qry_ReciptsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  Abort
end;

procedure TF5040F.qry_ReciptsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Abort
end;

procedure TF5040F.qry_ReciptsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  grdRecipts.Columns.Clear;
  grdReciptItems.Columns.Clear;
end;

procedure TF5040F.actAddCustomersExecute(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  qryCustomersAdd.Open;
  qryCustomersAlternative.Open;
  With qry_Recipts do
  begin
    pb2.Max := RecordCount + 1;
    pb2.Min := 1;
    pb2.Position := 0;
    pb2.Step := 1;
    DisableControls;
    First;
    while not Eof do
    begin
      b := not LocateAlternativeCustID(qry_ReciptsCodeMoshtari.AsString);
      if b then
        try
          qryCustomersAdd.Insert;
          qryCustomersAddCustomerGrpID.AsInteger := 22;
          qryCustomersAddCustID.AsInteger :=
            GetANewCode(self.Name,
            'Select max(CustID) from Customers where  CustomerGrpID =' +
            qryCustomersAddCustomerGrpID.AsString, 'CustID');

          qryCustomersAddCustName.AsString := qry_ReciptsNameMoshtari.AsString;
          qryCustomersAddMobile.AsString := qry_ReciptsMobileMoshtari.AsString;
          qryCustomersAddTel.AsString := qry_ReciptsTelMoshtari.AsString;
          qryCustomersAddNationalID.AsString :=
            qry_ReciptsCodeMeliMoshtari.AsString;
          qryCustomersAddAddress.AsString := qry_ReciptsAddress.AsString;
          qryCustomersAddModifyDate.AsDateTime := now;
          qryCustomersAdd.Post;

          qryCustomersAlternative.Insert;
          qryCustomersAlternativeCustID.AsInteger :=
            qryCustomersAddCustID.AsInteger;
          qryCustomersAlternativeAlternativeID.AsString :=
            qry_ReciptsCodeMoshtari.AsString;
          qryCustomersAlternative.Post;

          FreeReservedCodes(DMF.adcBSell, 'customers', '', self.Name);
        except
          on e: Exception do
          begin
            Warn(e.Message + ' CodeMoshtari=' +
              qry_ReciptsCodeMoshtari.AsString);
            qryCustomersAdd.Cancel;
            Break;
          end;
        end;

      Next;
      pb2.StepIt;
    end;
    EnableControls;
  end;
  BigMessage('ثبت شد.', 0);
end;

// procedure TF5040F.btnOkClick(Sender: TObject);
// var
// a5040: T5040Class;
// json: string;
// item: TFaktorClass;
// PropInfo: PPropInfo;
// r: Integer;
// begin
// inherited;
// json := GetfaktorJson;
// a5040 := T5040Class.FromJsonString(json);
// try
// r := 1;
// gridFaktor.RowCount := High(a5040.SarList[0].Faktor);
// gridFaktor.ColCount := 5;
// for item in a5040.SarList[0].Faktor do
// begin
// PropInfo := GetPropInfo(item.ClassInfo, 'CodeMoshtari');
// if PropInfo <> nil then
// begin
// gridFaktor.Cells[0, 0] := 'کد مشتری';
// gridFaktor.Cells[0, r] := GetPropValue(item, PropInfo);
// end;
// PropInfo := GetPropInfo(item.ClassInfo, 'NameMoshtari');
// if PropInfo <> nil then
// begin
// gridFaktor.Cells[1, 0] := 'نام مشتری';
// gridFaktor.Cells[1, r] := GetPropValue(item, PropInfo);
// end;
// PropInfo := GetPropInfo(item.ClassInfo, 'TarikhFaktor');
// if PropInfo <> nil then
// begin
// gridFaktor.Cells[2, 0] := 'تاریخ';
// gridFaktor.Cells[2, r] := GetPropValue(item, PropInfo);
// end;
//
// PropInfo := GetPropInfo(item.ClassInfo, 'Takhfif');
// if PropInfo <> nil then
// begin
// gridFaktor.Cells[3, 0] := 'تخفیف';
// gridFaktor.Cells[3, r] := GetPropValue(item, PropInfo);
// end;
// PropInfo := GetPropInfo(item.ClassInfo, 'MablaghKol');
// if PropInfo <> nil then
// begin
// gridFaktor.Cells[4, 0] := 'مبلغ کل';
// gridFaktor.Cells[4, r] := GetPropValue(item, PropInfo);
// end;
// Inc(r);
// end;
//
// finally
// a5040.Free;
// end;
// end;

procedure TF5040F.ReadRecipt(aRecipt: Unit5040.TDataInv);
begin
  with qry_Recipts do
  begin
    Active := True;
    Insert;
    qry_ReciptsCodeSarList.AsString := aRecipt.Serial.ToString;
    qry_ReciptsTarikhSarList.AsString := aRecipt.CreatedAt;
    qry_ReciptsTedadFaktor.AsString := aRecipt.Products.Count.ToString;
    // qry_ReciptsCodePeyk.AsString := aRecipt.CodePeyk.Trim;
    // qry_ReciptsNamePeyk.AsString := aRecipt.NamePeyk.Trim;
    // qry_ReciptsCodeNamayandegi.AsString := aRecipt.CodeNamayandegi.Trim;
    // qry_ReciptsNameNamayandegi.AsString := aRecipt.NameNamayandegi.Trim;
    // qry_ReciptsCodePeygiri.AsString := aRecipt.CodePeygiri.Trim;
    // qry_ReciptsVaziatPardakht.AsBoolean := aRecipt.VaziatPardakht;
    // qry_ReciptsVaziarErsal.AsString := aRecipt.VaziarErsal.Trim;
     qry_ReciptsNoePardakhtCode.AsString := aRecipt.FactorType.Trim;
    // qry_ReciptsNoePardakht.AsString := aRecipt.NoePardakht.Trim;
    // qry_ReciptsTarikhTaeinVaziat.AsString := aRecipt.TarikhTaeinVaziat.Trim;

    qry_ReciptsSerialFaktor.AsString := aRecipt.Serial.ToString;
    qry_ReciptsTarikhFaktor.AsString := aRecipt.CreatedAt;
    qry_ReciptsMablaghKol.AsString := aRecipt.Price.ToString;
    qry_ReciptsTakhfif.AsString := aRecipt.DiscountedPrice.ToString;
    // qry_ReciptsBimeVaAvarez.AsString := aRecipt.BimeVaAvarez.Trim;
    // qry_ReciptsHazineErsal.AsString := aRecipt.HazineErsal.Trim;
    // qry_ReciptsMaliat.AsString := aRecipt.d

    qry_ReciptsCodeMoshtari.AsString := aRecipt.Agentid;// aRecipt.CustomerID.Trim;
    qry_ReciptsNameMoshtari.AsString := aRecipt.AgentName;
    qry_ReciptsNameNamayandegi.AsString := aRecipt.Agentid;
    // qry_ReciptsCodeMeliMoshtari.AsString := aRecipt.CodeMeliMoshtari.Trim;
    // qry_ReciptsMobileMoshtari.AsString := aRecipt.MobileMoshtari.Trim;
    // qry_ReciptsTelMoshtari.AsString := aRecipt.TelMoshtari.Trim;
    // qry_ReciptsAddress.AsString := aRecipt.Address.Trim;

    // qry_ReciptsPersonalCode.AsString := aRecipt.PersonalCode.Trim;

    Post;
  end;
end;

procedure TF5040F.ReadProducts(aReciptItem: TObjectList<TProducts>;
  Serial: string);
var
  aProduct: TProducts;
begin
  with qry_Recipt_Items do
  begin
    Active := True;
    for aProduct in aReciptItem do
    begin
      Insert;
      qry_Recipt_ItemsSerialFaktor.AsString := Serial;
      qry_Recipt_ItemsCodeMahsoul.AsString := aProduct.code;
      qry_Recipt_ItemsOnvanMahsoul.AsString := aProduct.Name.Trim;
      qry_Recipt_ItemsCodeGheymat.AsInteger := 0;
      qry_Recipt_ItemsGheymatVahed.AsString := aProduct.Price.ToString;
      qry_Recipt_ItemsTedad.AsString := aProduct.Number.ToString;
      qry_Recipt_ItemsDarSadTakhfif.AsString := aProduct.Discount.ToString;
      qry_Recipt_Itemsfinal_price.AsInteger := aProduct.FinalPrice;
      // qry_Recipt_ItemsCodeVahedShomaresh.AsExtended :=
      // aProduct[I].CodeVahedShomaresh;
      // qry_Recipt_ItemsOnvaneVahedShomaresh.AsString :=
      // aProduct[I].OnvaneVahedShomaresh;

      Post;
    end;

  end;
end;

procedure TF5040F.ReadGifts(aReciptItem: TObjectList<TGifts>; Serial: string);
var
  aProduct: TGifts;
begin
  with qry_Recipt_Items do
  begin
    Active := True;
    for aProduct in aReciptItem do
    begin
      Insert;
      qry_Recipt_ItemsSerialFaktor.AsString := Serial;
      qry_Recipt_ItemsCodeMahsoul.AsString := aProduct.code;
      qry_Recipt_ItemsOnvanMahsoul.AsString := aProduct.Name.Trim;
      qry_Recipt_ItemsCodeGheymat.AsInteger := 0;
      qry_Recipt_ItemsGheymatVahed.AsString := aProduct.Price.ToString;
      qry_Recipt_ItemsTedad.AsString := aProduct.Number.ToString;
      qry_Recipt_ItemsDarSadTakhfif.AsString := aProduct.Discount.ToString;
      qry_Recipt_Itemsfinal_price.AsInteger := aProduct.FinalPrice;
      // qry_Recipt_ItemsCodeVahedShomaresh.AsExtended :=
      // aProduct[I].CodeVahedShomaresh;
      // qry_Recipt_ItemsOnvaneVahedShomaresh.AsString :=
      // aProduct[I].OnvaneVahedShomaresh;

      Post;
    end;

  end;
end;

procedure TF5040F.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  actAddCustomers.Enabled := qry_Recipts.RecordCount > 0;
  actMove.Enabled := qry_Recipts.RecordCount > 0;
end;

procedure TF5040F.cmbReciptTypeChange(Sender: TObject);
begin
  inherited;
  ReciptType := Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
  end;
end;

procedure TF5040F.cmbReciptTypeEnter(Sender: TObject);
begin
  inherited;
  cmbReciptType.DroppedDown := True;
end;

procedure TF5040F.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombos(cmbReciptType,
    'SELECT ReciptType,ReciptCaption FROM ReciptTypes WHERE (ReciptType in(12))');

  if cmbReciptType.Items.Count = 1 then
  begin
    cmbReciptType.ItemIndex := 0;
    cmbReciptTypeChange(cmbReciptType)
  end;
  // InitCombos(cmbStore, 'SELECT n_StoreID,c_StoreName FROM Stores');

//  InitCombos(cmbSecondType, 'SELECT LookUpID,Name ' +
//    ',(SELECT TOP (1) L1.Name FROM LookUps AS L1 ' +
//    ' WHERE (L1.LookUpID = LookUps.Kind) AND (L1.Kind = 0)) AS LookUpName ' +
//    ' FROM LookUps WHERE(Kind = 1200) ORDER BY Code');

  qryRecipts4Add.Active := True;
  qryReciptItems4Add.Active := True;
  qryDeficits4Add.Active := True;
  qryStuffcoding.Active := True;
end;

procedure TF5040F.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMF.adcBSell, 'recipts', '', IntToStr(ReciptType));
  FreeReservedCodes(DMF.adcBSell, 'reciptitems', '', IntToStr(ReciptType));
  FreeReservedCodes(DMF.adcBSell, 'reciptsdeficits', '', self.Name);
end;

function TF5040F.GetfaktorJsonNew: string;
var
  LRequest: THTTPClient;
  LFormData: TMultipartFormData;
  LResponse: TStringStream;
begin
  inherited;
  LRequest := THTTPClient.Create;
  LFormData := TMultipartFormData.Create();
  LResponse := TStringStream.Create;
  try
    LFormData.AddField('startDate', Trim(mskstart.Text) + ' ' +
      Trim(mskstartT.Text)); //
    LFormData.AddField('endDate', Trim(mskend.Text) + ' ' + Trim(mskendT.Text));
    LRequest.Post('http://api.5040.me/api/v1/financial-system', LFormData,
      LResponse);
    Result := LResponse.DataString;
  finally
    LRequest.Free;
    LFormData.Free;
    LResponse.Free;
  end;
end;

procedure TF5040F.actMoveExecute(Sender: TObject);
var
  ReciptID, ReciptItemID, ReciptDeficitID, StepCorrelate: Integer;
  ReciptDate, Resellerid: string;
begin
  inherited;
  if cmbReciptType.ItemIndex = -1 then
    raise Exception.Create('نوع فرم انتخاب نشده است');

  // if (cmbStore.ItemIndex = -1) then
  // raise Exception.Create('انبار انتخاب نشده است');

//  if (cmbSecondType.ItemIndex = -1) then
//    raise Exception.Create('نحوه فروش انتخاب نشده است');

  // StoreID := Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
  //SecondType := Integer(cmbSecondType.Items.Objects[cmbSecondType.ItemIndex]);

  with qrySerialFaktors do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
  end;
  // ProgressBar1.Min := 0;
  // ProgressBar1.Max := qryRecipts.RecordCount;
  qryLookUps1200.Close;
  qryLookUps1200.Open;
  qrySellsEmporiums.Close;
  qrySellsEmporiums.Open;
  qryStoresAlternative.Close;
  qryStoresAlternative.Open;
  qryStuffcoding.Close;
  qryStuffcoding.Open;


  Resellerid := EmptyStr;
  ReciptDate := EmptyStr;
  StepCorrelate := qryinit.FieldByName('StepCorrelate').AsInteger;

  ReciptID := GetANewID(nil, IntToStr(ReciptType), 'Recipts', 'ReciptID', nil,
    StepCorrelate);
  Add2InProcess(qry_Recipts.Connection, IntToStr(ReciptType), 'Recipts',
    'ReciptID', IntToStr(ReciptID + (qry_Recipts.RecordCount * StepCorrelate) +
    StepCorrelate));

  ReciptItemID := GetANewID(nil, IntToStr(ReciptType), 'ReciptItems',
    'ReciptItemID', nil, StepCorrelate);
  Add2InProcess(qry_Recipts.Connection, IntToStr(ReciptType), 'ReciptItems',
    'ReciptItemID', IntToStr(ReciptItemID + (qry_Recipts.RecordCount *
    StepCorrelate) + StepCorrelate));

  ReciptDeficitID := GetANewID(nil, self.Name, 'ReciptsDeficits',
    'ReciptDeficitID', nil, qryinit.FieldByName('StepCorrelate').AsInteger);
  Add2InProcess(qry_Recipts.Connection, self.Name, 'ReciptsDeficits',
    'ReciptDeficitID', IntToStr(ReciptDeficitID + (qry_Recipts.RecordCount *
    StepCorrelate) + StepCorrelate));

  qry_Recipt_Items.DisableControls;
  qry_Recipt_Items.Filtered := False;
  qry_Recipt_Items.Filtered := True;
  if qryReciptItems4Add.State in dsEditModes then
    qryReciptItems4Add.Cancel;

  with qry_Recipts do
    try
      pb2.Max := RecordCount + 1;
      pb2.Min := 1;
      pb2.Position := 0;
      pb2.Step := 1;
      DisableControls;
      First;

      while not Eof do
      begin
        if not qrySerialFaktors.Locate('TruckNumber',
          qry_ReciptsSerialFaktor.AsInteger, []) then
        begin
          Add2Recipt(ReciptID);
//          Add2ReciptsDeficits(ReciptID, StepCorrelate, ReciptDeficitID);
          Add2ReciptItem(ReciptID, ReciptItemID, StepCorrelate);

          ReciptID := ReciptID + StepCorrelate;
        end
        else
          Warn2('SerialFaktor=شماره فرم=' + qry_ReciptsSerialFaktor.AsString +
            'ثبت شده');

        lblCaptionS.Caption := 'رديف:‏' + IntToStr(RecNo);
        Next;
        pb2.StepIt;
        Application.ProcessMessages;
      end;
      Warn2('انتقال از تاریخ ' + mskstart.Text + ' تا تاریخ ' + mskend.Text +
        ' انجام شد.‏', 5000);
    finally
      EnableControls;
      qry_Recipt_Items.DisableControls;
      FreeReservedCodes(DMF.adcBSell, 'recipts', '', IntToStr(ReciptType));
      FreeReservedCodes(DMF.adcBSell, 'reciptitems', '', IntToStr(ReciptType));
      FreeReservedCodes(DMF.adcBSell, 'reciptsdeficits', '', self.Name);

    end;

end;

procedure TF5040F.actReadListExecute(Sender: TObject);
var
  a5040: TRoot;
  Json: string;
  DataItem: TDataInv;
  // itemF: TFaktorClass;
  // aNamayanheClass: TNamaClass;
begin
  inherited;

  qry_Recipts.DisableControls;
  qry_Recipt_Items.DisableControls;
  With qry_Recipt_Items do
  begin
    Active := True;
    Requery();
  end;
  With qry_Recipts do
  begin
    Active := True;
    Requery();
  end;

  qry_Recipts.BeforeEdit := nil;
  qry_Recipt_Items.BeforeEdit := nil;
  qry_Recipts.BeforeInsert := nil;
  qry_Recipt_Items.BeforeInsert := nil;
  qry_Recipts.AfterScroll := nil;
  Json := GetfaktorJsonNew;
  a5040 := TRoot.Create;
  a5040.AsJson := Json;

  pb1.Min := 0;
  pb1.Position := 0;
  pb1.Step := 1;

  try
    pb1.Max := a5040.DataInv.Count;
    for DataItem in a5040.DataInv do
    begin
      ReadRecipt(DataItem);
      ReadProducts(DataItem.Products, DataItem.Serial.ToString);
      ReadGifts(DataItem.Gifts, DataItem.Serial.ToString);
      pb1.StepIt;
    end;
    a5040.Free;

  finally
    qry_Recipts.EnableControls;
    qry_Recipt_Items.EnableControls;
    grdRecipts.DataSource := nil;
    grdRecipts.DataSource := srcRecipts;
    grdReciptItems.DataSource := nil;
    grdReciptItems.DataSource := srcReciptItems;
    grdRecipts.Refresh;
    grdReciptItems.Refresh;

    grdRecipts.setSizeColDBGrid;
    grdReciptItems.setSizeColDBGrid;

    statRecipts.Panels[0].Text := 'تعداد=' + qry_Recipts.RecordCount.ToString;
    statReciptItems.Panels[0].Text := 'تعداد=' +
      qry_Recipt_Items.RecordCount.ToString;
    Json := EmptyStr;
  end;
  qry_Recipts.AfterScroll := qry_ReciptsAfterScroll;
  qry_Recipts.BeforeEdit := qry_ReciptsBeforeEdit;
  qry_Recipt_Items.BeforeEdit := qry_Recipt_ItemsBeforeEdit;
  qry_Recipts.BeforeInsert := qry_ReciptsBeforeInsert;
  qry_Recipt_Items.BeforeInsert := qry_Recipt_ItemsBeforeInsert;
  qry_ReciptsAfterScroll(qry_Recipts);
  grdRecipts.ColorDBGrid;

end;

procedure TF5040F.Add2Recipt(ReciptID: Integer);
var
  CreatedAtStr: string;
  CreatedAt: TDateTime;
  JalaliDate: string;
  fs: TFormatSettings;
begin
  // IF  qry_ReciptsSerialFaktor.AsInteger=5405438 then
  // Warn('DFFFFFFFFFF');

  with qryRecipts4Add do
  begin
    Insert;
    FieldByName('ReciptID').AsInteger := ReciptID;
    FieldByName('ReciptType').AsInteger := ReciptType;

    if qryStoresAlternative.Locate('AlternativeID',
      qry_ReciptsNameNamayandegi.AsString, []) then
      FieldByName('StoreID').AsInteger := qryStoresAlternative.FieldByName
        ('StoreID').AsInteger;
    // FieldByName('StoreID').AsInteger := StoreID;

    if qryLookUps1200.Locate('FactorType',
      qry_ReciptsNoePardakhtCode.AsString, []) then
      FieldByName('SecondType').AsInteger := qryLookUps1200LookUpID.AsInteger;
//    FieldByName('SecondType').AsInteger := SecondType;

    FieldByName('InsertDate').AsDateTime := now;
    FieldByName('OperatorID').AsInteger := User.id;
    FieldByName('AddDecValue').AsInteger := 0;
    FieldByName('TotalValue').AsInteger := 0;

    FieldByName('PersonID1').AsInteger := 0;
    FieldByName('PersonID2').AsInteger := 0;
    FieldByName('PersonID3').AsInteger := 0;

    FieldByName('ReciptState').AsInteger := 0;
    FieldByName('FirstUser').AsString := User.Name;
    FieldByName('UseOtherID').AsInteger := 0;
    FieldByName('ServerID').AsInteger := Opt.ServerID;
    FieldByName('YearID').AsInteger := AppBank.Year;
    FieldByName('ModifyDate').AsDateTime := now;
    if qry_ReciptsTarikhSarList.AsString.Trim.Length = 10 then
      qryRecipts4AddAidDate.AsString := qry_ReciptsTarikhSarList.AsString;
    qryRecipts4AddReciptValue.AsString := qry_ReciptsMablaghKol.AsString;

    // qryRecipts4AddReciptDate.AsString := var_glb_CurrentDate;

    // تنظیمات فرمت

    CreatedAtStr := qry_ReciptsTarikhFaktor.AsString;

    fs := TFormatSettings.Create;
    fs.DateSeparator := '-';
    fs.ShortDateFormat := 'yyyy-MM-dd';
    fs.TimeSeparator := ':';
    fs.ShortTimeFormat := 'hh:mm';
    fs.LongTimeFormat := 'hh:mm:ss';

    CreatedAt := StrToDateTime(CreatedAtStr, fs);

    // FormatSettings := TFormatSettings.Create;
    // FormatSettings.LongTimeFormat := 'yyyy-mm-dd hh:nn:ss';
    // CreatedAt := StrToDateTime(CreatedAtStr, FormatSettings);
    JalaliDate := miladi2Shamsi(CreatedAt);

    qryRecipts4AddReciptDate.AsString := JalaliDate;

    // qryRecipts4AddReciptDate.AsString := qry_ReciptsTarikhTaeinVaziat.AsString;
    qryRecipts4AddAidDate.AsString := qryRecipts4AddReciptDate.AsString;

    // GetReciptNumber(qryinit, qryRecipts4Add, 0, myStore);
    qryRecipts4AddReciptNumber.AsInteger := qry_ReciptsSerialFaktor.AsInteger;

    qryRecipts4AddReciptNote.AsString := 'نام مشتری: ' +
      qry_ReciptsNameMoshtari.AsString + '(' + qry_ReciptsCodeMoshtari.AsString
      + ')' + ' نام نمایندگی:  ' + qry_ReciptsNameNamayandegi.AsString + '(' +
      qry_ReciptsCodeNamayandegi.AsString + ')' + ' نام پیک:' +
      qry_ReciptsNamePeyk.AsString;

    qryCustomersAdd.Open;
    qryCustomersAlternative.Open;
    if LocateAlternativeCustID(qry_ReciptsCodeMoshtari.AsString) then
      qryRecipts4AddPersonID1.AsInteger :=
        qryCustomersAlternativeCustID.AsInteger;

    if LocateAlternativeCustID(qry_ReciptsCodeNamayandegi.AsString) then
      qryRecipts4AddPersonID3.AsInteger :=
        qryCustomersAlternativeCustID.AsInteger
    else
      qryRecipts4AddPersonID3.AsInteger := 0; // 111000000;

    qryRecipts4AddMachineName.AsString := qry_ReciptsCodePeygiri.AsString;

    qryRecipts4AddMachineNo.AsString := qry_ReciptsVaziarErsal.AsString;

    qryRecipts4AddMachineInfo.AsString := qry_ReciptsNoePardakht.AsString;

    // if qryLookUps1200.Locate('Amount3', qry_ReciptsNoePardakhtCode.AsString, [])
    // then
    // qryRecipts4AddSecondType.AsInteger := qryLookUps1200LookUpID.AsInteger;

    qryRecipts4AddAidNumber.AsInteger :=
      qry_ReciptsVaziatPardakht.AsBoolean.ToInteger;
    qryRecipts4AddTruckNumber.AsString := qry_ReciptsSerialFaktor.AsString;

    if qryCustomersAdd.Locate('CustID', qry_ReciptsPersonalCode.AsString, [])
    then
      qryRecipts4AddPersonID2.AsInteger := qry_ReciptsPersonalCode.AsInteger
    else
      qryRecipts4AddPersonID2.AsInteger := 399999;

    if qrySellsEmporiums.Locate('SellsEmporiumName',
      qry_ReciptsVaziarErsal.AsString, []) then
    begin
      qryRecipts4AddSellsEmporium.AsInteger :=
        qrySellsEmporiumsSellsEmporium.AsInteger;
      if qrySellsEmporiumsSellsEmporium.AsInteger = 3 then
        qryRecipts4AddReciptState.AsInteger := 3;
    end;

    Post;
  end;
end;

function TF5040F.LocateAlternativeCustID(code: string): Boolean;
begin
  Result := qryCustomersAlternative.Locate('AlternativeID', code, []);
  // if not Result then
  // Result := qryCustomersAlternative.Locate('AlternativeCustID2', code, [])
end;

procedure TF5040F.Add2ReciptItemFild(ReciptID: Integer;
  var ReciptItemID: Integer; StepCorrelate: Integer);
begin
  with qry_Recipt_Items do
  begin
    qryReciptItems4Add.Insert;

    qryReciptItems4AddStuffAlloy.AsString := '0';

    if qryStuffcoding.Locate('AlternativeStuffCode',
      qry_Recipt_ItemsCodeMahsoul.AsString, []) then
    begin
      qryReciptItems4AddStuffCode.AsLargeInt :=
        qryStuffcodingStuffCode.AsLargeInt;
    end
    else
    begin
      qryReciptItems4AddStuffCode.AsLargeInt := 0;
    end;

    qryReciptItems4AddItemNote.AsString := qry_Recipt_ItemsCodeMahsoul.AsString
      + '=' + qry_Recipt_ItemsOnvanMahsoul.AsString;

    qryReciptItems4AddStuffAlloy.AsString :=
      qry_Recipt_ItemsCodeMahsoul.AsString;

    qryReciptItems4Add.FieldByName('ReciptItemID').AsInteger := ReciptItemID;
    // GetANewID(nil, IntToStr(ReciptType), 'ReciptItems', 'ReciptItemID',
    // nil, StepCorrelate);

    qryReciptItems4Add.FieldByName('ReciptID').AsInteger := ReciptID;
    qryReciptItems4Add.FieldByName('FirstUser').AsString := User.Name;
    qryReciptItems4Add.FieldByName('PersonID1').AsInteger := 0;
    qryReciptItems4Add.FieldByName('InsertTime').AsString := TimeToStr(now);
    qryReciptItems4Add.FieldByName('ServerID').AsInteger := Opt.ServerID;
    qryReciptItems4Add.FieldByName('YearID').AsInteger := AppBank.Year;
    qryReciptItems4AddOutputEntity.AsString := qry_Recipt_ItemsTedad.AsString;

    qryReciptItems4AddUnitSellPrice.AsString :=
      qry_Recipt_ItemsGheymatVahed.AsString;

    qryReciptItems4AddTotalOutputPrice.AsLargeInt :=
      qry_Recipt_ItemsGheymatVahed.AsLargeInt *
      qry_Recipt_ItemsTedad.AsLargeInt;

    qryReciptItems4AddWaterCo.AsString :=
      qry_Recipt_ItemsDarSadTakhfif.AsString;

    qryReciptItems4AddDeficitValue.AsLargeInt :=
      Trunc(qryReciptItems4AddTotalOutputPrice.AsLargeInt *
      qryReciptItems4AddWaterCo.AsFloat / 100);

    qryReciptItems4AddTotallSellPrice.AsLargeInt :=
      qry_Recipt_Itemsfinal_price.AsInteger;
    // qryReciptItems4AddTotalOutputPrice.AsLargeInt -      qryReciptItems4AddDeficitValue.AsLargeInt;

    qryReciptItems4Add.Post;
    ReciptItemID := ReciptItemID + StepCorrelate;
  end;
end;

procedure TF5040F.Add2ReciptItem(ReciptID: Integer; var ReciptItemID: Integer;
  StepCorrelate: Integer);
begin
  with qry_Recipt_Items do
  begin
    First;
    while not Eof do
    begin
      Add2ReciptItemFild(ReciptID, ReciptItemID, StepCorrelate);
      Next;
    end;
  end;
end;

// function TF5040F.Formula1(ReciptID: Integer): Boolean;
// var
// Stuff_Code: Largeint;
// CurrentEntity, CurrentWeight: Real48;
// begin
// with qryTransFormItems do
// begin
// SQL.Text :=
// 'SELECT transformitems.id, transformitems.stuffcode, transformitems.entity,';
// SQL.Add('transformitems.weight, transforms.stuffmodel,');
// SQL.Add('transforms.entity as allentity, transforms.weight as allweight');
// SQL.Add(',TransFormItems.StanRate');
// SQL.Add('from transformitems inner join');
// SQL.Add('transforms on transformitems.transformid = transforms.transformid');
// SQL.Add('where (transforms.stuffcode = :stuffcode )');
// if qryinit.FieldByName('ProcedureActive').AsInteger > 0 then
// SQL.Add('and(transforms.stuffmodel = :stuffmodel )');
// end;
//
// With qry_Recipt_Items do
// begin
// if FieldByName('CodeMahsoul').AsLargeInt <> 0 then
// begin
// qryTransFormItems.Active := False;
// // if qryinit.FieldByName('ProcedureActive').AsInteger > 0 then
// // Stuff_Code := FieldByName('ProductCode').AsLargeInt
// // else
// Stuff_Code := FieldByName('CodeMahsoul').AsLargeInt;
//
// qryTransFormItems.Parameters.ParamByName('StuffCode').Value := Stuff_Code;
//
// // if qryinit.FieldByName('ProcedureActive').AsInteger > 0 then
// // qryTransFormItems.Parameters.ParamByName('StuffModel').Value :=
// // FieldByName('ProductModel').AsInteger;
// qryTransFormItems.Active := True;
// Result := not qryTransFormItems.IsEmpty;
// while not qryTransFormItems.Eof do
// begin
// qryReciptItems4Add.Insert;
// qryReciptItems4Add.FieldByName('ReciptItemID').Value :=
// GetANewID(nil, ReciptType.ToString, 'ReciptItems', 'ReciptItemID',
// qryReciptItems4Add, qryinit.FieldByName('StepCorrelate').AsInteger);
// qryReciptItems4Add.FieldByName('ReciptID').Value := ReciptID;
// qryReciptItems4Add.FieldByName('ServerID').AsInteger := Opt.ServerID;
// qryReciptItems4Add.FieldByName('YearID').AsInteger := AppBank.Year;
//
// qryReciptItems4Add.FieldByName('StuffCode').Value :=
// qryTransFormItems.FieldByName('StuffCode').AsLargeInt;
//
// if qryTransFormItems.FieldByName('allEntity').AsFloat <> 0 then
// begin
// qryReciptItems4AddOutputEntity.Value :=
// (qry_Recipt_ItemsTedad.AsFloat * qryTransFormItems.FieldByName
// ('Entity').AsFloat) / qryTransFormItems.FieldByName
// ('allEntity').AsFloat;
// qryReciptItems4AddOutputEntity.Value :=
// RoundTo(qryReciptItems4AddOutputEntity.AsFloat, opt.RoundEntity);
// end;
// qryReciptItems4AddUnitSellPrice.AsCurrency :=
// qryTransFormItems.FieldByName('StanRate').AsCurrency;
// qryReciptItems4AddTotalOutputPrice.AsCurrency :=
// qryReciptItems4AddUnitSellPrice.AsCurrency *
// qryReciptItems4AddOutputEntity.AsInteger;
//
// qryReciptItems4AddTotallSellPrice.AsCurrency :=
// qryReciptItems4AddTotalOutputPrice.AsCurrency;
//
// qryReciptItems4Add.Post;
// qryTransFormItems.Next;
// end;
// end;
//
// end;
// end;

procedure TF5040F.Add2ReciptsDeficits(ReciptID, StepCorrelate: Integer;
  var ReciptDeficitID: Integer);
  procedure AddDeficits(DeficitID, Add, Dec: Integer; DeficitNote: string);
  begin
    if (Add <> 0) or (Dec <> 0) then
      with qryDeficits4Add do
      begin
        Insert;
        qryDeficits4AddReciptID.AsInteger := ReciptID;
        qryDeficits4AddReciptDeficitID.AsInteger := ReciptDeficitID;
        // GetANewID(qryDeficits4Add, self.Name, 'ReciptsDeficits',
        // 'ReciptDeficitID', qryRecipts4Add,
        // qryinit.FieldByName('StepCorrelate').AsInteger);
        qryDeficits4AddServerID.AsInteger := Opt.ServerID;
        qryDeficits4AddYearID.AsInteger := AppBank.Year;

        ReciptDeficitID := ReciptDeficitID + StepCorrelate;
        qryDeficits4AddDeficitID.AsInteger := DeficitID;
        qryDeficits4AddDeficitAdd.AsInteger := Add;
        qryDeficits4AddDeficitDec.AsInteger := Dec;
        qryDeficits4AddDeficitNote.AsString := DeficitNote;
        Post;
      end;
  end;

begin
  AddDeficits(20, 0, qry_ReciptsTakhfif.AsInteger, 'تخفیف');
  AddDeficits(30, qry_ReciptsMaliat.AsInteger, 0, 'مالیات');
  AddDeficits(31, qry_ReciptsHazineErsal.AsInteger, 0, 'هزینه ارسال');
  AddDeficits(32, qry_ReciptsBimeVaAvarez.AsInteger, 0, 'بیمه عوارض');
end;

end.
