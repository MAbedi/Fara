unit Proforma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons,
  DB, ADODB, Mask, DBCtrls, System.ImageList, System.Actions, DBCtrlsEh;

type
  TProformaF = class(Ttemplate2MDIF)
    pnlType22: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    srcProforma: TDataSource;
    qryRecipts: TADOQuery;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsDocNo: TIntegerField;
    qryReciptsDocDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsCustName: TStringField;
    qryReciptsAddress: TStringField;
    qryReciptsTel: TStringField;
    qryReciptsArzTypeID: TIntegerField;
    qryReciptsName: TStringField;
    qryReciptsRialsEqual: TBCDField;
    srcRecipts: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    qryReciptsCountry: TStringField;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    qryProforma: TADOQuery;
    qryProformaProformaID: TAutoIncField;
    qryProformaProformaNo: TStringField;
    qryProformaPaymentMode: TIntegerField;
    qryProformaDuration: TIntegerField;
    qryProformaContractType: TIntegerField;
    qryProformaProducingCountry: TStringField;
    qryProformaWayDuration: TIntegerField;
    qryProformaTransportBy: TIntegerField;
    qryProformaPackagingType: TIntegerField;
    qryProformaTransportConditions: TStringField;
    qryProformaLicenseNumberOrder: TStringField;
    qryProformaLicenseDateOrder: TStringField;
    qryProformaLoadingLocation: TStringField;
    qryProformaCountTransport: TIntegerField;
    qryProformaDemandType: TIntegerField;
    qryProformaImportType: TIntegerField;
    qryProformaBorderEntry: TStringField;
    qryProformaDeliveryTimeOpenCredit: TIntegerField;
    qryProformaOrderType: TIntegerField;
    qryProformaTypeOfTransaction: TIntegerField;
    qryProformaLettersCreditNo: TStringField;
    qryProformaOpeningBank: TStringField;
    qryProformaBranch: TStringField;
    qryProformaBranchCode: TStringField;
    qryProformaBranchTel: TStringField;
    qryProformaBranchAddress: TStringField;
    qryProformaYvzansRate: TBCDField;
    qryProformaYvzansDuration: TIntegerField;
    qryProformaReciptID: TIntegerField;
    qryProformaServerID: TIntegerField;
    qryProformaYearID: TIntegerField;
    lbl1: TLabel;
    edtProformaNo: TDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt6: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    pnlType21: TPanel;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit29: TDBEdit;
    Label30: TLabel;
    DBEdit30: TDBEdit;
    Label31: TLabel;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    DBEdit32: TDBEdit;
    Label33: TLabel;
    DBEdit33: TDBEdit;
    Label34: TLabel;
    DBEdit34: TDBEdit;
    Label35: TLabel;
    DBEdit35: TDBEdit;
    Label36: TLabel;
    DBEdit36: TDBEdit;
    qrySellsInfo61: TADOQuery;
    qrySellsInfo62: TADOQuery;
    qrySellsInfo63: TADOQuery;
    qrySellsInfo64: TADOQuery;
    qrySellsInfo65: TADOQuery;
    qrySellsInfo66: TADOQuery;
    qrySellsInfo67: TADOQuery;
    qrySellsInfo68: TADOQuery;
    qryProforma_PaymentMode: TStringField;
    qryProforma_ContractType: TStringField;
    qryProforma_TransportBy: TStringField;
    qryProforma_PackagingType: TStringField;
    qryProforma_DemandType: TStringField;
    qryProforma_ImportType: TStringField;
    qryProforma_OrderType: TStringField;
    qryProforma_TypeOfTransaction: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryReciptsReciptID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    DBNavigator1: TDBNavigator;
    qryProformaTransportDate: TDateTimeField;
    qryProformaExpiryDate: TDateTimeField;
    qryProformaDeliveryDate: TDateTimeField;
    qryProformaProformaDate: TDateTimeField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBNavigator2: TDBNavigator;
    qryCustomers: TADOQuery;
    qryProformaCustID: TIntegerField;
    qryProforma_CustID: TStringField;
    DBEdit16: TDBEdit;
    Label37: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit13: TDBEdit;
    qryReciptsCurrenciesName: TStringField;
    qryReciptsArzAmount: TFloatField;
    qryReciptsTotalPrice: TBCDField;
    qryReciptsDeficitSum: TBCDField;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    Label39: TLabel;
    DBEdit24: TDBEdit;
    DBEdit27: TDBEdit;
    Label40: TLabel;
    DBEdit28: TDBEdit;
    Label41: TLabel;
    DBEdit37: TDBEdit;
    Label42: TLabel;
    actViewFiles: TAction;
    btnViewFiles: TBitBtn;
    qryReciptsEntity: TFloatField;
    qryReciptsWeight: TFloatField;
    Label43: TLabel;
    Label44: TLabel;
    edtEntity: TDBEdit;
    edtWeight: TDBEdit;
    qryReciptsAidNumber: TStringField;
    qryReciptsAidDate: TStringField;
    qryProformaDischargedDate: TDateTimeField;
    qryProformaNumberDossier: TStringField;
    Label45: TLabel;
    Label46: TLabel;
    edtNumberDossier: TDBEdit;
    qryProformaPaymentStatus: TIntegerField;
    qrySellsInfo73: TADOQuery;
    qryProforma_PaymentStatus: TStringField;
    DBLookupComboBox9: TDBLookupComboBox;
    Label47: TLabel;
    edtProformaDate: TDBDateTimeEditEh;
    edtExpiryDate: TDBDateTimeEditEh;
    edtDeliveryDate: TDBDateTimeEditEh;
    edtTransportDate: TDBDateTimeEditEh;
    edtDischargedDate: TDBDateTimeEditEh;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsCustName2: TStringField;
    edtCustName2: TDBEdit;
    Label48: TLabel;
    edtPersonID2: TDBEdit;
    Label49: TLabel;
    grpItemNote: TGroupBox;
    dbmmoProformaNote: TDBMemo;
    qryProformaProformaNote: TStringField;
    procedure srcProformaStateChange(Sender: TObject);
    procedure qryProformaAfterDelete(DataSet: TDataSet);
    procedure qryProformaAfterInsert(DataSet: TDataSet);
    procedure qryProformaAfterPost(DataSet: TDataSet);
    procedure qryProformaBeforeDelete(DataSet: TDataSet);
    procedure qryProformaBeforePost(DataSet: TDataSet);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit12MouseEnter(Sender: TObject);
    procedure actViewFilesExecute(Sender: TObject);
    procedure edtDeliveryDateDblClick(Sender: TObject);
  private
    FormType: Integer;
    { Private declarations }
  public
    { Public declarations }
  published
  end;

var
  ProformaF: TProformaF;

implementation

uses DM, MMESSAGE, GlobalPro, searchCode_ADO, shamsiDate,   ViewFileOnServer;

{$R *.dfm}

procedure TProformaF.actViewFilesExecute(Sender: TObject);
begin
  inherited;
  ViewFileOnServerF.enter(qryProforma.Fieldbyname('ProformaID').AsString,
    'ProformaFiles' + IntToStr(FormType), True);
end;

procedure TProformaF.DBEdit12MouseEnter(Sender: TObject);
var
  s: string;
  date: TDateTime;
begin
  inherited;
  if (Sender as TDBDateTimeEditEh).DataSource.DataSet.Active then
  begin
    date := (Sender as TDBDateTimeEditEh).Field.AsDateTime;
    SysUtils.DateTimeToString(s, 'ddd d mmm yyyy', date);
    s := s + #13#10 + miladi2Shamsi(date);
    (Sender as TDBDateTimeEditEh).Hint := s;
  end;
end;

procedure TProformaF.edtDeliveryDateDblClick(Sender: TObject);
var
  s: string;
  date: TDateTime;
begin
  inherited;
  if (Sender as TDBDateTimeEditEh).DataSource.DataSet.Active then
  begin
    date := (Sender as TDBDateTimeEditEh).Field.AsDateTime;
    SysUtils.DateTimeToString(s, 'ddd d mmm yyyy', date);
    s := s + #13#10 + miladi2Shamsi(date);
    (Sender as TDBDateTimeEditEh).Hint := s;
  end;
  DMf.zbal.Title := 'تاریخ شمسی ';
  DMf.zbal.Prompt.Text := s;
  DMf.zbal.show( (Sender as TDBDateTimeEditEh));
end;

procedure TProformaF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  SetLookUpCash(qryProforma);
  qryRecipts.Active := False;
  qryRecipts.Active := True;
  qryRecipts.Last;
  pnlType21.Visible := FormType = 2;
  pnlType22.Visible := pnlType21.Visible;
end;

procedure TProformaF.qryProformaAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TProformaF.qryProformaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('ReciptID').AsInteger := qryReciptsReciptID.AsInteger;
  DataSet.Fieldbyname('YearId').AsInteger := qryReciptsYearID.AsInteger;
  DataSet.Fieldbyname('ServerId').AsInteger := qryReciptsServerID.AsInteger;
  DataSet.Fieldbyname('ProducingCountry').AsString :=
    qryReciptsCountry.AsString;
  edtProformaNo.SetFocus;
end;

procedure TProformaF.qryProformaAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TProformaF.qryProformaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين  پروفرما مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TProformaF.qryProformaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryProforma) then
    Abort;
  TrimStringFields(qryProforma);
end;

procedure TProformaF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryProforma do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.Fieldbyname('ReciptID').AsInteger;
    Parameters.ParamByName('YearId').Value := qryRecipts.Fieldbyname('YearId')
      .AsInteger;
    Parameters.ParamByName('ServerId').Value :=
      qryRecipts.Fieldbyname('ServerId').AsInteger;
    Active := True;
    Last;
  end;

end;

procedure TProformaF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 11] of String;
begin
  inherited;
  Txt := 'SELECT  Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, ' +
    ' Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1, Customers.CustName '
    + ', Customers.Country,LookUps.Name, Recipts.PersonID2, C2.CustName AS CustName2 '
    + ' FROM Recipts INNER JOIN' +
    ' Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOIN' +
    ' LookUps ON Recipts.ArzTypeID = LookUps.LookUpID' +
    ' LEFT OUTER JOIN Customers C2 ON Recipts.PersonID2 = C2.CustID ' +

    ' WHERE (Recipts.ReciptType = 59)'; // 60

  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' فرمها  ', Txt,
    ['', '', '', 'شماره', 'تاريخ', 'كد فروشنده', 'فروشنده', 'كشور', 'نوع ارز',
    'کدپرونده', 'پرونده'], Results, [0, 0, 0, 100, 100, 50, 100, 100, 50, 50,
    100], alLeft);
  if b then
    qryRecipts.Locate('ReciptID;ServerID;YearID',
      VarArrayOf([Results[0], Results[1], Results[2]]), []);

end;

procedure TProformaF.SpeedButton2Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 18] of String;
begin
  inherited;
  Txt := 'SELECT Recipts.ReciptID, Recipts.ServerID, Recipts.YearID,ProformaID,Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1, '
    + 'Customers.CustName, Customers.Country, LookUps.Name ,RialsEqual ' +
    ',ProformaNo, LicenseNumberOrder,LicenseDateOrder,LettersCreditNo , Recipts.PersonID2, '
    + 'C2.CustName as CustName2 ' + ' FROM Proforma INNER JOIN ' +
    'Recipts ON Proforma.ReciptID = Recipts.ReciptID AND Proforma.ServerID = Recipts.ServerID '
    + 'AND Proforma.YearID = Recipts.YearID INNER JOIN ' +
    'Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOIN ' +
    'LookUps ON Recipts.ArzTypeID = LookUps.LookUpID   ' +
    ' LEFT OUTER JOIN Customers C2 ON Recipts.PersonID2 = C2.CustID ' +
    'WHERE     (Recipts.ReciptType = 59)'; // 59
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' فرمها  ', Txt,
    ['', '', '', '', 'شماره', 'تاريخ', 'كد فروشنده', 'فروشنده', 'كشور',
    'نوع ارز', 'برابري با ريال', 'شماره پروفرما', 'شماره مجوز سفاش',
    'تاريخ مجوز سفارش', 'شماره اعتبار اسنادي', 'کد پرونده', 'پرونده'], Results,
    [0, 0, 0, 0, 80, 50, 50, 80, 80, 50, 50, 80, 80, 80, 80, 80, 80], alLeft);
  if b then
  begin
    qryRecipts.Locate('ReciptID;ServerID;YearID',
      VarArrayOf([Results[0], Results[1], Results[2]]), []);

    qryProforma.Locate('ProformaID', Results[3], []);

  end;

end;

procedure TProformaF.SpeedButton3Click(Sender: TObject);
var
  sqltext: string;
  Results: array [0 .. 1] of String;
begin
  inherited;
  sqltext := qryCustomers.SQL.Text;
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'كدهاي اعتبار', sqltext,
    ['كد', 'عنوان'], Results, [100, 150], alLeft) then
  begin
    qryProforma.Fieldbyname('CustID').AsString := Results[0];
  end; // if

end;

procedure TProformaF.srcProformaStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryProforma.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  SpeedButton2.Visible := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

end.
