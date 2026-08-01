// mahmood 83/03/18
unit Note_docGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList, db,
  Menus, DBActns, DBCtrls, ADODB, System.Actions;

type
  TNote_docGroupF = class(Ttemplate0F)
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    Panel1: TPanel;
    PopMnuForm: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    srcDocNote: TDataSource;
    qryDocNote: TADOQuery;
    qryDocNoteSerial: TIntegerField;
    qryDocNoteDocNote_L1: TStringField;
    qryDocNoteDocNote_L2: TStringField;
    qryDocNoteSecondaryDocNo: TIntegerField;
    qryDocNotePrimaryDocNo: TIntegerField;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    procedure actOkExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure qryDocNoteAfterPost(DataSet: TDataSet);
    procedure DBMemo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    procedure enter(Serial: STRING);
    { Public declarations }
  end;

var
  Note_docGroupF: TNote_docGroupF;
  DocNOTE: String;

implementation

uses DocGroups, mmessage, Dm;

{$R *.dfm}

procedure TNote_docGroupF.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TNote_docGroupF.DBMemo1Enter(Sender: TObject);
begin
  inherited;
    if not DMF.CheckLevel(EditLevelNote, 102) then
    Abort;
end;

procedure TNote_docGroupF.enter(Serial: STRING);
begin

  with TNote_docGroupF.Create(Application) do
    try
      with qryDocNote do
      begin
        Close;
        Parameters.ParamByName('Serial').Value := Serial;
        Parameters.ParamByName('YearId').Value := APPBank.Year;
        Open;
      end;
      ShowModal;

    finally
      FreeAndNil(Note_docGroupF);
    end; // try
end;

procedure TNote_docGroupF.actCancelExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TNote_docGroupF.FormCreate(Sender: TObject);
begin
  inherited;
  GroupBox1.Visible := opt.LanguageDisplay1;
  GroupBox2.Visible := opt.LanguageDisplay2;
end;

procedure TNote_docGroupF.qryDocNoteAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
  DocGroupsF.qry_DocGroups.Requery();
  Close;
end;

end.
