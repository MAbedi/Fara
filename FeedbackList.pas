unit FeedbackList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Net.HttpClient, Ufeedback,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid,
  System.JSON, Data.DB, Datasnap.DBClient, System.Generics.Collections,
  Data.Win.ADODB, FeedList, Vcl.DBCtrls, Vcl.Mask;

type
  TFeedbackListF = class(Ttemplate2MDIF)
    grdFeedBackList: TCedarDbgrid;
    qryFeedBackList: TADOQuery;
    srcFeedBackList: TDataSource;
    qryFeedBackListB5hcpriorityId: TIntegerField;
    qryFeedBackListB5hcstatusId: TIntegerField;
    qryFeedBackListB5idrefId11: TIntegerField;
    qryFeedBackListB5idrefId3: TIntegerField;
    qryFeedBackListB5idrefId8: TIntegerField;
    qryFeedBackListComments: TWideStringField;
    qryFeedBackListId: TIntegerField;
    qryFeedBackListNo: TIntegerField;
    qryFeedBackListOrg: TWideStringField;
    qryFeedBackListStatus: TWideStringField;
    qryFeedBackListSubject: TWideStringField;
    qryFeedBackListT5sctypeId: TIntegerField;
    qryFeedBackListTaskdate: TWideStringField;
    qryFeedBackListTitle: TWideStringField;
    Panel1: TPanel;
    Label1: TLabel;
    edtSubject: TDBEdit;
    Label2: TLabel;
    dbmmoComments: TDBMemo;
    Label3: TLabel;
    edtTitle: TDBEdit;
    BitBtn1: TBitBtn;
    actGet: TAction;
    procedure FormCreate(Sender: TObject);
    procedure grdFeedBackListDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actGetExecute(Sender: TObject);
    procedure qryFeedBackListB5hcpriorityIdGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    ORG, Server_Name: string;
    procedure initForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FeedbackListF: TFeedbackListF;

implementation

uses
  GlobalPro, DM;

{$R *.dfm}

procedure TFeedbackListF.actGetExecute(Sender: TObject);
begin
  inherited;
  initForm;
end;

procedure TFeedbackListF.FormCreate(Sender: TObject);
begin
  inherited;
  ORG := LockcompanyCode.ToString; // 'argham';
  Server_Name := 'http://erp.reenook.com';
  initForm;
end;

procedure TFeedbackListF.grdFeedBackListDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then
  begin
    grdFeedBackList.Canvas.Brush.Color := $00B0CAFF;
    grdFeedBackList.Canvas.Font.Color := clWindowText;
  end
  else
  begin
    if Pos('color:red ', qryFeedBackListStatus.AsString) > 0 then
      grdFeedBackList.Canvas.Font.Color := clMaroon
    else if Pos('color:green ', qryFeedBackListStatus.AsString) > 0 then
      grdFeedBackList.Canvas.Font.Color := clGreen
    else
      grdFeedBackList.Canvas.Font.Color := clWindowText;
  end;
  grdFeedBackList.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFeedbackListF.initForm;
var
  LRequest: THTTPClient;
  LResponse: TStringStream;
  aweb: FeedList.TRootList;
  url: string;
  i: Integer;
begin
  qryFeedBackList.Close;
  qryFeedBackList.Open;
  qryFeedBackList.Delete;

  aweb := TRootList.Create;
  LRequest := THTTPClient.Create;
  LResponse := TStringStream.Create;
  try
    url := Server_Name + '/ords/fara/FormRest/FeedBackForm?ORG=' + ORG;
    LRequest.Get(url, LResponse);
    aweb.AsJson := LResponse.DataString;
    for i := 0 to aweb.Items.Count - 1 do
    begin
      qryFeedBackList.Insert;
      qryFeedBackListB5hcpriorityId.AsInteger := aweb.Items[i].B5hcpriorityId;
      qryFeedBackListB5hcstatusId.AsInteger := aweb.Items[i].B5hcstatusId;
      qryFeedBackListB5idrefId11.AsInteger := aweb.Items[i].B5idrefId11;
      qryFeedBackListB5idrefId3.AsInteger := aweb.Items[i].B5idrefId3;
      qryFeedBackListB5idrefId8.AsInteger := aweb.Items[i].B5idrefId8;
      qryFeedBackListComments.AsWideString := UTF8ToWideString(aweb.Items[i].Comments);
      qryFeedBackListId.AsInteger := aweb.Items[i].Id;
      qryFeedBackListNo.AsInteger := aweb.Items[i].No;
      qryFeedBackListOrg.AsWideString := UTF8ToWideString(aweb.Items[i].ORG);
      qryFeedBackListStatus.AsWideString := UTF8ToWideString(aweb.Items[i].Status);
      qryFeedBackListSubject.AsWideString := UTF8ToWideString(aweb.Items[i].Subject);
      qryFeedBackListT5sctypeId.AsInteger := aweb.Items[i].T5sctypeId;
      qryFeedBackListTaskdate.AsWideString := UTF8ToWideString(aweb.Items[i].Taskdate);
      qryFeedBackListTitle.AsWideString := UTF8ToWideString(aweb.Items[i].Title);
    end;
    { TODO -oOwner -cGeneral : ActionItem }
  finally
    LResponse.Free;
    LRequest.Free;
    aweb.Free;
  end;

end;

procedure TFeedbackListF.qryFeedBackListB5hcpriorityIdGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    246:
      Text := 'اضطراری';
    247:
      Text := 'فوری';
    248:
      Text := 'عادی';
  else
    Text := Sender.AsString;

  end;
end;

end.
