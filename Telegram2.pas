unit Telegram2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.Net.Mime,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, IdSSLOpenSSL, Buttons, IdMultipartFormData, OleCtrls,
  SHDocVw, IniFiles, DB, System.Net.HttpClient, ADODB, ExtCtrls, IdGlobal,
  System.StrUtils, System.RegularExpressions;

type
  tApiName = (AiTelegram, AiBale, AiRubika);

  TTelegram = class
  private
    FlHttp: THTTPClient;
    FToken: string;
    FAppApiName: tApiName;
    function NormalizeChatID(const ChatID: string): string;
  public
    constructor Create;
    destructor Destroy; override;

    property AppApiName: tApiName read FAppApiName write FAppApiName;
    property Token: string read FToken write FToken;
    function SendMessage(ChatID, Text: string): Boolean;
    function SendDocument(ChatID, Text, DocumentFile: string): Boolean;
    function SendPhoto(ChatID, Text, Photo: string): Boolean;
    function SendSystemInfo(MessageTxt: string): string;
  end;

type
  TtelegramThread = class(TThread)
  protected
  public
    MessageTxt: string;
    constructor Create;
    procedure Execute; override;
  end;

var
  uTelegram: TTelegram;

implementation

uses
  GlobalPro, FaraConsts, DM;

const
  BaseUrlT = 'https://api.telegram.org/bot';
  BaseUrlB = 'https://tapi.bale.ai/bot';
  BaseUrlR = 'https://api.rubika.ir/bot';

{ TTelegram }

constructor TTelegram.Create;
begin
  inherited;
  FlHttp := THTTPClient.Create();
  FlHttp.Timeout := 30000;
end;

destructor TTelegram.Destroy;
begin
  FlHttp.Free;
  inherited;
end;

function TTelegram.NormalizeChatID(const ChatID: string): string;
begin
  Result := Trim(ChatID);
  if (FAppApiName = AiRubika) and (Result <> '') and TRegEx.IsMatch(Result, '^\d+$') then
    Result := '@' + Result;
end;

function TTelegram.SendMessage(ChatID, Text: string): Boolean;
var
  Params: TMultipartFormData;
  msg: string;
  FinalChatID: string;
begin
  Result := False;
  msg := '/sendMessage';
  FinalChatID := NormalizeChatID(ChatID);
  Params := TMultipartFormData.Create;
  try
    Params.AddField('chat_id', FinalChatID);
    Params.AddField('disable_web_page_preview', 'true');
    Params.AddField('text', Copy(Text, 1, 4096));

    try
      if FAppApiName = AiRubika then
        FlHttp.Post(BaseUrlR + FToken + msg, Params, nil)
      else if FAppApiName = AiBale then
        FlHttp.Post(BaseUrlB + FToken + msg, Params, nil)
      else
        FlHttp.Post(BaseUrlT + FToken + msg, Params, nil);

      Result := True;
    except
      on E: EIdHTTPProtocolException do
      begin
        if E.ErrorCode = 403 then
          raise Exception.Create('Bot was blocked by the user');
      end;
    end;
  finally
    Params.Free;
  end;
end;

function TTelegram.SendDocument(ChatID, Text, DocumentFile: string): Boolean;
var
  Params: TMultipartFormData;
  msg: string;
  FinalChatID: string;
begin
  Result := False;
  if not FileExists(DocumentFile) then
    Exit;

  msg := '/sendDocument';
  FinalChatID := NormalizeChatID(ChatID);
  Params := TMultipartFormData.Create;
  try
    Params.AddFile('document', DocumentFile);
    Params.AddField('chat_id', FinalChatID);
    if Text <> '' then
      Params.AddField('caption', Copy(Text, 1, 1024));

    try
      if FAppApiName = AiRubika then
        FlHttp.Post(BaseUrlR + FToken + msg, Params, nil)
      else if FAppApiName = AiBale then
        FlHttp.Post(BaseUrlB + FToken + msg, Params, nil)
      else
        FlHttp.Post(BaseUrlT + FToken + msg, Params, nil);

      Result := True;
    except
      on E: Exception do
      begin
        // Optional: Log E.Message
      end;
    end;
  finally
    Params.Free;
  end;
end;

function TTelegram.SendPhoto(ChatID, Text, Photo: string): Boolean;
var
  Params: TMultipartFormData;
  msg: string;
  FinalChatID: string;
begin
  Result := False;
  if not FileExists(Photo) then
    Exit;

  msg := '/sendPhoto';
  FinalChatID := NormalizeChatID(ChatID);
  Params := TMultipartFormData.Create;
  try
    Params.AddFile('photo', Photo);
    Params.AddField('chat_id', FinalChatID);
    if Text <> '' then
      Params.AddField('caption', Copy(Text, 1, 1024));

    try
      if FAppApiName = AiRubika then
        FlHttp.Post(BaseUrlR + FToken + msg, Params, nil)
      else if FAppApiName = AiBale then
        FlHttp.Post(BaseUrlB + FToken + msg, Params, nil)
      else
        FlHttp.Post(BaseUrlT + FToken + msg, Params, nil);

      Result := True;
    except
      on E: Exception do
      begin
        // Optional: Log E.Message
      end;
    end;
  finally
    Params.Free;
  end;
end;

function TTelegram.SendSystemInfo(MessageTxt: string): string;
var
  T1: TtelegramThread;
begin
  T1 := TtelegramThread.Create;
  T1.MessageTxt := MessageTxt;
  T1.Start;
end;

{ TtelegramThread }

constructor TtelegramThread.Create;
begin
  inherited Create(true);
  FreeOnTerminate := true;
end;

procedure TtelegramThread.Execute;
var
  T: TTelegram;
begin
  T := TTelegram.Create;
  try
    try
      if T.FAppApiName = AiBale then
      begin
        T.Token := '1728630880:fCTqGAjtaYimvDatmO2k4G9xRBZWHoUvZ3mZswqK';
        T.SendMessage('1728630880', MessageTxt);
      end
      else if T.FAppApiName = AiRubika then
      begin
        T.Token := 'YOUR_RUBIKA_BOT_TOKEN_HERE'; // <<< اینجا توکن روبیکا را وارد کنید
        T.SendMessage('@989123456789', MessageTxt); // <<< شماره تست — تغییر دهید
      end
      else
      begin
        T.Token := '121472060:AAF3TzWex1A36yXJCBTLTaHtIcdd-qGEsgA';
        T.SendMessage('100912604', MessageTxt);
        T.SendMessage('84956004', MessageTxt);
        T.SendMessage('79385763', MessageTxt);
      end;

      SaveConfig(APPID, 'LastConnectDate', var_glb_CurrentDate);
    except
      SaveConfig(APPID, 'LastConnectDate', var_glb_CurrentDate);
    end;
  finally
    T.Free;
  end;
end;

end.
