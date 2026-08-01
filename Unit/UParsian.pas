unit UParsian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils, SyncObjs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, IdTCPClient, IdBaseComponent, IdComponent, IdTCPConnection,
  IdGlobal, System.Diagnostics
  // , CodeSiteLogging
    ;

type
  TParsianPos = class
    ParsianMediaTCP: TIdTCPClient;
  Private
    fPortNumber: Integer;
    fIpAddress: String;
  Public
    raw_resp_txt: TStringList;
    resp_txt: TStringList;
    rqStr_txt: TStringList;
    GetResponseFromPos: Boolean;
    PrCode_txt: String;
    Curr_txt: String;
    r1_txt: String;
    r2_txt: String;
    t1_txt: String;
    t2_txt: String;
    sv_txt: String;
    svGrp_txt: String;
    EditCard, EditSerial, EditDate, EditTime, EditError, EditErrorCode,
      EditTerminal, Mablaghbargashazpos, MyPD, MyRS: string;
    constructor Create();
    destructor Destroy; override;
    Procedure Config_TCP_IP(IpAddress: String; PortNumber: Word);
    function ParsReceiveMsg(Value: String): TStringList;
    Procedure ParsianBuy(Amount: string);
    Procedure DetectResult_Transaction(ProcedStr: String; big22: Boolean);
  End;


Function AmountValidity(InputAmount: String;
  Var Result_Message: String): Boolean;
function AddEntry(Tag: string; Value: String): string;
function LeftPad(S: string; Ch: Char; Len: Integer): string;

Var
  ReqStr: String;
  ParsianPos: TParsianPos;

implementation

Procedure TParsianPos.DetectResult_Transaction(ProcedStr: String;
  big22: Boolean);
begin
  if big22 Then
  Begin
    ParsianPos.EditErrorCode := Copy(ProcedStr, 15, 2);
  End
  else if Copy(ProcedStr, 15, 2) = '00' Then
  Begin
    ParsianPos.EditErrorCode := Copy(ProcedStr, 15, 2);

    ParsianPos.Mablaghbargashazpos := Copy(ProcedStr, Pos('AM', ProcedStr) + 5,
      strtoint(Copy(ProcedStr, (Pos('AM', ProcedStr) + 2), 3)));

    ParsianPos.EditCard := Copy(ProcedStr, Pos('PN', ProcedStr) + 5,
      strtoint(Copy(ProcedStr, (Pos('PN', ProcedStr) + 2), 3)));

    ParsianPos.EditDate := LeftStr(Copy(ProcedStr, Pos('TI', ProcedStr) + 5,
      strtoint(Copy(ProcedStr, (Pos('TI', ProcedStr) + 2), 3))), 10);

    ParsianPos.EditTime := RightStr(Copy(ProcedStr, Pos('TI', ProcedStr) + 5,
      strtoint(Copy(ProcedStr, (Pos('TI', ProcedStr) + 2), 3))), 8);

    ParsianPos.EditSerial := Copy(ProcedStr, Pos('SR', ProcedStr) + 5,
      strtoint(Copy(ProcedStr, (Pos('SR', ProcedStr) + 2), 3)));

    ParsianPos.EditTerminal := Copy(ProcedStr, Pos('TM', ProcedStr) + 5,
      strtoint(Copy(ProcedStr, (Pos('TM', ProcedStr) + 2), 3)));
  End
  else
  begin
    ParsianPos.MyRS := Copy(ProcedStr, Pos('PD', ProcedStr) + 5,
      strtoint(Copy(ProcedStr, (Pos('PD', ProcedStr) + 2), 3)));
    ParsianPos.MyPD := Copy(ProcedStr, Pos('PD', ProcedStr) + 5,
      strtoint(Copy(ProcedStr, (Pos('PD', ProcedStr) + 2), 3)));
  end;

  if (ParsianPos.MyRS = '00') then
  Begin
    ParsianPos.EditError := 'تراکنش با موفقیت انجام شد';
  End;

  if (ParsianPos.MyRS = '99') then
  begin
    if ParsianPos.MyPD = '1' then
    begin
      ParsianPos.EditError := 'تراکنش از طرف کاربر کنسل شد';
    end;
  end;

  if (ParsianPos.MyRS = '57') then
  begin
    if ParsianPos.MyPD = '1' then
    begin
      ParsianPos.EditError := 'تراکنش نامجاز';
    end
  end;

  if (ParsianPos.MyRS = '51') then
  begin
    if ParsianPos.MyPD = '1' then
    begin
      ParsianPos.EditError := 'عدم موجودی';
    end
  end;

  if (ParsianPos.MyRS = '55') then
  begin
    if ParsianPos.MyPD = '1' then
    begin
      ParsianPos.EditError := 'رمز اشتباه است';
    end
  end;

  if (ParsianPos.MyRS = '50') then
  begin
    if ParsianPos.MyPD = '1' then
    begin
      ParsianPos.EditError := 'کارتخوان کاغذ ندارد';
    end
  end;
end;

// ******************************************************************************
function TParsianPos.ParsReceiveMsg(Value: String): TStringList;
var
  temp: TStringList;
  bigFr22: Boolean;
begin
  bigFr22 := False;
  temp := TStringList.Create;
  if Length(Value) > 22 then
  begin
    temp.Add('');
    temp.Add('RS=' + Copy(Value, 15, 2));
    temp.Add('TR=' + Copy(Value, Pos('TR', Value) + 5,
      strtoint(Copy(Value, (Pos('TR', Value) + 2), 3))));

    temp.Add('RN=' + Copy(Value, Pos('RN', Value) + 5,
      strtoint(Copy(Value, (Pos('RN', Value) + 2), 3))));

    temp.Add('TM=' + Copy(Value, Pos('TM', Value) + 5,
      strtoint(Copy(Value, (Pos('TM', Value) + 2), 3))));

    temp.Add('AM=' + Copy(Value, Pos('AM', Value) + 5,
      strtoint(Copy(Value, (Pos('AM', Value) + 2), 3))));

    temp.Add('AF=' + Copy(Value, Pos('AF', Value) + 5,
      strtoint(Copy(Value, (Pos('AF', Value) + 2), 3))));

    temp.Add('PN=' + Copy(Value, Pos('PN', Value) + 5,
      strtoint(Copy(Value, (Pos('PN', Value) + 2), 3))));

    temp.Add('TI=' + Copy(Value, Pos('TI', Value) + 5,
      strtoint(Copy(Value, (Pos('TI', Value) + 2), 3))));

    temp.Add('SR=' + Copy(Value, Pos('SR', Value) + 5,
      strtoint(Copy(Value, (Pos('SR', Value) + 2), 3))));

    temp.Add('PD=' + Copy(Value, Pos('PD', Value) + 5,
      strtoint(Copy(Value, (Pos('PD', Value) + 2), 3))));

    ParsianPos.MyRS := Copy(Value, 15, 2);

    ParsianPos.MyPD := Copy(Value, Pos('PD', Value) + 5,
      strtoint(Copy(Value, (Pos('PD', Value) + 2), 3)));
  end
  else
  begin
    if Length(Value) <= 22 then
    begin
      bigFr22 := True;
      temp.Add('');
      temp.Add('RS=' + Copy(Value, 15, 2));
      temp.Add('PD=' + Copy(Value, Pos('PD', Value) + 5,
        strtoint(Copy(Value, (Pos('PD', Value) + 2), 3))));
      ParsianPos.MyRS := Copy(Value, 15, 2);
      ParsianPos.MyPD := Copy(Value, Pos('PD', Value) + 5,
        strtoint(Copy(Value, (Pos('PD', Value) + 2), 3)));
    end;
  end;
  DetectResult_Transaction(Value, bigFr22);
  Result := temp;

end;

Procedure TParsianPos.Config_TCP_IP(IpAddress: String; PortNumber: Word);

Begin
  fPortNumber := PortNumber;
  fIpAddress := IpAddress;
  PrCode_txt := '000000';
  Curr_txt := '364';
  r1_txt := 'Text1';
  r2_txt := 'Text2';
  t1_txt := '';
  t2_txt := '';
  sv_txt := '';
  svGrp_txt := '';

//  ParsianMediaTCP.ReadTimeout := 44500;

  if ParsianMediaTCP.Connected then
    ParsianMediaTCP.Disconnect;
  ParsianMediaTCP.Host := IpAddress;
  ParsianMediaTCP.PORT := PortNumber;

  try
    ParsianMediaTCP.Connect;

  except
    showmessage('مشکل در اتصال به کارتخوان پارسیان');
    EditErrorCode := '1000';
    EditError := 'مشکل در اتصال به کارتخوان پارسیان';

  end;

  raw_resp_txt := TStringList.Create;
  resp_txt := TStringList.Create;
  rqStr_txt := TStringList.Create;

End;

// ******************************************************************************
constructor TParsianPos.Create;
begin
  ParsianMediaTCP := TIdTCPClient.Create(ParsianMediaTCP);

end;

// ******************************************************************************
destructor TParsianPos.Destroy;
begin
  inherited;
  raw_resp_txt.Free;
  resp_txt.Free;
  rqStr_txt.Free;
end;


// ******************************************************************************

procedure TParsianPos.ParsianBuy(Amount: string);
var
  Data: String;
begin
  resp_txt.Text := '';
  ReqStr := '';

  if (ParsianMediaTCP.Connected) then
  begin
    AddEntry('PR', PrCode_txt);
    AddEntry('AM', Trim(Amount));
    AddEntry('CU', Curr_txt);
    AddEntry('R1', r1_txt);
    AddEntry('R2', r2_txt);
    AddEntry('T2', t1_txt);
    AddEntry('T2', t2_txt);
    AddEntry('SV', sv_txt);
    AddEntry('SG', svGrp_txt);
    AddEntry('AD', '');
    AddEntry('PD', '1');

    ReqStr := 'RQ' + (LeftPad(IntToStr(Length(ReqStr)), '0', 3)) + ReqStr;

    rqStr_txt.Text := LeftPad(IntToStr(Length(ReqStr)), '0', 4) + ReqStr;
    Data := LeftPad(IntToStr(Length(ReqStr)), '0', 4) + ReqStr;
    ParsianMediaTCP.Socket.WriteLn(Data);
  end
 // else
//    showmessage('!!پوز بانک پارسیان در این آدرس پیدا نشد')

end;


// ******************************************************************************
function LeftPad(S: string; Ch: Char; Len: Integer): string;
var
  RestLen: Integer;
begin
  Result := S;
  RestLen := Len - Length(S);
  if RestLen < 1 then
    Exit;
  Result := StringOfChar(Ch, RestLen) + S;
end;

// ------------------------------------------------
function AddEntry(Tag: string; Value: String): string;
begin
  ReqStr := ReqStr + Tag + LeftPad(IntToStr(Length(Value)), '0', 3) + Value;
  Result := ReqStr;
end;

// ------------------------------------------------
function IsStrANumber(

  const S: string): Boolean;
var
  i: Int64;
begin
  Result := TryStrToInt64(S, i);
end;

// ------------------------------------------------
Function AmountValidity(InputAmount: String;

  Var Result_Message: String): Boolean;
Begin
  Result_Message := '';
  Result := True;
  If (Length(InputAmount) = 0) Then
    Result := False;
  If (Length(InputAmount) > 12) Then
    Result := False;
  If Not IsStrANumber(InputAmount) Then
    Result := False;
  If InputAmount = '0' Then
    Result := False;
  if Result = False then
    Result_Message := 'مبلغ نامعتبر';

End;

end.
