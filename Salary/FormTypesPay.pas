unit FormTypesPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ppProd, ppClass, ppReport, Grids, Vcl.DBGrids, ppComm, ppRelatv,
  ppDB, ppDBPipe, DB, ADODB, ComCtrls, Mask, DBCtrls, ppBands, ppCache,
  ppCtrls, ppVar, ppPrnabl, Menus, CheckLst, ppParameter, WorkflowDm,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TFormTypesPayF = class(Ttemplate2MDIF)
    qryFormTypes: TADOQuery;
    srcFormTypes: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    LblFormCaption_L2: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    comboDisplayFormType: TDBComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    tsPrint: TTabSheet;
    Label10: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    tsContorol: TTabSheet;
    Label27: TLabel;
    TabSheet6: TTabSheet;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    actSendExel: TAction;
    actprint: TAction;
    actSort: TAction;
    qryFormTypesFormType: TSmallintField;
    qryFormTypesFormCaption_L1: TStringField;
    qryFormTypesFormCaption_L2: TStringField;
    qryFormTypesDurationDayActive: TWordField;
    qryFormTypesDurationTimeActive: TWordField;
    qryFormTypesExemptPersonActive: TWordField;
    qryFormTypesSalaryEffectKind: TWordField;
    qryFormTypesKargozinyEffectKind: TWordField;
    qryFormTypesRecalSalaryTypes: TStringField;
    qryFormTypesSalaryKind: TWordField;
    qryFormTypesAmount2Active: TWordField;
    qryFormTypesRecallFormTypes: TSmallintField;
    qryFormTypesUseEndMounthKind: TWordField;
    qryFormTypesAidInfoNo1Active: TWordField;
    qryFormTypesAidInfo1Caption: TStringField;
    qryFormTypesAidInfoNo2Active: TWordField;
    qryFormTypesAidInfoDate2Active: TWordField;
    qryFormTypesAidInfo2Caption: TStringField;
    qryFormTypesTopicCodeKind: TWordField;
    qryFormTypesDetailCodeKind: TWordField;
    qryFormTypesCTopicCodeKind: TWordField;
    qryFormTypesCTopicCode2Kind: TWordField;
    qryFormTypesDisplayFormType: TWordField;
    qryFormTypesReportFileName1: TStringField;
    qryFormTypesReportFileName2: TStringField;
    qryFormTypesReportFileName3: TStringField;
    qryFormTypesReportFileName4: TStringField;
    qryFormTypesNote_L1: TMemoField;
    qryFormTypesNote_L2: TMemoField;
    qryFormTypesWordDocumentsActive: TWordField;
    qryFormTypesFunctionShow: TWordField;
    qryFormTypesRecalKindClock: TWordField;
    Label7: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Label12: TLabel;
    Label13: TLabel;
    ComboTopicCodeKind: TDBComboBox;
    ComboDetailCodeKind: TDBComboBox;
    ComboCTopicCodeKind: TDBComboBox;
    ComboCTopicCode2Kind: TDBComboBox;
    TabSheet5: TTabSheet;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    ComboSalaryEffectKind: TDBComboBox;
    ComboKargozinyEffectKind: TDBComboBox;
    ComboSalaryKind: TDBComboBox;
    ComboUseEndMounthKind: TDBComboBox;
    DBEdit6: TDBEdit;
    edtRecallFormTypes: TDBEdit;
    Label18: TLabel;
    Label23: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    newPanel: TPanel;
    BtnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    BtnDelete: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    GrpPerson1: TGroupBox;
    DBEdit11: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit12: TDBEdit;
    qryFormTypesCoefficientActive: TWordField;
    qryFormTypesAmountActive: TWordField;
    qryFormTypesAidInfoDate1Active: TWordField;
    BitBtn9: TBitBtn;
    SpeedButton1: TSpeedButton;
    qryFormTypesCalCulateTypeActive: TWordField;
    SpeedButton2: TSpeedButton;
    pnlCustomer: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    SpeedButton7: TSpeedButton;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    PageControl2: TPageControl;
    Label24: TLabel;
    edtFormInfo4Function: TDBEdit;
    qryFormTypesFormInfo4Function: TIntegerField;
    qryFormTypesChangeAmountActive: TWordField;
    qryFormTypesFirstAmountActive: TWordField;
    qryFormTypesNoteActive: TWordField;
    qryFormTypesLimitMounthActive: TWordField;
    qryFormTypesMnuRow: TWordField;
    qryFormTypesReportCaption1: TStringField;
    DBEdit21: TDBEdit;
    Label8: TLabel;
    Label26: TLabel;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    Label30: TLabel;
    qryFormTypesReportCaption2: TStringField;
    qryFormTypesReportCaption3: TStringField;
    qryFormTypesReportCaption4: TStringField;
    qryFormTypesReportFooter: TMemoField;
    qryFormTypesMaxDayTimeActive: TWordField;
    Label31: TLabel;
    DBMemo2: TDBMemo;
    qryFormTypesShowMnuId: TWordField;
    PopMnuPrint: TPopupMenu;
    FormTypes2: TMenuItem;
    AllClick: TMenuItem;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    pplblPrintDate: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppSysVarPageNo: TppSystemVariable;
    ppLabel11: TppLabel;
    ppLabel5: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBTxtDisplayFormType: TppDBText;
    ppDBTxtShowMnuId: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel9: TppLabel;
    FormTypes1: TMenuItem;
    TabSheet7: TTabSheet;
    qryFormTypesShowOperators: TWordField;
    qryFormTypesMuliplyInDayActive: TWordField;
    qryFormTypesCTopicCode3Kind: TWordField;
    ComboCTopicCode3Kind: TDBComboBox;
    Label3: TLabel;
    qryFormTypesEarthProceedsActivate: TWordField;
    TabSheet8: TTabSheet;
    qryFormTypesADDLevelID: TWordField;
    qryFormTypesEditLevelID: TWordField;
    qryFormTypesDeleteLevelID: TWordField;
    qryFormTypesChangeStateLevelID: TWordField;
    qryFormTypesPrintLevelID: TWordField;
    qryFormTypesPrintDesignLevelID: TWordField;
    qryFormTypesFormRelatedLevelID: TWordField;
    qryFormTypesAccCodeLevelID: TWordField;
    qryFormTypesOtherCtrlLevelID: TWordField;
    qryFormTypesXlsLevelID: TWordField;
    qryFormTypesFinalStateEditLevelID: TWordField;
    qryFormTypesConstantStateEditLevelID: TWordField;
    qryFormTypesCalcLevelID: TWordField;
    qryFormTypesSendLevelID: TWordField;
    Label46: TLabel;
    DBEdit29: TDBEdit;
    Label47: TLabel;
    DBEdit30: TDBEdit;
    Label48: TLabel;
    DBEdit31: TDBEdit;
    Label49: TLabel;
    edtChangeStateLevelID: TDBEdit;
    Label50: TLabel;
    DBEdit33: TDBEdit;
    Label51: TLabel;
    DBEdit34: TDBEdit;
    Label52: TLabel;
    DBEdit35: TDBEdit;
    Label53: TLabel;
    DBEdit36: TDBEdit;
    Label54: TLabel;
    DBEdit37: TDBEdit;
    Label55: TLabel;
    DBEdit38: TDBEdit;
    Label56: TLabel;
    DBEdit39: TDBEdit;
    Label57: TLabel;
    DBEdit40: TDBEdit;
    Label58: TLabel;
    DBEdit41: TDBEdit;
    Label59: TLabel;
    DBEdit42: TDBEdit;
    qryFormTypesDecExtStateActive: TWordField;
    dbchkDecExtStateActive: TDBCheckBox;
    TabSheet9: TTabSheet;
    qryFormTypesAmountCaption: TStringField;
    qryFormTypesAmount2Caption: TStringField;
    qryFormTypesStandardDayCaption: TStringField;
    qryFormTypesStandardTimeCaption: TStringField;
    Label60: TLabel;
    DBEdit43: TDBEdit;
    Label61: TLabel;
    DBEdit44: TDBEdit;
    Label62: TLabel;
    DBEdit45: TDBEdit;
    Label63: TLabel;
    DBEdit46: TDBEdit;
    actMakeFiles: TAction;
    actLoadFiles: TAction;
    actLoadDifferFiles: TAction;
    LblRecordCount: TLabel;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    dbchkDurationDayActive: TDBCheckBox;
    dbchkDurationTimeActive: TDBCheckBox;
    dbchkCoefficientActive: TDBCheckBox;
    dbchkExemptPersonActive: TDBCheckBox;
    dbchkFunctionShow: TDBCheckBox;
    dbchkRecalKindClock: TDBCheckBox;
    dbchkCalCulateTypeActive: TDBCheckBox;
    dbchkWordDocumentsActive: TDBCheckBox;
    dbchkChangeAmountActive: TDBCheckBox;
    dbchkNoteActive: TDBCheckBox;
    dbchkLimitMounthActive: TDBCheckBox;
    dbchkMaxDayTimeActive: TDBCheckBox;
    Label42: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBCheckBox8: TDBCheckBox;
    CmbFirstAmountActive: TDBComboBox;
    CmbAmount2Active: TDBComboBox;
    CmbAmountActive: TDBComboBox;
    DBCheckBox17: TDBCheckBox;
    ComboEarthProceedsActivate: TDBComboBox;
    Label43: TLabel;
    cmbShowMnuId: TDBComboBox;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    GroupBox9: TGroupBox;
    ChkShowMnuPlace: TCheckListBox;
    qryFormTypesShowMnuPlace: TStringField;
    qryFormTypesPayMentShow: TWordField;
    chkPaymentActive: TDBCheckBox;
    qryFormTypesProcName: TStringField;
    qryFormTypesEarthName: TStringField;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    qryFormTypesTaxCodeShow: TWordField;
    DBCheckBox20: TDBCheckBox;
    qryFormTypesWageCalcKindActive: TWordField;
    dbchkWageCalcKindActive: TDBCheckBox;
    qryFormTypesFirstAmountName: TStringField;
    Label66: TLabel;
    DBEdit49: TDBEdit;
    lbl1: TLabel;
    Label67: TLabel;
    dbedtContactFormType: TDBEdit;
    qryFormTypesContactFormType: TIntegerField;
    qryFormTypesRepetitiveControl: TWordField;
    qryFormTypesPrefixInfoID: TIntegerField;
    qryFormTypesMasterFormType: TIntegerField;
    Label68: TLabel;
    Label69: TLabel;
    edtMasterFormType: TDBEdit;
    ComboPrefixInfoID: TDBComboBox;
    qryFormTypesActiveYearID: TWordField;
    dbchkActiveYearID: TDBCheckBox;
    qryFormTypesPersonelTypeInfoRow: TWordField;
    Label70: TLabel;
    edtPersonelTypeInfoRow: TDBEdit;
    TabSheet13: TTabSheet;
    Label71: TLabel;
    comboRepetitiveControl: TDBComboBox;
    Label32: TLabel;
    qryFormTypesPrintAfterPost: TWordField;
    dbchkPrintAfterPost: TDBCheckBox;
    ComboAidInfoNo1Active: TDBComboBox;
    Label33: TLabel;
    chkInsertAccCode: TDBCheckBox;
    qryFormTypesInsertAccCode: TBooleanField;
    TabSheet3: TTabSheet;
    Label34: TLabel;
    qryFormTypesWorkFlowID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    DBMemo5: TDBMemo;
    BitBtn1: TBitBtn;
    actCopy: TAction;
    qryFormTypesRepetitiveControlInfoID: TWordField;
    ComboRepetitiveControlInfoID: TDBComboBox;
    Label9: TLabel;
    qryFormTypesSalaryIDinDocShow: TWordField;
    dbchkSalaryIDinDocShow: TDBCheckBox;
    qryFormTypesChecking4AllPersonnelShow: TWordField;
    qryFormTypesEmployerAmountActiveShow: TWordField;
    dbchkChecking4AllPersonnelShow: TDBCheckBox;
    dbchkEmployerAmountActiveShow: TDBCheckBox;
    edtPromissoryFormType: TDBEdit;
    Label16: TLabel;
    qryFormTypesPromissoryFormType: TIntegerField;
    qryFormTypesWageKind_Active: TWordField;
    chkWageKind_Active: TDBCheckBox;
    procedure actSendExelExecute(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure qryFormTypesDisplayFormTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryFormTypesDisplayFormTypeSetText(Sender: TField;
      const Text: String);
    procedure qryFormTypesTopicCodeKindGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFormTypesTopicCodeKindSetText(Sender: TField;
      const Text: String);
    procedure qryFormTypesKargozinyEffectKindGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryFormTypesKargozinyEffectKindSetText(Sender: TField;
      const Text: String);
    procedure qryFormTypesUseEndMounthKindGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryFormTypesUseEndMounthKindSetText(Sender: TField;
      const Text: String);
    procedure qryFormTypesAfterDelete(DataSet: TDataSet);
    procedure qryFormTypesAfterInsert(DataSet: TDataSet);
    procedure qryFormTypesAfterPost(DataSet: TDataSet);
    procedure qryFormTypesBeforeDelete(DataSet: TDataSet);
    procedure srcFormTypesStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryFormTypesBeforePost(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure pplblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppDBTxtDisplayFormTypeGetText(Sender: TObject; var Text: String);
    procedure qryFormTypesDetailCodeKindSetText(Sender: TField;
      const Text: String);
    procedure qryFormTypesCTopicCodeKindSetText(Sender: TField;
      const Text: String);
    procedure qryFormTypesCTopicCode2KindSetText(Sender: TField;
      const Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryFormTypesFirstAmountActiveGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryFormTypesFirstAmountActiveSetText(Sender: TField;
      const Text: String);
    procedure qryFormTypesAmount2ActiveGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFormTypesAmount2ActiveSetText(Sender: TField;
      const Text: String);
    procedure qryFormTypesShowMnuIdGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFormTypesShowMnuIdSetText(Sender: TField; const Text: String);
    procedure AllClickClick(Sender: TObject);
    procedure ppDBTxtShowMnuIdGetText(Sender: TObject; var Text: String);
    procedure qryFormTypesAmountActiveGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFormTypesAmountActiveSetText(Sender: TField;
      const Text: String);
    procedure qryFormTypesALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryFormTypesAllSetText(Sender: TField; const Text: String);
    procedure actMakeFilesExecute(Sender: TObject);
    procedure actLoadFilesExecute(Sender: TObject);
    procedure actLoadDifferFilesExecute(Sender: TObject);
    procedure qryFormTypesAfterOpen(DataSet: TDataSet);
    procedure ChkShowMnuPlaceClick(Sender: TObject);
    procedure qryFormTypesAfterScroll(DataSet: TDataSet);
    procedure actCopyExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTypesPayF: TFormTypesPayF;

implementation

uses DM, GlobalPro, mmessage, search2, sort2, ChooseItem, Math, StrUtils,
  searchCode_ADO, SalaryFunctions, FaraConsts, SearchComponents;

{$R *.dfm}

procedure TFormTypesPayF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormTypesPayF.actprintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFormTypesPayF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not(qryFormTypes.State in dseditmodes) then
      qryFormTypes.Edit;
    qryFormTypes.fieldbyname('ReportFileName1').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TFormTypesPayF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not(qryFormTypes.State in dseditmodes) then
      qryFormTypes.Edit;
    qryFormTypes.fieldbyname('ReportFileName2').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TFormTypesPayF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not(qryFormTypes.State in dseditmodes) then
      qryFormTypes.Edit;
    qryFormTypes.fieldbyname('ReportFileName3').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TFormTypesPayF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    if not(qryFormTypes.State in dseditmodes) then
      qryFormTypes.Edit;
    qryFormTypes.fieldbyname('ReportFileName4').AsString :=
      ExtractFileName(OpenDialog1.FileName);
  end; // if
end;

procedure TFormTypesPayF.qryFormTypesTopicCodeKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Combo' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TFormTypesPayF.qryFormTypesDisplayFormTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Combo' + Sender.FieldName))
    .ItemIndex;
end;

procedure TFormTypesPayF.qryFormTypesALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Combo' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TFormTypesPayF.qryFormTypesAllSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Combo' + Sender.FieldName))
    .ItemIndex;
end;

procedure TFormTypesPayF.qryFormTypesDisplayFormTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := comboDisplayFormType.Items.strings[(Sender AS TField).AsInteger]
end;

procedure TFormTypesPayF.qryFormTypesTopicCodeKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := ComboTopicCodeKind.ItemIndex;
end;

procedure TFormTypesPayF.qryFormTypesKargozinyEffectKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryFormTypes.fieldbyname('KargozinyEffectKind').AsInteger of
    0:
      Text := 'ندارد';
    1:
      Text := 'ضريب در مبلغ پايه اداره كار';
    2:
      Text := 'ضريب در مبلغ پايه هر مدرك تحصيلي';
  end; // case
end;

procedure TFormTypesPayF.qryFormTypesKargozinyEffectKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := ComboKargozinyEffectKind.ItemIndex;
end;

procedure TFormTypesPayF.qryFormTypesUseEndMounthKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryFormTypes.fieldbyname('UseEndMounthKind').AsInteger of
    0:
      Text := '‏پيش فرض از (ماه)‏';
    1:
      Text := 'نمايش شود و ثبت توسط كاربر';
    2:
      Text := 'محاسبه شود';
  end; // case
end;

procedure TFormTypesPayF.qryFormTypesUseEndMounthKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := ComboUseEndMounthKind.ItemIndex;
end;

procedure TFormTypesPayF.qryFormTypesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TFormTypesPayF.qryFormTypesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('FormType').AsInteger :=
    GetANewCode('','Pay.FormTypes', 'FormType');
  DBEdit1.SetFocus;
end;

procedure TFormTypesPayF.qryFormTypesAfterPost(DataSet: TDataSet);
begin
  inherited;
  if get_response('تغييرات ذخيره شوند؟') <> mrYes then
    abort;
  BigMessage('ثبت شد.', 1);
end;

procedure TFormTypesPayF.qryFormTypesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين فرم مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TFormTypesPayF.srcFormTypesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFormTypes.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);
end;

procedure TFormTypesPayF.FormCreate(Sender: TObject);
begin
  inherited;
  pnlCustomer.Visible := not user.PowerUser;
  Panel1.Visible := user.PowerUser;
  BtnInsert.Visible := Panel1.Visible;
  BtnDelete.Visible := Panel1.Visible;
  if not user.PowerUser then
  begin
    tsPrint.PageControl := PageControl2;
    tsContorol.PageControl := PageControl2;
  end;
  try
    qryFormTypes.Active := True;
  except
//    dblkcbb_WorkFlow.Free;
//    qryFormTypes_WorkFlow.Free;
    qryFormTypes.Active := True;
  end;

//  object qryFormTypes_WorkFlow: TStringField
//  FieldKind = fkLookup
//  FieldName = '_WorkFlow'
//  LookupKeyFields = 'id'
//  LookupResultField = 'name'
//  KeyFields = 'WorkFlowID'
//  Size = 255
//  Lookup = True
//end
//object dblkcbb_WorkFlow: TDBLookupComboBox
//  Left = 117
//  Top = 33
//  Width = 396
//  Height = 21
//  Anchors = [akTop, akRight]
//  DataField = '_WorkFlow'
//  DataSource = srcFormTypes
//  TabOrder = 0
//end


end;

procedure TFormTypesPayF.qryFormTypesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryFormTypes) then
    abort;
  TrimStringFields(qryFormTypes);
end;

procedure TFormTypesPayF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormTypes);
end;

procedure TFormTypesPayF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormTypes);
end;

procedure TFormTypesPayF.SpeedButton1Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryFormTypes.fieldbyname('RecalSalaryTypes').AsString;
  if ChooseItemF.SelectChecks(s, 'FormType', IfThen(optP.LanguageDisplay1,
    'FormCaption_L1 ', 'FormCaption_L2 '), ' Pay.FormTypes',
    'where FormType<>' + qryFormTypes.fieldbyname('FormType').AsString) then
  begin
    with qryFormTypes do
    begin
      Edit;
      fieldbyname('RecalSalaryTypes').Value := LeftStr(s, length(s) - 1);
    end; // with
  end; // if
end;

procedure TFormTypesPayF.SpeedButton2Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT  FormType,FormCaption_L1,FormCaption_L2 ' +
    'FROM Pay.FormTypes ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, 'انواع اطلاعات', Txt,
    ['كد اطلاعات', 'عنوان اطلاعات', 'عنوان اطلاعات2'], Results,
    [10, 100, 100], alLeft);
  if s then
  begin
    qryFormTypes.Locate('FormType', Results[0], []);
  end; // if
end;

procedure TFormTypesPayF.pplblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TFormTypesPayF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TFormTypesPayF.ppDBTxtDisplayFormTypeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qryFormTypes.fieldbyname('DisplayFormType').AsInteger of
    0:
      Text := 'ثبت اطلاعات بصورت كلي توسط فرا رايانه ';
    1:
      Text := 'ثبت اطلاعات بصورت كلي توسط كاربر ';
    2:
      Text := 'اطلاعات موثر برحقوق و دستمزد';
    3:
      Text := 'اطلاعات موثر بر حكم كارگزيني';
    4:
      Text := 'عناوين محاسباتي حقوق ، بيمه و ماليات';
    5:
      Text := 'ساير اطلاعات';
  end; // case
end;

procedure TFormTypesPayF.qryFormTypesDetailCodeKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := ComboDetailCodeKind.ItemIndex;
end;

procedure TFormTypesPayF.qryFormTypesCTopicCodeKindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := ComboCTopicCodeKind.ItemIndex;
end;

procedure TFormTypesPayF.qryFormTypesCTopicCode2KindSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := ComboCTopicCode2Kind.ItemIndex;
end;

procedure TFormTypesPayF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFormTypesFormType);
end;

procedure TFormTypesPayF.qryFormTypesFirstAmountActiveGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := CmbFirstAmountActive.Items.strings[(Sender AS TField).AsInteger]
end;

procedure TFormTypesPayF.qryFormTypesFirstAmountActiveSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := CmbFirstAmountActive.ItemIndex;
end;

procedure TFormTypesPayF.qryFormTypesAmount2ActiveGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := CmbAmount2Active.Items.strings[(Sender AS TField).AsInteger]

end;

procedure TFormTypesPayF.qryFormTypesAmount2ActiveSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := CmbAmount2Active.ItemIndex;

end;

procedure TFormTypesPayF.qryFormTypesShowMnuIdGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := cmbShowMnuId.Items.strings[(Sender AS TField).AsInteger]
end;

procedure TFormTypesPayF.qryFormTypesShowMnuIdSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbShowMnuId.ItemIndex;
end;

procedure TFormTypesPayF.AllClickClick(Sender: TObject);
begin
  inherited;
  try
    qryFormTypes.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Name);
  finally
    qryFormTypes.EnableControls;
  end // try
end;

procedure TFormTypesPayF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SearchComponentsF.ShowForms(FormTypespayF, PageControl1);
end;

procedure TFormTypesPayF.ppDBTxtShowMnuIdGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := cmbShowMnuId.Items[qryFormTypes.fieldbyname('ShowMnuId').AsInteger];
end;

procedure TFormTypesPayF.qryFormTypesAmountActiveGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := CmbAmountActive.Items.strings[(Sender AS TField).AsInteger]
end;

procedure TFormTypesPayF.qryFormTypesAmountActiveSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := CmbAmountActive.ItemIndex;
end;

procedure TFormTypesPayF.actMakeFilesExecute(Sender: TObject);
begin
  inherited;
  MakeTableToZip('Pay.FormTypes', DMf.adcSalary);
end;

procedure TFormTypesPayF.actLoadFilesExecute(Sender: TObject);
begin
  inherited;
  qryFormTypes.AfterPost := nil;
  LoadTableFromZip(qryFormTypes, 'Pay.FormTypes', 'FormType', False);
  qryFormTypes.AfterPost := qryFormTypesAfterPost;
end;

procedure TFormTypesPayF.actCopyExecute(Sender: TObject);
var
  qry: TADOQuery;
  i, FormType, FormTypeOld: Integer;
begin
  inherited;
  FormTypeOld := qryFormTypesFormType.AsInteger;
  FormType := GetANewCode('','Pay.FormTypes', 'FormType');
  try
    qry := TADOQuery.Create(Self);
    With qry do
    begin
      Connection := qryFormTypes.Connection;
      SQL.Text := 'SELECT * FROM Pay.FormTypes WHERE (FormType = 0)';
      Active := True;
      Append;
      for i := 0 to Fields.count - 1 do
      begin
        if (qryFormTypes.FindField(Fields[i].FieldName) <> nil) and
          not(qryFormTypes.fieldbyname(Fields[i].FieldName).IsNull) then
          fieldbyname(Fields[i].FieldName).Value :=
            qryFormTypes.fieldbyname(Fields[i].FieldName).Value;
      end;
      fieldbyname('FormType').AsInteger := FormType;
      fieldbyname('FormCaption_L1').AsString := fieldbyname('FormCaption_L1')
        .AsString + ' > ' + IntToStr(FormType);
      Post;
      Active := False;
    end;

  finally
    qry.Free;
    qryFormTypes.Requery();
    qryFormTypes.Locate('FormType', FormType, []);
  end;

end;

procedure TFormTypesPayF.actLoadDifferFilesExecute(Sender: TObject);
begin
  inherited;
  qryFormTypes.AfterPost := nil;
  LoadTableFromZip(qryFormTypes, 'Pay.FormTypes', 'FormType', True);
  qryFormTypes.AfterPost := qryFormTypesAfterPost;
end;

procedure TFormTypesPayF.qryFormTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  LblRecordCount.Caption := IntToStr(DataSet.RecordCount);
end;

procedure TFormTypesPayF.ChkShowMnuPlaceClick(Sender: TObject);
begin
  inherited;
  if not(qryFormTypes.State in dseditmodes) then
    qryFormTypes.Edit;
  qryFormTypes.fieldbyname('ShowMnuPlace').AsString :=
    GetCheckList(ChkShowMnuPlace)
end;

procedure TFormTypesPayF.qryFormTypesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  initCheckList(ChkShowMnuPlace, trim(qryFormTypes.fieldbyname('ShowMnuPlace')
    .AsString));
  // if qryFormTypesFormType.AsInteger = 16 then
  // begin
  // chkPaymentActive.Caption := 'نمایش در فیش';
  // chkPaymentActive.Width := 85;
  // end
  // else
  // begin
  // chkPaymentActive.Caption := 'نمایش مانده از قبل';
  // chkPaymentActive.Width := 106;
  // end;

end;

end.
