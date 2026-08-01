unit ChangeUnit;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  template4, StdCtrls, Buttons, ExtCtrls, Mask,
  DB, ADODB, DBCtrls, DBActns, ActnList, System.Actions;

type
  TChangeUnitF = class(TTemplate4F)
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label4: TLabel;
    cmbUnits: TComboBox;
    lblValue: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    mskRollValue: TMaskEdit;
    mskVentValue: TMaskEdit;
    mskVentWeight: TMaskEdit;
    mskRollWeight: TMaskEdit;
    lblWeight: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    BitBtn1: TBitBtn;
    qrySearch: TADOQuery;
    mskNum: TMaskEdit;
    qrySearchc_StuffName: TStringField;
    qrySearchn_UnitCode: TWordField;
    qrySearchUnitName: TStringField;
    srcSearch: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qrySearchStuffCode: TLargeintField;
    procedure mskNumChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrySearchAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    Procedure InitCombo;
    Procedure InitForm;
    Function ChangeUnit: Boolean;
    { Private declarations }
  public
    Procedure enter;
    { Public declarations }
  end;

var
  ChangeUnitF: TChangeUnitF;

implementation

uses DM, GlobalPro, mmessage, searchCode_ADO,
  FormFunctions;

{$R *.dfm}
{ TChangeUnitF }

procedure TChangeUnitF.InitCombo;
begin
  cmbUnits.Clear;
  with TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT UnitCode,UnitName FROM  Units';
      Open;
      while not Eof do
      begin
        cmbUnits.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        Next;
      end;
    finally
      Free;
    end;
end;

procedure TChangeUnitF.mskNumChange(Sender: TObject);
var
  S: string;
begin
  inherited;
  S := Trim((Sender as TMaskEdit).Text);
  if S <> EmptyStr then
    if qrySearch.Locate('StuffCode', S, []) then
      (Sender as TMaskEdit).Font.Color := clBlack
    else
      (Sender as TMaskEdit).Font.Color := clRed;
end;

procedure TChangeUnitF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombo;
  InitForm;
end;

procedure TChangeUnitF.enter;
begin
  with TChangeUnitF.Create(Application) do
    try
      ShowModal

    finally
      Free;
    end;
end;

procedure TChangeUnitF.qrySearchAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cmbUnits.ItemIndex := cmbUnits.Items.IndexOfObject
    (TObject(DataSet.FieldByName('n_UnitCode').AsInteger));
end;

function TChangeUnitF.ChangeUnit: Boolean;
var
  InEntity, OuEntity: Double;
  InWeight, OuWeight: Double;
  aUnit: Integer;
begin
  Result := False;
  if mskNum.Font.Color = clRed then
  begin
    FlashAControl(mskNum);
    Exit;
  end;
  if Trim(mskRollValue.Text) = EmptyStr then
  begin
    FlashAControl(mskRollValue);
    Exit;
  end;
  if Trim(mskVentValue.Text) = EmptyStr then
  begin
    FlashAControl(mskVentValue);
    Exit;
  end;
  if Trim(mskRollWeight.Text) = EmptyStr then
  begin
    FlashAControl(mskRollWeight);
    Exit;
  end;
  if Trim(mskVentWeight.Text) = EmptyStr then
  begin
    FlashAControl(mskVentWeight);
    Exit;
  end;
  if cmbUnits.ItemIndex = -1 then
  begin
    FlashAControl(cmbUnits);
    Exit;
  end;
  if get_response('¬Ì« «“  €ÌÌ— „ÿ„∆‰ Â” Ìœ') <> mrYes then
    Exit;
  aUnit := Integer(cmbUnits.Items.Objects[cmbUnits.ItemIndex]);
  InEntity := StrToInt(Trim(mskRollValue.Text)) /
    StrToInt(Trim(mskVentValue.Text));
  OuEntity := StrToInt(Trim(mskRollValue.Text)) /
    StrToInt(Trim(mskVentValue.Text));
  InWeight := StrToInt(Trim(mskRollWeight.Text)) /
    StrToInt(Trim(mskVentWeight.Text));
  OuWeight := StrToInt(Trim(mskRollWeight.Text)) /
    StrToInt(Trim(mskVentWeight.Text));

  With TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      try
        SQL.Text := 'UPDATE ReciptItems';
        SQL.Add('SET InputEntity = round(:InEntity * InputEntity,0), OutputEntity =round(:OuEntity * OutputEntity,0),');
        SQL.Add('InputWeight = round(:InWeight * InputWeight,0), OutputWeight = round(:OuWeight * OutputWeight,0)');
        SQL.Add('WHERE (StuffCode = :Code)');
        Parameters.ParamByName('InEntity').Value := InEntity;
        Parameters.ParamByName('OuEntity').Value := OuEntity;
        Parameters.ParamByName('InWeight').Value := InWeight;
        Parameters.ParamByName('OuWeight').Value := OuWeight;
        Parameters.ParamByName('Code').Value :=
          qrySearch.FieldByName('StuffCode').AsLargeInt;
        ExecSQL;
        SQL.Text := 'UPDATE StuffCoding';
        SQL.Add('SET n_UnitCode =:Unit');
        SQL.Add('WHERE (c_StuffCode = :Code)');
        Parameters.ParamByName('Unit').Value := aUnit;
        Parameters.ParamByName('Code').Value :=
          qrySearch.FieldByName('StuffCode').AsLargeInt;
        ExecSQL;
        Result := True;
      except
        Result := False;
      end;
    finally
      Free;
    end;

end;

procedure TChangeUnitF.SpeedButton1Click(Sender: TObject);
var
  Result: array [0 .. 3] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'Ã” ÃÊ ﬂœ', qrySearch.SQL.Text,
    ['ﬂœ ﬂ«·«', '‰«„ ﬂ«·«', 'Ê«Õœ', ''], Result, [50, 100, 100, 0], alLeft) then
    mskNum.Text := Result[0];
end;

procedure TChangeUnitF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if ChangeUnit then
    BigMessage('À»  ‘œ', 1);
end;

procedure TChangeUnitF.InitForm;
begin
  qrySearch.Open;
  mskNum.Text := qrySearch.FieldByName('StuffCode').AsString;
  // ReplaceEntityWeightCaption(qrySearch);
  ReplaceEntityWeightCaption(Self);
  ReplaceEntityWeightCaption(lblValue);
  ReplaceEntityWeightCaption(lblWeight);
  lblTopic0.Caption := Caption;
end;

end.
