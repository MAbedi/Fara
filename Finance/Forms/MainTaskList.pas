unit MainTaskList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wsMain, Variants, ADODB, Db, Grids, DBGrids, ComCtrls, wsControls, ExtCtrls,
  fTaskInstanceView, atDiagram, LiveDiagram, wsClasses, wsDB, StdCtrls,
  ActnList, Menus, wsDiagram, template2MDI, ImgList, DBActns, Buttons,
  FaraConsts, shamsiDate, GlobalPro,  MMESSAGE,
  FormFunctions, DM;

type

  TMainTaskListF = class(Ttemplate2MDIF)
    Splitter1: TSplitter;
    AttachmentSplitter: TSplitter;
    Panel1: TPanel;
    lvTasks: TTaskListView;
    Panel20: TPanel;
    TabControl1: TTabControl;
    pnAttachment: TPanel;
    Splitter3: TSplitter;
    ActionList1: TActionList;
    acShowOnlyOpen: TAction;
    acShowAllTasks: TAction;
    PopupMenu1: TPopupMenu;
    miView: TMenuItem;
    Showonlyopentasks2: TMenuItem;
    Showalltasks2: TMenuItem;
    Timer1: TTimer;
    WorkflowDiagram1: TWorkflowDiagram;
    btSaveChanges: TButton;
    pnlTask: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    lbSubject: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    lbExpiration: TLabel;
    cmbStatus: TTaskStatusCombo;
    memDescription: TMemo;
    btnCustomers: TButton;
    CheckBox1: TCheckBox;
    actCustomersInterViewF: TAction;
    actCustomersTaxF: TAction;
    actCustomerShow: TAction;
    Panel6: TPanel;
    lblsearch: TLabel;
    edtsearch: TEdit;
    popCustomers: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    Panel7: TPanel;
    lblsearch1: TLabel;
    edtlvTasks: TEdit;
    Panel8: TPanel;
    qrywstaskinstance: TADOQuery;
    srcwstaskinstance: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btSaveChangesClick(Sender: TObject);
    procedure WorkflowDiagram1Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure lvTasksSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure acShowOnlyOpenUpdate(Sender: TObject);
    procedure acShowAllTasksUpdate(Sender: TObject);
    procedure lvTasksCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure actCustomersInterViewFExecute(Sender: TObject);
    procedure edtsearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actCustomersTaxFExecute(Sender: TObject);
    procedure actCustomerShowExecute(Sender: TObject);
    procedure btnCustomersClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtlvTasksKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TaskLogListView1CustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormResize(Sender: TObject);
  private
    FWorkIns: TWorkflowInstance;
    FLastActivePageName: string;
    FUpdatingTabs: integer;
    FFieldPanel: TTaskFieldPanel;
    FLogView: TTaskLogListView;
    FFreeOnClose: Boolean;
    FWorkflowStudio: TWorkflowStudio;
    FOldRunFinished: TWorkflowInstanceEvent;
    FAttachmentsViewMode: TAttachmentsViewMode;
    function GetWorkIns: TWorkflowInstance;
    procedure AddAttachmentTab(AAttach: TWorkflowAttachment;
      APermissions: TAttachmentPermissions);
    procedure AddAttachmentPanel(AAttach: TWorkflowAttachment;
      APermissions: TAttachmentPermissions);
    procedure UpdateFieldsTab;
    procedure UpdateActivePage;
    procedure UpdateFixedTabs;
    function FindTabByType(AType: integer): integer;
    procedure SaveChanges;
    procedure UpdateWorkflowDiagram;
    procedure UpdateAttachmentTabs;
    procedure BeginUpdateTabs;
    procedure EndUpdateTabs;
    procedure Localize;
    procedure UpdateLogTab;
    procedure RunFinished(Sender: TObject; AWorkIns: TWorkflowInstance);
    procedure UpdateTask;
    function FindVariableByName(varName: string): string;
  protected
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent; AWorkflowStudio: TWorkflowStudio);
      reintroduce;
    destructor Destroy; override;
    procedure SetFilter(FilterType: TTaskFilterType; AFilter: string);
    procedure LoadData;
    property FreeOnClose: Boolean read FFreeOnClose write FFreeOnClose;
    property AttachmentsViewMode: TAttachmentsViewMode read FAttachmentsViewMode
      write FAttachmentsViewMode;
    procedure ShowUserTasksDlg(AUserKey: string;
      AFormMode: TWorkflowFormMode = wfmMDI;
      AttachmentMode: TAttachmentsViewMode = avmAllInTabs);
  end;

var
  MainTaskListF: TMainTaskListF;

implementation

uses
  fAttachmentFrame, wsRes, mdiMain, DesignForms, main;

{$R *.DFM}

const
  _TaskTabIndex = 1;
  _WorkflowTabIndex = 2;
  _FieldTabIndex = 3;
  _TaskLogIndex = 4;

  _MaxFixedTab = 4;

  { TfmTaskList }

procedure TMainTaskListF.LoadData;
begin
  lvTasks.LoadFromDatabase;
  if lvTasks.SelectedTask = nil then
  begin
    if lvTasks.Items.Count > 0 then
      lvTasks.Items.Item[0].Selected := true
    else
      lvTasksSelectItem(nil, nil, false);
  end;
end;

procedure TMainTaskListF.UpdateActivePage;
var
  AFrame: TfrAttachmentFrame;
begin
  if FUpdatingTabs = 0 then
  begin
    if (TabControl1.TabIndex = -1) and (TabControl1.Tabs.Count > 0) then
    begin
      TabControl1.TabIndex := 0;
    end;

    if TabControl1.TabIndex > -1 then
{$WARNINGS OFF}
      Case integer(TabControl1.Tabs.Objects[TabControl1.TabIndex]) of
{$WARNINGS ON}
        _TaskTabIndex:
          begin
            pnlTask.BringToFront;

          end;
        _WorkflowTabIndex:
          begin
            // WorkflowDiagram1.Visible := true;
            TControl(WorkflowDiagram1).BringToFront;
            WorkflowDiagram1.MakeActiveNodeVisible;
            // WorkflowDiagram1.SetFocus;
          end;
        _FieldTabIndex:
          begin
            FFieldPanel.BringToFront;
          end;
        _TaskLogIndex:
          begin

            if lvTasks.SelectedTask <> nil then
              FLogView.TaskInsKey := lvTasks.SelectedTask.Key
            else
              FLogView.TaskInsKey := '';
            FLogView.LoadFromDatabase;
            FLogView.BringToFront;
            FLogView.Columns[2].Width := 100;
            FLogView.Columns[4].Width := 300;
            // FLogView.
          end;
      else
        AFrame := TfrAttachmentFrame(TabControl1.Tabs.Objects
          [TabControl1.TabIndex]);
        AFrame.BringToFront;
      end;
  end;
end;

procedure TMainTaskListF.UpdateWorkflowDiagram;
var
  AWorkIns: TWorkflowInstance;
begin
  if (lvTasks.SelectedTask <> nil) or (lvTasks.FilterType = tfWorkIns) then
  begin
    WorkflowDiagram1.BeginUpdate;
    try
      AWorkIns := GetWorkIns;
      AWorkIns.AssignToDiagram(WorkflowDiagram1, true);
      WorkflowDiagram1.DisplayTaskStatus := true;

      Case AWorkIns.Status of
        wsNotStarted:
          WorkflowDiagram1.ViewStateMode := vmStart;
        wsFinished, wsFinishedWithError:
          WorkflowDiagram1.ViewStateMode := vmEnd;
      else
        WorkflowDiagram1.ViewStateMode := vmRun;
      end;

      WorkflowDiagram1.TopRuler.Visible := false;
      WorkflowDiagram1.LeftRuler.Visible := false;
      WorkflowDiagram1.AutoPage := false;
      WorkflowDiagram1.AutoScroll := true;
      WorkflowDiagram1.PageLines.Visible := false;
      WorkflowDiagram1.State := dsView;
      WorkflowDiagram1.MakeActiveNodeVisible;
    finally
      WorkflowDiagram1.EndUpdate;
    end;
  end
  else
    WorkflowDiagram1.Clear;
end;

procedure TMainTaskListF.FormCreate(Sender: TObject);
begin
  inherited;
  // frTaskView.OnTaskChanged := TaskEdited;
  FFieldPanel := TTaskFieldPanel.Create(Self);
  FFieldPanel.Parent := TabControl1;
  FFieldPanel.Align := alClient;

  FLogView := TTaskLogListView.Create(Self);

  FLogView.WorkflowStudio := FWorkflowStudio;
  FLogView.Parent := TabControl1;
  FLogView.Align := alClient;

  /// abedi

  ///
  FLogView.OnCustomDrawItem := TaskLogListView1CustomDrawItem;
  // FLogView.OwnerDraw := true;
  ///

  FUpdatingTabs := 0;
  // frTaskView.Task := nil;

  { Create list view columns }
  lvTasks.Columns.Clear;
  With lvTasks.Columns.Add do
  begin
    Caption := _str(SColumnKey);
    Width := 40;
  end;
  With lvTasks.Columns.Add do
  begin
    Caption := _str(SColumnName);
    Width := 100;
  end;
  With lvTasks.Columns.Add do
  begin
    Caption := _str(SColumnWorkflow);
    Width := 100;
  end;
  With lvTasks.Columns.Add do
  begin
    Caption := _str(SColumnSubject);
    Width := 220;
  end;
  With lvTasks.Columns.Add do
  begin
    Caption := _str(SColumnStatus);
    Width := 100;
  end;
  With lvTasks.Columns.Add do
  begin
    Caption := _str(SColumnUser);
    Width := 100;
  end;
  /// add abedi
  With lvTasks.Columns.Add do
  begin
    Caption := _str(STabFields);
    Width := 100;
  end;

end;

procedure TMainTaskListF.SaveChanges;
var
  AAttach: TWorkflowAttachment;
  AWorkIns: TWorkflowInstance;
  lvItems: TAttachmentListView;
  c: integer;
begin
  if lvTasks.SelectedTask <> nil then
  begin
    { Get the workflowinstance related to the task. Be sure to refresh the workflow instance }
    if FWorkIns <> nil then
    begin
      FWorkIns.Free;
      FWorkIns := nil;
    end;
    AWorkIns := GetWorkIns;

    { Save the attachments }
    if (pnAttachment.ControlCount > 0) and
      (AWorkIns.Diagram.Attachments.Count > 0) then
    begin
      AAttach := AWorkIns.Diagram.Attachments[0];
      lvItems := TfrAttachmentFrame(pnAttachment.Controls[0]).lvItems;
      if lvItems <> nil then
      begin
        AAttach.Items.WorkflowStudio := lvItems.Attachments.WorkflowStudio;
        AAttach.Items.Assign(lvItems.Attachments);
      end;
    end;
{$WARNINGS OFF}
    for c := 0 to TabControl1.Tabs.Count - 1 do
      if integer(TabControl1.Tabs.Objects[c]) > _MaxFixedTab then
{$WARNINGS ON}
      begin
        AAttach := AWorkIns.Diagram.Attachments.FindByName(TabControl1.Tabs[c]);
        if AAttach <> nil then
        begin
          lvItems := TfrAttachmentFrame(TabControl1.Tabs.Objects[c]).lvItems;
          if lvItems <> nil then
          begin
            AAttach.Items.WorkflowStudio := lvItems.Attachments.WorkflowStudio;
            AAttach.Items.Assign(lvItems.Attachments);
          end;
        end;
      end;

    { Save the fields }
    if FindTabByType(_FieldTabIndex) > -1 then
    begin
      if not FFieldPanel.ValidateValues then
      begin
        TabControl1.TabIndex := FindTabByType(_FieldTabIndex);
        TabControl1Change(TabControl1);
        if FFieldPanel.CanFocus then
          FFieldPanel.SetFocus;
        FFieldPanel.FocusLastError;
        ShowMessage(FFieldPanel.ErrorInfo.Msg);
        Abort;
        // raise EWorkflowException.Create(FFieldPanel.ErrorInfo.Msg);
      end;
      FFieldPanel.SaveDiagramVariables(AWorkIns.Diagram);
    end;

    { Save the workflow instance }
    FWorkflowStudio.WorkflowManager.SaveWorkflowInstance(AWorkIns);

    { Save the task instance. WARNING - this should be done after any saving code, because
      it loads the workflowinstance and signal it (run it again). So, it must be executed
      after all processing so it gets the most up to date workflow instance object }
    FWorkflowStudio.TaskManager.SaveTaskInstance(lvTasks.SelectedTask);

    { From below, it's only visual stuff }

    { Reload the task list from database, in case it's not more in the list (for example,
      it might be completed }
    // FTimer.Enabled := True;
    LoadData;
    // lvTasks.LoadFromDatabase;
  end;
end;

procedure TMainTaskListF.SetFilter(FilterType: TTaskFilterType;
  AFilter: string);
begin
  lvTasks.FilterType := FilterType;
  lvTasks.FilterKey := AFilter;
end;

function TMainTaskListF.FindVariableByName(varName: string): string;
var
  Val: TWorkflowVariable;
begin
  Val := GetWorkIns.Diagram.Variables.FindByName(varName);

  if (Val <> nil) and (Val.Value <> null) then
    result := VarToStr(Val.Value)
end;

procedure TMainTaskListF.FormShow(Sender: TObject);
Const
  LVM_FIRST = $1000; // ListView messages
  LVM_GETHEADER = LVM_FIRST + 31;
var
  header: thandle;
begin
  inherited;
  UpdateWorkflowDiagram;
  TabControl1.TabIndex := 0;

  header := SendMessage(lvTasks.Handle, LVM_GETHEADER, 0, 0);
  SetWindowLong(header, GWL_EXSTYLE, GetWindowLong(header, GWL_EXSTYLE) or
    WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT);

  SetWindowLong(lvTasks.Handle, GWL_EXSTYLE, GetWindowLong(lvTasks.Handle,
    GWL_EXSTYLE) or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT);
  lvTasks.invalidate; // get the list view to display right to left

end;

procedure TMainTaskListF.AddAttachmentPanel(AAttach: TWorkflowAttachment;
  APermissions: TAttachmentPermissions);
var
  AFrame: TfrAttachmentFrame;
begin
  AFrame := TfrAttachmentFrame.Create(Self, FWorkflowStudio);
  AFrame.Align := alClient;
  AFrame.Visible := false;
  AFrame.Parent := pnAttachment;
  AFrame.Name := 'AttachPanel';

  AFrame.lvItems.Attachments := AAttach.Items;
  { if the selected task is open, than allow normal permissions. Otherwise, cannot change attachments }
  if Assigned(lvTasks.SelectedTask) and not lvTasks.SelectedTask.Completed then
    AFrame.Permissions := APermissions
  else
    AFrame.Permissions := [];
  AFrame.Visible := true;
end;

procedure TMainTaskListF.AddAttachmentTab(AAttach: TWorkflowAttachment;
  APermissions: TAttachmentPermissions);
var
  AFrame: TfrAttachmentFrame;
begin
  AFrame := TfrAttachmentFrame.Create(Self, FWorkflowStudio);
  AFrame.Align := alClient;
  AFrame.Visible := false;
  AFrame.Parent := TabControl1;
  TabControl1.Tabs.AddObject(AAttach.Name, AFrame);
  AFrame.Name := 'AttachFrame' + IntToStr(TabControl1.Tabs.Count);

  AFrame.lvItems.Attachments := AAttach.Items;
  { if the selected task is open, than allow normal permissions. Otherwise, cannot change attachments }
  if Assigned(lvTasks.SelectedTask) and not lvTasks.SelectedTask.Completed then
    AFrame.Permissions := APermissions
  else
    AFrame.Permissions := [];

  AFrame.SendToBack;
  AFrame.Visible := true;
end;

procedure TMainTaskListF.UpdateAttachmentTabs;
var
  AWorkIns: TWorkflowInstance;
  c: integer;
  HasPanel: Boolean;
begin
  { Delete the previous tabs }
  c := 0;
  while c < TabControl1.Tabs.Count do
  begin
{$WARNINGS OFF}
    if integer(TabControl1.Tabs.Objects[c]) > _MaxFixedTab then
{$WARNINGS ON}
    begin
      TfrAttachmentFrame(TabControl1.Tabs.Objects[c]).Free;
      TabControl1.Tabs.Delete(c);
    end
    else
      inc(c);
  end;
  if pnAttachment.ControlCount > 0 then
    TfrAttachmentFrame(pnAttachment.Controls[0]).Free;

  if (lvTasks.SelectedTask <> nil) and
    (lvTasks.SelectedTask.TaskDef.ShowAttachments) then
  begin
    AWorkIns := GetWorkIns;
    for c := 0 to AWorkIns.Diagram.Attachments.Count - 1 do
    begin
      if (c = 0) and (AttachmentsViewMode = avmBottomPanel) then
        AddAttachmentPanel(AWorkIns.Diagram.Attachments[c],
          lvTasks.SelectedTask.TaskDef.AttachmentPermissions)
      else
        AddAttachmentTab(AWorkIns.Diagram.Attachments[c],
          lvTasks.SelectedTask.TaskDef.AttachmentPermissions);
    end;
  end;

  HasPanel := pnAttachment.ControlCount > 0;
  pnAttachment.Visible := HasPanel;
  AttachmentSplitter.Visible := HasPanel;
end;

procedure TMainTaskListF.UpdateFieldsTab;
var
  i: integer;
  MustShow: Boolean;
  AWorkIns: TWorkflowInstance;
begin
  MustShow := (lvTasks.SelectedTask <> nil) and
    (lvTasks.SelectedTask.TaskDef.Fields.Count > 0);
  i := FindTabByType(_FieldTabIndex);

  { Create or destroy the tab, depending if it must be shown or not }
  if MustShow and (i = -1) then
    TabControl1.Tabs.InsertObject(2, _str(STabFields), TObject(_FieldTabIndex));
  if not MustShow and (i > -1) then
    TabControl1.Tabs.Delete(i);

  { update fields tab }
  if lvTasks.SelectedTask <> nil then
  begin
    FFieldPanel.Fields := lvTasks.SelectedTask.TaskDef.Fields;
    AWorkIns := GetWorkIns;
    FFieldPanel.LoadDiagramVariables(AWorkIns.Diagram);
  end;
  FFieldPanel.ReadOnly := not Assigned(lvTasks.SelectedTask) or
    lvTasks.SelectedTask.Completed;
end;

function TMainTaskListF.FindTabByType(AType: integer): integer;
var
  c: integer;
begin
  result := -1;
  for c := 0 to TabControl1.Tabs.Count - 1 do
{$WARNINGS OFF}
    if integer(TabControl1.Tabs.Objects[c]) = AType then
{$WARNINGS ON}
    begin
      result := c;
      exit;
    end;
end;

procedure TMainTaskListF.UpdateFixedTabs;
begin
  With TabControl1.Tabs do
  begin
    if FindTabByType(_TaskTabIndex) = -1 then
      InsertObject(0, _str(STabTask), TObject(_TaskTabIndex));
    if FindTabByType(_WorkflowTabIndex) = -1 then
      InsertObject(1, _str(STabWorkflow), TObject(_WorkflowTabIndex));
  end;
end;

procedure TMainTaskListF.UpdateTask;
var
  Task: TTaskInstance;
  ExpirationDateTime: TDateTime;
begin
  Task := lvTasks.SelectedTask;
  cmbStatus.TaskInstance := lvTasks.SelectedTask;
  if Task <> nil then
  begin
    ExpirationDateTime := theWorkflowStudio.TaskManager.TaskExpirationDateTime
      (GetWorkIns, Task);
    memDescription.Lines.Text := Task.TaskDef.Description;
    lbSubject.Caption := Task.TaskDef.Subject;
    cmbStatus.Enabled := not Task.Completed;
    if (ExpirationDateTime > 0) and (Task <> nil) and not Task.Completed then
      lbExpiration.Caption := 'مهلت تا' + ': ' +
        miladi2Shamsi(ExpirationDateTime)
    else
      lbExpiration.Caption := '';
  end
  else
  begin
    memDescription.Lines.Text := '';
    lbSubject.Caption := '';
    cmbStatus.Enabled := false;
    lbExpiration.Caption := '';
  end;
end;

procedure TMainTaskListF.UpdateLogTab;
var
  i: integer;
begin
  With TabControl1.Tabs do
  begin
    i := FindTabByType(_TaskLogIndex);
    if i = -1 then
      AddObject(_str(STabLog), TObject(_TaskLogIndex))
    else
      Move(i, TabControl1.Tabs.Count - 1);
  end;
end;

procedure TMainTaskListF.FormDestroy(Sender: TObject);
begin
  inherited;
  if FWorkIns <> nil then
  begin
    FWorkIns.Free;
    FWorkIns := nil;
  end;
end;

procedure TMainTaskListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSizeLst(FLogView, 4, Self.Name);
  SetColSizeLst(lvTasks, 3, Self.Name)
end;

function TMainTaskListF.GetWorkIns: TWorkflowInstance;
begin
  { Check if WorkIns is already loaded }
  if FWorkIns <> nil then
  begin
    case lvTasks.FilterType of
      tfWorkIns:
        if FWorkIns.Key = lvTasks.FilterKey then
        begin
          result := FWorkIns;
          exit;
        end;
    else
      begin
        if (lvTasks.SelectedTask <> nil) and
          (FWorkIns.Key = lvTasks.SelectedTask.WorkInsKey) then
        begin
          result := FWorkIns;
          exit;
        end;
      end;
    end;
  end;

  { FWorkIns must be reloaded }
  if FWorkIns <> nil then
    FWorkIns.Free;

  FWorkIns := TWorkflowInstance.Create(nil, FWorkflowStudio);
  if lvTasks.FilterType = tfWorkIns then
    FWorkIns.Key := lvTasks.FilterKey { workInskey }
  else if lvTasks.SelectedTask <> nil then
    FWorkIns.Key := lvTasks.SelectedTask.WorkInsKey
  else
  begin
    FWorkIns.Free;
    FWorkIns := nil;
  end;

  FWorkflowStudio.WorkflowManager.LoadWorkflowInstance(FWorkIns);
  result := FWorkIns;
end;

procedure TMainTaskListF.btSaveChangesClick(Sender: TObject);
begin
  SaveChanges;
end;

procedure TMainTaskListF.Button1Click(Sender: TObject);
var
  ftype: integer;
  s, SQLTxt: string;
  qry: TADOQuery;
begin
  inherited;
  qry := TADOQuery.Create(Self);
  qry.Connection := theMainConnection;
  SQLTxt := 'SELECT 0';
  s := FindVariableByName('YearID');
  if s <> '' then
    SQLTxt := SQLTxt + ',YearID=' + s;

  s := FindVariableByName('ServerID');
  if s <> '' then
    SQLTxt := SQLTxt + ',ServerID=' + s;

  s := FindVariableByName('ReciptID');
  if s <> '' then
  begin
    SQLTxt := SQLTxt + ',ReciptID=' + s;
    qry.SQL.Text := SQLTxt;
    qry.Open;
//    ShowReciptTypes(qry, mainf);
    qry.Free;
    exit;
  end;

  s := FindVariableByName('FormID');
  if s <> '' then
  begin
    SQLTxt := SQLTxt + ',FormID=' + s;
    qry.SQL.Text := SQLTxt;
    qry.Open;
    //ShowFormTypesForms(qry, mainf);
    qry.Free;
    exit;
  end;

  s := FindVariableByName('Id');
  if s <> '' then
  begin
    ftype := StrToInt(s);
    CreateMDIForm2(TDesignFormsF, DesignFormsF, mainf, 1);
    if not DesignFormsF.qryForm.Locate('id', ftype, []) then
      Warn('فرم پیدا نشد');
  end;
end;

procedure TMainTaskListF.btnCustomersClick(Sender: TObject);
begin
  inherited;
  popCustomers.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TMainTaskListF.WorkflowDiagram1Click(Sender: TObject);
begin
  WorkflowDiagram1.SetFocus;
end;

procedure TMainTaskListF.TabControl1Change(Sender: TObject);
begin
  UpdateActivePage;
end;

procedure TMainTaskListF.TaskLogListView1CustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;
  try
    Item.SubItems[0] := miladi2Shamsi(StrToDate(Item.SubItems[0]));
  except
  end;
end;

procedure TMainTaskListF.BeginUpdateTabs;
begin
  inc(FUpdatingTabs);
end;

procedure TMainTaskListF.EndUpdateTabs;
begin
  dec(FUpdatingTabs);
end;

procedure TMainTaskListF.lvTasksSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  Timer1.Enabled := false;
  Timer1.Enabled := true;
end;

procedure TMainTaskListF.RunFinished(Sender: TObject;
  AWorkIns: TWorkflowInstance);
begin
  LoadData;
  if Assigned(FOldRunFinished) then
    FOldRunFinished(Sender, AWorkIns);
end;

procedure TMainTaskListF.Localize;
begin
  Self.Caption := _str('fmTaskList.Self.Caption');
  btSaveChanges.Caption := _str('fmTaskList.btSaveChanges.Caption');
  acShowOnlyOpen.Caption := _str('fmTaskList.acShowOnlyOpen.Caption');
  acShowAllTasks.Caption := _str('fmTaskList.acShowAllTasks.Caption');
  miView.Caption := _str('fmTaskList.miView.Caption');
end;

procedure TMainTaskListF.Loaded;
begin
  inherited;
  Localize;
end;

procedure TMainTaskListF.acShowOnlyOpenUpdate(Sender: TObject);
begin
  acShowOnlyOpen.Checked := lvTasks.OnlyCompleted;
end;

procedure TMainTaskListF.actCustomerShowExecute(Sender: TObject);
var
  CustID: integer;
  s: string;
begin
  inherited;
  s := FindVariableByName('CustId');
  if s <> '' then
  begin
    CustID := StrToInt(s);
    //Customers2F.Enter(CustID);
  end;
end;

procedure TMainTaskListF.actCustomersInterViewFExecute(Sender: TObject);
var
  ftype: integer;
  s: string;
begin
  inherited;
  s := FindVariableByName('CustId');
  if s <> '' then
  begin
    ftype := StrToInt(s);
//    CreateChildForm(TCustomersInterViewF, CustomersInterViewF, Self,
  //    ftype, alNone);
  end;
end;

procedure TMainTaskListF.actCustomersTaxFExecute(Sender: TObject);
var
  ftype: integer;
  s: string;
begin
  inherited;
  s := FindVariableByName('CustId');
  if s <> '' then
  begin
    ftype := StrToInt(s);
//    CreateChildForm(TCustomersTaxF, CustomersTaxF, Self, ftype, alNone);
  end;
end;

procedure TMainTaskListF.acShowAllTasksUpdate(Sender: TObject);
begin
  acShowAllTasks.Checked := not lvTasks.OnlyCompleted;
end;

procedure TMainTaskListF.lvTasksCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  ATask: TTaskInstance;
begin
  ATask := nil;
  if Item <> nil then
    ATask := lvTasks.TaskFromItem(Item);
  if ATask <> nil then
  begin
    if ATask.Completed then
      lvTasks.Canvas.Font.Color := clGray;

    /// abedi
    ///
    With qrywstaskinstance do
    begin
      Active := false;
      Parameters[0].Value := ATask.Key;
      Active := true;
    end;
    /// abedi
  end;
  DefaultDraw := true;
end;

procedure TMainTaskListF.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  if (not(csDestroying in ComponentState)) then
  begin
    { Save last active page name }
    if TabControl1.TabIndex > -1 then
      FLastActivePageName := TabControl1.Tabs[TabControl1.TabIndex];

    BeginUpdateTabs;
    try
      // frTaskView.Task := lvTasks.SelectedTask;
      // if lvTasks.SelectedTask <> nil then
      // frTaskView.ExpirationDateTime :=
      // FWorkflowStudio.TaskManager.TaskExpirationDateTime(GetWorkIns,
      // lvTasks.SelectedTask)
      // else
      // frTaskView.ExpirationDateTime := 0;
      UpdateTask;
      UpdateWorkflowDiagram;
      UpdateAttachmentTabs;

      { The following methods *must* be called in that order }
      UpdateFixedTabs;
      UpdateFieldsTab;
      UpdateLogTab;

      if lvTasks.SelectedTask <> nil then
      begin
        { Recover the active page }
        TabControl1.TabIndex := TabControl1.Tabs.IndexOf(FLastActivePageName);
      end;
      btSaveChanges.Enabled := (lvTasks.SelectedTask <> nil) and
        not lvTasks.SelectedTask.Completed and lvTasks.SelectedTask.CanUpdate
        (FWorkflowStudio.UserManager.LoggedUserId, FWorkflowStudio);

    finally
      EndUpdateTabs;
    end;

    UpdateActivePage;
  end;
end;

procedure TMainTaskListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FFreeOnClose then
    Action := caFree;
end;

procedure TMainTaskListF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  lvTasks.OnlyCompleted := not CheckBox1.Checked;
  LoadData;
end;

constructor TMainTaskListF.Create(AOwner: TComponent;
  AWorkflowStudio: TWorkflowStudio);
begin
  inherited Create(AOwner);
  if AWorkflowStudio <> nil then
    FWorkflowStudio := AWorkflowStudio
  else
    raise Exception.CreateFmt
      ('WorkflowStudio parameter not specified in %s.Create.', [ClassName]);

  WorkflowDiagram1.WorkflowStudio := FWorkflowStudio;
  lvTasks.WorkflowStudio := FWorkflowStudio;
  FOldRunFinished := FWorkflowStudio.OnRunFinished;
  FWorkflowStudio.OnRunFinished := RunFinished;
end;

destructor TMainTaskListF.Destroy;
begin
  SaveColWidthLst(lvTasks, Self.Name);
  SaveColWidthLst(FLogView, Self.Name);
  FWorkflowStudio.OnRunFinished := FOldRunFinished;
  inherited;
end;

procedure TMainTaskListF.edtlvTasksKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  idx, i: longInt;
  searchFor, itemText: string;

begin
  inherited;
  if Key <> VK_RETURN then
    exit;
  searchFor := trim(TEdit(Sender).Text);

  if searchFor = '' then
    exit;

  lblsearch1.Caption := 'جستجو...';

  for i := 0 to lvTasks.Items.Count - 1 do
  begin
    for idx := 0 to lvTasks.Columns.Count - 2 do
    begin
      if idx = 0 then
        itemText := lvTasks.Items[i].Caption
      else
        itemText := itemText + ' ' + lvTasks.Items[i].SubItems[idx - 1];
    end;
    if pos(uppercase(searchFor), uppercase(itemText)) = 1 then
    begin
      lvTasks.Items.Item[i].MakeVisible(true);
      break;
    end;
  end;
  lblsearch1.Caption := 'جستجو';

end;

procedure TMainTaskListF.edtsearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  idx, i: longInt;
  searchFor, FindVariable: string;
  vars: TWorkflowVariables;
begin
  inherited;
  if Key <> VK_RETURN then
    exit;
  searchFor := trim(TEdit(Sender).Text);

  if searchFor = '' then
    exit;

  BigMessage('در حال جستجو ...', 0);

  for idx := 0 to lvTasks.Items.Count - 1 do
  begin
    lvTasks.ItemIndex := idx;
    vars := GetWorkIns.Diagram.Variables;
    for i := 0 to vars.Count - 1 do
    begin
      FindVariable := vars[i].Value;

      if SameText(FindVariable, searchFor) then
      begin
        lvTasks.ItemIndex := idx;
        lvTasks.Items.Item[idx].MakeVisible(true);
        BigMessage('یافت شد', 1);
        exit;
      end;
    end;
  end;
  CloseMessage;
  // FindVariableByName('CustId') + ' ' + FindVariableByName('CustName');
  // for idx := 0 to lvTasks.Columns.Count - 1 do
  // begin
  // if idx = 0 then
  // itemText := lvTasks.Items[i].Caption
  // else
  // // otherwise use the subitems
  // itemText := lvTasks.Items[i].SubItems[idx - 1];
  // if (pos(UpperCase(searchFor), UpperCase(itemText)) = 1) or
  // (pos(UpperCase(searchFor), UpperCase(FindVariable)) = 1) then
  // begin
  // lvTasks.Items[i].Selected := true;
  // lvTasks.Items.Item[i].MakeVisible(true);
  // break;
  // end;
end;

procedure TMainTaskListF.ShowUserTasksDlg(AUserKey: string;
  AFormMode: TWorkflowFormMode = wfmMDI;
  AttachmentMode: TAttachmentsViewMode = avmAllInTabs);
var
  TaskForm: TMainTaskListF;
begin
  Case AFormMode of
    wfmMDI:
      begin
        TaskForm := TMainTaskListF.Create(Application, theWorkflowStudio);
        TaskForm.FormStyle := fsMDIChild;
        TaskForm.WindowState := wsMaximized;
      end;
  else
    { wfmModal } TaskForm := TMainTaskListF.Create(nil, theWorkflowStudio);
  end;

  try
    TaskForm.AttachmentsViewMode := AttachmentMode;
    TaskForm.SetFilter(tfUser, AUserKey);
    TaskForm.LoadData;

    Case AFormMode of
      wfmModal:
        TaskForm.ShowModal;
      wfmMDI:
        TaskForm.Show;
    end;
  finally
    Case AFormMode of
      wfmModal:
        TaskForm.Free;
    else
      TaskForm.FreeOnClose := true;
    end;
  end;
end;

end.
