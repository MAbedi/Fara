unit TrancService_Cust2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ComCtrls, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TTrancService_Cust2F = class(Ttemplate2MDIF)
    lblLimit: TLabel;
    qryTrancService: TADOQuery;
    srcTrancService: TDataSource;
    DBGrid1: TDBGrid;
    qryTrancServicePersonID2: TIntegerField;
    qryTrancServiceCustName2: TStringField;
    qryTrancServiceReciptID: TIntegerField;
    qryTrancServiceReciptNumber: TIntegerField;
    qryTrancServiceReciptDate: TStringField;
    qryTrancServiceReciptType: TWordField;
    qryTrancServiceReciptCaption: TStringField;
    qryTrancServiceEntity: TFloatField;
    qryTrancServiceweight: TFloatField;
    qryTrancServiceServiceValue: TBCDField;
    qryTrancServicePersonID1: TIntegerField;
    qryTrancServiceCustName1: TStringField;
    qryCustomer: TADOQuery;
    qryCustomerCustID: TIntegerField;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    qryCustomerCustName: TStringField;
    srcCustomer: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    StatusBar1: TStatusBar;
    actFilter: TAction;
    actShowForm: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel14: TppLabel;
    ppLabel4: TppLabel;
    ppLabel3: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppLine11: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine38: TppLine;
    ppLine25: TppLine;
    ppDBText14: TppDBText;
    ppDBText13: TppDBText;
    ppDBText11: TppDBText;
    ppDBText9: TppDBText;
    ppDBText7: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    qryTrancServiceServerID: TIntegerField;
    qryTrancServiceYearID: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryCustomerAfterScroll(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryTrancServiceAfterOpen(DataSet: TDataSet);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
  private
    FormType:Integer;
    procedure UpdateFilter;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrancService_Cust2F: TTrancService_Cust2F;

implementation

uses DM, searchCode_ADO, GlobalPro, filter_ADO, FilterClass_ADO,
  sort2, search2, FormFunctions;

{$R *.dfm}

procedure TTrancService_Cust2F.SpeedButton1Click(Sender: TObject);
var
  b:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„‘ —Ì Â«','SELECT CustID, CustName FROM Customers '+
                                'WHERE(CustID BETWEEN '+IntToStr(qryCustomer.Parameters.ParamValues['CusIDFrom'])+'  AND '+IntToStr(qryCustomer.Parameters.ParamValues['CusIDTo'])+')'
                                                       ,['òœ','‰«„ '],Results,[50,150],alLeft);
  if b then begin
    qryCustomer.Locate('CustID',Results[0],[]);
  end;//if
end;

procedure TTrancService_Cust2F.qryCustomerAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryTrancService do begin
    Active:=False;
    Parameters.ParamByName('PersonCode').Value:=DataSet['CustID'];
    Active:=True;
  end;//with
end;

procedure TTrancService_Cust2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMf.adcBSell,'Number','‘„«—Â ›—„','‘„«—Â ',ftInteger,dvMinMax,'','',ciSimple,'','select Min(ReciptNumber),Max(ReciptNumber) From Recipts');
      AddItem(DMf.adcBSell,'Date',' «—ÌŒ','ﬂœ',ftDate,dvMinMax,'','',ciSimple,'',
        'select  '''+APPBank.StartYear+''',Max(ReciptDate) From Recipts');
      AddItem(DMf.adcBSell,'PersonID',' „‘ —Ì ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT CustID , CustName FROM Customers ','select Min(CustID),Max(CustID) From Customers ');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with

end;

procedure TTrancService_Cust2F.UpdateFilter;
begin
  with qryTrancService do begin
    Active:=False;
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['Date'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['Date'],ftDate);
    Parameters.ParamByName('RecNumberFrom').Value:=GetcFrom(myParams.ParamValues['Number'],ftInteger);
    Parameters.ParamByName('RecNumberTo').Value:=GetcTo(myParams.ParamValues['Number'],ftInteger);
    Active:=True;
    lblLimit.Caption:='«“  «—ÌŒ ' +Parameters.ParamValues['DateFrom'] +'  '+
                      ' «  «—ÌŒ ' +Parameters.ParamValues['DateTo'];
  end;//with
  with qryCustomer do begin
    Active:=False;
    Parameters.ParamByName('CusIDFrom').Value:=GetcFrom(myParams.ParamValues['PersonID'],ftInteger);
    Parameters.ParamByName('CusIDTo').Value:=GetcTo(myParams.ParamValues['PersonID'],ftInteger);
    Active:=True;
  end;//with

end;

procedure TTrancService_Cust2F.FormShow(Sender: TObject);
begin
  inherited;
  if FormType=200 then begin
    UpdateFilter;
  end else begin myParams.Clear; actFilter.Execute; end;
  if myParams.FindParam('Number')=nil then Close;
end;

procedure TTrancService_Cust2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TTrancService_Cust2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTrancService);
end;

procedure TTrancService_Cust2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTrancService);
end;

procedure TTrancService_Cust2F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryTrancService,Self);
end;

procedure TTrancService_Cust2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TTrancService_Cust2F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType:=var_glb_gParam;
  Entity_Weight(DBGrid1);
end;

procedure TTrancService_Cust2F.qryTrancServiceAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text:='„ﬁœ«— :' + CurrToStr(CalcSumFileds(qryTrancService, 'Entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text:='Ê“‰ :' + CurrToStr(CalcSumFileds(qryTrancService,'weight'));
  StatusBar1.Panels[0].Text:='„»·€ Œœ„«  :' + CurrToStrF(CalcSumFileds(qryTrancService,'ServiceValue'),ffCurrency,0);
end;

procedure TTrancService_Cust2F.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TTrancService_Cust2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
   Text:=GetPrintDate;
end;

procedure TTrancService_Cust2F.ppLabel20GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
 Text:=lblLimit.Caption;
end;

procedure TTrancService_Cust2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,'TrancService_Cust2');
end;

procedure TTrancService_Cust2F.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TTrancService_Cust2F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryTrancService.FieldByName('PersonID1'));
end;

procedure TTrancService_Cust2F.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TTrancService_Cust2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute;
end;

procedure TTrancService_Cust2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,7);
end;

procedure TTrancService_Cust2F.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=' ﬂœ Ê ‰«„ Œœ„«  œÂ‰œÂ : ' +DBEdit1.Text+' '+DBEdit2.Text
end;

end.
