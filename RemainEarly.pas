unit RemainEarly;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Menus, System.ImageList, System.Actions,
  DBAxisGridsEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBGridEh, CedarDbGrid;

type
  TRemainEarlyF = class(Ttemplate2MDIF)
    lblYears: TLabel;
    cmbYears: TComboBox;
    cmbGroup: TComboBox;
    lblGroup: TLabel;
    qryRemainEarly: TADOQuery;
    qryRemainEarlyRemainsEarlyID: TAutoIncField;
    qryRemainEarlyYearID: TIntegerField;
    qryRemainEarlyPersonID1: TIntegerField;
    qryRemainEarlyRate: TBCDField;
    qryRemainEarlyInfoKind: TWordField;
    qryRemainEarlyNote: TWideStringField;
    srcRemainsEarly: TDataSource;
    pnlNew: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    pnlok: TPanel;
    btn5: TBitBtn;
    btn6: TBitBtn;
    qryGroup: TADOQuery;
    qryCustomer: TADOQuery;
    qryRemainEarly_CustName: TStringField;
    btnSort: TBitBtn;
    actSort: TAction;
    btnSort1: TBitBtn;
    btnSearch_: TBitBtn;
    actExcel: TAction;
    btnExcel: TBitBtn;
    actOther: TAction;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Excel1: TMenuItem;
    actRemainsEarly: TAction;
    mnuRemainsEarly: TMenuItem;
    qryRemainEarlySellsEmporium: TIntegerField;
    qrySellsEmporium: TADOQuery;
    qryRemainEarly_SellsEmporium: TStringField;
    BitBtn1: TBitBtn;
    actAllDelete: TAction;
    qry: TADOQuery;
    N3: TMenuItem;
    qryRemainEarlyArzRemain: TBCDField;
    qryRemainEarlyArzTypeID: TIntegerField;
    grdCustomer: TCedarDbgrid;
    MnuRemainsEarlyY: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure qryGroupAfterScroll(DataSet: TDataSet);
    procedure cmbGroupChange(Sender: TObject);
    procedure qryRemainEarlyAfterInsert(DataSet: TDataSet);
    procedure srcRemainsEarlyStateChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure grdCustomerEditButtonClick(Sender: TObject);
    procedure grdCustomerKeyPress(Sender: TObject; var Key: Char);
    procedure qryRemainEarlyInfoKindGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryRemainEarlyInfoKindSetText(Sender: TField; const Text: String);
    procedure qryRemainEarlyBeforePost(DataSet: TDataSet);
    procedure cmbYearsChange(Sender: TObject);
    procedure qryRemainEarlyBeforeDelete(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actRemainsEarlyExecute(Sender: TObject);
    procedure actAllDeleteExecute(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure qryRemainEarlyArzTypeIDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryRemainEarlyArzTypeIDSetText(Sender: TField;
      const Text: string);
    procedure MnuRemainsEarlyYClick(Sender: TObject);
  private
    GrpID: Integer;
    multiYare: Boolean;
    procedure initCombo;
    procedure UpdateParam;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RemainEarlyF: TRemainEarlyF;

implementation

uses DM, GlobalPro, Math, sndkey32, searchCode_ADO, sort2, search2,
  DBGrid2Print, GetExcel, mmessage, GetFirstEntity;

{$R *.dfm}
{ TRemainEarlyF }

procedure TRemainEarlyF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin

  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := IfThen(aDataSet.FieldByName('_CustName')
              .AsString = EmptyStr, 0, 1);
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not((Sender as TCedarDbgrid).Columns[nextIndex].Visible) OR
          ((Sender as TCedarDbgrid).Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      #32, #157: if curIndex in [0] then
    begin
      Key := #0;
      grdCustomerEditButtonClick(Sender);
    end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < (Sender as TCedarDbgrid).Columns.Count) and
      (not((Sender as TCedarDbgrid).Columns[nextIndex].Visible) OR
      ((Sender as TCedarDbgrid).Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TRemainEarlyF.initCombo;
var
  IX: Integer;
begin
  cmbYears.Clear;
  cmbGroup.Clear;
  qryGroup.First;
  with DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text := 'SELECT YearID FROM Util.MaliYear';
    Open;
    while not Eof do
    begin
      cmbYears.Items.Add(Fields[0].AsString);
      Next;
    end;
    Close;
    with qryGroup do
      while not Eof do
      begin
        cmbGroup.AddItem(FieldByName('Name').AsString,
          TObject(FieldByName('CustomerGrpID').AsInteger));
        Next;
      end;
  end;
  if cmbYears.Items.Count > 0 then
    cmbYears.ItemIndex := cmbYears.Items.IndexOf(IntToStr(APPBank.Year));
  // if cmbGroup.Items.Count > 0 then
  // cmbGroup.ItemIndex := 0;

  with DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT CurrenciesID, CurrenciesName FROM Currencies';
    Active := True;
    IX := ColumnIndexByFieldName(grdCustomer, 'ArzTypeID');
    grdCustomer.Columns[IX].ButtonStyle := cbsDropDown;
    while not Eof do
    begin
      grdCustomer.Columns[IX].PickList.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while

    Active := false;
  end; // with
end;

procedure TRemainEarlyF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryRemainEarly);
  With qryGroup do
  begin
    Active := false;
    if Application.MainForm.Menu.Name = 'Mnu0Coffer' then
      SQL.Add('WHERE (GroupType IN (1, 2, 17))');
    Active := True;
  end;
  initCombo;
  With DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT Count(YearID) FROM Util.MaliYear';
    Active := True;
    multiYare := not((cmbYears.Items.Count = 1) and (Fields[0].AsInteger = 1));
    Active := false;
  end;
end;

procedure TRemainEarlyF.UpdateParam;
begin
  if cmbYears.Text <> EmptyStr then
    with qryRemainEarly do
    begin
      Close;
      Parameters.ParamByName('YearID').Value := cmbYears.Text;
      Parameters.ParamByName('CustFrom').Value :=
        qryGroup.FieldByName('StartCode').AsInteger;
      Parameters.ParamByName('CustTo').Value :=
        qryGroup.FieldByName('FinishCode').AsInteger;
      Open;
    end;
end;

procedure TRemainEarlyF.qryGroupAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateParam;
end;

procedure TRemainEarlyF.cmbGroupChange(Sender: TObject);
begin
  inherited;
  if cmbGroup.ItemIndex <> -1 then
  begin
    GrpID := Integer(cmbGroup.Items.Objects[cmbGroup.ItemIndex]);
    qryGroup.Locate('CustomerGrpID', GrpID, []);
  end;
end;

procedure TRemainEarlyF.qryRemainEarlyAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('YearID').AsString := cmbYears.Text;
  DataSet.FieldByName('InfoKind').AsInteger := 0;
end;

procedure TRemainEarlyF.qryRemainEarlyArzTypeIDGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  col: TColumnEh;
begin
  inherited;
  col := grdCustomer.FindFieldColumn(Sender.FieldName);
  // Columns[ColumnIndexByFieldName(DBGrid1, )];
  if col.PickList.IndexOfObject(TObject(Sender.AsInteger)) <> -1 then
    Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];

end;

procedure TRemainEarlyF.qryRemainEarlyArzTypeIDSetText(Sender: TField;
  const Text: string);
var
  col: TColumnEh;
  i: Integer;
begin
  inherited;
  col := grdCustomer.FindFieldColumn(Sender.FieldName);
  // Columns[ColumnIndexByFieldName(DBGrid1, )];
  i := col.PickList.IndexOf(Text);
  if i <> -1 then
    Sender.AsInteger := Integer(col.PickList.Objects[i])

end;

procedure TRemainEarlyF.srcRemainsEarlyStateChange(Sender: TObject);
begin
  inherited;
  pnlok.Visible := qryRemainEarly.State in dseditmodes;
  pnlNew.Visible := not pnlok.Visible;
  BtnReject.Cancel := pnlNew.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  cmbYears.Enabled := pnlNew.Visible;
  cmbGroup.Enabled := pnlNew.Visible;
end;

procedure TRemainEarlyF.FormResize(Sender: TObject);
begin
  inherited;
  cmbGroup.DroppedDown := True;
end;

procedure TRemainEarlyF.grdCustomerEditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  TmpChar: Char;
  sqlText: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case (Sender as TCedarDbgrid).SelectedIndex of
    0:
      Begin
        sqlText :=
          Format('SELECT CustID, CustName FROM  Customers WHERE (CustID<>0) And (CustomerGrpID = %d)',
          [GrpID]);
        if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشتريان', sqlText,
          ['كد ', 'شرح'], Results, [80, 250], alLeft) then
        begin
          aDataSet.FieldByName('PersonID1').AsString := Results[0];
          TmpChar := #13;
          gridkeyenter(Sender, TmpChar);
        end; // if
      end;
  end; // 0
end;

procedure TRemainEarlyF.grdCustomerKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TRemainEarlyF.qryRemainEarlyInfoKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := grdCustomer.Columns[ColumnIndexByFieldName(grdCustomer, 'InfoKind')
    ].PickList[Sender.AsInteger];
end;

procedure TRemainEarlyF.qryRemainEarlyInfoKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := grdCustomer.Columns[ColumnIndexByFieldName(grdCustomer,
    'InfoKind')].PickList.IndexOf(Text);
end;

procedure TRemainEarlyF.qryRemainEarlyBeforePost(DataSet: TDataSet);
begin
  inherited;
  // if not CheckRequiredFields(qryRemainEarly) then Abort;
  with DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text :=
      Format('Select StartCode,FinishCode from CustomersGroup where CustomerGrpID=%d',
      [GrpID]);
    Open;
    if (qryRemainEarly.FieldByName('PersonID1').AsInteger < Fields[0].AsInteger)
      or (qryRemainEarly.FieldByName('PersonID1').AsInteger >
      Fields[1].AsInteger) then
    begin
      Warn('كد جديد تخصيص يافته خارج ازمحدوده تعريف شده است.');
      grdCustomer.SelectedIndex := 0;
      Abort;
    end; // if
    Close;
  end; // with
end;

procedure TRemainEarlyF.cmbYearsChange(Sender: TObject);
begin
  inherited;
  UpdateParam;
end;

procedure TRemainEarlyF.qryRemainEarlyBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TRemainEarlyF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRemainEarly);
end;

procedure TRemainEarlyF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRemainEarly);
end;

procedure TRemainEarlyF.N1Click(Sender: TObject);
begin
  inherited;
  qryRemainEarly.Requery();
end;

procedure TRemainEarlyF.N2Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdCustomer, 0);
end;

procedure TRemainEarlyF.N3Click(Sender: TObject);
begin
  inherited;
  try
    GetFirstEntityF.Enter(True)
  finally
    qryRemainEarly.Requery();
  end;

end;

procedure TRemainEarlyF.MnuRemainsEarlyYClick(Sender: TObject);
begin
  inherited;
  try
    GetFirstEntityF.Enter(True)
  finally
    qryRemainEarly.Requery();
  end;

end;

procedure TRemainEarlyF.Excel1Click(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryRemainEarly);
end;

procedure TRemainEarlyF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRemainEarlyF.actAllDeleteExecute(Sender: TObject);
begin
  inherited;
  if get_response(' آيا براي حذف کلی این گروه انتخاب شده مطمئن هستيد؟') <> mrYes then
    Abort;

  try
    qryRemainEarly.BeforeDelete := nil;
    while not qryRemainEarly.Eof do
      qryRemainEarly.Delete;
  finally
    qryRemainEarly.BeforeDelete := qryRemainEarlyBeforeDelete;

  end;

end;

procedure TRemainEarlyF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdCustomer);
end;

procedure TRemainEarlyF.actRemainsEarlyExecute(Sender: TObject);
var
  YearID: string;
begin
  inherited;
  With DMf.qryTmpTmp do
    try
      YearID := APPBank.Year.ToString;
      YearID := Trim(get_box(' سال ',
        'عدد سال را برای انتقال مانده مشتریان به آن سال را وارد کنید', YearID));
      Close;
      SQL.Text := 'INSERT INTO RemainsEarly ';
      SQL.Add('(PersonID1, Rate, InfoKind, Note, YearID)');
      SQL.Add('SELECT Customers.CustID, Customers.FirstBalance,');
      SQL.Add('0 AS InfoKind');
      SQL.Add(', ''انتقال از معرفي مشتريان'' AS Note');
      SQL.Add(', ' + YearID + ' AS YearID');
      SQL.Add('FROM Customers ');
      SQL.Add('WHERE(Customers.FirstBalance <> 0)');

      SQL.Add('UPDATE Customers');
      SQL.Add('SET FirstBalance = 0');
      SQL.Add('WHERE (FirstBalance <> 0)');
      ExecSQL;
    finally
      Close;
      UpdateParam;
      BigMessage('انجام شد', 1);
      qryRemainEarly.Requery();
    end;

end;

end.
