unit ActionPlans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, DB,
  Grids, Vcl.DBGrids, Mask, DBCtrls, Buttons, ADODB, DM, GlobalPro, main,
  FormFunctions, ReciptsFunctions, FaraConsts, StrUtils, Math, MMESSAGE,
  ppBands, ppCache, ppClass, ppDB, ppDBPipe, ppParameter, ppComm, ppRelatv,
  ppProd, ppReport, sndkey32, shamsiDate, DateUtils, Menus, ppTypes,
  ppDesignLayer, System.ImageList, System.Actions, Vcl.ComCtrls;

type
  TActionPlansF = class(Ttemplate2MDIF)
    qryinit: TADOQuery;
    qryLookup: TADOQuery;
    qryCustomers1: TADOQuery;
    qryCustomers2: TADOQuery;
    qryActionPlans: TADOQuery;
    qryActionPlansPersonID1: TIntegerField;
    qryActionPlans_PersonName1: TStringField;
    qryActionPlansPersonID2: TIntegerField;
    qryActionPlans_PersonName2: TStringField;
    PnlPerson1: TPanel;
    LblPerson1: TLabel;
    btnPersonID1: TSpeedButton;
    edtCustID: TDBEdit;
    srcActionPlans: TDataSource;
    DBGrid1: TDBGrid;
    qryActionPlansReciptType: TWordField;
    qryActionPlansActionPlanDate: TDateTimeField;
    qryActionPlansActionPlanType: TIntegerField;
    qryActionPlansActionPlanNote: TStringField;
    qryActionPlansActionPlanState: TWordField;
    qryActionPlansSendDate: TDateTimeField;
    qryActionPlansUserName: TStringField;
    qryActionPlansModifyDate: TDateTimeField;
    qryActionPlansUserID: TIntegerField;
    qryActionPlans_ActionPlanType: TStringField;
    newPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnDataSetDelete1_: TBitBtn;
    okPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    plnActionPlans: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actSort: TAction;
    rgActionPlanState: TRadioGroup;
    actActionPlanState1: TAction;
    qryActionPlansID: TAutoIncField;
    actDBGridSelectAll: TAction;
    actDeleteAll: TAction;
    actExcel: TAction;
    PopMuPrint: TPopupMenu;
    N10: TMenuItem;
    NAllRecords: TMenuItem;
    actPrint: TAction;
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    edtCustName: TDBEdit;
    Panel1: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    qryActionPlans_Mobile: TStringField;
    qryActionPlans_GrpID: TIntegerField;
    qryActionPlans_GrpName: TStringField;
    qryActionPlans_State: TStringField;
    qryActionPlans_City: TStringField;
    qryActionPlans_Address: TStringField;
    qryActionPlans_Tel: TStringField;
    qryActionPlans_EMail: TStringField;
    qryActionPlansPurposeOfVisit: TStringField;
    qryActionPlansActionPlanID: TAutoIncField;
    qryActionPlans_ActionPlanDate: TStringField;
    StatusBar1: TStatusBar;
    procedure srcActionPlansStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryActionPlansAfterScroll(DataSet: TDataSet);
    procedure qryActionPlansAfterInsert(DataSet: TDataSet);
    procedure qryActionPlansAfterPost(DataSet: TDataSet);
    procedure qryActionPlansBeforeDelete(DataSet: TDataSet);
    procedure qryActionPlansBeforeEdit(DataSet: TDataSet);
    procedure qryActionPlansBeforeInsert(DataSet: TDataSet);
    procedure qryActionPlansBeforePost(DataSet: TDataSet);
    procedure qryActionPlansAfterDelete(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure btnPersonID1Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure qryActionPlansPersonID1Change(Sender: TField);
    procedure qryActionPlansPersonID2Change(Sender: TField);
    procedure qryActionPlansActionPlanDateGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryActionPlansActionPlanDateSetText(Sender: TField;
      const Text: string);
    procedure rgActionPlanStateClick(Sender: TObject);
    procedure qryActionPlansActionPlanStateGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actActionPlanState1Execute(Sender: TObject);
    procedure actDBGridSelectAllExecute(Sender: TObject);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure mnu4allClick(Sender: TObject);
    procedure NAllRecordsClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qryActionPlansSendDateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
  private
    formType, PersonID1: Integer;
    getresponseShow: Boolean;
    qryCust1, qryCust2, qryCustManag1, qryCustManag2: TADOQuery;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure UpdateList;
    procedure PlanStateUPDATE(var sIDs: string; var c: Integer);
    procedure finallyqryActionPlans;
    { Private declarations }
  public
    procedure Enter(Form_Type: Integer; Restart_PersonID1: Boolean;
      PersonID1ID: Integer = 0);
    { Public declarations }
  end;

var
  ActionPlansF: TActionPlansF;

const
  PartSise = 100;

implementation

uses WorkflowDm, searchCode_ADO, search2, sort2;

{$R *.dfm}

procedure TActionPlansF.PlanStateUPDATE(var sIDs: string; var c: Integer);
begin
  If sIDs <> EmptyStr then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'UPDATE ActionPlanS SET ActionPlanState = 1 ';
      SQL.Add(', SendDate = GETDATE() ');
      SQL.Add(' WHERE (ActionPlanState  = 0) AND (ID IN (' + sIDs + ')) ');
      SQL.Add(' AND  ActionPlanState <> 5 ');
      c := c + ExecSQL;
      BigMessage(IntToStr(c) + ' ردیف از ' +
        IntToStr(DBGrid1.SelectedRows.Count) + ' ‌ ارسال شد.', 1);
      Active := False;
      sIDs := EmptyStr;
    end;
end;

procedure TActionPlansF.actActionPlanState1Execute(Sender: TObject);
var
  i, c: Integer;
  s: string;
begin
  inherited;
  c := 0;
  if not CheckUserlevel(qryinit.FieldByName('ChangeStateLevelID'),
    qryActionPlans) then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي به ارسال کردن ردیف‌هاي انتخاب شده مطمئن هستيد؟' +
      #13#10 + 'ردیف هايي كه پیش نویس باشند ارسال ميشوند.') <> mrYes then
      Exit;

  try
    qryActionPlans.AfterScroll := nil;
    qryActionPlans.DisableControls;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));

        if qryinit.FieldByName('WorkflowID').AsInteger > 0 then
          WorkflowDmF.RunSomeWorkflow(qryinit.FieldByName('WorkflowID')
            .AsInteger, qryActionPlans, ppReport1,
            qryinit.FieldByName('PerformFileName').AsString,
            qryActionPlans.FieldByName('_PersonName2').AsString);

        if s <> '' then
          s := s + ',';
        s := s + FieldByName('ID').AsString;

        if (i + 1) mod PartSise = 0 then
          PlanStateUPDATE(s, c);
      end;
    PlanStateUPDATE(s, c);
  finally
    finallyqryActionPlans
  end;

end;

procedure TActionPlansF.finallyqryActionPlans;
var
  i: Integer;
begin
  With qryActionPlans do
  begin
    EnableControls;
    i := FieldByName('ID').AsInteger;
    Active := False;
    Open;
    Locate('ID', i, [])
  end;
end;

procedure TActionPlansF.actDBGridSelectAllExecute(Sender: TObject);
begin
  inherited;
  try
    qryActionPlans.AfterScroll := nil;
    DBGridSelectAll(DBGrid1);
  finally
    qryActionPlans.EnableControls;
  end;
end;

procedure TActionPlansF.actDeleteAllExecute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryActionPlans)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي به حذف كردن ردیف‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  try
    qryActionPlans.AfterScroll := nil;
    s := GetSelectedRowsDBGrid(DBGrid1, 'ID');
  finally
    qryActionPlans.EnableControls;
  end;
  If s = '' then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Delete ActionPlans WHERE (ActionPlanState=0) AND (ID IN (' +
      s + ')) ';
    try
      BigMessage(IntToStr(ExecSQL) + ' ردیف‌ حذف شد.', 2);
      Active := False;
      i := qryActionPlans.FieldByName('ID').AsInteger;
      qryActionPlans.Active := False;
      qryActionPlans.Open;
      qryActionPlans.Locate('ID', i, [])
    except
      Warn('اشكال در  حذف كردن  ردیف‌');
    end;
  end;
end;

procedure TActionPlansF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TActionPlansF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TActionPlansF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2f.ShowSearch(qryActionPlans);
end;

procedure TActionPlansF.actSortExecute(Sender: TObject);
begin
  inherited;
  Sort2f.ShowSort(qryActionPlans);
end;

procedure TActionPlansF.btnPersonID1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,Address,Tel,PersonID3,' +
    'UseUnitID,Mobile,Fax,CustomerNote,' +
    ' CASE WHEN CustName LIKE N''%''+ ISNULL(CustFirstName, '''') +''%'' THEN CustName'
    + ' ELSE CustName + '' '' + ISNULL(CustFirstName, '''') END AS FullCustName '
    + 'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind1', qryinit);
  Add2Filter(txt, 'CustomerActive = 0');
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + ' ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString, 'آدرس', 'تلفن',
    'مشتري3', 'محل مصرف', 'همراه', 'دورنما', 'توضيحات', 'مشخصات كامل'], Results,
    [50, 120, 100, 50, 50, 50, 50, 50, 100, 100], alLeft);
  if b then
    With qryCustomers do
    begin
      Active := False;
      // RestartPersonID1 := True;
      PersonID1 := StrToInt(Results[0]);
      Parameters.ParamByName('CustID').Value := PersonID1;
      Active := True;
    end;
end;

procedure TActionPlansF.DBGrid1EditButtonClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 8] of String;
  id: Integer;
  aDataSet: TDataSet;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    Exit;
  id := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := id;

  if not(aDataSet.state in dsEditModes) then
    aDataSet.edit;

  if DBGrid1.Columns[id].FieldName = 'PersonID2' then
  begin
    txt := 'SELECT DISTINCT CustID,CustName,Address,Tel,PersonID3,' +
      'UseUnitID,Mobile,Fax,CustomerNote,' +
      ' CASE WHEN CustName LIKE N''%''+ ISNULL(CustFirstName, '''') +''%'' THEN CustName'
      + ' ELSE CustName + '' '' + ISNULL(CustFirstName, '''') END AS FullCustName '
      + 'FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
      ('CustomerKind2', qryinit);
    Add2Filter(txt, 'CustomerActive = 0');
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
      qryinit.FieldByName('Person2Caption').AsString + ' ها ', txt,
      ['کد', qryinit.FieldByName('Person2Caption').AsString, 'آدرس', 'تلفن',
      'مشتري3', 'محل مصرف', 'همراه', 'دورنما', 'توضيحات', 'مشخصات كامل'],
      Results, [50, 120, 100, 50, 50, 50, 50, 50, 100, 100], alLeft);
    if b then
    begin
      qryActionPlans['PersonID2'] := Results[0];
    end;
  end;
end;

procedure TActionPlansF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0
end;

procedure TActionPlansF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TActionPlansF.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  SortTitle(Column);
end;

procedure TActionPlansF.rgActionPlanStateClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TActionPlansF.UpdateList;
begin
  With qryActionPlans do
  begin
    Active := False;
    SQL.Text := EmptyStr;
    SQL.Text := 'SELECT *,ID AS ActionPlanID';
    SQL.Add(',dbo.MiladiToShamsi(ActionPlanDate) + '' - '' + CONVERT(char(5), ActionPlanDate, 108) AS _ActionPlanDate');
    SQL.Add('FROM ActionPlans');
    SQL.Add('WHERE (ReciptType = :ReciptType) ');
    SQL.Add('And  ( PersonID1  BetWeen :PersonID1From and :PersonID1To )');
    if opt.ChkUsersCustomersGroupsActive then
      SQL.Add('AND (dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , ActionPlans.PersonID1) = 1)');
    SQL.Add('And ( ActionPlanState  = :ActionPlanState )');

    if UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive')
      .AsInteger, UserRegistrarShowForm) and (not User.PowerUser) then
      SQL.Add(Format('AND (UserID = %d)', [User.id]));

    Parameters.ParamByName('PersonID1From').Value := PersonID1;
    Parameters.ParamByName('PersonID1To').Value := PersonID1;
    // end
    // else
    // begin
    // Parameters.ParamByName('PersonID1From').Value := -2147483646;
    // Parameters.ParamByName('PersonID1To').Value := 2147483647;
    // end;

    Parameters.ParamByName('ReciptType').Value := formType;
    Parameters.ParamByName('UserAdmin').Value := ifthen(User.PowerUser, 1, 0);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('ActionPlanState').Value :=
      rgActionPlanState.ItemIndex;

    Active := True;
  end;
  SetColSize(DBGrid1, 2, True, IntToStr(formType))

end;

procedure TActionPlansF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if ShiftDown then
          Exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;

        Key := #0;

        nextIndex := curIndex + 1;

        if (curIndex > 0) and (aDataSet.FieldByName('_PersonName2').IsNull) then
        begin
          aDataSet.Cancel;
          okPanel.SetFocus;
          Exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      if LowerCase(DBGrid1.Columns[curIndex].FieldName) <> 'stuffsize' then
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.state in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then

    begin
      // in [1,17,19,23,24,25,26] then begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  else
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      inc(nextIndex);

  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    if (qryinit.FieldByName('RecallType').AsInteger > 0) and
      (qryinit.FieldByName('RecallEditKind').AsInteger <> 4) then
      nextIndex := -2
    else
      nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          DBGrid1.SelectedIndex := 0;
        end;
      // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.state in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      begin
        (Sender as TDBGrid).SelectedIndex := nextIndex;
      end;
    end;
  // case

end;

procedure TActionPlansF.Enter(Form_Type: Integer; Restart_PersonID1: Boolean;
  PersonID1ID: Integer = 0);
begin
  mainF.AddListRecipts('ActionPlansF' + IntToStr(Form_Type));
  CreateMDIForm3(Restart_PersonID1, TActionPlansF, ActionPlansF, mainF,
    Form_Type);
  ActionPlansF.PersonID1 := PersonID1ID;
  With ActionPlansF.qryCustomers do
  begin
    Active := False;
    Parameters.ParamByName('CustID').Value := PersonID1ID;
    Active := True;
  end;

  // ActionPlansF.RestartPersonID1 := Restart_PersonID1;
end;

procedure TActionPlansF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TActionPlansF.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeMyComponent(Self, ['qryCust1', 'qryCust2', 'srcCustomers1',
    'srcCustomers2', 'ppDBPipelineCustomers1', 'ppDBPipelineCustomers2',
    'qryCustManag1', 'qryCustManag2', 'srcCustomersManag1',
    'srcCustomersManag2', 'PipCustomersManag1', 'PipCustomersManag2',
    'qryProductCode']);
  SaveColWidth(DBGrid1, IntToStr(formType));
  mainF.DelListRecipts('ActionPlansF' + IntToStr(formType));
end;

procedure TActionPlansF.InitForm;
begin
  With ActionPlansF do
  begin
    getresponseShow := True;
    formType := var_glb_gParam;
    with qryinit do
    begin
      Active := False;
      Parameters.ParamByName('ReciptType').Value := formType;
      Active := True;
      if FieldByName('OrderByFields').AsString <> EmptyStr then
        qryActionPlans.SQL.Add('ORDER BY ' + FieldByName('OrderByFields')
          .AsString);

    end;
    IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
    begin
      NotNull(qryinit.FieldByName('CustomerKind1').AsString,
        'هيچ گروهي براي گروه مشتري 1 مشخص نشده است');
      with qryCustomers1 do
      begin
        Active := False;
        SQL.Add(GetCustomersGroupTypeSQL('CustomerKind1', qryinit, False));
      end;
      qryCustCreate(qryCust1, '1', ActionPlansF);
      qryCustManagCreate(qryCustManag1, '1', ActionPlansF);
    end;
    IF qryinit.FieldByName('Person2Active').AsInteger = 1 THEN
    begin
      NotNull(qryinit.FieldByName('CustomerKind2').AsString,
        'هيچ گروهي براي گروه مشتري 2  مشخص نشده است');
      with qryCustomers2 do
      begin
        Active := False;
        SQL.Add(GetCustomersGroupTypeSQL('CustomerKind2', qryinit, False));
      end;
      qryCustCreate(qryCust2, '2', ActionPlansF);
      qryCustManagCreate(qryCustManag2, '2', ActionPlansF);
    end;
    With qryinit do
    begin
      Caption := FieldByName('ReciptCaption').AsString;
      lblCaption.Caption := Caption;
      lblCaption.Hint := FieldByName('ReciptType').AsString;

      PnlPerson1.Visible := FieldByName('Person1Active').AsInteger = 1;
      LblPerson1.Caption := LblPerson1.Caption +
        FieldByName('Person1Caption').AsString;
      qryActionPlans.FieldByName('PersonID1').Required := PnlPerson1.Visible;
      qryActionPlans.FieldByName('PersonID1').DisplayLabel :=
        LblPerson1.Caption;
      qryActionPlans.FieldByName('_PersonName1').Required := PnlPerson1.Visible;
      qryActionPlans.FieldByName('_PersonName1').DisplayLabel :=
        'نام ' + LblPerson1.Caption;


      // < 7  مشتري 2 فعال >

      qryActionPlans.FieldByName('PersonID2').DisplayLabel :=
        'كد ' + FieldByName('Person2Caption').AsString;
      qryActionPlans.FieldByName('_PersonName2').DisplayLabel :=
        'نام ' + FieldByName('Person2Caption').AsString;

      qryLookup.Parameters.ParamByName('FormKindSerial').Value :=
        qryinit.FieldByName('FormKindSerial').AsInteger;

    end;
    UpdateList;
    initReportName(qryinit, PopMuPrint, mnu4allClick);
  end;

end;

procedure TActionPlansF.qryActionPlansActionPlanDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  // Text := miladi2Shamsi(Sender.AsDateTime) + TimeToStr(Sender.AsDateTime)
  Text := miladi2Shamsi(Sender.AsDateTime) + ' ' + FormatDateTime('tt',
    Sender.AsDateTime) + FormatDateTime('dddd', Sender.AsDateTime)

end;

procedure TActionPlansF.qryActionPlansActionPlanDateSetText(Sender: TField;
  const Text: string);
var
  p: Integer;
begin
  inherited;
  /// Sender.AsString := DateTimeToStr(shamsi2miladi(Text)) +
  // TimeToStr(StrToDateTime(Text))
  p := Pos(' ', Text);
  Sender.AsString := DateTimetostr(Shamsi2Miladi(LeftStr(Text, 8))) +
    MidStr(Text, p, Length(Text) - p + 1);

end;

procedure TActionPlansF.qryActionPlansActionPlanStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := rgActionPlanState.Items[Sender.AsInteger]
end;

procedure TActionPlansF.qryActionPlansAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('سطر حذف شد.', 1);
end;

procedure TActionPlansF.qryActionPlansAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ActionPlanDate').AsDateTime := Now;
  DataSet.FieldByName('UserID').AsInteger := User.id;
  DataSet.FieldByName('ReciptType').AsInteger := formType;
  qryActionPlansPersonID1.AsInteger := qryCustomersCustID.AsInteger;
  DataSet.FieldByName('UserName').AsString := User.Name;
  try
    DBGrid1.SetFocus;
    DBGrid1.SelectedIndex := 0;
  except
  end;
end;

procedure TActionPlansF.qryActionPlansAfterPost(DataSet: TDataSet);
begin
  inherited;
  if getresponseShow then
  begin
    BigMessage('ثبت شد.', 1);
  end;
end;

procedure TActionPlansF.qryActionPlansAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
  // qryCustActive(qryCustomers1, DataSet.FieldByName('PersonID1').AsInteger);
  // IF qryinit.FieldByName('Person2Active').AsInteger = 1 THEN
  // qryCustActive(qryCustomers2, DataSet.FieldByName('PersonID2').AsInteger);

  qryCustActive(qryCust1, qryActionPlans.FieldByName('PersonID1').AsInteger);

  qryCustActive(qryCust2, qryActionPlans.FieldByName('PersonID2').AsInteger);

  qryCustActive(qryCustManag1, qryActionPlans.FieldByName('PersonID1')
    .AsInteger);
  qryCustActive(qryCustManag2, qryActionPlans.FieldByName('PersonID2')
    .AsInteger);
end;

procedure TActionPlansF.qryActionPlansBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('DeleteLevelID'), qryActionPlans)
  then
    Abort;
  if get_response('آيا براي حذف اين سطر مطمئن هستيد؟') <> mrYes then
    Abort;

end;

procedure TActionPlansF.qryActionPlansBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('EditLevelID'), qryActionPlans) then
    Abort;
  // if not AllStateControls(qryActionPlans, qryActionPlans, qryinit,
  // 'Recipt') then
  // Abort;

  // if qryinit.FieldByName('UserSecurityCheckActive').Value = 1 then
  if UserSecurityCheck(qryinit.FieldByName('UserSecurityCheckActive').AsInteger,
    UserRegistrar) then
    if ((qryActionPlansUserID.AsInteger = User.id) or (User.PowerUser)) then
    begin
    end // if
    else
    begin
      Warn('ويرايش اين فرم در سطح دسترسي کاربر ثبت کننده آن مي‌باشد.');
      Abort;
    end;
  // else

end;

procedure TActionPlansF.qryActionPlansBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryinit.FieldByName('ADDLevelID'), qryActionPlans) then
    Abort;
  if not qryCustomers.Active then
    Abort;
end;

procedure TActionPlansF.qryActionPlansBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  TrimStringFields(qryActionPlans);
  if not CheckRequiredFields(qryActionPlans) then
    Abort;
end;

procedure TActionPlansF.qryActionPlansPersonID1Change(Sender: TField);
begin
  inherited;
  // IF qryinit.FieldByName('Person1Active').AsInteger = 1 THEN
  // qryCustActive(qryCustomers1, Sender.AsInteger);
  //
  // // for  Change   PersonID
  // qryActionPlans.FieldByName('ReciptType').AsInteger :=
  // qryActionPlans.FieldByName('ReciptType').AsInteger;
  // // for  Change   PersonID
end;

procedure TActionPlansF.qryActionPlansPersonID2Change(Sender: TField);
begin
  inherited;
  // IF qryinit.FieldByName('Person2Active').AsInteger = 1 THEN
  // qryCustActive(qryCustomers2, Sender.AsInteger);
  // // for  Change   PersonID
  // qryActionPlans.FieldByName('ReciptType').AsInteger :=
  // qryActionPlans.FieldByName('ReciptType').AsInteger;
  // // for  Change   PersonID
end;

procedure TActionPlansF.qryActionPlansSendDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> EmptyStr then
    Text := miladi2Shamsi(Sender.AsDateTime) + ' ' + FormatDateTime('tt',
      Sender.AsDateTime);
end;

procedure TActionPlansF.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateList
end;

procedure TActionPlansF.srcActionPlansStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryActionPlans.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  if qryActionPlans.Active then
    StatusBar1.Panels[0].Text := 'تعداد=' + qryActionPlans.RecordCount.ToString
end;

procedure TActionPlansF.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
  begin
    if NAllRecords.Checked then
    begin
      plnActionPlans.RangeBegin := rbFirstRecord;
      plnActionPlans.RangeEnd := reLastRecord;
    end
    else
    begin
      plnActionPlans.RangeBegin := rbCurrentRecord;
      plnActionPlans.RangeEnd := reCurrentRecord;
    end;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  end;
end;

procedure TActionPlansF.NAllRecordsClick(Sender: TObject);
begin
  inherited;
  NAllRecords.Checked := not NAllRecords.Checked
end;

procedure TActionPlansF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TActionPlansF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TActionPlansF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TActionPlansF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
