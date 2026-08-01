// mahmood 871203
unit SalaryList4GetReprots;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls, Grids,
  ExtCtrls, Buttons, Vcl.DBGrids, ppModule, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DBCtrls,
  ComCtrls, ToolWin, Menus, ppStrtch, ppRegion, SumDBGrid, ppParameter,
  StrUtils, DBClient, ppDesignLayer, System.ImageList, System.Actions,Filter_ADO_Const;

type
  TSalaryList4GetReprotsF = class(Ttemplate2MDIF)
    srcSalary: TDataSource;
    DBGrid1: TDBGrid;
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
    qrysalary: TADOQuery;
    SumGrid1: TSumGrid;
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
    qryConst: TADOQuery;
    cli1: TClientDataSet;
    cli1Column: TStringField;
    cli1Alias: TStringField;
    cli1CalcSum: TCurrencyField;
    cli1ColumnsName: TStringField;
    qrySalaryIDNotINFixed: TADOQuery;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    _Am1: TppDBText;
    _Am2: TppDBText;
    _Am3: TppDBText;
    s_Am1: TppDBCalc;
    s_Am2: TppDBCalc;
    s_Am3: TppDBCalc;
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
    procedure actPrintVijehExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure AllW_GetText(Sender: TObject; var Text: String);
    procedure AllD_GetText(Sender: TObject; var Text: String);
    procedure All_Amount_GetText(Sender: TObject; var Text: String);
    procedure ALL_AmountSetDataFieldGetText(Sender: TObject; var Text: String);
    procedure qrysalaryAfterOpen(DataSet: TDataSet);
    procedure ALLSetDataFieldGetText(Sender: TObject; var Text: String);
    procedure qrysalaryBeforeOpen(DataSet: TDataSet);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
  private
    MonthNo: Byte;
    GetReprotsID: Integer;
    FunItems: String;
    Ts_Amount: TStrings;
    FunItems4Sum: String;
    ActiveFunctionsItems, DeleteColumnIfSumWageIsZero: Boolean;
    procedure MakeSql;
    procedure Updatefilter;
    procedure InitReportFile(GeneralFileName: string);
    procedure initReportName;
    procedure AddToCli(Column, Alias, ColumnsName: string);
    function AddToSQL: TADOQuery;
    function AddToWageSQL: string;
    procedure UpdateQryParameters(qry: TADOQuery);
    function SalaryIDNotINFixedCalculated(s: string;
      SalaryEffectKind: Integer): string;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList4GetReprotsF: TSalaryList4GetReprotsF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, main,
  FunctionItems, DBGrid2Print, SalaryFunctions, FunctionItems2, FaraConsts,
  mdiMain;

{$R *.dfm}

procedure TSalaryList4GetReprotsF.AddToCli(Column, Alias, ColumnsName: string);
begin
  cli1.Append;
  cli1Column.AsString := Column;
  cli1Alias.AsString := Alias;
  cli1ColumnsName.AsString := ColumnsName;
  cli1.Post;
end;

function TSalaryList4GetReprotsF.AddToWageSQL: string;
var
  qry: TADOQuery;
  i: Integer;
begin
  qry := TADOQuery.Create(self);
  qry.Connection := DMf.adcSalary;

  if DeleteColumnIfSumWageIsZero then
  begin
    With cli1 do
    begin
      First;
      if RecordCount > 1 then
        qry.SQL.Add(cli1Column.AsString + ' AS ' + cli1Alias.AsString);
      Next;
      while not Eof do
      begin
        qry.SQL.Add(',' + cli1Column.AsString + ' AS ' + cli1Alias.AsString);
        Next;
      end;
    end;
    if qry.SQL.Text = EmptyStr then
      Exit;
    With qry do
    begin
      SQL.Text := 'SELECT ' + SQL.Text;
      SQL.Add(AddToSQL.SQL.Text);
      SQL.Text := SalaryIDNotINFixedCalculated(SQL.Text, 1);
      SQL.Text := SalaryIDNotINFixedCalculated(SQL.Text, 2);
      UpdateQryParameters(qry);
      Active := True;
    end;
  end;
  With cli1 do
  begin
    First;
    while not Eof do
    begin
      Edit;
      if DeleteColumnIfSumWageIsZero then
        cli1CalcSum.AsCurrency := qry.FieldByName('Wage' + IntToStr(RecNo))
          .AsCurrency
      else
        cli1CalcSum.AsCurrency := 1;
      Post;
      Next;
    end;
  end;
  qry.SQL.Text := EmptyStr;
  With cli1 do
  begin
    i := 0;
    First;
    while not Eof do
    begin
      if cli1CalcSum.AsCurrency > 0 then
      begin
        Inc(i);
        qry.SQL.Add(',' + cli1Column.AsString + ' AS Wage' + IntToStr(i));
        SumGrid1.FieldsName := SumGrid1.FieldsName + 'Wage' + IntToStr(i) + ';';
      end;
      Next;
    end;
  end;
  Result := qry.SQL.Text;
  qry.Free;
end;

function TSalaryList4GetReprotsF.AddToSQL: TADOQuery;
begin
  Result := TADOQuery.Create(self);
  With Result do
  begin
    SQL.Add('FROM Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
    SQL.Add('Pay.EmployeeInfo RIGHT OUTER JOIN');
    SQL.Add('Pay.Functions_Sum INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo INNER JOIN');
    SQL.Add('Pay.InsuranceCONSTinfo ON PersonelInfo.insuranceID = InsuranceCONSTinfo.insuranceNo ON');
    SQL.Add('EmployeeInfo.PersonelNo = PersonelInfo.PersonelNo RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO =');
    SQL.Add('FunctionItemsList_1.PersonelNo AND');
    SQL.Add('FixedCalculated.YearID = FunctionItemsList_1.YearID AND FixedCalculated.Mounth = FunctionItemsList_1.Mounth ON Functions_Sum.Mounth = FixedCalculated.Mounth');
    SQL.Add('AND PersonelInfo.PersonelNo = FixedCalculated.PersonelNO ON FormsInfoPersonelState.FormInfoID =');
    SQL.Add('PersonelInfo.PersonelState RIGHT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts ON FormsInfoEmployTypeID.FormInfoID = Interdicts.EmployTypeID ON FixedCalculated.PersonelNO =');
    SQL.Add('Interdicts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND');
    SQL.Add('Interdicts.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoProject ON Pay.Interdicts.ProjectID = FormsInfoProject.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_grade ON Pay.Interdicts.grade = FormsInfo_grade.FormInfoID LEFT OUTER JOIN');
    SQL.Add('(SELECT InterdictID, SUM(Amount) AS Amount');
    SQL.Add('FROM Pay.InterdictItems');
    SQL.Add('GROUP BY InterdictID) AS InterdictItemsAmount ON Pay.Interdicts.InterdictID =');
    SQL.Add('InterdictItemsAmount.InterdictID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_EmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfo_EmployTypeID.FormInfoID');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_LicenceCode ON PersonelInfo.LicenceCode = FormsInfo_LicenceCode.FormInfoID');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_sex ON PersonelInfo.sex = FormsInfo_sex.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_childNumber ON PersonelInfo.childNumber = FormsInfo_childNumber.FormInfoID LEFT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_marriage ON PersonelInfo.marriage = FormsInfo_marriage.FormInfoID LEFT OUTER');
    SQL.Add('JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_TaxCalculationType ON Pay.Interdicts.TaxCalculationType =');
    SQL.Add('FormsInfo_TaxCalculationType.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo ON PersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID LEFT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_BankCode ON PersonelInfo.BankCode = FormsInfo_BankCode.FormInfoID LEFT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.InsuranceCONSTinfo AS InsuranceCONSTinfo_Interdicts ON InsuranceCONSTinfo_Interdicts.insuranceNo =');
    SQL.Add('Interdicts.insuranceID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_insuranceID ON FormsInfo_insuranceID.FormInfoID =');
    SQL.Add('InsuranceCONSTinfo_Interdicts.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_GroupID ON Pay.Interdicts.GroupID = FormsInfo_GroupID.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_PayehNo ON Pay.Interdicts.PayehNo = FormsInfo_PayehNo.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_SubInterdictID ON Pay.Interdicts.SubInterdictID = FormsInfo_SubInterdictID.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_jobsGroup ON Pay.Interdicts.jobsGroup = FormsInfo_jobsGroup.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_jobCity ON Pay.Interdicts.jobCity = FormsInfo_jobCity.FormInfoID');

    SQL.Add('WHERE  (FixedCalculated.ArchiveID = :ArchiveID) AND(FixedCalculated.Mounth = :mounth) ');
    SQL.Add('AND(FixedCalculated.YearID = '+APPBank.Year.ToString+')');
    SQL.Add('AND (FixedCalculated.Years = '+optp.Year+') ');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
    end;

    SQL.Add('AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add('AND (FormsInfoEmployTypeID.InfoID  BETWEEN :EmployTypeIDFrom  AND :EmployTypeIDTo )');
    SQL.Add('AND (InterdicType = 0 ) ');
    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' +
      optP.YearMounth + ''')');
    SQL.Add('AND (LEFT(Interdicts.InterdicEndDate , 7) >=''' +
      optP.YearMounth + ''')');
    SQL.Add('AND (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['OfficeInfoID'], ftString) + '))');

    SQL.Add('AND (FormsInfo_jobCode.InfoID BETWEEN :jobCodeFrom AND :jobCodeTo ) ');
    SQL.Add('AND (FormsInfoProject.InfoID  BETWEEN :ProjectInterdictsFrom AND :ProjectInterdictsTo ) ');

    SQL.Add('AND (FormsInfo_grade.InfoID BETWEEN :gradeFrom AND :gradeTo ) ');

    SQL.Add('AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo) ');
    SQL.Add('AND (Functions_Sum.Mounth = :Mounth4Fun) ');
    SQL.Add('AND (Functions_Sum.YearID = '+APPBank.Year.ToString+') ');
    SQL.Add('AND (Functions_Sum.Years = '+optp.Year+') ');
    SQL.Add('AND (PersonelInfo.insuranceID BETWEEN :insuranceIDFrom AND :insuranceIDTo) ');

  end;
end;

procedure TSalaryList4GetReprotsF.MakeSql;
var
  sqltxt, ColumnsCalc, ConstTxt, Alias, TabelName, s: string;
begin
  inherited;
  with qryConst do
  begin
    Active := False;
    Parameters.ParamByName('GetReprotsID').Value := GetReprotsID;
    Active := True;
    while not Eof do
    begin
      TabelName := Trim(FieldByName('TabelName').AsString);
      if TabelName <> EmptyStr then
        s := Format('%s.%s', [TabelName, FieldByName('FieldName').AsString])
      else
        s := FieldByName('FieldName').AsString;

      if FieldByName('GroupBy').AsInteger = 10 then
        s := 'SUM(' + s + ')';

      if FieldByName('Amount').AsString <> EmptyStr then // عدد ثابت
        ConstTxt := ConstTxt + FieldByName('Amount').AsString
      else if FieldByName('ColumnsCalc').AsString <> EmptyStr then // مبلغ ثابت
        ConstTxt := ConstTxt + '''' + FieldByName('ColumnsCalc').AsString + ''''
      else
        ConstTxt := ConstTxt + s;

      Alias := Trim(FieldByName('Alias').AsString);

      /// ///////               پيدا كردن آلياس هاي تكراي و تغيير--
      if (Alias = EmptyStr) or (Alias = 'NullColumns') then
      begin
        if (Pos(FieldByName('FieldName').AsString + ',', ConstTxt) > 0) then
          Alias := FieldByName('FieldName').AsString + '_' + IntToStr(RecNo);

        if (Alias = 'NullColumns') then
          if (Pos(Alias + ',', ConstTxt) > 0) then
            Alias := Alias + '_' + IntToStr(RecNo);

        if (Alias = '') then
          Alias := 'CoL_' + IntToStr(RecNo);

      end;

      /// ///////               پيدا كردن آلياس هاي تكراي و تغيير

      if Alias <> EmptyStr then
        ConstTxt := ConstTxt + Format(' AS %s', [Alias]);
      if RecNo <> RecordCount then
        ConstTxt := ConstTxt + ',';
      Next;
    end;
    sqltxt := 'SELECT ' + ConstTxt;

    if ActiveFunctionsItems then
      sqltxt := sqltxt + FunItems;
  end;
  with qryWage do
  begin
    Active := False;
    Parameters.ParamByName('GetReprotsID').Value := GetReprotsID;
    Active := True;
    while not Eof do
    begin
      ColumnsCalc := LowerCase(Trim(FieldByName('ColumnsCalc').AsString));
      if ColumnsCalc <> EmptyStr then
      begin
        With DMf.qryWageDec do
        begin
          DisableControls;
          First;
          while not Eof do
          begin
            ColumnsCalc := StringReplace(ColumnsCalc,
              LowerCase(FieldByName('SalaryID').AsString),
              '(' + FieldByName('CalcText').AsString + ')', [rfReplaceAll]);
            Next;
          end;
          EnableControls;
        end;
        if ColumnsCalc <> EmptyStr then
          AddToCli('(' + ColumnsCalc + ')', 'Wage' + IntToStr(RecNo),
            FieldByName('ColumnsName').AsString);
        // sqltxt := sqltxt + ', (' + ColumnsCalc + ') as Wage' +
        // IntToStr(RecNo);

      end
      else
      begin
        if (FieldByName('Amount').AsFloat = 0) and
          (not FieldByName('ColumnsSalaryID').IsNull) then
          // sqltxt := sqltxt + ',Round(sum(case when salaryid in(' +
          // FieldByName('ColumnsSalaryID').AsString +
          // ')then price else 0 end ) ,' + FieldByName('ColumnsRoundNo')
          // .AsString + ') as Wage' + IntToStr(RecNo)
          AddToCli(Format
            ('Round(sum(case when salaryid in( %s )then price else 0 end ) ,%s )',
            [FieldByName('ColumnsSalaryID').AsString,
            FieldByName('ColumnsRoundNo').AsString]), 'Wage' + IntToStr(RecNo),
            FieldByName('ColumnsName').AsString)
        else
          // sqltxt := sqltxt + ', CAST(' + FieldByName('Amount').AsString +
          // ' AS Money) as Wage' + IntToStr(RecNo);
          AddToCli('CAST(' + FieldByName('Amount').AsString + ' AS Money)',
            'Wage' + IntToStr(RecNo), FieldByName('ColumnsName').AsString);
      end;
      Next;
    end;
    sqltxt := sqltxt + AddToWageSQL;

  end;
  with qryDec do
  begin
    Active := False;
    Parameters.ParamByName('GetReprotsID').Value := GetReprotsID;
    Active := True;
    while not Eof do
    begin
      ColumnsCalc := LowerCase(Trim(FieldByName('ColumnsCalc').AsString));
      if ColumnsCalc <> EmptyStr then
      begin
        With DMf.qryWageDec do
        begin
          DisableControls;
          First;
          while not Eof do
          begin
            ColumnsCalc := StringReplace(ColumnsCalc,
              LowerCase(FieldByName('SalaryID').AsString),
              '(' + FieldByName('CalcText').AsString + ')', [rfReplaceAll]);
            Next;
          end;
          EnableControls;
        end;
        if ColumnsCalc <> EmptyStr then
          sqltxt := sqltxt + ', (' + ColumnsCalc + ') as dec' + IntToStr(RecNo);
      end
      else
      begin
        if (FieldByName('Amount').AsFloat = 0) and
          (not FieldByName('ColumnsSalaryIDSub').IsNull) then
          sqltxt := sqltxt + ',Round(sum(case when salaryid in(' +
            FieldByName('ColumnsSalaryIDSub').AsString +
            ') and ShowlistKind=2 then price else 0 end ) ,' +
            FieldByName('ColumnsRoundNo').AsString + ') as dec' +
            IntToStr(RecNo)
        else
          sqltxt := sqltxt + ', CAST(' + FieldByName('Amount').AsString +
            ' AS Money) as dec' + IntToStr(RecNo);
      end;
      SumGrid1.FieldsName := SumGrid1.FieldsName + 'dec' +
        IntToStr(RecNo) + ';';
      Next;
    end;
  end;
  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxt;
    SQL.Add(AddToSQL.SQL.Text);
  end;

  with qryConst do
  begin
    First;
    Filter := 'GROUPBY = 0';
    Filtered := True;
    ConstTxt := 'GROUP BY ';
    while not Eof do
    begin
      TabelName := Trim(FieldByName('TabelName').AsString);
      if TabelName <> EmptyStr then
        ConstTxt := ConstTxt + Format('%s.%s',
          [TabelName, FieldByName('FieldName').AsString])
      else
        ConstTxt := ConstTxt + FieldByName('FieldName').AsString;
      if RecNo <> RecordCount then
        ConstTxt := ConstTxt + ',';
      Next;
    end;
    Filtered := False;
  end;

  with qrysalary do
  begin
    SQL.Add(ConstTxt);
    if ActiveFunctionsItems then
      SQL.Add(FunItems);
    SQL.Add(',Functions_Sum.FunctionDay,Functions_Sum.FunctionTime');
    SQL.Add(',InterdictItemsAmount.Amount');
  end;

end;

procedure TSalaryList4GetReprotsF.FormCreate(Sender: TObject);
begin
  inherited;
  Ts_Amount := TStringList.Create;
  GetReprotsID := var_glb_gParam;
  initReportName;
  if ActiveFunctionsItems then
  begin
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
        Ts_Amount.Add(FieldByName('InfoName_L1').AsString);
        Next;
      end;
      Active := False;
    end;
    FunItems4Sum := FunItems4Sum + ';';
    FunItems4Sum := copy(FunItems4Sum, 2, length(FunItems4Sum) - 1);
  end;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  With DMf.qryWageDec do
  begin
    Active := False;
    Active := True;
  end;

end;

procedure TSalaryList4GetReprotsF.initReportName;
var
  i: Integer;
  tsCaption, tsFile: TStringList;
  NewItem: TMenuItem;
begin
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT GetReprotsID, GetReprotsName, OtherRptFiles';
    SQL.Add(',OtherRptCaptions,ActiveFunctionsItems,DeleteColumnIfSumWageIsZero');
    SQL.Add('FROM Pay.GetReprots');
    SQL.Add('WHERE GetReprotsID = ' + IntToStr(GetReprotsID));
    Active := True;
    ActiveFunctionsItems := FieldByName('ActiveFunctionsItems').AsInteger = 1;
    DeleteColumnIfSumWageIsZero := FieldByName('DeleteColumnIfSumWageIsZero')
      .AsInteger = 1;
    Caption := FieldByName('GetReprotsName').AsString;
    tsCaption := TStringList.Create;
    tsFile := TStringList.Create;
    tsFile.Text := StringReplace(FieldByName('OtherRptFiles').AsString, ';',
      #13, [rfReplaceAll]);
    tsCaption.Text := StringReplace(FieldByName('OtherRptCaptions').AsString,
      ';', #13, [rfReplaceAll]);
    try
      for i := 0 to tsFile.Count - 1 do
        with NewItem do
        begin
          NewItem := TMenuItem.Create(PopList4Print);
          Hint := tsFile[i];
          Caption := tsCaption[i];
          // if tsFile.Count=1 then begin
          // Hint := 'SalaryList4GetReprots';
          // Caption := 'چاپ';
          // end;
          OnClick := AllClickClick;
          PopList4Print.Items.Add(NewItem);
        end;
    finally
      tsCaption.Free;
      tsFile.Free;
    end;
  end;
end;

procedure TSalaryList4GetReprotsF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TSalaryList4GetReprotsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(GetReprotsID));
  Ts_Amount.Free;
end;

procedure TSalaryList4GetReprotsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True, IntToStr(GetReprotsID));
end;

procedure TSalaryList4GetReprotsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4GetReprotsF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4GetReprotsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4GetReprotsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4GetReprotsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'ProjectInterdicts', 'پروژه/تفصیلی 1', 'كد',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.Interdicts INNER JOIN Pay.FormsInfo ON Pay.Interdicts.ProjectID = FormsInfo.FormInfoID GROUP BY FormsInfo.InfoName_L1, FormsInfo.InfoID  ',
        'SELECT MIN(FormsInfo.InfoID), MAX(FormsInfo.InfoID) FROM Pay.Interdicts INNER JOIN Pay.FormsInfo ON Pay.Interdicts.ProjectID = FormsInfo.FormInfoID');
      AddItem(DMf.adcSalary, 'jobCode', 'پست سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 13)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 13)');
      AddItem(DMf.adcSalary, 'BimehType', 'نوع بيمه', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        'SELECT Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
      AddItem(DMf.adcSalary, 'OfficeInfoID', 'عنوان سازمان', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT    FormsInfo.InfoID,ltrim(rtrim( str(FormsInfo.InfoID) ))+ FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
        + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ', '');

      AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');
      AddItemFilter(GetFilter, TPersonelNo);
      AddItem(DMf.adcSalary, 'Grade', 'رتبه شغلي', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 27)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 27)');
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

procedure TSalaryList4GetReprotsF.UpdateQryParameters(qry: TADOQuery);
begin
  with qry do
  begin
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
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
    Parameters.ParamByName('jobCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['jobCode'], ftInteger);
    Parameters.ParamByName('jobCodeTo').Value :=
      GetcTo(myParams.ParamValues['jobCode'], ftInteger);
    Parameters.ParamByName('ProjectInterdictsFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectInterdicts'], ftInteger);
    Parameters.ParamByName('ProjectInterdictsTo').Value :=
      GetcTo(myParams.ParamValues['ProjectInterdicts'], ftInteger);

    Parameters.ParamByName('GradeFrom').Value :=
      GetcFrom(myParams.ParamValues['Grade'], ftInteger);
    Parameters.ParamByName('GradeTo').Value :=
      GetcTo(myParams.ParamValues['Grade'], ftInteger);
  end;
end;

procedure TSalaryList4GetReprotsF.Updatefilter;
var
  tmpFileName: String;
  i: Integer;
begin
  cli1.Close;
  tmpFileName := __TheTempDIR + self.Name;
  cli1.FileName := tmpFileName;
  if FileExists(tmpFileName) then
    DeleteFile(tmpFileName);
  cli1.CreateDataSet;

  if ActiveFunctionsItems then
    SumGrid1.FieldsName := FunItems4Sum
  else
    SumGrid1.FieldsName := EmptyStr;
  MakeSql;
  with qrysalary do
  begin
    Active := False;
    SQL.Text := SalaryIDNotINFixedCalculated(SQL.Text, 1);
    SQL.Text := SalaryIDNotINFixedCalculated(SQL.Text, 2);
    UpdateQryParameters(qrysalary);
    try
      Active := True;
    except
      on E: Exception do
      begin
        Warn('اشكال در ' + E.Message);
        if User.PowerUser and CtrlDown then
          ShowQryParam(qrysalary);
      end;
    end;
  end; // with
  cli1.First;
  with cli1 do
  begin
    i := 0;
    First;
    while not Eof do
    begin
      if cli1CalcSum.AsCurrency > 0 then
      begin
        Inc(i);
        qrysalary.FieldByName('Wage' + IntToStr(i)).DisplayLabel :=
          FieldByName('ColumnsName').AsString;
      end;
      Next;
    end;
  end;
  qryDec.First;
  with qryDec do
    while not Eof do
    begin
      qrysalary.FieldByName('Dec' + IntToStr(RecNo)).DisplayLabel :=
        FieldByName('ColumnsName').AsString;
      Next;
    end;
end;

procedure TSalaryList4GetReprotsF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList4GetReprotsF.InitReportFile(GeneralFileName: string);
var
  ReportFooter: String;
begin
  if Pos('.', GeneralFileName) = 0 THEN
    GeneralFileName := GeneralFileName + '.rtm';
  ReportFooter := FooterFormType(48);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(GeneralFileName);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + GeneralFileName + ' يافت نشد.!‏');
      InitReport(ppReport1, DetailBand, ppRegion1, ppRecFooterLine,
        ReportFooter);
      InitReport(ppReport1, DetailBand, ppRegion2, ppRecFooterLine2,
        ReportFooter);
      SetSendToBackShapeOnPrint(self);
      Print;
    finally
    end; // try
  end; // with
end;

procedure TSalaryList4GetReprotsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TSalaryList4GetReprotsF.actFunctionShowExecute(Sender: TObject);
begin
  inherited;
  if (mdiMainF.ActFunctionsF.Enabled) and (mdiMainF.ActFunctionsF.Visible) then
  begin
    CreateMDIForm2(TFunctionItemsF, FunctionItemsF, self, 28);
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Down := True;
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Click;
    FunctionItemsF.qryPersonel.Locate('PersonelNo',
      qrysalary.FieldByName('PersonelNo').AsVariant, [])
  end;

  if (mdiMainF.ActFunctions2F.Enabled) and (mdiMainF.ActFunctions2F.Visible) then
  begin
    CreateMDIForm2(TFunctionItems2F, FunctionItems2F, self, 28);
    FunctionItems2F.ToolBar1.Buttons[MonthNo - 1].Down := True;
    FunctionItems2F.ToolBar1.Buttons[MonthNo - 1].Click;
    FunctionItems2F.qryPersonel.Locate('PersonelNo',
      qrysalary.FieldByName('PersonelNo').AsVariant, [])
  end;

end;

procedure TSalaryList4GetReprotsF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSalaryList4GetReprotsF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList4GetReprotsF.AllClickClick(Sender: TObject);
begin
  inherited;
  InitReportFile((Sender as TMenuItem).Hint);
end;

procedure TSalaryList4GetReprotsF.qrysalaryAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  With qrysalary do
  begin
    qryConst.First;
    for i := 0 to FieldCount - 1 do
    begin
      if Fields[i] is TBCDField then
        TBCDField(Fields[i]).currency := True;
      Fields[i].tag := 3;
      if i = qryConst.RecNo - 1 then
      begin
        Fields[i].DisplayLabel := qryConst.FieldByName('ColumnsName').AsString;
        qryConst.Next;
      end;
    end;
    for i := 0 to Ts_Amount.Count - 1 do
      FieldByName('_Amount' + IntToStr(i + 1)).DisplayLabel :=
        'م.' + Ts_Amount[i];
  end;

  // With SumGrid1 do
  // begin
  // for i := 1 to Columns.Count - 1 do
  // if GetValueField(Columns[i].FieldName) = 0 then
  // begin
  // DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1,
  // Columns[i].FieldName)].Free;
  // qrysalary.FieldByName(Columns[i].FieldName).Free;
  // end;
  // end;

  if not SetPreSavedColWidth(DBGrid1, '') then
    for i := 0 to DBGrid1.Columns.Count - 1 do
      DBGrid1.Columns[i].Width := 52;
end;

procedure TSalaryList4GetReprotsF.qrysalaryBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  // if IsDelphiRunning then

  // ShowQryParam(qrysalary)
end;

function TSalaryList4GetReprotsF.SalaryIDNotINFixedCalculated(s: string;
  SalaryEffectKind: Integer): string;
var
  WAGE_DEC: string;
begin
  qrySalaryIDNotINFixed.Active := True;
  With qrySalaryIDNotINFixed do
  begin
    Filter := 'SalaryEffectKind = ' + IntToStr(SalaryEffectKind);
    Filtered := True;
    First;
    DisableControls;
    WAGE_DEC := ifthen(SalaryEffectKind = 1, 'WAGE_', 'DEC_');
    while not Eof do
    begin
      s := StringReplace(s, LowerCase(WAGE_DEC + FieldByName('FormInfoID')
        .AsString), '(0)', [rfReplaceAll]);
      Next;
    end;
    Result := s;
  end;
end;

procedure TSalaryList4GetReprotsF.ALLSetDataFieldGetText(Sender: TObject;
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

procedure TSalaryList4GetReprotsF.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Trim(Text)) <> nil then
    Text := qrysalary.FieldByName('Wage' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList4GetReprotsF.ALL_AmountSetDataFieldGetText(Sender: TObject;
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

procedure TSalaryList4GetReprotsF.All_Amount_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('_Amount' + Trim(Text)) <> nil then
    Text := qrysalary.FieldByName('_Amount' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList4GetReprotsF.AllD_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Trim(Text)) <> nil then
    Text := qrysalary.FieldByName('Dec' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList4GetReprotsF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList4GetReprotsF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList4GetReprotsF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4GetReprotsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4GetReprotsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TSalaryList4GetReprotsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4GetReprotsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

end.
