unit MachineStop2; // Modified by Mehdi.kahdooei 4/13/2015

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DM, Mask, MMESSAGE,
  sort2, Menus, ppComm, ppRelatv, ppDB, ppDBPipe, ppProd, ppClass, ppReport,
  ppBands, ppCache, ppParameter, ppTypes, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TMachineStop2F = class(Ttemplate2MDIF)
    OkPanel: TPanel;
    btnDataSetPost1: TBitBtn;
    btn3: TBitBtn;
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnSendExel: TBitBtn;
    btnPrint: TBitBtn;
    btnOtherMenu: TBitBtn;
    NewPanel: TPanel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    pgc1: TPageControl;
    ts1: TTabSheet;
    GridStop: TDBGrid;
    srcStop: TDataSource;
    qryStop: TADOQuery;
    qryStuff_Unit_TecInf: TADOQuery;
    qryLookup: TADOQuery;
    pnlDate: TPanel;
    lbl1: TLabel;
    medtDate: TMaskEdit;
    btnDateFillter: TSpeedButton;
    actSort: TAction;
    actSendExel: TAction;
    ppDBPipeline1: TppDBPipeline;
    Pop4print: TPopupMenu;
    print: TMenuItem;
    mnuAllRecords: TMenuItem;
    ppReport1: TppReport;
    actPrint: TAction;
    prmtrlst1: TppParameterList;
    phdrbnd1: TppHeaderBand;
    pdtlbnd1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    lbl2: TLabel;
    qryStopStopType: TIntegerField;
    qryStopMachineId: TLargeintField;
    strngfldStopStopDate: TStringField;
    qryStopStopKind: TIntegerField;
    qryStopTermTime: TDateTimeField;
    strngfldStopStopNote: TStringField;
    qryStopAmount1: TBCDField;
    qryStopAmount2: TBCDField;
    qryStopAmount3: TBCDField;
    wdstrngfldStopOperatorName: TWideStringField;
    atncfldStopStopid: TAutoIncField;
    strngfldStop_StuffName: TStringField;
    strngfldStop_StopName: TStringField;
    procedure GridStopEditButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure srcStopStateChange(Sender: TObject);
    procedure qryStopBeforePost(DataSet: TDataSet);
    procedure qryStopAfterPost(DataSet: TDataSet);
    procedure qryStopBeforeDelete(DataSet: TDataSet);
    procedure qryStopAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnDateFillterClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure mnuAllRecordsClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure qryStopTermTimeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryStopAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MachineStop2F: TMachineStop2F;

implementation

uses searchCode_ADO, GlobalPro, search2;

{$R *.dfm}

procedure TMachineStop2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStop.DisableControls;
    Pop4print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryStop.EnableControls;
  end;
end;

procedure TMachineStop2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2f.showsearch(qryStop);
end;

procedure TMachineStop2F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(GridStop);
end;

procedure TMachineStop2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryStop);
end;

procedure TMachineStop2F.btnDateFillterClick(Sender: TObject);
var
  sqltext: string;
  b: Boolean;
  Results: array [0 .. 0] of String;
begin
  inherited;
  sqltext := 'select distinct stopdate from  Machin.MachineStop';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'تاریخ توقفات', sqltext,
    ['تاریخ'], Results, [160], alLeft);
  if b then

    with qryStop do
      try
        active := false;
        SQL.Text :=
          'SELECT StopType, MachineId, StopDate, StopKind, TermTime, StopNote, Amount1, Amount2, Amount3, OperatorName, Stopid';
        SQL.Add('FROM Machin.MachineStop');
        SQL.Add('where StopDate = :StopDate ');
        Parameters.ParamByName('StopDate').Value := Results[0];
        active := true;
      finally
        medtDate.Text := Results[0];
      end;

end;

procedure TMachineStop2F.FormCreate(Sender: TObject);
begin
  inherited;
  qryStop.Open;
end;

procedure TMachineStop2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(GridStop);
end;

procedure TMachineStop2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(GridStop, 1);
end;

procedure TMachineStop2F.GridStopEditButtonClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كالاها  ',
    qryStuff_Unit_TecInf.SQL.Text, ['كد ', 'عنوان ', 'واحد'], Results,
    [100, 200, 50], alLeft);
  if b then
  begin
    qryStop.FieldByName('MachineId').AsString := Results[0];
  end;

end;

procedure TMachineStop2F.mnuAllRecordsClick(Sender: TObject);
begin
  inherited;
  mnuAllRecords.Checked := not mnuAllRecords.Checked;
end;

procedure TMachineStop2F.printClick(Sender: TObject);
begin
  inherited;
  if mnuAllRecords.Checked then
  begin
    ppDBPipeline1.RangeBegin := rbFirstRecord;
    ppDBPipeline1.RangeEnd := reLastRecord;
  end
  else
  begin
    ppDBPipeline1.RangeBegin := rbCurrentRecord;
    ppDBPipeline1.RangeEnd := reCurrentRecord;
  end;
  InitReportFile(ppReport1, (Sender as TMenuItem).Name, true);
end;

procedure TMachineStop2F.qryStopAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد ', 1);
end;

procedure TMachineStop2F.qryStopAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if Trim(medtDate.Text) <> '/  /' then
    DataSet.FieldValues['Stopdate'] := medtDate.Text;

end;

procedure TMachineStop2F.qryStopAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد ', 1);
end;

procedure TMachineStop2F.qryStopBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TMachineStop2F.qryStopBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;
end;

procedure TMachineStop2F.qryStopTermTimeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('HH:mm', Sender.AsDateTime);
end;

procedure TMachineStop2F.srcStopStateChange(Sender: TObject);
begin
  inherited;
  OkPanel.Visible := qryStop.State in dsEditModes;
  NewPanel.Visible := not OkPanel.Visible;
  BtnReject.Cancel := NewPanel.Visible;
  // FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
end;

end.
