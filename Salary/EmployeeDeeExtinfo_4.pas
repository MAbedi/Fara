unit EmployeeDeeExtinfo_4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBCtrls, Mask, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppVar, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppStrtch, ppSubRpt, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Filter_ADO_Const;

type
  TEmployeeDeeExtinfo_4F = class(Ttemplate2MDIF)
    qryinitForm: TADOQuery;
    qryFormInfo: TADOQuery;
    qryDecExtInfo: TADOQuery;
    srcDecExtInfo: TDataSource;
    qryDecExtInfoPersonelNo: TIntegerField;
    qryDecExtInfoPersonName_L1: TStringField;
    qryDecExtInfoPersonName_L2: TStringField;
    qryDecExtInfofatherName_L1: TStringField;
    qryDecExtInfofatherName_L2: TStringField;
    qryDecExtInfoNationalID: TStringField;
    qryDecExtInfoIDNumber: TStringField;
    qryDecExtInfoFirstDay: TFloatField;
    qryDecExtInfoFirstTime: TFloatField;
    qryDecExtInfoContainDay: TFloatField;
    qryDecExtInfoContainTime: TFloatField;
    qryDecExtInfoExpireDay: TFloatField;
    qryDecExtInfoExpireTime: TFloatField;
    qryDecExtInfoBalanceDay: TFloatField;
    qryDecExtInfoBalanceTime: TFloatField;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    ldlMaster: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    edtCaption: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryFormInfoFormInfoID: TIntegerField;
    qryFormInfoInfoID: TIntegerField;
    qryFormInfoInfoName_L1: TStringField;
    qryFormInfoInfoName_L2: TStringField;
    qryFormInfoFormType: TSmallintField;
    Label1: TLabel;
    srcFormInfo: TDataSource;
    actSort: TAction;
    Button1: TButton;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    actsendtoExcel: TAction;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLbCompanyName: TppLabel;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLbprintDate: TppLabel;
    ppSyVpageNumber: TppSystemVariable;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDBText2: TppDBText;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine13: TppLine;
    ppLabel5: TppLabel;
    ppLine15: TppLine;
    ppLabel8: TppLabel;
    ppLine14: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine16: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine17: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine18: TppLine;
    ppDBText6: TppDBText;
    ppLine19: TppLine;
    ppDBText7: TppDBText;
    ppLine20: TppLine;
    ppDBText8: TppDBText;
    ppLine21: TppLine;
    ppDBText9: TppDBText;
    ppLine22: TppLine;
    ppDBText10: TppDBText;
    ppLine23: TppLine;
    ppDBText11: TppDBText;
    ppLine24: TppLine;
    ppDBText12: TppDBText;
    ppLine25: TppLine;
    ppDBText13: TppDBText;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine28: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine29: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel21: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine31: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine30: TppLine;
    ppShape2: TppShape;
    actShow: TAction;
    BitBtn7: TBitBtn;
    qryDecExtInfoFunctionTime: TFloatField;
    qryFormInfoStandardDays: TFloatField;
    qryFormInfoStandardTimes: TFloatField;
    qryDecExtInfoAllDay: TFloatField;
    qryDecExtInfoBalanceAllDay: TFloatField;
    qryDecExtInfoMinute_: TFloatField;
    qryDecExtInfoFunctionDay: TFloatField;
    qryDecExtInfoMobile: TStringField;
    actSMS: TAction;
    qryDecExtInfoOfficeCode: TIntegerField;
    qryDecExtInfoOfficeName: TStringField;
    lblFilterStringCaption: TLabel;
    plblFilterStringCaption: TppLabel;
    qryDecExtInfoMoreThanOf9: TBCDField;
    actInsert2PersonelDecExt: TAction;
    BitBtn2: TBitBtn;
    qryDecExtInfoEmployTypeIDName: TStringField;
    qryDecExtInfoBeginningOfYear: TFloatField;
    qryFormInfoAmount: TBCDField;
    ppDBText1: TppDBText;
    ppLabel22: TppLabel;
    qryDecExtInfoUseHour: TFloatField;
    qryDecExtInfoUseHourBalance: TFMTBCDField;
    DBGrid1: TCedarDbgrid;
    DBPipelineSumGrid1: TppDBPipeline;
    qryDecExtInfoUseDay: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryFormInfoAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actsendtoExcelExecute(Sender: TObject);
    procedure ppLbprintDateGetText(Sender: TObject; var Text: String);
    procedure ppSyVpageNumberGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLbCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actShowExecute(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure plblFilterStringCaptionGetText(Sender: TObject; var Text: string);
    procedure qryDecExtInfoBeforeOpen(DataSet: TDataSet);
    procedure actInsert2PersonelDecExtExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    FormType: Byte;
    procedure initform;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmployeeDeeExtinfo_4F: TEmployeeDeeExtinfo_4F;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, Math, search2,
  sort2, StrUtils, Mymostafa, searchCode_ADO,
  EmployeeDeeExtinfo, infoSMS, MMESSAGE, SalaryFunctions;

{$R *.dfm}

procedure TEmployeeDeeExtinfo_4F.FormCreate(Sender: TObject);

begin
  inherited;
  FormType := var_glb_gParam;
  initform;
end;

procedure TEmployeeDeeExtinfo_4F.initform;
begin
  with qryinitForm do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := FormType;
    Active := True;
    // Caption:='À»  «ÿ·«⁄«  ( ' +fieldbyname('FormCaption_L1').AsString+')'  ;
    ldlMaster.Caption := ' ﬂœ Ê ⁄‰Ê«‰ «ÿ·«⁄«  (' + fieldbyname('FormCaption_L1')
      .AsString + ')';
  end; // with

  // for i:=0 to 6 do begin
  // with DBGrid1 do begin
  // if not Columns[i].Visible then
  // Columns[i].Width:=0
  // end;//with
  // end;//for

  DBGrid1.SetFooter4Sum([]);
  DBPipelineSumGrid1.DataSource := DBGrid1.srcSum;

end;

procedure TEmployeeDeeExtinfo_4F.actFilterExecute(Sender: TObject);
var
  sqlLookUp: String;
begin
  inherited;
  sqlLookUp := IfThen(optP.LanguageDisplay1,
    'PersonelNo,name_L1 +'' ''+ lastName_L1',
    'PersonelNo,name_L2 +'' ''+ lastName_L2');
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰· ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');

      AddItem(DMf.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12) ',
        'SELECT  0, MAX(InfoID) FROM Pay.FormsInfo where (FormType = 12) ');
      AddItemFilter(GetFilter, TPersonelNo);
      AddItem(DMf.adcSalary, 'Mounth', ' „«Â', '', ftInteger, dvMinMax, '', '',
        ciSimple, '', 'SELECT  1 ,12   FROM Pay.StandardTimes');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        lblFilterStringCaption.Caption := GetFilterStringCaption;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TEmployeeDeeExtinfo_4F.UpdateList;
begin
  with qryDecExtInfo do
  begin
    Active := False;

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('MounthFrom').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('MounthTo').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

    // Warn(Parameters.ParamByName('PersonelNoFrom').Value+'  '+Parameters.ParamByName('PersonNoTo').Value);
  end; // with
  with qryFormInfo do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := FormType;
    Active := True;
  end; // with
end;

procedure TEmployeeDeeExtinfo_4F.qryDecExtInfoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  // ShowQryParam(qryDecExtInfo)
end;

procedure TEmployeeDeeExtinfo_4F.qryFormInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDecExtInfo do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoID').Value :=
      DataSet.fieldbyname('FormInfoID').AsInteger;
    Parameters.ParamByName('StandardDays').Value :=
      qryFormInfo.fieldbyname('StandardDays').AsFloat;
    Parameters.ParamByName('StandardTimes').Value :=
      qryFormInfo.fieldbyname('StandardTimes').AsFloat;
    Parameters.ParamByName('Amount1').Value :=
      qryFormInfo.fieldbyname('Amount').AsFloat;
    Parameters.ParamByName('Amount2').Value :=
      qryFormInfo.fieldbyname('Amount').AsFloat;
    Parameters.ParamByName('Amount3').Value :=
      qryFormInfo.fieldbyname('Amount').AsFloat;

    Active := True;
  end; // with
end;

procedure TEmployeeDeeExtinfo_4F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('PersonelNo') = nil then
    close;
end;

procedure TEmployeeDeeExtinfo_4F.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 3, False, IntToStr(FormType));
end;

procedure TEmployeeDeeExtinfo_4F.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TEmployeeDeeExtinfo_4F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDecExtInfo);
end;

procedure TEmployeeDeeExtinfo_4F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDecExtInfo);
end;

procedure TEmployeeDeeExtinfo_4F.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TEmployeeDeeExtinfo_4F.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID,InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + 'WHERE (FormType = ' + IntToStr(FormType) + ') ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, '«‰Ê«⁄ „—Œ’Ì', Txt,
    ['', 'ﬂœ', '‰«„ 1', '‰«„ 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qryFormInfo.Locate('FormInfoID', Results[0], []);
end;

procedure TEmployeeDeeExtinfo_4F.actsendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TEmployeeDeeExtinfo_4F.ppLbprintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TEmployeeDeeExtinfo_4F.ppSyVpageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TEmployeeDeeExtinfo_4F.actInsert2PersonelDecExtExecute
  (Sender: TObject);
var
  MonthNoNew: Integer;
begin
  inherited;
  MonthNoNew := StrToInt
    (get_box(Format('‘„«—Â „«Â „Ê—œ ‰Ÿ— —«»—«Ì À»  %s «‰ Œ«» ﬂ‰Ìœ ',
    [qryDecExtInfoMoreThanOf9.DisplayLabel]), '‘„«—Â „«Â:˛',
    IntToStr(var_glb_CurrentMonth)));

  if get_response
    (Format('¬Ì« »—«Ì À»  «—ﬁ«„ „À»  ” Ê‰ "%s" œ—  %d  „«Â „ÿ„∆‰ Â” Ìœø',
    [qryDecExtInfoMoreThanOf9.DisplayLabel, MonthNoNew])) <> mrYes then
    exit;

  BigMessage('œ—Õ«· À» ...', 0);
  With qryDecExtInfo do
  begin
    DisableControls;
    Filter := 'MoreThanOf9 > 0';
    Filtered := True;
    First;
  end;

  With DMf.qryTmpTmpp do
    try
      Active := False;
      SQL.Text := 'SELECT Top 1 * FROM Pay.PersonelDecExt';
      Active := True;
      while not qryDecExtInfo.Eof do
      begin
        Insert;
        fieldbyname('DecExtID').AsInteger :=
          GetANewCode('', 'Pay.PersonelDecExt', 'DecExtID');
        fieldbyname('PersonelNo').AsInteger :=
          qryDecExtInfoPersonelNo.AsInteger;
        fieldbyname('FirstMounth').AsInteger := MonthNoNew;
        fieldbyname('DayQuntity').AsFloat := qryDecExtInfoMoreThanOf9.AsFloat;
        fieldbyname('AidDate1').AsString := var_glb_CurrentDate;
        fieldbyname('AidDate2').AsString := var_glb_CurrentDate;
        fieldbyname('EndDate').AsString := var_glb_CurrentDate;
        fieldbyname('FormInfoID').AsInteger := qryFormInfoFormInfoID.AsInteger;
        fieldbyname('Note_L1').AsString :=
          qryDecExtInfoMoreThanOf9.DisplayLabel;
        Post;
        qryDecExtInfo.Next;
      end;
    finally
      Active := False;
      qryDecExtInfo.Filtered := False;
      qryDecExtInfo.Requery();
      qryDecExtInfo.EnableControls;
      FreeReservedCodes(DMf.adcSalary);
      BigMessage('À»  ‘œ.', 1);
    end;

end;

procedure TEmployeeDeeExtinfo_4F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryDecExtInfo.DisableControls;
    InitReportFile(ppReport1, 'EmployeeDeeExtinfo_4');
  finally
    qryDecExtInfo.EnableControls;
  end;
end;

procedure TEmployeeDeeExtinfo_4F.plblFilterStringCaptionGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := lblFilterStringCaption.Caption;
end;

procedure TEmployeeDeeExtinfo_4F.ppLbCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TEmployeeDeeExtinfo_4F.actShowExecute(Sender: TObject);
begin
  inherited;
  EmployeeDeeExtinfoF.Enter(16, 0)
end;

procedure TEmployeeDeeExtinfo_4F.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryDecExtInfo, 'Mobile');
end;

end.
