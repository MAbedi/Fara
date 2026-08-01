// mahmood
unit CompanyBankAccounts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, DB, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ADODB, zAPIBalloon, ComCtrls, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.CheckLst;

type
  TCompanyBankAccountsF = class(Ttemplate2MDIF)
    qryBank: TADOQuery;
    qryBankCustID: TIntegerField;
    qryBankCustomerGrpID: TIntegerField;
    qryBankCustName: TStringField;
    qryBankWebSite: TStringField;
    qryBankTel: TStringField;
    qryBankFax: TStringField;
    qryBankemail: TStringField;
    qryBankpobox: TStringField;
    qryBankacc_DetailCode: TStringField;
    qryBankModifyDate: TDateTimeField;
    qryBankCustomerNote: TStringField;
    qryBank__DetailCode: TStringField;
    srcBank: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    actSendExel: TAction;
    actSort: TAction;
    zbal: TzAPIBalloon;
    BitBtn9: TBitBtn;
    qryBankBudgetID: TIntegerField;
    qryBankProjectID: TIntegerField;
    qryBank_BudgetName: TStringField;
    qryBank_ProjectName: TStringField;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryBank__CTopicCodeName: TStringField;
    qryBankacc_CTopicCode: TStringField;
    qryBankacc_CTopicCode2: TStringField;
    qryBank__CTopicCodeName2: TStringField;
    qryBankBankId: TFloatField;
    qryBankBankName: TStringField;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    qryCheckBook: TADOQuery;
    srcCheckBook: TDataSource;
    qryCheckBookCheckBookID: TIntegerField;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    qryCheckBookCheckBookNo: TIntegerField;
    qryCheckBookBankID: TIntegerField;
    qryBankAccountNumber: TStringField;
    Label18: TLabel;
    edtAccountNumber: TDBEdit;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppLabel1: TppLabel;
    ppLabel10: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLine6: TppLine;
    Label19: TLabel;
    qryBankBankReports: TStringField;
    OpenDialog1: TOpenDialog;
    qryCheckBookChkBookActive: TWordField;
    qryBankacc_CTopicCode3: TStringField;
    qryBank__CTopicCodeName3: TStringField;
    qryBank__TopicCodeName: TStringField;
    qryBankAccountKind: TIntegerField;
    qryBank_AccountKind: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    qryBankacc_TopicCode: TLargeintField;
    Panel7: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    Label22: TLabel;
    SpeedButton5: TSpeedButton;
    Label24: TLabel;
    SpeedButton6: TSpeedButton;
    Label21: TLabel;
    SpeedButton8: TSpeedButton;
    Label49: TLabel;
    SpeedButton11: TSpeedButton;
    DBEdit15: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit25: TDBEdit;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    okPanel2: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    newPanel2: TPanel;
    BitBtn10: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn11: TBitBtn;
    BtnSort: TBitBtn;
    BtnSearch: TBitBtn;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit20: TDBEdit;
    EdtSerialFrom: TDBEdit;
    DBEdit22: TDBEdit;
    DBCheckBox23: TDBCheckBox;
    TabSheet3: TTabSheet;
    Label20: TLabel;
    SpeedButton7: TSpeedButton;
    MemBankReports: TDBMemo;
    Panel8: TPanel;
    SpeedButton1: TSpeedButton;
    cmbGroups: TComboBox;
    chkAllCusts: TCheckBox;
    Label1: TLabel;
    qryBankPersonID1: TIntegerField;
    ts1: TTabSheet;
    edtPersonID3: TDBEdit;
    lbl1: TLabel;
    qryCustomersGroup: TADOQuery;
    edtCustAccountNumber: TDBEdit;
    Label23: TLabel;
    qryBankCustAccountNumber: TStringField;
    qryBankCustomerActive: TWordField;
    dbchkCustomerActive: TDBCheckBox;
    DBGrid1: TCedarDbgrid;
    qryBankCustFirstName: TStringField;
    qryBankBankIDc: TStringField;
    edtBankIDc: TDBEdit;
    Label25: TLabel;
    qryCheckBookSerialFrom: TLargeintField;
    qryCheckBookSerialTo: TLargeintField;
    dbchkCustomerState: TDBCheckBox;
    qryBankCustomerState: TWordField;
    actChangeCustID: TAction;
    sd: TPopupMenu;
    Mnu_AllClick: TMenuItem;
    MenuItem1: TMenuItem;
    N7: TMenuItem;
    actChangeCustID1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qryCustomers25: TADOQuery;
    qryBank_PersonID3: TStringField;
    Label8: TLabel;
    dblkcbb_PersonID3: TDBLookupComboBox;
    qryBankPersonID3: TIntegerField;
    edt_BankNationalID: TDBEdit;
    SpeedButton3: TSpeedButton;
    edtBankNationalID: TDBEdit;
    Label9: TLabel;
    qryBankBankNationalID: TStringField;
    qryBankNationals: TADOQuery;
    qryBank_BankNationalID: TStringField;
    TabOperation: TTabSheet;
    Label10: TLabel;
    chklstOperator: TCheckListBox;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    actSetOprator2All: TAction;
    actSetAllOprator2AllRow: TAction;
    qryBankOperatorID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure srcBankStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbGroupsChange(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryBankBeforePost(DataSet: TDataSet);
    procedure qryBankAfterDelete(DataSet: TDataSet);
    procedure qryBankAfterInsert(DataSet: TDataSet);
    procedure qryBankAfterPost(DataSet: TDataSet);
    procedure qryBankBeforeDelete(DataSet: TDataSet);
    procedure chkAllCustsClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure srcCheckBookStateChange(Sender: TObject);
    procedure qryCheckBookAfterInsert(DataSet: TDataSet);
    procedure qryCheckBookBeforeDelete(DataSet: TDataSet);
    procedure qryCheckBookBeforePost(DataSet: TDataSet);
    procedure qryBankBeforeInsert(DataSet: TDataSet);
    procedure BtnSortClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure qryBankAfterScroll(DataSet: TDataSet);
    procedure qryCheckBookBeforeEdit(DataSet: TDataSet);
    procedure qryBankAccountKindGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBankAccountKindSetText(Sender: TField; const Text: String);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure qryBankCustIDChange(Sender: TField);
    procedure actChangeCustIDExecute(Sender: TObject);
    procedure Mnu_AllClickClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure actSetAllOprator2AllRowExecute(Sender: TObject);
    procedure actSetOprator2AllExecute(Sender: TObject);
    procedure chklstOperatorClick(Sender: TObject);
  private
    GroupType: Integer;
    WHERESQL: string;
    procedure valid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CompanyBankAccountsF: TCompanyBankAccountsF;

implementation

uses DM, searchCode_ADO, GlobalPro, mmessage,
  FormFunctions, sort2, search2, mdiMain;

{$R *.dfm}

procedure TCompanyBankAccountsF.FormCreate(Sender: TObject);
var
  i: Integer;
  NewItem: TMenuItem;
begin
  inherited;
  qryCustomersGroup.Open;
  GroupType := 1;
  SetLookUpCash(qryBank);
  SetLookUpCash(qryCheckBook);
  qryBank.FieldByName('CustName').ReadOnly := opt.EditCustNameLevelID;
  // if opt.AccOldAvailable then begin
  // qryBank.FieldByName('__DetailCode').LookupResultField:='Desc';
  //
  // qryBank.FieldByName('__CTopicCodeName2').LookupResultField:='Desc';
  // qryBank.FieldByName('__CTopicCodeName').LookupResultField:='Desc';
  //
  // end;//if
  InitCombos(cmbGroups,
    'SELECT CustomerGrpID, CustomerGrpName + ''            از كد '' + ltrim(str(StartCode))'
    + '+ '' تا كد '' + ltrim(str(FinishCode)) AS  CustomerGrpName ' +
    ' FROM CustomersGroup WHERE (GroupType = 1) ');
  if cmbGroups.Items.Count > 0 then
  begin
    cmbGroups.ItemIndex := 0;
    cmbGroupsChange(cmbGroups);
  end; // if

  For i := 0 to cmbGroups.Items.Count - 1 do
  begin
    NewItem := TMenuItem.Create(self);
    NewItem.Caption := cmbGroups.Items.Strings[i];
    if cmbGroups.Items.Count > 0 then
      NewItem.Tag := Integer(cmbGroups.Items.Objects[i]);
    NewItem.OnClick := Mnu_AllClickClick;
    Mnu_AllClick.Add(NewItem);
  end;


  WHERESQL := ' WHERE(CustomerGrpID BETWEEN :GrpIDFrom and :GrpIDTo) AND ' +
    '(CustID <> 0) AND (CustomerGrpID in (SELECT CustomerGrpID FROM CustomersGroup WHERE GroupType=1))';
  qryBank.Active := True;
  qryCheckBook.Active := True;
    InitchklstOperators(chklstOperator, qryBank.FieldByName('OperatorID')
    .AsString);


end;

procedure TCompanyBankAccountsF.Mnu_AllClickClick(Sender: TObject);
begin
  inherited;
  ChangeCustomerGroup(Sender, qryBank, Caption)
end;

procedure TCompanyBankAccountsF.srcBankStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryBank.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  newPanel2.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', self.Name);
end;

procedure TCompanyBankAccountsF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonDetailCode(qryBank, 'acc_DetailCode', '', False)
end;

procedure TCompanyBankAccountsF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonBankNationalID(qryBank)
end;

procedure TCompanyBankAccountsF.actChangeCustIDExecute(Sender: TObject);
begin
  inherited;
  ChangeCustID(qryBank, cmbGroups, Caption)
end;

procedure TCompanyBankAccountsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryBank.DisableControls;
    ppReport1.Print;
  finally
    qryBank.EnableControls;
  end; // try
end;

procedure TCompanyBankAccountsF.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TCompanyBankAccountsF.cmbGroupsChange(Sender: TObject);
var
  CustomerGrpID: Integer;
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    exit;

  CustomerGrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  qryCustomersGroup.Locate('CustomerGrpID', CustomerGrpID, []);

  with qryBank do
  begin
    Active := False;
    Parameters.ParamByName('GrpIDFrom').Value :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    Parameters.ParamByName('GrpIDTo').Value :=
      Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
    Active := True;
  end; // with
end;

procedure TCompanyBankAccountsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCompanyBankAccountsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBank);
end;

procedure TCompanyBankAccountsF.qryBankBeforePost(DataSet: TDataSet);
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'Select StartCode,FinishCode from CustomersGroup where CustomerGrpID=' +
      IntToStr(qryBank.Parameters.ParamByName('GrpIDFrom').Value);
    Active := True;
    if (qryBank.FieldByName('CustID').AsInteger < Fields[0].AsInteger) or
      (qryBank.FieldByName('CustID').AsInteger > Fields[1].AsInteger) then
    begin
      zbal.Title := 'كد نامعتبر';
      zbal.Prompt.Text := 'كد جديد تخصيص يافته خارج ازمحدوده تعريف شده است.';
      zbal.Show(DBEdit1);
      DBEdit1.SetFocus;
      Abort;
    end; // if
  end; // with
  if get_response('تغييرات ذخيره شوند؟') <> mrYes then
    Abort;
  TrimStringFields(qryBank);
  if not UnicFieldName(DataSet.FieldByName('CustID'),
    DataSet.FieldByName('CustName'), 'Customers', qryBankCustomerGrpID.AsInteger)
  then
    Abort;

  qryBank['OperatorID'] := GetchklstObjectS(chklstOperator);

end;

procedure TCompanyBankAccountsF.qryBankCustIDChange(Sender: TField);
begin
  inherited;
  if opt.AccDetailCodeEqualCustID > 0 then
    if Pos(',1,', ',' + opt.CustAccDetailCodeEqualCustID + ',') > 0 then
      qryBank.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
        qryBank.FieldByName('CustID').AsInteger;
end;

procedure TCompanyBankAccountsF.qryBankAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TCompanyBankAccountsF.qryBankAfterInsert(DataSet: TDataSet);
var
  GrpID: Integer;
  aRange: String;
  isValid: Boolean;
  rFrom, rTo: Integer;
begin
  inherited;
  if (cmbGroups.ItemIndex = -1) then
  begin
    zbal.Prompt.Text := 'لطفاً قبل از تعريف حساب جديد گروه آنرا مشخص كنيد.';
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
    DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
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
  if opt.AccDetailCodeEqualCustID > 0 then
    if Pos(',1,', ',' + opt.CustAccDetailCodeEqualCustID + ',') > 0 then
      qryBank.FieldByName(AccDetailType(qryCustomersGroup)).AsInteger :=
        DataSet.FieldByName('CustID').AsInteger;
  if not isValid then
  begin
    zbal.Title := 'كد نامعتبر';
    zbal.Prompt.Text :=
      'كد جديد تخصيص يافته نامعتبر است. لطفاً كد را بصورت دستي وارد كنيد.';
    zbal.Show(DBEdit1);
  end; // if
  DBEdit1.SetFocus;
end;

procedure TCompanyBankAccountsF.qryBankAfterPost(DataSet: TDataSet);
var
  rid, rid2: Integer;
begin
  inherited;
  CustIDToDetailCode(qryBank, GroupType);
  rid2 := qryBankCustID.AsInteger;
  if qryCheckBook.State in dsEditModes then
    qryCheckBook.Post;
  try
    qryCheckBook.UpdateBatch;
    BigMessage('ثبت شد.', 1);
  except
    on E: Exception do
    begin
      add2log(E.Message);
      warn('اشكال در ثبت فرم');
    end;
  end; // try
  rid := qryBankCustID.AsInteger;
  qryBank.Requery;
  qryBank.Locate('CustID', rid, []);
  qryCheckBook.Requery;
  qryCheckBook.Locate('CheckBookID', rid2, []);
end;

procedure TCompanyBankAccountsF.qryBankBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين حساب مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCompanyBankAccountsF.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  if cmbGroups.ItemIndex = -1 then
    cmbGroups.ItemIndex := 0;
  if chkAllCusts.Checked then
  begin
    with qryBank do
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
    with qryBank do
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

procedure TCompanyBankAccountsF.chklstOperatorClick(Sender: TObject);
begin
  inherited;
  if not(qryBank.State in dsEditModes) then
    qryBank.Edit;

end;

procedure TCompanyBankAccountsF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryBank)
end;

procedure TCompanyBankAccountsF.SpeedButton1Click(Sender: TObject);
var
  i: Integer;
  c: String;
  txt: String;
  s: String;
begin
  inherited;
  txt := 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ' +
    'WHERE GroupType=1 ';
  s := searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'گروههاي بانكها  ', txt,
    ['کد', 'نام گروه'], alLeft);
  if s <> '' then
  begin
    for i := 1 to cmbGroups.Items.Count do
      if cmbGroups.Items.Strings[i] = s then
        Break;
    cmbGroups.ItemIndex := i;
    cmbGroupsChange(cmbGroups);
    cmbGroups.Hint := s;
    zbal.Title := AnsiString(s);
    zbal.Prompt.Text := c;
    zbal.Show(cmbGroups);
  end; // if
end;

procedure TCompanyBankAccountsF.ppLabel19GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if chkAllCusts.Checked then
    Text := 'گروه : همه گروهها  '
  else
    Text := 'گروه : ' + cmbGroups.Items.Strings[cmbGroups.ItemIndex];
end;

procedure TCompanyBankAccountsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TCompanyBankAccountsF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCompanyBankAccountsF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCompanyBankAccountsF.actSearch_Execute(Sender: TObject);
var
  c: string;
begin
  inherited;
  if (chkAllCusts.Checked) then
  begin
    if searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'جستجوي حساب',
      'SELECT Customers.CustID,Customers.CustName,AccountNumber FROM Customers INNER JOIN'
      + ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID'
      + ' WHERE  CustomersGroup.GroupType = 1 ',
      ['كد حساب', 'نام حساب', 'شماره حساب'], alLeft) <> '' then
      qryBank.Locate('CustID', c, []);
  end
  else If (cmbGroups.ItemIndex = -1) or (chkAllCusts.Checked) Then
    exit
  else if searchCode_ADOF.SearchCode(DMf.adcBSell, c, 'جستجوي حساب',
    'SELECT CustID,CustName,AccountNumber FROM Customers where CustomerGrpID=' +
    IntToStr(qryBank.Parameters.ParamByName('GrpIDFrom').Value),
    ['كد حساب', 'نام حساب', 'شماره حساب'], alLeft) <> '' then
    qryBank.Locate('CustID', c, []);
end;

procedure TCompanyBankAccountsF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TCompanyBankAccountsF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode(qryBank, 'acc_CTopicCode', '', False);
end;

procedure TCompanyBankAccountsF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode2(qryBank);
end;

procedure TCompanyBankAccountsF.srcCheckBookStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible := qryCheckBook.State in dsEditModes;
  newPanel2.Visible := not okPanel2.Visible;
  BtnReject.Cancel := newPanel2.Visible;
end;

procedure TCompanyBankAccountsF.qryCheckBookAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qryBank.State in dsEditModes) then
    qryBank.Edit;
  DataSet.FieldByName('CheckBookID').AsInteger :=
    GetANewCode(self.Name, 'CheckBook', 'CheckBookID');
  DataSet.FieldByName('CheckBookNo').AsInteger :=
    GetANewCode(self.Name, 'CheckBook', 'CheckBookNo');
  DataSet.FieldByName('BankID').AsInteger := qryBank.FieldByName('CustID')
    .AsInteger;
  DBEdit20.SetFocus;
end;

procedure TCompanyBankAccountsF.qryCheckBookBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين دسته چك مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TCompanyBankAccountsF.qryCheckBookBeforePost(DataSet: TDataSet);
begin
  inherited;
  valid;
end;

procedure TCompanyBankAccountsF.valid;
var
  canInsert: Boolean;
  SerialFrom, SerialTo: String;
begin
  inherited;
  SerialFrom := qryCheckBook.FieldByName('SerialFrom').AsString;
  SerialTo := qryCheckBook.FieldByName('SerialTo').AsString;
  if SerialTo < SerialFrom then
  begin
    warn('در محدوده سريال (از سريال) بايد كوچكتر از (تا سريال) باشد.');
    EdtSerialFrom.SetFocus;
    Abort;
  end; // if
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(CheckBookID) FROM CheckBook ';
    SQL.Add('WHERE (' + SerialFrom +
      ' BETWEEN SerialFrom AND SerialTo) AND (CheckBookID <> ' +
      qryCheckBook.FieldByName('CheckBookID').AsString + ') AND (BankID = ' +
      qryBank.FieldByName('CustID').AsString + ') OR');
    SQL.Add('(CheckBookID <> ' + qryCheckBook.FieldByName('CheckBookID')
      .AsString + ') AND (BankID = ' + qryBank.FieldByName('CustID').AsString +
      ') AND (' + SerialTo + ' BETWEEN SerialFrom AND SerialTo)');
    Active := True;
    canInsert := Fields[0].AsInteger <> 0;
    Active := False;
  end; // with
  if canInsert then
  begin
    warn('سريال تعريف شده با سريال هاي قبلي  تداخل دارد.');
    EdtSerialFrom.SetFocus;
    Abort;
  end; // if
end;

procedure TCompanyBankAccountsF.qryBankBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  PageControl1.TabIndex := 0;
end;

procedure TCompanyBankAccountsF.BtnSortClick(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCheckBook);
end;

procedure TCompanyBankAccountsF.BtnSearchClick(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCheckBook);
end;

procedure TCompanyBankAccountsF.qryBankAfterScroll(DataSet: TDataSet);
begin
  inherited;
  InitchklstOperators(chklstOperator, DataSet.FieldByName('OperatorID')
    .AsString);

  With qryCheckBook do
  begin
    Active := False;
    Parameters.ParamByName('BankID').Value := qryBank.FieldByName('CustID')
      .AsInteger;
    Active := True;
  end; // With

end;

procedure TCompanyBankAccountsF.qryCheckBookBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qryBank.State in dsEditModes) then
    Abort;
end;

procedure TCompanyBankAccountsF.qryBankAccountKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Strings
    [Sender.AsInteger];
end;

procedure TCompanyBankAccountsF.qryBankAccountKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TCompanyBankAccountsF.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not(qryBank.State in dsEditModes) then
      qryBank.Edit;
    MemBankReports.Lines.Add(ExtractFileName(OpenDialog1.FileName));
    qryBank.FieldByName('BankReports').AsString :=
      Trim(MemBankReports.Lines.Text);
  end;
end;

procedure TCompanyBankAccountsF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonCTopicCode3(qryBank, 'acc_CTopicCode3', '', False)
end;

procedure TCompanyBankAccountsF.actSetAllOprator2AllRowExecute(Sender: TObject);
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
    Parameters := qryBank.Parameters;
    if WHERESQL <> EmptyStr then
      BigMessage(ExecSQL.ToString + 'مورد  انجام شد.', 0);
    cmbGroupsChange(cmbGroups);
  end;
end;

procedure TCompanyBankAccountsF.actSetOprator2AllExecute(Sender: TObject);
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
    Parameters := qryBank.Parameters;
    if WHERESQL <> EmptyStr then
      BigMessage(ExecSQL.ToString + 'مورد  انجام شد.', 0);
    cmbGroupsChange(cmbGroups);
  end;
end;

procedure TCompanyBankAccountsF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  if (qryBank.State in dsEditModes) then
    qryBank.Post;
  if (qryCheckBook.State in dsEditModes) then
    qryCheckBook.Post
end;

end.
