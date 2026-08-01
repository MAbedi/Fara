unit RptScheduleTimeWorks_Stuff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, System.ImageList,
  System.Actions;

type
  TRptScheduleTimeWorks_StuffF = class(Ttemplate2MDIF)
    qryScheduleTimeWorks_Suff: TADOQuery;
    SrcScheduleTimeWorks_Suff: TDataSource;
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
    qryStuffCod: TADOQuery;
    qryStuffCodc_StuffName: TStringField;
    SrcStuffCod: TDataSource;
    qryScheduleTimeWorks_SuffWorkNo: TIntegerField;
    qryScheduleTimeWorks_SuffWorkDate: TStringField;
    qryScheduleTimeWorks_SuffMashinID: TIntegerField;
    qryScheduleTimeWorks_SuffInfoName: TStringField;
    qryScheduleTimeWorks_SuffTrancFormId: TIntegerField;
    qryScheduleTimeWorks_SuffWorkTime: TFloatField;
    qryScheduleTimeWorks_SuffProcAmount: TFloatField;
    qryScheduleTimeWorks_SuffLossAmount1: TFloatField;
    qryScheduleTimeWorks_SuffLossAmount2: TFloatField;
    qryScheduleTimeWorks_SuffWorkId: TIntegerField;
    qryScheduleTimeWorks_SuffInfoId: TIntegerField;
    qryScheduleTimeWorks_SuffSum: TFloatField;
    qryStuffCodProcStuffCoding: TLargeintField;
    qryScheduleTimeWorks_SuffProcStuffCoding: TLargeintField;
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
    procedure qryStuffCodAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptScheduleTimeWorks_StuffF: TRptScheduleTimeWorks_StuffF;

implementation

uses DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO,
  searchCode_ADO, Math;

{$R *.dfm}

procedure TRptScheduleTimeWorks_StuffF.actFiltterExecute(Sender: TObject);
begin
  inherited;
   with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMf.adcBSell,'MashinID','⁄Ê«„·  Ê·Ìœ ','⁄«„·',ftInteger,dvMinMax,'','',ciLookup,
       'SELECT InfoId, InfoName FROM  dbo.ScheduleInfo WHERE (Code = 6) ',
       'SELECT MIN(MashinID), MAX(MashinID) FROM dbo.ScheduleTimeWorks');
      AddItem(DMF.adcBSell,'WorkDate','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
        'SELECT MIN(WorkDate), MAX(WorkDate)  FROM  dbo.ScheduleTimeWorks');
      AddItem(DMf.adcBSell,'WorkNo',' ‘„«—Â ','‘„«—Â',ftInteger,dvMinMax,'','',ciSimple,
         '','SELECT MIN(WorkNo), MAX(WorkNo)  FROM    dbo.ScheduleTimeWorks'); 
      AddItem(DMf.adcBSell,'ProcStuffCoding','„Õ’Ê·« ','„Õ’Ê·',ftInteger,dvMinMax,'','',ciLookup,
       ' SELECT dbo.ScheduleWorksItems.ProcStuffCoding, dbo.StuffCoding.c_StuffName '+
        ' FROM dbo.ScheduleWorksItems INNER JOIN     dbo.StuffCoding ON dbo.ScheduleWorksItems.ProcStuffCoding = dbo.StuffCoding.c_StuffCode '+
        ' GROUP BY dbo.ScheduleWorksItems.ProcStuffCoding, dbo.StuffCoding.c_StuffName ' ,
       'SELECT MIN(ProcStuffCoding), MAX(ProcStuffCoding) FROM dbo.ScheduleWorksItems');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TRptScheduleTimeWorks_StuffF.UpdateFilter;
begin
  with qryStuffCod do begin
    Active:=False;
    Parameters.ParamByName('ProcStuffCodingFrom').Value:=GetcFrom(myParams.ParamValues['ProcStuffCoding'],ftInteger);
    Parameters.ParamByName('ProcStuffCodingTo').Value:=GetcTo(myParams.ParamValues['ProcStuffCoding'],ftInteger);
    Active:=True;
  end;//with
  with qryScheduleTimeWorks_Suff do begin
    Active:=False;
    Parameters.ParamByName('WorkNoFrom').Value:=GetcFrom(myParams.ParamValues['WorkNo'],ftInteger);
    Parameters.ParamByName('WorkNoTo').Value:=GetcTo(myParams.ParamValues['WorkNo'],ftInteger);
    Parameters.ParamByName('WorkDateFrom').Value:=GetcFrom(myParams.ParamValues['WorkDate'],ftDate);
    Parameters.ParamByName('WorkDateTo').Value:=GetcTo(myParams.ParamValues['WorkDate'],ftDate);
    Parameters.ParamByName('MashinIDFrom').Value:=GetcFrom(myParams.ParamValues['MashinID'],ftInteger);
    Parameters.ParamByName('MashinIDTo').Value:=GetcTo(myParams.ParamValues['MashinID'],ftInteger);
    Active:=True;
  end;//with
end;


procedure TRptScheduleTimeWorks_StuffF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFiltter.Execute;
  if myParams.FindParam('WorkNo')=nil then close;
end;

procedure TRptScheduleTimeWorks_StuffF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3);
end;

procedure TRptScheduleTimeWorks_StuffF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptScheduleTimeWorks_StuffF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TRptScheduleTimeWorks_StuffF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleTimeWorks_Suff);
end;

procedure TRptScheduleTimeWorks_StuffF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptScheduleTimeWorks_StuffF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleTimeWorks_Suff);
end;

procedure TRptScheduleTimeWorks_StuffF.SpeedButton3Click(Sender: TObject);
var
  txt:String;
  result:array [0..1] of String;
begin
  inherited;
   Txt:='SELECT dbo.ScheduleWorksItems.ProcStuffCoding, dbo.StuffCoding.c_StuffName '+
        ' FROM  dbo.ScheduleWorksItems INNER JOIN dbo.StuffCoding ON dbo.ScheduleWorksItems.ProcStuffCoding = dbo.StuffCoding.c_StuffCode '+
       ' where  (ScheduleWorksItems.ProcStuffCoding BETWEEN '+IntToStr(GetcFrom(myParams.ParamValues['ProcStuffCoding'],ftInteger))+' AND '+IntToStr(GetcTo(myParams.ParamValues['ProcStuffCoding'],ftInteger))+')'  +
       ' GROUP BY dbo.ScheduleWorksItems.ProcStuffCoding, dbo.StuffCoding.c_StuffName';
//          ' where  (ScheduleWorksItems.ProcStuffCoding BETWEEN '+IntToStr(GetcFrom(myParams.ParamValues['ProcStuffCoding'],ftInteger))+' AND '+IntToStr(GetcTo(myParams.ParamValues['ProcStuffCoding'],ftInteger))+')';
     if searchCode_ADOF.SearchCode2(DMF.adcBSell,'„Õ’Ê·« ', txt,
     ['ﬂœ',' ⁄‰Ê«‰  '],
     Result,[50,100],alLeft) then
     
      qryStuffCod.Locate('ProcStuffCoding',Result[0],[]);
end;

procedure TRptScheduleTimeWorks_StuffF.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key = 32 then SpeedButton3.Click;
end;

procedure TRptScheduleTimeWorks_StuffF.qryStuffCodAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
   with qryScheduleTimeWorks_Suff do begin
    Active:=False;
    Parameters.ParamByName('StuffCod').Value:=IfThen(DataSet.Fieldbyname('ProcStuffCoding').AsInteger<0,0,DataSet.Fieldbyname('ProcStuffCoding').AsInteger);
    Active:=True;
  end;//with
end;

end.
