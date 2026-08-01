unit FrMakeDocs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Vcl.DBGrids, DM, ADODB, StdCtrls, Mask, DBCtrls, Menus,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmMakeDocs = class(TFrame)
    DBGrid1: TDBGrid;
    srcMakeDocs: TDataSource;
    qryMakeDocs: TADOQuery;
    qryMakeDocsDocKind: TIntegerField;
    qryMakeDocsDocType: TIntegerField;
    qryMakeDocsDocTypeIndex: TIntegerField;
    qryMakeDocsDocRow: TIntegerField;
    qryMakeDocsDocCaption: TWideStringField;
    qryMakeDocsDocName: TWideStringField;
    edtDocName: TDBEdit;
    BitBtn1: TBitBtn;
    procedure qryMakeDocsBeforePost(DataSet: TDataSet);
    procedure qryMakeDocsDocNameGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryMakeDocsBeforeOpen(DataSet: TDataSet);
    procedure qryMakeDocsAfterInsert(DataSet: TDataSet);
    procedure edtDocNameEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
    FDocKind: Integer;
    FDocType: Integer;
    FDocTypeIndex: Integer;
    FmyHeight: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Public declarations }
    Property DocKind: Integer read FDocKind write FDocKind;
    Property DocType: Integer read FDocType write FDocType;
    Property DocTypeIndex: Integer read FDocTypeIndex write FDocTypeIndex;
    Property myHeight: Integer read FmyHeight write FmyHeight;
    procedure InsertDocCaption(DocCaption, DocName: String);
    function IsFirstTime: Boolean;
    function GetGROUPBY: String;
    function GetMakeDocs: String;

  end;

implementation

uses GlobalPro, FaraConsts, FormFunctions;

{$R *.dfm}

function TfrmMakeDocs.GetMakeDocs: String;
begin
  With qryMakeDocs do
  begin
    First;
    Result := ''' ' + FieldByName('DocCaption').AsString + ' '' + ' +
      FieldByName('DocName').AsString;
    Next;
    while not eof do
    begin
      Result := Result + ' + '' ' + FieldByName('DocCaption').AsString +
        ' '' + ' + FieldByName('DocName').AsString;
      Next;
    end;
    EnableControls;
  end;
  Result := Result + ' AS Comment';
end;

procedure TfrmMakeDocs.BitBtn1Click(Sender: TObject);
begin
  if get_response('آيا براي حذف کلی سطرها مطمئن هستيد؟') = mrYes then
    with qryMakeDocs do
    begin
      First;
      while not eof do
        Delete;
    end;
end;

constructor TfrmMakeDocs.Create(AOwner: TComponent);
begin
  inherited;
  myHeight := 20;
  Enabled := CheckUserlevel2(opt.MakeDocsLevelID, False);
end;

destructor TfrmMakeDocs.Destroy;
begin
  SaveConfig(APPID, Self.Name + IntToStr(DocKind) + 'DBGrid1Height',
    IntToStr(Height));
  inherited;
end;

procedure TfrmMakeDocs.edtDocNameEnter(Sender: TObject);
begin
  SetKeyboardLatin
end;

function TfrmMakeDocs.GetGROUPBY: String;
var
  s: string;
  b: Boolean;
begin
  With qryMakeDocs do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      s := UpperCase(FieldByName('DocName').AsString);
      b := (Pos('MAX(', s) = 0);
      b := (Pos('MIN(', s) = 0) and b;
      b := (Pos('SUM(', s) = 0) and b;
      if b then
        Result := Result + ',' + StringReplace(s, 'STR', '', [rfReplaceAll]);
      Next;
    end;
    EnableControls;
  end;
 // Result:=Result + ' HAVING SUM(bed)+ SUM(bes)<>0'
end;

procedure TfrmMakeDocs.InsertDocCaption(DocCaption, DocName: String);
begin
  With qryMakeDocs do
  begin
    Insert;
    // FieldByName('DocRow').AsInteger := RecordCount + 1;
    // FieldByName('DocKind').AsInteger := DocKind;
    // FieldByName('DocType').AsInteger := DocType;
    // FieldByName('DocTypeIndex').AsInteger := DocTypeIndex;
    FieldByName('DocCaption').AsString := DocCaption;
    FieldByName('DocName').AsString := DocName;
    Post;
  end;

end;

function TfrmMakeDocs.IsFirstTime: Boolean;
begin
  With qryMakeDocs do
  begin
    Active := False;
    DisableControls;
    SQL.Text := 'SELECT DocKind,DocType,DocTypeIndex,DocRow,DocCaption,DocName';
    SQL.Add('FROM MakeDocs');
    SQL.Add('WHERE (DocKind = %d) AND (DocType = %d) AND (DocTypeIndex = %d)');
    SQL.Add('ORDER BY DocRow');
    SQL.Text := Format(SQL.Text, [DocKind, DocType, DocTypeIndex]);
    Active := True;
    Result := RecordCount = 0;
  end;
end;

procedure TfrmMakeDocs.qryMakeDocsAfterInsert(DataSet: TDataSet);
begin
  With qryMakeDocs do
  begin
    FieldByName('DocRow').AsInteger := RecordCount + 1;
    FieldByName('DocKind').AsInteger := DocKind;
    FieldByName('DocType').AsInteger := DocType;
    FieldByName('DocTypeIndex').AsInteger := DocTypeIndex;
  end;
end;

procedure TfrmMakeDocs.qryMakeDocsBeforeOpen(DataSet: TDataSet);
begin
  case DocKind of
    0:
      With DBGrid1.Columns[2].PickList do
      begin
        Clear;
        Add('STR(ReciptitemID)');
        Add('STR(ReciptID)');
        Add('STR(StoreID)');
        Add('STR(ReciptNumber)');
        Add('ReciptDate');
        Add('STR(ReciptType)');
        Add('STR(CustID)');
        Add('CustName');
        Add('STR(StuffCode)');
        Add('c_StuffName');
        Add('STR(BedType)');
        Add('ReciptCaption');
        Add('STR(Entity)');
        Add('STR(Weight)');
        Add('STR(AidNumber)');
        Add('AidDate');
        Add('STR(IAidNumber)');
        Add('IAidDate');
        Add('STR(ControlCode)');
        Add('ItemNote');
        Add('STR(UnitSellPrice)');
        Add('MachineName');
        Add('MachineNo');
        Add('MachineInfo');
        Add('TruckNumber');
        Add('STR(ArzAmount)');
        Add('STR(TopicCode)');
        Add('LTRIM(SUM(ArzRate))');
        Add('MAX(ArzName)');
      end;

    1:
      With DBGrid1.Columns[2].PickList do
      begin
        Clear;
        Add('STR(FormItemID)');
        Add('STR(FormID)');
        Add('CheckNumber');
        Add('CheckDate');
        Add('STR(FormNumber)');
        Add('FormDate');
        Add('STR(FormType)');
        Add('FormCaption');
        Add('ItemNote');
        Add('ISNULL(FomNote; '''')');
        Add('STR(CustomerID2)');
        Add('CustName');
      end;
    2:
      With DBGrid1.Columns[2].PickList do
      begin
        Clear;
        Add('STR(FormID)');
        Add('STR(FormNumber)');
        Add('FormDate');
        Add('STR(FormType)');
        Add('FormCaption');
        Add('ISNULL(FomNote; '''')');
      end;
  end;

end;

procedure TfrmMakeDocs.qryMakeDocsBeforePost(DataSet: TDataSet);
begin
  if qryMakeDocs.FieldByName('DocCaption').IsNull and
    qryMakeDocs.FieldByName('DocName').IsNull then
  begin
    DataSet.Cancel;
    Abort;
  end;
end;

procedure TfrmMakeDocs.qryMakeDocsDocNameGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString + ''
end;

end.
