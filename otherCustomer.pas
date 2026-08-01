{ -----------------------------------------------------------------------------
  Unit Name: otherCustomer
  Author:    Mahmood
  Purpose:     2
  History:  84/02/27
  ----------------------------------------------------------------------------- }
unit otherCustomer;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms, template2MDI, ActnList,
  StdCtrls, ExtCtrls, Buttons, DBCtrls, zAPIBalloon, DB, ppCtrls, ppBands,
  ppVar, ppReport, ppDBPipe, ADODB, ppParameter, ppPrnabl, ppClass, ppCache,
  ppProd, ppComm, ppRelatv, ppDB, Mask, ImgList, DBActns, ComCtrls, CheckLst,
  Menus, ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TotherCustomerF = class(Ttemplate2MDIF)
    qryOther: TADOQuery;
    qryOtherCustID: TIntegerField;
    qryOtherCustomerGrpID: TIntegerField;
    qryOtherCustName: TStringField;
    qryOtheracc_DetailCode: TStringField;
    qryOther__DetailCode: TStringField;
    qryOtherModifyDate: TDateTimeField;
    qryOtherCustomerNote: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLine6: TppLine;
    srcOther: TDataSource;
    zbal: TzAPIBalloon;
    Panel1: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo2: TDBMemo;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    actSendExel: TAction;
    actSort: TAction;
    BitBtn9: TBitBtn;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBText2: TDBText;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBText3: TDBText;
    qryOtherProjectID: TIntegerField;
    qryOtherBudgetID: TIntegerField;
    qryOther_BudgetName: TStringField;
    qryOther_ProjectName: TStringField;
    qryOtheracc_CTopicCode: TStringField;
    qryOtheracc_CTopicCode2: TStringField;
    qryOther__CTopicCodeName: TStringField;
    qryOther__CTopicCodeName2: TStringField;
    qryOtheraccStateDefault: TWordField;
    edtInfoWeight: TDBEdit;
    lblInfoWeight: TLabel;
    qryOtherInfoWeight: TFloatField;
    qryOtheracc_CTopicCode3: TStringField;
    qryOther__CTopicCodeName3: TStringField;
    qryOther__TopicCodeName: TStringField;
    qryOtherCustAccountNumber: TStringField;
    edtCustAccountNumber: TDBEdit;
    Label4: TLabel;
    qryOtherAddress: TStringField;
    qryOtherTel: TStringField;
    qryOtherFax: TStringField;
    qryOtherTel2: TWideStringField;
    qryOtherTel3: TWideStringField;
    qryOtherMobile: TStringField;
    PageControl1: TPageControl;
    ts1: TTabSheet;
    TabSheet3: TTabSheet;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    Label22: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    Label24: TLabel;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    Label33: TLabel;
    DBText4: TDBText;
    SpeedButton10: TSpeedButton;
    Label48: TLabel;
    Label49: TLabel;
    SpeedButton11: TSpeedButton;
    DBText7: TDBText;
    DBEdit15: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    CmbaccStateDefault: TDBComboBox;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    dbedtTel3: TDBEdit;
    Label41: TLabel;
    dbedtTel2: TDBEdit;
    Label44: TLabel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    BitBtn15: TBitBtn;
    qryOtheracc_TopicCode: TLargeintField;
    tsOtherCustomers: TTabSheet;
    GroupBox3: TGroupBox;
    chklstOtherGroup: TCheckListBox;
    qryCustomersOtherGroups: TADOQuery;
    qryCustomersOtherGroupsCustID: TIntegerField;
    qryCustomersOtherGroupsCustomerGrpID: TIntegerField;
    GroupBox1: TGroupBox;
    chkAllCusts: TCheckBox;
    cmbGroups: TComboBox;
    SpeedButton1: TSpeedButton;
    sd: TPopupMenu;
    Mnu_AllClick: TMenuItem;
    MenuItem1: TMenuItem;
    N7: TMenuItem;
    actChangeCustID1: TMenuItem;
    N5: TMenuItem;
    edtAlternativeCustID: TDBEdit;
    Label54: TLabel;
    qryOtherAlternativeCustID: TLargeintField;
    edtDiscount: TDBEdit;
    Label29: TLabel;
    qryOtherDiscount: TFloatField;
    qryOtherAlternativeCustID2: TLargeintField;
    edtAlternativeCustID2: TDBEdit;
    Label1: TLabel;
    qryCustomersGroup: TADOQuery;
    qryOtherCustomerActive: TWordField;
    DBGrid1: TCedarDbgrid;
    qryOtherCustFirstName: TStringField;
    qryOtherTelegramChatID: TStringField;
    edtTelegramChatID: TDBEdit;
    Label12: TLabel;
    qryOtherLastUser: TWideStringField;
    qryOtherFirstUser: TWideStringField;
    edtDiscountOne: TDBEdit;
    Label13: TLabel;
    qryOtherDiscountOne: TFloatField;
    dbchkCustomerActive: TDBCheckBox;
    dbchkCustomerState: TDBCheckBox;
    qryOtherCustomerState: TWordField;
    qryOtherEditDateTime: TDateTimeField;
    actGetExel: TAction;
    BitBtn10: TBitBtn;
    qryOther_AccountKind: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    qryOtherAccountKind: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure srcOtherStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbGroupsChange(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryOtherBeforePost(DataSet: TDataSet);
    procedure qryOtherAfterDelete(DataSet: TDataSet);
    procedure qryOtherAfterInsert(DataSet: TDataSet);
    procedure qryOtherAfterPost(DataSet: TDataSet);
    procedure qryOtherBeforeDelete(DataSet: TDataSet);
    procedure chkAllCustsClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryOtherCustIDChange(Sender: TField);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure qryOtherAfterScroll(DataSet: TDataSet);
    procedure chklstOtherGroupDblClick(Sender: TObject);
    procedure actChangeCustID1Click(Sender: TObject);
    procedure Mnu_AllClickClick(Sender: TObject);
    procedure qryOtherAfterEdit(DataSet: TDataSet);
    procedure actGetExelExecute(Sender: TObject);
  private
    GroupType: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  otherCustomerF: TotherCustomerF;

implementation

uses DM, searchCode_ADO, GlobalPro, mmessage, FormFunctions,
  sort2, FaraConsts, mdiMain, GetExcel;

{$R *.dfm}

procedure TotherCustomerF.FormCreate(Sender: TObject);
var
  i: Integer;
  NewItem: TMenuItem;
begin
  inherited;
  qryCustomersGroup.Open;
  qryOther.FieldByName('CustName').ReadOnly := opt.EditCustNameLevelID;
  GroupType := var_glb_gParam;
  // if formType =7 then
  // Caption:='„⁄—›Ì  ”ÂÌ·«  œÂ‰œê«‰';
  Caption := '„⁄—›Ì ' + CustGroupsNames[GroupType];
  SetLookUpCash(qryOther);

  ts1.Visible := GroupType <> 7;
  PageControl1.Pages[0].TabVisible := GroupType <> 7;
  PageControl1.Pages[2].TabVisible :=  GroupType <> 7;
  tsOtherCustomers.Visible := ts1.Visible;
  edtInfoWeight.Visible := ts1.Visible;
  lblInfoWeight.Visible := ts1.Visible;


  // if opt.AccOldAvailable then
  // begin      // qryOther.FieldByName('__DetailCode').LookupResultField:='Desc';
  //
  // qryOther.FieldByName('__CTopicCodeName2').LookupResultField:='Desc';
  // qryOther.FieldByName('__CTopicCodeName').LookupResultField:='Desc';
  // qryOther.FieldByName('__CTopicCodeName2').LookupKeyFields:='CTopicCode';
  // end;//if

  initCombos(cmbGroups,
    'SELECT CustomerGrpID, CustomerGrpName + ''            «“ ﬂœ '' + ltrim(str(StartCode))'
    + '+ ''  « ﬂœ '' + ltrim(str(FinishCode)) AS  CustomerGrpName ' +
    ' FROM CustomersGroup WHERE (GroupType = ' + IntToStr(GroupType) +
    ') ORDER BY CustomerGrpID');
  if cmbGroups.Items.Count > 0 then
  begin
    cmbGroups.ItemIndex := 0;
    cmbGroupsChange(cmbGroups);
  end; // if
  // // Sheikh 2015/06/22
  InitChkList(chklstOtherGroup, cmbGroups, True);
  For i := 0 to cmbGroups.Items.Count - 1 do
  begin
    NewItem := TMenuItem.Create(self);
    NewItem.Caption := cmbGroups.Items.Strings[i];
    if cmbGroups.Items.Count > 0 then
      NewItem.Tag := Integer(cmbGroups.Items.Objects[i]);
    NewItem.OnClick := Mnu_AllClickClick;
    Mnu_AllClick.Add(NewItem);
  end;

end;

procedure TotherCustomerF.Mnu_AllClickClick(Sender: TObject);
begin
  inherited;
  ChangeCustomerGroup(Sender, qryOther, CustGroupsNames[GroupType])
end;

procedure TotherCustomerF.srcOtherStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryOther.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', self.Name);
end;

procedure TotherCustomerF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryOther, 'acc_DetailCode', '', False)
end;

procedure TotherCustomerF.actChangeCustID1Click(Sender: TObject);
begin
  inherited;
  ChangeCustID(qryOther, cmbGroups, CustGroupsNames[GroupType])
end;

procedure TotherCustomerF.actGetExelExecute(Sender: TObject);
begin
  inherited;
  With qryOther do
  begin
    try
      AfterPost := nil;
      GetExcelF.ShowImPortExcel(qryOther);
    finally
      AfterPost := qryOtherAfterPost;
    end;
  end;
end;

procedure TotherCustomerF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TotherCustomerF.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TotherCustomerF.cmbGroupsChange(Sender: TObject);
var
  i, CustomerGrpID: Integer;
begin
  inherited;
  CustomerGrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  qryCustomersGroup.Locate('CustomerGrpID', CustomerGrpID, []);

  if cmbGroups.ItemIndex = -1 then
    exit;

  For i := 0 to Mnu_AllClick.Count - 1 do
  begin
    Mnu_AllClick.Items[i].Checked :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex])
      = Mnu_AllClick.Items[i].Tag;
    Mnu_AllClick.Items[i].Default := Mnu_AllClick.Items[i].Checked;
  end;
  cmbGroups.Hint := cmbGroups.Text;

  with qryOther do
  begin
    Active := False;
    Parameters.ParamByName('GrpIDFrom').Value :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    Parameters.ParamByName('GrpIDTo').Value :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    Active := True;
    InitChkList(chklstOtherGroup, cmbGroups);
  end; // with
end;

procedure TotherCustomerF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TotherCustomerF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOther);
end;

procedure TotherCustomerF.qryOtherBeforePost(DataSet: TDataSet);
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'Select StartCode,FinishCode from CustomersGroup where CustomerGrpID=' +
      DataSet.FieldByName('CustomerGrpID').AsString;
    Active := True;
    if (qryOther.FieldByName('CustID').AsInteger < Fields[0].AsInteger) or
      (qryOther.FieldByName('CustID').AsInteger > Fields[1].AsInteger) then
    begin
      zbal.Title := 'ﬂœ ‰«„⁄ »—';
      zbal.Prompt.Text := 'ﬂœ ÃœÌœ  Œ’Ì’ Ì«› Â Œ«—Ã «“„ÕœÊœÂ  ⁄—Ì› ‘œÂ «” .';
      zbal.Show(DBEdit1);
      DBEdit1.SetFocus;
      Abort;
    end; // if
  end; // with
  // if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø') <> mrYes then    Abort;
  if not CheckRequiredFields(qryOther) then
    Abort;
  TrimStringFields(qryOther);
  if not UnicFieldName(DataSet.FieldByName('CustID'),
    DataSet.FieldByName('CustName'), 'Customers',
    qryOtherCustomerGrpID.AsInteger) then
    Abort;

  if not IsValidIBAN(qryOther.FieldByName('CustAccountNumber').AsString) then
  begin
    Warn('‘„«—Â ‘»« „⁄ »— ‰„Ì »«‘œ');
  end;

end;

procedure TotherCustomerF.qryOtherAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TotherCustomerF.qryOtherAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
  DataSet.FieldByName('EditDateTime').AsDateTime := Now;
end;

procedure TotherCustomerF.qryOtherAfterInsert(DataSet: TDataSet);
var
  GrpID: Integer;
  aRange: String;
  isValid: Boolean;
  rFrom, rTo: Integer;
begin
  inherited;
  isValid := False;
  if (cmbGroups.ItemIndex = -1) then
  begin
    zbal.Prompt.Text := '·ÿ›« ﬁ»· «“  ⁄—Ì› ”—›’· ÃœÌœ ê—ÊÂ ¬‰—« „‘Œ’ ﬂ‰Ìœ.';
    zbal.Title := '«Œÿ«—!';
    zbal.Show(cmbGroups);
    DataSet.Cancel;
    exit;
  end; // if
  GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  DataSet.FieldByName('CustomerGrpID').AsInteger := GrpID;
  DataSet.FieldByName('acc_CTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('FirstUser').AsString := User.Name;
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  DataSet.FieldByName('acc_DetailCode').AsInteger := 0;
  DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
  if opt.RecoverPittedCode in [0] then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2,acc_CTopicCode3 from CustomersGroup where CustomerGrpID='
        + IntToStr(GrpID);
      Active := True;
      rFrom := Fields[0].AsInteger;
      rTo := Fields[1].AsInteger;
      DataSet.FieldByName('acc_CTopicCode').AsInteger := Fields[2].AsInteger;
      DataSet.FieldByName('acc_CTopicCode2').AsInteger := Fields[3].AsInteger;
      DataSet.FieldByName('acc_CTopicCode3').AsInteger := Fields[4].AsInteger;
      aRange := format('%d and %d', [rFrom, rTo]);
      Active := False;
      if aRange = ' and ' then
        aRange := '0 and 999999999';
      DataSet.FieldByName('CustID').AsInteger :=
        GetANewCode(self.Name,
        'Select max(CustID) from Customers where CustID between ' + aRange +
        'and CustomerGrpID=' + IntToStr(GrpID), 'CustID');
      if not((DataSet.FieldByName('CustID').AsInteger >= rFrom) and
        (DataSet.FieldByName('CustID').AsInteger <= rTo)) then
        DataSet.FieldByName('CustID').AsInteger := rFrom;
      Active := False;
      SQL.Text := 'Select count(CustID) from Customers where CustID = ' +
        DataSet.FieldByName('CustID').AsString + 'and CustomerGrpID=' +
        IntToStr(GrpID);
      Active := True;
      isValid := Fields[0].AsInteger = 0;
      Active := False;
    end // with
  else
    DataSet.FieldByName('CustID').AsInteger :=
      New_RecoverPittedCode(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]
      ), 'CustID', self.Name);
  if not isValid then
  begin
    zbal.Title := 'ﬂœ ‰«„⁄ »—';
    zbal.Prompt.Text :=
      'ﬂœ ÃœÌœ  Œ’Ì’ Ì«› Â ‰«„⁄ »— «” . ·ÿ›« ﬂœ —« »’Ê—  œ” Ì Ê«—œ ﬂ‰Ìœ.';
    zbal.Show(DBEdit1);
  end; // if
  if opt.AccDetailCodeEqualCustID > 0 then
    qryOther.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      DataSet.FieldByName('CustID').AsInteger;
  DBEdit1.SetFocus;
end;

procedure TotherCustomerF.qryOtherAfterPost(DataSet: TDataSet);
begin
  inherited;
  CustIDToDetailCode(qryOther, GroupType);
  // sheikh 2015/06/22
  SaveOtherCustomers(qryCustomersOtherGroups, qryOther, chklstOtherGroup);
  BigMessage('À»  ‘œ.', 1);
end;

procedure TotherCustomerF.qryOtherAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // Sheikh 2015/06/22
  with qryCustomersOtherGroups, Parameters do
  begin
    Active := False;
    ParamByName('CustId').Value := qryOtherCustID.AsInteger;
    Active := True;
  end;
  LoadOtherCustomers(qryCustomersOtherGroups, chklstOtherGroup);
end;

procedure TotherCustomerF.qryOtherBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ”—›’· „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TotherCustomerF.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    cmbGroups.ItemIndex := 0;
  if chkAllCusts.Checked then
  begin
    with qryOther do
    begin
      Active := False;
      Parameters.ParamByName('GrpIDFrom').Value := 0;
      Parameters.ParamByName('GrpIDTo').Value := 2147483647;
      Active := True;
    end; // with
    cmbGroups.Enabled := False;
    chkAllCusts.Checked;
  end // if
  else
  begin
    with qryOther do
    begin
      Active := False;
      Parameters.ParamByName('GrpIDFrom').Value :=
        Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
      Parameters.ParamByName('GrpIDTo').Value :=
        Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
      Active := True;
    end; // with
    cmbGroups.Enabled := True;
    chkAllCusts.Checked := False;
  end; // if
end;

procedure TotherCustomerF.chklstOtherGroupDblClick(Sender: TObject);
begin
  inherited;
  if not(qryOther.State in dsEditModes) then
    qryOther.Edit;
end;

procedure TotherCustomerF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryOther, 'acc_CTopicCode3', '', False)
end;

procedure TotherCustomerF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryOther)
end;

procedure TotherCustomerF.SpeedButton1Click(Sender: TObject);
var
  i: Integer;
  c: String;
  txt: String;
  s: String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ' +
    'WHERE GroupType=3 ';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'ê—ÊÂÂ«Ì ”—›’·Â«  ', txt,
    ['òœ', '‰«„ ê—ÊÂ'], alLeft);
  if s <> '' then
  begin
    for i := 1 to cmbGroups.Items.Count do
      if cmbGroups.Items.Strings[i] = s then
        Break;
    cmbGroups.ItemIndex := i;
    cmbGroupsChange(cmbGroups);
    cmbGroups.Hint := s;
    zbal.Title := s;
    zbal.Prompt.Text := c;
    zbal.Show(cmbGroups);
  end; // if
end;

procedure TotherCustomerF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TotherCustomerF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TotherCustomerF.ppLabel19GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if chkAllCusts.Checked then
    Text := 'ê—ÊÂ : Â„Â ê—ÊÂÂ«  '
  else
    Text := 'ê—ÊÂ : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

procedure TotherCustomerF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TotherCustomerF.actSearch_Execute(Sender: TObject);
var
  c: string;
begin
  inherited;
  if (chkAllCusts.Checked) then
  begin
    if searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'Ã” ÃÊÌ ”—›’·',
      'SELECT Customers.CustID,Customers.CustName FROM Customers INNER JOIN' +
      ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID'
      + ' WHERE  CustomersGroup.GroupType = 3 ', ['ﬂœ ”—›’·', '‰«„ ”—›’·'],
      alLeft) <> '' then
      qryOther.Locate('CustID', c, []);
  end
  else If (cmbGroups.ItemIndex = -1) or (chkAllCusts.Checked) Then
    exit
  else if searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'Ã” ÃÊÌ ”—›’·',
    'SELECT CustID,CustName FROM Customers where CustomerGrpID=' +
    IntToStr(qryOther.Parameters.ParamByName('GrpIDFrom').Value),
    ['ﬂœ ”—›’·', '‰«„ ”—›’·'], alLeft) <> '' then
    qryOther.Locate('CustID', c, []);

end;

procedure TotherCustomerF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TotherCustomerF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonBudgetCode(qryOther, 'BudgetID')
end;

procedure TotherCustomerF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonProjectsCode(qryOther, 'ProjectID', 'BudgetID')
end;

procedure TotherCustomerF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryOther, 'acc_CTopicCode', '', False)
end;

procedure TotherCustomerF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryOther)
end;

procedure TotherCustomerF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger]
end;

procedure TotherCustomerF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex
end;

procedure TotherCustomerF.BitBtn15Click(Sender: TObject);
var
  CustID: Integer;
begin
  inherited;
  try
    mdiMainF.actCustomersTaxF.Execute
  finally
    CustID := qryOtherCustID.AsInteger;
    qryOther.Requery();
    qryOther.Locate('CustID', CustID, []);
  end;
end;

procedure TotherCustomerF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryOtherCustID)
end;

procedure TotherCustomerF.qryOtherCustIDChange(Sender: TField);
begin
  inherited;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryOther.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      Sender.AsInteger;

end;

end.
