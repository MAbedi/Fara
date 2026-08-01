// mahmood
unit rptBudgetRevenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, DBCtrls, Grids, Vcl.DBGrids, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppDBPipe, ComCtrls, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TrptBudgetRevenuF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
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
    ppReport1: TppReport;
    qryBudgetBudgetCode1: TStringField;
    qryBudgetBudgetCode2: TStringField;
    qryBudgetInCredit: TFMTBCDField;
    qryBudgetLastCredit: TFMTBCDField;
    qryBudgetCredit: TFMTBCDField;
    qryBudgetBudgetCaption1: TStringField;
    qryBudgetBudgetCaption2: TStringField;
    qryBudgetBudgetCaption3: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
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
    ppLabel11: TppLabel;
    ppLine16: TppLine;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
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
    ppLine23: TppLine;
    ppLine11: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLine25: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine27: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLabel10: TppLabel;
    ppLine13: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine14: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine22: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine24: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine26: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine28: TppLine;
    ppLine31: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppLine45: TppLine;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppLine46: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine10: TppLine;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLine32: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine33: TppLine;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine34: TppLine;
    ppLine19: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppDBCalc17: TppDBCalc;
    ppLine39: TppLine;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppDBCalc20: TppDBCalc;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
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
  rptBudgetRevenuF: TrptBudgetRevenuF;

implementation

uses DM,  GlobalPro, filter_ADO, FilterClass_ADO,
     search2, sort2;

{$R *.dfm}

procedure TrptBudgetRevenuF.UpdateFilter;
begin
  with qryBudget do
  begin
    Active:=False;
    Parameters.ParamByName('DateFrom1').Value:=GetcFrom(myParams.ParamValues['FormDate'],ftDate);
    Parameters.ParamByName('DateFrom2').Value:=GetcFrom(myParams.ParamValues['FormDate'],ftDate);
    Parameters.ParamByName('DateTo1').Value:=GetcTo(myParams.ParamValues['FormDate'],ftDate);
    Parameters.ParamByName('DateTo2').Value:=GetcTo(myParams.ParamValues['FormDate'],ftDate);
//    Parameters.ParamByName('BudgetCodeFrom').Value:=GetcFrom(myParams.ParamValues['BudgetID'],ftInteger);
//    Parameters.ParamByName('BudgetCodeTo').Value:=GetcTo(myParams.ParamValues['BudgetID'],ftInteger);
//    Parameters.ParamByName('CustomerID1From').Value:=GetcFrom(myParams.ParamValues['CustomerID1'],ftInteger);
//    Parameters.ParamByName('CustomerID1To').Value:=GetcTo(myParams.ParamValues['CustomerID1'],ftInteger);
//    Parameters.ParamByName('AidInfoDateFrom').Value:=GetcFrom(myParams.ParamValues['AidInfoDate'],ftDate);
//    Parameters.ParamByName('AidInfoDateTo').Value:=GetcTo(myParams.ParamValues['AidInfoDate'],ftDate);
    Active:=True;
  end;//with
end;

procedure TrptBudgetRevenuF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(dmF.adcBSell,'FormDate','  «—ÌŒ ›—„ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
        'SELECT  '''+APPBank.StartYear+''',Max(FormDate) FROM   Forms ');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TrptBudgetRevenuF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('FormDate')=nil then close;
end;

procedure TrptBudgetRevenuF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
end;

procedure TrptBudgetRevenuF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptBudgetRevenuF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBudgetRevenuF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TrptBudgetRevenuF.ppSystemVariable1GetText(
  Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TrptBudgetRevenuF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TrptBudgetRevenuF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='«“  «—ÌŒ '+qryBudget.Parameters.ParamByName('DateFrom1').Value +'  « '+qryBudget.Parameters.ParamByName('DateTo1').Value
end;

procedure TrptBudgetRevenuF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actFormShow.Execute
end;

procedure TrptBudgetRevenuF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TrptBudgetRevenuF.FormCreate(Sender: TObject);
begin
  inherited;
  qryBudget.SQL.Text:=LowerCase(qryBudget.SQL.Text);
  qryBudget.SQL.Text:=StringReplace(qryBudget.SQL.Text,'accounting',DMF.ReadBankConfig('AccountDBName'),[rfReplaceAll]);
end;

procedure TrptBudgetRevenuF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudget);
end;

procedure TrptBudgetRevenuF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudget)
end;

procedure TrptBudgetRevenuF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryBudget.DisableControls;
    ppReport1.Print;
  finally
    qryBudget.EnableControls;
  end;//try
end;

procedure TrptBudgetRevenuF.qryBudgetAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[4].Text:=' ⁄œ«œ ﬂœ =  '+IntToStr(qryBudget.RecordCount);
  StatusBar1.Panels[2].Text:=CurrToStrF(CalcSumFileds(qryBudget, 'Credit'),ffCurrency,0);
  StatusBar1.Panels[3].Text:=CurrToStrF(CalcSumFileds(qryBudget,'LastCredit'),ffCurrency,0);
  StatusBar1.Panels[1].Text:=CurrToStrF(CalcSumFileds(qryBudget,'InCredit'),ffCurrency,0);
//  StatusBar1.Panels[0].Text:='»” =  '+CurrToStrF(CalcSumFileds('bes3'),ffCurrency,0);
end;

procedure TrptBudgetRevenuF.actFormShowExecute(Sender: TObject);
begin
  inherited;
//  CreateMDIForm2(TrptBudgetTransactionF,rptBudgetTransactionF,Self);
//  rptBudgetTransactionF.qryBudget.Locate('BudgetTopicID',qryBudget.FieldByName('BudgetCode').AsInteger,[])
end;

end.
