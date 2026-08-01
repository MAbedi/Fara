unit Topic_Relation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TTopic_RelationF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    qry_AccCode: TADOQuery;
    prv_AccCode: TDataSetProvider;
    cli_AccCode: TClientDataSet;
    src_AccCode: TDataSource;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qry_DetailRange: TADOQuery;
    cli_AccCode_Checked: TBooleanField;
    cli_AccCode_HasTopicCode: TBooleanField;
    actSlelectInverse: TAction;
    actSlelectAll: TAction;
    Button1: TButton;
    Button2: TButton;
    actSort: TAction;
    actSearch: TAction;
    Button3: TButton;
    Button4: TButton;
    cli_AccCodeMoeenName_L1: TStringField;
    cli_AccCodeMoeenName_L2: TStringField;
    cli_AccCodeTopicCode: TIntegerField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSlelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qry_AccCodeAfterOpen(DataSet: TDataSet);
  private
    FormType: Byte;
    FCode: Integer;
    FCompanyCode: Integer;
    FSelTopic: string;
    procedure ToggleCheck;
    procedure SaveSelect;
    procedure ReadSelect;
    procedure MakeSql;
    { Private declarations }
  public
    procedure ShowChooseDetail(FilterCode: Integer; st: Byte = 0;
      aCompanyCode: Integer = 0);
    { Public declarations }
  end;

var
  Topic_RelationF: TTopic_RelationF;

implementation

uses Dm, GlobalPro, StrUtils, search1, sort;
{$R *.dfm}

procedure TTopic_RelationF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli_AccCode_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TTopic_RelationF.ToggleCheck;
begin
  with cli_AccCode do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TTopic_RelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TTopic_RelationF.ShowChooseDetail(FilterCode: Integer; st: Byte;
  aCompanyCode: Integer);
var
  OryT: TADOQuery;
begin
  Topic_RelationF := TTopic_RelationF.Create(Application);

  with Topic_RelationF do
    try
      FCode := FilterCode;
      FormType := st;
      FSelTopic := '0';
      OryT := TADOQuery.Create(Self);
      if (opta.CheckRelation) and (FormType in [0, 1]) then
        with OryT do
          try
            CommandTimeout := 0;
            Connection := Dmf.adcAccounting;
            SQL.Text := 'Declare @Code varchar(4000)';
            SQL.Add('Set @Code = '''';');
            SQL.Add('SELECT @Code = ltrim(str( DR.TopicCode)) +'',''+@Code');
            SQL.Add('FROM Acc.DetailRange AS DR INNER JOIN');
            SQL.Add('Acc.Documents AS Doc ON DR.TopicCode =');
            SQL.Add('Doc.TopicCode AND DR.DetailCode =');
            SQL.Add('Doc.DetailCode AND DR.CompanyCode = Doc.CompanyCode');
            SQL.Add(' Where (DR.DetailCode = :DT) ');
            SQL.Add('Group By DR.TopicCode');
            SQL.Add('Select @Code');
            Parameters[0].Value := FCode;
            Active := True;
            FSelTopic := Fields[0].AsString;
            if FSelTopic <> EmptyStr then
              SetLength(FSelTopic, length(FSelTopic) - 1)
            else
              FSelTopic := '0';

            Active := False;
          finally
            Free;
          end;

      with qry_DetailRange do
      begin
        Close;

        case FormType of

          0:
            begin
              SQL.Text :=
                'SELECT  *  FROM  acc.DetailRange WHERE  (DetailCode = :FilterCode) '
                + ' AND CompanyCode=:CompanyCode';
              if FSelTopic <> EmptyStr then
                SQL.Add('And TopicCode not in (' + FSelTopic + ')')

            end;
          // warn ->  exchange 1 with 2
          1:
            SQL.Text :=
              'SELECT  *  FROM  acc.DetailRange WHERE(DetailCode = :FilterCode) AND CompanyCode=:CompanyCode ';

          2:
            SQL.Text :=
              'SELECT CTopicCode AS DetailCode,TopicCode FROM acc.CenterTopicRange WHERE (CtopicCode = :FilterCode)';
          3:
            SQL.Text :=
              'SELECT CTopicCode2 AS DetailCode , TopicCode FROM Acc.CenterTopicAllRange WHERE (CTopicCode2 = :FilterCode)';
          4:
            SQL.Text :=
              'SELECT CTopicCode3 AS DetailCode , TopicCode FROM Acc.CenterTopicAllRange WHERE (CTopicCode3 = :FilterCode)';
        end;
        Open;
      end; // with

      FCompanyCode := aCompanyCode;
      with qry_DetailRange do
      begin
        Close;
        Parameters.ParamByName('FilterCode').Value := FCode;
        if FormType = 0 then
          Parameters.ParamByName('CompanyCode').Value := FCompanyCode;
        Open;
      end; // with
      MakeSql;
      ReadSelect;
      if mrok = ShowModal then
        SaveSelect;
    finally
      Free;
    end; // try

end;

procedure TTopic_RelationF.ReadSelect;
begin
  qry_AccCode.Close;
  qry_AccCode.Open;
  with cli_AccCode do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('_Checked').AsBoolean := FieldByName('_HasTopicCode')
          .AsBoolean;
        Post;
        next;
      end; // while}
    finally
      EnableControls;
    end; // try

end;

procedure TTopic_RelationF.SaveSelect;
begin
  with qry_DetailRange do
    try
      DisableControls;
      First;
      while not Eof do
        delete;
      cli_AccCode.DisableControls;
      cli_AccCode.First;
      while not cli_AccCode.Eof do
      begin
        if cli_AccCode_Checked.AsBoolean then
        begin
          Insert;
          FieldByName('DetailCode').AsInteger := FCode;
          FieldByName('TopicCode').AsFloat :=
            cli_AccCode.FieldByName('TopicCode').Value;
          If FormType = 0 then
            FieldByName('CompanyCode').AsFloat :=
              Parameters.ParamByName('CompanyCode').Value;
          Post;
        end; // if
        cli_AccCode.next;
      end; // while
    finally
      UpdateBatch;
      EnableControls;
      cli_AccCode.EnableControls;
    end; // try

end;

procedure TTopic_RelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if

end;

procedure TTopic_RelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TTopic_RelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TTopic_RelationF.actSlelectAllExecute(Sender: TObject);
begin
  inherited;
  with cli_AccCode do
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

procedure TTopic_RelationF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cli_AccCode do
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

procedure TTopic_RelationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cli_AccCode);

end;

procedure TTopic_RelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cli_AccCode);
end;

procedure TTopic_RelationF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #32 then
    QuickSearch(Key, cli_AccCode.FieldByName('TopicCode'));

end;

procedure TTopic_RelationF.qry_AccCodeAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cli_AccCode.Active := False;
  cli_AccCode.Open;

end;

procedure TTopic_RelationF.MakeSql;
var
  fldName: string;
begin
  fldName := 'DetailCode';
  case FormType of
    1:
      fldName := 'DetailCode';
    2:
      fldName := 'CTopicCode';
    3:
      fldName := 'CTopicCode2';
    4:
      fldName := 'CTopicCode3';
  end; // case
  with qry_AccCode do
  begin
    Active := False;
    SQL.Text :=
      'SELECT CAST(CT.TopicCode as int) AS TopicCode, CT.MoeenName_L1, CT.MoeenName_L2';
    SQL.Add('FROM Acc.Categories AS CT LEFT OUTER JOIN');
    SQL.Add('Acc.CategoriesForUse AS CTF ON CT.TopicCode = CTF.PrvTopicCode');
    SQL.Add('WHERE (CTF.PrvTopicCode IS NULL) And ( CT.TopicCode not in (');
    SQL.Add('SELECT TopicCode FROM Acc.Documents  WHERE (YearID =' + IntToStr(APPBank.Year) + ') ');
    SQL.Add('GROUP BY TopicCode HAVING MAX(' + fldName + ') = 0 ))');

    if (opta.CheckRelation) and (FormType in [0, 1]) then
      SQL.Add('And CT.TopicCode NOT IN (' + FSelTopic + ')');

    // if FormType <> 0 then
    // begin
    // SQL.Add('and CT.TopicCode Not in(');
    // SQL.Add('SELECT TopicCode FROM acc.Documents');
    // SQL.Add('GROUP BY TopicCode  having  max(' + fldName + ') = 0)');
    // SQL.Add('ORDER BY LTRIM(STR(CT.TopicCode))');
    // end;

    SQL.Add('ORDER BY LTRIM(STR(CT.TopicCode))');

    Active := True;

  end;

  qry_DetailRange.Active := True;

end;

end.
