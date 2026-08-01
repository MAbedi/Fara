unit TshClockDmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, sndkey32, Math,
  Mask, DBCtrls, DB, Grids, Vcl.DBGrids, ADODB, ppBands, ppCache,
  ppClass, ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ComCtrls, Menus, ppVar, ppCtrls, ppPrnabl, System.ImageList, System.Actions;

type
  TTshClockDmpF = class(Ttemplate2MDIF)
    qryClockDmp: TADOQuery;
    srcClockDmp: TDataSource;
    okPanel: TPanel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    newPanel: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    qryCustomers: TADOQuery;
    actExcel: TAction;
    btnExcel1: TBitBtn;
    actFilter: TAction;
    actCopyPaste: TAction;
    actPrint: TAction;
    actSort: TAction;
    btnSort: TBitBtn;
    btnSort1: TBitBtn;
    btnSearch_: TBitBtn;
    actGetExcel: TAction;
    btnIO_TYPE: TBitBtn;
    tbc1: TTabControl;
    pnl1: TPanel;
    pnlStuffId: TPanel;
    lblStuffId: TLabel;
    btnPersonTo: TSpeedButton;
    medtPersonIdTo: TMaskEdit;
    mskPersonNameTo: TMaskEdit;
    pnlPersonId: TPanel;
    lblPersonId: TLabel;
    btnPersonForm: TSpeedButton;
    medtPersonIdForm: TMaskEdit;
    mskPersonNameFrom: TMaskEdit;
    popIO_TYPE: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    actStatus: TAction;
    actRecall: TAction;
    mskDayForm: TMaskEdit;
    lbl2: TLabel;
    mskDayTo: TMaskEdit;
    Label1: TLabel;
    srcWorkShopId: TDataSource;
    qryClockDmpKARTNO: TStringField;
    qryClockDmpCLOCKDATE: TStringField;
    qryClockDmpCLOCKTIME: TStringField;
    qryClockDmpREC: TIntegerField;
    qryClockDmpTRANSFERED: TIntegerField;
    qryClockDmpSPCARDTYPE: TIntegerField;
    qryClockDmpCLOCKKEY: TStringField;
    qryClockDmpDECEMBER: TIntegerField;
    qryClockDmpINTELLIGENTLYANALYSED: TIntegerField;
    qryClockDmpIO_TYPE: TStringField;
    qryClockDmpMASHINNO: TStringField;
    qryClockDmpSPECCARDNO: TStringField;
    qryClockDmpUNCERTAIN: TIntegerField;
    qryClockDmpComCode: TIntegerField;
    qryClockDmpFPM: TStringField;
    qryClockDmpTag: TIntegerField;
    qryClockDmpInsertkind: TWordField;
    Panel1: TPanel;
    Panel4: TPanel;
    DBGridMaster: TDBGrid;
    DBGridClockDmp: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    qryWorkShopId: TADOQuery;
    qryWorkShopIdCustID: TIntegerField;
    qryWorkShopIdCustName: TStringField;
    qryClockDmp_CustName: TStringField;
    qryClockDmp_NationalID: TStringField;
    Panel5: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    mskYear: TMaskEdit;
    mskMonth: TMaskEdit;
    qryClockDmpNote: TStringField;
    qryClockDmpID: TAutoIncField;
    N3: TMenuItem;
    N4: TMenuItem;
    actIO_TYPE: TAction;
    SCSplitter2: TSplitter;
    qryClockDmpPERNO: TIntegerField;
    qryClockDmpCLOCKDATEint: TIntegerField;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    dbnvgr1: TDBNavigator;
    qryTshClockDmp: TADOQuery;
    chkFilter: TCheckBox;
    srcTshClockDmp: TDataSource;
    qryTshClockDmpPERNO: TIntegerField;
    qryTshClockDmpCustName: TStringField;
    procedure srcClockDmpStateChange(Sender: TObject);
    procedure qryClockDmpAfterInsert(DataSet: TDataSet);
    procedure medtPersonIdFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure medtPersonIdToKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPersonFormClick(Sender: TObject);
    procedure btnPersonToClick(Sender: TObject);
    procedure DBGridClockDmpKeyPress(Sender: TObject; var Key: Char);
    procedure qryClockDmpStartHourGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actExcelExecute(Sender: TObject);
    procedure qryClockDmpAfterPost(DataSet: TDataSet);
    procedure qryClockDmpALLPikGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryClockDmpALLPikSetText(Sender: TField; const Text: String);
    procedure qryClockDmpBeforePost(DataSet: TDataSet);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actManagGridColumnsExecute(Sender: TObject);
    procedure qryClockDmpBeforeDelete(DataSet: TDataSet);
    procedure qryClockDmpAfterDelete(DataSet: TDataSet);
    procedure N11Click(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryClockDmpBeforeEdit(DataSet: TDataSet);
    procedure DBGridClockDmpEditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryWorkShopIdAfterScroll(DataSet: TDataSet);
    procedure mskYearExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actIO_TYPEExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DBGridClockDmpDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkFilterClick(Sender: TObject);
    procedure qryTshClockDmpAfterScroll(DataSet: TDataSet);
    procedure actCopyPasteExecute(Sender: TObject);
  private
    procedure UpdateFilter;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function chkFunction: Boolean;
    procedure initForm;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  TshClockDmpF: TTshClockDmpF;

const
  PartSise = 100;

implementation

uses DM, GlobalPro, searchCode_ADO, GetExcel, MMESSAGE,
  sort2, search2, ManagGridColumns, FaraConsts;

{$R *.dfm}

procedure TTshClockDmpF.actManagGridColumnsExecute(Sender: TObject);
begin
  inherited;
  ManagGridColumnsF.ShowColumns(DMf.adcBSell, DBGridClockDmp, 0)
end;

procedure TTshClockDmpF.actCopyPasteExecute(Sender: TObject);
var
  qry: TADOQuery;
  i: Byte;
begin
  inherited;
  BigMessageProgBar('در حال كپي سطر  ...‏', DBGridClockDmp.Columns.Count - 1);
  if (qryClockDmp.State in dsEditModes) then
    qryClockDmp.Post;
  qry := TADOQuery.Create(DMf);
  try
    with qry do
    begin
      Clone(qryClockDmp, ltReadOnly);
      Filter := 'Id =' + qryClockDmp.FieldByName('Id').AsString;
      Filtered := True;
      qryClockDmp.Append;
      for i := 0 to DBGridClockDmp.Columns.Count - 1 do
      begin
        if (not DBGridClockDmp.Columns[i].ReadOnly) and
          (DBGridClockDmp.Columns[i].Visible) then
          qryClockDmp.FieldByName(DBGridClockDmp.Columns[i].FieldName).AsString
            := FieldByName(DBGridClockDmp.Columns[i].FieldName).AsString;
        GoProgressBar(IntToStr(i));
      end;
      qryClockDmpCLOCKTIME.AsString := EmptyStr;
      qryClockDmpIO_TYPE.AsInteger :=
        IfThen(qryClockDmpIO_TYPE.AsInteger = 1, 2, 1);
      qryClockDmp.FieldByName('Insertkind').AsInteger := 1;
      DBGridClockDmp.SetFocus;
    end; // with
  finally
    qry.Free;
    BigMessage('سطر كپي شد.‏', 1);
  end; // try

end;

procedure TTshClockDmpF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGridClockDmp)
end;

procedure TTshClockDmpF.btnPersonToClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  txt: string;
begin
  inherited;
  txt := qryCustomers.SQL.Text;
  // + 'AND (Customers.PersonID1  = ' +    Trim(medtWorkShopId.Text) + ')';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblPersonId.Caption, txt,
    ['کد', lblPersonId.Caption], Results, [50, 150], alLeft);
  if b then
  begin
    medtPersonIdTo.Text := Results[0];
    mskPersonNameTo.Text := Results[1];
  end; // if
end;

procedure TTshClockDmpF.chkFilterClick(Sender: TObject);
begin
  inherited;
  if not chkFilter.Checked then
  begin
    medtPersonIdForm.Text := '0';
    medtPersonIdTo.Text := '2147483647';
    mskPersonNameFrom.Text := '';
    mskPersonNameTo.Text := '';
    qryWorkShopIdAfterScroll(qryWorkShopId);
  end;

  With qryTshClockDmp do
  begin
    Active := False;
    Parameters := qryClockDmp.Parameters;
    Active := chkFilter.Checked;
  end;
end;

procedure TTshClockDmpF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryClockDmp.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryClockDmp);
  finally
    qryClockDmp.AfterPost := qryClockDmpAfterPost;
  end;
end;

procedure TTshClockDmpF.actIO_TYPEExecute(Sender: TObject);
begin
  inherited;
  popIO_TYPE.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TTshClockDmpF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryClockDmp);
end;

procedure TTshClockDmpF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qryClockDmp);
end;

procedure TTshClockDmpF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TTshClockDmpF.btnPersonFormClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  txt: string;
begin
  inherited;
  txt := qryCustomers.SQL.Text;
  // + 'AND (Customers.PersonID1  = ' +    Trim(medtWorkShopId.Text) + ')';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblPersonId.Caption, txt,
    ['کد', lblPersonId.Caption], Results, [50, 150], alLeft);
  if b then
  begin
    medtPersonIdForm.Text := Results[0];
    mskPersonNameFrom.Text := Results[1];
  end; // if
end;

procedure TTshClockDmpF.DBGridClockDmpDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then
  begin
    DBGridClockDmp.Canvas.Brush.Color := $00B0CAFF;
    DBGridClockDmp.Canvas.Font.Color := clBlack;
  end
  else
  begin
    if qryClockDmp.FieldByName('IO_TYPE').AsString = '1' then
      DBGridClockDmp.Canvas.Brush.Color := const_fixed_columns_color;
    DBGridClockDmp.Canvas.Font.Color := clWindowText;
  end; // if
  DBGridClockDmp.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TTshClockDmpF.DBGridClockDmpEditButtonClick(Sender: TObject);
var
  id: SmallInt;
  b: Boolean;
  Results: array [0 .. 2] of String;
//  txt: string;
begin
  inherited;
  if not(qryClockDmp.State in dsEditModes) then
    Exit;
  id := (Sender as TDBGrid).SelectedIndex;

  if DBGridClockDmp.Columns[id].FieldName = 'PERNO' then
  begin
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
      'کد و عنوان نيروي انساني/پيمانكار',
      'SELECT Customers.CustID, Customers.CustName ' +
      'FROM Customers INNER JOIN CustomersGroup ON ' +
      'Customers.CustomerGrpID = CustomersGroup.CustomerGrpID ' +
      'WHERE (CustomersGroup.GroupType IN (11)) ' +
      'AND ( Customers.PersonID1 =  ' + qryWorkShopIdCustID.AsString + ' )',
      ['کد', ' عنوان  نيروي انساني/پيمانكار'], Results, [50, 150], alLeft);
    if b then
      qryClockDmp.FieldByName('PERNO').AsString := Results[0];
    Exit;
  end;
end;

procedure TTshClockDmpF.DBGridClockDmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TTshClockDmpF.gridkeyenter(Sender: TObject; var Key: Char);
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

        if (curIndex > 2) and (aDataSet.FieldByName('PERNO').ISNULL) then
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
        while (nextIndex >= 0) and
          (not(DBGridClockDmp.Columns[nextIndex].Visible) OR
          (DBGridClockDmp.Columns[nextIndex].ReadOnly)) do
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

      #32, #157: if DBGridClockDmp.Columns[curIndex]
        .ButtonStyle = cbsEllipsis then
    begin
      // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      DBGridClockDmpEditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGridClockDmp.Columns.Count) and
      (not(DBGridClockDmp.Columns[nextIndex].Visible) OR
      (DBGridClockDmp.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          DBGridClockDmp.SelectedIndex := 0;
        end;
      // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end;

end;

procedure TTshClockDmpF.medtPersonIdToKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnPersonTo.Click;
end;

procedure TTshClockDmpF.mskYearExit(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TTshClockDmpF.medtPersonIdFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnPersonForm.Click;
end;

procedure TTshClockDmpF.N11Click(Sender: TObject);
var
  i, c: Integer;
  s: string;
  procedure sUPDATE;
  begin
    If s <> EmptyStr then
      with DMf.qryTmpTmp do
      begin
        Active := False;
        SQL.Text :=
          Format('UPDATE TSH.ClockDmp SET IO_TYPE = %D WHERE (ID IN (%S))',
          [(Sender as TMenuItem).Tag, s]);
        c := c + ExecSQL;
        BigMessage(IntToStr(c) + ' سطر از ' +
          IntToStr(DBGridClockDmp.SelectedRows.Count) + (Sender as TMenuItem)
          .Caption + ' ‌  شد.', 1);
        s := EmptyStr;
      end; // with
  end;

begin
  inherited;
  c := 0;
  if DBGridClockDmp.SelectedRows.Count > 0 then
    if get_response('آيا براي ' + (Sender as TMenuItem).Caption +
      ' نمودن سطر‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes then
      Exit;

  try
    qryClockDmp.DisableControls;
    with DBGridClockDmp.DataSource.DataSet do
      for i := 0 to DBGridClockDmp.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGridClockDmp.SelectedRows.Items[i]));
        if s <> '' then
          s := s + ',';
        s := s + FieldByName('ID').AsString;
        if (i + 1) mod PartSise = 0 then
          sUPDATE;
      end;
    sUPDATE;
  finally
    qryClockDmp.EnableControls;
    i := qryClockDmp.FieldByName('ID').AsInteger;
    qryClockDmp.Active := False;
    qryClockDmp.Open;
    qryClockDmp.Locate('ID', i, [])
  end;
end;

procedure TTshClockDmpF.N4Click(Sender: TObject);
var
  PERNO, CLOCKDATEint: Integer;
begin
  inherited;
  With qryClockDmp do
    try
      DisableControls;
      Requery();
      BeforeEdit := nil;
      AfterPost := nil;
      Sort := 'PERNO,CLOCKDATE';
      Filter := 'IO_TYPE <> ''9''';
      Filtered := True;
      First;
      PERNO := 0;
      CLOCKDATEint := 0;
      while not Eof do
      begin
        if (PERNO <> FieldByName('PERNO').AsInteger) or
          (CLOCKDATEint <> FieldByName('CLOCKDATEint').AsInteger) then
        begin
          Edit;
          qryClockDmpIO_TYPE.AsInteger := 1;
          Post;
          PERNO := FieldByName('PERNO').AsInteger;
          CLOCKDATEint := FieldByName('CLOCKDATEint').AsInteger;
          Next;
        end
        else
        begin
          Edit;
          qryClockDmpIO_TYPE.AsInteger := 2;
          Post;
          PERNO := 0;
          CLOCKDATEint := 0;
          Next;
        end;
      end;
    finally
      EnableControls;
      qryClockDmp.BeforeEdit := qryClockDmpBeforeEdit;
      qryClockDmp.AfterPost := qryClockDmpAfterPost;
      Filtered := False;
    end;
end;

procedure TTshClockDmpF.qryClockDmpAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('كاركرد حذف شد.', 1);
end;

procedure TTshClockDmpF.qryClockDmpAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // DataSet.FieldByName('KARTNO').AsInteger :=
  // GetANewCode(Self.Name, 'Tsh.ClockDmp', 'KARTNO', DMf.adcBSell);
  DataSet.FieldByName('Insertkind').AsInteger := 1;
  DataSet.FieldByName('REC').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('CLOCKDATE').AsString := var_glb_CurrentDate;

end;

procedure TTshClockDmpF.qryClockDmpALLPikGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  col: TColumn;
  i: Integer;

begin
  inherited;
  col := DBGridClockDmp.Columns[ColumnIndexByFieldName(DBGridClockDmp,
    (Sender as TField).FieldName)];
  if Sender.AsString = EmptyStr then
    i := -1
  else
    i := StrToInt(Sender.AsString);
  if col.PickList.IndexOfObject(TObject(i)) > -1 then
    // Text := col.PickList[Sender.AsInteger];
    Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TTshClockDmpF.qryClockDmpALLPikSetText(Sender: TField;
  const Text: String);
var
  col: TColumn;
  i: Integer;
begin
  inherited;
  col := DBGridClockDmp.Columns[ColumnIndexByFieldName(DBGridClockDmp,
    (Sender as TField).FieldName)];
  i := col.PickList.IndexOf(Text);
  if i <> -1 then
    Sender.AsInteger := Integer(col.PickList.Objects[i]);

end;

procedure TTshClockDmpF.qryClockDmpBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not chkFunction then
    Abort;
  if get_response(' آيا براي حذف كاركرد مطمئن هستيد؟') <> mrYes then
    Abort;
end;

function TTshClockDmpF.chkFunction: Boolean;
begin
  Result := qryClockDmpInsertkind.AsInteger > 0;
  if not Result then
    Warn('امكان ويرايش و حذف براي فقط براي نوع ثبت دستي وجود دارد');
end;

procedure TTshClockDmpF.qryClockDmpBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not chkFunction then
    Abort
end;

procedure TTshClockDmpF.qryClockDmpBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TTshClockDmpF.qryClockDmpAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TTshClockDmpF.qryClockDmpStartHourGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('HH:mm', Sender.AsDateTime);
end;

procedure TTshClockDmpF.qryTshClockDmpAfterScroll(DataSet: TDataSet);
begin
  inherited;
  medtPersonIdForm.Text := qryTshClockDmpPERNO.AsString;
  medtPersonIdTo.Text := qryTshClockDmpPERNO.AsString;
  mskPersonNameFrom.Text := qryTshClockDmpCustName.AsString;
  mskPersonNameTo.Text := qryTshClockDmpCustName.AsString;
  qryWorkShopIdAfterScroll(qryWorkShopId);

end;

procedure TTshClockDmpF.qryWorkShopIdAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryClockDmp do
  begin
    Active := False;
    Parameters.ParamByName('MasterPersonID1').Value :=
      qryWorkShopIdCustID.AsInteger;
    Parameters.ParamByName('Year').Value := Trim(mskYear.Text);
    Parameters.ParamByName('Month').Value := Trim(mskMonth.Text);
    Parameters.ParamByName('DayFrom').Value := Trim(mskDayForm.Text);
    Parameters.ParamByName('DayTo').Value := Trim(mskDayTo.Text);
    Parameters.ParamByName('PERNOFrom').Value := Trim(medtPersonIdForm.Text);
    Parameters.ParamByName('PERNOTo').Value := Trim(medtPersonIdTo.Text);
    Active := True;
  end;
end;

procedure TTshClockDmpF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
  UpdateFilter
end;

procedure TTshClockDmpF.initForm;
var
  col: TColumn;
begin
  mskYear.Text := var_glb_CurrentDate; // IntToStr(APPBank.Year);
  mskMonth.Text := IntToStr(var_glb_CurrentMonth);

  col := DBGridClockDmp.Columns[ColumnIndexByFieldName(DBGridClockDmp,
    'Insertkind')];
  col.PickList.AddObject('کارت ساعت', TObject(0));
  col.PickList.AddObject('ثبت دستی', TObject(1));

  col := DBGridClockDmp.Columns[ColumnIndexByFieldName(DBGridClockDmp,
    'IO_TYPE')];
  col.PickList.AddObject('ناقص', TObject(0));
  col.PickList.AddObject('ورود', TObject(1));
  col.PickList.AddObject('خروج', TObject(2));
  // col.PickList.AddObject('ورود ماه بعد', TObject(10));
  // col.PickList.AddObject('خروج ماه قبل', TObject(11));
  col.PickList.AddObject('باطله', TObject(9));
end;

procedure TTshClockDmpF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGridClockDmp, IntToStr(0) + '_' + IntToStr(tbc1.TabIndex));
end;

procedure TTshClockDmpF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGridClockDmp, 3, True, IntToStr(0) + '_' +
    IntToStr(tbc1.TabIndex));

end;

procedure TTshClockDmpF.UpdateFilter;
begin
  ManagGridColumnsF.SetColumns(DMf.adcBSell, DBGridClockDmp, 0);
  With qryWorkShopId do
  begin
    Active := False;
    Parameters.ParamByName('UserID').Value := User.id;
    Active := True;
  end;
end;

procedure TTshClockDmpF.srcClockDmpStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryClockDmp.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, 'Tsh.ClockDmp', '', Self.Name);

  // if okPanel.Visible then
  // DBGridClockDmp.Options := DBGridClockDmp.Options - [dgRowSelect]
  // else
  // DBGridClockDmp.Options := DBGridClockDmp.Options + [dgRowSelect]

end;

procedure TTshClockDmpF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TTshClockDmpF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TTshClockDmpF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TTshClockDmpF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
