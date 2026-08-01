unit StoresAlternative;

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
  TStoresAlternativeF = class(TTemplate4F)
    qryStoresAlternative: TADOQuery;
    srcStoresAlternative: TDataSource;
    GroupBox2: TGroupBox;
    qryStores: TADOQuery;
    edtn_StoreID: TDBEdit;
    edtc_StoreName: TDBEdit;
    srcStores: TDataSource;
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
    edtTel: TDBEdit;
    DBGrid1: TCedarDbgrid;
    qryStoresn_StoreID: TSmallintField;
    qryStoresc_StoreName: TStringField;
    qryStoresTel: TStringField;
    qryStoresAlternativeStoreID: TSmallintField;
    qryStoresAlternativeAlternativeID: TStringField;
    procedure qryStoresAfterScroll(DataSet: TDataSet);
    procedure srcStoresAlternativeStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryStoresAlternativeAfterInsert(DataSet: TDataSet);
    procedure qryStoresAlternativeBeforePost(DataSet: TDataSet);
    procedure qryStoresAlternativeAfterPost(DataSet: TDataSet);
    procedure qryStoresAlternativeBeforeDelete(DataSet: TDataSet);
  private
    FormType: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StoresAlternativeF: TStoresAlternativeF;

implementation

uses DM, sort2, search2, GlobalPro, Math, mmessage, FaraConsts;

{$R *.dfm}

procedure TStoresAlternativeF.qryStoresAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryStoresAlternative do
  begin
    Close;
    Parameters.ParamByName('StoreID').Value := DataSet.fieldbyname('n_StoreID')
      .AsInteger;
    Open;
  end;
end;

procedure TStoresAlternativeF.srcStoresAlternativeStateChange
  (Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStoresAlternative.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
end;

procedure TStoresAlternativeF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  with qryStores do
  begin
    Close;
    Parameters.ParamByName('StoreID').Value := FormType;
    Open;
  end;
end;

procedure TStoresAlternativeF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryStoresAlternative.State in dsEditModes then
    qryStoresAlternative.Post;
end;

procedure TStoresAlternativeF.qryStoresAlternativeAfterInsert
  (DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('StoreID').AsInteger := FormType;
end;

procedure TStoresAlternativeF.qryStoresAlternativeBeforeDelete
  (DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort
end;

procedure TStoresAlternativeF.qryStoresAlternativeBeforePost
  (DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort
end;

procedure TStoresAlternativeF.qryStoresAlternativeAfterPost
  (DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد ', 1)
end;

end.

