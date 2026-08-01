unit Cnt_ContractOperations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DateUtils, sndkey32, Math,
  DB, ADODB, DBCtrls, Mask, DM, GlobalPro, shamsiDate, Grids, Vcl.DBGrids,
  SumDBGrid, Menus, System.ImageList, System.Actions;

type
  TCnt_ContractOperationsF = class(Ttemplate2MDIF)
    qryOperations: TADOQuery;
    srcOperations: TDataSource;
    Label1: TLabel;
    edtContractRow: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label2: TLabel;
    edtContractDate: TDBEdit;
    Label6: TLabel;
    edtStartDate: TDBEdit;
    Label7: TLabel;
    edtEndDate: TDBEdit;
    Label8: TLabel;
    edtExecutionTime: TDBEdit;
    Label9: TLabel;
    edtActivityStartDate: TDBEdit;
    Label10: TLabel;
    edtAnticipateDate: TDBEdit;
    Label13: TLabel;
    edtWorkShopId: TDBEdit;
    GroupBox1: TGroupBox;
    dbmmoContractTopic: TDBMemo;
    Label20: TLabel;
    edtContractNo: TDBEdit;
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
    edtInsuranceWorkShopId: TDBEdit;
    srcContracts: TDataSource;
    qryContracts: TADOQuery;
    Panel1: TPanel;
    dbrgrpContractsStatus: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    qryOperationsContractOperationId: TIntegerField;
    qryOperationsCaseNo: TIntegerField;
    qryOperationsOperationId: TLargeintField;
    qryOperationsAmount: TBCDField;
    qryOperationsBasePrice: TBCDField;
    qryOperationsTotalPrice: TBCDField;
    qryOperationsFarmId: TIntegerField;
    qryOperationsPieceId: TIntegerField;
    qryOperationsContractOperationNote: TWideStringField;
    qryStuff_Unit: TADOQuery;
    qryOperations_StuffName: TStringField;
    qryOperations_UnitName: TStringField;
    qryStuffCode2: TADOQuery;
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
    qryContractsRefInsuranceNo: TStringField;
    qryContractsInsuranceWorkShopId: TStringField;
    qryContractsRefAssetsNo: TStringField;
    qryContractsFromType: TIntegerField;
    qryinit: TADOQuery;
    SumGrid1: TSumGrid;
    edtContractBasePrice: TDBEdit;
    Label11: TLabel;
    btnSearchReciptNumber: TSpeedButton;
    qryOperations_SellPrice1: TCurrencyField;
    btnContractsStatus: TBitBtn;
    popContractsStatus: TPopupMenu;
    AllClick1: TMenuItem;
    edtCaseNo: TDBEdit;
    Label23: TLabel;
    edtFromDate: TDBEdit;
    Label24: TLabel;
    qryContractsFromDate: TStringField;
    qryOperationsOverheadPrice: TBCDField;
    actCustomersTax: TAction;
    procedure srcOperationsStateChange(Sender: TObject);
    procedure qryOperationsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryOperationsBeforePost(DataSet: TDataSet);
    procedure qryOperationsBeforeDelete(DataSet: TDataSet);
    procedure qryOperationsAfterDelete(DataSet: TDataSet);
    procedure BtnExcelClick(Sender: TObject);
    procedure qryContractsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryOperationsAmountChange(Sender: TField);
    procedure btnSearchReciptNumberClick(Sender: TObject);
    procedure qryOperationsAfterPost(DataSet: TDataSet);
    procedure qryContractsBeforeScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qryOperationsOperationIdChange(Sender: TField);
    procedure btnContractsStatusClick(Sender: TObject);
    procedure AllClick1Click(Sender: TObject);
    procedure actCustomersTaxExecute(Sender: TObject);
  private
    GroupType: Integer;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function chkTotalPrice: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cnt_ContractOperationsF: TCnt_ContractOperationsF;

implementation

uses MMESSAGE, GetExcel, FormFunctions, searchCode_ADO, main, FaraConsts,
  mdiMain;

{$R *.dfm}

procedure TCnt_ContractOperationsF.actCustomersTaxExecute(Sender: TObject);
var
  CaseNo:Integer;
begin
  inherited;
  try
    mdiMainF.actCustomersTaxF.Execute
  finally
    CaseNo:=qryContractsCaseNo.AsInteger;
    qryContracts.Requery();
    qryContracts.Locate('CaseNo', CaseNo, []);
  end;

end;

procedure TCnt_ContractOperationsF.AllClick1Click(Sender: TObject);
var
  ContractsStatus, CurContractsStatus, CaseNo: Integer;
  s: string;
begin
  inherited;
  ContractsStatus := (Sender as TMenuItem).Tag;
  CurContractsStatus := qryContracts.FieldByName('ContractsStatus').AsInteger;
  if (CurContractsStatus > ContractsStatus) then
    if (not User.PowerUser) then
    begin
      Warn('اين امكان براي شما وجود ندارد');
      Exit;
    end;

  With qryContracts do
    try
      CaseNo := FieldByName('CaseNo').AsInteger;
      s := 'UPDATE Cnt.Contracts SET ContractsStatus = %d WHERE (CaseNo = %d)';
      s := Format(s, [ContractsStatus, CaseNo]);
      DMf.adcBSell.Execute(s);
      Requery();
      Locate('CaseNo', CaseNo, []);
    finally
    end;
end;

procedure TCnt_ContractOperationsF.btnContractsStatusClick(Sender: TObject);
begin
  inherited;
  popContractsStatus.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCnt_ContractOperationsF.BtnExcelClick(Sender: TObject);
begin
  inherited;
  try
    qryOperations.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryOperations);
  finally
    qryOperations.AfterPost := qryOperationsAfterPost;
  end;
end;

procedure TCnt_ContractOperationsF.btnSearchReciptNumberClick(Sender: TObject);
begin
  inherited;
  btnContractsCaseNo(qryContracts)
end;

procedure TCnt_ContractOperationsF.DBGrid1EditButtonClick(Sender: TObject);
var
  id: SmallInt;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  if not(qryOperations.State in dsEditModes) then
    Exit;
  id := (Sender as TDBGrid).SelectedIndex;
  if DBGrid1.Columns[id].FieldName = 'OperationId' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'کد و عنوان عملیات',
      qryStuffCode2.SQL.Text, ['کد', ' عنوان عملیات'], Results,
      [50, 150], alLeft);
    if b then
      qryOperations.FieldByName('OperationId').AsString := Results[0];
  end;

end;

procedure TCnt_ContractOperationsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TCnt_ContractOperationsF.gridkeyenter(Sender: TObject; var Key: Char);
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
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
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
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          DBGrid1.SelectedIndex := 0;
        end;
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end;
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end;
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end;

end;

procedure TCnt_ContractOperationsF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  CanClose := chkTotalPrice;
end;

procedure TCnt_ContractOperationsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TCnt_ContractOperationsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCnt_ContractOperationsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TCnt_ContractOperationsF.InitForm;
var
  i: Integer;
  mnu: TMenuItem;
begin
  dbrgrpContractsStatus.Items.Clear;
  dbrgrpContractsStatus.Values.Clear;
  popContractsStatus.Items.Clear;
  for i := 0 to High(ContractsStatuss) do
  begin
    dbrgrpContractsStatus.Items.Add(ContractsStatuss[i]);
    dbrgrpContractsStatus.Values.Add(IntToStr(i));
    mnu := TMenuItem.Create(popContractsStatus);
    mnu.Caption := ContractsStatuss[i];
    mnu.OnClick := AllClick1Click;
    mnu.Tag := i;
    popContractsStatus.Items.Add(mnu);
  end;
  GroupType := var_glb_gParam;
  qryContracts.Active := True;
  setColumns2(DBGrid1, SubsysMenu[07].Active, 'FarmId');
  setColumns2(DBGrid1, SubsysMenu[07].Active, 'PieceId');
end;

procedure TCnt_ContractOperationsF.qryContractsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value :=
      qryContractsFromType.AsInteger;
    Active := True;
  end;
  with qryStuffCode2 do
  begin
    Active := False;
    SQL.Text := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName';
    SQL.Add('FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID');
    SQL.Add('WHERE (StuffGroups.GroupType IN (' + qryinit.FieldByName
      ('ProcedureKindList').AsString + '))');
  end;

  with qryOperations do
  begin
    Active := False;
    Parameters.ParamByName('CaseNo').Value := qryContractsCaseNo.AsInteger;
    Active := True;
  end;
end;

procedure TCnt_ContractOperationsF.qryContractsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if not chkTotalPrice then
    Abort;
end;

procedure TCnt_ContractOperationsF.qryOperationsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  chkTotalPrice;
  BigMessage('عمليات حذف شد.', 1);
end;

procedure TCnt_ContractOperationsF.qryOperationsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ContractOperationId').AsInteger :=
    GetANewCode('', 'Cnt.ContractOperations', 'ContractOperationId');
  DataSet.FieldByName('CaseNo').AsInteger := qryContractsCaseNo.AsInteger;
end;

procedure TCnt_ContractOperationsF.qryOperationsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

function TCnt_ContractOperationsF.chkTotalPrice: Boolean;
var
  c, TotalPrice: Currency;
  s: string;
  CaseNo: Integer;
begin
  TotalPrice := CalcSumFileds(qryOperations, 'TotalPrice');
  c := TotalPrice - qryContractsContractBasePrice.AsCurrency;
  Result := True;
  if (TotalPrice <> 0) and (c <> 0) then
    try
      qryContracts.BeforeScroll := nil;
      Warn(Format
        ('جمع مبلغ كل با مبلغ اوليه قرارداد %m ريال اختلاف دارد', [c]));
      CaseNo := qryContractsCaseNo.AsInteger;
      s := 'UPDATE Cnt.Contracts SET ContractBasePrice = %f ' +
        'WHERE     (CaseNo = %d)';
      s := Format(s, [TotalPrice, CaseNo]);
      DMf.adcBSell.Execute(s);
      qryContracts.Requery();
      qryContracts.Locate('CaseNo', CaseNo, []);
      qryContracts.BeforeScroll := qryContractsBeforeScroll;
    finally

    end;
end;

procedure TCnt_ContractOperationsF.qryOperationsAmountChange(Sender: TField);
begin
  inherited;
  qryOperationsTotalPrice.AsCurrency :=
    RoundTo(qryOperationsAmount.AsCurrency * qryOperationsBasePrice.AsCurrency +
    qryOperationsOverheadPrice.AsCurrency, 0);
end;

procedure TCnt_ContractOperationsF.qryOperationsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف عمليات مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCnt_ContractOperationsF.qryOperationsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
  TrimStringFields(DataSet);
end;

procedure TCnt_ContractOperationsF.qryOperationsOperationIdChange
  (Sender: TField);
begin
  inherited;
  qryOperations.FieldByName('BasePrice').AsCurrency :=
    qryOperations.FieldByName('_SellPrice1').AsCurrency;
end;

procedure TCnt_ContractOperationsF.srcOperationsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryOperations.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, 'Cnt.ContractOperations');
end;

end.
