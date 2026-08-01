unit FrPersonID3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, ADODB;

type
  TfrPersonID3F = class(TFrame)
    qryPersonID1D: TADOQuery;
    srcPersonID1D: TDataSource;
    grpMaster: TGroupBox;
    sbtnMaster: TSpeedButton;
    edtPersonID1D: TDBEdit;
    edtCustName: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryPersonID3CustName: TStringField;
    qryPersonID1DPersonID1D: TIntegerField;
    procedure sbtnMasterClick(Sender: TObject);
  private
    { Private declarations }
  public
    PersonActive: Boolean;
    PersonSelect: Boolean;
    PersonCaption, CustomerKind: string;
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
  end;

implementation

uses DM, searchCode_ADO, GlobalPro;

{$R *.dfm}

constructor TfrPersonID3F.Create(AOwner: TComponent);
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT PersonID1OnDetailActive,Person2DetailCaption,Customer2DetailKind';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (ReciptType  = 1)');
    Active := True;
    PersonCaption := FieldByName('Person2DetailCaption').AsString;
    CustomerKind := FieldByName('Customer2DetailKind').AsString;
    PersonActive := FieldByName('PersonID1OnDetailActive').AsInteger = 1;
    Visible := PersonActive;
    grpMaster.Caption := 'ﬂœ ' + FieldByName('Person2DetailCaption').AsString;
    if PersonActive then  //961205
      qryPersonID1D.Open;

  end;
end;

procedure TfrPersonID3F.sbtnMasterClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  b := searchCode_ADOF.SearchCode2(qryPersonID1D.Connection, grpMaster.Caption,
    ShowQryParam(qryPersonID1D, True), ['òœ', '„‘Œ’«  '], Results,
    [50, 150], alLeft);
  if b then
  begin
    qryPersonID1D.Locate('PersonID1D', Results[0], [loPartialKey]);
  end;
end;

end.
