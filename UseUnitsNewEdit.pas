// mahmood 1384/02/26
unit UseUnitsNewEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, db, Mask, System.Actions;

type
  TUseUnitsNewEditF = class(TTemplate4F)
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label10: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBText2: TDBText;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBText3: TDBText;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBText4: TDBText;
    DBText5: TDBText;
    SpeedButton5: TSpeedButton;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    dbchkUseActive: TDBCheckBox;
    lblYearID: TLabel;
    edtYearID: TDBEdit;
    DBEdit9: TDBEdit;
    Label5: TLabel;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    txt_CustID1: TDBText;
    btnCustID1: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    btnCustID2: TSpeedButton;
    txt_CustID2: TDBText;
    edtCustID1: TDBEdit;
    edtCustID2: TDBEdit;
    txt_CustID3: TDBText;
    btnCustID3: TSpeedButton;
    Label9: TLabel;
    Label14: TLabel;
    btnCustID4: TSpeedButton;
    txt_CustID4: TDBText;
    edtCustID3: TDBEdit;
    edtCustID4: TDBEdit;
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnCustID1Click(Sender: TObject);
    procedure btnCustID2Click(Sender: TObject);
    procedure edtCustID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCustID2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCustID3Click(Sender: TObject);
    procedure btnCustID4Click(Sender: TObject);
    procedure edtCustID3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCustID4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure enter(act: TDataSetState);
  end;

var
  UseUnitsNewEditF: TUseUnitsNewEditF;

implementation

uses DM, GlobalPro, ADODB, UseUnits, FormFunctions;

{$R *.dfm}

procedure TUseUnitsNewEditF.edtCustID1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnCustID1.Click;
end;

procedure TUseUnitsNewEditF.edtCustID2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnCustID2.Click;
end;

procedure TUseUnitsNewEditF.edtCustID3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnCustID3.Click;
end;

procedure TUseUnitsNewEditF.edtCustID4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnCustID4.Click;
end;

procedure TUseUnitsNewEditF.enter(act: TDataSetState);
begin
  UseUnitsNewEditF := TUseUnitsNewEditF.Create(UseUnitsF);
  try
    with UseUnitsNewEditF do
    begin
      case act of
        dsInsert:
          Caption := 'À»  „Õ· Â«Ì „’—›';
        dsEdit:
          Caption := 'ÊÌ—«Ì‘ „‘Œ’«  „Õ· Â«Ì „’—›';
      end; // case
      ShowModal;
    end; // with
  finally
    FreeAndNil(UseUnitsNewEditF);
  end; // try
end;

procedure TUseUnitsNewEditF.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TUseUnitsNewEditF.FormCreate(Sender: TObject);
begin
  inherited;
  lblTopic0.Caption := '„Õ· Â«Ì „’—›';
  lblTopic1.Caption := '';
  lblYearID.Visible := opt.UseUnitsYearID;
  edtYearID.Visible := opt.UseUnitsYearID;
end;

procedure TUseUnitsNewEditF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if UseUnitsF.qryUseUnits.State in dseditmodes then
    if get_response('«ÿ·«⁄«  À»  ‘Êœ.') = mrYes then
      DataSetPost1.Execute
    else
      DataSetCancel1.Execute;
end;

procedure TUseUnitsNewEditF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonProjectsCode(UseUnitsF.qryUseUnits, 'ProjectID', '', False)
end;

procedure TUseUnitsNewEditF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(UseUnitsF.qryUseUnits)
end;

procedure TUseUnitsNewEditF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(UseUnitsF.qryUseUnits)
end;

procedure TUseUnitsNewEditF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(UseUnitsF.qryUseUnits)
end;

procedure TUseUnitsNewEditF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(UseUnitsF.qryUseUnits)
end;

procedure TUseUnitsNewEditF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(UseUnitsF.qryUseUnits)
end;

procedure TUseUnitsNewEditF.btnCustID1Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes(UseUnitsF.qryUseUnitsCustID1, '11')
end;

procedure TUseUnitsNewEditF.btnCustID2Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes(UseUnitsF.qryUseUnitsCustID2, '11')
end;

procedure TUseUnitsNewEditF.btnCustID3Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes(UseUnitsF.qryUseUnitsCustID3, '11')
end;

procedure TUseUnitsNewEditF.btnCustID4Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes(UseUnitsF.qryUseUnitsCustID4, '11')
end;

procedure TUseUnitsNewEditF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click;
end;

procedure TUseUnitsNewEditF.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click;
end;

procedure TUseUnitsNewEditF.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton4.Click;
end;

procedure TUseUnitsNewEditF.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

end.
