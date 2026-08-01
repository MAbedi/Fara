//mohammad rezaei
unit AccCode3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Grids, Vcl.DBGrids, ADODB,StrUtils, Menus, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ComCtrls, DBCtrls, Mask, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TAccCode3F = class(Ttemplate2MDIF)
    qryprvcategories: TADOQuery;
    qrycategories: TADOQuery;
    DBGPLCaption: TDBGrid;
    DBGLCaption: TDBGrid;
    srcprvcategories: TDataSource;
    srccategories: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Button1: TButton;
    btnPrint: TButton;
    btnSort: TButton;
    btnSersh: TButton;
    actsort: TAction;
    actprint: TAction;
    actSendToExcel: TAction;
    qryinit: TADOQuery;
    qrycategoriesTopicCode: TLargeintField;
    qrycategoriesLevelID: TIntegerField;
    qrycategoriesFinancialID: TIntegerField;
    qrycategoriesAuditID: TIntegerField;
    qrycategoriesEssence: TWordField;
    qrycategoriesReactionForRepEssence: TWordField;
    qrycategoriesTaxonomyType: TWordField;
    qrycategoriesTaxonomyTopicCode: TLargeintField;
    qrycategoriesLastYearTopicCode: TLargeintField;
    qrycategoriesLastTopicCode: TLargeintField;
    qrycategoriesAidInfoType: TWordField;
    qrycategoriesAuditReferenceNo: TIntegerField;
    qrycategoriesAuditReferenceTxt: TStringField;
    qrycategoriesRecalInterfaceID: TStringField;
    qrycategoriesBudgetTopicID: TIntegerField;
    qrycategoriesProjectID: TIntegerField;
    qrycategoriesmakeDate: TDateTimeField;
    qrycategoriesPrvTopicCode: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Excel1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    qryinitPrvLevelID: TIntegerField;
    qryinitPrvLevelCaption_L1: TStringField;
    qryinitLevelID: TIntegerField;
    qryinitLevelCaption_L1: TStringField;
    qryinitprvCodeLength: TWordField;
    qryinitCodeLength: TWordField;
    qryinitLevelCaption_L2: TStringField;
    qryinitPrvLevelCaption_L2: TStringField;
    qryprvcategoriesTopicCode: TLargeintField;
    qryprvcategoriesMoeenName_L1: TStringField;
    qryprvcategoriesMoeenName_L2: TStringField;
    qrycategoriesMoeenName_L1: TStringField;
    qrycategoriesMoeenName_L2: TStringField;
    qry_Taxonomy: TADOQuery;
    qry_FinancialID: TADOQuery;
    qry_project: TADOQuery;
    qry_projectProjectID: TIntegerField;
    qry_projectProjectCaption_L1: TStringField;
    qry_projectProjectCaption_L2: TStringField;
    qryBudget: TADOQuery;
    qryBudgetBudgetTopicID: TIntegerField;
    qryBudgetBudgetCaption_L1: TStringField;
    qryBudgetBudgetCaption_L2: TStringField;
    qry_LastYearTopicCode: TADOQuery;
    qry_AuditID: TADOQuery;
    qryAccTopicLevels: TADOQuery;
    qryAccTopicLevelsLevelID: TIntegerField;
    qryAccTopicLevelsLevelCaption_L1: TStringField;
    qryAccTopicLevelsLevelCaption_L2: TStringField;
    qryAccTopicLevelsPrvLevelID: TIntegerField;
    qryAccTopicLevelsCodeLength: TWordField;
    qryAccTopicLevelsFinancialRelationType: TWordField;
    qryAccTopicLevelsAuditRelationType: TWordField;
    qryAccTopicLevelsEssenceSelectable: TWordField;
    qryAccTopicLevelsAccRelationType: TWordField;
    qryAccTopicLevelsCenterTopicsRelationType: TWordField;
    qryAccTopicLevelsAssignedForm: TWordField;
    qryAccTopicLevelsReportFileName1: TStringField;
    qryAccTopicLevelsReportFileName2: TStringField;
    qryAccTopicLevelsReportFileName3: TStringField;
    qryAccTopicLevelsTopicType: TWordField;
    qryAccTopicLevelsBudgetRelationType: TWordField;
    qryAccTopicLevelsProjectsRelationType: TWordField;
    qryAccTopicLevelsUseInDocumentsActive: TWordField;
    qryAccTopicLevelsReactionEssenceType: TWordField;
    qryAccTopicLevelsNoteActive: TWordField;
    qryAccTopicLevelsDetailsRelationType: TWordField;
    qryAccTopicLevelsAccLastYearActive: TWordField;
    qryAccTopicLevelsRecalInterfaceID: TStringField;
    qrycategories_DetailsRelation: TBooleanField;
    qrycategories_CodeLength: TIntegerField;
    qrycategories_AuditName: TStringField;
    qrycategories_TaxonomyName: TStringField;
    qrycategories_FinancialName: TStringField;
    qrycategories_LastYearTopicCodeName: TStringField;
    qrycategories_BudgetTopicName: TStringField;
    qrycategories_ProjectName: TStringField;
    Panel1: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    pnl_l1: TPanel;
    LabelMoeenName_L1: TLabel;
    DBEditMoeenName_L1: TDBEdit;
    pnl_L2: TPanel;
    LabelMoeenName_L2: TLabel;
    DBEditMoeenName_L2: TDBEdit;
    pnlAidInfoType: TPanel;
    Label6: TLabel;
    cmbAidInfoType: TDBComboBox;
    pnlEssence: TPanel;
    Label7: TLabel;
    cmbEssence: TDBComboBox;
    pnlReactionForRepEssence: TPanel;
    Label8: TLabel;
    cmbReactionForRepEssence: TDBComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    gridTopic: TDBGrid;
    Panel7: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet2: TTabSheet;
    GrpBudget: TGroupBox;
    SpeedButton2: TSpeedButton;
    DBEdit11: TDBEdit;
    DBEdit_BudgetTopicName: TDBEdit;
    GrpProject: TGroupBox;
    SpeedButton5: TSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit_ProjectName: TDBEdit;
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
    Label9: TLabel;
    SpeedButton6: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    pnlFinancialID: TGroupBox;
    SpeedButton4: TSpeedButton;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    pnlTaxonomy: TGroupBox;
    Label10: TLabel;
    Label14: TLabel;
    SpeedButton3: TSpeedButton;
    cmbTaxonomyType: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit12: TDBEdit;
    TabSheet5: TTabSheet;
    gridCtopic: TDBGrid;
    Panel9: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLine22: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppDBPipeline1ppField15: TppField;
    ppDBPipeline1ppField16: TppField;
    ppDBPipeline1ppField17: TppField;
    ppDBPipeline1ppField18: TppField;
    ppDBPipeline1ppField19: TppField;
    ppDBPipeline1ppField20: TppField;
    ppDBPipeline1ppField21: TppField;
    ppDBPipeline1ppField22: TppField;
    ppDBPipeline1ppField23: TppField;
    ppDBPipeline1ppField24: TppField;
    ppDBPipeline1ppField25: TppField;
    ppDBPipeline1ppField26: TppField;
    ppDBPipeline1ppField27: TppField;
    ppDBPipeline2: TppDBPipeline;
    PopPrint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure srccategoriesStateChange(Sender: TObject);
    procedure qryinitAfterScroll(DataSet: TDataSet);
    procedure qryprvcategoriesAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qrycategoriesAfterInsert(DataSet: TDataSet);
    procedure qrycategoriesAfterEdit(DataSet: TDataSet);
    procedure qrycategoriesAfterCancel(DataSet: TDataSet);
    procedure qrycategoriesReactionForRepEssenceGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrycategoriesReactionForRepEssenceSetText(Sender: TField;
      const Text: String);
    procedure qrycategoriesTaxonomyTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrycategoriesTaxonomyTypeSetText(Sender: TField;
      const Text: String);
    procedure qrycategoriesAidInfoTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrycategoriesAidInfoTypeSetText(Sender: TField;
      const Text: String);
    procedure qrycategoriesAfterPost(DataSet: TDataSet);
    procedure qrycategoriesBeforeDelete(DataSet: TDataSet);
    procedure qrycategoriesAfterDelete(DataSet: TDataSet);
    procedure qrycategoriesBeforePost(DataSet: TDataSet);
    procedure actsortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure DBGLCaptionKeyPress(Sender: TObject; var Key: Char);
    procedure qrycategoriesBeforeInsert(DataSet: TDataSet);
    procedure qrycategoriesBeforeEdit(DataSet: TDataSet);
//    procedure qrycategoriesBeforeEdit(DataSet: TDataSet);
  private
    FormType:Byte;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccCode3F: TAccCode3F;

implementation

uses Dm, GlobalPro, AccCode3F_EditNew, mmessage, search2, sort2, FaraConsts;

{$R *.dfm}

procedure TAccCode3F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType:=var_glb_gParam;
  with qryinit do begin
    Active:=False;
    Parameters.ParamByName('FormType').Value:=FormType;
    Active:=True;
    Label1.Caption:='·Ì”  «ÿ·«⁄«  ﬂœÌ‰ê Õ”«»Â« - ”ÿÕ ' + qryinitPrvLevelCaption_l1.AsString;
    Label2.Caption:='·Ì”  «ÿ·«⁄«  ﬂœÌ‰ê Õ”«»Â« - ”ÿÕ ' + qryinitLevelCaption_l1.AsString;
  end;//with
  with qry_Taxonomy do begin
   Active:=false;
    Parameters.ParamByName('FormType').Value:=FormType;
   Active:=true;
  end;
  with  qryAccTopicLevels do begin
    Active:=false;
    Parameters.ParamByName('LevelID').Value:=FormType;
    Active:=true;
  end;
  with qry_LastYearTopicCode do begin
   Active:=false;
   Parameters.ParamByName('FormType').Value:=FormType;
   Active:=true;
  end;

end;

procedure TAccCode3F.srccategoriesStateChange(Sender: TObject);
begin
  inherited;
   BtnReject.Cancel:=newPanel.Visible;
   FreeReservedCodes(Dmf.adcAccounting, 'Acc.Categories');
end;

procedure TAccCode3F.qryinitAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryprvcategories do begin
    Active:=False;
    Parameters.ParamByName('LevelID').Value:=qryinitPrvLevelID.AsString;
    Active:=True;
  end;//with

end;

procedure TAccCode3F.qryprvcategoriesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qrycategories do begin
   Active:=False;
   Parameters.ParamByName('PrvCodelength1').Value:=qryinitprvCodeLength.AsString;
   Parameters.ParamByName('LevelID').Value:=qryinitLevelID.AsString;
   Parameters.ParamByName('PrvCodelength').Value:=qryinitprvCodeLength.AsString;
   Parameters.ParamByName('PrvTopicCode').Value:=qryprvcategoriesTopicCode.AsInteger;
   Active:=True;
  end;//with
end;

procedure TAccCode3F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGLCaption,1,true);
  SetColSize(DBGPLCaption,1,true);
end;

procedure TAccCode3F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGLCaption);
  SaveColWidth(DBGPLCaption);
end;

procedure TAccCode3F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGLCaption);
end;

procedure TAccCode3F.qrycategoriesAfterInsert(DataSet: TDataSet);
var
  s:String;
  txt:String;
  id:Integer;
begin
  inherited;
  s:=qryprvcategories.FieldByName('TopicCode').AsString;
  id:=StrToInt(LeftStr(s+'00000000000000',qryinit.FieldByName('CodeLength').AsInteger))+1;
  txt:='SELECT MAX(TopicCode) FROM Acc.Categories WHERE (LevelID ='+
        qryinitLevelID.AsString+') AND (LEFT(TopicCode,'+qryinitprvCodeLength.AsString+
        ') ='+qryprvcategoriesTopicCode.AsString+')';
  if DataSet.RecordCount=0 then
    DataSet.Fieldbyname('TopicCode').AsLargeInt:=id
  else
    DataSet.Fieldbyname('TopicCode').AsLargeInt:=GetANewCode('',txt,'TopicCode',dmf.adcAccounting);
    DataSet.FieldByName('levelid').AsInteger:=qryinit.FieldByName('levelid').AsInteger;
    DataSet.Fields.FieldByName('MakeDate').AsDateTime:=Now;
{    DataSet.Fields.FieldByName('Essence').AsInteger:=2;
    DataSet.Fields.FieldByName('ReactionForRepEssence').AsInteger:=0;
    DataSet.Fields.FieldByName('TaxonomyType').AsInteger:=2;
    DataSet.Fields.FieldByName('AidInfoType').AsInteger:=5;  }
    AccCode3F_EditNewF.enter(qrycategoriesTopicCode.AsInteger);
end;

procedure TAccCode3F.qrycategoriesAfterEdit(DataSet: TDataSet);
begin
  inherited;
  AccCode3F_EditNewF.enter(qrycategoriesTopicCode.AsInteger);
end;

procedure TAccCode3F.qrycategoriesAfterCancel(DataSet: TDataSet);
begin
  inherited;
  AccCode3F_EditNewF.Close;
end;

procedure TAccCode3F.qrycategoriesReactionForRepEssenceGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
case sender.AsInteger of
  0:Text:='»Ì  «ÀÌ—';
  1:Text:='›ﬁÿ ÅÌ€«„';
  2:Text:='ÅÌ€«„ Ê Ã·ÊêÌ—Ì «“ À»  «ÿ·«⁄« ';
end;//case
end;

procedure TAccCode3F.qrycategoriesReactionForRepEssenceSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger:=AccCode3F_EditNewF.CmbRFREssence.ItemIndex;
end;

procedure TAccCode3F.qrycategoriesTaxonomyTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
case sender.AsInteger of
  0:Text:='Â„Ê«—Â ﬂœ ÿ»ﬁÂ »‰œÌ';
  1:Text:='œ—’Ê—   €ÌÌ— „«ÂÌ  ﬂœ ÿ»ﬁÂ »‰œÌ';
  2:Text:='Â„Ê«—Â ﬂœ Õ”«» ﬂœ ÿ»ﬁÂ »‰œÌ «” ';
end;//case

end;

procedure TAccCode3F.qrycategoriesTaxonomyTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=AccCode3F_EditNewF.CmbTaxonomyType.ItemIndex;
end;

procedure TAccCode3F.qrycategoriesAidInfoTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
case sender.AsInteger of
  0:Text:='ÊÃÊÂ ‰ﬁœ';
  1:Text:='çﬂ Ê ”› Â';
  2:Text:='’Ê— Õ”«» Œ—Ìœ Ê ›—Ê‘';
  3:Text:='ﬂ‰ —· »ÊœÃÂ «Ì';
  4:Text:='ﬂœ »ÊœÃÂ «Ì';
  5:Text:='‰œ«—œ';
end;//case
end;

procedure TAccCode3F.qrycategoriesAidInfoTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=AccCode3F_EditNewF.CmbAidInfoType.ItemIndex;
end;

procedure TAccCode3F.qrycategoriesAfterPost(DataSet: TDataSet);
begin
  inherited;
  AccCode3F_EditNewF.Close;
end;

procedure TAccCode3F.qrycategoriesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  case qryinit.FieldByName('LevelID').AsInteger of
    1,2:begin
        if user.Level<7 then begin
         warn('‘„« „Ã«“ »Â Õ–› «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
         abort;
        end;
      end;
    3:begin
        if user.Level<6 then begin
         warn('‘„« „Ã«“ »Â Õ–› «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
         abort;
        end;
      end;
  end;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂœ Õ”«» „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
end;

procedure TAccCode3F.qrycategoriesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.',1);
end;

procedure TAccCode3F.qrycategoriesBeforePost(DataSet: TDataSet);
begin
  inherited;
  qrycategoriesLevelID.AsInteger:=qryinitLevelID.AsInteger;
    if ( Length(qrycategoriesTopicCode.AsString) <> qryinitCodeLength.AsInteger ) then begin
    Warn('ÿÊ· ﬂœ  ⁄—Ì› ‘œÂ œ— „ÕœÊœÂ „Ã«“ ‰„Ì »«‘œ.˛˛');
    FlashAControl(AccCode3F_EditNewF.DBEdit1);
    Abort;
  end; //if
end;

procedure TAccCode3F.actsortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrycategories);
end;

procedure TAccCode3F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrycategories);
end;

procedure TAccCode3F.N11Click(Sender: TObject);
begin
  inherited;
  try
   qryprvcategories.DisableControls;
   qrycategories.DisableControls;
   InitReportFile(ppReport1,'accreport1',nil,nil)
  finally
   qryprvcategories.EnableControls;
   qrycategories.EnableControls;
  end;//try
end;

procedure TAccCode3F.N21Click(Sender: TObject);
begin
  inherited;
  try
   qryprvcategories.DisableControls;
   qrycategories.DisableControls;
   InitReportFile(ppReport1,'accreport2',nil,nil)
  finally
   qryprvcategories.EnableControls;
   qrycategories.EnableControls;
  end;//try
end;

procedure TAccCode3F.actprintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TAccCode3F.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TAccCode3F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TAccCode3F.DBGLCaptionKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(key,qrycategories.FieldByName('TopicCode'));
end;

procedure TAccCode3F.qrycategoriesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  case qryinit.FieldByName('LevelID').AsInteger of
    1,2:begin
        if user.Level<6 then begin
         warn('‘„« „Ã«“ »Â Ê—Êœ «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
         abort;
        end;
      end;
    3:begin
        if user.Level<5 then begin
         warn('‘„« „Ã«“ »Â Ê—Êœ «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
         abort;
        end;
      end;
  end;
end;

procedure TAccCode3F.qrycategoriesBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  case qryinit.FieldByName('LevelID').AsInteger of
    1,2:begin
        if user.Level<7 then begin
         warn('‘„« „Ã«“ »Â ÊÌ—«Ì‘ «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
         abort;
        end;
      end;
    3:begin
        if user.Level<6 then begin
         warn('‘„« „Ã«“  »Â ÊÌ—«Ì‘ «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
         abort;
        end;
      end;
  end;
end;

end.
