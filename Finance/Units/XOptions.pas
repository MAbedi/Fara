unit XOptions;

interface

uses SysUtils, Classes, ADODB;

type

  TXOptionclass = class(TObject)
  public
    // Metodes local
    function ReadLocalConfig(const key: string; const defaultValue: string)
      : string; overload;
    function ReadLocalConfig(const key: string; const defaultValue: Boolean)
      : Boolean; overload;
    function ReadLocalConfig(const key: string; const defaultValue: Integer)
      : Integer; overload;
    function ReadLocalConfig(const key: string; const defaultValue: TDateTime)
      : TDateTime; overload;
    procedure SaveLocalConfig(const key: string; const Value: string); overload;
    procedure SaveLocalConfig(const key: string; const Value: Boolean);
      overload;
    procedure SaveLocalConfig(const key: string; const Value: Integer);
      overload;
    procedure SaveLocalConfig(const key: string;
      const Value: TDateTime); overload;
    // -------------

    function ReadServerConfig(const key: string; const defaultValue: string)
      : string; overload;
    function ReadServerConfig(const key: string; const defaultValue: Boolean)
      : Boolean; overload;
    function ReadServerConfig(const key: string; const defaultValue: Integer)
      : Integer; overload;
    function ReadServerConfig(const key: string; const defaultValue: TDateTime)
      : TDateTime; overload;
    procedure SaveServerConfig(const key: string; const Value: string);
      overload;
    procedure SaveServerConfig(const key: string;
      const Value: Boolean); overload;
    procedure SaveServerConfig(const key: string;
      const Value: Integer); overload;
    procedure SaveServerConfig(const key: string;
      const Value: TDateTime); overload;
    constructor Create(const pathini: string); overload;
    constructor Create(const pathini: string;
      const tblName, fldName: string); overload;
    destructor Destroy; override;
    procedure reLoad;
    procedure RepairOldFeilds;
  private
    FLocalConfig: TStrings;
    FServerConfig: TStrings;
    FqryConfig: TADOQuery;
    fLocalConfigFileName: string;
    FTableName: string;
    FFiedName: string;
    procedure SaveServer;
    procedure SaveLocal;
    procedure reloadLocalConfig;
    procedure reloadServerConfig;
  end;

implementation

uses Resource, FaraConsts;

{ TXOption }

function TXOptionclass.ReadLocalConfig(const key: string;
  const defaultValue: Boolean): Boolean;
begin
  Result := StrToBoolDef(ReadLocalConfig(key, ''), defaultValue)
end;

function TXOptionclass.ReadLocalConfig(const key, defaultValue: string): string;
begin
  Result := FLocalConfig.Values[key];
  if Result = EmptyStr then
  begin
    Result := defaultValue;
  end; // if
end;

constructor TXOptionclass.Create(const pathini: string);
begin
  Create(pathini, '', '');
end;

constructor TXOptionclass.Create(const pathini, tblName, fldName: string);
const
  CSQL = 'Select %S From %s';
begin
  FLocalConfig := TStringList.Create;
  fLocalConfigFileName := pathini;
  reloadLocalConfig;
  if tblName <> EmptyStr then
  begin
    FTableName := tblName;
    FFiedName := fldName;
    FqryConfig := TADOQuery.Create(nil);
    FqryConfig.Connection := theAccConnection;
    FServerConfig := TStringList.Create;
    FqryConfig.SQL.Text := Format(CSQL, [fldName, tblName]);

      try
    FqryConfig.Open;
      except
        on e: Exception do
        begin
         // ('اشکال در تنظیمات سیستم حسابداری فرا' + e.Message);
          Exit;
        end;
      end;

    reloadServerConfig;
  end;
end;

destructor TXOptionclass.Destroy;
begin
  if Assigned(FqryConfig) then
    FqryConfig.Free;
  if Assigned(FServerConfig) then
    FServerConfig.Free;
  if Assigned(FLocalConfig) then
    FLocalConfig.Free;

  inherited;
end;

function TXOptionclass.ReadLocalConfig(const key: string;
  const defaultValue: TDateTime): TDateTime;
begin
  Result := StrToDateTimeDef(ReadLocalConfig(key, ''), defaultValue)
end;

function TXOptionclass.ReadServerConfig(const key: string;
  const defaultValue: Boolean): Boolean;
begin
  Result := StrToBool(ReadServerConfig(key, BoolToStr(defaultValue)));
end;

function TXOptionclass.ReadServerConfig(const key, defaultValue
  : string): string;
begin
  Result := FServerConfig.Values[key];
  if Result = '' then
  begin
    Result := defaultValue;
    // SetServerConfig(keyname,default);
  end; // if

end;

function TXOptionclass.ReadServerConfig(const key: string;
  const defaultValue: TDateTime): TDateTime;
begin
  Result := StrToDateTime(ReadLocalConfig(key, DateTimeToStr(defaultValue)));
end;

function TXOptionclass.ReadServerConfig(const key: string;
  const defaultValue: Integer): Integer;
begin
  Result := StrToInt(ReadLocalConfig(key, IntToStr(defaultValue)))
end;

procedure TXOptionclass.reLoad;
begin
  reloadLocalConfig;
  reloadServerConfig;
end;

procedure TXOptionclass.reloadLocalConfig;
begin
  if FileExists(fLocalConfigFileName) then
    FLocalConfig.LoadFromFile(fLocalConfigFileName)
  else
    FLocalConfig.Clear;
end;

procedure TXOptionclass.reloadServerConfig;
begin
  if not Assigned(FqryConfig) then
    Exit;
  with FqryConfig do
  begin
    Active := false;
    Active := True;
    FServerConfig.Text := FieldByName(FFiedName).AsString;
    Active := false;
  end; // with

end;

procedure TXOptionclass.RepairOldFeilds;
var
  qry: TADOQuery;
  i: SmallInt;
begin
  qry := TADOQuery.Create(nil);

  with qry do
  begin
    Connection := theAccConnection;
    SQL.Text := 'Select * From ' + FTableName;
    Open;
    if qry.FindField('Options').IsNull then
      for i := 0 to qry.FieldCount - 1 do
        SaveServerConfig(qry.Fields[i].FieldName, qry.Fields[i].AsString);
    Next;
  end;
end;

function TXOptionclass.ReadLocalConfig(const key: string;
  const defaultValue: Integer): Integer;
begin
  Result := StrToIntDef(ReadLocalConfig(key, ''), defaultValue)
end;

procedure TXOptionclass.SaveLocalConfig(const key: string;
  const Value: Boolean);
begin
  SaveLocalConfig(key, BoolToStr(Value));
end;

procedure TXOptionclass.SaveLocalConfig(const key, Value: string);
begin
  reloadLocalConfig;
  FLocalConfig.Values[key] := Value;
  SaveLocal;
end;

procedure TXOptionclass.SaveLocalConfig(const key: string;
  const Value: TDateTime);
begin
  SaveLocalConfig(key, DateTimeToStr(Value));
end;

procedure TXOptionclass.SaveLocal;
begin
  if FLocalConfig.Count <> 0 then
    FLocalConfig.SaveToFile(fLocalConfigFileName);
end;

procedure TXOptionclass.SaveServerConfig(const key: string;
  const Value: Boolean);
begin
  SaveServerConfig(key, BoolToStr(Value));
end;

procedure TXOptionclass.SaveServerConfig(const key, Value: string);
begin
  FServerConfig.Values[key] := Value;
  SaveServer;
  reloadServerConfig;

end;

procedure TXOptionclass.SaveServerConfig(const key: string;
  const Value: TDateTime);
begin
  SaveServerConfig(key, DateTimeToStr(Value));
end;

procedure TXOptionclass.SaveServerConfig(const key: string;
  const Value: Integer);
begin
  SaveServerConfig(key, IntToStr(Value));
end;

procedure TXOptionclass.SaveServer;
begin
  if FServerConfig.Count <> 0 then
    with FqryConfig do
    begin
      Active := True;
      Edit;
      FieldByName(FFiedName).AsString := FServerConfig.Text;
      Post;
      Active := false;
    end; // with
end;

procedure TXOptionclass.SaveLocalConfig(const key: string;
  const Value: Integer);
begin
  SaveLocalConfig(key, IntToStr(Value));
end;

end.
