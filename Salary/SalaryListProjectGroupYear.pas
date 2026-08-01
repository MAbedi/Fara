{ -----------------------------------------------------------------------------
  Unit Name: SalaryListProjectGroup
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:   87/08/20
  ----------------------------------------------------------------------------- }
unit SalaryListProjectGroupYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands, System.Math, FaraConsts,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, ppStrtch, Filter_ADO_Const,
  ppRegion, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Vcl.Menus, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TSalaryListProjectGroupYearF = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
    srcSalary: TDataSource;
    Button1: TButton;
    qryWage: TADOQuery;
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
    ppDBPipeline2: TppDBPipeline;
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
    ppLine15: TppLine;
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
    w7: TppLabel;
    w13: TppLabel;
    ppLine35: TppLine;
    ppLine37: TppLine;
    ppLine33: TppLine;
    ppLine38: TppLine;
    ppLabel29: TppLabel;
    ppLabel34: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    dddd: TppLabel;
    d6: TppLabel;
    d7: TppLabel;
    d8: TppLabel;
    d3: TppLabel;
    d4: TppLabel;
    d9: TppLabel;
    d5: TppLabel;
    d10: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine81: TppLine;
    ppLine7: TppLine;
    d1: TppLabel;
    ppLabel5: TppLabel;
    ppLine16: TppLine;
    ppLabel21: TppLabel;
    ppLabel32: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine26: TppLine;
    ppLine2: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine12: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel62: TppLabel;
    ppLabel30: TppLabel;
    ppLabel23: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine17: TppLine;
    ppLine24: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    dd1: TppDBText;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDBText9: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppLine80: TppLine;
    ppLine79: TppLine;
    ppLine82: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText23: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText53: TppDBText;
    ppLine4: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine14: TppLine;
    ppLine25: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel49: TppLabel;
    ppLine47: TppLine;
    ppLine61: TppLine;
    ppDBCalcPayableSalary: TppDBCalc;
    ppDBCalcTaxValue: TppDBCalc;
    ppDBCalcSumDec: TppDBCalc;
    ppDBCalcsum23Dec: TppDBCalc;
    ppDBCalcSumWage: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalcContainInsourance: TppDBCalc;
    ppDBCalcContainTax: TppDBCalc;
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
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
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
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    ppDBCalc71: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    ppLine29: TppLine;
    ppLine32: TppLine;
    ppLine34: TppLine;
    ppLine36: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    PopupMenu1: TPopupMenu;
    mnuPrint: TMenuItem;
    mnuPrintFile: TMenuItem;
    DBGrid1: TCedarDbgrid;
    chkPersonelNO: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure w1GetText(Sender: TObject; var Text: String);
    procedure d1GetText(Sender: TObject; var Text: String);
    procedure ppDBTextALLWageGetText(Sender: TObject; var Text: String);
    procedure ppDBTextAllDecGetText(Sender: TObject; var Text: String);
    procedure ppDBCalcALLWageCalcGetText(Sender: TObject; var Text: String);
    procedure ppDBCalcCalcALLDecGetText(Sender: TObject; var Text: String);
    procedure mnuPrintClick(Sender: TObject);
    procedure mnuPrintFileClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkPersonelNOClick(Sender: TObject);
  private
    SLPGY: string;
    procedure MakeSql;
    procedure Updatefilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryListProjectGroupYearF: TSalaryListProjectGroupYearF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  SalaryFunctions;

{$R *.dfm}

procedure TSalaryListProjectGroupYearF.MakeSql;
var
  sqltxt, SumWage, SumDec, PersonelNoFROM, PersonelNoTo: String;
  i: Byte;
begin
  inherited;
  // ----make qrysalary sql-----------------------------------

  PersonelNoFROM := VarToStr(GetcFrom(myParams.ParamValues['PersonelNo'],
    ftInteger));
  PersonelNoTo := VarToStr(GetcTo(myParams.ParamValues['PersonelNo'],
    ftInteger));

  i := 1;
  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);

    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);;

    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);
    Active := True;
    sqltxt := 'SELECT  FixedCalculated.ProjectID,INFO_PROJECT.InfoID,FixedCalculated.YearID,FixedCalculated.Years,FixedCalculated.Mounth, FixedCalculated.ArchiveID,'
      + 'INFO_PROJECT.InfoName_L1 AS ProjectName ';

    if chkPersonelNO.Checked then
    begin
      sqltxt := sqltxt + #13 +
        ',Pay.PersonelInfo.PersonelNo,PersonelInfo.lastName_L1 + '' '' + Pay.PersonelInfo.name_L1 AS PersonelName_L1'
    end;

    // ',COUNT(DISTINCT ) AS PersonelCount, SUM(DISTINCT Pay.Functions_SumProject.FunctionDay) AS FunctionDaySum ';
    while not Eof do
    begin
      sqltxt := sqltxt + #13 +
        Format(',sum(case when ((salaryid=%d)AND(ShowlistKind = 1)) ',
        [IfThen(Fieldbyname('FormInfoID').IsNull, -1, Fieldbyname('FormInfoID')
        .AsInteger)]) + ' then price else 0 end)as Wage' + IntToStr(i);
      SumWage := SumWage + 'SUM(Wage' + IntToStr(i) + ') AS Wage' +
        IntToStr(i) + ',';
      inc(i);
      Next;
    end; // while
    sqltxt := sqltxt + #13 +
      ',Sum(case when((ISNULL(fixedcalculated.ProjectID,0)=0)and(ShowlistKind = 1))  then price else 0 end) as SumWage0Project  ';
    sqltxt := sqltxt + #13 +
      ',Sum(case when((ShowlistKind = 1))  then price else 0 end) as SumWage , '
      + #13 + ' sum( case when ( ShowlistKind in(2,4,15,14) and (bedbes=1) )  then price else 0 end ) as sum23Dec , '
      + #13 +

    // ' sum(case ShowlistKind when 3  then price else 0 end) as ContainInsourance , '+
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + #13 + ' THEN sum( case when (ShowlistKind = 3)  then price else 0 end ) ELSE 0 END as ContainInsourance , '
      + #13 +

      ' sum(case when(ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12 ) then price else 0 end) as ContainTax , '
      + #13 + ' sum(case when(ShowlistKind=11 and bedbes=2) then price else 0 end) as TaxValue ';
  end; // with
  with qryDec do
  begin
    Active := False;
    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);
    Active := True;
    i := 1;
    while not Eof do
    begin
      // sqltxt := sqltxt + ',sum(case  when salaryid=' +
      // IfThen(Fieldbyname('FormInfoID').IsNull, '-1', Fieldbyname('FormInfoID')
      // .AsString) + '  and  ShowlistKind =2 then price else 0 end)as dec' +
      // IntToStr(i);

      sqltxt := sqltxt + #13 +
        Format(',sum(case when ((salaryid=%d))and (ShowlistKind =2) ',
        [IfThen(Fieldbyname('FormInfoID').IsNull, -1, Fieldbyname('FormInfoID')
        .AsInteger)]) + ' then price else 0 end)as dec' + IntToStr(i);

      SumDec := SumDec + 'SUM(Dec' + IntToStr(i) + ') AS Dec' +
        IntToStr(i) + ',';
      inc(i);
      Next;
    end; // while
    sqltxt := sqltxt + #13 +
      ',sum(case when  ShowlistKind = 2 then price else 0 end) +' + #13 +
      ' Sum(case when ShowlistKind=11 and bedbes = 2 then price else 0 end) as SumDec ,'
      + #13 + ' Sum(case when ShowlistKind = 1 then price else 0 end)' + #13 +
      '-(sum(case when ShowlistKind = 2  then price else 0 end ) ' + #13 +
      '+Sum(case when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
  end; // with

  with qrysalary do
  begin
    Active := False;
    sqltxt := sqltxt + #13 + ' ,INFO_STATE.InfoID AS State ' + #13 +

      ' FROM Pay.PersonelInfo RIGHT OUTER JOIN' +
      ' Pay.FixedCalculated ON PersonelInfo.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN'
      + ' Pay.FormsInfo AS INFO_STATE ON PersonelInfo.PersonelState = INFO_STATE.FormInfoID INNER JOIN'
      + ' Pay.FixedCalActive() AS FixedCalActive ON FixedCalculated.YearID = FixedCalActive.YearID '
      + ' AND FixedCalculated.Years = FixedCalActive.Years ' +
      ' AND FixedCalculated.Mounth = FixedCalActive.Mounth ' +
      ' AND FixedCalculated.ArchiveID = FixedCalActive.F_ArchiveID AND' +
      ' FixedCalculated.PersonelNO = FixedCalActive.PersonelNO INNER JOIN' +
      ' Pay.FormsInfo AS INFO_PROJECT ON FixedCalculated.ProjectID = INFO_PROJECT.FormInfoID'
      + #13 + 'WHERE(PersonelInfo.PersonelNo BETWEEN ' + PersonelNoFROM +
      ' AND ' + PersonelNoTo + ' ) ' + #13 +

      ' AND (FixedCalculated.YearID = ' + appbank.Year.ToString + ')' +
      ' AND (FixedCalculated.Years = ' + optP.Year + ')' + sLineBreak +

      ' GROUP BY FixedCalculated.ProjectID,INFO_PROJECT.InfoID,  INFO_PROJECT.InfoName_L1,FixedCalculated.Years,FixedCalculated.YearID,FixedCalculated.Mounth, FixedCalculated.ArchiveID '
      + #13 + ' ,INFO_STATE.InfoID  ';

    if chkPersonelNO.Checked then
    begin
      sqltxt := sqltxt + #13 +
        ',Pay.PersonelInfo.PersonelNo,PersonelInfo.lastName_L1, Pay.PersonelInfo.name_L1'

    end;

    DMf.ADOCmdUpDate.CommandText :=
      'if exists (select * from sysobjects where id = object_id(N''' + SLPGY +
      ''') and OBJECTPROPERTY(id, N''IsView'') = 1) ' + 'drop view ' +
      SLPGY + ' ';
    DMf.ADOCmdUpDate.Execute;
    DMf.ADOCmdUpDate.CommandText := 'CREATE VIEW ' + SLPGY + ' AS ' + sqltxt;
    SQL.Text := DMf.ADOCmdUpDate.CommandText;
    DMf.ADOCmdUpDate.Execute;
    SQL.Text := 'SELECT InfoID, ProjectName,f.FunctionDay AS FunctionDaySum';

    if chkPersonelNO.Checked then
    begin
      SQL.Add(',PersonelNo, PersonelName_L1');
    end;

    SQL.Add(',f.FunctionTime AS FunctionTimeSum,f.PersonelCount, ' + SumWage);
    SQL.Add(' SUM(SumWage0Project) AS SumWage0Project,SUM(SumWage) AS SumWage, ');
    SQL.Add('SUM(sum23Dec) AS sum23Dec, SUM(ContainInsourance) AS ContainInsourance, SUM(ContainTax) AS ContainTax, SUM(TaxValue)');
    SQL.Add('AS TaxValue,' + SumDec +
      'SUM(SumDec) AS SumDec, SUM(PayableSalary) AS PayableSalary');
    SQL.Add('FROM ' + SLPGY + ' AS Slp');

    SQL.Add('INNER JOIN Pay.Functions_SumProjects as F on f.ProjectID =Slp.ProjectID AND f.YearID = Slp.YearID AND f.Years = Slp.Years');

    SQL.Add('WHERE (Mounth BETWEEN :MounthFrom AND :MounthTo) ');
    SQL.Add(' AND ((InfoID BETWEEN :FromInfoID AND :ToInfoID) or isnull(InfoID,0)  = 0  ) ');
    SQL.Add('AND (State BETWEEN :PersonelStateFrom AND :PersonelStateTo )');

    // SQL.Add('AND(PersonelNo BETWEEN :PersonelNoFROM AND :PersonelNoTo ) ');

    // SQL.Add('AND (EmployType BETWEEN :EmployTypeIDFrom  AND :EmployTypeIDTo )');
    SQL.Add('GROUP BY InfoID, ProjectName, Slp.ProjectID');
    if chkPersonelNO.Checked then
    begin
      SQL.Add(',PersonelNo, PersonelName_L1');
    end;
    SQL.Add(',f.FunctionDay,f.FunctionTime,f.PersonelCount');
    SQL.Add('ORDER BY InfoID');
  end; // with

end;

procedure TSalaryListProjectGroupYearF.mnuPrintClick(Sender: TObject);
var
  ReportFooter: String;
begin
  inherited;
  ReportFooter := FooterFormType(48);
  try
    qrysalary.DisableControls;
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

procedure TSalaryListProjectGroupYearF.mnuPrintFileClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'SalaryListProjectGroupYear');
end;

procedure TSalaryListProjectGroupYearF.FormCreate(Sender: TObject);
begin
  inherited;
  SLPGY := 'pay.SalaryListProjectGroupYear' + User.ID.ToString
end;

procedure TSalaryListProjectGroupYearF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('InfoID') = nil then
      Close;
end;

procedure TSalaryListProjectGroupYearF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := appbank.CompanyName
end;

procedure TSalaryListProjectGroupYearF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryListProjectGroupYearF.chkPersonelNOClick(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryListProjectGroupYearF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryListProjectGroupYearF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TSalaryListProjectGroupYearF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryListProjectGroupYearF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryListProjectGroupYearF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryListProjectGroupYearF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      // AddItem(DMf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
      // 'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');
      AddItem(DMf.adcSalary, 'InfoID', ' ⁄‰Ê«‰ Å—ÊéÂ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT    FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON FixedCalculated.ProjectID = FormsInfo.FormInfoID WHERE  formtype=40  '
        + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1',
        'SELECT  MIN(InfoID) , MAX(InfoID) FROM Pay.FormsInfo INNER JOIN Pay.FixedCalculated on FixedCalculated.ProjectID = FormsInfo.FormInfoID where formtype=40  ');

      AddItem(DMf.adcSalary, 'Mounth', ' „«Â', '', ftInteger, dvMinMax, '', '',
        ciSimple, '', 'SELECT  1 ,12   FROM Pay.StandardTimes');

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

procedure TSalaryListProjectGroupYearF.Updatefilter;
begin
  MakeSql;
  with qrysalary do
  begin
    Active := False;

    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('FromInfoID').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('ToInfoID').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);
    // Parameters.ParamByName('EmployTypeIDFrom').Value :=
    // GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    // Parameters.ParamByName('EmployTypeIDTo').Value :=
    // GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    // Parameters.ParamByName('PersonelNoFROM').Value :=
    // GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    // Parameters.ParamByName('PersonelNoTo').Value :=
    // GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Active := True;
  end; // with
end;

procedure TSalaryListProjectGroupYearF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  Updatefilter;
end;

procedure TSalaryListProjectGroupYearF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryListProjectGroupYearF.qrysalaryAfterOpen(DataSet: TDataSet);
var
  i: Byte;
begin
  inherited;
  With qrysalary do
  begin
    for i := 0 to FieldCount - 1 do
    begin
      if Fields[i] is TBCDField then
        TBCDField(Fields[i]).currency := True;
      Fields[i].tag := 3
    end;

    if chkPersonelNO.Checked then
    begin
      Fieldbyname('PersonelNO').DisplayLabel := '‘ Å—”‰·';
      Fieldbyname('PersonelName_L1').DisplayLabel := '‰«„ Å—”‰·';
    end;

    Fieldbyname('InfoID').DisplayLabel := 'ﬂœ';
    Fieldbyname('SumWage').DisplayLabel := 'Ã„⁄ ÕﬁÊﬁ Ê „“«Ì«';
    Fieldbyname('ContainInsourance').DisplayLabel := '„‘„Ê· »Ì„Â';
    Fieldbyname('ContainTax').DisplayLabel := 'A ';
    Fieldbyname('TaxValue').DisplayLabel := '„«·Ì«  ';
    Fieldbyname('SumDec').DisplayLabel := 'Ã„⁄ ﬂ”Ê—« ';
    Fieldbyname('PayableSalary').DisplayLabel := 'ÕﬁÊﬁ ﬁ«»· Å—œ«Œ ';
    Fieldbyname('sum23Dec').DisplayLabel := '»Ì„Â ﬂ«—›—„«';
    Fieldbyname('ProjectName').DisplayLabel := 'Å—ÊéÂ';
    Fieldbyname('PersonelCount').DisplayLabel := ' ⁄œ«œ';
    Fieldbyname('FunctionDaySum').DisplayLabel := 'Ã„⁄ —Ê“ ﬂ«—ﬂ—œ';
    Fieldbyname('FunctionTimeSum').DisplayLabel := 'Ã„⁄ ”«⁄  ﬂ«—ﬂ—œ';
    Fieldbyname('SumWage0Project').DisplayLabel :=
      'Ã„⁄ ÕﬁÊﬁ Ê „“«Ì« »œÊ‰ Å—ÊéÂ';

  end;
  i := 1;
  with qryWage do
  begin
    First;
    while not Eof do
    begin
      qrysalary.Fieldbyname('Wage' + IntToStr(i)).DisplayLabel :=
        Fieldbyname('InfoName_L1').AsString;
      inc(i);
      Next;
    end; // while
  end;
  i := 1;
  with qryDec do
  begin
    First;
    while not Eof do
    begin
      qrysalary.Fieldbyname('Dec' + IntToStr(i)).DisplayLabel :=
        Fieldbyname('InfoName_L1').AsString;
      inc(i);
      Next;
    end; // while
  end;
  DBGrid1.setSizeColDBGrid();
end;

procedure TSalaryListProjectGroupYearF.w1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Text) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Text).DisplayLabel
  else
    Text := '';
end;

procedure TSalaryListProjectGroupYearF.d1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Text) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Text).DisplayLabel
  else
    Text := '';
end;

procedure TSalaryListProjectGroupYearF.ppDBTextALLWageGetText(Sender: TObject;
  var Text: String);
var
  s: String;
begin
  inherited;
  s := 'Wage' + IntToStr(StrToInt(StringReplace((Sender as TppDBText).Name,
    'ppDBText', '', [])) - 10);
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBText).DataField := s;
end;

procedure TSalaryListProjectGroupYearF.ppDBTextAllDecGetText(Sender: TObject;
  var Text: String);
var
  s: String;
begin
  inherited;
  s := 'Dec' + IntToStr(StrToInt(StringReplace((Sender as TppDBText).Name,
    'ppDBText', '', [])) - 60);
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBText).DataField := s;

end;

procedure TSalaryListProjectGroupYearF.ppDBCalcALLWageCalcGetText
  (Sender: TObject; var Text: String);
var
  s: String;
begin
  inherited;
  s := 'Wage' + IntToStr(StrToInt(StringReplace((Sender as TppDBCalc).Name,
    'ppDBCalc', '', [])));
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBCalc).DataField := s;
end;

procedure TSalaryListProjectGroupYearF.ppDBCalcCalcALLDecGetText
  (Sender: TObject; var Text: String);
var
  s: String;
begin
  inherited;
  s := 'Dec' + IntToStr(StrToInt(StringReplace((Sender as TppDBCalc).Name,
    'ppDBCalc', '', [])) - 50);
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBCalc).DataField := s;
end;

End.
