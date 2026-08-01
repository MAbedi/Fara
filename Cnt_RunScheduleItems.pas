unit Cnt_RunScheduleItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DateUtils, sndkey32, Grids, Vcl.DBGrids, DBCtrls, Mask, DB, ADODB,
  StrUtils, DM, GlobalPro, shamsiDate, System.ImageList, System.Actions;

type
  TCnt_RunScheduleItemsF = class(Ttemplate2MDIF)
    qryRunSchedules: TADOQuery;
    srcRunSchedules: TDataSource;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BtnExcel: TBitBtn;
    srcRunScheduleItems: TDataSource;
    qryRunScheduleItems: TADOQuery;
    qryRunSchedulesCaseNo: TIntegerField;
    qryRunSchedulesOperationId: TLargeintField;
    qryRunSchedulesAmount: TBCDField;
    qryRunSchedulesRunScheduleId: TIntegerField;
    qryRunSchedulesRunScheduleType: TIntegerField;
    qryRunSchedulesInsertDate: TDateTimeField;
    qryRunSchedulesParallellStageId: TIntegerField;
    qryRunSchedulesSequenceStageId: TIntegerField;
    qryRunSchedulesMinMembers: TIntegerField;
    qryRunSchedulesFarmId: TIntegerField;
    qryRunSchedulesPieceId: TIntegerField;
    qryRunScheduleItemsRunScheduleItemId: TIntegerField;
    qryRunScheduleItemsRunScheduleId: TIntegerField;
    qryRunScheduleItemsYear: TIntegerField;
    qryRunScheduleItemsMonth: TWordField;
    qryRunScheduleItemsDay: TWordField;
    qryRunScheduleItemsAmount: TBCDField;
    qryRunScheduleItemsInsertDate: TDateTimeField;
    qryRunScheduleItemsMinMembers: TIntegerField;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    qryRunSchedulesNote: TStringField;
    GroupBox5: TGroupBox;
    dbmmoNote: TDBMemo;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    qryRunSchedules_StuffName: TStringField;
    qryRunSchedules_UnitName: TStringField;
    procedure srcRunSchedulesStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnExcelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryRunScheduleItemsAfterDelete(DataSet: TDataSet);
    procedure qryRunScheduleItemsAfterInsert(DataSet: TDataSet);
    procedure qryRunScheduleItemsAfterPost(DataSet: TDataSet);
    procedure qryRunSchedulesAfterScroll(DataSet: TDataSet);
    procedure qryRunScheduleItemsBeforeDelete(DataSet: TDataSet);
    procedure qryRunScheduleItemsBeforePost(DataSet: TDataSet);
    procedure qryRunScheduleItemsInsertDateGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    RunScheduleType: Integer;
    GroupType: Integer;
    procedure InitForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cnt_RunScheduleItemsF: TCnt_RunScheduleItemsF;

implementation

uses MMESSAGE, GetExcel, FormFunctions, searchCode_ADO;

{$R *.dfm}

procedure TCnt_RunScheduleItemsF.BtnExcelClick(Sender: TObject);
begin
  inherited;
  try
    qryRunScheduleItems.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryRunScheduleItems);
  finally
    qryRunScheduleItems.AfterPost := qryRunScheduleItemsAfterPost;
  end;
end;

procedure TCnt_RunScheduleItemsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TCnt_RunScheduleItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCnt_RunScheduleItemsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TCnt_RunScheduleItemsF.InitForm;
begin
  RunScheduleType := var_glb_gParam;
  case RunScheduleType of
    0:
      GroupType := 6;

  else
    GroupType := 6;
  end;
  qryRunSchedules.Active := True;
end;

procedure TCnt_RunScheduleItemsF.qryRunScheduleItemsAfterDelete
  (DataSet: TDataSet);
begin
  inherited;
  BigMessage('برنامه ريزي حذف شد.', 1);
end;

procedure TCnt_RunScheduleItemsF.qryRunScheduleItemsAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RunScheduleId').AsInteger :=
    qryRunSchedulesRunScheduleId.AsInteger;
  DataSet.FieldByName('InsertDate').AsDateTime := Now;
  qryRunScheduleItemsYear.AsInteger := APPBank.Year;
  qryRunScheduleItemsMonth.AsString := MidStr(var_glb_CurrentDate, 6, 2);
  qryRunScheduleItemsDay.AsString := MidStr(var_glb_CurrentDate, 7, 2);
end;

procedure TCnt_RunScheduleItemsF.qryRunScheduleItemsAfterPost
  (DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TCnt_RunScheduleItemsF.qryRunScheduleItemsBeforeDelete
  (DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف برنامه ريزي مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCnt_RunScheduleItemsF.qryRunScheduleItemsBeforePost
  (DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
  TrimStringFields(DataSet);
end;

procedure TCnt_RunScheduleItemsF.qryRunScheduleItemsInsertDateGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Format('%s %s‏', [FormatDateTime('t', Sender.AsDateTime),
    miladi2Shamsi(Sender.AsDateTime)])
end;

procedure TCnt_RunScheduleItemsF.qryRunSchedulesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryRunScheduleItems do
  begin
    Active := False;
    Parameters.ParamByName('RunScheduleId').Value :=
      qryRunSchedulesRunScheduleId.AsInteger;
    Active := True;
  end;
end;

procedure TCnt_RunScheduleItemsF.srcRunSchedulesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryRunScheduleItems.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, 'Cnt.RunScheduleItems');
end;

end.
