// mahmood 83/03/18
unit ShowpreReciptItemIDs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList, db, ComCtrls,
  Menus, ADODB, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, System.Actions;

type
  TShowpreReciptItemIDsF = class(Ttemplate0F)
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    Panel1: TPanel;
    qryShowpreItems: TADOQuery;
    srcShowpreItems: TDataSource;
    qryShowpreItemsReciptDate: TStringField;
    qryShowpreItemsReciptCaption: TStringField;
    qryShowpreItemsReciptNumber: TIntegerField;
    qryShowpreItemsCustName: TStringField;
    qryShowpreItemsControlCode: TLargeintField;
    qryShowpreItemsc_StuffName: TStringField;
    qryShowpreItemsEntity: TFloatField;
    qryShowpreItemsWeight: TFloatField;
    DBGrid1: TCedarDbgrid;
    qryShowpreItemsReciptItemID: TIntegerField;
    qryShowpreItemsReciptID: TIntegerField;
    qryShowpreItemsStuffCode: TLargeintField;
    qryShowpreItemsServerID: TIntegerField;
    qryShowpreItemsYearID: TIntegerField;
    btn1: TBitBtn;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function enter(preReciptItemID: Integer): string;
    function enter2(qryItems: TADOQuery): string;
    { Public declarations }
  end;

var
  ShowpreReciptItemIDsF: TShowpreReciptItemIDsF;
  DocNOTE: String;

implementation

uses DM, main, FormFunctions;

{$R *.dfm}

procedure TShowpreReciptItemIDsF.actOkExecute(Sender: TObject);
begin
  inherited;
  ShowpreReciptItemIDsF.Close;
end;

procedure TShowpreReciptItemIDsF.btn1Click(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryShowpreItems, mainF);
end;

function TShowpreReciptItemIDsF.enter(preReciptItemID: Integer): string;
begin
  ShowpreReciptItemIDsF := TShowpreReciptItemIDsF.Create(Application);
  try
    with ShowpreReciptItemIDsF do
    begin
      // Caption:=MyCaption;
      DBGrid1.SetFooter4Sum([]);
      With qryShowpreItems do
      begin
        Active := False;
        Parameters.ParamByName('preReciptItemID').Value := preReciptItemID;
        Active := True;
      end; // With
      ShowModal;
    end; // with
  finally
    FreeAndNil(ShowpreReciptItemIDsF);
  end; // try
end;

procedure TShowpreReciptItemIDsF.actCancelExecute(Sender: TObject);
begin
  inherited;
  ShowpreReciptItemIDsF.Close;
end;

function TShowpreReciptItemIDsF.enter2(qryItems: TADOQuery): string;
var
  i: Integer;
begin
  ShowpreReciptItemIDsF := TShowpreReciptItemIDsF.Create(Application);
  try
    with ShowpreReciptItemIDsF do
    begin
      With qryShowpreItems do
      begin
        Active := False;
        SQL.Text :=
          ' dbo.GetpreReciptItemID :ControlCode  ,  :preReciptItemID ,:YearID ,:ServerID ';
        Parameters.ParamByName('preReciptItemID').Value :=
          qryItems.FieldByName('preReciptItemID').AsInteger;
        Parameters.ParamByName('YearID').Value := qryItems.FieldByName('YearID')
          .AsInteger;
        Parameters.ParamByName('ServerID').Value :=
          qryItems.FieldByName('ServerID').AsInteger;
        Parameters.ParamByName('ControlCode').Value :=
          qryItems.FieldByName('ControlCode').AsLargeInt;
        DBGrid1.Columns.Clear;
        Fields.Clear;
        Active := True;
        for i := 0 to Fields.Count - 1 do
          if (Fields[i] is TBCDField) then
            TBCDField(Fields[i]).currency := True;
        DBGrid1.ColorDBGrid;
        DBGrid1.Columns[0].Width := 64;
      end; // With
      ShowModal;
    end; // with
  finally
    FreeAndNil(ShowpreReciptItemIDsF);
  end; // try
end;

end.
