// mahmood 1384/02/24
unit StuffGroups2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ADODB, DBCtrls, Mask,
  Menus, ppParameter, ComCtrls, sndkey32, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TStuffGroups2F = class(Ttemplate2MDIF)
    qryStuffGroups: TADOQuery;
    srcStuffGroups: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel5: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLine6: TppLine;
    qryStuffGroupsGroupName: TStringField;
    qryStuffGroupsacc_CTopicCode: TStringField;
    qryStuffGroupsacc_DetailCode: TStringField;
    qryStuffGroups__IncomeTopicCode: TStringField;
    qryStuffGroups__BidTopicCode: TStringField;
    qryStuffGroups__CTopicCode2: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    actPrint: TAction;
    actSendExel: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actSort: TAction;
    BitBtn2: TBitBtn;
    qryStuffGroupsacc_CTopicCode2: TStringField;
    qryStuffGroups__CTopicCode: TStringField;
    qryStuffGroups__AFootInComingTopicCode: TStringField;
    qryStuffGroups__DetailCode: TStringField;
    qryStuffGroupsStartCode: TLargeintField;
    qryStuffGroupsFinishCode: TLargeintField;
    qryStuffGroupsGroupID: TIntegerField;
    TabControl1: TTabControl;
    qryStuffGroupsGroupType: TWordField;
    Panel4: TPanel;
    qryStuffGroupsacc_CTopicCode3: TStringField;
    qryStuffGroups__CTopicCodeName3: TStringField;
    qryStuffGroupsacc_IncomeTopicCode: TLargeintField;
    qryStuffGroupsacc_BidTopicCode: TLargeintField;
    qryStuffGroupsacc_AFootInComingTopicCode: TLargeintField;
    qryStuffGroupsOrderPoint: TFMTBCDField;
    actGetExcel: TAction;
    BitBtn6: TBitBtn;
    srcUp: TDataSource;
    qryUP: TADOQuery;
    qryUPGroupID: TIntegerField;
    qryUPGroupName: TStringField;
    qryUPUperGroupId: TIntegerField;
    pnl1: TPanel;
    lbl1: TLabel;
    lblGroupName: TLabel;
    edtGroupID: TDBEdit;
    edtGroupName: TDBEdit;
    qryStuffGroupsLevelID: TWordField;
    qryStuffGroupsUperGroupId: TIntegerField;
    qryUPStartCode: TLargeintField;
    qryUPFinishCode: TLargeintField;
    qryUPacc_IncomeTopicCode: TLargeintField;
    qryUPacc_BidTopicCode: TLargeintField;
    qryUPacc_CTopicCode: TStringField;
    qryUPacc_DetailCode: TStringField;
    qryUPacc_CTopicCode2: TStringField;
    qryUPacc_AFootInComingTopicCode: TLargeintField;
    qryUPLevelID: TWordField;
    qryUPGroupType: TWordField;
    qryUPacc_CTopicCode3: TStringField;
    qryUPOrderPoint: TFMTBCDField;
    edtStartCode: TDBEdit;
    edtFinishCode: TDBEdit;
    qryUPVatExemptOn: TWordField;
    qryStuffGroupsVatExemptOn: TWordField;
    DBGrid1: TCedarDbgrid;
    procedure qryStuffGroupsAfterDelete(DataSet: TDataSet);
    procedure qryStuffGroupsAfterInsert(DataSet: TDataSet);
    procedure qryStuffGroupsAfterPost(DataSet: TDataSet);
    procedure qryStuffGroupsBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcStuffGroupsStateChange(Sender: TObject);
    procedure qryStuffGroupsBeforePost(DataSet: TDataSet);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure lblGroupNameDblClick(Sender: TObject);
  private
    GroupType: Integer;
    Get_Excel: Boolean;
    { Private declarations }
    procedure valid;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  StuffGroups2F: TStuffGroups2F;

implementation

uses DM, mmessage, GlobalPro, search2, FormFunctions, mdiMain, FaraConsts,
  GetExcel;

{$R *.dfm}

procedure TStuffGroups2F.qryStuffGroupsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TStuffGroups2F.qryStuffGroupsAfterInsert(DataSet: TDataSet);
var
  GroupID: Integer;
  rFrom, rTo: Largeint;
  aRange: String;
begin
  inherited;
  if qryUP.Active then
  begin
    GroupID := qryUP.fieldbyname('GroupID').AsInteger;
    rFrom := qryUP.fieldbyname('StartCode').AsInteger;
    rTo := qryUP.fieldbyname('FinishCode').AsInteger;
    aRange := format('%d and %d', [rFrom, rTo]);
    if aRange = ' and ' then
      aRange := '0 and 999999999';
    DataSet.fieldbyname('GroupID').AsInteger :=
      GetANewCode(Self.Name,
      'Select max(GroupID) from StuffGroups where GroupID between ' + aRange +
      ' and UperGroupId =' + IntToStr(GroupID), 'GroupID');
    if not((DataSet.fieldbyname('GroupID').AsInteger >= rFrom) and
      (DataSet.fieldbyname('GroupID').AsInteger <= rTo)) then
      DataSet.fieldbyname('GroupID').AsInteger := rFrom;
    DataSet.fieldbyname('UperGroupId').AsInteger := GroupID;
    DataSet.fieldbyname('LevelId').AsInteger := qryUPLevelID.AsInteger + 1;
    DataSet.fieldbyname('VatExemptOn').AsInteger := qryUPVatExemptOn.AsInteger;
  end
  else
  begin
    DataSet.fieldbyname('GroupID').AsInteger :=
      GetANewCode(Self.Name,
      'Select max(GroupID) from StuffGroups where LevelId = 0', 'GroupID');
    DataSet.fieldbyname('LevelId').AsInteger := 0;
  end;

  DataSet.fieldbyname('GroupType').AsInteger := GroupType;

  DataSet.fieldbyname('acc_IncomeTopicCode').AsInteger := 0;
  DataSet.fieldbyname('acc_BidTopicCode').AsInteger := 0;
  DataSet.fieldbyname('acc_DetailCode').AsInteger := 0;
  DataSet.fieldbyname('acc_CTopicCode').AsInteger := 0;
  DataSet.fieldbyname('acc_CTopicCode2').AsInteger := 0;
  DataSet.fieldbyname('acc_CTopicCode3').AsInteger := 0;
  DataSet.fieldbyname('acc_AFootInComingTopicCode').AsInteger := 0;
end;

procedure TStuffGroups2F.qryStuffGroupsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not Get_Excel then
    BigMessage('ثبت شد.', 1);
end;

procedure TStuffGroups2F.qryStuffGroupsBeforeDelete(DataSet: TDataSet);
var
  canDel: Boolean;
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(GroupID)FROM StuffCoding WHERE GroupID =' +
      qryStuffGroupsGroupID.AsString;
    Active := True;
    canDel := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
  if canDel then
  begin
    if get_response('آيا براي حذف اين كالا مطمئن هستيد؟') <> mrYes then
      Abort;
  end
  else
  begin
    Warn('حذف اين كالا مجاز نيست.');
    Abort;
  end; // else
end;

procedure TStuffGroups2F.valid;
var
  canInsert: Boolean;
  FinishCode, StartCode: String;
begin
  StartCode := qryStuffGroupsStartCode.AsString;
  FinishCode := qryStuffGroupsFinishCode.AsString;
  inherited;
  if (FinishCode = StartCode) then
  begin
    Warn('لطفا محدوده كدينگ را وارد كنيد');
    DBGrid1.SetFocus;
    Abort;
  end // if
  else if StrToInt64(FinishCode) <= StrToInt64(StartCode) then
  begin
    Warn('در محدوده كدينگ (از كد) بايد كوچكتر از (تا كد) باشد.');
    DBGrid1.SetFocus;
    Abort;
  end; // if
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(GroupID) ';
    SQL.Add('FROM StuffGroups');
    SQL.Add('WHERE (' + StartCode +
      ' BETWEEN StartCode AND FinishCode) AND (GroupID <> ' +
      qryStuffGroupsGroupID.AsString + ') OR');
    SQL.Add('(GroupID <> ' + qryStuffGroupsGroupID.AsString + ') AND (' +
      FinishCode + ' BETWEEN StartCode AND FinishCode)');
    Active := True;
    canInsert := Fields[0].AsInteger <> 0;
    Active := False;
  end; // with
  if canInsert then
  begin
    Warn('محدوده تعريف شده با محدوده هاي قبلي  تداخل دارد.');
    DBGrid1.SetFocus;
    Abort;
  end; // if
end;

procedure TStuffGroups2F.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  CreateTRIGGER4LinkServer('StuffGroups');
  DMf.adcAccounting.Connected := True;
  if mdiMainF.actStuffGroupsAccessory1.Visible then
    GetStuffGroupsNames(TabControl1.Tabs, False);

  b := DMf.ReadBankConfig('UsageDetailCode', '0') = '1';
  setColumns2(DBGrid1, not b, 'acc_CTopicCode3', aReadOnly);

  b := DMf.ReadBankConfig('UsageCTopicCode', '0') = '1';
  setColumns2(DBGrid1, not b, 'acc_CTopicCode', aReadOnly);

  SetLookUpCash(qryStuffGroups);
  TabControl1Change(TabControl1);
end;

procedure TStuffGroups2F.srcStuffGroupsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStuffGroups.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TStuffGroups2F.TabControl1Change(Sender: TObject);
begin
  inherited;
  GroupType := Integer(TabControl1.Tabs.Objects[TabControl1.TabIndex]);
  qryStuffGroupsGroupName.DisplayLabel := 'عنوان گروه ' + StuffGroupsNames
    [GroupType];
  lblCaption.Caption := Caption + '->' + StuffGroupsNames[GroupType];
  With qryStuffGroups do
  begin
    Active := False;
    Parameters.ParamByName('GroupType').Value := GroupType;
    Active := True;
  end;

end;

procedure TStuffGroups2F.qryStuffGroupsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not Get_Excel then
    if get_response('تغييرات ذخيره شوند؟') <> mrYes then
      Abort;
  valid();
  TrimStringFields(qryStuffGroups);

  if not UnicFieldName(qryStuffGroupsGroupID, qryStuffGroupsGroupName,
    'StuffGroups', 0) then
    Abort;

end;

procedure TStuffGroups2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if Sender <> nil then
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT COUNT(*) AS Expr1';
      SQL.Add('FROM StuffCoding');
      SQL.Add('WHERE (GroupID = :GroupID)');
      Parameters.ParamByName('GroupID').Value :=
        qryStuffGroupsGroupID.AsInteger;
      Active := True;
      if Fields[0].AsInteger > 0 then
      begin
        Warn('برای این گروه کالا تعریف شده است و دیگر نمی تواند زیر گروه داشته باشد.');
        Exit;
      end;
      Active := False;
    end;

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
    Active := Length(lblGroupName.Caption) > 2;
  end;
  with qryStuffGroups do
  begin
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM StuffGroups');
    SQL.Add('WHERE (UperGroupId = :GroupID)');
    SQL.Add('and GroupType = :GroupType');
    if qryUPGroupID.AsInteger = 0 then
      SQL.Add('and  (LevelID = 0)');
    Parameters.ParamByName('GroupID').Value := qryUPGroupID.AsInteger;
    Parameters.ParamByName('GroupType').Value :=
      Integer(TabControl1.Tabs.Objects[TabControl1.TabIndex]);
    Active := True;
  end;

end;

procedure TStuffGroups2F.DBGrid1EditButtonClick(Sender: TObject);
var
  id: Integer;
begin
  inherited;
  id := (Sender as TCedarDbgrid).SelectedIndex;
  if DBGrid1.Columns[id].FieldName = 'acc_IncomeTopicCode' then
  begin
    AccSpeedButtonTopicCode(qryStuffGroups, 'acc_IncomeTopicCode');
    Exit;
  end;

  if DBGrid1.Columns[id].FieldName = 'acc_BidTopicCode' then
  begin
    AccSpeedButtonTopicCode(qryStuffGroups, 'acc_BidTopicCode');
    Exit;
  end;
  if DBGrid1.Columns[id].FieldName = 'acc_DetailCode' then
  begin
    AccSpeedButtonDetailCode(qryStuffGroups, 'acc_DetailCode',
      'acc_IncomeTopicCode');
    Exit;
  end;
  if DBGrid1.Columns[id].FieldName = 'acc_CTopicCode' then
  begin
    AccSpeedButtonCTopicCode(qryStuffGroups, 'acc_CTopicCode',
      'acc_IncomeTopicCode');
    Exit;
  end;
  if DBGrid1.Columns[id].FieldName = 'acc_CTopicCode2' then
  begin
    AccSpeedButtonCTopicCode2(qryStuffGroups);
    Exit;
  end;
  if DBGrid1.Columns[id].FieldName = 'acc_CTopicCode3' then
  begin
    AccSpeedButtonCTopicCode3(qryStuffGroups, 'acc_CTopicCode3', '', False);
    Exit;
  end;
  if DBGrid1.Columns[id].FieldName = 'acc_AFootInComingTopicCode' then
  begin
    AccSpeedButtonTopicCode(qryStuffGroups, 'acc_AFootInComingTopicCode');
    Exit;
  end;

end;

procedure TStuffGroups2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key)
end;

procedure TStuffGroups2F.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // i: Integer;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if ShiftDown then
          Exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        nextIndex := curIndex + 1;
        if (curIndex > 0) and (aDataSet.fieldbyname('GroupName').IsNull) then
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
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then

    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      inc(nextIndex);

  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -2;
  // else
  // nextIndex := -1;
  if (curIndex <> nextIndex) then
  begin

    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          DBGrid1.SelectedIndex := 1
        end;
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end;
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end;
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
  end; // case
end;

end;

procedure TStuffGroups2F.lblGroupNameDblClick(Sender: TObject);
begin
  inherited;
  lblGroupName.Tag := qryUPUperGroupId.AsInteger;
  DBGrid1DblClick(nil);
  lblGroupName.Tag := -1;
end;

procedure TStuffGroups2F.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffGroups2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStuffGroups2F.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TStuffGroups2F.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    Get_Excel := True;
    GetExcelF.ShowImPortExcel(qryStuffGroups);
  finally
    Get_Excel := False;
  end;
end;

procedure TStuffGroups2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffGroups.DisableControls;
    ppReport1.Print;
  finally
    qryStuffGroups.EnableControls;
  end; // try

end;

procedure TStuffGroups2F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffGroups2F.N1Click(Sender: TObject);
begin
  inherited;
  qryStuffGroups.Sort := 'GroupID';
end;

procedure TStuffGroups2F.N2Click(Sender: TObject);
begin
  inherited;
  qryStuffGroups.Sort := 'GroupName';
end;

procedure TStuffGroups2F.actSortExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffGroups2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffGroups);
end;

end.
