unit Cnt_Contracts2;

/// ContractOperationItems
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DateUtils, DB, ADODB, DBCtrls, Mask, DM, GlobalPro, shamsiDate,
  Menus, ppDB, ppDBPipe, ppParameter, ppBands, ppVar, ppPrnabl, ppClass,
  ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, zAPIBalloon, Grids,
  Vcl.DBGrids, ComCtrls, sndkey32, Math, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, CedarDbGrid, DBGridEh;

type
  TCnt_Contracts2F = class(Ttemplate2MDIF)
    qryContracts: TADOQuery;
    srcContracts: TDataSource;
    qryContractsCaseNo: TIntegerField;
    qryContractsCustomerGrpId: TIntegerField;
    qryContractsContractTopic: TWideStringField;
    qryContractsInsertDate: TDateTimeField;
    qryContractsContractRow: TIntegerField;
    qryContractsContractNo: TStringField;
    qryContractsContractDate: TStringField;
    qryContractsEmployerId: TIntegerField;
    qryContractsStartDate: TStringField;
    qryContractsEndDate: TStringField;
    qryContractsExecutionTime: TIntegerField;
    qryContractsActivityStartDate: TStringField;
    qryContractsContractType: TIntegerField;
    qryContractsUpperCaseNo: TIntegerField;
    qryContractsContractsStatus: TWordField;
    qryContractsAnticipateDate: TStringField;
    Label2: TLabel;
    edtContractDate: TDBEdit;
    Label3: TLabel;
    edtEmployerId: TDBEdit;
    Label6: TLabel;
    edtStartDate: TDBEdit;
    Label7: TLabel;
    edtEndDate: TDBEdit;
    qryContractsContractBasePrice: TBCDField;
    Label20: TLabel;
    edtContractNo: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BtnExcel: TBitBtn;
    Label21: TLabel;
    DBNavigator1: TDBNavigator;
    dbtxt_EmployerId: TDBText;
    btnEmployerId: TSpeedButton;
    qryContracts_EmployerId: TStringField;
    qryContractsYearID: TIntegerField;
    qryContractsRefInsuranceNo: TStringField;
    qryContractsFromType: TIntegerField;
    qryContractsFromDate: TStringField;
    qryContractsAidDate: TStringField;
    qryContractsNote: TStringField;
    Label23: TLabel;
    edtCaseNo: TDBEdit;
    Label24: TLabel;
    edtFromDate: TDBEdit;
    Label25: TLabel;
    edtContractTopic: TDBEdit;
    qryContractsAidNo: TStringField;
    cmbGroups: TComboBox;
    zbal: TzAPIBalloon;
    chkAllCusts: TCheckBox;
    qryContractsTechnicalCode: TStringField;
    qryinit: TADOQuery;
    qryCustomers1: TADOQuery;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    btnCnt_ContractsProperties: TBitBtn;
    actPrint: TAction;
    PopMuPrint: TPopupMenu;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    actViewFileF: TAction;
    BitBtn6: TBitBtn;
    btnSearchReciptNumber: TSpeedButton;
    qryContracts_CustomerInfo: TStringField;
    dbtxt_CustomerInfo: TDBText;
    qryContracts_NationalID: TStringField;
    qryContracts_Address: TStringField;
    qryContracts_Tel: TStringField;
    qryContracts_EconomicNumber: TStringField;
    plnContractsProperties: TppDBPipeline;
    pfld1: TppField;
    pfld2: TppField;
    pfld3: TppField;
    pfld4: TppField;
    pfld5: TppField;
    pfld6: TppField;
    pfld7: TppField;
    pfld8: TppField;
    pfld9: TppField;
    pfld10: TppField;
    pfld11: TppField;
    pfld12: TppField;
    pfld13: TppField;
    pfld14: TppField;
    pfld15: TppField;
    pfld16: TppField;
    pfld17: TppField;
    pfld18: TppField;
    pfld19: TppField;
    pfld20: TppField;
    pfld21: TppField;
    pfld22: TppField;
    pfld23: TppField;
    pfld24: TppField;
    pfld25: TppField;
    pfld26: TppField;
    pfld27: TppField;
    pfld28: TppField;
    pfld29: TppField;
    pfld30: TppField;
    pfld31: TppField;
    pfld32: TppField;
    pfld33: TppField;
    pfld34: TppField;
    pfld35: TppField;
    grp1: TGroupBox;
    dbmmoNote: TDBMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    qryContractsPercent1: TBCDField;
    qryContractsPercent2: TBCDField;
    Panel1: TPanel;
    lblPercent1: TLabel;
    edtPercent1: TDBEdit;
    lblPercent2: TLabel;
    edtPercent2: TDBEdit;
    qryOperations: TADOQuery;
    qryOperationsContractOperationId: TIntegerField;
    qryOperationsCaseNo: TIntegerField;
    qryOperationsOperationId: TLargeintField;
    qryOperations_UnitName: TStringField;
    qryOperations_SellPrice1: TCurrencyField;
    qryOperationsAmount: TBCDField;
    qryOperationsBasePrice: TBCDField;
    qryOperationsOverheadPrice: TBCDField;
    qryOperationsTotalPrice: TBCDField;
    qryOperationsContractOperationNote: TWideStringField;
    srcOperations: TDataSource;
    grdOperations: TDBGrid;
    Panel4: TPanel;
    txt_CustomerInfo: TDBText;
    txt_EmployerId: TDBText;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    qryStuff_Unit: TADOQuery;
    DBGrid1: TDBGrid;
    qryOperationsPercent1: TBCDField;
    qryOperationsPercent2: TBCDField;
    qryOperationsDiscountPercent: TBCDField;
    Panel5: TPanel;
    DataSetDelete2: TDataSetDelete;
    qryOperationsStuffCode: TLargeintField;
    qryOperations_StuffName: TStringField;
    qryOperationsStuffCount: TIntegerField;
    qryContractsOrderDeliveryTime: TIntegerField;
    qryContractsMaximumLife: TIntegerField;
    qryContractsMarginSafety: TIntegerField;
    qryOperationsLeadTime: TIntegerField;
    Label8: TLabel;
    edtOrderDeliveryTime: TDBEdit;
    Label9: TLabel;
    edtMaximumLife: TDBEdit;
    Label10: TLabel;
    edtMarginSafety: TDBEdit;
    qryOperationsUnitCode: TWordField;
    qryOperationsNumberOfUnit: TFloatField;
    qryOperationsPercent3: TBCDField;
    qryContractsPercent3: TBCDField;
    lblPercent3: TLabel;
    edtPercent3: TDBEdit;
    qryBasis4Calculations: TADOQuery;
    qryBasis4CalculationsBasis4CalculationID: TIntegerField;
    qryBasis4CalculationsBasis4CalculationCaption: TWideStringField;
    qryBasis4CalculationsFormName: TStringField;
    qryBasis4CalculationsFormRow: TWordField;
    qryBasis4CalculationsCalcFieldKind: TIntegerField;
    qryBasis4CalculationsCalcOnChange: TStringField;
    qryBasis4CalculationsBasis4CalculationFormulaID: TIntegerField;
    qryBasis4CalculationsCalc4FieldName: TStringField;
    qryBasis4CalculationsBasis4CalculationFormulaTxt: TWideStringField;
    qryBasis4CalculationsLookUp: TADOQuery;
    qryOperations_Basis4CalculationFormRow: TStringField;
    qryOperationsBasis4CalculationFormRow: TIntegerField;
    actBasis4CalculationFormulasF: TAction;
    BitBtn2: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    newPanelO: TPanel;
    BitBtn1: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    okPanelO: TPanel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    srcOperationItems: TDataSource;
    qryOperationItems: TADOQuery;
    qryOperationItemsContractOperationItemId: TAutoIncField;
    qryOperationItemsContractOperationId: TIntegerField;
    qryOperationItemsItemKind: TWordField;
    qryOperationItemsIStuffCount: TIntegerField;
    qryOperationItemsIStuffCode: TLargeintField;
    qryOperationItemsIAmount: TBCDField;
    qryOperationItemsINote: TWideStringField;
    qryOperationItemsIBuyEffect: TWordField;
    qryOperationItemsISellEffect: TWordField;
    qryOperationItems_StuffName: TStringField;
    Panel6: TPanel;
    grdOperationItems: TDBGrid;
    Panel7: TPanel;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    DataSetInsert3: TDataSetInsert;
    DataSetEdit3: TDataSetEdit;
    DataSetPost3: TDataSetPost;
    DataSetCancel3: TDataSetCancel;
    DataSetDelete3: TDataSetDelete;
    Splitter1: TSplitter;
    pnlContractOperationItems: TPanel;
    newPanelOI: TPanel;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    okPanelOI: TPanel;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    edtContractsStatus: TDBEdit;
    Label22: TLabel;
    Panel8: TPanel;
    BitBtn26: TBitBtn;
    qryOperationItemsIUnitCode: TWordField;
    qryOperationItems_UnitName: TStringField;
    qryUnits: TADOQuery;
    qryOperationItems_UnitCode1: TIntegerField;
    qryOperationItems_UnitCode2: TIntegerField;
    popContractsStatus: TPopupMenu;
    AllClick1: TMenuItem;
    BtnRecallSpecial: TBitBtn;
    grdOptFamilies: TDBGrid;
    Panel9: TPanel;
    pnlOptFamilies: TPanel;
    newPanelF: TPanel;
    BitBtn25: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    okPanelF: TPanel;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    srcOptFamilies: TDataSource;
    qryOptFamilies: TADOQuery;
    qryOptFamiliesFStuffCode: TLargeintField;
    qryOptFamilies_StuffName: TStringField;
    DataSetInsert4: TDataSetInsert;
    DataSetEdit4: TDataSetEdit;
    DataSetPost4: TDataSetPost;
    DataSetCancel4: TDataSetCancel;
    DataSetDelete4: TDataSetDelete;
    qryOptFamiliesContractOperationFamilyId: TAutoIncField;
    qryOptFamiliesContractOperationId: TIntegerField;
    Label1: TLabel;
    edtINote: TDBEdit;
    qryOptFamiliesCaseNo: TIntegerField;
    qryOperationsc_StuffName: TStringField;
    actSelectAll: TAction;
    BitBtn29: TBitBtn;
    BitBtn35: TBitBtn;
    actDeleteAll: TAction;
    StatusBar1: TStatusBar;
    qryOperations_Carton: TFloatField;
    actCopy: TAction;
    BitBtn36: TBitBtn;
    qryOperationItemsINote2: TWideStringField;
    edtINote2: TDBEdit;
    TabSheet4: TTabSheet;
    grdLastPrice: TCedarDbgrid;
    qryLastPrice: TADOQuery;
    srcLastPrice: TDataSource;
    qryLastPricec_stuffcode: TLargeintField;
    qryLastPricec_StuffName: TStringField;
    qryLastPriceSt1Name: TStringField;
    qryLastPriceEmployerId: TIntegerField;
    qryLastPriceEmployerName: TStringField;
    qryLastPriceUnitName: TStringField;
    qryLastPriceUnitName2: TStringField;
    qryLastPriceCarton: TFloatField;
    qryLastPriceConsumerPrice: TBCDField;
    qryLastPricePurchasePrice: TBCDField;
    qryLastPriceOverheadPrice: TBCDField;
    qryLastPriceCaseNo: TIntegerField;
    Panel10: TPanel;
    actFilter: TAction;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    actShow: TAction;
    procedure srcContractsStateChange(Sender: TObject);
    procedure qryContractsAfterInsert(DataSet: TDataSet);
    procedure qryContractsStartDateChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure qryContractsInsertDateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryContractsBeforePost(DataSet: TDataSet);
    procedure qryContractsAfterPost(DataSet: TDataSet);
    procedure qryContractsBeforeDelete(DataSet: TDataSet);
    procedure qryContractsAfterDelete(DataSet: TDataSet);
    procedure BtnExcelClick(Sender: TObject);
    procedure btnEmployerIdClick(Sender: TObject);
    procedure qryContractsContractsStatusGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure chkAllCustsClick(Sender: TObject);
    procedure cmbGroupsClick(Sender: TObject);
    procedure qryContractsAfterScroll(DataSet: TDataSet);
    procedure edtEmployerIdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryContractsBeforeEdit(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure mnu4allClick(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actViewFileFExecute(Sender: TObject);
    procedure qryContractsContractDateChange(Sender: TField);
    procedure qryContractsEndDateChange(Sender: TField);
    procedure qryContractsFromDateChange(Sender: TField);
    procedure btnSearchReciptNumberClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure grdOperationsEditButtonClick(Sender: TObject);
    procedure qryOperationsAfterDelete(DataSet: TDataSet);
    procedure qryOperationsAfterInsert(DataSet: TDataSet);
    procedure qryOperationsBeforeDelete(DataSet: TDataSet);
    procedure qryOperationsBeforePost(DataSet: TDataSet);
    procedure qryOperationsBeforeEdit(DataSet: TDataSet);
    procedure qryOperationsBeforeInsert(DataSet: TDataSet);
    procedure grdOperationsKeyPress(Sender: TObject; var Key: Char);
    procedure CalcPercent(Sender: TField);
    procedure actBasis4CalculationFormulasFExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure srcOperationsStateChange(Sender: TObject);
    procedure qryOperationItemsAfterInsert(DataSet: TDataSet);
    procedure grdOperationItemsEditButtonClick(Sender: TObject);
    procedure qryOperationItemsBeforePost(DataSet: TDataSet);
    procedure qryOperationsAfterScroll(DataSet: TDataSet);
    procedure qryOperationsBeforeScroll(DataSet: TDataSet);
    procedure srcOperationItemsStateChange(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure qryOperationItemsItemKindSetText(Sender: TField;
      const Text: string);
    procedure qryOperationItemsItemKindGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryOperationItemsBeforeEdit(DataSet: TDataSet);
    procedure qryOperationItemsBeforeInsert(DataSet: TDataSet);
    procedure AllClick1Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BtnRecallSpecialClick(Sender: TObject);
    procedure grdOptFamiliesEditButtonClick(Sender: TObject);
    procedure srcOptFamiliesStateChange(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure qryOperationItemsIStuffCodeChange(Sender: TField);
    procedure qryContractsBeforeScroll(DataSet: TDataSet);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure qryOperationItemsItemKindChange(Sender: TField);
    procedure qryOperationItemsAfterScroll(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
  private
    GroupType, formType: Integer;
    OrginalSQL: string;
    IsOPenRecall: Boolean;
    SQLTxt: string;
    procedure InitForm;
    procedure UpDateList(kind: Byte);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function AddToCustomer: Boolean;
    function Calc(Basis4CalculationTxt: string): Real48;
    procedure ChangeContractsStatuss(ChangeTo: Integer);
    function SearchCode(out results: array of string): Boolean;
    procedure ItemKindChange;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cnt_Contracts2F: TCnt_Contracts2F;

implementation

uses MMESSAGE, GetExcel, FormFunctions, searchCode_ADO, main,
  Cnt_ContractOperations,  FaraConsts, Cnt_ContractsProperties,
  ReciptsFunctions, Basis4CalculationFormulas, search2, sort2,
  RecallCnt_Contracts2, GeneralConst, filter_ADO, Filter_ADO_Const,
  ViewFileOnServer;

{$R *.dfm}

procedure TCnt_Contracts2F.btnSearchReciptNumberClick(Sender: TObject);
begin
  inherited;
  btnContractsCaseNo(qryContracts)
end;

procedure TCnt_Contracts2F.CalcPercent(Sender: TField);
var
  FieldNotify: TFieldNotifyEvent;
  aField: TField;
begin
  With qryBasis4Calculations do
  begin
    Filter := 'CalcOnChange = ' + QuotedStr(Sender.Name) + ' AND FormRow = ' +
      qryOperationsBasis4CalculationFormRow.AsInteger.ToString;
    Filtered := True;
    First;
    while not Eof do
    begin
      // Basis4CalculationTxt
      aField := TField(Cnt_Contracts2F.FindComponent
        (qryBasis4CalculationsCalc4FieldName.AsString));
      if aField <> nil then
      begin
        FieldNotify := Sender.OnChange;
        try
          aField.OnChange := nil;
          aField.Value :=
            Calc(qryBasis4CalculationsBasis4CalculationFormulaTxt.AsString);
        finally
          aField.OnChange := FieldNotify;
        end;
      end;
      Next;
    end;
  end;

end;

function TCnt_Contracts2F.Calc(Basis4CalculationTxt: string): Real48;
var
  i: Integer;
  FldName, FldVal: string;
begin
  With qryOperations do
  begin
    for i := 0 to FieldCount - 1 do
    begin
      FldName := Fields[i].Name;
      FldVal := Fields[i].AsString;
      if FldVal = EmptyStr then
        FldVal := '0.000001';
      Basis4CalculationTxt := Basis4CalculationTxt.Replace(FldName, FldVal)
    end;
  end;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ' + Basis4CalculationTxt;
    Active := True;
    Result := Fields[0].AsFloat;
    Active := False;
  end;
end;

procedure TCnt_Contracts2F.btnEmployerIdClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  results: array [0 .. 7] of String;
begin
  inherited;
  qryCustomers1.Active := False;
  qryCustomers1.Active := True;
  txt := 'SELECT DISTINCT CustID,CustName,Address,Tel,PersonID3,' +
    'UseUnitID,Mobile,Fax FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind1', qryinit);
  b := searchCode_ADOF.SearchCode2(DMf.adcBsell,
    qryinit.FieldByName('Person1Caption').AsString + ' ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString, 'آدرس', 'تلفن',
    'مشتري3', 'محل مصرف', 'همراه', 'دورنما'], results,
    [50, 150, 200, 50, 50, 50, 50, 50], alLeft);
  if b then
  begin
    qryContracts['EmployerId'] := results[0];
  end;
  // if
end;

procedure TCnt_Contracts2F.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  UpDateList(2)
end;

procedure TCnt_Contracts2F.cmbGroupsClick(Sender: TObject);
begin
  inherited;
  Self.ActiveControl := nil;
  cmbGroups.OnEnter := nil;
  UpDateList(1);
end;

procedure TCnt_Contracts2F.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

function TCnt_Contracts2F.SearchCode(out results: array of string): Boolean;
begin
//  Result := searchCode_ADOF.SearchCode2(DMf.adcBsell, 'کد و عنوان ', SQLTxt,
//    ['کد', ' عنوان ', 'واحد', 'مبلغ', 'برند'], results,
//    [50, 150, 50, 80, 100], alLeft);
end;

procedure TCnt_Contracts2F.grdOperationsEditButtonClick(Sender: TObject);
var
  id: SmallInt;
  b: Boolean;
  results: array [0 .. 5] of String;
begin
  inherited;

  id := (Sender as TDBGrid).SelectedIndex;
  if grdOperations.Columns[id].FieldName = 'OperationId' then
  begin
    b := SearchCode(results);
    if b then
    begin
      if not(qryOperations.State in dsEditModes) then
        qryOperations.Edit;
      qryOperations.FieldByName('OperationId').AsString := results[0];
    end;

  end;
end;

procedure TCnt_Contracts2F.grdOptFamiliesEditButtonClick(Sender: TObject);
var
  id: SmallInt;
  b: Boolean;
  results: array [0 .. 5] of String;
begin
  inherited;
  id := (Sender as TDBGrid).SelectedIndex;
  if grdOptFamilies.Columns[id].FieldName = 'FStuffCode' then
  begin
    b := SearchCode(results);
    if b then
    begin
      if not(qryOptFamilies.State in dsEditModes) then
        qryOptFamilies.Edit;
      qryOptFamilies.FieldByName('FStuffCode').AsString := results[0];
    end;
  end;
end;

procedure TCnt_Contracts2F.grdOperationItemsEditButtonClick(Sender: TObject);
var
  id: SmallInt;
  b: Boolean;
  results: array [0 .. 5] of String;
begin
  inherited;
  id := (Sender as TDBGrid).SelectedIndex;
  if grdOperationItems.Columns[id].FieldName = 'IStuffCode' then
  begin
    b := SearchCode(results);
    if b then
    begin
      if not(qryOperationItems.State in dsEditModes) then
        qryOperationItems.Edit;
      qryOperationItems.FieldByName('IStuffCode').AsString := results[0];
    end;

  end;

end;

procedure TCnt_Contracts2F.BtnExcelClick(Sender: TObject);
begin
  inherited;
  try
    qryContracts.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryContracts);
  finally
    qryContracts.AfterPost := qryContractsAfterPost;
  end;
end;

procedure TCnt_Contracts2F.BtnRecallSpecialClick(Sender: TObject);
begin
  inherited;
  try
    IsOPenRecall := True;
    RecallCnt_Contracts2F.SelectRecall(qryContracts, qryOperations,
      qryOperationItems, qryOptFamilies, qryinit)
  finally
    IsOPenRecall := False;
  end;
end;

procedure TCnt_Contracts2F.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TCnt_Contracts2F.InitForm;
var
  i, id: Integer;
  mnu: TMenuItem;
const
  sCaption = 'تبدیل به ';
begin
  IsOPenRecall := False;
  popContractsStatus.Items.Clear;
  for i := 0 to 2 { High(ContractsStatuss) } do
  begin
    mnu := TMenuItem.Create(popContractsStatus);
    mnu.Caption := ContractsStatuss[i];
    mnu.OnClick := AllClick1Click;
    mnu.Tag := i;
    popContractsStatus.Items.Add(mnu);
  end;

  id := ColumnIndexByFieldName(grdOperationItems, 'ItemKind');
  grdOperationItems.Columns[id].PickList.Clear;
  for i := 0 to High(ContractOperationItemKind) do
    grdOperationItems.Columns[id].PickList.Add(ContractOperationItemKind[i]);
  PageControl1.TabIndex := 0;
  GroupType := 15;
  formType := var_glb_gParam;
  OrginalSQL := qryContracts.SQL.Text;
  InitCombos(cmbGroups,
    'SELECT CustomerGrpID, CustomerGrpName+SPACE((SELECT MAX(LEN(CustomerGrpName))+2 '
    + ' FROM CustomersGroup WHERE GroupType=' + IntToStr(GroupType) +
    ')-LEN(CustomerGrpName)) + ''از كد'' + str(StartCode)' +
    '+ '' تا كد '' + str(FinishCode) AS  CustomerGrpName ' +
    ' FROM CustomersGroup  WHERE (GroupType = ' + IntToStr(GroupType) +
    ')' + SetWhereCustGroups +
    ' ORDER BY CustomerGrpID');
  qryContracts.Parameters.ParamByName('GroupType').Value := GroupType;
  qryContracts.Parameters.ParamByName('fromType').Value := formType;

  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
    stCountFields(qryOperations, qryinit, grdOperations, 3, 'OperationId');
    Caption := FieldByName('ReciptCaption').AsString;
    lblCaption.Hint := FieldByName('ReciptType').AsString;
  end;

  initReportName(qryinit, PopMuPrint, mnu4allClick);
  NotNull(qryinit.FieldByName('CustomerKind1').AsString,
    'هيچ گروهي براي گروه مشتري 1 مشخص نشده است');
  with qryCustomers1 do
  begin
    Active := False;
    SQL.Add(GetCustomersGroupTypeSQL('CustomerKind1', qryinit));
  end;

  With qryBasis4Calculations do
  begin
    Active := False;
    Parameters.ParamByName('FormName').Value := Self.Name;
    Active := True;
  end;
  With qryBasis4CalculationsLookUp do
  begin
    Active := False;
    Parameters.ParamByName('FormName').Value := Self.Name;
  end;

  SQLTxt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName' +
    ' , Units.UnitName, StuffCoding.SellPrice1, LookUps4Type.Name AS StName1' +
    ' FROM StuffCoding INNER JOIN' +
    ' Units ON StuffCoding.n_UnitCode = Units.UnitCode LEFT OUTER JOIN' +
    ' dbo.LookUps4Type(301) AS LookUps4Type ON StuffCoding.st1 = LookUps4Type.Code';

  cmbGroups.ItemIndex := cmbGroups.Items.Count - 1;
  cmbGroupsClick(cmbGroups);

end;

procedure TCnt_Contracts2F.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
end;

procedure TCnt_Contracts2F.qryContractsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('قرارداد حذف شد.', 1);
end;

procedure TCnt_Contracts2F.qryContractsAfterInsert(DataSet: TDataSet);
var
  GrpID: Integer;
  aRange, txt: String;
  isValid: Boolean;
  rFrom, rTo: Integer;
begin
  inherited;
  if (cmbGroups.ItemIndex = -1) then
  begin
    zbal.Prompt.Text := 'لطفاً قبل از تعريف قرارداد جديد گروه آنرا مشخص كنيد.';
    zbal.Title := 'اخطار!';
    zbal.Show(cmbGroups);
    DataSet.Cancel;
    Exit;
  end;
  // if
  GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  if opt.RecoverPittedCode in [0] then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2 from CustomersGroup where CustomerGrpID='
        + IntToStr(GrpID);
      Active := True;
      rFrom := Fields[0].AsInteger;
      rTo := Fields[1].AsInteger;
      aRange := Format('%d and %d', [rFrom, rTo]);
      Active := False;
      if aRange = ' and ' then
        aRange := '-999999999 and 999999999';
      DataSet.FieldByName('CaseNo').AsInteger :=
        GetANewCode(Self.Name,
        'Select max(CaseNo) from Cnt.Contracts where CaseNo between ' + aRange +
        'and CustomerGrpID =' + IntToStr(GrpID), 'CustID');
      if not((DataSet.FieldByName('CaseNo').AsInteger >= rFrom) and
        (DataSet.FieldByName('CaseNo').AsInteger <= rTo)) then
        DataSet.FieldByName('CaseNo').AsInteger := rFrom;
      Active := False;
      SQL.Text := 'Select count(CaseNo) from Cnt.Contracts where CaseNo = ' +
        DataSet.FieldByName('CaseNo').AsString + ' and CustomerGrpID = ' +
        IntToStr(GrpID);
      Active := True;
      isValid := Fields[0].AsInteger = 0;
      Active := False;
      if not isValid then
      begin
        zbal.Title := 'كد نامعتبر';
        zbal.Prompt.Text :=
          'كد جديد تخصيص يافته نامعتبر است. لطفاً كد را بصورت دستي وارد كنيد.';
        zbal.Show(edtContractNo);
      end; // if
    end // with
  else
    DataSet.FieldByName('CaseNo').AsInteger :=
      New_RecoverPittedCode(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]
      ), 'CaseNo', Self.Name);
  DataSet.FieldByName('CustomerGrpID').AsInteger := GrpID;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('FromType').AsInteger := formType;
  DataSet.FieldByName('InsertDate').AsDateTime := now;

  txt := 'SELECT MAX(ContractRow)FROM Cnt.Contracts WHERE(FromType=' +
    qryinit.FieldByName('ReciptType').AsString + ')';

  DataSet.FieldByName('ContractRow').AsInteger :=
    GetANewCode(qryinit.FieldByName('ReciptType').AsString, txt, 'ContractRow');

  DataSet.FieldByName('ContractDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('StartDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('EndDate').AsString := APPBank.endYear;
  DataSet.FieldByName('ActivityStartDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('AnticipateDate').AsString := APPBank.endYear;
  DataSet.FieldByName('FromDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('ContractsStatus').AsInteger := 0;
  DataSet.FieldByName('ContractType').AsInteger := 0;
end;

procedure TCnt_Contracts2F.qryContractsAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryOperations.UpdateBatch;
  if qryOperationItems.Active then
    qryOperationItems.UpdateBatch;
  if qryOptFamilies.Active then
    qryOptFamilies.UpdateBatch;
  if not AddToCustomer then
    Warn('اشكال در ثبت')
  else if not IsOPenRecall then
    BigMessage('ثبت شد.', 1);
end;

function TCnt_Contracts2F.AddToCustomer: Boolean;
var
  s: string;
  i: Integer;
begin
  Result := True;
  if qryinit.FieldByName('AutoCorrelate').AsInteger = 2 then
    Exit;
  Try
    s := 'INSERT INTO Customers (CustID, CustomerGrpID, CustName, ModifyDate,acc_DetailCode)'
      + 'VALUES (%d, %D, %s, GETDATE(),%d)';
    s := Format(s, [qryContractsCaseNo.AsInteger,
      qryContractsCustomerGrpId.AsInteger,
      QuotedStr(qryContractsContractTopic.AsString),
      qryContractsCaseNo.AsInteger]);
    DMf.adcBsell.Execute(s, i, []);
  except
    s := 'UPDATE Customers SET CustName = %s WHERE (CustID = %d)';
    s := Format(s, [QuotedStr(qryContractsContractTopic.AsString),
      qryContractsCaseNo.AsInteger]);
    DMf.adcBsell.Execute(s, i, []);

  End;
  Result := i = 1;

end;

procedure TCnt_Contracts2F.AllClick1Click(Sender: TObject);
begin
  inherited;
  ChangeContractsStatuss((Sender as TMenuItem).Tag);
end;

procedure TCnt_Contracts2F.qryContractsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryOperations do
  begin
    Active := False;
    Parameters.ParamByName('CaseNo').Value := qryContracts.FieldByName('CaseNo')
      .AsInteger;
    Active := True;
  end;

end;

procedure TCnt_Contracts2F.actBasis4CalculationFormulasFExecute
  (Sender: TObject);
begin
  inherited;
  Basis4CalculationFormulasF.ShowColumns(Self);
  qryBasis4Calculations.Requery();
  qryBasis4CalculationsLookUp.Requery();
end;

procedure TCnt_Contracts2F.ChangeContractsStatuss(ChangeTo: Integer);
var
  CaseNo, ContractOperationId: Integer;
  sCmd: string;
begin
  if ChangeTo = 0 then
    if not CheckUserlevel(qryinit.FieldByName('State0ChangeLevelID'),
      qryContracts, False) then
      Abort;
  if ChangeTo = 1 then
    if not CheckUserlevel(qryinit.FieldByName('State1ChangeLevelID'),
      qryContracts, False) then
      Abort;

  if get_response(' آيا براي تغییر وضعیت قرارداد به ' + ContractsStatuss
    [ChangeTo] + ' مطمئن هستيد؟') <> mrYes then
    Abort;

  CaseNo := qryContractsCaseNo.AsInteger;
  ContractOperationId := qryOperationsContractOperationId.AsInteger;
  sCmd := 'UPDATE Cnt.Contracts SET ContractsStatus = %d WHERE (CaseNo = %d )';
  sCmd := Format(sCmd, [ChangeTo, CaseNo]);
  theMainConnection.Execute(sCmd);
  qryContracts.Requery();
  qryContracts.Locate('CaseNo', CaseNo, []);
  qryOperations.Locate('ContractOperationId', ContractOperationId, []);
end;

procedure TCnt_Contracts2F.actCopyExecute(Sender: TObject);
var
  qry: TADOQuery;
  i, k, RowCount, id: Integer;
  ts: TStringList;
begin
  inherited;
  // RowCount := 1;
  RowCount := StrToInt(Trim(get_box('تعداد سطر',
    'تعداد سطرها را براي كپي سطر جاري وارد كنيد', '1', False, '999')));
  BigMessageProgBar('در حال كپي آرتيكل  ...‏', RowCount);
  if not(qryOperations.State in dsEditModes) then
    qryOperations.Edit;
  if (qryOperationItems.State in dsEditModes) then
    qryOperationItems.Post;
  ts := TStringList.Create;
  for i := 0 to grdOperationItems.Columns.Count - 1 do
  begin
    if (not grdOperationItems.Columns[i].ReadOnly) and
      (grdOperationItems.Columns[i].Visible) then
      if grdOperationItems.Columns[i].Field.KeyFields <> EmptyStr then
        ts.Add(grdOperationItems.Columns[i].Field.KeyFields)
      else
        ts.Add(grdOperationItems.Columns[i].FieldName);
  end;

  id := qryOperationItemsContractOperationItemId.AsInteger;
  qry := TADOQuery.Create(Self);
  try
    qryOperationItems.DisableControls;
    with qry do
    begin
      Clone(qryOperationItems, ltReadOnly);
      Filter := 'ContractOperationItemId=' + id.ToString;
      Filtered := True;
      for k := 1 to RowCount do
      begin
        qryOperationItems.Append;
        for i := 0 to ts.Count - 1 do
        begin
          qryOperationItems.FieldByName(ts[i]).AsString :=
            FieldByName(ts[i]).AsString;
        end;
        GoProgressBar(IntToStr(k));
        qryOperationItems.Post;
      end;
    end;
  finally
    qryOperationItems.EnableControls;
    qry.Free;
    ts.Free;
    BigMessage('آرتيكل كپي شد.‏', 1);
  end;

end;

procedure TCnt_Contracts2F.actDeleteAllExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if get_response(' آيا براي حذف کالاهای انتخاب شده مطمئن هستيد؟') <> mrYes then
    Abort;

  try
    qryOperations.BeforeDelete := nil;
    qryOperations.AfterDelete := nil;
    with grdOperations.DataSource.DataSet do
    begin
      DisableControls;
      for i := 0 to grdOperations.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdOperations.SelectedRows.Items[i]));
        qryOperations.Delete;
      end;
      EnableControls;
    end;

  finally
    qryOperations.BeforeDelete := qryOperationsBeforeDelete;
    qryOperations.AfterDelete := qryOperationsAfterDelete;
  end;

end;

procedure TCnt_Contracts2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterCurentDate);
      AddItemFilter(GetFilter, TFilterStuffCode);
      AddItemFilter(GetFilter, TFilterST1);
      AddItemFilter(GetFilter, TFilterPersonID1);
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

procedure TCnt_Contracts2F.UpdateFilter;
begin
  with qryLastPrice do
  begin
    Close;
    Parameters.ParamByName('OperationIdFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('OperationIdTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

    Parameters.ParamByName('CurentDate').Value :=
      GetcFrom(myParams.ParamValues['CurentDate'], ftDate);;

    Parameters.ParamByName('st1From').Value :=
      GetcFrom(myParams.ParamValues['ST1'], ftInteger);
    Parameters.ParamByName('st1To').Value := GetcTo(myParams.ParamValues['ST1'],
      ftInteger);

    Parameters.ParamByName('EmployerIdFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('EmployerIdTo').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);
    Open;
  end;
end;

procedure TCnt_Contracts2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryContracts.DisableControls;
    PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
  finally
    qryContracts.EnableControls;
  end;
end;

procedure TCnt_Contracts2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOperations);
end;

procedure TCnt_Contracts2F.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  try
    qryOperations.AfterScroll := nil;
    DBGridSelectAll(grdOperations);
  finally
    qryOperations.EnableControls;
  end;
end;

procedure TCnt_Contracts2F.actShowExecute(Sender: TObject);
var
  CaseNo: Integer;
  OperationId: Largeint;
begin
  inherited;
  CaseNo := qryLastPriceCaseNo.AsInteger;
  OperationId := qryLastPricec_stuffcode.AsLargeInt;
  qryContracts.Locate('CaseNo', CaseNo, []);
  qryOperations.Locate('OperationId', OperationId, []);
  PageControl1.TabIndex := 1;
end;

procedure TCnt_Contracts2F.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.enter(qryContracts.FieldByName('CaseNo').AsString,
    'ContractsFiles' + IntToStr(formType), True);
end;

procedure TCnt_Contracts2F.BitBtn10Click(Sender: TObject);
begin
  inherited;
  SendToExcel(grdOperations)
end;

procedure TCnt_Contracts2F.BitBtn13Click(Sender: TObject);
begin
  inherited;
  try
    GetExcelF.ShowImPortExcel(qryOperations);
  finally
  end;
end;

procedure TCnt_Contracts2F.BitBtn16Click(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOperationItems);
end;

procedure TCnt_Contracts2F.BitBtn17Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOperationItems);
end;

procedure TCnt_Contracts2F.BitBtn18Click(Sender: TObject);
begin
  inherited;
  SendToExcel(grdOperationItems)
end;

procedure TCnt_Contracts2F.BitBtn22Click(Sender: TObject);
begin
  inherited;
  try
    GetExcelF.ShowImPortExcel(qryOperationItems);
  finally
  end;

end;

procedure TCnt_Contracts2F.BitBtn26Click(Sender: TObject);
begin
  inherited;
  popContractsStatus.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCnt_Contracts2F.BitBtn2Click(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOperations);
end;

procedure TCnt_Contracts2F.BitBtn32Click(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOptFamilies);
end;

procedure TCnt_Contracts2F.BitBtn33Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOptFamilies);
end;

procedure TCnt_Contracts2F.BitBtn34Click(Sender: TObject);
begin
  inherited;
  SendToExcel(grdOptFamilies)
end;

procedure TCnt_Contracts2F.qryContractsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  qryContractsBeforeEdit(DataSet);

  if get_response(' آيا براي حذف قرارداد مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCnt_Contracts2F.qryContractsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryContracts.FieldByName('ContractsStatus').AsInteger <> 0 then
  begin
    Warn('امكان حذف و ويرايش در اين وضعيت وجود ندارد');
    Abort;
  end;

end;

procedure TCnt_Contracts2F.edtEmployerIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('Btn' + (Sender as TDBEdit).DataField)).Click;
end;

procedure TCnt_Contracts2F.UpDateList(kind: Byte);
var
  GrpID: Integer;
begin
  qryContracts.SQL.Text := OrginalSQL;
  if cmbGroups.ItemIndex = -1 then
    GrpID := 0
  else
    GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  case kind of
    1:
      begin
        with qryContracts do
        begin
          Active := False;
          Parameters.ParamByName('CustomerGrpIDForm').Value := GrpID;
          Parameters.ParamByName('CustomerGrpIDTo').Value := GrpID;
          Active := True;
        end;
        // with
      end;
    2:
      begin
        if chkAllCusts.Checked then
        begin
          cmbGroups.Enabled := False;
          with qryContracts do
          begin
            Active := False;
            Parameters.ParamByName('CustomerGrpIDForm').Value := -999999999;
            Parameters.ParamByName('CustomerGrpIDTo').Value := 2147483647;
            Active := True;
          end; // with
          chkAllCusts.Checked;
        end // if
        else
        begin
          cmbGroups.Enabled := True;
          with qryContracts do
          begin
            Active := False;
            Parameters.ParamByName('CustomerGrpIDForm').Value := GrpID;
            Parameters.ParamByName('CustomerGrpIDTo').Value := GrpID;
            Active := True;
          end;
          // with
          chkAllCusts.Checked := False;
        end; // if
      end;
    3:
      begin
        // if Length(mySelected) > 1 then
        // with qryContracts do
        // begin
        // cmbGroups.ItemIndex := -1;
        // Active := False;
        // SQL.Text := StringReplace(OrginalSQL,
        // 'between :CustomerGrpIDForm and :CustomerGrpIDTO',
        // 'in(' + mySelected + ')', [rfReplaceAll]);
        // Active := True;
        // end; // with
      end;
  end;
  ColorDBEdits(Self);

end;

procedure TCnt_Contracts2F.qryContractsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryOperations.State in dsEditModes then
  begin
    qryOperations.Post;
  end;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  TrimStringFields(DataSet);
end;

procedure TCnt_Contracts2F.qryContractsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryOperations.Close;
  qryOperationItems.Close;
  qryOptFamilies.Close;
end;

procedure TCnt_Contracts2F.qryContractsContractDateChange(Sender: TField);
begin
  inherited;
  if qryContractsEmployerId.IsNull then
  begin
    qryContracts.FieldByName('StartDate').AsString := Sender.AsString;
    qryContracts.FieldByName('ActivityStartDate').AsString := Sender.AsString;
  end;
end;

procedure TCnt_Contracts2F.qryContractsContractsStatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := ContractsStatuss[Sender.AsInteger];
end;

procedure TCnt_Contracts2F.qryContractsEndDateChange(Sender: TField);
begin
  inherited;
  qryContracts.FieldByName('ExecutionTime').AsInteger :=
    MonthsBetween(Shamsi2Miladi(qryContracts.FieldByName('StartDate').AsString),
    Shamsi2Miladi(qryContracts.FieldByName('EndDate').AsString));

end;

procedure TCnt_Contracts2F.qryContractsFromDateChange(Sender: TField);
begin
  inherited;
  if qryContractsEmployerId.IsNull then
  begin
    qryContracts.FieldByName('ContractDate').AsString := Sender.AsString;
  end;
end;

procedure TCnt_Contracts2F.qryContractsInsertDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Format('%s %s‏', [FormatDateTime('t', Sender.AsDateTime),
    miladi2Shamsi(Sender.AsDateTime)]);
end;

procedure TCnt_Contracts2F.qryContractsStartDateChange(Sender: TField);
begin
  inherited;
  qryContracts.FieldByName('ExecutionTime').AsInteger :=
    MonthsBetween(Shamsi2Miladi(qryContracts.FieldByName('StartDate').AsString),
    Shamsi2Miladi(qryContracts.FieldByName('EndDate').AsString));

  // if qryContractsActivityStartDate.IsNull then
  // qryContractsActivityStartDate.AsString := qryContractsStartDate.AsString

end;

procedure TCnt_Contracts2F.qryOperationItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ContractOperationId').AsInteger :=
    qryOperationsContractOperationId.AsInteger;
  if DataSet.Name = qryOptFamilies.Name then
    DataSet.FieldByName('CaseNo').AsInteger := qryContractsCaseNo.AsInteger
  else
    qryOperationItemsIStuffCode.AsLargeInt :=
      qryOperationsOperationId.AsLargeInt;
end;

procedure TCnt_Contracts2F.qryOperationItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ItemKindChange
end;

procedure TCnt_Contracts2F.qryOperationItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryOperations.State in dsEditModes) then
    qryOperations.Edit;
end;

procedure TCnt_Contracts2F.qryOperationItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryOperations.State in dsEditModes) then
    qryOperations.Edit;
end;

procedure TCnt_Contracts2F.qryOperationItemsBeforePost(DataSet: TDataSet);
var
  sF: string;
begin
  inherited;
  qryOperationItems_StuffName.Required :=
    qryOperationItemsItemKind.AsInteger <> 5;
  if DataSet.Name <> qryOperationItems.Name then
    sF := '_StuffName'
  else
    sF := 'ItemKind';

  if (DataSet.FieldByName(sF).IsNull) then
    DataSet.Cancel;
  if not CheckRequiredFields(DataSet) then
    Abort;
  TrimStringFields(DataSet);

  if not((qryOperationItemsIUnitCode.AsInteger = qryOperationItems_UnitCode1.
    AsInteger) or (qryOperationItemsIUnitCode.AsInteger =
    qryOperationItems_UnitCode2.AsInteger)) then
  Begin
    Warn('واحد شمارش به درستی انتخاب نشده');
    Abort;
  End;

  if not IsOPenRecall then
    if DataSet.Name = qryOperationItems.Name then
      with qryOptFamilies do
      begin
        try
          Filter := 'FStuffCode = ' + qryOperationsOperationId.AsString;
          Filtered := True;
          if RecordCount = 0 then
          begin
            qryOptFamilies.Insert;
            qryOptFamiliesFStuffCode.AsLargeInt :=
              qryOperationsOperationId.AsLargeInt;
            qryOptFamilies.BeforePost := nil;
            qryOptFamilies.Post;
          end;
        finally
          qryOptFamilies.BeforePost := qryOperationItemsBeforePost;
          Filtered := False;
        end;

      end;

end;

procedure TCnt_Contracts2F.qryOperationItemsIStuffCodeChange(Sender: TField);
begin
  inherited;
  qryOperationItemsINote.AsString := qryOperationItems_StuffName.AsString
end;

procedure TCnt_Contracts2F.qryOperationItemsItemKindChange(Sender: TField);
begin
  inherited;
  ItemKindChange
end;

procedure TCnt_Contracts2F.ItemKindChange;
var
  b: Boolean;
begin
  b := qryOperationItemsItemKind.AsInteger in [2, 3, 4, 5, 7, 8];
  setColumns2(grdOperationItems, b, 'IStuffCode', aReadOnly);
end;

procedure TCnt_Contracts2F.qryOperationItemsItemKindGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  i: Integer;
begin
  inherited;
  i := ColumnIndexByFieldName(grdOperationItems, Sender.FieldName);
  Text := grdOperationItems.Columns[i].PickList.Strings[Sender.AsInteger]
end;

procedure TCnt_Contracts2F.qryOperationItemsItemKindSetText(Sender: TField;
  const Text: string);
var
  i: Integer;
begin
  inherited;
  i := ColumnIndexByFieldName(grdOperationItems, Sender.FieldName);
  Sender.AsInteger := grdOperationItems.Columns[i].PickList.IndexOf(Text);
end;

procedure TCnt_Contracts2F.qryOperationsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('کالا حذف شد.', 1);
end;

procedure TCnt_Contracts2F.qryOperationsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not IsOPenRecall then
    DataSet.FieldByName('ContractOperationId').AsInteger :=
      GetANewCode('', 'Cnt.ContractOperations', 'ContractOperationId');
  DataSet.FieldByName('CaseNo').AsInteger := qryContractsCaseNo.AsInteger;

  DataSet.FieldByName('Percent1').AsFloat := qryContractsPercent1.AsFloat;
  DataSet.FieldByName('Percent2').AsFloat := qryContractsPercent2.AsFloat;
  DataSet.FieldByName('Percent3').AsFloat := qryContractsPercent3.AsFloat;

  DataSet.FieldByName('LeadTime').AsInteger :=
    qryContractsOrderDeliveryTime.AsInteger +
    qryContractsMarginSafety.AsInteger;

  DataSet.FieldByName('Amount').AsInteger := 0;

end;

procedure TCnt_Contracts2F.qryOperationsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not IsOPenRecall then
  begin
    with qryOperationItems do
    begin
      Active := False;
      Parameters.ParamByName('ContractOperationId').Value :=
        qryOperationsContractOperationId.AsInteger;
      Active := True;
    end;
    with qryOptFamilies do
    begin
      Active := False;
      Parameters.ParamByName('ContractOperationId').Value :=
        qryOperationsContractOperationId.AsInteger;
      Active := True;
    end;
  end
  else
  begin
    qryOperationItems.Open;
    qryOptFamilies.Open;
  end;
end;

procedure TCnt_Contracts2F.qryOperationsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف کالا مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCnt_Contracts2F.qryOperationsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryContracts.State in dsEditModes) then
    qryContracts.Edit;
end;

procedure TCnt_Contracts2F.qryOperationsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryContracts.State in dsEditModes) then
    qryContracts.Edit;
end;

procedure TCnt_Contracts2F.qryOperationsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('_StuffName').IsNull) then
  begin
    DataSet.Cancel;
    Abort;
  end;
  if not CheckRequiredFields(DataSet) then
    Abort;
  TrimStringFields(DataSet);
  // qryOperationsTotalPrice   قیمت خرید
  // qryOperationsOverheadPrice    قیمت فروشگاه
  // qryOperationsBasePrice   قیمت مصرف کننده نهایی
  if not((qryOperationsTotalPrice.AsCurrency <
    qryOperationsOverheadPrice.AsCurrency) and
    (qryOperationsOverheadPrice.AsCurrency < qryOperationsBasePrice.AsCurrency))
  then
  begin
    Warn('قیمت فروشگاه باید مابین قیمت خرید و مصرف کننده باشد');
    Abort;
  end;
  if ((qryOperationsTotalPrice.AsCurrency = qryOperationsOverheadPrice.
    AsCurrency) or (qryOperationsTotalPrice.AsCurrency = qryOperationsBasePrice.
    AsCurrency) or (qryOperationsOverheadPrice.AsCurrency =
    qryOperationsBasePrice.AsCurrency)) then
  begin
    Warn('قیمت ها نباید باهم برابر باشند');
    Abort;
  end;

  if (qryOperationsTotalPrice.AsCurrency = 0) then
  begin
    Warn('قیمت خرید نباید صفر باشد.');
    Abort;
  end;

  if qryOperationItems.State in dsEditModes then
  begin
    qryOperationItems.Post;
  end;
  if qryOptFamilies.State in dsEditModes then
  begin
    qryOptFamilies.Post;
  end;

end;

procedure TCnt_Contracts2F.qryOperationsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryOperationItems.Close;
  qryOptFamilies.Close
end;

procedure TCnt_Contracts2F.srcContractsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryContracts.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  actSelectAll.Visible := okPanel.Visible;
  actDeleteAll.Visible := okPanel.Visible;

  FreeReservedCodes(DMf.adcBsell, 'Cnt.Contracts', '', IntToStr(formType));
  FreeReservedCodes(DMf.adcBsell, '', '', Self.Name);

end;

procedure TCnt_Contracts2F.srcOperationItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanelOI.Visible := qryOperationItems.State in dsEditModes;
  newPanelOI.Visible := not okPanelOI.Visible;
  BtnReject.Cancel := newPanelOI.Visible;
end;

procedure TCnt_Contracts2F.srcOperationsStateChange(Sender: TObject);
begin
  inherited;
  okPanelO.Visible := qryOperations.State in dsEditModes;
  newPanelO.Visible := not okPanelO.Visible;
  BtnReject.Cancel := newPanelO.Visible;
  pnlContractOperationItems.Visible := okPanelO.Visible;
  pnlOptFamilies.Visible := okPanelO.Visible;
end;

procedure TCnt_Contracts2F.srcOptFamiliesStateChange(Sender: TObject);
begin
  inherited;
  okPanelF.Visible := qryOptFamilies.State in dsEditModes;
  newPanelF.Visible := not okPanelF.Visible;
  BtnReject.Cancel := newPanelF.Visible;
end;

procedure TCnt_Contracts2F.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TCnt_Contracts2F.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TCnt_Contracts2F.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TCnt_Contracts2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TCnt_Contracts2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdOptFamilies, 1);
  SetColSize(grdOperationItems, 2);
  SetColSize(grdOperations, 2);
  SetColSize(DBGrid1, 2);
end;

procedure TCnt_Contracts2F.grdOperationsKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TCnt_Contracts2F.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  grd: TDBGrid;
  FldName: string;
begin
  grd := (Sender as TDBGrid);
  if grd.Name = grdOperations.Name then
    FldName := 'OperationId'
  else if grd.Name = grdOptFamilies.Name then
    FldName := 'FStuffCode'
  else
    FldName := 'ItemKind';

  curIndex := grd.SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        aDataSet := grd.DataSource.DataSet;
        nextIndex := curIndex + 1;

        if (curIndex > 0) and (aDataSet.FieldByName(FldName).IsNull) then
        begin
          aDataSet.Cancel;
          okPanel.SetFocus;
          Exit;
        end;
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
      if grd.Columns[curIndex].ButtonStyle = TColumnButtonStyle.cbsEllipsis then
      begin
        Key := #0;
        if grd.Name = grdOperations.Name then
          grdOperationsEditButtonClick(Sender)
        else if grd.Name = grdOptFamilies.Name then
          grdOptFamiliesEditButtonClick(Sender)
        else
          grdOperationItemsEditButtonClick(Sender)
      end;
  end;

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
          grd.SelectedIndex := 0;
        end;
      -2:
        begin
          if grd.DataSource.State in dsEditModes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end;
      -3:
        begin
          if grd.DataSource.State in dsEditModes then
            grd.DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end;
    else
      grd.SelectedIndex := nextIndex;
    end;

end;

procedure TCnt_Contracts2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grdOperationItems);
  SaveColWidth(grdOperations);
  SaveColWidth(DBGrid1);
end;

end.
