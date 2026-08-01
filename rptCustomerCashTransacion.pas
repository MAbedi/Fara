unit rptCustomerCashTransacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, ppDB, ppDBPipe,
  ppBands, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppModule, ComCtrls,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptCustomerCashTracsacionF = class(Ttemplate2MDIF)
    qryCashTransItem: TADOQuery;
    srcCashTransItem: TDataSource;
    qryCashTransItemCustomerID1: TIntegerField;
    qryCashTransItemFormID: TIntegerField;
    qryCashTransItemFormNumber: TIntegerField;
    qryCashTransItemFormDate: TStringField;
    qryCashTransItemFormtype: TWordField;
    qryCashTransItemFormCaption: TStringField;
    qryCashTransItemFomNote: TStringField;
    qryCashTransItemCheckDate: TStringField;
    qryCashTransItemAccountNumber: TStringField;
    qryCashTransItemBankName: TStringField;
    qryCashTransItembed: TBCDField;
    qryCashTransItembes: TBCDField;
    qryCashTransItemkind: TIntegerField;
    qryCashTransItemCustForShowForm: TIntegerField;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    qryCustomer: TADOQuery;
    qryCustomerCustName: TStringField;
    qryCustomerCustID: TIntegerField;
    LblPerson1: TLabel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    SrcCustomers: TDataSource;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    actShowFrom: TAction;
    BitBtn2: TBitBtn;
    actSendToExcel: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actPrint: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine28: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLine4: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine23: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine6: TppLine;
    ppLine5: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppShape7: TppShape;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppLabel4: TppLabel;
    StatusBar1: TStatusBar;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    qryCashTransItemServerID: TIntegerField;
    qryCashTransItemYearID: TIntegerField;
    qryCashTransItemAidInfoNo: TStringField;
    qryCashTransItemAidInfoDate: TStringField;
    ADOQuery1: TADOQuery;
    qryCashTransItemchecknumber: TStringField;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryCustomerAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actShowFromExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel29GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryCashTransItemAfterOpen(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
  private
    // function  CalculateTotal(fldname:String): Currency;
    procedure updateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCustomerCashTracsacionF: TrptCustomerCashTracsacionF;

implementation

uses filter_ADO, DM, GlobalPro, FilterClass_ADO, searchCode_ADO,
  search2, sort2,
  FormFunctions, Filter_ADO_Const;

{$R *.dfm}
// function TrptCustomerCashTracsacionF.CalculateTotal(fldname:String): Currency;
// var
// qry:  TADOQuery;
// begin
// qry:=TADOQuery.Create(Self);
// try
// with qry do begin
// Clone(qryCashTransItem,ltReadOnly);
// Result:=0;
// First;
// while not eof do begin
// Result:=Result + fieldbyname(fldname).AsCurrency;
// Next;
// end;//while
// end;//with
// finally
// qry.Free;
// end;//try
// end;

procedure TrptCustomerCashTracsacionF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmF.adcBSell, 'Date', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''', max(FormDate) from Forms');

      AddItemFilter(GetFilter, TFilterPersonID1Limit,False, LblPerson1.Caption,
        'WHERE GroupType in(0) ))');

//      AddItem(dmF.adcBSell, 'PersonID1', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
//        '', ciLookup,
//        'SELECT CustID, CustName FROM Customers WHERE (CustomerGrpID IN ' +
//        '(SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE (GroupType = 0))) ',
//        'Select Min(CustID),max(CustID) FROM Customers WHERE (CustomerGrpID IN'
//        + ' (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE (GroupType = 0))) ');


      if ShowModal = mrOk then
      begin
        GetFilterString;
        updateList;
      end; // if
    finally
      Free;
    end; // try

  end; // with
end;

procedure TrptCustomerCashTracsacionF.updateList;
begin
  with qryCashTransItem do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['date'], ftDate);
    Parameters.ParamByName('Dateto').Value :=
      Getcto(myParams.ParamValues['date'], ftDate);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
  end; // with
  with qryCustomer do
  begin
    Active := False;
    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftDate);
    Parameters.ParamByName('CustIDTo').Value :=
      Getcto(myParams.ParamValues['PersonID1'], ftDate);
    Active := True;
  end; // with
end;

procedure TrptCustomerCashTracsacionF.SpeedButton1Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(dmF.adcBSell, c, 'Ã” ÃÊ ﬂœ',
    'SELECT CustID,CustName FROM Customers WHERE CustID BETWEEN ' +
    IntToStr(qryCustomer.Parameters.ParamByName('CustIDFrom').Value) + ' AND ' +
    IntToStr(qryCustomer.Parameters.ParamByName('CustIDTo').Value),
    ['‘„«—Â „‘ —Ì', '‰«„ „‘ —Ì '], alLeft) <> '' then
    qryCustomer.locate('CustID', c, []);

end;

procedure TrptCustomerCashTracsacionF.qryCustomerAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCashTransItem do
  begin
    Active := False;
    Parameters.ParamByName('CustIDFrom').Value := DataSet['custid'];
    Parameters.ParamByName('CustIDTo').Value := DataSet['custid'];
    Active := True;
  end; // with

end;

procedure TrptCustomerCashTracsacionF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    Close;
end;

procedure TrptCustomerCashTracsacionF.actShowFromExecute(Sender: TObject);
begin
  inherited;
  case qryCashTransItem.FieldByName('Kind').AsInteger of
    0:
      Warn('»—«Ì ‰Ê⁄ «ÿ·«⁄«  " ‰ﬁ· «“ ﬁ»· " ›—„Ì ÊÃÊœ ‰œ«—œ.!');
    1, 2:
      ShowFormTypesForms(qryCashTransItem, Self);
    3:
      ShowReciptTypes(qryCashTransItem, Self);
  end; // case
end;

procedure TrptCustomerCashTracsacionF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCustomerCashTracsacionF.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ' + qryCashTransItem.Parameters.ParamByName('DateFrom').Value
    + '  « ' + qryCashTransItem.Parameters.ParamByName('DateTo').Value;
end;

procedure TrptCustomerCashTracsacionF.ppLabel29GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptCustomerCashTracsacionF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptCustomerCashTracsacionF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,Self.Name );
end;

procedure TrptCustomerCashTracsacionF.qryCashTransItemAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text := ' »” «‰ﬂ«— = ' +
    CurrToStrF(CalcSumFileds(qryCashTransItem, 'bes'), ffCurrency, 0);
  StatusBar1.Panels[1].Text := '»œÂﬂ«— = ' +
    CurrToStrF(CalcSumFileds(qryCashTransItem, 'bed'), ffCurrency, 0);
end;

procedure TrptCustomerCashTracsacionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCashTransItem);
end;

procedure TrptCustomerCashTracsacionF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCashTransItem);
end;

end.
