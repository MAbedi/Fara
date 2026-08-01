unit StuffGroups_searchCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ADOdb,
  DB, ComCtrls, ActnList, CommCtrl, ImgList, Grids, Vcl.DBGrids, Mask, DBCtrls,
  System.ImageList, System.Actions;

type
  TStuffGroups_searchCodeF = class(Ttemplate0F)
    StatusBar1: TStatusBar;
    ActionList1: TActionList;
    actSearch: TAction;
    actSort: TAction;
    actOk: TAction;
    Panel4: TPanel;
    edtSearch: TEdit;
    btnSearch: TBitBtn;
    Panel1: TPanel;
    qryStuffGroups: TADOQuery;
    BitBtn4: TBitBtn;
    btnSearch_: TBitBtn;
    ImageList1: TImageList;
    dbgrd1: TDBGrid;
    qryStuffGroupsGroupID: TIntegerField;
    qryStuffGroupsGroupName: TStringField;
    qryStuffGroupsLevelID: TWordField;
    qryStuffGroupsUperGroupId: TIntegerField;
    qryStuffGroupsGroupType: TWordField;
    srcStuffGroups: TDataSource;
    qryStuffGroupsStartCode: TLargeintField;
    qryStuffGroupsFinishCode: TLargeintField;
    pnl1: TPanel;
    edtGroupID: TDBEdit;
    lbl1: TLabel;
    edtGroupName: TDBEdit;
    qryUP: TADOQuery;
    srcUp: TDataSource;
    qryUPGroupID: TIntegerField;
    qryUPGroupName: TStringField;
    lblGroupName: TLabel;
    qryUPUperGroupId: TIntegerField;
    procedure btnSearchClick(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure lblGroupNameDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    function SearchShow(ADC: TADOConnection; const sCaption: string;
      out results: array of string; const formAlign: TAlign): Boolean;
  end;

var
  StuffGroups_searchCodeF: TStuffGroups_searchCodeF;

const
  MAXTEXTLEN = 60;

implementation

uses GlobalPro, DM, FormFunctions, FaraConsts;

{$R *.dfm}

function TStuffGroups_searchCodeF.SearchShow(ADC: TADOConnection;
  const sCaption: string; out results: array of string;
  const formAlign: TAlign): Boolean;
begin
  StuffGroups_searchCodeF := TStuffGroups_searchCodeF.Create(Application);
  with StuffGroups_searchCodeF do
  begin
    try
      with qryStuffGroups do
      begin
        Connection := ADC;
        Active := True;
      end;
      qryUP.Connection := qryStuffGroups.Connection;
      with edtSearch do
      begin
        Text := ReadConfig(APPID, Screen.ActiveForm.Name + '_LastShowSearched_'
          + sCaption, '');
      end;
      Align := formAlign;
      Caption := sCaption;
      if ShowModal = mrOK then
      begin
        results[0] := qryUPGroupID.AsString;
        results[1] := qryUPGroupName.AsString;
        Result := True;
        SaveConfig(APPID, Screen.ActiveForm.Name + '_LastShowSearched_' +
          sCaption, edtSearch.Text);
      end
      else
        Result := False;
    finally
      Free;
      StuffGroups_searchCodeF := nil;
      SetKeyboardFarsi;
    end; // try
  end; // with

end;

procedure TStuffGroups_searchCodeF.dbgrd1DblClick(Sender: TObject);
begin
  inherited;
  with qryUP do
  begin
    if lblGroupName.Tag = -1 then
    begin
      Parameters.ParamByName('GroupID').Value :=
        qryStuffGroupsGroupID.AsInteger;
      lblGroupName.Caption := lblGroupName.Caption +
        qryStuffGroupsGroupName.AsString + ' > ';
    end
    else
    begin
      Parameters.ParamByName('GroupID').Value := lblGroupName.Tag;
      lblGroupName.Caption := StringReplace(lblGroupName.Caption,
        qryUPGroupName.AsString + ' > ', '', [rfReplaceAll]);
    end;
    Active := False;
    Active := True;
  end;
  with qryStuffGroups do
  begin
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM StuffGroups');
    SQL.Add('WHERE (UperGroupId = :GroupID)');
    if qryUPGroupID.AsInteger = 0 then
      SQL.Add('and  (LevelID = 0)');
    Parameters.ParamByName('GroupID').Value := qryUPGroupID.AsInteger;
    Active := True;
    if RecordCount = 0 then
      ModalResult := mrOK;
  end;
end;

procedure TStuffGroups_searchCodeF.edtSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnSearch.Click
end;

procedure TStuffGroups_searchCodeF.lblGroupNameDblClick(Sender: TObject);
begin
  inherited;
  lblGroupName.Tag := qryUPUperGroupId.AsInteger;
  dbgrd1DblClick(dbgrd1);
  lblGroupName.Tag := -1;
end;

procedure TStuffGroups_searchCodeF.btnSearchClick(Sender: TObject);
begin
  inherited;
  if not qryStuffGroups.Locate('GroupName', Trim(edtSearch.Text),
    [loPartialKey]) then
    qryStuffGroups.Locate('GroupID', Trim(edtSearch.Text), [loPartialKey]);
end;

end.
