// mahmood 88/02/31
unit RetardSalaryList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, ppModule, ppCtrls, ppBands,
  System.StrUtils,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Menus, ppStrtch, ppRegion,
  SumDBGrid, ppParameter, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid,
  ppDesignLayer, System.ImageList, System.Actions, frmArchiveID;

type
  TRetardSalaryListF = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
    srcSalary: TDataSource;
    Button1: TButton;
    qryWage: TADOQuery;
    qryDec: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
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
    ppDBPipeline2: TppDBPipeline;
    ALL: TMenuItem;
    N1: TMenuItem;
    ppReport1: TppReport;
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
    ppLine2: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    w5: TppLabel;
    w12: TppLabel;
    w6: TppLabel;
    w7: TppLabel;
    w13: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine34: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppLabel29: TppLabel;
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
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine36: TppLine;
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
    ppLine37: TppLine;
    ppLine7: TppLine;
    ppLabel32: TppLabel;
    ppLine4: TppLine;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel30: TppLabel;
    ppLabel36: TppLabel;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
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
    ppDBText10: TppDBText;
    dw14: TppDBText;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    dw15: TppDBText;
    dw21: TppDBText;
    dw16: TppDBText;
    dw17: TppDBText;
    dw22: TppDBText;
    dw19: TppDBText;
    dw18: TppDBText;
    dw20: TppDBText;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    dw23: TppDBText;
    dw24: TppDBText;
    dw25: TppDBText;
    dw26: TppDBText;
    dd2: TppDBText;
    ppDBText11: TppDBText;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    dw27: TppDBText;
    ppDBText6: TppDBText;
    dd11: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLabel7: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel6: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel39: TppLabel;
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
    sw_col15: TppDBCalc;
    sw_col20: TppDBCalc;
    sw_col16: TppDBCalc;
    sw_col18: TppDBCalc;
    sw_col19: TppDBCalc;
    sw_col17: TppDBCalc;
    sw_col21: TppDBCalc;
    sw_col22: TppDBCalc;
    sw_col23: TppDBCalc;
    sw_col24: TppDBCalc;
    sw_col25: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel31: TppLabel;
    ppLine63: TppLine;
    ppLine25: TppLine;
    ppLine41: TppLine;
    ppLine59: TppLine;
    sw_col26: TppDBCalc;
    sw_col27: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    sd_col11: TppDBCalc;
    ppParameterList1: TppParameterList;
    RetardSalaryList2: TMenuItem;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    Amount1: TppDBText;
    Amount2: TppDBText;
    Amount3: TppDBText;
    Calc_Amant1: TppDBCalc;
    Calc_Amant2: TppDBCalc;
    Calc_Amant3: TppDBCalc;
    DBGrid1: TCedarDbgrid;
    frArchive: TfrArchiveID;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppLabel37GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel38GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure d1GetText(Sender: TObject; var Text: String);
    procedure ppDBCalcALLWageCalcGetText(Sender: TObject; var Text: String);
    procedure ppDBCalcCalcALLDecGetText(Sender: TObject; var Text: String);
    procedure ppDBTextAllDecGetText(Sender: TObject; var Text: String);
    procedure ppDBTextALLWageGetText(Sender: TObject; var Text: String);
    procedure w1GetText(Sender: TObject; var Text: String);
    procedure ALLClick(Sender: TObject);
    procedure plblAmountGetText(Sender: TObject; var Text: string);
    procedure AllD_GetText(Sender: TObject; var Text: String);
    procedure ALLSetDataFieldGetText(Sender: TObject; var Text: String);
    procedure AllW_GetText(Sender: TObject; var Text: String);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure frArchivecmbFirstArchiveIDChange(Sender: TObject);
  private
    MonthNo: Byte;
    FormType: Integer;
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
  RetardSalaryListF: TRetardSalaryListF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO,
  SalaryFunctions, Filter_ADO_Const;

{$R *.dfm}

procedure TRetardSalaryListF.MakeSql;
var
  sqltxtWage, sqltxtDec: string;
begin
  inherited;
  // ----make qrysalary sql-----------------------------------
  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('FirstArchiveID').Value := frArchive.FirstArchiveID;
    Parameters.ParamByName('LastArchiveID').Value := frArchive.LastArchiveID;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    if FormType = 1 then
    begin
      Parameters.ParamByName('MounthFrom').Value := MonthNo;
      Parameters.ParamByName('MounthTo').Value := MonthNo;
    end
    else
    begin
      Parameters.ParamByName('MounthFrom').Value :=
        StrToIntDef(copy(GetcFrom(myParams.ParamValues['CalcDate'], ftString),
        6, 2), 0);
      Parameters.ParamByName('MounthTo').Value :=
        StrToIntDef(copy(GetcTo(myParams.ParamValues['CalcDate'], ftString),
        6, 2), 0);
    end;
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Active := True;
    sqltxtWage :=
      'SELECT FormsInfoOfficeCode.InfoID,FormsInfoOfficeCode.InfoName_L1 AS OfficeName'
      + ',FormsInfo_Project.InfoName_L1 AS ProjectName,PersonelInfo.NationalID,'
      + 'RetardFixedCalculated.PersonelNO,PersonelInfo.name_L1 + '' '' +PersonelInfo.lastName_L1 AS PersonName'
      + ',min(FunctionItemsList_1.FunctionDay) as FunctionDay,min( FunctionItemsList_1.FunctionTime) as FunctionTime';
    sqltxtWage := sqltxtWage + FunItems;
    while not eof do
    begin // W <15
      sqltxtWage := sqltxtWage + ',sum(case salaryid when ' +
        Fieldbyname('FormInfoID').AsString + '  then price else 0 end ) as Wage'
        + IntToStr(RecNo);
      Next;
    end; // while
    sqltxtWage := sqltxtWage +
      ',Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage,' +

      'sum(case when(ShowlistKind in(2,4,15,14) and bedbes=1 )then price else 0 end ) as sum23Dec,'
      +

    // 'sum(case ShowlistKind when 3 then price else 0 end ) as ContainInsourance,'+
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '
      +

      'sum(case when ( ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12  ) then price else 0 end ) as ContainTax,'
      + 'sum(case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as TaxValue ';
  end; // with
  with qryDec do
  begin
    Active := False;
    Parameters.ParamByName('FirstArchiveID').Value := frArchive.FirstArchiveID;
    Parameters.ParamByName('LastArchiveID').Value := frArchive.LastArchiveID;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    if FormType = 1 then
    begin
      Parameters.ParamByName('MounthFrom').Value := MonthNo;
      Parameters.ParamByName('MounthTo').Value := MonthNo;
    end
    else
    begin
      Parameters.ParamByName('MounthFrom').Value :=
        StrToIntDef(copy(GetcFrom(myParams.ParamValues['CalcDate'], ftString),
        6, 2), 0);
      Parameters.ParamByName('MounthTo').Value :=
        StrToIntDef(copy(GetcTo(myParams.ParamValues['CalcDate'], ftString),
        6, 2), 0);
    end;
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Active := True;
    while not eof do
    begin
      sqltxtDec := sqltxtDec + ',sum(case when salaryid=' +
        Fieldbyname('FormInfoID').AsString +
        '  and  ShowlistKind =2 then price else 0 end ) as dec' +
        IntToStr(RecNo);
      Next;
    end; // while
    sqltxtDec := sqltxtDec +
      ',sum(case ShowlistKind when 2 then price else 0 end)+' +
      'Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec,'
      + 'Sum(case ShowlistKind when 1 then price else 0 end )-(sum(case ShowlistKind when 2 then price else 0 end )+Sum(case when ShowlistKind=11 and bedbes = 2 then price else 0 end ))as PayableSalary';
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxtWage + sqltxtDec;
    SQL.Add('FROM Pay.RetardFixedCalculated( :FirstArchiveID , :LastArchiveID , DEFAULT ,:LabelIDFrom  , :LabelIDTo , :YearIDFrom , :YearIDTo) AS RetardFixedCalculated LEFT OUTER JOIN');

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    SQL.Add('Pay.FunctionItemsList() AS FunctionItemsList_1 ON ');
    SQL.Add('RetardFixedCalculated.YearID = FunctionItemsList_1.YearID AND ');
    SQL.Add('RetardFixedCalculated.Mounth = FunctionItemsList_1.Mounth AND');
    SQL.Add('RetardFixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts ON RetardFixedCalculated.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.PersonelInfo ON RetardFixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOfficeCode ON RetardFixedCalculated.OfficeCode = FormsInfoOfficeCode.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON ' +
      ifthen(False, 'RetardFixedCalculated', 'Interdicts') +
      '.ProjectID = FormsInfo_Project.FormInfoID');

    SQL.Add(' LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Group ON Pay.Interdicts.GroupID = FormsInfo_Group.FormInfoID ');

    SQL.Add('WHERE(RetardFixedCalculated.Mounth  BETWEEN :MounthFrom AND :MounthTo ) ');
    SQL.Add('AND ( FormsInfoOfficeCode.InfoID  BETWEEN :OfficeCodeFrom AND :OfficeCodeTo) ');
    SQL.Add('AND (RetardFixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    SQL.Add('AND (InterdicType = 0 ) ');
    if FormType = 1 then
    begin
      GetYearMounth(MonthNo);
      SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' +
        optP.YearMounth + ''')');
      SQL.Add('AND (LEFT(Interdicts.InterdicEndDate , 7) >=''' +
        optP.YearMounth + ''')');
    end
    else
    begin
      SQL.Add('AND (Interdicts.InterdicStartDate <=''' +
        GetcFrom(myParams.ParamValues['CalcDate'], ftString) + ''')');
      SQL.Add('AND (Interdicts.InterdicEndDate   >=''' +
        GetcTo(myParams.ParamValues['CalcDate'], ftString) + ''')');
    end;

    SQL.Add('AND (FormsInfoEmployTypeID.InfoID  BETWEEN :EmployTypeIDFrom  AND :EmployTypeIDTo )');

    SQL.Add('AND ((Interdicts.GroupID  BETWEEN :GroupIDFrom  AND :GroupIDTo )OR(GroupID = 0))');
    SQL.Add(' AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add(' AND (FormsInfo_Project.InfoID  BETWEEN :ProjectIDFrom  AND :ProjectIDTo ) ');

    SQL.Add(' GROUP BY  FormsInfoOfficeCode.InfoID,  RetardFixedCalculated.PersonelNO,  FormsInfoOfficeCode.InfoName_L1,');
    SQL.Add('FormsInfo_Project.InfoName_L1 ,PersonelInfo.NationalID,');

    SQL.Add('  PersonelInfo.name_L1 + '' '' +  PersonelInfo.lastName_L1' +
      FunItems);

  end; // with

end;

procedure TRetardSalaryListF.FormCreate(Sender: TObject);
begin
  inherited;
  tsAmount := TStringList.Create;
  FunItems := GetFunctionsItems_(qrysalary, nil, tsAmount);
  FormType := var_glb_gParam;
  ToolBar1.Visible := FormType = 1;
  if FormType = 2 then
    Caption := Caption + '(محدود به تاريخ)';
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  frArchive.LoadChange(MonthNo);
end;

procedure TRetardSalaryListF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TRetardSalaryListF.frArchivecmbFirstArchiveIDChange(Sender: TObject);
begin
  inherited;
  frArchive.cmbFirstArchiveIDChange(Sender);
  Updatefilter;
end;

procedure TRetardSalaryListF.FormDestroy(Sender: TObject);
begin
  inherited;
  tsAmount.Free;
end;

procedure TRetardSalaryListF.ppLabel37GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRetardSalaryListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TRetardSalaryListF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
  // SendToExcel(DBGrid1);
end;

procedure TRetardSalaryListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TRetardSalaryListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TRetardSalaryListF.ppLabel38GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRetardSalaryListF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRetardSalaryListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TLabelID);
      AddItemFilter(GetFilter, TFilterInterGroupID);

      AddItemFilter(GetFilter, TFilterProjectID);

      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');

      AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'OfficeCode', ' عنوان سازمان', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE  formtype=12  ',
        'SELECT  MIN(InfoID) , MAX(InfoID) FROM Pay.FormsInfo  where formtype=12  ');

      AddItemFilter(GetFilter, TPersonelNo);

      if FormType = 2 then
        AddItem(DMf.adcSalary, 'CalcDate', 'تاريخ', 'تاريخ', ftDate, dvMinMax,
          '', '', ciSimple, '',
          'SELECT MAX(StartYear) AS StartYear, MAX(EndYear) AS EndYear FROM Util.MaliYear');

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

procedure TRetardSalaryListF.Updatefilter;
begin
  MakeSql;
  with qrysalary do
  begin
    Active := False;
    if FormType = 1 then
    begin
      Parameters.ParamByName('MounthFrom').Value := MonthNo;
      Parameters.ParamByName('MounthTo').Value := MonthNo;
    end
    else
    begin
      Parameters.ParamByName('MounthFrom').Value :=
        StrToIntDef(copy(GetcFrom(myParams.ParamValues['CalcDate'], ftString),
        6, 2), 0);
      Parameters.ParamByName('MounthTo').Value :=
        StrToIntDef(copy(GetcTo(myParams.ParamValues['CalcDate'], ftString),
        6, 2), 0);
    end;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Parameters.ParamByName('FirstArchiveID').Value := frArchive.FirstArchiveID;
    Parameters.ParamByName('LastArchiveID').Value := frArchive.LastArchiveID;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    Active := True;
    // qryWage.First;
    // while not qryWage.Eof  do begin
    // FieldByName('Wage'+IntToStr(RecNo)).DisplayLabel:=qryWage.Fieldbyname('InfoName_L1').AsString;
    // qryWage.Next ;
    // end ;//while
    // qryDec.First;
    // while not qryDec.Eof  do begin
    // FieldByName('Dec'+IntToStr(RecNo)).DisplayLabel:=qryDec.Fieldbyname('InfoName_L1').AsString;
    // qryDec.Next ;
    // end ;//while
  end; // with
end;

procedure TRetardSalaryListF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  frArchive.LoadChange(MonthNo);
  Updatefilter;
end;

procedure TRetardSalaryListF.InitReportFile(GeneralFileName: string);
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
      InitReport(ppReport1, FooterBand, ppRegion1, ppRecFooterLine,
        ReportFooter);
      InitReport(ppReport1, SummaryBand, ppRegion2, ppRecFooterLine2,
        ReportFooter);
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with
end;

procedure TRetardSalaryListF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TRetardSalaryListF.qrysalaryAfterOpen(DataSet: TDataSet);
var
  i: Integer;
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
    Fieldbyname('InfoID').DisplayLabel := 'كد';
    Fieldbyname('SumWage').DisplayLabel := 'جمع حقوق و مزايا';
    Fieldbyname('ContainInsourance').DisplayLabel := 'مشمول بيمه';
    Fieldbyname('ContainTax').DisplayLabel := 'A ';
    Fieldbyname('TaxValue').DisplayLabel := 'ماليات ';
    Fieldbyname('SumDec').DisplayLabel := 'جمع كسورات';
    Fieldbyname('PayableSalary').DisplayLabel := 'حقوق قابل پرداخت';
    Fieldbyname('sum23Dec').DisplayLabel := 'بيمه كارفرما';
    Fieldbyname('PersonelNO').DisplayLabel := 'ش. پرسنل';
    Fieldbyname('OfficeName').DisplayLabel := 'واحد سازماني';
    Fieldbyname('PersonName').DisplayLabel := 'نام پرسنل';
    Fieldbyname('FunctionDay').DisplayLabel := 'روزهاي كاركرد';
    Fieldbyname('FunctionTime').DisplayLabel := 'ساعات كاركرد';

    Fieldbyname('ProjectName').DisplayLabel := 'پروژه';
    Fieldbyname('NationalID').DisplayLabel := 'کد ملی';

  end;
  for i := 0 to tsAmount.Count - 1 do
    qrysalary.Fieldbyname('_Amount' + IntToStr(i + 1)).DisplayLabel :=
      'م.' + tsAmount.Strings[i];
  i := 1;
  with qryWage do
  begin
    First;
    while not eof do
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
    while not eof do
    begin
      qrysalary.Fieldbyname('Dec' + IntToStr(i)).DisplayLabel :=
        Fieldbyname('InfoName_L1').AsString;
      inc(i);
      Next;
    end; // while
  end;
  DBGrid1.Columns[1].Width := 70;
  DBGrid1.Columns[3].Width := 130;
  DBGrid1.ColorDBGrid;
  // DBGrid1.SetFooter4Sum([]);
  // DBGrid1.FooterColVisibleOffIfZero;
  DBGrid1.setSizeColDBGrid;

end;

procedure TRetardSalaryListF.w1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Text) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Text).DisplayLabel
  else
    Text := '';
end;

procedure TRetardSalaryListF.d1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Text) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Text).DisplayLabel
  else
    Text := '';
end;

procedure TRetardSalaryListF.ppDBTextALLWageGetText(Sender: TObject;
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

procedure TRetardSalaryListF.ppDBTextAllDecGetText(Sender: TObject;
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

procedure TRetardSalaryListF.plblAmountGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if qrysalary.FindField('_Amount' + Text) <> nil then
    Text := qrysalary.Fieldbyname('_Amount' + Text).DisplayLabel
  else
    Text := '';
end;

procedure TRetardSalaryListF.ppDBCalcALLWageCalcGetText(Sender: TObject;
  var Text: String);
var
  s: String;
begin
  inherited;
  s := 'Wage' + IntToStr(StrToInt(StringReplace((Sender as TppDBCalc).Name,
    'ppDBCalc', '', [])));
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBCalc).DataField := s;
end;

procedure TRetardSalaryListF.ppDBCalcCalcALLDecGetText(Sender: TObject;
  var Text: String);
var
  s: String;
begin
  inherited;
  s := 'Dec' + IntToStr(StrToInt(StringReplace((Sender as TppDBCalc).Name,
    'ppDBCalc', '', [])) - 50);
  if qrysalary.FindField(s) <> nil then
    (Sender as TppDBCalc).DataField := s;
end;

procedure TRetardSalaryListF.ALLClick(Sender: TObject);
begin
  inherited;
  InitReportFile((Sender as TMenuItem).Hint)
end;

procedure TRetardSalaryListF.ALLSetDataFieldGetText(Sender: TObject;
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

  if DField = s then
    DField := StringReplace(s, 'Amount', '_Amount', [rfReplaceAll]);

  if DField = s then
    DField := StringReplace(s, 'Calc_Amant', '_Amount', [rfReplaceAll]);

  if qrysalary.FindField(DField) <> nil then
    (Sender as TppDBText).DataField := DField;
end;

procedure TRetardSalaryListF.AllW_GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
  else
    Text := ''
end;

procedure TRetardSalaryListF.AllD_GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Trim(Text)).DisplayLabel
  else
    Text := ''
end;

procedure TRetardSalaryListF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRetardSalaryListF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRetardSalaryListF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TRetardSalaryListF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TRetardSalaryListF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TRetardSalaryListF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

End.
