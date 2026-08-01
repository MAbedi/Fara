unit Account;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Mask, DBCtrls, System.Actions;

type
  TAccountF = class(TTemplate4F)
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    PnlTopicCode: TPanel;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    PnlDetailCode: TPanel;
    SpeedButton3: TSpeedButton;
    lbltafsil: TLabel;
    PnlCenterTopics1: TPanel;
    lblMarkaz1: TLabel;
    SpeedButton5: TSpeedButton;
    pnlCenterTopics2: TPanel;
    SpeedButton6: TSpeedButton;
    lblMarkaz2: TLabel;
    srcSource: TDataSource;
    qrySource: TADOQuery;
    edtTopicCode: TDBEdit;
    edtDetailCode: TDBEdit;
    edtCTopicCode: TDBEdit;
    edtCTopicCode2: TDBEdit;
    dbtxt_AccTopicName: TDBText;
    dbtxt_AccDetailName: TDBText;
    dbtxt_AccCTopicName2: TDBText;
    dbtxt_AccCTopicName: TDBText;
    qrySource_AccTopicCode: TStringField;
    qrySource_AccDetailName: TStringField;
    qrySource_AccCTopicName: TStringField;
    qrySource_AccCTopicName2: TStringField;
    pnlCenterTopics3: TPanel;
    SpeedButton1: TSpeedButton;
    lblMarkaz3: TLabel;
    dbtxt_AccCTopicName3: TDBText;
    edtCTopicCode3: TDBEdit;
    qrySource_AccCTopicName22: TStringField;
    qrySourceTopicCode: TLargeintField;
    qrySourceDetailCode: TIntegerField;
    qrySourceCTopicCode: TIntegerField;
    qrySourceCTopicCode2: TIntegerField;
    qrySourceCTopicCode3: TIntegerField;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function enter(qry: TADOQuery): string;
    { Public declarations }
  end;

var

  AccountF: TAccountF;

implementation

uses DM, FormFunctions;

{$R *.dfm}

function TAccountF.enter(qry: TADOQuery): string;
begin
  AccountF := TAccountF.Create(Application);
  try
    with AccountF do
    begin
      qrySource.Active := True;
      qrySource.Edit;
      if qry.FindField('TopicCode') <> nil then
      begin
        PnlTopicCode.Visible := True;
        qrySource.FieldByName('TopicCode').AsLargeInt :=
          qry.FieldByName('TopicCode').AsLargeInt;
      end; // if
      if qry.FindField('DetailCode') <> nil then
      begin
        PnlDetailCode.Visible := True;
        qrySource.FieldByName('DetailCode').AsInteger :=
          qry.FieldByName('DetailCode').AsInteger;
      end; // if
      if qry.FindField('CTopicCode') <> nil then
      begin
        PnlCenterTopics1.Visible := True;
        qrySource.FieldByName('CTopicCode').AsInteger :=
          qry.FieldByName('CTopicCode').AsInteger;
      end; // if
      if qry.FindField('CTopicCode2') <> nil then
      begin
        pnlCenterTopics2.Visible := True;
        qrySource.FieldByName('CTopicCode2').AsInteger :=
          qry.FieldByName('CTopicCode2').AsInteger;
      end; // if
      if qry.FindField('CTopicCode3') <> nil then
      begin
        pnlCenterTopics3.Visible := True;
        qrySource.FieldByName('CTopicCode3').AsInteger :=
          qry.FieldByName('CTopicCode3').AsInteger;
      end; // if
      ShowModal;
      if not(qry.State in dsEditModes) then
        qry.Edit;
      if qry.FindField('TopicCode') <> nil then
        qry.FieldByName('TopicCode').AsLargeInt :=
          qrySource.FieldByName('TopicCode').AsLargeInt;
      if qry.FindField('DetailCode') <> nil then
        qry.FieldByName('DetailCode').AsInteger :=
          qrySource.FieldByName('DetailCode').AsInteger;
      if qry.FindField('CTopicCode') <> nil then
        qry.FieldByName('CTopicCode').AsInteger :=
          qrySource.FieldByName('CTopicCode').AsInteger;
      if qry.FindField('CTopicCode2') <> nil then
        qry.FieldByName('CTopicCode2').AsInteger :=
          qrySource.FieldByName('CTopicCode2').AsInteger;
      if qry.FindField('CTopicCode3') <> nil then
        qry.FieldByName('CTopicCode3').AsInteger :=
          qrySource.FieldByName('CTopicCode3').AsInteger;

      // end;//if
    end; // with
  finally
    FreeAndNil(AccountF);
  end; // try
end;

procedure TAccountF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qrySource, 'TopicCode')
end;

procedure TAccountF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qrySource, 'CTopiccode3', 'CTopiccode', True,
    'TopicCode')
end;

procedure TAccountF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qrySource, 'DetailCode', 'TopicCode')
end;

procedure TAccountF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qrySource, 'CTopiccode', 'TopicCode')
end;

procedure TAccountF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qrySource, 'CTopiccode2', 'CTopiccode', True,
    'TopicCode')
end;

end.
