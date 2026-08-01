{ -----------------------------------------------------------------------------
  Unit Name: rptRefineSell
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit rptRefineSell;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ppDB, ppDBPipe, ppModule,
  ppStrtch, ppRegion, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ComCtrls, ppParameter,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  ThackCedarGrid = class(TCedarDbgrid);

  TrptRefineSellF = class(Ttemplate2MDIF)
    SrcRefineSell: TDataSource;
    qryRefineSell: TADOQuery;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actFilter: TAction;
    actSendExel: TAction;
    actShowForm: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    BitBtn3: TBitBtn;
    actSort: TAction;
    StatusBar1: TStatusBar;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblReciptNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptDateGetText(Sender: TObject; var Text: String);
    procedure ppLblStoreIDGetText(Sender: TObject; var Text: String);
    procedure ppLblStuffCodeGetText(Sender: TObject; var Text: String);
    procedure ppSysVarGetPageNumberStringGetText(Sender: TObject;
      var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryRefineSellAfterOpen(DataSet: TDataSet);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblGetPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure DBGrid1MouseLeave(Sender: TObject);
  private
    { Private declarations }
    formType: Byte;
    CodeTypeName, OrginalSQLText: String;
    StandardRateVatActive: Boolean;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptRefineSellF: TrptRefineSellF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, search2,
  sort2, TreeChart, DBGrid2Print;

{$R *.dfm}

procedure TrptRefineSellF.UpdateFilter;
var
  i: Byte;
  s: String;
begin
  if opt.StuffKindActive then
    s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
  if s = '' then
    s := '0,1';
  OrginalSQLText := StringReplace(OrginalSQLText, ':StuffKindActive', s,
    [rfReplaceAll]);
  qryRefineSell.SQL.Text := OrginalSQLText;

  with qryRefineSell do
  begin
    Active := False;
    if formType = 1 then
    begin
      Parameters.ParamByName('GroupIDFrom').Value :=
        GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
      Parameters.ParamByName('GroupIDTo').Value :=
        GetcTo(myParams.ParamValues['GroupID'], ftInteger);
    end;
    if formType in [2, 3, 16] then
    begin
      Parameters.ParamByName('StuffCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffCodeTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    end;
    if formType = 4 then
    begin
      Parameters.ParamByName('CustomerGrpIDFrom').Value :=
        GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
      Parameters.ParamByName('CustomerGrpIDTo').Value :=
        GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);
    end;
    if formType in [2, 5, 15, 16] then
    begin
      Parameters.ParamByName('custIDFrom').Value :=
        GetcFrom(myParams.ParamValues['custID'], ftInteger);
      Parameters.ParamByName('custIDTo').Value :=
        GetcTo(myParams.ParamValues['custID'], ftInteger);

      Parameters.ParamByName('custID2From').Value :=
        GetcFrom(myParams.ParamValues['custID2'], ftInteger);
      Parameters.ParamByName('custID2To').Value :=
        GetcTo(myParams.ParamValues['custID2'], ftInteger);

    end;
    if formType = 6 then
    begin
      Parameters.ParamByName('ItemPersonIDFrom').Value :=
        GetcFrom(myParams.ParamValues['ItemPersonID'], ftInteger);
      Parameters.ParamByName('ItemPersonIDTo').Value :=
        GetcTo(myParams.ParamValues['ItemPersonID'], ftInteger);
    end;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    LblShowLimitPlace2.Caption := '';
    if formType = 3 then
    begin
      Parameters.ParamByName('StuffDiameterFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftFloat);
      Parameters.ParamByName('StuffDiameterTo').Value :=
        GetcTo(myParams.ParamValues['StuffDiameter'], ftFloat);
      LblShowLimitPlace2.Caption := 'از ضخامت ' +
        FloatToStr(Parameters.ParamByName('StuffDiameterFrom').Value) + ' تا ' +
        FloatToStr(Parameters.ParamByName('StuffDiameterTo').Value);
    end;
    if CodeTypeName <> '' then
    begin
      Parameters.ParamByName(CodeTypeName + 'From').Value :=
        GetcFrom(myParams.ParamValues[CodeTypeName], ftInteger);
      Parameters.ParamByName(CodeTypeName + 'To').Value :=
        GetcTo(myParams.ParamValues[CodeTypeName], ftInteger);
    end;

    if opt.AidInfoAvailable then
    begin
      Parameters.ParamByName('ItemPersonIDFrom').Value :=
        GetcFrom(myParams.ParamValues['ItemPersonID'], ftInteger);
      Parameters.ParamByName('ItemPersonIDTo').Value :=
        GetcTo(myParams.ParamValues['ItemPersonID'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('ItemPersonIDFrom').Value := -2147483646;
      Parameters.ParamByName('ItemPersonIDTo').Value := 2147483647;
    end;

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);

    Active := True;
    if not PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'],
      ftInteger), DBGrid1, qryRefineSell) then
      DBGrid1.SetFooter4SumAdd(['Entity', 'Weight']);

    for i := 0 to FieldCount - 1 do
    begin
      Fields[i].Tag := 3;
      if Fields[i] is TBCDField then
        (Fields[i] as TBCDField).currency := True;

      if Fields[i] is TFMTBCDField then
        (Fields[i] as TFMTBCDField).currency := True;

    end;
  end; // with
  LblShowLimitPlace1.Caption := '';
  with qryRefineSell.Parameters do
  begin
    if CodeTypeName <> '' then
      LblShowLimitPlace1.Caption := '  از كد ' +
        GetcFrom(myParams.ParamValues[CodeTypeName], ftString) + ' تا ' +
        GetcTo(myParams.ParamValues[CodeTypeName], ftString);
    LblShowLimitPlace1.Caption := LblShowLimitPlace1.Caption + '  از شماره ' +
      IntToStr(ParamByName('ReciptNumberFrom').Value) + ' تا ' +
      IntToStr(ParamByName('ReciptNumberTo').Value);
    LblShowLimitPlace1.Caption := LblShowLimitPlace1.Caption + '  از تاريخ ' +
      ParamByName('ReciptDateFrom').Value + ' تا ' +
      ParamByName('ReciptDateTo').Value;
    LblShowLimitPlace2.Caption := LblShowLimitPlace2.Caption + '  از كد انبار '
      + IntToStr(ParamByName('StoreIDFrom').Value) + ' تا ' +
      IntToStr(ParamByName('StoreIDTo').Value);
  end; // with
end;

procedure TrptRefineSellF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      if opt.AidInfoAvailable then
      begin
        AddItem(DMf.adcBSell, 'ItemPersonID', ' نام پكينگ ', 'كد پكينگ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM '
          + 'dbo.CustomersGroup WHERE (GroupType = 4))) ',
          'SELECT 0,999999999');
      end;
      if opt.StuffKindActive then
        AddItem(DMf.adcBSell, 'StuffKindActive', 'نوع كالا', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''قطعي''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''اماني'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMf.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      AddItem(DMf.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts  ');
      AddItem(DMf.adcBSell, 'ReciptNumber', ' فرم ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'SELECT Min(ReciptNumber),Max(ReciptNumber) From Recipts ');

      if formType = 1 then
        AddItem(DMf.adcBSell, 'GroupID', ' گروه كالا ', 'كد', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT  GroupID,GroupName FROM  StuffGroups ',
          'SELECT Min(GroupID),Max(GroupID) From StuffGroups');
      if formType in [2, 3, 16] then
        AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'كالا', 'كد', ftLargeint, dvMinMax,
      // '', '', ciLookup,
      // 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
      // 'SELECT Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');
      if formType in [3] then
        AddItem(DMf.adcBSell, 'StuffDiameter', ' ضخامت ', '', ftFloat, dvMinMax,
          '', '', ciSimple, '',
          'SELECT MIN(dbo.ReciptItems.StuffDiameter), MAX(dbo.ReciptItems.StuffDiameter)FROM '
          + 'dbo.ReciptItems INNER JOIN dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID  ');
      if formType = 4 then
        AddItemFilter(GetFilter, TFilterCustomerGrpID);
      // AddItem(DMf.adcBSell, 'CustomerGrpID', ' گروه مشتريان ', 'گروه',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ',
      // 'SELECT Min(CustomerGrpID),Max(CustomerGrpID) From CustomersGroup');
      if formType in [2, 5, 15, 16] then
      begin

        AddItem(DMf.adcBSell, 'custID2', ['كد', 'مشتري2', 'کد ملی'], ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT DISTINCT custid,custname,NationalID FROM Vu_CustomersGroups ',
          'select min(custid),max(custid) from customers');

        AddItem(DMf.adcBSell, 'custID', ['كد', 'مشتري', 'کد ملی'], ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT DISTINCT custid,custname,NationalID FROM Vu_CustomersGroups ',
          'select min(custid),max(custid) from customers');

      end;
      // if formType=6 then AddItem(DMf.adcBSell,'ItemPersonID','پكينگ','كد',ftInteger,dvMinMax,'','',ciLookup,'SELECT custid,custname from customers ','select min(custid),max(custid) from customers');

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

procedure TrptRefineSellF.FormShow(Sender: TObject);
begin
  inherited;
  // ColorDBGrid(DBGrid1);
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptRefineSellF.FormCreate(Sender: TObject);
var
  constSQL: String;
begin
  inherited;
  StandardRateVatActive := DMf.ReadBankConfig('StandardRateVatActive',
    '0') = '1';
  formType := var_glb_gParam;
  constSQL :=
    ', ROUND(SUM(Entity),2) AS Entity, ROUND(SUM(Weight),2) AS Weight, SUM(Price) AS Price '
    + ' ,SUM(DeficitValue) AS DeficitValue,SUM(TaxValue) AS TaxValue' +
  // ',SUM(TotallSellPrice) AS  TotallSellPrice' +
    ',SUM(Price)-SUM(DeficitValue) AS  TotallSellPrice' +
    ' ,SUM(Price)+SUM(TaxValue)-SUM(DeficitValue) AS Price_TaxValue ';

  // .FieldByName('Price').DisplayLabel := 'مبلغ';
  // .FieldByName('TaxValue').DisplayLabel := 'ارزش افزوده';
  // .FieldByName('DeficitValue').DisplayLabel := 'تخفيف';
  // .FieldByName('TotallSellPrice').DisplayLabel := 'خالص فروش';
  // .FieldByName('Price_TaxValue').DisplayLabel := 'جمع فاکتور';
  // if StandardRateVatActive then
  // .('StandardSumPrice').DisplayLabel :=  'بهاي‏كل‏استاندارد';
  // .FieldByName('SumPrice').DisplayLabel := 'ارزش‏كل';
  // .FieldByName('PriceAdd').DisplayLabel := '.ارزش‏افزوده استاندارد';

  if StandardRateVatActive then
  begin
    constSQL := constSQL +
      ', SUM(price) -  SUM(ISNULL(TotalStandardRate,0) )  AS PriceAdd, ' +
      'SUM(ISNULL(TotalStandardRate,0) ) as SumPrice ' +
      ', SUM(price) -  SUM(ISNULL(TotalStandardRate,0) ) +  ' +
      'SUM(ISNULL(TotalStandardRate,0) ) AS  StandardSumPrice ';

  end;

  constSQL := constSQL + 'FROM RefineSell ' +
    'WHERE (StoreID BETWEEN :StoreIDFrom AND :StoreIDTo) ' +
    'AND (ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo) ' +
    'AND (ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo) ' +
    'AND (ItemPersonID BETWEEN :ItemPersonIDFrom AND :ItemPersonIDTo OR ItemPersonID IS NULL) '
    + 'AND (YearID BETWEEN :YearIDFrom AND :YearIDTo) ' +
    ' AND (SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo) ' +
    ' AND (SellsMethod BETWEEN :SellsMethodFrom AND :SellsMethodTo) ' +

    'AND (OwnerShipKind  in ( :StuffKindActive ))';
  Caption := 'گزارش خالص فروش به تفكيك ';

  with qryRefineSell do
  begin
    Active := False;
    case formType of
      1:
        begin
          Caption := Caption + 'گروه كالا';
          CodeTypeName := 'GroupID';
          SQL.Text := 'SELECT  GroupID AS كد, GroupName AS [گروه‏كالا] ';
          SQL.Add(constSQL);
          SQL.Add('AND (GroupID BETWEEN :GroupIDFrom AND :GroupIDTo)');
          SQL.Add('GROUP BY GroupID, GroupName');
          SQL.Add('ORDER BY GroupID');
        end;
      2:
        begin
          Caption := Caption + 'كالا';
          CodeTypeName := 'StuffCode';
          SQL.Text := 'SELECT  StuffCode AS كد, c_StuffName AS [كالا] ';
          SQL.Add(constSQL);
          SQL.Add('AND (StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
          SQL.Add('AND (CustID BETWEEN :CustIDFrom AND :CustIDTo)');
          SQL.Add('AND (CustID2 BETWEEN :CustID2From AND :CustID2To)');
          SQL.Add('GROUP BY StuffCode, c_StuffName');
          SQL.Add('ORDER BY StuffCode');
        end;
      3:
        begin
          Caption := Caption + 'اجزاء كالا';
          CodeTypeName := 'StuffCode';
          SQL.Text :=
            'SELECT   StuffCode  AS كد, c_StuffName  AS [كالا], UnitName as واحد, StuffSize as ابعاد, StuffDiameter as ضخامت, StuffAlloy as آلياز, ControlCode as راهنما ';
          SQL.Add(constSQL);
          SQL.Add('AND (StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo) ');
          SQL.Add('AND (StuffDiameter BETWEEN :StuffDiameterFrom AND :StuffDiameterTo)');
          SQL.Add('GROUP BY  StuffCode, c_StuffName, UnitName, StuffSize, StuffDiameter, StuffAlloy, ControlCode');
          SQL.Add('ORDER BY StuffCode,ControlCode');
        end;
      4:
        begin
          Caption := Caption + 'گروه مشتري';
          CodeTypeName := 'CustomerGrpID';
          SQL.Text :=
            'SELECT CustomerGrpID AS كد, CustomerGrpName AS [گروه‏مشتري]';
          SQL.Add(constSQL);
          SQL.Add('AND (CustomerGrpID BETWEEN :CustomerGrpIDFrom AND :CustomerGrpIDTo)');
          SQL.Add('GROUP BY CustomerGrpID, CustomerGrpName');
          SQL.Add('ORDER BY CustomerGrpID');
        end;
      5:
        begin
          Caption := Caption + 'مشتري';
          CodeTypeName := 'CustID';
          SQL.Text := 'SELECT  CustID AS كد, CustName AS مشتري';
          SQL.Add(constSQL);
          SQL.Add('AND (CustID BETWEEN :CustIDFrom AND :CustIDTo)');
          SQL.Add('AND (CustID2 BETWEEN :CustID2From AND :CustID2To)');
          SQL.Add('GROUP BY CustID, CustName');
          // SQL.Add  ('HAVING (CustID BETWEEN :CustIDFrom AND :CustIDTo)');
          SQL.Add('ORDER BY CustID');
        end;
      6:
        begin
          Caption := Caption + 'پكينگ';
          CodeTypeName := 'ItemPersonID';
          SQL.Text := 'SELECT ItemPersonID AS كد, ItemPersonName AS پكينگ';
          SQL.Add(constSQL);
          SQL.Add('GROUP BY ItemPersonID, ItemPersonName');
          // SQL.Add  ('HAVING (ItemPersonID BETWEEN :ItemPersonIDFrom AND :ItemPersonIDTo)');
          SQL.Add('ORDER BY ItemPersonID');
        end;
      7:
        begin
          Caption := Caption + 'روز';
          CodeTypeName := '';
          SQL.Text := 'SELECT ReciptDate AS روز ';
          SQL.Add(constSQL);
          SQL.Add('GROUP BY ReciptDate');
          SQL.Add('ORDER BY ReciptDate');
        end;
      8:
        begin
          Caption := Caption + 'ماه';
          CodeTypeName := '';
          SQL.Text := 'SELECT SUBSTRING(ReciptDate, 6, 2) AS ماه ';
          SQL.Add(constSQL);
          SQL.Add('GROUP BY SUBSTRING(ReciptDate, 6, 2)');
          SQL.Add('ORDER BY SUBSTRING(ReciptDate, 6, 2)');
        end;
      9:
        begin
          Caption := Caption + '31روز';
          CodeTypeName := '';
          SQL.Text := 'SELECT SUBSTRING(ReciptDate, 9, 2) AS روز ';
          SQL.Add(constSQL);
          SQL.Add('GROUP BY SUBSTRING(ReciptDate, 9, 2)');
          SQL.Add('ORDER BY SUBSTRING(ReciptDate, 9, 2)');
        end;
      10:
        begin
          Caption := Caption + 'نوع اطلاعات';
          CodeTypeName := '';
          SQL.Text := 'SELECT SecondTypeName AS [نوع‏اطلاعات ]';
          SQL.Add(constSQL);
          SQL.Add('GROUP BY SecondTypeName');
          SQL.Add('ORDER BY SecondTypeName');
        end;
      11:
        begin
          Caption := Caption + 'نوع اطلاعات برحسب گروه مشتريان';
          CodeTypeName := '';
          SQL.Text :=
            'SELECT CustomerGrpID as كدگروه‏مشتريان , CustomerGrpName as گروه‏مشتريان , '
            + 'SecondTypeName AS  نوع‏اطلاعات  ';
          SQL.Add(constSQL);
          SQL.Add('GROUP BY CustomerGrpID, CustomerGrpName, SecondTypeName');
          SQL.Add('ORDER BY CustomerGrpID');
        end;
      12:
        begin
          Caption := Caption + 'واحد';
          CodeTypeName := '';
          SQL.Text :=
            'SELECT UnitName as واحد, MIN(c_StuffName) +'' ... ''+ MAX(c_StuffName) as [كالاها]';
          SQL.Add(constSQL);
          SQL.Add('GROUP BY UnitName');
          SQL.Add('ORDER BY UnitName');
        end;
      13:
        begin
          Caption := Caption + 'مشخصات فني';
          CodeTypeName := '';
          SQL.Text :=
            'SELECT c_StuffTecInfo as [مشخصات‏فني], MIN(c_StuffName) +'' ... ''+ MAX(c_StuffName) as [كالاها]';
          SQL.Add(constSQL);
          SQL.Add('GROUP BY c_StuffTecInfo');
          SQL.Add('ORDER BY c_StuffTecInfo');
        end;
      14:
        begin
          Caption := Caption + 'ماه وكالا';
          CodeTypeName := '';
          SQL.Text :=
            'SELECT StuffCode AS كد, c_StuffName AS [كالا] , SUBSTRING(ReciptDate, 6, 2) AS ماه ';
          SQL.Add(constSQL);
          SQL.Add('GROUP BY StuffCode,c_StuffName,SUBSTRING(ReciptDate, 6, 2)');
          SQL.Add('ORDER BY SUBSTRING(ReciptDate, 6, 2)');
        end;
      15:
        begin
          Caption := Caption + 'مشتري و مشخصات فني';
          CodeTypeName := 'CustID';
          SQL.Text := 'SELECT  CustID AS كد, CustName AS مشتري';
          SQL.Add(',c_StuffTecInfo as [مشخصات‏فني], MIN(c_StuffName) +'' ... ''+ MAX(c_StuffName) as [كالاها]');
          SQL.Add(constSQL);
          SQL.Add('AND (CustID BETWEEN :CustIDFrom AND :CustIDTo)');
          SQL.Add('AND (CustID2 BETWEEN :CustID2From AND :CustID2To)');
          SQL.Add('GROUP BY CustID, CustName,c_StuffTecInfo');
          // SQL.Add  ('HAVING (CustID BETWEEN :CustIDFrom AND :CustIDTo)');
          SQL.Add('ORDER BY c_StuffTecInfo,CustID');
        end;
      16:
        begin
          Caption := Caption + 'انبار';
          CodeTypeName := 'StoreID';
          SQL.Text := 'SELECT  StoreID AS كد, c_StoreName AS [انبار] ';
          SQL.Add(constSQL);
          SQL.Add('AND (StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
          SQL.Add('AND (CustID BETWEEN :CustIDFrom AND :CustIDTo)');
          SQL.Add('AND (CustID2 BETWEEN :CustID2From AND :CustID2To)');
          SQL.Add('GROUP BY StoreID, c_StoreName');
          SQL.Add('ORDER BY StoreID');
        end;

    end;
    Parameters.Refresh;
  end; // whit
  OrginalSQLText := qryRefineSell.SQL.Text;
  Entity_Weight(DBGrid1);
end;

procedure TrptRefineSellF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryRefineSell.DisableControls;
    InitReportFile(ppReport1, 'rptRefineSell' + IntToStr(formType));
  finally
    qryRefineSell.EnableControls;
  end; // try
end;

procedure TrptRefineSellF.ppLblReciptNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره ' + IntToStr(qryRefineSell.Parameters.ParamByName
    ('ReciptNumberFrom').Value) + ' تا ' +
    IntToStr(qryRefineSell.Parameters.ParamByName('ReciptNumberTo').Value)
end;

procedure TrptRefineSellF.ppLblReciptDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qryRefineSell.Parameters.ParamByName('ReciptDateFrom')
    .Value + ' تا ' + qryRefineSell.Parameters.ParamByName('ReciptDateTo').Value
end;

procedure TrptRefineSellF.ppLblStoreIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از كد انبار ' +
    IntToStr(qryRefineSell.Parameters.ParamByName('StoreIDFrom').Value) + ' تا '
    + IntToStr(qryRefineSell.Parameters.ParamByName('StoreIDTo').Value)
end;

procedure TrptRefineSellF.ppLblStuffCodeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از گروه كالاي ' +
    IntToStr(qryRefineSell.Parameters.ParamByName(CodeTypeName + 'From').Value)
    + ' تا ' + IntToStr(qryRefineSell.Parameters.ParamByName(CodeTypeName +
    'To').Value)
end;

procedure TrptRefineSellF.ppSysVarGetPageNumberStringGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptRefineSellF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRefineSell);
end;

procedure TrptRefineSellF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRefineSell);
end;

procedure TrptRefineSellF.qryRefineSellAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryRefineSell.FieldByName('Price').DisplayLabel := 'مبلغ';
  qryRefineSell.FieldByName('TaxValue').DisplayLabel := 'ارزش افزوده';
  qryRefineSell.FieldByName('DeficitValue').DisplayLabel := 'تخفيف';
  qryRefineSell.FieldByName('Entity').DisplayLabel := 'مقدار';
  qryRefineSell.FieldByName('Weight').DisplayLabel := 'وزن';
  qryRefineSell.FieldByName('TotallSellPrice').DisplayLabel := 'خالص فروش';
  qryRefineSell.FieldByName('Price_TaxValue').DisplayLabel := 'جمع فاکتور';

  if StandardRateVatActive then
  begin
    qryRefineSell.FieldByName('StandardSumPrice').DisplayLabel :=
      'بهاي‏كل‏استاندارد';
    qryRefineSell.FieldByName('SumPrice').DisplayLabel := 'ارزش‏كل(استاندارد)';
    qryRefineSell.FieldByName('PriceAdd').DisplayLabel :=
      'ارزش‏افزوده(استاندارد)';
  end;

  StatusBar1.Panels[3].Text := 'تعداد=' + IntToStr(qryRefineSell.RecordCount);
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := 'مقدار=' +
      CurrToStr(CalcSumFileds(qryRefineSell, 'Entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := 'وزن=' +
      CurrToStr(CalcSumFileds(qryRefineSell, 'Weight'));
  if PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryRefineSell) then
    StatusBar1.Panels[0].Text := 'مبلغ=' +
      CurrToStrF(CalcSumFileds(qryRefineSell, 'Price'), ffCurrency, 0);

  if StandardRateVatActive then
  begin

    DBGrid1.SetFooter4SumAdd(['Entity', 'Weight', 'Price', 'DeficitValue',
      'TaxValue', 'TotallSellPrice', 'Price_TaxValue', 'Price_', 'TaxValue',
      'PriceAdd', 'SumPrice', 'StandardSumPrice']);
  end

  else
    DBGrid1.SetFooter4SumAdd(['Entity', 'Weight', 'Price', 'DeficitValue',
      'TaxValue', 'TotallSellPrice', 'Price_TaxValue']);

  DBGrid1.ColorDBGrid;
  ThackCedarGrid(DBGrid1).DoLoad();

end;

procedure TrptRefineSellF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TrptRefineSellF.ppLblGetPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptRefineSellF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptRefineSellF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TrptRefineSellF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryRefineSell, Self);
end;

procedure TrptRefineSellF.BitBtn7Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptRefineSellF.DBGrid1MouseLeave(Sender: TObject);
begin
  inherited;
  ThackCedarGrid(DBGrid1).DoSave();
end;

procedure TrptRefineSellF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TrptRefineSellF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate
end;

end.
