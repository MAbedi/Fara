// mahmood
unit FinancialTopics_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DBCtrls, DB, ADODB, Mask, zAPIBalloon, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TFinancialTopics_1F = class(Ttemplate2MDIF)
    Panel1: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
    BitBtn9: TBitBtn;
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
    BitBtn11: TBitBtn;
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
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine23: TppLine;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBText3: TppDBText;
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
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
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
  FinancialTopics_1F: TFinancialTopics_1F;

implementation

uses DM, GlobalPro, mmessage, search2, shamsiDate, StrUtils,
  FinancialTopics_Relation;

{$R *.dfm}

procedure TFinancialTopics_1F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  with qryInit do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
  end; // with
  Caption := qryInit.fieldbyname('LevelCaption_L1').AsString;
  with qryFinancialTopics do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
  end; // with
  PnlAccRelation.Visible := qryInit.fieldbyname('AccRelationType')
    .AsInteger > 0;
  qryFinancialType.Active := True;
  qryEssence.Active := True;
end;

procedure TFinancialTopics_1F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 1);
end;

procedure TFinancialTopics_1F.srcDetailsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryFinancialTopics.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcAccounting, 'acc.FinancialTopics');
end;

procedure TFinancialTopics_1F.Print(FileName: String);
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

procedure TFinancialTopics_1F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFinancialTopics.DisableControls;
    qryTopicCode.DisableControls;
    PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryFinancialTopics.EnableControls;
    qryTopicCode.EnableControls;
  end;
end;

procedure TFinancialTopics_1F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TFinancialTopics_1F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFinancialTopics_1F.actSortExecute(Sender: TObject);
begin
  inherited;
  PopMSort.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFinancialTopics_1F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFinancialTopics);
end;

procedure TFinancialTopics_1F.qryFinancialTopicsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryTopicCode do
  begin
    Active := False;
    Parameters.ParamByName('FinancialID').Value :=
      qryFinancialTopics.fieldbyname('FinancialCode').AsInteger;
    Active := True;
  end; // with
  if qryTopicCode.RecordCount = 0 then
    del.Enabled := False
  else
    del.Enabled := True;
end;

procedure TFinancialTopics_1F.N1Click(Sender: TObject);
begin
  inherited;
  qryFinancialTopics.Sort := 'FinancialCode';
end;

procedure TFinancialTopics_1F.N2Click(Sender: TObject);
begin
  inherited;
  qryFinancialTopics.Sort := 'FinancialName_L1';
end;

procedure TFinancialTopics_1F.actRelationExecute(Sender: TObject);
begin
  inherited;
  // if  qryFinancialTopics.RecordCount = 0 then Abort;
  if qryFinancialTopics.State in [dsinsert] then
    if get_response('»—«Ì «— »«ÿ »« ﬂœÌ‰ê Õ”«»Â«  €ÌÌ—«  –ŒÌ—Â ‘Ê‰œ ø˛') <>
      mrYes then
      Abort
    else
      qryFinancialTopics.Post;
  FinancialTopics_RelationF.ShowChooseTopicCode
    (qryFinancialTopics.fieldbyname('FinancialCode').AsInteger,
    qryInit.fieldbyname('AccRelationType').AsInteger);
  qryTopicCode.Requery;
  if qryTopicCode.RecordCount = 0 then
    del.Enabled := False
  else
    del.Enabled := True;
end;

procedure TFinancialTopics_1F.qryFinancialTopicsAfterInsert(DataSet: TDataSet);
var
  NewCode: Integer;
begin
  inherited;
  NewCode := GetANewCode
    ('','SELECT max(FinancialCode)  FROM  acc.FinancialTopics WHERE LevelID = ' +
    IntToStr(FormType), 'FinancialCode',dmf.adcAccounting);
  if qryInit.fieldbyname('PrvLevelID').AsInteger > 0 then
    if NewCode < (qryInit.fieldbyname('CodeLength').AsInteger * 10)
      div qryInit.fieldbyname('CodeLength').AsInteger then
    begin
      NewCode := StrToInt(LeftStr('10000000000000',
        qryInit.fieldbyname('CodeLength').AsInteger));
    end; // if
  DataSet.fieldbyname('FinancialCode').AsInteger := NewCode;
  DataSet.fieldbyname('LevelID').AsInteger := FormType;
  DataSet.fieldbyname('MakeDate').AsDateTime := now;
  DataSet.Fields.fieldbyname('Essence').AsInteger := 2;
  DataSet.Fields.fieldbyname('FinancialType').AsInteger := 0;
  DBEdit2.SetFocus;
end;

procedure TFinancialTopics_1F.qryFinancialTopicsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);

end;

procedure TFinancialTopics_1F.qryFinancialTopicsMakeDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := miladi2Shamsi(qryFinancialTopics.fieldbyname('MakeDate').AsDateTime);
end;

procedure TFinancialTopics_1F.qryFinancialTopicsBeforePost(DataSet: TDataSet);
var
  FinancialCod: String;
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
  begin
    FinancialCod := LeftStr(qryFinancialTopics.fieldbyname('FinancialCode')
      .AsString, qryInit.fieldbyname('PrvCodeLength').AsInteger);
    With DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT  FinancialCode  FROM  acc.FinancialTopics WHERE  FinancialCode = '
        + FinancialCod;
      Active := True;
      if IsEmpty then
      begin
        Warn('ﬂœ ' + FinancialCod + ' »—«Ì ”ÿÕ ﬁ»·Ì  ⁄—Ì› ‰‘œÂ «” .˛');
        Abort;
      end; // if
    end; // with
  end; // if

end;

procedure TFinancialTopics_1F.qryFinancialTopicsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with DMf.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'SELECT  FinancialCode FROM acc.FinancialTopics ' +
      ' where left(FinancialCode,' + qryInitCodeLength.AsString + ') = ' +
      qryFinancialTopicsFinancialCode.AsString;
    Active := True;
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

procedure TFinancialTopics_1F.qryFinancialTopicsFinancialTypeGetText
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

procedure TFinancialTopics_1F.qryFinancialTopicsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TFinancialTopics_1F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TFinancialTopics_1F.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TFinancialTopics_1F.MenuItem1Click(Sender: TObject);
begin
  inherited;
  Print('FinancialTopics_1_L1.rtm');
end;

procedure TFinancialTopics_1F.MenuItem2Click(Sender: TObject);
begin
  inherited;
  Print('FinancialTopics_1_L2.rtm');

end;

procedure TFinancialTopics_1F.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TFinancialTopics_1F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFinancialTopics.fieldbyname('FinancialCode'));
end;

procedure TFinancialTopics_1F.actDeleteExecute(Sender: TObject);
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
end;

procedure TFinancialTopics_1F.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryTopicCode.fieldbyname('TopicCode'));
end;

end.
