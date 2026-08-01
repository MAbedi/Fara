unit rptDarayiSellsMonth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppCtrls, ppPrnabl, ppBands, ppCache, ppDB, ppDBPipe,
  ppVar, ComCtrls, ppParameter, Math, FrTax, Mask, DBCtrls,
  FrTaxTxt, ppDesignLayer, System.ImageList, System.Actions, Filter_ADO_Const,
  ToolCtrlsEh, DBGridEhToolCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, DBGridEhGrouping, DynVarsEh;

type
  TrptDarayiSellsMonthF = class(Ttemplate2MDIF)
    srcSells: TDataSource;
    qrySells: TADOQuery;
    qrySellsPersonID1: TIntegerField;
    qrySellsCustName: TStringField;
    qrySellsAddress: TStringField;
    qrySellsPostalCode: TStringField;
    qrySellsEconomicNumber: TStringField;
    qrySellsc_StuffName: TStringField;
    qrySellsTotalOutputPrice: TBCDField;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    actPrint: TAction;
    actSendToExle: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actSort: TAction;
    qrySellsNationalID: TStringField;
    qrySellsTel: TStringField;
    qrySellsTaxValue: TBCDField;
    qrySellsTotallSellPrice: TBCDField;
    Memo1: TMemo;
    qrySellsReciptDate: TStringField;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppLine14: TppLine;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppPageStyle1: TppPageStyle;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLblYear: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLblCompanyName: TppLabel;
    ppLblEconomicNumber: TppLabel;
    ppLblRegisterNumber: TppLabel;
    ppLblTel: TppLabel;
    ppLblAddress: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel19: TppLabel;
    ppLabel24: TppLabel;
    ppLine8: TppLine;
    plblPostalCode: TppLabel;
    pdbtxtnum2alphabet: TppDBText;
    ppLabel26: TppLabel;
    ppLabel33: TppLabel;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    plblMonth: TppLabel;
    ppDBCalcnum2alphabet: TppDBCalc;
    qryEmtenae_Detail: TADOQuery;
    BitBtn15: TBitBtn;
    DBEdit1: TDBEdit;
    frmTaxTxt1: TfrmTaxTxt;
    qrySellsMobile: TStringField;
    qrySellsFullCustName: TStringField;
    qrySellsLenAddress: TIntegerField;
    qrySellsTaxValueOnTax: TBCDField;
    qrySellsTaxValueOnTown: TBCDField;
    qrySellsStateCode: TIntegerField;
    qrySellsCityCode: TIntegerField;
    qrySellsHCKharidarTypeCode: TWordField;
    qrySellsSellEffect: TWordField;
    qrySellsGroupID: TLargeintField;
    frmTax: TfrmTax;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExleExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblLimitGetText(Sender: TObject; var Text: String);
    procedure ppLabel32GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLblEconomicNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblRegisterNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblTelGetText(Sender: TObject; var Text: String);
    procedure ppLblAddressGetText(Sender: TObject; var Text: String);
    procedure ppLblActivityKindGetText(Sender: TObject; var Text: String);
    procedure ppLblYearGetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure plblPostalCodeGetText(Sender: TObject; var Text: string);
    procedure pdbtxtnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure plblBackGetText(Sender: TObject; var Text: string);
    procedure plblMonthGetText(Sender: TObject; var Text: string);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure frmTaxmskTaxChange(Sender: TObject);
    procedure frmTaxsSpeedButton1Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure frmTaxchkStuffShowClick(Sender: TObject);
    procedure frmTaxcmbStuffShowChange(Sender: TObject);
  private
    procedure updateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptDarayiSellsMonthF: TrptDarayiSellsMonthF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, FormFunctions,
  ReciptsFunctions, mdiMain, MMESSAGE;

{$R *.dfm}

procedure TrptDarayiSellsMonthF.updateFilter;
var
  s: String;
begin
  with qrySells do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Recipts.PersonID1, Customers.CustName, Customers.Address';
    SQL.Add(',len(Customers.Address) as LenAddress, Customers.PostalCode, Customers.EconomicNumber');

    if frmTax.StuffShow = 0 then
    begin
      FieldByName('GroupID').DisplayLabel := 'کد کالا';
      SQL.Add(', ReciptItems.StuffCode AS GroupID,StuffCoding.c_StuffName AS c_StuffName');
    end
    else
    begin
      FieldByName('GroupID').DisplayLabel := 'كد گروه كالا';
      SQL.Add(',Cast( StuffGroups.GroupID AS BigInt) AS GroupID ,StuffGroups.GroupName AS c_StuffName');
    end;

    SQL.Add(',( SUM(ReciptItems.TotalOutputPrice - ReciptItems.TotalInputPrice + CASE ReciptTypes.SellEffect WHEN 1 THEN ');
    SQL.Add('- isnull(ReciptItems.DeficitValue, 0)- ReciptItems.DeficitValue2 - ReciptItems.DeficitValue4 - ReciptItems.DeficitValue3');
    SQL.Add('ELSE + isnull(ReciptItems.DeficitValue, 0)+ ReciptItems.DeficitValue2 + ReciptItems.DeficitValue4 + ReciptItems.DeficitValue3 END)) AS TotalOutputPrice ');

    SQL.Add(', Customers.City,');
    SQL.Add('CASE Customers.NationalID WHEN ''0'' THEN '''' ELSE Customers.NationalID END AS NationalID,');
    SQL.Add('Customers.Tel');
    SQL.Add(', CASE ReciptTypes.SellEffect WHEN 1 THEN 1 ELSE -1 END * SUM(ReciptItems.TaxValue) AS TaxValue,');

    SQL.Add('( ROUND( (case ReciptTypes.SellEffect when 1 then 1 else - 1 end * SUM(ReciptItems.TaxValue)* CAST( :Tax AS FLOAT)) /');
    SQL.Add('CAST( :TaxTown AS FLOAT) ,0)) AS TaxValueOnTax,');
    SQL.Add('( ROUND( (case ReciptTypes.SellEffect when 1 then 1 else - 1 end * SUM(ReciptItems.TaxValue)* CAST( :Town AS FLOAT))/');
    SQL.Add('CAST( :TaxTown1 AS FLOAT) ,0)) AS TaxValueOnTown,');
    SQL.Add('Customers.StateCode, Customers.CityCode, Customers.HCKharidarTypeCode,');
    SQL.Add('CASE ReciptTypes.SellEffect WHEN 1 THEN 1 ELSE -1 END * SUM(ReciptItems.TotallSellPrice)');
    SQL.Add('- SUM(ISNULL(ReciptItems.Portage, 0)) AS TotallSellPrice');
    SQL.Add(',case when len(Recipts.ReciptDate)=8 then ''13''+Recipts.ReciptDate else Recipts.ReciptDate end AS ReciptDate, Customers.Mobile');
    SQL.Add(', CASE WHEN Customers.CustName LIKE N''%''+ ISNULL(Customers.CustFirstName, '''') +''%'' THEN Customers.CustName');
    SQL.Add('ELSE Customers.CustName + '' '' + ISNULL(Customers.CustFirstName, '''') END AS FullCustName');
    SQL.Add(',ReciptTypes.SellEffect');

    SQL.Add('FROM ReciptItems INNER JOIN');
    SQL.Add('Recipts ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
    SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
    SQL.Add('Customers ON Recipts.PersonID1 = Customers.CustID INNER JOIN');
    SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
    SQL.Add('StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID');

    SQL.Add('WHERE (ReciptTypes.SellEffect <> 0) AND');
    SQL.Add('(Recipts.PersonID1 BETWEEN :CustIdFrom AND :CustIdTo) ');
    SQL.Add('AND(StuffGroups.GroupID BETWEEN :StuffGrpFrom AND :StuffGrpTo)');
    SQL.Add('AND( CAST(SUBSTRING(Recipts.ReciptDate, 6, 2) AS int) = :Month ) AND');
    SQL.Add('( Customers.CustomerGrpID BETWEEN :CustomerGrpIDFrom AND :CustomerGrpIDTo)');
    SQL.Add('and ( Recipts.ReciptState < 3)');

    if opt.StuffKindActive then
      s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
    if s = '' then
      s := '0,1';
    SQL.Add('AND (StuffCoding.OwnerShipKind in (' + s + '))');

    s := GetcFrom(myParams.ParamValues['ReciptsSecondType'], ftString);
    if s <> '' then
      SQL.Add('AND Recipts.SecondType IN(' + s + ')');

    SQL.Add('AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');

    if GetcNot(myParams.ParamValues['SellsEmporium']) <> '' then
    BEGIN
      SQL.Add('And Recipts.SellsEmporium not in (Select part From dbo.SplitString(:NotSellsEmporium,'',''))');
    END;
    SQL.Add('AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('AND (LEN(Customers.EconomicNumber) <= 1) AND (LEN(Customers.NationalID) <= 1)');
    SQL.Add('AND ('',''+ :StoreID +'','' LIKE N''%,''+ltrim(str(Recipts.StoreID))+'',%'')');

    SQL.Add('GROUP BY Recipts.PersonID1, Customers.CustName, Customers.Address, Customers.PostalCode, Customers.EconomicNumber,');
    SQL.Add('StuffGroups.GroupID, StuffGroups.GroupName,');
    SQL.Add('ReciptTypes.SellEffect, Customers.City, Customers.NationalID, Customers.Tel,Recipts.ReciptDate,');
    SQL.Add('Customers.Mobile,Customers.CustFirstName');
    SQL.Add(',Customers.StateCode, Customers.CityCode, Customers.HCKharidarTypeCode');
    if frmTax.StuffShow = 0 then
      SQL.Add(',ReciptItems.StuffCode,StuffCoding.c_StuffName');

    SQL.Add('ORDER BY Recipts.ReciptDate,ReciptTypes.SellEffect');

    Parameters.ParamByName('Tax').Value := frmTax.Tax;
    Parameters.ParamByName('Town').Value := frmTax.Town;

    Parameters.ParamByName('TaxTown').Value := frmTax.TaxTown;
    Parameters.ParamByName('TaxTown1').Value := frmTax.TaxTown;

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    if Parameters.FindParam('NotSellsEmporium') <> nil then
      Parameters.ParamByName('NotSellsEmporium').Value :=
        GetcNot(myParams.ParamValues['SellsEmporium']);

    Parameters.ParamByName('Month').Value :=
      GetcTo(myParams.ParamValues['Month'], ftInteger);

    Parameters.ParamByName('CustIdFrom').Value :=
      GetcFrom(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('CustIdTo').Value :=
      GetcTo(myParams.ParamValues['custId'], ftInteger);

    Parameters.ParamByName('StuffGrpFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffGrp'], ftInteger);
    Parameters.ParamByName('StuffGrpTo').Value :=
      GetcTo(myParams.ParamValues['StuffGrp'], ftInteger);

    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    // Parameters.ParamByName('LookUpsCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['LookUpsCode'], ftInteger);
    // Parameters.ParamByName('LookUpsCodeTo').Value :=
    // GetcTo(myParams.ParamValues['LookUpsCode'], ftInteger);

    Parameters.ParamByName('StoreID').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftString);
    // LblDate.Caption:=' از تاريخ '+ qrySells.Parameters.Parambyname('DateFrom').Value +' تا '+qrySells.Parameters.parambyname('DateTo').value;
    Active := True;

  end;
end;

procedure TrptDarayiSellsMonthF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'ReciptsSecondType', 'نوع اطلاعات', 'كد اطلاعات ',
        ftUnknown, dvDefaults, 'True', '', ciCheck,
        'SELECT distinct LookUps.LookUpID, LookUps.Name ' +
        'FROM Recipts INNER JOIN LookUps ON ' +
        'Recipts.SecondType = LookUps.LookUpID ', '');

      // AddItem(DMf.adcBSell, 'LookUpsCode', 'نوع اطلاعات', 'كد اطلاعات ',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT distinct LookUps.Code as Code, LookUps.Name as Name FROM Recipts INNER JOIN LookUps ON '
      // + 'Recipts.SecondType = LookUps.LookUpID ',
      // // GROUP BY Recipts.SecondType, LookUps.Code, LookUps.Name
      // 'SELECT MIN(LookUps.Code),MAX(LookUps.Code) FROM Recipts LEFT OUTER JOIN LookUps ON '
      // + 'Recipts.SecondType = LookUps.LookUpID');
      AddItemFilter(GetFilter, TFilterSellsEmporium, True);

      if opt.StuffKindActive then
        AddItem(DMf.adcBSell, 'StuffKindActive', 'نوع كالا', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''قطعي''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''اماني'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMf.adcBSell, 'Month', 'ماه', 'نام ماه', ftString, dvDefaults, '',
        '', ciCombo, 'SELECT MonthID, Name FROM Months ', '');

      AddItemFilter(GetFilter, TFilterCustomerGrpID);
      // AddItem(DMf.adcBSell, 'CustomerGrpID', ' گروه مشتريان ', 'گروه',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ',
      // 'select Min(CustomerGrpID),Max(CustomerGrpID) From CustomersGroup');
      AddItem(DMf.adcBSell, 'CustId', 'مشتري', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT custid,custname from customers ',
        'select min(custid),max(custid) from customers');
      AddItem(DMf.adcBSell, 'StuffGrp', 'گروه كالا', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT GroupID, GroupName FROM StuffGroups ',
        'select min(GroupID),max(GroupID) from StuffGroups');
      AddItem(DMf.adcBSell, 'StoreID', 'انبار', '', ftUnknown, dvDefaults,
        'True', '', ciCheck, 'SELECT n_StoreID,c_StoreName FROM Stores', '');
      if showmodal = mrok then
      begin
        GetFilterString;
        updateFilter;
      end; // if
    finally;
      free;
    end; // try
  end; // with

end;

procedure TrptDarayiSellsMonthF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Month') = nil then
    close;
end;

procedure TrptDarayiSellsMonthF.frmTaxchkStuffShowClick(Sender: TObject);
begin
  inherited;
  updateFilter
end;

procedure TrptDarayiSellsMonthF.frmTaxcmbStuffShowChange(Sender: TObject);
begin
  inherited;
  updateFilter
end;

procedure TrptDarayiSellsMonthF.frmTaxmskTaxChange(Sender: TObject);
begin
  inherited;
  updateFilter
end;

procedure TrptDarayiSellsMonthF.frmTaxsSpeedButton1Click(Sender: TObject);
var
  s: string;
begin
  inherited;
  try
    frmTax.sSpeedButton1Click(Sender);
    BigMessage('لطفا صبر کنید....', 0);
    With qryEmtenae_Detail do
    begin
      Active := False;
      Active := True;
      while not Eof do
        Delete;
      qrySells.DisableControls;
      qrySells.First;
      while not qrySells.Eof do
      begin
        Insert;
        FieldByName('KharidarName').AsString := qrySellsCustName.AsString;
        FieldByName('KharidarAddress').AsString := qrySellsAddress.AsString;
        FieldByName('KalaKhadamatName').AsString :=
          qrySellsc_StuffName.AsString;
        FieldByName('KharidDate').AsString := qrySellsReciptDate.AsString;
        FieldByName('KharidPrice').AsString :=
          IntToStr( { Abs } (qrySellsTotalOutputPrice.AsLargeInt));

        FieldByName('BargashtType').AsBoolean :=
          qrySellsSellEffect.AsInteger = 2;
        FieldByName('MaliatArzeshAfzoodeh').AsString :=
          IntToStr( { Abs } (qrySellsTaxValueOnTax.AsLargeInt));
        FieldByName('AvarezArzeshAfzoodeh').AsString :=
          IntToStrArzesh( { Abs } (qrySellsTaxValueOnTown.AsLargeInt));
        FieldByName('StateCode').AsString := qrySellsStateCode.AsString;
        FieldByName('CityCode').AsString := qrySellsCityCode.AsString;

        FieldByName('HCKharidarTypeCode').AsString :=
          qrySellsHCKharidarTypeCode.AsString;

        try
          Post;
        except
          on E: Exception do
          begin
            s := E.Message + #13#10 + qrySellsCustName.AsString + #13#10 +
              qrySellsPersonID1.AsString;
            add2log(s);
            Warn(s);
          end;
        end;

        qrySells.Next;
      end;
      Active := False;
    end;
    BigMessage('ثبت شد .', 0);

  finally
    qrySells.EnableControls;
  end;

end;

procedure TrptDarayiSellsMonthF.actPrintExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Print(qrySells, ppReport1, 'rptDarayiSellsMonth');

end;

procedure TrptDarayiSellsMonthF.actSendToExleExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptDarayiSellsMonthF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptDarayiSellsMonthF.ppLblLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text:='از تاريخ'+qrySells.Parameters.ParamByName('DateFrom').Value+' تا '+qrySells.Parameters.ParamByName('DateTo').Value ;
end;

procedure TrptDarayiSellsMonthF.ppDBCalcnum2alphabetGetText(Sender: TObject;
  var Text: string);
var
  c: currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure TrptDarayiSellsMonthF.ppLabel32GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiSellsMonthF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiSellsMonthF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySells);
end;

procedure TrptDarayiSellsMonthF.BitBtn15Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  try
    mdiMainF.actCustomersTaxF.Execute;
  finally
    i := qrySells.FieldByName('PersonID1').AsInteger;
    qrySells.Requery();
    qrySells.Locate('PersonID1', i, []);
  end;
end;

procedure TrptDarayiSellsMonthF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySells);
end;

procedure TrptDarayiSellsMonthF.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber')
end;

procedure TrptDarayiSellsMonthF.ppLblRegisterNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('RegisterNumber')
end;

procedure TrptDarayiSellsMonthF.ppLblTelGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('tel1')

end;

procedure TrptDarayiSellsMonthF.ppLblAddressGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Address')
end;

procedure TrptDarayiSellsMonthF.ppLblActivityKindGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('ActivityKind')
end;

procedure TrptDarayiSellsMonthF.ppLblYearGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Format(' سال  13%.2d', [APPBank.Year])
end;

procedure TrptDarayiSellsMonthF.pdbtxtnum2alphabetGetText(Sender: TObject;
  var Text: string);
var
  c: currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

procedure TrptDarayiSellsMonthF.plblBackGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if qrySellsTotalOutputPrice.AsCurrency < 0 then
    Text := 'X'
  else
    Text := '  ';
end;

procedure TrptDarayiSellsMonthF.plblMonthGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := GetcFrom(myParams.ParamValues['Month'], ftString) + ' ماه';

end;

procedure TrptDarayiSellsMonthF.plblPostalCodeGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := DMf.ReadBankConfig('PostalCode')
end;

procedure TrptDarayiSellsMonthF.FormCreate(Sender: TObject);
begin
  inherited;
  DarayiCaptions('SellEffect', Memo1, 'AND (SellEffect = 1)');
  DBGrid1.SetFooter4Sum([]);
end;

end.
