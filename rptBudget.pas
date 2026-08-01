// mahmood
unit rptBudget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, DBCtrls, ppBands, ppCache,  Math, FaraConsts ,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppDBPipe, ComCtrls, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptBudgetF = class(Ttemplate2MDIF)
    qryBudget: TADOQuery;
    SrcBudget: TDataSource;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actSendExel: TAction;
    ppDBPipeline1: TppDBPipeline;
    BitBtn3: TBitBtn;
    actFormShow: TAction;
    StatusBar1: TStatusBar;
    LblLimit: TLabel;
    actSort: TAction;
    qryBudgetBudgetCode: TIntegerField;
    qryBudgetBed: TBCDField;
    qryBudgetBes: TBCDField;
    qryBudgetBed2: TBCDField;
    qryBudgetBes2: TBCDField;
    qryBudgetbed3: TBCDField;
    qryBudgetbes3: TBCDField;
    qryBudget_BudgetName: TStringField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppShape2: TppShape;
    ppLine13: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine14: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLine12: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel13: TppLabel;
    ppLine19: TppLine;
    ppLabel14: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine24: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText6: TppDBText;
    ppLine17: TppLine;
    ppDBText7: TppDBText;
    ppLine18: TppLine;
    ppDBText8: TppDBText;
    ppLine20: TppLine;
    ppLine23: TppLine;
    ppLine11: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLine25: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLine26: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLine27: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine30: TppLine;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qryBudgetAfterOpen(DataSet: TDataSet);
    procedure actFormShowExecute(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptBudgetF: TrptBudgetF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO,
  search2, sort2,
  rptBudgetTransaction;

{$R *.dfm}

procedure TrptBudgetF.UpdateFilter;
begin
  with qryBudget do
  begin
    Active := False;
    Parameters.ParamByName('BudgetCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['BudgetID'], ftInteger);
    Parameters.ParamByName('BudgetCodeTo').Value :=
      GetcTo(myParams.ParamValues['BudgetID'], ftInteger);
    Parameters.ParamByName('CustomerID1From').Value :=
      GetcFrom(myParams.ParamValues['CustomerID1'], ftInteger);
    Parameters.ParamByName('CustomerID1To').Value :=
      GetcTo(myParams.ParamValues['CustomerID1'], ftInteger);
    Parameters.ParamByName('FormDateFrom').Value :=
      GetcFrom(myParams.ParamValues['FormDate'], ftDate);
    Parameters.ParamByName('FormDateTo').Value :=
      GetcTo(myParams.ParamValues['FormDate'], ftDate);
    Parameters.ParamByName('AidInfoDateFrom').Value :=
      GetcFrom(myParams.ParamValues['AidInfoDate'], ftDate);
    Parameters.ParamByName('AidInfoDateTo').Value :=
      GetcTo(myParams.ParamValues['AidInfoDate'], ftDate);

    Parameters.ParamByName('UserAdmin').Value := ifthen(User.PowerAdmin, 1, 0);
    Parameters.ParamByName('UserID').Value := User.ID;

    Active := True;
  end; // with
end;

procedure TrptBudgetF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'CustomerID1', ' »«‰ﬂ/’‰œÊﬁœ«— ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID , CustName FROM Customers WHERE CustomerGrpID in(1,2)',
        'select Min(CustID),Max(CustID) From Customers ');
      AddItem(DMf.adcBSell, 'FormDate', '  «—ÌŒ ›—„ ', ' «—ÌŒ', ftDate,
        dvMinMax, '', '', ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''',Max(FormDate) FROM   Forms ');
      AddItem(DMf.adcBSell, 'AidInfoDate', '  «—ÌŒ «ÿ·«⁄«  ﬂ„ﬂÌ ', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '',
        'SELECT Min(AidInfoDate),Max(AidInfoDate) FROM   Forms ');
      AddItem(DMf.adcAccounting, 'BudgetID', ' »ÊœÃÂ ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT BudgetTopicID , BudgetCaption_L1 FROM acc.BudgetTopics ',
        'SELECT Min(BudgetTopicID),Max(BudgetTopicID) From acc.BudgetTopics');
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

procedure TrptBudgetF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('FormDate') = nil then
    close;
end;

procedure TrptBudgetF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBudgetF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptBudgetF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptBudgetF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptBudgetF.ppLabel16GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + qryBudget.Parameters.ParamByName('DateFrom').Value +
    '  « ' + qryBudget.Parameters.ParamByName('DateTo').Value
end;

procedure TrptBudgetF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actFormShow.Execute
end;

procedure TrptBudgetF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudget);
end;

procedure TrptBudgetF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudget);
end;

procedure TrptBudgetF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryBudget.DisableControls;
    InitReportFile(ppReport1, Self.Name, True);
  finally
    qryBudget.EnableControls;
  end; // try
end;

procedure TrptBudgetF.qryBudgetAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[6].Text := ' ⁄œ«œ ﬂœ =  ' + IntToStr(qryBudget.RecordCount);
  StatusBar1.Panels[4].Text := '»” =  ' +
    CurrToStrF(CalcSumFileds(qryBudget, 'bes'), ffCurrency, 0);
  StatusBar1.Panels[5].Text := '»œ =  ' +
    CurrToStrF(CalcSumFileds(qryBudget, 'bed'), ffCurrency, 0);
  StatusBar1.Panels[2].Text := '»” =  ' +
    CurrToStrF(CalcSumFileds(qryBudget, 'bes2'), ffCurrency, 0);
  StatusBar1.Panels[3].Text := '»œ =  ' +
    CurrToStrF(CalcSumFileds(qryBudget, 'bed2'), ffCurrency, 0);
  StatusBar1.Panels[0].Text := '»” =  ' +
    CurrToStrF(CalcSumFileds(qryBudget, 'bes3'), ffCurrency, 0);
  StatusBar1.Panels[1].Text := '»œ =  ' +
    CurrToStrF(CalcSumFileds(qryBudget, 'bed3'), ffCurrency, 0);
end;

procedure TrptBudgetF.actFormShowExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TrptBudgetTransactionF, rptBudgetTransactionF, Self);
  rptBudgetTransactionF.qryBudget.Locate('BudgetTopicID',
    qryBudget.FieldByName('BudgetCode').AsInteger, [])
end;

end.
