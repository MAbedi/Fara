// Rezaei And Ghaderi
unit FinancialTopics_4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DBCtrls, DB, ADODB, Mask, zAPIBalloon, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ppStrtch,
  ppSubRpt, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TFinancialTopics_4F = class(Ttemplate2MDIF)
    Panel1: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    Panel4: TPanel;
    BitBtn6: TBitBtn;
    DBNavigator1: TDBNavigator;
    actSendExel: TAction;
    PopMSort: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PopMPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    actSort: TAction;
    PopMnuForm: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    N5: TMenuItem;
    N9: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    MenuItem5: TMenuItem;
    Exel1: TMenuItem;
    N3: TMenuItem;
    N7: TMenuItem;
    qryFinancialTopics: TADOQuery;
    SrcFinancialTopics: TDataSource;
    DBGrid1: TDBGrid;
    PnlAccRelation: TPanel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    rel: TBitBtn;
    actRelation: TAction;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    qryInit: TADOQuery;
    qryInitLevelID: TIntegerField;
    qryInitLevelCaption: TStringField;
    qryInitPrvLevelID: TIntegerField;
    qryInitCodeLength: TWordField;
    qryInitFinancialRelationType: TWordField;
    qryInitAuditRelationType: TWordField;
    qryInitEssenceSelectable: TWordField;
    qryInitAccRelationType: TWordField;
    qryInitCenterTopicsRelationType: TWordField;
    qryInitDetailsRelationType: TWordField;
    qryInitAccLastYearActive: TWordField;
    qryInitAssignedForm: TWordField;
    qryInitTopicType: TWordField;
    qryInitBudgetRelationType: TWordField;
    qryInitProjectsRelationType: TWordField;
    qryInitUseInDocumentsActive: TWordField;
    qryInitReactionEssenceType: TWordField;
    qryInitNoteActive: TWordField;
    qryInitRecalInterfaceID: TStringField;
    qryInitPrvLevelCaption: TStringField;
    qryInitPrvCodeLength: TWordField;
    qryTopicCode: TADOQuery;
    qryTopicCodeTopicCode: TLargeintField;
    qryTopicCodeMoeenName: TStringField;
    SrcTopicCode: TDataSource;
    Panel7: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    qryFinancialTopicsFinancialCode: TIntegerField;
    qryFinancialTopicsFinancialName: TStringField;
    qryFinancialTopicsLevelID: TIntegerField;
    qryFinancialTopicsFinancialType: TWordField;
    qryFinancialTopicsEssence: TWordField;
    Label8: TLabel;
    Label4: TLabel;
    qryFinancialTopicsMakeDate: TDateTimeField;
    qryTopicCodeFinancialID: TIntegerField;
    del: TBitBtn;
    qryFinancialTopicsFinancialName_L2: TStringField;
    qryTopicCodeMoeenName_L22: TStringField;
    DBEdit4: TDBEdit;
    FinancialCaption_L2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qryFinancialType: TADOQuery;
    srcFinancialType: TDataSource;
    qryEssence: TADOQuery;
    srcEssence: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid3: TDBGrid;
    srcMaster: TDataSource;
    qryMaster: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    WordField1: TWordField;
    WordField2: TWordField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    Panel8: TPanel;
    Panel5: TPanel;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine23: TppLine;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine2: TppLine;
    ppDBText3: TppDBText;
    ppLine9: TppLine;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine4: TppLine;
    ppDBText1: TppDBText;
    ppLine5: TppLine;
    ppDBText2: TppDBText;
    ppLine7: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    actDelete: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure srcDetailsStateChange(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryFinancialTopicsAfterScroll(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actRelationExecute(Sender: TObject);
    procedure qryFinancialTopicsAfterInsert(DataSet: TDataSet);
    procedure qryFinancialTopicsAfterDelete(DataSet: TDataSet);
    procedure qryFinancialTopicsMakeDateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryFinancialTopicsBeforePost(DataSet: TDataSet);
    procedure qryFinancialTopicsBeforeDelete(DataSet: TDataSet);
    procedure qryFinancialTopicsFinancialTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryFinancialTopicsAfterPost(DataSet: TDataSet);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actDeleteExecute(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
  private
    FormType: Integer;
    procedure Print(FileName: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinancialTopics_4F: TFinancialTopics_4F;

implementation

uses DM, GlobalPro, mmessage, search2, shamsiDate, StrUtils,
  FinancialTopics_Relation;

{$R *.dfm}

procedure TFinancialTopics_4F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  qryFinancialType.Active := true;
  qryEssence.Active := true;
  with qryInit do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := true;
  end; // with
  with qryFinancialTopics do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Parameters.ParamByName('PrvCodeLen').Value :=
      qryInit.fieldbyname('PrvCodeLength').AsInteger;
    // Parameters.ParamByName('PrvFinancialCode').Value:=qryMaster.fieldbyname('FinancialCode').AsInteger;
    Active := true;
  end; // with

  with qryMaster do
  begin
    Active := False;
    Parameters.ParamByName('PrvLevelID').Value :=
      qryInit.fieldbyname('PrvLevelID').AsInteger;
    Active := true;
  end; // with

  Caption := qryInit.fieldbyname('LevelCaption_L1').AsString;
  PnlAccRelation.Visible := qryInit.fieldbyname('AccRelationType')
    .AsInteger > 0;

end;

procedure TFinancialTopics_4F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 1);
  SetColSize(DBGrid3, 1);

end;

procedure TFinancialTopics_4F.srcDetailsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFinancialTopics.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcAccounting, 'acc.FinancialTopicsForUse');
end;

procedure TFinancialTopics_4F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFinancialTopics.DisableControls;
    qryMaster.DisableControls;
    PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryFinancialTopics.EnableControls;
    qryMaster.EnableControls;
  end;
end;

procedure TFinancialTopics_4F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid3);

end;

procedure TFinancialTopics_4F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFinancialTopics_4F.actSortExecute(Sender: TObject);
begin
  inherited;
  PopMSort.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFinancialTopics_4F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFinancialTopics);
end;

procedure TFinancialTopics_4F.qryFinancialTopicsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryTopicCode do
  begin
    Active := False;
    Parameters.ParamByName('FinancialID').Value :=
      qryFinancialTopics.fieldbyname('FinancialCode').AsInteger;
    Active := true;
  end; // with
  if qryTopicCode.RecordCount = 0 then
    del.Enabled := False
  else
    del.Enabled := true;
  if qryFinancialTopics.RecordCount = 0 then
  begin
    qryTopicCode.Active := False;
    del.Enabled := False
  end;
end;

procedure TFinancialTopics_4F.N1Click(Sender: TObject);
begin
  inherited;
  qryFinancialTopics.Sort := 'FinancialCode';
end;

procedure TFinancialTopics_4F.N2Click(Sender: TObject);
begin
  inherited;
  qryFinancialTopics.Sort := 'FinancialName_L1';
end;

procedure TFinancialTopics_4F.actRelationExecute(Sender: TObject);
begin
  inherited;
  // if qryFinancialTopics.RecordCount = 0 then Abort;
  if qryFinancialTopics.State in [dsinsert] then
    if get_response('»—«Ì «— »«ÿ »« ﬂœÌ‰ê Õ”«»Â«  €ÌÌ—«  –ŒÌ—Â ‘Ê‰œ ø˛') <>
      mrYes then
      Abort
    else
      qryFinancialTopics.Post;
  FinancialTopics_RelationF.ShowChooseTopicCode
    (qryFinancialTopics.fieldbyname('FinancialCode').AsInteger,
    qryInit.fieldbyname('AccRelationType').AsInteger);
  with qryTopicCode do
  begin
    Active := False;
    Parameters.ParamByName('FinancialID').Value :=
      qryFinancialTopics.fieldbyname('FinancialCode').AsInteger;
    Active := true;
  end; // with
  qryTopicCode.Requery;
  if qryTopicCode.RecordCount = 0 then
    del.Enabled := False
  else
    del.Enabled := true;
end;

procedure TFinancialTopics_4F.qryFinancialTopicsAfterInsert(DataSet: TDataSet);
var
  AnewCode: Largeint;
  s: String;
begin
  inherited;
  s := qryMaster.fieldbyname('FinancialCode').AsString;
  if qryFinancialTopics.RecordCount = 0 then
    AnewCode := StrToInt(LeftStr(s + '00000000000000',
      qryInit.fieldbyname('CodeLength').AsInteger)) + 1
  else
  begin
    AnewCode := GetANewCode
      ('','SELECT MAX(FinancialCode) FROM acc.FinancialTopicsForUse ' +
      ' WHERE PrvFinancialCode =' + qryMaster.fieldbyname('FinancialCode')
      .AsString, 'FinancialCode',dmf.adcAccounting);
  end; // else
  DataSet.fieldbyname('FinancialCode').AsLargeInt := AnewCode;
  DataSet.fieldbyname('LevelID').AsInteger := FormType;
  DataSet.fieldbyname('MakeDate').AsDateTime := now;
  DataSet.Fields.fieldbyname('Essence').AsInteger := 2;
  DataSet.Fields.fieldbyname('FinancialType').AsInteger := 0;
  DBEdit2.SetFocus;
  rel.Enabled := true;
end;

procedure TFinancialTopics_4F.qryFinancialTopicsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if qryFinancialTopics.RecordCount = 0 then
  begin
    del.Enabled := False;
    rel.Enabled := False;
  end;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TFinancialTopics_4F.qryFinancialTopicsMakeDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := miladi2Shamsi(qryFinancialTopics.fieldbyname('MakeDate').AsDateTime);
end;

procedure TFinancialTopics_4F.qryFinancialTopicsBeforePost(DataSet: TDataSet);

begin
  inherited;
  if not CheckRequiredFields(qryFinancialTopics) then
    Abort;
  TrimStringFields(qryFinancialTopics);
  if Length(qryFinancialTopics.fieldbyname('FinancialCode').AsString) >
    qryInit.fieldbyname('CodeLength').AsInteger then
  begin
    Warn('ÿÊ· ﬂœ »“—ê — «“ Õœ „Ã«“ «” .˛˛');
    DBEdit1.SetFocus;
    Abort;
  end; // if
  if qryInitPrvLevelID.AsInteger > 0 then
    if LeftStr(qryFinancialTopics.fieldbyname('FinancialCode').AsString,
      qryInit.fieldbyname('PrvCodeLength').AsInteger) <>
      qryMaster.fieldbyname('FinancialCode').AsString then
    begin
      Warn('ﬂœ ‰«„⁄ »— „Ì »«‘œ˛');
      Abort;
    end; // if

end;

procedure TFinancialTopics_4F.qryFinancialTopicsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with DMf.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'SELECT  FinancialCode FROM acc.FinancialTopics ' +
      ' where left(FinancialCode,' + qryInitCodeLength.AsString + ') = ' +
      qryFinancialTopicsFinancialCode.AsString;
    Active := true;
    if DMf.qry_Temp.RecordCount > 1 then
    begin
      Warn('»Â œ·Ì· ÊÃÊœ ﬂœ “Ì— ”ÿÕ ,«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
      Abort;
    end; // if
  end; // with
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂœ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
  With DMf.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'UPDATE acc.Categories SET FinancialID = 0 WHERE FinancialID = '
      + qryFinancialTopics.fieldbyname('FinancialCode').AsString;
    ExecSQL;
  end; // with
end;

procedure TFinancialTopics_4F.qryFinancialTopicsFinancialTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := ' —«“‰«„Â «Ì';
    1:
      Text := '”Êœ Ê “Ì«‰Ì';
    2:
      Text := '”«Ì—';
  end; // case
end;

procedure TFinancialTopics_4F.qryFinancialTopicsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
  rel.Enabled := true;
  // qryTopicCode.Active:=;
end;

procedure TFinancialTopics_4F.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFinancialTopics do
  begin
    Active := False;
    Parameters.ParamByName('PrvFinancialCode').Value :=
      qryMaster.fieldbyname('FinancialCode').AsInteger;
    Active := true;
  end; // with
  if qryFinancialTopics.RecordCount = 0 then
  begin
    qryTopicCode.Active := False;
    del.Enabled := False;
    rel.Enabled := False;
  end
  else
  begin
    del.Enabled := true;
    rel.Enabled := true;
  end;
  if qryTopicCode.Active then
    if qryTopicCode.RecordCount = 0 then
      del.Enabled := False
    else
      del.Enabled := true;

end;

procedure TFinancialTopics_4F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TFinancialTopics_4F.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TFinancialTopics_4F.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TFinancialTopics_4F.Print(FileName: String);
begin
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(FileName);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile;
      PreviewFormSettings.SinglePageOnly := True;
      Print;
    finally
    end; // try
  end; // with
end;

procedure TFinancialTopics_4F.MenuItem1Click(Sender: TObject);
begin
  inherited;
  Print('FinancialTopics4_L1.rtm');
end;

procedure TFinancialTopics_4F.MenuItem2Click(Sender: TObject);
begin
  inherited;
  Print('FinancialTopics4_L2.rtm');

end;

procedure TFinancialTopics_4F.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMaster.fieldbyname('FinancialCode'));

end;

procedure TFinancialTopics_4F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFinancialTopics.fieldbyname('FinancialCode'));
end;

procedure TFinancialTopics_4F.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «— »«ÿ „ÿ„∆‰ Â” Ìœø') = mrYes then
    with qryTopicCode do
    begin
      Edit;
      fieldbyname('FinancialID').AsInteger := 0;
      Post;
      Requery();
    end;
  if qryTopicCode.RecordCount = 0 then
    del.Enabled := False;
end;

procedure TFinancialTopics_4F.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryTopicCode.fieldbyname('TopicCode'));
end;

end.
