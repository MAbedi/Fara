unit WorkflowHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB, ADODB,
  Grids, Vcl.DBGrids, System.Actions;

type
  TWorkflowHistoryF = class(TTemplate4F)
    qryWF_TransWorkFlow: TADOQuery;
    DBGrid1: TDBGrid;
    srcWF_TransWorkFlow: TDataSource;
    qryWF_TransWorkFlowname: TStringField;
    qryWF_TransWorkFlowPositionTitle: TStringField;
    qryWF_TransWorkFlowNote: TWideStringField;
    qryWF_TransWorkFlowModifyDate: TDateTimeField;
    procedure qryWF_TransWorkFlowModifyDateGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    procedure Init(FormType, FormID, YearID, ServerID: Integer);
    { Private declarations }
  public
    { Public declarations }
    procedure Enter(FormType, FormID, YearID, ServerID: Integer);
  end;

var
  WorkflowHistoryF: TWorkflowHistoryF;

implementation

uses shamsiDate;

{$R *.dfm}

procedure TWorkflowHistoryF.Enter(FormType, FormID, YearID, ServerID: Integer);
begin
  WorkflowHistoryF := TWorkflowHistoryF.Create(Application);
  with WorkflowHistoryF do
    try
      Init(FormType, FormID, YearID, ServerID);
      ShowModal;
    finally
      Free;
    end;
end;

procedure TWorkflowHistoryF.Init(FormType, FormID, YearID, ServerID: Integer);
begin
  With qryWF_TransWorkFlow do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Parameters.ParamByName('FormID').Value := FormID;
    Parameters.ParamByName('YearID').Value := YearID;
    Parameters.ParamByName('ServerID').Value := ServerID;
    Active := True;
  end;

end;

procedure TWorkflowHistoryF.qryWF_TransWorkFlowModifyDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
const
  CText = '%s ÓÇÚÊ  %S';
var
  dt: TDateTime;
begin
  inherited;
  dt := Sender.AsDateTime;
  Text := Format(CText, [miladi2Shamsi(dt), formatdatetime('hh:nn', dt)]);
end;

end.
