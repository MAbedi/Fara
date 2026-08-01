unit FinancialTopics_Relation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TFinancialTopics_RelationF = class(TTemplate4F)
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
    cli_TopicCodeMoeenName: TStringField;
    qry_SaveTopicCode: TLargeintField;
    qry_SaveMoeenName: TStringField;
    qry_SaveFinancialID: TIntegerField;
    cli_TopicCodeFinancialID: TIntegerField;
    cli_TopicCodeMoeenName_L2: TStringField;
    qry_SaveMoeenName_L2: TStringField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actSearch: TAction;
    actSort: TAction;
    qry_TopicCodeTopicCode: TLargeintField;
    qry_TopicCodeMoeenName_L1: TStringField;
    qry_TopicCodeMoeenName_L2: TStringField;
    qry_TopicCodeFinancialID: TIntegerField;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    actSelectAll: TAction;
    actSelectnot: TAction;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSelectnotExecute(Sender: TObject);
  private
    Acc_Relation_Type:Integer;
    procedure ToggleCheck;
    procedure SaveSelect(FinancialID: Integer);
    procedure ReadSelect(FinancialID: Integer);
    procedure AutoTcik;
    { Private declarations }
  public

    procedure ShowChooseTopicCode(FinancialID,AccRelationType: Integer);
   { Public declarations }
  end;

var
  FinancialTopics_RelationF: TFinancialTopics_RelationF;

implementation

uses Dm, GlobalPro, StrUtils,  search2, sort2;

{$R *.dfm}

procedure TFinancialTopics_RelationF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFinancialTopics_RelationF.AutoTcik;
var
  s:string;
  BM:TBookmark;
begin
  with cli_TopicCode do
  try
    DisableControls;
    s:=FieldByName('TopicCode').AsString;
    BM := GetBookmark;
    First;

    while not Eof do
    begin
      if s=LeftStr(FieldByName('TopicCode').AsString,Length(s)) then  begin
         Edit;
         FieldByName('_Checked').AsBoolean:=True;
         Post;
      end;//if
      Next;
    end;//while
  finally
    GotoBookmark(BM);
    EnableControls;
  end;//with
end;


procedure TFinancialTopics_RelationF.ToggleCheck;
begin
  with cli_TopicCode do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
    if not FieldByName('_Checked').AsBoolean then Exit;
    if Acc_Relation_Type=2 then AutoTcik;
  end;//with
end;

procedure TFinancialTopics_RelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TFinancialTopics_RelationF.ShowChooseTopicCode(FinancialID,AccRelationType:Integer);
begin
  FinancialTopics_RelationF:=TFinancialTopics_RelationF.Create(Application);
  with FinancialTopics_RelationF do
    try
      Acc_Relation_Type:=AccRelationType;
      if AccRelationType=2 then
        qry_TopicCode.SQL.Text:='SELECT TopicCode,MoeenName_L1, MoeenName_L2, FinancialID FROM acc.Categories Order By Ltrim(Str(TopicCode))';
      ReadSelect(FinancialID);

      if mrok=ShowModal then SaveSelect(FinancialID);
    finally
      Free;
    end;//try
 
end;

procedure TFinancialTopics_RelationF.ReadSelect(FinancialID:Integer);
begin
  cli_TopicCode.Active:=False;
  cli_TopicCode.Active:=True ;
  with cli_TopicCode do
    try
      DisableControls;
      First;
      while not Eof do begin
          if FieldByName('FinancialID').AsInteger=FinancialID then begin
            Edit;
            FieldByName('_Checked').AsBoolean:=True;
            Post;
          end;//if
        next;
      end;//while
    finally
      EnableControls;
    end;//try

end;


procedure TFinancialTopics_RelationF.SaveSelect(FinancialID: Integer);
var
  FID:Integer;
begin

  with cli_TopicCode do
    try
      DisableControls;
      First;
      qry_Save.Active:=True;
      qry_Save.DisableControls;
//      qry_Save.First;
      while not Eof do begin
        qry_Save.Locate('TopicCode',Fieldbyname('TopicCode').AsLargeInt,[]);
        if cli_TopicCode_Checked.AsBoolean then FID:=FinancialID else
           if FieldByName('FinancialID').AsInteger=FinancialID then FID:=0
              else FID:=FieldByName('FinancialID').AsInteger;
        qry_Save.edit;
        qry_Save.FieldByName('FinancialID').AsInteger:=FID;
        qry_Save.post;
//        end;//if
        Next;
//        qry_Save.Next;
      end;//while
    finally
      EnableControls;
      qry_Save.EnableControls;
    end;//try

end;

procedure TFinancialTopics_RelationF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_Save.Active:=True;
end;

procedure TFinancialTopics_RelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if

end;

procedure TFinancialTopics_RelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
end;

procedure TFinancialTopics_RelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TFinancialTopics_RelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TopicCode);
end;

procedure TFinancialTopics_RelationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TopicCode);
end;

procedure TFinancialTopics_RelationF.actSelectAllExecute(Sender: TObject);
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

procedure TFinancialTopics_RelationF.actSelectnotExecute(Sender: TObject);
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

end.
