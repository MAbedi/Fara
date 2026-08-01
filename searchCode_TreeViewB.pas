unit searchCode_TreeViewB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ADOdb,
  DB, ComCtrls, ActnList, CommCtrl, ImgList, System.ImageList, System.Actions;

type
  TsearchCode_TreeViewBF = class(Ttemplate0F)
    StatusBar1: TStatusBar;
    ActionList1: TActionList;
    actSearch: TAction;
    actSort: TAction;
    actOk: TAction;
    Panel4: TPanel;
    edtSearch: TEdit;
    btnSearch: TBitBtn;
    Panel1: TPanel;
    qryStuffGroups: TADOQuery;
    BitBtn4: TBitBtn;
    btnSearch_: TBitBtn;
    ImageList1: TImageList;
    tvStuffGroups: TTreeView;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cmbTopicClick(Sender: TObject);
    procedure tvStuffGroupsKeyPress(Sender: TObject; var Key: Char);
    procedure btnSearchClick(Sender: TObject);
    procedure tvStuffGroupsDblClick(Sender: TObject);
  private
    { Private declarations }
    with_StuffCode: Boolean;
    procedure MackTreeView(TV: TTreeView);
    function GetItemByName(Wnd: hWnd; hItem: HTREEITEM; szItemName: LPCTSTR)
      : HTREEITEM;
  public
    function SearchTree(ADC: TADOConnection; const sCaption: string;
      out results: array of string; const formAlign: TAlign;
      withStuffCode: Boolean): Boolean;
  end;

var
  searchCode_TreeViewBF: TsearchCode_TreeViewBF;

const
  MAXTEXTLEN = 60;

implementation

uses GlobalPro, DM, FormFunctions, FaraConsts, GeneralDM;

{$R *.dfm}

function TsearchCode_TreeViewBF.SearchTree(ADC: TADOConnection;
  const sCaption: string; out results: array of string; const formAlign: TAlign;
  withStuffCode: Boolean): Boolean;
begin
  if not checkValidParent then
    Exit;
  searchCode_TreeViewBF := TsearchCode_TreeViewBF.Create(Application);
  with searchCode_TreeViewBF do
  begin
    try
      with_StuffCode := withStuffCode;
      with qryStuffGroups do
      begin
        Connection := ADC;
        MackTreeView(tvStuffGroups);
        // SetWinControlBiDi(tvStuffGroups);
      end;
      with edtSearch do
      begin
        Text := ReadConfig(APPID, Screen.ActiveForm.Name + '_LastTreeSearched_'
          + sCaption, '');
      end; // with
      Align := formAlign;
      Caption := sCaption;
      if ShowModal = mrOK then
      begin
        results[0] := IntToStr(Integer(tvStuffGroups.Selected.Data));
        Result := True;
        SaveConfig(APPID, Screen.ActiveForm.Name + '_LastTreeSearched_' +
          sCaption, edtSearch.Text);
      end
      else
        Result := False;
    finally
      Free;
      searchCode_TreeViewBF := nil;
      SetKeyboardFarsi;
    end; // try
  end; // with

end;

procedure TsearchCode_TreeViewBF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOK;
end;

procedure TsearchCode_TreeViewBF.cmbTopicClick(Sender: TObject);
begin
  inherited;
  if edtSearch.Visible then
    edtSearch.SetFocus;
end;

procedure TsearchCode_TreeViewBF.MackTreeView(TV: TTreeView);
  Function SetTreeItemsStuff(GroupID: String; TN: TTreeNode;
    DoWhile: Boolean): Boolean;
  var
    QItems: TADOQuery;
  begin
    QItems := TADOQuery.Create(Self);
    with QItems do
      try
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT c_StuffCode,c_StuffName FROM StuffCoding';
        SQL.Add(Format(' WHERE GroupID  %S ', ['=' + GroupID]));
        Open;
        while not Eof and DoWhile do
        begin
          TV.Items.AddChildObject(TN, fieldbyname('c_StuffName').AsString,
            pointer(fieldbyname('c_StuffCode').AsLargeInt));
          TN.ImageIndex := 1;
          Next;
        end;
      finally
        Free;
      end;
  end;

  Function SetTreeItems(Aid: String; TN: TTreeNode;
    var DoWhile: Boolean): Boolean;
  var
    QItems: TADOQuery;
    TN2: TTreeNode;
  begin
    QItems := TADOQuery.Create(Self);
    with QItems do
      try
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT GroupID, GroupName FROM StuffGroups';
        SQL.Add(Format(' WHERE UperGroupId  %S ', ['=' + Aid]));
        SQL.Add(Format('AND GroupType IN(%S)',
          [GetStuffGroupsNames(nil, False)]));
        Open;
        while not Eof and DoWhile do
        begin
          If LastKeyPressed = VK_ESCAPE then
            if get_response('⁄„·Ì«  „ Êﬁ› ‘Êœø') = mrYes then
            begin
              DoWhile := False;
              LastKeyPressed := 0;
              Exit;
            end;
          LastKeyPressed := 0;
          Application.ProcessMessages;
          TN2 := TV.Items.AddChildObject(TN, fieldbyname('GroupName').AsString,
            pointer(fieldbyname('GroupID').Asinteger));
          SetTreeItems(fieldbyname('GroupID').AsString, TN2, DoWhile);
          if with_StuffCode then
            SetTreeItemsStuff(fieldbyname('GroupID').AsString, TN2, DoWhile);
          TN.ImageIndex := 1;
          Next;
        end;
      finally
        Free;
      end;
  end;

var
  Q: TADOQuery;
  TN2: TTreeNode;
  DoWhile: Boolean;

begin
  DoWhile := True;
  TV.Items.Clear;
  Q := TADOQuery.Create(Self);
  with Q Do
    try
      Connection := DMf.adcBSell;
      SQL.Text := qryStuffGroups.SQL.Text;
      SQL.Add(Format('AND GroupType IN(%S)',
        [GetStuffGroupsNames(nil, False)]));
      Open;
      while not Eof and DoWhile do
      begin
        TN2 := TV.Items.AddChildObject(nil, fieldbyname('GroupName').AsString,
          pointer(fieldbyname('GroupID').Asinteger));
        SetTreeItems(fieldbyname('GroupID').AsString, TN2, DoWhile);
        if with_StuffCode then
          SetTreeItemsStuff(fieldbyname('GroupID').AsString, TN2, DoWhile);
        Application.ProcessMessages;
        Next;
      end;
    finally
      Free;
    end;
end;

procedure TsearchCode_TreeViewBF.btnSearchClick(Sender: TObject);
var
  hItem: HTREEITEM;
begin
  inherited;
  hItem := GetItemByName(tvStuffGroups.Handle, nil, pchar(edtSearch.Text));
  if (hItem <> nil) then
  begin
    tvStuffGroups.SetFocus;
    SendMessage(tvStuffGroups.Handle, TVM_SELECTITEM, TVGN_CARET,
      longint(hItem));
  end;
end;

function TsearchCode_TreeViewBF.GetItemByName(Wnd: hWnd; hItem: HTREEITEM;
  szItemName: LPCTSTR): HTREEITEM;
var
  szBuffer: array [0 .. MAXTEXTLEN + 1] of Char;
  item: TTVItem;
  hItemFound, hItemChild: HTREEITEM;

begin
  // If hItem is NULL, start search from root item.
  if (hItem = nil) then
    hItem := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM, TVGN_ROOT, 0));
  while (hItem <> nil) do
  begin
    item.hItem := hItem;
    item.mask := TVIF_TEXT OR TVIF_CHILDREN;
    item.pszText := szBuffer;
    item.cchTextMax := MAXTEXTLEN;
    SendMessage(Wnd, TVM_GETITEM, 0, longint(@item));

    // Did we find it?
    if (lstrcmp(szBuffer, szItemName) = 0) then
    begin
      Result := hItem;
      Exit;
    end;

    // Check whether we have child items.
    if (item.cChildren > 0) then
    begin
      // Recursively traverse child items.

      hItemChild := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM, TVGN_CHILD,
        longint(hItem)));

      hItemFound := GetItemByName(Wnd, hItemChild, szItemName);

      // Did we find it?
      if (hItemFound <> nil) then
      begin
        Result := hItemFound;
        Exit;
      end;
    end;

    // Go to next sibling item.
    hItem := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM, TVGN_NEXT,
      LPARAM(hItem)));
  end;

  // Not found.
  Result := nil;
end;

procedure TsearchCode_TreeViewBF.tvStuffGroupsDblClick(Sender: TObject);
begin
  inherited;
  btnSearch_.Click
end;

procedure TsearchCode_TreeViewBF.tvStuffGroupsKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnSearch.Click
end;

end.
