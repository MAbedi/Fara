unit uTaxIDValidator;

interface

uses
  SysUtils, DateUtils;

// تابع اصلی اعتبارسنجی
function IsValidFullTaxID(const TaxID: string): Boolean;

implementation

// تابع چک کردن عددی بودن
function IsNumeric(const S: string): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 1 to Length(S) do
    if not (S[I] in ['0'..'9']) then
    begin
      Result := False;
      Break;
    end;
end;

// تابع چک کردن تاریخ
function IsValidDatePart(const DateStr: string): Boolean;
var
  Y, M, D: Word;
  Valid: Boolean;
begin
  Result := False;

  if Length(DateStr) <> 6 then
    Exit;

  Y := StrToIntDef(Copy(DateStr, 1, 2), -1);
  M := StrToIntDef(Copy(DateStr, 3, 2), -1);
  D := StrToIntDef(Copy(DateStr, 5, 2), -1);

  if (Y = -1) or (M = -1) or (D = -1) then
    Exit;

  // تبدیل سال دو رقمی به چهار رقمی
  if Y < 90 then
    Y := 1400 + Y
  else
    Y := 1300 + Y;

  try
    Valid := IsValidDate(Y, M, D);
  except
    Valid := False;
  end;

  Result := Valid;
end;

// جدا کردن اجزای شماره مالیاتی
procedure ExtractTaxIDParts(const TaxID: string;
  out MemoryID, DatePart, Serial, CheckDigit: string);
begin
  MemoryID := Copy(TaxID, 1, 10);   // 10 رقم اول: شناسه حافظه
  DatePart := Copy(TaxID, 11, 6);   // 6 رقم بعدی: تاریخ
  Serial := Copy(TaxID, 17, 5);     // 5 رقم بعدی: سریال
  CheckDigit := Copy(TaxID, 22, 1); // آخرین رقم: رقم کنترلی
end;

// چک کردن طول و فرمت کلی
function IsValidTaxIDFormat(const TaxID: string): Boolean;
begin
  Result := False;

  if Length(TaxID) <> 22 then
    Exit;

//  if not IsNumeric(TaxID) then    Exit;

  Result := True;
end;

// جداول Verhoeff
const
  Verhoeff_D_Table: array[0..9, 0..9] of Byte = (
    (0,1,2,3,4,5,6,7,8,9),
    (1,2,3,4,0,6,7,8,9,5),
    (2,3,4,0,1,7,8,9,5,6),
    (3,4,0,1,2,8,9,5,6,7),
    (4,0,1,2,3,9,5,6,7,8),
    (5,9,8,7,6,0,4,3,2,1),
    (6,5,9,8,7,1,0,4,3,2),
    (7,6,5,9,8,2,1,0,4,3),
    (8,7,6,5,9,3,2,1,0,4),
    (9,8,7,6,5,4,3,2,1,0));

  Verhoeff_P_Table: array[0..8, 0..9] of Byte = (
    (0,1,2,3,4,5,6,7,8,9),
    (1,5,7,6,2,8,3,0,9,4),
    (2,7,4,9,5,0,8,1,3,6),
    (3,6,9,4,2,1,7,5,0,8),
    (4,2,5,0,3,9,1,8,7,6),
    (5,8,0,1,9,7,6,4,2,3),
    (6,3,1,8,0,4,9,2,5,7),
    (7,0,8,5,1,6,2,9,4,3),
    (8,9,6,2,4,3,5,7,1,0));

  Verhoeff_Inverse_Table: array[0..9] of Byte = (0,4,3,2,1,5,6,7,8,9);

// محاسبه رقم کنترلی با Verhoeff
function ComputeVerhoeff(const Number: string): Integer;
var
  c, i, n: Integer;
begin
  c := 0;
  for i := Length(Number) downto 1 do
  begin
    n := StrToInt(Number[i]);
    c := Verhoeff_D_Table[c][Verhoeff_P_Table[(i - 1) mod 9][n]];
  end;
  Result := c;
end;

// اعتبارسنجی رقم کنترلی با Verhoeff
function ValidateVerhoeff(const NumberWithCheckDigit: string): Boolean;
var
  CheckDigit: Integer;
begin
  if Length(NumberWithCheckDigit) < 1 then
    Exit(False);

  CheckDigit := ComputeVerhoeff(Copy(NumberWithCheckDigit, 1, Length(NumberWithCheckDigit) - 1));
  Result := (CheckDigit = StrToIntDef(NumberWithCheckDigit[Length(NumberWithCheckDigit)], -1));
end;

// تابع کلی اعتبارسنجی شماره مالیاتی
function IsValidFullTaxID(const TaxID: string): Boolean;
var
  MemID, DatePart, Serial, CheckDigit: string;
begin
  Result := False;

  if not IsValidTaxIDFormat(TaxID) then
    Exit;

//  ExtractTaxIDParts(TaxID, MemID, DatePart, Serial, CheckDigit);

//  if not IsValidDatePart(DatePart) then
//    Exit;

//  if not ValidateVerhoeff(TaxID) then
//    Exit;

  Result := True;
end;

end.
