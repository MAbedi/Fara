unit RptReciptWithCust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, DB, ADODB, ppBands, ppCache, ppClass,
  ppComm, ppRelatv, ppProd, ppReport, ppCtrls, ppVar, ppPrnabl, ppDB,
  ppDBPipe, ppDBBDE, Menus, SumDBGrid, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TRptReciptWithCustF = class(Ttemplate2MDIF)
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    qryWithCust: TADOQuery;
    actSendExcel: TAction;
    qryinitQry: TADOQuery;
    ppReport1: TppReport;
    actPrint: TAction;
    srcWithCust: TDataSource;
    actFilter: TAction;
    Lbldate: TLabel;
    Lblnumber: TLabel;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport2: TppReport;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qryWithCustCustomerGrpID: TIntegerField;
    qryWithCustCustomerGrpName: TStringField;
    qryWithCustPersonID1: TIntegerField;
    qryWithCustCustName: TStringField;
    qryWithCustReciptType: TWordField;
    qryWithCustReciptCaption: TStringField;
    qryWithCustentity: TFloatField;
    qryWithCustweight: TFloatField;
    qryWithCustprice: TBCDField;
    actSort: TAction;
    qryWithCustTotallSellPrice: TBCDField;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel8: TppLabel;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel22: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppFooterBand2: TppFooterBand;
    ppShape5: TppShape;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine23: TppLine;
    ppLabel23: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppShape6: TppShape;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine32: TppLine;
    ppLabel24: TppLabel;
    qryWithCustPriceDivEntity: TFloatField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLine6: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine22: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine21: TppLine;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLine26: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine28: TppLine;
    ppLabel13: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine33: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLine29: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine34: TppLine;
    ppLabel14: TppLabel;
    ppDBCalcAveragePriceEntity: TppDBCalc;
    ppLine35: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape8: TppShape;
    ppLine38: TppLine;
    ppDBCalc16: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLine40: TppLine;
    ppLabel26: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine27: TppLine;
    BitBtn5: TBitBtn;
    PopMnuOther: TPopupMenu;
    MenuItem1: TMenuItem;
    DBGrid1: TCedarDbgrid;
    qryWithCustNationalID: TStringField;
    qryWithCustEconomicNumber: TStringField;
    qryWithCustMobile: TStringField;
    qryWithCustAddress: TStringField;
    qryWithCustUnitSellPrice: TFMTBCDField;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure actSendExcelExecute(Sender: TObject);
    procedure ppDBCalcAveragePriceEntityGetText(Sender: TObject;
      var Text: String);
    procedure BitBtn5Click(Sender: TObject);
    procedure actshowChartExecute(Sender: TObject);
  private
    qryWithCustSQLText: string;
    formtype: byte;
    custIDKindActive: Integer;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptReciptWithCustF: TRptReciptWithCustF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, search2, sort2,
  FormFunctions, TreeChart, ReciptsFunctions;

{$R *.dfm}

procedure TRptReciptWithCustF.BitBtn6Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptReciptWithCustF.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum(['PersonID1']);
  formtype := var_glb_gParam;
  qryWithCustSQLText := qryWithCust.SQL.Text;
  with qryinitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formtype;
    Active := True;
    Caption := ' گزارش ' + qryinitQry.FieldByName('ReciptCaption').AsString +
      '  بتفكيك مشتريان   ';

    setColumns2(DBGrid1, FieldByName('DiscountActive').Value = 1,
      'TotallSellPrice');
    if FieldByName('DiscountActive').AsInteger = 1 then
      qryWithCust.FieldByName('TotallSellPrice').Tag := 3;

  end;
  Entity_Weight(DBGrid1);
end;

procedure TRptReciptWithCustF.UpdateFilter;
begin
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryWithCust);
  with qryWithCust do
  begin
    Active := False;

    custIDKindActive := GetcFrom(myParams.ParamValues['custIDKindActive'],
      ftInteger);
    GetPersonCaption(formtype, qryWithCust, custIDKindActive,
      qryWithCustSQLText);

    // qryWithCust.SQL.Text := qryWithCustSQLText;
    //
    // custIDKindActive := GetcFrom(myParams.ParamValues['custIDKindActive'],
    // ftInteger);
    // case custIDKindActive of
    // 1:
    // qryWithCust.SQL.Text := StringReplace(qryWithCust.SQL.Text,
    // 'Recipts.PersonID1', 'Recipts.PersonID2', [rfReplaceAll]);
    // 2:
    // qryWithCust.SQL.Text := StringReplace(qryWithCust.SQL.Text,
    // 'Recipts.PersonID1', 'Recipts.PersonID3', [rfReplaceAll]);
    // 3:
    // qryWithCust.SQL.Text := StringReplace(qryWithCust.SQL.Text,
    // 'Recipts.PersonID1', 'ReciptItems.PersonID1', [rfReplaceAll]);
    // else
    // qryWithCust.SQL.Text := StringReplace(qryWithCust.SQL.Text,
    // 'Recipts.PersonID1', 'Recipts.PersonID1', [rfReplaceAll]);
    // end;
    //
    // With DMf.qryTmpTmp do
    // begin
    // Active := False;
    // SQL.Text := 'SELECT Person1Caption FROM dbo.GetPersonCaption(:Type)';
    // SQL.Add('WHERE (ID = :ID)');
    // Parameters.ParamByName('Type').Value := formtype;
    // Parameters.ParamByName('ID').Value := custIDKindActive;
    // Active := True;
    // qryWithCustPersonID1.DisplayLabel := 'کد' +
    // FieldByName('Person1Caption').AsString;
    // qryWithCustCustName.DisplayLabel := FieldByName('Person1Caption')
    // .AsString;
    // Active := False;
    // end;
    Parameters.ParamByName('YearIDFrom').Value :=APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value :=APPBank.Year;


    Parameters.ParamByName('custIdfrom').Value :=
      GetcFrom(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('custIdTo').Value :=
      GetcTo(myParams.ParamValues['custId'], ftInteger);

    Parameters.ParamByName('custId2from').Value :=
      GetcFrom(myParams.ParamValues['custId2'], ftInteger);
    Parameters.ParamByName('custId2To').Value :=
      GetcTo(myParams.ParamValues['custId2'], ftInteger);

    Parameters.ParamByName('customergrpIdfrom').Value :=
      GetcFrom(myParams.ParamValues['costomergrp'], ftInteger);
    Parameters.ParamByName('customergrpIdTo').Value :=
      GetcTo(myParams.ParamValues['costomergrp'], ftInteger);
    UpdateFilterAllReciptTypes(qryinitQry, qryWithCust, myParams);
    Lbldate.Caption := ' ازتاريخ' + qryWithCust.Parameters.ParamByName
      ('ReciptDateFrom').Value + ' تا ' + qryWithCust.Parameters.ParamByName
      ('ReciptDateTo').Value;
    Lblnumber.Caption := '  ازشماره ' +
      IntToStr(qryWithCust.Parameters.ParamByName('ReciptNumberFrom').Value) +
      ' تا ' + IntToStr(qryWithCust.Parameters.ParamByName
      ('ReciptNumberTo').Value);
    Parameters.ParamByName('Type').Value := formtype;
    Active := True;
  end; // with
  // with qryStore do begin
  // Active:=False;
  // Parameters.ParamByName('n_StoreIDForm').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
  // Parameters.ParamByName('n_StoreIDTo').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
  // Active:=True;
  // end;//with

end;

procedure TRptReciptWithCustF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      AddItem(DMf.adcBSell, 'custIDKindActive', 'سطح', 'شماره سطح', ftUnknown,
        dvDefaults, '0', '', ciRadioGroup,
        'SELECT ID,Person1Caption FROM dbo.GetPersonCaption( ''' +
        IntToStr(formtype) + ''')');

      AddItem(DMf.adcBSell, 'custID2', ['كد', 'مشتري2', 'کد ملی'], ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT custid,custname,NationalID FROM Vu_CustomersGroups ',
        'select min(custid),max(custid) from customers');

      AddItem(DMf.adcBSell, 'custID', ['كد', 'مشتري', 'کد ملی'], ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT custid,custname,NationalID FROM Vu_CustomersGroups ',
        'select min(custid),max(custid) from customers');

      AddItem(DMf.adcBSell, 'costomergrp', 'گروه مشتري', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT customergrpid,customergrpname from customersgroup ',
        'select min(customergrpid),max(customergrpid) from customersgroup');
      FilterAllReciptTypes(qryinitQry, fi);
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

procedure TRptReciptWithCustF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TRptReciptWithCustF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Lbldate.Caption
end;

procedure TRptReciptWithCustF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Lblnumber.Caption;
end;

procedure TRptReciptWithCustF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblCaption.Caption;
end;

procedure TRptReciptWithCustF.N1Click(Sender: TObject);
begin
  inherited;
  if qryinitQry.FieldByName('DiscountActive').AsInteger = 1 then
    try
      qryWithCust.DisableControls;
      InitReportFile(ppReport1, 'RptReciptWithCust1DiscountActive', True);
      // ppReport1.Print;
      Exit;
    finally
      qryWithCust.EnableControls;
    end; // try

  try
    qryWithCust.DisableControls;
    InitReportFile(ppReport1, 'RptReciptWithCust1'); // ppReport1.Print;
  finally
    qryWithCust.EnableControls;
  end; // try
end;

procedure TRptReciptWithCustF.N2Click(Sender: TObject);
begin
  inherited;
  if qryinitQry.FieldByName('DiscountActive').AsInteger = 1 then
    try
      qryWithCust.DisableControls;
      InitReportFile(ppReport2, 'RptReciptWithCust2DiscountActive', True);
      // ppReport1.Print;
      Exit;
    finally
      qryWithCust.EnableControls;
    end; // try
  try
    qryWithCust.DisableControls;
    InitReportFile(ppReport2, 'RptReciptWithCust2'); // ppReport2.Print;
  finally
    qryWithCust.EnableControls;
  end; // try
end;

procedure TRptReciptWithCustF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TRptReciptWithCustF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryWithCust)
end;

procedure TRptReciptWithCustF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryWithCust)
end;

procedure TRptReciptWithCustF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptReciptWithCustF.ppLabel20GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptReciptWithCustF.ppLabel8GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptReciptWithCustF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptReciptWithCustF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptReciptWithCustF.ppDBCalcAveragePriceEntityGetText(Sender: TObject;
  var Text: String);
var
  c: Currency;
begin
  inherited;
  c := CalcSumFileds(qryWithCust, 'Price');
  c := c / CalcSumFileds(qryWithCust, 'Entity');
  Text := CurrToStrF(c, ffCurrency, 0);
end;

procedure TRptReciptWithCustF.BitBtn5Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y)
end;

procedure TRptReciptWithCustF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryWithCust, Self)
end;

end.
