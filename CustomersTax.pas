unit CustomersTax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppParameter, ReciptsFunctions, System.Actions;

type
  TCustomersTaxF = class(TTemplate4F)
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    Label1: TLabel;
    edtCustName: TDBEdit;
    Label3: TLabel;
    edtCustFirstName: TDBEdit;
    newPanel: TPanel;
    BitBtn9: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    actPrint: TAction;
    actOther: TAction;
    qryCustomersCustName: TStringField;
    qryCustomersCountry: TStringField;
    qryCustomersCity: TStringField;
    qryCustomersWebSite: TStringField;
    qryCustomersRegion: TStringField;
    qryCustomersAddress: TStringField;
    qryCustomersTel: TStringField;
    qryCustomersFax: TStringField;
    qryCustomersemail: TStringField;
    qryCustomerspobox: TStringField;
    qryCustomersMaxCredit: TFMTBCDField;
    qryCustomersEconomicNumber: TStringField;
    qryCustomersPostalCode: TStringField;
    qryCustomersCustomerNote: TStringField;
    qryCustomersBankName: TStringField;
    qryCustomersAccountNumber: TStringField;
    qryCustomersAccountKind: TWordField;
    qryCustomersBankReports: TStringField;
    qryCustomersManageName: TStringField;
    qryCustomersManagerSells: TStringField;
    qryCustomersContactNo: TStringField;
    qryCustomersNationalID: TStringField;
    qryCustomersMobile: TStringField;
    qryCustomersMaxCreditCurrentForm: TBCDField;
    qryCustomersTel2: TWideStringField;
    qryCustomersTel3: TWideStringField;
    qryCustomersPurchasePercent: TFloatField;
    qryCustomersTechnicalCode: TStringField;
    qryCustomersCustAccountNumber: TStringField;
    qryCustomersRegisterNumber: TStringField;
    cmbHCKharidarTypeCode: TDBComboBox;
    Label40: TLabel;
    qryCustomersHCTarafGaradadTypeCode: TWordField;
    qryCustomersHCKharidarTypeCode: TWordField;
    qryCustomersStateCode: TIntegerField;
    qryCustomersCityCode: TIntegerField;
    qryCustomersCustFirstName: TStringField;
    edtEconomicNumber1: TDBEdit;
    Label23: TLabel;
    edtNationalID: TDBEdit;
    Label35: TLabel;
    edtPerCityCode: TDBEdit;
    Label4: TLabel;
    edtTel: TDBEdit;
    Label6: TLabel;
    Label20: TLabel;
    Label9: TLabel;
    edtPostalCode: TDBEdit;
    dbmmoAddress: TDBMemo;
    edtRegisterNumber: TDBEdit;
    qryCustomers_Ostan: TStringField;
    qryCustomers_Shahr: TStringField;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cmbHCTarafGaradadTypeCode: TDBComboBox;
    Label7: TLabel;
    qryCustomersInfoDate: TStringField;
    Label52: TLabel;
    qryCustomersPerCityCode: TStringField;
    Label8: TLabel;
    qryCustomersHCForoushandeType1Code: TWordField;
    cmbHCForoushandeType1Code: TDBComboBox;
    Label10: TLabel;
    edtCustAccountNumber: TDBEdit;
    lbl1: TLabel;
    edtMobile: TDBEdit;
    lbl2: TLabel;
    qryCustomersCustID: TIntegerField;
    edtCustID: TDBEdit;
    cmbT_Tabeiat: TDBComboBox;
    Label11: TLabel;
    qryCustomersT_Tabeiat: TWordField;
    qryCustomersCustomerGrpID: TIntegerField;
    qryCustomersBalance: TBCDField;
    qryCustomersacc_DetailCode: TStringField;
    qryCustomersServiceCalcType: TWordField;
    qryCustomersServicePrice: TBCDField;
    qryCustomersExtServicePrice: TBCDField;
    qryCustomersRevenuePercent: TFloatField;
    qryCustomersState: TWordField;
    qryCustomersModifyDate: TDateTimeField;
    qryCustomersOperatorID: TWideStringField;
    qryCustomersValuationType: TWordField;
    qryCustomersProjectID: TIntegerField;
    qryCustomersBudgetID: TIntegerField;
    qryCustomersInfoWeight: TFloatField;
    qryCustomersGrpActionCustomer: TWordField;
    qryCustomersContactRate: TFloatField;
    qryCustomersacc_CTopicCode: TStringField;
    qryCustomersacc_CTopicCode2: TStringField;
    qryCustomersBankId: TFloatField;
    qryCustomersDiscountNote: TStringField;
    qryCustomersDiscount: TFloatField;
    qryCustomersDayTime: TIntegerField;
    qryCustomersConveyKind: TWordField;
    qryCustomersArzTypeID: TIntegerField;
    qryCustomersaccStateDefault: TWordField;
    qryCustomersCustomersRow: TIntegerField;
    qryCustomersPersonID1: TIntegerField;
    qryCustomersEstablishDate: TStringField;
    qryCustomersSellsMethod: TIntegerField;
    qryCustomersSellsEmporium: TIntegerField;
    qryCustomersSellsDefaultState: TWordField;
    qryCustomersMasirID: TIntegerField;
    qryCustomersCustomerActive: TWordField;
    qryCustomersReagentName: TWideStringField;
    qryCustomersPersonID3: TIntegerField;
    qryCustomersUseUnitID: TIntegerField;
    qryCustomersInsertAutoEffectID: TIntegerField;
    qryCustomersEffectID: TIntegerField;
    qryCustomersCustomerGrpID2: TIntegerField;
    qryCustomersacc_CTopicCode3: TStringField;
    qryCustomersacc_TopicCode: TLargeintField;
    qryCustomersLastUser: TWideStringField;
    qryCustomersFirstUser: TWideStringField;
    qryCustomersCustomerState: TWordField;
    qryCustomersMax4WaterCo: TBCDField;
    qryCustomersSupervisorAllocation: TWordField;
    qryCustomersCustomerCheckNote: TStringField;
    qryCustomersCustName_L2: TStringField;
    qryCustomerssex: TWordField;
    qryCustomersAlternativeCustID: TLargeintField;
    qryCustomersVatValidityDate: TStringField;
    qryCustomersBusinesslicenseValidityDate: TStringField;
    qryCustomersLeaseValidityDate: TStringField;
    qryCustomersArea: TFloatField;
    qryCustomersDegree: TStringField;
    qryCustomersScore: TFloatField;
    qryCustomersNumberCreditInstallments: TIntegerField;
    qryCustomersMaxWeeklyShoppingCredit: TFMTBCDField;
    qryCustomersMinWeeklyShoppingAmount: TBCDField;
    qryCustomersDayOrder: TWordField;
    qryCustomersAlternativeCustID2: TLargeintField;
    qryCustomersPaymentCode: TLargeintField;
    qryCustomersTelegramChatID: TStringField;
    qryCustomersPostControl: TWordField;
    qryCustomersPelakSabtiAsli: TStringField;
    qryCustomersPelakSabtiFari: TStringField;
    Label12: TLabel;
    edtPelakSabtiAsli: TDBEdit;
    Label13: TLabel;
    edtPelakSabtiFari: TDBEdit;
    edtTradeSystemCode: TDBEdit;
    Label14: TLabel;
    edtNationalCode: TDBEdit;
    Label15: TLabel;
    qryCustomersNationalCode: TStringField;
    qryCustomersTradeSystemCode: TStringField;
    edtCitizenCode: TDBEdit;
    Label78: TLabel;
    qryCustomersCitizenCode: TStringField;
    qryCustomersEditDateTime: TDateTimeField;
    qryCustomersBuyerbbc: TStringField;
    edtBuyerbbc: TDBEdit;
    Label16: TLabel;
    procedure srcCustomersStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCustomersAfterPost(DataSet: TDataSet);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure qryCustomers_OstanChange(Sender: TField);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
    procedure dbmmoAddressChange(Sender: TObject);
    procedure qryCustomersBeforePost(DataSet: TDataSet);
    procedure qryCustomersAfterEdit(DataSet: TDataSet);
  private
    FormType: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomersTaxF: TCustomersTaxF;

implementation

uses DM, sort2, search2, GlobalPro, Math, mmessage, shamsiDate, FaraConsts,
  FormFunctions;

{$R *.dfm}

procedure TCustomersTaxF.srcCustomersStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCustomers.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
end;

procedure TCustomersTaxF.FormCreate(Sender: TObject);
begin
  inherited;
  RequiredCustomers(qryCustomers, nil);
  AddcmbHCKharidarTypeCode(cmbHCKharidarTypeCode);
  SetLookUpCash(qryCustomers);
  FormType := var_glb_gParam;
  with qryCustomers do
  begin
    Close;
    Parameters.ParamByName('CustID').Value := FormType;
    Open;
  end;
end;

procedure TCustomersTaxF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if qryCustomers.State in dsEditModes then
    qryCustomers.Post;
end;

procedure TCustomersTaxF.qryCustomersAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := User.Name;
  DataSet.FieldByName('EditDateTime').AsDateTime := Now;
end;

procedure TCustomersTaxF.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DMf.qryOstan.Open;
  qryCustomers_OstanChange(nil);
end;

procedure TCustomersTaxF.qryCustomersAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد ', 1)
end;

procedure TCustomersTaxF.qryCustomersBeforePost(DataSet: TDataSet);
var
  b: Boolean;

begin
  inherited;
  CheckRequiredFieldsCustomer(DataSet);
  if not CheckRequiredFields(qryCustomers) then
    Abort;
  TrimStringFields(DataSet);
  if (qryCustomersHCKharidarTypeCode.AsInteger = 1) then
    if not ValidateCodeMeli(qryCustomers.FieldByName('NationalID').AsString)
    then
    begin
      Warn('كد ملي معتبر نمي باشد');
      Abort;
    end;

  if UnicFieldMobile(qryCustomers) then
    Abort;

  if ((qryCustomersHCKharidarTypeCode.AsInteger = 2) and
    (qryCustomersHCTarafGaradadTypeCode.AsInteger <> 5)) then
  begin
    Warn('نوع شخص با نوع خریدار متناسب نمی باشد');
    Abort;
  end;

  if (qryCustomersHCTarafGaradadTypeCode.AsInteger <> 7) then
    if ((opt.AllControls and Integer(CHkUnicNationalID)) <> 0) or
      ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0) then
    begin
      b := UnicFieldName(DataSet.FieldByName('CustID'),
        DataSet.FieldByName('NationalID'), 'Customers', 0);
      if not b and ((opt.AllControls and Integer(CHkUnicNationalIDPost)) <> 0)
      then
        Abort;
    end;

  if ((opt.AllControls and Integer(CHkUnicRegisterNumber)) <> 0) or
    ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0) then
  begin
    b := UnicFieldName(DataSet.FieldByName('CustID'),
      DataSet.FieldByName('RegisterNumber'), 'Customers', 0);
    if not b and ((opt.AllControls and Integer(CHkUnicRegisterNumberPost)) <> 0)
    then
      Abort;
  end;

  if not IsValidIBAN(qryCustomers.FieldByName('CustAccountNumber').AsString)
  then
  begin
    Warn('شماره شبا معتبر نمي باشد');
  end;

end;

procedure TCustomersTaxF.qryCustomers_OstanChange(Sender: TField);
begin
  inherited;
  With DMf.qryShahr do
  begin
    Active := False;
    Parameters.ParamByName('OstanCode').Value :=
      qryCustomersStateCode.AsInteger;
    Active := True
  end
end;

procedure TCustomersTaxF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TCustomersTaxF.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex
end;

procedure TCustomersTaxF.dbmmoAddressChange(Sender: TObject);
begin
  inherited;
  if Length(dbmmoAddress.Text) > 80 then
    Label8.Caption := 'تعداد حرفهاي آدرس بيشتر از 80 مي باشد = ' +
      IntToStr(Length(dbmmoAddress.Text))
  else
    Label8.Caption := EmptyStr
end;

end.
