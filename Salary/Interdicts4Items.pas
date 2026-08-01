{ -----------------------------------------------------------------------------
  Unit Name: Interdicts4Items
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit Interdicts4Items;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, ppBands, ppCtrls, Filter_ADO_Const,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, Menus, ppModule, ppStrtch, ppRegion, ComCtrls, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TInterdicts4ItemsF = class(Ttemplate2MDIF)
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
    BitBtn1: TBitBtn;
    ActChangeState: TAction;
    PopMnuState: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    qryItems: TADOQuery;
    qryItemsSalaryID: TIntegerField;
    qryItemsInfoName_L1: TStringField;
    qryItemsInfoName_L2: TStringField;
    qryCompaniesPrvCompanyCode: TStringField;
    qryCompaniesCompanyName_L1: TStringField;
    qryCompaniesCompanyName_L2: TStringField;
    PopMnuPrint: TPopupMenu;
    AllClick: TMenuItem;
    Interdicts4ItemsF: TMenuItem;
    grade_L1: TMenuItem;
    AllClickRow: TMenuItem;
    N4: TMenuItem;
    Interdicts4ItemsFList1Row: TMenuItem;
    Interdicts4ItemsFList2Row: TMenuItem;
    N7: TMenuItem;
    Interdicts4ItemsFlicence1Row: TMenuItem;
    Interdicts4ItemsFlicence2Row: TMenuItem;
    Interdicts4ItemsFgrade1Row: TMenuItem;
    Interdicts4ItemsFgrade2Row: TMenuItem;
    Interdicts4ItemsFOfficeName1Row: TMenuItem;
    Interdicts4ItemsFOfficeName2Row: TMenuItem;
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
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ActChangeStateExecute(Sender: TObject);
    procedure qryInterdictListStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    procedure UpdateFilter;
    // function getMaxFld(fldname,tblname:String):Cardinal;
    procedure MakeSql;
    procedure Make4Report(ItemCount: Byte);
  public
    { Public declarations }
  end;

var
  Interdicts4ItemsF: TInterdicts4ItemsF;

implementation

uses DM, sort2, search2, GlobalPro, searchCode_ADO, FilterClass_ADO, filter_ADO,
  Interdicts, mmessage, DBGrid2Print, FaraConsts, infoSMS;
{$R *.dfm}

procedure TInterdicts4ItemsF.MakeSql;
var
  // j:integer;
  sqltxt, scol: String;
begin
  inherited;
  with qryItems do
  begin
    Active := False;
    Active := True;
    sqltxt := '';
    while not eof do
    begin
      // sqltxt := sqltxt +
      // ',(SELECT Top 1 Amount FROM Pay.InterdictItems WHERE (SalaryID = ' +
      // qryItems.FieldByName('SalaryID').AsString +
      // ') AND (InterdictID = Lst.InterdictID)) as Salary' +

      sqltxt := sqltxt + ',SUM(CASE WHEN SalaryID = ' +
        qryItems.FieldByName('SalaryID').AsString +
        ' THEN Ii.Amount ELSE 0 END) AS Salary' +

        qryItems.FieldByName('SalaryID').AsString + '_L1';
      Next;
    end; // while

    sqltxt := sqltxt +
      ', v_InterdictItemSumSalary.Amount1, v_InterdictItemSumSalary.Amount2,' +
      ' v_InterdictItemSumSalary.AmountSum, v_InterdictItemSumSalary.AmountIn30,'
      + ' v_InterdictItemSumSalary.AmountSumAnd30 ';

    // sqltxt := sqltxt +
    // ' ,(SELECT SUM(Amount)  FROM Pay.InterdictItems GROUP BY InterdictID' +
    // ' HAVING      (InterdictID = Lst.InterdictID)) AS SumSalary ';

    sqltxt := sqltxt + ',SUM(Ii.Amount) AS SumSalary ';

  end; // with
  with qryInterdictList do
  begin
    Active := False;
    scol := 'Lst.InterdictID, Lst.InterdictNo, Lst.InterdictDate,States.StateName, Lst.PersonelNo, Lst.subcompanyCode, '
      + 'Lst.JobName_L1,  Lst.grade_L1,  Lst.jobCity_L1, ' +
      'Lst.InterdicType_L1,  Lst.InterdicStartDate, Lst.employDaytime, ' +
      ' cast (Lst.KargozinyNote_L1 as varchar(500)) KargozinyNote_L1,  Lst.OfficeName_L1, Lst.InterdicEndDate , Lst.InsuranceStartDate  , Lst.InsuranceEndDate ';

    SQL.Text := ' SELECT ' + scol +
      ',EmployeeInfo.Mobile, EmployeeInfo.PersonelName_L1 AS PersonelName_L1, EmployeeInfo.Name_L1+'' ''+EmployeeInfo.LastName_L1 AS FullName,'
      + '  EmployeeInfo.licence_L1 AS licence_L1, EmployeeInfo.employDate, EmployeeInfo.studyField_L1'
      + ', EmployeeInfo.finishEmployDate ' +
      ',EmployeeInfo.NationalID, EmployeeInfo.IDNumber, EmployeeInfo.BirthDate, EmployeeInfo.Sex_L1, '
      + 'EmployeeInfo.marriage_L1, EmployeeInfo.childnumber_L1, EmployeeInfo.AccountNumber,'
      + 'EmployeeInfo.insurancename, EmployeeInfo.InsuranceNumber,' +
      'EmployeeInfo.DSW_JOB, EmployeeInfo.TaxCalculationName_L1, EmployeeInfo.SoldierState_L1 '
      + ', Lst.StandardEmployAmount as [نرخ‏استاندارد]  ' +
      ', Lst.ProjectID, Lst.ProjectName ,Lst.jobsGroupName';
    SQL.Add(sqltxt);
    SQL.Add('FROM Pay.InterdictsListAll Lst INNER JOIN');
    SQL.Add('Pay.EmployeeInfo ON Lst.PersonelNo = Pay.EmployeeInfo.PersonelNo');

    SQL.Add(' INNER JOIN Pay.v_InterdictItemSumSalary ON Lst.InterdictID = v_InterdictItemSumSalary.InterdictID ');
    SQL.Add(' INNER JOIN Pay.States ON Lst.State = States.StateID ');

    SQL.Add('left JOIN Pay.InterdictItems AS Ii ON Ii.InterdictID = Lst.InterdictID');

    SQL.Add('WHERE (Lst.PersonelNo BETWEEN :PersonFrom AND :PersonTo)AND');
    SQL.Add('(Lst.InterdictNo BETWEEN :interFrom AND :interTo) AND');
    SQL.Add('(Lst.InterdictDate BETWEEN :InterDateFrom AND :InterDateTo) AND');
    SQL.Add('(Lst.InterdicTypeID BETWEEN :InterTypeFrom AND :InterTypeTo) AND');
    // SQL.Add  ('(Lst.OfficeID BETWEEN :OfficeFrom AND :OfficeTo) AND');
    SQL.Add('(Lst.OfficeID in( ' + GetcFrom(myParams.ParamValues['OfficeCode'],
      ftString) + ') ) AND ');

    SQL.Add('(Lst.State in( ' + GetcFrom(myParams.ParamValues['State'],
      ftString) + ') ) AND ');

    SQL.Add('(Lst.jobCode  BETWEEN :jobCodeFrom AND :jobCodeTo) AND');
    SQL.Add('((Lst.subcompanyCode = :companyCode)or(Lst.subcompanyCode = 0)) and');
    SQL.Add('(Lst.InterdicType =0 )');
    SQL.Add('AND (EmployeeInfo.PersonStateNo BETWEEN :PersonStateNoFrom AND :PersonStateNoTo)');

    SQL.Add('AND (Lst.GroupCode BETWEEN :GroupCodeFrom AND :GroupCodeTo)');
    SQL.Add('AND (Lst.PayehCode BETWEEN :PayehCodeFrom AND :PayehCodeTo)');

    // SQL.Add(' AND ((SELECT SUM(Amount)FROM Pay.InterdictItems GROUP BY InterdictID');
    // SQL.Add(' HAVING(InterdictID=Lst.InterdictID)) BETWEEN :SumAmountFrom AND :SumAmountTo)');

    SQL.Add('GROUP BY Lst.InterdictID, Lst.InterdictNo, Lst.InterdictDate,States.StateName, Lst.PersonelNo, Lst.subcompanyCode, '
      + 'Lst.JobName_L1,  Lst.grade_L1,  Lst.jobCity_L1, ' +
      'Lst.InterdicType_L1,  Lst.InterdicStartDate, Lst.employDaytime, ' +
      'cast (Lst.KargozinyNote_L1 as varchar(500)),  Lst.OfficeName_L1, Lst.InterdicEndDate , Lst.InsuranceStartDate  , Lst.InsuranceEndDate ');

    SQL.Add(',EmployeeInfo.Mobile, EmployeeInfo.PersonelName_L1, EmployeeInfo.Name_L1+'' ''+EmployeeInfo.LastName_L1,'
      + '  EmployeeInfo.licence_L1, EmployeeInfo.employDate, EmployeeInfo.studyField_L1'
      + ', EmployeeInfo.finishEmployDate ' +
      ',EmployeeInfo.NationalID, EmployeeInfo.IDNumber, EmployeeInfo.BirthDate, EmployeeInfo.Sex_L1, '
      + 'EmployeeInfo.marriage_L1, EmployeeInfo.childnumber_L1, EmployeeInfo.AccountNumber,'
      + 'EmployeeInfo.insurancename, EmployeeInfo.InsuranceNumber,' +
      'EmployeeInfo.DSW_JOB, EmployeeInfo.TaxCalculationName_L1, EmployeeInfo.SoldierState_L1 '
      + ', Lst.StandardEmployAmount  ' + ', Lst.ProjectID, Lst.ProjectName,Lst.jobsGroupName ');
    SQL.Add(', v_InterdictItemSumSalary.Amount1, v_InterdictItemSumSalary.Amount2,'
      + ' v_InterdictItemSumSalary.AmountSum, v_InterdictItemSumSalary.AmountIn30,'
      + ' v_InterdictItemSumSalary.AmountSumAnd30 ');

    SQL.Add('HAVING(SUM(Ii.Amount) BETWEEN :SumAmountFrom AND :SumAmountTo)');

    SQL.Add('ORDER BY Lst.InterdictDate, Lst.InterdictNo');
  end; // with
end;

procedure TInterdicts4ItemsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // if  Pos('interdictsf0',opt.MenuNames)<>0 then begin
  // CreateMDIForm2(TInterdictsF,InterdictsF,self,45) ;
  InterdictsF.Enter(45, 0, 49, 0, qryInterdictList.FieldByName('InterdictID')
    .AsInteger)

  // end//
  // else Warn('ويرايش و نمايش اين فرم در سطح دسترسي شما نمي‌باشد.');
end;

procedure TInterdicts4ItemsF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryInterdictList, 'Mobile');
end;

procedure TInterdicts4ItemsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(Dmf.adcSalary, 'State', 'وضعیت', '', ftInteger, dvDefaults,
        'true', '', ciCheck, 'SELECT StateID,StateName FROM Pay.States', '');

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
      AddItem(Dmf.adcSalary, 'SumAmount', 'جمع كل', 'مبلغ', ftLargeint,
        dvMinMax, '', '', ciSimple, '',
        'SELECT 0 AS MinSumAmount,9999999999999 AS MaxSumAmount ');
      AddItem(Dmf.adcSalary, 'InterType', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      // AddItem(DMf.adcSalary,'OfficeID','واحد سازماني ','كد',ftInteger,dvMinMax,'','',ciLookup,
      // 'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 12) ',
      // 'SELECT MIN(InfoID), MAX(InfoID)  FROM Pay.FormsInfo WHERE  (FormType = 12)');
      AddItem(Dmf.adcSalary, 'InterDate', 'تاريخ حكم', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',''' + APPBank.endYear + '''');

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

procedure TInterdicts4ItemsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInterdicts4ItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInterdictList);
end;

procedure TInterdicts4ItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInterdictList);
end;

procedure TInterdicts4ItemsF.SpeedButton1Click(Sender: TObject);
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

procedure TInterdicts4ItemsF.UpdateFilter;
begin
  MakeSql;
  with qryInterdictList do
  begin
    Active := False;

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
    Parameters.ParamByName('SumAmountFrom').Value :=
      GetcFrom(myParams.ParamValues['SumAmount'], ftLargeint);
    Parameters.ParamByName('SumAmountTo').Value :=
      GetcTo(myParams.ParamValues['SumAmount'], ftLargeint);
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

  with qryCompanies do
  begin
    Active := False;
          if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end
    else
    begin
      Parameters.ParamByName('companyCodeFrom').Value := 0;
      Parameters.ParamByName('companyCodeTo').Value := 2147483647;
    end;
    Active := True;
  end;
  qryInterdictList.Active := True;
  pnlCompany.Visible := gv_MultiCompany;

end;

procedure TInterdicts4ItemsF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := lblOfficeCode.Caption;
end;

procedure TInterdicts4ItemsF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblPersonelCode.Caption;
end;

procedure TInterdicts4ItemsF.ppLabel16GetText(Sender: TObject;
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

procedure TInterdicts4ItemsF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInterdicts4ItemsF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TInterdicts4ItemsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdicts4ItemsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  // _L2(DBGrid1);
  if myParams.FindParam('OfficeCode') = nil then
    close;
end;

procedure TInterdicts4ItemsF.ppLabel17GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if pnlCompany.Visible then
    Text := Text + ': ' + DBEdit1.Text + ' ' + DBEdit2.Text
  else
    Text := '';

end;

procedure TInterdicts4ItemsF.FormResize(Sender: TObject);
begin
  inherited;
  // DBGrid1.setSizeColDBGrid;
  // SetColSize(DBGrid1, 1, False);
end;

procedure TInterdicts4ItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1);
end;


// function TInterdicts4ItemsF.getMaxFld(fldname, tblname: String): Cardinal;
// var
// qry:TADOQuery;
// begin
// qry:=TADOQuery.Create(Self);
// with qry do begin
// try
// Connection:=DMf.adcSalary;
// Active:=False;
// SQL.Text:='Select max(' + fldName + ') from ' + tblName;
// Active:=True;
// Result:=Fields[0].AsInteger;
// finally
// qry.Free;
// end;//try
// end;//with
//
// end;

procedure TInterdicts4ItemsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TInterdicts4ItemsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TInterdicts4ItemsF.ActChangeStateExecute(Sender: TObject);
begin
  inherited;
  PopMnuState.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdicts4ItemsF.qryInterdictListStateGetText(Sender: TField;
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

procedure TInterdicts4ItemsF.N2Click(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي نهائي كردن حكم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('InterdictID').AsString;
    end;
  If s = '' then
    Exit;
  with Dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.Interdicts SET State = 1 WHERE (State <1) AND ' +
      '(InterdictID IN (' + s + '))';
    try
      BigMessage(IntToStr(ExecSQL) + ' حكم‌ نهائي شد.', 2);
      Active := False;
      qryInterdictList.Active := False;
      qryInterdictList.Open;
    except
      Warn('اشكال در نهائي كردن حكم‌');
    end; // try
  end; // with
end;

procedure TInterdicts4ItemsF.N3Click(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي بايگاني كردن حكم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('InterdictID').AsString;
    end;
  If s = '' then
    Exit;
  with Dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.Interdicts SET State = 50 WHERE (State <50) AND ' +
      '(InterdictID IN (' + s + '))';
    try
      BigMessage(IntToStr(ExecSQL) + ' حكم‌ بايگاني شد.', 2);
      Active := False;
      qryInterdictList.Active := False;
      qryInterdictList.Open;
    except
      Warn('اشكال در بايگاني كردن حكم‌');
    end; // try
  end; // with
end;

procedure TInterdicts4ItemsF.N1Click(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if not User.PowerUser then
  begin
    Warn('اين امكان براي مدير سيستم مي‏باشد.‏');
    Exit;
  end;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي پيش نويس كردن حكم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('InterdictID').AsString;
    end;
  If s = '' then
    Exit;
  with Dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.Interdicts SET State = 0 WHERE ' +
    // (State <50) AND '+
      '(InterdictID IN (' + s + '))';
    try
      BigMessage(IntToStr(ExecSQL) + ' حكم‌ پيش نويس شد.', 2);
      Active := False;
      qryInterdictList.Active := False;
      qryInterdictList.Open;
    except
      Warn('اشكال در پيش نويس كردن حكم‌');
    end; // try
  end; // with
end;

procedure TInterdicts4ItemsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryInterdictList.FieldByName('PersonelNo'));

end;

procedure TInterdicts4ItemsF.AllClickClick(Sender: TObject);
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

procedure TInterdicts4ItemsF.AllClickRowClick(Sender: TObject);
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

procedure TInterdicts4ItemsF.Make4Report(ItemCount: Byte);
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

procedure TInterdicts4ItemsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TInterdicts4ItemsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInterdicts4ItemsF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0, 'limit');
end;

procedure TInterdicts4ItemsF.qryInterdictListAfterOpen(DataSet: TDataSet);
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
    FieldByName('StateName').DisplayLabel := 'وضعیت حکم';

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

    FieldByName('jobsGroupName').DisplayLabel := 'گروه پروژه';


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


    // FieldByName('licence_L1').Tag:=3;
    // FieldByName('SumSalary').Tag:=3;
    // FieldByName('InterdictNo').Tag:=3;
    // FieldByName('InterdictDate').Tag:=3;
    // FieldByName('subcompanyCode').Tag:=3;
    // FieldByName('JobName_L1').Tag:=3;
    // FieldByName('grade_L1').Tag:=3;
    // FieldByName('InterdicType_L1').Tag:=3;
    // FieldByName('InterdicStartDate').Tag:=3;
    // FieldByName('employDaytime').Tag:=3;
    // FieldByName('PersonelNo').Tag:=3;
    // FieldByName('OfficeName_L1').Tag:=3;
    // FieldByName('PersonelName_L1').Tag:=3;
    // FieldByName('InterdicEndDate').Tag:=3;
    // FieldByName('jobCity_L1').Tag:=3;
    // FieldByName('InterdictID').Tag:=3;

    FieldByName('PersonelName_L1').Index := 1;
    FieldByName('FullName').Index := 2;

    // if ReadConfig(APPID + '\Windows\' + getparentformname(DBGrid1) + '_' +
    // DBGrid1.Name, 'ColWidth', '') = '' then
    // for i := 0 to DBGrid1.Columns.Count - 1 do
    // DBGrid1.Columns[i].Width := 52;

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
  // SetColSize(DBGrid1, 1, False);
  // StatusBar1.Panels[2].Text := 'تعداد احکام = ' + IntToStr(DataSet.RecordCount);
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
  DBGrid1.DoLoad;

end;

procedure TInterdicts4ItemsF.N8Click(Sender: TObject);
begin
  inherited;
  qryInterdictList.Requery();
end;

procedure TInterdicts4ItemsF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdicts4ItemsF.qryCompaniesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryInterdictList do
  begin
    Active := False;
    Parameters.ParamByName('companyCode').Value :=
      DataSet.FieldByName('CompanyCode').AsInteger;
    // IF DataSet.RecordCount = 1 then
    // Parameters.ParamByName('companyCode').Value := 0
    Active := True;
  end; // with

end;

end.
