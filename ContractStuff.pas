{ -----------------------------------------------------------------------------
  Unit Name: ContractStuff
  Author:    Mahmood
  Purpose:
  History:   86/05/24
  ----------------------------------------------------------------------------- }

unit ContractStuff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, DBCtrls, Mask, ComCtrls, Math,
  StrUtils,
  DateUtils, ppCtrls, ppStrtch, ppRegion, ppBands, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, Menus,
  ppParameter, DM, ppDesignLayer, System.ImageList, System.Actions;

type
  TContractStuffF = class(Ttemplate2MDIF)
    qryContract: TADOQuery;
    srcContract: TDataSource;
    qryContractReciptID: TIntegerField;
    qryContractPersonID1: TIntegerField;
    qryContractCustName: TStringField;
    qryContractReciptNumber: TIntegerField;
    qryContractReciptDate: TStringField;
    qryContractStoreID: TSmallintField;
    qryContractc_StoreName: TStringField;
    qryContractReciptStartDate: TStringField;
    qryContractReciptEndDate: TStringField;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn9: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn1: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actSearch2: TAction;
    actExcel2: TAction;
    actSort2: TAction;
    grpItemNote: TGroupBox;
    DBMemo2: TDBMemo;
    qryCustomers1: TADOQuery;
    qryStuff_Unit_TecInf: TADOQuery;
    qryStores: TADOQuery;
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
    qryRecipts_UseUnitName: TStringField;
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
    qryItems: TADOQuery;
    qryItemsReciptItemID: TIntegerField;
    qryItemsReciptID: TIntegerField;
    qryItemsStuffSize: TStringField;
    qryItemsStuffAlloy: TStringField;
    qryItemsInputEntity: TFloatField;
    qryItemsOutputEntity: TFloatField;
    qryItemsInputWeight: TFloatField;
    qryItemsOutputWeight: TFloatField;
    qryItemsRequestedEntity: TFloatField;
    qryItemsRequestedWeight: TFloatField;
    qryItemsStuffGrade: TWordField;
    qryItemsTotalInputPrice: TBCDField;
    qryItemsTotalOutputPrice: TBCDField;
    qryItemsTotallSellPrice: TBCDField;
    qryItemsUnitSellPrice: TFMTBCDField;
    qryItemsItemNote: TStringField;
    qryItems_StuffName: TStringField;
    qryItems_UnitName: TStringField;
    qryItems_StuffTecInfo: TStringField;
    qryItemsacc_DetailCode: TStringField;
    qryItemsacc_CTopicCode: TStringField;
    qryItemspreReciptItemID: TIntegerField;
    qryItemsStuffDiameter: TFloatField;
    qryItemsControlCode: TLargeintField;
    qryItemsacc_CTopicCode2: TStringField;
    qryItemsAidDate: TStringField;
    qryItemsDiscount: TIntegerField;
    qryItemsPersonID1: TIntegerField;
    qryItems_PersonName1: TStringField;
    qryItemsItemDate: TStringField;
    qryItemsFirstUser: TStringField;
    qryItemsLastUser: TStringField;
    qryItemsWaterCo: TFloatField;
    qryItemsDeficitValue: TBCDField;
    srcItems: TDataSource;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    newPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    okPanel: TPanel;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    PnlItems: TPanel;
    newPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn13: TBitBtn;
    okPanel2: TPanel;
    BitBtn15: TBitBtn;
    BitBtn18: TBitBtn;
    qryinit: TADOQuery;
    actPrint: TAction;
    DBGrid2: TDBGrid;
    qryContractUnitSellPrice: TFMTBCDField;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    qryRecipts_Items: TADOQuery;
    srcRecipts_Items: TDataSource;
    qryRecipts_ItemsReciptNumber: TIntegerField;
    qryRecipts_ItemsReciptDate: TStringField;
    qryRecipts_Itemsc_StuffName: TStringField;
    qryRecipts_ItemsEntity: TFloatField;
    qryRecipts_ItemsWeight: TFloatField;
    qryRecipts_ItemsStoreID: TSmallintField;
    qryRecipts_Itemsc_StoreName: TStringField;
    qryRecipts_ItemsItemNote: TStringField;
    qryContractDeficitValue: TBCDField;
    qryRecipts_ItemsPrice: TBCDField;
    qryRecipts_ItemsDeficitValue: TBCDField;
    qryReciptsTruckNumber: TStringField;
    qryItemsMachineWeight: TFloatField;
    qryItemsTotalWeight: TFloatField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    BitBtn16: TBitBtn;
    PopMuPrint: TPopupMenu;
    PerformFileName: TMenuItem;
    ReportFileName: TMenuItem;
    ppDetailBand4: TppDetailBand;
    ppPageStyle1: TppPageStyle;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppLabel3: TppLabel;
    ppShape6: TppShape;
    ppShape3: TppShape;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLblCaption: TppLabel;
    ppLabel57: TppLabel;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppDBText28: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel5: TppLabel;
    ppLine4: TppLine;
    ppLine12: TppLine;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppDBTextIOEntity: TppDBText;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppDBText2: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText3: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    BitBtn17: TBitBtn;
    actCtrl: TAction;
    DBNavigator3: TDBNavigator;
    qryCustomers2: TADOQuery;
    qryUseUnits: TADOQuery;
    Panel4: TPanel;
    LblReciptDate: TLabel;
    LblRecNo: TLabel;
    SBtnReciptNumber: TSpeedButton;
    LblStore: TLabel;
    SBtnStoreID: TSpeedButton;
    Label20: TLabel;
    sbtnStuffCode: TSpeedButton;
    LblEntity: TLabel;
    LblWeight: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdtReciptDate: TDBEdit;
    EdtRNum: TDBEdit;
    EdtStoreID: TDBEdit;
    EdtStuffCode: TDBEdit;
    EdtStuffName: TDBEdit;
    EdtIOEntity: TDBEdit;
    EdtIOWeight: TDBEdit;
    EdtUnitSellPrice: TDBEdit;
    EdtTotalIOPrice: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edtDeficitValue: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    Panel5: TPanel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    LblSumDeficitValue: TLabel;
    qryReciptsUseOtherID: TWideStringField;
    qryReciptsProjectID: TIntegerField;
    qryReciptsBudgetID: TIntegerField;
    qryReciptsDebtControlActive: TWordField;
    qryReciptsStoreID2: TSmallintField;
    qryReciptsMachineNo: TStringField;
    qryReciptsMachineName: TStringField;
    qryReciptsArzTypeID: TIntegerField;
    qryReciptsRialsEqual: TBCDField;
    qryReciptsReciptsRow: TIntegerField;
    qryReciptsSellsMethod: TIntegerField;
    qryReciptsSellsEmporium: TIntegerField;
    qryReciptsMasirID: TIntegerField;
    qryReciptsDeliveryID: TIntegerField;
    qryReciptsPersonID2Bed: TWordField;
    qryReciptsRelatedID: TIntegerField;
    qryItemsServerID: TIntegerField;
    qryItemsYearID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsInsertDate: TDateTimeField;
    qryItemsStuffCode: TLargeintField;
    qryContractStuffCode: TLargeintField;
    qryRecipts_ItemsStuffCode: TLargeintField;
    qryItemsProductModel: TIntegerField;
    qryReciptsAidNumber: TStringField;
    qryItemsAidNumber: TStringField;
    qryContractAidNumber: TStringField;
    qryItemsProductCode: TLargeintField;
    qryItemsTaxCo: TFloatField;
    qryItemsTaxValue: TBCDField;
    lbl1: TLabel;
    edtTaxCo: TDBEdit;
    lbl2: TLabel;
    edtTaxValue: TDBEdit;
    edtTotallSellPrice: TDBEdit;
    lbl3: TLabel;
    qryItemsacc_CTopicCode3: TStringField;
    qryItemsacc_TopicCode: TLargeintField;
    Label7: TLabel;
    edtUnitSellPrice2: TDBEdit;
    qryItemsUnitSellPrice2: TBCDField;
    qryItemsDeficitValue2: TBCDField;
    qryItemsDeficitValue3: TBCDField;
    qryItemsDeficitValue4: TBCDField;
    edtDeficitValue2: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    edtDeficitValue3: TDBEdit;
    Label10: TLabel;
    edtTotalDeficient: TDBEdit;
    qryItemsTotalDeficient: TBCDField;
    qryItemsID: TFMTBCDField;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure qryReciptsAfterDelete(DataSet: TDataSet);
    procedure qryItemsAfterDelete(DataSet: TDataSet);
    procedure qryItemsAfterEdit(DataSet: TDataSet);
    procedure qryReciptsAfterInsert(DataSet: TDataSet);
    procedure qryReciptsAfterEdit(DataSet: TDataSet);
    procedure qryReciptsAfterPost(DataSet: TDataSet);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure qryReciptsBeforeCancel(DataSet: TDataSet);
    procedure qryReciptsBeforeDelete(DataSet: TDataSet);
    procedure qryReciptsBeforeEdit(DataSet: TDataSet);
    procedure qryReciptsBeforePost(DataSet: TDataSet);
    procedure qryContractAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcReciptsStateChange(Sender: TObject);
    procedure srcItemsStateChange(Sender: TObject);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure SBtnStoreIDClick(Sender: TObject);
    procedure sbtnStuffCodeClick(Sender: TObject);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure qryItemsBeforeDelete(DataSet: TDataSet);
    procedure qryItemsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsBeforeInsert(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure qryItemsUnitSellPriceChange(Sender: TField);
    procedure FormResize(Sender: TObject);
    procedure EdtRNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtStoreIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtStuffCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearch2Execute(Sender: TObject);
    procedure actExcel2Execute(Sender: TObject);
    procedure actSort2Execute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryItemsTotalWeightChange(Sender: TField);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure PerformFileNameClick(Sender: TObject);
    procedure actCtrlExecute(Sender: TObject);
    procedure qryReciptsReciptDateChange(Sender: TField);
    procedure qryItemsAfterScroll(DataSet: TDataSet);
    procedure qryItemsDeficitValueChange(Sender: TField);
    procedure qryContractBeforeScroll(DataSet: TDataSet);
    procedure qryItemsTaxCoChange(Sender: TField);
    procedure qryItemsTaxValueChange(Sender: TField);
    procedure qryItemsTotalInputPriceChange(Sender: TField);
    procedure qryItemsTotalOutputPriceChange(Sender: TField);
    procedure qryItemsStuffCodeChange(Sender: TField);
    procedure qryReciptsStoreIDChange(Sender: TField);
    procedure qryItemsUnitSellPrice2Change(Sender: TField);
    procedure qryItemsDeficitValue2Change(Sender: TField);
    procedure qryItemsDeficitValue3Change(Sender: TField);
    procedure qryItemsDeficitValue4Change(Sender: TField);
  private
    { Private declarations }
    myStore: TStore;
    formType: Integer;
    PrintCount: Byte;
    FormOutput, PriceOn_StoreType: Boolean;
    // CurrentEntity,CurrentWeight:Real48 ;
    FormInOut: String;
    function ControlEntity: Boolean;
    // function PersonCredit: Boolean;
    function LimitRecord: Boolean;
    procedure NonprogrammedHalt;
    procedure SumDeficitValue;
    procedure EndOfPrice(Field_Name: String);
  public
    { Public declarations }
  end;

var
  ContractStuffF: TContractStuffF;

implementation

uses search2, sort2, GlobalPro, mmessage, searchCode_ADO, shamsiDate,
  RptReports, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TContractStuffF.actSearch_Execute(Sender: TObject);

var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 10] of String;
begin
  inherited;
  Txt := 'SELECT Recipts.ReciptID,Customers.CustName, Recipts.PersonID1,  Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.StoreID, Stores.c_StoreName, '
    + ' Recipts.ReciptStartDate, Recipts.ReciptEndDate, ReciptItems.StuffCode, ReciptItems.UnitSellPrice, '
    + ' ReciptItems.DeficitValue FROM         Recipts INNER JOIN    Stores ON Recipts.StoreID = Stores.n_StoreID INNER JOIN '
    + ' Customers ON Recipts.PersonID1 = Customers.CustID INNER JOIN     ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID '
    + ' WHERE (Recipts.ReciptType = ' + IntToStr(20) + ') ' +
    ' AND (Recipts.YearID = ' + IntToStr(APPBank.Year) + ') ';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' ليست قراردادها  ', Txt,
    ['', 'مشخصات طرف قرارداد', 'كد ', 'شماره ', 'تاريخ', 'كد انبار', 'انبار',
    'شروع', 'پايان', 'كالا', 'في', 'توقف اضافي قرارداد'], Results,
    [0, 100, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50], alLeft);
  if b then
    qryContract.Locate('ReciptID', Results[0], []);
end;

procedure TContractStuffF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryContract);
end;

procedure TContractStuffF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TContractStuffF.qryReciptsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('فرم حذف شد.', 1);
end;

procedure TContractStuffF.qryItemsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كالا حذف شد.', 1);
end;

procedure TContractStuffF.qryItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TContractStuffF.qryReciptsAfterInsert(DataSet: TDataSet);

var
  Txt: string;
begin
  inherited;
  GetANewID(DataSet, Self.name, 'Recipts', 'ReciptID', nil,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  Txt := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
    IntToStr(formType) + ')';
  DataSet.FieldByName('ReciptNumber').AsInteger :=
    GetANewCode(Self.name, Txt, 'ReciptNumber');
  DataSet.FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('InsertDate').AsDateTime := Now;
  DataSet.FieldByName('OperatorID').AsInteger := user.id;
  DataSet.FieldByName('ReciptType').AsInteger := formType;

  ReciptStateAutoStateChange(qryinit, DataSet);

  DataSet.FieldByName('AddDecValue').AsInteger := 0;
  DataSet.FieldByName('TotalValue').AsInteger := 0;
  DataSet.FieldByName('SecondType').AsCurrency := 0;
  DataSet.FieldByName('UseOtherID').AsCurrency := 0;
  DataSet.FieldByName('ParentReciptID').AsCurrency :=
    qryContract.FieldByName('ReciptID').AsInteger;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryContract.FieldByName('PersonID1').AsInteger;
  DataSet.FieldByName('FirstUser').AsString := user.name;
  EdtRNum.SetFocus;
end;

procedure TContractStuffF.qryReciptsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TContractStuffF.qryReciptsAfterPost(DataSet: TDataSet);

var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryItemsReciptItemID.AsInteger;
  if qryItems.State in dseditModes then
    qryItems.Post;
  try
    qryItems.UpdateBatch;
    rid := qryReciptsReciptID.AsInteger;
    qryRecipts.Requery;
    qryRecipts.Locate('ReciptID', rid, []);
    qryItems.Requery;
    qryItems.Locate('ReciptItemID', rid2, []);
    BigMessage('ثبت شد.', 1);
  except
    on E: Exception do
    begin
      Warn(E.Message);
      DataToExcel(qryItems);
      // ReItemID(qryItems, qryRecipts, 'ReciptItems', 'ReciptItemID', Self.name,
      // qryinit.FieldByName('StepCorrelate').AsInteger);
    end;
  end; // try
end;

procedure TContractStuffF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  PriceOn_StoreType := PriceOnStoreType(qryRecipts.FieldByName('StoreID')
    .AsInteger, DBGrid1, qryContract);
  EdtUnitSellPrice.Visible := PriceOn_StoreType;
  EdtTotalIOPrice.Visible := PriceOn_StoreType;
  edtUnitSellPrice2.Visible := PriceOn_StoreType;
  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := DataSet.FieldByName('ReciptID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID')
      .AsInteger;
    Active := True;
    // Last;
  end; // with
  // if qryRecipts.State= dsinsert then   qryItems.Insert;
end;

procedure TContractStuffF.qryReciptsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qryItems.Active then
  BEGIN
    if get_response('تغييرات لغو شوند؟') <> mrYes then
      Abort;
    qryItems.Cancel;
    qryItems.Requery();
  END;
end;

procedure TContractStuffF.qryReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not OkDelete(qryRecipts, False, 0) then
    Abort;
  if get_response('آيا براي حذف اين فرم و كليهء كالاهاي آن مطمئن هستيد؟') <> mrYes
  then
    Abort;
end;

procedure TContractStuffF.qryReciptsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryinit.FieldByName('UserSecurityCheckActive').Value = 1 then
    if ((qryReciptsOperatorID.AsInteger = user.id) or (user.PowerUser)) then
    begin
      newPanel2.Visible := True;
    end // if
    else
    begin
      Warn('ويرايش اين فرم در سطح دسترسي کاربر ثبت کننده آن مي‌باشد.');
      Abort;
    end; // else
end;

procedure TContractStuffF.qryReciptsBeforePost(DataSet: TDataSet);

var
  w: Real;
begin
  inherited;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryContract.FieldByName('PersonID1').AsInteger;
  if qryItems.State in dseditModes then
    qryItems.Post;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  TrimStringFields(qryRecipts);
  if LimitRecord then
    Abort;
  if not CheckRequiredFields(qryRecipts) then
    Abort;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
  if not ValidReciptNumber(qryRecipts, qryinit, myStore) then
    Abort;
  qryRecipts.FieldByName('ReciptValue').AsCurrency :=
    CalcSumFileds(qryItems, EdtTotalIOPrice.DataField);
  // if qryinit.FieldByName('ControlEntityActive').AsInteger=0 then Exit;
  // With qryItems do
  // begin
  // DisableControls;
  // First;
  // AfterPost:=nil;
  // while not Eof do
  // begin
  // Edit;       Post;       Next;
  // End;
  // EnableControls;
  // end;//with
  if not FormOutput then
  begin
    w := CalcSumFileds(qryItems, EdtIOWeight.DataField);
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT SUM(ReciptItems.InputWeight) + SUM(ReciptItems.OutputWeight) AS Weight';
      SQL.Add('FROM Recipts INNER JOIN');
      SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID');
      SQL.Add('AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID');
      SQL.Add('WHERE (Recipts.ReciptType = :ReciptType )');
      SQL.Add('AND (Recipts.ParentReciptID = :ParentReciptID )');
      SQL.Add('AND (Recipts.YearID = :YearID )');
      SQL.Add('AND (Recipts.ReciptID <> :ReciptID )');

      Parameters.ParamByName('ReciptType').Value :=
        qryRecipts.Parameters.ParamByName('ReciptType').Value;
      Parameters.ParamByName('ParentReciptID').Value :=
        qryRecipts.Parameters.ParamByName('ParentReciptID').Value;
      Parameters.ParamByName('YearID').Value :=
        qryRecipts.Parameters.ParamByName('YearID').Value;
      Parameters.ParamByName('ReciptID').Value := qryReciptsReciptID.AsInteger;
      Active := True;
      w := w + Fields[0].AsFloat;
      Active := False;
    end;
    if ((qryContractAidNumber.AsString <> '') and
      (w > qryContractAidNumber.AsFloat)) then
    begin
      Warn('وزن ' + FloatToStr(w - qryContractAidNumber.AsFloat) +
        ' واحد بيشتر از حد مجاز است.');
      // Abort;
    end;
  end;
end;

function TContractStuffF.ControlEntity: Boolean;
var
  CurrentEntity: Extended;
  CurrentWeight: Extended;
  // CurrentPrice:Currency;
  function ControlEntity1: Boolean;
  begin
    Result := False;
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity) AS Entity';
      SQL.Add(',SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight) AS Weight');
      SQL.Add('FROM ReciptTypes INNER JOIN');
      SQL.Add('Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType RIGHT OUTER JOIN');
      SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID');
      SQL.Add('WHERE (dbo.Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
        ('ReciptDate').AsString + ''') AND (dbo.Recipts.StoreID = ' +
        qryRecipts.FieldByName('StoreID').AsString +
        ') AND (dbo.ReciptItems.StuffCode = ' + qryItems.FieldByName
        ('StuffCode').AsString + ') AND  (Recipts.ReciptType IN (23, 24)) ');
      SQL.Add('AND  (dbo.Recipts.ReciptState < 3) AND (dbo.ReciptItems.ID not in ( '
        + GetReciptItemIDs(CurrentEntity, CurrentWeight, qryItems, qryinit,
        FormInOut, MyEntityDisplayType, 'ID', False) + '))');
      SQL.Add(' AND (Recipts.PersonID1 = ' + qryRecipts.FieldByName('PersonID1')
        .AsString + ') ');
      Active := True;
      if CurrentEntity <> 0 then
        Result := (FieldByName('Entity').AsFloat - CurrentEntity > -0.0001);
      // if CurrentWeight<>0 then Result:=(FieldByName('Weight').AsFloat - CurrentWeight> -0.0001);
    end; // with
  end;

begin
  Result := True;
  if qryinit.FieldByName('ControlEntityActive').AsInteger = 0 then
    Exit;
  CurrentEntity := IfThen(qryItems.FieldByName('OutputEntity').IsNull, 0,
    qryItems.FieldByName('OutputEntity').AsFloat);
  CurrentWeight := IfThen(qryItems.FieldByName('OutputWeight').IsNull, 0,
    qryItems.FieldByName('OutputWeight').AsFloat);
  // CurrentPrice:=IfThen(qryItems.FieldByName('TotalOutputPrice').IsNull,0,qryItems.FieldByName('TotalOutputPrice').AsVariant);
  CurrentEntity := roundto(CurrentEntity, opt.RoundEntity);
  CurrentWeight := roundto(CurrentWeight, opt.RoundEntity);
  case opt.EntityDisplayType of
    0:
      CurrentWeight := 0;
    1:
      CurrentEntity := 0;
  end; // case
  Result := ControlEntity1;
  if not Result then
  begin
    Warn('مقدار موجودي كافي نيست .‏', mtInformation);
    if qryinit.FieldByName('ControlEntityKind').AsInteger = 0 then
      Result := True;
  end;
end;

procedure TContractStuffF.qryContractAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      DataSet.FieldByName('StuffCode').AsLargeInt;
  end; // with
  with qryRecipts do
  begin
    Active := False;
    Parameters.ParamByName('ParentReciptID').Value :=
      DataSet.FieldByName('ReciptID').AsInteger;
    Active := True;
  end; // with
  with qryRecipts_Items do
  begin
    Active := False;
    Parameters.ParamByName('ParentReciptID').Value :=
      DataSet.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('StuffCode').Value :=
      DataSet.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end; // with

end;

procedure TContractStuffF.FormCreate(Sender: TObject);

var
  i: Integer;
begin
  inherited;
  myStore := DM.myStore;
  SetLookUpCash(qryRecipts);
  SetLookUpCash(qryItems);
  formType := var_glb_gParam;
  lblCaption.Hint := IntToStr(formType);
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
  end; // with
  With qryinit do
  begin
    // < Form.Caption>
    Caption := FieldByName('ReciptCaption').AsString;
    lblCaption.Caption := Caption;
    // LblRecNo.Caption:='شماره '+Caption;
    LblReciptDate.Caption := 'تاريخ ' + Caption;
    // ________________________  عنوان بجاي كلمه مقدار و وز ن__________________________

    LblEntity.Caption := opt.EntityCaption;
    LblWeight.Caption := opt.WeightCaption;
    qryItems.FieldByName('InputEntity').DisplayLabel := opt.EntityCaption;
    qryItems.FieldByName('OutputEntity').DisplayLabel :=
      opt.EntityCaption + '#';
    qryItems.FieldByName('InputWeight').DisplayLabel := opt.WeightCaption;
    qryItems.FieldByName('OutputWeight').DisplayLabel :=
      opt.WeightCaption + '#';

    actPrint.Hint := FieldByName('PerformFileName').AsString + #13#10 +
      FieldByName('ReportFileName').AsString + #13#10;

    EdtRNum.ReadOnly := FieldByName('EditReciptNumberActive').AsInteger <> 1;

    grpItemNote.Visible := (FieldByName('NoteShow').AsInteger = 2) or
      (FieldByName('NoteShow').AsInteger = 3);

  end; // with
  EdtIOEntity.Visible := opt.EntityDisplay;
  /// / 9
  LblEntity.Visible := opt.EntityDisplay;
  // EdtIOWeight.Visible:=opt.WeightDisplay;//(s='2')OR(s='3')OR(s='1');
  // LblWeight.Visible:=opt.WeightDisplay;
  Entity_Weight(DBGrid1);
  Entity_Weight(DBGrid2);
  Entity_Weight(DBGrid3);
  Entity_Weight(DBGrid4);

  FormOutput := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  FormInOut := 'Input';
  if FormOutput then
  begin
    FormInOut := 'Output';
    EdtIOEntity.DataField := 'OutputEntity';
    EdtIOWeight.DataField := 'OutputWeight';
    EdtTotalIOPrice.DataField := 'TotalOutputPrice';
    for i := 0 to DBGrid3.Columns.Count - 1 do
    begin
      if Pos('input', LowerCase(DBGrid3.Columns[i].FieldName)) <> 0 then
        DBGrid3.Columns[i].FieldName :=
          StringReplace(DBGrid3.Columns[i].FieldName, 'Input', 'Output', []);
    end; // for
  end;

  with qryRecipts_Items do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
  end;
  With qryItems do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
  end;
  With qryRecipts do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
  end;
  with qryContract do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
  end;
  actCtrl.Visible := FormOutput;
  PrintCount := 1;
  If qryinit.FieldByName('PrintCount').AsInteger > 1 then
    PrintCount := qryinit.FieldByName('PrintCount').AsInteger;

end;

procedure TContractStuffF.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryRecipts.State in dseditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  newPanel2.Visible := okPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.name);
end;

procedure TContractStuffF.srcItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryItems.State in dseditModes;
  newPanel2.Visible := not okPanel2.Visible and
    (qryRecipts.State in dseditModes);
  BtnReject.Cancel := newPanel2.Visible;
end;

procedure TContractStuffF.SBtnReciptNumberClick(Sender: TObject);

var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT Recipts.ReciptID,Recipts.ReciptNumber,Recipts.ReciptDate,Stores.c_StoreName '
    + 'FROM Recipts INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID  ' +
    'WHERE (Recipts.ReciptType = ' + IntToStr(formType) + ') ';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' فرمها  ', Txt,
    ['', 'شماره فرم', 'تاريخ', 'نام ' + qryinit.FieldByName('StoreCaption')
    .AsString + ''], Results, [50, 10, 50, 150], alLeft);
  if b then
    qryRecipts.Locate('ReciptID', Results[0], []);
end;

procedure TContractStuffF.SBtnStoreIDClick(Sender: TObject);

var
  c, Txt, s: String;
begin
  inherited;
  Txt := 'SELECT n_StoreID, c_StoreName FROM Stores ';
  s := searchCode_ADOF.SearchCode(DMF.adcBSell, c,
    qryinit.FieldByName('StoreCaption').AsString + 'ها', Txt,
    ['کد', 'نام ' + qryinit.FieldByName('StoreCaption').AsString], alLeft);
  if s <> '' then
  begin
    if not(qryRecipts.State in dseditModes) then
      qryRecipts.edit;
    qryRecipts['StoreID'] := c;
    // EdtPersonID1.SetFocus;
  end; // if
end;

procedure TContractStuffF.sbtnStuffCodeClick(Sender: TObject);

var
  Txt, s_StoreID: String;
  b: Boolean;
  Results: array [0 .. 13] of String;
  i: Byte;
  Fields_SD_1_9: String;
  colTopics_1_3: array [0 .. 13] of String;
  colTopics_4_5: array [0 .. 13] of String;

const
  colWidths_1_3: array [0 .. 13] of Smallint = (50, 100, 100, 100, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0);
  colWidths_4_5: array [0 .. 13] of Smallint = (50, 100, 100, 100, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0);
begin
  inherited;
  colTopics_4_5[0] := 'کد';
  colTopics_4_5[1] := 'نام كالا';
  colTopics_4_5[2] := 'بهاي فروش 1';
  if opt.EntityDisplay then
  begin
    colTopics_4_5[3] := opt.EntityCaption;
    colWidths_4_5[3] := 50;
  end;
  if opt.WeightDisplay then
  begin
    colTopics_4_5[4] := opt.WeightCaption;
    colWidths_4_5[4] := 80;
  end;
  colTopics_1_3[0] := 'کد';
  colTopics_1_3[1] := 'نام كالا';
  colTopics_1_3[2] := 'مشخصات فني';
  colTopics_1_3[3] := 'بهاي فروش 1';
  // colWidths_1_3[0]:=50;colWidths_1_3[1]:=100;colWidths_1_3[2]:=100;
  // colWidths_1_3[3]:=100;
  // colWidths_4_5[0]:=50;colWidths_4_5[1]:=100;
  // colWidths_4_5[2]:=100;colWidths_4_5[3]:=100;
  for i := 1 to 9 do
  begin
    colTopics_1_3[i + 3] := opt.ExtraCoding.Captions[i];
    colTopics_4_5[i + 4] := opt.ExtraCoding.Captions[i];
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      colWidths_1_3[i + 3] := 100;
      colWidths_4_5[i + 4] := 100;
      Fields_SD_1_9 := Fields_SD_1_9 + ',StuffCoding.sd' + IntToStr(i);
    end;
  end;
  b := False;
  s_StoreID := IfThen(qryRecipts.FieldByName('StoreID').IsNull, '0',
    qryRecipts.FieldByName('StoreID').AsString);

  Txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName,StuffCoding.c_StuffTecInfo,StuffCoding.SellPrice1 '
    + Fields_SD_1_9 + ' FROM         StuffCoding INNER JOIN ' +
    ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode ';
  Txt := Txt +
    '  GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, StuffCoding.SellPrice1 ';
  Txt := Txt + Fields_SD_1_9;
  if qryinit.FieldByName('EffectType').AsInteger in [3] then
  begin
    Txt := ' SELECT dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,dbo.StuffCoding.SellPrice1,  '
      + '    SUM(dbo.ReciptItems.InputEntity - dbo.ReciptItems.OutputEntity) AS SUMEntity, '
      + '    SUM(dbo.ReciptItems.InputWeight - dbo.ReciptItems.OutputWeight) AS SUMWeight '
      + Fields_SD_1_9 + ' FROM   dbo.ReciptItems INNER JOIN ' +
      '        dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID INNER JOIN '
      + '        dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTypes.ReciptType INNER JOIN '
      + '        dbo.StuffCoding ON dbo.ReciptItems.StuffCode = dbo.StuffCoding.c_StuffCode '
      + ' WHERE (dbo.Recipts.ReciptDate <= ''' + qryRecipts.FieldByName
      ('ReciptDate').AsString + ''')  ' +
      '   AND (dbo.ReciptTypes.EffectType = 2 OR dbo.ReciptTypes.EffectType = 4) '
      + '   AND (dbo.Recipts.ReciptState < 3) ' +
      ' GROUP BY dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName,dbo.StuffCoding.SellPrice1 '
      + Fields_SD_1_9;
    b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', Txt,
      colTopics_4_5, Results, colWidths_4_5, alLeft);
  end;
  if not(qryinit.FieldByName('EffectType').AsInteger in [3]) then
    b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', Txt,
      colTopics_1_3, Results, colWidths_1_3, alLeft);
  if b then
  begin
    if not(qryItems.State in dseditModes) then
      qryItems.edit;
    qryItems.FieldByName('StuffCode').AsString := Results[0];
  end; // if
end;

procedure TContractStuffF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryRecipts) then
  begin
    DataSet.Cancel;
    Exit;
  end;
  if not(qryRecipts.State in dseditModes) then
    qryRecipts.edit;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryRecipts.FieldByName('PersonID1').AsInteger;
  GetANewID(DataSet, Self.name, 'ReciptItems', 'ReciptItemID', qryRecipts,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').Value;
  DataSet.FieldByName('StuffCode').AsLargeInt :=
    qryContract.FieldByName('StuffCode').AsLargeInt;
  DataSet.FieldByName('UnitSellPrice').AsCurrency :=
    qryContract.FieldByName('UnitSellPrice').AsCurrency;

  DataSet.FieldByName('UnitSellPrice2').AsCurrency :=
    qryContract.FieldByName('UnitSellPrice').AsCurrency;

  DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_DetailCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := user.name;
  EdtStuffCode.SetFocus;

end;

procedure TContractStuffF.qryItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not OkDelete(qryRecipts, False, qryItemsReciptItemID.AsInteger) then
    Abort;
  if get_response('آيا براي حذف اين كالا مطمئن هستيد؟') <> mrYes then
    Abort;

end;

procedure TContractStuffF.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryRecipts.State in dseditModes) then
    Abort;

end;

procedure TContractStuffF.qryItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If not ADDItemChecked(qryRecipts) then
    Abort;
  if not(qryRecipts.State in dseditModes) then
    Abort;
  if LimitRecord then
    Abort;
end;

procedure TContractStuffF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName(EdtIOEntity.DataField).AsFloat < 0) or
    (DataSet.FieldByName(EdtIOWeight.DataField).AsFloat < 0) or
    (DataSet.FieldByName(EdtTotalIOPrice.DataField).AsCurrency < 0) then
    if not(formType in [2, 3]) then
    begin
      Warn('عدد منفی است.‏');
      Abort;
    end;
  TrimStringFields(qryItems);
  if not CheckRequiredFields(qryItems) then
    Abort;
  if not ValidateDatasetDates(qryItems, APPBank.StartYear, APPBank.endYear) then
    Abort;
  if not ControlEntity then
    Abort;
  DataSet.FieldByName(EdtIOWeight.DataField).AsFloat :=
    roundto(DataSet.FieldByName(EdtIOWeight.DataField).AsFloat,
    opt.RoundEntity);
  DataSet.FieldByName(EdtTotalIOPrice.DataField).AsFloat :=
    roundto(DataSet.FieldByName(EdtTotalIOPrice.DataField).AsFloat, 0);
  DataSet.FieldByName('ControlCode').AsString :=
    IfThen(DataSet.FieldByName('ControlCode').IsNull, '0',
    DataSet.FieldByName('ControlCode').AsString);
end;

procedure TContractStuffF.qryItemsUnitSellPrice2Change(Sender: TField);
begin
  inherited;
  NonprogrammedHalt;
  EndOfPrice('UnitSellPrice2');
end;

procedure TContractStuffF.qryItemsUnitSellPriceChange(Sender: TField);
begin
  inherited;
  qryItems.FieldByName(EdtTotalIOPrice.DataField).Value :=
    qryItems.FieldByName(EdtIOWeight.DataField).AsFloat *
    qryItems.FieldByName(EdtUnitSellPrice.DataField).AsFloat;
end;

procedure TContractStuffF.EdtRNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SBtnReciptNumber.Click;
end;

procedure TContractStuffF.EdtStoreIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SBtnStoreID.Click;

end;

procedure TContractStuffF.EdtStuffCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    sbtnStuffCode.Click;

end;

procedure TContractStuffF.actSearch2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts_Items);
end;

procedure TContractStuffF.actExcel2Execute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryRecipts_Items);
end;

procedure TContractStuffF.actSort2Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts_Items);
end;

procedure TContractStuffF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(formType));
  SetColSize(DBGrid2, 3, True, IntToStr(formType));
end;

procedure TContractStuffF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(formType));
  SaveColWidth(DBGrid2, IntToStr(formType));
end;

procedure TContractStuffF.qryItemsTaxCoChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // TaxCo
end;

procedure TContractStuffF.qryItemsTaxValueChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) // TaxValue
end;

procedure TContractStuffF.qryItemsTotalInputPriceChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName)
end;

procedure TContractStuffF.qryItemsTotalOutputPriceChange(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName)
end;

procedure TContractStuffF.qryItemsTotalWeightChange(Sender: TField);
begin
  inherited;
  qryItems.FieldByName(EdtIOWeight.DataField).AsFloat :=
    qryItems.FieldByName('TotalWeight').AsFloat - qryItems.FieldByName
    ('MachineWeight').AsFloat;
end;

procedure TContractStuffF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TContractStuffF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TContractStuffF.actPrintExecute(Sender: TObject);
begin
  inherited;
  // PopMuPrint.Items[1].Enabled:=qryinit.FieldByName('ReportFileName').AsString<>'';
  if qryinit.FieldByName('ReportFileName').AsString <> '' then
    PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
  else
  begin
    initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine,
      qryinit.FieldByName('FormSignature').AsString);
    ppReport1.PrinterSetup.Copies := PrintCount;
    try
      qryRecipts.DisableControls;
      qryItems.DisableControls;
      if qryinit.FieldByName('PerformFileName').AsString <> '' then
      begin
        PopMuPrint.Items[0].Click;
        Exit;
      end
      else
      begin
        ppReport1.Print;
      end;
    finally
      qryRecipts.EnableControls;
      qryItems.EnableControls;
    end; // try
  end; // else
end;

procedure TContractStuffF.PerformFileNameClick(Sender: TObject);

var
  footer_: String;
begin
  inherited;
  qryContract.DisableControls;
  qryRecipts.DisableControls;
  qryItems.DisableControls;
  footer_ := Trim(qryinit.FieldByName('FormSignature').AsString);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath
      (qryinit.FieldByName((Sender as TMenuItem).name).AsString);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + qryinit.FieldByName((Sender as TMenuItem).name)
          .AsString + ' نظر يافت نشد.!‏', mtInformation);
      initReport(ppReport1, ppPageStyle1, ppRegion1, ppRecFooterLine, footer_);
      PrinterSetup.Copies := PrintCount;
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
      qryContract.EnableControls;
      qryRecipts.EnableControls;
      qryItems.EnableControls;
    end; // try
  end; // with
end;

procedure TContractStuffF.actCtrlExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(True, TRptReportsF, RptReportsF, Self, 29);
  RptReportsF.qryMaster.Locate('Mastercode',
    qryContract.FieldByName('PersonID1').Value, []);

end;

function TContractStuffF.LimitRecord: Boolean;
begin
  Result := False;
  If qryItems.RecNo > qryinit.FieldByName('MaxRowsPerForm').AsInteger then
  begin
    Warn('حداكثر ركورد قابل ثبت در فرم " ' + qryinit.FieldByName
      ('MaxRowsPerForm').AsString + ' " ركورد مي‌باشد.');
    Result := True;
  end; // if
end;

procedure TContractStuffF.NonprogrammedHalt;

var
  Days: Integer;
  Weight, DeficitValue: Real48;
begin
  If not(qryItems.State in dseditModes) then
    Exit;
  Weight := qryItems.FieldByName(EdtIOWeight.DataField).AsFloat;
  if (formType > 10) and (qryRecipts.FieldByName('ReciptDate').AsString >
    qryContract.FieldByName('ReciptEndDate').AsString) then
  begin
    Days := DaysBetween(Shamsi2Miladi(qryContract.FieldByName('ReciptEndDate')
      .AsString), Shamsi2Miladi(qryRecipts.FieldByName('ReciptDate').AsString));

    DeficitValue := Weight * Days * qryItems.FieldByName('UnitSellPrice2')
      .AsFloat / 100;
    // add  >>> qryContract  بجاي qryItems  add   UnitSellPrice2
    qryItems.FieldByName('DeficitValue').Value := roundto(DeficitValue, 0)
    // qryContract.FieldByName('DeficitValue').AsCurrency*
  end;
end;

procedure TContractStuffF.qryReciptsReciptDateChange(Sender: TField);
begin
  inherited;
  NonprogrammedHalt;
end;

procedure TContractStuffF.qryReciptsStoreIDChange(Sender: TField);
begin
  inherited;
  if (qryRecipts.State in [dsInsert]) and not(qryItems.State in dseditModes)
  then
    qryItems.Insert
end;

procedure TContractStuffF.qryItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SumDeficitValue;
end;

procedure TContractStuffF.SumDeficitValue;

var
  c: Currency;
begin
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT SUM(ReciptItems.DeficitValue) FROM Recipts INNER JOIN ';
    SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID');
    SQL.Add('WHERE (Recipts.PersonID1 = :PersonID1) AND (Recipts.ReciptType = :ReciptType)');
    SQL.Add('AND (Recipts.ReciptID <> :ReciptID)');

    SQL.Add('AND (Recipts.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value :=
      qryRecipts.FieldByName('YearID').AsInteger;

    Parameters.ParamByName('PersonID1').Value :=
      qryContract.FieldByName('PersonID1').AsInteger;
    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
    c := Fields[0].AsCurrency + qryItems.FieldByName('DeficitValue').AsCurrency;
//    c := roundto(c + (c * qryinit.FieldByName('VATCo').AsFloat / 100), 0);
    LblSumDeficitValue.Caption := 'جمع توقف اضافي:‏ ' +
      CurrToStrF(c, ffCurrency, 0);
    Active := False;
  end; // with
end;

procedure TContractStuffF.qryItemsDeficitValue2Change(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) //
end;

procedure TContractStuffF.qryItemsDeficitValue3Change(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) //
end;

procedure TContractStuffF.qryItemsDeficitValue4Change(Sender: TField);
begin
  inherited;
  EndOfPrice((Sender as TField).FieldName) //
end;

procedure TContractStuffF.qryItemsDeficitValueChange(Sender: TField);
begin
  inherited;
  SumDeficitValue;
end;

procedure TContractStuffF.qryItemsStuffCodeChange(Sender: TField);

var
  StuffCode: Largeint;
begin
  inherited;
  StuffCode := qryItems.FieldByName('StuffCode').AsLargeInt;
  if StuffCode = 0 then
    Exit;
  if qryinit.FieldByName('VATActive').AsInteger = 1 then
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT VatExempt,VatExemptCo ';
      SQL.Add('FROM StuffCoding WHERE c_StuffCode=' + IntToStr(StuffCode));
      Active := True;
      if FieldByName('VatExempt').AsInteger = 0 then
        qryItems.FieldByName('TaxCo').AsFloat :=
          qryinit.FieldByName('VATCo').AsFloat
      else
        qryItems.FieldByName('TaxCo').AsFloat :=
          FieldByName('VatExemptCo').AsFloat;
    end;

end;

procedure TContractStuffF.qryContractBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  LblSumDeficitValue.Caption := 'جمع توقف اضافي:‏ ';
end;

procedure TContractStuffF.EndOfPrice(Field_Name: String);

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
        c := qryItems.FieldByName('Portage').AsCurrency;
      if qryinit.FieldByName('PawsFieldsActive').AsInteger in [2, 3] then
        c := c + qryItems.FieldByName('Article').AsCurrency +
          qryItems.FieldByName('Wage').AsCurrency + qryItems.FieldByName
          ('Scoria').AsCurrency;
    end;

    TotallSellPrice := qryItems.FieldByName(EdtTotalIOPrice.DataField)
      .AsCurrency + TaxValue - qryItems.FieldByName('DeficitValue').AsCurrency -
      qryItems.FieldByName('DeficitValue2').AsCurrency -
      qryItems.FieldByName('DeficitValue3').AsCurrency -
      qryItems.FieldByName('DeficitValue4').AsCurrency + c
    // +qryItems.FieldByName('UnitSellPrice2').AsCurrency
      ;
    if qryItems.FieldByName('TotallSellPrice').AsCurrency <> TotallSellPrice
    then
      qryItems.FieldByName('TotallSellPrice').AsCurrency := TotallSellPrice;
  end;

begin
  TaxValue := 0;
  if qryinit.FieldByName('VATActive').AsInteger = 1 then
  begin
    TaxCo := qryItems.FieldByName('TaxCo').AsFloat;
    TaxValue := qryItems.FieldByName('TaxValue').AsCurrency;
    VATRound := qryinit.FieldByName('VATRound').AsInteger;
    if (Field_Name = 'DeficitValue') or (Field_Name = EdtTotalIOPrice.DataField)
      or (Field_Name = 'TaxCo') or (Field_Name = 'UnitSellPrice2')

    then
    begin
      TaxValue := roundto((qryItems.FieldByName(EdtTotalIOPrice.DataField)
        .AsCurrency
        // +qryItems.FieldByName('UnitSellPrice2').AsCurrency
        - qryItems.FieldByName('DeficitValue').AsCurrency -
        qryItems.FieldByName('DeficitValue2').AsCurrency -
        qryItems.FieldByName('DeficitValue3').AsCurrency -
        qryItems.FieldByName('DeficitValue4').AsCurrency) * TaxCo /
        (100 * VATRound), 0) * VATRound;
      if qryItems.FieldByName('TaxValue').AsCurrency <> TaxValue then
        qryItems.FieldByName('TaxValue').AsCurrency := TaxValue;
    end;
  end;
  SellPrice
end;

end.
