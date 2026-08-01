unit Interdicts4Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Mask, DBCtrls, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, Menus, ComCtrls, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TInterdicts4FormF = class(Ttemplate2MDIF)
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
    Action1: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qryCompanies: TADOQuery;
    srcCompanies: TDataSource;
    qryInterdictList: TADOQuery;
    qryInterdictListInterdictID: TIntegerField;
    qryInterdictListInterdictDate: TStringField;
    qryInterdictListsubcompanyCode: TIntegerField;
    qryInterdictListJobName_L1: TStringField;
    qryInterdictListJobName_L2: TStringField;
    qryInterdictListgrade_L1: TStringField;
    qryInterdictListgrade_L2: TStringField;
    qryInterdictListjobCity_L1: TStringField;
    qryInterdictListjobCity_L2: TStringField;
    qryInterdictListInterdicType_L1: TStringField;
    qryInterdictListInterdicType_L2: TStringField;
    qryInterdictListInterdicStartDate: TStringField;
    qryInterdictListemployDaytime: TWordField;
    qryInterdictListAccTopicCode: TIntegerField;
    qryInterdictListAccDetailCode: TIntegerField;
    qryInterdictListAccCTopicCode2: TIntegerField;
    qryInterdictListState: TWordField;
    qryInterdictListInterdicTypeID: TIntegerField;
    qryInterdictListOfficeID: TIntegerField;
    qryInterdictListPersonelNo: TIntegerField;
    pnlCompany: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryCompaniesCompanyCode: TIntegerField;
    qryCompaniesPrvCompanyCode: TStringField;
    qryInterdictListOfficeName_L1: TStringField;
    qryInterdictListOfficeName_L2: TStringField;
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
    qryInterdictListPersonelName_L1: TStringField;
    qryInterdictListPersonelName_L2: TStringField;
    qryInterdictListLicenceCode: TIntegerField;
    qryInterdictListlicence_L1: TStringField;
    qryInterdictListlicence_L2: TStringField;
    qryInterdictListInterdicEndDate: TStringField;
    qryInterdictListAccCTopicCode: TIntegerField;
    BitBtn1: TBitBtn;
    ActChangeState: TAction;
    PopMnuState: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    mnuState50: TMenuItem;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine5: TppLine;
    StatusBar1: TStatusBar;
    qryCompaniesCompanyName_L1: TStringField;
    qryCompaniesCompanyName_L2: TStringField;
    PopMnuPrint: TPopupMenu;
    Interdicts4FormF: TMenuItem;
    AllClick: TMenuItem;
    PersonelDecExtInfo_2F2ColumnsTa: TMenuItem;
    PersonelDecExtInfo_2F2ColumnsSandogh: TMenuItem;
    PersonelDecExtInfo_2Fmonth1: TMenuItem;
    actPrintVijeh: TAction;
    PopOther: TPopupMenu;
    N6: TMenuItem;
    N8: TMenuItem;
    BitBtn8: TBitBtn;
    Panel1: TPanel;
    lblPersonelCode: TLabel;
    lblOfficeCode: TLabel;
    qryInterdictListInterdictNo: TFloatField;
    qryInterdictListProjectID: TIntegerField;
    qryInterdictListProjectName: TStringField;
    lblFilterStringCaption: TLabel;
    plblFilterStringCaption: TppLabel;
    qryInitQry: TADOQuery;
    qryInterdictListfinishEmployDate: TStringField;
    actSMS: TAction;
    qryInterdictListMobile: TStringField;
    qryInterdictListSubInterdictName: TStringField;
    qryInterdictListGrpExpenseName: TStringField;
    actSelectAll: TAction;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    qryInterdictListLastUser: TWideStringField;
    qryInterdictListFirstUser: TWideStringField;
    qryInterdictListAidNo1: TStringField;
    qryInterdictListAidDate1: TStringField;
    N11: TMenuItem;
    N7: TMenuItem;
    qryInterdictListKargozinyNote_L1: TMemoField;
    qryInterdictListKargozinyNote_L2: TMemoField;
    qryInterdictListFullName: TStringField;
    qryInterdictListUserID: TIntegerField;
    qryInterdictListPercentWound: TFloatField;
    qryInterdictListMartyrChild: TBooleanField;
    qryInterdictListemployDate: TStringField;
    DBGrid1: TCedarDbgrid;
    qryInterdictListInsuranceStartDate: TStringField;
    qryInterdictListInsuranceEndDate: TStringField;
    procedure actShowFormExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryCompaniesAfterScroll(DataSet: TDataSet);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ActChangeStateExecute(Sender: TObject);
    procedure qryInterdictListStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure N2Click(Sender: TObject);
    procedure mnuState50Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryInterdictListAfterOpen(DataSet: TDataSet);
    procedure AllClickClick(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure plblFilterStringCaptionGetText(Sender: TObject; var Text: string);
    procedure lblFilterStringCaptionClick(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    Form_Type: Byte;
    procedure UpdateFilter;
    // function getMaxFld(fldname,tblname:String):Cardinal;
  public
    { Public declarations }
  end;

var
  Interdicts4FormF: TInterdicts4FormF;

implementation

uses DM, sort2, search2, GlobalPro, searchCode_ADO, FilterClass_ADO, filter_ADO,
  Interdicts, mmessage, DBGrid2Print, SalaryFunctions, infoSMS, shamsiDate,
  FaraConsts, Filter_ADO_Const;

{$R *.dfm}

procedure TInterdicts4FormF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // if  Pos('interdictsf0',opt.MenuNames)<>0 then begin
  // CreateMDIForm2(TInterdictsF,InterdictsF,self,45) ;
  InterdictsF.Enter(45, 0, 49, 0, qryInterdictList.FieldByName('InterdictID')
    .AsInteger);

  // end//
  // else Warn('ÊÌ—«Ì‘ Ê ‰„«Ì‘ «Ì‰ ›—„ œ— ”ÿÕ œ” —”Ì ‘„« ‰„Ìù»«‘œ.');
end;

procedure TInterdicts4FormF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryInterdictList, 'Mobile')
end;

procedure TInterdicts4FormF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TInterdicEndDate);
      AddItemFilter(GetFilter, TInterdicStartDate);

      AddItem(DMf.adcSalary, 'jobCode', 'Å”  ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 13)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 13)');
      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)  ',
        'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');
      AddItem(DMf.adcSalary, 'jobCity', ' „Õ· Œœ„  ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 1)',
        'SELECT     MIN(Pay.FormsInfo.InfoID) AS jobCity, MAX(Pay.FormsInfo.InfoID) AS Expr1 '
        + 'FROM Pay.Interdicts LEFT OUTER JOIN Pay.FormsInfo ON Pay.Interdicts.jobCity = Pay.FormsInfo.FormInfoID');
      AddItem(DMf.adcSalary, 'InterType', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'OfficeID', 'Ê«Õœ ”«“„«‰Ì ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 12)',
        'SELECT MIN(InfoID), MAX(InfoID)  FROM Pay.FormsInfo WHERE  (FormType = 12)');

      AddItem(DMf.adcSalary, 'InterDate', ' «—ÌŒ Õﬂ„', ' «—ÌŒ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(InterdictDate), MAX(InterdictDate) FROM Pay.Interdicts');

      AddItem(DMf.adcSalary, 'InterNo', '‘„«—Â Õﬂ„', '‘„«—Â', ftFloat, dvMinMax,
        '', '', ciSimple, '',
        'SELECT MIN(CAST(InterdictNo AS float)), MAX(CAST(InterdictNo AS float)) FROM Pay.Interdicts');
      AddItemFilter(GetFilter, TPersonelNo);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        lblFilterStringCaption.Caption := GetFilterStringCaption;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TInterdicts4FormF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  try
    qryInterdictList.AfterScroll := nil;
    DBGridSelectAll(DBGrid1);
  finally
    qryInterdictList.EnableControls;
  end;
end;

procedure TInterdicts4FormF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInterdicts4FormF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInterdictList);
end;

procedure TInterdicts4FormF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInterdictList);
end;

procedure TInterdicts4FormF.FormCreate(Sender: TObject);
begin
  inherited;
  Form_Type := var_glb_gParam;
  qryInitQry.Active := True;
  mnuState50.Visible := User.PowerUser;
end;

procedure TInterdicts4FormF.SpeedButton1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  s := searchCode_ADOF.SearchCode2(DMf.adcAccounting, ' ',
    'SELECT CompanyCode,CompanyName_L1 FROM   acc.Companies',
    ['ﬂœ', '‰«„ ‘—ﬂ  '], Results, [100, 100], alLeft);
  if s then
  begin
    if not(qryInterdictList.State in dsEditModes) then
      qryInterdictList.edit;
    qryInterdictList['subcompanyCode'] := Results[0];
  end; // if
  if s then
    qryCompanies.Locate('CompanyCode', Results[0], []);
end;

procedure TInterdicts4FormF.UpdateFilter;
begin
  with qryInterdictList do
  begin
    Active := False;
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

    Parameters.ParamByName('InterdicEndDateFrom').Value :=
      GetcFrom(myParams.ParamValues['InterdicEndDate'], ftDate);
    Parameters.ParamByName('InterdicEndDateTo').Value :=
      GetcTo(myParams.ParamValues['InterdicEndDate'], ftDate);

    Parameters.ParamByName('InterdicStartDateFrom').Value :=
      GetcFrom(myParams.ParamValues['InterdicStartDate'], ftDate);
    Parameters.ParamByName('InterdicStartDateTo').Value :=
      GetcTo(myParams.ParamValues['InterdicStartDate'], ftDate);

    Parameters.ParamByName('OfficeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeID'], ftInteger);
    Parameters.ParamByName('OfficeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeID'], ftInteger);
    Parameters.ParamByName('jobCityFrom').Value :=
      GetcFrom(myParams.ParamValues['jobCity'], ftInteger);
    Parameters.ParamByName('jobCityTo').Value :=
      GetcTo(myParams.ParamValues['jobCity'], ftInteger);
    if Form_Type <> 0 then
    begin
      Parameters.ParamByName('InterTypeFrom').Value :=
        GetcFrom(myParams.ParamValues['InterType'], ftInteger);
      Parameters.ParamByName('InterTypeTo').Value :=
        GetcTo(myParams.ParamValues['InterType'], ftInteger);
      // Parameters.ParamByName('employ').Value:=getMaxFld('employDaytime','Interdicts');
    end
    else
    begin
      Parameters.ParamByName('InterTypeFrom').Value := 1;
      Parameters.ParamByName('InterTypeTo').Value := 50;
      // Parameters.ParamByName('employ').Value:=var_glb_CurrentDate;
    end; // end if
    // Active:=true;
    lblPersonelCode.Caption := '  „ÕœÊœÂ  ﬂœ Å—”‰·Ì «“ ' +
      IntToStr(Parameters.ParamByName('PersonFrom').Value) + '  « ' +
      IntToStr(Parameters.ParamByName('Personto').Value);
    lblOfficeCode.Caption := '„ÕœÊœÂ ﬂœ Ê«Õœ ”«“„«‰Ì «“  ' +
      IntToStr(Parameters.ParamByName('OfficeFrom').Value) + '  « ' +
      IntToStr(Parameters.ParamByName('OfficeTo').Value);
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
  qryCompanies.Locate('CompanyCode', optA.AccDefaultCompany, []);
  qryInterdictList.Active := True;
  pnlCompany.Visible := gv_MultiCompany;
end;

procedure TInterdicts4FormF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := lblOfficeCode.Caption;
end;

procedure TInterdicts4FormF.ppLabel14GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := lblPersonelCode.Caption;
end;

procedure TInterdicts4FormF.ppLabel16GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := '‘„«—Â Õﬂ„ «“  ' +
    IntToStr(qryInterdictList.Parameters.ParamByName('interFrom').Value) +
    '  «  ' + IntToStr(qryInterdictList.Parameters.ParamByName('interTo').Value)
    + '  ' + '«“  «—ÌŒ ' + qryInterdictList.Parameters.ParamByName
    ('InterDateFrom').Value + '  «  ' + qryInterdictList.Parameters.ParamByName
    ('InterDateto').Value
end;

procedure TInterdicts4FormF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInterdicts4FormF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TInterdicts4FormF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdicts4FormF.FormShow(Sender: TObject);
begin
  inherited;
  if not var_glb_Boolean then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('OfficeID') = nil then
      close;
  end
  else
  begin
    var_glb_Boolean := False;
    with qryInterdictList do
    begin
      Active := False;
      if not gv_MultiCompany then
        Parameters.ParamByName('companyCode').Value := optA.AccDefaultCompany;
      Parameters.ParamByName('PersonFrom').Value := 0;
      Parameters.ParamByName('PersonTo').Value := 999999999;
      Parameters.ParamByName('interFrom').Value := 0;
      Parameters.ParamByName('interTo').Value := 999999999;
      Parameters.ParamByName('InterDateFrom').Value := '0';
      Parameters.ParamByName('InterDateTo').Value := '1999/12/29';
      Parameters.ParamByName('OfficeFrom').Value := 0;
      Parameters.ParamByName('OfficeTo').Value := 999999999;
      Parameters.ParamByName('jobCityFrom').Value := 0;
      Parameters.ParamByName('jobCityTo').Value := 999999999;
      Parameters.ParamByName('PersonStateNoFrom').Value := 0;
      Parameters.ParamByName('PersonStateNoTo').Value := 999999999;
      Parameters.ParamByName('jobCodeFrom').Value := 0;
      Parameters.ParamByName('jobCodeTo').Value := 999999999;
      if Form_Type <> 0 then
      begin
        Parameters.ParamByName('InterTypeFrom').Value := 0;
        Parameters.ParamByName('InterTypeTo').Value := 999999999;
      end
      else
      begin
        Parameters.ParamByName('InterTypeFrom').Value := 1;
        Parameters.ParamByName('InterTypeTo').Value := 50;
      end; // end if
      Active := True;
      lblPersonelCode.Caption := '  „ÕœÊœÂ  ﬂœ Å—”‰·Ì «“ ' +
        IntToStr(Parameters.ParamByName('PersonFrom').Value) + '  « ' +
        IntToStr(Parameters.ParamByName('Personto').Value);
      lblOfficeCode.Caption := '„ÕœÊœÂ ﬂœ Ê«Õœ ”«“„«‰Ì «“  ' +
        IntToStr(Parameters.ParamByName('OfficeFrom').Value) + '  « ' +
        IntToStr(Parameters.ParamByName('OfficeTo').Value);
    end; // with
  end;
end;

procedure TInterdicts4FormF.lblFilterStringCaptionClick(Sender: TObject);
begin
  inherited;
  lblFilterStringCaption.Height := 13;
  lblFilterStringCaption.AutoSize := not lblFilterStringCaption.AutoSize;
end;

procedure TInterdicts4FormF.qryCompaniesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryInterdictList do
  begin
    Active := False;
    Parameters.ParamByName('companyCode').Value := TADOQuery(DataSet)
      .FieldByName('CompanyCode').AsInteger;
    IF TADOQuery(DataSet).RecordCount = 1 then
      Parameters.ParamByName('companyCode').Value := optA.AccDefaultCompany;
    Active := True;
  end; // with
end;

procedure TInterdicts4FormF.ppLabel17GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if gv_MultiCompany then
    Text := Text + ': ' + DBEdit1.Text + ' ' + DBEdit2.Text
  else
    Text := '';

end;

procedure TInterdicts4FormF.plblFilterStringCaptionGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := lblFilterStringCaption.Caption;
end;

procedure TInterdicts4FormF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TInterdicts4FormF.ActChangeStateExecute(Sender: TObject);
begin
  inherited;
  PopMnuState.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdicts4FormF.qryInterdictListStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryInterdictList.FieldByName('State').AsInteger of
    0:
      Text := 'ÅÌ‘ ‰ÊÌ”';
    1:
      Text := '‰Â«∆Ì';
    50:
      Text := '»«Ìê«‰Ì';
  end; // case
end;

procedure TInterdicts4FormF.N2Click(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('¬Ì« »—«Ì ‰Â«∆Ì ﬂ—œ‰ Õﬂ„ùÂ«Ì «‰ Œ«» ‘œÂ „ÿ„∆‰ Â” Ìœø') <> mrYes
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
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.Interdicts SET State = 1 WHERE (State <1) AND ' +
      '(InterdictID IN (' + s + '))';
    try
      BigMessage(IntToStr(ExecSQL) + ' Õﬂ„ù ‰Â«∆Ì ‘œ.', 2);
      Active := False;
      qryInterdictList.Active := False;
      qryInterdictList.Open;
    except
      Warn('«‘ﬂ«· œ— ‰Â«∆Ì ﬂ—œ‰ Õﬂ„ù');
    end; // try
  end; // with
end;

procedure TInterdicts4FormF.N7Click(Sender: TObject);
var
  AidDate1, Mess: string;
begin
  inherited;
  AidDate1 := var_glb_CurrentDate;
  Mess := ' «—ÌŒ ﬂ„ﬂÌ —« Ê«—œ ﬂ‰Ìœ';
  repeat
    AidDate1 := StringReplace(AidDate1, '/', '', [rfReplaceAll]);
    AidDate1 := get_box(' «—ÌŒ ﬂ„ﬂÌ', Mess, AidDate1, False, '9999/99/99');
    Mess := ' «—ÌŒ ﬂ„ﬂÌ —« »œ—” Ì Ê«—œ ﬂ‰Ìœ';
  until (AidDate1 = EmptyStr) or
    ((validate_date(False, '', '', ' «—ÌŒ Ê«—œ ‘œÂ', AidDate1)));

  if AidDate1 = EmptyStr then
    Exit;

  With qryInterdictList do
  begin
    DisableControls;
    First;
    BigMessageProgBar('œ— Õ«· À»   «—ÌŒ ﬂ„ﬂÌ Â«....˛', RecordCount);
    while not Eof do
    begin
      DMf.qryTmpTmpp.Active := False;
      DMf.qryTmpTmpp.SQL.Text :=
        Format('UPDATE Pay.Interdicts SET AidDate1 = %s',
        [QuotedStr(AidDate1)]);
      DMf.qryTmpTmpp.SQL.Add(Format('WHERE InterdictID in ( %d )',
        [FieldByName('InterdictID').AsInteger]));
      DMf.qryTmpTmpp.ExecSQL;
      GoProgressBar(FieldByName('InterdictNo').AsString);
      Next;
    end;
    EnableControls;
    Active := False;
    Open;
    CloseMessage;
  end;
end;

procedure TInterdicts4FormF.mnuState50Click(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('¬Ì« »—«Ì »«Ìê«‰Ì ﬂ—œ‰ Õﬂ„ùÂ«Ì «‰ Œ«» ‘œÂ „ÿ„∆‰ Â” Ìœø') <> mrYes
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
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.Interdicts SET State = 50 WHERE (State <50) AND ' +
      '(InterdictID IN (' + s + '))';
    try
      BigMessage(IntToStr(ExecSQL) + ' Õﬂ„ù »«Ìê«‰Ì ‘œ.', 2);
      Active := False;
      qryInterdictList.Active := False;
      qryInterdictList.Open;
    except
      Warn('«‘ﬂ«· œ— »«Ìê«‰Ì ﬂ—œ‰ Õﬂ„ù');
    end; // try
  end; // with
end;

procedure TInterdicts4FormF.N11Click(Sender: TObject);
var
  Jump: Integer;
begin
  inherited;
  Jump := 1;
  Jump := StrToInt(Trim(get_box('„— » ﬂ—œ‰ ‘„«—Â ﬂ„ﬂÌ',
    '‘—Ê⁄ „— » ”«“Ì «“ ⁄œœ:', IntToStr(Jump))));
  if get_response('¬Ì« »—«Ì  €ÌÌ— ‘„«—Â ﬂ„ﬂÌ Â« «“ ‘„«—Â  ' + IntToStr(Jump) +
    ' „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Exit;
  Dec(Jump);
  With qryInterdictList do
  begin
    DisableControls;
    First;
    BigMessageProgBar('œ— Õ«· „— » ﬂ—œ‰ ‘„«—Â ﬂ„ﬂÌ Â«....˛', RecordCount);
    while not Eof do
    begin
      DMf.qryTmpTmpp.Active := False;
      DMf.qryTmpTmpp.SQL.Text := Format('UPDATE Pay.Interdicts SET AidNo1 = %d',
        [RecNo + Jump]);
      DMf.qryTmpTmpp.SQL.Add(Format('WHERE InterdictID in ( %d )',
        [FieldByName('InterdictID').AsInteger]));
      DMf.qryTmpTmpp.ExecSQL;
      GoProgressBar(FieldByName('InterdictNo').AsString);
      Next;
    end;
    EnableControls;
    Active := False;
    Open;
    CloseMessage;
  end;
end;

procedure TInterdicts4FormF.N1Click(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('ChangeStateLevelID').AsInteger)
  then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('¬Ì« »—«Ì ÅÌ‘ ‰ÊÌ” ﬂ—œ‰ Õﬂ„ùÂ«Ì «‰ Œ«» ‘œÂ „ÿ„∆‰ Â” Ìœø') <> mrYes
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
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.Interdicts SET State = 0 WHERE ' +
    // (State <50) AND '+
      '(InterdictID IN (' + s + '))';
    try
      BigMessage(IntToStr(ExecSQL) + ' Õﬂ„ù ÅÌ‘ ‰ÊÌ” ‘œ.', 2);
      Active := False;
      qryInterdictList.Active := False;
      qryInterdictList.Open;
    except
      Warn('«‘ﬂ«· œ— ÅÌ‘ ‰ÊÌ” ﬂ—œ‰ Õﬂ„ù');
    end; // try
  end; // with
end;

procedure TInterdicts4FormF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryInterdictListInterdictNo);

end;

procedure TInterdicts4FormF.qryInterdictListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text := ' ⁄œ«œ «Õò«„ = ' + IntToStr(DataSet.RecordCount);
end;

procedure TInterdicts4FormF.AllClickClick(Sender: TObject);
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

procedure TInterdicts4FormF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, Form_Type, lblPersonelCode.Caption + #10
    + lblOfficeCode.Caption);

end;

procedure TInterdicts4FormF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInterdicts4FormF.N8Click(Sender: TObject);
begin
  inherited;
  qryInterdictList.Requery();
end;

end.
