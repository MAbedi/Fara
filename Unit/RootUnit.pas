unit RootUnit;

interface

uses
  Pkg2.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TPaymentDto = class
  private
    Fiinn: string;
    Facn: string;
    Ftrmn: string;
    Ftrn: string;
    Fpcn: string;
    Fpid: string;
    Fpdt: string;
  published
    property iinn: string read Fiinn write Fiinn;
    property acn: string read Facn write Facn;
    property trmn: string read Ftrmn write Ftrmn;
    property trn: string read Ftrn write Ftrn;
    property pcn: string read Fpcn write Fpcn;
    property pid: string read Fpid write Fpid;
    property pdt: string read Fpdt write Fpdt;
  end;

  TInvoiceBodyDto = class
  private
    FAdis: string;
    FAm: string;
    FCfee: string;
    FCut: string;
    FDis: string;
    FExr: string;
    FFee: string;
    FPrdis: string;
    FSstId: string;
    FSstt: string;
    FTsstam: string;
    FVam: string;
    FVra: string;

    Fmu: string;
    Fodt: string;
    Fodr: string;
    Fodam: string;
    Folt: string;
    Folr: string;
    Folam: string;
    Fconsfee: string;
    Fspro: string;
    Fbros: string;
    Ftcpbs: string;
    Fcop: string;
    Fvop: string;
    Fbsrn: string;

  published
    property Adis: string read FAdis write FAdis;
    property Am: string read FAm write FAm;
    property Cfee: string read FCfee write FCfee;
    property Cut: string read FCut write FCut;
    property Dis: string read FDis write FDis;
    property Exr: string read FExr write FExr;
    property Fee: string read FFee write FFee;
    property Prdis: string read FPrdis write FPrdis;
    property SstId: string read FSstId write FSstId;
    property Sstt: string read FSstt write FSstt;
    property Tsstam: string read FTsstam write FTsstam;
    property Vam: string read FVam write FVam;
    property Vra: string read FVra write FVra;

    property mu: string read Fmu write Fmu;
    property odt: string read Fodt write Fodt;
    property odr: string read Fodr write Fodr;
    property odam: string read Fodam write Fodam;
    property olt: string read Folt write Folt;
    property olr: string read Folr write Folr;
    property olam: string read Folam write Folam;
    property consfee: string read Fconsfee write Fconsfee;
    property spro: string read Fspro write Fspro;
    property bros: string read Fbros write Fbros;
    property tcpbs: string read Ftcpbs write Ftcpbs;
    property cop: string read Fcop write Fcop;
    property vop: string read Fvop write Fvop;
    property bsrn: string read Fbsrn write Fbsrn;
  end;

  TInvoiceHeaderDto = class
  private
    FBId: string;
    FBpc: string;
    FDpvb: string;
    FIndati2m: Int64;
    FIndatim: Int64;
    FInno: string;
    FInsp: string;
    FSbc: string;
    FTadis: string;
    FTbill: string;
    FTdis: string;
    FTinb: string;
    FTins: string;
    FTprdis: string;
    FTvam: string;
  published
    property BId: string read FBId write FBId;
    property Bpc: string read FBpc write FBpc;
    property Dpvb: string read FDpvb write FDpvb;
    property Indati2m: Int64 read FIndati2m write FIndati2m;
    property Indatim: Int64 read FIndatim write FIndatim;
    property Inno: string read FInno write FInno;
    property Insp: string read FInsp write FInsp;
    property Sbc: string read FSbc write FSbc;
    property Tadis: string read FTadis write FTadis;
    property Tbill: string read FTbill write FTbill;
    property Tdis: string read FTdis write FTdis;
    property Tinb: string read FTinb write FTinb;
    property Tins: string read FTins write FTins;
    property Tprdis: string read FTprdis write FTprdis;
    property Tvam: string read FTvam write FTvam;
  end;

  TKeysModel = class
  private
    [JSONName('ECONOMIC_NUMBER')]
    FECONOMICNUMBER: string;
    [JSONName('FISCAL_ID')]
    FFISCALId: string;
    [JSONName('PRV_KY')]
    FPRVKY: string;
    [JSONName('PUB_KEY')]
    FPUBKEY: string;
    [JSONName('PUB_KEY_ID')]
    FPUBKEYId: string;
  published
    property ECONOMICNUMBER: string read FECONOMICNUMBER write FECONOMICNUMBER;
    property FISCALId: string read FFISCALId write FFISCALId;
    property PRVKY: string read FPRVKY write FPRVKY;
    property PUBKEY: string read FPUBKEY write FPUBKEY;
    property PUBKEYId: string read FPUBKEYId write FPUBKEYId;
  end;

  TMainTax = class(TJsonDTO)
  private
    [JSONName('InvoiceBodyDto'), JSONMarshalled(False)]
    FInvoiceBodyDtoArray: TArray<TInvoiceBodyDto>;
    [GenericListReflect]
    FInvoiceBodyDto: TObjectList<TInvoiceBodyDto>;
    FInvoiceHeaderDto: TInvoiceHeaderDto;
    FKeysModel: TKeysModel;
    [JSONName('PaymentDto'), JSONMarshalled(False)]
    FPaymentDtoArray: TArray<TPaymentDto>;
    [GenericListReflect]
    FPaymentDto: TObjectList<TPaymentDto>;
    function GetInvoiceBodyDto: TObjectList<TInvoiceBodyDto>;
    function GetPaymentDto: TObjectList<TPaymentDto>;
  protected
    function GetAsJson: string; override;
  published
    property InvoiceBodyDto: TObjectList<TInvoiceBodyDto>
      read GetInvoiceBodyDto;
    property InvoiceHeaderDto: TInvoiceHeaderDto read FInvoiceHeaderDto;
    property KeysModel: TKeysModel read FKeysModel;
    property PaymentDto: TObjectList<TPaymentDto> read GetPaymentDto;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

implementation

{ TRoot }

constructor TMainTax.Create;
begin
  inherited;
  FKeysModel := TKeysModel.Create;
  FInvoiceHeaderDto := TInvoiceHeaderDto.Create;
end;

destructor TMainTax.Destroy;
begin
  FKeysModel.Free;
  FInvoiceHeaderDto.Free;
  GetInvoiceBodyDto.Free;
  GetPaymentDto.Free;
  inherited;
end;

function TMainTax.GetInvoiceBodyDto: TObjectList<TInvoiceBodyDto>;
begin
  Result := ObjectList<TInvoiceBodyDto>(FInvoiceBodyDto, FInvoiceBodyDtoArray);
end;

function TMainTax.GetPaymentDto: TObjectList<TPaymentDto>;
begin
  Result := ObjectList<TPaymentDto>(FPaymentDto, FPaymentDtoArray);
end;

function TMainTax.GetAsJson: string;
begin
  RefreshArray<TInvoiceBodyDto>(FInvoiceBodyDto, FInvoiceBodyDtoArray);
  RefreshArray<TPaymentDto>(FPaymentDto, FPaymentDtoArray);
  Result := inherited;
end;

end.
