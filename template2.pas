unit template2;

interface

uses
  Classes, Controls, Forms,
  StdCtrls, ExtCtrls, Buttons, ActnList, DBActns,
  IniLang ,InitPop, System.Actions,uAppUsageLogger;

type
  Ttemplate2F = class(TForm)
    ActionList: TActionList;
    PnlUnderButton: TPanel;
    BtnReject: TBitBtn;
    Panel2: TPanel;
    ImgTemplate: TImage;
    Panel3: TPanel;
    lblCaption: TLabel;
    actExit: TAction;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    _actSearch: TAction;
    DataSet_Delete2: TDataSetDelete;
    _actSort: TAction;
    procedure actExitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FOpenTime: TDateTime;
  protected
    procedure DoShow; override;
    procedure DoClose(var Action: TCloseAction); override;
    { Private declarations }
  public
  end;

var
  template2F: Ttemplate2F;

implementation



{$R *.dfm}
//just a test!

procedure Ttemplate2F.DoClose(var Action: TCloseAction);
begin
  inherited;
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(Caption, FOpenTime);
end;

procedure Ttemplate2F.DoShow;
begin
  inherited;
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(Caption, FOpenTime);
end;

procedure Ttemplate2F.actExitExecute(Sender: TObject);
begin
   ModalResult:=mrOk;
   Close;
end;


procedure Ttemplate2F.FormShow(Sender: TObject);
begin
  lblCaption.Caption:='   ' + Caption;
  Realign;
end;

procedure Ttemplate2F.FormCreate(Sender: TObject);
begin
  if CLini<>nil then fillProps([Self],CLini);


end;

end.
