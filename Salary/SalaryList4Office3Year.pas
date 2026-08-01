{ -----------------------------------------------------------------------------
  Unit Name: SalaryList4Office2
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit SalaryList4Office3Year;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, ppModule, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Mask, ppStrtch,
  ppRegion, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions,Filter_ADO_Const;

type
  TSalaryList4Office3YearF = class(Ttemplate2MDIF)
    qrysalary: TADOQuery;
    srcSalary: TDataSource;
    DBGrid1: TDBGrid;
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
    ppDBPipeline2: TppDBPipeline;
    Button3: TButton;
    actFunctionShow: TAction;
    actFish: TAction;
    CmbArchiveID: TComboBox;
    SumGrid1: TSumGrid;
    actSMS: TAction;
    qrysalaryInfoID: TIntegerField;
    qrysalaryOfficeName: TStringField;
    qrysalaryPersonelNO: TIntegerField;
    qrysalaryMobile: TStringField;
    qrysalaryPersonName: TStringField;
    qrysalaryfatherName_L1: TStringField;
    qrysalaryjobCode: TIntegerField;
    qrysalaryjobName: TStringField;
    qrysalaryFunctionDay: TFloatField;
    qrysalaryFunctionTime: TFloatField;
    qrysalarySumWage: TBCDField;
    qrysalarysum23Dec: TBCDField;
    qrysalaryContainInsourance: TBCDField;
    qrysalaryContainTax: TBCDField;
    qrysalaryTaxValue: TBCDField;
    qrysalarySumDec: TBCDField;
    qrysalaryPayableSalary: TBCDField;
    qrysalaryDayQuntity: TFloatField;
    qrysalaryBonusPrise: TBCDField;
    qrysalaryTaxPrice: TBCDField;
    qrysalaryPaymentBonus: TBCDField;
    qrysalaryBonusPayAble: TBCDField;
    qrysalary_Row: TIntegerField;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel46: TppLabel;
    ppLine7: TppLine;
    ppShape1: TppShape;
    ppLine16: TppLine;
    ppLine22: TppLine;
    ppLine27: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine6: TppLine;
    ppLabel1: TppLabel;
    d4: TppLabel;
    d3: TppLabel;
    d2: TppLabel;
    d1: TppLabel;
    ppLabel33: TppLabel;
    w14: TppLabel;
    ppLabel2: TppLabel;
    w5: TppLabel;
    w3: TppLabel;
    w10: TppLabel;
    w9: TppLabel;
    ppLabel8: TppLabel;
    w4: TppLabel;
    ppLabel9: TppLabel;
    ppLabel4: TppLabel;
    ppLabel3: TppLabel;
    ppLabel21: TppLabel;
    ppLabel43: TppLabel;
    ppLine8: TppLine;
    ppLine38: TppLine;
    ppLine34: TppLine;
    ppLabel45: TppLabel;
    ppLabel22: TppLabel;
    ppLabel34: TppLabel;
    ppDBText6: TppDBText;
    ppDBText21: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine9: TppLine;
    ppLine15: TppLine;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine24: TppLine;
    ppLine17: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine25: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ppDBCalc32: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine76: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBCalc9: TppDBCalc;
    ppLine3: TppLine;
    ppDBCalc10: TppDBCalc;
    ppLine14: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppRegion1: TppRegion;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppDBCalc19: TppDBCalc;
    ppLine62: TppLine;
    ppDBCalc20: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine64: TppLine;
    ppDBCalc23: TppDBCalc;
    ppLine65: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel49: TppLabel;
    ppLine58: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel5: TppLabel;
    ppRegion2: TppRegion;
    ppLine51: TppLine;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppDBCalc14: TppDBCalc;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppDBCalc16: TppDBCalc;
    ppLine56: TppLine;
    ppDBCalc17: TppDBCalc;
    ppLine57: TppLine;
    ppDBCalc18: TppDBCalc;
    ppLine59: TppLine;
    ppLine63: TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppDBCalc24: TppDBCalc;
    ppRecFooterLine: TppLine;
    ppRecFooterLine2: TppLine;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
  private
    procedure Updatefilter;
    procedure InitReportFile(GeneralFileName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryList4Office3YearF: TSalaryList4Office3YearF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO, StrUtils,
  main, FunctionItems, ListSalary, searchCode_ADO,
  SalaryFunctions, infoSMS;

{$R *.dfm}

//procedure TSalaryList4Office3YearF.MakeSql;
//var
//  sqltxt, bozorgtar: string;
//begin
//  inherited;
//  // ----make qrysalary sql-----------------------------------
//  sqltxt := 'SELECT  FormsInfoOffice.InfoID, FormsInfoOffice.InfoName_L1 AS OfficeName, '
//    + ' FixedCalculated.PersonelNO,PersonelInfo.Mobile,PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PersonName ,PersonelInfo.fatherName_L1 '
//    + ' ,FormsInfo_jobCode.InfoID as jobCode , FormsInfo_jobCode.InfoName_L1 AS jobName '
//    +
//
//    ',Functions.FunctionDay,Functions.FunctionTime ';
//  sqltxt := sqltxt ;//+ FunItems;
//
//  sqltxt := sqltxt +
//    ' ,Sum(case ShowlistKind when 1 then price else 0 end ) as SumWage , ' +
//
//    ' sum( case when ( ShowlistKind in(2,4,15,14) and bedbes=1 )  then price else 0 end ) as sum23Dec , '
//    +
//
//    ' sum( case ShowlistKind when 3  then price else 0 end ) as ContainInsourance , '
//    + ' sum( case when ( ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12 ) then price else 0 end ) as ContainTax , '
//    + ' sum( case when ( ShowlistKind=11 and bedbes=2 ) then price else 0 end ) as TaxValue ';
//
//  sqltxt := sqltxt +
//    ', sum( case ShowlistKind when 2  then price else 0 end ) +' +
//    ' Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ) as SumDec ,'
//    + ' Sum(case ShowlistKind when 1 then price else 0 end )-(sum( case ShowlistKind when 2  then price else 0 end ) +Sum( case  when ShowlistKind=11 and bedbes = 2 then price else 0 end ))  as PayableSalary';
//
//  with qrysalary do
//  begin
//    Active := False;
//    SQL.Text := sqltxt;
//
//    SQL.Add('FROM Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN');
//    SQL.Add('Pay.Interdicts LEFT OUTER JOIN');
//    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID RIGHT');
//    SQL.Add('OUTER JOIN');
//    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
//    SQL.Add('( select PersonelNo,sum(FunctionTime)as FunctionTime,sum(FunctionDay)as FunctionDay FROM Pay.Functions');
//    SQL.Add(' GROUP BY  PersonelNo)Functions INNER JOIN');
//    SQL.Add('Pay.PersonelInfo ON  ');
//    SQL.Add('Functions.PersonelNo = PersonelInfo.PersonelNo ON');
//    SQL.Add(' FixedCalculated.PersonelNO =');
//    SQL.Add('PersonelInfo.PersonelNo');
//    SQL.Add(' ON Pay.Interdicts.PersonelNo = FixedCalculated.PersonelNO');
//    SQL.Add('ON');
//    SQL.Add('FormsInfoPersonelState.FormInfoID = PersonelInfo.PersonelState LEFT OUTER JOIN');
//    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN');
//    SQL.Add('Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND');
//    SQL.Add('Interdicts.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN');
//    SQL.Add('Pay.FormsInfo AS FormsInfo_jobCode ON Pay.Interdicts.jobCode = FormsInfo_jobCode.FormInfoID');
//
//    SQL.Add(' WHERE  (FixedCalculated.ArchiveID = :ArchiveID)');
//    SQL.Add(' AND(FixedCalculated.Mounth BETWEEN :MounthFrom AND :MounthTo ) ');
//    SQL.Add(' AND (FormsInfoPersonelState.InfoID  BETWEEN :PersonelStateFrom AND :PersonelStateTo )');
//    SQL.Add(' AND (FormsInfoEmployTypeID.InfoID   BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');
//    SQL.Add('AND (InterdicType = 0 ) ');
//
//    // GetYearMounth(GetcTo(myParams.ParamValues['Mounth'], ftInteger));
//    // SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + opt.YearMounth
//    // + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
//    // opt.YearMounth + ''')');
//    SQL.Add('AND (Interdicts.State < 50)');
//
//    /// /////////////////////////////////////////////////
//    SQL.Add(' and  (FormsInfoOffice.InfoID  BETWEEN :FromInfoID AND :ToInfoID)   ');
//    SQL.Add(' AND (FixedCalculated.PersonelNO BETWEEN :FromPersonelNo AND :ToPersonelNo)');
//
//    SQL.Add('AND (FormsInfo_jobCode.InfoID BETWEEN :jobCodeFrom AND :jobCodeTo ) ');
//
//    SQL.Add(' GROUP BY FormsInfoOffice.InfoID, FixedCalculated.PersonelNO,PersonelInfo.Mobile, FormsInfoOffice.InfoName_L1,');
//    SQL.Add(' PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1');
//    SQL.Add(',FormsInfo_jobCode.InfoID  , FormsInfo_jobCode.InfoName_L1 ');
//
//    SQL.Add(', Functions.FunctionDay, Functions.FunctionTime ');
//   // SQL.Add(FunItems);
//     ShowQryParam(qrysalary)
//  end; // with
//end;

procedure TSalaryList4Office3YearF.FormShow(Sender: TObject);
begin
  inherited;
  InitCmbArchiveID(CmbArchiveID, 0);
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close
end;

procedure TSalaryList4Office3YearF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TSalaryList4Office3YearF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True);
end;

procedure TSalaryList4Office3YearF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryList4Office3YearF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrysalary);
end;

procedure TSalaryList4Office3YearF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryList4Office3YearF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qrysalary, 'Mobile')
end;

procedure TSalaryList4Office3YearF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrysalary.DisableControls;
    // PopList4Print.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
    InitReportFile('SalaryList4Office3YearF.rtm');

    // InitReportFile('SalaryList.rtm');
  finally
    qrysalary.EnableControls;
  end;
end;

procedure TSalaryList4Office3YearF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrysalary);
end;

procedure TSalaryList4Office3YearF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryList4Office3YearF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryList4Office3YearF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'jobCode', 'Å”  ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 13)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 13)');
      AddItem(DMf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');
      AddItem(DMf.adcSalary, 'InfoID', ' ⁄‰Ê«‰ ”«“„«‰', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM Pay.FormsInfo  ' +
        'WHERE  FormType = 12 ',
        'SELECT MIN(InfoID) , MAX(InfoID)  FROM Pay.FormsInfo  ' +
        'WHERE  FormType = 12');
      // 'SELECT    FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
      // + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
      // + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ',
      // 'SELECT  MIN(InfoID) , MAX(InfoID) FROM Pay.FormsInfo INNER JOIN Pay.FixedCalculated on FixedCalculated.OfficeCode = FormsInfo.FormInfoID where formtype=12  ');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'Mounth', ' „«Â', '', ftInteger, dvMinMax, '', '',
        ciSimple, '', 'SELECT  1 ,12   FROM Pay.StandardTimes');
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

procedure TSalaryList4Office3YearF.Updatefilter;
begin
//  addFunctionsItems;
//  MakeSql;
  with qrysalary do
  begin
    Active := False;
    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    if myParams.FindParam('PersonelState') <> nil then
    begin
      Parameters.ParamByName('PersonelStateFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('PersonelStateTo').Value :=
        GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
      Parameters.ParamByName('FromPersonelNo').Value :=
        GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
      Parameters.ParamByName('ToPersonelNo').Value :=
        GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('PersonelStateFrom').Value := 0;
      Parameters.ParamByName('PersonelStateTo').Value := 2147483647;
      Parameters.ParamByName('FromPersonelNo').Value := 0;
      Parameters.ParamByName('ToPersonelNo').Value := 2147483647;
    end;
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('jobCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['jobCode'], ftInteger);
    Parameters.ParamByName('jobCodeTo').Value :=
      GetcTo(myParams.ParamValues['jobCode'], ftInteger);

    Parameters.ParamByName('FromInfoID').Value :=
      GetcFrom(myParams.ParamValues['InfoID'], ftInteger);
    Parameters.ParamByName('ToInfoID').Value :=
      GetcTo(myParams.ParamValues['InfoID'], ftInteger);

    Active := True;
  end;
end;

procedure TSalaryList4Office3YearF.InitReportFile(GeneralFileName: string);
var
  ReportFooter: String;
begin
  ReportFooter := FooterFormType(48);
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(  GeneralFileName);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('›«Ì· ç«ÅÌ ' + GeneralFileName + ' Ì«›  ‰‘œ.!˛');

//      InitReport(ppReport1, DetailBand, ppRegion1, ppRecFooterLine,
//        ReportFooter);
//      InitReport(ppReport1, DetailBand, ppRegion2, ppRecFooterLine2,
//        ReportFooter);
    SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with
end;

procedure TSalaryList4Office3YearF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TSalaryList4Office3YearF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

End.
