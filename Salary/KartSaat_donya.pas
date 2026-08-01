unit KartSaat_donya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, FileCtrl, strUtils, DB, ADODB, Grids, Vcl.DBGrids,
  ComCtrls, ToolWin, DBClient, Mask, MyComboBoxUnit, System.ImageList,
  System.Actions;

type
  TKartSaat_donyaF = class(Ttemplate2MDIF)
    memWarning: TMemo;
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
    DBGrid1: TDBGrid;
    qryFunctionsFunctionTime: TFloatField;
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
    qry_FormsInfoClock: TADOQuery;
    qry_FormsInfoClockRecalKindClock: TWordField;
    qry_FormsInfoClockFormInfoID: TIntegerField;
    qry_FormsInfoClockAStart: TIntegerField;
    qry_FormsInfoClockActiveDay: TIntegerField;
    qry_FormsInfoClockActiveTime: TIntegerField;
    qryFunctionItemsFDaily: TFloatField;
    qryFunctionItemsFHours: TFloatField;
    qryFunctionsOfficeCode: TIntegerField;
    qryFunctionsFunctionDay: TFloatField;
    cliTime: TClientDataSet;
    cliTimePersonelNo: TIntegerField;
    cliTimeInTime: TFloatField;
    cliTimeOutTime: TFloatField;
    cliTimeDateID: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    edtPath: TEdit;
    lstListFiles: TListBox;
    chkDelPreviousFunctions: TCheckBox;
    Memo1: TMemo;
    DBGrid2: TDBGrid;
    srcTime: TDataSource;
    cliTimeDayTime: TFloatField;
    cliTimeOverTime: TFloatField;
    Label3: TLabel;
    mskFormInfoID: TMaskEdit;
    SpeedButton2: TSpeedButton;
    DBGrid3: TDBGrid;
    srcqryFunctionItems: TDataSource;
    yrcmbx1: TYearComboBox;
    qryFunctionsYearID: TIntegerField;
    qryFunctionsYears: TIntegerField;
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
    procedure cliTimeCalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    ListFiles: TStringList;
    SelectedList: string;
    MonthNo: Byte;
    procedure UpDateLists;
    procedure ReadPathLists;
    // function extractListName(fileName: TFileName): String;
    function Add2Function: Boolean;
    function Add2FunctionItems(FunctionID: string): Boolean;
    function Add2cliTime(FunctionString, PersonelID: string): Boolean;
    function CalculateSum(Field_Name: String): Real;
  public
    { Public declarations }
  end;

var
  KartSaat_donyaF: TKartSaat_donyaF;

implementation

uses GlobalPro, DM, mmessage, Math, searchCode_ADO,
  SalaryFunctions, FaraConsts;

{$R *.dfm}

procedure TKartSaat_donyaF.ReadPathLists;
var
  ListsPath: String;
  srch: TSearchRec;
begin
  ListsPath := IncludeTrailingPathDelimiter(Trim(edtPath.Text));
  if not System.SysUtils.DirectoryExists(ListsPath) then
  begin
    Warn('„”»— Ê«—œ ‘œÂ „⁄ »— ‰Ì” .');
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

procedure TKartSaat_donyaF.SpeedButton1Click(Sender: TObject);
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

procedure TKartSaat_donyaF.FormCreate(Sender: TObject);
begin
  inherited;
  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  ListFiles := TStringList.Create;
  edtPath.Text := ReadConfig(APPID, 'PW_Path');
  if System.SysUtils.DirectoryExists(Trim(edtPath.Text)) then
    ReadPathLists;
  mskFormInfoID.Text := ReadConfig(APPID, 'mskFormInfoID');
end;

procedure TKartSaat_donyaF.FormDestroy(Sender: TObject);
begin
  inherited;
  ListFiles.Free;
  if System.SysUtils.DirectoryExists(edtPath.Text) then
    SaveConfig(APPID, 'PW_PATH', edtPath.Text);
  SaveConfig(APPID, 'mskFormInfoID', Trim(mskFormInfoID.Text));
end;

procedure TKartSaat_donyaF.edtPathKeyDown(Sender: TObject; var Key: Word;
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

procedure TKartSaat_donyaF.actTransferExecute(Sender: TObject);
var
  F: TextFile;
  s, pid, pName: String;
  ts: TStringList;
begin
  inherited;
  if SelectedList = '' then
  begin
    Warn('ÂÌç ·Ì” Ì «‰ Œ«» ‰‘œÂ «” .');
    Exit;
  end; // if
  ts := TStringList.Create;
  memWarning.Clear;
  AssignFile(F, SelectedList);
  reset(F);
  ts.LoadFromFile(SelectedList);
  qryPersonels.Active := False;
  qryPersonels.Active := True;
  UpDateLists;
  cliTime.Active := False;
  cliTime.CreateDataSet;
  cliTime.Active := True;
  try
    BigMessageProgBar('œ— Õ«· œ—Ì«›  «ÿ·«⁄«  ﬂ«—ﬂ—œ', ts.Count);
    while not eof(F) do
    begin
      Readln(F, s);
      pid := IntToStr(StrToIntDef(Trim(MidStr(s, 1, 8)), 0));
      // ReadPersonelItemNo(k,2);
      if not qryPersonels.Locate('PersonelNo', pid, []) then
        memWarning.Lines.Add('ﬂœ Å—”‰·Ì ' + pid + ' „⁄ »— ‰Ì” .˛')
      else
      begin
        if not Add2cliTime(s, pid) then
          memWarning.Lines.Add('«‘ﬂ«· œ— À»  ﬂ«—ﬂ—œ Å—”‰· ‘„«—Â ' + pid)
      end; // else
      GoProgressBar(pName);
    end; // while
    // Warn('ﬂ«—ﬂ—œ ' + IntToStr(TransfredCount) + ' Å—”‰· «“ ›«Ì· œ—Ì«›  ‘œ.');
  finally
    CloseFile(F);
    ts.Free;
    Add2Function;
    BigMessage('«‰Ã«„ ‘œ.', 1);
    FreeReservedCodes(DMf.adcSalary);
    cliTime.Filtered := False;
  end; // try
end;

procedure TKartSaat_donyaF.lstListFilesClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := lstListFiles.ItemIndex;
  if i <> -1 then
  begin
    // Warn(ListFiles[i]);
    SelectedList := IncludeTrailingPathDelimiter(Trim(edtPath.Text)) + ListFiles[i];
    // SelectedMonth:=integer(lstListFiles.Items.Objects[i]);
  end
  else
    SelectedList := '';
end;

function TKartSaat_donyaF.Add2Function: Boolean;
var
  DayTime: Real;
  Year_Mounth: String;
begin
  GetYearMounth(MonthNo);
  Year_Mounth := StringReplace(optP.YearMounth, '/', '', [rfReplaceAll]);
  qryPersonels.First;
  BigMessageProgBar('œ— Õ«· «‰ ﬁ«· «ÿ·«⁄«  ﬂ«—ﬂ—œ', qryPersonels.RecordCount);
  while not qryPersonels.eof do
  begin
    With qryFunctions do
    begin
      if Locate('PersonelNo', qryPersonels.FieldByName('PersonelNo')
        .AsInteger, []) then
        if chkDelPreviousFunctions.Checked then
          Delete;
      cliTime.Filter := 'PersonelNo=' + qryPersonels.FieldByName
        ('PersonelNo').AsString;
      cliTime.Filter := cliTime.Filter + ' AND DateID>=' + Year_Mounth + '00';
      cliTime.Filter := cliTime.Filter + ' AND DateID<=' + Year_Mounth + '32';
      cliTime.Filtered := True;
      DayTime := CalculateSum('DayTime');
      if CalculateSum('DayTime') > 0 then
      begin
        Insert;
        FieldByName('PersonelNo').AsInteger :=
          qryPersonels.FieldByName('PersonelNo').AsInteger;
        FieldByName('ProjectID').AsInteger := 0;
        // StrToInt(MidStr(FunctionString,12,10));
        FieldByName('OfficeCode').AsInteger := 0;
        // GetOfficeCode(StrToInt(MidStr(FunctionString,23,10)));
        FieldByName('JobCode').AsInteger := 0;
        FieldByName('FunctionDay').AsInteger := cliTime.RecordCount;
        FieldByName('FunctionTime').AsFloat := DayTime;
        FieldByName('FunctionID').AsInteger :=
          GetANewCode('','Pay.Functions', 'FunctionID', DMf.adcSalary);
        FieldByName('YearID').AsInteger := APPBank.Year;
        FieldByName('Years').AsInteger := yrcmbx1.YearID;
        FieldByName('FormInfoID').AsInteger := 0;
        FieldByName('Mounth').AsInteger := MonthNo;
        Post;
        Add2FunctionItems(FieldByName('FunctionID').AsString)
      end; // if
    end;
    GoProgressBar(qryPersonels.FieldByName('PersonelNo').AsString);
    qryPersonels.Next;
  end;
  try
    Result := True;
  except
    Result := False;
  end; // try
end;

function TKartSaat_donyaF.CalculateSum;
begin
  with cliTime do
  begin
    // CloneCursor(cliChecks,True);
    First;
    Result := 0;
    while not eof do
    begin
      Result := Result + FieldByName(Field_Name).AsFloat;
      Next;
    end; // while
  end; // with
end;

function TKartSaat_donyaF.Add2cliTime(FunctionString,
  PersonelID: string): Boolean;
begin
  try
    with cliTime do
    begin
      if Locate('PersonelNo;DateID',
        VarArrayOf([PersonelID, MidStr(FunctionString, 10, 8)]), []) then
      begin
        Edit;
        FieldByName('OutTime').AsFloat := StrToInt(MidStr(FunctionString, 19, 2)
          ) * 60 + StrToInt(MidStr(FunctionString, 22, 2));
      end
      else
      begin
        Insert;
        FieldByName('PersonelNo').AsString := PersonelID;
        FieldByName('DateID').AsInteger :=
          StrToInt(MidStr(FunctionString, 10, 8));
        FieldByName('InTime').AsFloat := StrToInt(MidStr(FunctionString, 19, 2))
          * 60 + StrToInt(MidStr(FunctionString, 22, 2));
      end;
    end; // with
    Result := True;
  except
    Result := False;
  end; // try
end;

procedure TKartSaat_donyaF.ToolBar1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
end;

procedure TKartSaat_donyaF.UpDateLists;
begin
  with qryFunctions do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Active := True;
  end; // with
end;

procedure TKartSaat_donyaF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  UpDateLists;
end;

function TKartSaat_donyaF.Add2FunctionItems(FunctionID: string): Boolean;
begin
  qryFunctionItems.First;
  while not qryFunctionItems.eof do
    qryFunctionItems.Delete;
  try
    with qry_FormsInfoClock do
    begin
      Active := False;
      Parameters.ParamByName('FormInfoID').Value := Trim(mskFormInfoID.Text);
      Active := True;
      while not eof do
      begin
        qryFunctionItems.Insert;
        qryFunctionItems.FieldByName('FunctionsItemsID').AsInteger :=
          GetANewCode('','Pay.FunctionsItems', 'FunctionsItemsID', DMf.adcSalary);
        qryFunctionItems.FieldByName('FunctionID').AsString := FunctionID;
        qryFunctionItems.FieldByName('SalaryID').AsInteger :=
          FieldByName('FormInfoID').AsInteger;
        qryFunctionItems.FieldByName('Fdaily').AsFloat :=
          CalculateSum('OverTime');
        qryFunctionItems.FieldByName('FHours').AsFloat :=
          qryFunctionItems.FieldByName('Fdaily').AsFloat;
        qryFunctionItems.FieldByName('Fdaily').AsFloat :=
          qryFunctionItems.FieldByName('Fdaily').AsFloat *
          FieldByName('ActiveDay').AsInteger;
        qryFunctionItems.FieldByName('FHours').AsFloat :=
          qryFunctionItems.FieldByName('FHours').AsFloat *
          FieldByName('ActiveTime').AsInteger;

        if qryFunctionItems.FieldByName('Fdaily').AsFloat +
          qryFunctionItems.FieldByName('FHours').AsFloat > 0 then
          qryFunctionItems.Post
        else
          qryFunctionItems.Cancel;
        Next;
      end; // while
    end; // with                              45
    Result := True;
  except
    // Warn(pid);
    Result := False;
  end; // try
  FreeReservedCodes(DMf.adcSalary);

end;

procedure TKartSaat_donyaF.qryFunctionsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFunctionItems do
  begin
    Active := False;
    Parameters.ParamByName('FunID').Value :=
      qryFunctions.FieldByName('FunctionID').AsInteger;
    Active := True;
  end; // with
end;

procedure TKartSaat_donyaF.cliTimeCalcFields(DataSet: TDataSet);
begin
  inherited;
  With cliTime do
  begin
    FieldByName('DayTime').AsFloat :=
      RoundTo((FieldByName('OutTime').AsFloat - FieldByName('InTime')
      .AsFloat) / 60, -2);
    FieldByName('OverTime').AsFloat :=
      RoundTo(FieldByName('DayTime').AsFloat - 8, -2);
    if FieldByName('OutTime').IsNull or FieldByName('InTime').IsNull then
      FieldByName('OverTime').AsFloat := 0;
    // if FieldByName('DayTime').AsFloat<0  then  FieldByName('DayTime').AsFloat:=0;
    // if FieldByName('OverTime').AsFloat<0 then  FieldByName('OverTime').AsFloat:=0;
  end;
end;

procedure TKartSaat_donyaF.SpeedButton2Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'ﬂœ Â«',
    'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE FormType=29',
    ['ﬂœ', '‰«„'], Results, [100, 100], alLeft);
  if s then
  begin
    mskFormInfoID.Text := Results[0];
  end; // if
end;

end.
