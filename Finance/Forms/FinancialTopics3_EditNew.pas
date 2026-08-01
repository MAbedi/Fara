unit FinancialTopics3_EditNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, StrUtils, System.Actions;

type
  TFinancialTopics3_EditNewF = class(TTemplate4F)
    qry_AccTopicLevels: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
    qryprvFinancial: TADOQuery;
    srcprvFinancial: TDataSource;
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
    qry_AccTopicLevelsPrvLevelCaption_L1: TStringField;
    qry_AccTopicLevelsPrvCodeLength: TWordField;
    prvpnl: TPanel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    prvpnl_l1: TPanel;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    prvpnl_l2: TPanel;
    Label14: TLabel;
    Panel8: TPanel;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Pnl_L1: TPanel;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    prvlabel: TLabel;
    Label9: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
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
   FormType:byte;
   flag:boolean;
   procedure initForm;
    { Private declarations }
  public
    procedure enter(fType:integer);
    { Public declarations }
  end;

var
  FinancialTopics3_EditNewF: TFinancialTopics3_EditNewF;

implementation

uses Dm, FinancialTopics_Relation, GlobalPro, mmessage,
  shamsiDate, FinancialTopics_3;

{$R *.dfm}

{ TFinancialTopics2_EditNewF }

procedure TFinancialTopics3_EditNewF.enter(fType:integer);

begin
 FinancialTopics3_EditNewF:=tFinancialTopics3_EditNewF.Create(Application);
 with FinancialTopics3_EditNewF do begin
  try
    FormType:=fType;
    case fType of
      1:begin
          with qry_AccTopicLevels do  begin
            Active:=false;
            Parameters.ParamByName('FormType').Value:=FinancialTopics_3F.qryFinancialTopics.fieldbyname('LevelID').AsInteger;
            Active:=true;
          end;//with
          qryFinancialTopics.Insert;
          qryFinancialTopics.FieldByName('LevelID').AsInteger:=FinancialTopics_3F.qryFinancialTopics.fieldbyname('LevelID').AsInteger;
       end;//1
      2:begin
          with qryTopicCode do  begin
              Active:=False;
              Parameters.ParamByName('FinCode').Value:=FinancialTopics_3F.qryFinancialTopicsFinancialCode.AsInteger;
              Active:=true;
            end;
            qryFinancialTopics.Locate('FinancialCode',FinancialTopics_3F.qryFinancialTopicsFinancialCode.AsInteger,[loPartialKey]);
            qryFinancialTopics.Edit;
            with qry_AccTopicLevels do begin
              Active:=false;
              Parameters.ParamByName('FormType').Value:=FinancialTopics_3F.qryFinancialTopics.fieldbyname('LevelID').AsInteger;
              Active:=true;
          end;//with
        end;//2
      3:begin
          with qryprvFinancial do begin
            Active:=false;
              SQL.Text:='SELECT  acc.FinancialTopics.FinancialCode as prvFinancialCode,acc.FinancialTopics.FinancialName_L1 AS prvFinancialName_L1,acc.FinancialTopics.FinancialName_L2 AS prvFinancialName_L2';
              SQL.Add('FROM acc.FinancialTopics INNER JOIN acc.FinancialTopicsForUse ON acc.FinancialTopics.FinancialCode = acc.FinancialTopicsForUse.PrvFinancialCode');
              SQL.Add('WHERE (acc.FinancialTopics.FinancialCode = :FinancialCode )');
              Parameters.ParamByName('FinancialCode').Value:=FinancialTopics_3F.qryFinancialTopics.Fieldbyname('FinancialCode').AsString;
            Active:=true;
          end;//with
          with Dmf.qry_Temp do begin
            Active:=false;
            SQL.Text:='SELECT LevelID, prvLevelID  FROM  acc.AccTopicLevels WHERE (prvLevelID = '+IntToStr(FinancialTopics_3F.qryFinancialTopicsLevelID.AsInteger)+')';
            Active:=true;
            with qry_AccTopicLevels do begin
             Active:=false;
             Parameters.ParamByName('FormType').Value:=Dmf.qry_Temp.fieldbyname('LevelID').AsInteger;
             Active:=true;
            end;//with
            qryFinancialTopics.Insert;
            qryFinancialTopics.FieldByName('LevelID').AsInteger:=Dmf.qry_Temp.fieldbyname('LevelID').AsInteger;
          end;//With
          DBEdit2.Text:=FinancialTopics_3F.qryFinancialTopicsFinancialCode.AsString;
          DBEdit3.Text:=FinancialTopics_3F.qryFinancialTopicsFinancialName.AsString;
        end;//3
    end;//case
    if ((qryprvFinancial.RecordCount=0) and (DBEdit2.Text='')) then begin
       prvlabel.Visible:=false;
       prvpnl.Visible:=False;
       prvpnl_l1.Visible:=False;
       prvpnl_l2.Visible:=False;
    end;
    initform;
    ShowModal;
  finally
     Free;
  end;//try
 end;//with

//  Caption:='À»   Ê ÊÌ—«Ì‘ ' + FinancialTopics_3F.qryInit.fieldbyname('LevelCaption_L1').AsString ;
//  Label1.Caption := ' ﬂœ Ê ⁄‰Ê«‰ ' + FinancialTopics_3F.qryInit.fieldbyname('PrvLevelCaption_L1').AsString ;
//    try
//      case State of
//        dsInsert:begin  qryFinancialTopics.Insert; end;
//        dsEdit  :begin  qryFinancialTopics.Edit;   end;
//      end;//case
//      ShowModal ;
//    finally
//      Free;
//    end;//try
//  end;//with
end;

procedure TFinancialTopics3_EditNewF.initForm;
begin
//  with qry_AccTopicLevels do begin
//    Active:=True;
//    pnlLblMaster.Visible:=not(FieldByName('PrvLevelID').Value=0);
//    lblCode.Caption:=' ﬂœ' +  FieldByName('LevelCaption').AsString;
//    lblCaption.Caption:=' ⁄‰Ê«‰' + FieldByName('LevelCaption').AsString;
//    active:=False;
//  end;//with
end;



procedure TFinancialTopics3_EditNewF.FormCreate(Sender: TObject);
begin
  inherited;
  flag:=true;
  qry_AccTopicLevels.Active:=True;
  qryFinancialTopics.Active:=True;
  qryTopicCode.Active:=True;
  qryFinancialType.Active:=true;
  qryEssence.Active:=true;
  with qryprvFinancial do begin
    Active:=False;
    Parameters.ParamByName('FinancialCode').Value:=FinancialTopics_3F.qryFinancialTopics.Fieldbyname('FinancialCode').AsString;
    Active:=true;
  end;


//  if (FinancialTopics_3F.qryFinancialTopics.FieldByName('PrvFinancialCode').AsString = '' ) then
//   pnlLblMaster.Visible:=false
//  else pnlLblMaster.Visible:=true;

end;

procedure TFinancialTopics3_EditNewF.qryFinancialTopicsAfterInsert(
  DataSet: TDataSet);
var
 s,txt:string;
 Financial:integer;
begin
  inherited;
  if FormType=1 then begin
    s:=qryprvFinancial.Fieldbyname('PrvFinancialCode').AsString;
    if s='' then
     txt:='SELECT max(FinancialCode) FROM acc.FinancialTopics WHERE LevelID='+qry_AccTopicLevels.Fieldbyname('LevelID').AsString
    else
     txt:='SELECT max(FinancialCode) FROM acc.FinancialTopics WHERE LevelID='+qry_AccTopicLevels.Fieldbyname('LevelID').AsString
         +' and left(FinancialCode,'+qry_AccTopicLevels.Fieldbyname('PrvCodeLength').AsString+')= '+s;
  end;
  if FormType=3 then begin
    s:=FinancialTopics_3F.qryFinancialTopicsFinancialCode.AsString;
    txt:='SELECT max(FinancialCode) FROM acc.FinancialTopics WHERE LevelID='+qry_AccTopicLevels.Fieldbyname('LevelID').AsString
         +' and left(FinancialCode,'+qry_AccTopicLevels.Fieldbyname('PrvCodeLength').AsString+')= '+s;
  end;
  Financial:=GetANewCode('',Txt,'FinancialCode',dmf.adcAccounting);
  If Financial = 1 then
     DataSet.FieldByName('FinancialCode').AsInteger:=StrToInt(LeftStr(s+'00000000000000',qry_AccTopicLevels.FieldByName('CodeLength').AsInteger))+1
  else
     DataSet.FieldByName('FinancialCode').AsInteger:=Financial;

  if s<>LeftStr(IntToStr(DataSet.FieldByName('FinancialCode').AsInteger),qry_AccTopicLevelsPrvCodeLength.AsInteger) then begin
    Warn('ﬂœ «‰ Œ«» ‘œÂ „⁄ »— ‰„Ì »«‘œ');
    Abort;
  end;
//  SetDefaltDate;

//var
//  AnewCode:Cardinal;
//  s:String;
//begin
//  inherited;
//  s:=FinancialTopics_3F.qry_Master.FieldByName('FinancialCode').AsString;
//  if FinancialTopics_3F.qryFinancialTopics.RecordCount=0 then
//    AnewCode:=StrToInt(LeftStr(s+'00000000000000',qry_AccTopicLevelsCodeLength.AsInteger))+1
//  else begin
//    AnewCode:=GetANewCode('','SELECT MAX(FinancialCode) FROM acc.FinancialTopicsForUse '+
//                          ' WHERE PrvFinancialCode ='+
//                          FinancialTopics_3F.qry_Master.Fieldbyname('FinancialCode').AsString,'FinancialCode');
//  end;//else
  DataSet.FieldByName('FinancialType').AsInteger:=0;
  DataSet.FieldByName('Essence').AsInteger:=0;

//  DataSet.FieldByName('FinancialCode').AsInteger:=AnewCode;
  DataSet.FieldByName('MakeDate').AsDateTime:=Now;
  DataSet.FieldByName('LevelId').AsInteger:=qry_AccTopicLevels.fieldbyname('LevelID').AsInteger;

end;

procedure TFinancialTopics3_EditNewF.qryFinancialTopicsFinancialTypeGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:text:=' —«“‰«„Â «Ì';
    1:Text:='”Êœ Ê “Ì«‰Ì';
    2:Text:='”«Ì—';
  end;//case
end;

procedure TFinancialTopics3_EditNewF.qryFinancialTopicsFinancialTypeSetText(
  Sender: TField; const Text: String);
begin
  inherited;
 // Sender.AsInteger:=CmbFinancialType.ItemIndex;
end;

procedure TFinancialTopics3_EditNewF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2,1);
end;

procedure TFinancialTopics3_EditNewF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2);
end;

procedure TFinancialTopics3_EditNewF.srcFinancialTopicsStateChange(
  Sender: TObject);
begin
  inherited;
   FreeReservedCodes(Dmf.adcAccounting, 'acc.FinancialTopics');
end;

procedure TFinancialTopics3_EditNewF.qryFinancialTopicsAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  Close;
end;

procedure TFinancialTopics3_EditNewF.qryFinancialTopicsAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  FinancialTopics_3F.qryFinancialTopics.Requery;
  BigMessage('À‹‹»  ‘œ .',1);
  if flag then
   Close;
end;

procedure TFinancialTopics3_EditNewF.qryFinancialTopicsMakeDateGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=miladi2Shamsi(qryFinancialTopics.FieldByName('MakeDate').AsDateTime);

end;

procedure TFinancialTopics3_EditNewF.actRelationExecute(Sender: TObject);
begin
  inherited;
  if qryFinancialTopics.State in [dsinsert] then
   if get_response('»—«Ì «— »«ÿ »« ÿ—Õ Ê »—‰«„Â  €ÌÌ—«  –ŒÌ—Â ‘Ê‰œ ø˛')<>mrYes then
     Abort
   else begin
     flag:=false;
     qryFinancialTopics.Post;
   end;
  FinancialTopics_RelationF.ShowChooseTopicCode(qryFinancialTopics.FieldByName('FinancialCode').AsInteger,
                                            qry_AccTopicLevels.FieldByName('AccRelationType').AsInteger);
  qryTopicCode.Requery;

end;

procedure TFinancialTopics3_EditNewF.qryFinancialTopicsAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  with qryTopicCode  do begin
    Active:=False;
     Parameters.ParamByName('FinCode').Value:=qryFinancialTopics.fieldbyname('FinancialCode').AsInteger;
    Active:=True;
  end;//with
end;

procedure TFinancialTopics3_EditNewF.FormShow(Sender: TObject);
begin
  inherited;
//  lblTopic0.Caption:=Caption;
//  if  opt.primaryLanguage = 0  then   DBText2.DataField:='FinancialName_L1'  else
//  DBText2.DataField:='FinancialName_L2' ;
end;

procedure TFinancialTopics3_EditNewF.qryFinancialTopicsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
 if qry_AccTopicLevels.FieldByName('CodeLength').AsInteger<>Length(IntToStr(qryFinancialTopics.FieldByName('FinancialCode').asinteger)) then   begin
    Warn('ÿÊ· ﬂœ „⁄ »— ‰Ì”  .˛');
    DBEdit3.SetFocus;
    Abort;
 end;//if
  if not CheckRequiredFields(qryFinancialTopics) then begin
   Abort;
   exit;
  end;//if
end;

procedure TFinancialTopics3_EditNewF.BitBtn3Click(Sender: TObject);
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

procedure TFinancialTopics3_EditNewF.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryTopicCode.FieldByName('TopicCode'));
end;

end.
