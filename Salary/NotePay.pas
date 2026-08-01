// mahmood 83/03/18  edit 1401/03/12
unit NotePay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList,db, ComCtrls,
  Menus;

type
  TNotePayF = class(Ttemplate0F)
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    Panel1: TPanel;
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    PopMnuForm: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    actRecal: TAction;
    BitBtn1: TBitBtn;
    procedure actOkExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actRecalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    function enter(SendNotePay,MyCaption:STRING):string;
    { Public declarations }
  end;

var
  NotePayF: TNotePayF;
  DocNotePay:String;

implementation

uses searchCode_ADO, DM;



{$R *.dfm}

procedure TNotePayF.actOkExecute(Sender: TObject);
begin
  inherited;
  NotePayF.Close;
end;

function TNotePayF.enter(SendNotePay,MyCaption:STRING):string;
begin
  DocNotePay:=sendNotePay;
  NotePayF:=TNotePayF.Create(Application);
  try
    with NotePayF do begin
      Caption:=MyCaption;
      ShowModal;
//      if Memo1.Modified then
         Result:=Memo1.Text;
    end;//with
  finally
    FreeAndNil(NotePayF);
  end;//try
end;

procedure TNotePayF.FormCreate(Sender: TObject);
begin
  inherited;
  Memo1.Text:=DocNotePay;
end;

procedure TNotePayF.actCancelExecute(Sender: TObject);
begin
  inherited;
  Memo1.Text:='';
  NotePayF.Close;
end;

procedure TNotePayF.actRecalExecute(Sender: TObject);
var
  s:Boolean;
  Results:  array[0..2] of String;
begin
  inherited;
  s:=searchCode_ADOF.SearchCode2(DMF.adcSalary,'„Ê÷Ê⁄ Â«',
           'SELECT FormInfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo WHERE(FormType=57)',
          ['ﬂœ „Ê÷Ê⁄','„Ê÷Ê⁄','ReLate'],Results,[15,200,100],alLeft);
  if s then  begin
    Memo1.Text:=Results[1]+Results[2];
//    if not (InterdictsF.qryInterdicts.state in dsEditModes) then   InterdictsF.qryInterdicts.edit;
//    InterdictsF.qryInterdicts['Comment']:=Results[1];
//    InterdictsF.qryInterdicts['Comment']:=Results[2];
  end;//if
end;

end.
