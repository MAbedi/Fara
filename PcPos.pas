unit PcPos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template4, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, UParsian,
  Vcl.Imaging.pngimage;

type
  TPcPosF = class(TTemplate4F)
    BitBtn1: TBitBtn;
    EditErrorCode: TMemo;
    aBigPanel: TPanel;
    horoofPanel: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    actPos: TAction;
    Label2: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure actPosExecute(Sender: TObject);
  private
    Amount_txt: string;
    procedure showBigNum(num: Currency; aBigPanel, horoofPanel: TPanel);
    { Private declarations }
  public
    procedure Enter(Amount: string);
    { Public declarations }
  end;

var
  PcPosF: TPcPosF;

implementation

uses
  DM, GlobalPro;

{$R *.dfm}

procedure TPcPosF.Edit1Change(Sender: TObject);
var
  OriginalValue, SubtractValue, NewValue: Int64;
  FormattedValue: string;
begin
  inherited;
  // حذف کاماها از عدد ورودی
  OriginalValue := StrToInt64Def(StringReplace(Edit1.Text, ',', '',
    [rfReplaceAll]), 0);

  // عددی که می‌خواهید از آن کم کنید (مثلاً 1000)
  SubtractValue := StrToInt64(Amount_txt);

  // انجام عملیات تفریق
  NewValue := SubtractValue - OriginalValue;

  // فرمت کردن عدد به صورت سه رقم سه رقم جدا شده با کاما
  FormattedValue := FormatFloat('#,##0', OriginalValue);

  // نمایش مقدار جدید در Edit
  Label2.Caption := FormattedValue;
  showBigNum((NewValue), aBigPanel, horoofPanel);

end;

procedure TPcPosF.Enter(Amount: string);
begin
  PcPosF := TPcPosF.Create(Application);
  with PcPosF do
    try
      Amount_txt := Amount;
      showBigNum(StrToCurr(Amount), aBigPanel, horoofPanel);
      lblTopic0.Caption:=aBigPanel.Caption;
      lblTopic1.Caption:=horoofPanel.Caption;
      ShowModal;
    finally
      // Free; on reciptsGridF
    end;
end;

procedure TPcPosF.showBigNum(num: Currency; aBigPanel, horoofPanel: TPanel);
var
  ww: Integer;
begin
  aBigPanel.Caption := CurrToStrF(num, ffCurrency, 0);
  horoofPanel.Caption := num2alphabet(trunc(num));
  ww := Length(aBigPanel.Caption) * 25 + Length(horoofPanel.Caption) * 2;
  if ww > Width then
    Width := ww;
end;

procedure TPcPosF.actPosExecute(Sender: TObject);
Var
  Msg, Amount_txt: string;
  MV: TParsianPos;
begin
  inherited;
  try
    Amount_txt := StringReplace(aBigPanel.Caption, ',', '', [rfReplaceAll]);

    Amount_txt := StringReplace(Amount_txt, ' '#$200D'', '', [rfReplaceAll]);

    Msg := 'مشکل در ارتباط';
    MV := TParsianPos.Create;
    // (opt.PosIPAddress, StrToinT(opt.PosPortNumber));
    MV.Config_TCP_IP(opt.PosIPAddress, opt.PosPortNumber);

    if AmountValidity(Amount_txt, Msg) then
    begin
      MV.ParsianBuy(Amount_txt);
      EditErrorCode.Text := MV.resp_txt.Values['RS'];
    end
    else
    Begin
      warn(Msg);
      Exit
    End;

  finally
    MV.Free;
  end;
end;

end.
