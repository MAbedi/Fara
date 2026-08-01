unit Cnt_ContractsProperties;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ppBands, ppCtrls, ppVar, sndkey32,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, SumDBGrid, ppParameter, System.Actions;

type
  TCnt_ContractsPropertiesF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qryLookUps: TADOQuery;
    srcLookUps: TDataSource;
    qryContractsProperties: TADOQuery;
    srcContractsProperties: TDataSource;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    actPrint: TAction;
    SumGrid1: TSumGrid;
    DataSetDelete: TAction;
    BitBtn7: TBitBtn;
    actOk: TAction;
    qryContractsPropertiesPropertiesID: TAutoIncField;
    qryContractsPropertiesCaseNo: TIntegerField;
    qryContractsPropertiesLookUpID: TIntegerField;
    qryContractsPropertiesPropertiesEntity: TFMTBCDField;
    qryContractsPropertiesPropertiesNote: TStringField;
    grp1: TGroupBox;
    dbmmoPropertiesNote: TDBMemo;
    qryContractsProperties_Name: TStringField;
    procedure qryContractsPropertiesAfterInsert(DataSet: TDataSet);
    procedure srcContractsPropertiesStateChange(Sender: TObject);
    procedure qryContractsPropertiesAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryContractsPropertiesBeforePost(DataSet: TDataSet);
    procedure DataSetDeleteExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure qryContractsPropertiesAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
    qryContracts: TADOQuery;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  public
    function enter(qry_Contracts, qry_Init: TADOQuery): TModalResult;
  end;

var
  Cnt_ContractsPropertiesF: TCnt_ContractsPropertiesF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, FormFunctions;

{$R *.dfm}

function TCnt_ContractsPropertiesF.enter(qry_Contracts, qry_Init: TADOQuery)
  : TModalResult;
begin
  Result := mrNone;
  Cnt_ContractsPropertiesF := TCnt_ContractsPropertiesF.Create(Application);
  with Cnt_ContractsPropertiesF do
    try
      if qry_Init.FieldByName('FormItemKindSerial').AsInteger = 0 then
        Warn('در معرفي انواع فرمهاي اطلاعاتي انبار : نوع اطلاعات : سريال در ثبت قرارداد ها و تشكيل پرونده  تنظیم شود.‏');
      qryLookUps.Parameters.ParamByName('FormItemKindSerial').Value :=
        qry_Init.FieldByName('FormItemKindSerial').AsInteger;
      qryContracts := qry_Contracts;
      SetLookUpCash(qryContractsProperties);
      InitForm;
      Result := ShowModal;
    finally
      Free;
    end;
end;

procedure TCnt_ContractsPropertiesF.qryContractsPropertiesAfterCancel
  (DataSet: TDataSet);
begin
  inherited;
  InitForm
end;

procedure TCnt_ContractsPropertiesF.qryContractsPropertiesAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CaseNo').AsInteger := qryContracts.FieldByName('CaseNo')
    .AsInteger;

end;

procedure TCnt_ContractsPropertiesF.InitForm;
begin
  with qryContractsProperties do
  begin
    Active := False;
    Parameters.ParamByName('CaseNo').Value := qryContracts.FieldByName('CaseNo')
      .AsInteger;
    Active := True;
  end;
end;

procedure TCnt_ContractsPropertiesF.srcContractsPropertiesStateChange
  (Sender: TObject);
begin
  inherited;
  btnClose.Cancel := not(qryContractsProperties.State in dsEditModes);
end;

procedure TCnt_ContractsPropertiesF.qryContractsPropertiesAfterPost
  (DataSet: TDataSet);
begin
  inherited;
  SumGrid1.Active := False;
  SumGrid1.Active := True;
end;

procedure TCnt_ContractsPropertiesF.actOkExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TCnt_ContractsPropertiesF.DataSetDeleteExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if get_response('آيا براي حذف اين كد مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCnt_ContractsPropertiesF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TCnt_ContractsPropertiesF.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TCnt_ContractsPropertiesF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TCnt_ContractsPropertiesF.gridkeyenter(Sender: TObject;
  var Key: Char);
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
          Exit;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 2;
          2:
            nextIndex := -1;

        end; // case
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
      #32, #157: if curIndex in [0] then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          if ((qryContractsProperties.State in dsEditModes)) then
            qryContractsProperties.Post;
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
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TCnt_ContractsPropertiesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TCnt_ContractsPropertiesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCnt_ContractsPropertiesF.qryContractsPropertiesBeforePost
  (DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryContractsProperties) then
    Abort;
  if (DataSet.FieldByName('_Name').IsNull) then
  begin
    DataSet.Cancel;
    Abort
  end;

end;

end.
