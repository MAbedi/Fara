unit RptScheduleTimeWorks_Loss;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ComCtrls,
  System.ImageList, System.Actions;

type
  TRptMashin_TimeLossItemsF = class(Ttemplate2MDIF)
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
    qryScheduleTimeWorks_LossLoseId: TIntegerField;
    qryScheduleTimeWorks_LossInfoName: TStringField;
    qryScheduleTimeWorks_LossLossTime: TIntegerField;
    qryScheduleTimeWorks_LossLossCommant: TStringField;
    StatusBar1: TStatusBar;
    actShow: TAction;
    BitBtn4: TBitBtn;
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
  RptMashin_TimeLossItemsF: TRptMashin_TimeLossItemsF;

implementation

uses DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO,
  searchCode_ADO, Math, ScheduleTimeWorks;

{$R *.dfm}

procedure TRptMashin_TimeLossItemsF.actFiltterExecute(Sender: TObject);
begin
  inherited;
   with TfilterF.Create2(Self,myParams) do begin
    try
     AddItem(DMf.adcBSell,'LoseId',' Êﬁ›« ',' Êﬁ›',ftInteger,dvMinMax,'','',ciLookup,
       'SELECT InfoId, InfoName FROM  dbo.ScheduleInfo WHERE (Code = 2) ' ,
       'SELECT   MIN(LoseId), MAX(LoseId)  FROM  ScheduleTimeLossItems');
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

procedure TRptMashin_TimeLossItemsF.UpdateFilter;
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
    Parameters.ParamByName('LoseIdFrom').Value:=GetcFrom(myParams.ParamValues['LoseId'],ftInteger);
    Parameters.ParamByName('LoseIdTo').Value:=GetcTo(myParams.ParamValues['LoseId'],ftInteger);
    Active:=True;
  end;//with
end;


procedure TRptMashin_TimeLossItemsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFiltter.Execute;
  if myParams.FindParam('WorkNo')=nil then close;
end;

procedure TRptMashin_TimeLossItemsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3);
end;

procedure TRptMashin_TimeLossItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptMashin_TimeLossItemsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TRptMashin_TimeLossItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleTimeWorks_Loss);
end;

procedure TRptMashin_TimeLossItemsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptMashin_TimeLossItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleTimeWorks_Loss);
end;

procedure TRptMashin_TimeLossItemsF.SpeedButton3Click(Sender: TObject);
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

procedure TRptMashin_TimeLossItemsF.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key = 32 then SpeedButton3.Click;
end;

procedure TRptMashin_TimeLossItemsF.qryMasterAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
   with qryScheduleTimeWorks_Loss do begin
    Active:=False;
    Parameters.ParamByName('MashinID').Value:=IfThen(DataSet.Fieldbyname('InfoId').AsInteger<0,0,DataSet.Fieldbyname('InfoId').AsInteger);
    Active:=True;
  end;//with
end;

procedure TRptMashin_TimeLossItemsF.qryScheduleTimeWorks_LossAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text:='Ã„⁄ “„«‰  Êﬁ›='+CurrToStr(CalcSumFileds(qryScheduleTimeWorks_Loss,'LossTime'));
end;

procedure TRptMashin_TimeLossItemsF.actShowExecute(Sender: TObject);
begin
  inherited;
   CreateMDIForm2(TScheduleTimeWorksF,ScheduleTimeWorksF,Self);
   ScheduleTimeWorksF.qryScheduleTimeWorks.Locate('WorkNo',qryScheduleTimeWorks_Loss.Fieldbyname('WorkNo').AsInteger,[]);
   ScheduleTimeWorksF.PageControl1.ActivePageIndex:=1;
end;

end.
