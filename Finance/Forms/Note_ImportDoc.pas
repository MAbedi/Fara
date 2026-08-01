// mahmood 83/03/18
unit Note_ImportDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList,db, 
  Menus, DBActns, DBCtrls, ADODB;

type
  TNote_ImportDocF = class(Ttemplate0F)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    mmo1: TMemo;
  private
    { Private declarations }
  public
    procedure enter(Serial:STRING);
    { Public declarations }
  end;

var
  Note_ImportDocF: TNote_ImportDocF;
  DocNOTE:String;

implementation

uses DocGroups, mmessage, Dm;




{$R *.dfm}

procedure TNote_ImportDocF.enter(Serial:STRING);
begin
end;

end.
