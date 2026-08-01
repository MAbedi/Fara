unit AccUnits;

interface

uses
  DBGrids,Graphics,ADODB,DB,ExtCtrls,Controls,GlobalPro,Windows, Classes,Dialogs,
  QuickRpt,  qrextra, qrctrls,ValEdit,FileCtrl,StrUtils,Menus;

var
  prvSumFld: TValueListEditor;

  procedure SortGrd(col:TColumn);
  procedure MakeReport(AGrid: TDBGrid; ATitle: string; JustPreview : boolean= true);
  function  GetDataPath(DataPath: string):string;
  function  BackupDatabaseNet(ADC:  TADOConnection; anAPPBank: TAPPBANK;pathName: String;ChooseDir:boolean=False;DoZip:Boolean=True): Boolean;

implementation

uses Dm,   shamsiDate, mmessage, SysUtils;

procedure SortGrd(col:TColumn);
var
  i:Integer;
  DataName: TDataSet;
  grd:TDBGrid;
begin
  Dataname:= col.Field.DataSet;
  grd:=TDBGrid(col.Grid);
  with grd,Columns do begin
    for i:=0 to Count-1  do begin
      Columns[i].Title.Color:=clBtnFace;
      Columns[i].Title.Caption:=DataName.fieldbyname(Columns[i].FieldName).DisplayLabel;
    end;//for
  end;//with
  Col.Title.Color:=$00DADADA;
  if DataName is TCustomADODataSet then
    with TCustomADODataSet(DataName) do begin
      if (Pos(col.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort) = 0) then begin
        col.Title.Caption:=col.Title.Caption+' (‰“Ê·Ì)';
        Sort := Col.Field.FieldName + ' DESC';
      end else begin
        col.Title.Caption:=col.Title.Caption+' (’⁄ÊœÌ)' ;
        Sort := Col.Field.FieldName + ' ASC';
      end;//else
    end;//with

end;

procedure MakeReport(AGrid: TDBGrid; ATitle: string; JustPreview : boolean= true);
var
  i:integer;
  ADO: TDataset;
  RP: TCustomQuickRep;
  St: TStringList;
begin
  ADO := AGrid.DataSource.DataSet;
  if not ADo.active then
    ADo.Open;
    St := TStringList.Create;
  try
    with AGrid, Columns  do
      for i :=   Count - 1 downto 0 do
        if Columns[i].Visible then
          st.Add(Columns[i].FieldName);

      Rp := nil;
      QRCreateList(Rp, RP, AGrid.DataSource.DataSet, ATitle, St);
      Rp.BiDiMode:= bdRightToLeft;
      Rp.Font.Name:='badr';
      Rp.FontSize:=9;
      with RP do
      for i := 0 to ComponentCount - 1 do begin
        if (Components[i] is TQRDBText)then
        begin
          TQRDBText(Components[i]).Width := AGrid.Columns[Ado.FieldByName(TQRDBtext(Components[i]).DataField).Index].Width;
          TQRDBText(Components[i]).BiDiMode :=bdRightToLeft;
          TQRDBText(Components[i]).Alignment := taRightJustify ;
        end
       else if (Components[i] is TQRLabel) then
          if ADO.FindField(TQRLabel(Components[i]).Caption)<>nil then
          begin
           TQRLabel(Components[i]).Width := AGrid.Columns[ADO.FieldByName(TQRLabel(Components[i]).Caption).Index].Width;
           TQRLabel(Components[i]).Alignment := taRightJustify;
            TQRDBText(Components[i]).Alignment := taRightJustify ;
          end;

      end;//with
    if JustPreview then
    rp.Preview
    else
    rp.Print;
  finally
    rp.Free;
    st.Free;
  end;//try
end;

function GetDataPath(DataPath: string):string;
var
  qry:TADOQuery;
  conStr: String;
  userName:String;
  serverName: String;
  filename:String;
begin
  serverName:=readconfig('','SqlServerName');
  userName:=ReadConfig('','UserName','FaraUser');
  conStr:='Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True'
  + ';Data Source=' + ReadConfig('','SQLServerName')
  + ';User ID=' + userName + ';connect timeout=10';
  qry:=TADOQuery.Create(Dmf.adcAccounting);
  try
    with qry do begin
      ConnectionString:=conStr;
      Active:=False;
      SQL.Text:='SELECT FileName FROM master.dbo.sysdatabases WHERE name = ' + QuotedStr(DataPath);
      try
        Active:=True;
        filename:=Fields[0].AsString;
        Result:='\\' + serverName +'\'+ RightStr(filename,length(filename)- 3);
        Result:=ExtractFilePath(Result)+'..';
        Active:=False;
      except
        DataPath:='';
      end;//try
    end;//with

  finally
    qry.Free;
  end;//tryend;
end;


function BackupDatabaseNet(ADC:  TADOConnection; anAPPBank: TAPPBANK;pathName: String;ChooseDir:boolean=False;DoZip:Boolean=True): Boolean;
var
  cmd:  String;
  adoCommand: TADOCommand;
  tmpDBpath,tmpDBpathZip:  String;
  bPath:  String;
  filepath:String;
  ts: TStringList;
begin
  Result:=False;
  filepath:=GetDataPath(anAPPBank.Name)+'\BackUpNet\'+
            MakeUniqDBBackupName(anAPPBank.Name,var_glb_CurrentDate)+'\'+
            MakeUniqDBBackupName(anAPPBank.Name,var_glb_CurrentDate) + '.zip';
  setkeyboardlatin;
  bPath:='';
  if ChooseDir then begin
    if not selectdirectory('·ÿ›« „”Ì— Å‘ Ì»«‰ êÌ—Ì —« Ê«—œ ﬂ‰Ìœ:˛','',bPath) then Exit
  end else bPath:=pathName;

  tmpDBpath:=ExtractFilePath(filepath) + ExtractFileNameWithoutExt(filepath) + '.dat';
  cmd:=Format('BACKUP DATABASE %s TO DISK = ''%s''  WITH PASSWORD = ''tycedar'' ,INIT',
  [anAPPBank.Name,tmpDBpath]);
  ForceDirectories(ExtractFilePath(tmpDBpath));
  DeleteFile(tmpDBpath);
  adoCommand:=TADOCommand.Create(ADC);
  ts:=TStringList.Create;
  ts.Text:='⁄‰Ê«‰ Å‘ Ì»«‰='+ anAPPBank.Title;
  ts.Add('‰«„ »«‰ﬂ='+anAPPBank.Name);
  ts.Add('‰«„ ‘—ﬂ ='+anAPPBank.CompanyName);
  ts.Add('”«· „«·Ì='+ IntToStr(anAPPBank.Year));
  ts.add(' «—ÌŒ  ÂÌÂ=' + miladi2Shamsi(Date));
  ts.Add(' ÂÌÂ ﬂ‰‰œÂ= '+ User.name);
  ts.Add('ﬂœ ‘—ﬂ ='+IntToStr(anAPPBank.n_subcompany));
  BigMessage('œ— Õ«·  ÂÌÂ Å‘ Ì»«‰ ...',0);
  try
    with adoCommand do begin
      Connection:=ADC;
      ParamCheck:=False;
      Prepared:=False;
      CommandText:=cmd;
      try
        Execute;
        if FileExists(tmpDBpath) then begin
          sleep(1000);
          if DoZip then
            tmpDBpathZip:=ExtractFilePath(tmpDBpath) + ExtractFileName(filepath);
            if not zipfiles(tmpDBpath,filepath) then raise Exception.Create('«‘ﬂ«· œ— ›‘—œÂù”«“Ì Å‘ Ì»«‰');
        end;//if
        ts.SaveToFile(ExtractFilePath(filepath) + ExtractFileNameWithoutExt(filepath) + '.dsc');
        BigMessage('⁄„·Ì«  Å‘ Ì»«‰ùêÌ—Ì »« „Ê›ﬁÌ  «‰Ã«„ ‘œ.',1);
        Result:=True;
      except
        warn('«‘ﬂ«· œ—  ÂÌÂ Å‘ Ì»«‰');
         Result:=False;
      end;//try
    end;//with
  finally
    SetKeyboardFarsi;
    adoCommand.Free;
    ts.Free;
    CloseMessage;
    CopyFile(pchar(filepath),pchar(bPath),false);
    CopyFile(pchar(ExtractFilePath(filepath)+ExtractFileNameWithoutExt(filepath)+'.dsc'),pchar(ExtractFilePath(bPath)+ExtractFileNameWithoutExt(bPath)+'.dsc'),false);
    DelDir(GetDataPath(anAPPBank.Name)+'\BackUpNet');
  end;//try
end;

{ TmyItem }




end.
