unit Filter_ADO_Const;

interface

uses DB, filter_ADO, FaraConsts, FilterClass_ADO, DM, SysUtils;

type
  TFilterItemName = (TFilterStuffCode = 1, TFilterProduct = 2,
    TFilterReciptDate = 3, TFilterCustomerGrpID = 4, TFilterYearID = 5,
    TFilterStoreID = 6, TFilterReciptNumber = 7, TFilterPersonID1 = 8,
    TFilterCurentDate = 9, TFilterST1 = 10, TFilterGroupID = 11);

procedure AddItemFilter(aFilter: TfilterF; Kind: TFilterItemName);
procedure InitAddItemFilter;
function GetExtraCodingSQL(Prefix: string): string;

implementation

var
  SQLStuffCoding: string;

const
  arrTopic: array [1 .. 13] of string = ('كد كالا', 'نام كالا', 'مشخصات فنی',
    'واحدکالا', '', '', '', '', '', '', '', '', '');

  { TfilterAddF }

function GetExtraCodingSQL(Prefix: string): string;
var
  i: integer;
begin
  for i := 1 to 9 do
  begin
    if opt.ExtraCoding.Captions[i] <> '' then
      Result := Result + Prefix + 'sd' + IntToStr(i)
  end;
end;

procedure InitAddItemFilter;
var
  i: integer;
begin
  for i := 1 to 9 do
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      arrTopic[4 + i] := opt.ExtraCoding.Captions[i];
    end;
  SQLStuffCoding :=
    'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName '
    + GetExtraCodingSQL(', StuffCoding.') +
    ' FROM StuffCoding INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode '
    + 'WHERE (StuffCoding.c_StuffCode <> 0) ';

end;

procedure AddItemFilter(aFilter: TfilterF; Kind: TFilterItemName);
begin
  case Kind of
    TFilterStuffCode:
      aFilter.AddItem(theMainConnection, 'StuffCode', arrTopic, ftLargeint,
        dvMinMax, '', '', ciLookup, SQLStuffCoding,
        'SELECT MIN(c_StuffCode) AS MinS, MAX(c_StuffCode) AS MaxS FROM Vu_StuffCoding WHERE (c_StuffCode <> 0)');

    // aFilter.AddItem(theMainConnection, 'StuffCode',
    // ['كد كالا', 'نام كالا', 'مشخصات فنی'], ftLargeint, dvMinMax, '', '',
    // ciLookup, SQLStuffCoding,
    // 'Select Min(StuffCode),max(StuffCode) from ReciptItems');

    TFilterProduct:
      aFilter.AddItem(theMainConnection, 'Product', 'نام محصول', 'كد محصول',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT c_StuffCode, c_StuffName FROM  VU_StuffCoding where (c_StuffCode<>0)',
        'Select Min(0),max(StuffCode) from ReciptItems');
    TFilterReciptDate:
      aFilter.AddItem(theMainConnection, 'ReciptDate', 'تاريخ ', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear
        + ''',max(ReciptDate) from Recipts');

    TFilterCurentDate:
      aFilter.AddItem(dmF.adcBSell, 'CurentDate', 'تاريخ ', 'تاريخ', ftDate,
        dvDefaults, var_glb_CurrentDate, '', ciSingle, '', '');

    TFilterCustomerGrpID:
      aFilter.AddItem(theMainConnection, 'CustomerGrpID', ' گروه مشتريان ',
        'گروه', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ',
        'select Min(CustomerGrpID),Max(CustomerGrpID) From CustomersGroup');

    TFilterYearID:
      aFilter.AddItem(theMainConnection, 'YearID', 'سال', 'شماره سال',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT YearID, ''از '' + StartYear + '' تا '' + EndYear as Name ' +
        'FROM Util.MaliYear ', 'SELECT ' + opt.DefaultYear.ToString + ' , ' +
        APPBank.Year.ToString);

    TFilterStoreID:
      aFilter.AddItem(theMainConnection, 'StoreID', 'انبار', 'كد انبار',
        ftInteger, dvMinMax, '', '', ciLookup, LookupSQL4Store,
        MinMaxSQL4Store);

    TFilterReciptNumber:
      aFilter.AddItem(theMainConnection, 'ReciptNumber', 'فرم', 'شماره',
        ftInteger, dvMinMax, '', '', ciSimple, '',
        'SELECT Min(ReciptNumber),Max(ReciptNumber) From Recipts', '');

    TFilterPersonID1:
      aFilter.AddItem(theMainConnection, 'PersonID1', 'مشتری', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup, ' SELECT CustID, CustName FROM Customers ',
        ' SELECT isnull(min(CustID),0),isnull(max(CustID),0) FROM Customers');

    TFilterST1:
      aFilter.AddItem(dmF.adcBSell, 'st1', 'برند', 'كد ', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT Code, Name FROM LookUps WHERE (Kind = 301)',
        'Select Min(Code),max(Code) from LookUps WHERE (Kind = 301)');

    TFilterGroupID:
      aFilter.AddItem(dmF.adcBSell, 'GroupID', ' گروه كالا ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT  GroupID,GroupName FROM  StuffGroups ',
        'select Min(GroupID),Max(GroupID) From StuffGroups');

  else
  end;
end;

end.
