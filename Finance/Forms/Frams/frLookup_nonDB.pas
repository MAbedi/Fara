unit frLookup_nonDB;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms,
  StdCtrls, DB, ADODB;

type
  TfrLookup_nonDBF = class(TFrame)
    cmbLookup: TComboBox;
    lblCaption: TLabel;
    procedure cmbLookupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbLookupChange(Sender: TObject);
    procedure cmbLookupEnter(Sender: TObject);
  private
    fCode: int64;
    fFirstField:  String;
    fLock: boolean;
    fDataset: TDataSet;
    fFieldName: String;
    function getText: string;
    procedure setCode(const Value: int64);
    function isNotSelected: boolean;
    procedure setLocked(const Value: boolean);
    { Private declarations }
  public
    OnChange: TNotifyEvent;
    property code: int64 read fCode write setCode;
    property FirstField: string read fFirstField;
    property notSelected: boolean read isNotSelected;
    property text: string read getText;
    property locked: boolean read fLock write setLocked;
    procedure Lock;
    procedure unLock;
    procedure init(adc:TADOConnection; listQRY: string; lCaption: string='';DisplayCodeIndex: integer=0); overload;
    procedure init(aDataset: TDataSet;fldCode,fldCaption: string); overload;
    procedure assignField(aDataset: TDataSet; fldName: string);
    procedure load;
    procedure save;
    { Public declarations }
  end;

implementation

uses SearchStringItems, StrUtils;

{$R *.dfm}

{ TfrLookupF }

function TfrLookup_nonDBF.getText: string;
begin
  result:=cmbLookup.Text;
end;

procedure TfrLookup_nonDBF.init(adc:TADOConnection; listQRY: string; lCaption: string='';DisplayCodeIndex: integer=0);
var
  qry:  TADOQuery;
  s:  String;
begin
  qry:=TADOQuery.Create(adc);
  try
    if lCaption <>'' then
      lblCaption.Caption:=lCaption;
    cmbLookup.Items.BeginUpdate;
    cmbLookup.Items.Clear;
    with qry do begin
      Connection:=adc;
      SQL.Text:=listQRY;
      Active:=True;
      while not eof do begin
        s:=Fields[1].AsString;
        if displaycodeIndex<>-1 then
          s:=fields[displaycodeindex].AsString + '- ' + s;
        cmbLookup.Items.AddObject(s,TObject(strtointdef(trim(Fields[0].asstring),0)));
        Next;
      end;//while
      Active:=False;
      cmbLookup.Items.EndUpdate;
    end;//with
  finally
    qry.Free;
    Self.Repaint;
  end;//try
end;

procedure TfrLookup_nonDBF.setCode(const Value: int64);
begin
  fCode := Value;
  cmbLookup.ItemIndex:=cmbLookup.Items.IndexOfObject(TObject(fCode));
end;

procedure TfrLookup_nonDBF.cmbLookupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i:  Integer;
begin
  if key=vk_space then begin
    Key:=0;
    i:=cmbLookup.ItemIndex;
    if SearchStringItemsF.DoSearch(cmbLookup.Items,i,'',0,Font.Size) then begin
      cmbLookup.ItemIndex:=i;
      cmbLookupChange(cmbLookup);
    end;//if
  end else if key=VK_DELETE then begin
    Key:=0;
    code:=0;
    cmbLookup.ItemIndex:=-1;
  end;//if
end;

procedure TfrLookup_nonDBF.cmbLookupChange(Sender: TObject);
var
  i:  Integer;
begin
  if cmbLookup.ItemIndex=-1 then begin
    fCode:=0;
    fFirstField:='';
  end
  else begin
    fCode:=integer(cmbLookup.Items.Objects[cmbLookup.ItemIndex]);
    i:=pos('-',cmbLookup.Text);
    if i<>0 then
      fFirstField:=LeftStr(cmbLookup.Text,i-2)
    else
      fFirstField:='';
  end;
  if Assigned(onchange) then OnChange(Self);
end;

procedure TfrLookup_nonDBF.Lock;
begin
  cmbLookup.Enabled:=False;
  fLock:=True;
end;

procedure TfrLookup_nonDBF.unLock;
begin
  cmbLookup.Enabled:=True;
  fLock:=False;
end;


function TfrLookup_nonDBF.isNotSelected: boolean;
begin
  Result:=cmbLookup.ItemIndex=-1;
end;

procedure TfrLookup_nonDBF.setLocked(const Value: boolean);
begin
  fLock := Value;
  if fLock then Lock else unLock;
end;

procedure TfrLookup_nonDBF.init(aDataset: TDataSet; fldCode,
  fldCaption: string);
var
  s:  String;
begin
  cmbLookup.Items.BeginUpdate;
  cmbLookup.Items.Clear;
  with aDataSet do begin
    Active:=True;
    first;
    while not eof do begin
      s:=fieldbyname(fldCode).AsString + ' - ' + FieldByName(fldCaption).AsString;
      cmbLookup.Items.AddObject(s,TObject(FieldByName(fldCode).AsInteger));
      Next;
    end;//while
    Active:=False;
    cmbLookup.Items.EndUpdate;
  end;//with
  Self.Repaint;
end;

procedure TfrLookup_nonDBF.cmbLookupEnter(Sender: TObject);
begin
  if Self.Tag=123 then
    cmbLookup.DroppedDown:=true;
end;

procedure TfrLookup_nonDBF.assignField(aDataset: TDataSet;
  fldName: string);
begin
  fDataset:=aDataset;
  fFieldName:=fldName;
end;

procedure TfrLookup_nonDBF.load;
begin
  if not Assigned(fDataset) then exit;
  if fDataset.Active then
    code:=fDataset.fieldbyname(fFieldName).AsInteger;
end;

procedure TfrLookup_nonDBF.save;
begin
  if not assigned(fDataset) then exit;
  if fDataset.State in dseditmodes then
    fDataset.FieldByName(fFieldName).AsInteger:=code;
end;

end.
