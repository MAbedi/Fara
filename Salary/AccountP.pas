unit AccountP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Mask, DBCtrls, System.Actions;

type
  TAccountpF = class(TTemplate4F)
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    srcSource: TDataSource;
    qrySource: TADOQuery;
    qrySourceAccTopicCode: TIntegerField;
    qrySourceAccDetailCode: TIntegerField;
    qrySourceAccCTopicCode: TIntegerField;
    qrySourceAccCTopicCode2: TIntegerField;
    qrySource_AccTopicCode: TStringField;
    qrySource_AccDetailName: TStringField;
    qrySource_AccCTopicName: TStringField;
    qrySource_AccCTopicName3: TStringField;
    Panel2: TPanel;
    PnlTopicCode: TPanel;
    BtnAccTopicCode: TSpeedButton;
    Label10: TLabel;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    PnlDetailCode: TPanel;
    BtnAccDetailCode: TSpeedButton;
    Label7: TLabel;
    DBText2: TDBText;
    DBEdit2: TDBEdit;
    PnlCenterTopics1: TPanel;
    Label9: TLabel;
    btnAccCTopicCode: TSpeedButton;
    DBText3: TDBText;
    DBEdit3: TDBEdit;
    PnlCenterTopics2: TPanel;
    btnAccCTopicCode2: TSpeedButton;
    Label6: TLabel;
    DBText4: TDBText;
    DBEdit4: TDBEdit;
    PnlCenterTopics3: TPanel;
    btnAccCTopicCode3: TSpeedButton;
    Label1: TLabel;
    DBText5: TDBText;
    DBEdit5: TDBEdit;
    qrySourceAccCTopicCode3: TIntegerField;
    qrySource_AccCTopicName2: TStringField;
    PnlTopicCodeB: TPanel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    txt_AccTopicNameB: TDBText;
    edtAccTopicCodeB: TDBEdit;
    PnlDetailCodeB: TPanel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    txt_AccDetailNameB: TDBText;
    edtAccDetailCodeB: TDBEdit;
    qrySourceAccTopicCodeB: TIntegerField;
    qrySourceAccDetailCodeB: TIntegerField;
    qrySource_AccTopicNameB: TStringField;
    qrySource_AccDetailNameB: TStringField;
    procedure BtnAccTopicCodeClick(Sender: TObject);
    procedure BtnAccDetailCodeClick(Sender: TObject);
    procedure btnAccCTopicCodeClick(Sender: TObject);
    procedure btnAccCTopicCode2Click(Sender: TObject);
    procedure btnAccCTopicCode3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private

    { Private declarations }
  public
    function enter(qry: TADOQuery): string;
    { Public declarations }
  end;

var

  AccountpF: TAccountpF;

implementation

uses DM, GlobalPro, SalaryFunctions;

{$R *.dfm}

function TAccountpF.enter(qry: TADOQuery): string;
begin
  AccountpF := TAccountpF.Create(Application);
  try
    with AccountpF do
    begin

      if optA.AccOldAvailable then
      begin
        qrySource.FieldByName('_AccCTopicName2').LookupDataSet :=
          DMf.qry_CTopicCode;
        qrySource.FieldByName('_AccCTopicName2').KeyFields := 'AccCTopicCode';
        qrySource.FieldByName('_AccCTopicName2').LookupResultField :=
          'CTopicName_L1';
        qrySource.FieldByName('_AccCTopicName2').LookupKeyFields :=
          'CTopicCode';
        qrySource.FieldByName('_AccCTopicName3').LookupDataSet :=
          DMf.qry_CTopicCode;
        qrySource.FieldByName('_AccCTopicName3').KeyFields := 'AccCTopicCode';
        qrySource.FieldByName('_AccCTopicName3').LookupResultField :=
          'CTopicName_L1';
        qrySource.FieldByName('_AccCTopicName3').LookupKeyFields :=
          'CTopicCode';

      end;

      qrySource.Active := True;
      qrySource.Edit;
      if qry.FindField('AccTopicCode') <> nil then
      begin
        PnlTopicCode.Visible := True;
        qrySource.FieldByName('AccTopicCode').AsInteger :=
          qry.FieldByName('AccTopicCode').AsInteger;
      end; // if
      if qry.FindField('AccDetailCode') <> nil then
      begin
        PnlDetailCode.Visible := True;
        qrySource.FieldByName('AccDetailCode').AsInteger :=
          qry.FieldByName('AccDetailCode').AsInteger;
      end; // if
      if qry.FindField('AccCTopicCode') <> nil then
      begin
        PnlCenterTopics1.Visible := True;
        qrySource.FieldByName('AccCTopicCode').AsInteger :=
          qry.FieldByName('AccCTopicCode').AsInteger;
      end; // if
      if qry.FindField('AccCTopicCode2') <> nil then
      begin
        PnlCenterTopics2.Visible := True;
        qrySource.FieldByName('AccCTopicCode2').AsInteger :=
          qry.FieldByName('AccCTopicCode2').AsInteger;
      end; // if
      if qry.FindField('AccCTopicCode3') <> nil then
      begin
        PnlCenterTopics3.Visible := True;
        qrySource.FieldByName('AccCTopicCode3').AsInteger :=
          qry.FieldByName('AccCTopicCode3').AsInteger;
      end; // if

      if qry.FindField('AccTopicCodeB') <> nil then
      begin
        PnlTopicCodeB.Visible := True;
        qrySource.FieldByName('AccTopicCodeB').AsInteger :=
          qry.FieldByName('AccTopicCodeB').AsInteger;
      end; // if
      if qry.FindField('AccDetailCodeB') <> nil then
      begin
        PnlDetailCodeB.Visible := True;
        qrySource.FieldByName('AccDetailCodeB').AsInteger :=
          qry.FieldByName('AccDetailCodeB').AsInteger;
      end; // if

      ShowModal;
      if not(qry.State in dsEditModes) then
        qry.Edit;
      if qry.FindField('AccTopicCode') <> nil then
        qry.FieldByName('AccTopicCode').AsInteger :=
          qrySource.FieldByName('AccTopicCode').AsInteger;
      if qry.FindField('AccDetailCode') <> nil then
        qry.FieldByName('AccDetailCode').AsInteger :=
          qrySource.FieldByName('AccDetailCode').AsInteger;
      if qry.FindField('AccCTopicCode') <> nil then
        qry.FieldByName('AccCTopicCode').AsInteger :=
          qrySource.FieldByName('AccCTopicCode').AsInteger;
      if qry.FindField('AccCTopicCode2') <> nil then
        qry.FieldByName('AccCTopicCode2').AsInteger :=
          qrySource.FieldByName('AccCTopicCode2').AsInteger;
      if qry.FindField('AccCTopicCode3') <> nil then
        qry.FieldByName('AccCTopicCode3').AsInteger :=
          qrySource.FieldByName('AccCTopicCode3').AsInteger;

      if qry.FindField('AccTopicCodeB') <> nil then
        qry.FieldByName('AccTopicCodeB').AsInteger :=
          qrySource.FieldByName('AccTopicCodeB').AsInteger;
      if qry.FindField('AccDetailCodeB') <> nil then
        qry.FieldByName('AccDetailCodeB').AsInteger :=
          qrySource.FieldByName('AccDetailCodeB').AsInteger;


      // end;//if
    end; // with
  finally
    FreeAndNil(AccountpF);
  end; // try
end;

procedure TAccountpF.BtnAccTopicCodeClick(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('AccTopicCode').AsString :=
    SpeedButtonTopicCode(qrySource.FieldByName('AccTopicCode').AsString);
end;

procedure TAccountpF.BtnAccDetailCodeClick(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('AccDetailCode').AsString :=
    SpeedButtonDetailCode(qrySource.FieldByName('AccDetailCode').AsString,
    qrySourceAccTopicCode.AsInteger)
end;

procedure TAccountpF.btnAccCTopicCodeClick(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('AccCTopiccode').AsString :=
    SpeedButtonCTopicCode(qrySource.FieldByName('AccCTopiccode').AsString,
    qrySourceAccTopicCode.AsInteger)
end;

procedure TAccountpF.btnAccCTopicCode2Click(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('AccCTopiccode2').AsString :=
    SpeedButtonCTopicCode2(qrySource.FieldByName('AccCTopiccode2').AsString,
    qrySource.FieldByName('AccCTopiccode').AsInteger)
end;

procedure TAccountpF.btnAccCTopicCode3Click(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('AccCTopiccode3').AsString :=
    SpeedButtonCTopicCode3(qrySource.FieldByName('AccCTopiccode3').AsString,
    qrySource.FieldByName('AccCTopiccode2').AsInteger)
end;

procedure TAccountpF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qrySource);
end;

procedure TAccountpF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('AccTopicCodeB').AsString :=
    SpeedButtonTopicCode(qrySource.FieldByName('AccTopicCodeB').AsString);
end;

procedure TAccountpF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  qrySource.FieldByName('AccDetailCodeB').AsString :=
    SpeedButtonDetailCode(qrySource.FieldByName('AccDetailCodeB').AsString,
    qrySourceAccTopicCodeB.AsInteger)
end;

end.
