unit rptDarayiBuys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppDB, ppDBPipe, ppVar, ComCtrls, ppParameter,
  Math, Mask, FrTax, DBCtrls, FrTaxTxt, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const, ToolCtrlsEh, DBGridEhToolCtrls, EhLibVCL,
  StrUtils, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, DBGridEhGrouping,
  DynVarsEh, Vcl.CheckLst, uTaxIDValidator, Vcl.Menus;

type
  TrptDarayiBuysF = class(Ttemplate2MDIF)
    srcBuys: TDataSource;
    qryBuys: TADOQuery;
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
    qryBuysPersonID1: TIntegerField;
    qryBuysCustName: TStringField;
    qryBuysAddress: TStringField;
    qryBuysPostalCode: TStringField;
    qryBuysEconomicNumber: TStringField;
    qryBuysc_StuffName: TStringField;
    actSort: TAction;
    qryBuysTotalPrice: TBCDField;
    qryBuysNationalID: TStringField;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText1: TppDBText;
    ppLine10: TppLine;
    ppLine14: TppLine;
    ppDBText3: TppDBText;
    ppLine15: TppLine;
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
    ppDBText9: TppDBText;
    qryBuysTel: TStringField;
    plblPostalCode: TppLabel;
    ppLine16: TppLine;
    ppDBText10: TppDBText;
    pdbtxtnum2alphabet: TppDBText;
    qryBuysTaxValue: TBCDField;
    qryBuysTotallSellPrice: TBCDField;
    plblBack: TppLabel;
    Memo1: TMemo;
    ppDBCalcnum2alphabet: TppDBCalc;
    qryBuysTaxValueOnTax: TBCDField;
    qryBuysTaxValueOnTown: TBCDField;
    frmTax: TfrmTax;
    qryKharid_Detail: TADOQuery;
    qryBuysRegisterNumber: TStringField;
    qryBuysHCTarafGaradadTypeCode: TWordField;
    qryBuysHCKharidarTypeCode: TWordField;
    qryBuysCustFirstName: TStringField;
    qryBuysStateCode: TIntegerField;
    qryBuysCityCode: TIntegerField;
    qryBuysPerCityCode: TStringField;
    qryBuysShahr: TWideStringField;
    qryBuysOstan: TWideStringField;
    BitBtn15: TBitBtn;
    DBEdit1: TDBEdit;
    frmTaxTxt1: TfrmTaxTxt;
    qryBuysMobile: TStringField;
    qryBuysFullCustName: TStringField;
    qryBuysLenAddress: TIntegerField;
    qryBuysHCForoushandeType1Code: TWordField;
    qryBuysGroupID: TLargeintField;
    qryBuysReciptNumber: TIntegerField;
    qryBuysReciptDate: TStringField;
    qryBuysVajhTypes: TStringField;
    qryBuysSarFaslType: TWordField;
    DBGrid1: TCedarDbgrid;
    qryBuysKalaType: TIntegerField;
    qryBuysDeficitValue: TBCDField;
    qryBuysRialsEqual: TBCDField;
    qryBuysArzName: TStringField;
    qryBuysNationalCode: TStringField;
    qryBuysBuyEffect: TWordField;
    qryBuysAmountDeclaration: TFMTBCDField;
    qryBuysAmountDeclarationArz: TFMTBCDField;
    qryVaredat_Detail: TADOQuery;
    qryBuysForoushType: TIntegerField;
    qryBuysKeshvarCode: TIntegerField;
    qryBuysKotaj_No: TIntegerField;
    qryBuysKotaj_Date: TStringField;
    qryBuysLC_No: TStringField;
    qryBuysLC_Date: TStringField;
    qryBuysGomrok_Arzyabi: TIntegerField;
    qryBuysGomrok_khoruj: TIntegerField;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
    qryBuysReciptID: TIntegerField;
    qryBuysYearID: TIntegerField;
    qryBuysServerID: TIntegerField;
    qryBuysRTCarton: TFMTBCDField;
    qryBuysRTWeight: TFMTBCDField;
    qryBuysArzType: TIntegerField;
    qryBuysEntity: TFloatField;
    qryBuysUnitSellPrice: TFMTBCDField;
    qryBuysWeight: TFloatField;
    qryBuysREFERENCENUMBER: TStringField;
    qryBuysID: TLargeintField;
    qryBuysTAXID: TStringField;
    BitBtn5: TBitBtn;
    actTaxID: TAction;
    chklstTaxID: TRadioGroup;
    actUpdateTaxIDExcell: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qryBuysTaxCo: TFloatField;
    qryBuysCustName_L2: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExleExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel32GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLblAddressGetText(Sender: TObject; var Text: String);
    procedure ppLblRegisterNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblTel1GetText(Sender: TObject; var Text: String);
    procedure ppLblEconomicNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblActivityKindGetText(Sender: TObject; var Text: String);
    procedure ppLblYearGetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure ppLblTelGetText(Sender: TObject; var Text: string);
    procedure plblPostalCodeGetText(Sender: TObject; var Text: string);
    procedure pdbtxtnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure plblBackGetText(Sender: TObject; var Text: string);
    procedure frmTaxsSpeedButton1Click(Sender: TObject);
    procedure frmTaxmskTaxChange(Sender: TObject);
    procedure qryBuysHCTarafGaradadTypeCodeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryBuysHCKharidarTypeCodeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure BitBtn15Click(Sender: TObject);
    procedure qryBuysHCForoushandeType1CodeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure frmTaxchkStuffShowClick(Sender: TObject);
    procedure qryKharid_DetailAfterOpen(DataSet: TDataSet);
    procedure frmTaxcmbStuffShowChange(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actTaxIDExecute(Sender: TObject);
    procedure chklstTaxIDClick(Sender: TObject);
    procedure actUpdateTaxIDExcellExecute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    FormType: Integer;
    procedure updateFilter;
    procedure Varedat_Detail;
    procedure SaveTaxID(ID: Largeint; NewTaxID: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptDarayiBuysF: TrptDarayiBuysF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, FormFunctions,
  ReciptsFunctions, mdiMain, MMESSAGE, main, TtmsExcel;

{$R *.dfm}

procedure TrptDarayiBuysF.updateFilter;
var
  s: String;
  SendTTMS: Integer;
begin
  // ----------   Recipts.PersonID1  >>>  ReciptItems.PersonID1  --------------//
  with qryBuys do
  begin
    Active := False;

    if frmTax.chkYear96.Checked then
    begin
      SQL.Text := 'SELECT * FROM';
      SQL.Add('Fn_DarayiBuys ( :FormType , :Tax , :TaxTown , :Town , :TaxTown1 , :CustIdFrom , :CustIdTo , :StuffGrpFrom');
      SQL.Add(', :StuffGrpTo , :SeasonFrom , :SeasonTo , :DateFrom , :DateTo , :CustomerGrpIDFrom , :CustomerGrpIDTo');
      SQL.Add(', :SellsEmporiumFrom , :SellsEmporiumTo , :NotSellsEmporium , :YearIDFrom , :YearIDTo , :StoreID');
      SQL.Add(' , :StuffShow , :StuffKindActive , :ReciptsSecondType ');
      SQL.Add(', :INSellsEmporium , :SellsMethodFrom , :SellsMethodTo , :NotSellsMethod , :INSellsMethod)');
      SQL.Add('WHERE (1=1)');
      s := Getcto(myParams.ParamValues['SendTTMS'], ftString);
      SendTTMS := StrToInt(s);
      case SendTTMS of
        2:
          SQL.Add('AND( len(REFERENCENUMBER) < 1 )');
        3:
          SQL.Add('AND( len(REFERENCENUMBER) > 1 )');

      end;

      if chklstTaxID.ItemIndex = 1 then
        SQL.Add('AND (len(TaxID) = 22)');
      if chklstTaxID.ItemIndex = 2 then
        SQL.Add('AND (len(TaxID) = 0)');

      // 2
      SQL.Add('ORDER BY BuyEffect,PersonID1,ReciptID');

      Parameters.ParamByName('FormType').Value := FormType;

      Parameters.ParamByName('StuffShow').Value := frmTax.StuffShow;
      // IfThen(frmTax.chkStuffShow.Checked, 1, 0);

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
      SQL.Text := 'SELECT Recipts.PersonID1, Customers.CustName,Customers.CustName_L2, ';
      SQL.Add('Customers.Address ,len(Customers.Address) as LenAddress,');
      SQL.Add('Customers.PostalCode, Customers.EconomicNumber, Customers.NationalCode');

      if frmTax.StuffShow = 0 then
      begin
        SQL.Add(', ReciptItems.StuffCode AS GroupID,StuffCoding.c_StuffName AS c_StuffName');
      end
      else
      begin
        SQL.Add(',Cast( StuffGroups.GroupID AS BigInt) AS GroupID ,StuffGroups.GroupName AS c_StuffName');
      end;

      SQL.Add(',SUM( ReciptItems.TotalInputPrice - ReciptItems.TotalOutputPrice ) AS TotalPrice');
      SQL.Add(',SUM(case ReciptTypes.BuyEffect when 1 then ');
      SQL.Add('- isnull(ReciptItems.DeficitValue,0)- ReciptItems.DeficitValue2 - ReciptItems.DeficitValue4 - ReciptItems.DeficitValue3');
      SQL.Add('else + isnull(ReciptItems.DeficitValue,0)+ ReciptItems.DeficitValue2 + ReciptItems.DeficitValue4 + ReciptItems.DeficitValue3 end) AS DeficitValue');

      SQL.Add(', Customers.Tel , Customers.City ,');
      SQL.Add('CASE Customers.NationalID WHEN ''0'' THEN '''' ELSE Customers.NationalID END AS NationalID,');

      SQL.Add('ReciptItems.TaxCo, case ReciptTypes.BuyEffect when 1 then 1 else - 1 end * SUM(ReciptItems.TaxValue) AS TaxValue,');
      SQL.Add('ROUND( (case ReciptTypes.BuyEffect when 1 then 1 else - 1 end * SUM(ReciptItems.TaxValue)* CAST( :Tax AS FLOAT)) /');
      SQL.Add('CAST( :TaxTown AS FLOAT) ,0) AS TaxValueOnTax,');
      SQL.Add('ROUND( (case ReciptTypes.BuyEffect when 1 then 1 else - 1 end * SUM(ReciptItems.TaxValue)* CAST( :Town AS FLOAT))/');
      SQL.Add('CAST( :TaxTown1 AS FLOAT) ,0) AS TaxValueOnTown,');

      SQL.Add('case ReciptTypes.BuyEffect when 1 then 1 else - 1 end * SUM(ReciptItems.TotallSellPrice)');
      SQL.Add('- SUM(ISNULL(ReciptItems.Portage, 0)) AS TotallSellPrice');

      SQL.Add(', Customers.RegisterNumber, Customers.HCTarafGaradadTypeCode, Customers.HCKharidarTypeCode, Customers.CustFirstName,');
      SQL.Add('Customers.PerCityCode,');
      SQL.Add('Customers.StateCode, Customers.CityCode, Zone.Shahr, Zone_StateCode.Ostan, Customers.Mobile,');
      SQL.Add('CASE WHEN Customers.CustName LIKE N''%''+ ISNULL(Customers.CustFirstName, '''') +''%'' THEN Customers.CustName');
      SQL.Add('ELSE Customers.CustName + '' '' + ISNULL(Customers.CustFirstName, '''') END AS FullCustName');
      SQL.Add(',Customers.HCForoushandeType1Code');
      SQL.Add(',ReciptTypes.BuyEffect');

      SQL.Add(',0 as ReciptNumber,''0'' as ReciptDate,''0'' as VajhTypes,0 as SarFaslType');
      SQL.Add(',0 as ForoushType,0 as KeshvarCode,0 as Kotaj_No,''0'' as Kotaj_Date,''0'' as LC_No');
      SQL.Add(',''0'' as LC_Date,0 as Gomrok_Arzyabi,0 as Gomrok_khoruj,0 as AmountDeclaration,0 as AmountDeclarationArz,0 as ReciptID,0 as YearID');

      SQL.Add(',0 as RTCarton,0 as RTWeight,0 as ArzType');
      SQL.Add(',0 as ServerID,0 as KalaType,0.0 as PriceParvane');
      SQL.Add(',ArzLookUps.Name AS ArzName,Recipts.RialsEqual');

      SQL.Add(',sum(ReciptItems.InputEntity+ReciptItems.OutputEntity) AS Entity  ,SUM(ReciptItems.InputWeight+ReciptItems.OutputWeight) AS Weight, AVG(ReciptItems.UnitSellPrice) AS UnitSellPrice');

      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('Recipts ON dbo.Recipts.ReciptID = dbo.ReciptItems.ReciptID AND');
      SQL.Add('dbo.Recipts.ServerID = dbo.ReciptItems.ServerID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID INNER');
      SQL.Add('JOIN');
      SQL.Add('Customers ON Recipts.PersonID1 = Customers.CustID INNER JOIN');
      SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
      SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
      SQL.Add('StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID');
      SQL.Add('INNER JOIN');
      SQL.Add('Zone ON Customers.CityCode = Zone.ShahrCode INNER JOIN');
      SQL.Add('(SELECT DISTINCT OstanCode, Ostan');
      SQL.Add('FROM Zone) AS Zone_StateCode ON Customers.StateCode = Zone_StateCode.OstanCode');
      SQL.Add('LEFT OUTER JOIN  LookUps ArzLookUps ON Recipts.ArzTypeID = ArzLookUps.LookUpID');

      SQL.Add('WHERE (ReciptTypes.BuyEffect <> 0 )AND');
      SQL.Add('( CAST(SUBSTRING(Recipts.ReciptDate, 6, 2) AS int) BETWEEN :SeasonFrom AND :SeasonTo ) AND');
      SQL.Add('( Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo ) AND');
      SQL.Add('( Customers.CustomerGrpID BETWEEN :CustomerGrpIDFrom AND :CustomerGrpIDTo) AND');
      SQL.Add('( Recipts.ReciptState < 3)');

      if opt.StuffKindActive then
        s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
      if s = '' then
        s := '0,1';
      SQL.Add('AND (StuffCoding.OwnerShipKind in (' + s + '))');

      SendTTMS := StrToInt(GetcFrom(myParams.ParamValues['SendTTMS'],
        ftString));

      case SendTTMS of
        2:
          SQL.Add('( len(Recipts.REFERENCENUMBER) > 3 )');
        3:
          SQL.Add('( len(Recipts.REFERENCENUMBER) < 3 )');

      end;

      s := GetcFrom(myParams.ParamValues['ReciptsSecondType'], ftString);
      if s <> '' then
        SQL.Add('AND Recipts.SecondType IN(' + s + ')');

      // SQL.Add('And (:NotSellsEmporium2 =''-1'' OR Recipts.SellsEmporium not in (Select part From dbo.SplitString(:NotSellsEmporium,'','')))');
      // Parameters.ParamByName('NotSellsEmporium2').Value :=
      // GetcNot(myParams.ParamValues['SellsEmporium']);
      SQL.Add('AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
      SQL.Add('AND (Recipts.SellsMethod BETWEEN :SellsMethodFrom AND :SellsMethodTo)');

      setInOrNotIn4QRy(qryBuys, myParams, 'SellsEmporium',
        'Recipts.SellsEmporium');

      setInOrNotIn4QRy(qryBuys, myParams, 'SellsMethod', 'Recipts.SellsMethod');

      SQL.Add('AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
      SQL.Add('AND ( Recipts.PersonID1 BETWEEN :CustIdFrom AND :CustIdTo) ');
      SQL.Add('AND( StuffGroups.GroupID BETWEEN :StuffGrpFrom AND :StuffGrpTo)');
      SQL.Add('AND ('',''+ :StoreID +'','' LIKE N''%,''+ltrim(str(Recipts.StoreID))+'',%'')');

      SQL.Add('GROUP BY Recipts.PersonID1, Customers.CustName, Customers.Address, Customers.PostalCode, Customers.EconomicNumber, Customers.NationalCode,');
      SQL.Add('StuffGroups.GroupID,');
      SQL.Add('StuffGroups.GroupName, ReciptTypes.BuyEffect , Customers.City, Customers.NationalID, Customers.Tel');
      SQL.Add(', Customers.RegisterNumber, Customers.HCTarafGaradadTypeCode, Customers.HCKharidarTypeCode, Customers.CustFirstName,');
      SQL.Add('Customers.PerCityCode,');
      SQL.Add('Customers.StateCode, Customers.CityCode,Zone.Shahr, Zone_StateCode.Ostan, Customers.Mobile');
      SQL.Add(',Customers.HCForoushandeType1Code');

      if frmTax.StuffShow = 0 then
        SQL.Add(',ReciptItems.StuffCode,StuffCoding.c_StuffName');

      SQL.Add(',ReciptTypes.BuyEffect');
      SQL.Add(',ArzLookUps.Name,Recipts.RialsEqual');

      SQL.Add('ORDER BY ReciptTypes.BuyEffect');

      if FormType <> 0 then
      begin
        SQL.Text := StringReplace(SQL.Text, 'Recipts.PersonID1',
          'ReciptItems.PersonID1', [rfReplaceAll]);
      end;
    end;

    if FormType <> 0 then
    begin
      Caption := 'گزارش خــريـد (خاص) فصلي جهت دارائي';
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
      Getcto(myParams.ParamValues['SellsEmporium'], ftInteger);

    if Parameters.FindParam('INSellsEmporium') <> nil then
      Parameters.ParamByName('INSellsEmporium').Value :=
        GetcSelected(myParams.ParamValues['SellsEmporium']);
    if Parameters.FindParam('NotSellsEmporium') <> nil then
      Parameters.ParamByName('NotSellsEmporium').Value :=
        GetcNot(myParams.ParamValues['SellsEmporium']);

    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      Getcto(myParams.ParamValues['SellsMethod'], ftInteger);

    if Parameters.FindParam('INSellsMethod') <> nil then
      Parameters.ParamByName('INSellsMethod').Value :=
        GetcSelected(myParams.ParamValues['SellsMethod']);
    if Parameters.FindParam('NotSellsMethod') <> nil then
      Parameters.ParamByName('NotSellsMethod').Value :=
        GetcNot(myParams.ParamValues['SellsMethod']);

    Parameters.ParamByName('SeasonFrom').Value :=
      Getcto(myParams.ParamValues['Season'], ftDate);
    Parameters.ParamByName('SeasonTo').Value :=
      StrToInt(Getcto(myParams.ParamValues['Season'], ftDate)) + 2;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      Getcto(myParams.ParamValues['Date'], ftDate);

    Parameters.ParamByName('CustIdFrom').Value :=
      GetcFrom(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('CustIdTo').Value :=
      Getcto(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('StuffGrpFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffGrp'], ftInteger);
    Parameters.ParamByName('StuffGrpTo').Value :=
      Getcto(myParams.ParamValues['StuffGrp'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      Getcto(myParams.ParamValues['CustomerGrpID'], ftInteger);

    // Parameters.ParamByName('LookUpsCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['LookUpsCode'], ftInteger);
    // Parameters.ParamByName('LookUpsCodeTo').Value :=
    // GetcTo(myParams.ParamValues['LookUpsCode'], ftInteger);

    Parameters.ParamByName('StoreID').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftString);

    // LblDate.Caption:=' از تاريخ '+ qrybuys.Parameters.Parambyname('DateFrom').Value +' تا '+qryBuys.Parameters.parambyname('DateTo').value;
    Active := True;

  end;
end;

procedure TrptDarayiBuysF.actFilterExecute(Sender: TObject);
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

      AddItemFilter(GetFilter, TFilterSellsEmporium, True);
      AddItemFilter(GetFilter, TFilterSellsMethod, True);

      if opt.StuffKindActive then
        AddItem(DMf.adcBSell, 'StuffKindActive', 'نوع كالا', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''قطعي''  as OwnerShipKindName ' +
          'FROM  Config union all ' +
          'SELECT  1 as OwnerShipKind,''اماني'' as OwnerShipKindName FROM  Config ',
          '');

      AddItem(DMf.adcBSell, 'SendTTMS', 'وضعیت ارسال',
        'اگر شماره پیگیری ثبت شده', ftInteger, dvDefaults, '', '', ciCombo,
        'SELECT  1, ''همه''     FROM Config union all ' +
        'SELECT  2, ''ارسال نشده ها'' FROM Config union all ' +
        'SELECT  3, ''ارسال شده ها''   FROM Config', '');

      AddItem(DMf.adcBSell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');

      AddItem(DMf.adcBSell, 'Season', 'فصل', 'نام فصل', ftInteger, dvDefaults,
        '', '', ciCombo, 'SELECT  1, ''بهار''     FROM Config union all ' +
        'SELECT  4, ''تابستان'' FROM Config union all ' +
        'SELECT  7, ''پاييز''   FROM Config union all ' +
        'SELECT  10, ''زمستان''  FROM Config ', '');
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

procedure TrptDarayiBuysF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Season') = nil then
    close;
end;

procedure TrptDarayiBuysF.frmTaxchkStuffShowClick(Sender: TObject);
begin
  inherited;
  updateFilter
end;

procedure TrptDarayiBuysF.frmTaxcmbStuffShowChange(Sender: TObject);
begin
  inherited;
  updateFilter

end;

procedure TrptDarayiBuysF.frmTaxmskTaxChange(Sender: TObject);
begin
  inherited;
  frmTax.mskTaxChange(Sender);
  updateFilter;
end;

procedure TrptDarayiBuysF.frmTaxsSpeedButton1Click(Sender: TObject);
var
  s: string;
  Sarjam: Boolean;
begin
  inherited;
  try
    frmTax.sSpeedButton1Click(Sender);
    BigMessage('لطفا صبر کنید....', 0);
    if qryBuysForoushType.AsInteger <> 0 then
    begin
      Varedat_Detail;
      Exit;
    end;

    With qryKharid_Detail do
    begin
      Active := False;
      Active := True;
      while not Eof do
        Delete;
      qryBuys.DisableControls;
      qryBuys.First;
      while not qryBuys.Eof do
      begin
        Insert;

        FieldByName('BargashtType').AsBoolean := qryBuysBuyEffect.AsInteger
          in [2, 3];

        if qryBuysGroupID.AsString = '0' then
          FieldByName('Price').AsString :=
            IntToStr(Abs(qryBuysTotalPrice.AsLargeInt))
        else
          FieldByName('Price').AsString :=
            IntToStr(Abs(qryBuysTotalPrice.AsLargeInt));

        // FieldByName('Price').AsString :=
        // IntToStr( { Abs } (qryBuysTotalPrice.AsLargeInt));
        if FindField('MaliatMaksoore') <> nil then
          FieldByName('MaliatMaksoore').AsString := '0';

        FieldByName('TakhfifPrice').AsString :=
          IntToStr(Abs(qryBuysDeficitValue.AsLargeInt));

        // if FieldByName('Price').AsLargeInt < 0 then
        // begin
        // if FindField('TakhfifPrice') <> nil then
        // FieldByName('TakhfifPrice').AsLargeInt :=
        // Abs(FieldByName('Price').AsLargeInt);
        // FieldByName('Price').AsInteger := 0;
        // end;

        if FieldByName('BargashtType').AsBoolean then
          FieldByName('TakhfifPrice').AsInteger := 0;

        frmTax.qryConfig.Open;

        Sarjam := FieldByName('Price').AsLargeInt < frmTax.qryConfig.FieldByName
          ('SmallDealsPrice').AsLargeInt;

        // if True then

        FieldByName('Sarjam').AsBoolean := Sarjam;

        FieldByName('KalaKhadamatName').AsString :=
          IfThen(Sarjam, '', qryBuysc_StuffName.AsString);
        FieldByName('KalaCode').AsString :=
          IfThen(Sarjam, '', qryBuysGroupID.AsString);

        if FieldByName('BargashtType').AsBoolean then
        begin
          FieldByName('MaliatArzeshAfzoodeh').AsString :=
            IntToStr(Abs(qryBuysTaxValueOnTax.AsLargeInt));
          FieldByName('AvarezArzeshAfzoodeh').AsString :=
            IntToStrArzesh(Abs(qryBuysTaxValueOnTown.AsLargeInt));
        end
        else
        begin
          FieldByName('MaliatArzeshAfzoodeh').AsString :=
            IntToStr(Abs(qryBuysTaxValueOnTax.AsLargeInt));
          FieldByName('AvarezArzeshAfzoodeh').AsString :=
            IntToStrArzesh(Abs(qryBuysTaxValueOnTown.AsLargeInt));
        end;

        FieldByName('ForoushandePostCode').AsString :=
          IfThen(Sarjam, '', qryBuysPostalCode.AsString);
        FieldByName('ForoushandePerCityCode').AsString :=
          IfThen(Sarjam, '', qryBuysPerCityCode.AsString);

        if Trim(qryBuysTel.AsString) <> EmptyStr then
          FieldByName('ForoushandeTell').AsString :=
            IfThen(Sarjam, '', qryBuysTel.AsString)
        else
          FieldByName('ForoushandeTell').AsString :=
            IfThen(Sarjam, '', qryBuysMobile.AsString);

        FieldByName('ForoushandeAddress').AsString :=
          IfThen(Sarjam, '', qryBuysAddress.AsString);
        FieldByName('ForoushandeLastNameSherkatName').AsString :=
          IfThen(Sarjam, '', qryBuysCustName.AsString);
        FieldByName('ForoushandeName').AsString :=
          IfThen(Sarjam, '', qryBuysCustFirstName.AsString);
        FieldByName('ForoushandeEconomicNO').AsString :=
          IfThen(Sarjam, '', qryBuysEconomicNumber.AsString);

        FieldByName('ForoushandeNationalCode').AsString :=
          IfThen(Sarjam, '', qryBuysNationalCode.AsString.Trim);
        if qryBuysNationalCode.AsString.Trim = EmptyStr then
          FieldByName('ForoushandeNationalCode').AsString :=
            IfThen(Sarjam, '', qryBuysNationalID.AsString.Trim);

        FieldByName('HCForoushandeTypeCode').AsString :=
          IfThen(Sarjam, '', qryBuysHCKharidarTypeCode.AsString);
        // FieldByName('ForoushandeHozeh').AsString := ;

        FieldByName('HCForoushandeType1Code').AsString :=
          IfThen(Sarjam, '', qryBuysHCForoushandeType1Code.AsString);

        FieldByName('StateCode').AsString :=
          IfThen(Sarjam, '', qryBuysStateCode.AsString);
        FieldByName('CityCode').AsString :=
          IfThen(Sarjam, '', qryBuysCityCode.AsString);
        // FieldByName('IsSent').AsString := ;
        // FieldByName('TempKey').AsString :=;

        if frmTax.chkYear96.Checked then
        begin
          FieldByName('FactorNo').AsString :=
            IfThen(Sarjam, '', qryBuysReciptNumber.AsString);
          FieldByName('FactorDate').AsString :=
            IfThen(Sarjam, '', qryBuysReciptDate.AsString);

          if (FindField('VajhType') <> nil) then
            FieldByName('SarFaslType').AsString :=
              IfThen(Sarjam, '', qryBuysSarFaslType.AsString);

          if (FindField('VajhType') <> nil) then
            FieldByName('VajhType').AsString :=
              IfThen(Sarjam, '', qryBuysVajhTypes.AsString);

          // FieldByName('Arz_SayerAvarez').AsString := '0';
          FieldByName('SayerAvarez').AsString := '0';

          if (FindField('KalaType') <> nil) then
            FieldByName('KalaType').AsString :=
              IfThen(Sarjam, '', qryBuysKalaType.AsString);

        end;

        try
          Post;
          qryBuys.Next;
        except
          on E: Exception do
          begin
            s := E.Message + #13#10 + qryBuysCustName.AsString + #13#10 +
              qryBuysPersonID1.AsString;
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
    qryBuys.EnableControls;
  end;

end;

procedure TrptDarayiBuysF.actPrintExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Print(qryBuys, ppReport1, 'rptDarayiBuys');
  // try
  // qryBuys.DisableControls;
  // InitReportFile(ppReport1,'rptDarayiBuys',True);
  // finally
  // qryBuys.EnableControls;
  // end;//try
end;

procedure TrptDarayiBuysF.actSendToExleExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptDarayiBuysF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryBuys, mainF)
end;

procedure TrptDarayiBuysF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptDarayiBuysF.plblBackGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if qryBuysTotalPrice.AsCurrency < 0 then
    Text := 'X'
  else
    Text := '  ';
end;

procedure TrptDarayiBuysF.plblPostalCodeGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := DMf.ReadBankConfig('PostalCode')
end;

procedure TrptDarayiBuysF.pdbtxtnum2alphabetGetText(Sender: TObject;
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

procedure TrptDarayiBuysF.ppLabel32GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiBuysF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiBuysF.qryBuysHCForoushandeType1CodeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetHCForoushandeType1Code(Sender.AsInteger)
end;

procedure TrptDarayiBuysF.qryBuysHCKharidarTypeCodeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetHCKharidarTypeCode(Sender.AsInteger)
end;

procedure TrptDarayiBuysF.qryBuysHCTarafGaradadTypeCodeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetHCTarafGaradadTypeCode(Sender.AsInteger)
end;

procedure TrptDarayiBuysF.qryKharid_DetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('HCForoushandeType1Code').DisplayLabel :=
    qryBuysHCForoushandeType1Code.DisplayLabel
end;

procedure TrptDarayiBuysF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBuys);
end;

procedure TrptDarayiBuysF.actTaxIDExecute(Sender: TObject);
var
  i: Largeint;
  NewTaxID: string;
begin
  inherited;
  // نمایش کادر ورودی با عنوان مناسب
  NewTaxID := get_box('شماره منحصر به فرد مالیاتی',
    'لطفاً شماره منحصر به فرد مالیاتی فروشنده را وارد کنید:',
    qryBuysTAXID.AsString);

  if IsValidFullTaxID(NewTaxID) then
  begin
    // ذخیره در دیتابیس یا متغیر فعلی
    SaveTaxID(qryBuysID.AsLargeInt, NewTaxID);
    Warn('شماره مالیاتی با موفقیت به‌روزرسانی شد.', mtInformation);
    i := qryBuysID.AsLargeInt;
    qryBuys.Requery();
    qryBuys.Locate('ID', i, [])
  end
  else
  begin
    Warn('لطفاً یک مقدار معتبر وارد کنید.');
  end;
end;

procedure TrptDarayiBuysF.actUpdateTaxIDExcellExecute(Sender: TObject);
begin
  inherited;
  TtmsExcelF.ShowImPortExcel(qryBuys)
end;

procedure TrptDarayiBuysF.BitBtn15Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    mdiMainF.actCustomersTaxF.Execute;
  finally
    i := qryBuys.FieldByName('PersonID1').AsInteger;
    qryBuys.Requery();
    qryBuys.Locate('PersonID1', i, []);
  end
end;

procedure TrptDarayiBuysF.BitBtn5Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TrptDarayiBuysF.chklstTaxIDClick(Sender: TObject);
begin
  inherited;
  updateFilter
end;

procedure TrptDarayiBuysF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBuys);
end;

procedure TrptDarayiBuysF.ppLblAddressGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Address')
end;

procedure TrptDarayiBuysF.ppLblRegisterNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('RegisterNumber')
end;

procedure TrptDarayiBuysF.ppLblTel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Tel1')
end;

procedure TrptDarayiBuysF.ppLblTelGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := DMf.ReadBankConfig('tel1')
end;

procedure TrptDarayiBuysF.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber')
end;

procedure TrptDarayiBuysF.ppLblActivityKindGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('ActivityKind')
end;

procedure TrptDarayiBuysF.ppLblYearGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Format(' سال  13%.2d', [APPBank.Year])
end;

procedure TrptDarayiBuysF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if StrToInt(Getcto(myParams.ParamValues['Season'], ftDate)) <>
    (Sender as TppLabel).Tag then
    Text := ' ';
end;

procedure TrptDarayiBuysF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  DarayiCaptions('BuyEffect', Memo1);
  DBGrid1.SetFooter4Sum([]);

end;

procedure TrptDarayiBuysF.Varedat_Detail;
var
  s: string;
begin
  try
    With qryVaredat_Detail do
    begin
      Active := False;
      Active := True;
      while not Eof do
        Delete;
      qryBuys.DisableControls;
      qryBuys.First;
      while not qryBuys.Eof do
      begin
        Insert;
        if FindField('BargashtType') <> nil then
          FieldByName('BargashtType').AsBoolean :=
            qryBuysBuyEffect.AsInteger = 2;

        if frmTax.chkYear96.Checked then
        begin
          // FieldByName('FactorNo').AsString := qryBuysReciptNumber.AsString;
          // FieldByName('FactorDate').AsString := qryBuysReciptDate.AsString;

          if (FindField('VajhType') <> nil) then
            FieldByName('VajhType').AsString := qryBuysVajhTypes.AsString;

          if (FindField('SarFaslType') <> nil) then
            FieldByName('SarFaslType').AsString := qryBuysSarFaslType.AsString;

          if (FindField('KalaType') <> nil) then
            FieldByName('KalaType').AsInteger := qryBuysKalaType.AsInteger;

        end;

        FieldByName('KharidType').AsInteger := qryBuysForoushType.AsInteger;

        FieldByName('HCForoushandeTypeCode').AsString :=
          qryBuysHCKharidarTypeCode.AsString;

        FieldByName('ForoushandeName').AsString :=
          qryBuysCustFirstName.AsString;

        FieldByName('ForoushandeLastNameSherkatName').AsString :=
          qryBuysCustName.AsString;

        FieldByName('FaragirCode').AsString := qryBuysNationalID.AsString;

        FieldByName('KalaKhadamatName').AsString := qryBuysc_StuffName.AsString;

        FieldByName('KalaCode').AsString := qryBuysGroupID.AsString;

        FieldByName('KeshvarCode').AsString := qryBuysKeshvarCode.AsString;

        FieldByName('Price').AsString :=
          IntToStr( { Abs } (qryBuysTotalPrice.AsLargeInt));

        if qryBuysAmountDeclaration.AsLargeInt <> 0 then
        begin
          FieldByName('Price').AsString :=
            IntToStr( { Abs } (qryBuysAmountDeclaration.AsLargeInt));

          FieldByName('Arz_Price').AsString :=
            IntToStr( { Abs } (qryBuysAmountDeclarationArz.AsLargeInt));

        end;
        FieldByName('ArzType').AsInteger := qryBuysArzType.AsInteger;

        if FindField('TakhfifPrice') <> nil then
          FieldByName('TakhfifPrice').AsString :=
            IntToStr( { Abs } (qryBuysDeficitValue.AsLargeInt));

        if FindField('MaliatMaksoore') <> nil then
          FieldByName('MaliatMaksoore').AsString := '0';

        FieldByName('MaliatArzeshAfzoodeh').AsString :=
          IntToStr( { Abs } (qryBuysTaxValueOnTax.AsLargeInt));
        FieldByName('AvarezArzeshAfzoodeh').AsString :=
          IntToStrArzesh( { Abs } (qryBuysTaxValueOnTown.AsLargeInt));

        FieldByName('SayerAvarez').AsString := '0';
        // FieldByName('Arz_SayerAvarez').AsString := '';

        FieldByName('Kotaj_No').AsString := qryBuysKotaj_No.AsString;
        FieldByName('Kotaj_Date').AsString := qryBuysKotaj_Date.AsString;
        FieldByName('LC_No').AsString := qryBuysLC_No.AsString;
        FieldByName('LC_Date').AsString := qryBuysLC_Date.AsString;
        FieldByName('Gomrok_Arzyabi').AsString :=
          qryBuysGomrok_Arzyabi.AsString;
        FieldByName('Gomrok_Vorud').AsString := qryBuysGomrok_khoruj.AsString;

        // if qryBuysPriceParvane.AsFloat <> 0 then
        // FieldByName('PriceParvane').AsString := qryBuysPriceParvane.AsString;

        try
          Post;
          qryBuys.Next;
        except
          on E: Exception do
          begin
            s := E.Message + #13#10 + qryBuysCustName.AsString + #13#10 +
              qryBuysPersonID1.AsString;
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
    qryBuys.EnableControls;
  end;
end;

procedure TrptDarayiBuysF.SaveTaxID(ID: Largeint; NewTaxID: string);
var
  Q: TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  try
    Q.Connection := DMf.adcBSell;
    Q.SQL.Text := 'UPDATE Recipts SET TaxID = :TaxID WHERE ID = :ID';
    Q.Parameters.ParamByName('TaxID').Value := NewTaxID;
    Q.Parameters.ParamByName('ID').Value := ID;
    try
      Q.ExecSQL;
    except
      on E: Exception do
        ShowMessage('خطا در ثبت اطلاعات: ' + E.Message);
    end;
  finally
    Q.free;
  end;
end;

end.
