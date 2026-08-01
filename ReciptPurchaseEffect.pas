unit ReciptPurchaseEffect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template4,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TReciptPurchaseEffectF = class(TTemplate4F)
    qryReciptPurchaseEffect: TADOQuery;
    srcReciptPurchaseEffect: TDataSource;
    qry_LookPurchaseEffect: TADOQuery;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TCedarDbgrid;
    qryReciptPurchaseEffectPurchaseID: TIntegerField;
    qryReciptPurchaseEffectEffectID: TIntegerField;
    qryReciptPurchaseEffectAmount: TFloatField;
    qryReciptPurchaseEffectReciptItemID: TIntegerField;
    qryReciptPurchaseEffectReplaceRate: TBCDField;
    qryReciptPurchaseEffectServerID: TIntegerField;
    qryReciptPurchaseEffectYearID: TIntegerField;
    qryReciptPurchaseEffectReciptID: TIntegerField;
    qryReciptPurchaseEffectEffectNote: TStringField;
    qryReciptPurchaseEffect_EffectName: TStringField;
    qryReciptPurchaseEffectIsPrint: TBooleanField;
  private
    procedure InitForm(qryReciptItem: TADOQuery);
    procedure insertEffectItem(EffectID: Integer; Amount: Real; PENote: string;
      qryReciptItem: TADOQuery);
    { Private declarations }
  public
    function Enter(qryReciptItem: TADOQuery;
      var _ReciptPurchaseEffectF: TReciptPurchaseEffectF;GridReadOnly:Boolean): TModalResult;
    { Public declarations }
  end;

var
  ReciptPurchaseEffectF: TReciptPurchaseEffectF;

implementation

{$R *.dfm}

uses DM;

function TReciptPurchaseEffectF.Enter(qryReciptItem: TADOQuery;
  var _ReciptPurchaseEffectF: TReciptPurchaseEffectF;GridReadOnly:Boolean): TModalResult;
begin
  ReciptPurchaseEffectF := TReciptPurchaseEffectF.Create(Application);
  _ReciptPurchaseEffectF := ReciptPurchaseEffectF;
  with ReciptPurchaseEffectF do
  begin
    try
      ReciptPurchaseEffectF.DBGrid1.ReadOnly :=   GridReadOnly;
      qryReciptItem.First;
      InitForm(qryReciptItem);
      ShowModal;
    finally
      // Free; on reciptsGridF
    end;
  end;
end;

procedure TReciptPurchaseEffectF.InitForm(qryReciptItem: TADOQuery);
begin
  with qry_LookPurchaseEffect do
  begin
    Active := False;
    // Parameters.ParamByName('StuffCode').Value :=
    // qryReciptItem.FieldByName('StuffCode').AsLargeInt;
    // WHERE StuffCode = :StuffCode
  end;

  with qryReciptPurchaseEffect do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qryReciptItem.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryReciptItem.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value :=
      qryReciptItem.FieldByName('YearID').AsInteger;
    Active := True;
  end;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT EffectID ,AmountRate AS Amount,PENote FROM(';
    SQL.Add('SELECT EffectID, AmountRate ,PENote');
    SQL.Add('FROM PurchaseEffect');
    SQL.Add('union All');
    SQL.Add('SELECT ReciptPurchaseEffect.EffectID, ReciptPurchaseEffect.Amount ,'''' as PENote');
    SQL.Add('FROM ReciptPurchaseEffect INNER JOIN');
    SQL.Add('Recipts ON ReciptPurchaseEffect.ReciptID = Recipts.ReciptID');
    SQL.Add('WHERE');
    SQL.Add('(ReciptPurchaseEffect.ReciptID =');
    SQL.Add('(SELECT max(ReciptPurchaseEffect.ReciptID) From ReciptPurchaseEffect INNER JOIN');
    SQL.Add('Recipts ON ReciptPurchaseEffect.ReciptID = Recipts.ReciptID ))');
    SQL.Add(')abcd');
    SQL.Add('WHERE EffectID not in(SELECT EffectID FROM ReciptPurchaseEffect');
    SQL.Add('WHERE(ReciptID = :ReciptID)');
    SQL.Add('AND(ServerID = :ServerID)');
    SQL.Add('AND(YearID = :YearID)');
    SQL.Add(')');
    SQL.Add('ORDER BY EffectID');

    Parameters.ParamByName('ReciptID').Value :=
      qryReciptItem.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryReciptItem.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value :=
      qryReciptItem.FieldByName('YearID').AsInteger;
    Active := True;
    while not Eof do
    begin
      insertEffectItem(FieldByName('EffectID').AsInteger,
        FieldByName('Amount').AsFloat, FieldByName('PENote').AsString,
        qryReciptItem);
      next;
    end; // while
    FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  end; // with

end;

procedure TReciptPurchaseEffectF.insertEffectItem(EffectID: Integer;
  Amount: Real; PENote: string; qryReciptItem: TADOQuery);
begin
  with qryReciptPurchaseEffect do
  begin
    First;
    if not Locate('EffectID', EffectID, []) then
    begin
      Last;
      Insert;
      FieldByName('EffectID').AsInteger := EffectID;
      FieldByName('ReciptItemID').AsInteger :=
        qryReciptItem.FieldByName('ReciptItemID').AsInteger; // 0;
      FieldByName('YearID').AsInteger := qryReciptItem.FieldByName('YearID')
        .AsInteger;
      FieldByName('ServerID').AsInteger := qryReciptItem.FieldByName('ServerID')
        .AsInteger;;
      FieldByName('ReciptID').AsInteger := qryReciptItem.FieldByName('ReciptID')
        .AsInteger;;
      FieldByName('Amount').AsFloat := Amount;
      FieldByName('ReplaceRate').AsInteger := 0;
      FieldByName('EffectNote').AsString := PENote;
      post;
    end;
  end;
end;

end.
