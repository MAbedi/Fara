unit CToplic_Relation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TCToplic_RelationF = class(TTemplate4F)
    qry_CToplic: TADOQuery;
    prv_Ctoplic: TDataSetProvider;
    cli_CToplic: TClientDataSet;
    src_CToplic: TDataSource;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    qry_CTopicRange: TADOQuery;
    qry_CTopicRangeTopicCode: TLargeintField;
    qry_CTopicRangeCTopicCode: TIntegerField;
    cli_CToplic_Checked: TBooleanField;
    cli_CToplicCTopicCode: TIntegerField;
    DBGrid1: TDBGrid;
    qry_CToplicCTopicCode: TIntegerField;
    qry_CToplicCTopicName_L1: TStringField;
    qry_CToplicCTopicName_L2: TStringField;
    cli_CToplicCTopicName_L1: TStringField;
    cli_CToplicCTopicName_L2: TStringField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    actAll: TAction;
    actNotAll: TAction;
    actSearch: TAction;
    actSort: TAction;
    intgrfld_CToplic_usedInDoc: TIntegerField;
    intgrfld_CToplic_usedInDoc1: TIntegerField;
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
  CToplic_RelationF: TCToplic_RelationF;

implementation

uses Dm, GlobalPro, search2, sort2;

{$R *.dfm}

procedure TCToplic_RelationF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli_CToplic_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TCToplic_RelationF.ToggleCheck;
begin
  with cli_CToplic do
  begin

    if (FieldByName('_Checked').AsBoolean) and
      (FieldByName('_usedInDoc').AsInteger = 1) then

      warn('Õ–› ﬂœ „Ê—œ ‰Ÿ— „Ã«“ ‰„Ì »«‘œ')
    else
    begin
      Edit;
      FieldByName('_Checked').AsBoolean := not FieldByName('_Checked')
        .AsBoolean;
      Post;
    end;
  end; // with
end;

procedure TCToplic_RelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TCToplic_RelationF.ShowChooseDetail(FilterCode: Integer);
begin
  CToplic_RelationF := TCToplic_RelationF.Create(Application);
  with CToplic_RelationF do
  begin
    try
      with qry_CTopicRange do
      begin
        Active := False;
        Parameters.ParamByName('FilterCode').Value := FilterCode;
        Active := True;
      end; // with
      qry_CToplic.Open;
      ReadSelect;
      if mrok = ShowModal then
        SaveSelect;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TCToplic_RelationF.ReadSelect;
begin
  cli_CToplic.Active := False;
  cli_CToplic.Active := True;
  with qry_CTopicRange do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        with cli_CToplic do
        begin
          if Locate('CTopicCode', qry_CTopicRange.FieldByName('CTopicCode')
            .AsInteger, []) then
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

procedure TCToplic_RelationF.SaveSelect;
begin
  with qry_CTopicRange do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        delete;
      end; // while
      cli_CToplic.DisableControls;
      cli_CToplic.First;
      while not cli_CToplic.Eof do
      begin
        if cli_CToplic_Checked.AsBoolean then
        begin
          Insert;
          FieldByName('TopicCode').AsLargeInt :=
            Parameters.ParamByName('Filtercode').Value;
          FieldByName('CTopicCode').AsInteger :=
            cli_CToplic.FieldByName('CTopicCode').AsInteger;
          Post;
        end; // if
        cli_CToplic.next;
      end; // while
    finally
      UpdateBatch;
      EnableControls;
      cli_CToplic.EnableControls;
    end; // try
  end; // with
end;

procedure TCToplic_RelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if

end;

procedure TCToplic_RelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TCToplic_RelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCToplic_RelationF.actAllExecute(Sender: TObject);
begin
  inherited;
  with cli_CToplic do
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

procedure TCToplic_RelationF.actNotAllExecute(Sender: TObject);
begin
  inherited;
  with cli_CToplic do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if (FieldByName('_Checked').AsBoolean) and
        (FieldByName('_usedInDoc').AsInteger = 1) then
      begin
        next;
        Continue;
      end;
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

procedure TCToplic_RelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_CToplic);
end;

procedure TCToplic_RelationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_CToplic);
end;

procedure TCToplic_RelationF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #32 then
    QuickSearch(Key, cli_CToplic.FieldByName('CTopicCode'));
end;

end.
