// mahmood 1384/02/24
unit StuffGroupsAccessory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ADODB, DBCtrls, Mask, Grids,
  Vcl.DBGrids, Menus, zAPIBalloon, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TStuffGroupsAccessoryF = class(Ttemplate2MDIF)
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
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtGroupID1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdtStartCode: TDBEdit;
    EdtFinishCode: TDBEdit;
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
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    qryStuffGroupsGroupName: TStringField;
    qryStuffGroupsacc_CTopicCode: TStringField;
    qryStuffGroupsacc_DetailCode: TStringField;
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
    DBText4: TDBText;
    SpeedButton4: TSpeedButton;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    Panel1: TPanel;
    lbl2: TLabel;
    lbl1: TLabel;
    qryStuffGroups_Detail: TADOQuery;
    srcStuffGroups_Detail: TDataSource;
    DBEdit8: TDBEdit;
    edtGroupID: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Bevel1: TBevel;
    qryStuffGroupsLevelID: TWordField;
    qryStuffGroupsUperGroupId: TIntegerField;
    zbal: TzAPIBalloon;
    qryStuffGroupsStartCode: TLargeintField;
    qryStuffGroupsFinishCode: TLargeintField;
    qryStuffGroupsGroupID: TIntegerField;
    qryStuffGroupsacc_IncomeTopicCode: TLargeintField;
    qryStuffGroupsacc_BidTopicCode: TLargeintField;
    qryStuffGroupsacc_AFootInComingTopicCode: TLargeintField;
    edtOrderPoint: TDBEdit;
    Label15: TLabel;
    actGetExcel: TAction;
    BitBtn6: TBitBtn;
    qryStuffGroupsGroupType: TWordField;
    qryStuffGroups_DetailGroupID: TIntegerField;
    qryStuffGroups_DetailGroupName: TStringField;
    qryStuffGroups_DetailStartCode: TLargeintField;
    qryStuffGroups_DetailFinishCode: TLargeintField;
    qryStuffGroups_Detail__IncomeTopicCode: TStringField;
    qryStuffGroups_Detail__BidTopicCode: TStringField;
    qryStuffGroups_Detailacc_CTopicCode: TStringField;
    qryStuffGroups_Detail__CTopicCode: TStringField;
    qryStuffGroups_Detailacc_CTopicCode2: TStringField;
    qryStuffGroups_Detail__CTopicCode2: TStringField;
    qryStuffGroups_Detailacc_DetailCode: TStringField;
    qryStuffGroups_Detail__AFootInComingTopicCode: TStringField;
    qryStuffGroups_Detail__DetailCode: TStringField;
    qryStuffGroups_Detailacc_IncomeTopicCode: TLargeintField;
    qryStuffGroups_Detailacc_BidTopicCode: TLargeintField;
    qryStuffGroups_Detailacc_AFootInComingTopicCode: TLargeintField;
    qryStuffGroups_DetailLevelID: TWordField;
    qryStuffGroups_DetailUperGroupId: TIntegerField;
    qryStuffGroups_Detailacc_CTopicCode3: TStringField;
    qryStuffGroups_DetailOrderPoint: TFMTBCDField;
    qryStuffGroups_DetailGroupType: TWordField;
    Panel6: TPanel;
    chkAllGroup: TCheckBox;
    qryStuffGroupsVatExemptOn: TWordField;
    qryStuffGroups_DetailVatExemptOn: TWordField;
    DBCheckBox1: TDBCheckBox;
    edtGroupName_L2: TDBEdit;
    Label11: TLabel;
    qryStuffGroups_DetailGroupName_L2: TStringField;
    grdStuffGroups: TCedarDbgrid;
    CedarDbgrid1: TCedarDbgrid;
    procedure qryStuffGroupsAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
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
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryStuffGroupsAfterScroll(DataSet: TDataSet);
    procedure qryStuffGroups_DetailAfterPost(DataSet: TDataSet);
    procedure qryStuffGroups_DetailBeforePost(DataSet: TDataSet);
    procedure qryStuffGroups_DetailAfterInsert(DataSet: TDataSet);
    procedure srcStuffGroups_DetailStateChange(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure chkAllGroupClick(Sender: TObject);
  private
    { Private declarations }
    FormType: Integer;
    Get_Excel: Boolean;
    procedure valid;
  public
    { Public declarations }
  end;

var
  StuffGroupsAccessoryF: TStuffGroupsAccessoryF;

implementation

uses DM, mmessage, GlobalPro, searchCode_ADO, search2, StuffGroups,
  FormFunctions, GetExcel;

{$R *.dfm}

procedure TStuffGroupsAccessoryF.qryStuffGroupsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TStuffGroupsAccessoryF.valid;
var
  canInsert: Boolean;
  FinishCode, StartCode, GroupName: String;
begin
  StartCode := qryStuffGroups_DetailStartCode.AsString;
  FinishCode := qryStuffGroups_DetailFinishCode.AsString;
  inherited;
  if (FinishCode = StartCode) then
  begin
    Warn('لطفا محدوده كدينگ را وارد كنيد');
    EdtStartCode.SetFocus;
    Abort;
  end // if
  else if StrToInt64(FinishCode) <= StrToInt64(StartCode) then
  begin
    Warn('در محدوده كدينگ (از كد) بايد كوچكتر از (تا كد) باشد.');
    EdtFinishCode.SetFocus;
    Abort;
  end; // if

  if not((qryStuffGroups_DetailStartCode.AsInteger >=
    qryStuffGroupsStartCode.AsInteger) and
    (qryStuffGroups_DetailStartCode.AsInteger <=
    qryStuffGroupsFinishCode.AsInteger) and
    (qryStuffGroups_DetailFinishCode.AsInteger >=
    qryStuffGroupsStartCode.AsInteger) and
    (qryStuffGroups_DetailFinishCode.AsInteger <=
    qryStuffGroupsFinishCode.AsInteger))

  then
  begin
    Warn('محدوده كدينگ وارد شده با محدوده گروه اصلی هماهنگ نیست');
    EdtFinishCode.SetFocus;
//    Abort;
  end; // if

  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT LTRIM(STR(GroupID)) + GroupName AS Name FROM StuffGroups ';
    SQL.Add('WHERE ((' + StartCode +
      ' BETWEEN StartCode AND FinishCode) AND (GroupID <> ' +
      qryStuffGroups_DetailGroupID.AsString + ') OR');
    SQL.Add('(GroupID <> ' + qryStuffGroups_DetailGroupID.AsString + ') AND (' +
      FinishCode + ' BETWEEN StartCode AND FinishCode))');
    SQL.Add(' AND (UperGroupId =' + qryStuffGroups.fieldbyname('GroupID')
      .AsString + ')');

    Active := True;
    GroupName := Trim(Fields[0].AsString);
    canInsert := GroupName <> EmptyStr;
    Active := False;
  end; // with
  if canInsert then
  begin
    Warn('محدوده تعريف شده با محدوده ذيل تداخل دارد.' + #13#10 + GroupName);
    EdtStartCode.SetFocus;
    Abort;
  end; // if
  if (qryStuffGroups_DetailGroupID.AsLargeInt <
    qryStuffGroupsStartCode.AsLargeInt) or
    (qryStuffGroups_DetailGroupID.AsLargeInt >
    qryStuffGroupsFinishCode.AsLargeInt) then
  begin
    zbal.Title := 'كد نامعتبر';
    zbal.Prompt.Text := 'كد جديد تخصيص يافته خارج ازمحدوده تعريف شده است.';
    zbal.Show(edtGroupID);
    edtGroupID.SetFocus;
    Abort;
  end; // if
end;

procedure TStuffGroupsAccessoryF.FormCreate(Sender: TObject);
begin
  inherited;
  CreateTRIGGER4LinkServer('StuffGroups');
  FormType := var_glb_gParam;
  Caption := Caption + IntToStr((FormType + 1));

  if FormType = 1 then
    lbl1.Caption := lbl2.Caption + IntToStr((FormType));

  lbl2.Caption := lbl2.Caption + IntToStr((FormType + 1));

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
  SetLookUpCash(qryStuffGroups_Detail);
  with qryStuffGroups do
  begin
    close;
    SQL.Add('AND StuffGroups_1.GroupType in (' + GetStuffGroupsNames(nil,
      False) + ')');
    SQL.Add('ORDER BY StuffGroups_1.GroupID');
    Parameters.ParamByName('FormType').Value := FormType;
    Parameters.ParamByName('FormType1').Value := FormType;
    Open;
  end;
end;

procedure TStuffGroupsAccessoryF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryStuffGroups_Detail, 'acc_CTopicCode',
    'acc_IncomeTopicCode')
end;

procedure TStuffGroupsAccessoryF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryStuffGroups_Detail, 'acc_IncomeTopicCode')
end;

procedure TStuffGroupsAccessoryF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryStuffGroups_Detail, 'acc_BidTopicCode')
end;

procedure TStuffGroupsAccessoryF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryStuffGroups_Detail, 'acc_DetailCode',
    'acc_IncomeTopicCode')
end;

procedure TStuffGroupsAccessoryF.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click;
end;

procedure TStuffGroupsAccessoryF.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TStuffGroupsAccessoryF.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click;
end;

procedure TStuffGroupsAccessoryF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

procedure TStuffGroupsAccessoryF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffGroupsAccessoryF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStuffGroupsAccessoryF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TStuffGroupsAccessoryF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    Get_Excel := True;
    GetExcelF.ShowImPortExcel(qryStuffGroups_Detail);
  finally
    Get_Excel := False;
  end;
end;

procedure TStuffGroupsAccessoryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffGroups.DisableControls;
    ppReport1.Print;
  finally
    qryStuffGroups.EnableControls;
  end; // try
end;

procedure TStuffGroupsAccessoryF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryStuffGroups_Detail);
end;

procedure TStuffGroupsAccessoryF.N1Click(Sender: TObject);
begin
  inherited;
  qryStuffGroups_Detail.Sort := 'GroupID';
end;

procedure TStuffGroupsAccessoryF.N2Click(Sender: TObject);
begin
  inherited;
  qryStuffGroups_Detail.Sort := 'GroupName';
end;

procedure TStuffGroupsAccessoryF.actSortExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffGroupsAccessoryF.chkAllGroupClick(Sender: TObject);
var
  UperGroupId, GroupId: Integer;
begin
  inherited;
  UperGroupId := qryStuffGroups_DetailUperGroupId.AsInteger;
  GroupId := qryStuffGroups_DetailGroupID.AsInteger;
  qryStuffGroupsAfterScroll(qryStuffGroups);
  if not chkAllGroup.Checked then
  begin
    qryStuffGroups.Locate('GroupId', UperGroupId, []);
    qryStuffGroups_Detail.Locate('GroupId', GroupId, []);
  end;

end;

procedure TStuffGroupsAccessoryF.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1, IntToStr(FormType));
  // SaveColWidth(dbgrdhStuffGroups, IntToStr(FormType));
end;

procedure TStuffGroupsAccessoryF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 1, True, IntToStr(FormType));
  // SetColSize(dbgrdhStuffGroups, 1, True, IntToStr(FormType));
end;

procedure TStuffGroupsAccessoryF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffGroups_Detail);
end;

procedure TStuffGroupsAccessoryF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryStuffGroups_Detail)
end;

procedure TStuffGroupsAccessoryF.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton4.Click;

end;

procedure TStuffGroupsAccessoryF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryStuffGroups_Detail)
end;

procedure TStuffGroupsAccessoryF.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click;
end;

procedure TStuffGroupsAccessoryF.qryStuffGroupsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryStuffGroups_Detail do
  begin
    Active := False;
    grdStuffGroups.Visible := not chkAllGroup.Checked;
    if chkAllGroup.Checked then
    begin
      Parameters.ParamByName('UperGroupIdFrom').Value := MaxInt * -1;
      Parameters.ParamByName('UperGroupIdTo').Value := MaxInt;
      Parameters.ParamByName('FormType').Value :=
        qryStuffGroupsLevelID.AsInteger + 1;
    end
    else
    begin
      Parameters.ParamByName('FormType').Value :=
        qryStuffGroupsLevelID.AsInteger + 1;
      Parameters.ParamByName('UperGroupIdFrom').Value :=
        DataSet.fieldbyname('GroupID').AsInteger;
      Parameters.ParamByName('UperGroupIdTo').Value :=
        DataSet.fieldbyname('GroupID').AsInteger;
    end;
    Active := True;
  end;
end;

procedure TStuffGroupsAccessoryF.qryStuffGroups_DetailAfterPost
  (DataSet: TDataSet);
begin
  inherited;
  if not Get_Excel then
    BigMessage('ثبت شد.', 1);
end;

procedure TStuffGroupsAccessoryF.qryStuffGroups_DetailBeforePost
  (DataSet: TDataSet);
begin
  inherited;
  if not Get_Excel then
    if get_response('تغييرات ذخيره شوند؟') <> mrYes then
      Abort;
  valid();
  TrimStringFields(qryStuffGroups_Detail);

  if not UnicFieldName(qryStuffGroups_DetailGroupID,
    qryStuffGroups_DetailGroupName, 'StuffGroups', 0) then
    Abort;

end;

procedure TStuffGroupsAccessoryF.qryStuffGroups_DetailAfterInsert
  (DataSet: TDataSet);
var
  GroupId: Integer;
  rFrom, rTo: Largeint;
  aRange: String;
begin
  inherited;
  edtGroupID.SetFocus;
  GroupId := qryStuffGroups.fieldbyname('GroupID').AsInteger;
  rFrom := qryStuffGroups.fieldbyname('StartCode').AsInteger;
  rTo := qryStuffGroups.fieldbyname('FinishCode').AsInteger;
  aRange := format('%d and %d', [rFrom, rTo]);
  if aRange = ' and ' then
    aRange := '0 and 999999999';
  DataSet.fieldbyname('GroupID').AsInteger :=
    GetANewCode(Self.Name,
    'Select max(GroupID) from StuffGroups where GroupID between ' + aRange +
    ' and UperGroupId =' + IntToStr(GroupId), 'GroupID');
  if not((DataSet.fieldbyname('GroupID').AsInteger >= rFrom) and
    (DataSet.fieldbyname('GroupID').AsInteger <= rTo)) then
    DataSet.fieldbyname('GroupID').AsInteger := rFrom;
  DataSet.fieldbyname('UperGroupId').AsInteger := GroupId;
  DataSet.fieldbyname('LevelId').AsInteger := qryStuffGroups.fieldbyname
    ('LevelID').AsInteger + 1;
  DataSet.fieldbyname('acc_IncomeTopicCode').AsInteger := 0;
  DataSet.fieldbyname('acc_BidTopicCode').AsInteger := 0;
  DataSet.fieldbyname('acc_DetailCode').AsInteger := 0;
  DataSet.fieldbyname('acc_CTopicCode').AsInteger := 0;
  DataSet.fieldbyname('acc_CTopicCode2').AsInteger := 0;
  DataSet.fieldbyname('acc_CTopicCode3').AsInteger := 0;
  DataSet.fieldbyname('acc_AFootInComingTopicCode').AsInteger := 0;
  DataSet.fieldbyname('GroupType').AsInteger :=
    qryStuffGroups.fieldbyname('GroupType').AsInteger;

  DataSet.fieldbyname('VatExemptOn').AsInteger :=
    qryStuffGroupsVatExemptOn.AsInteger;

end;

procedure TStuffGroupsAccessoryF.srcStuffGroups_DetailStateChange
  (Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryStuffGroups_Detail.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

end.
