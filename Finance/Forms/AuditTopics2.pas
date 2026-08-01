unit AuditTopics2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Grids, DBGrids, ADODB, Menus, ppBands, ppClass, ppCtrls,
  ppPrnabl, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TAuditTopics2F = class(Ttemplate2MDIF)
    qryAuditTopics: TADOQuery;
    srcAuditTopics: TDataSource;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    qryAuditTopicsAuditCode: TIntegerField;
    qryAuditTopicsAuditName: TStringField;
    qryAuditTopicsLevelID: TIntegerField;
    qryAuditTopicsMakeDate: TDateTimeField;
    qry_Detail: TADOQuery;
    src_Detail: TDataSource;
    qry_DetailAuditCode: TIntegerField;
    qry_DetailAuditName: TStringField;
    qry_DetailLevelID: TIntegerField;
    qry_DetailPrvAuditCode: TStringField;
    qry_DetailPrvLevelID: TIntegerField;
    qry_DetailPrvCodeLength: TWordField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn7: TBitBtn;
    actPrint: TAction;
    qry_Init: TADOQuery;
    actDelete: TAction;
    actInsert: TAction;
    actEdit: TAction;
    qryAuditTopicsAuditName_L2: TStringField;
    qry_DetailAuditName_L2: TStringField;
    BitBtn8: TBitBtn;
    BitBtn12: TBitBtn;
    PopMnuForm: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    PopMPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    N31: TMenuItem;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    qry_InitPrvLevelID: TIntegerField;
    qry_InitprvCodeLength: TWordField;
    qry_InitCodeLength: TWordField;
    qry_InitLevelID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
  private
    FormType: Byte;
    procedure DeleteRecord;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuditTopics2F: TAuditTopics2F;

implementation

uses Dm, GlobalPro, AuditTopics2_EditNew, search2, sort2;

{$R *.dfm}

procedure TAuditTopics2F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType:=var_glb_gParam;
  qry_Detail.Active:=True;
 with qry_Init do begin
    Active:=false;
    Parameters.ParamByName('FormType').Value:=FormType;
    Active:=True;
  end;//with
  with qryAuditTopics do begin
    Active:=false;
    Parameters.ParamByName('FormType').Value:=qry_Init.Fieldbyname('PrvLevelID').AsInteger;
    Active:=True;
  end;//with
end;

procedure TAuditTopics2F.DeleteRecord;
begin
  with Dmf.qry_Temp DO begin
    Active:=False;
	  SQL.Text:='DELETE FROM acc.AuditTopics';
		SQL.Add  ('WHERE (AuditCode = '+qry_DetailAuditCode.AsString+')');
    ExecSQL;
    Active:=False;
  end;//with
  qry_Detail.Requery;
end;

procedure TAuditTopics2F.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.')=mrYes then DeleteRecord;

end;

procedure TAuditTopics2F.actEditExecute(Sender: TObject);
begin
  inherited;
  AuditTopics2_EditNewF.enter(dsEdit);

end;

procedure TAuditTopics2F.actInsertExecute(Sender: TObject);
begin
  inherited;
  AuditTopics2_EditNewF.enter(dsInsert);

end;

procedure TAuditTopics2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  PopMnuForm.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TAuditTopics2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Detail);
end;

procedure TAuditTopics2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Detail);
end;

procedure TAuditTopics2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TAuditTopics2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
  SetColSize(DBGrid2,1);
end;

procedure TAuditTopics2F.MenuItem4Click(Sender: TObject);
begin
  inherited;
  with Dmf.qry_Temp do begin
   Active:=false;
     SQL.Text:='SELECT dbo.AuditTopicForUse.PrvAuditCode,acc.AuditTopics.AuditName_L1 AS AudName_L1, acc.AuditTopics.AuditName_L2 AS AudName_L2, '+
               ' acc.AuditTopicForUse.AuditCode, acc.AuditTopicForUse.AuditName_L1, acc.AuditTopicForUse.AuditName_L2 '+
               ' FROM  acc.AuditTopics INNER JOIN acc.AuditTopicForUse ON acc.AuditTopics.AuditCode = acc.AuditTopicForUse.PrvAuditCode'+
               ' ORDER BY  str(acc.AuditTopics.AuditCode)';
   Active:=true;
   FieldByName('AuditCode').DisplayLabel:='ﬂœ';
   FieldByName('AuditName_L1').DisplayLabel:='⁄‰Ê«‰';
   FieldByName('AuditName_L2').DisplayLabel:='Audit Name';
   FieldByName('PrvAuditCode').DisplayLabel:='ﬂœ “Ì— ”ÿÕ';
   FieldByName('AudName_L1').DisplayLabel:='⁄‰Ê«‰ “Ì— ”ÿÕ';
   FieldByName('AudName_L2').DisplayLabel:='prior Audit Name';

   dataToExcel(Dmf.qry_Temp);
  end;
end;

procedure TAuditTopics2F.MenuItem3Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAuditTopics2F.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TAuditTopics2F.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TAuditTopics2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if qry_Detail.RecordCount<>0 then
    actEdit.Execute;
end;

procedure TAuditTopics2F.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryAuditTopics.FieldByName('AuditCode'));
end;

procedure TAuditTopics2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key,qry_Detail.FieldByName('AuditCode'));
end;

procedure TAuditTopics2F.actPrintExecute(Sender: TObject);
begin
  inherited;
   ppReport1.PreviewFormSettings.SinglePageOnly := True;
   ppReport1.Print;
end;

end.
