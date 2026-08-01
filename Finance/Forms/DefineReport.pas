unit DefineReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, DBCtrls, strutils,
  ADODB, Menus, System.ImageList, System.Actions;

type

  TDefineReportF = class(Ttemplate2MDIF)
    qryrows: TADOQuery;
    Srcrows: TDataSource;
    qryrowsrowID: TIntegerField;
    qryrowsrepCode: TWordField;
    qryrowsrowTopic1: TWideStringField;
    qryrowsCalbase1: TWordField;
    qryrowslink1: TWideStringField;
    qryrowscType1: TWordField;
    qryrowsColNum1: TWordField;
    qryrowsrowTopic2: TWideStringField;
    qryrowsCalbase2: TWordField;
    qryrowslink2: TWideStringField;
    qryrowscType2: TWordField;
    qryrowsColNum2: TWordField;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    NewPanel: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    OkPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel1: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    cmbReports: TComboBox;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    btnSelect: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    qryAccCode_1: TADOQuery;
    qryAccCode_2: TADOQuery;
    SrcAccCode_1: TDataSource;
    SrcAccCode_2: TDataSource;
    Bevel1: TBevel;
    qryAccCode_1MoeenDetail: TWideStringField;
    qryAccCode_1MoeenCtopic: TWideStringField;
    qryAccCode_1AccName: TWideStringField;
    qryAccCode_2MoeenDetail: TWideStringField;
    qryAccCode_2MoeenCtopic: TWideStringField;
    qryAccCode_2AccName: TWideStringField;
    qryAccCode_2ID: TAutoIncField;
    qryAccCode_1ID: TAutoIncField;
    qryAccCode_1MoeenName_L1: TStringField;
    qryAccCode_2MoeenName_L1: TStringField;
    qryAccCode_1G_TopicCode: TIntegerField;
    qryAccCode_1Topic_DetailCode: TStringField;
    qryAccCode_1Topic_CTopicCode: TStringField;
    qryAccCode_1AccCode: TStringField;
    qryAccCode_2G_TopicCode: TIntegerField;
    qryAccCode_2Topic_DetailCode: TStringField;
    qryAccCode_2Topic_CTopicCode: TStringField;
    qryAccCode_2AccCode: TStringField;
    actGroupSelect: TAction;
    btnGroupSelect: TBitBtn;
    BitBtn12: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actCalling: TAction;
    btnCalling: TBitBtn;
    qryrowsYearID: TIntegerField;
    BitBtn3: TBitBtn;
    BitBtn13: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure qryRowsAfterInsert(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryRowsBeforePost(DataSet: TDataSet);
    procedure cmbReportsChange(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryrowsBeforeDelete(DataSet: TDataSet);
    procedure qryrowsAfterPost(DataSet: TDataSet);
    procedure SrcrowsStateChange(Sender: TObject);
    procedure qryrowsAfterScroll(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure qryrowscType1GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryrowscType1SetText(Sender: TField; const Text: String);
    procedure qryrowscType2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryrowscType2SetText(Sender: TField; const Text: String);
    procedure btnGroupSelectClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryrowsBeforeOpen(DataSet: TDataSet);
    procedure actCallingExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
  private
    { Private declarations }
    _repCode: Integer;

    procedure SetGridCols(ExtraOn: Boolean);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure SelectGroup(aType: byte);
    procedure SortRow(RowID: Integer);
    procedure SelectKol(aType: byte);
  public
    { Public declarations }
  end;

var
  DefineReportF: TDefineReportF;

implementation

uses dm, GlobalPro, sndkey32, DefineReportItems, Math, sort2, search2,
  mmessage, SelectDefineReport, selected;

{$R *.dfm}

procedure TDefineReportF.FormCreate(Sender: TObject);
begin
  inherited;
  with dmF.qry_Temp do
  begin
    cmbReports.Clear;
    Active := False;
    SQL.Text :=
      'Select repCode,repName,ReportType from acc._FinanceReports  where ReportType <=3 order by repCode';
    Active := True;
    while not eof do
    begin
      cmbReports.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
  if cmbReports.Items.Count > 0 then
  begin
    cmbReports.ItemIndex := 0;
    cmbReportsChange(cmbReports);
  end; // if
end;

procedure TDefineReportF.SetGridCols(ExtraOn: Boolean);
var
  i: byte;
  _QryType: byte;
begin
  for i := 6 to 10 do
    DBGrid1.Columns[i].Visible := ExtraOn;
  DBGrid1.Columns[1].Width := DBGrid1.Columns[6].Width;
  // SetColSize(DBGrid1,1);
  with dmF.qry_Temp do
  begin
    Close;
    SQL.Text := 'Select [_QryType] from acc._FinanceReports where repCode = ' +
      IntToStr(_repCode);
    Open;
    _QryType := Fields[0].AsInteger;
    Close;
  end;

  case _QryType of
    1:
      begin
        DBGrid2.Columns[0].FieldName := 'G_TopicCode';
        DBGrid2.Columns[1].FieldName := 'MoeenName_L1';
        DBGrid3.Columns[0].FieldName := 'G_TopicCode';
        DBGrid3.Columns[1].FieldName := 'MoeenName_L1';
      end;
    2:
      begin
        DBGrid2.Columns[0].FieldName := 'Topic_DetailCode';
        DBGrid2.Columns[1].FieldName := 'MoeenDetail';
        DBGrid3.Columns[0].FieldName := 'Topic_DetailCode';
        DBGrid3.Columns[1].FieldName := 'MoeenDetail';
      end;
    3:
      begin
        DBGrid2.Columns[0].FieldName := 'Topic_CTopicCode';
        DBGrid2.Columns[1].FieldName := 'MoeenCtopic';
        DBGrid3.Columns[0].FieldName := 'Topic_CTopicCode';
        DBGrid3.Columns[1].FieldName := 'MoeenCtopic';
      end;
    4:
      begin
        DBGrid2.Columns[0].FieldName := 'AccCode';
        DBGrid2.Columns[1].FieldName := 'AccName';
        DBGrid3.Columns[0].FieldName := 'AccCode';
        DBGrid3.Columns[1].FieldName := 'AccName';
      end;
  end;
  // DBGrid2.Columns[0].Width:=20;
  // DBGrid3.Columns[0].Width:=20 ;
  SetColSize(DBGrid2, 1);
  SetColSize(DBGrid3, 1);

end;

procedure TDefineReportF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0;
end;

procedure TDefineReportF.qryRowsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet['repCode'] := _repCode;
  // DataSet['rowID']:=GetANewCode('','_ReportRows','rowID');
  DBGrid1.SelectedIndex := 1;
end;

procedure TDefineReportF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        Key := #0;
        case curIndex of
          0 .. 10:
            nextIndex := curIndex + 1;
        end; // case
        if (nextIndex > -1) and
          (nextIndex < (Sender as TDBGrid).Columns.Count - 1) then
          while (((Sender as TDBGrid).Columns[nextIndex].ReadOnly) or
            (not(Sender as TDBGrid).Columns[nextIndex].Visible)) do
          begin
            nextIndex := nextIndex + 1;
            if nextIndex > (Sender as TDBGrid).Columns.Count - 1 then
            begin
              nextIndex := -1;
              Break;
            end; // if
          end; // while
        if nextIndex > (Sender as TDBGrid).Columns.Count - 1 then
          nextIndex := -1;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        if nextIndex > 0 then
          if (((Sender as TDBGrid).Columns[nextIndex].ReadOnly) or
            (not(Sender as TDBGrid).Columns[nextIndex].Visible)) then
            dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      // #32:  if curIndex in [3,8] then begin
      // key:=#0;
      // DBGrid1EditButtonClick(sender);
      // end;//if
    end; // case
    if (curIndex <> nextIndex) then
      case nextIndex of
        - 1:
          begin
            sendkey(vk_down, [], False);
            (Sender as TDBGrid).SelectedIndex := 0;
          end; // 0
        -2:
          begin
            if (Sender as TDBGrid).DataSource.State in dseditmodes then
              (Sender as TDBGrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 0, 0);
          end; // -2
        -3:
          begin
            if (Sender as TDBGrid).DataSource.State in dseditmodes then
              (Sender as TDBGrid).DataSource.DataSet.Cancel;
            Perform(WM_NEXTDLGCTL, 1, 0);
          end; // -3
      else
        (Sender as TDBGrid).SelectedIndex := nextIndex;
  end; // case
end;

procedure TDefineReportF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TDefineReportF.qryRowsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('cType1').IsNull then
    Abort;
  qryrows.FieldByName('YearID').Value := APPBank.Year;
end;

procedure TDefineReportF.cmbReportsChange(Sender: TObject);
var
  _RepType: byte;
begin
  inherited;
  if cmbReports.ItemIndex <> -1 then
  begin
    _repCode := Integer(cmbReports.Items.Objects[cmbReports.ItemIndex]);
    with qryrows do
    begin
      Active := False;
      Parameters.ParamByName('repCode').Value := _repCode;
      Active := True;
    end; // with
    with dmF.qry_Temp do
    begin
      Close;
      SQL.Text := 'SELECT ReportType';
      SQL.Add('FROM acc._FinanceReports');
      SQL.Add('WHERE repCode = :RepCode');
      Parameters[0].Value := _repCode;
      Open;
      _RepType := Fields[0].AsInteger;
      Close;
    end;
    GroupBox2.Visible := _RepType = 2;
    SetGridCols(_RepType = 2);
  end; // if
end;

procedure TDefineReportF.actCallingExecute(Sender: TObject);
var
  CallingYear: string;
begin
  inherited;
  try
    CallingYear := get_box('سال مالی', 'سال مالی مورد فراخوانی را وارد کنید',
      IntToStr(APPBank.Year - 1));
    if CallingYear = '' then
      exit;
    if not dmf.adcAccounting.InTransaction then
    dmF.adcAccounting.BeginTrans;

    dmF.adcAccounting.Execute
      (Format('INSERT INTO Acc._ReportRows ( repCode, rowID, rowTopic1, Calbase1, link1, cType1, ColNum1, rowTopic2, Calbase2, link2, cType2, ColNum2, YearID)'
      + 'SELECT  repCode, rowID, rowTopic1, Calbase1, link1, cType1, ColNum1, rowTopic2, Calbase2, link2, cType2, ColNum2, %d '
      + 'FROM Acc._ReportRows WHERE repCode = %d AND  YearID = %d',
      [APPBank.Year, _repCode, StrToInt(CallingYear)]));

    dmF.adcAccounting.Execute
      (Format('INSERT INTO Acc._ReportRowsOnDocs ( repCode, rowID, ColNum, G_TopicCode, G_DetailCode, G_CTopicCode, YearID )'
      + ' SELECT repCode, rowID, ColNum, G_TopicCode, G_DetailCode, G_CTopicCode, %d '
      + ' FROM Acc._ReportRowsOnDocs WHERE repCode = %d AND  YearID = %d',
      [APPBank.Year, _repCode, StrToInt(CallingYear)]));

      if DMf.adcAccounting.InTransaction then
    dmF.adcAccounting.CommitTrans;
    qryrows.Requery();
    BigMessage('انجام شد', 1);

  except
    on e: exception do
    BEGIN
      add2log(e.Message);
      if dmF.adcAccounting.InTransaction then
        dmF.adcAccounting.RollbackTrans;
    END;
  end;

end;

procedure TDefineReportF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDefineReportF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryrows);
end;

procedure TDefineReportF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryrows);
end;

procedure TDefineReportF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  SetColSize(DBGrid2, 1, True);
  SetColSize(DBGrid3, 1, True);
end;

procedure TDefineReportF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid3);
  SaveColWidth(DBGrid2);
end;

procedure TDefineReportF.qryrowsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از حذف مطمئن هستيد') <> mryes then
    Abort;
end;

procedure TDefineReportF.qryrowsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryrows.Parameters.ParamByName('YearID').Value := APPBank.Year;
end;

procedure TDefineReportF.qryrowsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد', 1);
end;

procedure TDefineReportF.SrcrowsStateChange(Sender: TObject);
begin
  inherited;
  OkPanel.Visible := qryrows.State in dseditmodes;
  NewPanel.Visible := not OkPanel.Visible;
  BtnReject.Cancel := NewPanel.Visible;
end;

procedure TDefineReportF.qryrowsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryAccCode_1 do
  begin
    Close;
    Parameters.ParamByName('YearID').Value := qryrows.Parameters.ParamByName
      ('YearID').Value;
    Parameters.ParamByName('RepCode').Value := DataSet.FieldByName('repCode')
      .AsInteger;
    Parameters.ParamByName('RowId').Value := DataSet.FieldByName('rowID')
      .AsInteger;
    Open;
  end;

  with qryAccCode_2 do
  begin
    Close;
    Parameters.ParamByName('YearID').Value := qryrows.Parameters.ParamByName
      ('YearID').Value;
    Parameters.ParamByName('RepCode').Value := DataSet.FieldByName('repCode')
      .AsInteger;
    Parameters.ParamByName('RowId').Value := DataSet.FieldByName('rowID')
      .AsInteger;
    Open;
  end;

end;

procedure TDefineReportF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  try
    if (qryrows.State in dseditmodes) then
      qryrows.Post;
    SelectDefineReportF.enter((Sender as TBitBtn).Tag, qryrowsrowID.AsInteger,
      qryrowsrepCode.AsInteger);
    qryAccCode_1.Requery;
    qryAccCode_2.Requery;
  except
    on e: exception do
      add2log(e.Message);

  end;
end;

procedure TDefineReportF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  if get_response('آيا از حذف مطمئن هستيد؟') <> mryes then
    Abort;
  dmF.adcAccounting.Execute('DELETE FROM acc._ReportRowsOnDocs WHERE (ID=' +
    qryAccCode_1ID.AsString + ')');
  qryAccCode_1.Requery();

end;

procedure TDefineReportF.BitBtn10Click(Sender: TObject);
begin
  inherited;
  if get_response('آيا از حذف مطمئن هستيد؟') <> mryes then
    Abort;
  dmF.adcAccounting.Execute('DELETE FROM acc._ReportRowsOnDocs WHERE (ID=' +
    qryAccCode_2ID.AsString + ')');
  qryAccCode_2.Requery();

end;

procedure TDefineReportF.qryrowscType1GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  n: byte;
begin
  inherited;
  n := DBGrid1.Columns[4].PickList.Count;
  if Sender.AsInteger in [1 .. n] then
    Text := DBGrid1.Columns[4].PickList[Sender.AsInteger - 1];
end;

procedure TDefineReportF.qryrowscType1SetText(Sender: TField;
  const Text: String);
var
  n: byte;
begin
  inherited;
  n := DBGrid1.Columns[4].PickList.IndexOf(Text);
  if n <> -1 then
    Sender.AsInteger := n + 1;
end;

procedure TDefineReportF.qryrowscType2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  n: byte;
begin
  inherited;
  n := DBGrid1.Columns[9].PickList.Count;
  if Sender.AsInteger in [1 .. n] then
    Text := DBGrid1.Columns[9].PickList[Sender.AsInteger - 1];
end;

procedure TDefineReportF.qryrowscType2SetText(Sender: TField;
  const Text: String);
var
  n: byte;
begin
  inherited;
  n := DBGrid1.Columns[9].PickList.IndexOf(Text);
  if n <> -1 then
    Sender.AsInteger := n + 1;
end;

// change in 90/05/16
Procedure TDefineReportF.SelectGroup(aType: byte);
var
  txt: String;
  s: String;
begin
  inherited;
  if (qryrows.State in dseditmodes) then
    qryrows.Post;
  txt := 'SELECT rowID,rowTopic' + IntToStr(aType) +
    ' FROM acc._ReportRows WHERE (repCode = %d) group by rowID,rowTopic' +
    IntToStr(aType) + ' order By rowID ';
  txt := Format(txt, [_repCode]);
  s := selectedF.ShowSelect(dmF.adcAccounting, 'انتخاب گروهي', txt,
    ['كد', 'عنوان'], alLeft, [50, 350]);
  if s = EmptyStr then
    exit;
  with dmF.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'Insert into Acc._ReportRowsOnDocs(repCode, rowID, ColNum, G_TopicCode, G_DetailCode, G_CTopicCode, YearID)';
    SQL.Add('SELECT :repCode,:ROwID , :ColNum, G_TopicCode,0,0, %d FROM Acc._ReportRowsOnDocs');
    SQL.Add('WHERE (RowId  In (%S)) And (ColNum = :NewColNum)and (repCode = :newRepCode) And G_TopicCode');
    SQL.Add('not in ( SELECT G_TopicCode FROM Acc._ReportRowsOnDocs');
    SQL.Add('WHERE (RowId = :OldROW) And (ColNum = :OldColNum)and (repCode = :OldRepCode) and (YearID = %d))');
    SQL.Text := Format(SQL.Text, [APPBank.Year, s, APPBank.Year]);

    Parameters.ParamByName('repCode').Value := _repCode;
    Parameters.ParamByName('ROwID').Value := qryrowsrowID.AsInteger;
    Parameters.ParamByName('ColNum').Value := aType;
    Parameters.ParamByName('newRepCode').Value := _repCode;
    Parameters.ParamByName('NewColNum').Value := aType;
    Parameters.ParamByName('OldRepCode').Value := _repCode;
    Parameters.ParamByName('Oldrow').Value := qryrowsrowID.AsInteger;
    Parameters.ParamByName('oldColNum').Value := aType;

    Warn2(ExecSQL.ToString + ' مورد انجام شد');
    qryAccCode_1.Requery();
    qryAccCode_2.Requery();
  end;

end;

Procedure TDefineReportF.SelectKol(aType: byte);
var
  txt: String;
  s: String;
begin
  inherited;
  if (qryrows.State in dseditmodes) then
    qryrows.Post;

  txt := 'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories '
    + 'where acc.Categories.LevelID =2';

  s := selectedF.ShowSelect(dmF.adcAccounting, 'انتخاب بر اساس کد کل', txt,
    ['كد', 'عنوان'], alLeft, [50, 350]);
  if s = EmptyStr then
    exit;
  with dmF.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'Insert into Acc._ReportRowsOnDocs(repCode, rowID, ColNum';
    SQL.Add(', G_TopicCode, G_DetailCode, G_CTopicCode, YearID)');

    SQL.Add('SELECT  :repCode,:ROwID , :ColNum,TopicCode AS G_TopicCode,0,0, %d ');
    SQL.Add('FROM Acc.CategoriesForUse');
    SQL.Add('where PrvTopicCode in( %s )');
    SQL.Add('And TopicCode');
    SQL.Add('not in ( SELECT G_TopicCode FROM Acc._ReportRowsOnDocs');
    SQL.Add('WHERE (RowId = :OldROW) And (ColNum = :OldColNum)and (repCode = :OldRepCode) )');

    SQL.Text := Format(SQL.Text, [APPBank.Year, s]);

    Parameters.ParamByName('repCode').Value := _repCode;
    Parameters.ParamByName('ROwID').Value := qryrowsrowID.AsInteger;
    Parameters.ParamByName('ColNum').Value := aType;
    Parameters.ParamByName('OldRepCode').Value := _repCode;
    Parameters.ParamByName('Oldrow').Value := qryrowsrowID.AsInteger;
    Parameters.ParamByName('oldColNum').Value := aType;

    Warn2(ExecSQL.ToString + ' مورد انجام شد');
    qryAccCode_1.Requery();
    qryAccCode_2.Requery();
  end;

end;

procedure TDefineReportF.btnGroupSelectClick(Sender: TObject);
begin
  inherited;
  SelectGroup(1);
end;

procedure TDefineReportF.BitBtn12Click(Sender: TObject);
begin
  inherited;
  SelectGroup(2);
end;

procedure TDefineReportF.BitBtn13Click(Sender: TObject);
begin
  inherited;
  SelectKol(2)
end;

procedure TDefineReportF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  SelectKol(1)
end;

procedure TDefineReportF.SortRow(RowID: Integer);
begin
  with qryrows do
    try
      AfterPost := nil;
      if RowID = 0 then
        First;
      while not eof do
      begin
        Edit;
        FieldByName('rowID').AsInteger := RowID + 1;
        Post;
        RowID := FieldByName('rowID').AsInteger;
        Next;
      end;
    finally
      AfterPost := qryrowsAfterPost;;
    end;

end;

procedure TDefineReportF.N1Click(Sender: TObject);
begin
  inherited;
  SortRow(0);
end;

procedure TDefineReportF.N2Click(Sender: TObject);
var
  s: String;
  RowID: Integer;
begin
  inherited;
  s := get_box('ترتيب', 'لطفا كد را وارد كنيد', qryrowsrowID.AsString);
  if s <> '' then
  begin
    TryStrToInt(s, RowID);
    if qryrows.Locate('RowID', RowID, []) then
    begin
      Warn('كد تكراري است');
      exit;
    end;
    if RowID <> 0 then
      SortRow(RowID);
  end;

end;

end.
