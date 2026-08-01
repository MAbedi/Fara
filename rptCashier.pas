unit rptCashier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptCashierF = class(Ttemplate2MDIF)
    qryCashier: TADOQuery;
    qryCashierFormNumber: TIntegerField;
    qryCashierFormCaption: TStringField;
    qryCashierFormDate: TStringField;
    qryCashierFomNote: TStringField;
    qryCashierCustomerID2: TIntegerField;
    qryCashierCustName: TStringField;
    qryCashierCashAmount: TBCDField;
    qryCashierBankAmount: TBCDField;
    qryCashierCustName2: TStringField;
    SrcCashier: TDataSource;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    qryCashierBedBes: TWordField;
    actVijehPrint: TAction;
    BitBtn2: TBitBtn;
    qryCashiercustID: TIntegerField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    BitBtn4: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    DBGrid1: TCedarDbgrid;
    actShowForm: TAction;
    BitBtn3: TBitBtn;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qryCashierAfterOpen(DataSet: TDataSet);
    procedure actVijehPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
  private
    OrginalSql: String;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCashierF: TrptCashierF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, DBGrid2Print, shamsiDate, FormFunctions;

{$R *.dfm}

procedure TrptCashierF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcBSell, 'FormDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'SELECT     MAX(FormDate), MAX(FormDate) FROM         Forms');

      AddItem(DMF.adcBSell, 'GroupType', 'ê—ÊÂ', '', ftUnknown, dvDefaults,
        'True', '', ciCheck,
        'SELECT  1 as GroupType,''»«‰ﬂ''  as GroupTypeName FROM  Config union all '
        + 'SELECT  2 as GroupType,''’‰œÊﬁœ«—'' as GroupTypeName FROM  Config ',
        '');
      AddItem(DMF.adcBSell, 'CustForShowForm', '„‘ —Ì/»«‰ﬂ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID, CustName FROM Customers INNER JOIN  CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + 'WHERE     (CustomersGroup.GroupType IN (1, 2)) ',
        'Select Min(CustID),Max(CustID) FROM Customers INNER JOIN  CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + 'WHERE     (CustomersGroup.GroupType IN (1, 2)) ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TrptCashierF.UpdateFilter;
var
  Date_: TDateTime;
  s: String;
begin
  s := GetcFrom(myParams.ParamValues['GroupType'], ftString);
  if s = '' then
    s := '1,2';

  Date_ := Shamsi2Miladi(GetcFrom(myParams.ParamValues['FormDate'], ftDate));
  Date_ := Date_ - 1;
  with qryCashier do
  begin
    Active := False;
    SQL.Text := StringReplace(OrginalSql, ':GroupType', s, [rfReplaceAll]);
    Parameters.ParamByName('Cust1From').Value :=
      GetcFrom(myParams.ParamValues['CustForShowForm'], ftInteger);
    Parameters.ParamByName('Cust1To').Value :=
      GetcTo(myParams.ParamValues['CustForShowForm'], ftInteger);
    Parameters.ParamByName('Cust2From').Value :=
      GetcFrom(myParams.ParamValues['CustForShowForm'], ftInteger);
    Parameters.ParamByName('Cust2To').Value :=
      GetcTo(myParams.ParamValues['CustForShowForm'], ftInteger);

    Parameters.ParamByName('Cust3From').Value :=
      GetcFrom(myParams.ParamValues['CustForShowForm'], ftInteger);
    Parameters.ParamByName('Cust3To').Value :=
      GetcTo(myParams.ParamValues['CustForShowForm'], ftInteger);

//    Parameters.ParamByName('Cust4From').Value :=
//      GetcFrom(myParams.ParamValues['CustForShowForm'], ftInteger);
//    Parameters.ParamByName('Cust4To').Value :=
//      GetcTo(myParams.ParamValues['CustForShowForm'], ftInteger);
//    --------- OR (Forms.CustomerID1 BETWEEN :Cust4From AND :Cust4To)

    Parameters.ParamByName('FormDateFrom').Value :=
      GetcFrom(myParams.ParamValues['FormDate'], ftDate);
    Parameters.ParamByName('FormDateTo').Value :=
      GetcTo(myParams.ParamValues['FormDate'], ftDate);

    Parameters.ParamByName('FormDateTo1').Value := miladi2Shamsi(Date_);

    // Parameters.ParamByName('FormDateFrom2').Value:=GetcFrom(myParams.ParamValues['FormDate'],ftDate);
    Parameters.ParamByName('FormDateTo2').Value :=
      GetcTo(myParams.ParamValues['FormDate'], ftDate);


    // Parameters.ParamByName('FormDateTo').Value:=GetcTo(myParams.ParamValues['FormDate'],ftDate);

    Active := True;
  end; // with
end;

procedure TrptCashierF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('FormDate') = nil then
    close;

end;

procedure TrptCashierF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if DBGrid1.DataSource.DataSet.FieldByName('BedBes').AsInteger IN [0, 1] then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TrptCashierF.qryCashierAfterOpen(DataSet: TDataSet);
var
  CashAmount, BankAmount: Currency;
begin
  inherited;
  CashAmount := 0;
  BankAmount := 0;
  With qryCashier do
  begin
    DisableControls;
    while not Eof do
    begin
      if FieldByName('BedBes').AsInteger = 1 then
        CashAmount := CashAmount + FieldByName('CashAmount').AsCurrency;
      BankAmount := BankAmount + FieldByName('BankAmount').AsCurrency;
      Next;
    end; // while
    EnableControls;
  end; // With
end;

procedure TrptCashierF.actVijehPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptCashierF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCashierF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptCashierF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCashierF.actPrintExecute(Sender: TObject);
begin
  inherited;
  SeletedPrint(ppDBPipeline1, DBGrid1);
  InitReportFile(ppReport1, 'rptCashier', True);
end;

procedure TrptCashierF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowFormTypesForms(qryCashier, Self);
end;

procedure TrptCashierF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSql := qryCashier.SQL.Text;
  DBGrid1.SetFooter4Sum([]);
end;

end.
