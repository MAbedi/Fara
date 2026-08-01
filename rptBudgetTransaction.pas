// mahmood
unit rptBudgetTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, DBCtrls, Mask, Grids, Vcl.DBGrids, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppDBPipe, ComCtrls, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TrptBudgetTransactionF = class(Ttemplate2MDIF)
    qryForms: TADOQuery;
    SrcForms: TDataSource;
    DBGrid1: TDBGrid;
    LblPerson1: TLabel;
    EdtBudgetID: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBTexBudgetTopicID: TDBText;
    DBNavigator1: TDBNavigator;
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
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine33: TppLine;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBPipeline2: TppDBPipeline;
    ppLabel17: TppLabel;
    ppDBText9: TppDBText;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText8: TppDBText;
    BitBtn3: TBitBtn;
    actFormShow: TAction;
    StatusBar1: TStatusBar;
    LblLimit: TLabel;
    ppShape7: TppShape;
    ppLine19: TppLine;
    ppDBCalc17: TppDBCalc;
    ppLabel23: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppLabel33: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLine21: TppLine;
    actSort: TAction;
    qryBudgetBudgetTopicID: TIntegerField;
    qryBudgetBudgetCaption: TStringField;
    qryFormsFormNumber: TIntegerField;
    qryFormsFormDate: TStringField;
    qryFormsCustomerID1: TIntegerField;
    qryFormsCustomerID2: TIntegerField;
    qryFormsAmount: TBCDField;
    qryFormsFomNote: TStringField;
    qryFormsCustomerName2: TStringField;
    qryFormsFormCaption: TStringField;
    qryFormsFormID: TIntegerField;
    qryFormsFormType: TWordField;
    qryFormsBudgetCode: TIntegerField;
    qryFormsCustName1: TStringField;
    qryFormsCustName2: TStringField;
    ppDBText15: TppDBText;
    ppLabel12: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    qryFormsServerID: TIntegerField;
    qryFormsYearID: TIntegerField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryBudgetAfterScroll(DataSet: TDataSet);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure qryFormsAfterOpen(DataSet: TDataSet);
    procedure actFormShowExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdtBudgetIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptBudgetTransactionF: TrptBudgetTransactionF;

implementation

uses DM,  GlobalPro, filter_ADO, FilterClass_ADO,
     searchCode_ADO, search2, sort2,
  FormFunctions;

{$R *.dfm}

procedure TrptBudgetTransactionF.UpdateFilter;
begin
  with qryForms do begin
    Active:=False;
    Parameters.ParamByName('CustID1From').Value:=GetcFrom(myParams.ParamValues['PersonID1'],ftInteger);
    Parameters.ParamByName('CustID1To').Value:=GetcTo(myParams.ParamValues['PersonID1'],ftInteger);
    Parameters.ParamByName('CustID2From').Value:=GetcFrom(myParams.ParamValues['PersonID2'],ftInteger);
    Parameters.ParamByName('CustID2To').Value:=GetcTo(myParams.ParamValues['PersonID2'],ftInteger);
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['FormDate'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['FormDate'],ftDate);
//  Active:=True;
  end;//with
  with qryBudget do begin
    Active:=False;
    Parameters.ParamByName('BudgetIDFrom').Value:=GetcFrom(myParams.ParamValues['BudgetID'],ftDate);
    Parameters.ParamByName('BudgetIDTo').Value:=GetcTo(myParams.ParamValues['BudgetID'],ftDate);
    Active:=True;
  end;//with
end;

procedure TrptBudgetTransactionF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMf.adcBSell,'PersonID2',' „‘ —Ì ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT CustID , CustName FROM Customers WHERE CustomerGrpID in(0,3)','select Min(CustID),Max(CustID) From Customers ');
      AddItem(DMf.adcBSell,'PersonID1',' »«‰ﬂ/’‰œÊﬁœ«— ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT CustID , CustName FROM Customers WHERE CustomerGrpID in(1,2)','select Min(CustID),Max(CustID) From Customers ');
      AddItem(dmF.adcBSell,'FormDate','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
        'SELECT  '''+APPBank.StartYear+''',Max(FormDate) FROM   Forms ');
      AddItem(DMf.adcAccounting,'BudgetID',' »ÊœÃÂ ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
      'SELECT BudgetTopicID , BudgetCaption_L1 FROM acc.BudgetTopics ',
      'select Min(BudgetTopicID),Max(BudgetTopicID) From acc.BudgetTopics');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TrptBudgetTransactionF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('FormDate')=nil then close;
end;

procedure TrptBudgetTransactionF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,8);
end;

procedure TrptBudgetTransactionF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptBudgetTransactionF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBudgetTransactionF.qryBudgetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryForms do begin
    Active:=False;
    Parameters.ParamByName('Budget').Value:=qryBudget.FieldByName('BudgetTopicID').AsInteger;
    Active:=True;
  end;//with
end;

procedure TrptBudgetTransactionF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TrptBudgetTransactionF.ppSystemVariable1GetText(
  Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TrptBudgetTransactionF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TrptBudgetTransactionF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='«“  «—ÌŒ '+qryForms.Parameters.ParamByName('DateFrom').Value +'  « '+qryForms.Parameters.ParamByName('DateTo').Value
end;

procedure TrptBudgetTransactionF.qryFormsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text:=' ⁄œ«œ ›—„ =  '+IntToStr(qryForms.RecordCount);
  StatusBar1.Panels[0].Text:='Ã„⁄ =  '+CurrToStrF(CalcSumFileds(qryForms, 'Amount'),ffCurrency,0) + ' —Ì«· ' ;
end;

procedure TrptBudgetTransactionF.actFormShowExecute(Sender: TObject);
begin
  inherited;
  ShowFormTypesForms(qryForms,Self);
end;

procedure TrptBudgetTransactionF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actFormShow.Execute
end;

procedure TrptBudgetTransactionF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptBudgetTransactionF.SpeedButton1Click(Sender: TObject);
var
  b:Boolean;
  Results:  array[0..1] of String;
  Txt:String;
begin
  inherited;
  Txt:='SELECT BudgetTopicID,BudgetCaption FROM acc.BudgetTopics ';
  b:=searchCode_ADOF.SearchCode2(DMF.adcAccounting,'»ÊœÃÂ Â«',Txt,['òœ','‰«„ '],Results,[50,150],alLeft);
  if b then begin
    qryBudget.Locate('BudgetTopicID',Results[0],[]);
  end;//if
end;

procedure TrptBudgetTransactionF.EdtBudgetIDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=32 then SpeedButton1.Click
end;

procedure TrptBudgetTransactionF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryForms);
  
end;

procedure TrptBudgetTransactionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryForms);
end;

procedure TrptBudgetTransactionF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryBudget.DisableControls;
    qryForms.DisableControls;
    ppReport1.Print;
  finally
    qryBudget.EnableControls;
    qryForms.EnableControls;
  end;//try
end;

end.
