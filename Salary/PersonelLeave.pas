{ -----------------------------------------------------------------------------
  Unit Name: PersonelLeave
  Author:    Mahmood
  Purpose:
  History:  Mostafa
  ----------------------------------------------------------------------------- }
unit PersonelLeave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, DBCtrls, Mask,
  ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, ppPrnabl,
  ppCtrls, ppDB, ppDBPipe, ppVar, ppStrtch, ppMemo, Menus,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions, ppDBBDE,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TPersonelLeaveF = class(Ttemplate2MDIF)
    qry_InitForm: TADOQuery;
    qry_InitFormFormType: TSmallintField;
    qry_InitFormFormCaption_L1: TStringField;
    qry_InitFormFormCaption_L2: TStringField;
    qry_InitFormDurationDayActive: TWordField;
    qry_InitFormDurationTimeActive: TWordField;
    qry_InitFormExemptPersonActive: TWordField;
    qry_InitFormSalaryEffectKind: TWordField;
    qry_InitFormKargozinyEffectKind: TWordField;
    qry_InitFormRecalSalaryTypes: TStringField;
    qry_InitFormSalaryKind: TWordField;
    qry_InitFormCoefficientActive: TWordField;
    qry_InitFormAmountActive: TWordField;
    qry_InitFormAmount2Active: TWordField;
    qry_InitFormRecallFormTypes: TSmallintField;
    qry_InitFormUseEndMounthKind: TWordField;
    qry_InitFormAidInfoNo1Active: TWordField;
    qry_InitFormAidInfoDate1Active: TWordField;
    qry_InitFormAidInfo1Caption: TStringField;
    qry_InitFormAidInfoNo2Active: TWordField;
    qry_InitFormAidInfoDate2Active: TWordField;
    qry_InitFormAidInfo2Caption: TStringField;
    qry_InitFormTopicCodeKind: TWordField;
    qry_InitFormDetailCodeKind: TWordField;
    qry_InitFormCTopicCodeKind: TWordField;
    qry_InitFormCTopicCode2Kind: TWordField;
    qry_InitFormDisplayFormType: TWordField;
    qry_InitFormReportFileName1: TStringField;
    qry_InitFormReportFileName2: TStringField;
    qry_InitFormReportFileName3: TStringField;
    qry_InitFormReportFileName4: TStringField;
    qry_InitFormNote_L1: TMemoField;
    qry_InitFormNote_L2: TMemoField;
    qry_InitFormWordDocumentsActive: TWordField;
    qry_InitFormFunctionShow: TWordField;
    qry_InitFormRecalKindClock: TWordField;
    qry_InitFormCalCulateTypeActive: TWordField;
    Panel1: TPanel;
    qry_Master: TADOQuery;
    qry_MasterFormInfoID: TIntegerField;
    qry_MasterFormType: TSmallintField;
    qry_MasterInfoID: TIntegerField;
    qry_MasterInfoName_L1: TStringField;
    qry_MasterInfoName_L2: TStringField;
    qry_MasterPrvInfoID: TIntegerField;
    qry_MasterAmount: TBCDField;
    qry_MasterAmount2: TBCDField;
    qry_MasterCoefficient: TFloatField;
    qry_MasterStandardDays: TFloatField;
    qry_MasterStandardTimes: TFloatField;
    qry_MasterAccDetailCode: TIntegerField;
    qry_MasterCalCulateType: TWordField;
    qry_MasterRecallFormInfoID1: TStringField;
    qry_MasterRecallFormInfoID2: TStringField;
    qry_MasterWordDocuments: TStringField;
    qry_MasterRecalKindClock: TWordField;
    qry_Items: TADOQuery;
    Src_Master: TDataSource;
    src_items: TDataSource;
    qry_ItemsFormInfoID: TIntegerField;
    qry_ItemsPersonelNo: TIntegerField;
    qry_ItemsEmployeeAmount: TBCDField;
    qry_ItemsFirstMounth: TWordField;
    qry_ItemsEndMounth: TWordField;
    qry_ItemsAidNo1: TStringField;
    qry_ItemsAidNo2: TStringField;
    qry_ItemsDayTime: TFloatField;
    qry_ItemsEmployerAmount: TBCDField;
    qry_ItemsFormInfoID2: TIntegerField;
    qry_ItemsAccTopicCode: TIntegerField;
    qry_ItemsAccDetailCode: TIntegerField;
    qry_ItemsAccCTopicCode: TIntegerField;
    qry_ItemsAccCTopicCode2: TIntegerField;
    pnlAccount: TPanel;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    pnlCustomer1: TPanel;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    pnlCustomer2: TPanel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qry_ItemsDayQuntity: TFloatField;
    qryPerson: TADOQuery;
    qry_Items_EmployeeName_L1: TStringField;
    qry_Items_EmployeeName_L2: TStringField;
    qry_ItemsDecExtID: TIntegerField;
    qry_MasterAccTopicCode: TIntegerField;
    qry_MasterAccCTopicCode: TIntegerField;
    qry_MasterAccCTopicCode2: TIntegerField;
    SBnPersonelNo: TSpeedButton;
    actSendToExcel: TAction;
    actSort: TAction;
    pnlAmount: TPanel;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    pnlDayQuntity: TPanel;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    pnlDayTime: TPanel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    pnlAidNo1: TPanel;
    lblAidNo1: TLabel;
    DBEdit12: TDBEdit;
    pnlAidDate1: TPanel;
    lblAidDate1: TLabel;
    DBEdtAidDate1: TDBEdit;
    pnlAidNo2: TPanel;
    lblAidNo2: TLabel;
    DBEdit14: TDBEdit;
    pnlAidDate2: TPanel;
    lblAidDate2: TLabel;
    DbEdtAidDate2: TDBEdit;
    qry_Items_AccTopicName: TStringField;
    qry_Items_AccDetailName: TStringField;
    qry_Items_AccCTopicName: TStringField;
    qry_Items_AccCTopicName2: TStringField;
    PnlRecall: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    edtMaster: TDBEdit;
    DBNavigator1: TDBNavigator;
    pnlDetailCode: TPanel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBText2: TDBText;
    pnlCTopicCode: TPanel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBText3: TDBText;
    pnlCTopicCode2: TPanel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton5: TSpeedButton;
    DBText4: TDBText;
    pnlTopicCode: TPanel;
    Label5: TLabel;
    DBText1: TDBText;
    SpeedButton2: TSpeedButton;
    DBEdit6: TDBEdit;
    ppBDEPipeline1: TppBDEPipeline;
    actPrint: TAction;
    ppReport1: TppReport;
    qry_ItemsAidDate1: TStringField;
    qry_ItemsAidDate2: TStringField;
    Panel4: TPanel;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    LblNote: TLabel;
    DBMmoNote: TDBMemo;
    qry_InitFormNoteActive: TWordField;
    GrpBoxLimit: TGroupBox;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    pnlVisiblePopUp: TMenuItem;
    PersonelDecExtInfo_2F2ColumnsTa: TMenuItem;
    PersonelDecExtInfo_2F2ColumnsSandogh: TMenuItem;
    qry_InitFormLimitMounthActive: TWordField;
    HintName1: TMenuItem;
    PersonelDecExtInfo_2Fmonth3: TMenuItem;
    PersonelDecExtInfo_2Fmonth2: TMenuItem;
    PersonelDecExtInfo_2Fmonth1: TMenuItem;
    ppHeaderBand2: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppFooterBand2: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine2: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    qry_Items_PersonelState: TIntegerField;
    qry_Items_StateName_L1: TStringField;
    DBEdtState: TDBEdit;
    qry_Items_InterdicEndDate: TStringField;
    Panel10: TPanel;
    lblColor2: TLabel;
    Label16: TLabel;
    LblEndDate2: TLabel;
    LblEndDate: TLabel;
    qry_ItemsMinute_: TFloatField;
    DBEdit16: TDBEdit;
    Label12: TLabel;
    actGetExcel: TAction;
    btnGetExcel: TBitBtn;
    qry_ItemsYearID: TIntegerField;
    qry_ItemsStartYear: TIntegerField;
    qry_ItemsEndYear: TIntegerField;
    qryInitQry: TADOQuery;
    qry_ItemsNote_L1: TWideStringField;
    qry_ItemsNote_L2: TWideStringField;
    DBGrid1: TCedarDbgrid;
    actDeleteAll: TAction;
    BitBtn2: TBitBtn;
    actDBGridSelectAll: TAction;
    popDel: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure ToolButton1Click(Sender: TObject);
    procedure qry_MasterAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure src_itemsStateChange(Sender: TObject);
    procedure qry_ItemsAfterInsert(DataSet: TDataSet);
    procedure SBnPersonelNoClick(Sender: TObject);
    procedure qry_ItemsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qry_ItemsAfterPost(DataSet: TDataSet);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qry_ItemsAfterOpen(DataSet: TDataSet);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVrPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblGetPrintDateGetText(Sender: TObject; var Text: String);
    procedure pnlVisiblePopUpClick(Sender: TObject);
    procedure PersonelDecExtInfo_2F2ColumnsTaClick(Sender: TObject);
    procedure qry_MasterAfterOpen(DataSet: TDataSet);
    procedure qry_ItemsBeforePost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure AllClikPopClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure yrcmbx1YearChangeID(Sender: TObject);
    procedure qry_ItemsBeforeEdit(DataSet: TDataSet);
    procedure qry_ItemsBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure actDBGridSelectAllExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    MonthNo: Byte;
    FormType: Byte;
    TopicKind, DetailKind, CTopicKind, CTopicKind2: Byte;
    procedure UpdateList;
    procedure InitForm;
  public
    { Public declarations }
  end;

var
  PersonelLeaveF: TPersonelLeaveF;

implementation

uses DM, StrUtils, GlobalPro, SalaryFunctions, searchCode_ADO, mmessage,
  sort2, Math, GetExcel;

{$R *.dfm}

procedure TPersonelLeaveF.InitForm;
begin
  with qry_InitForm do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := FormType;
    Active := true;
    TopicKind := qry_InitForm.FieldByName('TopicCodeKind').AsInteger;
    DetailKind := qry_InitForm.FieldByName('DetailCodeKind').AsInteger;
    CTopicKind := qry_InitForm.FieldByName('CTopicCodeKind').AsInteger;
    CTopicKind2 := qry_InitForm.FieldByName('CTopicCode2Kind').AsInteger;
    Caption := Caption + '(' + FieldByName('FormCaption_L1').AsString + ')';
    lblCaption.Hint := IntToStr(FormType);
    // -----------------------------Set Label-------------------------------------
    lblAidNo1.Caption := ' شماره ' + FieldByName('AidInfo1Caption').AsString;
    lblAidDate1.Caption := ' تاريخ ' + FieldByName('AidInfo1Caption').AsString;
    lblAidNo2.Caption := ' شماره ' + FieldByName('AidInfo2Caption').AsString;
    lblAidDate2.Caption := ' تاريخ  ' + FieldByName('AidInfo2Caption').AsString;

    // ------------------------------set Panel-------------------------------------
    // PnlRecall.Visible:=FieldByName('RecallFormTypes').AsInteger<>0;
    GrpBoxLimit.Visible := FieldByName('LimitMounthActive').Value = 1;
    DBGrid1.Columns[6].Visible := GrpBoxLimit.Visible;
    DBGrid1.Columns[7].Visible := GrpBoxLimit.Visible;
    pnlAmount.Visible := FieldByName('AmountActive').AsInteger in [2, 3];
    pnlDayQuntity.Visible := FieldByName('DurationDayActive').Value = 1;
    pnlDayTime.Visible := FieldByName('DurationTimeActive').Value = 1;
    pnlAidNo1.Visible := FieldByName('AidInfoNo1Active').Value = 1;
    pnlAidDate1.Visible := FieldByName('AidInfoDate1Active').Value = 1;
    pnlAidNo2.Visible := FieldByName('AidInfoNo2Active').Value = 1;
    pnlAidDate2.Visible := FieldByName('AidInfoDate2Active').Value = 1;
    pnlTopicCode.Visible := FieldByName('TopicCodeKind').Value <> 0;
    pnlDetailCode.Visible := FieldByName('DetailCodeKind').Value <> 0;
    pnlCTopicCode.Visible := FieldByName('CTopicCodeKind').Value <> 0;
    pnlCTopicCode2.Visible := FieldByName('CTopicCode2Kind').Value <> 0;
    pnlAccount.Visible := (pnlDetailCode.Visible) or (pnlTopicCode.Visible) or
      (pnlCTopicCode.Visible) or (pnlCTopicCode2.Visible);

    DBMmoNote.Visible := FieldByName('NoteActive').Value = 1;
    LblNote.Visible := DBMmoNote.Visible;

    // -------------------------------Set_Qry_Master-------------------------------
    with qry_Master do
    begin
      Active := False;
      Parameters.ParamByName('type').Value :=
        qry_InitForm.FieldByName('FormType').AsInteger;
      Active := true;
    end; // with
  end; // with

  edtMaster.DataField := IfThen(optP.primaryLanguage = 0, 'infoname_l1',
    'infoname_l2');
  pnlCustomer1.Visible := optP.LanguageDisplay1;
  pnlCustomer2.Visible := optP.LanguageDisplay2;
  setColumns2(DBGrid1, optP.LanguageDisplay1, '_EmployeeName_L1');
  setColumns2(DBGrid1, optP.LanguageDisplay2, '_EmployeeName_L2');
  setColumns2(DBGrid1, pnlAmount.Visible, 'EmployeeAmount');
  setColumns2(DBGrid1, pnlDayQuntity.Visible, 'DayQuntity');
  setColumns2(DBGrid1, pnlDayTime.Visible, 'DayTime');
  if (not pnlCustomer1.Visible) then
  begin
    Label6.Top := pnlCustomer1.Top;
    DBEdit7.Top := pnlCustomer1.Top;
    SBnPersonelNo.Top := DBEdit7.Top;
  end; // if

end;

procedure TPersonelLeaveF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  UpdateList;
end;

procedure TPersonelLeaveF.UpdateList;
begin
  if qry_Items.State in dseditmodes then
    if get_response('آيا تغيرات ثبت شود.') = mrYes then
      qry_Items.Post;
  with qry_Items Do
  begin
    Active := False;
    Parameters.ParamByName('FormInfo').Value :=
      qry_Master.FieldByName('FormInfoID').AsInteger;
    // Parameters.ParamByName('Mounthno').Value:=MonthNo;
    // Parameters.ParamByName('Years').Value:=yrcmbx1.YearID;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := true;
  end; // if
end;

procedure TPersonelLeaveF.yrcmbx1YearChangeID(Sender: TObject);
begin
  inherited;
  with qry_Items Do
  begin
    Active := False;
    // Parameters.ParamByName('years').Value:=yrcmbx1.YearID;
    if qry_Master.Active then
      Active := true;
  end; // if

end;

procedure TPersonelLeaveF.qry_MasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_Items Do
  begin
    Active := False;
    Parameters.ParamByName('FormInfo').Value :=
      DataSet.FieldByName('FormInfoID').AsInteger;
    Active := true;
  end; // if
end;

procedure TPersonelLeaveF.FormCreate(Sender: TObject);
begin
  inherited;
  qryInitQry.Open;
  if opta.AccOldAvailable then
  begin
    qry_Items.FieldByName('_AccCTopicName2').LookupDataSet :=
      DMf.qry_CTopicCode;
    qry_Items.FieldByName('_AccCTopicName2').KeyFields := 'AccCTopicCode';
    qry_Items.FieldByName('_AccCTopicName2').LookupResultField :=
      'CTopicName_L1';
    qry_Items.FieldByName('_AccCTopicName2').LookupKeyFields := 'CTopicCode';
  end;
  FormType := var_glb_gParam;
  SetLookUpCash(qry_Items);
  InitForm;
  LblEndDate2.Caption := LblEndDate2.Caption + ' تا ' + var_glb_CurrentDate;
end;

procedure TPersonelLeaveF.FormShow(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TPersonelLeaveF.src_itemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Items.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  SBnPersonelNo.Enabled := okPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TPersonelLeaveF.qry_ItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBEdit7.SetFocus;
  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    qry_Master.FieldByName('FormInfoID').AsInteger;
  DataSet.FieldByName('DecExtID').AsInteger :=
    GetANewCode('', 'Pay.PersonelDecExt', 'decExtID');
  DataSet.FieldByName('FirstMounth').AsInteger := MonthNo;
  if (TopicKind = 2) or (TopicKind = 5) then
    qry_Items.FieldByName('AccTopicCode').AsInteger :=
      Calculate_AccCode(1, TopicKind, qry_Master.FieldByName('FormInfoID')
      .AsInteger);
  if (DetailKind = 2) or (DetailKind = 5) then
    qry_Items.FieldByName('AccDetailCode').AsInteger :=
      Calculate_AccCode(2, DetailKind, qry_Master.FieldByName('FormInfoID')
      .AsInteger);
  if (CTopicKind = 2) or (CTopicKind = 5) then
    qry_Items.FieldByName('AccCTopicCode').AsInteger :=
      Calculate_AccCode(3, CTopicKind, qry_Master.FieldByName('FormInfoID')
      .AsInteger);
  if (CTopicKind2 = 2) or (CTopicKind2 = 5) then
    qry_Items.FieldByName('AccCTopicCode2').AsInteger :=
      Calculate_AccCode(4, CTopicKind2, qry_Master.FieldByName('FormInfoID')
      .AsInteger);

end;

procedure TPersonelLeaveF.SBnPersonelNoClick(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;
  if not SBnPersonelNo.Enabled then
    Exit;
  Txt := 'SELECT  PersonelNo, name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2, NationalID, IDNumber '
    + 'FROM         Pay.PersonelInfo  ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'مشخصات پرسنل', Txt,
    ['شماره پرسنل', 'نام زبان1', 'نام زبان2', ' نام خانوادگي زبان1',
    'نام خانوادگي زبان2', 'نام پدر زبان1', 'نام پدر زبان', 'شماره شناسنامه',
    'كد ملي'], Results, [10, 100, 100, 100, 100, 100, 100, 100, 10,
    50], alLeft);
  if s then
  begin
    if not(qry_Items.State in dseditmodes) then
      qry_Items.edit;
    qry_Items['PersonelNo'] := Results[0];
  end; // if
end;

procedure TPersonelLeaveF.qry_ItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('DeleteLevelID').AsInteger) then
    Abort;
  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TPersonelLeaveF.qry_ItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('EditLevelID').AsInteger) then
    Abort
end;

procedure TPersonelLeaveF.qry_ItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not CheckUserlevel(qryInitQry.FieldByName('ADDLevelID').AsInteger) then
    Abort;
end;

procedure TPersonelLeaveF.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 1, False, IntToStr(FormType));
end;

procedure TPersonelLeaveF.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TPersonelLeaveF.qry_ItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TPersonelLeaveF.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    SBnPersonelNo.Click;
end;

procedure TPersonelLeaveF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPersonelLeaveF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Items);
end;

procedure TPersonelLeaveF.actSearch_Execute(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;

begin
  inherited;
  Txt := ' SELECT     PersonelNo, PersonelName_L1, EmployeeAmount ' +
    ' FROM Pay.PersonelDecExtInfo ' + ' WHERE     FormInfoID = ' +
    qry_Master.FieldByName('FormInfoID').AsString;
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'مشخصات پرسنل', Txt,
    ['شماره پرسنل', 'نام خانوادگي ', 'مبلغ'], Results, [100, 100, 100], alLeft);
  if s then
    qry_Items.Locate('PersonelNo', Results[0], []);
  // search2F.ShowSearch(qry_Items);

end;

procedure TPersonelLeaveF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccTopicCode').AsString :=
    SpeedButtonTopicCode(qry_Items.FieldByName('AccTopicCode').AsString)
end;

procedure TPersonelLeaveF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccDetailCode').AsString :=
    SpeedButtonDetailCode(qry_Items.FieldByName('AccDetailCode').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger)
end;

procedure TPersonelLeaveF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccCTopicCode').AsString :=
    SpeedButtonCTopicCode(qry_Items.FieldByName('AccCTopicCode').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger)
end;

procedure TPersonelLeaveF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccCTopicode2').AsString :=
    SpeedButtonCTopicCode2(qry_Items.FieldByName('AccCTopicode2').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger)
end;

procedure TPersonelLeaveF.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton2.Click;
end;

procedure TPersonelLeaveF.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click;

end;

procedure TPersonelLeaveF.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton4.Click;
end;

procedure TPersonelLeaveF.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton5.Click;
end;

procedure TPersonelLeaveF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT     FormInfoID,InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo ' + 'WHERE (FormType = ' + qry_InitForm.FieldByName
    ('RecallFormTypes').AsString + ') ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' سطح‏هاي قبلي  ', Txt,
    ['', 'كد', 'نام 1', 'نام 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qry_Master.Locate('FormInfoID', Results[0], []);
end;

procedure TPersonelLeaveF.ppLabel9GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' گزارش اطلاعات ' + edtMaster.Text + #10#13;
end;

procedure TPersonelLeaveF.actPrintExecute(Sender: TObject);
begin
  inherited;
  // PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  MakeMenuItem(FormType, AllClikPopClick, PopList4Print);
  try
    qry_Master.DisableControls;
    qry_Items.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qry_Master.EnableControls;
    qry_Items.EnableControls;
  end;

end;

procedure TPersonelLeaveF.qry_ItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := 'تعداد=' + IntToStr(DataSet.RecordCount);
  StatusBar1.Panels[2].Text := 'م=' +
    CurrToStrF(CalcSumFileds(DataSet.FieldByName('EmployeeAmount')),
    ffCurrency, 0);
  StatusBar1.Panels[1].Text := 'ر=' +
    CurrToStr(CalcSumFileds(DataSet.FieldByName('DayQuntity')));
  StatusBar1.Panels[0].Text := 'س=' +
    CurrToStr(CalcSumFileds(DataSet.FieldByName('DayTime')));
end;

procedure TPersonelLeaveF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Self.Caption + '‏';
end;

procedure TPersonelLeaveF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPersonelLeaveF.ppSystemVrPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPersonelLeaveF.ppLblGetPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TPersonelLeaveF.pnlVisiblePopUpClick(Sender: TObject);
begin
  inherited;
  try
    qry_Items.DisableControls;
    if (pnlDayQuntity.Visible) or (pnlDayTime.Visible) then
      InitReportFile(ppReport1, 'PersonelDecExtInfo_2F2Columns2')
    else
      InitReportFile(ppReport1, 'PersonelDecExtInfo_2F2Columns');
  finally
    qry_Items.EnableControls;
  end; // try
end;

procedure TPersonelLeaveF.PersonelDecExtInfo_2F2ColumnsTaClick(Sender: TObject);
begin
  inherited;
  try
    qry_Items.DisableControls;
    qry_Items.Sort := (Sender as TMenuItem).Hint;
    InitReportFile(ppReport1, (Sender as TMenuItem).Name);
  finally
    qry_Items.EnableControls;
  end; // try
end;

procedure TPersonelLeaveF.qry_MasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  PnlRecall.Visible := DataSet.RecordCount > 0

end;

procedure TPersonelLeaveF.qry_ItemsBeforePost(DataSet: TDataSet);
var
  PersonelNo, DecExtID, Count: Integer;
  cloned: TADOQuery;
begin
  inherited;
  qry_Items.FieldByName('FirstMounth').Value := 0;
  qry_Items.FieldByName('EndMounth').Value := 0;
  cloned := TADOQuery.Create(Self);
  Count := 0;
  DecExtID := qry_Items.FieldByName('DecExtID').AsInteger;
  PersonelNo := qry_Items.FieldByName('PersonelNo').AsInteger;
  With cloned do
  begin
    Clone(qry_Items, ltReadOnly);
    First;
    while not Eof do
    begin
      if (FieldByName('PersonelNo').AsInteger = PersonelNo) and
        (FieldByName('DecExtID').AsInteger <> DecExtID) then
        inc(Count);
      Next;
    end; // while
  end; // With
  if Count > 0 then
    if get_response('براي اين پرسنل ' + IntToStr(Count) +
      ' مورد ديگر ثبت شده آيا اين مورد هم اضافه شود؟') = mrNo then
      Abort;
  cloned.Free;
end;

procedure TPersonelLeaveF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if (Sender as TCedarDbgrid).DataSource.DataSet.FieldByName('_PersonelState')
    .AsInteger >= 50 then
    DBGrid1.Canvas.Font.Color := lblColor2.Color
  else if (Sender as TCedarDbgrid).DataSource.DataSet.FieldByName
    ('_InterdicEndDate').AsString < var_glb_CurrentDate then
    DBGrid1.Canvas.Font.Color := LblEndDate.Color;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TPersonelLeaveF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Items.FieldByName('PersonelNo'));
end;

procedure TPersonelLeaveF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);

end;

procedure TPersonelLeaveF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  popDel.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPersonelLeaveF.DBEdit7Exit(Sender: TObject);
begin
  inherited;

  if (TopicKind = 1) or (TopicKind = 4) or (TopicKind = 6) then
    qry_Items.FieldByName('AccTopicCode').AsInteger :=
      Calculate_AccCode(1, TopicKind, qry_Items.FieldByName('PersonelNo')
      .AsInteger);
  if (DetailKind = 1) or (DetailKind = 4) or (DetailKind = 6) then
    qry_Items.FieldByName('AccDetailCode').AsInteger :=
      Calculate_AccCode(2, DetailKind, qry_Items.FieldByName('PersonelNo')
      .AsInteger);
  if (CTopicKind = 1) or (CTopicKind = 4) or (CTopicKind = 6) then
    qry_Items.FieldByName('AccCTopicCode').AsInteger :=
      Calculate_AccCode(3, CTopicKind, qry_Items.FieldByName('PersonelNo')
      .AsInteger);
  if (CTopicKind2 = 1) or (CTopicKind2 = 4) or (CTopicKind2 = 6) then
    qry_Items.FieldByName('AccCTopicCode2').AsInteger :=
      Calculate_AccCode(4, CTopicKind2, qry_Items.FieldByName('PersonelNo')
      .AsInteger);

end;

procedure TPersonelLeaveF.actDBGridSelectAllExecute(Sender: TObject);
begin
  inherited;
    DBGridSelectAll(DBGrid1);
end;

procedure TPersonelLeaveF.actDeleteAllExecute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي حذف سطرهاي انتخاب شده مطمئن هستيد؟') <> mrYes then
      Exit;
  with DBGrid1.DataSource.DataSet do
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      GotoBookmark((DBGrid1.SelectedRows.Items[i]));
      if s <> '' then
        s := s + ',';
      s := s + FieldByName('DecExtID').AsString;
    end;
  If s = '' then
    Exit;
  with DMf.qryTMPTMP do
  begin
    Active := False;
    SQL.Text := 'Delete Pay.PersonelDecExt  WHERE DecExtID IN (' + s + ')';
    try
      BigMessage(IntToStr(ExecSQL) + ' حذف  شد.', 2);
      Active := False;
      qry_Items.Active := False;
      qry_Items.Open;
    except
      Warn('اشكال در حذف‌');
    end; // try
  end; // with
end;

procedure TPersonelLeaveF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qry_Items)
end;

end.
