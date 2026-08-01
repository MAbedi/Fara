unit vjForm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  CheckLst, ComCtrls, DB, ADODB, System.Actions;

type
  TvjForm1F = class(TTemplate4F)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    CheckListBox1: TCheckListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtSource1: TEdit;
    edtDest1: TEdit;
    Label4: TLabel;
    tblSrc: TADOTable;
    tblTrg: TADOTable;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    Label5: TLabel;
    BtnDelete: TBitBtn;
    Label6: TLabel;
    TabSheet2: TTabSheet;
    BitBtn3: TBitBtn;
    adcTarget: TADOConnection;
    SpeedButton1: TSpeedButton;
    lstDefaults1: TListBox;
    qry4delete: TADOQuery;
    adcSrc: TADOConnection;
    procedure FormCreate(Sender: TObject);
    procedure CheckListBox1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChangePage;

  public
    procedure CheckExistance;
    function CopyTable(tblName: String): boolean; // srcBankName,trgBankName,
    procedure AssignBankName(adc: TADOConnection; dbName: String);
    function CopyChecked: boolean;
    procedure DeleteTable(tblName: string);
    { Public declarations }
  end;

var
  vjForm1F: TvjForm1F;

implementation

uses DM, GlobalPro, mmessage, FaraConsts;

{$R *.dfm}

procedure TvjForm1F.AssignBankName(adc: TADOConnection; dbName: String);
begin
  tblTrg.Active := False;
  tblSrc.Active := False;
  adc.Connected := False;
  adc.ConnectionString := GetConStr(dbName, 30);
  adc.Open;
end;

procedure TvjForm1F.CheckExistance;
var
  i: Integer;
  lst: TStringList;
begin
  inherited;
  lst := TStringList.Create;
  try
    DMF.adcBSell.GetTableNames(lst, False);
    for i := 0 to CheckListBox1.Count - 1 do
      CheckListBox1.Checked[i] := lst.IndexOf(CheckListBox1.Items[i]) <> -1;
  finally
    lst.Free;
  end; // try
end;

function TvjForm1F.CopyChecked: boolean;
var
  i: Integer;
  srcBankName, trgBankName: String;
begin
  Result := True;
  srcBankName := Trim(edtSource1.Text);
  trgBankName := Trim(edtDest1.Text);
  AssignBankName(adcTarget, trgBankName);
  AssignBankName(adcSrc, srcBankName);
  if adcTarget.InTransaction then
    adcTarget.RollbackTrans;
  adcTarget.BeginTrans;
  for i := 0 to CheckListBox1.Count - 1 do
    if CheckListBox1.Checked[i] then
      Result := Result and CopyTable(CheckListBox1.Items[i]);
  // srcBankName,trgBankName,
  // CopyTable(srcBankName,trgBankName,CheckListBox1.Items[i]);
  if Result then
    adcTarget.CommitTrans
  else
    adcTarget.RollbackTrans;
end;

function TvjForm1F.CopyTable(tblName: String): boolean;
// srcBankName,trgBankName,
var
  i: Integer;
begin
  Label6.Caption := tblName;
  Application.ProcessMessages;
  Result := False;
  try
    with tblSrc do
    begin
      Active := False;
      Close;
      TableName := tblName;
      Active := True;
      First;
    end; // with
    with tblTrg do
    begin
      Active := False;
      Close;
      TableName := tblName;
      Active := True;
    end; // with
  except
  end; // try
  while not tblSrc.Eof do
  begin
    tblTrg.Insert;
    for i := 0 to tblSrc.FieldCount - 1 do
      if tblTrg.FindField(tblSrc.Fields[i].FieldName) <> nil then
        tblTrg.FieldByName(tblSrc.Fields[i].FieldName).Value :=
          tblSrc.Fields[i].Value;
    tblTrg.Post;
    tblSrc.Next;
  end; // while
  Result := True;
end;

procedure TvjForm1F.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 1;
  ChangePage;
  CheckExistance;
  edtSource1.Text := APPBank.Name;
  SetKeyboardLatin;
  BtnDelete.Visible := User.admin;
  TabSheet1.Enabled := User.admin;
end;

procedure TvjForm1F.CheckListBox1DblClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to CheckListBox1.Count - 1 do
    CheckListBox1.Checked[i] := not CheckListBox1.Checked[i];
end;

procedure TvjForm1F.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if CopyChecked then
  begin
    BigMessage('ﬂÅÌ ‘œ.', 1);
    Label6.Caption := '';
  end;
end;

procedure TvjForm1F.Timer1Timer(Sender: TObject);
begin
  inherited;
  Label2.Visible := not Label2.Visible;
  Label5.Visible := not Label2.Visible;
end;

procedure TvjForm1F.BtnDeleteClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  warn('œ— ’Ê—   √ÌÌœ Â„Â «ÿ·«⁄«  «“ »Ì‰ „Ìù—Ê‰œ!');
  if get_response('¬Ì« „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Exit;
  AssignBankName(adcTarget, Trim(edtSource1.Text));
  for i := CheckListBox1.Count - 1 downto 0 do
    if CheckListBox1.Checked[i] then
      DeleteTable(CheckListBox1.Items[i]);
  BigMessage('«‰Ã«„ ‘œ!', 1);
end;

procedure TvjForm1F.DeleteTable(tblName: string);
begin
  with qry4delete do
  begin
    Active := False;
    SQL.Text := 'Delete from ' + tblName;
    ExecSQL;
    Active := False;
  end; // with
end;

procedure TvjForm1F.BitBtn3Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := Trim(get_box(' €ÌÌ— ‰«„ ‘—ﬂ ', '·ÿ›« ‰«„ ÃœÌœ —« Ê«—œ ﬂ‰Ìœ:',
    APPBank.CompanyName));
  if s = '' then
    s := APPBank.CompanyName;
  with DMF.qryGlbTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Update Sections Set CompanyName=:cname  where sid=:sid';
    Parameters[0].Value := s;
    Parameters[1].Value := APPBank.ID;
    if ExecSQL > 0 then
      BigMessage('«‰Ã«„ ‘œ!', 1);
    APPBank.CompanyName := s;
    Active := False;
  end; // with
end;

procedure TvjForm1F.SpeedButton1Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to CheckListBox1.Count - 1 do
    CheckListBox1.Checked[i] := lstDefaults1.Items.IndexOf
      (CheckListBox1.Items[i]) <> -1;
end;

procedure TvjForm1F.ChangePage;
begin
end;

end.
