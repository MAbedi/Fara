unit ConfigTrial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, System.ImageList, System.Actions;

type
  TConfigTrialF = class(Ttemplate2MDIF)
    grd1: TDBGrid;
    qryAnalize: TADOQuery;
    srcAnalize: TDataSource;
    qryAnalizeCaptionName: TWideStringField;
    qryAnalizeFieldName: TStringField;
    qryAnalizeTableName: TStringField;
    qryAnalizeTopicName: TStringField;
    qryAnalizeAliasName: TStringField;
    qryAnalizeJoinFieldName: TStringField;
    qryAnalizeID: TIntegerField;
    pnlNew: TPanel;
    btnInsert: TBitBtn;
    btn1: TBitBtn;
    btnDel: TBitBtn;
    pnlOk: TPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    procedure srcAnalizeStateChange(Sender: TObject);
    procedure qryAnalizeAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfigTrialF: TConfigTrialF;

implementation

uses
  Dm, IdGlobal, GlobalPro;

{$R *.dfm}

procedure TConfigTrialF.srcAnalizeStateChange(Sender: TObject);
begin
  inherited;
  pnlOk.Visible:=qryAnalize.State in dsEditModes;
  pnlNew.Visible:=not pnlOk.Visible;
  BtnReject.Cancel:=pnlNew.Visible;
  grd1.ReadOnly:=pnlNew.Visible;
  FreeReservedCodes(dmf.adcAccounting, 'acc.Analyze')
end;

procedure TConfigTrialF.qryAnalizeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('ID').AsInteger := GetANewCode('','acc.Analyze','ID',dmf.adcAccounting)
end;

procedure TConfigTrialF.FormCreate(Sender: TObject);
begin
  inherited;
  qryAnalize.Open;
end;

procedure TConfigTrialF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grd1,3)
end;

procedure TConfigTrialF.FormDestroy(Sender: TObject);
begin
  inherited;
  saveColWidth(grd1)
end;

end.
