unit ListBimehNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ComCtrls, ToolWin, FileCtrl, System.IOUtils,
  Mask, DBCtrls, ppDB, ppDBPipe, ppBands, ppCtrls, myChkBox, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppVar, ppStrtch,
  ppMemo, ppModule, Dbf, strutils, Menus, SumDBGrid, ppParameter, zAPIBalloon,
  frmInsouranceCheck, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

// - InsouranceEmploye
type
  TListBimehNewF = class(Ttemplate2MDIF)
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
    actFilter: TAction;
    actDisk: TAction;
    actSaveList: TAction;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    qryPersonels: TADOQuery;
    srcPersonels: TDataSource;
    ppListBimeh: TppReport;
    ppDBPersonel: TppDBPipeline;
    BitBtn2: TBitBtn;
    btnDisk: TBitBtn;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actPrintVa: TAction;
    btnPrint: TBitBtn;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    ppSumlist: TppReport;
    BitBtn6: TBitBtn;
    actSendExel: TAction;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    AllClike: TMenuItem;
    qryBimeh: TADOQuery;
    ppDBBimeh: TppDBPipeline;
    srcBimeh: TDataSource;
    StatusBar1: TStatusBar;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppDBCalc21: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc_Bime2: TppDBCalc;
    ppDBCalc_ClintShare2: TppDBCalc;
    ppDBCalc_Inaction2: TppDBCalc;
    ppDBCalc5_NetPayable2: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppPageStyle3: TppPageStyle;
    ppLabel95: TppLabel;
    ppLabel102: TppLabel;
    ppLabel88: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel90: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppShape7: TppShape;
    ppLabel5: TppLabel;
    ppLabel61: TppLabel;
    ppLabel85: TppLabel;
    ppLabel101: TppLabel;
    ppDBText25: TppDBText;
    ppLabel106: TppLabel;
    ppLabel89: TppLabel;
    ppLabel92: TppLabel;
    ppLabel91: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppShape8: TppShape;
    ppLabel54: TppLabel;
    ppLabel60: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLine4: TppLine;
    ppDBText18: TppDBText;
    ppDBText17: TppDBText;
    ppDBText14: TppDBText;
    ppDBText13: TppDBText;
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppDBText3: TppDBText;
    ppDBText20: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppShape2: TppShape;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel51: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLblInsouranceAll: TppLabel;
    ppLblGetExemption: TppLabel;
    ppPageStyle1: TppPageStyle;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLblOffShootName_L1: TppLabel;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine8: TppLine;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine34: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel17: TppLabel;
    ppLine14: TppLine;
    ppLabel18: TppLabel;
    ppLine15: TppLine;
    ppLabel19: TppLabel;
    ppLine16: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine18: TppLine;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLine21: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine22: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine23: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine24: TppLine;
    ppLabel33: TppLabel;
    ppLine25: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine26: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine27: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine28: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine29: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine19: TppLine;
    ppLine17: TppLine;
    ppLine30: TppLine;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLine31: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine10: TppLine;
    ppLine3: TppLine;
    ppLabel16: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel23: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppShape1: TppShape;
    ppShape3: TppShape;
    ppDBText19: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel49: TppLabel;
    ppLabel4: TppLabel;
    grpMaster: TGroupBox;
    EdtCode: TDBEdit;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    SrcMaster: TDataSource;
    qryMaster: TADOQuery;
    qryMasterFormInfoID: TIntegerField;
    qryMasterInfoID: TIntegerField;
    qryMasterInfoName_L1: TStringField;
    qryBimehinsuranceNo: TWordField;
    qryBimehFormInfoID: TIntegerField;
    qryBimehinsurancename: TStringField;
    qryBimehEmployerName: TStringField;
    qryBimehworkShop: TStringField;
    qryBimehInsuranceLabel_L1: TStringField;
    qryBimehInsuranceLabel_L2: TStringField;
    qryBimehEmployeeshare: TFloatField;
    qryBimehEmployershare: TFloatField;
    qryBimehInactionInsuranceShare: TFloatField;
    qryBimehinsuranceUp: TBCDField;
    qryBimehdailywage: TBCDField;
    qryBimehAccTopicCode: TIntegerField;
    qryBimehAccDetailCode: TIntegerField;
    qryBimehAccCTopicCode: TIntegerField;
    qryBimehAccCTopicCode2: TIntegerField;
    qryBimehtel: TStringField;
    qryBimehaddress: TStringField;
    qryBimehHardShipPercent: TWordField;
    qryBimehPeopleExempt: TWordField;
    qryBimehOffShootName_L1: TStringField;
    qryBimehPostalCode: TStringField;
    qryBimehPoorsantRate: TFloatField;
    qryBimehAccCTopicCode3: TIntegerField;
    qryBimehTaxCode: TWordField;
    qryBimehFormType: TSmallintField;
    qryBimehInfoID: TIntegerField;
    qryBimehInfoName_L1: TStringField;
    qryBimehInfoName_L2: TStringField;
    qryBimehPrvInfoID: TIntegerField;
    qryBimehAmount: TBCDField;
    qryBimehAmount2: TBCDField;
    qryBimehCoefficient: TFloatField;
    qryBimehStandardDays: TFloatField;
    qryBimehStandardTimes: TFloatField;
    qryBimehCalCulateType: TWordField;
    qryBimehRecallFormInfoID1: TStringField;
    qryBimehRecallFormInfoID2: TStringField;
    qryBimehWordDocuments: TStringField;
    qryBimehRecalKindClock: TWordField;
    qryBimehFirstAmount: TBCDField;
    qryBimehMaxDay: TFloatField;
    qryBimehMaxTime: TFloatField;
    qryBimehMuliplyInDay: TWordField;
    qryBimehPayMentActive: TWordField;
    qryBimehWageCalcKind: TWordField;
    Panel1: TPanel;
    DBNavigator2: TDBNavigator;
    ppDBText21: TppDBText;
    actBurnCD: TAction;
    btnBurnCD: TBitBtn;
    Panel10: TPanel;
    lblColor2: TLabel;
    lblDay: TLabel;
    qryBimehMON_PYM: TStringField;
    Memo1: TMemo;
    actSMS: TAction;
    pnlWarnings: TPanel;
    lstWarnings: TListBox;
    frInsouranceCheck1: TfrInsouranceCheck;
    memDSKKAR00: TMemo;
    memDSKWOR00: TMemo;
    popDisk: TPopupMenu;
    dbf1: TMenuItem;
    txt1: TMenuItem;
    popBurnCD: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    SaveDialog1: TSaveDialog;
    qryPersonelsBackup: TADOQuery;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DBGrid1: TCedarDbgrid;
    DBGrid3: TCedarDbgrid;
    CheckBox1: TCheckBox;
    grpMounthRetardDel: TGroupBox;
    cmbMounthRetard: TComboBox;
    Panel4: TPanel;
    CmbArchiveID: TComboBox;
    MskListNo: TMaskEdit;
    Label1: TLabel;
    chkFHours: TCheckBox;
    qryPersonelsPersonelNo: TIntegerField;
    qryPersonelsPersonelName_L1: TStringField;
    qryPersonelsfatherName_L1: TStringField;
    qryPersonelsIDNumber: TStringField;
    qryPersonelsInsuranceNumber: TStringField;
    qryPersonelsJobName: TStringField;
    qryPersonelsSex_L1: TStringField;
    qryPersonelsemployDate: TStringField;
    qryPersonelsfinishEmployDate: TStringField;
    qryPersonelsDaySalary: TBCDField;
    qryPersonelscontainpay: TBCDField;
    qryPersonelsContainWage: TBCDField;
    qryPersonelsContainPayAndWage: TBCDField;
    qryPersonelsPayAndWage: TBCDField;
    qryPersonelsInsouranceEmploye: TBCDField;
    qryPersonelsInsouranceInaction: TBCDField;
    qryPersonelsInsouranceEmployer: TBCDField;
    qryPersonelsInsouranceHardWork: TBCDField;
    qryPersonelsDSW_INC: TBCDField;
    qryPersonelsDSW_SPOUSE: TBCDField;
    qryPersonelsSumDec: TBCDField;
    qryPersonelsPayableSalary: TBCDField;
    qryPersonelsInsouranceAll: TBCDField;
    qryPersonelsinsuranceID: TWordField;
    qryPersonelsinsurancename: TStringField;
    qryPersonelsPersonStateNo: TIntegerField;
    qryPersonelsFHours: TFloatField;
    qryPersonelsFDaily: TFloatField;
    qryPersonelsAccountNumber: TStringField;
    qryPersonelsPercentWound: TFloatField;
    qryPersonelsSodurPlace_L1: TStringField;
    qryPersonelsname_L1: TStringField;
    qryPersonelslastName_L1: TStringField;
    qryPersonelspersonelstate_L1: TStringField;
    qryPersonelsNationalityID: TIntegerField;
    qryPersonelsNationality_L1: TStringField;
    qryPersonelslicence_L1: TStringField;
    qryPersonelsNationalID: TStringField;
    qryPersonelsBirthPlace_L1: TStringField;
    qryPersonelsSodurDate: TStringField;
    qryPersonelsBirthDate: TStringField;
    qryPersonelsSumWage: TBCDField;
    qryPersonelsAidContainInsourance: TBCDField;
    qryPersonelsContainTax: TBCDField;
    qryPersonelsTaxValue: TBCDField;
    qryPersonelsPayAndWage_SumDec: TBCDField;
    qryPersonelsSumDec_InsouranceEmploye: TBCDField;
    qryPersonelsDSW_JOB: TStringField;
    qryPersonelsPostalCode: TStringField;
    qryPersonelsdailywage: TBCDField;
    qryPersonelsMobile: TStringField;
    qryPersonelsSickDay: TIntegerField;
    qryPersonelsEydiAmount: TBCDField;
    qryPersonelsDaySalary_DSW_INC: TFloatField;
    qryPersonelscontainpay_DSW_INC: TBCDField;
    qryPersonelsContainWage_DSW_SPOUSE: TBCDField;
    qryPersonelsDay_DSW_INC: TFloatField;
    qryPersonelsSanavatOnlyAmount: TBCDField;
    qryPersonelsJob_Desc: TStringField;
    qryPersonelsNotIncluded: TBCDField;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure myCheckBox4Print(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel50GetText(Sender: TObject; var Text: String);
    procedure actDiskExecute(Sender: TObject);
    procedure ppDBText16GetText(Sender: TObject; var Text: String);
    procedure qryPersonelsNationality_L1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actSortExecute(Sender: TObject);
    procedure ppLabel78GetText(Sender: TObject; var Text: String);
    procedure ppLabel79GetText(Sender: TObject; var Text: String);
    procedure ppLabel80GetText(Sender: TObject; var Text: String);
    procedure actPrintVaExecute(Sender: TObject);
    procedure ppLabel60GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblOffShootName_L1GetText(Sender: TObject; var Text: String);
    procedure AllClikPopClick(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure AllClikeClick(Sender: TObject);
    procedure qryPersonelsAfterOpen(DataSet: TDataSet);
    procedure ppLblGetExemptionGetText(Sender: TObject; var Text: String);
    procedure ppLblInsouranceAllGetText(Sender: TObject; var Text: String);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure ppDBText21GetText(Sender: TObject; var Text: string);
    procedure actBurnCDExecute(Sender: TObject);
    procedure qryPersonelsDaySalary_dailywageGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure Memo1Click(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure dbf1Click(Sender: TObject);
    procedure txt1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure pdbtxtDSW_JOBGetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
    TypeList, LastArchiveId, StandardDay: Integer;
    MonthNo, MounthRetard: Byte;
    CMen: Integer;
    CWomen, NotDaily: Integer;
    InsouranceAll: Currency;
    InsouranceEmployerAll: Currency;
    SQL4qryPersonels, SQL4qryBimeh, CurrentDate: String;
    CdBurn: Boolean;
    pa: String;
    F_i_l_e1, F_i_l_e2: String;
    procedure UpdateList;
    procedure Get_SexCount;
    function MakeDisk: Boolean;
    function GetExemption: Currency;
    function employDateChk(): Boolean;
    procedure ADDWarnings(s: string);
    function MakeDiskTxt: Boolean;
  public
    { Public declarations }
  end;

var
  ListBimehNewF: TListBimehNewF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, iransystem, mmessage,
  search2, sort2, Math, SalaryFunctions, CdBurnTax, infoSMS, Filter_ADO_Const,
  FaraConsts;

{$R *.dfm}

procedure TListBimehNewF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  // InitcmbMounthRetard(cmbMounthRetard, grpMounthRetard, MonthNo);
  if TypeList = 2 then
  begin
    if (CmbArchiveID.Items.Count > 0) and
      (Integer(CmbArchiveID.Items.Objects[0]) <> 0) then
      CmbArchiveID.ItemIndex := CmbArchiveID.Items.Count - 1
    else
      CmbArchiveID.ItemIndex := 0;

  end;
  UpdateList;
end;

procedure TListBimehNewF.txt1Click(Sender: TObject);
begin
  inherited;
  CdBurn := False;
  pa := EmptyStr;
  if MakeDiskTxt then
    BigMessage('ديسكت بيمه با موفقيت تهيه شد.', 1);
end;

procedure TListBimehNewF.FormCreate(Sender: TObject);
begin
  inherited;
  // InitDSW_JOB;
  MounthRetard := 0;
  TypeList := var_glb_gParam;
  InitDSW_JOB;
  SQL4qryPersonels := qryPersonels.SQL.Text;
  SQL4qryBimeh := qryBimeh.SQL.Text;
  InsouranceAll := 0;
  InsouranceEmployerAll := 0;
  MonthNo := var_glb_CurrentMonth;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  // InitcmbMounthRetard(cmbMounthRetard, grpMounthRetard, MonthNo);

  if TypeList = 2 then
  begin
    Caption := Caption + ' معوقه ';
    if (CmbArchiveID.Items.Count > 0) and
      (Integer(CmbArchiveID.Items.Objects[0]) <> 0) then
      CmbArchiveID.ItemIndex := CmbArchiveID.Items.Count - 1;

  end;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  qryMaster.Open;

end;

procedure TListBimehNewF.ppDBText21GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := Get_Job_Desc(qryPersonels);
end;

procedure TListBimehNewF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if User.admin then
        AddItemFilter(GetFilter, TFilterOfficeCodeChk);
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        '');
      // 'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItem(DMf.adcSalary, 'ArchiveID', ' شماره بايگاني', 'شماره', ftInteger,
        dvDefaults, '0', '', ciSingle, '', '');
      AddItem(DMf.adcSalary, 'c_PersonelNo', 'مشخصات پرسنلي', 'شماره',
        ftInteger, dvMinMax, '', '', ciLookup,
        ' select PersonelNo, name_L1 + '' '' + lastName_L1 as pname FROM Pay.PersonelInfo ',
        ' Select Min(PersonelNo),max(PersonelNo) FROM Pay.PersonelInfo ');
      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنلي', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        ' SELECT InfoID, InfoName_L1  FROM  Pay.FormsInfo WHERE   (FormType = 3) ',
        ' Select Min(InfoID),max(InfoID) from Pay.FormsInfo where (FormType = 3)');
      // 'Select 0,999999');
      AddItem(DMf.adcSalary, 'BimehType', 'نوع بيمه', 'كد', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT     InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        // 'SELECT     Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
        '');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TListBimehNewF.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  if myParams.FindParam('c_PersonelNo') = nil then
    Close
  else
    CmbArchiveID.ItemIndex := GetcFrom(myParams.ParamValues['ArchiveID'],
      ftInteger);
end;

procedure TListBimehNewF.UpdateList;
var
  b, b2: Boolean;
  MaxContainPayInsuranceList: Currency;
begin
  // if cmbMounthRetard.ItemIndex >= 0 then
  // MounthRetard := Integer(cmbMounthRetard.Items.Objects
  // [cmbMounthRetard.ItemIndex])
  // else
  // MounthRetard := 0;

  GetYearMounth(MonthNo);
  StandardDay := StandardDays(MonthNo, CurrentDate);
  With qryBimeh do
  begin
    Close;
    SQL.Text := SQL4qryBimeh;
    SQL.Add('and insuranceNo in(' + GetcFrom(myParams.ParamValues['BimehType'],
      ftString) + ')');
    Parameters.ParamByName('FormInfoID').Value :=
      qryMaster.Fieldbyname('FormInfoID').AsInteger;

    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Open;
  end;
  MaxContainPayInsuranceList := qryBimehinsuranceUp.AsCurrency * StandardDay;
  with qryPersonels do
  begin
    Active := False;
    SQL.Text := SQL4qryPersonels;
    SQL.Add('Where insuranceID in(' + GetcFrom(myParams.ParamValues
      ['BimehType'], ftString) + ')');

    SQL.Add('AND EmployTypeID in(' + GetcFrom(myParams.ParamValues
      ['EmployTypeID'], ftString) + ')');

    if User.admin then
      SQL.Add('AND OfficeCode in(' + GetcFrom(myParams.ParamValues
        ['OfficeCode'], ftString) + ')');

    SQL.Add(' and (PersonelNo BETWEEN :PersonelNo2From AND :PersonelNo2To)');
    SQL.Add('ORDER BY PersonelNo');

    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end
    else
    begin
      Parameters.ParamByName('companyCodeFrom').Value := 0;
      Parameters.ParamByName('companyCodeTo').Value := 2147483647;
    end;

    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('StateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('StateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    // Parameters.ParamByName('insuranceIDFrom').Value:=GetcFrom(myParams.ParamValues['BimehType'],ftInteger);
    // Parameters.ParamByName('insuranceIDTo').Value:=GetcTo(myParams.ParamValues['BimehType'],ftInteger);
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('MounthRetard').Value := MounthRetard;

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['c_PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['c_PersonelNo'], ftInteger);

    Parameters.ParamByName('PersonelNo2From').Value :=
      GetcFrom(myParams.ParamValues['c_PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNo2To').Value :=
      GetcTo(myParams.ParamValues['c_PersonelNo'], ftInteger);

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    // Parameters.ParamByName('EmployTypeFROM').Value :=
    // GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    // Parameters.ParamByName('EmployTypeTo').Value :=
    // GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    if TypeList = 1 then
    begin
      Parameters.ParamByName('FirstArchiveId').Value := -5;
      Parameters.ParamByName('LastArchiveId').Value :=
        Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);

      // Parameters.ParamByName('HasRetared').Value := 1;
      // Parameters.ParamByName('FDaily2').Value := 1;
      // Parameters.ParamByName('FDaily3').Value := 1;
      // Parameters.ParamByName('FHours').Value := 1;
      //
      // Parameters.ParamByName('FDailyList1').Value := 1;
      // Parameters.ParamByName('FDailyList2').Value := 1;
      // Parameters.ParamByName('FDailyList3').Value := 1;
      //
    end
    else
    begin
      // Parameters.ParamByName('HasRetared').Value := 0; // 0
      // Parameters.ParamByName('FDaily2').Value := 1;
      // Parameters.ParamByName('FDaily3').Value := 1;
      // Parameters.ParamByName('FHours').Value := 1;
      //
      // Parameters.ParamByName('FDailyList1').Value := 1;
      // Parameters.ParamByName('FDailyList2').Value := 1;
      // Parameters.ParamByName('FDailyList3').Value := 1;

      With DMf.qryTmpTmpp do
      begin
        Active := False;
        SQL.Text := 'declare @ArchiveID int';
        SQL.Add('set @ArchiveID = :ArchiveId');
        SQL.Add('SELECT Mounth,');
        SQL.Add('case');
        SQL.Add('when @ArchiveID=0 then Max(ArchiveID)');
        SQL.Add('when @ArchiveID=1 then -5');
        SQL.Add('else @ArchiveID - 1');
        SQL.Add('end AS LastArchiveId');
        SQL.Add('FROM Pay.FixedCalculated');
        SQL.Add('WHERE Mounth = :Mounth');
        SQL.Add('GROUP BY Mounth');
        Parameters.ParamByName('Mounth').Value := MonthNo;
        Parameters.ParamByName('ArchiveId').Value :=
          Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
        Active := True;
        LastArchiveId := Fieldbyname('LastArchiveId').AsInteger;

        Active := False;
      end;

      if CmbArchiveID.Items.Count = 1 then
      begin
        Parameters.ParamByName('FirstArchiveId').Value := -5;
        Parameters.ParamByName('LastArchiveId').Value := -5;
      end
      else
      begin
        Parameters.ParamByName('FirstArchiveId').Value := LastArchiveId;
        Parameters.ParamByName('LastArchiveId').Value :=
          Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
      end;
    end;

    // Parameters.ParamByName('MinBenefitsInsuranceList1').Value :=
    // opt.MinBenefitsInsuranceList;
    // Parameters.ParamByName('MinBenefitsInsuranceList2').Value :=
    // opt.MinBenefitsInsuranceList;
    // Parameters.ParamByName('MinBenefitsInsuranceList3').Value :=
    // opt.MinBenefitsInsuranceList;
    // Parameters.ParamByName('MinBenefitsInsuranceList4').Value :=
    // opt.MinBenefitsInsuranceList;
    // Parameters.ParamByName('MinBenefitsInsuranceList5').Value :=
    // opt.MinBenefitsInsuranceList;

    // Parameters.ParamByName('MinBenefitsInsuranceList3').Value :=
    // opt.MinBenefitsInsuranceList;
    // Parameters.ParamByName('MinBenefitsInsuranceList4').Value :=
    // opt.MinBenefitsInsuranceList;
    // Parameters.ParamByName('MaxContainPayInsuranceList1').Value :=
    // MaxContainPayInsuranceList;
    // Parameters.ParamByName('MaxContainPayInsuranceList2').Value :=
    // MaxContainPayInsuranceList;
    // Parameters.ParamByName('MaxContainPayInsuranceList3').Value :=
    // MaxContainPayInsuranceList;

    Active := True;

    // b := CalcSumFileds(qryPersonelsDaySalary_dailywage) > 0;
    // (DBGrid1.GetValueFieldSum('DaySalary_dailywage') > 0);
    // lblDay.Visible := b;
    // setColumns2(DBGrid1, b, 'dailywage');
    // setColumns2(DBGrid1, b, 'DaySalary_dailywage');

    b2 := (employDateChk);
    actDisk.Enabled := (not b) and (not IsEmpty) and
    // (frInsouranceCheck1.qryInsouranceCheck.RecordCount = 0) and
      b2;
    actPrint.Enabled := (not b) and not IsEmpty and b2;

    // if ((cmbMounthRetard.Visible) and (cmbMounthRetard.ItemIndex > -1)) then
    // begin
    // actDisk.Enabled := True;
    // actPrint.Enabled := True;
    // end;

    actBurnCD.Enabled := actPrint.Enabled;

    if b then
    begin
      // Warn('دستمزد روزانه از حداقل حقوق روزانه كمتر است' + #13#10 +
      // CurrToStr(SumGrid1.GetValueField('DaySalary_dailywage')) +
      // '  پرسنلي كه اين شرايط را دارند به رنگ ديگري مشخص شده‏اند', mtError);
      // qryPersonels.Sort := 'DaySalary_dailywage  DESC';

    end;
  end; // with
  Memo1.Visible := True;
  CheckBox1Click(CheckBox1);

end;

procedure TListBimehNewF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPersonelsPersonelNo);
end;

procedure TListBimehNewF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    MakeMenuItem(55, AllClikPopClick, PopList4Print);
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
  end;
end;

procedure TListBimehNewF.myCheckBox4Print(Sender: TObject);
begin
  inherited;
  (Sender as TmyCheckBox).Checked := qryPersonels.Fieldbyname('Nationality_L1')
    .AsString <> 'ايران';
end;

procedure TListBimehNewF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TListBimehNewF.ppLabel23GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := optP.Year;
end;

procedure TListBimehNewF.ppLabel13GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Month2Names(MonthNo)
end;

procedure TListBimehNewF.ppLabel50GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

function TListBimehNewF.MakeDisk: Boolean;
var
  path, dsk_list_no, dbfFileName: String;
  Dbf: TDbf;
  i: Integer;
  s: String;
  b1: Boolean;
  WarnMsg: String;

  dsk_num: Integer;
  dsk_tdd: Integer;
  dsk_trooz: Currency;
  dsk_tmah: Currency;
  dsk_tmaz: Currency;
  dsk_tmash: Currency;
  dsk_ttotl: Currency;
  dsk_tbime: Currency;
  dsk_tkoso: Currency;
  dsk_bic: Currency;
  dsk_InsouranceHardWork: Currency;
  // dsk_rate: Currency;
  DSK_INC: Currency;
  DSK_SPOUSE: Currency;

begin
  dsk_list_no := (Trim(MskListNo.Text)); // StrToInt
  Result := False;
  path := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));

  if ((not FileExists(pchar(path + 'Bimeh\wor.dbf'))) or
    (not FileExists(pchar(path + 'Bimeh\kar.dbf')))) then
  begin

    if not TDirectory.Exists(path + 'Bimeh') then
      TDirectory.CreateDirectory(path + 'Bimeh');

    dbfFileName := pchar(path + 'Bimeh\wor.dbf');
    GetFromServer(dbfFileName, '\Download\wor.dbf');
    dbfFileName := pchar(path + 'Bimeh\kar.dbf');
    GetFromServer(dbfFileName, '\Download\kar.dbf');
  end;

  /// /
  CopyFile(pchar(path + 'Bimeh\wor.dbf'),
    pchar(__AppData + 'Bimeh\wor.dbf'), False);
  CopyFile(pchar(path + 'Bimeh\kar.dbf'),
    pchar(__AppData + 'Bimeh\kar.dbf'), False);
  ///

  CopyFile(pchar(__AppData + 'Bimeh\wor.dbf'),
    pchar(path + 'dskwor00.dbf'), False);
  CopyFile(pchar(__AppData + 'Bimeh\kar.dbf'),
    pchar(path + 'dskkar00.dbf'), False);
  Dbf := TDbf.Create(Self);
  try
    with Dbf do
    begin
      TableName := path + 'dskwor00.dbf';
      Open;
      for i := 0 to fieldcount - 1 do
        if Fields[i].DataType = ftString then
          TStringField(Fields[i]).Transliterate := False;
    end; // with
  except
    on E: Exception do
    begin
      Warn('اشكال در اتصال به بانك فاكس' + E.Message, mtError);
      Exit;
    end;
  end; // try
  // ---------------------- initialize -----------------------------------
  dsk_num := 0; // ;
  dsk_tdd := 0; // Integer;
  dsk_trooz := 0; // Currency;
  dsk_tmah := 0; // Currency;
  dsk_tmaz := 0; // Currency;
  dsk_tmash := 0; // Currency;
  dsk_ttotl := 0; // Currency;
  dsk_tbime := 0; // Currency;
  dsk_tkoso := 0; // Currency;
  dsk_bic := 0; // Currency;
  dsk_InsouranceHardWork := 0;
  // dsk_rate:=0;// Currency;
  DSK_INC := 0;
  DSK_SPOUSE := 0;
  // ---------------------------------------------------------------------
  try
    BigMessageProgBar('در حال تهيه فايل بيمه ...', qryPersonels.RecordCount);
    qryPersonels.DisableControls;
    // qryListDetail.DisableControls;
    SetKeyboardLatin;
    qryPersonels.First;
    while not qryPersonels.Eof do
    begin
      // qryListDetail.Active:=False;
      // qryListDetail.Active:=True;
      with Dbf do
      begin
        Insert;
        try
          FieldValues['dsw_id'] := qryBimeh['WorkShop'];
          FieldValues['dsw_yy'] := strtoint(RightStr(optP.Year, 2));
          FieldValues['dsw_mm'] := MonthNo;
          FieldValues['dsw_LISTNO'] := (dsk_list_no); // IntToStr
          FieldValues['dsw_id1'] := qryPersonels.Fieldbyname('InsuranceNumber')
            .AsString.Trim;

          FieldValues['dsw_fname'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('name_L1').AsAnsiString);
          FieldValues['dsw_lname'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('lastname_L1').AsAnsiString);
          FieldValues['dsw_dname'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('fathername_L1')
            .AsAnsiString);
          FieldValues['dsw_idno'] := qryPersonels.Fieldbyname
            ('IDNumber').AsString;
          FieldValues['dsw_idPLC'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('SodurPlace_l1')
            .AsAnsiString);
          FieldValues['dsw_idate'] :=
            RightStr(qryPersonels.Fieldbyname('BirthDate').AsString, 8);
          FieldValues['dsw_sex'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('sex_l1').AsAnsiString);
          FieldValues['dsw_nat'] :=
            _UniCodeToIS(Trim(qryPersonels.Fieldbyname('Nationality_L1')
            .AsAnsiString) + 'ي');

          // if (leftstr(qryPersonels.Fieldbyname('employDate').AsString, 4)
          // = optP.Year) and
          // (StrToIntDef(MidStr(qryPersonels.Fieldbyname('employDate').AsString,
          // 6, 2), 0) = MonthNo) then
          FieldValues['dsw_sdate'] :=
            RightStr(qryPersonels.Fieldbyname('EmployDate').AsString, 8)
          // else
          // FieldValues['dsw_sdate'] := ''
            ;

          if (leftstr(qryPersonels.Fieldbyname('finishEmployDate').AsString, 4)
            = optP.Year) and
            (StrToIntDef(MidStr(qryPersonels.Fieldbyname('finishEmployDate')
            .AsString, 6, 2), 0) = MonthNo) then
            FieldValues['dsw_edate'] :=
              RightStr(qryPersonels.Fieldbyname('finishEmployDate').AsString, 8)
          else
            FieldValues['dsw_edate'] := '';

          FieldValues['dsw_ocp'] := _UniCodeToIS(Get_Job_Desc(qryPersonels));

          FieldValues['dsw_dd'] := qryPersonels.Fieldbyname('FDaily').AsInteger;
          // FieldValues['dsw_rooz'] := qryPersonels.Fieldbyname('DaySalary').AsCurrency;
          // FieldValues['dsw_mah']  := qryPersonels.Fieldbyname('containpay').AsCurrency;
          // FieldValues['dsw_maz']  := qryPersonels.Fieldbyname('ContainWage').AsCurrency;
          // FieldValues['dsw_mash'] := qryPersonels.Fieldbyname('ContainPayAndWage').AsCurrency;
          FieldValues['dsw_rooz'] := qryPersonels.Fieldbyname('DaySalary')
            .AsCurrency;
          FieldValues['dsw_mah'] := qryPersonels.Fieldbyname
            ('containpay_DSW_INC').AsCurrency;
          FieldValues['dsw_maz'] := qryPersonels.Fieldbyname
            ('ContainWage_DSW_SPOUSE').AsCurrency;
          FieldValues['dsw_mash'] := qryPersonels.Fieldbyname
            ('ContainPayAndWage').AsCurrency;
          FieldValues['dsw_totl'] := qryPersonels.Fieldbyname('PayAndWage')
            .AsCurrency;
          FieldValues['dsw_bime'] := qryPersonels.Fieldbyname
            ('InsouranceEmploye').AsCurrency;
          if (FindField('PER_NATCOD') <> nil) then
          begin
            if (qryPersonelsNationalityID.AsInteger = 1) then
              FieldValues['PER_NATCOD'] :=
                qryPersonels.Fieldbyname('NationalID').AsString
            else if (qryPersonels.Fieldbyname('NationalID').AsString <> '') and
              (qryPersonels.Fieldbyname('NationalID').AsString <> '0') then
              FieldValues['PER_NATCOD'] :=
                qryPersonels.Fieldbyname('NationalID').AsString
          end;

          if FindField('DSW_JOB') <> nil then
            FieldValues['DSW_JOB'] := qryPersonels.Fieldbyname
              ('DSW_JOB').AsString;
          dsk_InsouranceHardWork := dsk_InsouranceHardWork +
            qryPersonels.Fieldbyname('InsouranceHardWork').AsCurrency;
          if FindField('DSW_PRATE') <> nil then
            FieldValues['DSW_PRATE'] :=
              qryBimeh.Fieldbyname('PoorsantRate').AsFloat;

          if FindField('DSW_INC') <> nil then
          begin

            FieldValues['DSW_INC'] := qryPersonels.Fieldbyname('Day_DSW_INC')
              .AsCurrency;
            FieldValues['DSW_SPOUSE'] := qryPersonels.Fieldbyname('DSW_SPOUSE')
              .AsCurrency;
            // DSK_INC= SUM [ DSW_INC   *   DSW_DD ]
            DSK_INC := DSK_INC + qryPersonels.Fieldbyname('DSW_INC').AsInteger;
            DSK_SPOUSE := DSK_SPOUSE + Fieldbyname('DSW_SPOUSE').AsInteger;

          end;
          // DSK_TMAH =SUM[ ( DSW_ROOZ + DSW_INC ) * DSW_DD]
          dsk_num := dsk_num + 1;
          dsk_tdd := dsk_tdd + Fieldbyname('dsw_dd').AsInteger;
          dsk_trooz := dsk_trooz + Fieldbyname('dsw_rooz').AsCurrency;

          // dsk_tmah := dsk_tmah + Fieldbyname('dsw_mah').AsCurrency;
          dsk_tmah := dsk_tmah + Fieldbyname('dsw_mah').AsCurrency;

          dsk_tmaz := dsk_tmaz + Fieldbyname('dsw_maz').AsCurrency;
          dsk_tmash := dsk_tmash + Fieldbyname('dsw_mash').AsCurrency;
          dsk_ttotl := dsk_ttotl + Fieldbyname('dsw_totl').AsCurrency;
          dsk_tbime := dsk_tbime + Fieldbyname('dsw_bime').AsCurrency;
          dsk_tkoso := dsk_tkoso + qryPersonels.Fieldbyname
            ('InsouranceEmployer').AsCurrency;
          dsk_bic := dsk_bic + qryPersonels.Fieldbyname('InsouranceInaction')
            .AsCurrency;
          Post;
        except
          on E: Exception do
          begin
            Warn('Error for personel # ' + qryPersonels.Fieldbyname
              ('PersonelNo').AsString + E.Message);
            Exit;
          end;
        end; // try
      end; // with
      qryPersonels.Next;
      GoProgressBar(qryPersonels.Fieldbyname('PersonelName_L1').AsString);
    end; // while
    dsk_tkoso := GetExemption;
    with Dbf do
    begin
      Active := False;
      TableName := path + 'dskkar00.dbf';
      Open;
      for i := 0 to fieldcount - 1 do
        if Fields[i].DataType = ftString then
          TStringField(Fields[i]).Transliterate := False;
      Edit;
      FieldValues['dsk_id'] := qryBimeh['WorkShop'];
      FieldValues['dsk_name'] :=
        _UniCodeToIS(qryBimeh.Fieldbyname('EmployerName').AsAnsiString);
      FieldValues['dsk_farm'] :=
        _UniCodeToIS(qryBimeh.Fieldbyname('EmployerName').AsAnsiString);
      FieldValues['dsk_adrs'] := _UniCodeToIS(qryBimeh.Fieldbyname('address')
        .AsAnsiString);
      FieldValues['dsk_kind'] := 0;
      // 1 boodd
      FieldValues['dsk_yy'] := strtoint(RightStr(optP.Year, 2)); // optP.Year;
      FieldValues['dsk_mm'] := MonthNo;
      FieldValues['dsk_listno'] := (dsk_list_no); // IntToStr
      FieldValues['dsk_disc'] := _UniCodeToIS('ليست اصلي شامل بيمه بيكاري');
      FieldValues['dsk_num'] := dsk_num;
      FieldValues['dsk_tdd'] := dsk_tdd;
      FieldValues['dsk_trooz'] := dsk_trooz;
      FieldValues['dsk_tmah'] := dsk_tmah;
      FieldValues['dsk_tmaz'] := dsk_tmaz;
      FieldValues['dsk_tmash'] := dsk_tmash;
      FieldValues['dsk_ttotl'] := dsk_ttotl;
      FieldValues['dsk_tbime'] := dsk_tbime;
      FieldValues['dsk_tkoso'] := dsk_tkoso;
      // dsk_tmash * GetExemption(qryBimeh.fieldbyname('Employershare').AsFloat/100);

      FieldValues['dsk_bic'] := dsk_bic;
      // dsk_tmash *   qryBimeh.fieldbyname('InactionInsuranceShare').AsFloat/100;

      FieldValues['dsk_rate'] := qryBimeh.Fieldbyname('Employershare').AsFloat +
        qryBimeh.Fieldbyname('Employeeshare').AsFloat +
        qryBimeh.Fieldbyname('InactionInsuranceShare').AsFloat;

      // s := s + ',' + Fieldbyname('PoorsantRate').AsString; // DSK_PRATE

      if FindField('DSK_BIMH') <> nil then
        FieldValues['DSK_BIMH'] := dsk_InsouranceHardWork;
      if FindField('MON_PYM') <> nil then
        FieldValues['MON_PYM'] := qryBimehMON_PYM.AsString;
      // رديف پيمان

      if FindField('DSK_INC') <> nil then
      begin
        FieldValues['DSK_INC'] := DSK_INC;
        FieldValues['DSK_SPOUSE'] := DSK_SPOUSE;
      end
      else
        Warn2('فایل های لیست بیمه شما قدیمی می  باشد', 0);

      Post;
      Close;
    end; // with
    CloseMessage;
    s := 'تعداد پرسنل = ' + IntToStr(dsk_num) + #10 +
    // 'تعداد افراد معاف = ' + qryBimeh.Fieldbyname('PeopleExempt').AsString + #10 +
      'جمع روزهاي كاركرد ليست = ' + IntToStr(dsk_tdd) + #10 +
      'جمع دستمزد روزانه = ' + CurrToStrF(dsk_trooz, ffCurrency, 0) + #10 +
      'جمع دستمزد ماهيانه = ' + CurrToStrF(dsk_tmah, ffCurrency, 0) + #10 +
      'جمع مزاياي ماهيانه مشمول كسر حق بيمه = ' + CurrToStrF(dsk_tmaz,
      ffCurrency, 0) + #10 +
      'جمع كل دستمزد و مزاياي ماهيانه مشمول كسر حق بيمه = ' +
      CurrToStrF(dsk_tmash, ffCurrency, 0) + #10 +
      'جمع كل دستمزد و مزاياي ماهيانه مشمول و غيرمشمول كسر حق بيمه = ' +
      CurrToStrF(dsk_ttotl, ffCurrency, 0) + #10 + 'جمع حق بيمه سهم بيمه شده = '
      + CurrToStrF(dsk_tbime, ffCurrency, 0) + #10 +
      'جمع حق بيمه سهم كارفرما = ' + CurrToStrF(dsk_tkoso, ffCurrency, 0) + #10
      + 'جمع بيمه بيكاري = ' + CurrToStrF(dsk_bic, ffCurrency, 0) + #10 +
      'جمع پایه سنواتی = ' + CurrToStrF(DSK_INC, ffCurrency, 0) + #10 +
      'جمع حق تاهل = ' + CurrToStrF(DSK_SPOUSE, ffCurrency, 0);
    Warn(s, mtInformation);
    b1 := True;
    while b1 do
    begin
      if CdBurn then
        pa := __TheTempDIR
      else if pa = EmptyStr then
        SelectDirectory('لطفاً مسير تهيه ليست را انتخاب كنيد:‏', '', pa);
      b1 := False;
      F_i_l_e1 := format('dskwor%.2d.dbf', [dsk_list_no.ToInteger]);
      pa := IncludeTrailingPathDelimiter(pa);
      if not CopyFile(pchar(path + 'dskwor00.dbf'), pchar(pa + F_i_l_e1), False)
      then
      begin
        WarnMsg := 'اشكال در كپي فايل.';
        b1 := get_response(WarnMsg + ' دوباره سعي مي‌كنيد؟') = mrYes;
      end
      else
      begin
        F_i_l_e2 := format('dskkar%.2d.dbf', [dsk_list_no.ToInteger]);
        if not CopyFile(pchar(path + 'dskkar00.dbf'), pchar(pa + F_i_l_e2),
          False) then
        begin
          WarnMsg := 'اشكال در كپي فايل.';
          b1 := get_response(WarnMsg + ' دوباره سعي مي‌كنيد؟') = mrYes;
        end
        else
        begin
          b1 := False;
          Result := True;
        end; // else
      end; // else

      if CdBurn then
      begin
        SetCurrentDir(pa);
        if SysUtils.DirectoryExists('CdBurn') then
          DelDir('CdBurn');
        MkDir('CdBurn');
        CopyFile(pchar(pa + F_i_l_e1), pchar(pa + 'CdBurn\' + F_i_l_e1), False);
        CopyFile(pchar(pa + F_i_l_e2), pchar(pa + 'CdBurn\' + F_i_l_e2), False);
      end;

    end; // while
  finally
    qryPersonels.EnableControls;
    // qryListDetail.EnableControls;
    CloseMessage;
    if CdBurn then
      CdBurnTaxF.BackUpBurnCD(Caption);
    SetKeyboardFarsi;
  end; // try
end;

function TListBimehNewF.MakeDiskTxt: Boolean;

var
  dsk_list_no: String;
  s: String;
  b1: Boolean;
  WarnMsg: String;
  dsk_num: Integer;
  dsk_tdd: Integer;
  dsk_trooz: Currency;
  dsk_tmah: Currency;
  dsk_tmaz: Currency;
  dsk_tmash: Currency;
  dsk_ttotl: Currency;
  dsk_tbime: Currency;
  dsk_tkoso: Currency;
  dsk_bic: Currency;
  dsk_InsouranceHardWork: Currency;

  // dsk_rate: Currency;
begin
  dsk_list_no := (Trim(MskListNo.Text)); // StrToInt
  Result := False;
  memDSKKAR00.Lines.Clear;
  memDSKWOR00.Lines.Clear;
  dsk_num := 0; // ;
  dsk_tdd := 0; // Integer;
  dsk_trooz := 0; // Currency;
  dsk_tmah := 0; // Currency;
  dsk_tmaz := 0; // Currency;
  dsk_tmash := 0; // Currency;
  dsk_ttotl := 0; // Currency;
  dsk_tbime := 0; // Currency;
  dsk_tkoso := 0; // Currency;
  dsk_bic := 0; // Currency;
  dsk_InsouranceHardWork := 0;
  // dsk_rate:=0;// Currency;
  // ---------------------------------------------------------------------
  try
    BigMessageProgBar('در حال تهيه فايل بيمه ...', qryPersonels.RecordCount);
    with qryPersonels do
    begin
      DisableControls;
      SetKeyboardLatin;
      First;
      while not Eof do
      begin
        s := qryBimeh.Fieldbyname('WorkShop').AsString;
        // dsw_id
        s := s + ',' + IntToStr(strtoint(RightStr(optP.Year, 2))); // dsw_yy
        s := s + ',' + IntToStr(MonthNo); // dsw_mm
        s := s + ',' + (dsk_list_no); // dsw_LISTNO    IntToStr
        s := s + ',' + Fieldbyname('InsuranceNumber').AsString;
        // dsw_id1

        s := s + ',' + Fieldbyname('name_L1').AsString;
        // dsw_fname
        s := s + ',' + Fieldbyname('lastname_L1').AsString;
        // dsw_lname
        s := s + ',' + Fieldbyname('fathername_L1').AsString;
        // dsw_dname
        s := s + ',' + Fieldbyname('IDNumber').AsString;
        // dsw_idno
        s := s + ',' + Fieldbyname('SodurPlace_l1').AsString;
        // dsw_idPLC
        s := s + ',' + StringReplace(Fieldbyname('SodurDate').AsString, '/', '',
          [rfReplaceAll]); // DSW_IDATE
        s := s + ',' + StringReplace(Fieldbyname('BirthDate').AsString, '/', '',
          [rfReplaceAll]); // DSW_BDATE
        s := s + ',' + Fieldbyname('sex_l1').AsString; // dsw_sex
        s := s + ',' + Trim(Fieldbyname('Nationality_L1').AsString) + 'ي';
        // dsw_nat

        // s := s + ',' + Fieldbyname('JobName').AsString;
        // dsw_ocp

        s := s + ',' + Get_Job_Desc(qryPersonels);
        // dsw_ocp

        if (leftstr(Fieldbyname('employDate').AsString, 4) = optP.Year) and
          (StrToIntDef(MidStr(Fieldbyname('employDate').AsString, 6, 2), 0)
          = MonthNo) then
          s := s + ',' + StringReplace(Fieldbyname('EmployDate').AsString, '/',
            '', [rfReplaceAll])
          // dsw_sdate
        else
          s := s + ',' + '';

        if (leftstr(Fieldbyname('finishEmployDate').AsString, 4) = optP.Year)
          and (StrToIntDef(MidStr(Fieldbyname('finishEmployDate').AsString, 6,
          2), 0) = MonthNo) then
          s := s + ',' + StringReplace(Fieldbyname('finishEmployDate').AsString,
            '/', '', [rfReplaceAll])
          // dsw_edate
        else
          s := s + ',' + ''; // dsw_edate
        s := s + ',' + Fieldbyname('FDaily').AsString; // dsw_dd
        s := s + ',' + Fieldbyname('DaySalary').AsString;
        // dsw_rooz
        s := s + ',' + Fieldbyname('containpay').AsString;
        // dsw_mah
        s := s + ',' + Fieldbyname('ContainWage').AsString;
        // dsw_maz
        s := s + ',' + Fieldbyname('ContainPayAndWage').AsString;
        // dsw_mash
        s := s + ',' + Fieldbyname('PayAndWage').AsString;
        /// dsw_totl
        s := s + ',' + Fieldbyname('InsouranceEmploye').AsString;
        // dsw_bime

        dsk_InsouranceHardWork := dsk_InsouranceHardWork +
          Fieldbyname('InsouranceHardWork').AsCurrency;
        s := s + ',' + qryBimeh.Fieldbyname('PoorsantRate').AsString;
        // DSW_PRATE

        s := s + ',' + Fieldbyname('DSW_JOB').AsString;
        // DSW_JOB

        s := s + ',' + IfThen(Fieldbyname('NationalID').AsString = '0', '',
          Fieldbyname('NationalID').AsString);
        // PER_NATCOD
        memDSKWOR00.Lines.Add(s);

        dsk_num := dsk_num + 1;
        dsk_tdd := dsk_tdd + Fieldbyname('FDaily').AsInteger;
        dsk_trooz := dsk_trooz + Fieldbyname('DaySalary').AsCurrency;
        // dsk_tmah := dsk_tmah + Fieldbyname('containpay').AsCurrency ;
        // dsk_tmaz := dsk_tmaz + Fieldbyname('ContainWage').AsCurrency ;
        dsk_tmah := dsk_tmah + Fieldbyname('containpay_DSW_INC').AsCurrency;
        dsk_tmaz := dsk_tmaz + Fieldbyname('ContainWage_DSW_SPOUSE').AsCurrency;
        dsk_tmash := dsk_tmash + Fieldbyname('ContainPayAndWage').AsCurrency;
        dsk_ttotl := dsk_ttotl + Fieldbyname('PayAndWage').AsCurrency;
        dsk_tbime := dsk_tbime + Fieldbyname('InsouranceEmploye').AsCurrency;
        dsk_tkoso := dsk_tkoso + Fieldbyname('InsouranceEmployer').AsCurrency;
        dsk_bic := dsk_bic + Fieldbyname('InsouranceInaction').AsCurrency;

        Next;
        GoProgressBar(Fieldbyname('PersonelName_L1').AsString);
      end;
    end;
    dsk_tkoso := GetExemption;
    with qryBimeh do // dskkar00
    begin
      s := Fieldbyname('WorkShop').AsString; // dsw_id
      s := s + ',' + Fieldbyname('EmployerName').AsString; // dsk_name
      s := s + ',' + Fieldbyname('EmployerName').AsString; // dsk_farm
      s := s + ',' + Fieldbyname('address').AsString; // dsk_adrs
      s := s + ',' + '0'; // dsk_kind
      s := s + ',' + optP.Year; // dsk_yy
      s := s + ',' + IntToStr(MonthNo); // dsk_mm
      s := s + ',' + (dsk_list_no); // dsk_listno   IntToStr
      s := s + ',' + 'ليست اصلي شامل بيمه بيكاري'; // dsk_disc
      s := s + ',' + IntToStr(dsk_num); // dsk_num
      s := s + ',' + IntToStr(dsk_tdd); // dsk_tdd
      s := s + ',' + CurrToStr(dsk_trooz); // dsk_trooz
      s := s + ',' + CurrToStr(dsk_tmah); // dsk_tmah
      s := s + ',' + CurrToStr(dsk_tmaz); // dsk_tmaz
      s := s + ',' + CurrToStr(dsk_tmash); // dsk_tmash
      s := s + ',' + CurrToStr(dsk_ttotl); // dsk_ttotl
      s := s + ',' + CurrToStr(dsk_tbime); // dsk_tbime
      s := s + ',' + CurrToStr(dsk_tkoso); // dsk_tkoso
      s := s + ',' + CurrToStr(dsk_bic); // dsk_bic
      s := s + ',' + FloatToStr(Fieldbyname('Employershare').AsFloat +
        Fieldbyname('Employeeshare').AsFloat +
        Fieldbyname('InactionInsuranceShare').AsFloat); // dsk_rate

      s := s + ',' + Fieldbyname('PoorsantRate').AsString; // DSK_PRATE
      s := s + ',' + CurrToStr(dsk_InsouranceHardWork); // DSK_BIMH
      s := s + ',' + qryBimehMON_PYM.AsString; // رديف پيمان     MON_PYM
      memDSKKAR00.Lines.Add(s);
    end;
    CloseMessage;
    s := 'تعداد پرسنل = ' + IntToStr(dsk_num) + #10 +
      'جمع روزهاي كاركرد ليست = ' + IntToStr(dsk_tdd) + #10 +
      'جمع دستمزد روزانه = ' + CurrToStrF(dsk_trooz, ffCurrency, 0) + #10 +
      'جمع دستمزد ماهيانه = ' + CurrToStrF(dsk_tmah, ffCurrency, 0) + #10 +
      'جمع مزاياي ماهيانه مشمول كسر حق بيمه = ' + CurrToStrF(dsk_tmaz,
      ffCurrency, 0) + #10 +
      'جمع كل دستمزد و مزاياي ماهيانه مشمول كسر حق بيمه = ' +
      CurrToStrF(dsk_tmash, ffCurrency, 0) + #10 +
      'جمع كل دستمزد و مزاياي ماهيانه مشمول و غيرمشمول كسر حق بيمه = ' +
      CurrToStrF(dsk_ttotl, ffCurrency, 0) + #10 + 'جمع حق بيمه سهم بيمه شده = '
      + CurrToStrF(dsk_tbime, ffCurrency, 0) + #10 +
      'جمع حق بيمه سهم كارفرما = ' + CurrToStrF(dsk_tkoso, ffCurrency, 0) + #10
      + 'جمع بيمه بيكاري = ' + CurrToStrF(dsk_bic, ffCurrency, 0);
    Warn(s, mtInformation);
    b1 := True;
    while b1 do
    begin

      if CdBurn then
        pa := __TheTempDIR
      else if pa = EmptyStr then
        SelectDirectory('لطفاً مسير تهيه ليست را انتخاب كنيد:‏', '', pa);
      b1 := False;
      F_i_l_e1 := format('dskwor%.2d.Txt', [dsk_list_no.ToInteger]);
      pa := IncludeTrailingPathDelimiter(pa);
      SaveUniCodeFile(memDSKWOR00.Lines.Text, pchar(pa + F_i_l_e1));
      F_i_l_e2 := format('dskkar%.2d.Txt', [dsk_list_no.ToInteger]);
      SaveUniCodeFile(memDSKKAR00.Lines.Text, pchar(pa + F_i_l_e2));
      if not FileExists(pchar(pa + F_i_l_e2)) then
      begin
        WarnMsg := 'اشكال در ايجاد فايل.';
        b1 := get_response(WarnMsg + ' دوباره سعي مي‌كنيد؟') = mrYes;
      end
      else
      begin
        b1 := False;
        Result := True;
      end;
      if CdBurn then
      begin
        SetCurrentDir(pa);
        if SysUtils.DirectoryExists('CdBurn') then
          DelDir('CdBurn');
        MkDir('CdBurn');
        CopyFile(pchar(pa + F_i_l_e1), pchar(pa + 'CdBurn\' + F_i_l_e1), False);
        CopyFile(pchar(pa + F_i_l_e2), pchar(pa + 'CdBurn\' + F_i_l_e2), False);
      end;

    end;
  finally
    qryPersonels.EnableControls;
    CloseMessage;
    if CdBurn then
      CdBurnTaxF.BackUpBurnCD(Caption);
    SetKeyboardFarsi;
  end;
end;

procedure TListBimehNewF.Memo1Click(Sender: TObject);
begin
  inherited;
  Memo1.Visible := False;
end;

procedure TListBimehNewF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  CdBurn := True;
  MakeDisk;
end;

procedure TListBimehNewF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  CdBurn := True;
  MakeDiskTxt;
end;

procedure TListBimehNewF.actBurnCDExecute(Sender: TObject);
begin
  inherited;
  popBurnCD.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TListBimehNewF.actDiskExecute(Sender: TObject);
begin
  inherited;
  popDisk.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

function TListBimehNewF.employDateChk(): Boolean;
var
  employDate, s: string;
  CountDay: Integer;
  ds: TDataSet;
begin
  lstWarnings.Items.Clear;
  ds := qryPersonels;
  Result := True;
  With qryPersonels do
    try
      DisableControls;
      while not Eof do
      begin
        if (ds.Fieldbyname('ContainPayAndWage').AsInteger > 0) and
          (TypeList = 1) and (ds.Fieldbyname('FDaily').AsInteger = 0) then
        begin
          s := format('پرسنل شماره %D  فاقد كاركرد روزانه مي باشد',
            [ds.Fieldbyname('PersonelNo').AsInteger]);
          ADDWarnings(s);
          Result := False;
        end;
        // else if (TypeList = 1) and
        // (ds.Fieldbyname('DaySalary_dailywage').AsInteger <> 0)
        // then
        // begin
        // s := format
        // ('پرسنل شماره %D  دستمزد روزانه از حداقل حقوق روزانه كمتر است',
        // [ds.Fieldbyname('PersonelNo').AsInteger]);
        // ADDWarnings(s);
        // Result := False;
        // end;
        employDate := ds.Fieldbyname('employDate').AsString;
        employDate := leftstr(employDate, 7);
        if employDate = optP.YearMounth then
        begin
          employDate := ds.Fieldbyname('employDate').AsString;
          CountDay := StandardDay - strtoint(RightStr(employDate, 2)) + 1;
          if (TypeList = 1) and (ds.Fieldbyname('FDaily').AsInteger > CountDay)
          then
          begin
            s := format
              ('پرسنل شماره %D داراي اين تعداد روز كاركرد نمي تواند باشد',
              [ds.Fieldbyname('PersonelNo').AsInteger]);
            ADDWarnings(s);
            Result := False;
          end;
        end;
        Next;
      end;
    finally
      EnableControls;
      qryPersonels.Last;
      pnlWarnings.Visible := not Result;
      pnlWarnings.BringToFront;
      actDisk.Enabled := Result;
      actBurnCD.Enabled := Result;
    end;
end;

procedure TListBimehNewF.ADDWarnings(s: string);
begin
  if lstWarnings.Items.IndexOf(s) = -1 then
    lstWarnings.Items.Add(s);
end;

procedure TListBimehNewF.ppDBText16GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + #254;
end;

function TListBimehNewF.GetExemption: Currency;
var
  Q: TADOQuery;
  MinDailySalary: Currency;
  Salary: Currency;
  RowExempt: Currency;
  AfterExempt: Currency;
  TotalEmployer: Currency;
  UsedExempt: Currency;
  DaysWorked: Integer;
  PersonIndex: Integer;
begin
  Result := 0;
  if qryBimeh.Fieldbyname('PeopleExempt').AsInteger <> 0 then
  begin

    TotalEmployer := 0;
    UsedExempt := 0;
    PersonIndex := 0;

    Q := TADOQuery.Create(nil);
    try
      Q.Connection := DMf.adcSalary;

      // ساخت جدول موقت
      Q.SQL.Text :=
        'IF OBJECT_ID(''Pay.InsouranceTemp'',''U'') IS NOT NULL DROP TABLE Pay.InsouranceTemp';
      Q.ExecSQL;

      Q.SQL.Clear;
      Q.SQL.Add('SELECT insuranceID, PeopleExempt, FDaily,');
      Q.SQL.Add('ContainPayAndWage AS SalaryMoshmool');
      Q.SQL.Add('INTO Pay.InsouranceTemp');
      Q.SQL.Add('FROM Pay.InsouranceForBime(');
      Q.SQL.Add(
        ':CompanyCodeFrom , :CompanyCodeTo , :YearMounth, 0, 2, :PersonelNoFrom,');
      Q.SQL.Add(
        ':PersonelNoTo, :FirstArchiveId, :LastArchiveId, :Mounth, :StateFrom,');
      Q.SQL.Add(
        ':StateTo, :PrvInfoID, :MounthRetard, :LabelIDFrom, :LabelIDTo');
      Q.SQL.Add(') AS InsouranceForBime');
      Q.SQL.Add('Where insuranceID in(' +
        GetcFrom(myParams.ParamValues['BimehType'], ftString) + ')');

      Q.Parameters.AssignValues(qryPersonels.Parameters);
      Q.ExecSQL;

      // گرفتن حداقل دستمزد
      Q.SQL.Text := 'SELECT TOP 1 MinDailySalary ' + 'FROM Pay.Insurance ' +
        'WHERE YearRun=:YearRun AND FormInfoID=:FormInfoID ' +
        'ORDER BY MonthRun DESC';

      Q.Parameters.ParamByName('FormInfoID').Value :=
        qryMaster.Fieldbyname('FormInfoID').AsInteger;

      Q.Parameters.ParamByName('YearRun').Value := APPBank.Year;

      Q.Open;
      MinDailySalary := Q.Fieldbyname('MinDailySalary').AsCurrency;
      Q.Close;

      // رکوردهای پرسنل
      Q.SQL.Text := 'SELECT SalaryMoshmool,FDaily ' + 'FROM Pay.InsouranceTemp '
        + 'ORDER BY SalaryMoshmool ASC';

      Q.Open;

      while not Q.Eof do
      begin
        Salary := Q.Fieldbyname('SalaryMoshmool').AsCurrency;
        DaysWorked := Q.Fieldbyname('FDaily').AsInteger;

        if PersonIndex < 5 then
        begin
          RowExempt := DaysWorked * MinDailySalary;

          if RowExempt > Salary then
            RowExempt := Salary;

          UsedExempt := UsedExempt + RowExempt;
        end
        else
          RowExempt := 0;

        AfterExempt := Salary - RowExempt;

        if AfterExempt < 0 then
          AfterExempt := 0;

        TotalEmployer := TotalEmployer + (AfterExempt * 0.20);

        Inc(PersonIndex);
        Q.Next;
      end;

      Q.Close;

      // 1 درصد معدن (اگر لازم بود)
        TotalEmployer := TotalEmployer + (UsedExempt * 0.01);

      Result := Round(TotalEmployer);

    finally
      Q.Free;
    end;

  end
  else
  begin
    Result := CalcSumFileds(qryPersonels, 'InsouranceEmployer');
  end;

  StatusBar1.Panels[1].Text := qryPersonels.Fieldbyname('InsouranceEmployer')
    .DisplayLabel + '=' + CurrToStrF(Result, ffCurrency, 0);

end;


// function TListBimehNewF.GetExemption: Currency;
// begin
// Result := 0;
// With DMf.qryTmpTmpp do
// begin
// CommandTimeout := 0;
// Active := False;
// SQL.Text :=
// 'IF EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N''Pay.InsouranceTemp'')';
// SQL.Add('and OBJECTPROPERTY(id, N''IsUserTable'') = 1 )');
// SQL.Add('DROP TABLE Pay.InsouranceTemp');
//
// ExecSQL;
// SQL.Text := EmptyStr;
//
// SQL.Add('SELECT insuranceID,PeopleExempt,InsouranceEmployer,FDaily INTO Pay.InsouranceTemp ');
// SQL.Add('FROM Pay.InsouranceForBime( :CompanyCodeFrom , :CompanyCodeTo , :YearMounth, 0, 2, :PersonelNoFrom,');
// SQL.Add(' :PersonelNoTo, :FirstArchiveId  , :LastArchiveId , :Mounth, :StateFrom,');
// SQL.Add(' :StateTo , :PrvInfoID , :MounthRetard  ,:LabelIDFrom  , :LabelIDTo ) AS InsouranceForBime');
// if chkFHours.Checked then
// SQL.Add('WHERE ((FDaily > 0) or(FHours>0))')
// else
// SQL.Add('WHERE (FDaily > 0)');
//
//
// SQL.Add('AND (insuranceID in(' + GetcFrom(myParams.ParamValues['BimehType'],
// ftString) + '))');
//
// SQL.Add('AND EmployTypeID in(' + GetcFrom(myParams.ParamValues
// ['EmployTypeID'], ftString) + ')');
//
// SQL.Add('AND (PersonelNo BETWEEN :PersonelNo2From AND :PersonelNo2To)');
//
// Parameters.AssignValues(qryPersonels.Parameters);
// ExecSQL;
// SQL.Text := EmptyStr;
//
// SQL.Add('SELECT SUM(InsouranceEmployer) AS InsouranceEmployer');
// SQL.Add('FROM (');
// SQL.Add('SELECT cast((COUNT(FDaily) - PeopleExempt) as float ) / ');
// SQL.Add('COUNT(FDaily) * SUM(InsouranceEmployer) AS InsouranceEmployer,');
// SQL.Add('insuranceID');
// SQL.Add('FROM Pay.InsouranceTemp ');
// SQL.Add('GROUP BY insuranceID, PeopleExempt');
// SQL.Add(') AS abcd');
// Active := True;
// Result := RoundTo(Fields[0].AsFloat, -2);
// Active := False;
// end;
// end;

procedure TListBimehNewF.qryPersonelsNationality_L1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  s: String;
begin
  inherited;
  s := Trim(Sender.AsString);
  if s <> '' then
    Text := s + 'ي';
end;

procedure TListBimehNewF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonels);
end;

procedure TListBimehNewF.Get_SexCount;
var
  cloned: TADOQuery;
begin
  cloned := TADOQuery.Create(Self);
  try
    with cloned do
    begin
      Clone(qryPersonels, ltReadOnly);
      First;
      CMen := 0;
      CWomen := 0;
      NotDaily := 0;
      while not Eof do
      begin
        if pos(cloned.Fieldbyname('Sex_L1').AsString, 'مرد') <> 0 then
          Inc(CMen)
        else
          Inc(CWomen);

        if cloned.Fieldbyname('FDaily').AsInteger = 0 then
          Inc(NotDaily);
        Next;
      end;
      // while
    end; // with
  finally
    cloned.Free;
  end; // try
end;

procedure TListBimehNewF.ppLabel78GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(CMen);
end;

procedure TListBimehNewF.ppLabel79GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(CWomen);
end;

procedure TListBimehNewF.ppLabel80GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(CWomen + CMen);
end;

procedure TListBimehNewF.actPrintVaExecute(Sender: TObject);
var
  p: TPoint;
begin
  inherited;
  p := ClientToScreen(Point(btnPrint.Left, btnPrint.Top + PnlUnderButton.Top));
  PopupMenu1.Popup(p.X + PopupMenu1.Items.Count * 35,
    p.Y - PopupMenu1.Items.Count * 20);

end;

procedure TListBimehNewF.ppLabel60GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + APPBank.CompanyName;
end;

procedure TListBimehNewF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonels);
end;

procedure TListBimehNewF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TListBimehNewF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryPersonels, 'Mobile');
end;

procedure TListBimehNewF.ppLblOffShootName_L1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + qryBimeh.Fieldbyname('OffShootName_L1').AsString
end;

procedure TListBimehNewF.AllClikPopClick(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := (Sender as TMenuItem).Hint;
  s := StringReplace(s, 'ListBimeh', 'ListBimehNew', [rfReplaceAll]);
  try
    qryPersonels.DisableControls;
    InitReportFile(ppListBimeh, s);
  finally
    qryPersonels.EnableControls;
  end; // try

end;

procedure TListBimehNewF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
  begin
    DBGrid1.SelectedIndex := DBGrid1.Columns.Count - 1;
    DBGrid1.SelectedSum := True;
    DBGrid1.FooterRowCount := 2;
    DBGrid1.SetFooter4Sum([]);
  end
  else
  begin
    DBGrid1.SumList.Active := False
  end;
end;

procedure TListBimehNewF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TListBimehNewF.dbf1Click(Sender: TObject);
begin
  inherited;
  CdBurn := False;
  pa := EmptyStr;
  if MakeDisk then
    BigMessage('ديسكت بيمه با موفقيت تهيه شد.', 1);
end;

procedure TListBimehNewF.AllClikeClick(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := (Sender as TMenuItem).Hint;
  s := StringReplace(s, 'ListBimeh', 'ListBimehNew', [rfReplaceAll]);
  try
    qryPersonels.DisableControls;
    InitReportFile(ppSumlist, s)
  finally
    qryPersonels.EnableControls;
  end; // try
end;

procedure TListBimehNewF.qryPersonelsAfterOpen(DataSet: TDataSet);
var
  InsouranceEmploye, InsouranceInaction, InsouranceHardWork: Currency;
begin
  inherited;
  Get_SexCount;
  // SumGrid1.Active := False;
  // SumGrid1.Active := True;
  // زراست حق بيمه سهم كارمند ،بيمه بيكاري ،سختي كار ،كارفرما ،جمع كل حق بيمه باشد

  // InsouranceEmployerAll := GetExemption;
  // CalcSumFileds(qryPersonels.Fieldbyname('InsouranceEmployer'));
  StatusBar1.Panels[1].Text := qryPersonels.Fieldbyname('InsouranceEmployer')
    .DisplayLabel + '=' + CurrToStrF(InsouranceEmployerAll, ffCurrency, 0);

  InsouranceHardWork := CalcSumFileds
    (qryPersonels.Fieldbyname('InsouranceHardWork'));
  StatusBar1.Panels[2].Text := qryPersonels.Fieldbyname('InsouranceHardWork')
    .DisplayLabel + '=' + CurrToStrF(InsouranceHardWork, ffCurrency, 0);

  InsouranceInaction := CalcSumFileds
    (qryPersonels.Fieldbyname('InsouranceInaction'));
  StatusBar1.Panels[3].Text := qryPersonels.Fieldbyname('InsouranceInaction')
    .DisplayLabel + '=' + CurrToStrF(InsouranceInaction, ffCurrency, 0);

  InsouranceEmploye := CalcSumFileds
    (qryPersonels.Fieldbyname('InsouranceEmploye'));
  StatusBar1.Panels[4].Text := qryPersonels.Fieldbyname('InsouranceEmploye')
    .DisplayLabel + '=' + CurrToStrF(InsouranceEmploye, ffCurrency, 0);

  if TypeList = 1 then
    InsouranceEmployerAll := GetExemption;
  InsouranceAll := InsouranceEmployerAll + InsouranceEmploye +
    InsouranceInaction + InsouranceHardWork;
  StatusBar1.Panels[0].Text := 'جمع=' + CurrToStrF(InsouranceAll,
    ffCurrency, 0);
  StatusBar1.Panels[5].Text := 'تعداد=' + IntToStr(DataSet.RecordCount);

end;

procedure TListBimehNewF.qryPersonelsDaySalary_dailywageGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  // Text := IfThen(qryPersonels.Fieldbyname('DaySalary_dailywage')    .AsInteger = 0, '', '*')
end;

procedure TListBimehNewF.ppLblGetExemptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(InsouranceEmployerAll, ffCurrency, 0)
end;

procedure TListBimehNewF.ppLblInsouranceAllGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(InsouranceAll, ffCurrency, 0)
end;

procedure TListBimehNewF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryPersonels do
  begin
    // Close;
    Parameters.ParamByName('PrvInfoID').Value :=
      qryMaster.Fieldbyname('FormInfoID').AsInteger;
    // Open;
  end;

  With frInsouranceCheck1.qryInsouranceCheck do
  begin
    Close;
    Parameters.ParamByName('PrvInfoID').Value :=
      qryMaster.Fieldbyname('FormInfoID').AsInteger;
    Open;
  end;

  if qryPersonels.Active then
    UpdateList;
end;

procedure TListBimehNewF.pdbtxtDSW_JOBGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := Get_Job_Desc(qryPersonels);
end;

end.
