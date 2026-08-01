{ -----------------------------------------------------------------------------
  Unit Name: DecExtOnMounth
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit DecExtOnMounthSeparation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, ppStrtch,
  ppRegion, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions,Filter_ADO_Const, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TDecExtOnMounthSeparationF = class(Ttemplate2MDIF)
    qryDecExtOnMounth: TADOQuery;
    srcDecExtOnMounth: TDataSource;
    Button1: TButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actFilter: TAction;
    actPrintVijeh: TAction;
    qryDecExtOnMounthPersonelNo: TIntegerField;
    qryDecExtOnMounthname_L1: TStringField;
    qryDecExtOnMounthname_L2: TStringField;
    qryDecExtOnMounthlastName_L1: TStringField;
    qryDecExtOnMounthlastName_L2: TStringField;
    qryDecExtOnMounthInfoName_L1: TStringField;
    qryDecExtOnMounthInfoName_L2: TStringField;
    qryDecExtOnMounthDay: TFloatField;
    qryDecExtOnMounthTime: TFloatField;
    qryDecExtOnMounthMinute_: TFloatField;
    qryDecExtOnMounthAllTime: TFloatField;
    qryDecExtOnMounthAllDay: TFloatField;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actChart: TAction;
    qryDecExtOnMounthRemainDay: TFloatField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblPrintDate: TppLabel;
    ppSysPageNo: TppSystemVariable;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    qryDecExtOnMounthTalab: TFloatField;
    qryDecExtOnMounthBedehi: TFloatField;
    ppLblMounth: TppLabel;
    qryDecExtOnMounthSumFunctionDay: TFloatField;
    qryDecExtOnMounthMobile: TStringField;
    actSMS: TAction;
    qryDecExtOnMounthTalabPrice: TBCDField;
    qryDecExtOnMounthBedehiPrice: TBCDField;
    qryDecExtOnMounthOfficeCode: TIntegerField;
    qryDecExtOnMounthOfficeName: TStringField;
    qryDecExtOnMounthAllDay00: TFloatField;
    qryDecExtOnMounthAllDay01: TFloatField;
    qryDecExtOnMounthAllDay02: TFloatField;
    qryDecExtOnMounthAllDay03: TFloatField;
    qryDecExtOnMounthAllDay04: TFloatField;
    qryDecExtOnMounthAllDay05: TFloatField;
    qryDecExtOnMounthAllDay06: TFloatField;
    qryDecExtOnMounthAllDay07: TFloatField;
    qryDecExtOnMounthAllDay08: TFloatField;
    qryDecExtOnMounthAllDay09: TFloatField;
    qryDecExtOnMounthAllDay10: TFloatField;
    qryDecExtOnMounthAllDay11: TFloatField;
    qryDecExtOnMounthAllDay12: TFloatField;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actChartExecute(Sender: TObject);
    procedure ppLblMounthGetText(Sender: TObject; var Text: String);
    procedure actSMSExecute(Sender: TObject);
  private
    procedure Updatefilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DecExtOnMounthSeparationF: TDecExtOnMounthSeparationF;

implementation

uses
  DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO,
  DBGrid2Print, TreeChart, infoSMS, SalaryFunctions, main;

{$R *.dfm}

procedure TDecExtOnMounthSeparationF.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  b := mainf.Menu = mainf.MainMenu3PayRoll;
  setColumns2(DBGrid1, b, 'TalabPrice');
  setColumns2(DBGrid1, b, 'BedehiPrice');
  if b then
    Caption := '·Ì”  „—Œ’Ì ﬂ«—ﬂ‰«‰';

end;

procedure TDecExtOnMounthSeparationF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TDecExtOnMounthSeparationF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TDecExtOnMounthSeparationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDecExtOnMounth);
end;

procedure TDecExtOnMounthSeparationF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDecExtOnMounthSeparationF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryDecExtOnMounth, 'Mobile');
end;

procedure TDecExtOnMounthSeparationF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryDecExtOnMounth.DisableControls;
    InitReportFile(ppReport1, 'DecExtOnMounthSeparation');
  finally
    qryDecExtOnMounth.EnableControls;
  end;
end;

procedure TDecExtOnMounthSeparationF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDecExtOnMounth);
end;

procedure TDecExtOnMounthSeparationF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');

      AddItem(DMf.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12) ',
        'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 12) ');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'InfoID', '⁄‰Ê«‰ „—Œ’Ì', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo WHERE(FormType=16)',
        'SELECT MIN(InfoID) , MAX(InfoID)  FROM Pay.FormsInfo WHERE(FormType=16)');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        Updatefilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TDecExtOnMounthSeparationF.Updatefilter;
begin
  with qryDecExtOnMounth do
  begin
    Active := false;

    Parameters.ParamByName('MounthFrom').Value := RadioGroup1.ItemIndex;
    Parameters.ParamByName('MounthTo').Value := 12;
    Parameters.ParamByName('Mounth2From').Value := RadioGroup1.ItemIndex;
    Parameters.ParamByName('Mounth2To').Value := 12;

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('YearID1From').Value := APPBank.Year;
    Parameters.ParamByName('YearID1To').Value := APPBank.Year;
    Parameters.ParamByName('YearID2From').Value := APPBank.Year;
    Parameters.ParamByName('YearID2To').Value := APPBank.Year;


    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('PersonelNo1From').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNo1To').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('InfoIDFrom').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('InfoIDTo').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Active := True;
  end;
end;

procedure TDecExtOnMounthSeparationF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1,0);
end;

procedure TDecExtOnMounthSeparationF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDecExtOnMounthSeparationF.ppSysPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TDecExtOnMounthSeparationF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TDecExtOnMounthSeparationF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  Updatefilter;
end;

procedure TDecExtOnMounthSeparationF.actChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryDecExtOnMounth, Self);
end;

procedure TDecExtOnMounthSeparationF.ppLblMounthGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  //
end;

End.
