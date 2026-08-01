unit Contacts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, DB, ADODB, Grids, Vcl.DBGrids, System.ImageList,
  System.Actions;

type
  TContactsF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryContacts: TADOQuery;
    qryContactsContactID: TAutoIncField;
    qryContactsContactNo: TStringField;
    qryContactsContactDate: TStringField;
    qryContactsState: TWordField;
    qryContactsContactTopic: TStringField;
    qryContactsStartDate: TStringField;
    qryContactsEndDate: TStringField;
    qryContactsPrice: TBCDField;
    qryContactsWorkPlace: TStringField;
    qryContactsDetailCode: TIntegerField;
    qryContactsCTopicCode: TIntegerField;
    qryContactsCtopicCode2: TIntegerField;
    qryContactsCtopicCode3: TIntegerField;
    srcContacts: TDataSource;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    cmbState: TDBComboBox;
    qry_Details: TADOQuery;
    qryContacts_DetailName: TStringField;
    DBEdit4: TDBEdit;
    qry_CTopics: TADOQuery;
    qryContacts_Ctopic1: TStringField;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    qry_CTopics2: TADOQuery;
    qryContacts_Ctopic2: TStringField;
    qry_CTopics3: TADOQuery;
    qryContacts_Ctopic3: TStringField;
    DBEdit16: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn6: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    qryContactsRegistrationNumber: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    qryContactsYearID: TIntegerField;
    qryContactsAddress: TWideStringField;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit17: TDBEdit;
    procedure qryContactsAfterInsert(DataSet: TDataSet);
    procedure qryContactsStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryContactsStateSetText(Sender: TField; const Text: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure qryContactsAfterPost(DataSet: TDataSet);
    procedure qryContactsBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcContactsStateChange(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryContactsBeforePost(DataSet: TDataSet);
  private
    function CheckContact(aNo: String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContactsF: TContactsF;

implementation

uses Dm, searchCode_ADO, search2, sort2, GlobalPro, mmessage;
{$R *.dfm}

procedure TContactsF.qryContactsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBEdit2.SetFocus;
  qryContactsYearID.AsInteger := APPBank.Year;
  DataSet.FieldByName('ContactDate').AsString := var_glb_CurrentDate;

end;

procedure TContactsF.qryContactsStateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := cmbState.Items[Sender.asinteger]
end;

procedure TContactsF.qryContactsStateSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.asinteger := cmbState.ItemIndex;
end;

procedure TContactsF.SpeedButton1Click(Sender: TObject);
var
  results: array [0 .. 1] of string;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcAccounting, '·Ì”  Õ”«»Â«Ì  ÷Ì·Ì',
    'SELECT DetailCode, DetailName_L1 FROM  Acc.Details', ['ﬂœ', '⁄‰Ê«‰'],
    results, [30, 200], alLeft) then
  begin
    if not(qryContacts.State in dseditmodes) then
      qryContacts.Edit;
    qryContacts.FieldByName('DetailCode').AsString := results[0];

  end;

end;

procedure TContactsF.SpeedButton2Click(Sender: TObject);
var
  results: array [0 .. 1] of string;

begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcAccounting, '·Ì”  Õ”«»Â«Ì  ›’Ì·Ì 1',
    '  SELECT CTopicCode, CTopicName_L1 FROM  Acc.CenterTopics',
    ['ﬂœ', '⁄‰Ê«‰'], results, [30, 200], alLeft) then
  begin
    if not(qryContacts.State in dseditmodes) then
      qryContacts.Edit;
    qryContacts.FieldByName('CTopicCode').AsString := results[0];

  end;
end;

procedure TContactsF.SpeedButton3Click(Sender: TObject);
var
  results: array [0 .. 1] of string;

begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcAccounting, '·Ì”  Õ”«»Â«Ì  ›’Ì·Ì 3',
    'SELECT  CTopicCode2, CTopicName2_L1 FROM  Acc.CenterTopics2',
    ['ﬂœ', '⁄‰Ê«‰'], results, [30, 200], alLeft) then
  begin
    if not(qryContacts.State in dseditmodes) then
      qryContacts.Edit;
    qryContacts.FieldByName('CTopicCode2').AsString := results[0];
  end;

end;

procedure TContactsF.SpeedButton4Click(Sender: TObject);
var
  results: array [0 .. 1] of string;

begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcAccounting, '·Ì”  Õ”«»Â«Ì  ›’Ì·Ì 4',
    'SELECT CTopicCode3, CTopicName3_L1 FROM  Acc.CTopicCode3',
    ['ﬂœ', '⁄‰Ê«‰'], results, [30, 200], alLeft) then
  begin
    if not(qryContacts.State in dseditmodes) then
      qryContacts.Edit;
    qryContacts.FieldByName('CTopicCode3').AsString := results[0];
  end;

end;

procedure TContactsF.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton1.Click;
end;

procedure TContactsF.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton2.Click;
end;

procedure TContactsF.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton3.Click;
end;

procedure TContactsF.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton4.Click;
end;

procedure TContactsF.qryContactsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TContactsF.qryContactsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂœ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TContactsF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryContacts);
  with qryContacts do
  begin
    Close;
    Parameters.ParamByName('Year').Value := APPBank.Year;
    Open;
  end;
end;

procedure TContactsF.srcContactsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryContacts.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  //FreeReservedCodes(DMf.adcAccounting);
end;

procedure TContactsF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryContacts);
end;

procedure TContactsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryContacts);
end;

procedure TContactsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TContactsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TContactsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TContactsF.qryContactsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryContacts) then
    Abort;
  if not ValidateDatasetDates(qryContacts) then
    Abort;
  if DataSet.FieldByName('StartDate').AsString > DataSet.FieldByName('EndDate')
    .AsString then
  begin
    Warn('‘—Ê⁄ ﬁ—«—œ«œ ‰«„⁄ »— «” ');
    Abort;
  end;
  if not(DataSet.State in [dsedit]) then
    if not CheckContact(DataSet.FieldByName('Contactno').AsString) then
    begin
      Warn('‘„«—Â ﬁ—œ«œ  ò—«—Ì «” ');
      Abort;
    end;

end;

function TContactsF.CheckContact(aNo: String): Boolean;
begin
  // Result := True;

  with TADOQuery.Create(Self) do
    try
      Connection := DMf.adcAccounting;
      SQL.Text := Format(
        'Select count(*) from acc.Contacts where ContactNo = %s',
        [QuotedStr(aNo)]);
      Open;
      Result := Fields[0].asinteger = 0;
    finally
      Free;
    end;

end;

end.
