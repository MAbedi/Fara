unit FinancialTopics2_EditNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, StrUtils, System.Actions;

type
  TFinancialTopics2_EditNewF = class(TTemplate4F)
    qry_AccTopicLevels: TADOQuery;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnlLblMaster: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Image3: TImage;
    Image2: TImage;
    qryFinancialTopics: TADOQuery;
    srcFinancialTopics: TDataSource;
    DBGrid2: TDBGrid;
    qryTopicCode: TADOQuery;
    SrcTopicCode: TDataSource;
    Panel6: TPanel;
    BitBtn11: TBitBtn;
    actRelation: TAction;
    qryFinancialTopicsFinancialCode: TIntegerField;
    qryFinancialTopicsFinancialName_L1: TStringField;
    qryFinancialTopicsFinancialName_L2: TStringField;
    qryFinancialTopicsLevelID: TIntegerField;
    qryFinancialTopicsFinancialType: TWordField;
    qryFinancialTopicsEssence: TWordField;
    qryFinancialTopicsMakeDate: TDateTimeField;
    qry_AccTopicLevelsLevelID: TIntegerField;
    qry_AccTopicLevelsLevelCaption_L1: TStringField;
    qry_AccTopicLevelsLevelCaption_L2: TStringField;
    qry_AccTopicLevelsPrvLevelID: TIntegerField;
    qry_AccTopicLevelsCodeLength: TWordField;
    qry_AccTopicLevelsFinancialRelationType: TWordField;
    qry_AccTopicLevelsAuditRelationType: TWordField;
    qry_AccTopicLevelsEssenceSelectable: TWordField;
    qry_AccTopicLevelsAccRelationType: TWordField;
    qry_AccTopicLevelsCenterTopicsRelationType: TWordField;
    qry_AccTopicLevelsDetailsRelationType: TWordField;
    qry_AccTopicLevelsAccLastYearActive: TWordField;
    qry_AccTopicLevelsAssignedForm: TWordField;
    qry_AccTopicLevelsReportFileName1: TStringField;
    qry_AccTopicLevelsReportFileName2: TStringField;
    qry_AccTopicLevelsReportFileName3: TStringField;
    qry_AccTopicLevelsTopicType: TWordField;
    qry_AccTopicLevelsBudgetRelationType: TWordField;
    qry_AccTopicLevelsTaxonomyActive: TWordField;
    qry_AccTopicLevelsProjectsRelationType: TWordField;
    qry_AccTopicLevelsUseInDocumentsActive: TWordField;
    qry_AccTopicLevelsReactionEssenceType: TWordField;
    qry_AccTopicLevelsNoteActive: TWordField;
    qry_AccTopicLevelsRecalInterfaceID: TStringField;
    qry_AccTopicLevelsAidInfoTypeActive: TWordField;
    Panel2: TPanel;
    lblCode: TLabel;
    DBEdit3: TDBEdit;
    pnl_l1: TPanel;
    lblCaption: TLabel;
    DBEdit4: TDBEdit;
    Panel3: TPanel;
    Label4: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    pnl_l2: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    qryTopicCodeTopicCode: TLargeintField;
    qryTopicCodeMoeenName_L1: TStringField;
    qryTopicCodeMoeenName_L2: TStringField;
    qryTopicCodeLevelID: TIntegerField;
    qryTopicCodeFinancialID: TIntegerField;
    qryTopicCodeAuditID: TIntegerField;
    qryTopicCodeEssence: TWordField;
    qryTopicCodeReactionForRepEssence: TWordField;
    qryTopicCodeTaxonomyType: TWordField;
    qryTopicCodeTaxonomyTopicCode: TLargeintField;
    qryTopicCodeLastYearTopicCode: TLargeintField;
    qryTopicCodeLastTopicCode: TLargeintField;
    qryTopicCodeAidInfoType: TWordField;
    qryTopicCodeAuditReferenceNo: TIntegerField;
    qryTopicCodeAuditReferenceTxt: TStringField;
    qryTopicCodeRecalInterfaceID: TStringField;
    qryTopicCodeBudgetTopicID: TIntegerField;
    qryTopicCodeProjectID: TIntegerField;
    qryTopicCodemakeDate: TDateTimeField;
    BitBtn3: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    qryEssence: TADOQuery;
    srcEssence: TDataSource;
    qryFinancialType: TADOQuery;
    srcFinancialType: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure qryFinancialTopicsAfterInsert(DataSet: TDataSet);
    procedure qryFinancialTopicsFinancialTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryFinancialTopicsFinancialTypeSetText(Sender: TField;
      const Text: String);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure srcFinancialTopicsStateChange(Sender: TObject);
    procedure qryFinancialTopicsAfterCancel(DataSet: TDataSet);
    procedure qryFinancialTopicsAfterPost(DataSet: TDataSet);
    procedure qryFinancialTopicsMakeDateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actRelationExecute(Sender: TObject);
    procedure qryFinancialTopicsAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryFinancialTopicsBeforePost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
  private

//     procedure initForm;
    { Private declarations }
  public
    procedure enter(State:TDataSetState);
    { Public declarations }
  end;

var
  FinancialTopics2_EditNewF: TFinancialTopics2_EditNewF;

implementation

uses Dm, FinancialTopics2, FinancialTopics_Relation, GlobalPro, mmessage,
  shamsiDate;

{$R *.dfm}

{ TFinancialTopics2_EditNewF }

procedure TFinancialTopics2_EditNewF.enter(State:TDataSetState);
begin
  FinancialTopics2_EditNewF:=tFinancialTopics2_EditNewF.Create(Application);
  with FinancialTopics2_EditNewF do begin
  Caption:='À»   Ê ÊÌ—«Ì‘ ' + FinancialTopics2F.qryInit.fieldbyname('LevelCaption_L1').AsString ;
  Label1.Caption := ' ﬂœ Ê ⁄‰Ê«‰ ' + FinancialTopics2F.qryInit.fieldbyname('PrvLevelCaption_L1').AsString ;
    try
      case State of
        dsInsert:begin  qryFinancialTopics.Insert; end;
        dsEdit  :begin  qryFinancialTopics.Edit;   end;
      end;//case
      ShowModal ;
    finally
      Free;
    end;//try
  end;//with
end;

//procedure TFinancialTopics2_EditNewF.initForm;
//begin
//  with qry_AccTopicLevels do begin
//    Active:=True;
//    pnlLblMaster.Visible:=not(FieldByName('PrvLevelID').Value=0);
//    lblCode.Caption:=' ﬂœ' +  FieldByName('LevelCaption').AsString;
//    lblCaption.Caption:=' ⁄‰Ê«‰' + FieldByName('LevelCaption').AsString;
//    active:=False;
//  end;//with
//end;



procedure TFinancialTopics2_EditNewF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_AccTopicLevels.Active:=True;
  qryFinancialTopics.Active:=True;
  qryTopicCode.Active:=True;
  qryFinancialType.Active:=true;
  qryEssence.Active:=true;
end;

procedure TFinancialTopics2_EditNewF.qryFinancialTopicsAfterInsert(
  DataSet: TDataSet);
var
  AnewCode:Cardinal;
  s:String;
begin
  inherited;
  s:=FinancialTopics2F.qry_Master.FieldByName('FinancialCode').AsString;
  if FinancialTopics2F.qry_Detail.RecordCount=0 then
    AnewCode:=StrToInt(LeftStr(s+'00000000000000',qry_AccTopicLevelsCodeLength.AsInteger))+1
    else begin
      AnewCode:=GetANewCode('','SELECT MAX(FinancialCode) FROM acc.FinancialTopicsForUse '+
                            ' WHERE PrvFinancialCode ='+FinancialTopics2F.qry_MasterFinancialCode.AsString,'FinancialCode',dmf.adcAccounting);
    end;//else
  DataSet.FieldByName('FinancialType').AsInteger:=0;
  DataSet.FieldByName('Essence').AsInteger:=0;

  DataSet.FieldByName('FinancialCode').AsInteger:=AnewCode;
  DataSet.FieldByName('MakeDate').AsDateTime:=Now;
  DataSet.FieldByName('LevelId').AsInteger:=qry_AccTopicLevels.fieldbyname('LevelID').AsInteger;

end;

procedure TFinancialTopics2_EditNewF.qryFinancialTopicsFinancialTypeGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:text:=' —«“‰«„Â «Ì';
    1:Text:='”Êœ Ê “Ì«‰Ì';
    2:Text:='”«Ì—';
  end;//case
end;

procedure TFinancialTopics2_EditNewF.qryFinancialTopicsFinancialTypeSetText(
  Sender: TField; const Text: String);
begin
  inherited;
 // Sender.AsInteger:=CmbFinancialType.ItemIndex;
end;

procedure TFinancialTopics2_EditNewF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2,1);
end;

procedure TFinancialTopics2_EditNewF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2);
end;

procedure TFinancialTopics2_EditNewF.srcFinancialTopicsStateChange(
  Sender: TObject);
begin
  inherited;
   FreeReservedCodes(Dmf.adcAccounting, 'acc.FinancialTopicsForUse');
end;

procedure TFinancialTopics2_EditNewF.qryFinancialTopicsAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  Close;
end;

procedure TFinancialTopics2_EditNewF.qryFinancialTopicsAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  FinancialTopics2F.qry_Detail.Requery;
  BigMessage('À‹‹»  ‘œ .',1);
  Close;
end;

procedure TFinancialTopics2_EditNewF.qryFinancialTopicsMakeDateGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=miladi2Shamsi(qryFinancialTopics.FieldByName('MakeDate').AsDateTime);

end;

procedure TFinancialTopics2_EditNewF.actRelationExecute(Sender: TObject);
begin
  inherited;

  FinancialTopics_RelationF.ShowChooseTopicCode(qryFinancialTopics.FieldByName('FinancialCode').AsInteger,
                                            qry_AccTopicLevels.FieldByName('AccRelationType').AsInteger);
  qryTopicCode.Requery;

end;

procedure TFinancialTopics2_EditNewF.qryFinancialTopicsAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  with qryTopicCode  do begin
    Active:=False;
    Parameters.ParamByName('FinCode').Value:=qryFinancialTopics.fieldbyname('FinancialCode').AsInteger;
    Active:=True;
  end;//with
end;

procedure TFinancialTopics2_EditNewF.FormShow(Sender: TObject);
begin
  inherited;
  lblTopic0.Caption:=Caption;
  if  opt.primaryLanguage = 0  then   DBText2.DataField:='FinancialName_L1'  else
  DBText2.DataField:='FinancialName_L2' ;
end;

procedure TFinancialTopics2_EditNewF.qryFinancialTopicsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
 if qry_AccTopicLevels.FieldByName('CodeLength').AsInteger<>Length(IntToStr(qryFinancialTopics.FieldByName('FinancialCode').asinteger)) then   begin
    Warn('ÿÊ· ﬂœ „⁄ »— ‰Ì”  .˛');
    DBEdit3.SetFocus;
    Abort;
 end;//if
end;

procedure TFinancialTopics2_EditNewF.BitBtn3Click(Sender: TObject);
begin
  inherited;
   if get_response('¬Ì« »—«Ì Õ–› «— »«ÿ „ÿ„∆‰ Â” Ìœø')=mrYes then 
      with qryTopicCode do begin
          Edit;
          FieldByName('FinancialID').AsInteger:=0;
          Post;
          Requery();
      end;
end;

procedure TFinancialTopics2_EditNewF.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryTopicCode.FieldByName('TopicCode'));
end;

end.
