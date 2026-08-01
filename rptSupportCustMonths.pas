// mahmood
unit rptSupportCustMonths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppModule,
  ppStrtch, ppRegion, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, Mask, SumDBGrid,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TrptSupportCustMonthsF = class(Ttemplate2MDIF)
    SrcSupport: TDataSource;
    qrySupport: TADOQuery;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actFilter: TAction;
    actSendExel: TAction;
    actShowForm: TAction;
    actPrint: TAction;
    actSort: TAction;
    qrySupportc_StuffName: TStringField;
    qrySupportprice1: TBCDField;
    qrySupportprice2: TBCDField;
    qrySupportprice3: TBCDField;
    qrySupportprice4: TBCDField;
    qrySupportprice5: TBCDField;
    qrySupportprice6: TBCDField;
    qrySupportprice7: TBCDField;
    qrySupportprice8: TBCDField;
    qrySupportprice9: TBCDField;
    qrySupportprice10: TBCDField;
    qrySupportprice11: TBCDField;
    qrySupportprice12: TBCDField;
    qrySupportSum: TBCDField;
    BitBtn1: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    GroupBox1: TGroupBox;
    SpeedButton3: TSpeedButton;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBNavigator2: TDBNavigator;
    BitBtn2: TBitBtn;
    qryCustomer: TADOQuery;
    SrcCustomer: TDataSource;
    qryCustomerCustID: TIntegerField;
    qryCustomerCustName: TStringField;
    ppReport1: TppReport;
    qrySupportPersonID1: TIntegerField;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine41: TppLine;
    ppLabel7: TppLabel;
    ppLine42: TppLine;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine71: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLabel37: TppLabel;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLabel38: TppLabel;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText24: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppDBText29: TppDBText;
    ppLine97: TppLine;
    ppDBText30: TppDBText;
    ppLine98: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLabel39: TppLabel;
    ppLine99: TppLine;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppDBCalc39: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppLine116: TppLine;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppLabel40: TppLabel;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppDBCalc52: TppDBCalc;
    SumGrid1: TSumGrid;
    qrySupportStuffCode: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSendExelExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure qryCustomerAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptSupportCustMonthsF: TrptSupportCustMonthsF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, search2,
  sort2, searchCode_ADO;

{$R *.dfm}

procedure TrptSupportCustMonthsF.UpdateFilter;
begin
  with qryCustomer do
  begin
    Active := False;
    Parameters.ParamByName('CustIdFrom').Value :=
      GetcFrom(myParams.ParamValues['Cust'], ftInteger);
    Parameters.ParamByName('CustIdTo').Value :=
      GetcTo(myParams.ParamValues['Cust'], ftInteger);
    Active := True;
  end; // with
  with qrySupport do
  begin
    Active := False;
    Parameters.ParamByName('YaersFrom').Value :=
      GetcFrom(myParams.ParamValues['Yaer'], ftInteger);
    Parameters.ParamByName('YaersTo').Value :=
      GetcTo(myParams.ParamValues['Yaer'], ftInteger);
  end; // with
end;

procedure TrptSupportCustMonthsF.FormCreate(Sender: TObject);
begin
  inherited;
  // actFilter.Execute;
end;

procedure TrptSupportCustMonthsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptSupportCustMonthsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TrptSupportCustMonthsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptSupportCustMonthsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TrptSupportCustMonthsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute;
end;

procedure TrptSupportCustMonthsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySupport);
end;

procedure TrptSupportCustMonthsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySupport);
end;

procedure TrptSupportCustMonthsF.ComboBox1Change(Sender: TObject);
begin
  inherited;
  // UpdateFilter;
end;

procedure TrptSupportCustMonthsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptSupportCustMonthsF.ppLabel8GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptSupportCustMonthsF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TrptSupportCustMonthsF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptSupportCustMonthsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  with qrySupport do
    try
      DisableControls;
      ppReport1.Print;
    finally
      EnableControls;
    end; // try
end;

procedure TrptSupportCustMonthsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'Cust', ' „‘ —Ì«‰ ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT Customers.CustID, Customers.CustName FROM  Recipts ' +
        ' INNER JOIN Customers ON Recipts.PersonID1 = Customers.CustID WHERE (Recipts.ReciptType = 14) ',
        'SELECT  MIN(Customers.CustID), MAX(Customers.CustID) FROM Recipts INNER JOIN Customers ON Recipts.PersonID1 = Customers.CustID WHERE (Recipts.ReciptType = 14)');
      AddItem(DMF.adcBSell, 'Yaer', ' ”«· ', '”«·', ftInteger, dvMinMax, '', '',
        ciCombo, 'SELECT [date], name FROM (SELECT LEFT(ReciptStartDate, 2) AS date , LEFT(ReciptStartDate, 2) AS name FROM dbo.Recipts '
        + ' WHERE (ReciptType = 14) AND (NOT (LEFT(ReciptStartDate, 2) IS NULL)) UNION ALL '
        + ' SELECT LEFT(ReciptEndDate, 2) AS date , LEFT(ReciptStartDate, 2) AS name FROM dbo.Recipts WHERE (ReciptType = 14) AND (NOT (LEFT(ReciptStartDate, 2) IS NULL))) a GROUP BY [date], name ',
        '');
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

procedure TrptSupportCustMonthsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Yaer') = nil then
    close;
end;

procedure TrptSupportCustMonthsF.SpeedButton3Click(Sender: TObject);
var
  txt: String;
  result: array [0 .. 1] of String;
begin
  inherited;
  txt := ' SELECT dbo.Customers.CustID, dbo.Customers.CustName FROM  dbo.Recipts INNER JOIN '
    + ' dbo.Customers ON dbo.Recipts.PersonID1 = dbo.Customers.CustID WHERE (dbo.Recipts.ReciptType = 14) '
    + ' GROUP BY dbo.Customers.CustID, dbo.Customers.CustName HAVING  (dbo.Customers.CustID BETWEEN '
    + IntToStr(GetcFrom(myParams.ParamValues['Cust'], ftInteger)) + ' AND ' +
    IntToStr(GetcTo(myParams.ParamValues['Cust'], ftInteger)) + ')';
  if searchCode_ADOF.SearchCode2(DMF.adcBSell, '„‘ —Ì«‰', txt,
    ['ﬂœ', ' ⁄‰Ê«‰  '], result, [50, 100], alLeft) then
    qryCustomer.Locate('CustID', result[0], []);
end;

procedure TrptSupportCustMonthsF.qryCustomerAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qrySupport do
  begin
    Active := False;
    Parameters.ParamByName('CustId').Value := DataSet.Fieldbyname('CustID')
      .AsInteger;
    Active := True;
  end; // with
end;

end.
