unit StoreRestrictionsBatch;

interface

uses ADODB, GlobalPro;

function AddUserStoreRestrictions(Connection: TADOConnection;
  UserID: Integer; const UserName: string; out Added: Integer): Boolean;

/// محدودیت گروهی بر اساس پست سازمانی:
/// پست(ها) + انبار(ها) + فرم(ها) انتخاب می‌شود و برای همه کاربران آن پست‌ها
/// در UsersStoreReciptTypes رکورد درج می‌شود (تکراری‌ها حفظ می‌شوند).
function AddPositionStoreRestrictions(Connection: TADOConnection;
  out Added: Integer): Boolean;

implementation

uses SysUtils, Classes, DB, System.UITypes, ChooseItem, mmessage;

function AddUserStoreRestrictions(Connection: TADOConnection;
  UserID: Integer; const UserName: string; out Added: Integer): Boolean;
var
  StoreCodes, FormCodes: string;
  Stores, Forms: TStringList;
  Query: TADOQuery;
  I, J: Integer;
begin
  Result := False;
  Added := 0;
  StoreCodes := '';
  FormCodes := '';
  if not ChooseItemF.SelectChecks(StoreCodes, 'n_StoreID', 'c_StoreName',
    'Stores', '', Connection, False, 'انتخاب انبارها برای محدودیت') then
    Exit;
  if StoreCodes = '' then
    Exit;
  if not ChooseItemF.SelectChecks(FormCodes, 'ReciptType', 'ReciptCaption',
    'ReciptTypes', '', Connection, False, 'انتخاب فرم‌های ممنوع در انبارهای انتخاب‌شده') then
    Exit;
  if FormCodes = '' then
    Exit;

  Stores := TStringList.Create;
  Forms := TStringList.Create;
  Query := TADOQuery.Create(nil);
  try
    Stores.CommaText := Copy(StoreCodes, 1, Length(StoreCodes) - 1);
    Forms.CommaText := Copy(FormCodes, 1, Length(FormCodes) - 1);
    if (Stores.Count = 0) or (Forms.Count = 0) then
      Exit;
    if get_response(Format('کاربر «%s» اجازه ثبت %d فرم انتخاب‌شده در %d انبار انتخاب‌شده را نخواهد داشت.' +
      #13#10 + '%d ترکیب بررسی و محدودیت‌های جدید اضافه شوند؟' +
      #13#10 + 'محدودیت‌های قبلی حفظ می‌شوند.',
      [UserName, Forms.Count, Stores.Count, Forms.Count * Stores.Count])) <> mrYes then
      Exit;

    if Connection.InTransaction then
      raise Exception.Create('عملیات دیگری در حال ثبت است. پس از پایان آن دوباره تلاش کنید.');
    Query.Connection := Connection;
    Query.SQL.Text :=
      'INSERT INTO dbo.UsersStoreReciptTypes (UserID, StoreID, ReciptType) ' +
      'SELECT :UserID, :StoreID, :ReciptType ' +
      'WHERE NOT EXISTS (SELECT 1 FROM dbo.UsersStoreReciptTypes WITH (UPDLOCK, HOLDLOCK) ' +
      'WHERE UserID = :ExistingUserID AND StoreID = :ExistingStoreID ' +
      'AND ReciptType = :ExistingReciptType)';
    for I := 0 to Query.Parameters.Count - 1 do
      Query.Parameters[I].DataType := ftInteger;
    Connection.BeginTrans;
    try
      for I := 0 to Stores.Count - 1 do
        for J := 0 to Forms.Count - 1 do
        begin
          Query.Parameters.ParamByName('UserID').Value := UserID;
          Query.Parameters.ParamByName('StoreID').Value := StrToInt(Stores[I]);
          Query.Parameters.ParamByName('ReciptType').Value := StrToInt(Forms[J]);
          Query.Parameters.ParamByName('ExistingUserID').Value := UserID;
          Query.Parameters.ParamByName('ExistingStoreID').Value := StrToInt(Stores[I]);
          Query.Parameters.ParamByName('ExistingReciptType').Value := StrToInt(Forms[J]);
          Inc(Added, Query.ExecSQL);
        end;
      Connection.CommitTrans;
    except
      if Connection.InTransaction then
        Connection.RollbackTrans;
      Added := 0;
      raise;
    end;
    Result := True;
  finally
    Query.Free;
    Forms.Free;
    Stores.Free;
  end;
end;

function AddPositionStoreRestrictions(Connection: TADOConnection;
  out Added: Integer): Boolean;
var
  PositionCodes, StoreCodes, FormCodes: string;
  Positions, Stores, Forms: TStringList;
  Query: TADOQuery;
  I, J, K: Integer;
  UserCount: Integer;
begin
  Result := False;
  Added := 0;
  PositionCodes := '';
  StoreCodes := '';
  FormCodes := '';

  if not ChooseItemF.SelectChecks(PositionCodes, 'PositionCode', 'PositionTitle',
    'Position', '', Connection, False, 'انتخاب پست سازمانی') then
    Exit;
  if PositionCodes = '' then
    Exit;

  if not ChooseItemF.SelectChecks(StoreCodes, 'n_StoreID', 'c_StoreName',
    'Stores', '', Connection, False, 'انتخاب انبارها برای محدودیت') then
    Exit;
  if StoreCodes = '' then
    Exit;

  if not ChooseItemF.SelectChecks(FormCodes, 'ReciptType', 'ReciptCaption',
    'ReciptTypes', '', Connection, False, 'انتخاب فرم‌های ممنوع در انبارهای انتخاب‌شده') then
    Exit;
  if FormCodes = '' then
    Exit;

  Positions := TStringList.Create;
  Stores := TStringList.Create;
  Forms := TStringList.Create;
  Query := TADOQuery.Create(nil);
  try
    Positions.CommaText := Copy(PositionCodes, 1, Length(PositionCodes) - 1);
    Stores.CommaText := Copy(StoreCodes, 1, Length(StoreCodes) - 1);
    Forms.CommaText := Copy(FormCodes, 1, Length(FormCodes) - 1);
    if (Positions.Count = 0) or (Stores.Count = 0) or (Forms.Count = 0) then
      Exit;

    Query.Connection := Connection;
    Query.SQL.Text :=
      'SELECT COUNT(*) FROM Farasystems.dbo.Operators WHERE PositionCode IN (' +
      Copy(PositionCodes, 1, Length(PositionCodes) - 1) + ')';
    Query.Open;
    UserCount := Query.Fields[0].AsInteger;
    Query.Close;

    if UserCount = 0 then
    begin
      Warn('هیچ کاربری با پست(های) انتخاب‌شده یافت نشد.');
      Exit;
    end;

    if get_response(Format(
      'برای %d کاربر مرتبط با %d پست انتخاب‌شده،' + #13#10 +
      'در %d انبار و %d فرم محدودیت اعمال شود؟' + #13#10 +
      '(حداکثر %d ترکیب جدید؛ موارد تکراری حفظ می‌شوند.)',
      [UserCount, Positions.Count, Stores.Count, Forms.Count,
       UserCount * Stores.Count * Forms.Count])) <> mrYes then
      Exit;

    if Connection.InTransaction then
      raise Exception.Create('عملیات دیگری در حال ثبت است. پس از پایان آن دوباره تلاش کنید.');

    Query.SQL.Text :=
      'INSERT INTO dbo.UsersStoreReciptTypes (UserID, StoreID, ReciptType) ' +
      'SELECT O.UserID, :StoreID, :ReciptType ' +
      'FROM Farasystems.dbo.Operators O ' +
      'WHERE O.PositionCode = :PositionCode ' +
      'AND NOT EXISTS (SELECT 1 FROM dbo.UsersStoreReciptTypes AS U WITH (UPDLOCK, HOLDLOCK) ' +
      'WHERE U.UserID = O.UserID AND U.StoreID = :ExistingStoreID ' +
      'AND U.ReciptType = :ExistingReciptType)';
    for I := 0 to Query.Parameters.Count - 1 do
      Query.Parameters[I].DataType := ftInteger;

    Connection.BeginTrans;
    try
      for K := 0 to Positions.Count - 1 do
        for I := 0 to Stores.Count - 1 do
          for J := 0 to Forms.Count - 1 do
          begin
            Query.Parameters.ParamByName('PositionCode').Value := StrToInt(Positions[K]);
            Query.Parameters.ParamByName('StoreID').Value := StrToInt(Stores[I]);
            Query.Parameters.ParamByName('ReciptType').Value := StrToInt(Forms[J]);
            Query.Parameters.ParamByName('ExistingStoreID').Value := StrToInt(Stores[I]);
            Query.Parameters.ParamByName('ExistingReciptType').Value := StrToInt(Forms[J]);
            Inc(Added, Query.ExecSQL);
          end;
      Connection.CommitTrans;
    except
      if Connection.InTransaction then
        Connection.RollbackTrans;
      Added := 0;
      raise;
    end;
    Result := True;
  finally
    Query.Free;
    Forms.Free;
    Stores.Free;
    Positions.Free;
  end;
end;

end.
