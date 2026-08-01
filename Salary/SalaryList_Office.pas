unit SalaryList_Office;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, Buttons, StdCtrls, Mask,
  ImgList, DBActns, ActnList, ExtCtrls, DB, ADODB, ppModule,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TSalaryList_OfficeF = class(Ttemplate2MDIF)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    qryComprasion: TADOQuery;
    srcComprasion: TDataSource;
    qryOfficeCode: TADOQuery;
    srcOfficeCode: TDataSource;
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
    qryOfficeCodeOfficeCode: TIntegerField;
    qryOfficeCodeInfoName_L1: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
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
    actChart: TAction;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    actShow: TAction;
    BitBtn3: TBitBtn;
    DBGrid1: TCedarDbgrid;
    procedure FormShow(Sender: TObject);
    procedure qryOfficeCodeAfterScroll(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actChartExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    SQLComprasion: String;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList_OfficeF: TSalaryList_OfficeF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, sort2, search2,
  searchCode_ADO, TreeChart, SalaryList4Office2, Filter_ADO_Const;

{$R *.dfm}

procedure TSalaryList_OfficeF.UpdateFilter;
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
      GetcFrom(myParams.ParamValues['PersonelNO'], ftInteger);
    Parameters.ParamByName('ToPersonelNO').Value :=
      GetcTo(myParams.ParamValues['PersonelNO'], ftInteger);
    Parameters.ParamByName('PersonelState').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftString);

    Parameters.ParamByName('ArchiveIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ArchiveID'], ftInteger);
    Parameters.ParamByName('ArchiveIDTo').Value :=
      GetcTo(myParams.ParamValues['ArchiveID'], ftInteger);

  end;
  with qryOfficeCode do
  begin
    Active := false;
    Parameters.ParamByName('FromOfficeCode').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('ToOfficeCode').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    Active := true;
  end;
end;

procedure TSalaryList_OfficeF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('OfficeCode') = nil then
      Close;
end;

procedure TSalaryList_OfficeF.qryOfficeCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryComprasion do
  begin
    Active := false;
    Parameters.ParamByName('OfficeCode').Value :=
      qryOfficeCode.Fieldbyname('OfficeCode').AsInteger;
    Active := true;
  end;
end;

procedure TSalaryList_OfficeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryComprasion);
end;

procedure TSalaryList_OfficeF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList_OfficeF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList_OfficeF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + IntToStr(APPBank.Year);

end;

procedure TSalaryList_OfficeF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSalaryList_OfficeF.SpeedButton1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, 'Ê«Õœ ”«“„«‰Ì',
    'SELECT  InfoID AS OfficeCode, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 12)',
    ['ﬂœ ', '‰«„ Ê«Õœ ”«“„«‰Ì'], Results, [20, 100], alLeft);
  if s then
  begin
    qryOfficeCode.Locate('OfficeCode', Results[0], []);
  end; // if
end;

procedure TSalaryList_OfficeF.actChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryComprasion, Self);
end;

procedure TSalaryList_OfficeF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMF.adcSalary, 'ArchiveID', '»«Ìê«‰Ì', '', ftInteger, dvMinMax,
        '', '', ciLookup,
        ' SELECT DISTINCT -9999 AS ArchiveID, ''»— «”«” ¬Œ—Ì‰ »«Ìê«‰Ì'' AS Name'
        + ' UNION' +
        ' SELECT DISTINCT ArchiveID, ''»«Ìê«‰Ì ‘„«—Â'' + STR(ArchiveID) FROM Pay.FixedCalculated',
        'SELECT -9999, 9999');

      AddItem(DMF.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰·', '', ftInteger,
        dvDefaults, 'True', '', ciCheck,
        'SELECT DISTINCT PersonelInfo.PersonelState, FormsInfo.InfoName_L1 ' +
        'FROM Pay.PersonelInfo INNER JOIN Pay.FormsInfo ON ' +
        'PersonelInfo.PersonelState = FormsInfo.FormInfoID', '');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItemFilter(GetFilter, TFilterOfficeCode);
      // AddItem(DMF.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FormsInfo WHERE (FormsInfo.FormType = 12) ',
      // 'SELECT  MIN(FormsInfo.InfoID), MAX(FormsInfo.InfoID) FROM Pay.FormsInfo where  (FormsInfo.FormType = 12) ');

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

procedure TSalaryList_OfficeF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryComprasion.DisableControls;
    InitReportFile(ppReport1, 'SalaryList_OfficeF');
  finally
    qryComprasion.EnableControls;
  end;
end;

procedure TSalaryList_OfficeF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList_OfficeF.Action1Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryComprasion);
end;

procedure TSalaryList_OfficeF.actShowExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm3(false, TSalaryList4Office2F, SalaryList4Office2F, Self)
end;

procedure TSalaryList_OfficeF.FormCreate(Sender: TObject);
begin
  inherited;
  SQLComprasion := qryComprasion.SQL.Text
end;

end.
