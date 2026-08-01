// mahmood 83/03/18
unit Note;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList, db, ComCtrls,
  Mask, DBCtrls, System.Actions, Data.Win.ADODB;

type
  TNoteF = class(Ttemplate0F)
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    edtReciptStartDate: TDBEdit;
    edtReciptEndDate: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbmmoReciptNote: TDBMemo;
    SrcNote: TDataSource;
    btn1: TBitBtn;
    dbmmoReciptNote2: TDBMemo;
    btn2: TBitBtn;
    memNote: TMemo;
    qryNote: TADOQuery;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    edtMachineNo: TDBEdit;
    edtMachineName: TDBEdit;
    edtMachineInfo: TDBEdit;
    Label5: TLabel;
    edtTruckNumber: TDBEdit;
    Label6: TLabel;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    EditONOrginalQRy: Boolean;
    qryRecipts: TADOQuery;
    { Private declarations }
  public
    procedure enter(aDataSet: TDataSet;
      MainFormIsEditableNote: Boolean); overload;
    procedure enter(tblName, NoteL1, NoteL2, filterField,
      filterValue: STRING); overload;
    function CallNote(aNote: String): String;
    { Public declarations }
  end;

var
  NoteF: TNoteF;

implementation

uses searchCode_ADO, FaraConsts, shamsiDate;

{$R *.dfm}

procedure TNoteF.actOkExecute(Sender: TObject);
begin
  inherited;
  if EditONOrginalQRy then
  begin
    if qryRecipts.Active then
      qryRecipts.Post;
  end;

  NoteF.Close;
end;

procedure TNoteF.btn1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
  fName, SQLtxt: string;
begin
  inherited;
  fName := (Sender as TBitBtn).Hint;
  SQLtxt := Format
    ('SELECT DISTINCT %s FROM Recipts WHERE(LEN(%s) > 1)AND(ReciptType in(26, %d ))',
    [fName, fName, SrcNote.DataSet.FieldByName('ReciptType').AsInteger]);
  s := searchCode_ADOF.SearchCode2(theMainConnection, 'شرح ها', SQLtxt,
    [' شرح '], Results, [200], alLeft);
  if s then
  begin
    if not(SrcNote.DataSet.State in dsEditModes) then
      SrcNote.DataSet.edit;
    SrcNote.DataSet.FieldByName(fName).AsString :=
      SrcNote.DataSet.FieldByName(fName).AsString + #13#10 + Results[0];

  end;
end;

procedure TNoteF.enter(aDataSet: TDataSet; MainFormIsEditableNote: Boolean);
begin
  NoteF := TNoteF.Create(Application);
  try
    with NoteF do
    begin
      EditONOrginalQRy := MainFormIsEditableNote;
      SrcNote.AutoEdit := False;
      qryRecipts := TADOQuery.Create(Self);
      if EditONOrginalQRy then
        With qryRecipts do
        begin
          Connection := TADOQuery(aDataSet).Connection;
          SQL.Text := 'SELECT ReciptNote, ReciptNote2, ReciptStartDate';
          SQL.Add(',ReciptEndDate,ReciptType,MachineName,MachineNo,MachineInfo,TruckNumber');
          SQL.Add('FROM Recipts');
          SQL.Add('WHERE (ID = :ID )');
          Active := False;
          Parameters.ParamByName('ID').Value := aDataSet.FieldByName('ID')
            .AsLargeInt;
          Active := True; // lblMachineNo
          SrcNote.AutoEdit := True;
          SrcNote.DataSet := qryRecipts;
        end
      else
        SrcNote.DataSet := aDataSet;
      memNote.Visible := False;
      dbmmoReciptNote2.Visible := aDataSet.FindField('ReciptNote2') <> nil;
      btn2.Visible := dbmmoReciptNote2.Visible;
      if dbmmoReciptNote2.Visible then
        dbmmoReciptNote2.DataField := 'ReciptNote2';
      ShowModal;
    end; // with
  finally
    if  MainFormIsEditableNote then
      aDataSet.Refresh;
    FreeAndNil(NoteF);
  end;
end;

procedure TNoteF.enter(tblName, NoteL1, NoteL2, filterField,
  filterValue: STRING);
begin
  NoteF := TNoteF.Create(Application);
  try
    with NoteF do
    begin
      with qryNote do
      begin
        Active := False;
        SQL.Text := 'select ' + NoteL1 + ' as Note_L1 ,' + NoteL2 +
          ' as Note_L2 ' + ' from ' + tblName + ' where ' + filterField + '=' +
          filterValue;

        dbmmoReciptNote.DataField := 'Note_L1';
        dbmmoReciptNote2.DataField := 'Note_L2';
        SrcNote.DataSet := qryNote;
        Active := True;
      end;
      ShowModal;
    end; // with
  finally
    FreeAndNil(NoteF);
  end; // try
end;

function TNoteF.CallNote(aNote: String): String;
begin
  with TNoteF.Create(Application) do
    try
      dbmmoReciptNote.Visible := False;
      dbmmoReciptNote2.Visible := False;
      memNote.Align := alClient;
      memNote.Text := aNote;
      if ShowModal = mrOk then
        Result := memNote.Text
      else
        Result := aNote;
    finally
      Free;
    end;
end;

procedure TNoteF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  ReciptEndDate: string;
begin
  inherited;
  ReciptEndDate := edtReciptEndDate.Text;
  if not validate_date(True, '', '', 'تاريخ ', ReciptEndDate) then
    CanClose := False;

end;

procedure TNoteF.FormDestroy(Sender: TObject);
begin
  inherited;
  qryRecipts.Free
end;

procedure TNoteF.actCancelExecute(Sender: TObject);
begin
  inherited;
  // if SrcNote.DataSet.State in dsEditModes then
  // SrcNote.DataSet.Cancel;  // لغو تغییرات اگر در حالت Edit باشد
  NoteF.Close;
end;

end.
