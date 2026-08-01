{-----------------------------------------------------------------------------
 Unit Name: AddToolbar
 Author:    Mostafa
-----------------------------------------------------------------------------}

unit AddToolbar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, ComCtrls, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, Menus;

type
  TAddToolbarF = class(TTemplate4F)
    Panel3: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lstAllAction: TListBox;
    Panel4: TPanel;
    btnRemoveBBar: TBitBtn;
    btnAddBBar: TBitBtn;
    btnRemoveTbar: TBitBtn;
    btnAddTBar: TBitBtn;
    lstButtonBar: TListBox;
    lstToolBar: TListBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    btnAllTBar: TBitBtn;
    btnAllBbar: TBitBtn;
    Splitter2: TSplitter;
    procedure FormShow(Sender: TObject);
    procedure btnAddBBarClick(Sender: TObject);
    procedure btnAddTBarClick(Sender: TObject);
    procedure btnRemoveTbarClick(Sender: TObject);
    procedure btnRemoveBBarClick(Sender: TObject);
    procedure btnAllBbarClick(Sender: TObject);
    procedure btnAllTBarClick(Sender: TObject);
  private
    mnu:TMainMenu;
    PathIni:String;
    procedure AddToList(lst:TListBox);
    procedure SaveTool;
    { Private declarations }
  public
    procedure enter(aMenu:TMainMenu);
    { Public declarations }
  end;

var
  AddToolbarF: TAddToolbarF;

implementation

uses GlobalPro, Dm;

{$R *.dfm}

procedure TAddToolbarF.enter(aMenu: TMainMenu);
var
  tRead,BRead:String;
begin
  AddToolbarF:=TAddToolbarF.Create(Application);
  with AddToolbarF do begin
    try
      mnu:=aMenu;
      Pathini:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))) + 'Menu.ini';
      tRead:=StringReplace(Read_iniConfig(PathIni,mnu.Name+'_MnuToolBar',''),'#',#13#10,[rfReplaceAll]) ;
      BRead:=StringReplace(Read_iniConfig(Pathini,Mnu.Name+'_MnuButoonBar',''),'#',#13#10,[rfReplaceAll]) ;
      lstToolBar.Items.Text:=tRead;
      lstButtonBar.Items.Text:=BRead;
      if ShowModal = mrOk then
          SaveTool;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TAddToolbarF.FormShow(Sender: TObject);
var
  i,j,k:Integer;
begin
  inherited;
//  n:=0;
  with mnu do begin
    try
      for i:=0 to Items.Count-1 do
        for j:=0 to Items[i].Count-1 do begin
          if (Items[i].Items[j].Action<>nil)and(TAction(Items[i].Items[j].Action).Enabled)
                                                and(Items[i].Items[j].Action.Tag<>-2) then begin
          lstAllAction.AddItem(TAction(Items[i].Items[j].Action).Caption,TObject(TAction(Items[i].Items[j].Action).Index));
          end;//if

          for k:=0 to Items[i].Items[j].Count-1 do
            if (Items[i].Items[j].Items[k].Action<>nil)and(TAction(Items[i].Items[j].Items[k].Action).Enabled)
                                                  and(Items[i].Items[j].Items[k].Action.Tag<>-2) then begin
            lstAllAction.AddItem(TAction(Items[i].Items[j].Items[k].Action).Caption,TObject(TAction(Items[i].Items[j].Items[k].Action).Index));
            end;//if


        end;//for
     finally
     end;
  end;//with
end;

procedure TAddToolbarF.btnAddBBarClick(Sender: TObject);

begin
  inherited;
  AddToList(lstButtonBar);
end;

procedure TAddToolbarF.AddToList(lst: TListBox);
var
  txtAdd:String;
begin
  if lstAllAction.ItemIndex=-1 then begin
    Warn('Ìﬂ „Ê—œ —« «‰ Œ«» ﬂ‰Ìœ.');
    Exit;
  end;//if
  txtAdd:=lstAllAction.Items[lstAllAction.ItemIndex];
  if Pos(txtAdd,lst.Items.Text)=0 then
    lst.AddItem(txtAdd,lstAllAction.Items.Objects[lstAllAction.ItemIndex]);
end;

procedure TAddToolbarF.btnAddTBarClick(Sender: TObject);
begin
  inherited;
  AddToList(lstToolBar);
end;

procedure TAddToolbarF.btnRemoveTbarClick(Sender: TObject);
begin
  inherited;
  lstToolBar.DeleteSelected;
end;

procedure TAddToolbarF.btnRemoveBBarClick(Sender: TObject);
begin
  inherited;
  lstButtonBar.DeleteSelected;
end;

procedure TAddToolbarF.SaveTool;
var
  Tsave,Bsave:String;
begin
  Tsave:=StringReplace(lstToolBar.Items.Text,#13#10,'#',[rfReplaceAll]) ;
  Bsave:=StringReplace(lstButtonBar.Items.Text,#13#10,'#',[rfReplaceAll]);
  Save_iniConfig(Pathini,mnu.Name+'_MnuToolBar',Tsave);
  Save_iniConfig(Pathini,mnu.Name+'_MnuButoonBar',Bsave);
end;

procedure TAddToolbarF.btnAllBbarClick(Sender: TObject);
begin
  inherited;
  lstButtonBar.Items:=lstAllAction.Items;
end;

procedure TAddToolbarF.btnAllTBarClick(Sender: TObject);
begin
  inherited;
  lstToolBar.Items:=lstAllAction.Items;
end;

end.
