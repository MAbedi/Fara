unit ScheduleTimeWorks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, Mask, DBCtrls, Grids, Vcl.DBGrids, DB, ADODB, Menus,
  ppBands, ppCtrls, ppClass, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl,
  ppCache, ppDB, ppProd, ppComm, ppRelatv, ppDBPipe, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TScheduleTimeWorksF = class(Ttemplate2MDIF)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    GroupBox1: TGroupBox;
    SpeedButton3: TSpeedButton;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    SpeedButton2: TSpeedButton;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    qryScheduleTimeWorks: TADOQuery;
    SrcScheduleTimeWorks: TDataSource;
    qryScheduleTimeWorksWorkId: TIntegerField;
    qryScheduleTimeWorksWorkNo: TIntegerField;
    qryScheduleTimeWorksWorkDate: TStringField;
    qryScheduleTimeWorksState: TWordField;
    qryScheduleTimeWorksMashinID: TIntegerField;
    qryScheduleTimeWorksShiftNo: TWordField;
    qryScheduleTimeWorksReciptNo: TIntegerField;
    qryScheduleTimeWorksReciptDate: TStringField;
    qryScheduleTimeWorksProcCode: TIntegerField;
    newPanel: TPanel;
    BtnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    BtnDelete: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    qryScheduleWorksItems: TADOQuery;
    qryScheduleWorksItemsItemsId: TIntegerField;
    qryScheduleWorksItemsWorkId: TIntegerField;
    qryScheduleWorksItemsProductModel: TLargeintField;
    qryScheduleWorksItemsOrderId: TIntegerField;
    qryScheduleWorksItemsTrancFormId: TIntegerField;
    qryScheduleWorksItemsWorkTime: TFloatField;
    qryScheduleWorksItemsProcAmount: TFloatField;
    qryScheduleWorksItemsLossAmount1: TFloatField;
    qryScheduleWorksItemsLossAmount2: TFloatField;
    SrcScheduleWorksItems: TDataSource;
    DBGrid3: TDBGrid;
    StatusBar1: TStatusBar;
    DBGrid4: TDBGrid;
    StatusBar2: TStatusBar;
    qryScheduleTimeLossItems: TADOQuery;
    SrcScheduleTimeLossItems: TDataSource;
    qryScheduleTimeLossItemsTimeLossId: TIntegerField;
    qryScheduleTimeLossItemsLoseId: TIntegerField;
    qryScheduleTimeLossItemsLossTime: TIntegerField;
    qryScheduleTimeLossItemsLossCommant: TStringField;
    qryScheduleTimeLossItemsWorkId: TIntegerField;
    qryScheduleStuffLossItems: TADOQuery;
    SrcScheduleStuffLossItems: TDataSource;
    qryScheduleStuffLossItemsLossItemId: TIntegerField;
    qryScheduleStuffLossItemsWorkId: TIntegerField;
    qryScheduleStuffLossItemsLossStuffCoding: TIntegerField;
    qryScheduleStuffLossItemsLossEntity: TIntegerField;
    qryScheduleStuffLossItemsLossWeight: TIntegerField;
    qryScheduleStuffLossItemsLossNote: TStringField;
    qryLookup_Mashin: TADOQuery;
    qryScheduleTimeWorks_MashinName: TStringField;
    qryLookup_Proc: TADOQuery;
    qryScheduleTimeWorks_ProcName: TStringField;
    qryLookup_StuffCod: TADOQuery;
    qryLookup_StuffCodc_StuffName: TStringField;
    qryScheduleWorksItems_c_StuffName: TStringField;
    qryLookup_model: TADOQuery;
    qryScheduleWorksItems__ProductName: TStringField;
    qryLookup_cust: TADOQuery;
    qryScheduleWorksItems_OrderName: TStringField;
    qry_Sum: TADOQuery;
    qry_SumProcAmount: TFloatField;
    qry_SumLossAmount1: TFloatField;
    qry_SumLossAmount2: TFloatField;
    qry_Sum_Sum: TFloatField;
    qryScheduleWorksItems_Sum: TFloatField;
    qry_Sums_u_m: TStringField;
    SrcSum: TDataSource;
    qry_SumWorkTime: TFloatField;
    qryLookup_modelLookUpID: TIntegerField;
    qryLookup_modelName: TStringField;
    DBEdit13: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    qryLookup_Lose: TADOQuery;
    qryLookup_LoseInfoId: TIntegerField;
    qryLookup_LoseInfoName: TStringField;
    qryScheduleTimeLossItems_LoseName: TStringField;
    qryScheduleStuffLossItems_LossStuffName: TStringField;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    actChangeState: TAction;
    PopMnuState: TPopupMenu;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitShowFormol: TBitBtn;
    actShowFormol: TAction;
    TabSheet4: TTabSheet;
    DBGrid5: TDBGrid;
    StatusBar3: TStatusBar;
    qryScheduleTimePerson: TADOQuery;
    qryScheduleTimePersonTimePersonId: TIntegerField;
    qryScheduleTimePersonWorkId: TIntegerField;
    qryScheduleTimePersonPersonId: TIntegerField;
    qryScheduleTimePersonProc_Entity: TIntegerField;
    qryScheduleTimePersonProc_Time: TIntegerField;
    qryScheduleTimePersonProc_Note: TStringField;
    SrcScheduleTimePerson: TDataSource;
    qryLookup_Person: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    qryScheduleTimePerson_PersonName: TStringField;
    Panel5: TPanel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    BitBtn9: TBitBtn;
    DataSetDelete_LossTime: TDataSetDelete;
    Panel6: TPanel;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    BitBtn10: TBitBtn;
    DataSetDelete_StuffLoss: TDataSetDelete;
    Panel4: TPanel;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    BitBtn11: TBitBtn;
    DataSetDelete_person: TDataSetDelete;
    BitBtn12: TBitBtn;
    DataSetDelete_WorksItem: TDataSetDelete;
    qry_LookUpState: TADOQuery;
    qry_LookUpStateInfoId: TIntegerField;
    qry_LookUpStateInfoName: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
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
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel14: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine10: TppLine;
    LblState: TppLabel;
    ppLabel1: TppLabel;
    qryLookup_StuffCodc_StuffCode: TLargeintField;
    qryScheduleWorksItemsProcStuffCoding: TLargeintField;
    procedure qryScheduleTimeWorksStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryScheduleTimeWorksAfterInsert(DataSet: TDataSet);
    procedure SrcScheduleTimeWorksStateChange(Sender: TObject);
    procedure qryScheduleWorksItemsCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qryScheduleTimeWorksAfterScroll(DataSet: TDataSet);
    procedure qry_SumCalcFields(DataSet: TDataSet);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryScheduleWorksItemsAfterPost(DataSet: TDataSet);
    procedure qryScheduleWorksItemsAfterDelete(DataSet: TDataSet);
    procedure qryScheduleWorksItemsAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure qryScheduleTimeLossItemsAfterInsert(DataSet: TDataSet);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure qryScheduleTimeLossItemsAfterOpen(DataSet: TDataSet);
    procedure qryScheduleTimeLossItemsAfterPost(DataSet: TDataSet);
    procedure qryScheduleTimeLossItemsAfterDelete(DataSet: TDataSet);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure qryScheduleStuffLossItemsAfterInsert(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actChangeStateExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qryScheduleStuffLossItemsAfterDelete(DataSet: TDataSet);
    procedure qryScheduleStuffLossItemsAfterOpen(DataSet: TDataSet);
    procedure qryScheduleStuffLossItemsAfterPost(DataSet: TDataSet);
    procedure qryScheduleWorksItemsBeforeDelete(DataSet: TDataSet);
    procedure qryScheduleTimeLossItemsBeforeDelete(DataSet: TDataSet);
    procedure qryScheduleStuffLossItemsBeforeDelete(DataSet: TDataSet);
    procedure qryScheduleTimeWorksBeforeDelete(DataSet: TDataSet);
    procedure qryScheduleTimeWorksAfterDelete(DataSet: TDataSet);
    procedure qryScheduleTimeWorksAfterPost(DataSet: TDataSet);
    procedure qryScheduleWorksItemsAfterEdit(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryScheduleTimeLossItemsAfterEdit(DataSet: TDataSet);
    procedure qryScheduleStuffLossItemsAfterEdit(DataSet: TDataSet);
    procedure qryScheduleTimeWorksBeforeCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actShowFormolExecute(Sender: TObject);
    procedure qryScheduleWorksItemsAfterScroll(DataSet: TDataSet);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5EditButtonClick(Sender: TObject);
    procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure qryScheduleTimePersonAfterInsert(DataSet: TDataSet);
    procedure qryScheduleTimePersonAfterDelete(DataSet: TDataSet);
    procedure qryScheduleTimePersonAfterEdit(DataSet: TDataSet);
    procedure qryScheduleTimePersonAfterOpen(DataSet: TDataSet);
    procedure qryScheduleTimePersonAfterPost(DataSet: TDataSet);
    procedure qryScheduleTimePersonBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
    procedure gridkeyenter(Sender: TObject;var key: char ;i:Integer);
    procedure SampelClick(Sender: TObject);
    procedure initpopmenu;
  public
    { Public declarations }
  end;

var
  ScheduleTimeWorksF: TScheduleTimeWorksF;

implementation

uses DM, GlobalPro, searchCode_ADO, sndkey32, search2, sort2, mmessage,
  ConversionCo;

{$R *.dfm}


procedure TScheduleTimeWorksF.gridkeyenter(Sender: TObject;var key: char ;i:Integer);
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
       case i of
        1: case curIndex of
              0: If  aDataSet.FieldByName('ProcStuffCoding').AsString=''  then
                   nextIndex:=-2
                 else
                    nextIndex:=2;
              2: If  aDataSet.FieldByName('ProductModel').AsString=''  then
                   nextIndex:=2
                 else
                    nextIndex:=3;
              3: If  aDataSet.FieldByName('OrderId').AsString=''  then
                   nextIndex:=3
                 else
                   nextIndex:=5;
              5: if  aDataSet.FieldByName('TrancFormId').AsString=''  then
                   nextIndex:=5
                 else
                    nextIndex:=6;
              6:  if  aDataSet.FieldByName('WorkTime').AsString=''  then
                   nextIndex:=6
                 else
                    nextIndex:=7;
              7: if  aDataSet.FieldByName('ProcAmount').AsString=''  then
                   nextIndex:=7
                 else
                    nextIndex:=8;
              8: if  aDataSet.FieldByName('LossAmount1').AsString=''  then
                   nextIndex:=8
                 else
                    nextIndex:=9;
              9: if  aDataSet.FieldByName('LossAmount1').AsString=''  then
                   nextIndex:=9
                 else
                    nextIndex:=-1;
        end;//case
        3: case curIndex of
          0: If  aDataSet.FieldByName('LoseId').AsString=''  then
               nextIndex:=-2
             else
                nextIndex:=2;
          2: If  aDataSet.FieldByName('LossTime').AsString=''  then
               nextIndex:=-2
             else
                nextIndex:=3;
          3: nextIndex:= -1;
        end;//case
        4: case curIndex of
              0: If  aDataSet.FieldByName('LossStuffCoding').AsString=''  then
                   nextIndex:=-2
                 else
                    nextIndex:=2;
              2: If  aDataSet.FieldByName('LossEntity').AsString=''  then
                   nextIndex:=2
                 else
                    nextIndex:=3;
              3: If  aDataSet.FieldByName('LossWeight').AsString=''  then
                   nextIndex:=3
                 else
                   nextIndex:=4;
              4:  nextIndex:=-1;
           end;//case
         5: case curIndex of
              0: If  aDataSet.FieldByName('PersonId').AsString=''  then
                   nextIndex:=-2
                 else
                    nextIndex:=2;
              2: If  aDataSet.FieldByName('Proc_Entity').AsString=''  then
                   nextIndex:=2
                 else
                    nextIndex:=3;
              3: If  aDataSet.FieldByName('Proc_Time').AsString=''  then
                   nextIndex:=3
                 else
                   nextIndex:=4;
              4:  nextIndex:=-1;
           end;//case
          end;//case
    end;//#13
    '+': begin
      key:=#0;
      nextIndex:=curIndex-1;
      case i of
         1: while (nextIndex>=0) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
            Dec(nextIndex);
         3: while (nextIndex>=0) and (not (DBGrid3.Columns[nextIndex].Visible) OR (DBGrid3.Columns[nextIndex].ReadOnly)) do
            Dec(nextIndex);
         4: while (nextIndex>=0) and (not (DBGrid4.Columns[nextIndex].Visible) OR (DBGrid4.Columns[nextIndex].ReadOnly)) do
            Dec(nextIndex);
         5: while (nextIndex>=0) and (not (DBGrid5.Columns[nextIndex].Visible) OR (DBGrid5.Columns[nextIndex].ReadOnly)) do
            Dec(nextIndex);
       end;//case

      if nextIndex<0 then nextIndex:=-3;
    end;// +
    '*':  begin
      key:=#0;
      SendKeys('000',false);
     end;// *
    #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;
      #32,#157:
      case i of
        1: if curIndex in [0..6] then begin
             key:=#0;
             DBGrid1EditButtonClick(sender);
          end;//if
        3: if curIndex in [0..1] then begin
             key:=#0;
             DBGrid3EditButtonClick(sender);
          end;//if
        4: if curIndex in [0..1] then begin
             key:=#0;
             DBGrid4EditButtonClick(sender);
          end;//if
        5: if curIndex in [0..1] then begin
             key:=#0;
             DBGrid5EditButtonClick(sender);
          end;//if
    end;//case
   end;//case
  if nextIndex>=0 then
  case i of
    1: while (nextIndex<DBGrid1.Columns.Count) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
    3: while (nextIndex<DBGrid3.Columns.Count) and (not (DBGrid3.Columns[nextIndex].Visible) OR (DBGrid3.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
    4: while (nextIndex<DBGrid4.Columns.Count) and (not (DBGrid4.Columns[nextIndex].Visible) OR (DBGrid4.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
    5: while (nextIndex<DBGrid5.Columns.Count) and (not (DBGrid5.Columns[nextIndex].Visible) OR (DBGrid5.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  end;//case
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


procedure TScheduleTimeWorksF.qryScheduleTimeWorksStateGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:text:='„Êﬁ ';
    2:text:='ﬁÿ⁄Ì';
    3:text:='‰Â«∆Ì ‘œÂ';
  end;//case
end;

procedure TScheduleTimeWorksF.qryScheduleTimeWorksAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('WorkId').AsInteger:=GetANewCode(Self.Name,'ScheduleTimeWorks','WorkId');
  DataSet.FieldByName('State').AsInteger:=0;
end;

procedure TScheduleTimeWorksF.SrcScheduleTimeWorksStateChange(
  Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryScheduleTimeWorks.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
end;

procedure TScheduleTimeWorksF.qryScheduleWorksItemsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_Sum').AsFloat:=  DataSet.FieldByName('ProcAmount').AsInteger+DataSet.FieldByName('LossAmount1').AsInteger+DataSet.FieldByName('LossAmount2').AsInteger ;
end;

procedure TScheduleTimeWorksF.FormShow(Sender: TObject);
begin
  inherited;
  qryScheduleTimeWorks.Active:=true;
end;

procedure TScheduleTimeWorksF.SpeedButton3Click(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..2] of String;
//  i:Smallint;
begin
  inherited;
  if qryScheduleTimeWorks.State in dsEditModes then
  begin
    Txt:='SELECT     InfoId, InfoName   FROM         dbo.ScheduleInfo  WHERE     (Code = 6) ';
    b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„«‘Ì‰ (⁄«„·)˛', txt,
    ['ﬂœ',' ⁄‰Ê«‰  '],
    Results,[50,100],alLeft);
    if b then
    begin
      qryScheduleTimeWorks.FieldByName('MashinID').AsInteger:=StrToInt(Results[0]);
      with DMF.qryTmpTmp do
      begin
        Active:=false;
        SQL.text:='SELECT InfoId, ProcInFoId  FROM  dbo.ScheduleInfo  WHERE (Code = 6) AND (InfoId ='+ qryScheduleTimeWorks.FieldByName('MashinID').AsString +')' ;
        Active:=True;
        qryScheduleTimeWorks.FieldByName('ProcCode').AsInteger:=FieldByName('ProcInFoId').AsInteger
      end;//with
    end;//if
  end;//if
end;

procedure TScheduleTimeWorksF.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key = 32 then SpeedButton3.Click;
end;

procedure TScheduleTimeWorksF.SpeedButton1Click(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..2] of String;
//  i:Smallint;
begin
  inherited;
  if qryScheduleTimeWorks.State in dsEditModes then
  begin
     Txt:=' SELECT InfoId, InfoName  FROM   dbo.ScheduleInfo  WHERE   (Code = 7)';
     b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'ŒÿÊÿ  Ê·Ìœ', txt,
     ['ﬂœ',' ⁄‰Ê«‰  '],
     Results,[50,100],alLeft);
    if b then
      qryScheduleTimeWorks.FieldByName('ProcCode').AsInteger:=StrToInt(Results[0]);
  end;//if
end;

procedure TScheduleTimeWorksF.DBGrid1EditButtonClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..1] of String;
  i:Smallint;
begin
  inherited;
    i:=(Sender as TDBGrid).SelectedIndex;
    case i of
      0:   begin
            Txt:='SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Stores.StoreKind  ' +
                 ' FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN '+
                 ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID WHERE (Stores.StoreKind IN (1, 2)) ';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„Õ’Ê· / Œœ„« ', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
            if not(qryScheduleWorksItems.State in dseditmodes) then
                  qryScheduleWorksItems.Edit;
              qryScheduleWorksItems.FieldByName('ProcStuffCoding').AsLargeInt:=StrToInt(Results[0]);
            end;//if
          end;
       2:   begin
            Txt:=' SELECT     LookUpID, Name FROM         LookUps WHERE     (Kind = 15)';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„œ· „Õ’Ê·', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
             if not(qryScheduleWorksItems.State in dseditmodes) then
                  qryScheduleWorksItems.Edit;
              qryScheduleWorksItems.FieldByName('ProductModel').AsLargeInt:=StrToInt(Results[0]);
            end;//if
          end;//if
        3:   begin
            Txt:='SELECT CustID, CustName FROM  Customers';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'”›«—‘ œÂ‰œÂ', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
             if not(qryScheduleWorksItems.State in dseditmodes) then
                  qryScheduleWorksItems.Edit;
              qryScheduleWorksItems.FieldByName('OrderId').AsInteger:=StrToInt(Results[0]);
            end;//if
          end;//if
        5:   begin
            Txt:='SELECT  TransFormNo, TransFormDate, Note  FROM  dbo.TransForms WHERE (StuffCode ='+qryScheduleWorksItems.Fieldbyname('ProcStuffCoding').AsString+')';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'”—Ì«· ›—„Ê· ”«Œ ', txt,
              ['ﬂœ','  «—ÌŒ  ',' Ê÷ÌÕ« '],
              Results,[50,80,150],alLeft);
            if b then  begin
             if not(qryScheduleWorksItems.State in dseditmodes) then
                  qryScheduleWorksItems.Edit;
              qryScheduleWorksItems.FieldByName('TrancFormId').AsInteger:=StrToInt(Results[0]);
            end;//if
          end;//if
   end;//if
//end;


end;

procedure TScheduleTimeWorksF.qryScheduleTimeWorksAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  with qryScheduleWorksItems do
  begin
    Active:=false;
    Parameters.ParamByName('WId').Value:=DataSet.Fieldbyname('WorkId').AsInteger;
    Active:=True;
  end;//with
  with qry_Sum do
  begin
    Active:=false;
    Parameters.ParamByName('WId').Value:=DataSet.Fieldbyname('WorkId').AsInteger;
    Active:=True;
  end;//with
  with qryScheduleTimeLossItems do
  begin
    Active:=false;
    Parameters.ParamByName('WId').Value:=DataSet.Fieldbyname('WorkId').AsInteger;
    Active:=True;
  end;//with
  with qryScheduleStuffLossItems do
  begin
    Active:=false;
    Parameters.ParamByName('WId').Value:=DataSet.Fieldbyname('WorkId').AsInteger;
    Active:=True;
  end;//with
  with qryScheduleTimePerson do
  begin
    Active:=false;
    Parameters.ParamByName('WId').Value:=DataSet.Fieldbyname('WorkId').AsInteger;
    Active:=True;
  end;//with
end;

procedure TScheduleTimeWorksF.qry_SumCalcFields(DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('_Sum').AsInteger:=DataSet.FieldByName('ProcAmount').AsInteger+DataSet.FieldByName('LossAmount1').AsInteger+DataSet.FieldByName('LossAmount2').AsInteger
end;

procedure TScheduleTimeWorksF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  DBGrid2.SelectedIndex:=DBGrid1.SelectedIndex-5
end;

procedure TScheduleTimeWorksF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);

  if Column.ID<6 then DBGrid2.Columns[0].Width:=DBGrid1.Columns[0].Width
      +DBGrid1.Columns[1].Width+DBGrid1.Columns[2].Width
      +DBGrid1.Columns[3].Width+DBGrid1.Columns[4].Width+DBGrid1.Columns[5].Width
  else DBGrid2.Columns[Column.ID-5].Width:=Column.Width;
end;

procedure TScheduleTimeWorksF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   QuickSearch(key,qryScheduleWorksItems.FieldByName('ProcStuffCoding'));
   gridkeyenter(Sender,key,1);
end;

procedure TScheduleTimeWorksF.qryScheduleWorksItemsAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qry_Sum.Requery;
end;

procedure TScheduleTimeWorksF.qryScheduleWorksItemsAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
   qry_Sum.Requery;
    BigMessage('Õ–› ‘œ.',1);
    qryScheduleWorksItems.UpdateBatch;
end;

procedure TScheduleTimeWorksF.qryScheduleWorksItemsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('WorkId').AsInteger:=qryScheduleTimeWorks.FieldByName('WorkId').AsInteger;
   DataSet.FieldByName('ItemsId').AsInteger:=GetANewCode(Self.Name,'ScheduleWorksItems','ItemsId');
   //DataSet.FieldByName('ProcStuffCoding').AsInteger:=0;
   DataSet.FieldByName('ProductModel').AsInteger:=0;
   DataSet.FieldByName('OrderId').AsInteger:=0;
   DataSet.FieldByName('TrancFormId').AsInteger:=0;
   qryScheduleTimeWorks.Edit;
end;

procedure TScheduleTimeWorksF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid3);
  SaveColWidth(DBGrid4);
  SaveColWidth(DBGrid5);
end;

procedure TScheduleTimeWorksF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
  SetColSize(DBGrid3,1,True);
  SetColSize(DBGrid4,1,True);
  SetColSize(DBGrid5,1,True);  
end;

procedure TScheduleTimeWorksF.DBGrid3EditButtonClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..1] of String;
  i:Smallint;
begin
  inherited;
    i:=(Sender as TDBGrid).SelectedIndex;
    case i of
      0:   begin
            Txt:='SELECT InfoId, InfoName FROM  ScheduleInfo WHERE  (Code = 2) ';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,' Êﬁ›« ', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
            if not(qryScheduleTimeLossItems.State in dseditmodes) then
                  qryScheduleTimeLossItems.Edit;
              qryScheduleTimeLossItems.FieldByName('LoseId').AsInteger:=StrToInt(Results[0]);
            end;//if
          end;
      end;//case
end;

procedure TScheduleTimeWorksF.qryScheduleTimeLossItemsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('WorkId').AsInteger:=qryScheduleTimeWorks.FieldByName('WorkId').AsInteger;
   DataSet.FieldByName('TimeLossId').AsInteger:=GetANewCode(Self.Name,'ScheduleTimeLossItems','TimeLossId');
   //DataSet.FieldByName('LoseId').AsInteger:=0;
   qryScheduleTimeWorks.Edit;
end;

procedure TScheduleTimeWorksF.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid3.DataSource.DataSet.RecNo) then
      DBGrid3.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid3.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TScheduleTimeWorksF.DBGrid3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryScheduleTimeLossItems.FieldByName('LoseId'));
   gridkeyenter(Sender,key,3);
end;

procedure TScheduleTimeWorksF.qryScheduleTimeLossItemsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text:='Ã„⁄ “„«‰='+CurrToStr(CalcSumFileds(qryScheduleTimeLossItems, 'LossTime'));
end;

procedure TScheduleTimeWorksF.qryScheduleTimeLossItemsAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text:='Ã„⁄ “„«‰='+CurrToStr(CalcSumFileds(qryScheduleTimeLossItems, 'LossTime'));
end;

procedure TScheduleTimeWorksF.qryScheduleTimeLossItemsAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text:='Ã„⁄ “„«‰='+CurrToStr(CalcSumFileds(qryScheduleTimeLossItems, 'LossTime'));
   BigMessage('Õ–› ‘œ.',1);
   qryScheduleTimeLossItems.UpdateBatch;
end;

procedure TScheduleTimeWorksF.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid4.DataSource.DataSet.RecNo) then
      DBGrid4.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid4.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TScheduleTimeWorksF.DBGrid4EditButtonClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..1] of String;
  i:Smallint;
begin
  inherited;
    i:=(Sender as TDBGrid).SelectedIndex;
    case i of
      0:   begin
            Txt:='SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Stores.StoreKind  ' +
                 ' FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN '+
                 ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID WHERE (Stores.StoreKind =2 ) ';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„Õ’Ê· / Œœ„« ', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
            if not(qryScheduleStuffLossItems.State in dseditmodes) then
                  qryScheduleStuffLossItems.Edit;
              qryScheduleStuffLossItems.FieldByName('LossStuffCoding').AsInteger:=StrToInt64(Results[0]);
            end;//if
          end;
    end;//case
end;

procedure TScheduleTimeWorksF.DBGrid4KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryScheduleStuffLossItems.FieldByName('LossStuffCoding'));
  gridkeyenter(Sender,key,4);
end;

procedure TScheduleTimeWorksF.qryScheduleStuffLossItemsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('WorkId').AsInteger:=qryScheduleTimeWorks.FieldByName('WorkId').AsInteger;
   DataSet.FieldByName('LossItemId').AsInteger:=GetANewCode(Self.Name,'ScheduleStuffLossItems','LossItemId');
   //DataSet.FieldByName('LossStuffCoding').AsInteger:=0;
   qryScheduleTimeWorks.Edit;

end;

procedure TScheduleTimeWorksF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleTimeWorks);
end;

procedure TScheduleTimeWorksF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleTimeWorks);
end;

procedure TScheduleTimeWorksF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TScheduleTimeWorksF.actChangeStateExecute(Sender: TObject);
begin
  inherited;
  PopMnuState.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TScheduleTimeWorksF.SpeedButton2Click(Sender: TObject);
var
  txt:String;
  result:array [0..5] of String;
begin
  inherited;
  txt:='SELECT  WorkId, WorkNo, WorkDate, ShiftNo, ReciptNo, ReciptDate FROM  dbo.ScheduleTimeWorks ';
  if searchCode_ADOF.SearchCode2(DMF.adcBSell,'ê“«—‘ ﬂ«—ﬂ—œ ⁄Ê«„·  Ê·ÌœÌ Ê „«‘Ì‰ ¬·« ',txt,
      ['','‘„«—Â',' «—ÌŒ','‘„«—Â ‘Ì› ','‘„«—Â —”Ìœ ’‰œÊﬁ',' «—ÌŒ —”Ìœ ’‰œÊﬁ'],result,[0,50,80,80,100,100],alLeft) then
    qryScheduleTimeWorks.Locate('WorkId',Result[0],[]);

end;

procedure TScheduleTimeWorksF.qryScheduleStuffLossItemsAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar2.Panels[1].Text:='Ã„⁄ „ﬁœ«—='+CurrToStr(CalcSumFileds(qryScheduleStuffLossItems, 'LossEntity'));
  StatusBar2.Panels[0].Text:='Ã„⁄ Ê“‰='+CurrToStr(CalcSumFileds(qryScheduleStuffLossItems, 'LossWeight'));
   BigMessage('Õ–› ‘œ.',1);
   qryScheduleStuffLossItems.UpdateBatch;
end;

procedure TScheduleTimeWorksF.qryScheduleStuffLossItemsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar2.Panels[1].Text:='Ã„⁄ „ﬁœ«—='+CurrToStr(CalcSumFileds(qryScheduleStuffLossItems, 'LossEntity'));
  StatusBar2.Panels[0].Text:='Ã„⁄ Ê“‰='+CurrToStr(CalcSumFileds(qryScheduleStuffLossItems, 'LossWeight'));
end;

procedure TScheduleTimeWorksF.qryScheduleStuffLossItemsAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar2.Panels[1].Text:='Ã„⁄ „ﬁœ«—='+CurrToStr(CalcSumFileds(qryScheduleStuffLossItems, 'LossEntity'));
  StatusBar2.Panels[0].Text:='Ã„⁄ Ê“‰='+CurrToStr(CalcSumFileds(qryScheduleStuffLossItems, 'LossWeight'));
end;

procedure TScheduleTimeWorksF.qryScheduleWorksItemsBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
    if get_response('¬Ì« »—«Ì Õ–› «ÿ·«⁄«  Ã«—Ì „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleTimeWorksF.qryScheduleTimeLossItemsBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
    if get_response('¬Ì« »—«Ì Õ–› «ÿ·«⁄«  Ã«—Ì „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleTimeWorksF.qryScheduleStuffLossItemsBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
    if get_response('¬Ì« »—«Ì Õ–› «ÿ·«⁄«  Ã«—Ì „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleTimeWorksF.qryScheduleTimeWorksBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleTimeWorksF.qryScheduleTimeWorksAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
   BigMessage('Õ–› ‘œ.',1);
end;

procedure TScheduleTimeWorksF.qryScheduleTimeWorksAfterPost(
  DataSet: TDataSet);
begin
  inherited;
 // if qryScheduleWorksItems.State in dseditmodes then
     qryScheduleWorksItems.UpdateBatch;
 // if qryScheduleTimeLossItems.State in dseditmodes then
     qryScheduleTimeLossItems.UpdateBatch;
  //if qryScheduleStuffLossItems.State in dseditmodes then
     qryScheduleStuffLossItems.UpdateBatch;
     qryScheduleTimePerson.UpdateBatch;
  BigMessage('À»  ‘œ.',1);
end;

procedure TScheduleTimeWorksF.qryScheduleWorksItemsAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  qryScheduleTimeWorks.Edit;
end;
procedure TScheduleTimeWorksF.initpopmenu;
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
procedure TScheduleTimeWorksF.SampelClick(Sender: TObject);
var
  LastNumber: Integer;
  ChangeNo:Integer;
begin
  inherited;
  if get_response(' ¬Ì« »—«Ì  €ÌÌ— Ê÷⁄Ì  „ÿ„∆‰ Â” Ìœø')<>mrYes then Exit;
  LastNumber:=qryScheduleTimeWorks.fieldbyname('WorkId').AsInteger;
  ChangeNo:=TMainMenu(Sender).Tag;
   with DMF.qryTmpTmp do begin
     Active:=false;
     SQL.text:='UPDATE    ScheduleTimeWorks SET State  ='+IntToStr(ChangeNo)+
                ' WHERE (WorkId  =  '+qryScheduleTimeWorks.fieldbyname('WorkId').AsString+')' ;
     ExecSQL;
      BigMessage(TMenuItem(Sender).Caption,1);
   end;//with
      qryScheduleTimeWorks.Requery;
      qryScheduleTimeWorks.Locate('WorkId',LastNumber,[])
end;

procedure TScheduleTimeWorksF.DBEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key = 32 then SpeedButton1.Click;
end;

procedure TScheduleTimeWorksF.qryScheduleTimeLossItemsAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  qryScheduleTimeWorks.Edit;
end;

procedure TScheduleTimeWorksF.qryScheduleStuffLossItemsAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  qryScheduleTimeWorks.Edit;
end;

procedure TScheduleTimeWorksF.qryScheduleTimeWorksBeforeCancel(
  DataSet: TDataSet);
begin
  inherited;
 if get_response('¬Ì« »—«Ì «‰’—«› „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
end;

procedure TScheduleTimeWorksF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  IF qryScheduleTimeWorks.State IN dseditmodes then
   if get_response('¬Ì« »—«Ì «‰’—«› „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
end;

procedure TScheduleTimeWorksF.actShowFormolExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TConversionCoF,ConversionCoF,Self);
  ConversionCoF.qry_TransForms.Locate('TransFormNo',qryScheduleWorksItems.Fieldbyname('TrancFormId').AsInteger,[]);
end;

procedure TScheduleTimeWorksF.qryScheduleWorksItemsAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
   if  not(qryScheduleWorksItems.IsEmpty) then BitShowFormol.Visible:=true;
end;

procedure TScheduleTimeWorksF.DBGrid5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid5.DataSource.DataSet.RecNo) then
      DBGrid5.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid5.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TScheduleTimeWorksF.DBGrid5EditButtonClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..1] of String;
  i:Smallint;
begin
  inherited;
    i:=(Sender as TDBGrid).SelectedIndex;
    case i of
      0:   begin
            Txt:='SELECT InfoId, InfoName FROM  ScheduleInfo WHERE  (Code = 9) ';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'Å—”‰· (ê—ÊÂÂ«Ì ‘€·Ì )˛', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
            if not(qryScheduleTimePerson.State in dseditmodes) then
                  qryScheduleTimePerson.Edit;
              qryScheduleTimePerson.FieldByName('PersonId').AsInteger:=StrToInt64(Results[0]);
            end;//if
          end;
      end;//case
end;

procedure TScheduleTimeWorksF.DBGrid5KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(key,qryScheduleTimePerson.FieldByName('PersonId'));
   gridkeyenter(Sender,key,5);
end;

procedure TScheduleTimeWorksF.qryScheduleTimePersonAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
    DataSet.FieldByName('WorkId').AsInteger:=qryScheduleTimeWorks.FieldByName('WorkId').AsInteger;
   DataSet.FieldByName('TimePersonId').AsInteger:=GetANewCode(Self.Name,'ScheduleTimePerson','TimePersonId');
   //DataSet.FieldByName('LossStuffCoding').AsInteger:=0;
   qryScheduleTimeWorks.Edit;
end;

procedure TScheduleTimeWorksF.qryScheduleTimePersonAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
    StatusBar3.Panels[1].Text:=' Ã„⁄ „ﬁœ«—  Ê·Ìœ='+CurrToStr(CalcSumFileds(qryScheduleTimePerson, 'Proc_Entity'));
   StatusBar3.Panels[0].Text:=' Ã„⁄ ﬂ«—ﬂ—œ='+CurrToStr(CalcSumFileds(qryScheduleTimePerson, 'Proc_Time'));
   BigMessage('Õ–› ‘œ.',1);
   qryScheduleTimePerson.UpdateBatch;
end;

procedure TScheduleTimeWorksF.qryScheduleTimePersonAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
   qryScheduleTimeWorks.Edit;
end;

procedure TScheduleTimeWorksF.qryScheduleTimePersonAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar3.Panels[1].Text:=' Ã„⁄ „ﬁœ«—  Ê·Ìœ='+CurrToStr(CalcSumFileds(qryScheduleTimePerson, 'Proc_Entity'));
   StatusBar3.Panels[0].Text:=' Ã„⁄ ﬂ«—ﬂ—œ='+CurrToStr(CalcSumFileds(qryScheduleTimePerson, 'Proc_Time'));
end;

procedure TScheduleTimeWorksF.qryScheduleTimePersonAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar3.Panels[1].Text:=' Ã„⁄ „ﬁœ«—  Ê·Ìœ='+CurrToStr(CalcSumFileds(qryScheduleTimePerson, 'Proc_Entity'));
   StatusBar3.Panels[0].Text:=' Ã„⁄ ﬂ«—ﬂ—œ='+CurrToStr(CalcSumFileds(qryScheduleTimePerson, 'Proc_Time'));
end;

procedure TScheduleTimeWorksF.qryScheduleTimePersonBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
    if get_response('¬Ì« »—«Ì Õ–› «ÿ·«⁄«  Ã«—Ì „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleTimeWorksF.FormCreate(Sender: TObject);
begin
  inherited;
  initpopmenu;
end;

end.
