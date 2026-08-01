unit Details;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, Mask, zAPIBalloon, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ppStrtch, System.Types, System.StrUtils,
  ppSubRpt, ppModule, raCodMod, ppParameter, Math, ppDesignLayer,
  System.ImageList, System.Actions, Vcl.CheckLst, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TDetailsF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    srcDetails: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    qryDetails: TADOQuery;
    Panel4: TPanel;
    BitBtn6: TBitBtn;
    actSendExel: TAction;
    PopMPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    actSort: TAction;
    actSearch: TAction;
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    Label1: TLabel;
    Label4: TLabel;
    qryMasterDGID: TIntegerField;
    qryMasterDGName_L1: TStringField;
    qryDetailsDetailCode: TIntegerField;
    qryDetailsDetailName_L1: TStringField;
    Panel7: TPanel;
    chkAllCusts: TCheckBox;
    actNote: TAction;
    actRelation: TAction;
    qryDetailsMakeDate: TDateTimeField;
    qryMasterDGName_L2: TStringField;
    qryDetailsDetailName_L2: TStringField;
    Panel8: TPanel;
    Label2: TLabel;
    dbedtDetailCode: TDBEdit;
    Pnl_L1: TPanel;
    Label3: TLabel;
    dbedtDetailName_L1: TDBEdit;
    Pnl_L2: TPanel;
    Label7: TLabel;
    dbedtDetailName_L2: TDBEdit;
    Panel10: TPanel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn9: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine23: TppLine;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine3: TppLine;
    ppLine11: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine12: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppLabel10: TppLabel;
    ppLine7: TppLine;
    ppLabel11: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText7: TppDBText;
    ppLine13: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine17: TppLine;
    ppDBText10: TppDBText;
    ppLine18: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppSummaryBand3: TppSummaryBand;
    ppSummaryBand4: TppSummaryBand;
    ppFooterBand2: TppFooterBand;
    ppLine14: TppLine;
    ppLine20: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine22: TppLine;
    ppLine6: TppLine;
    ppLine19: TppLine;
    qryDetailsComponyCode: TIntegerField;
    qryDetailsUseKindInCo: TWordField;
    qryMasterUseKindInCo: TWordField;
    qryMasterDGName1: TStringField;
    qry_Company: TADOQuery;
    src_Company: TDataSource;
    qry_CompanyCompanyCode: TIntegerField;
    qry_CompanyCompanyName_L1: TStringField;
    zbal: TzAPIBalloon;
    PanelCompony: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    actRelationGroup: TAction;
    actGetExcel: TAction;
    BitBtn11: TBitBtn;
    popChangeCode: TPopupMenu;
    N3: TMenuItem;
    pnlMobile: TPanel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    pnlMaxCredit: TPanel;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    qryDetailsNationalID: TStringField;
    qryDetailsMaxCredit: TFMTBCDField;
    Panel11: TPanel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    qryDetailsMobile: TStringField;
    pnlCurrency: TPanel;
    lbl1: TLabel;
    qry_CurrencyType: TADOQuery;
    cmbCurrencyType: TDBComboBox;
    qryDetailsDetailGroup: TIntegerField;
    actCustomerPost: TAction;
    qryDetailsCurrencyType: TIntegerField;
    actCustomerDelete: TAction;
    qryMasterDetailType: TIntegerField;
    qryMasterStartRange: TIntegerField;
    qryMasterEndRange: TIntegerField;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    pnlAccountInfo: TPanel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    qryDetailsBankName: TStringField;
    qryDetailsManageName: TStringField;
    qryDetailsCustAccountNumber: TStringField;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    qryDetailsPaymentCode: TLargeintField;
    Panel5: TPanel;
    Label15: TLabel;
    dbedtCustFirstName: TDBEdit;
    qryDetailsCustFirstName: TStringField;
    qryDetailsFirstName: TStringField;
    BitBtn10: TBitBtn;
    actDeleteAll: TAction;
    BitBtn12: TBitBtn;
    grpOther: TGroupBox;
    chklstOtherGroup: TCheckListBox;
    qryCustomersOtherGroups: TADOQuery;
    qryCustomersOtherGroupsCustID: TIntegerField;
    qryCustomersOtherGroupsCustomerGrpID: TIntegerField;
    qryCustomersGroup: TADOQuery;
    qryDetailsFirstUser: TWideStringField;
    qryDetailsLastUser: TWideStringField;
    qryDetailsInfoDate: TStringField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    Splitter1: TSplitter;
    qryDetailsCustomerState: TWordField;
    dbchkCustomerState: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure srcDetailsStateChange(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryDetailsAfterDelete(DataSet: TDataSet);
    procedure qryDetailsAfterInsert(DataSet: TDataSet);
    procedure qryDetailsAfterPost(DataSet: TDataSet);
    procedure qryDetailsBeforeDelete(DataSet: TDataSet);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure actPrint1Execute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryDetailsBeforePost(DataSet: TDataSet);
    procedure chkAllCustsClick(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure qryDetailsAfterScroll(DataSet: TDataSet);
    procedure qryDetailsBeforeInsert(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actNoteExecute(Sender: TObject);
    procedure actRelationExecute(Sender: TObject);
    procedure qryDetailsMakeDateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure delClick(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure qryDetailRangeAfterScroll(DataSet: TDataSet);
    procedure qryDetailsBeforeEdit(DataSet: TDataSet);
    procedure actRelationGroupExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure qryMasterAfterOpen(DataSet: TDataSet);
    procedure qryDetailsCurrencyTypeSetText(Sender: TField; const Text: string);
    procedure qryDetailsCurrencyTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actCustomerPostExecute(Sender: TObject);
    procedure actCustomerDeleteExecute(Sender: TObject);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure chklstOtherGroupDblClick(Sender: TObject);
    procedure qryDetailsAfterEdit(DataSet: TDataSet);

  private
    FormType: Integer;
    FCustID: Integer;
    IsActGetExcel: Boolean;
    // function SaveCustomer: Boolean;
    procedure InitCurrencyCombo;
    procedure InitChkList(chklist: TCheckListBox; CustomerGrpID: Integer;
      IsFirstTime: Boolean = False);
    procedure LoadOtherCustomers(qryOtherGroups: TADOQuery;
      chklist: TCheckListBox);
    procedure SaveOtherCustomers(qryOtherGroups, qryCustomers: TADOQuery;
      chklist: TCheckListBox);
    // procedure PopItemCust(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailsF: TDetailsF;
  minCompany: Integer;

implementation

uses DM, GlobalPro, mmessage, searchCode_ADO, search2,
  Topic_Relation, shamsiDate, sort2,
  CategoresDetailNote, selected, GetExcel, FaraConsts;
{$R *.dfm}

procedure TDetailsF.FormCreate(Sender: TObject);
begin
  inherited;
  IsActGetExcel := False;
  FormType := var_glb_gParam;
  InitCurrencyCombo;
  lblCaption.Hint := IntToStr(FormType);
  qry_Company.Active := False;
  qry_Company.Active := True;
  minCompany := qry_CompanyCompanyCode.AsInteger;
  DBLookupComboBox1.KeyValue := qry_CompanyCompanyCode.AsString;
  DBLookupComboBox1Click(DBLookupComboBox1);
  // gv_MultiCompany;
  Label8.Visible := gv_MultiCompany;
  // qry_Company.Locate('CompanyCode',opta.DefaultCompany,[]);
  pnlMaxCredit.Visible := opta.IsChkDetail;
  pnlCurrency.Visible := Dmf.ReadBankConfigAcc('ActiveCurrencyInTrialBalance',
    '0') = '1';
  pnlAccountInfo.Visible := Dmf.ReadBankConfigAcc
    ('ShowAccountInfoInDetailsReport', '0') = '1';
  InitChkList(chklstOtherGroup, qryMasterDGID.AsInteger, True);

end;

procedure TDetailsF.InitCurrencyCombo;
var
  FiledId: Integer;
begin
  cmbCurrencyType.Clear;
  with qry_CurrencyType do
  begin
    Active := True;
    while not eof do
    begin
      cmbCurrencyType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end;
    Active := False;
  end;
end;

procedure TDetailsF.qryDetailsCurrencyTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := cmbCurrencyType.Items[Sender.AsInteger];
end;

procedure TDetailsF.qryDetailsCurrencyTypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if cmbCurrencyType.ItemIndex <> -1 then
    Sender.AsInteger :=
      Integer(cmbCurrencyType.Items.Objects[cmbCurrencyType.ItemIndex]);
end;

procedure TDetailsF.srcDetailsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDetails.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  if not IsActGetExcel then
    FreeReservedCodes(Dmf.adcAccounting, 'acc.maindetails');
end;

procedure TDetailsF.ppSystemVariable1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TDetailsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TDetailsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TDetailsF.qryDetailsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);

end;

procedure TDetailsF.qryDetailsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString :=GetUserStamp;
end;

procedure TDetailsF.qryDetailsAfterInsert(DataSet: TDataSet);
var
  GrpID: Integer;
  aRange: String;
  isValid: Boolean;
  rFrom, rTo: Largeint;
begin
  inherited;

  if qryMaster.IsEmpty then
  begin
    zbal.Prompt.Text := 'لطفاً قبل از تعريف كد جديد گروه آنرا مشخص كنيد.';
    zbal.Title := 'اخطار!';
    zbal.Show(Label1);
    DataSet.Cancel;
    Exit;
  end; // if
  GrpID := qryMaster.FieldByName('DGID').AsInteger;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'Select StartRange ,EndRange  from acc.DetailGroups where DGID='
      + IntToStr(GrpID);
    Active := True;
    rFrom := Fields[0].AsLargeInt;
    rTo := Fields[1].AsLargeInt;
    aRange := format('%d and %d', [rFrom, rTo]);
    Active := False;
    if aRange = ' and ' then
      aRange := ' 0 and 2147483647';
  end; // with
  // DataSet.FieldByName('DGID').AsInteger:=GrpID;
  if not IsActGetExcel then
    DataSet.FieldByName('DetailCode').AsInteger :=
      GetANewCode('',
      'Select max(DetailCode) from acc.MainDetails where DetailGroup = ' +
      GrpID.ToString, 'DetailCode',dmf.adcAccounting);
  DataSet.FieldByName('MakeDate').AsDateTime := now;
  if not((DataSet.FieldByName('DetailCode').AsInteger >= rFrom) and
    (DataSet.FieldByName('DetailCode').AsInteger <= rTo)) then
    DataSet.FieldByName('DetailCode').AsInteger := rFrom;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'Select count(DetailCode) from acc.MainDetails where DetailCode = ' +
      DataSet.FieldByName('DetailCode').AsString +
      'and DetailCode between ' + aRange;
    Active := True;
    isValid := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
  if not isValid then
  begin
    zbal.Title := 'كد نامعتبر';
    zbal.Prompt.Text :=
      'كد جديد تخصيص يافته نامعتبر است. لطفاً كد را بصورت دستي وارد كنيد.';
    zbal.Show(dbedtDetailCode);
  end; // if
  if CompanyFilterinLogin then
    DataSet.FieldByName('CompanyCode').AsInteger := 1
  else
    DataSet.FieldByName('CompanyCode').AsInteger :=
      IfThen(PanelCompony.Visible, qry_Company.FieldByName('CompanyCode')
      .AsInteger, minCompany);
  FCustID := -1;
  DataSet.FieldByName('FirstUser').AsString := User.Name;

  DataSet.FieldByName('InfoDate').AsString := var_glb_CurrentDate;

  dbedtDetailCode.SetFocus;
end;

procedure TDetailsF.qryDetailsAfterPost(DataSet: TDataSet);
var
  FDetailCode: Integer;
  accFieldName: string;
begin
  inherited;
  SaveOtherCustomers(qryCustomersOtherGroups, qryDetails, chklstOtherGroup);

  if FCustID = -1 then
    AddCoding(3, DataSet.FieldByName('DetailCode').AsInteger);
  BigMessage('ثبت شد.', 1);

  FDetailCode := qryDetailsDetailCode.AsInteger;
  case qryMasterDetailType.AsInteger of
    0, 1:
      accFieldName := 'acc_DetailCode';
    2:
      accFieldName := 'acc_CTopicCode';
    3:
      accFieldName := 'acc_CTopicCode2';
    4:
      accFieldName := 'acc_CTopicCode3';
  else
    accFieldName := 'acc_DetailCode';
  end;
  with Dmf.qry_Temp do
  begin
    Close;
    SQL.Text := 'update dbo.customers set ' + accFieldName + ' = ' +
      FDetailCode.ToString + '  where (custid = ' + FDetailCode.ToString +
      ') and (' + accFieldName + ' = 0)';
    ExecSQL;
    Close;
  end;

  qryDetails.Requery();
  qryDetails.Locate('DetailCode', FDetailCode, [])

end;

procedure TDetailsF.qryDetailsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(DelLevel, FormType) then
    Abort;
  with Dmf.qry_Temp do
  begin
    Close;
    SQL.Text :=
      format('SELECT DetailCode FROM acc.Documents  WHERE  DetailCode=%d',
      [qryDetails.FieldByName('DetailCode').AsInteger]);
    Open;
    if not(Dmf.qry_Temp.FieldByName('DetailCode').IsNull) then
    begin
      Warn('حذف كد مورد نظر مجاز نمي باشد');

      Active := False;
      Abort;
    end; // if
  end; // with

  if DBGrid1.SelectedRows.Count <= 1 then
    if get_response('آيا براي حذف اين كد مطمئن هستيد؟') <> mrYes then
      Abort;
end;

procedure TDetailsF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDetailsF.actPrint1Execute(Sender: TObject);
begin
  inherited;
  ppReport2.PreviewFormSettings.SinglePageOnly := True;
  ppReport2.Print;
end;

procedure TDetailsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDetailsF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  try
    qryDetails.DisableControls;
    qryMaster.DisableControls;
    // qryDetailRange.DisableControls;
    ppReport1.PreviewFormSettings.SinglePageOnly := True;
    ppReport1.Print;
  finally
    qryDetails.EnableControls;
    qryMaster.EnableControls;
    // qryDetailRange.EnableControls;
  end;
end;

procedure TDetailsF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  try
    qryDetails.DisableControls;
    qryMaster.DisableControls;
    // qryDetailRange.DisableControls;
    ppReport2.PreviewFormSettings.SinglePageOnly := True;
    ppReport2.Print;
  finally
    qryDetails.EnableControls;
    qryMaster.EnableControls;
    // qryDetailRange.EnableControls;
  end;
end;

procedure TDetailsF.actSortExecute(Sender: TObject);
begin
  inherited;
  // PopMSort.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  sort2F.ShowSort(qryDetails);
end;

procedure TDetailsF.qryDetailsBeforePost(DataSet: TDataSet);
var
  DetailName: string;
begin
  inherited;

  if (qryDetails.FieldByName('DetailCode').AsInteger < qryMaster.FieldByName
    ('StartRange').AsInteger) or (qryDetails.FieldByName('DetailCode').AsInteger
    > qryMaster.FieldByName('EndRange').AsInteger) then
  begin
    zbal.Title := 'كد نامعتبر';
    zbal.Prompt.Text := 'كد جديد تخصيص يافته خارج ازمحدوده تعريف شده است.';
    zbal.Show(dbedtDetailCode);
    dbedtDetailCode.SetFocus;
    Abort;
  end; // if

  with Dmf.qry_Temp do
  begin
    Active := False;
    DetailName := Trim(qryDetails.FieldByName('DetailName_L1').AsString);
    if DetailName = EmptyStr then
      DetailName := Trim(qryDetails.FieldByName('FirstName').AsString);

    SQL.Text := 'SELECT   COUNT(*) FROM Acc.MainDetails ' +
    // (CompanyCode  = ' + qryDetails.FieldByName('CompanyCode').AsString      + ') AND
      ' WHERE (RTRIM(LTRIM(DetailName_L1)) = ' + QuotedStr(DetailName) + ')' +
      'AND ( DetailCode <> ' + qryDetails.FieldByName('DetailCode')
      .AsString + ' )';
    Active := True;
    if Fields[0].AsInteger > 0 then
    begin
      Warn('نام تفصیلی وارد شده تکراری می باشد.');
      Active := False;
      Abort;
    end;
    Active := False;
  end;

  qryDetails.FieldByName('UseKindInCo').AsInteger :=
    qryMaster.FieldByName('UseKindInCo').AsInteger;

  TrimStringFields(qryDetails);
  qryDetails.FieldByName('DetailGroup').AsInteger :=
    qryMaster.FieldByName('DGID').AsInteger;

  if not CheckRequiredFields(qryDetails) then
    Abort;

  if not IsValidIBAN(qryDetails.FieldByName('CustAccountNumber').AsString) then
  begin
    Warn('شماره شبا معتبر نمي باشد');
  end;

end;

procedure TDetailsF.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  if chkAllCusts.Checked then
  begin
    DBGrid2.Enabled := False;
    with qryDetails do
    begin
      Active := False;
      LockType := ltReadOnly;
      Parameters.ParamByName('DGIDfrom').Value := -2147483647;
      Parameters.ParamByName('DGIDto').Value := 2147483647;
      Active := True;
    end; // with
    zbal.Title := ' توجه ';
    zbal.Prompt.Text := 'در اين حالت نمي توانيد كد جديدي اضافه كنيد.';
    zbal.Show(chkAllCusts);
    chkAllCusts.Checked;
  end // if
  else
  begin
    DBGrid2.Enabled := True;
    with qryDetails do
    begin
      Active := False;
      LockType := ltOptimistic;
      Parameters.ParamByName('DGIDfrom').Value := qryMasterDGID.AsInteger;
      Parameters.ParamByName('DGIDto').Value := qryMasterDGID.AsInteger;
      Active := True;
    end; // with
    chkAllCusts.Checked := False;
  end; // if
end;

procedure TDetailsF.chklstOtherGroupDblClick(Sender: TObject);
begin
  inherited;
  if not(qryDetails.State in dsEditModes) then
    qryDetails.Edit;
end;

procedure TDetailsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetails);
end;

procedure TDetailsF.qryMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  PanelCompony.Visible := (opta.CountCompany > 1) AND
    (qryMasterUseKindInCo.AsInteger <> 0);
end;

procedure TDetailsF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  grpOther.Caption := 'سایر گروههای مشتری(سطح تفصیلی = ' +
    qryMasterDetailType.AsString + ' )';

  if not DBLookupComboBox1.ListVisible then
    PanelCompony.Visible := qryMasterUseKindInCo.AsInteger <> 0;

  with qryDetails do
  begin
    Active := False;
    Parameters.ParamByName('DGIDfrom').Value := qryMasterDGID.AsInteger;
    Parameters.ParamByName('DGIDto').Value := qryMasterDGID.AsInteger;
    // Parameters.ParamByName('CompanyCode').Value :=
    // IfThen(PanelCompony.Visible, qry_Company.FieldByName('CompanyCode')
    // .AsInteger, minCompany);
    Active := True;
    // if IsEmpty then
    // qryDetailRange.Active := False;
  end;
  InitChkList(chklstOtherGroup, qryMasterDGID.AsInteger);

  with qryCustomersOtherGroups, Parameters do
  begin
    Active := False;
    ParamByName('CustId').Value := qryDetailsDetailCode.AsInteger;
    Active := True;
  end;
  LoadOtherCustomers(qryCustomersOtherGroups, chklstOtherGroup);

  if qryDetails.RecordCount = 0 then
  begin
    // del.Enabled := False;
    // com.Enabled := False;
    // buttonAccount.Enabled := False;
  end
  else
  begin
    // del.Enabled := True;
    // com.Enabled := True;
    // buttonAccount.Enabled := True;
  end;

  { if qryDetailRange.RecordCount = 0 then begin
    del.Enabled:=false;
    com.Enabled:=false;
    end else begin
    del.Enabled:=True;
    com.Enabled:=True;
    end; }
end;

procedure TDetailsF.qryDetailsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCustomersOtherGroups, Parameters do
  begin
    Active := False;
    ParamByName('CustId').Value := qryDetailsDetailCode.AsInteger;
    Active := True;
  end;
  LoadOtherCustomers(qryCustomersOtherGroups, chklstOtherGroup);
  // with qryDetailRange do
  // begin
  // Active := False;
  // Parameters.ParamByName('DetailCode').Value :=
  // qryDetails.FieldByName('DetailCode').AsInteger;
  // Parameters.ParamByName('CompanyCode').Value :=
  // qryDetails.FieldByName('CompanyCode').AsInteger;
  // qryDetailRange.Active := True;
  // end; // with
  //
  // // if qryDetailRange.RecordCount = 0 then
  // // begin
  // // // del.Enabled := False;
  // // // com.Enabled := False;
  // // end
  // // else
  // // begin
  // // // del.Enabled := True;
  // // // com.Enabled := True;
  // // end;

end;

procedure TDetailsF.qryDetailsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(AddLevel, FormType) then
    Abort;

  // if user.Level<3 then begin
  // warn('شما مجاز به ورود اطلاعات نمي باشيد');
  // abort;
  // end;
  if chkAllCusts.Checked then
    Abort;
end;

procedure TDetailsF.N1Click(Sender: TObject);
begin
  inherited;
  qryDetails.Sort := 'DetailCode';
end;

procedure TDetailsF.N2Click(Sender: TObject);
begin
  inherited;
  qryDetails.Sort := 'DetailName_L1';
end;

procedure TDetailsF.actNoteExecute(Sender: TObject);
begin
  inherited;
  // if qryDetailRange.FieldByName('TopicCode').IsNull then
  // Exit;
  // CategoresDetailNoteF.enter(qryDetailRange.FieldByName('TopicCode').AsLargeInt,
  // qryDetails.FieldByName('DetailCode').AsInteger,
  // qry_Company.FieldByName('CompanyCode').AsInteger);
end;

procedure TDetailsF.actRelationExecute(Sender: TObject);
begin
  inherited;
  // if qryDetails.State in [dsInsert] then
  // qryDetails.Post;
  // Topic_RelationF.ShowChooseDetail(qryDetails.FieldByName('DetailCode')
  // .AsInteger, 0, qry_Company.FieldByName('CompanyCode').AsInteger);
  // qryDetailRange.Requery;
end;

procedure TDetailsF.qryDetailsMakeDateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := miladi2Shamsi(qryDetails.FieldByName('MakeDate').AsDateTime);
end;

procedure TDetailsF.delClick(Sender: TObject);
begin
  inherited;
  // if opta.CheckRelation then
  // begin
  // if CheckRelationDetail(qryDetailRangeDetailCode.AsInteger,
  // qryDetailRangeTopicCode.AsInteger) then
  // begin
  // Warn('امكان حذف ارتباط نمي باشد.');
  // Abort;
  // end;
  // end;
  //
  // if get_response('آيا براي حذف ارتباط مطمئن هستيد؟') = mrYes then
  // with Dmf.qry_Temp do
  // begin
  // Close;
  // SQL.Text := 'delete FROM  acc.DetailRange where ID=' +
  // qryDetailRange.FieldByName('ID').AsString;
  // ExecSQL;
  // qryDetailRange.Requery();
  // end;
end;

procedure TDetailsF.actSearchExecute(Sender: TObject);
var
  results: array [0 .. 2] of string;
  txt: String;
begin
  inherited;
  txt := 'SELECT DetailGroup  as DGID, DetailCode, DetailName_L1 FROM acc.MainDetails WHERE (DetailCode <> 0)';
  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'ليست حسابهاي تفصيلي', txt,
    ['', 'كد', 'عنوان'], results, [0, 30, 200], alLeft) then
  begin
    qryMaster.Locate('DGID', results[0], []);
    qryDetails.Locate('DetailCode', results[1], []);
  end;

end;

procedure TDetailsF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TDetailsF.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDetailsF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TDetailsF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDetailsF.ppSystemVariable2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TDetailsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDetails.FieldByName('DetailCode'));
end;

procedure TDetailsF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMaster.FieldByName('DGID'));
end;

procedure TDetailsF.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // QuickSearch(Key, qryDetailRange.FieldByName('TopicCode'));
end;

procedure TDetailsF.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
  if qry_Company.Active then
    with qryMaster do
    begin
      Active := False;
      Parameters.ParamByName('CompanyCode').Value :=
        qry_Company.FieldByName('CompanyCode').AsInteger;
      Active := True;
    end;
  // with
end;

procedure TDetailsF.qryDetailRangeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // if qryDetailRange.RecordCount = 0 then
  // begin
  // // del.Enabled := False;
  // // com.Enabled := False;
  // end
  // else
  // begin
  // // del.Enabled := True;
  // // com.Enabled := True;
  // end;

end;

procedure TDetailsF.qryDetailsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(EdtLevel, FormType) then
    Abort;
  FCustID := qryDetailsDetailCode.AsInteger;
end;

procedure TDetailsF.actRelationGroupExecute(Sender: TObject);
var
  SL: TStringList;
  SqlTxt, S: String;

begin
  inherited;
  // SqlTxt := 'SELECT cast(acc.Categories.TopicCode as int ) as TopicCode, acc.Categories.MoeenName_L1'
  // + ' FROM acc.Categories LEFT OUTER JOIN' +
  // ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode'
  // + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL)';
  // SL := TStringList.Create;
  // try
  // qryDetails.DisableControls;
  // qryDetails.AfterScroll := nil;
  // qryDetailRange.First;
  // qryDetails.First;
  // S := selectedF.ShowSelect(Dmf.adcAccounting, '', SqlTxt,
  // ['كد ', ' عنوان معین'], alLeft, [35, 300]);
  // if Trim(S) = EmptyStr then
  // Exit;
  // while not qryDetails.eof do
  // begin
  // with Dmf.qry_Temp do
  // begin
  // Close;
  // SQL.Text := 'DELETE FROM acc.DetailRange';
  // SQL.Add('WHERE (DetailCode =' + qryDetails.FieldByName('DetailCode')
  // .AsString + ' )');
  // SQL.Add('AND (TopicCode in (' + S + ')) AND (CompanyCode = ' +
  // IntToStr(opta.DefaultCompany) + ')');
  // ExecSQL;
  // SQL.Text :=
  // 'INSERT INTO acc.DetailRange (TopicCode, DetailCode, CompanyCode)';
  // SQL.Add('SELECT  TopicCode, ' + qryDetails.FieldByName('DetailCode')
  // .AsString + ',' + IntToStr(opta.DefaultCompany));
  // SQL.Add('FROM acc.Categories');
  // SQL.Add('where TopicCode in (' + S + ')');
  //
  // ExecSQL;
  // end;
  // qryDetails.Next;
  // end; // WHILE
  // finally
  // qryDetails.EnableControls;
  // qryDetails.AfterScroll := qryDetailsAfterScroll;
  // FreeAndNil(SL);
  // end;
end;

procedure TDetailsF.actCustomerDeleteExecute(Sender: TObject);
begin
  inherited;
  // {$REGION 'Befor_Delete'}
  // if not Dmf.CheckLevel(DelLevel, FormType) then
  // Abort;
  // with Dmf.qry_Temp do
  // begin
  // Close;
  // SQL.Text :=
  // format('SELECT DetailCode FROM acc.Documents  WHERE  DetailCode=%d',
  // [qryDetails.FieldByName('DetailCode').AsInteger]);
  // Open;
  // if not(Dmf.qry_Temp.FieldByName('DetailCode').IsNull) then
  // begin
  // Warn('حذف كد مورد نظر مجاز نمي باشد');
  // Active := False;
  // Abort;
  // end; // if
  // end; // with
  // if get_response('آيا براي حذف اين كد مطمئن هستيد؟') <> mrYes then
  // Abort;
  // {$ENDREGION}
  // with Dmf.qry_Temp do
  // try
  // Close;
  // SQL.Text := 'delete from dbo.Customers where CustID = ' +
  // qryDetails.FieldByName('DetailCode').AsString;
  // ExecSQL;
  // BigMessage('حذف شد.', 1);
  // qryDetails.Requery;
  // except
  // on E: Exception do
  // begin
  // add2log(E.Message);
  // Warn('اشكال در ثبت');
  // end;
  // end;
end;

procedure TDetailsF.actCustomerPostExecute(Sender: TObject);

begin
  inherited;
  // {$REGION 'Befor_Post'}
  // if (qryDetails.FieldByName('DetailCode').AsInteger < qryMaster.FieldByName
  // ('StartRange').AsLargeInt) or
  // (qryDetails.FieldByName('DetailCode').AsInteger > qryMaster.FieldByName
  // ('EndRange').AsLargeInt) then
  // begin
  // zbal.Title := 'كد نامعتبر';
  // zbal.Prompt.Text := 'كد جديد تخصيص يافته خارج ازمحدوده تعريف شده است.';
  // zbal.Show(DBEdit1);
  // DBEdit1.SetFocus;
  // Abort;
  // end; // if
  //
  // with Dmf.qry_Temp do
  // begin
  // Active := False;
  // SQL.Text := 'SELECT   COUNT(*) FROM Acc.MainDetails ' +
  // ' WHERE (CompanyCode  = ' + qryDetails.FieldByName('CompanyCode').AsString
  // + ') AND (RTRIM(LTRIM(DetailName_L1)) = ' +
  // QuotedStr(Trim(qryDetails.FieldByName('DetailName_L1').AsString)) + ')' +
  // 'AND ( DetailCode <> ' + qryDetails.FieldByName('DetailCode')
  // .AsString + ' )';
  // Active := True;
  // if Fields[0].AsInteger > 0 then
  // begin
  // Warn('نام تفصیلی وارد شده تکراری می باشد.');
  // Active := False;
  // Abort;
  // end;
  // Active := False;
  // end;
  //
  // qryDetails.FieldByName('UseKindInCo').AsInteger :=
  // qryMaster.FieldByName('UseKindInCo').AsInteger;
  //
  // TrimStringFields(qryDetails);
  // qryDetails.FieldByName('DetailGroup').AsInteger :=
  // qryMaster.FieldByName('DGID').AsInteger;
  //
  // if not CheckRequiredFields(qryDetails) then
  // Abort;
  // {$ENDREGION}
  // FDetailCode := qryDetailsDetailCode.AsInteger;
  //
  // case qryMasterDetailType.AsInteger of
  // 0, 1:
  // accFieldName := 'acc_DetailCode';
  // 2:
  // accFieldName := 'acc_CTopicCode';
  // 3:
  // accFieldName := 'acc_CTopicCode2';
  // 4:
  // accFieldName := 'acc_CTopicCode3';
  // else
  // accFieldName := 'acc_DetailCode';
  // end;
  //
  // with Dmf.qry_Temp do
  // try
  // Close;
  // SQL.Text :=
  // 'SELECT CustID, CustName, CustName_L2, CustomerGrpID, ModifyDate, ' +
  // accFieldName +
  // ', NationalID, MaxCredit, Mobile, AccountKind FROM  dbo.Customers' +
  // ' Where CustID = ' + FCustID.ToString;
  // Open;
  // Edit;
  // FieldByName('CustID').AsInteger := FDetailCode;
  // FieldByName('CustName').AsString := qryDetailsDetailName_L1.AsString;
  // FieldByName('CustName_L2').AsString := qryDetailsDetailName_L2.AsString;
  // FieldByName('CustomerGrpID').AsInteger := qryDetailsDetailGroup.AsInteger;
  // FieldByName('ModifyDate').AsDateTime := qryDetailsMakeDate.AsDateTime;
  // FieldByName('NationalID').AsString := qryDetailsNationalID.AsString;
  // FieldByName(accFieldName).AsString := FDetailCode.ToString;
  // FieldByName('Mobile').AsString := qryDetailsMobile.AsString;
  // FieldByName('AccountKind').AsInteger := qryDetailsCurrencyType.AsInteger;
  // Post;
  // Close;
  // if FCustID = -1 then
  // AddCoding(3, FDetailCode);
  // BigMessage('ثبت شد.', 1);
  // qryDetails.Cancel;
  // qryDetails.Requery();
  // qryDetails.Locate('DetailCode', FDetailCode, []);
  // except
  // on E: Exception do
  // begin
  // add2log(E.Message);
  // Warn('اشكال در ثبت');
  // end;
  // end;
end;

procedure TDetailsF.actDeleteAllExecute(Sender: TObject);
var
  i, m: Integer;
begin
  inherited;
  m := 0;
  if DBGrid1.SelectedRows.Count > 1 then
  begin
    if get_response('آيا براي حذف کدهای انتخاب شده مطمئن هستيد؟') = mrYes then
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        qryDetails.GotoBookmark((DBGrid1.SelectedRows[i]));
        qryDetails.Delete;
        m := m + 1;
      end;
    BigMessage(IntToStr(m) + 'کدانتخاب شده حذف شد.‏ ', 1);
  end

end;

procedure TDetailsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    IsActGetExcel := True;
    qryDetails.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryDetails);
  finally
    IsActGetExcel := False;
    qryDetails.AfterPost := qryDetailsAfterPost;
    qryDetails.Requery([]);
  end;
end;

procedure TDetailsF.N3Click(Sender: TObject);
var
  S: String;
begin
  inherited;
  S := get_box(' تبديل كد ' + qryDetails.FieldByName('DetailCode').AsString,
    'به كد', '');
  If S <> EmptyStr then
    with Dmf.qry_Temp do
    begin
      Close;
      SQL.Text :=
        format('UPDATE  acc.Details SET DetailCode = %s WHERE(CompanyCode = %d) AND (DetailCode = %d)',
        [S, opta.DefaultCompany, qryDetails.FieldByName('DetailCode')
        .AsInteger]);
      if ExecSQL > 0 then
        BigMessage('تبديل شد.‏', 1);
      qryDetails.Requery();
    end;
end;

procedure TDetailsF.InitChkList(chklist: TCheckListBox; CustomerGrpID: Integer;
  IsFirstTime: Boolean = False);
begin
  chklist.Clear;
  with qryCustomersGroup do
  begin
    Open;
    first;
    while not eof do
    begin
      if (IsFirstTime) or (Fields[0].AsInteger <> CustomerGrpID) then
        chklist.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      Next;
    end;
  end;
end;

procedure TDetailsF.SaveOtherCustomers(qryOtherGroups, qryCustomers: TADOQuery;
  chklist: TCheckListBox);
var
  arr: TStringDynArray;
  i: SmallInt;
begin
  if not qryOtherGroups.Active then
    qryOtherGroups.Open;
  with qryOtherGroups do
  begin
    first;
    while not eof do
      Delete;
    arr := SplitString(GetCheckedCommaText(chklist), ',');
    for i := 0 to Length(arr) - 1 do
    begin
      Insert;
      qryOtherGroups.FieldByName('CustID').AsInteger :=
        qryCustomers.FieldByName('DetailCode').AsInteger;
      qryOtherGroups.FieldByName('CustomerGrpID').AsInteger := StrToInt(arr[i]);
      Post;
    end;
  end;
end;
// abedi 1400/11/07

procedure TDetailsF.LoadOtherCustomers(qryOtherGroups: TADOQuery;
  chklist: TCheckListBox);
var
  S: string;
begin
  with qryOtherGroups do
  begin
    first;
    while not eof do
    begin
      S := S + qryOtherGroups.FieldByName('CustomerGrpID').AsString + ',';
      Next;
    end;
    SetCheckedCommaText(chklist, S);
  end;
end;


// function TDetailsF.SaveCustomer;
// var
// GrpID: Integer;
// Detail: Integer;
// i: Byte;
// Ts: TStringList;
// Q: TADOQuery;
// begin
// if opta.DoInsertCust = 1 then
// if get_response('كد مشتري در سيستم خريد فروش وجود ندارد ،ايجاد شود؟') <>
// mrYes then
// Exit;
// Ts := TStringList.Create;
// Q := TADOQuery.Create(Self);
// Ts.Text := StringReplace(opta.BsellBankNames, ',', #13#10, [rfReplaceAll]);
// Detail := qryDetails.FieldByName('DetailCode').AsInteger;
// try
// For i := 0 To Ts.Count - 1 do
// begin
// opta.BsellBank := Ts[i];
// Dmf.adcBsell.Close;
// Dmf.adcBsell.Open;
// with Q do
// begin
// Connection := Dmf.adcBsell;
// Close;
// SQL.Text :=
// format('SELECT  COUNT(CustID) FROM   dbo.Customers WHERE  (CustID = %D)',
// [Detail]);
// Open;
// if Fields[0].AsInteger <> 0 then
// Exit;
//
// Close;
// SQL.Text := 'SELECT CustomerGrpID';
// SQL.Add('FROM dbo.CustomersGroup');
// SQL.Add('WHERE (StartCode <= :Code1) AND (FinishCode >= :Code2)');
// Parameters.ParamByName('Code1').Value := Detail;
// Parameters.ParamByName('Code2').Value := Detail;
// Open;
// if IsEmpty then
// Warn(format('در بانك %s گروهي براي اين كد تعريف نشده است ',
// [opta.BsellBank]))
//
// else
// begin
// GrpID := Fields[0].AsInteger;
//
// Close;
// SQL.Text :=
// 'if ((SELECT COUNT(CustID) FROM dbo.Customers WHERE (CustID = :CustID))=0)';
// SQL.Add('INSERT INTO dbo.Customers');
// SQL.Add('(CustID, CustomerGrpID, CustName, ModifyDate, acc_DetailCode)');
// SQL.Add('VALUES (:CustID2,:GrpID,:CustName,GetDate(),:CustID3)');
// Parameters.ParamByName('CustID').Value := Detail;
// Parameters.ParamByName('CustID2').Value := Detail;
// Parameters.ParamByName('CustID3').Value := Detail;
// Parameters.ParamByName('GrpID').Value := GrpID;
// Parameters.ParamByName('CustName').Value :=
// qryDetails.FieldByName('DetailName_L1').AsString;
// Result := ExecSQL > 0;
// end;
// end;
// end;
// finally
// Ts.Free;
// Dmf.adcBsell.Close;
// Q.Free;
// end;

// end;

end.
