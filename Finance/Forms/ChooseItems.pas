// Mostafa 84/03/08
unit ChooseItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, DBClient, Provider, Menus, System.Actions;

type
  TChooseItemsF = class(TTemplate5F)
    qryItems: TADOQuery;
    srcItems: TDataSource;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    cliItems: TClientDataSet;
    cliItems_checked: TBooleanField;
    actSearch: TAction;
    actSort: TAction;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    Image3: TImage;
    Image2: TImage;
    cliItemscode: TSmallintField;
    cliItemscaption: TStringField;
    cliItemscaption_l2: TStringField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryItemsAfterOpen(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure ToggleCheck(CalculateSummary: boolean = True);
    { Private declarations }
  public
    function SelectChecks(var checkeds: string; id: string;
      const Fcode, Fcaption_l1, Fcaption_l2, tblName: String;
      where: string = ''; ADC: TADOConnection = nil): boolean;
    { Public declarations }
  end;

var
  ChooseItemsF: TChooseItemsF;

implementation

uses StrUtils, DM, GlobalPro, search1, sort;

{$R *.dfm}

function TChooseItemsF.SelectChecks(var checkeds: string; id: string;
  const Fcode, Fcaption_l1, Fcaption_l2, tblName: String; where: string = '';
  ADC: TADOConnection = nil): boolean;
var
  r: Int64;
begin
  Result := False;
  ChooseItemsF := TChooseItemsF.Create(Application);
  checkeds := Trim(checkeds) + ',';
  try
    if ADC = nil then
      ADC := DMf.adcAccounting;
    with ChooseItemsF do
    begin
      with qryItems do
      begin
        Active := False;
        Connection := ADC;

        SQL.Text := 'SELECT ' + Fcode + ' As Code , ' + Fcaption_l1 +
          ' As Caption_l1 , ' + Fcaption_l2 + ' As Caption_l2 ';
        SQL.Add(',ReloadInterfaceID  FROM ' + tblName + ' where ' + Fcode +
          '<>' + id);
        SQL.Add(where);
        SQL.Add('ORDER BY code');
        Active := True;
      end; // with
      with cliItems do
      begin
        while pos(',', checkeds) <> 0 do
        begin
          r := StrToInt64Def(LeftStr(checkeds, pos(',', checkeds) - 1), 0);
          if r = 0 then
            Break;
          if Locate('Code', r, []) then
            ToggleCheck(False);
          checkeds := copy(checkeds, pos(',', checkeds) + 1, length(checkeds));
        end; // while
      end; // with
      if ShowModal = mrOk then
      begin
        Result := True;
        checkeds := '';
        with cliItems do
        begin
          DisableControls;
          First;
          while not eof do
          begin
            if ((FieldByName('_checked').AsBoolean) and (checkeds <> '')) then
              checkeds := checkeds + ',' + cliItemscode.AsString;
            if ((FieldByName('_checked').AsBoolean) and (checkeds = '')) then
              checkeds := cliItemscode.AsString;
            Next;
          end; // while
        end; // with
        with DMf.qry_Temp do
        begin
          Active := False;
          Connection := ADC;
          SQL.Text := 'SELECT ReloadInterfaceID  FROM ' + tblName + ' where ' +
            Fcode + '=' + id;
          Active := True;
          edit;
          FieldByName('ReloadInterfaceID').AsString := checkeds;
          Post;

        end; // with
      end; // if
    end; // with
  finally
    ChooseItemsF.Free;
  end; // try
end;

procedure TChooseItemsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2);
end;

procedure TChooseItemsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliItems_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TChooseItemsF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TChooseItemsF.qryItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliItems.Active := False;
  cliItems.Active := True;
end;

procedure TChooseItemsF.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  // if Column.Index=0 then ToggleCheck;
end;

procedure TChooseItemsF.ToggleCheck(CalculateSummary: boolean = True);
begin
  with cliItems do
  begin
    edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TChooseItemsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TChooseItemsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, cliItems.FieldByName('Code'));
end;

procedure TChooseItemsF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliItems);
end;

procedure TChooseItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliItems);
end;

procedure TChooseItemsF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      edit;
      FieldByName('_checked').AsBoolean := True;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TChooseItemsF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      edit;
      FieldByName('_checked').AsBoolean := not FieldByName('_checked')
        .AsBoolean;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TChooseItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

end.
