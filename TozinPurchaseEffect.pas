unit TozinPurchaseEffect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template4,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TTozinPurchaseEffectF = class(TTemplate4F)
    qryTozinPurchaseEffect: TADOQuery;
    srcTozinPurchaseEffect: TDataSource;
    qry_LookPurchaseEffect: TADOQuery;
    qryTozinPurchaseEffectPurchaseID: TIntegerField;
    qryTozinPurchaseEffectEffectID: TIntegerField;
    qryTozinPurchaseEffectAmount: TFloatField;
    qryTozinPurchaseEffectReciptItemID: TIntegerField;
    qryTozinPurchaseEffectReplaceRate: TBCDField;
    qryTozinPurchaseEffectServerID: TIntegerField;
    qryTozinPurchaseEffectYearID: TIntegerField;
    qryTozinPurchaseEffectReciptID: TIntegerField;
    qryTozinPurchaseEffectEffectNote: TStringField;
    qryTozinPurchaseEffect_EffectName: TStringField;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryTozinPurchaseEffectTozinID: TIntegerField;
    DBGrid1: TCedarDbgrid;
  private
    procedure InitForm(qryTozin: TADOQuery);
    procedure insertEffectItem(EffectID, TozinID: Integer; Amount: Real);
    { Private declarations }
  public
    procedure Enter(qryTozin: TADOQuery);
    { Public declarations }
  end;

var
  TozinPurchaseEffectF: TTozinPurchaseEffectF;

implementation

{$R *.dfm}

uses DM;

procedure TTozinPurchaseEffectF.Enter(qryTozin: TADOQuery);
begin
  TozinPurchaseEffectF := TTozinPurchaseEffectF.Create(Application);
  with TozinPurchaseEffectF do
  begin
    try
      InitForm(qryTozin);
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TTozinPurchaseEffectF.InitForm(qryTozin: TADOQuery);
begin
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'if (SELECT COUNT(ReciptID) AS Expr1 FROM Recipts WHERE(ReciptID = 0))=0';
    SQL.Add('BEGIN');
    SQL.Add('INSERT INTO Recipts');
    SQL.Add('(ReciptID, ReciptType, ServerID, YearID, OperatorID, ModifyDate, StoreID,PersonID1,PersonID2,PersonID3,PersonID4)');
    SQL.Add('VALUES (0, 1, 0, (SELECT TOP (1) YearID FROM Util.MaliYear), 0, ''2018/04/28'', (SELECT TOP (1) n_StoreID');
    SQL.Add('FROM Stores),0,0,0,0)');
    SQL.Add('');
    SQL.Add('INSERT INTO ReciptItems');
    SQL.Add('(ReciptItemID,ReciptID, ServerID, YearID,StuffCode)');
    SQL.Add('VALUES (0,0, 0, (SELECT TOP (1) YearID FROM Util.MaliYear),(SELECT TOP (1) C_StuffCode FROM StuffCoding))');
    SQL.Add('END');
    ExecSQL;
    Active := False;
  end;

  with qry_LookPurchaseEffect do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      qryTozin.FieldByName('StuffCode').AsLargeInt;
  end;
  with qryTozinPurchaseEffect do
  begin
    Active := False;
    Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := qryTozin.FieldByName('TozinID')
      .AsInteger;
    Active := True;
  end;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT EffectID ,SUM(AmountRate) AS Amount FROM(';
    SQL.Add('SELECT EffectID, AmountRate');
    SQL.Add('FROM PurchaseEffect');
    SQL.Add('WHERE (StuffCode = :StuffCode1 )');
    SQL.Add('union All');
    SQL.Add('SELECT ReciptPurchaseEffect.EffectID, ReciptPurchaseEffect.Amount');
    SQL.Add('FROM ReciptPurchaseEffect INNER JOIN');
    SQL.Add('Tozin ON ReciptPurchaseEffect.TozinID = Tozin.TozinID');
    SQL.Add('WHERE (Tozin.StuffCode = :StuffCode2 )');
    SQL.Add('AND (ReciptPurchaseEffect.TozinID = ');
    SQL.Add('(SELECT max(ReciptPurchaseEffect.TozinID) From ReciptPurchaseEffect INNER JOIN ');
    SQL.Add('Tozin ON ReciptPurchaseEffect.TozinID = Tozin.TozinID WHERE (StuffCode = :StuffCode3 ) ))');
    SQL.Add(')abcd');
    SQL.Add('WHERE EffectID not in(SELECT EffectID FROM ReciptPurchaseEffect WHERE(TozinID = :TozinID))');
    SQL.Add('GROUP BY EffectID');
    SQL.Add('ORDER BY EffectID');
    Parameters.ParamByName('StuffCode1').Value :=
      qryTozin.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('StuffCode2').Value :=
      qryTozin.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('StuffCode3').Value :=
      qryTozin.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('TozinID').Value := qryTozin.FieldByName('TozinID')
      .AsInteger;
    Active := True;
    while not Eof do
    begin
      insertEffectItem(FieldByName('EffectID').AsInteger,
        qryTozin.FieldByName('TozinID').AsInteger,
        FieldByName('Amount').AsFloat);
      next;
    end; // while
    FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  end; // with

end;

procedure TTozinPurchaseEffectF.insertEffectItem(EffectID, TozinID: Integer;
  Amount: Real);
begin
  with qryTozinPurchaseEffect do
  begin
    First;
    if not Locate('EffectID', EffectID, []) then
    begin
      Last;
      Insert;
      // FieldByName('PurchaseID').AsInteger :=
      // GetANewCode(Self.Name, 'ReciptPurchaseEffect', 'PurchaseID');
      FieldByName('EffectID').AsInteger := EffectID;
      FieldByName('ReciptItemID').AsInteger := 0;
      FieldByName('ReciptID').AsInteger := 0;
      FieldByName('YearID').AsInteger := 0;
      FieldByName('ServerID').AsInteger := TozinID;
      FieldByName('TozinID').AsInteger := TozinID;
      FieldByName('Amount').AsFloat := Amount;
      FieldByName('ReplaceRate').AsInteger := 0;
      post;
    end;
  end;
end;

end.
