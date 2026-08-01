unit frmArchiveID;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, SalaryFunctions, Data.DB, Data.Win.ADODB;

type
  TfrArchiveID = class(TFrame)
    cmbLastArchiveID: TComboBox;
    lblFirstArchiveID: TLabel;
    lblLastArchiveID: TLabel;
    cmbFirstArchiveID: TComboBox;
    qryArchiveID: TADOQuery;
    qryArchiveIDMounth: TWordField;
    qryArchiveIDMinArchiveID: TIntegerField;
    qryArchiveIDMaxArchiveID: TIntegerField;
    qryArchiveIDF_ArchiveID: TIntegerField;
    qryArchiveIDLast_ArchiveID: TIntegerField;
    procedure cmbFirstArchiveIDChange(Sender: TObject);
  private
  protected
    { Private declarations }
  public
    FirstArchiveID, LastArchiveID: Integer;
    procedure LoadChange(MonthNo: Byte);
    { Public declarations }
  end;

implementation

uses
  DM;

{$R *.dfm}
{ TfrmFirstArchiveID }

procedure TfrArchiveID.cmbFirstArchiveIDChange(Sender: TObject);
begin
  if cmbFirstArchiveID.ItemIndex > -1 then
    FirstArchiveID := Integer(cmbFirstArchiveID.Items.Objects
      [cmbFirstArchiveID.ItemIndex]);
  if cmbLastArchiveID.ItemIndex > -1 then
    LastArchiveID := Integer(cmbLastArchiveID.Items.Objects
      [cmbLastArchiveID.ItemIndex]);
end;

procedure TfrArchiveID.LoadChange(MonthNo: Byte);
begin
  InitCmbArchiveID(cmbFirstArchiveID, MonthNo);
  InitCmbArchiveID(cmbLastArchiveID, MonthNo);
  With qryArchiveID do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    cmbLastArchiveID.ItemIndex := cmbLastArchiveID.Items.IndexOfObject
      (TObject(qryArchiveIDF_ArchiveID.AsInteger));
    cmbFirstArchiveID.ItemIndex := cmbFirstArchiveID.Items.IndexOfObject
      (TObject(qryArchiveIDLast_ArchiveID.AsInteger));
    cmbFirstArchiveIDChange(nil);
  end;

end;

end.
