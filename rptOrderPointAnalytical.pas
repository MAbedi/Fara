unit rptOrderPointAnalytical;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, ComCtrls,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppParameter, SumDBGrid, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, StrUtils, Provider, DBClient, shamsiDate, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TrptOrderPointAnalyticalF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    srcOrderControlPoint: TDataSource;
    BitBtn3: TBitBtn;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSendToExcel: TAction;
    actPrintVijeh: TAction;
    actPost: TAction;
    actFilter: TAction;
    ProgressBar1: TProgressBar;
    ppDBOrderPoint: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    btnPrint: TBitBtn;
    qryinit: TADOQuery;
    dbgrdhLookUps: TDBGridEh;
    qryLookUps: TADOQuery;
    srcLookUps: TDataSource;
    qryOrderControlPoint: TADOQuery;
    qryOrderControlPointStuffCode: TLargeintField;
    qryOrderControlPointc_StuffName: TStringField;
    qryOrderControlPointUnitName: TStringField;
    qryOrderControlPointStuffSize: TStringField;
    qryOrderControlPointStuffDiameter: TFloatField;
    qryOrderControlPointStuffAlloy: TStringField;
    qryOrderControlPointInvWeight: TFloatField;
    qryOrderControlPointOrderWeight: TFloatField;
    qryOrderControlPointminOrder: TFloatField;
    qryOrderControlPointmaxOrder: TFloatField;
    qryOrderControlPointorderPoint: TFloatField;
    qryOrderControlPointorderEntity: TFloatField;
    qryOrderControlPointEffectiveDay: TIntegerField;
    qryOrderControlPointIneffectiveDay: TIntegerField;
    qryOrderControlPointAvgDailySell: TFloatField;
    SumGrid1: TSumGrid;
    qryOrderControlPointPredictWeight: TFloatField;
    qryOrderControlPointFormality: TFloatField;
    qryOrderControlPointOrderPoint1: TFloatField;
    qryOrderControlPointRWeight: TFloatField;
    qryOrderControlPointTWeight: TFloatField;
    qryOrderControlPointSumWeight: TFloatField;
    qryOrderControlPointRemainDay: TFloatField;
    qryOrderControlPointExcessInventory: TFloatField;
    qryOrderControlPointMinimum: TFloatField;
    qryOrderControlPointSystemOrder: TFloatField;
    ClDS: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    ClDSCode: TIntegerField;
    ClDSName: TStringField;
    ClDSAmount1: TStringField;
    ClDS_Amount1: TStringField;
    qryLookUpsCode: TIntegerField;
    qryLookUpsName: TStringField;
    qryLookUpsAmount1: TStringField;
    qryLookUps_Amount1: TStringField;
    ADOQuery1: TADOQuery;
    ppDBLookup: TppDBPipeline;
    ppDBClLookup: TppDBPipeline;
    srcClLookup: TDataSource;
    qryOrderControlPointDayEntity: TIntegerField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure qryLookUpsAfterOpen(DataSet: TDataSet);
  private
    OrginalSQL: string;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptOrderPointAnalyticalF: TrptOrderPointAnalyticalF;

implementation

uses DM, GlobalPro, sort2, search2, mmessage,
  filter_ADO, FilterClass_ADO, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TrptOrderPointAnalyticalF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TrptOrderPointAnalyticalF.FormShow(Sender: TObject);
Var
  ChkIntegrate: Boolean;
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text :=
      'select Count(*) from information_schema.tables where table_type=''base table'' and'
      + ' table_name=''IntegratedRecipts'' and table_catalog =' + '''' +
      APPBank.Name + '''';
    Open;
    ChkIntegrate := Fields[0].AsInteger = 0;
  end;
  if ChkIntegrate then
  begin
    Warn('ابتدا تجمیع سالهای مالی را انجام دهید');
    Close;
  end
  else
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('StuffCode') = nil then
      Close;
  end;
end;

procedure TrptOrderPointAnalyticalF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptOrderPointAnalyticalF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryOrderControlPoint.SQL.Text;
  qryinit.Active := True;
  qryLookUps.Active := True;
  Entity_Weight(DBGrid1)
end;

procedure TrptOrderPointAnalyticalF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOrderControlPoint);
end;

procedure TrptOrderPointAnalyticalF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TrptOrderPointAnalyticalF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOrderControlPoint);
end;

procedure TrptOrderPointAnalyticalF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptOrderPointAnalyticalF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if qryOrderControlPoint.FieldByName('InvWeight').AsFloat +
      qryOrderControlPoint.FieldByName('OrderWeight').AsFloat <=
      qryOrderControlPoint.FieldByName('minOrder').AsFloat then
      DBGrid1.Canvas.Font.Color := clRed;
  end; // if
  // DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TrptOrderPointAnalyticalF.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  SortTitle(Column);
end;

procedure TrptOrderPointAnalyticalF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptOrderPointAnalyticalF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptOrderPointAnalyticalF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptOrderPointAnalyticalF.qryLookUpsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ClDS.Open;
end;

procedure TrptOrderPointAnalyticalF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TrptOrderPointAnalyticalF.actFilterExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self, myParams) do
    try

      AddItem(DMf.adcBSell, 'ReciptDate', 'تاريخ ', 'تا تاریخ', ftDate,
        dvDefaults, var_glb_CurrentDate, '', ciSingle, '', '');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'كالا', 'كد', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode,c_StuffName from StuffCoding ',
      // 'select min(c_StuffCode),max(c_StuffCode) from StuffCoding');

      if showmodal = mrok then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally;
      free;
    end; // try

end;

procedure TrptOrderPointAnalyticalF.UpdateFilter;
var
  BaseDate: string;
  MinAvgSell: Real;

begin

  qryLookUps.Locate('Code', 4, []);
  BaseDate := RightStr(Trim(qryLookUpsAmount1.AsString), 10);  //8
  with ClDS do
  begin
    Locate('Code', 4, []);
    if Length(Trim(ClDSAmount1.AsString)) = 10 then
      BaseDate := RightStr(Trim(ClDSAmount1.AsString), 10)   //8
    else
      BaseDate := Trim(ClDSAmount1.AsString);

    if not validate_date(False, '', '', 'تاریخ پایه', BaseDate) then
      Abort;
    Locate('Code', 1, []);
    MinAvgSell := ClDSAmount1.AsFloat;
  end;

  with qryOrderControlPoint, Parameters do
  begin
    Active := False;
    SQL.Text := OrginalSQL;

    // SQL.Add('AND (SUM(derivedtbl_1.InvWeight) + SUM(derivedtbl_1.OrderWeight) '
    // + '<= SUM(derivedtbl_1.orderPoint))');

    ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    ParamByName('StuffCodeTo').Value :=
      Getcto(myParams.ParamValues['StuffCode'], ftLargeint);
    // ParamByName('StuffCode1From').Value :=
    // GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    // ParamByName('StuffCode1To').Value :=
    // Getcto(myParams.ParamValues['StuffCode'], ftLargeint);
    // ParamByName('StuffCode2From').Value :=
    // GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    // ParamByName('StuffCode2To').Value :=
    // Getcto(myParams.ParamValues['StuffCode'], ftLargeint);
    ParamByName('StuffCode3From').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    ParamByName('StuffCode3To').Value :=
      Getcto(myParams.ParamValues['StuffCode'], ftLargeint);
    ParamByName('DateFrom').Value := BaseDate;
    // GetcFrom(myParams.ParamValues['BaseDate'], ftDate);
    ParamByName('DateTo').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    ParamByName('Date1To').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    ParamByName('MinAvgDailySell').Value := MinAvgSell;
    Active := True;
  end; // with
end;

procedure TrptOrderPointAnalyticalF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryOrderControlPoint.DisableControls;
    InitReportFile(ppReport1, 'rptOrderControlPoint');
  finally
    qryOrderControlPoint.EnableControls;
  end; // try
end;

end.
