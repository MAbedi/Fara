unit OtherNationalCodeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, System.Actions,
  ToolCtrlsEh, DBGridEhToolCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, DBGridEhGrouping, DynVarsEh;

type
  TOtherNationalCodeEditF = class(TTemplate4F)
    srcFormItems: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    actPrint: TAction;
    actOther: TAction;
    Label8: TLabel;
    qryFormItems: TADOQuery;
    DBGrid1: TCedarDbgrid;
    qryFormItemsOtherNationalCode: TStringField;
    qryFormItemsCheckNumber: TStringField;
    qryFormItemsCheckDate: TStringField;
    qryFormItemsItemAmount: TBCDField;
    qryFormItemsItemNote: TStringField;
    qryFormItemsBankName: TStringField;
    qryFormItemsAccountNumber: TStringField;
    qryFormItemsCity: TStringField;
    qryFormItemsAccountNumberNew: TStringField;
    qryFormItemsCheckFor: TStringField;
    edtOtherNationalCode: TDBEdit;
    okPanel: TPanel;
    BitBtn2: TBitBtn;
    BitBtn10: TBitBtn;
    newPanel: TPanel;
    BitBtn1: TBitBtn;
    qryFormItemsSyadSystem: TBooleanField;
    dbchkSyadSystem: TDBCheckBox;
    qryForms: TADOQuery;
    srcForms: TDataSource;
    grpDetailNote: TGroupBox;
    dbmmoFomNote: TDBMemo;
    qryFormsFomNote: TStringField;
    qryFormItemsFormID: TIntegerField;
    qryFormsMnuPlaceID: TIntegerField;
    procedure srcFormItemsStateChange(Sender: TObject);
    procedure qryFormItemsBeforeDelete(DataSet: TDataSet);
    procedure qryFormsAfterOpen(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtherNationalCodeEditF: TOtherNationalCodeEditF;

implementation

uses DM;

{$R *.dfm}

procedure TOtherNationalCodeEditF.DBGrid1DblClick(Sender: TObject);
var
  CheckNumber: string;
begin
  inherited;
  with qryFormItems do
  begin
    CheckNumber := qryFormItemsCheckNumber.AsString;
    Close;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM FormItems WHERE (CheckNumber = :CheckNumber) ');
    SQL.Add(' AND (ServerID = :ServerID) AND');
    SQL.Add('(YearID = :YearID)');
    Parameters.ParamByName('CheckNumber').Value := CheckNumber;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := opt.ServerID;
    Open;
  end;

end;

procedure TOtherNationalCodeEditF.qryFormItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  abort
end;

procedure TOtherNationalCodeEditF.qryFormsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryFormItemsCheckDate.ReadOnly := qryFormsMnuPlaceID.AsInteger <> 5;
end;

procedure TOtherNationalCodeEditF.srcFormItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFormItems.State in dseditmodes;
  if okPanel.Visible then
    qryForms.Edit
  else if qryForms.State in dseditmodes then
    qryForms.Post;
  newPanel.Visible := not okPanel.Visible;
end;

end.
