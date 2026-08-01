unit SendToOracel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, REST.Json, IdHTTP, Data.DBXJSON,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, Data.Bind.Components, Data.Bind.ObjectScope, REST.Client,
  IPPeerClient, GeneralDM, Vcl.Mask, Vcl.DBCtrls;

type

  TPersonel = class
  private
    FAccountTypeId: string;
    FAddress: string;
    FBankAccount: string;
    FBankId: string;
    FBirthDate: string;
    FCellPhone: string;
    FCountryId: string;
    FCurrencyId: string;
    FEmpNo: string;
    FFatherName: string;
    FFax: string;
    FFirstName: string;
    FIdNumber: string;
    FIdSerial: string;
    FKind: string;
    FLastName: string;
    FNationalCode: string;
    FOrganization: string;
    FPhone: string;
    FPostalCode: string;
  published
    property AccountTypeId: string read FAccountTypeId write FAccountTypeId;
    property Address: string read FAddress write FAddress;
    property BankAccount: string read FBankAccount write FBankAccount;
    property BankId: string read FBankId write FBankId;
    property BirthDate: string read FBirthDate write FBirthDate;
    property CellPhone: string read FCellPhone write FCellPhone;
    property CountryId: string read FCountryId write FCountryId;
    property CurrencyId: string read FCurrencyId write FCurrencyId;
    property EmpNo: string read FEmpNo write FEmpNo;
    property FatherName: string read FFatherName write FFatherName;
    property Fax: string read FFax write FFax;
    property FirstName: string read FFirstName write FFirstName;
    property IdNumber: string read FIdNumber write FIdNumber;
    property IdSerial: string read FIdSerial write FIdSerial;
    property Kind: string read FKind write FKind;
    property LastName: string read FLastName write FLastName;
    property NationalCode: string read FNationalCode write FNationalCode;
    property Organization: string read FOrganization write FOrganization;
    property Phone: string read FPhone write FPhone;
    property PostalCode: string read FPostalCode write FPostalCode;
    function ToJsonString: string;
  end;

  TSendToOracelF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    edtUrl: TEdit;
    Label1: TLabel;
    qryPeronalInfo: TADOQuery;
    qryPeronalInfoPersonelNo: TIntegerField;
    qryPeronalInfoname_L1: TStringField;
    qryPeronalInfoname_L2: TStringField;
    qryPeronalInfolastName_L1: TStringField;
    qryPeronalInfolastName_L2: TStringField;
    qryPeronalInfofatherName_L1: TStringField;
    qryPeronalInfofatherName_L2: TStringField;
    qryPeronalInfoNationalityCode: TIntegerField;
    qryPeronalInfoBirthDate: TStringField;
    qryPeronalInfoSodurDate: TStringField;
    qryPeronalInfoBirthPlace: TIntegerField;
    qryPeronalInfoSodurPlace: TIntegerField;
    qryPeronalInfoNationalID: TStringField;
    qryPeronalInfoIDNumber: TStringField;
    qryPeronalInfosex: TIntegerField;
    qryPeronalInfomarriage: TIntegerField;
    qryPeronalInfochildNumber: TIntegerField;
    qryPeronalInfoLicenceCode: TIntegerField;
    qryPeronalInfostudyField: TIntegerField;
    qryPeronalInfoStudyCityCode: TIntegerField;
    qryPeronalInfoUnivercityCode: TIntegerField;
    qryPeronalInfoStudyAverage: TFloatField;
    qryPeronalInfoemployDate: TStringField;
    qryPeronalInfofinishEmployDate: TStringField;
    qryPeronalInfoBankCode: TIntegerField;
    qryPeronalInfoBranchCode: TStringField;
    qryPeronalInfoAccountNumber: TStringField;
    qryPeronalInfoinsuranceID: TWordField;
    qryPeronalInfoInsuranceNumber: TStringField;
    qryPeronalInfoTaxZone: TIntegerField;
    qryPeronalInfoCoTax: TBCDField;
    qryPeronalInfoaddress_L1: TStringField;
    qryPeronalInfoaddress_L2: TStringField;
    qryPeronalInfoNote_L1: TStringField;
    qryPeronalInfoNote_L2: TStringField;
    qryPeronalInfoTel: TStringField;
    qryPeronalInfoStoreDayTime: TWordField;
    qryPeronalInfoemployDateM: TDateTimeField;
    qryPeronalInfoStoreDayTimeActive: TBooleanField;
    qryPeronalInfoEmployID: TStringField;
    qryPeronalInfoAccTopicCode: TIntegerField;
    qryPeronalInfoAccDetailCode: TIntegerField;
    qryPeronalInfoAccCTopicCode: TIntegerField;
    qryPeronalInfoAccCTopicCode2: TIntegerField;
    qryPeronalInfoPercentWound: TFloatField;
    qryPeronalInfoSoldierState: TIntegerField;
    qryPeronalInfoSpecialJob: TWordField;
    qryPeronalInfoAccCTopicCode3: TIntegerField;
    qryPeronalInfoCreditCardNo: TStringField;
    qryPeronalInfoMaskanKind: TIntegerField;
    qryPeronalInfoSpecialState: TIntegerField;
    qryPeronalInfoPostalCode: TStringField;
    qryPeronalInfoBranchInfo: TIntegerField;
    qryPeronalInfoOffTime: TIntegerField;
    qryPeronalInfoDSW_JOB: TStringField;
    qryPeronalInfoEducationType: TIntegerField;
    qryPeronalInfoEducationDegree: TIntegerField;
    qryPeronalInfoEducationGrade: TIntegerField;
    qryPeronalInfoTimeCardNumber: TStringField;
    qryPeronalInfoNumberOfMedicalOffice: TIntegerField;
    qryPeronalInfoIssuedProvince: TIntegerField;
    qryPeronalInfoIssuedSection: TIntegerField;
    qryPeronalInfoIssuedVillage: TIntegerField;
    qryPeronalInfoBirthProvince: TIntegerField;
    qryPeronalInfoBirthSection: TIntegerField;
    qryPeronalInfoBirthVillage: TIntegerField;
    qryPeronalInfoEmployTypeID: TIntegerField;
    qryPeronalInfoMobile: TStringField;
    qryPeronalInfoEmail: TWideStringField;
    qryPeronalInfoMartyrChild: TBooleanField;
    qryPeronalInfoTelegramChatID: TStringField;
    qryPeronalInfoStudyFinishedate: TStringField;
    qryPeronalInfoPersonelState: TIntegerField;
    qryPeronalInfoAccBankType: TIntegerField;
    qryPeronalInfoTaxCalculationType: TIntegerField;
    qryPeronalInfoSupPepNumber: TWordField;
    srcPeronalInfo: TDataSource;
    edtOrganization: TEdit;
    lblOrganization: TLabel;
    CedarDbgrid1: TCedarDbgrid;
    IdHTTP1: TIdHTTP;
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    ComboBox1: TComboBox;
    MemoContent: TMemo;
    actCurentRow: TAction;
    actAllRow: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure actCurentRowExecute(Sender: TObject);
    procedure actAllRowExecute(Sender: TObject);
  private
    function FilPersonel: TPersonel;
    function SendRequest: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SendToOracelF: TSendToOracelF;

implementation

uses
  DM, GlobalPro, System.Json, shamsiDate;

{$R *.dfm}

function TSendToOracelF.SendRequest: string;
var
  jValue: TJSONValue;
  IdHTTP: TIdHTTP;
  val: string;
begin
  // RESTRequest1.AddBody(FilPersonel);
  RESTRequest1.Params.Clear;
  RESTRequest1.AddParameter('DATA', FilPersonel.ToJsonString);

  RESTRequest1.Execute;
  jValue := RESTResponse1.JSONValue;
  if (ComboBox1.ItemIndex = 1) and (jValue is TJSONObject) then
    Result := jValue.ToString
  else
    Result := RESTResponse1.Content;

  // IdHTTP := TIdHTTP.Create;
  // val := IdHTTP.Post(edtUrl.Text, FilPersonel.ToJsonString);

  // Warn(val);

end;

procedure TSendToOracelF.actAllRowExecute(Sender: TObject);
var
  DoWhile: Boolean;
begin
  inherited;
  DoWhile := True;
  MemoContent.Lines.Clear;
  With qryPeronalInfo do
    try
      First;
      while (not Eof and DoWhile) do
      begin
        If LastKeyPressed = VK_ESCAPE then
          if get_response('⁄„·Ì«  „ Êﬁ› ‘Êœø') = mrYes then
          begin
            DoWhile := False;
            LastKeyPressed := 0;
          end;
        LastKeyPressed := 0;
        MemoContent.Lines.Add(SendRequest);
        Next;
      end;
    finally

    end;
end;

procedure TSendToOracelF.actCurentRowExecute(Sender: TObject);
begin
  inherited;
  MemoContent.Text := SendRequest;
end;

function TSendToOracelF.FilPersonel: TPersonel;
var
  item: TPersonel;
begin
  item := TPersonel.Create;
  try
    With item do
    begin
      Address := qryPeronalInfoaddress_L1.AsString;
      // BankAccount := qryPeronalInfoBankCode.AsString;
      // BankId := qryPeronalInfoBankCode.AsString;
      BirthDate := qryPeronalInfoBirthDate.AsString;
      CellPhone := qryPeronalInfoMobile.AsString;
      // CountryId := qryPeronalInfoCountryId.AsString;
      // CurrencyId := qryPeronalInfoCurrencyId.AsString;
      // AccountTypeId := qryPeronalInfoAccountTypeId.AsString;
      EmpNo := qryPeronalInfoPersonelNo.AsString;
      FatherName := qryPeronalInfofatherName_L1.AsString;
      // Fax := qryPeronalInfoTel.AsString;
      FirstName := qryPeronalInfoname_L1.AsString;
      IdNumber := qryPeronalInfoIDNumber.AsString;
      IdSerial := qryPeronalInfoEmployID.AsString;
      Kind := 'p';
      LastName := qryPeronalInfolastName_L1.AsString;
      NationalCode := qryPeronalInfoNationalID.AsString;
      Organization := Trim(edtOrganization.Text);
      Phone := qryPeronalInfoTel.AsString;
      PostalCode := qryPeronalInfoPostalCode.AsString;
    end;
  finally
    Result := item;
    // item.Free;
  end;

end;

procedure TSendToOracelF.FormCreate(Sender: TObject);
begin
  inherited;
  qryPeronalInfo.Open
end;

{ TPersonel }

function TPersonel.ToJsonString: string;
begin
  Result := TJson.ObjectToJsonString(self);
end;

end.
