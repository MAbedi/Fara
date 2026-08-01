// mahmood 83/03/18
unit Note;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList,db, 
  Menus, DBActns, DBCtrls, ADODB;

type
  TNoteF = class(Ttemplate0F)
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    Panel1: TPanel;
    PopMnuForm: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    srcNote: TDataSource;
    qryNote: TADOQuery;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    procedure actOkExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure qryNoteAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure enter(tblName,NoteL1,NoteL2,filterField,filterValue:STRING);
    { Public declarations }
  end;

var
  NoteF: TNoteF;
  DocNOTE:String;

implementation

uses mmessage, Dm;




{$R *.dfm}

procedure TNoteF.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TNoteF.enter(tblName,NoteL1,NoteL2,filterField,filterValue:STRING);
begin
  NoteF:=TNoteF.Create(Application);
  try
    with NoteF do begin
      with qryNote do begin
       Active:=false;
       SQL.Text:='select '+NoteL1+' as Note_L1 ,'+NoteL2+' as Note_L2 '
                +' from '+tblName+' where '+filterField+'='+filterValue;
       Active:=true;
      end;
      ShowModal;
    end;//with
  finally
    FreeAndNil(NoteF);
  end;//try
end;

procedure TNoteF.actCancelExecute(Sender: TObject);
begin
  inherited;
  Close;
end;



procedure TNoteF.FormCreate(Sender: TObject);
begin
  inherited;
  GroupBox1.Visible:=opta.LanguageDisplay1;
  GroupBox2.Visible:=opta.LanguageDisplay2 ;
end;

procedure TNoteF.qryNoteAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
//  DocGroupsF.qry_DocGroups.Requery();
  Close;
end;

end.
