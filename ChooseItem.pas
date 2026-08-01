// Mostafa 84/03/08
unit ChooseItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DBClient, Provider,
  System.Actions;

type
  TChooseItemF = class(TTemplate5F)
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    cliCustomers: TClientDataSet;
    cliCustomers_checked: TBooleanField;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSlelectInverse: TAction;
    Image3: TImage;
    Image2: TImage;
    cliCustomersCode: TWideStringField;
    cliCustomersCaption: TWideStringField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure ToggleCheck(CalculateSummary: boolean = True);
    { Private declarations }
  public
    function SelectChecks(var checkeds: string;
      const Fcode, Fcaption, tblName: String; where: string = '';
      ADC: TADOConnection = nil; SendStr: boolean = False): boolean;
    { Public declarations }
  end;

var
  ChooseItemF: TChooseItemF;

implementation

uses StrUtils, DM, GlobalPro, search1, sort;

{$R *.dfm}

function TChooseItemF.SelectChecks(var checkeds: string;
  const Fcode, Fcaption, tblName: String; where: string = '';
  ADC: TADOConnection = nil; SendStr: boolean = False): boolean;
var
  r: String;
  s: String;
begin
  Result := False;
  ChooseItemF := TChooseItemF.Create(Application);
  checkeds := Trim(checkeds) + ',';
  try
    if ADC = nil then
      ADC := DMf.adcBSell;
    with ChooseItemF do
    begin
      with qryCustomers do
      begin
        Active := False;
        Connection := ADC;
        SQL.Text := 'SELECT cast(' + Fcode + ' as nvarchar(15) ) As Code , ' +
          'cast(' + Fcaption + ' as nvarchar(250)) As Caption ';
        SQL.Add('FROM ' + tblName);
        SQL.Add(where);
        SQL.Add('ORDER BY code');
        Active := True;
      end; // with
      with cliCustomers do
      begin
        if SendStr then
        begin
          checkeds := StringReplace(checkeds, '''', '', [rfReplaceAll]);
          s := '''';
        end;
        while pos(',', checkeds) <> 0 do
        begin
          r := LeftStr(checkeds, pos(',', checkeds) - 1);
          // StrToInt64Def(LeftStr(checkeds,pos(',',checkeds)-1),0);
          if r = EmptyStr then
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
        with cliCustomers do
        begin
          DisableControls;
          First;
          while not eof do
          begin
            if FieldByName('_checked').AsBoolean then
              checkeds := checkeds + s + cliCustomers.FieldByName('code')
                .AsString + s + ',';
            Next;
          end; // while
        end; // with
      end; // if
    end; // with
  finally
    ChooseItemF.Free;
  end; // try
end;

procedure TChooseItemF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 6);
end;

procedure TChooseItemF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliCustomers_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TChooseItemF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TChooseItemF.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliCustomers.Active := False;
  cliCustomers.Active := True;
end;

procedure TChooseItemF.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  // if Column.Index=0 then ToggleCheck;
end;

procedure TChooseItemF.ToggleCheck(CalculateSummary: boolean = True);
begin
  with cliCustomers do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TChooseItemF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TChooseItemF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, cliCustomers.FieldByName('Code'));
end;

procedure TChooseItemF.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // (Sender as TDBGrid).Refresh
end;

procedure TChooseItemF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliCustomers);
end;

procedure TChooseItemF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliCustomers);
end;

procedure TChooseItemF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliCustomers do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := True;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TChooseItemF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliCustomers do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := not FieldByName('_checked')
        .AsBoolean;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

end.
