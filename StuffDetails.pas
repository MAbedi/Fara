unit StuffDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, System.Actions,
  ToolCtrlsEh, DBGridEhToolCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, DBGridEhGrouping, DynVarsEh;

type
  TStuffDetailsF = class(TTemplate4F)
    srcRIDEntity: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    actPrint: TAction;
    actOther: TAction;
    Label8: TLabel;
    qryRIDEntity: TADOQuery;
    qryRIDEntityDetailCaption: TStringField;
    qryRIDEntityStoreID: TIntegerField;
    qryRIDEntityEntity: TIntegerField;
    qryRIDEntityStuffCode: TLargeintField;
    qryRIDEntityc_StuffName: TStringField;
    DBEdit1: TDBEdit;
    DBGrid1: TCedarDbgrid;
    BitBtn1: TBitBtn;
    procedure actSearchExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StuffDetailsF: TStuffDetailsF;

implementation

uses DM, GlobalPro, FormFunctions;

{$R *.dfm}

procedure TStuffDetailsF.actSearchExecute(Sender: TObject);
begin
  inherited;
  AccSpeedButtonReciptItemsDetails
end;

end.
