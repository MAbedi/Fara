unit Categories;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DBCtrls, ComCtrls, Grids, Vcl.DBGrids, ppDB,
  ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TCategoriesF = class(Ttemplate2MDIF)
    src_Categories: TDataSource;
    qry_Categories: TADOQuery;
    qry_CategoriesTopicCode: TLargeintField;
    qry_CategoriesMoeenName_L1: TStringField;
    qry_CategoriesLevelID: TIntegerField;
    qry_CategoriesFinancialID: TIntegerField;
    qry_CategoriesAuditID: TIntegerField;
    qry_CategoriesEssence: TWordField;
    qry_CategoriesTaxonomyType: TWordField;
    qry_CategoriesTaxonomyTopicCode: TLargeintField;
    qry_CategoriesLastYearTopicCode: TLargeintField;
    qry_CategoriesLastTopicCode: TLargeintField;
    qry_CategoriesAidInfoType: TWordField;
    qry_CategoriesAuditReferenceNo: TIntegerField;
    qry_CategoriesAuditReferenceTxt: TStringField;
    qry_CategoriesBudgetTopicID: TIntegerField;
    qry_CategoriesProjectID: TIntegerField;
    qry_CategoriesReactionForRepEssence: TWordField;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    gridTopic: TDBGrid;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    actSendToExcel: TAction;
    BitBtn3: TBitBtn;
    qry_DetailRange: TADOQuery;
    qry_DetailRangeDetailCode: TIntegerField;
    src_DetailRange: TDataSource;
    Panel4: TPanel;
    actDetailRelation: TAction;
    Panel5: TPanel;
    actCToplicRelation: TAction;
    qry_CTopicRange: TADOQuery;
    src_CTopicRange: TDataSource;
    qry_CTopicRangeCTopicCode: TIntegerField;
    qryBudget: TADOQuery;
    qry_Categories_BudgetTopicName_L1: TStringField;
    qry_CategoriesmakeDate: TDateTimeField;
    qry_CategoriesDetailsRelation: TBooleanField;
    qry_CategoriesMoeenName_L2: TStringField;
    qry_Categories_CodeLength: TIntegerField;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoInfoName_L2: TStringField;
    qry_AuditID: TADOQuery;
    qry_Categoriesqry_AuditName: TStringField;
    qry_Taxonomy: TADOQuery;
    qry_Categories_TaxonomyName: TStringField;
    qry_LastYearTopicCode: TADOQuery;
    qry_FinancialID: TADOQuery;
    qry_Categories_FinancialName: TStringField;
    qryFormsInfoInfoID: TWordField;
    btnSearch_: TBitBtn;
    BitBtn12: TBitBtn;
    actSort: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    BitBtn4: TBitBtn;
    actPrint: TAction;
    pnlFinancialID: TGroupBox;
    DBEdit10: TDBEdit;
    SpeedButton4: TSpeedButton;
    PnlLastYear: TGroupBox;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    SpeedButton6: TSpeedButton;
    PnlTaxonomy: TGroupBox;
    SpeedButton3: TSpeedButton;
    DBEdit8: TDBEdit;
    grpAuditID: TGroupBox;
    Label8: TLabel;
    DBEditAuditID: TDBEdit;
    SpeedButton1: TSpeedButton;
    gridCtopic: TDBGrid;
    qry_Categories_LastYearTopicCodeName: TStringField;
    cmbTaxonomyType: TDBComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit12: TDBEdit;
    qry_CTopicRangeTopicCode: TLargeintField;
    qryBudgetBudgetTopicID: TIntegerField;
    qryBudgetBudgetCaption_L1: TStringField;
    qryBudgetBudgetCaption_L2: TStringField;
    GrpBudget: TGroupBox;
    DBEdit11: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit_BudgetTopicName: TDBEdit;
    pnlReactionForRepEssence: TPanel;
    Label5: TLabel;
    cmbReactionForRepEssence: TDBComboBox;
    pnlEssence: TPanel;
    Label13: TLabel;
    cmbEssence: TDBComboBox;
    pnlAidInfoType: TPanel;
    Label4: TLabel;
    cmbAidInfoType: TDBComboBox;
    pnl_L2: TPanel;
    LabelMoeenName_L2: TLabel;
    DBEditMoeenName_L2: TDBEdit;
    pnl_l1: TPanel;
    LabelMoeenName_L1: TLabel;
    DBEditMoeenName_L1: TDBEdit;
    Panel8: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    qry_CenterTopics: TADOQuery;
    qry_CenterTopicsCTopicCode: TIntegerField;
    qry_CenterTopicsCTopicName_L1: TStringField;
    qry_CenterTopicsCTopicName_L2: TStringField;
    qry_CTopicRange_CtopicName: TStringField;
    qry_CTopicRange_cTopicName_l2: TStringField;
    qry_DetailRangeTopicCode: TLargeintField;
    PopPrint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    DataSetDelete1: TDataSetDelete;
    DataSetDelete2: TDataSetDelete;
    actCTopicNote: TAction;
    actDetailNote: TAction;
    Panel7: TPanel;
    buttonDetail: TBitBtn;
    buttondelete1: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel9: TPanel;
    buttonCtopic: TBitBtn;
    buttondelete2: TBitBtn;
    DBNavigator2: TDBNavigator;
    qry_initForm: TADOQuery;
    FormNote: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actNote: TAction;
    comment1: TBitBtn;
    comment2: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLine7: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppDBText3: TppDBText;
    ppLine5: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel5: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    Panel6: TPanel;
    cmbKindInsertBudgetCode: TDBComboBox;
    Label2: TLabel;
    qry_CategoriesKindInsertBudgetCode: TIntegerField;
    qry_DetailRangecompanyCode: TIntegerField;
    qry_DetailRange_DetailName_L1: TStringField;
    qry_DetailRange_DetailName_L2: TStringField;
    actDesign: TAction;
    ppSystemVariable2: TppSystemVariable;
    Panel10: TPanel;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    qry_CategoriesConstructionPercent: TBCDField;
    procedure qry_CategoriesAidInfoTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qry_CategoriesAidInfoTypeSetText(Sender: TField;
      const Text: String);
    procedure qry_CategoriesReactionForRepEssenceGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qry_CategoriesReactionForRepEssenceSetText(Sender: TField;
      const Text: String);
    procedure src_CategoriesStateChange(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actDetailRelationExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qry_CategoriesAfterInsert(DataSet: TDataSet);
    procedure actCToplicRelationExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qry_CategoriesBeforeDelete(DataSet: TDataSet);
    procedure qry_CategoriesAfterPost(DataSet: TDataSet);
    procedure qry_CategoriesTaxonomyTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qry_CategoriesTaxonomyTypeSetText(Sender: TField;
      const Text: String);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qry_CategoriesBeforePost(DataSet: TDataSet);
    procedure cmbAidInfoTypeDropDown(Sender: TObject);
    procedure qry_CategoriesEssenceSetText(Sender: TField; const Text: String);
    procedure qry_CategoriesEssenceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cmbReactionForRepEssenceDropDown(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qry_CategoriesAfterScroll(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure cmbEssenceDropDown(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure qry_CategoriesTopicCodeChange(Sender: TField);
    procedure cmbTaxonomyTypeDropDown(Sender: TObject);
    procedure cmbTaxonomyTypeChange(Sender: TObject);
    procedure DBEdit_BudgetTopicNameDblClick(Sender: TObject);
    procedure qry_CTopicRangeAfterInsert(DataSet: TDataSet);
    procedure qry_DetailRangeAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure qry_DetailRangeAfterDelete(DataSet: TDataSet);
    procedure qry_CTopicRangeAfterDelete(DataSet: TDataSet);
    procedure actCTopicNoteExecute(Sender: TObject);
    procedure actDetailNoteExecute(Sender: TObject);
    procedure qry_CategoriesBeforeEdit(DataSet: TDataSet);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure gridCtopicKeyPress(Sender: TObject; var Key: Char);
    procedure gridTopicKeyPress(Sender: TObject; var Key: Char);
    procedure actNoteExecute(Sender: TObject);
    procedure qry_CategoriesBeforeInsert(DataSet: TDataSet);
    procedure cmbKindInsertBudgetCodeDropDown(Sender: TObject);
    procedure qry_CategoriesKindInsertBudgetCodeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qry_CategoriesKindInsertBudgetCodeSetText(Sender: TField;
      const Text: String);
    procedure DBGrid1DblClick(Sender: TObject);
  private

    OldTopic: string;
    FormType: Byte;
    procedure checkPrvLevel;
    // procedure updateEdit;
    procedure enabelControl;
    procedure initform;
//    procedure LastRecordCtopic;
//    procedure LastRecordDetail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CategoriesF: TCategoriesF;

implementation

uses Dm, GlobalPro, search2, Detail_Relation, CToplic_Relation, mmessage,
  sort2, StrUtils, CategoresCtopicNote, CategoresDetailNote, topicsNote,
  searchCode_L1_L2, accCode2;
{$R *.dfm}

procedure TCategoriesF.qry_CategoriesAidInfoTypeGetText(Sender: TField;
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

procedure TCategoriesF.qry_CategoriesAidInfoTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TCategoriesF.qry_CategoriesReactionForRepEssenceGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
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

procedure TCategoriesF.qry_CategoriesReactionForRepEssenceSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TCategoriesF.src_CategoriesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Categories.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'Acc.Categories');
end;

procedure TCategoriesF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCategoriesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Categories);
end;

procedure TCategoriesF.actDetailRelationExecute(Sender: TObject);
begin
  inherited;
  if qry_Categories.State in [dsinsert] then
    if get_response('»—«Ì «— »«ÿ »«Õ”«»Â«Ì  ›’Ì·Ì  €ÌÌ—«  –ŒÌ—Â ‘Ê‰œ ø˛') <>
      mrYes then
      Abort
    else
      qry_Categories.Post;
  if not(qry_Categories.State in [dsedit]) then
    qry_Categories.Edit;
  Detail_RelationF.ShowChooseDetail(qry_Categories.Fieldbyname('TopicCode')
    .AsLargeInt);
  qry_DetailRange.Requery;
  enabelControl;
end;

procedure TCategoriesF.initform;
var
  i: integer;
begin
  try
    qry_Categories.DisableControls;
    with qry_Categories do
    begin
      for i := 0 to FieldCount - 1 do
        if fields[i].FieldKind = fkLookup then
        begin
          Active := False;
          if opt.primaryLanguage = 0 then
          begin
            fields[i].LookupResultField :=
              StringReplace(fields[i].LookupResultField, '_L2', '_L1',
              [rfReplaceAll]);
          end
          else
          begin
            fields[i].LookupResultField :=
              StringReplace(fields[i].LookupResultField, '_L1', '_L2',
              [rfReplaceAll]);
          end; // else
        end; // if
      Active := true;
    end; // with
    with qry_initForm do
    begin
      Active := False;
      Parameters.paramByName('LevelID').Value := FormType;
      Active := true;
    end; // with
    with qry_Categories do
    begin
      Active := False;
      Parameters.paramByName('type').Value := FormType;
      Active := true;
      If qry_Categories.RecordCount = 0 Then
      begin
        buttonCtopic.Enabled := False;
        buttonDetail.Enabled := False;
      end // if
      else
      begin
        buttonCtopic.Enabled := true;
        buttonDetail.Enabled := true;
      end;
    end; // with
    with qry_initForm do
    begin
      // ---------------------------set  Form -------------------------
      pnlAidInfoType.Visible := Fieldbyname('AidInfoTypeActive').AsInteger = 1;
      PnlLastYear.Visible := Fieldbyname('AccLastYearActive').AsInteger <> 0;
      pnlFinancialID.Visible := Fieldbyname('FinancialRelationType')
        .AsInteger <> 0;
      PnlTaxonomy.Visible := Fieldbyname('TaxonomyActive').AsInteger <> 0;
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
        pnlFinancialID.Visible or PnlTaxonomy.Visible;
      PageControl1.Pages[4].TabVisible :=
        Fieldbyname('CenterTopicsRelationType').AsInteger <> 0;
      PageControl1.Visible := PageControl1.Pages[0].TabVisible or
        PageControl1.Pages[1].TabVisible or PageControl1.Pages[2].TabVisible or
        PageControl1.Pages[3].TabVisible or PageControl1.Pages[4].TabVisible;
      FormNote.Visible := Fieldbyname('NoteActive').AsInteger <> 0;
      // Pnlcomment1.Visible:=FieldByName('NoteActive').AsInteger<>0;
      // pnlcomment2.Visible:=FieldByName('NoteActive').AsInteger<>0;

    end; // wih
  finally
    qry_Categories.EnableControls;
  end; // finally
end;

procedure TCategoriesF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;

end;

procedure TCategoriesF.qry_CategoriesAfterInsert(DataSet: TDataSet);
var
  txt: String;

begin
  inherited;
  txt := 'SELECT MAX(TopicCode) FROM acc.Categories WHERE ( LevelID = ' +
    IntToStr(FormType) + ' ) ';
  DataSet.Fieldbyname('LevelId').AsInteger := FormType;
  DataSet.Fieldbyname('TopicCode').AsLargeInt := GetANewCode('',txt, 'TopicCode',dmf.adcAccounting);

  DataSet.Fieldbyname('makeDate').AsDateTime := Now;
  DataSet.fields.Fieldbyname('AuditID').AsInteger := 0;
  DataSet.fields.Fieldbyname('FinancialID').AsInteger := 0;

  initDBComboBoxacc(cmbAidInfoType, 3);
  DataSet.Fieldbyname('AidInfoType').AsInteger :=
    integer(cmbAidInfoType.Items.Objects[0]);

  DataSet.Fieldbyname('ReactionForRepEssence').AsInteger :=
    integer(cmbReactionForRepEssence.Items.Objects[0]);

  initDBComboBoxacc(cmbEssence, 5);
  DataSet.Fieldbyname('Essence').AsInteger :=
    integer(cmbEssence.Items.Objects[0]);

  initDBComboBoxacc(cmbKindInsertBudgetCode, 12);
  DataSet.Fieldbyname('KindInsertBudgetCode').AsInteger :=
    integer(cmbKindInsertBudgetCode.Items.Objects[0]);

  initDBComboBoxacc(cmbTaxonomyType, 6);
  DataSet.Fieldbyname('TaxonomyType').AsInteger :=
    integer(cmbTaxonomyType.Items.Objects[0]);

  // R // œ— ›—„ ‘„«—Â 2 Ê 3 ‰Ì«“ „Ì»«‘œ . )
  if FormType <> 1 then
  begin
    // ------------------ set  AccountRelationPosition------------------------
    with Dmf.qry_Temp do
    begin
      Close;
      SQL.Text :=
        'SELECT Acc.Categories.ReactionForRepEssence,Acc.Categories.Essence,' +
        ' Acc.Categories.FinancialID,Acc.Categories.AuditID,LastYearTopicCode '
        + ' FROM Acc.AccTopicLevels AccTopicLevels_1 RIGHT OUTER JOIN ' +
        ' Acc.Categories ON LEFT(' + DataSet.Fieldbyname('TopicCode').AsString +
        ', AccTopicLevels_1.CodeLength) = Acc.Categories.TopicCode AND ' +
        ' AccTopicLevels_1.LevelID = Acc.Categories.LevelID RIGHT OUTER JOIN ' +
        'Acc.AccTopicLevels AccTopicLevels_2 ON AccTopicLevels_1.LevelID = AccTopicLevels_2.PrvLevelID '
        + 'WHERE AccTopicLevels_2.LevelID = ' + DataSet.Fieldbyname
        ('LevelID').AsString;
      Open;
      if qry_initForm.Fieldbyname('ReactionEssenceType').AsInteger = 2 then
        DataSet.Fieldbyname('ReactionForRepEssence').AsString :=
          Fieldbyname('ReactionForRepEssence').AsString;

      if qry_initForm.Fieldbyname('EssenceSelectable').AsInteger = 2 then
        DataSet.Fieldbyname('Essence').AsString :=
          Fieldbyname('Essence').AsString;

      DataSet.Fieldbyname('LastYearTopicCode').AsString :=
        IfThen(qry_initForm.Fieldbyname('AccLastYearActive').AsInteger = 2,
        Fieldbyname('LastYearTopicCode').AsString, '0');

      if qry_initForm.Fieldbyname('FinancialRelationType').AsInteger = 2 then
        DataSet.Fieldbyname('FinancialID').AsString :=
          Fieldbyname('FinancialID').AsString;

      if qry_initForm.Fieldbyname('FinancialRelationType').AsInteger = 0 then
        qry_Categories.Fieldbyname('FinancialID').Required := False
      else
        qry_Categories.Fieldbyname('FinancialID').Required := true;

      if qry_initForm.Fieldbyname('AuditRelationType').AsInteger = 2 then
        qry_Categories.Fieldbyname('AuditID').AsString :=
          Fieldbyname('AuditID').AsString;

      Active := False;
    end; // with
  end; // if
  DBEditMoeenName_L1.SetFocus;
end;

procedure TCategoriesF.actCToplicRelationExecute(Sender: TObject);
begin
  inherited;
  if qry_Categories.State in [dsinsert] then
    if get_response('»—«Ì «— »«ÿ »«  ›’Ì·Ì 1  €ÌÌ—«  –ŒÌ—Â ‘Ê‰œ ø˛') <>
      mrYes then
      Abort
    else
      qry_Categories.Post;
  if not(qry_Categories.State in [dsedit]) then
    qry_Categories.Edit;
  CToplic_RelationF.ShowChooseDetail(qry_Categories.Fieldbyname('TopicCode')
    .AsLargeInt);
  qry_CTopicRange.Requery;
  enabelControl;
end;

procedure TCategoriesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(gridTopic, 2, true, IntToStr(FormType));
  SetColSize(gridCtopic, 1, true, IntToStr(FormType));
  SetColSize(DBGrid1, 1, true, IntToStr(FormType));
end;

procedure TCategoriesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(gridTopic, IntToStr(FormType));
  SaveColWidth(gridCtopic, IntToStr(FormType));
end;

procedure TCategoriesF.qry_CategoriesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(DelLevel, FormType) then
    Abort;
  if CheckLevel(qry_initForm.Fieldbyname('CodeLength').AsInteger,
    qry_CategoriesTopicCode.AsString) then
  begin
    warn('»Â œ·Ì· ÊÃÊœ ﬂœ “Ì— ”ÿÕ ,«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
    Abort;
  end; // if

  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT   acc.Documents.TopicCode FROM  acc.Documents INNER JOIN ' +
      '  acc.Categories ON  acc.Documents.TopicCode =  acc.Categories.TopicCode '
      + ' WHERE  acc.Categories.TopicCode=' + qry_Categories.Fieldbyname
      ('TopicCode').AsString;
    Active := true;
    if not(Dmf.qry_Temp.Fieldbyname('TopicCode').IsNull) then
    begin
      warn('ﬂœ Õ”«» „Ê—œ ‰Ÿ— ﬁ«»· Õ–› ‰„Ì »«‘œ');
      Active := False;
      Abort;
    end; // if
  end; // with
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœ.˛') <> mrYes then
    Abort;
end;

procedure TCategoriesF.qry_CategoriesAfterPost(DataSet: TDataSet);
begin
  inherited;
  try
    if qry_CTopicRange.Active then

    qry_CTopicRange.UpdateBatch(arAll);
    if qry_DetailRange.Active then
    qry_DetailRange.UpdateBatch(arAll);
    AddCoding(1, DataSet.Fieldbyname('TopicCode').AsLargeInt)

  finally
    BigMessage('À»‹  ‘œ.', 1);
  end; // finally
end;

procedure TCategoriesF.qry_CategoriesTaxonomyTypeGetText(Sender: TField;
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

procedure TCategoriesF.qry_CategoriesTaxonomyTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TCategoriesF.SpeedButton2Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := 'SELECT  acc.BudgetTopics.BudgetTopicID,  acc.BudgetTopics.BudgetCaption_L1 ,  acc.BudgetTopics.BudgetCaption_L2 FROM  acc.BudgetTopics '
    + 'LEFT OUTER JOIN  acc.BudgetTopicsForUse ON  acc.BudgetTopics.BudgetTopicID =  acc.BudgetTopicsForUse.PrvBudgetTopicID '
    + 'WHERE ( acc.BudgetTopicsForUse.PrvBudgetTopicID IS NULL)';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, ' »ÊœÃÂ Â«  ', txt,
    ['ﬂœ »ÊœÃÂ', '‰«„ »ÊœÃÂ', '‰«„ »ÊœÃÂ “»«‰ 2  '], Results,
    [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.Edit;
    qry_Categories['BudgetTopicID'] := Results[0];
  end; // if
end;

procedure TCategoriesF.SpeedButton1Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := 'SELECT      acc.AuditTopics.AuditCode,  acc.AuditTopics.AuditName_L1,  acc.AuditTopics.AuditName_L2 '
    + 'FROM         acc.AuditTopics LEFT OUTER JOIN ' +
    ' acc.AuditTopicForUse ON  acc.AuditTopics.AuditCode =  acc.AuditTopicForUse.PrvAuditCode '
    + 'WHERE     ( acc.AuditTopicForUse.PrvAuditCode IS NULL)';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, ' ﬂ‰ —· Â«Ì Õ”«»—”Ì  ',
    txt, ['ﬂœ', '‰«„ ﬂ‰ —·', '‰«„ ﬂ‰ —·'], Results, [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.Edit;
    qry_Categories['AuditID'] := Results[0];
  end; // if
end;

procedure TCategoriesF.qry_CategoriesBeforePost(DataSet: TDataSet);
begin
  inherited;
  checkPrvLevel;
  if Length(qry_Categories.Fieldbyname('TopicCode').AsString) <>
    qry_Categories.Fieldbyname('_CodeLength').AsInteger then
  begin
    warn('ÿÊ· ﬂœ Õ”«» „⁄ »— ‰Ì”  .˛');
    Abort;
  end; // if
  if not CheckRequiredFields(qry_Categories) then
  begin
    Abort;
    Exit;
  end; // if

  if (qry_Categories.State = dsedit) and
    (OldTopic <> qry_CategoriesTopicCode.AsString) then
    if CheckLevel(qry_initForm.Fieldbyname('CodeLength').AsInteger,
      OldTopic) then
    begin
      warn('»Â œ·Ì· ÊÃÊœ ﬂœ “Ì— ”ÿÕ ,«„ﬂ«‰ ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ');
      Abort;
    end; // if
end;

procedure TCategoriesF.cmbAidInfoTypeDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 3);
  if qry_CategoriesAidInfoType.AsString <> '' then
    cmbAidInfoType.Text := VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesAidInfoType.AsInteger, 'InfoName_L1'));
end;

procedure TCategoriesF.qry_CategoriesEssenceSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);

end;

procedure TCategoriesF.qry_CategoriesEssenceGetText(Sender: TField;
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

procedure TCategoriesF.cmbReactionForRepEssenceDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 4);
  if qry_CategoriesReactionForRepEssence.AsString <> '' then
    cmbReactionForRepEssence.Text :=
      VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesReactionForRepEssence.AsInteger, 'InfoName_L1'))
end;

procedure TCategoriesF.SpeedButton5Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := 'SELECT      acc.Projects.ProjectID,  acc.Projects.ProjectCaption_L1,  acc.Projects.ProjectCaption_L2 '
    + 'FROM          acc.Projects LEFT OUTER JOIN  acc.ProjectsForUse ON  acc.Projects.ProjectID =  acc.ProjectsForUse.PrvProjectID '
    + 'WHERE     ( acc.ProjectsForUse.PrvProjectID IS NULL)';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, ' Å—ÊéÂ Â«  ', txt,
    ['ﬂœ Å—ÊéÂ', '‰«„ Å—ÊéÂ', '‰«„ Å—ÊéÂ'], Results, [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.Edit;
    qry_Categories['ProjectID'] := Results[0];
  end; // if

end;

procedure TCategoriesF.SpeedButton3Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := 'SELECT TopicCode, MoeenName_L1, MoeenName_L2  ' +
    'FROM   acc.Categories WHERE (LevelID = ' + qry_Categories.Fieldbyname
    ('levelId').AsString + ')';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'ÿ»ﬁÂ »‰œÌ Â«', txt,
    ['ﬂœ ÿ»ﬁÂ »‰œÌ', '‰«„ ÿ»ﬁÂ »‰œÌ', '‰«„ ÿ»ﬁÂ »‰œÌ'], Results,
    [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.Edit;
    qry_Categories.Fieldbyname('TaxonomyTopicCode').AsString := Results[0];
  end; // if

end;

procedure TCategoriesF.SpeedButton4Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;
  txt := 'SELECT      acc.FinancialTopics.FinancialCode,  acc.FinancialTopics.FinancialName_L1,  acc.FinancialTopics.FinancialName_L2 '
    + 'FROM          acc.FinancialTopicsForUse RIGHT OUTER JOIN ' +
    ' acc.FinancialTopics ON  acc.FinancialTopicsForUse.FinancialCode =  acc.FinancialTopics.FinancialCode '
    + 'WHERE     ( acc.FinancialTopicsForUse.PrvFinancialCode IS NULL) ';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, ' —«“‰«„Â Â«', txt,
    ['ﬂœ  —«“‰«„Â', '‰«„  —«“‰«„Â', '‰«„  —«“‰«„Â'], Results,
    [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.Edit;
    qry_Categories['FinancialID'] := Results[0];
  end; // if

end;

procedure TCategoriesF.qry_CategoriesAfterScroll(DataSet: TDataSet);

begin
  inherited;
//  with qry_CTopicRange do
//  begin
//    Active := False;
//    Parameters.paramByName('TopicCod').Value :=
//      qry_Categories.FieldByName('TopicCode').AsLargeInt;
//    Active := true;
//  end; // with
//  if (DataSet.State in [dsinsert]) and
//    (qry_initForm.Fieldbyname('CenterTopicsRelationType').AsInteger = 2) then
//    LastRecordCtopic;
//  with qry_DetailRange do
//  begin
//    Active := False;
//    Parameters.paramByName('TopicCode').Value :=
//      qry_Categories.Fieldbyname('TopicCode').AsLargeInt;
//    Active := true;
//  end; // with
//  if (DataSet.State in [dsinsert]) and
//    (qry_initForm.Fieldbyname('DetailsRelationType').AsInteger = 2) then
//    LastRecordDetail;
//  enabelControl;
end;

procedure TCategoriesF.SpeedButton6Click(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  txt: String;
  b: Boolean;
begin
  inherited;

  txt := 'SELECT TopicCode, MoeenName_L1, MoeenName_L2  ' +
    'FROM  acc.Categories WHERE (LevelID = ' + qry_Categories.Fieldbyname
    ('levelId').AsString + ')';
  b := searchCode_L1_L2F.SearchCode2(Dmf.adcOldAccounting, 'ÿ»ﬁÂ »‰œÌ Â«', txt,
    ['ﬂœ ÿ»ﬁÂ »‰œÌ', '‰«„ ÿ»ﬁÂ »‰œÌ', '‰«„ ÿ»ﬁÂ »‰œÌ'], Results,
    [50, 100, 100], alLeft);
  if b then
  begin
    if not(qry_Categories.State in dsEditModes) then
      qry_Categories.Edit;
    qry_Categories.Fieldbyname('LastYearTopicCode').AsString := Results[0];
  end; // if
end;

procedure TCategoriesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Categories);
end;

procedure TCategoriesF.cmbEssenceDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 5);
  if qry_CategoriesEssence.AsString <> '' then
    cmbEssence.Text := VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesEssence.AsInteger, 'InfoName_L1'))
end;

procedure TCategoriesF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT  MIN(TopicCode) AS minTopic, MAX(TopicCode) AS maxTopic FROM acc.Categories '
      + ' GROUP BY LevelID HAVING LevelID=' + qry_Categories.Fieldbyname
      ('LevelID').AsString;
    Active := true;
    Text := '„ÕœÊœÂ ﬂœ «“ ' + Dmf.qry_Temp.Fieldbyname('minTopic').AsString +
      '  « ' + Dmf.qry_Temp.Fieldbyname('MAXTopic').AsString;
    Active := False;
  end; // with
end;

procedure TCategoriesF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TCategoriesF.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCategoriesF.qry_CategoriesTopicCodeChange(Sender: TField);
begin
  inherited;
  if ((qry_initForm.Fieldbyname('AccLastYearActive').AsInteger = 2) and
    (qry_Categories.State in dsEditModes)) then
  begin
    qry_Categories.Fieldbyname('LastYearTopicCode').AsString :=
      qry_Categories.Fieldbyname('TopicCode').AsString;
    qry_Categories.Fieldbyname('_LastYearTopicCodeName').AsString :=
      qry_Categories.Fieldbyname('MoeenName_L1').AsString;
  end;
end;

procedure TCategoriesF.cmbTaxonomyTypeDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 6);
  if qry_CategoriesTaxonomyType.AsString <> '' then
    cmbTaxonomyType.Text := VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesTaxonomyType.AsInteger, 'InfoName_L1'))
end;

procedure TCategoriesF.cmbTaxonomyTypeChange(Sender: TObject);
begin
  inherited;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      ' SELECT TaxonomyTopicCode FROM  acc.Categories WHERE  TopicCode=' +
      qry_Categories.Fieldbyname('TopicCode').AsString;
    Active := true;
    if Fieldbyname('TaxonomyTopicCode').IsNull then
      qry_Categories.Fieldbyname('TaxonomyTopicCode').AsVariant := Null;
    Active := False;
  end; // with
  if ((cmbTaxonomyType.ItemIndex = 2) and (qry_Categories.State
    in dsEditModes)) then
    qry_Categories.Fieldbyname('TaxonomyTopicCode').AsInteger :=
      qry_Categories.Fieldbyname('TopicCode').AsLargeInt;

end;

procedure TCategoriesF.DBEdit_BudgetTopicNameDblClick(Sender: TObject);
begin
  inherited;
  warn(DBEdit_BudgetTopicName.Field.LookupResultField);
end;

//procedure TCategoriesF.LastRecordCtopic;
//begin
//  with Dmf.qry_Temp do
//  begin
//    Active := False;
//    SQL.Text := 'SELECT  acc.CenterTopicRange.CTopicCode ';
//    SQL.Add(' FROM acc.AccTopicLevels AccTopicLevels_1 INNER JOIN');
//    SQL.Add(' acc.CenterTopicRange ON LEFT(:TopicCode, AccTopicLevels_1.CodeLength) = acc.CenterTopicRange.TopicCode INNER JOIN');
//    SQL.Add(' acc.AccTopicLevels AccTopicLevels_2 ON AccTopicLevels_1.LevelID = AccTopicLevels_2.PrvLevelID');
//    SQL.Add(' Where AccTopicLevels_2.LevelID=:LevelID and acc.CenterTopicRange.CTopicCode>0');
//    SQL.Add(' GROUP BY  AccTopicLevels_2.LevelID, acc.CenterTopicRange.CTopicCode');
//
//    Parameters.paramByName('TopicCode').Value :=
//      qry_Categories.Fieldbyname('TopicCode').AsLargeInt;
//    Parameters.paramByName('LevelID').Value := FormType;
//    Active := true;
//
//    while not eof do
//    begin
//      qry_CTopicRange.Insert;
//      qry_CTopicRange.Next;
//      Next;
//    end; // while
//    Active := False;
//  end; // with
//end;

procedure TCategoriesF.qry_CTopicRangeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with qry_CTopicRange do
  begin
    Fieldbyname('CTopicCode').AsInteger :=
      Dmf.qry_Temp.Fieldbyname('cTopicCode').AsInteger;
    Fieldbyname('TopicCode').AsLargeInt := qry_Categories.Fieldbyname
      ('TopicCode').AsLargeInt;
  end; // with
end;

//procedure TCategoriesF.LastRecordDetail;
//begin
//  with Dmf.qry_Temp do
//  begin
//    Active := False;
//    SQL.Text :=
//      'SELECT acc.DetailRange.TopicCode, acc.DetailRange.DetailCode, AccTopicLevels_1.CodeLength';
//    SQL.Add('FROM acc.AccTopicLevels INNER JOIN');
//    SQL.Add('acc.AccTopicLevels AccTopicLevels_1 ON acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID INNER JOIN  ');
//    SQL.Add('acc.DetailRange ON LEFT(:TopicCode, AccTopicLevels_1.CodeLength) = acc.DetailRange.TopicCode');
//    SQL.Add('WHERE (acc.AccTopicLevels.LevelID =:LevelID) and acc.DetailRange.DetailCode<>0');
//    Parameters.paramByName('TopicCode').Value :=
//      qry_Categories.Fieldbyname('TopicCode').AsLargeInt;
//    Parameters.paramByName('LevelID').Value := FormType;
//    Active := true;
//    while not eof do
//    begin
//      qry_DetailRange.Insert;
//      qry_DetailRange.Next;
//      Next;
//    end; // while
//    Active := False;
//  end; // with
//end;

procedure TCategoriesF.qry_DetailRangeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qry_DetailRange.Fieldbyname('DetailCode').AsInteger :=
    Dmf.qry_Temp.Fieldbyname('DetailCode').AsInteger;
  qry_DetailRange.Fieldbyname('TopicCode').AsLargeInt :=
    qry_Categories.Fieldbyname('TopicCode').AsLargeInt;
end;

procedure TCategoriesF.FormShow(Sender: TObject);
begin
  inherited;
  qryFormsInfo.Active := true;
  initform;
  if gv_MultiCompany then
    gridTopic.Columns[0].Visible := true
  else
    gridTopic.Columns[0].Visible := False;
  lblCaption.Caption := 'À»  «ÿ·«⁄«  ﬂœÌ‰ê ' + qry_initForm.Fieldbyname
    ('LevelCaption_L1').AsString;
  CategoriesF.Caption := 'À»  «ÿ·«⁄«  ﬂœÌ‰ê ' + qry_initForm.Fieldbyname
    ('LevelCaption_L1').AsString;
  RefreshTab;

end;

procedure TCategoriesF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qry_Categories.DisableControls;
    InitReportFile(ppReport1, 'rptCategoreis1', DBGrid1,nil)
  finally
    qry_Categories.EnableControls;
  end; // try
end;

procedure TCategoriesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCategoriesF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qry_Categories.DisableControls;
    InitReportFile(ppReport1, 'rptCategoreis2', DBGrid1,nil)
  finally
    qry_Categories.EnableControls;
  end; // try
end;

procedure TCategoriesF.DBGrid1DblClick(Sender: TObject);
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
      SQL.Add('where (TopicType = 0) and (LevelID>' + FormType.ToString + ')');
      SQL.Add('order by TopicType, LevelID');
      Open;
      LevelID := fields[0].AsInteger;
      Close;
    end;
    if LevelID > 0 then
    begin
      CreateMDIForm2(TAccCode2F, AccCode2F, Self, LevelID);
      AccCode2F.qryprvcategories.Locate('TopicCode', TopicCode,[]);
    end;
  end;
end;

procedure TCategoriesF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Categories.Fieldbyname('TopicCode'));
end;

procedure TCategoriesF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCategoriesF.qry_DetailRangeAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qry_DetailRange.UpdateBatch();
end;

procedure TCategoriesF.qry_CTopicRangeAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qry_CTopicRange.UpdateBatch();
end;

procedure TCategoriesF.actCTopicNoteExecute(Sender: TObject);
begin
  inherited;
  CategoresCtopicNoteF.Enter(qry_CategoriesTopicCode.AsInteger,
    qry_CTopicRangeCTopicCode.AsInteger);
end;

procedure TCategoriesF.actDetailNoteExecute(Sender: TObject);
begin
  inherited;
  CategoresDetailNoteF.Enter(qry_CategoriesTopicCode.AsInteger,
    qry_DetailRangeDetailCode.AsInteger, qry_DetailRangecompanyCode.AsInteger);
end;

procedure TCategoriesF.enabelControl;
begin
  if qry_DetailRange.RecordCount = 0 then
    comment2.Enabled := False
  else
    comment2.Enabled := true;
  if qry_CTopicRange.RecordCount = 0 then
    comment1.Enabled := False
  else
    comment1.Enabled := true;
end;

procedure TCategoriesF.qry_CategoriesBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(EdtLevel, FormType) then
    Abort;

  OldTopic := qry_CategoriesTopicCode.AsString;
end;

procedure TCategoriesF.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + qry_initForm.Fieldbyname('LevelCaption_L1').AsString;
end;

procedure TCategoriesF.checkPrvLevel;
begin
  if FormType <> 1 then
  begin
    if qry_initForm.Fieldbyname('PrvLevelID').AsInteger <> 0 then
    begin
      with Dmf.qry_Temp do
      begin
        SQL.Text :=
          'SELECT  acc.Categories.TopicCode FROM acc.AccTopicLevels AccTopicLevels_1 RIGHT OUTER JOIN  ';
        SQL.Add('acc.Categories ON AccTopicLevels_1.LevelID = acc.Categories.LevelID RIGHT OUTER JOIN ');
        SQL.Add('acc.AccTopicLevels AccTopicLevels_2 ON AccTopicLevels_1.LevelID = AccTopicLevels_2.PrvLevelID ');
        SQL.Add('WHERE (AccTopicLevels_2.LevelID =' + qry_initForm.Fieldbyname
          ('LevelID').AsString + ') and ');
        SQL.Add('LEFT(' + qry_Categories.Fieldbyname('TopicCode').AsString +
          ',AccTopicLevels_1.CodeLength)=acc.Categories.TopicCode');
        Active := true;
        if Fieldbyname('TopicCode').IsNull then
        begin
          warn('  ›Ì·œ Ê«—œ ‘œÂ «“ ‰Ÿ—  ﬂœ ”ÿÕ »«·«ÌÌ „⁄ »— ‰„Ì »«‘œ   ');
          Abort;
        end; // if
        Active := False;
      end; // with
    end; // if
  end; // if

end;

procedure TCategoriesF.gridCtopicKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_CTopicRange.Fieldbyname('CTopicCode'));
end;

procedure TCategoriesF.gridTopicKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_DetailRange.Fieldbyname('DetailCode'));
end;

procedure TCategoriesF.actNoteExecute(Sender: TObject);
begin
  inherited;
  topicsNoteF.Enter(qry_Categories.Fieldbyname('TopicCode').AsLargeInt);
end;

procedure TCategoriesF.qry_CategoriesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not Dmf.CheckLevel(AddLevel, FormType) then
    Abort;

end;

procedure TCategoriesF.cmbKindInsertBudgetCodeDropDown(Sender: TObject);
begin
  inherited;
  initDBComboBoxacc((Sender as TDBComboBox), 12);
  if qry_CategoriesKindInsertBudgetCode.AsString <> '' then
    cmbKindInsertBudgetCode.Text :=
      VarToStr(qryFormsInfo.Lookup('FormInfoID',
      qry_CategoriesKindInsertBudgetCode.AsInteger, 'InfoName_L1'));

end;

procedure TCategoriesF.qry_CategoriesKindInsertBudgetCodeGetText(Sender: TField;
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

procedure TCategoriesF.qry_CategoriesKindInsertBudgetCodeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    integer(TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).ItemIndex]);

end;

end.
