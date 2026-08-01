unit TaxUnit;

interface

uses
  PkgTax.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type

  TInvoiceHeaderDto = class
  private
    FTaxid: string;
    FIndatim: Int64;
    FIndati2m: Int64;
    FInty: string;
    FInno: string;
    Firtaxid: string;
    FInp: integer;
    FIns: string;
    FTins: string;
    FTob: string;
    Fbid: string;
    FTinb: string;
    FSbc: string;
    FBbc: string;

    FFt: string;
    FBpn: string;
    FScln: string;
    FScc: string;
    FCdcn: string;
    FCdcd: string;
    Fcrn: string;
    Fbillid: string;
    Ftprdis: string;
    Ftdis: string;
    Ftadis: string;
    Ftvam: string;
    Ftodam: string;
    Ftbill: string;
    Ftonw: string;
    Ftorv: string;
    Ftocv: string;
    Fsetm: string;
    Fcap: string;
    Finsp: string;
    Ftvop: string;
    Ftax17: string;
    FBpc: string;
  published
    property bid: string read Fbid write Fbid;
    property Bbc: string read FBbc write FBbc;
    property Billid: string read Fbillid write Fbillid;
    property Bpc: string read FBpc write FBpc;
    property Bpn: string read FBpn write FBpn;
    property Cap: string read Fcap write Fcap;
    property Crn: string read Fcrn write Fcrn;
    property Ft: string read FFt write FFt;
    property Indati2m: Int64 read FIndati2m write FIndati2m;
    property Indatim: Int64 read FIndatim write FIndatim;
    property Inno: string read FInno write FInno;
    property Inp: integer read FInp write FInp;
    property Ins: string read FIns write FIns;
    property Insp: string read Finsp write Finsp;
    property Inty: string read FInty write FInty;
    property irtaxid: string read Firtaxid write Firtaxid;
    property Sbc: string read FSbc write FSbc;
    property Scc: string read FScc write FScc;
    property Scln: string read FScln write FScln;
    property Setm: string read Fsetm write Fsetm;
    property Tadis: string read Ftadis write Ftadis;
    property Tax17: string read Ftax17 write Ftax17;
    property Taxid: string read FTaxid write FTaxid;
    property Tbill: string read Ftbill write Ftbill;
    property Tdis: string read Ftdis write Ftdis;
    property Tinb: string read FTinb write FTinb;
    property Tins: string read FTins write FTins;
    property Tob: string read FTob write FTob;
    property Todam: string read Ftodam write Ftodam;
    property Tprdis: string read Ftprdis write Ftprdis;
    property Tvam: string read Ftvam write Ftvam;
    property Tvop: string read Ftvop write Ftvop;
    property Tonw: string read Ftonw write Ftonw;
    property torv: string read Ftorv write Ftorv;
    property tocv: string read Ftocv write Ftocv;
    property Cdcn: string read FCdcn write FCdcn;
    property Cdcd: string read FCdcd write FCdcd;
  end;

  TInvoiceBodyDto = class
  private
    FSstid: string;
    Fsstt: string;
    Fam: string;
    Fmu: string;
    Fnw: string;
    Ffee: string;
    Fcfee: string;
    Fcut: string;
    Fexr: string;
    Fssrv: string;
    Fsscv: string;
    Fprdis: string;
    Fdis: string;
    Fadis: string;
    Fvra: string;
    Fvam: string;
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
   Ftsstam: string;
  published
    property Adis: string read Fadis write Fadis;
    property Am: string read Fam write Fam;
    property Bros: string read Fbros write Fbros;
    property Bsrn: string read Fbsrn write Fbsrn;
    property Cfee: string read Fcfee write Fcfee;
    property Consfee: string read Fconsfee write Fconsfee;
    property Cop: string read Fcop write Fcop;
    property Cut: string read Fcut write Fcut;
    property Dis: string read Fdis write Fdis;
    property Exr: string read Fexr write Fexr;
    property Fee: string read Ffee write Ffee;
    property Mu: string read Fmu write Fmu;
    property Odam: string read Fodam write Fodam;
    property Odr: string read Fodr write Fodr;
    property Odt: string read Fodt write Fodt;
    property Olam: string read Folam write Folam;
    property Olr: string read Folr write Folr;
    property Olt: string read Folt write Folt;
    property Prdis: string read Fprdis write Fprdis;
    property Spro: string read Fspro write Fspro;
    property Sstid: string read FSstid write FSstid;
    property Sstt: string read Fsstt write Fsstt;
    property Tcpbs: string read Ftcpbs write Ftcpbs;
    property Tsstam: string read Ftsstam write Ftsstam;
    property Vam: string read Fvam write Fvam;
    property Vop: string read Fvop write Fvop;
    property Vra: string read Fvra write Fvra;
    property Nw: string read Fnw write Fnw;
    property ssrv: string read Fssrv write Fssrv;
    property sscv: string read Fsscv write Fsscv;
  end;

  TPaymentDto = class
  private
    FAcn: string;
    FIinn: string;
    FPid: string;
    FPcn: string;
    FPdt: string;
    FTrmn: string;
    FTrn: string;
  published
    property Acn: string read FAcn write FAcn;
    property Iinn: string read FIinn write FIinn;
    property Pid: string read FPid write FPid;
    property Pcn: string read FPcn write FPcn;
    property Pdt: string read FPdt write FPdt;
    property Trmn: string read FTrmn write FTrmn;
    property Trn: string read FTrn write FTrn;
  end;

  TKeysModel = class
  private
    [JSONName('ECONOMIC_NUMBER')]
    FECONOMICNUMBER: string;
    [JSONName('FISCAL_ID')]
    FFISCALid: string;
    [JSONName('PRV_KY')]
    FPRVKY: string;
    [JSONName('PUB_KEY')]
    FPUBKEY: string;
    [JSONName('PUB_KEY_ID')]
    FPUBKEYid: string;
    FCRT_KEY: string;
  published
    property ECONOMICNUMBER: string read FECONOMICNUMBER write FECONOMICNUMBER;
    property FISCALid: string read FFISCALid write FFISCALid;
    property PRVKY: string read FPRVKY write FPRVKY;
    property PUBKEY: string read FPUBKEY write FPUBKEY;
    property PUBKEYid: string read FPUBKEYid write FPUBKEYid;
    property CRT_KEY: string read FCRT_KEY write FCRT_KEY;
  end;

  TQueryModel = class
  private
    FEndTime: string;
    FReferenceNumber: string;
    FSingleTime: string;
    FStartTime: string;
    [JSONName('UID')]
    FUid: string;
  published
    property EndTime: string read FEndTime write FEndTime;
    property ReferenceNumber: string read FReferenceNumber
      write FReferenceNumber;
    property SingleTime: string read FSingleTime write FSingleTime;
    property StartTime: string read FStartTime write FStartTime;
    property Uid: string read FUid write FUid;
  end;

  TConfigModel = class
  private
    [JSONName('SERVER_TYPE')]
    FSERVERTYPE: string;
  published
    property SERVERTYPE: string read FSERVERTYPE write FSERVERTYPE;
  end;

  TMainTax = class(TJsonDTO)
  private
    // [JSONName('InvoiceHeaderDto')]
    FInvoiceHeaderDto: TInvoiceHeaderDto;

    [JSONName('InvoiceBodyDto'), JSONMarshalled(False)]
    // [JSONName('InvoiceBodyDto')]
    FInvoiceBodyDtoArray: TArray<TInvoiceBodyDto>;
    [GenericListReflect]
    FInvoiceBodyDto: TObjectList<TInvoiceBodyDto>;

    // [JSONName('KeysModel')]
    FKeysModel: TKeysModel;

    // [JSONName('QueryModel')]
    FQueryModel: TQueryModel;

    // [JSONName('ConfigModel')]
    FConfigModel: TConfigModel;

    [JSONName('PaymentDto'), JSONMarshalled(False)]
    // [JSONName('PaymentDto')]
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
    property QueryModel: TQueryModel read FQueryModel;
    property ConfigModel: TConfigModel read FConfigModel;

    property PaymentDto: TObjectList<TPaymentDto> read GetPaymentDto;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

  TPacketResponse = class(TJsonDTO)
  private
    FError: string;
    FMessage: string;
    FReferenceNumber: string;
    FTaxid: string;
    FUid: string;
  published
    property Error: string read FError write FError;
    property Message: string read FMessage write FMessage;
    property ReferenceNumber: string read FReferenceNumber
      write FReferenceNumber;
    property Taxid: string read FTaxid write FTaxid;
    property Uid: string read FUid write FUid;
  end;

  TRError = class(TJsonDTO)
  private
    FError: string;
    FMessage: string;
    Fstatus: string;
  published
    property Error: string read FError write FError;
    property Message: string read FMessage write FMessage;
    property status: string read Fstatus write Fstatus;
  end;

implementation

{ TRoot }

constructor TMainTax.Create;
begin
  inherited;
  FKeysModel := TKeysModel.Create;
  FQueryModel := TQueryModel.Create;
  FConfigModel := TConfigModel.Create;

  FInvoiceHeaderDto := TInvoiceHeaderDto.Create;
end;

destructor TMainTax.Destroy;
begin
  FKeysModel.Free;
  FQueryModel.Free;
  FConfigModel.Free;
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
