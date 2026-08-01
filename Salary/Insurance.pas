unit Insurance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Mask, DBCtrls, sndkey32,  Menus, ppParameter,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppDesignLayer, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TInsuranceF = class(TTemplate4F)
    srcInsurance: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    btnSort: TBitBtn;
    btnsearch: TBitBtn;
    btnSendExcel: TBitBtn;
    btn4: TBitBtn;
    actSort: TAction;
    actsearch: TAction;
    actSendExcel: TAction;
    actGetExcel: TAction;
    actPrintVijeh: TAction;
    actPrint: TAction;
    DBGrid1: TCedarDbgrid;
    qryInsurance: TADOQuery;
    qryInsuranceInsuranceID: TIntegerField;
    qryInsuranceFormInfoID: TIntegerField;
    qryInsuranceMinDailySalary: TBCDField;
    qryInsuranceMaxDailySalary: TBCDField;
    qryInsuranceYearRun: TIntegerField;
    qryInsuranceMonthRun: TIntegerField;
    qryInsuranceInsertDate: TStringField;
    qryInsuranceDescriptions: TStringField;
    comboInsuranceNo: TComboBox;
    Label1: TLabel;
    procedure srcInsuranceStateChange(Sender: TObject);
    procedure qryInsuranceAfterInsert(DataSet: TDataSet);
    procedure qryLookUpBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryInsuranceAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryInsuranceBeforePost(DataSet: TDataSet);
    procedure qryInsuranceBeforeDelete(DataSet: TDataSet);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure comboInsuranceNoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    procedure Enter;
    { Public declarations }
  end;

var
  InsuranceF: TInsuranceF;

implementation

uses DM, searchCode_ADO, GlobalPro, DateUtils, mmessage,
  SalaryFunctions, sort2, search2, GetExcel, DBGrid2Print, selected;

{$R *.dfm}

procedure TInsuranceF.srcInsuranceStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := (qryInsurance.State in dseditmodes);
  newPanel.Visible := not okPanel.Visible;
  FreeReservedCodes(DMf.adcSalary, Self.Name);
end;

procedure TInsuranceF.qryInsuranceAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('InsertDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('InsuranceID').AsInteger :=
    GetANewCode('', 'Pay.Insurance', 'InsuranceID');
  DataSet.FieldByName('FormInfoID').AsInteger :=
    Integer(comboInsuranceNo.Items.Objects[comboInsuranceNo.ItemIndex]);
  DBGrid1.SetFocus;
end;

procedure TInsuranceF.qryLookUpBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–›  „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TInsuranceF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TInsuranceF.qryInsuranceAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TInsuranceF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TInsuranceF.gridkeyenter(Sender: TObject; var Key: Char);
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
            nextIndex := 1;
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
        if (curIndex > 0) and (aDataSet.FieldByName('MinDailySalary').AsString.IsEmpty)
        then
        begin
          aDataSet.Cancel;
          exit;
        end;
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
        // SendKey('000',false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin // if curIndex in [3,7,8,9,10,11,12] then begin
      Key := #0;
      // DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 1;
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
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TInsuranceF.qryInsuranceBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet, '', '') then
    Abort;
end;

procedure TInsuranceF.Enter;
begin
  InsuranceF := TInsuranceF.Create(Application);
  with InsuranceF do
  begin
    try
      With qryInsurance do
      begin
        Close;
        Open;
        DBGrid1.ColorDBGrid;
      end;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TInsuranceF.FormShow(Sender: TObject);
begin
  inherited;
  initDBComboInsurance(comboInsuranceNo);
  comboInsuranceNo.ItemIndex := 0;


  if comboInsuranceNo.ItemIndex = -1 then
    exit;
  with qryInsurance do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoID').Value :=
      Integer(comboInsuranceNo.Items.Objects[comboInsuranceNo.ItemIndex]);
    Active := True;
  end; // with

end;

procedure TInsuranceF.qryInsuranceBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TInsuranceF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInsuranceF.comboInsuranceNoChange(Sender: TObject);
begin
  inherited;
  if comboInsuranceNo.ItemIndex = -1 then
    exit;
  with qryInsurance do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoID').Value :=
      Integer(comboInsuranceNo.Items.Objects[comboInsuranceNo.ItemIndex]);
    Active := True;
  end; // with

end;

procedure TInsuranceF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryInsurance)
end;

end.
