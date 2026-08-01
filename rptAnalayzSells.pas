unit rptAnalayzSells;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, Filter_ADO_Const, FarsiReportBuilde,
  System.ImageList, System.Actions;

type
  TrptAnalayzSellsF = class(Ttemplate2MDIF)
    qryAnalyzSells: TADOQuery;
    srcAnalyzSells: TDataSource;
    DBGrid1: TDBGrid;
    qryAnalyzSellsEntity_LastMonth: TFloatField;
    qryAnalyzSellsWeight_LastMonth: TFloatField;
    qryAnalyzSellsPrice_LastMonth: TBCDField;
    qryAnalyzSellsAVeEntite_LastMonth: TFloatField;
    qryAnalyzSellsAVeWeight_LastMonth: TFloatField;
    qryAnalyzSellsEntity_LastMonthShare: TFloatField;
    qryAnalyzSellsWeight_LastMonthShare: TFloatField;
    qryAnalyzSellsPrice_LastMonthShare: TBCDField;
    qryAnalyzSellsEntity_Month: TFloatField;
    qryAnalyzSellsWeight_Month: TFloatField;
    qryAnalyzSellsPrice_Month: TBCDField;
    qryAnalyzSellsAVeEntity_Month: TFloatField;
    qryAnalyzSellsAVeWeight_Month: TFloatField;
    qryAnalyzSellsEntity_MonthShare: TFloatField;
    qryAnalyzSellsWeight_MonthShare: TFloatField;
    qryAnalyzSellsPrice_MonthShare: TBCDField;
    qryAnalyzSellsTOutputEntity: TFloatField;
    qryAnalyzSellsTOutputWeight: TFloatField;
    qryAnalyzSellsTTotalOutputPrice: TBCDField;
    qryAnalyzSellsTAveEntity: TFloatField;
    qryAnalyzSellsTAveWeight: TFloatField;
    qryAnalyzSellsTOutputEntityShare: TFloatField;
    qryAnalyzSellsTOutputWeightShare: TFloatField;
    qryAnalyzSellsTTotalOutputPriceShare: TBCDField;
    qryAnalyzSellsDif_Entity: TFloatField;
    qryAnalyzSellsDif_Eeight: TFloatField;
    qryAnalyzSellsDif_Price: TBCDField;
    qryAnalyzSellsDif_AveEntity: TFloatField;
    qryAnalyzSellsDif_AveWeight: TFloatField;
    qryAnalyzSellsDif_EntityShare: TFloatField;
    qryAnalyzSellsDif_PriceShare: TBCDField;
    qryAnalyzSellsDif_WeightShare: TFloatField;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    actFilter: TAction;
    actSendToExcel: TAction;
    actPrint: TAction;
    actSort: TAction;
    qryAnalyzSellsc_StuffName: TStringField;
    qryAnalyzSellsn_UnitCode: TWordField;
    qryAnalyzSellsStuffCode: TLargeintField;
    qryAnalyzSellsGroupID: TIntegerField;
    qryAnalyzSellsTotallSellPrice_LastMonthShare: TBCDField;
    qryAnalyzSellsTotallSellPrice_MonthShare: TBCDField;
    qryAnalyzSellsTTotallSellPriceShare: TBCDField;
    qryAnalyzSellsTotallSellPrice_LastMonth: TBCDField;
    qryAnalyzSellsTotallSellPrice_Month: TBCDField;
    qryAnalyzSellsTTotallSellPrice: TBCDField;
    qryAnalyzSellsDif_TotallSellPrice: TBCDField;
    qryAnalyzSellsDif_TotallSellPriceShare: TBCDField;
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptAnalayzSellsF: TrptAnalayzSellsF;

implementation

uses DM, sort2, search2, GlobalPro, filter_ADO, FilterClass_ADO,
  DBGrid2Print, FormFunctions;

{$R *.dfm}

procedure TrptAnalayzSellsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAnalyzSells);
end;

procedure TrptAnalayzSellsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAnalyzSells);
end;

procedure TrptAnalayzSellsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptAnalayzSellsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'Month', ' „«Â ', '„«Â', ftInteger, dvDefaults,
        IntToStr(var_glb_CurrentMonth), '12', ciSingle, '', '');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMF.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TrptAnalayzSellsF.UpdateFilter;
begin
  ActiveSellPrice2Dbgrid(DBGrid1);
  With qryAnalyzSells do
  begin
    Active := False;
    Parameters.ParamByName('Month').Value :=
      GetcFrom(myParams.ParamValues['Month'], ftInteger);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Active := True;
  end; // with
end;

procedure TrptAnalayzSellsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Month') = nil then
    close;
end;

procedure TrptAnalayzSellsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2);
end;

procedure TrptAnalayzSellsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptAnalayzSellsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

end.
