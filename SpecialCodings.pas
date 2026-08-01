unit SpecialCodings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppParameter, System.Actions, strutils;

type
  TCharItem = class
    Char: String;
    caption: String;
  end;

  TSpecialCodingsF = class(TTemplate4F)
    newPanel: TPanel;
    BitBtn9: TBitBtn;
    okPanel: TPanel;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    actPrint: TAction;
    actOther: TAction;
    Label40: TLabel;
    cmbChar4: TComboBox;
    pnlBigText: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    cmbChar5: TComboBox;
    Label3: TLabel;
    cmbChar6: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cmbChar7: TComboBox;
    cmbChar8: TComboBox;
    cmbChar9: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cmbChar10: TComboBox;
    cmbChar11: TComboBox;
    cmbChar12: TComboBox;
    edtSERIAL: TEdit;
    Label10: TLabel;
    btnSerial: TSpeedButton;
    Label11: TLabel;
    procedure cmbChar4Change(Sender: TObject);
    procedure btnSerialClick(Sender: TObject);
  private
    sitem: TCharItem;
    function InitCombos(Combo_Box: TComboBox; CharNo: Integer): String;
    function cmbText(cmbChar: TComboBox): string;
    procedure initForm;
    { Private declarations }
  public
    function Enter(code: string): string;
    { Public declarations }
  end;

var
  SpecialCodingsF: TSpecialCodingsF;

implementation

uses DM, sort2, search2, GlobalPro, Math, mmessage, shamsiDate, FaraConsts,
  FormFunctions, main;

{$R *.dfm}

procedure TSpecialCodingsF.btnSerialClick(Sender: TObject);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text :=
      'select max(RIGHT(ISNULL( SpecialCode,0),5))+1 from ReciptItems';
    Open;
    edtSERIAL.Text := Fields[0].AsString;
    cmbChar4Change(cmbChar4);
  end;
end;

procedure TSpecialCodingsF.cmbChar4Change(Sender: TObject);
begin
  inherited;
  pnlBigText.caption := Trim(Edit1.Text) + cmbText(cmbChar4) + cmbText(cmbChar5)
    + cmbText(cmbChar6) + cmbText(cmbChar7) + cmbText(cmbChar8) +
    cmbText(cmbChar9) + cmbText(cmbChar10) + cmbText(cmbChar11) +
    cmbText(cmbChar12) + RightStr('00000' + Trim(edtSERIAL.Text), 5);
end;

function TSpecialCodingsF.cmbText(cmbChar: TComboBox): string;
begin
  if cmbChar.ItemIndex > -1 then
  begin
    sitem := TCharItem(cmbChar.Items.Objects[cmbChar.ItemIndex]);
    Result := sitem.Char.Trim;
  end
  else
    Result := ' ';
end;

function TSpecialCodingsF.Enter(code: string): string;
begin
  try
    Application.CreateForm(TSpecialCodingsF, SpecialCodingsF);
    with SpecialCodingsF do
    begin
      if ParentFont then
        font.assign(var_glb_DefaultFont);
      SpecialCodingsF.pnlBigText.caption := code;
      initForm;
      if ShowModal = mrOk then
        Result := SpecialCodingsF.pnlBigText.caption;
    end;

  finally
    FreeAndNil(SpecialCodingsF);
  end;

end;

procedure TSpecialCodingsF.initForm;
begin
  InitCombos(cmbChar4, 4);
  InitCombos(cmbChar5, 5);
  InitCombos(cmbChar6, 6);
  InitCombos(cmbChar7, 7);
  InitCombos(cmbChar8, 8);
  InitCombos(cmbChar9, 9);
  InitCombos(cmbChar10, 10);
  InitCombos(cmbChar11, 11);
  InitCombos(cmbChar12, 12);
  edtSERIAL.Text := MidStr(pnlBigText.caption, 13, 5);
  pnlBigText.ShowCaption := True;
end;

function TSpecialCodingsF.InitCombos(Combo_Box: TComboBox;
  CharNo: Integer): String;
var
  SQL_Txt: String;
  i: Integer;
begin
  SQL_Txt :=
    'SELECT CharKey, RTRIM(LTRIM(CharKey)) + ''|'' + RTRIM(LTRIM(CharName)) + '''' + RTRIM(LTRIM(CharKind1)) + '''' +'
    + ' RTRIM(LTRIM(CharKind2)) + '''' + RTRIM(LTRIM(CharKind3)) AS CharName' +
    ' FROM SpecialCodings WHERE (CharNo = %d)';

  SQL_Txt := Format(SQL_Txt, [CharNo]);
  Combo_Box.Clear;
  i := -1;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := SQL_Txt;
    Active := True;
    while not eof do
    begin
      Inc(i);
      sitem := TCharItem.Create;
      sitem.caption := Fields[1].AsString.Trim;
      sitem.Char := Fields[0].AsString.Trim;
      Combo_Box.Items.AddObject(sitem.caption, sitem);
      if MidStr(pnlBigText.caption, CharNo, 1) = sitem.Char then
        Combo_Box.ItemIndex := i;
      Next;
    end;
    Active := False;
  end;

end;

end.
