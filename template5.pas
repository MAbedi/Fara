unit template5;

interface

uses
  Classes, Controls, Forms, StdCtrls, ExtCtrls, Buttons, DBActns, ActnList,
  IniLang,InitPop, FaraConsts, System.Actions,uAppUsageLogger;

type
  TTemplate5F = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    lblTopic0: TLabel;
    lblTopic1: TLabel;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    pnlDown: TPanel;
    btnClose: TBitBtn;
    actManagGridColumns: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FOpenTime: TDateTime;
  protected
    procedure DoShow; override;
    procedure DoClose(var Action: TCloseAction); override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Template5F: TTemplate5F;

implementation

uses GlobalPro, FormFunctions;

{$R *.dfm}

procedure TTemplate5F.DoClose(var Action: TCloseAction);
begin
  inherited;
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(Caption, FOpenTime);

end;

procedure TTemplate5F.DoShow;
begin
  inherited;
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(Caption, FOpenTime);
end;
procedure TTemplate5F.FormShow(Sender: TObject);
begin
  Realign;
  ColorDBEdits(Self);
  SetUserQualitativeOnForms(Self);
  actManagGridColumns.Visible := User.PowerUser;
end;

procedure TTemplate5F.FormCreate(Sender: TObject);
begin
  if CLini <> nil then
    fillProps([Self], CLini);


end;

end.
