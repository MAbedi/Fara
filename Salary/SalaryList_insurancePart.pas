unit SalaryList_insurancePart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands, FaraConsts,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, ppStrtch,
  ppRegion, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.Menus;

type
  TSalaryList_insurancePartF = class(Ttemplate2MDIF)
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
    actFish: TAction;
    Button2: TButton;
    actFunctionShow: TAction;
    actPrintVijeh: TAction;
    BitBtn1: TBitBtn;
    CmbArchiveID: TComboBox;
    lblFilterStringCaption: TLabel;
    actSMS: TAction;
    srcItemsSum: TDataSource;
    qryItemsSum: TADOQuery;
    qryItemsSumAmount1: TBCDField;
    qryItemsSumAmount2: TBCDField;
    qryItemsSumAmountSum: TBCDField;
    qryItemsSumAmountIn30: TBCDField;
    qryItemsAmountSumAnd30: TBCDField;
    ppItemsSum: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    Label1: TLabel;
    chkMounth: TCheckBox;
    DBGrid2: TCedarDbgrid;
    Button4: TButton;
    actPrint2: TAction;
    popPrint: TPopupMenu;
    AllClick1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    Dbgrid1: TCedarDbgrid;
    CheckBox1: TCheckBox;
    N22: TMenuItem;
    A41: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    w1: TppLabel;
    w2: TppLabel;
    w4: TppLabel;
    w3: TppLabel;
    w11: TppLabel;
    w10: TppLabel;
    w9: TppLabel;
    w8: TppLabel;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLine8: TppLine;
    ppLine11: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppSystemVariable1: TppSystemVariable;
    w5: TppLabel;
    w6: TppLabel;
    w7: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    d1: TppLabel;
    d6: TppLabel;
    d3: TppLabel;
    d4: TppLabel;
    d5: TppLabel;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel8: TppLabel;
    ppLine22: TppLine;
    ppLine7: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppDBText4: TppDBText;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLabel19: TppLabel;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel10: TppLabel;
    ppLabel4: TppLabel;
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
    ppLine6: TppLine;
    ppLine13: TppLine;
    ppLine17: TppLine;
    ppLine24: TppLine;
    ppDBText5: TppDBText;
    dd1: TppDBText;
    dd6: TppDBText;
    ppLine26: TppLine;
    dd4: TppDBText;
    dd3: TppDBText;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    dd5: TppDBText;
    ppLine31: TppLine;
    ppDBText7: TppDBText;
    ppLine32: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    dd2: TppDBText;
    ppDBText9: TppDBText;
    ppLine5: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    _Am1: TppDBText;
    _Am2: TppDBText;
    _Am3: TppDBText;
    ppLine9: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine23: TppLine;
    ppDBText13: TppDBText;
    ppDBText8: TppDBText;
    ppDBText3: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel7: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel6: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel25: TppLabel;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    sw_col1: TppDBCalc;
    sw_col2: TppDBCalc;
    sw_col9: TppDBCalc;
    sw_col8: TppDBCalc;
    sw_col11: TppDBCalc;
    sw_col10: TppDBCalc;
    sw_col5: TppDBCalc;
    sw_col4: TppDBCalc;
    sw_col3: TppDBCalc;
    sw_col7: TppDBCalc;
    sw_col6: TppDBCalc;
    ppLabel5: TppLabel;
    sd_col6: TppDBCalc;
    sd_col1: TppDBCalc;
    sd_col3: TppDBCalc;
    sd_col4: TppDBCalc;
    sd_col2: TppDBCalc;
    sd_col5: TppDBCalc;
    _TaxInvolved: TppDBCalc;
    _InsInvolved: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine50: TppLine;
    ppLine25: TppLine;
    ppLine51: TppLine;
    ppDBCalc6: TppDBCalc;
    s_Am1: TppDBCalc;
    s_Am2: TppDBCalc;
    s_Am3: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine33: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure actFishExecute(Sender: TObject);
    procedure actFunctionShowExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure plblFilterStringCaptionGetText(Sender: TObject; var Text: string);
    procedure lblFilterStringCaptionClick(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure qrysalaryAfterScroll(DataSet: TDataSet);
    procedure chkMounthClick(Sender: TObject);
    procedure All_Amount_GetText(Sender: TObject; var Text: String);
    procedure ALL_AmountSetDataFieldGetText(Sender: TObject; var Text: String);
    procedure AllD_GetText(Sender: TObject; var Text: String);
    procedure ALLSetDataFieldGetText(Sender: TObject; var Text: String);
    procedure AllW_GetText(Sender: TObject; var Text: String);
    procedure actPrint2Execute(Sender: TObject);
    procedure AllClick1Click(Sender: TObject);
    procedure Dbgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
  private
    FunItems, FunItems4Sum, FunCaptions,FunItems4Groupby: string;
    MonthNo: Byte;
    FormType: Integer;
    procedure Make_Sql;
    procedure Updatefilter;
    procedure NilDataFieldIfNotFind;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList_insurancePartF: TSalaryList_insurancePartF;

const
  DotCaption = '...';

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  mdimain, ListSalary, FunctionItems, SalaryFunctions, DBGrid2Print, infoSMS,
  Filter_ADO_Const;

{$R *.dfm}

procedure TSalaryList_insurancePartF.Make_Sql;
var
  MounthFrom, MounthTo, ArchiveID: Integer;
  sqltxt, sql1: string;
  // SelectList : String ;
begin
  inherited;
  ArchiveID := Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
  if chkMounth.Checked then
  begin
    MounthFrom := MonthNo;
    MounthTo := MonthNo;
  end
  else
  begin
    MounthFrom := GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    MounthTo := GetcTo(myParams.ParamValues['Mounth'], ftInteger);
  end;
  //

  GetFunctionsItemsParam(FunItems, FunItems4Sum, FunCaptions, FunItems4Groupby, qrysalary,
    Dbgrid1, myParams, MounthFrom, MounthTo);
  //
  if DBGrid2.Visible then
    with qryItemsSum do
    begin
      Active := False;
      SQL.Text := 'SELECT Amount1,Amount2,AmountSum,AmountIn30,AmountSumAnd30';
      SQL.Add('FROM Pay.v_InterdictItemSumSalary WHERE ( InterdictID = :InterdictID )');
    end;

  with qryWage do
  begin
    Active := False;
    SQL.Text := 'SELECT FixedCalculated.SalaryID,' + ' FormsInfo_2.InfoName_L1'
      + ifthen(chkMounth.Checked,
      ' + CASE WHEN Mounth <> isnull(MounthRetard,0)' +
      ' THEN isnull(''('' + ''معوقه ماه '' + LTRIM(STR(MounthRetard))+ '')'' ,'''') ELSE '''' END',
      '') + ' AS InfoName_L1' + ' ' + ' , FormsInfo_2.FormInfoID,' +
      ifthen(chkMounth.Checked, ' isnull(MounthRetard,0)',
      'MAX(isnull(MounthRetard,0))') + ' as MounthRetard' + ' ' +
      ' FROM Pay.FixedCalculated LEFT OUTER JOIN  Pay.Interdicts LEFT OUTER JOIN' +
      ' Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON'
      + ' FixedCalculated.PersonelNO = Interdicts.PersonelNo  LEFT OUTER JOIN' +
      ' Pay.PersonelInfo LEFT OUTER JOIN' +
      ' Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON'
      + ' FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN'
      + ' Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID'
      + ' LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON Pay.Interdicts.ProjectID = FormsInfo_Project.FormInfoID';

    SQL.Add(' WHERE (FixedCalculated.ShowListKind = 1)');
    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthTo), 2)) +
      ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthFrom), 2)) + ''')');
    if not chkMounth.Checked then
      SQL.Add('AND (Interdicts.STATE <= 50)');

    SQL.Add(' AND (Pay.FixedCalculated.Mounth BETWEEN :MounthFrom ANd :MounthTo)');
    SQL.Add(' AND (Pay.FixedCalculated.ArchiveID = :ArchiveID)');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add(' AND (Pay.FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    SQL.Add(' AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add(' AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    SQL.Add(' AND (FormsInfo_Project.InfoID  BETWEEN :ProjectIDFrom  AND :ProjectIDTo ) ');

    if optP.SalaryID4PartMakeBankDSK <> EmptyStr then
      case FormType of
        1:
          SQL.Add('AND(FixedCalculated.SalaryID NOT in(' +
            optP.SalaryID4PartMakeBankDSK + '))');
        2:
          SQL.Add('AND(FixedCalculated.SalaryID in(' +
            optP.SalaryID4PartMakeBankDSK + '))');
        3:
          ;
      end;

    SQL.Add(' GROUP BY FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID');
    SQL.Add(ifthen(chkMounth.Checked, ',MounthRetard, Mounth', ''));
    SQL.Add('  HAVING SUM(FixedCalculated.Price)>0 ');
    SQL.Add(' ORDER BY FixedCalculated.SalaryID');

    Parameters.ParamByName('MounthFrom').Value := MounthFrom;
    Parameters.ParamByName('MounthTo').Value := MounthTo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
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

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    Active := True;
    sqltxt := 'SELECT FixedCalculated.PersonelNO,' +
      'PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName ' +
      ',PersonelInfo.name_L1 , PersonelInfo.lastName_L1 ,PersonelInfo.fatherName_L1,FormsInfoPersonelState.InfoName_L1 as StateName_L1 , '
      + 'PersonelInfo.NationalID,PersonelInfo.IDNumber, PersonelInfo.InsuranceNumber,'
      + ' PersonelInfo.Mobile' + ifthen(chkMounth.Checked,
      ',Interdicts.InterdictID', ', MAX(Interdicts.InterdictID) InterdictID') +
      ', FormsInfo_Project.InfoID AS ProjectCode ,FormsInfo_Project.InfoName_L1 AS ProjectName '
      + ', FormsInfo_jobCode.InfoID AS jobCode ,FormsInfo_jobCode.InfoName_L1 AS jobName '
    // + ',FormsInfo_Office.InfoID AS OfficeCode ,FormsInfo_Office.InfoName_L1  AS OfficeName'
      +
    /// ,balanceDecExt_1.BalanceAllDay
      ' ,Functions_Sum.FunctionDayNoSick AS _FunctionDay ,Functions_Sum.FunctionTime AS _FunctionTime ,Functions_Sum.FunctionSick '
      + FunItems + ifthen(chkMounth.Checked,
      ' ,(SELECT AmountIN30 FROM Pay.v_InterdictItemSumSalary ISS WHERE ( ISS.InterdictID = Interdicts.InterdictID)) AS WageDay ',
      ',SUM(ISS.AmountIN30) AS WageDay') +

      ', (SELECT SUM(Amount) Amount FROM Pay.InterdictItems INNER JOIN Pay.Interdicts Intd ON Intd.InterdictID = InterdictItems.InterdictID '
      + ' WHERE   InterdictItems.InterdictID BETWEEN Min(Interdicts.InterdictID) AND MAX(Interdicts.InterdictID) AND Intd.PersonelNo = interdicts.PersonelNo) Amount';

    First;
    while not Eof do
    begin
      if chkMounth.Checked then
        sqltxt := sqltxt +                                                 // <=
          Format(', sum( case when (salaryid = %d AND IsNull(MounthRetard,0)= %d )'
          + 'AND(ShowlistKind = 1) then price else 0 end ) as Wage%d',
          [Fieldbyname('FormInfoID').AsInteger, Fieldbyname('MounthRetard')
          .AsInteger, RecNo])
      else
        sqltxt := sqltxt + Format(', sum( case when (salaryid = %d)' +
          ' then price else 0 end ) as Wage%d',
          [Fieldbyname('FormInfoID').AsInteger, RecNo]);
      Next;

    end; // while

    if optP.SalaryID4PartMakeBankDSK <> EmptyStr then
      case FormType of
        1:
          sqltxt := sqltxt +
            ', Sum(case when (ShowlistKind = 1)AND(FixedCalculated.SalaryID NOT in('
            + optP.SalaryID4PartMakeBankDSK +
            ')) then price else 0 end ) as SumCurWage  ';

        2:
          sqltxt := sqltxt +
            ', Sum(case when(ShowlistKind = 1)AND(FixedCalculated.SalaryID in('
            + optP.SalaryID4PartMakeBankDSK +
            ')) then price else 0 end ) as SumCurWage  ';
      end;

    sqltxt := sqltxt +
      ' ,Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , ';

    sqltxt := sqltxt +
      ' sum( case when ( ShowlistKind in(2,4,15,14) and bedbes=1 )  then price else 0 end ) as sum23Dec , '
      +

    // ' sum( case ShowlistKind when 3  then price else 0 end ) as ContainInsourance , '
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '

      + ' sum( case when ( ShowlistKind=11 and bedbes=0 and CalCulateKind=12) then price else 0 end ) as ContainTax , '
      + ' sum( case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as TaxValue ';
  end; // with
  with qryDec do
  begin
    Active := False;

    SQL.Text := 'SELECT Pay.FixedCalculated.SalaryID,';
    SQL.Add('MAX(CASE WHEN Pay.InsuranceCONSTinfo.InsuranceLabel_L1 IS NULL');
    SQL.Add('THEN FormsInfo_2.InfoName_L1 ELSE Pay.InsuranceCONSTinfo.InsuranceLabel_L1 END) AS InfoName_L1,');
    SQL.Add('FormsInfo_2.FormInfoID');
    SQL.Add('FROM Pay.InsuranceCONSTinfo RIGHT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON InsuranceCONSTinfo.FormInfoID = FormsInfo_2.FormInfoID RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON');
    SQL.Add('FixedCalculated.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.PersonelInfo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    SQL.Add('FixedCalculated.PersonelNO = PersonelInfo.PersonelNo ON FormsInfo_2.FormInfoID = FixedCalculated.SalaryID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON Pay.Interdicts.ProjectID = FormsInfo_Project.FormInfoID');
    SQL.Add('WHERE (FixedCalculated.ShowListKind = 2)');
    // GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthTo), 2)) +
      ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthFrom), 2)) + ''')');
    if not chkMounth.Checked then
      SQL.Add('AND (Interdicts.STATE <= 50)');

    SQL.Add('AND (Pay.FixedCalculated.Mounth BETWEEN :MounthFrom AND :MounthTo)AND (Pay.FixedCalculated.ArchiveID = :ArchiveID)');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add('AND (Pay.FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    SQL.Add('AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add('AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    SQL.Add('AND (FormsInfo_Project.InfoID BETWEEN :ProjectIDFrom AND :ProjectIDTo )');

    if optP.SalaryID4PartMakeBankDSK <> EmptyStr then
      case FormType of
        1:
          SQL.Add('AND(FixedCalculated.SalaryID NOT in(' +
            optP.SalaryID4PartMakeBankDSK + '))');
        2:
          SQL.Add('AND(FixedCalculated.SalaryID in(' +
            optP.SalaryID4PartMakeBankDSK + '))');
      end;

    SQL.Add('GROUP BY FixedCalculated.SalaryID, FormsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID');
    SQL.Add('HAVING SUM(Price)>0');
    SQL.Add('');
    SQL.Add('ORDER BY FixedCalculated.SalaryID');

    Parameters.ParamByName('MounthFrom').Value := MounthFrom;
    Parameters.ParamByName('MounthTo').Value := MounthTo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
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

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    Active := True;
    while not Eof do
    begin
      sqltxt := sqltxt + ', sum( case  when salaryid=' +
        Fieldbyname('FormInfoID').AsString +
        '  and  ShowlistKind =2 then price else 0 end ) as dec' +
        IntToStr(RecNo);
      Next;

    end; // while

    if optP.SalaryID4PartMakeBankDSK <> EmptyStr then
      case FormType of
        1:
          sqltxt := sqltxt +
            ', Sum(case when (ShowlistKind in(2,11) and bedbes = 2)AND(FixedCalculated.SalaryID NOT in('
            + optP.SalaryID4PartMakeBankDSK +
            ')) then price else 0 end ) as SumCurDec  ';

        2:
          sqltxt := sqltxt +
            ', Sum(case when(ShowlistKind in(2,11) and bedbes = 2)AND(FixedCalculated.SalaryID in('
            + optP.SalaryID4PartMakeBankDSK +
            ')) then price else 0 end ) as SumCurDec  ';
      end;

    sqltxt := sqltxt +
      ', sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ';

    if optP.SalaryID4PartMakeBankDSK <> EmptyStr then
      case FormType of
        1, 3:
          begin
            sql1 := 'Sum(case when (ShowlistKind = 1)AND(FixedCalculated.SalaryID NOT in('
              + optP.SalaryID4PartMakeBankDSK +
              ')) then price else 0 end )- Sum(case when (ShowlistKind in(2,11) and bedbes = 2)AND(FixedCalculated.SalaryID NOT in('
              + optP.SalaryID4PartMakeBankDSK + ')) then price else 0 end )';
            sqltxt := sqltxt + ',' + sql1 + ' as PayableCurSalary  ';

            if FormType = 3 then
              sqltxt := sqltxt +
                ', Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))'
                + '- case when (' + sql1 + ') > 0 then  (' + sql1 +
                ') else 0 end as PayableSalaryDef ';

          end;

        2:
          sqltxt := sqltxt +
            ',Sum(case when (ShowlistKind = 1)AND(FixedCalculated.SalaryID in('
            + optP.SalaryID4PartMakeBankDSK +
            ')) then price else 0 end )- Sum(case when(ShowlistKind in(2,11) and bedbes = 2)AND(FixedCalculated.SalaryID in('
            + optP.SalaryID4PartMakeBankDSK +
            ')) then price else 0 end ) as PayableCurSalary  ';
      end;

    sqltxt := sqltxt +
      ', Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary ';
    // ' CAST( ROUND( SUM(CASE WHEN ((FormsInfo_2.InfoID BETWEEN 1 AND 4) and (FormsInfo_2.FormType = 22)) THEN price ELSE 0 END)/ '
    // + '  (CASE WHEN Functions_Sum.FunctionDay<>0 THEN Functions_Sum.FunctionDay ELSE 1 END) ,0) as money ) AS WageDay ';
  end; // with

  with qrysalary do
  begin
    Active := False;
    SQL.Text := sqltxt;
    // SQL.Add  ('FROM Pay.FixedCalculated LEFT OUTER JOIN Pay.Interdicts ');   11
    // SQL.Add  ('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON');
    // SQL.Add  ('FixedCalculated.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN Pay.Functions_Sum INNER JOIN');
    // SQL.Add  ('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo ');
    // SQL.Add  ('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    // SQL.Add  ('FixedCalculated.Mounth = Functions_Sum.Mounth AND FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN');
    // SQL.Add  ('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID');
    // if chkMounth.Checked then
    // SQL.Add(', InterdictItemsAmount.Amount Amount') ;
    SQL.Add('FROM Pay.FormsInfo AS FormsInfoEmployTypeID RIGHT OUTER JOIN');
    if chkMounth.Checked then
      SQL.Add('Pay.Interdicts ')
    else
      SQL.Add('Pay.Interdicts LEFT OUTER JOIN Pay.v_InterdictItemSumSalary ISS ON ISS.InterdictID = Interdicts.InterdictID');
    SQL.Add('ON FormsInfoEmployTypeID.FormInfoID = Interdicts.EmployTypeID RIGHT OUTER JOIN');

    SQL.Add('Pay.FixedCalculated ON Pay.Interdicts.PersonelNo = FixedCalculated.PersonelNO '
      + ifthen(chkMounth.Checked, '',
      ' AND LTRIM(STR(FixedCalculated.YearID))+RIGHT(''/0''+LTRIM(STR(FixedCalculated.Mounth)),3) BETWEEN LEFT (Interdicts.InterdicStartDate,7) AND LEFT(Interdicts.InterdicEndDate,7) ')
      );
    SQL.Add(' LEFT OUTER JOIN ');
    SQL.Add('(SELECT PersonelNo %s From Pay.FunctionItemsListParam() WHERE  YearID = '+APPBank.Year.ToString+' AND (Mounth BETWEEN :Mounth1From AND :Mounth1To) Group By PersonelNo)');
    SQL.Add(' AS FunctionItemsList_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo ');
    SQL.Add(' LEFT OUTER JOIN Pay.Functions_Sum INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo');

    SQL.Add(' LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    SQL.Add('FixedCalculated.Mounth = Functions_Sum.Mounth AND FixedCalculated.PersonelNO = PersonelInfo.PersonelNo');
    SQL.Add('AND FixedCalculated.YearID = Functions_Sum.YearID ');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON Pay.Interdicts.ProjectID = FormsInfo_Project.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID ');
    // SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Office ON FixedCalculated.OfficeCode = FormsInfo_Office.FormInfoID');

    // SQL.Add('LEFT OUTER JOIN Pay.balanceDecExtLeave(:@YearID , :MounthForm2, :MounthTo2,');
    // SQL.Add(':FromPersonelNo2 , :ToPersonelNo2 ,');
    // SQL.Add(':FormInfoID, :StandardDays, :StandardTimes ,');
    // SQL.Add('DEFAULT , DEFAULT , :PersonelStateFrom2 , :PersonelStateTo2 , :EmployTypeIDFROM2 , :EmployTypeIDTo2 )');
    // SQL.Add('AS balanceDecExt_1');
    // SQL.Add('ON FixedCalculated.PersonelNO = balanceDecExt_1.PersonelNo');

    SQL.Add(' WHERE (FixedCalculated.ArchiveID = :ArchiveID) AND (FixedCalculated.Mounth BETWEEN :MounthFrom AND :MounthTo) AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add('AND(FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add('AND(InterdicType = 0 ) AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    // GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthTo), 2)) +
      ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthFrom), 2)) + ''')');
    if not chkMounth.Checked then
      SQL.Add('AND (Interdicts.STATE <= 50)');
    SQL.Add('AND (FormsInfo_Project.InfoID  BETWEEN :ProjectIDFrom  AND :ProjectIDTo )');

    SQL.Add('GROUP BY PersonelInfo.NationalID,FixedCalculated.PersonelNO,PersonelInfo.Mobile , PersonelInfo.IDNumber,');
    SQL.Add('PersonelInfo.InsuranceNumber,FormsInfoPersonelState.InfoName_L1, ');
    SQL.Add('PersonelInfo.name_L1,PersonelInfo.lastName_L1 ,PersonelInfo.fatherName_L1'
      + ifthen(chkMounth.Checked, ',Interdicts.InterdictID', ''));
    SQL.Add(', Functions_Sum.FunctionDayNoSick,Functions_Sum.FunctionTime,Functions_Sum.FunctionSick');
    // SQL.Add  (',Functions_Sum.FunctionTime, Functions_Sum.Mounth');
    SQL.Add(',FormsInfo_Project.InfoID ,FormsInfo_Project.InfoName_L1,Interdicts.PersonelNo');
    SQL.Add(',FormsInfo_jobCode.InfoID ,FormsInfo_jobCode.InfoName_L1 ');

    // SQL.Add(',FormsInfo_Office.InfoID,FormsInfo_Office.InfoName_L1');

    // ,balanceDecExt_1.BalanceAllDay

    SQL.Add(FunItems4Groupby);

    SQL.Add('ORDER BY FixedCalculated.PersonelNO');

    SQL.Text := Format(SQL.Text, [FunItems4Sum]);
  end; // with
end;

procedure TSalaryList_insurancePartF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  Caption := Caption + ' قسط ' + FormType.ToString;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  DBGrid2.Visible := optP.InterdictItemSumSalary1 <> EmptyStr;
  DBGrid2.SearchPanel.Visible := False;
  DBGrid2.SearchPanel.Enabled := False;

  // //
  // GetFunctionsItems(FunItems, FunItems4Sum, qrysalary, DBGrid1);
  // //
  // if DBGrid2.Visible then
  // with qryItemsSum do
  // begin
  // Active := False;
  // SQL.Text := 'SELECT Amount1,Amount2,AmountSum,AmountIn30,AmountSumAnd30';
  // SQL.Add('FROM Pay.v_InterdictItemSumSalary WHERE ( InterdictID = :InterdictID )');
  // end;

end;

procedure TSalaryList_insurancePartF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TSalaryList_insurancePartF.lblFilterStringCaptionClick
  (Sender: TObject);
begin
  inherited;
  lblFilterStringCaption.Height := 13;
  lblFilterStringCaption.AutoSize := not lblFilterStringCaption.AutoSize;

end;

procedure TSalaryList_insurancePartF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList_insurancePartF.ppLblCompanyGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSalaryList_insurancePartF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList_insurancePartF.chkMounthClick(Sender: TObject);
var
  MounthFrom, MounthTo: Byte;
begin
  inherited;
  setColumns2(Dbgrid1, chkMounth.Checked, 'Amount');
  ToolBar1.Visible := chkMounth.Checked;
  if not chkMounth.Checked then
  begin
    actFilter.Execute;
    MounthFrom := GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    MounthTo := GetcTo(myParams.ParamValues['Mounth'], ftInteger);
    InitCmbArchiveID(CmbArchiveID, MounthFrom, MounthTo, True);
    CmbArchiveIDChange(CmbArchiveID);
  end
  else
  begin
    InitCmbArchiveID(CmbArchiveID, MonthNo);
    Updatefilter;
  end;
end;

procedure TSalaryList_insurancePartF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(Dbgrid1);
end;

procedure TSalaryList_insurancePartF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList_insurancePartF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TSalaryList_insurancePartF.actPrintExecute(Sender: TObject);
var
  ReportFooter: String;
begin
  inherited;
  try
    qrysalary.DisableControls;
    With DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := 'SELECT ReportFileName1 FROM Pay.FormTypes where FormType = 48 ';
      Active := True;
      if Trim(Fieldbyname('ReportFileName1').AsString) <> EmptyStr then
      begin
        InitReportFile(ppReport1, Fieldbyname('ReportFileName1')
          .AsString, False);
        // MakeReport;
        SetSendToBackShapeOnPrint(Self);
        NilDataFieldIfNotFind;
        ppReport1.Print;
        Exit;
      end;
      Active := False;
    end;
    // With
    ReportFooter := FooterFormType(48);
    // MakeReport;
    // InitReport(ppReport1, ppFooterBand1, ppRegion1, ppRecFooterLine,
    // ReportFooter);
    // InitReport(ppReport1, ppSummaryBand1, ppRegion2, ppRecFooterLine2,
    // ReportFooter);
    SetSendToBackShapeOnPrint(Self);
    NilDataFieldIfNotFind;
    ppReport1.Print;
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList_insurancePartF.NilDataFieldIfNotFind;
var
  i: Integer;
  myDBText: TppDBText;
begin
  for i := 0 TO ComponentCount - 1 do
  begin
    if (Components[i] is TppDBText) or (Components[i] is TppDBCalc) then
    begin
      myDBText := TppDBText(Components[i]);
      if qrysalary.FindField(myDBText.DataField) = nil then
        myDBText.DataField := EmptyStr
    end;
  end;
end;

procedure TSalaryList_insurancePartF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList_insurancePartF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList_insurancePartF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList_insurancePartF.actFilterExecute(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      // AddItem(DMf.adcSalary, 'FormType16', 'مرخصی پرسنل ', 'كد', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 16)',
      // 'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 16)');

      AddItemFilter(GetFilter, TFilterProjectID);
      // AddItem(DMf.adcSalary, 'ProjectID', ' عنوان پروژه', 'كد', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT    FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
      // + ' Pay.FormsInfo ON FixedCalculated.ProjectID = FormsInfo.FormInfoID WHERE  formtype in (39,40,41)   '
      // + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ',
      // 'SELECT  0 , MAX(InfoID) FROM Pay.FormsInfo INNER JOIN Pay.FixedCalculated on FixedCalculated.ProjectID = FormsInfo.FormInfoID where formtype in (39,40,41) ');

      AddItemFilter(GetFilter, TEmployTypeID);

      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');

      AddItemFilter(GetFilter, TPersonelNo);


      if not chkMounth.Checked then
      begin
        AddItem(DMf.adcSalary, 'Mounth', 'ماه', 'ماه', ftInteger, dvMinMax, '',
          '', ciLookup, 'SELECT MonthID,Name FROM Pay.Months',
          'SELECT MIN(MonthID),MAX(MonthID) FROM Pay.Months');
      end;
      if ShowModal = mrOk then
      begin
        GetFilterString;
        lblFilterStringCaption.Caption := GetFilterStringCaption;
        Updatefilter;
      end;
      // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TSalaryList_insurancePartF.Updatefilter;
var
  MounthTo, MounthFrom: Integer;
  i: Integer;
  cars: tstringlist; // Define our string list variable
begin
  // with qryFormInfo do     copy from form RptFunctionWithMonth
  // begin
  // Active := False;
  // Active := True;
  // i := GetcFrom(myParams.ParamValues['FormType16'], ftInteger);
  // Filter := 'InfoID =' + i.ToString;
  // Filtered := True;
  // end;
  Make_Sql;
  if chkMounth.Checked then
  begin
    MounthFrom := MonthNo;
    MounthTo := MonthNo;
  end
  else
  begin
    MounthFrom := GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    MounthTo := GetcTo(myParams.ParamValues['Mounth'], ftInteger);
    // InitCmbArchiveID(CmbArchiveID, MounthFrom, MounthTo, True);
  end;

  with qrysalary do
  begin
    Active := False;
    Parameters.ParamByName('MounthFrom').Value := MounthFrom;
    Parameters.ParamByName('MounthTo').Value := MounthTo;
    Parameters.ParamByName('Mounth1From').Value := MounthFrom;
    Parameters.ParamByName('Mounth1To').Value := MounthTo;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
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

    // Parameters.ParamByName('MounthForm2').Value := 0;
    // Parameters.ParamByName('MounthTo2').Value := MounthTo;
    // Parameters.ParamByName('FromPersonelNo2').Value :=
    // GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    // Parameters.ParamByName('ToPersonelNo2').Value :=
    // GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    //
    // Parameters.ParamByName('FormInfoID').Value :=
    // qryFormInfoFormInfoID.AsInteger;
    // Parameters.ParamByName('StandardDays').Value :=
    // qryFormInfoStandardDays.AsInteger;
    // Parameters.ParamByName('StandardTimes').Value :=
    // qryFormInfoStandardTimes.AsInteger;
    //
    // Parameters.ParamByName('PersonelStateFrom2').Value :=
    // GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    // Parameters.ParamByName('PersonelStateTo2').Value :=
    // GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    //
    // Parameters.ParamByName('EmployTypeIDFrom2').Value :=
    // GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    // Parameters.ParamByName('EmployTypeIDTo2').Value :=
    // GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Active := True;
  end;
  //

  With qrysalary do
  begin
    // Fieldbyname('_Row').DisplayLabel := 'رديف';
    Fieldbyname('PersonelNO').DisplayLabel := 'ش پرسنل';
    Fieldbyname('name_L1').DisplayLabel := 'نام';
    Fieldbyname('lastName_L1').DisplayLabel := 'نام خانوادگي';
    Fieldbyname('PersonName').DisplayLabel := 'نام پرسنل';
    Fieldbyname('ProjectCode').DisplayLabel := 'کد پروژه';
    Fieldbyname('ProjectName').DisplayLabel := 'عنوان پروژه';
    Fieldbyname('jobName').DisplayLabel := 'پست سازمانی';
    Fieldbyname('jobCode').DisplayLabel := 'کد پست سازمانی';
    Fieldbyname('SumWage').DisplayLabel := 'جمع حقوق و مزايا';

    if FindField('SumCurWage') <> nil then
      Fieldbyname('SumCurWage').DisplayLabel := 'جمع حقوق و مزايا قسط';

    Fieldbyname('sum23Dec').DisplayLabel := 'بيمه كارفرما';
    Fieldbyname('ContainInsourance').DisplayLabel := 'مشمول بيمه';
    Fieldbyname('ContainTax').DisplayLabel := 'A ';
    Fieldbyname('TaxValue').DisplayLabel := 'ماليات ';
    Fieldbyname('SumDec').DisplayLabel := 'جمع كسورات';

    if FindField('SumCurDec') <> nil then
      Fieldbyname('SumCurDec').DisplayLabel := 'جمع كسورات قسط';

    // Fieldbyname('_Amount9').DisplayLabel := 'م.جمعه كاري تعطيلكاري';
    Fieldbyname('PayableSalary').DisplayLabel := 'حقوق قابل پرداخت';

    if FindField('PayableCurSalary') <> nil then
      Fieldbyname('PayableCurSalary').DisplayLabel := 'قسط حقوق قابل پرداخت';

    if FindField('PayableSalaryDef') <> nil then
      Fieldbyname('PayableSalaryDef').DisplayLabel := 'تفاوت حقوق قابل پرداخت';

    Fieldbyname('IDNumber').DisplayLabel := 'ش ش';
    Fieldbyname('InsuranceNumber').DisplayLabel := 'شماره بيمه';
    Fieldbyname('StateName_L1').DisplayLabel := 'وضعيت';
    Fieldbyname('fatherName_L1').DisplayLabel := 'نام پدر';
    Fieldbyname('Amount').DisplayLabel := 'جمع عناوين حكم';
    Fieldbyname('Mobile').DisplayLabel := 'همراه';
    Fieldbyname('InterdictID').DisplayLabel := 'InterdictID';
    Fieldbyname('WageDay').DisplayLabel := 'حقوق روزانه';
    Fieldbyname('_FunctionDay').DisplayLabel := 'م.کارکرد';
    Fieldbyname('_FunctionTime').DisplayLabel := 'س.کارکرد';
    Fieldbyname('FunctionSick').DisplayLabel := 'بیماری';

    Fieldbyname('NationalID').DisplayLabel := 'کد ملی';

    // Fieldbyname('OfficeCode').DisplayLabel := 'کد واحد';
    // Fieldbyname('OfficeName').DisplayLabel := 'نام واحد';

    // Fieldbyname('BalanceAllDay').DisplayLabel := 'مانده ' +
    // qryFormInfoInfoName_L1.AsString;

  end;
  /// _Amount_Amount_Amount_Amount_Amount_Amount_Amount
  ///
  ///
  cars := tstringlist.Create;
  try
    cars.Delimiter := ';'; // جداکننده هر آیتم
    cars.StrictDelimiter := True; // جلوگیری از تشخیص اشتباه فاصله و غیره
    cars.QuoteChar := '|'; // هر آیتم داخل | است

    cars.DelimitedText := FunCaptions;

    for i := 0 to cars.Count - 1 do
    begin
      if qrysalary.FindField('_Amount' + IntToStr(i + 1)) <> nil then
        qrysalary.Fieldbyname('_Amount' + IntToStr(i + 1)).DisplayLabel
          := cars[i];

      if qrysalary.FindField('AmountRate' + IntToStr(i + 1)) <> nil then
        qrysalary.Fieldbyname('AmountRate' + IntToStr(i + 1)).DisplayLabel :=
          'نرخ ' + cars[i];
    end;
  finally
    cars.Free;
  end;
  /// _Amount_Amount_Amount_Amount_Amount_Amount_Amount

  qryWage.First;
  while not qryWage.Eof do
  begin
    qrysalary.Fieldbyname('Wage' + IntToStr(qryWage.RecNo)).DisplayLabel :=
      qryWage.Fieldbyname('InfoName_L1').AsString;
    qryWage.Next;
  end;
  // while
  qryDec.First;
  while not qryDec.Eof do
  begin
    qrysalary.Fieldbyname('Dec' + IntToStr(qryDec.RecNo)).DisplayLabel :=
      qryDec.Fieldbyname('InfoName_L1').AsString;
    qryDec.Next;
  end;

  for i := 0 to Dbgrid1.Columns.Count - 1 do
  begin
    if (Dbgrid1.Columns[i].Field is TBCDField) then
      TBCDField(Dbgrid1.Columns[i].Field).Currency := True;
    if Dbgrid1.Columns[i].FieldName = 'InterdictID' then
      Dbgrid1.Columns[i].Visible := False
    else
      qrysalary.Fieldbyname(Dbgrid1.Columns[i].FieldName).Tag := 3;

    Dbgrid1.Columns[i].Title.TitleButton := True;

    if Dbgrid1.Columns[i].Width > 100 then
      Dbgrid1.Columns[i].Width := 100;
  end;
  Dbgrid1.Columns[Dbgrid1.Columns.Count - 1].Width := 150;
  // Dbgrid1.SetFooter4Sum([]);
  Dbgrid1.ColorDBGrid;

  // TBCDField(qrysalary.Fieldbyname('BalanceAllDay')).Currency := False;

  CheckBox1Click(CheckBox1);

end;

procedure TSalaryList_insurancePartF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList_insurancePartF.plblFilterStringCaptionGetText
  (Sender: TObject; var Text: string);
begin
  inherited;
  Text := lblFilterStringCaption.Caption;
end;

procedure TSalaryList_insurancePartF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList_insurancePartF.actFishExecute(Sender: TObject);
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

procedure TSalaryList_insurancePartF.actFunctionShowExecute(Sender: TObject);
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

procedure TSalaryList_insurancePartF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(Dbgrid1, 0, '');
end;

procedure TSalaryList_insurancePartF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter;
end;

procedure TSalaryList_insurancePartF.Dbgrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrysalary.Fieldbyname('PersonelNo'))
end;

procedure TSalaryList_insurancePartF.qrysalaryAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if DBGrid2.Visible then
    with qryItemsSum do
    begin
      Active := False;
      Parameters.ParamByName('InterdictID').Value :=
        DataSet.Fieldbyname('InterdictID').Value;
      // ShowQryParam(qryItemsSum);
      Active := True;
    end;
end;

procedure TSalaryList_insurancePartF.All_Amount_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('_Amount' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('_Amount' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList_insurancePartF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
  begin
    Dbgrid1.SetFooter4Sum([]);
    Dbgrid1.SelectedIndex := Dbgrid1.Columns.Count - 1;
  end
  else
  begin
    Dbgrid1.SumList.Active := False
  end;
end;

procedure TSalaryList_insurancePartF.ALLSetDataFieldGetText(Sender: TObject;
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

procedure TSalaryList_insurancePartF.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList_insurancePartF.ALL_AmountSetDataFieldGetText
  (Sender: TObject; var Text: String);
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

procedure TSalaryList_insurancePartF.AllClick1Click(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    qryItemsSum.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, False);
    NilDataFieldIfNotFind;
    ppReport1.Print;
    // ppReport1.PrintToDevices;
  finally
    qrysalary.EnableControls;
    qryItemsSum.EnableControls;
  end;
end;

procedure TSalaryList_insurancePartF.AllD_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList_insurancePartF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited; //
end;

procedure TSalaryList_insurancePartF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList_insurancePartF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

End.

