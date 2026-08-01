unit frLookup;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms,
  Buttons, StdCtrls, DB, ADODB, FaraConsts;

type
  TfrLookupF = class(TFrame)
    cmbLookup: TComboBox;
    SpeedButton1: TSpeedButton;
    lblCaption: TLabel;
    procedure cmbLookupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cmbLookupChange(Sender: TObject);
    procedure cmbLookupEnter(Sender: TObject);
  private
    fCode: integer;
    fLType: Byte;
    fAConncetion: TADOConnection;
    function getText: string;
    procedure setCode(const Value: integer);
    function getFieldName: TField;
    function GetItemIndex: integer;
    procedure SetItemIndex(const Value: integer);
    function GetCount: integer;
//    function GetDisplayField: string;
    { Private declarations }
  public

    lType: Byte;
    fDataSet: TcustomADODataSet;
    fFieldName: String;
    OnChange: TNotifyEvent;
    constructor Create(AOwner: TComponent); override;
    property Field: TField read getFieldName;
    property code: integer read fCode write setCode;
    property text: string read getText;
//    property DisplayField: string read GetDisplayField;
    property ItemIndex: integer read GetItemIndex write SetItemIndex;
    property Count: integer read GetCount;
    procedure Load;
    procedure Save;
    procedure Lock;
    procedure unLock;
    procedure doFilter(flt: string);
    procedure init(lType: Byte; lCaption: string = '';
      aDataSet: TcustomADODataSet = nil; aFieldName: string = '';
      aConnection: TADOConnection = nil); overload;
    procedure init(sqlText: string; lCaption: string = '';
      aDataSet: TcustomADODataSet = nil; aFieldName: string = '';
      aConnection: TADOConnection = nil;
      DisplayCodeIndex: integer = 0); overload;
    procedure init(aDataSet: TcustomADODataSet; lCaption: string;
      fldCode: string; fldCaption: string;
      DisplayCodeIndex: integer = 0); overload;
    procedure init(sqlText: string; lCaption: string;

      aConnection: TADOConnection); overload;
    { Public declarations }
  end;

function GetCharFromVirtualKey(Key: Word): string;

implementation

uses SearchStringItems, GlobalPro;

{$R *.dfm}
{ TfrLookupF }

function TfrLookupF.getText: string;
begin
  result := cmbLookup.text;
end;

procedure TfrLookupF.init(sqlText, lCaption: string;
  aConnection: TADOConnection);
begin
  init(sqlText, lCaption, nil, '', aConnection, 0);
end;

procedure TfrLookupF.init(aDataSet: TcustomADODataSet;
  lCaption, fldCode, fldCaption: string; DisplayCodeIndex: integer);
begin
  Font := var_glb_DefaultFont;
  cmbLookup.Anchors := Self.Anchors;
  lblCaption.Top := 0;
  lblCaption.Height := Self.Height;
  lblCaption.Caption := lCaption;
  cmbLookup.Items.BeginUpdate;
  cmbLookup.Clear;
  with aDataSet do
  begin
    first;
    while not eof do
    begin
      cmbLookup.AddItem(fieldbyname(fldCode).AsString + '-' +
        fieldbyname(fldCaption).AsString,
        TObject(fieldbyname(fldCode).AsInteger));
      Next;
    end; // while
    if cmbLookup.Items.Count > 0 then
    begin
      cmbLookup.ItemIndex := 0;
      cmbLookupChange(cmbLookup)
    end;
    Active := False;
    cmbLookup.Items.EndUpdate;
  end; // with
end;

procedure TfrLookupF.init(lType: Byte; lCaption: string = '';
  aDataSet: TcustomADODataSet = nil; aFieldName: string = '';
  aConnection: TADOConnection = nil);
var
  qry: TADOQuery;
begin
  Font := var_glb_DefaultFont;
  qry := TADOQuery.Create(Self);
  cmbLookup.Anchors := Self.Anchors;
  lblCaption.Top := 0;
  lblCaption.Height := Self.Height;
  // lblCaption.Anchors:=self.anchors;
  try
    fDataSet := aDataSet;
    fFieldName := aFieldName;
    fAConncetion := aConnection;
    if fAConncetion = nil then
      fAConncetion := theMainConnection;
    fLType := lType;
    if lCaption <> '' then
      lblCaption.Caption := lCaption;
    cmbLookup.Items.BeginUpdate;
    cmbLookup.Clear;
    with qry do
    begin
      Connection := fAConncetion;
      SQL.text := 'select lcode,lname from lookups where ltype=' +
        IntToStr(lType) + ' order by lCode';
      Active := True;
      while not eof do
      begin
        cmbLookup.AddItem(fields[0].AsString + '- ' + fields[1].AsString,
          TObject(fields[0].AsInteger));
        Next;
      end; // while
      Active := False;
      cmbLookup.Items.EndUpdate;
    end; // with
  finally
    qry.Free;
  end; // try
end;

procedure TfrLookupF.Load;
begin
  if Assigned(fDataSet) then
    if not fDataSet.fieldbyname(fFieldName).IsNull then
      code := fDataSet.fieldbyname(fFieldName).AsInteger
    else
      code := 0;
end;

procedure TfrLookupF.Save;
begin
  if Assigned(fDataSet) then
    if fDataSet.State in dseditmodes then
      fDataSet.fieldbyname(fFieldName).AsInteger := fCode;
end;

procedure TfrLookupF.setCode(const Value: integer);
begin
  fCode := Value;

  cmbLookup.ItemIndex := cmbLookup.Items.IndexOfObject(TObject(fCode));
  cmbLookupChange(cmbLookup);
end;

procedure TfrLookupF.cmbLookupEnter(Sender: TObject);
begin
  // cmbLookup.sele
end;

procedure TfrLookupF.cmbLookupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [vk_down, vk_up, vk_escape] then
    exit;
  if Key = VK_DELETE then
  begin
    Key := 0;
    code := 0;
    exit;
  end
  else
  begin
    if Key = vk_space then
    begin
      Key := 0;
      cmbLookup.HelpKeyword := GetCharFromVirtualKey(Key);
      SpeedButton1Click(cmbLookup);
    end; // if
  end; // if
end;

constructor TfrLookupF.Create(AOwner: TComponent);
begin
  inherited;
  if (ClassType <> TfrLookupF) and not(csDesignInstance in ComponentState) then
  begin
    if not InitInheritedComponent(Self, TfrLookupF) then
      raise EResNotFound.CreateFmt('Resource %s not found', [ClassName]);
  end;
end;

procedure TfrLookupF.SetItemIndex(const Value: integer);
begin
  cmbLookup.ItemIndex := Value;
  cmbLookupChange(cmbLookup);
end;

procedure TfrLookupF.SpeedButton1Click(Sender: TObject);
var
  i: integer;
begin
  i := cmbLookup.ItemIndex;
  // if SearchStringItemsF.DoSearch(cmbLookup.Items,i,'',0,8,false,ifthen(sender is tcombobox,(sender as TComboBox).HelpKeyword,'')) then begin
  if SearchStringItemsF.DoSearch(cmbLookup.Items, i, '', 0, Font.Size, False, '')
  then
  begin
    cmbLookup.ItemIndex := i;
    cmbLookupChange(cmbLookup);
  end; // if
end;

procedure TfrLookupF.cmbLookupChange(Sender: TObject);
begin
  if cmbLookup.ItemIndex = -1 then
    fCode := 0
  else
    fCode := integer(cmbLookup.Items.Objects[cmbLookup.ItemIndex]);
  if Assigned(OnChange) then
    OnChange(Self);
end;

procedure TfrLookupF.Lock;
begin
  cmbLookup.Enabled := False;
  SpeedButton1.Enabled := False;
end;

procedure TfrLookupF.unLock;
begin
  cmbLookup.Enabled := True;
  SpeedButton1.Enabled := True;
end;

procedure TfrLookupF.doFilter(flt: string);
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  try
    cmbLookup.Items.BeginUpdate;
    cmbLookup.Clear;
    with qry do
    begin
      Connection := fAConncetion;
      SQL.text := 'select lcode,lcaption from lookups where (ltype=' +
        IntToStr(fLType) + ')';
      if flt <> '' then
        SQL.Add('and (' + flt + ')');
      SQL.Add('order by lCode');
      Active := True;
      while not eof do
      begin
        cmbLookup.AddItem(fields[0].AsString + '- ' + fields[1].AsString,
          TObject(fields[0].AsInteger));
        Next;
      end; // while
      Active := False;
      cmbLookup.Items.EndUpdate;
    end; // with
  finally
    qry.Free;
  end; // try
end;

function TfrLookupF.GetCount: integer;
begin
  result := cmbLookup.Items.Count;
end;

//function TfrLookupF.GetDisplayField: string;
//begin
//  result := text.Substring(Pos('-', text), text.Length);
//end;

procedure TfrLookupF.init(sqlText, lCaption: string;
  aDataSet: TcustomADODataSet; aFieldName: string; aConnection: TADOConnection;
  DisplayCodeIndex: integer);
var
  qry: TADOQuery;
  s: String;
begin
  Font := var_glb_DefaultFont;
  qry := TADOQuery.Create(Self);
  cmbLookup.Anchors := Self.Anchors;
  lblCaption.Top := 0;
  lblCaption.Height := Self.Height;
  // lblCaption.Anchors:=self.anchors;
  try
    fDataSet := aDataSet;
    fFieldName := aFieldName;
    fAConncetion := aConnection;
    if fAConncetion = nil then
      fAConncetion := theMainConnection;
    fLType := lType;
    if lCaption <> '' then
      lblCaption.Caption := lCaption;
    cmbLookup.Items.BeginUpdate;
    cmbLookup.Clear;
    with qry do
    begin
      Connection := fAConncetion;
      SQL.text := sqlText;
      Active := True;
      while not eof do
      begin
        s := fields[1].AsString;
        if DisplayCodeIndex <> -1 then
          s := fields[DisplayCodeIndex].AsString + '- ' + s;
        cmbLookup.Items.AddObject(s, TObject(fields[0].AsInteger));
        Next;
      end; // while
      Active := False;
      cmbLookup.Items.EndUpdate;
    end; // with
  finally
    qry.Free;
  end; // try
end;

function GetCharFromVirtualKey(Key: Word): string;
var
  keyboardState: TKeyboardState;
  asciiResult: integer;
begin
  GetKeyboardState(keyboardState);

  SetLength(result, 2);
  asciiResult := ToAscii(Key, MapVirtualKey(Key, 0), keyboardState,
    @result[1], 0);
  case asciiResult of
    0:
      result := '';
    1:
      SetLength(result, 1);
    2:
      ;
  else
    result := '';
  end;
end;

function TfrLookupF.getFieldName: TField;
begin
  result := nil;
  if fDataSet = nil then
    exit;
  result := fDataSet.fieldbyname(fFieldName);
end;

function TfrLookupF.GetItemIndex: integer;
begin
  result := cmbLookup.ItemIndex;
end;

end.
