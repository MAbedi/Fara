unit SalaryFunctions;

interface

uses
  ADODB, GlobalPro, Vcl.DBGrids, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppCache, Mask, Buttons, cedarDBGrid, Vcl.FileCtrl,
  ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppMemo, ppModule, ppSubRpt,
  ppRegion, DBCtrls, System.Variants, Vcl.StdCtrls,
  ppTypes, Classes, db, Menus, Windows, shellapi, StrUtils,
  SysUtils, Encryption, mdiMain,
  forms, ComCtrls, Controls, Dialogs, ZipForge, CheckLst, ActnList,
  SumDBGrid, Graphics, main, PersonelInfo, Interdicts, EmployeeDeeExtinfo;

type
  Tform_Name = (FnPersonelInfo = 1, FnInterdicts = 2, FnEmployeeDeeExtinfo = 3);

  TMYSpeedButton = class(TSpeedButton)
    Fcmbo: TDBComboBox;
    property cmbo: TDBComboBox read Fcmbo write Fcmbo;
  end;

function SetMenuName(mnu: TMainMenu): String;
function SendMail(EmailName: String): Boolean;
procedure InitReport(ReportName: TppReport; BandName: TppBand;
  aRegion: TppRegion; TopLine: TppLine; footer: string);
procedure assignServerName(adoCon: TADOConnection; dbName: string);
procedure setColumns(Grid: TDBGrid; colNumber: string; StateCol: Boolean);
procedure DisableKeyDown(Sender: TObject; key: Word);
function BackupDatabaseNet(ADC: TADOConnection; anAPPBank: TAPPBANK;
  pathName: String; ChooseDir: Boolean = False; DoZip: Boolean = True): Boolean;
function GetDataPath(DataPath: string): string;
function ValidInfoName(DataSet: TDataSet; qry: TADOQuery): Boolean;
function ValidInfoID(DataSet: TDataSet; qry: TADOQuery): Boolean;
function Calculate_AccCode(AccLevel, Kind: byte; No: Integer): Integer;
procedure SumQry(Grid: TDBGrid);
// function SumSelectedColumns(MyColumn:TColumn): String;
procedure InitCmbLabel(Combo_Box: TComboBox; MounthFrom: byte = 1;
  MounthTo: byte = 12; ManyMounth: Boolean = False);
procedure InitCmbArchiveID(Combo_Box: TComboBox; MounthFrom: byte = 1;
  MounthTo: byte = 12; ManyMounth: Boolean = False);
procedure InitcmbMounthRetard(Combo_Box: TComboBox; grpMounthRetard: TGroupBox;
  Mounth: byte = 1);
procedure ShowAllFrom(Tag4Type: Integer; GroupIndex4case: Integer;
  frParent: TForm; qry: TDataSet);
procedure ShowAllFrom2(ds: TDataSet; ReportID: Integer; formType: Integer);
procedure Alladd2PopOther(aTag: Integer; grd: TCedarDbgrid);
function CheckRequiredFieldsFill(DataSet: TDataSet): Boolean;
procedure SendToMonthNoPersonelDecExt(DBGrid1: TDBGrid; MonthNo: byte;
  ToolBar1: TToolBar);
function GETProject4Function: Integer;
function ReadAcc_BankConfig(OptionName: string;
  DefaultValue: string = ''): string;
function StandardDays(MonthNo: byte; var CurrentDate: String): Integer;
function SpeedButtonTopicCode(OldCode: String): String;
function SpeedButtonDetailCode(OldCode: String; TopicCode: Integer;
  filte: Boolean = True): String;
function SpeedButtonCTopicCode(OldCode: String; TopicCode: Integer;
  filte: Boolean = True): String;
function SpeedButtonCTopicCode2(OldCode: String; CTopiccode: Integer): String;
function SpeedButtonCTopicCode3(OldCode: String; CTopiccode: Integer;
  FilterCTopics2And3: Boolean = True): String;
procedure MakeTableToZip(TableName: String; ADC: TADOConnection);
procedure LoadTableFromZip(qry4Update: TADOQuery; TableName: String;
  fldName: String; OnlyInsert: Boolean);
function ValidateDocument(qry_Documents: TDataSet;
  lslWarnings: TListBox): Boolean;
function ValidateArticle(out ResultMessage: String;
  qry_Documents: TDataSet): Boolean;
function HasDetail(c: Cardinal): Boolean;
function IsValidDetailForMoeen(TopicCode, DetailCode: Integer): Boolean;
function HasExpenseCode(c: Cardinal): Boolean;
function HasExpenseCode2(c: Cardinal): Boolean;
function IsValidCTopicForMoeen(TopicCode, CTopiccode: Integer): Boolean;
function IsValidCTopic2ForCTopics(CTopicCode2, CTopiccode: Integer): Boolean;
function Month2Names(i: Integer): string;
procedure ClearDoc;
function GetCheckList(ChkLstBox: TCheckListBox): String;
procedure initCheckList(ChkLstBox: TCheckListBox; checkeds: String);
function LoanDelete(DecExtID: Integer): Boolean;
function FormInfoDelete(FormInfoID: Integer): Boolean;
procedure GetYearMounth(Mounth: byte);
function GetStandaredDay(MonthNoFrom, MonthNoTo: byte): Integer;
function GetMounthName(MonthNo: byte; T_ext: String): String;
function GetFunctionsItems_(qry: TADOQuery; SumGrid1: TSumGrid;
  var ts: TStringList): String;
// function SendWarnings(qry_Documents: TADOQuery;lslWarnings: TListBox):Boolean;
function CheckUserlevel(LevelID: Integer; msgActive: Boolean = True): Boolean;
function GetProject2Interdicts(No: Integer): Integer;
procedure initAccCombos(CmbDocType, cmbCompany: TComboBox);
function checkSecondaryDocNo(SecondaryDocNo, CompanyCode, YearID: Integer;
  NewDoc: Boolean): Boolean;
function checkArchiveID(Mounth: byte; qry: TADOQuery): Boolean;
procedure GetAProject_OfficeID(Field_Name: String; qry: TADOQuery;
  YearID, MonthNo: Integer);
function GetNewInfoID(FormInfoID: Integer; formType: Integer;
  qry: TADOQuery): Integer;
function FunctionDelete(PersonelNo, MonthNo: Integer): Boolean;
// function GetSecondaryDocNo(cmbCompany: TComboBox; YearID: Integer): string;
procedure SetSituation(TabelName: string; Situation, Mounth: byte;
  PrsnlNo1, PrsnlNo2: string; qryini: TADOQuery);
procedure SetSituationAll(Situation, Mounth: byte; PrsnlNo1, PrsnlNo2: string;
  qryini: TADOQuery);
function EditSituation(DataSet: TDataSet): Boolean;
function GetSituation(Situation: Integer): string;
procedure SetSelectedSituation(DBGrid1: TDBGrid; DataSet: TDataSet;
  Situation: byte; tName, IdName: string; qryini: TADOQuery); overload;
procedure SetSelectedSituation(DBGrid1: TCedarDbgrid; DataSet: TDataSet;
  Situation: byte; tName, IdName: string; qryini: TADOQuery); overload;

function RemainLoan(PersonelNo, DecExtID: Integer): Currency;
procedure DecSet(qry: TADOQuery);
function FunctionDateChech(var FunctionDay: Integer; var CurrentDate: String;
  qryPersonel, qryFunctions: TADOQuery): Boolean;
function chkPersonelState(PersonelStateInfoID: Integer): Boolean;
procedure LookUpSearch(Sender: TDBComboBox; QryLookup: TADOQuery;
  formType: Integer);
// procedure GetSecondaryDocNo(cmbCompany: TComboBox; MskDocNo: TMaskEdit;
// YearID: Integer);
// procedure GetSerial(cmbCompany: TComboBox; MskSerial: TMaskEdit;
// YearID: Integer);
procedure InitAllSpeedButton(FName: TForm; aNotifyEvent: TNotifyEvent);
function validDateInMah(Date_s, InterdicEndDate: string): Boolean;
procedure AllUpdatePersonelDecExt(ActCaption, UPDATEFieldname, WHEREStr: string;
  DBGrid1: TCedarDbgrid; qryPersonelDecExt: TADOQuery);
procedure GetPersonalPicture(Pic: TPicture; PersonelNo: Integer);
// function GetSelectedRowsDBGrid(grd: TDBGrid; FieldRowName: String)
// : String; overload;
// function GetSelectedRowsDBGrid(grd: TCedarDbgrid; FieldRowName: String)
// : String; overload;

function CheckDouplicte(qryDecExt: TADOQuery): Boolean;
procedure CallOtherForms(myForm: Tform_Name; ID, DesignFormID: Integer;
  qry: TDataSet);
function UnicFieldName(IDField, Field4DuplicateValue: TField; tblName: String;
  WHERESQL: string = ''): Boolean;
procedure GetFunctionsItems(var FunItems, FunItems4Sum: string;
  qrysalary: TADOQuery; DBGrid1: TCedarDbgrid);
procedure GetFunctionsItemsParam(var FunItems, FunItems4Sum, FunCations,
  FunItems4Groupby: string; qrysalary: TADOQuery; DBGrid1: TCedarDbgrid;
  SendParams: TParams; MounthFrom, MounthTo: Integer);
function TimeToDesimal(Time: Integer): Real;
function DesimalToTime(desimal: Real): Real;
function FloatToTime(TimeFloat: Real): string;
function SumFunctionDay(var FunctionDay: Integer; var MonthNo: byte;
  var DayStandard: byte; qryFunctions: TADOQuery; var Message_: string)
  : Boolean;
procedure CustIDToDetailCode(qryCustomers: TADOQuery; GroupType: Integer);
function setInOrNotIn4QRy(qry: TADOQuery; My_Params: TParams;
  paramname, ColumnName: string): string;
function GetTableFieldNames(ADC: TADOConnection; SchemaName: string;
  TableName: String): String;
procedure initDBComboInsurance(comboInsuranceNo: TComboBox);
procedure Check_JobPromissory(qryInterdicts: TDataSet);
function CreateStoredProc(const ProcName: string; const Conn: TADOConnection)
  : TADOStoredProc;

implementation

uses shamsiDate, mmessage, dm, RptReports, searchCode_ADO, Math, DateUtils,
  FaraConsts, AccFunctions, DMSMS, GeneralDM;

function CheckDouplicte(qryDecExt: TADOQuery): Boolean;
var
  PersonelNo, DecExtID, Count: Integer;
  cloned: TADOQuery;
begin
  cloned := TADOQuery.Create(dmf);
  Count := 0;
  DecExtID := qryDecExt.FieldByName('DecExtID').AsInteger;
  PersonelNo := qryDecExt.FieldByName('PersonelNo').AsInteger;
  With cloned do
  begin
    Clone(qryDecExt, ltReadOnly);
    First;
    while not Eof do
    begin
      if (FieldByName('PersonelNo').AsInteger = PersonelNo) and
        (FieldByName('DecExtID').AsInteger <> DecExtID) then
        inc(Count);
      Next;
    end;
    Free;
  end;
  Result := Count > 0;
  if Result then
    if get_response('براي اين پرسنل ' + IntToStr(Count) +
      ' مورد ديگر ثبت شده آيا اين مورد هم اضافه شود؟') = mrNo then
      Abort;

end;

function validDateInMah(Date_s, InterdicEndDate: string): Boolean;
begin
  if { optP.ActivePayRoll } True then
    Result := (MidStr(Date_s, 6, 2) > MidStr(InterdicEndDate, 6, 2))
  else
    Result := (MidStr(Date_s, 6, 2) >= MidStr(InterdicEndDate, 6, 2));
  if (MidStr(Date_s, 1, 4) > MidStr(InterdicEndDate, 1, 4)) then
    Result := True;
end;

// procedure GetSecondaryDocNo(cmbCompany: TComboBox; MskDocNo: TMaskEdit;
// YearID: Integer);
// var
// SQL: string;
// SecondaryDocNo: Largeint;
// begin
// SQL := Format('SELECT max(SecondaryDocNo) FROM %sDocGroups ' +
// 'WHERE (SecondaryDocNo BETWEEN %d AND %d) ',
// [opt.AccOwnerName, opt.AccStartLimitID, opt.AccEndLimitID]);
//
// if ReadAcc_BankConfig('RestDocCode', '1') = '1' then
// SQL := SQL + Format('AND (CompanyCode = %d )',
// [Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])]);

// if not opt.AccOldAvailable then
// SQL := SQL + Format(' AND (YearID = %d )', [YearID]);
//
// SecondaryDocNo := GetANewCodeAcc(SQL, 'SecondaryDocNo',
// DMF.qryTopicCode.Connection);
//
// if SecondaryDocNo < opt.AccStartLimitID then
// MskDocNo.Text := IntToStr(opt.AccStartLimitID)
// else
// MskDocNo.Text := IntToStr(SecondaryDocNo);
//
// end;

// procedure GetSerial(cmbCompany: TComboBox; MskSerial: TMaskEdit;
// YearID: Integer);
// var
// SQL: string;
// serial: Largeint;
// begin
// SQL := 'SELECT max(Serial) FROM %sDocGroups WHERE (CompanyCode = %d)' +
// 'AND (serial BETWEEN %d AND %d)';
// SQL := Format(SQL, [opt.AccOwnerName,
// Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]),
// opt.AccStartLimitID, opt.AccEndLimitID]);
// if not opt.AccOldAvailable then
// SQL := SQL + Format(' AND (YearID = %d )', [YearID]);
//
// if not opt.AccOldAvailable then
// begin
// serial := GetANewCodeAcc(SQL, 'Serial', DMF.adcAccounting);
//
// if serial < opt.AccStartLimitID then
// MskSerial.Text := IntToStr(opt.AccStartLimitID)
// else
// MskSerial.Text := IntToStr(serial);
//
// end;
//
// end;

procedure LookUpSearch(Sender: TDBComboBox; QryLookup: TADOQuery;
  formType: Integer);
var
  sqltxt: String;
  results: array [0 .. 1] of string;
  // aDataSet: TDataSet;
  // fData_Field: string;
begin
  if not Assigned(Sender) then
    exit;
  // fData_Field := Sender.DataField;
  // aDataSet := (Sender as TDBComboBox).ListSource.DataSet;
  sqltxt := 'SELECT FormInfoID,InfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo WHERE FormType='
    + IntToStr(formType);
  if searchCode_ADOF.SearchCode2(dmf.adcSalary, 'جستجو كد ', sqltxt,
    ['', 'کد', 'عنوان'], results, [0, 50, 300], alLeft) then
    // Warn(results[0]);
    QryLookup.FieldByName(Sender.DataField).AsString := results[0];
end;

function chkPersonelState(PersonelStateInfoID: Integer): Boolean;
begin
  Result := PersonelStateInfoID < 51;
  if not Result then
    Warn('وضعيت پرسنل در وضعيت غيرفعال(كد بالاي 50)قرار دارد و قابل ثبت نيست' +
      #13#10 + 'وضعيت پرسنل در معرفي پرسنل بررسي شود', mtInformation);
end;

function FunctionDateChech(var FunctionDay: Integer; var CurrentDate: String;
  qryPersonel, qryFunctions: TADOQuery): Boolean;
var
  s: String;
  // HasFunDay: Integer;
begin
  Result := True;
  s := MidStr(CurrentDate, 1, 8) +
    RightStr('00' + qryFunctions.FieldByName('FunctionDay').AsString, 2);
  if qryPersonel.FieldByName('InterdicEndDate').AsString < s then
  begin
    Warn('لطفأ تاريخ پايان قرارداد كنترل شود.‏');
    Abort;
  end;
  if qryFunctions.FieldByName('FunctionDay').AsFloat + qryFunctions.FieldByName
    ('FunctionTime').AsFloat + qryFunctions.FieldByName('SickDay').AsFloat = 0
  then
  begin
    Warn('ساعت/روز/روزهاي بيماري را وارد كنيد.‏');
    Result := False;
  end;

  // s := MidStr(CurrentDate, 1, 6) + '01';
  // StartDate := LeftStr(qryPersonel.FieldByName('InterdicStartDate')
  // .AsString, 6);
  // // if StartDate > LeftStr(s, 6) then
  // // begin
  // // Warn('لطفأ تاريخ شروع قرارداد كنترل شود.‏');
  // /// /    Result := False;
  // // end;
  //
  // s := MidStr(CurrentDate, 1, 6) + RightStr('00' + IntToStr(FunctionDay), 2);
  // if StartDate = LeftStr(s, 6) then
  // begin
  // StartDate := qryPersonel.FieldByName('InterdicStartDate').AsString;
  // StartDate := RightStr(StartDate, 2);
  // s := RightStr(CurrentDate, 2);
  // HasFunDay := StrToInt(s) - StrToInt(StartDate) + 1;
  // if FunctionDay > HasFunDay then
  // begin
  // Warn('تاريخ شروع قرارداد با روزهاي كاركرد ثبت شده همخواني ندارد.‏');
  // // Result := False;
  // end;
  // end;

end;

procedure DecSet(qry: TADOQuery);
begin
  With qry do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      edit;
      qry.FieldByName('_Dec').AsString := qry.FieldByName('Dec').AsString;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

function RemainLoan(PersonelNo, DecExtID: Integer): Currency;
begin
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT SUM(pde.EmployerAmount - pde.PaymentLoan - ISNULL(fc.sumPrice, 0)) AS RemainLoan';
    SQL.Add('FROM Pay.PersonelDecExt AS pde');
    SQL.Add('INNER JOIN Pay.FormsInfo AS fi ON pde.FormInfoID = fi.FormInfoID');
    SQL.Add('INNER JOIN Pay.FormTypes AS ft ON fi.FormType = ft.FormType');
    SQL.Add('LEFT OUTER JOIN (');
    SQL.Add('  SELECT fc2.PersonelNO, fc2.SalaryID, fc2.FunctionID, SUM(fc2.Price) AS sumPrice');
    SQL.Add('  FROM Pay.FixedCalculated AS fc2');
    SQL.Add('  INNER JOIN Pay.FixedCalActive() AS fca ON');
    SQL.Add('    fc2.Mounth = fca.Mounth AND');
    SQL.Add('    fc2.ArchiveID = fca.F_ArchiveID AND');
    SQL.Add('    fc2.YearID = fca.YearID AND');
    SQL.Add('    fc2.Years = fca.Years AND');
    SQL.Add('    fc2.PersonelNO = fca.PersonelNO');
    SQL.Add('  LEFT OUTER JOIN Pay.StandardTimes AS st ON fc2.Mounth = st.InfoID');
    SQL.Add('  WHERE fc2.BedBes = 2');
    SQL.Add('  GROUP BY fc2.PersonelNO, fc2.SalaryID, fc2.FunctionID');
    SQL.Add(') AS fc ON');
    SQL.Add('  pde.PersonelNo = fc.PersonelNO AND');
    SQL.Add('  pde.DecExtID = fc.FunctionID AND');
    SQL.Add('  pde.FormInfoID = fc.SalaryID');
    SQL.Add('WHERE ft.SalaryKind IN (9, 14) AND pde.PersonelNo = :PersonelNoFrom');

    if DecExtID <> 0 then
    begin
      SQL.Add('AND pde.DecExtID = :DecExtID');
      Parameters.ParamByName('DecExtID').Value := DecExtID;
    end;

    Parameters.ParamByName('PersonelNoFrom').Value := PersonelNo;
    Active := True;
    Result := FieldByName('RemainLoan').AsCurrency;
    Active := False;
  end;
end;

function EditSituation(DataSet: TDataSet): Boolean;
begin
  Result := True;
  if User.PowerUser then
  begin
    if DataSet.FieldByName('Situation').AsInteger <> 0 then
      Warn2('امكان ويرايش يا حذف(برای کاربر) به علت قطعي شدن اطلاعات وجود ندارد');
    exit;
  end;
  Result := DataSet.FieldByName('Situation').AsInteger = 0;
  if not Result then
    Warn('امكان ويرايش يا حذف به علت قطعي شدن اطلاعات وجود ندارد');
end;

function GetSituation(Situation: Integer): string;
begin
  case Situation of
    0:
      Result := 'موقت';
    1:
      Result := 'قطعی';
  else
    Result := '';
  end;

end;

procedure SetSituation(TabelName: string; Situation, Mounth: byte;
  PrsnlNo1, PrsnlNo2: string; qryini: TADOQuery);
begin
  if qryini <> nil then
  begin
    if Situation = 0 then
    begin
      if not CheckUserlevel(qryini.FieldByName('ChangeStateLevelID').AsInteger)
      then
        Abort;
    end
    else
    begin
      if not CheckUserlevel(qryini.FieldByName('FinalStateEditLevelID')
        .AsInteger) then
        Abort;
    end;
  end;
  with dmf.qryTmpTmpp do
  begin
    SQL.Text := 'UPDATE ' + TabelName;
    SQL.Add('SET Situation = :Situation');

    if TabelName = 'Pay.Functions' then
      SQL.Add(Format('WHERE (Mounth = %d )', [Mounth]))
    else if TabelName = 'Pay.FunctionDay' then
      SQL.Add(Format('WHERE   (ABS(SUBSTRING(FunDate, 6, 2)) = %d) ', [Mounth]))
    else
      SQL.Add(Format('WHERE (FirstMounth <= %d) AND (EndMounth >= %d)',
        [Mounth, Mounth]));

    if TabelName = 'Pay.FunctionDay' then
      SQL.Add('AND (FunNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)')
    else
      SQL.Add('AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)');

    SQL.Add('AND(YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Parameters.ParamByName('Situation').Value := Situation;
    Parameters.ParamByName('PersonelNoFrom').Value := PrsnlNo1;
    Parameters.ParamByName('PersonelNoTo').Value := PrsnlNo2;
    BigMessage(IntToStr(ExecSQL) + 'قطعي شد.‏', 1);
  end;
end;

procedure SetSituationAll(Situation, Mounth: byte; PrsnlNo1, PrsnlNo2: string;
  qryini: TADOQuery);
begin
  SetSituation('Pay.Functions', Situation, Mounth, PrsnlNo1, PrsnlNo2, qryini);
  SetSituation('Pay.PersonelDecExt', Situation, Mounth, PrsnlNo1,
    PrsnlNo2, qryini);
  SetSituation('Pay.FunctionDay', Situation, Mounth, PrsnlNo1,
    PrsnlNo2, qryini);
end;

procedure SetSelectedSituation(DBGrid1: TDBGrid; DataSet: TDataSet;
  Situation: byte; tName, IdName: string; qryini: TADOQuery); overload;
var
  i: Integer;
  s: string;
  Caption: string;
begin
  if (DBGrid1 <> nil) and (DBGrid1.SelectedRows.Count = 0) then
  begin
    Warn('سطري انتخاب نشده');
    exit;
  end;
  if Situation = 0 then
  begin
    if not CheckUserlevel(qryini.FieldByName('ChangeStateLevelID').AsInteger)
    then
      Abort;
    Caption := 'موقت'
  end
  else
  begin
    if not CheckUserlevel(qryini.FieldByName('FinalStateEditLevelID').AsInteger)
    then
      Abort;
    Caption := 'قطعي';
  end;

  if DBGrid1 <> nil then
  begin
    if get_response('آيا براي ' + Caption +
      ' كردن سطرهاي انتخاب شده مطمئن هستيد؟') <> mrYes then
      exit;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if s <> '' then
          s := s + ',';
        s := s + FieldByName(IdName).AsString;
      end;
  end
  else
    s := DataSet.FieldByName(IdName).AsString;
  If s = '' then
    exit;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE ' + tName;
    SQL.Add('SET Situation = :Situation');
    SQL.Add('WHERE ' + IdName + ' IN (' + s + ')');
    Parameters.ParamByName('Situation').Value := Situation;
    try
      BigMessage(IntToStr(ExecSQL) + ' ' + Caption + '  شد.', 2);
      Active := False;
    except
      on E: Exception do
      begin
        Warn('اشكال در ' + Caption + ' كردن‌' + E.Message);
      end;
    end; // try
  end; // with

end;

procedure SetSelectedSituation(DBGrid1: TCedarDbgrid; DataSet: TDataSet;
  Situation: byte; tName, IdName: string; qryini: TADOQuery); overload;
var
  i: Integer;
  s: string;
  Caption: string;
begin
  if (DBGrid1 <> nil) and (DBGrid1.SelectedRows.Count = 0) then
  begin
    Warn('سطري انتخاب نشده');
    exit;
  end;
  if Situation = 0 then
  begin
    if not CheckUserlevel(qryini.FieldByName('ChangeStateLevelID').AsInteger)
    then
      Abort;
    Caption := 'موقت'
  end
  else
  begin
    if not CheckUserlevel(qryini.FieldByName('FinalStateEditLevelID').AsInteger)
    then
      Abort;
    Caption := 'قطعي';
  end;

  if DBGrid1 <> nil then
  begin
    if get_response('آيا براي ' + Caption +
      ' كردن سطرهاي انتخاب شده مطمئن هستيد؟') <> mrYes then
      exit;
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        if s <> '' then
          s := s + ',';
        s := s + FieldByName(IdName).AsString;
      end;
  end
  else
    s := DataSet.FieldByName(IdName).AsString;
  If s = '' then
    exit;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE ' + tName;
    SQL.Add('SET Situation = :Situation');
    SQL.Add('WHERE ' + IdName + ' IN (' + s + ')');
    Parameters.ParamByName('Situation').Value := Situation;
    try
      BigMessage(IntToStr(ExecSQL) + ' ' + Caption + '  شد.', 2);
      Active := False;
    except
      on E: Exception do
      begin
        Warn('اشكال در ' + Caption + ' كردن‌' + E.Message);
      end;
    end; // try
  end; // with

end;


// function GetSecondaryDocNo(cmbCompany: TComboBox; YearID: Integer): string;
// var
// s2: string;
// begin
// Result := 'SELECT max(SecondaryDocNo) FROM ' + opt.AccOwnerName +
// 'DocGroups ';
// s2 := ' AND ';
// if ReadAcc_BankConfig('RestDocCode', '1') = '1' then
// Result := Result + 'WHERE CompanyCode=' +
// IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]))
// else
// s2 := ' WHERE '
// if not opt.AccOldAvailable then
// Result := Result + s2 + ' YearID = ' + IntToStr(YearID);
// end;

function FunctionDelete(PersonelNo, MonthNo: Integer): Boolean;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(dmf);
  with qry do
    try
      Connection := dmf.adcSalary;
      Active := False;
      SQL.Text := 'SELECT count(Mounth) cMounth FROM Pay.FixedCalculated';
      SQL.Add('WHERE (PersonelNO = :PersonelNO )');
      SQL.Add('AND (Mounth = :Mounth )');
      SQL.Add('AND (ArchiveID > 0)');
      if (CompanyFilterinLogin) and (not User.PowerAdmin) then
      begin
        SQL.Add('AND((subcompanyCode = 0)OR(subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo ))');
        Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
        Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
      end;
      SQL.Add('AND  (Years = ' + optP.Year + ' ) AND  (YearID = ' +
        APPBank.Year.ToString + ' )');
      // Parameters.ParamByName('YearID').Value :=;
      // Parameters.ParamByName('Years').Value := ;

      Parameters.ParamByName('PersonelNO').Value := PersonelNo;
      Parameters.ParamByName('Mounth').Value := MonthNo;
      Active := True;
      Result := Fields[0].AsInteger = 0;
      Active := False;
      if not Result then
      begin
        Warn('از اطلاعات اين فرم در محاسبات حقوق استفاده شده' +
          ' و قابل حذف/ویرایش نيست' + #13#10 +
          'بعد از حذف محاسبه این پرسنل اقدام کنید.');
        Abort;
      end;

    finally
      Free;
    end;

end;

function GetNewInfoID(FormInfoID: Integer; formType: Integer;
  qry: TADOQuery): Integer;
var
  b: Boolean;
begin
  if FormInfoID <> 0 then
    With TADOStoredProc.Create(nil) do
    begin
      Connection := dmf.adcSalary;
      ProcedureName := 'Pay.GetInfoID';
      Parameters.Refresh;
      Parameters.ParamByName('@FormInfoID').Value := FormInfoID;
      Parameters.ParamByName('@FormType').Value := formType;
      ExecProc;
      Result := Parameters.ParamByName('@RETURN_VALUE').Value;
      Free;
    end
  else
    Result := GetANewCode('', 'SELECT MAX(InfoID) FROM Pay.FormsInfo ' +
      ' WHERE(FormType = ' + IntToStr(formType) + ')', 'InfoID');

  b := qry.FieldByName('InfoID').ReadOnly;
  qry.FieldByName('InfoID').ReadOnly := False;
  qry.FieldByName('InfoID').AsInteger := Result;
  qry.FieldByName('InfoID').ReadOnly := b;

end;

procedure GetAProject_OfficeID(Field_Name: String; qry: TADOQuery;
  YearID, MonthNo: Integer);
begin
  GetYearMounth(MonthNo);
  if UpperCase(Field_Name) = UpperCase('ProjectInfoID') then
    with dmf.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT Interdicts.PersonelNo, Interdicts.ProjectID, FormsInfo.InfoID AS ProjectInfoID ';
      SQL.Add('FROM Pay.Interdicts INNER JOIN');
      SQL.Add('Pay.FormsInfo ON Pay.Interdicts.ProjectID = FormsInfo.FormInfoID');
      SQL.Add('WHERE (Interdicts.PersonelNo = :PersonelNo)');
      SQL.Add('AND (( :Date BETWEEN SUBSTRING(Interdicts.InterdicStartDate, 1, 7)');
      SQL.Add('AND  SUBSTRING(Interdicts.InterdicEndDate, 1, 7)))');
      SQL.Add('ORDER BY Interdicts.InterdictID DESC');
      Parameters.ParamByName('PersonelNo').Value :=
        qry.FieldByName('PersonelNo').AsString;
      Parameters.ParamByName('Date').Value := optP.YearMounth;
      // Parameters.ParamByName('Date').Value := IntToStr(YearID) + '/' +
      // RightStr ('00' + IntToStr(MonthNo), 2);
      Active := True;
      qry.FieldByName(Field_Name).AsInteger := FieldByName('ProjectInfoID')
        .AsInteger;
      if qry.FindField('FormInfoID2') <> nil then
        qry.FieldByName('FormInfoID2').AsInteger := FieldByName('ProjectID')
          .AsInteger;

      Active := False;
    end
  else
    with dmf.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := 'SELECT Interdicts.' + Field_Name + ' ,FormsInfo.InfoID  ';
      SQL.Add('FROM Pay.Interdicts INNER JOIN');
      SQL.Add('Pay.FormsInfo ON Pay.Interdicts.' + Field_Name +
        ' = FormsInfo.FormInfoID');

      SQL.Add('WHERE (PersonelNo = :PersonelNo)');
      SQL.Add('AND (( :Date BETWEEN SUBSTRING(Interdicts.InterdicStartDate, 1, 7)');
      SQL.Add('AND  SUBSTRING(Interdicts.InterdicEndDate, 1, 7)))');
      SQL.Add('ORDER BY InterdictID DESC');
      Parameters.ParamByName('PersonelNo').Value :=
        qry.FieldByName('PersonelNo').AsString;

      Parameters.ParamByName('Date').Value := optP.YearMounth;
      // Parameters.ParamByName('Date').Value := IntToStr(YearID) + '/' +
      // RightStr('00' +  IntToStr(MonthNo), 2);
      Active := True;
      qry.FieldByName(Field_Name).AsInteger := Fields[0].AsInteger;
      if qry.FindField('OfficeInfoID') <> nil then
        qry.FieldByName('OfficeInfoID').AsInteger := Fields[1].AsInteger;

      Active := False;
    end;

end;

function checkArchiveID(Mounth: byte; qry: TADOQuery): Boolean;
begin
  // with DMF.qryTmpTmpp do
  // begin
  // Active:=False;
  // SQL.Text:='SELECT COUNT(*) FROM Pay.FixedCalculated WHERE ( Ar chiveID > 0)  ';
  // SQL.Add  ('AND (Mounth = :Mounth)');
  // Parameters.ParamByName('Mounth').Value:=Mounth;
  // Active:=True;
  // Result:=Fields[0].AsInteger=0;
  // if not Result then
  // begin
  // Warn('اطلاعات در اين ماه بايگاني شده است و قابل ويرايش نمي باشد.‏',mtInformation);
  // qry.LockType:=ltReadOnly;
  // end;
  // Active:=False;
  // end;
  Result := True;
  exit;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT MAX(ArchiveDate) FROM Pay.FixedCalculated ';
    Active := True;
    Result := Fields[0].AsString > var_glb_CurrentDate;
    if not Result then
    begin
      Warn('اطلاعات در اين ماه بايگاني شده است و قابل ويرايش نمي باشد.‏',
        mtInformation);
      qry.LockType := ltReadOnly;
    end;
    Active := False;
  end;
end;

function checkSecondaryDocNo(SecondaryDocNo, CompanyCode, YearID: Integer;
  NewDoc: Boolean): Boolean;
begin
  if not NewDoc then
  begin
    Result := True;
    exit;
  end;
  with dmf.qryAccOldAndNew do
  begin
    Close;
    if optA.AccOldAvailable then
    begin
      SQL.Text := 'SELECT count(SecondaryDocNo) FROM  DocGroups ';
      SQL.Add(' where SecondaryDocNo = %d AND CompanyCode = %d  ');
      SQL.Add(' GROUP BY SecondaryDocNo');
      SQL.Text := Format(SQL.Text, [SecondaryDocNo, CompanyCode]);

    end

    else

    begin
      SQL.Text := 'SELECT count(SecondaryDocNo) FROM  acc.DocGroups ';
      SQL.Add(' where SecondaryDocNo = %d AND CompanyCode = %d and YearID =%d ');
      SQL.Add(' GROUP BY SecondaryDocNo');
      SQL.Text := Format(SQL.Text, [SecondaryDocNo, CompanyCode, YearID]);

    end;
    Open;
    Result := IsEmpty;
    if not Result then
      Warn('شماره فرعي تكراري است.');
  end;
end;

procedure initAccCombos(CmbDocType, cmbCompany: TComboBox);
begin
  CmbDocType.Clear;
  with dmf.qryAccOldAndNew do
  begin
    Active := False;
    SQL.Text :=
      'SELECT InfoID AS DocTypeCode, InfoName_L1 AS DocTypeName_L1, InfoName_L2 AS DocTypeName_L2';
    SQL.Add('FROM Acc.FormsInfo');
    SQL.Add('WHERE (FormType = 1)');
    if optA.AccOldAvailable then
    begin
      SQL.Text :=
        'SELECT DocTypes.DocType as DocTypeCode,DocTypes.Desc as DocTypeName_L1 ,DocTypes.Desc as DocTypeName_L2 FROM DocTypes ';
      Connection := dmf.adcOldAccounting;
    end;
    Active := True;
    while not Eof do
    begin
      CmbDocType.AddItem(IfThen(optP.primaryLanguage = 0,
        FieldByName('DocTypeName_L1').AsString, FieldByName('DocTypeName_L2')
        .AsString), TObject(FieldByName('DocTypeCode').AsInteger));
      Next;
    end; // while

    CmbDocType.ItemIndex := CmbDocType.Items.IndexOfObject
      (TObject(optP.DocTypeCode));
  end; // with
  cmbCompany.Clear;
  with dmf.qryAccOldAndNew do
  begin
    Active := False;
    SQL.Text :=
      'SELECT CompanyCode,CompanyName_l1 FROM  Acc.Companies ORDER BY CompanyCode';
    if optA.AccOldAvailable then
    begin
      SQL.Text :=
        'SELECT CompanyCode,CompanyName FROM  Companies ORDER BY CompanyCode';
      Connection := dmf.adcOldAccounting;
    end;
    Active := True;
    while not Eof do
    begin
      cmbCompany.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      if optA.AccDefaultCompany = Fields[0].AsInteger then
        cmbCompany.ItemIndex := cmbCompany.Items.Count - 1;

      Next;
    end; // while
    Active := False;
    if cmbCompany.Items.Count = 0 then
      Warn('هيچ شركتي در حسابداري تعريف نشده!!.‏');
  end; // with
end;

Function GetProject2Interdicts(No: Integer): Integer;
begin
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT ProjectID FROM Pay.Interdicts ' +
      'WHERE (State < 50) AND (PersonelNo = ' + IntToStr(No) + ')';
    Active := True;
    Result := FieldByName('ProjectID').AsInteger;
  end // with
end;

function CheckUserlevel(LevelID: Integer; msgActive: Boolean = True): Boolean;
begin
  Result := True;
  if LevelID > User.level then
  begin
    if msgActive then
      Warn('محدوديت سطح كاربري در دسترسي به امكانات سيستم', mtInformation);
    Result := False;
  end;
end;

function GetFunctionsItems_(qry: TADOQuery; SumGrid1: TSumGrid;
  var ts: TStringList): String;
var
  i: Integer;
  s: String;
begin
  Result := EmptyStr;
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'exec Pay.GetFunctionsItems ' + APPBank.Year.ToString + ',' +
      APPBank.Year.ToString;
    ExecSQL;
    Active := False;
  end;
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT FunctionsItems.SalaryID, FormsInfo.InfoName_L1 FROM Pay.Functions INNER JOIN';
    SQL.Add('Pay.FunctionsItems ON Functions.FunctionID = FunctionsItems.FunctionID INNER JOIN');
    SQL.Add('Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID');
    SQL.Add('WHERE (Functions.Mounth >= 1)');

    SQL.Add('AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    SQL.Add('GROUP BY FunctionsItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoID');
    SQL.Add('ORDER BY FormsInfo.InfoID');
    Active := True;
    i := 1;
    ts.Text := '';
    while (not Eof) do
    begin
      Result := Result + ',FunctionItemsList_1._Amount' + IntToStr(i);
      ts.Add(FieldByName('InfoName_L1').AsString);
      inc(i);
      Next;
    end;
    Active := False;
  end;
  s := StringReplace(Result, ',FunctionItemsList_1.', ';', [rfReplaceAll]);
  s := copy(s, 2, length(s) - 1);
  s := 'FunctionDay;FunctionTime;' + s + ';';
  if SumGrid1 <> nil then
  begin
    s := StringReplace(SumGrid1.FieldsName, 'FunctionDay;FunctionTime;', s,
      [rfReplaceAll]);
    SumGrid1.FieldsName := s;
  end;

end;

function GetStandaredDay(MonthNoFrom, MonthNoTo: byte): Integer;
begin
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT SUM(StandardDays) AS StandardDays';
    SQL.Add('FROM Pay.StandardTimes');
    SQL.Add('WHERE (InfoID BETWEEN :MonthNoFrom AND :MonthNoTo)');
    Parameters.ParamByName('MonthNoFrom').Value := MonthNoFrom;
    Parameters.ParamByName('MonthNoTo').Value := MonthNoTo;
    Active := True;
    Result := FieldByName('StandardDays').AsInteger;
    Active := False;
  end;
end;

function GetMounthName(MonthNo: byte; T_ext: String): String;
begin
  GetYearMounth(MonthNo);
  with dmf.qryTmpTmpp do
  begin
    SQL.Text := 'SELECT InfoID, InfoName_L1';
    SQL.Add('FROM Pay.StandardTimes');
    SQL.Add('WHERE InfoID = ' + IntToStr(MonthNo));
    Active := True;
    Result := T_ext + ' ' + FieldByName('InfoName_L1').AsString + ' ماه  ' +
      optP.Year;
    Active := False;
  end;
end;

procedure GetYearMounth(Mounth: byte);
var
  Qry: TADOQuery;
begin
  Qry := TADOQuery.Create(dmf);
  try
    Qry.Connection := dmf.adcSalary;
    Qry.SQL.Text := 'SELECT Pay.GetYearMounth(' +
                    IntToStr(Mounth) + ',' +
                    APPBank.Year.ToString + ')';
    Qry.Active := True;

    optP.YearMounth := Qry.Fields[0].AsString;
    optP.Year := MidStr(optP.YearMounth, 1, 4);

  finally
    FreeAndNil(Qry);   // امن و جلوگیری از Memory Leak
  end;
end;

procedure AllUpdatePersonelDecExt(ActCaption, UPDATEFieldname, WHEREStr: string;
  DBGrid1: TCedarDbgrid; qryPersonelDecExt: TADOQuery);
var
  i: Integer;
  s: string;
begin
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي ' + ActCaption +
      ' مورد‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes then
      exit;
  with DBGrid1.DataSource.DataSet do
  begin
    // DisableControls;
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('DecExtID').AsString;
    end;
    EnableControls;
  end;
  If s = '' then
    exit;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.PersonelDecExt  SET ' + UPDATEFieldname +
      '   WHERE DecExtID IN (' + s + ')';
    SQL.Add(WHEREStr);
    try
      BigMessage(IntToStr(ExecSQL) + ' مورد‌ ' + ActCaption + ' شد.', 2);
      Active := False;
      i := qryPersonelDecExt.FieldByName('DecExtID').AsInteger;
      qryPersonelDecExt.Active := False;
      qryPersonelDecExt.Open;
      qryPersonelDecExt.Locate('DecExtID', i, [])
    except
      on E: Exception do
      begin
        Warn('اشكال در ثبت‌' + E.Message);
      end;
    end; // try
  end; // with
end;

function LoanDelete(DecExtID: Integer): Boolean;
begin
  Result := True;
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(PersonelNO) AS COUNTPersonelNO ';
    SQL.Add('FROM Pay.FixedCalculated');
    SQL.Add('WHERE     (CalCulateKind IN (9, 14)) ');
    SQL.Add('AND (FunctionID = ' + IntToStr(DecExtID) + ')');
    Active := True;
    if FieldByName('COUNTPersonelNO').AsInteger > 0 then
    begin
      Warn('از اين وام در  ' + FieldByName('COUNTPersonelNO').AsString +
        ' مورد از محاسبات استفاده شده است و قابل حذف نيست!.‏');
      Result := False;
    end
    else if get_response('آيا از حذف وام مطمئن هستيد.') <> mrYes then
      Result := False;
    Active := False;
  end;
end;

function FormInfoDelete(FormInfoID: Integer): Boolean;
begin
  Result := True;
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT TOP (1)';
    SQL.Add(' ''از اين کد در محاسبات پرسنل  ''+LTRIM(PersonelNo)+'' PersonelDecExt'' AS TabelName');
    SQL.Add('FROM Pay.PersonelDecExt');
    SQL.Add('WHERE (FormInfoID2 = :FormInfoID2) OR');
    SQL.Add('(FormInfoID = :FormInfoID1)');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT TOP (1) ''از اين کد در محاسبات کد  ''+LTRIM(FormInfoID)+'',''+LTRIM(SalaryID)+'' SalaryRange'' AS TabelName');
    SQL.Add('FROM Pay.SalaryRange');
    SQL.Add('WHERE (FormInfoID = :FormInfoID3) OR');
    SQL.Add('(SalaryID = :FormInfoID4)');
    Parameters.ParamByName('FormInfoID1').Value := FormInfoID;
    Parameters.ParamByName('FormInfoID2').Value := FormInfoID;
    Parameters.ParamByName('FormInfoID3').Value := FormInfoID;
    Parameters.ParamByName('FormInfoID4').Value := FormInfoID;
    Active := True;
    if FieldByName('TabelName').AsString <> EmptyStr then
    begin
      Warn(FieldByName('TabelName').AsString +
        '  استفاده شده است و قابل حذف نيست!.‏');
      // Result := False;
    end;
    Active := False;
  end;
end;

function Month2Names(i: Integer): string;
var
  MonthNames: array [1 .. 12] of string;
begin
  MonthNames[1] := 'فروردين';
  MonthNames[2] := 'ارديبهشت';
  MonthNames[3] := 'خرداد';
  MonthNames[4] := 'تير';
  MonthNames[5] := 'مرداد';
  MonthNames[6] := 'شهريور';
  MonthNames[7] := 'مهر';
  MonthNames[8] := 'آبان';
  MonthNames[9] := 'آذر';
  MonthNames[10] := 'دي';
  MonthNames[11] := 'بهمن';
  MonthNames[12] := 'اسفند';
  Result := MonthNames[i]
end;

procedure Alladd2PopOther(aTag: Integer; grd: TCedarDbgrid);
begin
  case aTag of
    1:
      ClearDoc;
  end;
end;

procedure ClearDoc;
var
  i: Integer;
  s: string;
begin
  if RptReportsF.DBGrid1.SelectedRows.Count > 0 then
    if get_response
      ('آيا براي پاكسازي سند حسابداري فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      exit;
  with RptReportsF.DBGrid1.DataSource.DataSet do
    for i := 0 to RptReportsF.DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((RptReportsF.DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('MissionNo').AsString;
    end;
  If s = '' then
    exit;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'UPDATE Pay.Mission  SET DocNo = 0,State = 0 WHERE MissionNo IN ('
      + s + ')';
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ پاكسازي شد.', 2);
      Active := False;
      i := RptReportsF.qryDetails.FieldByName('MissionNo').AsInteger;
      RptReportsF.qryDetails.Active := False;
      RptReportsF.qryDetails.Open;
      RptReportsF.qryDetails.Locate('MissionNo', i, [])
    except
      Warn('اشكال در پاكسازي كردن فرم‌');
    end; // try
  end; // with
end;

procedure LoadTableFromZip(qry4Update: TADOQuery; TableName: String;
  fldName: String; OnlyInsert: Boolean);
var
  i: Integer;
  ZipName: String;
  function loadTable(FName: String): String;
  begin
    Result := '';
    with TZipForge.Create(nil) do
    begin
      FileName := ZipName;
      Password := '213378';
      OpenArchive;
      BaseDir := __TheTempDIR;
      ExtractFiles(FName);
      CloseArchive;
      Free;
    end; // with
    Result := IncludeTrailingPathDelimiter(__TheTempDIR) + FName;
    if not FileExists(Result) then
      Result := '';
  end;

begin
  if get_response('آيا براي فراخواني تنظيمات مطمئن هستيد؟' + #13 +
    'در صورت انجام كليه تنظيمات مطابق فايل مي‏شود.‏') <> mrYes then
    exit;
  ZipName := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) +
    'FaraTables\' + TableName + '.zip';
  if not FileExists(ZipName) then
  begin
    Warn('فايل ' + TableName + '.zip پيدا نشد.‏!‏');
    exit;
  end;
  With TCustomADODataSet.Create(nil) do
  begin
    LoadFromFile(loadTable(TableName + '.dat'));
    while not Eof do
    begin
      if qry4Update.Locate(fldName, FieldByName(fldName).AsVariant, []) then
        if OnlyInsert then
        begin
          Next;
          Continue;
        end
        else
          qry4Update.edit
      else
        qry4Update.Insert;
      for i := 0 to FieldCount - 1 do
        if LowerCase(Fields[i].FieldName) <> 'rowguid' then
          qry4Update.FieldByName(Fields[i].FieldName).AsString :=
            FieldByName(Fields[i].FieldName).AsString;
      qry4Update.Post;
      Next;
    end; // while
    Free;
  end; // With
  qry4Update.Requery;
  BigMessage('انجام شد.‏', 1);
end;

procedure MakeTableToZip(TableName: String; ADC: TADOConnection);
var
  ZipName, filePathName: String;
begin
  filePathName := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) +
    'FaraTables\';
  CreateDir(filePathName);
  With TADOQuery.Create(nil) do
  begin
    Connection := ADC;
    Active := False;
    SQL.Text := 'SELECT *  FROM  ' + TableName;
    Active := True;
    SaveToFile(filePathName + TableName + '.dat');
    Active := False;
    Free;
  end;
  ZipName := filePathName + TableName + '.zip';
  with TZipForge.Create(nil) do
  begin
    FileName := ZipName;
    Password := '213378';
    OpenArchive;
    Options.OverwriteMode := omAlways;
    Options.StorePath := spNoPath;
    AddFiles(filePathName + TableName + '.dat');
    CloseArchive;
    Free;
  end; // with
  DeleteFile(filePathName + TableName + '.dat');
  RunDoc(filePathName)
end;

function SpeedButtonCTopicCode3(OldCode: String; CTopiccode: Integer;
  FilterCTopics2And3: Boolean = True): String;
var
  c, txt, s: String;
begin
  Result := OldCode;
  if FilterCTopics2And3 then
    txt := 'SELECT DISTINCT Acc.CTopicCode3.CTopicCode3, Acc.CTopicCode3.CTopicName3_L1, Acc.CTopicCode3.CTopicName3_L2 '
      + ' FROM Acc.CTopicCode3 INNER JOIN ' +
      ' Acc.CTopics2And3 ON Acc.CTopicCode3.CTopicCode3 = Acc.CTopics2And3.CTopicCode3 '
      + 'WHERE Acc.CTopics2And3.CTopicCode2 = ' + IntToStr(CTopiccode)
  else
    txt := 'SELECT CTopicCode3, CTopicName3_L1, CTopicName3_L2 FROM Acc.CTopicCode3';
  if optA.AccOldAvailable then
    txt := dmf.qry_CTopicCode.SQL.Text;
  s := searchCode_ADOF.SearchCode(dmf.qryTopicCode.Connection, c, 'مراكز هزينه',
    txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    Result := c;
  end; // if
end;

function SpeedButtonCTopicCode2(OldCode: String; CTopiccode: Integer): String;
var
  c, txt, s: String;
begin
  Result := OldCode;
  txt := 'SELECT DISTINCT  Acc.CenterTopics2.CTopicCode2, Acc.CenterTopics2.CTopicName2_L1, Acc.CenterTopics2.CTopicName2_L2 '
    + 'FROM Acc.CenterTopics2 INNER JOIN ' +
    'Acc.CTopicRangeTogether ON Acc.CenterTopics2.CTopicCode2 = Acc.CTopicRangeTogether.CTopicCode2 '
    + 'WHERE Acc.CTopicRangeTogether.CTopicCode= ' + IntToStr(CTopiccode);
  if optA.AccOldAvailable then
    txt := dmf.qry_CTopicCode.SQL.Text;
  s := searchCode_ADOF.SearchCode(dmf.qryTopicCode.Connection, c, 'مراكز هزينه',
    txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    Result := c;
  end; // if
end;

function SpeedButtonCTopicCode(OldCode: String; TopicCode: Integer;
  filte: Boolean = True): String;
var
  c, txt, s: String;
begin
  Result := OldCode;
  txt := 'SELECT DISTINCT  Acc.CenterTopics.CTopicCode, Acc.CenterTopics.CTopicName_L1, '
    + 'Acc.CenterTopics.CTopicName_L2 FROM  Acc.CenterTopics INNER JOIN ' +
    'Acc.CenterTopicRange ON Acc.CenterTopics.CTopicCode = Acc.CenterTopicRange.CTopicCode ';
  if filte then
    txt := txt + ' WHERE     Acc.CenterTopicRange.TopicCode =' +
      IntToStr(TopicCode);
  if optA.AccOldAvailable then
    txt := dmf.qry_CTopicCode.SQL.Text;
  s := searchCode_ADOF.SearchCode(dmf.qryTopicCode.Connection, c, 'مراكز هزينه',
    txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    Result := c;
  end; // if
end;

function SpeedButtonDetailCode(OldCode: String; TopicCode: Integer;
  filte: Boolean = True): String;
var
  c, txt, s: String;
begin
  Result := OldCode;
  txt := 'SELECT DISTINCT  Acc.Details.DetailCode, Acc.Details.DetailName_L1, '
    + 'Acc.Details.DetailName_L2 FROM  Acc.DetailRange INNER JOIN ' +
    'Acc.Details ON Acc.DetailRange.DetailCode = Acc.Details.DetailCode ';
  if filte then
    txt := txt + ' WHERE  Acc.DetailRange.TopicCode=' + IntToStr(TopicCode);
  if optA.AccOldAvailable then
  begin
    txt := 'SELECT distinct Details.DetailCode, Details.Desc ' +
      'FROM DetailRange INNER JOIN Details ON DetailRange.DetailCode = Details.DetailCode ';
    if filte then
      txt := txt + ' WHERE  DetailRange.TopicCode=' + IntToStr(TopicCode);
  end;
  s := searchCode_ADOF.SearchCode(dmf.qryTopicCode.Connection, c,
    'حسابهاي تفصيلي', txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    Result := c;
  end; // if

end;

function SpeedButtonTopicCode(OldCode: String): String;
var
  c, txt, s: String;
begin
  Result := OldCode;
  txt := 'SELECT Acc.Categories.TopicCode, Acc.Categories.MoeenName_L1 ,Acc.Categories.MoeenName_L2 FROM Acc.Categories LEFT OUTER JOIN '
    + 'Acc.CategoriesForUse ON Acc.Categories.TopicCode = Acc.CategoriesForUse.PrvTopicCode '
    + 'WHERE (Acc.CategoriesForUse.PrvTopicCode IS NULL)';
  if optA.AccOldAvailable then
    txt := dmf.qryTopicCode.SQL.Text;
  s := searchCode_ADOF.SearchCode(dmf.qryTopicCode.Connection, c,
    'حسابهاي معین', txt, ['کد', 'نام حساب', 'نام حساب زبان2'], alLeft);
  if s <> '' then
  begin
    Result := c;
  end; // if
end;

function StandardDays(MonthNo: byte; var CurrentDate: String): Integer;
begin
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT StandardDays FROM Pay.FormsInfo WHERE FormType=17 AND (InfoID=' +
      IntToStr(MonthNo) + ')';
    Active := True;
    if Fields[0].IsNull then
      Result := 0
    else
      Result := Fields[0].AsInteger;
    Active := False;
    SQL.Text := 'SELECT Pay.GetYearMounth(' + IntToStr(MonthNo) + ',' +
      APPBank.Year.ToString + ')';
    Active := True;
    CurrentDate := Fields[0].AsString + '/' + IntToStr(Result);
  end; // with

  // CurrentDate:='00';
  // CurrentDate:=CurrentDate+IntToStr(MonthNo);
  // CurrentDate:='/'+RightStr(CurrentDate,2)+'/';
  // CurrentDate:=IntToStr(ABank.Year)+CurrentDate+IntToStr(Result);
end;

function ReadAcc_BankConfig(OptionName: string;
  DefaultValue: string = ''): string;
var
  qry: TADOQuery;
begin
  Result := DefaultValue;
  // if opt.AccOldAvailable then Exit;
  qry := TADOQuery.Create(dmf);
  with qry do
  begin
    try
      Connection := dmf.adcAccounting;
      SQL.Text := 'Select * from Acc.Config';
      if optA.AccOldAvailable then
      begin
        Connection := dmf.adcOldAccounting;
        SQL.Text := 'Select * from sConfig';
      end;
      Active := True;
      if FindField(OptionName) <> nil then
        Result := FieldByName(OptionName).AsString;
      Active := False;
    finally
      qry.Free;
    end; // try
  end; // with
end;

function GETProject4Function: Integer;
begin
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT FormInfo4Function FROM Pay.FormTypes WHERE FormType=59';
    Active := True;
    Result := FieldByName('FormInfo4Function').AsInteger;
    Active := False;
  end;
  if Result = 0 then
  begin
    Warn('شماره سطح پروژه در كاركرد مشخص نشده است 59', mtInformation);
    exit;
  end;
end;

procedure SendToMonthNoPersonelDecExt(DBGrid1: TDBGrid; MonthNo: byte;
  ToolBar1: TToolBar);
var
  i: Integer;
  s: string;
  MonthNoNew: byte;
begin
  // MonthNoNew := 0;
  if DBGrid1.SelectedRows.Count > 0 then
    MonthNoNew :=
      StrToInt(get_box('شماره ماه مورد نظر رابراي انتقال انتخاب كنيد ',
      'شماره ماه:‏', IntToStr(MonthNo + 1)))
  else
  begin
    Warn('سطري انتخاب نشده');
    exit;
  end;

  if get_response('آيا براي انتقال سطرهاي انتخاب شده به ' + ToolBar1.Buttons
    [MonthNoNew - 1].Caption + ' ماه مطمئن هستيد؟') <> mrYes then
    exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('DecExtID').AsString;
    end;
  If s = '' then
    exit;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'INSERT INTO Pay.PersonelDecExt ' +
      '(DecExtID, FormInfoID, PersonelNo, EmployeeAmount, FirstMounth, EndMounth, AidNo1, AidDate1, AidNo2, AidDate2, DayQuntity, DayTime, '
      + ' EmployerAmount, FormInfoID2, Note_L1, Note_L2, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, PaymentLoan, OfficeCode, '
      + ' ProjectInfoID, OfficeInfoID, EndDate, Minute_, AccCTopicCode3 ' +
      ', State, ProcCode, EarthCode, Settlement, YearID, StartYear, EndYear )' +
      'SELECT  ROW_NUMBER() OVER(ORDER BY DecExtID)+(SELECT MAX(DecExtID)FROM Pay.PersonelDecExt) AS DecExtID, '
      + 'FormInfoID, PersonelNo, EmployeeAmount, ' + IntToStr(MonthNoNew) +
      ' AS FirstMounth, ' + IntToStr(MonthNoNew) +
      ' AS EndMounth, AidNo1, AidDate1, AidNo2, ' +
      'AidDate2, DayQuntity, DayTime, EmployerAmount, FormInfoID2, Note_L1, Note_L2, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, '
      + 'PaymentLoan, OfficeCode, ProjectInfoID, OfficeInfoID, EndDate, Minute_, AccCTopicCode3 '
      + ', State, ProcCode, EarthCode, Settlement, YearID, StartYear, EndYear '
      + 'FROM Pay.PersonelDecExt WHERE DecExtID IN (' + s + ')';
    try
      BigMessage(IntToStr(ExecSQL) + ' مورد منتقل شد.', 2);
      Active := False;
    except
      on E: Exception do
      begin
        Warn('اشكال در انتقال‌' + E.Message);
      end;

    end; // try
  end; // with

end;

function CheckRequiredFieldsFill(DataSet: TDataSet): Boolean;
var
  i: Integer;
begin
  Result := True;
  for i := 0 to DataSet.FieldCount - 1 do
    if DataSet.Fields[i].Required then
      if DataSet.Fields[i].IsNull then
      begin
        Result := False;
      end
      else
      begin
        Result := True;
        Break;
      end; // if
end;

procedure assignServerName(adoCon: TADOConnection; dbName: string);
// var
// conStr: String;
// userName: String;
// SQLServerName: String;
begin
  if Assigned(adoCon) then
    adoCon.ConnectionString := GetConStr(dbName, 15, adoCon)

    // userName := ReadConfig('', 'UserName');
    // SQLServerName := ReadConfig('', 'SQLServerName');
    // if (adoCon.Name = 'adcAccounting') then
    // begin
    // SQLServerName := dmf.ReadBankConfigPay('AccountServerName', SQLServerName);
    // if SQLServerName = EmptyStr then
    // SQLServerName := ReadConfig('', 'SQLServerName');
    // end;
    //
    // if userName = '' then
    // userName := 'FaraUser';
    // conStr := 'Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;Initial Catalog='
    // + dbName + ';Data Source=' + SQLServerName + ';User ID=' + userName;
    // adoCon.ConnectionString := conStr;
end;

procedure setColumns(Grid: TDBGrid; colNumber: string; StateCol: Boolean);
var
  s: string;
  i: Integer;
begin
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    s := Format('#%.2d%', [i]);
    if Pos(s, colNumber) <> 0 then
      Grid.Columns[i].Visible := StateCol;
  end; // for
end;

procedure InitReport(ReportName: TppReport; BandName: TppBand;
  aRegion: TppRegion; TopLine: TppLine; footer: string);
var
  n, i: Integer;
  ts: TStrings;
begin
  if aRegion = nil then
    exit;
  if BandName = nil then
    exit;
  if TopLine = nil then
    exit;

  n := CountOfChar(footer, #13) + 1;
  if n = 1 then
    exit;
  ts := TStringList.Create;
  ts.Text := footer;
  for i := 0 to n - 1 do
  begin
    if i <> 0 then
      with TppLine.Create(ReportName) do
      begin
        Region := aRegion;
        Position := lpLeft;
        Top := TopLine.Top + TopLine.Height;
        Height := aRegion.Top + aRegion.Height - TopLine.Top - TopLine.Height;
        Width := 1;
        // Left:=5 + trunc(TopLine.Width/n)*i;
        Left := aRegion.Width - (trunc(TopLine.Width / n) * i) - Width + 1;
      end; // with
    with TppLabel.Create(ReportName) do
    begin
      AutoSize := True;
      // Font.Charset := graphics.ARABIC_CHARSET;
      // Font.Color := clBlack;
      Transparent := True;
      Band := BandName;
      Region := aRegion;
      TextAlignment := taRightJustified;
      Font.Name := 'zar';
      Font.Size := 9;
      Transparent := True;
      Caption := trim(ts[i]);
      Top := TopLine.Top - TopLine.Height + 4;
      Left := aRegion.Width - (trunc(TopLine.Width / n) * i) - Width - 1;
    end; // with
  end; // for
  ts.Free;
end;

function GetCheckList(ChkLstBox: TCheckListBox): String;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to ChkLstBox.Items.Count - 1 do
  begin
    if ChkLstBox.Checked[i] then
      Result := Result + IntToStr(i) + ','
  end;
  Result := LeftStr(Result, length(Result) - 1);
end;

procedure initCheckList(ChkLstBox: TCheckListBox; checkeds: String);
var
  i, r: Integer;
begin
  for i := 0 to ChkLstBox.Items.Count - 1 do
  begin
    ChkLstBox.Checked[i] := False;
  end;
  if (checkeds = '') then
    exit;
  if (length(checkeds) = 1) and (checkeds <> '') then
    ChkLstBox.Checked[StrToInt(checkeds)] := True
  else
    checkeds := checkeds + ',';
  while Pos(',', checkeds) <> 0 do
  begin
    r := StrToInt64Def(LeftStr(checkeds, Pos(',', checkeds) - 1), 0);
    ChkLstBox.Checked[r] := True;
    checkeds := copy(checkeds, Pos(',', checkeds) + 1, length(checkeds));
  end; // while
end;

procedure InitAllSpeedButton(FName: TForm; aNotifyEvent: TNotifyEvent);
var
  i: Integer;
  spb: TMYSpeedButton;
  curCombo: TDBComboBox;
begin
  for i := 0 to FName.ComponentCount - 1 do
    if (FName.Components[i] is TDBComboBox) and
      (Assigned(TDBComboBox(FName.Components[i]).OnKeyPress)) then
    begin
      curCombo := TDBComboBox(FName.Components[i]);
      spb := TMYSpeedButton.Create(FName);
      spb.Name := 'btn' + curCombo.Name;
      spb.Caption := '...';
      spb.Anchors := curCombo.Anchors;
      spb.Parent := curCombo.Parent;
      spb.cmbo := curCombo;
      spb.Left := curCombo.Left;
      spb.Top := curCombo.Top;
      curCombo.Left := curCombo.Left + spb.Width;
      curCombo.Width := curCombo.Width - spb.Width;
      spb.OnClick := aNotifyEvent;
    end;
end;

function SetMenuName(mnu: TMainMenu): String;
var
  i, j, x: Integer;
  s: String;
begin
  if mnu = nil then
    exit;
  for i := 0 to mnu.Items.Count - 1 do
  begin
    if mnu.Items[i].Tag = -1 then
      Continue;
    for j := 0 to mnu.Items[i].Count - 1 do
    begin
      if (mnu.Items[i].Items[j].Enabled) and (mnu.Items[i].Items[j].Visible)
      then
      begin
        s := mnu.Items[i].Items[j].Caption;
        if s <> '-' then
          Result := Result + '@ ' + s;
        for x := 0 to mnu.Items[i].Items[j].Count - 1 do
        begin
          if (mnu.Items[i].Items[j].Items[x].Enabled) and
            (mnu.Items[i].Items[j].Items[x].Visible) then
          begin
            s := mnu.Items[i].Items[j].Items[x].Caption;
            if s <> '-' then
              Result := Result + '@ ' + s;
          end; // if
        end; // for
      end; // if
    end; // for
  end; // forend;
  Result := LowerCase(Result)
end;

procedure DisableKeyDown(Sender: TObject; key: Word);
var
  aDataSet: TDataSet;
begin
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  if ((aDataSet.RecNo = aDataSet.RecordCount) and (key = VK_DOWN)) then
  begin
    // key:=0;
    Abort;
  end; // if
end;

function SendMail(EmailName: String): Boolean;
begin
  try
    if Pos('WWW', UpperCase(EmailName)) <> 0 then
      ShellExecute(0, 'Open', pchar(EmailName), nil, nil, SW_SHOWNORMAL)
    else
      ShellExecute(0, 'Open',
        pchar('mailto:' + EmailName + '?subject=FaraRayaneh'), nil, nil,
        SW_SHOWNORMAL);
    Result := True;
  except
    Result := False;
  end; // try
end;

function GetDataPath(DataPath: string): string;
var
  qry: TADOQuery;
  // conStr: String;
  // userName: String;
  ServerName: String;
  FileName: String;
  i: Integer;
begin
  // userName := ReadConfig('', 'UserName', 'FaraUser');
  // conStr := 'Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True' +
  // ';Data Source=' + opt.ServerName + ';User ID=' + userName +
  // ';connect timeout=10';
  qry := TADOQuery.Create(dmf);
  try
    with qry do
    begin
      ConnectionString := GetConStr('master', 15);
      Active := False;
      SQL.Text := 'SELECT FileName FROM master.dbo.sysdatabases WHERE name = ' +
        QuotedStr(DataPath);
      try
        Active := True;
        FileName := Fields[0].AsString;

        ServerName := opt.ServerName;
        i := Pos('\', ServerName) - 1;
        if i > 0 then
          ServerName := LeftStr(ServerName, i);
        Result := '\\' + ServerName + '\' + RightStr(FileName,
          length(FileName) - 3);

        Result := ExtractFilePath(Result) + '..';
        Active := False;
      except
        DataPath := '';
      end; // try
    end; // with

  finally
    qry.Free;
  end; // tryend;
end;

function BackupDatabaseNet(ADC: TADOConnection; anAPPBank: TAPPBANK;
  pathName: String; ChooseDir: Boolean = False; DoZip: Boolean = True): Boolean;
var
  cmd: String;
  adoCommand: TADOCommand;
  tmpDBpath, tmpDBpathZip: String;
  bPath: String;
  filepath: String;
  ts: TStringList;
begin
  Result := False;
  filepath := GetDataPath(anAPPBank.Name) + '\BackUpNet\' +
    MakeUniqDBBackupName(anAPPBank.Name, var_glb_CurrentDate) + '\' +
    MakeUniqDBBackupName(anAPPBank.Name, var_glb_CurrentDate) + '.zip';
  setkeyboardlatin;
  bPath := '';
  if ChooseDir then
  begin
    if not selectdirectory('لطفاً مسير پشتيبان گيري را وارد كنيد:‏', '', bPath)
    then
      exit
  end
  else
    bPath := pathName;

  tmpDBpath := ExtractFilePath(filepath) + ExtractFileNameWithoutExt
    (filepath) + '.dat';

  if var_SQL_ProductVersion > 8 then
  begin
    cmd := Format('BACKUP DATABASE [%s] TO DISK = ''%s''  WITH  INIT',
      [anAPPBank.Name, tmpDBpath]);
    cmd := cmd + ',COMPRESSION';
  end
  else
    cmd := Format
      ('BACKUP DATABASE [%s] TO DISK = ''%s''  WITH PASSWORD = ''tycedar'' ,INIT',
      [anAPPBank.Name, tmpDBpath]);

  SysUtils.ForceDirectories(ExtractFilePath(tmpDBpath));
  DeleteFile(tmpDBpath);
  adoCommand := TADOCommand.Create(ADC);
  ts := TStringList.Create;
  ts.Text := 'عنوان پشتيبان=' + anAPPBank.Title;
  ts.Add('نام بانك=' + anAPPBank.Name);
  ts.Add('نام شركت=' + anAPPBank.CompanyName);
  ts.Add('سال مالي=' + IntToStr(anAPPBank.Year));
  ts.Add('تاريخ تهيه=' + miladi2Shamsi(Date));
  ts.Add('تهيه كننده= ' + User.Name);
  ts.Add('كد شركت=' + IntToStr(anAPPBank.n_subcompany));
  BigMessage('در حال تهيه پشتيبان ...', 0);
  try
    with adoCommand do
    begin
      Connection := ADC;
      ParamCheck := False;
      Prepared := False;
      CommandText := cmd;
      try
        while not FileExists(tmpDBpath) do
          Execute;
        if FileExists(tmpDBpath) then
        begin
          sleep(1000);
          if DoZip then
            tmpDBpathZip := ExtractFilePath(tmpDBpath) +
              ExtractFileName(filepath);
          if not zipfiles(tmpDBpath, filepath) then
            raise Exception.Create('اشكال در فشرده‌سازي پشتيبان');
        end; // if
        ts.SaveToFile(ExtractFilePath(filepath) + ExtractFileNameWithoutExt
          (filepath) + '.dsc');
        BigMessage('عمليات پشتيبان‌گيري با موفقيت انجام شد.', 1);
        Result := True;
      except
        on E: Exception do
        begin
          CloseMessage;
          add2log(E.Message);
          Warn('اشكال در تهيه پشتيبان' + #13#10 + E.Message);
          Result := False;
        end;
      end; // try
    end; // with
  finally
    SetKeyboardFarsi;
    adoCommand.Free;
    ts.Free;
    CloseMessage;
    CopyFile(pchar(filepath), pchar(bPath), False);
    CopyFile(pchar(ExtractFilePath(filepath) + ExtractFileNameWithoutExt
      (filepath) + '.dsc'),
      pchar(ExtractFilePath(bPath) + ExtractFileNameWithoutExt(bPath) +
      '.dsc'), False);
    DelDir(GetDataPath(anAPPBank.Name) + '\BackUpNet');
  end; // try
end;

function ValidInfoName(DataSet: TDataSet; qry: TADOQuery): Boolean;
// FormInfoID:Integer;InfoName:String
begin
  if not ValidInfoID(DataSet, qry) then
    Abort;
  Result := False;
  qry.Active := True;
  if qry.FieldByName('RepetitiveControl').AsInteger = 0 then
  begin
    Result := True;
    exit;
  end;

  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM (SELECT COUNT(InfoName_L1)  as a  ';
    SQL.Add('FROM Pay.FormsInfo GROUP BY InfoName_L1, FormType, FormInfoID');
    SQL.Add('HAVING (InfoName_L1 = ''' + TADOQuery(DataSet)
      .FieldByName('InfoName_L1').AsString + ''') ');
    SQL.Add('AND (FormInfoID <> ' + IntToStr(TADOQuery(DataSet)
      .FieldByName('FormInfoID').AsInteger) + ')');
    if qry.FieldByName('RepetitiveControl').AsInteger = 2 then
      SQL.Add('AND (FormType = ' + IntToStr(qry.FieldByName('FormType')
        .AsInteger) + ')');
    SQL.Add(') DERIVEDTBL');
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn('عنوان وارد شده تكراري مي‌باشد.');
      exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

function ValidInfoID(DataSet: TDataSet; qry: TADOQuery): Boolean;
// FormInfoID:Integer;InfoName:String
begin
  Result := False;
  qry.Active := True;
  if qry.FieldByName('RepetitiveControlInfoID').AsInteger = 0 then
  begin
    Result := True;
    exit;
  end;

  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*) FROM (SELECT COUNT(InfoID)  as a  ';
    SQL.Add('FROM Pay.FormsInfo GROUP BY InfoID, FormType, FormInfoID');
    SQL.Add('HAVING (InfoID = ''' + TADOQuery(DataSet).FieldByName('InfoID')
      .AsString + ''') ');
    SQL.Add('AND (FormInfoID <> ' + IntToStr(TADOQuery(DataSet)
      .FieldByName('FormInfoID').AsInteger) + ')');
    if qry.FieldByName('RepetitiveControlInfoID').AsInteger = 2 then
      SQL.Add('AND (FormType = ' + IntToStr(qry.FieldByName('FormType')
        .AsInteger) + ')');
    SQL.Add(') DERIVEDTBL');
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn('کد وارد شده تكراري مي‌باشد.');
      exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

procedure SumQry(Grid: TDBGrid);
var
  qry: TADOQuery;
  i: Integer;
  MySQL: String;
begin
  MySQL := '';
  qry := (Grid.DataSource.DataSet as TADOQuery);
  With qry do
  begin
    for i := 0 to Fields.Count - 1 do
    begin
      if Fields[i].CustomConstraint = 's' then
        MySQL := MySQL + 'Sum' + Fields[i].FieldName + ' ,';
    end;
    Warn(MySQL);
  end;
end;

procedure InitCmbLabel(Combo_Box: TComboBox; MounthFrom: byte = 1;
  MounthTo: byte = 12; ManyMounth: Boolean = False);
var
  Item_Index: Integer;
begin
  Item_Index := 0;
  Combo_Box.Clear;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT DISTINCT L.LabelID, L.Descriptions';
    SQL.Add('FROM Pay.FixedLabels AS L INNER JOIN');
    SQL.Add('Pay.FixedCalculated AS F ON L.LabelID = F.LabelID');
    if MounthFrom <> 0 then
      if ManyMounth then
        SQL.Add('WHERE (F.Mounth BETWEEN ' + IntToStr(MounthFrom) + ' AND ' +
          IntToStr(MounthTo) + ')')
      else
        SQL.Add('WHERE (F.Mounth = ' + IntToStr(MounthFrom) + ')');
    SQL.Add('ORDER BY L.LabelID ');
    Active := True;
    while not Eof do
    begin
      Combo_Box.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;

  end; // with

end;

procedure InitCmbArchiveID(Combo_Box: TComboBox; MounthFrom: byte = 1;
  MounthTo: byte = 12; ManyMounth: Boolean = False);
var
  F_ArchiveID, Item_Index: Integer;
begin
  GetYearMounth(MounthFrom);
  Item_Index := 0;
  Combo_Box.Clear;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT distinct F_ArchiveID FROM Pay.FixedCalActive()';
    SQL.Add('WHERE (YearID = :YearID)');
    SQL.Add('AND (Years = :Years)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Active := True;
    F_ArchiveID := Fields[0].AsInteger;
    Active := False;
    SQL.Text := 'SELECT distinct ArchiveID,';
    SQL.Add('CASE WHEN ArchiveID = 0 THEN ''آخرین محاسبه حقوق'' ELSE ''بايگاني شماره'' + STR(ArchiveID) END');
    SQL.Add('FROM Pay.FixedCalculated');
    SQL.Add('WHERE (YearID = :YearID)');
    SQL.Add('AND (Years = :Years)');
    if MounthFrom <> 0 then
      if ManyMounth then
        SQL.Add('AND (Mounth BETWEEN ' + IntToStr(MounthFrom) + ' AND ' +
          IntToStr(MounthTo) + ')')
      else
        SQL.Add('AND (Mounth = ' + IntToStr(MounthFrom) + ')');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add('ORDER BY ArchiveID');
    Active := True;
    while not Eof do
    begin
      Combo_Box.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      if F_ArchiveID = Fields[0].AsInteger then
        Item_Index := Combo_Box.Items.Count - 1;
      Next;
    end; // while
    Active := False;
    if Combo_Box.Items.Count = 0 then
      Combo_Box.Items.AddObject('اطلاعات وجود ندارد', TObject(0));
    Combo_Box.ItemIndex := Item_Index;

  end; // with

end;

procedure InitcmbMounthRetard(Combo_Box: TComboBox; grpMounthRetard: TGroupBox;
  Mounth: byte = 1);
begin
  Combo_Box.Clear;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT DISTINCT MounthRetard';
    SQL.Add(', ''معوقه حکم ماه '' + LTRIM(MounthRetard) AS Name');
    SQL.Add('FROM Pay.FixedCalculated');
    SQL.Add('WHERE (Mounth = :Mounth) AND (MounthRetard > 0)');
    SQL.Add('AND (YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    SQL.Add('ORDER BY MounthRetard');
    Parameters.ParamByName('Mounth').Value := Mounth;
    Active := True;
    while not Eof do
    begin
      Combo_Box.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
    Combo_Box.Visible := Combo_Box.Items.Count > 1;
    grpMounthRetard.Visible := Combo_Box.Visible;
  end; // with

end;

Function Calculate_AccCode(AccLevel, Kind: byte; No: Integer): Integer;
var
  txt: string;
begin
  Result := 0;
  // منظور از اولين پارامتر كد حساب ، تفصيلي ، تفصیلی 1 1 و تفصیلی 1 2 ميباشد
  // 0-ندارد
  // 1-پيش فرض از حكم كار گزيني
  // 2-پيش فرض از عوامل حقوق و مزايا
  // 3-پيش فرض از كدينگ پروژه ها
  // 4-پيش فرض از واحد سازماني
  // 5-پيش فرض از اطلاعات Masterخوانده شود
  // 6-پيش فرض از اطلاعات پرسنلي
  // 7-از اطلاعات كسورات و اضافات
  // 8-كد محصول در فرم كاركرد
  // 9-كد تفصیلی 1 3 در فرم كاركرد
  // 10-اگر عناوين مزايا - تفصیلی 1 2  بزرگتر از صفر بود ،  اطلاعات عناوين مزايا ، در غير اين صورت واحد سازماني
  // 11-بصورت تركيبي : واحد سازماني & عناوين حقوق مزايا
  // 12-اگر عناوين مزايا - حساب برابر صفر بود، حساب پروژه، در غير اين صورت حساب عناوین حقوق و ومزایا
  // 13-اگر كد حساب اطلاعات پرسنلي صفر بود از عوامل حقوق مزايا در غير اينصورت از كد حساب پرسنل

  case Kind of
    1:
      txt := 'SELECT Interdicts.PersonelNo, Interdicts.AccTopicCode, Interdicts.AccDetailCode,'
        + ' Interdicts.AccCTopicCode,' +
        ' Interdicts.AccCTopicCode2 ,Interdicts.AccCTopicCode3 ' +
        ' FROM Pay.Interdicts INNER JOIN' +
        ' Pay.FormsInfo ON Pay.Interdicts.InterdicType = FormsInfo.FormInfoID' +
        ' WHERE (FormsInfo.InfoID < 100) AND (Interdicts.PersonelNo = ' +
        IntToStr(No) + ')' + ' ORDER BY Interdicts.InterdictNo DESC';
    4:
      txt := 'SELECT Interdicts.PersonelNo, FormsInfo_1.AccTopicCode, FormsInfo_1.AccDetailCode,'
        + ' FormsInfo_1.AccCTopicCode,' +
        ' FormsInfo_1.AccCTopicCode2 ,FormsInfo_1.AccCTopicCode3 ' +
        ' FROM Pay.Interdicts INNER JOIN' +
        ' Pay.FormsInfo ON Pay.Interdicts.InterdicType = FormsInfo.FormInfoID INNER JOIN'
        + ' Pay.FormsInfo FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID'
        + ' WHERE (Interdicts.PersonelNo = ' + IntToStr(No) +
        ') AND (FormsInfo.InfoID < 100)' +
        ' ORDER BY Interdicts.InterdictNo DESC';
    2, 3, 5, 12:
      txt := 'SELECT FormInfoID, AccTopicCode, AccDetailCode, AccCTopicCode,  '
        + ' AccCTopicCode2, AccCTopicCode3 FROM Pay.FormsInfo WHERE (FormInfoID = '
        + IntToStr(No) + ')';
    6, 11, 13:
      txt := 'SELECT PersonelNo, AccTopicCode, AccDetailCode, AccCTopicCode,  '
        + ' AccCTopicCode2, AccCTopicCode3 FROM Pay.PersonelInfo WHERE (PersonelNo ='
        + IntToStr(No) + ')';
  end; // case
  if Kind <> 0 then
    with dmf.qryTmpTmpp do
    begin
      Active := False;
      SQL.Text := txt;
      Active := True;
      case AccLevel of
        1:
          Result := FieldByName('AccTopicCode').AsInteger;
        2:
          Result := FieldByName('AccDetailCode').AsInteger;
        3:
          Result := FieldByName('AccCTopicCode').AsInteger;
        4:
          Result := FieldByName('AccCTopicCode2').AsInteger;
        5:
          Result := FieldByName('AccCTopicCode3').AsInteger;
      end; // case
    end // with
  else
    Result := 0;
end;

procedure ShowAllFrom(Tag4Type: Integer; GroupIndex4case: Integer;
  frParent: TForm; qry: TDataSet);
begin
  case GroupIndex4case of
    0:
      CreateMDIForm3(False, TRptReportsF, RptReportsF, frParent, Tag4Type);
  end;
end;

procedure ShowAllFrom2(ds: TDataSet; ReportID: Integer; formType: Integer);
begin
  // ds := grd.DataSource.DataSet;
  case ds.FieldByName('KindForm').AsInteger of
    0, 3, 4:
      Warn('فرمي براي نمايش وجود ندارد.!');
  end;
end;

// function SendWarnings;
// var
/// /  cli:TClientDataSet;
/// /  dsp:TDataSetProvider;
// qry:  TADOQuery;
// i:Integer;
// begin
// qry:=TADOQuery.Create(DMf);
// try
// with qry do begin
// Clone(qry_Documents,ltBatchOptimistic);
// DisableControls;
// First;
// while not eof do begin
// Delete;
// Next;
// end;//while
// for i:=0 to lslWarnings.Items.Count-1 do
// begin
//
// end;
// EnableControls;
// end;//with
// finally
/// /    MyField.DataSet.First;
/// /    MyField.DataSet.EnableControls;
/// /    qry.Free;
// end;//try
/// /  qry_Documents.Active:=False;
/// /      dsp:=TDataSetProvider.Create(qry_Documents.Owner);
/// /      dsp.Name:='dsp';
/// /      dsp.DataSet:=qry_Documents;
/// /      cli:=TClientDataSet.Create(nil);
/// /      cli.ProviderName:=dsp.Name;
/// /      cli.Active:=True;
/// /      SendToExcel(cli);
/// /      cli.Free;
/// /      dsp.Free;
// end;
//

function ValidateDocument(qry_Documents: TDataSet;
  lslWarnings: TListBox): Boolean;
var
  msg: String;
begin
  Result := True;
  lslWarnings.Clear;
  with qry_Documents do
  begin
    try
      DisableControls;
      First;
      while not Eof do
      begin
        if not ValidateArticle(msg, qry_Documents) then
        begin
          Result := False;
          lslWarnings.Items.AddObject(Format('[رديف %d]: %s', [RecNo, msg]),
            TObject(qry_Documents.RecNo));
        end; // if
        Next;
      end; // while
      lslWarnings.Visible := lslWarnings.Count > 0;
      // lblWarnCount.Caption:='تعداد خطاها = ' + inttostr(lslWarnings.Count);
    finally
      EnableControls;
    end; // try
  end; // with
end;

function ValidateArticle(out ResultMessage: String;
  qry_Documents: TDataSet): Boolean;
begin
  ResultMessage := '';
  Result := False;
  if qry_Documents.FieldByName('_TopicName').AsString = '' then
    with dmf.qryAccOldAndNew do
    begin
      Active := False;
      if optA.AccOldAvailable then
      begin
        SQL.Text :=
          'SELECT TopicCode, MoeenName  FROM Categories where TopicCode=' +
          IfThen(qry_Documents.FieldByName('AccTopicCode').IsNull, '-1',
          qry_Documents.FieldByName('AccTopicCode').AsString);
      end
      else
      begin
        SQL.Text :=
          'SELECT TopicCode,MoeenName_L1 FROM  Acc.Categories where TopicCode='
          + IfThen(qry_Documents.FieldByName('AccTopicCode').IsNull, '-1',
          qry_Documents.FieldByName('AccTopicCode').AsString);
      end;
      Active := True;
      if FieldByName('TopicCode').AsString = '' then
      begin
        ResultMessage := 'كد حساب معتبر نيست.';
        exit;
      end; // if
    end; // with

  with qry_Documents do
  begin
    if HasDetail(FieldByName('AccTopicCode').AsInteger) then
    begin
      if not IsValidDetailForMoeen(FieldByName('AccTopicCode').AsInteger,
        FieldByName('accDetailCode').AsInteger) then
      begin
        // if GetAcc.DetailsOfMoeen(fieldbyname('AccTopicCode').AsInteger).IndexOf(fieldbyname('DetailCode').AsString)=-1 then begin
        ResultMessage := 'كد تفصيلي معتبر نيست.';
        exit;
      end;
    end
    else
    begin
      if FieldByName('accDetailCode').AsInteger <> 0 then
      begin
        ResultMessage := 'كد تفصيلي ' + FieldByName('accDetailCode').AsString +
          'براي كد حساب ' + FieldByName('AccTopicCode').AsString +
          ' معتبر نيست.';
        exit;
      end;
    end;
    // else not HasDetail

    // if FieldByName('CAccTopicCode').AsInteger<>0 then
    if HasExpenseCode2(FieldByName('AccCTopicCode').AsInteger) then
    begin
      if not IsValidCTopic2ForCTopics(FieldByName('AccCTopicCode2').AsInteger,
        FieldByName('AccCTopicCode').AsInteger) then
      begin
        ResultMessage := 'كد تفصیلی 3 معتبر نيست.';
        exit;
      end;
    end;

    if HasExpenseCode(FieldByName('AccTopicCode').AsInteger) then
    begin
      // if FieldByName('CTopicCode').AsInteger<>0 then
      if not IsValidCTopicForMoeen(FieldByName('AccTopicCode').AsInteger,
        FieldByName('AccCTopicCode').AsInteger) then
      begin
        ResultMessage := 'كد تفصیلی 1 معتبر نيست.';
        exit;
      end;
    end
    else
    begin
      if FieldByName('AccCTopicCode').AsInteger <> 0 then
      begin
        ResultMessage := 'كد تفصیلی 1 ' + FieldByName('AccCTopicCode').AsString
          + 'براي كد حساب ' + FieldByName('AccTopicCode').AsString +
          ' معتبر نيست.';
        exit;
      end;
    end;
    // else not ExpenseCode

    if (FieldByName('Debt').AsCurrency > 0) and
      (FieldByName('Credit').AsCurrency > 0) then
    begin
      ResultMessage := 'مبلغ بدهكار و بستانكار همزمان وارد شده‌اند.';
      exit;
    end; // if
  end; // with
  Result := True;

end;

function HasDetail(c: Cardinal): Boolean;
begin
  with dmf.qryAccOldAndNew do
  begin
    Active := False;
    if optA.AccOldAvailable then
      SQL.Text :=
        'SELECT count(*) FROM DetailRange INNER JOIN Details ON DetailRange.DetailCode = Details.DetailCode WHERE DetailRange.TopicCode ='
        + IntToStr(c)
    else
      SQL.Text :=
        'SELECT count(*) FROM Acc.DetailRange INNER JOIN Acc.Details ON Acc.DetailRange.DetailCode = Acc.Details.DetailCode WHERE Acc.DetailRange.TopicCode ='
        + IntToStr(c);
    Active := True;
    Result := Fields[0].AsInteger > 0;
    Active := False;
  end; // with
end;

function IsValidDetailForMoeen(TopicCode, DetailCode: Integer): Boolean;
begin
  with dmf.qryAccOldAndNew do
  begin
    Active := False;
    if optA.AccOldAvailable then
    begin

      SQL.Text :=
        'SELECT DetailRange.DetailCode FROM DetailRange INNER JOIN Details ON DetailRange.DetailCode = Details.DetailCode';
      SQL.Add('WHERE (DetailRange.TopicCode =' + IntToStr(TopicCode) +
        ') AND (DetailRange.DetailCode = ' + IntToStr(DetailCode) + ')');
    end
    else
    begin

      SQL.Text :=
        'SELECT Acc.DetailRange.DetailCode FROM Acc.DetailRange INNER JOIN Acc.Details ON Acc.DetailRange.DetailCode = Acc.Details.DetailCode';
      SQL.Add('WHERE (Acc.DetailRange.TopicCode =' + IntToStr(TopicCode) +
        ') AND (Acc.DetailRange.DetailCode = ' + IntToStr(DetailCode) + ')');
    end;
    Active := True;
    Result := not IsEmpty;
    Active := False;
  end; // with
end;

function HasExpenseCode(c: Cardinal): Boolean;
begin
  with dmf.qryAccOldAndNew do
  begin
    Active := False;
    if optA.AccOldAvailable then

      SQL.Text :=
        'SELECT Count(*) FROM CenterTopicRange INNER JOIN CenterTopics ON CenterTopicRange.CTopicCode = CenterTopics.CTopicCode WHERE CenterTopicRange.TopicCode ='
        + IntToStr(c)
    else
      SQL.Text :=
        'SELECT Count(*) FROM Acc.CenterTopicRange INNER JOIN Acc.CenterTopics ON Acc.CenterTopicRange.CTopicCode = Acc.CenterTopics.CTopicCode WHERE Acc.CenterTopicRange.TopicCode ='
        + IntToStr(c);
    Active := True;
    Result := Fields[0].AsInteger > 0;
    Active := False;
  end; // with
end;

function HasExpenseCode2(c: Cardinal): Boolean;
begin
  Result := True;
  if optA.AccOldAvailable then
    exit;
  with dmf.qryAccOldAndNew do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Count(*) FROM Acc.CTopicRangeTogether INNER JOIN Acc.CenterTopics2 ON Acc.CTopicRangeTogether.CTopicCode2 = Acc.CenterTopics2.CTopicCode2 WHERE Acc.CTopicRangeTogether.CTopicCode ='
      + IntToStr(c);
    Active := True;
    Result := Fields[0].AsInteger > 0;
    Active := False;
  end; // with
end;

function IsValidCTopicForMoeen(TopicCode, CTopiccode: Integer): Boolean;
begin
  // Result:=True;
  // if CTopicCode=0 then Exit;
  with dmf.qryAccOldAndNew do
  begin
    Active := False;
    if optA.AccOldAvailable then
    begin

      SQL.Text :=
        'SELECT CenterTopicRange.CTopicCode FROM CenterTopicRange INNER JOIN CenterTopics ON CenterTopicRange.CTopicCode = CenterTopics.CTopicCode';
      SQL.Add('WHERE (CenterTopicRange.TopicCode =' + IntToStr(TopicCode) +
        ') AND (CenterTopicRange.CTopicCode = ' + IntToStr(CTopiccode) + ')');
      Active := True;
    end
    else
    begin
      SQL.Text :=
        'SELECT Acc.CenterTopicRange.CTopicCode FROM Acc.CenterTopicRange INNER JOIN Acc.CenterTopics ON Acc.CenterTopicRange.CTopicCode = Acc.CenterTopics.CTopicCode';
      SQL.Add('WHERE (Acc.CenterTopicRange.TopicCode =' + IntToStr(TopicCode) +
        ') AND (Acc.CenterTopicRange.CTopicCode = ' +
        IntToStr(CTopiccode) + ')');
    end;
    Active := True;
    Result := not IsEmpty;
    Active := False;
  end;
  // with
end;

function IsValidCTopic2ForCTopics(CTopicCode2, CTopiccode: Integer): Boolean;
begin
  Result := True;
  if optA.AccOldAvailable then
    exit;
  with dmf.qryAccOldAndNew do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Acc.CTopicRangeTogether.CTopicCode2 FROM Acc.CTopicRangeTogether INNER JOIN Acc.CenterTopics2 ON Acc.CTopicRangeTogether.CTopicCode2 = Acc.CenterTopics2.CTopicCode2';
    SQL.Add('WHERE (Acc.CTopicRangeTogether.CTopicCode =' + IntToStr(CTopiccode)
      + ') AND (Acc.CTopicRangeTogether.CTopicCode2 = ' +
      IntToStr(CTopicCode2) + ')');
    Active := True;
    Result := not IsEmpty;
    Active := False;
  end; // with

end;

procedure GetPersonalPicture(Pic: TPicture; PersonelNo: Integer);
var
  pathName: string;
begin
  if optP.ScanState and System.SysUtils.DirectoryExists(optP.ArchiveScan) then
    pathName := optP.ArchiveScan + '\Archive\AllYear\PersonelInfo\'
  else
    pathName := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)) +
      'Archive\AllYear\PersonelInfo\');
  pathName := pathName + '1_' + IntToStr(PersonelNo) + '_1_0.jpg';
  if FileExists(pathName) then
    Pic.LoadFromFile(pathName)
  else
    Pic.Assign(nil);

end;

// function GetSelectedRowsDBGrid(grd: TDBGrid; FieldRowName: String)
// : String; overload;
// var
// i: Integer;
// begin
// with grd.DataSource.DataSet do
// begin
// DisableControls;
// for i := 0 to grd.SelectedRows.Count - 1 do
// begin
// GotoBookmark(pointer(grd.SelectedRows.Items[i]));
// Result := Result + FieldByName(FieldRowName).AsString + ',';
// end;
// SetLength(Result, length(Result) - 1);
// EnableControls;
// end;
// end;
//
// function GetSelectedRowsDBGrid(grd: TCedarDbgrid; FieldRowName: String)
// : String; overload;
// var
// i: Integer;
// begin
// with grd.DataSource.DataSet do
// begin
// DisableControls;
// for i := 0 to grd.SelectedRows.Count - 1 do
// begin
// GotoBookmark(pointer(grd.SelectedRows.Items[i]));
// Result := Result + FieldByName(FieldRowName).AsString + ',';
// end;
// SetLength(Result, length(Result) - 1);
// EnableControls;
// end;
// end;

procedure CallOtherForms(myForm: Tform_Name; ID, DesignFormID: Integer;
  qry: TDataSet);
begin
  case myForm of
    FnPersonelInfo:
      PersonelInfoF.Enter(ID);
    FnInterdicts:
      if mdiMainF.ActInterdictsF.Execute then
        InterdictsF.Enter(45, 0, 49, 0, ID);
    FnEmployeeDeeExtinfo:
      EmployeeDeeExtinfoF.Enter(16, ID);
  end;
  // case myForm of
  // FnCustomersInterView:
  // CreateChildForm(TCustomersInterViewF, CustomersInterViewF, mainF,
  // ftype, alNone);
  // FnCustomersTax:
  // CreateChildForm(TCustomersTaxF, CuvastomersTaxF, mainF, ftype, alNone);
  // FnCustomers2:
  // Customers2F.Enter(ftype);
  // FnDesignForms:
  // begin
  // CreateMDIForm2(TDesignFormsF, DesignFormsF, mainF, 1);
  // if not DesignFormsF.qryForm.Locate('id', ftype, []) then
  // Warn('فرم پیدا نشد');
  //
  // end;
  // FnShowReciptTypes:
  // ShowReciptTypes(qry, mainF);
  //
  // FnShowFormTypesForms:
  // ShowFormTypesForms(qry, mainF);
  // end;
end;

function UnicFieldName(IDField, Field4DuplicateValue: TField; tblName: String;
  WHERESQL: string = ''): Boolean;
begin
  Result := False;
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(*)';
    SQL.Add('FROM ' + tblName);
    SQL.Add('WHERE (' + Field4DuplicateValue.FieldName + ' = ''' +
      Field4DuplicateValue.AsString + ''') ');
    SQL.Add('AND (' + IDField.FieldName + ' <> ''' + IDField.AsString + ''')');
    SQL.Add('AND (' + IDField.FieldName + ' <> ''' +
      VarToStr(IDField.OldValue) + ''')');
    SQL.Add(WHERESQL);
    SQL.Add('GROUP BY ' + Field4DuplicateValue.FieldName + ', ' +
      IDField.FieldName);
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn(Field4DuplicateValue.DisplayLabel + ' وارد شده تكراري مي‌باشد.');
      exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

procedure GetFunctionsItems(var FunItems, FunItems4Sum: string;
  qrysalary: TADOQuery; DBGrid1: TCedarDbgrid);
var
  i: Integer;
begin
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'exec Pay.GetFunctionsItems ' + APPBank.Year.ToString + ',' +
      APPBank.Year.ToString;
    ExecSQL;
    Active := False;
  end;
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT FunctionsItems.SalaryID, FormsInfo.InfoName_L1 FROM Pay.Functions INNER JOIN';
    SQL.Add('Pay.FunctionsItems ON Functions.FunctionID = FunctionsItems.FunctionID INNER JOIN');
    SQL.Add('Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID');
    SQL.Add('WHERE (Functions.Mounth >= 1)');

    SQL.Add('AND  (YearID = :YearID )');

    Parameters.ParamByName('YearID').Value := APPBank.Year;

    SQL.Add('GROUP BY FunctionsItems.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoID');
    SQL.Add('ORDER BY FormsInfo.InfoID');
    Active := True;
    i := 1;
    FunItems := EmptyStr;
    FunItems4Sum := EmptyStr;
    while not Eof do
    begin
      if optP.DecimalOrMinute = 0 then
      begin
        FunItems := FunItems + ',FunctionItemsList_1._Amount' + IntToStr(i);
        FunItems4Sum := FunItems4Sum + ',SUM(_Amount' + IntToStr(i) +
          ') _Amount' + IntToStr(i);
        with TFloatField.Create(qrysalary) do
        begin
          FieldName := '_Amount' + IntToStr(i);
          DataSet := qrysalary;
          Name := 'qrysalary' + FieldName;
          DisplayLabel := 'س.' + FieldByName('InfoName_L1').AsString;
          Index := 7 + i;
          qrysalary.FieldDefs.Add(Name, ftString, 150, True);

          with DBGrid1.Columns.Add do
          begin
            FieldName := '_Amount' + IntToStr(i);
            Index := 7 + i;
          end;

        end;
      end
      else
      begin
        FunItems := FunItems + ',Pay.Dec2Mint(FunctionItemsList_1._Amount' +
          IntToStr(i) + ') _Amount' + IntToStr(i);
        FunItems4Sum := FunItems4Sum + ',SUM(_Amount' + IntToStr(i) +
          ') _Amount' + IntToStr(i); // Pay.Dec2Mint( )
        with TStringField.Create(qrysalary) do
        begin
          FieldName := '_Amount' + IntToStr(i);
          DataSet := qrysalary;
          Name := 'qrysalary' + FieldName;
          DisplayLabel := 'س.' + FieldByName('InfoName_L1').AsString;
          Index := 7 + i;
          qrysalary.FieldDefs.Add(Name, ftString, 150, True);

          with DBGrid1.Columns.Add do
          begin
            FieldName := '_Amount' + IntToStr(i);
            Index := 7 + i;
          end;

        end;
      end;
      inc(i);
      Next;
    end;
    Active := False;
  end;

end;

procedure GetFunctionsItemsParam(var FunItems, FunItems4Sum, FunCations,
  FunItems4Groupby: string; qrysalary: TADOQuery; DBGrid1: TCedarDbgrid;
  SendParams: TParams; MounthFrom, MounthTo: Integer);
var
  SalaryID: string;
begin
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'exec Pay.GetFunctionsItemsParam :MounthFrom , :MounthTo ';
    SQL.Add(',:PersonelNOFrom , :PersonelNOTo  ,:PersonelStateFrom , ');
    SQL.Add(' :PersonelStateTo  ,:ProjectFrom , :ProjectTo ');
    Parameters.ParamByName('MounthFrom').Value := MounthFrom;
    Parameters.ParamByName('MounthTo').Value := MounthTo;

    Parameters.ParamByName('PersonelNOFrom').Value :=
      GetcFrom(SendParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNOTo').Value :=
      GetcTo(SendParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(SendParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(SendParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('ProjectFrom').Value :=
      GetcFrom(SendParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectTo').Value :=
      GetcTo(SendParams.ParamValues['ProjectID'], ftInteger);
    ExecSQL;
    Active := False;
  end;
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT SalaryID, InfoName_L1';
    SQL.Add('FROM Pay.FN_GetFunctionsItems(:MounthFrom , :MounthTo ');
    SQL.Add(',:PersonelNOFrom , :PersonelNOTo  ,:PersonelStateFrom , ');
    SQL.Add(' :PersonelStateTo  ,:ProjectFrom , :ProjectTo )AS a');
    SQL.Add('ORDER BY InfoID');

    Parameters.ParamByName('MounthFrom').Value := MounthFrom;
    Parameters.ParamByName('MounthTo').Value := MounthTo;

    Parameters.ParamByName('PersonelNOFrom').Value :=
      GetcFrom(SendParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNOTo').Value :=
      GetcTo(SendParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(SendParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(SendParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('ProjectFrom').Value :=
      GetcFrom(SendParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectTo').Value :=
      GetcTo(SendParams.ParamValues['ProjectID'], ftInteger);
    Active := True;
    FunItems := EmptyStr;
    FunItems4Sum := EmptyStr;
    FunCations := EmptyStr;
    FunItems4Groupby := EmptyStr;

    while not Eof do
    begin
      if optP.DecimalOrMinute = 0 then
      begin
        FunItems := FunItems + sLineBreak + ',FunctionItemsList_1._Amount' +
          IntToStr(RecNo);
        FunItems4Sum := FunItems4Sum + ',SUM(_Amount' + IntToStr(RecNo) +
          ') _Amount' + IntToStr(RecNo);
        FunItems4Groupby := FunItems4Groupby + sLineBreak +
          ',FunctionItemsList_1._Amount' + IntToStr(RecNo);
      end
      else
      begin
        FunItems := FunItems + sLineBreak +
          ',Pay.Dec2Mint(FunctionItemsList_1._Amount' + IntToStr(RecNo) +
          ') _Amount' + IntToStr(RecNo);
        FunItems4Sum := FunItems4Sum + ',SUM(_Amount' + IntToStr(RecNo) +
          ') _Amount' + IntToStr(RecNo); // Pay.Dec2Mint()
        FunItems4Groupby := FunItems4Groupby + ',_Amount' + IntToStr(RecNo);
        // Pay.Dec2Mint((+ ')) '
      end;
      // جهت نرخ اضافه کاری
      SalaryID := FieldByName('SalaryID').AsString;
      FunItems := FunItems + sLineBreak +
        ',case when FunctionItemsList_1._Amount' + IntToStr(RecNo) +
        '<>0 then ROUND(sum(case when(salaryid=' + SalaryID +
        ' AND ShowlistKind = 1 AND IsNull(MounthRetard,0)=2)then price else 0 end)/FunctionItemsList_1._Amount'
        + IntToStr(RecNo) + ',2) else 0 end as AmountRate' + IntToStr(RecNo);
      // جهت نرخ اضافه کاری

      FunCations := FunCations + IfThen(FunCations = EmptyStr, '', ';') + '|' +
        'م.' + FieldByName('InfoName_L1').AsString + '|';
      Next;
    end;
    Active := False;
  end;

end;

function TimeToDesimal(Time: Integer): Real;
begin
  Result := RoundTo(Time / 60 * 1, -7) // 100;
end;

function DesimalToTime(desimal: Real): Real;
begin
  Result := RoundTo(desimal / 1 * 60, -7) // * 100;
end;

function FloatToTime(TimeFloat: Real): string;
var
  // f: Real;
  Day: Real;
  Hour: Real;
  Min: Real;
  Symbol1, Symbol2: string;
  DayHour: Real;
begin
  // if opt.FloatToTimeActive then
  // begin
  // f := RoundTo(Frac(TimeFloat), -4);
  // f := RoundTo(f * 60, 0);
  // Result := FloatToStr(Abs(Int(TimeFloat))) + ':' + FloatToStr(Abs(f));
  // if TimeFloat < 0 then
  // Result := '(' + Result + ')'
  // end
  // else
  // begin
  // Result := FloatToStr(TimeFloat);
  // end;

  if (optP.FloatToTimeActive) and (TimeFloat <> 0) then
  begin
    IF TimeFloat < 0 then
    BEGIN
      Symbol1 := '( ';
      Symbol2 := ')';
    END
    ELSE
    BEGIN
      Symbol1 := '';
      Symbol2 := '';
    END;

    DayHour := dmf.qryDayHourAmount.AsFloat;

    Day := Floor((abs(TimeFloat)));
    Hour := Floor(((abs(TimeFloat) - Day) * DayHour));
    Min := Floor(((abs(TimeFloat) - Day) * DayHour - Hour) * 60);

    if (Day = 0) and (Hour = 0) and (Min = 0) then
      Symbol1 := '-'
    else
    BEGIN
      Symbol1 := '';
      Symbol2 := '';
    END;

    if (Day = 0) then
      Symbol1 := Symbol1 + ''
    else
      Symbol1 := Symbol1 + FloatToStr(Day).trim + 'روز';

    if (Day <> 0) and ((Hour <> 0) or (Min <> 0)) then
      Symbol1 := Symbol1 + 'و'
    else
      Symbol1 := Symbol1 + '';

    if ((Hour <> 0) or (Min <> 0)) then
      Symbol1 := Symbol1 + FloatToStr(Hour).trim + ':' + FloatToStr(Min).trim
    else
      Symbol1 := Symbol1 + '';

    Result := Symbol1 + Symbol2 + IfThen(CtrlDown,
      ' = (' + FloatToStr(TimeFloat) + ')', '')

  end
  else
  begin
    Result := FloatToStr(TimeFloat);
  end;
  // RETURN(Select @Symbol1
  // +   case when @Day=0 and @Hour=0 and @Min=0 then '-' else '' end
  // + 	case when @day = 0 then '' else  ltrim(rtrim(str(@Day)))  + ' روز  ' end
  // +   case when @day<>0 and (@Hour<>0 or @Min<>0) then '  و ' else '' end
  // +	case when (@Hour <> 0 or @Min <> 0) then  ltrim(rtrim(str(@Hour))) + ':' + ltrim(rtrim(str(@Min))) else '' end
  // +	@Symbol2)

end;

function SumFunctionDay(var FunctionDay: Integer; var MonthNo: byte;
  var DayStandard: byte; qryFunctions: TADOQuery; var Message_: string)
  : Boolean;
begin
  Result := True;
  With dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT SUM(FunctionDay)+SUM(ISNULL(SickDay, 0) ) AS SumFunctionDay';
    SQL.Add('FROM Pay.Functions');
    SQL.Add('WHERE (PersonelNo = ' + qryFunctions.FieldByName('PersonelNo')
      .AsString + ') AND (Mounth = ' + IntToStr(MonthNo) +
      ') AND (FunctionID <> ' + qryFunctions.FieldByName('FunctionID')
      .AsString + ')');

    SQL.Add(' AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    SQL.Add(' AND  (Years = :Years)');
    Parameters.ParamByName('Years').Value := qryFunctions.FieldByName('Years')
      .AsInteger;

    // Parameters.ParamByName('Years').Value := optP.Year;
    Active := True;
    if Fields[0].IsNull then
      FunctionDay := 0
    else
      FunctionDay := Fields[0].AsInteger;
  end;
  FunctionDay := FunctionDay + qryFunctions.FieldByName('FunctionDay').AsInteger
    + qryFunctions.FieldByName('SickDay').AsInteger;
  if FunctionDay <= DayStandard then
    exit;
  Result := False;
  Message_ := 'تعداد روزهاي ثبت شده ' + IntToStr(FunctionDay) +
    ' روز مي شود كه بيشتر از ' + IntToStr(DayStandard) +
    ' روز استاندارد تعريف شده در سيستم است.‏';
  Warn2(Message_);
end;

procedure CustIDToDetailCode(qryCustomers: TADOQuery; GroupType: Integer);
var
  rid, Cust_DetailCode, i: Integer;
  s1, s2: string;
  qryRange: TADOQuery;
  procedure AddOther(FieldName: string);
  begin
    with TADOQuery.Create(dmf) do
      try
        Connection := dmf.adcSalary;
        SQL.Text := 'SELECT ' + FieldName;
        SQL.Add('FROM CustomersGroup INNER JOIN');
        SQL.Add('Customers ON CustomersGroup.CustomerGrpID = Customers.CustomerGrpID');
        SQL.Add('WHERE (Customers.CustID = :CustID )');
        Parameters[0].Value := qryCustomers.FieldByName('CustID').AsInteger;
        Active := True;
        if (Fields[0].AsLargeInt > 0) then
        begin
          qryRange.Open;
          qryRange.Insert;
          qryRange.FieldByName('TopicCode').AsLargeInt := Fields[0].AsLargeInt;
          qryRange.FieldByName('DetailCode').AsInteger := Cust_DetailCode;
          if not optA.AccOldAvailable then
            qryRange.FieldByName('CompanyCode').AsInteger :=
              optA.AccDefaultCompany;
          qryRange.Post;
          qryRange.Close;
        end;
      finally
        Free;
      end;
  end;

begin
  if optP.AccDetailCodeEqualCustID in [0, 4] then
    exit;
  Cust_DetailCode := qryCustomers.FieldByName('acc_DetailCode').AsInteger;
  s1 := ',' + IntToStr(GroupType) + ',';
  s2 := ',' + optP.CustAccDetailCodeEqualCustID + ',';
  if Pos(s1, s2) = 0 then
    exit;

  if not((Cust_DetailCode <> 0) and (qryCustomers.FieldByName('__DetailCode')
    .IsNull)) then
    exit;

  if (optP.AccDetailCodeEqualCustID = 1) or (optP.AccDetailCodeEqualCustID = 0)
  then
    if get_response('كد تفصيلي در سيستم حسابداري وجود ندارد،ايجاد شود؟') <> mrYes
    then
      exit;
  with dmf.qryAccDetailCode do
  begin
    Close;
    s1 := SQL.Text;
    LockType := ltOptimistic;
    if not optA.AccOldAvailable then
    begin
      SQL.Text := 'SELECT DetailCode,DetailName_L1 AS DetailName,';
      SQL.Add('DetailName_L2,CompanyCode,UseKindInCo,MakeDate FROM acc.Details');
    end;
    Open;
    for i := 0 to Fields.Count - 1 do
      Fields[i].ReadOnly := False;

    Insert;
    FieldByName('DetailCode').AsInteger := Cust_DetailCode;
    if optA.AccOldAvailable then
      FieldByName('Desc').AsString :=
        trim(qryCustomers.FieldByName('CustFirstName').AsString + ' ' +
        qryCustomers.FieldByName('CustName').AsString)
    else
      FieldByName('DetailName').AsString :=
        trim(qryCustomers.FieldByName('CustFirstName').AsString + ' ' +
        qryCustomers.FieldByName('CustName').AsString);
    if not optA.AccOldAvailable then
    begin
      FieldByName('CompanyCode').AsInteger := optA.AccDefaultCompany;
      FieldByName('UseKindInCo').AsInteger := 0;
      FieldByName('MakeDate').AsDateTime := Now;
    end; // if
    Post;
    Close;

    qryRange := TADOQuery.Create(dmf);
    with qryRange do
      try
        Connection := dmf.qryAccDetailCode.Connection;
        SQL.Text := 'SELECT Top 0 TopicCode, DetailCode, CompanyCode';
        SQL.Add('FROM Acc.DetailRange');
        AddOther('Customers.acc_TopicCode');
        AddOther('CustomersGroup.acc_TopicCode');
        AddOther('CustomersGroup.acc_ChecksTopicCode');
        AddOther('CustomersGroup.acc_ReChecksTopicCode');
        AddOther('CustomersGroup.acc_CertifyTopicCode');
      finally
        Free;
      end;

    SQL.Text := s1;
    LockType := ltReadOnly;
    dmf.qryAccDetailCode.Open;
    dmf.qryAccDetailCode.Requery();
    rid := qryCustomers.FieldByName('CustID').AsInteger;
    qryCustomers.Close;
    qryCustomers.Open;
    qryCustomers.Locate('CustID', rid, []);
  end; // with

end;

function setInOrNotIn4QRy(qry: TADOQuery; My_Params: TParams;
  paramname, ColumnName: string): string;
var
  s: string;
begin
  s := GetcNot(My_Params.ParamValues[paramname]);
  if ((s <> '-1') and (s <> '')) then
  begin
    qry.SQL.Add('and not exists( Select part From Pay.SplitString(''' + s +
      ''','','') where part = ' + ColumnName + ')');
  end;

  s := GetcSelected(My_Params.ParamValues[paramname]);
  if ((s <> '-1') and (s <> '')) then
  begin
    qry.SQL.Add('and exists( Select part From Pay.SplitString(''' + s +
      ''','','') where part = ' + ColumnName + ')');
  end;

end;

function GetTableFieldNames(ADC: TADOConnection; SchemaName: string;
  TableName: String): String;
var
  f: TStringList;
  i: Integer;
begin
  Result := '';
  f := TStringList.Create;
  With TADOQuery.Create(dmf) do
    try
      Connection := dmf.adcSalary;
      SQL.Text := 'SELECT top 1 * FROM ' + SchemaName + TableName;
      GetFieldNames(f);
    finally
      Free;
    end;
  for i := 0 to f.Count - 1 do
    if LowerCase(f[i]) <> 'rowguid' then
      Result := Result + TableName + '.' + f[i] + ',';
  f.Free;
  Result := LeftStr(Result, length(Result) - 1);
end;

procedure initDBComboInsurance(comboInsuranceNo: TComboBox);
var
  FiledId: Integer;
begin
  comboInsuranceNo.Clear;
  FiledId := 1;
  if optP.primaryLanguage <> 0 then
    FiledId := 2;
  with dmf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT F.FormInfoID, F.InfoName_L1, F.InfoName_L2' +
      ' FROM Pay.FormTypes AS T INNER JOIN' +
      ' Pay.FormsInfo AS F ON T.FormType = F.FormType' +
      ' WHERE (T.SalaryKind = 10)';
    Active := True;
    while not Eof do
    begin
      comboInsuranceNo.AddItem(Fields[FiledId].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure Check_JobPromissory(qryInterdicts: TDataSet);
var
  msg: WideString;
  sp: TADOStoredProc;
begin
  sp := CreateStoredProc('Pay.Sp_JobPromissory', dmf.adcSalary);
  try
    // sp.Parameters.Refresh;
    sp.Parameters.ParamByName('@jobCode').Value :=
      qryInterdicts.FieldByName('jobsGroup').AsInteger;
    sp.Parameters.ParamByName('@InterdicStartDate').Value :=
      qryInterdicts.FieldByName('InterdicStartDate').AsString;
    sp.Parameters.ParamByName('@PersonelNo').Value :=
      qryInterdicts.FieldByName('PersonelNo').AsInteger;
    sp.Parameters.ParamByName('@AccDetailCode').Value :=
      qryInterdicts.FieldByName('AccDetailCode').AsInteger;
    sp.Parameters.ParamByName('@Msg').Value := '';
    sp.ExecProc;
    msg := VarToStr(sp.Parameters.ParamByName('@RETURN_VALUE').Value);
    if (msg <> EmptyStr) and (msg <> '0') then
      Warn(msg);
  finally
    sp.Free;
  end
end;

function CreateStoredProc(const ProcName: string; const Conn: TADOConnection)
  : TADOStoredProc;
begin
  Result := TADOStoredProc.Create(nil);
  Result.Connection := Conn;
  Result.ProcedureName := ProcName;
  Result.Parameters.Refresh;
end;

end.
