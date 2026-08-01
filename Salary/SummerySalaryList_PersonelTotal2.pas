unit SummerySalaryList_PersonelTotal2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, Buttons, StdCtrls, Mask, Grids, Vcl.DBGrids,
  ImgList, DBActns, ActnList, ExtCtrls, DB, ADODB, ppModule,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ppParameter,
  SumDBGrid, ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  ThackCedarGrid = class(TCedarDbgrid);

  TSummerySalaryList_PersonelTotal2F = class(Ttemplate2MDIF)
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    qryComprasion: TADOQuery;
    srcComprasion: TDataSource;
    DBNavigator2: TDBNavigator;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    actTreeChart: TAction;
    ppParameterList1: TppParameterList;
    actSMS: TAction;
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
    ppLine10: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDetailBand1: TppDetailBand;
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
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine9: TppLine;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
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
    procedure AllW_GetText(Sender: TObject; var Text: String);
  private
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SummerySalaryList_PersonelTotal2F: TSummerySalaryList_PersonelTotal2F;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, sort2, search2, TreeChart,
  searchCode_ADO, infoSMS, Filter_ADO_Const;

{$R *.dfm}

procedure TSummerySalaryList_PersonelTotal2F.UpdateFilter;
var
  i: Integer;
begin
  with qryComprasion do
  begin
    Active := false;
    SQL.Text := ' Pay.Sp_SummerySalaryList :ArchiveIDFrom , :ArchiveIDTo ';
    SQL.Add(', :FromOfficeCode , :ToOfficeCode , :FromPersonelNO , :ToPersonelNO , :EmployTypeIDs  ,:LabelIDFrom  , :LabelIDTo ');
    SQL.Add(', :YearIDFrom , :YearIDTo , :YearsFrom , :YearsTo ');
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('YearsFrom').Value := optp.Year;
    Parameters.ParamByName('YearsTo').Value := optp.Year;

  Parameters.ParamByName('EmployTypeIDs').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftString);

    Parameters.ParamByName('FromOfficeCode').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('ToOfficeCode').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('FromPersonelNO').Value :=
      GetcFrom(myParams.ParamValues['PersonelNO'], ftInteger);
    Parameters.ParamByName('ToPersonelNO').Value :=
      GetcTo(myParams.ParamValues['PersonelNO'], ftInteger);

    Parameters.ParamByName('ArchiveIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ArchiveID'], ftInteger);
    Parameters.ParamByName('ArchiveIDTo').Value :=
      GetcTo(myParams.ParamValues['ArchiveID'], ftInteger);

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Active := true;
    // qryComprasion.FieldByName('SumPrice').DisplayLabel := 'Ã„⁄ ﬂ·';
    // TBCDField(qryComprasion.FieldByName('SumPrice')).currency := true;
  end;

  DBGrid1.Columns[0].Width := 25;
  DBGrid1.Columns[1].Width := 80;
  for i := 2 to DBGrid1.Columns.Count - 1 do
  begin
    DBGrid1.Columns[i].Width := 67;
    if DBGrid1.Columns[i].Field is TBCDField then
      TBCDField(DBGrid1.Columns[i].Field).currency := true;
  end;
  ThackCedarGrid(DBGrid1).DoLoad;
  DBGrid1.ColorDBGrid;
  DBGrid1.SetFooter4Sum([]);

  // SetColSize(DBGrid1, 0, true);
  for i := 0 to qryComprasion.FieldCount - 1 do
    qryComprasion.Fields[i].Tag := 3;

end;

procedure TSummerySalaryList_PersonelTotal2F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNO') = nil then
      Close;
end;

procedure TSummerySalaryList_PersonelTotal2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMF.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        '');

      AddItem(DMF.adcSalary, 'ArchiveID', '»«Ìê«‰Ì', '', ftInteger, dvMinMax,
        '', '', ciLookup,
        ' SELECT DISTINCT -9999 AS ArchiveID, ''»— «”«” ¬Œ—Ì‰ »«Ìê«‰Ì'' AS Name'
        + ' UNION' +
        ' SELECT DISTINCT ArchiveID, ''»«Ìê«‰Ì ‘„«—Â'' + STR(ArchiveID) FROM Pay.FixedCalculated',
        'SELECT Max(ArchiveID),Max(ArchiveID) FROM Pay.FinalArchive');

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
        'SELECT  0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');

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

procedure TSummerySalaryList_PersonelTotal2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryComprasion);
end;

procedure TSummerySalaryList_PersonelTotal2F.actSendToExcelExecute
  (Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSummerySalaryList_PersonelTotal2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryComprasion);
end;

procedure TSummerySalaryList_PersonelTotal2F.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + IntToStr(qryComprasion.Parameters.ParamByName
    ('FromPersonelNO').Value) + '  « ' +
    IntToStr(qryComprasion.Parameters.ParamByName('ToPersonelNO').Value)
end;

procedure TSummerySalaryList_PersonelTotal2F.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + IntToStr(qryComprasion.Parameters.ParamByName
    ('FromOfficeCode').Value) + '  « ' +
    IntToStr(qryComprasion.Parameters.ParamByName('ToOfficeCode').Value)
end;

procedure TSummerySalaryList_PersonelTotal2F.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSummerySalaryList_PersonelTotal2F.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSummerySalaryList_PersonelTotal2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryComprasion.DisableControls;
    InitReportFile(ppReport1, Self.Name);
  finally
    qryComprasion.EnableControls;
  end;
end;

procedure TSummerySalaryList_PersonelTotal2F.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSummerySalaryList_PersonelTotal2F.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + IntToStr(APPBank.Year)
end;

procedure TSummerySalaryList_PersonelTotal2F.actTreeChartExecute
  (Sender: TObject);
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


procedure TSummerySalaryList_PersonelTotal2F.AllW_GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qryComprasion.FindField('N' + Trim(Text)) <> nil then
    Text := qryComprasion.Fieldbyname('N' + Trim(Text)).DisplayLabel
  else
    Text := '...'
end;


end.
