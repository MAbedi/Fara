unit Cnt_RunSchedules;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DateUtils, sndkey32, DB, ADODB, DBCtrls, Mask, DM, GlobalPro,
  shamsiDate, Grids, Vcl.DBGrids, Tabs, Menus, System.ImageList, System.Actions;

type
  TCnt_RunSchedulesF = class(Ttemplate2MDIF)
    qryRunSchedules: TADOQuery;
    srcRunSchedules: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    edtWorkShopId: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BtnExcel: TBitBtn;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    srcContracts: TDataSource;
    qryContracts: TADOQuery;
    Panel1: TPanel;
    dbrgrpContractsStatus: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    qryRunSchedulesCaseNo: TIntegerField;
    qryRunSchedulesOperationId: TLargeintField;
    qryRunSchedulesAmount: TBCDField;
    qryStuff_Unit: TADOQuery;
    qryRunSchedules_StuffName: TStringField;
    qryRunSchedules_UnitName: TStringField;
    qryContractsCaseNo: TIntegerField;
    qryContractsYearID: TIntegerField;
    qryContractsCustomerGrpId: TIntegerField;
    qryContractsContractTopic: TWideStringField;
    qryContractsInsertDate: TDateTimeField;
    qryContractsContractRow: TIntegerField;
    qryContractsContractNo: TStringField;
    qryContractsContractDate: TStringField;
    qryContractsEmployerId: TIntegerField;
    qryContractsWorkShopId: TIntegerField;
    qryContractsStartDate: TStringField;
    qryContractsEndDate: TStringField;
    qryContractsExecutionTime: TIntegerField;
    qryContractsActivityStartDate: TStringField;
    qryContractsAnticipateDate: TStringField;
    qryContractsContractBasePrice: TBCDField;
    qryContractsRefInsuranceDate: TStringField;
    qryContractsInsuranceBranch: TWideStringField;
    qryContractsRefAssetsDate: TStringField;
    qryContractsAssetsBranch: TStringField;
    qryContractsContractType: TIntegerField;
    qryContractsUpperCaseNo: TIntegerField;
    qryContractsContractsStatus: TWordField;
    qryContracts_EmployerId: TStringField;
    qryContracts_WorkShopId: TStringField;
    edt_WorkShopId: TDBEdit;
    Label4: TLabel;
    edtEmployerId: TDBEdit;
    edt_EmployerId: TDBEdit;
    qryRunSchedulesRunScheduleId: TIntegerField;
    qryRunSchedulesRunScheduleType: TIntegerField;
    qryRunSchedulesInsertDate: TDateTimeField;
    qryRunSchedulesParallellStageId: TIntegerField;
    qryRunSchedulesSequenceStageId: TIntegerField;
    qryRunSchedulesMinMembers: TIntegerField;
    qryRunSchedulesFarmId: TIntegerField;
    qryRunSchedulesPieceId: TIntegerField;
    qryContractsRefInsuranceNo: TStringField;
    qryContractsInsuranceWorkShopId: TStringField;
    qryContractsRefAssetsNo: TStringField;
    tsRunScheduleType: TTabSet;
    qryRunSchedulesCustID: TIntegerField;
    qryCustomers: TADOQuery;
    qryContractsFromType: TIntegerField;
    qryinit: TADOQuery;
    qryRunSchedules_CustID: TStringField;
    procedure srcRunSchedulesStateChange(Sender: TObject);
    procedure qryRunSchedulesAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryRunSchedulesBeforePost(DataSet: TDataSet);
    procedure qryRunSchedulesAfterPost(DataSet: TDataSet);
    procedure qryRunSchedulesBeforeDelete(DataSet: TDataSet);
    procedure qryRunSchedulesAfterDelete(DataSet: TDataSet);
    procedure BtnExcelClick(Sender: TObject);
    procedure qryContractsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryRunSchedulesInsertDateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tsRunScheduleTypeChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
  private
    New_Tab: Integer;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure initqryCustomers;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cnt_RunSchedulesF: TCnt_RunSchedulesF;

implementation

uses MMESSAGE, GetExcel, FormFunctions, searchCode_ADO, FaraConsts;

{$R *.dfm}

procedure TCnt_RunSchedulesF.BtnExcelClick(Sender: TObject);
begin
  inherited;
  try
    qryRunSchedules.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryRunSchedules);
  finally
    qryRunSchedules.AfterPost := qryRunSchedulesAfterPost;
  end;
end;

procedure TCnt_RunSchedulesF.DBGrid1EditButtonClick(Sender: TObject);
var
  id: SmallInt;
  b: Boolean;
  Results: array [0 .. 2] of String;
  txt: string;
begin
  inherited;
  if not(qryRunSchedules.state in dsEditModes) then
    Exit;
  id := (Sender as TDBGrid).SelectedIndex;

  if DBGrid1.Columns[id].FieldName = 'CustID' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
      'کد و عنوان نيروي انساني/پيمانكار', qryCustomers.SQL.Text,
      ['کد', ' عنوان  نيروي انساني/پيمانكار'], Results, [50, 150], alLeft);
    if b then
      qryRunSchedules.FieldByName('CustID').AsString := Results[0];
  end;

  txt := qryStuff_Unit.SQL.Text;
  if ((DBGrid1.Columns[id].FieldName = 'ParallellStageId') or
    (DBGrid1.Columns[id].FieldName = 'SequenceStageId')) or
    ((New_Tab = 0) and (DBGrid1.Columns[id].FieldName = 'OperationId')) then
  begin
    txt := 'SELECT DISTINCT Cnt.ContractOperations.OperationId, StuffCoding.c_StuffName'
      + ' FROM Cnt.ContractOperations INNER JOIN' +
      ' StuffCoding ON Cnt.ContractOperations.OperationId = StuffCoding.c_StuffCode'
      + ' WHERE (Cnt.ContractOperations.CaseNo = %d )';
    txt := Format(txt, [qryContractsCaseNo.AsInteger]);
  end;

  if DBGrid1.Columns[id].FieldName = 'OperationId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'کد و عنوان عملیات', txt,
      ['کد', ' عنوان عملیات'], Results, [50, 150], alLeft);
    if b then
      qryRunSchedules.FieldByName('OperationId').AsString := Results[0];
  end;

  if DBGrid1.Columns[id].FieldName = 'ParallellStageId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'کد و عنوان متوالي', txt,
      ['کد', ' عنوان متوالي'], Results, [50, 150], alLeft);
    if b then
      qryRunSchedules.FieldByName('ParallellStageId').AsString := Results[0];
  end;

  if DBGrid1.Columns[id].FieldName = 'SequenceStageId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'کد و عنوان متوازي', txt,
      ['کد', ' عنوان متوازي'], Results, [50, 150], alLeft);
    if b then
      qryRunSchedules.FieldByName('SequenceStageId').AsString := Results[0];
  end;
end;

procedure TCnt_RunSchedulesF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TCnt_RunSchedulesF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        nextIndex := curIndex + 1;

        if (curIndex > 0) and (aDataSet.FieldByName('OperationId').IsNull) then
        begin
          aDataSet.Cancel;
          okPanel.SetFocus;
          Exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.state in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
  begin
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          DBGrid1.SelectedIndex := 0;
        end;
      -2:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end;
      -3:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end;
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
  end;
end;

end;

procedure TCnt_RunSchedulesF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TCnt_RunSchedulesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCnt_RunSchedulesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TCnt_RunSchedulesF.InitForm;
var
  b: Boolean;
  i: Integer;
begin
  dbrgrpContractsStatus.Items.Clear;
  for i := 0 to High(ContractsStatuss) do
    dbrgrpContractsStatus.Items.Add(ContractsStatuss[i]);
  qryContracts.Active := True;
  tsRunScheduleTypeChange(tsRunScheduleType, 0, b);
  setColumns2(DBGrid1, SubsysMenu[07].Active, 'FarmId');
  setColumns2(DBGrid1, SubsysMenu[07].Active, 'PieceId');
end;

procedure TCnt_RunSchedulesF.qryContractsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  initqryCustomers;
  with qryRunSchedules do
  begin
    Active := False;
    Parameters.ParamByName('CaseNo').Value := qryContractsCaseNo.AsInteger;
    Active := True;
  end;
end;

procedure TCnt_RunSchedulesF.initqryCustomers;
begin
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value :=
      qryContractsFromType.AsInteger;
    Active := True;
  end;
  with qryCustomers do
  begin
    Active := False;
    SQL.Text := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups';
    case New_Tab of
      3:
        SQL.Add('WHERE (GroupType IN(11))');
      4:
        SQL.Add('WHERE (GroupType IN(13))');
    else
      if qryinit.FieldByName('Customer2DetailKind').AsString = EmptyStr then
      begin
        Warn('گروههاي مشتري 2 در Detail مشخص نشده است' + #13#10 +
          'FromType in Contracts Is Null');
      end
      else
      begin
        SQL.Add(GetCustomersGroupTypeSQL('Customer2DetailKind', qryinit));
      end;
    end;
  end;
end;

procedure TCnt_RunSchedulesF.qryRunSchedulesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('عمليات حذف شد.', 1);
end;

procedure TCnt_RunSchedulesF.qryRunSchedulesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RunScheduleId').AsInteger :=
    GetANewCode('', 'Cnt.RunSchedules', 'RunScheduleId');
  DataSet.FieldByName('CaseNo').AsInteger := qryContractsCaseNo.AsInteger;
  DataSet.FieldByName('InsertDate').AsDateTime := Now;
  DataSet.FieldByName('RunScheduleType').AsInteger := New_Tab;
end;

procedure TCnt_RunSchedulesF.qryRunSchedulesAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TCnt_RunSchedulesF.qryRunSchedulesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف عمليات مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCnt_RunSchedulesF.qryRunSchedulesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
  TrimStringFields(DataSet);
end;

procedure TCnt_RunSchedulesF.qryRunSchedulesInsertDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Format('%s %s‏', [FormatDateTime('t', Sender.AsDateTime),
    miladi2Shamsi(Sender.AsDateTime)]);
end;

procedure TCnt_RunSchedulesF.srcRunSchedulesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryRunSchedules.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, 'Cnt.RunSchedules');
end;

procedure TCnt_RunSchedulesF.tsRunScheduleTypeChange(Sender: TObject;
  NewTab: Integer; var AllowChange: Boolean);
var
  b: Boolean;
begin
  inherited;
  New_Tab := NewTab;
  b := NewTab in [3, 4, 5];
  setColumns2(DBGrid1, b, 'CustID');
  setColumns2(DBGrid1, b, '_CustID');
  // setColumns2(DBGrid1, not b, 'SequenceStageId');
  setColumns2(DBGrid1, not b, 'OperationId');
  setColumns2(DBGrid1, not b, '_StuffName');
  setColumns2(DBGrid1, not b, '_UnitName');

  setColumns2(DBGrid1, ((not b) and not(NewTab in [1, 2])), 'ParallellStageId');
  setColumns2(DBGrid1, not(NewTab in [0, 1, 2, 3]), 'MinMembers');
  qryRunSchedulesCustID.DisplayLabel := 'كد' + tsRunScheduleType.Tabs[NewTab];
  qryRunSchedules_CustID.DisplayLabel := 'عنوان ' +
    tsRunScheduleType.Tabs[NewTab];

  qryRunSchedulesSequenceStageId.DisplayLabel := 'كد عمليات';
  if NewTab = 0 then
    qryRunSchedulesSequenceStageId.DisplayLabel := 'كد متوالي';

  initqryCustomers;
  With qryStuff_Unit do
  begin
    SQL.Text :=
      'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName';
    SQL.Add('FROM StuffCoding INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN');
    SQL.Add('StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID');
  end;
  case NewTab of
    0:
      begin
        qryStuff_Unit.SQL.Add('WHERE (StuffGroups.GroupType IN (6))');
      end;
    1:
      begin
        qryStuff_Unit.SQL.Add('WHERE (StuffGroups.GroupType IN (1,3))');
      end;
    2:
      begin
        qryStuff_Unit.SQL.Add('WHERE (StuffGroups.GroupType IN (9))');
      end;
  else
    begin
    end;
  end;
  with qryRunSchedules do
  begin
    Active := False;
    Parameters.ParamByName('RunScheduleType').Value := NewTab;
    Active := True;
  end;
end;

end.
