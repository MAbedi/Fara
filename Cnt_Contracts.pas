unit Cnt_Contracts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DateUtils, DB, ADODB, DBCtrls, Mask, DM, GlobalPro, shamsiDate,
  zAPIBalloon, ppDB, ppDBPipe, ppParameter, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, Menus, ppVar, ppPrnabl, ppCtrls, Grids, Vcl.DBGrids,
  ppDesignLayer, System.ImageList, System.Actions, FarsiReportBuilde,
  System.StrUtils,math;

type
  TCnt_ContractsF = class(Ttemplate2MDIF)
    qryContracts: TADOQuery;
    srcContracts: TDataSource;
    qryContractsCaseNo: TIntegerField;
    qryContractsCustomerGrpId: TIntegerField;
    qryContractsContractTopic: TWideStringField;
    qryContractsInsertDate: TDateTimeField;
    qryContractsContractRow: TIntegerField;
    qryContractsContractNo: TStringField;
    qryContractsContractDate: TStringField;
    qryContractsEmployerId: TIntegerField;
    qryContractsWorkShopId: TIntegerField;
    qryContractsStartDate: TStringField;
    qryContractsEndDate: TStringField;
    qryContractsExecutionTime: TIntegerField;
    qryContractsActivityStartDate: TStringField;
    qryContractsRefInsuranceDate: TStringField;
    qryContractsInsuranceBranch: TWideStringField;
    qryContractsRefAssetsDate: TStringField;
    qryContractsAssetsBranch: TStringField;
    qryContractsContractType: TIntegerField;
    qryContractsUpperCaseNo: TIntegerField;
    qryContractsContractsStatus: TWordField;
    qryContractsAnticipateDate: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edtContractDate: TDBEdit;
    Label3: TLabel;
    edtEmployerId: TDBEdit;
    Label4: TLabel;
    edtInsertDate: TDBEdit;
    Label6: TLabel;
    edtStartDate: TDBEdit;
    Label7: TLabel;
    edtEndDate: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    edtActivityStartDate: TDBEdit;
    Label10: TLabel;
    edtAnticipateDate: TDBEdit;
    qryContractsContractBasePrice: TBCDField;
    Label11: TLabel;
    edtContractBasePrice: TDBEdit;
    Label13: TLabel;
    edtWorkShopId: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    edtContractNo: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BtnExcel: TBitBtn;
    Label21: TLabel;
    DBNavigator1: TDBNavigator;
    dbtxt_EmployerId: TDBText;
    btnEmployerId: TSpeedButton;
    dbtxt_WorkShopId: TDBText;
    btnWorkShopId: TSpeedButton;
    qryContracts_EmployerId: TStringField;
    qryContracts_WorkShopId: TStringField;
    qryContractsYearID: TIntegerField;
    qryContractsRefInsuranceNo: TStringField;
    qryContractsFromType: TIntegerField;
    qryContractsFromDate: TStringField;
    qryContractsAidDate: TStringField;
    qryContractsNote: TStringField;
    qryContractsInsuranceWorkShopId: TStringField;
    qryContractsRefAssetsNo: TStringField;
    Label22: TLabel;
    DBEdit3: TDBEdit;
    Label23: TLabel;
    edtCaseNo: TDBEdit;
    Label24: TLabel;
    edtFromDate: TDBEdit;
    Label25: TLabel;
    edtContractTopic: TDBEdit;
    dbrgrpContractType: TDBRadioGroup;
    Label26: TLabel;
    Label27: TLabel;
    edtAidDate: TDBEdit;
    edtAidNo: TDBEdit;
    qryContractsAidNo: TStringField;
    cmbGroups: TComboBox;
    zbal: TzAPIBalloon;
    chkAllCusts: TCheckBox;
    pnlUpperCaseNo: TPanel;
    btnUpperCaseNo: TSpeedButton;
    Label5: TLabel;
    edtUpperCaseNo: TDBEdit;
    actmnuCnt_ContractOperationsF: TAction;
    BitBtn1: TBitBtn;
    qryContractsTechnicalCode: TStringField;
    edtTechnicalCode: TDBEdit;
    Label39: TLabel;
    qryinit: TADOQuery;
    qryCustomers1: TADOQuery;
    qryCustomers2: TADOQuery;
    qryCustomers3: TADOQuery;
    qryContracts__ShomareParvande: TStringField;
    Label28: TLabel;
    DBEdit5: TDBEdit;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    btnCnt_ContractsProperties: TBitBtn;
    actPrint: TAction;
    PopMuPrint: TPopupMenu;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    actViewFileF: TAction;
    BitBtn6: TBitBtn;
    btnSearchReciptNumber: TSpeedButton;
    qryContracts_CustomerInfo: TStringField;
    dbtxt_CustomerInfo: TDBText;
    actInsertIntoSalary: TAction;
    actInsertIntoAcc: TAction;
    btnOtherMenu: TBitBtn;
    popSendTo: TPopupMenu;
    actInsertIntoAcc1: TMenuItem;
    InsertIntoSalary1: TMenuItem;
    qryContracts_NationalID: TStringField;
    qryContracts_Address: TStringField;
    qryContracts_Tel: TStringField;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    qryContracts_EconomicNumber: TStringField;
    edtEdtNationalID: TEdit;
    edtEdtEconomicNumber: TEdit;
    edtEdtTel: TEdit;
    edtAddress: TEdit;
    qryCustomersCaseNo: TADOQuery;
    mnuViewFileF: TMenuItem;
    actCnt_ContractsProperties: TAction;
    qryContractsProperties: TADOQuery;
    srcContractsProperties: TDataSource;
    plnContractsProperties: TppDBPipeline;
    pfld1: TppField;
    pfld2: TppField;
    pfld3: TppField;
    pfld4: TppField;
    pfld5: TppField;
    pfld6: TppField;
    pfld7: TppField;
    pfld8: TppField;
    pfld9: TppField;
    pfld10: TppField;
    pfld11: TppField;
    pfld12: TppField;
    pfld13: TppField;
    pfld14: TppField;
    pfld15: TppField;
    pfld16: TppField;
    pfld17: TppField;
    pfld18: TppField;
    pfld19: TppField;
    pfld20: TppField;
    pfld21: TppField;
    pfld22: TppField;
    pfld23: TppField;
    pfld24: TppField;
    pfld25: TppField;
    pfld26: TppField;
    pfld27: TppField;
    pfld28: TppField;
    pfld29: TppField;
    pfld30: TppField;
    pfld31: TppField;
    pfld32: TppField;
    pfld33: TppField;
    pfld34: TppField;
    pfld35: TppField;
    qryContractsPropertiesLookUpID: TIntegerField;
    qryContractsProperties_Name: TStringField;
    qryContractsPropertiesPropertiesEntity: TFMTBCDField;
    qryContractsPropertiesPropertiesNote: TStringField;
    pnl1: TPanel;
    grp1: TGroupBox;
    dbmmoNote: TDBMemo;
    grp2: TGroupBox;
    dbgrd1: TDBGrid;
    mnuCnt_ContractsProperties: TMenuItem;
    actEjareh: TAction;
    SpeedButton1: TSpeedButton;
    qry_Currencies: TADOQuery;
    pnlArz: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtArzRate: TDBEdit;
    edtArzAmount: TDBEdit;
    CmbArzTypeID: TDBComboBox;
    qryContractsArzTypeID: TIntegerField;
    qryContractsArzAmount: TBCDField;
    qryContractsArzRate: TFloatField;
    edtContractBasePrice1: TDBEdit;
    Label32: TLabel;
    qryContractsTaxAble: TWordField;
    dbchkTaxAble: TDBCheckBox;
    procedure srcContractsStateChange(Sender: TObject);
    procedure qryContractsAfterInsert(DataSet: TDataSet);
    procedure qryContractsStartDateChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure qryContractsInsertDateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryContractsBeforePost(DataSet: TDataSet);
    procedure qryContractsAfterPost(DataSet: TDataSet);
    procedure qryContractsBeforeDelete(DataSet: TDataSet);
    procedure qryContractsAfterDelete(DataSet: TDataSet);
    procedure BtnExcelClick(Sender: TObject);
    procedure btnEmployerIdClick(Sender: TObject);
    procedure btnWorkShopIdClick(Sender: TObject);
    procedure btnUpperCaseNoClick(Sender: TObject);
    procedure qryContractsContractsStatusGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cmbGroupsEnter(Sender: TObject);
    procedure chkAllCustsClick(Sender: TObject);
    procedure cmbGroupsClick(Sender: TObject);
    procedure dbrgrpContractTypeChange(Sender: TObject);
    procedure qryContractsAfterScroll(DataSet: TDataSet);
    procedure actmnuCnt_ContractOperationsFExecute(Sender: TObject);
    procedure edtEmployerIdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryContractsCalcFields(DataSet: TDataSet);
    procedure qryContractsBeforeEdit(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure mnu4allClick(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actViewFileFExecute(Sender: TObject);
    procedure qryContractsContractDateChange(Sender: TField);
    procedure qryContractsEndDateChange(Sender: TField);
    procedure qryContractsFromDateChange(Sender: TField);
    procedure btnSearchReciptNumberClick(Sender: TObject);
    procedure actInsertIntoSalaryExecute(Sender: TObject);
    procedure actInsertIntoAccExecute(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure qryContractsCaseNoChange(Sender: TField);
    procedure actCnt_ContractsPropertiesExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryContractsContractTopicChange(Sender: TField);
    procedure actEjarehExecute(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure qryContractsArzTypeIDChange(Sender: TField);
    procedure qryContractsArzAmountChange(Sender: TField);
  private
    GroupType, formType, GrpID: Integer;
    OrginalSQL: string;
    TemplateCode14: Boolean;
    ShowNotEntityOnSearch: LargeInt;
    procedure InitForm;
    procedure UpDateList(kind: Byte);
    function AddToCustomer(CustID: Integer; CustomerName: string): Boolean;
    function DelOfCustomer: Boolean;
    procedure UpDateEdit;
    function RequiredFieldsCustomer(edt: TEdit): Boolean;
    procedure initCombos2;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cnt_ContractsF: TCnt_ContractsF;

implementation

uses MMESSAGE, GetExcel, FormFunctions, searchCode_ADO, main, Ejare,
  Cnt_ContractOperations,  FaraConsts, Cnt_ContractsProperties,
  ViewFileOnServer;

{$R *.dfm}

procedure TCnt_ContractsF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  popSendTo.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCnt_ContractsF.btnSearchReciptNumberClick(Sender: TObject);
begin
  inherited;
  btnContractsCaseNo(qryContracts)
end;

procedure TCnt_ContractsF.btnUpperCaseNoClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := 'SELECT CaseNo,ContractRow,ContractTopic,ContractNo,ContractDate ' +
    'FROM Cnt.Contracts WHERE (ContractType = 0 )';
  txt := txt + Format('AND (EmployerId = %d )',
    [qryContractsEmployerId.AsInteger]);

  b := searchCode_ADOF.SearchCode2(DMf.adcBsell, 'قراردادهاي اوليه', txt,
    ['سريال', 'رديف', 'عنوان كلي قرارداد', 'شماره قرارداد', 'تاريخ انعقاد'],
    Results, [50, 50, 100, 100, 100], alLeft);
  if b then
    qryContracts.FieldByName('UpperCaseNo').AsString := Results[0];
end;

procedure TCnt_ContractsF.btnEmployerIdClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 7] of String;
begin
  inherited;
  qryCustomers1.Active := False;
  qryCustomers1.Active := True;
  txt := 'SELECT DISTINCT CustID,CustName,Address,Tel,PersonID3,' +
    'UseUnitID,Mobile,Fax FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind1', qryinit);
  b := searchCode_ADOF.SearchCode2(DMf.adcBsell,
    qryinit.FieldByName('Person1Caption').AsString + ' ها ', txt,
    ['کد', qryinit.FieldByName('Person1Caption').AsString, 'آدرس', 'تلفن',
    'مشتري3', 'محل مصرف', 'همراه', 'دورنما'], Results,
    [50, 150, 200, 50, 50, 50, 50, 50], alLeft);
  if b then
  begin
    qryContracts['EmployerId'] := Results[0];
  end;
  // if
end;

procedure TCnt_ContractsF.btnWorkShopIdClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  qryCustomers2.Active := False;
  qryCustomers2.Active := True;
  txt := 'SELECT DISTINCT CustID,CustName,Address,Tel,' +
    'Mobile,Fax FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind2', qryinit);
  b := searchCode_ADOF.SearchCode2(DMf.adcBsell,
    qryinit.FieldByName('Person2Caption').AsString + ' ها ', txt,
    ['کد', qryinit.FieldByName('Person2Caption').AsString, 'آدرس', 'تلفن',
    'همراه', 'دورنما'], Results, [50, 150, 200, 50, 50, 50], alLeft);
  if b then
  begin
    qryContracts['WorkShopId'] := Results[0];
  end; // if
end;

procedure TCnt_ContractsF.chkAllCustsClick(Sender: TObject);
begin
  inherited;
  UpDateList(2)
end;

procedure TCnt_ContractsF.cmbGroupsClick(Sender: TObject);
begin
  inherited;
  UpDateList(1);
end;

procedure TCnt_ContractsF.cmbGroupsEnter(Sender: TObject);
begin
  inherited;
  cmbGroups.DroppedDown := True;
end;

procedure TCnt_ContractsF.BtnExcelClick(Sender: TObject);
begin
  inherited;
  try
    qryContracts.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryContracts);
  finally
    qryContracts.AfterPost := qryContractsAfterPost;
  end;
end;
procedure TCnt_ContractsF.initCombos2;
var
  ArzActive: Integer;
begin
  with DMf.qryTmpTmp do
  begin
    ArzActive := qryinit.FieldByName('ArzActive').AsInteger ;
    if ArzActive > 0 then
    begin
      Active := False;
      SQL.Text := 'SELECT CurrenciesID, CurrenciesName FROM Currencies';
      Active := True;
      while not eof do
      begin
        CmbArzTypeID.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end;
      edtArzRate.ReadOnly := ArzActive <> 1;
      edtContractBasePrice1.ReadOnly := ArzActive = 2;
    end;
    Active := False;

  end; // with
end;

procedure TCnt_ContractsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
  initCombos2;
end;

procedure TCnt_ContractsF.InitForm;
begin
  GroupType := 15;
  formType := var_glb_gParam;
  OrginalSQL := qryContracts.SQL.Text;
  InitCombos(cmbGroups,
    'SELECT CustomerGrpID, CustomerGrpName+SPACE((SELECT MAX(LEN(CustomerGrpName))+2 FROM CustomersGroup WHERE GroupType='
    + IntToStr(GroupType) +
    ')-LEN(CustomerGrpName)) + ''از كد'' + str(StartCode)' +
    '+ '' تا كد '' + str(FinishCode) AS  CustomerGrpName ' +
    ' FROM CustomersGroup  WHERE (GroupType = ' + IntToStr(GroupType) + ') ' +
    SetWhereCustGroups + ' ORDER BY CustomerGrpID');
  qryContracts.Parameters.ParamByName('GroupType').Value := GroupType;
  qryContracts.Parameters.ParamByName('fromType').Value := formType;
  actmnuCnt_ContractOperationsF.Caption :=
    mainF.mnuCnt_ContractOperationsF.Caption;

  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := formType;
    Active := True;
    Caption := FieldByName('ReciptCaption').AsString;
    lblCaption.Hint := FieldByName('ReciptType').AsString;
    TemplateCode14 := FieldByName('TemplateCode').AsInteger = 14;
    ShowNotEntityOnSearch := FieldByName('ShowNotEntityOnSearch').AsLargeInt;
    pnlArz.Visible := FieldByName('ArzActive').AsInteger >= 1;

  end;
  initReportName(qryinit, PopMuPrint, mnu4allClick);
  NotNull(qryinit.FieldByName('CustomerKind1').AsString,
    'هيچ گروهي براي گروه مشتري 1 مشخص نشده است');
  with qryCustomers1 do
  begin
    Active := False;
    SQL.Add(GetCustomersGroupTypeSQL('CustomerKind1', qryinit));
  end; // with

  NotNull(qryinit.FieldByName('CustomerKind2').AsString,
    'هيچ گروهي براي گروه مشتري 2  مشخص نشده است');
  with qryCustomers2 do
  begin
    Active := False;
    SQL.Add(GetCustomersGroupTypeSQL('CustomerKind2', qryinit));
  end; // with

  NotNull(qryinit.FieldByName('CustomerKind3').AsString,
    'هيچ گروهي براي گروه مشتري 3  مشخص نشده است');
  with qryCustomers3 do
  begin
    Active := False;
    SQL.Add(GetCustomersGroupTypeSQL('CustomerKind3', qryinit));
  end; // with

end;

procedure TCnt_ContractsF.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
end;

procedure TCnt_ContractsF.qryContractsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('قرارداد حذف شد.', 1);
end;

procedure TCnt_ContractsF.qryContractsAfterInsert(DataSet: TDataSet);
var
  GrpID: Integer;
  aRange, txt: String;
  isValid: Boolean;
  rFrom, rTo: Integer;
begin
  inherited;
  if (cmbGroups.ItemIndex = -1) then
  begin
    zbal.Prompt.Text := 'لطفاً قبل از تعريف قرارداد جديد گروه آنرا مشخص كنيد.';
    zbal.Title := 'اخطار!';
    zbal.Show(cmbGroups);
    DataSet.Cancel;
    Exit;
  end;
  // if
  GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  if opt.RecoverPittedCode in [0] then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'Select StartCode,FinishCode,acc_CTopicCode,acc_CTopicCode2 from CustomersGroup where CustomerGrpID='
        + IntToStr(GrpID);
      Active := True;
      rFrom := Fields[0].AsInteger;
      rTo := Fields[1].AsInteger;
      aRange := Format('%d and %d', [rFrom, rTo]);
      Active := False;
      if aRange = ' and ' then
        aRange := '-999999999 and 999999999';
      DataSet.FieldByName('CaseNo').AsInteger :=
        GetANewCode(self.Name,
        'Select max(CaseNo) from Cnt.Contracts where CaseNo between ' + aRange +
        'and CustomerGrpID =' + IntToStr(GrpID), 'CustID');
      if not((DataSet.FieldByName('CaseNo').AsInteger >= rFrom) and
        (DataSet.FieldByName('CaseNo').AsInteger <= rTo)) then
        DataSet.FieldByName('CaseNo').AsInteger := rFrom;
      Active := False;
      SQL.Text := 'Select count(CaseNo) from Cnt.Contracts where CaseNo = ' +
        DataSet.FieldByName('CaseNo').AsString + ' and CustomerGrpID = ' +
        IntToStr(GrpID);
      Active := True;
      isValid := Fields[0].AsInteger = 0;
      Active := False;
      if not isValid then
      begin
        zbal.Title := 'كد نامعتبر';
        zbal.Prompt.Text :=
          'كد جديد تخصيص يافته نامعتبر است. لطفاً كد را بصورت دستي وارد كنيد.';
        zbal.Show(DBEdit1);
      end; // if
    end // with
  else
    DataSet.FieldByName('CaseNo').AsInteger :=
      New_RecoverPittedCode(Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]
      ), 'CaseNo', self.Name);
  DataSet.FieldByName('CustomerGrpID').AsInteger := GrpID;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('FromType').AsInteger := formType;
  DataSet.FieldByName('InsertDate').AsDateTime := now;

  txt := 'SELECT MAX(ContractRow)FROM Cnt.Contracts WHERE(FromType=' +
    qryinit.FieldByName('ReciptType').AsString + ')';

  DataSet.FieldByName('ContractRow').AsInteger :=
    GetANewCode(qryinit.FieldByName('ReciptType').AsString, txt, 'ContractRow');

  DataSet.FieldByName('ContractDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('StartDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('EndDate').AsString := APPBank.endYear;
  DataSet.FieldByName('ActivityStartDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('AnticipateDate').AsString := APPBank.endYear;
  DataSet.FieldByName('FromDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('ContractsStatus').AsInteger := 0;
end;

procedure TCnt_ContractsF.qryContractsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (ShowNotEntityOnSearch and Integer(CHKAddToCustomer)) <> 0 then
    if not AddToCustomer(qryContractsEmployerId.AsInteger, EmptyStr) then
      Warn('اشكال در ثبت مشتری كدطرف قرارداد');

  if qryinit.FieldByName('AutoCorrelate').AsInteger = 1 then
    if not AddToCustomer(qryContractsCaseNo.AsInteger,
      qryContractsContractTopic.AsString) then
      Warn('اشكال در ثبت مشتری شناسه قرارداد');

  BigMessage('ثبت شد.', 1);
end;

procedure TCnt_ContractsF.qryContractsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryContractsProperties do
  begin
    Active := False;
    Parameters.ParamByName('CaseNo').Value := qryContracts.FieldByName('CaseNo')
      .AsInteger;
    Active := True;
  end;
  pnlUpperCaseNo.Visible := dbrgrpContractType.ItemIndex > 0;
  UpDateEdit
end;

procedure TCnt_ContractsF.qryContractsArzAmountChange(Sender: TField);
var
  r: Currency;
begin
  inherited;
  r := RoundTo(qryContracts.FieldByName('ArzRate').AsFloat *
    (qryContracts.FieldByName('ArzAmount').AsFloat), 0);
  if qryContracts.FieldByName('ContractBasePrice').AsCurrency <> r then
    qryContracts.FieldByName('ContractBasePrice').AsCurrency := r;

end;

procedure TCnt_ContractsF.qryContractsArzTypeIDChange(Sender: TField);
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT TOP 1 EqualityWithMainUnit FROM CurrenciesItems';
    SQL.Add('WHERE (CurrenciesID = :ID ) AND (CurrenciesDate <= :Date )');
    SQL.Add('ORDER BY CurrenciesDate DESC, CurrenciesTime DESC');
    Parameters.ParamByName('ID').Value := Sender.AsInteger;
    Parameters.ParamByName('Date').Value := qryContractsContractDate.AsString;
    Active := True;
    qryContracts.FieldByName('ArzRate').AsFloat := Fields[0].AsFloat;
    Active := False;
  end;
end;

procedure TCnt_ContractsF.qryContractsCaseNoChange(Sender: TField);
begin
  inherited;
  UpDateEdit
end;

procedure TCnt_ContractsF.UpDateEdit;
begin
  inherited;
  edtEdtNationalID.Text := qryContracts_NationalID.AsString;
  edtEdtEconomicNumber.Text := qryContracts_EconomicNumber.AsString;
  edtEdtTel.Text := qryContracts_Tel.AsString;
  edtAddress.Text := qryContracts_Address.AsString;
end;

procedure TCnt_ContractsF.actmnuCnt_ContractOperationsFExecute(Sender: TObject);
begin
  inherited;
  mainF.mnuCnt_ContractOperationsF.Click;
  if not Cnt_ContractOperationsF.qryContracts.Locate('CaseNo',
    qryContractsCaseNo.AsInteger, []) then
    Warn('قرار داد يافت نشد');

end;

procedure TCnt_ContractsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryContracts.DisableControls;
    PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
  finally
    qryContracts.EnableControls;
  end;
end;

procedure TCnt_ContractsF.actViewFileFExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.enter(qryContracts.FieldByName('CaseNo').AsString,
    'ContractsFiles' + IntToStr(formType), True);
end;

function TCnt_ContractsF.AddToCustomer(CustID: Integer;
  CustomerName: string): Boolean;
var
  s, CustName, acc_DetailCode, acc_CTopicCode2, acc_CTopicCode: string;
  i: Integer;
begin
  Result := True;
  // if qryinit.FieldByName('AutoCorrelate').AsInteger = 2 then
  // Exit;

  CustName := CustomerName;
  if (ShowNotEntityOnSearch and Integer(CHKAddToCustomer)) <> 0 then
  begin
    acc_DetailCode := qryContractsEmployerId.AsString;
    acc_CTopicCode := qryContractsCaseNo.AsString;
    acc_CTopicCode2 := qryContractsWorkShopId.AsString;
  end
  else
  begin
    acc_CTopicCode := qryContractsWorkShopId.AsString;
    if TemplateCode14 then
    begin
      CustName := qryContractsContractNo.AsString;
      acc_DetailCode := qryContractsCaseNo.AsString;
      acc_CTopicCode2 := '0';

    end
    else
    begin
      acc_DetailCode := qryContractsEmployerId.AsString;
      acc_CTopicCode2 := qryContractsCaseNo.AsString;
    end;
  end;

  Try
    s := 'INSERT INTO Customers (CustID, CustomerGrpID, CustName, ModifyDate' +
      ',TechnicalCode,acc_DetailCode,acc_CTopicCode,acc_CTopicCode2' +
      ',NationalID,EconomicNumber,Tel,Address,CustomerNote)' +
      'VALUES (%d, %D, %s, GETDATE(),%s,%s,%s,%s,%s,%s,%s,%s,%s)';
    s := Format(s, [CustID, qryContractsCustomerGrpId.AsInteger,
      QuotedStr(CustName), QuotedStr(qryContractsTechnicalCode.AsString),
      acc_DetailCode, acc_CTopicCode, acc_CTopicCode2,
      QuotedStr(Trim(edtEdtNationalID.Text)),
      QuotedStr(Trim(edtEdtEconomicNumber.Text)), QuotedStr(Trim(edtEdtTel.Text)
      ), QuotedStr(Trim(edtAddress.Text)),
      QuotedStr(qryContractsContractTopic.AsString)]);
    DMf.adcBsell.Execute(s, i, []);

    // acc_DetailCode = EmployerId , acc_CTopicCode = WorkShopId , acc_CTopicCode2 = CaseNo
  except
    s := 'UPDATE Customers SET ' + ifthen(CustName = EmptyStr, '',
      Format('CustName = %s ,', [QuotedStr(CustName)])) + 'TechnicalCode = %s '
      + ',NationalID = %s ,EconomicNumber = %s ,Tel = %s ,Address = %s ,CustomerNote = %s '
      + 'WHERE (CustID = %d)';
    s := Format(s, [QuotedStr(qryContractsTechnicalCode.AsString),
      QuotedStr(Trim(edtEdtNationalID.Text)),
      QuotedStr(Trim(edtEdtEconomicNumber.Text)), QuotedStr(Trim(edtEdtTel.Text)
      ), QuotedStr(Trim(edtAddress.Text)),
      QuotedStr(qryContractsContractTopic.AsString), CustID]);
    DMf.adcBsell.Execute(s, i, []);

  End;
  Result := i = 1;
  qryCustomersCaseNo.Requery();
  qryCustomers1.Requery();
end;

procedure TCnt_ContractsF.actCnt_ContractsPropertiesExecute(Sender: TObject);
begin
  inherited;
  Cnt_ContractsPropertiesF.enter(qryContracts, qryinit);
  qryContractsProperties.Requery();
end;

procedure TCnt_ContractsF.actEjarehExecute(Sender: TObject);
begin
  inherited;
  CreateChildForm(TEjareF, EjareF, mainF, qryContractsCaseNo.AsInteger, alNone);
end;

procedure TCnt_ContractsF.actInsertIntoAccExecute(Sender: TObject);
var
  s: string;
  i: Integer;
begin
  inherited;
  Try
    // __Contact_Cod_Update for mh.rezaei
    s := 'UPDATE __Contact_Cod_Update' +
      ' SET acc_DetailCode = EmployerId , acc_CTopicCode = WorkShopId , acc_CTopicCode2 = CaseNo';
    DMf.adcBsell.Execute(s, i, []);
    s := 'INSERT INTO %s.Acc.CenterTopics2' +
      ' (CTopicCode2, CTopicName2_L1, LevelID, MakeDate)' +
      ' SELECT CaseNo, ''ق : '' + ContractNo + '' ت: '' + ContractDate + '' کد: '' + STR(EmployerId) AS CtopicName, 72 AS Expr1,'
      + ' InsertDate' + ' FROM Cnt.Contracts' + ' WHERE (CaseNo NOT IN' +
      ' (SELECT CTopicCode2' +
      ' FROM %s.Acc.CenterTopics2 AS CenterTopics2_1))';
    s := Format(s, [opt.AccountName, opt.AccountName]);
    DMf.adcBsell.Execute(s, i, []);
    BigMessage(Format('%d مورد با موفقيت ارسال شد', [i]), 1);
  except
    on e: Exception do
    begin
      add2log(e.Message);
      Warn('اشكال در ارسال ' + #13#10 + e.Message);
    end;
  end;

end;

procedure TCnt_ContractsF.actInsertIntoSalaryExecute(Sender: TObject);
var
  s, SalaryDbName: string;
  i: Integer;
begin
  inherited;
  SalaryDbName := ReadConfig(AppID, 'SalaryDbName', 'Salary_daneshgar1_1393');
  SalaryDbName := get_box('بانك حقوق دستمزد',
    'نام بانك حقوق دستمزد مقصد را وارد كنيد', SalaryDbName);
  if SalaryDbName = EmptyStr then
    Exit;
  try
    s := 'INSERT INTO %s.dbo.formsinfo' +
      ' (forminfoid,infoid, infoname_l1, formtype,AccDetailCode ,accCTopicCode ,accCTopicCode2 ,'
      + ' PrvInfoID)' + ' ' + ' SELECT (SELECT MAX(FormInfoID) AS Expr1' +
      ' FROM %s.dbo.FormsInfo) + Cnt.Contracts.CaseNo - 100000 AS FormInfoID,' +
      ' Cnt.Contracts.CaseNo,' +
      ' Customers.CustName + '' - '' + ''ق : '' + Cnt.Contracts.ContractNo + '' ت: '' + Cnt.Contracts.ContractDate AS'
      + ' CtopicName,' +
      ' 41 AS formtype, Cnt.Contracts.EmployerId, Cnt.Contracts.WorkShopId, Cnt.Contracts.CaseNo AS Expr1,'
      + '  IsNull( derivedtbl_1.FormInfoID,0) AS FormInfoID' +
      ' FROM Cnt.Contracts INNER JOIN' +
      ' Customers ON Cnt.Contracts.EmployerId = Customers.CustID INNER JOIN' +
      ' CustomersGroup ON Cnt.Contracts.CustomerGrpId = CustomersGroup.CustomerGrpID LEFT OUTER JOIN'
      + ' (SELECT FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2,'
      + ' Coefficient, StandardDays, StandardTimes,' +
      ' AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType,'
      + ' RecallFormInfoID1, RecallFormInfoID2, WordDocuments,' +
      ' RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3,'
      + ' PayMentActive, TaxCode, WageCalcKind, FormInfoID2, Years, Note' +
      ' FROM %s.dbo.FormsInfo AS FormsInfo_1' +
      ' WHERE (FormType = 39)) AS derivedtbl_1 ON Cnt.Contracts.CustomerGrpId = derivedtbl_1.InfoID'
      + ' where Cnt.Contracts.CaseNo not in (SELECT InfoID FROM %s.dbo.FormsInfo AS FormsInfo_5'
      + ' WHERE (FormType = 41))';

    s := Format(s, [SalaryDbName, SalaryDbName, SalaryDbName, SalaryDbName]);
    DMf.adcBsell.Execute(s, i, []);

    BigMessage(Format('%d مورد با موفقيت ارسال شد', [i]), 1);
    SaveConfig(AppID, 'SalaryDbName', SalaryDbName);
  except
    on e: Exception do
    begin
      add2log(e.Message);
      Warn('اشكال در ارسال ' + #13#10 + e.Message);
    end;
  end;

end;

procedure TCnt_ContractsF.qryContractsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  qryContractsBeforeEdit(DataSet);
  // if qryContracts.FieldByName('ContractsStatus').AsInteger<>0 then
  // begin
  // Abort;
  // Warn('امكان حذف و ويرايش در اين وضعيت وجود ندارد');
  // end;
  if get_response(' آيا براي حذف قرارداد مطمئن هستيد؟') <> mrYes then
    Abort;
  if not DelOfCustomer then
  begin
    Abort;
    Warn('اشكال در ثبت');
  end
end;

procedure TCnt_ContractsF.qryContractsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryContracts.FieldByName('ContractsStatus').AsInteger <> 0 then
  begin
    Warn('امكان حذف و ويرايش در اين وضعيت وجود ندارد');
    Abort;
  end;

end;

procedure TCnt_ContractsF.dbrgrpContractTypeChange(Sender: TObject);
begin
  inherited;
  pnlUpperCaseNo.Visible := dbrgrpContractType.ItemIndex > 0
end;

function TCnt_ContractsF.DelOfCustomer: Boolean;
var
  s: string;
  i: Integer;
begin
  if qryinit.FieldByName('AutoCorrelate').AsInteger = 2 then
  begin
    Result := True;
    Exit;
  end;

  Try
    s := 'DELETE Customers WHERE (CustID = %d)';
    s := Format(s, [qryContractsCaseNo.AsInteger]);
    DMf.adcBsell.Execute(s, i, []);
  except
  End;
  Result := i = 1;
end;

procedure TCnt_ContractsF.edtEmployerIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    TSpeedButton(FindComponent('Btn' + (Sender as TDBEdit).DataField)).Click;
end;

procedure TCnt_ContractsF.UpDateList(kind: Byte);
begin
  qryContracts.SQL.Text := OrginalSQL;
  if cmbGroups.ItemIndex = -1 then
    GrpID := 0
  else
    GrpID := Integer(cmbGroups.Items.Objects[cmbGroups.ItemIndex]);
  case kind of
    1:
      begin
        with qryContracts do
        begin
          Active := False;
          Parameters.ParamByName('CustomerGrpIDForm').Value := GrpID;
          Parameters.ParamByName('CustomerGrpIDTo').Value := GrpID;
          Active := True;
        end;
        // with
      end;
    2:
      begin
        if chkAllCusts.Checked then
        begin
          cmbGroups.Enabled := False;
          with qryContracts do
          begin
            Active := False;
            Parameters.ParamByName('CustomerGrpIDForm').Value := -999999999;
            Parameters.ParamByName('CustomerGrpIDTo').Value := 2147483647;
            Active := True;
          end; // with
          chkAllCusts.Checked;
        end // if
        else
        begin
          cmbGroups.Enabled := True;
          with qryContracts do
          begin
            Active := False;
            Parameters.ParamByName('CustomerGrpIDForm').Value := GrpID;
            Parameters.ParamByName('CustomerGrpIDTo').Value := GrpID;
            Active := True;
          end;
          // with
          chkAllCusts.Checked := False;
        end; // if
      end;
    3:
      begin
        // if Length(mySelected) > 1 then
        // with qryContracts do
        // begin
        // cmbGroups.ItemIndex := -1;
        // Active := False;
        // SQL.Text := StringReplace(OrginalSQL,
        // 'between :CustomerGrpIDForm and :CustomerGrpIDTO',
        // 'in(' + mySelected + ')', [rfReplaceAll]);
        // Active := True;
        // end; // with
      end;
  end;
  ColorDBEdits(self);
end;

procedure TCnt_ContractsF.qryContractsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if ((opt.RequiredCustomers and Integer(RcChkNationalID)) <> 0) then
    if not RequiredFieldsCustomer(edtEdtNationalID) then
      Abort;

  if ((opt.RequiredCustomers and Integer(RcChkEconomicNumber)) <> 0) then
    if not RequiredFieldsCustomer(edtEdtEconomicNumber) then
      Abort;

  if ((opt.RequiredCustomers and Integer(RcChkTel)) <> 0) then
    if not RequiredFieldsCustomer(edtEdtTel) then
      Abort;

  if ((opt.RequiredCustomers and Integer(RcChkAddress)) <> 0) then
    if not RequiredFieldsCustomer(edtAddress) then
      Abort;

  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  TrimStringFields(DataSet);
end;

function TCnt_ContractsF.RequiredFieldsCustomer(edt: TEdit): Boolean;
begin
  Result := Trim(edt.Text) <> EmptyStr;
  if not Result then
  begin
    Warn('اطلاعات مشتری تکمیل نشده است');
    FlashAControl(edt);
  end;
end;

procedure TCnt_ContractsF.qryContractsCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryContracts.FieldByName('__ShomareParvande').AsString :=
    qryContracts.FieldByName('EmployerId').AsString + '-' +
    qryContracts.FieldByName('WorkShopId').AsString + '-' +
    qryContracts.FieldByName('ContractRow').AsString;

end;

procedure TCnt_ContractsF.qryContractsContractDateChange(Sender: TField);
begin
  inherited;
  if qryContractsEmployerId.IsNull then
  begin
    qryContracts.FieldByName('StartDate').AsString := Sender.AsString;
    qryContracts.FieldByName('ActivityStartDate').AsString := Sender.AsString;
  end;
end;

procedure TCnt_ContractsF.qryContractsContractsStatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := ContractsStatuss[Sender.AsInteger];
end;

procedure TCnt_ContractsF.qryContractsContractTopicChange(Sender: TField);
begin
  inherited;
  if (TemplateCode14) and (Trim(edtAddress.Text) = EmptyStr) then
  begin
    edtAddress.Text := Sender.AsString
  end;
end;

procedure TCnt_ContractsF.qryContractsEndDateChange(Sender: TField);
begin
  inherited;
  qryContracts.FieldByName('ExecutionTime').AsInteger :=
    MonthsBetween(Shamsi2Miladi(qryContracts.FieldByName('StartDate').AsString),
    Shamsi2Miladi(qryContracts.FieldByName('EndDate').AsString));
  if qryContracts.FieldByName('WorkShopId').IsNull then
    qryContracts.FieldByName('AnticipateDate').AsString := Sender.AsString;
end;

procedure TCnt_ContractsF.qryContractsFromDateChange(Sender: TField);
begin
  inherited;
  if qryContractsEmployerId.IsNull then
  begin
    qryContracts.FieldByName('ContractDate').AsString := Sender.AsString;
  end;
end;

procedure TCnt_ContractsF.qryContractsInsertDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Format('%s %s‏', [FormatDateTime('t', Sender.AsDateTime),
    miladi2Shamsi(Sender.AsDateTime)]);
end;

procedure TCnt_ContractsF.qryContractsStartDateChange(Sender: TField);
begin
  inherited;
  qryContracts.FieldByName('ExecutionTime').AsInteger :=
    MonthsBetween(Shamsi2Miladi(qryContracts.FieldByName('StartDate').AsString),
    Shamsi2Miladi(qryContracts.FieldByName('EndDate').AsString));

  // if qryContractsActivityStartDate.IsNull then
  // qryContractsActivityStartDate.AsString := qryContractsStartDate.AsString

end;

procedure TCnt_ContractsF.srcContractsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryContracts.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  // FreeReservedCodes(DMf.adcBsell, 'Cnt.Contracts');

  FreeReservedCodes(DMf.adcBsell, 'Cnt.Contracts', '', IntToStr(formType));
  FreeReservedCodes(DMf.adcBsell, '', '', self.Name);

end;

procedure TCnt_ContractsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TCnt_ContractsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TCnt_ContractsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TCnt_ContractsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TCnt_ContractsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(dbgrd1, 2);
end;

procedure TCnt_ContractsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(dbgrd1);
end;

procedure TCnt_ContractsF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TCnt_ContractsF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;


end.
