unit UserJame;

interface

uses
  PkgJame.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type

  TBuyerInfo = class;
  TImportsDeclareInfo = class;
  TStuffsIn = class;
  TWayBill = class;

  TImportsDeclareInfo = class
  private
    FCotageCode: string;
    FPreCotagId: Int64;
    FPrfOrderNumber: Int64;
  published
    property CotageCode: string read FCotageCode write FCotageCode;
    property PreCotagId: Int64 read FPreCotagId write FPreCotagId;
    property PrfOrderNumber: Int64 read FPrfOrderNumber write FPrfOrderNumber;
  end;

  TWayBill = class
  private
    FNumber: string;
    FSerial: string;
    FStatus: Integer;
  published
    property Number: string read FNumber write FNumber;
    property Serial: string read FSerial write FSerial;
    property Status: Integer read FStatus write FStatus;
  end;

  TStuffsIn = class
  private
    FCode: string;
    FCount: Integer;
    FDiscount: Integer;
    FOtherCharges: Integer;
    FPrice: LongInt;
    FVat: Integer;
  published
    property Code: string read FCode write FCode;
    property Count: Integer read FCount write FCount;
    property Discount: Integer read FDiscount write FDiscount;
    property OtherCharges: Integer read FOtherCharges write FOtherCharges;
    property Price: LongInt read FPrice write FPrice;
    property Vat: Integer read FVat write FVat;
  end;

  TBuyerInfo = class
  private
    FMobile: string;
    FName: string;
    FNationalId: string;
    FUserRoleId: Integer;
  published
    property Mobile: string read FMobile write FMobile;
    property Name: string read FName write FName;
    property NationalId: string read FNationalId write FNationalId;
    property UserRoleId: Integer read FUserRoleId write FUserRoleId;
  end;

  TDocumentList = class(TJsonDTO)
  private
    FBuyerInfo: TBuyerInfo;
    FDocNumber: string;
    [SuppressZero]
    FDocumentDate: TDateTime;
    FDocumentDescription: string;
    FFromPostalCode: string;
    FImportsDeclareInfo: TImportsDeclareInfo;
    FRelatedDocNumber: string;
    FStatusAppointment: Integer;
    [JSONName('stuffsIn'), JSONMarshalled(False)]
    FStuffsInArray: TArray<TStuffsIn>;
    [GenericListReflect]
    FStuffsIn: TObjectList<TStuffsIn>;
    FToPostalCode: string;
    FUserSellType: Integer;
    FWayBill: TWayBill;
    function GetStuffsIn: TObjectList<TStuffsIn>;
  protected
    function GetAsJson: string; override;
  published
    property BuyerInfo: TBuyerInfo read FBuyerInfo;
    property DocNumber: string read FDocNumber write FDocNumber;
    property DocumentDate: TDateTime read FDocumentDate write FDocumentDate;
    property DocumentDescription: string read FDocumentDescription
      write FDocumentDescription;
    property FromPostalCode: string read FFromPostalCode write FFromPostalCode;
    property ImportsDeclareInfo: TImportsDeclareInfo read FImportsDeclareInfo;
    property RelatedDocNumber: string read FRelatedDocNumber
      write FRelatedDocNumber;
    property StatusAppointment: Integer read FStatusAppointment
      write FStatusAppointment;
    property StuffsIn: TObjectList<TStuffsIn> read GetStuffsIn;
    property ToPostalCode: string read FToPostalCode write FToPostalCode;
    property UserSellType: Integer read FUserSellType write FUserSellType;
    property WayBill: TWayBill read FWayBill;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

  TUserJame = class(TJsonDTO)
  private
    [JSONName('documentList'), JSONMarshalled(False)]
    FDocumentListArray: TArray<TDocumentList>;
    [GenericListReflect]
    FDocumentList: TObjectList<TDocumentList>;
    FNationalCode: string;
    FPassword: string;
    FPasswordotpCode: string;
    FUsername: string;
    FUserRoleId: string;
    FtrackingCode: string;
    function GetDocumentList: TObjectList<TDocumentList>;
  protected
    function GetAsJson: string; override;
  published
    property DocumentList: TObjectList<TDocumentList> read GetDocumentList;
    property NationalCode: string read FNationalCode write FNationalCode;
    property Password: string read FPassword write FPassword;
    property PasswordotpCode: string read FPasswordotpCode
      write FPasswordotpCode;
    property Username: string read FUsername write FUsername;
    property UserRoleId: string read FUserRoleId write FUserRoleId;
    property trackingCode: string read FtrackingCode write FtrackingCode;
  public
    destructor Destroy; override;
  end;

  TResultJame = class(TJsonDTO)
  private
    FObjList: string;
    FResultCode: Integer;
    FResultMessage: string;
    FTotalCount: Integer;
  published
    property ObjList: string read FObjList write FObjList;
    property ResultCode: Integer read FResultCode write FResultCode;
    property ResultMessage: string read FResultMessage write FResultMessage;
    property TotalCount: Integer read FTotalCount write FTotalCount;
  end;

  // ____________________________________________________________________
  TErrorList = class;
  TSuccessList = class;

  TSuccessList = class
  end;

  TErrorList = class
  private
    FDocNumber: string;
    FErrorCode: Integer;
    FErrorMessage: string;
  published
    property DocNumber: string read FDocNumber write FDocNumber;
    property ErrorCode: Integer read FErrorCode write FErrorCode;
    property ErrorMessage: string read FErrorMessage write FErrorMessage;
  end;

  TObj = class(TJsonDTO)
  private
    [JSONName('errorList'), JSONMarshalled(False)]
    FErrorListArray: TArray<TErrorList>;
    [GenericListReflect]
    FErrorList: TObjectList<TErrorList>;
    [JSONName('successList'), JSONMarshalled(False)]
    FSuccessListArray: TArray<TSuccessList>;
    [GenericListReflect]
    FSuccessList: TObjectList<TSuccessList>;
    function GetErrorList: TObjectList<TErrorList>;
    function GetSuccessList: TObjectList<TSuccessList>;
  protected
    function GetAsJson: string; override;
  published
    property ErrorList: TObjectList<TErrorList> read GetErrorList;
    property SuccessList: TObjectList<TSuccessList> read GetSuccessList;
  public
    destructor Destroy; override;
  end;

  TRootError = class(TJsonDTO)
  private
    FObj: TObj;
    FResultCode: Integer;
    FResultMessage: string;
  published
    property Obj: TObj read FObj;
    property ResultCode: Integer read FResultCode write FResultCode;
    property ResultMessage: string read FResultMessage write FResultMessage;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;
  // ____________________________________________________________________
    TError1 = class(TJsonDTO)
  private
    FObj: Int64;
    FResultCode: Integer;
    FResultMessage: string;
  published
    property Obj: Int64 read FObj write FObj;
    property ResultCode: Integer read FResultCode write FResultCode;
    property ResultMessage: string read FResultMessage write FResultMessage;
  end;
  // ____________________________________________________________________
  TInputWrapper = class(TJsonDTO)
  private
    FInput: TUserJame;
  published
    property Input: TUserJame read FInput write FInput;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

implementation

{ TDocumentList }

constructor TDocumentList.Create;
begin
  inherited;
  FBuyerInfo := TBuyerInfo.Create;
  FWayBill := TWayBill.Create;
  FImportsDeclareInfo := TImportsDeclareInfo.Create;
end;

destructor TDocumentList.Destroy;
begin
  FBuyerInfo.Free;
  FWayBill.Free;
  FImportsDeclareInfo.Free;
  GetStuffsIn.Free;
  inherited;
end;

function TDocumentList.GetStuffsIn: TObjectList<TStuffsIn>;
begin
  Result := ObjectList<TStuffsIn>(FStuffsIn, FStuffsInArray);
end;

function TDocumentList.GetAsJson: string;
begin
  RefreshArray<TStuffsIn>(FStuffsIn, FStuffsInArray);
  Result := inherited;
end;

{ TRoot }

destructor TUserJame.Destroy;
begin
  GetDocumentList.Free;
  inherited;
end;

function TUserJame.GetDocumentList: TObjectList<TDocumentList>;
begin
  Result := ObjectList<TDocumentList>(FDocumentList, FDocumentListArray);
end;

function TUserJame.GetAsJson: string;
begin
  RefreshArray<TDocumentList>(FDocumentList, FDocumentListArray);
  Result := inherited;
end;

destructor TObj.Destroy;
begin
  GetErrorList.Free;
  GetSuccessList.Free;
  inherited;
end;

function TObj.GetErrorList: TObjectList<TErrorList>;
begin
  Result := ObjectList<TErrorList>(FErrorList, FErrorListArray);
end;

function TObj.GetSuccessList: TObjectList<TSuccessList>;
begin
  Result := ObjectList<TSuccessList>(FSuccessList, FSuccessListArray);
end;

function TObj.GetAsJson: string;
begin
  RefreshArray<TErrorList>(FErrorList, FErrorListArray);
  RefreshArray<TSuccessList>(FSuccessList, FSuccessListArray);
  Result := inherited;
end;

{ TRoot }

constructor TRootError.Create;
begin
  inherited;
  FObj := TObj.Create;
end;

destructor TRootError.Destroy;
begin
  FObj.Free;
  inherited;
end;

constructor TInputWrapper.Create;
begin
  inherited;
  FInput := TUserJame.Create;
end;

destructor TInputWrapper.Destroy;
begin
  FInput.Free;
  inherited;
end;


end.
