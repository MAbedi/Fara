unit StoreRestrictionsBatch;

interface

uses ADODB,GlobalPro;

function AddUserStoreRestrictions(Connection: TADOConnection;
  UserID: Integer; const UserName: string; out Added: Integer): Boolean;

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
    // SelectChecks returns comma-separated codes with a trailing comma.
    Stores.CommaText := Copy(StoreCodes, 1, Length(StoreCodes) - 1);
    Forms.CommaText := Copy(FormCodes, 1, Length(FormCodes) - 1);
    if (Stores.Count = 0) or (Forms.Count = 0) then
      Exit;
    if get_response(Format('کاربر «%s» اجازه ثبت %d فرم انتخاب‌شده در %d انبار انتخاب‌شده را نخواهد داشت.' +
      #13#10 + '%d ترکیب بررسی و محدودیت‌های جدید اضافه شوند؟' +
      #13#10 + 'محدودیت‌های قبلی حفظ می‌شوند.',
      [UserName, Forms.Count, Stores.Count, Forms.Count * Stores.Count])) <> mrYes then
      Exit;

    // Do not commit or roll back a transaction owned by another operation.
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

end.
