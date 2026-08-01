unit AuditTopics2_EditNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBCtrls, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, Mask,db, ADODB,StrUtils, System.Actions;

type
  TAuditTopics2_EditNewF = class(TTemplate4F)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qry_AuditTopics: TADOQuery;
    qry_AuditTopicsAuditCode: TIntegerField;
    qry_AuditTopicsAuditName_L1: TStringField;
    qry_AuditTopicsLevelID: TIntegerField;
    qry_AuditTopicsMakeDate: TDateTimeField;
    src_AuditTopics: TDataSource;
    qry_AuditTopics_CodeLength: TIntegerField;
    qry_AuditTopicsAuditName_L2: TStringField;
    pnlAudit_L1: TPanel;
    LablCaption_L1: TLabel;
    DBMeAuditName_L1: TDBMemo;
    pnlName_L2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    prvlabel: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    pnl_Audit_L2: TPanel;
    LablCaption_L2: TLabel;
    DBMeAuditName_L2: TDBMemo;
    Label3: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure qry_AuditTopicsAfterInsert(DataSet: TDataSet);
    procedure qry_AuditTopicsBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure src_AuditTopicsStateChange(Sender: TObject);
    procedure qry_AuditTopicsAfterPost(DataSet: TDataSet);
    procedure qry_AuditTopicsAfterCancel(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure enter(state:TDataSetState);
    { Public declarations }
  end;

var
  AuditTopics2_EditNewF: TAuditTopics2_EditNewF;

implementation

uses AuditTopics2, Dm, GlobalPro, mmessage;

{$R *.dfm}

{ TAuditTopics2_EditNewF }

procedure TAuditTopics2_EditNewF.enter(state: TDataSetState);
begin
  AuditTopics2_EditNewF:=TAuditTopics2_EditNewF.Create(Application);
  with AuditTopics2_EditNewF do begin
    try
      case state of
        dsInsert: begin Caption:=Caption + '__ Ã‹‹‹œÌœ '  ;qry_AuditTopics.Insert end;
        dsEdit  : begin Caption:=Caption + '__ ÊÌ‹‹—«Ì‘ ' ;qry_AuditTopics.Edit;  end;
      end;//case
      ShowModal;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TAuditTopics2_EditNewF.qry_AuditTopicsAfterInsert(
  DataSet: TDataSet);
var
  s:String;
  id:Cardinal;
begin
  inherited;
  if AuditTopics2F.qry_Detail.RecordCount=0 then begin
    s:=AuditTopics2F.qryAuditTopics.FieldByName('AuditCode').AsString;
    id:=StrToInt(LeftStr(s+'00000000000000',AuditTopics2F.qry_InitCodeLength.AsInteger))+1;
    DataSet.FieldByName('AuditCode').AsInteger:=id
  end else
    DataSet.FieldByName('AuditCode').AsInteger:=GetANewCode('','SELECT max(AuditCode) FROM acc.AuditTopicForUse '
                                                             +' WHERE  PrvAuditCode = '+AuditTopics2F.qryAuditTopicsAuditCode.AsString,'AuditCode',dmf.adcAccounting);
  DataSet.FieldByName('MakeDate').AsDateTime:=Now;
  DataSet.FieldByName('LevelID').AsInteger:=AuditTopics2F.qry_Init['LevelID'];
end;

procedure TAuditTopics2_EditNewF.qry_AuditTopicsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if Length(qry_AuditTopicsAuditCode.AsString)>DataSet.FieldByName('_CodeLength').AsInteger then begin
    Warn('ÿÊ· ﬂœ „⁄ »— ‰Ì” .');
    abort;
  end;//if
  if LeftStr(qry_AuditTopics.FieldByName('AuditCode').AsString ,AuditTopics2F.qry_Init.FieldByName('prvCodeLength').AsInteger )<>AuditTopics2F.qryAuditTopics.FieldByName('AuditCode').AsString  then begin
     Warn('ﬂœ ‰«„⁄ »— „Ì »«‘œ˛');
     Abort;
  end;//if
  if not CheckRequiredFields(qry_AuditTopics) then  Abort;

end;

procedure TAuditTopics2_EditNewF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_AuditTopics.Active:=True;
  lblTopic0.Caption:=Caption;
end;

procedure TAuditTopics2_EditNewF.src_AuditTopicsStateChange(
  Sender: TObject);
begin
  inherited;
  FreeReservedCodes(Dmf.adcAccounting, 'acc.AuditTopicForUse');
end;

procedure TAuditTopics2_EditNewF.qry_AuditTopicsAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  AuditTopics2F.qry_Detail.Requery;
  BigMessage(' À‹‹»  ‘œ ',1);
  Close;
end;

procedure TAuditTopics2_EditNewF.qry_AuditTopicsAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  Close;
end;

procedure TAuditTopics2_EditNewF.FormShow(Sender: TObject);
begin
  inherited;
   DBEdit1.SetFocus;
end;

end.
