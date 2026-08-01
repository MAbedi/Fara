unit SpecialSearchDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, ExtCtrls, StdCtrls, ActnList, Buttons, DB, ADODB,
  Grids, Vcl.DBGrids,StrUtils, System.Actions;

type
  TSpecialSearchDocF = class(Ttemplate0F)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    cmbTopic: TComboBox;
    edtSearch: TEdit;
    DBGrid1: TDBGrid;
    qrySearch: TADOQuery;
    scrSearch: TDataSource;
    qrySearchMoeenName_L1: TStringField;
    actLevel: TAction;
    Panel2: TPanel;
    actSort: TAction;
    actSearch: TAction;
    actBackLevel: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    qrySearchPrvTopicCode: TStringField;
    qrySearchTopicCode: TStringField;
    procedure actLevelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actBackLevelExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtSearchChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FormType : Byte;
    AccCode : String;
    Procedure initCombo;
    { Private declarations }
  public
    function enter : Int64;
    { Public declarations }
  end;

var
  SpecialSearchDocF: TSpecialSearchDocF;

implementation

uses Dm, sort2, search2, Math, GlobalPro, DocCopy;

{$R *.dfm}

procedure TSpecialSearchDocF.actLevelExecute(Sender: TObject);
begin
  inherited;
  actBackLevel.Enabled := true;
  With TADOQuery.Create(nil) do
  try
    Close;
    Connection := Dmf.adcAccounting;
    SQL.Text :=Format('SELECT LevelID FROM acc.AccTopicLevels WHERE (TopicType=0) AND(PrvLevelID = %d)',[FormType]);
    Open;
    FormType := Fields[0].AsInteger;
    with qrySearch do
    begin

      if StrToInt64Def(Trim(fieldbyname('TopicCode').AsString),0) <> 0 then
      AccCode := Trim(fieldbyname('TopicCode').AsString);
      Close;
      Parameters.ParamByName('accFrom').Value := AccCode;
      Parameters.ParamByName('accTO').Value := AccCode;
      Parameters.ParamByName('LvlID').Value := FormType;
      Filtered := False;
      edtSearch.Text := EmptyStr;
      Open;

      if qrySearch.IsEmpty then  ModalResult := mrOk
    end;
  finally
    Free;
  end;

end;

function TSpecialSearchDocF.enter: Int64;
begin
  SpecialSearchDocF := TSpecialSearchDocF.Create(Application);
  with SpecialSearchDocF do
  try
    if ShowModal = mrOk then
      Result := StrToInt64Def(AccCode ,0)
    else Result := 0;
  finally
    Free;
  end;
end;

procedure TSpecialSearchDocF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := 3;
  initCombo;
  With qrySearch do
  begin
    Close;
    Parameters.ParamByName('accFrom').Value := 0;
    Parameters.ParamByName('accTO').Value := 2147483647;
    Parameters.ParamByName('LvlID').Value := FormType;
    Open;
  end;

end;

procedure TSpecialSearchDocF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySearch);
end;

procedure TSpecialSearchDocF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySearch);
end;

procedure TSpecialSearchDocF.actBackLevelExecute(Sender: TObject);
var
  codLen:Integer;
begin
  inherited;
 if FormType -1 >= 3  then Dec(FormType);
 with TADOQuery.Create(nil)do
 try
  Close;
  Connection := Dmf.adcAccounting;
  SQL.Text:='SELECT CodeLength, LevelID';
  SQL.Add  ('FROM AccTopicLevels');
  SQL.Add  ('WHERE (TopicType = 0) AND (LevelID = :LvlID)');
  Parameters[0].Value := FormType - 1 ;
  Open;
  codLen := Fields[0].AsInteger;
 finally
  Free;
 end;

  With qrySearch do
  begin
    Close;
    Parameters.ParamByName('accFrom').Value := IfThen(FormType = 3 ,'0',LeftStr(AccCode,codLen));
    Parameters.ParamByName('accTO').Value := IfThen(FormType = 3 ,'2147483647',LeftStr(AccCode,codLen));
    Parameters.ParamByName('LvlID').Value := FormType;
    Open;
  end;
  actBackLevel.Enabled := FormType <> 3
end;

procedure TSpecialSearchDocF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TSpecialSearchDocF.edtSearchChange(Sender: TObject);
var
  s,fldName :String;
begin
  inherited;
   s := Trim(edtSearch.Text);
   fldName := qrySearch.Fields[integer(cmbTopic.Items.Objects[cmbTopic.ItemIndex])].FieldName;
  with qrySearch do
  begin
     Filtered := False;
     Filter:= fldName + ' like ''%'+s+'%''';
     Filtered:= s<>EmptyStr;
  end;
end;

procedure TSpecialSearchDocF.initCombo;
var
  i:Byte;
begin
  for i:= 0 to qrySearch.FieldCount - 1 do
    if qrySearch.Fields[i].Tag  = 3 then
    cmbTopic.AddItem(qrySearch.Fields[i].DisplayLabel,TObject(i));
  cmbTopic.ItemIndex := 0;

end;

procedure TSpecialSearchDocF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TSpecialSearchDocF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
end;

procedure TSpecialSearchDocF.BitBtn1Click(Sender: TObject);
begin
  inherited;
 AccCode := Trim(qrySearch.fieldbyname('TopicCode').AsString);
 ModalResult := mrOk;
end;

procedure TSpecialSearchDocF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If Key = #13 then    actLevel.Execute;
end;

procedure TSpecialSearchDocF.edtSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key=VK_DOWN then begin
      Key:=0;
      DBGrid1.SetFocus;
      DBGrid1.DataSource.DataSet.Next;
   end ;
end;

end.

