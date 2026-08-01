unit template0;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms,
  IniLang, InitPop;

type
  Ttemplate0F = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FOpenTime: TDateTime;
  protected
    procedure DoShow; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  template0F: Ttemplate0F;

implementation

uses
  GlobalPro, uAppUsageLogger;

{$R *.dfm}

procedure Ttemplate0F.DoShow;
begin
  inherited;
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(Caption, FOpenTime);
end;

procedure Ttemplate0F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(Caption, FOpenTime);

end;

procedure Ttemplate0F.FormCreate(Sender: TObject);
begin
  if CLini <> nil then
    fillProps([Self], CLini);
  if pos('NT', UpperCase(GetEnvironmentVariable('OS'))) <> 0 then
    Self.Font := var_glb_DefaultFont;
    // else
    // Self.Font.Name:='MS Sans Serif';


end;

procedure Ttemplate0F.FormShow(Sender: TObject);
begin
  // if (Align<>alNone)or AutoSize then
  Realign;
end;

end.
