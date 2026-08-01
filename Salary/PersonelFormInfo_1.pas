// Mostafa
unit PersonelFormInfo_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, ToolWin, DBCtrls, Mask,
  ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, ppPrnabl,
  ppCtrls, ppDB, ppDBPipe, ppVar, Menus, ppParameter, MyComboBoxUnit,
  ppDesignLayer, System.ImageList, System.Actions, ppDBBDE;

type
  TPersonelFormInfo_1F = class(Ttemplate2MDIF)
    qry_InitForm: TADOQuery;
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
    qry_ItemsAidDate1_L1: TStringField;
    qry_ItemsAidNo2: TStringField;
    qry_ItemsAidDate2_L1: TStringField;
    qry_ItemsDayTime: TFloatField;
    qry_ItemsEmployerAmount: TBCDField;
    qry_ItemsFormInfoID2: TIntegerField;
    qry_ItemsAccTopicCode: TIntegerField;
    qry_ItemsAccDetailCode: TIntegerField;
    qry_ItemsAccCTopicCode: TIntegerField;
    qry_ItemsAccCTopicCode2: TIntegerField;
    pnlAccount: TPanel;
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
    qry_Items_AccTopicName: TStringField;
    qry_Items_AccDetailName: TStringField;
    qry_Items_AccCTopicName: TStringField;
    qry_Items_AccCTopicName3: TStringField;
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
    BitBtn1: TBitBtn;
    PopMnuPrint: TPopupMenu;
    pnlVisiblePopUp: TMenuItem;
    HintName1: TMenuItem;
    Personelforminfo_1F2: TMenuItem;
    Personelforminfo_1F3: TMenuItem;
    Personelforminfo_1F1: TMenuItem;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    qry_Items_PersonelState: TIntegerField;
    qry_Items_StateName_L1: TStringField;
    Panel10: TPanel;
    lblColor2: TLabel;
    Label16: TLabel;
    LblEndDate2: TLabel;
    LblEndDate: TLabel;
    qry_Items_InterdicEndDate: TStringField;
    actDeleteAll: TAction;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    PopMnuOther: TPopupMenu;
    N1: TMenuItem;
    actSendToMonthNo: TAction;
    N2: TMenuItem;
    actFilter: TAction;
    N3: TMenuItem;
    Excel1: TMenuItem;
    qry_Items_Radif: TIntegerField;
    qry_ItemsAccCTopicCode3: TIntegerField;
    qry_Items_AccCTopicName2: TStringField;
    pnlCTopicCode3: TPanel;
    Label10: TLabel;
    btnAccCTopicCode3: TSpeedButton;
    DBText5: TDBText;
    DBEdit7: TDBEdit;
    qry_ItemsHasFun: TIntegerField;
    Label17: TLabel;
    LblHasFun: TLabel;
    qry_ItemsOfficeName: TStringField;
    Personelforminfo_1F4Office: TMenuItem;
    qry_ItemsPaymentLoan: TBCDField;
    PnlPaymentLoan: TPanel;
    Label13: TLabel;
    DBEdit16: TDBEdit;
    qry_MasterPayMentActive: TWordField;
    qryLookupPrj: TADOQuery;
    qry_Items_projectname_L1: TStringField;
    PnlProject: TPanel;
    Label11: TLabel;
    SpeedButton6: TSpeedButton;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Panel5: TPanel;
    btnPersonelNo: TSpeedButton;
    pnlCustomer1: TPanel;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdtPersonelNo: TDBEdit;
    pnlCustomer2: TPanel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    DBEdtState: TDBEdit;
    qryEarthCode: TADOQuery;
    qryProcCode: TADOQuery;
    qry_ItemsProcCode: TIntegerField;
    qry_ItemsEarthCode: TIntegerField;
    qry_Items_ProcCode: TStringField;
    qry_Items_EarthCode: TStringField;
    pnlProcCode: TPanel;
    lblProcCode: TLabel;
    btnProcCode: TSpeedButton;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    pnlEarthCode: TPanel;
    lblEarthCode: TLabel;
    btnEarthCode: TSpeedButton;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Personelforminfo_PayFish: TMenuItem;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppColumnHeaderBand5: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppColumnFooterBand5: TppColumnFooterBand;
    ppFooterBand2: TppFooterBand;
    ppShape1: TppShape;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppDBCalc2: TppDBCalc;
    ppLabel5: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    qry_ItemsYearID: TIntegerField;
    qry_ItemsStartYear: TIntegerField;
    qry_ItemsEndYear: TIntegerField;
    yrcmbx1: TYearComboBox;
    qry_ItemsSituation: TWordField;
    actSetSelectedSituation0: TAction;
    actSetSelectedSituation1: TAction;
    qry_ItemsEmployeeName_L1: TStringField;
    actSMS: TAction;
    qry_ItemsMobile: TStringField;
    actChanger: TAction;
    grpNote: TGroupBox;
    DBMmoNote: TDBMemo;
    Panel6: TPanel;
    Panel7: TPanel;
    pnlAidNo2: TPanel;
    lblAidNo2: TLabel;
    DBEdit14: TDBEdit;
    pnlAidDate2: TPanel;
    lblAidDate2: TLabel;
    DBEdit13: TDBEdit;
    pnlAidNo1: TPanel;
    lblAidNo1: TLabel;
    DBEdit12: TDBEdit;
    pnlAidDate1: TPanel;
    lblAidDate1: TLabel;
    DBEdit11: TDBEdit;
    Panel8: TPanel;
    pnlDayTime: TPanel;
    Label12: TLabel;
    DBEdit15: TDBEdit;
    pnlDayQuntity: TPanel;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    pnlEmployeeAmount: TPanel;
    edtEmployeeAmount: TDBEdit;
    Label9: TLabel;
    actGetExcel: TAction;
    qry_ItemsLastUser: TWideStringField;
    qry_ItemsFirstUser: TWideStringField;
    txtFirstUser: TDBText;
    txtLastUser: TDBText;
    qry_ItemsNote_L1: TWideStringField;
    qry_ItemsNote_L2: TWideStringField;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qry_Items_AccountNumber: TStringField;
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
    procedure DBEdtPersonelNoKeyDown(Sender: TObject; var Key: Word;
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
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppSystemVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure qry_ItemsAfterOpen(DataSet: TDataSet);
    procedure qry_ItemsBeforePost(DataSet: TDataSet);
    procedure pnlVisiblePopUpClick(Sender: TObject);
    procedure Personelforminfo_1F1Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblGetPrintDateGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdtPersonelNoExit(Sender: TObject);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure actSendToMonthNoExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qry_ItemsCalcFields(DataSet: TDataSet);
    procedure btnAccCTopicCode3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit_All_KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnProcCodeClick(Sender: TObject);
    procedure btnEarthCodeClick(Sender: TObject);
    procedure qry_ItemsPersonelNoChange(Sender: TField);
    procedure yrcmbx1YearChangeID(Sender: TObject);
    procedure qry_ItemsBeforeEdit(DataSet: TDataSet);
    procedure actSetSelectedSituation0Execute(Sender: TObject);
    procedure actSetSelectedSituation1Execute(Sender: TObject);
    procedure actSMSExecute(Sender: TObject);
    procedure actChangerExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure qry_ItemsAfterEdit(DataSet: TDataSet);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    MonthNo: Integer;
    FormType: Integer;
    chkInsertAcc, GetExcel: Boolean;
    TopicKind, DetailKind, CTopicKind, CTopicKind2, CTopicKind3: Integer;
    procedure UpdateList;
    procedure InitForm;
    function CalculateTotal(fldname: String): Currency;
  public
    { Public declarations }
  end;

var
  PersonelFormInfo_1F: TPersonelFormInfo_1F;

implementation

uses DM, StrUtils, GlobalPro, searchCode_ADO, mmessage,
  sort2, search2, Math, filter_ADO, FilterClass_ADO, GetExcel, infoSMS, Changer,
  FaraConsts, SalaryFunctions;

{$R *.dfm}

procedure TPersonelFormInfo_1F.InitForm;
begin
  with qry_InitForm do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := FormType;
    Active := true;
    chkInsertAcc := qry_InitForm.FieldByName('InsertAccCode').AsBoolean;
    TopicKind := qry_InitForm.FieldByName('TopicCodeKind').AsInteger;
    DetailKind := qry_InitForm.FieldByName('DetailCodeKind').AsInteger;
    CTopicKind := qry_InitForm.FieldByName('CTopicCodeKind').AsInteger;
    CTopicKind2 := qry_InitForm.FieldByName('CTopicCode2Kind').AsInteger;
    Caption := Caption + '(' + FieldByName('FormCaption_L1').AsString + ')';
    lblCaption.Hint := IntToStr(FormType);

    // -----------------------------Set Label-------------------------------------
    lblAidNo1.Caption := ' ‘„«—Â ' + FieldByName('AidInfo1Caption').AsString;
    lblAidDate1.Caption := '  «—ÌŒ ' + FieldByName('AidInfo1Caption').AsString;
    lblAidNo2.Caption := ' ‘„«—Â ' + FieldByName('AidInfo2Caption').AsString;
    lblAidDate2.Caption := '  «—ÌŒ  ' + FieldByName('AidInfo2Caption').AsString;

    // ------------------------------set Panel-------------------------------------
    // PnlRecall.Visible:=FieldByName('RecallFormTypes').AsInteger<>0;
    pnlEmployeeAmount.Visible := FieldByName('AmountActive').AsInteger
      in [2, 3];

    qry_Items.FieldByName('EmployeeAmount').Required :=
      pnlEmployeeAmount.Visible;

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
    pnlCTopicCode3.Visible := FieldByName('CTopicCode3Kind').Value <> 0;
    pnlAccount.Visible := (pnlDetailCode.Visible) or (pnlTopicCode.Visible) or
      (pnlCTopicCode.Visible) or (pnlCTopicCode2.Visible) or
      (pnlCTopicCode3.Visible);

    grpNote.Visible := FieldByName('NoteActive').Value = 1;

    PnlProject.Visible := FieldByName('FormInfo4Function').AsInteger > 0;

    pnlProcCode.Visible := FieldByName('EarthProceedsActivate').AsInteger
      in [2, 3];
    pnlEarthCode.Visible := FieldByName('EarthProceedsActivate').AsInteger
      in [1, 3];

    lblProcCode.Caption := 'ﬂœ ' + FieldByName('ProcName').AsString;
    lblEarthCode.Caption := 'ﬂœ ' + FieldByName('EarthName').AsString;

    yrcmbx1.YearsParam := APPBank.Year;
    yrcmbx1.YearID := APPBank.Year;

    // -------------------------------Set_Qry_Master-------------------------------
    with qry_Master do
    begin
      Active := False;
      Parameters.ParamByName('type').Value :=
        qry_InitForm.FieldByName('FormType').AsInteger;
      Parameters.ParamByName('Formtype').Value :=
        qry_InitForm.FieldByName('FormType').AsInteger;
      Active := true;
    end; // with
  end; // with

  edtMaster.DataField := IfThen(optP.primaryLanguage = 0, 'infoname_l1',
    'infoname_l2');
  pnlCustomer1.Visible := optP.LanguageDisplay1;
  pnlCustomer2.Visible := optP.LanguageDisplay2;
  setColumns(DBGrid1, '#02', optP.LanguageDisplay1);
  setColumns(DBGrid1, '#03', optP.LanguageDisplay2);
  setColumns(DBGrid1, '#04', pnlEmployeeAmount.Visible);
  setColumns(DBGrid1, '#05', pnlDayQuntity.Visible);
  setColumns(DBGrid1, '#06', pnlDayTime.Visible);
  if (not pnlCustomer1.Visible) then
  begin
    Label6.Top := pnlCustomer1.Top;
    DBEdtPersonelNo.Top := pnlCustomer1.Top;
    btnPersonelNo.Top := DBEdtPersonelNo.Top;
  end; // if

end;

procedure TPersonelFormInfo_1F.N4Click(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1)
end;

procedure TPersonelFormInfo_1F.N5Click(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1, true)
end;

procedure TPersonelFormInfo_1F.ToolButton1Click(Sender: TObject);
var
  DecExtID: Integer;
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  DecExtID := qry_Items.FieldByName('DecExtID').AsInteger;
  UpdateList;
  qry_Items.Locate('DecExtID', DecExtID, [])
end;

procedure TPersonelFormInfo_1F.UpdateList;
begin
  if qry_Items.State in dseditmodes then
    if get_response('¬Ì«  €ÌÌ—«  À»  ‘Êœ.') = mrYes then
      qry_Items.Post;
  with qry_Items Do
  begin
    Active := False;
    Parameters.ParamByName('FormInfo').Value :=
      qry_Master.FieldByName('FormInfoID').AsInteger;
    Parameters.ParamByName('Mounthno').Value := MonthNo;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('OfficeFrom').Value :=
      qryPerson.Parameters.ParamByName('OfficeFrom').Value;
    Parameters.ParamByName('OfficeTo').Value := qryPerson.Parameters.ParamByName
      ('OfficeTo').Value;

    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      qryPerson.Parameters.ParamByName('EmployTypeIDFrom').Value;
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      qryPerson.Parameters.ParamByName('EmployTypeIDTo').Value;

    actDeleteAll.Visible := checkArchiveID(MonthNo, qry_Items);

    Parameters.ParamByName('YearID').Value := yrcmbx1.YearID;

    Active := true;
  end; // if
end;

procedure TPersonelFormInfo_1F.yrcmbx1YearChangeID(Sender: TObject);
begin
  inherited;
  with qry_Items Do
  begin
    Active := False;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('StartYear').Value := yrcmbx1.YearID;
    Active := true;
  end; // if
end;

procedure TPersonelFormInfo_1F.qry_MasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  PnlPaymentLoan.Visible := DataSet.FieldByName('PayMentActive').AsInteger = 1;
  UpdateList;
end;

procedure TPersonelFormInfo_1F.FormCreate(Sender: TObject);
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

  GetExcel := False;
  if optA.AccOldAvailable then
  begin
    qry_Items.FieldByName('_AccCTopicName2').LookupDataSet :=
      DMf.qry_CTopicCode;
    qry_Items.FieldByName('_AccCTopicName2').KeyFields := 'AccCTopicCode';
    qry_Items.FieldByName('_AccCTopicName2').LookupResultField :=
      'CTopicName_L1';
    qry_Items.FieldByName('_AccCTopicName2').LookupKeyFields := 'CTopicCode';
    qry_Items.FieldByName('_AccCTopicName3').LookupDataSet :=
      DMf.qry_CTopicCode;
    qry_Items.FieldByName('_AccCTopicName3').KeyFields := 'AccCTopicCode';
    qry_Items.FieldByName('_AccCTopicName3').LookupResultField :=
      'CTopicName_L1';
    qry_Items.FieldByName('_AccCTopicName3').LookupKeyFields := 'CTopicCode';
  end;
  SetLookUpCash(qry_Items);
  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := true;
  GetYearMounth(MonthNo);
  InitForm;
  LblEndDate2.Caption := LblEndDate2.Caption + '  « ' + var_glb_CurrentDate;
end;

procedure TPersonelFormInfo_1F.FormShow(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TPersonelFormInfo_1F.src_itemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Items.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  btnPersonelNo.Enabled := okPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TPersonelFormInfo_1F.qry_ItemsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.name;
end;

procedure TPersonelFormInfo_1F.qry_ItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBEdtPersonelNo.SetFocus;
  DataSet.FieldByName('FirstUser').AsString := user.name;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    qry_Master.FieldByName('FormInfoID').AsInteger;
  DataSet.FieldByName('DecExtID').AsInteger :=
    GetANewCode('', 'Pay.PersonelDecExt', 'decExtID');
  DataSet.FieldByName('FirstMounth').AsInteger := MonthNo;
  DataSet.FieldByName('EndMounth').AsInteger := MonthNo;

  DataSet.FieldByName('YearID').AsInteger := APPBank.Year;

  if not chkInsertAcc then
    Exit;
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

  if (CTopicKind3 = 2) or (CTopicKind3 = 5) then
    qry_Items.FieldByName('AccCTopicCode3').AsInteger :=
      Calculate_AccCode(5, CTopicKind3, qry_Master.FieldByName('FormInfoID')
      .AsInteger);

end;

procedure TPersonelFormInfo_1F.btnPersonelNoClick(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 5] of String;
begin
  inherited;
  Txt := 'SELECT  PersonelNo, name_L1,  lastName_L1,  fatherName_L1, IDNumber,  NationalID '
    + 'FROM         Pay.PersonelInfo where  (PersonelNo IN  (' +
    'SELECT     PersonelInfo.PersonelNo  FROM Pay.Interdicts INNER JOIN ' +
    'Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN '
    + 'Pay.FormsInfo ON PersonelInfo.PersonelState = FormsInfo.FormInfoID LEFT OUTER JOIN '
    + 'Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID '
    + ' LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID '
    + 'WHERE (InterdicType = 0 ) AND  (Interdicts.State < 50) AND (FormsInfoOffice.InfoID BETWEEN '
    + VarToStr(qryPerson.Parameters.ParamByName('OfficeFrom').Value) + ' AND ' +
    VarToStr(qryPerson.Parameters.ParamByName('OfficeTo').Value) +
    ')AND (FormsInfoEmployTypeID.InfoID BETWEEN ' +
    VarToStr(qryPerson.Parameters.ParamByName('EmployTypeIDFrom').Value) +
    ' AND ' + VarToStr(qryPerson.Parameters.ParamByName('EmployTypeIDTo')
    .Value) + ')';

  if (CompanyFilterinLogin) and (not User.PowerAdmin) then
  begin
    Txt := Txt + ' AND (Interdicts.subcompanyCode BETWEEN ' +
      FcompanyCodeLogin.ToString + ' AND ' + FcompanyCodeLogin.ToString + ') ';
  end;
    Txt := Txt + '))';

  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, '„‘Œ’«  Å—”‰·', Txt,
    ['‘„«—Â Å—”‰·', '‰«„ ', ' ‰«„ Œ«‰Ê«œêÌ ', '‰«„ Åœ— ', '‘„«—Â ‘‰«”‰«„Â',
    'ﬂœ „·Ì'], Results, [100, 100, 100, 100, 100, 50], alLeft);
  if s then
  begin
    if not(qry_Items.State in dseditmodes) then
      qry_Items.edit;
    qry_Items['PersonelNo'] := Results[0];
  end; // if
end;

procedure TPersonelFormInfo_1F.qry_ItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not EditSituation(DataSet) then
    Abort;

  if not FunctionDelete(qry_ItemsPersonelNo.AsInteger, MonthNo) then
    Abort;

  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TPersonelFormInfo_1F.qry_ItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not EditSituation(DataSet) then
    Abort;

  if not FunctionDelete(qry_ItemsPersonelNo.AsInteger, MonthNo) then
    Abort;

end;

procedure TPersonelFormInfo_1F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, False, IntToStr(FormType));
end;

procedure TPersonelFormInfo_1F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TPersonelFormInfo_1F.qry_ItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TPersonelFormInfo_1F.DBEdtPersonelNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = vk_space then
    TSpeedButton(FindComponent('btn' + (Sender as TDBEdit).DataField)).Click
end;

procedure TPersonelFormInfo_1F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPersonelFormInfo_1F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Items);
end;

procedure TPersonelFormInfo_1F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Items);
end;

procedure TPersonelFormInfo_1F.btnAccTopicCodeClick(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccTopicCode').AsString :=
    SpeedButtonTopicCode(qry_Items.FieldByName('AccTopicCode').AsString)
end;

procedure TPersonelFormInfo_1F.btnAccDetailCodeClick(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccDetailCode').AsString :=
    SpeedButtonDetailCode(qry_Items.FieldByName('AccDetailCode').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger);
end;

procedure TPersonelFormInfo_1F.btnAccCTopicCodeClick(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccCTopicCode').AsString :=
    SpeedButtonCTopicCode(qry_Items.FieldByName('AccCTopicCode').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger)
end;

procedure TPersonelFormInfo_1F.btnAccCTopicCode2Click(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccCTopicCode2').AsString :=
    SpeedButtonCTopicCode2(qry_Items.FieldByName('AccCTopicCode2').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger)
end;

procedure TPersonelFormInfo_1F.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID,InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo ' + 'WHERE (FormType = %d ) ' +
    ' OR (CASE WHEN %d = 31 THEN PayMentActive ELSE 0 END <> 0)';
  Txt := Format(Txt, [FormType, FormType]);
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' ”ÿÕ˛Â«Ì ﬁ»·Ì  ', Txt,
    ['', 'ﬂœ', '‰«„ 1', '‰«„ 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qry_Master.Locate('FormInfoID', Results[0], []);
end;

procedure TPersonelFormInfo_1F.ppLabel9GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ' ·Ì”  ' + edtMaster.Text + ' ' + ToolBar1.Buttons[MonthNo - 1]
    .Caption + ' „«Â';
end;

procedure TPersonelFormInfo_1F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPersonelFormInfo_1F.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ' ' + ToolBar1.Buttons[MonthNo - 1].Caption;
end;

procedure TPersonelFormInfo_1F.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Self.Caption + #0254;
end;

procedure TPersonelFormInfo_1F.ppSystemVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPersonelFormInfo_1F.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPersonelFormInfo_1F.qry_ItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := ' ⁄œ«œ=' + IntToStr(DataSet.RecordCount);
  StatusBar1.Panels[2].Text := '„=' +
    CurrToStrF(CalculateTotal('EmployeeAmount'), ffCurrency, 0);
  StatusBar1.Panels[1].Text := '—=' + CurrToStr(CalculateTotal('DayQuntity'));
  StatusBar1.Panels[0].Text := '”=' + CurrToStr(CalculateTotal('DayTime'));

end;

function TPersonelFormInfo_1F.CalculateTotal(fldname: String): Currency;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(Self);
  try
    with qry do
    begin
      Clone(qry_Items, ltReadOnly);
      Result := 0;
      First;
      while not eof do
      begin
        Result := Result + FieldByName(fldname).AsCurrency;
        Next;
      end; // while
    end; // with
  finally
    qry.Free;
  end; // try
end;

procedure TPersonelFormInfo_1F.qry_ItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  // if not FunctionDelete(qry_ItemsPersonelNo.AsInteger, MonthNo) then
  // Abort;

  if not CheckRequiredFields(DataSet) then
    Abort;
  DataSet.FieldByName('StartYear').AsInteger := yrcmbx1.YearID;
  DataSet.FieldByName('EndYear').AsInteger := yrcmbx1.YearID;

  if not chkPersonelState(qry_Items_PersonelState.AsInteger) then
    Abort;

  if not GetExcel then
    CheckDouplicte(qry_Items)

end;

procedure TPersonelFormInfo_1F.pnlVisiblePopUpClick(Sender: TObject);
begin
  inherited;
  try
    qry_Items.DisableControls;
    if (pnlDayQuntity.Visible) or (pnlDayTime.Visible) then
      InitReportFile(ppReport1, 'PersonelFormInfo_1FDay')
    else
      InitReportFile(ppReport1, 'PersonelFormInfo_1FAmount');
  finally
    qry_Items.EnableControls;
  end; // try
end;

procedure TPersonelFormInfo_1F.Personelforminfo_1F1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Items.DisableControls;
    if (Sender as TMenuItem).Hint <> EmptyStr then
      qry_Items.Sort := (Sender as TMenuItem).Hint;
    InitReportFile(ppReport1, (Sender as TMenuItem).name);
  finally
    qry_Items.EnableControls;
  end; // try
end;

procedure TPersonelFormInfo_1F.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPersonelFormInfo_1F.ppLblGetPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TPersonelFormInfo_1F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Items.FieldByName('PersonelNo'));
end;

procedure TPersonelFormInfo_1F.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TPersonelFormInfo_1F.DBEdtPersonelNoExit(Sender: TObject);
begin
  inherited;
  if not chkInsertAcc then
    Exit;
  if (TopicKind = 1) or (TopicKind = 4) or (TopicKind = 6) then
    qry_Items.FieldByName('AccTopicCode').AsInteger :=
      Calculate_AccCode(1, TopicKind, qry_Items.FieldByName('PersonelNo')
      .AsInteger);
  if (DetailKind in [1, 4, 6, 11]) then
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

  if (CTopicKind3 = 1) or (CTopicKind3 = 4) or (CTopicKind3 = 6) then
    qry_Items.FieldByName('AccCTopicCode3').AsInteger :=
      Calculate_AccCode(5, CTopicKind3, qry_Items.FieldByName('PersonelNo')
      .AsInteger);
end;

procedure TPersonelFormInfo_1F.actChangerExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Items.AfterPost := nil;
    ChangerF.ShowChanger(qry_Items);
  finally
    qry_Items.AfterPost := qry_ItemsAfterPost;
  end;
end;

procedure TPersonelFormInfo_1F.actDeleteAllExecute(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('¬Ì« »—«Ì Õ–› ”ÿ—Â«Ì «‰ Œ«» ‘œÂ „ÿ„∆‰ Â” Ìœø') <> mrYes then
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
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Delete Pay.PersonelDecExt  WHERE DecExtID IN (' + s + ')';
    try
      BigMessage(IntToStr(ExecSQL) + ' Õ–›  ‘œ.', 2);
      Active := False;
      qry_Items.Active := False;
      qry_Items.Open;
    except
      Warn('«‘ﬂ«· œ— Õ–›ù');
    end; // try
  end; // with
end;

procedure TPersonelFormInfo_1F.BitBtn6Click(Sender: TObject);
begin
  inherited;
  PopMnuOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPersonelFormInfo_1F.actSendToMonthNoExecute(Sender: TObject);
begin
  inherited;
  SendToMonthNoPersonelDecExt(DBGrid1, MonthNo, ToolBar1);
end;

procedure TPersonelFormInfo_1F.actSetSelectedSituation0Execute(Sender: TObject);
begin
  inherited;
  SetSelectedSituation(DBGrid1, nil, 0, 'pay.PersonelDecExt', 'DecExtID',
    qry_InitForm)
end;

procedure TPersonelFormInfo_1F.actSetSelectedSituation1Execute(Sender: TObject);
begin
  inherited;
  SetSelectedSituation(DBGrid1, nil, 1, 'pay.PersonelDecExt', 'DecExtID',
    qry_InitForm)
end;

procedure TPersonelFormInfo_1F.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qry_Items, 'Mobile')
end;

procedure TPersonelFormInfo_1F.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'OfficeCode', 'Ê«Õœ ”«“„«‰Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 FROM  Pay.FormsInfo  '
        + ' WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT  0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');

      AddItem(DMf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

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
          Parameters.ParamByName('EmployTypeIDFrom').Value :=
            GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
          Parameters.ParamByName('EmployTypeIDTo').Value :=
            GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
          Active := true;
        end; // with
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // end

end;

procedure TPersonelFormInfo_1F.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  if FormType in [23, 43] then
  begin
    qry_Items.FieldByName('FirstMounth').DisplayLabel := EmptyStr;
    qry_Items.FieldByName('EndMounth').DisplayLabel := EmptyStr;
  end;
  try
    qry_Items.AfterPost := nil;
    GetExcel := true;
    GetExcelF.ShowImPortExcel(qry_Items);
  finally
    GetExcel := False;
    qry_Items.AfterPost := qry_ItemsAfterPost;
  end;
end;

procedure TPersonelFormInfo_1F.qry_ItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
end;

procedure TPersonelFormInfo_1F.btnAccCTopicCode3Click(Sender: TObject);
begin
  inherited;
  if not(qry_Items.State in dseditmodes) then
    qry_Items.edit;
  qry_Items.FieldByName('AccCTopicCode3').AsString :=
    SpeedButtonCTopicCode2(qry_Items.FieldByName('AccCTopicCode3').AsString,
    qry_Items.FieldByName('AccTopicCode').AsInteger)

end;

procedure TPersonelFormInfo_1F.SpeedButton6Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
    + ' WHERE  FormType = ' + qry_InitForm.FieldByName
    ('FormInfo4Function').AsString;
  b := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' ﬂœ Ê ”ÿÕ ⁄‰Ê«‰ ﬁ»·Ì ', Txt,
    ['”—Ì«·', 'ﬂœ', '⁄‰Ê«‰ 1', '⁄‰Ê«‰ 2'], Results, [50, 50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Items.State in dseditmodes) then
      qry_Items.edit;
    qry_Items.FieldByName('FormInfoID2').AsInteger := StrToInt(Results[0]);
  end; // if
end;

procedure TPersonelFormInfo_1F.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton6.Click
end;

procedure TPersonelFormInfo_1F.DBEdit_All_KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = vk_space then
    TSpeedButton(FindComponent('btn' + (Sender as TDBEdit).DataField)).Click
end;

procedure TPersonelFormInfo_1F.btnProcCodeClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcSalary, lblProcCode.Caption,
    'SELECT     InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo WHERE     (FormType = 67) ',
    ['ﬂœ', '⁄‰Ê«‰', 'ProcCode'], Results, [20, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Items.State in dseditmodes) then
      qry_Items.edit;
    qry_Items.FieldByName('ProcCode').AsString := Results[0];
  end;
end;

procedure TPersonelFormInfo_1F.btnEarthCodeClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcSalary, lblEarthCode.Caption,
    'SELECT      InfoID, InfoName_L1, InfoName_L2 ' +
    'FROM Pay.FormsInfo WHERE     (FormType = 69) ',
    ['ﬂœ', '⁄‰Ê«‰', 'EarthCode'], Results, [20, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Items.State in dseditmodes) then
      qry_Items.edit;
    qry_Items.FieldByName('EarthCode').AsString := Results[0];
  end;
end;

procedure TPersonelFormInfo_1F.qry_ItemsPersonelNoChange(Sender: TField);
begin
  inherited;
  qry_Items.FieldByName('FormInfoID2').AsInteger :=
    GetProject2Interdicts(Sender.AsInteger)
end;

end.
