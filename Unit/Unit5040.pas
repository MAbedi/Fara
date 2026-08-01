/// abedi 14021024
unit Unit5040;

interface

uses
  Pkg5040.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TGifts = class;
  TProducts = class;

  TGifts = class
  private
    FCode: string;
    FDiscount: Integer;
    [JSONName('final_price')]
    FFinalPrice: Integer;
    FName: string;
    FNumber: Integer;
    FPrice: Integer;
  published
    property Code: string read FCode write FCode;
    property Discount: Integer read FDiscount write FDiscount;
    property FinalPrice: Integer read FFinalPrice write FFinalPrice;
    property Name: string read FName write FName;
    property Number: Integer read FNumber write FNumber;
    property Price: Integer read FPrice write FPrice;
  end;

  TProducts = class
  private
    FCode: string;
    FDiscount: Integer;
    [JSONName('final_price')]
    FFinalPrice: Integer;
    FName: string;
    FNumber: Integer;
    [JSONName('pay_type')]
    FPayType: string;
    FPrice: Integer;
  published
    property Code: string read FCode write FCode;
    property Discount: Integer read FDiscount write FDiscount;
    property FinalPrice: Integer read FFinalPrice write FFinalPrice;
    property Name: string read FName write FName;
    property Number: Integer read FNumber write FNumber;
    property PayType: string read FPayType write FPayType;
    property Price: Integer read FPrice write FPrice;
  end;

  TDataInv = class(TJsonDTO)
  private
    [JSONName('agent_name')]
    FAgentName: string;
    [JSONName('created_at')]
    FCreatedAt: string;
    [JSONName('customer_id')]
    FCustomerId: string;
    [JSONName('discounted_price')]
    FDiscountedPrice: Integer;
    [JSONName('factor_type')]
    FFactorType: string;
    [JSONName('gifts'), JSONMarshalled(False)]
    FGiftsArray: TArray<TGifts>;
    // [GenericListReflect]
    FGifts: TObjectList<TGifts>;
    FPrice: Integer;
    [JSONName('products'), JSONMarshalled(False)]
    FProductsArray: TArray<TProducts>;
    // [GenericListReflect]
    FProducts: TObjectList<TProducts>;
    FSerial: Integer;
    [JSONName('agent_id')]
    FAgentid: string;
    function GetGifts: TObjectList<TGifts>;
    function GetProducts: TObjectList<TProducts>;
  protected
    function GetAsJson: string; override;
  published
    property AgentName: string read FAgentName write FAgentName;
    property CreatedAt: string read FCreatedAt write FCreatedAt;
    property CustomerId: string read FCustomerId write FCustomerId;
    property Agentid: string read FAgentid write FAgentid;
    property DiscountedPrice: Integer read FDiscountedPrice write FDiscountedPrice;
    property FactorType: string read FFactorType write FFactorType;
    property Gifts: TObjectList<TGifts> read GetGifts;
    property Price: Integer read FPrice write FPrice;
    property Products: TObjectList<TProducts> read GetProducts;
    property Serial: Integer read FSerial write FSerial;
  public
    destructor Destroy; override;
  end;

  TRoot = class(TJsonDTO)
  private
    [JSONName('data'), JSONMarshalled(False)]
    FDataArray: TArray<TDataInv>;
    // [GenericListReflect]
    FDataInv: TObjectList<TDataInv>;
    FStatus: Boolean;
    function GetData: TObjectList<TDataInv>;
  protected
    function GetAsJson: string; override;
  published
    property DataInv: TObjectList<TDataInv> read GetData;
    property Status: Boolean read FStatus write FStatus;
  public
    destructor Destroy; override;
  end;

implementation

{ TData }

destructor TDataInv.Destroy;
begin
  GetProducts.Free;
  GetGifts.Free;
  inherited;
end;

function TDataInv.GetGifts: TObjectList<TGifts>;
begin
  Result := ObjectList<TGifts>(FGifts, FGiftsArray);
end;

function TDataInv.GetProducts: TObjectList<TProducts>;
begin
  Result := ObjectList<TProducts>(FProducts, FProductsArray);
end;

function TDataInv.GetAsJson: string;
begin
  RefreshArray<TGifts>(FGifts, FGiftsArray);
  RefreshArray<TProducts>(FProducts, FProductsArray);
  Result := inherited;
end;

{ TRoot }

destructor TRoot.Destroy;
begin
  GetData.Free;
  inherited;
end;

function TRoot.GetData: TObjectList<TDataInv>;
begin
  Result := ObjectList<TDataInv>(FDataInv, FDataArray);
end;

function TRoot.GetAsJson: string;
begin
  RefreshArray<TDataInv>(FDataInv, FDataArray);
  Result := inherited;
end;

end.

