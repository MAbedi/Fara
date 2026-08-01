// mahmood
unit MakeDesignForms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  template2MDI, DB, ADODB, StdCtrls, Mask, DBCtrls, TypInfo,
  ImgList, DBActns, ActnList, ExtCtrls, Buttons, System.ImageList,
  System.Actions, Vcl.CheckLst, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TMakeDesignFormsF = class(Ttemplate2MDIF)
    qryDesignForms: TADOQuery;
    srcDesignForms: TDataSource;
    DBNavigator1: TDBNavigator;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actSendExel: TAction;
    actSort: TAction;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    qryDesignFormsItems: TADOQuery;
    srcDesignFormsItems: TDataSource;
    Panel4: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PnlGetRptColumns: TPanel;
    okPanel2: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    newPanel2: TPanel;
    BitBtn10: TBitBtn;
    BitBtn14: TBitBtn;
    btnDelete: TBitBtn;
    DBEdit62: TDBEdit;
    actSort2: TAction;
    actCopy: TAction;
    actDelete: TAction;
    qryDesignFormsID: TAutoIncField;
    qryDesignFormsFormNo: TIntegerField;
    qryDesignFormsFormCaption: TWideStringField;
    qryDesignFormsFromDate: TStringField;
    qryDesignFormsFromType: TIntegerField;
    qryDesignFormsTableName: TWideStringField;
    qryDesignFormsMenuName: TWideStringField;
    qryDesignFormsNote: TWideStringField;
    qryDesignFormsWorkflowID: TIntegerField;
    qryDesignFormsItemsColumnName: TWideStringField;
    qryDesignFormsItemsColumnDisplayName: TWideStringField;
    qryDesignFormsItemsColumnDataType: TWideStringField;
    qryDesignFormsItemsDBType: TWordField;
    qryDesignFormsItemsItemsString: TWideStringField;
    qryDesignFormsItemsItemsValue: TWideStringField;
    qryDesignFormsItemsParentName: TWideStringField;
    qryDesignFormsItemsTopx: TSmallintField;
    qryDesignFormsItemsLeftx: TSmallintField;
    qryDesignFormsItemsWidth: TSmallintField;
    qryDesignFormsItemsHeight: TSmallintField;
    qryDesignFormsItemsTag: TIntegerField;
    qryDesignFormsItemsTabOrder: TSmallintField;
    qryDesignFormsItemsIsRequired: TBooleanField;
    qryDesignFormsItemsAlign: TWordField;
    qryDesignFormsItemsRowNo: TIntegerField;
    qryDesignFormsItemsID: TAutoIncField;
    qryDesignFormsItemsDesignFormsID: TIntegerField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    actRowNo: TAction;
    BitBtn11: TBitBtn;
    qryDesignFormsItemsDefaultValue: TWideStringField;
    actCopyPaste: TAction;
    BitBtn15: TBitBtn;
    pnlDown: TPanel;
    GroupBox2: TGroupBox;
    dbmmoItemsValue: TDBMemo;
    GroupBox1: TGroupBox;
    dbmmoItemsString: TDBMemo;
    Memo1: TMemo;
    Panel5: TPanel;
    chklstCheckList: TCheckListBox;
    qryDesignFormsItemsCheckList: TLargeintField;
    DBGrid1: TCedarDbgrid;
    grdItems: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure srcDesignFormsStateChange(Sender: TObject);
    procedure qryDesignFormsBeforePost(DataSet: TDataSet);
    procedure qryDesignFormsAfterDelete(DataSet: TDataSet);
    procedure qryDesignFormsAfterInsert(DataSet: TDataSet);
    procedure qryDesignFormsAfterPost(DataSet: TDataSet);
    procedure qryDesignFormsBeforeDelete(DataSet: TDataSet);
    procedure srcDesignFormsItemsStateChange(Sender: TObject);
    procedure qryDesignFormsItemsAfterInsert(DataSet: TDataSet);
    procedure qryDesignFormsItemsBeforeDelete(DataSet: TDataSet);
    procedure qryDesignFormsAfterScroll(DataSet: TDataSet);
    procedure qryDesignFormsItemsBeforeEdit(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure actSort2Execute(Sender: TObject);
    procedure actSearch_2Execute(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure qryDesignFormsItemsBeforePost(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure qryDesignFormsItemsAlignGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryDesignFormsItemsDBTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actRowNoExecute(Sender: TObject);
    procedure actCopyPasteExecute(Sender: TObject);
    procedure chklstCheckListClick(Sender: TObject);
    procedure qryDesignFormsItemsAfterScroll(DataSet: TDataSet);
    procedure grdItemsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MakeDesignFormsF: TMakeDesignFormsF;

implementation

uses DM, GlobalPro, mmessage, StrUtils, sort2, search2, FaraConsts,
  searchCode_ADO, FormFunctions;

{$R *.dfm}

procedure TMakeDesignFormsF.FormCreate(Sender: TObject);
begin
  inherited;
  qryDesignForms.Active := True;
end;

procedure TMakeDesignFormsF.FormResize(Sender: TObject);
begin
  inherited;
  GroupBox2.Width := pnlDown.Width div 3;
  GroupBox1.Width := GroupBox2.Width;
end;

procedure TMakeDesignFormsF.grdItemsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if not(gdselected in State) then
  begin
    if qryDesignFormsItems.FieldByName('DBType').AsInteger = 17 then
      grdItems.Canvas.Brush.Color := const_fixed_columns_color
      // else
      // grdItems.Canvas.Brush.Color := //const_fixed_columns_color -
      // (qryDesignFormsItems.FieldByName('DBType').AsInteger*32)

  end; // if
  grdItems.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TMakeDesignFormsF.srcDesignFormsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDesignForms.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  newPanel2.Visible := okPanel.Visible;
  PnlGetRptColumns.Visible := okPanel.Visible;
  FreeReservedCodes(theMainConnection);
end;

procedure TMakeDesignFormsF.qryDesignFormsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if get_response('تغييرات ذخيره شوند؟') <> mrYes then
    abort;
  TrimStringFields(qryDesignForms);
end;

procedure TMakeDesignFormsF.qryDesignFormsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TMakeDesignFormsF.qryDesignFormsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TMakeDesignFormsF.qryDesignFormsAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  rid := qryDesignForms.FieldByName('ID').AsInteger;
  rid2 := qryDesignFormsItems.FieldByName('ID').AsInteger;
  if qryDesignFormsItems.State in dsEditModes then
    qryDesignFormsItems.Post;
  try
    qryDesignFormsItems.UpdateBatch;
    BigMessage('ثبت شد.', 1);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      warn('اشكال در ثبت فرم');
    end;
  end; // try
  qryDesignForms.Requery;
  qryDesignForms.Locate('ID', rid, []);
  qryDesignFormsItems.Requery;
  qryDesignFormsItems.Locate('ID', rid2, []);
end;

procedure TMakeDesignFormsF.qryDesignFormsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TMakeDesignFormsF.srcDesignFormsItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryDesignFormsItems.State in dsEditModes;
  newPanel2.Visible := not okPanel2.Visible;
  BtnReject.Cancel := newPanel2.Visible;
end;

procedure TMakeDesignFormsF.qryDesignFormsItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryDesignForms.State in dsEditModes) then
    qryDesignForms.edit;
  DataSet.FieldByName('DesignFormsID').AsInteger :=
    qryDesignForms.FieldByName('ID').AsInteger;
  DataSet.FieldByName('RowNo').AsInteger :=
    Abs(qryDesignFormsItems.RecordCount);
end;

procedure TMakeDesignFormsF.qryDesignFormsItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  initCheckList2(chklstCheckList, qryDesignFormsItemsCheckList.AsLargeInt, 1);

end;

procedure TMakeDesignFormsF.qryDesignFormsItemsAlignGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString + '-' + GetEnumName(TypeInfo(TAlign),
    Sender.AsInteger)
end;

procedure TMakeDesignFormsF.qryDesignFormsItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين ستون مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TMakeDesignFormsF.qryDesignFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryDesignFormsItems do
  begin
    Active := False;
    Parameters.ParamByName('ID').Value := qryDesignForms.FieldByName('ID')
      .AsInteger;
    Active := True;
  end; // With
end;

procedure TMakeDesignFormsF.qryDesignFormsItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryDesignForms.State in dsEditModes) then
    abort;
end;

procedure TMakeDesignFormsF.qryDesignFormsItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryDesignFormsItemsColumnName.AsString +
    qryDesignFormsItemsColumnDisplayName.AsString = EmptyStr then
  begin
    DataSet.Cancel;
    abort;
  end;
  if not CheckRequiredFields(qryDesignFormsItems) then
    abort;
end;

procedure TMakeDesignFormsF.qryDesignFormsItemsDBTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := EmptyStr;
  case Sender.AsInteger of
    9:
      Text := 'GroupBox';
    10:
      Text := 'Panel.BevelOuter.bvNone';
    11:
      Text := 'Panel';
    12:
      Text := 'Edit';
    13:
      Text := 'Memo';
    14:
      Text := 'CheckBox';
    15:
      Text := 'RadioGroup';
    16:
      Text := 'ListBox';
    17:
      Text := 'SpeedButton4Look';
    18:
      Text := 'DBEditDateTimeShamsi'
  end;
  Text := Sender.AsString + '-' + Text;
end;

procedure TMakeDesignFormsF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  if ((Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes) then
    (Sender as TCedarDbgrid).DataSource.DataSet.Post;
end;

procedure TMakeDesignFormsF.actSort2Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDesignFormsItems)
end;

procedure TMakeDesignFormsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDesignForms)
end;

procedure TMakeDesignFormsF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDesignForms);
end;

procedure TMakeDesignFormsF.chklstCheckListClick(Sender: TObject);
begin
  inherited;
  if not(qryDesignFormsItems.State in dsEditModes) then
    qryDesignFormsItems.edit;
  qryDesignFormsItemsCheckList.AsLargeInt := GetCheckList2(chklstCheckList, 1);
end;

procedure TMakeDesignFormsF.actDeleteExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if grdItems.SelectedRows.Count > 1 then
  begin
    if get_response(IntToStr(grdItems.SelectedRows.Count) +
      ' سطر انتخاب شده است. آیا برای حذف مطمئن هستید؟') <> mrYes then
      abort;
    with grdItems.DataSource.DataSet do
    begin
      BeforeDelete := nil;
      for i := 0 to grdItems.SelectedRows.Count - 1 do
      begin
        GotoBookmark((grdItems.SelectedRows.Items[i]));
        Delete;
      end;
      BeforeDelete := qryDesignFormsItemsBeforeDelete;
    end;
  end
  else
    qryDesignFormsItems.Delete;
end;

procedure TMakeDesignFormsF.actRowNoExecute(Sender: TObject);
var
  RowNo: Integer;
begin
  inherited;
  With qryDesignFormsItems do
  begin
    RowNo := FieldByName('RowNo').AsInteger;
    if RecordCount > 0 then
      if get_response('آيا براي محاسبه ردیف ' + #13 + IntToStr(RowNo) + #13 +
        ' به سطرهاي بعد مطمئن هستيد؟') <> mrYes then
        exit;

    DisableControls;
    Next;
    while not Eof do
    begin
      edit;
      inc(RowNo);
      FieldByName('RowNo').AsInteger := RowNo;
      Post;
      Next;
    end;
    EnableControls;
  end;
end;

procedure TMakeDesignFormsF.actSearch_2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDesignFormsItems)
end;

procedure TMakeDesignFormsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDesignForms)
end;

procedure TMakeDesignFormsF.actCopyExecute(Sender: TObject);
var
  OldID, ID, ColumnsID, MINItemsID: Integer;
begin
  inherited;
  OldID := qryDesignForms.FieldByName('ID').AsInteger;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT MAX(ID)+1  FROM Dsn.DesignForms';
    Active := True;
    ID := Fields[0].AsInteger;

    Active := False;
    SQL.Text := 'SELECT MAX(ID)+1  FROM Dsn.DesignFormsItems';
    Active := True;
    ColumnsID := Fields[0].AsInteger;

    Active := False;
    SQL.Text := 'INSERT INTO Dsn.DesignForms';
    SQL.Add('(ID, Dsn.DesignFormsName , OtherRptFiles, OtherRptCaptions,');
    SQL.Add(' ActiveFunctionsItems, DeleteColumnIfSumWageIsZero)');
    SQL.Add(' SELECT  ' + IntToStr(ID) +
      ', Dsn.DesignFormsName+ ''*'', OtherRptFiles, OtherRptCaptions,');
    SQL.Add(' ActiveFunctionsItems, DeleteColumnIfSumWageIsZero ');
    SQL.Add('FROM Dsn.DesignForms');
    SQL.Add('WHERE (ID = ' + IntToStr(OldID) + ')');
    ExecSQL;

    Active := False;
    SQL.Text := 'SELECT MIN(ColumnsID)FROM Dsn.DesignFormsItems WHERE ID = ' +
      IntToStr(OldID);
    Active := True;
    MINItemsID := Fields[0].AsInteger;

    Active := False;
    SQL.Text := 'INSERT INTO Dsn.DesignFormsItems';
    SQL.Add('(ColumnsID, ID, ColumnsName, Kind, ColumnsSalaryID,');
    SQL.Add(' Amount, ColumnsSalaryIDSub, ColumnsRoundNo, ColumnsCalc, ConstID)');
    SQL.Add('SELECT ' + IntToStr(ColumnsID) + '+( ColumnsID-' +
      IntToStr(MINItemsID) + '), ' + IntToStr(ID) +
      ', ColumnsName, Kind, ColumnsSalaryID, Amount, ColumnsSalaryIDSub,');
    SQL.Add(' ColumnsRoundNo, ColumnsCalc, ConstID ');
    SQL.Add('FROM Dsn.DesignFormsItems');
    SQL.Add('WHERE (ID = ' + IntToStr(OldID) + ')');
    ExecSQL;
    Active := False;
  end;
  qryDesignForms.Requery();
  qryDesignForms.Locate('ID', ID, [])
end;

procedure TMakeDesignFormsF.actCopyPasteExecute(Sender: TObject);
var
  qry: TADOQuery;
  i, k, RowCount: Integer;
  ts: TStringList;
begin
  inherited;
  RowCount := 1;
  RowCount := StrToInt(Trim(get_box('تعداد سطر',
    'تعداد سطرها را براي كپي سطر جاري وارد كنيد', '1', False, '999')));
  BigMessageProgBar('در حال كپي آرتيكل  ...‏', RowCount);
  if not(qryDesignForms.State in dsEditModes) then
    qryDesignForms.edit;
  if (qryDesignFormsItems.State in dsEditModes) then
    qryDesignFormsItems.Post;
  ts := TStringList.Create;
  for i := 1 to grdItems.Columns.Count - 1 do
  begin
    if (not grdItems.Columns[i].ReadOnly) and (grdItems.Columns[i].Visible) then
      ts.Add(grdItems.Columns[i].FieldName);
  end;
  qry := TADOQuery.Create(Self);
  try
    qryDesignFormsItems.DisableControls;
    with qry do
    begin
      Clone(qryDesignFormsItems, ltReadOnly);
      Filter := 'ID=' + qryDesignFormsItems.FieldByName('ID').AsString;
      Filtered := True;
      for k := 1 to RowCount do
      begin
        qryDesignFormsItems.Append;
        for i := 0 to ts.Count - 1 do
        begin
          qryDesignFormsItems.FieldByName(ts[i]).AsString :=
            FieldByName(ts[i]).AsString;
        end;
        GoProgressBar(IntToStr(k));
        qryDesignFormsItems.Post;
      end;
      grdItems.SetFocus;
    end;
  finally
    qryDesignFormsItems.EnableControls;
    qry.Free;
    ts.Free;
    BigMessage('آرتيكل كپي شد.‏', 1);
  end;
end;

end.
