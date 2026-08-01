unit CountingControlCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, db, Grids, Vcl.DBGrids,
  ADODB;

type
  TCountingControlCodeF = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryCountingItems: TADOQuery;
    srcCountingItems: TDataSource;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    lblTopic0: TLabel;
    GroupBox1: TGroupBox;
    medtControlCode: TMaskEdit;
    SBtnStuffCode: TSpeedButton;
    qryCountingItemsCount1Entity: TFloatField;
    qryCountingItemsCount2Entity: TFloatField;
    qryCountingItemsCount3Entity: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SBtnStuffCodeClick(Sender: TObject);
  private
//    FDataSetPost: Boolean;
//    DataSource: TDataSource;
    { Private declarations }
  public
    procedure Show(StoreID, CountID,ControlCode: Largeint);
    { Public declarations }
  end;

var
  CountingControlCodeF: TCountingControlCodeF;

implementation

uses GlobalPro;

{$R *.dfm}

procedure TCountingControlCodeF.Show(StoreID, CountID,ControlCode: Largeint);
//var
//  i: Integer;
//  s: string;
//  lBorder: Integer;
begin
  try
    CountingControlCodeF := TCountingControlCodeF.Create(nil);
    with CountingControlCodeF do
    begin
      medtControlCode.Text := FloatToStr(ControlCode);
      With qryCountingItems do
        try
          Active := False;
          Parameters.ParamByName('StoreID').Value := StoreID;
          Parameters.ParamByName('CountID').Value := CountID;
          Parameters.ParamByName('ControlCode').Value := ControlCode;
          Active := True;
        finally
        end;
      ShowModal
    end;
  finally
    FreeAndNil(CountingControlCodeF);
  end;
end;

procedure TCountingControlCodeF.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TCountingControlCodeF.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TCountingControlCodeF.SBtnStuffCodeClick(Sender: TObject);
begin
  With qryCountingItems do
    try
      Active := False;
      Parameters.ParamByName('ControlCode').Value :=
        StrToFloat(Trim(medtControlCode.Text));
      Active := True;
    finally
    end;
end;

end.
