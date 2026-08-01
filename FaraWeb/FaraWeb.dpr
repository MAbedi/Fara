program FaraWeb;

uses
  Vcl.Forms,
  WEBLib.Forms,
  ListSalary in 'ListSalary.pas' {ListSalaryF: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TListSalaryF, ListSalaryF);
  Application.Run;
end.
