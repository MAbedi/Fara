{ -----------------------------------------------------------------------------
  Unit Name: SalaryList4Office2
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:  .
  ----------------------------------------------------------------------------- }
unit SalaryList4OfficeMonth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands, Filter_ADO_Const,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Mask, ppStrtch,
  ppRegion, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TSalaryList4OfficeMonthF = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
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
    Button3: TButton;
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
    w14: TppLabel;
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
    ppShape5: TppShape;
    ppRecFooterLine2: TppLine;
    ppRegion2: TppRegion;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
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
    DBGrid1: TCedarDbgrid;
    CheckBox1: TCheckBox;
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
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
  private
    capDec: array [0 .. 9] of string;
    capWage: array [0 .. 13] of string;
    FunItems: String;
    Ts_Amount: TStrings;
    FunItems4Sum: String;
    procedure MakeSql;
    procedure MakeReport;
    procedure Updatefilter;
    procedure InitReportFile(GeneralFileName: string);
    procedure addFunctionsItems;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList4OfficeMonthF: TSalaryList4OfficeMonthF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  main, FunctionItems, ListSalary, searchCode_ADO,
  SalaryFunctions, infoSMS;

{$R *.dfm}

procedure TSalaryList4OfficeMonthF.MakeSql;
var
  W: Integer;
  sqltxt, bozorgtar: string;
begin
  inherited;
  // ----make qrysalary sql-----------------------------------
  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    if myParams.FindParam('PersonelState') <> nil then
    begin
      Parameters.ParamByName('PersonelStateFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('PersonelStateTo').Value :=
        GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('FromPersonelNo').Value :=
        GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
      Parameters.ParamByName('ToPersonelNo').Value :=
        GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('PersonelStateFrom').Value := 0;
      Parameters.ParamByName('PersonelStateTo').Value := 999999999;
      Parameters.ParamByName('FromPersonelNo').Value := 0;
      Parameters.ParamByName('ToPersonelNo').Value := 2147483647;
    end;
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Active := True;
    W := 1;

    // اینجا FormInfoID را اضافه کردیم و FunctionDay/Time را برداشتیم (در لایه بیرونی محاسبه می شوند)
    sqltxt := 'SELECT FormsInfoOffice.FormInfoID, FormsInfoOffice.InfoID, FormsInfoOffice.InfoName_L1 AS OfficeName ';
//    if Trim(FunItems) <> '' then
  //    sqltxt := sqltxt { + ' , ' } + FunItems;

    while W < 14 do
    begin
      if not Eof then
      begin
        sqltxt := sqltxt + ', sum( case when (salaryid =' +
          Fieldbyname('FormInfoID').AsString +
          ')AND(ShowlistKind = 1) then price else 0 end ) as Wage' +
          IntToStr(W);
        Next;
      end
      else
        sqltxt := sqltxt +
          ', sum( case salaryid when -1  then price else 0 end ) as Wage' +
          IntToStr(W);
      W := W + 1;
    end;

    bozorgtar := '>=';
    if qryWage.RecordCount < 14 then
      bozorgtar := '>';
    sqltxt := sqltxt + ',sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      bozorgtar + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 1 then price else 0 end  else 0 end ) as Wage14 , '
      + ' Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , ' +
      ' EydiSanavat.Sanavat, EydiSanavat.Eydi, EydiSanavat.MaliatEydi, ' +
      ' sum( case when ( ShowlistKind in(2,4,15,14) and bedbes=1 )  then price else 0 end ) as sum23Dec , '
      + ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '
      + ' sum( case when ( ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12 ) then price else 0 end ) as ContainTax , '
      + ' sum( case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as TaxValue ';
  end; // with qryWage

  with qryDec do
  begin
    Active := False;
    // پارامترهای qryDec (دقیقاً مانند قبل)
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    if myParams.FindParam('PersonelState') <> nil then
    begin
      Parameters.ParamByName('PersonelStateFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('PersonelStateTo').Value :=
        GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('FromPersonelNo').Value :=
        GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
      Parameters.ParamByName('ToPersonelNo').Value :=
        GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('PersonelStateFrom').Value := 0;
      Parameters.ParamByName('PersonelStateTo').Value := 999999999;
      Parameters.ParamByName('FromPersonelNo').Value := 0;
      Parameters.ParamByName('ToPersonelNo').Value := 2147483647;
    end;
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Active := True;
    W := 1;
    while W < 10 do
    begin
      if not Eof then
      begin
        sqltxt := sqltxt + ', sum( case  when salaryid=' +
          IfThen(Fieldbyname('FormInfoID').IsNull, '-1',
          Fieldbyname('FormInfoID').AsString) +
          '  and  ShowlistKind =2 then price else 0 end ) as dec' + IntToStr(W);
        Next;
      end
      else
        sqltxt := sqltxt +
          ', sum( case salaryid when -1  then price else 0 end ) as dec' +
          IntToStr(W);
      W := W + 1;
    end;
    bozorgtar := '>=';
    if qryDec.RecordCount < 10 then
      bozorgtar := '>';
    sqltxt := sqltxt + ',sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      bozorgtar + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 2 then price else 0 end	 else 0 end ) as Dec10 ,'
      + ' sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ,'
      + ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
  end; // with qryDec

  with qrysalary do
  begin
    Active := False;
    SQL.Clear;

    // --- لایه بیرونی (افزودن مقادیر کارکرد) ---
    SQL.Add('SELECT FuncSum.FunctionDay, FuncSum.FunctionTime,FunctionItemsList_1.*, all1.* FROM (');

    // --- لایه درونی (متن محاسبه حقوق که در sqltxt ساختیم) ---
    SQL.Add(sqltxt);

    // جوین‌های لایه درونی (Functions_SumOffice از اینجا حذف شده است)
    SQL.Add('FROM Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
    SQL.Add('Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON FixedCalculated.PersonelNO = PersonelInfo.PersonelNo ');
    SQL.Add('ON Pay.Interdicts.PersonelNo = FixedCalculated.PersonelNO ');
    SQL.Add('ON FormsInfoPersonelState.FormInfoID = PersonelInfo.PersonelState LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON FixedCalculated.OfficeCode = FormsInfoOffice.FormInfoID AND ');
    SQL.Add('Interdicts.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID ');
    SQL.Add('INNER JOIN Pay.FixedCalActive() FixedCalActive ON FixedCalculated.Mounth = FixedCalActive.Mounth AND ');
    SQL.Add('FixedCalculated.YearID = FixedCalActive.YearID AND FixedCalculated.Years = FixedCalActive.Years AND ');
    SQL.Add('FixedCalculated.ArchiveID = FixedCalActive.F_ArchiveID AND FixedCalculated.PersonelNO = FixedCalActive.PersonelNO ');

    GetYearMounth(GetcTo(myParams.ParamValues['Mounth'], ftInteger));

    SQL.Add(' LEFT OUTER JOIN ');
    SQL.Add('(SELECT OfficeCode, sum(ISNULL(EmployerAmount,0)) AS Sanavat,sum(ISNULL(EmployeeAmount,0)  ) AS Eydi ');
    SQL.Add(',sum(ISNULL(PaymentLoan,0)) AS MaliatEydi ');
    SQL.Add('FROM Pay.PersonelDecExt PersonelDecExt_1 INNER JOIN ');
    SQL.Add('Pay.FormsInfo FormsInfo_sanavat ON PersonelDecExt_1.FormInfoID = FormsInfo_sanavat.FormInfoID ');
    SQL.Add('WHERE RIGHT(LEFT(EndDate, 7),2) BETWEEN :Mounth1From and :Mounth1To ');
    SQL.Add(' AND (PersonelDecExt_1.YearID = :YearID2)');
    Parameters.ParamByName('YearID2').Value := appbank.Year;
    SQL.Add('AND ((FormsInfo_sanavat.FormType IN (59))   ) ');
    SQL.Add('AND(PersonelNo BETWEEN :PersonelNoFROM AND :PersonelNoTo ) ');
    SQL.Add('Group by OfficeCode)');
    SQL.Add(' AS EydiSanavat ON FixedCalculated.OfficeCode = EydiSanavat.OfficeCode ');

    // شروط WHERE لایه درونی
    SQL.Add(' WHERE (FixedCalculated.Mounth BETWEEN :MounthFrom AND :MounthTo )');
    SQL.Add(' AND (FixedCalculated.YearID = :YearID)');
    SQL.Add(' AND (FixedCalculated.Years = :Years)');
    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add('And (FixedCalculated.LabelID between :LabelIDFrom  and :LabelIDTo )');
    SQL.Add(' AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add(' AND (FormsInfoEmployTypeID.InfoID  BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    SQL.Add('AND (InterdicType = 0 ) ');
    SQL.Add('AND(Interdicts.State < 50)');
    SQL.Add(' and  (FormsInfoOffice.InfoID  BETWEEN :FromInfoID AND :ToInfoID)   ');
    SQL.Add(' AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    SQL.Add('AND (FormsInfo_jobCode.InfoID BETWEEN :jobCodeFrom AND :jobCodeTo ) ');

    // Group by لایه درونی (توجه کنید که FormInfoID را اضافه کردیم)
    SQL.Add('GROUP BY FormsInfoOffice.FormInfoID, FormsInfoOffice.InfoID , FormsInfoOffice.InfoName_L1 ');
    SQL.Add(', EydiSanavat.Sanavat, EydiSanavat.Eydi, EydiSanavat.MaliatEydi');
    SQL.Add(') all1 '); // پایان SubQuery اول

    // --- جوین مقادیر کارکرد در لایه بیرونی به صورت یک Group Subquery جداگانه ---
    SQL.Add('INNER JOIN (');
    SQL.Add('  SELECT OfficeCode, sum(FunctionDay) as FunctionDay, sum(FunctionTime) as FunctionTime');
    SQL.Add('  FROM Pay.Functions_SumOffice');
    SQL.Add('  WHERE (Mounth BETWEEN :Mounth2From AND :Mounth2To)');
    SQL.Add('  AND (YearID = :YearID3)');
    SQL.Add('  AND (Years = :Years3)');
    SQL.Add('  AND (PersonelNO BETWEEN :FromPersonelNo2 AND :ToPersonelNo2)');
    SQL.Add('  GROUP BY OfficeCode');
    SQL.Add(') FuncSum ON FuncSum.OfficeCode = all1.FormInfoID');

    SQL.Add('LEFT OUTER JOIN(');
    SQL.Add('SELECT OfficeCode');
    SQL.Add(FunItems);
    SQL.Add('FROM');
    SQL.Add('Pay.FunctionItemsListOffice()FunctionItemsList_1');
    SQL.Add('WHERE (Mounth BETWEEN :Mounth3From AND :Mounth3To)');
    SQL.Add('AND (YearID = :YearID4)');
    SQL.Add('AND (Years = :Years4)');
    SQL.Add('AND (PersonelNO BETWEEN :FromPersonelNo3 AND :ToPersonelNo3)');
    SQL.Add('GROUP BY OfficeCode');
    SQL.Add(') FunctionItemsList_1 ON FunctionItemsList_1.OfficeCode = all1.FormInfoID');

    SQL.Add('ORDER BY all1.InfoID');

  end; // with qrysalary
end;

procedure TSalaryList4OfficeMonthF.FormCreate(Sender: TObject);
begin
  inherited;
  addFunctionsItems;
end;

procedure TSalaryList4OfficeMonthF.addFunctionsItems;
begin
  Ts_Amount := TStringList.Create;
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
    while not Eof do
    begin
      FunItems := FunItems + ',ROUND(SUM(FunctionItemsList_1._Amount' +
        IntToStr(RecNo) + '),2)_Amount' + IntToStr(RecNo);
      FunItems4Sum := FunItems4Sum + ';_Amount' + IntToStr(RecNo);
      Ts_Amount.Add(Fieldbyname('InfoName_L1').AsString);
      Next;
    end;
    Active := False;
  end;
  FunItems4Sum := copy(FunItems4Sum, 2, length(FunItems4Sum) - 1);
  FunItems4Sum := 'FunctionDay;FunctionTime;' + FunItems4Sum + ';';
  DBGrid1.ColorDBGrid;
  DBGrid1.SetFooter4Sum([]);
  // SumGrid1.FieldsName := FunItems4Sum +
  // 'Wage1;Wage2;Wage3;Wage4;Wage5;Wage6;Wage7;Wage8;Wage9;Wage10;' +
  // 'Wage11;Wage12;Wage13;Wage14;sum23Dec;SumWage;ContainInsourance;ContainTax;'
  // + 'TaxValue;Dec1;Dec2;Dec3;Dec4;Dec5;Dec6;Dec7;Dec8;Dec9;Dec10;SumDec;PayableSalary';
end;

procedure TSalaryList4OfficeMonthF.FormShow(Sender: TObject);
begin
  inherited;
  if var_glb_Boolean then
  begin
    myParams.Clear;
    if actFilter.Execute then
      if myParams.FindParam('PersonelNo') = nil then
        Close;
  end // if
  else
    Updatefilter;
end;

procedure TSalaryList4OfficeMonthF.FormDestroy(Sender: TObject);
begin
  inherited;
  Ts_Amount.Free;
end;

procedure TSalaryList4OfficeMonthF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := appbank.CompanyName
end;

procedure TSalaryList4OfficeMonthF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4OfficeMonthF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4OfficeMonthF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    InitReportFile('SalaryList_officeMonth.rtm');
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4OfficeMonthF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4OfficeMonthF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4OfficeMonthF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4OfficeMonthF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMF.adcSalary, 'jobCode', 'پست سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 13)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 13)');

      AddItem(DMF.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItem(DMF.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');
      AddItem(DMF.adcSalary, 'InfoID', ' عنوان سازمان', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo  ' +
        'WHERE  FormType = 12 ',
        'SELECT MIN(InfoID) , MAX(InfoID)  FROM Pay.FormsInfo  ' +
        'WHERE  FormType = 12');
      // 'SELECT    FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
      // + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
      // + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ',
      // 'SELECT  MIN(InfoID) , MAX(InfoID) FROM Pay.FormsInfo INNER JOIN Pay.FixedCalculated on FixedCalculated.OfficeCode = FormsInfo.FormInfoID where formtype=12  ');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMF.adcSalary, 'Mounth', 'ماه', 'ماه', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT MonthID,Name FROM Pay.Months',
        'SELECT MIN(MonthID),MAX(MonthID) FROM Pay.Months');

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

procedure TSalaryList4OfficeMonthF.Updatefilter;
begin
  MakeSql;
  with qrysalary do
  begin
    Active := False;

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('Mounth1From').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('Mounth1To').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    Parameters.ParamByName('Mounth2From').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('Mounth2To').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('Mounth3From').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('Mounth3To').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('YearID3').Value := appbank.Year;
    Parameters.ParamByName('YearID4').Value := appbank.Year;
    Parameters.ParamByName('Years3').Value := optP.Year;
    Parameters.ParamByName('Years4').Value := optP.Year;
    Parameters.ParamByName('FromPersonelNo2').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo2').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('FromPersonelNo3').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo3').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    if myParams.FindParam('PersonelState') <> nil then
    begin
      Parameters.ParamByName('PersonelStateFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('PersonelStateTo').Value :=
        GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('FromPersonelNo').Value :=
        GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
      Parameters.ParamByName('ToPersonelNo').Value :=
        GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

      Parameters.ParamByName('PersonelNoFROM').Value :=
        GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
      Parameters.ParamByName('PersonelNoTo').Value :=
        GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('PersonelStateFrom').Value := 0;
      Parameters.ParamByName('PersonelStateTo').Value := 2147483647;
      Parameters.ParamByName('FromPersonelNo').Value := 0;
      Parameters.ParamByName('ToPersonelNo').Value := 2147483647;
      Parameters.ParamByName('PersonelNoFROM').Value := 0;
      Parameters.ParamByName('PersonelNoTo').Value := 2147483647;
    end;

    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Parameters.ParamByName('jobCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['jobCode'], ftInteger);
    Parameters.ParamByName('jobCodeTo').Value :=
      GetcTo(myParams.ParamValues['jobCode'], ftInteger);

    Parameters.ParamByName('FromInfoID').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('ToInfoID').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);

    Active := True;
  end;
end;

procedure TSalaryList4OfficeMonthF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  Updatefilter;
end;

procedure TSalaryList4OfficeMonthF.InitReportFile(GeneralFileName: string);
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
      Print;
    finally
    end; // try
  end; // with
end;

procedure TSalaryList4OfficeMonthF.MakeReport;
begin
  try
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
  end;

end;

procedure TSalaryList4OfficeMonthF.CheckBox1Click(Sender: TObject);
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

procedure TSalaryList4OfficeMonthF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4OfficeMonthF.qrysalaryAfterOpen(DataSet: TDataSet);
var
  W: Integer;
  i: Integer;
begin
  inherited;
  with qrysalary do
  begin
    W := 0;
    qryWage.First;
    while W < 13 do
    begin // 14
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
    end;
    // while
  end; // wi
  With qrysalary do
  begin
    for i := 0 to FieldCount - 1 do
    begin
      if Fields[i] is TBCDField then
        TBCDField(Fields[i]).currency := True;
      Fields[i].tag := 3
    end;
    // FieldByName('_Row').DisplayLabel:='رديف';
    Fieldbyname('InfoID').DisplayLabel := 'كد';
    Fieldbyname('OfficeName').DisplayLabel := 'واحد سازماني';
    Fieldbyname('SumWage').DisplayLabel := 'جمع حقوق و مزايا';
    Fieldbyname('ContainInsourance').DisplayLabel := 'مشمول بيمه';
    Fieldbyname('ContainTax').DisplayLabel := 'A ';
    Fieldbyname('TaxValue').DisplayLabel := 'ماليات ';
    Fieldbyname('SumDec').DisplayLabel := 'جمع كسورات';
    Fieldbyname('PayableSalary').DisplayLabel := 'حقوق قابل پرداخت';
    Fieldbyname('sum23Dec').DisplayLabel := 'بيمه كارفرما';
    Fieldbyname('FunctionDay').DisplayLabel := 'روزهاي كاركرد';
    Fieldbyname('FunctionTime').DisplayLabel := 'ساعات كاركرد';

    Fieldbyname('Sanavat').DisplayLabel := 'سنوات';
    Fieldbyname('Eydi').DisplayLabel := 'عیدی';
    Fieldbyname('MaliatEydi').DisplayLabel := 'مالیات عیدی';

    for i := 0 to Ts_Amount.Count - 1 do
      Fieldbyname('_Amount' + IntToStr(i + 1)).DisplayLabel :=
        'م.' + Ts_Amount[i];
  end;
  for i := 0 to DBGrid1.Columns.Count - 1 do
    DBGrid1.Columns[i].Width := 52;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    if DBGrid1.Columns[i].Field.DisplayLabel = DBGrid1.Columns[i].Field.FieldName
    then
      DBGrid1.Columns[i].Visible := False;

  DBGrid1.ColorDBGrid;
  CheckBox1Click(CheckBox1);
  DBGrid1.DoLoad('');

end;

End.
