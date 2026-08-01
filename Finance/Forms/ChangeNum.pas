
unit ChangeNum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList,db, 
  Menus, System.Actions;

type
  TChangeNumF = class(Ttemplate0F)
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    Panel1: TPanel;
    PopMnuForm: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    Memo1: TMemo;
    Label1: TLabel;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    function enter(MyCaption:STRING):string;
    { Public declarations }
  end;

var
  ChangeNumF: TChangeNumF;
  DocNOTE:String;

implementation






{$R *.dfm}

procedure TChangeNumF.actOkExecute(Sender: TObject);
begin
  inherited;
  ChangeNumF.Close;
end;

function TChangeNumF.enter(MyCaption:STRING):string;
begin
  ChangeNumF:=tChangeNumF.Create(Application);
  try
    with ChangeNumF do begin
      Memo1.Text:='';
      Label1.Caption:=MyCaption;
      ShowModal;
      if Memo1.Modified then  Result:=Memo1.Text;
    end;//with
  finally
    FreeAndNil(ChangeNumF);
  end;//try
end;

procedure TChangeNumF.actCancelExecute(Sender: TObject);
begin
  inherited;
  Memo1.Text:='';
  ChangeNumF.Close;
end;

end.
