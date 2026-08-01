{ -----------------------------------------------------------------------------
  Unit Name: OfficeCustomer
  Author:    Mahmood
  Purpose:
  History:  86/05/23
  ----------------------------------------------------------------------------- }
unit OfficeCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, zAPIBalloon, DB, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ADODB, ppParameter, CheckLst, ComCtrls, Menus,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TOfficeCustomerF = class(Ttemplate2MDIF)
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
    lblCustID: TLabel;
    lblCustName: TLabel;
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
    qryOtherProjectID: TIntegerField;
    qryOtherBudgetID: TIntegerField;
    qryOther_BudgetName: TStringField;
    qryOther_ProjectName: TStringField;
    qryOtheracc_CTopicCode: TStringField;
    qryOtheracc_CTopicCode2: TStringField;
    qryOther__CTopicCodeName: TStringField;
    qryOther__CTopicCodeName2: TStringField;
    lblNationalID: TLabel;
    edtNationalID: TDBEdit;
    qryOtherNationalID: TStringField;
    qryLookUpCust: TADOQuery;
    qryOtherPersonID1: TIntegerField;
    qryOther_PersonID1: TStringField;
    PageControl1: TPageControl;
    TabAcc: TTabSheet;
    Panel5: TPanel;
    Label4: TLabel;
    TabBudget: TTabSheet;
    TabOperation: TTabSheet;
    Label13: TLabel;
    chklstOperator: TCheckListBox;
    DBText4: TDBText;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
    SpeedButton7: TSpeedButton;
    Label16: TLabel;
    DBText3: TDBText;
    SpeedButton4: TSpeedButton;
    Label9: TLabel;
    DBText2: TDBText;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    qryOtherOperatorID: TWideStringField;
    qryOtheracc_CTopicCode3: TStringField;
    qryOther__CTopicCodeName3: TStringField;
    qryOther__TopicCodeName: TStringField;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    Label22: TLabel;
    SpeedButton5: TSpeedButton;
    DBText5: TDBText;
    Label24: TLabel;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    Label48: TLabel;
    SpeedButton10: TSpeedButton;
    DBText7: TDBText;
    DBEdit15: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit29: TDBEdit;
    Label49: TLabel;
    DBEdit30: TDBEdit;
    SpeedButton11: TSpeedButton;
    DBText8: TDBText;
    BitBtn15: TBitBtn;
    dbchkCustomerActive: TDBCheckBox;
    qryOtherCustomerActive: TWordField;
    GroupBox1: TGroupBox;
    cmbGroups: TComboBox;
    SpeedButton1: TSpeedButton;
    chkAllCusts: TCheckBox;
    btnSelect: TSpeedButton;
    qryOtherMax4WaterCo: TBCDField;
    lblMax4WaterCo: TLabel;
    edtMax4WaterCo: TDBEdit;
    qryOtheracc_TopicCode: TLargeintField;
    qryOtherSupervisorAllocation: TWordField;
    dbchkSupervisorAllocation: TDBCheckBox;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    actGetExel: TAction;
    btnGetExel: TBitBtn;
    edtMobile: TDBEdit;
    lblMobile: TLabel;
    qryOtherMobile: TStringField;
    tsOtherCustomers: TTabSheet;
    GroupBox3: TGroupBox;
    chklstOtherGroup: TCheckListBox;
    qryCustomersOtherGroups: TADOQuery;
    qryCustomersOtherGroupsCustID: TIntegerField;
    qryCustomersOtherGroupsCustomerGrpID: TIntegerField;
    sd: TPopupMenu;
    Mnu_AllClick: TMenuItem;
    MenuItem1: TMenuItem;
    N7: TMenuItem;
    actChangeCustID1: TMenuItem;
    N5: TMenuItem;
    actChangeCustID: TAction;
    actChangeCustID2: TMenuItem;
    qryCustomersGroup: TADOQuery;
    tsBank: TTabSheet;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtCustAccountNumber: TDBEdit;
    edtAccountNumber: TDBEdit;
    edtBankId: TDBEdit;
    edtBankName: TDBEdit;
    qryOtherBankId: TFloatField;
    qryOtherBankName: TStringField;
    qryOtherAccountNumber: TStringField;
    qryOtherAccountKind: TIntegerField;
    qryOtherCustAccountNumber: TStringField;
    DBGrid1: TCedarDbgrid;
    qryOtherCustFirstName: TStringField;
    qryOtherTelegramChatID: TStringField;
    edtTelegramChatID: TDBEdit;
    Label7: TLabel;
    qryOtherAlternativeCustID: TLargeintField;
    edtAlternativeCustID: TDBEdit;
    Label10: TLabel;
    qryOtherCustomerState: TWordField;
    dbchkCustomerState: TDBCheckBox;
    edtCitizenCode: TDBEdit;
    lblCitizenCode: TLabel;
    qryOtherCitizenCode: TStringField;
    qryOtherLastUser: TWideStringField;
    qryOtherFirstUser: TWideStringField;
    qryOtherEditDateTime: TDateTimeField;
    actSetOprator2All: TAction;
    actSetAllOprator2AllRow: TAction;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    qryOtherBaleChatID: TStringField;
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
    procedure qryOtherCustIDChange(Sender: TField);
    procedure qryOtherAfterScroll(DataSet: TDataSet);
    procedure cmbOperatorChange(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chklstOperatorClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure actGetExelExecute(Sender: TObject);
    procedure Mnu_AllClickClick(Sender: TObject);
    procedure actChangeCustID1Click(Sender: TObject);
    procedure actChangeCustIDExecute(Sender: TObject);
    procedure qryOtherAfterEdit(DataSet: TDataSet);
    procedure actSetOprator2AllExecute(Sender: TObject);
    procedure actSetAllOprator2AllRowExecute(Sender: TObject);
    procedure qryOtherAfterOpen(DataSet: TDataSet);
    procedure chklstOtherGroupClick(Sender: TObject);
  private
    WHERESQL: String;
    GroupType: Integer;
    GrpIDInCmb, mySelected: string;
    isActivatingExcell:Boolean;
    procedure init;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OfficeCustomerF: TOfficeCustomerF;

implementation

uses DM, searchCode_ADO, GlobalPro, mmessage, FormFunctions,
  sort2, FaraConsts, selected, main, mdiMain, search2, GetExcel;

{$R *.dfm}

procedure TOfficeCustomerF.FormCreate(Sender: TObject);
begin
  inherited;
  init;
end;

procedure TOfficeCustomerF.init;
var
  i: Integer;
  NewItem: TMenuItem;
begin
  inherited;
  isActivatingExcell:=False;
  GroupType := var_glb_gParam;
  Caption := 'معرفي ' + CustGroupsNames[GroupType];
  actChangeCustID.Caption := 'تغییر کد سیستم یکپارچه  ' + CustGroupsNames
    [GroupType];
  qryOther.FieldByName('CustName').ReadOnly := opt.EditCustNameLevelID;
  GrpIDInCmb := initCombos(cmbGroups,
    'SELECT CustomerGrpID, CustomerGrpName + ''            از كد '' + ltrim(str(StartCode))'
    + '+ '' تا كد '' + ltrim(str(FinishCode)) AS  CustomerGrpName ' +
    ' FROM CustomersGroup WHERE (GroupType = ' + IntToStr(GroupType) +
    ') ORDER BY CustomerGrpID');
  if cmbGroups.Items.Count > 0 then
  begin
    cmbGroups.ItemIndex := 0;
    cmbGroupsChange(cmbGroups);
  end; // if
  // Sheikh 2015/06/22
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

  if mdiMainF.MainFrame.GetActiveIndex = 9 then
  begin
    TabAcc.Free;
    case var_glb_gParam of
      19:
        begin
          TabBudget.Free;
          TabOperation.Free;
          lblMobile.Visible := False;
          edtNationalID.Visible := False;
        end;
      5:
        begin
          TabBudget.Caption := 'واحد سازمانی';

          // TabOperation.Free;
        end;
      11, 16:
        begin
          // TabBudget.Free;
          TabOperation.Free;
          lblMobile.Visible := False;
          edtNationalID.Visible := False;
        end;

    end;
  end
  else
    InitchklstOperators(chklstOperator, '');

  if var_glb_gParam = 5 then
  begin
    dbchkCustomerState.Visible := False;
    edtMax4WaterCo.Visible := False;
    lblMax4WaterCo.Visible := False;
    edtNationalID.Visible := False;
    lblNationalID.Visible := False;
    edtCitizenCode.Visible := False;
    lblCitizenCode.Visible := False;

    edtMobile.Visible := False;
    lblMobile.Visible := False;

    TabBudget.Free;
    tsOtherCustomers.Free;
    tsBank.Free;

    DBGrid1.FieldColumns['NationalID'].Visible := False;
    DBGrid1.FieldColumns['CitizenCode'].Visible := False;
    // setColumns(DBGrid1, 'NationalID', False);
    // setColumns(DBGrid1, 'CitizenCode', False);

    qryOtherMobile.Required := False;
  end;


  // PageControl1.Pages[0].Visible := mdiMainF.MainFrame.GetActiveIndex <> 9;
  // PageControl1.Pages[1].Visible := PageControl1.Pages[0].Visible;

  dbchkSupervisorAllocation.Enabled := User.PowerUser;

end;

procedure TOfficeCustomerF.Mnu_AllClickClick(Sender: TObject);
begin
  inherited;
  ChangeCustomerGroup(Sender, qryOther, CustGroupsNames[GroupType])
end;

procedure TOfficeCustomerF.N21Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOther);
end;

procedure TOfficeCustomerF.srcOtherStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryOther.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', self.Name);
end;

procedure TOfficeCustomerF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryOther, 'acc_DetailCode', '', False)
end;

procedure TOfficeCustomerF.actChangeCustID1Click(Sender: TObject);
begin
  inherited;
  ChangeCustID(qryOther, cmbGroups, CustGroupsNames[GroupType])
end;

procedure TOfficeCustomerF.actChangeCustIDExecute(Sender: TObject);
begin
  inherited;
  ChangeCustID(qryOther, cmbGroups, CustGroupsNames[GroupType],
    'ChangeCustIDWithAccCode')
end;

procedure TOfficeCustomerF.actGetExelExecute(Sender: TObject);
begin
  inherited;
  With qryOther do
  begin
    try
      AfterPost := nil;
      isActivatingExcell:=True;
      GetExcelF.ShowImPortExcel(qryOther);
    finally
      AfterPost := qryOtherAfterPost;
      isActivatingExcell:=False;
    end;
  end;

end;

procedure TOfficeCustomerF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TOfficeCustomerF.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TOfficeCustomerF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton7.Click;
end;

procedure TOfficeCustomerF.cmbGroupsChange(Sender: TObject);
var
  i, CustomerGrpID: Integer;
begin
  inherited;
  qryCustomersGroup.Open;
  CustomerGrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  qryCustomersGroup.Locate('CustomerGrpID', CustomerGrpID, []);

  UpDateListCustomers(1, qryOther, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL);
  // Sheikh 2015/06/22
  InitChkList(chklstOtherGroup, cmbGroups);

  For i := 0 to Mnu_AllClick.Count - 1 do
  begin
    Mnu_AllClick.Items[i].Checked :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex])
      = Mnu_AllClick.Items[i].Tag;
    Mnu_AllClick.Items[i].Default := Mnu_AllClick.Items[i].Checked;
  end;
  cmbGroups.Hint := cmbGroups.Text;
  InitchklstOperators(chklstOperator, qryOther.FieldByName('OperatorID')
    .AsString);

  // if cmbGroups.ItemIndex = -1 then
  // exit;
  // with qryOther do
  // begin                      F
  // Active := False;
  // Parameters.ParamByName('GrpIDFrom').Value :=
  // Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  // Parameters.ParamByName('GrpIDTo').Value :=
  // Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  // Active := True;
  // end; // with
end;

procedure TOfficeCustomerF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TOfficeCustomerF.actSetAllOprator2AllRowExecute(Sender: TObject);
var
  OperatorID: string;
begin
  inherited;
  if get_response
    ('آيا براي تعمیم ارتباط با کاربران جاری به همه سطر ها مطمئن هستيد؟') <> mrYes
  then
    Abort;
  OperatorID := GetchklstObjectS(chklstOperator);
  With DMf.qryTmpTmp do
  begin
    SQL.Text := 'update Customers ';
    SQL.Add('set OperatorID = ''' + OperatorID + '''');
    SQL.Add(WHERESQL);
    Parameters := qryOther.Parameters;
    if WHERESQL <> EmptyStr then
      BigMessage(ExecSQL.ToString + 'مورد  انجام شد.', 0);
    cmbGroupsChange(cmbGroups);
  end;
end;

procedure TOfficeCustomerF.actSetOprator2AllExecute(Sender: TObject);
var
  ix: Integer;
begin
  inherited;
  if get_response('آيا براي تعمیم کاربر جاری به همه ردیف ها مطمئن هستيد؟') <> mrYes
  then
    Abort;
  ix := Integer(chklstOperator.Items.Objects[chklstOperator.ItemIndex]);
  With DMf.qryTmpTmp do
  begin
    SQL.Text := 'update Customers ';
    if chklstOperator.Checked[chklstOperator.ItemIndex] then
      SQL.Add('set OperatorID=dbo.AddDecCommaDilmetr(OperatorID,''' +
        ix.ToString + ''','''') ')
    else
      SQL.Add('set OperatorID=dbo.AddDecCommaDilmetr(OperatorID,'''',''' +
        ix.ToString + ''') ');
    SQL.Add(WHERESQL);
    Parameters := qryOther.Parameters;
    if WHERESQL <> EmptyStr then
      BigMessage(ExecSQL.ToString + 'مورد  انجام شد.', 0);
    cmbGroupsChange(cmbGroups);
  end;
end;

procedure TOfficeCustomerF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOther);
end;

procedure TOfficeCustomerF.BitBtn15Click(Sender: TObject);
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

procedure TOfficeCustomerF.BitBtn9Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TOfficeCustomerF.btnSelectClick(Sender: TObject);
var
  txt: String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup  WHERE (GroupType = '
    + IntToStr(GroupType) + ') ';
  mySelected := selectedF.ShowSelect(DMf.adcBSell, 'انتخاب گروه', txt,
    ['كد', 'گروه'], alLeft, [50, 400], mySelected);
  UpDateListCustomers(3, qryOther, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL)
end;

procedure TOfficeCustomerF.qryOtherBeforePost(DataSet: TDataSet);
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
      zbal.Title := 'كد نامعتبر';
      zbal.Prompt.Text := 'كد جديد تخصيص يافته خارج ازمحدوده تعريف شده است.';
      zbal.Show(DBEdit1);
      DBEdit1.SetFocus;
      Abort;
    end; // if
  end; // with
  // if get_response('تغييرات ذخيره شوند؟') <> mrYes then
  // Abort;
  if not CheckRequiredFields(qryOther) then
    Abort;
  TrimStringFields(qryOther);
  if not UnicFieldName(DataSet.FieldByName('CustID'),
    DataSet.FieldByName('CustName'), 'Customers',
    qryOtherCustomerGrpID.AsInteger) then
    Abort;

  if not isActivatingExcell then
    if (not(var_glb_gParam in [19, 11, 16])) or
      (mdiMainF.MainFrame.GetActiveIndex <> 9) then
    begin
      qryOther['OperatorID'] := GetchklstObjectS(chklstOperator);
      if (Application.MainForm.Menu <> mainF.Mnu1Sell) and
        (qryOther['OperatorID'] = EmptyStr) then
      begin
        Warn('نام كاربر مرتبط را انتخاب كنيد.‏');
        Abort;
      end;
    end;
end;

procedure TOfficeCustomerF.qryOtherAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TOfficeCustomerF.qryOtherAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
  DataSet.FieldByName('EditDateTime').AsDateTime := Now;
end;

procedure TOfficeCustomerF.qryOtherAfterInsert(DataSet: TDataSet);
var
  GrpID: Integer;
  aRange: String;
  isValid: Boolean;
  rFrom, rTo: Integer;
begin
  inherited;
  if (cmbGroups.ItemIndex = -1) then
  begin
    zbal.Prompt.Text := 'لطفاً قبل از تعريف واحد جديد گروه آنرا مشخص كنيد.';
    zbal.Title := 'اخطار!';
    zbal.Show(cmbGroups);
    DataSet.Cancel;
    exit;
  end; // if
  GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
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
  end; // with
  DataSet.FieldByName('CustomerGrpID').AsInteger := GrpID;
  DataSet.FieldByName('CustID').AsInteger :=
    GetANewCode(self.Name,
    'Select max(CustID) from Customers where CustID between ' + aRange +
    'and CustomerGrpID=' + IntToStr(GrpID), 'CustID');
  DataSet.FieldByName('ModifyDate').AsDateTime := Now;
  DataSet.FieldByName('acc_DetailCode').AsInteger := 0;
  DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
  if not((DataSet.FieldByName('CustID').AsInteger >= rFrom) and
    (DataSet.FieldByName('CustID').AsInteger <= rTo)) then
    DataSet.FieldByName('CustID').AsInteger := rFrom;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Select count(CustID) from Customers where CustID = ' +
      DataSet.FieldByName('CustID').AsString + 'and CustomerGrpID=' +
      IntToStr(GrpID);
    Active := True;
    isValid := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
  if not isValid then
  begin
    zbal.Title := 'كد نامعتبر';
    zbal.Prompt.Text :=
      'كد جديد تخصيص يافته نامعتبر است. لطفاً كد را بصورت دستي وارد كنيد.';
    zbal.Show(DBEdit1);
  end; // if
  if opt.AccDetailCodeEqualCustID > 0 then
    qryOther.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      DataSet.FieldByName('CustID').AsInteger;
  DBEdit1.SetFocus;
end;

procedure TOfficeCustomerF.qryOtherAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryOtherAfterScroll(qryOther);

end;

procedure TOfficeCustomerF.qryOtherAfterPost(DataSet: TDataSet);
begin
  inherited;
  CustIDToDetailCode(qryOther, GroupType);
  SaveOtherCustomers(qryCustomersOtherGroups, qryOther, chklstOtherGroup);
  // sheikh 2015/06/22
  // SaveOtherCustomers(qryCustomersOtherGroups, qryOther, chklstOperator);
  // qryOther['OperatorID'] := GetchklstObjectS(chklstOperator);

  BigMessage('ثبت شد.', 1);
end;

procedure TOfficeCustomerF.qryOtherAfterScroll(DataSet: TDataSet);
begin
  inherited;

  if (not(var_glb_gParam in [19, 11, 16])) or
    (mdiMainF.MainFrame.GetActiveIndex <> 9) then

    InitchklstOperators(chklstOperator, DataSet.FieldByName('OperatorID')
      .AsString);
  // Sheikh 2015/06/22
  with qryCustomersOtherGroups, Parameters do
  begin
    Active := False;
    ParamByName('CustId').Value := qryOtherCustID.AsInteger;
    Active := True;
  end;
  LoadOtherCustomers(qryCustomersOtherGroups, chklstOtherGroup);
end;

procedure TOfficeCustomerF.qryOtherBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين واحد مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TOfficeCustomerF.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  UpDateListCustomers(2, qryOther, GroupType, cmbGroups, chkAllCusts,
    mySelected, GrpIDInCmb, WHERESQL)
  // if cmbGroups.ItemIndex = -1 then
  // cmbGroups.ItemIndex := 0;
  // if chkAllOffice.Checked then
  // begin
  // with qryOther do
  // begin
  // Active := False;
  // Parameters.ParamByName('GrpIDFrom').Value := 0;
  // Parameters.ParamByName('GrpIDTo').Value := 2147483647;
  // Active := True;
  // end; // with
  // cmbGroups.Enabled := False;
  // chkAllOffice.Checked;
  // end // if
  // else
  // begin
  // with qryOther do
  // begin
  // Active := False;
  // Parameters.ParamByName('GrpIDFrom').Value :=
  // Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  // Parameters.ParamByName('GrpIDTo').Value :=
  // Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  // Active := True;
  // end; // with
  // cmbGroups.Enabled := True;
  // chkAllOffice.Checked := False;
  // end; // if
end;

procedure TOfficeCustomerF.chklstOperatorClick(Sender: TObject);
begin
  inherited;
  if not(qryOther.State in dsEditModes) then
    qryOther.Edit;
end;

procedure TOfficeCustomerF.chklstOtherGroupClick(Sender: TObject);
begin
  inherited;
  if not(qryOther.State in dsEditModes) then
    qryOther.Edit;
end;

procedure TOfficeCustomerF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryOther, 'acc_CTopicCode3', '', False)
end;

procedure TOfficeCustomerF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryOther)
end;

procedure TOfficeCustomerF.SpeedButton1Click(Sender: TObject);
var
  i: Integer;
  c: String;
  txt: String;
  s: String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ' +
    'WHERE GroupType= ' + IntToStr(GroupType);
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'گروههاي واحدها  ', txt,
    ['کد', 'نام گروه'], alLeft);
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

procedure TOfficeCustomerF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TOfficeCustomerF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TOfficeCustomerF.ppLabel19GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if chkAllCusts.Checked then
    Text := 'گروه : همه گروهها  '
  else
    Text := 'گروه : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

procedure TOfficeCustomerF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TOfficeCustomerF.actSearch_Execute(Sender: TObject);
var
  c: string;
begin
  inherited;
  if (chkAllCusts.Checked) then
  begin
    if searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'جستجوي ' + Caption,
      'SELECT Customers.CustID,Customers.CustName,Customers.PersonID1 FROM Customers INNER JOIN'
      + ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID'
      + ' WHERE  CustomersGroup.GroupType =  ' + IntToStr(GroupType),
      [lblCustID.Caption, lblCustName.Caption, 'واحد'], alLeft) <> '' then
      qryOther.Locate('CustID', c, []);
  end
  else If (cmbGroups.ItemIndex = -1) or (chkAllCusts.Checked) Then
    exit
  else if searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'جستجوي ' + Caption,
    'SELECT CustID,CustName,PersonID1 FROM Customers where CustomerGrpID=' +
    IntToStr(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex])),
    [lblCustID.Caption, lblCustName.Caption, 'واحد'], alLeft) <> '' then
    qryOther.Locate('CustID', c, []);

end;

procedure TOfficeCustomerF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TOfficeCustomerF.cmbOperatorChange(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TOfficeCustomerF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonBudgetCode(qryOther, 'BudgetID')
end;

procedure TOfficeCustomerF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonProjectsCode(qryOther, 'ProjectID', 'BudgetID')
end;

procedure TOfficeCustomerF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryOther, 'acc_CTopicCode', '', False)
end;

procedure TOfficeCustomerF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryOther, 'acc_CTopicCode2', 'acc_CTopicCode')
end;

procedure TOfficeCustomerF.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes(qryOtherPersonID1, '5,16')
end;

procedure TOfficeCustomerF.qryOtherCustIDChange(Sender: TField);
begin
  inherited;
  if opt.AccDetailCodeEqualCustID > 0 then
    qryOther.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
      Sender.AsInteger;
end;

end.
