unit QuickSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ADODB, Db;

type
  TQuickSearchF = class(TFrame)
    pnlSearch: TPanel;
    edtSearch: TEdit;
    cmbFastSearch: TComboBox;
    chkFilter: TCheckBox;
    pnlStepSearch: TPanel;
    btn2: TSpeedButton;
    btn1: TSpeedButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure chkFilterClick(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure edtSearchExit(Sender: TObject);
  private
    FQry: TADOQuery;
    procedure SetQry(const Value: TADOQuery);
    procedure FastSearch;
    { Private declarations }
  public
    property Qry: TADOQuery read FQry write SetQry;
    { Public declarations }
  end;

implementation

uses
  GlobalPro;

{$R *.dfm}


{ TQuickSearchF }

procedure TQuickSearchF.SetQry(const Value: TADOQuery);
var
  i: integer;
begin
  FQry := Value;
  if Assigned(FQry) then
    with FQry do
      try
        cmbFastSearch.Clear;
        for i := 0 to FieldCount - 1 do
          if (not(Fields[i].FieldKind in [fkLookup])) and
            ((Fields[i].Tag And 1) = 1) then
            cmbFastSearch.Items.AddObject(Fields[i].DisplayLabel, TObject(i));
      finally
        if cmbFastSearch.Items.Count > 0 then
          cmbFastSearch.ItemIndex := 0;
      end; // try

end;

procedure TQuickSearchF.btn2Click(Sender: TObject);
begin
  if not Qry.FindNext then
    Warn('«‰ Â«Ì Ã” ÃÊ');
end;

procedure TQuickSearchF.btn1Click(Sender: TObject);
begin
  if not Qry.FindPrior then
    Warn('«» œ«Ì Ã” ÃÊ');
end;

procedure TQuickSearchF.FastSearch;
var
  i: integer;
  s: String;
begin
  i := integer(cmbFastSearch.Items.Objects[cmbFastSearch.ItemIndex]);
  s := trim(edtSearch.Text);
  Qry.Filtered := false;
  if s = '' then
    Exit;
  with Qry do
  begin
    if Fields[i].DataType in [ftString, ftWideString] then
      filter := Fields[i].FieldName + ' like ' + QuotedStr('%' + s + '%')
    else
      filter := Fields[i].FieldName + ' = ' + s;
    if not chkFilter.Checked then
    begin
      if not FindFirst then
        Warn('„Ê—œÌ »—«Ì Ã” ÃÊ ‰Ì” ')
    end
    else
      Filtered := true;

  end; // with
end;

procedure TQuickSearchF.chkFilterClick(Sender: TObject);
begin
  pnlStepSearch.Visible := not chkFilter.Checked;
  if edtSearch.Text <> emptystr then
    Qry.Filtered := not pnlStepSearch.Visible;
end;

procedure TQuickSearchF.edtSearchChange(Sender: TObject);
begin
  if chkFilter.Checked then
    FastSearch;
end;

procedure TQuickSearchF.edtSearchExit(Sender: TObject);
begin
  FastSearch;
end;

end.
