unit MachineStop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppParameter, SNDKEY32, ppDesignLayer, System.Actions;

type
  TMachineStopF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    qryMachineStop: TADOQuery;
    srcMachineStop: TDataSource;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    BitBtn3: TBitBtn;
    btnSearch: TBitBtn;
    actExcel: TAction;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    actPrint: TAction;
    BitBtn5: TBitBtn;
    actOther: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    qryMachineStopStopID: TAutoIncField;
    qryMachineStopStopType: TIntegerField;
    qryMachineStopMaintenanceID: TIntegerField;
    qryMachineStopFunctionId: TIntegerField;
    qryMachineStopMachineId: TLargeintField;
    qryMachineStopCustID: TIntegerField;
    qryMachineStopStopDate: TStringField;
    qryMachineStopStopKind: TIntegerField;
    qryMachineStopOfTime: TDateTimeField;
    qryMachineStopTermTime: TDateTimeField;
    qryMachineStopStopNote: TStringField;
    pnlMaintenance: TPanel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryMaintenance: TADOQuery;
    Label5: TLabel;
    edtsd1: TDBEdit;
    edt_StuffCode: TDBEdit;
    qryMaintenanceMaintenanceNo: TWordField;
    qryMaintenanceStuffCode: TLargeintField;
    qryMaintenancec_StuffName: TStringField;
    qryMaintenancesd1: TStringField;
    qryMaintenancesd2: TStringField;
    lblMaintenanceNo: TLabel;
    edtMaintenanceNo: TDBEdit;
    srcMaintenance: TDataSource;
    edtsd2: TDBEdit;
    lblLblsd1: TLabel;
    lblLblsd4: TLabel;
    Label2: TLabel;
    edtc_StuffName: TDBEdit;
    qryFunctions: TADOQuery;
    qryFunctionsFunctionId: TIntegerField;
    qryFunctionsPersonId: TIntegerField;
    srcFunctions: TDataSource;
    qryFunctionsCustName: TStringField;
    pnlFunctions: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    edtPersonId: TDBEdit;
    edtCustName: TDBEdit;
    qryLookUps: TADOQuery;
    qryMachineStop_StopKind: TStringField;
    qryMaintenanceMaintenanceID: TIntegerField;
    qryFunctionsFunctionDate: TStringField;
    qryMaintenanceMaintenanceDate: TStringField;
    qryFunctionsMachineId: TLargeintField;
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure srcMachineStopStateChange(Sender: TObject);
    procedure qryMachineStopBeforeDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryMachineStopAfterInsert(DataSet: TDataSet);
    procedure qryMachineStopBeforePost(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure qryMachineStopAfterPost(DataSet: TDataSet);
    procedure qryMachineStopOfTimeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
  private
    FormType: Integer;
    procedure InitForm(qryFun, qryMain: TADOQuery);
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    procedure Enter(qryFun, qryMain: TADOQuery; Form_Type: Integer);
    { Public declarations }
  end;

var
  MachineStopF: TMachineStopF;

implementation

uses DM, sort2, search2, GlobalPro, Math, mmessage, shamsiDate, FaraConsts;

{$R *.dfm}

procedure TMachineStopF.Enter(qryFun, qryMain: TADOQuery; Form_Type: Integer);
begin
  MachineStopF := TMachineStopF.Create(Application);
  with MachineStopF do
  begin
    try
      FormType := Form_Type;
      InitForm(qryFun, qryMain);
      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TMachineStopF.InitForm(qryFun, qryMain: TADOQuery);
begin
  pnlFunctions.Visible := FormType = 3;
  pnlMaintenance.Visible := FormType <> 3;
  lblMaintenanceNo.Visible:=FormType <> 2;
  edtMaintenanceNo.Visible:=FormType <> 2;
  case FormType of
    1:
      begin
        qryLookUps.Parameters.ParamByName('Kind').Value := 407;
        Caption := ' Êﬁ› œ—  ⁄„Ì— Ê‰êÂœ«—Ì „«‘Ì‰ ¬·« ';
      end;
    2:
      begin
        qryLookUps.Parameters.ParamByName('Kind').Value := 408;
        Caption := ' Êﬁ› œ— ﬂ«—ﬂ—œ „«‘Ì‰ ¬·« ';
      end;
    3:
      begin
        qryLookUps.Parameters.ParamByName('Kind').Value := 451;
        Caption := ' Êﬁ›«  Å—”‰· Ê ÅÌ„«‰ﬂ«—«‰';
      end;
  end;
  lblTopic0.Caption := Caption;
  with qryFunctions do
  begin
    Active := False;
    Parameters.ParamByName('FunctionId').Value :=
      qryFun.FieldByName('FunctionId').AsInteger;
    Active := True;
  end;
  with qryMachineStop do
  begin
    SQL.Add(' AND (FunctionId = :FunctionId )');
    Parameters.ParamByName('FunctionId').Value :=
      qryFun.FieldByName('FunctionId').AsInteger;
  end;

  if (qryMain <> nil) then
  begin
    with qryMaintenance do
    begin
      Active := False;
      Parameters.ParamByName('MaintenanceID').Value :=
        qryMain.FieldByName('MaintenanceID').AsInteger;
      Active := True;
    end;
    with qryMachineStop do
    begin
      SQL.Add(' AND (MaintenanceID = :MaintenanceID )');
      Parameters.ParamByName('MaintenanceID').Value :=
        qryMain.FieldByName('MaintenanceID').AsInteger;
    end;
  end;
  with qryMachineStop do
  begin
    Active := False;
    Parameters.ParamByName('StopType').Value := FormType;
    Active := True;
  end;
  setColumns2(DBGrid1, FormType <> 1, 'CustID');
  ColorDBGrid(DBGrid1);
end;

procedure TMachineStopF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMachineStop);
end;

procedure TMachineStopF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TMachineStopF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMachineStop);
end;

procedure TMachineStopF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMachineStopF.srcMachineStopStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryMachineStop.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  // BtnReject.Cancel:=newPanel.Visible;

end;

procedure TMachineStopF.qryMachineStopBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response(' ¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TMachineStopF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if qryMachineStop.State in dsEditModes then
    qryMachineStop.Post;
end;

procedure TMachineStopF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5);
end;

procedure TMachineStopF.qryMachineStopAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if FormType <> 3 then
  begin

  end;

  case FormType of
    1:
      begin
        DataSet.FieldByName('MachineId').AsLargeInt :=
          qryMaintenance.FieldByName('StuffCode').AsLargeInt;
        DataSet.FieldByName('MaintenanceID').AsInteger :=
          qryMaintenance.FieldByName('MaintenanceID').AsInteger;
        DataSet.FieldByName('StopDate').AsString :=
          qryMaintenance.FieldByName('MaintenanceDate').AsString;
        DataSet.FieldByName('CustID').AsInteger := 0;
      end;
    2:
      begin
        DataSet.FieldByName('FunctionId').AsInteger :=
          qryFunctions.FieldByName('FunctionId').AsInteger;
        DataSet.FieldByName('StopDate').AsString :=
          qryFunctions.FieldByName('FunctionDate').AsString;
        DataSet.FieldByName('MachineId').AsLargeInt :=
          qryFunctions.FieldByName('MachineId').AsLargeInt;
        DataSet.FieldByName('CustID').AsInteger := 0;
      end;
    3:
      begin
        DataSet.FieldByName('MachineId').AsLargeInt := 0;
        DataSet.FieldByName('FunctionId').AsInteger :=
          qryFunctions.FieldByName('FunctionId').AsInteger;
        DataSet.FieldByName('StopDate').AsString :=
          qryFunctions.FieldByName('FunctionDate').AsString;
        DataSet.FieldByName('CustID').AsInteger :=
          qryFunctions.FieldByName('PersonId').AsInteger;
      end;
  end;

  DataSet.FieldByName('StopType').AsInteger := FormType;
end;

procedure TMachineStopF.qryMachineStopBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

procedure TMachineStopF.qryMachineStopOfTimeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('HH:mm', Sender.AsDateTime);
end;

procedure TMachineStopF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'MachineStop' + IntToStr(FormType), True, False,
    '›—„', False);
end;

procedure TMachineStopF.qryMachineStopAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ ', 1);
end;

procedure TMachineStopF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
//  aDataSet: TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
  //      aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          7:
            nextIndex := -1;
        else
          nextIndex := curIndex + 1;
        end; // case
        // if (curIndex > 1) and (aDataSet.FieldByName('PersonId').IsNull) then
        // begin
        // nextIndex := -2;
        // end;
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

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis
      // if curIndex in [3,7,8,9,10,11,12]
      then
    begin
      Key := #0;
      // DBGrid1EditButtonClick(Sender);
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
          (Sender as TDBGrid).SelectedIndex := 0;
        end; // 0
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
end; // case

end;

end.
