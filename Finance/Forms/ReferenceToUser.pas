unit ReferenceToUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template5, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Buttons, Data.Win.ADODB, Vcl.Mask, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls;

type
  TReferenceToUserF = class(TTemplate5F)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qrySend: TADOQuery;
    srcSend: TDataSource;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Bevel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qrySendReferenceID: TLargeintField;
    qrySendYearID: TIntegerField;
    qrySendSerial: TIntegerField;
    qrySendCompanyCode: TIntegerField;
    qrySendCountPage: TIntegerField;
    qrySendNote_L1: TStringField;
    qrySendNote_L2: TStringField;
    qrySendInsertDateTime: TDateTimeField;
    qrySendAidNumber: TStringField;
    qrySendAidDate: TStringField;
    qrySendInsertUserID: TIntegerField;
    qrySendReceiverUserID: TIntegerField;
    qrySendPermitUserID: TIntegerField;
    qrySendReceiverDateTime: TDateTimeField;
    qrySendComputerName: TStringField;
    qryUsers: TADOQuery;
    srcUsers: TDataSource;
    qrySend_UserName: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qrySendAfterInsert(DataSet: TDataSet);
    procedure qrySendBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Enter;
  end;

var
  ReferenceToUserF: TReferenceToUserF;

implementation

uses
  Dm, DocReference, searchCode_ADO, FaraConsts, GlobalPro;

{$R *.dfm}
{ TReferenceToUser }

procedure TReferenceToUserF.Enter;
begin
  ReferenceToUserF := TReferenceToUserF.Create(DocReferenceF);
  with ReferenceToUserF do
    try
      qrySend.Open;
      qrySend.Insert;
      if ShowModal = mrOk then
        qrySend.Post
      else
        qrySend.Cancel;

    finally
      ReferenceToUserF.Free
    end;
end;

procedure TReferenceToUserF.FormCreate(Sender: TObject);
begin
  inherited;
  with qryUsers do
  begin
    Close;
    Parameters.ParamByName('SysID').Value := APPBank.SysID;
    Open;
  end;
end;

procedure TReferenceToUserF.qrySendAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrySendYearID.AsInteger := APPBank.Year;
  qrySendInsertUserID.AsInteger := user.ID;
  qrySendInsertDateTime.AsDateTime := Now;
  qrySendComputerName.AsString := __ComputerName;
  qrySendSerial.AsInteger := DocReferenceF.qryReferenceSerial.AsInteger;
  qrySendCompanyCode.AsInteger :=
    DocReferenceF.qryReferenceCompanyCode.AsInteger;
end;

procedure TReferenceToUserF.qrySendBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrySendCountPage.AsInteger = 0 then
    raise exception.Create('تعداد برگه وارد نشده است');
  if qrySend_UserName.AsString = '' then
    raise exception.Create('کاربر گیرنده وارد نشده است');
end;

procedure TReferenceToUserF.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  text: string;
  Results: array [0 .. 1] of String;
begin
  inherited;
  text := 'SELECT DISTINCT Operators.UserID, Operators.name ' +
    'FROM Operators INNER JOIN OperatorItems ON Operators.UserID = OperatorItems.UserID '
    + 'WHERE OperatorItems.SystemID = ' + IntToStr(SysID) +
    ' and Operators.UserID <> ' + user.ID.ToString;

  b := searchCode_ADOF.SearchCode2(theFaraSystems, 'جستجو کاربر ', text,
    ['کد', 'نام کاربر'], Results, [60, 200], alLeft);

  if b then
    qrySendReceiverUserID.AsInteger := Results[0].ToInteger();
end;

end.
