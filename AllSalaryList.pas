unit AllSalaryList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, Grids, DBGrids, ppModule, raCodMod, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppRegion;

type
  TAllSalaryListF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    srcSum: TDataSource;
    qrySum: TADOQuery;
    srcSalary: TDataSource;
    qrySalary: TADOQuery;
    qryWage: TADOQuery;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator2: TDBNavigator;
    qryDec: TADOQuery;
    actFilter: TAction;
    actSort: TAction;
    actExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qrySums_u_m: TStringField;
    qrySumsumWagePrice: TBCDField;
    qrySumsumExtraWagePrice1: TBCDField;
    qrySumsumExtraWagePrice2: TBCDField;
    qrySumsumExtraWagePrice3: TBCDField;
    qrySumsumExtraWagePrice4: TBCDField;
    qrySumsumExtraWagePrice5: TBCDField;
    qrySumsumExtraWagePrice6: TBCDField;
    qrySumsumExtraWagePrice7: TBCDField;
    qrySumsumExtraWagePrice8: TBCDField;
    qrySumsumExtraWagePrice9: TBCDField;
    qrySumsumExtraWagePrice10: TBCDField;
    qrySumsumExtraWagePrice11: TBCDField;
    qrySumsumExtraWagePrice12: TBCDField;
    qrySumsumExtraWagePrice13: TBCDField;
    qrySumsumOtherExtraWagePrice: TBCDField;
    qrySumsumSumWagePrice: TBCDField;
    qrySumsumDecPrice1: TBCDField;
    qrySumsumDecPrice2: TBCDField;
    qrySumsumDecPrice4: TBCDField;
    qrySumsumDecPrice5: TBCDField;
    qrySumsumDecPrice6: TBCDField;
    qrySumsumDecPrice7: TBCDField;
    qrySumsumInsouranceEmployerPrice: TBCDField;
    qrySumsumInsouranceEmployeePrice: TBCDField;
    qrySumsumOtheremployerPrice: TBCDField;
    qrySumsumOtherEmployeePrice: TBCDField;
    qrySumsumOtherDec: TBCDField;
    qrySumsumpayment: TBCDField;
    qrySumsumTaxPrice: TBCDField;
    qrySumsumSumdecPrice: TBCDField;
    actPrint: TAction;
    qrySalaryInfoID: TIntegerField;
    qrySalaryName_L1: TStringField;
    qrySalaryWagePrice: TBCDField;
    qrySalaryExtraWagePrice1: TBCDField;
    qrySalaryExtraWagePrice2: TBCDField;
    qrySalaryExtraWagePrice3: TBCDField;
    qrySalaryExtraWagePrice4: TBCDField;
    qrySalaryExtraWagePrice5: TBCDField;
    qrySalaryExtraWagePrice6: TBCDField;
    qrySalaryExtraWagePrice7: TBCDField;
    qrySalaryExtraWagePrice8: TBCDField;
    qrySalaryExtraWagePrice9: TBCDField;
    qrySalaryExtraWagePrice10: TBCDField;
    qrySalaryExtraWagePrice11: TBCDField;
    qrySalaryExtraWagePrice12: TBCDField;
    qrySalaryExtraWagePrice13: TBCDField;
    qrySalaryOtherExtraWagePrice: TBCDField;
    qrySalarySumWagePrice: TBCDField;
    qrySalaryDecPrice1: TBCDField;
    qrySalaryDecPrice2: TBCDField;
    qrySalaryDecPrice3: TBCDField;
    qrySalaryDecPrice4: TBCDField;
    qrySalaryDecPrice5: TBCDField;
    qrySalaryDecPrice6: TBCDField;
    qrySalaryDecPrice7: TBCDField;
    qrySalaryInsouranceEmployerPrice: TBCDField;
    qrySalaryInsouranceEmployeePrice: TBCDField;
    qrySalaryOtheremployerPrice: TBCDField;
    qrySalaryOtherEmployeePrice: TBCDField;
    qrySalaryTaxPrice: TBCDField;
    qrySalaryOtherDec: TBCDField;
    qrySalarySumdecPrice: TBCDField;
    qrySalarypayment: TBCDField;
    qrySumsumDecPrice3: TBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel21: TppLabel;
    w1: TppLabel;
    w2: TppLabel;
    w4: TppLabel;
    w3: TppLabel;
    w11: TppLabel;
    w10: TppLabel;
    w9: TppLabel;
    w8: TppLabel;
    ppLabel43: TppLabel;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    w5: TppLabel;
    w12: TppLabel;
    w6: TppLabel;
    w14: TppLabel;
    w7: TppLabel;
    w13: TppLabel;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine33: TppLine;
    ppLine38: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel34: TppLabel;
    d1: TppLabel;
    d8: TppLabel;
    d9: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine39: TppLine;
    ppDetailBand2: TppDetailBand;
    ppLine45: TppLine;
    dw1: TppDBText;
    dw2: TppDBText;
    dw4: TppDBText;
    dw3: TppDBText;
    dw7: TppDBText;
    dw6: TppDBText;
    dw5: TppDBText;
    dw8: TppDBText;
    dw9: TppDBText;
    dw11: TppDBText;
    dw10: TppDBText;
    dw14: TppDBText;
    dw13: TppDBText;
    dw12: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine17: TppLine;
    ppLine24: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine25: TppLine;
    dd1: TppDBText;
    dd6: TppDBText;
    ppLine26: TppLine;
    dd2: TppDBText;
    dd4: TppDBText;
    dd3: TppDBText;
    dd7: TppDBText;
    dd10: TppDBText;
    dd9: TppDBText;
    dd8: TppDBText;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    dd5: TppDBText;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText9: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape3: TppShape;
    ppLabel6: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
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
    ppDBCalc26: TppDBCalc;
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
    ppLine75: TppLine;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLine60: TppLine;
    ppLabel5: TppLabel;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
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
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppLine57: TppLine;
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppDBCalc63: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    raCodeModule1: TraCodeModule;
    d2: TppLabel;
    d3: TppLabel;
    d4: TppLabel;
    d5: TppLabel;
    d6: TppLabel;
    d7: TppLabel;
    BitBtn1: TBitBtn;
    actChart: TAction;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    actShow: TAction;
    BitBtn3: TBitBtn;
    qrySalaryExtraWagePrice14: TBCDField;
    qrySalaryExtraWagePrice15: TBCDField;
    qrySalaryExtraWagePrice16: TBCDField;
    qrySalaryExtraWagePrice17: TBCDField;
    qrySalaryExtraWagePrice18: TBCDField;
    qrySalaryExtraWagePrice19: TBCDField;
    qrySalaryDecPrice8: TBCDField;
    qrySalaryDecPrice9: TBCDField;
    qrySalaryDecPrice10: TBCDField;
    qrySalaryDecPrice11: TBCDField;
    qrySalaryDecPrice12: TBCDField;
    qrySalaryDecPrice13: TBCDField;
    qrySalaryDecPrice14: TBCDField;
    qrySumsumExtraWagePrice14: TBCDField;
    qrySumsumExtraWagePrice15: TBCDField;
    qrySumsumExtraWagePrice16: TBCDField;
    qrySumsumExtraWagePrice17: TBCDField;
    qrySumsumExtraWagePrice18: TBCDField;
    qrySumsumDecPrice8: TBCDField;
    qrySumsumDecPrice9: TBCDField;
    qrySumsumDecPrice10: TBCDField;
    qrySumsumDecPrice11: TBCDField;
    qrySumsumDecPrice12: TBCDField;
    qrySumsumDecPrice13: TBCDField;
    qrySumsumExtraWagePrice19: TBCDField;
    qrySumsumDecPrice14: TBCDField;
    qrySalaryDecPrice15: TBCDField;
    qrySalaryDecPrice16: TBCDField;
    qrySalaryDecPrice17: TBCDField;
    qrySalaryDecPrice18: TBCDField;
    qrySalaryDecPrice19: TBCDField;
    qrySumsumDecPrice15: TBCDField;
    qrySumsumDecPrice16: TBCDField;
    qrySumsumDecPrice17: TBCDField;
    qrySumsumDecPrice18: TBCDField;
    qrySumsumDecPrice19: TBCDField;
    qrySalaryDecPrice20: TBCDField;
    qrySalaryDecPrice21: TBCDField;
    qrySalaryDecPrice22: TBCDField;
    qrySalaryDecPrice23: TBCDField;
    qrySalaryDecPrice24: TBCDField;
    qrySumsumDecPrice20: TBCDField;
    qrySumsumDecPrice21: TBCDField;
    qrySumsumDecPrice22: TBCDField;
    qrySumsumDecPrice23: TBCDField;
    qrySumsumDecPrice24: TBCDField;
    qrySalaryExtraWagePrice20: TBCDField;
    qrySalaryExtraWagePrice21: TBCDField;
    qrySalaryExtraWagePrice22: TBCDField;
    qrySalaryExtraWagePrice23: TBCDField;
    qrySalaryExtraWagePrice24: TBCDField;
    qrySalaryExtraWagePrice25: TBCDField;
    qrySalaryExtraWagePrice26: TBCDField;
    qrySalaryExtraWagePrice27: TBCDField;
    qrySalaryExtraWagePrice28: TBCDField;
    qrySalaryExtraWagePrice29: TBCDField;
    qrySalaryDecPrice25: TBCDField;
    qrySalaryDecPrice26: TBCDField;
    qrySalaryDecPrice27: TBCDField;
    qrySalaryDecPrice28: TBCDField;
    qrySalaryDecPrice29: TBCDField;
    qrySumsumExtraWagePrice20: TBCDField;
    qrySumsumExtraWagePrice21: TBCDField;
    qrySumsumExtraWagePrice22: TBCDField;
    qrySumsumExtraWagePrice23: TBCDField;
    qrySumsumExtraWagePrice24: TBCDField;
    qrySumsumExtraWagePrice25: TBCDField;
    qrySumsumExtraWagePrice26: TBCDField;
    qrySumsumExtraWagePrice27: TBCDField;
    qrySumsumExtraWagePrice28: TBCDField;
    qrySumsumExtraWagePrice29: TBCDField;
    qrySumsumDecPrice25: TBCDField;
    qrySumsumDecPrice26: TBCDField;
    qrySumsumDecPrice27: TBCDField;
    qrySumsumDecPrice28: TBCDField;
    qrySumsumDecPrice29: TBCDField;
    qrySalaryInsouranceEmployerPrice2: TBCDField;
    qrySalaryInsouranceEmployeePrice2: TBCDField;
    qrySumsumInsouranceEmployerPrice2: TBCDField;
    qrySumsumInsouranceEmployeePrice2: TBCDField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure actChartExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
  private
    capDec:array [0..29]of string;
    capWage:array [0..29]of string;
    procedure MakeReport;
    procedure setGride;
    procedure UpdateFilter;
    procedure Makeqry;
    procedure setDisplayLabel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AllSalaryListF: TAllSalaryListF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, sort2, Math, search2,
  TreeChart, SalaryList4Office2;

{$R *.dfm}

procedure TAllSalaryListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
     AddItem(DMf.adcSalary,'ArchiveID',' ‘„«—Â »«Ìê«‰Ì','‘„«—Â',ftInteger,dvDefaults,'0','',ciSingle,'','');
     AddItem(DMf.adcSalary,'Mounth',' „«Â','‘„«—Â',ftInteger,dvDefaults,IntToStr(var_glb_CurrentMonth),'',ciSingle,'','');
     AddItem(DMf.adcSalary,'InfoID','⁄‰Ê«‰ ”«“„«‰','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
             'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM   pay.FormsInfo  WHERE  FormType = 12',
             'SELECT MIN(InfoID), MAX(InfoID)  FROM Pay.FormsInfo  where FormType =12 GROUP BY FormType');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with

end;

procedure TAllSalaryListF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
   if myParams.FindParam('Mounth')=nil then Close;
end;

procedure TAllSalaryListF.Makeqry;
var
 AllSumSql,Salarysql:string;
 W:integer;
begin
  qrySum.SQL.Text:='select ''Ã„⁄ ﬂ·'' as s_u_m ';
  qryWage.First;
  qryDec.First;
  w:=1;
  with qrySalary do begin
   Active:=false;
     SQL.Text:='SELECT  FormsInfo_2.InfoID, FormsInfo_2.InfoName_L1 AS Name_L1 ,'+
               'sum(case when FormTypes.SalaryKind in(1,2,5,6) then price else 0 end) as WagePrice ';
     qrySum.SQL.Add(',sum(allSum.WagePrice) as sumWagePrice');
     while W <=30 do begin
      if not qryWage.Eof  then begin
       SQL.Add(',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated.SalaryID='+qryWage.Fieldbyname('FormInfoID').AsString
              +' then price else 0 end) as ExtraWagePrice'+IntToStr(w));
       qrySum.SQL.Add(',sum(allSum.ExtraWagePrice'+IntToStr(w)+' ) as sumExtraWagePrice'+IntToStr(w));
       qryWage.Next ;
      end
      else begin
       SQL.Add(', sum( case FixedCalculated.SalaryID when -1  then price else 0 end ) as ExtraWagePrice'+IntToStr(w) );
       qrySum.SQL.Add(',sum(allSum.ExtraWagePrice'+IntToStr(w)+' ) as sumExtraWagePrice'+IntToStr(w) );
      end;
       w:=W+1 ;
     end ;// while
     if qryWage.Fieldbyname('FormInfoID').AsString<>'' then
       SQL.Add(',sum(case when  FormTypes.SalaryKind in(3,13) and FixedCalculated.SalaryID>'
               +qryWage.Fieldbyname('FormInfoID').AsString+' then price else 0 end) as OtherExtraWagePrice' )
      else   SQL.Add(', sum( case FixedCalculated.SalaryID when -1  then price else 0 end ) as OtherExtraWagePrice' );
     qrySum.SQL.Add(',sum(allSum.OtherExtraWagePrice) as sumOtherExtraWagePrice' );

     SQL.Add(',sum(case when FormTypes.SalaryKind in(1,2,3,5,6,13) then price else 0 end) as SumWagePrice ');
     qrySum.SQL.Add(',sum(allSum.SumWagePrice) as sumSumWagePrice ');
     w:=1;
     while W <=30 do begin
      if not qryDec.Eof  then begin
       SQL.Add(
               ',sum(case when  FixedCalculated.SalaryID='+qryDec.Fieldbyname('FormInfoID').AsString
               +' then price else 0 end) as DecPrice'+IntToStr(w) );
       qrySum.SQL.Add(',sum(allSum.DecPrice'+IntToStr(w)+') as sumDecPrice'+IntToStr(w) );
       qryDec.Next ;
      end
      else begin
       SQL.Add(', sum( case FixedCalculated.SalaryID when -1  then price else 0 end ) as DecPrice'+IntToStr(w) );
       qrySum.SQL.Add(',sum(allSum.DecPrice'+IntToStr(w)+') as sumDecPrice'+IntToStr(w) );
      end;
      w:=W+1 ;
     end ;// while

      SQL.Add  (',sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=4 and FormsInfo_1.InfoID=1 )');
      SQL.Add  ('then price else 0 end) as InsouranceEmployerPrice ,');
      SQL.Add  ('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=2 and FormsInfo_1.InfoID=1 )');
      SQL.Add  ('then price else 0 end) as InsouranceEmployeePrice ,');
      SQL.Add  ('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=4 and FormsInfo_1.InfoID=2 )');
      SQL.Add  ('then price else 0 end) as InsouranceEmployerPrice2 ,');
      SQL.Add  ('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=2 and FormsInfo_1.InfoID=2 )');
      SQL.Add  ('then price else 0 end) as InsouranceEmployeePrice2 ,');
      SQL.Add  ('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=4 and FormsInfo_1.InfoID>2 )');
      SQL.Add  ('then price else 0 end) as OtheremployerPrice ,');
      SQL.Add  ('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=2 and FormsInfo_1.InfoID>2 )');
      SQL.Add  ('then price else 0 end) as OtherEmployeePrice ,');

      SQL.Add  ('sum(case when ( FormTypes.SalaryKind = 11 and FixedCalculated.bedbes=2) then price else 0 end ) as TaxPrice,');

      if qryWage.Fieldbyname('FormInfoID').AsString<>'' then
       SQL.Add ('sum(case when  FormTypes.SalaryKind in(9,12) and FixedCalculated.SalaryID>'+
                 qryDec.Fieldbyname('FormInfoID').AsString+' then price else 0 end) as OtherDec,' )
      else SQL.Add ('sum( case FixedCalculated.SalaryID when -1  then price else 0 end ) as  OtherDec,');
      SQL.Add  ('sum(case when ( FormTypes.SalaryKind in(9,12)  or ( FormTypes.SalaryKind = 11 and FixedCalculated.bedbes=2) or ') ;
      SQL.Add  ('( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind =2 )) then price else 0 end) as SumdecPrice');
      SQL.Add  (',(sum(case when FormTypes.SalaryKind in(1,2,3,5,6,13) then price else 0 end)-');
      SQL.Add  ('sum(case when ( FormTypes.SalaryKind in(9,12)  or ( FormTypes.SalaryKind = 11 and FixedCalculated.bedbes=2) or ') ;
      SQL.Add  ('( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind =2 )) then price else 0 end)) as payment');
      SQL.Add  ('FROM FormTypes INNER JOIN');
      SQL.Add  ('FormsInfo FormsInfo_1 ON FormTypes.FormType = FormsInfo_1.FormType RIGHT OUTER JOIN');
      SQL.Add  ('FixedCalculated ON FormsInfo_1.FormInfoID = FixedCalculated.SalaryID LEFT OUTER JOIN');
      SQL.Add  ('FormsInfo FormsInfo_2 ON FixedCalculated.OfficeCode = FormsInfo_2.FormInfoID');
      SQL.Add  ('WHERE (FixedCalculated.Mounth =:Mounth) AND (FixedCalculated.ArchiveID = :ArchiveID ) and');
      SQL.Add  ('FormsInfo_2.InfoID between :InfoIDFrom and :InfoIDTo');
      SQL.Add  ('Group By FormsInfo_2.InfoID, FormsInfo_2.InfoName_L1');
      Salarysql:=SQL.Text;
//   SQL.SaveToFile('c:\SQL.txt');
   end ;// with
   with qrySum do begin
     SQL.Add  (',sum(allSum.InsouranceEmployerPrice) as sumInsouranceEmployerPrice,sum(allSum.InsouranceEmployeePrice) as sumInsouranceEmployeePrice , ');
     SQL.Add  ('sum(allSum.InsouranceEmployerPrice2) as sumInsouranceEmployerPrice2,sum(allSum.InsouranceEmployeePrice2) as sumInsouranceEmployeePrice2 ,');
     SQL.Add  ('sum(allSum.OtheremployerPrice) as sumOtheremployerPrice ,sum(allSum.OtherEmployeePrice) as sumOtherEmployeePrice,');
     SQL.Add  ('sum(allSum.TaxPrice) as sumTaxPrice,sum(allSum.OtherDec) as sumOtherDec');
     SQL.Add  (',sum(allSum.SumdecPrice) as sumSumdecPrice,sum(allsum.payment) as sumpayment');
     SQL.Add  ('from ('+Salarysql+')allSum');
//    SQL.SaveToFile('c:\jjh2.txt');
   end;//with
end;

procedure TAllSalaryListF.MakeReport;
begin
    w1.Text:=capWage[0];
    w2.Text:=capWage[1];
    w3.Text:=capWage[2];
    w4.Text:=capWage[3];
    w5.Text:=capWage[4];
    w6.Text:=capWage[5];
    w7.Text:=capWage[6];
    w8.Text:=capWage[7];
    w9.Text:=capWage[8];
    w10.Text:=capWage[9];
    w11.Text:=capWage[10];
    w12.Text:=capWage[11];
    w13.Text:=capWage[12];
    w14.Text:=capWage[13];
 //   w15.Text:=capWage[14];
//    w16.Text:=capWage[15];
//    w17.Text:=capWage[16];
//    w18.Text:=capWage[17];
//    w19.Text:=capWage[18];
//    w20.Text:=capWage[19];
    d1.Text:=capdec[0];
    d2.Text:=capdec[1];
    d3.Text:=capdec[2];
    d4.Text:=capdec[3];
    d5.Text:=capdec[4];
    d6.Text:=capdec[5];
    d7.Text:=capdec[6];
//    d8.Text:=capdec[7];
//    d9.Text:=capdec[8];
//    d10.Text:=capdec[9];
//    d11.Text:=capdec[10];
//    d12.Text:=capdec[11];
//    d13.Text:=capdec[12];
//    d14.Text:=capdec[13];
//    d15.Text:=capdec[14];

end;

procedure TAllSalaryListF.setDisplayLabel;
var
 W:integer;
begin
 //--------------set  DisplayLabel-----------
 with qrySalary do begin
//    FieldByName('InfoID').DisplayLabel:='ﬂœ';
//    FieldByName('InfoID').Tag:=3;
//    FieldByName('Name_L1').DisplayLabel:='⁄‰Ê«‰';
//    FieldByName('Name_L1').Tag:=3;
//  //    FieldByName('InfoName_L2').DisplayLabel:=qryFormeCaption.Fieldbyname('FormCaption_L2').AsString';
//    FieldByName('WagePrice').DisplayLabel:='Ã„⁄ ÕﬁÊﬁ Ê „“«Ì«';
//
//    FieldByName('payment').DisplayLabel:='ﬁ«»· Å—œ«Œ ';
//    FieldByName('SumWagePrice').DisplayLabel:='Ã„⁄ ﬂ· «÷«›«  ';
//    FieldByName('InsouranceEmployerPrice').DisplayLabel:='»Ì„Â ”Â„ ﬂ«—›—„« ';
//    FieldByName('InsouranceEmployeePrice').DisplayLabel:='»Ì„Â ”Â„ ﬂ«—„‰œ';
//    FieldByName('OtheremployerPrice').DisplayLabel:='»Ì„Â ”Â„ ﬂ«—›—„« 2';
//    FieldByName('OtherEmployeePrice').DisplayLabel:='»Ì„Â ”Â„ ﬂ«—„‰œ2';
//    FieldByName('SumdecPrice').DisplayLabel:='Ã„⁄ ﬂ”Ê—« ';
//    FieldByName('TaxPrice').DisplayLabel:='„«·Ì« ';
//    FieldByName('OtherExtraWagePrice').DisplayLabel:='”«Ì— „“«Ì«';
//    FieldByName('Otherdec').DisplayLabel:='”«Ì— ﬂ”Ê—« ';

    w:=1;
    qryWage.First;
    while w<=29  do begin
     if not qryWage.Eof then begin
       FieldByName('ExtraWagePrice'+IntToStr(w)).DisplayLabel:=qryWage.Fieldbyname('InfoName_L1').AsString ;
       capWage[w-1]:=qryWage.Fieldbyname('InfoName_L1').AsString;
       qryWage.Next ;
     end
       else begin
         capWage[w-1]:='...';
       end;
     w:=w+1;
    end ;//while

  w:=1;
  qryDec.First;
  while w<=29  do begin
   if not qryDec.Eof then  begin
     qrySalary.FieldByName('DecPrice'+IntToStr(w)).DisplayLabel:=qryDec.Fieldbyname('InfoName_L1').AsString ;
     capDec[w-1]:=qryDec.Fieldbyname('InfoName_L1').AsString;
     qryDec.Next ;
   end
     else
     begin
      capDec[w-1]:='...';
     end;
    w:=w+1;
  end ;//while
 end;//with salary
//
end;

procedure TAllSalaryListF.UpdateFilter;
var
  i:Integer;
begin
  with qryWage do begin
   Active:=false;
    Parameters.ParamByName('ArchiveID').Value:=GetcFrom(myParams.ParamValues['ArchiveID'],ftInteger);
    Parameters.ParamByName('Mounth').Value:=GetcFrom(myParams.ParamValues['Mounth'],ftInteger);
   Active:=true;
  end;
  with qryDec do begin
   Active:=false;
    Parameters.ParamByName('ArchiveID').Value:=GetcFrom(myParams.ParamValues['ArchiveID'],ftInteger);
    Parameters.ParamByName('Mounth').Value:=GetcFrom(myParams.ParamValues['Mounth'],ftInteger);
   Active:=true;
  end;
  Makeqry;
  with qrySalary do begin
   Active:=false;
    Parameters.ParamByName('ArchiveID').Value:=GetcFrom(myParams.ParamValues['ArchiveID'],ftInteger);
    Parameters.ParamByName('Mounth').Value:=GetcFrom(myParams.ParamValues['Mounth'],ftInteger);
    Parameters.ParamByName('InfoIDFrom').Value:=GetcFrom(myParams.ParamValues['InfoID'],ftInteger);
    Parameters.ParamByName('InfoIDTo').Value:=GetcTo(myParams.ParamValues['InfoID'],ftInteger);
   Active:=true;
   Sort:='InfoID';
  end;
  with qrySum do begin
   Active:=false;
    Parameters.ParamByName('ArchiveID').Value:=GetcFrom(myParams.ParamValues['ArchiveID'],ftInteger);
    Parameters.ParamByName('Mounth').Value:=GetcFrom(myParams.ParamValues['Mounth'],ftInteger);
    Parameters.ParamByName('InfoIDFrom').Value:=GetcFrom(myParams.ParamValues['InfoID'],ftInteger);
    Parameters.ParamByName('InfoIDTo').Value:=GetcTo(myParams.ParamValues['InfoID'],ftInteger);
   Active:=true;
  end;
  for i:=1 to  qrySalary.FieldCount-1 do begin
    qrySalary.Fields[i].Tag:=3
  end ;//for

  setDisplayLabel;
  setGride;
   if ReadConfig(APPID + '\Windows\' + getparentformname(DBGrid1) + '_' + DBGrid1.Name,'ColWidth','')='' then
   for i:=0 to DBgrid1.Columns.Count-1 do  DBgrid1.Columns[i].Width:=52;

  SetColSize(DBGrid1,1,true);
end;

procedure TAllSalaryListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TAllSalaryListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,true);
end;

procedure TAllSalaryListF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
   if Column.ID<3 then
    DBGrid2.Columns[0].Width :=DBGrid1.Columns[0].Width+DBGrid1.Columns[1].Width
   else DBGrid2.Columns[Column.ID-2].Width:=Column.Width;
end;

procedure TAllSalaryListF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex<2 then
   DBGrid2.SelectedIndex:=0
  else
   DBGrid2.SelectedIndex:=DBGrid1.SelectedIndex-1;
end;

procedure TAllSalaryListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySalary);
end;

procedure TAllSalaryListF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendDBGridToExcel(DBGrid1);
end;

procedure TAllSalaryListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySalary);
end;

procedure TAllSalaryListF.setGride;
var
 j:integer;
 qryWageRecNo,qryDecRecNo:integer;
begin

// qryWageRecNo:=IfThen(qryWage.RecordCount=-1,0,qryWage.RecordCount);
// qryDecRecNo:=IfThen(qryDec.RecordCount=-1,0,qryDec.RecordCount);
// -------------‰„«Ì‘ ‰œ«œ‰ ” Ê‰Â«Ì ’›—-------------------
 for j:=1 to 65 do
  if qrySum.Fields[j].AsInteger=0 then begin
    DBGrid1.Columns[j+1].Visible:=false;
    DBGrid2.Columns[j].Visible:=false;
  end;
  DBGrid1.Columns[32].Visible:=true;
end;

procedure TAllSalaryListF.actPrintExecute(Sender: TObject);
var
  ReportFooter:String;
begin
  inherited;
  ReportFooter:=FooterFormType(48);
  try
    qrysalary.DisableControls;
    MakeReport ;
    InitReport(ppReport1,ppFooterBand1,ppRegion1,ppRecFooterLine, ReportFooter);
    InitReport(ppReport1,ppSummaryBand1,ppRegion2,ppRecFooterLine2,ReportFooter);
    ppReport1.Print;
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TAllSalaryListF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  with DMf.qryTmpTmp do begin
   Active:=false;
    SQL.Text:='SELECT  InfoName_L1 '+
              'FROM  Pay.StandardTimes where InfoID='+GetcFrom(myParams.ParamValues['Mounth'],ftString);
   Active:=true;
   Text:=Text+' „«Â '+Fields[0].AsString;
  end;
end;

procedure TAllSalaryListF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TAllSalaryListF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TAllSalaryListF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TAllSalaryListF.actChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qrySalary,Self,'');

end;

procedure TAllSalaryListF.actShowExecute(Sender: TObject);
var
  Mounth:Byte;
  ArchiveID:String;
begin
  inherited;
  ArchiveID:=GetcFrom(myParams.ParamValues['ArchiveID'],ftInteger);
  Mounth:=GetcFrom(myParams.ParamValues['Mounth'],ftInteger);
  CreateMDIForm2(TSalaryList4Office2F,SalaryList4Office2F,Self) ;
  SalaryList4Office2f.CmbArchiveID.ItemIndex:=StrToInt(ArchiveID);
  SalaryList4Office2f.ToolBar1.Buttons[Mounth-1].Down:=True;
  SalaryList4Office2f.qryOffice.Locate('OfficeCode',qrySalary.Fieldbyname('InfoID').AsInteger,[]);

end;

end.
