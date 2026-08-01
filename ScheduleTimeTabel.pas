unit ScheduleTimeTabel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DBCtrls, DB, ADODB, Menus, ComCtrls, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppStrtch, ppSubRpt, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TScheduleTimeTabelF = class(Ttemplate2MDIF)
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
    qryScheduleTimeTabel: TADOQuery;
    SrcScheduleTimeTabel: TDataSource;
    qryScheduleInfo: TADOQuery;
    actSort: TAction;
    actSendToExcel: TAction;
    actSort2: TAction;
    qryScheduleFinalProcStoreKind: TWordField;
    actSearch2: TAction;
    actChangeState: TAction;
    actPrint: TAction;
    PopMnuState: TPopupMenu;
    qry_LookUpState: TADOQuery;
    qry_LookUpStateInfoId: TIntegerField;
    qry_LookUpStateInfoName: TStringField;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    qryScheduleFinalProcProcID: TIntegerField;
    qryScheduleFinalProcName: TStringField;
    qryScheduleFinalProcKIND: TIntegerField;
    qryScheduleTimeTabelMashineID: TIntegerField;
    qryScheduleTimeTabelProcCode: TIntegerField;
    qryScheduleTimeTabelTrnsFormID: TIntegerField;
    qryScheduleTimeTabelS_Date: TStringField;
    qryScheduleTimeTabelS_Amount: TIntegerField;
    qryScheduleTimeTabelS_Function: TIntegerField;
    qryScheduleInfoInfoId: TIntegerField;
    qryScheduleInfoInfoName: TStringField;
    qryScheduleTimeTabel_MashineName: TStringField;
    qryScheduleTimeTabel_ProcName: TStringField;
    Label12: TLabel;
    DBText12: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    qryScheduleInfo2: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    LblSculde: TLabel;
    qryScheduleInfoWorkLoad_time: TFloatField;
    qryScheduleTimeTabel_WorkLoad_time: TIntegerField;
    Lbl_Time: TLabel;
    qryScheduleInfoWorkLoad_Amount: TFloatField;
    qryScheduleTimeTabel_WorkLoad_Amount: TIntegerField;
    Lbl_Amount: TLabel;
    qryScheduleTimeTabelTimeTabelId: TIntegerField;
    qryScheduleTimeTabelKIND: TIntegerField;
    qryScheduleTimeTabelProcID: TIntegerField;
    BitShowFormol: TBitBtn;
    actShowFormol: TAction;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    actCopy: TAction;
    actPast: TAction;
    PopMnuSend: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    axtShow: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppLabel8: TppLabel;
    ppLabel3: TppLabel;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    Date: TppDBText;
    LblState: TppDBText;
    PopMnuPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    N3: TMenuItem;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine6: TppLine;
    ppLine9: TppLine;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine7: TppLine;
    ppLabel11: TppLabel;
    LblState2: TppDBText;
    ppDBPipeline3: TppDBPipeline;
    ppDBPipeline4: TppDBPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel14: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText1: TppDBText;
    ppLabel18: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine10: TppLine;
    qryScheduleFinalProcStuffCode: TLargeintField;
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
    procedure qryScheduleTimeTabel2AfterInsert(DataSet: TDataSet);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryScheduleFinalProcAfterScroll(DataSet: TDataSet);
    procedure SrcScheduleTimeTabelStateChange(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure qryScheduleTimeTabelAfterDelete(DataSet: TDataSet);
    procedure qryScheduleTimeTabelAfterPost(DataSet: TDataSet);
    procedure qryScheduleTimeTabelBeforeDelete(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSort2Execute(Sender: TObject);
    procedure actSearch2Execute(Sender: TObject);
    procedure actChangeStateExecute(Sender: TObject);
    procedure qryScheduleFinalProcAfterOpen(DataSet: TDataSet);
    procedure qryScheduleTimeTabelAfterInsert(DataSet: TDataSet);
    procedure qryScheduleTimeTabelAfterScroll(DataSet: TDataSet);
    procedure actShowFormolExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure actPastExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure axtShowExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure LblStateGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure MenuItem2Click(Sender: TObject);
    procedure LblState2GetText(Sender: TObject; var Text: String);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
    MashineID:Integer;
    ProcCode:Integer;
    TrnsFormID:Integer;
    S_Amount:Double;
    S_Date:String;
    S_Function:Double;
    procedure Updatestatusbar(i:Integer);
    procedure Up__date;
    procedure initpopmenu;
    procedure gridkeyenter(Sender: TObject;var key: char);
    procedure SampelClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ScheduleTimeTabelF: TScheduleTimeTabelF;

implementation

uses DM, GlobalPro, searchCode_ADO, sndkey32, sort2, search2, mmessage,
  ConversionCo, StrUtils, Math;

{$R *.dfm}

procedure TScheduleTimeTabelF.initpopmenu;
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

procedure TScheduleTimeTabelF.SampelClick(Sender: TObject);
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
     // qryScheduleProcItems.Locate('ReciptItemID',LastNumber,[]);}

end;


procedure TScheduleTimeTabelF.gridkeyenter(Sender: TObject;var key: char);
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
        0: If  aDataSet.FieldByName('MashineID').AsString=''  then
             nextIndex:=-2
           else
              nextIndex:=1;
        1: If  aDataSet.FieldByName('ProcCode').AsString=''  then
             nextIndex:=1
           else
              nextIndex:=2;
        2: If  aDataSet.FieldByName('TrnsFormID').AsString=''  then
             nextIndex:=2
           else
              nextIndex:=3;
        3: If  aDataSet.FieldByName('S_Date').AsString=''  then
             nextIndex:=3
           else
              nextIndex:=4;
        4:  If  aDataSet.FieldByName('S_Amount').AsString=''  then
             nextIndex:=4
           else
              nextIndex:=5;
        5: if  aDataSet.FieldByName('S_Function').AsString=''  then
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

procedure TScheduleTimeTabelF.cmbStateEnter(Sender: TObject);
begin
  inherited;
  cmbState.DroppedDown:=True;
end;

procedure TScheduleTimeTabelF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombos(cmbState,'SELECT InfoId, InfoName FROM  dbo.ScheduleInfo WHERE (Code = 3) ORDER BY Code');
  initpopmenu;
end;

procedure TScheduleTimeTabelF.cmbStateChange(Sender: TObject);
begin
  inherited;
   with qryScheduleFinalProc do
   begin
      Active:=False;
      Parameters.ParamByName('OrderStateFrom').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Parameters.ParamByName('OrderStateTo').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Parameters.ParamByName('OrderStateFrom2').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Parameters.ParamByName('OrderStateTo2').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Active:=True;
   end;//with
   Up__date;
end;

procedure TScheduleTimeTabelF.chkAllStateClick(Sender: TObject);
begin
  inherited;
  if chkAllState.Checked then begin
     cmbState.Enabled:=False;
     with qryScheduleFinalProc do
     begin
        Active:=False;
        Parameters.ParamByName('OrderStateFrom').Value:=0;
        Parameters.ParamByName('OrderStateTo').Value:=999;
        Parameters.ParamByName('OrderStateFrom2').Value:=0;
        Parameters.ParamByName('OrderStateTo2').Value:=999;
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
  Up__date;
end;

procedure TScheduleTimeTabelF.qryScheduleFinalProcOrderStateGetText(
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

procedure TScheduleTimeTabelF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TScheduleTimeTabelF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TScheduleTimeTabelF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
  SetColSize(DBGrid2,1,True);
end;

procedure TScheduleTimeTabelF.qryScheduleTimeTabel2AfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ProcId').AsInteger:=qryScheduleFinalProc.FieldByName('ProcId').AsInteger;
  DataSet.FieldByName('KIND').AsInteger:=qryScheduleFinalProc.FieldByName('KIND').AsInteger;
  DataSet.FieldByName('TimeTabelId').AsInteger:=GetANewCode(Self.Name,'ScheduleTimeTabel','TimeTabelId');
  //DataSet.FieldByName('MashineID').AsInteger:=0;
  DataSet.FieldByName('ProcCode').AsInteger:=0;
  DataSet.FieldByName('TrnsFormID').AsInteger:=0;
  DBGrid2.SetFocus;
end;

procedure TScheduleTimeTabelF.DBGrid2EditButtonClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..2] of String;
  i:Smallint;
begin
  inherited;
  if (qryScheduleTimeTabel.State in dseditmodes) then begin
    i:=(Sender as TDBGrid).SelectedIndex;
    case i of
      0: if qryScheduleTimeTabel.State in dsEditModes then begin
            Txt:='SELECT     InfoId, InfoName   FROM         dbo.ScheduleInfo  WHERE     (Code = 6) ';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„«‘Ì‰ (⁄«„·)˛', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
              with qryScheduleInfo do
              qryScheduleTimeTabel.FieldByName('MashineID').AsInteger:=StrToInt(Results[0]);
              with DMF.qryTmpTmp do
              begin
                 Active:=false;
                 SQL.text:='SELECT InfoId, ProcInFoId  FROM  dbo.ScheduleInfo  WHERE (Code = 6) AND (InfoId ='+qryScheduleTimeTabel.FieldByName('MashineID').AsString+')' ;
                 Active:=True;
                 qryScheduleTimeTabel.FieldByName('ProcCode').AsInteger:=FieldByName('ProcInFoId').AsInteger
              end;//with
            end;//if
          end;//if
        1: if qryScheduleTimeTabel.State in dsEditModes then begin
            Txt:=' SELECT InfoId, InfoName  FROM   dbo.ScheduleInfo  WHERE   (Code = 7)';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'ŒÿÊÿ  Ê·Ìœ', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
              qryScheduleTimeTabel.FieldByName('ProcCode').AsInteger:=StrToInt(Results[0]);
            end;//if
          end;//if
        2: if qryScheduleTimeTabel.State in dsEditModes then begin
            Txt:='SELECT  TransFormNo, TransFormDate, Note  FROM  dbo.TransForms WHERE (StuffCode = '+qryScheduleFinalProc.FieldByName('StuffCode').AsString+')';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'”—Ì«· ›—„Ê· ”«Œ ', txt,
              ['ﬂœ','  «—ÌŒ  ',' Ê÷ÌÕ« '],
              Results,[50,80,150],alLeft);
            if b then  begin
              qryScheduleTimeTabel.FieldByName('TrnsFormID').AsInteger:=StrToInt(Results[0]);
            end;//if
          end;//if
   end;//if
end;
end;

procedure TScheduleTimeTabelF.qryScheduleFinalProcAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  with  qryScheduleTimeTabel do
  begin
    Active:=false;
    Parameters.ParamByName('KIND').Value:=qryScheduleFinalProc.Fieldbyname('KIND').AsInteger;
    Parameters.ParamByName('ProcID').Value:=qryScheduleFinalProc.Fieldbyname('ProcID').AsInteger;
    Active:=true;
  end;//with
  Updatestatusbar(0);
  Up__date;
end;


procedure TScheduleTimeTabelF.SrcScheduleTimeTabelStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryScheduleTimeTabel.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
end;

procedure TScheduleTimeTabelF.DBGrid2DrawColumnCell(Sender: TObject;
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

procedure TScheduleTimeTabelF.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(key,qryScheduleTimeTabel.FieldByName('MashineID'));
     gridkeyenter(Sender,key);
end;

procedure TScheduleTimeTabelF.qryScheduleTimeTabelAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
    BigMessage('Õ–› ‘œ.',1);
    Updatestatusbar(0);
end;

procedure TScheduleTimeTabelF.qryScheduleTimeTabelAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
  Updatestatusbar(0);
end;

procedure TScheduleTimeTabelF.qryScheduleTimeTabelBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleTimeTabelF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleTimeTabel);
end;

procedure TScheduleTimeTabelF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  PopMnuSend.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TScheduleTimeTabelF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleTimeTabel);
end;

procedure TScheduleTimeTabelF.actSort2Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleFinalProc);
end;

procedure TScheduleTimeTabelF.actSearch2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleFinalProc);
end;

procedure TScheduleTimeTabelF.actChangeStateExecute(Sender: TObject);
begin
  inherited;
   PopMnuState.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TScheduleTimeTabelF.qryScheduleFinalProcAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[1].Text:=' ⁄œ«œ „Õ’Ê·='+IntToStr(qryScheduleFinalProc.RecordCount);
 // StatusBar1.Panels[0].Text:='„ﬁœ«—='+CurrToStr(CalcSumFileds(qryScheduleProcItems, 'entity'));
end;

procedure TScheduleTimeTabelF.Updatestatusbar(i:Integer);
begin
    with qryScheduleTimeTabel do
    begin
      if not(qryScheduleTimeTabel.IsEmpty) then
      begin
        BitShowFormol.Visible:=true;
        if i=0 then
        begin
          LblSculde.Caption:=CurrToStrF(qryScheduleFinalProc.Fieldbyname('entity').AsInteger-CalcSumFileds(qryScheduleTimeTabel, 'S_Amount'),ffCurrency,0);
          StatusBar2.Panels[1].Text:='„ﬁœ«—  Ê·Ìœ='+CurrToStr(CalcSumFileds(qryScheduleTimeTabel, 'S_Amount'));
          StatusBar2.Panels[0].Text:='ﬂ«—ﬂ—œ ='+CurrToStr(CalcSumFileds(qryScheduleTimeTabel, 'S_Function'));
        end//if2
        else
        begin
          with DMF.qryTmpTmp do
          begin
             Active:=false;
             SQL.text:='SELECT   SUM(S_Function) as S_Function FROM  ScheduleTimeTabel GROUP BY MashineID, S_Date' +
                      ' HAVING      (MashineID = '+IfThen(qryScheduleTimeTabel.Fieldbyname('MashineID').AsString='','0',qryScheduleTimeTabel.Fieldbyname('MashineID').AsString)+')' +
                      ' AND (S_Date = '''+qryScheduleTimeTabel.Fieldbyname('S_Date').AsString+''')' ;
             Active:=true;
             Lbl_Time.Caption:=CurrToStrF(qryScheduleTimeTabel.Fieldbyname('_WorkLoad_time').AsInteger -DMF.qryTmpTmp.Fieldbyname('S_Function').AsInteger,ffCurrency,0)
          end;//with
          Lbl_Amount.Caption:=CurrToStrF(FloatToCurr(qryScheduleTimeTabel.Fieldbyname('_WorkLoad_Amount').AsInteger*(qryScheduleTimeTabel.Fieldbyname('_WorkLoad_time').AsInteger - DMF.qryTmpTmp.Fieldbyname('S_Function').AsInteger)),ffCurrency,0);
        end;//else2
      end//if
      else
      begin
        Lbl_Time.Caption:= '0';
        Lbl_Amount.Caption:= '0';
        LblSculde.Caption:= '0';
        StatusBar2.Panels[1].Text:='„ﬁœ«—  Ê·Ìœ= .';
        StatusBar2.Panels[0].Text:='ﬂ«—ﬂ—œ = .';
      end;//else
    end//with
end;

procedure TScheduleTimeTabelF.qryScheduleTimeTabelAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ProcId').AsInteger:=qryScheduleFinalProc.FieldByName('ProcId').AsInteger;
  DataSet.FieldByName('KIND').AsInteger:=qryScheduleFinalProc.FieldByName('KIND').AsInteger;
  DataSet.FieldByName('TimeTabelId').AsInteger:=GetANewCode(Self.Name,'ScheduleTimeTabel','TimeTabelId');
  DataSet.FieldByName('MashineID').AsInteger:=0;
  DataSet.FieldByName('ProcCode').AsInteger:=0;
  DataSet.FieldByName('TrnsFormID').AsInteger:=0;
  DBGrid2.SetFocus;
end;

procedure TScheduleTimeTabelF.qryScheduleTimeTabelAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
   Updatestatusbar(1);
end;

procedure TScheduleTimeTabelF.actShowFormolExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TConversionCoF,ConversionCoF,Self);
  ConversionCoF.qry_TransForms.Locate('TransFormNo',qryScheduleTimeTabel.Fieldbyname('TrnsFormID').AsInteger,[]);
end;

procedure TScheduleTimeTabelF.Up__date;
begin
    with  qryScheduleTimeTabel do
  begin
    Active:=false;
    Parameters.ParamByName('KIND').Value:=qryScheduleFinalProc.Fieldbyname('KIND').AsInteger;
    Parameters.ParamByName('ProcID').Value:=qryScheduleFinalProc.Fieldbyname('ProcID').AsInteger;
    Active:=true;
  end;//with
end;

procedure TScheduleTimeTabelF.FormShow(Sender: TObject);
begin
  inherited;
  cmbState.ItemIndex:=0;
  with qryScheduleFinalProc do
   begin
      Active:=False;
      Parameters.ParamByName('OrderStateFrom').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Parameters.ParamByName('OrderStateTo').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Parameters.ParamByName('OrderStateFrom2').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Parameters.ParamByName('OrderStateTo2').Value:=integer(cmbState.Items.Objects[cmbState.ItemIndex]);
      Active:=True;
   end;//with
end;

procedure TScheduleTimeTabelF.actCopyExecute(Sender: TObject);
begin
  inherited;
    MashineID:=qryScheduleTimeTabel.Fieldbyname('MashineID').AsInteger;
    ProcCode:=qryScheduleTimeTabel.Fieldbyname('ProcCode').AsInteger;
    TrnsFormID:=qryScheduleTimeTabel.Fieldbyname('TrnsFormID').AsInteger;
    S_Amount:=qryScheduleTimeTabel.Fieldbyname('S_Amount').AsFloat;
    S_Date:=qryScheduleTimeTabel.Fieldbyname('S_Date').AsString;
    S_Function:=qryScheduleTimeTabel.Fieldbyname('S_Function').AsFloat;
end;

procedure TScheduleTimeTabelF.actPastExecute(Sender: TObject);
begin
  inherited;
  qryScheduleTimeTabel.Insert;
  qryScheduleTimeTabel.Fieldbyname('MashineID').AsInteger:=MashineID;
  qryScheduleTimeTabel.Fieldbyname('ProcCode').AsInteger:=ProcCode;
  qryScheduleTimeTabel.Fieldbyname('TrnsFormID').AsInteger:=TrnsFormID;
  qryScheduleTimeTabel.Fieldbyname('S_Amount').AsFloat:=S_Amount;
  qryScheduleTimeTabel.Fieldbyname('S_Date').AsString:=S_Date;
  qryScheduleTimeTabel.Fieldbyname('S_Function').AsFloat:=S_Function;
  qryScheduleTimeTabel.post;
end;

procedure TScheduleTimeTabelF.N1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TScheduleTimeTabelF.N2Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TScheduleTimeTabelF.axtShowExecute(Sender: TObject);
begin
  inherited;
 //ﬂﬂﬂ
end;

procedure TScheduleTimeTabelF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(key,qryScheduleFinalProc.FieldByName('StuffCode'));
end;

procedure TScheduleTimeTabelF.LblStateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
case qryScheduleFinalProc.FieldByName('OrderState').asinteger of
    0:text:='„Êﬁ ';
    1:text:='»—‰«„Â —Ì“Ì ‘œÂ';
    2:text:='œ— Ã—Ì«‰ »—‰«„Â —Ì“Ì ';
    3:text:='œ— Ã—Ì«‰ ”«Œ ';
    4:text:='‰Â«∆Ì ‘œÂ';
   end;//case
end;

procedure TScheduleTimeTabelF.actPrintExecute(Sender: TObject);
begin
  inherited;
   PopMnuPrint.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TScheduleTimeTabelF.MenuItem1Click(Sender: TObject);
begin
  inherited;
try
   qryScheduleFinalProc.DisableControls;
   ppReport1.Print;
  finally
   qryScheduleFinalProc.EnableControls;
  end;
end;

procedure TScheduleTimeTabelF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
 Text:=APPBank.CompanyName;
end;

procedure TScheduleTimeTabelF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TScheduleTimeTabelF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
 Text:=GetPageNumberString(Text);
end;

procedure TScheduleTimeTabelF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
 Text:=APPBank.CompanyName;
end;

procedure TScheduleTimeTabelF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
 Text:=GetPrintDate;
end;

procedure TScheduleTimeTabelF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TScheduleTimeTabelF.MenuItem2Click(Sender: TObject);
begin
  inherited;
  try
   qryScheduleFinalProc.DisableControls;
   qryScheduleTimeTabel.DisableControls;
   ppReport3.Print;
  finally
   qryScheduleFinalProc.EnableControls;
   qryScheduleTimeTabel.EnableControls;
  end;
end;

procedure TScheduleTimeTabelF.LblState2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qryScheduleFinalProc.FieldByName('OrderState').asinteger of
    0:text:='„Êﬁ ';
    1:text:='»—‰«„Â —Ì“Ì ‘œÂ';
    2:text:='œ— Ã—Ì«‰ »—‰«„Â —Ì“Ì ';
    3:text:='œ— Ã—Ì«‰ ”«Œ ';
    4:text:='‰Â«∆Ì ‘œÂ';
   end;//case
end;

procedure TScheduleTimeTabelF.N3Click(Sender: TObject);
begin
  inherited;
  try
   qryScheduleFinalProc.DisableControls;
   qryScheduleTimeTabel.DisableControls;
   ppReport2.Print;
  finally
   qryScheduleFinalProc.EnableControls;
   qryScheduleTimeTabel.EnableControls;
  end;

end;

end.

