unit SalaryList4Office25_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, ppModule, ppCtrls, ppBands,
  Filter_ADO_Const, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Menus, ppStrtch,
  ppRegion, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, FaraConsts;

type
  TSalaryList4Office25_2F = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
    srcSalary: TDataSource;
    Button1: TButton;
    qrysalaryPersonelNO: TIntegerField;
    qrysalaryOfficeName: TStringField;
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
    PopList4Print: TPopupMenu;
    SalaryList_office25_2: TMenuItem;
    SalaryList25_2: TMenuItem;
    qrysalaryInfoID: TIntegerField;
    ppDBPipeline2: TppDBPipeline;
    Button2: TButton;
    Button3: TButton;
    actFunctionShow: TAction;
    actFish: TAction;
    qrysalarysum23Dec: TBCDField;
    actPrintVijeh: TAction;
    BitBtn1: TBitBtn;
    CmbArchiveID: TComboBox;
    qrysalaryFunctionTime: TFloatField;
    AllClick: TMenuItem;
    SalaryList4OfficeF25_2_1Row: TMenuItem;
    qrysalaryfatherName_L1: TStringField;
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
    qrysalaryDec12: TBCDField;
    qrysalaryDec13: TBCDField;
    qrysalaryDec14: TBCDField;
    qrysalaryDec15: TBCDField;
    qrysalaryDec16: TBCDField;
    qrysalaryDec17: TBCDField;
    qrysalaryDec18: TBCDField;
    qrysalaryDec19: TBCDField;
    qrysalaryDec20: TBCDField;
    qrysalaryDec11: TBCDField;
    qrysalaryStateName: TStringField;
    qrysalary_Row: TIntegerField;
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
    qrysalaryFunctionDay: TFloatField;
    SalaryList_office25_2A4: TMenuItem;
    ppLabel9: TppLabel;
    actSMS: TAction;
    qrysalaryMobile: TStringField;
    qrysalaryGradeName: TStringField;
    qrysalaryGroupIDName: TStringField;
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
    procedure All_Amount_GetText(Sender: TObject; var Text: String);
    procedure actSMSExecute(Sender: TObject);
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
  SalaryList4Office25_2F: TSalaryList4Office25_2F;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  mdimain, FunctionItems, ListSalary, DBGrid2Print, SalaryFunctions, infoSMS;

{$R *.dfm}

procedure TSalaryList4Office25_2F.MakeSql;
var
  W: Integer;
  sqltxt: String;
  bozorgtar: string;

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
    sqltxt := 'SELECT FormsInfoOffice.InfoID,FormsInfoOffice.InfoName_L1 AS OfficeName,'
      + 'FormsInfoGrade.InfoName_L1 AS GradeName,FormsInfoGroupID.InfoName_L1  AS GroupIDName,'
      + 'FormsInfoPersonelState.InfoName_L1 AS StateName,FixedCalculated.PersonelNO,'
      + 'PersonelInfo.Mobile,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName ,PersonelInfo.fatherName_L1 '
      + ',min( FunctionItemsList_1.FunctionDay) as FunctionDay, min( FunctionItemsList_1.FunctionTime) as  FunctionTime ';
    sqltxt := sqltxt + FunItems;
    while W < 25 do
    begin // W <15
      if not Eof then
      begin
        sqltxt := sqltxt + ',sum(case when (salaryid =' +
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
    end; // whil
    bozorgtar := '>=';
    if qryWage.RecordCount < 25 then
      bozorgtar := '>';
    sqltxt := sqltxt + ',sum( case  when salaryid ' +
      IfThen(Fieldbyname('FormInfoID').AsInteger > 1,
      bozorgtar + Fieldbyname('FormInfoID').AsString, '<-1 ') +
      ' then case ShowlistKind when 1 then price else 0 end  else 0 end ) as Wage25 , '
      +

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
    // SetLength(sqltxt,length(sqltxt));
    while W < 20 do
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
      ' then case ShowlistKind when 2 then price else 0 end	 else 0 end ) as Dec20 ,'
      + ' sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ,'
      + ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
    // SetLength(sqltxt,length(sqltxt));
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxt;
    // SQL.Add  ('FROM Pay.Interdicts LEFT OUTER JOIN');
    // SQL.Add  ('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID RIGHT OUTER JOIN');
    // SQL.Add  ('Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
    // SQL.Add  ('Pay.Functions_Sum INNER JOIN');
    // SQL.Add  ('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo RIGHT OUTER JOIN');
    // SQL.Add  ('Pay.FixedCalculated LEFT OUTER JOIN');
    // SQL.Add  ('Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo AND');
    // SQL.Add  ('FixedCalculated.Mounth = FunctionItemsList_1.Mounth ON Functions_Sum.Mounth = FixedCalculated.Mounth AND');
    // SQL.Add  ('PersonelInfo.PersonelNo = FixedCalculated.PersonelNO ON FormsInfoPersonelState.FormInfoID = PersonelInfo.PersonelState ON');
    // SQL.Add  ('Interdicts.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN');
    // SQL.Add  ('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    // SQL.Add  ('Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND Interdicts.PersonelNo =');
    // SQL.Add  ('FixedCalculated.PersonelNO');

    SQL.Add('FROM Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID RIGHT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
    SQL.Add('Pay.PersonelInfo RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo');
    SQL.Add('AND FixedCalculated.YearID = FunctionItemsList_1.YearID AND');
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

procedure TSalaryList4Office25_2F.FormCreate(Sender: TObject);
var
  i: Integer;
  s: String;
begin
  inherited;
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
      FunItems := FunItems + ',FunctionItemsList_1._Amount' + IntToStr(i);
      with TFloatField.Create(qrysalary) do
      begin
        FieldName := '_Amount' + IntToStr(i);
        DataSet := qrysalary;
        Name := 'qrysalary' + FieldName;
        DisplayLabel := '”.' + Fieldbyname('InfoName_L1').AsString;

        Index := 9 + i;
        qrysalary.FieldDefs.Add(Name, ftString, 150, True);
      end;
      Inc(i);
      Next;
    end;
    Active := False;
  end;
  s := StringReplace(FunItems, ',FunctionItemsList_1.', ';', [rfReplaceAll]);
  s := copy(s, 2, length(s) - 1);
  s := 'FunctionDay;FunctionTime;' + s + ';';
//  s := StringReplace(SumGrid1.FieldsName, 'FunctionDay;FunctionTime;', s,    [rfReplaceAll]);
//  SumGrid1.FieldsName := s;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  qryWageSQL := qryWage.SQL.Text;
  qryDecSQL := qryDec.SQL.Text

end;

procedure TSalaryList4Office25_2F.FormShow(Sender: TObject);
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

procedure TSalaryList4Office25_2F.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList4Office25_2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4Office25_2F.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4Office25_2F.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList4Office25_2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4Office25_2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4Office25_2F.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4Office25_2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4Office25_2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMf.adcSalary, 'InfoID', '⁄‰Ê«‰ ”«“„«‰', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM   Pay.FormsInfo  ' +
        'WHERE  FormType = 12 ', '');
      // 'SELECT    FormsInfo.InfoID,ltrim(rtrim( str(FormsInfo.InfoID) ))+ FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
      // + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
      // + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ', '');
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

procedure TSalaryList4Office25_2F.Updatefilter;
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
  qryWage.First;
  with qryWage do
    while not Eof and (RecNo < 25) do
    begin
      qrysalary.Fieldbyname('Wage' + IntToStr(RecNo)).DisplayLabel :=
        Fieldbyname('InfoName_L1').AsString;
      Next;
    end;
  qryDec.First;
  with qryDec do
    while not Eof and (RecNo < 20) do
    begin
      qrysalary.Fieldbyname('Dec' + IntToStr(RecNo)).DisplayLabel :=
        Fieldbyname('InfoName_L1').AsString;
      Next;
    end;
end;

procedure TSalaryList4Office25_2F.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList4Office25_2F.InitReportFile(GeneralFileName: string);
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

procedure TSalaryList4Office25_2F.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList4Office25_2F.actFunctionShowExecute(Sender: TObject);
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

procedure TSalaryList4Office25_2F.actFishExecute(Sender: TObject);
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

procedure TSalaryList4Office25_2F.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSalaryList4Office25_2F.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4Office25_2F.AllClickClick(Sender: TObject);
begin
  inherited;
  InitReportFile((Sender as TMenuItem).Name + '.rtm');
end;

procedure TSalaryList4Office25_2F.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4Office25_2F.All_Amount_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('_Amount' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('_Amount' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4Office25_2F.AllD_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Trim(Text)).DisplayLabel
end;

procedure TSalaryList4Office25_2F.qrysalaryAfterOpen(DataSet: TDataSet);
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
        Fields[i].ReadOnly:=False;
//      if (Fields[i] is TBCDField) or (Fields[i] is TFloatField) then
  //      SumGrid1.FieldsName := SumGrid1.FieldsName + Fields[i].FieldName + ';';
      Fields[i].tag := 3;

    end;
  end;
  try
    DBGrid1.Visible:=False;
    qrysalary.DisableControls;
//    if not SetPreSavedColWidth(DBGrid1, '') then
//      for i := 0 to DBGrid1.Columns.Count - 1 do
//        DBGrid1.Columns[i].Width := 52;

    for i := 0 to DBGrid1.Columns.Count - 1 do
    begin
      if DBGrid1.Columns[i].Title.Caption = '...' then
        DBGrid1.Columns[i].Visible := False
      else
        DBGrid1.Columns[i].ReadOnly := False;

    end;

    DBGrid1.ReadOnly := False;
    Dbgrid1.ColorDBGrid;

  finally
    DBGrid1.Visible:=True;
    qrysalary.EnableControls;
  end;
    Dbgrid1.DoLoad('');

end;

procedure TSalaryList4Office25_2F.qrysalaryCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('_row').AsInteger := abs(DataSet.RecNo)
end;

End.
