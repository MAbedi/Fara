// Mostafa
unit EmployeeDeeExtinfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, ToolWin, DBCtrls, Grids, Vcl.DBGrids, DB, ADODB, Mask,
  StrUtils, DateUtils, Math, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache, ppVar, ppStrtch, ppSubRpt,
  Menus, ppTypes, SumDBGrid, ppParameter, shamsiDate, GetExcel, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Filter_ADO_Const;

type
  TEmployeeDeeExtinfoF = class(Ttemplate2MDIF)
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
    Panel1: TPanel;
    DBText1: TDBText;
    qryInitForm: TADOQuery;
    qryformInfo: TADOQuery;
    qryEmployeeDecExt: TADOQuery;
    srcEmployeeDecExt: TDataSource;
    qryDecExtInfo: TADOQuery;
    srcDecExtInfo: TDataSource;
    qryformInfoFormInfoID: TIntegerField;
    qryformInfoFormType: TSmallintField;
    qryformInfoInfoID: TIntegerField;
    qryformInfoInfoName_L1: TStringField;
    qryformInfoInfoName_L2: TStringField;
    qryformInfoPrvInfoID: TIntegerField;
    qryformInfoAmount: TBCDField;
    qryformInfoAmount2: TBCDField;
    qryformInfoCoefficient: TFloatField;
    qryformInfoStandardDays: TFloatField;
    qryformInfoStandardTimes: TFloatField;
    qryformInfoAccTopicCode: TIntegerField;
    qryformInfoAccDetailCode: TIntegerField;
    qryformInfoAccCTopicCode: TIntegerField;
    qryformInfoAccCTopicCode2: TIntegerField;
    qryformInfoCalCulateType: TWordField;
    qryformInfoRecallFormInfoID1: TStringField;
    qryformInfoRecallFormInfoID2: TStringField;
    qryformInfoWordDocuments: TStringField;
    qryformInfoRecalKindClock: TWordField;
    qryDecExtInfoDecExtID: TIntegerField;
    qryDecExtInfoFormInfoID: TIntegerField;
    qryDecExtInfoPersonelNo: TIntegerField;
    qryDecExtInfoEmployeeAmount: TBCDField;
    qryDecExtInfoFirstMounth: TWordField;
    qryDecExtInfoEndMounth: TWordField;
    qryDecExtInfoAidNo1: TStringField;
    qryDecExtInfoAidDate1_L1: TStringField;
    qryDecExtInfoAidNo2: TStringField;
    qryDecExtInfoAidDate2_L1: TStringField;
    qryDecExtInfoDayQuntity: TFloatField;
    qryDecExtInfoDayTime: TFloatField;
    qryDecExtInfoEmployerAmount: TBCDField;
    qryDecExtInfoFormInfoID2: TIntegerField;
    qryDecExtInfoAccTopicCode: TIntegerField;
    qryDecExtInfoAccDetailCode: TIntegerField;
    qryDecExtInfoAccCTopicCode: TIntegerField;
    qryDecExtInfoAccCTopicCode2: TIntegerField;
    pnlAccount: TPanel;
    pnlCTopicCode: TPanel;
    lblTAFSIL: TLabel;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    edtPersonelNo: TDBEdit;
    pnlCustomer1: TPanel;
    Label11: TLabel;
    edt_EmployeeName_L1: TDBEdit;
    pnlCustomer2: TPanel;
    Label12: TLabel;
    edt_EmployeeName_L2: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label15: TLabel;
    PersonelInfo: TADOQuery;
    qryDecExtInfo_EmployeeName_L1: TStringField;
    qryDecExtInfo_EmployeeName_L2: TStringField;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
    qryEmployeeDecExtPersonelNo: TIntegerField;
    qryEmployeeDecExtEmployeename_L1: TStringField;
    qryEmployeeDecExtEmployeename_L2: TStringField;
    actAccount: TAction;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn9: TBitBtn;
    pnlDayTime: TPanel;
    Label14: TLabel;
    edtDayQuntity: TDBEdit;
    pnlAidNo1: TPanel;
    lblAidNo1: TLabel;
    edtAidNo1: TDBEdit;
    pnlAidNo2: TPanel;
    lblAidNo2: TLabel;
    edtAidNo2: TDBEdit;
    pnlDayQuntity: TPanel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    pnlAidDate1: TPanel;
    edtAidDate1: TDBEdit;
    pnlAidDate2: TPanel;
    lblAidDate2: TLabel;
    edtAidDate2: TDBEdit;
    lblAidDate1: TLabel;
    dblkcbbFormInfoID: TDBLookupComboBox;
    srcFormInfo: TDataSource;
    pnlAmount: TPanel;
    edtEmployeeAmount: TDBEdit;
    Label6: TLabel;
    pnlCTopicCode2: TPanel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    pnlTopicCode: TPanel;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    pnlDetailCode: TPanel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    actSort: TAction;
    actSendToExcel: TAction;
    qryDecExtInfoInfoName_L1: TStringField;
    qryDecExtInfoInfoName_L2: TStringField;
    BitBtn10: TBitBtn;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    PnlNote: TPanel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    edtEndDate: TDBEdit;
    Label8: TLabel;
    qryDecExtInfoEndDate: TStringField;
    Label9: TLabel;
    edtMinute_: TDBEdit;
    qryDecExtInfoMinute_: TFloatField;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    BitBtn11: TBitBtn;
    actPrint2: TAction;
    PopList4Print2: TPopupMenu;
    AllClikPop2: TMenuItem;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppDBText7: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine15: TppLine;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLbCompanyName: TppLabel;
    pplbPrintDate: TppLabel;
    ppsysVarPageNumber: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    qryDecExtInfoAccCTopicCode3: TIntegerField;
    pnlCTopicCode3: TPanel;
    Label10: TLabel;
    DBEdit17: TDBEdit;
    LblReMainPerson: TLabel;
    BitBtn12: TBitBtn;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    N1: TMenuItem;
    plblGETRemainedOffTime: TppLabel;
    qryEmployeeDecExtOfficeName: TStringField;
    qryPersonelTypeInfo: TADOQuery;
    qryDecExtInfo_FormInfoID: TIntegerField;
    qryDecExtInfo_InfoID: TIntegerField;
    actDeleteAll: TAction;
    actDBGridSelectAll: TAction;
    btnOtherMenu: TBitBtn;
    popdelete: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    actShowImPortExcel: TAction;
    qryDecExtInfoNote_L1: TWideStringField;
    qryDecExtInfoNote_L2: TWideStringField;
    actOffTimeListPost: TAction;
    DBGrid2: TCedarDbgrid;
    DBGrid1: TCedarDbgrid;
    qryDecExtInfoYearID: TIntegerField;
    procedure ToolButton1Click(Sender: TObject);
    procedure actAccountExecute(Sender: TObject);
    procedure qryEmployeeDecExtAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcDecExtInfoStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryDecExtInfoAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryDecExtInfoAfterScroll(DataSet: TDataSet);
    procedure qryDecExtInfoAfterPost(DataSet: TDataSet);
    procedure qryDecExtInfoBeforeDelete(DataSet: TDataSet);
    procedure dblkcbbFormInfoIDEnter(Sender: TObject);
    procedure edtPersonelNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLbCompanyNameGetText(Sender: TObject; var Text: String);
    procedure pplbPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppsysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryDecExtInfoAfterDelete(DataSet: TDataSet);
    procedure AllClikPopClick(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure AllClikPop2Click(Sender: TObject);
    procedure qryDecExtInfoPersonelNoChange(Sender: TField);
    procedure qryDecExtInfoAidDate1_L1Change(Sender: TField);
    procedure qryDecExtInfoAidDate2_L1Change(Sender: TField);
    procedure qryDecExtInfoBeforePost(DataSet: TDataSet);
    procedure BitBtn12Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure dblkcbbFormInfoIDMouseEnter(Sender: TObject);
    procedure plblGETRemainedOffTimeGetText(Sender: TObject; var Text: string);
    procedure qryDecExtInfoBeforeEdit(DataSet: TDataSet);
    procedure qryDecExtInfoBeforeInsert(DataSet: TDataSet);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure actDBGridSelectAllExecute(Sender: TObject);
    procedure btnOtherMenuClick(Sender: TObject);
    procedure actShowImPortExcelExecute(Sender: TObject);
    procedure actOffTimeListPostExecute(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
  private
    MonthNo: Byte;
    FormType: Byte;
    PersonelNo: Integer;
    procedure UpdateList;
    Procedure initForm;
    function SumDays: Boolean;
    function GETRemainedOffTime(PersonelNo, DecExtID: Integer): Real;
    function CheckRemained: Boolean;
    function DouplicateDay: Boolean;
  public
    procedure Enter(Form_Type, DecExtID: Integer);
    { Public declarations }
  end;

var
  EmployeeDeeExtinfoF: TEmployeeDeeExtinfoF;

implementation

uses DM, GlobalPro, searchCode_ADO, search2, sort2, mmessage,
  SalaryFunctions, WorkflowDm, main, filter_ADO, FilterClass_ADO, FaraConsts,
  mdiMain, AccountP;

{$R *.dfm}

procedure TEmployeeDeeExtinfoF.Enter(Form_Type, DecExtID: Integer);
begin
  if not(mdiMainF.actEmployeeDeeExtinfoF16.Visible or
    mdiMainF.actEmployeeDeeExtinfoF16.Visible) then
    Abort;
  CreateMDIForm2(TEmployeeDeeExtinfoF, EmployeeDeeExtinfoF, mainF, Form_Type);
end;

procedure TEmployeeDeeExtinfoF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  UpdateList;
  qryEmployeeDecExt.Locate('PersonelNo', PersonelNo, [])
end;

procedure TEmployeeDeeExtinfoF.UpdateList;
begin
  With qryDecExtInfo do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('PersonNo').Value := qryEmployeeDecExt.fieldbyname
      ('PersonelNo').AsInteger;
    Active := True;
  end; // with

  GetYearMounth(MonthNo);

  With qryEmployeeDecExt do
  begin
    Active := False;
    Parameters.ParamByName('Date').Value := optP.YearMounth;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Active := True;
  end; // with



  //
  // SELECT     PersonelDecExt.*,
  // (SELECT     InfoName_L1
  // FROM Pay.FormsInfo
  // WHERE     (FormInfoID = PersonelDecExt.FormInfoID)) AS InfoName_L1,
  // (SELECT     InfoName_L2
  // FROM Pay.FormsInfo
  // WHERE     (FormInfoID = PersonelDecExt.FormInfoID)) AS InfoName_L2
  // FROM Pay.PersonelDecExt
  // WHERE     (FirstMounth = :Mounth) AND (PersonelNo= :PersonNo) AND (FormInfoID IN
  // (SELECT     FormInfoID
  // FROM Pay.FormsInfo
  // WHERE     (FormType = :Type)))
  // AND PersonelDecExt.AidDate1 Between :AidDate1From  and :AidDate1To

end;

procedure TEmployeeDeeExtinfoF.actAccountExecute(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryDecExtInfo)
end;

procedure TEmployeeDeeExtinfoF.qryEmployeeDecExtAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDecExtInfo do
  begin
    Active := False;
    Parameters.ParamByName('PersonNo').Value :=
      DataSet.fieldbyname('PersonelNo').AsInteger;
    Active := True;
  end; // with

end;

procedure TEmployeeDeeExtinfoF.initForm;
begin
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
    Caption := 'ثبت ' + fieldbyname('FormCaption_L1').AsString;
    if FormType = 16 then
      Caption := 'ثبت مرخصی پرسنل';
    lblCaption.Hint := IntToStr(FormType);
    // -----------------------------Set Label-------------------------------------
    lblAidNo1.Caption := ' شماره ' + fieldbyname('AidInfo1Caption').AsString;
    lblAidDate1.Caption := ' تاريخ ' + fieldbyname('AidInfo1Caption').AsString;
    qryDecExtInfo.fieldbyname('AidNo1').DisplayLabel := lblAidNo1.Caption;
    qryDecExtInfo.fieldbyname('AidDate1').DisplayLabel := lblAidDate1.Caption;

    lblAidNo2.Caption := ' شماره ' + fieldbyname('AidInfo2Caption').AsString;
    lblAidDate2.Caption := ' تاريخ  ' + fieldbyname('AidInfo2Caption').AsString;
    // ------------------------------set Panel-------------------------------------
    pnlAmount.Visible := fieldbyname('Amount2Active').Value = 1;
    setColumns2(DBGrid2, pnlAmount.Visible, 'EmployeeAmount');

    pnlDayQuntity.Visible := fieldbyname('DurationDayActive').Value = 1;
    pnlDayTime.Visible := fieldbyname('DurationTimeActive').Value = 1;

    pnlAidNo1.Visible := fieldbyname('AidInfoNo1Active').Value = 1;
    setColumns2(DBGrid2, pnlAidNo1.Visible, 'AidNo1');

    pnlAidDate1.Visible := fieldbyname('AidInfoDate1Active').Value = 1;
    setColumns2(DBGrid2, pnlAidDate1.Visible, 'AidDate1');

    pnlAidNo2.Visible := fieldbyname('AidInfoNo2Active').Value = 1;
    pnlAidDate2.Visible := fieldbyname('AidInfoDate2Active').Value = 1;
    pnlTopicCode.Visible := fieldbyname('TopicCodeKind').Value <> 0;
    pnlDetailCode.Visible := fieldbyname('DetailCodeKind').Value <> 0;
    pnlCTopicCode.Visible := fieldbyname('CTopicCodeKind').Value <> 0;
    pnlCTopicCode2.Visible := fieldbyname('CTopicCode2Kind').Value <> 0;
    pnlCTopicCode3.Visible := fieldbyname('CTopicCode3Kind').Value <> 0;
    pnlAccount.Visible := (pnlDetailCode.Visible) or (pnlTopicCode.Visible) or
      (pnlCTopicCode.Visible) or (pnlCTopicCode2.Visible) or
      (pnlCTopicCode3.Visible);

    pnlCustomer1.Visible := optP.LanguageDisplay1;
    pnlCustomer2.Visible := optP.LanguageDisplay2;

    PnlNote.Visible := fieldbyname('NoteActive').Value = 1;
  end; // with

  if not pnlCustomer1.Visible then
  begin
    Label1.Top := pnlCustomer1.Top;
    edtPersonelNo.Top := pnlCustomer1.Top - 1;
    SpeedButton1.Top := pnlCustomer1.Top - 2;
  end; // if

  with qryEmployeeDecExt do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
  end; // with

  with qryDecExtInfo do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := FormType;
    // Parameters.ParamByName('AidDate1From').Value := APPBank.StartYear;
    // Parameters.ParamByName('AidDate1To').Value := APPBank.endYear;
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    Active := True;
  end; // with

  with qryformInfo do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := FormType;
    Active := True;
    dblkcbbFormInfoID.ListField := ifthen(optP.primaryLanguage = 0,
      fieldbyname('InfoName_L1').FieldName, fieldbyname('InfoName_L2')
      .FieldName);
  end; // with
  // -----------------------------set-grid---------------------------------------
  // L1_L2(DBGrid1);
  setColumns2(DBGrid2, optP.LanguageDisplay1, 'InfoName_L1');
  setColumns2(DBGrid2, optP.LanguageDisplay2, 'InfoName_L2');

  DBGrid2.SetFooter4Sum([]);

  if (qryInitForm.fieldbyname('PrintAfterPost').AsInteger = 1) then
    ppReport1.DeviceType := 'Printer';

end;

procedure TEmployeeDeeExtinfoF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TEmployeeDeeExtinfoF.N1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TEmployeeDeeExtinfoF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  initForm;
  DBGrid1.SetFooter4Sum([]);
  DBGrid2.SetFooter4Sum([]);
end;

procedure TEmployeeDeeExtinfoF.srcDecExtInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDecExtInfo.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  actAccount.Visible := okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TEmployeeDeeExtinfoF.FormShow(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  edtPersonelNo.SetFocus;
  DataSet.fieldbyname('DecExtID').AsInteger :=
    GetANewCode('', 'Pay.PersonelDecExt', 'DecExtID');
  DataSet.fieldbyname('FirstMounth').AsInteger := MonthNo;
  DataSet.fieldbyname('YearID').AsInteger := APPBank.Year;

  if FormType = 16 then
  begin
    DataSet.fieldbyname('AidDate1').AsString := var_glb_CurrentDate;
  end;
end;

procedure TEmployeeDeeExtinfoF.SpeedButton1Click(Sender: TObject);

var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  Txt := 'SELECT  PersonelNo, name_L1,  lastName_L1,  fatherName_L1,  IDNumber, NationalID '
    + 'FROM Pay.PersonelInfo ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'مشخصات پرسنل', Txt,
    ['شماره پرسنل', 'نام', ' نام خانوادگي', 'نام پدر', 'شماره شناسنامه',
    'كد ملي'], Results, [100, 100, 100, 100, 100, 100], alLeft);
  if s then
  begin
    if not(qryDecExtInfo.State in dseditmodes) then
      qryDecExtInfo.edit;
    qryDecExtInfo['PersonelNo'] := Results[0];
  end; // if
end;

procedure TEmployeeDeeExtinfoF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEmployeeDecExt);
end;

procedure TEmployeeDeeExtinfoF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEmployeeDecExt);
end;

procedure TEmployeeDeeExtinfoF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TEmployeeDeeExtinfoF.actShowImPortExcelExecute(Sender: TObject);
begin
  inherited;
  try
    qryDecExtInfo.AfterPost := nil;
    qryDecExtInfo.BeforePost := nil;
    GetExcelF.ShowImPortExcel(qryDecExtInfo);
  finally
    qryDecExtInfo.AfterPost := qryDecExtInfoAfterPost;
    qryDecExtInfo.BeforePost := qryDecExtInfoBeforePost;
  end;
end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text :=
    Format('%d/%d', [DataSet.RecNo, DataSet.RecordCount]);
end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoAidDate1_L1Change(Sender: TField);
begin
  inherited;
  if FormType <> 16 then
    Exit;
  // if (qryDecExtInfo.fieldbyname('AidDate2').AsString = EmptyStr) then
  qryDecExtInfo.fieldbyname('AidDate2').AsString :=
    qryDecExtInfo.fieldbyname('AidDate1').AsString;

end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoAidDate2_L1Change(Sender: TField);
begin
  inherited;
  if FormType <> 16 then
    Exit;
  qryDecExtInfo.fieldbyname('EndDate').AsString :=
    qryDecExtInfo.fieldbyname('AidDate2').AsString;
end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoAfterPost(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  LblReMainPerson.Visible := False;
  i := qryDecExtInfo.fieldbyname('PersonelNo').AsInteger;
  qryEmployeeDecExt.Requery;
  qryEmployeeDecExt.Locate('PersonelNo', i, []);

  if qryInitForm.fieldbyname('WorkflowID').AsInteger > 0 then
    WorkflowDmF.RunSomeWorkflow(qryInitForm.fieldbyname('WorkflowID').AsInteger,
      qryDecExtInfo, ppReport1, qryInitForm.fieldbyname('ReportFileName1')
      .AsString, qryDecExtInfo.fieldbyname('PersonelNo').AsString);

  BigMessage('ثبت شد.', 1);

  if (qryInitForm.fieldbyname('PrintAfterPost').AsInteger = 1) then
    PopList4Print.Items[0].Click;

end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  // if not FunctionDelete(qryDecExtInfoPersonelNo.AsInteger, MonthNo) then
  // Abort;

  if not CheckUserlevel(qryInitForm.fieldbyname('DeleteLevelID').AsInteger) then
    Abort;
  if get_response('آيا از حذف مطمئن هستيد.') <> mryes then
    Abort;
end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.fieldbyname('EditLevelID').AsInteger) then
    Abort
end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitForm.fieldbyname('ADDLevelID').AsInteger) then
    Abort;
end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not DouplicateDay then
    Abort;

  if not ValidateDatasetDates(DataSet, APPBank.StartYear, APPBank.endYear) then
    Abort;

  if not SumDays then
    Abort;
  if not CheckRemained then
    Abort;
end;

function TEmployeeDeeExtinfoF.DouplicateDay: Boolean;
begin
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(DecExtID) AS Expr1';
    SQL.Add('FROM Pay.PersonelDecExt');
    SQL.Add('WHERE (EndDate = :EndDate )');
    SQL.Add('AND (FormInfoID = :FormInfoID )');
    SQL.Add('AND (ISNULL(DayQuntity, 0) > 0)');
    SQL.Add('AND (DecExtID <> :DecExtID )');
    SQL.Add('AND (PersonelNo = :PersonelNo )');
    Parameters.ParamByName('EndDate').Value := qryDecExtInfoEndDate.AsString;
    Parameters.ParamByName('FormInfoID').Value :=
      qryDecExtInfoFormInfoID.AsInteger;;
    Parameters.ParamByName('DecExtID').Value :=
      qryDecExtInfoDecExtID.AsInteger;;
    Parameters.ParamByName('PersonelNO').Value :=
      qryDecExtInfoPersonelNo.AsInteger;
    Active := True;
    Result := Fields[0].AsInteger = 0;
    Active := False;
    if not Result then
    begin
      Warn('در این تاریخ برای این پرسنل اطلاعات دیگری ثبت شده است');
      Abort;
    end;
  end;

end;

function TEmployeeDeeExtinfoF.CheckRemained: Boolean;
var
  Remained: Real;
begin
  Result := True;
  if optP.OffTimeControlMessages > 0 then
    if (FormType = 16) and (qryDecExtInfo_InfoID.AsInteger = 1) then
    begin
      Remained := RoundTo(RoundTo(qryDecExtInfoDayQuntity.AsFloat +
        RoundTo(qryDecExtInfoDayTime.AsFloat + qryDecExtInfoMinute_.AsFloat /
        60, -2) / 8, -2), -2);
      Remained := GETRemainedOffTime(qryDecExtInfoPersonelNo.AsInteger,
        qryDecExtInfoDecExtID.AsInteger) - Remained;
      Result := Remained > 0;
      if not Result then
        Warn('مانده مرخصي كافي نيست');
      if optP.OffTimeControlMessages = 1 then
        Result := True;
    end;
end;

function TEmployeeDeeExtinfoF.SumDays: Boolean;
var
  Days, countDay: Integer;
begin
  Result := True;
  if optP.OffTimeControlMessages > 0 then
    if (FormType = 16) and (qryDecExtInfo_InfoID.AsInteger = 1) then
      With DMf.qryTmpTmpp do
      begin
        Active := False;
        // SQL.Text :=
        // 'SELECT SUM(ROUND(ROUND(ISNULL(PersonelDecExt.DayQuntity, 0) +';
        // SQL.Add('ROUND(PersonelDecExt.DayTime +');
        // SQL.Add('PersonelDecExt.Minute_ / 60, 2) / 8, 2), 2)) AS AddType');
        SQL.Text := 'SELECT SUM(PersonelDecExt.DayQuntity*8*60 +';
        SQL.Add('PersonelDecExt.DayTime*60+PersonelDecExt.Minute_) AS AddType');
        SQL.Add('FROM Pay.PersonelDecExt LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo ON FormsInfo.FormInfoID = PersonelDecExt.FormInfoID');
        SQL.Add('WHERE (FormsInfo.FormType = 16)');
        SQL.Add(Format('AND (PersonelDecExt.FirstMounth = %d )', [MonthNo]));
        SQL.Add(Format('AND (PersonelDecExt.PersonelNo = %d )',
          [qryDecExtInfoPersonelNo.AsInteger]));
        SQL.Add(Format('AND (PersonelDecExt.DecExtID <> %d)',
          [qryDecExtInfoDecExtID.AsInteger]));

        SQL.Add(Format
          ('AND (%s BETWEEN PersonelDecExt.AidDate2 AND PersonelDecExt.EndDate)',
          [QuotedStr(qryDecExtInfo.fieldbyname('AidDate2').AsString)]));

        SQL.Add(Format
          ('AND (%s BETWEEN PersonelDecExt.AidDate2 AND PersonelDecExt.EndDate)',
          [QuotedStr(qryDecExtInfo.fieldbyname('EndDate').AsString)]));

        Active := True;
        Days := Fields[0].AsInteger;
        Active := False;
        Days := Days + qryDecExtInfoDayQuntity.AsInteger * 8 * 60 +
          qryDecExtInfoDayTime.AsInteger * 60 + qryDecExtInfoMinute_.AsInteger;

        countDay := DaysBetween
          (Shamsi2Miladi(qryDecExtInfo.fieldbyname('AidDate2').AsString),
          Shamsi2Miladi(qryDecExtInfo.fieldbyname('EndDate').AsString)) + 1;

        Result := Days <= countDay * 480;
        if not Result then
        Begin
          Warn(Format
            ('با ثبت مرخصي جاري مرخصي ثبت شده به %d دقيقه ميرسد كه بيشتر از حد مجاز است',
            [Days]));
        End;
      end;
  if optP.OffTimeControlMessages = 1 then
    Result := True;

end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoPersonelNoChange(Sender: TField);
var
  Remained: Real;
begin
  inherited;
  if (FormType = 16) then
  begin
    qryDecExtInfo.fieldbyname('FormInfoID').AsInteger :=
      qryDecExtInfo.fieldbyname('_FormInfoID').AsInteger;
    Remained := GETRemainedOffTime(Sender.AsInteger,
      qryDecExtInfoDecExtID.AsInteger);
    LblReMainPerson.Visible := True;
    if Remained = 0 then
      LblReMainPerson.Caption := 'مرخصي ثبت نشده'
    else
    begin
      LblReMainPerson.Caption := 'مانده مرخصي:  ' + FloatToStr(Remained);
      if Remained < 0 then
        LblReMainPerson.Color := clPurple
      else
        LblReMainPerson.Color := clHighlight
    end;

  end;
end;

function TEmployeeDeeExtinfoF.GETRemainedOffTime(PersonelNo,
  DecExtID: Integer): Real;
begin
  With DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT Remained FROM';
    SQL.Add('Pay.GETRemainedOffTime( ' + APPBank.Year.ToString + ',' +
      APPBank.Year.ToString +
      ', DEFAULT,DEFAULT,:PersonelNo1,:PersonelNo2 ,:DecExtID)');
    Parameters[0].Value := PersonelNo;
    Parameters[1].Value := PersonelNo;
    Parameters[2].Value := DecExtID;
    Active := True;
    Result := Fields[0].AsFloat;
    Active := False;
  end;
end;

procedure TEmployeeDeeExtinfoF.dblkcbbFormInfoIDEnter(Sender: TObject);
begin
  inherited;
  // if qryDecExtInfo.State in dseditmodes then
  // DBLookupComboBox1.DropDown;
end;

procedure TEmployeeDeeExtinfoF.dblkcbbFormInfoIDMouseEnter(Sender: TObject);
begin
  inherited;
  dblkcbbFormInfoID.Hint := dblkcbbFormInfoID.ListSource.DataSet.fieldbyname
    (dblkcbbFormInfoID.KeyField).AsString
end;

procedure TEmployeeDeeExtinfoF.edtPersonelNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = vk_space then
    SpeedButton1.Click;
end;

procedure TEmployeeDeeExtinfoF.ppLbCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TEmployeeDeeExtinfoF.pplbPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TEmployeeDeeExtinfoF.ppsysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TEmployeeDeeExtinfoF.actPrintExecute(Sender: TObject);
begin
  inherited;
  MakeMenuItem(FormType, AllClikPopClick, PopList4Print);
  try
    qryEmployeeDecExt.DisableControls;
    qryDecExtInfo.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryEmployeeDecExt.EnableControls;
    qryDecExtInfo.EnableControls;
  end;
end;

procedure TEmployeeDeeExtinfoF.plblGETRemainedOffTimeGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := StringReplace(Text, ' ماندهمرخصي ',
    FloatToStr(GETRemainedOffTime(qryDecExtInfoPersonelNo.AsInteger, 0)),
    [rfReplaceAll]);
end;

procedure TEmployeeDeeExtinfoF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'ليست انواع مرخصي ماه ' + ToolBar1.Buttons
    [qryDecExtInfo.fieldbyname('FirstMounth').AsInteger - 1].Caption;
end;

procedure TEmployeeDeeExtinfoF.DBGrid1CellClick(Column: TColumnEh);
begin
  inherited;
  PersonelNo := qryEmployeeDecExtPersonelNo.AsInteger
end;

procedure TEmployeeDeeExtinfoF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryEmployeeDecExt.fieldbyname('PersonelNo'));
end;

procedure TEmployeeDeeExtinfoF.qryDecExtInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateList;
end;

procedure TEmployeeDeeExtinfoF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  ppDBPipeline1.RangeBegin := rbFirstRecord;
  ppDBPipeline1.RangeEnd := reLastRecord;
  ppDBPipeline2.RangeBegin := rbFirstRecord;
  ppDBPipeline2.RangeEnd := reLastRecord;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TEmployeeDeeExtinfoF.BitBtn12Click(Sender: TObject);
begin
  inherited;
  try
    qryDecExtInfo.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryDecExtInfo);
  finally
    qryDecExtInfo.AfterPost := qryDecExtInfoAfterPost;
  end;
end;

procedure TEmployeeDeeExtinfoF.btnOtherMenuClick(Sender: TObject);
begin
  inherited;
  popdelete.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TEmployeeDeeExtinfoF.actDBGridSelectAllExecute(Sender: TObject);
begin
  inherited;
  try
    qryEmployeeDecExt.AfterScroll := nil;
    DBGridSelectAll(DBGrid1);
  finally
    qryEmployeeDecExt.EnableControls;
  end;
end;

procedure TEmployeeDeeExtinfoF.actDeleteAllExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if not CheckUserlevel(qryInitForm.fieldbyname('DeleteLevelID').AsInteger) then
    Abort;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response
      ('آيا براي به حذف كردن کلیه مرخصی های پرسنل انتخاب شده در ماه جاری مطمئن هستيد؟')
      <> mryes then
      Exit;

  try
    qryEmployeeDecExt.AfterScroll := nil;
    s := GetSelectedRowsDBGrid(DBGrid1, 'PersonelNo');
  finally
    qryEmployeeDecExt.AfterScroll := qryEmployeeDecExtAfterScroll;
    qryEmployeeDecExt.EnableControls;
  end;
  If s = '' then
    Exit;
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'DELETE FROM Pay.PersonelDecExt ';
    SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
    SQL.Add('Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID');
    SQL.Add(' WHERE (PersonelDecExt.PersonelNo IN (' + s + ')) ');
    SQL.Add(Format('AND (PersonelDecExt.FirstMounth = %d)', [MonthNo]));
    SQL.Add(Format('AND (FormsInfo.FormType = %d)', [FormType]));
    try
      BigMessage(IntToStr(ExecSQL) + ' سطر‌ حذف شد.', 2);
      Active := False;
      qryEmployeeDecExt.Close;
      qryEmployeeDecExt.Open;
    except
      Warn('اشكال در  حذف كردن  سطر‌');
    end;
  end;

end;

procedure TEmployeeDeeExtinfoF.actOffTimeListPostExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  if get_response(Format('آيا براي   "%s" در ماه   %d   مطمئن هستيد؟',
    [actOffTimeListPost.Caption, MonthNo])) <> mryes then
    Exit;

  With TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMf.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1' +
        ' FROM  Pay.FormsInfo  ' + ' WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT  0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');

      AddItem(DMf.adcSalary, 'Mounth', 'ماه', 'ماه', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 17)',
        'SELECT MIN(InfoID),MAX(InfoID) FROM Pay.FormsInfo WHERE (FormType = 17)');

      if ShowModal = mrOk then
      begin
        BigMessage('لطفا صبر کنید.....', 0);
        GetFilterString;
        qry := TADOQuery.Create(Self);
        with qry do
        begin
          Connection := theMainConnection;
          Active := False;
          SQL.Text := 'SELECT OffTimeList.PersonelNo,sum(addtype) AS addtype';
          SQL.Add('FROM Pay.OffTimeList( ' + APPBank.Year.ToString + ',' +
            APPBank.Year.ToString +
            ', 	:MounthNoFrom, :MounthNoTo,	1 ,1, 0 ,999999999 ) as OffTimeList LEFT OUTER JOIN');
          SQL.Add('(select PersonelNo,Interdicts.InterdictDate,InterdicStartDate ,InterdictID from');
          SQL.Add('Interdicts');
          SQL.Add('LEFT OUTER JOIN');
          SQL.Add('Pay.FormsInfo AS FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID LEFT OUTER JOIN');
          SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID');

          SQL.Add('where ((( :InterdictsDate BETWEEN SUBSTRING(Interdicts.InterdicStartDate, 1, 7) AND SUBSTRING (Interdicts.InterdicEndDate,');
          SQL.Add('1, 7))');
          SQL.Add('AND (Interdicts.State < 11)');
          SQL.Add('AND (Interdicts.InterdicType = 0)))');
          SQL.Add('AND (FormsInfo_1.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo)');
          SQL.Add('and (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');

          SQL.Add(') aaaa ON OffTimeList.PersonelNo = aaaa.PersonelNo and SUBSTRING(aaaa.InterdictDate, 1, 2)');
          SQL.Add('=SUBSTRING(:InterdictsDate2, 1, 2)');
          SQL.Add('WHERE ');
          SQL.Add('(OffTimeList.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');

          SQL.Add('GROUP BY OffTimeList.PersonelNo');

          Parameters.ParamByName('MounthNoFrom').Value :=
            GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
          Parameters.ParamByName('MounthNoTo').Value :=
            GetcTo(myParams.ParamValues['Mounth'], ftInteger);

          GetYearMounth(MonthNo);
          Parameters.ParamByName('InterdictsDate').Value := optP.YearMounth;

          // Parameters.ParamByName('InterdictsDate').Value :=
          // IntToStr(APPBank.Year) + '/' +
          // RightStr('00' +   IntToStr(MonthNo), 2);

          Parameters.ParamByName('InterdictsDate2').Value :=
            Parameters.ParamByName('InterdictsDate').Value;

          Parameters.ParamByName('OfficeCodeFrom').Value :=
            GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
          Parameters.ParamByName('OfficeCodeTo').Value :=
            GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
          Parameters.ParamByName('PersonelNoFrom').Value :=
            GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
          Parameters.ParamByName('PersonelNoTo').Value :=
            GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

          Parameters.ParamByName('EmployTypeIDFrom').Value :=
            GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
          Parameters.ParamByName('EmployTypeIDTo').Value :=
            GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

          Active := True;
          qryDecExtInfo.AfterPost := nil;
          qryDecExtInfo.BeforePost := nil;

          qryDecExtInfo.DisableControls;

          while not Eof do
          begin
            qryDecExtInfo.Insert;
            qryDecExtInfo.fieldbyname('PersonelNo').AsInteger :=
              fieldbyname('PersonelNo').AsInteger;
            qryDecExtInfo.fieldbyname('DayQuntity').AsFloat :=
              fieldbyname('addtype').AsFloat;
            qryDecExtInfo.fieldbyname('AidDate1').AsString :=
              var_glb_CurrentDate;
            qryDecExtInfo.fieldbyname('AidDate2').AsString :=
              var_glb_CurrentDate;
            qryDecExtInfo.fieldbyname('EndDate').AsString :=
              var_glb_CurrentDate;
            qryDecExtInfo.fieldbyname('Note_L1').AsString :=
              actOffTimeListPost.Caption;
            qryDecExtInfo.Post;
            Next;
          end;

        end;
      end;
    finally
      qryDecExtInfo.AfterPost := qryDecExtInfoAfterPost;
      qryDecExtInfo.BeforePost := qryDecExtInfoBeforePost;
      qryDecExtInfo.EnableControls;
      UpdateList;
      Free;
      qry.Free;
      CloseMessage;
    end;
  end;

end;

procedure TEmployeeDeeExtinfoF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  MakeMenuItem(FormType, AllClikPop2Click, PopList4Print2);
  try
    qryEmployeeDecExt.DisableControls;
    qryDecExtInfo.DisableControls;
    PopList4Print2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryEmployeeDecExt.EnableControls;
    qryDecExtInfo.EnableControls;
  end;

end;

procedure TEmployeeDeeExtinfoF.AllClikPop2Click(Sender: TObject);
begin
  inherited;
  ppDBPipeline1.RangeBegin := rbCurrentRecord;
  ppDBPipeline1.RangeEnd := reCurrentRecord;
  ppDBPipeline2.RangeBegin := rbCurrentRecord;
  ppDBPipeline2.RangeEnd := reCurrentRecord;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

end.
