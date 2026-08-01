unit Ejare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppParameter, System.Actions;

type
  TEjareF = class(TTemplate4F)
    qryContracts: TADOQuery;
    srcContracts: TDataSource;
    Label1: TLabel;
    edtContractTopic: TDBEdit;
    newPanel: TPanel;
    BitBtn9: TBitBtn;
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
    cmbTarafeGharardadType: TDBComboBox;
    Label40: TLabel;
    edtTozih: TDBEdit;
    Label6: TLabel;
    cmbGharardadTypeCode: TDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    cmbEjariType: TDBComboBox;
    Label10: TLabel;
    edtCaseNo: TDBEdit;
    qryContractsCaseNo: TIntegerField;
    qryContractsTarafeGharardadType: TWordField;
    qryContractsGharardadTypeCode: TWordField;
    qryContractsEjariType: TWordField;
    qryContractsKarbariType: TWordField;
    qryContractsMozuType: TWordField;
    qryContractsContractTopic: TWideStringField;
    cmbKarbariType: TDBComboBox;
    Label2: TLabel;
    cmbMozuType: TDBComboBox;
    Label3: TLabel;
    qryContractsVasile: TWordField;
    cmbVasile: TDBComboBox;
    Label4: TLabel;
    qryContractsTozih: TStringField;
    Label5: TLabel;
    edtWorkShopId: TDBEdit;
    btnWorkShopId: TSpeedButton;
    qryContractsWorkShopId: TIntegerField;
    procedure srcContractsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryContractsAfterPost(DataSet: TDataSet);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure qryContractsBeforePost(DataSet: TDataSet);
    procedure btnWorkShopIdClick(Sender: TObject);
  private
    FormType: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EjareF: TEjareF;

implementation

uses DM, GlobalPro, MMESSAGE, CustomersTax, main;

{$R *.dfm}

procedure TEjareF.srcContractsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryContracts.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
end;

procedure TEjareF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryContracts);
  FormType := var_glb_gParam;
  with qryContracts do
  begin
    Close;
    Parameters.ParamByName('CaseNo').Value := FormType;
    Open;
  end;
end;

procedure TEjareF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if qryContracts.State in dsEditModes then
    qryContracts.Post;
end;

procedure TEjareF.qryContractsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ ', 1);
end;

procedure TEjareF.qryContractsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryContracts) then
    Abort;
  TrimStringFields(DataSet);
end;

procedure TEjareF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TEjareF.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TEjareF.btnWorkShopIdClick(Sender: TObject);
begin
  inherited;
  CreateChildForm(TCustomersTaxF, CustomersTaxF, mainF,
    qryContractsWorkShopId.AsInteger, alNone);
end;

end.
