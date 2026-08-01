unit DocReference;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.ExtCtrls, MySplitter, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, System.ImageList, Vcl.ImgList, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.Buttons;

type
  TDocReferenceF = class(Ttemplate2MDIF)
    Bevel1: TBevel;
    Bevel2: TBevel;
    CedarDbgrid1: TCedarDbgrid;
    CedarDbgrid2: TCedarDbgrid;
    MySplitter1: TMySplitter;
    Label1: TLabel;
    lblUserID: TLabel;
    lblUserName: TLabel;
    grpKind: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qryReference: TADOQuery;
    qryHistory: TADOQuery;
    srcReference: TDataSource;
    srcHistory: TDataSource;
    actReference: TAction;
    actConfirmation: TAction;
    actFilter: TAction;
    qryReferenceReferenceID: TLargeintField;
    qryReferenceYearID: TIntegerField;
    qryReferenceCompanyCode: TIntegerField;
    qryReferenceSerial: TIntegerField;
    qryReferenceSecondaryDocNo: TIntegerField;
    qryReferenceDocDate: TStringField;
    qryReferenceAmount: TBCDField;
    qryReferenceFirstUser: TStringField;
    qryReferenceCountPage: TIntegerField;
    qryReferenceNote_L1: TStringField;
    qryReferenceNote_L2: TStringField;
    qryReferenceInsertDateTime: TStringField;
    qryReferenceAidNumber: TStringField;
    qryReferenceAidDate: TStringField;
    qryReferenceInsertUserID: TIntegerField;
    qryReferenceReceiverUserID: TIntegerField;
    qryReferencename: TStringField;
    qryReferencePermitUserID: TIntegerField;
    qryReferenceReceiverDateTime: TStringField;
    qryReferenceComputerName: TStringField;
    qryHistoryInsertDateTime: TStringField;
    qryHistoryname: TStringField;
    qryHistoryNote_L2: TStringField;
    qryHistoryNote_L1: TStringField;
    procedure grpKindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actReferenceExecute(Sender: TObject);
    procedure actConfirmationExecute(Sender: TObject);
    procedure qryReferenceAfterOpen(DataSet: TDataSet);
    procedure qryReferenceAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DocReferenceF: TDocReferenceF;

implementation

uses
  Dm, FaraConsts, ReferenceToUser;

{$R *.dfm}

procedure TDocReferenceF.actConfirmationExecute(Sender: TObject);
var
  ReferenceID: Integer;
begin
  inherited;
  ReferenceID := qryReferenceReferenceID.AsInteger;
  with Dmf.qry_Temp do
  begin
    Close;
    SQL.Text := 'select * from Acc.DocReference where ReferenceID=' +
      ReferenceID.ToString;
    Open;
    Edit;
    FieldByName('ReceiverDateTime').AsDateTime := Now;
    FieldByName('PermitUserID').AsInteger := User.id;
    Post;
    Close;
  end;
  qryReference.Requery;
end;

procedure TDocReferenceF.actReferenceExecute(Sender: TObject);
begin
  inherited;
  ReferenceToUserF.Enter;
  qryReference.Requery;
end;

procedure TDocReferenceF.FormCreate(Sender: TObject);
begin
  inherited;
  lblUserID.Caption := User.id.ToString;
  lblUserName.Caption := User.Name;
end;

procedure TDocReferenceF.FormShow(Sender: TObject);
begin
  inherited;
  with qryReference do
  begin
    Close;
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Open;
  end;
end;

procedure TDocReferenceF.grpKindClick(Sender: TObject);
var
  sFilter: string;
begin
  inherited;
  actReference.Enabled := grpKind.ItemIndex = 0;
  actConfirmation.Enabled := grpKind.ItemIndex = 2;
  CedarDbgrid1.FieldColumns['ReceiverDateTime'].Visible :=
    grpKind.ItemIndex = 0;
  CedarDbgrid1.FieldColumns['name'].Visible := grpKind.ItemIndex = 1;
  CedarDbgrid1.FieldColumns['InsertDateTime'].Visible := grpKind.ItemIndex
    in [1, 2];
  qryReference.Filtered := False;
  case grpKind.ItemIndex of
    0:
      sFilter := 'ReceiverUserID=' + User.id.ToString + ' and PermitUserID=' +
        User.id.ToString;
    1:
      sFilter := 'InsertUserID=' + User.id.ToString + ' and PermitUserID=null';
    2:
      sFilter := 'ReceiverUserID=' + User.id.ToString +
        ' and PermitUserID=null';
  end;
  qryReference.Filter := sFilter;
  qryReference.Filtered := True;
end;

procedure TDocReferenceF.qryReferenceAfterOpen(DataSet: TDataSet);
begin
  inherited;
  grpKindClick(grpKind);
end;

procedure TDocReferenceF.qryReferenceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryHistory do
  begin

    Close;
    Parameters.ParamByName('serial').Value := qryReferenceSerial.AsInteger;
    Parameters.ParamByName('serial2').Value := qryReferenceSerial.AsInteger;
    Parameters.ParamByName('YearId').Value := qryReferenceYearID.AsInteger;
    Parameters.ParamByName('YearId2').Value := qryReferenceYearID.AsInteger;
    Parameters.ParamByName('companycode').Value :=
      qryReferenceCompanyCode.AsInteger;
    Parameters.ParamByName('companycode2').Value :=
      qryReferenceCompanyCode.AsInteger;
    Open;
  end;
end;

end.
