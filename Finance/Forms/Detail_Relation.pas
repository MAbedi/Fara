unit Detail_Relation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TDetail_RelationF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    qry_Details: TADOQuery;
    prv_Detail: TDataSetProvider;
    cli_Details: TClientDataSet;
    cli_DetailsDetailCode: TIntegerField;
    cli_DetailsDetailName_L1: TStringField;
    cli_Details_Checked: TBooleanField;
    src_Details: TDataSource;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    qry_DetailRange: TADOQuery;
    qry_DetailRangeTopicCode: TLargeintField;
    qry_DetailRangeDetailCode: TIntegerField;
    qry_DetailRangeAuditReferenceNo: TIntegerField;
    qry_DetailRangeAuditReferenceTxt: TStringField;
    cli_DetailsDetailName_L2: TStringField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    actSelectAll: TAction;
    actSelectnot: TAction;
    actSearch: TAction;
    actSort: TAction;
    qry_DetailRangeCompanyCode: TIntegerField;
    cli_DetailsCompanyCode: TIntegerField;
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
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    FTopicCode: Integer;
    procedure ToggleCheck;
    procedure SaveSelect;
    procedure ReadSelect;
    { Private declarations }
  public
    procedure ShowChooseDetail(Const aCode: Integer);
    { Public declarations }
  end;

var
  Detail_RelationF: TDetail_RelationF;

implementation

uses Dm, GlobalPro, sort, search1;
{$R *.dfm}

procedure TDetail_RelationF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli_Details_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if 
end;

procedure TDetail_RelationF.ToggleCheck;
begin
  with cli_Details do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with 
end;

procedure TDetail_RelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TDetail_RelationF.ShowChooseDetail(const aCode: Integer);
var
  Sqltxt: string;
begin

  Detail_RelationF := TDetail_RelationF.Create(Application);
  with Detail_RelationF do
    try
      FTopicCode := aCode;

      if opta.CheckRelation then
        Sqltxt := 'SELECT DT.* FROM Acc.Details AS DT' +
          ' WHERE (DetailCode NOT IN (SELECT DISTINCT Acc.DetailRange.DetailCode'
          + ' FROM Acc.DetailRange INNER JOIN Acc.Documents AS Doc ON' +
          ' Acc.DetailRange.TopicCode = Doc.TopicCode AND Acc.DetailRange.DetailCode = Doc.DetailCode AND'
          + ' Acc.DetailRange.CompanyCode = Doc.CompanyCode' +
          ' WHERE (Doc.TopicCode = :Topic))) AND (DetailCode <> 0)'
      else
        Sqltxt :=
          'Select * from acc.Details where detailcode<>0 order by detailcode';

      with qry_Details do
      begin
        Close;
        SQL.Text := Sqltxt;

        if opta.CheckRelation then
          Parameters[0].Value := FTopicCode;
        Open;
      end;

      with qry_DetailRange do
      begin
        Close;
        Parameters.ParamByName('FilterCode').Value := FTopicCode;
        Open;
      end; // with 
      ReadSelect;
      if mrok = ShowModal then
        SaveSelect;
    finally
      Detail_RelationF.Free;
    end; // try 
end;

procedure TDetail_RelationF.ReadSelect;
begin
  with cli_Details do
    try
      Close;
      Open;
      DisableControls;
      First;
      qry_DetailRange.First;
      while not qry_DetailRange.Eof do
      begin
        if Locate('DetailCode', qry_DetailRangeDetailCode.AsInteger, []) then
        begin
          Edit;
          cli_Details_Checked.AsBoolean := True;
          Post;
        end;
        qry_DetailRange.next;
      end; // while 
    finally
      First;
      EnableControls;
    end; // try 
end;

procedure TDetail_RelationF.SaveSelect;
var
  SQLDel: string;
begin
  with qry_DetailRange do
    try
      if opta.CheckRelation then
      begin
        SQLDel := 'Delete FROM Acc.DetailRange' + ' WHERE (DetailCode NOT IN' +
          ' (SELECT DISTINCT DetailCode FROM Acc.Documents' +
          ' WHERE (TopicCode = %D))) and TopicCode = %D';
        Dmf.adcAccounting.Execute(Format(SQLDel, [FTopicCode, FTopicCode]))
      end
      else
      begin
        SQLDel := 'Delete FROM  Acc.DetailRange WHERE (TopicCode = %D)';
        Dmf.adcAccounting.Execute(Format(SQLDel, [FTopicCode]))
      end;
      cli_Details.DisableControls;
      cli_Details.Filtered := False;
      cli_Details.First;

      while not cli_Details.Eof do
      begin
        if cli_Details_Checked.AsBoolean then
        begin
          Insert;
          Fieldbyname('TopicCode').AsLargeInt := FTopicCode;
          FieldByName('DetailCode').AsInteger :=
            cli_DetailsDetailCode.AsInteger;
          FieldByName('CompanyCode').AsInteger :=
            cli_DetailsCompanyCode.AsInteger;
          Post;
        end; // if 
        cli_Details.next;
      end; // while 
    finally
      UpdateBatch;
      EnableControls;
      cli_Details.EnableControls;
    end; // try 
end;

procedure TDetail_RelationF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_DetailRange.Active := True;
  if gv_MultiCompany then
    DBGrid1.Columns[1].Visible := True
  else
    DBGrid1.Columns[1].Visible := False;
end;

procedure TDetail_RelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if 

end;

procedure TDetail_RelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TDetail_RelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TDetail_RelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cli_Details);
end;

procedure TDetail_RelationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cli_Details);
end;

procedure TDetail_RelationF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cli_Details do
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

procedure TDetail_RelationF.actSelectnotExecute(Sender: TObject);
begin
  inherited;
  with cli_Details do
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

procedure TDetail_RelationF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #32 then
    QuickSearch(Key, cli_Details.FieldByName('DetailCode'));
end;

end.
