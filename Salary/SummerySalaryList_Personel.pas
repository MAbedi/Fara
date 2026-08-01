unit SummerySalaryList_Personel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, Buttons, StdCtrls, Mask,
  ImgList, DBActns, ActnList, ExtCtrls, DB, ADODB, ppModule, Filter_ADO_Const,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TSummerySalaryList_PersonelF = class(Ttemplate2MDIF)
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
    BitBtn2: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    actTreeChart: TAction;
    srcPersonel: TDataSource;
    qryPersonel: TADOQuery;
    qryPersonelPersonelNO: TIntegerField;
    qryPersonelName_L1: TStringField;
    qryPersonelName_L2: TStringField;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppDBText9: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText1: TppDBText;
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
    ppLine10: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
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
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine9: TppLine;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppDBText16: TppDBText;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine29: TppLine;
    ppDBPipeline2: TppDBPipeline;
    qryPersonelMobile: TStringField;
    actSMS: TAction;
    DBGrid1: TCedarDbgrid;
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
    procedure qryPersonelAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
  private
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SummerySalaryList_PersonelF: TSummerySalaryList_PersonelF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, sort2, search2, TreeChart,
  searchCode_ADO, infoSMS;

{$R *.dfm}

procedure TSummerySalaryList_PersonelF.UpdateFilter;
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

    Parameters.ParamByName('FromOfficeCode').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftString);
    Parameters.ParamByName('ToOfficeCode').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftString);
    Parameters.ParamByName('PersonelState').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftString);

    Parameters.ParamByName('ArchiveIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ArchiveID'], ftInteger);
    Parameters.ParamByName('ArchiveIDTo').Value :=
      GetcTo(myParams.ParamValues['ArchiveID'], ftInteger);

  end;
  with qryPersonel do
  begin
    Active := false;
    Parameters.ParamByName('PersonelState').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftString);
    Parameters.ParamByName('FromPersonelNO').Value :=
      GetcFrom(myParams.ParamValues['PersonelNO'], ftString);
    Parameters.ParamByName('ToPersonelNO').Value :=
      GetcTo(myParams.ParamValues['PersonelNO'], ftString);
    Parameters.ParamByName('FromOfficeCode').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftString);
    Parameters.ParamByName('ToOfficeCode').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftString);
    Active := true;
  end;
end;

procedure TSummerySalaryList_PersonelF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNO') = nil then
      Close;
end;

procedure TSummerySalaryList_PersonelF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMF.adcSalary, 'ArchiveID', '»«Ìê«‰Ì', '', ftInteger, dvMinMax,
        '', '', ciLookup,
        ' SELECT DISTINCT -9999 AS ArchiveID, ''»— «”«” ¬Œ—Ì‰ »«Ìê«‰Ì'' AS Name' +
        ' UNION' +
        ' SELECT DISTINCT ArchiveID, ''»«Ìê«‰Ì ‘„«—Â'' + STR(ArchiveID) FROM Pay.FixedCalculated',
        'SELECT -9999, 9999');

      AddItem(DMF.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰·', '', ftInteger,
        dvDefaults, 'True', '', ciCheck,
        'SELECT DISTINCT PersonelInfo.PersonelState, FormsInfo.InfoName_L1 ' +
        'FROM Pay.PersonelInfo INNER JOIN Pay.FormsInfo ON ' +
        'PersonelInfo.PersonelState = FormsInfo.FormInfoID', '');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMF.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 ' +
        ' FROM  Pay.FormsInfo  WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT 0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');

      AddItem(DMF.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
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

procedure TSummerySalaryList_PersonelF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryComprasion);
end;

procedure TSummerySalaryList_PersonelF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSummerySalaryList_PersonelF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryComprasion, 'Mobile');
end;

procedure TSummerySalaryList_PersonelF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryComprasion);
end;

procedure TSummerySalaryList_PersonelF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + IntToStr(qryComprasion.Parameters.ParamByName
    ('FromPersonelNO').Value) + '  « ' +
    IntToStr(qryComprasion.Parameters.ParamByName('ToPersonelNO').Value)
end;

procedure TSummerySalaryList_PersonelF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + IntToStr(qryComprasion.Parameters.ParamByName
    ('FromOfficeCode').Value) + '  « ' +
    IntToStr(qryComprasion.Parameters.ParamByName('ToOfficeCode').Value)
end;

procedure TSummerySalaryList_PersonelF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSummerySalaryList_PersonelF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSummerySalaryList_PersonelF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryComprasion.DisableControls;
    InitReportFile(ppReport1, 'SummerySalaryList_PersonelF');
  finally
    qryComprasion.EnableControls;
  end;
end;

procedure TSummerySalaryList_PersonelF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSummerySalaryList_PersonelF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + IntToStr(APPBank.Year)
end;

procedure TSummerySalaryList_PersonelF.actTreeChartExecute(Sender: TObject);
var
  Limit: String;
begin
  inherited;
  Limit := ' ‘.Å—”‰·Ì «“ ' +
    IntToStr(qryComprasion.Parameters.ParamByName('FromPersonelNO').Value) +
    '  « ' + IntToStr(qryComprasion.Parameters.ParamByName
    ('ToPersonelNO').Value);
  Limit := Limit + ' ‘.Ê«Õœ «“ ' +
    IntToStr(qryComprasion.Parameters.ParamByName('FromOfficeCode').Value) +
    '  « ' + IntToStr(qryComprasion.Parameters.ParamByName
    ('ToOfficeCode').Value);
  TreeChartF.showChart(qryComprasion, Self, Limit);
end;

procedure TSummerySalaryList_PersonelF.qryPersonelAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qryComprasion do
  begin
    Active := false;
    Parameters.ParamByName('PersonelNO').Value :=
      qryPersonel.Fieldbyname('PersonelNO').AsInteger;
    Active := true;
  end;

end;

procedure TSummerySalaryList_PersonelF.SpeedButton1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  Å—”‰·',
    'SELECT PersonelNo , Name_L1+'' ''+lastName_L1 as lastName_L1 FROM Pay.PersonelInfo',
    ['ﬂœ ', '‰«„ Å—”‰·', '‰«„ Å—”‰·'], Results, [20, 100, 100], alLeft);
  if s then
    qryPersonel.Locate('PersonelNO', Results[0], []);
end;

end.
