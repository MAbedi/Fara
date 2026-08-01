unit TtmsExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnList, Buttons, DB, ADODB, System.StrUtils,
  ComCtrls, Menus, Grids, Vcl.DBGrids, ExtDlgs, System.Actions,
  DBGridEhGrouping, mmessage,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, shamsiDate;
// اضافه کردن shamsiDate برای تبدیل تاریخ‌ها

type
  TTtmsExcelF = class(TForm)
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Label6: TLabel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    pnlSheet: TPanel;
    Label4: TLabel;
    cmbSheetName: TComboBox;
    Panel6: TPanel;
    lblCount: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    lstQry: TListBox;
    Panel4: TPanel;
    Label3: TLabel;
    lstExcel: TListBox;
    ProgressBar1: TProgressBar;
    CedarDbgrid1: TCedarDbgrid;
    Memo1: TMemo;
    ActionList1: TActionList;
    actOpenExcel: TAction;
    actUpdate: TAction;
    actClose: TAction;
    qryExcel: TADOQuery;
    MainMenu1: TMainMenu;
    OpenPictureDialog1: TOpenPictureDialog;
    SrcExcel: TDataSource;
    lstResult: TListBox;
    RadioGroup1: TRadioGroup;
    procedure actOpenExcelExecute(Sender: TObject);
    procedure cmbSheetNameChange(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure qryExcelAfterOpen(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
  private
    aQry: TADOQuery;
    procedure ExcelToList(Fname: String = '');
    procedure UpdateRecipts;
    function RemoveComma(const S: string): string;
    function ParseShamsiDate(const S: string): TDate;
    function DaysBetweenShamsiDates(Date1, Date2: string): Integer;
  public
    procedure ShowImPortExcel(Qry: TADOQuery);
  end;

var
  TtmsExcelF: TTtmsExcelF;

implementation

uses GlobalPro, GeneralDM, DM;

{$R *.dfm}

procedure TTtmsExcelF.actOpenExcelExecute(Sender: TObject);
begin
  Memo1.Lines.Clear;
  with TOpenDialog.Create(Self) do
    try
      Filter := 'Excel|*.xlsx;*.xls|All|*.*';
      if Execute and (FileName <> EmptyStr) then
        ExcelToList(FileName)
    finally
      SaveConfig('', aQry.Owner.Name + aQry.Name + '_Filepath', FileName);
      Free;
    end;

end;

procedure TTtmsExcelF.cmbSheetNameChange(Sender: TObject);
begin
  with qryExcel do
  begin
    Close;
    SQL.Text := 'select * from [' + cmbSheetName.Items
      [cmbSheetName.ItemIndex] + ']';
    Open;
    qryExcel.GetFieldNames(lstExcel.Items);
  end;
end;

procedure TTtmsExcelF.ShowImPortExcel(Qry: TADOQuery);
var
  i: Byte;
  S: String;
begin
  with TTtmsExcelF.Create(Application) do
    try
      with Qry do
      begin
        DisableControls;
        Memo1.Lines.Clear;
        for i := 0 to FieldCount - 1 do
        begin
          if (Fields[i].DisplayLabel <> Fields[i].FieldName) and
            (Fields[i].DisplayLabel <> EmptyStr) and
            (Fields[i].FieldKind in [fkData]) or ((Fields[i].Tag and 2) <> 0)
          then
            lstQry.AddItem(Fields[i].DisplayLabel, TObject(Fields[i].Index));
          Next;
        end;
        EnableControls;
      end;
      aQry := Qry;
      S := ReadConfig('', aQry.Owner.Name + aQry.Name + '_Filepath', '');
      if CtrlDown then
        S := EmptyStr;
      if not FileExists(S) then
        S := EmptyStr;
      if S <> EmptyStr then
        ExcelToList(S);

      ShowModal;
    finally

      Free;
    end;
end;

procedure TTtmsExcelF.RadioGroup1Click(Sender: TObject);
begin
  lstResult.Items[3] := RadioGroup1.Items[RadioGroup1.ItemIndex]
end;

function TTtmsExcelF.RemoveComma(const S: string): string;
begin
  Result := StringReplace(S, ',', '', [rfReplaceAll]);
end;

function TTtmsExcelF.ParseShamsiDate(const S: string): TDate;
var
  DateStr: string;
begin
  DateStr := Copy(S, 1, 10); // استخراج 'yyyy/mm/dd'
  Result := Shamsi2Miladi(DateStr);
end;

function TTtmsExcelF.DaysBetweenShamsiDates(Date1, Date2: string): Integer;
var
  D1, D2: TDate;
begin
  D1 := Shamsi2Miladi(Date1);
  D2 := ParseShamsiDate(Date2);
  Result := Abs(Trunc(D1) - Trunc(D2));
end;

procedure TTtmsExcelF.UpdateRecipts;
var
  DoWhile: Boolean;
  id, S, taxID, CompareID, CompareField, reciptDate, updateSQL: string;
  totalPrice, taxValue: Double;
  aTotalPrice, aTaxValue: Double;
  matchIDs: TList; // لیست IDهای匹配
  matchCount, count: Largeint;
  lDay: Integer;

begin
  count := 0;
  DoWhile := True;
  qryExcel.Open;
  qryExcel.First;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := qryExcel.RecordCount;
  aQry.DisableControls;
    qryExcel.DisableControls;
  lblCount.Visible := True;
  matchIDs := TList.Create;
  try
    while (not qryExcel.Eof and DoWhile) do
    begin
      // استخراج مقادیر از اکسل
      taxID := Trim(qryExcel.FieldByName('شماره مالیاتی صورت‌حساب').AsString);
      S := RemoveComma(qryExcel.FieldByName('مجموع صورت‌حساب').AsString);
      if S <> '' then
        totalPrice := StrToFloat(S)
      else
        totalPrice := 0;

      S := RemoveComma(qryExcel.FieldByName('مالیات بر ارزش افزوده').AsString);
      if S <> '' then
        taxValue := StrToFloat(S)
      else
        taxValue := 0;

      case RadioGroup1.ItemIndex of
        0:
          begin
            CompareID :=
              Trim(qryExcel.FieldByName('شناسه هویتی فروشنده/ حق‌العمل‌کار')
              .AsString);

            CompareField := 'NationalID'
          end;
        1:
          begin
            CompareID :=
              Trim(qryExcel.FieldByName('شماره اقتصادی فروشنده/ حق‌العمل‌کار')
              .AsString);
            CompareField := 'EconomicNumber'
          end;
      end;

      reciptDate := qryExcel.FieldByName('تاریخ صدور صورت‌حساب').AsString;

      // جستجو در aQry برای رکوردهای匹配
      matchIDs.Clear;
      aQry.First;
      while not aQry.Eof do
      begin // TotalPrice     TotallSellPrice
        aTotalPrice := aQry.FieldByName('TotallSellPrice').AsFloat;
        aTaxValue := aQry.FieldByName('TaxValue').AsFloat;
        lDay := DaysBetweenShamsiDates(aQry.FieldByName('ReciptDate').AsString,
          reciptDate);

        // Memo1.Lines.Add(lDay.ToString + ' ' + aQry.FieldByName('ReciptDate')
        // .AsString + '  ' + reciptDate);

        if ((aTotalPrice = totalPrice) and (aTaxValue = taxValue) and
          (aQry.FieldByName(CompareField).AsString = CompareID) and (lDay <= 15))
        then
        begin
          matchIDs.Add(Pointer(aQry.FieldByName('ID').AsString));
        end;
        aQry.Next;
      end;

      matchCount := matchIDs.count;
      if matchCount = 1 then
      begin
        id := string(matchIDs[0]);
        // اجرای آپدیت با ADO
        updateSQL := 'UPDATE Recipts SET TAXID = ''' + taxID + ''' WHERE (ID = '
          + id + ') AND (len(TAXID) < 2)';
        // فرض بر این که GeneralDM.ADOConnection وجود دارد؛ اگر متفاوت است، تنظیم کنید
        DMf.adcBSell.Execute(updateSQL);
        Memo1.Lines.Add(' Updated ID: ' + id + ' for Excel row ' +
          IntToStr(qryExcel.RecNo));
        count := count + 1;
      end
      else if matchCount = 0 then
        Memo1.Lines.Add(' No match for Excel row ' + IntToStr(qryExcel.RecNo))
      else
        Memo1.Lines.Add('Multiple matches (' + IntToStr(matchCount) +
          ') for Excel row ' + IntToStr(qryExcel.RecNo));

      lblCount.Caption := 'رديف:‏' + IntToStr(qryExcel.RecNo);
      If LastKeyPressed = VK_ESCAPE then
        if get_response('عمليات متوقف شود؟') = mrYes then
        begin
          DoWhile := False;
          LastKeyPressed := 0;
        end;
      LastKeyPressed := 0;
      qryExcel.Next;
      ProgressBar1.StepIt;
      Application.ProcessMessages;
    end;
  finally
    matchIDs.Free;
    ProgressBar1.Position := 100;
    if aQry.State in dsEditModes then
      aQry.Cancel;
    aQry.EnableControls;
    qryExcel.EnableControls;
    Warn(count.ToString + ' مورد ثبت انجام شد.‏', mtInformation);
    BigMessage('لطفا صبر کنید.......', 0);
    aQry.Requery();
    aQry.Locate('ID', id, []);
    CloseMessage;
    lblCount.Visible := False;
  end;
end;

procedure TTtmsExcelF.qryExcelAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  for i := 0 to CedarDbgrid1.Columns.count - 1 do
    CedarDbgrid1.Columns[i].Width := CedarDbgrid1.Width div CedarDbgrid1.
      Columns.count;
end;

procedure TTtmsExcelF.actUpdateExecute(Sender: TObject);
begin
  UpdateRecipts
end;

procedure TTtmsExcelF.ExcelToList(Fname: String = '');
var
  S, excelversion: String;
begin
  if ExtractFileExt(Fname) = '.xlsx' then
  begin
    excelversion := GlobalPro.ReadConfig('', 'excelversion', '15.0');
    S := Format('Provider=Microsoft.ACE.OLEDB.%S;Data Source=%s;' +
      'Extended Properties=excel %S;Persist Security Info=False',
      [excelversion, Fname, excelversion])
  end
  else
  begin
    S := Format
      ('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Extended Properties=excel 8.0;Persist Security Info=False',
      [Fname]);
  end;

  Caption := Fname;
  with TADOConnection.Create(Self) do
    try
      Close;
      ConnectionString := S;
      LoginPrompt := False;
      try
        Open;
      except
        on E: Exception do
          SaveConfig('', aQry.Owner.Name + aQry.Name + '_Filepath', '');
      end;
      GetTableNames(cmbSheetName.Items);
      if cmbSheetName.Items.count > 1 then
        pnlSheet.Visible := True
      else
        pnlSheet.Visible := False;
      if pnlSheet.Visible then
        cmbSheetName.ItemIndex := 0;
    finally
      Free;
    end;
  with qryExcel do
  begin
    Close;
    ConnectionString := S;
    if cmbSheetName.ItemIndex = -1 then
      cmbSheetName.ItemIndex := 0;

    SQL.Text := 'select * from [' + cmbSheetName.Items
      [cmbSheetName.ItemIndex] + ']';
    Open;
    qryExcel.GetFieldNames(lstExcel.Items);
  end;
end;

procedure TTtmsExcelF.actCloseExecute(Sender: TObject);
begin
  Close
end;

end.
