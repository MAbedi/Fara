unit rptDarayiEjare;

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
  TrptDarayiEjareF = class(Ttemplate2MDIF)
    srcEjare: TDataSource;
    qryEjare: TADOQuery;
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
    frmTax: TfrmTax;
    qryEjare_Detail: TADOQuery;
    btnEmployerId: TBitBtn;
    frmTaxTxt1: TfrmTaxTxt;
    DBGrid1: TCedarDbgrid;
    actShowForm: TAction;
    BitBtn4: TBitBtn;
    qryEjareRadif: TIntegerField;
    qryEjareTarafeGharardadType: TWordField;
    qryEjareTedadShoraka: TStringField;
    qryEjareGharardadNumber: TStringField;
    qryEjareGharardadDate: TStringField;
    qryEjareGharardadTypeCode: TWordField;
    qryEjareEjariType: TWordField;
    qryEjareTozih: TStringField;
    qryEjareVasile: TWordField;
    qryEjareKarbariType: TWordField;
    qryEjareMelk_StateCode: TIntegerField;
    qryEjareMelk_CityCode: TIntegerField;
    qryEjareMelk_Address: TStringField;
    qryEjareMelk_PostCode: TStringField;
    qryEjareMelk_TellPishCode: TStringField;
    qryEjareMelk_Tell: TStringField;
    qryEjarePelakSabtiAsli: TStringField;
    qryEjarePelakSabtiFari: TStringField;
    qryEjareBakhshSabti: TWideStringField;
    qryEjareShenaseMelk: TStringField;
    qryEjareMozuType: TWordField;
    qryEjareNaKhales: TBCDField;
    qryEjareT_TypeCode: TWordField;
    qryEjareT_Tabeiat: TWordField;
    qryEjareT_Name: TStringField;
    qryEjareT_LastNameSherkatName: TStringField;
    qryEjareT_EconomicNO: TStringField;
    qryEjareT_NationalCode: TStringField;
    qryEjareT_TellPishCode: TStringField;
    qryEjareT_Tell: TStringField;
    qryEjareT_StateCode: TIntegerField;
    qryEjareT_CityCode: TIntegerField;
    qryEjareT_Address: TStringField;
    qryEjareT_PostCode: TStringField;
    qryEjareCaseNo: TIntegerField;
    qryEjareEmployerId: TIntegerField;
    qryEjareWorkShopId: TIntegerField;
    btnWorkShopId: TBitBtn;
    btnEjareF: TBitBtn;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExleExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel32GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure frmTaxsSpeedButton1Click(Sender: TObject);
    procedure frmTaxmskTaxChange(Sender: TObject);
    procedure btnEmployerIdClick(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure btnWorkShopIdClick(Sender: TObject);
    procedure btnEjareFClick(Sender: TObject);
  private
    procedure updateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptDarayiEjareF: TrptDarayiEjareF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, FormFunctions,
  ReciptsFunctions, mdiMain, MMESSAGE, main, CustomersTax,Ejare;

{$R *.dfm}

procedure TrptDarayiEjareF.updateFilter;
var
  s: String;
begin
  with qryEjare do
  begin
    Active := False;

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

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

    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    Parameters.ParamByName('ContractsStatus').Value := '0,1,2,3,4,5';

    Active := True;

  end;
end;

procedure TrptDarayiEjareF.actFilterExecute(Sender: TObject);
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

      AddItemFilter(GetFilter, TFilterSellsEmporium);

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

procedure TrptDarayiEjareF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Season') = nil then
    close;
end;

procedure TrptDarayiEjareF.frmTaxmskTaxChange(Sender: TObject);
begin
  inherited;
  frmTax.mskTaxChange(Sender);
  updateFilter
end;

procedure TrptDarayiEjareF.frmTaxsSpeedButton1Click(Sender: TObject);
var
  s: string;
begin
  inherited;
  try
    frmTax.sSpeedButton1Click(Sender);
    BigMessage('لطفا صبر کنید....', 0);

    With qryEjare_Detail do
    begin
      Active := False;
      Active := True;
      while not Eof do
        Delete;
      qryEjare.DisableControls;
      qryEjare.First;
      while not qryEjare.Eof do
      begin
        Insert;

        frmTax.qryConfig.Open;

        // FieldByName('Radif').AsString := qryEjare.FieldByName('Radif').AsString;
        FieldByName('TarafeGharardadType').AsString :=
          qryEjare.FieldByName('TarafeGharardadType').AsString;
        FieldByName('TedadShoraka').AsString :=
          qryEjare.FieldByName('TedadShoraka').AsString;
        FieldByName('GharardadNumber').AsString :=
          qryEjare.FieldByName('GharardadNumber').AsString;
        FieldByName('GharardadDate').AsString :=
          qryEjare.FieldByName('GharardadDate').AsString;
        FieldByName('GharardadTypeCode').AsString :=
          qryEjare.FieldByName('GharardadTypeCode').AsString;
        FieldByName('EjariType').AsString :=
          qryEjare.FieldByName('EjariType').AsString;
        FieldByName('Tozih').AsString := qryEjare.FieldByName('Tozih').AsString;
        FieldByName('Vasile').AsString :=
          qryEjare.FieldByName('Vasile').AsString;
        FieldByName('KarbariType').AsString :=
          qryEjare.FieldByName('KarbariType').AsString;
        FieldByName('Melk_StateCode').AsString :=
          qryEjare.FieldByName('Melk_StateCode').AsString;
        FieldByName('Melk_CityCode').AsString :=
          qryEjare.FieldByName('Melk_CityCode').AsString;
        FieldByName('Melk_Address').AsString :=
          qryEjare.FieldByName('Melk_Address').AsString;
        FieldByName('Melk_PostCode').AsString :=
          qryEjare.FieldByName('Melk_PostCode').AsString;
        FieldByName('Melk_TellPishCode').AsString :=
          qryEjare.FieldByName('Melk_TellPishCode').AsString;
        FieldByName('Melk_Tell').AsString :=
          qryEjare.FieldByName('Melk_Tell').AsString;
        FieldByName('PelakSabtiAsli').AsString :=
          qryEjare.FieldByName('PelakSabtiAsli').AsString;
        FieldByName('PelakSabtiFari').AsString :=
          qryEjare.FieldByName('PelakSabtiFari').AsString;
        FieldByName('BakhshSabti').AsString :=
          qryEjare.FieldByName('BakhshSabti').AsString;
        FieldByName('ShenaseMelk').AsString :=
          qryEjare.FieldByName('ShenaseMelk').AsString;
        FieldByName('MozuType').AsString :=
          qryEjare.FieldByName('MozuType').AsString;
        FieldByName('NaKhales').AsString :=
          qryEjare.FieldByName('NaKhales').AsString;
        FieldByName('T_TypeCode').AsString :=
          qryEjare.FieldByName('T_TypeCode').AsString;
        FieldByName('T_Tabeiat').AsString :=
          qryEjare.FieldByName('T_Tabeiat').AsString;
        FieldByName('T_Name').AsString :=
          qryEjare.FieldByName('T_Name').AsString;
        FieldByName('T_LastNameSherkatName').AsString :=
          qryEjare.FieldByName('T_LastNameSherkatName').AsString;
        FieldByName('T_EconomicNO').AsString :=
          qryEjare.FieldByName('T_EconomicNO').AsString;
        FieldByName('T_NationalCode').AsString :=
          qryEjare.FieldByName('T_NationalCode').AsString;
        FieldByName('T_TellPishCode').AsString :=
          qryEjare.FieldByName('T_TellPishCode').AsString;
        FieldByName('T_Tell').AsString :=
          qryEjare.FieldByName('T_Tell').AsString;
        FieldByName('T_StateCode').AsString :=
          qryEjare.FieldByName('T_StateCode').AsString;
        FieldByName('T_CityCode').AsString :=
          qryEjare.FieldByName('T_CityCode').AsString;
        FieldByName('T_Address').AsString :=
          qryEjare.FieldByName('T_Address').AsString;
        FieldByName('T_PostCode').AsString :=
          qryEjare.FieldByName('T_PostCode').AsString;
        try
          Post;
          qryEjare.Next;
        except
          on E: Exception do
          begin
            s := E.Message + #13#10 + qryEjareT_LastNameSherkatName.AsString +
              #13#10 + qryEjareGharardadNumber.AsString;
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
    qryEjare.EnableControls;
  end;

end;

procedure TrptDarayiEjareF.actPrintExecute(Sender: TObject);
begin
  inherited;
  AddPopupMenu4Print(qryEjare, ppReport1, 'rptDarayiEjare');
end;

procedure TrptDarayiEjareF.actSendToExleExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptDarayiEjareF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryEjare, mainF)
end;

procedure TrptDarayiEjareF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptDarayiEjareF.ppLabel32GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiEjareF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptDarayiEjareF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEjare);
end;

procedure TrptDarayiEjareF.btnEmployerIdClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    CreateChildForm(TCustomersTaxF, CustomersTaxF, mainF,
      qryEjareEmployerId.AsInteger, alNone);
  finally
    i := qryEjareCaseNo.AsInteger;
    qryEjare.Requery();
    qryEjare.Locate('CaseNo', i, []);
  end;

end;

procedure TrptDarayiEjareF.btnWorkShopIdClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    CreateChildForm(TCustomersTaxF, CustomersTaxF, mainF,
      qryEjareWorkShopId.AsInteger, alNone);
  finally
    i := qryEjareCaseNo.AsInteger;
    qryEjare.Requery();
    qryEjare.Locate('CaseNo', i, []);
  end;
end;

procedure TrptDarayiEjareF.btnEjareFClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    CreateChildForm(TEjareF, EjareF, mainF, qryEjareCaseNo.AsInteger, alNone);
  finally
    i := qryEjareCaseNo.AsInteger;
    qryEjare.Requery();
    qryEjare.Locate('CaseNo', i, []);
  end;

end;

procedure TrptDarayiEjareF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEjare);
end;

procedure TrptDarayiEjareF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if StrToInt(GetcTo(myParams.ParamValues['Season'], ftDate)) <>
    (Sender as TppLabel).Tag then
    Text := ' ';
end;

procedure TrptDarayiEjareF.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

end.

