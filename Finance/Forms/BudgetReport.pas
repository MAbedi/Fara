unit BudgetReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dm, template2MDI, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DB, ADODB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ImgList,
  DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, filter_ADO, Resource, Math,
  GlobalPro, FilterClass_ADO,  sort2, search2,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls,
  ppPrnabl, FaraConsts, ppBands, ppCache, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, CedarDbGrid;

type
  TBudgetReportF = class(Ttemplate2MDIF)
    qryReport: TADOQuery;
    srcReport: TDataSource;
    qryReportTopicCode: TLargeintField;
    qryReportMoeenName_L1: TStringField;
    qryReportMoeenName_L2: TStringField;
    qryReportBudgetPrice: TBCDField;
    qryReportCurrentPrice: TBCDField;
    qryReportPreviousPrice: TBCDField;
    qryReportSumPrice: TBCDField;
    qryReportCurrentPercent: TBCDField;
    qryReportCurrentShare: TFMTBCDField;
    qryReportConstructionPercent: TBCDField;
    qryReportConstructShare: TFMTBCDField;
    actFilter: TAction;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    actPrint_: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actExcel: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabelCompany: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel15: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    DBGrid1: TCedarDbgrid;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSort_Execute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actPrint_Execute(Sender: TObject);
    procedure ppLabelCompanyGetText(Sender: TObject; var Text: string);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure ppLabel2GetText(Sender: TObject; var Text: string);
  private
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BudgetReportF: TBudgetReportF;

implementation

{$R *.dfm}

procedure TBudgetReportF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBudgetReportF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
        ftInteger, dvMinMax, IntToStr(APPBank.Year), IntToStr(APPBank.Year),
        ciSimple, '', 'SELECT Min(YearID),Max(YearID) FROM Util.maliYear');

      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ', 'تاريخ', ftDate, dvMinMax,
        '0000/00/00', '9999/99/99', ciSimple, '',
        Format(strMaxMinDocDate, [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end;
end;

procedure TBudgetReportF.actPrint_Execute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RptBudgetBalance', DBGrid1, ppDBPipeline1);
end;

procedure TBudgetReportF.UpdateFilter;
begin
  with qryReport, Parameters do
  begin
    Close;
    ParamByName('DateFrom').Value := GetcFrom(myParams.ParamValues['DocDate'],
      ftString);
    ParamByName('DateTo').Value := GetcTo(myParams.ParamValues['DocDate'],
      ftString);
    ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
    ParamByName('YearIdFrom').Value := GetcFrom(myParams.ParamValues['Year'],
      ftInteger);
    ParamByName('YearIdTo').Value := GetcTo(myParams.ParamValues['Year'],
      ftInteger);

    ParamByName('UserAdmin').Value := ifthen(User.PowerAdmin, 1, 0);
    ParamByName('UserID').Value := User.ID;

    Open;
  end;
end;

procedure TBudgetReportF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryReport);
end;

procedure TBudgetReportF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryReport);
end;

procedure TBudgetReportF.FormDestroy(Sender: TObject);
begin
  inherited;
  qryReport.Close;
end;

procedure TBudgetReportF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('DocDate') = nil then
      Close;
  Label1.Caption := 'تراز درآمد از تاریخ  ' +
    GetcFrom(myParams.ParamValues['DocDate'], ftString) + '  تا تاریخ  ' +
    GetcTo(myParams.ParamValues['DocDate'], ftString);

end;

procedure TBudgetReportF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := Label1.Caption;
end;

procedure TBudgetReportF.ppLabel2GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := 'از کد حساب ' + GetcFrom(myParams.ParamValues['TopicCode'], ftString)
    + ' تا کد حساب ' + GetcTo(myParams.ParamValues['TopicCode'], ftString);
end;

procedure TBudgetReportF.ppLabelCompanyGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

end.
