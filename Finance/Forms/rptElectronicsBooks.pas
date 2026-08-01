unit rptElectronicsBooks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, DB, ADODB, ppVar, ppPrnabl, System.MaskUtils,
  ppClass, ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, ShellAPI, ComObj, IOUtils;

type
  TrptElectronicsBooksF = class(Ttemplate2MDIF)
    qryJournal: TADOQuery;
    srcJournal: TDataSource;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    qryCompony: TADOQuery;
    srcCompony: TDataSource;
    qryComponyCompanyCode: TIntegerField;
    qryComponyCompanyName_L1: TStringField;
    qryJournalDocDate: TStringField;
    qryJournalTopicCode: TLargeintField;
    qryJournalComment_L1: TStringField;
    qryJournalDebt: TFMTBCDField;
    qryJournalCredit: TFMTBCDField;
    qry_Init: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    pop4Print: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pnlCompony: TPanel;
    DBNavigator2: TDBNavigator;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit6: TDBEdit;
    actFilter: TAction;
    actShowForm: TAction;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    qryJournalMoeenName_L1: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine7: TppLine;
    ppDBText3: TppDBText;
    ppLine8: TppLine;
    ppDBText4: TppDBText;
    ppLine9: TppLine;
    ppDBText5: TppDBText;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText32: TppDBText;
    ppLine73: TppLine;
    ppDBText33: TppDBText;
    ppLine72: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppLine12: TppLine;
    ppDBText11: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine19: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine67: TppLine;
    ppLine62: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel21: TppLabel;
    ppDBText16: TppDBText;
    ppLine6: TppLine;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLine15: TppLine;
    actOther: TAction;
    DBGrid1: TCedarDbgrid;
    qryJournalKolName_L1: TStringField;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    MskDate: TMaskEdit;
    btnCsv: TBitBtn;
    btnExcel: TBitBtn;
    qryJournalPrimaryDocNo: TIntegerField;
    qryJournalAccCode: TStringField;
    qryCheckAllDocuments: TADOQuery;
    rg1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryComponyAfterScroll(DataSet: TDataSet);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure ppCompanyNameGetText(Sender: TObject; var Text: string);
    procedure btnCsvClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
  private
    formType: byte;
    procedure initForm;
    // function CalcSumFileds(FiledName: String): Currency;
    procedure UpdateFilter;
    procedure ExportJournalToCSVAndOpenDir;
    procedure ExportToExcel;
    function AreAllDocumentsPermanent: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptElectronicsBooksF: TrptElectronicsBooksF;

implementation

uses Dm, GlobalPro, filter_ADO, FilterClass_ADO, Document,
  sort2, search2, searchCode_L1_L2, DBGrid2Print, Resource, FormFunctions;

{$R *.dfm}

procedure TrptElectronicsBooksF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDate') = nil then
    close;
end;

procedure TrptElectronicsBooksF.UpdateFilter;
var
  QueryStr: string;
begin
  // توجه: در این سیستم:
  // - "تجمیع" (ItemIndex = 0) → نمایش خلاصه (بدون TopicCode و MoeenName_L1) → از _Summary استفاده می‌شود
  // - "ریز کارکرد" (ItemIndex = 1) → نمایش جزئیات کامل → از _Detail استفاده می‌شود
  case rg1.ItemIndex of
    0:
      QueryStr := 'SELECT * FROM Acc.rptElectronicsBooks_Summary(';
    1:
      QueryStr := 'SELECT * FROM Acc.rptElectronicsBooks_Detail(';
    2:
      QueryStr := 'SELECT * FROM Acc.rptElectronicsBooks_Monthly(';
  end;

  QueryStr := QueryStr +
    ':LenAccCode,:CompanyCodeFrom,:CompanyCodeTo,:DocDateFrom,:DocDateTo,:YearIDFrom,:YearIDTo ,:DocTypeCodes )';

  case rg1.ItemIndex of
    0, 1:
      QueryStr := QueryStr +
        ' ORDER BY DocDate, PrimaryDocNo ,  CASE WHEN Debt> 0 THEN 0 ELSE 1 END, AccCode ';
  2:
    QueryStr := QueryStr + ' ORDER BY PrimaryDocNo ,DocDate, (case when Debt >0 then 0 else 1 end), AccCode';

  end;

  with qryJournal do
  begin
    Active := false;
    qryJournal.SQL.Text := QueryStr;

    Parameters.ParamByName('DocTypeCodes').Value :=
      GetcFrom(myParams.ParamValues['DocTypeCodes'], ftString);

    Parameters.ParamByName('LenAccCode').Value :=
      qry_Init.FieldByName('CodeLength').AsInteger;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);

    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);

    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('YearIDFrom').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('YearIDTo').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    end;

    // Active:=True ;
  end; // with

  with qryCompony do
  begin
    Active := false;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);

    Active := true;
  end;

end;

procedure TrptElectronicsBooksF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItem(DMF.adcAccounting, 'DocTypeCodes', 'انواع سند', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, '');

      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDateBank,
        // strMaxMinDocDate,
        [APPBank.StartYear, APPBank.endYear]));

      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT 0  , 9999 ');

      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM util.maliYear');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TrptElectronicsBooksF.ExportJournalToCSVAndOpenDir;
var
  SL: TStringList;
  Line, FolderPath, FilePath: string;
begin
  // ساخت مسیر زیر فولدر در __TheTempDIR
  FolderPath := IncludeTrailingPathDelimiter(__TheTempDIR) + 'TaxBooks';
  ForceDirectories(FolderPath); // اگر وجود نداشته باشد، ایجاد می‌کند

  // تعیین مسیر فایل CSV
  FilePath := IncludeTrailingPathDelimiter(FolderPath) + 'Journal.csv';

  SL := TStringList.Create;
  try

    SL.Add('"ردیف","تاریخ","کد حساب کل","عنوان حساب کل","کد حساب معین","عنوان حساب معین","شرح","مبلغ بدهکار (ریال)","مبلغ بستانکار (ریال)"');
    qryJournal.DisableControls;
    qryJournal.First;
    while not qryJournal.Eof do
    begin

      Line := '"' + qryJournal.FieldByName('PrimaryDocNo').AsString + '",' + '"'
        + qryJournal.FieldByName('DocDate').AsString + '",' + '"' +
        qryJournal.FieldByName('AccCode').AsString + '",' + '"' +
        qryJournal.FieldByName('KolName_L1').AsString + '",' + '"' +
        qryJournal.FieldByName('TopicCode').AsString + '",' + '"' +
        qryJournal.FieldByName('MoeenName_L1').AsString + '",' + '"' +
        qryJournal.FieldByName('Comment_L1').AsString + '",' + '"' +
        IntToStr(Round(qryJournal.FieldByName('Debt').AsFloat)) + '",' + '"' +
        IntToStr(Round(qryJournal.FieldByName('Credit').AsFloat)) + '"';

      SL.Add(Line);
      qryJournal.Next;
    end;
    SL.SaveToFile(FilePath, TEncoding.UTF8); // ذخیره با انکدینگ UTF8
  finally
    qryJournal.EnableControls;
    SL.Free;
  end;

  // باز کردن مسیر در اکسپلورر
  ShellExecute(0, 'open', PChar(FolderPath), nil, nil, SW_SHOWNORMAL);
end;

procedure TrptElectronicsBooksF.btnCsvClick(Sender: TObject);

begin
  inherited;
  if AreAllDocumentsPermanent then
    ExportJournalToCSVAndOpenDir
  else
    Warn('خطا: تمام اسناد حسابداری در محدوده انتخاب‌شده باید دایم باشند.');

end;

procedure TrptElectronicsBooksF.btnExcelClick(Sender: TObject);
begin
  inherited;
  if AreAllDocumentsPermanent then
    ExportToExcel
  else
    Warn('خطا: تمام اسناد حسابداری در محدوده انتخاب‌شده باید دایم باشند.');

end;

function TrptElectronicsBooksF.AreAllDocumentsPermanent: Boolean;

begin
  with qryCheckAllDocuments do
    try
      Active := false;
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        qryJournal.Parameters.ParamByName('CompanyCodeFrom').Value;
      Parameters.ParamByName('CompanyCodeTo').Value :=
        qryJournal.Parameters.ParamByName('CompanyCodeTo').Value;
      Parameters.ParamByName('DocDateFrom').Value :=
        qryJournal.Parameters.ParamByName('DocDateFrom').Value;
      Parameters.ParamByName('DocDateTo').Value :=
        qryJournal.Parameters.ParamByName('DocDateTo').Value;
      Parameters.ParamByName('YearIDFrom').Value :=
        qryJournal.Parameters.ParamByName('YearIDFrom').Value;
      Parameters.ParamByName('YearIDTo').Value :=
        qryJournal.Parameters.ParamByName('YearIDTo').Value;
      Open;
      Result := Fields[0].AsBoolean;
    finally

    end;
end;

procedure TrptElectronicsBooksF.ExportToExcel;
var
  ExcelApp, Workbook, Worksheet: Variant;
  i: Integer;
  FolderPath, FilePath: string;
begin
  // مسیر و نام لاتین برای پوشه و فایل

  FolderPath := IncludeTrailingPathDelimiter(__TheTempDIR) + 'TaxBooks';
  if not DirectoryExists(FolderPath) then
    ForceDirectories(FolderPath);

  FilePath := FolderPath + '\TaxBookExport.xlsx';

  // راه‌اندازی Excel
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.ScreenUpdating := false;
  ExcelApp.Visible := false;
  Workbook := ExcelApp.Workbooks.Add;
  Worksheet := Workbook.Worksheets[1];

  // نوشتن عنوان ستون‌ها (میتونه فارسی باشه)
  Worksheet.Cells[1, 1] := 'ردیف';
  Worksheet.Cells[1, 2] := 'تاریخ';
  Worksheet.Cells[1, 3] := 'کد حساب کل';
  Worksheet.Cells[1, 4] := 'عنوان حساب کل';
  Worksheet.Cells[1, 5] := 'کد حساب معین';
  Worksheet.Cells[1, 6] := 'عنوان حساب معین';
  Worksheet.Cells[1, 7] := 'شرح';
  Worksheet.Cells[1, 8] := 'مبلغ بدهکار (ریال)';
  Worksheet.Cells[1, 9] := 'مبلغ بستانکار (ریال)';

  // نوشتن داده‌ها
  qryJournal.DisableControls;
  qryJournal.First;
  i := 2;
  while not qryJournal.Eof do
  begin
    Worksheet.Cells[i, 1] := qryJournal.FieldByName('PrimaryDocNo').AsString;
    Worksheet.Cells[i, 2] := qryJournal.FieldByName('DocDate').AsString;
    Worksheet.Cells[i, 3] := qryJournal.FieldByName('AccCode').AsString;
    Worksheet.Cells[i, 4] := qryJournal.FieldByName('KolName_L1').AsString;
    Worksheet.Cells[i, 5] := qryJournal.FieldByName('TopicCode').AsString;
    Worksheet.Cells[i, 6] := qryJournal.FieldByName('MoeenName_L1').AsString;
    Worksheet.Cells[i, 7] := qryJournal.FieldByName('Comment_L1').AsString;
    Worksheet.Cells[i, 8] := qryJournal.FieldByName('Debt').AsFloat;
    Worksheet.Cells[i, 9] := qryJournal.FieldByName('Credit').AsFloat;

    Inc(i);
    qryJournal.Next;
  end;

  // ذخیره فایل و خروج از اکسل
  qryJournal.EnableControls;
  Workbook.SaveAs(FilePath);
  Workbook.close(false);
  ExcelApp.Quit;
  ExcelApp := Unassigned;

  // باز کردن پوشه مقصد برای کاربر
  ShellExecute(0, 'open', PChar(FolderPath), nil, nil, SW_SHOWNORMAL);
end;

procedure TrptElectronicsBooksF.BitBtn3Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := ' SELECT CompanyCode, CompanyName_L1, CompanyName_L2 FROM  acc.Companies '
    + ' where  CompanyCode   between  ' +
    IntToStr(qryCompony.Parameters.ParamByName('CompanyCodeFrom').Value) +
    ' and  ' + IntToStr(qryCompony.Parameters.ParamByName
    ('CompanyCodeTo').Value);

  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, ' گروه شركتها', Txt,
    ['كد', 'نام شركت', 'Compony Name'], Results, [50, 100, 100], alLeft);
  if s then
    qryCompony.Locate('CompanyCode', Results[0], []);

end;

procedure TrptElectronicsBooksF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryJournal);
end;

procedure TrptElectronicsBooksF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptElectronicsBooksF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryJournal);
end;

procedure TrptElectronicsBooksF.FormCreate(Sender: TObject);
begin
  inherited;
  formType := var_glb_gParam;
  initForm;
end;

procedure TrptElectronicsBooksF.qryComponyAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryJournal do
  begin
    Active := false;
    Parameters.ParamByName('CompanyCodeFrom').Value :=
      qryComponyCompanyCode.AsInteger;
    Parameters.ParamByName('CompanyCodeTo').Value :=
      qryComponyCompanyCode.AsInteger;

    SetCompanyFilterinLogin(Parameters);

    Active := true;
  end; // with
end;

procedure TrptElectronicsBooksF.rg1Click(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TrptElectronicsBooksF.SpeedButton3Click(Sender: TObject);
var
  date: String;
begin
  inherited;
  date := StringReplace(var_glb_CurrentDate, '/', '', [rfReplaceAll]);
  MskDate.Text := MaskDoFormatText('9999/99/99', date, '_')

end;

procedure TrptElectronicsBooksF.ppCompanyNameGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if pnlCompony.Visible then
    Text := qryComponyCompanyName_L1.AsString
  else
    Text := '';
end;

procedure TrptElectronicsBooksF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptElectronicsBooksF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptElectronicsBooksF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptElectronicsBooksF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'تاريخ سند از ' + GetcFrom(myParams.ParamValues['DocDate'], ftString)
    + ' تا ' + GetcTo(myParams.ParamValues['DocDate'], ftString);
end;

procedure TrptElectronicsBooksF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'سند فرعي از ' + GetcFrom(myParams.ParamValues['SecondaryDocNo'],
    ftString) + ' تا ' + GetcTo(myParams.ParamValues['SecondaryDocNo'],
    ftString);
end;

procedure TrptElectronicsBooksF.actPrintExecute(Sender: TObject);
begin
  inherited;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptElectronicsBooksF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qryJournal.DisableControls;
    InitReportFile(ppReport1, 'ReprptElectronicsBooks', DBGrid1, ppDBPipeline1);
  finally
    qryJournal.EnableControls;
  end; // try
end;

procedure TrptElectronicsBooksF.N3Click(Sender: TObject);
begin
  inherited;
  try
    qryJournal.DisableControls;
    InitReportFile(ppReport1, 'ReprptElectronics3', DBGrid1, ppDBPipeline1);
  finally
    qryJournal.EnableControls;
  end; // try
end;

procedure TrptElectronicsBooksF.N2Click(Sender: TObject);
begin
  inherited;
  try
    qryJournal.DisableControls;
    InitReportFile(ppReport1, 'ReprptElectronicsBooks2', DBGrid1,
      ppDBPipeline1);
  finally
    qryJournal.EnableControls;
  end; // try
end;

procedure TrptElectronicsBooksF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryJournal.FieldByName('Serial'));
end;

procedure TrptElectronicsBooksF.initForm;
begin
  with qry_Init do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := formType;
    Active := true;
  end;
  pnlCompony.Visible := gv_MultiCompany;
  SpeedButton3.Click;

end;

procedure TrptElectronicsBooksF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0)
end;

procedure TrptElectronicsBooksF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qryJournal.Requery;
end;

end.
