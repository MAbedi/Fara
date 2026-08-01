unit RptMashin_StuffLossItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ComCtrls,
  System.ImageList, System.Actions;

type
  TRptMashin_StuffLossItemsF = class(Ttemplate2MDIF)
    qryScheduleTimeWorks_Loss: TADOQuery;
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
    qryScheduleTimeWorks_LossWorkNo: TIntegerField;
    qryScheduleTimeWorks_LossWorkDate: TStringField;
    qryMasterInfoId: TIntegerField;
    qryMasterInfoName: TStringField;
    StatusBar1: TStatusBar;
    actShow: TAction;
    BitBtn4: TBitBtn;
    qryScheduleTimeWorks_LossLossStuffCoding: TIntegerField;
    qryScheduleTimeWorks_Lossc_StuffName: TStringField;
    qryScheduleTimeWorks_LossLossEntity: TIntegerField;
    qryScheduleTimeWorks_LossLossWeight: TIntegerField;
    qryScheduleTimeWorks_LossLossNote: TStringField;
    qryScheduleTimeWorks_LossMashinID: TIntegerField;
    qryScheduleTimeWorks_LossWorkId: TIntegerField;
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
    procedure qryScheduleTimeWorks_LossAfterOpen(DataSet: TDataSet);
    procedure actShowExecute(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptMashin_StuffLossItemsF: TRptMashin_StuffLossItemsF;

implementation

uses DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO,
  searchCode_ADO, Math, ScheduleTimeWorks;

{$R *.dfm}

procedure TRptMashin_StuffLossItemsF.actFiltterExecute(Sender: TObject);
begin
  inherited;
   with TfilterF.Create2(Self,myParams) do begin
    try
     AddItem(DMf.adcBSell,'LossStuffCoding','÷«Ì⁄« ','÷«Ì⁄« ',ftInteger,dvMinMax,'','',ciLookup,
       'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Stores.StoreKind  ' +
       ' FROM StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN '+
       ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID WHERE (Stores.StoreKind =2 ) ' ,
       'SELECT MIN(LossStuffCoding), MAX(LossStuffCoding)  FROM dbo.ScheduleStuffLossItems');
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

procedure TRptMashin_StuffLossItemsF.UpdateFilter;
begin
  with qryMaster do begin
    Active:=False;
    Parameters.ParamByName('MashinIDFrom').Value:=GetcFrom(myParams.ParamValues['MashinID'],ftInteger);
    Parameters.ParamByName('MashinIDTo').Value:=GetcTo(myParams.ParamValues['MashinID'],ftInteger);
    Active:=True;
  end;//with
  with qryScheduleTimeWorks_Loss do begin
    Active:=False;
    Parameters.ParamByName('WorkNoFrom').Value:=GetcFrom(myParams.ParamValues['WorkNo'],ftInteger);
    Parameters.ParamByName('WorkNoTo').Value:=GetcTo(myParams.ParamValues['WorkNo'],ftInteger);
    Parameters.ParamByName('WorkDateFrom').Value:=GetcFrom(myParams.ParamValues['WorkDate'],ftDate);
    Parameters.ParamByName('WorkDateTo').Value:=GetcTo(myParams.ParamValues['WorkDate'],ftDate);
    Parameters.ParamByName('LossStuffCodingFrom').Value:=GetcFrom(myParams.ParamValues['LossStuffCoding'],ftInteger);
    Parameters.ParamByName('LossStuffCodingTo').Value:=GetcTo(myParams.ParamValues['LossStuffCoding'],ftInteger);
    Active:=True;
  end;//with
end;


procedure TRptMashin_StuffLossItemsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFiltter.Execute;
  if myParams.FindParam('WorkNo')=nil then close;
end;

procedure TRptMashin_StuffLossItemsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3);
end;

procedure TRptMashin_StuffLossItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptMashin_StuffLossItemsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TRptMashin_StuffLossItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleTimeWorks_Loss);
end;

procedure TRptMashin_StuffLossItemsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptMashin_StuffLossItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleTimeWorks_Loss);
end;

procedure TRptMashin_StuffLossItemsF.SpeedButton3Click(Sender: TObject);
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

procedure TRptMashin_StuffLossItemsF.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key = 32 then SpeedButton3.Click;
end;

procedure TRptMashin_StuffLossItemsF.qryMasterAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
   with qryScheduleTimeWorks_Loss do begin
    Active:=False;
    Parameters.ParamByName('MashinID').Value:=IfThen(DataSet.Fieldbyname('InfoId').AsInteger<0,0,DataSet.Fieldbyname('InfoId').AsInteger);
    Active:=True;
  end;//with
end;

procedure TRptMashin_StuffLossItemsF.qryScheduleTimeWorks_LossAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[1].Text:='Ã„⁄  ⁄œ«œ='+CurrToStr(CalcSumFileds(qryScheduleTimeWorks_Loss,'LossEntity'));
  StatusBar1.Panels[0].Text:='Ã„⁄ Ê“‰='+CurrToStr(CalcSumFileds(qryScheduleTimeWorks_Loss,'LossWeight'));

end;

procedure TRptMashin_StuffLossItemsF.actShowExecute(Sender: TObject);
begin
  inherited;
   CreateMDIForm2(TScheduleTimeWorksF,ScheduleTimeWorksF,Self);
   ScheduleTimeWorksF.qryScheduleTimeWorks.Locate('WorkId',qryScheduleTimeWorks_Loss.Fieldbyname('WorkId').AsInteger,[]);
   ScheduleTimeWorksF.PageControl1.ActivePageIndex:=2;
end;

end.
