unit CustomersAlternative;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppParameter, ComCtrls, Dateutils, ppDesignLayer, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TCustomersAlternativeF = class(TTemplate4F)
    qryCustomersAlternative: TADOQuery;
    srcCustomersAlternative: TDataSource;
    GroupBox2: TGroupBox;
    qryCustomers: TADOQuery;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    edtCustID: TDBEdit;
    edtCustName: TDBEdit;
    srcCustomers: TDataSource;
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
    actExcel: TAction;
    actPrint: TAction;
    actOther: TAction;
    qryCustomersTel: TWideStringField;
    edtTel: TDBEdit;
    qryCustomersAlternativeCustID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    qryCustomersAlternativeAlternativeID: TStringField;
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure srcCustomersAlternativeStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCustomersAlternativeAfterInsert(DataSet: TDataSet);
    procedure qryCustomersAlternativeBeforePost(DataSet: TDataSet);
    procedure qryCustomersAlternativeAfterPost(DataSet: TDataSet);
    procedure qryCustomersAlternativeBeforeDelete(DataSet: TDataSet);
  private
    FormType: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomersAlternativeF: TCustomersAlternativeF;

implementation

uses DM, sort2, search2, GlobalPro, Math, mmessage, FaraConsts;

{$R *.dfm}

procedure TCustomersAlternativeF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCustomersAlternative do
  begin
    Close;
    Parameters.ParamByName('CustID').Value := DataSet.fieldbyname('CustID')
      .AsInteger;
    Open;
  end;
end;

procedure TCustomersAlternativeF.srcCustomersAlternativeStateChange
  (Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCustomersAlternative.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
end;

procedure TCustomersAlternativeF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  with qryCustomers do
  begin
    Close;
    Parameters.ParamByName('Cust').Value := FormType;
    Open;
  end;
end;

procedure TCustomersAlternativeF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryCustomersAlternative.State in dsEditModes then
    qryCustomersAlternative.Post;
end;

procedure TCustomersAlternativeF.qryCustomersAlternativeAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('CustID').AsInteger := FormType;
end;

procedure TCustomersAlternativeF.qryCustomersAlternativeBeforeDelete
  (DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCustomersAlternativeF.qryCustomersAlternativeBeforePost
  (DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort
end;

procedure TCustomersAlternativeF.qryCustomersAlternativeAfterPost
  (DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد ', 1)
end;

end.

