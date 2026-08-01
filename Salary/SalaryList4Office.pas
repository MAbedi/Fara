unit SalaryList4Office;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, ppModule, ppCtrls, ppBands,
  Filter_ADO_Const, FaraConsts,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Menus, ppStrtch,
  ppRegion, SumDBGrid, ppParameter, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, ppDesignLayer, System.ImageList, System.Actions;

type
  TSalaryList4OfficeF = class(Ttemplate2MDIF)
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
    SalaryList_office: TMenuItem;
    SalaryList: TMenuItem;
    Button2: TButton;
    Button3: TButton;
    actFunctionShow: TAction;
    actFish: TAction;
    actPrintVijeh: TAction;
    BitBtn1: TBitBtn;
    CmbArchiveID: TComboBox;
    AllClick: TMenuItem;
    SalaryList4OfficeF1Row: TMenuItem;
    SalaryList_officePersonelState: TMenuItem;
    SalaryList_PersonelStateSum: TMenuItem;
    SalaryList_EmployTypeCode: TMenuItem;
    SalaryList_ProjectID: TMenuItem;
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
    StatusBar1: TStatusBar;
    actSMS: TAction;
    grd1: TCedarDbgrid;
    ppDBPipeline2: TppDBPipeline;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
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
    procedure actFunctionShowExecute(Sender: TObject);
    procedure actFishExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure qrysalaryCalcFields(DataSet: TDataSet);
    procedure actSMSExecute(Sender: TObject);
    procedure grd1SumListAfterRecalcAll(Sender: TObject);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure All_Amount_GetText(Sender: TObject; var Text: String);
    procedure AllD_GetText(Sender: TObject; var Text: String);
    procedure AllW_GetText(Sender: TObject; var Text: String);
  private
    MonthNo: Byte;
    capDec: array [0 .. 9] of string;
    capWage: array [0 .. 13] of string;
    qryWageSQL, qryDecSQL: String;
    ArchiveID: Integer;
    procedure MakeSql;
    procedure MakeReport;
    procedure Updatefilter;
    procedure InitReportFile(GeneralFileName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList4OfficeF: TSalaryList4OfficeF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  main, FunctionItems, ListSalary, DBGrid2Print, SalaryFunctions,
  Math, infoSMS, mdiMain;

{$R *.dfm}

procedure TSalaryList4OfficeF.MakeSql;
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

    SQL.Text := StringReplace(SQL.Text, ':EmployTypeIDFromTo',
      'AND (FormsInfoEmployTypeID.InfoID in(' +
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + '))',
      [rfReplaceAll]);

    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    // Parameters.ParamByName('EmployTypeIDFrom').Value:=GetcFrom(myParams.ParamValues['EmployTypeID'],ftInteger);
    // Parameters.ParamByName('EmployTypeIDTo').Value:=GetcTo(myParams.ParamValues['EmployTypeID'],ftInteger);
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Active := True;
    W := 1;
    sqltxt := 'SELECT ROW_NUMBER() OVER(ORDER BY FC.PersonelNO ASC) AS _Row,FormsInfoEmployTypeID.InfoID as EmployTypeCode , FormsInfoEmployTypeID.InfoName_L1 as EmployTypeName'
      + ' , FormsInfoOffice.InfoID,FormsInfoOffice.InfoName_L1 AS OfficeName,FC.PersonelNO '
      + ',PersonelInfo.Mobile,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName'
      + ',PersonelInfo.name_L1,PersonelInfo.lastName_L1 ,PersonelInfo.fatherName_L1 ,min(Functions_Sum.FunctionDay) as FunctionDay , min(Functions_Sum.FunctionTime) as FunctionTime '
      + ' ,FormsInfoPersonelState.InfoName_L1 as PersonelState ,FormsInfograde.InfoName_L1 as Personelgrade ,FormsInfoProject.InfoName_L1 as ProjectName ,FormsInfoProject.InfoID as ProjectID';

    while W < 14 do
    begin // W <15
      if not Eof then
      begin
        sqltxt := sqltxt + ',sum( case when (salaryid =' +
          Fieldbyname('FormInfoID').AsString +
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
    if qryWage.RecordCount < 14 then
      bozorgtar := '>';
    sqltxt := sqltxt + ',sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      bozorgtar + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 1 then price else 0 end  else 0 end )+ISNULL( EydiSanavat.Reward,0) as Wage14 , '
      +

      ' Sum(case ShowlistKind when 1 then price else 0 end )' +
      '+ISNULL(case when C.ActRewardInlistSalary in(1,2) then EydiSanavat.Reward else 0 end ,0) as SumWage , '
      + ' EydiSanavat.Sanavat,EydiSanavat.Eydi,EydiSanavat.MaliatEydi, ' +

      ' Sum(case ShowlistKind when 1 then price else 0 end )+ISNULL(EydiSanavat.Sanavat,0)+ISNULL(EydiSanavat.Eydi,0)'
      + ' +ISNULL( case when C.ActRewardInlistSalary in(1,2)  then ISNULL(EydiSanavat.Reward,0) else 0 end ,0) as SumWageSanavat , '
      +

      ' sum(case when(ShowlistKind in(2,4,15,14) and bedbes=1 ) then price else 0 end ) as sum23Dec, '
      +

      ' derivedtbl_1.Employer, derivedtbl_1.Employee, derivedtbl_1.sumPriceEmploye1,'
      +

    // ' sum(case ShowlistKind when 3  then price else 0 end ) as ContainInsourance , '
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '

      + ' sum(case when (ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12  ) then price else 0 end )+isnull(ContainRewardTax,0) as ContainTax, '
      + ' sum(case when (ShowlistKind=11 and bedbes=2 ) then price else 0 end ) '
      + ' + ISNULL(case when C.ActRewardInlistSalary in(1,2)  then EydiSanavat.RewardTax else 0 end,0)  as TaxValue ';
  end; // with
  with qryDec do
  begin
    Active := False;
    SQL.Text := StringReplace(qryDecSQL, ':OfficeCodeFromTo',
      'AND (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['InfoID'], ftString) + '))',
      [rfReplaceAll]);

    SQL.Text := StringReplace(SQL.Text, ':EmployTypeIDFromTo',
      'AND (FormsInfoEmployTypeID.InfoID in(' +
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + '))',
      [rfReplaceAll]);

    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);
    // Parameters.ParamByName('EmployTypeIDFrom').Value:=GetcFrom(myParams.ParamValues['EmployTypeID'],ftInteger);
    // Parameters.ParamByName('EmployTypeIDTo').Value:=GetcTo(myParams.ParamValues['EmployTypeID'],ftInteger);
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Active := True;
    W := 1;
    while W < 10 do
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
      ' then case ShowlistKind when 2 then price else 0 end	 else 0 end )+ ISNULL(EydiSanavat.RewardTax,0) as Dec10 ,'
      + ' sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end )+ISNULL(EydiSanavat.RewardTax,0) as SumDec ,'
      + ' Sum(case ShowlistKind when 1 then price else 0 end )-' +
      '(sum( case ShowlistKind when 2  then price else 0 end ) ' +
      '+Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))   '
      + ' + ISNULL(case when C.ActRewardInlistSalary in(1,2)  then EydiSanavat.Reward else 0 end,0) - ISNULL(EydiSanavat.RewardTax,0) as PayableSalary '
      + ', Sum(case ShowlistKind when 1 then price else 0 end )-' +
      '(sum( case ShowlistKind when 2  then price else 0 end ) ' +
      '+Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))'
      + ' + ISNULL(EydiSanavat.Sanavat,0) + ISNULL(EydiSanavat.Eydi,0) - ISNULL(EydiSanavat.MaliatEydi,0) '
      + '+ISNULL(case when C.ActRewardInlistSalary in(1)  then EydiSanavat.Reward else 0 end,0) as PayableSalarySanavat ';
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxt;

    SQL.Add('FROM Pay.FormsInfo AS FormsInfoEmployTypeID RIGHT OUTER JOIN');
    SQL.Add('Pay.Interdicts LEFT OUTER JOIN(');

    SQL.Add('SELECT PersonelDecExt.PersonelNo, SUM(CASE WHEN ShowlistKind = 20 THEN price ELSE 0 END) AS Employer,');
    SQL.Add('SUM(CASE WHEN CalCulateKind = 12 THEN price ELSE 0 END) AS Employee, SUM(FC_1.Price)');
    SQL.Add('AS sumPriceEmploye1, Interdicts_1.OfficeCode');
    SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_1 ON PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID INNER JOIN');
    SQL.Add('Pay.FixedCalculated AS FC_1 ON PersonelDecExt.PersonelNo = FC_1.PersonelNO AND');
    SQL.Add('FormsInfo_1.FormInfoID = FC_1.SalaryID LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts AS Interdicts_1 ON PersonelDecExt.PersonelNo = Interdicts_1.PersonelNo');
    SQL.Add('WHERE (FormsInfo_1.FormType = 61) AND (Interdicts_1.State < 50) ');
    SQL.Add(Format('AND (FC_1.ArchiveID = %d ) ', [ArchiveID]));
    SQL.Add(Format('AND(FC_1.Mounth = %d ) ', [MonthNo]));
    SQL.Add(Format('AND(FC_1.YearID = %d ) ', [APPBank.Year]));

    SQL.Add('AND(FC_1.BedBes = 2) ');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND((FC_1.subcompanyCode = 0)OR(FC_1.subcompanyCode BETWEEN :companyCode2From AND :companyCode2To ))');
      Parameters.ParamByName('companyCode2From').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCode2To').Value := FcompanyCodeLogin;
    end;


    SQL.Add(Format('AND (PersonelDecExt.FirstMounth <= %d ) ', [MonthNo]));
    SQL.Add(Format('AND (PersonelDecExt.EndMounth >= %d ) ', [MonthNo]));
    SQL.Add('AND (PersonelDecExt.PersonelNo BETWEEN :FromPersonelNo2 AND :ToPersonelNo2)');
    // SQL.Add('AND (Interdicts_1.InterdicType = 0 ) ');
    // GetYearMounth(MonthNo);
    // SQL.Add('AND (LEFT(Interdicts_1.InterdicStartDate, 7) <=''' + opt.YearMounth
    // + ''' )  AND 	(LEFT(Interdicts_1.InterdicEndDate, 7) >=''' +
    // opt.YearMounth + ''')');
    SQL.Add('GROUP BY PersonelDecExt.PersonelNo, Interdicts_1.OfficeCode');
    SQL.Add(') AS derivedtbl_1 ');
    SQL.Add('ON Pay.Interdicts.PersonelNo = derivedtbl_1.PersonelNo AND ' +
      ' Interdicts.OfficeCode = derivedtbl_1.OfficeCode ON');
    SQL.Add('FormsInfoEmployTypeID.FormInfoID = Interdicts.EmployTypeID RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated AS FC ON Pay.Interdicts.PersonelNo = FC.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.Functions_Sum INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    SQL.Add('FC.Mounth = Functions_Sum.Mounth AND FC.YearID = Functions_Sum.YearID  AND FC.PersonelNO = PersonelInfo.PersonelNo');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FC.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND');
    SQL.Add('Interdicts.PersonelNo = FC.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfograde ON Pay.Interdicts.grade = FormsInfograde.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoProject ON Pay.Interdicts.ProjectID = FormsInfoProject.FormInfoID');

    SQL.Add(' LEFT OUTER JOIN ');
    SQL.Add('(SELECT PersonelNo ');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployerAmount else 0 end ),0) AS Sanavat');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployeeAmount else 0 end ),0) AS Eydi');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then PaymentLoan else 0 end ),0) AS MaliatEydi');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 111 then EmployeeAmount else 0 end ),0) AS Reward');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 111 then PaymentLoan else 0 end ),0) AS RewardTax');
    SQL.Add(',ISNULL(SUM(case when (F_sanavat.FormType = 111) and (F_sanavat.InfoID<=10) then EmployeeAmount else 0 end ),0) AS ContainRewardTax');
    GetYearMounth(MonthNo);

    SQL.Add('FROM pay.PersonelDecExt PersonelDecExt_1 INNER JOIN ');
    SQL.Add('pay.FormsInfo F_sanavat ON PersonelDecExt_1.FormInfoID = F_sanavat.FormInfoID ');
    SQL.Add('WHERE (LEFT(EndDate, 7) = ' + QuotedStr(optP.YearMounth) + ') ');
    SQL.Add('AND ((F_sanavat.FormType IN (59,111))   ) ');
    // SQL.Add('AND(PersonelNo BETWEEN :PersonelNoFROM AND :PersonelNoTo ) ');
    SQL.Add('Group by PersonelNo)');
    SQL.Add(' AS EydiSanavat ON FC.PersonelNO = EydiSanavat.PersonelNo ');

    SQL.Add('CROSS JOIN pay.Config c');


    // SQL.Add  ('FROM Pay.FixedCalculated LEFT OUTER JOIN Pay.Interdicts ');
    // SQL.Add  ('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON');
    // SQL.Add  ('FC.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN Pay.Functions_Sum INNER JOIN');
    // SQL.Add  ('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo ');
    // SQL.Add  ('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    // SQL.Add  ('FC.Mou nth = Functions_Sum.Mounth AND FC.PersonelNO = PersonelInfo.PersonelNo ');
    // SQL.Add  ('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_2 ON FC.SalaryID = FormsInfo_2.FormInfoID');
    // SQL.Add  ('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID and Interdicts.PersonelNo = FC.PersonelNO');
    //
    // SQL.Add  ('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfograde ON Pay.Interdicts.grade = FormsInfograde.FormInfoID ');
    // SQL.Add  ('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoProject ON Pay.Interdicts.ProjectID = FormsInfoProject.FormInfoID ');

    SQL.Add(' WHERE  (FC.ArchiveID = :ArchiveID) AND(FC.Mounth = :mounth) ');
    SQL.Add('AND(FC.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND((FC.subcompanyCode = 0)OR(FC.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo ))');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;

    SQL.Add(' AND (FC.LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
    SQL.Add(' AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add(' AND (FormsInfoEmployTypeID.InfoID in(' +
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + '))');
    SQL.Add('AND (InterdicType = 0 ) ');
    // GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + optP.YearMounth
      + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      optP.YearMounth + ''')');

    SQL.Add(' and  (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['InfoID'], ftString) + '))');
    SQL.Add('  AND (FC.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo) ');
    SQL.Add('  AND (Functions_Sum.Mounth = :Mounth4Fun) ');
    SQL.Add('  AND (Functions_Sum.YearID = '+ optp.Year+') ');


    SQL.Add(' GROUP BY FormsInfoOffice.InfoID, FC.PersonelNO,PersonelInfo.Mobile, FormsInfoOffice.InfoName_L1,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1,PersonelInfo.name_L1,PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1 ');
    SQL.Add(',Functions_Sum.Mounth ,FormsInfoPersonelState.InfoName_L1 ,FormsInfograde.InfoName_L1 ,FormsInfoEmployTypeID.InfoID , FormsInfoEmployTypeID.InfoName_L1 ,FormsInfoProject .InfoName_L1 ,FormsInfoProject.InfoID ');
    SQL.Add(', derivedtbl_1.Employer, derivedtbl_1.Employee, derivedtbl_1.sumPriceEmploye1');

    SQL.Add(', EydiSanavat.Sanavat,EydiSanavat.Eydi,EydiSanavat.MaliatEydi,EydiSanavat.RewardTax');

    SQL.Add(', EydiSanavat.Reward ,C.ActRewardInlistSalary,EydiSanavat.ContainRewardTax');

  end; // with
end;

procedure TSalaryList4OfficeF.FormCreate(Sender: TObject);
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  qryWageSQL := qryWage.SQL.Text;
  qryDecSQL := qryDec.SQL.Text;
  // SumGrid1.Visible := False;
  // grd1.SetFooter4Sum([]);
  ppDBPipeline2.DataSource := grd1.srcSum

end;

procedure TSalaryList4OfficeF.FormShow(Sender: TObject);

begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;

end;

procedure TSalaryList4OfficeF.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1);
end;

procedure TSalaryList4OfficeF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 4, True);
end;

procedure TSalaryList4OfficeF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList4OfficeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary)
end;

procedure TSalaryList4OfficeF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1)
end;

procedure TSalaryList4OfficeF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList4OfficeF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4OfficeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4OfficeF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4OfficeF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4OfficeF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMf.adcSalary, 'InfoID', 'عنوان سازمان', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM   Pay.FormsInfo  ' +
        'WHERE  FormType = 12 ', '');
      // 'SELECT    FormsInfo.InfoID,ltrim(rtrim( str(FormsInfo.InfoID) ))+ FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
      // + ' Pay.FormsInfo ON FC.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
      // + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ', '');
      AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)', '');
      // SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)
      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
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

procedure TSalaryList4OfficeF.Updatefilter;
var
  w_: Integer;
begin
  ArchiveID := Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
  MakeSql;
  with qrysalary do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('Mounth4Fun').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('FromPersonelNo2').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo2').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    // Parameters.ParamByName('PersonelNoFROM').Value :=
    // GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    // Parameters.ParamByName('PersonelNoTo').Value :=
    // GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);
    // Parameters.ParamByName('EmployTypeIDFrom').Value:=GetcFrom(myParams.ParamValues['EmployTypeID'],ftInteger);
    // Parameters.ParamByName('EmployTypeIDTo').Value:=GetcTo(myParams.ParamValues['EmployTypeID'],ftInteger);
    Active := True;

    w_ := 0;
    qryWage.First;
    while w_ < 13 do
    begin // w<14
      if not qryWage.Eof then
      begin
        Fieldbyname('wage' + IntToStr(w_ + 1)).DisplayLabel :=
          qryWage.Fieldbyname('InfoName_L1').AsString;
        capWage[w_] := qryWage.Fieldbyname('InfoName_L1').AsString;
        qryWage.Next;
      end
      else
      begin
        capWage[w_] := '...';
      end;
      w_ := w_ + 1;
    end; // while
    w_ := 0;
    qryDec.First;
    while w_ < 10 do
    begin
      if not qryDec.Eof then
      begin
        Fieldbyname('Dec' + IntToStr(w_ + 1)).DisplayLabel :=
          qryDec.Fieldbyname('InfoName_L1').AsString;
        capDec[w_] := qryDec.Fieldbyname('InfoName_L1').AsString;
        qryDec.Next;
      end
      else
      begin
        capDec[w_] := '...';
      end;
      w_ := w_ + 1;
    end;
    // while
  end; // with
    grd1.DoLoad('');

end;

procedure TSalaryList4OfficeF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList4OfficeF.InitReportFile(GeneralFileName: string);
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
        Warn('فايل چاپي ' + GeneralFileName + ' يافت نشد.!‏');
      MakeReport;
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

procedure TSalaryList4OfficeF.MakeReport;
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

procedure TSalaryList4OfficeF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(grd1.DataSource.DataSet.RecNo) then
      grd1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  // DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TSalaryList4OfficeF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList4OfficeF.actFunctionShowExecute(Sender: TObject);
begin
  inherited;
  if (mdiMainF.ActFunctionsF.Enabled) and (mdiMainF.ActFunctionsF.Visible) then
  begin
    CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Down := True;
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Click;
    FunctionItemsF.qryPersonel.Locate('PersonelNo',
      qrysalary.Fieldbyname('PersonelNo').AsVariant, [])
  end; // Execute

end;

procedure TSalaryList4OfficeF.actFishExecute(Sender: TObject);
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

procedure TSalaryList4OfficeF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  // DBGrid2PrintF.showGrid2Print(grd1, 0);
end;

procedure TSalaryList4OfficeF.grd1SumListAfterRecalcAll(Sender: TObject);
begin
  inherited;
  grd1.FooterColVisibleOffIfZero
end;

procedure TSalaryList4OfficeF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4OfficeF.AllClickClick(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    qrysalary.Sort := (Sender as TMenuItem).Hint;
    InitReportFile((Sender as TMenuItem).Name + '.rtm');
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4OfficeF.qrysalaryCalcFields(DataSet: TDataSet);
begin
  inherited;
  // DataSet.Fieldbyname('_Row').AsInteger := Abs(DataSet.RecNo)
end;

procedure TSalaryList4OfficeF.qrysalaryAfterOpen(DataSet: TDataSet);
var
  i: Integer;
  s: string;
begin
  inherited;
  With qrysalary do
  begin

    for i := 0 to FieldCount - 1 do
      if (Pos('wage', LowerCase(Fields[i].FieldName)) > 0) or
        (Pos('dec', LowerCase(Fields[i].FieldName)) > 0) then
        Fields[i].DisplayLabel := '...';

    qryWage.First;
    with qryWage do
      while not Eof do
      begin
        if qrysalary.FindField('Wage' + IntToStr(RecNo)) <> nil then
          qrysalary.Fieldbyname('Wage' + IntToStr(RecNo)).DisplayLabel :=
            Fieldbyname('InfoName_L1').AsString;
        Next;
      end;
    qryDec.First;
    with qryDec do
      while not Eof do
      begin
        if qrysalary.FindField('Dec' + IntToStr(RecNo)) <> nil then
          qrysalary.Fieldbyname('Dec' + IntToStr(RecNo)).DisplayLabel :=
            Fieldbyname('InfoName_L1').AsString;
        Next;
      end;

    Fieldbyname('_Row').DisplayLabel := 'رديف';
    Fieldbyname('InfoID').DisplayLabel := 'كد';
    Fieldbyname('PersonelNO').DisplayLabel := 'ش. پرسنل';
    Fieldbyname('OfficeName').DisplayLabel := 'واحد سازماني';
    Fieldbyname('PersonName').DisplayLabel := 'نام پرسنل';
    Fieldbyname('FunctionTime').DisplayLabel := 'ساعات كاركرد';
    Fieldbyname('lastName_L1').DisplayLabel := 'نام خانوادگي';
    Fieldbyname('name_L1').DisplayLabel := 'نام';
    Fieldbyname('SumWage').DisplayLabel := 'جمع حقوق و مزايا';
    Fieldbyname('ContainInsourance').DisplayLabel := 'مشمول بيمه';
    Fieldbyname('ContainTax').DisplayLabel := 'A ';
    Fieldbyname('TaxValue').DisplayLabel := 'ماليات ';
    Fieldbyname('Wage14').DisplayLabel := 'ساير مزايا';
    Fieldbyname('Dec10').DisplayLabel := 'ساير كسورات';
    Fieldbyname('SumDec').DisplayLabel := 'جمع كسورات';
    Fieldbyname('PayableSalary').DisplayLabel := 'حقوق قابل پرداخت';
    Fieldbyname('Employer').DisplayLabel := 'خدمات درماني سهم كافرما';
    Fieldbyname('Employee').DisplayLabel := 'خدمات درماني سهم كارمند';
    Fieldbyname('sumPriceEmploye1').DisplayLabel := 'جمع خدمات درماني';
    Fieldbyname('sum23Dec').DisplayLabel := 'بيمه كارفرما';
    Fieldbyname('fatherName_L1').DisplayLabel := 'نام پدر';
    Fieldbyname('PersonelState').DisplayLabel := 'وضعيت';
    Fieldbyname('PersonelGrade').DisplayLabel := 'رتبه';
    Fieldbyname('FunctionDay').DisplayLabel := 'روزهاي كاركرد';
    Fieldbyname('EmployTypeCode').DisplayLabel := 'کدنوع حكم';
    Fieldbyname('EmployTypeName').DisplayLabel := 'نوع حكم';
    Fieldbyname('ProjectID').DisplayLabel := 'كدپروژه/تفصیلی 1';
    Fieldbyname('ProjectName').DisplayLabel := 'پروژه/تفصیلی 1';
    Fieldbyname('Mobile').DisplayLabel := 'همراه';

    Fieldbyname('SumWageSanavat').DisplayLabel :=
      'جمع حقوق و مزايا(عیدی/سنوات)';
    Fieldbyname('PayableSalarySanavat').DisplayLabel :=
      'حقوق قابل پرداخت(عیدی/سنوات)';
    Fieldbyname('Sanavat').DisplayLabel := 'سنوات';
    Fieldbyname('Eydi').DisplayLabel := 'عیدی';
    Fieldbyname('MaliatEydi').DisplayLabel := 'مالیات عیدی';
    // Fieldbyname('Reward').DisplayLabel := 'پاداش';

  end;

  grd1.SetFooter4Sum([]);

  for i := 0 to grd1.Columns.Count - 1 do
  begin
    if (grd1.Columns[i].Field is TBCDField) then
      TBCDField(grd1.Columns[i].Field).Currency := True;
    if grd1.Columns[i].FieldName = 'InterdictID' then
      grd1.Columns[i].Visible := False
    else
      qrysalary.Fieldbyname(grd1.Columns[i].FieldName).tag := 3;

    grd1.Columns[i].Title.TitleButton := True;

    if grd1.Columns[i].Width > 100 then
      grd1.Columns[i].Width := 100;

    // grd1.Columns[i].Visible :=
    // not((Pos('wage', LowerCase(grd1.Columns[i].Title.Caption)) <> 0) or
    // (Pos('dec', LowerCase(grd1.Columns[i].Title.Caption)) <> 0));
  end;
  grd1.Columns[grd1.Columns.Count - 1].Width := 150;
  // Dbgrid1.SetFooter4Sum([]);
  grd1.ColorDBGrid;

  try
    i := ColumnIndexByFieldName(grd1, 'FunctionDay');
    s := VarToStr(grd1.Columns[i].Footer.Value);
    if s <> EmptyStr then
      i := StrToInt(s);
    StatusBar1.Panels[1].Text := 'روزهاي كاركرد پرسنل تقسيم بر 26 =  ‏' +
      VarToStr(RoundTo(i / 26, -1));
  except
    on E: Exception do
  end;

end;

procedure TSalaryList4OfficeF.AllW_GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList4OfficeF.All_Amount_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('_amount' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('_amount' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList4OfficeF.AllD_GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if qrysalary.FindField('dec' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('dec' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

End.
