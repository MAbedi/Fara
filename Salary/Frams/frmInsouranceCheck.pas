unit frmInsouranceCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, GlobalPro, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TfrInsouranceCheck = class(TFrame)
    qryInsouranceCheck: TADOQuery;
    srcInsouranceCheck: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid2: TCedarDbgrid;
    qryInsouranceCheckkind: TIntegerField;
    qryInsouranceCheckFormInfoID: TIntegerField;
    qryInsouranceCheckInfoID: TIntegerField;
    qryInsouranceCheckInfoName_L1: TStringField;
    procedure qryInsouranceCheckAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  DM;

{$R *.dfm}

procedure TfrInsouranceCheck.qryInsouranceCheckAfterOpen(DataSet: TDataSet);
begin
  Visible := qryInsouranceCheck.RecordCount > 0;
end;

end.
