unit Allotment;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ActnList, DBCtrls,uAppUsageLogger,
  ComCtrls, Mask, ADODB, CedarDbGrid, DB, System.Actions;

type
  TAllotmentF = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    Label2: TLabel;
    medtPrice: TMaskEdit;
    lblPrice: TLabel;
    cmbFieldName: TComboBox;
    Label3: TLabel;
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure medtPriceChange(Sender: TObject);
    procedure Action1Update(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FOpenTime: TDateTime;
    procedure ShowForms(qry: TADOQuery; grd: TCedarDbgrid);
    function CalcSumFileds2(qry: TADOQuery; FiledName: String;
      StuffpublicPercent: Byte): Currency;

    { Private declarations }
  public
    procedure ShowChanger(qry: TADOQuery; grd: TCedarDbgrid);
  published
    aqry: TADOQuery;
    { Public declarations }
  end;

var
  AllotmentF: TAllotmentF;

implementation

uses GlobalPro, DM, Math, FaraConsts;

{$R *.DFM}

procedure TAllotmentF.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    medtPrice.SelectAll;
    medtPrice.SetFocus;
  end; // if
end;

procedure TAllotmentF.Action1Execute(Sender: TObject);
var
  TotalPrice, n, CalcPrice, Price, C: Currency;
  FName, FNamePost: String;
  StuffpublicPercent: Byte;
begin
  Price := StrToInt(trim(medtPrice.Text));
  StuffpublicPercent := 0;
  case ComboBox1.ItemIndex of
    0:
      FName := 'InputEntity';
    1:
      FName := 'InputWeight';
    2:
      FName := 'TotalInputPrice';
    3:
      begin
        FName := 'InputEntity';
        StuffpublicPercent := 1;
      end;
    4:
      begin
        FName := 'InputWeight';
        StuffpublicPercent := 1;
      end;
  end;

  FNamePost := aqry.Fields
    [integer(cmbFieldName.Items.Objects[cmbFieldName.ItemIndex])].FieldName;

  CalcPrice := 0;
  TotalPrice := CalcSumFileds2(aqry, FName, StuffpublicPercent);
  try
    with aqry do
    begin
      First;
      while not Eof do
      begin
        Edit;
        if StuffpublicPercent = 1 then
          n := FieldByName(FName).AsFloat *
            FieldByName('_StuffpublicPercent').AsFloat
        else
          n := FieldByName(FName).AsCurrency;
        n := (Price * n) / TotalPrice;
        n := RoundTo(n, 0);
        CalcPrice := CalcPrice + n;
        C := FieldByName(FNamePost).AsCurrency + n;
        FieldByName(FNamePost).AsCurrency := RoundTo(C, 0);
        Next;
      end;
      if CalcPrice <> Price then
      begin
        Edit;
        FieldByName(FNamePost).AsFloat :=
          RoundTo(FieldByName(FNamePost).AsFloat + Price - CalcPrice, 0);
        Post;
      end;
    end; // with
  except
  end; // try
end;

procedure TAllotmentF.Action1Update(Sender: TObject);
begin
  SaveConfig(APPID, 'AllotmentFComboBox1', IntToStr(ComboBox1.ItemIndex));
  SaveConfig(APPID, 'AllotmentFcmbFieldName', IntToStr(cmbFieldName.ItemIndex));
  SaveConfig(APPID, 'AllotmentFmedtPrice', medtPrice.Text);
end;

function TAllotmentF.CalcSumFileds2;
var
  n: Currency;
begin
  Result := 0;
  try
    with qry do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        if StuffpublicPercent = 1 then
          n := FieldByName(FiledName).AsFloat *
            FieldByName('_StuffpublicPercent').AsFloat
        else
          n := FieldByName(FiledName).AsCurrency;
        Result := Result + n;
        Next;
      end; // while
      EnableControls;
    end; // with
  finally
  end; // try
end;

procedure TAllotmentF.ShowChanger(qry: TADOQuery; grd: TCedarDbgrid);
begin
  if AllotmentF = nil then
    AllotmentF := TAllotmentF.Create(Application);
  AllotmentF.ShowForms(qry, grd)
end;

procedure TAllotmentF.ComboBox1Enter(Sender: TObject);
begin
  (Sender as TComboBox).DroppedDown := true;
end;

procedure TAllotmentF.ShowForms(qry: TADOQuery; grd: TCedarDbgrid);
var
  i: integer;
begin

  with AllotmentF do
  begin
    try
      aqry := qry;
      cmbFieldName.Clear;
      for i := 0 to grd.Columns.Count - 1 do
        if (grd.Columns[i].Visible) and ((grd.Columns[i].Field is TBCDField) or
          (grd.Columns[i].Field is TCurrencyField)) then
          cmbFieldName.AddItem(grd.Columns[i].Field.DisplayLabel,
            TObject(grd.Columns[i].Field.Index));

      ComboBox1.ItemIndex :=
        StrToInt(ReadConfig(APPID, 'AllotmentFComboBox1', '0'));
      cmbFieldName.ItemIndex :=
        StrToInt(ReadConfig(APPID, 'AllotmentFcmbFieldName', '0'));
      medtPrice.Text := ReadConfig(APPID, 'AllotmentFmedtPrice', '');

      ShowModal;
    finally
      // free;
    end; // try
  end; // with
end;

procedure TAllotmentF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(Caption, FOpenTime);

end;

procedure TAllotmentF.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Text := StringReplace(ComboBox1.Items.Text, '„ﬁœ«—',
    opt.EntityCaption, [rfReplaceAll]);
  ComboBox1.Items.Text := StringReplace(ComboBox1.Items.Text, 'Ê“‰',
    opt.WeightCaption, [rfReplaceAll]);
end;

procedure TAllotmentF.FormShow(Sender: TObject);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(Caption, FOpenTime);

end;

procedure TAllotmentF.medtPriceChange(Sender: TObject);
var
  s: String;
begin
  s := trim(medtPrice.Text);
  if (s = EmptyStr) or (s = '-') then
    Exit;
  s := RemoveComma(s);
  lblPrice.Caption := CurrToStrf(StrToCurr(s), ffCurrency, 0);
end;

end.
