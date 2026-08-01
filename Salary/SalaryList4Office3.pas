{ -----------------------------------------------------------------------------
  Unit Name: SalaryList4Office2
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:  .
  ----------------------------------------------------------------------------- }
unit SalaryList4Office3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands, Filter_ADO_Const, FaraConsts,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Mask, ppStrtch,
  ppRegion, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TSalaryList4Office3F = class(Ttemplate2MDIF)
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
    Button2: TButton;
    Button3: TButton;
    actFunctionShow: TAction;
    actFish: TAction;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
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
    CmbArchiveID: TComboBox;
    actSMS: TAction;
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
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure actSMSExecute(Sender: TObject);
  private
    MonthNo: Byte;
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
  SalaryList4Office3F: TSalaryList4Office3F;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  mdimain, FunctionItems, ListSalary, searchCode_ADO,
  SalaryFunctions, infoSMS;

{$R *.dfm}

procedure TSalaryList4Office3F.MakeSql;
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
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
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
      Parameters.ParamByName('PersonelStateTo').Value := 2147483647;
      Parameters.ParamByName('FromPersonelNo').Value := 0;
      Parameters.ParamByName('ToPersonelNo').Value := 2147483647;
    end;
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    // Parameters.ParamByName('Mounth').Value:=MonthNo;
    // Parameters.ParamByName('ArchiveID').Value:=StrToInt(Trim(MskArchiveID.Text));
    Active := True;
    W := 1;
    sqltxt := 'SELECT  FormsInfoOffice.InfoID, FormsInfoOffice.InfoName_L1 AS OfficeName, '
      + ' FixedCalculated.PersonelNO,PersonelInfo.Mobile,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName,PersonelInfo.name_L1 , PersonelInfo.lastName_L1 ,PersonelInfo.fatherName_L1 '
      + ' ,FormsInfo_jobCode.InfoID as jobCode , FormsInfo_jobCode.InfoName_L1 AS jobName '
      +

      ', Functions_SumOffice.FunctionDay, Functions_SumOffice.FunctionTime ';
    sqltxt := sqltxt + FunItems;

    while W < 14 do
    begin // 1W <15
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
          ', sum( case salaryid when -1  then price else 0 end ) as Wage' +
          IntToStr(W);
      W := W + 1;
    end; // while
    bozorgtar := '>=';
    if qryWage.RecordCount < 14 then
      bozorgtar := '>';
    sqltxt := sqltxt + ',sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      bozorgtar + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 1 then price else 0 end  else 0 end ) as Wage14 , '
      + ' Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , ' +

      ' sum( case when ( ShowlistKind in(2,4,15,14) and bedbes=1 )  then price else 0 end ) as sum23Dec , '
      +

    // ' sum( case ShowlistKind when 3  then price else 0 end ) as ContainInsourance , '
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '

      + ' sum( case when ( ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12 ) then price else 0 end ) as ContainTax , '
      + ' sum( case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as TaxValue ';
  end; // with
  with qryDec do
  begin
    Active := False;
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
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
      Parameters.ParamByName('PersonelStateTo').Value := 2147483647;
      Parameters.ParamByName('FromPersonelNo').Value := 0;
      Parameters.ParamByName('ToPersonelNo').Value := 2147483647;
    end;
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    // Parameters.ParamByName('Mounth').Value:=MonthNo;
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
    end; // while
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
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxt;

    // SQL.Add('FROM Pay.FixedCalculated  ');
    //
    // SQL.Add(' LEFT OUTER JOIN');
    // SQL.Add('Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo AND');
    // SQL.Add('FixedCalculated.Mounth = FunctionItemsList_1.Mounth ');
    //
    // SQL.Add(' LEFT OUTER JOIN Pay.Interdicts ');
    //
    // SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON');
    // SQL.Add('FixedCalculated.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN Functions_SumOffice INNER JOIN');
    // SQL.Add('Pay.PersonelInfo ON Functions_SumOffice.PersonelNo = PersonelInfo.PersonelNo ');
    // SQL.Add('AND Functions_SumOffice.OfficeCode = FixedCalculated.PersonelNo ');
    // SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ');
    // SQL.Add('ON FixedCalculated.Mounth = Functions_SumOffice.Mounth AND FixedCalculated.PersonelNO = PersonelInfo.PersonelNo ');
    // SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID');
    // SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoOffice ON FixedCalculated.OfficeCode = FormsInfoOffice.FormInfoID and Interdicts.PersonelNo = FixedCalculated.PersonelNO');
    //
    // SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID');
    SQL.Add('FROM Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
    SQL.Add('Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID RIGHT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.Functions_SumOffice INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions_SumOffice.PersonelNo = PersonelInfo.PersonelNo ON FixedCalculated.OfficeCode =');
    SQL.Add('Functions_SumOffice.OfficeCode AND');
    SQL.Add('FixedCalculated.Mounth = Functions_SumOffice.Mounth AND FixedCalculated.PersonelNO =');
    SQL.Add('PersonelInfo.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO =');
    SQL.Add('FunctionItemsList_1.PersonelNo AND');
    SQL.Add('FixedCalculated.YearID = FunctionItemsList_1.YearID AND FixedCalculated.Mounth = FunctionItemsList_1.Mounth ON Pay.Interdicts.PersonelNo = FixedCalculated.PersonelNO');
    SQL.Add('ON');
    SQL.Add('FormsInfoPersonelState.FormInfoID = PersonelInfo.PersonelState LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON FixedCalculated.OfficeCode = FormsInfoOffice.FormInfoID AND');
    SQL.Add('Interdicts.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID');

    SQL.Add(' WHERE  (FixedCalculated.ArchiveID = :ArchiveID) AND(FixedCalculated.Mounth = :mounth) ');
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
    SQL.Add(' AND (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    SQL.Add('AND (InterdicType = 0 ) ');
    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + optP.YearMounth
      + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      optP.YearMounth + ''')');

    /// /////////////////////////////////////////////////
    SQL.Add(' and  (FormsInfoOffice.InfoID  BETWEEN :FromInfoID AND :ToInfoID)   ');
    SQL.Add(' AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');

    SQL.Add('AND (FormsInfo_jobCode.InfoID BETWEEN :jobCodeFrom AND :jobCodeTo ) ');

    SQL.Add(' GROUP BY FormsInfoOffice.InfoID, FixedCalculated.PersonelNO,PersonelInfo.Mobile, FormsInfoOffice.InfoName_L1,');
    SQL.Add(' PersonelInfo.name_L1 , PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1');
    SQL.Add(',FormsInfo_jobCode.InfoID  , FormsInfo_jobCode.InfoName_L1 ');

    SQL.Add(', Functions_SumOffice.FunctionDay, Functions_SumOffice.FunctionTime ');
    SQL.Add(FunItems);

    // SQL.SaveToFile('d:\sql.txt');
    // RunDoc('d:\sql.txt')
  end; // with
end;

procedure TSalaryList4Office3F.FormCreate(Sender: TObject);
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  addFunctionsItems;
end;

procedure TSalaryList4Office3F.addFunctionsItems;
begin
  Ts_Amount := TStringList.Create;
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
    while not Eof do
    begin
      FunItems := FunItems + ',FunctionItemsList_1._Amount' + IntToStr(RecNo);
      FunItems4Sum := FunItems4Sum + ';_Amount' + IntToStr(RecNo);
      Ts_Amount.Add(Fieldbyname('InfoName_L1').AsString);
      Next;
    end;
    Active := False;
  end;
  FunItems4Sum := copy(FunItems4Sum, 2, length(FunItems4Sum) - 1);
  FunItems4Sum := 'FunctionDay;FunctionTime;' + FunItems4Sum + ';';
//  SumGrid1.FieldsName := FunItems4Sum +
//    'Wage1;Wage2;Wage3;Wage4;Wage5;Wage6;Wage7;Wage8;Wage9;Wage10;' +
//    'Wage11;Wage12;Wage13;Wage14;sum23Dec;SumWage;ContainInsourance;ContainTax;'
//    + 'TaxValue;Dec1;Dec2;Dec3;Dec4;Dec5;Dec6;Dec7;Dec8;Dec9;Dec10;SumDec;PayableSalary';
end;

procedure TSalaryList4Office3F.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
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

procedure TSalaryList4Office3F.FormDestroy(Sender: TObject);
begin
  inherited;

  Ts_Amount.Free;
end;

procedure TSalaryList4Office3F.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList4Office3F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4Office3F.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4Office3F.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList4Office3F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    // PopList4Print.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
    InitReportFile('SalaryList_office3.rtm');

    // InitReportFile('SalaryList.rtm');
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4Office3F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4Office3F.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4Office3F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4Office3F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMf.adcSalary, 'jobCode', 'Å”  ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 13)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 13)');
      AddItem(DMf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');
      AddItem(DMf.adcSalary, 'InfoID', ' ⁄‰Ê«‰ ”«“„«‰', 'ﬂœ', ftInteger,
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

procedure TSalaryList4Office3F.Updatefilter;
begin
  MakeSql;
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
      Parameters.ParamByName('PersonelStateTo').Value := 2147483647;
      Parameters.ParamByName('FromPersonelNo').Value := 0;
      Parameters.ParamByName('ToPersonelNo').Value := 2147483647;
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

procedure TSalaryList4Office3F.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList4Office3F.InitReportFile(GeneralFileName: string);
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

procedure TSalaryList4Office3F.MakeReport;
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

procedure TSalaryList4Office3F.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList4Office3F.actFunctionShowExecute(Sender: TObject);
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

procedure TSalaryList4Office3F.actFishExecute(Sender: TObject);
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

procedure TSalaryList4Office3F.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4Office3F.qrysalaryAfterOpen(DataSet: TDataSet);
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
    // FieldByName('_Row').DisplayLabel:='—œÌ›';
    Fieldbyname('InfoID').DisplayLabel := 'ﬂœ';
    Fieldbyname('PersonelNO').DisplayLabel := '‘. Å—”‰·';
    Fieldbyname('OfficeName').DisplayLabel := 'Ê«Õœ ”«“„«‰Ì';
    Fieldbyname('PersonName').DisplayLabel := '‰«„ Å—”‰·';
    Fieldbyname('name_L1').DisplayLabel := '‰«„';
    Fieldbyname('lastName_L1').DisplayLabel := '‰«„ Œ«‰Ê«œêÌ';
    Fieldbyname('SumWage').DisplayLabel := 'Ã„⁄ ÕﬁÊﬁ Ê „“«Ì«';
    Fieldbyname('ContainInsourance').DisplayLabel := '„‘„Ê· »Ì„Â';
    Fieldbyname('ContainTax').DisplayLabel := 'A ';
    Fieldbyname('TaxValue').DisplayLabel := '„«·Ì«  ';
    Fieldbyname('SumDec').DisplayLabel := 'Ã„⁄ ﬂ”Ê—« ';
    Fieldbyname('PayableSalary').DisplayLabel := 'ÕﬁÊﬁ ﬁ«»· Å—œ«Œ ';
    Fieldbyname('sum23Dec').DisplayLabel := '»Ì„Â ﬂ«—›—„«';
    Fieldbyname('fatherName_L1').DisplayLabel := '‰«„ Åœ—';
    Fieldbyname('FunctionDay').DisplayLabel := '—Ê“Â«Ì ﬂ«—ﬂ—œ';
    Fieldbyname('FunctionTime').DisplayLabel := '”«⁄«  ﬂ«—ﬂ—œ';
    Fieldbyname('jobCode').DisplayLabel := 'ﬂœÅ”  ”«“„«‰Ì';
    Fieldbyname('jobName').DisplayLabel := 'Å”  ”«“„«‰Ì';

    // FieldByName('StateName').DisplayLabel:='Ê÷⁄Ì  Å—”‰·';
    // FieldByName('ProjectCode').DisplayLabel:='ﬂœÅ—ÊéÂ/„—ﬂ“Â“Ì‰Â';
    // FieldByName('ProjectName').DisplayLabel:='Å—ÊéÂ/„—ﬂ“Â“Ì‰Â';
    for i := 0 to Ts_Amount.Count - 1 do
      Fieldbyname('_Amount' + IntToStr(i + 1)).DisplayLabel :=
        '„.' + Ts_Amount[i];
  end;
//  if not SetPreSavedColWidth(DBGrid1, '') then
//    for i := 0 to DBGrid1.Columns.Count - 1 do
//      DBGrid1.Columns[i].Width := 52;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    if DBGrid1.Columns[i].Field.DisplayLabel = DBGrid1.Columns[i].Field.FieldName
    then
      DBGrid1.Columns[i].Visible := False;
  Dbgrid1.DoLoad('');


end;

End.
