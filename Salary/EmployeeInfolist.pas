unit EmployeeInfolist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, DBCtrls, ppProd, ppClass, ppReport, sndkey32,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppCache, ppModule, daDataModule, Menus, ComCtrls, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, Vcl.Grids, Vcl.DBGrids, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid,Filter_ADO_Const;

type
  TEmployeeInfolistF = class(Ttemplate2MDIF)
    qryEmployeeInfolist: TADOQuery;
    SrcEmployeeInfolist: TDataSource;
    qryEmployeeInfolistPersonelNo: TIntegerField;
    qryEmployeeInfolistPersonStateNo: TIntegerField;
    qryEmployeeInfolistpersonelstate_L1: TStringField;
    qryEmployeeInfolistPersonelName_L1: TStringField;
    qryEmployeeInfolistPersonelName_L2: TStringField;
    qryEmployeeInfolistfatherName_L1: TStringField;
    qryEmployeeInfolistfatherName_L2: TStringField;
    qryEmployeeInfolistNationality_L1: TStringField;
    qryEmployeeInfolistNationality_L2: TStringField;
    qryEmployeeInfolistBirthDate: TStringField;
    qryEmployeeInfolistSodurDate: TStringField;
    qryEmployeeInfolistBirthPlace_L1: TStringField;
    qryEmployeeInfolistBirthPlace_L2: TStringField;
    qryEmployeeInfolistSodurPlace_L1: TStringField;
    qryEmployeeInfolistSodurPlace_L2: TStringField;
    qryEmployeeInfolistNationalID: TStringField;
    qryEmployeeInfolistIDNumber: TStringField;
    qryEmployeeInfolistSex_L1: TStringField;
    qryEmployeeInfolistSex_L2: TStringField;
    qryEmployeeInfolistmarriage_L1: TStringField;
    qryEmployeeInfolistmarriage_L2: TStringField;
    qryEmployeeInfolistchildnumber_L1: TStringField;
    qryEmployeeInfolistchildnumber_L2: TStringField;
    qryEmployeeInfolistSupPepNumber: TWordField;
    qryEmployeeInfolistLicenceCode: TIntegerField;
    qryEmployeeInfoliststudyField_L1: TStringField;
    qryEmployeeInfoliststudyField_L2: TStringField;
    qryEmployeeInfolistStudyCity_L1: TStringField;
    qryEmployeeInfolistStudyCity_L2: TStringField;
    qryEmployeeInfolistUnivercityName_L1: TStringField;
    qryEmployeeInfolistUnivercityName_L2: TStringField;
    qryEmployeeInfolistStudyFinishedate: TStringField;
    qryEmployeeInfolistStudyAverage: TFloatField;
    qryEmployeeInfolistemployDate: TStringField;
    qryEmployeeInfolistfinishEmployDate: TStringField;
    qryEmployeeInfolistBankName_L1: TStringField;
    qryEmployeeInfolistBankName_L2: TStringField;
    qryEmployeeInfolistBranchCode: TStringField;
    qryEmployeeInfolistAccountNumber: TStringField;
    qryEmployeeInfolistAccBankType: TWordField;
    qryEmployeeInfolistinsuranceID: TWordField;
    qryEmployeeInfolistinsurancename: TStringField;
    qryEmployeeInfolistInsuranceNumber: TStringField;
    qryEmployeeInfolistaddress_L1: TStringField;
    qryEmployeeInfolistaddress_L2: TStringField;
    qryEmployeeInfolistNote_L1: TStringField;
    qryEmployeeInfolistNote_L2: TStringField;
    qryEmployeeInfolistpersonelstate_L2: TStringField;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actShowForm: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    qryEmployeeInfolistTel: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    qryEmployeeInfolistBankCode: TIntegerField;
    qryEmployeeInfolistlicence_L1: TStringField;
    qryEmployeeInfolistlicence_L2: TStringField;
    PopList4Print: TPopupMenu;
    rptEmployeeInfolist_Total: TMenuItem;
    rptEmployeeInfolist_LicenceCode: TMenuItem;
    rptEmployeeInfolist_Insurance2: TMenuItem;
    rptEmployeeInfolist_Insurance: TMenuItem;
    rptEmployeeInfolist_Bank2: TMenuItem;
    rptEmployeeInfolist: TMenuItem;
    qryEmployeeInfolistTaxCalculationName_L1: TStringField;
    qryEmployeeInfolistTaxCalculationName_L2: TStringField;
    HintName1: TMenuItem;
    StatusBar1: TStatusBar;
    qryEmployeeInfolistAccName_L1: TStringField;
    qryEmployeeInfolistAccName_L2: TStringField;
    qryEmployeeInfolist_Radif: TIntegerField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel4: TppLabel;
    ppLabel13: TppLabel;
    ppLine10: TppLine;
    ppLine7: TppLine;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText1: TppDBText;
    ppDBText8: TppDBText;
    ppLine19: TppLine;
    ppDBText7: TppDBText;
    ppDBText3: TppDBText;
    ppLine15: TppLine;
    ppLine9: TppLine;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine8: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine16: TppLine;
    qryEmployeeInfolistAccTopicCode: TIntegerField;
    qryEmployeeInfolistAccDetailCode: TIntegerField;
    qryEmployeeInfolistAccCTopicCode: TIntegerField;
    qryEmployeeInfolistAccCTopicCode2: TIntegerField;
    actPrintVijeh: TAction;
    qryEmployeeInfolistAccCTopicCode3: TIntegerField;
    qryEmployeeInfolistBirthDateDay: TStringField;
    actSMS: TAction;
    qryEmployeeInfolistMobile: TStringField;
    qryEmployeeInfolistlastName_L1: TStringField;
    qryEmployeeInfolistname_L1: TStringField;
    qryEmployeeInfolistDSW_JOB: TStringField;
    qryEmployeeInfolistFullName: TStringField;
    qryEmployeeInfolistPercentWound: TFloatField;
    qryEmployeeInfolistMartyrChild: TBooleanField;
    Dbgrid1: TCedarDbgrid;
    ppDBPipeline2: TppDBPipeline;
    qryEmployeeInfolistTaxCalculationType: TIntegerField;
    procedure actSearch_Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure rptEmployeeInfolist_TotalClick(Sender: TObject);
    procedure qryEmployeeInfolistAfterOpen(DataSet: TDataSet);
    procedure qryEmployeeInfolistCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure Dbgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Dbgrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
  private
    OrginSQL: String;
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  EmployeeInfolistF: TEmployeeInfolistF;

implementation

uses DM, search2, filter_ADO, FilterClass_ADO, GlobalPro, sort2, PersonelInfo,
  DBGrid2Print, infoSMS;
{$R *.dfm}

procedure TEmployeeInfolistF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEmployeeInfolist);
end;

procedure TEmployeeInfolistF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(Dbgrid1)
end;

procedure TEmployeeInfolistF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰·', 'ﬂœ', ftInteger,
        dvDefaults, 'True', '', ciCheck,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3) ', '');
      // AddItem(DMf.adcSalary,'',' ','',ftInteger,dvMinMax,'','',ciLookup,
      // 'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)  ',
      // 'select Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE     (FormType = 3)');


      AddItemFilter(GetFilter, TPersonelNo);


      if optP.ActiveRangeProject then
        AddItem(DMf.adcSalary, 'ProjectID', '⁄‰Ê«‰ Å—ÊéÂ', 'òœ Å—ÊéÂ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT FormInfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo WHERE  FormType =40 ',
          'SELECT Min(ProjectID),Max(ProjectID) FROM Pay.Interdicts');
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

procedure TEmployeeInfolistF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  PersonelInfoF.Enter(qryEmployeeInfolist.FieldByName('PersonelNo').AsInteger)
end;

procedure TEmployeeInfolistF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryEmployeeInfolist, 'Mobile')
end;

procedure TEmployeeInfolistF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEmployeeInfolist);
end;

procedure TEmployeeInfolistF.UpdateFilter;
begin
  with qryEmployeeInfolist do
  begin
    Active := False;
    add2log('Start UpdateFilter!', var_glb_Debug);

    if optP.ActiveRangeProject then
    begin
      OrginSQL :=
        ' SELECT     * ,  RIGHT(BirthDate, 5) AS BirthDateDay, Name_L1 + '' ''+LastName_L1 AS FullName FROM Pay.EmployeeInfo '
        + ' INNER JOIN Pay.Interdicts ON EmployeeInfo.PersonelNo = Interdicts.PersonelNo '
        + ' WHERE   (Interdicts.State < 50) AND  ' +
        ' ( EmployeeInfo.PersonelNo BETWEEN :PersonelNoForm AND :PersonelNoTo) '
        + ' :OfficeCodeFromTo order by EmployeeInfo.PersonelNo ';
      SQL.Text := StringReplace(OrginSQL, ':OfficeCodeFromTo',
        'AND (PersonStateNo in(' + GetcFrom(myParams.ParamValues
        ['PersonelState'], ftString) + ')) AND (Interdicts.ProjectID Between  '
        + GetcFrom(myParams.ParamValues['ProjectID'], ftString) + '  And  ' +
        GetcTo(myParams.ParamValues['ProjectID'], ftString) + ' )',
        [rfReplaceAll]);
      add2log('opt.ActiveRangeProject true!', var_glb_Debug);

    end
    else
    begin
      SQL.Text := StringReplace(OrginSQL, ':OfficeCodeFromTo',
        'AND (PersonStateNo in(' + GetcFrom(myParams.ParamValues
        ['PersonelState'], ftString) + '))', [rfReplaceAll]);
      add2log('opt.ActiveRangeProject false!', var_glb_Debug);
    end;

    Parameters.ParamByName('PersonelNoForm').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    // Parameters.ParamByName('PersonStateNoFrom').Value:=GetcFrom(myParams.ParamValues['PersonelState'],ftInteger);
    // Parameters.ParamByName('PersonStateNoTo').Value:=GetcTo(myParams.ParamValues['PersonelState'],ftInteger);
    // --AND (PersonStateNo BETWEEN :PersonStateNoFrom AND :PersonStateNoTo)
    Active := True;
    add2log('UpdateFilter Active := True!', var_glb_Debug);
  end; // with
end;

procedure TEmployeeInfolistF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TEmployeeInfolistF.FormShow(Sender: TObject);
begin
  inherited;
  add2log('FormShow!', var_glb_Debug);
  if not var_glb_Boolean then
  begin
    add2log('FormShow!1', var_glb_Debug);
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('PersonelNo') = nil then
      close;
    add2log('FormShow!2', var_glb_Debug);
  end
  else
  begin
    add2log('FormShow!3', var_glb_Debug);
    var_glb_Boolean := False;
    with qryEmployeeInfolist do
    begin
      Active := False;
      SQL.Text := StringReplace(OrginSQL, ':OfficeCodeFromTo', '',
        [rfReplaceAll]);
      Parameters.ParamByName('PersonelNoForm').Value := 0;
      Parameters.ParamByName('PersonelNoTo').Value := 2147483647;
      // Parameters.ParamByName('PersonStateNoFrom').Value:=0;
      // Parameters.ParamByName('PersonStateNoTo').Value:=999999999;
      Active := True;
      add2log('FormShow!4', var_glb_Debug);
    end; // with
  end;
  // L1_L2(DBGrid1);
end;

procedure TEmployeeInfolistF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘.Å—”‰· ' + IntToStr(qryEmployeeInfolist.Parameters.ParamByName
    ('PersonelNoForm').Value) + '  « ' +
    IntToStr(qryEmployeeInfolist.Parameters.ParamByName('PersonelNoTo').Value);
end;

procedure TEmployeeInfolistF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TEmployeeInfolistF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TEmployeeInfolistF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryEmployeeInfolist.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryEmployeeInfolist.EnableControls;
  end;
end;

procedure TEmployeeInfolistF.rptEmployeeInfolist_TotalClick(Sender: TObject);
begin
  inherited;
  qryEmployeeInfolist.Sort := (Sender as TMenuItem).Hint;
  InitReportFile(ppReport1, (Sender as TMenuItem).Name);
end;

procedure TEmployeeInfolistF.qryEmployeeInfolistAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text := ' ⁄œ«œ Å—”‰· = ' + IntToStr(DataSet.RecordCount);
end;

procedure TEmployeeInfolistF.qryEmployeeInfolistCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_Radif').AsInteger := DataSet.RecNo;
end;

procedure TEmployeeInfolistF.Dbgrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TEmployeeInfolistF.Dbgrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryEmployeeInfolistPersonelNo);
end;

procedure TEmployeeInfolistF.FormCreate(Sender: TObject);
begin
  inherited;
  add2log('FormCreate!', var_glb_Debug);
  OrginSQL := qryEmployeeInfolist.SQL.Text;
  ppDBPipeline2.DataSource := Dbgrid1.srcSum;
end;

procedure TEmployeeInfolistF.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(Dbgrid1);
end;

procedure TEmployeeInfolistF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(Dbgrid1, 2);
end;

end.
