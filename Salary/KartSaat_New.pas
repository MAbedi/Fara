unit KartSaat_New;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, vcl.FileCtrl, strUtils, DB, ADODB, Grids, Vcl.DBGrids,
  ComCtrls, ToolWin, Mask, DBCtrls, Menus, MyComboBoxUnit, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TKartSaat_NewF = class(Ttemplate2MDIF)
    BitBtn1: TBitBtn;
    actTransfer: TAction;
    qryPersonels: TADOQuery;
    qryFunctions: TADOQuery;
    qryFunctionsFunctionID: TIntegerField;
    qryFunctionsFormInfoID: TIntegerField;
    qryFunctionsMounth: TWordField;
    qryFunctionsPersonelNo: TIntegerField;
    qryFunctionsProjectID: TIntegerField;
    qryFunctionsJobCode: TIntegerField;
    srcFunctions: TDataSource;
    qryFunctionsFunctionTime: TFloatField;
    pnlText: TPanel;
    Label1: TLabel;
    edtPath: TEdit;
    SpeedButton1: TSpeedButton;
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
    qryFunctionItems: TADOQuery;
    qryFunctionItemsFunctionsItemsID: TIntegerField;
    qryFunctionItemsFunctionID: TIntegerField;
    qryFunctionItemsSalaryID: TIntegerField;
    qryFunctionItemsFDaily: TFloatField;
    qryFunctionItemsFHours: TFloatField;
    qryFunctionsOfficeCode: TIntegerField;
    Panel4: TPanel;
    qryRecalClocks: TADOQuery;
    qryRecalClocksID: TAutoIncField;
    qryRecalClocksSalaryID: TIntegerField;
    qryRecalClocksRecalClockName: TWordField;
    qryRecalClocksStartStr: TWordField;
    qryRecalClocksCountStr: TWordField;
    qryRecalClocksStartFloatStr: TWordField;
    qryRecalClocksCountFloatStr: TWordField;
    DBGrid2: TDBGrid;
    srcRecalClocks: TDataSource;
    Panel5: TPanel;
    CmbRecalClockName: TDBComboBox;
    Label41: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    actRecal: TAction;
    qryRecalClocksInfoName_L1: TStringField;
    qryFunctionsProjectRow: TIntegerField;
    qryFunctionsProcCode: TIntegerField;
    qryFunctionsCTopic3: TIntegerField;
    qryFunctionsSickDay: TIntegerField;
    actUpdate: TAction;
    qry4LocateRecalClocks: TADOQuery;
    srcqryFunctionItems: TDataSource;
    actSend: TAction;
    actGet: TAction;
    Panel6: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn8: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn2: TBitBtn;
    btnOtherMenu: TBitBtn;
    PopOtherMenu: TPopupMenu;
    Excel1: TMenuItem;
    Excel2: TMenuItem;
    GroupBox1: TGroupBox;
    lstListFiles: TListBox;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    memWarning: TMemo;
    DBGrid3: TDBGrid;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    Memo1: TMemo;
    qryFunctionsFunctionDay: TFloatField;
    mmo1: TMemo;
    qryEmploySalaryRange: TADOQuery;
    chkEmploySalaryRange: TCheckBox;
    chkDelPreviousFunctions: TCheckBox;
    qryFunctionsYearID: TIntegerField;
    qryFunctionsYears: TIntegerField;
    yrcmbx1: TYearComboBox;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    qryExcel: TADOQuery;
    cmbExcelFieldName: TDBComboBox;
    qryRecalClocksExcelFieldName: TStringField;
    lblExcelFieldName: TLabel;
    actOpenExcel: TAction;
    BitBtn6: TBitBtn;
    pnlTxt: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    actTransferOfExcel: TAction;
    btnTransferOfExcel: TBitBtn;
    cmbSheetName: TComboBox;
    Label8: TLabel;
    lblproc: TLabel;
    qryFunctionItemsInfoName_L1: TStringField;
    cmbExcelFieldName2: TDBComboBox;
    lblExcelFieldName2: TLabel;
    qryRecalClocksExcelFieldName2: TStringField;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoID: TIntegerField;
    qryFunctionsTimeCardNumber: TStringField;
    srcExcel: TDataSource;
    Splitter1: TSplitter;
    grdExcel: TCedarDbgrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtPathKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actTransferExecute(Sender: TObject);
    procedure lstListFilesClick(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure qryFunctionsAfterScroll(DataSet: TDataSet);
    procedure actRecalExecute(Sender: TObject);
    procedure qryFormTypesAllGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFormTypesAllSetText(Sender: TField; const Text: String);
    procedure srcRecalClocksStateChange(Sender: TObject);
    procedure qryRecalClocksAfterInsert(DataSet: TDataSet);
    procedure qryRecalClocksBeforePost(DataSet: TDataSet);
    procedure qryRecalClocksStartStrChange(Sender: TField);
    procedure qryRecalClocksAfterPost(DataSet: TDataSet);
    procedure actUpdateExecute(Sender: TObject);
    procedure actSendExecute(Sender: TObject);
    procedure actGetExecute(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cmbSheetNameChange(Sender: TObject);
    procedure actOpenExcelExecute(Sender: TObject);
    procedure GroupBox5DblClick(Sender: TObject);
    procedure actTransferOfExcelExecute(Sender: TObject);
    procedure qryRecalClocksRecalClockNameChange(Sender: TField);
    procedure qryRecalClocksAfterScroll(DataSet: TDataSet);
    procedure qryFunctionsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    ListFiles: TStringList;
    SelectedList, PersonelNoName, Message_: string;
    MonthNo: Byte;
    CurrentDate: String;
    DayStandard: Byte;
    procedure ReadPathLists;
    // function extractListName(fileName: TFileName): String;
    function Add2Function(FunctionString, PersonelID: string;
      var Message_: string): Boolean;
    function Add2FunctionItems(FunctionString, FunctionID: string;
      var Message_: string): Boolean;
    // function GetOfficeCode(OfficeCode: Integer): Integer;
    function GetCelStr(s, cellName: String; SalaryID: Integer;
      GetFloat: Boolean = False): String;
    procedure ExcelToList(Fname: String = '');
    function Add2FunctionExcel(PersonelID: string;
      var Message_: string): Boolean;
    function GetCelStrExcel(cellName: String; SalaryID: Integer): String;
    function Add2FunctionItemsExcel(FunctionID: Integer;
      var Message_: string): Boolean;
    procedure GetProc(lbl1: TLabel);
    function TimeToDesimal(Time: Integer): Real;
  public
    { Public declarations }
  end;

  TRClockNames = record
    // ID:Byte;
    ClockName: String;
    ClockCaption: String;
  end;

var
  KartSaat_NewF: TKartSaat_NewF;
  MyClockName: array [1 .. 10] of TRClockNames;

const
  GroupBoxHeight = 17;

implementation

uses GlobalPro, DM, mmessage, Math, GetExcel, SalaryFunctions, FaraConsts;

{$R *.dfm}

procedure TKartSaat_NewF.ReadPathLists;
var
  ListsPath: String;
  srch: TSearchRec;
begin
  ListsPath := IncludeTrailingPathDelimiter(Trim(edtPath.Text));
  if not System.SysUtils.DirectoryExists(ListsPath) then
  begin
    Warn('مسبر وارد شده معتبر نيست.');
    edtPath.SetFocus;
    Exit;
  end; // if
  lstListFiles.Items.Clear;
  ListFiles.Clear;
  ListFiles.Sorted := True;
  lstListFiles.Sorted := True;
  // SetLength(ListsPath,(length(ListsPath))-1) ;
  if FindFirst(ListsPath + '*.TXT', faAnyFile, srch) = 0 then
  begin
    repeat
      ListFiles.Add(srch.Name);
      lstListFiles.Items.Add(srch.Name)
      // extractListName(srch.Name),TObject(StrToInt(MidStr(srch.Name,7,2))));
    until FindNext(srch) <> 0;
    FindClose(srch);
  end; // if
end;

procedure TKartSaat_NewF.SpeedButton1Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := edtPath.Text;
  if SelectDirectory(s, [], 0) then
  begin
    edtPath.Text := s;
    ReadPathLists;
  end; // if
end;

procedure TKartSaat_NewF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;

  MyClockName[1].ClockName := 'FDaily';
  MyClockName[1].ClockCaption := 'تعداد';
  MyClockName[2].ClockName := 'FHours';
  MyClockName[2].ClockCaption := 'ساعت';
  MyClockName[3].ClockName := 'PersonelNo';
  MyClockName[3].ClockCaption := 'شماره پرسنلي';
  MyClockName[4].ClockName := 'ProjectID';
  MyClockName[4].ClockCaption := 'كد پروژه';
  MyClockName[5].ClockName := 'OfficeCode';
  MyClockName[5].ClockCaption := 'واحدسازماني';
  MyClockName[6].ClockName := 'JobCode';
  MyClockName[6].ClockCaption := 'كد شغل';
  MyClockName[7].ClockName := 'FunctionDay';
  MyClockName[7].ClockCaption := 'روزهاي كاركرد';
  MyClockName[8].ClockName := 'FunctionTime';
  MyClockName[8].ClockCaption := 'ساعات كاركرد';
  MyClockName[9].ClockName := 'SickDay';
  MyClockName[9].ClockCaption := 'روزهاي بيماري';
  MyClockName[10].ClockName := 'FDailyFHours';
  MyClockName[10].ClockCaption := 'تعدادساعت';
  for i := 1 to High(MyClockName) do
    CmbRecalClockName.AddItem(MyClockName[i].ClockCaption, TObject(i));

  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  ListFiles := TStringList.Create;
  edtPath.Text := ReadConfig(APPID, 'PW_Path');
  if System.SysUtils.DirectoryExists(Trim(edtPath.Text)) then
    ReadPathLists;
  qryRecalClocks.Active := True;
  GroupBox5DblClick(GroupBox5);

  grdExcel.Height := ReadConfig(APPID, 'grdExcelHeight',
    grdExcel.Height.ToString).ToInteger;

end;

procedure TKartSaat_NewF.FormDestroy(Sender: TObject);
begin
  inherited;
  ListFiles.Free;
  if System.SysUtils.DirectoryExists(edtPath.Text) then
    SaveConfig(APPID, 'PW_PATH', edtPath.Text);
  SaveConfig(APPID, 'grdExcelHeight', grdExcel.Height.ToString);

end;

// function TKartSaat_NewF.extractListName(fileName: TFileName): String;
// var
// m:  Byte;
// fname:  String;
// begin
// fname:=ExtractFileName(fileName);
// m:=StrToIntDef(MidStr(fname,7,2),1);
// Result:=Format('%.2d %s',[m,ToolBar1.Buttons[MonthNo-1].Caption]);
// end;

procedure TKartSaat_NewF.edtPathKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    Key := 0;
    if System.SysUtils.DirectoryExists(Trim(edtPath.Text)) then
      ReadPathLists;
  end; // if
end;

procedure TKartSaat_NewF.actTransferExecute(Sender: TObject);
var
  F: TextFile;
  s, pid: String;
  TransfredCount: Integer;
  ts: TStringList;
  Message_: string;

begin
  inherited;
  qryRecalClocks.DisableControls;
  qryFunctions.DisableControls;
  qryFunctionItems.DisableControls;
  qry4LocateRecalClocks.Active := False;
  qry4LocateRecalClocks.Active := True;
  if (pnlTxt.Visible) and (SelectedList = EmptyStr) then
  begin
    Warn('هيچ ليستي انتخاب نشده است.');
    Exit;
  end; // if
  ts := TStringList.Create;
  memWarning.Clear;
  AssignFile(F, SelectedList);
  reset(F);
  ts.LoadFromFile(SelectedList);
  qryPersonels.Active := False;
  qryPersonels.Active := True;
  actUpdate.Execute;
  try
    // BigMessageProgBar('در حال انتقال اطلاعات كاركرد',ts.Count);
    TransfredCount := 0;
    while not eof(F) do
    begin
      Readln(F, s);
      s := StringReplace(s, #9, ' ', [rfReplaceAll]);
      mmo1.Text := s;
      pid := IntToStr(StrToIntDef(Trim(GetCelStr(s, 'PersonelNo', 0)), 0));
      if not qryPersonels.Locate('PersonelNo', pid, []) then
        memWarning.Lines.Add('كد پرسنلي ' + pid + ' معتبر نيست.‏')
      else
      begin
        if not Add2Function(s, pid, Message_) then
          memWarning.Lines.Add('اشكال در ثبت كاركرد پرسنل شماره ' + pid
            + Message_)
        else
          Inc(TransfredCount);
      end; // else
      // GoProgressBar(pName);
    end; // while
    Warn('كاركرد ' + IntToStr(TransfredCount) + ' پرسنل به سيستم منتقل شد.',
      mtInformation);
  finally
    CloseFile(F);
    CloseMessage;
    ts.Free;
    FreeReservedCodes(DMf.adcSalary);
    qryRecalClocks.Filtered := False;
    qryRecalClocks.EnableControls;
    qryFunctionItems.EnableControls;
    qryFunctions.EnableControls;
    qryFunctions.First;

  end; // try
end;

procedure TKartSaat_NewF.actTransferOfExcelExecute(Sender: TObject);
var
  pid: String;
  TransfredCount: Integer;
  Message_: string;
begin
  inherited;
  qryFormsInfo.Open;
  qryFunctions.DisableControls;
  qryRecalClocks.DisableControls;
  qryFunctionItems.DisableControls;
  qry4LocateRecalClocks.Filtered := False;
  qry4LocateRecalClocks.Active := False;
  qry4LocateRecalClocks.Active := True;
  PersonelNoName := qry4LocateRecalClocks.FieldByName('ExcelFieldName')
    .AsString;
  if not qryExcel.Active then
  begin
    Warn('هيچ فايل Excel اي انتخاب نشده است.');
    Exit;
  end; // if
  memWarning.Clear;
  qryPersonels.Active := False;
  qryPersonels.Active := True;
  actUpdate.Execute;
  qryExcel.First;
  qryFunctions.First;
  With qryExcel do
    try
      // BigMessageProgBar('در حال انتقال اطلاعات كاركرد',ts.Count);
      TransfredCount := 0;
      while not eof do
      begin
        pid := qryExcel.FieldByName(PersonelNoName).AsString;

        if optP.ClockCard4FieldName <> 'PersonelNo' then
        begin
          if qryPersonels.Locate(optP.ClockCard4FieldName, pid, []) then
            pid := qryPersonels.FieldByName('PersonelNo').AsString
          else
            Warn2('نام فیلد برای مقایسه شماره پرسنلی و کارت ساعت در تنظیمات سیستم چک شود');
        end;

        if not qryPersonels.Locate('PersonelNo', pid, []) then
          memWarning.Lines.Add('كد پرسنلي ' + pid + ' معتبر نيست.‏')
        else
        begin
          if not Add2FunctionExcel(pid, Message_) then
            memWarning.Lines.Add('اشكال در ثبت كاركرد پرسنل شماره ' + pid
              + Message_)
          else
            Inc(TransfredCount);
        end; // else
        // GoProgressBar(pName);
        Next;
      end; // while
      Warn('كاركرد ' + IntToStr(TransfredCount) + ' پرسنل به سيستم منتقل شد.',
        mtInformation);
    finally
      CloseMessage;
      FreeReservedCodes(DMf.adcSalary);
      qryRecalClocks.Filtered := False;
      qryRecalClocks.EnableControls;
      qryFunctionItems.EnableControls;
      qryFunctions.EnableControls;
      qryFunctions.First;
    end; // try

end;

procedure TKartSaat_NewF.lstListFilesClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := lstListFiles.ItemIndex;
  if i <> -1 then
  begin
    // Warn(ListFiles[i]);
    SelectedList := IncludeTrailingPathDelimiter(Trim(edtPath.Text)) +
      ListFiles[i];
    // SelectedMonth:=integer(lstListFiles.Items.Objects[i]);
  end
  else
    SelectedList := '';
end;

function TKartSaat_NewF.Add2Function(FunctionString, PersonelID: string;
  var Message_: string): Boolean;
var
  FunctionDay: Integer;
begin
  if qryFunctions.Locate('PersonelNo', PersonelID, []) then
    if chkDelPreviousFunctions.Checked then
      qryFunctions.Delete;

  with qryEmploySalaryRange do
  begin
    Close;
    Parameters.ParamByName('PersonelNo').Value := PersonelID;
    Open;
  end;
  try
    with qryFunctions do
    begin
      GetProc(lblproc);
      Insert;
      FieldByName('PersonelNo').AsString := PersonelID;
      // FieldByName('ProjectID').AsInteger:=StrToInt(GetCelStr(FunctionString,'ProjectID',0));
      // FieldByName('OfficeCode').AsInteger:=GetOfficeCode(StrToInt(GetCelStr(FunctionString,'OfficeCode',0)));
      GetAProject_OfficeID('ProjectID', qryFunctions, yrcmbx1.YearID, MonthNo);
      GetAProject_OfficeID('OfficeCode', qryFunctions, yrcmbx1.YearID, MonthNo);
      FieldByName('JobCode').AsInteger :=
        StrToInt(GetCelStr(FunctionString, 'JobCode', 0));
      FieldByName('FunctionDay').AsInteger :=
        StrToInt(GetCelStr(FunctionString, 'FunctionDay', 0));
      FieldByName('FunctionTime').AsFloat :=
        StrToInt(GetCelStr(FunctionString, 'FunctionTime', 0)) +
        RoundTo((StrToInt(GetCelStr(FunctionString, 'FunctionTime', 0, True)) *
        1 / 60), -2);

      FieldByName('SickDay').AsInteger :=
        StrToInt(GetCelStr(FunctionString, 'SickDay', 0));

      FieldByName('FunctionID').AsInteger :=
        GetANewCode('','Pay.Functions', 'FunctionID', DMf.adcSalary);
      FieldByName('FormInfoID').AsInteger := 0;
      FieldByName('Mounth').AsInteger := MonthNo;
      FieldByName('YearID').AsInteger := APPBank.Year;
      FieldByName('Years').AsInteger := yrcmbx1.YearID;

      if SumFunctionDay(FunctionDay, MonthNo, DayStandard, qryFunctions,
        Message_) then
      begin
        Post;
        Add2FunctionItems(FunctionString, FieldByName('FunctionID').AsString,
          Message_);
        Result := True;
      end
      else
      begin
        Cancel;
        Result := False;
      end;
    end; // with
  except
    // Warn(pid);
    Result := False;
  end; // try
end;

function TKartSaat_NewF.Add2FunctionExcel(PersonelID: string;
  var Message_: string): Boolean;
var
  FunctionDay: Integer;
begin
  if qryFunctions.Locate('PersonelNo', PersonelID, []) then
    if chkDelPreviousFunctions.Checked then
    begin
      while not qryFunctionItems.eof do
        qryFunctionItems.Delete;
      qryFunctions.Delete;
    end;

  with qryEmploySalaryRange do
  begin
    Close;
    Parameters.ParamByName('PersonelNo').Value := PersonelID;
    Open;
  end;
  try
    with qryFunctions do
    begin
      GetProc(lblproc);
      Insert;
      FieldByName('PersonelNo').AsString := PersonelID;
      GetAProject_OfficeID('ProjectID', qryFunctions, yrcmbx1.YearID, MonthNo);

      if qryExcel.FindField('ProjectID') <> nil then
      begin
        FieldByName('ProjectID').AsInteger := qryExcel.FieldByName('ProjectID')
          .AsInteger;

        if qryFormsInfo.Locate('FormInfoID', FieldByName('ProjectID')
          .AsInteger, []) then
          FieldByName('ProjectRow').AsInteger := qryFormsInfoInfoID.AsInteger
      end;

      GetAProject_OfficeID('OfficeCode', qryFunctions, yrcmbx1.YearID, MonthNo);
      FieldByName('JobCode').AsInteger :=
        StrToInt(GetCelStrExcel('JobCode', 0));
      FieldByName('FunctionDay').AsInteger :=
        StrToInt(GetCelStrExcel('FunctionDay', 0));

      FieldByName('FunctionTime').AsFloat :=
        StrToFloat(GetCelStrExcel('FunctionTime', 0));

      FieldByName('SickDay').AsFloat :=
        StrToFloat(GetCelStrExcel('SickDay', 0));

      FieldByName('FunctionID').AsInteger :=
        GetANewCode('','Pay.Functions', 'FunctionID', DMf.adcSalary);
      FieldByName('FormInfoID').AsInteger := 0;
      FieldByName('Mounth').AsInteger := MonthNo;
      FieldByName('YearID').AsInteger := APPBank.Year;
      FieldByName('Years').AsInteger := yrcmbx1.YearID;

      if SumFunctionDay(FunctionDay, MonthNo, DayStandard, qryFunctions,
        Message_) then
      begin
        Post;
        Add2FunctionItemsExcel(FieldByName('FunctionID').AsInteger, Message_);
        Result := True;
      end
      else
      begin
        Cancel;
        Result := False;
      end;

    end; // with
  except
    // Warn(pid);
    Result := False;
  end; // try
end;

procedure TKartSaat_NewF.GetProc(lbl1: TLabel);
begin
  Application.ProcessMessages;
  if lbl1.Caption = '|' then
  begin
    lbl1.Caption := '/';
    Exit;
  end;
  if lbl1.Caption = '/' then
  begin
    lbl1.Caption := '_';
    Exit;
  end;
  if lbl1.Caption = '_' then
  begin
    lbl1.Caption := '\';
    Exit;
  end;
  if lbl1.Caption = '\' then
  begin
    lbl1.Caption := '|';
    Exit;
  end;
  lbl1.Caption := '|';
end;

function TKartSaat_NewF.GetCelStr(s, cellName: String; SalaryID: Integer;
  GetFloat: Boolean = False): String;
var
  i: Integer;
begin
  for i := 1 to High(MyClockName) do
    if cellName = MyClockName[i].ClockName then
      Break;
  With qry4LocateRecalClocks do
  begin
    Filtered := False;
    if SalaryID = 0 then
      Filter := 'RecalClockName=' + IntToStr(i - 1) + ' and SalaryID=' +
        IntToStr(SalaryID)
    else
      Filter := 'SalaryID=' + IntToStr(SalaryID);
    Filtered := True;
    if GetFloat then
      Result := MidStr(s, FieldByName('StartFloatStr').AsInteger,
        FieldByName('CountFloatStr').AsInteger)
    else
      Result := MidStr(s, FieldByName('StartStr').AsInteger,
        FieldByName('CountStr').AsInteger);
    if Trim(Result) = EmptyStr then
      Result := '0';
    if not TryStrToInt(Result, i) then
      Result := '0';
  end;
end;

function TKartSaat_NewF.GetCelStrExcel(cellName: String;
  SalaryID: Integer): String;
var
  i, j, postive: Integer;
  s, Fname: string;
begin
  // Result:='0';
  for i := 1 to High(MyClockName) do
    if LowerCase(cellName) = LowerCase(MyClockName[i].ClockName) then
      Break;
  With qry4LocateRecalClocks do
  begin
    Filtered := False;
    if SalaryID = 0 then
      Filter := 'RecalClockName=' + IntToStr(i - 1) + ' and SalaryID=' +
        IntToStr(SalaryID)
    else
      Filter := 'SalaryID=' + IntToStr(SalaryID);
    Filtered := True;

    Fname := qry4LocateRecalClocks.FieldByName('ExcelFieldName').AsString;

    if (cellName = 'FHours') and (qryRecalClocksRecalClockName.AsInteger = 9)
    then
      Fname := qry4LocateRecalClocks.FieldByName('ExcelFieldName2').AsString;

    if qryExcel.FindField(Fname) <> NIL then
      Result := qryExcel.FieldByName(Fname).AsString;

    if Pos('-', Result) > 0 then
      postive := -1
    else
      postive := 1;

    Result := ReplaceStr(Result, '-', '');
    Result := Trim(Result);

    j := Pos(':', Result);
    if j > 0 then
    begin
      s := RightStr(Result, Length(Result) - j);
      Result := FloatToStr(postive * StrToInt(LeftStr(Result, j - 1)) + postive
        * TimeToDesimal(StrToInt(s)));
    end;

    if Trim(Result) = EmptyStr then
      Result := '0';
    // if not TryStrToInt(Result,i) then Result:='0';
  end;
end;

function TKartSaat_NewF.TimeToDesimal(Time: Integer): Real;
begin
  Result := RoundTo(Time / 60 * 100, -2) / 100;
end;

procedure TKartSaat_NewF.GroupBox5DblClick(Sender: TObject);
begin
  inherited;
  if GroupBox5.Height = GroupBoxHeight then
  begin
    GroupBox5.Height := 70
  end
  else
  begin
    GroupBox5.Height := GroupBoxHeight
  end;

  lblExcelFieldName.Visible := GroupBox5.Height <> GroupBoxHeight;
  cmbExcelFieldName.Visible := lblExcelFieldName.Visible;
  pnlTxt.Visible := not lblExcelFieldName.Visible;

  actTransfer.Enabled := pnlTxt.Visible;
  actTransferOfExcel.Enabled := lblExcelFieldName.Visible;

  pnlText.Visible := pnlTxt.Visible

end;

function TKartSaat_NewF.Add2FunctionItems(FunctionString, FunctionID: string;
  var Message_: string): Boolean;
begin
  if chkDelPreviousFunctions.Checked then
  begin
    qryFunctionItems.First;
    while not qryFunctionItems.eof do
      qryFunctionItems.Delete;
  end;
  try
    with qryRecalClocks do
    begin
      Filtered := False;
      Filter := 'SalaryID<>0';
      Filtered := True;
      while not eof do
      begin
        GetProc(lblproc);
        if chkEmploySalaryRange.Checked then
          if not qryEmploySalaryRange.Locate('SalaryID', FieldByName('SalaryID')
            .AsInteger, []) then
            Break;
        qryFunctionItems.Insert;
        qryFunctionItems.FieldByName('FunctionsItemsID').AsInteger :=
          GetANewCode('','Pay.FunctionsItems', 'FunctionsItemsID', DMf.adcSalary);
        qryFunctionItems.FieldByName('FunctionID').AsString := FunctionID;
        qryFunctionItems.FieldByName('SalaryID').AsInteger :=
          FieldByName('SalaryID').AsInteger;
        qryFunctionItems.FieldByName('Fdaily').AsInteger := 0;
        qryFunctionItems.FieldByName('FHours').AsInteger := 0;
        // Warn(fieldbyname('SalaryID').AsString);    ////1>>>>0

        if FieldByName('RecalClockName').AsInteger = 0 then
          qryFunctionItems.FieldByName('Fdaily').AsFloat :=
            StrToInt(GetCelStr(FunctionString, 'Fdaily', FieldByName('SalaryID')
            .AsInteger)) +
            RoundTo((StrToInt(GetCelStr(FunctionString, 'Fdaily',
            FieldByName('SalaryID').AsInteger, True)) * 1 / 60), -2)
        else
          qryFunctionItems.FieldByName('FHours').AsFloat :=
            StrToInt(GetCelStr(FunctionString, 'FHours', FieldByName('SalaryID')
            .AsInteger)) +
            RoundTo((StrToInt(GetCelStr(FunctionString, 'FHours',
            FieldByName('SalaryID').AsInteger, True)) * 1 / 60), -2);

        if qryFunctionItems.FieldByName('Fdaily').AsFloat +
          qryFunctionItems.FieldByName('FHours').AsFloat <> 0 then
          qryFunctionItems.Post
        else
          qryFunctionItems.Cancel;
        Next;
      end;
      // while
    end; // with
    Result := True;
  except
    // Warn(pid);
    Result := False;
  end; // try
  FreeReservedCodes(DMf.adcSalary);
end;

function TKartSaat_NewF.Add2FunctionItemsExcel(FunctionID: Integer;
  var Message_: string): Boolean;
begin
  if chkDelPreviousFunctions.Checked then
  begin
    qryFunctionsAfterScroll(qryFunctions);
    qryFunctionItems.First;
    while not qryFunctionItems.eof do
      qryFunctionItems.Delete;
  end;
  try
    with qryRecalClocks do
    begin
      Filtered := False;
      Filter := 'SalaryID<>0 AND (  ExcelFieldName <>'''' )';
      Filtered := True;
      while not eof do
      begin
        GetProc(lblproc);
        if chkEmploySalaryRange.Checked then
          if not qryEmploySalaryRange.Locate('SalaryID', FieldByName('SalaryID')
            .AsInteger, []) then
            Break;
        qryFunctionItems.Insert;
        qryFunctionItems.FieldByName('FunctionsItemsID').AsInteger :=
          GetANewCode('','Pay.FunctionsItems', 'FunctionsItemsID', DMf.adcSalary);
        qryFunctionItems.FieldByName('FunctionID').AsInteger := FunctionID;
        qryFunctionItems.FieldByName('SalaryID').AsInteger :=
          FieldByName('SalaryID').AsInteger;
        qryFunctionItems.FieldByName('Fdaily').AsInteger := 0;
        qryFunctionItems.FieldByName('FHours').AsInteger := 0;

        // if FieldByName('RecalClockName').AsInteger = 1 then
        // qryFunctionItems.FieldByName('Fdaily').AsFloat :=
        // RoundTo(StrToFloat(GetCelStrExcel('Fdaily', FieldByName('SalaryID')
        // .AsInteger)), -2)
        // // RoundTo( (StrToInt(GetCelStrExcel('Fdaily',fieldbyname('SalaryID').AsInteger))*1/60),-2)
        // else
        // qryFunctionItems.FieldByName('FHours').AsFloat :=
        // RoundTo(StrToFloat(GetCelStrExcel('FHours', FieldByName('SalaryID')
        // .AsInteger)), -2);
        // // +  RoundTo( (StrToInt(GetCelStrExcel('FHours',fieldbyname('SalaryID').AsInteger))*1/60),-2);

        case FieldByName('RecalClockName').AsInteger of
          1:
            qryFunctionItems.FieldByName('FHours').AsFloat :=
              RoundTo(StrToFloat(GetCelStrExcel('FHours',
              FieldByName('SalaryID').AsInteger)), -2);

          9:
            begin
              qryFunctionItems.FieldByName('FHours').AsFloat :=
                RoundTo(StrToFloat(GetCelStrExcel('FHours',
                FieldByName('SalaryID').AsInteger)), -2);
              qryFunctionItems.FieldByName('Fdaily').AsFloat :=
                RoundTo(StrToFloat(GetCelStrExcel('Fdaily',
                FieldByName('SalaryID').AsInteger)), -2);
            end;

        else
          qryFunctionItems.FieldByName('Fdaily').AsFloat :=
            RoundTo(StrToFloat(GetCelStrExcel('Fdaily', FieldByName('SalaryID')
            .AsInteger)), -2);

        end;

        // if FieldByName('RecalClockName').AsInteger = 1 then
        // qryFunctionItems.FieldByName('FHours').AsFloat :=
        // RoundTo(StrToFloat(GetCelStrExcel('FHours', FieldByName('SalaryID')
        // .AsInteger)), -2)
        // else
        // qryFunctionItems.FieldByName('Fdaily').AsFloat :=
        // RoundTo(StrToFloat(GetCelStrExcel('Fdaily', FieldByName('SalaryID')
        // .AsInteger)), -2);

        if qryFunctionItems.FieldByName('Fdaily').AsFloat +
          qryFunctionItems.FieldByName('FHours').AsFloat <> 0 then
        // اعداد منفی هم داریم
          qryFunctionItems.Post
        else
          qryFunctionItems.Cancel;
        Next;
      end;
      // while
    end; // with
    Result := True;
  except
    // Warn(pid);
    Result := False;
  end; // try
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TKartSaat_NewF.ToolBar1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
end;

procedure TKartSaat_NewF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;

  actUpdate.Execute;
end;

procedure TKartSaat_NewF.qryFunctionsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFunctionItems do
  begin
    Active := False;
    Parameters.ParamByName('FunID').Value :=
      qryFunctions.FieldByName('FunctionID').AsInteger;
    Active := True;
  end;
  // with
end;

procedure TKartSaat_NewF.qryFunctionsBeforePost(DataSet: TDataSet);
begin
  inherited;
end;

// function TKartSaat_NewF.GetOfficeCode(OfficeCode: Integer): Integer;
// begin
// With DMF.qryTmpTmpp do
// begin
// Active:=False;
// SQL.Text:=' SELECT FormInfoID   FROM Pay.FormsInfo '+
// ' WHERE (FormType=12) AND  InfoID='+IntToStr(OfficeCode);
// Active:=True;
// Result:=Fields[0].AsInteger;
// Active:=False;
// end;
// end;

procedure TKartSaat_NewF.actOpenExcelExecute(Sender: TObject);
begin
  inherited;
  with TOpenDialog.Create(Self) do
    try
      Filter := 'Excel|*.xlsx;*.xls|All|*.*';
      if Execute and (FileName <> EmptyStr) then
        ExcelToList(FileName)
    finally
      SaveConfig('', Self.Name + qryExcel.Name + '_Filepath', FileName);
      Free;
    end;

end;

procedure TKartSaat_NewF.ExcelToList(Fname: String = '');
var
  s: String;
begin
  if ExtractFileExt(Fname) = '.xlsx' then
    s := Format('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;' +
      'Extended Properties=excel 12.0;Persist Security Info=False', [Fname])

  else
    s := Format('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;' +
      'Extended Properties=excel 8.0;Persist Security Info=False', [Fname]);

  with TADOConnection.Create(Self) do
    try
      Close;
      ConnectionString := s;
      LoginPrompt := False;
      Open;
      GetTableNames(cmbSheetName.Items);
      cmbSheetName.ItemIndex := 0;
    finally
      Free;
    end;
  with qryExcel do
  begin
    Close;
    ConnectionString := s;
    SQL.Text := 'SELECT * FROM [' + cmbSheetName.Items[0] + ']';
    Open;
    qryExcel.GetFieldNames(cmbExcelFieldName.Items);
    qryExcel.GetFieldNames(cmbExcelFieldName2.Items);
    setSizeColDBGrid(grdExcel);
  end;
end;

procedure TKartSaat_NewF.actRecalExecute(Sender: TObject);
var
  i: Integer;
  qry: TADOQuery;
begin
  inherited;
  With qryRecalClocks do
    for i := 2 to 8 do
    begin
      Insert;
      FieldByName('RecalClockName').AsInteger := i;
      FieldByName('SalaryID').AsInteger := 0;
      FieldByName('StartStr').AsInteger := 0;
      FieldByName('CountStr').AsInteger := 0;
      FieldByName('StartFloatStr').AsInteger := 0;
      FieldByName('CountFloatStr').AsInteger := 0;
    end;
  qry := TADOQuery.Create(Self);
  With qry do
    try
      Connection := theMainConnection;
      SQL.Text := 'SELECT FormsInfo.FormInfoID, FormsInfo.StandardTimes';
      SQL.Add('FROM Pay.FormsInfo INNER JOIN');
      SQL.Add('Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType');
      SQL.Add('WHERE (FormsInfo.FormType IN (29, 44, 31, 90, 119)) OR');
      SQL.Add('(FormTypes.SalaryKind IN (4, 5))');
      Active := True;
      while not eof do
      begin
        qryRecalClocks.Insert;
        if FieldByName('StandardTimes').AsFloat <> 0 then
          qryRecalClocks.FieldByName('RecalClockName').AsInteger := 1
        else
          qryRecalClocks.FieldByName('RecalClockName').AsInteger := 0;
        qryRecalClocks.FieldByName('SalaryID').AsInteger :=
          FieldByName('FormInfoID').AsInteger;
        qryRecalClocks.FieldByName('StartStr').AsInteger := 0;
        qryRecalClocks.FieldByName('CountStr').AsInteger := 0;
        qryRecalClocks.FieldByName('StartFloatStr').AsInteger := 0;
        qryRecalClocks.FieldByName('CountFloatStr').AsInteger := 0;
        Next;
      end;
      qryRecalClocks.Requery();
    finally
      Free;
    end;
end;

procedure TKartSaat_NewF.qryFormTypesAllGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TKartSaat_NewF.qryFormTypesAllSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TKartSaat_NewF.srcRecalClocksStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryRecalClocks.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
  actTransfer.Enabled := qryRecalClocks.RecordCount > 0
end;

procedure TKartSaat_NewF.qryRecalClocksAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryRecalClocks.FieldByName('SalaryID').AsInteger := 0;
end;

procedure TKartSaat_NewF.qryRecalClocksBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('RecalClockName').IsNull) then
  begin
    DataSet.Cancel;
    Abort
  end;
  With qryRecalClocks do
  begin
    if (qryRecalClocks.FieldByName('SalaryID').AsInteger <> 0) and
      (qryRecalClocks.FieldByName('RecalClockName').AsInteger > 1) and
      (qryRecalClocks.FieldByName('RecalClockName').AsInteger <> 9) then
    begin
      Warn('براي اين كد كاركرد اين عنوان مجاز نيست!‏');
      Abort
    end;
    if (qryRecalClocks.FieldByName('SalaryID').AsInteger = 0) and
      ((qryRecalClocks.FieldByName('RecalClockName').AsInteger <= 1) and
      (qryRecalClocks.FieldByName('RecalClockName').AsInteger = 9)) then
    begin
      Warn('براي اين كد كاركرد اين عنوان مجاز نيست!‏');
      Abort
    end;

  end;

end;

procedure TKartSaat_NewF.qryRecalClocksRecalClockNameChange(Sender: TField);
begin
  inherited;
  lblExcelFieldName2.Visible := Sender.AsInteger = 9;
  cmbExcelFieldName2.Visible := lblExcelFieldName2.Visible;
  case Sender.AsInteger of
    9:
      begin
        lblExcelFieldName.Caption := 'نام ستون Excel برای ساعت';
        lblExcelFieldName2.Caption := 'نام ستون Excel برای روز';
      end;
  else
    begin
      lblExcelFieldName.Caption := 'نام ستون Excel';
      lblExcelFieldName2.Caption := '';
    end;
  end;

end;

procedure TKartSaat_NewF.qryRecalClocksStartStrChange(Sender: TField);
begin
  inherited;
  With qryRecalClocks do
  begin
    FieldByName('StartFloatStr').AsInteger := FieldByName('StartStr').AsInteger
      + FieldByName('CountStr').AsInteger
  end;
end;

procedure TKartSaat_NewF.qryRecalClocksAfterPost(DataSet: TDataSet);
begin
  inherited;
  actUpdate.Execute
end;

procedure TKartSaat_NewF.qryRecalClocksAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryRecalClocksRecalClockNameChange(qryRecalClocksRecalClockName)
end;

procedure TKartSaat_NewF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  DayStandard := StandardDays(MonthNo, CurrentDate);
  qryFunctionItems.Active := False;
  with qryFunctions do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Active := True;
  end;
  // with
end;

procedure TKartSaat_NewF.actSendExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2)
end;

procedure TKartSaat_NewF.actGetExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryRecalClocks);
end;

procedure TKartSaat_NewF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  PopOtherMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TKartSaat_NewF.cmbSheetNameChange(Sender: TObject);
begin
  inherited;
  with qryExcel do
  begin
    Close;
    SQL.Text := 'SELECT * FROM [' + cmbSheetName.Items
      [cmbSheetName.ItemIndex] + ']';
    Open;
    qryExcel.GetFieldNames(cmbExcelFieldName.Items);
    qryExcel.GetFieldNames(cmbExcelFieldName2.Items);
    setSizeColDBGrid(grdExcel);

  end;
end;

procedure TKartSaat_NewF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 0, True);
  SetColSize(DBGrid2, 1, True);
  SetColSize(DBGrid3, 2, True);
end;

end.
