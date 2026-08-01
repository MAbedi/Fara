unit Negotiations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, ValEdit, DBCtrls, Mask, ExtDlgs,
  ComCtrls, System.ImageList, System.Actions;

type
  TNegotiationsF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    Panel5: TPanel;
    actFilter: TAction;
    actShow: TAction;
    actAdd: TAction;
    actRemove: TAction;
    actScan: TAction;
    actShowFile: TAction;
    btnAdd: TBitBtn;
    btnRemove: TBitBtn;
    btnScan: TBitBtn;
    btnShowFile: TBitBtn;
    actExcel: TAction;
    actSearch: TAction;
    actSort: TAction;
    Panel6: TPanel;
    qryNegotiations: TADOQuery;
    srcNegotiations: TDataSource;
    qryNegotiationsNegotiationsID: TAutoIncField;
    qryNegotiationsCustID: TIntegerField;
    qryNegotiationsNegotiationsDate: TStringField;
    qryNegotiationsAudience: TStringField;
    qryNegotiationsNegDescription: TStringField;
    qryNegotiationsReciptID: TIntegerField;
    qryNegotiationsServerID: TIntegerField;
    qryNegotiationsYearID: TIntegerField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsCustName: TStringField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsReciptNote: TStringField;
    qryCustomers: TADOQuery;
    OpenDialog1: TOpenDialog;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    edtCountry: TLabeledEdit;
    Panel8: TPanel;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryInitQry: TADOQuery;
    btnSelectAll1: TBitBtn;
    btnShow: TBitBtn;
    edtCustID: TDBEdit;
    edtCustName: TLabeledEdit;
    DBEdit2: TDBEdit;
    Panel9: TPanel;
    ListView1: TListView;
    procedure FormCreate(Sender: TObject);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actRemoveExecute(Sender: TObject);
    procedure qryNegotiationsAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure srcNegotiationsStateChange(Sender: TObject);
    procedure qryNegotiationsAfterInsert(DataSet: TDataSet);
    procedure actShowFileExecute(Sender: TObject);
    procedure qryNegotiationsAfterScroll(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure qryNegotiationsBeforeDelete(DataSet: TDataSet);
    procedure edtCustIDKeyPress(Sender: TObject; var Key: Char);
    procedure actScanExecute(Sender: TObject);
  private
    FArchive: String;

    procedure RefreshFiles;
    procedure RefreshCustomers;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NegotiationsF: TNegotiationsF;

implementation

uses
  DM, GlobalPro, shamsiDate, mmessage, DateUtils, Math, searchCode_ADO,
  filter_ADO, FilterClass_ADO, FormFunctions, ScanImage;

{$R *.dfm}

procedure TNegotiationsF.FormCreate(Sender: TObject);
begin
  inherited;
  qryInitQry.Active := True;
  FArchive := ExtractFilePath(Application.ExeName) +
    'Archive\AllYear\Negotiations\';

end;

procedure TNegotiationsF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryNegotiations do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('YearId').Value := qryRecipts.FieldByName('YearId')
      .AsInteger;
    Parameters.ParamByName('ServerId').Value :=
      qryRecipts.FieldByName('ServerId').AsInteger;
    Active := True;
    ListView1.Clear;
    edtCustName.Text := EmptyStr;
    edtCountry.Text := EmptyStr;
  end;
  RefreshFiles;
end;

procedure TNegotiationsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3);
end;

procedure TNegotiationsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TNegotiationsF.RefreshFiles;
var
  sr: TSearchRec;
  FileDate: String;
  CurPath: String;
  Itm: TListItem;
  fileDateTime: TDateTime;
begin
  ListView1.Clear;
  if not qryNegotiations.Active then
    Exit;
  CurPath := FArchive + qryNegotiationsNegotiationsID.AsString;
  CurPath := IncludeTrailingBackslash(CurPath);
  if FindFirst(CurPath + '*.*', faAnyFile - faDirectory, sr) = 0 then
  begin
    repeat
      FileAge(CurPath + sr.Name, fileDateTime);
      FileDate := miladi2Shamsi(fileDateTime);
      Itm := ListView1.Items.Add;
      Itm.Caption := sr.Name;
      Itm.SubItems.Add(FileDate);
      // ListView1.Items.AddItem(Itm);

    until FindNext(sr) <> 0;
    FindClose(sr);
  end;

end;

procedure TNegotiationsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close;
  RefreshFiles;
end;

procedure TNegotiationsF.actAddExecute(Sender: TObject);
var
  aFileName, CurPath: String;
begin
  inherited;
  If qryNegotiations.IsEmpty then
    Exit;
  if OpenDialog1.Execute then
  begin
    CurPath := IncludeTrailingBackslash
      (FArchive + qryNegotiationsNegotiationsID.AsString);
    SysUtils.ForceDirectories(CurPath);
    aFileName := ExtractFileName(OpenDialog1.FileName);
    CopyFile(PChar(OpenDialog1.FileName), PChar(CurPath + aFileName), False);
    RefreshFiles;
  end;
end;

procedure TNegotiationsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'State', '', 'Ê÷⁄Ì ', ftInteger, dvMinMax, '', '',
        ciSimple, '', 'Select Min(ReciptState),max(ReciptState) from Recipts ');
      AddItem(DMf.adcBSell, 'PersonID1', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,
        ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
        + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
        + Trim(qryInitQry.FieldByName('CustomerKind1').AsString) + '))',

        'SELECT 0,2147483647');

      AddItem(DMf.adcBSell, 'ReciptDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMf.adcBSell, 'number', '', '‘„«—Â', ftInteger, dvMinMax, '', '',
        ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TNegotiationsF.UpdateFilter;
begin
  with qryRecipts Do
  begin
    Active := False;
    Parameters.ParamByName('ReciptStateFrom').Value :=
      GetcFrom(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('ReciptStateTo').Value :=
      GetcTo(myParams.ParamValues['State'], ftInteger);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftString);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftString);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Active := True;
  end; // with

end;

procedure TNegotiationsF.actRemoveExecute(Sender: TObject);
var
  CurPath: String;
begin
  inherited;
  if ListView1.Items.Count > 0 then
  begin
    if get_response('¬Ì« «“Õ–› „ÿ„∆‰ Â” Ìœø˛') <> mrYes then
      Exit;
    CurPath := IncludeTrailingBackslash
      (FArchive + qryNegotiationsNegotiationsID.AsString);
    DeleteFile(CurPath + ListView1.Selected.Caption);
    RefreshFiles;
  end;
end;

procedure TNegotiationsF.qryNegotiationsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TNegotiationsF.RefreshCustomers;

begin
  With qryCustomers do
  begin
    Active := False;
    Parameters.ParamByName('CustID').Value := qryNegotiations.FieldByName
      ('CustID').AsInteger;
    Active := True;
    edtCustName.Text := FieldByName('CustName').AsString;
    edtCountry.Text := FieldByName('Country').AsString;
    RefreshFiles;
  end;
end;

procedure TNegotiationsF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  Results: array [0 .. 6] of String;
begin
  inherited;
  Txt := 'SELECT Customers.CustID, Customers.CustName, Customers.Tel, Customers.Fax,'
    + ' Customers.Address, Customers.FirstBalance, Customers.CustomerGrpID, ' +
    ' CustomersGroup.GroupType FROM         Customers INNER JOIN ' +
    ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + ' WHERE (CustomersGroup.GroupType IN (0, 4, 10)) ';

  if searchCode_ADOF.SearchCode2(DMf.adcBSell, ' Ã” ÃÊ ', Txt,
    ['òœ', '‰«„', ' ·›‰', '›ò”', '¬œ—”', '„«‰œÂ «» œ«Ì ”«·'], Results,
    [30, 150, 80, 80, 200, 100, 0], alLeft) then
  begin
    qryNegotiationsCustID.AsString := Results[0];
    RefreshCustomers;
  end; // if
end;

procedure TNegotiationsF.srcNegotiationsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := (Sender as TDataSource).DataSet.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TNegotiationsF.qryNegotiationsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptID').AsInteger := qryReciptsReciptID.AsInteger;
  DataSet.FieldByName('YearId').AsInteger := qryReciptsYearID.AsInteger;
  DataSet.FieldByName('ServerId').AsInteger := qryReciptsServerID.AsInteger;
  DataSet.FieldByName('NegotiationsDate').AsString := var_glb_CurrentDate;
  edtCustID.SetFocus
end;

procedure TNegotiationsF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts, Self, 0);
end;

procedure TNegotiationsF.actShowFileExecute(Sender: TObject);
var
  S: String;
begin
  inherited;
  S := IncludeTrailingBackslash
    (FArchive + qryNegotiationsNegotiationsID.AsString);
  S := S + ListView1.Selected.Caption;
  RunDoc(S);
end;

procedure TNegotiationsF.qryNegotiationsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshCustomers;
end;

procedure TNegotiationsF.qryNegotiationsBeforeDelete(DataSet: TDataSet);
var
  S: String;
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «ÿ·«⁄«  »« ›«Ì· Â«Ì ÅÌÊ”  ¬‰ „ÿ„∆‰ Â” Ìœø') <>
    mrYes then
    Abort;
  S := FArchive + qryNegotiationsNegotiationsID.AsString;
  DelDir(S);
end;

procedure TNegotiationsF.edtCustIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton1.Click;
end;

procedure TNegotiationsF.actScanExecute(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMf.adcBSell, 'Negotiations', 'NegotiationsID', 1, False,
    '', True);
end;

end.
