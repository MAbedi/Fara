//mohammad rezaei
unit AccCode3F_EditNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, Grids, Vcl.DBGrids, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, DB, ADODB, ComCtrls, Mask, Menus, System.Actions;

type
  TAccCode3F_EditNewF = class(TTemplate4F)
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel6: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel7: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    CmbRFREssence: TDBComboBox;
    CmbAidInfoType: TDBComboBox;
    Panel8: TPanel;
    qryCTopicRenge: TADOQuery;
    qryDetailRange: TADOQuery;
    srcDetailRange: TDataSource;
    qryDetailRangeDetailCode: TIntegerField;
    qryDetailRangeTopicCode: TLargeintField;
    srcCTopicRenge: TDataSource;
    qryCTopicRengeCTopicCode: TIntegerField;
    qryCTopicRengeTopicCode: TLargeintField;
    BitBtn5: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actDetail: TAction;
    actCtopic: TAction;
    N4: TMenuItem;
    N11: TMenuItem;
    actNote: TAction;
    N5: TMenuItem;
    qryDetailRangeDetailName_L1: TStringField;
    qryDetailRangeDetailName_L2: TStringField;
    qryCTopicRengeCTopicName_L1: TStringField;
    qryCTopicRengeCTopicName_L2: TStringField;
    Panel9: TPanel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Pnl_L1: TPanel;
    Label6: TLabel;
    DBEdit11: TDBEdit;
    Pnl_L2: TPanel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    GrpProject: TGroupBox;
    SpeedButton5: TSpeedButton;
    DBEdit7: TDBEdit;
    GrpBudget: TGroupBox;
    SpeedButton2: TSpeedButton;
    DBEdit3: TDBEdit;
    TabSheet3: TTabSheet;
    Label8: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    grpAuditID: TGroupBox;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    DBEditAuditID: TDBEdit;
    TabSheet4: TTabSheet;
    grpFinancialID: TGroupBox;
    SpeedButton4: TSpeedButton;
    DBEdit10: TDBEdit;
    grpLastYearTopicCode: TGroupBox;
    Label12: TLabel;
    SpeedButton6: TSpeedButton;
    DBEdit9: TDBEdit;
    grpTaxonomyTopicCode: TGroupBox;
    SpeedButton3: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    cmbTaxonomyType: TDBComboBox;
    DBEdit6: TDBEdit;
    DBEdit_BudgetTopicName: TDBEdit;
    DBEdit_ProjectName: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit8: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure actCtopicExecute(Sender: TObject);
    procedure actDetailExecute(Sender: TObject);
  private
    { Private declarations }
  public
     Procedure enter(TopicCode:integer);
    { Public declarations }
  end;

var
  AccCode3F_EditNewF: TAccCode3F_EditNewF;

implementation

uses Dm, GlobalPro, AccCode3, searchCode_ADO, CToplic_Relation,
  Detail_Relation, searchCode_L1_L2;

{$R *.dfm}
procedure TAccCode3F_EditNewF.enter(TopicCode:integer);
begin
 AccCode3F_EditNewF:=TAccCode3F_EditNewF.Create(Application);
 with AccCode3F_EditNewF do begin
   try
      with qryCTopicRenge do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=TopicCode;
        Active:=True;
      end;//with

      with qryDetailRange do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=TopicCode;
        Active:=True;
      end;//with
      
     ShowModal;
   finally
     Free;
   end;//try
 end;//with

end;

procedure TAccCode3F_EditNewF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  AccCode3F.qrycategories.Cancel;
end;

procedure TAccCode3F_EditNewF.SpeedButton2Click(Sender: TObject);
var
  Results:  array[0..1] of String;
  Txt:  String;
  b:  Boolean;
begin
  inherited;
  Txt:='SELECT dbo.BudgetTopics.BudgetTopicID, dbo.BudgetTopics.BudgetCaption_L1 , dbo.BudgetTopics.BudgetCaption_L2 FROM dbo.BudgetTopics '+
			 'LEFT OUTER JOIN dbo.BudgetTopicsForUse ON dbo.BudgetTopics.BudgetTopicID = dbo.BudgetTopicsForUse.PrvBudgetTopicID '+
       'WHERE (dbo.BudgetTopicsForUse.PrvBudgetTopicID IS NULL)';
  b:=searchCode_L1_L2F.SearchCode2(dmf.adcAccounting,' »ÊœÃÂ Â«  ',Txt,
    ['ﬂœ »ÊœÃÂ','‰«„ »ÊœÃÂ','‰«„ »ÊœÃÂ “»«‰ 2  '],Results,[50,100,100],alLeft);
  if b then begin
    if not (AccCode3F.qrycategories.state in dsEditModes) then   AccCode3F.qrycategories.edit;
    AccCode3F.qrycategories['BudgetTopicID']:=Results[0];
  end;//if
end;

procedure TAccCode3F_EditNewF.SpeedButton5Click(Sender: TObject);
var
  Results:  array[0..1] of String;
  Txt:  String;
  b:  Boolean;
begin
  inherited;
  Txt:='SELECT     dbo.Projects.ProjectID, dbo.Projects.ProjectCaption_L1, dbo.Projects.ProjectCaption_L2 '+
       'FROM         dbo.Projects LEFT OUTER JOIN dbo.ProjectsForUse ON dbo.Projects.ProjectID = dbo.ProjectsForUse.PrvProjectID '+
       'WHERE     (dbo.ProjectsForUse.PrvProjectID IS NULL)';
  b:=searchCode_L1_L2F.SearchCode2(dmf.adcAccounting,' Å—ÊéÂ Â«  ',Txt,
    ['ﬂœ Å—ÊéÂ','‰«„ Å—ÊéÂ','caption'],Results,[50,100,100],alLeft);
  if b then begin
    if not (AccCode3F.qrycategories.state in dsEditModes) then   AccCode3F.qrycategories.edit;
    AccCode3F.qrycategories['ProjectID']:=Results[0];
  end;//if
end;

procedure TAccCode3F_EditNewF.SpeedButton1Click(Sender: TObject);
var
  Results:  array[0..1] of String;
  Txt:  String;
  b:  Boolean;
begin
  inherited;
 Txt:='SELECT     dbo.AuditTopics.AuditCode, dbo.AuditTopics.AuditName_L1, dbo.AuditTopics.AuditName_L2 '+
       'FROM         dbo.AuditTopics LEFT OUTER JOIN '+
       'dbo.AuditTopicForUse ON dbo.AuditTopics.AuditCode = dbo.AuditTopicForUse.PrvAuditCode '+
       'WHERE     (dbo.AuditTopicForUse.PrvAuditCode IS NULL)';
  b:=searchCode_ADOF.SearchCode2(dmf.adcAccounting,' ﬂ‰ —· Â«Ì Õ”«»—”Ì  ',Txt,
    ['ﬂœ','‰«„ ﬂ‰ —·','‰«„ ﬂ‰ —·'],Results,[50,100,100],alLeft);
  if b then begin
    if not (AccCode3F.qrycategories.state in dsEditModes) then   AccCode3F.qrycategories.edit;
    AccCode3F.qrycategories['AuditID']:=Results[0];
  end;//if
end;

procedure TAccCode3F_EditNewF.SpeedButton6Click(Sender: TObject);
var
  Results:  array[0..1] of String;
  Txt:  String;
  b:  Boolean;
begin
  inherited;

  Txt:='SELECT TopicCode, MoeenName_L1, MoeenName_L2  '+
       'FROM  dbo.Categories WHERE (LevelID = '+AccCode3F.qrycategories.Fieldbyname('levelId').AsString+')';
  b:=searchCode_L1_L2F.SearchCode2(dmf.adcOldAccounting,'ÿ»ﬁÂ »‰œÌ Â«',Txt,
    ['ﬂœ ÿ»ﬁÂ »‰œÌ','‰«„ ÿ»ﬁÂ »‰œÌ','‰«„ ÿ»ﬁÂ »‰œÌ'],Results,[50,100,100],alLeft);
  if b then begin
    if not (AccCode3F.qrycategories.state in dsEditModes) then   AccCode3F.qrycategories.edit;
    AccCode3F.qrycategories.FieldByName('LastYearTopicCode').AsString:=Results[0];
//    qry_Categories['LastYearTopicCode']:=Results[0];
  end;//if
end;

procedure TAccCode3F_EditNewF.SpeedButton4Click(Sender: TObject);
var
  Results:  array[0..1] of String;
  Txt:  String;
  b:  Boolean;
begin
  inherited;
 Txt:='SELECT     dbo.FinancialTopics.FinancialCode, dbo.FinancialTopics.FinancialName_L1, dbo.FinancialTopics.FinancialName_L2 '+
      'FROM         dbo.FinancialTopicsForUse RIGHT OUTER JOIN '+
      'dbo.FinancialTopics ON dbo.FinancialTopicsForUse.FinancialCode = dbo.FinancialTopics.FinancialCode '+
      'WHERE     (dbo.FinancialTopicsForUse.PrvFinancialCode IS NULL) ';
  b:=searchCode_L1_L2F.SearchCode2(dmf.adcAccounting,' —«“‰«„Â Â«',Txt,
    ['ﬂœ  —«“‰«„Â','‰«„  —«“‰«„Â','caption'],Results,[50,100,100],alLeft);
  if b then begin
    if not (AccCode3F.qrycategories.state in dsEditModes) then   AccCode3F.qrycategories.edit;
    AccCode3F.qrycategories['FinancialID']:=Results[0];
  end;//if
end;

procedure TAccCode3F_EditNewF.SpeedButton3Click(Sender: TObject);
var
  Results:  array[0..1] of String;
  Txt:  String;
  b:  Boolean;
begin
  inherited;
  Txt:='SELECT TopicCode, MoeenName_L1, MoeenName_L2  '+
       'FROM  dbo.Categories WHERE (LevelID = '+AccCode3F.qrycategories.Fieldbyname('levelId').AsString+')';
  b:=searchCode_ADOF.SearchCode2(dmf.adcAccounting,'ÿ»ﬁÂ »‰œÌ Â«',Txt,
    ['ﬂœ ÿ»ﬁÂ »‰œÌ','‰«„ ÿ»ﬁÂ »‰œÌ','‰«„ ÿ»ﬁÂ »‰œÌ'],Results,[50,100,100],alLeft);
  if b then begin
    if not (AccCode3F.qrycategories.state in dsEditModes) then   AccCode3F.qrycategories.edit;
     AccCode3F.qrycategories.FieldByName('TaxonomyTopicCode').AsString:=Results[0];
  end;//if
end;

procedure TAccCode3F_EditNewF.actCtopicExecute(Sender: TObject);
begin
  inherited;
  CToplic_RelationF.ShowChooseDetail(AccCode3F.qrycategoriesTopicCode.AsInteger);
  qryCTopicRenge.Requery;

end;

procedure TAccCode3F_EditNewF.actDetailExecute(Sender: TObject);
begin
  inherited;
  Detail_RelationF.ShowChooseDetail(AccCode3F.qrycategoriesTopicCode.AsInteger);
  qryDetailRange.Requery;

end;

end.
