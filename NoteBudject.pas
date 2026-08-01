// mahmood 83/03/18
unit NoteBudject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList,db, ComCtrls,
  Menus, DBActns, DBCtrls, ADODB, System.Actions;

type
  TNoteBudjectF = class(Ttemplate0F)
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    Panel1: TPanel;
    srcbudject: TDataSource;
    qrybudject: TADOQuery;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    qrybudjectBudgetTopicID: TIntegerField;
    qrybudjectNote_L1: TStringField;
    qrybudjectNote_L2: TStringField;
    procedure actOkExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure qrybudjectAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure enter(BudgetTopicID:STRING);
    { Public declarations }
  end;

var
  NoteBudjectF: TNoteBudjectF;
  DocNOTE:String;

implementation

uses  mmessage, Dm;




{$R *.dfm}

procedure TNoteBudjectF.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TNoteBudjectF.enter(BudgetTopicID:String);
begin
  NoteBudjectF:=TNoteBudjectF.Create(Application);
  try
    with NoteBudjectF do begin
      with qrybudject do begin
       Active:=false;
        Parameters.ParamByName('BudgetTopicID').Value:=BudgetTopicID;
       Active:=true;
      end;
      ShowModal;
    end;//with
  finally
    FreeAndNil(NoteBudjectF);
  end;//try
end;

procedure TNoteBudjectF.actCancelExecute(Sender: TObject);
begin
  inherited;
  Close;
end;



procedure TNoteBudjectF.FormCreate(Sender: TObject);
begin
  inherited;
  GroupBox1.Visible:=opt.LanguageDisplay1;
  GroupBox2.Visible:=opt.LanguageDisplay2 ;
end;

procedure TNoteBudjectF.qrybudjectAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
//  BudgetTopics_2f.qryBudgetTopics.Requery();
  Close;
end;

end.
