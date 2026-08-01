unit SummerySalaryList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, Buttons, StdCtrls,
  ImgList, DBActns, ActnList, ExtCtrls, DB, ADODB, ppModule, Filter_ADO_Const,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppReport, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TSummerySalaryListF = class(Ttemplate2MDIF)
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    qryComprasion: TADOQuery;
    srcComprasion: TDataSource;
    qryComprasionShowColumn: TIntegerField;
    qryComprasionInfoName_L1: TStringField;
    qryComprasionInfoName_L2: TStringField;
    qryComprasionMonth1: TBCDField;
    qryComprasionMonth2: TBCDField;
    qryComprasionMonth3: TBCDField;
    qryComprasionMonth4: TBCDField;
    qryComprasionMonth5: TBCDField;
    qryComprasionMonth6: TBCDField;
    qryComprasionMonth7: TBCDField;
    qryComprasionMonth8: TBCDField;
    qryComprasionMonth9: TBCDField;
    qryComprasionMonth10: TBCDField;
    qryComprasionMonth11: TBCDField;
    qryComprasionMonth12: TBCDField;
    qryComprasionSumPrice: TBCDField;
    DBNavigator2: TDBNavigator;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel8: TppLabel;
    ppLine11: TppLine;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLine13: TppLine;
    ppLabel12: TppLabel;
    ppLine14: TppLine;
    ppLabel13: TppLabel;
    ppLine18: TppLine;
    ppLabel14: TppLabel;
    ppLine19: TppLine;
    ppLabel15: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel5: TppLabel;
    ppLabel10: TppLabel;
    ppLine29: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine9: TppLine;
    ppLine12: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppDBText16: TppDBText;
    ppLine28: TppLine;
    ppDBText14: TppDBText;
    ppLine30: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLine33: TppLine;
    ppLine24: TppLine;
    ppLine15: TppLine;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    actTreeChart: TAction;
    DBGrid1: TCedarDbgrid;
    qryComprasionTaxGroupName: TStringField;
    qryComprasionWageKind: TIntegerField;
    qryComprasionWageKindName: TStringField;
    actWageKind: TAction;
    qryComprasionSalaryID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure actTreeChartExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actWageKindExecute(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    SQLComprasion: string;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SummerySalaryListF: TSummerySalaryListF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, sort2, search2, TreeChart,
  searchCode_ADO;

{$R *.dfm}

procedure TSummerySalaryListF.UpdateFilter;
begin
  with qryComprasion do
  begin
    Active := false;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('YearsFrom').Value := optp.Year;
    Parameters.ParamByName('YearsTo').Value := optp.Year;

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('EmployTypeIDs').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftString);

    Parameters.ParamByName('FromPersonelNO').Value :=
      GetcFrom(myParams.ParamValues['PersonelNO'], ftString);
    Parameters.ParamByName('ToPersonelNO').Value :=
      GetcTo(myParams.ParamValues['PersonelNO'], ftString);

    // Parameters.ParamByName('FromOfficeCode').Value :=
    // GetcFrom(myParams.ParamValues['OfficeCode'], ftString);
    // Parameters.ParamByName('ToOfficeCode').Value :=
    // GetcTo(myParams.ParamValues['OfficeCode'], ftString);

    Parameters.ParamByName('OfficeCodes').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftString);

    Parameters.ParamByName('PersonelState').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftString);

    Parameters.ParamByName('ArchiveIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ArchiveID'], ftInteger);
    Parameters.ParamByName('ArchiveIDTo').Value :=
      GetcTo(myParams.ParamValues['ArchiveID'], ftInteger);

    Active := true;
  end;
end;

procedure TSummerySalaryListF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNO') = nil then
      Close;
end;

procedure TSummerySalaryListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMF.adcSalary, 'ArchiveID', 'بايگاني', '', ftInteger, dvMinMax,
        '', '', ciLookup,
        ' SELECT DISTINCT -9999 AS ArchiveID, ''بر اساس آخرين بايگاني'' AS Name'
        + ' UNION' +
        ' SELECT DISTINCT ArchiveID, ''بايگاني شماره'' + STR(ArchiveID) FROM Pay.FixedCalculated',
        'SELECT -9999, 9999');

      AddItem(DMF.adcSalary, 'PersonelState', 'وضعيت پرسنل', '', ftInteger,
        dvDefaults, 'True', '', ciCheck,
        'SELECT DISTINCT PersonelInfo.PersonelState, FormsInfo.InfoName_L1 ' +
        'FROM Pay.PersonelInfo INNER JOIN Pay.FormsInfo ON ' +
        'PersonelInfo.PersonelState = FormsInfo.FormInfoID', '');


      AddItemFilter(GetFilter, TPersonelNo);


      // AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 ' +
      // ' FROM  Pay.FormsInfo  WHERE (Pay.FormsInfo.FormType = 12) ',
      // 'SELECT 0, MAX(Pay.FormsInfo.InfoID) ' +
      // ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');

      AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 12)', '');

      AddItem(DMF.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        '');

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

procedure TSummerySalaryListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryComprasion);
end;

procedure TSummerySalaryListF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSummerySalaryListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryComprasion);
end;

procedure TSummerySalaryListF.FormCreate(Sender: TObject);
begin
  inherited;
  SQLComprasion := qryComprasion.SQL.Text
end;

procedure TSummerySalaryListF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + IntToStr(qryComprasion.Parameters.ParamByName
    ('FromPersonelNO').Value) + ' تا ' +
    IntToStr(qryComprasion.Parameters.ParamByName('ToPersonelNO').Value)
end;

procedure TSummerySalaryListF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + GetcFrom(myParams.ParamValues['OfficeCode'], ftString);

  // IntToStr(qryComprasion.Parameters.ParamByName
  // ('FromOfficeCode').Value) + ' تا ' +
  // IntToStr(qryComprasion.Parameters.ParamByName('ToOfficeCode').Value)
end;

procedure TSummerySalaryListF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSummerySalaryListF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSummerySalaryListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryComprasion.DisableControls;
    InitReportFile(ppReport1, 'SummerySalaryListF');
  finally
    qryComprasion.EnableControls;
  end;
end;

procedure TSummerySalaryListF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSummerySalaryListF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + IntToStr(APPBank.Year)
end;

procedure TSummerySalaryListF.actTreeChartExecute(Sender: TObject);
var
  Limit: String;
begin
  inherited;
  Limit := ' ش.پرسنلي از ' +
    IntToStr(qryComprasion.Parameters.ParamByName('FromPersonelNO').Value) +
    ' تا ' + IntToStr(qryComprasion.Parameters.ParamByName
    ('ToPersonelNO').Value);
  Limit := Limit + ' ش.واحد از ' + GetcFrom(myParams.ParamValues['OfficeCode'],
    ftString);

  // IntToStr(qryComprasion.Parameters.ParamByName('FromOfficeCode').Value) +
  // ' تا ' + IntToStr(qryComprasion.Parameters.ParamByName
  // ('ToOfficeCode').Value);
  TreeChartF.showChart(qryComprasion, Self, Limit);
end;

procedure TSummerySalaryListF.actWageKindExecute(Sender: TObject);
var
  i: Integer;
  sqlText, cmdText, SalaryID: String;
  Results: array [0 .. 2] of String;
begin
  inherited;
  SalaryID := qryComprasionSalaryID.AsString;
  sqlText :=
    'SELECT WageKind, WageKindName +'' ''+ TaxGroupName WageKindName FROM Pay.WageKinds';

  if searchCode_ADOF.SearchCode2(DMF.adcSalary, 'عنوان حقوق و مزایا', sqlText,
    ['كد', 'عنوان'], Results, [80, 250], alLeft) then
  begin

    if get_response('آيا براي تغيير ردیف فایل مالیات مطمئن هستيد؟') <> mrYes
    then
      Abort;
    cmdText := 'UPDATE  Pay.FormsInfo set WageKind = ' + Results[0] +
      ' WHERE FormInfoID = ' + SalaryID;
    DMF.adcBSell.Execute(cmdText, i);
    if i > 0 then
    begin
      qryComprasion.Requery([]);
      qryComprasion.Locate('SalaryID', SalaryID, []);
      Warn('انجام شد', mtInformation);
    end;
  end;
end;

procedure TSummerySalaryListF.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;
 actWageKind.Execute
end;

end.
