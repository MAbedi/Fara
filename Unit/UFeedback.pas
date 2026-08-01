unit UFeedback;

interface

uses
  Pkg.Json.DTOLOV, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TLinks = class
  private
    FHref: string;
    FRel: string;
  published
    property Href: string read FHref write FHref;
    property Rel: string read FRel write FRel;
  end;

  TItems = class
  private
    FId: Integer;
    FName: string;
    Fd: string;
    Fr: Integer;
  published
    property Id: Integer read FId write FId;
    property Name: string read FName write FName;
    property d: string read Fd write Fd;
    property r: Integer read Fr write Fr;
  end;

  TRoot = class(TJsonDTO)
  private
    FCount: Integer;
    FHasMore: Boolean;
    [JSONName('items'), JSONMarshalled(False)]
    FItemsArray: TArray<TItems>;
    [GenericListReflect]
    FItems: TObjectList<TItems>;
    FLimit: Integer;
    [JSONName('links'), JSONMarshalled(False)]
    FLinksArray: TArray<TLinks>;
    [GenericListReflect]
    FLinks: TObjectList<TLinks>;
    FOffset: Integer;
    function GetItems: TObjectList<TItems>;
    function GetLinks: TObjectList<TLinks>;
  protected
    function GetAsJson: string; override;
  published
    property Count: Integer read FCount write FCount;
    property HasMore: Boolean read FHasMore write FHasMore;
    property Items: TObjectList<TItems> read GetItems;
    property Limit: Integer read FLimit write FLimit;
    property Links: TObjectList<TLinks> read GetLinks;
    property Offset: Integer read FOffset write FOffset;
  public
    destructor Destroy; override;
  end;

  TRootFormData = class(TJsonDTO)
  private
    FSENDER_FEEDBACK_INFO: string;
    FORG: string;
    FB5IDREF_ID_8: Integer;
    FB5HCPRIORITY_ID: Integer;
    FSUBJECT: string;
    FB5IDREF_ID_11: Integer;
    FT5SCTYPE_ID: Integer;
    FCOMMENTS: string;
    Fb5hcstatus_id: Integer;
    Fb5idref_id_3: Integer;
    FId: Integer;
    FNo: Integer;
    FStatus: string;
    FTaskdate: string;
    FTitle: string;
  protected
    function GetAsJson: string; override;
  published
    property ORG: string read FORG write FORG;
    property B5IDREF_ID_8: Integer read FB5IDREF_ID_8 write FB5IDREF_ID_8;
    property B5IDREF_ID_11: Integer read FB5IDREF_ID_11 write FB5IDREF_ID_11;
    property T5SCTYPE_ID: Integer read FT5SCTYPE_ID write FT5SCTYPE_ID;
    property SUBJECT: string read FSUBJECT write FSUBJECT;
    property COMMENTS: string read FCOMMENTS write FCOMMENTS;
    property B5HCPRIORITY_ID: Integer read FB5HCPRIORITY_ID
      write FB5HCPRIORITY_ID;
    property SENDER_FEEDBACK_INFO: string read FSENDER_FEEDBACK_INFO
      write FSENDER_FEEDBACK_INFO;
    property B5hcstatusId: Integer read Fb5hcstatus_id write Fb5hcstatus_id;
    property B5idrefId3: Integer read Fb5idref_id_3 write Fb5idref_id_3;
    property Id: Integer read FId write FId;
    property No: Integer read FNo write FNo;
    property Status: string read FStatus write FStatus;
    property Taskdate: string read FTaskdate write FTaskdate;
    property Title: string read FTitle write FTitle;
  public
    destructor Destroy; override;
  end;

implementation

{ TRoot }

destructor TRoot.Destroy;
begin
  GetItems.Free;
  GetLinks.Free;
  inherited;
end;

function TRoot.GetItems: TObjectList<TItems>;
begin
  Result := ObjectList<TItems>(FItems, FItemsArray);
end;

function TRoot.GetLinks: TObjectList<TLinks>;
begin
  Result := ObjectList<TLinks>(FLinks, FLinksArray);
end;

function TRoot.GetAsJson: string;
begin
  RefreshArray<TItems>(FItems, FItemsArray);
  RefreshArray<TLinks>(FLinks, FLinksArray);
  Result := inherited;
end;

{ TRootFormDate }

destructor TRootFormData.Destroy;
begin

  inherited;
end;

function TRootFormData.GetAsJson: string;
begin
  Result := inherited;
end;

end.
