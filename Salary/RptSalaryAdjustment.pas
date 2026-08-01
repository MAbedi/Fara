unit RptSalaryAdjustment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, ADODB, ppModule, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppStrtch, ppSubRpt, DB, System.ImageList, System.Actions,
  Filter_ADO_Const, filter_ADO, FilterClass_ADO, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, ppParameter, ppDesignLayer;

type
  TRptSalaryAdjustmentF = class(Ttemplate2MDIF)
    actShow: TAction;
    BitBtn1: TBitBtn;
    srcCross: TDataSource;
    Panel4: TPanel;
    actSort: TAction;
    actChart: TAction;
    actSentExcel: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qryCross: TADOQuery;
    actShowForms: TAction;
    actFilter: TAction;
    DBGrid1: TCedarDbgrid;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    actPrint: TAction;
    BitBtn6: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure actSentExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    procedure UpdateFilter;
    procedure SetFieldDisplayLabels(MounthFrom, MounthTo: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptSalaryAdjustmentF: TRptSalaryAdjustmentF;

implementation

uses DM, GlobalPro, search2, sort2;

{$R *.dfm}

procedure TRptSalaryAdjustmentF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNO') = nil then
      Close;
end;

procedure TRptSalaryAdjustmentF.UpdateFilter;
var
  MounthNoFrom, MounthNoTo, i: Integer;
begin
  with qryCross do
  begin
    Active := False;
    SQL.Clear;

    MounthNoFrom := GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    MounthNoTo := GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    // شروع کوئری
    SQL.Add('SELECT F.PersonelNO, E.PersonelName_L1, Fj.InfoName_L1, max(AllDay) AS AllDay');

    // --- حلقه تولید ستون‌های لاتین ---
    for i := MounthNoFrom to MounthNoTo do
    begin
      SQL.Add(Format
        (',SUM(CASE WHEN F.Mounth = %d AND (F.ShowListKind = 1) THEN F.Price ELSE 0 END) AS RightSum%d',
        [i, i]));
      SQL.Add(Format
        (',SUM(CASE WHEN F.Mounth = %d AND (F.ShowListKind = 11) and (F.bedbes = 0) and (F.CalCulateKind=12) THEN F.Price ELSE 0 END) AS Taxable%d',
        [i, i]));
      SQL.Add(Format
        (',SUM(CASE WHEN F.Mounth = %d AND (F.ShowListKind = 11) and (F.bedbes = 2) THEN F.Price ELSE 0 END) AS Tax%d',
        [i, i]));
      SQL.Add(Format
        (',SUM(CASE WHEN F.Mounth = %d AND ( (CalCulateKind=10) and (ShowlistKind in(2))or(ShowlistKind in(3))) THEN F.Price ELSE 0 END) AS Insurable%d',
        [i, i]));
      SQL.Add(Format
        (',SUM(CASE WHEN F.Mounth = %d AND(((ShowlistKind = 2)OR((ShowlistKind = 0)OR(FormTypes.SalaryEffectKind=3))) AND (CalCulateKind = 10)) THEN price ELSE 0 END) AS EmployeeInsurance%d',
        [i, i]));
      SQL.Add(Format
        (',SUM(CASE WHEN F.Mounth = %d AND (F.ShowlistKind in( 4,14 )) AND (CalCulateKind = 10) THEN F.Price ELSE 0 END) AS EmployerInsurance%d',
        [i, i]));
    end;
    // --- پایان حلقه ستون‌ها ---

    // ادامه کوئری (همان قبلی)
    SQL.Add('');
    SQL.Add('FROM Pay.FormsInfo RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated AS F ON Pay.FormsInfo.FormInfoID = F.SalaryID RIGHT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_OfficeCode ON F.OfficeCode = FormsInfo_OfficeCode.FormInfoID INNER JOIN');
    SQL.Add('(SELECT InterdictID, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo,');
    SQL.Add('TaxCalculationType, EmployTypeID');
    SQL.Add(', SUBSTRING(InterdicStartDate, 1, 7) AS startmonth,');
    SQL.Add('SUBSTRING(InterdicEndDate, 1, 7) AS endMonth, CAST(LEFT(InterdicStartDate, 4) AS int) AS YearID');
    SQL.Add('FROM Pay.Interdicts) AS I');
    SQL.Add('ON I.PersonelNo = F.PersonelNO AND RTRIM');
    SQL.Add('(LTRIM(STR(F.YearID))) + ''/'' + SUBSTRING(RTRIM(LTRIM(STR(100 + F.Mounth))), 2, 2) BETWEEN I.startmonth AND');
    SQL.Add('I.endMonth AND I.YearID = F.YearID');
    SQL.Add('INNER JOIN');
    SQL.Add('Pay.FormTypes ON Pay.FormTypes.FormType = FormsInfo.FormType');
    SQL.Add('');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('(SELECT PersonelNo, SUM(FunctionDay + ISNULL(SickDay, 0)) AS AllDay');
    SQL.Add('FROM Pay.Functions FU');
    SQL.Add('Where (FU.Mounth BETWEEN :MounthFrom AND :MounthTo )');
    SQL.Add('AND (FU.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('AND (FU.Years BETWEEN :YearsFrom AND :YearsTo)');
    SQL.Add('GROUP BY PersonelNo');
    SQL.Add(') AllDay_Function on');
    SQL.Add('AllDay_Function.PersonelNo=F.PersonelNo');
    SQL.Add('INNER JOIN');
    SQL.Add('Pay.EmployeeInfo E on E.PersonelNo=F.PersonelNo');
    SQL.Add('INNER JOIN');
    SQL.Add('Pay.FormsInfo Fj ON I.jobCode = Fj.FormInfoID');
    SQL.Add('');
    SQL.Add('WHERE (F.ArchiveID BETWEEN :ArchiveIDFrom AND :ArchiveIDTo)');
    SQL.Add('AND (F.LabelID BETWEEN :LabelIDFrom AND :LabelIDTo)');
    SQL.Add('AND (F.YearID BETWEEN :YearID2From AND :YearID2To)');
    SQL.Add('AND (F.Years BETWEEN :Years2From AND :Years2To)');
    SQL.Add('AND (F.PersonelNO BETWEEN :PersonelNOFrom AND :PersonelNOTo)');
    SQL.Add('AND EXISTS');
    SQL.Add('(SELECT part');
    SQL.Add('FROM Pay.SplitString(:EmployTypeIDs, '','')');
    SQL.Add('WHERE (part = I.EmployTypeID)) AND (RTRIM(LTRIM(STR(F.YearID))) + ''/'' + SUBSTRING(RTRIM');
    SQL.Add('(LTRIM(STR(100 + F.Mounth))), 2, 2)');
    SQL.Add('BETWEEN I.startmonth AND I.endMonth)');
    SQL.Add('');
    SQL.Add('GROUP BY F.PersonelNO, E.PersonelName_L1, Fj.InfoName_L1, jobCode');

    // تنظیم پارامترها
    Parameters.ParamByName('MounthFrom').Value := MounthNoFrom;
    Parameters.ParamByName('MounthTo').Value := MounthNoTo;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('YearsFrom').Value := optp.Year;
    Parameters.ParamByName('YearsTo').Value := optp.Year;
    Parameters.ParamByName('YearID2From').Value := APPBank.Year;
    Parameters.ParamByName('YearID2To').Value := APPBank.Year;
    Parameters.ParamByName('Years2From').Value := optp.Year;
    Parameters.ParamByName('Years2To').Value := optp.Year;

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDs').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftString);
    Parameters.ParamByName('PersonelNOFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNO'], ftString);
    Parameters.ParamByName('PersonelNOTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNO'], ftString);
    // Parameters.ParamByName('OfficeCodes').Value :=
    // GetcFrom(myParams.ParamValues['OfficeCode'], ftString);
    // Parameters.ParamByName('PersonelState').Value :=
    // GetcFrom(myParams.ParamValues['PersonelState'], ftString);
    Parameters.ParamByName('ArchiveIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ArchiveID'], ftInteger);
    Parameters.ParamByName('ArchiveIDTo').Value :=
      GetcTo(myParams.ParamValues['ArchiveID'], ftInteger);

    // === اجرای کوئری ===
    Active := True;

    FieldByName('PersonelNO').DisplayLabel := 'شماره پرسنل';
    FieldByName('PersonelName_L1').DisplayLabel := 'مشخصات';
    FieldByName('InfoName_L1').DisplayLabel := 'سمت';
    FieldByName('AllDay').DisplayLabel := 'روزهای کارکرد';

    // === تنظیم DisplayLabel فارسی برای فیلدها ===
    SetFieldDisplayLabels(MounthNoFrom, MounthNoTo);
    DBGrid1.ColorDBGrid;
    DBGrid1.setSizeColDBGrid();
  end;
end;

procedure TRptSalaryAdjustmentF.SetFieldDisplayLabels(MounthFrom,
  MounthTo: Integer);
var
  i: Integer;
  Field: TField;

  procedure ApplyFormat(const AFieldName, ADisplayName: string);
  begin
    Field := qryCross.FindField(AFieldName);
    if Assigned(Field) then
    begin
      Field.DisplayLabel := ADisplayName;
      Field.Tag := 3;
      TBCDField(Field).Currency := True;
    end;
  end;

begin
  for i := MounthFrom to MounthTo do
  begin
    ApplyFormat('RightSum' + IntToStr(i), Format('جمع حقوق و مزایا %d', [i]));
    ApplyFormat('Taxable' + IntToStr(i), Format('مشمول مالیات %d', [i]));
    ApplyFormat('Tax' + IntToStr(i), Format('مالیات %d', [i]));
    ApplyFormat('Insurable' + IntToStr(i), Format('مشمول بیمه %d', [i]));
    ApplyFormat('EmployeeInsurance' + IntToStr(i),
      Format('حق بیمه کارمند %d', [i]));
    ApplyFormat('EmployerInsurance' + IntToStr(i),
      Format('حق بیمه کارفرما %d', [i]));
  end;
  for Field in qryCross.Fields do
  begin
    Field.Tag := 3;
  end;
end;

procedure TRptSalaryAdjustmentF.actSentExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptSalaryAdjustmentF.actFilterExecute(Sender: TObject);
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

      // AddItem(DMF.adcSalary, 'PersonelState', 'وضعيت پرسنل', '', ftInteger,
      // dvDefaults, 'True', '', ciCheck,
      // 'SELECT DISTINCT PersonelInfo.PersonelState, FormsInfo.InfoName_L1 ' +
      // 'FROM Pay.PersonelInfo INNER JOIN Pay.FormsInfo ON ' +
      // 'PersonelInfo.PersonelState = FormsInfo.FormInfoID', '');

      AddItemFilter(GetFilter, TPersonelNo);


      // AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 ' +
      // ' FROM  Pay.FormsInfo  WHERE (Pay.FormsInfo.FormType = 12) ',
      // 'SELECT 0, MAX(Pay.FormsInfo.InfoID) ' +
      // ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');

      // AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
      // dvDefaults, 'true', '', ciCheck,
      // 'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 12)',
      // '');

      AddItem(DMF.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        '');

      AddItem(DMF.adcSalary, 'Mounth', 'ماه', 'ماه', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 17)',
        'SELECT MIN(InfoID),MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 17)');

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

procedure TRptSalaryAdjustmentF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCross.DisableControls;
    InitReportFile(ppReport1, Self.Name);
  finally
    qryCross.EnableControls;
  end;

end;

procedure TRptSalaryAdjustmentF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCross);
end;

procedure TRptSalaryAdjustmentF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCross);
end;

end.
