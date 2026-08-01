unit CTopic2_AllRelation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TCTopic2_AllRelationF = class(TTemplate4F)
    qry_CTopic2: TADOQuery;
    prv_Ctopic2: TDataSetProvider;
    cli_CTopic2: TClientDataSet;
    src_CTopic2: TDataSource;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    qry_CenterTopicAllRange: TADOQuery;
    cli_CTopic2_Checked: TBooleanField;
    DBGrid1: TDBGrid;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    actAll: TAction;
    actNotAll: TAction;
    actSearch: TAction;
    actSort: TAction;
    cli_CTopic2CTopicCode2: TIntegerField;
    cli_CTopic2CTopicName2_L1: TStringField;
    cli_CTopic2CTopicName2_L2: TStringField;
    qry_CenterTopicAllRangeTopicCode: TLargeintField;
    qry_CenterTopicAllRangeCTopicCode2: TIntegerField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actAllExecute(Sender: TObject);
    procedure actNotAllExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
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
  CTopic2_AllRelationF: TCTopic2_AllRelationF;

implementation

uses Dm, GlobalPro, search2, sort2;

{$R *.dfm}

procedure TCTopic2_AllRelationF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli_CTopic2_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TCTopic2_AllRelationF.ToggleCheck;
begin
  with cli_CTopic2 do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TCTopic2_AllRelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TCTopic2_AllRelationF.ShowChooseDetail(FilterCode: Integer);
begin
  CTopic2_AllRelationF := TCTopic2_AllRelationF.Create(Application);
  with CTopic2_AllRelationF do
  begin
    try
      with qry_CenterTopicAllRange do
      begin
        Active := False;
        Parameters.ParamByName('FilterCode').Value := FilterCode;
        Active := True;
      end; // with
      qry_CTopic2.Open;
      ReadSelect;
      if mrok = ShowModal then
        SaveSelect;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TCTopic2_AllRelationF.ReadSelect;
begin
  cli_CTopic2.Active := False;
  cli_CTopic2.Active := True;
  with qry_CenterTopicAllRange do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        with cli_CTopic2 do
        begin
          if Locate('CTopicCode2', qry_CenterTopicAllRange.FieldByName
            ('CTopicCode2').AsInteger, []) then
          begin
            Edit;
            FieldByName('_Checked').AsBoolean := True;
            Post;
          end; // if
        end; // with
        next;
      end; // while
    finally
      EnableControls;
    end; // try
  end; // with
end;

procedure TCTopic2_AllRelationF.SaveSelect;
begin
  with qry_CenterTopicAllRange do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        delete;
      end; // while
      cli_CTopic2.DisableControls;
      cli_CTopic2.First;
      while not cli_CTopic2.Eof do
      begin
        if cli_CTopic2_Checked.AsBoolean then
        begin
          Insert;
          FieldByName('TopicCode').AsLargeInt :=
            Parameters.ParamByName('Filtercode').Value;
          FieldByName('CTopicCode2').AsInteger :=
            cli_CTopic2.FieldByName('CTopicCode2').AsInteger;
          Post;
        end; // if
        cli_CTopic2.next;
      end; // while
    finally
      UpdateBatch;
      EnableControls;
      cli_CTopic2.EnableControls;
    end; // try
  end; // with
end;

procedure TCTopic2_AllRelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if

end;

procedure TCTopic2_AllRelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TCTopic2_AllRelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCTopic2_AllRelationF.actAllExecute(Sender: TObject);
begin
  inherited;
  with cli_CTopic2 do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := True;
      Post;
      next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TCTopic2_AllRelationF.actNotAllExecute(Sender: TObject);
begin
  inherited;
  with cli_CTopic2 do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := not FieldByName('_checked')
        .AsBoolean;
      Post;
      next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TCTopic2_AllRelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_CTopic2);
end;

procedure TCTopic2_AllRelationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_CTopic2);
end;

procedure TCTopic2_AllRelationF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #32 then
    QuickSearch(Key, cli_CTopic2.FieldByName('CTopicCode2'));
end;

end.
