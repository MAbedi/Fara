{ -----------------------------------------------------------------------------
  Unit Name: SalaryListGroup
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit SalaryListGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, ppModule, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, ppStrtch, Filter_ADO_Const,
  ppRegion, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TSalaryListGroupF = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
    srcSalary: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    qrysalaryOfficeName: TStringField;
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
    qrysalaryInfoID: TIntegerField;
    ppDBPipeline2: TppDBPipeline;
    qrysalaryPersonelCOUNT: TIntegerField;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel22: TppLabel;
    pplblNighty: TppLabel;
    w1: TppLabel;
    w2: TppLabel;
    w4: TppLabel;
    w3: TppLabel;
    w11: TppLabel;
    w10: TppLabel;
    w9: TppLabel;
    w8: TppLabel;
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
    ppLine17: TppLine;
    ppLine24: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
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
    ppLabel7: TppLabel;
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
    ppLabel49: TppLabel;
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
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    sw_col1: TppDBCalc;
    sw_col2: TppDBCalc;
    sw_col9: TppDBCalc;
    sw_col8: TppDBCalc;
    sw_col12: TppDBCalc;
    sw_col11: TppDBCalc;
    sw_col10: TppDBCalc;
    sw_col5: TppDBCalc;
    sw_col4: TppDBCalc;
    sw_col3: TppDBCalc;
    sd_col2: TppDBCalc;
    sd_col1: TppDBCalc;
    sd_col7: TppDBCalc;
    sd_col6: TppDBCalc;
    _TaxInvolved: TppDBCalc;
    sw_col7: TppDBCalc;
    sw_col6: TppDBCalc;
    _InsInvolved: TppDBCalc;
    sw_col14: TppDBCalc;
    sw_col13: TppDBCalc;
    sd_col4: TppDBCalc;
    sd_col9: TppDBCalc;
    sd_col3: TppDBCalc;
    sd_col8: TppDBCalc;
    sd_col5: TppDBCalc;
    sd_col10: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel5: TppLabel;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    qrysalarysum23Dec: TBCDField;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    CmbArchiveID: TComboBox;
    SumGrid1: TSumGrid;
    qrysalary_Row: TIntegerField;
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure qrysalaryCalcFields(DataSet: TDataSet);
  private
    cloned: TADOQuery;
    MonthNo: Byte;
    capDec: array [0 .. 9] of string;
    capWage: array [0 .. 13] of string;
    procedure MakeSql;
    procedure MakeReport;
    procedure Updatefilter;
    // procedure InitReportFile(GeneralFileName: string);
    // function CalcSumFileds(FiledName: String): Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryListGroupF: TSalaryListGroupF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  SalaryFunctions;

{$R *.dfm}

procedure TSalaryListGroupF.MakeSql;
var
  W: Integer;
  sqltxt, bozorgtar: String;
  // SelectList : String ;
begin
  inherited;

  // ----make qrysalary sql-----------------------------------

  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);
    Active := True;
    W := 1;
    sqltxt := 'SELECT  FormsInfo.InfoID,FixedCalculated.Mounth, FixedCalculated.ArchiveID,FixedCalculated.LabelID,'
      +

    // '(SELECT OfficeCOUNTPersonel.PersonelCOUNT FROM OfficeCOUNTPersonel WHERE OfficeCOUNTPersonel.OfficeCode=Pay.FixedCalculated.OfficeCode)AS PersonelCOUNT,'+
      ' OfficeCOUNTPersonel.PersonelCOUNT, ' +
      'Pay.FormsInfo.InfoName_L1 AS OfficeName';
    while W < 14 do
    begin // W <15
      if not Eof then
      begin
        sqltxt := sqltxt + ',sum(case when (salaryid = ' +
          IfThen(Fieldbyname('FormInfoID').IsNull, '-1',
          Fieldbyname('FormInfoID').AsString) +
          ')AND(ShowlistKind = 1) then price else 0 end)as Wage' + IntToStr(W);
        Next;
      end
      else
        sqltxt := sqltxt +
          ',sum(case salaryid when -1 then price else 0 end)as Wage' +
          IntToStr(W);
      W := W + 1;
    end; // while
    bozorgtar := '>=';
    if qryWage.RecordCount < 14 then
      bozorgtar := '>';
    sqltxt := sqltxt + ',sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      bozorgtar + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 1 then price else 0 end  else 0 end) as Wage14 , '
      + ' Sum(case ShowlistKind when 1 then price else 0 end) as SumWage , ' +

      ' sum( case when ( ShowlistKind in(2,4,15,14) and bedbes=1 )  then price else 0 end ) as sum23Dec , '
      +

    // ' sum(case ShowlistKind when 3  then price else 0 end) as ContainInsourance , '+
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '
      +

      ' sum(case when(ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12 ) then price else 0 end) as ContainTax , '
      + ' sum(case when(ShowlistKind=11 and bedbes=2) then price else 0 end) as TaxValue ';
  end; // with
  with qryDec do
  begin
    Active := False;
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);
    Active := True;
    W := 1;
    while W < 10 do
    begin
      if not Eof then
      begin
        sqltxt := sqltxt + ',sum(case  when salaryid=' +
          IfThen(Fieldbyname('FormInfoID').IsNull, '-1',
          Fieldbyname('FormInfoID').AsString) +
          '  and  ShowlistKind =2 then price else 0 end)as dec' + IntToStr(W);
        Next;
      end
      else
        sqltxt := sqltxt +
          ',sum(case salaryid when -1 then price else 0 end)as dec' +
          IntToStr(W);
      W := W + 1;
    end; // while
    sqltxt := sqltxt + ',sum(case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      '>' + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 2 then price else 0 end	 else 0 end) as Dec10 ,'
      + ' sum(case ShowlistKind when 2  then price else 0 end) +' +
      ' Sum(case  when ShowlistKind=11 and bedbes = 2 then price else 0 end) as SumDec ,'
      + ' Sum(case ShowlistKind when 1 then price else 0 end)-(sum(case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
  end; // with

  with qrysalary do
  begin
    Active := False;
    sqltxt := sqltxt + ' FROM Pay.FixedCalculated LEFT OUTER JOIN ' +
      'Pay.OfficeCOUNTPersonel ON FixedCalculated.Mounth = Pay.OfficeCOUNTPersonel.Mounth AND '
      + 'FixedCalculated.OfficeCode = OfficeCOUNTPersonel.OfficeCode LEFT OUTER JOIN '
      + 'Pay.PersonelInfo ON FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN '
      + 'Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID ' +
      'GROUP BY FormsInfo.InfoID, FormsInfo.InfoName_L1, FixedCalculated.OfficeCode, FixedCalculated.Mounth, FixedCalculated.ArchiveID, OfficeCOUNTPersonel.PersonelCOUNT'
      + ',FixedCalculated.LabelID';

    DMf.ADOCmdUpDate.CommandText :=
      'if exists (select * from dbo.sysobjects where id = object_id(N''Pay.SalaryListGroup'') and OBJECTPROPERTY(id, N''IsView'') = 1) '
      + 'drop view Pay.SalaryListGroup ';
    DMf.ADOCmdUpDate.Execute;
    DMf.ADOCmdUpDate.CommandText :=
      'CREATE VIEW Pay.SalaryListGroup AS ' + sqltxt;
    SQL.Text := DMf.ADOCmdUpDate.CommandText;
    DMf.ADOCmdUpDate.Execute;
    SQL.Text := 'SELECT     *';
    SQL.Add('FROM Pay.SalaryListGroup');
    SQL.Add('WHERE   (ArchiveID = :ArchiveID) AND  (Mounth = :mounth) AND (InfoID BETWEEN :FromInfoID AND :ToInfoID)');
    SQL.Add(' AND (LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
  end; // with
  // ----make qrysum sql-----------------------------------
  qryWage.First;
  with qryWage do
  begin
    Active := False;
    Active := True;
    W := 1;
    sqltxt := 'SELECT   ''ÌãÚ ßá'' as  sumword ';
    while W < 14 do
    begin // W <15
      if not Eof then
      begin
        sqltxt := sqltxt + ', sum( case salaryid when ' +
          IfThen(Fieldbyname('FormInfoID').IsNull, '-1',
          Fieldbyname('FormInfoID').AsString) +
          '  then price else 0 end ) as SumWage' + IntToStr(W);
        Next;
      end
      else
        sqltxt := sqltxt +
          ', sum( case salaryid when -1  then price else 0 end ) as SumWage' +
          IntToStr(W);
      W := W + 1;
    end; // while
    sqltxt := sqltxt + ' ,sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      '>' + Fieldbyname('FormInfoID').AsString, '<-1') +
      ' then case ShowlistKind when 1 then price else 0 end  else 0 end ) as SumWage14 , '
      + ' Sum(case ShowlistKind when 1 then price else 0 end ) as allSumWage , '
      +

      ' sum( case when ( ShowlistKind in(2,4,15,14) and bedbes=1 )  then price else 0 end ) as sum23Dec , '
      +

      ' sum( case ShowlistKind when 3  then price else 0 end ) as sumContainInsourance , '
      + ' sum( case when ( ShowlistKind=11 and bedbes=0 ) then price else 0 end ) as sumContainTax , '
      + ' sum( case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as sumTaxValue ';
  end; // with
  qryDec.First;
  with qryDec do
  begin
    Active := False;
    Active := True;
    W := 1;
    while W < 10 do
    begin
      if not Eof then
      begin
        sqltxt := sqltxt + ', sum( case salaryid when ' +
          IfThen(Fieldbyname('FormInfoID').IsNull, '-1',
          Fieldbyname('FormInfoID').AsString) +
          '  then price else 0 end ) as sumdec' + IntToStr(W);
        Next;
      end
      else
        sqltxt := sqltxt +
          ', sum( case salaryid when -1  then price else 0 end ) as sumdec' +
          IntToStr(W);
      W := W + 1;
    end; // while
    sqltxt := sqltxt + ' ,sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      '>' + Fieldbyname('FormInfoID').AsString, '<-1') +
      ' then case ShowlistKind when 2 then price else 0 end	 else 0 end ) as sumDec10 ,'
      + '	sum( case ShowlistKind when 2  then price else 0 end ) +' +
      '  Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end) as allSumDec ,'
      + '  Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end )) as allsumPayableSalary ';
  end; // with
end;

procedure TSalaryListGroupF.FormCreate(Sender: TObject);
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  cloned := TADOQuery.Create(Self);
  // MakeSql;

end;

procedure TSalaryListGroupF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('InfoID') = nil then
      Close;
end;

procedure TSalaryListGroupF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TSalaryListGroupF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True);
end;

procedure TSalaryListGroupF.ppLabel45GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryListGroupF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryListGroupF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryListGroupF.actPrintExecute(Sender: TObject);
var
  ReportFooter: String;
begin
  inherited;
  ReportFooter := FooterFormType(48);
  try
    qrysalary.DisableControls;
    MakeReport;
    InitReport(ppReport1, ppFooterBand1, ppRegion1, ppRecFooterLine,
      ReportFooter);
    InitReport(ppReport1, ppSummaryBand1, ppRegion2, ppRecFooterLine2,
      ReportFooter);
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryListGroupF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryListGroupF.ppLabel46GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryListGroupF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryListGroupF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMf.adcSalary, 'InfoID', ' ÚäæÇä ÓÇÒãÇä', 'ßÏ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT    Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 FROM  Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON Pay.FixedCalculated.OfficeCode = Pay.FormsInfo.FormInfoID WHERE  formtype=12  '
        + ' GROUP BY  Pay.FormsInfo.InfoID,Pay.FormsInfo.InfoName_L1',
        'SELECT  MIN(InfoID) , MAX(InfoID) from Pay.FormsInfo INNER JOIN Pay.FixedCalculated on Pay.FixedCalculated.OfficeCode = Pay.FormsInfo.FormInfoID where formtype=12  ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        Updatefilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TSalaryListGroupF.Updatefilter;
var
  i, W: Integer;
begin
  MakeSql;

  with qrysalary do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('FromInfoID').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('ToInfoID').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Active := True;

    W := 0;
    qryWage.First;
    while W < 13 do
    begin // w<14
      if not qryWage.Eof then
      begin
        Fieldbyname('wage' + IntToStr(W + 1)).DisplayLabel :=
          qryWage.Fieldbyname('InfoName_L1').AsString;
        capWage[W] := qryWage.Fieldbyname('InfoName_L1').AsString;
        qryWage.Next;
      end
      else
      begin
        capWage[W] := '...';
      end;
      W := W + 1;
    end; // while
    W := 0;
    qryDec.First;
    while W < 10 do
    begin
      if not qryDec.Eof then
      begin
        Fieldbyname('Dec' + IntToStr(W + 1)).DisplayLabel :=
          qryDec.Fieldbyname('InfoName_L1').AsString;
        capDec[W] := qryDec.Fieldbyname('InfoName_L1').AsString;
        qryDec.Next;
      end
      else
      begin
        capDec[W] := '...';
      end;
      W := W + 1;
    end; // while

  end; // with


  // i:=qryWage.RecordCount;
  // for j:=i to 15-2 do begin
  // DBGrid1.Columns[j+3].Visible:=false;
  // DBGrid2.Columns[j+1].Visible:=false;
  // end;
  //
  // i:=qryDec.RecordCount;
  // for j:=i to 10-2 do begin
  // DBGrid1.Columns[j+23].Visible:=false;
  // DBGrid2.Columns[j+20].Visible:=false;
  // end;
  // DBGrid2.Columns[24].Visible:=true;

  for i := 0 to DBGrid1.Columns.Count - 1 do
  begin
    DBGrid1.Columns[i].Visible :=
      not((Pos('wage', LowerCase(DBGrid1.Columns[i].Title.Caption)) <> 0) or
      (Pos('dec', LowerCase(DBGrid1.Columns[i].Title.Caption)) <> 0));
  end;
//    Dbgrid1.DoLoad('');


end;

procedure TSalaryListGroupF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryListGroupF.MakeReport;
begin
  try
    qrysalary.DisableControls;
    w1.Caption := capWage[0];
    w2.Text := capWage[1];
    w3.Text := capWage[2];
    w4.Text := capWage[3];
    w5.Text := capWage[4];
    w6.Text := capWage[5];
    w7.Text := capWage[6];
    w8.Text := capWage[7];
    w9.Text := capWage[8];
    w10.Text := capWage[9];
    w11.Text := capWage[10];
    w12.Text := capWage[11];
    w13.Text := capWage[12];
    // w14.Text:=capWage[13];

    d2.Text := capDec[0];
    d3.Text := capDec[1];
    d4.Text := capDec[2];
    d5.Text := capDec[3];
    d6.Text := capDec[4];
    d7.Text := capDec[5];
    d8.Text := capDec[6];
    d9.Text := capDec[7];
    d10.Text := capDec[8];
  finally
    qrysalary.EnableControls;
  end;

end;

// function TSalaryListGroupF.CalcSumFileds(FiledName: String): Currency;
// begin
// Result:=0;
// try
// with cloned do begin
// Clone(qrysalary,ltReadOnly);
// First;
// while not eof do begin
// Result:=Result +fieldbyname(FiledName).AsCurrency;
// Next;
// end;//while
// end;//with
// except
// end;//try
// end;

procedure TSalaryListGroupF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TSalaryListGroupF.ppLabel34GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryListGroupF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryListGroupF.qrysalaryCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('_Row').AsInteger := Abs(DataSet.RecNo)
end;

End.
