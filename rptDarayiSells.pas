unit rptDarayiSells;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppComm, ppRelatv, ppProd, ppClass, DBGridEhGrouping,
  ppReport, ppCtrls, ppPrnabl, ppBands, ppCache, ppDB, ppDBPipe, ppVar,
  ComCtrls, ppParameter, Math, Mask, FrTax, StrUtils, DBCtrls, FrTaxTxt,
  ppDesignLayer, System.ImageList, System.Actions, Filter_ADO_Const,
  ToolCtrlsEh, DBGridEhToolCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, DynVarsEh;

type
  TrptDarayiSellsF = class(Ttemplate2MDIF)
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
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppLine10: TppLine;
    ppLine14: TppLine;
    ppDBText3: TppDBText;
    ppLine15: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine16: TppLine;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
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
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLblCompanyName: TppLabel;
    ppLblEconomicNumber: TppLabel;
    ppLblRegisterNumber: TppLabel;
    ppLblTel: TppLabel;
    ppLblAddress: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel14: TppLabel;
    ppLabel27: TppLabel;
    ppLine7: TppLine;
    ppLabel5: TppLabel;
    ppLabel19: TppLabel;
    ppLabel24: TppLabel;
    ppLine12: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel15: TppLabel;
    ppLabel30: TppLabel;
    ppLine13: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine8: TppLine;
    ppLabel18: TppLabel;
    ppImage3: TppImage;
    plblPostalCode: TppLabel;
    pdbtxtnum2alphabet: TppDBText;
    ppLabel26: TppLabel;
    ppLabel33: TppLabel;
    plblBack: TppLabel;
    ppDBCalcnum2alphabet: TppDBCalc;
    qrySellsTaxValueOnTax: TBCDField;
    qrySellsTaxValueOnTown: TBCDField;
    frmTax: TfrmTax;
    qrySellsRegisterNumber: TStringField;
    qrySellsHCTarafGaradadTypeCode: TWordField;
    qrySellsHCKharidarTypeCode: TWordField;
    qrySellsCustFirstName: TStringField;
    qrySellsStateCode: TIntegerField;
    qrySellsCityCode: TIntegerField;
    qrySellsPerCityCode: TStringField;
    qryForoush_Detail: TADOQuery;
    qrySellsShahr: TWideStringField;
    qrySellsOstan: TWideStringField;
    BitBtn15: TBitBtn;
    frmTaxTxt1: TfrmTaxTxt;
    qrySellsMobile: TStringField;
    qrySellsFullCustName: TStringField;
    Panel1: TPanel;
    chkNotnationalID: TCheckBox;
    qrySellsLenAddress: TIntegerField;
    qrySellsGroupID: TLargeintField;
    qrySellsSellEffect: TWordField;
    qrySellsReciptDate: TStringField;
    qrySellsReciptNumber: TIntegerField;
    qrySellsVajhTypes: TStringField;
    qrySellsSarFaslType: TWordField;
    DBGrid1: TCedarDbgrid;
    qrySellsForoushType: TIntegerField;
    qrySellsKeshvarCode: TIntegerField;
    qrySellsKotaj_No: TIntegerField;
    qrySellsKotaj_Date: TStringField;
    qrySellsLC_No: TStringField;
    qrySellsLC_Date: TStringField;
    qrySellsGomrok_Arzyabi: TIntegerField;
    qrySellsGomrok_khoruj: TIntegerField;
    qrySaderat_Detail: TADOQuery;
    qrySellsReciptID: TIntegerField;
    qrySellsYearID: TIntegerField;
    qrySellsServerID: TIntegerField;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
    qrySellsKalaType: TIntegerField;
    qrySellsPriceParvane: TFloatField;
    chkPriceParvane: TCheckBox;
    qrySellsDeficitValue: TBCDField;
    qrySellsRialsEqual: TBCDField;
    qrySellsArzName: TStringField;
    qrySellsStuffpublicPercentI: TFloatField;
    qrySellsSumTotalOutputPrice: TBCDField;
    chkSum: TCheckBox;
    Memo1: TMemo;
    qrySellsNationalCode: TStringField;
    qrySellsAmountDeclaration: TFMTBCDField;
    qrySellsAmountDeclarationArz: TFMTBCDField;
    qrySellsRTCarton: TFMTBCDField;
    qrySellsRTWeight: TFMTBCDField;
    qrySellsArzType: TIntegerField;
    qrySellsArz_PriceParvane: TFloatField;
    qrySellsArzAmount: TFloatField;
    qrySellsMoadelRialiPrice: TFloatField;
    qrySellsEntity: TFloatField;
    qrySellsUnitSellPrice: TFMTBCDField;
    qrySellsWeight: TFloatField;
    qrySellstax_statusNote: TStringField;
    qrySellsTotalOutputPriceDeficitValue: TBCDField;
    qrySellsTAXID: TStringField;
    qrySellsFullCustNameC3: TStringField;
    qrySellsNationalIDC3: TStringField;
    qrySellsMobileC3: TStringField;
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
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure plblPostalCodeGetText(Sender: TObject; var Text: string);
    procedure pdbtxtnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure plblBackGetText(Sender: TObject; var Text: string);
    procedure frmTaxsSpeedButton1Click(Sender: TObject);
    procedure frmTaxmskTaxChange(Sender: TObject);
    procedure qrySellsHCKharidarTypeCodeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qrySellsHCTarafGaradadTypeCodeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure BitBtn15Click(Sender: TObject);
    procedure chkNotnationalIDClick(Sender: TObject);
    procedure qryForoush_DetailAfterOpen(DataSet: TDataSet);
    procedure actShowFormExecute(Sender: TObject);
    procedure chkSumClick(Sender: TObject);
    procedure frmTaxcmbStuffShowChange(Sender: TObject);
  private
    procedure updateFilter;
    procedure Saderat_Detail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptDarayiSellsF: TrptDarayiSellsF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, FormFunctions,
  ReciptsFunctions, mdiMain, MMESSAGE, main;

{$R *.dfm}

procedure TrptDarayiSellsF.updateFilter;
var
  s: String;
  NotSellEffect: Integer;
begin

  // NotSellEffect := GetcFrom(myParams.ParamValues['NotSellEffect'], ftInteger);
  NotSellEffect := GetcTo(myParams.ParamValues['NotSellEffect'], ftInteger);

  with qrySells do
  begin
    Active := False;

    if frmTax.chkYear96.Checked then
    begin
      SQL.Text := 'SELECT * FROM';
      SQL.Add('Fn_DarayiSells( :Tax , :TaxTown , :Town , :TaxTown1 , :CustIdFrom , :CustIdTo , :StuffGrpFrom');
      SQL.Add(', :StuffGrpTo , :SeasonFrom , :SeasonTo , :DateFrom , :DateTo , :CustomerGrpIDFrom , :CustomerGrpIDTo');
      SQL.Add(', :SellsEmporiumFrom , :SellsEmporiumTo , :NotSellsEmporium , :YearIDFrom , :YearIDTo , :StoreID');
      SQL.Add(', :EconomicNumberNationalID , :StuffShow , :chkPriceParvane , :StuffKindActive , :ReciptsSecondType ');
      SQL.Add(', :INSellsEmporium , :SellsMethodFrom , :SellsMethodTo , :NotSellsMethod , :INSellsMethod ,:tax_status )');

      if NotSellEffect <> 0 then
        SQL.Add('WHERE(SellEffect = ' + NotSellEffect.ToString + ' ) ');
      SQL.Add('ORDER BY SellEffect,PersonID1,ReciptID');

      Parameters.ParamByName('StuffShow').Value := frmTax.StuffShow;
      // IfThen(frmTax.chkStuffShow.Checked, 1, 0);

      Parameters.ParamByName('chkPriceParvane').Value :=
        IfThen(chkPriceParvane.Checked, 1, 0);

      if opt.StuffKindActive then
        s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
      if s = '' then
        s := '0,1';
      Parameters.ParamByName('StuffKindActive').Value := s;

      s := GetcFrom(myParams.ParamValues['ReciptsSecondType'], ftString);
      Parameters.ParamByName('ReciptsSecondType').Value := s;

      s := GetcFrom(myParams.ParamValues['StoreID'], ftString);
      Parameters.ParamByName('StoreID').Value := s;

    end
    else
    begin

      SQL.Text := 'SELECT Recipts.PersonID1, Customers.CustName, ';
      SQL.Add('Customers.Address,len(Customers.Address) as LenAddress,');
      SQL.Add('Customers.PostalCode, Customers.EconomicNumber, Customers.NationalCode');

      if frmTax.StuffShow = 0 then
      begin
        SQL.Add(', ReciptItems.StuffCode AS GroupID,StuffCoding.c_StuffName AS c_StuffName');
      end
      else
      begin
        SQL.Add(',Cast( StuffGroups.GroupID AS BigInt) AS GroupID ,StuffGroups.GroupName AS c_StuffName');
      end;

      SQL.Add(', SUM ( case when ( ReciptTypes.CommissionActive = 2 and ReciptItems.UnitCommission >0 ) then');
      SQL.Add('(ReciptItems.InputEntity + ReciptItems.OutputEntity ) * ReciptItems.UnitCommission else');
      SQL.Add('CASE ReciptTypes.SellEffect WHEN 1 THEN 1 ELSE -1 END *(ReciptItems.TotalOutputPrice +');
      SQL.Add('ReciptItems.TotalInputPrice) end ) AS TotalOutputPrice,0.0 AS SumTotalOutputPrice ');
      SQL.Add(',sum (CASE ReciptTypes.SellEffect WHEN 1 THEN');
      SQL.Add('- isnull(ReciptItems.DeficitValue, 0)- ReciptItems.DeficitValue2 - ReciptItems.DeficitValue4 -  case when DiscountActive & 8 = 8 then 0 else  ReciptItems.DeficitValue3 end');
      SQL.Add('ELSE + isnull(ReciptItems.DeficitValue,0)+ ReciptItems.DeficitValue2 + ReciptItems.DeficitValue4 + ReciptItems.DeficitValue3 END) AS DeficitValue');

      SQL.Add(', Customers.City, CASE Customers.NationalID WHEN ''0'' THEN '''' ELSE Customers.NationalID END AS NationalID');
      SQL.Add(', Customers.Tel');

      SQL.Add(', CASE ReciptTypes.SellEffect WHEN 1 THEN 1 ELSE -1 END * SUM(ReciptItems.TaxValue) AS TaxValue');
      SQL.Add(', ROUND((CASE ReciptTypes.SellEffect WHEN 1 THEN 1 ELSE -1 END * SUM(ReciptItems.TaxValue) * CAST( :Tax AS');
      SQL.Add('FLOAT) )/ CAST( :TaxTown AS FLOAT) ,0) AS TaxValueOnTax');
      SQL.Add(', ROUND((CASE ReciptTypes.SellEffect WHEN 1 THEN 1 ELSE -1 END * SUM(ReciptItems.TaxValue) * CAST( :Town AS');
      SQL.Add('FLOAT))/ CAST( :TaxTown1 AS FLOAT) ,0) AS TaxValueOnTown');

      SQL.Add(', CASE ReciptTypes.SellEffect WHEN 1 THEN 1 ELSE -1 END * SUM(ReciptItems.TotallSellPrice)');
      SQL.Add('- SUM( case when ( ReciptTypes.CommissionActive =2 and ReciptItems.UnitCommission >0 ) then');
      SQL.Add('ReciptItems.TotalOutputPrice - ReciptItems.TotalInputPrice else 0 end )');
      SQL.Add('- SUM(ISNULL(ReciptItems.Portage, 0)) AS TotallSellPrice');
      SQL.Add(', Customers.RegisterNumber, Customers.HCTarafGaradadTypeCode, Customers.HCKharidarTypeCode, Customers.CustFirstName,');
      SQL.Add('Customers.PerCityCode,');
      SQL.Add('Customers.StateCode, Customers.CityCode, Zone.Shahr, Zone_StateCode.Ostan, Customers.Mobile,');
      SQL.Add('CASE WHEN Customers.CustName LIKE N''%''+ ISNULL(Customers.CustFirstName, '''') +''%'' THEN Customers.CustName');
      SQL.Add('ELSE Customers.CustName + '' '' + ISNULL(Customers.CustFirstName, '''') END AS FullCustName');

      SQL.Add(', CASE C3.NationalID WHEN ''0'' THEN '''' ELSE C3.NationalID END AS NationalIDC3');
      SQL.Add(', C3.Mobile MobileC3');
      SQL.Add(', CASE WHEN C3.CustName LIKE N''%''+ ISNULL(C3.CustFirstName, '''') +''%'' THEN C3.CustName ELSE C3.CustName +');
      SQL.Add(''' '' + ISNULL(C3.CustFirstName, '''') END AS FullCustNameC3');

      SQL.Add(',ReciptTypes.SellEffect');

      if frmTax.chkYear96.Checked then
        SQL.Add(',0 as ReciptNumber')
      else
        SQL.Add(', Recipts.ReciptNumber');

      SQL.Add(', MAX(Recipts.TAXID) AS TAXID');
      SQL.Add(', CASE MAX(Recipts.tax_status) WHEN 1 THEN ''ارسال شده'' WHEN 0 THEN ''خطا در ارسال'' WHEN 2 THEN ''در صف انتظار تائيد'' ELSE ''');
      SQL.Add('ارسال نشده'' END AS tax_statusNote');

      SQL.Add(',0.0 as TotalOutputPriceDeficitValue');

      SQL.Add(',''0'' as ReciptDate,''0'' as VajhTypes,0 as SarFaslType');
      SQL.Add(',0 as ForoushType,0 as KeshvarCode,0 as Kotaj_No,''0'' as Kotaj_Date,''0'' as LC_No');
      SQL.Add(',''0'' as LC_Date,0 as Gomrok_Arzyabi,0 as Gomrok_khoruj,0.0 as AmountDeclaration,0.0 as AmountDeclarationArz,0 as ReciptID,0 as YearID');
      SQL.Add(',0.0 as RTCarton,0.0 as RTWeight,0 as ArzType');

      SQL.Add(',0.0 AS Arz_PriceParvane ,0.0 ArzAmount ,0.0 as MoadelRialiPrice');

      SQL.Add(',0 as ServerID,0 as KalaType,0.0 as PriceParvane ');
      SQL.Add(',ArzLookUps.Name AS ArzName,Recipts.RialsEqual ,min( ReciptItems.StuffpublicPercentI) AS StuffpublicPercentI');

      SQL.Add(',sum(ReciptItems.InputEntity+ReciptItems.OutputEntity) AS Entity ,SUM(ReciptItems.InputWeight+ReciptItems.OutputWeight) AS Weight, AVG(ReciptItems.UnitSellPrice) AS UnitSellPrice');



      // if frmTax.chkYear96.Checked then
      // begin
      // SQL.Add(',''13''+Recipts.ReciptDate AS ReciptDate,Recipts.Reciptnumber,SellsMethods.VajhTypes, StuffGroups.SarFaslType');
      // SQL.Add(',StuffGroups.KalaType');
      //
      // SQL.Add(', ReciptsTrades.ForoushType, ReciptsTrades.KeshvarCode, ReciptsTrades.Kotaj_No, ');
      // SQL.Add('''13''+ReciptsTrades.Kotaj_Date AS Kotaj_Date, ReciptsTrades.LC_No,');
      // SQL.Add('''13''+ReciptsTrades.LC_Date AS LC_Date, ');
      // SQL.Add('ReciptsTrades.Gomrok_Arzyabi,ReciptsTrades.Gomrok_khoruj');
      //
      // SQL.Add(', Recipts.ReciptID, Recipts.ServerID, Recipts.YearID');
      //
      // if chkPriceParvane.Checked then
      // begin
      // SQL.Add(',ROUND(SUM( (ISNULL(StuffCoding.sd1,0)*(ReciptItems.InputWeight + ReciptItems.OutputWeight )/1000.0)');
      // SQL.Add('*  ISNULL(StuffpublicPercenti,0)) * ISNULL(Recipts.RialsEqual,0) ,0)');
      // SQL.Add('AS PriceParvane'); // ISNULL(ReciptItems.ArzRate,0) *
      //
      // end
      // else
      // begin
      // SQL.Add(',ROUND(SUM( (ISNULL(1,0)*(ReciptItems.InputWeight + ReciptItems.OutputWeight )/1000.0)');
      // SQL.Add('*  ISNULL(StuffpublicPercenti,0)) * ISNULL(Recipts.RialsEqual,0) ,0)');
      // SQL.Add('AS PriceParvane'); // ISNULL(ReciptItems.ArzRate,0) *
      //
      // end;
      //
      // end;

      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('Recipts ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
      SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
      SQL.Add('Customers ON Recipts.PersonID1 = Customers.CustID INNER JOIN');

      SQL.Add('Customers C3 ON Recipts.PersonID3 = C3.CustID	INNER JOIN');

      SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
      SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
      SQL.Add('StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID');
      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('Zone ON Customers.CityCode = Zone.ShahrCode LEFT OUTER JOIN');
      SQL.Add('(SELECT DISTINCT OstanCode, Ostan');
      SQL.Add('FROM Zone) AS Zone_StateCode ON Customers.StateCode = Zone_StateCode.OstanCode');

      SQL.Add('LEFT OUTER JOIN  LookUps ArzLookUps ON Recipts.ArzTypeID = ArzLookUps.LookUpID');

      // if frmTax.chkYear96.Checked then
      // begin
      // SQL.Add('INNER JOIN SellsMethods ON Recipts.SellsMethod = SellsMethods.SellsMethod');
      //
      // SQL.Add('LEFT OUTER JOIN ReciptsTrades ON Recipts.ReciptID = ReciptsTrades.ReciptID ');
      // SQL.Add('AND Recipts.ServerID = ReciptsTrades.ServerID AND Recipts.YearID = ReciptsTrades.YearID');
      // end;

      if NotSellEffect <> 0 then
        SQL.Add('WHERE(SellEffect = ' + NotSellEffect.ToString + ' ) ')
      else
        SQL.Add('WHERE (ReciptTypes.SellEffect <> 0) ');

      SQL.Add('And(Recipts.PersonID1 BETWEEN :CustIdFrom AND :CustIdTo) AND');
      SQL.Add('(StuffGroups.GroupID BETWEEN :StuffGrpFrom AND :StuffGrpTo)AND');
      SQL.Add('( CAST(SUBSTRING(Recipts.ReciptDate, 6, 2) AS int) BETWEEN :SeasonFrom AND :SeasonTo ) AND');
      SQL.Add('( Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo ) AND');

      SQL.Add('( Customers.CustomerGrpID BETWEEN :CustomerGrpIDFrom AND :CustomerGrpIDTo)');
      SQL.Add('AND ( Recipts.ReciptState < 3)');

      if opt.StuffKindActive then
        s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
      if s = '' then
        s := '0,1';
      SQL.Add('AND (StuffCoding.OwnerShipKind in (' + s + '))');

      s := GetcFrom(myParams.ParamValues['ReciptsSecondType'], ftString);
      if s <> '' then
        SQL.Add('AND Recipts.SecondType IN(' + s + ')');

      SQL.Add('AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
      SQL.Add('AND (Recipts.SellsMethod BETWEEN :SellsMethodFrom AND :SellsMethodTo)');

      // SQL.Add('And (:NotSellsEmporium2 =''-1'' OR Recipts.SellsEmporium not in (Select part From dbo.SplitString(:NotSellsEmporium,'','')))');
      // Parameters.ParamByName('NotSellsEmporium2').Value :=
      // GetcNot(myParams.ParamValues['SellsEmporium']);

      setInOrNotIn4QRy(qrySells, myParams, 'SellsEmporium',
        'Recipts.SellsEmporium');

      setInOrNotIn4QRy(qrySells, myParams, 'SellsMethod',
        'Recipts.SellsMethod');

      SQL.Add('AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)');

      // SQL.Add('AND ('',''+ :StoreID +'','' LIKE N''%,''+ltrim(str(Recipts.StoreID))+'',%'')');
      SQL.Add('AND (Recipts.StoreID in (' +
        GetcFrom(myParams.ParamValues['StoreID'], ftString) + '))');

      SQL.Add('AND ((ISNULL(LEN(Customers.EconomicNumber) + LEN(Customers.NationalID), 0) <> 0) OR 0 = :EconomicNumberNationalID )');
      SQL.Add('GROUP BY Recipts.PersonID1, Customers.CustName, Customers.Address, Customers.PostalCode, Customers.EconomicNumber, Customers.NationalCode,');
      SQL.Add('StuffGroups.GroupID, StuffGroups.GroupName,');
      SQL.Add('ReciptTypes.SellEffect, Customers.City, Customers.NationalID, Customers.Tel');
      SQL.Add(', Customers.RegisterNumber, Customers.HCTarafGaradadTypeCode, Customers.HCKharidarTypeCode, Customers.CustFirstName,');
      SQL.Add('Customers.PerCityCode,');
      SQL.Add('Customers.StateCode, Customers.CityCode, Zone.Shahr, Zone_StateCode.Ostan, Customers.Mobile');
      SQL.Add(',C3.NationalID , C3.Mobile , C3.CustName ,C3.CustFirstName');
      if frmTax.chkYear96.Checked then
      else
        SQL.Add(', Recipts.ReciptNumber');




      // if frmTax.chkYear96.Checked then
      // begin
      // SQL.Add(',Recipts.ReciptDate,Recipts.Reciptnumber,SellsMethods.VajhTypes, StuffGroups.SarFaslType');
      // SQL.Add(',StuffGroups.KalaType');
      // SQL.Add(', ReciptsTrades.ForoushType, ReciptsTrades.KeshvarCode, ReciptsTrades.Kotaj_No, ');
      // SQL.Add('ReciptsTrades.Kotaj_Date, ReciptsTrades.LC_No, ReciptsTrades.LC_Date, ');
      // SQL.Add('ReciptsTrades.Gomrok_Arzyabi,ReciptsTrades.Gomrok_khoruj');
      // SQL.Add(', Recipts.ReciptID, Recipts.ServerID, Recipts.YearID,Recipts.RialsEqual');
      //
      // end;

      if frmTax.StuffShow = 0 then
        SQL.Add(',ReciptItems.StuffCode,StuffCoding.c_StuffName');
      SQL.Add(',ArzLookUps.Name ,Recipts.RialsEqual');

      SQL.Add('ORDER BY ReciptTypes.SellEffect');
    end;

    if frmTax.StuffShow = 0 then
    begin
      FieldByName('GroupID').DisplayLabel := 'کد کالا';
    end
    else
    begin
      FieldByName('GroupID').DisplayLabel := 'كد گروه كالا';
    end;

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

    if Parameters.FindParam('INSellsEmporium') <> nil then
      Parameters.ParamByName('INSellsEmporium').Value :=
        GetcSelected(myParams.ParamValues['SellsEmporium']);
    if Parameters.FindParam('NotSellsEmporium') <> nil then
      Parameters.ParamByName('NotSellsEmporium').Value :=
        GetcNot(myParams.ParamValues['SellsEmporium']);

    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);

    if Parameters.FindParam('INSellsMethod') <> nil then
      Parameters.ParamByName('INSellsMethod').Value :=
        GetcSelected(myParams.ParamValues['SellsMethod']);
    if Parameters.FindParam('NotSellsMethod') <> nil then
      Parameters.ParamByName('NotSellsMethod').Value :=
        GetcNot(myParams.ParamValues['SellsMethod']);

    if Parameters.FindParam('tax_status') <> nil then
    begin
      s := GetcFrom(myParams.ParamValues['tax_status'], ftString);
      if s = '' then
        s := '2';
      Parameters.ParamByName('tax_status').Value := s;;
    end;

    Parameters.ParamByName('SeasonFrom').Value :=
      GetcTo(myParams.ParamValues['Season'], ftDate);
    Parameters.ParamByName('SeasonTo').Value :=
      StrToInt(GetcTo(myParams.ParamValues['Season'], ftDate)) + 2;

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

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

    // Parameters.ParamByName('StoreID').Value :=
    // GetcFrom(myParams.ParamValues['StoreID'], ftString);

    Parameters.ParamByName('EconomicNumberNationalID').Value :=
      IfThen(chkNotnationalID.Checked, 1, 0);

    // LblDate.Caption:=' از تاريخ '+ qrySells.Parameters.Parambyname('DateFrom').Value +' تا '+qrySells.Parameters.parambyname('DateTo').value;
    Active := True;

  end;
end;

procedure TrptDarayiSellsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, Ttax_status);
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
      AddItemFilter(GetFilter, TFilterSellsMethod, True);

      if opt.StuffKindActive then
        AddItem(DMf.adcBSell, 'StuffKindActive', 'نوع كالا', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''قطعي''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''اماني'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMf.adcBSell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMf.adcBSell, 'Season', 'فصل', 'نام فصل', ftInteger, dvDefaults,
        '', '', ciCombo, 'SELECT  1, ''بهار''     FROM Config union all ' +
        'SELECT  4, ''تابستان'' FROM Config union all ' +
        'SELECT  7, ''پاييز''   FROM Config union all ' +
        'SELECT  10, ''زمستان''  FROM Config ', '');

      AddItem(DMf.adcBSell, 'NotSellEffect', 'نوع تاثیر', 'تاثیر بر فروش',
        ftInteger, dvDefaults, '', '', ciCombo,
        'SELECT  0, ''همه موارد''     FROM Config union all ' +
        'SELECT  1, ''فروش'' FROM Config union all ' +
        'SELECT  2, ''برگشت از فروش''   FROM Config  ', '');

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

procedure TrptDarayiSellsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Season') = nil then
    close;
end;

procedure TrptDarayiSellsF.frmTaxcmbStuffShowChange(Sender: TObject);
begin
  inherited;
  updateFilter
end;

procedure TrptDarayiSellsF.frmTaxmskTaxChange(Sender: TObject);
begin
  inherited;
  frmTax.mskTaxChange(Sender);
  updateFilter
end;

procedure TrptDarayiSellsF.Saderat_Detail;
var
  s: string;
begin
  try
    With qrySaderat_Detail do
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
        if FindField('BargashtType') <> nil then
          FieldByName('BargashtType').AsBoolean :=
            qrySellsSellEffect.AsInteger = 2;

        if frmTax.chkYear96.Checked then
        begin
          // FieldByName('FactorNo').AsString := qrySellsReciptNumber.AsString;
          // FieldByName('FactorDate').AsString := qrySellsReciptDate.AsString;

          if (FindField('VajhType') <> nil) then
            FieldByName('VajhType').AsString := qrySellsVajhTypes.AsString;

          if (FindField('SarFaslType') <> nil) then
            FieldByName('SarFaslType').AsString := qrySellsSarFaslType.AsString;

          if (FindField('KalaType') <> nil) then
            FieldByName('KalaType').AsInteger := qrySellsKalaType.AsInteger;

        end;

        FieldByName('ForoushType').AsInteger := qrySellsForoushType.AsInteger;

        FieldByName('HCKharidarTypeCode').AsString :=
          qrySellsHCKharidarTypeCode.AsString;

        FieldByName('KharidarName').AsString := qrySellsCustFirstName.AsString;

        FieldByName('KharidarLastNameSherkatName').AsString :=
          qrySellsCustName.AsString;

        FieldByName('FaragirCode').AsString := qrySellsNationalID.AsString;

        FieldByName('KalaKhadamatName').AsString :=
          qrySellsc_StuffName.AsString;

        FieldByName('KalaCode').AsString := qrySellsGroupID.AsString;

        FieldByName('KeshvarCode').AsString := qrySellsKeshvarCode.AsString;

        FieldByName('Price').AsString :=
          IntToStr( { Abs } (qrySellsTotalOutputPrice.AsLargeInt));

        FieldByName('Arz_PriceParvane').AsString :=
          IntToStr( { Abs } (qrySellsArz_PriceParvane.AsLargeInt));

        FieldByName('Arz_Price').AsString :=
          IntToStr( { Abs } (qrySellsArzAmount.AsLargeInt));

        FieldByName('ArzBarabari_PriceParvane').AsString :=
          IntToStr( { Abs } (qrySellsRialsEqual.AsLargeInt));
        FieldByName('ArzBarabari_Price').AsString :=
          IntToStr( { Abs } (qrySellsRialsEqual.AsLargeInt));

        FieldByName('MoadelRialiPrice').AsString :=
          IntToStr( { Abs } (qrySellsMoadelRialiPrice.AsLargeInt));

        FieldByName('MoadelRialiPriceParvane').AsString :=
          IntToStr( { Abs } (qrySellsMoadelRialiPrice.AsLargeInt));

        FieldByName('ArzType').AsInteger := qrySellsArzType.AsInteger;

        if FindField('TakhfifPrice') <> nil then
          FieldByName('TakhfifPrice').AsString :=
            IntToStr( { Abs } (qrySellsDeficitValue.AsLargeInt));

        if FindField('MaliatMaksoore') <> nil then
          FieldByName('MaliatMaksoore').AsString := '0';

        FieldByName('Arz_MaliatArzeshAfzoodeh').AsString := '0';

        FieldByName('MaliatArzeshAfzoodeh').AsString :=
          IntToStr( { Abs } (qrySellsTaxValueOnTax.AsLargeInt));
        FieldByName('AvarezArzeshAfzoodeh').AsString :=
          IntToStrArzesh( { Abs } (qrySellsTaxValueOnTown.AsLargeInt));

        FieldByName('SayerAvarez').AsString := '0';
        FieldByName('Arz_SayerAvarez').AsString := '0';
        FieldByName('Arz_MaliatMaksoore').AsString := '0';
        FieldByName('ArzBarabari_MaliatArzeshAfzoodeh').AsString := '0';
        FieldByName('ArzBarabari_SayerAvarez').AsString := '0';
        FieldByName('ArzBarabari_MaliatMaksoore').AsString := '0';
        FieldByName('MoadelRialiMaliatArzeshAfzoodeh').AsString := '0';
        FieldByName('MoadelRialiSayerAvarez').AsString := '0';
        FieldByName('MoadelRialiMaliatMaksoore').AsString := '0';

        FieldByName('Kotaj_No').AsString := qrySellsKotaj_No.AsString;
        FieldByName('Kotaj_Date').AsString := qrySellsKotaj_Date.AsString;
        FieldByName('LC_No').AsString := qrySellsLC_No.AsString;
        FieldByName('LC_Date').AsString := qrySellsLC_Date.AsString;
        FieldByName('Gomrok_Arzyabi').AsString :=
          qrySellsGomrok_Arzyabi.AsString;
        FieldByName('Gomrok_khoruj').AsString := qrySellsGomrok_khoruj.AsString;

        if qrySellsPriceParvane.AsFloat <> 0 then
          FieldByName('PriceParvane').AsString := qrySellsPriceParvane.AsString;

        try
          Post;
          qrySells.Next;
        except
          on E: Exception do
          begin
            s := E.Message + #13#10 + qrySellsCustName.AsString + #13#10 +
              qrySellsPersonID1.AsString;
            add2log(s);
            Warn(s);
            Active := False;
          end;
        end;
      end;
      Active := False;

    end;
    BigMessage('ثبت شد ', 1);

  finally
    qrySells.EnableControls;
  end;
end;

procedure TrptDarayiSellsF.frmTaxsSpeedButton1Click(Sender: TObject);
var
  s, SumTotalOutputPrice: string;
  Sarjam: Boolean;
begin
  inherited;
  try
    frmTax.sSpeedButton1Click(Sender);
    BigMessage('لطفا صبر کنید....', 0);
    if qrySellsForoushType.AsInteger <> 0 then
    begin
      Saderat_Detail;
      Exit;
    end;

    frmTax.qryConfig.Open;

    if frmTax.qryConfig.FieldByName('ChkSumTotalOutputPrice').AsLargeInt = 1
    then
      SumTotalOutputPrice := 'SumTotalOutputPrice'
    else
      SumTotalOutputPrice := 'TotalOutputPrice';

    With qryForoush_Detail do
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
        FieldByName('BargashtType').AsBoolean :=
          qrySellsSellEffect.AsInteger = 2;

        if qrySellsGroupID.AsString = '0' then
          FieldByName('Price').AsString :=
            IntToStr( { Abs } (qrySellsTotalOutputPrice.AsLargeInt))
        else
          FieldByName('Price').AsString :=
            IntToStr(Abs(qrySellsTotalOutputPrice.AsLargeInt));
        if FindField('TakhfifPrice') <> nil then
          FieldByName('TakhfifPrice').AsString :=
            IntToStr(Abs(qrySellsDeficitValue.AsLargeInt));

        if FindField('MaliatMaksoore') <> nil then
          FieldByName('MaliatMaksoore').AsString := '0';

        if FieldByName('Price').AsLargeInt < 0 then
        begin
          FieldByName('TakhfifPrice').AsLargeInt :=
            Abs(FieldByName('Price').AsLargeInt);
          FieldByName('Price').AsInteger := 0;
        end;

        Sarjam := (Abs(qrySells.FieldByName(SumTotalOutputPrice).AsLargeInt)) <
          frmTax.qryConfig.FieldByName('SmallDealsPrice').AsLargeInt;
        FieldByName('Sarjam').AsBoolean := Sarjam;
        if not frmTax.chkYear96.Checked then
          Sarjam := False;

        // if not Sarjam then
        begin
          FieldByName('KalaKhadamatName').AsString :=
            IfThen(Sarjam, '', qrySellsc_StuffName.AsString);
          FieldByName('KharidarLastNameSherkatName').AsString :=
            IfThen(Sarjam, '', qrySellsCustName.AsString);
          FieldByName('KharidarName').AsString :=
            IfThen(Sarjam, '', qrySellsCustFirstName.AsString);

          FieldByName('KalaCode').AsString :=
            IfThen(Sarjam, '', qrySellsGroupID.AsString);

          if frmTax.chkYear96.Checked then
          begin
            FieldByName('FactorNo').AsString :=
              IfThen(Sarjam, '', qrySellsReciptNumber.AsString);
            FieldByName('FactorDate').AsString :=
              IfThen(Sarjam, '', qrySellsReciptDate.AsString);

            if (FindField('VajhType') <> nil) then
              FieldByName('VajhType').AsString :=
                IfThen(Sarjam, '', qrySellsVajhTypes.AsString);

            if (FindField('SarFaslType') <> nil) then
              FieldByName('SarFaslType').AsString :=
                IfThen(Sarjam, '', qrySellsSarFaslType.AsString);

            if (FindField('KalaType') <> nil) then
              FieldByName('KalaType').AsString :=
                IfThen(Sarjam, '', qrySellsKalaType.AsString);

          end;
          if ((Trim(qrySellsTel.AsString) <> EmptyStr) and
            (Trim(qrySellsTel.AsString) <> '0')) then
            FieldByName('KharidarTell').AsString :=
              IfThen(Sarjam, '', qrySellsTel.AsString)
          else if (Trim(qrySellsMobile.AsString) <> '0') then
            FieldByName('KharidarTell').AsString :=
              IfThen(Sarjam, '', qrySellsMobile.AsString);

          FieldByName('KharidarAddress').AsString :=
            IfThen(Sarjam, '', qrySellsAddress.AsString);

          if (Trim(qrySellsEconomicNumber.AsString) <> '0') then
            FieldByName('KharidarEconomicNO').AsString :=
              IfThen(Sarjam, '', qrySellsEconomicNumber.AsString);

          FieldByName('KharidarNationalCode').AsString :=
            IfThen(Sarjam, '', qrySellsNationalCode.AsString.Trim);
          if qrySellsNationalCode.AsString.Trim = EmptyStr then
            FieldByName('KharidarNationalCode').AsString :=
              IfThen(Sarjam, '', qrySellsNationalID.AsString.Trim);

          FieldByName('HCKharidarType1Code').AsString :=
            IfThen(Sarjam, '', qrySellsHCTarafGaradadTypeCode.AsString);

          FieldByName('HCKharidarTypeCode').AsString :=
            IfThen(Sarjam, '', qrySellsHCKharidarTypeCode.AsString);

          if (Trim(qrySellsPostalCode.AsString) <> '0') then
            FieldByName('KharidarPostCode').AsString :=
              IfThen(Sarjam, '', qrySellsPostalCode.AsString);

          // StringReplace( qrySellsPostalCode.AsString,'-','',[]);
          FieldByName('KharidarPerCityCode').AsString :=
            IfThen(Sarjam, '', qrySellsPerCityCode.AsString);

          FieldByName('StateCode').AsString :=
            IfThen(Sarjam, '', qrySellsStateCode.AsString);
          FieldByName('CityCode').AsString :=
            IfThen(Sarjam, '', qrySellsCityCode.AsString);
        end;

        if FieldByName('BargashtType').AsBoolean then
        begin
          FieldByName('MaliatArzeshAfzoodeh').AsString :=
            IntToStr(Abs(qrySellsTaxValueOnTax.AsLargeInt));
          FieldByName('AvarezArzeshAfzoodeh').AsString :=
            IntToStrArzesh(Abs(qrySellsTaxValueOnTown.AsLargeInt));

        end
        else
        begin
          FieldByName('MaliatArzeshAfzoodeh').AsString :=
            IntToStr( { Abs } (qrySellsTaxValueOnTax.AsLargeInt));
          FieldByName('AvarezArzeshAfzoodeh').AsString :=
            IntToStrArzesh( { Abs } (qrySellsTaxValueOnTown.AsLargeInt));

        end;

        if (FindField('SayerAvarez') <> nil) then
          FieldByName('SayerAvarez').AsString := '0';


        // FieldByName('KharidarHozeh').AsString := ;

        // FieldByName('IsSent').AsString := ;
        // FieldByName('TempKey').AsString :=;
        try
          Post;
          qrySells.Next;
        except
          on E: Exception do
          begin
            s := E.Message + #13#10 + qrySellsCustName.AsString + #13#10 +
              qrySellsPersonID1.AsString;
            add2log(s);
            Warn(s);
            Active := False;
          end;
        end;
      end;
      Active := False;

    end;
    BigMessage('ثبت شد .', 0);

  finally
    qrySells.EnableControls;
  end;

end;

procedure TrptDarayiSellsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Print(qrySells, ppReport1, 'rptDarayiSells');
  // try
  // qrySells.DisableControls;
  // InitReportFile(ppReport1,'rptDarayiSells',True);
  // finally
  // qrySells.EnableControls
  // end;//try
end;

procedure TrptDarayiSellsF.actSendToExleExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptDarayiSellsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qrySells, mainF)
end;

procedure TrptDarayiSellsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptDarayiSellsF.ppLblLimitGetText(Sender: TObject; var Text: String);
begin
  inherited;
  // Text:='از تاريخ'+qrySells.Parameters.ParamByName('DateFrom').Value+' تا '+qrySells.Parameters.ParamByName('DateTo').Value ;
end;

procedure TrptDarayiSellsF.ppLabel32GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiSellsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiSellsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySells);
end;

procedure TrptDarayiSellsF.BitBtn15Click(Sender: TObject);
var
  i: Integer;
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

procedure TrptDarayiSellsF.chkNotnationalIDClick(Sender: TObject);
begin
  inherited;
  updateFilter;
end;

procedure TrptDarayiSellsF.chkSumClick(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

procedure TrptDarayiSellsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySells);
end;

procedure TrptDarayiSellsF.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber')
end;

procedure TrptDarayiSellsF.ppLblRegisterNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('RegisterNumber')
end;

procedure TrptDarayiSellsF.ppLblTelGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('tel1')

end;

procedure TrptDarayiSellsF.ppLblAddressGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Address')
end;

procedure TrptDarayiSellsF.ppLblActivityKindGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('ActivityKind')
end;

procedure TrptDarayiSellsF.ppLblYearGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Format(' سال  13%.2d', [APPBank.Year])
end;

procedure TrptDarayiSellsF.pdbtxtnum2alphabetGetText(Sender: TObject;
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

procedure TrptDarayiSellsF.plblBackGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if qrySellsTotalOutputPrice.AsCurrency < 0 then
    Text := 'X'
  else
    Text := '  ';
end;

procedure TrptDarayiSellsF.plblPostalCodeGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := DMf.ReadBankConfig('PostalCode')
end;

procedure TrptDarayiSellsF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if StrToInt(GetcTo(myParams.ParamValues['Season'], ftDate)) <>
    (Sender as TppLabel).TAG then
    Text := ' ';
end;

procedure TrptDarayiSellsF.FormCreate(Sender: TObject);
begin
  inherited;
  DarayiCaptions('SellEffect', Memo1);

end;

procedure TrptDarayiSellsF.qryForoush_DetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('HCKharidarTypeCode').DisplayLabel :=
    qrySellsHCKharidarTypeCode.DisplayLabel

end;

procedure TrptDarayiSellsF.qrySellsHCKharidarTypeCodeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetHCKharidarTypeCode(Sender.AsInteger)
end;

procedure TrptDarayiSellsF.qrySellsHCTarafGaradadTypeCodeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetHCTarafGaradadTypeCode(Sender.AsInteger)
end;

end.
