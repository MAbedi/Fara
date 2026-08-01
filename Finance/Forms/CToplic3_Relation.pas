unit CToplic3_Relation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TCToplic3_RelationF = class(TTemplate4F)
    qry_CToplic2: TADOQuery;
    prv_Ctoplic2: TDataSetProvider;
    cli_CToplic2: TClientDataSet;
    src_CToplic2: TDataSource;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    qryCTopics2And3: TADOQuery;
    cli_CToplic2_Checked: TBooleanField;
    DBGrid1: TDBGrid;
    cli_CToplic2CTopicCode2: TIntegerField;
    cli_CToplic2CTopicName2: TStringField;
    cli_CToplic2CTopicName2_L2: TStringField;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    actSlelectAll: TAction;
    actSlelectInverse: TAction;
    actSort: TAction;
    actSearch: TAction;
    qry_CToplic2CTopicCode2: TIntegerField;
    qry_CToplic2CTopicName2_L1: TStringField;
    qry_CToplic2CTopicName2_L2: TStringField;
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
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    procedure ToggleCheck;
    procedure SaveSelect;
    procedure ReadSelect;
    { Private declarations }
  public
    procedure ShowChooseDetail(FilterCode: Integer);
   { Public declarations }
  end;

var
  CToplic3_RelationF: TCToplic3_RelationF;

implementation

uses Dm, GlobalPro, search2, sort2;

{$R *.dfm}

procedure TCToplic3_RelationF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli_CToplic2_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;


procedure TCToplic3_RelationF.ToggleCheck;
begin
  with cli_CToplic2 do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
end;

procedure TCToplic3_RelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TCToplic3_RelationF.ShowChooseDetail(FilterCode:Integer);
begin
  CToplic3_RelationF:=TCToplic3_RelationF.Create(Application);
    with CToplic3_RelationF do begin
    try
      with qryCTopics2And3 do begin
        Active:=False;
        Parameters.ParamByName('FilterCode').Value:=FilterCode;
        Active:=True;
      end;//with
      ReadSelect;
      if mrok=ShowModal then SaveSelect;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TCToplic3_RelationF.ReadSelect;
begin
  cli_CToplic2.Close;
  cli_CToplic2.Open;
  with qryCTopics2And3 do
    try
      DisableControls;
      First;
      while not Eof do
      with cli_CToplic2 do
      begin
        if Locate('CTopicCode2',qryCTopics2And3.FieldByName('CTopicCode2').AsInteger,[]) then begin
          Edit;
          FieldByName('_Checked').AsBoolean:=True;
          Post;
        end;//if
        qryCTopics2And3.next;
      end;//with
    finally
      EnableControls;
    end;//try
end;


procedure TCToplic3_RelationF.SaveSelect;
begin
  with qryCTopics2And3 do
  try
    DisableControls;
    First;
    while not eof do begin
        delete;
    end;//while
    cli_CToplic2.DisableControls;
    cli_CToplic2.First;
    while not cli_CToplic2.Eof do
    begin
      if cli_CToplic2_Checked.AsBoolean then
      begin
        Insert;
        FieldByName('CTopicCode3').AsInteger:=Parameters.ParamByName('Filtercode').Value;
        FieldByName('CTopicCode2').AsInteger:=cli_CToplic2.fieldbyname('CTopicCode2').AsInteger;
        post;
      end;//if
      cli_CToplic2.Next;
    end;//while
  finally
    UpdateBatch;
    EnableControls;
    cli_CToplic2.EnableControls;
  end;//try


//  with qryCTopics2And3 do begin
//    try
//      DisableControls;
//      First;
//      while not eof do begin
//        delete;
//      end;//while
//      cli_CToplic2.DisableControls;
//      cli_CToplic2.First;
//      while not cli_CToplic2.Eof do begin
//        if cli_CToplic2_Checked.AsBoolean then begin
//          Insert;
//          FieldByName('cTopicCode2').AsInteger:=Parameters.ParamByName('Filtercode').Value;
//          FieldByName('CTopicCode2').AsInteger:=cli_CToplic2.fieldbyname('CTopicCode2').AsInteger;
//          post;
//        end;//if
//        cli_CToplic2.Next;
//      end;//while
//    finally
//      UpdateBatch;
//      EnableControls;
//      cli_CToplic2.EnableControls;
//    end;//try
//  end;//with


end;

procedure TCToplic3_RelationF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_CToplic2.Active:=True;
end;

procedure TCToplic3_RelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if

end;

procedure TCToplic3_RelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
end;

procedure TCToplic3_RelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCToplic3_RelationF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
   with cli_CToplic2 do begin
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

procedure TCToplic3_RelationF.actSlelectAllExecute(Sender: TObject);
begin
  inherited;
   with cli_CToplic2 do begin
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

procedure TCToplic3_RelationF.actSortExecute(Sender: TObject);
begin
  inherited;
   sort2F.ShowSort(qry_CToplic2);
end;

procedure TCToplic3_RelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_CToplic2);
end;

procedure TCToplic3_RelationF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   QuickSearch(key,cli_CToplic2.FieldByName('CTopicCode2'));
end;

end.
