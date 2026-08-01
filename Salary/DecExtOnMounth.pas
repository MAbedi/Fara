{ -----------------------------------------------------------------------------
  Unit Name: DecExtOnMounth
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit DecExtOnMounth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons,ppModule, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, ppStrtch,
  ppRegion, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Vcl.Mask,Filter_ADO_Const, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TDecExtOnMounthF = class(Ttemplate2MDIF)
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
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
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
    ADOQuery1: TADOQuery;
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
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    DBGrid1: TCedarDbgrid;
    qryDecExtOnMounthAllDay00: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actChartExecute(Sender: TObject);
    procedure ppLblMounthGetText(Sender: TObject; var Text: String);
    procedure actSMSExecute(Sender: TObject);
    procedure qryFormInfoAfterScroll(DataSet: TDataSet);
  private
    MonthNo: Byte;
    FormType: Byte;
    procedure Updatefilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DecExtOnMounthF: TDecExtOnMounthF;

implementation

uses
  DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO,
  DBGrid2Print, TreeChart, infoSMS, SalaryFunctions, main;

{$R *.dfm}

procedure TDecExtOnMounthF.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  FormType := var_glb_gParam;
  ToolBar1.Visible := FormType = 1;
  RadioGroup1.Visible := FormType = 2;
  if FormType = 2 then
  begin
    Caption := '·Ì”  „—Œ’Ì ( ”«·Ì«‰Â  )˛';
  end;

  if MonthNo < 1 then
    MonthNo := 1;

  b := mainf.Menu = mainf.MainMenu3PayRoll;
  setColumns2(DBGrid1, b, 'TalabPrice');
  setColumns2(DBGrid1, b, 'BedehiPrice');
  if b then
    Caption := '·Ì”  „—Œ’Ì ﬂ«—ﬂ‰«‰';

end;

procedure TDecExtOnMounthF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TDecExtOnMounthF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TDecExtOnMounthF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDecExtOnMounth);
end;

procedure TDecExtOnMounthF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDecExtOnMounthF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryDecExtOnMounth, 'Mobile');
end;

procedure TDecExtOnMounthF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryDecExtOnMounth.DisableControls;
    InitReportFile(ppReport1, 'DecExtOnMounth');
  finally
    qryDecExtOnMounth.EnableControls;
  end;
end;

procedure TDecExtOnMounthF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDecExtOnMounth);
end;

procedure TDecExtOnMounthF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItem(DMf.adcSalary, 'ProjectID', 'Å—ÊéÂ/ „.Â“Ì‰Â', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 40) ',
        'SELECT MIN(FormInfoID),MAX(FormInfoID) FROM Pay.FormsInfo WHERE (FormType = 40) ');

      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');

      AddItem(DMf.adcSalary, 'BimehType', '‰Ê⁄ »Ì„Â', 'ﬂœ', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT     InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        // 'SELECT     Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
        '');

      // AddItem(Dmf.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12) ',
      // 'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 12) ');
      AddItem(DMf.adcSalary, 'OfficeCodes', ' Ê«Õœ ”«“„«‰Ì ', 'ﬂœ', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE(FormType = 12)',
        '');


      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'InfoID', '⁄‰Ê«‰ „—Œ’Ì', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo WHERE(FormType=16)',
        'SELECT 1 , 1');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        Updatefilter;
      end; // if                         1
    finally
      Free;
    end; // try
  end; // with
end;

procedure TDecExtOnMounthF.Updatefilter;
begin
  with qryDecExtOnMounth do
  begin
    Active := false;
    Parameters.ParamByName('MounthFrom').Value := MonthNo;
    Parameters.ParamByName('MounthTo').Value := MonthNo;

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('YearID1From').Value := APPBank.Year;
    Parameters.ParamByName('YearID1To').Value := APPBank.Year;

    Parameters.ParamByName('FormType').Value := FormType;

    if FormType = 2 then
    begin
      Parameters.ParamByName('MounthFrom').Value := RadioGroup1.ItemIndex;
      Parameters.ParamByName('MounthTo').Value := 12;
    end;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

//    Parameters.ParamByName('PersonelNo2From').Value :=
//      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
//    Parameters.ParamByName('PersonelNo2To').Value :=
//      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

//AND PersonelDecExt.PersonelNo BetWeen :PersonelNo2From AND :PersonelNo2To


    Parameters.ParamByName('InfoIDFrom').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('InfoIDTo').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('InfoID1From').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('InfoID1To').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);

    // Parameters.ParamByName('OfficeCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    // Parameters.ParamByName('OfficeCodeTo').Value :=
    // GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodes').Value :=
      GetcFrom(myParams.ParamValues['OfficeCodes'], ftString);

    Parameters.ParamByName('InsuranceIDs').Value :=
      GetcFrom(myParams.ParamValues['BimehType'], ftString);


    // GetYearMounth(MonthNo);
    // Parameters.ParamByName('YearMounth1').Value := opt.YearMounth;
    // Parameters.ParamByName('YearMounth2').Value := opt.YearMounth;
    // Parameters.ParamByName('YearMounth').Value := opt.YearMounth;

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);

    Parameters.ParamByName('EmployTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    Active := True;
  end;
end;

procedure TDecExtOnMounthF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  Updatefilter;
end;

procedure TDecExtOnMounthF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TDecExtOnMounthF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDecExtOnMounthF.ppSysPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TDecExtOnMounthF.qryFormInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Updatefilter
end;

procedure TDecExtOnMounthF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
  if FormType = 2 then
    Text := Text + ' ' + RadioGroup1.Items[RadioGroup1.ItemIndex];
end;

procedure TDecExtOnMounthF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  Updatefilter;
end;

procedure TDecExtOnMounthF.actChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryDecExtOnMounth, Self);
end;

procedure TDecExtOnMounthF.ppLblMounthGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + ToolBar1.Buttons[MonthNo - 1].Caption;
  if not ToolBar1.Visible then
    Text := '';
end;

End.
