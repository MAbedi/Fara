{ -----------------------------------------------------------------------------
  Unit Name: EmployeeLoanItem
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:    87/07/06
  ----------------------------------------------------------------------------- }
unit EmployeeLoanItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, Math,
  Buttons, Mask, DBCtrls, DB, ADODB, ppVar, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppClass, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppStrtch, ppSubRpt, sndkey32, Menus, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  CedarDbGrid, DBGridEh;

type
  TEmployeeLoanItemF = class(Ttemplate2MDIF)
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    qryInitForm: TADOQuery;
    qryPersonelDecExt: TADOQuery;
    SrcPersonelDecExt: TDataSource;
    actSendToExcel: TAction;
    actSort: TAction;
    qryPersonelDecExtDecExtID: TIntegerField;
    qryPersonelDecExtFormInfoID: TIntegerField;
    qryPersonelDecExtPersonelNo: TIntegerField;
    qryPersonelDecExtEmployeeAmount: TBCDField;
    qryPersonelDecExtAidNo1: TStringField;
    qryPersonelDecExtAidDate1_L1: TStringField;
    qryPersonelDecExtAidNo2: TStringField;
    qryPersonelDecExtAidDate2_L1: TStringField;
    qryPersonelDecExtDayTime: TFloatField;
    qryPersonelDecExtEmployerAmount: TBCDField;
    qryPersonelDecExtFormInfoID2: TIntegerField;
    qryPersonelDecExtAccTopicCode: TIntegerField;
    qryPersonelDecExtAccDetailCode: TIntegerField;
    qryPersonelDecExtAccCTopicCode: TIntegerField;
    qryPersonelDecExtAccCTopicCode2: TIntegerField;
    actRelAcc: TAction;
    qryPersonelDecExtDayQuntity: TFloatField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    actPrint: TAction;
    BitBtn11: TBitBtn;
    qryPersonelDecExtPaymentLoan: TBCDField;
    qryPersonelDecExtState: TWordField;
    qryPersonelDecExtAccCTopicCode3: TIntegerField;
    LblName: TLabel;
    qryItems: TADOQuery;
    SrcItem: TDataSource;
    qryItemsDecExtID: TIntegerField;
    qryItemsYears: TSmallintField;
    qryItemsMonths: TSmallintField;
    qryItemsAmount: TBCDField;
    qryPeronalInfo: TADOQuery;
    qryPersonelDecExt_Name: TStringField;
    CmbLoans: TComboBox;
    actCalc: TAction;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    LblAidDate1: TLabel;
    lblAidNo1: TLabel;
    LblAidDate2: TLabel;
    lblAidNo2: TLabel;
    SBnPersonelNo: TSpeedButton;
    Label4: TLabel;
    btnRelAcc: TBitBtn;
    edtEmployerAmount: TDBEdit;
    edtEmployeeAmount: TDBEdit;
    edtSettlement: TDBEdit;
    edtFirstMounth: TDBEdit;
    EdtAidNo2: TDBEdit;
    EdtAidDate2: TDBEdit;
    EdtAidDate1: TDBEdit;
    EdtAidNo1: TDBEdit;
    DBEdit6: TDBEdit;
    edtPersonelNo: TDBEdit;
    Label5: TLabel;
    edtDayTime: TDBEdit;
    btnCalc: TBitBtn;
    actSendToExcel2: TAction;
    Panel5: TPanel;
    PnlItems: TPanel;
    newPanel2: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel2: TPanel;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn18: TBitBtn;
    actDeleteAll: TAction;
    BitBtn19: TBitBtn;
    qryItemsID: TAutoIncField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    SysvarPageNum: TppSystemVariable;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppLabel5: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText6: TppDBText;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel12: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine2: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    btn1: TSpeedButton;
    lbl1: TLabel;
    dbmmoNote_L1: TDBMemo;
    qryPersonelDecExtSettlement: TBCDField;
    edtPaymentLoan: TDBEdit;
    lbl2: TLabel;
    actGetExcel: TAction;
    btnGetExcel: TBitBtn;
    qryPersonelDecExtFirstMounth: TIntegerField;
    qryPersonelDecExtEndMounth: TIntegerField;
    pMnuDBGrid2: TPopupMenu;
    NAmountCalc: TMenuItem;
    SpeedButton1: TSpeedButton;
    qryPersonelDecExtSettlementDate: TStringField;
    edtSettlementDate: TDBEdit;
    Label6: TLabel;
    edtEndMounth: TDBEdit;
    Label7: TLabel;
    popGetExcel: TPopupMenu;
    MenuItem1: TMenuItem;
    actGetExcelMS: TAction;
    Excel1: TMenuItem;
    Loanxls1: TMenuItem;
    N1: TMenuItem;
    actCalcAll: TAction;
    btnReInstallment: TBitBtn;
    qryItemsRemain: TBCDField;
    qryPersonelDecExtPayableDuringMonth: TWordField;
    cmbPayableDuringMonth: TDBComboBox;
    Label9: TLabel;
    qryPersonelDecExtStartYear: TIntegerField;
    edtStartYear: TDBEdit;
    Label10: TLabel;
    Panel7: TPanel;
    qryPersonelDecExtLastUser: TWideStringField;
    qryPersonelDecExtFirstUser: TWideStringField;
    txtLastUser: TDBText;
    txtFirstUser: TDBText;
    qryPersonelDecExtNote_L1: TWideStringField;
    qryPersonelDecExtNote_L2: TWideStringField;
    CheckBox1: TCheckBox;
    grd1: TCedarDbgrid;
    qryLoans: TADOQuery;
    qryPersonelDecExt_FormInfoID: TStringField;
    grd2: TCedarDbgrid;
    actCalcAllCurentRow: TAction;
    qryTmp: TADOQuery;
    qryTmpMounth: TWordField;
    qryPersonelDecExtYearID: TIntegerField;
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SrcPersonelDecExtStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryPersonelDecExtAfterPost(DataSet: TDataSet);
    procedure qryPersonelDecExtAfterInsert(DataSet: TDataSet);
    procedure actRelAccExecute(Sender: TObject);
    procedure SysvarPageNumGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryPersonelDecExtEmployeeAmountChange(Sender: TField);
    procedure qryPersonelDecExtBeforePost(DataSet: TDataSet);
    procedure qryPersonelDecExtPersonelNoChange(Sender: TField);
    procedure qryPersonelDecExtAfterScroll(DataSet: TDataSet);
    procedure SBnPersonelNoClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CmbLoansEnter(Sender: TObject);
    procedure CmbLoansChange(Sender: TObject);
    procedure SrcItemStateChange(Sender: TObject);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure grd2KeyPress(Sender: TObject; var Key: Char);
    procedure qryItemsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsBeforeInsert(DataSet: TDataSet);
    procedure actCalcExecute(Sender: TObject);
    procedure edtPersonelNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSendToExcel2Execute(Sender: TObject);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure qryPersonelDecExtBeforeDelete(DataSet: TDataSet);
    procedure qryItemsBeforeDelete(DataSet: TDataSet);
    procedure qryPersonelDecExtBeforeCancel(DataSet: TDataSet);
    procedure qryPersonelDecExtAidDate1_L1Change(Sender: TField);
    procedure NAmountCalcClick(Sender: TObject);
    procedure qryPersonelDecExtAfterCancel(DataSet: TDataSet);
    procedure qryPersonelDecExtBeforeScroll(DataSet: TDataSet);
    procedure btn1Click(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryPersonelDecExtEndMounthChange(Sender: TField);
    procedure actGetExcelMSExecute(Sender: TObject);
    procedure btnGetExcelClick(Sender: TObject);
    procedure actCalcAllExecute(Sender: TObject);
    procedure qryItemsAfterOpen(DataSet: TDataSet);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure qryPersonelDecExtPayableDuringMonthChange(Sender: TField);
    procedure qryPersonelDecExtAfterEdit(DataSet: TDataSet);
    procedure actCalcAllCurentRowExecute(Sender: TObject);
    procedure qryPersonelDecExtAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FormType: Byte;
    TopicKind, DetailKind, CTopicKind, CTopicKind2, CTopicKind3: Byte;
    YearMounth: String;
    GetExcelActive, IS_response: Boolean;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure CalcEndMounth;
    function Check4Edit: Boolean;
    procedure Updateremain;

  public
    { Public declarations }
  end;

var
  EmployeeLoanItemF: TEmployeeLoanItemF;

implementation

uses DM, sort2, search2, GlobalPro, mmessage, SalaryFunctions,
  searchCode_ADO, StrUtils, filter_ADO, FilterClass_ADO, GetExcel,
  GetExcelMasterDetails, FaraConsts, AccountP;

{$R *.dfm}

procedure TEmployeeLoanItemF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonelDecExt);
end;

procedure TEmployeeLoanItemF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonelDecExt);
end;

procedure TEmployeeLoanItemF.SrcPersonelDecExtStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryPersonelDecExt.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcSalary);

  PnlItems.Visible := okPanel.Visible;
  if PnlItems.Visible then
    Panel5.Height := 64
  else
    Panel5.Height := 32;

  actCalc.Visible := (okPanel.Visible) and (qryItems.Active);
  IF qryItems.Active THEN
    actCalc.Visible := (okPanel.Visible) and (qryItems.RecordCount = 0);
  actDeleteAll.Visible := okPanel.Visible;
  btnReInstallment.Visible := okPanel.Visible;
end;

procedure TEmployeeLoanItemF.InitForm;
begin
  with qryInitForm do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    /// /    EdtAidNo1.Visible:=FieldByName('AidInfoNo1Active').AsInteger=1;
    /// /    lblAidNo1.Visible:=EdtAidNo1.Visible;
    /// /    lblAidNo1.Caption:='شماره‏'+FieldByName('AidInfo1Caption').AsString;
    // EdtAidNo2.Visible:=FieldByName('AidInfoNo2Active').AsInteger=1;
    // lblAidNo2.Visible:=EdtAidNo2.Visible;
    // lblAidNo2.Caption:='شماره‏'+FieldByName('AidInfo2Caption').AsString;
    /// /    EdtAidDate1.Visible:=FieldByName('AidInfoDate1Active').AsInteger=1;
    /// /    LblAidDate1.Visible:=EdtAidDate1.Visible;
    /// /    LblAidDate1.Caption:='تاريخ‏‏'+FieldByName('AidInfo1Caption').AsString;
    // EdtAidDate2.Visible:=FieldByName('AidInfoDate2Active').AsInteger=1;
    // LblAidDate2.Visible:=EdtAidDate2.Visible;
    // LblAidDate2.Caption:='تاريخ‏‏'+FieldByName('AidInfo2Caption').AsString;

    TopicKind := FieldByName('TopicCodeKind').AsInteger;
    DetailKind := FieldByName('DetailCodeKind').AsInteger;
    CTopicKind := FieldByName('CTopicCodeKind').AsInteger;
    CTopicKind2 := FieldByName('CTopicCode2Kind').AsInteger;
    CTopicKind3 := FieldByName('CTopicCode3Kind').AsInteger;
  end; // with qryInitForm
end;

procedure TEmployeeLoanItemF.FormCreate(Sender: TObject);
begin
  inherited;
  // grd2.SetFooter4Sum(['Remain']);
  GetYearMounth(var_glb_CurrentMonth);
  GetExcelActive := false;
  Panel5.Height := 32;
  SetLookUpCash(qryPersonelDecExt);
  FormType := var_glb_gParam;
  qryPeronalInfo.Active := True;
  InitForm;
  InitCombos(CmbLoans,
    'SELECT FormsInfo.FormInfoID, FormsInfo.InfoName_L1 FROM Pay.FormsInfo ' +
    'INNER JOIN Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType ' +
    'WHERE FormTypes.SalaryKind=' + IntToStr(FormType));
  IS_response := false;
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryItems.State in dsEditModes then
    qryItems.Post;
  try
    qryItems.UpdateBatch;
    if (not GetExcelActive) and (not IS_response) then
      BigMessage('ثبت شد.', 1);
  except
  end; // try
  qryItems.Requery();
  Updateremain

end;

procedure TEmployeeLoanItemF.qryPersonelDecExtAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.fieldbyname('YearID').AsInteger := APPBank.Year;
  with qryPersonelDecExt do
  begin
    FieldByName('DecExtID').AsInteger :=
      GetANewCode(Self.name, 'Pay.PersonelDecExt', 'DecExtID', Dmf.adcSalary);
    FieldByName('FormInfoID').AsInteger :=
      integer(CmbLoans.Items.Objects[CmbLoans.ItemIndex]);
  end; // with
  actCalc.Visible := True;
  edtPersonelNo.SetFocus
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ColorDBEdits(Self)
end;

procedure TEmployeeLoanItemF.actRelAccExecute(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryPersonelDecExt);
end;

procedure TEmployeeLoanItemF.SysvarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TEmployeeLoanItemF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryPersonelDecExt.DisableControls;
    InitReportFile(ppReport1, 'EmployeeLoanItem');
  Finally
    qryPersonelDecExt.EnableControls;
  end; // try
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtEmployeeAmountChange
  (Sender: TField);
begin
  inherited;
  CalcEndMounth
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtEndMounthChange(Sender: TField);
var
  i: Int64;
begin
  inherited;
  if (qryPersonelDecExtEndMounth.AsLargeInt <> 0) and
    (qryPersonelDecExt.FieldByName('EmployeeAmount').AsLargeInt = 0) then
  begin
    i := qryPersonelDecExtEmployerAmount.AsLargeInt div
      qryPersonelDecExtEndMounth.AsLargeInt;
    if i <> qryPersonelDecExtEmployeeAmount.AsLargeInt then
      qryPersonelDecExtEmployeeAmount.AsLargeInt := i;
  end;
end;

procedure TEmployeeLoanItemF.CalcEndMounth;
var
  EmployeeAmount, EmployerAmount, m: Int64;
begin
  if qryPersonelDecExt.FieldByName('DayTime').AsInteger = 0 then
    qryPersonelDecExt.FieldByName('DayTime').AsInteger := APPBank.Year;
  EmployeeAmount := qryPersonelDecExt.FieldByName('EmployeeAmount').AsLargeInt;
  EmployerAmount := qryPersonelDecExt.FieldByName('EmployerAmount').AsLargeInt -
    qryPersonelDecExt.FieldByName('PaymentLoan').AsLargeInt;
  If EmployeeAmount > 0 then
    If EmployerAmount mod EmployeeAmount = 0 then
      qryPersonelDecExt.FieldByName('EndMounth').AsInteger :=
        EmployerAmount div EmployeeAmount
    else
    begin
      m := EmployerAmount mod EmployeeAmount;
      qryPersonelDecExt.FieldByName('EndMounth').AsInteger :=
        (EmployerAmount - m) div EmployeeAmount + 1;
    end
  else
    qryPersonelDecExt.FieldByName('EndMounth').AsInteger := 0;
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtBeforePost(DataSet: TDataSet);
var
  c: Currency;
begin
  inherited;
  CheckDouplicte(qryPersonelDecExt);
  if DataSet.FieldByName('FirstMounth').AsInteger <= 0 then
  begin
    Warn('قابل كسر از ماه وارد نشده.‏');
    Abort;
  end;
  if DataSet.FieldByName('FirstMounth').AsInteger > 13 then
  begin
    Warn('قابل كسر از ماه درست وارد نشده.‏');
    Abort;
  end;
  if (qryItems.State in dsEditModes) then
    qryItems.Post;
  c := qryPersonelDecExt.FieldByName('EmployerAmount').AsCurrency -
    (CalcSumFileds(qryItems.FieldByName('Amount')) +
    qryPersonelDecExt.FieldByName('PaymentLoan').AsCurrency);
  if (not GetExcelActive) and (c <> 0) then
  begin
    Warn('مبالغ اقساط با مقدار وام ' + CurrToStrF(c, ffCurrency, 0) +
      ' اختلاف دارد.!‏');
    Abort;
  end;

end;

procedure TEmployeeLoanItemF.qryPersonelDecExtPayableDuringMonthChange
  (Sender: TField);
begin
  inherited;
  if Sender.AsInteger > 0 then
    qryPersonelDecExtFirstMounth.AsInteger := Sender.AsInteger + 1;
  if qryPersonelDecExtFirstMounth.AsInteger > 12 then
  begin
    qryPersonelDecExtFirstMounth.AsInteger := 12;
    qryPersonelDecExtDayTime.AsInteger :=
      qryPersonelDecExtDayTime.AsInteger + 1;
  end;

end;

procedure TEmployeeLoanItemF.qryPersonelDecExtPersonelNoChange(Sender: TField);
begin
  inherited;
  with qryPersonelDecExt do
  begin
    if (TopicKind = 1) or (TopicKind = 4) or (TopicKind = 6) then
      FieldByName('AccTopicCode').AsInteger := Calculate_AccCode(1, TopicKind,
        FieldByName('PersonelNo').AsInteger);
    if (DetailKind = 1) or (DetailKind = 4) or (DetailKind = 6) then
      FieldByName('AccDetailCode').AsInteger := Calculate_AccCode(2, DetailKind,
        FieldByName('PersonelNo').AsInteger);
    if (CTopicKind = 1) or (CTopicKind = 4) or (CTopicKind = 6) then
      FieldByName('AccCTopicCode').AsInteger := Calculate_AccCode(3, CTopicKind,
        FieldByName('PersonelNo').AsInteger);
    if (CTopicKind2 = 1) or (CTopicKind2 = 4) or (CTopicKind2 = 6) then
      FieldByName('AccCTopicCode2').AsInteger :=
        Calculate_AccCode(4, CTopicKind2, FieldByName('PersonelNo').AsInteger);
    if (CTopicKind3 = 1) or (CTopicKind3 = 4) or (CTopicKind3 = 6) then
      FieldByName('AccCTopicCode3').AsInteger :=
        Calculate_AccCode(5, CTopicKind3, FieldByName('PersonelNo').AsInteger);
  end; // with
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    Active := false;
    Parameters.ParamByName('DecExtID').Value := qryPersonelDecExt.FieldByName
      ('DecExtID').AsInteger;
    Active := True;
  end; // with
  With qryTmp do
  begin
    Active := false;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('PersonelNO').Value :=
      qryPersonelDecExtPersonelNo.AsInteger;
    Parameters.ParamByName('FunctionID').Value :=
      qryPersonelDecExtDecExtID.AsInteger;
    Active := True;

    YearMounth := RightStr('0' + IntToStr(APPBank.Year), 3) + '/' +
      RightStr('0' + qryTmpMounth.AsInteger.ToString, 2);

  end;
end;

procedure TEmployeeLoanItemF.SBnPersonelNoClick(Sender: TObject);
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
    'FROM         Pay.PersonelInfo ';
  if optP.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(Dmf.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام', 'Name', ' نام خانوادگي', 'lastName', 'نام پدر ',
      'fatherName', 'شماره شناسنامه', 'كد ملي'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(Dmf.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام ', ' نام خانوادگي', 'نام پدر', 'شماره شناسنامه',
      'كد ملي'], Results, [10, 100, 100, 100, 100, 100], alLeft);

  if s then
  begin
    if not(qryPersonelDecExt.State in dsEditModes) then
      exit;
    qryPersonelDecExt['PersonelNo'] := Results[0];
  end; // if
end;

procedure TEmployeeLoanItemF.SpeedButton1Click(Sender: TObject);
var
  Settlement: Currency;
begin
  inherited;
  With qryItems do
    try
      Settlement := RemainLoan(qryPersonelDecExt.FieldByName('PersonelNO')
        .AsInteger, qryPersonelDecExt.FieldByName('DecExtID').AsInteger);
      qryPersonelDecExt.FieldByName('Settlement').AsCurrency := Settlement;
      BeforeDelete := nil;
      while Settlement > qryItemsAmount.AsCurrency do
      begin
        Last;
        Settlement := Settlement - qryItemsAmount.AsCurrency;
        Delete;
      end;
      Edit;
      qryItemsAmount.AsCurrency := qryPersonelDecExt.FieldByName('Settlement')
        .AsCurrency;
      Post
    finally
      BeforeDelete := qryItemsBeforeDelete;
    end;
end;

procedure TEmployeeLoanItemF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPersonelDecExt.FieldByName('PersonelNo'))
end;

procedure TEmployeeLoanItemF.CmbLoansEnter(Sender: TObject);
begin
  inherited;
  CmbLoans.DroppedDown := True
end;

procedure TEmployeeLoanItemF.CmbLoansChange(Sender: TObject);
begin
  inherited;
  qryItems.Active := false;
  with qryPersonelDecExt do
  begin
    Active := false;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM Pay.PersonelDecExt');
    if CheckBox1.Checked then
    begin
      CmbLoans.Enabled := false;
      SQL.Add('where FormInfoID in(SELECT FormsInfo.FormInfoID');
      SQL.Add('FROM Pay.FormsInfo INNER JOIN');
      SQL.Add('Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType');
      SQL.Add('WHERE (FormTypes.SalaryKind IN (14)))');
    end
    else
    begin
      CmbLoans.Enabled := True;
      SQL.Add('where FormInfoID = :FormInfoID');
      Parameters.ParamByName('FormInfoID').Value :=
        integer(CmbLoans.Items.Objects[CmbLoans.ItemIndex]);
    end;
    Active := True;
  end;
end;

procedure TEmployeeLoanItemF.SrcItemStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryItems.State in dsEditModes;
  newPanel2.Visible := not okPanel2.Visible;
  // BtnReject.Cancel:=newPanel2.Visible;
end;

procedure TEmployeeLoanItemF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DecExtID').AsInteger := qryPersonelDecExt.FieldByName
    ('DecExtID').AsInteger;
end;

procedure TEmployeeLoanItemF.qryItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Updateremain
end;

procedure TEmployeeLoanItemF.Updateremain;
var
  c: Real48;
begin
  with qryItems do
    try
      qryItems.BeforeEdit := nil;
      DisableControls;
      c := qryPersonelDecExt.FieldByName('EmployerAmount').AsCurrency -
        qryPersonelDecExt.FieldByName('PaymentLoan').AsCurrency;
      while not Eof do
      begin
        c := c - FieldByName('Amount').AsCurrency;
        Edit;
        FieldByName('Remain').AsFloat := RoundTo(c, 0);
        Post;
        Next;
      end;
      First;
    finally
      qryItems.BeforeEdit := qryItemsBeforeEdit;
      EnableControls;
    end;
end;

procedure TEmployeeLoanItemF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('Amount').IsNull and DataSet.FieldByName('Months').IsNull
  then
  begin
    DataSet.Cancel;
    Abort
  end;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if RightStr('0' + qryItems.FieldByName('Years').AsString, 3) + '/' +
    RightStr('0' + qryItems.FieldByName('Months').AsString, 2) < '0' +
    LeftStr(qryPersonelDecExt.FieldByName('AidDate2').AsString, 5) then
  begin
    Warn('تاريخ اقساط نمي تواند از تاريخ وام كوچكتر باشد.‏');
    Abort;
  end;
end;

procedure TEmployeeLoanItemF.grd2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TEmployeeLoanItemF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: integer;
  curIndex: integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 2;
          2:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(grd2.Columns[nextIndex].Visible) OR
          (grd2.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      // #32,#157:  if curIndex in [1..4] then begin
      // key:=#0;
      /// /      DBGrid1EditButtonClick(sender);
      // end;//if
    end; // case
    if nextIndex >= 0 then
      while (nextIndex < grd2.Columns.Count - 1) and
        (not(grd2.Columns[nextIndex].Visible) OR
        (grd2.Columns[nextIndex].ReadOnly)) do
        Inc(nextIndex);
    if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
      nextIndex := -1;
    if (curIndex <> nextIndex) then
      case nextIndex of
        - 1:
          begin
            sendkey(vk_down, [], false);
            (Sender as TCedarDbgrid).SelectedIndex := 0;
          end; // 0
        -2:
          begin
            if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
              (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 0, 0);
          end; // -2
        -3:
          begin
            if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
              (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 1, 0);
          end; // -3
      else
        (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
  end; // case

end;

procedure TEmployeeLoanItemF.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not Check4Edit then
    Abort;
  if not(qryPersonelDecExt.State in dsEditModes) then
    qryPersonelDecExt.Edit
end;

function TEmployeeLoanItemF.Check4Edit;
begin
  Result := True;
  if Length(YearMounth) <> 6 then
    exit;
  Result := RightStr('0' + qryItems.FieldByName('Years').AsString, 3) + '/' +
    RightStr('0' + qryItems.FieldByName('Months').AsString, 2) > YearMounth;
  if not Result then
    Warn('به علت استفاده از اين قسط قابل ويرايش/حذف نمي‏باشد.!‏',
      mtInformation);
end;

procedure TEmployeeLoanItemF.qryItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryPersonelDecExt.State in dsEditModes) then
    qryPersonelDecExt.Edit
end;

procedure TEmployeeLoanItemF.actCalcAllCurentRowExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي تقسیط مجدد از سطر آخر كليه وامها مطمئن هستيد؟') <> mrYes
  then
    exit;
  IS_response := True;
  With qryPersonelDecExt do
    try
      // DisableControls;
      First;
      while not Eof do
      begin
        if qryItems.RecordCount > 0 then
        begin
          qryItems.Last;
          Edit;
          btnReInstallment.Click;
        end;
        Next;
      end;
    finally
      EnableControls;
      IS_response := false;
      BigMessage('انجام شد', 1);
    end;

end;

procedure TEmployeeLoanItemF.actCalcAllExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي محاسبه مجدد اقساط كليه وامها مطمئن هستيد؟') <> mrYes
  then
    exit;

  IS_response := True;
  With qryPersonelDecExt do
    try
      // DisableControls;
      First;
      while not Eof do
      begin
        if qryItems.RecordCount = 0 then
        begin
          Edit;
          actCalc.Execute;
        end;
        Next;
      end;
    finally
      EnableControls;
      IS_response := false;
      BigMessage('انجام شد', 1);
    end;
end;

procedure TEmployeeLoanItemF.actCalcExecute(Sender: TObject);
var
  i, Multi, EndMounth, FirstMounth, DayTime: integer;
  c, PaymentLoan, EmployerAmount, EmployeeAmount: Currency;
begin
  inherited;
  c := 0;
  With qryItems do
  begin
    if RecordCount > 0 then
      if IS_response or (get_response('آيا براي محاسبه مجدد اقساط مطمئن هستيد؟')
        <> mrYes) then
        exit;
    // DisableControls;
    // BeforeDelete:=nil;
    while not Eof do
    begin
      if Check4Edit then
        Delete
      else
        Next;
    end;
    // BeforeDelete:=qryItemsBeforeDelete;
  end;
  CalcEndMounth;
  With qryPersonelDecExt do
  begin
    EndMounth := FieldByName('EndMounth').AsInteger;
    PaymentLoan := FieldByName('PaymentLoan').AsCurrency;
    EmployerAmount := FieldByName('EmployerAmount').AsCurrency;
    EmployeeAmount := FieldByName('EmployeeAmount').AsCurrency;
    FirstMounth := FieldByName('FirstMounth').AsInteger;
    DayTime := FieldByName('DayTime').AsInteger;
  end;

  // if EmployerAmount/EmployeeAmount>255 then
  // begin
  // Warn('تعداد اقساط نمي تواند بزرگتر از 255 باشد.‏',mtInformation);
  // Exit
  // end;

  With qryItems do
  begin
    // AfterInsert:=nil;
    BigMessageProgBar('در حال محاسبه اقساط', EndMounth);
    for i := 0 to (EndMounth - 1) do
    begin
      if PaymentLoan + EmployerAmount = c then
        Break;
      Insert;
      // FieldByName('DecExtID').AsInteger:=qryPersonelDecExt.Fieldbyname('DecExtID').AsInteger;
      FieldByName('Amount').AsCurrency := EmployeeAmount;
      c := c + FieldByName('Amount').AsCurrency;
      Multi := (FirstMounth + i - 1) div 12;
      FieldByName('Months').AsInteger := FirstMounth + i - 12 * Multi;
      FieldByName('Years').AsInteger := DayTime + Multi;
      Post;
      GoProgressBar(IntToStr(i));
    end;
    Edit;
    FieldByName('Amount').AsCurrency := FieldByName('Amount').AsCurrency -
      ((EndMounth * EmployeeAmount) - (EmployerAmount - PaymentLoan));
    Post;
    EnableControls;
    // AfterInsert:=qryItemsAfterInsert;
  end;
  if not IS_response then
    BigMessage('انجام شد', 1);
end;

procedure TEmployeeLoanItemF.edtPersonelNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    SBnPersonelNo.Click;
  end; // if
end;

procedure TEmployeeLoanItemF.actSendToExcel2Execute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd2);
end;

procedure TEmployeeLoanItemF.actDeleteAllExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(Dmf.adcSalary, 'Months', 'ماه', '', ftInteger, dvDefaults, '1',
        '12', ciSimple, '', 'SELECT 1,12');
      AddItem(Dmf.adcSalary, 'Years', 'سال', '', ftInteger, dvDefaults, '1',
        '99', ciSimple, '', 'SELECT 1,99');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        // UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
  if get_response('آيا براي حذف كليه اقساط محدوده انتخاب شده مطمئن هستيد؟') <> mrYes
  then
    exit;
  With qryItems do
  begin
    Filter := '(Months>=' + IntToStr(GetcFrom(myParams.ParamValues['Months'],
      ftInteger)) + ' and Months<=' +
      IntToStr(GetcTo(myParams.ParamValues['Months'], ftInteger)) +
      ')and (Years>=' + IntToStr(GetcFrom(myParams.ParamValues['Years'],
      ftInteger)) + ' and  Years<=' +
      IntToStr(GetcTo(myParams.ParamValues['Years'], ftInteger)) + ')';
    Filtered := True;
    First;
    while not Eof do
    begin
      if not Check4Edit then
        exit;
      Next;
    end;
    First;
    BeforeDelete := nil;
    while not Eof do
      Delete;
    BeforeDelete := qryItemsBeforeDelete;
    Filtered := false;
  end;
  actCalc.Visible := True
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not LoanDelete(qryPersonelDecExt.FieldByName('DecExtID').AsInteger) then
    Abort
end;

procedure TEmployeeLoanItemF.qryItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not Check4Edit then
    Abort;
  if get_response('آيا از حذف قسط مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از انصراف مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtAidDate1_L1Change(Sender: TField);
var
  s: String;
begin
  inherited;
  if qryPersonelDecExt.FieldByName('DayTime').AsInteger = 0 then
  begin
    s := MidStr(qryPersonelDecExt.FieldByName('AidDate1').AsString, 0, 4);
    if s <> EmptyStr then
      qryPersonelDecExt.FieldByName('DayTime').AsInteger := StrToInt(s);
    if qryPersonelDecExt.FieldByName('DayTime').AsInteger = 0 then
      qryPersonelDecExt.FieldByName('DayTime').AsInteger := APPBank.Year;
    s := MidStr(qryPersonelDecExt.FieldByName('AidDate1').AsString, 6, 2);
    if s = '12' then
      qryPersonelDecExt.FieldByName('DayTime').AsInteger :=
        qryPersonelDecExt.FieldByName('DayTime').AsInteger + 1
  end;

  if qryPersonelDecExt.FieldByName('FirstMounth').AsInteger = 0 then
    qryPersonelDecExt.FieldByName('FirstMounth').AsInteger :=
      StrToInt(MidStr(qryPersonelDecExt.FieldByName('AidDate1').AsString,
      6, 2)) + 1;
  if qryPersonelDecExt.FieldByName('FirstMounth').AsInteger > 12 then
    qryPersonelDecExt.FieldByName('FirstMounth').AsInteger := 1

end;

procedure TEmployeeLoanItemF.NAmountCalcClick(Sender: TObject);
var
  c, Amount, PaymentLoan, EmployerAmount: Currency;
  i, m, y, Multi: integer;
begin
  inherited;
  i := 1;
  PaymentLoan := qryPersonelDecExt.FieldByName('PaymentLoan').AsCurrency;
  EmployerAmount := qryPersonelDecExt.FieldByName('EmployerAmount').AsCurrency;
  With qryItems do
  begin
    Amount := FieldByName('Amount').AsCurrency;
    if Amount <= 0 then
    begin
      Warn('مقدار معتبر وارد نشده است.!!‏', mtError);
      exit;
    end;
    if not IS_response then
      if RecordCount > 0 then
        if get_response('آيا براي محاسبه مبلغ قسط ' + #13 +
          CurrToStrF(FieldByName('Amount').AsCurrency, ffCurrency, 0) + #13 +
          ' به سطرهاي بعد مطمئن هستيد؟') <> mrYes then
          exit;

    // DisableControls;
    m := FieldByName('Months').AsInteger;
    y := FieldByName('Years').AsInteger;

    // ID:=Fieldbyname('ID').AsInteger;
    Last;
    BeforeDelete := nil; // ID<>Fieldbyname('ID').AsInteger
    while RightStr('0' + IntToStr(y), 3) + RightStr('0' + IntToStr(m), 2) <
      RightStr('0' + FieldByName('Years').AsString, 3) +
      RightStr('0' + FieldByName('Months').AsString, 2) do
      Delete;
    BeforeDelete := qryItemsBeforeDelete;

    c := CalcSumFileds(qryItemsAmount);
    while EmployerAmount - PaymentLoan > c do
    begin
      Append;
      FieldByName('Amount').AsCurrency := Amount;
      c := c + FieldByName('Amount').AsCurrency;
      Multi := (m + i - 1) div 12;
      FieldByName('Months').AsInteger := m + i - 12 * Multi;
      FieldByName('Years').AsInteger := y + Multi;
      Post;
      Inc(i);
    end;
    c := (EmployerAmount - PaymentLoan) - CalcSumFileds(qryItemsAmount);
    if c > 0 then
    begin
      Append;
      FieldByName('Amount').AsCurrency := c;
      Multi := (m + i - 1) div 12;
      FieldByName('Months').AsInteger := m + i - 12 * Multi;
      FieldByName('Years').AsInteger := y + Multi;
    end
    else
    begin
      Edit;
      FieldByName('Amount').AsCurrency := FieldByName('Amount').AsCurrency + c;
    end;
    Post;
    EnableControls;
  end;
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if qryItems.Active then
    qryItems.Requery();
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TEmployeeLoanItemF.qryPersonelDecExtBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryItems.Active := false
end;

procedure TEmployeeLoanItemF.btn1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT FormsInfo.FormInfoID,FormsInfo.InfoID, FormsInfo.InfoName_L1 '
    + ' FROM Pay.FormsInfo INNER JOIN Pay.FormTypes ON ' +
    'FormsInfo.FormType = FormTypes.FormType WHERE FormTypes.SalaryKind=' +
    IntToStr(FormType);
  s := searchCode_ADOF.SearchCode2(Dmf.adcSalary, 'وام ها', Txt,
    ['', 'كد', 'عنوان وام'], Results, [0, 50, 350], alLeft);
  if s then
    CmbLoans.ItemIndex := CmbLoans.Items.IndexOfObject
      (TObject(StrToInt(Results[0])));
  CmbLoansChange(CmbLoans);
end;

procedure TEmployeeLoanItemF.btnGetExcelClick(Sender: TObject);
begin
  inherited;
  popGetExcel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y)
end;

procedure TEmployeeLoanItemF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    GetExcelActive := True;
    GetExcelF.ShowImPortExcel(qryPersonelDecExt);
  finally
    GetExcelActive := false;
  end;
end;

procedure TEmployeeLoanItemF.actGetExcelMSExecute(Sender: TObject);
begin
  inherited;
  try
    GetExcelActive := True;
    GetExcelMasterDetailsF.ShowImPortExcel(qryPersonelDecExt, qryItems);
  finally
    GetExcelActive := false;
  end;
end;

procedure TEmployeeLoanItemF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TEmployeeLoanItemF.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

end.
