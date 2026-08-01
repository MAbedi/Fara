// mahmood 1384/02/24
unit StuffGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ADODB, DBCtrls, Mask, Menus,
  ppParameter, ComCtrls, ppDesignLayer, System.ImageList,
  FarsiReportBuilde, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TStuffGroupsF = class(Ttemplate2MDIF)
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
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label9: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    DBText4: TDBText;
    SpeedButton4: TSpeedButton;
    Label8: TLabel;
    Label10: TLabel;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    edtacc_IncomeTopicCode: TDBEdit;
    edtacc_BidTopicCode: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit3: TDBEdit;
    edtacc_AFootInComingTopicCode: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdtStartCode: TDBEdit;
    EdtFinishCode: TDBEdit;
    qryStuffGroupsacc_CTopicCode3: TStringField;
    qryStuffGroups__CTopicCodeName3: TStringField;
    Label48: TLabel;
    DBEdit10: TDBEdit;
    SpeedButton10: TSpeedButton;
    DBText7: TDBText;
    qryStuffGroupsacc_IncomeTopicCode: TLargeintField;
    qryStuffGroupsacc_BidTopicCode: TLargeintField;
    qryStuffGroupsacc_AFootInComingTopicCode: TLargeintField;
    edtOrderPoint: TDBEdit;
    Label11: TLabel;
    qryStuffGroupsOrderPoint: TFMTBCDField;
    actGetExcel: TAction;
    BitBtn6: TBitBtn;
    qryStuffGroupsStuffCodingKind: TWordField;
    grpStuffCodingKind: TGroupBox;
    cmbStuffCodingKind: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    qryStuffGroupsVatExemptOn: TWordField;
    qryStuffGroupsSarFaslType: TWordField;
    GroupBox3: TGroupBox;
    cmbSarFaslType: TDBComboBox;
    DBGrid1: TCedarDbgrid;
    qryStuffGroupsGroupName_L2: TStringField;
    edtGroupName_L2: TDBEdit;
    Label12: TLabel;
    qryKalaTypes: TADOQuery;
    qryStuffGroupsKalaType: TIntegerField;
    qryStuffGroups_KalaTypeTitle: TStringField;
    GroupBox4: TGroupBox;
    dblkcbb_KalaTypeTitle: TDBLookupComboBox;
    popGroupType: TPopupMenu;
    MnuAll: TMenuItem;
    N3: TMenuItem;
    procedure qryStuffGroupsAfterDelete(DataSet: TDataSet);
    procedure qryStuffGroupsAfterInsert(DataSet: TDataSet);
    procedure qryStuffGroupsAfterPost(DataSet: TDataSet);
    procedure qryStuffGroupsBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcStuffGroupsStateChange(Sender: TObject);
    procedure qryStuffGroupsBeforePost(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtacc_IncomeTopicCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtacc_BidTopicCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure edtacc_AFootInComingTopicCodeKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TabControl1Change(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure MnuAllClick(Sender: TObject);
  private
    GroupType: Integer;
    Get_Excel: Boolean;
    { Private declarations }
    procedure valid;
  public
    { Public declarations }
  end;

var
  StuffGroupsF: TStuffGroupsF;

implementation

uses DM, mmessage, GlobalPro, search2, FormFunctions, mdiMain, FaraConsts,
  GetExcel;

{$R *.dfm}

procedure TStuffGroupsF.qryStuffGroupsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TStuffGroupsF.qryStuffGroupsAfterInsert(DataSet: TDataSet);
var
  txt: string;
begin
  inherited;
  DataSet.FieldByName('GroupType').AsInteger := GroupType;
  // DataSet.FieldByName('GroupID').AsInteger :=
  // GetANewCode(Self.Name, 'StuffGroups', 'GroupID', nil);
  txt := 'SELECT MAX(GroupID)FROM StuffGroups WHERE(LevelID = 0)';
  DataSet.FieldByName('GroupID').AsInteger := GetANewCode(Self.Name, txt,
    'GroupID');

  DataSet.FieldByName('acc_IncomeTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_BidTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_DetailCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('acc_AFootInComingTopicCode').AsInteger := 0;
  DBEdit2.SetFocus;
end;

procedure TStuffGroupsF.qryStuffGroupsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not Get_Excel then
    BigMessage('À»  ‘œ.', 1);
end;

procedure TStuffGroupsF.qryStuffGroupsBeforeDelete(DataSet: TDataSet);
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
    if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂ«·« „ÿ„∆‰ Â” Ìœø') <> mrYes then
      Abort;
  end
  else
  begin
    Warn('Õ–› «Ì‰ ﬂ«·« „Ã«“ ‰Ì” .');
    Abort;
  end; // else
end;

procedure TStuffGroupsF.valid;
var
  canInsert: Boolean;
  FinishCode, StartCode: String;
begin
  StartCode := qryStuffGroupsStartCode.AsString;
  FinishCode := qryStuffGroupsFinishCode.AsString;
  inherited;
  if (FinishCode = StartCode) then
  begin
    Warn('·ÿ›« „ÕœÊœÂ ﬂœÌ‰ê —« Ê«—œ ﬂ‰Ìœ');
    EdtStartCode.SetFocus;
    Abort;
  end // if
  else if StrToInt64(FinishCode) <= StrToInt64(StartCode) then
  begin
    Warn('œ— „ÕœÊœÂ ﬂœÌ‰ê («“ ﬂœ) »«Ìœ ﬂÊçﬂ — «“ ( « ﬂœ) »«‘œ.');
    EdtFinishCode.SetFocus;
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
    Warn('„ÕœÊœÂ  ⁄—Ì› ‘œÂ »« „ÕœÊœÂ Â«Ì ﬁ»·Ì   œ«Œ· œ«—œ.');
    EdtStartCode.SetFocus;
    Abort;
  end; // if
end;

procedure TStuffGroupsF.FormCreate(Sender: TObject);
begin
  inherited;
   CreateTRIGGER4LinkServer('StuffGroups');
  grpStuffCodingKind.Visible := opt.StuffCodingKind = 2;
  DMf.adcAccounting.Connected := True;
  if mdiMainF.actStuffGroupsAccessory1.Visible then
    GetStuffGroupsNames(TabControl1.Tabs, False);
  if DMf.ReadBankConfig('UsageDetailCode', '0') = '1' then
  begin
    DBEdit7.Enabled := False;
    Label7.Enabled := False;
    SpeedButton3.Enabled := False;
    DBText3.Enabled := False;
  end; // if
  if DMf.ReadBankConfig('UsageCTopicCode', '0') = '1' then
  begin
    DBEdit9.Enabled := False;
    Label9.Enabled := False;
    SpeedButton5.Enabled := False;
    DBText5.Enabled := False;
  end; // if
  SetLookUpCash(qryStuffGroups);
  TabControl1Change(TabControl1);
end;

procedure TStuffGroupsF.MnuAllClick(Sender: TObject);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    SQL.Text := 'UPDATE CustomersGroup';
    SQL.Add('SET GroupType = :GroupType');
    SQL.Add('WHERE (CustomerGrpID = :CustomerGrpID )');
    Parameters.ParamByName('GroupType').Value := (Sender as TMenuItem).Tag;
    Parameters.ParamByName('CustomerGrpID').Value :=
      qryStuffGroupsGroupID.AsInteger;
    ExecSQL;
    qryStuffGroups.Requery;
  end;
end;

procedure TStuffGroupsF.srcStuffGroupsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStuffGroups.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TStuffGroupsF.TabControl1Change(Sender: TObject);
begin
  inherited;
  GroupType := Integer(TabControl1.Tabs.Objects[TabControl1.TabIndex]);
  Label2.Caption := '⁄‰Ê«‰ ê—ÊÂ ' + StuffGroupsNames[GroupType];
  qryStuffGroupsGroupName.DisplayLabel := Label2.Caption;
  lblCaption.Caption := Caption + '->' + StuffGroupsNames[GroupType];
  With qryStuffGroups do
  begin
    Active := False;
    Parameters.ParamByName('GroupType').Value := GroupType;
    Active := True;
  end; // with

end;

procedure TStuffGroupsF.qryStuffGroupsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not Get_Excel then
    if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø') <> mrYes then
      Abort;
  valid();
  TrimStringFields(qryStuffGroups);

  if not UnicFieldName(qryStuffGroupsGroupID, qryStuffGroupsGroupName,
    'StuffGroups', 0) then
    Abort;
end;

procedure TStuffGroupsF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryStuffGroups, 'acc_CTopicCode',
    'acc_IncomeTopicCode')
end;

procedure TStuffGroupsF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryStuffGroups, 'acc_CTopicCode3', '', False)
end;

procedure TStuffGroupsF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryStuffGroups, 'acc_IncomeTopicCode')
end;

procedure TStuffGroupsF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryStuffGroups, 'acc_BidTopicCode')
end;

procedure TStuffGroupsF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryStuffGroups, 'acc_DetailCode',
    'acc_IncomeTopicCode')
end;

procedure TStuffGroupsF.edtacc_IncomeTopicCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click;
end;

procedure TStuffGroupsF.edtacc_BidTopicCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TStuffGroupsF.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click;
end;

procedure TStuffGroupsF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

procedure TStuffGroupsF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffGroupsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStuffGroupsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TStuffGroupsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    Get_Excel := True;
    GetExcelF.ShowImPortExcel(qryStuffGroups);
  finally
    Get_Excel := False;
  end;
end;

procedure TStuffGroupsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffGroups.DisableControls;
    ppReport1.Print;
  finally
    qryStuffGroups.EnableControls;
  end; // try

end;

procedure TStuffGroupsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffGroupsF.N1Click(Sender: TObject);
begin
  inherited;
  qryStuffGroups.Sort := 'GroupID';
end;

procedure TStuffGroupsF.N2Click(Sender: TObject);
begin
  inherited;
  qryStuffGroups.Sort := 'GroupName';
end;

procedure TStuffGroupsF.actSortExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffGroupsF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger]
end;

procedure TStuffGroupsF.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex
end;

procedure TStuffGroupsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffGroups);
end;

procedure TStuffGroupsF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryStuffGroups)
end;

procedure TStuffGroupsF.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton4.Click;

end;

procedure TStuffGroupsF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryStuffGroups, 'acc_AFootInComingTopicCode')
end;

procedure TStuffGroupsF.edtacc_AFootInComingTopicCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

end.
