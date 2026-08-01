unit SalaryList4Office25_UnLimit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands, ppDesignLayer,
  Filter_ADO_Const, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Menus, ppStrtch,
  ppRegion, ppParameter, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TSalaryList4Office25_UnLimitF = class(Ttemplate2MDIF)
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
    ppDBPipeline2: TppDBPipeline;
    Button2: TButton;
    Button3: TButton;
    actFunctionShow: TAction;
    actFish: TAction;
    actPrintVijeh: TAction;
    BitBtn1: TBitBtn;
    CmbArchiveID: TComboBox;
    AllClick: TMenuItem;
    SalaryList4Office25_UnLimit3Row: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel21: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel30: TppLabel;
    ppLabel34: TppLabel;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppDetailBand2: TppDetailBand;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine17: TppLine;
    ppLine24: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText9: TppDBText;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppLabel7: TppLabel;
    ppDBCalc36: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine76: TppLine;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel49: TppLabel;
    ppLine58: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel5: TppLabel;
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    ppLabel9: TppLabel;
    actSMS: TAction;
    qryAmount: TADOQuery;
    SalaryList4Office25_UnLimit2Row: TMenuItem;
    SalaryList4Office25_UnLimit1Row: TMenuItem;
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
    procedure All_Amount_GetText(Sender: TObject; var Text: String);
    procedure actSMSExecute(Sender: TObject);
    procedure ALLSetDataFieldGetText(Sender: TObject; var Text: String);
  private
    MonthNo: Byte;
    // capDec:array [0..19]of string;
    // capWage:array [0..24]of string;
    qryWageSQL, qryDecSQL, FunItems: String;
    procedure MakeSql;
    procedure Updatefilter;
    procedure InitReportFile(GeneralFileName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList4Office25_UnLimitF: TSalaryList4Office25_UnLimitF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  mdimain, FunctionItems, ListSalary, DBGrid2Print, SalaryFunctions, infoSMS,
  FaraConsts;

{$R *.dfm}

procedure TSalaryList4Office25_UnLimitF.MakeSql;
var
  sql_txt: String;
begin
  inherited;
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
    sql_txt :=
      'SELECT FormsInfoOffice.InfoID,FormsInfoOffice.InfoName_L1 AS OfficeName,'
      + 'FormsInfoGrade.InfoName_L1 AS GradeName,FormsInfoGroupID.InfoName_L1  AS GroupIDName,'
      + 'FormsInfoPersonelState.InfoName_L1 AS StateName,FixedCalculated.PersonelNO,'
      + 'PersonelInfo.Mobile,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName ,PersonelInfo.fatherName_L1 '
      + ',min( FunctionItemsList_1.FunctionDay) as FunctionDay, min( FunctionItemsList_1.FunctionTime) as  FunctionTime ';
    sql_txt := sql_txt + FunItems;
    First;
    while not Eof do
    begin
      begin
        sql_txt := sql_txt + ',sum(case when (salaryid =' +
          Fieldbyname('FormInfoID').AsString +
          ')AND(ShowlistKind = 1) then price else 0 end ) as Wage' +
          RecNo.ToString;
        Next;
      end
    end; // whil
    sql_txt := sql_txt +

      ' ,Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , ' +

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
    // SetLength(sqltxt, length(sqltxt));
    First;
    while not Eof do
    begin
      sql_txt := sql_txt + ',sum(case when salaryid=' +
        IfThen(Fieldbyname('FormInfoID').IsNull, '-1', Fieldbyname('FormInfoID')
        .AsString) + ' and ShowlistKind=2 then price else 0 end )as dec' +
        RecNo.ToString;
      Next;

    end; // while
    sql_txt := sql_txt +
      ' ,sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ,'
      + ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
    // SetLength(sqltxt, length(sqltxt));
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sql_txt;

    SQL.Add('FROM Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID RIGHT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
    SQL.Add('Pay.PersonelInfo RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo');
    SQL.Add('AND FixedCalculated.YearID = FunctionItemsList_1.YearID AND');
    SQL.Add('FixedCalculated.Years = FunctionItemsList_1.Years AND');

    SQL.Add('FixedCalculated.Mounth = FunctionItemsList_1.Mounth ON PersonelInfo.PersonelNo = FixedCalculated.PersonelNO');
    SQL.Add('ON');
    SQL.Add('FormsInfoPersonelState.FormInfoID = PersonelInfo.PersonelState ON Pay.Interdicts.PersonelNo =');
    SQL.Add('FixedCalculated.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND Interdicts.PersonelNo =');
    SQL.Add('FixedCalculated.PersonelNO');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoGrade ON Pay.Interdicts.grade = FormsInfoGrade.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoGroupID ON Pay.Interdicts.GroupID = FormsInfoGroupID.FormInfoID');

    SQL.Add(' WHERE  (FixedCalculated.ArchiveID = :ArchiveID) AND(FixedCalculated.Mounth = :mounth) ');
    SQL.Add('AND(FixedCalculated.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    SQL.Add('AND(FixedCalculated.Years = :Years)');
    Parameters.ParamByName('Years').Value := optp.Year;
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

    SQL.Add(' and  (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['InfoID'], ftString) + '))');
    SQL.Add('  AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo) ');
    // SQL.Add('  AND (Functions_Sum.Mounth = :Mounth4Fun) ');
    SQL.Add(' GROUP BY FormsInfoOffice.InfoID, FixedCalculated.PersonelNO,PersonelInfo.Mobile, FormsInfoOffice.InfoName_L1,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1 ');
    SQL.Add(',FormsInfoPersonelState.InfoName_L1 ' + FunItems);
    // ,Functions_Sum.Mounth

    SQL.Add(',FormsInfoGrade.InfoName_L1,FormsInfoGroupID.InfoName_L1 ');

  end; // with
end;

procedure TSalaryList4Office25_UnLimitF.FormCreate(Sender: TObject);
var
  s: String;
begin
  inherited;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'exec Pay.GetFunctionsItems ' + APPBank.Year.ToString + ',' +
      APPBank.Year.ToString;
    ExecSQL;
    Active := False;
  end;
  With qryAmount do
  begin
    Active := False;
    SQL.Text := 'SELECT FunctionsItems.SalaryID';
    SQL.Add(', FormsInfo.InfoName_L1 FROM Pay.Functions INNER JOIN');
    SQL.Add('Pay.FunctionsItems ON Functions.FunctionID = FunctionsItems.FunctionID INNER JOIN');
    SQL.Add('Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID');
    SQL.Add('WHERE (Functions.Mounth = :Mounth )');
    SQL.Add(' AND (Functions.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    SQL.Add(' AND (Functions.Years = :Years)');
    Parameters.ParamByName('Years').Value := optp.Year;

    SQL.Add('GROUP BY FunctionsItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoID');
    SQL.Add('ORDER BY FormsInfo.InfoID');
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Active := True;
    while not Eof do
    begin
      FunItems := FunItems + ',FunctionItemsList_1._Amount' + IntToStr(RecNo);
      Next;
    end;
  end;
  s := StringReplace(FunItems, ',FunctionItemsList_1.', ';', [rfReplaceAll]);
  s := copy(s, 2, length(s) - 1);
  s := 'FunctionDay;FunctionTime;' + s + ';';
  // s := StringReplace(SumGrid1.FieldsName, 'FunctionDay;FunctionTime;', s,    [rfReplaceAll]);
  // SumGrid1.FieldsName := s;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  qryWageSQL := qryWage.SQL.Text;
  qryDecSQL := qryDec.SQL.Text

end;

procedure TSalaryList4Office25_UnLimitF.FormShow(Sender: TObject);
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

procedure TSalaryList4Office25_UnLimitF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList4Office25_UnLimitF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4Office25_UnLimitF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4Office25_UnLimitF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList4Office25_UnLimitF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4Office25_UnLimitF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4Office25_UnLimitF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4Office25_UnLimitF.ppSystemVariable1GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4Office25_UnLimitF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
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

procedure TSalaryList4Office25_UnLimitF.Updatefilter;
begin
  MakeSql;
  with qrysalary do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    // Parameters.ParamByName('Mounth4Fun').Value:=MonthNo;
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
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
    Active := True;

  end; // with

end;

procedure TSalaryList4Office25_UnLimitF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList4Office25_UnLimitF.InitReportFile(GeneralFileName: string);
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

procedure TSalaryList4Office25_UnLimitF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList4Office25_UnLimitF.actFunctionShowExecute(Sender: TObject);
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

procedure TSalaryList4Office25_UnLimitF.actFishExecute(Sender: TObject);
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

procedure TSalaryList4Office25_UnLimitF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSalaryList4Office25_UnLimitF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4Office25_UnLimitF.AllClickClick(Sender: TObject);
begin
  inherited;
  InitReportFile((Sender as TMenuItem).Name + '.rtm');
end;

procedure TSalaryList4Office25_UnLimitF.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4Office25_UnLimitF.All_Amount_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('_Amount' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('_Amount' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4Office25_UnLimitF.AllD_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4Office25_UnLimitF.qrysalaryAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  With qrysalary do
    try
      for i := 0 to FieldCount - 1 do
      begin
        if Fields[i] is TBCDField then
          TBCDField(Fields[i]).currency := True;
        Fields[i].tag := 3;
      end;
      Fieldbyname('InfoID').DisplayLabel := 'ﬂœ';
      Fieldbyname('PersonelNO').DisplayLabel := '‘. Å—”‰·';
      Fieldbyname('OfficeName').DisplayLabel := 'Ê«Õœ ”«“„«‰Ì';
      Fieldbyname('PersonName').DisplayLabel := '‰«„ Å—”‰·';
      Fieldbyname('fatherName_L1').DisplayLabel := '‰«„ Åœ—';
      Fieldbyname('StateName').DisplayLabel := 'Ê÷⁄Ì  Å—”‰·';
      Fieldbyname('GradeName').DisplayLabel := '— »Â';
      Fieldbyname('GroupIDName').DisplayLabel := 'ê—ÊÂ';
      Fieldbyname('FunctionTime').DisplayLabel := '”«⁄«  ﬂ«—ﬂ—œ';
      Fieldbyname('FunctionDay').DisplayLabel := '—Ê“Â«Ì ﬂ«—ﬂ—œ';
      Fieldbyname('sum23Dec').DisplayLabel := '»Ì„Â ﬂ«—›—„«';
      Fieldbyname('SumWage').DisplayLabel := 'Ã„⁄ ÕﬁÊﬁ Ê „“«Ì«';
      Fieldbyname('ContainInsourance').DisplayLabel := '„‘„Ê· »Ì„Â';
      Fieldbyname('ContainTax').DisplayLabel := 'A ';
      Fieldbyname('TaxValue').DisplayLabel := '„«·Ì«  ';
      // Fieldbyname('Dec1').DisplayLabel := 'Õﬁ »Ì„Â';
      Fieldbyname('SumDec').DisplayLabel := 'Ã„⁄ ﬂ”Ê—« ';
      Fieldbyname('PayableSalary').DisplayLabel := 'ÕﬁÊﬁ ﬁ«»· Å—œ«Œ ';
      Fieldbyname('Mobile').DisplayLabel := 'Â„—«Â';
    finally
    end;

  With qryAmount do
  begin
    First;
    while not Eof do
    begin
      qrysalary.Fieldbyname('_Amount' + IntToStr(RecNo)).DisplayLabel :=
        '”.' + Fieldbyname('InfoName_L1').AsString;
      Next;
    end;
  end;

  qryWage.First;
  with qryWage do
    while not Eof do
    begin
      qrysalary.Fieldbyname('Wage' + IntToStr(RecNo)).DisplayLabel :=
        Fieldbyname('InfoName_L1').AsString;
      Next;
    end;
  qryDec.First;
  with qryDec do
    while not Eof do
    begin
      qrysalary.Fieldbyname('Dec' + IntToStr(RecNo)).DisplayLabel :=
        Fieldbyname('InfoName_L1').AsString;
      Next;
    end;

  // if not SetPreSavedColWidth(DBGrid1, '') then
  // for i := 0 to DBGrid1.Columns.Count - 1 do
  // DBGrid1.Columns[i].Width := 52;
  DBGrid1.ColorDBGrid;
  DBGrid1.DoLoad('');

end;

procedure TSalaryList4Office25_UnLimitF.ALLSetDataFieldGetText(Sender: TObject;
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
