unit WorkPlanning;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB, ADODB,
  WorkflowDm, FaraConsts;

type
  TWorkPlanningF = class(TTemplate4F)
    cmbWorkFlow: TComboBox;
    cmbUser: TComboBox;
    edtSubject: TEdit;
    mmoText: TMemo;
    btnOK: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    qrywfTask: TADOQuery;
    qrywfTaskid: TIntegerField;
    qrywfTasksubject: TStringField;
    qrywfTaskdescription: TMemoField;
    qrywfTaskAssignedUserID: TStringField;
    qrywfTaskSuperUserID: TStringField;
  private
    procedure InitCombo;
    procedure Calc(qry: TADOQuery);
    { Private declarations }
  public
    procedure Enter(qry: TADOQuery);
    { Public declarations }
  end;

var
  WorkPlanningF: TWorkPlanningF;

implementation

uses GlobalPro, DM, MMESSAGE;

{$R *.dfm}

procedure TWorkPlanningF.Enter(qry: TADOQuery);
begin
  WorkPlanningF := TWorkPlanningF.Create(Application);
  with WorkPlanningF do
    try
      InitCombo;
      if ShowModal = mrOk then
        Calc(qry);
    finally
      Free;
    end;
end;

procedure TWorkPlanningF.Calc(qry: TADOQuery);
var
  UserID: string;
  LastID,wfID: Integer;

begin
  with dmf.qryTmpTmp do
  begin
    try
      Close;
      sql.Text := 'SELECT MAX(ID) FROM wstaskinstance';
      Open;
      LastID := Fields[0].AsInteger;
    finally
      Close;
    end;
  end;
  with qry do
    try
      DisableControls;
      First;
      Filter := '_Checked = 1';
      Filtered := True;
     wfID := integer(cmbWorkFlow.Items.Objects[cmbWorkFlow.ItemIndex]);
      while not Eof do
      begin
        if WorkflowDmF.SelectedUser(cmbUser) <> nil then
          UserID := WorkflowDmF.SelectedUser(cmbUser).UserID;
        WorkflowDmF.RunSomeWorkflow(wfID, qry,nil,EmptyStr,'');
        Next;
      end;
    finally
      BigMessage('À»  ‘œ', 1);
      with qrywfTask do
      begin
        try
          Parameters.ParamByName('ID').Value := LastID;
         // Parameters.ParamByName('UserID').Value := IntToStr(User.ID);
          Parameters.ParamByName('wfKey').Value := wfID;
          Open;
          while not Eof do
          begin
            Edit;
            qrywfTasksubject.AsString := edtSubject.Text;
            qrywfTaskdescription.AsString := mmoText.Text;
            qrywfTaskAssignedUserID.AsString := UserID;
            qrywfTaskSuperUserID.AsString := IntToStr(User.ID);
            post;
            Next;
          end;
        finally
          Close;
        end;
      end;
      Filtered := False;
      EnableControls;
    end;
end;

procedure TWorkPlanningF.InitCombo;
begin
  WorkflowDmF.InitWorkFlowCmb(cmbWorkFlow);
  cmbUser.Clear;
  theWorkflowStudio.UserManager.FillUserList(cmbUser.Items, True);
end;

end.
