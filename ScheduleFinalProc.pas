unit ScheduleFinalProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DBCtrls, DB, ADODB, Menus, ComCtrls, FarsiReportBuilde,
  System.ImageList, System.Actions;

type
  TScheduleFinalProcF = class(Ttemplate2MDIF)
    chkAllState: TCheckBox;
    cmbState: TComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    newPanel: TPanel;
    BtnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    BtnDelete: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label8: TLabel;
    DBText7: TDBText;
    Label9: TLabel;
    DBText8: TDBText;
    Label10: TLabel;
    DBText9: TDBText;
    qryScheduleFinalProc: TADOQuery;
    qryScheduleFinalProcReciptNumber: TIntegerField;
    qryScheduleFinalProcReciptDate: TStringField;
    qryScheduleFinalProcc_StuffName: TStringField;
    qryScheduleFinalProcProductModel: TIntegerField;
    qryScheduleFinalProcPersonID1: TIntegerField;
    qryScheduleFinalProcCustName: TStringField;
    qryScheduleFinalProcItemDate: TStringField;
    qryScheduleFinalProcentity: TFloatField;
    qryScheduleFinalProcItemNote: TStringField;
    qryScheduleFinalProcOrderState: TWordField;
    SrcqryScheduleProcItems: TDataSource;
    Label11: TLabel;
    DBText10: TDBText;
    qryScheduleFinalProcControlCode: TLargeintField;
    qryScheduleFinalProcReciptItemID: TIntegerField;
    qryLookup: TADOQuery;
    qrySchProcItems: TADOQuery;
    qrySchProcItemsProcstaffCoding: TIntegerField;
    qrySchProcItemsProcCode: TIntegerField;
    qrySchProcItemsAmount: TFloatField;
    qrySchProcItemsProcId: TIntegerField;
    qrySchProcItemsReciptItemId: TIntegerField;
    qrySchProcItemsDeliveryDate: TStringField;
    SrcSchProcItems: TDataSource;
    qryLookupc_StuffName: TStringField;
    qryLookupProductModel: TIntegerField;
    qryLookup_ProductName: TStringField;
    qrySchProcItems_c_StuffName: TStringField;
    qryScheduleInfo: TADOQuery;
    actSort: TAction;
    actSendToExcel: TAction;
    actSort2: TAction;
    qryScheduleFinalProcStoreKind: TWordField;
    qrySchProcItemsProductModel: TIntegerField;
    qry_Lookup: TADOQuery;
    qrySchProcItems__ProductName: TStringField;
    qrySchProcItems_ProcName: TStringField;
    actSearch2: TAction;
    actChangeState: TAction;
    actPrint: TAction;
    PopMnuState: TPopupMenu;
    qry_LookUpState: TADOQuery;
    qry_LookUpStateInfoId: TIntegerField;
    qry_LookUpStateInfoName: TStringField;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    qryScheduleFinalProc__ProductName: TStringField;
    qryScheduleFinalProcStuffCode: TLargeintField;
    qryLookupStuffCode: TLargeintField;
    procedure cmbStateEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbStateChange(Sender: TObject);
    procedure chkAllStateClick(Sender: TObject);
    procedure qryScheduleFinalProcOrderStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qrySchProcItemsAfterInsert(DataSet: TDataSet);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryScheduleFinalProcAfterScroll(DataSet: TDataSet);
    procedure SrcSchProcItemsStateChange(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure qrySchProcItemsAfterDelete(DataSet: TDataSet);
    procedure qrySchProcItemsAfterPost(DataSet: TDataSet);
    procedure qrySchProcItemsBeforeDelete(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSort2Execute(Sender: TObject);
    procedure actSearch2Execute(Sender: TObject);
    procedure actChangeStateExecute(Sender: TObject);
    procedure qryScheduleFinalProcAfterOpen(DataSet: TDataSet);
    procedure qrySchProcItemsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Up_date;
    procedure initpopmenu;
    procedure gridkeyenter(Sender: TObject;var key: char);
    procedure SampelClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ScheduleFinalProcF: TScheduleFinalProcF;

implementation

uses DM, GlobalPro, searchCode_ADO, sndkey32, sort2, search2, mmessage;

{$R *.dfm}

procedure TScheduleFinalProcF.initpopmenu;
var
  i:Integer;
begin
  i:=0;
    with qry_LookUpState  do begin
      Active:=True;
      First;
      while not eof do begin
          PopMnuState.Items.Add(NewItem(fieldbyname('InfoName').AsString,TextToShortCut(''),false
                                       ,true,SampelClick,0,'items'+IntToStr(i)));
          PopMnuState.Items[i].Tag:=fieldbyname('InfoId').AsInteger;
          Inc(i);
        Next;
      end;//while
      Active:=False;
    end;//with
end;

procedure TScheduleFinalProcF.SampelClick(Sender: TObject);
var
//  LastNumber: Integer;
  ChangeNo:Integer;
begin
  inherited;
  if get_response(' ¬Ì« »—«Ì  €ÌÌ— Ê÷⁄Ì  „ÿ„∆‰ Â” Ìœø')<>mrYes then Exit;
//     LastNumber:=qryScheduleFinalProc.fieldbyname('ReciptItemID').AsInteger;
     ChangeNo:=TMainMenu(Sender).Tag;
   with DMF.qryTmpTmp do begin
     Active:=false;
     SQL.text:='UPDATE ReciptItems SET OrderState ='+IntToStr(ChangeNo)+
                ' WHERE(ReciptItemID =  '+qryScheduleFinalProc.fieldbyname('ReciptItemID').AsString+')' ;
     ExecSQL;
     BigMessage(TMenuItem(Sender).Caption,1);
   end;//with
      qryScheduleFinalProc.Requery;
     // qryScheduleProcItems.Locate('ReciptItemID',LastNumber,[]);

end;


procedure TScheduleFinalProcF.gridkeyenter(Sender: TObject;var key: char);
var
  nextIndex:  Integer;
  curIndex:   Integer;
  aDataSet: TDataSet;
begin
  curIndex:=(Sender as TDBGrid).SelectedIndex;
  nextIndex:=curIndex;
  case key of
    #13:  begin
      if shiftDown then exit;
      aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
      key:=#0;
      case curIndex of
        0: If  aDataSet.FieldByName('ProcstaffCoding').AsString=''  then
             nextIndex:=-2
           else
              nextIndex:=2;
        2: nextIndex:= 3;
        3: nextIndex:= 4;
        4: nextIndex:= 5;
        5: if  aDataSet.FieldByName('Amount').AsString=''  then
             nextIndex:=5
           else
              nextIndex:=-1;
      end;//case
    end;//#13
    '+': begin
      key:=#0;
      nextIndex:=curIndex-1;
      while (nextIndex>=0) and (not (DBGrid2.Columns[nextIndex].Visible) OR (DBGrid2.Columns[nextIndex].ReadOnly)) do
        Dec(nextIndex);
      if nextIndex<0 then nextIndex:=-3;
    end;// +
    '*':  begin
      key:=#0;
      SendKeys('000',false);
    end;// *
    #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;
    #32,#157:  if curIndex in [0..3] then begin
      key:=#0;
      DBGrid2EditButtonClick(sender);
    end;//if
  end;//case
  if nextIndex>=0 then
    while (nextIndex<DBGrid2.Columns.Count) and (not (DBGrid2.Columns[nextIndex].Visible) OR (DBGrid2.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex>=(Sender as TDBGrid).Columns.Count then nextIndex:=-1;
  if (curindex<>nextindex) then
    case nextindex of
       -1: begin
            sendkey(vk_down,[],false);
            (sender as TDBGrid).selectedindex:=0;
          end;//0
       -2:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,0,0);
            end;//-2
       -3:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,1,0);
            end;//-3
       else
            (sender as TDBGrid).selectedindex:=nextIndex;
    end;//case
end;

procedure TScheduleFinalProcF.cmbStateEnter(Sender: TObject);
begin
  inherited;
  cmbState.DroppedDown:=True;
end;

procedure TScheduleFinalProcF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombos(cmbState,'SELECT InfoId, InfoName FROM  dbo.ScheduleInfo WHERE (Code = 3) ORDER BY Code');
  initpopmenu;
end;

procedure TScheduleFinalProcF.cmbStateChange(Sender: TObject);
begin
  inherited;
 // if cmbState.ItemIndex=-1 then exit;
   with qryScheduleFinalProc do
   begin
      Active:=False;
      Parameters.ParamByName('OrderStateFrom').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Parameters.ParamByName('OrderStateTo').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Parameters.ParamByName('OrderStateFrom2').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Parameters.ParamByName('OrderStateTo2').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Active:=True;
   end;//with
  //Update;
end;

procedure TScheduleFinalProcF.chkAllStateClick(Sender: TObject);
begin
  inherited;
  if chkAllState.Checked then begin
     cmbState.Enabled:=False;
     with qryScheduleFinalProc do
     begin
        Active:=False;
        Parameters.ParamByName('OrderStateFrom').Value:=0;
        Parameters.ParamByName('OrderStateTo').Value:=99999;
        Parameters.ParamByName('OrderStateFrom2').Value:=0;
        Parameters.ParamByName('OrderStateTo2').Value:=99999;
        Active:=True;
     end;//with
     chkAllState.Checked;
  end//if
  else begin
     cmbState.Enabled:=True;
     with qryScheduleFinalProc do
     begin
        Active:=False;
        Parameters.ParamByName('OrderStateFrom').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
        Parameters.ParamByName('OrderStateTo').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
        Parameters.ParamByName('OrderStateFrom2').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
        Parameters.ParamByName('OrderStateTo2').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
        Active:=True;
     end;//with
     chkAllState.Checked:=False;
  end;//if
  //Update;
end;

procedure TScheduleFinalProcF.qryScheduleFinalProcOrderStateGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:text:='„Êﬁ ';
    1:text:='»—‰«„Â —Ì“Ì ‘œÂ';
    2:text:='œ— Ã—Ì«‰ »—‰«„Â —Ì“Ì ';
    3:text:='œ— Ã—Ì«‰ ”«Œ ';
    4:text:='‰Â«∆Ì ‘œÂ';
   end;//case

end;

procedure TScheduleFinalProcF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TScheduleFinalProcF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TScheduleFinalProcF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
  SetColSize(DBGrid2,1,True);
end;

procedure TScheduleFinalProcF.qrySchProcItemsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptItemId').AsInteger:=qryScheduleFinalProc.FieldByName('ReciptItemID').AsInteger;
  DataSet.FieldByName('ProcId').AsInteger:=GetANewCode(Self.Name,'ScheduleProcItems','ProcId');
  DBGrid2.SetFocus;
end;

procedure TScheduleFinalProcF.DBGrid2EditButtonClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..1] of String;
  i:Smallint;
begin
  inherited;
  if (qrySchProcItems.State in dseditmodes) then begin
    i:=(Sender as TDBGrid).SelectedIndex;
    case i of
      0: if qrySchProcItems.State in dsEditModes then begin
            Txt:='SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Stores.StoreKind  ' +
                 ' FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN '+
                 ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID WHERE (Stores.StoreKind IN (1, 2)) ';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„Õ’Ê· / Œœ„« ', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
              qrySchProcItems.FieldByName('ProcstaffCoding').AsInteger:=StrToInt(Results[0]);
            end;//if
          end;//if
        2: if qrySchProcItems.State in dsEditModes then begin
            Txt:=' SELECT     LookUpID, Name FROM         LookUps WHERE     (Kind = 15)';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„—«Õ·  Ê·Ìœ', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
              qrySchProcItems.FieldByName('ProductModel').AsInteger:=StrToInt(Results[0]);
            end;//if
          end;//if
        3: if qrySchProcItems.State in dsEditModes then begin
            Txt:='SELECT     InfoId, InfoName  FROM         dbo.ScheduleInfo  WHERE     (Code = 8)';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„—«Õ·  Ê·Ìœ', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
              qrySchProcItems.FieldByName('ProcCode').AsInteger:=StrToInt(Results[0]);
            end;//if
          end;//if
   end;//if
end;
end;

procedure TScheduleFinalProcF.qryScheduleFinalProcAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  Up_date;
end;

procedure TScheduleFinalProcF.Up_date;
begin
  with  qrySchProcItems do
  begin
    Active:=false;
    Parameters.ParamByName('RecItem').Value:=qryScheduleFinalProc.Fieldbyname('ReciptItemID').AsInteger;
    Active:=true;
  end;//with
end;

procedure TScheduleFinalProcF.SrcSchProcItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qrySchProcItems.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
end;

procedure TScheduleFinalProcF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid2.DataSource.DataSet.RecNo) then
      DBGrid2.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TScheduleFinalProcF.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     gridkeyenter(Sender,key);
end;

procedure TScheduleFinalProcF.qrySchProcItemsAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
    BigMessage('Õ–› ‘œ.',1);
end;

procedure TScheduleFinalProcF.qrySchProcItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
end;

procedure TScheduleFinalProcF.qrySchProcItemsBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleFinalProcF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySchProcItems);
end;

procedure TScheduleFinalProcF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TScheduleFinalProcF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySchProcItems);
end;

procedure TScheduleFinalProcF.actSort2Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleFinalProc);
end;

procedure TScheduleFinalProcF.actSearch2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleFinalProc);
end;

procedure TScheduleFinalProcF.actChangeStateExecute(Sender: TObject);
begin
  inherited;
   PopMnuState.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TScheduleFinalProcF.qryScheduleFinalProcAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[1].Text:=' ⁄œ«œ „Õ’Ê·='+IntToStr(qryScheduleFinalProc.RecordCount);
 // StatusBar1.Panels[0].Text:='„ﬁœ«—='+CurrToStr(CalcSumFileds(qryScheduleProcItems, 'entity'));
end;

procedure TScheduleFinalProcF.qrySchProcItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar2.Panels[1].Text:=' ⁄œ«œ „Õ’Ê·='+IntToStr(qrySchProcItems.RecordCount);
  StatusBar2.Panels[0].Text:='„ﬁœ«—='+CurrToStr(CalcSumFileds(qrySchProcItems, 'Amount'));
end;

end.

