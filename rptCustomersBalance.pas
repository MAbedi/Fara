unit rptCustomersBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, Math,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppPrnabl, ppClass, ppCtrls, ppDB,
  ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppVar,
  ppModule, ComCtrls, SumDBGrid, ppParameter, SMService, SMSUnit, Menus,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TrptCustomersBalanceF = class(Ttemplate2MDIF)
    qryCustBalance: TADOQuery;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    qryCustBalancePersonID1: TIntegerField;
    qryCustBalanceCustName: TStringField;
    qryCustBalanceTel: TStringField;
    qryCustBalancebed: TBCDField;
    qryCustBalancebes: TBCDField;
    qryCustBalancebalance: TBCDField;
    srcCustBalance: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLblGetPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblCustLimit: TppLabel;
    ppLblDateLimit: TppLabel;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    btnrptCustomerTransactionF: TBitBtn;
    actPrint: TAction;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine24: TppLine;
    ppShape2: TppShape;
    actSendToExcel: TAction;
    BitBtn3: TBitBtn;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppFooterBand2: TppFooterBand;
    ppLabel22: TppLabel;
    ppShape6: TppShape;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    ppLine19: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine20: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel1: TppLabel;
    StatusBar1: TStatusBar;
    ppLine31: TppLine;
    qryCustBalanceAddress: TStringField;
    BitBtn4: TBitBtn;
    qryCustBalanceMobile: TStringField;
    actrptCustomerTransactionF: TAction;
    BitBtn7: TBitBtn;
    qryCustBalanceFirstBalance: TBCDField;
    qryCustBalanceNationalID: TStringField;
    DBGrid1: TCedarDbgrid;
    qryCustBalanceCurrenciesName: TStringField;
    qryCustBalanceArzbed: TFloatField;
    qryCustBalanceArzbes: TFloatField;
    qryCustBalanceArzbalance: TFloatField;
    chkArz: TCheckBox;
    qryCustBalanceCity: TStringField;
    actrptCustomerTransactionItemsF: TAction;
    BitBtn2: TBitBtn;
    chkZero: TCheckBox;
    qryCustBalanceCountry: TStringField;
    qryCustBalanceReciptDateMax: TStringField;
    actPcPosF: TAction;
    BitBtn8: TBitBtn;
    qryCustBalanceCheckDateMax: TStringField;
    qryCustBalanceFormDateMax: TStringField;
    qryCustBalanceFormDateNoCheck: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppLblGetPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCustLimitGetText(Sender: TObject; var Text: String);
    procedure ppLblDateLimitGetText(Sender: TObject; var Text: String);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure qryCustBalanceAfterOpen(DataSet: TDataSet);
    procedure actshowChartExecute(Sender: TObject);
    procedure actrptCustomerTransactionFExecute(Sender: TObject);
    procedure actSmsSendExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure chkArzClick(Sender: TObject);
    procedure actrptCustomerTransactionItemsFExecute(Sender: TObject);
    procedure actPcPosFExecute(Sender: TObject);
  private
    formType: Byte;
    GroupType: String;
    procedure UpdateList;
    procedure initForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCustomersBalanceF: TrptCustomersBalanceF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro,
  search2, sort2, TreeChart, rptCustomerTransaction, FaraConsts,
  Filter_ADO_Const, FormFunctions, mdiMain, PcPos;

{$R *.dfm}

procedure TrptCustomersBalanceF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      // AddItemFilter(GetFilter, TFilterPersonID2);

      AddItem(dmF.adcBSell, 'Vaset', 'واسط فروش ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups ' +
        'WHERE GroupType in(8,11) AND ( CustID > 0 )  ',
        'SELECT Min(CustID),max(CustID) FROM Customers ');

      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      if opt.ArzActiveAll then
        AddItemFilter(GetFilter, TFilterArz);

      AddItem(dmF.adcBSell, 'Price', 'مانده ', 'مبلغ', ftCurrency, dvMinMax, '',
        '', ciSimple, '', 'select -999999999999,99999999999999');

      AddItem(dmF.adcBSell, 'ReciptDate', 'تاريخ ', 'تاريخ', ftDate, dvDefaults,
        var_glb_CurrentDate, '', ciSingle, '', '');

      if opt.DefaultDateActive then
        AddItemFilter(GetFilter, TFilterDefaultDateAct);


      // AddItem(dmF.adcBSell, 'CustomerID2', 'مشتري2', 'كد2', ftInteger, dvMinMax,
      // '', '', ciLookup, 'SELECT DISTINCT CustID, CustName FROM Customers ' +
      // 'WHERE (CustomerGrpID IN (SELECT DISTINCT CustomerGrpID FROM Vu_CustomersGroups '
      // + 'WHERE (GroupType in( 0,8)))) ',
      // 'Select Min(CustID),max(CustID) FROM Customers ' +
      // 'WHERE (CustomerGrpID IN (SELECT DISTINCT CustomerGrpID FROM Vu_CustomersGroups '
      // + 'WHERE (GroupType in( 0,8)))) ');

      AddItemFilter(GetFilter, TFilterPersonID1Limit, False, 'مشتري',
        'WHERE GroupType in(' + GroupType + ') ))');

      // AddItem(dmF.adcBSell, 'PersonID1', ['كد', 'مشتري', 'کد ملی'], ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT DISTINCT CustID, CustName,NationalID FROM Vu_CustomersGroups ' +
      // 'WHERE (CustomerGrpID IN (SELECT DISTINCT CustomerGrpID FROM Vu_CustomersGroups '
      // + 'WHERE (GroupType in( ' + GroupType + ')))) ',
      // 'Select Min(CustID),max(CustID) FROM Customers ' +
      // 'WHERE (CustomerGrpID IN (SELECT DISTINCT CustomerGrpID FROM Vu_CustomersGroups '
      // + 'WHERE (GroupType in( ' + GroupType + ')))) ');

      AddItem(dmF.adcBSell, 'CustomerGrpID', ' گروه مشتريان ', 'گروه',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT CustomerGroupID, CustomerGrpName FROM Vu_CustomersGroups '
        + 'WHERE (GroupType in( ' + GroupType + '))',
        'select Min(CustomerGroupID),Max(CustomerGroupID) From Vu_CustomersGroups '
        + 'WHERE (GroupType in( ' + GroupType + '))');
      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TrptCustomersBalanceF.UpdateList;
begin
  Panel2.Enabled := True;
  with qryCustBalance do
  begin
    Active := False;
    SQL.Text :=
      'SELECT AllAcc.CustomerID1 AS PersonID1,  CASE WHEN LEN(isnull(Customers.CustFirstName,'''')) = 0 THEN Customers.CustName '
      + ' ELSE  Customers.CustFirstName+'' '' +Customers.CustName END AS CustName,';
    SQL.Add(' Customers.Tel, Customers.Country, Customers.City, Customers.Address,Customers.Mobile,Customers.NationalID,');
    SQL.Add('SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes ELSE 0 END) AS FirstBalance, SUM');
    SQL.Add('(AllAcc.bed)');
    SQL.Add('- CASE WHEN SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes ELSE 0 END)');
    SQL.Add('> 0 THEN SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes ELSE 0 END) ELSE 0 END AS bed,');
    SQL.Add('SUM(CASE WHEN doctype IN (1, 2, 10)');
    SQL.Add('THEN AllAcc.bes ELSE 0 END) - CASE WHEN SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes');
    SQL.Add('ELSE 0 END)');
    SQL.Add('< 0 THEN - SUM(CASE WHEN AllAcc.kind = 0 THEN AllAcc.bed - AllAcc.bes ELSE 0 END) ELSE 0 END AS');
    SQL.Add('bes, SUM(CASE WHEN doctype IN (1, 2, 10)');
    SQL.Add('THEN AllAcc.bed - AllAcc.bes ELSE 0 END) AS balance');

    SQL.Add(', SUM(Arzbed) AS Arzbed ,  SUM(Arzbes) AS Arzbes, SUM(Arzbed- Arzbes) AS Arzbalance');
    SQL.Add(',Max(ReciptDateMax)AS ReciptDateMax,Max(FormDateCheck)AS FormDateMax,Max(CheckDate)AS CheckDateMax ,Max( FormDateNoCheck) FormDateNoCheck');

    if chkArz.Checked then
      SQL.Add(',CurrenciesName')
    else
      SQL.Add(','''' AS CurrenciesName');

    SQL.Add('FROM CustomersGroup RIGHT OUTER JOIN');
    SQL.Add('dbo.AllAccount(10, - 1, - 1, - 1, :PersonID1From, :PersonID1To, '''', :DateTo, '''', :YearIDFrom, :YearIDTo,');
    SQL.Add(':SellsMethodFrom, :SellsMethodTo, :SellsEmporiumFrom, :SellsEmporiumTo , :DefaultDateActive ) AS AllAcc INNER JOIN');
    SQL.Add('Customers ON AllAcc.CustomerID1 = Customers.CustID ON CustomersGroup.CustomerGrpID =');
    SQL.Add('Customers.CustomerGrpID');
    // SQL.Add(' LEFT OUTER JOIN Currencies ON AllAcc.ArzTypeID = Currencies.CurrenciesID');

    SQL.Add('WHERE (AllAcc.CustomerID1 <> 0)');
    SQL.Add('AND ( ISNULL(AllAcc.ArzTypeID,0) BetWeen :ArzTypeIDFrom AND :ArzTypeIDTo)');

    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('AND (dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , AllAcc.CustomerID1 ) = 1)');
      Parameters.ParamByName('UserID').Value := User.ID;
      Parameters.ParamByName('UserAdmin').Value := IfThen(User.PowerUser, 1, 0);
    end;

    SQL.Add('AND ((isnull(Customers.PersonID1,0) BETWEEN :VasetFrom AND :VasetTo ) )');

    SQL.Add('AND AllAcc.CustomerID1 in (select  CustID from Vu_CustomersGroups');
    SQL.Add('WHERE (GroupType in( ' + GroupType + '  ) )');
    SQL.Add('AND (CustomerGroupID BETWEEN :CustomerGrpID1From AND :CustomerGrpID1To ))');
    // CustomerGrpID
    SQL.Add('GROUP BY AllAcc.CustomerID1, Customers.CustName,Customers.CustFirstName');
    SQL.Add(', Customers.Tel, Customers.Country,Customers.City,  Customers.Address, Customers.Mobile,');
    SQL.Add('Customers.FirstBalance,Customers.NationalID');

    if chkArz.Checked then
      SQL.Add(',CurrenciesName');

    qryCustBalancePersonID1.DisplayFormat := '';
    SQL.Add('HAVING (SUM(AllAcc.bed - AllAcc.bes) BETWEEN :SUMAccFrom AND :SUMAccTo)');

    if chkZero.Checked then
      SQL.Add('AND (SUM(AllAcc.bed - AllAcc.bes) <> 0 )');

    SQL.Add('ORDER BY PersonID1');

    if opt.DefaultDateActive then
      Parameters.ParamByName('DefaultDateActive').Value :=
        GetcTo(myParams.ParamValues['DefaultDateActive'], ftDate)
    else
      Parameters.ParamByName('DefaultDateActive').Value := 0;

    Parameters.ParamByName('CustomerGrpID1From').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpID1To').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    // Parameters.ParamByName('CustomerGrpID2From').Value :=
    // GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    // Parameters.ParamByName('CustomerGrpID2To').Value :=
    // GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    // Parameters.ParamByName('PersonID2From').Value :=
    // GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    // Parameters.ParamByName('PersonID2To').Value :=
    // GetcTo(myParams.ParamValues['PersonID2'], ftInteger);


    // Parameters.ParamByName('CustomerID2From').Value :=
    // GetcFrom(myParams.ParamValues['CustomerID2'], ftInteger);
    // Parameters.ParamByName('CustomerID2To').Value :=
    // GetcTo(myParams.ParamValues['CustomerID2'], ftInteger);

    Parameters.ParamByName('VasetFrom').Value :=
      GetcFrom(myParams.ParamValues['Vaset'], ftInteger);
    Parameters.ParamByName('VasetTo').Value :=
      GetcTo(myParams.ParamValues['Vaset'], ftInteger);

    // Parameters.ParamByName('DateFrom').Value:='';//GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);

    // DateFromRemain:=GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    // DateFromRemain:=miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain),-1));
    // Parameters.ParamByName('DateFromRemain').Value:='';//DateFromRemain;

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('SUMAccFrom').Value :=
      GetcFrom(myParams.ParamValues['Price'], ftCurrency);
    Parameters.ParamByName('SUMAccTo').Value :=
      GetcTo(myParams.ParamValues['Price'], ftCurrency);

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
    Active := True;
  end; // with

end;

procedure TrptCustomersBalanceF.FormCreate(Sender: TObject);
begin
  inherited;
  chkArz.onClick := nil;
  // SumGrid1.Free;
  // SumGrid1.Active:=False;
  // SumGrid1.AutoRefresh:=False;
  chkArz.Checked := StrToBool(ReadConfig(APPID, 'rptCustomersBalancechkArz',
    'False'));
  chkArz.onClick := chkArzClick;
  initForm;
end;

procedure TrptCustomersBalanceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, 'rptCustomersBalancechkArz', BoolToStr(chkArz.Checked));
end;

procedure TrptCustomersBalanceF.initForm;
begin
  formType := var_glb_gParam;
  GroupType := '0';
  case formType of
    1:
      begin
        Caption := 'گزارش تراز عملكرد مشتريان';
        GroupType := '0';
      end;
    2:
      begin
        Caption := 'گزارش مانده حساب مشتريان';
        GroupType := '0';
      end;
    3:
      begin
        Caption := 'گزارش مانده حساب ساير';
        GroupType := '3';
      end;
    4:
      begin
        Caption := 'گزارش مانده حساب فروشندگان';
        GroupType := '4,10';
      end;
  end;
  setColumns2(DBGrid1, formType = 1, 'bed');
  setColumns2(DBGrid1, formType = 1, 'bes');
  SetArzIni(DBGrid1);

end;

procedure TrptCustomersBalanceF.ppLblGetPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptCustomersBalanceF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptCustomersBalanceF.actPcPosFExecute(Sender: TObject);
begin
  inherited;
  PcPosF.Enter(qryCustBalancebalance.AsString)
end;

procedure TrptCustomersBalanceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  // if  get_response('آيا تلفن در چاپ نمايش شود.') =mrno then
  try
    qryCustBalance.DisableControls;
    InitReportFile(ppReport1, 'rptCustomersBalance' + IntToStr(formType), True);
  finally
    qryCustBalance.EnableControls;
  end; // try
end;

procedure TrptCustomersBalanceF.ppLblCustLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' از مشتري ' + VarToStr(GetcFrom(myParams.ParamValues['PersonID1'],
    ftInteger)) + ' تا مشتري ' +
    VarToStr(GetcTo(myParams.ParamValues['PersonID1'], ftInteger));
end;

procedure TrptCustomersBalanceF.ppLblDateLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' به تاريخ ' +
    VarToStr(GetcFrom(myParams.ParamValues['ReciptDate'], ftDate));
end;

procedure TrptCustomersBalanceF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1, actSmsSend);
end;

procedure TrptCustomersBalanceF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptCustomersBalanceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustBalance);
end;

procedure TrptCustomersBalanceF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryCustBalance, nil, SmsCustomersBalance_Amval, formType, 0, 1);
end;

procedure TrptCustomersBalanceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustBalance);
end;

procedure TrptCustomersBalanceF.chkArzClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TrptCustomersBalanceF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCustomersBalanceF.qryCustBalanceAfterOpen(DataSet: TDataSet);
var
  bed, bes, FirstBalance: Currency;
begin
  inherited;
  StatusBar1.Panels[3].Text := 'تعدادمشتري=' +
    IntToStr(qryCustBalance.RecordCount);
  bed := CalcSumFileds(qryCustBalance, 'bed');
  bes := CalcSumFileds(qryCustBalance, 'bes');
  FirstBalance := CalcSumFileds(qryCustBalance, 'FirstBalance');
  StatusBar1.Panels[2].Text := 'بدهكار=' + CurrToStrF(bed, ffCurrency, 0);
  StatusBar1.Panels[1].Text := 'بستانكار=' + CurrToStrF(bes, ffCurrency, 0);
  StatusBar1.Panels[0].Text := 'مانده=' + CurrToStrF(bed - bes + FirstBalance,
    ffCurrency, 0); // -FirstBalance
end;

procedure TrptCustomersBalanceF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryCustBalance, Self);
end;

procedure TrptCustomersBalanceF.actrptCustomerTransactionFExecute
  (Sender: TObject);
begin
  inherited;
  try
    Var_glb_NoFilter := True;
    CreateMDIForm2(TrptCustomerTransactionF, rptCustomerTransactionF, Self,
      formType);
    rptCustomerTransactionF.qryCustomers.Locate('CustID',
      qryCustBalance.Fieldbyname('PersonID1').AsInteger, [])
  finally
    Var_glb_NoFilter := False
  end;
end;

procedure TrptCustomersBalanceF.actrptCustomerTransactionItemsFExecute
  (Sender: TObject);
begin
  inherited;
  mdiMainF.actrptCustomerTrancItemsF0.Execute
  // try
  // Var_glb_NoFilter := True;
  // CreateMDIForm2(TrptCustomerTrancItemsF, rptCustomerTrancItemsF, Self,
  // formType);
  // rptCustomerTrancItemsF.qryCustomers.Locate('CustID',
  // qryCustBalance.Fieldbyname('PersonID1').AsInteger, [])
  // finally
  // Var_glb_NoFilter := False
  // end;

end;

end.
