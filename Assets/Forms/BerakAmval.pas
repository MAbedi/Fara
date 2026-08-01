unit BerakAmval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, System.ImageList,
  FaraConsts, System.Actions;

type
  TBerakAmvalF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryBerakAmval: TADOQuery;
    srcBerakAmval: TDataSource;
    qryBerakAmvalID: TIntegerField;
    qryBerakAmvalSerialNum: TIntegerField;
    qryBerakAmvalStartDate: TStringField;
    qryBerakAmvalEndDate: TStringField;
    qryBerakAmvalNote: TWideStringField;
    qryBerakAmval_AmvalDes: TStringField;
    qryBerakAmval_PelakNum: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    newPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actSendToExcel: TAction;
    BitBtn9: TBitBtn;
    actAmval: TAction;
    qryBerakAmvalFirstUser: TStringField;
    qryBerakAmvalLastUser: TStringField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure srcBerakAmvalStateChange(Sender: TObject);
    procedure qryBerakAmvalAfterInsert(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure qryBerakAmvalAfterPost(DataSet: TDataSet);
    procedure qryBerakAmvalBeforeDelete(DataSet: TDataSet);
    procedure qryBerakAmvalBeforePost(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSort_Execute(Sender: TObject);
    procedure qryBerakAmvalAfterDelete(DataSet: TDataSet);
    procedure qryBerakAmvalStartDateChange(Sender: TField);
    procedure actAmvalExecute(Sender: TObject);
    procedure qryBerakAmvalAfterEdit(DataSet: TDataSet);
  private
    function BetweenValidDate(InpuDate: String; Sn: integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BerakAmvalF: TBerakAmvalF;

implementation

uses Dm, GlobalPro, searchCode_ADO, search2, mmessage, sort2, Amval,
  AssetsFunctions;

{$R *.dfm}

procedure TBerakAmvalF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TBerakAmvalF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TBerakAmvalF.SpeedButton1Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(DMF.adcBsell, c, 'Ã” ÃÊÌ œ«—«ÌÌ',
    'SELECT SerialNum, StuffDesc FROM assets.Amval', ['”—Ì«· ﬂ«·«', '‰«„ ﬂ«·«'],
    alLeft) <> EmptyStr then
  begin
    if not(qryBerakAmval.State in dseditmodes) then
      qryBerakAmval.Edit;
    qryBerakAmval.fieldbyname('SerialNum').AsString := c;
  end;
end;

procedure TBerakAmvalF.srcBerakAmvalStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryBerakAmval.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcBsell);

end;

procedure TBerakAmvalF.qryBerakAmvalAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('FirstUser').AsString := GetUserStamp;
  DataSet.fieldbyname('ID').AsInteger :=
    GetANewCode(Self.Name, 'assets.BerakAmval', 'ID');
  DBEdit1.SetFocus;
end;

procedure TBerakAmvalF.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton1.Click;
end;

procedure TBerakAmvalF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryBerakAmval);
  qryBerakAmval.Open;
end;

procedure TBerakAmvalF.qryBerakAmvalAfterPost(DataSet: TDataSet);
begin
  inherited;
  Tcalculate.AmvalCal(opt.BaseDate, qryBerakAmvalSerialNum.AsInteger);
  BigMessage('À»  ‘œ.', 1);

end;

procedure TBerakAmvalF.qryBerakAmvalBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–›  „ÿ∆„‰ Â” Ìœøû') <> mrYes then
    Abort;
end;

procedure TBerakAmvalF.qryBerakAmvalBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not BetweenValidDate(DataSet.fieldbyname('StartDate').AsString,
    DataSet.fieldbyname('SerialNum').AsInteger) then
  begin
    FlashAControl(DBEdit3);
    DBEdit3.SetFocus;
    Abort;
  end;
  if (Trim(DataSet.fieldbyname('EndDate').AsString) <> EmptyStr) and
    (DataSet.fieldbyname('EndDate').AsString > '0001/01/01') then
    if not(BetweenValidDate(DataSet.fieldbyname('EndDate').AsString,
      DataSet.fieldbyname('SerialNum').AsInteger)) OR
      (DataSet.fieldbyname('EndDate').AsString < DataSet.fieldbyname
      ('StartDate').AsString) then
    begin
      FlashAControl(DBEdit4);
      DBEdit4.SetFocus;
      Abort;
    end;

end;

procedure TBerakAmvalF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBerakAmval);
end;

procedure TBerakAmvalF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBerakAmvalF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBerakAmval);
end;

procedure TBerakAmvalF.qryBerakAmvalAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1)
end;

procedure TBerakAmvalF.qryBerakAmvalAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('LastUser').AsString := GetUserStamp;

end;

function TBerakAmvalF.BetweenValidDate(InpuDate: String; Sn: integer): Boolean;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := DMF.adcBsell;
      SQL.Text :=
        'SELECT Count(ID) FROM  assets.BerakAmval WHERE  (StartDate <= %s) AND (EndDate >= %s)';
      SQL.Add('AND (SerialNum = %d) and (Id <> %d)');
      SQL.Text := Format(SQL.Text, [QuotedStr(InpuDate), QuotedStr(InpuDate),
        Sn, qryBerakAmval.fieldbyname('ID').AsInteger]);
      Open;
      Result := not(Fields[0].AsInteger > 0);
      if NOT Result then
        Warn(' «—ÌŒ ‰«„⁄ »— «”  . œ— «Ì‰  «—ÌŒ ﬁ»·«  Êﬁ› À»  ‘œÂ «” .˛')
      else
        Result := (TAssetsFunctions.CheckUsingDate(InpuDate, Sn));

    finally
      Free;
    end;
end;

procedure TBerakAmvalF.qryBerakAmvalStartDateChange(Sender: TField);
var
  edt: TDBEdit;
begin
  inherited;
  if not BetweenValidDate(Sender.AsString,
    qryBerakAmval.fieldbyname('SerialNum').AsInteger) then
  begin
    if Sender.FieldName = 'StartDate' then
      edt := DBEdit3
    else
      edt := DBEdit4;
    FlashAControl(edt);
    edt.SetFocus;
  end;
end;

procedure TBerakAmvalF.actAmvalExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TAmvalF, AmvalF, Self, qryBerakAmval.fieldbyname('SerialNum')
    .AsInteger)
end;

end.
