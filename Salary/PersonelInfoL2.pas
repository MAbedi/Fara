unit PersonelInfoL2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB,Mask, DBCtrls;

type
  TPersonelInfoL2F = class(TTemplate4F)
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    PnlTopicCode: TPanel;
    srcSource: TDataSource;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label34: TLabel;
    Label35: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
  private
    { Private declarations }
  public
    procedure enter;
    { Public declarations }
  end;

var
  PersonelInfoL2F: TPersonelInfoL2F;

implementation

uses PersonelInfo ;

{$R *.dfm}

procedure TPersonelInfoL2F.enter;
begin
  PersonelInfoL2F:=TPersonelInfoL2F.Create(Application);
  try
    with PersonelInfoL2F do begin
      ShowModal;
    end;//with
  finally
    FreeAndNil(PersonelInfoL2F);
  end;//try
end;

end.
