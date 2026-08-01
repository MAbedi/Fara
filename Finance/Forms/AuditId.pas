unit AuditId;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ImgList,
  DBActns, ActnList, ExtCtrls, Buttons, DB, ADODB;

type
  TAuditIdF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qryAuditTopics: TADOQuery;
    SrcAuditTopics: TDataSource;
    qryAuditTopicsAuditCode: TIntegerField;
    qryAuditTopicsAuditName: TStringField;
    qryAuditTopicsLevelID: TIntegerField;
    qryAuditTopicsMakeDate: TStringField;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    actSendExcel: TAction;
    actPrint: TAction;
    actSort: TAction;
    procedure SrcAuditTopicsStateChange(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryAuditTopicsAfterPost(DataSet: TDataSet);
    procedure qryAuditTopicsBeforeDelete(DataSet: TDataSet);
    procedure qryAuditTopicsAfterDelete(DataSet: TDataSet);
    procedure qryAuditTopicsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuditIdF: TAuditIdF;

implementation

uses Dm, search2, GlobalPro, mmessage;

{$R *.dfm}

procedure TAuditIdF.SrcAuditTopicsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryAuditTopics.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting)
end;

procedure TAuditIdF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAuditTopics);
end;

procedure TAuditIdF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(qryAuditTopics);
end;

procedure TAuditIdF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TAuditIdF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2,1);
  SetColSize(DBGrid1,1);
end;

procedure TAuditIdF.qryAuditTopicsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À‹»  ‘œ.˛',1);
end;

procedure TAuditIdF.qryAuditTopicsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <>mryes then Abort;
end;

procedure TAuditIdF.qryAuditTopicsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.˛',1);
end;

procedure TAuditIdF.qryAuditTopicsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBEdit1.SetFocus;
end;

end.
