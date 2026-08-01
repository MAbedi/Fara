unit AuditTopics_Relation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, DBGrids, System.Actions;

type
  TAuditTopics_RelationF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    qry_TopicCode: TADOQuery;
    prv_TopicCode: TDataSetProvider;
    cli_TopicCode: TClientDataSet;
    cli_TopicCode_Checked: TBooleanField;
    src_TopicCode: TDataSource;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qry_Save: TADOQuery;
    cli_TopicCodeTopicCode: TLargeintField;
    cli_TopicCodeMoeenName_L1: TStringField;
    cli_TopicCodeAuditID: TIntegerField;
    qry_SaveTopicCode: TLargeintField;
    qry_SaveMoeenName: TStringField;
    qry_SaveAuditID: TIntegerField;
    qry_SaveMoeenName_L2: TStringField;
    cli_TopicCodeMoeenName_L2: TStringField;
    qry_TopicCodeTopicCode: TLargeintField;
    qry_TopicCodeMoeenName_L1: TStringField;
    qry_TopicCodeMoeenName_L2: TStringField;
    qry_TopicCodeAuditID: TIntegerField;
    ActionList2: TActionList;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    actSlelectInverse: TAction;
    actSlelectAll: TAction;
    actSort: TAction;
    actSearch: TAction;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actSlelectAllExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
  private
    Acc_Relation_Type:Integer;
    procedure ToggleCheck;
    procedure SaveSelect(AuditID: Integer);
    procedure ReadSelect(AuditID: Integer);
    procedure AutoTcik;
    { Private declarations }
  public

    procedure ShowChooseTopicCode(AuditID,AccRelationType: Integer);
   { Public declarations }
  end;

var
  AuditTopics_RelationF: TAuditTopics_RelationF;

implementation

uses Dm, GlobalPro, StrUtils, sort, search1;

{$R *.dfm}

procedure TAuditTopics_RelationF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli_TopicCode_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;

procedure TAuditTopics_RelationF.AutoTcik;
var
  s:string;
begin
  with cli_TopicCode do begin
    s:=FieldByName('TopicCode').AsString;
    First;
    DisableControls;
    while not Eof do begin
      if s=LeftStr(FieldByName('TopicCode').AsString,Length(s)) then  begin
         Edit;
         FieldByName('_Checked').AsBoolean:=True;
         Post;
      end;//if
      Next;
    end;//while
    EnableControls;
  end;//with
end;

procedure TAuditTopics_RelationF.ToggleCheck;
begin
  with cli_TopicCode do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
    if not FieldByName('_Checked').AsBoolean then Exit;
    if Acc_Relation_Type=1 then AutoTcik;
  end;//with
end;

procedure TAuditTopics_RelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TAuditTopics_RelationF.ShowChooseTopicCode(AuditID,AccRelationType:Integer);
begin
  AuditTopics_RelationF:=TAuditTopics_RelationF.Create(Application);
  with AuditTopics_RelationF do begin
    try
      Acc_Relation_Type:=AccRelationType;
      if AccRelationType=1 then
        qry_TopicCode.SQL.Text:='SELECT TopicCode,MoeenName_L1,MoeenName_L2,AuditID FROM acc.Categories Order By Ltrim(Str(TopicCode))';
      ReadSelect(AuditID);
      if mrok=ShowModal then SaveSelect(AuditID);
    finally
      Free;
    end;//try
  end;//with
end;

procedure TAuditTopics_RelationF.ReadSelect(AuditID:Integer);
begin
  cli_TopicCode.Active:=False;
  cli_TopicCode.Active:=True ;
  with cli_TopicCode do begin
    try
      DisableControls;
      First;
      while not Eof do begin
          if FieldByName('AuditID').AsInteger=AuditID then begin
            Edit;
            FieldByName('_Checked').AsBoolean:=True;
            Post;
          end;//if
        next;
      end;//while
    finally
      EnableControls;
    end;//try
  end;//with
end;


procedure TAuditTopics_RelationF.SaveSelect(AuditID: Integer);
var
  AID:Integer;
begin

  with cli_TopicCode do begin
    try
      DisableControls;
      First;
      qry_Save.Active:=True;
      qry_Save.DisableControls;
      while not Eof do begin
        qry_Save.Locate('TopicCode',FieldByName('TopicCode').AsVariant,[]);
        if cli_TopicCode_Checked.AsBoolean then AID:=AuditID else
           if FieldByName('AuditID').AsInteger=AuditID then AID:=0
              else AID:=FieldByName('AuditID').AsInteger;
        qry_Save.edit;
        qry_Save.FieldByName('AuditID').AsInteger:=AID;
        qry_Save.post;
        Next;
      end;//while
    finally
      EnableControls;
      qry_Save.EnableControls;
    end;//try
  end;//with
end;

procedure TAuditTopics_RelationF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_Save.Active:=True;
end;

procedure TAuditTopics_RelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if

end;

procedure TAuditTopics_RelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
end;

procedure TAuditTopics_RelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TAuditTopics_RelationF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cli_TopicCode do begin
    DisableControls;
    First;
    while not eof do begin
      Edit;
      FieldByName('_checked').AsBoolean:=not FieldByName('_checked').AsBoolean;
      Post;
      Next;
    end;//while
    First;
    EnableControls;
  end;//with

end;

procedure TAuditTopics_RelationF.actSlelectAllExecute(Sender: TObject);
begin
  inherited;
  with cli_TopicCode do begin
    DisableControls;
    First;
    while not eof do begin
      Edit;
      FieldByName('_checked').AsBoolean:=True;
      Post;
      Next;
    end;//while
    First;
    EnableControls;
  end;//with

end;

procedure TAuditTopics_RelationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cli_TopicCode);
end;

procedure TAuditTopics_RelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cli_TopicCode);
end;

end.
