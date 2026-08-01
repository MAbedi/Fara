unit SalaryList_insurance2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands,  Filter_ADO_Const,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, ppStrtch, FaraConsts,
  ppRegion, SumDBGrid, ppParameter, Menus, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TSalaryList_insurance2F = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
    srcSalary: TDataSource;
    Button1: TButton;
    qrysalaryPersonelNO: TIntegerField;
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
    qrysalaryIDNumber: TStringField;
    qrysalaryInsuranceNumber: TStringField;
    qryFunctionsItem: TADOQuery;
    qryFunctionName: TADOQuery;
    qryFunctions: TADOQuery;
    qryFunctionsItemPersonelNo: TIntegerField;
    qryFunctionsPersonelNo: TIntegerField;
    qrysalary_Amount4: TIntegerField;
    actFish: TAction;
    Button2: TButton;
    actFunctionShow: TAction;
    Button3: TButton;
    qrysalarysum7Dec: TBCDField;
    actPrintVijeh: TAction;
    BitBtn1: TBitBtn;
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
    qrysalaryWageOther: TBCDField;
    qrysalaryDec11: TBCDField;
    qrysalaryDec12: TBCDField;
    qrysalaryDec13: TBCDField;
    qrysalaryDec14: TBCDField;
    CmbArchiveID: TComboBox;
    qryFunctionsFunctionTime: TFloatField;
    qryFunctionsItemFAmount1: TFloatField;
    qryFunctionsItemFAmount2: TFloatField;
    qryFunctionsItemFAmount3: TFloatField;
    qrysalaryfatherName_L1: TStringField;
    qrysalary_Amount1: TFloatField;
    qrysalary_Amount2: TFloatField;
    qrysalary_Amount3: TFloatField;
    qrysalaryDec15: TBCDField;
    qrysalaryDec16: TBCDField;
    qrysalaryDec17: TBCDField;
    qrysalary_Row: TIntegerField;
    qrysalaryEmployTypeName: TStringField;
    qryFunctionsFunctionDay: TFloatField;
    actSMS: TAction;
    qrysalaryLastName: TStringField;
    qrysalaryName: TStringField;
    qrysalaryMobile: TStringField;
    PopList4Print: TPopupMenu;
    AllClick: TMenuItem;
    SalaryList_insurance2F1: TMenuItem;
    SalaryList_insurance2F2: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel21: TppLabel;
    w15: TppLabel;
    w16: TppLabel;
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
    w14: TppLabel;
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
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText4: TppDBText;
    ppLine81: TppLine;
    ppDBText5: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText3: TppDBText;
    dw15: TppDBText;
    dw16: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBCalc39: TppDBCalc;
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
    ppLabel7: TppLabel;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppLine75: TppLine;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppDBCalc6: TppDBCalc;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLabel5: TppLabel;
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
    qrysalarysum23Dec: TBCDField;
    qrysalaryWage25: TBCDField;
    qrysalaryNationalID: TStringField;
    qrysalaryWageDay: TBCDField;
    DBGrid1: TCedarDbgrid;
    CheckBox1: TCheckBox;
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
    procedure qryFunctionNameAfterOpen(DataSet: TDataSet);
    procedure actFishExecute(Sender: TObject);
    procedure actFunctionShowExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure qrysalaryCalcFields(DataSet: TDataSet);
    procedure actSMSExecute(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure AllD_GetText(Sender: TObject; var Text: String);
    procedure AllW_GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure All_Amount_GetText(Sender: TObject; var Text: String);
    procedure ALL_AmountSetDataFieldGetText(Sender: TObject; var Text: String);
    procedure ALLSetDataFieldGetText(Sender: TObject; var Text: String);
    procedure CheckBox1Click(Sender: TObject);
  private
    MonthNo: Byte;
    capDec: array [0 .. 13] of string;
    capWage: array [0 .. 24] of string;
    procedure MakeSql;
    procedure MakeReport;
    procedure Updatefilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList_insurance2F: TSalaryList_insurance2F;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  main, ListSalary, FunctionItems, SalaryFunctions, DBGrid2Print, infoSMS,
  mdiMain;

{$R *.dfm}

procedure TSalaryList_insurance2F.MakeSql;
var
  W: Integer;
  sqltxt, bozorgtar: string;
  // SelectList : String ;
begin
  inherited;
  // ----make qrysalary sql-----------------------------------
  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Active := True;
    W := 1;
    sqltxt := 'SELECT PersonelInfo.IDNumber, PersonelInfo.InsuranceNumber,  FormsInfoEmployTypeID.InfoName_L1 AS EmployTypeName , '
      + ' FixedCalculated.PersonelNO,PersonelInfo.Mobile,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName , '
      + ' PersonelInfo.name_L1  as Name,PersonelInfo.lastName_L1 AS LastName,PersonelInfo.fatherName_L1,PersonelInfo.NationalID '
      + ', v_InterdictItemSumSalary.AmountIN30 AS WageDay';
    while W < 26 do
    begin
      if not Eof then
      begin
        sqltxt := sqltxt + #13#10 +                                       // <=
          Format(', sum( case when (salaryid = %d AND IsNull(MounthRetard,0)= %d )'
          + 'AND(ShowlistKind = 1) then price else 0 end ) as Wage%d',
          [Fieldbyname('FormInfoID').AsInteger, Fieldbyname('MounthRetard')
          .AsInteger, W]);
        Next;
      end
      else
        sqltxt := sqltxt + #13#10 +
          ', sum( case salaryid when -1  then price else 0 end ) as Wage' +
          IntToStr(W);
      W := W + 1;
    end; // while
    bozorgtar := '>=';
    if qryWage.RecordCount < 26 then
      bozorgtar := '>';
    sqltxt := sqltxt + #13#10 +
      Format(',sum( case when (salaryid %s)AND(ShowlistKind = 1) then price else 0 end ) as WageOther , ',
      [IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      bozorgtar + Fieldbyname('FormInfoID').AsString, '<-1 ')]);
    // // AND (IsNull(MounthRetard,0)= %d)
    // sqltxt := sqltxt + #13#10 + Format(', sum( case  when ( (salaryid > %d) '
    // + 'AND (FixedCalculated.ShowListKind = 1) ) then price else 0 end ) as WageOther ,',
    // [Fieldbyname('FormInfoID').AsInteger, Fieldbyname('MounthRetard')
    // .AsInteger]);

    sqltxt := sqltxt + #13#10 +
    // ',sum( case  when salaryid ' +
    // IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
    // '>' + Fieldbyname('FormInfoID').AsString, '<-1 ') +
    // ' then case ShowlistKind when 1 then price else 0 end  else 0 end ) as Wage25 , '

      ' Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , ' +

      ' sum( case when ( ShowlistKind in(2,4,15,14) and bedbes=1 )  then price else 0 end ) as sum23Dec , '
      +

      'sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end ) as sum7Dec, '
      +
    // ' sum( case ShowlistKind when 3  then price else 0 end ) as ContainInsourance , '
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '

      + ' sum( case when ( ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12  ) then price else 0 end ) as ContainTax , '
      + ' sum( case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as TaxValue ';
  end; // with
  with qryDec do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Active := True;
    W := 1;
    while W < 17 do
    begin
      if not Eof then
      begin
        sqltxt := sqltxt + ', sum( case  when salaryid=' +
          Fieldbyname('FormInfoID').AsString +
          '  and  ShowlistKind =2 then price else 0 end ) as dec' + IntToStr(W);
        Next;
      end
      else
        sqltxt := sqltxt +
          ', sum( case salaryid when -1  then price else 0 end ) as dec' +
          IntToStr(W);
      W := W + 1;
    end; // while
    bozorgtar := '>=';
    if qryDec.RecordCount < 10 then
      bozorgtar := '>';
    sqltxt := sqltxt + ',sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      bozorgtar + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 2 then price else 0 end	 else 0 end ) as Dec17 ,'
      + ' sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ,'
      + ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxt;

    SQL.Add('FROM Pay.FixedCalculated LEFT OUTER JOIN Pay.Interdicts ');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON');
    SQL.Add('FixedCalculated.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN Pay.Functions_Sum INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo ');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    SQL.Add('FixedCalculated.Mounth = Functions_Sum.Mounth ');
    SQL.Add('AND FixedCalculated.YearID = Functions_Sum.YearID ');
    SQL.Add('AND FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON Pay.Interdicts.ProjectID = FormsInfo_Project.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Office ON Pay.Interdicts.OfficeCode = FormsInfo_Office.FormInfoID');

    SQL.Add('INNER JOIN Pay.v_InterdictItemSumSalary ON  v_InterdictItemSumSalary.InterdictID = Interdicts.InterdictID');

    // SQL.Add(' FROM   Pay.FixedCalculated LEFT OUTER JOIN ');
    // SQL.Add(' Pay.PersonelInfo ON FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN ');
    // SQL.Add(' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID ');

    SQL.Add(' WHERE (FixedCalculated.ArchiveID = :ArchiveID) AND (FixedCalculated.Mounth = :mounth) AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    SQL.Add('AND(FixedCalculated.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;

    SQL.Add(' AND (FixedCalculated.LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
    SQL.Add(' AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add(' AND (InterdicType = 0 ) AND  (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + optP.YearMounth
      + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      optP.YearMounth + ''')');

    SQL.Add('AND (FormsInfo_Project.InfoID  BETWEEN :ProjectIDFrom  AND :ProjectIDTo )');
    SQL.Add('AND (FormsInfo_Office.InfoID  BETWEEN :OfficeCodeFrom  AND :OfficeCodeTo )');

    SQL.Add(' GROUP BY  FixedCalculated.PersonelNO,PersonelInfo.Mobile, PersonelInfo.IDNumber, PersonelInfo.InsuranceNumber,');
    SQL.Add('  FormsInfoEmployTypeID.InfoName_L1  , PersonelInfo.fatherName_L1,PersonelInfo.NationalID,PersonelInfo.name_L1  ,PersonelInfo.lastName_L1');
    SQL.Add(', v_InterdictItemSumSalary.AmountIN30');
    // FormsInfo.InfoName_L1,
  end; // with
end;

procedure TSalaryList_insurance2F.FormCreate(Sender: TObject);
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
end;

procedure TSalaryList_insurance2F.FormShow(Sender: TObject);
begin
  inherited;

  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TSalaryList_insurance2F.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList_insurance2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList_insurance2F.AllClickClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Name + '.rtm');
end;

procedure TSalaryList_insurance2F.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList_insurance2F.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList_insurance2F.actPrintExecute(Sender: TObject);
var
  ReportFooter: String;
begin
  inherited;
  ReportFooter := FooterFormType(48);
  try
    qrysalary.DisableControls;
    MakeReport;
    // InitReport(ppReport1, ppFooterBand1, ppRegion1, ppRecFooterLine,
    // ReportFooter);
    // InitReport(ppReport1, ppSummaryBand1, ppRegion2, ppRecFooterLine2,
    // ReportFooter);
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

    // InitReportFile(ppReport1,'SalaryList_insurance2F.rtm');
    // ppReport1.Print;
  finally
    qrysalary.EnableControls;
  end;

end;

procedure TSalaryList_insurance2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList_insurance2F.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList_insurance2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList_insurance2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TLabelID);
      AddItemFilter(GetFilter, TFilterOfficeCode);

      AddItemFilter(GetFilter, TFilterProjectID);

      AddItem(DMf.adcSalary, 'EmployTypeID', 'äæÚ Íßã ', 'äæÚ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'PersonelState', 'æÖÚíÊ ÑÓäá ', 'ßÏ', ftInteger,
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

procedure TSalaryList_insurance2F.Updatefilter;
var
  W, i: Integer;
begin
  MakeSql;
  with qryFunctions do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('Years').Value := optp.Year;

    Active := True;
  end; // with
  with qryFunctionName do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Active := True;
  end; // with

  with qrysalary do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

    Active := True;
    W := 0;
    qryWage.First;
    while W < 25 do
    begin
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
    while W < 17 do
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

    for i := 0 to DBGrid1.Columns.Count - 1 do
      DBGrid1.Columns[i].Visible := DBGrid1.Columns[i].Title.Caption <> '...';
    DBGrid1.ColorDBGrid;
    CheckBox1Click(CheckBox1);

  end; // with
end;

procedure TSalaryList_insurance2F.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList_insurance2F.MakeReport;
begin
  try
    qrysalary.DisableControls;
    // w1.Caption := capWage[0];
    // w2.Text := capWage[1];
    // w3.Text := capWage[2];
    // w4.Text := capWage[3];
    // w5.Text := capWage[4];
    // w6.Text := capWage[5];
    // w7.Text := capWage[6];
    // w8.Text := capWage[7];
    // w9.Text := capWage[8];
    // w10.Text := capWage[9];
    // w11.Text := capWage[10];
    // w12.Text := capWage[11];
    // w13.Text := capWage[12];
    // w14.Text:=''; //capWage[13];

    // d2.Text := capDec[0];
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

procedure TSalaryList_insurance2F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrysalaryPersonelNO);
end;

procedure TSalaryList_insurance2F.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList_insurance2F.qryFunctionNameAfterOpen(DataSet: TDataSet);
var
  ParamID: Integer;
  fldname1: String;
  fldname2: String;
begin
  inherited;
  ParamID := 1;
  with qryFunctionsItem do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optp.Year;
    Parameters.ParamByName('Amount1').Value := -1;
    Parameters.ParamByName('Amount2').Value := -1;
    Parameters.ParamByName('Amount3').Value := -1;

    Active := True;
    DataSet.First;
    while not DataSet.Eof do
    begin
      Active := False;
      DataSet.MoveBy(ParamID - 1);
      Parameters[ParamID].Value := DataSet.Fieldbyname('SalaryId').AsInteger;
      case (ParamID - 1) of
        // 0:
        // w15.Text := DataSet.Fieldbyname('InfoName_L1').AsString;
        // 'ßÇÑßÑÏ / ' +
        1:
          fldname1 := DataSet.Fieldbyname('InfoName_L1').AsString;
        2:
          fldname2 := DataSet.Fieldbyname('InfoName_L1').AsString;
      end; // case
      Active := True;
      inc(ParamID);
      Next;
      if ParamID > 3 then
        Break;
    end; // while
  end; // with
  with qrysalary do
  begin
    Active := False;
    // Fieldbyname('_Amount1').DisplayLabel := w15.Text;
    if fldname1 <> EmptyStr then
      Fieldbyname('_Amount2').DisplayLabel := 'ã.' + fldname1;
    if fldname2 <> EmptyStr then
      Fieldbyname('_Amount3').DisplayLabel := 'ã.' + fldname2;
    setColumns2(DBGrid1, Fieldbyname('_Amount1').DisplayLabel <>
      Fieldbyname('_Amount2').DisplayLabel, '_Amount2');
    setColumns2(DBGrid1, Fieldbyname('_Amount2').DisplayLabel <>
      Fieldbyname('_Amount3').DisplayLabel, '_Amount3');

    // Active:=true;
  end; // with

  // w16.Text := '';
  // w16.Text := fldname1 + ' / ' + fldname2;
    Dbgrid1.DoLoad('');


end;

procedure TSalaryList_insurance2F.actFishExecute(Sender: TObject);
var
  Month_No: Byte;
begin
  inherited;
  Month_No := MonthNo - 1;
  if (mdiMainF.actListSalary.Enabled) and (mdiMainF.actListSalary.Visible) then
  begin
    CreateMDIForm2(TListSalaryF, ListSalaryF, Self);
    ListSalaryF.ToolBar1.Buttons[Month_No].Down := True;
    ListSalaryF.ToolBar1.Buttons[Month_No].Click;
    ListSalaryF.qryPersonels.Locate('PersonelNo',
      qrysalary.Fieldbyname('PersonelNo').AsVariant, [])
  end; // Execute
end;

procedure TSalaryList_insurance2F.actFunctionShowExecute(Sender: TObject);
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

procedure TSalaryList_insurance2F.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSalaryList_insurance2F.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
  begin
    DBGrid1.SetFooter4Sum([]);
    DBGrid1.SelectedIndex := DBGrid1.Columns.Count - 1;
  end
  else
  begin
    DBGrid1.SumList.Active := False
  end;
end;

procedure TSalaryList_insurance2F.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter;
end;

procedure TSalaryList_insurance2F.qrysalaryCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('_row').AsInteger := abs(DataSet.RecNo)
end;

procedure TSalaryList_insurance2F.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList_insurance2F.AllD_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList_insurance2F.ALL_AmountSetDataFieldGetText(Sender: TObject;
  var Text: String);
var
  s, DField: String;
begin
  inherited;
  s := (Sender as TppDBText).UserName;
  DField := StringReplace(s, '_Am', '_Amount', [rfReplaceAll]);
  if DField = s then
    DField := StringReplace(s, 's_Am', '_Amount', [rfReplaceAll]);
  if qrysalary.FindField(DField) <> nil then
    (Sender as TppDBText).DataField := DField;
end;

procedure TSalaryList_insurance2F.All_Amount_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('_Amount' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('_Amount' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList_insurance2F.ALLSetDataFieldGetText(Sender: TObject;
  var Text: String);
var
  s, DField: String;
begin
  inherited;
  s := (Sender as TppDBText).UserName;
  DField := StringReplace(s, 'dw', 'Wage', [rfReplaceAll]);
  if DField = s then
    DField := StringReplace(s, 'sw_col', 'Wage', [rfReplaceAll]);
  if DField = s then
    DField := StringReplace(s, 'dd', 'Dec', [rfReplaceAll]);
  if DField = s then
    DField := StringReplace(s, 'sd_col', 'Dec', [rfReplaceAll]);
  if qrysalary.FindField(DField) <> nil then
    (Sender as TppDBText).DataField := DField;
end;

End.
