{ -----------------------------------------------------------------------------
  Unit Name: Interdicts4Items
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit Interdicts4ItemsTide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, ppBands, ppCtrls,Filter_ADO_Const,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, Menus, ppModule, ppStrtch, ppRegion, ComCtrls, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TInterdicts4ItemsTideF = class(Ttemplate2MDIF)
    srcInterdictList: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    actShowForm: TAction;
    actFilter: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qryCompanies: TADOQuery;
    srcCompanies: TDataSource;
    qryInterdictList: TADOQuery;
    pnlCompany: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryCompaniesCompanyCode: TIntegerField;
    qryItems: TADOQuery;
    qryItemsSalaryID: TIntegerField;
    qryItemsInfoName_L1: TStringField;
    qryItemsInfoName_L2: TStringField;
    qryCompaniesPrvCompanyCode: TStringField;
    qryCompaniesCompanyName_L1: TStringField;
    qryCompaniesCompanyName_L2: TStringField;
    PopMnuPrint: TPopupMenu;
    AllClick: TMenuItem;
    grade_L1: TMenuItem;
    AllClickRow: TMenuItem;
    N4: TMenuItem;
    N7: TMenuItem;
    N5: TMenuItem;
    actPrintVijeh: TAction;
    BitBtn8: TBitBtn;
    Panel1: TPanel;
    lblPersonelCode: TLabel;
    lblOfficeCode: TLabel;
    PopOther: TPopupMenu;
    N6: TMenuItem;
    N8: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel5: TppLabel;
    ppLine20: TppLine;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel15: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine15: TppLine;
    ppLabel16: TppLabel;
    ppLabel14: TppLabel;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLabel17: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine21: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText7: TppDBText;
    ppDBText3: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine8: TppLine;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    actSMS: TAction;
    DBGrid1: TCedarDbgrid;
    ppDBPipeline2: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    qry_init: TADOQuery;
    procedure actShowFormExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryInterdictListStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure AllClickClick(Sender: TObject);
    procedure AllClickRowClick(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure qryInterdictListAfterOpen(DataSet: TDataSet);
    procedure N8Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure qryCompaniesAfterScroll(DataSet: TDataSet);
    procedure actSMSExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure UpdateFilter;
    // function getMaxFld(fldname,tblname:String):Cardinal;
    procedure MakeSql;
    procedure Make4Report(ItemCount: Byte);
  public
    { Public declarations }
  end;

var
  Interdicts4ItemsTideF: TInterdicts4ItemsTideF;

implementation

uses DM, sort2, search2, GlobalPro, searchCode_ADO, FilterClass_ADO, filter_ADO,
  Interdicts, mmessage, DBGrid2Print, FaraConsts, infoSMS;
{$R *.dfm}

procedure TInterdicts4ItemsTideF.MakeSql;
var
  // j:integer;
  sqltxt, s: String;
begin
  inherited;
  with qryItems do
  begin
    Active := False;
    Active := True;
    sqltxt := '';
    while not eof do
    begin
      sqltxt := sqltxt +
        ',(SELECT Top 1 Amount FROM Pay.InterdictItems WHERE (SalaryID = ' +
        qryItems.FieldByName('SalaryID').AsString +
        ') AND (InterdictID = Pay.InterdictsList.InterdictID)) as Salary' +
        qryItems.FieldByName('SalaryID').AsString + '_L1';
      Next;
    end; // while

    sqltxt := sqltxt +
      ', v_InterdictItemSumSalary.Amount1, v_InterdictItemSumSalary.Amount2,' +
      ' v_InterdictItemSumSalary.AmountSum, v_InterdictItemSumSalary.AmountIn30,'
      + ' v_InterdictItemSumSalary.AmountSumAnd30 ';

    sqltxt := sqltxt +
      ' ,(SELECT SUM(Amount)  FROM Pay.InterdictItems GROUP BY InterdictID' +
      ' HAVING      (InterdictID = Pay.InterdictsList.InterdictID)) AS SumSalary ';

  end; // with
  with qryInterdictList do
  begin
    Active := False;
    s := 'InterdictsList.InterdictID, InterdictsList.InterdictNo, InterdictsList.InterdictDate, InterdictsList.PersonelNo, InterdictsList.subcompanyCode, '
      + 'InterdictsList.JobName_L1,  InterdictsList.grade_L1,  InterdictsList.jobCity_L1, '
      + 'InterdictsList.InterdicType_L1,  InterdictsList.InterdicStartDate, InterdictsList.employDaytime, '
      + 'InterdictsList.KargozinyNote_L1,  InterdictsList.OfficeName_L1, InterdictsList.InterdicEndDate , InterdictsList.InsuranceStartDate  , InterdictsList.InsuranceEndDate ';

    SQL.Text := ' SELECT ' + s +
      ',EmployeeInfo.Mobile, EmployeeInfo.PersonelName_L1 AS PersonelName_L1, EmployeeInfo.Name_L1+'' ''+EmployeeInfo.LastName_L1 AS FullName,'
      + '  EmployeeInfo.licence_L1 AS licence_L1, EmployeeInfo.employDate, EmployeeInfo.studyField_L1'
      + ', EmployeeInfo.finishEmployDate ' +
      ',EmployeeInfo.NationalID, EmployeeInfo.IDNumber, EmployeeInfo.BirthDate, EmployeeInfo.Sex_L1, '
      + 'EmployeeInfo.marriage_L1, EmployeeInfo.childnumber_L1, EmployeeInfo.AccountNumber,'
      + 'EmployeeInfo.insurancename, EmployeeInfo.InsuranceNumber,' +
      'EmployeeInfo.DSW_JOB, EmployeeInfo.TaxCalculationName_L1, EmployeeInfo.SoldierState_L1 '
      + ', InterdictsList.StandardEmployAmount as [نرخ‏استاندارد]  ' +
      ', InterdictsList.ProjectID, InterdictsList.ProjectName ';

    SQL.Add(sqltxt);

    SQL.Add(', DayQuntity, BonusPrise, TaxPrice, BonusPayAble, PaymentBonus');
    SQL.Add(', DifBonusPayAble, FirstAnnuity, NowDayQuntity, SumDayQuntity, ');
    SQL.Add('NowAnnuityPrice, LastAnnuityPrice, SumAnnuityPrice');

    SQL.Add('FROM Pay.InterdictsList INNER JOIN');
    SQL.Add('Pay.EmployeeInfo ON Pay.InterdictsList.PersonelNo = Pay.EmployeeInfo.PersonelNo');

    SQL.Add(' INNER JOIN Pay.v_InterdictItemSumSalary ON InterdictsList.InterdictID = v_InterdictItemSumSalary.InterdictID ');

    SQL.Add(' INNER JOIN Pay.Fn_Tide( :FormInfoID ) AS Fn_Tide  ON Fn_Tide.PersonelNo = InterdictsList.PersonelNo');

    SQL.Add('WHERE (Pay.InterdictsList.PersonelNo BETWEEN :PersonFrom AND :PersonTo)AND');
    SQL.Add('(Pay.InterdictsList.InterdictNo BETWEEN :interFrom AND :interTo) AND');
    SQL.Add('(Pay.InterdictsList.InterdictDate BETWEEN :InterDateFrom AND :InterDateTo) AND');
    SQL.Add('(Pay.InterdictsList.InterdicTypeID BETWEEN :InterTypeFrom AND :InterTypeTo) AND');
    // SQL.Add  ('(Pay.InterdictsList.OfficeID BETWEEN :OfficeFrom AND :OfficeTo) AND');
    SQL.Add('(Pay.InterdictsList.OfficeID in( ' +
      GetcFrom(myParams.ParamValues['OfficeCode'], ftString) + ') ) AND ');

    SQL.Add('(Pay.InterdictsList.jobCode  BETWEEN :jobCodeFrom AND :jobCodeTo) AND');
    SQL.Add('((Pay.InterdictsList.subcompanyCode = :companyCode)or(Pay.InterdictsList.subcompanyCode = 0)) and');
    SQL.Add('(Pay.InterdictsList.InterdicType =0 )');
    SQL.Add('AND (EmployeeInfo.PersonStateNo BETWEEN :PersonStateNoFrom AND :PersonStateNoTo)');

    SQL.Add('AND (InterdictsList.GroupCode BETWEEN :GroupCodeFrom AND :GroupCodeTo)');
    SQL.Add('AND (InterdictsList.PayehCode BETWEEN :PayehCodeFrom AND :PayehCodeTo)');

    SQL.Add('ORDER BY Pay.InterdictsList.InterdictDate, Pay.InterdictsList.InterdictNo');
  end; // with
end;

procedure TInterdicts4ItemsTideF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // if  Pos('interdictsf0',opt.MenuNames)<>0 then begin
  // CreateMDIForm2(TInterdictsF,InterdictsF,self,45) ;
  InterdictsF.Enter(45, 0, 49, 0, qryInterdictList.FieldByName('InterdictID')
    .AsInteger)

  // end//
  // else Warn('ويرايش و نمايش اين فرم در سطح دسترسي شما نمي‌باشد.');
end;

procedure TInterdicts4ItemsTideF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryInterdictList, 'Mobile');
end;

procedure TInterdicts4ItemsTideF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(Dmf.adcSalary, 'OfficeCode', 'عنوان سازمان', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT InfoID,ltrim(rtrim( str(InfoID) ))+ InfoName_L1 FROM Pay.FormsInfo  WHERE  formtype=12  ',
        '');

      AddItem(Dmf.adcSalary, 'GroupCode', 'گروه حكم', 'گروه', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE(FormType = 68)',
        'SELECT 0, MAX(InfoID) FROM Pay.FormsInfo WHERE(FormType = 68)');

      AddItem(Dmf.adcSalary, 'PayehCode', 'پايه حكم', 'پايه', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE(FormType = 78)',
        'SELECT 0, MAX(InfoID) FROM Pay.FormsInfo WHERE(FormType = 78)');

      AddItem(Dmf.adcSalary, 'jobCode', 'پست سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 13)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 13)');
      AddItem(Dmf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');
      AddItem(Dmf.adcSalary, 'InterType', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      // AddItem(DMf.adcSalary,'OfficeID','واحد سازماني ','كد',ftInteger,dvMinMax,'','',ciLookup,
      // 'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 12) ',
      // 'SELECT MIN(InfoID), MAX(InfoID)  FROM Pay.FormsInfo WHERE  (FormType = 12)');
      AddItem(Dmf.adcSalary, 'InterDate', 'تاريخ حكم', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(InterdictDate), MAX(InterdictDate) FROM Pay.Interdicts');
      AddItem(Dmf.adcSalary, 'InterNo', 'شماره حكم', 'شماره', ftFloat, dvMinMax,
        '', '', ciSimple, '', 'SELECT 0,999999999');

      AddItemFilter(GetFilter, TPersonelNo);
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

procedure TInterdicts4ItemsTideF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInterdicts4ItemsTideF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInterdictList);
end;

procedure TInterdicts4ItemsTideF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInterdictList);
end;

procedure TInterdicts4ItemsTideF.SpeedButton1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(Dmf.adcAccounting, ' ',
    'SELECT CompanyCode,CompanyName_L1 FROM   acc.Companies',
    ['كد', 'نام شركت '], Results, [100, 100], alLeft);
  if s then
  begin
    if not(qryInterdictList.State in dsEditModes) then
      qryInterdictList.edit;
    qryInterdictList['subcompanyCode'] := Results[0];
  end; // if
  if s then
    qryCompanies.Locate('CompanyCode', Results[0], []);
end;

procedure TInterdicts4ItemsTideF.UpdateFilter;
begin
  MakeSql;
  with qryInterdictList do
  begin
    Active := False;

    Parameters.ParamByName('FormInfoID').Value :=
      qry_init.FieldByName('forminfoid').AsInteger;

    Parameters.ParamByName('GroupCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupCode'], ftInteger);
    Parameters.ParamByName('GroupCodeTo').Value :=
      GetcTo(myParams.ParamValues['GroupCode'], ftInteger);

    Parameters.ParamByName('PayehCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['PayehCode'], ftInteger);
    Parameters.ParamByName('PayehCodeTo').Value :=
      GetcTo(myParams.ParamValues['PayehCode'], ftInteger);

    Parameters.ParamByName('jobCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['jobCode'], ftInteger);
    Parameters.ParamByName('jobCodeTo').Value :=
      GetcTo(myParams.ParamValues['jobCode'], ftInteger);

    Parameters.ParamByName('PersonStateNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonStateNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('interFrom').Value :=
      GetcFrom(myParams.ParamValues['InterNo'], ftFloat);
    Parameters.ParamByName('interTo').Value :=
      GetcTo(myParams.ParamValues['InterNo'], ftFloat);
    Parameters.ParamByName('InterDateFrom').Value :=
      GetcFrom(myParams.ParamValues['InterDate'], ftDate);
    Parameters.ParamByName('InterDateTo').Value :=
      GetcTo(myParams.ParamValues['InterDate'], ftDate);
    // Parameters.ParamByName('OfficeFrom').Value:=GetcFrom(myParams.ParamValues['OfficeID'],ftInteger);
    // Parameters.ParamByName('OfficeTo').Value:=GetcTo(myParams.ParamValues['OfficeID'],ftInteger);
    Parameters.ParamByName('InterTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['InterType'], ftInteger);
    Parameters.ParamByName('InterTypeTo').Value :=
      GetcTo(myParams.ParamValues['InterType'], ftInteger);
    // Active:=true;

    lblPersonelCode.Caption := '  محدوده  كد پرسنلي از ' +
      IntToStr(Parameters.ParamByName('PersonFrom').Value) + ' تا ' +
      IntToStr(Parameters.ParamByName('Personto').Value);
    // lblOfficeCode.Caption:='محدوده كد واحد سازماني از  '+ IntToStr(Parameters.ParamByName('OfficeFrom').Value)+' تا '+IntToStr(Parameters.ParamByName('OfficeTo').Value) ;
  end; // with
  qryCompanies.Active := False;
  qryCompanies.Active := True;
  qryInterdictList.Active := True;
  pnlCompany.Visible := gv_MultiCompany;

end;

procedure TInterdicts4ItemsTideF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblOfficeCode.Caption;
end;

procedure TInterdicts4ItemsTideF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblPersonelCode.Caption;
end;

procedure TInterdicts4ItemsTideF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'شماره حكم از  ' +
    IntToStr(qryInterdictList.Parameters.ParamByName('interFrom').Value) +
    ' تا  ' + IntToStr(qryInterdictList.Parameters.ParamByName('interTo').Value)
    + '  ' + 'از تاريخ ' + qryInterdictList.Parameters.ParamByName
    ('InterDateFrom').Value + ' تا  ' + qryInterdictList.Parameters.ParamByName
    ('InterDateto').Value
end;

procedure TInterdicts4ItemsTideF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInterdicts4ItemsTideF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TInterdicts4ItemsTideF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdicts4ItemsTideF.FormCreate(Sender: TObject);
begin
  inherited;
  with qry_init do
  begin
    Active := False;
    Active := True;
  end;
end;

procedure TInterdicts4ItemsTideF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  // _L2(DBGrid1);
  if myParams.FindParam('OfficeCode') = nil then
    close;
end;

procedure TInterdicts4ItemsTideF.ppLabel17GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if pnlCompany.Visible then
    Text := Text + ': ' + DBEdit1.Text + ' ' + DBEdit2.Text
  else
    Text := '';

end;

procedure TInterdicts4ItemsTideF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TInterdicts4ItemsTideF.qryInterdictListStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryInterdictList.FieldByName('State').AsInteger of
    0:
      Text := 'پيش نويس';
    1:
      Text := 'نهائي';
    50:
      Text := 'بايگاني';
  end; // case
end;

procedure TInterdicts4ItemsTideF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryInterdictList.FieldByName('PersonelNo'));

end;

procedure TInterdicts4ItemsTideF.AllClickClick(Sender: TObject);
begin
  inherited;
  try
    qryCompanies.DisableControls;
    qryInterdictList.DisableControls;
    qryInterdictList.Sort := (Sender as TMenuItem).Hint;
    InitReportFile(ppReport1, (Sender as TMenuItem).Name);
  finally
    qryCompanies.EnableControls;
    qryInterdictList.EnableControls;
  end; // try

end;

procedure TInterdicts4ItemsTideF.AllClickRowClick(Sender: TObject);
var
  File_Name, ReportFooter: String;
begin
  inherited;
  ReportFooter := FooterFormType(48);
  qryInterdictList.Sort := (Sender as TMenuItem).Hint;
  File_Name := (Sender as TMenuItem).Name + '.rtm';
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(File_Name);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('فايل چاپي ' + File_Name + ' يافت نشد.!‏');
      Make4Report((Sender as TMenuItem).Tag);
      InitReport(ppReport1, ppFooterBand1, ppRegion1, ppRecFooterLine,
        ReportFooter);
      InitReport(ppReport1, ppSummaryBand1, ppRegion2, ppRecFooterLine2,
        ReportFooter);
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with

end;

procedure TInterdicts4ItemsTideF.Make4Report(ItemCount: Byte);
var
  i, SalaryId: Integer;
begin
  SalaryId := qryItems.RecordCount - 1;
  SalaryId := DBGrid1.Columns.Count - 2 - SalaryId;
  for i := SalaryId to DBGrid1.Columns.Count - 2 do
  begin
    IF i - SalaryId + 1 > ItemCount THEN
      Break;
    TppLabel(FindComponent('S' + IntToStr(i - SalaryId + 1))).Caption :=
      DBGrid1.Columns[i].Title.Caption;
    TppDBText(FindComponent('DS' + IntToStr(i - SalaryId + 1))).DataField :=
      DBGrid1.Columns[i].FieldName;
    TppDBCalc(FindComponent('DSCF' + IntToStr(i - SalaryId + 1))).DataField :=
      DBGrid1.Columns[i].FieldName;
    TppDBCalc(FindComponent('DSCS' + IntToStr(i - SalaryId + 1))).DataField :=
      DBGrid1.Columns[i].FieldName;
  end;

end;

procedure TInterdicts4ItemsTideF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TInterdicts4ItemsTideF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInterdicts4ItemsTideF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, 'limit');
end;

procedure TInterdicts4ItemsTideF.qryInterdictListAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  with qryInterdictList do
  begin
    // if Active then begin
    // FieldList.Update;
    // end;
    // Active:=False;
    // Parameters.ParamByName('companyCode').Value:=dataset.fieldbyname('CompanyCode').AsInteger;
    // Active:=True;
    FieldByName('InterdictNo').DisplayLabel := 'شماره حكم';
    FieldByName('InterdictDate').DisplayLabel := 'تاريخ حكم';
    FieldByName('subcompanyCode').DisplayLabel := 'كد شركت';
    FieldByName('JobName_L1').DisplayLabel := '  پست سازماني';
    FieldByName('grade_L1').DisplayLabel := 'رتبه شغلي';
    FieldByName('InterdicType_L1').DisplayLabel := 'نوع حكم';
    FieldByName('InterdicStartDate').DisplayLabel := 'تاريخ اجراي حكم';
    FieldByName('employDaytime').DisplayLabel := 'پايان قرار داد';

    FieldByName('InsuranceStartDate').DisplayLabel := 'تاريخ شروع بیمه';
    FieldByName('InsuranceEndDate').DisplayLabel := 'تاريخ پايان بیمه';

    FieldByName('PersonelNo').DisplayLabel := 'ش.پرسنل';
    FieldByName('OfficeName_L1').DisplayLabel := ' واحد سازماني';
    FieldByName('PersonelName_L1').DisplayLabel := 'مشخصات پرسنل';
    FieldByName('FullName').DisplayLabel := 'نام و نام خانوادگی';
    FieldByName('InterdicEndDate').DisplayLabel := 'تاريخ پايان قرارداد';
    FieldByName('jobCity_L1').DisplayLabel := 'محل خدمت';
    FieldByName('InterdictID').DisplayLabel := 'سريال';
    FieldByName('SumSalary').DisplayLabel := 'جمع كل';
    FieldByName('licence_L1').DisplayLabel := 'مدرك تحصيلي';
    FieldByName('KargozinyNote_L1').DisplayLabel := 'توضيحات';
    FieldByName('employDate').DisplayLabel := 'تاريخ استخدام';
    FieldByName('studyField_L1').DisplayLabel := 'رشته تحصيلي';
    FieldByName('finishEmployDate').DisplayLabel := 'تاريخ خاتمه قرارداد';

    FieldByName('ProjectID').DisplayLabel := 'كدپروژه';
    FieldByName('ProjectName').DisplayLabel := 'پروژه';

    FieldByName('Amount1').DisplayLabel := 'جمع مزد مبنا';
    FieldByName('Amount2').DisplayLabel := 'جمع مزايا';
    FieldByName('AmountSum').DisplayLabel := 'جمع مبنا.مزايا';
    FieldByName('AmountIn30').DisplayLabel := 'جمع مزد مبنا/*30';
    FieldByName('AmountSumAnd30').DisplayLabel := '30%جمع كل';

    FieldByName('NationalID').DisplayLabel := 'کد ملی';
    FieldByName('IDNumber').DisplayLabel := 'شماره شناسنامه';
    FieldByName('BirthDate').DisplayLabel := 'تاریخ تولد';
    FieldByName('Sex_L1').DisplayLabel := 'جنسیت';
    FieldByName('marriage_L1').DisplayLabel := 'وضعیت تاهل';
    FieldByName('childnumber_L1').DisplayLabel := 'تعداد اولاد';
    FieldByName('AccountNumber').DisplayLabel := 'شماره حساب بانکی';
    FieldByName('insurancename').DisplayLabel := 'نوع بیمه';
    FieldByName('InsuranceNumber').DisplayLabel := 'شماره بیمه';
    FieldByName('DSW_JOB').DisplayLabel := 'کد شغل بیمه';
    FieldByName('TaxCalculationName_L1').DisplayLabel := 'نوع مالیات';
    FieldByName('SoldierState_L1').DisplayLabel := 'وضعیت نظام وظیفه';

    FieldByName('DayQuntity').DisplayLabel := 'كاركرد';
    FieldByName('BonusPrise').DisplayLabel := 'ناخالص عيدي';
    FieldByName('TaxPrice').DisplayLabel := 'ماليات عيدي';
    FieldByName('BonusPayAble').DisplayLabel := 'خالص عيدي';
    FieldByName('PaymentBonus').DisplayLabel := 'علي الحساب عيدي';
    FieldByName('DifBonusPayAble').DisplayLabel := 'مانده عيدي';

    FieldByName('FirstAnnuity').DisplayLabel := 'كاركرد سنوات قبل';
    FieldByName('NowDayQuntity').DisplayLabel := 'كاركرد سال جاري';
    FieldByName('SumDayQuntity').DisplayLabel := 'جمع كاركرد';
    FieldByName('LastAnnuityPrice').DisplayLabel := 'سنوات خدمت ابتداي سال';
    FieldByName('NowAnnuityPrice').DisplayLabel := 'سنوات خدمت سالجاري';
    FieldByName('SumAnnuityPrice').DisplayLabel := 'جمع كل سنوات خدمت';

    FieldByName('PersonelName_L1').Index := 1;
    FieldByName('FullName').Index := 2;

    if ReadConfig(APPID + '\Windows\' + getparentformname(DBGrid1) + '_' +
      DBGrid1.Name, 'ColWidth', '') = '' then
      for i := 0 to DBGrid1.Columns.Count - 1 do
        DBGrid1.Columns[i].Width := 52;

    with qryItems do
    begin
      First;
      while not eof do
      begin
        qryInterdictList.FieldByName('Salary' + qryItems.FieldByName('SalaryID')
          .AsString + '_L1').DisplayLabel :=
          qryItems.FieldByName('InfoName_L1').AsString;
        // qryInterdictList.FieldByName('Salary'+qryItems.FieldByName('SalaryID').AsString+'_L1').Tag:=3;
        TBCDField(qryInterdictList.FieldByName('Salary' +
          qryItems.FieldByName('SalaryID').AsString + '_L1')).currency := True;
        Next;
      end; // while
      TBCDField(qryInterdictList.FieldByName('SumSalary')).currency := True;
    end; // with
  end; // with

  for i := 0 to DBGrid1.Columns.Count - 1 do
  begin
    if DBGrid1.Columns[i].Visible then
    begin
      // qryInterdictList.FieldByName(DBGrid1.Columns[i].FieldName).Tag := 3;
      DBGrid1.Columns[i].Field.Tag := 3;
      if DBGrid1.Columns[i].Field is TBCDField then
        TBCDField(DBGrid1.Columns[i].Field).currency := True;
    end;
  end; // for

  DBGrid1.SetFooter4Sum(['InterdictNo']);
  ppDBPipeline2.DataSource := DBGrid1.srcSum;
  DBGrid1.ColorDBGrid;
end;

procedure TInterdicts4ItemsTideF.N8Click(Sender: TObject);
begin
  inherited;
  qryInterdictList.Requery();
end;

procedure TInterdicts4ItemsTideF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdicts4ItemsTideF.qryCompaniesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryInterdictList do
  begin
    Active := False;
    Parameters.ParamByName('companyCode').Value :=
      DataSet.FieldByName('CompanyCode').AsInteger;
    Active := True;
  end;

end;

end.
