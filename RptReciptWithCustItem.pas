unit RptReciptWithCustItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, DB, ADODB, Grids, Vcl.DBGrids, ppBands, ppCache, ppClass,
  ppComm, ppRelatv, ppProd, ppReport, ppCtrls, ppVar, ppPrnabl, ppDB,
  ppDBPipe, ppDBBDE, Menus, SumDBGrid, ppParameter, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TRptReciptWithCustItemF = class(Ttemplate2MDIF)
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
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
    SumGrid1: TSumGrid;
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
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
    procedure actshowChartExecute(Sender: TObject);
    procedure qryWithCustBeforeOpen(DataSet: TDataSet);
  private
    formtype: byte;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptReciptWithCustItemF: TRptReciptWithCustItemF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, search2, sort2,
  FormFunctions, TreeChart;

{$R *.dfm}

procedure TRptReciptWithCustItemF.BitBtn6Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptReciptWithCustItemF.FormCreate(Sender: TObject);
begin
  inherited;
  formtype := var_glb_gParam;
  with qryinitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formtype;
    Active := True;
    Caption := ' ê“«—‘ ' + qryinitQry.FieldByName('ReciptCaption').AsString +
      '  » ›ﬂÌﬂ „‘ —Ì«‰ ¬Ì „   ';

    setColumns2(DBGrid1, FieldByName('DiscountActive').Value = 1,
      'TotallSellPrice');
    if FieldByName('DiscountActive').AsInteger = 1 then
      qryWithCust.FieldByName('TotallSellPrice').Tag := 3;

  end;
  Entity_Weight(DBGrid1);
end;

procedure TRptReciptWithCustItemF.UpdateFilter;
begin
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'],
    ftInteger), DBGrid1,qryWithCust);
  with qryWithCust do
  begin
    Active := False;

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('custIdfrom').Value :=
      GetcFrom(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('custIdTo').Value :=
      GetcTo(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('customergrpIdfrom').Value :=
      GetcFrom(myParams.ParamValues['costomergrp'], ftInteger);
    Parameters.ParamByName('customergrpIdTo').Value :=
      GetcTo(myParams.ParamValues['costomergrp'], ftInteger);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Lbldate.Caption := ' «“ «—ÌŒ' + qryWithCust.Parameters.ParamByName
      ('ReciptDateFrom').Value + '  « ' + qryWithCust.Parameters.ParamByName
      ('ReciptDateTo').Value;
    Lblnumber.Caption := '  «“‘„«—Â ' +
      IntToStr(qryWithCust.Parameters.ParamByName('ReciptNumberFrom').Value) +
      '  « ' + IntToStr(qryWithCust.Parameters.ParamByName
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

procedure TRptReciptWithCustItemF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterStuffCode);

      // AddItem(DMf.adcBSell, 'StuffCode', '‰«„ ﬂ«·«', 'ﬂœ ﬂ«·«', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM  StuffCoding ',
      // 'Select Min(StuffCode),max(StuffCode) from ReciptItems');

      AddItem(DMf.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts where recipttype=' +
        IntToStr(formtype));
      AddItem(DMf.adcBSell, 'ReciptNumber', '›—„ ', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts where recipttype='
        + IntToStr(formtype));
      AddItem(DMf.adcBSell, 'custID', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT DISTINCT custid,custname from Vu_CustomersGroups ',
        'select min(custid),max(custid) from customers');
      AddItem(DMf.adcBSell, 'costomergrp', 'ê—ÊÂ „‘ —Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT customergrpid,customergrpname from customersgroup ',
        'select min(customergrpid),max(customergrpid) from customersgroup');
      AddItem(DMf.adcBSell, 'StoreID', ' «‰»«— ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
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

procedure TRptReciptWithCustItemF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TRptReciptWithCustItemF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TRptReciptWithCustItemF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptReciptWithCustItemF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Lbldate.Caption
end;

procedure TRptReciptWithCustItemF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Lblnumber.Caption;
end;

procedure TRptReciptWithCustItemF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblCaption.Caption;
end;

procedure TRptReciptWithCustItemF.N1Click(Sender: TObject);
begin
  inherited;
  if qryinitQry.FieldByName('DiscountActive').AsInteger = 1 then
    try
      qryWithCust.DisableControls;
      InitReportFile(ppReport1, 'RptReciptWithCustItem1DiscountActive', True);
      Exit;
    finally
      qryWithCust.EnableControls;
    end; // try

  try
    qryWithCust.DisableControls;
    InitReportFile(ppReport1, 'RptReciptWithCustItem1'); // ppReport1.Print;
  finally
    qryWithCust.EnableControls;
  end; // try
end;

procedure TRptReciptWithCustItemF.N2Click(Sender: TObject);
begin
  inherited;
  if qryinitQry.FieldByName('DiscountActive').AsInteger = 1 then
    try
      qryWithCust.DisableControls;
      InitReportFile(ppReport2, 'RptReciptWithCustItem2DiscountActive', True);
      Exit;
    finally
      qryWithCust.EnableControls;
    end; // try
  try
    qryWithCust.DisableControls;
    InitReportFile(ppReport2, 'RptReciptWithCustItem2'); // ppReport2.Print;
  finally
    qryWithCust.EnableControls;
  end; // try
end;

procedure TRptReciptWithCustItemF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TRptReciptWithCustItemF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryWithCust)
end;

procedure TRptReciptWithCustItemF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryWithCust)
end;

procedure TRptReciptWithCustItemF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptReciptWithCustItemF.ppLabel20GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptReciptWithCustItemF.ppLabel8GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptReciptWithCustItemF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptReciptWithCustItemF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptReciptWithCustItemF.ppDBCalcAveragePriceEntityGetText
  (Sender: TObject; var Text: String);
var
  c: Currency;
begin
  inherited;
  c := CalcSumFileds(qryWithCust, 'Price');
  c := c / CalcSumFileds(qryWithCust, 'Entity');
  Text := CurrToStrF(c, ffCurrency, 0);
end;

procedure TRptReciptWithCustItemF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryWithCust, Self)
end;

procedure TRptReciptWithCustItemF.qryWithCustBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  GetSumGridFields(DBGrid1, SumGrid1)
end;

end.
