unit rptWorkCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, Buttons, StdCtrls, Mask, DB, ADODB,
  Grids, Vcl.DBGrids, ImgList, DBActns, ActnList, ExtCtrls, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppModule, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppStrtch, ppSubRpt, ppParameter,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions;

type
  TrptWorkCustomerF = class(Ttemplate2MDIF)
    dbgrdStuff: TDBGrid;
    dbgrdRecipts: TDBGrid;
    qryCustomers: TADOQuery;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    srcCustomers: TDataSource;
    grpCustomers: TGroupBox;
    DBEdit1: TDBEdit;
    btn: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryStuffs: TADOQuery;
    srcStuffs: TDataSource;
    qryStuffsc_StuffName: TStringField;
    qryStuffsUnitName: TStringField;
    actFilter: TAction;
    actShow: TAction;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    qryRecipts: TADOQuery;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsReciptCaption: TStringField;
    qryReciptsAcceptEntity: TFloatField;
    qryReciptsRollbackEntity: TFloatField;
    qryReciptsOutputEntity: TFloatField;
    qryReciptsUnitSellPrice: TFMTBCDField;
    qryReciptsTotalOutputPrice: TBCDField;
    qryReciptsItemNote: TStringField;
    srcRecipts: TDataSource;
    btnFilter: TBitBtn;
    btnShow: TBitBtn;
    btnPrint: TBitBtn;
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnSendToExcel: TBitBtn;
    qryReciptsReciptID: TIntegerField;
    ppDBCust: TppDBPipeline;
    ppDBStuffs: TppDBPipeline;
    ppDBRecipts: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel44: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLine4: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryStuffsStuffCode: TLargeintField;
    qryReciptsStuffCode: TLargeintField;
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure qryStuffsAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptWorkCustomerF: TrptWorkCustomerF;

implementation

uses DM, DateUtils, GlobalPro, FilterClass_ADO, filter_ADO, Recipts,
  FormFunctions, search2, sort2, searchCode_ADO;

{$R *.dfm}

procedure TrptWorkCustomerF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryStuffs do
  begin
    Close;
    Parameters.ParamByName('CustID').Value := DataSet.fieldbyname('CustID')
      .AsInteger;
    Open;
  end;
end;

procedure TrptWorkCustomerF.qryStuffsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryRecipts do
  begin
    Close;
    Parameters.ParamByName('StuffCode').Value :=
      DataSet.fieldbyname('StuffCode').AsLargeInt;
    Parameters.ParamByName('CustID').Value := qryCustomers.fieldbyname('CustID')
      .AsInteger;
    Open;
  end;
end;

procedure TrptWorkCustomerF.FormCreate(Sender: TObject);
begin
  inherited;
  case var_glb_gParam of
    12:
      begin
        qryRecipts.SQL.Add('AND (Recipts.ReciptType IN (10, 12))');
        qryStuffs.SQL.Add('AND (Recipts.ReciptType IN (10, 12))');
        lblCaption.Hint := '10, 12';
      end;
    11:
      begin
        qryRecipts.SQL.Add('AND (Recipts.ReciptType IN (11))');
        qryStuffs.SQL.Add('AND (Recipts.ReciptType IN (11))');
        Caption := 'ê“«—‘ ÕÊ«·Â ›—Ê‘ »—Õ”» „‘ —Ì Ê ﬂ«·«';
        lblCaption.Hint := '11';
      end;
  end;
end;

procedure TrptWorkCustomerF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(dbgrdStuff, 1, True);
  SetColSize(dbgrdRecipts, 8, True);
end;

procedure TrptWorkCustomerF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMf.adcBSell, 'custID', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT custid,custname from customers ',
        'select min(custid),max(custid) from customers');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', ' ﬂ«·« ', 'ﬂœ', ftLargeint, dvMinMax,
      // '', '', ciLookup, 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');

      AddItem(DMf.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts WHERE ReciptType IN(' +
        lblCaption.Hint + ')');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
end; // with

procedure TrptWorkCustomerF.UpdateFilter;
begin
  with qryRecipts do
  begin
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

  end;
  with qryStuffs do
  begin
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffTO').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
  end;
  with qryCustomers do
  begin
    Close;
    Parameters.ParamByName('CustFrom').Value :=
      GetcFrom(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('CustTo').Value :=
      GetcTo(myParams.ParamValues['custId'], ftInteger);
    Open;
  end;

end;

procedure TrptWorkCustomerF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts, ReciptsF);
end;

procedure TrptWorkCustomerF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close;
end;

procedure TrptWorkCustomerF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TrptWorkCustomerF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TrptWorkCustomerF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrdRecipts);
end;

procedure TrptWorkCustomerF.btnClick(Sender: TObject);
var
  txt: String;
  result: array [0 .. 1] of String;
begin
  inherited;
  txt := ' SELECT dbo.Customers.CustID, dbo.Customers.CustName FROM  dbo.Recipts INNER JOIN '
    + ' dbo.Customers ON dbo.Recipts.PersonID1 = dbo.Customers.CustID ' +
    ' WHERE (dbo.Recipts.ReciptType in (' + lblCaption.Hint + ')) ' +
    ' GROUP BY dbo.Customers.CustID, dbo.Customers.CustName ' +
    ' HAVING (dbo.Customers.CustID BETWEEN ' +
    IntToStr(GetcFrom(myParams.ParamValues['CustID'], ftInteger)) + ' AND ' +
    IntToStr(GetcTo(myParams.ParamValues['CustID'], ftInteger)) + ')';
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, '„‘ —Ì«‰', txt,
    ['ﬂœ', ' ⁄‰Ê«‰  '], result, [50, 100], alLeft) then
    qryCustomers.Locate('CustID', result[0], []);
end;

procedure TrptWorkCustomerF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'rptWorkCustomer', True)
end;

end.
