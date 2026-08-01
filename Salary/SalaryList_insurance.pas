unit SalaryList_insurance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands, strutils,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, ppStrtch,
  ppRegion, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.Menus;

type
  TSalaryList_insuranceF = class(Ttemplate2MDIF)
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
    chkProject: TCheckBox;
    Panel1: TPanel;
    chkOffTime: TCheckBox;
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
    procedure chkProjectClick(Sender: TObject);
    procedure actManagGridColumnsExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FunItems, FunItems4Sum, FunItemsGROUPBY, FunCaptions,
      fFormUniqueName: string;
    FAppini: string;
    MonthNo: Byte;
    procedure Make_Sql;
    procedure Updatefilter;
    procedure NilDataFieldIfNotFind;
    procedure LoadColumns;
    procedure SaveColumns;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList_insuranceF: TSalaryList_insuranceF;

const
  DotCaption = '...';

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO,
  main, ListSalary, FunctionItems, SalaryFunctions, DBGrid2Print, infoSMS,
  Filter_ADO_Const, mdiMain, FaraConsts;

{$R *.dfm}

procedure TSalaryList_insuranceF.Make_Sql;
var
  MounthFrom, MounthTo, ArchiveID: Integer;
  sqltxt: string;
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

  GetFunctionsItemsParam(FunItems, FunItems4Sum, FunCaptions, FunItemsGROUPBY,
    qrysalary, Dbgrid1, myParams, MounthFrom, MounthTo);
  //
  if DBGrid2.Visible then
    with qryItemsSum do
    begin
      Active := False;
      SQL.Text := 'SELECT Amount1,Amount2,AmountSum,AmountIn30,AmountSumAnd30';
      SQL.Add('FROM Pay.v_InterdictItemSumSalary WHERE ( InterdictID = :InterdictID )');
    end;

  // SELECT     FC.SalaryID,
  // FormsInfo_2.InfoName_L1 + CASE WHEN Mounth <> isnull(MounthRetard,0)
  // THEN  isnull('(' + 'معوقه ماه ' + LTRIM(STR(MounthRetard))+ ')'  ,'')   ELSE  '' END AS InfoName_L1
  //
  // , FormsInfo_2.FormInfoID, isnull(MounthRetard,0) as MounthRetard
  //
  // FROM Pay.FixedCalculated LEFT OUTER JOIN
  // Pay.Interdicts LEFT OUTER JOIN
  // Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON
  // FC.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN
  // Pay.PersonelInfo LEFT OUTER JOIN
  // Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON
  // FC.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN
  // Pay.FormsInfo AS FormsInfo_2 ON FC.SalaryID = FormsInfo_2.FormInfoID
  // LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON Pay.Interdicts.ProjectID = FormsInfo_Project.FormInfoID
  // WHERE     (Interdicts.State < 50) AND (FC.ShowListKind = 1)
  // AND (FC.Mo  unth BETWEEN :Mounth From ANd :MounthTo)AND (FC.ArchiveID = : ArchiveID)
  // AND (FC.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)
  // AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom AND :PersonelStateTo )
  // AND (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeID From AND :EmployTypeIDTo )
  // AND (FormsInfo_Project.InfoID  BETWEEN :ProjectIDFrom  AND :ProjectIDTo )
  // GROUP BY FC.SalaryID, FormsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID,MounthRetard @Mounth
  //
  // having sum(Price)<>0
  // ORDER BY FC.SalaryID

  // ----make qrysalary sql-----------------------------------

  with qryWage do
  begin
    Active := False;
    SQL.Text := 'SELECT FC.SalaryID,FormsInfo_2.WageKind,' +
      ' FormsInfo_2.InfoName_L1' + ifthen(chkMounth.Checked,
      ' + CASE WHEN Mounth <> isnull(MounthRetard,0)' +
      ' THEN isnull(''('' + ''معوقه ماه '' + LTRIM(STR(MounthRetard))+ '')'' ,'''') ELSE '''' END',
      '') + ' AS InfoName_L1' + ' ' + ' , FormsInfo_2.FormInfoID,' +
      ifthen(chkMounth.Checked, ' isnull(MounthRetard,0)',
      'MAX(isnull(MounthRetard,0))') + ' as MounthRetard' +
    // ' ,CASE WHEN FC.CalCulateKind = 5 THEN ROW_NUMBER() OVER(PARTITION BY FC.CalCulateKind ORDER BY FC.SalaryID)ELSE 0  END AS RowNum '
      ',CASE WHEN FC.CalCulateKind=5 THEN FC.SalaryID ELSE 0 END AS RowNum' +

      ' FROM Pay.FixedCalculated AS FC LEFT OUTER JOIN  Pay.Interdicts LEFT OUTER JOIN'
      + ' Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON'
      + ' FC.PersonelNO = Interdicts.PersonelNo  LEFT OUTER JOIN' +
      ' Pay.PersonelInfo LEFT OUTER JOIN' +
      ' Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON'
      + ' FC.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN' +
      ' Pay.FormsInfo AS FormsInfo_2 ON FC.SalaryID = FormsInfo_2.FormInfoID' +
      ' LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON ' +
      ifthen(chkProject.Checked, 'FC', 'Interdicts') +
      '.ProjectID = FormsInfo_Project.FormInfoID';

    SQL.Add(' WHERE (FC.ShowListKind = 1)');
//    SQL.Add('AND (FormsInfo_2.WageKind <>29)');

    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthTo), 2)) +
      ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthFrom), 2)) + ''')');
    if not chkMounth.Checked then
      SQL.Add('AND (Interdicts.STATE <= 50)');

    SQL.Add(' AND (FC.Mounth BETWEEN :MounthFrom ANd :MounthTo)');
    SQL.Add(' AND (FC.YearID = :YearID)');
    SQL.Add(' AND (FC.Years = :Years)');
    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add(' AND (FC.ArchiveID = :ArchiveID)');

    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND((FC.subcompanyCode = 0)OR(FC.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo ))');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add(' AND (FC.LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
    SQL.Add(' AND (FC.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    SQL.Add(' AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add(' AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
    SQL.Add(' AND (FormsInfo_Project.InfoID  BETWEEN :ProjectIDFrom  AND :ProjectIDTo ) ');

    SQL.Add('AND ((Interdicts.GroupID  BETWEEN :GroupIDFrom  AND :GroupIDTo )OR(GroupID = 0))');
    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);

    SQL.Add(' GROUP BY FC.SalaryID,FC.CalCulateKind,FormsInfo_2.WageKind, FormsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID');
    SQL.Add(ifthen(chkMounth.Checked, ',MounthRetard, Mounth', ''));
    SQL.Add('  HAVING SUM(FC.Price)>0 ');
    SQL.Add(' ORDER BY FC.SalaryID');

    Parameters.ParamByName('MounthFrom').Value := MounthFrom;
    Parameters.ParamByName('MounthTo').Value := MounthTo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
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

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    Active := True;
    sqltxt := 'SELECT ROW_NUMBER() OVER(ORDER BY FC.PersonelNO ASC) AS _Row, FC.PersonelNO,'
      + 'PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName '
      + ',PersonelInfo.name_L1 , PersonelInfo.lastName_L1 ,PersonelInfo.fatherName_L1,FormsInfo_childNumber.InfoName_L1 AS  childNumber,FormsInfoPersonelState.InfoName_L1 as StateName_L1 , '
      + 'PersonelInfo.NationalID,PersonelInfo.IDNumber, PersonelInfo.InsuranceNumber,PersonelInfo.AccountNumber,'
      + ' PersonelInfo.Mobile' + ifthen(chkMounth.Checked,
      ',Interdicts.InterdictID', ', MAX(Interdicts.InterdictID) InterdictID') +
      ', FormsInfo_Project.InfoID AS ProjectCode ,FormsInfo_Project.InfoName_L1 AS ProjectName '
      + ', FormsInfo_jobCode.InfoID AS jobCode ,FormsInfo_jobCode.InfoName_L1 AS jobName '
      + ',FormsInfo_Group.InfoName_L1 AS GroupName ,FormsInfo_grade.InfoName_L1 AS PersonelGrade '

    // + ',FormsInfo_Office.InfoID AS OfficeCode ,FormsInfo_Office.InfoName_L1  AS OfficeName'
      +
    /// ,balanceDecExt_1.BalanceAllDay
      ' ,Functions_Sum.FunctionDayNoSick AS _FunctionDay ,Functions_Sum.FunctionTime AS _FunctionTime ,Functions_Sum.FunctionSick '
      + ifthen(chkOffTime.Checked, ', Pay.RemainDayDec(OffL.addtype) OffTime ',
      '') + FunItems + ifthen(chkMounth.Checked,
      ' ,(SELECT AmountIN30 FROM Pay.v_InterdictItemSumSalary ISS WHERE ( ISS.InterdictID = Interdicts.InterdictID)) AS WageDay ',
      ',SUM(ISS.AmountIN30) AS WageDay') +

      ', (SELECT SUM(Amount) Amount FROM Pay.InterdictItems INNER JOIN Pay.Interdicts Intd ON Intd.InterdictID = InterdictItems.InterdictID '
      + ' WHERE   InterdictItems.InterdictID BETWEEN Min(Interdicts.InterdictID) AND MAX(Interdicts.InterdictID) AND Intd.PersonelNo = interdicts.PersonelNo) Amount';

    First;
    while not Eof do
    begin
      if chkMounth.Checked then
        sqltxt := sqltxt +  sLineBreak +
        // <= حق مسکن که کم شده بود شرط از مساوی به کوچکتر مساوی  تغییر یافت
        // دوباره  =   شد زیرا  ماه قبل با ماه جدید رو تو ماه اخر جمع می کرد
          Format(', sum( case when (salaryid = %d AND ShowlistKind = 1 AND IsNull(MounthRetard,0)= %d )'
          // <=
          + ' then price else 0 end ) as Wage%d',
          [Fieldbyname('FormInfoID').AsInteger, Fieldbyname('MounthRetard')
          .AsInteger, RecNo])
      else
        sqltxt := sqltxt +  sLineBreak +
          Format(', sum( case when (salaryid = %d)AND (ShowlistKind = 1) ' +
          ' then price else 0 end ) as Wage%d',
          [Fieldbyname('FormInfoID').AsInteger, RecNo]);
      Next;

    end; // while

    sqltxt := sqltxt + sLineBreak +
      ' ,EydiSanavat.Reward,Sum(case ShowlistKind when 1 then price else 0 end )'
      + '+ISNULL(case when C.ActRewardInlistSalary in(1,2)  then EydiSanavat.Reward else 0 end ,0) as SumWage , '
      + ' EydiSanavat.Sanavat,EydiSanavat.Eydi,EydiSanavat.MaliatEydi, ' +

      ' Sum(case ShowlistKind when 1 then price else 0 end )+ISNULL(EydiSanavat.Sanavat,0)+ISNULL(EydiSanavat.Eydi,0)'
      + ' +ISNULL( case when C.ActRewardInlistSalary in(1,2)  then EydiSanavat.Reward else 0 end,0) as SumWageSanavat , '
      +

      ' sum( case when ( ShowlistKind in(2,4,15,14) and bedbes=1 )  then price else 0 end ) as sum23Dec , '
      +

    // ' sum( case ShowlistKind when 3  then price else 0 end ) as ContainInsourance , '
      ' CASE WHEN sum(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 '
      + ' THEN sum( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as ContainInsourance , '

     // + ' sum( case when ( ShowlistKind=11 and bedbes=0 and CalCulateKind=12) then price else 0 end )+isnull(ContainRewardTax,0) as ContainTax , '
      + ' sum( case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end )'
      + ' + case when C.ActRewardInlistSalary in(1,2)  then ISNULL(EydiSanavat.RewardTax,0) else 0 end  as TaxValue ';

  end; // with
  with qryDec do
  begin
    Active := False;
    SQL.Text := 'SELECT FC.SalaryID,';
    SQL.Add('MAX(CASE WHEN Pay.InsuranceCONSTinfo.InsuranceLabel_L1 IS NULL');
    SQL.Add('THEN FormsInfo_2.InfoName_L1 ELSE Pay.InsuranceCONSTinfo.InsuranceLabel_L1 END) AS InfoName_L1,');
    SQL.Add('FormsInfo_2.FormInfoID');
    SQL.Add('FROM Pay.InsuranceCONSTinfo RIGHT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON InsuranceCONSTinfo.FormInfoID = FormsInfo_2.FormInfoID RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated AS FC LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON');
    SQL.Add('FC.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.PersonelInfo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    SQL.Add('FC.PersonelNO = PersonelInfo.PersonelNo ON FormsInfo_2.FormInfoID = FC.SalaryID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON ' +
      ifthen(chkProject.Checked, 'FC', 'Interdicts') +
      '.ProjectID = FormsInfo_Project.FormInfoID');
    SQL.Add('WHERE (FC.ShowListKind = 2)');
    // GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthTo), 2)) +
      ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      ifthen(chkMounth.Checked, optP.YearMounth,
      optP.Year + '/' + RightStr('0' + IntToStr(MounthFrom), 2)) + ''')');
    if not chkMounth.Checked then
      SQL.Add('AND (Interdicts.STATE <= 50)');

    SQL.Add('AND (FC.Mounth BETWEEN :MounthFrom AND :MounthTo)AND (FC.ArchiveID = :ArchiveID)');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND((FC.subcompanyCode = 0)OR(FC.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo ))');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add('AND (FC.YearID = :YearID)');
    SQL.Add('AND (FC.Years = :Years)');
    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

//    SQL.Add('AND (FormsInfo_2.WageKind <>29)');


    SQL.Add('AND (FC.LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
    SQL.Add('AND (FC.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    SQL.Add('AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add('AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');

    SQL.Add('AND (FormsInfo_Project.InfoID BETWEEN :ProjectIDFrom AND :ProjectIDTo )');

    SQL.Add('AND ((Interdicts.GroupID  BETWEEN :GroupIDFrom  AND :GroupIDTo )OR(GroupID = 0))');
    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);

    SQL.Add('GROUP BY FC.SalaryID, FormsInfo_2.InfoName_L1, FormsInfo_2.FormInfoID');
    SQL.Add('HAVING SUM(Price)>0');
    SQL.Add('');
    SQL.Add('ORDER BY FC.SalaryID');

    Parameters.ParamByName('MounthFrom').Value := MounthFrom;
    Parameters.ParamByName('MounthTo').Value := MounthTo;
    Parameters.ParamByName('ArchiveID').Value := ArchiveID;
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
    sqltxt := sqltxt + #13#10 +
      ', sum( case ShowlistKind when 2  then price else 0 end ) +' +
      ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) +ISNULL(EydiSanavat.RewardTax,0) as SumDec ,'
      + #13#10 + ' Sum(case ShowlistKind when 1 then price else 0 end )-' +
      '(sum( case ShowlistKind when 2  then price else 0 end ) ' +
      '+Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end )) '
      + ' +ISNULL(case when C.ActRewardInlistSalary=1 then EydiSanavat.Reward else 0 end - EydiSanavat.RewardTax,0) as PayableSalary '
      + #13#10 + ', Sum(case ShowlistKind when 1 then price else 0 end )-' +
      '(sum( case ShowlistKind when 2  then price else 0 end ) ' +
      '+Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))'
      + ' + ISNULL(EydiSanavat.Sanavat,0) + ISNULL(EydiSanavat.Eydi,0) -ISNULL(EydiSanavat.MaliatEydi,0) '
      + '+ISNULL(case when C.ActRewardInlistSalary in(1)  then EydiSanavat.Reward else 0 end,0)-ISNULL((case when C.ActRewardInlistSalary=2 then EydiSanavat.RewardTax else 0 end),0) as PayableSalarySanavat '
      + #13#10;

    // ' CAST( ROUND( SUM(CASE WHEN ((FormsInfo_2.InfoID BETWEEN 1 AND 4) and (FormsInfo_2.FormType = 22)) THEN price ELSE 0 END)/ '
    // + '  (CASE WHEN Functions_Sum.FunctionDay<>0 THEN Functions_Sum.FunctionDay ELSE 1 END) ,0) as money ) AS WageDay ';
  end; // with

  with qrysalary do
  begin
    Active := False;
    GetYearMounth(MonthNo);
    SQL.Text := sqltxt;
    SQL.Add('FROM Pay.FormsInfo AS FormsInfoEmployTypeID RIGHT OUTER JOIN');
    if chkMounth.Checked then
      SQL.Add('Pay.Interdicts ')
    else
      SQL.Add('Pay.Interdicts LEFT OUTER JOIN Pay.v_InterdictItemSumSalary ISS ON ISS.InterdictID = Interdicts.InterdictID');
    SQL.Add('ON FormsInfoEmployTypeID.FormInfoID = Interdicts.EmployTypeID RIGHT OUTER JOIN');

    SQL.Add('Pay.FixedCalculated AS FC ON Pay.Interdicts.PersonelNo = FC.PersonelNO '
      + ifthen(chkMounth.Checked, '',
      ' AND LTRIM(STR(FC.YearID))+RIGHT(''/0''+LTRIM(STR(FC.Mounth)),3) BETWEEN LEFT (Interdicts.InterdicStartDate,7) AND LEFT(Interdicts.InterdicEndDate,7) ')
      );
    SQL.Add(' LEFT OUTER JOIN ');
    SQL.Add('(SELECT PersonelNo %s From Pay.FunctionItemsListParam() WHERE  YearID = '
      + appbank.Year.ToString +
      ' AND (Mounth BETWEEN :Mounth1From AND :Mounth1To) Group By PersonelNo)');
    SQL.Add(' AS FunctionItemsList_1 ON FC.PersonelNO = FunctionItemsList_1.PersonelNo ');
    SQL.Add(' LEFT OUTER JOIN Pay.Functions_Sum INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON Functions_Sum.PersonelNo = PersonelInfo.PersonelNo');

    SQL.Add(' LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    SQL.Add('FC.Mounth = Functions_Sum.Mounth AND FC.YearID = Functions_Sum.YearID AND  FC.PersonelNO = PersonelInfo.PersonelNo');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_2 ON FC.SalaryID = FormsInfo_2.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON ' +
      ifthen(chkProject.Checked, 'FC', 'Interdicts') +
      '.ProjectID = FormsInfo_Project.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID ');
    // SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Office ON FC.OfficeCode = FormsInfo_Office.FormInfoID');

    // SQL.Add('LEFT OUTER JOIN Pay.balanceDecExtLeave(:@YearID , :MounthForm2, :MounthTo2,');
    // SQL.Add(':FromPersonelNo2 , :ToPersonelNo2 ,');
    // SQL.Add(':FormInfoID, :StandardDays, :StandardTimes ,');
    // SQL.Add('DEFAULT , DEFAULT , :PersonelStateFrom2 , :PersonelStateTo2 , :EmployTypeIDFROM2 , :EmployTypeIDTo2 )');
    // SQL.Add('AS balanceDecExt_1');
    // SQL.Add('ON FC.PersonelNO = balanceDecExt_1.PersonelNo');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Group ON Pay.Interdicts.GroupID = FormsInfo_Group.FormInfoID ');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_childNumber ON PersonelInfo.childNumber = FormsInfo_childNumber.FormInfoID');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_grade ON Pay.Interdicts.grade = FormsInfo_grade.FormInfoID');

    SQL.Add(' LEFT OUTER JOIN ');
    SQL.Add('(SELECT PersonelNo ');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployerAmount else 0 end ),0) AS Sanavat');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployeeAmount else 0 end ),0) AS Eydi');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then PaymentLoan else 0 end ),0) AS MaliatEydi');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 111 then EmployeeAmount else 0 end ),0) AS Reward');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 111 then PaymentLoan else 0 end ),0) AS RewardTax');
    SQL.Add(',ISNULL(SUM(case when (F_sanavat.FormType = 111) and (F_sanavat.InfoID<=10) then EmployeeAmount else 0 end ),0) AS ContainRewardTax');

    SQL.Add('FROM pay.PersonelDecExt PersonelDecExt_1 INNER JOIN ');
    SQL.Add('pay.FormsInfo F_sanavat ON PersonelDecExt_1.FormInfoID = F_sanavat.FormInfoID ');
    SQL.Add('WHERE (LEFT(EndDate, 7) = ' + QuotedStr(optP.YearMounth) + ') ');
    SQL.Add('AND ((F_sanavat.FormType IN (59,111))   ) ');
    // SQL.Add('AND(PersonelNo BETWEEN :PersonelNoFROM AND :PersonelNoTo ) ');
    SQL.Add('Group by PersonelNo)');
    SQL.Add(' AS EydiSanavat ON FC.PersonelNO = EydiSanavat.PersonelNo ');

    if chkOffTime.Checked then
    begin
      SQL.Add('LEFT OUTER JOIN  (select PersonelNo ,SUM(addtype)addtype from  ');
      SQL.Add('pay.OffTimeList( ' + appbank.Year.ToString + ',' +
        appbank.Year.ToString +
        ', :Mounth2From, :Mounth2To,1,1, :PersonelNoFrom ,:PersonelNoTo)OffT where addtype<0 GROUP BY PersonelNo)OffL ');
      SQL.Add('ON  FC.PersonelNO = OffL.PersonelNo');
    end;
    SQL.Add('CROSS JOIN pay.Config c');

    SQL.Add(' WHERE (FC.ArchiveID = :ArchiveID) AND (FC.Mounth BETWEEN :MounthFrom AND :MounthTo) AND (FC.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND((FC.subcompanyCode = 0)OR(FC.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo ))');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add(' AND (FC.YearID = :YearID)');
    SQL.Add(' AND (FC.Years = :Years)');
    Parameters.ParamByName('YearID').Value := appbank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

//    SQL.Add('AND (FormsInfo_2.WageKind <>29)');


    SQL.Add(' AND (FC.LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
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

    SQL.Add('AND ((Interdicts.GroupID  BETWEEN :GroupIDFrom  AND :GroupIDTo )OR(GroupID = 0))');

    SQL.Add('GROUP BY PersonelInfo.NationalID,FC.PersonelNO,PersonelInfo.Mobile , PersonelInfo.IDNumber,');
    SQL.Add('PersonelInfo.InsuranceNumber,PersonelInfo.AccountNumber,FormsInfoPersonelState.InfoName_L1, ');
    SQL.Add('PersonelInfo.name_L1,PersonelInfo.lastName_L1 ,PersonelInfo.fatherName_L1'
      + ifthen(chkMounth.Checked, ',Interdicts.InterdictID', ''));
    SQL.Add(', Functions_Sum.FunctionDayNoSick,Functions_Sum.FunctionTime,Functions_Sum.FunctionSick');
    // SQL.Add  (',Functions_Sum.FunctionTime, Functions_Sum.Mounth');
    SQL.Add(',FormsInfo_Project.InfoID ,FormsInfo_Project.InfoName_L1,Interdicts.PersonelNo');
    SQL.Add(',FormsInfo_jobCode.InfoID ,FormsInfo_jobCode.InfoName_L1,FormsInfo_Group.InfoName_L1,FormsInfo_grade.InfoName_L1 ');

    SQL.Add(', EydiSanavat.Sanavat,EydiSanavat.Eydi,EydiSanavat.MaliatEydi,EydiSanavat.RewardTax');

    SQL.Add(', EydiSanavat.Reward ,C.ActRewardInlistSalary,FormsInfo_childNumber.InfoName_L1,EydiSanavat.ContainRewardTax');

    if chkOffTime.Checked then
      SQL.Add(',OffL.addtype');


    // SQL.Add(',FormsInfo_Office.InfoID,FormsInfo_Office.InfoName_L1');

    // ,balanceDecExt_1.BalanceAllDay

    SQL.Add(FunItemsGROUPBY);

    SQL.Add('ORDER BY FC.PersonelNO');

    SQL.Text := Format(SQL.Text, [FunItems4Sum]);
  end; // with
end;

procedure TSalaryList_insuranceF.FormCreate(Sender: TObject);
begin
  inherited;
  FAppini := ExtractFilePath(Application.ExeName) + 'AppData\' + Name +
    'LayoutGrid.ini';
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

procedure TSalaryList_insuranceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColumns;
end;

procedure TSalaryList_insuranceF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TSalaryList_insuranceF.lblFilterStringCaptionClick(Sender: TObject);
begin
  inherited;
  lblFilterStringCaption.Height := 13;
  lblFilterStringCaption.AutoSize := not lblFilterStringCaption.AutoSize;

end;

procedure TSalaryList_insuranceF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := appbank.CompanyName
end;

procedure TSalaryList_insuranceF.ppLblCompanyGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := appbank.CompanyName;
end;

procedure TSalaryList_insuranceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList_insuranceF.chkMounthClick(Sender: TObject);
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

procedure TSalaryList_insuranceF.chkProjectClick(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

procedure TSalaryList_insuranceF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(Dbgrid1);
end;

procedure TSalaryList_insuranceF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList_insuranceF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TSalaryList_insuranceF.actPrintExecute(Sender: TObject);
var
  ReportFooter: String;
begin
  inherited;
  try
    qrysalary.DisableControls;
    With DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT ReportFileName1 FROM Pay.FormTypes where FormType = 48 ';
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

procedure TSalaryList_insuranceF.NilDataFieldIfNotFind;
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

procedure TSalaryList_insuranceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList_insuranceF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList_insuranceF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList_insuranceF.actFilterExecute(Sender: TObject);
begin
  inherited;
  /// myParams.Clear;   پاک شدن انتخاب قبلی
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      // AddItem(DMf.adcSalary, 'FormType16', 'مرخصی پرسنل ', 'كد', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 16)',
      // 'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 16)');

      AddItemFilter(GetFilter, TLabelID);

      AddItemFilter(GetFilter, TFilterInterGroupID);

      AddItemFilter(GetFilter, TFilterProjectID);

      AddItemFilter(GetFilter, TEmployTypeID);

      AddItem(DMF.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');

      AddItemFilter(GetFilter, TPersonelNo);

      if not chkMounth.Checked then
      begin
        AddItem(DMF.adcSalary, 'Mounth', 'ماه', 'ماه', ftInteger, dvMinMax, '',
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

procedure TSalaryList_insuranceF.Updatefilter;
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
  fFormUniqueName := appbank.Name + appbank.Year.ToString + MonthNo.ToString +
    Self.Name;
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
    Fields.Clear;
    Parameters.ParamByName('MounthFrom').Value := MounthFrom;
    Parameters.ParamByName('MounthTo').Value := MounthTo;
    Parameters.ParamByName('Mounth1From').Value := MounthFrom;
    Parameters.ParamByName('Mounth1To').Value := MounthTo;

    if chkOffTime.Checked then
    begin
      Parameters.ParamByName('Mounth2From').Value := MounthFrom;
      Parameters.ParamByName('Mounth2To').Value := MounthTo;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
      Parameters.ParamByName('PersonelNoTo').Value :=
        GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    end;

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


    // Parameters.ParamByName('PersonelNoFROM').Value :=
    // GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    // Parameters.ParamByName('PersonelNoTo').Value :=
    // GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

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

    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);

    Active := True;
  end;
  //

  With qrysalary do
  begin
    Fieldbyname('_Row').DisplayLabel := 'رديف';
    Fieldbyname('PersonelNO').DisplayLabel := 'ش پرسنل';
    Fieldbyname('name_L1').DisplayLabel := 'نام';
    Fieldbyname('lastName_L1').DisplayLabel := 'نام خانوادگي';
    Fieldbyname('PersonName').DisplayLabel := 'نام پرسنل';

    Fieldbyname('childNumber').DisplayLabel := 'تعداد فرزند';

    Fieldbyname('ProjectCode').DisplayLabel := 'کد پروژه';
    Fieldbyname('ProjectName').DisplayLabel := 'عنوان پروژه';
    Fieldbyname('jobName').DisplayLabel := 'پست سازمانی';
    Fieldbyname('jobCode').DisplayLabel := 'کد پست سازمانی';

    Fieldbyname('GroupName').DisplayLabel := 'گروه حکم';

    Fieldbyname('SumWage').DisplayLabel := 'جمع حقوق و مزايا';

    Fieldbyname('SumWageSanavat').DisplayLabel :=
      'جمع حقوق و مزايا(عیدی/سنوات)';

    Fieldbyname('sum23Dec').DisplayLabel := 'بيمه كارفرما';
    Fieldbyname('ContainInsourance').DisplayLabel := 'مشمول بيمه';
//    Fieldbyname('ContainTax').DisplayLabel := 'A ';
    Fieldbyname('TaxValue').DisplayLabel := 'ماليات ';
    Fieldbyname('SumDec').DisplayLabel := 'جمع كسورات';
    // Fieldbyname('_Amount9').DisplayLabel := 'م.جمعه كاري تعطيلكاري';
    Fieldbyname('PayableSalary').DisplayLabel := 'حقوق قابل پرداخت';

    Fieldbyname('PayableSalarySanavat').DisplayLabel :=
      'حقوق قابل پرداخت(عیدی/سنوات)';

    Fieldbyname('IDNumber').DisplayLabel := 'ش ش';
    Fieldbyname('InsuranceNumber').DisplayLabel := 'شماره بيمه';
    Fieldbyname('AccountNumber').DisplayLabel := 'شماره حساب';
    Fieldbyname('StateName_L1').DisplayLabel := 'وضعيت';
    Fieldbyname('fatherName_L1').DisplayLabel := 'نام پدر';
    Fieldbyname('Amount').DisplayLabel := 'جمع عناوين حكم';
    Fieldbyname('Mobile').DisplayLabel := 'همراه';
    Fieldbyname('InterdictID').DisplayLabel := 'InterdictID';
    Fieldbyname('WageDay').DisplayLabel := 'حقوق روزانه';
    Fieldbyname('_FunctionDay').DisplayLabel := 'م.کارکرد';
    Fieldbyname('_FunctionTime').DisplayLabel := 'س.کارکرد';
    Fieldbyname('FunctionSick').DisplayLabel := 'بیماری';
    if chkOffTime.Checked then
      Fieldbyname('OffTime').DisplayLabel := 'مرخصی ماه';

    Fieldbyname('NationalID').DisplayLabel := 'کد ملی';

    Fieldbyname('Sanavat').DisplayLabel := 'سنوات';
    Fieldbyname('Eydi').DisplayLabel := 'عیدی';
    Fieldbyname('MaliatEydi').DisplayLabel := 'مالیات عیدی';

    Fieldbyname('Reward').DisplayLabel := 'پاداش';

    Fieldbyname('PersonelGrade').DisplayLabel := 'رتبه';

    // ,EydiSanavat.MaliatEydi
    // Fieldbyname('OfficeCode').DisplayLabel := 'کد واحد';
    // Fieldbyname('OfficeName').DisplayLabel := 'نام واحد';

    // Fieldbyname('BalanceAllDay').DisplayLabel := 'مانده ' +
    // qryFormInfoInfoName_L1.AsString;

  end;
  /// _Amount_Amount_Amount_Amount_Amount_Amount_Amount
  ///

  // var
  // cars: TStringList;
  // i: Integer;
  // begin
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

    // if Dbgrid1.Columns[i].Width > 100 then
    // Dbgrid1.Columns[i].Width := 100;
  end;
  // Dbgrid1.Columns[Dbgrid1.Columns.Count - 1].Width := 150;
  // Dbgrid1.SetFooter4Sum([]);
  Dbgrid1.ColorDBGrid;

  // TBCDField(qrysalary.Fieldbyname('BalanceAllDay')).Currency := False;

  CheckBox1Click(CheckBox1);
  LoadColumns;
  Dbgrid1.DoLoad('');

end;

procedure TSalaryList_insuranceF.SaveColumns;
begin
  Dbgrid1.SaveColumnsLayoutIni(FAppini, fFormUniqueName, True);
  SaveConfig(APPID, fFormUniqueName + 'Width', Width.ToString);
end;

procedure TSalaryList_insuranceF.LoadColumns;
begin
  Dbgrid1.RestoreColumnsLayoutIni(FAppini, fFormUniqueName,
    [crpColIndexEh, crpColWidthsEh, crpSortMarkerEh, crpColVisibleEh,
    crpDropDownRowsEh, crpDropDownWidthEh, crpRowPanelColPlacementEh]);
end;

procedure TSalaryList_insuranceF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  SaveColumns;
  MonthNo := (Sender as TToolButton).Tag;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryList_insuranceF.plblFilterStringCaptionGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := lblFilterStringCaption.Caption;
end;

procedure TSalaryList_insuranceF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Text);
end;

procedure TSalaryList_insuranceF.actFishExecute(Sender: TObject);
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

procedure TSalaryList_insuranceF.actFunctionShowExecute(Sender: TObject);
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

procedure TSalaryList_insuranceF.actManagGridColumnsExecute(Sender: TObject);
begin
  inherited;
  SaveColumns
end;

procedure TSalaryList_insuranceF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(Dbgrid1, 0, '');
end;

procedure TSalaryList_insuranceF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter;
end;

procedure TSalaryList_insuranceF.Dbgrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrysalary.Fieldbyname('PersonelNo'))
end;

procedure TSalaryList_insuranceF.qrysalaryAfterScroll(DataSet: TDataSet);
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

procedure TSalaryList_insuranceF.All_Amount_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('_Amount' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('_Amount' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList_insuranceF.CheckBox1Click(Sender: TObject);
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

procedure TSalaryList_insuranceF.ALLSetDataFieldGetText(Sender: TObject;
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

procedure TSalaryList_insuranceF.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Wage' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Wage' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList_insuranceF.ALL_AmountSetDataFieldGetText(Sender: TObject;
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

procedure TSalaryList_insuranceF.AllClick1Click(Sender: TObject);
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

procedure TSalaryList_insuranceF.AllD_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qrysalary.FindField('Dec' + Trim(Text)) <> nil then
    Text := qrysalary.Fieldbyname('Dec' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;

procedure TSalaryList_insuranceF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited; //

end;

procedure TSalaryList_insuranceF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList_insuranceF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

End.
