unit KartSaat_Win;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, FileCtrl, strUtils, DB, ADODB, Grids, Vcl.DBGrids,  ComCtrls, ToolWin,
  MyComboBoxUnit, System.ImageList, System.Actions;

type
  TKartSaat_WinF = class(Ttemplate2MDIF)
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
    Panel1: TPanel;
    Label1: TLabel;
    edtPath: TEdit;
    SpeedButton1: TSpeedButton;
    lstListFiles: TListBox;
    chkDelPreviousFunctions: TCheckBox;
    Label2: TLabel;
    Memo1: TMemo;
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
    procedure Button1Click(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure qryFunctionsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    ListFiles:  TStringList;
    SelectedList: string;
    MonthNo:  Byte;
    procedure UpDateLists;
    procedure ReadPathLists;
//    function extractListName(fileName: TFileName): String;
    function Add2Function(FunctionString, PersonelID: string): Boolean;
    function Add2FunctionItems(FunctionString, FunctionID: string): Boolean;
    function GetOfficeCode(OfficeCode: Integer): Integer;
  public
    { Public declarations }
  end;

var
  KartSaat_WinF: TKartSaat_WinF;

implementation

uses GlobalPro, DM,  mmessage, Math, FaraConsts;

{$R *.dfm}

procedure TKartSaat_WinF.ReadPathLists;
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
 //  SetLength(ListsPath,(length(ListsPath))-1) ;
  if FindFirst(ListsPath+'*.TXT',faAnyFile,srch)=0 then begin
    repeat
        ListFiles.Add(srch.Name);
        lstListFiles.Items.Add(srch.Name)//extractListName(srch.Name),TObject(StrToInt(MidStr(srch.Name,7,2))));
    until FindNext(srch)<>0;
    FindClose(srch);
  end;//if
end;

procedure TKartSaat_WinF.SpeedButton1Click(Sender: TObject);
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

procedure TKartSaat_WinF.FormCreate(Sender: TObject);
begin
  inherited;
  yrcmbx1.YearsParam:=APPBank.Year;
  yrcmbx1.YearID:=APPBank.Year;
  MonthNo:=var_glb_CurrentMonth;
  if MonthNo<1 then MonthNo:=1;
  ToolBar1.Buttons[MonthNo-1].Down:=True;
  ListFiles:=TStringList.Create;
  edtPath.Text:=ReadConfig(APPID,'PW_Path');
  if System.SysUtils.DirectoryExists(Trim(edtPath.Text)) then ReadPathLists;
end;

procedure TKartSaat_WinF.FormDestroy(Sender: TObject);
begin
  inherited;
  ListFiles.Free;
  if System.SysUtils.DirectoryExists(edtPath.Text) then
    SaveConfig(APPID,'PW_PATH',edtPath.Text);
end;

//function TKartSaat_WinF.extractListName(fileName: TFileName): String;
//var
//  m:  Byte;
//  fname:  String;
//begin
//  fname:=ExtractFileName(fileName);
//  m:=StrToIntDef(MidStr(fname,7,2),1);
//  Result:=Format('%.2d %s',[m,ToolBar1.Buttons[MonthNo-1].Caption]);
//end;

procedure TKartSaat_WinF.edtPathKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_RETURN then begin
    Key:=0;
    if System.SysUtils.DirectoryExists(Trim(edtPath.Text)) then ReadPathLists;
  end;//if
end;

procedure TKartSaat_WinF.actTransferExecute(Sender: TObject);
var
  F:  TextFile;
  s,pid,pName:  String;       
  TransfredCount: Integer;
  ts:TStringList;
begin
  inherited;
  if SelectedList='' then begin
    warn('ÂÌç ·Ì” Ì «‰ Œ«» ‰‘œÂ «” .');
    Exit;
  end;//if
  ts:=TStringList.Create;
  memWarning.Clear;
  AssignFile(f,SelectedList);
  reset(F);
  ts.LoadFromFile(SelectedList);
  qryPersonels.Active:=False;
  qryPersonels.Active:=True;
  UpDateLists;
  try
    BigMessageProgBar('œ— Õ«· «‰ ﬁ«· «ÿ·«⁄«  ﬂ«—ﬂ—œ',ts.Count);
    TransfredCount:=0;
    while not eof(f) do begin
      Readln(f,s);
      pid:=IntToStr(StrToIntDef(Trim(MidStr(s,1,10)),0));// ReadPersonelItemNo(k,2);
      if not qryPersonels.Locate('PersonelNo',pid,[]) then
        memWarning.Lines.Add('ﬂœ Å—”‰·Ì ' + pid + ' „⁄ »— ‰Ì” .˛')
      else begin
        if not Add2Function(s,pid) then
          memWarning.Lines.Add('«‘ﬂ«· œ— À»  ﬂ«—ﬂ—œ Å—”‰· ‘„«—Â '+ pid)
        else Inc(TransfredCount);
      end;//else
      GoProgressBar(pName);
    end;//while
    Warn('ﬂ«—ﬂ—œ ' + IntToStr(TransfredCount) + ' Å—”‰· »Â ”Ì” „ „‰ ﬁ· ‘œ.');
  finally
    CloseFile(f);
    CloseMessage;
    ts.Free;
    FreeReservedCodes(DMf.adcSalary);
  end;//try
end;

procedure TKartSaat_WinF.lstListFilesClick(Sender: TObject);
var
  i:  Integer;
begin
  inherited;
  i:=lstListFiles.ItemIndex;
  if i<>-1 then begin
//    Warn(ListFiles[i]);
    SelectedList:=IncludeTrailingPathDelimiter(Trim(edtPath.Text)) + ListFiles[i];
//    SelectedMonth:=integer(lstListFiles.Items.Objects[i]);
  end
  else
    SelectedList:='';
end;

function TKartSaat_WinF.Add2Function(FunctionString, PersonelID: string): Boolean;
begin
  if qryFunctions.Locate('PersonelNo',PersonelID,[]) then
    if chkDelPreviousFunctions.Checked then qryFunctions.Delete;
  try
    with qryFunctions do begin
      Insert;
      FieldByName('PersonelNo').AsString:=PersonelID;
      FieldByName('ProjectID').AsInteger:=StrToInt(MidStr(FunctionString,12,10));
      FieldByName('OfficeCode').AsInteger:=GetOfficeCode(StrToInt(MidStr(FunctionString,23,10)));
      FieldByName('JobCode').AsInteger:=0;
      FieldByName('FunctionDay').AsInteger:= StrToInt(MidStr(FunctionString,34,5));
      FieldByName('FunctionTime').AsFloat:=StrToInt(MidStr(FunctionString,40,3))+
                       RoundTo( (StrToInt(MidStr(FunctionString,43,2))*1/60),-2);
//      Warn(FloatToStr(RoundTo( (StrToInt(MidStr(FunctionString,37,2))*1/60),-2)));
      FieldByName('FunctionID').AsInteger:=GetANewCode('','Pay.Functions','FunctionID',DMf.adcSalary);
      FieldByName('FormInfoID').AsInteger:=0;
      FieldByName('YearID').AsInteger:=APPBank.Year;
      FieldByName('Years').AsInteger:=yrcmbx1.YearID;
      FieldByName('Mounth').AsInteger:=MonthNo;
      Post;
      Add2FunctionItems(FunctionString,FieldByName('FunctionID').AsString)
    end;//with
    Result:=True;
  except
//    Warn(pid);
    Result:=False;
  end;//try
end;

procedure TKartSaat_WinF.Button1Click(Sender: TObject);
var
  i:  byte;
begin
  inherited;
    for i:=1 to 39 do
//      memWarning.Lines.Add(format('item#%d = %d',[i,ReadItemNo(memo1.lines[memo1.Lines.],i)]));
end;

procedure TKartSaat_WinF.ToolBar1Click(Sender: TObject);
begin
  inherited;
  MonthNo:=(Sender as TToolButton).tag;
end;

procedure TKartSaat_WinF.UpDateLists;
begin
  with qryFunctions do begin
    Active:=False;
    Parameters.ParamByName('Mounth').Value:=MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Active:=True;
  end;//with
end;

procedure TKartSaat_WinF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo:=(Sender as TToolButton).tag;
  UpDateLists;
end;

function TKartSaat_WinF.Add2FunctionItems(FunctionString,
  FunctionID: string): Boolean;
var
  AStart:Byte;
begin
  qryFunctionItems.First;
  while not qryFunctionItems.Eof  do    qryFunctionItems.Delete ;

  try
    with qry_FormsInfoClock do begin
      Active:=False;
      Active:=True;
      while not Eof do begin
        qryFunctionItems.Insert;
        qryFunctionItems.FieldByName('FunctionsItemsID').AsInteger:=
             GetANewCode('','Pay.FunctionsItems','FunctionsItemsID',DMf.adcSalary);
        qryFunctionItems.FieldByName('FunctionID').AsString:=FunctionID;
        AStart:=fieldbyname('AStart').AsInteger;
        qryFunctionItems.FieldByName('SalaryID').AsInteger:=fieldbyname('FormInfoID').AsInteger ;
        qryFunctionItems.FieldByName('Fdaily').AsFloat:=StrToInt(MidStr(FunctionString,AStart,3))+
                       RoundTo( (StrToInt(MidStr(FunctionString,AStart+3,2))*1/60),-2);
        qryFunctionItems.FieldByName('FHours').AsFloat:=StrToInt(MidStr(FunctionString,AStart,3))+
                       RoundTo( (StrToInt(MidStr(FunctionString,AStart+3,2))*1/60),-2);
        qryFunctionItems.FieldByName('Fdaily').AsFloat:=
            qryFunctionItems.FieldByName('Fdaily').AsFloat*fieldbyname('ActiveDay').AsInteger;
        qryFunctionItems.FieldByName('FHours').AsFloat:=
            qryFunctionItems.FieldByName('FHours').AsFloat*fieldbyname('ActiveTime').AsInteger;

        if qryFunctionItems.FieldByName('Fdaily').AsFloat+
           qryFunctionItems.FieldByName('FHours').AsFloat>0 then  qryFunctionItems.Post
        else qryFunctionItems.Cancel;
        Next;
      end;//while
    end;//with
    Result:=True;
  except
//    Warn(pid);
    Result:=False;
  end;//try
  FreeReservedCodes(DMf.adcSalary);

end;

procedure TKartSaat_WinF.qryFunctionsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFunctionItems do begin
    Active:=false;
    Parameters.ParamByName('FunID').Value:=qryFunctions.Fieldbyname('FunctionID').AsInteger;
    Active:=true;
  end;//with
end;

function TKartSaat_WinF.GetOfficeCode(OfficeCode: Integer): Integer;
begin
  With DMF.qryTmpTmpp do
  begin
    Active:=False;
    SQL.Text:=' SELECT FormInfoID   FROM Pay.FormsInfo '+
              ' WHERE (FormType=12) AND  InfoID='+IntToStr(OfficeCode);
    Active:=True;
    Result:=Fields[0].AsInteger;
    Active:=False;
  end;
end;

end.
