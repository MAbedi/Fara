unit searchCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppCache, ComCtrls, SumDBGrid, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, uSlidePanel, uSmartSlidePanel;

type
  TsearchCheckF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    qryCheck: TADOQuery;
    srcCheck: TDataSource;
    qryCheckCheckNumber: TStringField;
    qryCheckCheckDate: TStringField;
    qryCheckFormCaption: TStringField;
    qryCheckBankName: TStringField;
    qryCheckItemAmount: TBCDField;
    qryCheckCustomerID2: TIntegerField;
    qryCheckCustomerID1: TIntegerField;
    qryCheckFormNumber: TIntegerField;
    qryCheckFormDate: TStringField;
    qryCheckItemNote: TStringField;
    qryCheckAccountNumber: TStringField;
    qryCheckformsCustomerID2: TIntegerField;
    qryCheckCustName_2: TStringField;
    qryCheckCustName_1: TStringField;
    qryCheckCustName_D: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    actFilter: TAction;
    actPrint: TAction;
    actPrint_import: TAction;
    actShow: TAction;
    actExcel: TAction;
    actSort: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNumber: TppSystemVariable;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine17: TppLine;
    ppLine13: TppLine;
    ppLblCustname2: TppLabel;
    ppLblCustomerID2: TppLabel;
    ppLabel8: TppLabel;
    ppLblCustomerID1: TppLabel;
    ppLabel32: TppLabel;
    ppLabel9: TppLabel;
    ppLabel17: TppLabel;
    ppLabel5: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText19: TppDBText;
    ppLine22: TppLine;
    ppLine33: TppLine;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLine43: TppLine;
    ppLine46: TppLine;
    ppLine16: TppLine;
    ppLine30: TppLine;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel16: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppLabel18: TppLabel;
    ppLine38: TppLine;
    ppDBCalc19: TppDBCalc;
    ppLine36: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppLine6: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine8: TppLine;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppLine4: TppLine;
    ppLabel4: TppLabel;
    ppDBText7: TppDBText;
    amountFrom: TMaskEdit;
    dateFrom: TMaskEdit;
    dateTo: TMaskEdit;
    amountTo: TMaskEdit;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    qryCheckAmount: TBCDField;
    numberfrom: TMaskEdit;
    numberto: TMaskEdit;
    Label8: TLabel;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    qryCheckFormType: TWordField;
    qryCheckFirstUser: TStringField;
    qryCheckLastUser: TStringField;
    qryCheckFormID: TIntegerField;
    qryCheckAidInfoNo: TStringField;
    qryCheckServerID: TIntegerField;
    qryCheckYearID: TIntegerField;
    RadioGroup1: TRadioGroup;
    qryCheckDataBankName: TStringField;
    btnDef: TBitBtn;
    grp5: TGroupBox;
    lbl14: TLabel;
    lbl15: TLabel;
    btnCustomerID1From: TSpeedButton;
    btnCustomerID1To: TSpeedButton;
    medtCustomerID1From: TMaskEdit;
    medtCustomerID1To: TMaskEdit;
    cmbPersonID1: TComboBox;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    btnformsCustomerID2From: TSpeedButton;
    btnformsCustomerID2To: TSpeedButton;
    medtformsCustomerID2From: TMaskEdit;
    medtformsCustomerID2To: TMaskEdit;
    cmb1: TComboBox;
    grp2: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    btnCustomerID2From: TSpeedButton;
    btnCustomerID2To: TSpeedButton;
    medtCustomerID2From: TMaskEdit;
    medtCustomerID2To: TMaskEdit;
    cmb2: TComboBox;
    qryCheckCheckCounter: TIntegerField;
    grp3: TGroupBox;
    lbl5: TLabel;
    lbl6: TLabel;
    medtCheckCounterFrom: TMaskEdit;
    medtCheckCounterTo: TMaskEdit;
    qryCheckFormState: TStringField;
    DBGrid1: TCedarDbgrid;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    HunterCodeFrom: TMaskEdit;
    HunterCodeTo: TMaskEdit;
    qryCheckHunterCode: TStringField;
    qryCheckSyadSystem: TBooleanField;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    btnTypeFrom: TSpeedButton;
    btnTypeTo: TSpeedButton;
    MskTypeFrom: TMaskEdit;
    MskTypeTo: TMaskEdit;
    ComboBox1: TComboBox;
    GroupBox6: TGroupBox;
    MskBank: TMaskEdit;
    qryCheckOtherNationalCode: TStringField;
    qryChk: TADOQuery;
    srcChk: TDataSource;
    qryChkCheckNumber: TStringField;
    qryChkBankName: TStringField;
    qryChkYearID: TIntegerField;
    PanelMain: TPanel;
    CedarDbgrid1: TCedarDbgrid;
    PaintBox1: TPaintBox;
    btnMakeIX: TBitBtn;
    procedure actFilterExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure actShowExecute(Sender: TObject);
    procedure actPrint_importExecute(Sender: TObject);
    procedure numberfromChange(Sender: TObject);
    procedure amountFromChange(Sender: TObject);
    procedure dateFromChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnDefClick(Sender: TObject);
    procedure btnAllClick(Sender: TObject);
    procedure medtCustomerID2FromChange(Sender: TObject);
    procedure medtCustomerID1FromChange(Sender: TObject);
    procedure medtformsCustomerID2FromChange(Sender: TObject);
    procedure medtCheckCounterFromChange(Sender: TObject);
    procedure HunterCodeFromChange(Sender: TObject);
    procedure btnTypeFromClick(Sender: TObject);
    procedure CedarDbgrid1DblClick(Sender: TObject);
    procedure SlidePanel2Collapsed(Sender: TObject);
    procedure SlidePanel2Expanded(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBox1Click(Sender: TObject);
    procedure btnMakeIXClick(Sender: TObject);

  private
    FExpandedWidth: Integer;
    FCollapsedWidth: Integer;
    FIsExpanded: Boolean;
    procedure filter;
    procedure MakeSQL(BankName: string);
    procedure InitMinMax;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  searchCheckF: TsearchCheckF;

implementation

uses DM, GlobalPro, sort2, search2, dbgrid2print,
  FormFunctions, FaraConsts, searchCode_ADO;

{$R *.dfm}

procedure TsearchCheckF.actFilterExecute(Sender: TObject);
begin
  inherited;
  filter;
end;

procedure TsearchCheckF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  filter
end;

procedure TsearchCheckF.SlidePanel2Collapsed(Sender: TObject);
begin
  inherited;
  qryChk.Close;

end;

procedure TsearchCheckF.SlidePanel2Expanded(Sender: TObject);
begin
  inherited;
  qryChk.Open;

end;

procedure TsearchCheckF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TsearchCheckF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCheck);
end;

procedure TsearchCheckF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCheck);
end;

procedure TsearchCheckF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCheck.DisableControls;
    InitReportFile(ppReport1, 'searchCheck', true);
  finally
    qryCheck.EnableControls;
  end;
end;

procedure TsearchCheckF.FormCreate(Sender: TObject);
begin
  inherited;
  InitMinMax;
  // filter;

  FCollapsedWidth := PaintBox1.Width;
  FExpandedWidth := PanelMain.Width;

  PanelMain.Width := FCollapsedWidth;
  CedarDbgrid1.Visible := False;

  FIsExpanded := False;

end;

procedure TsearchCheckF.PaintBox1Click(Sender: TObject);
begin
  inherited;
  if FIsExpanded then
  begin
    qryChk.Close;
    CedarDbgrid1.Visible := False;
    PanelMain.Width := FCollapsedWidth;
    FIsExpanded := False;
  end
  else
  begin
    qryChk.Open;
    PanelMain.Width := FExpandedWidth;
    CedarDbgrid1.Visible := true;
    FIsExpanded := true;
  end;
end;

procedure TsearchCheckF.HunterCodeFromChange(Sender: TObject);
begin
  inherited;
  HunterCodeTo.Text := HunterCodeFrom.Text
end;

procedure TsearchCheckF.InitMinMax;
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT ' +
      '  MIN(TRY_CAST(RTRIM(CheckNumber) AS DECIMAL(20,0))) AS MINCheckNumber, ' +
      '  MAX(TRY_CAST(RTRIM(CheckNumber) AS DECIMAL(20,0))) AS MAXCheckNumber, ' +
      '  MIN(HunterCode) AS MINHunterCode, ' +
      '  MAX(HunterCode) AS MAXHunterCode, ' +
      '  MIN(CheckDate) AS MINCheckDate, ' +
      '  MAX(CheckDate) AS MAXCheckDate, ' +
      '  MIN(ISNULL(CheckCounter,0)) AS MINCheckCounter, ' +
      '  MAX(ISNULL(CheckCounter,0)) AS MAXCheckCounter, ' +
      '  MIN(ItemAmount) AS MINItemAmount, ' +
      '  MAX(ItemAmount) AS MAXItemAmount ' +
      'FROM dbo.FormItems ' +
      'WHERE CheckNumber IS NOT NULL ' +
      '  AND RTRIM(CheckNumber) <> '''' ' +
      '  AND TRY_CAST(RTRIM(CheckNumber) AS DECIMAL(20,0)) IS NOT NULL';

    Active := True;

    numberfrom.Text := FieldByName('MINCheckNumber').AsString;
    numberto.Text   := FieldByName('MAXCheckNumber').AsString;

    HunterCodeFrom.Text := FieldByName('MINHunterCode').AsString;
    HunterCodeTo.Text   := FieldByName('MAXHunterCode').AsString;

    amountFrom.Text := FieldByName('MINItemAmount').AsString;
    amountTo.Text   := FieldByName('MAXItemAmount').AsString;

    dateFrom.Text := FieldByName('MINCheckDate').AsString;
    dateTo.Text   := FieldByName('MAXCheckDate').AsString;

    medtCheckCounterFrom.Text := FieldByName('MINCheckCounter').AsString;
    medtCheckCounterTo.Text   := FieldByName('MAXCheckCounter').AsString;
  end;
end;

procedure TsearchCheckF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCheck.Fieldbyname('CheckNumber'));
end;

procedure TsearchCheckF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TsearchCheckF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TsearchCheckF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TsearchCheckF.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'محدوده شماره چك از' + numberfrom.Text + ' تا ' + numberto.Text +
    'و مبلغ چك از ' + amountFrom.Text + ' تا ' + amountTo.Text;
end;

procedure TsearchCheckF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'محدوده سر رسيد چك از ' + dateFrom.Text + ' تا ' + dateTo.Text;
end;

procedure TsearchCheckF.actShowExecute(Sender: TObject);
begin
  inherited;
  if (qryCheckDataBankName.AsString <> APPBank.Name) or
    (qryCheckYearID.AsInteger <> APPBank.Year) then
  begin
    Warn('اين چك در سال مالي با نام ' + qryCheckDataBankName.AsString + '>>' +
      qryCheckYearID.AsString + '  وجود دارد');
    Exit;
  end;
  ShowFormTypesForms(qryCheck, self)
end;

procedure TsearchCheckF.actPrint_importExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TsearchCheckF.numberfromChange(Sender: TObject);
begin
  inherited;
  numberto.Text := numberfrom.Text;
end;

procedure TsearchCheckF.PaintBox1Paint(Sender: TObject);
var
  LF: TLogFont;
  HF, OldHF: HFONT;
  S: string;
  C: TCanvas;
  TextW, TextH: Integer;
  X, Y: Integer;
begin
  S := 'لیست چک‌های تکراری و نیاز به بررسی';
  C := PaintBox1.Canvas;

  // اندازه متن قبل از چرخش
  TextW := C.TextWidth(S);
  TextH := C.TextHeight(S);

  // ساخت فونت چرخیده
  GetObject(C.Font.Handle, SizeOf(LF), @LF);
  LF.lfEscapement := 900;
  LF.lfOrientation := 900;

  HF := CreateFontIndirect(LF);
  OldHF := SelectObject(C.Handle, HF);

  C.Brush.Style := bsClear;

  // --- محاسبه وسط واقعی ---
  //
  // در حالت چرخیده، TextWidth تبدیل به ارتفاع می‌شود و بالعکس.
  // پس:
  //
  // افقی (X جدید) ← وسط ارتفاع Text روی محور X
  X := (PaintBox1.Width - TextH) div 2;

  // عمودی (Y جدید) ← وسط عرض Text روی محور Y
  Y := (PaintBox1.Height + TextW) div 2;

  C.TextOut(X, Y, S);

  SelectObject(C.Handle, OldHF);
  DeleteObject(HF);
end;

procedure TsearchCheckF.amountFromChange(Sender: TObject);
begin
  inherited;
  amountTo.Text := amountFrom.Text;
end;

procedure TsearchCheckF.btnMakeIXClick(Sender: TObject);
begin
  inherited;
  try
    DMf.adcBSell.Execute
      ('IF NOT EXISTS (SELECT name FROM sys.indexes WHERE name = ''UX_FormItems_CheckUnique'') '
      + 'CREATE UNIQUE INDEX UX_FormItems_CheckUnique ' +
      'ON FormItems (YearID, ServerID, CheckNumber, BankName) ' +
      'WHERE preFormItemID IS NULL AND LEN(CheckNumber) > 3');

    Warn('ایندکس با موفقیت ایجاد شد', mtInformation);
  except
    on E: Exception do
      Warn('خطا در ایجاد ایندکس: ' + E.Message);
  end;
end;

procedure TsearchCheckF.btnAllClick(Sender: TObject);
var
  C, SQLtxt, S, sCaption: String;
begin
  inherited;

  S := (Sender as TSpeedButton).Hint; // Forms.CustomerID1
  SQLtxt := 'SELECT DISTINCT %s, Customers.CustName ' +
    'FROM Forms INNER JOIN FormItems ON Forms.FormID = FormItems.FormID ' +
    'AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID INNER JOIN '
    + 'Vu_CustomersGroups as Customers ON %s = Customers.CustID ';
  SQLtxt := Format(SQLtxt, [S, S]);
  sCaption := searchCode_ADOF.SearchCode(DMf.adcBSell, C, 'كدهاي مشتريان',
    SQLtxt, ['كد', 'مشخصات'], alLeft, 1);
  if sCaption <> '' then
  begin
    S := (Sender as TSpeedButton).Name;
    S := StringReplace(S, 'btn', 'medt', []);
    TMaskEdit(FindComponent(S)).Text := C;
    TMaskEdit(FindComponent(S)).Hint := sCaption;
  end;
end;

procedure TsearchCheckF.btnDefClick(Sender: TObject);
begin
  inherited;
  InitMinMax;
  filter;
end;

procedure TsearchCheckF.btnTypeFromClick(Sender: TObject);
var
  C, SQLtxt, S, sCaption: String;
begin
  inherited;
  SQLtxt := 'SELECT FormType, FormCaption FROM FormTypes WHERE (DisplayFormType = 1) ';
  sCaption := searchCode_ADOF.SearchCode(DMf.adcBSell, C, 'كدهاي فرم', SQLtxt,
    ['كد', 'فرم'], alLeft, 1);
  if sCaption <> '' then
  begin
    S := (Sender as TSpeedButton).Name;
    S := StringReplace(S, 'btn', 'msk', []);
    TMaskEdit(FindComponent(S)).Text := C;
    TMaskEdit(FindComponent(S)).Hint := sCaption;
  end;

end;

procedure TsearchCheckF.CedarDbgrid1DblClick(Sender: TObject);
begin
  inherited;
  numberfrom.Text := qryChkCheckNumber.AsString;
  numberto.Text := qryChkCheckNumber.AsString;
  filter
end;

procedure TsearchCheckF.dateFromChange(Sender: TObject);
begin
  inherited;
  dateTo.Text := dateFrom.Text;
end;

procedure TsearchCheckF.filter;
var
  s1: string;
begin
  if ((numberfrom.Text = EmptyStr) or (numberto.Text = EmptyStr) or
    // (HunterCodeFrom.Text = EmptyStr) or (HunterCodeTo.Text = EmptyStr) or
    (dateFrom.Text = EmptyStr) or (dateTo.Text = EmptyStr) or
    (amountFrom.Text = EmptyStr) or (amountTo.Text = EmptyStr) or
    (medtCheckCounterFrom.Text = EmptyStr) or
    (medtCheckCounterTo.Text = EmptyStr)) then
  begin
    Warn('محدوده كامل نمي باشد');
    Exit;
  end;
  case RadioGroup1.ItemIndex of
    0:
      with qryCheck do
      begin
        Active := False;
        MakeSQL(APPBank.Name);
        SQL.Add('AND (F.YearID BETWEEN :YearIDFrom AND :YearIDTo )');
        Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
        Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
        // Parameters.ParamByName('CheckNumberfrom').Value:=numberfrom.Text;
        // Parameters.ParamByName('CheckNumberto').Value:=numberto.Text;
        // Parameters.ParamByName('CheckDateFrom').Value:=dateFrom.Text;
        // Parameters.ParamByName('CheckDateto').Value:=dateTo.Text;
        // Parameters.ParamByName('ItemAmountFrom').Value:=amountFrom.Text;
        // Parameters.ParamByName('ItemAmountto').Value:=amountTo.Text;
        // Parameters.ParamByName('YearIDFrom').Value:=opt.DefaultYear;
        // Parameters.ParamByName('YearIDTo').Value:=APPBank.Year;
        if CtrlDown then
          ShowQryParam(qryCheck);
        Active := true;
      end;
    1:
      begin
        with DMf.qryGlbTmpTmp do
        begin
          Active := False;
          SQL.Text := 'SELECT BankName FROM Sections WHERE SYSID=' +
            IntToStr(SYSID);
          SQL.Add('AND n_subcompany = ' + IntToStr(APPBank.n_subcompany));
          SQL.Add('AND (NOT (BankName LIKE ''%salary%'')) AND (NOT (BankName LIKE ''%assets%''))');
          Active := true;
          while not eof do
          begin
            if s1 <> EmptyStr then
              s1 := s1 + #13#10 + 'UNION ALL' + #13#10;
            MakeSQL(Fieldbyname('BankName').AsString);
            s1 := s1 + qryCheck.SQL.Text;
            Next;
          end; // while
          Active := False;
        end;
        with qryCheck do
        begin
          Active := False;
          SQL.Text := s1;
          if CtrlDown then
            ShowQryParam(qryCheck);
          Active := true;
        end;
      end;
  end;
end;

procedure TsearchCheckF.MakeSQL(BankName: string);
begin
  with qryCheck do
  begin
    SQL.Text := 'SELECT Fi.CheckNumber,Fi.HunterCode,Fi.CheckDate,';
    SQL.Add('T.FormCaption,Fi.BankName,Fi.ItemAmount,Fi.CustomerID2,');
    SQL.Add('F.CustomerID1, F.CustomerID2 AS formsCustomerID2, F.FormNumber,');
    SQL.Add('F.FormDate,Fi.ItemNote, ');

    SQL.Add('case F.FormState');
    SQL.Add('when 0 then ''موقت''');
    SQL.Add('when 1 then ''قطعي''');
    SQL.Add('when 10 then ''باطله''');
    SQL.Add('when 11 then ''رزرو''');
    SQL.Add('when 12 then ''پيش نويس'' end AS FormState,');

    SQL.Add('Fi.AccountNumber');
    SQL.Add(',CASE WHEN LEN(isnull(C2.CustFirstName,'''')) = 0 THEN C2.CustName');
    SQL.Add('ELSE C2.CustFirstName+'' '' +C2.CustName END AS CustName_2');
    SQL.Add(',CASE WHEN LEN(isnull(C1.CustFirstName,'''')) = 0 THEN C1.CustName');
    SQL.Add('ELSE C1.CustFirstName+'' '' +C1.CustName END  AS CustName_1');
    SQL.Add(',CASE WHEN LEN(isnull(CD.CustFirstName,'''')) = 0 THEN CD.CustName');
    SQL.Add('ELSE CD.CustFirstName+'' '' +CD.CustName END AS CustName_D');
    SQL.Add(',T.FormType,F.FormID,');
    SQL.Add('F.ServerID, F.YearID,');
    SQL.Add('Fi.ItemAmount as Amount,F.FirstUser,F.LastUser ,Fi.AidInfoNo,Fi.CheckCounter');
    SQL.Add(',''' + BankName + ''' AS DataBankName ,SyadSystem ');
    SQL.Add(',OtherNationalCode');
    SQL.Add('FROM ' + BankName + '.dbo.FormItems Fi LEFT OUTER JOIN');
    SQL.Add(BankName +
      '.dbo.Forms F ON Fi.YearID = F.YearID AND Fi.ServerID = F.ServerID AND Fi.FormID =');
    SQL.Add('F.FormID LEFT OUTER JOIN');
    SQL.Add(BankName +
      '.dbo.FormTypes T ON F.FormType = T.FormType LEFT OUTER JOIN');
    SQL.Add(BankName +
      '.dbo.Customers CD ON Fi.CustomerID2 = CD.CustID LEFT OUTER JOIN');
    SQL.Add(BankName +
      '.dbo.Customers C1 ON F.CustomerID1 = C1.CustID LEFT OUTER JOIN');
    SQL.Add(BankName + '.dbo.Customers C2 ON F.CustomerID2 = C2.CustID');
    SQL.Add('WHERE (((Fi.CheckNumber between ''' + Trim(numberfrom.Text) +
      ''' and ''' + Trim(numberto.Text) + ''')');
    SQL.Add('AND (Fi.ItemAmount between ' + Trim(amountFrom.Text) + ' and ' +
      Trim(amountTo.Text) + ')) and');
    SQL.Add('((Fi.CheckDate is null) OR ( Fi.CheckDate = '''' )OR');
    SQL.Add('(Fi.CheckDate between ''' + dateFrom.Text + ''' and ''' +
      dateTo.Text + ''')))');

    // Exit;

    SQL.Add('and (T.FormType <> 103)');

    if Trim(MskTypeFrom.Text) <> EmptyStr then
      SQL.Add('AND (T.FormType between ' + MskTypeFrom.Text + ' and ' +
        MskTypeTo.Text + ')');

    if Trim(MskBank.Text) <> EmptyStr then
      SQL.Add('AND (Fi.BankName LIKE N''%' + MskBank.Text + '%'')');

    if Trim(HunterCodeFrom.Text) <> EmptyStr then
      SQL.Add('AND (Fi.HunterCode = null or (Fi.HunterCode between ''' +
        HunterCodeFrom.Text + ''' and ''' + HunterCodeTo.Text + '''))');

    if Trim(medtCustomerID2From.Text) <> EmptyStr then
      SQL.Add('AND (Fi.CustomerID2 between ' + medtCustomerID2From.Text +
        ' and ' + medtCustomerID2To.Text + ')');

    if Trim(medtCustomerID1From.Text) <> EmptyStr then
      SQL.Add('AND (F.CustomerID1 between ' + medtCustomerID1From.Text + ' AND '
        + medtCustomerID1To.Text + ')');

    if Trim(medtformsCustomerID2From.Text) <> EmptyStr then
      SQL.Add('AND (F.CustomerID2 between ' + medtformsCustomerID2From.Text +
        ' AND ' + medtformsCustomerID2To.Text + ')');

    if Trim(medtCheckCounterFrom.Text) <> EmptyStr then
      SQL.Add('AND (ISNULL(Fi.CheckCounter,0) between ' +
        medtCheckCounterFrom.Text + ' AND ' + medtCheckCounterTo.Text + ')');

  end;
end;

procedure TsearchCheckF.medtCheckCounterFromChange(Sender: TObject);
begin
  inherited;
  medtCheckCounterTo.Text := medtCheckCounterFrom.Text;
end;

procedure TsearchCheckF.medtCustomerID1FromChange(Sender: TObject);
begin
  inherited;
  medtCustomerID1To.Text := medtCustomerID1From.Text
end;

procedure TsearchCheckF.medtCustomerID2FromChange(Sender: TObject);
begin
  inherited;
  medtCustomerID2To.Text := medtCustomerID2From.Text
end;

procedure TsearchCheckF.medtformsCustomerID2FromChange(Sender: TObject);
begin
  inherited;
  medtformsCustomerID2To.Text := medtformsCustomerID2From.Text
end;



// (CustomerID2 = 221) OR (CustomerID1 = 221) AND (BankName like '%ملت%')  OR  (BankName like '%سفته%')

end.
