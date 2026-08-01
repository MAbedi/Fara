unit rptDarayiHagholAmalKari;

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
  TrptDarayiHagholAmalKariF = class(Ttemplate2MDIF)
    srcSells: TDataSource;
    qryHaghol: TADOQuery;
    qryHagholPersonID1: TIntegerField;
    qryHagholCustName: TStringField;
    qryHagholAddress: TStringField;
    qryHagholPostalCode: TStringField;
    qryHagholEconomicNumber: TStringField;
    qryHagholc_StuffName: TStringField;
    qryHagholTotalOutputPrice: TBCDField;
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
    qryHagholNationalID: TStringField;
    qryHagholTel: TStringField;
    qryHagholTaxValue: TBCDField;
    qryHagholTotallSellPrice: TBCDField;
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
    qryHagholTaxValueOnTax: TBCDField;
    qryHagholTaxValueOnTown: TBCDField;
    frmTax: TfrmTax;
    qryHagholRegisterNumber: TStringField;
    qryHagholHCTarafGaradadTypeCode: TWordField;
    qryHagholHCKharidarTypeCode: TWordField;
    qryHagholCustFirstName: TStringField;
    qryHagholStateCode: TIntegerField;
    qryHagholCityCode: TIntegerField;
    qryHagholPerCityCode: TStringField;
    qryHagholAmalKari_Detail: TADOQuery;
    qryHagholShahr: TWideStringField;
    qryHagholOstan: TWideStringField;
    BitBtn15: TBitBtn;
    frmTaxTxt1: TfrmTaxTxt;
    qryHagholMobile: TStringField;
    qryHagholFullCustName: TStringField;
    Panel1: TPanel;
    chkNotnationalID: TCheckBox;
    qryHagholLenAddress: TIntegerField;
    qryHagholGroupID: TLargeintField;
    qryHagholSellEffect: TWordField;
    qryHagholReciptDate: TStringField;
    qryHagholReciptNumber: TIntegerField;
    qryHagholVajhTypes: TStringField;
    qryHagholSarFaslType: TWordField;
    DBGrid1: TCedarDbgrid;
    qryHagholForoushType: TIntegerField;
    qryHagholKeshvarCode: TIntegerField;
    qryHagholKotaj_No: TIntegerField;
    qryHagholKotaj_Date: TStringField;
    qryHagholLC_No: TStringField;
    qryHagholLC_Date: TStringField;
    qryHagholGomrok_Arzyabi: TIntegerField;
    qryHagholGomrok_khoruj: TIntegerField;
    qryHagholReciptID: TIntegerField;
    qryHagholYearID: TIntegerField;
    qryHagholServerID: TIntegerField;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
    qryHagholKalaType: TIntegerField;
    qryHagholPriceParvane: TFloatField;
    chkPriceParvane: TCheckBox;
    qryHagholDeficitValue: TBCDField;
    qryHagholRialsEqual: TBCDField;
    qryHagholArzName: TStringField;
    qryHagholStuffpublicPercentI: TFloatField;
    qryHagholSumTotalOutputPrice: TBCDField;
    chkSum: TCheckBox;
    qryHagholTotallCommissionTotalPrice: TFloatField;
    Memo1: TMemo;
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
    procedure qryHagholHCKharidarTypeCodeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryHagholHCTarafGaradadTypeCodeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure BitBtn15Click(Sender: TObject);
    procedure chkNotnationalIDClick(Sender: TObject);
    procedure frmTaxchkStuffShowClick(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure chkSumClick(Sender: TObject);
    procedure frmTaxcmbStuffShowChange(Sender: TObject);
  private
    DaryaftAz: Byte;
    // دریافت حق العمل/ کارمزد از :     1=فروشنده    2=خریدار    3=کارفرما(مدیریت پیمان)
    procedure updateFilter;
    procedure Saderat_Detail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptDarayiHagholAmalKariF: TrptDarayiHagholAmalKariF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, FormFunctions,
  ReciptsFunctions, mdiMain, MMESSAGE, main;

{$R *.dfm}

procedure TrptDarayiHagholAmalKariF.updateFilter;
var
  s: String;
begin
  with qryHaghol do
  begin
    Active := False;

    SQL.Text := 'SELECT * FROM';
    SQL.Add('Fn_HagholAmalKari( :Tax , :TaxTown , :Town , :TaxTown1 , :CustIdFrom , :CustIdTo , :StuffGrpFrom');
    SQL.Add(', :StuffGrpTo , :SeasonFrom , :SeasonTo , :DateFrom , :DateTo , :CustomerGrpIDFrom , :CustomerGrpIDTo');
    SQL.Add(', :SellsEmporiumFrom , :SellsEmporiumTo , :NotSellsEmporium , :YearIDFrom , :YearIDTo , :StoreID');
    SQL.Add(', :EconomicNumberNationalID , :StuffShow , :chkPriceParvane , :StuffKindActive , :ReciptsSecondType ');
    SQL.Add(', :INSellsEmporium , :SellsMethodFrom , :SellsMethodTo , :NotSellsMethod , :INSellsMethod)');
    SQL.Add('ORDER BY SellEffect,PersonID1,ReciptID');

    Parameters.ParamByName('StuffShow').Value := frmTax.StuffShow;

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

procedure TrptDarayiHagholAmalKariF.actFilterExecute(Sender: TObject);
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

procedure TrptDarayiHagholAmalKariF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Season') = nil then
    close;
end;

procedure TrptDarayiHagholAmalKariF.frmTaxchkStuffShowClick(Sender: TObject);
begin
  inherited;
  updateFilter
end;

procedure TrptDarayiHagholAmalKariF.frmTaxcmbStuffShowChange(Sender: TObject);
begin
  inherited;
  updateFilter

end;

procedure TrptDarayiHagholAmalKariF.frmTaxmskTaxChange(Sender: TObject);
begin
  inherited;
  frmTax.mskTaxChange(Sender);
  updateFilter
end;

procedure TrptDarayiHagholAmalKariF.Saderat_Detail;
var
  s: string;
begin
  try
    With qryHagholAmalKari_Detail do
    begin
      Active := False;
      Active := True;
      while not Eof do
        Delete;
      qryHaghol.DisableControls;
      qryHaghol.First;
      while not qryHaghol.Eof do
      begin
        Insert;
        if FindField('BargashtType') <> nil then
          FieldByName('BargashtType').AsBoolean :=
            qryHagholSellEffect.AsInteger = 2;


        // FieldByName('FactorNo').AsString := qryHagholReciptNumber.AsString;
        // FieldByName('FactorDate').AsString := qryHagholReciptDate.AsString;

        if (FindField('VajhType') <> nil) then
          FieldByName('VajhType').AsString := qryHagholVajhTypes.AsString;

        if (FindField('SarFaslType') <> nil) then
          FieldByName('SarFaslType').AsString := qryHagholSarFaslType.AsString;

        if (FindField('KalaType') <> nil) then
          FieldByName('KalaType').AsInteger := qryHagholKalaType.AsInteger;

        FieldByName('ForoushType').AsInteger := qryHagholForoushType.AsInteger;

        FieldByName('HCKharidarTypeCode').AsString :=
          qryHagholHCKharidarTypeCode.AsString;

        FieldByName('KharidarName').AsString := qryHagholCustFirstName.AsString;

        FieldByName('KharidarLastNameSherkatName').AsString :=
          qryHagholCustName.AsString;

        FieldByName('FaragirCode').AsString := qryHagholNationalID.AsString;

        FieldByName('KalaKhadamatName').AsString :=
          qryHagholc_StuffName.AsString;

        FieldByName('KalaCode').AsString := qryHagholGroupID.AsString;

        FieldByName('KeshvarCode').AsString := qryHagholKeshvarCode.AsString;

        FieldByName('Price').AsString :=
          IntToStr( { Abs } (qryHagholTotalOutputPrice.AsLargeInt));

        if FindField('TakhfifPrice') <> nil then
          FieldByName('TakhfifPrice').AsString :=
            IntToStr( { Abs } (qryHagholDeficitValue.AsLargeInt));

        if FindField('MaliatMaksoore') <> nil then
          FieldByName('MaliatMaksoore').AsString := '0';

        FieldByName('MaliatArzeshAfzoodeh').AsString :=
          IntToStr( { Abs } (qryHagholTaxValueOnTax.AsLargeInt));
        FieldByName('AvarezArzeshAfzoodeh').AsString :=
          IntToStrArzesh( { Abs } (qryHagholTaxValueOnTown.AsLargeInt));

        FieldByName('SayerAvarez').AsString := '0';
        // FieldByName('Arz_SayerAvarez').AsString := '';

        FieldByName('Kotaj_No').AsString := qryHagholKotaj_No.AsString;
        FieldByName('Kotaj_Date').AsString := qryHagholKotaj_Date.AsString;
        FieldByName('LC_No').AsString := qryHagholLC_No.AsString;
        FieldByName('LC_Date').AsString := qryHagholLC_Date.AsString;
        FieldByName('Gomrok_Arzyabi').AsString :=
          qryHagholGomrok_Arzyabi.AsString;
        FieldByName('Gomrok_khoruj').AsString :=
          qryHagholGomrok_khoruj.AsString;

        if qryHagholPriceParvane.AsFloat <> 0 then
          FieldByName('PriceParvane').AsString :=
            qryHagholPriceParvane.AsString;

        try
          Post;
          qryHaghol.Next;
        except
          on E: Exception do
          begin
            s := E.Message + #13#10 + qryHagholCustName.AsString + #13#10 +
              qryHagholPersonID1.AsString;
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
    qryHaghol.EnableControls;
  end;
end;

procedure TrptDarayiHagholAmalKariF.frmTaxsSpeedButton1Click(Sender: TObject);
var
  s: string;
  Sarjam: Boolean;
begin
  inherited;
  try
    frmTax.sSpeedButton1Click(Sender);
    BigMessage('لطفا صبر کنید....', 0);
    if qryHagholForoushType.AsInteger <> 0 then
    begin
      Saderat_Detail;
      Exit;
    end;

    frmTax.qryConfig.Open;

    With qryHagholAmalKari_Detail do
    begin
      Active := False;
      Active := True;
      while not Eof do
        Delete;
      qryHaghol.DisableControls;
      qryHaghol.First;
      while not qryHaghol.Eof do
      begin
        Insert;

        FieldByName('ReportType').AsInteger := 1;
        FieldByName('DaryaftAz').AsInteger := DaryaftAz;

        // FieldByName('BargashtType').AsBoolean :=
        // qryHagholSellEffect.AsInteger = 2;

        // FieldByName('Price').AsString :=
        // IntToStr(Abs(qryHagholTotallSellPrice.AsLargeInt));
        //
        // if FindField('TakhfifPrice') <> nil then
        // FieldByName('TakhfifPrice').AsString :=
        // IntToStr(Abs(qryHagholDeficitValue.AsLargeInt));
        //
        // if FieldByName('Price').AsLargeInt < 0 then
        // begin
        // if FindField('TakhfifPrice') <> nil then
        // FieldByName('TakhfifPrice').AsLargeInt :=
        // Abs(FieldByName('Price').AsLargeInt);
        // FieldByName('Price').AsInteger := 0;
        // end;

        Sarjam := False;
        // (Abs(qryHaghol.FieldByName('TotalOutputPrice').AsLargeInt)) <          frmTax.qryConfig.FieldByName('SmallDealsPrice').AsLargeInt;
        FieldByName('Sarjam').AsBoolean := False;

        case DaryaftAz of
          1:
            begin
              // FieldByName('S_Price').AsString :=
              // IntToStr(Abs(qryHagholTotallSellPrice.AsLargeInt));
              FieldByName('S_Tabeiat').AsInteger := 1;

              FieldByName('S_LastNameSherkatName').AsString :=
                IfThen(Sarjam, '', qryHagholCustName.AsString);
              FieldByName('s_Name').AsString :=
                IfThen(Sarjam, '', qryHagholCustFirstName.AsString);

              FieldByName('S_Tell').AsString :=
                IfThen(Sarjam, '', qryHagholMobile.AsString);

              FieldByName('S_Address').AsString :=
                IfThen(Sarjam, '', qryHagholAddress.AsString);
              FieldByName('S_EconomicNO').AsString :=
                IfThen(Sarjam, '', qryHagholEconomicNumber.AsString);
              FieldByName('S_NationalCode').AsString :=
                IfThen(Sarjam, '', qryHagholNationalID.AsString.Trim);

              FieldByName('S_Type1Code').AsString :=
                IfThen(Sarjam, '', qryHagholHCTarafGaradadTypeCode.AsString);

              FieldByName('S_TypeCode').AsString :=
                IfThen(Sarjam, '', qryHagholHCKharidarTypeCode.AsString);
              FieldByName('S_PostCode').AsString :=
                IfThen(Sarjam, '', qryHagholPostalCode.AsString);
              // StringReplace( qryHagholPostalCode.AsString,'-','',[]);
              FieldByName('S_TellPishCode').AsString :=
                IfThen(Sarjam, '', qryHagholPerCityCode.AsString);

              FieldByName('S_StateCode').AsString :=
                IfThen(Sarjam, '', qryHagholStateCode.AsString);
              FieldByName('S_CityCode').AsString :=
                IfThen(Sarjam, '', qryHagholCityCode.AsString);

            end;
          2:
            begin
              // FieldByName('K_Price').AsString :=
              // IntToStr(Abs(qryHagholTotallSellPrice.AsLargeInt));
              FieldByName('H_Price').AsString :=
                IntToStr(Abs(qryHagholTotallSellPrice.AsLargeInt));

              FieldByName('H_TakhfifPrice').AsInteger := 0;
              FieldByName('H_MaliatArzeshAfzoodeh').AsInteger := 0;
              FieldByName('H_AvarezArzeshAfzoodeh').AsInteger := 0;
              FieldByName('H_SayerAvarez').AsInteger := 0;

              FieldByName('K_Tabeiat').AsInteger := 1;

              FieldByName('K_LastNameSherkatName').AsString :=
                IfThen(Sarjam, '', qryHagholCustName.AsString);
              FieldByName('K_Name').AsString :=
                IfThen(Sarjam, '', qryHagholCustFirstName.AsString);

              FieldByName('K_Tell').AsString :=
                IfThen(Sarjam, '', qryHagholTel.AsString);

              FieldByName('K_Address').AsString :=
                IfThen(Sarjam, '', qryHagholAddress.AsString);
              FieldByName('K_EconomicNO').AsString :=
                IfThen(Sarjam, '', qryHagholEconomicNumber.AsString);
              FieldByName('K_NationalCode').AsString :=
                IfThen(Sarjam, '', qryHagholNationalID.AsString.Trim);

              FieldByName('K_Type1Code').AsString :=
                IfThen(Sarjam, '', qryHagholHCTarafGaradadTypeCode.AsString);

              FieldByName('K_TypeCode').AsString :=
                IfThen(Sarjam, '', qryHagholHCKharidarTypeCode.AsString);
              FieldByName('K_PostCode').AsString :=
                IfThen(Sarjam, '', qryHagholPostalCode.AsString);
              // StringReplace( qryHagholPostalCode.AsString,'-','',[]);
              FieldByName('K_TellPishCode').AsString :=
                IfThen(Sarjam, '', qryHagholPerCityCode.AsString);

              FieldByName('K_StateCode').AsString :=
                IfThen(Sarjam, '', qryHagholStateCode.AsString);
              FieldByName('K_CityCode').AsString :=
                IfThen(Sarjam, '', qryHagholCityCode.AsString);

            end;
          3:
            begin
              FieldByName('H_Price').AsString :=
                IntToStr(Abs(qryHagholTotallSellPrice.AsLargeInt));

              FieldByName('K_LastNameSherkatName').AsString :=
                IfThen(Sarjam, '', qryHagholCustName.AsString);
              FieldByName('K_Name').AsString :=
                IfThen(Sarjam, '', qryHagholCustFirstName.AsString);

              FieldByName('K_Tell').AsString :=
                IfThen(Sarjam, '', qryHagholMobile.AsString);

              FieldByName('K_Address').AsString :=
                IfThen(Sarjam, '', qryHagholAddress.AsString);
              FieldByName('K_EconomicNO').AsString :=
                IfThen(Sarjam, '', qryHagholEconomicNumber.AsString);
              FieldByName('K_NationalCode').AsString :=
                IfThen(Sarjam, '', qryHagholNationalID.AsString.Trim);

              FieldByName('K_Type1Code').AsString :=
                IfThen(Sarjam, '', qryHagholHCTarafGaradadTypeCode.AsString);

              FieldByName('K_TypeCode').AsString :=
                IfThen(Sarjam, '', qryHagholHCKharidarTypeCode.AsString);
              FieldByName('K_PostCode').AsString :=
                IfThen(Sarjam, '', qryHagholPostalCode.AsString);
              // StringReplace( qryHagholPostalCode.AsString,'-','',[]);
              FieldByName('K_TellPishCode').AsString :=
                IfThen(Sarjam, '', qryHagholPerCityCode.AsString);

              FieldByName('K_StateCode').AsString :=
                IfThen(Sarjam, '', qryHagholStateCode.AsString);
              FieldByName('K_CityCode').AsString :=
                IfThen(Sarjam, '', qryHagholCityCode.AsString);

            end;
        end;
        // FieldByName('H_MoadelRialiPrice').AsString :=
        // IntToStr(Abs(qryHagholTotallSellPrice.AsLargeInt));
        //
        // FieldByName('H_MoadelRialiTakhfifPrice').AsString :=
        // IntToStr(Abs(qryHagholDeficitValue.AsLargeInt));
        // FieldByName('H_MoadelRialiMaliatArzeshAfzoodeh').AsString :=
        // IntToStr( { Abs } (qryHagholTaxValueOnTax.AsLargeInt));
        // FieldByName('H_MoadelRialiAvarezArzeshAfzoodeh').AsString :=
        // IntToStr( { Abs } (qryHagholTaxValueOnTown.AsLargeInt));

        // FieldByName('H_MoadelRialiSayerAvarez').AsString := '0';
        //
        // // FieldByName('H_FactorNo').AsString :=
        // // IfThen(Sarjam, '', qryHagholReciptNumber.AsString);
        // // FieldByName('H_FactorDate').AsString :=
        // // IfThen(Sarjam, '', qryHagholReciptDate.AsString);
        //
        // // FieldByName('H_SanadNO').AsString :=0;
        // // FieldByName('H_SanadDate').AsString :=0;
        //
        // // if not Sarjam then
        // begin
        //
        // FieldByName('KalaCode').AsString :=
        // IfThen(Sarjam, '', qryHagholGroupID.AsString);
        //
        // FieldByName('FactorNo').AsString :=
        // IfThen(Sarjam, '', qryHagholReciptNumber.AsString);
        // FieldByName('FactorDate').AsString :=
        // IfThen(Sarjam, '', qryHagholReciptDate.AsString);
        //
        // if (FindField('VajhType') <> nil) then
        // FieldByName('VajhType').AsString :=
        // IfThen(Sarjam, '', qryHagholVajhTypes.AsString);
        //
        // if (FindField('SarFaslType') <> nil) then
        // FieldByName('SarFaslType').AsString :=
        // IfThen(Sarjam, '', qryHagholSarFaslType.AsString);
        //
        // if (FindField('KalaType') <> nil) then
        // FieldByName('KalaType').AsString :=
        // IfThen(Sarjam, '', qryHagholKalaType.AsString);
        //
        // end;
        //
        // if FieldByName('BargashtType').AsBoolean then
        // begin
        // FieldByName('MaliatArzeshAfzoodeh').AsString :=
        // IntToStr(Abs(qryHagholTaxValueOnTax.AsLargeInt));
        // FieldByName('AvarezArzeshAfzoodeh').AsString :=
        // IntToStr(Abs(qryHagholTaxValueOnTown.AsLargeInt));
        //
        // end
        // else
        // begin
        // FieldByName('MaliatArzeshAfzoodeh').AsString :=
        // IntToStr( { Abs } (qryHagholTaxValueOnTax.AsLargeInt));
        // FieldByName('AvarezArzeshAfzoodeh').AsString :=
        // IntToStr( { Abs } (qryHagholTaxValueOnTown.AsLargeInt));
        //
        // end;
        //
        // if (FindField('SayerAvarez') <> nil) then
        // FieldByName('SayerAvarez').AsString := '0';


        // FieldByName('KharidarHozeh').AsString := ;

        // FieldByName('IsSent').AsString := ;
        // FieldByName('TempKey').AsString :=;
        try
          Post;
          qryHaghol.Next;
        except
          on E: Exception do
          begin
            s := E.Message + #13#10 + qryHagholCustName.AsString + #13#10 +
              qryHagholPersonID1.AsString;
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
    qryHaghol.EnableControls;
  end;

end;

procedure TrptDarayiHagholAmalKariF.actPrintExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Print(qryHaghol, ppReport1, 'rptDarayiHagholAmalKari');
end;

procedure TrptDarayiHagholAmalKariF.actSendToExleExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptDarayiHagholAmalKariF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryHaghol, mainF)
end;

procedure TrptDarayiHagholAmalKariF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptDarayiHagholAmalKariF.ppLblLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text:='از تاريخ'+qryHaghol.Parameters.ParamByName('DateFrom').Value+' تا '+qryHaghol.Parameters.ParamByName('DateTo').Value ;
end;

procedure TrptDarayiHagholAmalKariF.ppLabel32GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiHagholAmalKariF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiHagholAmalKariF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryHaghol);
end;

procedure TrptDarayiHagholAmalKariF.BitBtn15Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    mdiMainF.actCustomersTaxF.Execute;
  finally
    i := qryHaghol.FieldByName('PersonID1').AsInteger;
    qryHaghol.Requery();
    qryHaghol.Locate('PersonID1', i, []);
  end;

end;

procedure TrptDarayiHagholAmalKariF.chkNotnationalIDClick(Sender: TObject);
begin
  inherited;
  updateFilter;
end;

procedure TrptDarayiHagholAmalKariF.chkSumClick(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

procedure TrptDarayiHagholAmalKariF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryHaghol);
end;

procedure TrptDarayiHagholAmalKariF.ppLblEconomicNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('EconomicNumber')
end;

procedure TrptDarayiHagholAmalKariF.ppLblRegisterNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('RegisterNumber')
end;

procedure TrptDarayiHagholAmalKariF.ppLblTelGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('tel1')

end;

procedure TrptDarayiHagholAmalKariF.ppLblAddressGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('Address')
end;

procedure TrptDarayiHagholAmalKariF.ppLblActivityKindGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := DMf.ReadBankConfig('ActivityKind')
end;

procedure TrptDarayiHagholAmalKariF.ppLblYearGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Format(' سال  13%.2d', [APPBank.Year])
end;

procedure TrptDarayiHagholAmalKariF.pdbtxtnum2alphabetGetText(Sender: TObject;
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

procedure TrptDarayiHagholAmalKariF.plblBackGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if qryHagholTotalOutputPrice.AsCurrency < 0 then
    Text := 'X'
  else
    Text := '  ';
end;

procedure TrptDarayiHagholAmalKariF.plblPostalCodeGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := DMf.ReadBankConfig('PostalCode')
end;

procedure TrptDarayiHagholAmalKariF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if StrToInt(GetcTo(myParams.ParamValues['Season'], ftDate)) <>
    (Sender as TppLabel).Tag then
    Text := ' ';
end;

procedure TrptDarayiHagholAmalKariF.FormCreate(Sender: TObject);
begin
  inherited;
  DaryaftAz := var_glb_gParam;
  case DaryaftAz of
    1:
      Caption := Caption + ' صاحب کالا(فروشنده)';
    2:
      Caption := Caption + ' خریدار';
    3:
      Caption := Caption + ' کارفرما(مدیریت پیمان)';
  end;

  DarayiCaptions('SellEffect', Memo1);
end;

procedure TrptDarayiHagholAmalKariF.qryHagholHCKharidarTypeCodeGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetHCKharidarTypeCode(Sender.AsInteger)
end;

procedure TrptDarayiHagholAmalKariF.qryHagholHCTarafGaradadTypeCodeGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetHCTarafGaradadTypeCode(Sender.AsInteger)
end;

end.
