(* **************************************************
  *                   SMS                           *
  *    This is a free SMS  for Delphi               *
  *           Developer:  Mostafa Feizabadi         *
  *        Publish: OCT,2011 --- ABAN 1390          *
  *             now version: 1.0.5                  *
  *             www.Naga.ir                         *
  *             MostafaFeizabadi@gmail.com          *
  ************************************************** *)
unit SMS;

interface

uses
  SysUtils, Classes, CPort, Dialogs, CPortTypes;

(* const
  { String }
  ST_DefaultPort = 'COM1';
  { Integer }
  INT_DefaultBaudRate = 9600; *)

type
  TBaudRate = (br110, br300, br600, br1200, br2400, br4800, br9600, br14400,
    br19200, br38400, br56000, br57600, br115200, br128000, br256000);
  TDataBits = (dbFive, dbSix, dbSeven, dbEight);
  TParity = (prNone, prOdd, prEven, prMark, prSpace);
  TStopBits = (sbOne, sbOnePointFive, sbTwo);
  TCharType = (chDefaultAlphabet, chUnicode);
  TKADRespondEvent = procedure(Sender: TObject; Respond: string) of object;

  { TSMS }
  TSMS = class(TComponent)
  private
    ComPort1: TComPort;
    function MakeNumber(Number: string): String;
    function MakeData(Data: string): string;
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
  protected
    FOnRespond: TKADRespondEvent;
  protected
    function MakePdu(PhoneNumber, SMSCenterNumber, MessageBody: string;
      MultiPart: boolean; var PartsLenght: Integer;
      var VParts: array of string): String;
    function BinToHex(BinStr: string): string;
    function HexToBin(HexStr: string): string;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function ConnectToGSM(): boolean;
    procedure DisconnectFromGSM;
    procedure SendCommand(Command: string);
    function SendSMS(PhoneNumber, SMSCenter, MyMessage: string)
      : Integer; overload;
    function SendSMS(PhoneNumber, MyMessage: string): Integer; overload;
    function KADStrToBaudRate(Str: string): TBaudRate;
    function KADBaudRateToStr(BaudRate: TBaudRate): String;
    function KADStrToStopBits(Str: string): TStopBits;
    function KADStopBitsToStr(StopBits: TStopBits): String;
    function KADStrToDataBits(Str: string): TDataBits;
    function KADDataBitsToStr(DataBits: TDataBits): String;
    function KADStrToParity(Str: string): TParity;
    function KADParityToStr(Parity: TParity): String;
  strict private
    function GetPort: string;
    procedure SetPort(val: string);
    function GetBaudRate: TBaudRate;
    procedure SetBaudRate(val: TBaudRate);
    function GetDataBits: TDataBits;
    procedure SetDataBits(const Value: TDataBits);
    function GetParity: TParity;
    procedure SetParity(const Value: TParity);
    function GetStopBits: TStopBits;
    procedure SetStopBits(const Value: TStopBits);
    function GetCharacterMode: TCharType;
    procedure SetCharacterMode(const Value: TCharType);
    function GetConnected: boolean;
    procedure SetConnected(val: boolean);
    function GetSendDelay: Integer;
    procedure SetSendDelay(val: Integer);
    function GetFlashMode: boolean;
    procedure SetFlashMode(val: boolean);
    function GetAbout: string;
    procedure SetAbout(val: string);
  published
    property Port: string read GetPort write SetPort;
    property BaudRate: TBaudRate read GetBaudRate write SetBaudRate;
    property DataBits: TDataBits read GetDataBits write SetDataBits;
    property Parity: TParity read GetParity write SetParity;
    property StopBits: TStopBits read GetStopBits write SetStopBits;
    property CharacterMode: TCharType read GetCharacterMode
      write SetCharacterMode;
    property Connected: boolean read GetConnected write SetConnected
      Default False;
    property SendDelay: Integer read GetSendDelay write SetSendDelay;
    property FlashMode: boolean read GetFlashMode write SetFlashMode;
    property About: string read GetAbout write SetAbout;

  strict private
  var
    FBaudRate: TBaudRate;
    FPort: string;
    FDataBits: TDataBits;
    FParity: TParity;
    FStopBits: TStopBits;
    FCharacterMode: TCharType;
    FConnected: boolean;
    FSendDelay: Integer;
    FFlashMode: boolean;
    FAbout: string;
  published
    { Events }
    property OnRespond: TKADRespondEvent read FOnRespond write FOnRespond;
  protected
    procedure DoRespond(Respond: string); dynamic;
  end;

const
  SBaudRate: array [TBaudRate] of string = ('110', '300', '600', '1200', '2400',
    '4800', '9600', '14400', '19200', '38400', '56000', '57600', '115200',
    '128000', '256000');
  SDataBits: array [TDataBits] of string = ('5', '6', '7', '8');
  SParity: array [TParity] of string = ('None', 'Odd', 'Even', 'Mark', 'Space');
  SStopBits: array [TStopBits] of string = ('1', '1.5', '2');
  // -----defaults
  ST_DefaultPort = 'COM1';
  DefaultBaudRate = br9600;
  DefaultDataBits = dbEight;
  DefaultParity = prNone;
  DefaultStopBits = sbOne;
  DefaultCharacterMode = chDefaultAlphabet;
  DefaultSendDelay = 10000;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Cedar', [TSMS]);
end;

constructor TSMS.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // Create port
  ComPort1 := TComPort.Create(ComPort1);
  ComPort1.OnRxChar := ComPort1RxChar;
  ComPort1.FlowControl.ControlDTR := dtrEnable;

  // Set defaults
  FPort := ST_DefaultPort;
  FBaudRate := DefaultBaudRate;
  FDataBits := DefaultDataBits;
  FParity := DefaultParity;
  FStopBits := DefaultStopBits;
  FCharacterMode := DefaultCharacterMode;
  FSendDelay := DefaultSendDelay;
  About := 'Developer:  Mostafa Feizabadi';
end;

destructor TSMS.Destroy;
begin
  inherited Destroy;
  DisconnectFromGSM();
  ComPort1.Free;
end;

function TSMS.MakeNumber(Number: string): String;
var
  NewNumber: string;
  I: Integer;
begin
  NewNumber := '';
  I := 1;
  while I <= Length(Number) do
  begin
    NewNumber := NewNumber + copy(Number, I + 1, 1);
    NewNumber := NewNumber + copy(Number, I, 1);
    inc(I, 2);
  end; // while
  if Length(NewNumber) mod 2 <> 0 then // if 1
  begin
    Insert('F', NewNumber, Length(NewNumber));
  end; // if 1
  Result := NewNumber;
end;

function TSMS.MakeData(Data: string): string;
const
  CMaxLen = 153;
var
  DataLenHex: string;
  HexData, BinData, NewData, RevHexData: string;
  I, J, K, DataLen, NeedZeroLen: Integer;
  PartLen, PartsCount: Integer;
  TempData: string;
  StartPoint, EndPoint, TempDataLen: Integer;
begin
  if FCharacterMode = chDefaultAlphabet then // if 1 DefultAlphabet
  begin
    DataLen := Length(Data);
    if DataLen > CMaxLen + 1 then // if 3
    begin
      // ----------it is  multi part--------//
      HexData := '';
      // how many part dose data have?
      if DataLen mod CMaxLen = 0 then // if 1
      begin
        PartsCount := DataLen div CMaxLen;
      end
      else
      begin
        PartsCount := (DataLen div CMaxLen) + 1;
      end; // if 1
      StartPoint := 1;
      EndPoint := CMaxLen;
      // Data:=ReverseString(Data);
      for K := 1 to PartsCount do
      begin
        NewData := '';
        TempData := copy(Data, StartPoint, CMaxLen);
        inc(StartPoint, CMaxLen);
        TempDataLen := Length(TempData);
        // convert data to binary mode
        for I := TempDataLen downto 1 do
        begin
          BinData := HexToBin(IntToHex(ord(TempData[I]), 2));
          // convert from 8 bit to 7 bit
          // if Length(BinData)>7 then delete(BinData,1,1);
          delete(BinData, 1, 1);
          // an exception
          if TempData[I] = '@' then
            BinData := '0000000';

          NewData := NewData + BinData;
        end; // for

        // add zero to packet because it must can divided by 8
        NeedZeroLen := Length(NewData) mod 8;
        NeedZeroLen := Abs(NeedZeroLen - 8);
        Dec(NeedZeroLen);
        for I := 1 to NeedZeroLen do
        begin
          NewData := '0' + NewData;
        end; // for
        NewData := NewData + '0';

        // convert binary to hex
        HexData := '';
        J := 1;
        for I := 1 to TempDataLen do
        begin
          BinData := copy(NewData, J, 8);
          HexData := HexData + BinToHex(BinData);
          inc(J, 8);
        end; // for
        // reverse hexdata
        RevHexData := '';
        I := 1;
        while I < Length(HexData) do
        begin
          RevHexData := copy(HexData, I, 2) + RevHexData;
          inc(I, 2);
        end; // while

        Result := Result + RevHexData;
      end; // for
    end
    else
    begin
      // --------it is single part----------//
      HexData := '';
      // convert data to binary mode
      for I := DataLen downto 1 do
      begin
        BinData := HexToBin(IntToHex(ord(Data[I]), 2));
        // convert from 8 bit to 7 bit
        // if Length(BinData)>7 then delete(BinData,1,1);
        delete(BinData, 1, 1);
        // an exception
        if Data[I] = '@' then
          BinData := '0000000';

        NewData := NewData + BinData;
      end; // for
      // add zero to packet because it must can divided by 8
      NeedZeroLen := Length(NewData) mod 8;
      NeedZeroLen := Abs(NeedZeroLen - 8);
      for I := 1 to NeedZeroLen do
      begin
        NewData := '0' + NewData;
      end; // for

      // convert binary to hex
      J := 1;
      for I := 1 to DataLen do
      begin
        BinData := copy(NewData, J, 8);
        HexData := HexData + BinToHex(BinData);
        inc(J, 8);
      end; // for

      // reverse hexdata
      RevHexData := '';
      I := 1;
      while I < Length(HexData) do
      begin
        RevHexData := copy(HexData, I, 2) + RevHexData;
        inc(I, 2);
      end; // while
      Result := RevHexData;
    end; // if 3
  end; // if 1

  if FCharacterMode = chUnicode then // if 2 UTF-8
  begin
    HexData := '';
    DataLen := Length(Data);
    DataLenHex := IntToHex(DataLen, 2);
    for I := 1 to DataLen do
    begin
      HexData := HexData + IntToHex(ord(Data[I]), 4);
    end; // for
    // Result:=DataLenHex + HexData;
    Result := HexData;
  end; // if 2
end;

function TSMS.MakePdu(PhoneNumber, SMSCenterNumber, MessageBody: string;
  MultiPart: boolean; var PartsLenght: Integer;
  var VParts: array of string): String;
const
  CUnicodePartSize = 132; // 66*2
  CDefaultPartSize = 134;
var
  FirstCode, SMSC_Len, SMSC_type, SMSC_Number, StatusReport, MessageRef,
    DestNumberLen, DestNumberType, DestNumber, Protocol_id, CharacterType,
    Validity, DataSize, Data: string;

  RandomNumber: string;
  MessageSize: Integer;
  I: Integer;
  PartSizeHex: string;
  StartOfPart, EndOfPart, PartSize, PartDataSize: Integer;
  PartLen, EvryCharacterLen: Integer;
  Header: string;
begin
  // first code
  FirstCode := '00';

  // status report .do you need delivery from sms center?
  StatusReport := '11'; // 11 or 31

  // message refrence. dose your message have a refrence?
  MessageRef := '00'; // 0=have no refrence

  // destenation number type
  if copy(PhoneNumber, 1, 1) = '+' then // if 2
  begin
    DestNumberType := '91'; // intenational number
    delete(PhoneNumber, 1, 1);
  end
  else
  begin
    DestNumberType := '81'; // local number
  end; // if 2

  // destenation number lenght in hex
  DestNumberLen := IntToHex(Length(PhoneNumber), 1);
  if Length(DestNumberLen) mod 2 <> 0 then // if 1
  begin
    DestNumberLen := '0' + DestNumberLen;
  end; // if 1

  // make destenation number
  DestNumber := MakeNumber(PhoneNumber);

  // Protocol id
  Protocol_id := '00';

  // character type
  if FCharacterMode = chDefaultAlphabet then // if 3
  begin
    CharacterType := '00'; // DefaultAlphabet = 160 byte
  end
  else
  begin
    CharacterType := '08'; // UCS2 = 70 byte ----unicode
  end; // if 3

  // set for flash sms
  if FlashMode then // if flash
  begin
    if FCharacterMode = chDefaultAlphabet then // if 3
    begin
      CharacterType := '10'; // DefaultAlphabet = 160 byte
    end
    else
    begin
      CharacterType := '18'; // UCS2 = 70 byte ----unicode
    end; // if 3
  end; // if flash

  // validity of sms
  Validity := 'FF'; // Maximum

  // Data size
  if FCharacterMode = chDefaultAlphabet then // if 4
  begin
    DataSize := IntToHex(Length(MessageBody), 2);
  end
  else
  begin
    DataSize := IntToHex(Length(MessageBody) * 2, 2); // unicode
  end; // if 4

  // make data
  Data := MakeData(MessageBody);

  Result := FirstCode + StatusReport + MessageRef + DestNumberLen +
    DestNumberType + DestNumber + Protocol_id + CharacterType + Validity +
    DataSize + Data;
  // ---------------if my message is multi part----------//
  if MultiPart then // if multi part
  begin
    // part lenght
    if CharacterMode = chDefaultAlphabet then // if 4
    begin
      // PartLen:=134;//140-6=134
      PartLen := 154; // 160-6=154
      EvryCharacterLen := 2;
    end
    else
    begin
      PartLen := 66; // 140-7=133/2=66
      EvryCharacterLen := 4;
    end; // if 4

    // status report
    if CharacterMode = chDefaultAlphabet then // if 9
    begin
      if StatusReport = '11' then // if 3
      begin
        StatusReport := '51';
      end
      else
      begin
        StatusReport := '71';
      end; // if 3
    end
    else
    begin
      if StatusReport = '11' then // if 3
      begin
        StatusReport := '51';
      end
      else
      begin
        StatusReport := '71';
      end; // if 3
    end; // if 9

    // Header
    if CharacterMode = chDefaultAlphabet then // if 9
    begin
      Header := '050003';
    end
    else
    begin
      Header := '060804';
    end; // if 9

    // Random number
    Randomize();
    if CharacterMode = chDefaultAlphabet then // if 9
    begin
      RandomNumber := IntToHex(Random(256), 2);
    end
    else
    begin
      RandomNumber := IntToHex(Random(65536), 4);
    end; // if 9

    // part count. how many part dose my message have?
    MessageSize := Length(MessageBody);
    if MessageSize mod PartLen = 0 then // if 1
    begin
      PartsLenght := MessageSize div PartLen;
    end
    else
    begin
      PartsLenght := (MessageSize div PartLen) + 1;
    end; // if 1

    StartOfPart := 1;
    if CharacterMode = chDefaultAlphabet then // if 6
    begin
      EndOfPart := CDefaultPartSize * EvryCharacterLen;
    end
    else
    begin
      EndOfPart := PartLen * EvryCharacterLen;
    end; // if 6

    for I := 1 to PartsLenght do
    begin
      // Size of this part
      if I <> PartsLenght then // if 2
      begin
        if CharacterMode = chDefaultAlphabet then // if 7
        begin
          PartDataSize := CDefaultPartSize;
          PartSize := PartDataSize + 6;
          PartSize := (PartSize * 8) div 7;
          PartSizeHex := IntToHex(PartSize, 2);
        end
        else
        begin
          // PartDataSize:=(((EndOfPart - StartOfPart) div 2)  + 1);
          PartDataSize := CUnicodePartSize;
          PartSize := Round(PartDataSize + 7);
          PartSizeHex := IntToHex(PartSize, 2);
        end; // if 7
        // 7 is overlab
      end
      else
      begin
        // is last part
        if CharacterMode = chDefaultAlphabet then // if 5
        begin
          PartDataSize := (((EndOfPart - StartOfPart) div 2) + 1);
          PartSize := PartDataSize + 6;
          PartSize := (PartSize * 8) div 7;
          PartSizeHex := IntToHex(PartSize, 2);
        end
        else
        begin
          PartDataSize := (((EndOfPart - StartOfPart) div 2) + 1);
          PartSize := PartDataSize + 7;
          PartSizeHex := IntToHex(PartSize, 2);
        end; // if 5
        // 7 is overlab
      end; // if 2

      VParts[I] := FirstCode + StatusReport + MessageRef + DestNumberLen +
        DestNumberType + DestNumber + Protocol_id + CharacterType + Validity +
        PartSizeHex + Header + RandomNumber + IntToHex(PartsLenght, 2) +
        IntToHex(I, 2) + copy(Data, StartOfPart, PartDataSize * 2);

      StartOfPart := EndOfPart + 1;
      // StartOfPart := EndOfPart;
      if I + 1 <> PartsLenght then // if 2
      begin
        if CharacterMode = chDefaultAlphabet then // if 8
        begin
          // EndOfPart := StartOfPart + PartLen * EvryCharacterLen;
          EndOfPart := StartOfPart + CDefaultPartSize * EvryCharacterLen;
        end
        else
        begin
          EndOfPart := StartOfPart + PartLen * EvryCharacterLen;
          Dec(EndOfPart);
        end; // if 8
      end
      else
      begin
        EndOfPart := Length(Data); // if is last part
      end; // if 2
    end; // for

    Result := '';
  end; // if multi part
end;

function TSMS.ConnectToGSM(): boolean;
begin
  // set port settings
  ComPort1.Port := FPort;
  ComPort1.BaudRate := StrToBaudRate(SBaudRate[FBaudRate]);
  ComPort1.DataBits := StrToDataBits(SDataBits[FDataBits]);
  ComPort1.Parity.Bits := StrToParity(SParity[FParity]);
  ComPort1.StopBits := StrToStopBits(SStopBits[FStopBits]);

  try
    ComPort1.Open;
    Result := true;
    FConnected := true;
  except
    on e: Exception do
    begin
      Result := False;
      FConnected := False;
      ShowMessage(e.Message);
    end;
  end; // try
end;

procedure TSMS.DisconnectFromGSM;
begin
  ComPort1.Close;
  FConnected := False;
end;

procedure TSMS.SendCommand(Command: string);
begin
  // Command:=Command+#13#10;
  ComPort1.WriteStr(Command);
end;

function TSMS.SendSMS(PhoneNumber, MyMessage: string): Integer;
begin
  SendSMS(PhoneNumber, '+9891100500', MyMessage)
end;

function TSMS.SendSMS(PhoneNumber, SMSCenter, MyMessage: string): Integer;
var
  PartCount, I: Integer;
  MultiPart: boolean;
  StCommand: string;
  VParts: array [1 .. 20] of string;
  PduData: string;
begin
  PartCount := 1;
  MultiPart := true;
  if FCharacterMode = chDefaultAlphabet then // if 1
  begin
    if (Length(MyMessage) / 154) > 1 then // if 4
    begin
      MultiPart := true;
    end
    else
    begin
      MultiPart := False;
    end; // if 4
  end
  else
  begin
    if (Length(MyMessage) / 66) > 1 then // if 3
    begin
      MultiPart := true;
    end
    else
    begin
      MultiPart := False;
    end; // if 3
  end; // if 1
  PduData := MakePdu(PhoneNumber, SMSCenter, MyMessage, MultiPart,
    PartCount, VParts);
  // ---------------------------------
  if MultiPart then // if 2
  begin
    try
      for I := 2 to PartCount + 1 do // because array start from 2
      begin
        StCommand := '';
        StCommand := StCommand + 'at+cmgs=';
        StCommand := StCommand + IntToStr((Length(VParts[I]) - 2) div 2);
        StCommand := StCommand + #13;
        ComPort1.WriteStr(StCommand);

        Sleep(FSendDelay div 10);
        StCommand := '';
        StCommand := StCommand + VParts[I];
        StCommand := StCommand + #26;
        ComPort1.WriteStr(StCommand);

        Sleep(FSendDelay);
      end; // for
      Result := 0;
    except
      on e: Exception do
      begin
        Result := 1;
        ShowMessage(e.Message);
      end;
    end; // try
  end
  else
  begin
    try
      // it is one part message
      StCommand := '';
      StCommand := StCommand + 'at+cmgs=';
      StCommand := StCommand + IntToStr((Length(PduData) - 2) div 2);
      StCommand := StCommand + #13;
      ComPort1.WriteStr(StCommand);

      Sleep(500);
      StCommand := '';
      StCommand := StCommand + PduData;
      StCommand := StCommand + #26;
      ComPort1.WriteStr(StCommand);

      Result := 0;
    except
      on e: Exception do
      begin
        Result := 1;
        ShowMessage(e.Message);
      end;
    end; // try
  end; // if 2
end;

function TSMS.GetPort: string;
begin
  Result := FPort;
end;

procedure TSMS.SetPort(val: string);
begin
  FPort := val;
end;

function TSMS.GetBaudRate: TBaudRate;
begin
  Result := FBaudRate;
end;

procedure TSMS.SetBaudRate(val: TBaudRate);
begin
  FBaudRate := val;
end;

function TSMS.GetDataBits: TDataBits;
begin
  Result := FDataBits;
end;

procedure TSMS.SetDataBits(const Value: TDataBits);
begin
  FDataBits := Value;
end;

function TSMS.GetParity: TParity;
begin
  Result := FParity;
end;

procedure TSMS.SetParity(const Value: TParity);
begin
  FParity := Value;
end;

function TSMS.GetStopBits: TStopBits;
begin
  Result := FStopBits;
end;

procedure TSMS.SetStopBits(const Value: TStopBits);
begin
  FStopBits := Value;
end;

function TSMS.GetCharacterMode: TCharType;
begin
  Result := FCharacterMode;
end;

procedure TSMS.SetCharacterMode(const Value: TCharType);
begin
  FCharacterMode := Value;
end;

function TSMS.GetConnected: boolean;
begin
  Result := FConnected;
end;

procedure TSMS.SetConnected(val: boolean);
begin
  FConnected := val;
  { if Val <> FConnected then
    if Val then
    ConnectToGSM()
    else
    DisconnectFromGSM(); }
end;

function TSMS.GetSendDelay: Integer;
begin
  Result := FSendDelay;
end;

procedure TSMS.SetSendDelay(val: Integer);
begin
  FSendDelay := val;
end;

procedure TSMS.ComPort1RxChar(Sender: TObject; Count: Integer);
var
  St: AnsiString;
begin
  ComPort1.ReadStr(St, Count);
  DoRespond(St);
end;

procedure TSMS.DoRespond(Respond: string);
begin
  if Assigned(FOnRespond) then
    FOnRespond(Self, Respond);
end;

// string to baud rate
function TSMS.KADStrToBaudRate(Str: String): TBaudRate;
var
  I: TBaudRate;
begin
  I := Low(TBaudRate);
  while (I <= High(TBaudRate)) do
  begin
    if UpperCase(Str) = UpperCase(KADBaudRateToStr(TBaudRate(I))) then
      Break;
    I := Succ(I);
  end;
  if I > High(TBaudRate) then
    Result := br9600
  else
    Result := I;
end;

// baud rate to string
function TSMS.KADBaudRateToStr(BaudRate: TBaudRate): String;
begin
  Result := SBaudRate[BaudRate];
end;

function TSMS.BinToHex(BinStr: string): string;
const
  BinArray: array [0 .. 15, 0 .. 1] of string = (('0000', '0'), ('0001', '1'),
    ('0010', '2'), ('0011', '3'), ('0100', '4'), ('0101', '5'), ('0110', '6'),
    ('0111', '7'), ('1000', '8'), ('1001', '9'), ('1010', 'A'), ('1011', 'B'),
    ('1100', 'C'), ('1101', 'D'), ('1110', 'E'), ('1111', 'F'));
var
  Error: boolean;
  J: Integer;
  BinPart: string;
begin
  Result := '';

  Error := False;
  for J := 1 to Length(BinStr) do
    if not(BinStr[J] in ['0', '1']) then
    begin
      Error := true;
      ShowMessage('This is not binary number');
      Break;
    end;

  if not Error then
  begin
    case Length(BinStr) mod 4 of
      1:
        BinStr := '000' + BinStr;
      2:
        BinStr := '00' + BinStr;
      3:
        BinStr := '0' + BinStr;
    end;

    while Length(BinStr) > 0 do
    begin
      BinPart := copy(BinStr, Length(BinStr) - 3, 4);
      delete(BinStr, Length(BinStr) - 3, 4);
      for J := 1 to 16 do
        if BinPart = BinArray[J - 1, 0] then
          Result := BinArray[J - 1, 1] + Result;
    end;
  end;
end;

function TSMS.HexToBin(HexStr: string): string;
const
  BinArray: array [0 .. 15, 0 .. 1] of string = (('0000', '0'), ('0001', '1'),
    ('0010', '2'), ('0011', '3'), ('0100', '4'), ('0101', '5'), ('0110', '6'),
    ('0111', '7'), ('1000', '8'), ('1001', '9'), ('1010', 'A'), ('1011', 'B'),
    ('1100', 'C'), ('1101', 'D'), ('1110', 'E'), ('1111', 'F'));
  HexAlpha: set of char = ['0' .. '9', 'A' .. 'F'];
var
  I, J: Integer;
begin
  Result := '';
  HexStr := AnsiUpperCase(HexStr);
  for I := 1 to Length(HexStr) do
    if HexStr[I] in HexAlpha then
    begin
      for J := 1 to 16 do
        if HexStr[I] = BinArray[J - 1, 1] then
          Result := Result + BinArray[J - 1, 0];
    end
    else
    begin
      Result := '';
      ShowMessage('This is not hexadecimal number');
      Break;
    end;
  // if Result<>'' then
  // while (Result[1]='0')and(Length(Result)>1) do
  // Delete(result, 1, 1);
end;

function TSMS.KADStrToStopBits(Str: string): TStopBits;
var
  I: TStopBits;
begin
  I := Low(TStopBits);
  while (I <= High(TStopBits)) do
  begin
    if UpperCase(Str) = UpperCase(KADStopBitsToStr(TStopBits(I))) then
      Break;
    I := Succ(I);
  end;
  if I > High(TStopBits) then
    Result := sbOne
  else
    Result := I;
end;

function TSMS.KADStopBitsToStr(StopBits: TStopBits): String;
begin
  Result := SStopBits[StopBits];
end;

function TSMS.KADStrToDataBits(Str: string): TDataBits;
var
  I: TDataBits;
begin
  I := Low(TDataBits);
  while (I <= High(TDataBits)) do
  begin
    if UpperCase(Str) = UpperCase(KADDataBitsToStr(I)) then
      Break;
    I := Succ(I);
  end;
  if I > High(TDataBits) then
    Result := dbEight
  else
    Result := I;
end;

function TSMS.KADDataBitsToStr(DataBits: TDataBits): String;
begin
  Result := SDataBits[DataBits];
end;

function TSMS.KADStrToParity(Str: string): TParity;
var
  I: TParity;
begin
  I := Low(TParity);
  while (I <= High(TParity)) do
  begin
    if UpperCase(Str) = UpperCase(KADParityToStr(I)) then
      Break;
    I := Succ(I);
  end;
  if I > High(TParity) then
    Result := prNone
  else
    Result := I;
end;

function TSMS.KADParityToStr(Parity: TParity): String;
begin
  Result := SParity[Parity];
end;

function TSMS.GetFlashMode: boolean;
begin
  Result := FFlashMode;
end;

procedure TSMS.SetFlashMode(val: boolean);
begin
  FFlashMode := val;
end;

function TSMS.GetAbout: string;
begin
  Result := FAbout;
end;

procedure TSMS.SetAbout(val: string);
begin
  FAbout := val;
end;

end.
