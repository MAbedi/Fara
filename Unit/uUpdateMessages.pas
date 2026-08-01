unit uUpdateMessages;

interface

uses
  System.SysUtils, System.Classes, System.JSON, Vcl.Dialogs, Vcl.Controls,
  System.IOUtils, System.Generics.Collections;

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

  TUpdateData = class
  private
    FSystemInfo: TUpdateInfo;
    FChanges: TArray<TChangeItem>;
    FMessages: TArray<TMessageItem>;
    FAlertText: string;
    FAlertActive: Boolean;
  public
    function LoadFromFile(const AFileName: string): Boolean;
    procedure ShowAll; // نمایش کلی برای تست
    property SystemInfo: TUpdateInfo read FSystemInfo;
    property Changes: TArray<TChangeItem> read FChanges;
    property Messages: TArray<TMessageItem> read FMessages;
    property AlertText: string read FAlertText;
    property AlertActive: Boolean read FAlertActive;
  end;

implementation

{ TUpdateData }

function TUpdateData.LoadFromFile(const AFileName: string): Boolean;
var
  JSONStr: string;
  JSONObj, SysObj, AlertObj: TJSONObject;
  Arr, MsgArr: TJSONArray;
  i: Integer;
begin
  Result := False;
  if not TFile.Exists(AFileName) then Exit;
  JSONStr := TFile.ReadAllText(AFileName, TEncoding.UTF8);

  JSONObj := TJSONObject.ParseJSONValue(JSONStr) as TJSONObject;
  try
    if not Assigned(JSONObj) then Exit;

    // بخش system
    SysObj := JSONObj.GetValue<TJSONObject>('system');
    if Assigned(SysObj) then
    begin
      FSystemInfo.LastVersion := SysObj.GetValue<string>('last_version', '');
      FSystemInfo.MinRequired := SysObj.GetValue<string>('min_required_version', '');
    end;

    // بخش changelog
    Arr := JSONObj.GetValue<TJSONArray>('changelog');
    if Assigned(Arr) then
    begin
      SetLength(FChanges, Arr.Count);
      for i := 0 to Arr.Count - 1 do
      begin
        FChanges[i].Version := Arr.Items[i].GetValue<string>('version', '');
        FChanges[i].Desc := Arr.Items[i].GetValue<string>('desc', '');
      end;
    end;

    // بخش پیام‌ها
    MsgArr := JSONObj.GetValue<TJSONArray>('global_messages');
    if Assigned(MsgArr) then
    begin
      SetLength(FMessages, MsgArr.Count);
      for i := 0 to MsgArr.Count - 1 do
      begin
        FMessages[i].ID := MsgArr.Items[i].GetValue<Integer>('id', 0);
        FMessages[i].Text := MsgArr.Items[i].GetValue<string>('text', '');
        FMessages[i].ShowOnce := MsgArr.Items[i].GetValue<Boolean>('show_once', False);
      end;
    end;

    // بخش هشدار
    AlertObj := JSONObj.GetValue<TJSONObject>('urgent_alert');
    if Assigned(AlertObj) then
    begin
      FAlertText := AlertObj.GetValue<string>('text', '');
      FAlertActive := AlertObj.GetValue<Boolean>('active', False);
    end;

    Result := True;
  finally
    JSONObj.Free;
  end;
end;

procedure TUpdateData.ShowAll;
var
  s: string;
  c: TChangeItem;
  m: TMessageItem;
begin
  s := Format('نسخه فعلی: %s (حداقل قابل قبول: %s)', [FSystemInfo.LastVersion, FSystemInfo.MinRequired]) + sLineBreak + sLineBreak;
  s := s + '📄 فهرست تغییرات:' + sLineBreak;
  for c in FChanges do
    s := s + '  - ' + c.Version + ': ' + c.Desc + sLineBreak;

  s := s + sLineBreak + '✉️ پیام‌ها:' + sLineBreak;
  for m in FMessages do
    s := s + Format('  • [%d] %s', [m.ID, m.Text]) + sLineBreak;

  if FAlertActive then
  begin
    s := s + sLineBreak + '⚠️ هشدار فعال:' + sLineBreak + FAlertText;
  end;

  ShowMessage(s);
end;

end.

