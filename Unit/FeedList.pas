unit FeedList;

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
    [JSONName('b5hcpriority_id')]
    FB5hcpriorityId: Integer;
    [JSONName('b5hcstatus_id')]
    FB5hcstatusId: Integer;
    [JSONName('b5idref_id_11')]
    FB5idrefId11: Integer;
    [JSONName('b5idref_id_3')]
    FB5idrefId3: Integer;
    [JSONName('b5idref_id_8')]
    FB5idrefId8: Integer;
    FComments: WideString;
    FId: Integer;
    FNo: Integer;
    FOrg: WideString;
    FStatus: WideString;
    FSubject: WideString;
    [JSONName('t5sctype_id')]
    FT5sctypeId: Integer;
    FTaskdate: WideString;
    FTitle: WideString;
  published
    property B5hcpriorityId: Integer read FB5hcpriorityId write FB5hcpriorityId;
    property B5hcstatusId: Integer read FB5hcstatusId write FB5hcstatusId;
    property B5idrefId11: Integer read FB5idrefId11 write FB5idrefId11;
    property B5idrefId3: Integer read FB5idrefId3 write FB5idrefId3;
    property B5idrefId8: Integer read FB5idrefId8 write FB5idrefId8;
    property Comments: WideString read FComments write FComments;
    property Id: Integer read FId write FId;
    property No: Integer read FNo write FNo;
    property Org: WideString read FOrg write FOrg;
    property Status: WideString read FStatus write FStatus;
    property Subject: WideString read FSubject write FSubject;
    property T5sctypeId: Integer read FT5sctypeId write FT5sctypeId;
    property Taskdate: WideString read FTaskdate write FTaskdate;
    property Title: WideString read FTitle write FTitle;
  end;
  
  TRootList = class(TJsonDTO)
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
  
implementation

{ TRoot }

destructor TRootList.Destroy;
begin
  GetItems.Free;
  GetLinks.Free;
  inherited;
end;

function TRootList.GetItems: TObjectList<TItems>;
begin
  Result := ObjectList<TItems>(FItems, FItemsArray);
end;

function TRootList.GetLinks: TObjectList<TLinks>;
begin
  Result := ObjectList<TLinks>(FLinks, FLinksArray);
end;

function TRootList.GetAsJson: string;
begin
  RefreshArray<TItems>(FItems, FItemsArray);
  RefreshArray<TLinks>(FLinks, FLinksArray);
  Result := inherited;
end;

end.
