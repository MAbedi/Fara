unit AddressInMasir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, ComCtrls,CommCtrl, System.ImageList,
  System.Actions;
  



type
  TAddressInMasirF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryAddressInMasir: TADOQuery;
    srcAddressInMasir: TDataSource;
    qryAddressInMasirMasirID: TIntegerField;
    qryAddressInMasirAddressID: TIntegerField;
    qryAddressInMasirMasirText: TWideStringField;
    pnlAddress: TPanel;
    Panel4: TPanel;
    edtSearch: TEdit;
    tvAddress: TTreeView;
    btnSearch: TBitBtn;
    StatusBar1: TStatusBar;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    btnSearch_: TBitBtn;
    BitBtn4: TBitBtn;
    actOk: TAction;
    actCancel: TAction;
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure tvAddressDblClick(Sender: TObject);
    procedure qryAddressInMasirAfterInsert(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure qryAddressInMasirBeforePost(DataSet: TDataSet);
    procedure srcAddressInMasirStateChange(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure qryAddressInMasirBeforeDelete(DataSet: TDataSet);
  private
    procedure MackTreeView(TV: TTreeView);
    function GetItemByName(Wnd: hWnd; hItem: HTREEITEM;
                szItemName: LPCTSTR): HTREEITEM;
    Function CheckAddress:Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddressInMasirF: TAddressInMasirF;
const
 MAXTEXTLEN=50;
implementation

uses DM, GlobalPro, Math;

{$R *.dfm}

procedure TAddressInMasirF.MackTreeView(TV:TTreeView);
const
  SqlTxt = 'SELECT  AddressID, AddressName, ParentID FROM  AddressInfo Where ParentID  %S ';
Function SetmenuItems(Aid:String;TN:TTreeNode):Boolean;
var
  QItems:TADOQuery;
begin
  QItems := TADOQuery.Create(Self);
  with QItems do
  try
    Connection := DMf.adcBSell;
    SQL.Text := Format(SqlTxt ,['=' +Aid]);
    Open;
    while not Eof do
    begin
      SetmenuItems(fieldbyname('AddressID').AsString,
      TV.Items.AddChildObject(TN,fieldbyname('AddressName').AsString,
      pointer(fieldbyname('AddressID').Asinteger)));
      Next;
    end;
  finally
    Free;
  end;
end;


var
  Q:TADOQuery;
begin
  TV.Items.Clear;
  Q := TADOQuery.Create(Self);
  with Q Do
  try
    Connection := DMf.adcBSell;
    SQL.Text :=  Format(SqlTxt ,['IS Null']);
    Open;
    while not Eof do
    begin
      SetmenuItems(fieldbyname('AddressID').AsString,
      TV.Items.AddChildObject(nil,fieldbyname('AddressName').AsString,
      pointer(fieldbyname('AddressID').Asinteger)));
      Next;
    end;   
  finally
    Free;
  end;
end;


procedure TAddressInMasirF.FormCreate(Sender: TObject);
begin
  inherited;
  MackTreeView(tvAddress);
  SetWinControlBiDi(tvAddress);
  qryAddressInMasir.Open;

end;

function TAddressInMasirF.GetItemByName(Wnd : hWnd;  hItem : HTREEITEM;szItemName : LPCTSTR) : HTREEITEM ;
var
  szBuffer: array [0..MAXTEXTLEN+1] of char;
  item : TTVItem;
  hItemFound, hItemChild : HTREEITEM;

begin
  if (hItem = nil) then hItem := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM, TVGN_ROOT, 0));
  while (hItem <> nil) do
  begin
    item.hItem := hItem;
    item.mask := TVIF_TEXT OR TVIF_CHILDREN;
    item.pszText := szBuffer;
    item.cchTextMax := MAXTEXTLEN;
    SendMessage(Wnd, TVM_GETITEM, 0, longint(@item));
  if (lstrcmp(szBuffer, szItemName) = 0) then
  begin
    Result := hItem;
    Exit;
  end;
  if (item.cChildren > 0) then
  begin
   hItemChild := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM, TVGN_CHILD, longint(hItem)));
   hItemFound := GetItemByName(Wnd, hItemChild, szItemName);
  if (hItemFound <> nil) then
  begin
   Result :=  hItemFound;
   Exit;
  end;
  end;
  hItem := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM,
                     TVGN_NEXT, LPARAM(hItem)));
  end;
  Result := nil;
end;

procedure TAddressInMasirF.btnSearchClick(Sender: TObject);
var
 hItem : HTREEITEM;
begin
  inherited;
  hItem := GetItemByName(tvAddress.Handle, nil,pchar(edtSearch.Text));
  if (hItem <> nil) then
  begin
     tvAddress.SetFocus;
     SendMessage(tvAddress.Handle, TVM_SELECTITEM, TVGN_CARET,  longint(hItem));
     ///edtSearch.SetFocus;
  end;

end;

procedure TAddressInMasirF.edtSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then btnSearch.Click
end;

procedure TAddressInMasirF.tvAddressDblClick(Sender: TObject);
begin
  inherited;
  actOk.Execute;
end;

procedure TAddressInMasirF.qryAddressInMasirAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('MasirID').AsInteger := GetANewCode(Self.Name,'AddressInMasir','MasirID');
end;

procedure TAddressInMasirF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
end;

function TAddressInMasirF.CheckAddress;
begin
  with TADOQuery.Create(Self) do
  try
    Connection := DMf.adcBSell;
		SQL.Text:='SELECT COUNT(*)';
		SQL.Add  ('FROM AddressInMasir');
		SQL.Add  ('WHERE (MasirID <> :MasirID ) and (AddressID = :AddressID ) ');
    Parameters.ParamByName('MasirID').Value:=qryAddressInMasir.FieldByName('MasirID').AsInteger;
    Parameters.ParamByName('AddressID').Value:=qryAddressInMasir.FieldByName('AddressID').AsInteger;
    Open;
    Result := Fields[0].AsInteger > 0;
  finally
    Free;
  end;

end;

procedure TAddressInMasirF.qryAddressInMasirBeforePost(DataSet: TDataSet);
begin
  inherited;
  if  CheckAddress then
  begin
    Warn('¬œ—”  ﬂ—«—Ì „Ì »«‘œ ');
    Abort;
  end;

end;

procedure TAddressInMasirF.srcAddressInMasirStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryAddressInMasir.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
  pnlAddress.Visible := okPanel.Visible ;
end;

procedure TAddressInMasirF.actOkExecute(Sender: TObject);
begin
  inherited;
   with qryAddressInMasir do
  begin
    if not (State in dseditmodes) then Edit;
    FieldByName('AddressID').AsInteger := integer(tvAddress.Selected.Data);
    qryAddressInMasir.Refresh;
  end;
end;

procedure TAddressInMasirF.qryAddressInMasirBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ') <> mrYes then Abort;
end;

end.
