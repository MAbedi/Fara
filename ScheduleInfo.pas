unit ScheduleInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, Grids, Vcl.DBGrids, ComCtrls, DB, ADODB, ppDB,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TScheduleInfoF = class(Ttemplate2MDIF)
    PnlMaster: TPanel;
    LblPerson1: TLabel;
    EdtPersonID1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBTextPersonID1: TDBText;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    newPanel: TPanel;
    BtnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    BtnDelete: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    qryScheduleInfo: TADOQuery;
    qryScheduleInfoCode: TIntegerField;
    qryScheduleInfoInfoId: TIntegerField;
    qryScheduleInfoInfoName: TStringField;
    qryScheduleInfoKind: TWordField;
    qryScheduleInfoWorkLoad_Normal: TFloatField;
    qryScheduleInfoWorkLoad_Amount: TFloatField;
    qryScheduleInfoWorkLoad_time: TFloatField;
    qryScheduleInfoStandardRate: TBCDField;
    qryScheduleInfoProcInFoId: TIntegerField;
    qryScheduleInfoComment: TStringField;
    qryScheduleInfoScheduleId: TIntegerField;
    qryScheduleInfoAcc_TopicCode: TIntegerField;
    qryScheduleInfoAcc_DetailCode: TIntegerField;
    qryScheduleInfoAcc_CTopicCode1: TIntegerField;
    qryScheduleInfoAcc_CTopicCode2: TIntegerField;
    SrcScheduleInfo: TDataSource;
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    PnlName: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    PnlKind: TPanel;
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    PnlNormal: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    PnlAmount: TPanel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    PnlTime: TPanel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    PnlRate: TPanel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    PnlLine: TPanel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    PnlNote: TPanel;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    qryInitForm: TADOQuery;
    qryInitFormCode: TIntegerField;
    qryInitFormName: TStringField;
    qryInitFormWorkload_Normal: TWordField;
    qryInitFormWorkload_Time: TWordField;
    qryInitFormWorkload_Amountd: TWordField;
    qryInitFormStandardRate: TWordField;
    qryInitFormNote: TWordField;
    qryInitFormAccRelatedActive: TWordField;
    qryInitFormKindActive: TWordField;
    qryInitFormProc_Line_Active: TWordField;
    qryInitFormReportName1: TStringField;
    qryInitFormReportName2: TStringField;
    qryInitFormMasterNo: TIntegerField;
    qryInitFormProcRelatedActive: TWordField;
    qryMasterInfoId: TIntegerField;
    qryMasterInfoName: TStringField;
    actSendtoExcel: TAction;
    actSort: TAction;
    ActPrint: TAction;
    qryScheduleInfo_TopicName: TStringField;
    qryScheduleInfo_CTopicName: TStringField;
    qryScheduleInfo_CTopicName2: TStringField;
    qryScheduleInfo_DetailCode: TStringField;
    qryProcInFoId: TADOQuery;
    qryScheduleInfo_ProcInFoName: TStringField;
    qryScheduleInfoMasterInfoID: TIntegerField;
    qryScheduleProCode: TADOQuery;
    SrcScheduleProCode: TDataSource;
    qryStuffCoding: TADOQuery;
    qryStuffCodingc_StuffName: TStringField;
    qryStuffCodingStoreKind: TWordField;
    qryScheduleProCodeScheduleId: TIntegerField;
    qryScheduleProCodeProcCode: TIntegerField;
    qryScheduleProCodeProcWordLoad: TFloatField;
    qryScheduleProCode__StuffName: TStringField;
    DataSetPost2: TDataSetPost;
    Action1: TAction;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetCancel2: TDataSetCancel;
    qryProcInFoIdInfoId: TIntegerField;
    qryProcInFoIdInfoName: TStringField;
    PnlSheet: TPanel;
    PageControl1: TPageControl;
    TabSChedule: TTabSheet;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    newPanel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    TabAcc: TTabSheet;
    Label10: TLabel;
    SpeedButton3: TSpeedButton;
    DBText2: TDBText;
    DBText5: TDBText;
    SpeedButton5: TSpeedButton;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton6: TSpeedButton;
    DBText6: TDBText;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    DBText3: TDBText;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine8: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText12: TppDBText;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    qryStuffCodingc_StuffCode: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SrcScheduleInfoStateChange(Sender: TObject);
    procedure qryScheduleInfoAfterInsert(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure qryScheduleInfoKindGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryScheduleInfoKindSetText(Sender: TField;
      const Text: String);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EdtPersonID1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryScheduleInfoAfterDelete(DataSet: TDataSet);
    procedure qryScheduleInfoAfterPost(DataSet: TDataSet);
    procedure qryScheduleInfoBeforeDelete(DataSet: TDataSet);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryScheduleProCodeAfterInsert(DataSet: TDataSet);
    procedure SrcScheduleProCodeStateChange(Sender: TObject);
    procedure qryScheduleProCodeAfterDelete(DataSet: TDataSet);
    procedure qryScheduleProCodeBeforeDelete(DataSet: TDataSet);
    procedure qryScheduleInfoAfterScroll(DataSet: TDataSet);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qryScheduleProCodeBeforePost(DataSet: TDataSet);
    procedure qryScheduleProCodeAfterEdit(DataSet: TDataSet);
    procedure BitBtn13Click(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
     formType: Byte;
     procedure initForm;
     procedure Up_date;
     procedure gridkeyenter(Sender: TObject;var key: char);
  public
    { Public declarations }

  end;

var
  ScheduleInfoF: TScheduleInfoF;

implementation

uses DM, Math, sort2, search2, GlobalPro, searchCode_ADO,
  mmessage, sndkey32, DBGrid2Print, FormFunctions;

{$R *.dfm}

procedure TScheduleInfoF.gridkeyenter(Sender: TObject;var key: char);
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
        0: If  aDataSet.FieldByName('ProcCode').AsString=''  then
             nextIndex:=-2
           else
              nextIndex:=2;
        2: If  aDataSet.FieldByName('ProcWordLoad').AsString=''  then
             nextIndex:= 2
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
    #32,#157:  if curIndex in [0..1] then begin
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


procedure TScheduleInfoF.initForm;
begin
  With qryInitForm do
  begin
    Active:=false;
    Parameters.ParamByName('FormType').Value:=formType;
    Active:=true;
    ScheduleInfoF.Caption:='   ⁄—Ì› Ê  œÊÌ‰ «ÿ·«⁄«  ' + FieldByName('Name').AsString;
    PnlKind.Visible:=FieldByName('KindActive').AsInteger=1;
    PnlNormal.Visible:=FieldByName('Workload_Normal').AsInteger=1;
    PnlAmount.Visible:=FieldByName('Workload_Amountd').AsInteger=1;
    DBGrid1.Columns.Items[2].Visible:=PnlAmount.Visible;
    PnlTime.Visible:=FieldByName('Workload_Time').AsInteger=1;
    DBGrid1.Columns.Items[3].Visible:= PnlTime.Visible;
    PnlRate.Visible:=FieldByName('StandardRate').AsInteger=1;
    DBGrid1.Columns.Items[4].Visible:= PnlRate.Visible;
    PnlLine.Visible:=FieldByName('Proc_Line_Active').AsInteger=1;
    PnlNote.Visible:=FieldByName('Note').AsInteger=1;
    TabAcc.TabVisible:=FieldByName('AccRelatedActive').AsInteger=1;
    TabSChedule.TabVisible:=FieldByName('ProcRelatedActive').AsInteger=1;
    if (TabAcc.Visible=false) and (TabSChedule.Visible=false) then PnlSheet.Visible:=False
    else
      PageControl1.ActivePageIndex:=0;
    with qryMaster do
    begin
      Active:=false;
      Parameters.ParamByName('MasterInfoID').Value:=qryInitForm.FieldByName('MasterNo').AsInteger;
      Active:=true;
      if qryMaster.IsEmpty then PnlMaster.Visible:=false;
    end;//with
  end;//with
  qryScheduleProCode.Active:=true;
  Up_date;
end;


procedure TScheduleInfoF.FormCreate(Sender: TObject);
begin
  inherited;
   formType:=var_glb_gParam;
   initForm;
end;

procedure TScheduleInfoF.FormDestroy(Sender: TObject);
begin
  inherited;
   SaveColWidth(DBGrid1,IntToStr(formType));
   SaveColWidth(DBGrid2,IntToStr(formType));
end;

procedure TScheduleInfoF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True,IntToStr(formType));
  SetColSize(DBGrid2,1,True,IntToStr(formType));
end;

procedure TScheduleInfoF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Up_date;
end;
procedure TScheduleInfoF.Up_date;
begin
 with qryScheduleInfo do
  begin
    Active:=false;
    Parameters.ParamByName('FormType').Value:= formType;
    Parameters.ParamByName('MasterInfoID').Value:=IfThen(qryMaster.IsEmpty,0,qryMaster.FieldByName('InfoId').AsInteger);
    Active:=true;
  end;//with
  with qryScheduleProCode do
  begin
    Active:=false;
    Parameters.ParamByName('SchId').Value:=IfThen(qryScheduleInfo.IsEmpty,0,qryScheduleInfo.Fieldbyname('ScheduleId').AsInteger);
    Active:=true;
  end;//with
end;

procedure TScheduleInfoF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleInfo);
end;

procedure TScheduleInfoF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleInfo);
end;

procedure TScheduleInfoF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TScheduleInfoF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AccSpeedButtonTopicCode(qryScheduleInfo)
end;

procedure TScheduleInfoF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if qryScheduleInfo.FieldByName('_TopicName').AsString='' then
    BigMessage('«» œ« ﬂœ Õ”«» —«  ⁄—Ì› ﬂ‰Ìœ.˛',1)
  else
  begin
    AccSpeedButtonCTopicCode(qryScheduleInfo)
  end;
end;

procedure TScheduleInfoF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if qryScheduleInfo.FieldByName('_TopicName').AsString='' then
    BigMessage('«» œ« ﬂœ Õ”«» —«  ⁄—Ì› ﬂ‰Ìœ.˛',1)
  else
    AccSpeedButtonCTopicCode2(qryScheduleInfo)
end;

procedure TScheduleInfoF.SrcScheduleInfoStateChange(Sender: TObject);
begin
  inherited;
   okPanel.Visible:=qryScheduleInfo.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
end;

procedure TScheduleInfoF.qryScheduleInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('Code').AsInteger:=formType;
  DataSet.FieldByName('MasterInfoID').AsInteger:=qryMaster.FieldByName('InfoId').AsInteger;
  DataSet.FieldByName('ScheduleId').AsInteger:=GetANewCode(Self.Name,'ScheduleInfo','ScheduleId');
  DataSet.FieldByName('InfoId').AsInteger:= GetANewCode(Self.Name,'SELECT  MAX(InfoId) FROM  ScheduleInfo GROUP BY Code, MasterInfoID  HAVING (Code ='+IntToStr(formType)+')  AND (MasterInfoID = '+IntToStr(IfThen(qryMaster.IsEmpty,0,qryMasterInfoId.AsInteger))+')','ScheduleId');
  DBEdit5.SetFocus;

end;

procedure TScheduleInfoF.PageControl1Change(Sender: TObject);
begin
  inherited;
   TabAcc.Visible:=qryInitForm.FieldByName('AccRelatedActive').AsInteger=1;
   TabSChedule.Visible:=qryInitForm.FieldByName('ProcRelatedActive').AsInteger=1;
end;

procedure TScheduleInfoF.qryScheduleInfoKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:Text:='«’·Ì';
    1:Text:='›—⁄Ì';
  end;//case
end;

procedure TScheduleInfoF.qryScheduleInfoKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
   Sender.AsInteger:=DBComboBox1.ItemIndex;
end;

procedure TScheduleInfoF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if qryScheduleInfo.FieldByName('_TopicName').AsString='' then
    BigMessage('«» œ« ﬂœ Õ”«» —«  ⁄—Ì› ﬂ‰Ìœ.˛',1)
  else
  AccSpeedButtonDetailCode(qryScheduleInfo)
end;

procedure TScheduleInfoF.SpeedButton2Click(Sender: TObject);
var
  b:Boolean;
  Results:  array[0..1] of String;
  Txt:String;
begin
  inherited;
  Txt:='SELECT InfoId, InfoName  FROM ScheduleInfo  WHERE (Code = 7)';
  b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'Œÿ  Ê·Ìœ',Txt,['òœ','⁄‰Ê«‰ '],Results,[50,150],alLeft);
  if b then begin
    if not (qryScheduleInfo.state in dsEditModes) then qryScheduleInfo.edit ;
    qryScheduleInfo.FieldByName('ProcInFoId').AsInteger:=StrToInt(Results[0]);
  end;//if       
end;
procedure TScheduleInfoF.SpeedButton1Click(Sender: TObject);
var
  b:Boolean;
  Results:  array[0..1] of String;
  Txt:String;
begin
  inherited;
  Txt:='SELECT InfoId, InfoName  FROM  ScheduleInfo WHERE  (Code ='+IntToStr(qryInitForm.FieldByName('MasterNo').AsInteger)+')';
  b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'›—„Â«Ì »—‰«„Â —Ì“Ì',Txt,['òœ','‰«„ '],Results,[50,150],alLeft);
  if b then begin
    qryMaster.Locate('InfoId',Results[0],[]);
  end;//if
end;

procedure TScheduleInfoF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TScheduleInfoF.EdtPersonID1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key = 32 then SpeedButton1.Click;
end;

procedure TScheduleInfoF.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = 32 then SpeedButton2.Click;
end;

procedure TScheduleInfoF.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = 32 then SpeedButton3.Click;
end;

procedure TScheduleInfoF.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = 32 then SpeedButton4.Click;
end;

procedure TScheduleInfoF.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = 32 then SpeedButton5.Click;
end;

procedure TScheduleInfoF.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = 32 then SpeedButton6.Click;
end;

procedure TScheduleInfoF.qryScheduleInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
   BigMessage('Õ–› ‘œ.',1);
end;

procedure TScheduleInfoF.qryScheduleInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
  if qryScheduleProCode.state in dsEditModes  then qryScheduleProCode.Post;
  qryScheduleProCode.UpdateBatch;
end;

procedure TScheduleInfoF.qryScheduleInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleInfoF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   gridkeyenter(Sender,key);
end;

procedure TScheduleInfoF.DBGrid2EditButtonClick(Sender: TObject);
var
  Txt:  String;
  b:Boolean;
  Results:  array[0..1] of String;
  i:Smallint;
begin
  inherited;
  if (qryScheduleProCode.State in dseditmodes) then begin
    i:=(Sender as TDBGrid).SelectedIndex;
    case i of
      0: if qryScheduleProCode.State in dsEditModes then begin
            Txt:='SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Stores.StoreKind  ' +
                 ' FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN '+
                 ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID WHERE (Stores.StoreKind IN (1, 2)) ';
            b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„Õ’Ê·  Ê·ÌœÌ', txt,
              ['ﬂœ',' ⁄‰Ê«‰  '],
              Results,[50,100],alLeft);
            if b then  begin
              qryScheduleProCode.FieldByName('ProcCode').AsInteger:=StrToInt(Results[0]);
            end;//if
          end;//if
   end;//if
end;
end;
procedure TScheduleInfoF.qryScheduleProCodeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qryScheduleInfo.FieldByName('InfoName').AsString='' then  begin
    qryScheduleProCode.Cancel;
    BigMessage('«» œ« «ÿ·«⁄«  «’·Ì —« Ê«—œ ﬂ‰Ìœ.˛',1);
    DBEdit5.SetFocus;
  end//if
  else
  begin
    DataSet.FieldByName('ScheduleId').AsInteger:=qryScheduleInfo.FieldByName('ScheduleId').AsInteger;
    qryScheduleInfo.Edit;
  end;//else  
end;

procedure TScheduleInfoF.SrcScheduleProCodeStateChange(Sender: TObject);
begin
  inherited;
  okPanel2.Visible:=qryScheduleProCode.State in dsEditModes;
  newPanel2.Visible:=not okPanel2.Visible;
  BtnReject.Cancel:=newPanel.Visible;
end;

procedure TScheduleInfoF.qryScheduleProCodeAfterDelete(DataSet: TDataSet);
begin
  inherited;
   BigMessage('Õ–› ‘œ.',1);
end;

procedure TScheduleInfoF.qryScheduleProCodeBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleInfoF.qryScheduleInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryScheduleProCode do
  begin
    Active:=false;
    Parameters.ParamByName('SchId').Value:=IfThen(qryScheduleInfo.IsEmpty,0,qryScheduleInfo.Fieldbyname('ScheduleId').AsInteger);
    Active:=true;
  end;//with
end;

procedure TScheduleInfoF.DBGrid2DrawColumnCell(Sender: TObject;
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

procedure TScheduleInfoF.qryScheduleProCodeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryScheduleInfo.FieldByName('InfoName').AsString='' then  begin
    BigMessage('«» œ« «ÿ·«⁄«  «’·Ì —« Ê«—œ ﬂ‰Ìœ.˛',1);
    Abort;
  end;//if  

end;

procedure TScheduleInfoF.qryScheduleProCodeAfterEdit(DataSet: TDataSet);
begin
  inherited;
   qryScheduleInfo.Edit;
end;

procedure TScheduleInfoF.BitBtn13Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1,formType);
end;

procedure TScheduleInfoF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
    Text:=APPBank.CompanyName;
end;

procedure TScheduleInfoF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
 Text:=GetPageNumberString(Text);
end;

procedure TScheduleInfoF.ppLabel9GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TScheduleInfoF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryScheduleInfo.FieldByName('InfoId'));

end;

end.
