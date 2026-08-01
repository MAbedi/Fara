// mahmood
unit rptSupportMonths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppModule,
  ppStrtch, ppRegion, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, SumDBGrid, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TrptSupportMonthsF = class(Ttemplate2MDIF)
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
    ComboBox1: TComboBox;
    Label1: TLabel;
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
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine21: TppLine;
    ppLabel23: TppLabel;
    ppLine70: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppLabel1: TppLabel;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel20: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel21: TppLabel;
    ppLine19: TppLine;
    ppLine32: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine22: TppLine;
    ppLine20: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppDBText25: TppDBText;
    ppLine69: TppLine;
    ppDBText11: TppDBText;
    ppLine34: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel24: TppLabel;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine5: TppLine;
    ppLine3: TppLine;
    ppDBCalc13: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel26: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppLine37: TppLine;
    ppLine54: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine7: TppLine;
    ppLine60: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine1: TppLine;
    ppLine8: TppLine;
    ppDBCalc26: TppDBCalc;
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
  private
    { Private declarations }
    procedure InitComboYears;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptSupportMonthsF: TrptSupportMonthsF;

implementation

uses GlobalPro, DM, search2,
  sort2;

{$R *.dfm}

procedure TrptSupportMonthsF.UpdateFilter;
begin
  with qrySupport do begin
    Active:=False;
    Parameters.ParamByName('YaersFrom').Value:=strtoint(ComboBox1.Text);
    Parameters.ParamByName('YaersTo').Value:=strtoint(ComboBox1.Text);
    Active:=True;
  end;//with
end;


procedure TrptSupportMonthsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitComboYears;
  UpdateFilter;
end;

procedure TrptSupportMonthsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptSupportMonthsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
end;

procedure TrptSupportMonthsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptSupportMonthsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TrptSupportMonthsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute;
end;

procedure TrptSupportMonthsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySupport);
end;

procedure TrptSupportMonthsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySupport);
end;

procedure TrptSupportMonthsF.InitComboYears;
begin
with dmf.qryTmpTmp do begin
    try
      Active:=false;
      SQL.Text:='SELECT [date] FROM (SELECT LEFT(ReciptStartDate, 2) AS date FROM dbo.Recipts ' ;
			SQL.Add  ('WHERE (ReciptType = 14) AND (NOT (LEFT(ReciptStartDate, 2) IS NULL))');
			SQL.Add  ('UNION ALL');
			SQL.Add  ('SELECT LEFT(ReciptEndDate, 2) AS date FROM dbo.Recipts');
			SQL.Add  ('WHERE (ReciptType = 14) AND (NOT (LEFT(ReciptStartDate, 2) IS NULL))) a');
			SQL.Add  ('GROUP BY [date]');
      Active:=True;
    while not Eof do begin
      ComboBox1.Items.AddObject( FieldByName('date').AsString,TObject( RecNo));
      Next;
    end;//while
    finally
      Active:=false;
    end;//try
  end;//with
  if ComboBox1.Items.Count>0 then ComboBox1.ItemIndex:=0;
end;

procedure TrptSupportMonthsF.ComboBox1Change(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TrptSupportMonthsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TrptSupportMonthsF.ppLabel8GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate
end;

procedure TrptSupportMonthsF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=Caption
end;

procedure TrptSupportMonthsF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
   Text:=APPBank.CompanyName
end;

procedure TrptSupportMonthsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  with qrySupport do
  try
    DisableControls;
    ppReport1.Print;
  finally
    EnableControls;
  end;//try
end;

end.
