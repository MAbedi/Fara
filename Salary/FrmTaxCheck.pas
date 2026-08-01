unit FrmTaxCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Vcl.DBGrids, StdCtrls, DB, ADODB, GlobalPro, DM, StrUtils;

type
  TfrTaxCheck = class(TFrame)
    qryCheckTax: TADOQuery;
    qryCheckTaxSalaryID: TIntegerField;
    qryCheckTaxinfoname_l1: TStringField;
    qryCheckTaxErrorTxt: TStringField;
    qryCheckTaxErrorNoumber: TIntegerField;
    srcTaxCheck: TDataSource;
    grpTaxCheck: TGroupBox;
    DBGrid2: TDBGrid;
    procedure FrameResize(Sender: TObject);
    procedure qryCheckTaxAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure Check(MonthNo: Integer);
    { Public declarations }
  end;

implementation

{$R *.dfm}
{ TfrTaxCheck }

procedure TfrTaxCheck.Check(MonthNo: Integer);
begin
  try
    With qryCheckTax do
    begin
      Active := False;
      Parameters.ParamByName('Mounth').Value := MonthNo;
      Parameters.ParamByName('Year').Value := MidStr(optP.YearMounth, 1, 4);
      Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
      Active := True;
      grpTaxCheck.Visible := RecordCount > 0;
    end;
  except
    on E: Exception do
    begin
      add2log(E.Message);
      grpTaxCheck.Visible := True;
      grpTaxCheck.Caption := 'ÇÔßÇá ÏÑ äãÇíÔ ÎØÇ åÇ' + E.Message;
    end;
  end;

end;

procedure TfrTaxCheck.FrameResize(Sender: TObject);
begin
  SetColSize(DBGrid2, 2, True);
end;

procedure TfrTaxCheck.qryCheckTaxAfterOpen(DataSet: TDataSet);
begin
  Visible := qryCheckTax.RecordCount > 0
end;

end.
