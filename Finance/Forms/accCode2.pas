unit accCode2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, StrUtils,
  Menus, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppPrnabl, ppStrtch, ppSubRpt, ppBands, ppCache, ppCtrls, ppVar, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TAccCode2F = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    qry_initForm: TADOQuery;
    srcprvcategories: TDataSource;
    qryprvcategories: TADOQuery;
    qryprvcategoriesTopicCode: TLargeintField;
    qryprvcategoriesMoeenName_L1: TStringField;
    srccategories: TDataSource;
    qry_Categories: TADOQuery;
    qry_CategoriesTopicCode: TLargeintField;
    qry_CategoriesMoeenName_L1: TStringField;
    qry_CategoriesLevelID: TIntegerField;
    qry_CategoriesFinancialID: TIntegerField;
    qry_CategoriesAuditID: TIntegerField;
    qry_CategoriesEssence: TWordField;
    qry_CategoriesReactionForRepEssence: TWordField;
    qry_CategoriesTaxonomyType: TWordField;
    qry_CategoriesTaxonomyTopicCode: TLargeintField;
    qry_CategoriesLastYearTopicCode: TLargeintField;
    qry_CategoriesLastTopicCode: TLargeintField;
    qry_CategoriesAuditReferenceNo: TIntegerField;
    qry_CategoriesAuditReferenceTxt: TStringField;
    qry_CategoriesRecalInterfaceID: TStringField;
    qry_CategoriesBudgetTopicID: TIntegerField;
    qry_CategoriesProjectID: TIntegerField;
    qry_CategoriesmakeDate: TDateTimeField;
    qry_CategoriesPrvTopicCode: TStringField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Button1: TButton;
    btnPrint: TButton;
    btnSort: TButton;
    btnSersh: TButton;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    actDetail: TAction;
    actCtopic: TAction;
    qryprvcategoriesMoeenName_L2: TStringField;
    qry_CategoriesMoeenName_L2: TStringField;
    Panel8: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    pnl_l1: TPanel;
    LabelMoeenName_L1: TLabel;
    DBEditMoeenName_L1: TDBEdit;
    pnl_L2: TPanel;
    LabelMoeenName_L2: TLabel;
    DBEditMoeenName_L2: TDBEdit;
    pnlAidInfoType: TPanel;
    Label4: TLabel;
    cmbAidInfoType: TDBComboBox;
    pnlEssence: TPanel;
    Label5: TLabel;
    cmbEssence: TDBComboBox;
    pnlReactionForRepEssence: TPanel;
    Label6: TLabel;
    cmbReactionForRepEssence: TDBComboBox;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoInfoName_L2: TStringField;
    qryFormsInfoInfoID: TWordField;
    qry_Taxonomy: TADOQuery;
    qry_LastYearTopicCode: TADOQuery;
    qry_FinancialID: TADOQuery;
    qryBudget: TADOQuery;
    qryBudgetBudgetTopicID: TIntegerField;
    qryBudgetBudgetCaption_L1: TStringField;
    qryBudgetBudgetCaption_L2: TStringField;
    qry_AuditID: TADOQuery;
    qry_Categories_CodeLength: TIntegerField;
    qry_Categories_AuditName: TStringField;
    qry_Categories_TaxonomyName: TStringField;
    qry_Categories_FinancialName: TStringField;
    qry_Categories_BudgetTopicName: TStringField;
    qry_Categories_ProjectName: TStringField;
    qryprvcategoriesFinancialID: TIntegerField;
    qryprvcategoriesAuditID: TIntegerField;
    qryprvcategoriesEssence: TWordField;
    qryprvcategoriesReactionForRepEssence: TWordField;
    qryprvcategoriesLastYearTopicCode: TLargeintField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actDeleteReTopic: TAction;
    actDeleteRelCenter: TAction;
    ppDBPipeline2: TppDBPipeline;
    PopPrint: TPopupMenu;
    AllClick: TMenuItem;
    N21: TMenuItem;
    actNoteCtopic: TAction;
    actNoteDetail: TAction;
    FormNote: TBitBtn;
    actNote: TAction;
    N17: TMenuItem;
    N18: TMenuItem;
    N22: TMenuItem;
    qry_CategoriesKindInsertBudgetCode: TIntegerField;
    qryprvcategoriesKindInsertBudgetCode: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    gridTopic: TDBGrid;
    Panel6: TPanel;
    Panel9: TPanel;
    DBNavigator2: TDBNavigator;
    comment2: TBitBtn;
    TabSheet2: TTabSheet;
    GrpBudget: TGroupBox;
    SpeedButton2: TSpeedButton;
    DBEdit11: TDBEdit;
    DBEdit_BudgetTopicName: TDBEdit;
    Panel11: TPanel;
    Label9: TLabel;
    cmbKindInsertBudgetCode: TDBComboBox;
    TabSheet3: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    pnlAuditID: TGroupBox;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    DBEditAuditID: TDBEdit;
    DBEdit13: TDBEdit;
    TabSheet4: TTabSheet;
    PnlLastYear: TGroupBox;
    Label7: TLabel;
    SpeedButton6: TSpeedButton;
    edtLastYearTopicCode: TDBEdit;
    DBEdit3: TDBEdit;
    pnlFinancialID: TGroupBox;
    SpeedButton4: TSpeedButton;
    edtFinancialID: TDBEdit;
    DBEdit6: TDBEdit;
    pnlTaxonomy: TGroupBox;
    Label8: TLabel;
    Label14: TLabel;
    SpeedButton3: TSpeedButton;
    cmbTaxonomyType: TDBComboBox;
    edtTaxonomyTopicCode: TDBEdit;
    DBEdit12: TDBEdit;
    SpeedButton7: TSpeedButton;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine14: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBText5: TppDBText;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine8: TppLine;
    ppSystemVariable1: TppSystemVariable;
    qry_CategoriesAidInfoType: TIntegerField;
    actDetailGroup: TAction;
    BitBtn1: TBitBtn;
    actCtopicGroup: TAction;
    actGetExcel: TAction;
    actCTopic2: TAction;
    actDeleteRelCenter2: TAction;
    actCtopic2Group: TAction;
    qryTopicRange: TADOQuery;
    srcTopicRange: TDataSource;
    qryTopicRangedgid: TIntegerField;
    qryTopicRangetopiccode: TLargeintField;
    qryTopicRangeDGName_L1: TStringField;
    qryTopicRangeDGName_L2: TStringField;
    qryTopicRangeDetailType: TIntegerField;
    qryTopicRangeID: TAutoIncField;
    Panel12: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    qry_CategoriesConstructionPercent: TBCDField;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    qry_CategoriesBudgetPrice: TBCDField;
    TabSheet7: TTabSheet;
    DBGrid4: TDBGrid;
    actBudgetRange: TAction;
    actDeleteBudgetRange: TAction;
    qryBudgetTopiceRange: TADOQuery;
    srcBudgetTopiceRange: TDataSource;
    qryBudgetTopiceRangeBudgetTopicID: TLargeintField;
    qryBudgetTopiceRangeBudgetCaption_L1: TStringField;
    qryBudgetTopiceRangeBudgetCaption_L2: TStringField;
    qryBudgetTopiceRangeTopicCode: TLargeintField;
    PnlBudget: TPanel;
    sbDelete: TSpeedButton;
    BitBtn6: TBitBtn;
    CheckBoxAll: TCheckBox;
    pnlActive: TPanel;
    DBCheckBox1: TDBCheckBox;
    qry_CategoriesActive: TWordField;
    qrySanama: TADOQuery;
    srcSanama: TDataSource;
    qrySanamaTopicCode: TLargeintField;
    qrySanamaFormType: TIntegerField;
    qrySanamaKind: TWordField;
    qrySanamaDefaultValue: TIntegerField;
    GroupBox1: TGroupBox;
    DataSetPost2: TDataSetPost;
    DataSetDelete1: TDataSetDelete;
    qryFormsType: TADOQuery;
    qryFormsTypeFormType: TWordField;
    qryFormsTypeFormCaption: TStringField;
    srcFormsType: TDataSource;
    qrySanama_FormCaption: TStringField;
    grdSanama: TDBGrid;
    DataSetInsert2: TDataSetInsert;
    pnlOkSana: TPanel;
    BitBtn2: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    PopupLevel: TPopupMenu;
    mnuAddLevel: TMenuItem;
    qryTopicRangelevels: TWordField;
    mnuUpdateLevel: TMenuItem;
    qryTopicRangeorglevels: TWordField;
    procedure FormCreate(Sender: TObject);
    procedure qryprvcategoriesAfterScroll(DataSet: TDataSet);
    procedure srccategoriesStateChange(Sender: TObject);
    procedure qry_CategoriesAfterInsert(DataSet: TDataSet);
    procedure qry_CategoriesTaxonomyTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qry_CategoriesTaxonomyTypeSetText(Sender: TField;
      const Text: String);
    procedure qry_CategoriesReactionForRepEssenceGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qry_CategoriesReactionForRepEssenceSetText(Sender: TField;
      const Text: String);
    procedure qry_CategoriesAidInfoTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qry_CategoriesAidInfoTypeSetText(Sender: TField;
      const Text: String);
    procedure qry_CategoriesAfterScroll(DataSet: TDataSet);
    procedure qry_CategoriesBeforePost(DataSet: TDataSet);
    procedure qry_CategoriesBeforeDelete(DataSet: TDataSet);
    procedure qry_CategoriesAfterDelete(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qry_CategoriesEssenceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qry_CategoriesEssenceSetText(Sender: TField; const Text: String);
    procedure cmbAidInfoTypeDropDown(Sender: TObject);
    procedure cmbEssenceDropDown(Sender: TObject);
    procedure cmbReactionForRepEssenceDropDown(Sender: TObject);
    procedure cmbTaxonomyTypeDropDown(Sender: TObject);
    procedure cmbTaxonomyTypeChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actCtopicExecute(Sender: TObject);
    procedure actDetailExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryDetailRangeAfterInsert(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure qry_CategoriesAfterPost(DataSet: TDataSet);
    procedure actDeleteReTopicExecute(Sender: TObject);
    procedure actDeleteRelCenterExecute(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure actNoteDetailExecute(Sender: TObject);
    procedure gridTopicKeyPress(Sender: TObject; var Key: Char);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure actNoteExecute(Sender: TObject);
    procedure qry_CategoriesBeforeInsert(DataSet: TDataSet);
    procedure qry_CategoriesBeforeEdit(DataSet: TDataSet);
    procedure cmbKindInsertBudgetCodeDropDown(Sender: TObject);
    procedure qry_CategoriesKindInsertBudgetCodeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qry_CategoriesKindInsertBudgetCodeSetText(Sender: TField;
      const Text: String);
    procedure actDetailGroupExecute(Sender: TObject);
    procedure actCtopicGroupExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure actCTopic2Execute(Sender: TObject);
    procedure actDeleteRelCenter2Execute(Sender: TObject);
    procedure actCtopic2GroupExecute(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure actDeleteBudgetRangeExecute(Sender: TObject);
    procedure actBudgetRangeExecute(Sender: TObject);
    procedure CheckBoxAllClick(Sender: TObject);
    procedure qrySanamaBeforePost(DataSet: TDataSet);
    procedure qrySanamaKindSetText(Sender: TField; const Text: string);
    procedure qrySanamaKindGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrySanamaDefaultValueSetText(Sender: TField; const Text: string);
    procedure qrySanamaDefaultValueGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrySanamaFormTypeChange(Sender: TField);
    procedure qrySanamaAfterScroll(DataSet: TDataSet);
    procedure qrySanamaAfterInsert(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure mnuAddLevelClick(Sender: TObject);
    procedure mnuUpdateLevelClick(Sender: TObject);
  private
    OldTopic: string;
    FormType: Byte;
    DetailTypeStr: string;
//    Function UseCtopicCode(TopicCode: integer): Boolean;
//    function UseCtopicCode2(TopicCode: integer): Boolean;
    Function UseDetail(TopicCode: integer): Boolean;
    Function UseBudget(TopicCode: integer): Boolean;
//    procedure enabelControlDetail;
    // procedure enableControl;
    procedure initform;
//    procedure LastRecordCtopic;
//    procedure LastRecordDetail;
    procedure initPickList(grid: TDBGrid; columnIndex, value: integer);
    procedure AddUpdateLevel(aAdd: Boolean = False);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccCode2F: TAccCode2F;

implementation

uses Dm, GlobalPro, mmessage, search2, sort2,
  CToplic_Relation, Detail_Relation, Math, CategoresCtopicNote,
  CategoresDetailNote, topicsNote, searchCode_L1_L2, selected, Mymostafa,
  GetExcel, MaliYear, FormFunctions, FaraConsts, CToplic2_Relation,
  CTopic2_AllRelation;
{$R *.dfm}

procedure TAccCode2F.initform;

begin
  with qry_initForm do
  begin
    Active := False;
    Parameters.paramByName('LevelID').value := FormType;
    Active := True;

    Label1.Caption := 'ليست اطلاعات كدينگ حسابها - سطح ' +
      qry_initForm.Fieldbyname('PrvLevelCaption_L1').AsString;
    Label2.Caption := 'ليست اطلاعات كدينگ حسابها - سطح ' +
      qry_initForm.Fieldbyname('LevelCaption_L1').AsString;
    Caption := 'ثبت اطلاعات كدينگ حسابهاي ' +
      Fieldbyname('LevelCaption_L1').AsString;
    lblCaption.Caption := 'ثبت اطلاعات كدينگ حسابهاي ' +
      Fieldbyname('LevelCaption_L1').AsString;
    pnlAidInfoType.Visible := Fieldbyname('AidInfoTypeActive').AsInteger = 1;
    PnlLastYear.Visible := Fieldbyname('AccLastYearActive').AsInteger <> 0;
    pnlFinancialID.Visible := Fieldbyname('FinancialRelationType')
      .AsInteger <> 0;
    pnlTaxonomy.Visible := Fieldbyname('TaxonomyActive').AsInteger <> 0;
    pnlEssence.Visible := Fieldbyname('EssenceSelectable').AsInteger <> 0;
    pnlReactionForRepEssence.Visible := Fieldbyname('ReactionEssenceType')
      .AsInteger <> 0;

    PageControl1.Pages[0].TabVisible := Fieldbyname('DetailsRelationType')
      .AsInteger <> 0;
    PageControl1.Pages[1].TabVisible := Fieldbyname('BudgetRelationType')
      .AsInteger <> 0;
    PageControl1.Pages[2].TabVisible := Fieldbyname('AuditRelationType')
      .AsInteger <> 0;
    PageControl1.Pages[3].TabVisible := PnlLastYear.Visible or
      pnlFinancialID.Visible or pnlTaxonomy.Visible;
    PageControl1.Pages[4].TabVisible := PageControl1.Pages[1].TabVisible;

    PageControl1.Visible := PageControl1.Pages[0].TabVisible or
      PageControl1.Pages[1].TabVisible or PageControl1.Pages[2].TabVisible or
      PageControl1.Pages[3].TabVisible or PageControl1.Pages[4].TabVisible;

    // if PageControl1.Pages[4].TabVisible then
    // with Dmf.qry_Temp do
    // begin
    // CmbFormType.Clear;
    // Active := False;
    // SQL.Text := 'SELECT  FormType, FormCaption FROM  acc.FormTypes ' +
    // 'WHERE (FormType = 11) OR (FormType between 100 and 150)';
    // Active := True;
    // while not eof do
    // begin
    // CmbFormType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
    // Next;
    // end; // while
    // Active := False;
    // end;

    FormNote.Enabled := Fieldbyname('NoteActive').AsInteger <> 0;
  end; // with
  if qry_initForm.Fieldbyname('PrvLevelID').AsString <> '' then
    with qryprvcategories do
    begin
      Close;
      Parameters.paramByName('LevelID').value :=
        qry_initForm.Fieldbyname('PrvLevelID').AsString;
      Open;
    end; // with
end;

procedure TAccCode2F.initPickList(grid: TDBGrid; columnIndex, value: integer);
begin
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT  FormInfoID,InfoName_L1,InfoName_L2 FROM  acc.FormsInfo ' +
      'WHERE FormType=' + IntToStr(value);
    Active := True;
    while not eof do
    begin
      grid.Columns[columnIndex].PickList.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end;
end;

procedure TAccCode2F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  qryFormsInfo.Active := True;
  qryFormsType.Active := True;
  initform;
  // if gv_MultiCompany then
  // gridTopic.Columns[0].Visible := True
  // else
  // gridTopic.Columns[0].Visible := False;
end;

procedure TAccCode2F.qryprvcategoriesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_Categories do
    try
      DisableControls;
      Close;
      Parameters.paramByName('PrvCodelength1').value :=
        qry_initForm.Fieldbyname('prvCodeLength').AsString;
      Parameters.paramByName('LevelID').value :=
        qry_initForm.Fieldbyname('LevelID').AsString;
      Parameters.paramByName('PrvCodelength').value :=
        qry_initForm.Fieldbyname('prvCodeLength').AsString;
      Parameters.paramByName('PrvTopicCode').value :=
        qryprvcategories.Fieldbyname('TopicCode').AsLargeInt;
      Parameters.paramByName('PrvTopicCode2').value :=
        qryprvcategories.Fieldbyname('TopicCode').AsLargeInt;
      Open;
    finally
      EnableControls;
    end;
end;

procedure TAccCode2F.qrySanamaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrySanamaKind.AsInteger := 0;
end;

procedure TAccCode2F.qrySanamaAfterScroll(DataSet: TDataSet);
var
  columnIndex: integer;
begin
  inherited;
  columnIndex := ColumnIndexByFieldName(grdSanama, 'DefaultValue');
  grdSanama.Columns[columnIndex].PickList.Clear;
  if (not(qrySanamaFormType.IsNull)) and (qrySanamaFormType.AsString <> '') then
    initPickList(grdSanama, columnIndex, qrySanamaFormType.AsInteger);
end;

procedure TAccCode2F.qrySanamaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (not(qrySanamaFormType.IsNull)) and (qrySanamaFormType.AsString <> '') then
    if (qrySanamaDefaultValue.IsNull) or (qrySanamaDefaultValue.AsString = '')
    then
    begin
      Warn(qrySanamaDefaultValue.DisplayLabel + ' وارد نشده است');
      Abort;
    end;
  qrySanamaTopicCode.AsLargeInt := qry_CategoriesTopicCode.AsLargeInt;
end;

procedure TAccCode2F.qrySanamaDefaultValueGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
    'InfoName_L1'))
end;

procedure TAccCode2F.qrySanamaDefaultValueSetText(Sender: TField;
  const Text: string);
var
  columnIndex: integer;
begin
  inherited;
  columnIndex := ColumnIndexByFieldName(grdSanama, Sender.FieldName);
  // grdSanama.Columns[ColumnIndex].PickList.Objects[grdSanama.Columns[ColumnIndex].PickList.IndexOf(Text)];
  Sender.AsInteger := integer(grdSanama.Columns[columnIndex].PickList.Objects
    [grdSanama.Columns[columnIndex].PickList.IndexOf(Text)]);
end;

procedure TAccCode2F.qrySanamaFormTypeChange(Sender: TField);
var
  columnIndex: integer;
begin
  inherited;
  columnIndex := ColumnIndexByFieldName(grdSanama, 'DefaultValue');
  grdSanama.Columns[columnIndex].PickList.Clear;
  if (not(Sender.IsNull)) and (Sender.AsString <> '') then
    initPickList(grdSanama, columnIndex, Sender.AsInteger);
end;

procedure TAccCode2F.qrySanamaKindGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if not qrySanamaKind.IsNull then
  begin
    if Sender.AsInteger = 0 then
      Text := 'کدینگ حساب'
    else if Sender.AsInteger = 1 then
      Text := 'کدینگ تفصیلی'
    else if Sender.AsInteger = 2 then
      Text := 'سند حسابداری';
  end;

end;

procedure TAccCode2F.qrySanamaKindSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsInteger := grdSanama.Columns[ColumnIndexByFieldName(grdSanama,
    Sender.FieldName)].PickList.IndexOf(Text);
end;

procedure TAccCode2F.srccategoriesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Categories.State in dsEditModes;
  PnlBudget.Enabled := okPanel.Visible;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  // pnlOkSana.Visible := okPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'Acc.Categories');
end;

procedure TAccCode2F.qry_CategoriesAfterInsert(DataSet: TDataSet);
var
  s: String;
  txt: String;
  id: Largeint;
begin
  inherited;
  s := qryprvcategories.Fieldbyname('TopicCode').AsString;
  txt := 'SELECT MAX(TopicCode) FROM acc.Categories WHERE (LevelID =' +
    qry_initForm.Fieldbyname('LevelID').AsString + ') AND LEFT(TopicCode,' +
    qry_initForm.Fieldbyname('PrvCodeLength').AsString + ') =' + s;
  DataSet.Fieldbyname('LevelId').AsInteger := FormType;
  id := StrToInt64(LeftStr(s + '00000000000000',
    qry_initForm.Fieldbyname('CodeLength').AsInteger)) + 1;
  if DataSet.RecordCount = 0 then
    DataSet.Fieldbyname('TopicCode').AsLargeInt := id
  else
    DataSet.Fieldbyname('TopicCode').AsLargeInt :=
      GetANewCode('', txt, 'TopicCode',dmf.adcAccounting);
  DataSet.Fields.Fieldbyname('AuditID').AsInteger := 0;
  DataSet.Fields.Fieldbyname('FinancialID').AsInteger := 0;
  DataSet.Fieldbyname('makeDate').AsDateTime := Now;

  if initDBComboBoxacc(cmbAidInfoType, 3) > 0 then
    DataSet.Fieldbyname('AidInfoType').AsInteger :=
      integer(cmbAidInfoType.Items.Objects[0]);

  if initDBComboBoxacc(cmbReactionForRepEssence, 4) > 0 then
    DataSet.Fieldbyname('ReactionForRepEssence').AsInteger :=
      integer(cmbReactionForRepEssence.Items.Objects[0]);

  initDBComboBoxacc(cmbEssence, 5);
  DataSet.Fieldbyname('Essence').AsInteger :=
    integer(cmbEssence.Items.Objects[0]);

  if initDBComboBoxacc(cmbKindInsertBudgetCode, 12) > 0 then

    DataSet.Fieldbyname('KindInsertBudgetCode').AsInteger :=
      integer(cmbKindInsertBudgetCode.Items.Objects[0]);

  initDBComboBoxacc(cmbTaxonomyType, 6);
  DataSet.Fieldbyname('TaxonomyType').AsInteger :=
    integer(cmbTaxonomyType.Items.Objects[0]);

  // ------------------ set  AccountRelationPosition------------------------
  with qry_initForm do
  begin
    If Fieldbyname('EssenceSelectable').AsString = '2' then
      DataSet.Fieldbyname('Essence').AsString := qryprvcategories.Fieldbyname
        ('Essence').AsString;
    If Fieldbyname('ReactionEssenceType').AsString = '2' then
      DataSet.Fieldbyname('ReactionForRepEssence').AsString :=
        qryprvcategories.Fieldbyname('ReactionForRepEssence').AsString;
    DataSet.Fieldbyname('LastYearTopicCode').AsString :=
      IfThen(Fieldbyname('AccLastYearActive').AsString = '2',
      qryprvcategories.Fieldbyname('LastYearTopicCode').AsString, '0');
    DataSet.Fieldbyname('FinancialID').AsString :=
      IfThen(Fieldbyname('FinancialRelationType').AsString = '2',
      qryprvcategories.Fieldbyname('FinancialID').AsString, '0');
    DataSet.Fieldbyname('AuditID').AsString :=
      IfThen(Fieldbyname('AuditRelationType').AsString = '2',
      qryprvcategories.Fieldbyname('AuditID').AsString, '0');
  end; // with
  DBEditMoeenName_L1.SetFocus;
end;

procedure TAccCode2F.qry_CategoriesTaxonomyTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  if opt.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L2'));
end;

procedure TAccCode2F.qry_CategoriesTaxonomyTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TAccCode2F.qry_CategoriesReactionForRepEssenceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  if opt.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L2'));
end;

procedure TAccCode2F.qry_CategoriesReactionForRepEssenceSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TAccCode2F.qry_CategoriesAidInfoTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  if opt.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L2'));
end;

procedure TAccCode2F.qry_CategoriesAidInfoTypeSetText(Sender: TField;
  const Text: String);
var
  Cmb: TDBComboBox;
begin
  inherited;
  Cmb := TDBComboBox(FindComponent('Cmb' + Sender.FieldName));
  if Cmb <> nil then
    Sender.AsInteger := integer(Cmb.Items.Objects[Cmb.ItemIndex]);
end;

procedure TAccCode2F.qry_CategoriesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // with qryCTopicRenge do
  // begin
  // Close;
  // Parameters.paramByName('TopicCode').Value :=
  // IfThen(qry_Categories.Fieldbyname('TopicCode').IsNull, 0,
  // qry_Categories.Fieldbyname('TopicCode').AsLargeInt);
  // Open;
  // end; // with

  // with qryCenterTopicAllRange do
  // begin
  // Close;
  // Parameters.paramByName('TopicCode').Value :=
  // IfThen(qry_Categories.Fieldbyname('TopicCode').IsNull, 0,
  // qry_Categories.Fieldbyname('TopicCode').AsLargeInt);
  // Open;
  // end; // with

  // if (DataSet.State in [dsinsert]) and
  // (qry_initForm.Fieldbyname('CenterTopicsRelationType').AsInteger = 2) then
  // LastRecordCtopic;

  // with qryDetailRange do
  // begin
  // Active := False;
  // Parameters.paramByName('TopicCode').Value :=
  // IfThen(qry_Categories.Fieldbyname('TopicCode').IsNull, 0,
  // qry_Categories.Fieldbyname('TopicCode').AsLargeInt);
  // Active := True;
  // end; // with

  // if (DataSet.State in [dsinsert]) and
  // (qry_initForm.Fieldbyname('DetailsRelationType').AsInteger = 2) then
  // begin
  // LastRecordDetail;
  // enabelControlDetail;
  // end;

  with qryTopicRange do
  begin
    Active := False;
    Parameters.paramByName('TopicCode').value :=
      IfThen(qry_Categories.Fieldbyname('TopicCode').IsNull, 0,
      qry_Categories.Fieldbyname('TopicCode').AsLargeInt);
    Active := True;
  end;
  with qryBudgetTopiceRange do
  begin
    Active := False;
    Parameters.paramByName('TopicCode').value :=
      IfThen(qry_Categories.Fieldbyname('TopicCode').IsNull, 0,
      qry_Categories.Fieldbyname('TopicCode').AsLargeInt);
    Active := True;
  end;
  with qrySanama do
  begin
    Close;
    Parameters.paramByName('TopicCode').value :=
      DataSet.Fieldbyname('TopicCode').AsLargeInt;
    Open;
  end;
end;

procedure TAccCode2F.qry_CategoriesBeforePost(DataSet: TDataSet);
var
  prv: string;
begin
  inherited;
  if qry_initForm.Fieldbyname('PrvLevelID').AsInteger <> 0 then
  begin
    prv := LeftStr(qry_Categories.Fieldbyname('TopicCode').AsString,
      qry_initForm.Fieldbyname('PrvCodeLength').AsInteger);
    if prv <> qryprvcategories.Fieldbyname('TopicCode').AsString then
    begin
      Warn('  فيلد وارد شده از نظر  كد سطح بالايي معتبر نمي باشد   ');
      FlashAControl(AccCode2F.DBEdit1);
      Abort;
    end; // if
  end; // if

  if Length(qry_Categories.Fieldbyname('TopicCode').AsString) <>
    qry_Categories.Fieldbyname('_CodeLength').AsInteger then
  begin
    Warn('طول كد حساب معتبر نيست .‏');
    FlashAControl(AccCode2F.DBEdit1);
    Abort;
  end; // if
  if not CheckRequiredFields(qry_Categories) then
  begin
    Abort;
    Exit;
  end; // if
  if (qry_Categories.State = dsEdit) and
    (OldTopic <> qry_CategoriesTopicCode.AsString) then

    if CheckLevel(qry_initForm.Fieldbyname('CodeLength').AsInteger, OldTopic)
    then
    begin
      Warn('به دليل وجود كد زير سطح ,امكان ويرايش وجود ندارد');
      Abort;
    end; // if

end;

procedure TAccCode2F.qry_CategoriesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(DelLevel, FormType) then
    Abort;

  with Dmf.qry_Temp do
  begin
    Close;
    SQL.Text :=
      'SELECT   acc.Documents.TopicCode FROM  acc.Documents INNER JOIN ' +
      ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode ' +
      ' WHERE acc.Categories.TopicCode=' + qry_Categories.Fieldbyname
      ('TopicCode').AsString;
    Open;
    if not(Dmf.qry_Temp.Fieldbyname('TopicCode').IsNull) then
    begin
      Warn('حذف كد مورد نظر مجاز نمي باشد');
      Active := False;
      Abort;
    end; // if
  end; // with

  if CheckLevel(qry_initForm.Fieldbyname('CodeLength').AsInteger,
    qry_CategoriesTopicCode.AsString) then
  begin
    Warn('به دليل وجود كد زير سطح ,امكان حذف وجود ندارد');
    Abort;
  end; // if
  if get_response('آيا براي حذف اين كد حساب مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TAccCode2F.qry_CategoriesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);

end;

procedure TAccCode2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  SaveColWidth(gridTopic);
end;

procedure TAccCode2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  SetColSize(DBGrid2, 1, True);
  SetColSize(gridTopic, 2, True);
end;

procedure TAccCode2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TAccCode2F.qry_CategoriesEssenceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  if opt.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L2'));

end;

procedure TAccCode2F.qry_CategoriesEssenceSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TAccCode2F.cmbAidInfoTypeDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 3);
  if qry_CategoriesAidInfoType.AsString <> '' then
    cmbAidInfoType.Text := VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesAidInfoType.AsInteger, 'InfoName_L1'))
end;

procedure TAccCode2F.cmbEssenceDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 5);
  if qry_CategoriesEssence.AsString <> '' then
    cmbEssence.Text := VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesEssence.AsInteger, 'InfoName_L1'))
end;

procedure TAccCode2F.cmbReactionForRepEssenceDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 4);
  if qry_CategoriesReactionForRepEssence.AsInteger <> 0 then
    cmbReactionForRepEssence.Text :=
      VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesReactionForRepEssence.AsInteger, 'InfoName_L1'))
end;

procedure TAccCode2F.cmbTaxonomyTypeDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 6);
  if qry_CategoriesTaxonomyType.AsString <> '' then
    cmbTaxonomyType.Text := VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesTaxonomyType.AsInteger, 'InfoName_L1'))
end;

procedure TAccCode2F.cmbTaxonomyTypeChange(Sender: TObject);
begin
  inherited;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      ' SELECT TaxonomyTopicCode FROM  acc.Categories WHERE  TopicCode=' +
      qry_Categories.Fieldbyname('TopicCode').AsString;
    Active := True;
    if Fieldbyname('TaxonomyTopicCode').IsNull then
      qry_Categories.Fieldbyname('TaxonomyTopicCode').AsVariant := Null;
    Active := False;
  end; // with
  if ((cmbTaxonomyType.ItemIndex = 2) and (qry_Categories.State in dsEditModes))
  then
    qry_Categories.Fieldbyname('TaxonomyTopicCode').AsInteger :=
      qry_Categories.Fieldbyname('TopicCode').AsLargeInt;
end;

procedure TAccCode2F.SpeedButton6Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;

  txt := 'SELECT TopicCode, MoeenName_L1, MoeenName_L2  ' +
    'FROM  acc.Categories WHERE LevelID=' + qry_Categories.Fieldbyname
    ('levelId').AsString;
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcOldAccounting, 'طبقه بندي ها', txt,
    ['كد طبقه بندي', 'نام طبقه بندي', 'نام طبقه بندي'], Results,
    [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.edit;
    qry_Categories.Fieldbyname('LastYearTopicCode').AsString := Results[0];
  end; // if
end;

procedure TAccCode2F.SpeedButton4Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := ' SELECT acc.FinancialTopics.FinancialCode, acc.FinancialTopics.FinancialName_L1,'
    + ' acc.FinancialTopics.FinancialName_L2 ' +
    ' FROM acc.FinancialTopicsForUse RIGHT OUTER JOIN ' +
    ' acc.FinancialTopics ON acc.FinancialTopicsForUse.PrvFinancialCode = acc.FinancialTopics.FinancialCode'
    + ' WHERE (acc.FinancialTopicsForUse.PrvFinancialCode IS NULL )';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'ترازنامه ها', txt,
    ['كد ترازنامه', 'نام ترازنامه', 'نام ترازنامه'], Results,
    [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.edit;
    qry_Categories['FinancialID'] := Results[0];
  end; // if

end;

procedure TAccCode2F.SpeedButton3Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := 'SELECT TopicCode, MoeenName_L1, MoeenName_L2  ' +
    'FROM  acc.Categories WHERE (LevelID = ' + qry_Categories.Fieldbyname
    ('levelId').AsString + ')';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'طبقه بندي ها', txt,
    ['كد طبقه بندي', 'نام طبقه بندي', 'نام طبقه بندي'], Results,
    [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.edit;
    qry_Categories.Fieldbyname('TaxonomyTopicCode').AsString := Results[0];
  end; // if

end;

procedure TAccCode2F.SpeedButton2Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := 'SELECT acc.BudgetTopics.BudgetTopicID, acc.BudgetTopics.BudgetCaption_L1 , acc.BudgetTopics.BudgetCaption_L2 FROM acc.BudgetTopics '
    + 'LEFT OUTER JOIN acc.BudgetTopicsForUse ON acc.BudgetTopics.BudgetTopicID = acc.BudgetTopicsForUse.PrvBudgetTopicID '
    + 'WHERE (acc.BudgetTopicsForUse.PrvBudgetTopicID IS NULL)';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, ' بودجه ها  ', txt,
    ['كد بودجه', 'نام بودجه', 'نام بودجه زبان 2  '], Results,
    [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.edit;
    qry_Categories['BudgetTopicID'] := Results[0];
  end; // if

end;

procedure TAccCode2F.SpeedButton5Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := 'SELECT     acc.Projects.ProjectID, acc.Projects.ProjectCaption_L1, acc.Projects.ProjectCaption_L2 '
    + 'FROM         acc.Projects LEFT OUTER JOIN acc.ProjectsForUse ON acc.Projects.ProjectID = acc.ProjectsForUse.PrvProjectID '
    + 'WHERE     (acc.ProjectsForUse.PrvProjectID IS NULL)';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, ' پروژه ها  ', txt,
    ['كد پروژه', 'نام پروژه', 'نام پروژه'], Results, [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.edit;
    qry_Categories['ProjectID'] := Results[0];
  end; // if
end;

procedure TAccCode2F.SpeedButton1Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := 'SELECT acc.AuditTopics.AuditCode, acc.AuditTopics.AuditName_L1, acc.AuditTopics.AuditName_L2 '
    + 'FROM         acc.AuditTopics LEFT OUTER JOIN ' +
    'acc.AuditTopicForUse ON acc.AuditTopics.AuditCode = acc.AuditTopicForUse.PrvAuditCode '
    + 'WHERE     (acc.AuditTopicForUse.PrvAuditCode IS NULL)';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, ' كنترل هاي حسابرسي  ',
    txt, ['كد', 'نام كنترل', 'نام كنترل'], Results, [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.edit;
    qry_Categories['AuditID'] := Results[0];
  end; // if
end;

procedure TAccCode2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Categories);
end;

//procedure TAccCode2F.LastRecordCtopic;
//begin
//  // with Dmf.qry_Temp do
//  // begin
//  // Active := False;
//  // SQL.Text := 'SELECT  acc.CenterTopicRange.CTopicCode ';
//  // SQL.Add(' FROM acc.AccTopicLevels AccTopicLevels_1 INNER JOIN');
//  // SQL.Add(' acc.CenterTopicRange ON LEFT(:TopicCode, AccTopicLevels_1.CodeLength) = acc.CenterTopicRange.TopicCode INNER JOIN');
//  // SQL.Add(' acc.AccTopicLevels AccTopicLevels_2 ON AccTopicLevels_1.LevelID = AccTopicLevels_2.PrvLevelID');
//  // SQL.Add(' Where AccTopicLevels_2.LevelID=:LevelID and acc.CenterTopicRange.CTopicCode>0');
//  // SQL.Add(' GROUP BY  AccTopicLevels_2.LevelID, acc.CenterTopicRange.CTopicCode');
//  // Parameters.paramByName('TopicCode').Value :=
//  // qry_Categories.Fieldbyname('TopicCode').AsInteger;
//  // Parameters.paramByName('LevelID').Value := FormType;
//  // Active := True;
//  // while not eof do
//  // begin
//  // qryCTopicRenge.Insert;
//  // qryCTopicRenge.Next;
//  // Next;
//  // end; // while
//  // Active := False;
//  // end; // with
//end;
//
procedure TAccCode2F.actBudgetRangeExecute(Sender: TObject);
var
  s, txt: String;
  LS: TStrings;
  i: integer;
begin
  inherited;
  if not UseBudget(qry_CategoriesTopicCode.AsLargeInt) then
  begin
    Warn('از اين كد در سند حسابداري بدون كد بودجه استفاده شده است و شما مجاز به ايجاد ارتباط نيستيد.‏');
    Exit;
  end;
  txt := Format
    ('SELECT BudgetTopicID, BudgetCaption_L1, BudgetCaption_L2 FROM Acc.BudgetTopics'
    + ' WHERE (LevelID = (SELECT MAX(LevelID) AS Expr1 FROM Acc.BudgetTopicLevels WHERE (TopicType = 0)))'
    + ' AND (BudgetTopicID NOT IN (SELECT BudgetTopicID FROM Acc.BudgetTopicRange WHERE (TopicCode = %d)))',
    [qry_CategoriesTopicCode.AsLargeInt]);

  s := selectedF.ShowSelect(Dmf.adcAccounting, 'انتخاب بودجه', txt,
    ['كد', 'عنوان', ''], alLeft, [5, 300, 5]);

  if s <> EmptyStr then
    with TADOQuery.Create(Self) do
      try
        Connection := Dmf.adcAccounting;
        SQL.Text :=
          'insert into Acc.BudgetTopicRange (BudgetTopicID,TopicCode) values (:BudgetTopicID , :TopicCode)';
        LS := TStringList.Create;
        LS.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
        For i := 0 to LS.Count - 1 do
        begin
          Parameters.paramByName('TopicCode').value :=
            qry_CategoriesTopicCode.AsLargeInt;
          Parameters.paramByName('BudgetTopicID').value := LS[i];
          ExecSQL;
        end;
      finally
        qryBudgetTopiceRange.Requery;
        FreeAndNil(LS);
        Free;
      end;
end;

procedure TAccCode2F.actCTopic2Execute(Sender: TObject);
begin
  inherited;
  // if UseCtopicCode2(qry_Categories.Fieldbyname('TopicCode').AsLargeInt) then
  // begin
  // if qry_Categories.State in [dsinsert] then
  // if get_response('برای ارتباط با تفصیلی 2 2 تغییرات ذخیره شوند ؟') <>
  // mrYes then
  // Abort
  // else
  // qry_Categories.Post;
  // // if not(qry_Categories.State in [dsEdit]) then
  // // qry_Categories.edit;
  // CTopic2_AllRelationF.ShowChooseDetail
  // (qry_Categories.Fieldbyname('TopicCode').AsInteger);
  // qryCenterTopicAllRange.Requery;
  // enabelControlDetail;
  // end
  // else
  // warn('از اين كد در سند حسابداري بدون كد تفصیلی 3 استفاده شده است و شما مجاز به ايجاد ارتباط نيستيد.‏');
end;

procedure TAccCode2F.actCtopic2GroupExecute(Sender: TObject);
// var
// s: String;
// LS: TStrings;
// i: integer;
begin
  inherited;
  // if not UseCtopicCode2(qry_Categories.Fieldbyname('TopicCode').AsLargeInt) then
  // begin
  // warn('از اين كد در سند حسابداري بدون كد تفصیلی 3 استفاده شده است و شما مجاز به ايجاد ارتباط نيستيد.‏');
  // Exit;
  // end;
  // s := selectedF.ShowSelect(Dmf.adcAccounting, 'انتخاب گروه تفصیلی 3',
  // 'SELECT CTopicCode2, CTopicName2_L1 FROM ACC.CTopics2FORUse WHERE (PrvTopicCode IS NULL) AND (CTopicCode2 <> 0)',
  // ['عنوان', 'كد'], alLeft, [40, 300]);
  // if s <> EmptyStr then
  // with TADOQuery.Create(Self) do
  // try
  // Connection := Dmf.adcAccounting;
  // SQL.Text :=
  // Format('INSERT INTO Acc.CenterTopicAllRange(TopicCode, CTopicCode2)' +
  // ' SELECT %d, CTopicCode2 FROM acc.CTopics2FORUse ' +
  // ' WHERE (PrvTopicCode = :GrID) ' +
  // ' AND (CTopicCode2 NOT IN (SELECT CTopicCode2 FROM Acc.CenterTopicAllRange WHERE (TopicCode = %d)))',
  // [qry_CategoriesTopicCode.AsInteger,
  // qry_CategoriesTopicCode.AsInteger]);
  //
  // LS := TStringList.Create;
  // LS.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
  // For i := 0 to LS.Count - 1 do
  // begin
  // Parameters.paramByName('GrID').Value := LS[i];
  // ExecSQL;
  // end;
  // finally
  // qryCenterTopicAllRange.Requery;
  // FreeAndNil(LS);
  // Free;
  // enabelControlDetail;
  // end;
end;

procedure TAccCode2F.actCtopicExecute(Sender: TObject);
begin
  inherited;

  // if UseCtopicCode(qry_Categories.Fieldbyname('TopicCode').AsLargeInt) then
  // begin
  // if qry_Categories.State in [dsinsert] then
  // if get_response('براي ارتباط با تفصیلی 1 تغييرات ذخيره شوند ؟‏') <>
  // mrYes then
  // Abort
  // else
  // qry_Categories.Post;
  // // if not(qry_Categories.State in [dsEdit]) then
  // // qry_Categories.edit;
  // CToplic_RelationF.ShowChooseDetail(qry_Categories.Fieldbyname('TopicCode')
  // .AsInteger);
  // qryCTopicRenge.Requery;
  // enabelControlDetail;
  // end
  // else
  // warn('از اين كد در سند حسابداري بدون كد تفصیلی 1 استفاده شده است و شما مجاز به ايجاد ارتباط نيستيد.‏');
end;

procedure TAccCode2F.actDetailExecute(Sender: TObject);
begin
  inherited;
  // if UseDetail(qry_Categories.Fieldbyname('TopicCode').AsLargeInt) then
  // begin
  // if qry_Categories.State in [dsinsert] then
  // qry_Categories.Post;
  // if not(qry_Categories.State in [dsEdit]) then
  // qry_Categories.edit;
  // Detail_RelationF.ShowChooseDetail(qry_CategoriesTopicCode.AsInteger);
  // qryDetailRange.Requery;
  // enabelControlDetail;
  // end
  // else
  // warn('از اين كد در سند حسابداري بدون كد تفصيلي استفاده شده است و شما مجاز به ايجاد ارتباط نيستيد.‏');
end;

procedure TAccCode2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Categories);
end;

procedure TAccCode2F.qryDetailRangeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // qryDetailRange.Fieldbyname('DetailCode').AsInteger :=
  // Dmf.qry_Temp.Fieldbyname('DetailCode').AsInteger;
  // qryDetailRange.Fieldbyname('TopicCode').AsLargeInt :=
  // qry_Categories.Fieldbyname('TopicCode').AsLargeInt;

end;

//procedure TAccCode2F.LastRecordDetail;
//begin
//  // with Dmf.qry_Temp do
//  // begin
//  // Active := False;
//  // SQL.Text :=
//  // 'SELECT acc.DetailRange.TopicCode, acc.DetailRange.DetailCode, AccTopicLevels_1.CodeLength';
//  // SQL.Add('FROM acc.AccTopicLevels INNER JOIN');
//  // SQL.Add('acc.AccTopicLevels AccTopicLevels_1 ON acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID INNER JOIN  ');
//  // SQL.Add('acc.DetailRange ON LEFT(:TopicCode, AccTopicLevels_1.CodeLength) = acc.DetailRange.TopicCode');
//  // SQL.Add('WHERE (acc.AccTopicLevels.LevelID =:LevelID) and acc.DetailRange.DetailCode<>0');
//  // Parameters.paramByName('TopicCode').Value :=
//  // qry_Categories.Fieldbyname('TopicCode').AsInteger;
//  // Parameters.paramByName('LevelID').Value := FormType;
//  // Active := True;
//  // while not eof do
//  // begin
//  // qryDetailRange.Insert;
//  // qryDetailRange.Next;
//  // Next;
//  // end; // while
//  // Active := False;
//  // end; // with
//
//end;

procedure TAccCode2F.mnuAddLevelClick(Sender: TObject);
begin
  inherited;
  AddUpdateLevel(True);
end;

procedure TAccCode2F.mnuUpdateLevelClick(Sender: TObject);
begin
  inherited;
  AddUpdateLevel(False);
end;

procedure TAccCode2F.AddUpdateLevel(aAdd: Boolean);
var
  qry: TADOQuery;
  s: string;
begin
  qry := TADOQuery.Create(Self);
  try
    with qry do
    begin
      s := get_box('', 'لطفا کد سطح را وارد کنید :', '');
      if string.IsNullOrEmpty(s) then
      begin
        Warn('لطفا کد سطح را وارد کنید');
        Exit;
      end;
      Connection := theMainConnection;
      if aAdd then

        SQL.Text :=
          'insert into Acc.TopicRange (TopicCode,DGID,levels) values (:TopicCode,:GrID,:levels)'
      else
        SQL.Text :=
          'Update Acc.TopicRange set levels = :levels where TopicCode=:TopicCode and DGID=:GrID and levels=:lv';
      Parameters.paramByName('TopicCode').value :=
        qryTopicRangetopiccode.AsString;
      Parameters.paramByName('GrID').value := qryTopicRangedgid.AsString;
      Parameters.paramByName('levels').value := s;
      if not aAdd then
        Parameters.paramByName('lv').value := qryTopicRangeorglevels.AsInteger;
      ExecSQL;
      qryTopicRange.Requery();
      BigMessage('با موفقیت انجام شد', 1);
    end;
  finally
    qry.Free;
  end;
end;

procedure TAccCode2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TAccCode2F.qry_CategoriesAfterPost(DataSet: TDataSet);
begin
  inherited;
  try
    // qryCTopicRenge.UpdateBatch(arAll);
    // qryDetailRange.UpdateBatch(arAll);
    // qryCenterTopicAllRange.UpdateBatch(arAll);
    AddCoding(1, DataSet.Fieldbyname('TopicCode').AsLargeInt);
  finally
    BigMessage('ثبـت شد.', 1);
  end; // finally
  if qry_Categories.RecordCount <> 0 then
  begin

  end;
end;

procedure TAccCode2F.actDeleteReTopicExecute(Sender: TObject);
begin
  inherited;
  if opta.CheckRelation then
    if CheckRelationDetail(qryTopicRangedgid.AsInteger,
      qry_CategoriesTopicCode.AsInteger, qryTopicRangelevels.AsInteger) then
    begin
      Warn('حذف كد مورد نظر مجاز نمي باشد', mtError);
      Abort;
    end; // if
  if get_response('آيا براي حذف ارتباط مطمئن هستيد؟', clRed) = mrYes then
    Dmf.adcAccounting.Execute('Delete FROM   acc.TopicRange where ID=' +
      qryTopicRangeID.AsString);
  qryTopicRange.Requery();
end;

procedure TAccCode2F.actDeleteBudgetRangeExecute(Sender: TObject);
begin
  inherited;
  if qryBudgetTopiceRange.RecordCount <> 0 then
    if get_response('آيا براي حذف ارتباط مطمئن هستيد؟') = mrYes then
      Dmf.adcAccounting.Execute
        ('Delete FROM acc.BudgetTopicRange  where BudgetTopicID=' +
        qryBudgetTopiceRangeBudgetTopicID.AsString + ' and TopicCode=' +
        qry_CategoriesTopicCode.AsString);
  qryBudgetTopiceRange.Requery();
end;

procedure TAccCode2F.actDeleteRelCenter2Execute(Sender: TObject);
begin
  inherited;
  // with Dmf.qry_Temp do
  // begin
  // Active := False;
  // SQL.Text :=
  // Format('SELECT TopicCode FROM ACC.Documents WHERE ( TopicCode = %d ) AND ( CTopicCode2 = %d )',
  // [qry_Categories.Fieldbyname('TopicCode').AsInteger,
  // qryCenterTopicAllRange.Fieldbyname('CTopicCode2').AsInteger]);
  // Active := True;
  // if not(Fields[0].IsNull) then
  // begin
  // warn('حذف كد مورد نظر مجاز نمي باشد');
  // Active := False;
  // Abort;
  // end; // if
  // end; // with
  // if get_response('آيا براي حذف ارتباط مطمئن هستيد؟') = mrYes then
  // with qryCenterTopicAllRange do
  // begin
  // Delete;
  // UpdateBatch();
  // Requery();
  // end;

end;

procedure TAccCode2F.actDeleteRelCenterExecute(Sender: TObject);
begin
  inherited;
  // with Dmf.qry_Temp do
  // begin
  // Active := False;
  // SQL.Text := 'SELECT TopicCode FROM acc.Documents ' + ' WHERE TopicCode=' +
  // qry_Categories.Fieldbyname('TopicCode').AsString + ' AND CTopicCode=' +
  // qryCTopicRenge.Fieldbyname('CTopicCode').AsString;
  // Active := True;
  // if not(Dmf.qry_Temp.Fieldbyname('TopicCode').IsNull) then
  // begin
  // warn('حذف كد مورد نظر مجاز نمي باشد');
  // Active := False;
  // Abort;
  // end; // if
  // end; // with
  // if get_response('آيا براي حذف ارتباط مطمئن هستيد؟') = mrYes then
  // with qryCTopicRenge do
  // begin
  // Delete;
  // UpdateBatch();
  // Requery();
  // end;
end;

procedure TAccCode2F.AllClickClick(Sender: TObject);
begin
  inherited;
  try
    qry_Categories.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, nil, nil);
  finally
    qry_Categories.EnableControls;
  end; // try
end;

procedure TAccCode2F.BitBtn6Click(Sender: TObject);
// var
// s, txt: String;
// LS: TStrings;
// i: integer;
begin
  // inherited;
  // if not UseBudget(qry_CategoriesTopicCode.AsLargeInt) then
  // begin
  // warn('از اين كد در سند حسابداري بدون كد بودجه استفاده شده است و شما مجاز به ايجاد ارتباط نيستيد.‏');
  // Exit;
  // end;
  // txt := Format
  // (' SELECT Acc.BudgetTopicRange.BudgetTopicID, Acc.BudgetTopics.BudgetCaption_L1, Acc.BudgetTopics.BudgetCaption_L2'
  // + ' FROM Acc.BudgetTopicRange INNER JOIN' +
  // ' Acc.BudgetTopics ON Acc.BudgetTopicRange.BudgetTopicID = Acc.BudgetTopics.BudgetTopicID'
  // + ' WHERE (Acc.BudgetTopicRange.BudgetTopicID NOT IN' +
  // ' (SELECT BudgetTopicID FROM Acc.BudgetTopicRange AS BudgetTopicRange_1' +
  // ' WHERE (TopicCode = %d)))', [qry_CategoriesTopicCode.AsLargeInt]);
  //
  // s := selectedF.ShowSelect(Dmf.adcAccounting, 'انتخاب بودجه', txt,
  // ['كد', 'عنوان', 'Caption'], alLeft, [25, 350, 300]);
  //
  // if s <> EmptyStr then
  // with TADOQuery.Create(Self) do
  // try
  // Connection := Dmf.adcAccounting;
  // SQL.Text :=
  // 'insert into Acc.BudgetTopicRange (BudgetTopicID,TopicCode) values (:BudgetTopicID , :TopicCode)';
  // LS := TStringList.Create;
  // LS.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
  // For i := 0 to LS.Count - 1 do
  // begin
  // Parameters.paramByName('TopicCode').Value :=
  // qry_CategoriesTopicCode.AsLargeInt;
  // Parameters.paramByName('BudgetTopicID').Value := LS[i];
  // ExecSQL;
  // end;
  // finally
  // qryBudgetTopiceRange.Requery;
  // FreeAndNil(LS);
  // Free;
  // end;

end;

procedure TAccCode2F.CheckBoxAllClick(Sender: TObject);
begin
  inherited;
  if CheckBoxAll.Checked then
  begin
    qryprvcategories.AfterScroll := nil;
    with Dmf.qry_Temp do
    begin
      Close;
      SQL.Text := 'select min(TopicCode),max(TopicCode) FROM Acc.Categories ' +
        ' WHERE (LevelID =:LevelID )';
      Parameters.paramByName('LevelID').value :=
        qryprvcategories.Parameters.paramByName('LevelID').value;
      Open;
      with qry_Categories, Parameters do
      begin
        Close;
        paramByName('PrvTopicCode').value := Dmf.qry_Temp.Fields[0].AsLargeInt;
        paramByName('PrvTopicCode2').value := Dmf.qry_Temp.Fields[1].AsLargeInt;
        Open;
      end;
      Close;
    end;
  end
  else
  begin
    qryprvcategories.AfterScroll := qryprvcategoriesAfterScroll;
    qryprvcategoriesAfterScroll(qryprvcategories);
  end;
end;

procedure TAccCode2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TAccCode2F.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TAccCode2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryprvcategories.Fieldbyname('TopicCode'));
end;

procedure TAccCode2F.DBGrid2DblClick(Sender: TObject);
var
  LevelID: integer;
  TopicCode: Largeint;
begin
  inherited;
  if qry_Categories.RecordCount > 0 then
  begin
    TopicCode := qry_CategoriesTopicCode.AsLargeInt;
    with Dmf.qry_Temp do
    begin
      Close;
      SQL.Text := 'Select top 1 LevelID from acc.AccTopicLevels ';
      SQL.add('where (TopicType = 0) and (LevelID>' + FormType.ToString + ')');
      SQL.add('order by TopicType, LevelID');
      Open;
      LevelID := Fields[0].AsInteger;
      Close;
    end;
    if LevelID > 0 then
    begin
      CreateMDIForm2(TAccCode2F, AccCode2F, Self, LevelID);
      AccCode2F.qryprvcategories.Locate('TopicCode', TopicCode, []);
    end;
  end;
end;

procedure TAccCode2F.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Categories.Fieldbyname('TopicCode'));
end;

procedure TAccCode2F.actNoteDetailExecute(Sender: TObject);
begin
  inherited;
  // CategoresDetailNoteF.Enter(qry_CategoriesTopicCode.AsInteger,
  // qryDetailRangeDetailCode.AsInteger, qryDetailRangeCompanyCode.AsInteger);
end;

// procedure TAccCode2F.enableControl;
// begin
// buttonCtopic.Enabled := qry_Categories.RecordCount<>0;
// buttonDetail.Enabled:=buttonCtopic.Enabled;
// actDeleteReTopic.Enabled:=buttonCtopic.Enabled;
// actDeleteRelCenter.Enabled:=buttonCtopic.Enabled;
// comment1.Enabled:=buttonCtopic.Enabled;
// comment2.Enabled:=buttonCtopic.Enabled;
// enabelControlDetail
//
// end;

//procedure TAccCode2F.enabelControlDetail;
//begin
//  actDeleteReTopic.Enabled := qryTopicRange.RecordCount <> 0;
//  comment2.Enabled := actDeleteReTopic.Enabled;
//  // actDeleteRelCenter.Enabled := qryCTopicRenge.RecordCount <> 0;
//  // comment1.Enabled := actDeleteRelCenter.Enabled;
//
//end;

procedure TAccCode2F.gridTopicKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryTopicRange.Fieldbyname('dgid'));
end;

procedure TAccCode2F.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + qry_initForm.Fieldbyname('LevelCaption_L1').AsString;
end;

procedure TAccCode2F.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAccCode2F.actNoteExecute(Sender: TObject);
begin
  inherited;
  topicsNoteF.Enter(qry_Categories.Fieldbyname('TopicCode').AsLargeInt);
end;

procedure TAccCode2F.qry_CategoriesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(AddLevel, FormType) then
    Abort;
end;

procedure TAccCode2F.qry_CategoriesBeforeEdit(DataSet: TDataSet);
var
  i: integer;
  ReadOnly: Boolean;
begin
  inherited;
  if not Dmf.CheckLevel(EdtLevel, FormType) then
    Abort;
  OldTopic := qry_CategoriesTopicCode.AsString;

  if MultiMaliYear then
  begin
    with Dmf.qry_Temp do
    begin
      Active := False;
      SQL.Text :=
        Format('SELECT COUNT(*) FROM Acc.Documents WHERE (TopicCode = %d)' +
        ' AND (YearID <> %d) ', [qry_CategoriesTopicCode.AsLargeInt,
        APPBank.Year]);
      Active := True;
      ReadOnly := Fields[0].AsInteger > 0;
      for i := 0 to qry_Categories.FieldCount - 1 do
      begin
        qry_Categories.Fields[i].ReadOnly := ReadOnly;
      end;

      if ReadOnly then
      begin
        qry_CategoriesAidInfoType.ReadOnly := False;
        qry_CategoriesActive.ReadOnly := False;
        Warn('به دلیل استفاده از این کد در سالهای گذشته تنها بعضی گزینه ها قابل ویرایش می باشد.');
      end;

      Active := False;
    end;
  end;

end;

procedure TAccCode2F.cmbKindInsertBudgetCodeDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 12);
  if qry_CategoriesKindInsertBudgetCode.AsString <> '' then
    cmbKindInsertBudgetCode.Text :=
      VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesKindInsertBudgetCode.AsInteger, 'InfoName_L1'));

end;

procedure TAccCode2F.qry_CategoriesKindInsertBudgetCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  if opt.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L2'));

end;

procedure TAccCode2F.qry_CategoriesKindInsertBudgetCodeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);

end;

procedure TAccCode2F.actDetailGroupExecute(Sender: TObject);
var
  s: String;
  LS: TStrings;
  i: integer;
begin
  inherited;
  if UseDetail(qry_Categories.Fieldbyname('TopicCode').AsLargeInt) then
  begin
    Warn('از اين كد در سند حسابداري بدون كد تفصيلي استفاده شده است و شما مجاز به ايجاد ارتباط نيستيد.‏');
    Exit;
  end;

  s := selectedF.ShowSelect(Dmf.adcAccounting, 'انتخاب گروه تفصيلي',
    'SELECT DGID,DGName_L1,DetailType,StartRange,EndRange FROM acc.DetailGroups '
    + ' WHERE DGID NOT IN (SELECT DGID FROM Acc.TopicRange WHERE Acc.TopicRange.TopicCode='
    + IntToStr(qry_CategoriesTopicCode.AsLargeInt) + ') and DetailType in (' +
    DetailTypeStr + ')', ['كد', 'عنوان', 'سطح', 'شروع محدوده', 'پایان محدوده'],
    alLeft, [25, 350, 40, 100, 100]);
  if s <> EmptyStr then
    with TADOQuery.Create(Self) do
      try
        Connection := Dmf.adcAccounting;
        SQL.Text :=
          'insert into Acc.TopicRange (TopicCode,DGID) values (:TopicCode,:GrID)';

        // SQL.Text :=
        // 'INSERT INTO acc.DetailRange (DetailCode, CompanyCode,TopicCode)';
        // SQL.Add('SELECT DetailCode, CompanyCode,:TopicCode FROM (SELECT acc.Details.DetailCode, acc.Details.CompanyCode');
        // SQL.Add('FROM acc.Details CROSS JOIN acc.DetailGroups WHERE (acc.Details.DetailCode BETWEEN acc.DetailGroups.StartRange AND');
        // SQL.Add('acc.DetailGroups.EndRange) AND (acc.DetailGroups.DGID = :GrID)) AS QDetail');
        // SQL.Add('WHERE (DetailCode NOT IN (SELECT DetailCode FROM acc.DetailRange WHERE (TopicCode = :TopicCode2)))');

        LS := TStringList.Create;
        LS.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
        For i := 0 to LS.Count - 1 do
        begin
          Parameters.paramByName('TopicCode').value :=
            qry_Categories.Fieldbyname('TopicCode').AsString;
          // Parameters.paramByName('TopicCode2').Value :=
          // qry_Categories.Fieldbyname('TopicCode').AsString;
          Parameters.paramByName('GrID').value := LS[i];
          ExecSQL;
        end;
      finally
        // enabelControlDetail;
        qryTopicRange.Requery;
        FreeAndNil(LS);
        Free;
      end;

end;

procedure TAccCode2F.actCtopicGroupExecute(Sender: TObject);
// var
// s: String;
// LS: TStrings;
// i: integer;
begin
  inherited;
  // if not UseCtopicCode(qry_Categories.Fieldbyname('TopicCode').AsLargeInt) then
  // begin
  // warn('از اين كد در سند حسابداري بدون كد تفصیلی 1 استفاده شده است و شما مجاز به ايجاد ارتباط نيستيد.‏');
  // Exit;
  // end;
  // s := selectedF.ShowSelect(Dmf.adcAccounting, 'انتخاب گروه تفصیلی 1',
  // 'SELECT CTopicCode, CTopicName_L1 FROM acc.CTopicsForUse WHERE (PrvTopicCode IS NULL) AND (CTopicCode <> 0)',
  // ['عنوان', 'كد'], alLeft, [40, 300]);
  // if s <> EmptyStr then
  // with TADOQuery.Create(Self) do
  // try
  // Connection := Dmf.adcAccounting;
  // SQL.Text := 'INSERT INTO acc.CenterTopicRange (TopicCode,CTopicCode)';
  // SQL.Add('SELECT :TopicCode,CTopicCode FROM acc.CTopicsForUse');
  // SQL.Add('WHERE (PrvTopicCode = :GrID) AND (CTopicCode NOT IN (SELECT CTopicCode');
  // SQL.Add('FROM acc.CenterTopicRange WHERE (TopicCode = :TopicCode2)))');
  //
  // LS := TStringList.Create;
  // LS.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
  // For i := 0 to LS.Count - 1 do
  // begin
  // Parameters.paramByName('TopicCode').Value :=
  // qry_Categories.Fieldbyname('TopicCode').AsString;
  // Parameters.paramByName('TopicCode2').Value :=
  // qry_Categories.Fieldbyname('TopicCode').AsString;
  // Parameters.paramByName('GrID').Value := LS[i];
  // ExecSQL;
  // end;
  // finally
  //
  // qryCTopicRenge.Requery;
  // FreeAndNil(LS);
  // Free;
  // enabelControlDetail;
  // end;

end;

//function TAccCode2F.UseCtopicCode(TopicCode: integer): Boolean;
//begin
//  with TADOQuery.Create(Self) do
//    try
//      Connection := Dmf.adcAccounting;
//      SQL.Text :=
//        'SELECT 1 AS UseTopic FROM acc.Documents GROUP BY TopicCode,YearID';
//      SQL.add('HAVING max(CTopicCode) = 0 And (TopicCode =:TP) And (YearID = :Year)');
//
//      Parameters.paramByName('TP').value := TopicCode;
//      Parameters.paramByName('Year').value := APPBank.Year;
//      Open;
//      Result := IsEmpty;
//    finally
//      Free;
//    end;
//end;

//function TAccCode2F.UseCtopicCode2(TopicCode: integer): Boolean;
//begin
//  with TADOQuery.Create(Self) do
//    try
//      Connection := Dmf.adcAccounting;
//      SQL.Text :=
//        Format('SELECT 1 AS UseTopic FROM acc.Documents GROUP BY TopicCode,YearID '
//        + ' HAVING MAX(CTopicCode2) = 0 And (TopicCode = %d ) And (YearID = %d )',
//        [TopicCode, APPBank.Year]);
//      Open;
//      Result := IsEmpty;
//    finally
//      Free;
//    end;
//end;

function TAccCode2F.UseDetail(TopicCode: integer): Boolean;
  function hasDetail(FieldID: integer): Boolean;
  var
    FieldName: string;
  begin
    with TADOQuery.Create(Self) do
      try
        case FieldID of
          1:
            FieldName := 'DetailCode';
          2:
            FieldName := 'CTopicCode';
          3:
            FieldName := 'CTopicCode2';
          4:
            FieldName := 'ctopiccode3';
        end;
        Connection := Dmf.adcAccounting;
        SQL.Text :=
          'SELECT 1 AS UseTopic FROM acc.Documents GROUP BY TopicCode,YearID ';
        SQL.add(' HAVING max(' + FieldName +
          ') = 0 And (TopicCode = :TP) And (YearID = :Year)');
        Parameters.paramByName('TP').value := TopicCode;
        Parameters.paramByName('Year').value := APPBank.Year;
        Open;
        Result := not IsEmpty;
        if not Result then
          DetailTypeStr := DetailTypeStr + ',' + IntToStr(FieldID);
      finally
        Free;
      end;
  end;

begin
  DetailTypeStr := EmptyStr;
  Result := hasDetail(1);
  if opta.ActiveCtopic1 then
    Result := (hasDetail(2)) and (Result);
  if opta.ActiveCtopic2 then
    Result := (hasDetail(3)) and (Result);
  if Dmf.ReadBankConfigAcc('CTopicCode3Active') = '1' then
    Result := (hasDetail(4)) and (Result);
  if DetailTypeStr <> EmptyStr then
    DetailTypeStr := RightStr(DetailTypeStr, Length(DetailTypeStr) - 1);
end;

function TAccCode2F.UseBudget(TopicCode: integer): Boolean;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := Dmf.adcAccounting;
      SQL.Text :=
        'SELECT 1 AS UseTopic FROM acc.Documents GROUP BY TopicCode,YearID ';
      SQL.add(' HAVING max(BudgetTopicID) = 0 And (TopicCode = :TP) And (YearID = :Year)');
      Parameters.paramByName('TP').value := TopicCode;
      Parameters.paramByName('Year').value := APPBank.Year;
      Open;
      Result := IsEmpty;
    finally
      Free;
    end;
end;

procedure TAccCode2F.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qry_Categories);
end;

end.

