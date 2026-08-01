unit ChooseCols;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBCtrls, ADODB;

type
  TChooseColsF = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    qryAnalyze: TADOQuery;
    ListSource: TListBox;
    ListRun: TListBox;
    BitBtn1: TBitBtn;
    procedure ListSourceDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
  public
    function GetCols(ListID: array OF string): string;
    { Public declarations }
  end;

var
  ChooseColsF: TChooseColsF;

implementation

uses Dm;

{$R *.dfm}

function TChooseColsF.GetCols(ListID: array OF string): string;
var
  I: Smallint;
  listLevel: string;
  INX: Integer;
begin

  with TChooseColsF.Create(Application) do
    try
      listLevel := EmptyStr;
      ListRun.Clear;
      ListSource.Clear;

      with TADOQuery.Create(nil) do
        try
          Connection := Dmf.adcAccounting;
          for I := 0 to Length(ListID) - 1 do
          begin
            if ListID[I] = '100' then
              ListRun.Items.AddObject(' ›’Ì·Ì', TObject(100))
            else
            begin
              Close;
              SQL.Text :=
                Format('SELECT LevelID,LevelCaption_L1 FROM acc.AccTopicLevels where LevelID In (%s)',
                [ListID[I]]);
              Open;
              ListRun.Items.AddObject(Fields[1].AsString,
                TObject(Fields[0].AsInteger));
            end;
          end;
          with qryAnalyze do
            while not Eof do
            begin
              INX := ListRun.Items.IndexOf(Fieldbyname('LevelCaption_L1')
                .AsString);
              if INX = -1 then
                ListSource.Items.AddObject(Fieldbyname('LevelCaption_L1')
                  .AsString, TObject(Fieldbyname('LevelID').AsInteger));
              Next;
            end;
          INX := ListRun.Items.IndexOf(' ›’Ì·Ì');
          if INX = -1 then
            ListSource.Items.AddObject(' ›’Ì·Ì', TObject(100))

        finally
          Free;
        end;

      if ShowModal = mrOK then
        for I := 0 to ListRun.Items.Count - 1 do
          listLevel := listLevel +
            IntToStr(Integer(ListRun.Items.Objects[I])) + ',';
      setlength(listLevel, Length(listLevel) - 1);

      Result := listLevel;
    finally
      Free;
    end;
end;

procedure TChooseColsF.ListSourceDblClick(Sender: TObject);
var
  a, b: TListBox;
begin
  if Sender = ListSource then
  begin
    a := ListSource;
    b := ListRun;
  end
  else
  begin
    a := ListRun;
    b := ListSource;
  end; // if
  if a.ItemIndex = -1 then
    exit;
  if b.Items.IndexOf(a.Items[a.ItemIndex]) = -1 then
  begin
    b.Items.AddObject(a.Items[a.ItemIndex], a.Items.Objects[a.ItemIndex]);
    a.DeleteSelected;
  end; // if
end;

procedure TChooseColsF.FormCreate(Sender: TObject);
begin
  qryAnalyze.Open;
end;

end.
