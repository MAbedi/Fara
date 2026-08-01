unit UserDetailRelated;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dm, template5, StdCtrls, CheckLst, Grids, Vcl.DBGrids, DB, ADODB, Menus,
  DBActns, ActnList, Buttons, ExtCtrls, search2, sort2, GlobalPro, StrUtils,
  System.Actions;

type
  TUserDetailRelatedF = class(TTemplate5F)
    srcDetails: TDataSource;
    qryDetails: TADOQuery;
    qryDetailsDetailName_L1: TStringField;
    qryDetailsDetailName_L2: TStringField;
    Panel2: TPanel;
    CheckListUserID: TCheckListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actSearch: TAction;
    actSort: TAction;
    btnCancel: TBitBtn;
    PnlOK: TPanel;
    btnPost: TBitBtn;
    btnEdit: TBitBtn;
    DataSetEdit1: TDataSetEdit;
    qryDetailsOperatorID: TWideStringField;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    qryDetailsDetailCode: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure srcDetailsStateChange(Sender: TObject);
    procedure qryDetailsBeforePost(DataSet: TDataSet);
    procedure qryDetailsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Enter(Sender: TObject);
  end;

var
  UserDetailRelatedF: TUserDetailRelatedF;

const
  SQLstr4Topic =
    'select TopicCode as DetailCode,MoeenName_L1 as DetailName_L1,MoeenName_L2 as DetailName_L2,'
    + 'UserRelated as OperatorID from acc.Categories ' +
    'where LevelID = (select max(LevelID) from acc.Categories)';

implementation

{$R *.dfm}

procedure TUserDetailRelatedF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetails);
end;

procedure TUserDetailRelatedF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetails);
end;

procedure TUserDetailRelatedF.Enter(Sender: TObject);
begin
  UserDetailRelatedF := TUserDetailRelatedF.Create(Application);
  with UserDetailRelatedF do
    try
      Caption := (Sender as TMenuItem).Caption;
      if (Sender as TMenuItem).tag = 1 then
        with qryDetails do
        begin
          SQL.Text := SQLstr4Topic;
          qryDetailsDetailCode.DisplayLabel := 'کد حساب';
          qryDetailsDetailName_L1.DisplayLabel := 'نام حساب';
        end;
      qryDetails.Open;
      ShowModal;

    finally
      Free;
    end;
end;

procedure TUserDetailRelatedF.FormCreate(Sender: TObject);
begin
  inherited;
  with Dmf.qryGlbTmpTmp do
  begin
    Close;
    SQL.Text := 'select userid, name from dbo.Operators ';
    SQL.Add('where SystemID in (0,39) order by userid');
    Open;
    First;
    while not Eof do
    begin
      CheckListUserID.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end;
    Close;
  end;
end;

procedure TUserDetailRelatedF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TUserDetailRelatedF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TUserDetailRelatedF.qryDetailsAfterScroll(DataSet: TDataSet);
var
  UserID: string;
  I: Integer;
begin
  inherited;
  UserID := ',' + qryDetailsOperatorID.AsString + ',';
  for I := 0 to CheckListUserID.Count - 1 do
    CheckListUserID.Checked[I] :=
      Pos(',' + IntToStr(Integer(CheckListUserID.Items.Objects[I])) + ',',
      UserID) <> 0

end;

procedure TUserDetailRelatedF.qryDetailsBeforePost(DataSet: TDataSet);
var
  I: Integer;
  UserID: string;
begin
  inherited;
  UserID := EmptyStr;
  for I := 0 to CheckListUserID.Count - 1 do
    if CheckListUserID.Checked[I] then
      UserID := UserID +
        IntToStr(Integer(CheckListUserID.Items.Objects[I])) + ',';

  if UserID <> EmptyStr then
    UserID := leftstr(UserID, Length(UserID) - 1);
  qryDetailsOperatorID.AsString := UserID;
end;

procedure TUserDetailRelatedF.srcDetailsStateChange(Sender: TObject);
begin
  inherited;
  PnlOK.Visible := srcDetails.State = dsEdit;
  btnEdit.Visible := not PnlOK.Visible;
  CheckListUserID.Enabled := PnlOK.Visible
end;

end.
