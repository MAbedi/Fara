unit SalaryList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, DBGrids, ppModule, raCodMod, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Menus;

type
  TSalaryListF = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
    srcSalary: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    qrysalaryPersonelNO: TIntegerField;
    qrysalaryOfficeName: TStringField;
    qrysalaryPersonName: TStringField;
    qrysalaryWage1: TBCDField;
    qrysalaryWage2: TBCDField;
    qrysalaryWage3: TBCDField;
    qrysalaryWage4: TBCDField;
    qrysalaryWage5: TBCDField;
    qrysalaryWage6: TBCDField;
    qrysalarySumWage: TBCDField;
    qrysalaryContainInsourance: TBCDField;
    qrysalaryContainTax: TBCDField;
    qrysalaryTaxValue: TBCDField;
    qryWage: TADOQuery;
    qrysalaryWage7: TBCDField;
    qrysalaryWage8: TBCDField;
    qrysalaryWage9: TBCDField;
    qrysalaryWage10: TBCDField;
    qrysalaryWage11: TBCDField;
    qrysalaryWage12: TBCDField;
    qrysalaryWage13: TBCDField;
    qrysalaryWage14: TBCDField;
    qrysalaryWage15: TBCDField;
    qrysalaryDec1: TBCDField;
    qrysalaryDec2: TBCDField;
    qrysalaryDec3: TBCDField;
    qrysalaryDec4: TBCDField;
    qrysalaryDec5: TBCDField;
    qrysalaryDec6: TBCDField;
    qrysalaryDec7: TBCDField;
    qrysalaryDec8: TBCDField;
    qrysalaryDec9: TBCDField;
    qrysalaryDec10: TBCDField;
    qrysalarySumDec: TBCDField;
    qrysalaryPayableSalary: TBCDField;
    qryDec: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actFilter: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    PopList4Print: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    qrySum: TADOQuery;
    srcSum: TDataSource;
    qrySumsumword: TStringField;
    qrySumSumWage1: TBCDField;
    qrySumSumWage2: TBCDField;
    qrySumSumWage3: TBCDField;
    qrySumSumWage4: TBCDField;
    qrySumSumWage5: TBCDField;
    qrySumSumWage6: TBCDField;
    qrySumSumWage7: TBCDField;
    qrySumSumWage8: TBCDField;
    qrySumSumWage9: TBCDField;
    qrySumSumWage10: TBCDField;
    qrySumSumWage11: TBCDField;
    qrySumSumWage12: TBCDField;
    qrySumSumWage13: TBCDField;
    qrySumSumWage14: TBCDField;
    qrySumSumWage15: TBCDField;
    qrySumallSumWage: TBCDField;
    qrySumsumContainInsourance: TBCDField;
    qrySumsumContainTax: TBCDField;
    qrySumsumTaxValue: TBCDField;
    qrySumsumDec1: TBCDField;
    qrySumsumDec2: TBCDField;
    qrySumsumDec3: TBCDField;
    qrySumsumDec4: TBCDField;
    qrySumsumDec5: TBCDField;
    qrySumsumDec6: TBCDField;
    qrySumsumDec7: TBCDField;
    qrySumsumDec8: TBCDField;
    qrySumsumDec9: TBCDField;
    qrySumsumDec10: TBCDField;
    qrySumallSumDec: TBCDField;
    qrySumallsumPayableSalary: TBCDField;
    qrysalaryInfoID: TIntegerField;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
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
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    d1: TppLabel;
    d6: TppLabel;
    d2: TppLabel;
    d7: TppLabel;
    d8: TppLabel;
    d3: TppLabel;
    d4: TppLabel;
    d9: TppLabel;
    d5: TppLabel;
    d10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine39: TppLine;
    ppDBText13: TppDBText;
    ppDBText5: TppDBText;
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
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLabel5: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppLabel6: TppLabel;
    ppLine13: TppLine;
    ppLine15: TppLine;
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
    ppDBCalc7: TppDBCalc;
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
    ppLabel7: TppLabel;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLine73: TppLine;
    ppDBCalc38: TppDBCalc;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppDBText4: TppDBText;
    ppShape5: TppShape;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    raCodeModule1: TraCodeModule;
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
        procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
  private
    cloned:  TADOQuery;
     MonthNo:  Byte;
     capDec:array [0..9]of string;
     capWage:array [0..13]of string;
     procedure MakeSql;
     procedure MakeReport;
     procedure Updatefilter;
     procedure InitReportFile(GeneralFileName: string);
    function CalcSumFileds(FiledName: String): Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryListF: TSalaryListF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  DateUtils;

{$R *.dfm}
procedure TSalaryListF.MakeSql;
var
  W,j:integer;
 sqltxt:string;
 SelectList : String ;
begin
  inherited;
//----make qrysalary sql-----------------------------------
  with qryWage do begin
    Active:=False;
    Parameters.ParamByName('OfficeCodeFrom').Value:=GetcFrom(myParams.ParamValues['InfoID'],ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value:=GetcTo(myParams.ParamValues['InfoID'],ftInteger);
    Active:=True;
    W:=1 ;
    sqltxt:='SELECT  Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 AS OfficeName, ' +
            ' Pay.FixedCalculated.PersonelNO,Pay.PersonelInfo.name_L1 + '' '' + Pay.PersonelInfo.lastName_L1 AS PersonName  ';
    while W <15  do begin
      if not Eof  then begin
        sqltxt:=sqltxt+', sum( case salaryid when '+Fieldbyname('FormInfoID').AsString +'  then price else 0 end ) as Wage'+IntToStr( w) ;
        Next ;
        end
      else
        sqltxt:=sqltxt+', sum( case salaryid when -1  then price else 0 end ) as Wage'+IntToStr(w) ;
        w:=W+1 ;
    end ;// while
    sqltxt:=sqltxt+',sum( case  when salaryid '+
            IfThen(Fieldbyname('FormInfoID').AsInteger> 1,'>'+Fieldbyname('FormInfoID').AsString ,'<-1 ' ) +
            ' then case ShowlistKind when 1 then price else 0 end  else 0 end ) as Wage15 , '+
    		    ' Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , '+
      			' sum( case ShowlistKind when 3  then price else 0 end ) as ContainInsourance , '+
     	  		' sum( case when ( ShowlistKind=11 and bedbes=0 ) then price else 0 end ) as ContainTax , '+
       			' sum( case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as TaxValue ' ;
  end ;//with
  with qryDec do begin
    Active:=False;
    Parameters.ParamByName('OfficeCodeFrom').Value:=GetcFrom(myParams.ParamValues['InfoID'],ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value:=GetcTo(myParams.ParamValues['InfoID'],ftInteger);
    Active:=True;
    W:=1 ;
    while W <10  do begin
      if not Eof  then begin
        sqltxt:=sqltxt+', sum( case  when salaryid='+Fieldbyname('FormInfoID').AsString +'  and  ShowlistKind =2 then price else 0 end ) as dec'+IntToStr( w) ;
        Next ;
        end
      else
        sqltxt:=sqltxt+', sum( case salaryid when -1  then price else 0 end ) as dec'+IntToStr(w) ;
        w:=W+1 ;
    end ;// while
      sqltxt:=sqltxt+',sum( case  when salaryid '+
             IfThen(Fieldbyname('FormInfoID').AsInteger> 1 ,
                    '>'+Fieldbyname('FormInfoID').AsString ,'<-1 ' ) +
                       ' then case ShowlistKind when 2 then price else 0 end	 else 0 end ) as Dec10 ,'+
                  		 ' sum( case ShowlistKind when 2  then price else 0 end ) +'+
                  		 ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ,'+
                  		 ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
  end;//with

  with qrysalary do begin
    Active:=False ;
    SQL.Text:=sqltxt;
    SQL.Add(' FROM   Pay.FixedCalculated LEFT OUTER JOIN ');
    SQL.Add(' Pay.PersonelInfo ON Pay.FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN ');
    SQL.Add(' Pay.FormsInfo ON Pay.FixedCalculated.OfficeCode = Pay.FormsInfo.FormInfoID ');
    SQL.Add(' WHERE  (Pay.FixedCalculated.Mounth = :mounth) ');
    SQL.Add(' and  (Pay.FormsInfo.InfoID  BETWEEN :FromInfoID AND :ToInfoID) ');
    SQL.Add(' AND (Pay.FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    SQL.Add(' GROUP BY Pay.FormsInfo.InfoID, Pay.FixedCalculated.PersonelNO, Pay.FormsInfo.InfoName_L1,');
    SQL.Add(' Pay.PersonelInfo.name_L1 + '' '' + Pay.PersonelInfo.lastName_L1');
    SQL.SaveToFile('c:\bb1.txt');
  end;//with
//----make qrysum sql-----------------------------------
  qryWage.First;
  with qryWage do begin
      Active:=False;
      Active:=True;
      W:=1 ;
      sqltxt:='SELECT   ''ÌãÚ ßá'' as  sumword ';
    while W <15  do begin
      if not Eof  then begin
        sqltxt:=sqltxt+', sum( case salaryid when '+Fieldbyname('FormInfoID').AsString +'  then price else 0 end ) as SumWage'+IntToStr( w) ;
        Next ;
        end
      else
        sqltxt:=sqltxt+', sum( case salaryid when -1  then price else 0 end ) as SumWage'+IntToStr(w) ;
        w:=W+1 ;
    end ;// while
      sqltxt:=sqltxt+' ,sum( case  when salaryid '+
      IfThen(Fieldbyname('FormInfoID').AsInteger>1,'>'+Fieldbyname('FormInfoID').AsString,'<-1') +
              ' then case ShowlistKind when 1 then price else 0 end  else 0 end ) as SumWage15 , '+
      		  	' Sum(case ShowlistKind when 1 then price else 0 end ) as allSumWage , '+
        			' sum( case ShowlistKind when 3  then price else 0 end ) as sumContainInsourance , '+
      	  		' sum( case when ( ShowlistKind=11 and bedbes=0 ) then price else 0 end ) as sumContainTax , '+
        			' sum( case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as sumTaxValue ' ;
  end ;//with
  qryDec.First;
  with qryDec do begin
      Active:=False;
      Active:=True;
      W:=1 ;
    while W <10  do begin
      if not Eof  then begin
        sqltxt:=sqltxt+', sum( case  when salaryid='+Fieldbyname('FormInfoID').AsString +' and  ShowlistKind =2  then price else 0 end ) as sumdec'+IntToStr( w) ;
        Next ;
        end
      else
        sqltxt:=sqltxt+', sum( case salaryid when -1  then price else 0 end ) as sumdec'+IntToStr(w) ;
        w:=W+1 ;
    end ;// while
    sqltxt:=sqltxt+' ,sum( case  when salaryid '+
            IfThen(Fieldbyname('FormInfoID').AsInteger>1,'>'+Fieldbyname('FormInfoID').AsString,'<-1') +
            ' then case ShowlistKind when 2 then price else 0 end	 else 0 end ) as sumDec10 ,'+
            '	sum( case ShowlistKind when 2  then price else 0 end ) +'+
            ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end) as allSumDec ,'+
            ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end )) as allsumPayableSalary ';
  end;//with

  with qrySum do begin
    Active:=False ;
    SQL.Text:=sqltxt;
  	SQL.Add  ('from Pay.FormsInfo INNER JOIN Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.OfficeCode');
		SQL.Add  ('where ( PersonelNO between :FromPerson and :ToPerson) and (Mounth=:Mounth) and');
		SQL.Add  ('(Pay.FormsInfo.InfoID between :FromInfoID and :ToInfoID)');
//    SQL.SaveToFile('c:\bb.txt');
  end;//with

end;

procedure TSalaryListF.FormCreate(Sender: TObject);
begin
  MonthNo:=var_glb_CurrentMonth;
  if MonthNo<1 then MonthNo:=1;
  cloned:=TADOQuery.Create(Self);
end;

procedure TSalaryListF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo-1].Down:=True;
  myParams.Clear;
  if actFilter.Execute then
   if myParams.FindParam('PersonelNo')=nil then Close;
end;

procedure TSalaryListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TSalaryListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3,True);
end;

procedure TSalaryListF.ppLabel45GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName
end;

procedure TSalaryListF.actSortExecute(Sender: TObject);
begin
  inherited;
    sort2F.ShowSort(qrysalary);
end;

procedure TSalaryListF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendDBGridToExcel(DBGrid1);
end;

procedure TSalaryListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryListF.ppLabel46GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TSalaryListF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(text)
end;

procedure TSalaryListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try                          
      AddItem(DMf.adcSalary,'InfoID',' ÚäæÇä ÓÇÒãÇä','ßÏ',ftInteger,dvMinMax,'','',ciLookup,
      'SELECT    Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 FROM  Pay.FixedCalculated INNER JOIN  '+
      ' Pay.FormsInfo ON Pay.FixedCalculated.OfficeCode = Pay.FormsInfo.FormInfoID WHERE  formtype=12   '+
      ' GROUP BY  Pay.FormsInfo.InfoID,Pay.FormsInfo.InfoName_L1 ',
      'SELECT  MIN(InfoID) , MAX(InfoID) from Pay.FormsInfo INNER JOIN Pay.FixedCalculated on Pay.FixedCalculated.OfficeCode = Pay.FormsInfo.FormInfoID where formtype=12  ');
      AddItem(DMf.adcSalary,'PersonelNO','ÔãÇÑå ÑÓäáí','ßÏ',ftInteger,dvMinMax,'','',ciLookup,
       'SELECT     Pay.FixedCalculated.PersonelNO, Pay.PersonelInfo.name_L1 + '' '' + Pay.PersonelInfo.lastName_L1 AS name_l1 '+
        ' FROM         Pay.FixedCalculated INNER JOIN '+
        ' Pay.PersonelInfo ON Pay.FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo '+
        '  GROUP BY Pay.FixedCalculated.PersonelNO, Pay.PersonelInfo.name_L1 + '' '' + Pay.PersonelInfo.lastName_L1 ',
        'SELECT MIN(PersonelNo) , MAX(PersonelNo)  FROM Pay.FixedCalculated');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TSalaryListF.Updatefilter;
var
 i,j,w:integer;
begin
 MakeSql;
 with qrysalary do begin
    Active:=false;
    Parameters.ParamByName('Mounth').Value:=MonthNo;
    Parameters.ParamByName('FromInfoID').Value:=GetcFrom(myParams.ParamValues['InfoID'],ftInteger);
    Parameters.ParamByName('ToInfoID').Value:=GetcTo(myParams.ParamValues['InfoID'],ftInteger);
    Parameters.ParamByName('FromPersonelNo').Value:=GetcFrom(myParams.ParamValues['PersonelNo'],ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value:=GetcTo(myParams.ParamValues['PersonelNo'],ftInteger);
//    SQL.SaveToFile('C:\salary.txt');
    Active:=true;

   w:=0;
   DBGrid2.Columns[0].Title.Caption:='ÌãÚ ßá ';
   qryWage.First;
   while w<14  do begin
    if not qryWage.Eof then begin
     FieldByName('wage'+IntToStr(w+1)).DisplayLabel:=qryWage.Fieldbyname('InfoName_L1').AsString;
     capWage[w]:=qryWage.Fieldbyname('InfoName_L1').AsString;
     qryWage.Next ;
    end
       else
        begin
         capWage[w]:='...';
        end;
    w:=w+1;
    end ;//while
  w:=0;
  qryDec.First;
  while w<10  do begin
    if not qryDec.Eof then  begin
     FieldByName('Dec'+IntToStr(w+1)).DisplayLabel:=qryDec.Fieldbyname('InfoName_L1').AsString;
     capDec[w]:=qryDec.Fieldbyname('InfoName_L1').AsString;
     qryDec.Next ;
    end else
     begin
      capDec[w]:='...';
     end;
    w:=w+1;
   end ;//while

 end;//with

 with qrySum do begin
    Active:=false;
    Parameters.ParamByName('Mounth').Value:=MonthNo;
    Parameters.ParamByName('FromInfoID').Value:=GetcFrom(myParams.ParamValues['InfoID'],ftInteger);
    Parameters.ParamByName('ToInfoID').Value:=GetcTo(myParams.ParamValues['InfoID'],ftInteger);
    Parameters.ParamByName('FromPerson').Value:=GetcFrom(myParams.ParamValues['PersonelNo'],ftInteger);
    Parameters.ParamByName('ToPerson').Value:=GetcTo(myParams.ParamValues['PersonelNo'],ftInteger);
    Active:=true;
  end;

  i:=qryWage.RecordCount;
  for j:=i to 15-2 do begin
    DBGrid1.Columns[j+4].Visible:=false;
    DBGrid2.Columns[j+1].Visible:=false;
  end;
  i:=qryDec.RecordCount;
  for j:=i to 10-2 do begin
    DBGrid1.Columns[j+23].Visible:=false;
    DBGrid2.Columns[j+20].Visible:=false;
  end;
  DBGrid2.Columns[24].Visible:=true;
end;

procedure TSalaryListF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo:=(Sender as TToolButton).tag;
  Updatefilter;
end;

procedure TSalaryListF.N11Click(Sender: TObject);
begin
  inherited;
  InitReportFile('SalaryList_office.rtm');
end;

procedure TSalaryListF.InitReportFile(GeneralFileName: string);
var
  s:String;
begin
  s:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))+'Report\');
    with ppReport1 do begin
      Template.FileName:=s+GeneralFileName;
       try
         if FileExists(Template.FileName) then
            Template.LoadFromFile;
            MakeReport;
            Print ;
       finally
       end;//try
    end;//with
end;


procedure TSalaryListF.MakeReport;
begin
  try
    qrysalary.DisableControls;
    w1.Caption:=capWage[0];
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

    d2.Text:=capdec[0];
    d3.Text:=capdec[1];
    d4.Text:=capdec[2];
    d5.Text:=capdec[3];
    d6.Text:=capdec[4];
    d7.Text:=capdec[5];
    d8.Text:=capdec[6];
    d9.Text:=capdec[7];
    d10.Text:=capdec[8];
  finally
    qrysalary.EnableControls;
  end;

end;

procedure TSalaryListF.N21Click(Sender: TObject);
begin
  inherited;
  InitReportFile('SalaryList.rtm');
end;

function TSalaryListF.CalcSumFileds(FiledName: String): Currency;
begin
  Result:=0;
  try
    with cloned do begin
      Clone(qrysalary,ltReadOnly);
      First;
      while not eof do begin
        Result:=Result +fieldbyname(FiledName).AsCurrency;
        Next;
      end;//while
    end;//with
  except
  end;//try
end;

procedure TSalaryListF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);


  if Column.ID<4 then
  DBGrid2.Columns[0].Width :=DBGrid1.Columns[0].Width+DBGrid1.Columns[1].Width+DBGrid1.Columns[2].Width+DBGrid1.Columns[3].Width
  else DBGrid2.Columns[Column.ID-3].Width:=Column.Width;
end;



procedure TSalaryListF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
 DBGrid2.SelectedIndex:=DBGrid1.SelectedIndex-3
end;

procedure TSalaryListF.ppLabel34GetText(Sender: TObject; var Text: String);
begin
  inherited;
  with DMF.qryTmpTmpp do begin
  	SQL.Text:='SELECT InfoID, InfoName_L1';
		SQL.Add  ('FROM Pay.StandardTimes');
		SQL.Add  ('WHERE InfoID = '+IntToStr(MonthNo));
   Active:=true;

   Text:= Text+' '+Fieldbyname('InfoName_L1').AsString+' ãÇå  '+IntToStr(APPBank.Year);
   Active:=false;
  end;
end;

procedure TSalaryListF.qrysalaryAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text:='ÊÚÏÇÏ='+IntToStr(DataSet.RecordCount)+'  ';
end;

End.
