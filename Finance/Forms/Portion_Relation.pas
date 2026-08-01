unit Portion_Relation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TPortion_RelationF = class(TTemplate4F)
    qry_CToplic: TADOQuery;
    prv_Ctoplic: TDataSetProvider;
    cli_CToplic: TClientDataSet;
    src_CToplic: TDataSource;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    qry_Portion: TADOQuery;
    cli_CToplic_Checked: TBooleanField;
    cli_CToplicCTopicCode: TIntegerField;
    DBGrid1: TDBGrid;
    qry_CToplicCTopicCode: TIntegerField;
    qry_CToplicCTopicName_L1: TStringField;
    qry_CToplicCTopicName_L2: TStringField;
    cli_CToplicCTopicName_L1: TStringField;
    cli_CToplicCTopicName_L2: TStringField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    actAll: TAction;
    actNotAll: TAction;
    actSearch: TAction;
    actSort: TAction;
    qry_PortionCTopicCode: TIntegerField;
    qry_PortionFormInfoID: TIntegerField;
    qry_PortionCofficientID: TIntegerField;
    qry_PortionCofficient: TFloatField;
    qry_PortionPortionCunt: TIntegerField;
    qry_PortionyearID: TIntegerField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actAllExecute(Sender: TObject);
    procedure actNotAllExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    PortionCunt: Integer;
    procedure ToggleCheck;
    procedure SaveSelect;
    procedure ReadSelect;
    { Private declarations }
  public
    function ShowChooseDetail(FilterCode, counter: Integer): boolean;
    { Public declarations }
  end;

var
  Portion_RelationF: TPortion_RelationF;

implementation

uses Dm, GlobalPro, search2, sort2, PortionTable;
{$R *.dfm}

procedure TPortion_RelationF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli_CToplic_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TPortion_RelationF.ToggleCheck;
begin
  with cli_CToplic do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TPortion_RelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

function TPortion_RelationF.ShowChooseDetail(FilterCode, counter: Integer)
  : boolean;
begin
  Portion_RelationF := TPortion_RelationF.Create(Application);
  with Portion_RelationF do
  begin
    try
      PortionCunt := counter;
      with qry_Portion do
      begin
        Active := False;
        Parameters.ParamByName('FormInfoID').Value := FilterCode;
        Parameters.ParamByName('PortionCunt').Value := PortionCunt;
        Parameters.ParamByName('Year').Value := APPBank.Year;
        Active := True;
      end; // with
      ReadSelect;
      if mrok = ShowModal then
      begin
        SaveSelect;
        Result := True;
      end
      else
        Result := False;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TPortion_RelationF.ReadSelect;
begin
  cli_CToplic.Active := False;
  cli_CToplic.Active := True;
  with qry_Portion do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        with cli_CToplic do
        begin
          if Locate('CTopicCode',
            qry_Portion.FieldByName('CTopicCode').AsInteger, []) then
          begin
            Edit;
            FieldByName('_Checked').AsBoolean := True;
            Post;
          end; // if
        end; // with
        next;
      end; // while
    finally
      EnableControls;
    end; // try
  end; // with
end;

procedure TPortion_RelationF.SaveSelect;
begin

  with qry_Portion do
  begin
    try
      DisableControls;
      First;
      cli_CToplic.DisableControls;
      cli_CToplic.First;
      while not cli_CToplic.Eof do
      begin
        if cli_CToplic_Checked.AsBoolean then
        begin
          if not qry_Portion.Locate('CTopicCode;FormInfoID;PortionCunt',
            VarArrayOf([cli_CToplic.FieldByName('cTopicCode').AsInteger,
              PortionTableF.qryMaster.FieldByName('FormInfoID').AsInteger,
              PortionCunt]), []) then
          begin
            Insert;
            FieldByName('CofficientID').AsInteger := GetANewCode
              ('','PortionTable', 'CofficientID',dmf.adcAccounting);
            FieldByName('FormInfoID').AsInteger :=
              PortionTableF.qryMaster.FieldByName('FormInfoID').AsInteger;
            FieldByName('CTopicCode').AsInteger := cli_CToplic.FieldByName
              ('CTopicCode').AsInteger;
            FieldByName('Cofficient').AsInteger := 0;
            FieldByName('YearID').AsInteger := APPBank.Year;
            FieldByName('PortionCunt').AsInteger := PortionCunt;
            Post;
          end;
        end
        else
        begin
          if qry_Portion.Locate('CTopicCode',
            cli_CToplic.FieldByName('cTopicCode').AsInteger, []) then
          begin
            qry_Portion.Delete;
          end;
        end;
        cli_CToplic.next;
      end; // while
    finally
      EnableControls;
      cli_CToplic.EnableControls;
    end; // try
  end; // with
  FreeReservedCodes(Dmf.adcAccounting, 'PortionTable')
end;

procedure TPortion_RelationF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_CToplic.Active := True;
end;

procedure TPortion_RelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if

end;

procedure TPortion_RelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True);
end;

procedure TPortion_RelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPortion_RelationF.actAllExecute(Sender: TObject);
begin
  inherited;
  with cli_CToplic do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := True;
      Post;
      next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TPortion_RelationF.actNotAllExecute(Sender: TObject);
begin
  inherited;
  with cli_CToplic do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := not FieldByName('_checked')
        .AsBoolean;
      Post;
      next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TPortion_RelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_CToplic);
end;

procedure TPortion_RelationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_CToplic);
end;

procedure TPortion_RelationF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, cli_CToplic.FieldByName('CTopicCode'));
end;

end.
