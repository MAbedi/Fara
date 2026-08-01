unit SalaryList4SumOfficeUnLimit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DM, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands,
  Filter_ADO_Const, FaraConsts,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Menus, ppStrtch,
  ppRegion, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Vcl.Grids, Vcl.DBGrids, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TSalaryList4SumOfficeUnLimitF = class(Ttemplate2MDIF)
    srcSalary: TDataSource;
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
    SalaryList4SumOfficeUnLimit: TMenuItem;
    ppDBPipeline2: TppDBPipeline;
    Button2: TButton;
    Button3: TButton;
    actFunctionShow: TAction;
    actFish: TAction;
    actPrintVijeh: TAction;
    BitBtn1: TBitBtn;
    CmbArchiveID: TComboBox;
    AllClick: TMenuItem;
    qrysalary: TADOQuery;
    qrysalary_Row: TIntegerField;
    qrysalaryInfoID: TIntegerField;
    qrysalaryOfficeName: TStringField;
    qrysalaryWageBase: TBCDField;
    qrysalaryWage2: TBCDField;
    qrysalaryWage3: TBCDField;
    qrysalaryWage4: TBCDField;
    qrysalaryWage5: TBCDField;
    qrysalaryWage6: TBCDField;
    qrysalaryWage7: TBCDField;
    qrysalaryWage8: TBCDField;
    qrysalaryWage9: TBCDField;
    qrysalaryWage10: TBCDField;
    qrysalaryWage11: TBCDField;
    qrysalaryWage12: TBCDField;
    qrysalaryWage13: TBCDField;
    qrysalaryWage14: TBCDField;
    qrysalaryWage15: TBCDField;
    qrysalaryWage16: TBCDField;
    qrysalaryWage17: TBCDField;
    qrysalaryWage18: TBCDField;
    qrysalaryWage19: TBCDField;
    qrysalaryWage20: TBCDField;
    qrysalaryWage21: TBCDField;
    qrysalaryWage22: TBCDField;
    qrysalaryWage23: TBCDField;
    qrysalaryWage24: TBCDField;
    qrysalaryWage25: TBCDField;
    qrysalarysum23Dec: TBCDField;
    qrysalarySumWage: TBCDField;
    qrysalaryContainInsourance: TBCDField;
    qrysalaryContainTax: TBCDField;
    qrysalaryTaxValue: TBCDField;
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
    qrysalaryDec11: TBCDField;
    qrysalaryDec12: TBCDField;
    qrysalaryDec13: TBCDField;
    qrysalaryDec14: TBCDField;
    qrysalaryDec15: TBCDField;
    qrysalaryDec16: TBCDField;
    qrysalaryDec17: TBCDField;
    qrysalaryDec18: TBCDField;
    qrysalaryDec19: TBCDField;
    qrysalaryDec20: TBCDField;
    qrysalarySumDec: TBCDField;
    qrysalaryPayableSalary: TBCDField;
    qrysalaryEmployer: TBCDField;
    qrysalaryEmployee: TBCDField;
    qrysalarysumPriceEmploye1: TBCDField;
    qrysalarysum23DecEmploye: TBCDField;
    qrysalaryDec_2_4: TBCDField;
    qrysalaryDec_2_5: TBCDField;
    qrysalaryWage1: TBCDField;
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
    ppLine15: TppLine;
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
    w7: TppLabel;
    w13: TppLabel;
    ppLine34: TppLine;
    ppLine35: TppLine;
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
    d7: TppLabel;
    d8: TppLabel;
    d3: TppLabel;
    d4: TppLabel;
    d9: TppLabel;
    d5: TppLabel;
    d10: TppLabel;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine39: TppLine;
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
    ppLine12: TppLine;
    ppLine81: TppLine;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel32: TppLabel;
    ppLabel21: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDetailBand2: TppDetailBand;
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
    dw13: TppDBText;
    dw12: TppDBText;
    ppLine6: TppLine;
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
    dd6: TppDBText;
    ppLine26: TppLine;
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
    ppDBText12: TppDBText;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppLine79: TppLine;
    ppLine82: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText11: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLabel7: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel6: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel49: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
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
    sw_col7: TppDBCalc;
    sw_col6: TppDBCalc;
    sw_col14: TppDBCalc;
    sw_col13: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel5: TppLabel;
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    sd_col9: TppDBCalc;
    sd_col8: TppDBCalc;
    sd_col7: TppDBCalc;
    sd_col6: TppDBCalc;
    sd_col1: TppDBCalc;
    sd_col3: TppDBCalc;
    sd_col4: TppDBCalc;
    sd_col2: TppDBCalc;
    sd_col5: TppDBCalc;
    _TaxInvolved: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    _InsInvolved: TppDBCalc;
    sd_col10: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel31: TppLabel;
    ppLine66: TppLine;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppLine36: TppLine;
    ppLine40: TppLine;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppLine25: TppLine;
    ppLine41: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine59: TppLine;
    actSMS: TAction;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
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
    procedure actFunctionShowExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure AllW_GetText(Sender: TObject; var Text: String);
    procedure AllD_GetText(Sender: TObject; var Text: String);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure qrysalaryCalcFields(DataSet: TDataSet);
    procedure actSMSExecute(Sender: TObject);
  private
    MonthNo: Byte;
    qryWageSQL, qryDecSQL, FunItems: String;
    CountOfWage, CountOfDec: Smallint;
    procedure MakeSql;
    procedure Updatefilter;
    procedure InitReportFile(GeneralFileName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList4SumOfficeUnLimitF: TSalaryList4SumOfficeUnLimitF;

implementation

uses GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  mdimain, FunctionItems, DBGrid2Print, SalaryFunctions, infoSMS;

{$R *.dfm}

procedure TSalaryList4SumOfficeUnLimitF.MakeSql;
var
  W: Integer;
  sqltxt, bozorgtar: string;
begin
  inherited;
  // ----make qrysalary sql-----------------------------------
  with qryWage do
  begin
    Active := False;
    SQL.Text := StringReplace(qryWageSQL, ':OfficeCodeFromTo',
      'AND (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['InfoID'], ftString) + '))',
      [rfReplaceAll]);
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Active := True;
    W := 1;
    sqltxt := 'SELECT  FormsInfoOffice.InfoID,FormsInfoOffice.InfoName_L1 AS OfficeName , '
      + ' sum(Functions_Sum.FunctionDay) as FunctionDay , sum(Functions_Sum.FunctionTime) as FunctionTime ';
    sqltxt := sqltxt + FunItems; // /count(Functions_Sum.FunctionDay)
    sqltxt := sqltxt +
      ',sum(case  when salaryid between 600 and 602  then price else 0 end ) as WageBase ';

    while W < CountOfWage do
    begin
      if not Eof then
      begin
        sqltxt := sqltxt + ',sum(case when (salaryid =' +
          Fieldbyname('FormInfoID').AsInteger.ToString +
          ')AND(ShowlistKind = 1) then price else 0 end ) as Wage' +
          IntToStr(W);
        Next;
      end
      else
        sqltxt := sqltxt +
          ',sum(case salaryid when -1  then price else 0 end ) as Wage' +
          IntToStr(W);
      W := W + 1;
    end; // while
    bozorgtar := '>=';
    if qryWage.RecordCount < CountOfWage then
      bozorgtar := '>';
    sqltxt := sqltxt + ',sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      bozorgtar + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 1 then price else 0 end  else 0 end ) as Wage'
      + IntToStr(CountOfWage) + ' , ' +

      ' Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , ' +

    /// /        			' sum(case when(ShowlistKind in(2) and bedbes=1 ) then price else 0 end ) as sum23Dec2, '+
    /// /        			' sum(case when(ShowlistKind in(4) and bedbes=1 ) then price else 0 end ) as sum23Dec44, '+
    // ' sum(case when(ShowlistKind in(15) and bedbes=1 ) then price else 0 end ) as sum23Dec15, '+
    /// /        			' sum(case when(ShowlistKind in(14) and bedbes=1 ) then price else 0 end ) as sum23Dec14, '+
      ' sum(case when(ShowlistKind in(2,4,15,14) and bedbes=1 ) then price else 0 end ) as sum23Dec, '
      +

      ' derivedtbl_1.Employer, derivedtbl_1.Employee, derivedtbl_1.sumPriceEmploye1,'
      +

    // 'sum(case when salaryid=46 and ShowlistKind=2 then price else 0 end )  as Dec_2_2 ,'+
    // 'sum(case when salaryid=46 and ShowlistKind=3 then price else 0 end )  as Dec_2_3 ,'+
      'sum(case when salaryid=46 and ShowlistKind=4 then price else 0 end )  as Dec_2_4 ,'
      + 'sum(case when salaryid=46 and ShowlistKind=5 then price else 0 end )  as Dec_2_5 ,'
      +
    // 'sum(case when salaryid=46 and bedbes=0 then price else 0 end )  as Dec_2_bedbes0 ,'+
    // 'sum(case when salaryid=46 and bedbes=1 then price else 0 end )  as Dec_2_bedbes1 ,'+
    // 'sum(case when salaryid=46 and bedbes=2 then price else 0 end )  as Dec_2_bedbes2 ,'+

    /// /              'ISNULL(derivedtbl_1.Employer, 0) + SUM(CASE WHEN (ShowlistKind IN (2, 4, 15, 14) AND bedbes = 1) THEN price ELSE 0 END)  AS Employe1sum23Dec,'+
      'sum(case when salaryid=46 and ShowlistKind=2 then price else 0 end ) +  sum(case when(ShowlistKind in(2,4,15,14) and bedbes=1 ) then price else 0 end ) as sum23DecEmploye,'
      +

    // ' sum(case ShowlistKind when 3  then price else 0 end ) as ContainInsourance , '
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '

      + ' sum(case when (ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12 ) then price else 0 end ) as ContainTax, '
      + ' sum(case when (ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as TaxValue ';
  end; // with
  with qryDec do
  begin
    Active := False;
    SQL.Text := StringReplace(qryDecSQL, ':OfficeCodeFromTo',
      'AND (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['InfoID'], ftString) + '))',
      [rfReplaceAll]);
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Active := True;
    W := 1;
    while W < CountOfDec do
    begin
      if not Eof then
      begin
        sqltxt := sqltxt + ',sum(case when salaryid=' +
          IfThen(Fieldbyname('FormInfoID').IsNull, '-1',
          Fieldbyname('FormInfoID').AsString) +
          ' and ShowlistKind=2 then price else 0 end )as dec' + IntToStr(W);
        Next;
      end
      else
        sqltxt := sqltxt +
          ',sum(case salaryid when -1 then price else 0 end)as dec' +
          IntToStr(W);
      W := W + 1;
    end; // while
    sqltxt := sqltxt + ',sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      '>' + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 2 then price else 0 end	 else 0 end ) as Dec'
      + IntToStr(CountOfDec) + ' ,' +
      ' sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ,'
      + ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxt;
    SQL.Add('FROM Pay.FormsInfo AS FormsInfoEmployTypeID LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('(SELECT SUM(InsouranceItems.Employe1) AS Employer, SUM(InsouranceItems.sumPrice) AS Employee,');
    SQL.Add('SUM(InsouranceItems.Employe1 + InsouranceItems.sumPrice) AS sumPriceEmploye1,');
    SQL.Add('Interdicts_1.OfficeCode');

    SQL.Add('FROM Pay.FormsInfo AS FormsInfo_EmployTypeID RIGHT OUTER JOIN');
    SQL.Add('Pay.Interdicts AS Interdicts_1 ON FormsInfo_EmployTypeID.FormInfoID = Interdicts_1.EmployTypeID RIGHT OUTER');
    SQL.Add('JOIN');
    SQL.Add('Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.InsouranceItems(DEFAULT) AS InsouranceItems ON PersonelDecExt.DecExtID = InsouranceItems.DecExtID');
    SQL.Add('INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_1 ON PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID ON');
    SQL.Add('Interdicts_1.PersonelNo = PersonelDecExt.PersonelNo');


    // SQL.Add  ('FROM Pay.PersonelDecExt INNER JOIN');
    // SQL.Add  ('Pay.InsouranceItems(DEFAULT) AS InsouranceItems ON PersonelDecExt.DecExtID =');
    // SQL.Add  ('InsouranceItems.DecExtID INNER JOIN');
    // SQL.Add  ('Pay.FormsInfo AS FormsInfo_1 ON PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID LEFT');
    // SQL.Add  ('OUTER JOIN');
    // SQL.Add  ('Pay.Interdicts AS Interdicts_1 ON PersonelDecExt.PersonelNo = Interdicts_1.PersonelNo');

    SQL.Add('WHERE (FormsInfo_1.FormType = 61) AND (PersonelDecExt.FirstMounth <= '
      + IntToStr(MonthNo) + ') ');
    SQL.Add('AND (PersonelDecExt.EndMounth >= ' + IntToStr(MonthNo) + ') ');
    SQL.Add('AND (Interdicts_1.PersonelNO BETWEEN :FromPersonelNo2 AND :ToPersonelNo2 ) ');
    SQL.Add('AND (Interdicts_1.InterdicType = 0 ) ');
    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts_1.InterdicStartDate, 7) <=''' + optP.YearMounth
      + ''' )  AND 	(LEFT(Interdicts_1.InterdicEndDate, 7) >=''' +
      optP.YearMounth + ''')');

    SQL.Add('AND (FormsInfo_EmployTypeID.InfoID  BETWEEN :EmployTypeID0From  AND :EmployTypeID0To )');

    SQL.Add('GROUP BY Interdicts_1.OfficeCode) AS derivedtbl_1 ON Pay.Interdicts.OfficeCode = derivedtbl_1.OfficeCode ON');
    SQL.Add('FormsInfoEmployTypeID.FormInfoID = Interdicts.EmployTypeID LEFT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo');
    SQL.Add('AND FixedCalculated.YearID = FunctionItemsList_1.YearID AND FixedCalculated.Mounth = FunctionItemsList_1.Mounth LEFT OUTER JOIN');
    SQL.Add('Pay.Functions_Sum INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo INNER JOIN');
    SQL.Add('Pay.InsuranceCONSTinfo ON PersonelInfo.insuranceID = InsuranceCONSTinfo.insuranceNo ON');
    SQL.Add('FixedCalculated.Mounth = Functions_Sum.Mounth AND');
    SQL.Add('FixedCalculated.YearID = Functions_Sum.YearID AND');
    SQL.Add('FixedCalculated.Years = Functions_Sum.Years AND');
    SQL.Add('FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    SQL.Add('Interdicts.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND Interdicts.PersonelNo =');
    SQL.Add('FixedCalculated.PersonelNO');

    // SQL.Add  ('FROM Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
    // SQL.Add  ('Pay.FixedCalculated LEFT OUTER JOIN');
    // SQL.Add  ('Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo AND');
    // SQL.Add  ('FixedCalculated.Mounth = FunctionItemsList_1.Mounth LEFT OUTER JOIN');
    // SQL.Add  ('Pay.Functions_Sum INNER JOIN');
    // SQL.Add  ('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo INNER JOIN');
    // SQL.Add  ('Pay.InsuranceCONSTinfo ON PersonelInfo.insuranceID = InsuranceCONSTinfo.insuranceNo ON FixedCalculated.Mounth =');
    // SQL.Add  ('Functions_Sum.Mounth AND');
    // SQL.Add  ('FixedCalculated.PersonelNO = PersonelInfo.PersonelNo ON FormsInfoPersonelState.FormInfoID = PersonelInfo.PersonelState LEFT');
    // SQL.Add  ('OUTER JOIN');
    // SQL.Add  ('Pay.Interdicts LEFT OUTER JOIN');
    // SQL.Add  ('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON');
    // SQL.Add  ('FixedCalculated.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN');
    // SQL.Add  ('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    // SQL.Add  ('Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND Interdicts.PersonelNo =');
    // SQL.Add  ('FixedCalculated.PersonelNO');
    SQL.Add('WHERE  (FixedCalculated.ArchiveID = :ArchiveID) AND(FixedCalculated.Mounth = :mounth) ');
    SQL.Add('AND(FixedCalculated.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    SQL.Add(' AND (Functions.Years = :Years)');
    Parameters.ParamByName('Years').Value := optp.Year;

    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add(' AND (FixedCalculated.LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
    SQL.Add('AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add('AND (FormsInfoEmployTypeID.InfoID  BETWEEN :EmployTypeIDFrom  AND :EmployTypeIDTo )');
    SQL.Add('AND (InterdicType = 0 ) ');
    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + optP.YearMounth
      + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      optP.YearMounth + ''')');

    SQL.Add('AND (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['InfoID'], ftString) + '))');
    SQL.Add('AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo) ');
    SQL.Add('AND (Functions_Sum.Mounth = :Mounth4Fun) ');
    SQL.Add('AND (PersonelInfo.insuranceID BETWEEN :insuranceIDFrom AND :insuranceIDTo) ');
    SQL.Add('GROUP BY  FormsInfoOffice.InfoID, FormsInfoOffice.InfoName_L1  ');
    // ,Functions_Sum.Mounth
    SQL.Add(', derivedtbl_1.Employer, derivedtbl_1.Employee, derivedtbl_1.sumPriceEmploye1');

  end; // with
end;

procedure TSalaryList4SumOfficeUnLimitF.FormCreate(Sender: TObject);
var
  i: Integer;
  FunItems4Sum: String;
begin
  inherited;
  CountOfWage := 25;
  CountOfDec := 20;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'exec Pay.GetFunctionsItems '+APPBank.Year.ToString+','+APPBank.Year.ToString ;
    ExecSQL;
    Active := False;
  end;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT FunctionsItems.SalaryID, FormsInfo.InfoName_L1 FROM Pay.Functions INNER JOIN';
    SQL.Add('Pay.FunctionsItems ON Functions.FunctionID = FunctionsItems.FunctionID INNER JOIN');
    SQL.Add('Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID');
    SQL.Add('WHERE (Functions.Mounth >= 1)');
    SQL.Add(' AND (Functions.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    SQL.Add(' AND (Functions.Years = :Years)');
    Parameters.ParamByName('Years').Value := optp.Year;

    SQL.Add('GROUP BY FunctionsItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoID');
    SQL.Add('ORDER BY FormsInfo.InfoID');
    Active := True;
    i := 1;
    while not Eof do
    begin
      FunItems := FunItems + ',Sum(FunctionItemsList_1._Amount' + IntToStr(i) +
        ') as _Amount' + IntToStr(i);
      FunItems4Sum := FunItems4Sum + ';_Amount' + IntToStr(i);
      with TFloatField.Create(qrysalary) do
      begin
        FieldName := '_Amount' + IntToStr(i);
        DataSet := qrysalary;
        Name := 'qrysalary' + FieldName;
        DisplayLabel := '”.' + Fieldbyname('InfoName_L1').AsString;
        Index := 7 + i;
        qrysalary.FieldDefs.Add(Name, ftString, 150, True);
      end;
      Inc(i);
      Next;
    end;
    Active := False;
  end;
  // s:=StringReplace(FunItems,',Sum(FunctionItemsList_1.',';',[rfReplaceAll]);
  FunItems4Sum := copy(FunItems4Sum, 2, length(FunItems4Sum) - 1);
  FunItems4Sum := 'FunctionDay;FunctionTime;' + FunItems4Sum + ';';
//  FunItems4Sum := StringReplace(SumGrid1.FieldsName,
//    'FunctionDay;FunctionTime;', FunItems4Sum, [rfReplaceAll]);
//  SumGrid1.FieldsName := FunItems4Sum;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  qryWageSQL := qryWage.SQL.Text;
  qryDecSQL := qryDec.SQL.Text
end;

procedure TSalaryList4SumOfficeUnLimitF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TSalaryList4SumOfficeUnLimitF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList4SumOfficeUnLimitF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4SumOfficeUnLimitF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4SumOfficeUnLimitF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList4SumOfficeUnLimitF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4SumOfficeUnLimitF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4SumOfficeUnLimitF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4SumOfficeUnLimitF.ppSystemVariable1GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4SumOfficeUnLimitF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMf.adcSalary, 'BimehType', '‰Ê⁄ »Ì„Â', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT     InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        'SELECT     Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
      AddItem(DMf.adcSalary, 'InfoID', '⁄‰Ê«‰ ”«“„«‰', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        // 'SELECT    FormsInfo.InfoID,ltrim(rtrim( str(FormsInfo.InfoID) ))+ FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
        // + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
        // + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ', '');
        'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM   Pay.FormsInfo  WHERE  FormType = 12 ',
        '');
      AddItem(DMf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');

      AddItemFilter(GetFilter, TPersonelNo);

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

procedure TSalaryList4SumOfficeUnLimitF.Updatefilter;
begin
  MakeSql;
  with qrysalary do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('Mounth4Fun').Value := MonthNo;
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('FromPersonelNo2').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo2').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Parameters.ParamByName('EmployTypeID0From').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeID0To').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Parameters.ParamByName('insuranceIDFrom').Value :=
      GetcFrom(myParams.ParamValues['BimehType'], ftInteger);
    Parameters.ParamByName('insuranceIDTo').Value :=
      GetcTo(myParams.ParamValues['BimehType'], ftInteger);

    Active := True;
  end; // with
  qryWage.First;
  with qryWage do
    while not Eof and (RecNo < CountOfWage) do
    begin
      qrysalary.Fieldbyname('Wage' + IntToStr(RecNo)).DisplayLabel :=
        Fieldbyname('InfoName_L1').AsString;
      Next;
    end;
  qryDec.First;
  with qryDec do
    while not Eof and (RecNo < CountOfDec) do
    begin
      qrysalary.Fieldbyname('Dec' + IntToStr(RecNo)).DisplayLabel :=
        Fieldbyname('InfoName_L1').AsString;
      Next;
    end;
end;

procedure TSalaryList4SumOfficeUnLimitF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList4SumOfficeUnLimitF.InitReportFile(GeneralFileName: string);
var
  ReportFooter: String;
begin
  ReportFooter := FooterFormType(48);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(GeneralFileName);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('›«Ì· ç«ÅÌ ' + GeneralFileName + ' Ì«›  ‰‘œ.!˛');
      // MakeReport;
      InitReport(ppReport1, DetailBand, ppRegion1, ppRecFooterLine,
        ReportFooter);
      InitReport(ppReport1, DetailBand, ppRegion2, ppRecFooterLine2,
        ReportFooter);
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with
end;

procedure TSalaryList4SumOfficeUnLimitF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList4SumOfficeUnLimitF.actFunctionShowExecute(Sender: TObject);
begin
  inherited;
  if (mdimainF.ActFunctionsF.Enabled) and (mdimainF.ActFunctionsF.Visible) then
  begin
    CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Down := True;
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Click;
    FunctionItemsF.qryPersonel.Locate('PersonelNo',
      qrysalary.Fieldbyname('PersonelNo').AsVariant, [])
  end; // Execute

end;

procedure TSalaryList4SumOfficeUnLimitF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSalaryList4SumOfficeUnLimitF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4SumOfficeUnLimitF.AllClickClick(Sender: TObject);
begin
  inherited;
  InitReportFile((Sender as TMenuItem).Name + '.rtm');
end;

procedure TSalaryList4SumOfficeUnLimitF.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4SumOfficeUnLimitF.AllD_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qrysalary.Fieldbyname('Dec' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4SumOfficeUnLimitF.qrysalaryAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
//  if not SetPreSavedColWidth(DBGrid1, '') then
//    for i := 0 to DBGrid1.Columns.Count - 1 do
//      DBGrid1.Columns[i].Width := 52;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    if DBGrid1.Columns[i].Title.Caption = '...' then
      DBGrid1.Columns[i].Visible := False;

  DBGrid1.ColorDBGrid;
  Dbgrid1.DoLoad('');

end;

procedure TSalaryList4SumOfficeUnLimitF.qrysalaryCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('_row').AsInteger := abs(DataSet.RecNo)
end;

End.
