unit Filter_ADO_Const;

interface

uses DB, filter_ADO, FaraConsts, FilterClass_ADO, DM, SysUtils, math;

type
  TFilterItemName = (TFilterStuffCode, TFilterProduct, TFilterReciptDate,
    TFilterCustomerGrpID, TFilterYearID, TFilterStoreID, TFilterReciptNumber,
    TFilterPersonID1, TFilterCurentDate, TFilterST1, TFilterGroupID,
    TFilterDefaultDate, TFilterSellsEmporium, TFilterSellsMethod, TFilterStates,
    TFilterPersonID2, TFilterAidDate, TFilterArz, TFilterTypeSelect,
    TFilterMonth, TFilterMonthFromTo, TFilterSecondTypeItem, TFilterPayTypes,
    TFilterPayTypes1, TFilterDefaultDateAct, TFilterDay, TFilterUseUnitID,
    TFilterGroupID0, TFilterGroupID1, TFilterGroupID2, TFilterTruckNumber,
    TFilterPersonID1Limit, TFilterPersonID3, TFilterPersonID4,
    TFilterStuffCodeSin, TFilterConfigDate, TFilterUseOtherSelect,
    TFilterUseOtherID_Item, TFilterCTopicCode, TFilterCTopicCode2,
    TFilterShahrCode, TFilterStuffGroupID, TFilterPersonID1D,
    TFilterControlCode, TFilterPersonID5, TFltCompanyCode, TFilterProjectID,
    TFilterOfficeCode, TEmployTypeID, TFilterGroupIDchk, TFilterInterGroupID,
    TLabelID, TInterdicEndDate, TInterdicStartDate, TPersonelNo,
    TFilterSyadSystem, TFilterCurrencies, TFilterCurrencyKind, Ttax_status,
    TFilterOfficeCodeChk, TFilterUseUnitIDRecipts, TFilterFormState,
    TBudgetDate);

procedure AddItemFilter(aFilter: TfilterF; Kind: TFilterItemName;
  ShowBtnSelect: Boolean = false; filterCaption: string = '';
  WhreSQl: string = '');
procedure InitAddItemFilter;
function GetExtraCodingSQL(Prefix: string): string;

implementation

uses
  FormFunctions, mdiMain;

var
  SQLStuffCoding: string;

const
  arrTopic: array [1 .. 14] of string = ('كد كالا', 'نام كالا', 'مشخصات فنی',
    'واحدکالا', 'محل نگهداري كالا', '', '', '', '', '', '', '', '', '');

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
      arrTopic[5 + i] := opt.ExtraCoding.Captions[i];
    end;
  SQLStuffCoding :=
    'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName ,c_KeepPlace'
    + GetExtraCodingSQL(', StuffCoding.') +
    ' FROM StuffCoding INNER JOIN Units ON StuffCoding.n_UnitCode = Units.UnitCode '
    + 'WHERE (StuffCoding.c_StuffCode <> 0)and (StuffCoding.State = 0) ';

end;

procedure AddItemFilter(aFilter: TfilterF; Kind: TFilterItemName;
  ShowBtnSelect: Boolean = false; filterCaption: string = '';
  WhreSQl: string = '');
var
  filter_Caption, s, Txt, PersonIDFldName: string;
  MnuPlaceIDs: String;
  i: integer;
begin
  if not opta.CurrencyActive then
  begin
    if Kind in [TFilterCurrencies, TFilterCurrencyKind] then
      Exit;
  end;
  case Kind of
    TFilterStuffCode:
      aFilter.AddItem(theMainConnection, 'StuffCode', arrTopic, ftLargeint,
        dvMinMax, '', '', ciLookup, SQLStuffCoding, 'SELECT 0,99999999999999',

        // 'SELECT 12320, 12320  FROM Vu_StuffCoding ',

        ShowBtnSelect);
    // WHERE (c_StuffCode <> 0)

    // aFilter.AddItem(theMainConnection, 'StuffCode',
    // ['كد كالا', 'نام كالا', 'مشخصات فنی'], ftLargeint, dvMinMax, '', '',
    // ciLookup, SQLStuffCoding,
    // 'Select Min(StuffCode),max(StuffCode) from ReciptItems');

    TFilterStuffCodeSin:
      aFilter.AddItem(theMainConnection, 'StuffCode', arrTopic, ftLargeint,
        dvMinMax, '', '', ciSingleLookup, SQLStuffCoding,
        'SELECT 0,99999999999999 ', ShowBtnSelect);

    TFilterStuffGroupID:
      aFilter.AddItem(DMf.adcBSell, 'StuffGroupID', 'گروه كالا', 'كد',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT G.GroupID, G.GroupName FROM StuffGroups G INNER JOIN StuffCoding ON StuffCoding.GroupID = G.GroupID ',
        'SELECT 0,2147483647');

    TFilterProduct:
      aFilter.AddItem(theMainConnection, 'Product', 'نام محصول', 'كد محصول',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT c_StuffCode, c_StuffName FROM  VU_StuffCoding where (c_StuffCode<>0)',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterReciptDate:
      aFilter.AddItem(theMainConnection, 'ReciptDate', 'تاريخ ', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear
        + ''',''1499/12/29''', ShowBtnSelect);

    TFilterConfigDate:
      aFilter.AddItem(theMainConnection, 'ReciptDate', 'تاريخ ', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '',
        'Select  ''' + opt._StartMaliYear + ''',''' + opt._FinishMaliYear +
        '''', ShowBtnSelect);

    TFilterUseOtherSelect:
      aFilter.AddItem(DMf.adcBSell, 'UseOtherSelect', 'نوع گزارش', '',
        ftUnknown, dvDefaults, '2', '', ciRadioGroup,

        ' SELECT 0 As MasterType,''محل مصرف'' as MasterName Union' +
        ' SELECT 1,''ساير محل مصرف'' Union' +
        ' SELECT 2,'' محل مصرف آرتيکل'' Union' +
        ' SELECT 3,''ساير محل مصرف آرتيکل''');

    TFilterDay:
      aFilter.AddItem(theMainConnection, 'Day', 'روز ', 'روز', ftInteger,
        dvMinMax, '', '', ciSimple, '', 'Select 1,31', ShowBtnSelect);

    TFilterCurentDate:
      aFilter.AddItem(DMf.adcBSell, 'CurentDate', 'تاريخ ', 'تاريخ', ftDate,
        dvDefaults, var_glb_CurrentDate, '', ciSingle, '', '', ShowBtnSelect);

    TFilterDefaultDate:
      aFilter.AddItem(theMainConnection, 'DefaultDate', 'تاریخ جانبی',
        'تاریخ جانبی', ftDate, dvMinMax, '', '', ciSimple, '',
        'Select  ''0000/00/00'',''9999/99/99''', ShowBtnSelect);

    TFilterAidDate:
      aFilter.AddItem(theMainConnection, 'AidDate', 'تاريخ کمکی ', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '',
        'Select  ''0000/00/00'',''9999/99/99''', ShowBtnSelect);

    TFilterCustomerGrpID:
      aFilter.AddItem(theMainConnection, 'CustomerGrpID', ' گروه مشتريان ',
        'گروه', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterYearID:
      aFilter.AddItem(theMainConnection, 'YearID', 'سال', 'شماره سال',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT YearID, ''از '' + StartYear + '' تا '' + EndYear as Name ' +
        'FROM Util.MaliYear ', 'SELECT ' + opt.DefaultYear.ToString + ' , ' +
        APPBank.Year.ToString, ShowBtnSelect);

    TFilterStoreID:
      aFilter.AddItem(theMainConnection, 'StoreID', 'انبار', 'كد انبار',
        ftInteger, dvMinMax, '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store,
        ShowBtnSelect);

    TFilterReciptNumber:
      aFilter.AddItem(theMainConnection, 'ReciptNumber', 'فرم', 'شماره',
        ftInteger, dvMinMax, '', '', ciSimple, '', 'SELECT 0,2147483647',
        ShowBtnSelect);

    TFilterTruckNumber:
      aFilter.AddItem(theMainConnection, 'TruckNumber', 'بارنامه', 'شماره',
        ftString, dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(TruckNumber) AS Expr1, MAX(TruckNumber) AS Expr2 FROM Recipts '
        + ' WHERE (TruckNumber <> '''') AND (NOT (TruckNumber IS NULL)) AND (LEN(TruckNumber) > 0)',
        ShowBtnSelect);

    TFilterPersonID1:
      begin
        if filterCaption = EmptyStr then
          filter_Caption := 'مشتری'
        else
          filter_Caption := filterCaption;

        aFilter.AddItem(theMainConnection, 'PersonID1', filter_Caption, 'كد',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CustID, CASE WHEN Customers.CustName LIKE N''%''+ ISNULL(Customers.CustFirstName, '''') +''%'' THEN Customers.CustName '
          + ' ELSE Customers.CustName + '' '' + ISNULL(Customers.CustFirstName, '''') END AS CustName FROM Customers WHERE(CustID<>0)',
          'SELECT 0,2147483647', ShowBtnSelect);
      end;

    TFilterPersonID1Limit:
      begin
        if SelectCustID <> 0 then
          s := Format('select %d,%d ', [SelectCustID, SelectCustID])
        else
          s := 'select Min(CustID),Max(CustID) From Customers ' +
            'WHERE (CustomerGrpID IN (SELECT DISTINCT CustomerGrpID  FROM   Vu_CustomersGroups '
            + WhreSQl;

        Txt := 'SELECT DISTINCT CustID,CustName,NationalID,' +
          'Tel,Mobile,Tel2,CustName_L2 FROM Vu_CustomersGroups ' +
          'WHERE (CustomerGrpID IN (SELECT DISTINCT CustomerGrpID FROM Vu_CustomersGroups '
          + WhreSQl;

        if opt.ChkUsersCustomersGroupsActive then
          Txt := Txt +
            Format('AND (dbo.ChkUsersCustomersGroups( %d , %d , CustID  ) = 1)',
            [IfThen(User.PowerUser, 1, 0), User.ID]);

        aFilter.AddItem(DMf.adcBSell, 'PersonID1',
          ['كد ' + filterCaption, ' نام  ' + filterCaption, 'کد ملی', 'تلفن',
          'همراه', 'تلفن2', ',CustomerName'], ftInteger, dvMinMax, '', '',
          ciLookup, Txt, s, ShowBtnSelect);

      end;

    TFilterPersonID2, TFilterPersonID3, TFilterPersonID4, TFilterPersonID5,
      TFilterPersonID1D:
      begin

        if Kind = TFilterPersonID2 then
        begin
          filter_Caption := '2مشتری';
          PersonIDFldName := 'PersonID2';
        end;
        if Kind = TFilterPersonID3 then
        begin
          filter_Caption := '3مشتری';
          PersonIDFldName := 'PersonID3';
        end;
        if Kind = TFilterPersonID4 then
        begin
          filter_Caption := '4مشتری';
          PersonIDFldName := 'PersonID4';
        end;
        if Kind = TFilterPersonID5 then
        begin
          filter_Caption := '5مشتری';
          PersonIDFldName := 'PersonID5';
        end;

        if Kind = TFilterPersonID1D then
        begin
          if filterCaption <> EmptyStr then
            filter_Caption := filterCaption
          else
            filter_Caption := 'مشتری آرتیکل';
          PersonIDFldName := 'PersonID1D';
        end;

        if filterCaption <> EmptyStr then
          filter_Caption := filterCaption;

        aFilter.AddItem(theMainConnection, PersonIDFldName, filter_Caption,
          'كد', ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CustID, CASE WHEN Customers.CustName LIKE N''%''+ ISNULL(Customers.CustFirstName, '''') +''%'' THEN Customers.CustName '
          + ' ELSE Customers.CustName + '' '' + ISNULL(Customers.CustFirstName, '''') END AS CustName FROM Customers WHERE(CustID<>0)',

          'SELECT 0,2147483647', ShowBtnSelect);
      end;

    TFilterST1:
      aFilter.AddItem(DMf.adcBSell, 'st1', 'برند', 'كد ', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT Code, Name FROM LookUps WHERE (Kind = 301)',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterGroupID:
      aFilter.AddItem(DMf.adcBSell, 'GroupID', ' گروه كالا ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT GroupID,GroupName FROM StuffGroups ', 'SELECT 0,2147483647',
        ShowBtnSelect);

    TFilterGroupID0:
      aFilter.AddItem(DMf.adcBSell, 'GroupID0', '0 گروه كالا ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT GroupID,GroupName FROM StuffGroups WHERE(LevelID = 0)',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterGroupID1:
      aFilter.AddItem(DMf.adcBSell, 'GroupID1', '1 گروه كالا ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT GroupID,GroupName FROM StuffGroups WHERE(LevelID = 1)',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterGroupID2:
      aFilter.AddItem(DMf.adcBSell, 'GroupID2', '2 گروه كالا ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT GroupID,GroupName FROM StuffGroups WHERE(LevelID = 2)',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterSellsEmporium:
      aFilter.AddItem(DMf.adcBSell, 'SellsEmporium', 'مركز فروش', 'كدمركز',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT SellsEmporium,SellsEmporiumName FROM SellsEmporiums',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterSellsMethod:
      aFilter.AddItem(DMf.adcBSell, 'SellsMethod', 'نحوه فروش', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT SellsMethod,SellsMethodName FROM SellsMethods',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterArz:
      aFilter.AddItem(DMf.adcBSell, 'ArzTypeID', 'ارز', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CurrenciesID,CurrenciesName FROM Currencies',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterCurrencies:
      aFilter.AddItem(DMf.adcAccounting, 'Currencies', 'واحد پولی', 'واحد پولی',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CurrenciesID, CurrenciesName FROM  Acc.Currencies',
        'SELECT min(CurrenciesID), max(CurrenciesID) FROM  Acc.Currencies');

    TFilterCurrencyKind:
      aFilter.AddItem(DMf.adcBSell, 'CurrencyKind', '', 'نوع ارز', ftUnknown,
        dvDefaults, '0', '', ciRadioGroup,
        Format('SELECT 0,%s UNION SELECT 1,%s UNION SELECT 2,%s ',
        [QuotedStr(GetCurrencyKind(0)), QuotedStr(GetCurrencyKind(1)),
        QuotedStr(GetCurrencyKind(2))]), '', ShowBtnSelect);

    TFilterStates:
      aFilter.AddItem(DMf.adcBSell, 'States', '', 'وضعيت', ftUnknown,
        dvDefaults, 'True', '', ciCheck,
        Format('SELECT 0,%s UNION SELECT 1,%s UNION SELECT 2,%s UNION SELECT 3,%s  UNION SELECT 4,%s UNION SELECT 5,%s  ',
        [QuotedStr(GetReciptState(0)), QuotedStr(GetReciptState(1)),
        QuotedStr(GetReciptState(2)), QuotedStr(GetReciptState(3)),
        QuotedStr(GetReciptState(4)), QuotedStr(GetReciptState(5))]), '',
        ShowBtnSelect);

    TFilterFormState:
      aFilter.AddItem(DMf.adcBSell, 'State', 'وضعيت', 'وضعيت', ftInteger,
        dvMinMax, '', '', ciLookup,
        Format('SELECT 0 AS Code ,%s AS Caption UNION SELECT 1,%s UNION SELECT 10,%s UNION SELECT 11,%s  UNION SELECT 12,%s ',
        [QuotedStr(GetFormState(0)), QuotedStr(GetFormState(1)),
        QuotedStr(GetFormState(10)), QuotedStr(GetFormState(11)),
        QuotedStr(GetFormState(12))]),
        'Select Min(FormState),max(FormState) from Forms');

    Ttax_status:
      aFilter.AddItem(DMf.adcBSell, 'tax_status', 'وضعیت مودیان', '', ftUnknown,
        dvDefaults, 'False', '2', ciCheck,
        'SELECT 0 as tax_status,''وضعیت مودیان داری خطا''  as tax_statusName union all '
        + 'SELECT 1 as tax_status,''وضعیت مودیان ارسال شده ها''  as tax_statusName union all '
        + 'SELECT  2 as tax_status,''وضعیت مودیان ارسال نشده ها'' as tax_statusName  ',
        '2');

    TFilterTypeSelect:
      begin
        i := mdiMainF.MainFrame.GetActiveIndex;
        MnuPlaceIDs := 'WHERE (SUBSTRING(MnuPlaceIDs, ' + IntToStr(i + 1) +
          ', 1) = 1)';

        aFilter.AddItem(DMf.adcBSell, 'TypeSelect', 'نوع اطلاعات فرمها', '',
          ftUnknown, dvDefaults, '0', '', ciCheck,
          'SELECT Distinct Recipts.ReciptType, ReciptCaption FROM ReciptTypes '
          + 'INNER JOIN Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType '
          + MnuPlaceIDs + ' ORDER BY Recipts.ReciptType', '', ShowBtnSelect);
      end;

    TFilterMonth:
      aFilter.AddItem(DMf.adcBSell, 'Month', '', 'ماهها', ftInteger, dvDefaults,
        IntToStr(var_glb_CurrentMonth), '', ciCombo,
        'SELECT MonthId, MonthName FROM Tsh.Months', '', ShowBtnSelect);

    TFilterMonthFromTo:
      aFilter.AddItem(DMf.adcBSell, 'Month', ' ماه ', 'ماه', ftInteger,
        dvMinMax, '', '', ciLookup, 'SELECT MonthId, MonthName FROM Tsh.Months',
        'SELECT 1,12', ShowBtnSelect);

    TFilterSecondTypeItem:
      aFilter.AddItem(DMf.adcBSell, 'SecondTypeItem',
        DMf.qryRTLookUpNameItem.AsString,
        'كد' + DMf.qryRTLookUpNameItem.AsString, ftInteger, dvMinMax, '', '',
        ciLookup, 'SELECT distinct LookUps.Code as Code, LookUps.Name as Name FROM ReciptItems '
        + 'INNER JOIN LookUps ON ReciptItems.SecondTypeItem = LookUps.LookUpID ',
        // 'SELECT MIN(LookUps.Code),999999999 FROM ReciptItems LEFT OUTER JOIN ' +
        // 'LookUps ON ReciptItems.SecondTypeItem = LookUps.LookUpID'
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterPayTypes:
      aFilter.AddItem(DMf.adcBSell, 'PayTypes', 'نوع دريافت/پرداخت', 'كد',
        ftInteger, dvMinMax, '', '', ciLookup, 'SELECT Code,Name FROM LookUps '
        + WhreSQl, 'SELECT 0,2147483647', ShowBtnSelect);

    TFilterPayTypes1:
      aFilter.AddItem(DMf.adcBSell, 'PayTypes', 'نوع دريافت/پرداخت', 'كد',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT Forms.PayTypes, LookUps.Name ' +
        'FROM Forms INNER JOIN LookUps ON Forms.PayTypes = LookUps.LookUpID '

        + WhreSQl, 'SELECT 0,2147483647', ShowBtnSelect);

    TFilterDefaultDateAct:
      aFilter.AddItem(DMf.adcBSell, 'DefaultDateActive', 'انتخاب تاريخ',
        'تاريخ', ftInteger, dvDefaults, '0', '0', ciCombo,
        'SELECT  0, ''تاريخ فرم'' union all ' + 'SELECT  1, ''تاريخ جانبي'' ',
        '', ShowBtnSelect);

    TFilterUseUnitID:
      aFilter.AddItem(DMf.adcBSell, 'UseUnitID', 'محل مصرف', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT UseUnitID,UseUnitName FROM Vu_UseUnitName',
        // 'SELECT Min(UseUnitID),Max(UseUnitID) From Vu_UseUnitName'
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterUseUnitIDRecipts:
      aFilter.AddItem(DMf.adcBSell, 'UseUnitIDRecipt', 'محل مصرف مستر', 'كد',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT UseUnitID,UseUnitName FROM Vu_UseUnitName',
        // 'SELECT Min(UseUnitID),Max(UseUnitID) From Vu_UseUnitName'
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterUseOtherID_Item:
      aFilter.AddItem(DMf.adcBSell, 'UseOtherID_Item', 'سایر محل مصرف آیتم',
        'كد', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT cast(UseUnitID as int) AS UseOtherID,UseUnitName FROM Vu_UseOthersName',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterCTopicCode:
      aFilter.AddItem(DMf.adcAccounting, 'CTopicCode', 'كد و نام تفصیلی 1',
        'تفصیلی 1', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CenterTopics ',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterSyadSystem:
      aFilter.AddItem(DMf.adcBSell, 'SyadSystem', '', 'ثبت صیاد', ftInteger,
        dvDefaults, '-1', '', ciCombo,
        'SELECT code , name FROM SyadSystems', '');

    TFilterCTopicCode2:
      aFilter.AddItem(DMf.adcAccounting, 'CTopicCode2', 'كد و نام تفصیلی 3',
        'كدمركزهزينه2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CenterTopics2',
        'SELECT 0,2147483647', ShowBtnSelect);

    TFilterShahrCode:
      aFilter.AddItem(DMf.adcBSell, 'ShahrCode', 'استان شهر', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT ShahrCode, Ostan + '' '' + Shahr AS Shahr from Zone ',
        'select min(ShahrCode),max(ShahrCode) from Zone', ShowBtnSelect);

    TFilterControlCode:
      aFilter.AddItem(DMf.adcBSell, 'ControlCode', ' راهنما', 'شماره',
        ftLargeint, dvMinMax, '', '', ciSimple, '', 'SELECT 0,99999999999999');

    TFltCompanyCode:
      aFilter.AddItem(DMf.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت',
        'شركت', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
        'SELECT 0,2147483647');

    TFilterOfficeCode:
      aFilter.AddItem(DMf.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FormsInfo WHERE (FormsInfo.FormType = 12) ',
        'SELECT  MIN(FormsInfo.InfoID), MAX(FormsInfo.InfoID) FROM Pay.FormsInfo where  (FormsInfo.FormType = 12) ');

    TFilterOfficeCodeChk:
      aFilter.AddItem(DMf.adcSalary, 'OfficeCode', 'عنوان سازمان', '',
        ftInteger, dvDefaults, 'true', '', ciCheck,
        'SELECT DISTINCT FormInfoID, LTRIM(RTRIM(STR(InfoID))) + InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12)',
        '');

    TFilterProjectID:
      aFilter.AddItem(DMf.adcSalary, 'ProjectID', ' عنوان پروژه', 'كد',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT    FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON FixedCalculated.ProjectID = FormsInfo.FormInfoID WHERE  formtype in (39,40,41)   '
        + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ',
        'SELECT  0 , MAX(InfoID) FROM Pay.FormsInfo INNER JOIN Pay.FixedCalculated on FixedCalculated.ProjectID = FormsInfo.FormInfoID where formtype in (39,40,41) ');

    TEmployTypeID:
      aFilter.AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

    TFilterGroupIDchk:
      aFilter.AddItem(DMf.adcSalary, 'GroupID', 'گروه حكم ', 'گروه', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormInfoID, LTRIM(RTRIM(STR(InfoID))) + InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 68)',
        '');

    TFilterInterGroupID:
      aFilter.AddItem(DMf.adcSalary, 'GroupID', 'گروه حكم ', 'گروه', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE(FormType = 68)',
        'SELECT MIN(FormInfoID),MAX(FormInfoID) FROM Pay.FormsInfo WHERE(FormType = 68)');

    TLabelID:
      aFilter.AddItem(DMf.adcSalary, 'LabelID', 'دسته بندی محاسبات',
        'کد محاسبه', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT LabelID,Descriptions FROM Pay.FixedLabels',
        'SELECT MIN(LabelID),MAX(LabelID) FROM Pay.FixedLabels');

    TInterdicEndDate:
      aFilter.AddItem(DMf.adcSalary, 'InterdicEndDate', 'تاريخ پايان قرارداد',
        'تاريخ', ftDate, dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(InterdicEndDate), MAX(InterdicEndDate) FROM Pay.Interdicts');

    TInterdicStartDate:
      aFilter.AddItem(DMf.adcSalary, 'InterdicStartDate', 'تاريخ اجراي حكم',
        'تاريخ', ftDate, dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(InterdicStartDate), MAX(InterdicStartDate) FROM Pay.Interdicts');

    TBudgetDate:
      aFilter.AddItem(DMf.adcAccounting, 'BudgetDate', 'تاريخ', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',''' + APPBank.endYear + '''');

    TPersonelNo:
      aFilter.AddItem(DMf.adcSalary, 'PersonelNo', 'مشخصات پرسنلي',
        'شماره پرسنلي', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT PersonelNo , Name_L1+'' ''+lastName_L1 as lastName_L1 FROM Pay.PersonelInfo ',
        'SELECT 0,2147483647');

  else
  end;
end;

end.
