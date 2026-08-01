unit rptBalanceService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ADODB, Grids, Vcl.DBGrids, ComCtrls, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppCache, ppModule, daDataModule, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TrptBalanceServiceF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryBalanceService: TADOQuery;
    SrcqryBalanceService: TDataSource;
    qryBalanceServicePersonID2: TIntegerField;
    qryBalanceServiceCustName: TStringField;
    qryBalanceServiceReciptType: TWordField;
    qryBalanceServiceReciptCaption: TStringField;
    qryBalanceServiceEntity: TFloatField;
    qryBalanceServiceweight: TFloatField;
    qryBalanceServiceServiceValue: TBCDField;
    StatusBar1: TStatusBar;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    actFilter: TAction;
    ppDBPipeline2: TppDBPipeline;
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
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine33: TppLine;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText9: TppDBText;
    ppLine10: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSysVarPageNumber: TppSystemVariable;
    BitBtn3: TBitBtn;
    pplbprintdate: TppLabel;
    ppLabel3: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel10: TppLabel;
    ppShape1: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    actShowForm: TAction;
    BitBtn2: TBitBtn;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
   // procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure pplbprintdateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryBalanceServiceAfterOpen(DataSet: TDataSet);
   // procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    procedure UpdateFilter;
  public

    { Public declarations }
  end;

var
  rptBalanceServiceF: TrptBalanceServiceF;

implementation

uses DM, search2, sort2, GlobalPro, filter_ADO, FilterClass_ADO,TrancService_Cust2;

{$R *.dfm}

 procedure TrptBalanceServiceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBalanceService);
end;

procedure TrptBalanceServiceF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBalanceServiceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBalanceService);
end;

procedure TrptBalanceServiceF.actFilterExecute(Sender: TObject);
begin
 inherited;
   with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMf.adcBSell,'PersonID2',' „‘ —Ì ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT CustID , CustName FROM Customers ','select Min(CustID),Max(CustID) From Customers');
     AddItem(DMF.adcBSell,'ReciptDate','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
       'SELECT  '''+APPBank.StartYear+''',Max(ReciptDate) FROM Recipts ');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
 end;//with
end;

procedure TrptBalanceServiceF.UpdateFilter;
begin
  with qryBalanceService do begin
    Active:=False;
    Parameters.ParamByName('PersonID2From').Value:=GetcFrom(myParams.ParamValues['PersonID2'],ftInteger);
    Parameters.ParamByName('PersonID2To').Value:=GetcTo(myParams.ParamValues['PersonID2'],ftInteger);
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['ReciptDate'],ftDate);
    Active:=True;
  end;//with
end;

procedure TrptBalanceServiceF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate')=nil then close;
  Entity_Weight(DBGrid1);
end;

procedure TrptBalanceServiceF.pplbprintdateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TrptBalanceServiceF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TrptBalanceServiceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryBalanceService.DisableControls;
    InitReportFile(ppReport1,'rptBalanceService');
  finally
    qryBalanceService.EnableControls;
  end;//try

end;

procedure TrptBalanceServiceF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
   Text:=APPBank.CompanyName;
end;

procedure TrptBalanceServiceF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
    Text:='«“  «—ÌŒ'+qryBalanceService.Parameters.ParamByName('DateFrom').Value+'  « '+qryBalanceService.Parameters.ParamByName('DateTo').Value ;
end;

procedure TrptBalanceServiceF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='«“ „‘ —Ì'+IntToStr(qryBalanceService.Parameters.ParamByName('PersonID2From').Value)+'  « '+IntToStr(qryBalanceService.Parameters.ParamByName('PersonID2To').Value);
end;

procedure TrptBalanceServiceF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryBalanceService.FieldByName('PersonID2'));
end;

procedure TrptBalanceServiceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptBalanceServiceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
end;

procedure TrptBalanceServiceF.actShowFormExecute(Sender: TObject);

begin
  inherited;
//  if  Pos('trancservice_cust2f'+IntToStr(2)+'@' ,opt.MenuNames)<>0 then begin
    MyParams.CreateParam(ftInteger,'Number',ptInput).AsString:='0;999999999';
    MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=myParams.ParamValues['ReciptDate'];
    MyParams.CreateParam(ftInteger,'PersonID',ptInput).AsString:=
      qryBalanceService.Fieldbyname('PersonID2').AsString+';'+qryBalanceService.Fieldbyname('PersonID2').AsString;
    CreateMDIForm2(TTrancService_Cust2F,TrancService_Cust2F,Self,200);
//  end//
//  else Warn('ÊÌ—«Ì‘ Ê ‰„«Ì‘ «Ì‰ ›—„ œ— ”ÿÕ œ” —”Ì ‘„« ‰„Ìù»«‘œ.');

end;

procedure TrptBalanceServiceF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute;
end;

procedure TrptBalanceServiceF.FormCreate(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
end;

procedure TrptBalanceServiceF.qryBalanceServiceAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text:=' ⁄œ«œ='+IntToStr(qryBalanceService.RecordCount);
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text:='„ﬁœ«—='+CurrToStr(CalcSumFileds(qryBalanceService, 'entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text:='Ê“‰='+CurrToStr(CalcSumFileds(qryBalanceService,'weight'));
   StatusBar1.Panels[0].Text:='„»·€='+CurrToStrF(CalcSumFileds(qryBalanceService,'ServiceValue'),ffCurrency,0)
end;

end.
