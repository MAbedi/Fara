// mahmood 1384
unit Counting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, db, Mask, ADODB, Menus, FaraConsts, System.Actions;

type
  TCountingF = class(TTemplate4F)
    BtnReject: TBitBtn;
    BitBtn9: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryCounting: TADOQuery;
    qryCountingCountID: TIntegerField;
    qryCountingCountNumber: TIntegerField;
    qryCountingCountDate: TStringField;
    qryCountingNote: TStringField;
    qryCountingAttachFileName: TStringField;
    qryCountingFormSignature: TStringField;
    qryCountingState: TWordField;
    SrcCounting: TDataSource;
    OpenDialog1: TOpenDialog;
    btnState: TBitBtn;
    Panel2: TPanel;
    Label8: TLabel;
    EdtCountNumber: TDBEdit;
    SpeedButton2: TSpeedButton;
    EdtDate: TDBEdit;
    Label10: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    DBNavigator1: TDBNavigator;
    actSearch_: TAction;
    actPrint: TAction;
    dbtxtState: TDBText;
    actState: TAction;
    pm1: TPopupMenu;
    mnuState: TMenuItem;
    actState0: TAction;
    mnuState0: TMenuItem;
    mnuN1: TMenuItem;
    qryCountingCountingCalckind: TWordField;
    dbrgrpCountingCalckind: TDBRadioGroup;
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCountingAfterInsert(DataSet: TDataSet);
    procedure SrcCountingStateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryCountingBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryCountingAfterPost(DataSet: TDataSet);
    procedure EdtCountNumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryCountingBeforeDelete(DataSet: TDataSet);
    procedure qryCountingAfterDelete(DataSet: TDataSet);
    procedure actStateExecute(Sender: TObject);
    procedure qryCountingStateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actState0Execute(Sender: TObject);
    procedure btnStateClick(Sender: TObject);
  private
    { Private declarations }
    function ValidData: Boolean;
  public
    { Public declarations }
    procedure enter;
  end;

var
  CountingF: TCountingF;

implementation

uses DM, GlobalPro, shamsiDate, searchCode_ADO, mmessage, FormFunctions;

{$R *.dfm}

procedure TCountingF.enter;
begin
  CountingF := TCountingF.Create(Self);
  try
    with CountingF do
    begin
      ShowModal;
    end; // with
  finally
    FreeAndNil(CountingF);
  end; // try
end;

procedure TCountingF.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TCountingF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if qryCounting.State in dseditmodes then
    if get_response('«ÿ·«⁄«  À»  ‘Êœ.') = mrYes then
      DataSetPost1.Execute
    else
      DataSetCancel1.Execute;
end;

procedure TCountingF.qryCountingAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CountID').AsInteger := GetANewCode(Self.Name, 'Counting',
    'CountID');
  DataSet.FieldByName('CountNumber').AsInteger :=
    GetANewCode(Self.Name, 'Counting', 'CountNumber');
  DataSet.FieldByName('CountDate').AsString := APPBank.endYear;
  DataSet.FieldByName('CountingCalckind').AsInteger := 0;
  EdtCountNumber.SetFocus;
end;

procedure TCountingF.SrcCountingStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCounting.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TCountingF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.FileName := qryCounting.FieldByName('AttachFileName').AsString;
  if OpenDialog1.Execute then
  begin
    if not(qryCounting.State in dseditmodes) then
      qryCounting.Edit;
    qryCounting.FieldByName('AttachFileName').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

function TCountingF.ValidData: Boolean;
var
  s: String;
begin
  Result := False;
  s := qryCounting.FieldByName('CountDate').AsString;
  if not validate_date(False, APPBank.StartYear, APPBank.endYear,
    ' «—ÌŒ', s) then
  begin
    EdtDate.SetFocus;
    Exit;
  end; // if
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM Counting WHERE(CountNumber=' +
      qryCounting.FieldByName('CountNumber').AsString + ')AND (CountID <> ' +
      qryCounting.FieldByName('CountID').AsString + ')';
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn('‘„«—Â Ê«—œ ‘œÂ  ﬂ—«—Ì „Ìù»«‘œ.');
      EdtCountNumber.SetFocus;
      Exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

procedure TCountingF.qryCountingBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryCounting) then
    Abort;
  if not ValidData then
    Abort;
end;

procedure TCountingF.qryCountingStateGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := GetManifestoStatussState(Sender.AsInteger)
end;

procedure TCountingF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  dbrgrpCountingCalckind.Items.Clear;
  for i := 0 to high(TCountingCalckind) do
    dbrgrpCountingCalckind.Items.Add(TCountingCalckind[i]);

  With qryCounting do
  begin
    Parameters.ParamByName('CountDateFrom').Value := APPBank.StartYear;
    Parameters.ParamByName('CountDateTo').Value := APPBank.endYear;
    Active := True;
    Last;
  end;
end;

procedure TCountingF.SpeedButton2Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT CountID,CountNumber,CountDate FROM Counting ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' «ÿ·«⁄«   ', Txt,
    ['', '‘„«—Â', ' «—ÌŒ'], Results, [0, 50, 50], alLeft);
  if b then
    qryCounting.Locate('CountID', Results[0], []);
end;

procedure TCountingF.qryCountingAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TCountingF.EdtCountNumberKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click
end;

procedure TCountingF.actState0Execute(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« «“ „Êﬁ  ﬂ—œ‰ ›—„ Ã«—Ì „ÿ„∆‰ Â” Ìœ.') = mrYes then
    With qryCounting do
    begin
      Edit;
      qryCountingState.AsInteger := 0;
      Post;
    end;

end;

procedure TCountingF.actStateExecute(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« «“ ﬁÿ⁄Ì ﬂ—œ‰ ›—„ Ã«—Ì „ÿ„∆‰ Â” Ìœ.') = mrYes then
    With qryCounting do
    begin
      Edit;
      qryCountingState.AsInteger := 1;
      Post;
    end;
end;

procedure TCountingF.btnStateClick(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCountingF.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // if key=32 then SpeedButton1.Click
end;

procedure TCountingF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  SpeedButton2.Click;
end;

procedure TCountingF.qryCountingBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TCountingF.qryCountingAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('›—„ Õ–› ‘œ.', 1);
end;

end.
