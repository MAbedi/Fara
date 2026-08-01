unit RptPortionShare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, Mask, DBCtrls, ComCtrls, ToolWin,
  SumDBGrid, System.ImageList, System.Actions;

type
  TRptPortionShareF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    qryMasterPortion: TADOQuery;
    srcMasterPortion: TDataSource;
    qryDetailPortion: TADOQuery;
    BitBtn16: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    srcDetailPortion: TDataSource;
    qryDetailPortionFormInfoID: TIntegerField;
    qryDetailPortionCTopicCode: TIntegerField;
    qryDetailPortionCofficientItem: TFloatField;
    qryFindTopicCode: TADOQuery;
    qryDetailPortion_DetailCode: TStringField;
    qryDetailPortion_TopicCode: TIntegerField;
    qryDetailPortionCTopicName_L1: TStringField;
    qryDetailPortionCTopicName2_L1: TStringField;
    qryDetailPortionCenterTopics2: TIntegerField;
    qryDetailPortionExpName_L1: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qryMasterPortionTopicCode: TLargeintField;
    qryMasterPortionDetailCode: TIntegerField;
    qryMasterPortionCTopicCode: TIntegerField;
    qryMasterPortionCTopicCode2: TIntegerField;
    qryMasterPortionFormInfoID: TIntegerField;
    qryMasterPortionInfoID: TWordField;
    qryMasterPortionInfoName_L1: TStringField;
    qryMasterPortionBalance: TBCDField;
    qryDetailPortion_TopicName: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    qryMasterPortionMoeenName_L1: TStringField;
    qryMasterPortionCTopicName_L1: TStringField;
    qryMasterPortionCTopicName2_L1: TStringField;
    qryMasterPortionDetailName_L1: TStringField;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    BitBtn3: TBitBtn;
    qryInsertPortion: TADOQuery;
    qryDetailPortionamount: TFloatField;
    actPrint: TAction;
    ToolBar1: TToolBar;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    SumGrid1: TSumGrid;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    SumGrid2: TSumGrid;
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryMasterPortionAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
  private
    Counter:integer;
    procedure updateQry;
    procedure createToolButton;
    procedure BtnMonthClick(Sender: TObject);
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptPortionShareF: TRptPortionShareF;

implementation

uses Dm, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO , Resource;

{$R *.dfm}

procedure TRptPortionShareF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);  
end;

procedure TRptPortionShareF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,5,true);
  SetColSize(DBGrid2,4,true);  
end;

procedure TRptPortionShareF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMasterPortion);
end;

procedure TRptPortionShareF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptPortionShareF.UpdateList;
begin
  with  qryInsertPortion do
  begin
    Close;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Open;
  end;

  with qryMasterPortion Do
  begin
    Close;
    Parameters.ParamByName('TopicCodeFrom').Value:=GetcFrom(myParams.ParamValues['TopicCode'],ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value:=GetcTo(myParams.ParamValues['TopicCode'],ftInteger);
    Parameters.ParamByName('DocDateFrom').Value:=GetcFrom(myParams.ParamValues['DocDate'],ftDate);
    Parameters.ParamByName('DocDateTo').Value:=GetcTo(myParams.ParamValues['DocDate'],ftDate);

    Parameters.ParamByName('CTopicCodeFrom').Value:=GetcFrom(myParams.ParamValues['CTopicCode'],ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value:=GetcTo(myParams.ParamValues['CTopicCode'],ftInteger);
    Parameters.ParamByName('CTopicCode2From').Value:=GetcFrom(myParams.ParamValues['CTopicCode2'],ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value:=GetcTo(myParams.ParamValues['CTopicCode2'],ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value:=GetcFrom(myParams.ParamValues['DetailCode'],ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value:=GetcTo(myParams.ParamValues['DetailCode'],ftInteger);
    Parameters.ParamByName('SecFrom').Value:=GetcFrom(myParams.ParamValues['Sec'],ftInteger);
    Parameters.ParamByName('SecTo').Value:=GetcTo(myParams.ParamValues['Sec'],ftInteger);
    Parameters.ParamByName('PriFrom').Value:=GetcFrom(myParams.ParamValues['Pri'],ftInteger);
    Parameters.ParamByName('PriTo').Value:=GetcTo(myParams.ParamValues['Pri'],ftInteger);
    Parameters.ParamByName('CodeFrom').Value:=GetcFrom(myParams.ParamValues['Code'],ftInteger);
    Parameters.ParamByName('CodeTo').Value:=GetcTo(myParams.ParamValues['Code'],ftInteger);
    Parameters.ParamByName('YearID').Value:=APPBank.Year;
    Open;
  end;

  SetColSize(DBGrid1,5,true);
end;

procedure TRptPortionShareF.actFilterExecute(Sender: TObject);
begin
  inherited;
    with TfilterF.Create2(Self,myParams) do
    try
//      AddItem(DMF.adcAccounting,'InfoID','ﬂœ Ê ‰«„ ‰ÕÊÂ  ”ÂÌ„','ﬂœ ‰ÕÊÂ  ”ÂÌ„',ftInteger,dvMinMax,'','',ciLookup,
//                                'SELECT  InfoID, InfoName_L1 FROM   acc.FormsInfo WHERE (FormType = 10)',
//                                'SELECT MIN(InfoID),MAX(InfoID) FROM   acc.FormsInfo WHERE (FormType = 10)');
      AddItem(DMF.adcAccounting,'DocDate',' «—ÌŒ ”‰œÕ”«»œ«—Ì',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple,'', Format(strMaxMinDocDate,[APPBank.Year]));
      AddItem(DMF.adcAccounting,'Sec','„Êﬁ ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT SecondaryDocNo, cast(DocTopic_L1 as varchar) as Caption FROM acc.DocGroups', Format(strMaxMinSecondaryDocNo,[APPBank.Year]));
      AddItem(DMF.adcAccounting,'Pri','«’·Ì','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT PrimaryDocNo, cast(DocTopic_L1 as varchar)as Caption   FROM acc.DocGroups',Format(strMaxMinPrimaryDocNo,[APPBank.Year]));
      AddItem(DMF.adcAccounting,'Code','‰ÕÊÂ  ”ÂÌ„','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'select infoid as code , infoname_L1 from acc.formsinfo where Formtype = 10  ','select min(infoid) , max(infoid) from acc.formsinfo where Formtype = 10 ');

      AddItem(DMF.adcAccounting,'CTopicCode2','ﬂœ Ê ‰«„  ›’Ì·Ì 3','ﬂœ„—ﬂ“Â“Ì‰Â2',ftInteger,dvMinMax,'','',ciLookup,
                                'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CenterTopics2',
                                'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CenterTopics2');
      AddItem(DMF.adcAccounting,'CTopicCode','ﬂœ Ê ‰«„  ›’Ì·Ì 1',' ›’Ì·Ì 1',ftInteger,dvMinMax,'','',ciLookup,
                                'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CenterTopics ',
                                'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CenterTopics');
      AddItem(DMF.adcAccounting,'DetailCode','ﬂœ Ê ‰«„  ›’Ì·Ì','ﬂœ  ›’Ì·Ì',ftInteger,dvMinMax,'','',ciLookup,
                                'SELECT DetailCode, DetailName_L1  FROM   acc.Details ',
                                'SELECT MIN((DetailCode) ),MAX((DetailCode) ) FROM acc.Details');
      AddItem(DMF.adcAccounting,'TopicCode','ﬂœ Ê ‰«„ Õ”«» ','ﬂœ Õ”«»',ftInteger,dvMinMax,'','',ciLookup,'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '+
                                ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '+
                                ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
                                'Select TopicCodeFrom ,TopicCodeTO From acc.Config');

      if ShowModal=mrOk then
      begin
        GetFilterString;
        UpdateList;
      end;//if
    finally
      Free;
    end;//try

end;

procedure TRptPortionShareF.qryMasterPortionAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFindTopicCode do
  begin
    Close;
    Parameters.ParamByName('TopicCode').Value:=qryMasterPortion.Fieldbyname('TopicCode').AsLargeInt;
    Open;
  end;
  with qryDetailPortion do
  begin
    Close;
    Parameters.ParamByName('FormInfoID').Value:=qryMasterPortion.Fieldbyname('FormInfoID').asInteger;
    Parameters.ParamByName('yearID').Value:=APPBank.Year;
    Parameters.ParamByName('subPortionCunt').Value:=counter;
    Parameters.ParamByName('PortionCunt').Value:=counter;
    Parameters.ParamByName('remain').Value:=qryMasterPortion.Fieldbyname('Balance').asInteger;
    Open;
  end;
 // StatusBar1.Panels[1].Text:=CurrToStrF(CalcSumFileds('CofficientItem',qryDetailPortion),ffNumber,0);
//  StatusBar1.Panels[0].Text:=CurrToStrF(CalcSumFileds('amount',qryDetailPortion),ffCurrency,0)  ;
end;

//function TRptPortionShareF.CalcSumFileds(FiledName: String;qry:TADOQuery): Currency;
//begin
//  Result:=0;
//  try
//    with cloned do begin
//      Clone(qry,ltReadOnly);
//      First;
//      while not eof do begin
//        Result:=Result +fieldbyname(FiledName).AsCurrency;
//        Next;
//      end;//while
//    end;//with
//  except
//  end;//try
//end;

procedure TRptPortionShareF.FormCreate(Sender: TObject);
begin
  inherited;
//SET default
  Counter:=var_glb_CurrentMonth;
  createToolButton;
  //Params.Clear;
  actFilter.Execute;
  if myParams.FindParam('TopicCode')=nil then close;

end;

procedure TRptPortionShareF.createToolButton;
var
  i:integer;
const
  NameButton='ToolButton';
begin
   i:=1;
   with Dmf.qry_Temp do
   begin
     Close;
     SQL.Text:='SELECT InfoID,InfoName_L1 FROM acc.FormsInfo WHERE (FormType = 14)';
     Open;
     while not Eof do
     with TToolButton.Create(ToolBar1) do
     begin
       Parent:=ToolBar1;
       Caption:=Fieldbyname('InfoName_L1').AsString;
       Tag:=Fieldbyname('InfoID').AsInteger;
       Name:= NameButton+IntToStr(i);
       OnClick := BtnMonthClick;
       Inc(I);
       if Tag = counter then Down := true;
       Grouped:=true;
       Style:=tbsCheck;
       Next;
     end;//with
   end;//with

end;

procedure TRptPortionShareF.updateQry;
begin
  with qryDetailPortion do
  begin
    Close;
    Parameters.ParamByName('subPortionCunt').Value:=counter;
    Parameters.ParamByName('PortionCunt').Value:=counter;
    Parameters.ParamByName('YearID').Value:=APPBank.Year;
    Open;
  end;
end;

procedure TRptPortionShareF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMasterPortion);

end;

procedure TRptPortionShareF.BtnMonthClick(Sender: TObject);
begin
  inherited;
  counter:=(Sender as TToolButton).Tag;
  (Sender as TToolButton).Down := True;
  updateQry;
end;

end.
