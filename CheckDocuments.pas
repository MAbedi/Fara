unit CheckDocuments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, Grids, Vcl.DBGrids, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, Mask, DB, ADODB, Menus, System.Actions;

type
  TCheckDocumentsF2 = class(TTemplate5F)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    btnVoid: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btnPost: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    actShow: TAction;
    actVoid: TAction;
    actPost: TAction;
    qryWorkFlow: TADOQuery;
    srcWorkFlow: TDataSource;
    qryWorkFlowID: TAutoIncField;
    qryWorkFlowkind: TWordField;
    qryWorkFlowServerID: TIntegerField;
    qryWorkFlowYearID: TIntegerField;
    qryWorkFlowFormID: TIntegerField;
    qryWorkFlowFormType: TWordField;
    qryWorkFlowModifyDate: TDateTimeField;
    qryWorkFlowDate: TStringField;
    qryWorkFlowUserID: TIntegerField;
    qryWorkFlowPositionCode: TIntegerField;
    qryWorkFlowSortAccept: TWordField;
    qryWorkFlowNote: TWideStringField;
    qryWorkFlowname: TStringField;
    qryWorkFlowPositionTitle: TStringField;
    qryWorkFlowHourMinuteSecond: TStringField;
    DBMemo2: TDBMemo;
    qryWorkFlowDes: TStringField;
    DBEdit1: TDBEdit;
    qryWorkFlowFormNumber: TIntegerField;
    qryWorkFlowFormDate: TStringField;
    qryWorkFlowState: TWordField;
    qryWorkFlowStateName: TStringField;
    Action1: TAction;
    qryWorkFlowFomNote: TStringField;
    Edit1: TEdit;
    pop1: TPopupMenu;
    actCitation: TAction;
    mnuAllCitation: TMenuItem;
    btnPost1: TBitBtn;
    qryWorkFlowCitationNote: TStringField;
    qryWorkFlowReferringNote: TStringField;
    procedure actShowExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actCitationExecute(Sender: TObject);
    procedure mnuAllCitationClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actVoidExecute(Sender: TObject);
  private
    SortAccept, StateAfterPost: Integer;
    procedure INSERT_WF_TransWorkFlow(UserID, UserPositionCode, Sort_Accept,
      UserCitation: Integer);
    procedure InitMnu(Kind: Byte; FormType: Integer);
    procedure FnStateAfterPost(IsSetVoid: Boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure enter(Kind: Byte; FormType: Integer; ServerId: Byte;
      YearID: Integer; formID, _SortAccept, _StateAfterPost: Integer;
      ISAccept: Boolean);

  end;

var
  CheckDocumentsF2: TCheckDocumentsF2;

implementation

uses FormFunctions, GlobalPro, DM, FaraConsts;

{$R *.dfm}

procedure TCheckDocumentsF2.InitMnu(Kind: Byte; FormType: Integer);
var
  I: Integer;
begin
  pop1.Items.Clear;
  I := 0;
  with dmf.qryTmpTmp do
    try
      close;
      SQL.Text :=
        'SELECT FaraSystems.dbo.Operators.UserID, FaraSystems.dbo.Operators.name,';
      SQL.Add(' WF_FlowFroms.PositionCode,WF_FlowFroms.SortAccept-1 AS SortAccept');
      SQL.Add('FROM WF_FlowFroms INNER JOIN');
      SQL.Add('FaraSystems.dbo.Position ON WF_FlowFroms.PositionCode = FaraSystems.dbo.Position.PositionCode INNER');
      SQL.Add('JOIN');
      SQL.Add('FaraSystems.dbo.Operators ON FaraSystems.dbo.Position.PositionCode =');
      SQL.Add('FaraSystems.dbo.Operators.PositionCode');
      SQL.Add('WHERE (WF_FlowFroms.Kind = :Kind)');
      SQL.Add('AND (WF_FlowFroms.FormTypeNum = :FormType)');
      SQL.Add('AND (WF_FlowFroms.SortAccept < :SortAccept)');
      Parameters.ParamByName('Kind').Value := Kind;
      Parameters.ParamByName('FormType').Value := FormType;
      Parameters.ParamByName('SortAccept').Value := SortAccept;
      open;
      while not eof do
      begin
        pop1.Items.Add(NewItem(FieldByName('name').AsString, 0, False, True,
          mnuAllCitationClick, FieldByName('PositionCode').AsInteger,
          'Itm' + FieldByName('UserID').AsString));
        pop1.Items[I].Tag := FieldByName('UserID').AsInteger;
        pop1.Items[I].Hint := FieldByName('SortAccept').AsString;
        inc(I);
        next;
      end;
    finally
      close;
    end;
end;

procedure TCheckDocumentsF2.mnuAllCitationClick(Sender: TObject);
begin
  inherited;
  INSERT_WF_TransWorkFlow((Sender as TMenuItem).Tag,
    (Sender as TMenuItem).HelpContext,
    StrToInt((Sender as TMenuItem).Hint), User.ID);
end;

procedure TCheckDocumentsF2.actCitationExecute(Sender: TObject);
begin
  inherited;
  pop1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCheckDocumentsF2.actPostExecute(Sender: TObject);
begin
  inherited;
  INSERT_WF_TransWorkFlow(User.ID, User.PositionCode, SortAccept, 0);
end;

procedure TCheckDocumentsF2.INSERT_WF_TransWorkFlow(UserID, UserPositionCode,
  Sort_Accept, UserCitation: Integer);
begin
  if Trim(Edit1.Text) = EmptyStr then
  begin
    Warn2(Label9.Caption + ' ?..?..? ' + Label10.Caption);
    Exit;
  end;
  if qryWorkFlow.RecordCount > 0 then
    With dmf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'INSERT INTO WF_TransWorkFlow';
      SQL.Add('(kind, ServerID, YearID, FormID, FormType, ModifyDate, ');
      SQL.Add('UserID, PositionCode, SortAccept, State, Note,UserCitation)');
      SQL.Add('VALUES (:kind , :ServerID , :YearID, :FormID, :FormType, GETDATE(),');
      SQL.Add(' :UserID, :PositionCode , :SortAccept , 0, :Note ,:UserCitation )');
      Parameters.ParamByName('kind').Value := qryWorkFlowkind.AsInteger;
      Parameters.ParamByName('ServerID').Value := qryWorkFlowServerID.AsInteger;
      Parameters.ParamByName('YearID').Value := qryWorkFlowYearID.AsInteger;
      Parameters.ParamByName('FormID').Value := qryWorkFlowFormID.AsInteger;
      Parameters.ParamByName('FormType').Value := qryWorkFlowFormType.AsInteger;
      Parameters.ParamByName('UserID').Value := UserID;
      Parameters.ParamByName('PositionCode').Value := UserPositionCode;
      Parameters.ParamByName('SortAccept').Value := Sort_Accept;
      Parameters.ParamByName('Note').Value := Trim(Edit1.Text);
      Parameters.ParamByName('UserCitation').Value := UserCitation;
      ExecSQL;
      if UserCitation = 0 then
        FnStateAfterPost(False);
    end;
  actPost.Enabled := False;
  actCitation.Enabled := False;
  qryWorkFlow.Requery;
end;

procedure TCheckDocumentsF2.FnStateAfterPost(IsSetVoid: Boolean);
var
  FormState: SmallInt;
begin
  inherited;
  With dmf.qryTmpTmp do
  begin
    Active := False;
    case qryWorkFlow.FieldByName('Kind').AsInteger of
      1:
        begin
          SQL.Text := 'UPDATE Forms';
          SQL.Add('SET FormState = :State');
          SQL.Add('WHERE (FormID = :FormID) ');
          FormState := 10;
        end;

      2:
        begin
          SQL.Text := 'UPDATE Recipts';
          SQL.Add('SET ReciptState = :State');
          SQL.Add('WHERE (ReciptID = :FormID) ');
          FormState := 3;
        end;
    end;
    SQL.Add('AND (ServerID = :ServerID) ');
    SQL.Add('AND (YearID = :YearID)');

    if IsSetVoid then
      Parameters.ParamByName('State').Value := FormState
    else
      Parameters.ParamByName('State').Value := StateAfterPost;

    Parameters.ParamByName('ServerID').Value := qryWorkFlowServerID.AsInteger;
    Parameters.ParamByName('YearID').Value := qryWorkFlowYearID.AsInteger;
    Parameters.ParamByName('FormID').Value := qryWorkFlowFormID.AsInteger;
    ExecSQL;
  end;
end;

procedure TCheckDocumentsF2.actShowExecute(Sender: TObject);
begin
  inherited;
  case qryWorkFlow.FieldByName('Kind').AsInteger of
    1:
      ShowFormTypesForms(qryWorkFlow, Self);
    2:
      ShowReciptTypes(qryWorkFlow, Self)
  end;
end;

procedure TCheckDocumentsF2.actVoidExecute(Sender: TObject);
begin
  inherited;
  FnStateAfterPost(True);
end;

procedure TCheckDocumentsF2.enter(Kind: Byte; FormType: Integer; ServerId: Byte;
  YearID: Integer; formID, _SortAccept, _StateAfterPost: Integer;
  ISAccept: Boolean);
begin
  CheckDocumentsF2 := TCheckDocumentsF2.Create(Application);
  with CheckDocumentsF2 DO
    try
      SortAccept := _SortAccept;
      StateAfterPost := _StateAfterPost;
      InitMnu(Kind, FormType);
      actPost.Enabled := not ISAccept;
      actCitation.Enabled := not ISAccept;
      with qryWorkFlow do
      begin
        Active := False;
        Parameters.ParamByName('kind').Value := Kind;
        Parameters.ParamByName('FormType').Value := FormType;
        Parameters.ParamByName('ServerID').Value := ServerId;
        Parameters.ParamByName('YearID').Value := YearID;
        Parameters.ParamByName('FormID').Value := formID;
        Parameters.ParamByName('YearID2').Value := YearID;
        Parameters.ParamByName('kind2').Value := Kind;
        Parameters.ParamByName('FormType2').Value := FormType;
        // Parameters.ParamByName('UserCitation').Value := User.ID;
        // AND (WF_TransWorkFlow.UserCitation = 0 OR WF_TransWorkFlow.UserCitation <> :UserCitation )
        Active := True;
      end;
      if ShowModal = mrOk then
      begin
        actPost.Execute
      end;
    finally
      Free;
    end;
end;

procedure TCheckDocumentsF2.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCheckDocumentsF2.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4);
end;

end.
