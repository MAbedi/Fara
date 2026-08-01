unit ReciptsAnalysis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, SumDBGrid, StrUtils, SNDKEY32, Math,
  Menus, ppBands, ppCache, ppClass, ppDB, ppParameter, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DM, ppDesignLayer, System.ImageList, System.Actions;

type
  TReciptsAnalysisF = class(Ttemplate2MDIF)
    qryRecipts: TADOQuery;
    qryReciptsStoreID: TSmallintField;
    qryRecipts_StoresName: TStringField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsYearID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsReciptType: TWordField;
    qryReciptsReciptValue: TBCDField;
    qryReciptsDocNo: TIntegerField;
    qryReciptsDocDate: TStringField;
    qryReciptsReciptNote: TStringField;
    qryReciptsParentReciptID: TIntegerField;
    qryReciptsModifyDate: TDateTimeField;
    qryReciptsReciptState: TWordField;
    qryReciptsExpireDate: TStringField;
    qryReciptsSecondType: TWordField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsOperatorID: TIntegerField;
    qryRecipts_OperatorName: TStringField;
    qryReciptsAidDate: TStringField;
    qryReciptsAidNumber: TStringField;
    qryRecipts_StoreKind: TIntegerField;
    qryReciptsFirstUser: TStringField;
    qryReciptsLastUser: TStringField;
    qryReciptsReciptStartDate: TStringField;
    qryReciptsReciptEndDate: TStringField;
    qryRecipts_HasDeficit: TIntegerField;
    qryReciptsStoreID2: TSmallintField;
    qryRecipts_StoresName2: TStringField;
    qryReciptsMachineNo: TStringField;
    qryReciptsMachineName: TStringField;
    qryReciptsUseOtherID: TWideStringField;
    qryReciptsCostDownSave: TBCDField;
    qryReciptsParentCoReciptID: TIntegerField;
    qryReciptsDefaultDate: TStringField;
    qryReciptsInsertDate: TDateTimeField;
    qryReciptsPersonID3: TIntegerField;
    qryItems: TADOQuery;
    qryItemsReciptItemID: TIntegerField;
    qryItemsReciptID: TIntegerField;
    qryItemsStuffCode: TLargeintField;
    qryItemsStuffSize: TStringField;
    qryItemsStuffAlloy: TStringField;
    qryItemsYearID: TIntegerField;
    qryItemsServerID: TIntegerField;
    qryItemsOutputEntity: TFloatField;
    qryItemsOutputWeight: TFloatField;
    qryItemsStuffGrade: TWordField;
    qryItemsTotalOutputPrice: TBCDField;
    qryItemsUnitSellPrice: TFMTBCDField;
    qryItemsItemNote: TStringField;
    qryItems_StuffName: TStringField;
    qryItems_UnitName: TStringField;
    qryItemspreReciptItemID: TIntegerField;
    qryItemsStuffDiameter: TFloatField;
    qryItemsControlCode: TLargeintField;
    qryItemsPersonID1: TIntegerField;
    qryItems_PersonName1: TStringField;
    qryItemsFirstUser: TStringField;
    qryItemsLastUser: TStringField;
    srcRecipts: TDataSource;
    srcItems: TDataSource;
    qryinit: TADOQuery;
    DBGrid1: TDBGrid;
    pnlStore: TPanel;
    pnlStore1: TPanel;
    LblStore: TLabel;
    btnStoreID: TSpeedButton;
    DBTextStoreID: TDBText;
    EdtStoreID: TDBEdit;
    pnlStore2: TPanel;
    dbtxt_StoresName2: TDBText;
    btnStoreID2: TSpeedButton;
    LblStore2: TLabel;
    EdtStoreID2: TDBEdit;
    qryDItems: TADOQuery;
    srcDItems: TDataSource;
    srcDRecipts: TDataSource;
    qryDRecipts: TADOQuery;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    EdtRNum: TDBEdit;
    LblRecNo: TLabel;
    EdtReciptDate: TDBEdit;
    LblReciptDate: TLabel;
    qryStores: TADOQuery;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsPersonID2: TIntegerField;
    qryStuff_Unit_TecInf: TADOQuery;
    DataSetDelete1: TDataSetDelete;
    Panel4: TPanel;
    DBText12: TDBText;
    Label2: TLabel;
    BtnDelete2: TBitBtn;
    SumGrid1: TSumGrid;
    actPrint: TAction;
    qryDReciptsStoreID: TSmallintField;
    qryDRecipts_StoresName: TStringField;
    qryDReciptsReciptNumber: TIntegerField;
    qryDReciptsReciptDate: TStringField;
    qryDReciptsYearID: TIntegerField;
    qryDReciptsServerID: TIntegerField;
    qryDReciptsReciptType: TWordField;
    qryDReciptsReciptValue: TBCDField;
    qryDReciptsDocNo: TIntegerField;
    qryDReciptsDocDate: TStringField;
    qryDReciptsReciptNote: TStringField;
    qryDReciptsParentReciptID: TIntegerField;
    qryDReciptsModifyDate: TDateTimeField;
    qryDReciptsReciptState: TWordField;
    qryDReciptsExpireDate: TStringField;
    qryDReciptsSecondType: TWordField;
    qryDReciptsReciptID: TIntegerField;
    qryDReciptsOperatorID: TIntegerField;
    qryDRecipts_OperatorName: TStringField;
    qryDReciptsAidDate: TStringField;
    qryDReciptsAidNumber: TStringField;
    qryDRecipts_StoreKind: TIntegerField;
    qryDReciptsFirstUser: TStringField;
    qryDReciptsLastUser: TStringField;
    qryDReciptsReciptStartDate: TStringField;
    qryDReciptsPersonID1: TIntegerField;
    qryDReciptsPersonID2: TIntegerField;
    qryDReciptsReciptEndDate: TStringField;
    qryDRecipts_HasDeficit: TIntegerField;
    qryDReciptsStoreID2: TSmallintField;
    qryDRecipts_StoresName2: TStringField;
    qryDReciptsMachineNo: TStringField;
    qryDReciptsMachineName: TStringField;
    qryDReciptsUseOtherID: TWideStringField;
    qryDReciptsCostDownSave: TBCDField;
    qryDReciptsParentCoReciptID: TIntegerField;
    qryDReciptsDefaultDate: TStringField;
    qryDReciptsInsertDate: TDateTimeField;
    qryDReciptsPersonID3: TIntegerField;
    qryDItemsReciptItemID: TIntegerField;
    qryDItemsReciptID: TIntegerField;
    qryDItemsStuffCode: TLargeintField;
    qryDItemsStuffSize: TStringField;
    qryDItemsStuffAlloy: TStringField;
    qryDItemsYearID: TIntegerField;
    qryDItemsServerID: TIntegerField;
    qryDItemsStuffGrade: TWordField;
    qryDItemsUnitSellPrice: TFMTBCDField;
    qryDItemsItemNote: TStringField;
    qryDItems_StuffName: TStringField;
    qryDItems_UnitName: TStringField;
    qryDItemspreReciptItemID: TIntegerField;
    qryDItemsStuffDiameter: TFloatField;
    qryDItemsControlCode: TLargeintField;
    qryDItemsPersonID1: TIntegerField;
    qryDItems_PersonName1: TStringField;
    qryDItemsFirstUser: TStringField;
    qryDItemsLastUser: TStringField;
    qryDItemsInputEntity: TFloatField;
    qryDItemsInputWeight: TFloatField;
    qryDItemsTotalInputPrice: TBCDField;
    qryReciptsAddDecValue: TBCDField;
    qryDReciptsAddDecValue: TBCDField;
    qryReciptsTotalValue: TBCDField;
    qryDReciptsTotalValue: TBCDField;
    pnlStuffCode: TPanel;
    Label20: TLabel;
    LblControlCode: TLabel;
    EdtStuffCode: TDBEdit;
    EdtControlCode: TDBEdit;
    EdtStuffName: TDBEdit;
    Pnl_GradeToAlloy: TPanel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdtStuffGrade: TDBEdit;
    EdtStuffAlloy: TDBEdit;
    dbedtStuffDiameter: TDBEdit;
    EdtStuffSize: TDBEdit;
    PnlEntityWeightPrice: TPanel;
    LblEntity: TLabel;
    LblWeight: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    dbedtOutputEntity: TDBEdit;
    dbedtOutputWeight: TDBEdit;
    dbedtTotalOutputPrice: TDBEdit;
    EdtUnitSellPrice: TDBEdit;
    PnlPersonID1OnDetail: TPanel;
    dbtxt_PersonName1: TDBText;
    LblPerson1Items: TLabel;
    Label1: TLabel;
    DBEdit8: TDBEdit;
    Panel1: TPanel;
    LblAidInfoDate: TLabel;
    LblAidInfoNo: TLabel;
    PnlSecondType: TPanel;
    Label3: TLabel;
    CmbSecondType: TDBComboBox;
    edtReciptDate1: TDBEdit;
    edtReciptNumber: TDBEdit;
    PnlItemNote: TPanel;
    Label11: TLabel;
    DBMemo2: TDBMemo;
    qryItemsacc_DetailCode: TStringField;
    qryItemsacc_CTopicCode: TStringField;
    qryItemsacc_CTopicCode2: TStringField;
    qryDItemsacc_DetailCode: TStringField;
    qryDItemsacc_CTopicCode: TStringField;
    qryDItemsacc_CTopicCode2: TStringField;
    qryItemsAuxiliary: TFloatField;
    qryDItemsAuxiliary: TFloatField;
    qryItemsUseUnitID: TIntegerField;
    qryItemsAidNumber: TStringField;
    qryItemsAidDate: TStringField;
    qryDItemsUseUnitID: TIntegerField;
    qryDItemsAidNumber: TStringField;
    qryDItemsAidDate: TStringField;
    qryCustomer2Detail: TADOQuery;
    DBNavigator1: TDBNavigator;
    btnStuffCode: TSpeedButton;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBPipeline3: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    ppField36: TppField;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppDBPipeline4: TppDBPipeline;
    PopMuPrint: TPopupMenu;
    btnSearch_: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    btnSort: TBitBtn;
    actSort: TAction;
    qryDItems_UnitPriceUseKind: TIntegerField;
    qryDItems_SellPrice_S: TCurrencyField;
    qryItemsPestEntity: TBCDField;
    qryDItemsPestEntity: TBCDField;
    qryItemsProductModel: TIntegerField;
    qryItemsacc_CTopicCode3: TStringField;
    qryItems_CTopicCode3: TStringField;
    qryDItemsacc_CTopicCode3: TStringField;
    qryDItems_CTopicCode3: TStringField;
    qryItemsSecondTypeItem: TIntegerField;
    qryDItemsSecondTypeItem: TIntegerField;
    intgrfldItemsPrvYearID: TIntegerField;
    qryReciptsPrvYearID: TIntegerField;
    qryItemsacc_TopicCode: TLargeintField;
    qryDItemsacc_TopicCode: TLargeintField;
    qryDItemsOutputEntity: TFloatField;
    qryDItemsOutputWeight: TFloatField;
    qryItemsInputEntity: TFloatField;
    qryItemsInputWeight: TFloatField;
    qryItemsTotalInputPrice: TBCDField;
    qryItemsItemDate: TStringField;
    btnSearchReciptNumber: TSpeedButton;
    SpeedButton1: TSpeedButton;
    qryReciptsPersonID4: TIntegerField;
    qryDReciptsPersonID4: TIntegerField;
    qryDItemsSpecialCode: TStringField;
    BtnExcel: TBitBtn;
    qryReciptsReciptCaption: TStringField;
    qryDReciptsReciptCaption: TStringField;
    edtReciptCaption: TDBEdit;
    edtReciptCaption1: TDBEdit;
    qryItemsSpecialCode: TStringField;
    edtSpecialCode: TDBEdit;
    Label4: TLabel;
    qryItemsID: TFMTBCDField;
    qryDItemsID: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure btnStuffCodeClick(Sender: TObject);
    procedure btnStoreIDClick(Sender: TObject);
    procedure srcReciptsStateChange(Sender: TObject);
    procedure qryReciptsAfterDelete(DataSet: TDataSet);
    procedure qryReciptsAfterEdit(DataSet: TDataSet);
    procedure qryDItemsAfterEdit(DataSet: TDataSet);
    procedure qryReciptsAfterInsert(DataSet: TDataSet);
    procedure qryReciptsAfterPost(DataSet: TDataSet);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure qryReciptsBeforeCancel(DataSet: TDataSet);
    procedure qryReciptsBeforeDelete(DataSet: TDataSet);
    procedure qryReciptsBeforeEdit(DataSet: TDataSet);
    procedure qryReciptsBeforeInsert(DataSet: TDataSet);
    procedure qryReciptsBeforePost(DataSet: TDataSet);
    procedure qryItemsAfterEdit(DataSet: TDataSet);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure qryItemsBeforeDelete(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure qryDReciptsAfterInsert(DataSet: TDataSet);
    procedure qryDReciptsAfterPost(DataSet: TDataSet);
    procedure qryDReciptsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryDItemsAfterInsert(DataSet: TDataSet);
    procedure qryDItemsBeforeDelete(DataSet: TDataSet);
    procedure qryDItemsBeforePost(DataSet: TDataSet);
    procedure qryDReciptsBeforeCancel(DataSet: TDataSet);
    procedure qryDReciptsBeforeDelete(DataSet: TDataSet);
    procedure qryDReciptsBeforeEdit(DataSet: TDataSet);
    procedure qryDReciptsBeforePost(DataSet: TDataSet);
    procedure qryReciptsBeforeScroll(DataSet: TDataSet);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryDItemsBeforeEdit(DataSet: TDataSet);
    procedure mnu4allClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qryDItemsUnitSellPriceChange(Sender: TField);
    procedure qryDItemsInputWeightChange(Sender: TField);
    procedure qryDItemsInputEntityChange(Sender: TField);
    procedure qryDItemsTotalInputPriceChange(Sender: TField);
    procedure qryReciptsAfterCancel(DataSet: TDataSet);
    procedure AllEdtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryItemsOutputEntityChange(Sender: TField);
    procedure qryItemsBeforeEdit(DataSet: TDataSet);
    procedure btnSearchReciptNumberClick(Sender: TObject);
    procedure qryDItemsAfterScroll(DataSet: TDataSet);
    procedure BtnExcelClick(Sender: TObject);
  private
    myStore: TStore;
    ReciptType: Integer;
    CorrelateReciptType, UnitPriceReadOnly, MyEntityDisplayType: Byte;
    CurrentEntity, CurrentWeight: Extended;
    ReciptID4ParentReciptID: String;
    BeforeServerID, BeforeYearID: String;
    LimitFi: Currency;
    EntityEdit, WeightEdit: Double;
    GetExcelAct: Boolean;
    procedure initFormQry;
    procedure initFormPanel;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure InitDBCombos;
    procedure ChangeUnitSellPrice;
    procedure ChangeTotalInputPrice;
    procedure FindMasterForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciptsAnalysisF: TReciptsAnalysisF;

implementation

uses
  GlobalPro, mmessage, mdiMain, FormFunctions, FilterClass_ADO,
  searchCode_ADO, ReciptsFunctions, RecallSpecialRecipts, sort2, search2,
  FaraConsts, GetExcel;

{$R *.dfm}

procedure TReciptsAnalysisF.btnSearchReciptNumberClick(Sender: TObject);
begin
  inherited;
  SearchReciptNumber(qryinit, qryRecipts, myStore)
end;

procedure TReciptsAnalysisF.btnStoreIDClick(Sender: TObject);
var
  c, txt, s: String;
begin
  inherited;
  txt := 'SELECT n_StoreID, c_StoreName FROM Stores ';
  if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
    txt := txt + ' WHERE (StoreKind IN (' + qryinit.FieldByName('StoreKindList')
      .AsString + '))';
  s := searchCode_ADOF.SearchCode(DMF.adcBSell, c,
    qryinit.FieldByName('StoreCaption').AsString + 'ها', txt,
    ['کد', 'نام ' + qryinit.FieldByName('StoreCaption').AsString], alLeft);
  if s <> '' then
  begin
    if (Sender as TSpeedButton).Tag = 2 then
      qryRecipts['StoreID2'] := c
    else
      qryRecipts['StoreID'] := c;
  end; // if

end;

procedure TReciptsAnalysisF.FindMasterForm;
begin
  with DMF.qryTmpTmp do
    try
      Active := False;
      SQL.Text :=
        'SELECT dbo.ReciptTypes.ReciptCaption + '' انبار '' + LTRIM(Recipts_Recid.StoreID) + '' شماره '' + LTRIM';
      SQL.Add('(Recipts_Recid.ReciptNumber) AS Expr1');
      SQL.Add('FROM dbo.ReciptItems INNER JOIN');
      SQL.Add('dbo.ReciptItems AS ReciptItems_Tajziyeh ON dbo.ReciptItems.preReciptItemID =');
      SQL.Add('ReciptItems_Tajziyeh.ReciptItemID INNER JOIN');
      SQL.Add('dbo.ReciptItems AS ReciptItems_Recid ON ReciptItems_Tajziyeh.preReciptItemID =');
      SQL.Add('ReciptItems_Recid.ReciptItemID INNER JOIN');
      SQL.Add('dbo.Recipts AS Recipts_Recid ON ReciptItems_Recid.ReciptID = Recipts_Recid.ReciptID AND');
      SQL.Add('ReciptItems_Recid.ServerID = Recipts_Recid.ServerID AND');
      SQL.Add('ReciptItems_Recid.YearID = Recipts_Recid.YearID INNER JOIN');
      SQL.Add('dbo.Recipts AS Recipts ON dbo.ReciptItems.ReciptID = Recipts.ReciptID AND dbo.ReciptItems.ServerID =');
      SQL.Add('Recipts.ServerID AND dbo.ReciptItems.YearID = Recipts.YearID INNER JOIN');
      SQL.Add('dbo.Recipts AS Recipts_Tajziyeh ON ReciptItems_Tajziyeh.ReciptID = Recipts_Tajziyeh.ReciptID AND');
      SQL.Add('ReciptItems_Tajziyeh.ServerID = Recipts_Tajziyeh.ServerID AND');
      SQL.Add('ReciptItems_Tajziyeh.YearID = Recipts_Tajziyeh.YearID INNER JOIN');
      SQL.Add('dbo.ReciptTypes ON Recipts_Recid.ReciptType = dbo.ReciptTypes.ReciptType');
      SQL.Add('WHERE (Recipts.ReciptType IN');
      SQL.Add('(SELECT CorrelateReciptType');
      SQL.Add('FROM dbo.ReciptTypes1');
      SQL.Add('WHERE (TemplateCode = 7))) ');
      SQL.Add('AND (dbo.ReciptItems.ReciptItemID = :ReciptItemID)');
      Parameters.ParamByName('ReciptItemID').Value :=
        qryDItemsReciptItemID.AsInteger;
      Active := True;
      DBGrid1.Hint := Fields[0].AsString;
    finally
      Active := False;
    end;
end;

procedure TReciptsAnalysisF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = 'stuffsize')
    or (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName)
    = 'stuffdiameter') or
    (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = 'stuffalloy')
  then
    SetKeyboardLatin;
end;

procedure TReciptsAnalysisF.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if (LowerCase(DBGrid1.Columns[DBGrid1.SelectedIndex].FieldName) = 'stuffalloy')
  then
    SetKeyboardFarsi;
end;

procedure TReciptsAnalysisF.DBGrid1EditButtonClick(Sender: TObject);
var
  txt, s_StoreID, TxtYearID: String;
  b: Boolean;
  Results: array [0 .. 15] of String;
  i: Byte;
  Fields_SD_1_9: String;
  colTopics_Search: array [0 .. 15] of String;
const
  colWidths_Search: array [0 .. 15] of Smallint = (50, 100, 50, 100, 100, 70,
    70, 0, 0, 0, 0, 0, 0, 0, 0, 0);
begin
  inherited;
  if opt.EntityDisplay then
    colTopics_Search[5] := opt.EntityCaption;
  if opt.WeightDisplay then
    colTopics_Search[6] := opt.WeightCaption;
  colTopics_Search[0] := 'کد';
  colTopics_Search[1] := 'نام كالا';
  colTopics_Search[2] := 'واحد';
  colTopics_Search[3] := 'مشخصات فني';
  colTopics_Search[4] := 'بهاي فروش 1';
  for i := 1 to 9 do
  begin
    colTopics_Search[i + 6] := opt.ExtraCoding.Captions[i];
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      colWidths_Search[i + 6] := 100;
      Fields_SD_1_9 := Fields_SD_1_9 + ',StuffCoding.sd' + IntToStr(i);
    end;
  end;
  TxtYearID := Format(' AND (Recipts.YearID BETWEEN %d AND %d )',
    [opt.DefaultYear, APPBank.Year]);
  // b := False;
  s_StoreID := IfThen(qryDRecipts.FieldByName('StoreID').IsNull, '0',
    qryDRecipts.FieldByName('StoreID').AsString);

  txt := ' SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName,StuffCoding.c_StuffTecInfo,StuffCoding.SellPrice1 '
    + Fields_SD_1_9 +
    ' FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode '
    + ' LEFT OUTER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode ';

  IF pnlStore.Visible THEN
    txt := txt + ' WHERE (StuffCoding.State = 0)AND(StoreStuffs.n_StoreID = ' +
      s_StoreID + ' ) ';
  txt := txt +
    '  GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName, StuffCoding.c_StuffTecInfo, StuffCoding.SellPrice1 ';
  txt := txt + Fields_SD_1_9;
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ', txt,
    colTopics_Search, Results, colWidths_Search, alLeft);
  if b then
  begin
    if not(qryDItems.state in dsEditModes) then
      qryDItems.edit;
    qryDItems.FieldByName('StuffCode').AsString := Results[0];
  end; // if

end;

procedure TReciptsAnalysisF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0
end;

procedure TReciptsAnalysisF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TReciptsAnalysisF.AllEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('Btn' + (Sender as TDBEdit).DataField)).Click;
end;

procedure TReciptsAnalysisF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
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
        nextIndex := curIndex + 1;

        if (curIndex > 0) and (aDataSet.FieldByName('_StuffName').IsNull) then
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
      if LowerCase(DBGrid1.Columns[curIndex].FieldName) <> 'stuffsize' then
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.state in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin // in [1,17,19,23,24,25,26] then begin
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
          DBGrid1.SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TReciptsAnalysisF.FormCreate(Sender: TObject);
begin
  inherited;
  GetExcelAct := False;
  myStore := DM.myStore;
  try
    SetLookUpCash(qryRecipts);
    SetLookUpCash(qryItems);
    SetLookUpCash(qryDRecipts);
    SetLookUpCash(qryDItems);
    ReciptsAnalysisF.initFormQry;
  except
    Self.Free;
    exit;
  end;
  With qryRecipts do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
  end; // with
  qryRecipts.Last;
end;

procedure TReciptsAnalysisF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(ReciptType));
end;

procedure TReciptsAnalysisF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(ReciptType));
end;

procedure TReciptsAnalysisF.initFormQry;
var
  StoreKindList: String;
  b: Boolean;
begin
  ReciptType := var_glb_gParam;

  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
    if FieldByName('OrderByFields').AsString <> EmptyStr then
      qryItems.SQL.Add('ORDER BY ' + FieldByName('OrderByFields').AsString);

    CorrelateReciptType := FieldByName('CorrelateReciptType').AsInteger;

    lblCaption.Hint := IntToStr(ReciptType) + 'ReciptType' +
      IntToStr(CorrelateReciptType) + 'CorrelateReciptType';
    UnitPriceReadOnly := FieldByName('UnitPriceReadOnly').AsInteger;

    if FieldByName('RequestedChange').AsInteger = 2 then
      MyEntityDisplayType := 2
    else
      MyEntityDisplayType := opt.EntityDisplayType;

    PnlSecondType.Visible := FieldByName('SecondTypeActive').AsInteger
      in [1, 3];
    qryRecipts.FieldByName('SecondType').Required := PnlSecondType.Visible;

    b := FieldByName('NoteShow').AsInteger in [2, 3, 4];
    PnlItemNote.Visible := b;

    PnlEntityWeightPrice.Visible := opt.AidInfoAvailable;
    Pnl_GradeToAlloy.Visible := opt.AidInfoAvailable;
    PnlPersonID1OnDetail.Visible := opt.AidInfoAvailable;
    // if not opt.AidInfoAvailable then
    LblControlCode.Caption := FieldByName('ControlCodeCaption').AsString;

    qryItems.FieldByName('ControlCode').DisplayLabel :=
      FieldByName('ControlCodeCaption').AsString;

    qryDItems.FieldByName('ControlCode').DisplayLabel :=
      FieldByName('ControlCodeCaption').AsString;

  end;

  with qryStores do
  begin
    StoreKindList := qryinit.FieldByName('StoreKindList').AsString;
    if StoreKindList <> EmptyStr then
    begin
      StoreKindList := ' AND (Stores.StoreKind IN (' + StoreKindList + '))';
      SQL.Text := StringReplace(SQL.Text, ':StoreKindList', StoreKindList,
        [rfReplaceAll])
    end
    else
      SQL.Text := StringReplace(SQL.Text, ':StoreKindList', '', [rfReplaceAll]);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      IfThen(User.PowerUser, 127, User.id);
  end; // with
  qryItems.Active := False;
  ReciptID4ParentReciptID := '';
  initReportName(qryinit, PopMuPrint, mnu4allClick);
  initFormPanel;
end;

procedure TReciptsAnalysisF.InitDBCombos;
var
  Kind: Integer;
begin
  CmbSecondType.Clear;
  Kind := qryinit.FieldByName('FormKindSerial').AsInteger;
  if Kind <> 0 then
    with DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
        IntToStr(Kind) + ')ORDER BY Code';
      Active := True;
      while not Eof do
      begin
        CmbSecondType.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end; // while
    end; // with
end;

procedure TReciptsAnalysisF.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
end;

procedure TReciptsAnalysisF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('PrintLevelID'), qryRecipts) then
    Abort;
  if not CheckControlPrintingByDate(qryinit, qryRecipts) then
    Abort;
  if (qryinit.FieldByName('AutoStateChange').AsInteger = 1) and
    (qryRecipts.FieldByName('ReciptState').Value = 0) then
    AutoStateChange(qryRecipts, qryinit);

  try
    qryRecipts.DisableControls;
    qryItems.DisableControls;
    qryDRecipts.DisableControls;
    qryDItems.DisableControls;
    PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
  finally
    qryRecipts.EnableControls;
    qryItems.EnableControls;
    qryDRecipts.EnableControls;
    qryDItems.EnableControls;
  end; // try

end;

procedure TReciptsAnalysisF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDItems);
end;

procedure TReciptsAnalysisF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDItems);
end;

procedure TReciptsAnalysisF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsAnalysisF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TReciptsAnalysisF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TReciptsAnalysisF.BtnExcelClick(Sender: TObject);
begin
  inherited;
  if (qryDItems.RecordCount = 0) or (DataSetEdit1.Execute) then
    try
      qryDItems.AfterScroll := nil;
      qryRecipts.edit;
      GetExcelAct := True;
      GetExcelF.ShowImPortExcel(qryDItems);
    finally
      if GetExcelAct then
        GetANewID4Excel(qryDItems, qryRecipts, qryinit);
      qryDItems.AfterScroll := qryDItemsAfterScroll;
    end;

end;

procedure TReciptsAnalysisF.qryDItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.name;
end;

procedure TReciptsAnalysisF.qryDItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryDRecipts) then
  begin
    DataSet.Cancel;
    exit;
  end;
  if not(qryDRecipts.state in dsEditModes) then
    qryDRecipts.edit;
  GetANewID(DataSet, IntToStr(ReciptType), 'ReciptItems', 'ReciptItemID',
    qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryDRecipts.FieldByName('ReciptID').Value;
  DataSet.FieldByName('StuffCode').AsLargeInt := 0;
  AccCodingShowInsert(qryinit, qryDItems, qryDRecipts);
  DataSet.FieldByName('FirstUser').AsString := User.name;
  if (qryinit.FieldByName('MaxControlCode').AsInteger = 1) and
    (DataSet.RecordCount = 0) then
  begin
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT MAX(ReciptItems.ControlCode) + 1 FROM Recipts INNER JOIN ' +
        ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID '
        + ' WHERE Recipts.StoreID=' + qryReciptsStoreID.AsString;
      Active := True;
      TADOQuery(DataSet).FieldByName('ControlCode').AsString :=
        Fields[0].AsString;
      Active := False;
    end;
  end;
  DataSet.FieldByName('PersonID1').AsInteger :=
    qryItems.FieldByName('PersonID1').AsInteger;
  DataSet.FieldByName('preReciptItemID').AsInteger :=
    qryItems.FieldByName('ReciptItemID').AsInteger;

  DataSet.FieldByName('StuffGrade').AsString :=
    qryItems.FieldByName('StuffGrade').AsString;
  // DataSet.FieldByName('StuffSize').AsString:=qryItems.FieldByName('StuffSize').AsString;
  DataSet.FieldByName('StuffDiameter').AsString :=
    qryItems.FieldByName('StuffDiameter').AsString;
  DataSet.FieldByName('StuffAlloy').AsString :=
    qryItems.FieldByName('StuffAlloy').AsString;
  DataSet.FieldByName('ControlCode').AsString :=
    qryItems.FieldByName('ControlCode').AsString;

  DataSet.FieldByName('SpecialCode').AsString :=
    qryItems.FieldByName('SpecialCode').AsString;


  DataSet.FieldByName('InputEntity').AsFloat := 1;
  // Abs( qryItems.FieldByName('OutputEntity').AsFloat-
  // CalcSumFileds(qryDItemsInputEntity) );

  DataSet.FieldByName('InputWeight').AsFloat :=
    RoundTo(Abs(qryItems.FieldByName('OutputWeight').AsFloat -
    CalcSumFileds(qryDItemsInputWeight)), -2);

  if qryinit.FieldByName('UnitPriceReadOnly').AsInteger = 1 then
    DataSet.FieldByName('UnitSellPrice').AsCurrency :=
      qryItems.FieldByName('UnitSellPrice').AsCurrency
  else
    DataSet.FieldByName('TotalInputPrice').AsCurrency :=
      qryItemsTotalOutputPrice.AsCurrency;

end;

procedure TReciptsAnalysisF.qryDItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FindMasterForm
end;

procedure TReciptsAnalysisF.qryDItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not OkDeleteItem(qryDItems.FieldByName('ReciptItemID').AsString,
    qryDRecipts) then
    Abort;
  if get_response(' آيا براي حذف كالا  ' + qryDItemsStuffCode.AsString +
    DMF.s_Msm + '  مطمئن هستيد؟') <> mrYes then
    Abort;

end;

procedure TReciptsAnalysisF.qryDItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryDRecipts.state in dsEditModes) then
    Abort;
end;

procedure TReciptsAnalysisF.qryDItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryDRecipts.FieldByName('ReciptID').Value;

  if DataSet.FieldByName('_StuffName').IsNull then
    try
      DataSet.Cancel;
      BigMessage('نام كالا وارد نشده', 1);
      Abort
    finally
      qryRecipts.edit;
    end;

  if (qryDItemsInputEntity.AsFloat < 0) or (qryDItemsInputWeight.AsFloat < 0) or
    (qryDItemsTotalInputPrice.AsCurrency < 0) then
  begin
    Warn('عدد منفی است.‏');
    Abort;
  end;
  TrimStringFields(qryDItems);
  if not CheckRequiredFields(qryDItems) then
    Abort;
  if not ValidateDatasetDatesRecipts(qryDItems, qryinit) then
    Abort;
  DataSet.FieldByName('ControlCode').AsString :=
    IfThen(DataSet.FieldByName('ControlCode').IsNull, '0',
    DataSet.FieldByName('ControlCode').AsString);

  if Price_Read_Only(qryinit, qryDItems) then
    Abort;

end;

procedure TReciptsAnalysisF.qryDItemsInputEntityChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly in [0, 2] then
    ChangeTotalInputPrice;
  if UnitPriceReadOnly in [1, 2] then
    ChangeUnitSellPrice;
end;

procedure TReciptsAnalysisF.qryDItemsInputWeightChange(Sender: TField);
begin
  inherited;
  if UnitPriceReadOnly in [0, 2] then
    ChangeTotalInputPrice;
  if UnitPriceReadOnly in [1, 2] then
    ChangeUnitSellPrice;
end;

procedure TReciptsAnalysisF.qryDItemsTotalInputPriceChange(Sender: TField);
begin
  inherited;
  ChangeTotalInputPrice;
  // EndOfPrice((Sender as TField).FieldName); //TotalInputPrice
end;

procedure TReciptsAnalysisF.qryDItemsUnitSellPriceChange(Sender: TField);
begin
  inherited;
  ChangeUnitSellPrice;
end;

procedure TReciptsAnalysisF.ChangeUnitSellPrice;
var
  Total, Weight, Entity: Currency;
  SellPrice: Real;
begin
  if qryDItemsAuxiliary.AsInteger > 0 then
    exit;
  if not(qryDRecipts.state in dsEditModes) or not(qryDItems.state in dsEditModes)
  then
    exit;
  SellPrice := qryDItemsUnitSellPrice.AsFloat;
  Entity := qryDItemsInputEntity.AsCurrency;
  Weight := qryDItemsInputWeight.AsCurrency;
  Weight := RoundTo(Weight, opt.RoundEntity);
  Total := 0;
  if UnitPriceReadOnly in [1, 2] then
  begin
    LimitFi := GetLimitFi(qryDItems);
    case MyEntityDisplayType of
      0:
        Total := Entity * SellPrice;
      1:
        Total := Weight * SellPrice;
      2:
        if SellPrice >= LimitFi then
          Total := Weight * SellPrice
        else
          Total := Entity * SellPrice;
      3:
        if SellPrice >= LimitFi then
          Total := Entity * SellPrice
        else
          Total := Weight * SellPrice;
    end; // case
    Total := RoundTo(Total, 0);
    if Total <> qryDItemsTotalInputPrice.AsCurrency then
      qryDItemsTotalInputPrice.AsCurrency := Total;
  end; // if
end;

procedure TReciptsAnalysisF.ChangeTotalInputPrice;
var
  Total, Weight, Entity: Currency;
  SellPrice: Real;
begin
  inherited;
  if qryDItemsAuxiliary.AsInteger > 0 then
    exit;
  if not(qryDRecipts.state in dsEditModes) or not(qryDItems.state in dsEditModes)
  then
    exit;
  if (UnitPriceReadOnly in [0, 2]) then
  begin
    Entity := qryDItemsInputEntity.AsCurrency;
    SellPrice := qryDItemsUnitSellPrice.AsFloat;
    Total := qryDItemsTotalInputPrice.AsCurrency;
    Weight := qryDItemsInputWeight.AsCurrency;
    Weight := RoundTo(Weight, opt.RoundEntity);
    if Entity = 0 then
      Entity := 1;
    if Weight = 0 then
      Weight := 1;
    LimitFi := GetLimitFi(qryDItems);
    case MyEntityDisplayType of
      0:
        SellPrice := Total / Entity;
      1:
        SellPrice := Total / Weight;
      2:
        if SellPrice >= LimitFi then
          SellPrice := Total / Weight
        else
          SellPrice := Total / Entity;
      3:
        if SellPrice >= LimitFi then
          SellPrice := Total / Entity
        else
          SellPrice := Total / Weight;
    end; // case
    SellPrice := RoundTo(SellPrice, -2);
    if SellPrice <> qryDItemsUnitSellPrice.AsFloat then
      qryDItemsUnitSellPrice.AsFloat := SellPrice;
  end; // if
end;

procedure TReciptsAnalysisF.qryDReciptsAfterInsert(DataSet: TDataSet);
var
  i, StoreID, StoreID2: Integer;
begin
  inherited;
  StoreID := qryReciptsStoreID.AsInteger;
  StoreID2 := qryReciptsStoreID2.AsInteger;

  for i := 0 to qryRecipts.Fields.Count - 1 do
    if (qryRecipts.Fields[i].FieldKind in [fkData]) and not qryRecipts.Fields[i]
      .ReadOnly and (qryRecipts.Fields[i].AsString <> '') and
      (DataSet.FindField(qryRecipts.Fields[i].FieldName) <> nil) then
      DataSet.FieldByName(qryRecipts.Fields[i].FieldName).AsString :=
        qryRecipts.Fields[i].AsString;

  GetANewID(DataSet, IntToStr(CorrelateReciptType), 'Recipts', 'ReciptID', nil,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  qryDReciptsParentReciptID.AsInteger := qryReciptsReciptID.AsInteger;
  qryReciptsParentReciptID.AsInteger := qryDReciptsReciptID.AsInteger;
  qryRecipts.FieldByName('PrvYearID').AsInteger :=
    qryDRecipts.FieldByName('YearID').AsInteger;
  DataSet.FieldByName('StoreID').AsInteger := StoreID2;
  DataSet.FieldByName('StoreID2').AsInteger := StoreID;
  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  DataSet.FieldByName('ReciptType').AsInteger := CorrelateReciptType;

end;

procedure TReciptsAnalysisF.qryDReciptsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid2 := qryDItemsReciptItemID.AsInteger;
  if qryDItems.state in dsEditModes then
    qryDItems.Post;
  try
    qryDItems.UpdateBatch;
    rid := qryDReciptsReciptID.AsInteger;
    qryDRecipts.Requery;
    qryDRecipts.Locate('ReciptID', rid, []);
    qryDItems.Requery;
    qryDItems.Locate('ReciptItemID', rid2, []);
    BigMessage('ثبت شد.', 1);
  except
    on E: Exception do
    begin
      Warn(E.Message);
      DataToExcel(qryDItems);
      // ReItemID(qryDItems, qryDRecipts, 'ReciptItems', 'ReciptItemID',
      // IntToStr(CorrelateReciptType), qryinit.FieldByName('StepCorrelate')
      // .AsInteger);
    end;
  end; // try

  ControlCodeUnic(qryDRecipts.FieldByName('ReciptID').AsInteger, qryinit);
  qryDRecipts.EnableControls;

end;

procedure TReciptsAnalysisF.qryDReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryDRecipts.DisableControls;
  qryDItems.DisableControls;
  with qryDItems do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
      .FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
      .FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('preReciptItemID').Value :=
      qryItems.FieldByName('ReciptItemID').AsInteger;
    Active := True;
    Last;
  end; // with
  LblRecNo.Hint := Format('فرم %d از %d', [DataSet.RecNo, DataSet.RecordCount]);
  qryDRecipts.EnableControls;
  qryDItems.EnableControls;

end;

procedure TReciptsAnalysisF.qryDReciptsBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  qryDItems.Cancel;
  qryDItems.Requery();
end;

procedure TReciptsAnalysisF.qryDReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckDay4Edit(qryinit, qryRecipts) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryDRecipts) then
    Abort;

  if not ChkReciptState4Delete(qryinit, qryDRecipts) then
    Abort;

  If not OkDeleteItem(GetReciptItemIDs(CurrentEntity, CurrentWeight, qryDItems,
    qryinit, 'Output', MyEntityDisplayType, 'ReciptItemID',false), qryRecipts) then
    Abort;
  if not OkDeleteMaster(qryDRecipts.FieldByName('ReciptID').AsString,
    ReciptID4ParentReciptID, qryDRecipts, qryinit) then
    Abort;
  if not OkDelete(qryDRecipts, False, 0) then
    Abort;

end;

procedure TReciptsAnalysisF.qryDReciptsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryRecipts.state in dsEditModes) then
    qryRecipts.edit;
  if ChkFlowForms(qryRecipts) then
    Abort;
  if not CheckDay4Edit(qryinit, qryRecipts) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('EditLevelID'), qryRecipts) then
    Abort;
  if not AllStateControls(qryDRecipts, qryItems, qryinit, 'Recipt') then
    Abort;
  // if qryinit.FieldByName('UserSecurityCheckActive').Value = 1 then
  if UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive').AsInteger,
    UserRegistrar) then
    if ((qryDReciptsOperatorID.AsInteger = User.id) or (User.PowerUser)) then
    begin
      DBGrid1.Enabled := False;
    end // if
    else
    begin
      Warn('ويرايش اين فرم در سطح دسترسي کاربر ثبت کننده آن مي‌باشد.');
      Abort;
    end; // else

end;

procedure TReciptsAnalysisF.qryDReciptsBeforePost(DataSet: TDataSet);
var
  r: Real48;
begin
  inherited;
  r := 0;
  try
    if qryDItems.state in dsEditModes then
      qryDItems.Post;
    DataSet.FieldByName('ModifyDate').AsDateTime := now;
    TrimStringFields(qryDRecipts);
    if not CheckRequiredFields(qryDRecipts) then
      Abort;
    if not ValidateDatasetDatesRecipts(DataSet, qryinit) then
      Abort;
    // if not ValidReciptNumber(qrydRecipts,qryinit) then Abort;
    qryDRecipts.FieldByName('ReciptValue').AsCurrency :=
      Calc_SumFileds('Price', qryDItems, qryinit);
    if CheckedMaxCredit(qryinit, qryDItems, qryDRecipts) then
      Abort;
    if LimitRecord(qryDItems, qryinit, False) then
      Abort;
    FnCorrelate4EditActiveDelete(qryDRecipts,
      qryinit.FieldByName('Correlate4EditActive').AsInteger);
    GetReciptNumber(qryinit, DataSet, 1, myStore);
    ReciptsSumOnStuffCode(qryDRecipts, qryDItems, qryinit, 'InputEntity');

    r := RoundTo(CalcSumFileds(qryDItemsInputWeight) -
      qryItemsOutputWeight.AsFloat, -2);
    if r <> 0 then
    begin
      // Warn(Format('وزن تجزيه شده '+ FloatToStr(r)+' اختلاف دارد');// FloatToStrF(r,ffFixed,2,18)
      Warn(Format('وزن تجزيه شده %f اختلاف دارد', [r]));
      // FloatToStrF(r,ffFixed,2,18)
      // Abort;
    end;

  finally
    if r <> 0 then
    begin
      qryRecipts.edit;
    end;

  end;

end;

procedure TReciptsAnalysisF.qryItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.name;
end;

procedure TReciptsAnalysisF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryRecipts) then
  begin
    DataSet.Cancel;
    exit;
  end;
  if not(qryRecipts.state in dsEditModes) then
    qryRecipts.edit;
  GetANewID(DataSet, IntToStr(ReciptType), 'ReciptItems', 'ReciptItemID',
    qryRecipts, qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').Value;
  DataSet.FieldByName('StuffCode').AsLargeInt := 0;
  AccCodingShowInsert(qryinit, qryItems, qryRecipts);
  DataSet.FieldByName('FirstUser').AsString := User.name;
  if (qryinit.FieldByName('MaxControlCode').AsInteger = 1) and
    (DataSet.RecordCount = 0) then
  begin
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT MAX(ReciptItems.ControlCode) + 1 FROM Recipts INNER JOIN ' +
        ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID '
        + ' WHERE Recipts.StoreID=' + qryReciptsStoreID.AsString;
      Active := True;
      TADOQuery(DataSet).FieldByName('ControlCode').AsString :=
        Fields[0].AsString;
      Active := False;
    end;
  end;
  if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [0, 1] then
    DataSet.FieldByName('PersonID1').AsInteger :=
      qryRecipts.FieldByName('PersonID1').AsInteger;
  if qryinit.FieldByName('PersonID1OnDetailActive').AsInteger in [3] then
    DataSet.FieldByName('PersonID1').AsInteger :=
      qryRecipts.FieldByName('PersonID2').AsInteger;

end;

procedure TReciptsAnalysisF.qryItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not OkDeleteItem(qryItems.FieldByName('ReciptItemID').AsString, qryRecipts)
  then
    Abort;
  if get_response(' آيا براي حذف كالا  ' + qryItemsStuffCode.AsString +
    DMF.s_Msm + '  مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TReciptsAnalysisF.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  EntityEdit := 0;
  WeightEdit := 0;
  if not(qryRecipts.state in dsEditModes) then
    Abort;
  if not qryItems.FieldByName('OutputEntity').IsNull then
    EntityEdit := qryItems.FieldByName('OutputEntity').AsFloat;
  if not qryItems.FieldByName('OutputWeight').IsNull then
    WeightEdit := qryItems.FieldByName('OutputWeight').AsFloat;
end;

procedure TReciptsAnalysisF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').Value;

  if (qryItemsOutputEntity.AsFloat < 0) or (qryItemsOutputWeight.AsFloat < 0) or
    (qryItemsTotalOutputPrice.AsCurrency < 0) then
  begin
    Warn('عدد منفی است.‏');
    Abort;
  end;
  TrimStringFields(qryItems);
  if not CheckRequiredFields(qryItems) then
    Abort;
  if not ValidateDatasetDatesRecipts(qryItems, qryinit) then
    Abort;
  DataSet.FieldByName('ControlCode').AsString :=
    IfThen(DataSet.FieldByName('ControlCode').IsNull, '0',
    DataSet.FieldByName('ControlCode').AsString);

  if Price_Read_Only(qryinit, qryItems) then
    Abort;

end;

procedure TReciptsAnalysisF.qryItemsOutputEntityChange(Sender: TField);
begin
  inherited;
  if (not qryItems.FieldByName('OutputWeight').IsNull) and (EntityEdit <> 0)
  then
    qryItems.FieldByName('OutputWeight').AsFloat :=
      RoundTo((WeightEdit * qryItems.FieldByName('OutputEntity').AsFloat) /
      EntityEdit, opt.RoundEntity);

end;

procedure TReciptsAnalysisF.qryReciptsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryRecipts.Requery();
end;

procedure TReciptsAnalysisF.qryReciptsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('فرم حذف شد.', 1);
end;

procedure TReciptsAnalysisF.qryReciptsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.name;
  qryDRecipts.edit;
end;

procedure TReciptsAnalysisF.qryReciptsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PersonID2').AsInteger := 0;
  DataSet.FieldByName('PersonID3').AsInteger := 0;
  DataSet.FieldByName('PersonID4').AsInteger := 0;

  DataSet.FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('InsertDate').AsDateTime := now;
  DataSet.FieldByName('OperatorID').AsInteger := User.id;
  DataSet.FieldByName('ReciptType').AsInteger := ReciptType;

  ReciptStateAutoStateChange(qryinit, DataSet);

  DataSet.FieldByName('AddDecValue').AsInteger := 0;
  DataSet.FieldByName('TotalValue').AsInteger := 0;
  DataSet.FieldByName('SecondType').AsInteger := CmbSecondType.Tag;
  DataSet.FieldByName('UseOtherID').AsCurrency := 0;
  DataSet.FieldByName('PersonID1').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := User.name;
  GetANewID(DataSet, IntToStr(ReciptType), 'Recipts', 'ReciptID', nil,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  GetReciptNumber(qryinit, DataSet, 0, myStore);
  EdtStoreID.SetFocus;
end;

procedure TReciptsAnalysisF.qryReciptsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  qryDRecipts.Post;
  rid2 := qryItemsReciptItemID.AsInteger;
  if qryItems.state in dsEditModes then
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
      // ReItemID(qryItems, qryRecipts, 'ReciptItems', 'ReciptItemID',
      // IntToStr(ReciptType), qryinit.FieldByName('StepCorrelate').AsInteger);
    end;
  end; // try

  ControlCodeUnic(qryRecipts.FieldByName('ReciptID').AsInteger, qryinit);

  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 1 then
    StuffCodeUnic(qryRecipts, qryItems, qryinit);

  if (qryinit.FieldByName('AutoStateChange').AsInteger = 0) and
    (qryRecipts.FieldByName('ReciptState').AsInteger = 0) then
    AutoStateChange(qryRecipts, qryinit);

  if (qryinit.FieldByName('PrintAfterPost').AsInteger = 1) then
    actPrint.Execute;
  qryRecipts.EnableControls;

end;

procedure TReciptsAnalysisF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryRecipts.DisableControls;
  qryItems.DisableControls;
  with qryItems do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value := TADOQuery(DataSet)
      .FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
      .FieldByName('YearID').AsInteger;
    Parameters.ParamByName('ServerID').Value := TADOQuery(DataSet)
      .FieldByName('ServerID').AsInteger;
    Active := True;
  end; // with
  LblRecNo.Hint := Format('فرم %d از %d', [DataSet.RecNo, DataSet.RecordCount]);
  qryRecipts.EnableControls;
  qryItems.EnableControls;

  with qryDRecipts do
  begin
    Active := False;
    Parameters.ParamByName('ParentReciptID').Value :=
      qryReciptsReciptID.AsInteger;
    Parameters.ParamByName('YearID').Value := TADOQuery(DataSet)
      .FieldByName('YearID').AsInteger;
    Parameters.ParamByName('ReciptType').Value := CorrelateReciptType;
    Active := True;
  end; // with

end;

procedure TReciptsAnalysisF.qryReciptsBeforeCancel(DataSet: TDataSet);
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

procedure TReciptsAnalysisF.qryReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckDay4Edit(qryinit, qryRecipts) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryRecipts) then
    Abort;

  if not ChkReciptState4Delete(qryinit, qryRecipts) then
    Abort;

  If not OkDeleteItem(GetReciptItemIDs(CurrentEntity, CurrentWeight, qryItems,
    qryinit, 'Output', MyEntityDisplayType, 'ReciptItemID',False), qryRecipts) then
    Abort;
  if not OkDeleteMaster(qryRecipts.FieldByName('ReciptID').AsString,
    ReciptID4ParentReciptID, qryRecipts, qryinit) then
    Abort;
  if not OkDelete(qryRecipts, False, 0) then
    Abort;
  BeforeServerID := qryRecipts.FieldByName('ServerID').AsString;
  BeforeYearID := qryRecipts.FieldByName('YearID').AsString;

end;

procedure TReciptsAnalysisF.qryReciptsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not CheckDay4Edit(qryinit, qryRecipts) then
    Abort;
  if not CheckMakeDoc(DataSet) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('EditLevelID'), qryRecipts) then
    Abort;
  if not AllStateControls(qryRecipts, qryItems, qryinit, 'Recipt') then
    Abort;
  // if qryinit.FieldByName('UserSecurityCheckActive').Value = 1 then
  if UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive').AsInteger,
    UserRegistrar) then
    if ((qryReciptsOperatorID.AsInteger = User.id) or (User.PowerUser)) then
    begin
      DBGrid1.Enabled := False;
    end // if
    else
    begin
      Warn('ويرايش اين فرم در سطح دسترسي کاربر ثبت کننده آن مي‌باشد.');
      Abort;
    end; // else

end;

procedure TReciptsAnalysisF.qryReciptsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not IsCorrelateReciptType(qryinit) then
    Abort;
  if not CheckUserlevel(qryinit.FieldByName('ADDLevelID'), qryRecipts) then
    Abort;
  CmbSecondType.Tag := qryRecipts.FieldByName('SecondType').AsInteger;
end;

procedure TReciptsAnalysisF.qryReciptsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryItems.state in dsEditModes then
    qryItems.Post;
  DataSet.FieldByName('ModifyDate').AsDateTime := now;
  TrimStringFields(qryRecipts);
  if not CheckRequiredFields(qryRecipts) then
    Abort;
  if not ValidateDatasetDatesRecipts(DataSet, qryinit) then
    Abort;
  if not ValidReciptNumber(qryRecipts, qryinit, myStore) then
    Abort;
  qryRecipts.FieldByName('ReciptValue').AsCurrency :=
    Calc_SumFileds('Price', qryItems, qryinit);
  if CheckedMaxCredit(qryinit, qryItems, qryRecipts) then
    Abort;
  if LimitRecord(qryItems, qryinit, False) then
    Abort;
  FnCorrelate4EditActiveDelete(qryRecipts,
    qryinit.FieldByName('Correlate4EditActive').AsInteger);
  GetReciptNumber(qryinit, DataSet, 1, myStore);
  ReciptsSumOnStuffCode(qryRecipts, qryItems, qryinit, 'OutputEntity');

  if qryinit.FieldByName('UnicCodeCheck').AsInteger = 2 then
    StuffCodeUnic(qryRecipts, qryItems, qryinit);

end;

procedure TReciptsAnalysisF.qryReciptsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryDRecipts.Active := False;
  qryDItems.Active := False;
end;

procedure TReciptsAnalysisF.btnStuffCodeClick(Sender: TObject);
begin
  inherited;
  if not(qryRecipts.state in [dsInsert]) then
    exit;
  if qryItems.RecordCount = 1 then
    exit;
  if not CheckRequiredFields(qryRecipts) then
  begin
    exit;
  end;
  myStore.code := qryRecipts.FieldByName('StoreID').AsInteger;
  If NotNull(qryinit.FieldByName('RecallReciptTypes').AsString,
    'هيچ فرمي براي فراخواني مشخص نشده است') then
    exit;
  if RecallSpecialReciptsF.SelectRecall(qryItems, qryinit, qryRecipts, myStore,
    False) then
    qryDRecipts.Insert;
end;

procedure TReciptsAnalysisF.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  qryItems.Filtered := False;
  okPanel.Visible := qryRecipts.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  BtnDelete2.Visible := okPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, 'recipts', '', IntToStr(ReciptType));
  FreeReservedCodes(DMF.adcBSell, 'reciptitems', '', IntToStr(ReciptType));
  SumGrid1.Visible := newPanel.Visible;
  btnSearchReciptNumber.Visible := newPanel.Visible;
  SpeedButton1.Visible := newPanel.Visible;
  if SumGrid1.Visible = True then
    SumGrid1.MasterGrid := DBGrid1
  else
  begin
    SumGrid1.MasterGrid := nil;
    DBGrid1.Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize,
      dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
  end;
end;

procedure TReciptsAnalysisF.initFormPanel;
begin
  With qryinit do
  begin
    // < Form.Caption>
    // Caption:=FieldByName('ReciptCaption').AsString;
    lblCaption.Caption := Caption;
    // LblRecNo.Caption:='شماره '+Caption;
    // LblReciptDate.Caption:='تاريخ '+Caption;
    // ________________________  عنوان بجاي كلمه مقدار و وز ن__________________________

    qryDItems.FieldByName('InputEntity').DisplayLabel := opt.EntityCaption;
    qryDItems.FieldByName('InputWeight').DisplayLabel := opt.WeightCaption;
    qryItems.FieldByName('OutputEntity').DisplayLabel :=
      opt.EntityCaption + '#';
    qryItems.FieldByName('OutputWeight').DisplayLabel :=
      opt.WeightCaption + '#';
  end;
  InitDBCombos;
end;

end.
