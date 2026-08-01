unit Pony2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, Grids, Vcl.DBGrids, SumDBGrid, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, Menus, ppParameter, ppTypes, ppDesignLayer, System.ImageList,
  System.Actions, filter_ADO, FilterClass_ADO, Vcl.ComCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TPony2F = class(Ttemplate2MDIF)
    sbtnPony: TSpeedButton;
    EdtPonyNo: TDBEdit;
    DBEdit10: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    qryPony: TADOQuery;
    Panel1: TPanel;
    Label4: TLabel;
    SBnPersonelNo: TSpeedButton;
    edtPersonelNo: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label9: TLabel;
    edtFunctionYearly: TDBEdit;
    qryPonyPonyID: TAutoIncField;
    qryPonyPonyNo: TIntegerField;
    qryPonyPonyDate: TStringField;
    qryPonyPersonelNo: TIntegerField;
    qryPonyAdjustDate: TStringField;
    qryPonyFunctionYearly: TFloatField;
    qryPonyMonths: TWordField;
    qryPonyCurrentMonthsPay: TBCDField;
    qryPonyUselessLeave: TFloatField;
    qryPonyUselessLeavePay: TBCDField;
    qryPonyAnnuityOldPay: TBCDField;
    qryPonyAnnuity: TFloatField;
    qryPonyAnnuityPay: TBCDField;
    qryPonyTide: TFloatField;
    qryPonyTidePay: TBCDField;
    qryPonyRemainLoan: TBCDField;
    qryPonyDebitCredit: TFMTBCDField;
    qryPonyNote: TStringField;
    srcPony: TDataSource;
    edtAdjustDate: TDBEdit;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn8: TBitBtn;
    BitBtn18: TBitBtn;
    Panel4: TPanel;
    Label3: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtUselessLeave: TDBEdit;
    edtUselessLeavePay: TDBEdit;
    edtAnnuityOldPay: TDBEdit;
    edtAnnuity: TDBEdit;
    edtAnnuityPay: TDBEdit;
    edtTide: TDBEdit;
    edtTidePay: TDBEdit;
    edtRemainLoan: TDBEdit;
    edtDebitCredit: TDBEdit;
    DBGrid1: TDBGrid;
    qryPeronal_Info: TADOQuery;
    qryPony_PrsnName: TStringField;
    actCurrentMonthsPay: TAction;
    actUselessLeave: TAction;
    actUselessLeavePay: TAction;
    SpeedButton1: TSpeedButton;
    actFunctionYearly: TAction;
    SpeedButton4: TSpeedButton;
    actTidePay: TAction;
    SpeedButton5: TSpeedButton;
    actAnnuityPay: TAction;
    SpeedButton6: TSpeedButton;
    actRemainLoan: TAction;
    SpeedButton7: TSpeedButton;
    actAnnuityOldPay: TAction;
    SpeedButton8: TSpeedButton;
    Panel5: TPanel;
    edtSalarySum: TDBEdit;
    Label18: TLabel;
    actAll: TAction;
    SumGrid1: TSumGrid;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn11: TBitBtn;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    lbl__sum: TLabel;
    qryPony_fatherName: TStringField;
    qryPony_IDNumber: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppDetailBand1: TppDetailBand;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
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
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine12: TppLine;
    ppLabel28: TppLabel;
    ppLine13: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText1: TppDBText;
    ppLabel48: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel49: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText18: TppDBText;
    ppDBText6: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppLblCompanyName: TppLabel;
    PopupMenu1: TPopupMenu;
    Pony: TMenuItem;
    Pony2: TMenuItem;
    All: TMenuItem;
    mnuNAllRecords: TMenuItem;
    qryPony_employDate: TStringField;
    qryPony_MarriageName: TStringField;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    edtOfficeName: TDBEdit;
    Label10: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    qryPonyOfficeName: TStringField;
    qry4Print: TADOQuery;
    pln4Print: TppDBPipeline;
    pfld1: TppField;
    pfld2: TppField;
    pfld3: TppField;
    pfld4: TppField;
    pfld5: TppField;
    pfld6: TppField;
    pfld7: TppField;
    pfld8: TppField;
    pfld9: TppField;
    pfld10: TppField;
    pfld11: TppField;
    pfld12: TppField;
    pfld13: TppField;
    pfld14: TppField;
    pfld15: TppField;
    pfld16: TppField;
    pfld17: TppField;
    pfld18: TppField;
    pfld19: TppField;
    pfld20: TppField;
    pfld21: TppField;
    pfld22: TppField;
    pfld23: TppField;
    pfld24: TppField;
    pfld25: TppField;
    src4Print: TDataSource;
    btnCreditDebit: TSpeedButton;
    actDebitCredit: TAction;
    qryPonyTax: TBCDField;
    btnTax: TSpeedButton;
    edtTax: TDBEdit;
    Label21: TLabel;
    actTax: TAction;
    srcPonyDebitCredits: TDataSource;
    plnPonyDebitCredits: TppDBPipeline;
    qryPonyDebitCredits: TADOQuery;
    srcInterdictList: TDataSource;
    qryInterdictList: TADOQuery;
    plnInterdictList: TppDBPipeline;
    ppDBPipeline2ppField1: TppField;
    ppDBPipeline2ppField2: TppField;
    ppDBPipeline2ppField3: TppField;
    qryPonyDebit: TBCDField;
    qryPonyCredit: TFMTBCDField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    pnlFun: TPanel;
    Panel8: TPanel;
    SpeedButton3: TSpeedButton;
    qryPonyExtra: TADOQuery;
    srcPonyExtra: TDataSource;
    qryRptComprasion: TADOQuery;
    srcRptComprasion: TDataSource;
    qryPonyDebitCreditsPonyNote: TWideStringField;
    qryPonyDebitCreditsAmount: TBCDField;
    qryPonyDebitCreditsBes: TBCDField;
    qryPonyDebitCreditsBed: TBCDField;
    qryRptComprasionMounth: TFloatField;
    qryRptComprasionSumFunctionDay: TFloatField;
    qryRptComprasionPrice: TBCDField;
    grdPonyDebitCredits: TCedarDbgrid;
    grdRptComprasion: TCedarDbgrid;
    grdPonyExtra: TCedarDbgrid;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    qryPonyExtraCode: TIntegerField;
    qryPonyExtraCaptin: TStringField;
    qryPonyExtraAmount: TBCDField;
    DBNavigator1: TDBNavigator;
    edtSalaryNet: TDBEdit;
    Label2: TLabel;
    edtSalaryNonNet: TDBEdit;
    Label22: TLabel;
    qryPonySalaryNet: TBCDField;
    qryPonySalaryNonNet: TBCDField;
    plnRptComprasion: TppDBPipeline;
    plnPonyExtra: TppDBPipeline;
    plnRptComprasionSum: TppDBPipeline;
    ADOCmdUpDate: TADOCommand;
    Label1: TLabel;
    edtSalaryPureSum: TDBEdit;
    qryPonySalarySum: TBCDField;
    qryPonySalaryPureSum: TBCDField;
    BitBtn1: TBitBtn;
    qryPonyPArchiveDate: TStringField;
    qryPonyPArchiveID: TIntegerField;
    actArchiveID: TAction;
    BitBtn7: TBitBtn;
    actArchiveIDClean: TAction;
    Panel6: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    edtOrderDate: TDBEdit;
    edtRealDate: TDBEdit;
    qryPonyOrderDate: TStringField;
    qryPonyRealDate: TStringField;
    qryPonyYearID: TIntegerField;
    procedure srcPonyStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SBnPersonelNoClick(Sender: TObject);
    procedure sbtnPonyClick(Sender: TObject);
    procedure qryPonyAfterInsert(DataSet: TDataSet);
    procedure qryPonyAdjustDateChange(Sender: TField);
    procedure qryPonyAfterPost(DataSet: TDataSet);
    procedure qryPonyBeforeDelete(DataSet: TDataSet);
    procedure actCurrentMonthsPayExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actUselessLeaveExecute(Sender: TObject);
    procedure actFunctionYearlyExecute(Sender: TObject);
    procedure actTidePayExecute(Sender: TObject);
    procedure actAnnuityPayExecute(Sender: TObject);
    procedure actRemainLoanExecute(Sender: TObject);
    procedure actAnnuityOldPayExecute(Sender: TObject);
    procedure actUselessLeavePayExecute(Sender: TObject);
    procedure actAllExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure AllClick(Sender: TObject);
    procedure qryPonyAfterScroll(DataSet: TDataSet);
    procedure mnuNAllRecordsClick(Sender: TObject);
    procedure actDebitCreditExecute(Sender: TObject);
    procedure actTaxExecute(Sender: TObject);
    procedure qryPonyBeforePost(DataSet: TDataSet);
    procedure qryPonySalaryNetChange(Sender: TField);
    procedure qryPonyAfterOpen(DataSet: TDataSet);
    procedure qryPonyBeforeEdit(DataSet: TDataSet);
    procedure actArchiveIDExecute(Sender: TObject);
    procedure actArchiveIDCleanExecute(Sender: TObject);
  private
    EmployTypeIDs: string;
    function GetPersonelDecExt(fName: String): Currency;
    function CalcTax(ContainTax: Currency): Currency;
    procedure Init;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pony2F: TPony2F;

implementation

uses DM, searchCode_ADO, StrUtils, GlobalPro, mmessage, Math, search2,
  sort2, SalaryFunctions, selected, PonyDebitCredit;

{$R *.dfm}

procedure TPony2F.srcPonyStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryPony.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
  SBnPersonelNo.Enabled := okPanel.Visible;
  sbtnPony.Visible := not okPanel.Visible;
  actCurrentMonthsPay.Visible := okPanel.Visible;
  actUselessLeave.Visible := okPanel.Visible;
  actUselessLeavePay.Visible := okPanel.Visible;
  actFunctionYearly.Visible := okPanel.Visible;
  actTidePay.Visible := okPanel.Visible;
  actAnnuityPay.Visible := okPanel.Visible;
  actRemainLoan.Visible := okPanel.Visible;
  actAnnuityOldPay.Visible := okPanel.Visible;
  actDebitCredit.Visible := okPanel.Visible;
  actAll.Visible := okPanel.Visible;
  actTax.Visible := okPanel.Visible;

end;

procedure TPony2F.FormCreate(Sender: TObject);
begin
  inherited;
  Init;
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DECLARE @EmployTypeID varchar(1000)=''0''';
    SQL.Add('SELECT @EmployTypeID=@EmployTypeID+'',''+LTRIM( FormInfoID) FROM Pay.FormsInfo WHERE (FormType = 14)');
    SQL.Add('SELECT @EmployTypeID');
    Active := True;
    EmployTypeIDs := Fields[0].AsString;
    Active := False;
  end;
  SetLookUpCash(qryPony);
  grdRptComprasion.SetFooter4Sum(['Mounth']);
  grdPonyDebitCredits.SetFooter4Sum([]);
  grdPonyExtra.SetFooter4Sum(['Code']);
  plnRptComprasionSum.DataSource := grdRptComprasion.srcSum;
  qryPony.Parameters.ParamByName('YearID').Value := APPBank.Year;
  qryPony.Active := True;
  qryPony.Last;

end;

procedure TPony2F.Init;
begin
  with ADOCmdUpDate do
    try

      commandtext := 'CREATE FUNCTION Pay.PonyExtra1 ( @PersonelNO int )' +
        ' RETURNS table AS' + ' Return (' + #13#10 +
        '---قابل ویرایش توسط پشتیبان SELECT 1 AS Code,''پاداش'' as Captin, SUM(Amount) AS Amount'
        + '-- FROM [BPMS_Test2].dbo.Forms' +
        '-- WHERE (FormType = 91) AND (TopicCode = 1453) AND (CustomerID2 = @PersonelNO )'
        + #13#10 +
        ' SELECT 1 AS Code,''پاداش'' as Captin, CAST(0 AS MONEY)  Amount)';
      Execute;
      commandtext := ' CREATE FUNCTION Pay.PonyExtra2 ( @PersonelNO int )' +
        ' RETURNS table AS' + ' Return (' + #13#10 +
        ' --قابل ویرایش توسط پشتیبان  SELECT 2 AS Code,''پورسانت'' as Captin, SUM(Amount) AS Amount'
        + ' --FROM [BPMS_Test2].dbo.Forms' +
        ' --WHERE (FormType = 91) AND (TopicCode = 1453) AND (CustomerID2 = @PersonelNO )'
        + #13#10 +
        ' SELECT 1 AS Code,''پاداش'' as Captin, CAST(0 AS MONEY)  Amount)';
      Execute;

      commandtext := ' CREATE FUNCTION Pay.PonyExtra ( @PersonelNO int )' +
        ' RETURNS table AS' + ' Return (' + ' ' + #13#10 +
        '--قابل ویرایش توسط پشتیبان' + #13#10 +
        ' SELECT * From Pay.PonyExtra1 ( @PersonelNO )' + ' UNION ALL' +
        ' SELECT * From Pay.PonyExtra2 ( @PersonelNO )' + ' ' + ' )';

      Execute;

      commandtext := ' CREATE FUNCTION Pay.PonyInterdictList ( @PersonelNO int )' +
        ' RETURNS table AS' + ' Return (' + #13#10 +
        '--قابل ویرایش توسط پشتیبان' + #13#10 +
        ' SELECT TOP(100) percent Interdicts.InterdictID, Interdicts.InterdictNo, Interdicts.InterdictDate, Interdicts.subcompanyCode,'
        + ' FormsInfo_2.InfoName_L1 AS JobName_L1,' +
        ' FormsInfo_2.InfoName_L2 AS JobName_L2, FormsInfo_3.InfoName_L1 AS grade_L1, FormsInfo_3.InfoName_L2'
        + ' AS grade_L2,' +
        ' FormsInfo_4.InfoName_L1 AS jobCity_L1, FormsInfo_4.InfoName_L2 AS jobCity_L2, FormsInfo_5.InfoName_L1 AS'
        + ' InterdicType_L1,' +
        ' FormsInfo_5.InfoName_L2 AS InterdicType_L2, Interdicts.InterdicStartDate, Interdicts.employDaytime,'
        + ' Interdicts.AccTopicCode, Interdicts.AccDetailCode,' +
        ' Interdicts.AccCTopicCode, Interdicts.AccCTopicCode2, Interdicts.State, Interdicts.UserID, FormsInfo_5.InfoID AS'
        + ' InterdicTypeID, FormsInfo_1.InfoID AS OfficeID,' +
        ' Interdicts.PersonelNo, FormsInfo_1.InfoName_L1 AS OfficeName_L1, FormsInfo_1.InfoName_L2 AS'
        + ' OfficeName_L2, Interdicts.InterdicEndDate, Interdicts.InterdicType,'
        + ' SUM(InterdictItems.Amount) AS InterdictItemsAmount, InsuranceCONSTinfo.insurancename,'
        + ' FormsInfo_Tax.InfoName_L1 AS Tax' +
        ' ,SUM(case when InterdictItems.SalaryID in(31) then InterdictItems.Amount else'
        + ' 0 end) Amount31' +
        ' ,SUM(case when InterdictItems.SalaryID in(31) then InterdictItems.Amount else'
        + ' 0 end) Amount310' + ' FROM Pay.Interdicts INNER JOIN' +
        ' Pay.FormsInfo AS FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID INNER JOIN'
        + ' Pay.FormsInfo AS FormsInfo_2 ON Pay.Interdicts.jobCode = FormsInfo_2.FormInfoID INNER JOIN'
        + ' Pay.FormsInfo AS FormsInfo_3 ON Pay.Interdicts.grade = FormsInfo_3.FormInfoID INNER JOIN'
        + ' Pay.FormsInfo AS FormsInfo_4 ON Pay.Interdicts.jobCity = FormsInfo_4.FormInfoID INNER JOIN'
        + ' Pay.FormsInfo AS FormsInfo_5 ON Pay.Interdicts.EmployTypeID = FormsInfo_5.FormInfoID LEFT OUTER JOIN'
        + ' Pay.InterdictItems ON Pay.Interdicts.InterdictID = InterdictItems.InterdictID LEFT OUTER JOIN'
        + ' Pay.InsuranceCONSTinfo ON Pay.Interdicts.insuranceID = InsuranceCONSTinfo.insuranceNo LEFT OUTER JOIN'
        + ' Pay.FormsInfo AS FormsInfo_Tax ON Pay.Interdicts.TaxCalculationType = FormsInfo_Tax.FormInfoID'
        + ' WHERE (Interdicts.PersonelNo = @PersonelNO )' +
        ' GROUP BY Interdicts.InterdictID, Interdicts.InterdictNo, Interdicts.InterdictDate, Interdicts.subcompanyCode,'
        + ' FormsInfo_2.InfoName_L1, FormsInfo_2.InfoName_L2,' +
        ' FormsInfo_3.InfoName_L1, FormsInfo_3.InfoName_L2, FormsInfo_4.InfoName_L1, FormsInfo_4.InfoName_L2,'
        + ' FormsInfo_5.InfoName_L1, FormsInfo_5.InfoName_L2,' +
        ' Interdicts.InterdicStartDate, Interdicts.employDaytime, Interdicts.AccTopicCode, Interdicts.AccDetailCode,'
        + ' Interdicts.AccCTopicCode, Interdicts.AccCTopicCode2,' +
        ' Interdicts.State, Interdicts.UserID, FormsInfo_5.InfoID, FormsInfo_1.InfoID, Interdicts.PersonelNo,'
        + ' FormsInfo_1.InfoName_L1, FormsInfo_1.InfoName_L2,' +
        ' Interdicts.InterdicEndDate, Interdicts.InterdicType, InsuranceCONSTinfo.insurancename,'
        + ' FormsInfo_Tax.InfoName_L1' +
        ' ORDER BY Interdicts.InterdictDate desc' + ' )';
      Execute;

    except
      on E: Exception do
    end;

end;

procedure TPony2F.SBnPersonelNoClick(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  s: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;
  TxtL1_L2 := ' name_L1, lastName_L1,  fatherName_L1';
  if optP.primaryLanguage <> 0 then
    TxtL1_L2 :=
      ' name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2';
  Txt := 'SELECT  PersonelNo,' + TxtL1_L2 + ', NationalID, IDNumber ' +
    'FROM Pay.PersonelInfo ';
  // Txt:=Txt+IfThen(FilterStore,'AND (Recipts.StoreID BETWEEN '+IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');
  if optP.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام', 'Name', ' نام خانوادگي', 'lastName', 'نام پدر ',
      'fatherName', 'شماره شناسنامه', 'كد ملي'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام ', ' نام خانوادگي', 'نام پدر', 'شماره شناسنامه',
      'كد ملي'], Results, [10, 100, 100, 100, 100, 100], alLeft);

  if s then
  begin
    if not(qryPony.State in dsEditModes) then
      exit;
    qryPony['PersonelNo'] := Results[0];
  end; // if
end;

procedure TPony2F.sbtnPonyClick(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  s: Boolean;
  Results: array [0 .. 11] of String;
begin
  inherited;
  TxtL1_L2 :=
    'PersonelInfo.name_L1,PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1,';
  if optP.primaryLanguage <> 0 then
    TxtL1_L2 :=
      'PersonelInfo.name_L1, PersonelInfo.name_L2, PersonelInfo.lastName_L1, PersonelInfo.lastName_L2, PersonelInfo.fatherName_L1, PersonelInfo.fatherName_L2, ';
  Txt := 'SELECT Pony.PonyID,Pony.PonyNo, Pony.PonyDate, Pony.PersonelNo,  ' +
    TxtL1_L2 + 'PersonelInfo.IDNumber, PersonelInfo.NationalID ' +
    'FROM Pay.Pony INNER JOIN ' +
    'Pay.PersonelInfo ON Pony.PersonelNo = PersonelInfo.PersonelNo ';
  if optP.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMf.adcSalary, Caption, Txt,
      ['', 'شماره حكم', 'تاريخ حكم', 'شماره پرسنل', 'نام زبان1', 'نام زبان2',
      ' نام خانوادگي زبان1', 'نام خانوادگي زبان2', 'نام پدر زبان1',
      'نام پدر زبان', 'شماره شناسنامه', 'كد ملي'], Results,
      [0, 10, 100, 100, 100, 100, 100, 100, 100, 100, 100, 10, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMf.adcSalary, Caption, Txt,
      ['', 'شماره حكم', 'تاريخ حكم', 'شماره پرسنل', 'نام ', ' نام خانوادگي ',
      'نام پدر', 'شماره شناسنامه', 'كد ملي'], Results,
      [0, 10, 50, 80, 100, 100, 100, 100, 100, 100], alLeft);

  if s then
    qryPony.Locate('PonyID', Results[0], []);
end;

procedure TPony2F.qryPonyAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('PonyNo').AsInteger :=
    GetANewCode('', 'SELECT MAX(CONVERT(float, PonyNo)) AS Expr1 FROM Pay.Pony',
    'PonyNo');
  DataSet.FieldByName('PonyDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('AdjustDate').AsString := var_glb_CurrentDate;
  EdtPonyNo.SetFocus
end;

procedure TPony2F.qryPonyAfterOpen(DataSet: TDataSet);
begin
  inherited;
  lbl__sum.Caption := 'جمع بحروف: ' +
    num2alphabet(qryPonySalaryPureSum.AsLargeInt) + ' ريال';

end;

procedure TPony2F.qryPonyAdjustDateChange(Sender: TField);
begin
  inherited;
  if qryPony.FieldByName('Months').IsNull then
    qryPony.FieldByName('Months').AsString := MidStr(Sender.AsString, 6, 2)
end;

procedure TPony2F.qryPonyAfterPost(DataSet: TDataSet);
var
  PonyID: Integer;
begin
  inherited;
  PonyID := qryPonyPonyID.AsInteger;
  qryPony.Requery([]);
  qryPony.Locate('PonyID', PonyID, []);
  BigMessage('ثبــت شد', 1)
end;

procedure TPony2F.qryPonyBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if qryPonyPArchiveID.AsInteger > 0 then
  begin
    Warn('به علت بایگانی قابل حذف نیست');
    Abort;
  end;
  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort
end;

procedure TPony2F.qryPonyBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryPonyPArchiveID.AsInteger > 0 then
  begin
    Warn('به علت بایگانی قابل ویرایش نیست');
    Abort;
  end;
end;

procedure TPony2F.qryPonyBeforePost(DataSet: TDataSet);
var
  SumFunctionDay: Real48;
  c1, c2: Largeint;
  ExtraAmount: Largeint;
begin
  inherited;
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT SUM(SumFunctionDay) AS SumFunctionDay';
    SQL.Add('FROM (SELECT SUM(FunctionDay) AS SumFunctionDay FROM Pay.Functions');
    SQL.Add('WHERE (PersonelNo = :PersonelNo1 )');
    SQL.Add('AND (YearID = ' + APPBank.Year.ToString + ') ');
    SQL.Add('AND (Years = ' + optP.Year + ')');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT - FunctionYearly AS FunctionYearly');
    SQL.Add('FROM Pay.Pony');
    SQL.Add('WHERE (PonyID <> :PonyID ) AND (PersonelNo = :PersonelNo2 )');
    SQL.Add('AND (YearID = :YearIDP  )');
    SQL.Add(') AS abcd');
    Parameters.ParamByName('YearIDP').Value := APPBank.Year;
    Parameters.ParamByName('PersonelNo1').Value := qryPonyPersonelNo.AsInteger;
    Parameters.ParamByName('PersonelNo2').Value := qryPonyPersonelNo.AsInteger;
    Parameters.ParamByName('PonyID').Value := qryPonyPonyID.AsInteger;
    Active := True;
    SumFunctionDay := FieldByName('SumFunctionDay').AsFloat;
    Active := False;
    if qryPony.FieldByName('FunctionYearly').AsFloat > SumFunctionDay then
    begin
      Warn('كاركردسال‏جاري بیشتر از مقدار ثبت شده در کارکرد نمی تواند باشد');
      Abort;
    end;
  end;

  ExtraAmount := Round(CalcSumFileds(qryPonyExtraAmount));

  c1 := qryPonyCurrentMonthsPay.AsLargeInt + qryPonyUselessLeavePay.AsLargeInt +
    qryPonyAnnuityOldPay.AsLargeInt + qryPonyAnnuityPay.AsLargeInt +
    qryPonyTidePay.AsLargeInt + qryPonyDebitCredit.AsLargeInt;

  qryPonySalarySum.AsCurrency := c1;
  c2 := c1 - qryPonyRemainLoan.AsLargeInt - qryPonyTax.AsLargeInt - ExtraAmount;
  qryPonySalaryPureSum.AsLargeInt := c2;

  qryPonySalaryNonNet.AsCurrency := qryPonySalaryPureSum.AsCurrency -
    qryPonySalaryNet.AsCurrency;

end;

procedure TPony2F.actCurrentMonthsPayExecute(Sender: TObject);
begin
  inherited;
  qryPony.FieldByName('CurrentMonthsPay').AsVariant :=
    CalcSumFileds(qryRptComprasionPrice);
end;

procedure TPony2F.actDebitCreditExecute(Sender: TObject);
begin
  inherited;
  if qryPony.State in [dsInsert] then
  begin
    qryPony.Post;
    qryPony.Edit;
  end;
  qryPonyDebitCredit.AsCurrency := PonyDebitCreditF.Enter
    (qryPonyPonyID.AsInteger, qryPonyPersonelNo.AsInteger,
    qryPonyDebitCredit.AsCurrency);
end;

procedure TPony2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, True);
end;

procedure TPony2F.actUselessLeaveExecute(Sender: TObject);
begin
  inherited;
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := '';
    SQL.Add('DECLARE @Amount float');
    SQL.Add('DECLARE @MounthFrom Bigint');
    SQL.Add('DECLARE @MounthTo Bigint');
    SQL.Add('DECLARE @PersonelNo Bigint');
    SQL.Add('DECLARE @FormInfoID Bigint');
    SQL.Add('DECLARE @StandardDays float');
    SQL.Add('DECLARE @StandardTimes float');
    SQL.Add('');
    SQL.Add('SELECT @FormInfoID= FormInfoID, @Amount=Amount, @StandardDays=StandardDays, @StandardTimes=StandardTimes');
    SQL.Add('FROM Pay.FormsInfo');
    SQL.Add('WHERE (InfoID = 1) AND (FormType = 16)');
    SQL.Add('');
    SQL.Add('SET @MounthFrom=0');
    SQL.Add('SET @MounthTo=12');
    SQL.Add('SET @PersonelNo= :PersonelNo1 ');

    SQL.Add('SELECT SUM(UselessLeave) AS UselessLeave  FROM ( ');
    // SQL.Add('SELECT SUM(RemainDay) AS UselessLeave');
    // SQL.Add('FROM Pay.GETOffTimeInFish(12, 1, 1, :PersonelNo1 , 3) AS GETOffTimeInFish_1');

    SQL.Add('SELECT BalanceAllDay AS UselessLeave ');
    SQL.Add('From Pay.balanceDecExt(' + APPBank.Year.ToString + ',' +
      APPBank.Year.ToString +
      ',@MounthFrom,@MounthTo, @PersonelNo , @PersonelNo , @FormInfoID');
    SQL.Add(', @StandardDays, @StandardTimes , -999 , 999999999 , -999 , 999999999 , -999 , 999999999 ) AS balanceDecExt_1');



    SQL.Add('UNION ALL');
    SQL.Add('SELECT - UselessLeave AS UselessLeave');
    SQL.Add('FROM Pay.Pony');
    SQL.Add('WHERE (PonyID <> :PonyID ) AND (PersonelNo = :PersonelNo2 )');
    SQL.Add('AND (YearID = :YearIDP  )');
    SQL.Add(') AS abcd');
    Parameters.ParamByName('YearIDP').Value := APPBank.Year;
    Parameters.ParamByName('PersonelNo1').Value := qryPonyPersonelNo.AsInteger;
    Parameters.ParamByName('PersonelNo2').Value := qryPonyPersonelNo.AsInteger;
    Parameters.ParamByName('PonyID').Value := qryPonyPonyID.AsInteger;
    Active := True;
    qryPony.FieldByName('UselessLeave').AsFloat := Fields[0].AsFloat;
    Active := False;
  end;
end;

procedure TPony2F.actFunctionYearlyExecute(Sender: TObject);
begin
  inherited;
  // With TfilterF.Create2(Self, myParams) do
  begin
    try
      // AddItem(DMf.adcSalary, 'Mounth', 'ماه', 'ماه', ftInteger, dvMinMax, '',
      // '', ciLookup,
      // 'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 17)',
      // 'SELECT MIN(Mounth), MAX(Mounth) FROM Pay.Functions');

      // if ShowModal = mrOk then
      begin
        // GetFilterString;
        With DMf.qryTmpTmpp do
        begin
          Active := False;
          // SQL.Text :=
          // 'SELECT SUM(FunctionDay) AS SumFunctionDay FROM Pay.Functions';
          // SQL.Add('WHERE (PersonelNo = ' + qryPony.FieldByName('PersonelNO')
          // .AsString + ')  ');
          // SQL.Add('AND (Mounth BETWEEN :MounthFrom AND :MounthTo)');

          SQL.Text := 'SELECT SUM(SumFunctionDay) AS SumFunctionDay';
          SQL.Add('FROM (SELECT SUM(FunctionDay) AS SumFunctionDay FROM Pay.Functions');
          SQL.Add('WHERE (PersonelNo = :PersonelNo1 )');
          SQL.Add('AND (Mounth BETWEEN :MounthFrom AND :MounthTo)');
          SQL.Add('AND (YearID = ' + APPBank.Year.ToString + ') ');
          SQL.Add('AND (Years = ' + optP.Year + ')');
          SQL.Add('UNION ALL');
          SQL.Add('SELECT - FunctionYearly AS FunctionYearly');
          SQL.Add('FROM Pay.Pony');
          SQL.Add('WHERE (PonyID <> :PonyID ) AND (PersonelNo = :PersonelNo2 )');
          SQL.Add('AND (YearID = :YearIDP  )');
          SQL.Add(') AS abcd');
          Parameters.ParamByName('YearIDP').Value := APPBank.Year;

          Parameters.ParamByName('PersonelNo1').Value :=
            qryPonyPersonelNo.AsInteger;
          Parameters.ParamByName('PersonelNo2').Value :=
            qryPonyPersonelNo.AsInteger;
          Parameters.ParamByName('PonyID').Value := qryPonyPonyID.AsInteger;

          Parameters.ParamByName('MounthFrom').Value := 1;
          // GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
          Parameters.ParamByName('MounthTo').Value := 12;
          // GetcTo(myParams.ParamValues['Mounth'], ftInteger);
          Active := True;
          qryPony.FieldByName('FunctionYearly').AsFloat :=
            FieldByName('SumFunctionDay').AsFloat;
          qryPony.FieldByName('Annuity').AsFloat :=
            FieldByName('SumFunctionDay').AsFloat;
          qryPony.FieldByName('Tide').AsFloat :=
            FieldByName('SumFunctionDay').AsFloat;
          Active := False;
        end;

      end;
    finally
      // Free;
    end;
  end;

end;

procedure TPony2F.actArchiveIDCleanExecute(Sender: TObject);
var
  PonyID: Integer;
begin
  inherited;
  if get_response('آيا براي حذف بايگاني اطلاعات مطمئن هستيد؟') <> mrYes then
    exit;

  PonyID := qryPonyPonyID.AsInteger;
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.PonyArchives';
    SQL.Add('WHERE PonyID = :PonyID ');
    Parameters.ParamByName('PonyID').Value := PonyID;
    BigMessage(IntToStr(ExecSQL) + ' ركورد حذف شد.‏', 1);

    SQL.Text := 'UPDATE Pay.Pony ';
    SQL.Add('SET PArchiveDate = NULL,PArchiveID = NULL ');
    SQL.Add('WHERE PonyID = :PonyID ');
    Parameters.ParamByName('PonyID').Value := PonyID;
    BigMessage(IntToStr(ExecSQL) + ' ركورد ثبت شد.‏', 1);
    qryPony.Requery();
    qryPony.Locate('PonyID', PonyID, [])
  end;
end;

procedure TPony2F.actArchiveIDExecute(Sender: TObject);
var
  MaxArchive, PonyID: Integer;
begin
  inherited;
  if get_response('آيا براي بايگاني كردن اطلاعات مطمئن هستيد؟' + #13#10 +
    'بعد از بایگانی ویرایش امکان پذیر نیست') <> mrYes then
    exit;

  PonyID := qryPonyPonyID.AsInteger;
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT PonyID, PonyKind,';
    SQL.Add('ExtraCode, ExtraCaptin, ExtraAmount,');
    SQL.Add('Mounth, SumFunctionDay, Price');
    SQL.Add('FROM Pay.PonyArchives');
    SQL.Add('WHERE (PonyID = 0)');
    Active := True;
    qryPonyExtra.First;
    while not qryPonyExtra.Eof do
    begin
      Insert;
      FieldByName('PonyID').AsInteger := PonyID;
      FieldByName('PonyKind').AsInteger := 1;
      FieldByName('ExtraCode').AsInteger := qryPonyExtraCode.AsInteger;
      FieldByName('ExtraCaptin').AsString := qryPonyExtraCaptin.AsString;
      FieldByName('ExtraAmount').AsCurrency := qryPonyExtraAmount.AsCurrency;
      Post;
      qryPonyExtra.Next;
    end;
    qryRptComprasion.First;
    while not qryRptComprasion.Eof do
    begin
      Insert;
      FieldByName('PonyID').AsInteger := PonyID;
      FieldByName('PonyKind').AsInteger := 2;
      FieldByName('Mounth').AsInteger := qryRptComprasionMounth.AsInteger;
      FieldByName('SumFunctionDay').AsString :=
        qryRptComprasionSumFunctionDay.AsString;
      FieldByName('Price').AsCurrency := qryRptComprasionPrice.AsCurrency;
      Post;
      qryRptComprasion.Next;
    end;

    Active := False;
    SQL.Text := 'SELECT MAX(PArchiveID) as MaxArchive FROM Pay.Pony ';
    Active := True;
    MaxArchive := FieldByName('MaxArchive').AsInteger;
    Active := False;
    SQL.Text := 'UPDATE Pay.Pony ';
    SQL.Add('SET PArchiveDate = :ArchiveDate,PArchiveID = :ArchiveID');
    SQL.Add('WHERE PonyID = :PonyID ');
    Parameters.ParamByName('PonyID').Value := PonyID;
    Parameters.ParamByName('ArchiveDate').Value := var_glb_CurrentDate;
    Parameters.ParamByName('ArchiveID').Value := MaxArchive + 1;
    BigMessage(IntToStr(ExecSQL) + ' ركورد ثبت شد.‏', 1);
    qryPony.Requery();
    qryPony.Locate('PonyID', PonyID, [])
  end;

end;

function TPony2F.CalcTax(ContainTax: Currency): Currency;
var
  AdjustDate: string;
begin
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT TaxValue';
    SQL.Add('FROM Pay.PonyTax(:Mounth,:MounthOneMore, :Year, :YearMounth,');
    SQL.Add(' :PersonelNoFrom, :PersonelNoTo, :ContainTax) AS PonyTax_1');

    Parameters.ParamByName('Mounth').Value := qryPony.FieldByName('Months')
      .AsInteger;

    Parameters.ParamByName('MounthOneMore').Value :=
      qryPony.FieldByName('Months').AsInteger + 1;

    AdjustDate := qryPonyAdjustDate.AsString;

    Parameters.ParamByName('Year').Value :=
      MidStr(AdjustDate, 1, Pos('/', AdjustDate) - 1);

    Parameters.ParamByName('YearMounth').Value :=
      LeftStr(qryPony.FieldByName('AdjustDate').AsString, 7);

    Parameters.ParamByName('PersonelNoFrom').Value :=
      qryPony.FieldByName('PersonelNO').AsInteger;
    Parameters.ParamByName('PersonelNoTo').Value :=
      qryPony.FieldByName('PersonelNO').AsInteger;

    Parameters.ParamByName('ContainTax').Value := ContainTax;

    Active := True;
    Result := FieldByName('TaxValue').AsCurrency;
    Active := False;
  end;

end;

procedure TPony2F.actTaxExecute(Sender: TObject);
var
  ContainTax: Currency;
begin
  inherited;
  ContainTax := 0;
  if optP.PonyTaxAble in [1, 3] then
    ContainTax := CalcTax(qryPonyUselessLeavePay.AsCurrency);
  if optP.PonyTaxAble in [2, 3] then
    ContainTax := ContainTax + CalcTax(qryPonyAnnuityPay.AsCurrency);

  qryPonyTax.AsCurrency := ContainTax;

end;

procedure TPony2F.actTidePayExecute(Sender: TObject);
begin
  inherited;
  qryPony.FieldByName('TidePay').AsCurrency := GetPersonelDecExt('BonusPayAble')
end;

function TPony2F.GetPersonelDecExt;
var
  FormInfoID: Integer;
begin
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT FormInfoID FROM Pay.FormsInfo WHERE (FormType = 59)';
    Active := True;
    FormInfoID := FieldByName('FormInfoID').AsInteger;
    Active := False;
    SQL.Text := 'SELECT SUM(EmployeeAmount - PaymentLoan ) as BonusPayAble';
    SQL.Add(',SUM(EmployerAmount) as EmployerAmount ');
    SQL.Add('FROM Pay.PersonelDecExt');
    SQL.Add('WHERE (FormInfoID = :FormInfoID )');
    SQL.Add('And (PersonelNo = :PersonelNoFrom  )');
    SQL.Add('And (EndDate = :EndDate  )');
    Parameters.ParamByName('EndDate').Value := qryPonyPonyDate.AsString;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      qryPony.FieldByName('PersonelNO').AsInteger;
    Parameters.ParamByName('FormInfoID').Value := FormInfoID;
    Active := True;
    Result := FieldByName(fName).AsCurrency;
    Active := False;
  end;
end;

procedure TPony2F.actAnnuityPayExecute(Sender: TObject);
var
  FormInfoID: Integer;
begin
  inherited;
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'select  FormInfoID  FROM Pay.FormsInfo where formtype=59 ';
    Active := True;
    FormInfoID := FieldByName('FormInfoID').AsInteger;
    Active := False;
    // + ISNULL(FirstAnnuity.EmployeeAmount, 0)  آقاي عربي
    SQL.Text :=
      'SELECT ISNULL(NowYearAnnuity.EmployerAmount, 0)  AS SumAnnuityPrice';
    SQL.Add('FROM (SELECT PersonelDecExt_1.PersonelNo, SUM(PersonelDecExt_1.DayQuntity) AS DayQuntity, SUM');
    SQL.Add('(PersonelDecExt_1.EmployerAmount)');
    SQL.Add('AS EmployerAmount');
    SQL.Add('FROM Pay.PersonelDecExt AS PersonelDecExt_1 INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON PersonelDecExt_1.OfficeCode = FormsInfoOffice.FormInfoID');
    SQL.Add('WHERE (PersonelDecExt_1.FormInfoID = :FormInfoID ) ');
    SQL.Add('AND (PersonelDecExt_1.PersonelNo = :PersonelNoFrom )');
    SQL.Add('And (EndDate = :EndDate  )');
    Parameters.ParamByName('EndDate').Value := qryPonyPonyDate.AsString;
    SQL.Add('GROUP BY PersonelDecExt_1.PersonelNo) AS NowYearAnnuity LEFT OUTER JOIN');
    SQL.Add('(SELECT PersonelDecExt.PersonelNo, SUM(PersonelDecExt.DayQuntity) AS DayQuntity');
    SQL.Add(', SUM(PersonelDecExt.EmployeeAmount) AS EmployeeAmount');
    SQL.Add('FROM Pay.PersonelDecExt AS PersonelDecExt INNER JOIN');
    SQL.Add('Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON PersonelDecExt.OfficeCode = FormsInfoOffice.FormInfoID');
    SQL.Add('WHERE (FormsInfo.FormType = 32)');

    SQL.Add('GROUP BY PersonelDecExt.PersonelNo) AS FirstAnnuity ON NowYearAnnuity.PersonelNo =');
    SQL.Add('FirstAnnuity.PersonelNo');

    Parameters.ParamByName('PersonelNoFrom').Value :=
      qryPony.FieldByName('PersonelNO').AsInteger;
    Parameters.ParamByName('FormInfoID').Value := FormInfoID;
    Active := True;
    qryPony.FieldByName('AnnuityPay').AsCurrency :=
      FieldByName('SumAnnuityPrice').AsCurrency;
    Active := False;
  end; // With
end;

procedure TPony2F.actRemainLoanExecute(Sender: TObject);
begin
  inherited;
  qryPony.FieldByName('RemainLoan').AsCurrency :=
    RemainLoan(qryPony.FieldByName('PersonelNO').AsInteger, 0);
end;

procedure TPony2F.actAnnuityOldPayExecute(Sender: TObject);
begin
  inherited;
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT SUM(PersonelDecExt.EmployeeAmount), SUM(PersonelDecExt.DayQuntity)';
    SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID INNER JOIN');
    SQL.Add('Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType');
    SQL.Add('WHERE (FormTypes.FormType = 32) AND (PersonelDecExt.PersonelNo = :PersonelNo )');

    Parameters.ParamByName('PersonelNo').Value :=
      qryPony.FieldByName('PersonelNO').AsInteger;
    Active := True;
    qryPony.FieldByName('AnnuityOldPay').AsCurrency := Fields[0].AsCurrency;

    qryPony.FieldByName('Annuity').AsFloat := Fields[1].AsFloat;
    qryPony.FieldByName('Tide').AsFloat := Fields[1].AsFloat;

    Active := False;
  end; // With
end;

procedure TPony2F.actUselessLeavePayExecute(Sender: TObject);
begin
  inherited;
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT ROUND(SUM(InterdictForUse.Amount) / MAX(FormsInfo.Amount) * MAX(FormsInfo.StandardDays * :UselessLeave1 ) ';
    SQL.Add('+ SUM(InterdictForUse.Amount)/ MAX(FormsInfo.Amount) * MAX(FormsInfo.StandardTimes * :UselessLeave2 ), 0) AS price');
    SQL.Add('FROM Pay.FormsInfo INNER JOIN');
    // SQL.Add('Pay.InterdictForUse(:YearMounth, 1, 1, :PersonelNoFrom, :PersonelNoTo) AS InterdictForUse INNER JOIN');
    SQL.Add('Pay.InterdictForUse(:YearMounth, 1, 2, :PersonelNoFrom, :PersonelNoTo,1) AS InterdictForUse INNER JOIN');
    SQL.Add('(SELECT FormInfoID, SalaryID, Kind');
    SQL.Add('FROM Pay.SalaryRange');
    SQL.Add('WHERE (Kind = 0)) AS salaryRange4Use ON InterdictForUse.SalaryID = salaryRange4Use.SalaryID ON');
    SQL.Add('FormsInfo.FormInfoID = salaryRange4Use.FormInfoID');
    SQL.Add('WHERE (FormsInfo.FormType = 47) AND (FormsInfo.InfoID = 3)');
    Parameters.ParamByName('PersonelNoFrom').Value :=
      qryPony.FieldByName('PersonelNO').AsInteger;
    Parameters.ParamByName('PersonelNoTo').Value :=
      qryPony.FieldByName('PersonelNO').AsInteger;
    Parameters.ParamByName('YearMounth').Value :=
      LeftStr(qryPony.FieldByName('AdjustDate').AsString, 7);
    Parameters.ParamByName('UselessLeave1').Value :=
      qryPony.FieldByName('UselessLeave').AsFloat;
    Parameters.ParamByName('UselessLeave2').Value :=
      qryPony.FieldByName('UselessLeave').AsFloat;
    Active := True;
    qryPony.FieldByName('UselessLeavePay').AsCurrency := Fields[0].AsCurrency;
    Active := False;
  end; // With

end;

procedure TPony2F.qryPonySalaryNetChange(Sender: TField);
begin
  inherited;
  try
    qryPony.AutoCalcFields := False;
    qryPonySalaryNonNet.AsCurrency := qryPonySalaryPureSum.AsCurrency -
      qryPonySalaryNet.AsCurrency;
  finally
    qryPony.AutoCalcFields := True;
  end;
end;

procedure TPony2F.actAllExecute(Sender: TObject);
begin
  inherited;
  actFunctionYearly.Execute;
  actCurrentMonthsPay.Execute;
  actUselessLeave.Execute;
  actUselessLeavePay.Execute;
  actTidePay.Execute;
  actAnnuityPay.Execute;
  actRemainLoan.Execute;
  actAnnuityOldPay.Execute;
  actTax.Execute;
end;

procedure TPony2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPony2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPony2F.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPony2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPony);
end;

procedure TPony2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPony);
end;

procedure TPony2F.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPony2F.AllClick(Sender: TObject);
begin
  inherited;
  if mnuNAllRecords.Checked then
  begin
    ppDBPipeline1.RangeBegin := rbFirstRecord;
    ppDBPipeline1.RangeEnd := reLastRecord;
  end
  else
  begin
    ppDBPipeline1.RangeBegin := rbCurrentRecord;
    ppDBPipeline1.RangeEnd := reCurrentRecord;
  end;

  try
    qryPony.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Name);
  Finally
    qryPony.EnableControls;
  end; // try

end;

procedure TPony2F.mnuNAllRecordsClick(Sender: TObject);
begin
  inherited;
  mnuNAllRecords.Checked := not mnuNAllRecords.Checked;
end;

procedure TPony2F.qryPonyAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry4Print do
  begin
    Active := False;
    Parameters.ParamByName('PersonelNo').Value := qryPonyPersonelNo.AsInteger;
    Active := True;
  end;

  With qryPonyDebitCredits do
  begin
    Close;
    Parameters.ParamByName('PonyID').Value := qryPonyPonyID.AsInteger;
    Open;
  end;

  With qryInterdictList do
  begin
    Close;
    Parameters.ParamByName('PersonelNo').Value := qryPonyPersonelNo.AsInteger;
    Open;
  end;

  with qryPonyExtra do
  begin
    Active := False;
    if qryPonyPArchiveID.AsInteger = 0 then
    begin
      SQL.Text := 'SELECT * From';
      SQL.Add('Pay.PonyExtra ( :PersonelNO )');
      Parameters.ParamByName('PersonelNo').Value := qryPonyPersonelNo.AsInteger;
    end
    else
    begin
      SQL.Text := 'SELECT ExtraCode AS Code,ExtraCaptin AS Captin';
      SQL.Add(',ExtraAmount AS Amount');
      SQL.Add('FROM Pay.PonyArchives');
      SQL.Add('WHERE (PonyID = :PonyID ) AND (PonyKind = 1)');
      Parameters.ParamByName('PonyID').Value := qryPonyPonyID.AsInteger;
    end;
    Active := True;
  end;

  with qryRptComprasion do
  begin
    Active := False;
    if qryPonyPArchiveID.AsInteger = 0 then
    begin
      SQL.Text :=
        'SELECT R.Mounth,max(SumFunctionDay)SumFunctionDay,sum(Price)Price';
      SQL.Add('FROM Pay.RptComprasionsub( -9999 ,9999 ,1,12 , :EmployTypeIDs , -9999 ,9999 ,:YearIDFrom ,:YearIDTo, :YearsFrom ,:YearsTo) AS R');
      SQL.Add('inner join (SELECT Mounth, SUM(FunctionDay) AS SumFunctionDay');
      SQL.Add('FROM Pay.Functions');
      SQL.Add('WHERE (PersonelNO = :PersonelNO1 )');
      SQL.Add('GROUP BY Mounth	) AS F on f.Mounth = R.Mounth');
      SQL.Add('WHERE (ShowColumn = 9 )	 AND (PersonelNO = :PersonelNO2 )');
      SQL.Add('GROUP BY R.Mounth');
      SQL.Add('having sum(Price)<>0');
      SQL.Add('order by R.Mounth');

      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('YearsFrom').Value := optp.Year;
    Parameters.ParamByName('YearsTo').Value := optp.Year;
      Parameters.ParamByName('PersonelNo1').Value :=
        qryPonyPersonelNo.AsInteger;
      Parameters.ParamByName('PersonelNo2').Value :=
        qryPonyPersonelNo.AsInteger;
      Parameters.ParamByName('EmployTypeIDs').Value := EmployTypeIDs;
    end
    else
    begin
      SQL.Text := 'SELECT Mounth,SumFunctionDay,Price';
      SQL.Add('FROM Pay.PonyArchives');
      SQL.Add('WHERE (PonyID = :PonyID ) AND (PonyKind = 2)');
      Parameters.ParamByName('PonyID').Value := qryPonyPonyID.AsInteger;
    end;

    Active := True;
  end;

  lbl__sum.Caption := 'جمع بحروف: ' +
    num2alphabet(qryPonySalaryPureSum.AsLargeInt) + ' ريال';

end;

end.
