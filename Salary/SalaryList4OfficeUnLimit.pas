unit SalaryList4OfficeUnLimit;

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
  TSalaryList4OfficeUnLimitF = class(Ttemplate2MDIF)
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
    SalaryList_officeUnLimitF: TMenuItem;
    SalaryListUnLimitF: TMenuItem;
    ppDBPipeline2: TppDBPipeline;
    Button2: TButton;
    Button3: TButton;
    actFunctionShow: TAction;
    actFish: TAction;
    actPrintVijeh: TAction;
    BitBtn1: TBitBtn;
    CmbArchiveID: TComboBox;
    AllClick: TMenuItem;
    SalaryList4OfficeUnLimitFRow: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel21: TppLabel;
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
    ppLabel43: TppLabel;
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
    ppLabel8: TppLabel;
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
    ppLine13: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
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
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
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
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    ppDBCalc39: TppDBCalc;
    qrysalary: TADOQuery;
    qrysalary_Row: TIntegerField;
    qrysalaryInfoID: TIntegerField;
    qrysalaryPersonelNO: TIntegerField;
    qrysalaryOfficeName: TStringField;
    qrysalaryPersonName: TStringField;
    qrysalaryfatherName_L1: TStringField;
    qrysalaryStateName: TStringField;
    qrysalaryFunctionTime: TFloatField;
    qrysalaryWage1: TBCDField;
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
    qrysalaryinsurancename: TStringField;
    qrysalaryFunctionDay: TFloatField;
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
    procedure actFishExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure AllW_GetText(Sender: TObject; var Text: String);
    procedure AllD_GetText(Sender: TObject; var Text: String);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure qrysalaryCalcFields(DataSet: TDataSet);
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
  SalaryList4OfficeUnLimitF: TSalaryList4OfficeUnLimitF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  mdimain, FunctionItems, ListSalary, DBGrid2Print, SalaryFunctions;

{$R *.dfm}

procedure TSalaryList4OfficeUnLimitF.MakeSql;
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

    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    Parameters.ParamByName('Mounth').Value := MonthNo;
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
    W := 1;
    sqltxt := 'SELECT  InsuranceCONSTinfo.insurancename,FormsInfoOffice.InfoID,FormsInfoOffice.InfoName_L1 AS OfficeName,FormsInfoPersonelState.InfoName_L1 AS StateName,FixedCalculated.PersonelNO,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName'
      + ' ,PersonelInfo.fatherName_L1 ,min(Functions_Sum.FunctionDay) as FunctionDay , min(Functions_Sum.FunctionTime) as FunctionTime ';
    sqltxt := sqltxt + FunItems;
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

      ' sum(case when(ShowlistKind in(2,4,15,14) and bedbes=1 ) then price else 0 end ) as sum23Dec, '
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
    SQL.Add('FROM Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo AND');
    SQL.Add('FixedCalculated.Years = FunctionItemsList_1.Years AND FixedCalculated.YearID = FunctionItemsList_1.YearID AND FixedCalculated.Mounth = FunctionItemsList_1.Mounth LEFT OUTER JOIN');
    SQL.Add('Pay.Functions_Sum INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo ');

    SQL.Add('AND Functions_Sum.YearID = ' + appbank.Year.ToString );
    SQL.Add('AND Functions_Sum.Years = ' + optP.Year );
    SQL.Add(' INNER JOIN');

    SQL.Add('Pay.InsuranceCONSTinfo ON PersonelInfo.insuranceID = InsuranceCONSTinfo.insuranceNo ON FixedCalculated.Mounth =');
    SQL.Add('Functions_Sum.Mounth AND');
    SQL.Add('FixedCalculated.PersonelNO = PersonelInfo.PersonelNo ON FormsInfoPersonelState.FormInfoID = PersonelInfo.PersonelState LEFT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON');
    SQL.Add('FixedCalculated.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND Interdicts.PersonelNo =');
    SQL.Add('FixedCalculated.PersonelNO');
    SQL.Add('WHERE  (FixedCalculated.ArchiveID = :ArchiveID) AND(FixedCalculated.Mounth = :mounth) ');
    SQL.Add('AND(FixedCalculated.YearID = :YearID)');
    SQL.Add('AND(FixedCalculated.Years = :Years)');
    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
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
    SQL.Add('AND (Functions_Sum.YearID = ' + appbank.Year.ToString + ') ');
    SQL.Add('AND (Functions_Sum.Years = ' + optP.Year + ') ');
    SQL.Add('AND (PersonelInfo.insuranceID BETWEEN :insuranceIDFrom AND :insuranceIDTo) ');
    SQL.Add('GROUP BY InsuranceCONSTinfo.insurancename, FormsInfoOffice.InfoID, FixedCalculated.PersonelNO, FormsInfoOffice.InfoName_L1,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1, ');
    SQL.Add('Functions_Sum.Mounth,FormsInfoPersonelState.InfoName_L1 ' +
      FunItems);
  end; // with
end;

procedure TSalaryList4OfficeUnLimitF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  CountOfWage := 25;
  CountOfDec := 20;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'exec Pay.GetFunctionsItems ' + appbank.Year.ToString + ',' +
      appbank.Year.ToString;
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
    Parameters.ParamByName('YearID').Value := appbank.Year;
    SQL.Add(' AND (Functions.Years = :Years)');
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add('GROUP BY FunctionsItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoID');
    SQL.Add('ORDER BY FormsInfo.InfoID');
    Active := True;
    i := 1;
    while not Eof do
    begin
      FunItems := FunItems + ',FunctionItemsList_1._Amount' + IntToStr(i);
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
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  qryWageSQL := qryWage.SQL.Text;
  qryDecSQL := qryDec.SQL.Text
end;

procedure TSalaryList4OfficeUnLimitF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
  // for i:=0 to DBGrid1.Columns.Count-1 do begin
  // DBGrid1.Columns[i].Visible:=not((Pos('wage',LowerCase(DBGrid1.Columns[i].Title.Caption))<>0)or
  // (Pos('dec',LowerCase(DBGrid1.Columns[i].Title.Caption))<>0));
  // end;
end;

procedure TSalaryList4OfficeUnLimitF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := appbank.CompanyName
end;

procedure TSalaryList4OfficeUnLimitF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4OfficeUnLimitF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4OfficeUnLimitF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4OfficeUnLimitF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4OfficeUnLimitF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4OfficeUnLimitF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4OfficeUnLimitF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcSalary, 'BimehType', '‰Ê⁄ »Ì„Â', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT     InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        'SELECT     Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
      AddItem(DMF.adcSalary, 'InfoID', '⁄‰Ê«‰ ”«“„«‰', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM   Pay.FormsInfo  ' +
        'WHERE  FormType = 12 ', '');
      // 'SELECT    FormsInfo.InfoID,ltrim(rtrim( str(FormsInfo.InfoID) ))+ FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
      // + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
      // + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ', '');
      AddItem(DMF.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMF.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
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

procedure TSalaryList4OfficeUnLimitF.Updatefilter;
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

procedure TSalaryList4OfficeUnLimitF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList4OfficeUnLimitF.InitReportFile(GeneralFileName: string);
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

procedure TSalaryList4OfficeUnLimitF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList4OfficeUnLimitF.actFunctionShowExecute(Sender: TObject);
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

procedure TSalaryList4OfficeUnLimitF.actFishExecute(Sender: TObject);
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

procedure TSalaryList4OfficeUnLimitF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSalaryList4OfficeUnLimitF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4OfficeUnLimitF.AllClickClick(Sender: TObject);
begin
  inherited;
  InitReportFile((Sender as TMenuItem).Name + '.rtm');
end;

procedure TSalaryList4OfficeUnLimitF.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4OfficeUnLimitF.AllD_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qrysalary.Fieldbyname('Dec' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4OfficeUnLimitF.qrysalaryAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  for i := 0 to DBGrid1.Columns.Count - 1 do
  begin
    if DBGrid1.Columns[i].Title.Caption = '...' then
      DBGrid1.Columns[i].Visible := False
    else
      DBGrid1.Columns[i].ReadOnly := False;
  end;
  DBGrid1.ColorDBGrid
end;

procedure TSalaryList4OfficeUnLimitF.qrysalaryCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('_row').AsInteger := abs(DataSet.RecNo)
end;

End.
