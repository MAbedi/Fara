unit CleanDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, Grids, Vcl.DBGrids, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, DB, ADODB, Math, System.Actions;

type
  TCleanDocF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    qryClean: TADOQuery;
    qryCleanDocument_Serial: TIntegerField;
    qryCleanComments: TStringField;
    srcClean: TDataSource;
    actClean: TAction;
    btnClean: TBitBtn;
    actAllSelected: TAction;
    btnAllSelected: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    qryCleanArchiveId: TIntegerField;
    qryCleanDocNo: TIntegerField;
    procedure actCleanExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAllSelectedExecute(Sender: TObject);
    procedure qryCleanBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    procedure ToggleCheck(B: Boolean = True);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CleanDocF: TCleanDocF;

implementation

uses Dm, GlobalPro, mmessage;
{$R *.dfm}

procedure TCleanDocF.actCleanExecute(Sender: TObject);
var
  S: string;
  Sel: String;
  i: Integer;
begin
  inherited;
  try
    // if DBGrid1.SelectedRows.Count < 1 then
    // begin
    // Warn('íß ãæÑÏ ÑÇ ÇäÊÎÇÈ ßäíÏ');
    // Exit;
    // end;
    //
    // with DBGrid1.SelectedRows do
    // for i := 0 to Count - 1 do
    // begin
    // qryClean.GotoBookmark(pointer(items[i]));
    // Sel := Sel + qryClean.FieldByName('Document_Serial').AsString + ',';
    // end;
    // SetLength(Sel, length(Sel) - 1);

    with qryClean do
    begin
      First;
      while not Eof do
      begin
        if qryCleanArchiveId.AsInteger = 1 then
          Sel := Sel + qryCleanDocument_Serial.AsString + ',';
        Next;
      end;
    end;

    SetLength(Sel, length(Sel) - 1);

    S := format
      ('DELETE FROM assets.DocExports WHERE (Document_Serial in (%s))', [Sel]);
    if get_response('ÇÒ ÍÐÝ ÓäÏ ÇÑÓÇáí ãØãÆä åÓÊíÏ¿') = mrYes then
      try
        Dmf.adcBSell.Execute(S);
        BigMessage('ÍÐÝ ÓäÏ ÇÑÓÇáí  ', 1);
      except
        on e: Exception do
        begin
          add2log(e.Message);
          Warn('ÇÔßÇá ÏÑ ÍÐÝ ÓäÏ ÇÑÓÇáí');
        end;
      end;
    qryClean.Requery();
  except
    Warn('ÇÔßÇá ÏÑ ÍÐÝ ÓäÏ ÇÑÓÇáí');
  end;
end;

procedure TCleanDocF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck(not(qryClean.FieldByName('ArchiveId').AsInteger = 1));
end;

procedure TCleanDocF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qryClean.FieldByName('ArchiveId').AsInteger = 0 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if

end;

procedure TCleanDocF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    ToggleCheck(not(qryClean.FieldByName('ArchiveId').AsInteger = 1));
end;

procedure TCleanDocF.FormCreate(Sender: TObject);
begin
  inherited;
  qryClean.Open;
end;

procedure TCleanDocF.qryCleanBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TCleanDocF.actAllSelectedExecute(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedRows.Clear;
  with qryClean do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      ToggleCheck(True);
      Next;
    end; // while
    EnableControls;
    First;
  end; // with
end;

procedure TCleanDocF.ToggleCheck;
begin
  with qryClean do
  begin
    Edit;
    FieldByName('ArchiveId').AsInteger := IfThen(B = False, 0, 1);
    post;
  end;
end;

end.
