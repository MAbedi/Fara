unit uUpdateSystem;

interface

uses
  System.SysUtils, System.Classes, System.JSON, System.IOUtils,
  System.DateUtils, IdFTP,FaraConsts;



type

  TUpdateInfo = record
    LastVersion: string;
    MinRequired: string;
  end;

  TChangeItem = record
    Version: string;
    Desc: string;
  end;

  TMessageItem = record
    ID: Integer;
    Text: string;
    ShowOnce: Boolean;
  end;

  TUpdateSystem = class
  private
    FLocalFile: string;

    FFTPHost: string;
    FFTPUser: string;
    FFTPPass: string;

    FSystemInfo: TUpdateInfo;
    FChanges: TArray<TChangeItem>;
    FMessages: TArray<TMessageItem>;

    FAlertText: string;
    FAlertActive: Boolean;

    function NeedDownload: Boolean;
    procedure DownloadFromFTP;

  public

    constructor Create(const LocalFile, Host, User, Pass: string);

    function UpdateAndLoad: Boolean;
    function LoadLocalJSON: Boolean;

    function HasNewMessages: Boolean;
    procedure SaveLastSeenMessages;

    function IsNewVersion: Boolean;
    procedure SaveSeenVersion;

    property SystemInfo: TUpdateInfo read FSystemInfo;
    property Changes: TArray<TChangeItem> read FChanges;
    property Messages: TArray<TMessageItem> read FMessages;

    property AlertActive: Boolean read FAlertActive;
    property AlertText: string read FAlertText;

  end;

implementation

uses
  GlobalPro; // جایی که SaveConfig و ReadConfig هست

{------------------------------------}

constructor TUpdateSystem.Create(const LocalFile, Host, User, Pass: string);
begin
  FLocalFile := LocalFile;

  FFTPHost := Host;
  FFTPUser := User;
  FFTPPass := Pass;
end;

{------------------------------------}

function TUpdateSystem.NeedDownload: Boolean;
var
  FileDate: TDateTime;
begin

  Result := True;

  if FileExists(FLocalFile) then
  begin

    FileDate := FileDateToDateTime(FileAge(FLocalFile));

    if HoursBetween(Now, FileDate) < 8 then
      Result := False;

  end;

end;

{------------------------------------}

procedure TUpdateSystem.DownloadFromFTP;
var
  FTP: TIdFTP;
begin

  FTP := TIdFTP.Create(nil);

  try

    FTP.Host := FFTPHost;
    FTP.Username := FFTPUser;
    FTP.Password := FFTPPass;

    FTP.Passive := True;
    FTP.Port := 18821;

    FTP.Connect;

    try

      FTP.ChangeDir('/LastVersion');

      FTP.Get('system_info.json', FLocalFile, True);

    finally
      FTP.Disconnect;
    end;

  finally
    FTP.Free;
  end;

end;

{------------------------------------}

function TUpdateSystem.UpdateAndLoad: Boolean;
begin

  Result := True;

  if NeedDownload then
    DownloadFromFTP;

  Result := LoadLocalJSON;

end;

{------------------------------------}

function TUpdateSystem.LoadLocalJSON: Boolean;
var
  JSONStr: string;

  Obj: TJSONObject;
  SysObj: TJSONObject;
  AlertObj: TJSONObject;

  Arr: TJSONArray;
  MsgArr: TJSONArray;

  i: Integer;

begin

  Result := False;

  if not FileExists(FLocalFile) then
    Exit;

  JSONStr := TFile.ReadAllText(FLocalFile, TEncoding.UTF8);

  Obj := TJSONObject.ParseJSONValue(JSONStr) as TJSONObject;

  if not Assigned(Obj) then
    Exit;

  try

    SysObj := Obj.GetValue<TJSONObject>('system');

    if Assigned(SysObj) then
    begin
      FSystemInfo.LastVersion :=
        SysObj.GetValue<string>('last_version', '');

      FSystemInfo.MinRequired :=
        SysObj.GetValue<string>('min_required_version', '');
    end;

    Arr := Obj.GetValue<TJSONArray>('changelog');

    if Assigned(Arr) then
    begin

      SetLength(FChanges, Arr.Count);

      for i := 0 to Arr.Count - 1 do
      begin
        FChanges[i].Version :=
          Arr.Items[i].GetValue<string>('version', '');

        FChanges[i].Desc :=
          Arr.Items[i].GetValue<string>('desc', '');
      end;

    end;

    MsgArr := Obj.GetValue<TJSONArray>('global_messages');

    if Assigned(MsgArr) then
    begin

      SetLength(FMessages, MsgArr.Count);

      for i := 0 to MsgArr.Count - 1 do
      begin
        FMessages[i].ID :=
          MsgArr.Items[i].GetValue<Integer>('id', 0);

        FMessages[i].Text :=
          MsgArr.Items[i].GetValue<string>('text', '');

        FMessages[i].ShowOnce :=
          MsgArr.Items[i].GetValue<Boolean>('show_once', False);
      end;

    end;

    AlertObj := Obj.GetValue<TJSONObject>('urgent_alert');

    if Assigned(AlertObj) then
    begin
      FAlertActive :=
        AlertObj.GetValue<Boolean>('active', False);

      FAlertText :=
        AlertObj.GetValue<string>('text', '');
    end;

    Result := True;

  finally
    Obj.Free;
  end;

end;

{------------------------------------}

function TUpdateSystem.HasNewMessages: Boolean;
var
  LastID: Integer;
  i: Integer;
begin

  Result := False;

  LastID :=
   StrToIntDef(ReadConfig(APPID,'LastSeenMessageID'),0);

  for i := 0 to High(FMessages) do
    if FMessages[i].ID > LastID then
      Exit(True);

end;

{------------------------------------}

procedure TUpdateSystem.SaveLastSeenMessages;
var
  MaxID: Integer;
  i: Integer;
begin

  MaxID := 0;

  for i := 0 to High(FMessages) do
    if FMessages[i].ID > MaxID then
      MaxID := FMessages[i].ID;

  SaveConfig(APPID,'LastSeenMessageID',IntToStr(MaxID));

end;

{------------------------------------}

function TUpdateSystem.IsNewVersion: Boolean;
var
  LastSeen: string;
begin

  LastSeen :=
    ReadConfig(APPID,'LastSeenVersion');

  Result :=
    FSystemInfo.LastVersion <> LastSeen;

end;

{------------------------------------}

procedure TUpdateSystem.SaveSeenVersion;
begin

  SaveConfig(
    APPID,
    'LastSeenVersion',
    FSystemInfo.LastVersion
  );

end;

end.

