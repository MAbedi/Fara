unit RelationGroupAcc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DB, DBClient, Provider, ADODB, Grids, Vcl.DBGrids,
  DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, System.Actions;

type
  TRelationGroupAccF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    qry_AccCode: TADOQuery;
    prv_AccCode: TDataSetProvider;
    cli_AccCode: TClientDataSet;
    cli_AccCode_Checked: TBooleanField;
    cli_AccCodeTopicCode: TIntegerField;
    cli_AccCodeMoeenName_L1: TStringField;
    cli_AccCodeMoeenName_L2: TStringField;
    src_AccCode: TDataSource;
    Image3: TImage;
    Image2: TImage;
    actSlelectInverse: TAction;
    actSlelectAll: TAction;
    actSearch: TAction;
    actSort: TAction;
    Button3: TButton;
    Button4: TButton;
    Button2: TButton;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSlelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qry_AccCodeAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    procedure ToggleCheck;
    { Private declarations }
  public
    function Checked(lst:TStringList):boolean;
    { Public declarations }
  end;

var
  RelationGroupAccF: TRelationGroupAccF;

implementation

uses GlobalPro, search1, sort;

{$R *.dfm}

procedure TRelationGroupAccF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli_AccCode_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;

procedure TRelationGroupAccF.ToggleCheck;
begin
  with cli_AccCode do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
end;


procedure TRelationGroupAccF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if

end;

procedure TRelationGroupAccF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if key<>#32 then
   QuickSearch(key,cli_AccCode.FieldByName('TopicCode'));
end;

procedure TRelationGroupAccF.actSlelectAllExecute(Sender: TObject);
begin
  inherited;
  with cli_AccCode do begin
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

procedure TRelationGroupAccF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cli_AccCode do begin
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

procedure TRelationGroupAccF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cli_AccCode);
end;

procedure TRelationGroupAccF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cli_AccCode);
end;

function TRelationGroupAccF.Checked;
begin
  lst.Clear;
  Result := False;
  with TRelationGroupAccF.Create(Application) do
  try
    if ShowModal = mrOk then
    with cli_AccCode do
    try
      First;
      DisableControls;
      while not Eof do
      begin
        if cli_AccCode.FieldByName('_Checked').AsBoolean then lst.Add(fieldbyname('TopicCode').AsString) ;
        Next;
      end;
      Result := True;
    finally
      EnableControls;
    end;
  finally
    Free;
  end;
end;

procedure TRelationGroupAccF.qry_AccCodeAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cli_AccCode.Close;
  cli_AccCode.Open;
end;

procedure TRelationGroupAccF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_AccCode.Open
end;

procedure TRelationGroupAccF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;

end;

end.
