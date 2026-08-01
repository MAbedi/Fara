unit RptMashin_WorksItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ComCtrls,
  SumDBGrid, System.ImageList, System.Actions;

type
  TRptMashin_WorksItemsF = class(Ttemplate2MDIF)
    qryMashin_WorksItems: TADOQuery;
    SrcScheduleTimeWorks_Loss: TDataSource;
    DBGrid1: TDBGrid;
    actFiltter: TAction;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    actChangeState: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    GroupBox1: TGroupBox;
    SpeedButton3: TSpeedButton;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBNavigator2: TDBNavigator;
    qryMaster: TADOQuery;
    SrcMaster: TDataSource;
    qryMashin_WorksItemsWorkNo: TIntegerField;
    qryMashin_WorksItemsWorkDate: TStringField;
    qryMasterInfoId: TIntegerField;
    qryMasterInfoName: TStringField;
    StatusBar1: TStatusBar;
    actShow: TAction;
    BitBtn4: TBitBtn;
    qryMashin_WorksItemsMashinID: TIntegerField;
    qryMashin_WorksItemsWorkId: TIntegerField;
    qryMashin_WorksItemsc_StuffName: TStringField;
    qryMashin_WorksItemsUnitName: TStringField;
    qryMashin_WorksItemsProductModel: TLargeintField;
    qryMashin_WorksItemsName: TStringField;
    qryMashin_WorksItemsOrderId: TIntegerField;
    qryMashin_WorksItemsCustName: TStringField;
    qryMashin_WorksItemsTrancFormId: TIntegerField;
    qryMashin_WorksItemsWorkTime: TFloatField;
    qryMashin_WorksItemsProcAmount: TFloatField;
    qryMashin_WorksItemsLossAmount1: TFloatField;
    qryMashin_WorksItemsLossAmount2: TFloatField;
    qryMashin_WorksItemsSumAmount: TFloatField;
    qryMashin_WorksItemsShiftNo: TWordField;
    qryMashin_WorksItemsState: TWordField;
    qryMashin_WorksItemsReciptNo: TIntegerField;
    qryMashin_WorksItemsReciptDate: TStringField;
    qryMashin_WorksItemsProcCode: TIntegerField;
    BitBtn7: TBitBtn;
    actFormoul: TAction;
    actRecipt: TAction;
    BitBtn8: TBitBtn;
    qryMashin_WorksItemsStoreID: TSmallintField;
    SumGrid1: TSumGrid;
    qryMashin_WorksItemsProcStuffCoding: TLargeintField;
    procedure actFiltterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure actShowExecute(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure actFormoulExecute(Sender: TObject);
    procedure actReciptExecute(Sender: TObject);
    procedure qryMashin_WorksItemsAfterScroll(DataSet: TDataSet);
    procedure qryMashin_WorksItemsStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptMashin_WorksItemsF: TRptMashin_WorksItemsF;

implementation

uses DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO,
  searchCode_ADO, Math, ScheduleTimeWorks, ConversionCo,
  FormFunctions;

{$R *.dfm}

procedure TRptMashin_WorksItemsF.actFiltterExecute(Sender: TObject);
begin
  inherited;
   with TfilterF.Create2(Self,myParams) do begin
    try
     AddItem(DMf.adcBSell,'ProcStuffCoding','„Õ’Ê·« ','„Õ’Ê·',ftInteger,dvMinMax,'','',ciLookup,
       'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Stores.StoreKind  ' +
       ' FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN '+
       ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID WHERE (Stores.StoreKind IN (1, 2)) ' ,
       'SELECT  MIN(ProcStuffCoding), MAX(ProcStuffCoding)  FROM ScheduleWorksItems');
      AddItem(DMF.adcBSell,'WorkDate','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
        'SELECT MIN(WorkDate), MAX(WorkDate)  FROM  dbo.ScheduleTimeWorks');
      AddItem(DMf.adcBSell,'WorkNo',' ‘„«—Â ','‘„«—Â',ftInteger,dvMinMax,'','',ciSimple,
         '','SELECT MIN(WorkNo), MAX(WorkNo)  FROM    dbo.ScheduleTimeWorks');
      AddItem(DMf.adcBSell,'MashinID','⁄Ê«„·  Ê·Ìœ ','⁄«„·',ftInteger,dvMinMax,'','',ciLookup,
       'SELECT InfoId, InfoName FROM  dbo.ScheduleInfo WHERE (Code = 6) ',
        'SELECT MIN(MashinID), MAX(MashinID) FROM dbo.ScheduleTimeWorks');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TRptMashin_WorksItemsF.UpdateFilter;
begin
  with qryMaster do begin
    Active:=False;
    Parameters.ParamByName('MashinIDFrom').Value:=GetcFrom(myParams.ParamValues['MashinID'],ftInteger);
    Parameters.ParamByName('MashinIDTo').Value:=GetcTo(myParams.ParamValues['MashinID'],ftInteger);
    Active:=True;
  end;//with
  with qryMashin_WorksItems do begin
    Active:=False;
    Parameters.ParamByName('WorkNoFrom').Value:=GetcFrom(myParams.ParamValues['WorkNo'],ftInteger);
    Parameters.ParamByName('WorkNoTo').Value:=GetcTo(myParams.ParamValues['WorkNo'],ftInteger);
    Parameters.ParamByName('WorkDateFrom').Value:=GetcFrom(myParams.ParamValues['WorkDate'],ftDate);
    Parameters.ParamByName('WorkDateTo').Value:=GetcTo(myParams.ParamValues['WorkDate'],ftDate);
    Parameters.ParamByName('ProcStuffCodingFrom').Value:=GetcFrom(myParams.ParamValues['ProcStuffCoding'],ftInteger);
    Parameters.ParamByName('ProcStuffCodingTo').Value:=GetcTo(myParams.ParamValues['ProcStuffCoding'],ftInteger);
    Active:=True;
  end;//with
end;


procedure TRptMashin_WorksItemsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFiltter.Execute;
  if myParams.FindParam('WorkNo')=nil then close;
end;

procedure TRptMashin_WorksItemsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3);
end;

procedure TRptMashin_WorksItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptMashin_WorksItemsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TRptMashin_WorksItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMashin_WorksItems);
end;

procedure TRptMashin_WorksItemsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptMashin_WorksItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMashin_WorksItems);
end;

procedure TRptMashin_WorksItemsF.SpeedButton3Click(Sender: TObject);
var
  txt:String;
  result:array [0..1] of String;
begin
  inherited;
   Txt:=' SELECT  InfoId, InfoName FROM  ScheduleInfo '+
        '  WHERE  (Code = 6) and (InfoId BETWEEN '+IntToStr(GetcFrom(myParams.ParamValues['MashinID'],ftInteger))+' AND '+IntToStr(GetcTo(myParams.ParamValues['MashinID'],ftInteger))+')';
     if searchCode_ADOF.SearchCode2(DMF.adcBSell,'„«‘Ì‰ ¬·« ', txt,
     ['ﬂœ',' ⁄‰Ê«‰  '],
     Result,[50,100],alLeft) then

      qryMaster.Locate('InfoId',Result[0],[]);
end;

procedure TRptMashin_WorksItemsF.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key = 32 then SpeedButton3.Click;
end;

procedure TRptMashin_WorksItemsF.qryMasterAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
   with qryMashin_WorksItems do begin
    Active:=False;
    Parameters.ParamByName('MashinID').Value:=IfThen(DataSet.Fieldbyname('InfoId').AsInteger<0,0,DataSet.Fieldbyname('InfoId').AsInteger);
    Active:=True;
  end;//with
end;

procedure TRptMashin_WorksItemsF.actShowExecute(Sender: TObject);
begin
  inherited;
   CreateMDIForm2(TScheduleTimeWorksF,ScheduleTimeWorksF,Self);
   ScheduleTimeWorksF.qryScheduleTimeWorks.Locate('WorkId',qryMashin_WorksItems.Fieldbyname('WorkId').AsInteger,[]);
   ScheduleTimeWorksF.qryScheduleWorksItems.Locate('ProcStuffCoding',qryMashin_WorksItems.Fieldbyname('ProcStuffCoding').AsInteger,[]);
   ScheduleTimeWorksF.PageControl1.ActivePageIndex:=0;
end;

procedure TRptMashin_WorksItemsF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
// DBGrid2.SelectedIndex:=DBGrid1.SelectedIndex-9
end;

procedure TRptMashin_WorksItemsF.actFormoulExecute(Sender: TObject);
begin
  inherited;
 CreateMDIForm2(TConversionCoF,ConversionCoF,Self);
  ConversionCoF.qry_TransForms.Locate('TransFormNo',qryMashin_WorksItems.Fieldbyname('TrancFormId').AsInteger,[]);
end;

procedure TRptMashin_WorksItemsF.actReciptExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryMashin_WorksItems,Self);
//   Recipts  F.Enter(5,false,qryMashin_WorksItems.Fieldbyname('StoreID').AsInteger,qryMashin_WorksItems.Fieldbyname('ReciptNo').AsInteger);
  // ReciptsF.qryRecipts.Locate('ReciptNumber',qryMashin_WorksItems.Fieldbyname('ReciptNo').AsInteger,[]);
end;

procedure TRptMashin_WorksItemsF.qryMashin_WorksItemsAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[4].Text:='  ‘„«—Â ‘Ì›  :  '+intToStr(qryMashin_WorksItems.Fieldbyname('ShiftNo').AsInteger);
  StatusBar1.Panels[3].Text:='  ‘„«—Â —”Ìœ ﬂ«·« :  '+intToStr(qryMashin_WorksItems.Fieldbyname('ReciptNo').AsInteger);
  StatusBar1.Panels[2].Text:='  «—ÌŒ —”Ìœ ﬂ«·« :  '+qryMashin_WorksItems.Fieldbyname('ReciptDate').AsString;
  StatusBar1.Panels[1].Text:=' Ê÷⁄Ì   :  '+intToStr(qryMashin_WorksItems.Fieldbyname('State').AsInteger);
  StatusBar1.Panels[0].Text:=' ﬂœ Œÿ  Ê·ÌœÌ : '+intToStr(qryMashin_WorksItems.Fieldbyname('ProcCode').AsInteger);
end;

procedure TRptMashin_WorksItemsF.qryMashin_WorksItemsStateGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:text:='„Êﬁ ';
    2:text:='ﬁÿ⁄Ì';
    3:text:='‰Â«∆Ì ‘œÂ';
  end;//case
end;

end.
