unit VacationOver9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, StrUtils, InitPop,Filter_ADO_Const,
  DB, ADODB, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppParameter, ppCtrls, ppBands,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppDesignLayer, System.ImageList, System.Actions;

type
  TVacationOver9F = class(Ttemplate2MDIF)
    grdVacation: TDBGrid;
    srcVacation: TDataSource;
    qryVacation: TADOQuery;
    Panel1: TPanel;
    qryFormInfo: TADOQuery;
    qryFormInfoFormInfoID: TIntegerField;
    qryFormInfoInfoID: TIntegerField;
    qryFormInfoInfoName_L1: TStringField;
    qryFormInfoInfoName_L2: TStringField;
    qryFormInfoFormType: TSmallintField;
    qryFormInfoStandardDays: TFloatField;
    qryFormInfoStandardTimes: TFloatField;
    qryinitForm: TADOQuery;
    actFilter: TAction;
    btnFilter: TBitBtn;
    btnSort: TBitBtn;
    btnSearch: TBitBtn;
    btnSendExcel: TButton;
    btnPrint: TBitBtn;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    actShow: TAction;
    btnShow: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLbCompanyName: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLbprintDate: TppLabel;
    ppSyVpageNumber: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine13: TppLine;
    ppLabel5: TppLabel;
    ppLine15: TppLine;
    ppLabel8: TppLabel;
    ppLine14: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine16: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine17: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine4: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText3: TppDBText;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppDBText4: TppDBText;
    ppLine11: TppLine;
    ppDBText5: TppDBText;
    ppLine18: TppLine;
    ppDBText6: TppDBText;
    ppLine19: TppLine;
    ppDBText7: TppDBText;
    ppLine20: TppLine;
    ppDBText8: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppDBText10: TppDBText;
    ppLine23: TppLine;
    ppDBText11: TppDBText;
    ppLine24: TppLine;
    ppDBText12: TppDBText;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppDBText15: TppDBText;
    ppLine28: TppLine;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppLine25: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine30: TppLine;
    ppShape2: TppShape;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel21: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine31: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    qryVacationPersonelNo: TIntegerField;
    qryVacationNAME: TStringField;
    qryVacationContainDay: TBCDField;
    qryVacationExpireDay: TFloatField;
    qryVacationAllDay: TFloatField;
    qryVacationBalanceAllDay: TBCDField;
    qryVacationMoreThanOf9: TFloatField;
    qryVacationStandardDays: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryFormInfoAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure ppLbCompanyNameGetText(Sender: TObject; var Text: string);
    procedure ppLbprintDateGetText(Sender: TObject; var Text: string);
    procedure ppSyVpageNumberGetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
    FormType: Byte;
    procedure initform;
    procedure UpdateList;
  public
    { Public declarations }
  end;

var
  VacationOver9F: TVacationOver9F;

implementation

uses GlobalPro, DM, FaraConsts, filter_ADO, FilterClass_ADO, Filters, sort,
  sort2, search2, EmployeeDeeExtinfo;

{$R *.dfm}

procedure TVacationOver9F.actFilterExecute(Sender: TObject);

var
  sqlLookUp: String;
begin
  inherited;
  sqlLookUp := IfThen(optP.LanguageDisplay1,
    'PersonelNo,name_L1 +'' ''+ lastName_L1',
    'PersonelNo,name_L2 +'' ''+ lastName_L2');
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'Integrate', 'انتقال مرخصی ', 'انتقال مرخصی',
        ftInteger, dvDefaults, 'true', 'true', ciCheck,
        'SELECT 1,''انتقال مرخصی''', '');
      AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'Mounth', ' ماه', '', ftInteger, dvMinMax, '', '',
        ciSimple, '', 'SELECT  1 ,12   FROM Pay.StandardTimes');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        // lblFilterStringCaption.Caption := GetFilterStringCaption;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TVacationOver9F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryVacation.DisableControls;
    InitReportFile(ppReport1, 'rptVacationOver9');
  finally
    qryVacation.EnableControls;
  end;
end;

procedure TVacationOver9F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryVacation);
end;

procedure TVacationOver9F.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdVacation);
end;

procedure TVacationOver9F.actShowExecute(Sender: TObject);
begin
  inherited;
  EmployeeDeeExtinfoF.Enter(16,0)
end;

procedure TVacationOver9F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryVacation);
end;

procedure TVacationOver9F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  initform;
end;

procedure TVacationOver9F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grdVacation, IntToStr(FormType));
end;

procedure TVacationOver9F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdVacation, 3, False, IntToStr(FormType));
end;

procedure TVacationOver9F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('PersonelNo') = nil then
    close;
end;

procedure TVacationOver9F.initform;
begin
  with qryinitForm do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := FormType;
    Active := True;
  end; // with
end;

procedure TVacationOver9F.ppLbCompanyNameGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TVacationOver9F.ppLbprintDateGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TVacationOver9F.ppSyVpageNumberGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TVacationOver9F.qryFormInfoAfterScroll(DataSet: TDataSet);

begin
  inherited;

  with qryVacation do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoID').Value :=
      DataSet.fieldbyname('FormInfoID').AsInteger;
    Parameters.ParamByName('StandardDays').Value :=
      qryFormInfo.fieldbyname('StandardDays').AsFloat;
    Parameters.ParamByName('StandardDays1').Value :=
      qryFormInfo.fieldbyname('StandardDays').AsFloat;
    Parameters.ParamByName('StandardTimes').Value :=
      qryFormInfo.fieldbyname('StandardTimes').AsFloat;
    Active := True;
  end;
  // with
end;

procedure TVacationOver9F.UpdateList;
var
  vacMounthFrom, vacMounthTo, prvBank: string;
begin
  vacMounthFrom := DMf.ReadBankConfigPay('VacationMounthFrom', '1390/01');
  vacMounthTo := DMf.ReadBankConfigPay('VacationMounthTo', '1399/12');
  prvBank := DMf.ReadBankConfigPay('PrvBankName', APPBank.Name);
  with qryVacation do
  begin
    Active := False;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('VacationMounthFrom').Value := vacMounthFrom;
    Parameters.ParamByName('VacationMounthTo').Value := vacMounthTo;

    Parameters.ParamByName('PrvBank').Value := prvBank;

    Parameters.ParamByName('IntegrateDecExt').Value :=
      GetcFrom(myParams.ParamValues['Integrate'], ftInteger);

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

  end; // with
  with qryFormInfo do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := FormType;
    Active := True;
  end;
  // with
end;

end.
