unit StuffCodingMachinery2Item; // Modified by Mehdi.kahdooei 4/14/2015

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, SumDBGrid, ppParameter, FaraConsts, ppDesignLayer,
  System.Actions;

type
  TStuffCodingMachinery2ItemF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qryMachinery4: TADOQuery;
    srcMachinery4: TDataSource;
    Panel3: TPanel;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    BitBtn2: TBitBtn;
    DBGrid2: TDBGrid;
    qryMachinery3: TADOQuery;
    srcMachinery3: TDataSource;
    atncfldMachinery3Id: TAutoIncField;
    strngfldMachinery3c_StuffName: TStringField;
    strngfldMachinery3c_StuffTecInfo: TStringField;
    qryMachinery3ParentId: TIntegerField;
    qryMachinery4MachinType: TWordField;
    qryMachinery4MachineId: TLargeintField;
    qryMachinery4StuffId: TLargeintField;
    qryMachinery4ControlType: TWordField;
    qryMachinery4Amount: TFloatField;
    qryMachinery4Total: TFloatField;
    qryMachinery4states: TWordField;
    qryMachinery4LookUpID1: TIntegerField;
    qryMachinery4LookUpID2: TIntegerField;
    qryMachinery4LookUpID3: TIntegerField;
    qryMachinery4Amount2: TFMTBCDField;
    strngfld_DeficitsModel: TStringField;
    strngfld_DeficitsSpecifications: TStringField;
    atncfld_DeficitsId: TAutoIncField;
    qryMachinery4ParentId: TIntegerField;
    qryMachinery3StuffId: TLargeintField;
    DBGrid1: TDBGrid;
    qryStuff_Unit_TecInf: TADOQuery;
    strngfldMachinery4_Stuffname: TStringField;
    strngfldMachinery4_Stuffunit: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    qryMachinery3MachineId: TLargeintField;
    procedure srcMachinery4StateChange(Sender: TObject);
    procedure qryMachinery4AfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qryMachinery3AfterScroll(DataSet: TDataSet);
    procedure qryMachinery4AfterInsert(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qryMachinery4BeforeDelete(DataSet: TDataSet);
    procedure qryMachinery4AfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure InitForm(StuffId: Largeint; MachineId: Largeint);
  public
    { Public declarations }
    procedure enter(StuffId: Largeint; MachineId: Largeint);
  end;

var
  StuffCodingMachinery2ItemF: TStuffCodingMachinery2ItemF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, FormFunctions;

{$R *.dfm}

procedure TStuffCodingMachinery2ItemF.enter(StuffId: Largeint;
  MachineId: Largeint);
begin
  StuffCodingMachinery2ItemF := TStuffCodingMachinery2ItemF.Create(Application);
  with StuffCodingMachinery2ItemF do
  begin
    try
      InitForm(StuffId, MachineId);
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TStuffCodingMachinery2ItemF.InitForm(StuffId: Largeint;
  MachineId: Largeint);
begin
  inherited;
  with qryMachinery3 do
  begin
    Active := False;
    Parameters.ParamByName('StuffId').Value := StuffId;
    Active := True;
  end;
  qryMachinery3.Locate('MachineId', MachineId, []);
end;

procedure TStuffCodingMachinery2ItemF.srcMachinery4StateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryMachinery4.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
end;

procedure TStuffCodingMachinery2ItemF.qryMachinery3AfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qryMachinery4 do
    try
      DisableControls;
      Close;
      Parameters.ParamByName('StuffId').Value := qryMachinery3StuffId.asinteger;
      Parameters.ParamByName('Parent').Value := qryMachinery3.FieldByName('Id')
        .asinteger;
      Open;
    finally
      EnableControls;
    end;

end;

procedure TStuffCodingMachinery2ItemF.qryMachinery4AfterDelete
  (DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد . ', 1);
end;

procedure TStuffCodingMachinery2ItemF.qryMachinery4AfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldValues['StuffId'] := qryMachinery3StuffId.asinteger;
  DataSet.FieldValues['MachinType'] := Integer(mtAccessories4);
  DataSet.FieldValues['ControlType'] := 0;
  DataSet.FieldValues['ParentId'] := qryMachinery3.FieldByName('Id').asinteger;
end;

procedure TStuffCodingMachinery2ItemF.qryMachinery4AfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TStuffCodingMachinery2ItemF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TStuffCodingMachinery2ItemF.DBGrid1EditButtonClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كالاها  ',
    qryStuff_Unit_TecInf.SQL.Text, ['كد ', 'عنوان ', 'واحد'], Results,
    [100, 200, 50], alLeft);
  if b then
  begin
    qryMachinery4.FieldByName('MachineId').AsString := Results[0];
  end;

end;

procedure TStuffCodingMachinery2ItemF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TStuffCodingMachinery2ItemF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TStuffCodingMachinery2ItemF.qryMachinery4BeforeDelete
  (DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort;

end;

procedure TStuffCodingMachinery2ItemF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'StuffCodingMachinery2Item', True, False, 'فرم',
    False, pkPrint);
end;

procedure TStuffCodingMachinery2ItemF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TStuffCodingMachinery2ItemF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffCodingMachinery2ItemF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

end.
