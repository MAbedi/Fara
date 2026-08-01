{ -----------------------------------------------------------------------------
  Unit Name: SalaryList4Office2
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit SalaryList4Office3YearDecWage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands, FaraConsts,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Mask, ppStrtch,
  ppRegion,  ppParameter, ppDesignLayer, System.ImageList,
  System.Actions,Filter_ADO_Const, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TSalaryList4Office3YearDecWageF = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
    srcSalary: TDataSource;
    qryWage: TADOQuery;
    qryDec: TADOQuery;
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
    actFunctionShow: TAction;
    actFish: TAction;
    CmbArchiveID: TComboBox;
    actSMS: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
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
    ppLine81: TppLine;
    ppLine7: TppLine;
    ppLabel32: TppLabel;
    ppLine4: TppLine;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel30: TppLabel;
    ppLabel36: TppLabel;
    ppLabel1: TppLabel;
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
    ppDBText10: TppDBText;
    dw14: TppDBText;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    dw15: TppDBText;
    dw21: TppDBText;
    dw16: TppDBText;
    dw17: TppDBText;
    dw22: TppDBText;
    dw19: TppDBText;
    dw18: TppDBText;
    dw20: TppDBText;
    ppLine79: TppLine;
    ppLine82: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
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
    ppLine66: TppLine;
    ppLine25: TppLine;
    ppLine41: TppLine;
    ppLine59: TppLine;
    sw_col26: TppDBCalc;
    sw_col27: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    sd_col11: TppDBCalc;
    ppParameterList1: TppParameterList;
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
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure actSMSExecute(Sender: TObject);
    procedure AllD_GetText(Sender: TObject; var Text: String);
    procedure AllW_GetText(Sender: TObject; var Text: String);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure ALLSetDataFieldGetText(Sender: TObject; var Text: String);
  private
    FunItems: String;
    Ts_Amount: TStrings;
    FunItems4Sum: String;
    procedure MakeSql;
    procedure Updatefilter;
    procedure InitReportFile(GeneralFileName: string);
    procedure addFunctionsItems;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList4Office3YearDecWageF: TSalaryList4Office3YearDecWageF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  main, FunctionItems, ListSalary, searchCode_ADO,
  SalaryFunctions, infoSMS;

{$R *.dfm}

procedure TSalaryList4Office3YearDecWageF.MakeSql;
var
  sqltxt: string;
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
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
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
    sqltxt := 'SELECT  FormsInfoOffice.InfoID, FormsInfoOffice.InfoName_L1 AS OfficeName, '
      + ' FixedCalculated.PersonelNO,PersonelInfo.Mobile,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName ,PersonelInfo.fatherName_L1 '
      + ' ,FormsInfo_jobCode.InfoID as jobCode , FormsInfo_jobCode.InfoName_L1 AS jobName '
      +

      ', max(FunctionsSum. SumFunctionDay) as FunctionDay, max(FunctionsSum. SumFunctionTime) AS FunctionTime ';
    sqltxt := sqltxt + FunItems;

    while not Eof do
    begin
        sqltxt := sqltxt + ',sum(case when (salaryid =' +
          Fieldbyname('FormInfoID').AsInteger.ToString +
          ')AND(ShowlistKind = 1) then price else 0 end ) as Wage' +
          IntToStr(RecNo);
      Next;
    end;
    sqltxt := sqltxt +
      ' ,Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , ' +

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
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
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
    while not Eof do
    begin
      sqltxt := sqltxt + ', sum( case  when salaryid=' +
        IfThen(Fieldbyname('FormInfoID').IsNull, '-1', Fieldbyname('FormInfoID')
        .AsString) + '  and  ShowlistKind =2 then price else 0 end ) as dec' +
        IntToStr(RecNo);
      Next;
    end;
    sqltxt := sqltxt +
      ' ,sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ,'
      + ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxt;
    SQL.Add('FROM Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
    SQL.Add('Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID RIGHT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.FunctionsSum( :Mounth2From, :Mounth2To, :YearIDFrom , :YearIDTo )as FunctionsSum INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON FunctionsSum.PersonelNo = PersonelInfo.PersonelNo ON ');
    // SQL.Add('FixedCalculated.OfficeCode = FunctionsSum.OfficeCode AND FixedCalculated.Mounth = FunctionsSum.Mounth AND');
    SQL.Add(' FixedCalculated.PersonelNO =');
    SQL.Add('PersonelInfo.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FunctionItemsListMounth( :Mounth3From, :Mounth3To , :YearID3From , :YearID3To ) AS FunctionItemsList_1 ON FixedCalculated.PersonelNO =');
    SQL.Add('FunctionItemsList_1.PersonelNo '); //AND   FixedCalculated.Mounth = FunctionItemsList_1.Mounth
    SQL.Add('ON Pay.Interdicts.PersonelNo = FixedCalculated.PersonelNO');
    SQL.Add('ON');
    SQL.Add('FormsInfoPersonelState.FormInfoID = PersonelInfo.PersonelState LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON FixedCalculated.OfficeCode = FormsInfoOffice.FormInfoID AND');
    SQL.Add('Interdicts.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID');

    SQL.Add(' WHERE (FixedCalculated.ArchiveID = :ArchiveID)');
    SQL.Add('AND(FixedCalculated.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add(' AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add(' AND (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    SQL.Add('AND (InterdicType = 0 ) ');

    // GetYearMounth(GetcTo(myParams.ParamValues['Mounth'], ftInteger));
    // SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + opt.YearMounth
    // + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
    // opt.YearMounth + ''')');
    SQL.Add('AND (Interdicts.State < 50)');

    SQL.Add(' and  (FormsInfoOffice.InfoID  BETWEEN :FromInfoID AND :ToInfoID)   ');
    SQL.Add(' AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');

    SQL.Add('AND (FormsInfo_jobCode.InfoID BETWEEN :jobCodeFrom AND :jobCodeTo ) ');

    SQL.Add('AND (FixedCalculated.Mounth BETWEEN :MounthFrom AND :MounthTo)');

    SQL.Add(' GROUP BY FormsInfoOffice.InfoID, FixedCalculated.PersonelNO,PersonelInfo.Mobile, FormsInfoOffice.InfoName_L1,');
    SQL.Add(' PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1');
    SQL.Add(',FormsInfo_jobCode.InfoID  , FormsInfo_jobCode.InfoName_L1 ');
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('YearID3From').Value := APPBank.Year;
    Parameters.ParamByName('YearID3To').Value := APPBank.Year;

  end; // with
end;

procedure TSalaryList4Office3YearDecWageF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCmbArchiveID(CmbArchiveID, 0);
  addFunctionsItems;
end;

procedure TSalaryList4Office3YearDecWageF.addFunctionsItems;
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
      FunItems := FunItems +
        Format(',Max(FunctionItemsList_1._Amount%d) AS _Amount%d',
        [RecNo, RecNo]);
      FunItems4Sum := FunItems4Sum + ';_Amount' + IntToStr(RecNo);
      Ts_Amount.Add(Fieldbyname('InfoName_L1').AsString);
      Next;
    end;
    Active := False;
  end;
  FunItems4Sum := copy(FunItems4Sum, 2, length(FunItems4Sum) - 1);
  FunItems4Sum := 'FunctionDay;FunctionTime;' + FunItems4Sum + ';';
//  SumGrid1.FieldsName := FunItems4Sum +    'sum23Dec;SumWage;ContainInsourance;ContainTax;TaxValue;SumDec;PayableSalary';
end;

procedure TSalaryList4Office3YearDecWageF.FormShow(Sender: TObject);
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

procedure TSalaryList4Office3YearDecWageF.FormDestroy(Sender: TObject);
begin
  inherited;

  Ts_Amount.Free;
end;

procedure TSalaryList4Office3YearDecWageF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList4Office3YearDecWageF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4Office3YearDecWageF.actSendtoExcelExecute
  (Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4Office3YearDecWageF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList4Office3YearDecWageF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    // PopList4Print.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
    InitReportFile('SalaryList4Office3YearDecWage.rtm');

    // InitReportFile('SalaryList.rtm');
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4Office3YearDecWageF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4Office3YearDecWageF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4Office3YearDecWageF.ppSystemVariable1GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4Office3YearDecWageF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
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

procedure TSalaryList4Office3YearDecWageF.Updatefilter;
begin
  MakeSql;
  with qrysalary do
  begin
    Active := False;
    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('Mounth2From').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('Mounth2To').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('Mounth3From').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('Mounth3To').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);


    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);

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

procedure TSalaryList4Office3YearDecWageF.InitReportFile
  (GeneralFileName: string);
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
      Print;
    finally
    end;
  end;
end;

procedure TSalaryList4Office3YearDecWageF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4Office3YearDecWageF.qrysalaryAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  qryWage.First;
  while not qryWage.Eof do
  begin
    qrysalary.Fieldbyname('Wage' + IntToStr(qryWage.RecNo)).DisplayLabel :=
      qryWage.Fieldbyname('InfoName_L1').AsString;
    qryWage.Next;

  end;
  qryDec.First;
  while not qryDec.Eof do
  begin
    qrysalary.Fieldbyname('Dec' + IntToStr(qryDec.RecNo)).DisplayLabel :=
      qryDec.Fieldbyname('InfoName_L1').AsString;
    qryDec.Next;
  end;


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
      Fieldbyname('_Amount' + IntToStr(i + 1)).DisplayLabel := '„.' +  Ts_Amount[i];
  end;
//  if not SetPreSavedColWidth(DBGrid1, '') then
//    for i := 0 to DBGrid1.Columns.Count - 1 do
//      DBGrid1.Columns[i].Width := 52;

  for i := 0 to DBGrid1.Columns.Count - 1 do
    if DBGrid1.Columns[i].Field.DisplayLabel = DBGrid1.Columns[i]
      .Field.FieldName then
      DBGrid1.Columns[i].Visible := False;

end;

procedure TSalaryList4Office3YearDecWageF.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
  else
    Text := ''
end;

procedure TSalaryList4Office3YearDecWageF.AllD_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Trim(Text)).DisplayLabel
  else
    Text := ''
end;

procedure TSalaryList4Office3YearDecWageF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(var_glb_CurrentMonth, Text);
end;

procedure TSalaryList4Office3YearDecWageF.ALLSetDataFieldGetText
  (Sender: TObject; var Text: String);
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
