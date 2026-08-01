// programer m.rezaei
unit RptBalanceCoffer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, ppCtrls, ppPrnabl, ppClass,
  ppDB, ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, Menus, SumDBGrid, DateUtils, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TrptBalanceCofferF = class(Ttemplate2MDIF)
    srcBalanceCoffer: TDataSource;
    qrytBalanceCoffer: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actfilter: TAction;
    actPrint: TAction;
    actSentToExcel: TAction;
    actSort: TAction;
    actTransaction: TAction;
    Label1: TLabel;
    Label2: TLabel;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppShape2: TppShape;
    ppLabel10: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    qrytBalanceCofferCustID: TIntegerField;
    qrytBalanceCofferCustName: TStringField;
    qrytBalanceCofferfirstBalance: TBCDField;
    qrytBalanceCofferbed: TBCDField;
    qrytBalanceCofferbes: TBCDField;
    qrytBalanceCofferBalance: TBCDField;
    ppLabel11: TppLabel;
    ppLine15: TppLine;
    ppDBText6: TppDBText;
    ppLine16: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLine17: TppLine;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLabel13: TppLabel;
    ppLine18: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape3: TppShape;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel21: TppLabel;
    ppLine23: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBText12: TppDBText;
    ppLine30: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel22: TppLabel;
    ppShape4: TppShape;
    ppLine31: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine32: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine33: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLine34: TppLine;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    PopMnuprint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    qrytBalanceCofferAccountNumber: TStringField;
    qrytBalanceCofferArzFirstBalance: TFloatField;
    qrytBalanceCofferArzbed: TFloatField;
    qrytBalanceCofferArzbes: TFloatField;
    qrytBalanceCofferArzBalance: TFloatField;
    DBGrid1: TCedarDbgrid;
    qrytBalanceCofferBankId: TFloatField;
    qrytBalanceCofferBankName: TStringField;
    procedure actfilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSentToExcelExecute(Sender: TObject);
    procedure actTransactionExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable4GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
  private
    FormType: Integer;
    OrginalSql: String;
    { Private declarations }
    procedure UpdateFilter;
    procedure InitForm;

  public
    { Public declarations }
  end;

var
  rptBalanceCofferF: TrptBalanceCofferF;

implementation

uses filter_ADO, FilterClass_ADO, DM, GlobalPro, search2, sort2,
  rptCofferTrans2, shamsiDate, Filter_ADO_Const, FormFunctions;

{$R *.dfm}

procedure TrptBalanceCofferF.UpdateFilter;
var
  s, DateFromRemain: String;
begin
  if FormType = 17 then
    s := '17'
  else
  begin
    s := GetcFrom(myParams.ParamValues['GroupType'], ftString);
    if s = '' then
      s := '1,2';
  end;

  With qrytBalanceCoffer do
  begin
    Active := False;
    SQL.Text := StringReplace(OrginalSql, ':GroupType', s, [rfReplaceAll]);
    Parameters.ParamByName('CustFrom').Value :=
      GetcFrom(myParams.ParamValues['CustForShowForm'], ftInteger);
    Parameters.ParamByName('CustTo').Value :=
      GetcTo(myParams.ParamValues['CustForShowForm'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    DateFromRemain := GetcFrom(myParams.ParamValues['Date'], ftDate);
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    Parameters.ParamByName('DateFromRemain').Value := DateFromRemain;

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

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
  with qrytBalanceCoffer.Parameters do
  begin
    Label1.Caption := ' از كد ' + IntToStr(ParamByName('CustFrom').Value) +
      ' تا ' + IntToStr(ParamByName('CustTo').Value);
    Label2.Caption := ' بتاريخ  ' + ParamByName('DateFrom').Value + ' تا ' +
      ParamByName('DateTo').Value;
  end; // with
end;

procedure TrptBalanceCofferF.actfilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      if opt.ArzActiveAll then
        AddItemFilter(GetFilter, TFilterArz);

      if FormType <> 17 then
        AddItem(dmF.adcBSell, 'GroupType', 'گروه', '', ftUnknown, dvDefaults,
          'True', '', ciCheck,
          'SELECT 1 as GroupType,''بانك'' as GroupTypeName FROM Config union all '
          + 'SELECT 2 as GroupType,''صندوقدار'' as GroupTypeName FROM Config ',
          '');
      AddItem(dmF.adcBSell, 'Date', 'تاريخ ', 'بتاريخ', ftDate, dvDefaults,
        APPBank.StartYear, APPBank.endYear, ciSimple, '', '');

      if FormType <> 17 then
        AddItem(dmF.adcBSell, 'CustForShowForm', 'مشتري/بانك', 'كد', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups ' +
          'WHERE (GroupType IN (1, 2)) ',
          'Select Min(CustID),Max(CustID) FROM Vu_CustomersGroups ' +
          'WHERE (GroupType IN (1, 2)) ')
      else
        AddItem(dmF.adcBSell, 'CustForShowForm', 'كارپرداز', 'كد', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT DISTINCT CustID, CustName FROM Vu_CustomersGroups ' +
          'WHERE (CustomersGroup.GroupType IN (17)) ',
          'Select Min(CustID),Max(CustID) FROM Vu_CustomersGroups ' +
          'WHERE (GroupType IN (17)) ');

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TrptBalanceCofferF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actfilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;
end;

procedure TrptBalanceCofferF.actSentToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBalanceCofferF.actTransactionExecute(Sender: TObject);
var
 GroupType:Integer;
begin
  inherited;
  try
    Var_glb_NoFilter := True;
    With dmF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT DISTINCT GroupType FROM Vu_CustomersGroups';
      SQL.Add('WHERE (CustID = ' + qrytBalanceCoffer.Fieldbyname('CustID')
        .AsString + ')');
      Active := True;
      GroupType:= Fieldbyname('GroupType').AsInteger;
      case GroupType of
        1:
          CreateMDIForm2(TrptcofferTrans2F, rptcofferTrans2F, Self, 2);
        2:
          CreateMDIForm2(TrptcofferTrans2F, rptcofferTrans2F, Self, 1);
      else
        CreateMDIForm2(TrptcofferTrans2F, rptcofferTrans2F, Self, 10);
      end;
      rptcofferTrans2F.qryCustomer.Locate('CustID',
        qrytBalanceCoffer.Fieldbyname('CustID').AsInteger, []);
      Active := False;
    end;
  finally
    Var_glb_NoFilter := False;
  end;

end;

procedure TrptBalanceCofferF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Label1.Caption;
end;

procedure TrptBalanceCofferF.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Label2.Caption;
end;

procedure TrptBalanceCofferF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuprint.Popup(Mouse.CursorPos.x, Mouse.CursorPos.Y);
end;

procedure TrptBalanceCofferF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptBalanceCofferF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actTransaction.Execute
end;

procedure TrptBalanceCofferF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrytBalanceCoffer);
end;

procedure TrptBalanceCofferF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrytBalanceCoffer);
end;

procedure TrptBalanceCofferF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qrytBalanceCoffer.DisableControls;
    InitReportFile(ppReport1, 'rptBalanceCoffer1', True);
  finally
    qrytBalanceCoffer.EnableControls;
  end;
end;

procedure TrptBalanceCofferF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qrytBalanceCoffer.DisableControls;
    InitReportFile(ppReport2, 'rptBalanceCoffer2', True);
  finally
    qrytBalanceCoffer.EnableControls;
  end;
end;

procedure TrptBalanceCofferF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptBalanceCofferF.ppSystemVariable4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptBalanceCofferF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm
end;

procedure TrptBalanceCofferF.InitForm;
begin
  FormType := var_glb_gParam;
  OrginalSql := qrytBalanceCoffer.SQL.Text;
  if FormType = 17 then
    Caption := 'گزارش نقدينگي كار پردازان';

  SetArzIni(DBGrid1);

  DBGrid1.SetFooter4Sum(['BankId']);

end;

end.
