// mahmood
unit FinancialTopics_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DBCtrls, DB, ADODB, zAPIBalloon, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TFinancialTopics_3F = class(Ttemplate2MDIF)
    Panel1: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    BitBtn6: TBitBtn;
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
    qryFinancialTopicsFinancialCode: TIntegerField;
    qryFinancialTopicsFinancialName: TStringField;
    qryFinancialTopicsLevelID: TIntegerField;
    qryFinancialTopicsFinancialType: TWordField;
    qryFinancialTopicsEssence: TWordField;
    qryFinancialTopicsMakeDate: TDateTimeField;
    qryFinancialTopicsFinancialName_L2: TStringField;
    ButtonNewLevel: TBitBtn;
    actEdit: TAction;
    actInsert: TAction;
    BitBtn12: TBitBtn;
    BitBtn2: TBitBtn;
    qryEssence: TADOQuery;
    qryFinancialType: TADOQuery;
    qryFinancialTopics_FinancialType: TStringField;
    qryFinancialTopics_Essence: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine23: TppLine;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    actNewLevel: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryFinancialTopicsAfterInsert(DataSet: TDataSet);
    procedure qryFinancialTopicsAfterDelete(DataSet: TDataSet);
    procedure qryFinancialTopicsMakeDateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryFinancialTopicsBeforePost(DataSet: TDataSet);
    procedure qryFinancialTopicsBeforeDelete(DataSet: TDataSet);
    procedure qryFinancialTopicsAfterScroll(DataSet: TDataSet);
    procedure actEditExecute(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure qryFinancialTopicsAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actNewLevelExecute(Sender: TObject);
  private
    FormType: Integer;
    procedure Print(FileName: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinancialTopics_3F: TFinancialTopics_3F;

implementation

uses DM, GlobalPro, mmessage, search2, shamsiDate, StrUtils,

  FinancialTopics3_EditNew;

{$R *.dfm}

procedure TFinancialTopics_3F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  with qryInit do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
  end; // with
  // with qry_Master do begin
  // Active:=False;
  // Parameters.ParamByName('FormType').Value:=qryInit.fieldByname('PrvLevelID').AsInteger ;
  // Active:=True;
  // end;//with
  with qryFinancialTopics do
  begin
    Active := False;
    // Parameters.ParamByName('FormType').Value:=FormType;
    Active := True;
  end; // with
end;

procedure TFinancialTopics_3F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TFinancialTopics_3F.Print(FileName: String);
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

procedure TFinancialTopics_3F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFinancialTopics.DisableControls;
    PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryFinancialTopics.EnableControls;
  end;
end;

procedure TFinancialTopics_3F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TFinancialTopics_3F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFinancialTopics_3F.actSortExecute(Sender: TObject);
begin
  inherited;
  PopMSort.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFinancialTopics_3F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFinancialTopics);
end;

procedure TFinancialTopics_3F.N1Click(Sender: TObject);
begin
  inherited;
  qryFinancialTopics.Sort := 'FinancialCode';
end;

procedure TFinancialTopics_3F.N2Click(Sender: TObject);
begin
  inherited;
  qryFinancialTopics.Sort := 'FinancialName_L1';
end;

procedure TFinancialTopics_3F.qryFinancialTopicsAfterInsert(DataSet: TDataSet);
// var
// NewCode:Integer;
begin
  inherited;
  // NewCode:=Get ANew Code('','SELECT max(FinancialCode)  FROM  FinancialTopics WHERE LevelID = '+IntToStr(FormType),'FinancialCode');
  // if qryInit.FieldByName('CodeLength').AsInteger>0 then
  // if NewCode<(qryInit.FieldByName('CodeLength').AsInteger*10)
  // div qryInit.FieldByName('CodeLength').AsInteger then begin
  // NewCode:=StrToInt(  LeftStr('10000000000000',qryInit.FieldByName('CodeLength').AsInteger)  );
  // end;//if
  // DataSet.FieldByName('FinancialCode').AsInteger:=NewCode;
  DataSet.FieldByName('LevelID').AsInteger := FormType;
  DataSet.FieldByName('MakeDate').AsDateTime := now;
  DataSet.Fields.FieldByName('Essence').AsInteger := 2;
  DataSet.Fields.FieldByName('FinancialType').AsInteger := 0;
end;

procedure TFinancialTopics_3F.qryFinancialTopicsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);

end;

procedure TFinancialTopics_3F.qryFinancialTopicsMakeDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := miladi2Shamsi(qryFinancialTopics.FieldByName('MakeDate').AsDateTime);
end;

procedure TFinancialTopics_3F.qryFinancialTopicsBeforePost(DataSet: TDataSet);
var
  FinancialCod: String;
begin
  inherited;
  if not CheckRequiredFields(qryFinancialTopics) then
    Abort;
  TrimStringFields(qryFinancialTopics);
  if Length(qryFinancialTopics.FieldByName('FinancialCode').AsString) >
    qryInit.FieldByName('CodeLength').AsInteger then
  begin
    Warn('ÿÊ· ﬂœ »“—ê — «“ Õœ „Ã«“ «” .˛˛');
    // DBEdit1.SetFocus;
    Abort;
  end; // if
  if qryInitPrvLevelID.AsInteger > 0 then
  begin
    FinancialCod := LeftStr(qryFinancialTopics.FieldByName('FinancialCode')
      .AsString, qryInit.FieldByName('PrvCodeLength').AsInteger);
    With Dmf.qry_Temp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT  FinancialCode  FROM  FinancialTopics WHERE  FinancialCode = ' +
        FinancialCod;
      Active := True;
      if IsEmpty then
      begin
        Warn('ﬂœ ' + FinancialCod + ' »—«Ì ”ÿÕ ﬁ»·Ì  ⁄—Ì› ‰‘œÂ «” .˛');
        Abort;
      end; // if
    end; // with
  end; // if

end;

procedure TFinancialTopics_3F.qryFinancialTopicsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'SELECT  FinancialCode FROM acc.FinancialTopics ' +
      ' where left(FinancialCode,' +
      IntToStr(Length(qryFinancialTopics.FieldByName('FinancialCode').AsString))
      + ') = ' + qryFinancialTopicsFinancialCode.AsString;
    Active := True;
    if Dmf.qry_Temp.RecordCount > 1 then
    begin
      Warn('»Â œ·Ì· ÊÃÊœ ﬂœ “Ì— ”ÿÕ ,«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
      Abort;
    end; // if
  end; // with
  If get_response('¬Ì« »—«Ì Õ–› «Ì‰ —ﬂÊ—œ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;

  // With Dmf.qry_Temp do begin
  // Active:=False;
  // SQL.Text:='UPDATE Categories SET FinancialID = 0 WHERE FinancialID = '+qryFinancialTopics.FieldByName('FinancialCode').AsString;
  // ExecSQL;
  // end;//with
end;

procedure TFinancialTopics_3F.qryFinancialTopicsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // with qryFinancialTopics do begin
  // if FieldByName('PrvFinancialCode').AsString='' then  ButtonNewLevel.Visible:=false
  // else ButtonNewLevel.Visible:=true;
  // end;
end;

procedure TFinancialTopics_3F.actEditExecute(Sender: TObject);
begin
  inherited;
  FinancialTopics3_EditNewF.enter(2);
end;

procedure TFinancialTopics_3F.actInsertExecute(Sender: TObject);
begin
  inherited;
  FinancialTopics3_EditNewF.enter(1);
  // FinancialTopics3_EditNewF.enter(dsinsert);
end;

procedure TFinancialTopics_3F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TFinancialTopics_3F.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TFinancialTopics_3F.MenuItem1Click(Sender: TObject);
begin
  inherited;
  Print('FinancialTopics3_L1.rpt');
end;

procedure TFinancialTopics_3F.MenuItem2Click(Sender: TObject);
begin
  inherited;
  Print('FinancialTopics3_L2.rpt');
end;

procedure TFinancialTopics_3F.qryFinancialTopicsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TFinancialTopics_3F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFinancialTopics.FieldByName('FinancialCode'));
end;

procedure TFinancialTopics_3F.actNewLevelExecute(Sender: TObject);
begin
  inherited;
  FinancialTopics3_EditNewF.enter(3);
end;

end.
