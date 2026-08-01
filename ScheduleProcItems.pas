unit ScheduleProcItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DBCtrls, DB, ADODB, Menus, ComCtrls, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppStrtch, ppSubRpt, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TScheduleProcItemsF = class(Ttemplate2MDIF)
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
    qryScheduleProcItems: TADOQuery;
    qryScheduleProcItemsReciptNumber: TIntegerField;
    qryScheduleProcItemsReciptDate: TStringField;
    qryScheduleProcItemsc_StuffName: TStringField;
    qryScheduleProcItemsProductModel: TIntegerField;
    qryScheduleProcItemsPersonID1: TIntegerField;
    qryScheduleProcItemsCustName: TStringField;
    qryScheduleProcItemsItemDate: TStringField;
    qryScheduleProcItemsentity: TFloatField;
    qryScheduleProcItemsItemNote: TStringField;
    qryScheduleProcItemsOrderState: TWordField;
    SrcqryScheduleProcItems: TDataSource;
    Label11: TLabel;
    DBText10: TDBText;
    qryScheduleProcItemsControlCode: TLargeintField;
    qryScheduleProcItemsReciptItemID: TIntegerField;
    qryLookup: TADOQuery;
    qrySchProcItems: TADOQuery;
    qrySchProcItemsProcstaffCoding: TIntegerField;
    qrySchProcItemsProcCode: TIntegerField;
    qrySchProcItemsAmount: TFloatField;
    qrySchProcItemsProcId: TIntegerField;
    qrySchProcItemsReciptItemId: TIntegerField;
    qrySchProcItemsDeliveryDate: TStringField;
    SrcSchProcItems: TDataSource;
    qrySchProcItems_c_StuffName: TStringField;
    qryScheduleInfo: TADOQuery;
    actSort: TAction;
    actSendToExcel: TAction;
    actSort2: TAction;
    qryScheduleProcItemsStoreKind: TWordField;
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
    qryScheduleProcItems__ProductName: TStringField;
    qryLookupc_StuffName: TStringField;
    qryLookupStoreKind: TWordField;
    actShow: TAction;
    PopMnuSend: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppLabel3: TppLabel;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    PopMnuPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLine6: TppLine;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLine7: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine9: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    N3: TMenuItem;
    ppReport3: TppReport;
    ppDBPipeline3: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppHeaderBand3: TppHeaderBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel13: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppLine10: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBPipeline4: TppDBPipeline;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    qryScheduleProcItemsStuffCode: TLargeintField;
    qryLookupc_StuffCode: TLargeintField;
    procedure cmbStateEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbStateChange(Sender: TObject);
    procedure chkAllStateClick(Sender: TObject);
    procedure qryScheduleProcItemsOrderStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qrySchProcItemsAfterInsert(DataSet: TDataSet);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryScheduleProcItemsAfterScroll(DataSet: TDataSet);
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
    procedure qryScheduleProcItemsAfterOpen(DataSet: TDataSet);
    procedure qrySchProcItemsAfterOpen(DataSet: TDataSet);
    procedure qrySchProcItemsBeforeEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qrySchProcItemsBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actShowExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure MenuItem2Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Up_date;
    procedure Updatestatusbar;
    procedure initpopmenu;
    procedure gridkeyenter(Sender: TObject;var key: char);
    procedure SampelClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ScheduleProcItemsF: TScheduleProcItemsF;

implementation

uses DM, GlobalPro, searchCode_ADO, sndkey32, sort2, search2, mmessage,
  DBGrid2Print;

{$R *.dfm}

procedure TScheduleProcItemsF.initpopmenu;
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

procedure TScheduleProcItemsF.SampelClick(Sender: TObject);
var
//  LastNumber: Integer;
  ChangeNo:Integer;
begin
  inherited;
      if get_response(' ¬Ì« »—«Ì  €ÌÌ— Ê÷⁄Ì  „ÿ„∆‰ Â” Ìœø')<>mrYes then Exit;
//       LastNumber:=qryScheduleProcItems.fieldbyname('ReciptItemID').AsInteger;
       ChangeNo:=TMainMenu(Sender).Tag;
     with DMF.qryTmpTmp do begin
       Active:=false;
       SQL.text:='UPDATE ReciptItems SET OrderState ='+IntToStr(ChangeNo)+
                  ' WHERE(ReciptItemID =  '+qryScheduleProcItems.fieldbyname('ReciptItemID').AsString+')' ;
       ExecSQL;
       BigMessage(TMenuItem(Sender).Caption,1);
     end;//with
         qryScheduleProcItems.Requery;
   //end;//else
     // qryScheduleProcItems.Locate('ReciptItemID',LastNumber,[]);

end;


procedure TScheduleProcItemsF.gridkeyenter(Sender: TObject;var key: char);
var
  nextIndex:  Integer;
  curIndex:   Integer;
  aDataSet: TDataSet;
//  c:  String;
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

procedure TScheduleProcItemsF.cmbStateEnter(Sender: TObject);
begin
  inherited;
  cmbState.DroppedDown:=True;
end;

procedure TScheduleProcItemsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombos(cmbState,'SELECT InfoId, InfoName FROM  ScheduleInfo WHERE (Code = 3) ORDER BY Code');
  initpopmenu;
end;

procedure TScheduleProcItemsF.cmbStateChange(Sender: TObject);
begin
  inherited;
 // if cmbState.ItemIndex=-1 then exit;
  with qryScheduleProcItems do
  begin
    Active:=False;
    Parameters.ParamByName('OrderStateFrom').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
    Parameters.ParamByName('OrderStateTo').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
    Active:=True;
  end;//with
  Up_date;
end;

procedure TScheduleProcItemsF.chkAllStateClick(Sender: TObject);
begin
  inherited;
  if chkAllState.Checked then begin
     cmbState.Enabled:=False;
     with qryScheduleProcItems do begin
       Active:=False;
       Parameters.ParamByName('OrderStateFrom').Value:=0;
       Parameters.ParamByName('OrderStateTo').Value:=999999999;
       Active:=True;
     end;//with
     chkAllState.Checked;
  end//if
  else begin
     cmbState.Enabled:=True;
     with qryScheduleProcItems do begin
       Active:=False;
       Parameters.ParamByName('OrderStateFrom').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
       Parameters.ParamByName('OrderStateTo').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
       Active:=True;
     end;//with }
     chkAllState.Checked:=False;
  end;//if
  Up_date;
end;

procedure TScheduleProcItemsF.qryScheduleProcItemsOrderStateGetText(
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

procedure TScheduleProcItemsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TScheduleProcItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TScheduleProcItemsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
  SetColSize(DBGrid2,1,True);
end;

procedure TScheduleProcItemsF.qrySchProcItemsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptItemId').AsInteger:=qryScheduleProcItems.FieldByName('ReciptItemID').AsInteger;
  DataSet.FieldByName('ProcId').AsInteger:=GetANewCode(Self.Name,'ScheduleProcItems','ProcId');
  DBGrid2.SetFocus;
end;

procedure TScheduleProcItemsF.DBGrid2EditButtonClick(Sender: TObject);
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
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„œ· „Õ’Ê·', txt,
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

procedure TScheduleProcItemsF.qryScheduleProcItemsAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  Up_date;
end;

procedure TScheduleProcItemsF.Up_date;
begin
  with  qrySchProcItems do
  begin
    Active:=false;
    Parameters.ParamByName('RecItem').Value:=qryScheduleProcItems.Fieldbyname('ReciptItemID').AsInteger;
    Active:=true;
  end;//with
end;
procedure TScheduleProcItemsF.SrcSchProcItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qrySchProcItems.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
end;

procedure TScheduleProcItemsF.DBGrid2DrawColumnCell(Sender: TObject;
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

procedure TScheduleProcItemsF.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     gridkeyenter(Sender,key);
      QuickSearch(key,qrySchProcItems.FieldByName('ProcstaffCoding'));
end;

procedure TScheduleProcItemsF.qrySchProcItemsAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
    BigMessage('Õ–› ‘œ.',1);
    Updatestatusbar;
end;

procedure TScheduleProcItemsF.qrySchProcItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
  Updatestatusbar;
end;

procedure TScheduleProcItemsF.qrySchProcItemsBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
    if qryScheduleProcItems.FieldByName('OrderState').AsInteger>2 then
  begin
     Warn('„Ã«“ »Â Õ–› «ÿ·«⁄«  ‰„Ì »«‘Ìœ .˛');
     Abort;
  end//if
  else
    if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleProcItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySchProcItems);
end;

procedure TScheduleProcItemsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  PopMnuSend.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TScheduleProcItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySchProcItems);
end;

procedure TScheduleProcItemsF.actSort2Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleProcItems);
end;

procedure TScheduleProcItemsF.actSearch2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleProcItems);
end;

procedure TScheduleProcItemsF.actChangeStateExecute(Sender: TObject);
begin
  inherited;
   PopMnuState.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TScheduleProcItemsF.qryScheduleProcItemsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[1].Text:=' ⁄œ«œ „Õ’Ê·='+IntToStr(qryScheduleProcItems.RecordCount);
 // StatusBar1.Panels[0].Text:='„ﬁœ«—='+CurrToStr(CalcSumFileds(qryScheduleProcItems, 'entity'));
end;

procedure TScheduleProcItemsF.qrySchProcItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Updatestatusbar;
end;

procedure TScheduleProcItemsF.Updatestatusbar;
begin
  StatusBar2.Panels[1].Text:=' ⁄œ«œ „Õ’Ê·='+IntToStr(qrySchProcItems.RecordCount);
  StatusBar2.Panels[0].Text:='„ﬁœ«—='+CurrToStr(CalcSumFileds(qrySchProcItems, 'Amount'));
end;

procedure TScheduleProcItemsF.qrySchProcItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if qryScheduleProcItems.FieldByName('OrderState').AsInteger>2 then
  begin
     Warn('„Ã«“ »Â ÊÌ—«Ì‘ Ê  €ÌÌ— «ÿ·«⁄«  ‰„Ì »«‘Ìœ .˛');
     Abort;
  end;//if
end;

procedure TScheduleProcItemsF.FormShow(Sender: TObject);
begin
  inherited;
   cmbState.ItemIndex:=0;
   with qryScheduleProcItems do begin
    Active:=False;
    Parameters.ParamByName('OrderStateFrom').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
    Parameters.ParamByName('OrderStateTo').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
    Active:=True;
  end;//with
   
end;

procedure TScheduleProcItemsF.qrySchProcItemsBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if qryScheduleProcItems.FieldByName('OrderState').AsInteger>2 then
  begin
     Warn('„Ã«“ »Â «÷«›Â ﬂ—œ‰ «ÿ·«⁄«  ‰„Ì »«‘Ìœ .˛');
     Abort;
  end;//if

end;

procedure TScheduleProcItemsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(key,qryScheduleProcItems.FieldByName('StuffCode'));  
end;

procedure TScheduleProcItemsF.actShowExecute(Sender: TObject);
begin
  inherited;
  //›À”›
end;

procedure TScheduleProcItemsF.N2Click(Sender: TObject);
begin
  inherited;
    SendToExcel(DBGrid2);
end;

procedure TScheduleProcItemsF.N1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TScheduleProcItemsF.BitBtn12Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1,0);
end;

procedure TScheduleProcItemsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
 Text:=APPBank.CompanyName;
end;

procedure TScheduleProcItemsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TScheduleProcItemsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TScheduleProcItemsF.MenuItem1Click(Sender: TObject);
begin
  inherited;
   try
   qryScheduleProcItems.DisableControls;
   ppReport1.Print;
  finally
   qryScheduleProcItems.EnableControls;
  end;
end;

procedure TScheduleProcItemsF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TScheduleProcItemsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TScheduleProcItemsF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TScheduleProcItemsF.MenuItem2Click(Sender: TObject);
begin
  inherited;
   try
   qryScheduleProcItems.DisableControls;
   qrySchProcItems.DisableControls;
   ppReport3.Print;
  finally
   qryScheduleProcItems.EnableControls;
   qrySchProcItems.EnableControls;
  end;
end;

procedure TScheduleProcItemsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TScheduleProcItemsF.N3Click(Sender: TObject);
begin
  inherited;
   try
   qryScheduleProcItems.DisableControls;
   qrySchProcItems.DisableControls;
   ppReport2.Print;
   finally
   qryScheduleProcItems.EnableControls;
   qrySchProcItems.EnableControls;
  end;
end;

end.

