unit CalcAnnuity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, DB, ADODB, ComCtrls, ppBands,
  ppClass, ppDB, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppVar, Menus, ppModule, MaskUtils,
  ppRegion, ppParameter, Math, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TCalcAnnuityF = class(Ttemplate2MDIF)
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    DataSetInsert2: TDataSetInsert;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn10: TBitBtn;
    qryPersonelDecExt: TADOQuery;
    SrcPersonelDecExt: TDataSource;
    qryPersonelDecExtDecExtID: TIntegerField;
    qryPersonelDecExtPersonelNo: TIntegerField;
    qryPersonelDecExtFirstMounth: TWordField;
    qryPersonelDecExtEndMounth: TWordField;
    qryPersonelDecExtDayQuntity: TFloatField;
    qryPersonelDecExtFormInfoID2: TIntegerField;
    qryPersonelDecExtOfficeCode: TIntegerField;
    actCalc: TAction;
    actAnnuityCal: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    qry_init: TADOQuery;
    qryPersonelDecExtEmployeeAmount: TBCDField;
    qryPersonelDecExtEmployerAmount: TBCDField;
    qryPersonelDecExtPaymentLoan: TBCDField;
    qryPersonelDecExtBonusPayAble: TBCDField;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    actFilter: TAction;
    BitBtn3: TBitBtn;
    Panel4: TPanel;
    lblYears: TLabel;
    qrySearch: TADOQuery;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    mskPrsnlNo1: TMaskEdit;
    edtPrsnlName1: TEdit;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    mskPrsnlNo2: TMaskEdit;
    Label2: TLabel;
    edtPrsnlName2: TEdit;
    StatusBar1: TStatusBar;
    btnCalcConst: TBitBtn;
    actCalcConst: TAction;
    qryPersonelDecExtOfficeInfoID: TIntegerField;
    SBtnOfficeInfoID: TSpeedButton;
    MskOfficeInfoID1: TMaskEdit;
    edtOfficeInfoID1: TEdit;
    Label4: TLabel;
    SpeedButton4: TSpeedButton;
    MskOfficeInfoID2: TMaskEdit;
    Label5: TLabel;
    edtOfficeInfoID2: TEdit;
    qrySearchOfficeInfo: TADOQuery;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape4: TppShape;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppShape5: TppShape;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    qryPersonelDecExtProjectInfoID: TIntegerField;
    GroupBox3: TGroupBox;
    MskDate: TMaskEdit;
    SpeedButton3: TSpeedButton;
    btnArchive: TBitBtn;
    actArchive: TAction;
    qryPersonelDecExtEndDate: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    actSelectAll: TAction;
    actSelectAll1: TMenuItem;
    actArchiveDelete: TAction;
    N2: TMenuItem;
    LblShowLimitPlace2: TLabel;
    GroupBox4: TGroupBox;
    SpeedButton5: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    mnuN3: TMenuItem;
    mnuN4: TMenuItem;
    actCalcConst2: TAction;
    popCalcConst: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    actDocNoBonus: TAction;
    actDocNoNull1: TMenuItem;
    actDocNoAnnuity: TAction;
    qryPersonelDecExtDocNoBonus: TIntegerField;
    qryPersonelDecExtDocDateBonus: TStringField;
    qryPersonelDecExtDocNoAnnuity: TIntegerField;
    qryPersonelDecExtDocDateAnnuity: TStringField;
    N5: TMenuItem;
    N6: TMenuItem;
    Label7: TLabel;
    qryPersonelDecExtProjectname_L1: TStringField;
    qryPersonelDecExtProjectname_L2: TStringField;
    qryPersonelDecExtOfficeName_L1: TStringField;
    qryPersonelDecExtOfficeName_L2: TStringField;
    qryPersonelDecExtPersonName_L1: TStringField;
    qryPersonelDecExtname_L1: TStringField;
    qryPersonelDecExtlastName_L1: TStringField;
    DBGrid1: TCedarDbgrid;
    btnDefault: TSpeedButton;
    mnuFix: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    qryPersonelDecExtleaveCount: TFloatField;
    qryPersonelDecExtleavePrice: TBCDField;
    BitBtn4: TBitBtn;
    actleavePrice: TAction;
    qryFN_CalcleaveCount: TADOQuery;
    Label8: TLabel;
    mskMounth: TMaskEdit;
    popCalc: TPopupMenu;
    N9: TMenuItem;
    mniTax: TMenuItem;
    N10: TMenuItem;
    mniN11: TMenuItem;
    mniN12: TMenuItem;
    actArchiveSelected: TAction;
    popArchive: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    Label9: TLabel;
    N14: TMenuItem;
    N15: TMenuItem;
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SrcPersonelDecExtStateChange(Sender: TObject);
    procedure actCalcExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure AllClikPopClick(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mskPrsnlNo1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actAnnuityCalExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure qryPersonelDecExtAfterOpen(DataSet: TDataSet);
    procedure actCalcConstExecute(Sender: TObject);
    procedure SBtnOfficeInfoIDClick(Sender: TObject);
    procedure MskOfficeInfoID1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure actArchiveExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure actArchiveDeleteExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuN3Click(Sender: TObject);
    procedure mnuN4Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnCalcConstClick(Sender: TObject);
    procedure actCalcConst2Execute(Sender: TObject);
    procedure actDocNoBonusExecute(Sender: TObject);
    procedure actDocNoAnnuityExecute(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure btnDefaultClick(Sender: TObject);
    procedure actleavePriceExecute(Sender: TObject);
    procedure MskDateChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure actArchiveSelectedExecute(Sender: TObject);
    procedure btnArchiveClick(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
  private
    UpDateFun2: String;
    procedure UPDATESQLQRY(UpDateFun, SETUpDate: String);
    // procedure AllUpdate(ActCaption, UPDATEFieldname, WHEREStr: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalcAnnuityF: TCalcAnnuityF;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro, SalaryFunctions, search2, sort2,
  StrUtils, filter_ADO, FilterClass_ADO;

{$R *.dfm}

procedure TCalcAnnuityF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCalcAnnuityF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonelDecExt);
end;

procedure TCalcAnnuityF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonelDecExt);
end;

procedure TCalcAnnuityF.SrcPersonelDecExtStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(dmF.adcSalary);
end;

procedure TCalcAnnuityF.actCalcExecute(Sender: TObject);
var
  UpDateFun: String;
begin
  inherited;
  if Length(Trim(MskDate.Text)) < 8 then
  begin
    Warn('  تاريخ محاسبه   وارد نشده');
    MskDate.SetFocus;
    Exit;
  end;

  if qryPersonelDecExt.RecordCount > 0 then
    if get_response('آيا براي انجام محاسبات مطمئن هستيد.‏') <> mrYes then
      Exit;

  UpDateFun := 'Pay.BonusForUpDate';
  if optP.TaxKindCalc <> 0 then
    UpDateFun := 'Pay.BonusForUpDateYearly';

  if UpDateFun2 <> EmptyStr then
    UpDateFun := UpDateFun2;

  UPDATESQLQRY(UpDateFun,
    'SET EmployeeAmount = ROUND(CBonusPrice,0), PaymentLoan = 0');
  actFilter.Execute;
  UPDATESQLQRY(UpDateFun,
    'SET EmployeeAmount = ROUND(CBonusPrice,0), PaymentLoan = CASE WHEN st.mounth_txx >0 THEN  ROUND( (DayQuntity / Sum_DayQuntity ) * st.mounth_txx,0) ELSE 0 END ');

  actFilter.Execute;

end;

procedure TCalcAnnuityF.UPDATESQLQRY(UpDateFun, SETUpDate: String);
begin
  With dmF.qryTmpTmpp do
  begin
    CommandTimeout := 0;
    DisableControls;
    Active := False;

    SQL.Text := 'UPDATE B';
    SQL.Add(SETUpDate);
    SQL.Add('');
    SQL.Add('FROM');
    SQL.Add(UpDateFun +
      '(:YearMounth, DEFAULT, 2, :PersonelNoFrom, :PersonelNoTo,' +
      qry_init.Fieldbyname('FormInfoID').AsString +
      ' , 1,:OfficeInfoIDFrom,:OfficeInfoIDTo , :Mounth , 1 , :InterTypeFrom , :InterTypeTo  ) AS B');
    SQL.Add('INNER JOIN Pay.SALARY_TAX_CALCULATED_Eydi(:Mounth2 , :YearID , :YearMounth2 , :InterType2From,');
    SQL.Add(':PersonelNo2FROM, :PersonelNo2To , DEFAULT, DEFAULT, DEFAULT) AS ST');
    SQL.Add('on ST.PersonelNo = B.PersonelNo');
    SQL.Add('');
    SQL.Add('WHERE (EndDate IS NULL or ltrim(rtrim(EndDate)) = '''' )');

    if UpDateFun2 <> EmptyStr then
    begin

      SQL.Text := 'UPDATE ' + UpDateFun +
        '(:YearMounth, DEFAULT, 2, :PersonelNoFrom, :PersonelNoTo,' +
        qry_init.Fieldbyname('FormInfoID').AsString +
        ' , 1,:OfficeInfoIDFrom,:OfficeInfoIDTo , :Mounth , 1 , :InterTypeFrom , :InterTypeTo ';
      SQL.Text := SQL.Text + ', ' + optP.GovConstAmount + ', ' + optP.GovSpouse
        + ', ' + optP.GovChild;

      SQL.Add(')SET EmployeeAmount = ROUND(CBonusPrice,0)');

      if mniTax.Checked then
        SQL.Add(', PaymentLoan =ROUND( CTax,0)')
      else
        SQL.Add(', PaymentLoan =0');
      SQL.Add('WHERE (EndDate IS NULL or ltrim(rtrim(EndDate)) = '''' )');
    end;

    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(Trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(Trim(mskPrsnlNo2.Text));

    if Parameters.FindParam('PersonelNo2From') <> nil then
    begin
      Parameters.ParamByName('PersonelNo2From').Value :=
        StrToInt(Trim(mskPrsnlNo1.Text));
      Parameters.ParamByName('PersonelNo2To').Value :=
        StrToInt(Trim(mskPrsnlNo2.Text));
      Parameters.ParamByName('YearMounth2').Value := MidStr(MskDate.Text, 1, 7);
      Parameters.ParamByName('Mounth2').Value := StrToInt(mskMounth.Text);
      Parameters.ParamByName('YearID').Value := MidStr(MskDate.Text, 1, 4);
    end;

    Parameters.ParamByName('YearMounth').Value := MidStr(MskDate.Text, 1, 7);
    Parameters.ParamByName('Mounth').Value := StrToInt(mskMounth.Text);
    Parameters.ParamByName('OfficeInfoIDFrom').Value :=
      StrToInt(Trim(MskOfficeInfoID1.Text));
    Parameters.ParamByName('OfficeInfoIDTo').Value :=
      StrToInt(Trim(MskOfficeInfoID2.Text));

    if myParams.FindParam('InterType') = nil then
    begin
      Parameters.ParamByName('InterTypeFrom').Value := 0;
      if Parameters.FindParam('InterType2From') <> nil then
        Parameters.ParamByName('InterType2From').Value := 0;
      Parameters.ParamByName('InterTypeTo').DataType := ftInteger;
      Parameters.ParamByName('InterTypeTo').Value := 999999999;
    end
    else
    begin
      Parameters.ParamByName('InterTypeFrom').Value :=
        GetcFrom(myParams.ParamValues['InterType'], ftInteger);

      if Parameters.FindParam('InterType2From') <> nil then
        Parameters.ParamByName('InterType2From').Value :=
          GetcFrom(myParams.ParamValues['InterType'], ftInteger);

      Edit1.Text := GetcFrom(myParams.ParamValues['InterType'], ftInteger);

      Parameters.ParamByName('InterTypeTo').Value :=
        GetcTo(myParams.ParamValues['InterType'], ftInteger);
      Edit2.Text := GetcTo(myParams.ParamValues['InterType'], ftInteger);
    end;
    // end if

    if CtrlDown then
      ShowQryParam(dmF.qryTmpTmpp);

    BigMessage(IntToStr(ExecSQL) + ' مورد ثبت شد.', 1);
    EnableControls;
    Active := False;
    CommandTimeout := 30;
  end; // With

end;

procedure TCalcAnnuityF.actPrintExecute(Sender: TObject);
var
  ReportFooter: String;
begin
  inherited;
  ReportFooter := FooterFormType(48);
  try
    MakeMenuItem(59, AllClikPopClick, PopList4Print);
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
  end;
end;

procedure TCalcAnnuityF.AllClikPopClick(Sender: TObject);
var
  ReportName: String;
begin
  inherited;
  ReportName := (Sender as TMenuItem).Hint;
  if pos('Office', ReportName) <> 0 then
    qryPersonelDecExt.Sort := 'OfficeCode';
  if pos('Project', ReportName) <> 0 then
    qryPersonelDecExt.Sort := 'FormInfoID2';
  InitReportFile(ppReport1, ReportName);

end;

procedure TCalcAnnuityF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TCalcAnnuityF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCalcAnnuityF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TCalcAnnuityF.actFilterExecute(Sender: TObject);
begin
  inherited;
  if Trim(mskPrsnlNo1.Text) = '' then
  begin
    mskPrsnlNo1.Text := '0';
    mskPrsnlNo2.Text := '2147483647';
  end;
  with qryPersonelDecExt do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(Trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(Trim(mskPrsnlNo2.Text));
    Parameters.ParamByName('FormInfoID').Value :=
      qry_init.Fieldbyname('FormInfoID').AsInteger;

    Parameters.ParamByName('OfficeInfoIDFrom').Value :=
      StrToInt(Trim(MskOfficeInfoID1.Text));
    Parameters.ParamByName('OfficeInfoIDTo').Value :=
      StrToInt(Trim(MskOfficeInfoID2.Text));

    if myParams.FindParam('InterType') = nil then
    begin
      Parameters.ParamByName('InterTypeFrom').Value := 0;
      Parameters.ParamByName('InterTypeTo').DataType := ftInteger;
      Parameters.ParamByName('InterTypeTo').Value := 999999999;
    end
    else
    begin
      Parameters.ParamByName('InterTypeFrom').Value :=
        GetcFrom(myParams.ParamValues['InterType'], ftInteger);
      Edit1.Text := GetcFrom(myParams.ParamValues['InterType'], ftInteger);
      Parameters.ParamByName('InterTypeTo').Value :=
        GetcTo(myParams.ParamValues['InterType'], ftInteger);
      Edit2.Text := GetcTo(myParams.ParamValues['InterType'], ftInteger);
    end;
    // end if

    Active := True;
  end; // with

end;

procedure TCalcAnnuityF.actleavePriceExecute(Sender: TObject);
begin
  inherited;
  if Length(Trim(MskDate.Text)) < 8 then
  begin
    Warn('  تاريخ محاسبه   وارد نشده');
    MskDate.SetFocus;
    Exit;
  end;

  if qryPersonelDecExt.RecordCount > 0 then
    if get_response('آيا براي انجام محاسبات مرخصی مطمئن هستيد.‏') <> mrYes then
      Exit;

  With dmF.qryTmpTmpp do
  begin
    CommandTimeout := 0;
    DisableControls;
    Active := False;
    SQL.Text := '';
    SQL.Add('DECLARE @FormInfoID int');
    SQL.Add('DECLARE @PersonelNoFrom int');
    SQL.Add('DECLARE @PersonelNoTo int ');
    SQL.Add('DECLARE @OfficeInfoIDFrom int ');
    SQL.Add('DECLARE @OfficeInfoIDTo int ');
    SQL.Add('DECLARE @InterTypeFrom int');
    SQL.Add('DECLARE @InterTypeTo int');
    SQL.Add('DECLARE @YearIDFrom int');
    SQL.Add('DECLARE @YearIDTo int');

    SQL.Add('SET @FormInfoID = :FormInfoID');
    SQL.Add('SET @PersonelNoFrom  = :PersonelNoFrom');
    SQL.Add('SET @PersonelNoTo  = :PersonelNoTo');
    SQL.Add('SET @OfficeInfoIDFrom  = :OfficeInfoIDFrom');
    SQL.Add('SET @OfficeInfoIDTo  = :OfficeInfoIDTo');
    SQL.Add('SET @InterTypeFrom  = :InterTypeFrom');
    SQL.Add('SET @InterTypeTo  = :InterTypeTo');
    SQL.Add('SET @YearIDFrom  = :YearIDFrom');
    SQL.Add('SET @YearIDTo  = :YearIDTo');

    SQL.Add('UPDATE FN_CalcleaveCount_1');

    SQL.Add('SET leaveCount = Talab, leavePrice =ROUND( ISNULL(TalabPrice,0),0)');

    SQL.Add('FROM Pay.FN_CalcleaveCount(@FormInfoID, @PersonelNoFrom, @PersonelNoTo, @OfficeInfoIDFrom, @OfficeInfoIDTo,');
    SQL.Add('@InterTypeFrom, @InterTypeTo, @YearIDFrom , @YearIDTo) AS FN_CalcleaveCount_1 INNER JOIN');
    SQL.Add('(SELECT MIN(DecExtID) AS DecExtID, PersonelNo');
    SQL.Add('FROM Pay.FN_CalcleaveCount(@FormInfoID, @PersonelNoFrom, @PersonelNoTo,');
    SQL.Add('@OfficeInfoIDFrom, @OfficeInfoIDTo, @InterTypeFrom, @InterTypeTo, @YearIDFrom , @YearIDTo) AS F2');
    SQL.Add('GROUP BY PersonelNo) AS FN2 ON FN2.PersonelNo = FN_CalcleaveCount_1.PersonelNo ');
    // SQL.Add('AND FN2.DecExtID = FN_CalcleaveCount_1.DecExtID');
    SQL.Add('WHERE (FN_CalcleaveCount_1.EndDate IS NULL) OR');
    SQL.Add('(LTRIM(RTRIM(FN_CalcleaveCount_1.EndDate)) = '''')');

    Parameters.ParamByName('FormInfoID').Value :=
      qry_init.Fieldbyname('FormInfoID').AsInteger;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(Trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(Trim(mskPrsnlNo2.Text));
    Parameters.ParamByName('OfficeInfoIDFrom').Value :=
      StrToInt(Trim(MskOfficeInfoID1.Text));
    Parameters.ParamByName('OfficeInfoIDTo').Value :=
      StrToInt(Trim(MskOfficeInfoID2.Text));

    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;

    if myParams.FindParam('InterType') = nil then
    begin
      Parameters.ParamByName('InterTypeFrom').Value := 0;
      Parameters.ParamByName('InterTypeTo').DataType := ftInteger;
      Parameters.ParamByName('InterTypeTo').Value := 999999999;
    end
    else
    begin
      Parameters.ParamByName('InterTypeFrom').Value :=
        GetcFrom(myParams.ParamValues['InterType'], ftInteger);
      Edit1.Text := GetcFrom(myParams.ParamValues['InterType'], ftInteger);
      Parameters.ParamByName('InterTypeTo').Value :=
        GetcTo(myParams.ParamValues['InterType'], ftInteger);
      Edit2.Text := GetcTo(myParams.ParamValues['InterType'], ftInteger);
    end;
    // end if

    if CtrlDown then
      ShowQryParam(dmF.qryTmpTmpp);

    BigMessage(IntToStr(ExecSQL) + ' مورد ثبت شد.', 1);
    EnableControls;
    Active := False;
    CommandTimeout := 30;
  end; // With
  actFilter.Execute;

end;

procedure TCalcAnnuityF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryPersonelDecExt);
  // with qryFormsInfoproject do
  // begin
  // Active := False;
  // Parameters.ParamByName('FormInfo4Function').Value := GETProject4Function;
  // end;
  qry_init.Active := False;
  qry_init.Active := True;
  lblYears.Caption := 'سال ' + IntToStr(APPBank.Year);
  btnDefault.Click;

  actFilter.Execute
end;

procedure TCalcAnnuityF.mskPrsnlNo1Change(Sender: TObject);
var
  No: Integer;
  S: String;
begin
  inherited;
  S := '';
  if (Trim((Sender as TMaskEdit).Text) = '') or
    (StrToInt(Trim((Sender as TMaskEdit).Text)) = 0) then
    Exit;
  if not qrySearch.Active then
    qrySearch.Open;
  No := StrToIntDef(Trim((Sender as TMaskEdit).Text), 0);
  S := VarToStr(qrySearch.Lookup('PersonelNo', No, 'name_L1'));
  if No = 0 then
    S := '';
  if (Sender as TMaskEdit).Tag = 1 then
    edtPrsnlName1.Text := S
  else
    edtPrsnlName2.Text := S;
  if S = '' then
    (Sender as TMaskEdit).Font.Color := clRed
  else
    (Sender as TMaskEdit).Font.Color := clBlack;
  if (Sender as TMaskEdit).Name = mskPrsnlNo1.Name then
    mskPrsnlNo2.Text := mskPrsnlNo1.Text
end;

procedure TCalcAnnuityF.N13Click(Sender: TObject);
begin
  inherited;

  try
    UpDateFun2 := 'Pay.BonusForUpDateYearlyGov';
    actCalc.Execute;
  finally
    UpDateFun2 := EmptyStr;
  end;

end;

procedure TCalcAnnuityF.N14Click(Sender: TObject);
begin
  inherited;
  AllUpdatePersonelDecExt('حذف مرخصی', 'leaveCount = 0 ,leavePrice = 0 ',
    ' AND (EndDate  IS NULL OR LTRIM(EndDate) = '''')', DBGrid1,
    qryPersonelDecExt);
end;

procedure TCalcAnnuityF.SpeedButton1Click(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  S: Boolean;
  Results: array [0 .. 8] of String;

begin
  inherited;
  TxtL1_L2 := ' name_L1,lastName_L1,fatherName_L1';
  if optP.primaryLanguage <> 0 then
    TxtL1_L2 :=
      ' name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2';
  Txt := 'SELECT  PersonelNo,' + TxtL1_L2 + ', NationalID, IDNumber ' +
    'FROM Pay.PersonelInfo ';
  // Txt:=Txt+IfThen(FilterStore,'AND (Recipts.StoreID BETWEEN '+IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');
  if optP.primaryLanguage <> 0 then
    S := searchCode_ADOF.SearchCode2(dmF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام 1', 'نام 2', ' نام خانوادگي 1', 'نام خانوادگي 2',
      'نام پدر 1', 'نام پدر 2', 'شماره شناسنامه', 'كد ملي'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    S := searchCode_ADOF.SearchCode2(dmF.adcSalary, 'مشخصات پرسنل', Txt,
      ['شماره پرسنل', 'نام ', ' نام خانوادگي', 'نام پدر', 'شماره شناسنامه',
      'كد ملي'], Results, [10, 100, 100, 100, 100, 100], alLeft);

  if S then
    if (Sender as TSpeedButton).Tag = 1 then
    begin
      mskPrsnlNo1.Text := Results[0];
      edtPrsnlName1.Text := Results[1] + ' ' + Results[2];
    end
    else
    begin
      mskPrsnlNo2.Text := Results[0];
      edtPrsnlName2.Text := Results[1] + ' ' + Results[2];
    end;
end;

procedure TCalcAnnuityF.actAnnuityCalExecute(Sender: TObject);
begin
  inherited;
  if Length(Trim(MskDate.Text)) < 8 then
  begin
    Warn('  تاريخ محاسبه   وارد نشده');
    MskDate.SetFocus;
    Exit;
  end;
  if qryPersonelDecExt.RecordCount > 0 then
    if get_response('آيا براي انجام محاسبات مطمئن هستيد.‏') <> mrYes then
      Exit;
  With qryFN_CalcleaveCount do
  begin
    CommandTimeout := 0;
    DisableControls;
    Active := False;
    SQL.Text :=
    // 'UPDATE CalculateAnnuitySalary(:YearMounth, DEFAULT, DEFAULT, :PersonelNoFrom, :PersonelNoTo, '
      'UPDATE Pay.CalculateAnnuitySalary(:YearMounth , 1, 2, :PersonelNoFrom, :PersonelNoTo, '
      + qry_init.Fieldbyname('FormInfoID').AsString +
      ', 2 , 1, :InterTypeFrom , :InterTypeTo) ';
    SQL.Add('SET  EmployerAmount = ROUND(CAnnuityPrice,0) ');
    SQL.Add('WHERE (EndDate IS NULL or ltrim(rtrim(EndDate)) = '''' )');
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(Trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(Trim(mskPrsnlNo2.Text));
    Parameters.ParamByName('YearMounth').Value := MidStr(MskDate.Text, 1, 7);

    if myParams.FindParam('InterType') = nil then
    begin
      Parameters.ParamByName('InterTypeFrom').Value := 0;
      Parameters.ParamByName('InterTypeTo').DataType := ftInteger;
      Parameters.ParamByName('InterTypeTo').Value := 999999999;
    end
    else
    begin
      Parameters.ParamByName('InterTypeFrom').Value :=
        GetcFrom(myParams.ParamValues['InterType'], ftInteger);
      Edit1.Text := GetcFrom(myParams.ParamValues['InterType'], ftInteger);
      Parameters.ParamByName('InterTypeTo').Value :=
        GetcTo(myParams.ParamValues['InterType'], ftInteger);
      Edit2.Text := GetcTo(myParams.ParamValues['InterType'], ftInteger);
    end;
    // end if

    if CtrlDown then
      ShowQryParam(qryFN_CalcleaveCount);

    BigMessage(IntToStr(ExecSQL) + ' مورد ثبت شد.', 1);
    EnableControls;
    Active := False;
    CommandTimeout := 30;
  end; // With
  actFilter.Execute;
end;

procedure TCalcAnnuityF.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
end;

procedure TCalcAnnuityF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPersonelDecExtPersonelNo);
end;

procedure TCalcAnnuityF.Edit1Exit(Sender: TObject);
begin
  inherited;
  Edit2.Text := Edit1.Text
end;

procedure TCalcAnnuityF.qryPersonelDecExtAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := 'تعداد=' + IntToStr(DataSet.RecordCount) + '  ';
end;

procedure TCalcAnnuityF.actCalcConst2Execute(Sender: TObject);
var
  c: Currency;
  i: Integer;
begin
  inherited;
  c := StrToCurr(get_box('محاسبه با مبلغ ثابت سنوات',
    'مبلغ  ثابت سنوات را وارد كنيد.‏', '2500000'));
  if get_response('آيا براي محاسبه با مبلغ ' + CurrToStrF(c, ffCurrency, 0) +
    ' روي محدوده جاري مطمئن هستيد؟‏') <> mrYes then
    Exit;
  With dmF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Amount FROM Pay.FormsInfo WHERE (FormType = 47) AND (InfoID = 2) ';
    Active := True;
    i := Fieldbyname('Amount').AsInteger;
    if i = 0 then
      Warn2('تنظیمات تایپ 47 انجام نشده InfoID 2');
    Active := False;
  end; // With
  With qryPersonelDecExt do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if Trim(Fieldbyname('EndDate').AsString) = EmptyStr then
      begin
        Edit;
        if mnuFix.Checked then
          Fieldbyname('EmployerAmount').Value := RoundTo(c, 0)
        else
          Fieldbyname('EmployerAmount').Value :=
            RoundTo((c * Fieldbyname('DayQuntity').AsInteger) / i, 0);
      end;
      Next;
    end;
    EnableControls;
    Requery();
  end;
end;

procedure TCalcAnnuityF.actCalcConstExecute(Sender: TObject);
var
  c: Currency;
  i: Integer;
begin
  inherited;
  c := StrToCurr(get_box('محاسبه با مبلغ ثابت', 'مبلغ ثابت را وارد كنيد.‏',
    '2500000'));
  if get_response('آيا براي محاسبه با مبلغ ' + CurrToStrF(c, ffCurrency, 0) +
    ' روي محدوده جاري مطمئن هستيد؟‏') <> mrYes then
    Exit;
  With dmF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT Amount FROM Pay.FormsInfo WHERE (FormType = 47)';
    SQL.Add(' AND (InfoID = 1) ');
    Active := True;
    i := Fieldbyname('Amount').AsInteger;
    if i = 0 then
      Warn2('تنظیمات تایپ 47 انجام نشده InfoID 1');
    Active := False;
  end; // With
  With qryPersonelDecExt do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if Trim(Fieldbyname('EndDate').AsString) = EmptyStr then
      begin
        Edit;
        if mnuFix.Checked then
          Fieldbyname('EmployeeAmount').Value := RoundTo(c, 0)
        else
          Fieldbyname('EmployeeAmount').Value :=
            RoundTo((c * Fieldbyname('DayQuntity').AsInteger) / i, 0);
        Fieldbyname('PaymentLoan').Value := 0;
      end;
      Next;
    end;
    EnableControls;
    Requery();
  end;

end;

procedure TCalcAnnuityF.SBtnOfficeInfoIDClick(Sender: TObject);
var
  S: Boolean;
  Results: array [0 .. 2] of String;

begin
  inherited;
  S := searchCode_ADOF.SearchCode2(dmF.adcSalary, 'واحد سازماني',
    'SELECT InfoID, InfoName_L1, InfoName_L2 ' +
    ' FROM  Pay.FormsInfo WHERE (FormType = 12) ', ['كد ', 'نام واحد سازماني',
    'نام واحد سازماني'], Results, [20, 100, 100], alLeft);
  if S then
    if (Sender as TSpeedButton).Tag = 1 then
    begin
      MskOfficeInfoID1.Text := Results[0];
      edtOfficeInfoID1.Text := Results[1];
    end
    else
    begin
      MskOfficeInfoID2.Text := Results[0];
      edtOfficeInfoID2.Text := Results[1];
    end;
end;

procedure TCalcAnnuityF.MskDateChange(Sender: TObject);
begin
  inherited;
  if Length(Trim(MskDate.Text)) = 10 then
    mskMounth.Text :=
      RightStr('0' + IntToStr(StrToInt(MidStr(MskDate.Text, 6, 2)) + 1), 2)
end;

procedure TCalcAnnuityF.MskOfficeInfoID1Change(Sender: TObject);
var
  No: Integer;
  S: String;
begin
  inherited;
  S := '';
  if (Trim((Sender as TMaskEdit).Text) = '') or
    (StrToInt(Trim((Sender as TMaskEdit).Text)) = 0) then
    Exit;
  if not qrySearchOfficeInfo.Active then
    qrySearchOfficeInfo.Open;
  No := StrToIntDef(Trim((Sender as TMaskEdit).Text), 0);
  S := VarToStr(qrySearchOfficeInfo.Lookup('InfoID', No, 'InfoName_L1'));
  if No = 0 then
    S := '';
  if (Sender as TMaskEdit).Tag = 1 then
    edtOfficeInfoID1.Text := S
  else
    edtOfficeInfoID2.Text := S;
  if S = '' then
    (Sender as TMaskEdit).Font.Color := clRed
  else
    (Sender as TMaskEdit).Font.Color := clBlack;
  if (Sender as TMaskEdit).Name = MskOfficeInfoID1.Name then
    MskOfficeInfoID2.Text := MskOfficeInfoID1.Text
end;

procedure TCalcAnnuityF.SpeedButton3Click(Sender: TObject);
var
  date: String;
begin
  inherited;
  date := StringReplace(var_glb_CurrentDate, '/', '', [rfReplaceAll]);
  MskDate.Text := MaskDoFormatText('9999/99/99', date, '_')
end;

procedure TCalcAnnuityF.actArchiveExecute(Sender: TObject);
begin
  inherited;
  if Length(Trim(MskDate.Text)) < 8 then
  begin
    Warn('  تاريخ محاسبه   وارد نشده');
    MskDate.SetFocus;
    Exit;
  end;

  if qryPersonelDecExt.RecordCount > 0 then
    if get_response('آيا براي انجام بايگاني مطمئن هستيد.‏') <> mrYes then
      Exit;
  With dmF.qryTmpTmpp do
  begin
    DisableControls;

    Active := False;
    SQL.Text := 'UPDATE Pay.PersonelDecExt';
    SQL.Add('SET EndDate = ''' + MskDate.Text + '''');
    SQL.Add('WHERE (EndDate IS NULL or EndDate = ''        '' )');
    SQL.Add('And (FormInfoID = ' + qry_init.Fieldbyname('FormInfoID')
      .AsString + ' )');
    SQL.Add('And (PersonelNo between :PersonelNoFrom and :PersonelNoTo)');
    SQL.Add('AND (OfficeInfoID between :OfficeInfoIDFrom and :OfficeInfoIDTo)');
    SQL.Add('And PersonelNo in (SELECT Interdicts.PersonelNo FROM Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add(' Pay.FormsInfo ON Pay.Interdicts.EmployTypeID = FormsInfo.FormInfoID');
    SQL.Add('WHERE  (Interdicts.State  < 50 ) AND (Interdicts.InterdicType = 0)');
    if myParams.FindParam('InterType') <> nil then
      SQL.Add('AND (FormsInfo.InfoID BETWEEN :InterTypeFrom AND :InterTypeTo )');
    SQL.Add(')');
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(Trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(Trim(mskPrsnlNo2.Text));
    Parameters.ParamByName('OfficeInfoIDFrom').Value :=
      StrToInt(Trim(MskOfficeInfoID1.Text));
    Parameters.ParamByName('OfficeInfoIDTo').Value :=
      StrToInt(Trim(MskOfficeInfoID2.Text));
    if myParams.FindParam('InterType') <> nil then
    begin
      Parameters.ParamByName('InterTypeFrom').Value :=
        GetcFrom(myParams.ParamValues['InterType'], ftInteger);
      Edit1.Text := GetcFrom(myParams.ParamValues['InterType'], ftInteger);
      Parameters.ParamByName('InterTypeTo').Value :=
        GetcTo(myParams.ParamValues['InterType'], ftInteger);
      Edit2.Text := GetcTo(myParams.ParamValues['InterType'], ftInteger);
    end;
    // end if

    if CtrlDown then
      ShowQryParam(dmF.qryTmpTmpp);

    BigMessage(IntToStr(ExecSQL) + ' مورد بايگاني شد.', 1);
    EnableControls;
    Active := False;
  end; // With
  actFilter.Execute;
end;

procedure TCalcAnnuityF.actArchiveSelectedExecute(Sender: TObject);
begin
  inherited;
  if Length(Trim(MskDate.Text)) < 8 then
  begin
    Warn('  تاريخ محاسبه   وارد نشده');
    MskDate.SetFocus;
    Exit;
  end;

  if qryPersonelDecExt.RecordCount > 0 then
    if get_response('آيا براي انجام بايگاني مطمئن هستيد.‏') <> mrYes then
      Exit;

  AllUpdatePersonelDecExt('بايگاني', ' EndDate = ''' + MskDate.Text + '''', '',
    DBGrid1, qryPersonelDecExt);

end;

procedure TCalcAnnuityF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1)
end;

procedure TCalcAnnuityF.BitBtn10Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCalcAnnuityF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  popCalc.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCalcAnnuityF.btnArchiveClick(Sender: TObject);
begin
  inherited;
  popArchive.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCalcAnnuityF.btnCalcConstClick(Sender: TObject);
begin
  inherited;
  popCalcConst.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

// procedure TCalcAnnuityF.AllUpdate(ActCaption, UPDATEFieldname,
// WHEREStr: string);
// var
// i: Integer;
// S: string;
// begin
// if DBGrid1.SelectedRows.Count > 0 then
// if get_response('آيا براي ' + ActCaption +
// ' مورد‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes then
// Exit;
// with DBGrid1.DataSource.DataSet do
// for i := 0 to DBGrid1.SelectedRows.Count - 1 do
// begin
// GotoBookmark((DBGrid1.SelectedRows.Items[i]));
// if S <> '' then
// S := S + ',';
// S := S + Fieldbyname('DecExtID').AsString;
// end;
// If S = '' then
// Exit;
// with DMF.qryTmpTmpp do
// begin
// Active := False;
// SQL.Text := 'UPDATE Pay.PersonelDecExt  SET ' + UPDATEFieldname +
// '   WHERE DecExtID IN (' + S + ')';
// SQL.Add(WHEREStr);
// try
// BigMessage(IntToStr(ExecSQL) + ' مورد‌ ' + ActCaption + ' شد.', 2);
// Active := False;
// i := qryPersonelDecExt.Fieldbyname('DecExtID').AsInteger;
// qryPersonelDecExt.Active := False;
// qryPersonelDecExt.Open;
// qryPersonelDecExt.Locate('DecExtID', i, [])
// except
// on E: Exception do
// begin
// Warn('اشكال در ثبت‌' + E.Message);
// end;
// end; // try
// end; // with
// end;

procedure TCalcAnnuityF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmF.adcSalary, 'InterType', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM  Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM  Pay.FormsInfo WHERE  (FormType = 14)');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        actFilter.Execute;
      end;
      // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TCalcAnnuityF.btnDefaultClick(Sender: TObject);
begin
  inherited;
  with dmF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT MIN(PersonelNo), MAX(PersonelNo) FROM Pay.PersonelInfo ';
    Active := True;
    mskPrsnlNo1.Text := Fields[0].AsString;
    mskPrsnlNo2.Text := Fields[1].AsString;
    Active := False;
    SQL.Text :=
      'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 12) ';
    Active := True;
    MskOfficeInfoID1.Text := Fields[0].AsString;
    MskOfficeInfoID2.Text := Fields[1].AsString;
    Active := False;
  end; // with

end;

procedure TCalcAnnuityF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
end;

procedure TCalcAnnuityF.actArchiveDeleteExecute(Sender: TObject);
begin
  inherited;
  AllUpdatePersonelDecExt('پاكسازي', 'EndDate = NULL ', '', DBGrid1,
    qryPersonelDecExt);
end;

procedure TCalcAnnuityF.mnuN3Click(Sender: TObject);
begin
  inherited;
  AllUpdatePersonelDecExt('حذف عيدي',
    'EmployeeAmount = NULL , PaymentLoan = 0 ',
    ' AND (EndDate  IS NULL OR LTRIM(EndDate) = '''')', DBGrid1,
    qryPersonelDecExt);

end;

procedure TCalcAnnuityF.mnuN4Click(Sender: TObject);
begin
  inherited;
  AllUpdatePersonelDecExt('حذف سنوات', 'EmployerAmount = NULL ',
    ' AND (EndDate  IS NULL OR LTRIM(EndDate) = '''')', DBGrid1,
    qryPersonelDecExt);

end;

procedure TCalcAnnuityF.actDocNoAnnuityExecute(Sender: TObject);
begin
  inherited;
  AllUpdatePersonelDecExt('پاكسازي', 'DocNoAnnuity = 0,DocDateAnnuity = '''' ',
    '', DBGrid1, qryPersonelDecExt);

end;

procedure TCalcAnnuityF.actDocNoBonusExecute(Sender: TObject);
begin
  inherited;
  AllUpdatePersonelDecExt('پاكسازي', 'DocNoBonus = 0,DocDateBonus = '''' ', '',
    DBGrid1, qryPersonelDecExt);
end;

end.
