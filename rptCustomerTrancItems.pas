{ -----------------------------------------------------------------------------
  Unit Name: rptCustomerTrancItems
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptCustomerTrancItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch,
  ppMemo, ppModule, ppTypes, ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls,
  SumDBGrid, DateUtils, ppParameter, Math, ppDesignLayer, System.ImageList,
  System.Actions, FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TrptCustomerTrancItemsF = class(Ttemplate2MDIF)
    SrcCustomers: TDataSource;
    qryCustomers: TADOQuery;
    qryCustItem: TADOQuery;
    SrcCustItem: TDataSource;
    PopMenu: TPopupMenu;
    DetailNote: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    LblPerson1: TLabel;
    EdtPersonID1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBTextPersonID1: TDBText;
    DBNavigator1: TDBNavigator;
    qryCustItemPersonID1: TIntegerField;
    qryCustItemReciptID: TIntegerField;
    qryCustItemReciptNumber: TIntegerField;
    qryCustItemReciptDate: TStringField;
    qryCustItemReciptType: TIntegerField;
    qryCustItemReciptCaption: TStringField;
    qryCustItemCheckDate: TStringField;
    qryCustItemc_StuffName: TStringField;
    qryCustItemUnitName: TStringField;
    qryCustItementity: TFloatField;
    qryCustItemweight: TFloatField;
    qryCustItembed: TBCDField;
    qryCustItembes: TBCDField;
    qryCustItemkind: TIntegerField;
    qryCustItemStoreID: TIntegerField;
    qryCustItembalance: TBCDField;
    qryCustItemcalcuBalance: TBCDField;
    actFilter: TAction;
    actSendExel: TAction;
    actShowForm: TAction;
    ppReport1: TppReport;
    actPrint: TAction;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    actSort: TAction;
    qryCustItemItemNote: TStringField;
    qryCustItemStuffDiameter: TFloatField;
    qryCustItemStuffSize: TStringField;
    qryCustItemUnitSellPrice: TFMTBCDField;
    Button1: TButton;
    AllC_l_i_c_k_: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLblCustomerID1: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNumber: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLblDate: TppLabel;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLblCustname1: TppLabel;
    ppLblCustname2: TppLabel;
    ppLabel32: TppLabel;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine18: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppDBText6: TppDBText;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText9: TppDBText;
    ppLine10: TppLine;
    ppDBText4: TppDBText;
    ppDBText20: TppDBText;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppDBText23: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText19: TppDBText;
    ppLine33: TppLine;
    ppDBText7: TppDBText;
    ppLine24: TppLine;
    ppDBText3: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppLine13: TppLine;
    ppDBCalc13: TppDBCalc;
    ppLine14: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppLine30: TppLine;
    ppDBCalc16: TppDBCalc;
    ppLine32: TppLine;
    ppDBCalc17: TppDBCalc;
    ppLabel11: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    qryCustItemBankName: TStringField;
    qryCustItemCustName: TStringField;
    qryCustItemPersonID2: TIntegerField;
    qryCustItemSellsMethodName: TWideStringField;
    qryCustItemServerID: TIntegerField;
    qryCustItemYearID: TIntegerField;
    qryCustItemControlCode: TLargeintField;
    qryCustItemCheckNo: TStringField;
    TabControl1: TTabControl;
    qryCustomersAddress: TStringField;
    qryCustomersTel: TStringField;
    qryCustomersFax: TStringField;
    qryCustomersEconomicNumber: TStringField;
    qryCustomersPostalCode: TStringField;
    qryCustomersTel2: TWideStringField;
    qryCustomersTel3: TWideStringField;
    qryCustItemStuffCode: TLargeintField;
    qryCustItemWaterCo: TFloatField;
    qryCustItemDeficitValue: TBCDField;
    qryinit: TADOQuery;
    qryCustItemPersonID3: TIntegerField;
    qryCustItemCustName3: TStringField;
    qryCustItemCustName2: TStringField;
    qryCustItemTotalPrice: TBCDField;
    qryCustItemTaxValue: TBCDField;
    qryCustItemc_StuffTecInfo: TStringField;
    plblStatusBar: TppLabel;
    ppLabel12: TppLabel;
    chkAll: TCheckBox;
    qryCustItemName: TStringField;
    actCustomers2F: TAction;
    pnl1: TPanel;
    stat1: TStatusBar;
    chk1: TCheckBox;
    qryCustItemDefaultDate: TStringField;
    qryCustItemDefaultDuration: TIntegerField;
    grd1: TCedarDbgrid;
    ppDBPipelineSumGrid1: TppDBPipeline;
    qryCustItemArzbed: TFloatField;
    qryCustItemArzbes: TFloatField;
    qryCustItemArzbalance: TFloatField;
    qryCustItemcalcuArzBalance: TFMTBCDField;
    qryCustomersAccountKind: TIntegerField;
    qryCustomersCurrenciesName: TStringField;
    qryCustItemArzRate: TFloatField;
    qryCustItemCurrenciesName: TStringField;
    qryCustItemStuffAlloy: TStringField;
    N1: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    qryCustItemRialsEqual: TBCDField;
    qryCustItemCurrencyDiscounts: TFMTBCDField;
    qryCustItemMachineNo: TStringField;
    qryCustItemAidDateD: TStringField;
    qryCustItemAidNumberD: TStringField;
    qryCustomersMobile: TStringField;
    LblLimit: TLabel;
    qryCustItemCustNameD: TStringField;
    qryCustItemPersonID1D: TIntegerField;
    qryCustItemAccountNumber: TStringField;
    qryCustItemReciptNote: TStringField;
    qryCustItemAidDate: TStringField;
    qryCustItemBudgetCode: TIntegerField;
    qryCustItemProjectID: TIntegerField;
    qryCustItemCuctomerName2: TStringField;
    qryCustItemDetailCustID: TIntegerField;
    qryCustItemCode: TIntegerField;
    qryCustItemSellsMethod: TIntegerField;
    qryCustItemRelatedID: TIntegerField;
    qryCustItemRelatedKind: TIntegerField;
    qryCustItemdoctype: TIntegerField;
    qryCustItemAnalizeType: TIntegerField;
    qryCustItemRelaID: TIntegerField;
    qryCustItemReciptItemID: TIntegerField;
    qryCustItemArzTypeID: TIntegerField;
    qryCustItemUnitCommission: TFMTBCDField;
    qryCustItemTotallCommission: TFloatField;
    qryCustItemSellsEmporiumName: TWideStringField;
    N12: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N13: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qryCustItemReciptCaption_L2: TStringField;
    qryCustItemc_StuffName_L2: TStringField;
    qryCustItemUnitName_l2: TStringField;
    qryCustItemSellsEmporium: TIntegerField;
    qryCustItemReciptDateM: TDateTimeField;
    qryCustItemCurrencySymbol: TStringField;
    qryCustomersCustName_L2: TStringField;
    qryCustItemAidNo: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure qryCustItemAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure grd1DblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdtPersonID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure logoPrint(Sender: TObject);
    procedure ppDBTxt_StuffName_ReciptCaptionGetText(Sender: TObject;
      var Text: String);
    procedure actshowChartExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure grd1KeyPress(Sender: TObject; var Key: Char);
    procedure TabControl1Change(Sender: TObject);
    procedure plblStatusBarGetText(Sender: TObject; var Text: string);
    procedure chkAllClick(Sender: TObject);
    procedure actCustomers2FExecute(Sender: TObject);
    procedure chk1Click(Sender: TObject);
  private
    { Private declarations }
    form_Type: Integer;
    GroupType: String;
    qryCustomersSQLText, qryCustItemSQLText: String;
    ADDDateToFilter: Boolean;
    procedure UpdateFilter;
    procedure Updateremain;
    procedure FilterFormShow;
    function GetGroupType: string;
  public
    { Public declarations }
  end;

var
  rptCustomerTrancItemsF: TrptCustomerTrancItemsF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, searchCode_ADO, search2, sort2,
  TreeChart, FormFunctions, shamsiDate, FaraConsts,
  Filter_ADO_Const, Customers2;

{$R *.dfm}

procedure TrptCustomerTrancItemsF.UpdateFilter;
var
  DateFromRemain: String;
begin
  if myParams.FindParam('PersonID1') = nil then
    Exit;

  setColumns2(grd1, chkAll.Checked, 'PersonID1');
  setColumns2(grd1, chkAll.Checked, 'CustName');

  with qryCustItem do
  begin
    Active := False;

    SQL.Text := qryCustItemSQLText;

    if ADDDateToFilter then
    begin
      SQL.Add('WHERE (dbo.ShamsiToMiladi(ReciptDate) BetWeen CONVERT(DATETIME, :ReciptDateMFrom, 103)    AND    CONVERT(DATETIME, :ReciptDateMTo, 103) )');
      Parameters.ParamByName('ReciptDateMFrom').Value :=
        GetcFrom(myParams.ParamValues['ReciptDateM'], ftDateTime);
      Parameters.ParamByName('ReciptDateMTo').Value :=
        GetcTo(myParams.ParamValues['ReciptDateM'], ftDateTime);
    end;

    if opt.DefaultDateActive then
    begin
      if GetcTo(myParams.ParamValues['ORDERBYFormDate'], ftDate) = 2 then
        SQL.Add('ORDER BY DefaultDate, ReciptItemID')
      else
        SQL.Add('ORDER BY ReciptDate, ReciptItemID');
    end
    else
      SQL.Add('ORDER BY ReciptDate, ReciptItemID');

    Parameters.ParamByName('PersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonIDTo').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('YearIDFrom').Value :=
      GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    Parameters.ParamByName('YearIDTo').Value :=
      GetcTo(myParams.ParamValues['YearID'], ftInteger);

    DateFromRemain := GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    Parameters.ParamByName('DateFromRemain').Value := DateFromRemain;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);

    if opt.ArzActiveAll then
    begin
      Parameters.ParamByName('ArzTypeIDFrom').Value :=
        GetcFrom(myParams.ParamValues['ArzTypeID'], ftInteger);
      Parameters.ParamByName('ArzTypeIDTo').Value :=
        GetcTo(myParams.ParamValues['ArzTypeID'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('ArzTypeIDFrom').Value := 0;
      Parameters.ParamByName('ArzTypeIDTo').Value := 999;
    end;

    Parameters.ParamByName('PersonID3From').Value :=
      GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
    Parameters.ParamByName('PersonID3To').Value :=
      GetcTo(myParams.ParamValues['PersonID3'], ftInteger);

    Active := chkAll.Checked;

  end; // with
  with qryCustomers do
  begin
    Active := False;
    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Active := not chkAll.Checked;
  end; // with
  with qryCustItem.Parameters do
  begin
    LblLimit.Caption := 'از تاريخ ' + ParamByName('DateFrom').Value + ' تا ' +
      ParamByName('DateTo').Value;
  end; // with
end;

procedure TrptCustomerTrancItemsF.actCustomers2FExecute(Sender: TObject);
begin
  inherited;
  Customers2F.Enter(qryCustomersCustID.AsInteger)
end;

procedure TrptCustomerTrancItemsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      if opt.ArzActiveAll then
        AddItemFilter(GetFilter, TFilterArz);

      AddItemFilter(GetFilter, TFilterPersonID3);
      AddItemFilter(GetFilter, TFilterPersonID1Limit, False, LblPerson1.Caption,
        'WHERE GroupType in(' + GroupType + ') ))');

      if ADDDateToFilter then
        AddItem(dmF.adcBSell, 'ReciptDateM', ' تاريخ میلادی ', 'سال/ماه/روز',
          ftDateTime, dvDefaults, DateToStr(Shamsi2Miladi(opt._StartMaliYear)),
          DateToStr(Shamsi2Miladi(opt._finishMaliYear)), ciSimple, '', '');

      // AddItem(dmF.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate,
      // dvDefaults, opt._StartMaliYear, opt._finishMaliYear, ciSimple, '', '');
      // dvDefaults, APPBank.StartYear, APPBank.endYear, ciSimple, '', '');
      // شرکت شبستری دوست نداشت تاریخ ثابت بمونه

      AddItem(dmF.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear + ''',''' +
        APPBank.endYear + '''');

      if opt.DefaultDateActive then
        AddItem(dmF.adcBSell, 'ORDERBYFormDate', 'ترتيب تاريخ', 'تاريخ',
          ftInteger, dvDefaults, '1', '1', ciCombo,
          'SELECT  1, ''تاريخ فرم''   FROM Config union all ' +
          'SELECT  2, ''تاريخ جانبي'' FROM Config  ', '');

      AddItemFilter(GetFilter, TFilterYearID);

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

procedure TrptCustomerTrancItemsF.FilterFormShow;
begin
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('PersonID1') = nil then
    close;
end;

procedure TrptCustomerTrancItemsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1);
end;

procedure TrptCustomerTrancItemsF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SetArzIni(grd1);
  with qryCustItem do
  begin
    Active := False;
    Parameters.ParamByName('PersonIDFrom').Value :=
      qryCustomers.FieldByName('CustID').AsInteger;
    Parameters.ParamByName('PersonIDTo').Value :=
      qryCustomers.FieldByName('CustID').AsInteger;
    Active := true;
  end; // with
end;

procedure TrptCustomerTrancItemsF.Updateremain;
var
  c: Currency;
  arz: Real48;
begin
  with qryCustItem do
  begin
    DisableControls;
    c := 0;
    arz := 0;
    while not eof do
    begin
      c := c + FieldByName('Balance').AsCurrency;
      arz := arz + FieldByName('Arzbalance').AsFloat;
      edit;
      FieldByName('calcuBalance').AsCurrency := c;
      FieldByName('calcuArzBalance').AsCurrency := arz;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TrptCustomerTrancItemsF.qryCustItemAfterOpen(DataSet: TDataSet);
var
  c, bed, bes: Currency;
  cmFooter: TColumnFooterEh;
begin
  inherited;
  Updateremain;
  stat1.Panels[5].Text := 'تعدادفرم=' + IntToStr(qryCustItem.RecordCount);
  if opt.EntityDisplay then
    stat1.Panels[4].Text := 'مقدار=' +
      CurrToStr(CalcSumFileds(qryCustItem, 'entity'));
  if opt.WeightDisplay then
    stat1.Panels[3].Text := 'وزن=' +
      CurrToStr(CalcSumFileds(qryCustItem, 'weight'));
  // if PriceOnStoreType(qryCustItem.fieldbyname('StoreID').AsInteger,DBGrid1) then begin
  if UserQualitative then
  begin
    bed := CalcSumFileds(qryCustItem, 'bed');
    stat1.Panels[2].Text := 'بدهكار=' + CurrToStrF(bed, ffCurrency, 0);

    bes := CalcSumFileds(qryCustItem, 'bes');
    stat1.Panels[1].Text := 'بستانكار=' + CurrToStrF(bes, ffCurrency, 0);
    c := bed - bes;

    stat1.Panels[0].Text := 'مانده=' + CurrToStrF(c, ffCurrency, 0);

    cmFooter := grd1.Columns[ColumnIndexByFieldName(grd1,
      'calcuBalance')].Footer;
    cmFooter.ValueType := fvtStaticText;
    cmFooter.Value := CurrToStrF(c, ffCurrency, 0);

  end;
  // end;

  // StatusBar2Print (StatusBar1,Self)
end;

function TrptCustomerTrancItemsF.GetGroupType: string;
begin
  case form_Type of

    4:
      Result := '4,10';

  else
    Result := form_Type.ToString;
  end;
end;

procedure TrptCustomerTrancItemsF.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  ADDDateToFilter := (opt.ConfigSettings and Integer(CHkADDDateToFilter)) <> 0;
  setColumns2(grd1, ADDDateToFilter, 'PersonID1');

  with qryCustomers do
  begin
    SQL.Text :=
      'SELECT CustID, CustName,CustName_L2 , Address, Tel, Fax, EconomicNumber,';
    SQL.Add('PostalCode,Tel2, Tel3, AccountKind, Currencies.CurrenciesName,Mobile');
    SQL.Add('FROM Vu_CustomersGroups  INNER JOIN Currencies ON Vu_CustomersGroups.AccountKind = Currencies.CurrenciesID');
    SQL.Add('WHERE (GroupType IN ( :GroupType ))');
    SQL.Add('AND (CustID BETWEEN :PersonID1From AND :PersonID1To)');
    SQL.Add('AND (CustID <> 0)');
    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('AND (dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , CustID ) = 1)');
      Parameters.ParamByName('UserID').Value := User.ID;
      Parameters.ParamByName('UserAdmin').Value := IfThen(User.PowerUser, 1, 0);
    end;
  end;
  qryCustomersSQLText := qryCustomers.SQL.Text;
  qryCustItemSQLText := qryCustItem.SQL.Text;

  form_Type := var_glb_gParam;
  GroupType := GetGroupType;
  case form_Type of
    0, 3, 4, 6:
      begin

      end
  else
    begin
      GetCustomerTrancKinds(TabControl1);
      if TabControl1.Tabs.Count > 1 then
        if TabControl1.Tabs[1] = CustGroupsNames[1] then
          TabControl1.Tabs.Delete(1);
      if TabControl1.Tabs.Count > 1 then
        if TabControl1.Tabs[1] = CustGroupsNames[2] then
          TabControl1.Tabs.Delete(1);

      TabControl1Change(TabControl1);
    end;
  end;

  // TabControl1.Tabs.Clear;

  if form_Type < 1000 then
  begin
    Caption := Caption + CustGroupsNames[form_Type];
    LblPerson1.Caption := CustGroupsNames[form_Type];
  end;
  Entity_Weight(grd1);

  With qryinit do
  begin
    Open;
    b := FieldByName('DiscountActive').AsInteger >= 1;
    setColumns2(grd1, b, 'WaterCo');
    setColumns2(grd1, b, 'DeficitValue');
    b := FieldByName('VATActive').AsInteger = 1;
    setColumns2(grd1, b, 'TaxValue');

    b := b or (FieldByName('DiscountActive').AsInteger = 1);
    setColumns2(grd1, b, 'TotalPrice');

    qryCustItemMachineNo.DisplayLabel :=
      qryinit.FieldByName('MachineNoCaption').AsString;

    qryCustItemAidNumberD.DisplayLabel :=
      FieldByName('AidInfoCaptionNo').AsString;

    qryCustItemAidDateD.DisplayLabel :=
      qryinit.FieldByName('AidInfoCaption').AsString;

    close;
  end;

  With dmF.qryTmpTmp do
  begin

    Active := False;
    SQL.Text := 'SELECT Person3Caption FROM ReciptTypes';
    SQL.Add('WHERE (Person3Active = 1)AND( (BesType = 1) OR (BedType = 1))');
    Active := true;
    qryCustItemPersonID3.DisplayLabel := 'كد ' + Fields[0].AsString;
    qryCustItemCustName3.DisplayLabel := Fields[0].AsString;
    b := Trim(Fields[0].AsString) <> EmptyStr;
    Active := False;
    setColumns2(grd1, b, 'PersonID3');
    setColumns2(grd1, b, 'CustName3');

    Active := False;
    SQL.Text := 'SELECT Person2Caption FROM ReciptTypes';
    SQL.Add('WHERE (Person2Active = 1)AND( (BesType = 1) OR (BedType = 1))');
    Active := true;
    qryCustItemPersonID2.DisplayLabel := 'كد ' + Fields[0].AsString;
    qryCustItemCustName2.DisplayLabel := Fields[0].AsString;
    b := Trim(Fields[0].AsString) <> EmptyStr;
    Active := False;
    setColumns2(grd1, b, 'PersonID2');
    setColumns2(grd1, b, 'CustName2');

  end;
  setColumns2(grd1, opt.StuffTecInfoActive, 'c_StuffTecInfo');

  if var_glb_gParam < 1000 then
  begin
    qryCustomers.SQL.Text := StringReplace(qryCustomersSQLText, ':GroupType',
      GroupType, [rfReplaceAll]);
    FilterFormShow
  end
  else
    UpdateFilter;

  grd1.SetFooter4Sum(['calcuBalance', 'calcuArzBalance']);
  ppDBPipelineSumGrid1.DataSource := grd1.srcSum;

end;

procedure TrptCustomerTrancItemsF.TabControl1Change(Sender: TObject);
begin
  inherited;
  if TabControl1.Tabs[TabControl1.TabIndex] = EmptyStr then
    Exit;
  form_Type := (Integer(TabControl1.Tabs.Objects[TabControl1.TabIndex]));
  GroupType := GetGroupType;
  // formType:=IntToStr( integer(TabControl1.Tabs.IndexOf(TabControl1.Tabs[TabControl1.TabIndex])));
  // Warn((formType) + TabControl1.Tabs[TabControl1.TabIndex] );

  // Caption:=Caption+CustGroupsNames[strtoint(formType)];
  LblPerson1.Caption := CustGroupsNames[(form_Type)];
  qryCustomers.SQL.Text := StringReplace(qryCustomersSQLText, ':GroupType',
    GroupType, [rfReplaceAll]);
  FilterFormShow
end;

procedure TrptCustomerTrancItemsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  case qryCustItem.FieldByName('Kind').AsInteger of
    0:
      Warn('براي نوع اطلاعات " نقل از قبل " فرمي وجود ندارد.!');
    1, 2:
      ShowFormTypesForms(qryCustItem, Self);
    3:
      ShowReciptTypes(qryCustItem, Self)
  end; // case
end;

procedure TrptCustomerTrancItemsF.grd1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TrptCustomerTrancItemsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline2, grd1);
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptCustomerTrancItemsF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCustomerTrancItemsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptCustomerTrancItemsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCustomerTrancItemsF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptCustomerTrancItemsF.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT DISTINCT CustID, CustName ,CustName_L2  FROM Vu_CustomersGroups '
    + 'WHERE (GroupType IN (' + GroupType + ')) ' + ' AND (CustID <> 0) ' +
    'AND (CustID BETWEEN ' +
    IntToStr(qryCustomers.Parameters.ParamByName('PersonID1From').Value) +
    'AND ' + IntToStr(qryCustomers.Parameters.ParamByName('PersonID1To')
    .Value) + ' )';
  if opt.ChkUsersCustomersGroupsActive then
    Txt := Txt + Format
      ('AND (dbo.ChkUsersCustomersGroups( %d , %d , CustID  ) = 1)',
      [IfThen(User.PowerUser, 1, 0), User.ID]);

  b := searchCode_ADOF.SearchCode2(dmF.adcBSell, LblPerson1.Caption, Txt,
    ['کد', 'نام ', 'Customer Name'], Results, [50, 150, 150], alLeft);
  if b then
  begin
    qryCustomers.Locate('CustID', Results[0], []);
  end; // if
end;

procedure TrptCustomerTrancItemsF.EdtPersonID1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click
end;

procedure TrptCustomerTrancItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustItem);
end;

procedure TrptCustomerTrancItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustItem);
end;

procedure TrptCustomerTrancItemsF.logoPrint(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := GetReportFileWithPath((Sender as TppImage).Name + '.bmp');
  if (FileExists(s)) then
  begin
    (Sender as TppImage).Picture.LoadFromFile(s);
  end;
end;

procedure TrptCustomerTrancItemsF.plblStatusBarGetText(Sender: TObject;
  var Text: string);
var
  i: Integer;
begin
  inherited;
  if TryStrToInt(Text, i) then
    if i < stat1.Panels.Count then
      Text := stat1.Panels[i].Text;
end;

procedure TrptCustomerTrancItemsF.ppDBTxt_StuffName_ReciptCaptionGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  if qryCustItem.FieldByName('StuffCode').AsLargeInt = 0 then
    Text := qryCustItem.FieldByName('ReciptCaption').AsString
end;

procedure TrptCustomerTrancItemsF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryCustItem, Self, LblLimit.Caption)
end;

procedure TrptCustomerTrancItemsF.AllC_l_i_c_k_Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline1.RangeBegin := rbCurrentRecord;
        ppDBPipeline1.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppDBPipeline1.RangeBegin := rbFirstRecord;
        ppDBPipeline1.RangeEnd := reLastRecord;
      end;
  end;
  try
    qryCustomers.DisableControls;
    qryCustItem.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
  finally
    qryCustomers.EnableControls;
    qryCustItem.EnableControls;
  end;

end;

procedure TrptCustomerTrancItemsF.chk1Click(Sender: TObject);
begin
  inherited;
  qryCustItem.Filter := '(balance  <> 0)';
  qryCustItem.Filtered := chk1.Checked
end;

procedure TrptCustomerTrancItemsF.chkAllClick(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TrptCustomerTrancItemsF.grd1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCustItemReciptNumber)
end;

end.
