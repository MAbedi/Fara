// create by morteza in date 84/05/12
unit rptCustTransDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, DBCtrls, Mask, ppBands, ppCache, ComCtrls, ppCtrls,
  ppPrnabl, ppDB, ppDBPipe, ppVar, ppStrtch, ppSubRpt, Menus, ppParameter,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde;

type
  TrptCustTransDetailsF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    srcCustTrance: TDataSource;
    qryCustTrance: TADOQuery;
    actFilter: TAction;
    BtnPrint: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    lblDate: TLabel;
    ppReport1: TppReport;
    actSendToExel: TAction;
    actPrint1: TAction;
    LblPerson1: TLabel;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    srcCustomers: TDataSource;
    qryCustomers: TADOQuery;
    qryCustTrancePersonID1: TIntegerField;
    qryCustTranceReciptID: TIntegerField;
    qryCustTranceReciptNumber: TIntegerField;
    qryCustTranceReciptDate: TStringField;
    qryCustTranceReciptType: TWordField;
    qryCustTranceReciptCaption: TStringField;
    qryCustTrancec_StuffName: TStringField;
    qryCustTranceUnitName: TStringField;
    qryCustTranceStuffSize: TStringField;
    qryCustTranceStuffAlloy: TStringField;
    qryCustTranceentity: TFloatField;
    qryCustTranceweight: TFloatField;
    qryCustTrancebed: TBCDField;
    qryCustTrancebes: TBCDField;
    qryCustTrancekind: TIntegerField;
    qryCustTranceStoreID: TSmallintField;
    qryCustTranceStuffDiameter: TFloatField;
    qryCustTranceControlCode: TLargeintField;
    SpeedButton1: TSpeedButton;
    actSort: TAction;
    StatusBar1: TStatusBar;
    ppDBPipeline1: TppDBPipeline;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    ppDBPipeline2: TppDBPipeline;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    qryCustTranceItemNote: TStringField;
    PopPrint: TPopupMenu;
    N4: TMenuItem;
    actPrint2: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine13: TppLine;
    ppLine16: TppLine;
    ppDBText15: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppDBText16: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine56: TppLine;
    ppLine58: TppLine;
    ppLine42: TppLine;
    ppDBText22: TppDBText;
    ppLine43: TppLine;
    ppDBText23: TppDBText;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppDBText27: TppDBText;
    ppLine51: TppLine;
    ppDBText28: TppDBText;
    ppDBText1: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppDBCalc7: TppDBCalc;
    ppLine49: TppLine;
    ppLabel4: TppLabel;
    ppLine50: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppLabel22: TppLabel;
    ppLine31: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    N6: TMenuItem;
    qryCustTranceStuffCode: TLargeintField;
    procedure actFilterExecute(Sender: TObject);
    procedure actSendToExelExecute(Sender: TObject);
    procedure actPrint1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);

    procedure qryCustTranceAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel21GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure BtnPrintClick(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
  private
    // cloned:  TADOQuery;
    BedType: Int64;
    procedure UpdateFilter;
    function CalcSumFileds_2(qry: TADOQuery; stBar: TStatusBar): Boolean;
  public
    { Public declarations }
  end;

var
  rptCustTransDetailsF: TrptCustTransDetailsF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, searchCode_ADO,
  search2, sort2;

{$R *.dfm}

procedure TrptCustTransDetailsF.UpdateFilter;
begin
  with qryCustTrance do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      Getcto(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftString);
    Parameters.ParamByName('PersonID1To').Value :=
      Getcto(myParams.ParamValues['PersonID1'], ftString);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      Getcto(myParams.ParamValues['StuffCode'], ftLargeint);

    Parameters.ParamByName('DateFrom2').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo2').Value :=
      Getcto(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('PersonID1From2').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftString);
    Parameters.ParamByName('PersonID1To2').Value :=
      Getcto(myParams.ParamValues['PersonID1'], ftString);

    lblDate.Caption := ' ازتاريخ ' + qryCustTrance.Parameters.ParamByName
      ('DateFrom').Value + ' تا ' + qryCustTrance.Parameters.ParamByName
      ('DateTo').Value;
  end; // with
  with qryCustomers do
  begin
    Active := False;
    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftString);
    Parameters.ParamByName('CustIDto').Value :=
      Getcto(myParams.ParamValues['PersonID1'], ftString);
    Active := True;
  end; // with
end;

procedure TrptCustTransDetailsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcBSell, 'Date', ' تاريخ ', 'تاريخ', ftDate, dvDefaults,
        APPBank.StartYear, APPBank.endYear, ciSimple, '', '');

      AddItemFilter(GetFilter, TFilterPersonID1Limit,False, LblPerson1.Caption,
        'WHERE GroupType in(0) ))');

//      AddItem(DMF.adcBSell, 'PersonID1', ['كد', 'مشتري', 'کد ملی'], ftInteger,
//        dvMinMax, '', '', ciLookup,
//        'SELECT DISTINCT CustID,CustName,NationalID FROM Vu_CustomersGroups WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE     (GroupType = 0))) ',
//        'SELECT min(CustID),max(CustID) FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE     (GroupType = 0))) ');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMF.adcBSell, 'StuffCode', 'كالا', 'كد', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode,c_StuffName from StuffCoding ',
      // 'select min(c_StuffCode),max(c_StuffCode) from StuffCoding');
      if showmodal = mrok then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally;
      free;
    end; // try
end;

procedure TrptCustTransDetailsF.actSendToExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCustTransDetailsF.actPrint1Execute(Sender: TObject);
begin
  inherited;
  try
    qryCustTrance.DisableControls;
    qryCustomers.DisableControls;
    InitReportFile(ppReport1, 'rptCustTransDetails') // ppReport1.Print;
  finally
    qryCustTrance.EnableControls;
    qryCustomers.EnableControls;
  end; // try
end;

procedure TrptCustTransDetailsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('StuffCode') = nil then
    close;
end;

procedure TrptCustTransDetailsF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCustTrance do
  begin
    Active := False;

    Parameters.ParamByName('PersonID1From').Value :=
      qryCustomersCustID.AsInteger;
    Parameters.ParamByName('PersonID1To').Value := qryCustomersCustID.AsInteger;
    Parameters.ParamByName('BedType1').Value := BedType;
    Parameters.ParamByName('BedType2').Value := BedType;
    Parameters.ParamByName('BedType3').Value := BedType;
    Parameters.ParamByName('PersonID1From2').Value :=
      qryCustomersCustID.AsInteger;
    Parameters.ParamByName('PersonID1To2').Value :=
      qryCustomersCustID.AsInteger;
    Active := True;
  End; // with
end;

procedure TrptCustTransDetailsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TrptCustTransDetailsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptCustTransDetailsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 13, True);
end;

procedure TrptCustTransDetailsF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click
end;

procedure TrptCustTransDetailsF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Txt := 'SELECT     dbo.Recipts.PersonID1, dbo.Customers.CustName    ' +
    ' FROM dbo.Customers INNER JOIN dbo.Recipts ON dbo.Customers.CustID = dbo.Recipts.PersonID1 GROUP BY dbo.Recipts.PersonID1, dbo.Customers.CustName ';
  // Txt:=Txt+IfThen(FilterStore,'AND (Recipts.StoreID BETWEEN '+IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');                                          //) CustInfo
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' مشتريان  ', Txt,
    ['كد', 'مشتري'], Results, [50, 150], alLeft);
  if b then
    qryCustomers.Locate('CustID', Results[0], []);
end;

procedure TrptCustTransDetailsF.qryCustTranceAfterOpen(DataSet: TDataSet);
// var
// sum:array of Currency;
begin
  inherited;
  PriceOnStoreType(qryCustTrance.fieldbyname('storeid').AsInteger, DBGrid1,
    qryCustTrance);
  CalcSumFileds_2(qryCustTrance, StatusBar1);
  // if opt.EntityDisplay then
  // StatusBar1.Panels[3].Text:= '  مقدار : ' +CurrToStr(CalcSumFileds(qryCustTrance,'entity'));
  // if opt.WeightDisplay then
  // StatusBar1.Panels[2].Text:= '  وزن : ' + CurrToStr(CalcSumFileds(qryCustTrance,'weight'));
  // StatusBar1.Panels[1].Text:=  ' بد :' + CurrToStr(CalcSumFileds(qryCustTrance,'bed'));
  // StatusBar1.Panels[0].Text:=  ' بس :'  +  CurrToStr(CalcSumFileds(qryCustTrance,'bes')) ;
end;

procedure TrptCustTransDetailsF.FormCreate(Sender: TObject);
begin
  inherited;
  BedType := var_glb_gParam;
  if BedType = 6 then
    Caption := 'گزارش سفارشات و اعلام بار';
  // cloned:=TADOQuery.Create(DMf.adcBSell);
  Entity_Weight(DBGrid1);
end;

procedure TrptCustTransDetailsF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptCustTransDetailsF.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ' + qryCustTrance.Parameters.ParamByName('DateFrom').Value +
    'تا تاريخ ' + qryCustTrance.Parameters.ParamByName('DateTo').Value;
end;

procedure TrptCustTransDetailsF.ppLabel21GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از كد كالاي ' + GetcFrom(myParams.ParamValues['StuffCode'],
    ftLargeint) + ' تا ' + Getcto(myParams.ParamValues['StuffCode'],
    ftLargeint);
end;

procedure TrptCustTransDetailsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptCustTransDetailsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustTrance);
end;

procedure TrptCustTransDetailsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustTrance);
end;

function TrptCustTransDetailsF.CalcSumFileds_2(qry: TADOQuery;
  stBar: TStatusBar): Boolean;
var
  i, j, c: Integer;
  REfld: ARRAY OF Currency;
  PnlStr: String;
begin
  Result := True;
  try
    with qry do
    begin
      SetLength(REfld, qry.Fields.Count);
      DisableControls;
      First;
      while not eof do
      begin
        for i := 0 to qry.Fields.Count - 1 do
        begin
          if Fields[i].CustomConstraint = '1' then
            REfld[i] := REfld[i] + Fields[i].AsCurrency;
        end; // for
        Next;
      end; // while
      EnableControls;
    end; // with
  except
    Result := False;
  end; // try
  c := -1;
  stBar.Panels.Clear;
  for j := qry.Fields.Count - 1 downto 0 do
  begin
    if qry.Fields[j].CustomConstraint = '1' then
    begin
      Inc(c);
      stBar.Panels.Add;
      if TBCDField(qry.Fields[j]).Currency then
        PnlStr := CurrToStrF(REfld[j], ffCurrency, 0)
      else
        PnlStr := CurrToStr(REfld[j]);
      PnlStr := qry.Fields[j].DisplayLabel + ' : ' + PnlStr;
      stBar.Panels[c].Width := length(PnlStr) + 110;
      stBar.Panels[c].Text := PnlStr;
    end;
  end;
end;

procedure TrptCustTransDetailsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCustTransDetailsF.BtnPrintClick(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptCustTransDetailsF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  try
    qryCustTrance.DisableControls;
    qryCustomers.DisableControls;
    InitReportFile(ppReport1, 'rptCustTransDetailsNoBedBes', True)
  finally
    qryCustTrance.EnableControls;
    qryCustomers.EnableControls;
  end; // try
end;

end.
