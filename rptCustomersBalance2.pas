unit rptCustomersBalance2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, Math,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppPrnabl, ppClass, ppCtrls, ppDB,
  ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppVar,
  ppModule, ComCtrls, SumDBGrid, ppParameter, SMService, SMSUnit, Menus,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, System.StrUtils;

type
  TrptCustomersBalance2F = class(Ttemplate2MDIF)
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
    qryCustBalanceCheckINCashier: TBCDField;
    qryCustBalanceCheckINBank: TBCDField;
    qryCustBalanceCheckInMoshtari: TBCDField;
    qryCustBalanceCheckReturned: TBCDField;
    RadioGroup1: TRadioGroup;
    qryCustBalanceCheck_Saderh: TBCDField;
    qryCustBalanceBankbalance: TBCDField;
    qryCustBalanceTaahod: TBCDField;
    qryCustBalanceHoquqi: TBCDField;
    qryCustBalancePayTaahod: TBCDField;
    qryCustBalanceTazmin: TBCDField;
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
    procedure RadioGroup1Click(Sender: TObject);
  private
    procedure UpdateList;
    procedure initForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCustomersBalance2F: TrptCustomersBalance2F;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro,
  search2, sort2, TreeChart, rptCustomerTransaction, FaraConsts,
  Filter_ADO_Const, FormFunctions, mdiMain;

{$R *.dfm}

procedure TrptCustomersBalance2F.actFilterExecute(Sender: TObject);
var
  GroupType: Integer;
  GroupName: string;
begin
  inherited;
  GroupType := RadioGroup1.ItemIndex;
  GroupName := RadioGroup1.Items[RadioGroup1.ItemIndex];
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmF.adcBSell, 'Vaset', 'واسط فروش ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups ' +
        'WHERE GroupType in(8,11) AND ( CustID > 0 )  ',
        'SELECT Min(CustID),max(CustID) FROM Customers ');

      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItem(dmF.adcBSell, 'Price', 'مانده ', 'مبلغ', ftCurrency, dvMinMax, '',
        '', ciSimple, '', 'select -999999999999,999999999999');

      AddItem(dmF.adcBSell, 'CheckDateTo', 'تاريخ سررسید', 'تاريخ سررسید',
        ftDate, dvDefaults, '1499/12/29', '', ciSingle, '', '');

      AddItem(dmF.adcBSell, 'FormDate0To', 'تاريخ ', 'تاريخ', ftDate,
        dvDefaults, var_glb_CurrentDate, '', ciSingle, '', '');

      AddItemFilter(GetFilter, TFilterPersonID1Limit, False, GroupName,
        'WHERE GroupType in(' + GroupType.ToString + ') ))');

      // AddItem(dmF.adcBSell, 'PersonID1', 'مشتري', 'كد', ftInteger, dvMinMax, '',
      // '', ciLookup,
      // 'SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups WHERE (GroupType in(0)) ',
      // 'Select Min(CustID),max(CustID) FROM Vu_CustomersGroups WHERE (GroupType in(0))');

      AddItem(dmF.adcBSell, 'CustomerGrpID', ' گروه  ' + GroupName, 'گروه',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT CustomerGroupID, CustomerGrpName FROM Vu_CustomersGroups '
        + 'WHERE (GroupType in( ' + GroupType.ToString + '))',
        'select Min(CustomerGroupID),Max(CustomerGroupID) From Vu_CustomersGroups '
        + 'WHERE (GroupType in( ' + GroupType.ToString + '))');

      if RadioGroup1.Tag = 1 then
      begin
        RadioGroup1.Tag := 0;
        btnDfualt.Click;
      end;
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

procedure TrptCustomersBalance2F.UpdateList;
begin
  Panel2.Enabled := True;
  with qryCustBalance do
  begin
    Active := False;
    Parameters.ParamByName('CustomerGrpID1From').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpID1To').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('VasetFrom').Value :=
      GetcFrom(myParams.ParamValues['Vaset'], ftInteger);
    Parameters.ParamByName('VasetTo').Value :=
      GetcTo(myParams.ParamValues['Vaset'], ftInteger);

    Parameters.ParamByName('FormDate0To').Value :=
      GetcFrom(myParams.ParamValues['FormDate0To'], ftDate);

    Parameters.ParamByName('CheckDateTo').Value :=
      Date1400Cnv(GetcFrom(myParams.ParamValues['CheckDateTo'], ftDate));

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

    Active := True;
  end; // with

end;

procedure TrptCustomersBalance2F.FormCreate(Sender: TObject);
begin
  inherited;
  // SumGrid1.Free;
  // SumGrid1.Active:=False;
  // SumGrid1.AutoRefresh:=False;
  initForm;
end;

procedure TrptCustomersBalance2F.initForm;
begin
  RadioGroup1.Visible := mdimainf.MainFrame.GetActiveIndex = 0;
  if RadioGroup1.Visible then
  begin
    Caption := 'گزارش پیش بینی نقدینگی';
    qryCustBalancePersonID1.DisplayLabel:='کد بانک/صندوق';
    qryCustBalanceCustName.DisplayLabel:='بانک/صندوق';
    RadioGroup1.OnClick := nil;
    RadioGroup1.ItemIndex := 1;
    RadioGroup1.OnClick := RadioGroup1Click;
  end;
  actrptCustomerTransactionF.Visible :=not RadioGroup1.Visible;

  with qryCustBalance do
  begin
    SQL.Text := 'SELECT * From ';
    SQL.Add('Fn_rptCustomersBalance2F( :TypeDoc1 ,:TypeDoc2 , :TypeDoc3  , :TypeDoc4 , :PersonID1From , :PersonID1To , :FormDate0To , :CheckDateTo , :YearIDFrom');
    SQL.Add(', :YearIDTo , :SellsMethodFrom , :SellsMethodTo , :SellsEmporiumFrom , :SellsEmporiumTo , :CustomerGrpID1From');
    SQL.Add(', :CustomerGrpID1To , :VasetFrom , :VasetTo , :SUMAccFrom , :SUMAccTo ,:FormTypeCecksIn ,:FormTypeBank');
    SQL.Add(', :CheckReturned , :SaderehBardashtNashode )');

    if RadioGroup1.Visible then
    begin
      if RadioGroup1.ItemIndex = 1 then
        Parameters.ParamByName('TypeDoc1').Value := 2
      else
        Parameters.ParamByName('TypeDoc1').Value := 1;

      Parameters.ParamByName('TypeDoc2').Value := 1;
      Parameters.ParamByName('TypeDoc3').Value := 2;
      Parameters.ParamByName('TypeDoc4').Value := 10;

    end
    else
    begin
      Parameters.ParamByName('TypeDoc1').Value := 10;
      Parameters.ParamByName('TypeDoc2').Value := -1;
      Parameters.ParamByName('TypeDoc3').Value := -1;
      Parameters.ParamByName('TypeDoc4').Value := -1;
    end;

    Parameters.ParamByName('FormTypeCecksIn').Value := GetFormTypes('4');
    Parameters.ParamByName('FormTypeBank').Value := GetFormTypes('3');

    Parameters.ParamByName('CheckReturned').Value := GetFormTypes('11,12');

    Parameters.ParamByName('SaderehBardashtNashode').Value := '50,54';

    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('Where (dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , PersonID1 ) = 1)');
      Parameters.ParamByName('UserID').Value := User.ID;
      Parameters.ParamByName('UserAdmin').Value := IfThen(User.PowerUser, 1, 0);
    end;
    SQL.Add('order by ( balance + isnull(CheckINCashier ,0) ');
    SQL.Add('+ isnull(CheckINBank,0)+isnull(CheckInMoshtari,0)) desc');
  end;

end;

procedure TrptCustomersBalance2F.ppLblGetPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptCustomersBalance2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptCustomersBalance2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  // if  get_response('آيا تلفن در چاپ نمايش شود.') =mrno then
  try
    qryCustBalance.DisableControls;
    InitReportFile(ppReport1, 'rptCustomersBalance2', True);
  finally
    qryCustBalance.EnableControls;
  end; // try
end;

procedure TrptCustomersBalance2F.ppLblCustLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' از مشتري ' + VarToStr(GetcFrom(myParams.ParamValues['PersonID1'],
    ftInteger)) + ' تا مشتري ' +
    VarToStr(GetcTo(myParams.ParamValues['PersonID1'], ftInteger));
end;

procedure TrptCustomersBalance2F.ppLblDateLimitGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' به تاريخ ' +
    VarToStr(GetcFrom(myParams.ParamValues['FormDate0To'], ftDate));
end;

procedure TrptCustomersBalance2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1, actSmsSend);
end;

procedure TrptCustomersBalance2F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('FormDate0To') = nil then
    close;
end;

procedure TrptCustomersBalance2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustBalance);
end;

procedure TrptCustomersBalance2F.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryCustBalance, nil, SmsCustomersBalance_Amval, 0, 0, 1);
end;

procedure TrptCustomersBalance2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustBalance);
end;

procedure TrptCustomersBalance2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCustomersBalance2F.qryCustBalanceAfterOpen(DataSet: TDataSet);
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

procedure TrptCustomersBalance2F.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.Visible then
    if RadioGroup1.ItemIndex = 0 then
    begin
      RadioGroup1.ItemIndex := 1;
      exit;
    end;

  RadioGroup1.Tag := 1;
  actFilter.Execute
end;

procedure TrptCustomersBalance2F.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryCustBalance, Self);
end;

procedure TrptCustomersBalance2F.actrptCustomerTransactionFExecute
  (Sender: TObject);
begin
  inherited;
  try
    Var_glb_NoFilter := True;
    CreateMDIForm2(TrptCustomerTransactionF, rptCustomerTransactionF, Self, 0);
    rptCustomerTransactionF.qryCustomers.Locate('CustID',
      qryCustBalance.FieldByName('PersonID1').AsInteger, [])
  finally
    Var_glb_NoFilter := False
  end;
end;

end.
