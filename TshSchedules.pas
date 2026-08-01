unit tshSchedules;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, sndkey32,
  Mask, DBCtrls, DB, Grids, Vcl.DBGrids, ADODB, ppBands, ppCache,
  ppClass, ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TtshSchedulesF = class(Ttemplate2MDIF)
    qrySchedules: TADOQuery;
    srcSchedules: TDataSource;
    okPanel: TPanel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    newPanel: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btnExcel: TBitBtn;
    qryWorkGroupId: TADOQuery;
    actExcel: TAction;
    actFilter: TAction;
    actCopyPaste: TAction;
    actPrint: TAction;
    actSort: TAction;
    btnSort: TBitBtn;
    btnSort1: TBitBtn;
    btnSearch_: TBitBtn;
    actGetExcel: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    btnPrint: TBitBtn;
    grd1: TDBGrid;
    pnl1: TPanel;
    qryScheduleItems: TADOQuery;
    srcScheduleItems: TDataSource;
    qryScheduleItemsDayId: TWordField;
    qryScheduleItemsNote: TWideStringField;
    qrySchedulesScheduleId: TIntegerField;
    qrySchedulesWorkGroupId: TIntegerField;
    qrySchedulesScheduleNo: TIntegerField;
    qrySchedulesScheduleDate: TStringField;
    qrySchedulesScheduleNote: TWideStringField;
    qrySchedulesRunDate: TStringField;
    qrySchedules_WorkGroupId: TStringField;
    lbl2: TLabel;
    dblkcbb_WorkGroupId: TDBLookupComboBox;
    qryWeek: TADOQuery;
    qryScheduleItems_DayId: TStringField;
    qryScheduleItemsScheduleItemId: TAutoIncField;
    qryScheduleItemsScheduleId: TIntegerField;
    lbl1: TLabel;
    edtScheduleNo: TDBEdit;
    lbl3: TLabel;
    edtScheduleDate: TDBEdit;
    lbl4: TLabel;
    edtRunDate: TDBEdit;
    grp1: TGroupBox;
    dbmmoScheduleNote: TDBMemo;
    dbnvgr1: TDBNavigator;
    pnl2: TPanel;
    btnBtnDelete2: TBitBtn;
    btnCopyPaste: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    qryScheduleItemsShift1: TBCDField;
    qryScheduleItemsShift2: TBCDField;
    qryScheduleItemsShift3: TBCDField;
    procedure srcSchedulesStateChange(Sender: TObject);
    procedure qrySchedulesAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure grd1KeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure qrySchedulesAfterPost(DataSet: TDataSet);
    procedure qrySchedulesBeforePost(DataSet: TDataSet);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actManagGridColumnsExecute(Sender: TObject);
    procedure qrySchedulesBeforeDelete(DataSet: TDataSet);
    procedure qrySchedulesAfterDelete(DataSet: TDataSet);
    procedure qrySchedulesAfterScroll(DataSet: TDataSet);
    procedure qryScheduleItemsAfterInsert(DataSet: TDataSet);
    procedure qryScheduleItemsBeforeDelete(DataSet: TDataSet);
    procedure qryScheduleItemsBeforePost(DataSet: TDataSet);
    procedure grd1Enter(Sender: TObject);
  private
    FormType: Integer;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tshSchedulesF: TtshSchedulesF;

implementation

uses DM, GlobalPro, GetExcel, MMESSAGE, sort2, search2,
  ManagGridColumns;

{$R *.dfm}

procedure TtshSchedulesF.actManagGridColumnsExecute(Sender: TObject);
begin
  inherited;
  ManagGridColumnsF.ShowColumns(DMf.adcBSell, grd1, FormType)
end;

procedure TtshSchedulesF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1)
end;

procedure TtshSchedulesF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qrySchedules.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qrySchedules);
  finally
    qrySchedules.AfterPost := qrySchedulesAfterPost;
  end;
end;

procedure TtshSchedulesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrySchedules.DisableControls;
    InitReportFile(ppReport1, Self.Name, True);
  finally
    qrySchedules.EnableControls;
  end; // try
end;

procedure TtshSchedulesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySchedules);
end;

procedure TtshSchedulesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qrySchedules);
end;

procedure TtshSchedulesF.grd1Enter(Sender: TObject);
var
  i: SmallInt;
begin
  inherited;
  if qryScheduleItems.RecordCount = 0 then
    With qryScheduleItems do
    begin
      for i := 1 to 7 do
      begin
        Insert;
        FieldByName('DayId').AsInteger := i;
        Post;
      end;
      First;
    end;
  grd1.SelectedIndex := 1;
end;

procedure TtshSchedulesF.grd1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TtshSchedulesF.gridkeyenter(Sender: TObject; var Key: Char);
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

        if (curIndex > 0) and (aDataSet.FieldByName('_DayId').IsNull) then
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
        while (nextIndex >= 0) and (not(grd1.Columns[nextIndex].Visible) OR
          (grd1.Columns[nextIndex].ReadOnly)) do
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

      #32, #157: if grd1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin
      // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      // DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < grd1.Columns.Count) and
      (not(grd1.Columns[nextIndex].Visible) OR
      (grd1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          grd1.SelectedIndex := 1;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TtshSchedulesF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  qrySchedules.Active := True;
  qrySchedules.Last;
end;

procedure TtshSchedulesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grd1, IntToStr(FormType));
end;

procedure TtshSchedulesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grd1, 4, True, IntToStr(FormType));
end;

procedure TtshSchedulesF.qryScheduleItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ScheduleId').AsInteger :=
    qrySchedulesScheduleId.AsInteger;
end;

procedure TtshSchedulesF.qryScheduleItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response(' ¬Ì« »—«Ì Õ–› ”ÿ— „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TtshSchedulesF.qryScheduleItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TtshSchedulesF.qrySchedulesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TtshSchedulesF.qrySchedulesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ScheduleId').AsInteger :=
    GetANewCode(Self.Name, 'Tsh.Schedules', 'ScheduleId', DMf.adcBSell);
  DataSet.FieldByName('ScheduleNo').AsInteger :=
    GetANewCode(Self.Name, 'Tsh.Schedules', 'ScheduleNo', DMf.adcBSell);
  DataSet.FieldByName('ScheduleDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('RunDate').AsString := var_glb_CurrentDate;
  dblkcbb_WorkGroupId.SetFocus;
end;

procedure TtshSchedulesF.qrySchedulesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response(' ¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TtshSchedulesF.qrySchedulesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
end;

procedure TtshSchedulesF.qrySchedulesAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryScheduleItems.state in dsEditModes then
    qryScheduleItems.Post;
  try
    qryScheduleItems.UpdateBatch;
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn(E.Message);
    end;
  end; // try
  BigMessage('À»  ‘œ.', 1);
end;

procedure TtshSchedulesF.qrySchedulesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryScheduleItems do
  begin
    Active := False;
    Parameters.ParamByName('ScheduleId').Value :=
      qrySchedulesScheduleId.AsInteger;
    Active := True;
  end;
end;

procedure TtshSchedulesF.srcSchedulesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qrySchedules.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  DataSetDelete1_.Visible := okPanel.Visible ;
  FreeReservedCodes(DMf.adcBSell, 'Tsh.Schedules', '', Self.Name);
end;

end.
