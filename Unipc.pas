unit Unipc;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  // TAdditionalInformationDTO_001 = class
  // private
  // FTitle: string;
  // FValue: string;
  // published
  // property Title: string read FTitle write FTitle;
  // property Value: string read FValue write FValue;
  // end;

  TAdditionalInformationDTO = class
  private
    FTitle: string;
    FValue: string;
  published
    property Title: string read FTitle write FTitle;
    property Value: string read FValue write FValue;
  end;

  TGoodsIssuesListDTO = class
  private
    FGood_Id: string;
    FProduction_Type: string;
    FMeasurement_Unit: string;
    FCount: Int64;
    FNet_Weight: string;
    [JSONName('AdditionalInformation')]
    FAdditionalInformationArray: TArray<TAdditionalInformationDTO>;
    [GenericListReflect]
    FAdditionalInformation: TObjectList<TAdditionalInformationDTO>;
    function GetAdditionalInformation: TObjectList<TAdditionalInformationDTO>;
  published
    property AdditionalInformation: TObjectList<TAdditionalInformationDTO>
      read GetAdditionalInformation;
    property Count: Int64 read FCount write FCount;
    property Good_Id: string read FGood_Id write FGood_Id;
    property Measurement_Unit: string read FMeasurement_Unit
      write FMeasurement_Unit;
    property Net_Weight: string read FNet_Weight write FNet_Weight;
    property Production_Type: string read FProduction_Type
      write FProduction_Type;
    destructor Destroy; override;
  end;

  TEntityDTO = class
  private
    FOwner: string;
    FNumber: string;
    FWarehouse_Id: string;
    FLoad_Date: string;
    FReference_Doc_Type: string;
    FReference_Doc_Number: string;
    FCarrier_National_Id: string;
    FReference_Doc_Id: string;
    FConsignee_National_Id: string;
    FCarrier_Name: string;
    FVehicle_Name: string;
    FVehicle_Number: string;
    FVehicle_Type: string;
    FNet_Weight: Integer;
    FPostal_Code: string;
    FGross_Weight: Integer;
    FDescription: string;
    FPlace_Description: string;
    FGoods_Issue_Date: string;
    FGov_Number: string;
    FContractor_National_Id: string;
    FOwner_Birth_Date: string;
    [JSONName('AdditionalInformation')]
    FAdditionalInformationArray: TArray<TAdditionalInformationDTO>;
    [GenericListReflect]
    FAdditionalInformation: TObjectList<TAdditionalInformationDTO>;
    [JSONName('GoodsIssuesList')]
    FGoodsIssuesListArray: TArray<TGoodsIssuesListDTO>;
    [GenericListReflect]
    FGoodsIssuesList: TObjectList<TGoodsIssuesListDTO>;

    function GetAdditionalInformation: TObjectList<TAdditionalInformationDTO>;
    function GetGoodsIssuesList: TObjectList<TGoodsIssuesListDTO>;
  published
    property AdditionalInformation: TObjectList<TAdditionalInformationDTO>
      read GetAdditionalInformation;
    property Carrier_Name: string read FCarrier_Name write FCarrier_Name;
    property Carrier_National_Id: string read FCarrier_National_Id
      write FCarrier_National_Id;
    property Consignee_National_Id: string read FConsignee_National_Id
      write FConsignee_National_Id;
    property Contractor_National_Id: string read FContractor_National_Id
      write FContractor_National_Id;
    property GoodsIssuesList: TObjectList<TGoodsIssuesListDTO>
      read GetGoodsIssuesList;
    property Goods_Issue_Date: string read FGoods_Issue_Date
      write FGoods_Issue_Date;
    property Gov_Number: string read FGov_Number write FGov_Number;
    property Description: string read FDescription write FDescription;
    property Place_Description: string read FPlace_Description
      write FPlace_Description;
    property Gross_Weight: Integer read FGross_Weight write FGross_Weight;
    property Load_Date: string read FLoad_Date write FLoad_Date;
    property Net_Weight: Integer read FNet_Weight write FNet_Weight;
    property Number: string read FNumber write FNumber;
    property Warehouse_Id: string read FWarehouse_Id write FWarehouse_Id;
    property Owner: string read FOwner write FOwner;
    property Owner_Birth_Date: string read FOwner_Birth_Date
      write FOwner_Birth_Date;
    property Postal_Code: string read FPostal_Code write FPostal_Code;
    property Reference_Doc_Id: string read FReference_Doc_Id
      write FReference_Doc_Id;
    property Reference_Doc_Number: string read FReference_Doc_Number
      write FReference_Doc_Number;
    property Reference_Doc_Type: string read FReference_Doc_Type
      write FReference_Doc_Type;
    property Vehicle_Name: string read FVehicle_Name write FVehicle_Name;
    property Vehicle_Number: string read FVehicle_Number write FVehicle_Number;
    property Vehicle_Type: string read FVehicle_Type write FVehicle_Type;
    destructor Destroy; override;
  end;

  TRootDTO = class(TJsonDTO)
  private
    FUsername: string;
    FPassword: string;
    FEntity: TEntityDTO;
  published
    property Entity: TEntityDTO read FEntity write FEntity;
    property Password: string read FPassword write FPassword;
    property Username: string read FUsername write FUsername;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

  /// ////////////////////////////  Result /////////////////////////////////////
  // TModelDTO = class
  // private
  // FFieldName: string;
  // FMessageType: string;
  // FW: string;
  // published
  // property FieldName: string read FFieldName write FFieldName;
  // property MessageType: string read FMessageType write FMessageType;
  // property W: string read FW write FW;
  // end;
  //
  // TResultDTO = class(TJsonDTO)
  // private
  // [JSONName('Model')]
  // FModelArray: TArray<TModelDTO>;
  // [GenericListReflect]
  // FModel: TObjectList<TModelDTO>;
  // FStatus: Integer;
  // function GetModel: TObjectList<TModelDTO>;
  // published
  // property Model: TObjectList<TModelDTO> read GetModel;
  // property Status: Integer read FStatus write FStatus;
  // destructor Destroy; override;
  // end;
  /// ////////////////////////////  Result /////////////////////////////////////
  TResultDTO = class(TJsonDTO)
  private
    FStatus: Integer;
    FMessage: string;
    FModel: string;
  published
    property Message: string read FMessage write FMessage;
    property Model: string read FModel write FModel;
    property Status: Integer read FStatus write FStatus;
  end;
  /// ////////////////////////////  Result /////////////////////////////////////

function AdditionalInfAdd(Title, Value: string): TAdditionalInformationDTO;

implementation

{ TGoodsIssuesListDTO }

destructor TGoodsIssuesListDTO.Destroy;
begin
  GetAdditionalInformation.Free;
  inherited;
end;

function TGoodsIssuesListDTO.GetAdditionalInformation
  : TObjectList<TAdditionalInformationDTO>;
begin
  if not Assigned(FAdditionalInformation) then
  begin
    FAdditionalInformation := TObjectList<TAdditionalInformationDTO>.Create;
    FAdditionalInformation.AddRange(FAdditionalInformationArray);
  end;
  Result := FAdditionalInformation;
end;

{ TEntityDTO }

destructor TEntityDTO.Destroy;
begin
  GetAdditionalInformation.Free;
  GetGoodsIssuesList.Free;
  inherited;
end;

function TEntityDTO.GetAdditionalInformation
  : TObjectList<TAdditionalInformationDTO>;
begin
  if not Assigned(FAdditionalInformation) then
  begin
    FAdditionalInformation := TObjectList<TAdditionalInformationDTO>.Create;
    FAdditionalInformation.AddRange(FAdditionalInformationArray);
  end;
  Result := FAdditionalInformation;
end;

function TEntityDTO.GetGoodsIssuesList: TObjectList<TGoodsIssuesListDTO>;
begin
  if not Assigned(FGoodsIssuesList) then
  begin
    FGoodsIssuesList := TObjectList<TGoodsIssuesListDTO>.Create;
    FGoodsIssuesList.AddRange(FGoodsIssuesListArray);
  end;
  Result := FGoodsIssuesList;
end;

{ TRootDTO }

constructor TRootDTO.Create;
begin
  inherited;
  FEntity := TEntityDTO.Create;
end;

destructor TRootDTO.Destroy;
begin
  FEntity.Free;
  inherited;
end;

function AdditionalInfAdd(Title, Value: string): TAdditionalInformationDTO;
begin
  Result := TAdditionalInformationDTO.Create;
  Result.Title := Title;
  Result.Value := Value;
end;

/// ////////////////////////////  Result /////////////////////////////////////
//destructor TResultDTO.Destroy;
//begin
//  GetModel.Free;
//  inherited;
//end;
//
//function TResultDTO.GetModel: TObjectList<TModelDTO>;
//begin
//  if not Assigned(FModel) then
//  begin
//    FModel := TObjectList<TModelDTO>.Create;
//    FModel.AddRange(FModelArray);
//  end;
//  Result := FModel;
//end;
/// ////////////////////////////  Result /////////////////////////////////////

end.
