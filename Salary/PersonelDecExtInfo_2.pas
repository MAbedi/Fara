{ // Mostafa }
unit PersonelDecExtInfo_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, ToolWin, DBCtrls, Mask,
  ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, ppPrnabl,
  ppCtrls, ppDB, ppDBPipe, ppVar, ppStrtch, ppMemo, Menus, ppParameter,
  MyComboBoxUnit, ppDesignLayer, System.ImageList, System.Actions, ppDBBDE;

type
  TPersonelDecExtInfo_2F = class(Ttemplate2MDIF)
    qry_InitForm: TADOQuery;
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
    pnlCustomer1: TPanel;
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
    actSendToExcel: TAction;
    actSort: TAction;
    pnlAmount: TPanel;
    edtEmployeeAmount: TDBEdit;
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
    btnAccDetailCode: TSpeedButton;
    DBText2: TDBText;
    pnlCTopicCode: TPanel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    btnAccCTopicCode: TSpeedButton;
    DBText3: TDBText;
    pnlCTopicCode2: TPanel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    btnAccCTopicCode2: TSpeedButton;
    DBText4: TDBText;
    pnlTopicCode: TPanel;
    Label5: TLabel;
    DBText1: TDBText;
    btnAccTopicCode: TSpeedButton;
    DBEdit6: TDBEdit;
    ppBDEPipeline1: TppBDEPipeline;
    actPrint: TAction;
    ppReport1: TppReport;
    qry_ItemsAidDate1: TStringField;
    qry_ItemsAidDate2: TStringField;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    LblNote: TLabel;
    DBMmoNote: TDBMemo;
    GrpBoxLimit: TGroupBox;
    DBEdit11: TDBEdit;
    edtEndMounth: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    pnlVisiblePopUp: TMenuItem;
    PersonelDecExtInfo_2F2ColumnsTa: TMenuItem;
    PersonelDecExtInfo_2F2ColumnsSandogh: TMenuItem;
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
    qry_Items_InterdicEndDate: TStringField;
    Panel10: TPanel;
    lblColor2: TLabel;
    Label16: TLabel;
    LblEndDate2: TLabel;
    LblEndDate: TLabel;
    actDeleteAll: TAction;
    PopMnuOther: TPopupMenu;
    N1: TMenuItem;
    BitBtn6: TBitBtn;
    qry_ItemsState: TWordField;
    actFilter: TAction;
    actFilter1: TMenuItem;
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
    Excel1: TMenuItem;
    qry_Items_radif: TIntegerField;
    qry_ItemsHasFun: TIntegerField;
    LblHasFun: TLabel;
    Label17: TLabel;
    PnlPaymentLoan: TPanel;
    Label13: TLabel;
    DBEdit16: TDBEdit;
    qry_ItemsPaymentLoan: TBCDField;
    qry_MasterPayMentActive: TWordField;
    PnlProject: TPanel;
    Label7: TLabel;
    DBEdit17: TDBEdit;
    btnFormInfoID2: TSpeedButton;
    DBEdit18: TDBEdit;
    qryLookupPrj: TADOQuery;
    qry_Items_projectname_L1: TStringField;
    qry_ItemsProcCode: TIntegerField;
    qry_ItemsEarthCode: TIntegerField;
    Panel5: TPanel;
    Label12: TLabel;
    DBEdtState: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    btnPersonelNo: TSpeedButton;
    ChkState: TDBCheckBox;
    DBEdit8: TDBEdit;
    Edt_EmployeeName_L2: TDBEdit;
    pnlEarthCode: TPanel;
    lblEarthCode: TLabel;
    btnEarthCode: TSpeedButton;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    pnlProcCode: TPanel;
    lblProcCode: TLabel;
    btnProcCode: TSpeedButton;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    qryProcCode: TADOQuery;
    qryEarthCode: TADOQuery;
    qry_Items_ProcCode: TStringField;
    qry_Items_EarthCode: TStringField;
    actChanger: TAction;
    N2: TMenuItem;
    qry_ItemsYearID: TIntegerField;
    edtEndYear: TDBEdit;
    Label8: TLabel;
    DBEdit23: TDBEdit;
    Label18: TLabel;
    qry_ItemsStartYear: TIntegerField;
    qry_ItemsEndYear: TIntegerField;
    yrcmbx1: TYearComboBox;
    qry_ItemsSituation: TWordField;
    actSetSelectedSituation0: TAction;
    actSetSelectedSituation1: TAction;
    actEndMounth: TAction;
    actEndYear: TAction;
    actSMS: TAction;
    qry_ItemsMobile: TStringField;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    qry_ItemsLastUser: TWideStringField;
    qry_ItemsFirstUser: TWideStringField;
    txtLastUser: TDBText;
    txtFirstUser: TDBText;
    qry_ItemsNote_L1: TWideStringField;
    qry_ItemsNote_L2: TWideStringField;
    pnlEmployerAmount: TPanel;
    Label19: TLabel;
    edtEmployerAmount: TDBEdit;
    qry_MasterEmployerAmountActive: TWordField;
    qry_ItemsFirstMounth: TIntegerField;
    qry_ItemsEndMounth: TIntegerField;
    actDBGridSelectAll: TAction;
    N3: TMenuItem;
    procedure ToolButton1Click(Sender: TObject);
    procedure qry_MasterAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure src_itemsStateChange(Sender: TObject);
    procedure qry_ItemsAfterInsert(DataSet: TDataSet);
    procedure btnPersonelNoClick(Sender: TObject);
    procedure qry_ItemsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qry_ItemsAfterPost(DataSet: TDataSet);
    procedure DBEdit_All_KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure btnAccTopicCodeClick(Sender: TObject);
    procedure btnAccDetailCodeClick(Sender: TObject);
    procedure btnAccCTopicCodeClick(Sender: TObject);
    procedure btnAccCTopicCode2Click(Sender: TObject);
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit7Exit(Sender: TObject);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure qry_ItemsCalcFields(DataSet: TDataSet);
    procedure btnFormInfoID2Click(Sender: TObject);
    procedure btnProcCodeClick(Sender: TObject);
    procedure btnEarthCodeClick(Sender: TObject);
    procedure actChangerExecute(Sender: TObject);
    procedure qry_ItemsPersonelNoChange(Sender: TField);
    procedure yrcmbx1YearChangeID(Sender: TObject);
    procedure qry_ItemsBeforeEdit(DataSet: TDataSet);
    procedure actSetSelectedSituation0Execute(Sender: TObject);
    procedure actSetSelectedSituation1Execute(Sender: TObject);
    procedure actEndMounthExecute(Sender: TObject);
    procedure actEndYearExecute(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure ppLabel2GetText(Sender: TObject; var Text: string);
    procedure qry_ItemsAfterEdit(DataSet: TDataSet);
    procedure actDBGridSelectAllExecute(Sender: TObject);
  private
    MonthNo: Byte;
    FormType: Byte;
    TopicKind, DetailKind, CTopicKind, CTopicKind2: Byte;
    procedure UpdateList;
    procedure InitForm;
    procedure UPDATEend(FiledName: String);
  public
    { Public declarations }
  end;

var
  PersonelDecExtInfo_2F: TPersonelDecExtInfo_2F;

implementation

uses DM, StrUtils, GlobalPro, SalaryFunctions, searchCode_ADO, mmessage,
  sort2, Math, filter_ADO, FilterClass_ADO, GetExcel, Changer, infoSMS,
  FaraConsts;
{$R *.dfm}

procedure TPersonelDecExtInfo_2F.InitForm;
begin
  // add2log('Start initForm!', var_glb_Debug);
  with qry_InitForm do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := FormType;
    // add2log('Start initForm Active := true;!', var_glb_Debug);
    Active := true;
    TopicKind := qry_InitForm.FieldByName('TopicCodeKind').AsInteger;
    DetailKind := qry_InitForm.FieldByName('DetailCodeKind').AsInteger;
    CTopicKind := qry_InitForm.FieldByName('CTopicCodeKind').AsInteger;
    CTopicKind2 := qry_InitForm.FieldByName('CTopicCode2Kind').AsInteger;
    Caption := Caption + '(' + FieldByName('FormCaption_L1').AsString + ')' +
      IntToStr(FormType);
    // -----------------------------Set Label-------------------------------------
    lblAidNo1.Caption := ' شماره ' + FieldByName('AidInfo1Caption').AsString;
    lblAidDate1.Caption := ' تاريخ ' + FieldByName('AidInfo1Caption').AsString;
    lblAidNo2.Caption := ' شماره ' + FieldByName('AidInfo2Caption').AsString;
    lblAidDate2.Caption := ' تاريخ  ' + FieldByName('AidInfo2Caption').AsString;

    // ------------------------------set Panel-------------------------------------
    // PnlRecall.Visible:=FieldByName('RecallFormTypes').AsInteger<>0;
    GrpBoxLimit.Visible := FieldByName('LimitMounthActive').Value = 1;

    // add2log('Start initForm1!', var_glb_Debug);
    DBGrid1.Columns[6].Visible := GrpBoxLimit.Visible;
    DBGrid1.Columns[7].Visible := GrpBoxLimit.Visible;
    // add2log('Start initForm2!', var_glb_Debug);

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
    ChkState.Visible := FieldByName('DecExtStateActive').AsInteger = 1;
    PnlProject.Visible := FieldByName('FormInfo4Function').AsInteger > 0;

    pnlProcCode.Visible := FieldByName('EarthProceedsActivate').AsInteger
      in [2, 3];
    pnlEarthCode.Visible := FieldByName('EarthProceedsActivate').AsInteger
      in [1, 3];
    // add2log('Set Visible initForm!', var_glb_Debug);
    lblProcCode.Caption := 'كد ' + FieldByName('ProcName').AsString;
    lblEarthCode.Caption := 'كد ' + FieldByName('EarthName').AsString;

    yrcmbx1.YearsParam := APPBank.Year;
    yrcmbx1.YearID := APPBank.Year;

    // add2log('Set_Qry_Master initForm!', var_glb_Debug);
    // -------------------------------Set_Qry_Master-------------------------------
    with qry_Master do
    begin
      Active := False;
      Parameters.ParamByName('type').Value :=
        qry_InitForm.FieldByName('FormType').AsInteger;
      Active := true;
    end; // with
  end; // with
  // add2log('open Qry_Master initForm!', var_glb_Debug);

  edtMaster.DataField := IfThen(optP.primaryLanguage = 0, 'infoname_l1',
    'infoname_l2');
  pnlCustomer1.Visible := optP.LanguageDisplay1;
  Edt_EmployeeName_L2.Visible := optP.LanguageDisplay2;
  // add2log('Befor setColumns  initForm!', var_glb_Debug);

  setColumns(DBGrid1, '#02', optP.LanguageDisplay1);
  setColumns(DBGrid1, '#03', optP.LanguageDisplay2);
  setColumns(DBGrid1, '#04', pnlAmount.Visible);
  setColumns(DBGrid1, '#05', pnlDayQuntity.Visible);
  setColumns(DBGrid1, '#06', pnlDayTime.Visible);
  // add2log('After setColumns  initForm!', var_glb_Debug);
  if (not pnlCustomer1.Visible) then
  begin
    Label6.Top := pnlCustomer1.Top;
    DBEdit7.Top := pnlCustomer1.Top;
    btnPersonelNo.Top := DBEdit7.Top;
  end; // if
  // add2log('Finish initForm!', var_glb_Debug);
end;

procedure TPersonelDecExtInfo_2F.ToolButton1Click(Sender: TObject);
var
  DecExtID: Integer;
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  DecExtID := qry_Items.FieldByName('DecExtID').AsInteger;
  UpdateList;
  qry_Items.Locate('DecExtID', DecExtID, [])
end;

procedure TPersonelDecExtInfo_2F.UpdateList;
begin
  if qry_Items.State in dseditmodes then
    if get_response('آيا تغيرات ثبت شود.') = mrYes then
      qry_Items.Post;
  with qry_Items Do
  begin
    Active := False;
    Parameters.ParamByName('FormInfo').Value :=
      qry_Master.FieldByName('FormInfoID').AsInteger;
    Parameters.ParamByName('OfficeFrom').Value :=
      qryPerson.Parameters.ParamByName('OfficeFrom').Value;
    Parameters.ParamByName('OfficeTo').Value := qryPerson.Parameters.ParamByName
      ('OfficeTo').Value;

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    if not(FormType in [52, 35, 136]) then
    begin
      Parameters.ParamByName('FirstMounth').Value := MonthNo;
      Parameters.ParamByName('EndMounth').Value := MonthNo;
      Parameters.ParamByName('Mounth').Value := MonthNo;
      Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    end
    else
    begin
      Parameters.ParamByName('Mounth').Value := 1;
    end;
    actDeleteAll.Visible := checkArchiveID(MonthNo, qry_Items);
    Active := true;
  end; // if
end;

procedure TPersonelDecExtInfo_2F.yrcmbx1YearChangeID(Sender: TObject);
begin
  inherited;
  with qry_Items Do
  begin
    Active := False;
    Parameters.ParamByName('years').Value := yrcmbx1.YearID;
    if qry_Master.Active then
      Active := true;
  end; // if

end;

procedure TPersonelDecExtInfo_2F.qry_MasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  PnlPaymentLoan.Visible := DataSet.FieldByName('PayMentActive').AsInteger = 1;
  pnlEmployerAmount.Visible := qry_MasterEmployerAmountActive.AsInteger = 1;
  setColumns2(DBGrid1, pnlEmployerAmount.Visible, 'EmployerAmount');
  UpdateList;
end;

procedure TPersonelDecExtInfo_2F.FormCreate(Sender: TObject);
begin
  inherited;
  with qryPerson Do
  begin
    Parameters.ParamByName('CompanyCodeFrom').DataType := ftInteger;
    Parameters.ParamByName('CompanyCodeTo').DataType := ftInteger;
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
  end;
  add2log(optA.AccOldAvailable.ToString(), var_glb_Debug);
  if optA.AccOldAvailable then
  begin
    qry_Items.FieldByName('_AccCTopicName2').LookupDataSet :=
      DMf.qry_CTopicCode;
    qry_Items.FieldByName('_AccCTopicName2').KeyFields := 'AccCTopicCode';
    qry_Items.FieldByName('_AccCTopicName2').LookupResultField :=
      'CTopicName_L1';
    qry_Items.FieldByName('_AccCTopicName2').LookupKeyFields := 'CTopicCode';
    // qry_Items.FieldByName('_CTopicName3').LookupDataSet:=DMf.qry_CTopicCode;
    // qry_Items.FieldByName('_CTopicName3').KeyFields:='AccCTopicCode';
    // qry_Items.FieldByName('_CTopicName3').LookupResultField:='CTopicName_L1';
    // qry_Items.FieldByName('_CTopicName3').LookupKeyFields:='CTopicCode';
  end;

  // SetLookUpCash(qry_Items);

  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := true;
  GetYearMounth(MonthNo);

  if not(FormType in [52, 35, 136]) then
  begin
    qry_Items.SQL.Add
      ('AND (FirstMounth <= :FirstMounth ) AND (EndMounth >= :EndMounth) ');
    qry_Items.SQL.Add('AND ( :years between  StartYear and  EndYear  ) ');
  end
  else
    qry_Items.SQL.Add('AND ( :years >0  ) ');
  ToolBar1.Visible := not(FormType in [52, 35, 136]);
  yrcmbx1.Visible := ToolBar1.Visible;

  qry_Items.SQL.Add('order by DecExtID,PersonelNo');
  // add2log('Befor init!', var_glb_Debug);
  InitForm;
  LblEndDate2.Caption := LblEndDate2.Caption + ' تا ' + var_glb_CurrentDate;
end;

procedure TPersonelDecExtInfo_2F.FormShow(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TPersonelDecExtInfo_2F.src_itemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Items.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  btnPersonelNo.Enabled := okPanel.Visible;
  btnFormInfoID2.Enabled := okPanel.Visible;
  btnEarthCode.Enabled := okPanel.Visible;
  btnProcCode.Enabled := okPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TPersonelDecExtInfo_2F.qry_ItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TPersonelDecExtInfo_2F.qry_ItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBEdit7.SetFocus;
  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    qry_Master.FieldByName('FormInfoID').AsInteger;
  DataSet.FieldByName('DecExtID').AsInteger :=
    GetANewCode('', 'Pay.PersonelDecExt', 'decExtID');
  DataSet.FieldByName('FirstMounth').AsInteger := MonthNo;

  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  DataSet.FieldByName('StartYear').AsInteger := yrcmbx1.YearID;
  DataSet.FieldByName('EndYear').AsInteger := yrcmbx1.YearID;

  if ToolBar1.Visible then
    DataSet.FieldByName('EndMounth').AsInteger := MonthNo;
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

procedure TPersonelDecExtInfo_2F.btnPersonelNoClick(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 8] of String;
begin
  inherited;
  Txt := 'SELECT  PersonelNo, name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2, IDNumber, NationalID '
    + 'FROM Pay.PersonelInfo where  (PersonelNo IN  (' +
    'SELECT PersonelInfo.PersonelNo  FROM Pay.Interdicts INNER JOIN ' +
    'Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN '
    + 'Pay.FormsInfo ON PersonelInfo.PersonelState = FormsInfo.FormInfoID LEFT OUTER JOIN '
    + 'Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID '
    + 'WHERE (InterdicType = 0 ) AND  (Interdicts.State < 50) AND (FormsInfoOffice.InfoID BETWEEN '
    + VarToStr(qryPerson.Parameters.ParamByName('OfficeFrom').Value) + ' AND ' +
    VarToStr(qryPerson.Parameters.ParamByName('OfficeTo').Value) + ')';
  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    Txt := Txt + ' AND (Interdicts.subcompanyCode BETWEEN ' +
      FcompanyCodeLogin.ToString + ' AND ' + FcompanyCodeLogin.ToString + ') ';
  end;
  Txt := Txt + '))';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'مشخصات پرسنل', Txt,
    ['شماره پرسنل', 'نام ', 'Name', ' نام خانوادگي ', 'LastName', 'نام پدر ',
    'FatherName', 'شماره شناسنامه', 'كد ملي'], Results,
    [10, 100, 100, 100, 100, 100, 100, 100, 10, 50], alLeft);
  if s then
  begin
    if not(qry_Items.State in dseditmodes) then
      qry_Items.edit;
    qry_Items['PersonelNo'] := Results[0];
  end; // if
end;

procedure TPersonelDecExtInfo_2F.qry_ItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not EditSituation(DataSet) then
    Abort;

  if not FunctionDelete(qry_ItemsPersonelNo.AsInteger, MonthNo) then
    Abort;

  if get_response('آيا از حذف مطمئن هستيد.') <> mrYes then
    Abort;
end;

procedure TPersonelDecExtInfo_2F.qry_ItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not EditSituation(DataSet) then
    Abort;

  if not(FormType in [32]) then
    if not FunctionDelete(qry_ItemsPersonelNo.AsInteger, MonthNo) then
      Abort;

end;

procedure TPersonelDecExtInfo_2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, False, IntToStr(FormType));
end;

procedure TPersonelDecExtInfo_2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TPersonelDecExtInfo_2F.qry_ItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('ثبت شد.', 1);
end;

procedure TPersonelDecExtInfo_2F.DBEdit_All_KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    TSpeedButton(FindComponent('btn' + (Sender as TDBEdit).DataField)).Click
end;

procedure TPersonelDecExtInfo_2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPersonelDecExtInfo_2F.actSetSelectedSituation0Execute
  (Sender: TObject);
begin
  inherited;
  SetSelectedSituation(DBGrid1, nil, 0, 'pay.PersonelDecExt', 'DecExtID',
    qry_InitForm)
end;

procedure TPersonelDecExtInfo_2F.actSetSelectedSituation1Execute
  (Sender: TObject);
begin
  inherited;
  SetSelectedSituation(DBGrid1, nil, 1, 'pay.PersonelDecExt', 'DecExtID',
    qry_InitForm)
end;

procedure TPersonelDecExtInfo_2F.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qry_Items, 'Mobile')
end;

procedure TPersonelDecExtInfo_2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Items);
end;

procedure TPersonelDecExtInfo_2F.actSearch_Execute(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;

begin
  inherited;
  Txt := ' SELECT PersonelNo, PersonelName_L1, EmployeeAmount ' +
    ' FROM Pay.PersonelDecExtInfo ' + ' WHERE     FormInfoID = ' +
    qry_Master.FieldByName('FormInfoID').AsString;
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'مشخصات پرسنل', Txt,
    ['شماره پرسنل', 'نام خانوادگي ', 'مبلغ'], Results, [100, 100, 100], alLeft);
  if s then
    qry_Items.Locate('PersonelNo', Results[0], []);
  // search2F.ShowSearch(qry_Items);

end;

procedure TPersonelDecExtInfo_2F.btnAccTopicCodeClick(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccTopicCode').AsString :=
    SpeedButtonTopicCode(qry_Items.FieldByName('AccTopicCode').AsString)
end;

procedure TPersonelDecExtInfo_2F.btnAccDetailCodeClick(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccDetailCode').AsString :=
    SpeedButtonDetailCode(qry_Items.FieldByName('AccDetailCode').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger)
end;

procedure TPersonelDecExtInfo_2F.btnAccCTopicCodeClick(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccCTopicCode').AsString :=
    SpeedButtonCTopicCode(qry_Items.FieldByName('AccCTopicCode').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger)
end;

procedure TPersonelDecExtInfo_2F.btnAccCTopicCode2Click(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccCTopicode2').AsString :=
    SpeedButtonCTopicCode2(qry_Items.FieldByName('AccCTopicode2').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger)
end;

procedure TPersonelDecExtInfo_2F.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID,InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo WHERE (FormType = ' +
    IntToStr(qry_Master.Parameters.ParamByName('type').Value) + ') ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' سطح‏هاي قبلي  ', Txt,
    ['', 'كد', 'نام 1', 'نام 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qry_Master.Locate('FormInfoID', Results[0], []);
end;

procedure TPersonelDecExtInfo_2F.ppLabel1GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := IntToStr(qry_ItemsFirstMounth.AsInteger);
end;

procedure TPersonelDecExtInfo_2F.ppLabel2GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := IntToStr(qry_ItemsEndMounth.AsInteger);
end;

procedure TPersonelDecExtInfo_2F.ppLabel9GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' گزارش اطلاعات ' + edtMaster.Text + #10#13;
end;

procedure TPersonelDecExtInfo_2F.actPrintExecute(Sender: TObject);
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

procedure TPersonelDecExtInfo_2F.qry_ItemsAfterOpen(DataSet: TDataSet);
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

procedure TPersonelDecExtInfo_2F.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Self.Caption + '‏';
end;

procedure TPersonelDecExtInfo_2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPersonelDecExtInfo_2F.ppSystemVrPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPersonelDecExtInfo_2F.ppLblGetPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TPersonelDecExtInfo_2F.pnlVisiblePopUpClick(Sender: TObject);
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

procedure TPersonelDecExtInfo_2F.PersonelDecExtInfo_2F2ColumnsTaClick
  (Sender: TObject);
begin
  inherited;
  try
    qry_Items.DisableControls;
    qry_Items.Sort := (Sender as TMenuItem).Hint;
    InitReportFile(ppReport1, (Sender as TMenuItem).name);
  finally
    qry_Items.EnableControls;
  end; // try
end;

procedure TPersonelDecExtInfo_2F.qry_MasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  PnlRecall.Visible := DataSet.RecordCount > 0

end;

procedure TPersonelDecExtInfo_2F.qry_ItemsBeforePost(DataSet: TDataSet);
var
  PersonelNo, DecExtID, Count: Integer;
  cloned: TADOQuery;
begin
  inherited;
  if not FunctionDelete(qry_ItemsPersonelNo.AsInteger, MonthNo) then
    Abort;

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

  if not chkPersonelState(qry_Items_PersonelState.AsInteger) then
    Abort;

end;

procedure TPersonelDecExtInfo_2F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Items.FieldByName('PersonelNo'));
end;

procedure TPersonelDecExtInfo_2F.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);

end;

procedure TPersonelDecExtInfo_2F.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if ((Sender as TDBGrid).DataSource.DataSet.State in dseditmodes) then
    Exit;
  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('_PersonelState')
    .AsInteger >= 50 then
    DBGrid1.Canvas.Font.Color := lblColor2.Color
  else if (Sender as TDBGrid).DataSource.DataSet.FieldByName('_InterdicEndDate')
    .AsString < var_glb_CurrentDate then
    DBGrid1.Canvas.Font.Color := LblEndDate.Color
  else if (Sender as TDBGrid).DataSource.DataSet.FieldByName('HasFun')
    .AsInteger = 0 then
    DBGrid1.Canvas.Font.Color := LblHasFun.Color;

  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TPersonelDecExtInfo_2F.DBEdit7Exit(Sender: TObject);
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

procedure TPersonelDecExtInfo_2F.actDBGridSelectAllExecute(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1);
end;

procedure TPersonelDecExtInfo_2F.actDeleteAllExecute(Sender: TObject);
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
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'Delete Pay.PersonelDecExt WHERE DecExtID IN (' + s + ')';
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

procedure TPersonelDecExtInfo_2F.BitBtn6Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPersonelDecExtInfo_2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 FROM  Pay.FormsInfo  '
        + ' WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT  0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        with qryPerson do
        begin
          Active := False;
          Parameters.ParamByName('OfficeFrom').Value :=
            GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
          Parameters.ParamByName('OfficeTo').Value :=
            GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
          Active := true;
        end; // with
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // end
end;

procedure TPersonelDecExtInfo_2F.Excel1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Items.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qry_Items);
  finally
    qry_Items.AfterPost := qry_ItemsAfterPost;
  end;

end;

procedure TPersonelDecExtInfo_2F.qry_ItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
end;

procedure TPersonelDecExtInfo_2F.btnFormInfoID2Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + ' WHERE  FormType = ' + qry_InitForm.FieldByName
    ('FormInfo4Function').AsString;
  b := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' كد و سطح عنوان قبلي ', Txt,
    ['سريال', 'كد', 'عنوان 1', 'عنوان 2'], Results, [50, 50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Items.State in dseditmodes) then
      qry_Items.edit;
    qry_Items.FieldByName('FormInfoID2').AsInteger := StrToInt(Results[0]);
  end; // if
end;

procedure TPersonelDecExtInfo_2F.btnProcCodeClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcSalary, lblProcCode.Caption,
    'SELECT InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo WHERE (FormType = 67) ', ['كد', 'عنوان', 'ProcCode'],
    Results, [20, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Items.State in dseditmodes) then
      qry_Items.edit;
    qry_Items.FieldByName('ProcCode').AsString := Results[0];
  end;
end;

procedure TPersonelDecExtInfo_2F.btnEarthCodeClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcSalary, lblEarthCode.Caption,
    'SELECT      InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo WHERE     (FormType = 69) ',
    ['كد', 'عنوان', 'EarthCode'], Results, [20, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Items.State in dseditmodes) then
      qry_Items.edit;
    qry_Items.FieldByName('EarthCode').AsString := Results[0];
  end;

end;

procedure TPersonelDecExtInfo_2F.actEndMounthExecute(Sender: TObject);
begin
  inherited;
  UPDATEend('EndMounth')
end;

procedure TPersonelDecExtInfo_2F.actEndYearExecute(Sender: TObject);
begin
  inherited;
  UPDATEend('EndYear')
end;

procedure TPersonelDecExtInfo_2F.UPDATEend(FiledName: String);
var
  VALUES: String;
begin
  inherited;
  VALUES := get_box('مقدار جديد را وارد كنيد ', qry_Items.FieldByName(FiledName)
    .DisplayLabel, qry_Items.FieldByName(FiledName).AsString);
  if trim(VALUES) = '' then
    Exit;
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Pay.PersonelDecExt ' + 'SET ' + FiledName + ' = ' +
      VALUES + 'WHERE (DecExtID = ' + qry_ItemsDecExtID.AsString + ')';
    BigMessage(IntToStr(ExecSQL) + ' ركورد ثبت شد.‏', 1);
    Active := False;
  end; // with
  VALUES := qry_ItemsDecExtID.AsString;
  qry_Items.Requery();
  qry_Items.Locate('DecExtID', VALUES, []);
end;

procedure TPersonelDecExtInfo_2F.actChangerExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Items.AfterPost := nil;
    ChangerF.ShowChanger(qry_Items);
  finally
    qry_Items.AfterPost := qry_ItemsAfterPost;
  end;
end;

procedure TPersonelDecExtInfo_2F.qry_ItemsPersonelNoChange(Sender: TField);
begin
  inherited;
  qry_Items.FieldByName('FormInfoID2').AsInteger :=
    GetProject2Interdicts(Sender.AsInteger)
end;

end.
