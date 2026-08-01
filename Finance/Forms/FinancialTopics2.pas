unit FinancialTopics2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, ppBands, ppClass, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  Menus, ppStrtch, ppSubRpt, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TFinancialTopics2F = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    qry_Master: TADOQuery;
    qry_Detail: TADOQuery;
    src_Master: TDataSource;
    src_Detail: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actInsert: TAction;
    actEdit: TAction;
    actDelete: TAction;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSendToexcel: TAction;
    qry_MasterFinancialCode: TIntegerField;
    qry_MasterFinancialName_L1: TStringField;
    qry_MasterFinancialName_L2: TStringField;
    qry_MasterLevelID: TIntegerField;
    qry_MasterFinancialType: TWordField;
    qry_MasterEssence: TWordField;
    qry_MasterMakeDate: TDateTimeField;
    qry_DetailFinancialCode: TIntegerField;
    qry_DetailFinancialName_L1: TStringField;
    qry_DetailFinancialName_L2: TStringField;
    qry_DetailLevelID: TIntegerField;
    qry_DetailPrvFinancialCode: TStringField;
    qry_DetailPrvLevelID: TIntegerField;
    qry_DetailPrvCodeLength: TWordField;
    qry_DetailFinancialType: TWordField;
    qry_DetailEssence: TWordField;
    qry_DetailMakeDate: TDateTimeField;
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
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    PopMPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    BitBtn12: TBitBtn;
    BitBtn8: TBitBtn;
    actSort: TAction;
    actPrint: TAction;
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
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine8: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine9: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine5: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    procedure FormCreate(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actSendToexcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qry_MasterAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
  private
    FormType: Byte;
    procedure DeleteRecord;
    procedure InitForm;
    procedure Print(FileName: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinancialTopics2F: TFinancialTopics2F;

implementation

uses Dm, GlobalPro, FinancialTopics2_EditNew, search2, sort2;

{$R *.dfm}

procedure TFinancialTopics2F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  InitForm;
end;

procedure TFinancialTopics2F.actInsertExecute(Sender: TObject);
begin
  inherited;
  FinancialTopics2_EditNewF.enter(dsInsert);

end;

procedure TFinancialTopics2F.actEditExecute(Sender: TObject);
begin
  inherited;
  FinancialTopics2_EditNewF.enter(dsEdit);

end;

procedure TFinancialTopics2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, False, IntToStr(FormType));
  SetColSize(DBGrid2, 1, False, IntToStr(FormType));
end;

procedure TFinancialTopics2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
  SaveColWidth(DBGrid2, IntToStr(FormType));

end;

procedure TFinancialTopics2F.DeleteRecord;
begin
  with Dmf.qry_Temp DO
  begin
    Active := False;
    SQL.Text := 'DELETE FROM acc.FinancialTopics';
    SQL.Add('WHERE (FinancialCode = ' + qry_DetailFinancialCode.AsString + ')');
    ExecSQL;
    Active := False;
  end; // with
  qry_Detail.Requery;
end;

procedure TFinancialTopics2F.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') = mrYes then
    DeleteRecord;
end;

procedure TFinancialTopics2F.actSendToexcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFinancialTopics2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Detail);
end;

procedure TFinancialTopics2F.MenuItem1Click(Sender: TObject);
begin
  inherited;
  Print('FinancialTopics2_L1.rtm');

end;

procedure TFinancialTopics2F.Print(FileName: String);
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

procedure TFinancialTopics2F.MenuItem2Click(Sender: TObject);
begin
  inherited;
  Print('FinancialTopics2_L2.rtm');
end;

procedure TFinancialTopics2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Detail)
end;

procedure TFinancialTopics2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Master.DisableControls;
    qry_Detail.DisableControls;
    PopMPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qry_Master.EnableControls;
    qry_Detail.EnableControls;
  end;
end;

procedure TFinancialTopics2F.InitForm;
begin
  with qryInit do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
  end; // with
  with qry_Master do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value :=
      qryInit.fieldByname('PrvLevelID').AsInteger;
    Active := True;
  end; // with
  // qry_Detail.Active:=True;
  with qry_Detail do
  begin
    Active := False;
    Parameters.ParamByName('FinancialCode').Value :=
      qry_Master.fieldByname('FinancialCode').AsInteger;
    Active := True;
  end;
  Caption := 'À»  Ê ÊÌ—«Ì‘ ' + qryInit.fieldByname('LevelCaption_L1').AsString;
  Label1.Caption := '·Ì”  «ÿ·«⁄«  ' + qryInit.fieldByname
    ('LevelCaption_L1').AsString;
  Label2.Caption := '·Ì”  «ÿ·«⁄«  ' + qryInit.fieldByname
    ('PrvLevelCaption_L1').AsString;

end;

procedure TFinancialTopics2F.qry_MasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_Detail do
  begin
    Active := False;
    Parameters.ParamByName('FinancialCode').Value :=
      qry_Master.fieldByname('FinancialCode').AsInteger;
    Active := True;
  end;
end;

procedure TFinancialTopics2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Detail.fieldByname('FinancialCode'));

end;

procedure TFinancialTopics2F.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Master.fieldByname('FinancialCode'));

end;

procedure TFinancialTopics2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TFinancialTopics2F.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TFinancialTopics2F.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

end.
