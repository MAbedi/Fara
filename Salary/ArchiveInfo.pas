{ -----------------------------------------------------------------------------
  Unit Name: ArchiveInfo
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit ArchiveInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2, Grids, Vcl.DBGrids, StdCtrls, ExtCtrls, DBActns,
  ActnList, Buttons, DB, ADODB, Mask, DBCtrls,
  ComCtrls, ToolWin, MyComboBoxUnit, frmInsouranceCheck, FrmTaxCheck, Menus,
  frTaxKindCalc, System.Actions;

type
  TArchiveInfoF = class(Ttemplate2F)
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
    qryFixedCalculated: TADOQuery;
    srcFixedCalculated: TDataSource;
    qryFixedCalculatedFixedCID: TAutoIncField;
    qryFixedCalculatedFunctionID: TIntegerField;
    qryFixedCalculatedFormInfoID: TIntegerField;
    qryFixedCalculatedPersonelNO: TIntegerField;
    qryFixedCalculatedProjectID: TIntegerField;
    qryFixedCalculatedOfficeCode: TIntegerField;
    qryFixedCalculatedJobCede: TIntegerField;
    qryFixedCalculatedSalaryID: TIntegerField;
    qryFixedCalculatedMounth: TWordField;
    qryFixedCalculatedPrice: TBCDField;
    qryFixedCalculatedBedBes: TWordField;
    qryFixedCalculatedCalCulateKind: TWordField;
    qryFixedCalculatedAccTopicCode: TLargeintField;
    qryFixedCalculatedAccDetailCode: TIntegerField;
    qryFixedCalculatedAccCTopicCode: TIntegerField;
    qryFixedCalculatedAccCTopicCode2: TIntegerField;
    qryFixedCalculatedArchiveDate: TStringField;
    qryFixedCalculatedDocNo: TIntegerField;
    qryFixedCalculatedDocDate: TStringField;
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
    ActBackWard: TAction;
    BitBtn7: TBitBtn;
    ActFillter: TAction;
    qryArchiveInfoShowListKind: TWordField;
    qryFixedCalculatedShowListKind: TWordField;
    qryFixedCalculatedArchiveID: TIntegerField;
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
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    qryFixedCalculatedAccCTopicCode3: TIntegerField;
    qryArchiveInfoAccCTopicCode3: TIntegerField;
    qryFixedCalculatedProcCode: TIntegerField;
    ActArchiveDel: TAction;
    BitBtn9: TBitBtn;
    qryFixedCalculatedMounthRetard: TWordField;
    grd1: TDBGrid;
    grpChecking: TGroupBox;
    qryChecking: TADOQuery;
    SrcChecking: TDataSource;
    grd2: TDBGrid;
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
    qryFixedCalculatedYearID: TIntegerField;
    qryFixedCalculatedYears: TIntegerField;
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
    BitBtn10: TBitBtn;
    actClearingDocument: TAction;
    qryArchiveInfoDocNo: TIntegerField;
    qryArchiveInfoDocDate: TStringField;
    qryWageFormula: TADOQuery;
    qryWageFormulaSalaryID: TIntegerField;
    frmTaxKindCalc1: TfrmTaxKindCalc;
    qryFixedCalculatedYearRetard: TIntegerField;
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
    procedure grd1TitleClick(Column: TColumn);
    procedure qryCheckingAfterOpen(DataSet: TDataSet);
    procedure actSendToExcel2Execute(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure actCalAccExecute(Sender: TObject);
    procedure mskPrsnlNo1Exit(Sender: TObject);
    procedure btnOtherClick(Sender: TObject);
    procedure actGETRemainedOffTimeExecute(Sender: TObject);
    procedure grd2DblClick(Sender: TObject);
    procedure actCalcFilterExecute(Sender: TObject);
    procedure actClearingDocumentExecute(Sender: TObject);
  private
    { Private declarations }
    CalAcc, IsArchiveInfoFilter: Boolean;
    FormType: byte;
    MinPersonelNo, MaxPersonelNo: Integer;
    NotHasError: Boolean;
    Mounth: byte;
    function Calculator: Boolean;
    procedure initForm;
    function CalcInsourance(s: String; CaptionName: String): Boolean;
    procedure CalcRetaerd;
    procedure UpdateqryCalculateSalary(MounthRetared: byte = 0;
      YearMounthRetared: String = '');
    procedure BigMessageProgBar(ms: string; nCount: Integer;
      cStep: Integer = 1);
    procedure GoProgressBar(msg: string);
    procedure CalcExecute;
    function FixedCalculated_Locate: Boolean;
    function ChkArchive(Mounth: SmallInt): Boolean;
    procedure PostFixedCalculated;
    procedure BigMessage(ms: string; nCount: Integer; cStep: Integer = 1);
    procedure initMask;
    function CalculatorWageFormula: Boolean;

  public
    { Public declarations }
  end;

var
  ArchiveInfoF: TArchiveInfoF;

implementation

uses DM, Math, GlobalPro, search2, searchCode_ADO,
  StrUtils, sort2, MaskUtils, SalaryFunctions, CalcGETRemainedOffTime,
  rptPayableSalary, ArchiveInfoFilter, FaraConsts;

{$R *.dfm}

procedure TArchiveInfoF.FormCreate(Sender: TObject);
begin
  inherited;
  ActArchiveDel.Visible := (((CurAccess and Integer(akArchiveDel) <> 0)));
  qryMaster.Open;
  FormType := var_glb_gParam;
  initForm;
  DMF.qryTmpTmpp.CommandTimeout := 0;
end;

procedure TArchiveInfoF.actCalAccExecute(Sender: TObject);
begin
  inherited;
  CalAcc := True;
  CalcExecute
end;

procedure TArchiveInfoF.actCalExecute(Sender: TObject);
begin
  inherited;
  CalAcc := False;
  CalcExecute
end;

procedure TArchiveInfoF.actClearingDocumentExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي پاکسازی سند روی محدوده انتخاب شده مطمئن هستيد!؟‏')
    <> mrYes then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.FixedCalculated SET DocNo = 0 ,DocDate = ''''  ';
    SQL.Add('WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
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

procedure TArchiveInfoF.CalcExecute;
var
  b: Boolean;
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
  // Mounth:=ToolBar1.b //cmbMounth.ItemIndex+1;
  // براي جلوگيري از ثبت اطلاعات تكراري از اين اسكيول استفاده شود
  if not CalAcc then
    with DMF.qryTmpTmpp do
    begin
      CommandTimeout := 0;
      Active := False;
      SQL.Text := 'SELECT * FROM Pay.FixedCalculated ' +
        'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
        + 'AND ( ArchiveDate >''0001/01/01'')';
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
      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNoTo').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));
      Active := True;
      if RecordCount > 0 then
        if get_response
          ('با محدوده مورد نظر محاسبه انجام شده است.محاسبات جديد جايگزين شود؟' +
          #13#10 + IfThen(CalAcc, 'محاسبه کدینگ حسابداری' + '')) <> mrYes then
          Exit;
    end; // with

  if not CalAcc then
    with DMF.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := 'DELETE FROM Pay.FixedCalculated  ' +
        'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
        + 'AND  (ArchiveId =0)';
      // 'AND (( ArchiveDate >=:ArchiveDate)or( ArchiveDate =null))';
      SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;
      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNoTo').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));
      BigMessage(IntToStr(ExecSQL) + ' ركورد حذف شد.‏', 1);
    end
  else
  begin
    with qryFixedCalculated do
    begin
      Active := False;
      SQL.Text := 'SELECT * FROM Pay.FixedCalculated WHERE (Mounth = :Mounth) ';
      SQL.Add('AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) ');
      SQL.Add('AND (YearID = :YearID)');
      SQL.Add('AND (Years = :Years)');
      Parameters.ParamByName('Mounth').Value := Mounth;
      Parameters.ParamByName('PersonelNoFrom').Value :=
        StrToInt(trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNoTo').Value :=
        StrToInt(trim(mskPrsnlNo2.Text));
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    end;

  end;
  b := Calculator;
  if b then
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
        Parameters.ParamByName('Mounth').Value := Mounth;
        Parameters.ParamByName('PersonelNoFrom').Value :=
          StrToInt(trim(mskPrsnlNo1.Text));
        Parameters.ParamByName('PersonelNoTo').Value :=
          StrToInt(trim(mskPrsnlNo2.Text));
        BigMessage(IntToStr(ExecSQL) + ' پروژه در محاسبات ثبت شد.‏', 1);

        SQL.Text := 'UPDATE Pay.Functions';
        SQL.Add('SET ProjectID = Interdicts.ProjectID');
        SQL.Add('FROM Pay.Functions INNER JOIN');
        SQL.Add('Pay.Interdicts ON Functions.PersonelNO = Interdicts.PersonelNo');
        SQL.Add('WHERE (Interdicts.State < 50) ');
        SQL.Add('AND (Functions.ProjectID = 0)AND (Interdicts.ProjectID <> 0)');
        SQL.Add('AND (Functions.Mounth = :Mounth )');
        SQL.Add('AND (Functions.PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
        Parameters.ParamByName('Mounth').Value := Mounth;
        Parameters.ParamByName('PersonelNoFrom').Value :=
          StrToInt(trim(mskPrsnlNo1.Text));
        Parameters.ParamByName('PersonelNoTo').Value :=
          StrToInt(trim(mskPrsnlNo2.Text));
        BigMessage(IntToStr(ExecSQL) + ' پروژه در كاركرد ثبت شد.‏', 1);
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
        Parameters.ParamByName('PersonelNoFrom').Value :=
          StrToInt(trim(mskPrsnlNo1.Text));
        Parameters.ParamByName('PersonelNoTo').Value :=
          StrToInt(trim(mskPrsnlNo2.Text));
        BigMessage(IntToStr(ExecSQL) +
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

function TArchiveInfoF.Calculator: Boolean;
var
  ParamToText: String;
begin
  Result := False;
  with qryCalculateSalary do
  begin
    BigMessageProgBar('در حال محاسبه حقوق و مزاياي كسورات...', 1);
    Active := False;
    SQL.Text := 'SELECT  FixCalculateType1.* ' +
      'FROM    Pay.FixCalculateType1( :Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo) FixCalculateType1 ';
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('Year').Value := optP.Year;;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Active := True;
    BigMessageProgBar('در حال محاسبه حقوق و مزاياي كسورات...', RecordCount);
    UpdateqryCalculateSalary;

    CalculatorWageFormula;

    CalcRetaerd;

    /// /////////////////////////////////////////////////////////////////////////

    BigMessageProgBar('در حال بررسي حقوق و مزاياي كسورات...', 1);
    Active := False;
    SQL.Text := 'UPDATE Pay.FixedCalculated ' +
      'SET              Price = UpdateDifferanteCalculate_1.price + FixedCalculated.Price  '
      + 'FROM         Pay.UpdateDifferanteCalculate(:Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo) AS UpdateDifferanteCalculate_1 INNER JOIN '
      + '         Pay.FixedCalculated ON UpdateDifferanteCalculate_1.FixedCID = FixedCalculated.FixedCID ';
      SQL.Add('WHERE  (Years = :Years ) AND  (YearID = :YearID )');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('Year').Value := optP.Year; // APank.Year ;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    // IntToStr(ABank.Year) +'/' + RightStr('0'+IntToStr(Mounth),2) ;
    Parameters.ParamByName('PersonelNoFrom').Value := trim(mskPrsnlNo1.Text);
    Parameters.ParamByName('PersonelNoTo').Value := trim(mskPrsnlNo2.Text);
    BigMessageProgBar('در حال بررسي حقوق و مزاياي كسورات...', ExecSQL);

    /// /////////////////////////////////////////////////////////////////////////////

    // ________________________________ محاسبه انواع بيمه ____________________________

    // ParamToText:='DEFAULT,'+IntToStr(Mounth)+','+IntToStr(ABank.Year)+','''+
    // IntToStr(ABank.Year) +'/' + RightStr('0'+IntToStr(Mounth),2)+''','+
    // trim(mskPrsnlNo1.Text)+','+trim(mskPrsnlNo2.Text);
    ParamToText := 'DEFAULT,' + IntToStr(Mounth) + ',' + optP.Year + ',''' +
      optP.YearMounth + ''',' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text);
    CalcInsourance
      (' SELECT *,FormInfoID AS FunctionInfoID FROM   Pay.Insourance(' +
      ParamToText + ') Insourance', ' محاسبه 30 درصد ');
    CalcInsourance
      (' SELECT *,FormInfoID AS FunctionInfoID FROM   Pay.InsouranceEmployeeshare('
      + ParamToText + ') InsouranceEmployeeshare ', ' محاسبه 7 درصد ');
    CalcInsourance
      (' SELECT *,FormInfoID AS FunctionInfoID FROM   Pay.InsouranceEmployershare('
      + ParamToText + ') InsouranceEmployershare ', ' محاسبه 23 درصد ');
    CalcInsourance
      (' SELECT *,FormInfoID AS FunctionInfoID FROM   Pay.InsouranceContain(' +
      ParamToText + ') InsouranceContain ', ' مشمول ');
    CalcInsourance
      (' SELECT *,FormInfoID AS FunctionInfoID FROM   Pay.InsouranceInaction(' +
      ParamToText + ') InsouranceInaction ', ' بيكاري ');
    CalcInsourance
      (' SELECT *,FormInfoID AS FunctionInfoID FROM   Pay.InsouranceHardWork(' +
      ParamToText + ') InsouranceHardWork ', ' سختي كار ');

    // ________________________________ محاسبه ماليات و مشمول ماليات 1 ____________________________
    BigMessageProgBar('در حال محاسبه ماليات و مشمول ماليات', 1);
    Active := False;
    { @Mounth,@Year@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo,@bedbes,@ShowListKind }
    // ParamToText:=IntToStr(Mounth)+','+IntToStr(ABank.Year)+','''+
    // IntToStrPPBank.Year) +'/' + RightStr('0'+IntToStr(Mounth),2)+''','+
    // 'DEFAULT,'+trim(mskPrsnlNo1.Text)+','+trim(mskPrsnlNo2.Text)+',0,12';
    ParamToText := IntToStr(Mounth) + ',' + optP.Year + ',''' + optP.YearMounth
      + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text) + ',0,12';
    SQL.Text :=
      'SELECT  *,FormInfoID AS FunctionInfoID FROM Pay.ContainTaxWithPerson(' +
      ParamToText + ',0) ContainTaxWithPerson';
    Active := True;
    BigMessageProgBar('در حال محاسبه ماليات و مشمول ماليات', RecordCount);
    // UpdateqryCalculateSalary;
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      while not Eof do
      begin
        if FixedCalculated_Locate then
        begin
          if not CalAcc then
          begin
            qryFixedCalculated.FieldByName('Price').AsCurrency :=
              RoundTo(FieldByName('ContainTax').AsCurrency, 0);
            qryFixedCalculated.FieldByName('PersonelNO').AsInteger :=
              FieldByName('PersonelNo').AsInteger;
            qryFixedCalculated.FieldByName('YearID').AsInteger := APPBank.Year;
            qryFixedCalculated.FieldByName('Years').AsInteger := yrcmbx1.YearID;
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
            qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
              FieldByName('FunctionID').AsInteger;
            qryFixedCalculated.FieldByName('FormInfoID').AsInteger :=
              FieldByName('FormInfoID').AsInteger;
          end;

          if CalAcc then
          begin
            qryFixedCalculated.First;
            while not qryFixedCalculated.Eof do
            begin
              PostFixedCalculated;
              qryFixedCalculated.Next;
              if not qryFixedCalculated.Eof then
                Next;
            end
          end
          else
            PostFixedCalculated;


          // qryFixedCalculated.FieldByName('ProjectID').AsInteger :=
          // FieldByName('ProjectID').AsInteger;
          // qryFixedCalculated.FieldByName('OfficeCode').AsInteger :=
          // FieldByName('OfficeCode').AsInteger;
          // qryFixedCalculated.FieldByName('JobCede').AsInteger :=
          // FieldByName('JobCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccTopicCode').AsInteger :=
          // FieldByName('AccTopicCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccDetailCode').AsInteger :=
          // FieldByName('AccDetailCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccCTopicCode').AsInteger :=
          // FieldByName('AccCTopicCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccCTopicCode2').AsInteger :=
          // FieldByName('AccCTopicCode2').AsInteger;
          // qryFixedCalculated.FieldByName('AccCTopicCode3').AsInteger :=
          // FieldByName('AccCTopicCode3').AsInteger;
          // // qryFixedCalculated.FieldByName('ProcCode').AsInteger := FieldByName('ProcCode').AsInteger  ;
          // qryFixedCalculated.Post;

        end;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
      Result := True;
    finally
      qryFixedCalculated.Filtered := False;
      qryFixedCalculated.UpdateBatch();
      First;
      EnableControls;
      // CloseMessage;
    end; // try

    // ________________________________ محاسبه ماليات و مشمول ماليات 2 ____________________________
    BigMessageProgBar('در حال محاسبه ماليات و مشمول ماليات', 1);
    Active := False;
    ParamToText := IntToStr(Mounth) + ',' + optP.Year + ',''' + optP.YearMounth
      + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text) + ',0,13';
    SQL.Text := 'SELECT  *,FormInfoID AS FunctionInfoID ' +
      'FROM Pay.ContainTaxWithPerson(' + ParamToText +
      ',0) ContainTaxWithPerson';
    Active := True;
    BigMessageProgBar('در حال محاسبه ماليات و مشمول ماليات', RecordCount);
    // UpdateqryCalculateSalary;
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      while not Eof do
      begin
        if FixedCalculated_Locate then
        begin
          if not CalAcc then
          begin
            qryFixedCalculated.FieldByName('Price').AsCurrency :=
              RoundTo(FieldByName('ContainTax2').AsCurrency, 0);
            qryFixedCalculated.FieldByName('YearID').AsInteger := APPBank.Year;
            qryFixedCalculated.FieldByName('Years').AsInteger := yrcmbx1.YearID;

            qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
              FieldByName('FunctionID').AsInteger;
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

          /// /////////////////////////////////////////
          if CalAcc then
          begin
            qryFixedCalculated.First;
            while not qryFixedCalculated.Eof do
            begin
              PostFixedCalculated;
              qryFixedCalculated.Next;
              if not qryFixedCalculated.Eof then
                Next;
            end
          end
          else
            PostFixedCalculated;

        end;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
      Result := True;
    finally
      qryFixedCalculated.Filtered := False;
      qryFixedCalculated.UpdateBatch();
      First;
      EnableControls;
      // CloseMessage;
    end; // try

    // ________________________________ محاسبه ماليات و مشمول ماليات 3 ____________________________
    BigMessageProgBar('در حال محاسبه ماليات و مشمول ماليات', 1);
    Active := False;
    { @Mounth,@Year@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo,@bedbes,@ShowListKind }
    ParamToText := IntToStr(Mounth) + ',' + optP.Year + ',''' + optP.YearMounth
      + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text) + ',2,11';
    SQL.Text := 'SELECT  *,FormInfoID AS FunctionInfoID ' +
      'FROM Pay.ContainTaxWithPerson(' + ParamToText +
      ',0) ContainTaxWithPerson ' + 'where (TaxValue >=0) ';
    Active := True;
    BigMessageProgBar('در حال محاسبه ماليات و مشمول ماليات', RecordCount);
    // UpdateqryCalculateSalary;
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      while not Eof do
      begin
        if FixedCalculated_Locate then
        begin
          if not CalAcc then
          begin
            qryFixedCalculated.FieldByName('Price').AsCurrency :=
              RoundTo(FieldByName('TaxValue').AsCurrency, 0);
            qryFixedCalculated.FieldByName('YearID').AsInteger := APPBank.Year;
            qryFixedCalculated.FieldByName('Years').AsInteger := yrcmbx1.YearID;
            qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
              FieldByName('FunctionID').AsInteger;
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

          /// /////////////////////////////////////////
          if CalAcc then
          begin
            qryFixedCalculated.First;
            while not qryFixedCalculated.Eof do
            begin
              PostFixedCalculated;
              qryFixedCalculated.Next;
              if not qryFixedCalculated.Eof then
                Next;
            end
          end
          else
            PostFixedCalculated;

          // qryFixedCalculated.FieldByName('ProjectID').AsInteger :=
          // FieldByName('ProjectID').AsInteger;
          // qryFixedCalculated.FieldByName('OfficeCode').AsInteger :=
          // FieldByName('OfficeCode').AsInteger;
          // qryFixedCalculated.FieldByName('JobCede').AsInteger :=
          // FieldByName('JobCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccTopicCode').AsInteger :=
          // FieldByName('AccTopicCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccDetailCode').AsInteger :=
          // FieldByName('AccDetailCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccCTopicCode').AsInteger :=
          // FieldByName('AccCTopicCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccCTopicCode2').AsInteger :=
          // FieldByName('AccCTopicCode2').AsInteger;
          // qryFixedCalculated.FieldByName('AccCTopicCode3').AsInteger :=
          // FieldByName('AccCTopicCode3').AsInteger;
          // // qryFixedCalculated.FieldByName('ProcCode').AsInteger := FieldByName('ProcCode').AsInteger  ;
          // qryFixedCalculated.Post;
        end;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
      Result := True;
    finally
      qryFixedCalculated.Filtered := False;
      qryFixedCalculated.UpdateBatch();
      First;
      EnableControls;
      // CloseMessage;
      // ActArchive.Enabled:=True;
      // qryArchiveInfo.Requery();
    end; // try

    // ________________________________ محاسبه بيمه تكميلي ____________________________
    BigMessageProgBar('در حال محاسبه بيمه تكميلي', 1);
    Active := False;
    { @Mounth,@Year@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo,@bedbes,@ShowListKind }
    ParamToText := IntToStr(Mounth) + ',' + optP.Year + ',''' + optP.YearMounth
      + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text) + ',2,11';
    SQL.Text := 'SELECT  *,FormInfoID AS FunctionInfoID ' +
      'FROM Pay.Insournace_Takmily(' + ParamToText + ') Insournace_Takmily';
    Active := True;
    BigMessageProgBar('در حال محاسبه بيمه تكميلي', RecordCount);
    // UpdateqryCalculateSalary;
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      while not Eof do
      begin
        if FixedCalculated_Locate then
        begin
          if not CalAcc then
          begin
            qryFixedCalculated.FieldByName('Price').AsCurrency :=
              RoundTo(FieldByName('Price').AsCurrency, 0);

            qryFixedCalculated.FieldByName('YearID').AsInteger := APPBank.Year;
            qryFixedCalculated.FieldByName('Years').AsInteger := yrcmbx1.YearID;
            qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
              FieldByName('FunctionID').AsInteger;
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

          /// /////////////////////////////////////////
          if CalAcc then
          begin
            qryFixedCalculated.First;
            while not qryFixedCalculated.Eof do
            begin
              PostFixedCalculated;
              qryFixedCalculated.Next;
              if not qryFixedCalculated.Eof then
                Next;
            end
          end
          else
            PostFixedCalculated;

        end;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
      Result := True;
    finally
      qryFixedCalculated.Filtered := False;
      qryFixedCalculated.UpdateBatch();
      First;
      EnableControls;
      // CloseMessage;  11
      // ActArchive.Enabled:=True;
      // qryArchiveInfo.Requery();
    end; // try
  end; // with
end;

function TArchiveInfoF.CalculatorWageFormula: Boolean;
var
  ParamToText: String;
begin
  Result := False;
  with qryWageFormula do
  begin
    Active := False;
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
      SQL.Text := ' Sp_WageFormula ' + ParamToText;
      try
        Active := True;
      except
      end;
      if Active then
        try
          BigMessageProgBar('در حال محاسبات  فرمولی', RecordCount);
          DisableControls;
          qryFixedCalculated.Active := True;
          while not Eof do
          begin
            if FixedCalculated_Locate then
            begin
              if not CalAcc then
              begin
                qryFixedCalculated.FieldByName('Price').AsCurrency :=
                  RoundTo(FieldByName('Price').AsCurrency, 0);

                qryFixedCalculated.FieldByName('YearID').AsInteger :=
                  APPBank.Year;
                qryFixedCalculated.FieldByName('Years').AsInteger :=
                  yrcmbx1.YearID;
                qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
                  FieldByName('FunctionID').AsInteger;
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
              if CalAcc then
              begin
                qryFixedCalculated.First;
                while not qryFixedCalculated.Eof do
                begin
                  PostFixedCalculated;
                  qryFixedCalculated.Next;
                  if not qryFixedCalculated.Eof then
                    Next;
                end
              end
              else
                PostFixedCalculated;

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
  Result := True;

end;

procedure TArchiveInfoF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  qryArchiveInfo.Active := CheckBox1.Checked;
end;

procedure TArchiveInfoF.ActArchiveExecute(Sender: TObject);
var
  MaxArchive: Integer;
begin
  inherited;
  if get_response('آيا براي بايگاني كردن اطلاعات مطمئن هستيد؟') <> mrYes then
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
        'FROM Pay.FixedCalculated WHERE (Mounth=' + IntToStr(Mounth) + ')';
      // cmbMounth.ItemIndex+1
      Active := True;
      MaxArchive := FieldByName('MaxArchive').AsInteger;
      Active := False;
      SQL.Text :=
        'UPDATE Pay.FixedCalculated SET ArchiveDate=:ArchiveDate,ArchiveID = :ArchiveID WHERE (ArchiveDate IS NULL)';
      SQL.Add('and  Mounth=' + IntToStr(Mounth));
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

procedure TArchiveInfoF.initForm;
var
  date: String;
begin
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
end;

procedure TArchiveInfoF.initMask;
begin
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT MIN(PersonelNo), MAX(PersonelNo) ' +
      'FROM   Pay.PersonelInfo ';
    Active := True;
    MinPersonelNo := Fields[0].AsInteger;
    MaxPersonelNo := Fields[1].AsInteger;
    mskPrsnlNo1.Text := Fields[0].AsString;
    mskPrsnlNo2.Text := Fields[1].AsString;
    Active := False;
  end; // with
end;

procedure TArchiveInfoF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1);
end;

procedure TArchiveInfoF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grd1, 2, True, IntToStr(FormType));
  SetColSize(grd2, 2, True, IntToStr(FormType));
end;

procedure TArchiveInfoF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grd1, IntToStr(FormType));
  SaveColWidth(grd2, IntToStr(FormType));
  DMF.qryTmpTmpp.CommandTimeout := 30;
end;

procedure TArchiveInfoF.SpeedButton1Click(Sender: TObject);
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

procedure TArchiveInfoF.mskPrsnlNo1Change(Sender: TObject);
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

procedure TArchiveInfoF.mskPrsnlNo1Exit(Sender: TObject);
begin
  inherited;
  mskPrsnlNo2.Text := mskPrsnlNo1.Text
end;

procedure TArchiveInfoF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryArchiveInfo);
end;

procedure TArchiveInfoF._actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryArchiveInfo);
end;

procedure TArchiveInfoF.ActFillterExecute(Sender: TObject);
begin
  inherited;
  // frTaxCheck1.Check(Mounth);
  NotHasError := // (frTaxCheck1.qryCheckTax.RecordCount = 0) and
    (frInsouranceCheck1.qryInsouranceCheck.RecordCount = 0);
  if Not NotHasError then
  begin
    Warn('ابتدا نسبت به رفع خطاها اقدام كنيد', mtError);
    // actCal.Enabled :=False;
    // ActBackWard.Enabled :=False;
    // Exit;
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

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;

    Active := CheckBox1.Checked;
  end; // with

  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT COUNT(*) FROM Pay.FixedCalculated WHERE (ArchiveID > 0)';
    SQL.Add('AND(PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) ');
    SQL.Add('AND (Mounth = :Mounth)');
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Active := True;
    actCal.Enabled := (Fields[0].AsInteger = 0); // and NotHasError;
    Active := False;
  end; // with

  ActBackWard.Enabled := not actCal.Enabled; // and NotHasError;
  with qryOutPersonel do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := Mounth;
    Active := True;
  end; // with
  with qryChecking do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('Years').Value := optP.Year;
    Active := True;
    grpChecking.Visible := RecordCount > 0;
  end; // with

end;

procedure TArchiveInfoF.ActBackWardExecute(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT *  FROM Pay.FixedCalculated ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)';
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Active := True;
    if RecordCount > 0 then
      if get_response
        ('با محدوده مورد نظر محاسبه انجام شده است.محاسبات جديد جايگزين شود؟') <> mrYes
      then
        Exit;
  end; // with
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.FixedCalculated  ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + 'AND  (ArchiveId =0)';
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    BigMessage(IntToStr(ExecSQL) + ' ركورد حذف شد.‏', 1);
  end; // with
  b := Calculator;
  if b then
  begin
    pb1.Position := 100;
    if not IsArchiveInfoFilter then
      Warn('محاسبه شد ', mtInformation);
  end;

  ActFillter.Execute;
end;

procedure TArchiveInfoF.qryArchiveInfoAfterOpen(DataSet: TDataSet);
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
      'SELECT COUNT(ArchiveID) FROM (SELECT ArchiveID FROM Pay.FixedCalculated GROUP BY ArchiveID, Mounth';
    SQL.Add('HAVING (ArchiveID <> 0) AND (Mounth = ' + IntToStr(Mounth) +
      ')) DERIVEDTBL');
    Active := True;
    StatusBar1.Panels[1].Text := 'تعداد دفعات بايگاني = ' + Fields[0].AsString;
    Active := False;
  end; // with
end;

procedure TArchiveInfoF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  Mounth := (Sender as TToolButton).Tag;
  GetYearMounth(Mounth);
  ActFillter.Execute;
end;

procedure TArchiveInfoF.actDELETEExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي حذف محاسبات با شماره بايگاني 0 مطمئن هستيد!؟‏') <> mrYes
  then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.FixedCalculated  ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + 'AND  (ArchiveId =0)';
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
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

procedure TArchiveInfoF.PostFixedCalculated;
begin
  with qryCalculateSalary do
  begin
    if not(qryFixedCalculated.State in dsEditModes) then
      qryFixedCalculated.Edit;
    qryFixedCalculated.FieldByName('ProjectID').AsInteger :=
      FieldByName('ProjectID').AsInteger;
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

procedure TArchiveInfoF.qryArchiveInfoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  BigMessage('لطفا كمي صبر كنيد...‏', 0);
end;

function TArchiveInfoF.CalcInsourance;
begin
  with qryCalculateSalary do
  begin
    BigMessageProgBar('در حال محاسبه  بيمه' + CaptionName, 1);
    Active := False;
    SQL.Text := s;
    Active := True;
    BigMessageProgBar('در حال محاسبه  بيمه' + CaptionName, RecordCount - 1);
    // UpdateqryCalculateSalary;
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      while not Eof do
      begin
        if FixedCalculated_Locate then
        begin
          if not CalAcc then
          begin
            qryFixedCalculated.FieldByName('Price').AsCurrency :=
              RoundTo(FieldByName('price').AsCurrency, 0);

            qryFixedCalculated.FieldByName('YearID').AsInteger := APPBank.Year;
            qryFixedCalculated.FieldByName('Years').AsInteger := yrcmbx1.YearID;

            qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
              FieldByName('insuranceID').AsInteger;
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

          if CalAcc then
          begin
            qryFixedCalculated.First;
            while not qryFixedCalculated.Eof do
            begin
              PostFixedCalculated;
              qryFixedCalculated.Next;
              if not qryFixedCalculated.Eof then
                Next;

            end
          end
          else
            PostFixedCalculated;

        end;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
      Result := True;
    finally
      qryFixedCalculated.Filtered := False;
      qryFixedCalculated.UpdateBatch();
      First;
      EnableControls;
      // CloseMessage;11
    end; // try
  end; // with
end;

procedure TArchiveInfoF.ActArchiveDelExecute(Sender: TObject);
begin
  inherited;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE  Pay.FixedCalculated  ';
    SQL.Add('SET ArchiveDate = NULL, ArchiveID = 0 ');
    SQL.Add('WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) ');
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    BigMessage(IntToStr(ExecSQL) + ' ركورد حذف بايگاني شد.‏', 1);
  end; // with
  if optP.SituationTime = 2 then
    SetSituationAll(0, Mounth, trim(mskPrsnlNo1.Text),
      trim(mskPrsnlNo2.Text), nil);
  ActFillter.Execute;

end;

procedure TArchiveInfoF.edtPrsnlName1KeyPress(Sender: TObject; var Key: Char);
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
  if checkPasWrd(__s) then
  begin
    ActArchiveDel.Visible := not ActArchiveDel.Visible;
    // actClearingDocument.Visible :=  ActArchiveDel.Visible;
  end;
  t0 := tc;
  // Caption:=__s;
end;

procedure TArchiveInfoF.grd1TitleClick(Column: TColumn);
begin
  inherited;
  SortTitle(Column);
end;

procedure TArchiveInfoF.grd2DblClick(Sender: TObject);
begin
  inherited;
  grpChecking.Height := 100;
  frInsouranceCheck1.Height := 100;
  // frTaxCheck1.Height := 100;
end;

procedure TArchiveInfoF.CalcRetaerd;
var
  i: Integer;
  Fromi: Integer;
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
        SQL.Text := ' SELECT  * ' +
          ' FROM    Pay.FixCalculate_Retared( :Mounth  ,:year ,:YearMounth ,' +
          ' :PersonelNoFrom ,:PersonelNoTo , :YearMounthRetared ) FixCalculateType1 ';
        Parameters.ParamByName('Mounth').Value := i;
        Parameters.ParamByName('Year').Value := optP.Year;;
        Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
        Parameters.ParamByName('PersonelNoFrom').Value :=
          StrToInt(trim(mskPrsnlNo1.Text));
        Parameters.ParamByName('PersonelNoTo').Value :=
          StrToInt(trim(mskPrsnlNo2.Text));
        Parameters.ParamByName('YearMounthRetared').Value := optP.Year + '/' +
          RightStr('0' + IntToStr(i), 2);
        Active := True;
        BigMessageProgBar('در حال محاسبه حقوق و مزاياي معوقه...', RecordCount);
        UpdateqryCalculateSalary(i)
      end;

  with qryCalculateSalary do
  begin
    BigMessageProgBar
      ('در حال محاسبه حقوق و مزاياي درصدي از حقوق محاسبه شده...', 1);
    Active := False;
    SQL.Text := 'SELECT  FixCalculateType_2.* ' +
      'FROM Pay.FixCalculateType_2( :Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo) FixCalculateType_2 ';
    Parameters.ParamByName('Mounth').Value := Mounth;
    Parameters.ParamByName('Year').Value := optP.Year;;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Active := True;
    BigMessageProgBar('در حال محاسبه حقوق و مزاياي درصدي از حقوق محاسبه شده...',
      RecordCount);
    UpdateqryCalculateSalary
  end;

end;

function TArchiveInfoF.FixedCalculated_Locate(): Boolean;
begin
  with qryCalculateSalary do
  begin
    if CalAcc then
    begin // FunctionID;FieldByName('FunctionID').AsInteger,
      // if qryFixedCalculated.Locate
      // ('FormInfoID;PersonelNO;SalaryID;CalCulateKind;BedBes;ShowListKind',
      // VarArrayOf([FieldByName('FunctionInfoID').AsInteger,
      // FieldByName('PersonelNO').AsInteger, FieldByName('SalaryID').AsInteger,
      // FieldByName('CalCulateKind').AsInteger, FieldByName('BedBes').AsInteger,
      // FieldByName('ShowListKind').AsInteger]), []) then
      // qryFixedCalculated.Edit;
      qryFixedCalculated.Filter :=
        Format('FormInfoID = %D AND PersonelNO = %D AND SalaryID = %D ' +
        'AND CalCulateKind = %D AND BedBes = %D AND ShowListKind = %D AND Mounth = %d ',
        [FieldByName('FunctionInfoID').AsInteger, FieldByName('PersonelNO')
        .AsInteger, FieldByName('SalaryID').AsInteger,
        FieldByName('CalCulateKind').AsInteger, FieldByName('BedBes').AsInteger,
        FieldByName('ShowListKind').AsInteger, Mounth]);

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

procedure TArchiveInfoF.UpdateqryCalculateSalary(MounthRetared: byte = 0;
  YearMounthRetared: String = '');
begin
  with qryCalculateSalary do
  begin
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      qryFixedCalculated.DisableControls;
      while not Eof do
      begin
        if FixedCalculated_Locate then
        begin
          if not CalAcc then
          begin
            qryFixedCalculated.FieldByName('Price').AsCurrency :=
              RoundTo(FieldByName('price').AsCurrency, 0);

            qryFixedCalculated.FieldByName('YearID').AsInteger := APPBank.Year;
            qryFixedCalculated.FieldByName('Years').AsInteger := yrcmbx1.YearID;

            qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
              FieldByName('FunctionID').AsInteger;
            qryFixedCalculated.FieldByName('FormInfoID').AsInteger :=
              FieldByName('FunctionInfoID').AsInteger;
            qryFixedCalculated.FieldByName('PersonelNO').AsInteger :=
              FieldByName('PersonelNo').AsInteger;

            qryFixedCalculated.FieldByName('SalaryID').AsInteger :=
              FieldByName('SalaryID').AsInteger;
            qryFixedCalculated.FieldByName('Mounth').AsInteger := Mounth;
            if MounthRetared <> 0 then
            begin
              qryFixedCalculated.FieldByName('MounthRetard').AsInteger :=
                MounthRetared;
              qryFixedCalculated.FieldByName('YearRetard').AsString :=
                optP.Year;
            end
            else
              qryFixedCalculated.FieldByName('MounthRetard').AsInteger :=
                FieldByName('Mounth').AsInteger;

            qryFixedCalculated.FieldByName('BedBes').AsInteger :=
              FieldByName('BedBes').AsInteger;
            qryFixedCalculated.FieldByName('CalCulateKind').AsInteger :=
              FieldByName('CalCulateKind').AsInteger;
            qryFixedCalculated.FieldByName('ShowListKind').AsInteger :=
              FieldByName('ShowListKind').AsInteger;

          end;

          if CalAcc then
          begin
            qryFixedCalculated.First;
            while not qryFixedCalculated.Eof do
            begin
              PostFixedCalculated;
              qryFixedCalculated.Next;
              if not qryFixedCalculated.Eof then
                Next;

            end
          end
          else
            PostFixedCalculated;

          // qryFixedCalculated.FieldByName('ProjectID').AsInteger :=
          // FieldByName('ProjectID').AsInteger;
          // qryFixedCalculated.FieldByName('OfficeCode').AsInteger :=
          // FieldByName('OfficeCode').AsInteger;
          // qryFixedCalculated.FieldByName('JobCede').AsInteger :=
          // FieldByName('JobCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccTopicCode').AsInteger :=
          // FieldByName('AccTopicCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccDetailCode').AsInteger :=
          // FieldByName('AccDetailCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccCTopicCode').AsInteger :=
          // FieldByName('AccCTopicCode').AsInteger;
          // qryFixedCalculated.FieldByName('AccCTopicCode2').AsInteger :=
          // FieldByName('AccCTopicCode2').AsInteger;
          // qryFixedCalculated.FieldByName('AccCTopicCode3').AsInteger :=
          // FieldByName('AccCTopicCode3').AsInteger;
          // qryFixedCalculated.FieldByName('ProcCode').AsInteger :=
          // FieldByName('ProcCode').AsInteger;
          // qryFixedCalculated.Post;
        end;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
      qryFixedCalculated.Filtered := False;
      qryFixedCalculated.UpdateBatch();
      EnableControls;
      // UpdateBatch();
    finally
      First;
    end; // try
  end;

end;

procedure TArchiveInfoF.qryCheckingAfterOpen(DataSet: TDataSet);
begin
  inherited;
  stat1.Panels[0].Text := IntToStr(DataSet.RecordCount)
end;

procedure TArchiveInfoF.qryMasterAfterScroll(DataSet: TDataSet);
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

procedure TArchiveInfoF.actSendToExcel2Execute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd2);
end;

procedure TArchiveInfoF.BigMessage(ms: string; nCount: Integer;
  cStep: Integer = 1);
begin
  lbl1.Caption := ms;
  Application.ProcessMessages;
end;

procedure TArchiveInfoF.BigMessageProgBar(ms: string; nCount: Integer;
  cStep: Integer = 1);
begin
  lbl1.Caption := ms;
  Application.ProcessMessages;
end;

procedure TArchiveInfoF.actGETRemainedOffTimeExecute(Sender: TObject);
begin
  inherited;
  CalcGETRemainedOffTimeF.enter(Mounth, yrcmbx1.YearID)
end;

procedure TArchiveInfoF.actCalcFilterExecute(Sender: TObject);
begin
  inherited;
  try
    IsArchiveInfoFilter := True;
    GetYearMounth(Mounth);
    ArchiveInfoFilterF.ShowChange(Mounth);
  finally
    initMask;
    ActFillter.Execute;
    IsArchiveInfoFilter := False;
  end;
end;

procedure TArchiveInfoF.btnOtherClick(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TArchiveInfoF.GoProgressBar(msg: string);
begin
  pb1.StepIt;
  lbl2.Caption := msg;
  Application.ProcessMessages;
end;

function TArchiveInfoF.ChkArchive(Mounth: SmallInt): Boolean;
var
  sqlTxt: string;
begin
  sqlTxt := 'SELECT FixedCalculated.PersonelNO,' +
    ' Round(SUM(CASE WHEN (FixedCalculated.ShowListKind = 1)' +
    ' THEN FixedCalculated.Price ELSE - FixedCalculated.Price END) ,0)AS Price'
    + ' FROM Pay.FormsInfo LEFT OUTER JOIN' +
    ' Pay.EmployeeInfo ON FormsInfo.FormInfoID = EmployeeInfo.BankCode LEFT OUTER JOIN'
    + ' Pay.FixedCalculated ON EmployeeInfo.PersonelNo = FixedCalculated.PersonelNO'
    + ' ' + ' WHERE ((FixedCalculated.ShowListKind = 1) OR(FixedCalculated.ShowListKind = 2) OR'
    + ' ((FixedCalculated.ShowListKind = 11) AND (FixedCalculated.BedBes = 2))) AND'
    + ' (FixedCalculated.Mounth =' + IntToStr(Mounth) + ' ) AND' +
    ' (FixedCalculated.ArchiveID = 0)' + ' GROUP BY FixedCalculated.PersonelNO'
    + ' HAVING ROUND(SUM(CASE WHEN (FixedCalculated.ShowListKind = 1)' +
    ' THEN FixedCalculated.Price ELSE - FixedCalculated.Price END) ,0)<0';
  with DMF.qryTmpTmpp do
  begin
    Close;
    SQL.Text := sqlTxt;
    Open;
    Result := DMF.qryTmpTmpp.RecordCount > 0;
    Close;
  end;
end;

end.
