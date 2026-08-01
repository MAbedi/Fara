{ -----------------------------------------------------------------------------
  Unit Name: ArchiveInfo
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit ArchiveInfo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2, Grids, Vcl.DBGrids, StdCtrls, ExtCtrls, DBActns,
  ActnList, Buttons, DB, ADODB, Mask, DBCtrls, sndkey32,
  ComCtrls, ToolWin, MyComboBoxUnit, frmInsouranceCheck, FrmTaxCheck, Menus,
  frTaxKindCalc, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, System.ImageList, Vcl.ImgList;

type
  TArchiveInfo2F = class(Ttemplate2F)
    Panel1: TPanel;
    qryArchiveInfo: TADOQuery;
    srcArchiveInfo: TDataSource;
    actCal: TAction;
    actPrint: TAction;
    ActArchive: TAction;
    actSendToExcel: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    qryCalculateSalary: TADOQuery;
    srcFixedCalculated: TDataSource;
    qrySearch: TADOQuery;
    qrySearchPersonelNo: TIntegerField;
    qrySearchname_L1: TStringField;
    qrySearchname_L2: TStringField;
    qryArchiveInfoFixedCID: TAutoIncField;
    qryArchiveInfoFunctionID: TIntegerField;
    qryArchiveInfoFormInfoID: TIntegerField;
    qryArchiveInfoPersonelNO: TIntegerField;
    qryArchiveInfoProjectID: TIntegerField;
    qryArchiveInfoOfficeCode: TIntegerField;
    qryArchiveInfoJobCede: TIntegerField;
    qryArchiveInfoSalaryID: TIntegerField;
    qryArchiveInfoMounth: TWordField;
    qryArchiveInfoPrice: TBCDField;
    qryArchiveInfoBedBes: TWordField;
    qryArchiveInfoCalCulateKind: TWordField;
    qryArchiveInfoAccTopicCode: TLargeintField;
    qryArchiveInfoAccDetailCode: TIntegerField;
    qryArchiveInfoAccCTopicCode: TIntegerField;
    qryArchiveInfoAccCTopicCode2: TIntegerField;
    qryArchiveInfoArchiveDate: TStringField;
    qryArchiveInfoDocNo: TIntegerField;
    qryArchiveInfoDocDate: TStringField;
    ActBackWard: TAction;
    BitBtn7: TBitBtn;
    ActFillter: TAction;
    qryArchiveInfoShowListKind: TWordField;
    qryArchiveInfoArchiveID: TIntegerField;
    qryArchiveInfoPersoneName_L1: TStringField;
    qryArchiveInfoPersoneName_L2: TStringField;
    qryArchiveInfoProjectName_L1: TStringField;
    qryArchiveInfoProjectName_L2: TStringField;
    qryArchiveInfoSalaryName_L1: TStringField;
    qryArchiveInfoSalaryName_L2: TStringField;
    StatusBar1: TStatusBar;
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
    actDELETE: TAction;
    BitBtn8: TBitBtn;
    qryOutPersonel: TADOQuery;
    SrcOutPersonel: TDataSource;
    qryOutPersonelPersonelNo: TIntegerField;
    qryOutPersonelPersonName_L1: TStringField;
    qryOutPersonelPersonName_L2: TStringField;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GrpYears: TGroupBox;
    Label1: TLabel;
    mskPrsnlNo1: TMaskEdit;
    SpeedButton1: TSpeedButton;
    edtPrsnlName1: TEdit;
    SpeedButton2: TSpeedButton;
    mskPrsnlNo2: TMaskEdit;
    Label2: TLabel;
    edtPrsnlName2: TEdit;
    MskDate: TMaskEdit;
    Label3: TLabel;
    mskArchiveID: TMaskEdit;
    Label5: TLabel;
    qryArchiveInfoAccCTopicCode3: TIntegerField;
    ActArchiveDel: TAction;
    BitBtn9: TBitBtn;
    grpChecking: TGroupBox;
    qryChecking: TADOQuery;
    SrcChecking: TDataSource;
    grdChecking: TDBGrid;
    qryCheckingPersonelNo: TIntegerField;
    qryCheckingname_L1: TStringField;
    qryCheckinglastName_L1: TStringField;
    qryCheckingEmployeeAmount: TBCDField;
    qryCheckingYears: TIntegerField;
    qryCheckingFirstMounth: TSmallintField;
    qryCheckingEndMounth: TSmallintField;
    qryCheckingInfoName_L1: TStringField;
    stat1: TStatusBar;
    actSendToExcel2: TAction;
    pb1: TProgressBar;
    lbl1: TLabel;
    lbl2: TLabel;
    yrcmbx1: TYearComboBox;
    frInsouranceCheck1: TfrInsouranceCheck;
    qryMaster: TADOQuery;
    qryMasterFormInfoID: TIntegerField;
    qryMasterInfoID: TIntegerField;
    qryMasterInfoName_L1: TStringField;
    SrcMaster: TDataSource;
    grpMaster: TGroupBox;
    EdtCode: TDBEdit;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    frTaxCheck1: TfrTaxCheck;
    CheckBox1: TCheckBox;
    actCalAcc: TAction;
    btnOther: TBitBtn;
    actGETRemainedOffTime: TAction;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pnl1: TPanel;
    spl1: TSplitter;
    spl2: TSplitter;
    spl3: TSplitter;
    actCalcFilter: TAction;
    actClearingDocument: TAction;
    BitBtn10: TBitBtn;
    qryWageFormula: TADOQuery;
    qryWageFormulaSalaryID: TIntegerField;
    frmTaxKindCalc1: TfrmTaxKindCalc;
    actChecking4AllPersonnel: TAction;
    btnChecking4AllPersonnel: TBitBtn;
    Timer1: TTimer;
    qryWageCalc2: TADOQuery;
    qryWageCalc2FormInfoID: TIntegerField;
    actShowTime: TAction;
    qryFitful: TADOQuery;
    grdFitful: TCedarDbgrid;
    srcFitful: TDataSource;
    qryChecking4AllPersonnel: TADOQuery;
    Panel4: TPanel;
    BitBtn11: TBitBtn;
    Panel5: TPanel;
    Label4: TLabel;
    lblTax: TLabel;
    Timer2: TTimer;
    qryArchiveInfoProcCode: TIntegerField;
    qryArchiveInfoMounthRetard: TWordField;
    qryArchiveInfoYearRetard: TIntegerField;
    qryArchiveInfoYearID: TIntegerField;
    qryArchiveInfoYears: TIntegerField;
    qryArchiveInfoFormType: TSmallintField;
    qryArchiveInfoFormCaption_L1: TStringField;
    btnLabelIDFrom: TSpeedButton;
    mskLabelIDFrom: TMaskEdit;
    Label6: TLabel;
    edtLabelIDFrom: TEdit;
    btnLabelIDTo: TSpeedButton;
    mskLabelIDTo: TMaskEdit;
    Label7: TLabel;
    edtLabelIDTo: TEdit;
    qryFixedLabels: TADOQuery;
    srcFixedLabels: TDataSource;
    qryFitfulID: TLargeintField;
    qryFitfulFitfulID: TFMTBCDField;
    qryFitfulFitfulNote: TStringField;
    qryFixedLabelsLabelID: TIntegerField;
    qryFixedLabelsLabelDateTime: TDateTimeField;
    qryFixedLabelsDescriptions: TStringField;
    qryArchiveInfoLabelID: TIntegerField;
    qryArchiveInfoDescriptions: TStringField;
    SpeedButton3: TSpeedButton;
    AddToLabel: TAction;
    ImageList1: TImageList;
    pnlFixedLabels: TPanel;
    grdFixedLabels: TCedarDbgrid;
    btnOk: TSpeedButton;
    qryArchiveInfoSubCompanyCode: TIntegerField;
    grdArchiveInfo: TCedarDbgrid;
    procedure actCalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActArchiveExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure mskPrsnlNo1Change(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure _actSortExecute(Sender: TObject);
    procedure ActFillterExecute(Sender: TObject);
    procedure ActBackWardExecute(Sender: TObject);
    procedure qryArchiveInfoAfterOpen(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure actDELETEExecute(Sender: TObject);
    procedure qryArchiveInfoBeforeOpen(DataSet: TDataSet);
    procedure ActArchiveDelExecute(Sender: TObject);
    procedure edtPrsnlName1KeyPress(Sender: TObject; var Key: Char);
    procedure qryCheckingAfterOpen(DataSet: TDataSet);
    procedure actSendToExcel2Execute(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure actCalAccExecute(Sender: TObject);
    procedure mskPrsnlNo1Exit(Sender: TObject);
    procedure btnOtherClick(Sender: TObject);
    procedure actGETRemainedOffTimeExecute(Sender: TObject);
    procedure grdCheckingDblClick(Sender: TObject);
    procedure actCalcFilterExecute(Sender: TObject);
    procedure actClearingDocumentExecute(Sender: TObject);
    procedure actChecking4AllPersonnelExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actShowTimeExecute(Sender: TObject);
    procedure grdFitfulDblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure btnLabelIDFromClick(Sender: TObject);
    procedure qryFixedLabelsAfterInsert(DataSet: TDataSet);
    procedure mskLabelIDFromChange(Sender: TObject);
    procedure mskLabelIDFromExit(Sender: TObject);
    procedure AddToLabelExecute(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdFixedLabelsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    iGetTickCount: Cardinal;
    Mounth: byte;
    CalAcc_, IsArchiveInfoFilter, b_get_response: Boolean;
    CalAccArchiveID, MinPersonelNo, MaxPersonelNo, LabelID_I,
      companyCode: Integer;
    NotHasError: Boolean;
    UPDATESQL, JOINSQL, INSERTSQL, Checking4AllPersonnel: string;
    function Calculator: Boolean;
    procedure initForm;
    function CalcInsourance(s: String; CaptionName: String): Boolean;
    procedure CalcRetaerd;
    procedure BigMessageProgBar(ms: string; nCount: Integer;
      cStep: Integer = 1);
    procedure GoProgressBar(msg: string);
    procedure CalcExecute;
    function ChkArchive(Mounth: SmallInt): Boolean;
    procedure BigMessage(ms: string; nCount: Integer; cStep: Integer = 1);
    procedure initMask;
    // procedure Mashmool(FieldName, ParamToText, WhereSQL: string);
    procedure initSQL;
    procedure CalculatorWageFormula(RunOrder: SmallInt);
    procedure PostFixedCalculated(qryFixedCalculated: TADOQuery);
    function FixedCalculated_Locate(qryFixedCalculated: TADOQuery): Boolean;
    procedure initChecking4AllPersonnel;
    function ChkEndDateAnnuity: Boolean;
    procedure MashmoolNew(ParamToText: string);
    procedure WageCalcKind4;
    procedure GetLabelID;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure MashmoolNabod(ParamToText: string);
    procedure setValcompanyCode(qry: TADOQuery);
    procedure MashmoolNew404(ParamToText: string);

  public
    { Public declarations }
  end;

var
  ArchiveInfo2F: TArchiveInfo2F;

implementation

uses DM, Math, GlobalPro, search2, searchCode_ADO,
  StrUtils, sort2, MaskUtils, SalaryFunctions, CalcGETRemainedOffTime,
  rptPayableSalary, ArchiveInfoFilter, FaraConsts;

{$R *.dfm}

procedure TArchiveInfo2F.FormCreate(Sender: TObject);
begin
  inherited;
  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    companyCode := FcompanyCodeLogin
  else
    companyCode := 0;
  b_get_response := True;
  qryFixedLabels.Open;
  qryFitful.Open;
  iGetTickCount := 0;
  qryMaster.Open;
  initForm;
  DMF.qryTmpTmpp.CommandTimeout := 0;
end;

procedure TArchiveInfo2F.initSQL;
begin
  with qryCalculateSalary do
  begin
    SQL.Text := 'INSERT INTO Pay.FixedCalculated';
    SQL.Add('(LabelID , FunctionID,SubCompanyCode, FormInfoID, PersonelNO, ProjectID, OfficeCode,');
    SQL.Add('JobCede, SalaryID, Mounth, ProcCode , Price,BedBes, CalCulateKind, ');
    SQL.Add('AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2,');
    SQL.Add('AccCTopicCode3, ShowListKind,YearID,Years');
    INSERTSQL := SQL.Text;

    SQL.Text := 'UPDATE Pay.FixedCalculated';
    SQL.Add('SET ProjectID = ISNULL(FixCalc.ProjectID,0) ,');
    SQL.Add('OfficeCode = FixCalc.OfficeCode,');
    SQL.Add('JobCede = FixCalc.JobCode,');
    SQL.Add('AccTopicCode = ISNULL(FixCalc.AccTopicCode,0) ,');
    SQL.Add('AccDetailCode = ISNULL(FixCalc.AccDetailCode,0) , ');
    SQL.Add('AccCTopicCode =  ISNULL(FixCalc.AccCTopicCode,0),');
    SQL.Add('AccCTopicCode2 = ISNULL(FixCalc.AccCTopicCode2,0) ,');
    SQL.Add('AccCTopicCode3 = ISNULL(FixCalc.AccCTopicCode3,0) ');
    UPDATESQL := SQL.Text;

    SQL.Text := 'AND FixCalc.PersonelNo = FixedCalculated.PersonelNO ';
    SQL.Add('AND FixCalc.SalaryID = FixedCalculated.SalaryID ');
    SQL.Add('AND FixCalc.CalCulateKind = FixedCalculated.CalCulateKind ');
    SQL.Add('AND FixCalc.BedBes = FixedCalculated.BedBes ');
    SQL.Add('AND FixCalc.ShowListKind = FixedCalculated.ShowListKind ');
    SQL.Add('AND FixCalc.Mounth = FixedCalculated.Mounth');
    SQL.Add('AND  (Years = ' + optP.Year + ' ) AND  (YearID = ' +
      APPBank.Year.ToString + ' )');
    // SQL.Add('AND FixCalc.Years = FixedCalculated.Years');
    JOINSQL := SQL.Text;

  end
end;

procedure TArchiveInfo2F.Label4Click(Sender: TObject);
begin
  inherited;
  Timer2.Enabled := False;
end;

procedure TArchiveInfo2F.actCalAccExecute(Sender: TObject);
begin
  inherited;
  CalAcc_ := True;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT Max(ArchiveID)AS ArchiveID  FROM Pay.FixedCalculated ';
    SQL.Add('WHERE (Mounth = :Mounth) ');
    SQL.Add('AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    setValcompanyCode(DMF.qryTmpTmpp);

    Parameters.ParamByName('LabelIDFrom').Value :=
      StrToInt(trim(mskLabelIDFrom.Text));
    Parameters.ParamByName('LabelIDTo').Value :=
      StrToInt(trim(mskLabelIDTo.Text));
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));

    Parameters.ParamByName('LabelIDFrom').Value :=
      StrToInt(trim(mskLabelIDFrom.Text));
    Parameters.ParamByName('LabelIDTo').Value :=
      StrToInt(trim(mskLabelIDTo.Text));

    Active := True;
    CalAccArchiveID := FieldByName('ArchiveID').AsInteger;
    Active := False;
  end;
  CalcExecute
end;

procedure TArchiveInfo2F.actCalExecute(Sender: TObject);
begin
  inherited;

  GetLabelID;
  // grdFitful.Visible := True;
  iGetTickCount := GetTickCount;
  qryFitful.Requery;
  CalAccArchiveID := 0;
  CalAcc_ := False;
  CalcExecute;
  qryFitful.Sort := 'FitfulID DESC';

end;

procedure TArchiveInfo2F.GetLabelID;
begin
  LabelID_I := -1;
  if trim(mskLabelIDFrom.Text) <> '0' then
    if b_get_response and
      (get_response('آيا براي انجام محاسبات با کد ' + trim(mskLabelIDFrom.Text)
      + ' و عنوان ' + trim(edtLabelIDFrom.Text) + ' مطمئن هستید؟', clGreen) <>
      mrYes) then
      Abort;
  LabelID_I := StrToInt(trim(mskLabelIDFrom.Text));
  b_get_response := False;

end;

procedure TArchiveInfo2F.actChecking4AllPersonnelExecute(Sender: TObject);
var
  msg: string;
  i: Integer;
begin
  inherited;
  GetYearMounth(Mounth);
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT PersonelNo, name_L1 + '' '' + lastName_L1 AS Name';
    SQL.Add('FROM Pay.PersonelInfo');
    SQL.Add('WHERE (PersonelNo NOT IN');
    SQL.Add('(SELECT FixCalculateType1.PersonelNo');
    SQL.Add('FROM Pay.FixCalculateType1(:Mounth,:Year,:YearMounth,-999999,999999999)');
    SQL.Add(' AS FixCalculateType1 INNER JOIN Pay.FormsInfo ON FixCalculateType1.SalaryID = FormsInfo.FormInfoID');
    SQL.Add('WHERE (FormsInfo.Checking4AllPersonnel = 1)))');

    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('Year').Value := optP.Year;;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    // Parameters.ParamByName('PersonelNoFrom').Value := 0;
    // Parameters.ParamByName('PersonelNoTo').Value := 2147483647;

    SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    setValcompanyCode(DMF.qryTmpTmpp);

    Active := True;
    i := 0;
    while not Eof do
    begin
      msg := msg + #13#10 + Format('%s = %s',
        [FieldByName('PersonelNo').AsString, FieldByName('Name').AsString]);
      inc(i);
      if i = 5 then
        Last;
      Next;
    end;
    actChecking4AllPersonnel.Visible := not msg.IsEmpty;
    if actChecking4AllPersonnel.Visible then
    begin
      msg := 'بررسی ' + Checking4AllPersonnel + ' برای پرسنل ذیل ' +
        #13#10 + msg;
      if get_response(msg + #13#10 + 'تعداد=' + RecordCount.ToString + #13#10 +
        'آیا اطلاعات به Excel انتقال یابد؟') = mrYes then
        DataToExcel(DMF.qryTmpTmpp);
    end;

    Active := False;
  end;
end;

procedure TArchiveInfo2F.actClearingDocumentExecute(Sender: TObject);
begin
  inherited;
  GetLabelID;
  if get_response('آيا براي پاکسازی سند روی محدوده انتخاب شده مطمئن هستيد!؟‏')
    <> mrYes then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.FixedCalculated SET DocNo = 0 ,DocDate = ''''  ';
    SQL.Add('WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    setValcompanyCode(DMF.qryTmpTmpp);

    Parameters.ParamByName('LabelIDFrom').Value :=
      StrToInt(trim(mskLabelIDFrom.Text));
    Parameters.ParamByName('LabelIDTo').Value :=
      StrToInt(trim(mskLabelIDTo.Text));
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    BigMessage(IntToStr(ExecSQL) + ' پاکسازی ثبت شد.‏', 1);
  end;
  if qryArchiveInfo.Active then
    qryArchiveInfo.Requery();
end;

procedure TArchiveInfo2F.CalcExecute;
begin
  pb1.Max := 16;
  pb1.Min := 1;
  pb1.Step := 1;
  pb1.Position := 0;
  pb1.Visible := True;

  if (trim(edtPrsnlName1.Text) = '') or (trim(edtPrsnlName2.Text) = '') or
    (trim(mskPrsnlNo1.Text) = '') or (trim(mskPrsnlNo2.Text) = '') then
  begin
    Warn('محدوده را وارد كنيد!.‏');
    Exit;
  end; // if

  if not ChkEndDateAnnuity then
    Exit;

  // Mounth:=ToolBar1.b //cmbMounth.ItemIndex+1;
  // براي جلوگيري از ثبت اطلاعات تكراري از اين اسكيول استفاده شود
  if not CalAcc_ then
    with DMF.qryTmpTmpp do
    begin
      CommandTimeout := 0;
      Active := False;
      SQL.Text := 'SELECT * FROM Pay.FixedCalculated ' +
        'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
        + 'AND ( ArchiveDate >''0001/01/01'')';
      SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

      SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;

      SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
      setValcompanyCode(DMF.qryTmpTmpp);

      Parameters.ParamByName('LabelIDFrom').Value :=
        StrToInt(trim(mskLabelIDFrom.Text));
      Parameters.ParamByName('LabelIDTo').Value :=
        StrToInt(trim(mskLabelIDTo.Text));
      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNoTo').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));
      Active := True;
      if RecordCount > 0 then
      begin
        Warn('در محدوده انتخاب شده قبلا اطلاعات بايگاني شده است در صورت نياز به تغيير از محاسبه معوقه حقوق استفاده كنيد.‏',
          mtInformation);
        Exit;
      end; // if
    end;

  // درصورت نتيچه مثبت نياز به حذف اطلاعات دارد
  if not IsArchiveInfoFilter then
    with DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := 'SELECT * FROM Pay.FixedCalculated ' +
        'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)';
      SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

      SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;

      SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
      setValcompanyCode(DMF.qryTmpTmpp);

      Parameters.ParamByName('LabelIDFrom').Value :=
        StrToInt(trim(mskLabelIDFrom.Text));
      Parameters.ParamByName('LabelIDTo').Value :=
        StrToInt(trim(mskLabelIDTo.Text));
      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNoTo').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));
      Active := True;
      if RecordCount > 0 then
        if get_response
          ('با محدوده مورد نظر محاسبه انجام شده است.محاسبات جديد جايگزين شود؟' +
          #13#10 + IfThen(CalAcc_, 'محاسبه کدینگ حسابداری' + '')) <> mrYes then
          Exit;
    end; // with

  if not CalAcc_ then
    with DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := 'DELETE FROM Pay.FixedCalculated  ' +
        'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
        + 'AND  (ArchiveId = 0)';
      SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

      SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;

      SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
      setValcompanyCode(DMF.qryTmpTmpp);

      Parameters.ParamByName('LabelIDFrom').Value :=
        StrToInt(trim(mskLabelIDFrom.Text));
      Parameters.ParamByName('LabelIDTo').Value :=
        StrToInt(trim(mskLabelIDTo.Text));
      // 'AND (( ArchiveDate >=:ArchiveDate)or( ArchiveDate =null))';
      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNoTo').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));
      BigMessageProgBar(IntToStr(ExecSQL) + ' ركورد حذف شد.‏', 1);
    end;

  GoProgressBar('0');
  if Calculator then
  begin
    with DMF.qryTmpTmpp do
      try
        SQL.Text := 'UPDATE Pay.FixedCalculated';
        SQL.Add('SET ProjectID = Interdicts.ProjectID');
        SQL.Add('FROM Pay.FixedCalculated INNER JOIN');
        SQL.Add('Pay.Interdicts ON FixedCalculated.PersonelNO = Interdicts.PersonelNo');
        SQL.Add('WHERE (Interdicts.State < 50) ');
        SQL.Add('AND (FixedCalculated.ProjectID = 0)AND (Interdicts.ProjectID <> 0)');
        SQL.Add('AND (FixedCalculated.Mounth = :Mounth ) AND (FixedCalculated.ArchiveID = 0)');
        SQL.Add('AND (FixedCalculated.PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
        SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

        SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
        Parameters.ParamByName('YearID').Value := APPBank.Year;
        Parameters.ParamByName('Years').Value := optP.Year;

        SQL.Add('AND (Pay.FixedCalculated.SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
        setValcompanyCode(DMF.qryTmpTmpp);

        Parameters.ParamByName('LabelIDFrom').Value :=
          StrToInt(trim(mskLabelIDFrom.Text));
        Parameters.ParamByName('LabelIDTo').Value :=
          StrToInt(trim(mskLabelIDTo.Text));
        Parameters.ParamByName('Mounth').Value := Mounth;
        Parameters.ParamByName('PersonelNoFrom').Value :=
          StrToInt(trim(mskPrsnlNo1.Text));
        Parameters.ParamByName('PersonelNoTo').Value :=
          StrToInt(trim(mskPrsnlNo2.Text));
        BigMessageProgBar(IntToStr(ExecSQL) + ' پروژه در محاسبات ثبت شد.‏', 1);

        SQL.Text := 'UPDATE Pay.Functions';
        SQL.Add('SET ProjectID = Interdicts.ProjectID');
        SQL.Add('FROM Pay.Functions INNER JOIN');
        SQL.Add('Pay.Interdicts ON Functions.PersonelNO = Interdicts.PersonelNo');
        SQL.Add('WHERE (Interdicts.State < 50) ');
        SQL.Add('AND (Functions.ProjectID = 0)AND (Interdicts.ProjectID <> 0)');
        SQL.Add('AND (Functions.Mounth = :Mounth )');
        SQL.Add('AND (Functions.PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');

        SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
        Parameters.ParamByName('YearID').Value := APPBank.Year;
        Parameters.ParamByName('Years').Value := optP.Year;

        SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
        setValcompanyCode(DMF.qryTmpTmpp);

        Parameters.ParamByName('Mounth').Value := Mounth;
        Parameters.ParamByName('PersonelNoFrom').Value :=
          StrToInt(trim(mskPrsnlNo1.Text));
        Parameters.ParamByName('PersonelNoTo').Value :=
          StrToInt(trim(mskPrsnlNo2.Text));
        BigMessageProgBar(IntToStr(ExecSQL) + ' پروژه در كاركرد ثبت شد.‏', 1);
        //
        SQL.Text := 'UPDATE Pay.PersonelDecExt';
        SQL.Add('SET FormInfoID2 = Interdicts.ProjectID');
        SQL.Add(', ProjectInfoID = FormsInfo.InfoID');

        SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
        SQL.Add('Pay.Interdicts ON PersonelDecExt.PersonelNO = Interdicts.PersonelNo');

        SQL.Add('INNER JOIN Pay.FormsInfo ON Pay.Interdicts.ProjectID = FormsInfo.FormInfoID');

        SQL.Add('WHERE (Interdicts.State < 50) ');
        SQL.Add('AND (PersonelDecExt.FormInfoID2 = 0)AND (Interdicts.ProjectID <> 0)');
        // SQL.Add  ('AND (Functions.Mounth = :Mounth )');
        SQL.Add('AND (PersonelDecExt.PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
        // Parameters.ParamByName('Mounth').Value :=Mounth;

        SQL.Add(' AND  (PersonelDecExt.YearID = :YearID )');
        Parameters.ParamByName('YearID').Value := APPBank.Year;

        SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
        setValcompanyCode(DMF.qryTmpTmpp);

        Parameters.ParamByName('PersonelNoFrom').Value :=
          StrToInt(trim(mskPrsnlNo1.Text));
        Parameters.ParamByName('PersonelNoTo').Value :=
          StrToInt(trim(mskPrsnlNo2.Text));
        BigMessageProgBar(IntToStr(ExecSQL) +
          ' پروژه در وام/كسورات/اضافات ثبت شد.‏', 1); //

      except
        on E: Exception do
        begin
          Warn('اشكال در ثبت پروژه ها' + #13#10 + #13#10 + E.Message);
        end;

      end;
    if optP.SituationTime = 1 then
      SetSituationAll(1, Mounth, trim(mskPrsnlNo1.Text),
        trim(mskPrsnlNo2.Text), nil);
    pb1.Position := 100;

    if not IsArchiveInfoFilter then
      Warn('محاسبه شد ', mtInformation);
  end;
  ActFillter.Execute;
end;

function TArchiveInfo2F.Calculator: Boolean;
var
  ParamToText, S_Q_L: String;
begin
  // Result := False;
  // 0-اولین محاسبه این فرمول باشد
  // 1-بعد از محاسبه حقوق و مزايا و كسورات
  // 2- بعد از محاسبه بیمه
  // 3-بعد از محاسبه مالیات
  // 4-آخرین محاسبه این فرمول باشد

  CalculatorWageFormula(0);
  with qryCalculateSalary do
  begin
    BigMessageProgBar('1-در حال محاسبه حقوق و مزاياي كسورات...', 1);
    if CalAcc_ then
    begin
      SQL.Text := UPDATESQL;
      SQL.Add(',ProcCode = ISNULL(FixCalc.ProcCode,0) ');
      SQL.Add('FROM Pay.FixCalculateType1(:Mounth,:Year,:YearMounth,:PersonelNoFrom,:PersonelNoTo)');
      SQL.Add('AS FixCalc INNER JOIN Pay.FixedCalculated ON ');
      // SQL.Add('FixCalc.FunctionID = FixedCalculated.FormInfoID ');
      SQL.Add('1 = 1 ');
      SQL.Add(JOINSQL);
    end
    else
    begin
      SQL.Text := INSERTSQL;
      SQL.Add(',MounthRetard,YearRetard');
      SQL.Add(')SELECT ' + LabelID_I.ToString +
        ' AS LabelID ,FunctionID,SubCompanyCode, FunctionInfoID, PersonelNo,ISNULL(ProjectID,0) AS ProjectID,');
      SQL.Add(' OfficeCode, JobCode, SalaryID, Mounth,ISNULL(ProcCode,0) AS  ProcCode, ROUND(price,0) AS price,');
      SQL.Add('BedBes, CalCulateKind, ISNULL(AccTopicCode,0) AS AccTopicCode, ISNULL(AccDetailCode,0) AS AccDetailCode,');
      SQL.Add('ISNULL(AccCTopicCode,0) AS AccCTopicCode, ISNULL(AccCTopicCode2,0) AS AccCTopicCode2,');
      SQL.Add('ISNULL(AccCTopicCode3,0) AS AccCTopicCode3 , ShowListKind');
      S_Q_L := ',%d AS YearID,%s AS Years,%d AS MounthRetard,%s AS YearRetard';
      S_Q_L := Format(S_Q_L, [APPBank.Year, optP.Year, Mounth, optP.Year]);
      SQL.Add(S_Q_L);
      SQL.Add('FROM Pay.FixCalculateType1(:Mounth,:Year,:YearMounth,:PersonelNoFrom,:PersonelNoTo) AS');
      SQL.Add('FixCalculateType1');
      SQL.Add('WHERE (Price<>0)');
      if (CompanyFilterinLogin) and (not User.PowerAdmin) then
      begin
        SQL.Add('AND (SubCompanyCode = ' + companyCode.ToString + ' )');
      end;
    end;

    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('Year').Value := optP.Year;;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    BigMessageProgBar('2-در حال محاسبه حقوق و مزاياي كسورات...', 0);
    BigMessageProgBar('3-در حال محاسبه حقوق و مزاياي كسورات...', ExecSQL);
    GoProgressBar('1');

    /// /////////////////////////////////////////////////////////////////////////
    CalculatorWageFormula(1);
    /// /////////////////////////////////////////////////////////////////////////
    CalcRetaerd;
    /// /////////////////////////////////////////////////////////////////////////

    if not CalAcc_ then
    begin
      BigMessageProgBar('4-در حال بررسي حقوق و مزاياي كسورات...', 1);
      Active := False;

      SQL.Text := 'UPDATE Pay.FixedCalculated ' +
        'SET Price =ROUND( UpdateDifferanteCalculate_1.price + FixedCalculated.Price , 0)  '
        + 'FROM Pay.UpdateDifferanteCalculate(:Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo) AS UpdateDifferanteCalculate_1 INNER JOIN '
        + '         Pay.FixedCalculated ON UpdateDifferanteCalculate_1.FixedCID = FixedCalculated.FixedCID ';
      SQL.Add('WHERE (Pay.FixedCalculated.SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
      SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;

      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('Year').Value := optP.Year; // APank.Year ;
      Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
      // IntToStr(ABank.Year) +'/' + RightStr('0'+IntToStr(Mounth),2) ;
      setValcompanyCode(qryCalculateSalary);

      Parameters.ParamByName('PersonelNoFrom').Value := trim(mskPrsnlNo1.Text);
      Parameters.ParamByName('PersonelNoTo').Value := trim(mskPrsnlNo2.Text);
      BigMessageProgBar('5-در حال بررسي حقوق و مزاياي كسورات...', ExecSQL);
      GoProgressBar('2');
    end;

    /// /////////////////////////////////////////////////////////////////////////////

    // ________________________________ محاسبه انواع بيمه ____________________________

    ParamToText := 'DEFAULT,' + IntToStr(Mounth) + ',' + optP.Year + ',''' +
      optP.YearMounth + ''',' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text) + ',' + CalAccArchiveID.ToString;
    CalcInsourance('Pay.Insourance(' + ParamToText + ')', ' محاسبه 30 درصد ');
    CalcInsourance('Pay.InsouranceEmployeeshare(' + ParamToText + ')',
      ' محاسبه 7 درصد ');
    CalcInsourance('Pay.InsouranceEmployershare(' + ParamToText + ')',
      ' محاسبه 23 درصد ');
    CalcInsourance('Pay.InsouranceContain(' + ParamToText + ')', ' مشمول ');
    CalcInsourance('Pay.InsouranceInaction(' + ParamToText + ')', ' بيكاري ');
    CalcInsourance('Pay.InsouranceHardWork(' + ParamToText + ')', ' سختي كار ');

    CalculatorWageFormula(2);
    // ________________________________ محاسبه مالیات و مشمول مالیات 1 ____________________________
    BigMessageProgBar('1-در حال محاسبه مالیات و مشمول مالیات', 1);
    Active := False;
    ParamToText := IntToStr(Mounth) + ',' + optP.Year + ',''' + optP.YearMounth
      + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text) + ',2,3';

    // MashmoolNew(ParamToText);
    MashmoolNew404(ParamToText);

    BigMessageProgBar('2-در حال محاسبه مالیات و مشمول مالیات', 0);
    // BigMessageProgBar('3-در حال محاسبه مالیات و مشمول مالیات', ExecSQL);
    GoProgressBar('3');
    //
    // // ________________________________ محاسبه مالیات و مشمول مالیات 2 ____________________________
    // BigMessageProgBar('4-در حال محاسبه مالیات و مشمول مالیات', 1);
    // Active := False;
    // ParamToText := IntToStr(Mounth) + ',' + optP.Year + ',''' + optP.YearMounth
    // + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
    // trim(mskPrsnlNo2.Text) + ',0,13';
    // BigMessageProgBar('5-در حال محاسبه مالیات و مشمول مالیات', 0);
    // GoProgressBar('4');
    //
    // // ________________________________ محاسبه مالیات و مشمول مالیات 3 ____________________________
    // BigMessageProgBar('7-در حال محاسبه مالیات و مشمول مالیات', 1);
    // Active := False;
    // ParamToText := IntToStr(Mounth) + ',' + optP.Year + ',''' + optP.YearMounth
    // + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
    // trim(mskPrsnlNo2.Text) + ',2,11';
    //
    // BigMessageProgBar('8-در حال محاسبه مالیات و مشمول مالیات', 0);
    // GoProgressBar('5');
    //
    // MashmoolNabod('');

    CalculatorWageFormula(3);
    // ________________________________ محاسبه بيمه تكميلي ____________________________
    BigMessageProgBar('1-در حال محاسبه بيمه تكميلي', 1);
    Active := False;
    { @Mounth,@Year@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo,@bedbes,@ShowListKind }
    ParamToText := IntToStr(Mounth) + ',' + optP.Year + ',''' + optP.YearMounth
      + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text) + ',2,11';

    if CalAcc_ then
    begin
      SQL.Text := UPDATESQL;
      SQL.Add(',ProcCode = ISNULL(FixCalc.ProcCode,0) ');
      SQL.Add('FROM Pay.Insournace_Takmily(' + ParamToText + ')');
      SQL.Add('AS FixCalc INNER JOIN Pay.FixedCalculated on ');
      SQL.Add('FixCalc.FormInfoID = FixedCalculated.FormInfoID ');
      SQL.Add(JOINSQL);
    end
    else
    begin
      SQL.Text := INSERTSQL;
      SQL.Add(')SELECT ' + LabelID_I.ToString +
        ' AS LabelID ,FunctionID,SubCompanyCode, FormInfoID, PersonelNo,ISNULL(ProjectID,0) AS ProjectID,OfficeCode,');
      SQL.Add('JobCode,SalaryID,Mounth, ISNULL(ProcCode,0) AS  ProcCode , ROUND(Price,0) as Price,');
      SQL.Add('bedbes,CalCulateKind,ISNULL(AccTopicCode,0) AS AccTopicCode,');
      SQL.Add(' ISNULL(AccDetailCode,0) AS AccDetailCode, ISNULL(AccCTopicCode,0) AS AccCTopicCode, ISNULL(AccCTopicCode2,0) AS AccCTopicCode2,');
      SQL.Add('ISNULL(AccCTopicCode3,0) AS AccCTopicCode3, ShowListKind');
      S_Q_L := ',%d AS YearID,%s AS Years';
      S_Q_L := Format(S_Q_L, [APPBank.Year, optP.Year]);
      SQL.Add(S_Q_L);
      SQL.Add('FROM Pay.Insournace_Takmily(' + ParamToText +
        ') Insournace_Takmily');
    end;
    BigMessageProgBar('2-در حال محاسبه بيمه تكميلي', 0);
    BigMessageProgBar('3-در حال محاسبه بيمه تكميلي', ExecSQL);
    GoProgressBar('6');

    WageCalcKind4;

    CalculatorWageFormula(4);

    Result := True;
  end;
end;

procedure TArchiveInfo2F.MashmoolNew(ParamToText: string);
var
  S_Q_L: string;
  ts: TStringList;
begin
  with qryCalculateSalary do
  begin
    if CalAcc_ then
    begin
      SQL.Text := UPDATESQL;
      // SQL.Add(',ProcCode = FixCalc.ProcCode');
      SQL.Add('FROM Pay.ContainTaxWithPerson(' + ParamToText + ',1)');
      SQL.Add('AS FixCalc INNER JOIN Pay.FixedCalculated on ');
      SQL.Add('FixCalc.FormInfoID = FixedCalculated.FormInfoID ');
      SQL.Add('CROSS JOIN Pay.SplitString(''11,12,13'', '','') AS SplitString_1');
      SQL.Add('WHERE ((part in(12,13))or(TaxValue >= 0))');
      // SQL.Add(JOINSQL);
      SQL.Add('AND FixCalc.PersonelNo = FixedCalculated.PersonelNO');
      SQL.Add('AND FixCalc.SalaryID = FixedCalculated.SalaryID');
      SQL.Add('AND SplitString_1.part = FixedCalculated.CalCulateKind');
      SQL.Add('AND CASE WHEN part = 11 THEN 2 ELSE 0 END = FixedCalculated.BedBes');
      SQL.Add('AND FixCalc.ShowListKind = FixedCalculated.ShowListKind');
      SQL.Add('AND FixCalc.Mounth = FixedCalculated.Mounth');
      SQL.Add('AND FixCalc.Years = FixedCalculated.Years');

    end
    else

    begin
      SQL.Text := INSERTSQL;
      SQL.Add(')SELECT ' + LabelID_I.ToString +
        ' AS LabelID ,ct.FunctionID,ct.SubCompanyCode, ct.FormInfoID, ct.PersonelNo, ISNULL(ct.ProjectID, 0) AS ProjectID, ct.OfficeCode, ct.JobCode');
      SQL.Add(', ct.SalaryID, ct.Mounth, 0 AS ProcCode');
      SQL.Add(', CASE WHEN part = 11 THEN ROUND(TaxValue, 0)');
      SQL.Add('WHEN part = 12 THEN ROUND(containTax, 0)');
      SQL.Add('WHEN part = 13 THEN ROUND(containTax2, 0) ELSE 0 END AS Price');
      SQL.Add(', CASE WHEN part = 11 THEN 2 ELSE 0 END AS bedbes');
      SQL.Add(', SplitString_1.part AS CalCulateKind, ISNULL(ct.AccTopicCode, 0) AS AccTopicCode');
      SQL.Add(', ISNULL(ct.AccDetailCode, 0) AS AccDetailCode, ISNULL(ct.AccCTopicCode, 0) AS AccCTopicCode');
      SQL.Add(', ISNULL(ct.AccCTopicCode2, 0) AS AccCTopicCode2, ISNULL(ct.AccCTopicCode3, 0) AS AccCTopicCode3');
      SQL.Add(', ct.ShowListKind');
      S_Q_L := ',%d AS YearID,%s AS Years';
      S_Q_L := Format(S_Q_L, [APPBank.Year, optP.Year]);
      SQL.Add(S_Q_L);
      SQL.Add('FROM Pay.ContainTaxWithPerson(' + ParamToText + ',1) AS ct');
      SQL.Add('CROSS JOIN Pay.SplitString(''11,12,13'', '','') AS SplitString_1');
      SQL.Add('WHERE ((part in(12,13))or(ct.TaxValue >= 0))');

    end;

    ts := TStringList.Create;
    ts.Text := ShowQryParam(qryCalculateSalary, True);
    // ts.SaveToFile(__TheTempDIR + 'TaxWith');
    ts.Free;
  end;
end;

// procedure TArchiveInfo2F.MashmoolNew404(ParamToText: string);
// var
// S_Q_L: string;
// ts: TStringList;
// begin
// with qryCalculateSalary do
// begin
// if CalAcc_ then
// begin
// SQL.Text := UPDATESQL;
// // SQL.Add(',ProcCode = FixCalc.ProcCode');
// SQL.Add('FROM Pay.SALARY_TAX_CALCULATED(' + ParamToText +
// ',1)AS FixCalc');
//
// // SQL.Add('WHERE (TXX >= 0)');
// SQL.Add('WHERE (TXX = TXX)');
//
//
// // SQL.Add(JOINSQL);
// SQL.Add('AND FixCalc.PersonelNo = FixedCalculated.PersonelNO');
// SQL.Add('AND FixCalc.SalaryID = FixedCalculated.SalaryID');
//
// SQL.Add('AND FixCalc.ShowListKind = FixedCalculated.ShowListKind');
// SQL.Add('AND FixCalc.Mounth = FixedCalculated.Mounth');
// SQL.Add('AND FixCalc.Years = FixedCalculated.Years');
//
// end
// else
//
// begin
// SQL.Text := INSERTSQL;
// SQL.Add(')SELECT ' + LabelID_I.ToString + ' AS LabelID ');
// SQL.Add(', FunctionID, SubCompanyCode, FormInfoID, PersonelNo, ProjectID, OfficeCode,');
// SQL.Add('JobCode, SalaryID, Mounth, ProcCode,');
// SQL.Add('CASE WHEN TXX<0 THEN 0 ELSE TXX END AS Price, bedbes, CalCulateKind,');
//
// SQL.Add(' ISNULL(AccTopicCode, 0) AS AccTopicCode');
// SQL.Add(', ISNULL(AccDetailCode, 0) AS AccDetailCode, ISNULL(AccCTopicCode, 0) AS AccCTopicCode');
// SQL.Add(', ISNULL(AccCTopicCode2, 0) AS AccCTopicCode2, ISNULL(AccCTopicCode3, 0) AS AccCTopicCode3');
// SQL.Add(', ShowListKind,' + APPBank.Year.ToString + ' YearID,' + optP.Year
// + ' Years');
// SQL.Add('FROM Pay.SALARY_TAX_CALCULATED(' + ParamToText + ',1)');
// // SQL.Add('WHERE (TXX >= 0)');   1
//
// end;
//
// ts := TStringList.Create;
// ts.Text := ShowQryParam(qryCalculateSalary, True);
// if CtrlDown then
// ts.SaveToFile(__TheTempDIR + 'SALARY_TAX_CALCULATED');
// ts.Free;
// end;
// end;

procedure TArchiveInfo2F.MashmoolNew404(ParamToText: string);
begin
  with qryCalculateSalary do
  begin
    Close;
    SQL.Clear;

    // حذف Temp Table قبلی در صورت وجود
    SQL.Add('IF OBJECT_ID(''tempdb..#TaxCalc'') IS NOT NULL DROP TABLE #TaxCalc;');

    // =============================
    // 1) ایجاد Temp Table مطابق خروجی SP
    // =============================
    SQL.Add('CREATE TABLE #TaxCalc (');
    SQL.Add('   FunctionID int,');
    SQL.Add('   FormInfoID int,');
    SQL.Add('   SubCompanyCode int,');
    SQL.Add('   PersonelNo int,');
    SQL.Add('   BeforeTaxValue decimal(18,2),');
    SQL.Add('   CalcMounth int,');
    SQL.Add('   ShowListKind int,');
    SQL.Add('   AccCTopicCode2  int,');
    SQL.Add('   AccCTopicCode3 int,');
    SQL.Add('   AccCTopicCode  int,');
    SQL.Add('   AccDetailCode  int,');
    SQL.Add('   AccTopicCode  bigint,');
    SQL.Add('   CalCulateKind tinyint,');
    SQL.Add('   BedBes tinyint,');
    SQL.Add('   YearID int,');
    SQL.Add('   Mounth int,');
    SQL.Add('   Years int,');
    SQL.Add('   SalaryID int,');
    SQL.Add('   JobCode int,');
    SQL.Add('   OfficeCode int,');
    SQL.Add('   ProjectID int,');
    SQL.Add('   ProcCode int,');
    SQL.Add('   TXX money,');
    SQL.Add('   reward money,');
    SQL.Add('   Current_RewardTax money');
    SQL.Add(')');
    ExecSQL;

    // =============================
    // 2) اجرای SP و ریختن در Temp Table
    // =============================
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO #TaxCalc');
    SQL.Add('EXEC Pay.SALARY_TAX_CALCULATED_SP ' + ParamToText);
    ExecSQL;

    // =============================
    // 3) اگر UPDATE
    // =============================
    if CalAcc_ then
    begin
      Close;
      SQL.Clear;
      SQL.Add(UPDATESQL);
      SQL.Add('FROM #TaxCalc FixCalc');
      SQL.Add('JOIN Pay.FixedCalculated ON 1=1');
      // SQL.Add(JOINSQL);
      SQL.Add('AND FixCalc.PersonelNo = FixedCalculated.PersonelNO');
      SQL.Add('AND FixCalc.SalaryID = FixedCalculated.SalaryID');

      SQL.Add('AND FixCalc.ShowListKind = FixedCalculated.ShowListKind');
      SQL.Add('AND FixCalc.Mounth = FixedCalculated.Mounth');
      SQL.Add('AND FixCalc.Years = FixedCalculated.Years');
      ExecSQL;
    end

    else

    // =============================
    // 4) اگر INSERT
    // =============================
    begin
      Close;
      SQL.Clear;
      SQL.Add(INSERTSQL);
      SQL.Add(')SELECT');
      SQL.Add('   ' + LabelID_I.ToString + ' AS LabelID,'); // مقدار پیش‌فرض
      SQL.Add('   FunctionID,');
      SQL.Add('   SubCompanyCode,');
      SQL.Add('   FormInfoID,');
      SQL.Add('   PersonelNo,');
      SQL.Add('   ProjectID,');
      SQL.Add('   OfficeCode,');
      SQL.Add('   JobCode AS JobCede,');
      SQL.Add('   SalaryID,');
      SQL.Add('   Mounth,');
      SQL.Add('   ProcCode,');
      SQL.Add('   CASE WHEN TXX < 0 THEN 0 ELSE TXX END AS Price,');
      SQL.Add('   BedBes,');
      SQL.Add('   CalCulateKind,');
      SQL.Add('   ISNULL(AccTopicCode,0)as AccTopicCode,');
      SQL.Add('   ISNULL(AccDetailCode,0)as AccDetailCode,');
      SQL.Add('   ISNULL(AccCTopicCode,0)as AccCTopicCode,');
      SQL.Add('   ISNULL(AccCTopicCode2,0)as AccCTopicCode2,');
      SQL.Add('   ISNULL(AccCTopicCode3,0)as AccCTopicCode3,');
      SQL.Add('   ShowListKind,');
      SQL.Add('   YearID,');
      SQL.Add('   Years');
      SQL.Add('FROM #TaxCalc');

      ExecSQL;
    end;

    // =============================
    // Debugging (Optional)
    // =============================
    if CtrlDown then
      ShowQryParam(qryCalculateSalary);
  end;
end;

procedure TArchiveInfo2F.MashmoolNabod(ParamToText: string);
begin
  // Exit;
  with qryCalculateSalary do
  begin
    SQL.Text := 'DECLARE @YearMounth varchar(7) =''' + optP.YearMounth + '''';
    SQL.Add(', @PersonelNoFROM int=' + trim(mskPrsnlNo1.Text));
    SQL.Add(',@PersonelNoTo int=' + trim(mskPrsnlNo2.Text));
    SQL.Add(',@LabelID int=' + trim(mskLabelIDFrom.Text));

    SQL.Add('INSERT INTO Pay.FixedCalculated');
    SQL.Add('(FunctionID,SubCompanyCode, FormInfoID, PersonelNO, ProjectID, OfficeCode, JobCede, SalaryID, Mounth, Price, BedBes,');
    SQL.Add('CalCulateKind, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, ProcCode,');
    SQL.Add('ShowListKind, YearID, Years, LabelID)');

    SQL.Add('SELECT 0 AS FunctionID,PF.SubCompanyCode, PF.TaxCalculationType AS FormInfoID, PF.PersonelNo, 0 AS ProjectID, 0 AS OfficeCode, 0 AS');
    SQL.Add('JobCode, PF.TaxCalculationType AS SalaryID, RIGHT(@YearMounth, 2) AS Mounth, 0 AS Price,');
    SQL.Add('CASE WHEN part = 11 THEN 2 ELSE 0 END AS bedbes, SplitString_1.part AS CalCulateKind, 0 AS');
    SQL.Add('AccTopicCode, PF.AccDetailCode, 0 AS AccCTopicCode, 0 AS AccCTopicCode2, 0 AS AccCTopicCode3, 0 AS ProcCode,');
    SQL.Add('11 AS ShowListKind, LEFT(@YearMounth, 4) AS YearID, LEFT(@YearMounth, 4) AS Years, @LabelID AS LabelID');
    SQL.Add('FROM Pay.PersonelInfo_Ins_Tax(@YearMounth, @PersonelNoFrom, @PersonelNoTo) AS PF CROSS JOIN');
    SQL.Add('Pay.SplitString(''11,12,13'', '','') AS SplitString_1 LEFT OUTER JOIN');
    SQL.Add('(SELECT PersonelNO, Mounth, SalaryID, COUNT(CASE WHEN (CalCulateKind IN (11,');
    // (Price = 0) AND
    SQL.Add('12, 13)) THEN 0 ELSE NULL END) AS IsTax');
    SQL.Add('FROM Pay.FixedCalculated');
    SQL.Add('WHERE (PersonelNO BETWEEN @PersonelNoFrom AND @PersonelNoTo)');
    SQL.Add(' AND (Mounth = CAST (RIGHT(@YearMounth, 2) AS int))');
    SQL.Add('GROUP BY PersonelNO, Mounth, SalaryID) AS F ON PF.TaxCalculationType = F.SalaryID AND');
    SQL.Add('PF.PersonelNo = F.PersonelNO AND CAST(RIGHT(@YearMounth, 2) AS int) = F.Mounth');
    SQL.Add('WHERE (ISNULL(F.IsTax,0) < 3)');

    BigMessageProgBar('9-در حال محاسبه غیر مشمول مالیات', 0);
    BigMessageProgBar('9-در حال محاسبه غیر مشمول مالیات', ExecSQL);
  end;
end;

procedure TArchiveInfo2F.CheckBox1Click(Sender: TObject);
begin
  inherited;
  qryArchiveInfo.Active := CheckBox1.Checked;
end;

procedure TArchiveInfo2F.ActArchiveExecute(Sender: TObject);
var
  MaxArchive: Integer;
begin
  inherited;
  GetLabelID;
  if get_response('آیا برای تمام پرسنل محاسبه انجام شده است؟' + #13#10 +
    'آيا براي بايگاني كردن اطلاعات مطمئن هستيد؟') <> mrYes then
    Exit;
  if ChkArchive(Mounth) then
  begin
    if get_response
      ('قبل از تهیه دیسکت باید وضعیت افرادی که حقوق انها منفی است تعیین تکلیف شوند. آیا مایل به مشاهده لیست خالص پرداختی هستید؟')
      <> mrYes then
      Exit;
    Visible := False;
    Close;
    CreateMDIForm2(TrptPayableSalaryF, rptPayableSalaryF, Self, 23);
    rptPayableSalaryF.rgMinusPrice.ItemIndex := 1;
  end
  else
  begin
    with DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := 'SELECT MAX(ArchiveID) as MaxArchive ' +
        'FROM Pay.FixedCalculated WHERE Mounth=' + IntToStr(Mounth);
      // cmbMounth.ItemIndex+1

      SQL.Add('AND (YearID = :YearID  ) AND (Years = :Years  )');
      SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');

      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;
      setValcompanyCode(DMF.qryTmpTmpp);

      Active := True;
      MaxArchive := FieldByName('MaxArchive').AsInteger;
      Active := False;
      SQL.Text :=
        'UPDATE Pay.FixedCalculated SET ArchiveDate=:ArchiveDate,ArchiveID = :ArchiveID WHERE (ArchiveDate IS NULL)';
      SQL.Add('and  Mounth=' + IntToStr(Mounth));

      SQL.Add('AND (YearID = :YearID  ) AND (Years = :Years  )');
      SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;

      setValcompanyCode(DMF.qryTmpTmpp);

      Parameters.ParamByName('ArchiveDate').Value := MskDate.Text;
      Parameters.ParamByName('ArchiveID').Value := MaxArchive + 1;
      BigMessage(IntToStr(ExecSQL) + ' ركورد ثبت شد.‏', 1);
      if optP.SituationTime = 2 then
        SetSituationAll(1, Mounth, trim(mskPrsnlNo1.Text),
          trim(mskPrsnlNo2.Text), nil);
    end; // with
    ActFillter.Execute;
  end;
end;

procedure TArchiveInfo2F.initForm;
var
  date: String;
begin
  initSQL;
  IsArchiveInfoFilter := False;
  Mounth := var_glb_CurrentMonth;
  if Mounth < 1 then
    Mounth := 1;
  ToolBar1.Buttons[Mounth - 1].Down := True;
  GetYearMounth(Mounth);
  GrpYears.Caption := 'سال ' + optP.Year;
  date := StringReplace(var_glb_CurrentDate, '/', '', [rfReplaceAll]);
  MskDate.Text := MaskDoFormatText('9999/99/99', date, '_');
  initMask;
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;
  // ActFillter.Execute;
  ToolBar1.Buttons[Mounth - 1].Click;

  initChecking4AllPersonnel;

end;

procedure TArchiveInfo2F.initChecking4AllPersonnel;
begin
  with qryChecking4AllPersonnel do
  begin
    Active := False;
    SQL.Text := 'declare @InfoName_L1 varchar(2000)=''''';
    SQL.Add('SELECT @InfoName_L1=@InfoName_L1+'' .:. ''+InfoName_L1');
    SQL.Add('FROM Pay.FormsInfo');
    SQL.Add('WHERE (Checking4AllPersonnel = 1)');
    SQL.Add('SELECT @InfoName_L1');
    Active := True;
    Checking4AllPersonnel := Fields[0].AsString;
    actChecking4AllPersonnel.Visible := Checking4AllPersonnel <> EmptyStr;
    NotHasError := NotHasError and (not actChecking4AllPersonnel.Visible);
    Timer1.Enabled := actChecking4AllPersonnel.Visible;
    // Active := False;
  end; // with
end;

procedure TArchiveInfo2F.initMask;
begin
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT MIN(PersonelNo), MAX(PersonelNo) FROM Pay.PersonelInfo';
    Active := True;
    MinPersonelNo := Fields[0].AsInteger;
    MaxPersonelNo := Fields[1].AsInteger;
    mskPrsnlNo1.Text := Fields[0].AsString;
    mskPrsnlNo2.Text := Fields[1].AsString;
    Active := False;
    SQL.Text := 'SELECT MAX(LabelID), MAX(LabelID) FROM Pay.FixedLabels';
    Active := True;
    LabelID_I := Fields[0].AsInteger;
    mskLabelIDFrom.Text := Fields[0].AsString;
    mskLabelIDTo.Text := Fields[1].AsString;
    mskLabelIDFromChange(mskLabelIDFrom);
    mskLabelIDFromChange(mskLabelIDTo);
    Active := False;
  end; // with
end;

procedure TArchiveInfo2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdArchiveInfo);
end;

procedure TArchiveInfo2F.actShowTimeExecute(Sender: TObject);
begin
  inherited;
  grdFitful.Visible := not grdFitful.Visible;
end;

procedure TArchiveInfo2F.AddToLabelExecute(Sender: TObject);
begin
  inherited;
  b_get_response := True;
  pnlFixedLabels.Visible := not pnlFixedLabels.Visible;
end;

procedure TArchiveInfo2F.FormResize(Sender: TObject);
begin
  inherited;

  SetColSize(grdChecking, 2, True);
end;

procedure TArchiveInfo2F.FormShow(Sender: TObject);
begin
  inherited;
  ActArchiveDel.Visible := not(((FAccessForm and Integer(akArchiveDel) <> 0)));
end;

procedure TArchiveInfo2F.FormDestroy(Sender: TObject);
begin
  inherited;

  SaveColWidth(grdChecking);
  DMF.qryTmpTmpp.CommandTimeout := 30;
end;

procedure TArchiveInfo2F.SpeedButton1Click(Sender: TObject);
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
  // Txt:=Txt+IfThen(FilterStore,'AND (Recipts.StoreID BETWEEN '+IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');

  Txt := 'SELECT  PersonelNo,' + TxtL1_L2 + ', NationalID, IDNumber ' +
    'FROM         Pay.PersonelInfo where  (PersonelNo IN  (' +
    'SELECT     PersonelInfo.PersonelNo  FROM Pay.Interdicts INNER JOIN ' +
    'Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN '
    + 'Pay.FormsInfo ON PersonelInfo.PersonelState = FormsInfo.FormInfoID LEFT OUTER JOIN '
    + 'Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID '
    + ' LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID '
    + 'WHERE (InterdicType = 0 ) AND  (Interdicts.State < 50) ';

  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    Txt := Txt + ' AND (Interdicts.subcompanyCode BETWEEN ' +
      FcompanyCodeLogin.ToString + ' AND ' + FcompanyCodeLogin.ToString + ') ';
  end;
  Txt := Txt + '))';

  if optP.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام 1', 'نام 2', ' نام خانوادگي 1', 'نام خانوادگي 2',
      'نام پدر 1', 'نام پدر 2', 'شماره شناسنامه', 'كد ملي'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام ', ' نام خانوادگي', 'نام پدر', 'شماره شناسنامه',
      'كد ملي'], Results, [10, 100, 100, 100, 100, 100], alLeft);

  if s then
    if (Sender as TSpeedButton).Tag = 1 then
    begin
      mskPrsnlNo1.Text := Results[0];
      edtPrsnlName1.Text := Results[1] + ' ' + Results[2];
    end
    else
    begin
      mskPrsnlNo2.Text := Results[0];
      edtPrsnlName2.Text := Results[1] + ' ' + Results[2];
    end;
end;

procedure TArchiveInfo2F.mskLabelIDFromChange(Sender: TObject);
var
  No: Integer;
  s: String;
begin
  inherited;
  b_get_response := True;
  s := '';
  if (trim((Sender as TMaskEdit).Text) = '') then
    Exit;
  qryFixedLabels.Open;
  No := StrToIntDef(trim((Sender as TMaskEdit).Text), 0);
  s := VarToStr(qryFixedLabels.Lookup('LabelID', No, 'Descriptions'));
  if (Sender as TMaskEdit).Tag = 1 then
    edtLabelIDFrom.Text := s
  else
    edtLabelIDTo.Text := s;
  if s = '' then
    (Sender as TMaskEdit).Font.Color := clRed
  else
    (Sender as TMaskEdit).Font.Color := clBlack;
end;

procedure TArchiveInfo2F.mskLabelIDFromExit(Sender: TObject);
begin
  inherited;
  mskLabelIDTo.Text := mskLabelIDFrom.Text
end;

procedure TArchiveInfo2F.mskPrsnlNo1Change(Sender: TObject);
var
  No: Integer;
  s: String;
begin
  inherited;
  s := '';
  if (trim((Sender as TMaskEdit).Text) = '') or
    (StrToInt(trim((Sender as TMaskEdit).Text)) = 0) then
    Exit;
  if not qrySearch.Active then
    qrySearch.Open;
  No := StrToIntDef(trim((Sender as TMaskEdit).Text), 0);
  s := VarToStr(qrySearch.Lookup('PersonelNo', No, 'name_L1'));
  if No = 0 then
    s := '';
  if (Sender as TMaskEdit).Tag = 1 then
    edtPrsnlName1.Text := s
  else
    edtPrsnlName2.Text := s;
  if s = '' then
    (Sender as TMaskEdit).Font.Color := clRed
  else
    (Sender as TMaskEdit).Font.Color := clBlack;
end;

procedure TArchiveInfo2F.mskPrsnlNo1Exit(Sender: TObject);
begin
  inherited;
  mskPrsnlNo2.Text := mskPrsnlNo1.Text
end;

procedure TArchiveInfo2F._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryArchiveInfo);
end;

procedure TArchiveInfo2F._actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryArchiveInfo);
end;

procedure TArchiveInfo2F.ActFillterExecute(Sender: TObject);
begin
  inherited;
  NotHasError := (frInsouranceCheck1.qryInsouranceCheck.RecordCount = 0);
  initChecking4AllPersonnel;
  if Not NotHasError then
  begin
    Warn('ابتدا نسبت به رفع خطاها اقدام كنيد', mtError);
  end;

  if mskPrsnlNo1.Text = '' then
  begin
    mskPrsnlNo1.Text := '0';
    mskPrsnlNo2.Text := '2147483647';
  end;
  with qryArchiveInfo do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));

    Parameters.ParamByName('LabelIDFrom').Value :=
      StrToInt(trim(mskLabelIDFrom.Text));
    Parameters.ParamByName('LabelIDTo').Value :=
      StrToInt(trim(mskLabelIDTo.Text));

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    setValcompanyCode(qryArchiveInfo);

    Active := CheckBox1.Checked;
  end; // with

  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT COUNT(*) FROM Pay.FixedCalculated WHERE (ArchiveID > 0)';
    SQL.Add('AND(PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) ');
    SQL.Add('AND (Mounth = :Mounth)');
    SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');

    SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    setValcompanyCode(DMF.qryTmpTmpp);

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    Parameters.ParamByName('LabelIDFrom').Value :=
      StrToInt(trim(mskLabelIDFrom.Text));
    Parameters.ParamByName('LabelIDTo').Value :=
      StrToInt(trim(mskLabelIDTo.Text));
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Active := True;
    actCal.Enabled := (Fields[0].AsInteger = 0);
    Active := False;
  end; // with

  ActBackWard.Enabled := not actCal.Enabled;
  with qryOutPersonel do
  begin
    Active := False;
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      Parameters.ParamByName('companyCodeFrom').Value := companyCode;
      Parameters.ParamByName('companyCodeTo').Value := companyCode;
      Parameters.ParamByName('companyCode2From').Value := companyCode;
      Parameters.ParamByName('companyCode2To').Value := companyCode;
    end
    else
    begin
      Parameters.ParamByName('companyCodeFrom').Value := 0;
      Parameters.ParamByName('companyCodeTo').Value := 2147483647;
      Parameters.ParamByName('companyCode2From').Value := 0;
      Parameters.ParamByName('companyCode2To').Value := 2147483647;
    end;

    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Active := True;
  end; // with
  with qryChecking do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Active := True;
    grpChecking.Visible := RecordCount > 0;
  end; // with

end;

procedure TArchiveInfo2F.ActBackWardExecute(Sender: TObject);
begin
  inherited;
  GetLabelID;
  if not ChkEndDateAnnuity then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT *  FROM Pay.FixedCalculated ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)';
    SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    setValcompanyCode(DMF.qryTmpTmpp);

    Parameters.ParamByName('LabelIDFrom').Value :=
      StrToInt(trim(mskLabelIDFrom.Text));
    Parameters.ParamByName('LabelIDTo').Value :=
      StrToInt(trim(mskLabelIDTo.Text));
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Active := True;
    if RecordCount > 0 then
      if get_response('محاسبه معوق' + #13#10 +
        'با محدوده مورد نظر محاسبه بایگانی شده وجود داردآیا برای انجام محاسبه معوق مطمئن هستید؟',
        clRed) <> mrYes then
        Exit;
  end; // with
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.FixedCalculated  ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + 'AND  (ArchiveId =0)';
    SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    setValcompanyCode(DMF.qryTmpTmpp);

    Parameters.ParamByName('LabelIDFrom').Value :=
      StrToInt(trim(mskLabelIDFrom.Text));
    Parameters.ParamByName('LabelIDTo').Value :=
      StrToInt(trim(mskLabelIDTo.Text));
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    BigMessage(IntToStr(ExecSQL) + ' ركورد حذف شد.‏', 1);
  end; // with
  if Calculator then
  begin
    pb1.Position := 100;
    if not IsArchiveInfoFilter then
      Warn('محاسبه شد ', mtInformation);
  end;

  ActFillter.Execute;
end;

procedure TArchiveInfo2F.qryArchiveInfoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // CloseMessage; 11
  StatusBar1.Panels[0].Text := 'جمع محاسبات = ' +
    CurrToStrF(CalcSumFileds(qryArchiveInfoPrice), ffCurrency, 0);
  StatusBar1.Panels[2].Text := 'تعداد محاسبات = ' +
    IntToStr(DataSet.RecordCount);
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT COUNT(ArchiveID) FROM (SELECT ArchiveID FROM Pay.FixedCalculated GROUP BY SubCompanyCode,ArchiveID, Mounth,YearID,Years';
    SQL.Add('HAVING (ArchiveID <> 0) AND (Mounth = ' + IntToStr(Mounth) +
      ')AND (Pay.FixedCalculated.YearID = :YearID  ) AND (Pay.FixedCalculated.Years = :Years  )');

    SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    SQL.Add(' ) DERIVEDTBL');
    setValcompanyCode(DMF.qryTmpTmpp);

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    Active := True;
    StatusBar1.Panels[1].Text := 'تعداد دفعات بايگاني = ' + Fields[0].AsString;
    Active := False;
  end; // with
end;

procedure TArchiveInfo2F.Timer1Timer(Sender: TObject);
begin
  inherited;
  if actChecking4AllPersonnel.Caption = 'بررسی...' then
    actChecking4AllPersonnel.Caption := 'بررسی'
  else
    actChecking4AllPersonnel.Caption := 'بررسی...'
end;

procedure TArchiveInfo2F.Timer2Timer(Sender: TObject);
begin
  inherited;
  lblTax.Visible := not lblTax.Visible;
end;

procedure TArchiveInfo2F.ToolButton1Click(Sender: TObject);
begin
  inherited;
  Mounth := (Sender as TToolButton).Tag;
  GetYearMounth(Mounth);
  ActFillter.Execute;
end;

function TArchiveInfo2F.ChkEndDateAnnuity: Boolean;
begin
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) AS EndDateCount';
    SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID');
    SQL.Add('WHERE (FormsInfo.FormType = 59) AND (FormsInfo.InfoID = 1)');
    SQL.Add('AND (LEFT(PersonelDecExt.EndDate, 5)  = :EndDate )');
    Parameters.ParamByName('EndDate').Value := optP.YearMounth;
    Active := True;
    Result := FieldByName('EndDateCount').AsInteger = 0;
    if not Result then
    begin
      Warn('در این ماه محاسبات عیدی بایگانی شده است،  بعد از محاسبه حقوق باید بایگانی عیدی انجام شود.');
    end;

  end;
end;

procedure TArchiveInfo2F.actDELETEExecute(Sender: TObject);
begin
  inherited;
  GetLabelID;
  if get_response('آيا براي حذف محاسبات با شماره بايگاني 0 مطمئن هستيد!؟‏') <> mrYes
  then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.FixedCalculated  ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + 'AND  (ArchiveId =0)';
    SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    setValcompanyCode(DMF.qryTmpTmpp);

    Parameters.ParamByName('LabelIDFrom').Value :=
      StrToInt(trim(mskLabelIDFrom.Text));
    Parameters.ParamByName('LabelIDTo').Value :=
      StrToInt(trim(mskLabelIDTo.Text));
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    BigMessage(IntToStr(ExecSQL) + ' ركورد حذف شد.‏', 1);
  end; // with
  if optP.SituationTime = 1 then
    SetSituationAll(0, Mounth, trim(mskPrsnlNo1.Text),
      trim(mskPrsnlNo2.Text), nil);
  if qryArchiveInfo.Active then
    qryArchiveInfo.Requery();

end;

procedure TArchiveInfo2F.qryArchiveInfoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  BigMessage('لطفا كمي صبر كنيد...‏', 0);
end;

function TArchiveInfo2F.CalcInsourance(s: String; CaptionName: String): Boolean;
begin
  with qryCalculateSalary do
  begin
    BigMessageProgBar('در حال محاسبه  بيمه' + CaptionName, 1);
    Active := False;
    if CalAcc_ then
    begin
      SQL.Text := UPDATESQL;
      SQL.Add(',ProcCode = ISNULL(FixCalc.ProcCode,0) ');
      SQL.Add('FROM');
      SQL.Add(s);
      SQL.Add('AS FixCalc INNER JOIN Pay.FixedCalculated on ');
      SQL.Add('FixCalc.FormInfoID = FixedCalculated.FormInfoID ');
      SQL.Add(JOINSQL);
    end
    else
    begin
      SQL.Text := INSERTSQL;
      SQL.Add(')SELECT ' + LabelID_I.ToString +
        ' AS LabelID ,insuranceID,SubCompanyCode, FormInfoID, PersonelNo, ISNULL(ProjectID,0) AS ProjectID, OfficeCode, JobCode,');
      SQL.Add('SalaryID, Mounth, ISNULL(ProcCode,0) AS  ProcCode, ROUND(Price, 0) AS Price, Bedbes,');
      SQL.Add('CalCulateKind, ISNULL(AccTopicCode,0) AS AccTopicCode,');
      SQL.Add('ISNULL(AccDetailCode,0) AS AccDetailCode,ISNULL(AccCTopicCode,0) AS AccCTopicCode ,');
      SQL.Add(' ISNULL(AccCTopicCode2,0) AS AccCTopicCode2,');
      SQL.Add('ISNULL(AccCTopicCode3,0) AS AccCTopicCode3 , ShowListKind');
      SQL.Add(Format(',%d AS YearID,%s AS Years', [APPBank.Year, optP.Year]));
      SQL.Add('FROM');
      SQL.Add(s);
    end;
    BigMessageProgBar('در حال محاسبه  بيمه ' + CaptionName, 0);
    BigMessageProgBar('اتمام محاسبه بیمه  ' + CaptionName, ExecSQL);
    GoProgressBar(CaptionName);
    Result := True;
  end;
end;

procedure TArchiveInfo2F.ActArchiveDelExecute(Sender: TObject);
var
  s, s1, s2: string;
begin
  inherited;
  if trim(mskArchiveID.Text) <> EmptyStr then
  begin

  end
  else

    with DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := 'SELECT FixedCalculated.PersonelNO';
      s1 := 'AS [شماره پرسنل],PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS [مشخصات پرسنل]';
      SQL.Add(s1);
      SQL.Add('FROM Pay.FixedCalculated INNER JOIN');
      SQL.Add('Pay.PersonelInfo ON FixedCalculated.PersonelNO = PersonelInfo.PersonelNo');
      SQL.Add('WHERE (FixedCalculated.Mounth = :Mounth) ');
      SQL.Add('AND(FixedCalculated.PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
      SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

      SQL.Add('AND (Years = :Years ) AND  (YearID = :YearID )');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;

      SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');

      SQL.Add('GROUP BY FixedCalculated.PersonelNO');
      s2 := ',PersonelInfo.name_L1, PersonelInfo.lastName_L1';
      SQL.Add(s2);
      SQL.Add('HAVING (COUNT(DISTINCT FixedCalculated.ArchiveID) > 1)');
      s := SQL.Text;
      s := s.Replace(s1, '', [rfReplaceAll]).Replace(s2, '', [rfReplaceAll]);
      setValcompanyCode(DMF.qryTmpTmpp);
      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNoTo').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));

      Parameters.ParamByName('LabelIDFrom').Value :=
        StrToInt(trim(mskLabelIDFrom.Text));
      Parameters.ParamByName('LabelIDTo').Value :=
        StrToInt(trim(mskLabelIDTo.Text));

      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;

      Active := True;
      if (RecordCount <> 0) then
      begin
        if (get_response
          ('در محدوده انتخابی پرسنلی وجود دارند که قابل حذف بایگانی نیستند .' +
          #13#10 + 'لیست پرسنل برای بررسی به اکسل ارسال می شود' + #13#10 +
          'آیا ادامه می دهید؟') = mrYes) then
          DataToExcel(DMF.qryTmpTmpp)
        else
          Exit;
      end;

      Active := False;
      SQL.Clear;
      SQL.Text := 'UPDATE Pay.FixedCalculated  ';
      SQL.Add('SET ArchiveDate = NULL, ArchiveID = 0 ');
      SQL.Add('WHERE (Mounth = :Mounth2) AND (PersonelNO NOT IN(' + s + '))');
      SQL.Add('AND(PersonelNO BETWEEN :PersonelNo2From AND :PersonelNo2To)');
      SQL.Add('AND(ISNULL(DocNo,0) = 0 ) AND (ISNULL(DocDate,'''') = '''')');
      SQL.Add('AND  (Years = :Years2 ) AND  (YearID = :YearID2 )');
      if (CompanyFilterinLogin) and (not User.PowerAdmin) then
      begin
        SQL.Add('AND (SubCompanyCode BETWEEN ' + companyCode.ToString + ' AND '
          + companyCode.ToString + ')');
      end;
      setValcompanyCode(DMF.qryTmpTmpp);

      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;
      Parameters.ParamByName('YearID2').Value := APPBank.Year;
      Parameters.ParamByName('Years2').Value := optP.Year;

      Parameters.ParamByName('Mounth2').Value := Mounth;
      Parameters.ParamByName('PersonelNo2From').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNo2To').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));
      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNoTo').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));
      Parameters.ParamByName('LabelIDFrom').Value :=
        StrToInt(trim(mskLabelIDFrom.Text));
      Parameters.ParamByName('LabelIDTo').Value :=
        StrToInt(trim(mskLabelIDTo.Text));

      BigMessage(IntToStr(ExecSQL) + ' ركورد حذف بايگاني شد.‏', 1);

    end;

  if optP.SituationTime = 2 then
    SetSituationAll(0, Mounth, trim(mskPrsnlNo1.Text),
      trim(mskPrsnlNo2.Text), nil);
  ActFillter.Execute;

end;

procedure TArchiveInfo2F.edtPrsnlName1KeyPress(Sender: TObject; var Key: Char);
var
  tc: Cardinal;
const
  t0: Cardinal = 0;
  __s: String = '';
begin
  inherited;
  tc := GetTickCount;
  if tc - t0 > 1500 then
    __s := Key
  else
    __s := __s + Key;
  if ((checkPasWrd(__s)) and
    (not(((FAccessForm and Integer(akArchiveDel) <> 0))))) then
    ActArchiveDel.Visible := not ActArchiveDel.Visible;
  t0 := tc;
  // Caption:=__s;
end;

procedure TArchiveInfo2F.grdCheckingDblClick(Sender: TObject);
begin
  inherited;
  grpChecking.Height := 100;
  frInsouranceCheck1.Height := 100;
  // frTaxCheck1.Height := 100;
end;

procedure TArchiveInfo2F.CalcRetaerd;
var
  i, Fromi: Integer;
  s: string;
begin
  With DMF.qryTmpTmpp do
  begin
    Close;
    // SQL.Text:='SELECT isnull(right(Pay.GetRetaredYearMounth('''+opt.YearMounth +'''),2),0)  ';
    SQL.Text := 'SELECT cast( right(Pay.GetRetaredYearMounth(''' +
      optP.YearMounth + '''),2) as int)';
    Open;
    Fromi := Fields[0].AsInteger;
    Close;
  end;
  if Fromi > 0 then
    for i := Fromi to Mounth - 1 do
      with qryCalculateSalary do
      begin
        BigMessageProgBar('در حال محاسبه حقوق و مزاياي معوقه...', 1);
        Active := False;
        if CalAcc_ then
        begin
          SQL.Text := UPDATESQL;
          SQL.Add(',ProcCode = ISNULL(FixCalc.ProcCode,0) ');
          SQL.Add('FROM Pay.FixCalculate_Retared(:Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo , :YearMounthRetared )');
          SQL.Add('AS FixCalc INNER JOIN Pay.FixedCalculated on ');
          SQL.Add('FixCalc.FunctionID = FixedCalculated.FormInfoID ');
          SQL.Add(JOINSQL);
          SQL.Add('AND (FixCalc.SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
        end
        else
        begin
          SQL.Text := INSERTSQL;
          SQL.Add(',MounthRetard,YearRetard');
          SQL.Add(')SELECT ' + LabelID_I.ToString +
            ' AS LabelID ,FunctionID,SubCompanyCode, FunctionInfoID, PersonelNo, ISNULL(ProjectID,0) AS ProjectID,');
          SQL.Add(' OfficeCode, JobCode, SalaryID,%d AS Mounth, ISNULL(ProcCode,0) AS  ProcCode, ROUND(price,0) AS price,');
          SQL.Text := Format(SQL.Text, [Mounth]);
          SQL.Add('BedBes, CalCulateKind, ISNULL(AccTopicCode,0) AS AccTopicCode,');
          SQL.Add('ISNULL(AccDetailCode,0) AS AccDetailCode,ISNULL(AccCTopicCode,0) AS AccCTopicCode , ');
          SQL.Add('ISNULL(AccCTopicCode2,0) AS AccCTopicCode2,');
          SQL.Add('ISNULL(AccCTopicCode3,0) AS AccCTopicCode3 , ShowListKind');

          s := ',%d AS YearID,%s AS Years,%d AS MounthRetard,%s AS YearRetard';
          s := Format(s, [APPBank.Year, optP.Year, i, optP.Year]);
          SQL.Add(s);

          SQL.Add('FROM Pay.FixCalculate_Retared(:Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo , :YearMounthRetared ) AS');
          SQL.Add('FixCalculateType1');
          SQL.Add('WHERE (price <> 0)'); // مختاری
          // SQL.Add('WHERE (price > 0)'); // هادی کریمی      (شبانیان961202)
          SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');

        end;

        setValcompanyCode(qryCalculateSalary);

        Parameters.ParamByName('Mounth').Value := i;
        Parameters.ParamByName('Year').Value := optP.Year;;
        Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
        Parameters.ParamByName('PersonelNoFrom').Value :=
          StrToInt(trim(mskPrsnlNo1.Text));
        Parameters.ParamByName('PersonelNoTo').Value :=
          StrToInt(trim(mskPrsnlNo2.Text));
        Parameters.ParamByName('YearMounthRetared').Value := optP.Year + '/' +
          RightStr('0' + IntToStr(i), 2);

        BigMessageProgBar('در حال محاسبه حقوق و مزاياي معوقه...', 0);
        // ShowQryParam(qryCalculateSalary);
        BigMessageProgBar('در حال محاسبه حقوق و مزاياي معوقه...', ExecSQL);
        GoProgressBar(IntToStr(7));
      end;

  qryWageCalc2.Close;
  qryWageCalc2.Open;
  while not qryWageCalc2.Eof do
  begin
    with qryCalculateSalary do
    begin
      BigMessageProgBar
        ('در حال محاسبه حقوق و مزاياي درصدي از حقوق محاسبه شده...', 1);
      Active := False;
      if CalAcc_ then
      begin
        SQL.Text := UPDATESQL;
        SQL.Add(',ProcCode = ISNULL(FixCalc.ProcCode,0)');
        SQL.Add('FROM Pay.FixCalculateType_2(:Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo ,:FormInfoID)');
        SQL.Add('AS FixCalc INNER JOIN Pay.FixedCalculated on ');
        SQL.Add('FixCalc.FunctionID = FixedCalculated.FormInfoID ');
        SQL.Add(JOINSQL);
      end
      else
      begin
        SQL.Text := INSERTSQL;
        SQL.Add(',MounthRetard,YearRetard');
        SQL.Add(')SELECT ' + LabelID_I.ToString +
          ' AS LabelID ,FunctionID,SubCompanyCode, FunctionInfoID, PersonelNo, ISNULL(ProjectID,0) AS ProjectID,');
        SQL.Add(' OfficeCode, JobCode, SalaryID, Mounth, ISNULL(ProcCode,0) AS  ProcCode, ROUND(price,0) AS price,');
        SQL.Add('BedBes, CalCulateKind, ISNULL(AccTopicCode,0) AS AccTopicCode,');
        SQL.Add(' ISNULL(AccDetailCode,0) AS AccDetailCode, ISNULL(AccCTopicCode,0) AS AccCTopicCode, ISNULL(AccCTopicCode2,0) AS AccCTopicCode2,');
        SQL.Add('ISNULL(AccCTopicCode3,0) AS AccCTopicCode3, ShowListKind');

        s := ',%d AS YearID,%s AS Years,%d AS MounthRetard,%s AS YearRetard';
        s := Format(s, [APPBank.Year, optP.Year, Mounth, optP.Year]);
        SQL.Add(s);

        SQL.Add('FROM Pay.FixCalculateType_2(:Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo ,:FormInfoID) AS');
        SQL.Add('FixCalculateType_2');
        SQL.Add('WHERE (price <> 0)');
        SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
        setValcompanyCode(qryCalculateSalary);

      end;

      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('Year').Value := optP.Year;;
      Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNoTo').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));
      Parameters.ParamByName('FormInfoID').Value :=
        qryWageCalc2FormInfoID.AsInteger;
      BigMessageProgBar
        ('در حال محاسبه حقوق و مزاياي درصدي از حقوق محاسبه شده...', 0);
      BigMessageProgBar
        ('در حال محاسبه حقوق و مزاياي درصدي از حقوق محاسبه شده...', ExecSQL);
      GoProgressBar(IntToStr(8));
    end;
    qryWageCalc2.Next;
  end;

end;

procedure TArchiveInfo2F.WageCalcKind4;
var
  s: string;
begin
  with qryCalculateSalary do
  begin
    BigMessageProgBar('در حال محاسبه بازگردانی کسورات...', 1);
    Active := False;
    if CalAcc_ then
    begin
      SQL.Text := UPDATESQL;
      SQL.Add(',ProcCode = ISNULL(FixCalc.ProcCode,0)');
      SQL.Add('FROM Pay.FixCalculateType_3(:Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo ,:FormInfoID)');
      SQL.Add('AS FixCalc INNER JOIN Pay.FixedCalculated on ');
      SQL.Add('FixCalc.FunctionID = FixedCalculated.FormInfoID ');
      SQL.Add(JOINSQL);
    end
    else
    begin
      SQL.Text := INSERTSQL;
      SQL.Add(',MounthRetard,YearRetard');
      SQL.Add(')SELECT ' + LabelID_I.ToString +
        ' AS LabelID ,FunctionID,SubCompanyCode, FunctionInfoID, PersonelNo, ISNULL(ProjectID,0) AS ProjectID,');
      SQL.Add(' OfficeCode, JobCode, SalaryID, Mounth, ISNULL(ProcCode,0) AS  ProcCode, ROUND(price,0) AS price,');
      SQL.Add('BedBes, CalCulateKind, ISNULL(AccTopicCode,0) AS AccTopicCode,');
      SQL.Add(' ISNULL(AccDetailCode,0) AS AccDetailCode, ISNULL(AccCTopicCode,0) AS AccCTopicCode, ISNULL(AccCTopicCode2,0) AS AccCTopicCode2,');
      SQL.Add('ISNULL(AccCTopicCode3,0) AS AccCTopicCode3, ShowListKind');

      s := ',%d AS YearID,%s AS Years,%d AS MounthRetard,%s AS YearRetard';
      s := Format(s, [APPBank.Year, optP.Year, Mounth, optP.Year]);
      SQL.Add(s);

      SQL.Add('FROM Pay.FixCalculateType_3(:Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo ,:FormInfoID) AS');
      SQL.Add('FixCalculateType_3');
      SQL.Add('WHERE (price <> 0)');
      SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
      setValcompanyCode(qryCalculateSalary);

    end;

    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('Year').Value := optP.Year;;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Parameters.ParamByName('FormInfoID').Value := 0;
    BigMessageProgBar('در حال محاسبه بازگردانی کسورات...', 0);
    BigMessageProgBar('در حال محاسبه بازگردانی کسورات...', ExecSQL);
    GoProgressBar(IntToStr(9));
  end;

end;

procedure TArchiveInfo2F.qryCheckingAfterOpen(DataSet: TDataSet);
begin
  inherited;
  stat1.Panels[0].Text := IntToStr(DataSet.RecordCount)
end;

procedure TArchiveInfo2F.qryFixedLabelsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryFixedLabelsLabelID.AsInteger := qryFixedLabels.RecordCount;
  qryFixedLabelsLabelDateTime.AsDateTime := Now;
  grdFixedLabels.SelectedIndex := 1;
end;

procedure TArchiveInfo2F.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With frInsouranceCheck1.qryInsouranceCheck do
  begin
    Close;
    Parameters.ParamByName('PrvInfoID').Value :=
      qryMaster.FieldByName('FormInfoID').AsInteger;
    Open;
  end;
end;

procedure TArchiveInfo2F.actSendToExcel2Execute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdChecking);
end;

procedure TArchiveInfo2F.BigMessage(ms: string; nCount: Integer;
  cStep: Integer = 1);
begin
  lbl1.Caption := ms;
  Application.ProcessMessages;
end;

procedure TArchiveInfo2F.BigMessageProgBar(ms: string; nCount: Integer;
  cStep: Integer = 1);
begin
  lbl1.Caption := ms;
  iGetTickCount := GetTickCount - iGetTickCount;
  With qryFitful do
  begin
    Insert;
    qryFitfulID.AsInteger := RecordCount + 1;
    qryFitfulFitfulID.AsLargeInt := iGetTickCount;
    qryFitfulFitfulNote.AsString := ms;
    Post;
  end;
  Application.ProcessMessages;
end;

procedure TArchiveInfo2F.BitBtn11Click(Sender: TObject);
begin
  inherited;
  initMask
end;

procedure TArchiveInfo2F.actGETRemainedOffTimeExecute(Sender: TObject);
begin
  inherited;
  CalcGETRemainedOffTimeF.enter(Mounth, optP.Year.ToInteger)
end;

procedure TArchiveInfo2F.actCalcFilterExecute(Sender: TObject);
begin
  inherited;
  try
    IsArchiveInfoFilter := True;
    ArchiveInfoFilterF.ShowChange(Mounth);
  finally
    initMask;
    ActFillter.Execute;
    IsArchiveInfoFilter := False;
  end;
end;

procedure TArchiveInfo2F.btnLabelIDFromClick(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b_get_response := True;
  Txt := 'SELECT LabelID,LabelDateTime,Descriptions FROM Pay.FixedLabels';
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'دسته بندی محاسبات', Txt,
    ['کد', 'تاریخ وزمان ', 'شرح'], Results, [50, 80, 500], alLeft);

  if s then
    if (Sender as TSpeedButton).Tag = 1 then
    begin
      mskLabelIDFrom.Text := Results[0];
      edtLabelIDFrom.Text := Results[2];
    end
    else
    begin
      mskLabelIDTo.Text := Results[0];
      edtLabelIDTo.Text := Results[2];
    end;

end;

procedure TArchiveInfo2F.btnOkClick(Sender: TObject);
begin
  inherited;
  if qryFixedLabels.State in dsEditModes then
    qryFixedLabels.Post;

  pnlFixedLabels.Visible := not pnlFixedLabels.Visible;
end;

procedure TArchiveInfo2F.btnOtherClick(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TArchiveInfo2F.GoProgressBar(msg: string);
begin
  pb1.StepIt;
  lbl2.Caption := msg;
  Application.ProcessMessages;
end;

function TArchiveInfo2F.ChkArchive(Mounth: SmallInt): Boolean;
// var
// sqlTxt: string;
begin
  GetYearMounth(Mounth);
  // sqlTxt := 'SELECT FixedCalculated.PersonelNO,' +
  // ' Round(SUM(CASE WHEN (FixedCalculated.ShowListKind = 1)' +
  // ' THEN FixedCalculated.Price ELSE - FixedCalculated.Price END) ,0)AS Price'
  // + ' FROM Pay.FormsInfo LEFT OUTER JOIN' +
  // ' EmployeeInfo ON FormsInfo.FormInfoID = EmployeeInfo.BankCode LEFT OUTER JOIN'
  // + ' FixedCalculated ON EmployeeInfo.PersonelNo = FixedCalculated.PersonelNO'
  // + ' ' + ' WHERE ((FixedCalculated.ShowListKind = 1) OR(FixedCalculated.ShowListKind = 2) OR'
  // + ' ((FixedCalculated.ShowListKind = 11) AND (FixedCalculated.BedBes = 2))) AND'
  // + ' (FixedCalculated.Mounth =' + IntToStr(Mounth) + ' ) AND' +
  // ' (FixedCalculated.ArchiveID = 0)' + ' GROUP BY FixedCalculated.PersonelNO'
  // + ' HAVING ROUND(SUM(CASE WHEN (FixedCalculated.ShowListKind = 1)' +
  // ' THEN FixedCalculated.Price ELSE - FixedCalculated.Price END) ,0)<0';
  with DMF.qryTmpTmpp do
  begin
    Close;
    // SQL.Text := sqlTxt;
    SQL.Text := 'SELECT FC.PersonelNO';
    SQL.Add(', Round(SUM(CASE WHEN (FC.ShowListKind = 1) THEN FC.Price ELSE - FC.Price END)');
    SQL.Add('+ISNULL(case when C.ActRewardInlistSalary=1 then EydiSanavat.Reward+Sanavat+Eydi else 0 end - EydiSanavat.RewardTax-MaliatEydi,0) ,0)');
    SQL.Add('AS Price');
    SQL.Add('FROM Pay.FormsInfo LEFT OUTER JOIN Pay.EmployeeInfo ON FormsInfo.FormInfoID = EmployeeInfo.BankCode');
    SQL.Add('LEFT OUTER JOIN Pay.FixedCalculated AS FC ON EmployeeInfo.PersonelNo = FC.PersonelNO');

    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('(SELECT PersonelNo');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployerAmount else 0 end ),0) AS Sanavat');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployeeAmount else 0 end ),0) AS Eydi');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then PaymentLoan else 0 end ),0) AS MaliatEydi');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 111 then EmployeeAmount else 0 end ),0) AS Reward');
    SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 111 then PaymentLoan else 0 end ),0) AS RewardTax');

    SQL.Add('FROM pay.PersonelDecExt PersonelDecExt_1 INNER JOIN');
    SQL.Add('pay.FormsInfo F_sanavat ON PersonelDecExt_1.FormInfoID = F_sanavat.FormInfoID');
    SQL.Add('WHERE (LEFT(EndDate, 7) = :EndDate )');
    SQL.Add('AND ((F_sanavat.FormType IN (59,111)) )');

    SQL.Add('Group by PersonelNo)');
    SQL.Add('AS EydiSanavat ON FC.PersonelNO = EydiSanavat.PersonelNo');
    SQL.Add('CROSS JOIN pay.Config c');

    SQL.Add('WHERE ((FC.ShowListKind = 1) OR(FC.ShowListKind = 2) OR ((FC.ShowListKind = 11)');
    SQL.Add('AND (FC.BedBes = 2))) AND (FC.Mounth = :Mounth ) AND (FC.ArchiveID = 0)');

    SQL.Add('AND (FC.YearID = :YearID  ) AND (FC.Years = :Years  )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add('AND (FC.SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    setValcompanyCode(DMF.qryTmpTmpp);

    SQL.Add('GROUP BY FC.PersonelNO ,C.ActRewardInlistSalary,EydiSanavat.Reward,EydiSanavat.RewardTax ,Sanavat,Eydi,MaliatEydi');
    SQL.Add('HAVING ROUND(SUM(CASE WHEN (FC.ShowListKind = 1) THEN FC.Price ELSE - FC.Price END)');
    SQL.Add('+ISNULL(case when C.ActRewardInlistSalary=1 then EydiSanavat.Reward+Sanavat+Eydi else 0 end - EydiSanavat.RewardTax-MaliatEydi,0) ,0)<0');

    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('EndDate').Value := optP.YearMounth;

    if CtrlDown then
      ShowQryParam(DMF.qryTmpTmpp);

    Open;
    Result := DMF.qryTmpTmpp.RecordCount > 0;
    Close;
  end;
end;

procedure TArchiveInfo2F.CalculatorWageFormula(RunOrder: SmallInt);
var
  ParamToText: String;
  qryFixedCalculated: TADOQuery;
  b: Boolean;
begin
  with qryWageFormula do
  begin
    Active := False;
    Parameters.ParamByName('RunOrder').Value := RunOrder;
    Active := True;
  end;
  qryFixedCalculated := TADOQuery.Create(nil);
  with qryFixedCalculated do
  begin
    Connection := DMF.adcSalary;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM Pay.FixedCalculated');
    // SQL.Add('WHERE (FixedCID < 0)');
    SQL.Add('WHERE (Mounth = :Mounth) ');
    SQL.Add('AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
    SQL.Add('AND (LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');

    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
    setValcompanyCode(qryFixedCalculated);

    Parameters.ParamByName('LabelIDFrom').Value :=
      StrToInt(trim(mskLabelIDFrom.Text));
    Parameters.ParamByName('LabelIDTo').Value :=
      StrToInt(trim(mskLabelIDTo.Text));
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Active := True;
  end;

  while not qryWageFormula.Eof do
  begin
    with qryCalculateSalary do
    begin
      // ________________________________ محاسبه فرمولی ____________________________
      BigMessageProgBar('در حال محاسبات فرمولی', 1);
      Active := False;
      ParamToText := IntToStr(Mounth) + ',' + optP.Year + ',''' +
        optP.YearMounth + ''',' + trim(mskPrsnlNo1.Text) + ',' +
        trim(mskPrsnlNo2.Text) + ',' + qryWageFormulaSalaryID.AsString;
      SQL.Text := ' pay.Sp_WageFormula ' + ParamToText;

      try
        Active := True;
        b := True;
      except
        on E: Exception do
        begin
          b := False;
          add2log('امکان وجود اشكال در محاسبه فرمولی' + #13#10 + #13#10 +
            E.Message);
        end;
      end;
      if b then
        try
          BigMessageProgBar('در حال محاسبات  فرمولی', RecordCount);
          DisableControls;
          qryFixedCalculated.Active := True;
          while not Eof do
          begin
            if FixedCalculated_Locate(qryFixedCalculated) then
            begin
              if not CalAcc_ then
              begin
                qryFixedCalculated.FieldByName('Price').AsCurrency :=
                  RoundTo(FieldByName('Price').AsCurrency, 0);

                qryFixedCalculated.FieldByName('LabelID').AsInteger :=
                  LabelID_I;

                qryFixedCalculated.FieldByName('YearID').AsInteger :=
                  APPBank.Year;
                qryFixedCalculated.FieldByName('Years').AsInteger :=
                  optP.Year.ToInteger;
                qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
                  FieldByName('FunctionID').AsInteger;

                qryFixedCalculated.FieldByName('SubCompanyCode').AsInteger :=
                  FieldByName('SubCompanyCode').AsInteger;

                qryFixedCalculated.FieldByName('FormInfoID').AsInteger :=
                  FieldByName('FormInfoID').AsInteger;
                qryFixedCalculated.FieldByName('PersonelNO').AsInteger :=
                  FieldByName('PersonelNo').AsInteger;
                qryFixedCalculated.FieldByName('SalaryID').AsInteger :=
                  FieldByName('SalaryID').AsInteger;
                qryFixedCalculated.FieldByName('Mounth').AsInteger :=
                  FieldByName('Mounth').AsInteger;
                qryFixedCalculated.FieldByName('BedBes').AsInteger :=
                  FieldByName('BedBes').AsInteger;
                qryFixedCalculated.FieldByName('CalCulateKind').AsInteger :=
                  FieldByName('CalCulateKind').AsInteger;
                qryFixedCalculated.FieldByName('ShowListKind').AsInteger :=
                  FieldByName('ShowListKind').AsInteger;

              end;
              if CalAcc_ then
              begin
                qryFixedCalculated.First;
                while not qryFixedCalculated.Eof do
                begin
                  PostFixedCalculated(qryFixedCalculated);
                  qryFixedCalculated.Next;
                  if not qryFixedCalculated.Eof then
                    Next;
                end
              end
              else
                PostFixedCalculated(qryFixedCalculated);

            end;
            Next;
            GoProgressBar(IntToStr(RecNo));
          end;
        finally
          qryFixedCalculated.Filtered := False;
          qryFixedCalculated.UpdateBatch();
          First;
          EnableControls;

        end;

    end;
    qryWageFormula.Next;
  end;
  qryFixedCalculated.Free;

end;

procedure TArchiveInfo2F.grdFitfulDblClick(Sender: TObject);
begin
  inherited;
  grdFitful.Visible := not grdFitful.Visible;
end;

procedure TArchiveInfo2F.grdFixedLabelsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TArchiveInfo2F.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // c:  String;
begin

  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not(grdFixedLabels.Columns[nextIndex].Visible) OR
          (grdFixedLabels.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
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
      while (nextIndex < grdFixedLabels.Columns.Count) and
        (not(grdFixedLabels.Columns[nextIndex].Visible) OR
        (grdFixedLabels.Columns[nextIndex].ReadOnly)) do
        inc(nextIndex);
    if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
      nextIndex := -1;
    if (curIndex <> nextIndex) then
      case nextIndex of
        - 1:
          begin
            sendkey(vk_down, [], False);
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

procedure TArchiveInfo2F.PostFixedCalculated(qryFixedCalculated: TADOQuery);
begin
  with qryCalculateSalary do
  begin
    if not(qryFixedCalculated.State in dsEditModes) then
      qryFixedCalculated.Edit;
    qryFixedCalculated.FieldByName('ProjectID').AsInteger :=
      FieldByName('ProjectID').AsInteger;

    qryFixedCalculated.FieldByName('subcompanyCode').AsInteger :=
      FieldByName('subcompanyCode').AsInteger;

    qryFixedCalculated.FieldByName('OfficeCode').AsInteger :=
      FieldByName('OfficeCode').AsInteger;
    qryFixedCalculated.FieldByName('JobCede').AsInteger :=
      FieldByName('JobCode').AsInteger;
    qryFixedCalculated.FieldByName('AccTopicCode').AsInteger :=
      FieldByName('AccTopicCode').AsInteger;
    qryFixedCalculated.FieldByName('AccDetailCode').AsInteger :=
      FieldByName('AccDetailCode').AsInteger;
    qryFixedCalculated.FieldByName('AccCTopicCode').AsInteger :=
      FieldByName('AccCTopicCode').AsInteger;
    qryFixedCalculated.FieldByName('AccCTopicCode2').AsInteger :=
      FieldByName('AccCTopicCode2').AsInteger;
    qryFixedCalculated.FieldByName('AccCTopicCode3').AsInteger :=
      FieldByName('AccCTopicCode3').AsInteger;
    if FindField('ProcCode') <> nil then
      qryFixedCalculated.FieldByName('ProcCode').AsInteger :=
        FieldByName('ProcCode').AsInteger;
    qryFixedCalculated.Post;
  end;
end;

function TArchiveInfo2F.FixedCalculated_Locate(qryFixedCalculated
  : TADOQuery): Boolean;
var
  FunctionInfoID: Integer;
begin
  with qryCalculateSalary do
  begin
    if CalAcc_ then
    begin
      FunctionInfoID := 0;
      if FindField('FunctionInfoID') <> nil then
        FunctionInfoID := FieldByName('FunctionInfoID').AsInteger;
      qryFixedCalculated.Filter :=
        Format('FormInfoID = %D AND PersonelNO = %D AND SalaryID = %D ' +
        'AND CalCulateKind = %D AND BedBes = %D AND ShowListKind = %D AND Mounth = %d ',
        [FunctionInfoID, FieldByName('PersonelNO').AsInteger,
        FieldByName('SalaryID').AsInteger, FieldByName('CalCulateKind')
        .AsInteger, FieldByName('BedBes').AsInteger, FieldByName('ShowListKind')
        .AsInteger, Mounth]);

      qryFixedCalculated.Filtered := True;
      if qryFixedCalculated.RecordCount > 0 then
        qryFixedCalculated.Edit;
    end
    else
    begin
      qryFixedCalculated.Insert;
    end;
    Result := qryFixedCalculated.State in dsEditModes;
  end;
end;

procedure TArchiveInfo2F.setValcompanyCode(qry: TADOQuery);
begin
  with qry do
  begin
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      Parameters.ParamByName('companyCodeFrom').Value := companyCode;
      Parameters.ParamByName('companyCodeTo').Value := companyCode;
    end
    else
    begin
      Parameters.ParamByName('companyCodeFrom').Value := 0;
      Parameters.ParamByName('companyCodeTo').DataType := ftLargeint;
      Parameters.ParamByName('companyCodeTo').Value := 2147483647;
    end;
  end;
end;

end.
