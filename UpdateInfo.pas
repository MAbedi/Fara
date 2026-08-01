unit UpdateInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtActns, StdCtrls, Buttons, ActnList, ComCtrls, ExtCtrls,
  System.Actions, Vcl.CheckLst, Dm, Data.DB, Data.Win.ADODB;

type
  TUpdateInfoF = class(TForm)
    ProgressBar1: TProgressBar;
    ActionList1: TActionList;
    actUpdate: TAction;
    Panel1: TPanel;
    actCancel: TAction;
    StatusBar1: TStatusBar;
    Bevel1: TPanel;
    btnUpdate: TBitBtn;
    lslTableName: TCheckListBox;
    spSp_Run_Synchronization: TADOStoredProc;
    btnClose: TBitBtn;
    procedure actUpdateInfocute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure lslTableNameDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure enter;
    { Public declarations }
  end;

var
  UpdateInfoF: TUpdateInfoF;

implementation

uses GlobalPro, FaraConsts, dmgConst;

{$R *.dfm}

procedure TUpdateInfoF.enter;
var
  i: Integer;
begin
  with TUpdateInfoF.Create(Application) do
    try
      Application.CreateForm(TdmgConstF, dmgConstF);
      dmgConstF.FillListBox(lslTableName);
      for i := 0 to lslTableName.Count - 1 do
        lslTableName.Checked[i] := True;
      ShowModal;
    finally
      dmgConstF.Free;
      Free;
    end;
end;

procedure TUpdateInfoF.lslTableNameDblClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to lslTableName.Items.Count - 1 do
    lslTableName.Checked[i] := not lslTableName.Checked[i]
end;

procedure TUpdateInfoF.actUpdateInfocute(Sender: TObject);
var
  i, j: Integer;
begin
  inherited;
  if get_response('آیا برای بروزرسانی اطلاعت انتخاب شده  مطمئن هستید؟' + #13#10
    + 'درصورت تایید اطلاعات با توجه به بانک لینک شده یکسان سازی می شود',
    clGreen) <> mrYes then
    exit;

  for i := 0 to lslTableName.Count - 1 do
    if lslTableName.Checked[i] then
    begin
      j := Integer(lslTableName.Items.Objects[i]);
      With spSp_Run_Synchronization do
      begin
        CommandTimeout := 0;
        Parameters.Refresh;
        Parameters.ParamByName('@Table').Value := MyArray[j].TableName;
        Parameters.ParamByName('@TableKey').Value := MyArray[j].tableKeyName;
        Parameters.ParamByName('@schema').Value :=
          MyArray[j].SchemaName.Replace('.', '');
        ExecProc;
      end;
    end;
  Warn('انجام شد.', mtInformation);
end;

procedure TUpdateInfoF.actCancelExecute(Sender: TObject);
begin
  Close;
end;

end.
