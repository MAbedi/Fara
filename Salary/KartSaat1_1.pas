unit KartSaat1_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, FileCtrl, strUtils, DB, ADODB, ComCtrls, ToolWin, MyComboBoxUnit,
  System.ImageList, System.Actions;

type
  TKartSaat1_1F = class(Ttemplate2MDIF)
    edtPath: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Memo1: TMemo;
    lstListFiles: TListBox;
    Label2: TLabel;
    memWarning: TMemo;
    BitBtn1: TBitBtn;
    actTransfer: TAction;
    qryPersonels: TADOQuery;
    chkDelPreviousFunctions: TCheckBox;
    qryFunctions: TADOQuery;
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
    qryPersonelsPersonelNo: TIntegerField;
    yrcmbx1: TYearComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtPathKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actTransferExecute(Sender: TObject);
    procedure lstListFilesClick(Sender: TObject);
  private
    { Private declarations }
    ListFiles:  TStringList;
    SelectedList: string;
    SelectedMonth:  Byte;
    procedure ReadPathLists;
    function extractListName(fileName: TFileName): String;
    function ReadItemNo(Text: String; Index: byte): integer;
    function ReadPersonelItemNo(Text: String; Index: byte): String;
    function Add2Function(FunctionString: string): Boolean;
  public
    { Public declarations }
  end;

var
  KartSaat1_1F: TKartSaat1_1F;

implementation

uses GlobalPro, DM, convert,  mmessage, FaraConsts;

{$R *.dfm}

procedure TKartSaat1_1F.ReadPathLists;
var
  ListsPath:  String;
  srch:   TSearchRec;
begin
  ListsPath:=IncludeTrailingPathDelimiter(Trim(edtPath.Text));
  if not System.SysUtils.DirectoryExists(ListsPath) then begin
    Warn('„”»— Ê«—œ ‘œÂ „⁄ »— ‰Ì” .');
    edtPath.SetFocus;
    Exit;
  end;//if
  lstListFiles.Items.Clear;
  ListFiles.Clear;
  ListFiles.Sorted:=True;
  lstListFiles.Sorted:=True;
  if FindFirst(ListsPath +  Format('M%.2d????.T??',[APPBank.Year]),faAnyFile,srch)=0 then begin
    repeat
      ListFiles.Add(srch.Name);
      lstListFiles.Items.AddObject(extractListName(srch.Name),TObject(StrToInt(MidStr(srch.Name,6,2))));
    until FindNext(srch)<>0;
    FindClose(srch);
  end;//if
end;

procedure TKartSaat1_1F.SpeedButton1Click(Sender: TObject);
var
  s:  String;
begin
  inherited;
  s:=edtPath.Text;
  if SelectDirectory(s,[],0) then begin
    edtPath.Text:=s;
    ReadPathLists;
  end;//if
end;

procedure TKartSaat1_1F.FormCreate(Sender: TObject);
begin
  inherited;
  yrcmbx1.YearsParam:=APPBank.Year;
  yrcmbx1.YearID:=APPBank.Year;
  ListFiles:=TStringList.Create;
  edtPath.Text:=ReadConfig(APPID,'PW_Path');
  if System.SysUtils.DirectoryExists(Trim(edtPath.Text)) then ReadPathLists;
end;

procedure TKartSaat1_1F.FormDestroy(Sender: TObject);
begin
  inherited;
  ListFiles.Free;
  if System.SysUtils.DirectoryExists(edtPath.Text) then
    SaveConfig(APPID,'PW_PATH',edtPath.Text);
end;

function TKartSaat1_1F.extractListName(fileName: TFileName): String;
var
  m,d1,d2:  Byte;
  fname:  String;
begin
  fname:=ExtractFileName(fileName);
  m:=StrToIntDef(MidStr(fname,4,2),1);
  d1:=StrToIntDef(MidStr(fname,6,2),1);
  d2:=StrToIntDef(RightStr(fname,2),1);
  Result:=Format('%.2d %s (%.2d-%.2d)',[m,ToolBar1.Buttons[M-1].Caption,d1,d1+d2-1]);
end;

procedure TKartSaat1_1F.edtPathKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_RETURN then begin
    Key:=0;
    if System.SysUtils.DirectoryExists(Trim(edtPath.Text)) then ReadPathLists;
  end;//if
end;

function TKartSaat1_1F.ReadItemNo(Text: String; Index: byte): integer;
begin
  case index of
    0     :   Result:=StrToIntDef(trim(MidStr(Text,6,15)),0);
    1..20 :   Result:=StrToIntDef(trim(MidStr(Text,52 + (Index-1)*5,5)),0);
    21..39:   Result:=StrToIntDef(trim(MidStr(Text,152 + (Index-21)*3,3)),0);
  end;//case
end;

procedure TKartSaat1_1F.actTransferExecute(Sender: TObject);
var
  F:  TextFile;
  k:  String;
  pid:  String;
  pName:  String;
  TransfredCount: Integer;
begin
  inherited;
  if SelectedList='' then begin
    warn('ÂÌç ·Ì” Ì «‰ Œ«» ‰‘œÂ «” .');
    Exit;
  end;//if
  memWarning.Clear;
  AssignFile(f,SelectedList);
  reset(f);
  qryPersonels.Active:=False;
  qryPersonels.Active:=True;
  with qryFunctions do begin
    Active:=False;
    Parameters.ParamByName('Month').Value:=SelectedMonth;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Active:=True;
  end;//with
  try
    BigMessageProgBar('œ— Õ«· «‰ ﬁ«· «ÿ·«⁄«  ﬂ«—ﬂ—œ',100);
    TransfredCount:=0;
    while not eof(f) do begin
      Readln(f,k);
      pid:=trim(ReadPersonelItemNo(k,2));
      pName:=is2microsoft(ReadPersonelItemNo(k,3));
      if pid=EmptyStr then pid:='0';
      if not qryPersonels.Locate('PersonelNo',pid,[]) then
        memWarning.Lines.Add('ﬂœ Å—”‰·Ì ' + pid + ' »—«Ì ' + pName + ' „⁄ »— ‰Ì” .˛')
      else begin
        if not Add2Function(k) then
          memWarning.Lines.Add('«‘ﬂ«· œ— À»  ﬂ«—ﬂ—œ Å—”‰· ‘„«—Â '+ pid)
        else Inc(TransfredCount);
      end;//else
      GoProgressBar(pName);
    end;//while
    Warn('ﬂ«—ﬂ—œ ' + IntToStr(TransfredCount) + ' Å—”‰· »Â ”Ì” „ „‰ ﬁ· ‘œ.');
  finally
    CloseFile(f);
    CloseMessage;
  end;//try
end;

procedure TKartSaat1_1F.lstListFilesClick(Sender: TObject);
var
  i:  Integer;
begin
  inherited;
  i:=lstListFiles.ItemIndex;
  if i<>-1 then begin
    SelectedList:=IncludeTrailingPathDelimiter(Trim(edtPath.Text)) + ListFiles[i];
    SelectedMonth:=integer(lstListFiles.Items.Objects[i]);
  end
  else
    SelectedList:='';
end;

function TKartSaat1_1F.ReadPersonelItemNo(Text: String;
  Index: byte): String;
begin
  case index of
    1:   Result:=trim(MidStr(Text,1,5));
    2:   Result:=trim(MidStr(Text,6,15));
    3:   Result:=trim(MidStr(Text,21,25));
    4:   Result:=trim(MidStr(Text,46,4));
    5:   Result:=trim(MidStr(Text,50,2));
    else Result:='';
  end;//case
end;

function TKartSaat1_1F.Add2Function(FunctionString: string): Boolean;
var
  pid:  String;
begin
  pid:=Trim( ReadPersonelItemNo(FunctionString,2));
  if qryFunctions.Locate('PersonelNo',pid,[]) then
    if chkDelPreviousFunctions.Checked then qryFunctions.Delete;
  try
    with qryFunctions do begin
      Insert;
      FieldByName('FunctionID').AsInteger:=GetANewCode('','Pay.Functions','FunctionID',DMf.adcSalary);
      FieldByName('YearID').AsInteger:=APPBank.Year;
      FieldByName('Years').AsInteger:=yrcmbx1.YearID;
      FieldByName('PersonelNo').AsString:=pid;
      FieldByName('Mounth').AsInteger:=SelectedMonth;
      FieldByName('FormInfoID').AsInteger:=0;
      FieldByName('FunctionDay').AsInteger:=ReadItemNo(FunctionString,38);
      FieldByName('FunctionTime').AsInteger:=trunc(ReadItemNo(FunctionString,1)/60);
      FieldByName('ProjectID').AsInteger:=0;
      FieldByName('JobCode').AsInteger:=0;
      Post;
    end;//with
    Result:=True;
  except
    Warn(pid);
    Result:=False;
  end;//try
end;

end.
