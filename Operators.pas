unit Operators;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, 
  Mask, DBCtrls, Buttons, DBActns, ActnList, CheckLst, ComCtrls, Menus, DB,
  ADODB, registry;

type
  TOperatorsF = class(TForm)
    srcOperators: TDataSource;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Panel5: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    TreeView1: TTreeView;
    Panel6: TPanel;
    ListBox1: TListBox;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    qryOperators: TADOQuery;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    procedure srcOperatorsStateChange(Sender: TObject);
    procedure qry_usersBeforeDelete(DataSet: TDataSet);
    procedure qry_usersAfterInsert(DataSet: TDataSet);
    procedure qry_usersAfterPost(DataSet: TDataSet);
    procedure TreeView1DblClick(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure qryOperatorsAfterScroll(DataSet: TDataSet);
    procedure qryOperatorsBeforePost(DataSet: TDataSet);
    procedure qryOperatorsAfterInsert(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryOperatorsBeforeDelete(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
  private
    SYSTEMID: Byte;
    SubMenuID:Byte;
  public
    function MakeMenuString: String;
    procedure SetList(MenuString: string);
    procedure FillListByMenu(mnu: TmainMenu;SYSID,SubId:Byte);
    { Public declarations }
  end;

var
  OperatorsF: TOperatorsF;

function GetANewCode(tblName, fldName: String): Cardinal;

implementation

uses Math, GlobalPro, DM, main, StrUtils;

{$R *.dfm}

procedure TOperatorsF.srcOperatorsStateChange(Sender: TObject);
begin
   Panel4.Visible:=qryOperators.State in [dsEdit,dsInsert];
   Panel3.Visible:=not Panel4.Visible;
end;

procedure TOperatorsF.qry_usersBeforeDelete(DataSet: TDataSet);
begin
   if get_response('¬Ì« „ÿ„∆‰ Â” Ìœø˛')<>mrYes then Abort;
end;
procedure TOperatorsF.qry_usersAfterInsert(DataSet: TDataSet);
begin
  DBEdit1.SetFocus;
end;

procedure TOperatorsF.qry_usersAfterPost(DataSet: TDataSet);
begin
  BitBtn1.SetFocus;
end;


procedure TOperatorsF.TreeView1DblClick(Sender: TObject);
begin
  if ListBox1.Items.IndexOf(TreeView1.Selected.Text)=-1 then begin
    ListBox1.Items.Add(TreeView1.Selected.Text);
      qryOperators.Edit;
  end;//if
  TreeView1.Selected.Collapse(False);
end;

procedure TOperatorsF.ListBox1DblClick(Sender: TObject);
begin
  ListBox1.DeleteSelected;
  qryOperators.Edit;
end;

procedure TOperatorsF.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_delete then begin
    ListBox1.DeleteSelected;
      qryOperators.Edit;
  end;//if
end;

procedure TOperatorsF.FormCreate(Sender: TObject);
var
  conStr: String;
  userName: String;
begin
  userName:=ReadConfig('','UserName');
  if userName='' then userName:='FaraUser';
  conStr:='Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;Initial Catalog=FaraSystems'
  + ';Data Source=' + ReadConfig(APPID,'SQLServerName')
  + ';User ID=' + userName;
  with qryOperators do begin
    Active:=False;
    ConnectionString:=conStr;
    Active:=True;
  end;//with
end;



function TOperatorsF.MakeMenuString: String;
begin

  Result:=ListBox1.Items.Text;
end;

procedure TOperatorsF.SetList(MenuString: string);
begin


  ListBox1.Items.Text:=MenuString;
end;

procedure TOperatorsF.qryOperatorsAfterScroll(DataSet: TDataSet);
begin
  SetList(DataSet.fieldbyname('Menus').AsString);
  Label4.Caption:='«„ﬂ«‰«  ' + DataSet.fieldbyname('name').AsString;
end;

procedure TOperatorsF.qryOperatorsBeforePost(DataSet: TDataSet);
begin
  DataSet['menus']:=MakeMenuString;
  DataSet['SystemID']:=SYSTEMID;
  DataSet['SubSystem']:=SubMenuID;

end;


function GetANewCode(tblName, fldName: String): Cardinal;
var
  qry:  TADOQuery;
begin
  qry:=TADOQuery.Create(nil);
  try
   with qry do begin
      qry.ConnectionString:=OperatorsF.qryOperators.ConnectionString;
      SQL.Text:='Select max(convert(int,' + fldName + ')) from ' + tblName;
      Active:=True;
      if Fields[0].IsNull then
        Result:=1
      else
        Result:=Fields[0].AsInteger + 1;
      Active:=False;
   end;//with
  finally
    qry.Free;
  end;//try
end;

procedure TOperatorsF.qryOperatorsAfterInsert(DataSet: TDataSet);
begin
  DataSet['UserID']:=GetANewCode('Operators','UserID');
  DBEdit1.SetFocus;
end;

procedure TOperatorsF.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TOperatorsF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action:=caFree;
end;

procedure TOperatorsF.FillListByMenu(mnu: TmainMenu; SYSID, SubId: Byte);
var
  i,j,k:  Integer;
  s:  String;
  tn,tn2: TTreeNode;
begin
  systemid:=sysid;
  SubMenuID:=SubId;
  if mnu=nil then exit;
  with qryOperators do begin
    Filter:='SystemID = ' + IntToStr(SYSTEMID) +
            ' and SubSystem =' + IntToStr(SubMenuID) ;
    Filtered:=True;
  end;//with
  TreeView1.Items.Clear;
  for i:=0 to mnu.Items.Count-1 do begin
    if mnu.Items[i].Tag=-1 then Continue;
    s:=StringReplace(mnu.Items[i].Caption,'&','',[rfReplaceAll,rfIgnoreCase]);
    tn:=TreeView1.Items.Add(nil,s);
    for j:=0 to mnu.Items[i].Count-1 do begin
      s:=StringReplace(mnu.Items[i].Items[j].Caption,'&','',[rfReplaceAll,rfIgnoreCase]);
      if s<>'-' then  tn2:=TreeView1.Items.AddChild(tn,s);
      for k:=0 to mnu.Items[i].Items[j].Count-1 do begin
         s:=StringReplace(mnu.Items[i].Items[j].Items[k].Caption,'&','',[rfReplaceAll,rfIgnoreCase]);
         if s<>'-' then  TreeView1.Items.AddChild(tn2,s);
      end;//for
    end;//for
  end;//for
end;

procedure TOperatorsF.qryOperatorsBeforeDelete(DataSet: TDataSet);
begin
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂ«—»— „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
end;

procedure TOperatorsF.BitBtn7Click(Sender: TObject);
var
  i:  Integer;
begin
  ListBox1.Clear;
  for i:=0 to TreeView1.Items.Count-1 do
    if TreeView1.Items[i].Parent=nil then begin
      ListBox1.Items.Add(TreeView1.Items[i].Text);
    end;
end;


end.
