unit CalculateOutPut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, ComCtrls, DBCtrls, Mask, DB, ADODB, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppVar, SumDBGrid, StrUtils, Filter_ADO_Const, FormFunctions,
  FaraConsts, System.ImageList, System.Actions, FarsiReportBuilde, Vcl.Menus,
  math, System.DateUtils, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TCalculateOutPutF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    SrcCalSpecialOutPut: TDataSource;
    qryCalSpecialOutPut: TADOQuery;
    qryCalSpecialOutPutc_StuffName: TStringField;
    actFilter: TAction;
    btnFilter: TBitBtn;
    actPrint: TAction;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    actsendtoexel: TAction;
    BitBtn3: TBitBtn;
    actSort: TAction;
    StatusBar1: TStatusBar;
    qrySpecialInputItems: TADOQuery;
    qryCalSpecialOutPutReciptItemID: TIntegerField;
    qryCalSpecialOutPutReciptCaption: TStringField;
    qryCalSpecialOutPutStuffSize: TStringField;
    qryCalSpecialOutPutStuffDiameter: TFloatField;
    qryCalSpecialOutPutStuffAlloy: TStringField;
    qryCalSpecialOutPutOutputEntity: TFloatField;
    qryCalSpecialOutPutOutputWeight: TFloatField;
    qryCalSpecialOutPutTotalOutputPrice: TBCDField;
    qryCalSpecialOutPutUnitSellPrice: TFMTBCDField;
    qryCalSpecialOutPutpreReciptItemID: TIntegerField;
    qryCalSpecialOutPutReciptNumber: TIntegerField;
    qryCalSpecialOutPutReciptDate: TStringField;
    btnAllCalculate: TBitBtn;
    actCalcVijeh: TAction;
    qrySpecialInputItemsReciptItemID: TIntegerField;
    qrySpecialInputItemsInputEntity: TFloatField;
    qrySpecialInputItemsInputWeight: TFloatField;
    qrySpecialInputItemsTotalInputPrice: TBCDField;
    qrySpecialInputItemspreReciptItemID: TIntegerField;
    actAllCalculate: TAction;
    actCalcAverage: TAction;
    actCalcFiFo: TAction;
    qryStores: TADOQuery;
    qryStoresn_StoreID: TSmallintField;
    qryStoresc_StoreName: TStringField;
    qryStoresn_ValuationType: TSmallintField;
    SrcStores: TDataSource;
    qryKol: TADOQuery;
    qryOut: TADOQuery;
    qryIN: TADOQuery;
    qryINReciptDate: TStringField;
    qryINInputWeight: TFloatField;
    qryINTotalInputPrice: TBCDField;
    qryINInputEntity: TFloatField;
    qryOutReciptItemID: TIntegerField;
    qryOutReciptDate: TStringField;
    qryOutOutputEntity: TFloatField;
    qryOutOutputWeight: TFloatField;
    qryAverage: TADOQuery;
    qryAverageModel: TADOQuery;
    qryAverageModelUseUnits: TADOQuery;
    qryAllAverage: TADOQuery;
    ProgressBar1: TProgressBar;
    ADOQuery1: TADOQuery;
    srckol: TDataSource;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    qryAvrageFirstEntity: TADOQuery;
    pnlReciptsRegulates: TPanel;
    grd1: TDBGrid;
    qryCalcControls: TADOQuery;
    SrcCalcControls: TDataSource;
    qryCalcControlsReciptID: TIntegerField;
    qryCalcControlsStoreID: TSmallintField;
    qryCalcControlsReciptNumber: TIntegerField;
    qryCalcControlsReciptDate: TStringField;
    qryCalcControlsReciptCaption: TStringField;
    qryCalcControlsReciptType: TWordField;
    qryCalcControlsDocNo: TIntegerField;
    qryCalcControlsDocDate: TStringField;
    qryCalcControlsKind: TStringField;
    qryCalcControlsAutoPrice: TWordField;
    lbl1: TLabel;
    qryReciptsRegulates: TADOQuery;
    grpCheck: TGroupBox;
    qryCheck: TADOQuery;
    dbgrdCheck: TDBGrid;
    SumGrid1: TSumGrid;
    qryCheckc_StuffName: TStringField;
    qryCheckInPrice: TBCDField;
    qryCheckOutPrice: TBCDField;
    qryCheckPrice: TBCDField;
    SrcCheck: TDataSource;
    qryCalSpecialOutPutStuffCode: TLargeintField;
    qryINc_StuffCode: TLargeintField;
    qryOutc_StuffCode: TLargeintField;
    qryCheckStuffCode: TLargeintField;
    qryOutServerID: TIntegerField;
    qryOutYearID: TIntegerField;
    btnAllCalculatLoop: TBitBtn;
    qryCalSpecialOutPutServerID: TIntegerField;
    qryCalSpecialOutPutYearID: TIntegerField;
    btnCardex: TBitBtn;
    actCardex: TAction;
    qryINAutoPrice: TWordField;
    qryINReciptItemID: TIntegerField;
    qryINServerID: TIntegerField;
    qryINYearID: TIntegerField;
    qryOutInputEntity: TFloatField;
    qryOutInputWeight: TFloatField;
    qryOutTotalInputPrice: TBCDField;
    qryOutAutoPrice: TWordField;
    pnlMemo: TPanel;
    mem1: TMemo;
    Label2: TLabel;
    qryReciptItems: TADOQuery;
    qryOutReciptID: TIntegerField;
    ADOQuery2qryIN: TADOQuery;
    ADOQuery3qryOut: TADOQuery;
    qryCalSpecialOutPutReciptID: TIntegerField;
    actAnalysisWeight: TAction;
    qryStoresCalculateOutPutFields: TLargeintField;
    qryOutOld: TADOQuery;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    medtDate: TMaskEdit;
    lblDate: TLabel;
    grpCheckCalc: TGroupBox;
    DBGrid3: TDBGrid;
    qryCheckCalc: TADOQuery;
    qryCheckCalcStoreID: TSmallintField;
    qryCheckCalcReciptType: TWordField;
    qryCheckCalcreciptcaption: TStringField;
    qryCheckCalcReciptNumber: TIntegerField;
    qryCheckCalcReciptDate: TStringField;
    qryCheckCalcStuffCode: TLargeintField;
    qryCheckCalcStuffSize: TStringField;
    qryCheckCalcStuffDiameter: TFloatField;
    qryCheckCalcStuffAlloy: TStringField;
    qryCheckCalcoutputentity: TFloatField;
    qryCheckCalcOutputWeight: TFloatField;
    qryCheckCalcControlCode: TLargeintField;
    qryCheckCalcTotalOutputPrice: TBCDField;
    qryCheckCalcUnitSellPrice: TFMTBCDField;
    qryCheckCalcOutReciptType: TWordField;
    qryCheckCalcOutreciptcaption: TStringField;
    qryCheckCalcOutReciptNumber: TIntegerField;
    qryCheckCalcOutReciptDate: TStringField;
    qryCheckCalcOutUnitSellPrice: TFMTBCDField;
    qryCheckCalcInUnitSellPrice: TFMTBCDField;
    srcCheckCalc: TDataSource;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    actCalcVijeh2: TAction;
    qryVijehLevelID0: TADOQuery;
    qryVijehLevelID: TADOQuery;
    BitBtn4: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    actAnalysisAvrage: TAction;
    N2: TMenuItem;
    qryAverageAllStore: TADOQuery;
    qryAvrageFirstEntityAllStore: TADOQuery;
    qryGetInputPrice: TADOQuery;
    qryOutDocNo: TIntegerField;
    qryINReciptID: TIntegerField;
    qryOutReciptState: TWordField;
    qryOutTotalOutputPrice: TFloatField;
    srcWarningType: TDataSource;
    qryWarningType: TADOQuery;
    qryWarningTypeReciptType: TWordField;
    qryWarningTypeReciptCaption: TStringField;
    GroupBox1: TGroupBox;
    grdWarningType: TDBGrid;
    qry0In: TADOQuery;
    qry1Out: TADOQuery;
    qry1OutInputEntity: TFloatField;
    qry1OutTotalInputPrice: TFloatField;
    qry1OutOutputEntity: TFloatField;
    qry1OutTotalOutputPrice: TBCDField;
    qry0InInputEntity: TFloatField;
    qry0InTotalInputPrice: TFloatField;
    qry0InCInputEntity: TFMTBCDField;
    qry0InCTotalInputPrice: TFMTBCDField;
    qry0InautoPrice: TIntegerField;
    qry1OutCOutputEntity: TFMTBCDField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    qry1OutReciptItemID: TIntegerField;
    qry1OutReciptID: TIntegerField;
    qry1OutServerID: TIntegerField;
    qry1OutYearID: TIntegerField;
    qry0InReciptItemID: TIntegerField;
    qry0InReciptID: TIntegerField;
    qry0InServerID: TIntegerField;
    qry0InYearID: TIntegerField;
    qry1OutautoPrice: TIntegerField;
    qry1OutReciptNumber: TIntegerField;
    qry0InReciptNumber: TIntegerField;
    chkFiFo: TCheckBox;
    CedarDbgrid1: TCedarDbgrid;
    CedarDbgrid2: TCedarDbgrid;
    qry0InIncreasingInventory: TWordField;
    qry0Infi: TFloatField;
    qryCalSpecialOutPutAutoPrice: TWordField;
    actAnalysisEntity: TAction;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    qryWarningTypeEffectType: TWordField;
    qryWarningTypeSellEffect: TWordField;
    qryWarningTypeBuyEffect: TWordField;
    qry0Inid: TFMTBCDField;
    qry1Outid: TFMTBCDField;
    DBGrid2: TCedarDbgrid;
    qryOutSellEffect: TWordField;
    qry1OutStuffCode: TLargeintField;
    qry0InStuffCode: TLargeintField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actsendtoexelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryCalSpecialOutPutAfterOpen(DataSet: TDataSet);
    procedure actCalcVijehExecute(Sender: TObject);
    procedure actAllCalculateExecute(Sender: TObject);
    procedure actCalcFiFoExecute(Sender: TObject);
    procedure qryStoresn_ValuationTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnAllCalculateClick(Sender: TObject);
    procedure btnAllCalculatLoopClick(Sender: TObject);
    procedure actCardexExecute(Sender: TObject);
    procedure qryKolFetchComplete(DataSet: TCustomADODataSet;
      const Error: Error; var EventStatus: TEventStatus);
    procedure actAnalysisWeightExecute(Sender: TObject);
    procedure qryStoresCalculateOutPutFieldsGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure DBGrid2Exit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actCalcVijeh2Execute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure actAnalysisAvrageExecute(Sender: TObject);
    procedure CedarDbgrid2DblClick(Sender: TObject);
    procedure actAnalysisEntityExecute(Sender: TObject);
  private
    { Private declarations }
    SQLAvrageFirstEntity: string;
    CheckPrice: Currency;
    DisplayEntity: string;
    CountWarn: Integer;
    procedure UpdateFilter;
    procedure CalculateFifo(StuffCode: String);
    procedure CalculateFifo2(StuffCode: String);
    procedure PostPrice(savePrice: Currency; qry: TADOQuery; Fname: string);
    procedure CalcAllAverage(AverageKind: Byte);
    // procedure CalcAllAverageNew;
    procedure CalcAllAverageNew2;
    procedure CallReciptsRegulates(p_price, TotalPrice: Currency;
      qry: TADOQuery);
    procedure Checking(Step: Byte);
    procedure ChekCalculate;
    procedure checkEntity(Price: Currency);
    function GetInputPrice: Currency;
    procedure IX_ReciptItems;
    // procedure setAvrageFirstEntity2(var s_entity, s_Weight: Real;
    // var s_sumIn, s_sumSellIn, p_price, UnitPrice_W, UnitPrice_E,
    // S_UnitPrice_E: Currency);
    procedure DeleteFromReciptsRegulates;
    procedure CalcAllStoreAverage;
    procedure Calc_TempCalculate;
    procedure CalcBackPrice(aUnitPrice: Currency);
    procedure UPDATEReciptItems(EntityOrWeight: string); // : Currency;
    procedure PostUnitSellPrice(savePrice: Currency; qry: TADOQuery);
    procedure CalculateFifo3(StuffCode: String);
    // : Currency;
    // function ChkPrvCode(qry: TADOQuery): Boolean;
    // function LocateCodes: Boolean;

    // function  CalcSumFileds(FiledName: String): Currency;
  public
    { Public declarations }
  end;

var
  CalculateOutPutF: TCalculateOutPutF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  mmessage, RptCardex, shamsiDate, main;

{$R *.dfm}

procedure TCalculateOutPutF.UpdateFilter;
begin
  with qryWarningType do
  begin
    Active := False;
    Active := True;
  end; // with
  with qryAvrageFirstEntity do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
  end; // with

  with qryCalSpecialOutPut do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    LblShowLimitPlace1.Caption := '  تا تاريخ ' + Parameters.ParamByName
      ('DateTo').Value;
  end;

  with qryStores do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Active := True;
  end; // with

  with qryCalcControls do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Active := True;
  end; // with

end;

procedure TCalculateOutPutF.actFilterExecute(Sender: TObject);
var
  SQLStuffCoding: string;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmf.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts WHERE YearID = ' +
        IntToStr(APPBank.Year));
      // AddItem(DMf.adcBSell,'ReciptDate','تاريخ ','تاتاريخ',ftDate,dvDefaults,var_glb_CurrentDate,'',ciSingle,'','');

      // AddItemFilter(GetFilter, TFilterStuffCode);
      SQLStuffCoding :=
        'SELECT DISTINCT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName,'
        + ' StuffCoding.c_KeepPlace, StuffCoding.sd1' +
        ' FROM StuffCoding INNER JOIN' +
        ' Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN' +
        ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode' +
        ' WHERE (StuffCoding.c_StuffCode <> 0) AND (StuffCoding.State = 0)';

      AddItem(theMainConnection, 'StuffCode', ['كد كالا', 'نام كالا',
        'مشخصات فنی', 'واحدکالا', 'محل نگهداري كالا', '', '', '', '', '', '',
        '', '', ''], ftLargeint, dvMinMax, '', '', ciLookup, SQLStuffCoding,
        'SELECT 0,99999999999999');




      // AddItem(dmf.adcBSell, 'StuffCode', ' كالا ', 'كد', ftLargeint, dvMinMax,
      // '', '', ciLookup, 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');

      AddItem(dmf.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store, False, 'StuffCode',
        'n_StoreID');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TCalculateOutPutF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close;
end;

procedure TCalculateOutPutF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);

  SetColSize(dbgrdCheck, 1, True);
  SetColSize(DBGrid3, 1, True);
end;

procedure TCalculateOutPutF.IX_ReciptItems;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := dmf.adcBSell;
      // SQL.Text :=
      // 'IF not exists (SELECT * FROM sysindexes WHERE (name = N''IX_ReciptItems''))';
      // SQL.Add('CREATE UNIQUE NONCLUSTERED INDEX IX_ReciptItems ON ReciptItems');
      // SQL.Add('(ReciptItemID,ServerID,YearID ) ON [PRIMARY]');
      SQL.Text := '';
      SQL.Add('IF not exists (SELECT * FROM sysindexes WHERE (name = N''IX_ReciptItems_RSYS''))');
      SQL.Add('CREATE NONCLUSTERED INDEX IX_ReciptItems_RSYS ON dbo.ReciptItems');
      SQL.Add('(ReciptID,ServerID,YearID,StuffCode) ON [PRIMARY]');
      ExecSQL;
    finally
      Free;
    end;
end;

procedure TCalculateOutPutF.FormDestroy(Sender: TObject);
begin
  inherited;
  IX_ReciptItems;
  SaveColWidth(DBGrid1);

  SaveColWidth(dbgrdCheck);
  SaveColWidth(DBGrid3);
  FreeReservedCodes(dmf.adcBSell, '', '', Self.Name);

end;

procedure TCalculateOutPutF.actsendtoexelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrdCheck);
end;

procedure TCalculateOutPutF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCalSpecialOutPut);
end;

procedure TCalculateOutPutF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCalSpecialOutPut);
end;

procedure TCalculateOutPutF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCalculateOutPutF.qryCalSpecialOutPutAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // StatusBar1.Panels[3].Text:='';
  // StatusBar1.Panels[2].Text:=CurrToStr(CalcSumFileds('entity'));
  // StatusBar1.Panels[1].Text:=CurrToStr(CalcSumFileds('weight'));
  // StatusBar1.Panels[0].Text:=CurrToStrF(CalcSumFileds('price'),ffCurrency,0) + '  ' ;
end;

procedure TCalculateOutPutF.qryKolFetchComplete(DataSet: TCustomADODataSet;
  const Error: Error; var EventStatus: TEventStatus);
begin
  inherited;

end;

// function TCalculateOutPutF.CalcSumFileds(FiledName: String): Currency;
// begin
// Result:=0;
// try
// with cloned do begin
// Clone(qryCalSpecialOutPut,ltReadOnly);
// First;
// while not eof do begin
// Result:=Result +fieldbyname(FiledName).AsCurrency;
// Next;
// end;//while
// end;//with
// except
// end;//try
// end;

procedure TCalculateOutPutF.actCalcVijeh2Execute(Sender: TObject);
var
  CalculateType: Byte;
  InvPrice: Currency;
  InvAmount: Double;
begin
  inherited;
  CalculateType := 1;
  with qryVijehLevelID0 do
  begin
    DisableControls;
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StoreID').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    Active := True;
  end;
  with qryVijehLevelID do
  begin
    DisableControls;
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StoreID').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    Active := True;
    // BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....',RecordCount);
    if RecordCount > 0 then
      ProgressBar1.Max := RecordCount;
    while not eof do
    begin
      if qryVijehLevelID0.Locate
        ('ServerID;BaseReciptitemID;baseYearID;ReciptitemID',
        VarArrayOf([FieldByName('ServerID').AsInteger,
        FieldByName('BaseReciptitemID').AsInteger, FieldByName('baseYearID')
        .AsInteger, FieldByName('BaseReciptitemID').AsInteger]), []) then
      begin
        InvPrice := qryVijehLevelID0.FieldByName('price').AsCurrency;
        if qryVijehLevelID.FieldByName('Weight').Value < 0.0001 then
        begin
          InvAmount := qryVijehLevelID0.FieldByName('Entity').AsFloat;
          CalculateType := 1;
        end
        else
        begin
          InvAmount := qryVijehLevelID0.FieldByName('Weight').AsFloat;
          CalculateType := 2;
        end; // if else

        if CalculateType = 1 then
        begin
          if InvAmount * FieldByName('OutPutEntity').AsCurrency <> 0 then
            PostPrice(Roundto(InvPrice / InvAmount * FieldByName('OutPutEntity')
              .AsFloat, 0), qryVijehLevelID, 'TotalOutputPrice')
          else if InvAmount * FieldByName('Entity').AsCurrency <> 0 then
            PostPrice(Roundto(InvPrice / InvAmount * FieldByName('Entity')
              .AsFloat, 0), qryVijehLevelID, 'TotalInputPrice');

          InvAmount := InvAmount - FieldByName('OutPutEntity').AsFloat;
        end // if
        else
        begin
          if InvAmount * FieldByName('OutPutWeight').AsCurrency <> 0 then
            PostPrice(Roundto(InvPrice / InvAmount * FieldByName('OutPutWeight')
              .AsFloat, 0), qryVijehLevelID, 'TotalOutputPrice')
          else if InvAmount * FieldByName('Weight').AsCurrency <> 0 then
            PostPrice(Roundto(InvPrice / InvAmount * FieldByName('Weight')
              .AsFloat, 0), qryVijehLevelID, 'TotalInputPrice');

          InvAmount := InvAmount - FieldByName('OutPutWeight').AsFloat;
        end; // if
      end;
      Next;
    end;
    EnableControls;
  end;
  BigMessage('انجام شد.', 1);

end;

procedure TCalculateOutPutF.actCalcVijehExecute(Sender: TObject);
var
  InvPrice: Currency;
  InvAmount: Double;
  LastPrvReciptItemID: Integer;
  CalculateType: Byte;
begin
  inherited;
  CalculateType := 1;
  DBGrid1.DataSource := SrcCalSpecialOutPut;
  // Warn('لطفا تا پايان عمليات قيمت گذاري صبر كنيد.‏',mtInformation);
  { اگر نحوه قيمت گذاري انبار برابر شناسايي ويژه بود  آنگاه }
  InvPrice := 0;
  InvAmount := 0;
  LastPrvReciptItemID := 0;
  with qryCalSpecialOutPut do
  begin // end//With
    DisableControls;
    Active := False;
    Parameters.ParamByName('StoreID').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    First;
    // BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....',RecordCount);
    if RecordCount > 0 then
      ProgressBar1.Max := RecordCount;
    // End ;//with
    while not eof do
    begin
      if FieldByName('preReciptItemID').AsInteger = LastPrvReciptItemID then
      begin
        // edit;
        if CalculateType = 1 then
        begin
          if InvAmount * FieldByName('OutPutEntity').AsCurrency <> 0 then
            PostPrice(Roundto(InvPrice / InvAmount * FieldByName('OutPutEntity')
              .AsFloat, 0), qryCalSpecialOutPut, 'TotalOutputPrice');
          InvAmount := InvAmount - FieldByName('OutPutEntity').AsFloat;
        end // if
        else
        begin
          if InvAmount * FieldByName('OutPutWeight').AsCurrency <> 0 then
            PostPrice(Roundto(InvPrice / InvAmount * FieldByName('OutPutWeight')
              .AsFloat, 0), qryCalSpecialOutPut, 'TotalOutputPrice');
          InvAmount := InvAmount - FieldByName('OutPutWeight').AsFloat;
        end; // if
        // post;
        InvPrice := InvPrice - FieldByName('TotalOutPutPrice').AsCurrency;
        // GoProgressBar(IntToStr(RecNo));
        ProgressBar1.StepIt;
        Next;
      end // if
      else
      begin
        qrySpecialInputItems.Active := False;
        qrySpecialInputItems.Parameters.ParamByName('pryreciptItemId').Value :=
          FieldByName('preReciptItemID').AsInteger;
        qrySpecialInputItems.Parameters.ParamByName('YearID').Value :=
          APPBank.Year;
        qrySpecialInputItems.Active := True;
        if qrySpecialInputItems.IsEmpty then
          qryCalSpecialOutPut.Next
        else
        begin
          InvPrice := qrySpecialInputItems.FieldByName('TotalInputPrice')
            .AsCurrency;
          LastPrvReciptItemID := qrySpecialInputItems.FieldByName
            ('reciptItemId').AsInteger;
          if qrySpecialInputItems.FieldByName('InputWeight').Value < 0.0001 then
          begin
            InvAmount := qrySpecialInputItems.FieldByName('InputEntity')
              .AsInteger;
            CalculateType := 1;
          end
          else
          begin
            InvAmount := qrySpecialInputItems.FieldByName
              ('InputWeight').AsFloat;
            CalculateType := 2;
          end; // if else
        end; // if
      end; // if else
    end; // while
    EnableControls;
  end; // with
  BigMessage('انجام شد.', 1);
end;

procedure TCalculateOutPutF.actCardexExecute(Sender: TObject);
begin
  inherited;
  if qryAllAverage.FindField('StuffCode') <> nil then
    RptCardexF.Enter(qryAllAverage.FieldByName('StoreID').AsInteger,
      qryAllAverage.FieldByName('StuffCode').AsLargeInt, 1)
  else
    RptCardexF.Enter(qryStores.FieldByName('n_StoreID').AsInteger, 0, 1);
end;

procedure TCalculateOutPutF.actAllCalculateExecute(Sender: TObject);
var
  SQL_Text: string;
  qry: TADOQuery;
  // EntityOutputLowerLimit: string;
  i: Integer;
begin
  inherited;
  qry := TADOQuery.Create(Self);
  with qry do
  begin
    Connection := dmf.adcBSell;
    CommandTimeout := 0;
    SQL.Text := 'DELETE FROM ReciptItems_TempCalculate';
    ExecSQL;
  end;

  with qryReciptItems do
  begin
    Active := False;
    Active := True;
  end;

  Checking(1);
  if qryStores.FieldByName('n_ValuationType').AsInteger <> 9 then
    with qryStores do
    begin
      First;
      while not eof do
      begin
        if (qryStoresCalculateOutPutFields.AsInteger = 0) or
          (qryStoresCalculateOutPutFields.AsInteger = 256) then
          case FieldByName('n_ValuationType').AsInteger of
            0:
              CalcAllAverage(0); // ميانگين
            1:
              actCalcFiFo.Execute; // Lifo
            2:
              actCalcFiFo.Execute; // Fifo
            3:
              actCalcVijeh.Execute; // شناسايي ويژه
            4:
              CalcAllAverage(4); // ميانگين خاص
            5:
              CalcAllAverage(5); // ميانگين خاص2
            6:
              CalcAllAverage(6); // میانگین زمان ثبت
            8:
              actCalcVijeh2.Execute; // شناسايي ويژه

          end // case
        else
          CalcAllAverageNew2;
        Calc_TempCalculate;
        Next;
      end;
    end
  else
  begin
    CalcAllStoreAverage;
    Calc_TempCalculate;
  end;

  // EntityOutputLowerLimit := CurrToStr(opt.LowerLimit1);

  if chkFiFo.Checked then
    case opt.EntityDisplayType of
      0, 2:
        SQL_Text := 'UPDATE ReciptItems SET TotalOutputPrice = ' +
          'ROUND(UnitSellPrice * OutputEntity ,0)';

      1, 3:
        SQL_Text := 'UPDATE ReciptItems SET TotalOutputPrice = ' +
          'ROUND(UnitSellPrice * OutputWeight ,0)';
    end
  else
    case opt.EntityDisplayType of
      0, 2:
        SQL_Text := 'UPDATE ReciptItems SET UnitSellPrice = ' +
          'ROUND((TotalOutputPrice + TotalInputPrice) /   ' +
          ' (CASE (OutputEntity + InputEntity)   ' +
          '     WHEN 0 THEN (CASE (OutputWeight + InputWeight) WHEN 0 THEN 1 else (OutputWeight + InputWeight) END) '
          + ' else (OutputEntity + InputEntity) END),4)';

      1, 3:
        SQL_Text := 'UPDATE ReciptItems SET UnitSellPrice = ' +
          'ROUND((TotalOutputPrice + TotalInputPrice) / ' +
          '(CASE (OutputWeight + InputWeight) ' +
          'WHEN 0 THEN (CASE (OutputEntity + InputEntity) WHEN 0 THEN 1 else (OutputEntity + InputEntity) END) '
          + 'else (OutputWeight + InputWeight) END),4)';



      // 2:
      // SQL_Text := 'UPDATE ReciptItems SET UnitSellPrice = ' + ' case when  ' +
      // ' ROUND((TotalOutputPrice + TotalInputPrice) / (CASE (OutputEntity + InputEntity) WHEN 0 THEN 1 else (OutputEntity + InputEntity) END),2)'
      // + ' < ' + EntityOutputLowerLimit +
      // ' then  ROUND((TotalOutputPrice + TotalInputPrice) / (CASE (OutputEntity + InputEntity) WHEN 0 THEN 1 else (OutputEntity + InputEntity) END),2)  '
      // + 'else  ROUND((TotalOutputPrice + TotalInputPrice)  / (CASE (OutputWeight + InputWeight)  WHEN 0 THEN 1 else (OutputWeight + InputWeight) END)  , 2) end ';
      //
      // 3:
      // SQL_Text := 'UPDATE ReciptItems SET UnitSellPrice =' +
      // ' ROUND(CASE WHEN ROUND((TotalOutputPrice + TotalInputPrice) / (CASE (OutputWeight + InputWeight) WHEN 0 THEN 1 ELSE (OutputWeight + InputWeight) END), 2)'
      // + ' >= ' + EntityOutputLowerLimit +
      // ' THEN (TotalOutputPrice + TotalInputPrice) / (CASE (OutputEntity + InputEntity) WHEN 0 THEN 1 ELSE (OutputEntity + InputEntity) END)'
      // + ' ELSE (TotalOutputPrice + TotalInputPrice) / (CASE (OutputWeight + InputWeight) WHEN 0 THEN 1 ELSE (OutputWeight + InputWeight) END) END'
      // + ' , 2)';

    end;

  if not chkFiFo.Checked then
    with qry do
      try
        SQL.Text := 'DROP INDEX ReciptItems.IX_ReciptItems_RSYS';
        // SQL.Add('DROP INDEX ReciptItems.IX_ReciptItems');
        ExecSQL;
        SQL.Text := SQL_Text;
        SQL.Add('FROM Recipts INNER JOIN');
        SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID');
        SQL.Add('AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID');
        SQL.Add('INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');
        SQL.Add('WHERE (ReciptTypes.EffectType in(2,4,6,7,8) )');
        SQL.Add('AND (ReciptTypes.AutoPrice = 1) AND (ReciptTypes.SellEffect <> 1)');
        SQL.Add('AND(Recipts.StoreID Between :StoreIDFrom AND :StoreIDTo)');
        SQL.Add('AND(ReciptItems.StuffCode Between :StuffCodeFrom AND :StuffCodeTo)');
        SQL.Add('AND(Recipts.ReciptDate Between :DateFrom AND :DateTo)');
        SQL.Add('AND(ReciptItems.YearID = :YearID )');
        SQL.Add('AND(ReciptTypes.BuyEffect <> 3 )');
        SQL.Add('AND((ISNULL(Recipts.DocNo,0) = 0 )OR(Recipts.ReciptState = 2))');

        Parameters.ParamByName('YearID').Value := APPBank.Year;
        Parameters.AssignValues(qryCalcControls.Parameters);
        i := ExecSQL;
        BigMessage(IntToStr(i) + 'مورد ثبت شد.‏', 1);
      finally
        IX_ReciptItems;
      end;

  if not chkFiFo.Checked then
    // شناسایی ویژه
    with qry do
      try
        SQL.Text := 'UPDATE ReciptItems';
        SQL.Add('SET UnitSellPrice = dbo.GetpreUnitSellPrice(ReciptItems.ControlCode , ReciptItems.preReciptItemID, ReciptItems.YearID, ReciptItems.ServerID)');
        SQL.Add(',TotalOutputPrice =ROUND( OutputWeight * dbo.GetpreUnitSellPrice(ReciptItems.ControlCode , ReciptItems.preReciptItemID,');
        SQL.Add('ReciptItems.YearID, ReciptItems.ServerID) ,0)');
        SQL.Add(',TotalInputPrice =ROUND( InputWeight * dbo.GetpreUnitSellPrice(ReciptItems.ControlCode , ReciptItems.preReciptItemID,');
        SQL.Add('ReciptItems.YearID, ReciptItems.ServerID) ,0)');
        SQL.Add('FROM ReciptItems INNER JOIN');
        SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
        SQL.Add('ReciptItems.YearID = Recipts.YearID INNER JOIN');
        SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');
        SQL.Add('INNER JOIN Stores on Stores.n_StoreID = Recipts.StoreID');
        SQL.Add('WHERE (ReciptItems.preReciptItemID <> 0) AND (Stores.n_ValuationType = 3)');
        // SQL.Add  ('AND (dbo.GetpreUnitSellPrice(ReciptItems.ControlCode , ReciptItems.preReciptItemID, ReciptItems.YearID, ReciptItems.ServerID) <>');
        // SQL.Add  ('ReciptItems.UnitSellPrice)');
        SQL.Add('AND (ReciptTypes.EffectType in(2,4,6,7,8) )');
        SQL.Add('AND (ReciptTypes.AutoPrice = 1) AND (ReciptTypes.SellEffect <> 1)');
        SQL.Add('AND(Recipts.StoreID Between :StoreIDFrom AND :StoreIDTo)');
        SQL.Add('AND(ReciptItems.StuffCode Between :StuffCodeFrom AND :StuffCodeTo)');
        SQL.Add('AND(Recipts.ReciptDate Between :DateFrom AND :DateTo)');
        SQL.Add('AND(ReciptItems.YearID = :YearID )');
        SQL.Add('AND(ReciptTypes.BuyEffect <> 3 )');
        SQL.Add('AND((ISNULL(Recipts.DocNo,0) = 0 )OR(Recipts.ReciptState = 2))');

        Parameters.ParamByName('YearID').Value := APPBank.Year;
        Parameters.AssignValues(qryCalcControls.Parameters);
        i := ExecSQL;
        BigMessage(IntToStr(i) + 'مورد شناسایی ویژه ثبت شد.‏', 0);
      finally
        qry.Free;
      end;
  // شناسایی ویژه

  ProgressBar1.Position := 0;

  BigMessage('Checking لطفا صبر كنيد...‏', 0);
  Checking(2);

  qryCheckCalc.Close;
  qryCheckCalc.Open;
  grpCheckCalc.Visible := qryCheckCalc.RecordCount > 0;

  CloseMessage;
  StatusBar1.Panels[1].Text := 'قیمت گذاری انجام شد.';
end;

procedure TCalculateOutPutF.Calc_TempCalculate;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  with qry do
  begin
    Connection := dmf.adcBSell;
    CommandTimeout := 0;
    BigMessage(' لطفا صبر كنيد...‏', 0);
    SQL.Text := 'DELETE FROM ReciptItems_TempCalculate';
    // Warn2('???');
    ExecSQL;
    qryReciptItems.UpdateBatch();
    qryReciptItems.Active := False;
    qryReciptItems.Active := True;

    /// نحوه قیمت گذاری رسید برگشت از فروش هنگام مانده کاردکس انبار صفر
    // SQL.Text := 'UPDATE ReciptItems_TempCalculate';
    // SQL.Add('SET TotallSellPrice = ROUND(ReciptItems_TempCalculate.TotallSellPrice * ReciptItems.InputEntity, 0)');
    // SQL.Add('FROM ReciptItems_TempCalculate INNER JOIN');
    // SQL.Add('Recipts ON ReciptItems_TempCalculate.ReciptID = Recipts.ReciptID INNER JOIN');
    // SQL.Add('ReciptTypes1 ON Recipts.ReciptType = ReciptTypes1.ReciptType INNER JOIN');
    // SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
    // SQL.Add('Recipts.YearID = ReciptItems.YearID AND');
    // SQL.Add('ReciptItems_TempCalculate.ReciptItemID = ReciptItems.ReciptItemID');
    // SQL.Add('WHERE (ReciptTypes1.EffectType = 2)');
    // SQL.Add('AND (ReciptTypes1.SellEffect = 2)');
    // SQL.Add('AND (ReciptItems_TempCalculate.TotallSellPrice > 0)');
    // SQL.Add('AND (ReciptItems_TempCalculate.TotalOutputPrice = 0)');
    // SQL.Add('AND (ReciptItems_TempCalculate.TotalInputPrice = 0)');
    // ExecSQL;
    /// نحوه قیمت گذاری رسید برگشت از فروش هنگام مانده کاردکس انبار صفر

    SQL.Text := 'UPDATE ReciptItems';
    SQL.Add('SET TotalOutputPrice = CASE WHEN OutputEntity + OutputWeight <> 0 THEN abcd.TotalOutputPrice ELSE 0 END ');
    SQL.Add(', TotalInputPrice = CASE WHEN InputEntity + InputWeight <> 0 THEN  abcd.TotalInputPrice  ELSE 0 END ,');
    SQL.Add('TotallSellPrice = abcd.TotallSellPrice');
    SQL.Add('FROM (SELECT ReciptItemID, ReciptID, ServerID, YearID, SUM(TotalOutputPrice) AS TotalOutputPrice,');
    SQL.Add('SUM (TotalInputPrice) AS TotalInputPrice, SUM(TotallSellPrice) AS TotallSellPrice');
    SQL.Add('FROM ReciptItems_tempCalculate');
    SQL.Add('GROUP BY ReciptItemID, ReciptID, ServerID, YearID) AS abcd INNER JOIN');
    SQL.Add('ReciptItems ON abcd.ReciptItemID = ReciptItems.ReciptItemID AND abcd.ReciptID = ReciptItems.ReciptID');
    SQL.Add('AND abcd.ServerID = ReciptItems.ServerID AND abcd.YearID = ReciptItems.YearID');

    // if opt.CalcReciptsRegulatesActive then
    begin
      SQL.Add('INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID ');
      SQL.Add('AND ReciptItems.ServerID = Recipts.ServerID ');
      SQL.Add('AND ReciptItems.YearID = Recipts.YearID');
      SQL.Add('WHERE (Recipts.ReciptState in(0,1))');
      SQL.Add('AND(ISNULL(Recipts.DocNo,0) = 0 )');

    end;

    // Parameters.ParamByName('StoreIDFrom').Value := 0;
    // Parameters.ParamByName('StoreIDTo').Value := 999999;
    // Warn2('...');

    ExecSQL;
    Free;
  end;

end;

procedure TCalculateOutPutF.actAnalysisAvrageExecute(Sender: TObject);
begin
  inherited;
  with dmf.qryTmpTmp do
    try
      Active := False;
      SQL.Text := EmptyStr;
      SQL.Add('UPDATE ReciptItems_1 SET ReciptItems_1.UnitSellPrice=');
      SQL.Add('ROUND((ReciptItems.TotalOutputPrice/ ReciptItems.OutputWeight),2)');
      SQL.Add(',ReciptItems_1.TotalInputPrice=');
      SQL.Add('ROUND( (ReciptItems.TotalOutputPrice/ ReciptItems.OutputWeight ) *');
      SQL.Add('ReciptItems_1.InputWeight ,0)');

      SQL.Add('FROM Recipts INNER JOIN');
      SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
      SQL.Add('Recipts AS Recipts_1 ON Recipts.ReciptID = Recipts_1.ParentReciptID AND Recipts.YearID =');
      SQL.Add('Recipts_1.YearID AND ReciptTypes.CorrelateReciptType = Recipts_1.ReciptType INNER JOIN');
      SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
      SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
      SQL.Add('ReciptItems AS ReciptItems_1 ON Recipts_1.ReciptID = ReciptItems_1.ReciptID AND Recipts_1.ServerID =');
      SQL.Add('ReciptItems_1.ServerID AND Recipts_1.YearID = ReciptItems_1.YearID');
      SQL.Add('WHERE (Recipts.YearID = ' + APPBank.Year.ToString +
        ') AND (ReciptTypes.TemplateCode = 7)');

      BigMessage(IntToStr(ExecSQL) + 'مورد ثبت شد.‏', 1);

    finally
      Active := False;
    end;

end;

procedure TCalculateOutPutF.actAnalysisEntityExecute(Sender: TObject);
begin
  inherited;
  UPDATEReciptItems('Entity')
end;

procedure TCalculateOutPutF.actAnalysisWeightExecute(Sender: TObject);
begin
  inherited;
  UPDATEReciptItems('Weight')
end;

procedure TCalculateOutPutF.UPDATEReciptItems(EntityOrWeight: string);
var
  s: string;
  ReciptType: string;
begin
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmf.adcBSell, 'ReciptType', 'فرم', 'كد فرم', ftInteger,
        dvDefaults, 'True', '', ciCheck,
        'SELECT ReciptType ,ReciptCaption FROM dbo.ReciptTypes1 WHERE (TemplateCode = 7)',
        '');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        ReciptType := GetcFrom(myParams.ParamValues['ReciptType'], ftString);
        with dmf.qryTmpTmp do
          try
            Active := False;
            SQL.Text := EmptyStr;
            SQL.Add('FROM dbo.ReciptItems INNER JOIN');
            SQL.Add('dbo.ReciptItems AS ReciptItems_Tajziyeh ON dbo.ReciptItems.ReciptItemID =');
            SQL.Add('ReciptItems_Tajziyeh.preReciptItemID INNER JOIN');
            SQL.Add('dbo.ReciptItems AS ReciptItems_Recid ON ReciptItems_Tajziyeh.ReciptItemID =');
            SQL.Add('ReciptItems_Recid.preReciptItemID INNER JOIN');
            SQL.Add('dbo.Recipts AS Recipts_Recid ON ReciptItems_Recid.ReciptID = Recipts_Recid.ReciptID AND');
            SQL.Add('ReciptItems_Recid.ServerID = Recipts_Recid.ServerID AND');
            SQL.Add('ReciptItems_Recid.YearID = Recipts_Recid.YearID INNER JOIN');
            SQL.Add('dbo.Recipts AS Recipts ON dbo.ReciptItems.ReciptID = Recipts.ReciptID AND dbo.ReciptItems.ServerID =');
            SQL.Add('Recipts.ServerID AND dbo.ReciptItems.YearID = Recipts.YearID INNER JOIN');
            SQL.Add('dbo.Recipts AS Recipts_HavleTabdil ON ReciptItems_Tajziyeh.ReciptID = Recipts_HavleTabdil.ReciptID AND');
            SQL.Add('ReciptItems_Tajziyeh.ServerID = Recipts_HavleTabdil.ServerID AND');
            SQL.Add('ReciptItems_Tajziyeh.YearID = Recipts_HavleTabdil.YearID');
            SQL.Add('WHERE (Recipts_HavleTabdil.ReciptType IN (' +
              ReciptType + '))');
            SQL.Add('AND (ReciptItems_Recid.Input' + EntityOrWeight + '<> 0 )');
            SQL.Add('AND (Recipts_Recid.ReciptState <> 3)');
            SQL.Add('AND (Recipts_Recid.DocNo = 0)');

            s := SQL.Text;

            SQL.Text := 'UPDATE ReciptItems_Recid';
            SQL.Add('SET UnitSellPrice =');
            SQL.Add('(ReciptItems_Tajziyeh.TotalOutputPrice*ReciptItems_Recid.Input'
              + EntityOrWeight + ')/ReciptItems_Tajziyeh.Output' +
              EntityOrWeight + '/');
            SQL.Add('ReciptItems_Recid.Input' + EntityOrWeight);
            SQL.Add(', TotalInputPrice =round(');
            SQL.Add('(ReciptItems_Tajziyeh.TotalOutputPrice*ReciptItems_Recid.Input'
              + EntityOrWeight + ')/ReciptItems_Tajziyeh.Output' +
              EntityOrWeight + ' ,0)');

            SQL.Add(s);

            if CtrlDown then
              ShowQryParam(dmf.qryTmpTmp);

            BigMessage(IntToStr(ExecSQL) + 'مورد ثبت شد.‏', 1);

          finally
            Active := False;
          end;
      end; // if
    finally
      Free;
    end; // try
  end; // with
  actFilter.Execute;
end;

procedure TCalculateOutPutF.actCalcFiFoExecute(Sender: TObject);
var
  DDLQuery: TADOQuery;
begin
  inherited;
  DeleteFromReciptsRegulates;

  DDLQuery := TADOQuery.Create(nil);
  try
    DDLQuery.Connection := theMainConnection;
    DDLQuery.CommandTimeout := 120;
    DDLQuery.LockType := ltReadOnly;
    DDLQuery.SQL.Text :=
      'IF OBJECT_ID(''tempdb..#TempUpdates'') IS NOT NULL DROP TABLE #TempUpdates; '
      + 'CREATE TABLE #TempUpdates (' +
      'ReciptItemID INT, ReciptID INT, ServerID INT, YearID INT, ' +
      'UnitSellPrice MONEY, TotalInputPrice MONEY, TotalOutputPrice MONEY); ' +
      'CREATE NONCLUSTERED INDEX IX_TempUpdates ON #TempUpdates (ReciptItemID, ReciptID, ServerID, YearID);';
    DDLQuery.ExecSQL;

    DDLQuery.SQL.Text :=
      'EXEC sp_configure ''show advanced options'', 1; RECONFIGURE; ' +
      'EXEC sp_configure ''Agent XPs'', 0; RECONFIGURE;';
    DDLQuery.ExecSQL;

    with qryIN do
    begin
      Active := False;
      SQL.Text := 'SELECT ';
      if qryStoresCalculateOutPutFields.AsLargeInt > 0 then
        SQL.Add('ItemDate AS ReciptDate ')
      else
        SQL.Add('ReciptDate');
      SQL.Add(', StuffCoding.c_StuffCode, InputEntity, InputWeight,');
      SQL.Add('TotalInputPrice, AutoPrice,');
      SQL.Add('ReciptItemID, ServerID, YearID, ReciptID');
      SQL.Add('FROM StuffCoding INNER JOIN');
      SQL.Add('ReciptItems_Stock_Calc ON');
      SQL.Add('StuffCoding.c_StuffCode = ReciptItems_Stock_Calc.StuffCode');
      SQL.Add('WHERE (case when IncreasingInventory=1 then StoreID2 else StoreID end=:StoreID)');
      SQL.Add('AND (EffectType in (2,6) or IncreasingInventory = 1)');
      SQL.Add('AND (SellEffect<>1 or ((AutoPrice<>1) ');
      SQL.Add('   and (EffectType in (2,6) or IncreasingInventory = 1)))');
      SQL.Add('AND (ReciptState < 3)');
      SQL.Add('AND (YearID = :YearID)');
      SQL.Add('AND (BuyEffect <> 3)');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      SQL.Add('ORDER BY ');
      if qryStoresCalculateOutPutFields.AsLargeInt > 0 then
        SQL.Add('ItemDate')
      else
        SQL.Add('ReciptDate');
      SQL.Add(', StuffCoding.c_StuffCode');
      Parameters.ParamByName('StoreID').Value :=
        qryStores.FieldByName('n_StoreID').AsInteger;
      CursorType := ctDynamic;
      LockType := ltBatchOptimistic;
      CommandTimeout := 60;
      Active := True;
    end;

    with qryKol do
    begin
      Active := False;
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('StoreID').Value :=
        qryStores.FieldByName('n_StoreID').AsInteger;
      Parameters.ParamByName('StuffCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffCodeTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
      CursorType := ctOpenForwardOnly;
      LockType := ltReadOnly;
      CommandTimeout := 60;
      Active := True;
      qry0In.Close;
      DisableControls;
      if RecordCount > 0 then
        ProgressBar1.Max := RecordCount;
      while not eof do
      begin
        if chkFiFo.Checked then
          CalculateFifo3(FieldByName('StuffCode').AsString)
        else
          CalculateFifo(FieldByName('StuffCode').AsString);
        ProgressBar1.StepIt;
        Application.ProcessMessages;
        Next;
      end;
      EnableControls;
    end;

    DDLQuery.SQL.Text := 'UPDATE r ' +
      'SET r.UnitSellPrice = ISNULL(t.UnitSellPrice, r.UnitSellPrice), ' +
      '    r.TotalInputPrice = ISNULL(t.TotalInputPrice, r.TotalInputPrice), ' +
      '    r.TotalOutputPrice = ISNULL(t.TotalOutputPrice, r.TotalOutputPrice) '
      + 'FROM ReciptItems r ' + 'INNER JOIN #TempUpdates t ' +
      'ON r.ReciptItemID = t.ReciptItemID ' + 'AND r.ReciptID = t.ReciptID ' +
      'AND r.ServerID = t.ServerID ' + 'AND r.YearID = t.YearID';
    DDLQuery.ExecSQL;

    DDLQuery.SQL.Text := 'DROP TABLE #TempUpdates';
    DDLQuery.ExecSQL;

    DDLQuery.SQL.Text :=
      'EXEC sp_configure ''show advanced options'', 1; RECONFIGURE; ' +
      'EXEC sp_configure ''Agent XPs'', 1; RECONFIGURE;';
    DDLQuery.ExecSQL;

    BigMessage('انجام شد.', 1);
    StatusBar1.Panels[0].Text := '';
    CloseMessage;

    with qryCalSpecialOutPut do
    begin
      Active := False;
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('StuffCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffCodeTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
      Active := True;
    end;

  finally
    DDLQuery.Free;
  end;
end;

procedure TCalculateOutPutF.CalculateFifo(StuffCode: String);
var
  requiredEntity, sumEntity: Real;
  aPrice, sumPrice: Currency;
begin
  sumPrice := 0;
  sumEntity := 0;
  aPrice := 0;
  StatusBar1.Panels[0].Text := StuffCode;
  with qryOut do
  begin
    DisableControls;
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('StoreID').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    Parameters.ParamByName('StuffCode').Value := StuffCode;
    Active := True;
    with qryIN do
    begin
      qryIN.DisableControls;
      Active := False;
      SQL.Text :=
        'SELECT ReciptDate, StuffCode AS c_StuffCode,InputEntity, InputWeight, TotalInputPrice';
      SQL.Add(',AutoPrice, ReciptItemID, ServerID, YearID,ReciptID');
      SQL.Add('FROM ReciptItems_Stock_Calc');
      SQL.Add('WHERE ( case when IncreasingInventory = 1 then StoreID2 else StoreID end = :StoreID ) AND');
      SQL.Add('(StuffCode = :StuffCode)');
      SQL.Add('AND ( EffectType = 2 or IncreasingInventory=1 )');
      SQL.Add('AND (ReciptState < 3)AND');
      SQL.Add('(');
      SQL.Add('SellEffect<>1 or');
      SQL.Add('((AutoPrice <>1) and (EffectType = 2 or IncreasingInventory=1) )');
      SQL.Add(')');
      SQL.Add('AND( YearID = :YearID )');

      SQL.Add('ORDER BY ReciptDate, StuffCode');

      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('StoreID').Value :=
        qryStores.FieldByName('n_StoreID').AsInteger;
      Parameters.ParamByName('StuffCode').Value := StuffCode;
      Active := True;
    end; // with

    while not qryOut.eof do
    begin
      if FieldByName('Input' + DisplayEntity).AsFloat = 0 then
      begin
        // EntityLast := requiredEntity;
        requiredEntity := FieldByName('Output' + DisplayEntity).AsFloat;

        aPrice := 0;
        if requiredEntity <= sumEntity then
        begin
          if sumEntity <> 0 then
            aPrice := Round((sumPrice / sumEntity) * requiredEntity);

          if (aPrice > 0) and (qryOutSellEffect.AsInteger <> 2) then
            PostPrice(aPrice, qryOut, 'TotalOutputPrice')
          else
            CalcBackPrice(aPrice);

          /// ///////////////////
          if opt.CalcReciptsRegulatesActive and
            ((FieldByName('DocNo').AsInteger <> 0) or
            (FieldByName('ReciptState').AsInteger = 2)) then
          begin
            CallReciptsRegulates(aPrice, FieldByName('TotalOutputPrice')
              .AsCurrency + FieldByName('TotalInputPrice').AsCurrency, qryOut);
          end; // else if aPrice > 0 then
          // PostPrice(Roundto(aPrice, 0), qryOut, 'TotalOutputPrice');
          /// ///////////////////

          sumPrice := sumPrice - aPrice;
          sumEntity := sumEntity -
            FieldByName('Output' + DisplayEntity).AsFloat;

          // qryIN.Next;
        end // if
        else
        begin
          while (requiredEntity > sumEntity + qryIN.FieldByName('Input' +
            DisplayEntity).AsFloat) and (not qryIN.eof) do
          begin
            // if qryOutReciptDate.AsString < qryINReciptDate.AsString then
            // Warn2('به علت منفی شدن موجودي قيمت گذاري متوقف مي شود');
            sumEntity := sumEntity + qryIN.FieldByName
              ('Input' + DisplayEntity).AsFloat;
            sumPrice := sumPrice + GetInputPrice;
            qryIN.Next;
          end; // while
          if qryIN.FieldByName('Input' + DisplayEntity).AsFloat <> 0 then
            aPrice := Round
              (sumPrice + ((GetInputPrice / qryIN.FieldByName('Input' +
              DisplayEntity).AsFloat) * (requiredEntity - sumEntity)))
          else
            /// new
            aPrice := sumPrice;

          if (aPrice > 0) and (qryOutSellEffect.AsInteger <> 2) then
            PostPrice(aPrice, qryOut, 'TotalOutputPrice')
          else
            CalcBackPrice(aPrice);
          /// ///////////////////
          if opt.CalcReciptsRegulatesActive and
            ((FieldByName('DocNo').AsInteger <> 0) or
            (FieldByName('ReciptState').AsInteger = 2)) then
          begin
            CallReciptsRegulates(aPrice, FieldByName('TotalOutputPrice')
              .AsCurrency + FieldByName('TotalInputPrice').AsCurrency, qryOut);
          end; // else if aPrice > 0 then
          // PostPrice(Roundto(aPrice, 0), qryOut, 'TotalOutputPrice');
          /// ///////////////////

          sumEntity := sumEntity + qryIN.FieldByName('Input' + DisplayEntity)
            .AsFloat - FieldByName('Output' + DisplayEntity).AsFloat;
          sumPrice := sumPrice + GetInputPrice - aPrice;
          qryIN.Next;
        end; // else
      end
      else
      begin
        if sumEntity = 0 then
          aPrice := GetInputPrice / qryIN.FieldByName
            ('Input' + DisplayEntity).AsFloat
        else
          aPrice := ((sumPrice / sumEntity)) * qryOut.FieldByName
            ('Input' + DisplayEntity).AsFloat;
        aPrice := Roundto(aPrice, 0);

        // aPrice := Roundto(ifthen(sumEntity = 0,
        // ((GetInputPrice) / (qryIN.FieldByName('Input' + DisplayEntity)
        // .AsFloat)), ((sumPrice / sumEntity)) * qryOut.FieldByName('Input' +
        // DisplayEntity).AsFloat), 0);

        if (aPrice > 0) and (qryOutSellEffect.AsInteger <> 2) then
          PostPrice(aPrice, qryOut, 'TotalInputPrice')
        else
          CalcBackPrice(aPrice);

        /// ///////////////////
        if opt.CalcReciptsRegulatesActive and
          ((FieldByName('DocNo').AsInteger <> 0) or
          (FieldByName('ReciptState').AsInteger = 2)) then
        begin
          CallReciptsRegulates(aPrice, FieldByName('TotalOutputPrice')
            .AsCurrency + FieldByName('TotalInputPrice').AsCurrency, qryOut);
        end; // else if aPrice > 0 then
        // PostPrice(Roundto(aPrice, 0), qryOut, 'TotalOutputPrice');
        /// ///////////////////

      end;
      qryOut.Next;
    end; // while
  end; // with
end;

procedure TCalculateOutPutF.CalculateFifo2(StuffCode: String);
var
  requiredEntity, sumEntity, UseEntity: Real;
  TotalPice, sumPrice, UnitPrice, LastUnitPrice: Real;
  DateFromRemain, s: String;
  id: Largeint;
  // TautoPrice: Integer;

begin
  sumPrice := 0;
  sumEntity := 0;
  TotalPice := 0;
  StatusBar1.Panels[0].Text := StuffCode;
  qry1Out.DisableControls;
  qry0In.DisableControls;

  with qry0In do
  begin
    Active := False;
    Parameters.ParamByName('StoreIdFrom').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    Parameters.ParamByName('StoreIdTo').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;

    Parameters.ParamByName('StuffCode').Value := StuffCode;
    Parameters.ParamByName('StuffCode1').Value := StuffCode;

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('ControlCodeFrom').Value := -999999999;
    Parameters.ParamByName('ControlCodeTo').Value := 2147483647;

    DateFromRemain := GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    Parameters.ParamByName('DateFromRemain').Value := DateFromRemain;
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('DiameterFrom').Value := -999999999;
    Parameters.ParamByName('Diameterto').Value := 2147483647;

    Parameters.ParamByName('PersonID1DFrom').Value := -999999999;
    Parameters.ParamByName('PersonID1DTo').Value := 2147483647;

    Parameters.ParamByName('PersonID4From').Value := -999999999;
    Parameters.ParamByName('PersonID4To').Value := 2147483647;

    Active := True;
    UnitPrice := 0;
    while not eof do
    begin
      Edit;
      qry0InCInputEntity.AsFloat := qry0InInputEntity.AsFloat;
      qry0InCTotalInputPrice.AsFloat := qry0InTotalInputPrice.AsFloat;

      if UnitPrice <> 0 then

        if (qry0InIncreasingInventory.AsInteger = 1) and
          (qry0InCTotalInputPrice.AsFloat <= 0) then
          qry0InCTotalInputPrice.AsFloat :=
            Roundto(qry0InCInputEntity.AsFloat * UnitPrice, 0);

      if (qry0InautoPrice.AsFloat = 0) and (qry0InCInputEntity.AsFloat > 0) and
        (UnitPrice = 0) then
        UnitPrice := Roundto(qry0InCTotalInputPrice.AsFloat /
          qry0InCInputEntity.AsFloat, -9);

      if (qry0InautoPrice.AsFloat = 1) then
        qry0InCTotalInputPrice.AsFloat := 0;
      Post;
      Next;
    end;
    First;
  end; // with

  with qry1Out do
  begin
    Active := False;
    Parameters := qry0In.Parameters;
    Active := True;
  end;
  // CedarDbgrid1.setSizeColDBGrid;
  // CedarDbgrid2.setSizeColDBGrid;
  // CedarDbgrid1.Visible := DebugHook <> 0;
  // CedarDbgrid2.Visible := DebugHook <> 0;
  //
  // if DebugHook <> 0 then
  // begin
  // CedarDbgrid1.BringToFront;
  // CedarDbgrid2.BringToFront;
  // end;

  qry1Out.EnableControls;
  qry0In.EnableControls;
  // if DebugHook <> 0 then
  // Warn('');

  // with  do
  begin
    // qry1Out.DisableControls;
    // qry0In.DisableControls;
    while not qry1Out.eof do
    begin
      // Warn('');

      // if qry1OutReciptItemID.AsInteger >= 8974 then
      // Warn(qry1OutReciptItemID.AsString);
      // if qry0InCInputEntity.AsInteger = 130 then
      // Warn2(qry0InCInputEntity.AsString);

      if (qry1Out.FieldByName('OutputEntity').AsFloat = 120) then
        warn2('');

      if (qry1Out.FieldByName('Input' + DisplayEntity).AsFloat > 0) then
      begin
        { قیمت گذاری ورودی ها مثل برگشت  از فروش }
        /// if qry0InCInputEntity.AsInteger = 130 then
        /// Warn(qry0InCInputEntity.AsString);

        id := qry1Outid.AsLargeInt;
        if qry0In.Locate('id', id, []) then
        begin
          // while ((qry0InCTotalInputPrice.AsFloat = 0)) do
          // begin
          // // if qry0InReciptItemID.AsInteger = 5040 then
          // // Warn(qry0InReciptItemID.AsString);
          // qry0In.Prior;
          // if qry0In.RecNo = 1 then
          // Break;
          // end;
          qry0In.First;
          if qry0InCInputEntity.AsFloat <> 0 then
          begin
            if qry0InCTotalInputPrice.AsFloat <> 0 then
              UnitPrice := Roundto(qry0InCTotalInputPrice.AsFloat /
                qry0InCInputEntity.AsFloat, -9)
          end
          else
            UnitPrice := 0;
          TotalPice := qry1Out.FieldByName('Input' + DisplayEntity).AsFloat *
            UnitPrice;
          TotalPice := Roundto(TotalPice, 0);
          if TotalPice > 0 then
          begin
            PostPrice(TotalPice, qry1Out, 'TotalInputPrice');
            PostUnitSellPrice(UnitPrice, qry1Out);
            qry0In.Locate('id', id, []);

            qry0In.Edit;
            qry0InCTotalInputPrice.AsFloat := TotalPice;
            qry0In.Post;
            qry0In.First;
          end;
        end
        else
        begin
          TotalPice := qry1Out.FieldByName('Input' + DisplayEntity).AsFloat *
            LastUnitPrice;
          PostPrice(TotalPice, qry1Out, 'TotalInputPrice');
          PostUnitSellPrice(LastUnitPrice, qry1Out);
        end;

        // qry1Out.Next;
        { قیمت گذاری ورودی ها مثل برگشت  از فروش }
      end
      else if qry1Out.FieldByName('Output' + DisplayEntity).AsFloat <=
        qry0InCInputEntity.AsFloat then
      begin
        // if qry0InCInputEntity.AsInteger = 130 then
        // Warn(qry0InCInputEntity.AsString);
        if qry0InCInputEntity.AsFloat <> 0 then
        begin
          if qry0InCTotalInputPrice.AsFloat <> 0 then
            // UnitPrice := qry0InCTotalInputPrice.AsFloat /              qry0InCInputEntity.AsFloat
            UnitPrice := Roundto(qry0InCTotalInputPrice.AsFloat /
              qry0InCInputEntity.AsFloat, -9)
        end
        else
          UnitPrice := 0;

        TotalPice := qry1Out.FieldByName('Output' + DisplayEntity).AsFloat *
          UnitPrice;
        TotalPice := Roundto(TotalPice, 0);
        if TotalPice > 0 then
        begin
          PostPrice(TotalPice, qry1Out, 'TotalOutputPrice');
          PostUnitSellPrice(UnitPrice, qry1Out);
          qry0In.Edit;
          qry0InCInputEntity.AsFloat := qry0InCInputEntity.AsFloat -
            qry1Out.FieldByName('Output' + DisplayEntity).AsFloat;
          if qry0InCInputEntity.AsFloat = 0 then
            LastUnitPrice := UnitPrice;

          qry0InCTotalInputPrice.AsFloat := qry0InCTotalInputPrice.AsFloat -
            TotalPice;
          qry0In.Post;
          // Warn('Delete1');
          if (qry0InCInputEntity.AsFloat <= 0) and (qry0In.RecordCount > 1) then
            qry0In.Delete;
        end;
        // qry1Out.Next;
      end
      else
      begin
        // if qry0InCInputEntity.AsInteger = 130 then
        // Warn(qry0InCInputEntity.AsString);
        requiredEntity := qry1Out.FieldByName('Output' + DisplayEntity).AsFloat;
        sumPrice := 0;
        UseEntity := qry1Out.FieldByName('Output' + DisplayEntity).AsFloat;

        while requiredEntity > 0 do
        begin
          if qry0InCInputEntity.AsFloat <> 0 then
          begin
            if qry0InCTotalInputPrice.AsFloat <> 0 then
              UnitPrice := Roundto(qry0InCTotalInputPrice.AsFloat /
                qry0InCInputEntity.AsFloat, -9)
          end
          else
          begin
            UnitPrice := 0;
            if (qry0InCInputEntity.AsFloat <= 0) and (qry0In.RecordCount > 1)
            then
            begin
              // Warn('Delete2');
              qry0In.Delete
            end
            else
            begin
              warn2(' اشکال در قیمت گذاری کالای ' + StuffCode);
              s := StuffCode + ' ,id= ' + qry1Out.FieldByName('id').AsString +
                '_' + ' انبار:' + qryStores.FieldByName('n_StoreID').AsString +
                ' فرم:' + qry1Out.FieldByName('ReciptNumber').AsString;

              if mem1.Lines[mem1.Lines.Count - 1] <> s then
                mem1.Lines.Add(s);

              Break;
            end;

          end;

          if requiredEntity >= qry0InCInputEntity.AsFloat then
            TotalPice := (qry0InCInputEntity.AsFloat) * UnitPrice
          else
            TotalPice := requiredEntity * UnitPrice;

          TotalPice := Roundto(TotalPice, 0);
          sumPrice := sumPrice + TotalPice;

          if requiredEntity > qry0InCInputEntity.AsFloat then
            requiredEntity := requiredEntity - qry0InCInputEntity.AsFloat
          else
          begin
            UseEntity := requiredEntity;
            requiredEntity := 0;
          end;

          if TotalPice > 0 then
          begin
            qry0In.Edit;
            { جابچایی بین انبار }
            /// TautoPrice:=  qry0InautoPrice.AsInteger;
            // qry0InautoPrice.AsInteger:=1;
            // PostPrice(TotalPice, qry0In, 'TotalOutputPrice');
            // PostPrice(TotalPice, qry1Out, 'TotalOutputPrice');
            // qry0InautoPrice.AsInteger:=TautoPrice;
            { جابچایی بین انبار }
            qry0InCInputEntity.AsFloat := qry0InCInputEntity.AsFloat -
              UseEntity;
            qry0InCTotalInputPrice.AsFloat := qry0InCTotalInputPrice.AsFloat -
              TotalPice;
            qry0In.Post;
            // Warn('Delete3');
            if (qry0InCInputEntity.AsFloat <= 0) and (qry0In.RecordCount > 1)
            then
              qry0In.Delete;
          end;
        end;

        if sumPrice > 0 then
        begin
          PostPrice(sumPrice, qry1Out, 'TotalOutputPrice');
          PostUnitSellPrice(UnitPrice, qry1Out);
        end;

        /// ///////////////////
        if opt.CalcReciptsRegulatesActive and
          ((qry1Out.FieldByName('DocNo').AsInteger <> 0) or
          (qry1Out.FieldByName('ReciptState').AsInteger = 2)) then
        begin
          CallReciptsRegulates(TotalPice,
            qry1Out.FieldByName('TotalOutputPrice').AsCurrency +
            qry1Out.FieldByName('TotalInputPrice').AsCurrency, qryOut);
        end; // else if aPrice > 0 then
        // PostPrice(Roundto(aPrice, 0), qryOut, 'TotalOutputPrice');
        /// ///////////////////

        // qry1Out.Next;

      end;
      qry1Out.Next;

    end; // with
  end;
  qry1Out.EnableControls;
  qry0In.EnableControls;

end;

procedure TCalculateOutPutF.CalcBackPrice(aUnitPrice: Currency); // : Currency;
var
  aBackPrice: Real48;
begin
  // qryOut.Prior;
  // if qryOut.FieldByName('Output' + DisplayEntity).AsFloat <> 0 then
  // aBackPrice := qryOut.FieldByName('TotalOutputPrice').AsFloat /
  // qryOut.FieldByName('Output' + DisplayEntity).AsFloat
  // else
  // aBackPrice := 0;
  // qryOut.Next;
  // aBackPrice := aBackPrice * qryIN.FieldByName('Input' + DisplayEntity).AsFloat;
  // aBackPrice := Roundto(aBackPrice, 0);

  aBackPrice := aUnitPrice * qryOut.FieldByName
    ('Input' + DisplayEntity).AsFloat;
  aBackPrice := Roundto(aBackPrice, 0);

  PostPrice(aBackPrice, qryOut, 'TotalInputPrice');

end;

function TCalculateOutPutF.GetInputPrice: Currency;
begin
  if qryIN.FieldByName('autoPrice').AsInteger <> 1 then
    Result := qryIN.FieldByName('TotalInputPrice').AsCurrency
  else
    With qryGetInputPrice do
    begin
      Active := False;
      SQL.Text := 'SELECT TotalInputPrice'; // new  +TotalOutputPrice
      SQL.Add('FROM ReciptItems');
      SQL.Add('WHERE (ReciptItemID = %d )');
      // SQL.Add('AND (ReciptID = %d )'); qryIN.FieldByName('ReciptID').AsInteger,
      SQL.Add('AND (ServerID = %d )');
      SQL.Add('AND (YearID = %d )');
      SQL.Text := Format(SQL.Text, [qryIN.FieldByName('ReciptItemID').AsInteger,
        qryIN.FieldByName('ServerID').AsInteger, qryIN.FieldByName('YearID')
        .AsInteger]);
      Active := True;
      Result := Fields[0].AsCurrency;
    end;
end;

procedure TCalculateOutPutF.checkEntity(Price: Currency);
begin
  if (qryStores.FieldByName('n_ValuationType').AsInteger <> 3) and (Price < 0)
  then
  begin
    inc(CountWarn);
    if CountWarn > 0 then
      warn2('به علت منفی// شدن موجودي قيمت گذاري متوقف مي شود')
    else
      Warn('به علت منفی شدن موجودي قيمت گذاري متوقف مي شود');

    // Abort;
  end;
end;

procedure TCalculateOutPutF.PostUnitSellPrice(savePrice: Currency;
  qry: TADOQuery);
begin
  // Exit;
  if qry.FieldByName('AutoPrice').AsInteger = 1 then
    with dmf.qryTmpTmp do
    begin
      SQL.Text := 'UPDATE ReciptItems';
      SQL.Add('SET UnitSellPrice = :UnitSellPrice');
      SQL.Add('WHERE(ReciptItemID = :ReciptItemID )AND(ReciptID = :ReciptID )');
      SQL.Add('AND (ServerID = :ServerID ) AND (YearID = :YearID )');

      Parameters.ParamByName('UnitSellPrice').Value := savePrice;
      Parameters.ParamByName('ReciptItemID').Value :=
        qry.FieldByName('ReciptItemID').AsInteger;
      Parameters.ParamByName('ReciptID').Value := qry.FieldByName('ReciptID')
        .AsInteger;
      Parameters.ParamByName('ServerID').Value := qry.FieldByName('ServerID')
        .AsInteger;
      Parameters.ParamByName('YearID').Value := qry.FieldByName('YearID')
        .AsInteger;
      ExecSQL;
    end;
end;

procedure TCalculateOutPutF.PostPrice(savePrice: Currency; qry: TADOQuery;
  Fname: string);
begin
  checkEntity(savePrice);
  if qry.FieldByName('AutoPrice').AsInteger = 1 then
    with qryReciptItems do
    begin
      Insert;
      FieldByName(Fname).AsCurrency := savePrice;
      FieldByName('ReciptItemID').AsInteger := qry.FieldByName('ReciptItemID')
        .AsInteger;
      FieldByName('ReciptID').AsInteger := qry.FieldByName('ReciptID')
        .AsInteger;
      FieldByName('ServerID').AsInteger := qry.FieldByName('ServerID')
        .AsInteger;
      FieldByName('YearID').AsInteger := qry.FieldByName('YearID').AsInteger;
      Post;
      // end;

    end;
end;

procedure TCalculateOutPutF.qryStoresCalculateOutPutFieldsGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := getCalculateOutPutFields('', Sender.AsLargeInt, True)
end;

procedure TCalculateOutPutF.qryStoresn_ValuationTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := TValuationType[Sender.AsInteger]
  // case qryStoresn_ValuationType.AsInteger of
  // 0:
  // Text := 'ميانگين';
  // 1:
  // Text := 'Lifo';
  // 2:
  // Text := 'Fifo';
  // 3:
  // Text := 'شناسايي ويژه';
  // 4:
  // Text := 'میانگین - کالا و مدل';
  // 5:
  // Text := 'ميانگين - کالا و مدل 1 و2';
  // 6:
  // Text := 'میانگین  تاریخ و ساعت';
  // end; // case
end;

procedure TCalculateOutPutF.CalcAllAverage(AverageKind: Byte);
var
  s_entity: Real;
  s_Weight: Real;
  s_sumIn: Real;
  s_sumSellIn: Real;
  p_price: Real;
  S_price: Real;
  prvCode: Int64;
  prvAnbar: Integer;
  prvModel: Integer;
  prvUseUnit: Integer;
  S_UnitPrice_E: Real;
  UnitPrice_W: Real;
  UnitPrice_E: Real;
  // P_UnitPrice_W: Currency;
  procedure setAvrageFirstEntity;
  begin
    with qryAvrageFirstEntity do
    begin
      // Active := False;
      // AND (ReciptItems_Stock_Calc.StuffCode= :StuffCode   )
      // Parameters.ParamByName('StuffCode').Value :=
      // qryAllAverage.FieldByName('StuffCode').AsLargeInt;

      Active := True;

      if Locate('StuffCode', qryAllAverage.FieldByName('StuffCode')
        .AsLargeInt, []) then
      begin
        s_entity := Roundto(FieldByName('Entity').AsFloat, opt.RoundEntity);
        s_Weight := Roundto(FieldByName('Weight').AsFloat, opt.RoundEntity);
        s_sumIn := Roundto(FieldByName('TotalPrice').AsLargeInt, 0);
        s_sumSellIn := Roundto(FieldByName('TotallSellPrice').AsLargeInt, 0);
      end
      else
      begin
        s_entity := 0;
        s_Weight := 0;
        s_sumIn := 0;
        s_sumSellIn := 0;
      end;
      p_price := 0;
      UnitPrice_W := 0;
      UnitPrice_E := 0;
      S_UnitPrice_E := 0;
    end;
  end;

begin
  // S_UnitPrice_E := 0 ;
  // S_UnitPrice_W := 0 ;
  // P_UnitPrice_E := 0 ;
  // P_UnitPrice_W := 0 ;
  S_price := 0;

  DeleteFromReciptsRegulates;

  with qryAllAverage do
  begin
    Active := False;
    qryAvrageFirstEntity.Active := False;
    /// new
    qryAvrageFirstEntity.SQL.Text := StringReplace(SQLAvrageFirstEntity,
      ':AverageKind', IntToStr(AverageKind), [rfReplaceAll]);

    // qryAvrageFirstEntity.SQL.Text :=
    // StringReplace(qryAvrageFirstEntity.SQL.Text,
    // 'ReciptItems_Stock_Calc.StoreID,', '', [rfReplaceAll]);

    case AverageKind of
      0, 6:
        begin
          SQL := qryAverage.SQL;
        end;
      4:
        begin
          SQL := qryAverageModel.SQL;
        end;
      5:
        begin
          SQL := qryAverageModelUseUnits.SQL;
        end;

    end;

    qryAvrageFirstEntity.Parameters.ParamByName('StoreID').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    qryAvrageFirstEntity.Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);

    // GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('StoreID').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    Parameters.ParamByName('StoreID2').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    Parameters.ParamByName('StoreIDOrder').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Active := True;
    // BigMessageProgBar(IntToStr(RecordCount),RecordCount);
    if RecordCount > 0 then
      ProgressBar1.Max := RecordCount;
    First;
    setAvrageFirstEntity;
    prvAnbar := FieldByName('StoreID').AsInteger;
    prvCode := FieldByName('StuffCode').AsLargeInt;
    prvModel := FieldByName('ProductModel').AsInteger;
    prvUseUnit := FieldByName('UseUnitID').AsInteger;

    try
      while not eof do
      begin
        if (s_sumIn < 0) or (s_sumSellIn < 0) or (s_entity < 0) or (s_Weight < 0)
        then
        begin
          if mem1.Lines[mem1.Lines.Count - 1] <> qryAllAverage.FieldByName
            ('StuffCode').AsString then
            mem1.Lines.Add(FieldByName('StuffCode').AsString + ' , ' +
              FieldByName('ReciptNumber').AsString + '_' +
              FieldByName('ReciptCaption').AsString + ' انبار:' +
              FieldByName('StoreID').AsString);
        end;

        // if ((FieldByName('ReciptNumber').AsInteger = 325) or
        // (FieldByName('ReciptNumber').AsInteger = 325)) then
        // Warn2('ReciptNumber= ' + FieldByName('ReciptNumber').AsString);

        StatusBar1.Panels[1].Text := 'در حال محاسبه كالاي:  ' +
          FieldByName('StuffCode').AsString + 'فرم:  ' +
          FieldByName('ReciptNumber').AsString;
        Application.ProcessMessages;

        if
        // ( FieldByName('StoreID').AsInteger<>prvAnbar ) or
          (FieldByName('StuffCode').AsLargeInt <> prvCode) or
          (FieldByName('ProductModel').AsInteger <> prvModel) or
          (FieldByName('UseUnitID').AsInteger <> prvUseUnit) then
        begin
          setAvrageFirstEntity;
        end;
        if FieldByName('EffectType').AsInteger in [2, 6] then
        begin
          if ((FieldByName('AutoPrice').AsInteger = 1) and
            ((((FieldByName('ReciptType').AsInteger = 7) and
            (FieldByName('StoreID2').AsInteger = qryStores.FieldByName
            ('n_StoreID').AsInteger))) or (FieldByName('ReciptType').AsInteger
            <> 7))) then
          begin
            case opt.EntityDisplayType of
              0, 2:
                begin
                  if s_entity > 0 then
                    p_price := (s_sumIn / s_entity) *
                      FieldByName('InputEntity').AsFloat
                  else
                  begin
                    p_price := UnitPrice_E * FieldByName('InputEntity').AsFloat
                  end;
                  if s_entity > 0 then
                    S_price := (s_sumSellIn / s_entity) *
                      FieldByName('InputEntity').AsFloat
                  else
                    S_price := S_UnitPrice_E *
                      FieldByName('InputEntity').AsFloat
                    // S_price := 0;
                end;
              // case (0)
              1:
                begin
                  if s_Weight > 0 then
                    p_price := (s_sumIn / s_Weight) *
                      FieldByName('InputWeight').AsFloat
                  else
                  begin
                    p_price := UnitPrice_W * FieldByName('InputWeight').AsFloat
                  end;

                  if s_Weight > 0 then
                    S_price := (s_sumSellIn / s_Weight) *
                      FieldByName('InputWeight').AsFloat;
                end; // case (1)

              3:
                begin
                  if FieldByName('CalculatedEntityOrWeight').AsInteger = 0 then
                  begin
                    if s_Weight > 0 then
                      p_price := (s_sumIn / s_Weight) *
                        FieldByName('InputWeight').AsFloat
                    else
                    begin
                      p_price := UnitPrice_W *
                        FieldByName('InputWeight').AsFloat
                    end;

                    if s_Weight > 0 then
                      S_price := (s_sumSellIn / s_Weight) *
                        FieldByName('InputWeight').AsFloat;
                  end
                  else
                  begin
                    if FieldByName('DiagnosisCalcTotalPrice').AsInteger = 1 then
                    begin
                      if s_Weight > 0 then
                        p_price := (s_sumIn / s_Weight) *
                          FieldByName('InputWeight').AsFloat
                      else
                      begin
                        p_price := UnitPrice_W *
                          FieldByName('InputWeight').AsFloat
                      end;

                      if s_Weight > 0 then
                        S_price := (s_sumSellIn / s_Weight) *
                          FieldByName('InputWeight').AsFloat;
                    end
                    else
                    begin
                      if s_entity > 0 then
                        p_price := (s_sumIn / s_entity) *
                          FieldByName('InputEntity').AsFloat
                      else
                      begin
                        p_price := UnitPrice_E *
                          FieldByName('InputEntity').AsFloat
                      end;
                      if s_entity > 0 then
                        S_price := (s_sumSellIn / s_entity) *
                          FieldByName('InputEntity').AsFloat
                      else
                        S_price := S_UnitPrice_E *
                          FieldByName('InputEntity').AsFloat
                    end;

                  end; // case (1)

                end;
            end; // case

            // Edit;
            p_price := Roundto(p_price, 0);
            if S_price > 0 then
              PostPrice(Roundto(S_price, 0), qryAllAverage, 'TotallSellPrice');
            // 1
            if opt.CalcReciptsRegulatesActive and
              ((FieldByName('DocNo').AsInteger <> 0) or
              (FieldByName('ReciptState').AsInteger = 2)) then
            begin
              CallReciptsRegulates(p_price, FieldByName('TotalInputPrice')
                .AsLargeInt, qryAllAverage);
            end
            else if p_price > 0 then
              PostPrice(Roundto(p_price, 0), qryAllAverage, 'TotalInputPrice');
          end; // if
          if (FieldByName('StoreID').AsInteger = qryStores.FieldByName
            ('n_StoreID').AsInteger) then
          begin
            s_entity := Roundto(s_entity + FieldByName('InputEntity').AsFloat,
              opt.RoundEntity);
            s_Weight := Roundto(s_Weight + FieldByName('InputWeight').AsFloat,
              opt.RoundEntity);
            if (((FieldByName('AutoPrice').AsInteger = 1) and
              (FieldByName('StoreID2').AsInteger = 0) and (p_price <> 0))) then
              s_sumIn := Roundto(s_sumIn + Roundto(p_price, 0), 0)
            else
              s_sumIn := Roundto(s_sumIn + FieldByName('TotalInputPrice')
                .AsLargeInt, 0);
            if (((FieldByName('AutoPrice').AsInteger = 1) and
              (FieldByName('StoreID2').AsInteger = 0) and (p_price <> 0))) then
              s_sumSellIn := Roundto(s_sumSellIn + Roundto(S_price, 0), 0)
            else
              s_sumSellIn :=
                Roundto(s_sumSellIn + FieldByName('TotallSellPrice') // 2
                .AsLargeInt, 0);
            if s_entity > 0 then
              UnitPrice_E := Roundto(s_sumIn / s_entity, 0);
            if s_Weight > 0 then
              UnitPrice_W := Roundto(s_sumIn / s_Weight, 0);
            if s_entity > 0 then
              S_UnitPrice_E := s_sumSellIn / s_entity
            else
              S_UnitPrice_E := 0;
          end; // if
          // if s_entity>0 then S_UnitPrice_E:=s_sumSellIn/s_entity else S_UnitPrice_E:=0  ;
          // if s_Weight>0 then S_UnitPrice_W:=(s_sumSellIn/s_Weight) else S_UnitPrice_W:=0;
          // if s_entity>0 then P_UnitPrice_E:=(s_sumIn/s_entity) else P_UnitPrice_E:=0;
          // if s_Weight>0 then P_UnitPrice_W:=(s_sumIn/s_Weight) else P_UnitPrice_W:=0 ;
        end
        else
        begin
          if (FieldByName('OutputEntity').AsFloat + FieldByName('OutputWeight')
            .AsFloat) >= 0.0001 then
            case opt.EntityDisplayType of
              0, 2:
                begin
                  if s_entity > 0 then
                    p_price := (s_sumIn / s_entity) *
                      FieldByName('OutputEntity').AsFloat
                  else
                    p_price := 0;
                  if s_entity > 0 then
                    S_price := (s_sumSellIn / s_entity) *
                      FieldByName('OutputEntity').AsFloat
                  else
                    S_price := 0;
                end;
              // case (0)
              1:
                begin
                  if s_Weight > 0 then
                    p_price := (s_sumIn / s_Weight) *
                      FieldByName('OutputWeight').AsFloat
                  else
                    p_price := 0;
                  if s_Weight > 0 then
                    S_price := (s_sumSellIn / s_Weight) *
                      FieldByName('OutputWeight').AsFloat
                  else
                    S_price := 0;
                end;

              3:
                begin
                  if FieldByName('CalculatedEntityOrWeight').AsInteger = 0 then
                  begin
                    if s_Weight > 0 then
                      p_price := (s_sumIn / s_Weight) *
                        FieldByName('OutputWeight').AsFloat
                    else
                      p_price := 0;
                    if s_Weight > 0 then
                      S_price := (s_sumSellIn / s_Weight) *
                        FieldByName('OutputWeight').AsFloat
                    else
                      S_price := 0;
                  end
                  else
                  begin
                    if FieldByName('DiagnosisCalcTotalPrice').AsInteger = 1 then
                    begin
                      if s_Weight > 0 then
                        p_price := (s_sumIn / s_Weight) *
                          FieldByName('OutputWeight').AsFloat
                      else
                        p_price := 0;
                      if s_Weight > 0 then
                        S_price := (s_sumSellIn / s_Weight) *
                          FieldByName('OutputWeight').AsFloat
                      else
                        S_price := 0;
                    end
                    else
                    begin
                      if s_entity > 0 then
                        p_price := (s_sumIn / s_entity) *
                          FieldByName('OutputEntity').AsFloat
                      else
                        p_price := 0;
                      if s_entity > 0 then
                        S_price := (s_sumSellIn / s_entity) *
                          FieldByName('OutputEntity').AsFloat
                      else
                        S_price := 0;
                    end;

                  end;

                end; // 3

            end // case
          else
          begin
            p_price := 0;
            S_price := 0;
          end;
          p_price := Roundto(p_price, 0);
          S_price := Roundto(S_price, 0);

          s_entity := Roundto(s_entity - FieldByName('OutputEntity').AsFloat,
            opt.RoundEntity);
          s_Weight := Roundto(s_Weight - FieldByName('OutputWeight').AsFloat,
            opt.RoundEntity);

          // if (s_entity < 0) or (s_Weight < 0) then
          // mem1.Lines.Add('موجودی منفی:' + FieldByName('StuffCode').AsString +
          // ' , ' + FieldByName('ReciptNumber').AsString + '_' +
          // FieldByName('ReciptCaption').AsString + ' انبار:' +
          // FieldByName('StoreID').AsString);

          s_sumIn := Roundto(s_sumIn - p_price, 0);
          checkEntity(s_sumIn);
          s_sumSellIn := Roundto(s_sumSellIn - S_price, 0);
          if s_entity > 0 then
            UnitPrice_E := Roundto(s_sumIn / s_entity, 0);
          if s_Weight > 0 then
            UnitPrice_W := Roundto(s_sumIn / s_Weight, 0);
          if s_entity > 0 then
            S_UnitPrice_E := Roundto(s_sumSellIn / s_entity, 0);

          // Edit;
          if S_price > 0 then
            PostPrice(Roundto(S_price, 0), qryAllAverage, 'TotallSellPrice');
          // 3
          if opt.CalcReciptsRegulatesActive and
            ((FieldByName('DocNo').AsInteger <> 0) or
            (FieldByName('ReciptState').AsInteger = 2)) then
          begin
            CallReciptsRegulates(p_price, FieldByName('TotalOutputPrice')
              .AsLargeInt, qryAllAverage);
          end
          else if p_price >= 0 then
            PostPrice(Roundto(p_price, 0), qryAllAverage, 'TotalOutputPrice');

        end; // if 11
        // prvAnbar:= FieldByName('StoreID').AsInteger ;
        prvCode := FieldByName('StuffCode').AsLargeInt;
        prvModel := FieldByName('ProductModel').AsInteger;
        prvUseUnit := FieldByName('UseUnitID').AsInteger;
        // GoProgressBar(IntToStr(RecNo));
        ProgressBar1.StepIt;
        Next;
      end; // while
    finally
      // BigMessage('ثبت شد .',1);
    end; // try
  end; // with
end;

procedure TCalculateOutPutF.DeleteFromReciptsRegulates;
begin
  if opt.CalcReciptsRegulatesActive then
    with dmf.qryTmpTmp do
    begin
      Close;
      SQL.Text := 'DELETE FROM ReciptsRegulates';
      SQL.Add('FROM Recipts INNER JOIN');
      SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
      SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
      SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
      SQL.Add('ReciptsRegulates ON ReciptItems.ReciptItemID = ReciptsRegulates.ReciptItemID AND ReciptItems.ReciptID =');
      SQL.Add('ReciptsRegulates.ReciptID AND');
      SQL.Add('ReciptItems.ServerID = ReciptsRegulates.ServerID AND ReciptItems.YearID = ReciptsRegulates.YearID');
      SQL.Add('WHERE (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
      SQL.Add('AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
      SQL.Add('AND ((ReciptTypes.EffectType in( 4,7,8))OR(ReciptTypes.AutoPrice = 1))');
      SQL.Add('AND (ReciptsRegulates.RegDocNo = 0)');
      SQL.Add('AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)');
      SQL.Add('AND( ReciptItems.YearID = :YearID )');
      SQL.Add('AND (ReciptTypes.BuyEffect <> 3 )');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('DateFrom').Value :=
        GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
      Parameters.ParamByName('DateTo').Value :=
        GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
      Parameters.ParamByName('StuffCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffCodeTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StoreIDFrom').Value :=
        qryStoresn_StoreID.AsInteger;
      // GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
      Parameters.ParamByName('StoreIDTo').Value := qryStoresn_StoreID.AsInteger;
      // GetcTo(myParams.ParamValues['StoreID'], ftInteger);
      ExecSQL;
      Close;
    end;

end;

// function TCalculateOutPutF.ChkPrvCode(qry: TADOQuery): Boolean;
/// / var
/// / i: Integer;
// begin
// // Result := True;
// // for i := 1 to Length(ACalcFieldsListprvCode) do
// // if qry.FindField(ACalcFieldsListprvCode[i].Name) <> nil then
// // Result := Result and
// // (ACalcFieldsListprvCode[i].Value = qry.FieldByName
// // (ACalcFieldsListprvCode[i].Name).AsString);
//
// Result := (ACalcFieldsListprvCode[1].Value <>
// qry.FieldByName(ACalcFieldsListprvCode[1].Name).AsString) or
// (ACalcFieldsListprvCode[2].Value <> qry.FieldByName(ACalcFieldsListprvCode
// [2].Name).AsString) or (ACalcFieldsListprvCode[3].Value <>
// qry.FieldByName(ACalcFieldsListprvCode[3].Name).AsString) or
// (ACalcFieldsListprvCode[4].Value <> qry.FieldByName(ACalcFieldsListprvCode
// [4].Name).AsString) or (ACalcFieldsListprvCode[5].Value <>
// qry.FieldByName(ACalcFieldsListprvCode[5].Name).AsString) or
// (ACalcFieldsListprvCode[6].Value <> qry.FieldByName(ACalcFieldsListprvCode
// [6].Name).AsString) or (ACalcFieldsListprvCode[7].Value <>
// qry.FieldByName(ACalcFieldsListprvCode[7].Name).AsString) or
// (ACalcFieldsListprvCode[8].Value <> qry.FieldByName(ACalcFieldsListprvCode
// [8].Name).AsString);
//
// end;
//
// function TCalculateOutPutF.LocateCodes: Boolean;
// var
// StuffCode: Largeint;
// StuffSize: string;
// StuffDiameter: Real48;
// StuffAlloy: string;
// ControlCode: Integer;
// StuffGrade: Integer;
// ProductCode: Largeint;
// ProductModel: Integer;
// begin
// with qryAllAverage do
// begin
// StuffCode := FieldByName('StuffCode').AsLargeInt;
// StuffSize := FieldByName('StuffSize').AsString;
// StuffDiameter := FieldByName('StuffDiameter').AsFloat;
// StuffAlloy := FieldByName('StuffAlloy').AsString;
// ControlCode := FieldByName('ControlCode').AsLargeInt;
// StuffGrade := FieldByName('StuffGrade').AsInteger;
// ProductCode := FieldByName('ProductCode').AsLargeInt;
// ProductModel := FieldByName('ProductModel').AsInteger;
//
// Result := qryAvrageFirstEntity.Locate
// ('StuffCode;StuffSize;StuffDiameter;StuffAlloy;ControlCode;StuffGrade;ProductCode;ProductModel',
// VarArrayOf([StuffCode, StuffSize, StuffDiameter, StuffAlloy, ControlCode,
// StuffGrade, ProductCode, ProductModel]), []);
//
// // if Result then
// /// warn(FieldByName('StuffSize').AsString);
//
// end;
// end;

// procedure TCalculateOutPutF.setAvrageFirstEntity2(var s_entity, s_Weight: Real;
// var s_sumIn, s_sumSellIn, p_price, UnitPrice_W, UnitPrice_E,
// S_UnitPrice_E: Currency);
// begin
// with qryAvrageFirstEntity do
// begin
// Active := True;
// // if RecordCount > 0 then
// // ShowQryParam(qryAvrageFirstEntity);
// if LocateCodes then
// begin
// s_entity := Roundto(FieldByName('Entity').AsFloat, opt.RoundEntity);
// s_Weight := Roundto(FieldByName('Weight').AsFloat, opt.RoundEntity);
// s_sumIn := Roundto(FieldByName('TotalPrice').AsCurrency, 0);
// s_sumSellIn := Roundto(FieldByName('TotallSellPrice').AsCurrency, 0);
// end
// else
// begin
// s_entity := 0;
// s_Weight := 0;
// s_sumIn := 0;
// s_sumSellIn := 0;
// end;
// p_price := 0;
// UnitPrice_W := 0;
// UnitPrice_E := 0;
// S_UnitPrice_E := 0;
// end;
// end;

// procedure TCalculateOutPutF.CalcAllAverageNew;
// var
// s_entity: Real;
// s_Weight: Real;
// s_sumIn: Currency;
// s_sumSellIn: Currency;
// p_price: Currency;
// S_price: Currency;
// S_UnitPrice_E: Currency;
// UnitPrice_W: Currency;
// UnitPrice_E: Currency;
// i: Integer;
// begin
// S_price := 0;
//
// DeleteFromReciptsRegulates;
//
// with qryAvrageFirstEntity do
// begin
// qryAllAverage.Active := False;
// Active := False;
// SQL.Text := 'SELECT ReciptItems_Stock_Calc.StoreID';
// SQL.Add(', SUM(ReciptItems_Stock_Calc.InputEntity - ReciptItems_Stock_Calc.OutputEntity) AS Entity,');
// SQL.Add('SUM(ReciptItems_Stock_Calc.TotalInputPrice - ReciptItems_Stock_Calc.TotalOutputPrice) AS TotalPrice');
// SQL.Add(',SUM(ReciptItems_Stock_Calc.InputWeight - ReciptItems_Stock_Calc.OutputWeight) AS Weight,');
// SQL.Add('SUM(CASE WHEN ReciptItems_Stock_Calc.EffectType = 2 THEN 1 ELSE - 1 END *');
// SQL.Add('ReciptItems_Stock_Calc.TotallSellPrice) AS TotallSellPrice,ReciptItems_Stock_Calc.StuffCode,');
// SQL.Add(getCalculateOutPutFields('ReciptItems_Stock_Calc.',
// qryStoresCalculateOutPutFields.AsLargeInt, False));
// SQL.Add('FROM StuffCoding INNER JOIN');
// SQL.Add('ReciptItems_Stock_Calc ON');
// SQL.Add('StuffCoding.c_StuffCode = ReciptItems_Stock_Calc.StuffCode');
// SQL.Add('WHERE (ReciptItems_Stock_Calc.EffectType in( 2, 4)) AND');
// SQL.Add('(dbo.ReciptItems_Stock_Calc.ReciptState < 3) AND');
// SQL.Add('( ReciptItems_Stock_Calc.SellEffect<>1 or');
// SQL.Add('((ReciptItems_Stock_Calc.AutoPrice <>1) and ReciptItems_Stock_Calc.EffectType = 2 )) AND');
// SQL.Add('(ReciptItems_Stock_Calc.ReciptDate between  :DateFrom  AND  :DateTo ) AND (ReciptItems_Stock_Calc.YearID = :YearID) AND');
// SQL.Add('(ReciptItems_Stock_Calc.StoreID = :StoreID )');
// SQL.Add('AND (ReciptItems_Stock_Calc.BuyEffect <> 3 )');
// SQL.Add('AND (ReciptItems_Stock_Calc.StuffCode between :StuffCodeFrom and :StuffCodeTo )');
// SQL.Add('GROUP BY ReciptItems_Stock_Calc.StoreID,ReciptItems_Stock_Calc.StuffCode, ');
// SQL.Add(getCalculateOutPutFields('ReciptItems_Stock_Calc.',
// qryStoresCalculateOutPutFields.AsLargeInt, True));
// Parameters.ParamByName('StoreID').Value :=
// qryStores.FieldByName('n_StoreID').AsInteger;
// Parameters.ParamByName('DateFrom').Value :=
// GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
// Parameters.ParamByName('DateTo').Value :=
// GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
// Parameters.ParamByName('YearID').Value := APPBank.Year;
// Parameters.ParamByName('StuffCodeFrom').Value :=
// GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
// Parameters.ParamByName('StuffCodeTo').Value :=
// GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
//
// end;
//
// with qryAllAverage do
// begin
// Active := False;
// SQL.Text := 'SELECT ReciptItems_Stock_Calc.StoreID, ';
// SQL.Add('ReciptItems_Stock_Calc.StoreID2 , ');
// SQL.Add(getCalculateOutPutFields('ReciptItems_Stock_Calc.',
// qryStoresCalculateOutPutFields.AsLargeInt, False));
// SQL.Add(',StuffCoding.c_StuffName, ReciptItems_Stock_Calc.ReciptDate, ReciptItems_Stock_Calc.ReciptNumber,');
// SQL.Add('ReciptItems_Stock_Calc.ReciptItemID,');
// SQL.Add('ReciptItems_Stock_Calc.InputEntity, ReciptItems_Stock_Calc.OutputEntity,');
// SQL.Add('ReciptItems_Stock_Calc.TotalInputPrice, ReciptItems_Stock_Calc.TotalOutputPrice, ReciptItems_Stock_Calc.EffectType,');
// SQL.Add('ReciptItems_Stock_Calc.AutoPrice, ReciptItems_Stock_Calc.InputWeight,');
// SQL.Add('ReciptItems_Stock_Calc.OutputWeight, ReciptItems_Stock_Calc.TotallSellPrice, ReciptItems_Stock_Calc.ReciptCaption,');
// SQL.Add('ReciptItems_Stock_Calc.ReciptType ,');
// SQL.Add('TotalInputPriceBase , TotalOutputPriceBase,DocNo, ServerID ,YearID,ReciptID');
// SQL.Add(',TotallSellPriceBase,ReciptState,ReciptItems_Stock_Calc.StuffCode');
// SQL.Add('FROM StuffCoding INNER JOIN');
// SQL.Add('ReciptItems_Stock_Calc ON');
// SQL.Add('StuffCoding.c_StuffCode = ReciptItems_Stock_Calc.StuffCode');
//
// SQL.Add('WHERE ((ReciptItems_Stock_Calc.EffectType = 2) OR (ReciptItems_Stock_Calc.EffectType = 4))AND');
// SQL.Add('');
// SQL.Add('');
// SQL.Add('( ReciptItems_Stock_Calc.SellEffect<>1 or');
// SQL.Add('((ReciptItems_Stock_Calc.AutoPrice <>1) and ReciptItems_Stock_Calc.EffectType = 2 )) AND');
// SQL.Add('(dbo.ReciptItems_Stock_Calc.ReciptState < 3) AND');
// SQL.Add('((ReciptItems_Stock_Calc.StoreID = :StoreID ) or ((ReciptItems_Stock_Calc.ReciptType=7) and (');
// SQL.Add('ReciptItems_Stock_Calc.StoreID2 = :StoreID2 ))) AND');
// SQL.Add('(ReciptItems_Stock_Calc.StuffCode between :StuffCodeFrom and :StuffCodeTo ) AND');
// SQL.Add('(ReciptItems_Stock_Calc.ReciptDate between :DateFrom and :DateTo )');
// SQL.Add('AND( ReciptItems_Stock_Calc.YearID = :YearID )');
// SQL.Add('AND (ReciptItems_Stock_Calc.BuyEffect <> 3 )');
// SQL.Add('ORDER BY ');
// SQL.Add(getCalculateOutPutFields('ReciptItems_Stock_Calc.',
// qryStoresCalculateOutPutFields.AsLargeInt, True));
// SQL.Add(',ReciptItems_Stock_Calc.ReciptDate, ReciptItems_Stock_Calc.EffectType,');
// SQL.Add('case when ReciptItems_Stock_Calc.StoreID = :StoreIDOrder then 0 else 1 end ,');
// SQL.Add('ReciptItems_Stock_Calc.ReciptNumber, ReciptItems_Stock_Calc.ReciptItemID');
//
// Parameters.ParamByName('YearID').Value := APPBank.Year;
// Parameters.ParamByName('StoreID').Value :=
// qryStores.FieldByName('n_StoreID').AsInteger;
// Parameters.ParamByName('StoreID2').Value :=
// qryStores.FieldByName('n_StoreID').AsInteger;
// Parameters.ParamByName('StoreIDOrder').Value :=
// qryStores.FieldByName('n_StoreID').AsInteger;
//
// Parameters.ParamByName('DateFrom').Value :=
// GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
//
// Parameters.ParamByName('DateTo').Value :=
// GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
//
// Parameters.ParamByName('StuffCodeFrom').Value :=
// GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
// Parameters.ParamByName('StuffCodeTo').Value :=
// GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
// Active := True;
//
// // BigMessageProgBar(IntToStr(RecordCount),RecordCount);
// if RecordCount > 0 then
// ProgressBar1.Max := RecordCount;
// First;
//
// for i := 1 to Length(ACalcFieldsListprvCode) do
// if FindField(ACalcFieldsListprvCode[i].Name) <> nil then
// ACalcFieldsListprvCode[i].Value :=
// FieldByName(ACalcFieldsListprvCode[i].Name).AsString;
//
// setAvrageFirstEntity2(s_entity, s_Weight, s_sumIn, s_sumSellIn, p_price,
// UnitPrice_W, UnitPrice_E, S_UnitPrice_E); // 1
//
// try
// while not eof do
// begin
// if (s_sumIn <= 0) or (s_sumSellIn <= 0) then
// begin
// if mem1.Lines[mem1.Lines.Count - 1] <> qryAllAverage.FieldByName
// ('StuffCode').AsString then
// mem1.Lines.Add(FieldByName('StuffCode').AsString + ' , ' +
// FieldByName('ReciptNumber').AsString);
// end;
// StatusBar1.Panels[1].Text := 'در حال محاسبه كالاي:  ' +
// FieldByName('StuffCode').AsString + 'فرم:  ' +
// FieldByName('ReciptNumber').AsString;
// Application.ProcessMessages;
//
// if not ChkPrvCode(qryAllAverage) then
// begin
// setAvrageFirstEntity2(s_entity, s_Weight, s_sumIn, s_sumSellIn,
// p_price, UnitPrice_W, UnitPrice_E, S_UnitPrice_E); // 2
// end;
// if FieldByName('EffectType').AsInteger in [2, 6] then
// begin
// if ((FieldByName('AutoPrice').AsInteger = 1) and
// ((((FieldByName('ReciptType').AsInteger = 7) and
// (FieldByName('StoreID2').AsInteger = qryStores.FieldByName
// ('n_StoreID').AsInteger))) or (FieldByName('ReciptType').AsInteger
// <> 7))) then
// begin
// case opt.EntityDisplayType of
// 0, 2:
// begin
// if s_entity > 0 then
// p_price := (s_sumIn / s_entity) *
// FieldByName('InputEntity').AsFloat
// else
// begin
// p_price := UnitPrice_E * FieldByName('InputEntity').AsFloat
// end;
// if s_entity > 0 then
// S_price := (s_sumSellIn / s_entity) *
// FieldByName('InputEntity').AsFloat
// else
// S_price := S_UnitPrice_E *
// FieldByName('InputEntity').AsFloat
// // S_price := 0;
// end;
// // case (0)
// 1, 3:
// begin
// if s_Weight > 0 then
// p_price := (s_sumIn / s_Weight) *
// FieldByName('InputWeight').AsFloat
// else
// begin
// p_price := UnitPrice_W * FieldByName('InputWeight').AsFloat
// end;
//
// if s_Weight > 0 then
// S_price := (s_sumSellIn / s_Weight) *
// FieldByName('InputWeight').AsFloat;
// end; // case (1)
// end; // case
// // Edit;
// p_price := Roundto(p_price, 0);
// if S_price > 0 then
// PostPrice(Roundto(S_price, 0), qryAllAverage, 'TotallSellPrice');
// if CalcReciptsRegulatesActive and
// ((FieldByName('DocNo').AsInteger <> 0) or
// (FieldByName('ReciptState').AsInteger = 2)) then
// begin
// ReciptsRegulates(p_price, FieldByName('TotalInputPrice')
// .AsCurrency);
// end
// else if p_price > 0 then
// PostPrice(Roundto(p_price, 0), qryAllAverage, 'TotalInputPrice');
// end; // if
// if (FieldByName('StoreID').AsInteger = qryStores.FieldByName
// ('n_StoreID').AsInteger) then
// begin
// s_entity := Roundto(s_entity + FieldByName('InputEntity')
// .AsFloat, opt.RoundEntity);
// s_Weight := Roundto(s_Weight + FieldByName('InputWeight')
// .AsFloat, opt.RoundEntity);
// if (((FieldByName('AutoPrice').AsInteger = 1) and
// (FieldByName('StoreID2').AsInteger = 0) and (p_price <> 0))) then
// s_sumIn := Roundto(s_sumIn + Roundto(p_price, 0), 0)
// else
// s_sumIn := Roundto(s_sumIn + FieldByName('TotalInputPrice')
// .AsCurrency, 0);
// if (((FieldByName('AutoPrice').AsInteger = 1) and
// (FieldByName('StoreID2').AsInteger = 0) and (p_price <> 0))) then
// s_sumSellIn := Roundto(s_sumSellIn + Roundto(S_price, 0), 0)
// else
// s_sumSellIn :=
// Roundto(s_sumSellIn + FieldByName('TotallSellPrice')
// .AsInteger, 0);
// if s_entity > 0 then
// UnitPrice_E := Roundto(s_sumIn / s_entity, 0);
// if s_Weight > 0 then

// UnitPrice_W := Roundto(s_sumIn / s_Weight, 0);
// if s_entity > 0 then
// S_UnitPrice_E := s_sumSellIn / s_entity
// else
// S_UnitPrice_E := 0;
// end; // if
// end
// else
// begin
// if (FieldByName('OutputEntity').AsFloat + FieldByName('OutputWeight')
// .AsFloat) >= 0.0001 then
// case opt.EntityDisplayType of
// 0, 2:
// begin
// if s_entity > 0 then
// p_price := (s_sumIn / s_entity) *
// FieldByName('OutputEntity').AsFloat
// else
// p_price := 0;
// if s_entity > 0 then
// S_price := (s_sumSellIn / s_entity) *
// FieldByName('OutputEntity').AsFloat
// else
// S_price := 0;
// end;
// // case (0)
// 1, 3:
// begin
// if s_Weight > 0 then
// p_price := (s_sumIn / s_Weight) *
// FieldByName('OutputWeight').AsFloat
// else
// p_price := 0;
// if s_Weight > 0 then
// S_price := (s_sumSellIn / s_Weight) *
// FieldByName('OutputWeight').AsFloat
// else
// S_price := 0;
// end;
// end // case
// else
// begin
// p_price := 0;
// S_price := 0;
// end;
// p_price := Roundto(p_price, 0);
// S_price := Roundto(S_price, 0);
//
// s_entity := Roundto(s_entity - FieldByName('OutputEntity')
// .AsFloat, opt.RoundEntity);
// s_Weight := Roundto(s_Weight - FieldByName('OutputWeight')
// .AsFloat, opt.RoundEntity);
// s_sumIn := Roundto(s_sumIn - p_price, 0);
// checkEntity(s_sumIn);
// s_sumSellIn := Roundto(s_sumSellIn - S_price, 0);

// if s_entity > 0 then
// UnitPrice_E := Roundto(s_sumIn / s_entity, 0);
// if s_Weight > 0 then
// UnitPrice_W := Roundto(s_sumIn / s_Weight, 0);
// if s_entity > 0 then
// S_UnitPrice_E := Roundto(s_sumSellIn / s_entity, 0);
//
// // Edit;
// if S_price > 0 then
// PostPrice(Roundto(S_price, 0), qryAllAverage, 'TotallSellPrice');
// if CalcReciptsRegulatesActive and
// ((FieldByName('DocNo').AsInteger <> 0) or
// (FieldByName('ReciptState').AsInteger = 2)) then
// begin
// ReciptsRegulates(p_price, FieldByName('TotalOutputPrice')
// .AsCurrency);
// end
// else if p_price >= 0 then
// PostPrice(Roundto(p_price, 0), qryAllAverage, 'TotalOutputPrice');
//
// end; // if 11
//
// for i := 1 to Length(ACalcFieldsListprvCode) do
// if FindField(ACalcFieldsListprvCode[i].Name) <> nil then
// ACalcFieldsListprvCode[i].Value :=
// FieldByName(ACalcFieldsListprvCode[i].Name).AsString;
//
// ProgressBar1.StepIt;
// Next;
// end; // while
// finally
// // BigMessage('ثبت شد .',1);
// end; // try
// end; // with
// end;

procedure TCalculateOutPutF.FormCreate(Sender: TObject);
begin
  inherited;
  case opt.EntityDisplayType of
    0, 2:
      DisplayEntity := 'Entity';
    1, 3:
      DisplayEntity := 'Weight';
  end;
  Entity_Weight(DBGrid1);
  SQLAvrageFirstEntity := qryAvrageFirstEntity.SQL.Text;
  medtDate.Text := var_glb_CurrentDate;
  pnlReciptsRegulates.Visible := opt.CalcReciptsRegulatesActive;
end;

procedure TCalculateOutPutF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  medtDate.Enabled := RadioGroup1.ItemIndex = 1
end;

procedure TCalculateOutPutF.CallReciptsRegulates(p_price, TotalPrice: Currency;
  qry: TADOQuery);
var
  txt: string;
begin
  if Roundto(p_price, 0) - TotalPrice <> 0 then
    with qryReciptsRegulates do
      try
        Open;
        Insert;
        FieldByName('ServerID').AsInteger := qry.FieldByName('ServerID')
          .AsInteger;
        FieldByName('YearID').AsInteger := qry.FieldByName('YearID').AsInteger;
        FieldByName('ReciptItemID').AsInteger := qry.FieldByName('ReciptItemID')
          .AsInteger;
        FieldByName('ReciptID').AsInteger := qry.FieldByName('ReciptID')
          .AsInteger;
        FieldByName('RegDate').AsString := IfThen(RadioGroup1.ItemIndex = 0,
          qry.FieldByName('ReciptDate').AsString, Trim(medtDate.Text));
        txt := 'SELECT MAX(RegRowId) FROM ReciptsRegulates ' +
          ' WHERE ( YearID = ' + qry.FieldByName('YearID').AsString + ') AND ' +
          ' ServerID = ' + qry.FieldByName('ServerID').AsString;
        FieldByName('RegRowId').AsInteger := GetANewCode(Self.Name, txt,
          'RegRowId');

        FieldByName('RegPrice').AsCurrency := Roundto(p_price, 0) - TotalPrice;
        FieldByName('RegNote').AsString := 'قيمت گذاري توسط سيستم';
        FieldByName('CustID').AsInteger := 0;
        Post;
      finally
        // Close;
        FreeReservedCodes(dmf.adcBSell, '', '', Self.Name);
      end;

end;

procedure TCalculateOutPutF.CedarDbgrid2DblClick(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryCheckCalc, mainf);
end;

procedure TCalculateOutPutF.Checking(Step: Byte);
begin
  with qryCheck do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('StoreID2From').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreID2To').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Active := True;
  end;
  SumGrid1.Active := False;
  SumGrid1.Active := True;
  if SumGrid1.GetValueField('Price') <> 0 then
  begin
    if Step = 1 then
    begin
      CheckPrice := SumGrid1.GetValueField('Price');
    end;
    if Step = 2 then
    begin
      grpCheck.Visible := True;
      if CheckPrice <> SumGrid1.GetValueField('Price') then
        warn2('با توجه به تعدد جابجايي كالاهاي بين انبارها،' + #13 +
          'ضروري است براي كالاهاي ليست شده مجددا قيمت گذاري اجرا شود.‏', 3000)
      else
        warn2('لطفا تقدم و تاخر تاريخ ثبت را براي كالاهاي ليست شده بررسي نماييد،'
          + #13 + 'احتمالا تقدم تاريخ در ثبت اطلاعات رعايت نشده است.‏', 3000);
    end;
  end
  else
    grpCheck.Visible := False;
end;

procedure TCalculateOutPutF.ChekCalculate;
var
  s, s2: string;
begin
  if not IsActiveCalcPriceOnServer then
    Abort;

  dmf.adcBSell.Execute('UPDATE ReciptTypes SET AutoPrice = 1 ' +
    ' WHERE (EffectType in( 4,7,8)) AND (ISNULL(AutoPrice, 0) <> 1) AND (BuyEffect <> 3 )');

  With dmf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ReciptType, ReciptCaption';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (EffectType = 2) AND (AutoPrice = 1)  AND (replace (MnuPlaceIDs,''0'','''') > ''0'')');
    Active := True;
    while not eof do
    begin
      s := s + #13#10 + Fields[0].AsString + ' - ' + Fields[1].AsString
        + #13#10;
      Next;
    end;
    Active := False;
    SQL.Text := 'SELECT ReciptType, ReciptCaption';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (EffectType in ( 4,7,8)) AND (SellEffect = 1)');
    Active := True;
    while not eof do
    begin
      s2 := s2 + #13#10 + Fields[0].AsString + ' - ' + Fields[1]
        .AsString + #13#10;
      Next;
    end;
    Active := False;
    SQL.Text := 'SELECT LTRIM(ReciptType) + ''-'' + ReciptCaption';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (ReciptType = 7) AND (IncreasingInventory = 1)');
    Active := True;
    if RecordCount > 0 then
    begin
      Warn('اشکال در شروع قیمت گذاری ' + #13#10 + Fields[0].AsString, mtError);
      Abort;
    end;
    Active := False;

  end;

  if s <> EmptyStr then
    if get_response('در صورت قيمت گذاري' + #13#10 +
      ' كليه فرم هاي زير نيز قيمت گذاري خواهند شد' + #13#10 + #13#10 + s +
      #13#10 + #13#10 + 'آيا مطمئن هستيد!!!؟', clRed) <> mrYes then
      Abort;

  if s2 <> EmptyStr then
    if get_response('در صورت قيمت گذاري' + #13#10 +
      ' كليه فرم هاي زير نيز قيمت گذاري نخواهند شد' + #13#10 +
      'كاهنده موجودي با نوع تاثير بر فروش مثبت' + #13#10 + s2 + #13#10 + #13#10
      + 'آيا مطمئن هستيد!!!؟', clGreen) <> mrYes then
      Abort;
end;

procedure TCalculateOutPutF.DBGrid2Exit(Sender: TObject);
begin
  inherited;
  DBGrid2.Enabled := False
end;

procedure TCalculateOutPutF.btnAllCalculateClick(Sender: TObject);
begin
  inherited;
  CountWarn := 0;
  mem1.Lines.Clear;
  ChekCalculate;
  if get_response('آيا مي‏خواهيد عمليات قيمت گذاري انجام شود؟‏') <> mrYes then
    Exit;
  actAllCalculate.Execute;
  pnlMemo.Visible := mem1.Lines.Count > 0;
  FreeReservedCodes(dmf.adcBSell, '', '', Self.Name);
end;

procedure TCalculateOutPutF.btnAllCalculatLoopClick(Sender: TObject);
var
  TotalOutputPrice1, TotalOutputPrice2: Currency;
begin
  inherited;
  ChekCalculate;

  if get_response('آيا مي‏خواهيد عمليات قيمت گذاري انجام شود؟‏') <> mrYes then
    Exit;

  with TADOQuery.Create(Self) do
    try
      Connection := dmf.adcBSell;
      SQL.Text :=
        'SELECT SUM(ReciptItems.TotalOutputPrice) AS TotalOutputPrice';
      SQL.Add('FROM Recipts INNER JOIN');
      SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
      SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
      SQL.Add('Recipts.YearID = ReciptItems.YearID ');
      SQL.Add('WHERE (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
      SQL.Add('AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
      SQL.Add('AND ((ReciptTypes.EffectType in( 4,7,8))OR(ReciptTypes.AutoPrice = 1))');
      SQL.Add('AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)');
      SQL.Add('AND( ReciptItems.YearID = :YearID )');
      SQL.Add('AND (ReciptTypes.BuyEffect <> 3 )');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('DateFrom').Value :=
        GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
      Parameters.ParamByName('DateTo').Value :=
        GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
      Parameters.ParamByName('StuffCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffCodeTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StoreIDFrom').Value :=
        GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
      Parameters.ParamByName('StoreIDTo').Value :=
        GetcTo(myParams.ParamValues['StoreID'], ftInteger);
      Open;
      TotalOutputPrice1 := Fields[0].AsCurrency;
      actAllCalculate.Execute;
      Close;
      Open;
      TotalOutputPrice2 := Fields[0].AsCurrency;;
      while TotalOutputPrice1 - TotalOutputPrice2 > 0 do
      begin
        TotalOutputPrice1 := TotalOutputPrice2;
        actAllCalculate.Execute;
        Close;
        Open;
        TotalOutputPrice2 := Fields[0].AsCurrency;;
      end;
    finally
      Free;
      FreeReservedCodes(dmf.adcBSell, '', '', Self.Name);
    end;
end;

procedure TCalculateOutPutF.CalcAllAverageNew2;
var
  s_entity: Real;
  s_Weight: Real;
  s_sumIn: Currency;
  s_sumSell_In: Currency;
  p_price: Currency;
  S_price: Currency;
  prvCode: string;
  prvAnbar: Integer;
  S_UnitPrice_E: Currency;
  UnitPrice_W: Currency;
  UnitPrice_E: Currency;
  // P_UnitPrice_W: Currency;
  procedure setAvrageFirstEntity;
  begin
    with qryAvrageFirstEntity do
    begin
      Active := True;
      if Locate('StuffCode', qryAllAverage.FieldByName('StuffCode').AsString, [])
      then
      begin
        s_entity := Roundto(FieldByName('Entity').AsFloat, opt.RoundEntity);
        s_Weight := Roundto(FieldByName('Weight').AsFloat, opt.RoundEntity);
        s_sumIn := Roundto(FieldByName('TotalPrice').AsLargeInt, 0);
        s_sumSell_In := Roundto(FieldByName('TotallSellPrice').AsLargeInt, 0);
        // 4
      end
      else
      begin
        s_entity := 0;
        s_Weight := 0;
        s_sumIn := 0;
        s_sumSell_In := 0;
      end;
      p_price := 0;
      UnitPrice_W := 0;
      UnitPrice_E := 0;
      S_UnitPrice_E := 0;
    end;
  end;

begin
  // S_UnitPrice_E := 0 ;
  // S_UnitPrice_W := 0 ;
  // P_UnitPrice_E := 0 ;
  // P_UnitPrice_W := 0 ;
  S_price := 0;

  DeleteFromReciptsRegulates;

  with qryAllAverage do
  begin
    Active := False;
    qryAvrageFirstEntity.Active := False;
    /// new
    qryAvrageFirstEntity.SQL.Text := StringReplace(SQLAvrageFirstEntity,
      ':AverageKind', IntToStr(0), [rfReplaceAll]);
    SQL := qryAverage.SQL;

    SQL.Text := StringReplace(SQL.Text,
      'ReciptItems_Stock_Calc.StuffCode AS StuffCode,',
      getCalculateOutPutFields2(qryStoresCalculateOutPutFields.AsLargeInt) +
      ' AS StuffCode,', [rfReplaceAll]);

    SQL.Text := StringReplace(SQL.Text, 'ReciptItems_Stock_Calc.StuffCode,',
      getCalculateOutPutFields2(qryStoresCalculateOutPutFields.AsLargeInt) +
      ',', [rfReplaceAll]);

    qryAvrageFirstEntity.Parameters.ParamByName('StoreID').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    qryAvrageFirstEntity.Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);

    // GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('StoreID').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    Parameters.ParamByName('StoreID2').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;
    Parameters.ParamByName('StoreIDOrder').Value :=
      qryStores.FieldByName('n_StoreID').AsInteger;

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Active := True;
    // BigMessageProgBar(IntToStr(RecordCount),RecordCount);
    if RecordCount > 0 then
      ProgressBar1.Max := RecordCount;
    First;
    setAvrageFirstEntity;
    prvAnbar := FieldByName('StoreID').AsInteger;
    prvCode := FieldByName('StuffCode').AsString;

    try
      while not eof do
      begin
        if (s_sumIn <= 0) or (s_sumSell_In <= 0) then
        begin
          if mem1.Lines[mem1.Lines.Count - 1] <> qryAllAverage.FieldByName
            ('StuffCode').AsString then
            mem1.Lines.Add(FieldByName('StuffCode').AsString + ' , ' +
              FieldByName('ReciptNumber').AsString + '_' +
              FieldByName('ReciptCaption').AsString + ' انبار:' +
              FieldByName('StoreID').AsString);
        end;
        StatusBar1.Panels[1].Text := 'در حال محاسبه كالاي:  ' +
          FieldByName('StuffCode').AsString + 'فرم:  ' +
          FieldByName('ReciptNumber').AsString;
        Application.ProcessMessages;

        if (FieldByName('StuffCode').AsString <> prvCode) then
        begin

          setAvrageFirstEntity;

        end;
        if FieldByName('EffectType').AsInteger in [2, 6] then
        begin
          if ((FieldByName('AutoPrice').AsInteger = 1) and
            ((((FieldByName('ReciptType').AsInteger = 7) and
            (FieldByName('StoreID2').AsInteger = qryStores.FieldByName
            ('n_StoreID').AsInteger))) or (FieldByName('ReciptType').AsInteger
            <> 7))) then
          begin
            case opt.EntityDisplayType of
              0, 2:
                begin
                  if s_entity > 0 then
                    p_price := (s_sumIn / s_entity) *
                      FieldByName('InputEntity').AsFloat
                  else
                  begin
                    p_price := UnitPrice_E * FieldByName('InputEntity').AsFloat
                  end;
                  if s_entity > 0 then
                    S_price := (s_sumSell_In / s_entity) *
                      FieldByName('InputEntity').AsFloat
                  else
                    S_price := S_UnitPrice_E *
                      FieldByName('InputEntity').AsFloat
                    // S_price := 0;
                end;
              // case (0)
              1, 3:
                begin
                  if s_Weight > 0 then
                    p_price := (s_sumIn / s_Weight) *
                      FieldByName('InputWeight').AsFloat
                  else
                  begin
                    p_price := UnitPrice_W * FieldByName('InputWeight').AsFloat
                  end;

                  if s_Weight > 0 then
                    S_price := (s_sumSell_In / s_Weight) *
                      FieldByName('InputWeight').AsFloat;
                end; // case (1)

            end; // case
            // Edit;
            p_price := Roundto(p_price, 0);
            if S_price > 0 then
              PostPrice(Roundto(S_price, 0), qryAllAverage, 'TotallSellPrice');
            // 5
            if opt.CalcReciptsRegulatesActive and
              ((FieldByName('DocNo').AsInteger <> 0) or
              (FieldByName('ReciptState').AsInteger = 2)) then
            begin
              CallReciptsRegulates(p_price, FieldByName('TotalInputPrice')
                .AsCurrency, qryAllAverage);
            end
            else if p_price > 0 then
              PostPrice(Roundto(p_price, 0), qryAllAverage, 'TotalInputPrice');
          end; // if
          if (FieldByName('StoreID').AsInteger = qryStores.FieldByName
            ('n_StoreID').AsInteger) then
          begin
            s_entity := Roundto(s_entity + FieldByName('InputEntity').AsFloat,
              opt.RoundEntity);
            s_Weight := Roundto(s_Weight + FieldByName('InputWeight').AsFloat,
              opt.RoundEntity);
            if (((FieldByName('AutoPrice').AsInteger = 1) and
              (FieldByName('StoreID2').AsInteger = 0) and (p_price <> 0))) then
              s_sumIn := Roundto(s_sumIn + Roundto(p_price, 0), 0)
            else
              s_sumIn := Roundto(s_sumIn + FieldByName('TotalInputPrice')
                .AsCurrency, 0);
            if (((FieldByName('AutoPrice').AsInteger = 1) and
              (FieldByName('StoreID2').AsInteger = 0) and (p_price <> 0))) then
              s_sumSell_In := Roundto(s_sumSell_In + Roundto(S_price, 0), 0)
            else
              s_sumSell_In :=
                Roundto(s_sumSell_In + FieldByName('TotallSellPrice') // 6
                .AsCurrency, 0);
            if s_entity > 0 then
              UnitPrice_E := Roundto(s_sumIn / s_entity, 0);
            if s_Weight > 0 then
              UnitPrice_W := Roundto(s_sumIn / s_Weight, 0);
            if s_entity > 0 then
              S_UnitPrice_E := s_sumSell_In / s_entity
            else
              S_UnitPrice_E := 0;
          end; // if
          // if s_entity>0 then S_UnitPrice_E:=s_sumSellIn/s_entity else S_UnitPrice_E:=0  ;
          // if s_Weight>0 then S_UnitPrice_W:=(s_sumSellIn/s_Weight) else S_UnitPrice_W:=0;
          // if s_entity>0 then P_UnitPrice_E:=(s_sumIn/s_entity) else P_UnitPrice_E:=0;
          // if s_Weight>0 then P_UnitPrice_W:=(s_sumIn/s_Weight) else P_UnitPrice_W:=0 ;
        end
        else
        begin
          if (FieldByName('OutputEntity').AsFloat + FieldByName('OutputWeight')
            .AsFloat) >= 0.0001 then
            case opt.EntityDisplayType of
              0, 2:
                begin
                  if s_entity > 0 then
                    p_price := (s_sumIn / s_entity) *
                      FieldByName('OutputEntity').AsFloat
                  else
                    p_price := 0;
                  if s_entity > 0 then
                    S_price := (s_sumSell_In / s_entity) *
                      FieldByName('OutputEntity').AsFloat
                  else
                    S_price := 0;
                end;
              // case (0)
              1, 3:
                begin
                  if s_Weight > 0 then
                    p_price := (s_sumIn / s_Weight) *
                      FieldByName('OutputWeight').AsFloat
                  else
                    p_price := 0;
                  if s_Weight > 0 then
                    S_price := (s_sumSell_In / s_Weight) *
                      FieldByName('OutputWeight').AsFloat
                  else
                    S_price := 0;
                end;
            end // case
          else
          begin
            p_price := 0;
            S_price := 0;
          end;
          p_price := Roundto(p_price, 0);
          S_price := Roundto(S_price, 0);

          s_entity := Roundto(s_entity - FieldByName('OutputEntity').AsFloat,
            opt.RoundEntity);
          s_Weight := Roundto(s_Weight - FieldByName('OutputWeight').AsFloat,
            opt.RoundEntity);
          s_sumIn := Roundto(s_sumIn - p_price, 0);
          checkEntity(s_sumIn);
          s_sumSell_In := Roundto(s_sumSell_In - S_price, 0);
          if s_entity > 0 then
            UnitPrice_E := Roundto(s_sumIn / s_entity, 0);
          if s_Weight > 0 then
            UnitPrice_W := Roundto(s_sumIn / s_Weight, 0);
          if s_entity > 0 then
            S_UnitPrice_E := Roundto(s_sumSell_In / s_entity, 0);

          // Edit;
          if S_price > 0 then
            PostPrice(Roundto(S_price, 0), qryAllAverage, 'TotallSellPrice');
          // 7
          if opt.CalcReciptsRegulatesActive and
            ((FieldByName('DocNo').AsInteger <> 0) or
            (FieldByName('ReciptState').AsInteger = 2)) then
          begin
            CallReciptsRegulates(p_price, FieldByName('TotalOutputPrice')
              .AsCurrency, qryAllAverage);
          end
          else if p_price >= 0 then
            PostPrice(Roundto(p_price, 0), qryAllAverage, 'TotalOutputPrice');

        end; // if 11
        // prvAnbar:= FieldByName('StoreID').AsInteger ;
        prvCode := FieldByName('StuffCode').AsString;
        // GoProgressBar(IntToStr(RecNo));
        ProgressBar1.StepIt;
        Next;
      end; // while
    finally
      // BigMessage('ثبت شد .',1);
    end; // try
  end; // with
end;

procedure TCalculateOutPutF.CalcAllStoreAverage;
var
  s_entity: Real;
  s_Weight: Real;
  s_sumIn: Currency;
  s_sumSellIn: Currency;
  p_price: Currency;
  S_price: Currency;
  prvCode: Int64;
  S_UnitPrice_E: Currency;
  UnitPrice_W: Currency;
  UnitPrice_E: Currency;
  procedure setAvrageFirstEntity;
  begin
    with qryAvrageFirstEntityAllStore do
    begin
      Active := True;
      if Locate('StuffCode', qryAverageAllStore.FieldByName('StuffCode')
        .AsLargeInt, []) then
      begin
        s_entity := Roundto(FieldByName('Entity').AsFloat, opt.RoundEntity);
        s_Weight := Roundto(FieldByName('Weight').AsFloat, opt.RoundEntity);
        s_sumIn := Roundto(FieldByName('TotalPrice').AsLargeInt, 0);
        s_sumSellIn := Roundto(FieldByName('TotallSellPrice').AsLargeInt, 0);
        // 8
      end
      else
      begin
        s_entity := 0;
        s_Weight := 0;
        s_sumIn := 0;
        s_sumSellIn := 0;
      end;
      p_price := 0;
      UnitPrice_W := 0;
      UnitPrice_E := 0;
      S_UnitPrice_E := 0;
    end;
  end;

begin
  S_price := 0;
  DeleteFromReciptsRegulates;
  with qryAvrageFirstEntityAllStore do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('DateFrom').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    // GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
  end;

  with qryAverageAllStore do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Active := True;
    // BigMessageProgBar(IntToStr(RecordCount),RecordCount);
    if RecordCount > 0 then
      ProgressBar1.Max := RecordCount;
    First;
    setAvrageFirstEntity;
    prvCode := FieldByName('StuffCode').AsLargeInt;

    try
      while not eof do
      begin
        if (s_sumIn <= 0) or (s_sumSellIn <= 0) then
        begin
          if mem1.Lines[mem1.Lines.Count - 1] <> qryAverageAllStore.FieldByName
            ('StuffCode').AsString then
            mem1.Lines.Add(FieldByName('StuffCode').AsString + ' , ' +
              FieldByName('ReciptNumber').AsString + '_' +
              FieldByName('ReciptCaption').AsString);
        end;
        StatusBar1.Panels[1].Text := 'در حال محاسبه كالاي:  ' +
          FieldByName('StuffCode').AsString + 'فرم:  ' +
          FieldByName('ReciptNumber').AsString;
        Application.ProcessMessages;

        if (FieldByName('StuffCode').AsLargeInt <> prvCode) then
        begin
          setAvrageFirstEntity;
        end;
        if FieldByName('EffectType').AsInteger in [2, 6] then
        begin
          if (FieldByName('AutoPrice').AsInteger = 1) then
          begin
            case opt.EntityDisplayType of
              0, 2:
                begin
                  if s_entity > 0 then
                    p_price := (s_sumIn / s_entity) *
                      FieldByName('InputEntity').AsFloat
                  else
                  begin
                    p_price := UnitPrice_E * FieldByName('InputEntity').AsFloat
                  end;
                  if s_entity > 0 then
                    S_price := (s_sumSellIn / s_entity) *
                      FieldByName('InputEntity').AsFloat
                  else
                    S_price := S_UnitPrice_E *
                      FieldByName('InputEntity').AsFloat
                    // S_price := 0;
                end;
              // case (0)
              1, 3:
                begin
                  if s_Weight > 0 then
                    p_price := (s_sumIn / s_Weight) *
                      FieldByName('InputWeight').AsFloat
                  else
                  begin
                    p_price := UnitPrice_W * FieldByName('InputWeight').AsFloat
                  end;

                  if s_Weight > 0 then
                    S_price := (s_sumSellIn / s_Weight) *
                      FieldByName('InputWeight').AsFloat;
                end; // case (1)

            end; // case
            // Edit;
            p_price := Roundto(p_price, 0);
            if S_price > 0 then
              PostPrice(Roundto(S_price, 0), qryAverageAllStore,
                'TotallSellPrice'); // 9
            if opt.CalcReciptsRegulatesActive and
              ((FieldByName('DocNo').AsInteger <> 0) or
              (FieldByName('ReciptState').AsInteger = 2)) then
            begin
              CallReciptsRegulates(p_price, FieldByName('TotalInputPrice')
                .AsCurrency, qryAverageAllStore);
            end
            else if p_price > 0 then
              PostPrice(Roundto(p_price, 0), qryAverageAllStore,
                'TotalInputPrice');
          end; // if
          s_entity := Roundto(s_entity + FieldByName('InputEntity').AsFloat,
            opt.RoundEntity);
          s_Weight := Roundto(s_Weight + FieldByName('InputWeight').AsFloat,
            opt.RoundEntity);
          if (((FieldByName('AutoPrice').AsInteger = 1) and (p_price <> 0)))
          then
            s_sumIn := Roundto(s_sumIn + Roundto(p_price, 0), 0)
          else
            s_sumIn := Roundto(s_sumIn + FieldByName('TotalInputPrice')
              .AsCurrency, 0);
          if (((FieldByName('AutoPrice').AsInteger = 1) and (p_price <> 0)))
          then
            s_sumSellIn := Roundto(s_sumSellIn + Roundto(S_price, 0), 0)
          else
            s_sumSellIn := Roundto(s_sumSellIn + FieldByName('TotallSellPrice')
              // 10
              .AsCurrency, 0);
          if s_entity > 0 then
            UnitPrice_E := Roundto(s_sumIn / s_entity, 0);
          if s_Weight > 0 then
            UnitPrice_W := Roundto(s_sumIn / s_Weight, 0);
          if s_entity > 0 then
            S_UnitPrice_E := s_sumSellIn / s_entity
          else
            S_UnitPrice_E := 0;

        end
        else
        begin
          if (FieldByName('OutputEntity').AsFloat + FieldByName('OutputWeight')
            .AsFloat) >= 0.0001 then
            case opt.EntityDisplayType of
              0, 2:
                begin
                  if s_entity > 0 then
                    p_price := (s_sumIn / s_entity) *
                      FieldByName('OutputEntity').AsFloat
                  else
                    p_price := 0;
                  if s_entity > 0 then
                    S_price := (s_sumSellIn / s_entity) *
                      FieldByName('OutputEntity').AsFloat
                  else
                    S_price := 0;
                end;
              // case (0)
              1, 3:
                begin
                  if s_Weight > 0 then
                    p_price := (s_sumIn / s_Weight) *
                      FieldByName('OutputWeight').AsFloat
                  else
                    p_price := 0;
                  if s_Weight > 0 then
                    S_price := (s_sumSellIn / s_Weight) *
                      FieldByName('OutputWeight').AsFloat
                  else
                    S_price := 0;
                end;

            end // case
          else
          begin
            p_price := 0;
            S_price := 0;
          end;
          p_price := Roundto(p_price, 0);
          S_price := Roundto(S_price, 0);

          s_entity := Roundto(s_entity - FieldByName('OutputEntity').AsFloat,
            opt.RoundEntity);
          s_Weight := Roundto(s_Weight - FieldByName('OutputWeight').AsFloat,
            opt.RoundEntity);
          s_sumIn := Roundto(s_sumIn - p_price, 0);
          checkEntity(s_sumIn);
          s_sumSellIn := Roundto(s_sumSellIn - S_price, 0);
          if s_entity > 0 then
            UnitPrice_E := Roundto(s_sumIn / s_entity, 0);
          if s_Weight > 0 then
            UnitPrice_W := Roundto(s_sumIn / s_Weight, 0);
          if s_entity > 0 then
            S_UnitPrice_E := Roundto(s_sumSellIn / s_entity, 0);

          // Edit;
          if S_price > 0 then
            PostPrice(Roundto(S_price, 0), qryAverageAllStore,
              'TotallSellPrice'); // 11
          if opt.CalcReciptsRegulatesActive and
            ((FieldByName('DocNo').AsInteger <> 0) or
            (FieldByName('ReciptState').AsInteger = 2)) then
          begin
            CallReciptsRegulates(p_price, FieldByName('TotalOutputPrice')
              .AsCurrency, qryAverageAllStore);
          end
          else if p_price >= 0 then
            PostPrice(Roundto(p_price, 0), qryAverageAllStore,
              'TotalOutputPrice');

        end;
        prvCode := FieldByName('StuffCode').AsLargeInt;
        // GoProgressBar(IntToStr(RecNo));
        ProgressBar1.StepIt;
        Next;
      end; // while
    finally
      // BigMessage('ثبت شد .',1);
    end; // try
  end; // with
end;

procedure TCalculateOutPutF.CalculateFifo3(StuffCode: String);
var
  requiredEntity, sumEntity, UseEntity: Real;
  TotalPice, sumPrice, UnitPrice, LastUnitPrice: Real;
  DateFromRemain, s: String;
  id: Largeint;
  TempQuery: TADOQuery;
  BatchCount: Integer;
begin
  sumPrice := 0;
  sumEntity := 0;
  TotalPice := 0;
  StatusBar1.Panels[0].Text := StuffCode;
  qry1Out.DisableControls;
  qry0In.DisableControls;

  TempQuery := TADOQuery.Create(nil);
  try
    TempQuery.Connection := theMainConnection;
    TempQuery.CommandTimeout := 120;
    TempQuery.LockType := ltBatchOptimistic;
    TempQuery.CursorType := ctDynamic;
    TempQuery.SQL.Text := 'SELECT ReciptItemID, ReciptID, ServerID, YearID, ' +
      'UnitSellPrice, TotalInputPrice, TotalOutputPrice ' + 'FROM #TempUpdates';
    TempQuery.Open;

    with qry0In do
    begin
      if not Active then
      begin
        CommandTimeout := 60;
        LockType := ltBatchOptimistic;
        CursorType := ctDynamic;
        Parameters.ParamByName('StoreIdFrom').Value :=
          qryStores.FieldByName('n_StoreID').AsInteger;
        Parameters.ParamByName('StoreIdTo').Value :=
          qryStores.FieldByName('n_StoreID').AsInteger;
        Parameters.ParamByName('StuffCode').Value :=
          GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
        Parameters.ParamByName('StuffCode1').Value :=
          GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
        Parameters.ParamByName('DateFrom').Value :=
          GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
        Parameters.ParamByName('DateTo').Value :=
          GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
        Parameters.ParamByName('ControlCodeFrom').Value := -999999999;
        Parameters.ParamByName('ControlCodeTo').Value := 2147483647;
        DateFromRemain := GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
        DateFromRemain :=
          miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
        Parameters.ParamByName('DateFromRemain').Value := DateFromRemain;
        Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
        Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
        Parameters.ParamByName('DiameterFrom').Value := -999999999;
        Parameters.ParamByName('Diameterto').Value := 2147483647;
        Parameters.ParamByName('PersonID1DFrom').Value := -999999999;
        Parameters.ParamByName('PersonID1DTo').Value := 2147483647;
        Parameters.ParamByName('PersonID4From').Value := -999999999;
        Parameters.ParamByName('PersonID4To').Value := 2147483647;
        Active := True;
      end;
      Filter := 'StuffCode = ' + StuffCode;
      Filtered := True;
      if IsEmpty then
      begin
        raise Exception.Create('qry0In is empty for StuffCode: ' + StuffCode);
      end;
      UnitPrice := 0;
      while not eof do
      begin
        Edit;
        qry0InCInputEntity.AsFloat := qry0InInputEntity.AsFloat;
        qry0InCTotalInputPrice.AsFloat := qry0InTotalInputPrice.AsFloat;
        if UnitPrice <> 0 then
          if (qry0InIncreasingInventory.AsInteger = 1) and
            (qry0InCTotalInputPrice.AsFloat <= 0) then
            qry0InCTotalInputPrice.AsFloat :=
              Roundto(qry0InCInputEntity.AsFloat * UnitPrice, 0);
        if (qry0InautoPrice.AsFloat = 0) and (qry0InCInputEntity.AsFloat > 0)
          and (UnitPrice = 0) then
          UnitPrice := Roundto(qry0InCTotalInputPrice.AsFloat /
            qry0InCInputEntity.AsFloat, -9);
        if (qry0InautoPrice.AsFloat = 1) then
          qry0InCTotalInputPrice.AsFloat := 0;
        Post;
        Next;
      end;
      First;
    end;

    with qry1Out do
    begin
      if not Active then
      begin
        CommandTimeout := 60;
        LockType := ltBatchOptimistic;
        CursorType := ctDynamic;
        Active := False;
        Parameters := qry0In.Parameters;
        Active := True;
      end;
      Filter := 'StuffCode = ' + StuffCode;
      Filtered := True;
    end;

    qry1Out.EnableControls;
    qry0In.EnableControls;

    BatchCount := 0;
    with qry1Out do
    begin
      while not eof do
      begin
        if (FieldByName('Input' + DisplayEntity).AsFloat > 0) then
        begin
          id := qry1Outid.AsLargeInt;
          if qry0In.Locate('id', id, []) then
          begin
            qry0In.First;
            if qry0InCInputEntity.AsFloat > 0 then
            begin
              if qry0InCTotalInputPrice.AsFloat > 0 then
                UnitPrice := Roundto(qry0InCTotalInputPrice.AsFloat /
                  qry0InCInputEntity.AsFloat, -9);
            end
            else
              UnitPrice := 0;
            TotalPice := FieldByName('Input' + DisplayEntity).AsFloat *
              UnitPrice;
            TotalPice := Roundto(TotalPice, 0);
            if TotalPice > 0 then
            begin
              TempQuery.Append;
              TempQuery.FieldByName('ReciptItemID').AsInteger :=
                FieldByName('ReciptItemID').AsInteger;
              TempQuery.FieldByName('ReciptID').AsInteger :=
                FieldByName('ReciptID').AsInteger;
              TempQuery.FieldByName('ServerID').AsInteger :=
                FieldByName('ServerID').AsInteger;
              TempQuery.FieldByName('YearID').AsInteger := FieldByName('YearID')
                .AsInteger;
              TempQuery.FieldByName('UnitSellPrice').AsFloat := UnitPrice;
              TempQuery.FieldByName('TotalInputPrice').AsFloat := TotalPice;
              TempQuery.FieldByName('TotalOutputPrice').AsFloat := 0;
              TempQuery.Post;

              if not qry0In.Locate('id', id, []) then
              begin
                raise Exception.Create('qry0In cannot locate id: ' +
                  IntToStr(id));
              end;
              if not qry0In.IsEmpty and not qry0In.eof then
              begin
                qry0In.Edit;
                qry0InCTotalInputPrice.AsFloat := TotalPice;
                qry0In.Post;
              end;
              qry0In.First;
            end;
          end
          else
          begin
            TotalPice := FieldByName('Input' + DisplayEntity).AsFloat *
              LastUnitPrice;
            TempQuery.Append;
            TempQuery.FieldByName('ReciptItemID').AsInteger :=
              FieldByName('ReciptItemID').AsInteger;
            TempQuery.FieldByName('ReciptID').AsInteger :=
              FieldByName('ReciptID').AsInteger;
            TempQuery.FieldByName('ServerID').AsInteger :=
              FieldByName('ServerID').AsInteger;
            TempQuery.FieldByName('YearID').AsInteger := FieldByName('YearID')
              .AsInteger;
            TempQuery.FieldByName('UnitSellPrice').AsFloat := LastUnitPrice;
            TempQuery.FieldByName('TotalInputPrice').AsFloat := TotalPice;
            TempQuery.FieldByName('TotalOutputPrice').AsFloat := 0;
            TempQuery.Post;
          end;
        end
        else if FieldByName('Output' + DisplayEntity).AsFloat <=
          qry0InCInputEntity.AsFloat then
        begin
          if qry0InCInputEntity.AsFloat > 0 then
          begin
            if qry0InCTotalInputPrice.AsFloat > 0 then
              UnitPrice := Roundto(qry0InCTotalInputPrice.AsFloat /
                qry0InCInputEntity.AsFloat, -9);
          end
          else
            UnitPrice := 0;
          TotalPice := FieldByName('Output' + DisplayEntity).AsFloat *
            UnitPrice;
          TotalPice := Roundto(TotalPice, 0);
          if TotalPice > 0 then
          begin
            TempQuery.Append;
            TempQuery.FieldByName('ReciptItemID').AsInteger :=
              FieldByName('ReciptItemID').AsInteger;
            TempQuery.FieldByName('ReciptID').AsInteger :=
              FieldByName('ReciptID').AsInteger;
            TempQuery.FieldByName('ServerID').AsInteger :=
              FieldByName('ServerID').AsInteger;
            TempQuery.FieldByName('YearID').AsInteger := FieldByName('YearID')
              .AsInteger;
            TempQuery.FieldByName('UnitSellPrice').AsFloat := UnitPrice;
            TempQuery.FieldByName('TotalInputPrice').AsFloat := 0;
            TempQuery.FieldByName('TotalOutputPrice').AsFloat := TotalPice;
            TempQuery.Post;

            if not qry0In.IsEmpty and not qry0In.eof then
            begin
              qry0In.Edit;
              qry0InCInputEntity.AsFloat := qry0InCInputEntity.AsFloat -
                FieldByName('Output' + DisplayEntity).AsFloat;
              if qry0InCInputEntity.AsFloat = 0 then
                LastUnitPrice := UnitPrice;
              qry0InCTotalInputPrice.AsFloat := qry0InCTotalInputPrice.AsFloat -
                TotalPice;
              qry0In.Post;
              if (qry0InCInputEntity.AsFloat <= 0) and (qry0In.RecordCount > 1)
              then
                qry0In.Delete;
            end;
          end;
        end
        else
        begin
          requiredEntity := FieldByName('Output' + DisplayEntity).AsFloat;
          sumPrice := 0;
          UseEntity := FieldByName('Output' + DisplayEntity).AsFloat;
          while requiredEntity > 0 do
          begin
            if qry0InCInputEntity.AsFloat > 0 then
            begin
              if qry0InCTotalInputPrice.AsFloat > 0 then
                UnitPrice := Roundto(qry0InCTotalInputPrice.AsFloat /
                  qry0InCInputEntity.AsFloat, -9);
            end
            else
            begin
              UnitPrice := 0;
              if (qry0InCInputEntity.AsFloat <= 0) and (qry0In.RecordCount > 1)
              then
              begin
                qry0In.Delete;
              end
              else
              begin
                warn2('اشکال در قیمت‌گذاری کالای ' + StuffCode);
                s := StuffCode + ' ,id= ' + FieldByName('id').AsString +
                  '_ انبار:' + qryStores.FieldByName('n_StoreID').AsString +
                  ' فرم:' + FieldByName('ReciptNumber').AsString;
                if mem1.Lines[mem1.Lines.Count - 1] <> s then
                  mem1.Lines.Add(s);
                Break;
              end;
            end;

            if requiredEntity >= qry0InCInputEntity.AsFloat then
              TotalPice := (qry0InCInputEntity.AsFloat) * UnitPrice
            else
              TotalPice := requiredEntity * UnitPrice;
            TotalPice := Roundto(TotalPice, 0);
            sumPrice := sumPrice + TotalPice;

            if requiredEntity > qry0InCInputEntity.AsFloat then
              requiredEntity := requiredEntity - qry0InCInputEntity.AsFloat
            else
            begin
              UseEntity := requiredEntity;
              requiredEntity := 0;
            end;

            if TotalPice > 0 then
            begin
              if not qry0In.IsEmpty and not qry0In.eof then
              begin
                qry0In.Edit;
                qry0InCInputEntity.AsFloat := qry0InCInputEntity.AsFloat -
                  UseEntity;
                qry0InCTotalInputPrice.AsFloat := qry0InCTotalInputPrice.AsFloat
                  - TotalPice;
                qry0In.Post;
                if (qry0InCInputEntity.AsFloat <= 0) and (qry0In.RecordCount > 1)
                then
                  qry0In.Delete;
              end;
            end;
          end;

          if sumPrice > 0 then
          begin
            TempQuery.Append;
            TempQuery.FieldByName('ReciptItemID').AsInteger :=
              FieldByName('ReciptItemID').AsInteger;
            TempQuery.FieldByName('ReciptID').AsInteger :=
              FieldByName('ReciptID').AsInteger;
            TempQuery.FieldByName('ServerID').AsInteger :=
              FieldByName('ServerID').AsInteger;
            TempQuery.FieldByName('YearID').AsInteger := FieldByName('YearID')
              .AsInteger;
            TempQuery.FieldByName('UnitSellPrice').AsFloat := UnitPrice;
            TempQuery.FieldByName('TotalInputPrice').AsFloat := 0;
            TempQuery.FieldByName('TotalOutputPrice').AsFloat := sumPrice;
            TempQuery.Post;
          end;

          // غیرفعال موقت برای تست خطای FitfulID
          if opt.CalcReciptsRegulatesActive and
            ((FieldByName('DocNo').AsInteger <> 0) or
            (FieldByName('ReciptState').AsInteger = 2)) then
          begin
            CallReciptsRegulates(TotalPice, FieldByName('TotalOutputPrice')
              .AsCurrency + FieldByName('TotalInputPrice').AsCurrency, qryOut);
          end;
        end;
        inc(BatchCount);
        if BatchCount >= 10000 then
        begin
          TempQuery.UpdateBatch(arAll);
          TempQuery.Close;
          TempQuery.Open;
          BatchCount := 0;
        end;
        Next;
      end;
    end;

    try
      if BatchCount > 0 then
      begin
        TempQuery.UpdateBatch(arAll);
      end;
    except
      on E: Exception do
      begin
        warn2('خطا در ارسال داده‌ها به جدول موقت: ' + E.Message);
        raise;
      end;
    end;

  finally
    TempQuery.Free;
    qry1Out.EnableControls;
    qry0In.EnableControls;
  end;
end;

end.
