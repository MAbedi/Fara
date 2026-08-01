unit ReciptPostOnCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppParameter, ReciptsFunctions, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TReciptPostOnCustomerF = class(TTemplate4F)
    qryPostOnCustomer1: TADOQuery;
    srcPostOnCustomer1: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    actPrint: TAction;
    actOther: TAction;
    Label8: TLabel;
    grdPostOnCustomer1: TCedarDbgrid;
    grdPostOnCustomer2: TCedarDbgrid;
    srcPostOnCustomer2: TDataSource;
    qryPostOnCustomer2: TADOQuery;
    mskFrom: TMaskEdit;
    mskTo: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    qryPostOnCustomer1PersonID1: TIntegerField;
    qryPostOnCustomer1CustName: TStringField;
    qryPostOnCustomer1CountOf: TIntegerField;
    actFilterOn: TAction;
    qryPostOnCustomer1RelatedRecipts: TStringField;
    qryPostOnCustomer2TozinNumber: TIntegerField;
    qryPostOnCustomer2TozinDate: TStringField;
    qryPostOnCustomer2c_StuffName: TStringField;
    qryPostOnCustomer2NumberOfBags: TBCDField;
    qryPostOnCustomer2UseUnitName: TStringField;
    qryPostOnCustomer2SecondType: TStringField;
    qryPostOnCustomer2masir: TWideStringField;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryPostOnCustomer1AfterScroll(DataSet: TDataSet);
    procedure actFilterOnExecute(Sender: TObject);
  private
    FormType: Integer;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciptPostOnCustomerF: TReciptPostOnCustomerF;

implementation

uses DM, sort2, search2, GlobalPro, Math, mmessage, shamsiDate, FaraConsts,
  FormFunctions, GroupReciptPost;

{$R *.dfm}

procedure TReciptPostOnCustomerF.actFilterOnExecute(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TReciptPostOnCustomerF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  GroupReciptPostF.actPost.Execute
end;

procedure TReciptPostOnCustomerF.FormCreate(Sender: TObject);
begin
  inherited;
  mskTo.Text := var_glb_CurrentDate;
  FormType := var_glb_gParam;
  UpdateFilter;
end;

procedure TReciptPostOnCustomerF.UpdateFilter;
begin
  inherited;
  with qryPostOnCustomer2 do
  begin
    Close;
    Parameters.ParamByName('ReciptDateFrom').Value := mskFrom.Text;
    Parameters.ParamByName('ReciptDateTo').Value := mskTo.Text;
  end;
  with qryPostOnCustomer1 do
  begin
    Close;
    Parameters.ParamByName('PersonID1From').Value := 0;
    Parameters.ParamByName('PersonID1To').Value := 2147483647;
    Parameters.ParamByName('ReciptDateFrom').Value := mskFrom.Text;
    Parameters.ParamByName('ReciptDateTo').Value := mskTo.Text;
    Open;
  end;
end;

procedure TReciptPostOnCustomerF.qryPostOnCustomer1AfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qryPostOnCustomer2 do
  begin
    Close;
    Parameters.ParamByName('PersonID1').Value := qryPostOnCustomer1.FieldByName
      ('PersonID1').Value;
    Parameters.ParamByName('RelatedRecipts').Value :=
      qryPostOnCustomer1.FieldByName('RelatedRecipts').Value;
    Open;
  end;
end;

end.
