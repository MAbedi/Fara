
unit CreateDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList,db, ComCtrls,
  Menus, ADODB, DBActns, System.Actions;

type
  TCreateDocF = class(Ttemplate0F)
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
    qryPrimary: TADOQuery;
    DataSetPost1: TDataSetPost;
    qryPrimaryPrimaryDocNo: TIntegerField;
    Label3: TLabel;
    Label1: TLabel;
    EditSecondery: TEdit;
    Label4: TLabel;
    EditNum: TEdit;
    Label2: TLabel;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure enter;
    { Public declarations }
  end;

var
  CreateDocF: TCreateDocF;

implementation

uses DocGroups,  Dm, GlobalPro, mmessage;




{$R *.dfm}

procedure TCreateDocF.actOkExecute(Sender: TObject);
begin
  inherited;
  if ((EditNum.Text='') or (EditSecondery.Text='')) then exit; 
  with qryPrimary do begin
   Active:=false;
    Parameters.ParamByName('Secondary').Value:=StrToInt(EditSecondery.Text);
   Active:=true;
   if FieldByName('PrimaryDocNo').AsInteger<>0 then   Warn('„Ã«“ »Â «ÌÃ«œ ”‰œ ‰„Ì »«‘Ìœ.˛')  else
    begin
      with Dmf.qry_Temp do begin
       Active:=false;
       SQL.Text:='UPDATE DocGroups SET SecondaryDocNo = SecondaryDocNo + '+QuotedStr(EditNum.Text)+
                  ' WHERE  PrimaryDocNo=0 and SecondaryDocNo >= '+QuotedStr(EditSecondery.Text);
       ExecSQL;
      end;//with
      BigMessage('À»  ‘œ.',1);
      DocGroupsF.qry_DocGroups.Requery();
      CreateDocF.Close;
    end;//if
  end;//with
end;

procedure TCreateDocF.actCancelExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TCreateDocF.FormCreate(Sender: TObject);
begin
  inherited;
  EditNum.Clear;
  EditSecondery.Clear;
end;

procedure TCreateDocF.enter;
begin
  CreateDocF:=TCreateDocF.Create(Application);
  try
    CreateDocF.ShowModal;
  finally
    FreeAndNil(CreateDocF);
  end;//try
end;

end.
