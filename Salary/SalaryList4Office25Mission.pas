unit SalaryList4Office25Mission;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands, FaraConsts,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Menus, ppStrtch,
  ppRegion, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TMyQry = class(TADOQuery)
  protected
    procedure CreateFields; override;
  end;

  TSalaryList4Office25MissionF = class(Ttemplate2MDIF)
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
    SalaryList4Office__Mission: TMenuItem;
    ppDBPipeline2: TppDBPipeline;
    Button2: TButton;
    Button3: TButton;
    actFunctionShow: TAction;
    actFish: TAction;
    actPrintVijeh: TAction;
    BitBtn1: TBitBtn;
    CmbArchiveID: TComboBox;
    AllClick: TMenuItem;
    SalaryList4Office__MissionProject: TMenuItem;
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
    ppLabel34: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppLabel7: TppLabel;
    ppLabel24: TppLabel;
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
    ppDBText2: TppDBText;
    ppDBText54: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
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
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppDBCalc45: TppDBCalc;
    ppLine55: TppLine;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc73: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalcContainTax2: TppDBCalc;
    ppDBCalc74: TppDBCalc;
    ppDBCalc75: TppDBCalc;
    ppDBCalc76: TppDBCalc;
    ppDBCalc77: TppDBCalc;
    ppDBCalc78: TppDBCalc;
    ppDBCalc79: TppDBCalc;
    ppDBCalc80: TppDBCalc;
    ppDBCalc81: TppDBCalc;
    ppDBCalc82: TppDBCalc;
    ppDBCalc83: TppDBCalc;
    ppDBCalc84: TppDBCalc;
    ppDBCalc85: TppDBCalc;
    ppDBCalc86: TppDBCalc;
    ppDBCalc87: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    ppDBCalc89: TppDBCalc;
    ppDBCalc90: TppDBCalc;
    ppDBCalc91: TppDBCalc;
    ppDBCalc92: TppDBCalc;
    ppDBCalc93: TppDBCalc;
    ppDBCalc94: TppDBCalc;
    ppDBCalc95: TppDBCalc;
    ppDBCalc96: TppDBCalc;
    ppDBCalc97: TppDBCalc;
    ppDBCalc98: TppDBCalc;
    ppDBCalc99: TppDBCalc;
    ppDBCalc100: TppDBCalc;
    ppDBCalc101: TppDBCalc;
    ppDBCalc102: TppDBCalc;
    ppDBCalc103: TppDBCalc;
    ppDBCalc104: TppDBCalc;
    ppDBCalc105: TppDBCalc;
    ppDBCalc106: TppDBCalc;
    ppDBCalc107: TppDBCalc;
    ppDBCalc108: TppDBCalc;
    ppDBCalc109: TppDBCalc;
    ppDBCalc110: TppDBCalc;
    ppDBCalc111: TppDBCalc;
    ppDBCalc112: TppDBCalc;
    ppDBCalc113: TppDBCalc;
    ppDBCalc114: TppDBCalc;
    ppDBCalc115: TppDBCalc;
    ppDBCalc116: TppDBCalc;
    ppDBCalc117: TppDBCalc;
    ppDBCalc118: TppDBCalc;
    ppDBCalc119: TppDBCalc;
    ppDBCalc120: TppDBCalc;
    ppDBCalc121: TppDBCalc;
    ppDBCalc122: TppDBCalc;
    ppDBCalc123: TppDBCalc;
    ppDBCalc124: TppDBCalc;
    ppDBCalc125: TppDBCalc;
    ppDBCalc126: TppDBCalc;
    ppDBCalc127: TppDBCalc;
    ppDBCalc128: TppDBCalc;
    ppDBCalc129: TppDBCalc;
    ppDBCalc130: TppDBCalc;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppDBCalc132: TppDBCalc;
    ppLine71: TppLine;
    ppDBCalc133: TppDBCalc;
    ppDBCalc134: TppDBCalc;
    ppDBCalc135: TppDBCalc;
    ppDBCalc136: TppDBCalc;
    ppDBCalc137: TppDBCalc;
    ppDBCalc138: TppDBCalc;
    ppDBCalc139: TppDBCalc;
    ppLine72: TppLine;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
    procedure actFishExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure d1GetText(Sender: TObject; var Text: String);
    procedure ppDBCalcALLWageCalcGetText(Sender: TObject; var Text: String);
    procedure ppDBCalcCalcALLDecGetText(Sender: TObject; var Text: String);
    procedure ppDBTextAllDecGetText(Sender: TObject; var Text: String);
    procedure ppDBTextALLWageGetText(Sender: TObject; var Text: String);
    procedure w1GetText(Sender: TObject; var Text: String);
    procedure qrysalaryCalcFields(DataSet: TDataSet);
  private
    MonthNo: Byte;
    qryWageSQL, qryDecSQL: String;
    qrysalary: TMyQry;
    FunItems: String;
    tsAmount: TStringList;
    procedure MakeSql;
    procedure Updatefilter;
    procedure InitReportFile(GeneralFileName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList4Office25MissionF: TSalaryList4Office25MissionF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  mdimain, FunctionItems, ListSalary, DBGrid2Print, SalaryFunctions;

{$R *.dfm}

procedure TSalaryList4Office25MissionF.MakeSql;
var
  sqltxt: string;
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
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
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
    sqltxt := 'SELECT FormsInfoProject.InfoID as ProjectID, FormsInfoProject.InfoName_L1 AS ProjectName, FormsInfoOffice.InfoID, '
      + 'FormsInfoOffice.InfoName_L1 AS OfficeName,FormsInfoPersonelState.InfoName_L1 AS StateName,FixedCalculated.PersonelNO,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName ,PersonelInfo.fatherName_L1 '
      + ',min(Functions_SumProject.FunctionDay) as FunctionDay , min(Functions_SumProject.FunctionTime) as FunctionTime,jobs.jobName '
      + ',FormsInfo_jobCode.InfoName_L1 AS jobCodeName';
    sqltxt := sqltxt + FunItems;
    while not Eof do
    begin
      sqltxt := sqltxt + ',sum(case when (salaryid =' +
        Fieldbyname('FormInfoID').AsInteger.ToString +
        ')AND(ShowlistKind = 1) then price else 0 end ) as Wage' +
        IntToStr(RecNo);
      Next;
    end; // while
    sqltxt := sqltxt +
      ',sum(case when salaryid  IN (736, 738, 751, 752, 753, 754, 767, 797) then price else 0 end ) as WageMission, ';
    sqltxt := sqltxt +
      ' Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , ' +

      ' sum(case when(ShowlistKind in(2,4,15,14) and bedbes=1 ) then price else 0 end ) as sum23Dec, '
      +

    // ' sum(case ShowlistKind when 3  then price else 0 end ) as ContainInsourance , '+
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '
      +

      ' sum(case when (ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12 ) then price else 0 end ) as ContainTax, '
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
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
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
    while not Eof do
    begin
      sqltxt := sqltxt + ',sum(case when salaryid=' +
        IfThen(Fieldbyname('FormInfoID').IsNull, '-1', Fieldbyname('FormInfoID')
        .AsString) + ' and ShowlistKind=2 then price else 0 end )as dec' +
        IntToStr(RecNo);
      Next;
    end; // while
    sqltxt := sqltxt +
      ' ,sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ,'
      + ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxt;
    SQL.Add('FROM Pay.FormsInfo AS FormsInfo_2 RIGHT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoProject RIGHT OUTER JOIN');
    SQL.Add('Pay.PersonelInfo RIGHT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice RIGHT OUTER JOIN');
    SQL.Add('Pay.Functions_SumProject LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts ON Functions_SumProject.PersonelNo = Interdicts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON');
    SQL.Add('FormsInfoOffice.FormInfoID = Interdicts.OfficeCode ON PersonelInfo.PersonelNo = Functions_SumProject.PersonelNo');
    SQL.Add('RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated ON Functions_SumProject.PersonelNo = FixedCalculated.PersonelNO AND');
    SQL.Add('Functions_SumProject.Mounth = FixedCalculated.Mounth AND Functions_SumProject.Years = FixedCalculated.Years and  Functions_SumProject.YearID = FixedCalculated.YearID ON FormsInfoProject.FormInfoID = Functions_SumProject.ProjectID');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    SQL.Add('FormsInfo_2.FormInfoID = FixedCalculated.SalaryID');

    SQL.Add('LEFT OUTER JOIN Pay.jobs ON Pay.Interdicts.jobsGroup = jobs.jobCode');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID');

    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Pay.FunctionItemsList() AS FunctionItemsList_1 ON ');
    SQL.Add('FixedCalculated.YearID = FunctionItemsList_1.YearID ');
    SQL.Add('AND FixedCalculated.Mounth = FunctionItemsList_1.Mounth AND');
    SQL.Add('FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo ');

    SQL.Add('WHERE  (FixedCalculated.ArchiveID = :ArchiveID) AND(FixedCalculated.Mounth = :mounth) ');
    SQL.Add('AND(FixedCalculated.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add('AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add('AND (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    SQL.Add('AND (InterdicType = 0 ) ');
    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + optP.YearMounth
      + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      optP.YearMounth + ''')');
    SQL.Add('AND  (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['InfoID'], ftString) + '))');
    SQL.Add('AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo) ');
    SQL.Add('AND (Functions_SumProject.Mounth = :Mounth4Fun)');
    SQL.Add('AND (Functions_SumProject.YearID = :YearID1)');
    Parameters.ParamByName('YearID1').Value := APPBank.Year;

    SQL.Add('AND ( (FormsInfoProject.InfoID BETWEEN :ProjectIDFrom AND :ProjectIDTo) or Functions_SumProject.ProjectID =0 ) ');

    // SQL.Add('AND (Interdicts.jobCode BETWEEN :jobCodeFrom AND :jobCodeTo ) ');

    SQL.Add(' GROUP BY FormsInfoProject.InfoID , FormsInfoProject.InfoName_L1 ,FormsInfoOffice.InfoID, FixedCalculated.PersonelNO, FormsInfoOffice.InfoName_L1,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1 ');
    SQL.Add(',Functions_SumProject.Mounth,FormsInfoPersonelState.InfoName_L1 ,jobs.jobName,FormsInfo_jobCode.InfoName_L1');
    SQL.Add(FunItems);
    SQL.Add('ORDER BY ProjectID');
  end; // with
end;

procedure TSalaryList4Office25MissionF.FormCreate(Sender: TObject);
begin
  inherited;
  tsAmount := TStringList.Create;
  FunItems := GetFunctionsItems_(qrysalary, nil, tsAmount);
  qrysalary := TMyQry.Create(Self);
  With qrysalary do
  begin
    Connection := DMf.adcSalary;
    OnCalcFields := qrysalaryCalcFields;
    AfterOpen := qrysalaryAfterOpen;
    srcSalary.DataSet := qrysalary;
  end;

  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  qryWageSQL := qryWage.SQL.Text;
  qryDecSQL := qryDec.SQL.Text
end;

procedure TSalaryList4Office25MissionF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TSalaryList4Office25MissionF.FormDestroy(Sender: TObject);
begin
  inherited;
  tsAmount.Free;
end;

procedure TSalaryList4Office25MissionF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList4Office25MissionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4Office25MissionF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4Office25MissionF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4Office25MissionF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4Office25MissionF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4Office25MissionF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4Office25MissionF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      // AddItem(DMf.adcSalary, 'jobCode', '⁄‰«ÊÌ‰ ‘€·Ì', 'ﬂœ', ftInteger,
      // dvMinMax, '', '', ciLookup, 'SELECT jobCode,jobName FROM jobs',
      // 'SELECT Min(jobCode),Max(jobCode) From jobs');

      AddItem(DMf.adcSalary, 'ProjectID', ' ⁄‰Ê«‰ Å—ÊéÂ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT    FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON FixedCalculated.ProjectID = FormsInfo.FormInfoID WHERE  formtype=40   '
        + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ',
        'SELECT  MIN(InfoID) , MAX(InfoID) FROM Pay.FormsInfo INNER JOIN Pay.FixedCalculated on FixedCalculated.ProjectID = FormsInfo.FormInfoID where formtype=40  ');
      AddItem(DMf.adcSalary, 'InfoID', '⁄‰Ê«‰ ”«“„«‰', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT    FormsInfo.InfoID,ltrim(rtrim( str(FormsInfo.InfoID) ))+ FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
        + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ', '');
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

procedure TSalaryList4Office25MissionF.Updatefilter;
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
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    // Parameters.ParamByName('jobCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['jobCode'], ftInteger);
    // Parameters.ParamByName('jobCodeTo').Value :=
    // GetcTo(myParams.ParamValues['jobCode'], ftInteger);

    Active := True;
  end; // with
end;

procedure TSalaryList4Office25MissionF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList4Office25MissionF.InitReportFile(GeneralFileName: string);
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

procedure TSalaryList4Office25MissionF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList4Office25MissionF.actFunctionShowExecute(Sender: TObject);
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

procedure TSalaryList4Office25MissionF.actFishExecute(Sender: TObject);
var
  Month_No: Byte;
begin
  inherited;
  Month_No := MonthNo - 1;
  if (mdimainF.actListSalary.Enabled) and (mdimainF.actListSalary.Visible) then
  begin
    CreateMDIForm2(TListSalaryF, ListSalaryF, Self);
    ListSalaryF.ToolBar1.Buttons[Month_No].Down := True;
    ListSalaryF.ToolBar1.Buttons[Month_No].Click;
    ListSalaryF.qryPersonels.Locate('PersonelNo',
      qrysalary.Fieldbyname('PersonelNo').AsVariant, [])
  end; // Execute
end;

procedure TSalaryList4Office25MissionF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSalaryList4Office25MissionF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4Office25MissionF.AllClickClick(Sender: TObject);
begin
  inherited;
  qrysalary.Sort := (Sender as TMenuItem).Hint;
  InitReportFile((Sender as TMenuItem).Name + '.rtm');
end;

procedure TSalaryList4Office25MissionF.qrysalaryAfterOpen(DataSet: TDataSet);
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
    Fieldbyname('InfoID').DisplayLabel := 'ﬂœ';
    Fieldbyname('SumWage').DisplayLabel := 'Ã„⁄ ÕﬁÊﬁ Ê „“«Ì«';
    Fieldbyname('ContainInsourance').DisplayLabel := '„‘„Ê· »Ì„Â';
    Fieldbyname('ContainTax').DisplayLabel := 'A ';
    Fieldbyname('TaxValue').DisplayLabel := '„«·Ì«  ';
    Fieldbyname('SumDec').DisplayLabel := 'Ã„⁄ ﬂ”Ê—« ';
    Fieldbyname('PayableSalary').DisplayLabel := 'ÕﬁÊﬁ ﬁ«»· Å—œ«Œ ';
    Fieldbyname('sum23Dec').DisplayLabel := '»Ì„Â ﬂ«—›—„«';
    Fieldbyname('ProjectName').DisplayLabel := 'Å—ÊéÂ';
    Fieldbyname('PersonelNO').DisplayLabel := '‘. Å—”‰·';
    Fieldbyname('OfficeName').DisplayLabel := 'Ê«Õœ ”«“„«‰Ì';
    Fieldbyname('PersonName').DisplayLabel := '‰«„ Å—”‰·';
    Fieldbyname('fatherName_L1').DisplayLabel := '‰«„ Åœ—';
    Fieldbyname('FunctionDay').DisplayLabel := '—Ê“Â«Ì ﬂ«—ﬂ—œ';
    Fieldbyname('FunctionTime').DisplayLabel := '”«⁄«  ﬂ«—ﬂ—œ';
    Fieldbyname('WageMission').DisplayLabel := '„«„Ê—Ì Â«';
    Fieldbyname('StateName').DisplayLabel := 'Ê÷⁄Ì  Å—”‰·';
    Fieldbyname('ProjectID').DisplayLabel := 'ﬂœÅ—ÊéÂ';
    Fieldbyname('FunctionTime').DisplayLabel := 'Å—ÊéÂ';
    Fieldbyname('jobName').DisplayLabel := '⁄‰Ê«‰ ‘€·';
    Fieldbyname('jobCodeName').DisplayLabel := 'Å”  ”«“„«‰Ì';

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
  for i := 0 to tsAmount.Count - 1 do
    if qrysalary.FindField('_Amount' + IntToStr(i + 1)) <> nil then
      qrysalary.Fieldbyname('_Amount' + IntToStr(i + 1)).DisplayLabel :=
        tsAmount.Strings[i];

  for i := 0 to DBGrid1.Columns.Count - 1 do
    if DBGrid1.Columns[i].Width > 60 then
      DBGrid1.Columns[i].Width := 62;

      DBGrid1.ColorDBGrid;

end;

procedure TSalaryList4Office25MissionF.qrysalaryCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('_Row').AsInteger := Abs(DataSet.RecNo)
end;

procedure TSalaryList4Office25MissionF.w1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Text) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Text).DisplayLabel
  else
    Text := '';
end;

procedure TSalaryList4Office25MissionF.d1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Text) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Text).DisplayLabel
  else
    Text := '';
end;

procedure TSalaryList4Office25MissionF.ppDBTextALLWageGetText(Sender: TObject;
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

procedure TSalaryList4Office25MissionF.ppDBTextAllDecGetText(Sender: TObject;
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

procedure TSalaryList4Office25MissionF.ppDBCalcALLWageCalcGetText
  (Sender: TObject; var Text: String);
var
  s: String;
begin
  inherited;
  s := 'Wage' + IntToStr(StrToInt(StringReplace((Sender as TppDBCalc).Name,
    'ppDBCalc', '', [])));
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBCalc).DataField := s;
  s := 'Wage' + IntToStr(StrToInt(StringReplace((Sender as TppDBCalc).Name,
    'ppDBCalc', '', [])) - 71);
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBCalc).DataField := s;
end;

procedure TSalaryList4Office25MissionF.ppDBCalcCalcALLDecGetText
  (Sender: TObject; var Text: String);
var
  s: String;
begin
  inherited;
  s := 'Dec' + IntToStr(StrToInt(StringReplace((Sender as TppDBCalc).Name,
    'ppDBCalc', '', [])) - 50);
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBCalc).DataField := s;
  s := 'Dec' + IntToStr(StrToInt(StringReplace((Sender as TppDBCalc).Name,
    'ppDBCalc', '', [])) - 114);
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBCalc).DataField := s;
end;

{ TMyQry }

procedure TMyQry.CreateFields;
begin
  inherited;
  with TIntegerField.Create(Self) do
  begin
    FieldName := '_Row';
    FieldKind := fkCalculated;
    DataSet := Self;
    Name := 'qrysalary' + FieldName;
    DisplayLabel := '—œÌ›';
    Self.FieldDefs.Add(Name, ftInteger, 0, True);
    Index := 0;
  end;

end;

End.
