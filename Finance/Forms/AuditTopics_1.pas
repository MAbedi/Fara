// mahmood
unit AuditTopics_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, DBGrids, DBCtrls, DB, ADODB, Mask, zAPIBalloon, ppCtrls,
  ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type

  TAuditTopics_1F = class(Ttemplate2MDIF)
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
    qryAuditTopics: TADOQuery;
    SrcAuditTopics: TDataSource;
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
    qryAuditTopicsAuditCode: TIntegerField;
    qryAuditTopicsAuditName: TStringField;
    qryAuditTopicsLevelID: TIntegerField;
    qryInit: TADOQuery;
    qryInitLevelID: TIntegerField;
    qryInitLevelCaption_L1: TStringField;
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
    qryInitPrvLevelCaption_L1: TStringField;
    qryInitPrvCodeLength: TWordField;
    qryTopicCode: TADOQuery;
    qryTopicCodeTopicCode: TLargeintField;
    qryTopicCodeMoeenName_L1: TStringField;
    qryTopicCodeAuditID: TIntegerField;
    SrcTopicCode: TDataSource;
    qryAuditTopicsMakeDate: TDateTimeField;
    Panel7: TPanel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qryPrint: TADOQuery;
    ppReport2: TppReport;
    ppDBPipeline2: TppDBPipeline;
    srcPrint: TDataSource;
    ppReport3: TppReport;
    N31: TMenuItem;
    qryAuditTopicsAuditName_L2: TStringField;
    qryTopicCodeMoeenName_L2: TStringField;
    pnlName_L1: TPanel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    pnlName_L2: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel5: TPanel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    BitBtn10: TBitBtn;
    qryPrintTopicCode: TLargeintField;
    qryPrintMoeenName_L1: TStringField;
    qryPrintAuditID: TIntegerField;
    qryPrintAuditName_L1: TStringField;
    qryPrintMoeenName_L2: TStringField;
    qryPrintAuditName_L2: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel10: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    DataSetDelete1: TDataSetDelete;
    ppHeaderBand3: TppHeaderBand;
    ppLabel12: TppLabel;
    ppLine11: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel17: TppLabel;
    ppLine16: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine14: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLine15: TppLine;
    ppHeaderBand2: TppHeaderBand;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLabel11: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine9: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine10: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure srcDetailsStateChange(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryAuditTopicsAfterScroll(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actRelationExecute(Sender: TObject);
    procedure qryAuditTopicsAfterInsert(DataSet: TDataSet);
    procedure qryAuditTopicsAfterDelete(DataSet: TDataSet);
    procedure qryAuditTopicsMakeDateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryAuditTopicsBeforePost(DataSet: TDataSet);
    procedure qryAuditTopicsBeforeDelete(DataSet: TDataSet);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure qryTopicCodeBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryAuditTopicsAfterPost(DataSet: TDataSet);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure _actSearchExecute(Sender: TObject);
  private
    FormType: Integer;
    procedure Print(ReportName: TppReport; FileName: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuditTopics_1F: TAuditTopics_1F;

implementation

uses DM, GlobalPro, mmessage, Math, search2, shamsiDate,
  AuditTopics_Relation, StrUtils, sort2;

{$R *.dfm}

procedure TAuditTopics_1F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  with qryInit do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
  end; // with
  with qryAuditTopics do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
  end; // with
  PnlAccRelation.Visible := qryInit.FieldByName('AccRelationType')
    .AsInteger > 0;
end;

procedure TAuditTopics_1F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 1);
end;

procedure TAuditTopics_1F.srcDetailsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryAuditTopics.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcAccounting, 'acc.AuditTopics',0);
end;

procedure TAuditTopics_1F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryAuditTopics.DisableControls;
    PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryAuditTopics.EnableControls;
  end;
end;

procedure TAuditTopics_1F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TAuditTopics_1F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAuditTopics_1F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAuditTopics);
  // PopMSort.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TAuditTopics_1F.qryAuditTopicsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryTopicCode do
  begin
    Active := False;
    Parameters.ParamByName('AuditID').Value :=
      qryAuditTopics.FieldByName('AuditCode').AsInteger;
    Active := True;
  end; // with
end;

procedure TAuditTopics_1F.N1Click(Sender: TObject);
begin
  inherited;
  qryAuditTopics.Sort := 'AuditCode';
end;

procedure TAuditTopics_1F.N2Click(Sender: TObject);
begin
  inherited;
  qryAuditTopics.Sort := 'AuditName';
end;

procedure TAuditTopics_1F.actRelationExecute(Sender: TObject);
begin
  inherited;
  if qryAuditTopics.State in [dsinsert] then
    if get_response('»—«Ì «— »«ÿ »« ﬂœÌ‰ê Õ”«»Â«  €ÌÌ—«  –ŒÌ—Â ‘Ê‰œ ø˛') <>
      mrYes then
      Abort
    else
      qryAuditTopics.Post;
  AuditTopics_RelationF.ShowChooseTopicCode
    (qryAuditTopics.FieldByName('AuditCode').AsInteger,
    qryInit.FieldByName('AccRelationType').AsInteger);
  qryTopicCode.Requery;
end;

procedure TAuditTopics_1F.qryAuditTopicsAfterInsert(DataSet: TDataSet);
var
  NewCode: Integer;
begin
  inherited;
  NewCode := GetANewCode
    ('','SELECT max(AuditCode)  FROM  acc.AuditTopics WHERE LevelID = ' +
    IntToStr(FormType), 'AuditCode',dmf.adcAccounting);
  if qryInit.FieldByName('CodeLength').AsInteger > 0 then
    if NewCode < (qryInit.FieldByName('CodeLength').AsInteger * 10)
      div qryInit.FieldByName('CodeLength').AsInteger then
    begin
      NewCode := StrToInt(LeftStr('10000000000000',
        qryInit.FieldByName('CodeLength').AsInteger));
    end; // if
  DataSet.FieldByName('AuditCode').AsInteger := NewCode;
  DataSet.FieldByName('LevelID').AsInteger := FormType;
  DataSet.FieldByName('MakeDate').AsDateTime := now;
  DBEdit2.SetFocus;
end;

procedure TAuditTopics_1F.qryAuditTopicsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TAuditTopics_1F.qryAuditTopicsMakeDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := miladi2Shamsi(qryAuditTopics.FieldByName('MakeDate').AsDateTime);
end;

procedure TAuditTopics_1F.qryAuditTopicsBeforePost(DataSet: TDataSet);
var
  AuditCod: String;
begin
  inherited;
  if not CheckRequiredFields(qryAuditTopics) then
    Abort;
  TrimStringFields(qryAuditTopics);
  if Length(qryAuditTopics.FieldByName('AuditCode').AsString) >
    qryInit.FieldByName('CodeLength').AsInteger then
  begin
    Warn('ÿÊ· ﬂœ »“—ê — «“ Õœ „Ã«“ «” .˛˛');
    DBEdit1.SetFocus;
    Abort;
  end; // if
  if qryInitPrvLevelID.AsInteger > 0 then
  begin
    AuditCod := LeftStr(qryAuditTopics.FieldByName('AuditCode').AsString,
      qryInit.FieldByName('PrvCodeLength').AsInteger);
    With DMf.qry_Temp do
    begin
      Active := False;
      SQL.Text := 'SELECT  AuditCode  FROM  acc.AuditTopics WHERE  AuditCode = '
        + AuditCod;
      Active := True;
      if IsEmpty then
      begin
        Warn('ﬂœ ' + AuditCod + ' »—«Ì ”ÿÕ ﬁ»·Ì  ⁄—Ì› ‰‘œÂ «” .˛');
        Abort;
      end; // if
    end; // with
  end; // if

end;

procedure TAuditTopics_1F.qryAuditTopicsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with DMf.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'SELECT  AuditCode FROM acc.AuditTopics ' +
      ' where left(AuditCode,' + qryInitCodeLength.AsString + ') = ' +
      qryAuditTopicsAuditCode.AsString;
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
    SQL.Text := 'UPDATE acc.Categories SET AuditID = 0 WHERE AuditID = ' +
      qryAuditTopics.FieldByName('AuditCode').AsString;
    ExecSQL;
  end; // with
end;

procedure TAuditTopics_1F.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAuditTopics_1F.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TAuditTopics_1F.ppLabel8GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAuditTopics_1F.ppLabel7GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TAuditTopics_1F.Print(ReportName: TppReport; FileName: String);
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

procedure TAuditTopics_1F.MenuItem1Click(Sender: TObject);
begin
  inherited;
  Print(ppReport1, IfThen(opta.primaryLanguage = 0, 'AuditTopics_1_L1.rtm',
    'AuditTopics_1_L2.rtm'));
end;

procedure TAuditTopics_1F.MenuItem2Click(Sender: TObject);
begin
  inherited;
  Print(ppReport2, IfThen(opta.primaryLanguage = 0,
    'AuditTopics_1_master_L1.rtm', 'AuditTopics_1_master_L2.rtm'));
end;

procedure TAuditTopics_1F.N31Click(Sender: TObject);
begin
  inherited;
  with qryPrint do
  begin
    Active := False;
    SQL.Text := StringReplace(SQL.Text, 'Order  By acc.Categories.AuditID',
      'Order  By ltrim(Str(acc.Categories.TopicCode))', []);
    Active := True;

    Print(ppReport3, IfThen(opta.primaryLanguage = 0, 'AuditTopics_1_all_L1.rtm',
      'AuditTopics_1_all_L2.rtm'));
    Active := False;
    SQL.Text := StringReplace(SQL.Text,
      'Order  By ltrim(Str(acc.Categories.TopicCode))',
      'Order  By acc.Categories.AuditID', []);
    Active := True;
  end;
end;

procedure TAuditTopics_1F.qryTopicCodeBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with DMf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT   acc.Documents.TopicCode FROM  acc.Documents INNER JOIN ' +
      ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode ' +
      ' WHERE   acc.Categories.TopicCode=' + qryTopicCode.FieldByName
      ('TopicCode').AsString;
    Active := True;
    if not(DMf.qry_Temp.FieldByName('TopicCode').IsNull) then
    begin
      // Warn('ﬂœ Õ”«» „Ê—œ ‰Ÿ— ﬁ«»· Õ–› ‰„Ì »«‘œ');
      // Active:=false;
      // Abort;
      // end;//if
      // end;//with
      // if get_response('¬Ì« »—«Ì Õ–› «— »«ÿ „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
      // with Dmf.qry_Temp do begin
      Active := False;
      SQL.Text := 'UPDATE acc.Categories SET AuditID = 0  WHERE  TopicCode =' +
        qryTopicCode.FieldByName('TopicCode').AsString;
      ExecSQL;
      qryTopicCode.Requery();
      Abort;
    end;
  end;
end;

procedure TAuditTopics_1F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryAuditTopics.FieldByName('AuditCode'));
end;

procedure TAuditTopics_1F.qryAuditTopicsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TAuditTopics_1F.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryTopicCode.FieldByName('TopicCode'));
end;

procedure TAuditTopics_1F._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAuditTopics);

end;

end.
