unit PersonelListPensioner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ComCtrls, ToolWin, StrUtils,
  DBCtrls, ppDB, ppDBPipe, ppBands, ppCtrls, myChkBox, ppPrnabl, FaraConsts,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppVar, ppStrtch,
  ppMemo, ppModule, Dbf, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, Filter_ADO_Const, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TPersonelListPensionerF = class(Ttemplate2MDIF)
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
    actFilter: TAction;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    ppDBListPensioner: TppDBPipeline;
    BitBtn2: TBitBtn;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ppReport1: TppReport;
    BitBtn6: TBitBtn;
    actSendExel: TAction;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    SrcListPensioner: TDataSource;
    qryListPensioner: TADOQuery;
    BtnshowGrid2Print: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLblLongMonthNames: TppLabel;
    BtnppDesigner: TBitBtn;
    CmbArchiveID: TComboBox;
    qryWage: TADOQuery;
    qryInsurance: TADOQuery;
    qrySalaryRange: TADOQuery;
    DBGrid1: TCedarDbgrid;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppDBText16GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure AllClikPopClick(Sender: TObject);
    procedure BtnshowGrid2PrintClick(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblLongMonthNamesGetText(Sender: TObject; var Text: String);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure qryListPensionerAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    MonthNo: Byte;
    FormType: Integer;
    procedure UpdateList;
    procedure MakeSql;
    function GetSalaryRange(FormInfoID: Integer): string;
  public
    { Public declarations }
  end;

var
  PersonelListPensionerF: TPersonelListPensionerF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro,
  search2, sort2, DBGrid2Print, SalaryFunctions;

{$R *.dfm}

procedure TPersonelListPensionerF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  UpdateList;
end;

procedure TPersonelListPensionerF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  ToolBar1.Buttons[MonthNo - 1].Down := True;
end;

procedure TPersonelListPensionerF.actFilterExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'ProjectInterdicts', 'پروژه/تفصیلی 1', 'كد',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.Interdicts INNER JOIN Pay.FormsInfo ON Pay.Interdicts.ProjectID = FormsInfo.FormInfoID GROUP BY FormsInfo.InfoName_L1, FormsInfo.InfoID  ',
        'SELECT MIN(FormsInfo.InfoID), MAX(FormsInfo.InfoID) FROM Pay.Interdicts INNER JOIN Pay.FormsInfo ON Pay.Interdicts.ProjectID = FormsInfo.FormInfoID');
      AddItem(DMf.adcSalary, 'jobCode', 'پست سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 13)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 13)');
      AddItem(DMf.adcSalary, 'BimehType', 'نوع بيمه', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT     InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        'SELECT     Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
      AddItem(DMf.adcSalary, 'OfficeInfoID', 'عنوان سازمان', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT    FormsInfo.InfoID,ltrim(rtrim( str(FormsInfo.InfoID) ))+ FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
        + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ', '');
      AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'Grade', 'رتبه شغلي', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 27)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 27)');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TPersonelListPensionerF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TPersonelListPensionerF.UpdateList;
begin
  GetYearMounth(MonthNo);
  MakeSql;
  with qryListPensioner do
  begin
    Active := false;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState']);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('insuranceIDFrom').Value :=
      GetcFrom(myParams.ParamValues['BimehType'], ftInteger);
    Parameters.ParamByName('insuranceIDTo').Value :=
      GetcTo(myParams.ParamValues['BimehType'], ftInteger);
    Parameters.ParamByName('jobCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['jobCode'], ftInteger);
    Parameters.ParamByName('jobCodeTo').Value :=
      GetcTo(myParams.ParamValues['jobCode'], ftInteger);
    Parameters.ParamByName('ProjectInterdictsFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectInterdicts'], ftInteger);
    Parameters.ParamByName('ProjectInterdictsTo').Value :=
      GetcTo(myParams.ParamValues['ProjectInterdicts'], ftInteger);

    Parameters.ParamByName('GradeFrom').Value :=
      GetcFrom(myParams.ParamValues['Grade'], ftInteger);
    Parameters.ParamByName('GradeTo').Value :=
      GetcTo(myParams.ParamValues['Grade'], ftInteger);
    Active := True;
    // ShowQryParam(qryListPensioner);
    actPrint.Enabled := not IsEmpty;
  end; // with

end;

procedure TPersonelListPensionerF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    MakeMenuItem(FormType, AllClikPopClick, PopList4Print);
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
  end;
end;

procedure TPersonelListPensionerF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPersonelListPensionerF.ppLabel23GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := optP.Year;
end;

procedure TPersonelListPensionerF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Month2Names(MonthNo)
end;

procedure TPersonelListPensionerF.ppDBText16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + #254;
end;

procedure TPersonelListPensionerF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryListPensioner);
end;

procedure TPersonelListPensionerF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryListPensioner);
end;

procedure TPersonelListPensionerF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPersonelListPensionerF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TPersonelListPensionerF.BtnshowGrid2PrintClick(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TPersonelListPensionerF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPersonelListPensionerF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPersonelListPensionerF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPersonelListPensionerF.qryListPensionerAfterOpen(DataSet: TDataSet);
var
  i: Integer;
  s: string;
begin
  inherited;
  with qryWage do
  begin
    First;
    while not Eof do
    begin
      qryListPensioner.FieldByName(Format('Wage%d', [RecNo])).DisplayLabel :=
        FieldByName('InfoName_L1').AsString;
      TBCDField(qryListPensioner.FieldByName(Format('Wage%d', [RecNo])))
        .currency := True;
      Next;
    end;

  end;
  with qryInsurance do
  begin
    First;
    while not Eof do
    begin
      qryListPensioner.FieldByName(Format('Dec%d', [RecNo])).DisplayLabel :=
        FieldByName('InfoName_L1').AsString;
      TBCDField(qryListPensioner.FieldByName(Format('Dec%d', [RecNo])))
        .currency := True;
      Next;
    end;
  end;

  with qryListPensioner do
  begin
    FieldByName('PersonelNo').DisplayLabel := 'شماره پرسنل';
    FieldByName('StateName').DisplayLabel := 'وضعيت';
    FieldByName('name_L1').DisplayLabel := 'نام';
    FieldByName('lastName_L1').DisplayLabel := 'نام خانوادگي';
    FieldByName('sexName').DisplayLabel := 'جنسيت';
    FieldByName('fatherName_L1').DisplayLabel := 'نام پدر';
    FieldByName('NationalID').DisplayLabel := 'شماره ملي';
    FieldByName('IDNumber').DisplayLabel := 'شماره شناسنامه';
    FieldByName('IssuedProvinceName').DisplayLabel := 'استان محل صدور';
    FieldByName('SodurPlaceName').DisplayLabel := 'شهر محل صدور';
    FieldByName('BirthDate').DisplayLabel := 'تاريخ تولد';
    FieldByName('EmployID').DisplayLabel := 'شماره مستخدم';
    FieldByName('LicenceCodeName').DisplayLabel := 'مدرک تحصيلي';
    FieldByName('studyFieldName').DisplayLabel := 'رشته تحصيلي';
    FieldByName('SoldierStateName').DisplayLabel := ' وضعيت نظام وظيفه';
    FieldByName('RasteName').DisplayLabel := 'رسته شغلی';
    FieldByName('jobName').DisplayLabel := 'پست سازمانی';
    FieldByName('ReshteName').DisplayLabel := 'رشته شغلي';
    FieldByName('TabagheName').DisplayLabel := 'طبقه شغلی';
    FieldByName('gorupshoghlName').DisplayLabel := 'گروه شغلی';
    FieldByName('marriageName').DisplayLabel := 'وضعيت تاهل';
    FieldByName('childNumberName').DisplayLabel := 'تعداد فرزندان';
    FieldByName('EmployTypeIDName').DisplayLabel := 'نوع استخدام';
    FieldByName('HalateEstekhdamName').DisplayLabel := 'حالت استخدام';
    FieldByName('employDate').DisplayLabel := 'تاريخ استخدام';
    FieldByName('Sacrifice').DisplayLabel := 'وضعيت ايثارگري';
    FieldByName('SacrificeWith').DisplayLabel := 'نسبت با ايثارگر';
    FieldByName('DateOfFund').DisplayLabel := 'تاريخ تغییر صندوق';
    FieldByName('StoreDayTime').DisplayLabel := 'سنوات خدمت رسمی';
    FieldByName('StoreDayTime2').DisplayLabel := 'سنوات خدمت غیر رسمی';
    FieldByName('DateOfDeductionsAndExemptions').DisplayLabel :=
      'تاریخ معافیت از کسور (مازاد بر سی سال)';
    FieldByName('InterdicStartDate').DisplayLabel := 'تاريخ اجراء حکم ';
    FieldByName('SubInterdictIDName').DisplayLabel := 'نوع حکم';

    FieldByName('Amount').DisplayLabel := 'تفاوت بند ی سال';

  end;

  for i := 0 to DBGrid1.Columns.Count - 1 do
  begin
    qryListPensioner.FieldByName(DBGrid1.Columns[i].FieldName).tag := 3;
    if DBGrid1.Columns[i].Width > 300 then
      DBGrid1.Columns[i].Width := 70;
  end;
  DBGrid1.ColorDBGrid;

end;

procedure TPersonelListPensionerF.ppLblLongMonthNamesGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه ' + optP.Year;
end;

procedure TPersonelListPensionerF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

function TPersonelListPensionerF.GetSalaryRange(FormInfoID: Integer): string;
begin
  inherited;
  with qrySalaryRange do
  begin
    Active := false;
    Parameters.ParamByName('FormInfoID').Value := FormInfoID;
    Active := True;
    Result := '0';
    while not Eof do
    begin
      Result := Result + ',' + FieldByName('SalaryID').AsString;
      Next;
    end;
  end;
end;

procedure TPersonelListPensionerF.MakeSql;
var
  sqltxt, FieldsNames: string;
begin
  inherited;

  with qryWage do
  begin
    Active := false;
    Active := True;
    sqltxt := 'SELECT PersonelInfo.PersonelNo, FormsInfoPersonelState.InfoName_L1 AS StateName, PersonelInfo.name_L1,'
      + #13#10 +
      ' PersonelInfo.lastName_L1,FormsInfo_sex.InfoName_L1 AS sexName,   PersonelInfo.fatherName_L1,'
      + #13#10 +
      ' PersonelInfo.NationalID, PersonelInfo.IDNumber, FormsInfo_IssuedProvince.InfoName_L1 AS'
      + #13#10 + ' IssuedProvinceName,' +
      ' FormsInfo_SodurPlace.InfoName_L1 AS SodurPlaceName, PersonelInfo.BirthDate, PersonelInfo.EmployID,'
      + #13#10 +
      ' FormsInfo_LicenceCode.InfoName_L1 AS LicenceCodeName, FormsInfo_studyField.InfoName_L1 AS'
      + #13#10 + ' studyFieldName,' +
      ' FormsInfo_SoldierState.InfoName_L1 AS SoldierStateName, '''' AS RasteName, FormsInfo_jobCode.InfoName_L1'
      + #13#10 + ' AS jobName, '''' AS ReshteName, '''' AS TabagheName,' +
      ' '''' AS gorupshoghlName, FormsInfo_marriage.InfoName_L1 AS marriageName,'
      + #13#10 + ' FormsInfo_childNumber.InfoName_L1 AS childNumberName,' +
      ' FormsInfoEmployTypeID.InfoName_L1 AS EmployTypeIDName, '''' AS HalateEstekhdamName,'
      + #13#10 +
      ' PersonelInfo.employDate, '''' AS Sacrifice, '''' AS SacrificeWith,' +
      ' '''' AS DateOfFund, PersonelInfo.StoreDayTime, 0 AS StoreDayTime2, '''' AS DateOfDeductionsAndExemptions,'
      + #13#10 + ' Interdicts.InterdicStartDate,' +
      ' FormsInfo_SubInterdictID.InfoName_L1 AS SubInterdictIDName';
    while not Eof do
    begin
      sqltxt := sqltxt + #13#10 +
        Format(', SUM(CASE WHEN FixedCalculated.SalaryID IN (%s) ' +
        'THEN FixedCalculated.Price ELSE 0 END) AS Wage%d',
        [GetSalaryRange(FieldByName('FormInfoID').AsInteger), RecNo]);
      Next;
    end;
  end;

  with qryInsurance do
  begin
    Active := false;
    Active := True;
    while not Eof do
    begin
      sqltxt := sqltxt + #13#10 +
        Format(', SUM(CASE WHEN (FixedCalculated.SalaryID = %d)' +
        'AND (FixedCalculated.ShowListKind = %d)' +
        'AND (PersonelInfo.insuranceID = %d)' +
        'THEN FixedCalculated.Price ELSE 0 END) AS Dec%d',
        [FieldByName('SalaryID').AsInteger, FieldByName('ShowListKind')
        .AsInteger, FieldByName('insuranceID').AsInteger, RecNo]);

      Next;
    end;
  end;

  with qryListPensioner do
  begin
    Active := false;
    SQL.Text := sqltxt;
    SQL.Add(',InterdictItemsAmount.Amount');
    SQL.Add('FROM Pay.FormsInfo AS FormsInfoEmployTypeID LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts ON FormsInfoEmployTypeID.FormInfoID = Interdicts.EmployTypeID LEFT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.PersonelInfo INNER JOIN');
    SQL.Add('Pay.InsuranceCONSTinfo ON PersonelInfo.insuranceID = InsuranceCONSTinfo.insuranceNo ON');
    SQL.Add('FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON');
    SQL.Add('Interdicts.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND');
    SQL.Add('Interdicts.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoProject ON Pay.Interdicts.ProjectID = FormsInfoProject.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_grade ON Pay.Interdicts.grade = FormsInfo_grade.FormInfoID LEFT OUTER JOIN');

    SQL.Add('(SELECT It.InterdictID, SUM(It.Amount) AS Amount');
    SQL.Add('FROM Pay.InterdictItems AS It JOIN');
    SQL.Add('Pay.FormsInfo AS Fo ON It.SalaryID = Fo.FormInfoID');
    SQL.Add('where fo.InfoID in (47,48,49)');
    SQL.Add('GROUP BY It.InterdictID) AS InterdictItemsAmount ON Pay.Interdicts.InterdictID =');
    SQL.Add('InterdictItemsAmount.InterdictID LEFT OUTER JOIN');

    SQL.Add('Pay.FormsInfo AS FormsInfo_IssuedProvince ON PersonelInfo.IssuedProvince =');
    SQL.Add('FormsInfo_IssuedProvince.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_SodurPlace ON PersonelInfo.SodurPlace = FormsInfo_SodurPlace.FormInfoID LEFT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_LicenceCode ON PersonelInfo.LicenceCode = FormsInfo_LicenceCode.FormInfoID');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_studyField ON PersonelInfo.studyField = FormsInfo_studyField.FormInfoID LEFT OUTER');
    SQL.Add('JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_SoldierState ON PersonelInfo.SoldierState = FormsInfo_SoldierState.FormInfoID LEFT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_marriage ON PersonelInfo.marriage = FormsInfo_marriage.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_childNumber ON PersonelInfo.childNumber = FormsInfo_childNumber.FormInfoID ');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_SubInterdictID ON Pay.Interdicts.SubInterdictID = FormsInfo_SubInterdictID.FormInfoID');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_sex ON PersonelInfo.sex = FormsInfo_sex.FormInfoID ');

    SQL.Add('WHERE  (FixedCalculated.ArchiveID = :ArchiveID) AND(FixedCalculated.Mounth = :mounth) ');
    SQL.Add('AND(FixedCalculated.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add('AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
    SQL.Add('AND (FormsInfoEmployTypeID.InfoID  BETWEEN :EmployTypeIDFrom  AND :EmployTypeIDTo )');
    SQL.Add('AND (InterdicType = 0 ) ');
    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate,7) <=''' +
      optP.YearMounth + ''')');
    SQL.Add('AND (LEFT(Interdicts.InterdicEndDate , 7) >=''' +
      optP.YearMounth + ''')');
    SQL.Add('AND (FormsInfoOffice.InfoID in(' +
      GetcFrom(myParams.ParamValues['OfficeInfoID'], ftString) + '))');
    SQL.Add('AND (FormsInfo_jobCode.InfoID BETWEEN :jobCodeFrom AND :jobCodeTo ) ');
    SQL.Add('AND (FormsInfoProject.InfoID  BETWEEN :ProjectInterdictsFrom AND :ProjectInterdictsTo ) ');
    SQL.Add('AND (FormsInfo_grade.InfoID BETWEEN :gradeFrom AND :gradeTo ) ');
    SQL.Add('AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo) ');
    SQL.Add('AND (PersonelInfo.insuranceID BETWEEN :insuranceIDFrom AND :insuranceIDTo) ');

    SQL.Add('GROUP BY PersonelInfo.name_L1, PersonelInfo.lastName_L1, PersonelInfo.fatherName_L1, PersonelInfo.NationalID,');
    SQL.Add('PersonelInfo.IDNumber, FormsInfoOffice.InfoID,');
    SQL.Add('FormsInfoOffice.InfoName_L1, PersonelInfo.PersonelNo, PersonelInfo.Mobile, PersonelInfo.name_L1,');
    SQL.Add('PersonelInfo.lastName_L1, PersonelInfo.fatherName_L1,');
    SQL.Add('FormsInfoPersonelState.InfoName_L1, PersonelInfo.AccountNumber, PersonelInfo.InsuranceNumber,');
    SQL.Add('FormsInfo_jobCode.InfoID, FormsInfo_jobCode.InfoName_L1,');
    SQL.Add('FormsInfoProject.InfoID, FormsInfoProject.InfoName_L1, FormsInfo_grade.InfoName_L1,');
    SQL.Add('InterdictItemsAmount.Amount, FormsInfo_SodurPlace.InfoName_L1,');
    SQL.Add('FormsInfo_IssuedProvince.InfoName_L1, PersonelInfo.BirthDate, PersonelInfo.EmployID,');
    SQL.Add('FormsInfo_LicenceCode.InfoName_L1,');
    SQL.Add('FormsInfo_studyField.InfoName_L1, FormsInfo_SoldierState.InfoName_L1, FormsInfo_marriage.InfoName_L1,');
    SQL.Add('FormsInfo_childNumber.InfoName_L1,FormsInfo_sex.InfoName_L1,');
    SQL.Add('FormsInfoEmployTypeID.InfoName_L1, PersonelInfo.employDate, PersonelInfo.StoreDayTime,');
    SQL.Add('Interdicts.InterdicStartDate, FormsInfo_SubInterdictID.InfoName_L1');

  end; // with
end;

end.
