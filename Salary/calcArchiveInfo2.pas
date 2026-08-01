{ -----------------------------------------------------------------------------
  Unit Name: ArchiveInfo2
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:   86/12/22
  ----------------------------------------------------------------------------- }
unit calcArchiveInfo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2, Grids, Vcl.DBGrids, StdCtrls, ExtCtrls, DBActns,
  ActnList, Buttons, DB, ADODB, Mask, DBCtrls, FaraConsts,
  ComCtrls, ToolWin, Menus, System.Actions;

type
  TCalcArchiveInfo2F = class(Ttemplate2F)
    Panel1: TPanel;
    qryArchiveInfo: TADOQuery;
    srcArchiveInfo: TDataSource;
    actCal: TAction;
    actPrint: TAction;
    ActArchive: TAction;
    actSendToExcel: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid1: TDBGrid;
    qryCalculateSalary: TADOQuery;
    qryFixedCalculated: TADOQuery;
    srcFixedCalculated: TDataSource;
    qryFixedCalculatedFixedCID: TAutoIncField;
    qryFixedCalculatedFunctionID: TIntegerField;
    qryFixedCalculatedFormInfoID: TIntegerField;
    qryFixedCalculatedPersonelNO: TIntegerField;
    qryFixedCalculatedProjectID: TIntegerField;
    qryFixedCalculatedOfficeCode: TIntegerField;
    qryFixedCalculatedJobCede: TIntegerField;
    qryFixedCalculatedSalaryID: TIntegerField;
    qryFixedCalculatedMounth: TWordField;
    qryFixedCalculatedPrice: TBCDField;
    qryFixedCalculatedBedBes: TWordField;
    qryFixedCalculatedCalCulateKind: TWordField;
    qryFixedCalculatedAccTopicCode: TLargeintField;
    qryFixedCalculatedAccDetailCode: TIntegerField;
    qryFixedCalculatedAccCTopicCode: TIntegerField;
    qryFixedCalculatedAccCTopicCode2: TIntegerField;
    qryFixedCalculatedArchiveDate: TStringField;
    qryFixedCalculatedDocNo: TIntegerField;
    qryFixedCalculatedDocDate: TStringField;
    qrySearch: TADOQuery;
    qrySearchPersonelNo: TIntegerField;
    qrySearchname_L1: TStringField;
    qrySearchname_L2: TStringField;
    qryArchiveInfoFixedCID: TAutoIncField;
    qryArchiveInfoFunctionID: TIntegerField;
    qryArchiveInfoFormInfoID: TIntegerField;
    qryArchiveInfoPersonelNO: TIntegerField;
    qryArchiveInfoProjectID: TIntegerField;
    qryArchiveInfoOfficeCode: TIntegerField;
    qryArchiveInfoJobCede: TIntegerField;
    qryArchiveInfoSalaryID: TIntegerField;
    qryArchiveInfoMounth: TWordField;
    qryArchiveInfoPrice: TBCDField;
    qryArchiveInfoBedBes: TWordField;
    qryArchiveInfoCalCulateKind: TWordField;
    qryArchiveInfoAccTopicCode: TLargeintField;
    qryArchiveInfoAccDetailCode: TIntegerField;
    qryArchiveInfoAccCTopicCode: TIntegerField;
    qryArchiveInfoAccCTopicCode2: TIntegerField;
    qryArchiveInfoArchiveDate: TStringField;
    qryArchiveInfoDocNo: TIntegerField;
    qryArchiveInfoDocDate: TStringField;
    ActBackWard: TAction;
    BitBtn7: TBitBtn;
    ActFillter: TAction;
    qryArchiveInfoShowListKind: TWordField;
    qryFixedCalculatedShowListKind: TWordField;
    qryFixedCalculatedArchiveID: TIntegerField;
    qryArchiveInfoArchiveID: TIntegerField;
    qryArchiveInfoPersoneName_L1: TStringField;
    qryArchiveInfoPersoneName_L2: TStringField;
    qryArchiveInfoProjectName_L1: TStringField;
    qryArchiveInfoProjectName_L2: TStringField;
    qryArchiveInfoSalaryName_L1: TStringField;
    qryArchiveInfoSalaryName_L2: TStringField;
    StatusBar1: TStatusBar;
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
    actDELETE: TAction;
    BitBtn8: TBitBtn;
    qryOutPersonel: TADOQuery;
    SrcOutPersonel: TDataSource;
    qryOutPersonelPersonelNo: TIntegerField;
    qryOutPersonelPersonName_L1: TStringField;
    qryOutPersonelPersonName_L2: TStringField;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    StatusBar2: TStatusBar;
    GrpYears: TGroupBox;
    Label1: TLabel;
    mskPrsnlNo1: TMaskEdit;
    SpeedButton1: TSpeedButton;
    edtPrsnlName1: TEdit;
    SpeedButton2: TSpeedButton;
    mskPrsnlNo2: TMaskEdit;
    Label2: TLabel;
    edtPrsnlName2: TEdit;
    MskDate: TMaskEdit;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    actInsourance: TAction;
    actContainTax: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    qryFixedCalculatedAccCTopicCode3: TIntegerField;
    qryArchiveInfoAccCTopicCode3: TIntegerField;
    procedure actCalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActArchiveExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure mskPrsnlNo1Change(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure _actSortExecute(Sender: TObject);
    procedure ActFillterExecute(Sender: TObject);
    procedure ActBackWardExecute(Sender: TObject);
    procedure qryArchiveInfoAfterOpen(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure actDELETEExecute(Sender: TObject);
    procedure qryOutPersonelAfterOpen(DataSet: TDataSet);
    procedure qryArchiveInfoBeforeOpen(DataSet: TDataSet);
    procedure actInsouranceExecute(Sender: TObject);
    procedure actContainTaxExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    MonthNo: byte;
    FormType: byte;
    MinPersonelNo, MaxPersonelNo: Integer;
    function Calculator: Boolean;
    procedure initForm;
    function CalcInsourance(s: String; CaptionName: String): Boolean;
  public
    { Public declarations }
  end;

var
  CalcArchiveInfo2F: TCalcArchiveInfo2F;

implementation

uses DM, Math, GlobalPro, mmessage, search2, searchCode_ADO,
  sort2, MaskUtils, SalaryFunctions;

{$R *.dfm}

procedure TCalcArchiveInfo2F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  initForm;
end;

procedure TCalcArchiveInfo2F.actCalExecute(Sender: TObject);
begin
  inherited;
  if (trim(edtPrsnlName1.Text) = '') or (trim(edtPrsnlName2.Text) = '') or
    (trim(mskPrsnlNo1.Text) = '') or (trim(mskPrsnlNo2.Text) = '') then
  begin
    Warn('„ÕœÊœÂ —« Ê«—œ ﬂ‰Ìœ!.˛');
    Exit;
  end; // if
  // Mounth:=ToolBar1.b //cmbMounth.ItemIndex+1;
  // »—«Ì Ã·ÊêÌ—Ì «“ À»  «ÿ·«⁄«   ﬂ—«—Ì «“ «Ì‰ «”ﬂÌÊ· «” ›«œÂ ‘Êœ
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT * ' + 'FROM Pay.FixedCalculated ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + 'AND ( ArchiveDate >''0001/01/01'')';
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelNoFrom').Value := mskPrsnlNo1.Text;
    Parameters.ParamByName('PersonelNoTo').Value := mskPrsnlNo2.Text;
    Active := True;
    if RecordCount > 0 then
    begin
      Warn('œ— „ÕœÊœÂ «‰ Œ«» ‘œÂ ﬁ»·« «ÿ·«⁄«  »«Ìê«‰Ì ‘œÂ «”  œ— ’Ê—  ‰Ì«“ »Â  €ÌÌ— «“ „Õ«”»Â „⁄ÊﬁÂ ÕﬁÊﬁ «” ›«œÂ ﬂ‰Ìœ.˛',
        mtInformation);
      Exit;
    end; // if
  end; // with

  // œ—’Ê—  ‰ ÌçÂ „À»  ‰Ì«“ »Â Õ–› «ÿ·«⁄«  œ«—œ
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT * ' + 'FROM Pay.FixedCalculated ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)';
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelNoFrom').Value := mskPrsnlNo1.Text;
    Parameters.ParamByName('PersonelNoTo').Value := mskPrsnlNo2.Text;
    Active := True;
    if RecordCount > 0 then
      if get_response
        ('»« „ÕœÊœÂ „Ê—œ ‰Ÿ— „Õ«”»Â «‰Ã«„ ‘œÂ «” .„Õ«”»«  ÃœÌœ Ã«Ìê“Ì‰ ‘Êœø') <> mrYes
      then
        Exit;
  end; // with

  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := ' DELETE FROM Pay.FixedCalculated  ' +
      ' WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + ' AND  (ArchiveId =0)';
    // 'AND (( ArchiveDate >=:ArchiveDate)or( ArchiveDate =null))';
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelNoFrom').Value := mskPrsnlNo1.Text;
    Parameters.ParamByName('PersonelNoTo').Value := mskPrsnlNo2.Text;
    BigMessage(IntToStr(ExecSQL) + ' —ﬂÊ—œ Õ–› ‘œ.˛', 1);
  end; // with

  if Calculator then
    BigMessage('„Õ«”»Â ‘œ ', 1);
  ActFillter.Execute;
end;

function TCalcArchiveInfo2F.Calculator: Boolean;
// var
// ParamToText: String;
begin
  GetYearMounth(MonthNo);
  Result := False;
  with qryCalculateSalary do
  begin
    BigMessageProgBar('œ— Õ«· „Õ«”»Â ÕﬁÊﬁ Ê „“«Ì«Ì ﬂ”Ê—« ...', 1);
    Active := False;
    SQL.Text := 'SELECT  FixCalculateType1.* ' +
      'FROM    Pay.FixCalculateType1( :Mounth, :Year, :YearMounth, :PersonelNoFrom, :PersonelNoTo) FixCalculateType1 ';
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('Year').Value := optP.Year;
    Parameters.ParamByName('PersonelNoFrom').Value := mskPrsnlNo1.Text;
    Parameters.ParamByName('PersonelNoTo').Value := mskPrsnlNo2.Text;
    Active := True;
    BigMessageProgBar('œ— Õ«· „Õ«”»Â ÕﬁÊﬁ Ê „“«Ì«Ì ﬂ”Ê—« ...', RecordCount);
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      while not Eof do
      begin
        qryFixedCalculated.Insert;
        qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
          FieldByName('FunctionID').AsInteger;
        qryFixedCalculated.FieldByName('FormInfoID').AsInteger :=
          FieldByName('FunctionInfoID').AsInteger;
        qryFixedCalculated.FieldByName('PersonelNO').AsInteger :=
          FieldByName('PersonelNo').AsInteger;
        qryFixedCalculated.FieldByName('ProjectID').AsInteger :=
          FieldByName('ProjectID').AsInteger;
        qryFixedCalculated.FieldByName('OfficeCode').AsInteger :=
          FieldByName('OfficeCode').AsInteger;
        qryFixedCalculated.FieldByName('JobCede').AsInteger :=
          FieldByName('JobCode').AsInteger;
        qryFixedCalculated.FieldByName('SalaryID').AsInteger :=
          FieldByName('SalaryID').AsInteger;
        qryFixedCalculated.FieldByName('Mounth').AsInteger :=
          FieldByName('Mounth').AsInteger;
        qryFixedCalculated.FieldByName('Price').AsCurrency :=
          RoundTo(FieldByName('price').AsCurrency, 0);
        qryFixedCalculated.FieldByName('BedBes').AsInteger :=
          FieldByName('BedBes').AsInteger;
        qryFixedCalculated.FieldByName('CalCulateKind').AsInteger :=
          FieldByName('CalCulateKind').AsInteger;
        qryFixedCalculated.FieldByName('AccTopicCode').AsInteger :=
          FieldByName('AccTopicCode').AsInteger;
        qryFixedCalculated.FieldByName('AccDetailCode').AsInteger :=
          FieldByName('AccDetailCode').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode').AsInteger :=
          FieldByName('AccCTopicCode').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode2').AsInteger :=
          FieldByName('AccCTopicCode2').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode3').AsInteger :=
          FieldByName('AccCTopicCode3').AsInteger;
        qryFixedCalculated.FieldByName('ShowListKind').AsInteger :=
          FieldByName('ShowListKind').AsInteger;
        qryFixedCalculated.Post;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
      // CloseMessage;
      EnableControls;
    finally
      First;
      Result := True;
    end; // try
    // ________________________________ „Õ«”»Â «‰Ê«⁄ »Ì„Â ____________________________

    Result := actInsourance.Execute;

    // ________________________________ „Õ«”»Â „«·Ì«  Ê „‘„Ê· „«·Ì«  1 ____________________________
    BigMessageProgBar('œ— Õ«· „Õ«”»Â „«·Ì«  Ê „‘„Ê· „«·Ì« ', 1);
    Result := actContainTax.Execute;
  end; // with
end;

procedure TCalcArchiveInfo2F.ActArchiveExecute(Sender: TObject);
var
  MaxArchive: Integer;
begin
  inherited;
  if get_response('¬Ì« »—«Ì »«Ìê«‰Ì ﬂ—œ‰ «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT MAX(ArchiveID) as MaxArchive ' +
      'FROM Pay.FixedCalculated WHERE Mounth=' + IntToStr(MonthNo);
    // cmbMounth.ItemIndex+1
    Active := True;
    MaxArchive := FieldByName('MaxArchive').AsInteger;
    Active := False;
    SQL.Text :=
      'UPDATE Pay.FixedCalculated SET ArchiveDate=:ArchiveDate,ArchiveID = :ArchiveID WHERE (ArchiveDate IS NULL)';
    SQL.Add('and  Mounth=' + IntToStr(MonthNo));
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;

          if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND (SubCompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo)');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;;
    end;

    Parameters.ParamByName('ArchiveDate').Value := MskDate.Text;
    Parameters.ParamByName('ArchiveID').Value := MaxArchive + 1;
    BigMessage(IntToStr(ExecSQL) + ' —ﬂÊ—œ À»  ‘œ.˛', 1);
  end; // with
  ActFillter.Execute;
end;

procedure TCalcArchiveInfo2F.initForm;
var
  date: String;
begin
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  GetYearMounth(MonthNo);
  GrpYears.Caption := '”«· ' + optP.Year;
  date := StringReplace(var_glb_CurrentDate, '/', '', [rfReplaceAll]);
  MskDate.Text := MaskDoFormatText('9999/99/99', date, '_');
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT MIN(PersonelNo), MAX(PersonelNo) ' +
      'FROM   Pay.PersonelInfo ';
    Active := True;
    MinPersonelNo := Fields[0].AsInteger;
    MaxPersonelNo := Fields[1].AsInteger;
    mskPrsnlNo1.Text := Fields[0].AsString;
    mskPrsnlNo2.Text := Fields[1].AsString;
    Active := False;
  end; // with
  ActFillter.Execute
end;

procedure TCalcArchiveInfo2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCalcArchiveInfo2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True, IntToStr(FormType));
end;

procedure TCalcArchiveInfo2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TCalcArchiveInfo2F.SpeedButton1Click(Sender: TObject);
var
  Txt, TxtL1_L2: String;
  s: Boolean;
  Results: array [0 .. 8] of String;

begin
  inherited;
  TxtL1_L2 := ' name_L1, lastName_L1,  fatherName_L1';
  if optP.primaryLanguage <> 0 then
    TxtL1_L2 :=
      ' name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2';
  Txt := 'SELECT  PersonelNo,' + TxtL1_L2 + ', NationalID, IDNumber ' +
    'FROM         Pay.PersonelInfo ';
  // Txt:=Txt+IfThen(FilterStore,'AND (Recipts.StoreID BETWEEN '+IntToStr(myStore.code)+' AND '+IntToStr(myStore.code)+')','');
  if optP.primaryLanguage <> 0 then
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
      ['‘„«—Â Å—”‰·', '‰«„ 1', '‰«„ 2', ' ‰«„ Œ«‰Ê«œêÌ 1', '‰«„ Œ«‰Ê«œêÌ 2',
      '‰«„ Åœ— 1', '‰«„ Åœ— 2', '‘„«—Â ‘‰«”‰«„Â', 'ﬂœ „·Ì'], Results,
      [10, 100, 100, 100, 100, 100, 100, 100, 50], alLeft)
  else
    s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
      ['‘„«—Â Å—”‰·', '‰«„ ', ' ‰«„ Œ«‰Ê«œêÌ', '‰«„ Åœ—', '‘„«—Â ‘‰«”‰«„Â',
      'ﬂœ „·Ì'], Results, [10, 100, 100, 100, 100, 100], alLeft);

  if s then
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

procedure TCalcArchiveInfo2F.mskPrsnlNo1Change(Sender: TObject);
var
  No: Integer;
  s: String;
begin
  inherited;
  s := '';
  if (trim((Sender as TMaskEdit).Text) = '') or
    (StrToInt(trim((Sender as TMaskEdit).Text)) = 0) then
    Exit;
  if not qrySearch.Active then
    qrySearch.Open;
  No := StrToIntDef(trim((Sender as TMaskEdit).Text), 0);
  s := VarToStr(qrySearch.Lookup('PersonelNo', No, 'name_L1'));
  if No = 0 then
    s := '';
  if (Sender as TMaskEdit).Tag = 1 then
    edtPrsnlName1.Text := s
  else
    edtPrsnlName2.Text := s;
  if s = '' then
    (Sender as TMaskEdit).Font.Color := clRed
  else
    (Sender as TMaskEdit).Font.Color := clBlack;
end;

procedure TCalcArchiveInfo2F._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryArchiveInfo);
end;

procedure TCalcArchiveInfo2F._actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryArchiveInfo);
end;

procedure TCalcArchiveInfo2F.ActFillterExecute(Sender: TObject);
begin
  inherited;
  if mskPrsnlNo1.Text = '' then
  begin
    mskPrsnlNo1.Text := '0';
    mskPrsnlNo2.Text := '2147483647';
  end;
  with qryArchiveInfo do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo; // cmbMounth.ItemIndex+1;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Active := True;
  end; // with
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT COUNT(*)  FROM Pay.FixedCalculated WHERE (ArchiveID > 0) AND ';
    SQL.Add('(PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) AND (Mounth = :Mounth)');
    Parameters.ParamByName('Mounth').Value := MonthNo; // cmbMounth.ItemIndex+1;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      StrToInt(trim(mskPrsnlNo1.Text));
    Parameters.ParamByName('PersonelNoTo').Value :=
      StrToInt(trim(mskPrsnlNo2.Text));
    Active := True;
    actCal.Enabled := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
  ActBackWard.Enabled := not actCal.Enabled;
  with qryOutPersonel do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Active := True;
  end; // with

end;

procedure TCalcArchiveInfo2F.ActBackWardExecute(Sender: TObject);
begin
  inherited;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT * ' + 'FROM Pay.FixedCalculated ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)';
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelNoFrom').Value := mskPrsnlNo1.Text;
    Parameters.ParamByName('PersonelNoTo').Value := mskPrsnlNo2.Text;
    Active := True;
    if RecordCount > 0 then
      if get_response
        ('»« „ÕœÊœÂ „Ê—œ ‰Ÿ— „Õ«”»Â «‰Ã«„ ‘œÂ «” .„Õ«”»«  ÃœÌœ Ã«Ìê“Ì‰ ‘Êœø') <> mrYes
      then
        Exit;
  end; // with
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.FixedCalculated  ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + 'AND  (ArchiveId =0)';
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelNoFrom').Value := mskPrsnlNo1.Text;
    Parameters.ParamByName('PersonelNoTo').Value := mskPrsnlNo2.Text;
    BigMessage(IntToStr(ExecSQL) + ' —ﬂÊ—œ Õ–› ‘œ.˛', 1);
  end; // with
  if Calculator then
    BigMessage('„Õ«”»Â ‘œ ', 1);
  ActFillter.Execute;
end;

procedure TCalcArchiveInfo2F.qryArchiveInfoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CloseMessage;
  StatusBar1.Panels[0].Text := 'Ã„⁄ „Õ«”»«  = ' +
    CurrToStrF(CalcSumFileds(qryArchiveInfoPrice), ffCurrency, 0);
  StatusBar1.Panels[2].Text := ' ⁄œ«œ „Õ«”»«  = ' +
    IntToStr(DataSet.RecordCount);
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT COUNT(ArchiveID) FROM (SELECT ArchiveID FROM Pay.FixedCalculated GROUP BY ArchiveID, Mounth';
    SQL.Add('HAVING (ArchiveID <> 0) AND (Mounth = ' + IntToStr(MonthNo) +
      ')) DERIVEDTBL');
    Active := True;
    StatusBar1.Panels[1].Text := ' ⁄œ«œ œ›⁄«  »«Ìê«‰Ì = ' + Fields[0].AsString;
    Active := False;
  end; // with
end;

procedure TCalcArchiveInfo2F.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  ActFillter.Execute;
end;

procedure TCalcArchiveInfo2F.actDELETEExecute(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „Õ«”»«  »« ‘„«—Â »«Ìê«‰Ì 0 „ÿ„∆‰ Â” Ìœ!ø˛') <> mrYes
  then
    Exit;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.FixedCalculated  ' +
      'WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + 'AND  (ArchiveId =0)';
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelNoFrom').Value := mskPrsnlNo1.Text;
    Parameters.ParamByName('PersonelNoTo').Value := mskPrsnlNo2.Text;
    BigMessage(IntToStr(ExecSQL) + ' —ﬂÊ—œ Õ–› ‘œ.˛', 1);
  end; // with
  qryArchiveInfo.Requery();

end;

procedure TCalcArchiveInfo2F.qryOutPersonelAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar2.Panels[0].Text := IntToStr(DataSet.RecordCount)
end;

procedure TCalcArchiveInfo2F.qryArchiveInfoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  BigMessage('·ÿ›« ﬂ„Ì ’»— ﬂ‰Ìœ...˛', 0);
end;

function TCalcArchiveInfo2F.CalcInsourance;
begin
  with qryCalculateSalary do
  begin
    BigMessageProgBar('œ— Õ«· „Õ«”»Â  »Ì„Â' + CaptionName, 1);
    Active := False;
    SQL.Text := s;
    Active := True;
    BigMessageProgBar('œ— Õ«· „Õ«”»Â  »Ì„Â' + CaptionName, RecordCount - 1);
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      while not Eof do
      begin
        qryFixedCalculated.Insert;
        qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
          FieldByName('insuranceID').AsInteger;
        qryFixedCalculated.FieldByName('FormInfoID').AsInteger :=
          FieldByName('FormInfoID').AsInteger;
        qryFixedCalculated.FieldByName('PersonelNO').AsInteger :=
          FieldByName('PersonelNo').AsInteger;
        qryFixedCalculated.FieldByName('ProjectID').AsInteger :=
          FieldByName('ProjectID').AsInteger;
        qryFixedCalculated.FieldByName('OfficeCode').AsInteger :=
          FieldByName('OfficeCode').AsInteger;
        qryFixedCalculated.FieldByName('JobCede').AsInteger :=
          FieldByName('JobCode').AsInteger;
        qryFixedCalculated.FieldByName('SalaryID').AsInteger :=
          FieldByName('SalaryID').AsInteger;
        qryFixedCalculated.FieldByName('Mounth').AsInteger :=
          FieldByName('Mounth').AsInteger;
        qryFixedCalculated.FieldByName('Price').AsCurrency :=
          RoundTo(FieldByName('price').AsCurrency, 0);
        qryFixedCalculated.FieldByName('BedBes').AsInteger :=
          FieldByName('BedBes').AsInteger;
        qryFixedCalculated.FieldByName('CalCulateKind').AsInteger :=
          FieldByName('CalCulateKind').AsInteger;
        qryFixedCalculated.FieldByName('AccTopicCode').AsInteger :=
          FieldByName('AccTopicCode').AsInteger;
        qryFixedCalculated.FieldByName('AccDetailCode').AsInteger :=
          FieldByName('AccDetailCode').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode').AsInteger :=
          FieldByName('AccCTopicCode').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode2').AsInteger :=
          FieldByName('AccCTopicCode2').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode3').AsInteger :=
          FieldByName('AccCTopicCode3').AsInteger;
        qryFixedCalculated.FieldByName('ShowListKind').AsInteger :=
          FieldByName('ShowListKind').AsInteger;
        qryFixedCalculated.Post;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
      Result := True;
    finally
      First;
      EnableControls;
      CloseMessage;
    end; // try
  end; // with

end;

procedure TCalcArchiveInfo2F.actInsouranceExecute(Sender: TObject);
var
  ParamToText: String;
begin
  inherited;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := ' DELETE FROM Pay.FixedCalculated  ' +
      ' WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + ' AND  (ArchiveId =0) AND (CalCulateKind IN (10)) ';
    // 'AND (( ArchiveDate >=:ArchiveDate)or( ArchiveDate =null))';
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelNoFrom').Value := mskPrsnlNo1.Text;
    Parameters.ParamByName('PersonelNoTo').Value := mskPrsnlNo2.Text;
    BigMessage(IntToStr(ExecSQL) + ' —ﬂÊ—œ Õ–› ‘œ.˛', 1);
  end; // with

  GetYearMounth(MonthNo);
  ParamToText := 'DEFAULT,' + IntToStr(MonthNo) + ',' + optP.Year + ',''' +
    optP.YearMounth + ''',' + trim(mskPrsnlNo1.Text) + ',' +
    trim(mskPrsnlNo2.Text);
  CalcInsourance(' SELECT * FROM   Pay.Insourance(' + ParamToText +
    ') Insourance', ' „Õ«”»Â 30 œ—’œ ');
  CalcInsourance(' SELECT * FROM   Pay.InsouranceEmployeeshare(' + ParamToText +
    ') InsouranceEmployeeshare ', ' „Õ«”»Â 7 œ—’œ ');
  CalcInsourance(' SELECT * FROM   Pay.InsouranceEmployershare(' + ParamToText +
    ') InsouranceEmployershare ', ' „Õ«”»Â 23 œ—’œ ');
  CalcInsourance(' SELECT * FROM   Pay.InsouranceContain(' + ParamToText +
    ') InsouranceContain ', ' „‘„Ê· ');
  CalcInsourance(' SELECT * FROM   Pay.InsouranceInaction(' + ParamToText +
    ') InsouranceInaction ', ' »Ìﬂ«—Ì ');
  CalcInsourance(' SELECT * FROM   Pay.InsouranceHardWork(' + ParamToText +
    ') InsouranceHardWork ', ' ”Œ Ì ﬂ«— ');

end;

procedure TCalcArchiveInfo2F.actContainTaxExecute(Sender: TObject);
var
  ParamToText: String;
begin
  inherited;
  GetYearMounth(MonthNo);
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := ' DELETE FROM Pay.FixedCalculated  ' +
      ' WHERE (Mounth = :Mounth) AND (PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo) '
      + ' AND  (ArchiveId =0) AND (CalCulateKind IN (11,12)) ';
    // 'AND (( ArchiveDate >=:ArchiveDate)or( ArchiveDate =null))';
    SQL.Add('AND  (Years = :Years ) AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optP.Year;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonelNoFrom').Value := mskPrsnlNo1.Text;
    Parameters.ParamByName('PersonelNoTo').Value := mskPrsnlNo2.Text;
    BigMessage(IntToStr(ExecSQL) + ' —ﬂÊ—œ Õ–› ‘œ.˛', 1);
  end; // with
  with qryCalculateSalary do
  begin
    Active := False;
    { @Mounth,@Year@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo,@bedbes,@ShowListKind }
    ParamToText := IntToStr(MonthNo) + ',' + optP.Year + ',''' + optP.YearMounth
      + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text) + ',0,12';
    SQL.Text := 'SELECT  * ' + 'FROM Pay.ContainTaxWithPerson(' + ParamToText +
      ',0) ContainTaxWithPerson';

    Active := True;
    BigMessageProgBar('œ— Õ«· „Õ«”»Â „«·Ì«  Ê „‘„Ê· „«·Ì« ', RecordCount);
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      while not Eof do
      begin
        qryFixedCalculated.Insert;
        qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
          FieldByName('FunctionID').AsInteger;
        qryFixedCalculated.FieldByName('FormInfoID').AsInteger :=
          FieldByName('FormInfoID').AsInteger;
        qryFixedCalculated.FieldByName('PersonelNO').AsInteger :=
          FieldByName('PersonelNo').AsInteger;
        qryFixedCalculated.FieldByName('ProjectID').AsInteger :=
          FieldByName('ProjectID').AsInteger;
        qryFixedCalculated.FieldByName('OfficeCode').AsInteger :=
          FieldByName('OfficeCode').AsInteger;
        qryFixedCalculated.FieldByName('JobCede').AsInteger :=
          FieldByName('JobCode').AsInteger;
        qryFixedCalculated.FieldByName('SalaryID').AsInteger :=
          FieldByName('SalaryID').AsInteger;
        qryFixedCalculated.FieldByName('Mounth').AsInteger :=
          FieldByName('Mounth').AsInteger;
        qryFixedCalculated.FieldByName('Price').AsCurrency :=
          RoundTo(FieldByName('ContainTax').AsCurrency, 0);
        qryFixedCalculated.FieldByName('BedBes').AsInteger :=
          FieldByName('BedBes').AsInteger;
        qryFixedCalculated.FieldByName('CalCulateKind').AsInteger :=
          FieldByName('CalCulateKind').AsInteger;
        qryFixedCalculated.FieldByName('AccTopicCode').AsInteger :=
          FieldByName('AccTopicCode').AsInteger;
        qryFixedCalculated.FieldByName('AccDetailCode').AsInteger :=
          FieldByName('AccDetailCode').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode').AsInteger :=
          FieldByName('AccCTopicCode').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode2').AsInteger :=
          FieldByName('AccCTopicCode2').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode3').AsInteger :=
          FieldByName('AccCTopicCode3').AsInteger;
        qryFixedCalculated.FieldByName('ShowListKind').AsInteger :=
          FieldByName('ShowListKind').AsInteger;
        qryFixedCalculated.Post;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
      // Result:=True;
    finally
      First;
      EnableControls;
      // CloseMessage;
    end; // try
    // ________________________________ „Õ«”»Â „«·Ì«  Ê „‘„Ê· „«·Ì«  2 ____________________________
    BigMessageProgBar('œ— Õ«· „Õ«”»Â „«·Ì«  Ê „‘„Ê· „«·Ì« ', 1);
    Active := False;
    { @Mounth,@Year@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo,@bedbes,@ShowListKind }
    ParamToText := IntToStr(MonthNo) + ',' + optP.Year + ',''' + optP.YearMounth
      + ''',' + 'DEFAULT,' + trim(mskPrsnlNo1.Text) + ',' +
      trim(mskPrsnlNo2.Text) + ',2,11';
    SQL.Text := 'SELECT  * ' + 'FROM Pay.ContainTaxWithPerson(' + ParamToText +
      ',0) ContainTaxWithPerson';
    Active := True;
    BigMessageProgBar('œ— Õ«· „Õ«”»Â „«·Ì«  Ê „‘„Ê· „«·Ì« ', RecordCount);
    try
      First;
      DisableControls;
      qryFixedCalculated.Active := True;
      while not Eof do
      begin
        qryFixedCalculated.Insert;
        qryFixedCalculated.FieldByName('FunctionID').AsInteger :=
          FieldByName('FunctionID').AsInteger;
        qryFixedCalculated.FieldByName('FormInfoID').AsInteger :=
          FieldByName('FormInfoID').AsInteger;
        qryFixedCalculated.FieldByName('PersonelNO').AsInteger :=
          FieldByName('PersonelNo').AsInteger;
        qryFixedCalculated.FieldByName('ProjectID').AsInteger :=
          FieldByName('ProjectID').AsInteger;
        qryFixedCalculated.FieldByName('OfficeCode').AsInteger :=
          FieldByName('OfficeCode').AsInteger;
        qryFixedCalculated.FieldByName('JobCede').AsInteger :=
          FieldByName('JobCode').AsInteger;
        qryFixedCalculated.FieldByName('SalaryID').AsInteger :=
          FieldByName('SalaryID').AsInteger;
        qryFixedCalculated.FieldByName('Mounth').AsInteger :=
          FieldByName('Mounth').AsInteger;
        qryFixedCalculated.FieldByName('Price').AsCurrency :=
          RoundTo(FieldByName('TaxValue').AsCurrency, 0);
        qryFixedCalculated.FieldByName('BedBes').AsInteger :=
          FieldByName('BedBes').AsInteger;
        qryFixedCalculated.FieldByName('CalCulateKind').AsInteger :=
          FieldByName('CalCulateKind').AsInteger;
        qryFixedCalculated.FieldByName('AccTopicCode').AsInteger :=
          FieldByName('AccTopicCode').AsInteger;
        qryFixedCalculated.FieldByName('AccDetailCode').AsInteger :=
          FieldByName('AccDetailCode').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode').AsInteger :=
          FieldByName('AccCTopicCode').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode2').AsInteger :=
          FieldByName('AccCTopicCode2').AsInteger;
        qryFixedCalculated.FieldByName('AccCTopicCode3').AsInteger :=
          FieldByName('AccCTopicCode3').AsInteger;
        qryFixedCalculated.FieldByName('ShowListKind').AsInteger :=
          FieldByName('ShowListKind').AsInteger;
        qryFixedCalculated.Post;
        Next;
        GoProgressBar(IntToStr(RecNo));
      end; // while
    finally
      First;
      EnableControls;
      CloseMessage;
      // ActArchive.Enabled:=True;
      // qryArchiveInfo.Requery();
    end; // try
  end;

end;

procedure TCalcArchiveInfo2F.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
