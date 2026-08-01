unit Zone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, sndkey32, DB, Grids, Vcl.DBGrids, ADODB, System.ImageList,
  System.Actions;

type
  TZoneF = class(Ttemplate2MDIF)
    qryOstan: TADOQuery;
    qryShahr: TADOQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    srcOstan: TDataSource;
    srcShahr: TDataSource;
    qryShahrShahrCode: TIntegerField;
    qryShahrShahr: TWideStringField;
    qryShahrOstan: TWideStringField;
    qryShahrOstanCode: TIntegerField;
    qryOstanOstan: TWideStringField;
    qryOstanOstanCode: TIntegerField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BtnExcel: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actSendExcel: TAction;
    actSort: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BtnExcelClick(Sender: TObject);
    procedure qryOstanAfterScroll(DataSet: TDataSet);
    procedure qryShahrBeforeDelete(DataSet: TDataSet);
    procedure qryShahrBeforePost(DataSet: TDataSet);
    procedure qryOstanBeforeScroll(DataSet: TDataSet);
    procedure qryShahrAfterDelete(DataSet: TDataSet);
    procedure qryShahrAfterInsert(DataSet: TDataSet);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure srcShahrStateChange(Sender: TObject);
    procedure qryShahrAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
  private
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ZoneF: TZoneF;

implementation

uses DM, GlobalPro, MMESSAGE, GetExcel, search2, sort2;

{$R *.dfm}

procedure TZoneF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryShahr);
end;

procedure TZoneF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TZoneF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryShahr);
end;

procedure TZoneF.BtnExcelClick(Sender: TObject);
begin
  inherited;
  try
    qryShahr.AfterInsert := nil;
    qryShahr.AfterPost := nil;
    qryShahr.DisableControls;
    GetExcelF.ShowImPortExcel(qryShahr);
  finally
    qryShahr.AfterInsert := qryShahrAfterInsert;
    qryShahr.AfterPost := qryShahrAfterPost;
    qryShahr.EnableControls;
    qryOstan.Requery();
  end;
end;

procedure TZoneF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TZoneF.FormCreate(Sender: TObject);
begin
  inherited;
  qryOstan.Active := True;
  qryShahr.Active := True;
end;

procedure TZoneF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TZoneF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 1);
end;

procedure TZoneF.gridkeyenter(Sender: TObject; var Key: Char);
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
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        nextIndex := curIndex + 1;
        if (curIndex > 0) and (aDataSet.FieldByName('ShahrCode').IsNull) then
        begin
          aDataSet.Cancel;
          okPanel.SetFocus;
          exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid2.Columns[nextIndex].Visible) OR
          (DBGrid2.Columns[nextIndex].ReadOnly)) do
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

    end; // case

    if nextIndex >= 0 then
      while (nextIndex < DBGrid2.Columns.Count) and
        (not(DBGrid2.Columns[nextIndex].Visible) OR
        (DBGrid2.Columns[nextIndex].ReadOnly)) do
        inc(nextIndex);
    if nextIndex >= (Sender as TDBGrid).Columns.Count then
      nextIndex := -1;
    if (curIndex <> nextIndex) then
      case nextIndex of
        - 1:
          begin
            sendkey(vk_down, [], False);
            DBGrid2.SelectedIndex := 0;
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

procedure TZoneF.qryOstanAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryShahr do
  begin
    Active := False;
    Parameters.ParamByName('OstanCode').Value := TADOQuery(DataSet)
      .FieldByName('OstanCode').AsInteger;
    Active := True;
  end;
end;

procedure TZoneF.qryOstanBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  qryShahr.Filtered := False;
end;

procedure TZoneF.qryShahrAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('‘Â— Õ–› ‘œ.', 1);
end;

procedure TZoneF.qryShahrAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('OstanCode').AsInteger :=
    qryOstan.FieldByName('OstanCode').AsInteger;
  DataSet.FieldByName('Ostan').AsString :=
    qryOstan.FieldByName('Ostan').AsString;
  DBGrid2.SetFocus;
  DBGrid2.SelectedIndex := 0;

end;

procedure TZoneF.qryShahrAfterPost(DataSet: TDataSet);
var
  ShahrCode, OstanCode: Integer;
begin
  inherited;
  OstanCode := qryOstan.FieldByName('OstanCode').AsInteger;
  ShahrCode := qryShahr.FieldByName('ShahrCode').AsInteger;
  if qryShahr.state in dsEditModes then
    qryShahr.Post;
  qryShahr.UpdateBatch;
  qryOstan.Requery();
  qryOstan.Locate('OstanCode', OstanCode, []);
  qryShahr.Locate('ShahrCode', ShahrCode, []);
  BigMessage('À»  ‘œ.', 1);
end;

procedure TZoneF.qryShahrBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ‘Â— „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TZoneF.qryShahrBeforePost(DataSet: TDataSet);
begin
  inherited;
  CheckRequiredFields(DataSet);
  TrimStringFields(qryShahr);
end;

procedure TZoneF.srcShahrStateChange(Sender: TObject);
begin
  inherited;
  qryShahr.Filtered := False;
  okPanel.Visible := qryShahr.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
end;

end.
