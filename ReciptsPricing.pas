unit ReciptsPricing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, System.Actions;

type
  TReciptsPricingF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qryRecipts: TADOQuery;
    qryReciptsReciptID: TIntegerField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsc_StoreName: TStringField;
    qryReciptsReciptDate: TStringField;
    qryReciptsEntity: TFloatField;
    qryReciptsWeight: TFloatField;
    qryReciptsPrice: TBCDField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptItems: TADOQuery;
    srcReciptItems: TDataSource;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actPrint: TAction;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsDocNo: TIntegerField;
    qryReciptsRialsEqual: TBCDField;
    DataSetDelete: TAction;
    edtReciptNumber: TDBEdit;
    edtReciptDate: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    qryReciptItemsStuffCode: TLargeintField;
    qryReciptItemsStuffName: TStringField;
    qryReciptItemsInputEntity: TFloatField;
    qryReciptItemsOutputEntity: TFloatField;
    qryReciptItemsUnitSellPrice: TFMTBCDField;
    qryReciptItemsTotalInputPrice: TBCDField;
    qryReciptItemsTotalOutputPrice: TBCDField;
    srcRecipts: TDataSource;
    qryinit: TADOQuery;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryReciptItemsTotalInputPriceChange(Sender: TField);
  private
    { Private declarations }
    procedure InitForm;
  public
    { Public declarations }
    procedure enter(qryRecipt: TADOQuery);
  end;

var
  ReciptsPricingF: TReciptsPricingF;

implementation

uses DM, GlobalPro;

{$R *.dfm}

procedure TReciptsPricingF.enter(qryRecipt: TADOQuery);
var
  FormOutput: Boolean;
  ReciptID, YearID, ServerID: Integer;
begin
  ReciptsPricingF := TReciptsPricingF.Create(Application);
  with ReciptsPricingF do
  begin
    try
      ReciptID := qryRecipt.FieldByName('ReciptID').AsInteger;
      YearID := qryRecipt.FieldByName('YearID').AsInteger;
      ServerID := qryRecipt.FieldByName('ServerID').AsInteger;
      With qryinit do
      begin
        Active := False;
        Parameters.ParamByName('ReciptID').Value := ReciptID;
        Parameters.ParamByName('YearID').Value := YearID;
        Parameters.ParamByName('ServerID').Value := ServerID;
        Active := True;
        FormOutput := qryinit.FieldByName('EffectType').AsInteger
          in [3, 4, 5, 7,8];
        setColumns2(DBGrid1, not FormOutput, 'InputEntity');
        setColumns2(DBGrid1, FormOutput, 'OutputEntity');
        setColumns2(DBGrid1, not FormOutput, 'TotalInputPrice');
        setColumns2(DBGrid1, FormOutput, 'TotalOutputPrice');
      end;
      InitForm;
      ShowModal;
    finally
      qryRecipt.Requery();
      qryRecipt.Locate('ReciptID;YearID;ServerID',
        VarArrayOf([ReciptID, YearID, ServerID]), []);
      Free;
    end;
  end;
end;

procedure TReciptsPricingF.InitForm;
begin
  with qryRecipts do
  begin
    Active := False;
    Parameters := qryinit.Parameters;
    Active := True;
  end;
  with qryReciptItems do
  begin
    Active := False;
    Parameters := qryinit.Parameters;
    Active := True;
  end;
end;

procedure TReciptsPricingF.qryReciptItemsTotalInputPriceChange(Sender: TField);
var
  Entity: Real;
begin
  inherited;
  Entity := qryReciptItemsInputEntity.AsInteger +
    qryReciptItemsOutputEntity.AsInteger;
  if Entity <> 0 then
    qryReciptItemsUnitSellPrice.AsCurrency :=
      RoundTo(Sender.AsInteger / Entity, -2);
end;

procedure TReciptsPricingF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TReciptsPricingF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TReciptsPricingF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

end.
