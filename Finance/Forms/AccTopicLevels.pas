unit AccTopicLevels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, Mask, DBCtrls, ComCtrls, System.ImageList,
  System.Actions;

type
  TAccTopicLevelsF = class(Ttemplate2MDIF)
    srcAccTopicLevels: TDataSource;
    qryAccTopicLevels: TADOQuery;
    DBGrid1: TDBGrid;
    qryAccTopicLevelsLevelID: TIntegerField;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    TabSheet7: TTabSheet;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    cmbAssignedForm0: TDBComboBox;
    Label55: TLabel;
    TabSheet8: TTabSheet;
    Label50: TLabel;
    Label7: TLabel;
    cmbReactionEssenceType0: TDBComboBox;
    cmbEssenceSelectable: TDBComboBox;
    Label54: TLabel;
    cmbAccLastYearActive: TDBComboBox;
    TabSheet9: TTabSheet;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    cmbFinancialRelationType: TDBComboBox;
    cmbAuditRelationType: TDBComboBox;
    cmbCenterTopicsRelationType0: TDBComboBox;
    cmbDetailsRelationType1: TDBComboBox;
    qryAccTopicLevelsDetailsRelationType: TWordField;
    qryAccTopicLevelsAccLastYearActive: TWordField;
    DBCheckBox1: TDBCheckBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    cmbAssignedForm3: TDBComboBox;
    Label26: TLabel;
    GroupBox3: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    Label47: TLabel;
    cmbReactionEssenceType3: TDBComboBox;
    Label61: TLabel;
    cmbAccRelationType3: TDBComboBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    cmbAssignedForm4: TDBComboBox;
    Label36: TLabel;
    GroupBox4: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBCheckBox6: TDBCheckBox;
    Label64: TLabel;
    cmbAccRelationType4: TDBComboBox;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    OpenDialog1: TOpenDialog;
    qryAccTopicLevelsRecalInterfaceID: TStringField;
    TabSheet10: TTabSheet;
    Label51: TLabel;
    DBEdit32: TDBEdit;
    Label65: TLabel;
    DBEdit33: TDBEdit;
    Label66: TLabel;
    DBEdit34: TDBEdit;
    Label67: TLabel;
    DBEdit35: TDBEdit;
    Label68: TLabel;
    cmbAssignedForm5: TDBComboBox;
    Label69: TLabel;
    cmbDetailsRelationType2: TDBComboBox;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    DBEdit36: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    qryAccTopicLevelsLevelCaption_L1: TStringField;
    qryAccTopicLevelsLevelCaption_L2: TStringField;
    Label31: TLabel;
    DBEdit43: TDBEdit;
    Label62: TLabel;
    DBEdit47: TDBEdit;
    Label63: TLabel;
    DBEdit48: TDBEdit;
    Label73: TLabel;
    DBEdit49: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    qryAccTopicLevelsAidInfoTypeActive: TWordField;
    DBCheckBox5: TDBCheckBox;
    qryAccTopicLevelsTaxonomyActive: TWordField;
    Label57: TLabel;
    cmbBudgetRelationType: TDBComboBox;
    TabSheet11: TTabSheet;
    qryAccTopicLevelsADDLevelID: TWordField;
    qryAccTopicLevelsEditLevelID: TWordField;
    qryAccTopicLevelsDeleteLevelID: TWordField;
    qryAccTopicLevelsChangeStateLevelID: TWordField;
    qryAccTopicLevelsPrintLevelID: TWordField;
    qryAccTopicLevelsOtherContorolLevleId: TWordField;
    qryAccTopicLevelsAccRelatedID: TWordField;
    Label5: TLabel;
    Label56: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBEdit5: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    Label77: TLabel;
    DBEdit54: TDBEdit;
    Label78: TLabel;
    DBEdit55: TDBEdit;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    Label91: TLabel;
    DBEdit68: TDBEdit;
    Label92: TLabel;
    DBEdit69: TDBEdit;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    Label98: TLabel;
    DBEdit75: TDBEdit;
    Label99: TLabel;
    DBEdit76: TDBEdit;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    Label105: TLabel;
    DBEdit82: TDBEdit;
    Label106: TLabel;
    DBEdit83: TDBEdit;
    TabSheet12: TTabSheet;
    Label114: TLabel;
    Label115: TLabel;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    Label116: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    PageControl3: TPageControl;
    TabSheet13: TTabSheet;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    TabSheet17: TTabSheet;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    edtADDLevelID: TDBEdit;
    edtEditLevelID: TDBEdit;
    edtDeleteLevelID: TDBEdit;
    edtChangeStateLevelID: TDBEdit;
    edtPrintLevelID: TDBEdit;
    edtOtherContorolLevleId: TDBEdit;
    edtAccRelatedID: TDBEdit;
    qryAccTopicLevelsEditState2: TWordField;
    qryAccTopicLevelsEditState3: TWordField;
    Label126: TLabel;
    DBEdit110: TDBEdit;
    Label127: TLabel;
    DBEdit111: TDBEdit;
    Label128: TLabel;
    DBEdit112: TDBEdit;
    Label129: TLabel;
    DBEdit113: TDBEdit;
    Label137: TLabel;
    DBEdit114: TDBEdit;
    Label138: TLabel;
    DBEdit115: TDBEdit;
    Label139: TLabel;
    edtEditState2: TDBEdit;
    Label140: TLabel;
    edtEditState3: TDBEdit;
    qryAccTopicLevelsAccessPermanent: TWordField;
    qryAccTopicLevelsAccessCertain: TWordField;
    Label142: TLabel;
    edtAccessCertain: TDBEdit;
    Label141: TLabel;
    edtAccessPermanent: TDBEdit;
    Label144: TLabel;
    edtDeleteRowLevelID: TDBEdit;
    Label147: TLabel;
    edtShowNoteLevelID: TDBEdit;
    Label145: TLabel;
    edtEditNoteLevelID: TDBEdit;
    qryAccTopicLevelsDeleteRowLevelID: TWordField;
    qryAccTopicLevelsEditNoteLevelID: TWordField;
    qryAccTopicLevelsShowNoteLevelID: TWordField;
    procedure qryAccTopicLevelsAssignedFormGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsAssignedFormSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsEssenceSelectableGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsEssenceSelectableSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsReactionEssenceTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsReactionEssenceTypeSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsAccLastYearActiveGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsAccLastYearActiveSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsAccRelationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsAccRelationTypeSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsFinancialRelationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsFinancialRelationTypeSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsAuditRelationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsAuditRelationTypeSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsCenterTopicsRelationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsCenterTopicsRelationTypeSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsDetailsRelationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsDetailsRelationTypeSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsProjectsRelationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsBudgetRelationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryAccTopicLevelsProjectsRelationTypeSetText(Sender: TField;
      const Text: String);
    procedure qryAccTopicLevelsBudgetRelationTypeSetText(Sender: TField;
      const Text: String);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryAccTopicLevelsAfterInsert(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure srcAccTopicLevelsStateChange(Sender: TObject);
    procedure qryAccTopicLevelsAfterPost(DataSet: TDataSet);
    procedure qryAccTopicLevelsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryAccTopicLevelsBeforePost(DataSet: TDataSet);
  private
    procedure GetsearchDialog(id: Byte);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccTopicLevelsF: TAccTopicLevelsF;

implementation

uses Dm, GlobalPro, mmessage;

{$R *.dfm}

procedure TAccTopicLevelsF.qryAccTopicLevelsAssignedFormGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '›—„ „Œ’Ê’ Ìﬂ ”ÿÕ';
    1:
      Text := '›—„ »« ‰„«Ì‘ «ÿ·«⁄«  ”ÿÕ ﬁ»·Ì';
    2:
      Text := '›—„ »« ‰„«Ì‘ «ÿ·«⁄«  ﬂ·ÌÂ ”ÿÊÕ';
    3:
      Text := '›—„ œ—Œ Ì';
  end; // case
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsAssignedFormSetText(Sender: TField;
  const Text: String);
var
  aCombo: TDBComboBox;
begin
  inherited;
  case PageControl1.ActivePageIndex of
    0:
      aCombo := cmbAssignedForm0;
//    1:
//      aCombo := cmbAssignedForm1;
//    2:
//      aCombo := cmbAssignedForm2;
    3:
      aCombo := cmbAssignedForm3;
    4:
      aCombo := cmbAssignedForm4;
    5:
      aCombo := cmbAssignedForm5;
  else
    aCombo := nil;
  end; // case
  if aCombo <> nil then
    Sender.AsInteger := aCombo.ItemIndex;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsEssenceSelectableGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '‰œ«—œ';
    1:
      Text := '«‰ Œ«»  Ê”ÿ ﬂ«—»—';
    2:
      Text := '‰„«Ì‘ Ê ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end; // case

end;

procedure TAccTopicLevelsF.qryAccTopicLevelsEssenceSelectableSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbEssenceSelectable.ItemIndex;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsReactionEssenceTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '‰œ«—œ';
    1:
      Text := '«‰ Œ«»  Ê”ÿ ﬂ«—»—';
    2:
      Text := '‰„«Ì‘ Ê ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end; // case

end;

procedure TAccTopicLevelsF.qryAccTopicLevelsReactionEssenceTypeSetText
  (Sender: TField; const Text: String);
var
  aCombo: TDBComboBox;
begin
  inherited;
  case PageControl1.ActivePageIndex of
    0:
      aCombo := cmbReactionEssenceType0;
    3:
      aCombo := cmbReactionEssenceType3;
    // 4:  aCombo:=cmbReactionEssenceType4;
  else
    aCombo := nil;
  end; // case
  if aCombo <> nil then
    Sender.AsInteger := aCombo.ItemIndex;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsAccLastYearActiveGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '‰„«Ì‘ ‰‘Êœ';
    1:
      Text := '«‰ Œ«»  Ê”ÿ ﬂ«—»—';
    2:
      Text := '‰„«Ì‘ Ê ÅÌ‘ ›—÷ ﬂœ Õ”«» ”«· Ã«—Ì';
  end; // case
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsAccLastYearActiveSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbAccLastYearActive.ItemIndex;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsAccRelationTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '›«ﬁœ «— »«ÿ';
    1:
      Text := '«‰ Œ«»  Ê”ÿ ﬂ«—»—';
    2:
      Text := '«‰ Œ«» »— «”«” ”ÿÕ ﬁ»·Ì Ê Ã«—Ì';
  end; // case
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsAccRelationTypeSetText
  (Sender: TField; const Text: String);
var
  aCombo: TDBComboBox;
begin
  inherited;
  case PageControl1.ActivePageIndex of
//    1:
//      aCombo := cmbAccRelationType1;
//    2:
//      aCombo := cmbAccRelationType2;
    3:
      aCombo := cmbAccRelationType3;
    4:
      aCombo := cmbAccRelationType4;
    5:
      aCombo := cmbAssignedForm5;
  else
    aCombo := nil;
  end; // case
  if aCombo <> nil then
    Sender.AsInteger := aCombo.ItemIndex;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsFinancialRelationTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '›«ﬁœ «— »«ÿ';
    1:
      Text := '«‰ Œ«»  Ê”ÿ ﬂ«—»—';
    2:
      Text := 'ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end; // case
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsFinancialRelationTypeSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbFinancialRelationType.ItemIndex;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsAuditRelationTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '›«ﬁœ «— »«ÿ';
    1:
      Text := '«‰ Œ«»  Ê”ÿ ﬂ«—»—';
    2:
      Text := 'ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end; // case
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsAuditRelationTypeSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbAuditRelationType.ItemIndex;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsCenterTopicsRelationTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '›«ﬁœ «— »«ÿ';
    1:
      Text := '«‰ Œ«»  Ê”ÿ ﬂ«—»—';
    2:
      Text := 'ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end; // case

end;

procedure TAccTopicLevelsF.qryAccTopicLevelsCenterTopicsRelationTypeSetText
  (Sender: TField; const Text: String);
var
  aCombo: TDBComboBox;
begin
  inherited;
  case PageControl1.ActivePageIndex of
    0:
      aCombo := cmbCenterTopicsRelationType0;
//    1:
//      aCombo := cmbCenterTopicsRelationType1;
//    2:
//      aCombo := cmbCenterTopicsRelationType2;
//     3:  aCombo:=cmbCenterTopicsRelationType3;
//     4:  aCombo:=cmbCenterTopicsRelationType4;
  else
    aCombo := nil;
  end; // case
  if aCombo <> nil then
    Sender.AsInteger := aCombo.ItemIndex;

end;

procedure TAccTopicLevelsF.qryAccTopicLevelsDetailsRelationTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '›«ﬁœ «— »«ÿ';
    1:
      Text := '«‰ Œ«»  Ê”ÿ ﬂ«—»—';
    2:
      Text := 'ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end; // case

end;

procedure TAccTopicLevelsF.qryAccTopicLevelsDetailsRelationTypeSetText
  (Sender: TField; const Text: String);
var
  aCombo: TDBComboBox;
begin
  inherited;
  case PageControl1.ActivePageIndex of
    0:
      aCombo := cmbDetailsRelationType1;
    5:
      aCombo := cmbDetailsRelationType2;
  else
    aCombo := nil;
  end; // case
  if aCombo <> nil then
    Sender.AsInteger := aCombo.ItemIndex;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsProjectsRelationTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '›«ﬁœ «— »«ÿ';
    1:
      Text := '«‰ Œ«»  Ê”ÿ ﬂ«—»—';
    2:
      Text := '«‰ Œ«» »— «”«” ”ÿÕ ﬁ»·Ì';
    3:
      Text := '«‰ Œ«» »— «”«” ”ÿÕ ﬁ»·Ì ÊÃ«—Ì';
  end; // case

end;

procedure TAccTopicLevelsF.qryAccTopicLevelsBudgetRelationTypeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '‰œ«—œ';
    1:
      Text := '«“ ÿ—Ìﬁ «ÿ·«⁄«  »ÊœÃÂ';
    2:
      Text := '«“ ÿ—Ìﬁ ﬂœÌ‰ê »ÊœÃÂ';
  end; // case
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsProjectsRelationTypeSetText
  (Sender: TField; const Text: String);
var
  aCombo: TDBComboBox;
begin
  inherited;
//  case PageControl1.ActivePageIndex of
//    0:
//      aCombo := cmbProjectsRelationType1;
//    1:
//      aCombo := cmbProjectsRelationType2;
//     3:  aCombo:=cmbProjectsRelationType3;
//     4:  aCombo:=cmbProjectsRelationType4;
//  else
    aCombo := nil;
//  end; // case
  if aCombo <> nil then
    Sender.AsInteger := aCombo.ItemIndex;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsBudgetRelationTypeSetText
  (Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := cmbBudgetRelationType.ItemIndex;
end;

procedure TAccTopicLevelsF.GetsearchDialog(id: Byte);
var
  dbedit: TDBEdit;
  qryname: TDataSet;
begin
  dbedit := TDBEdit(FindComponent('DBEdit' + IntToStr(id)));
  if dbedit = nil then
  begin
    warn('›Ì·œ „ﬁ’œ ÅÌœ« ‰‘œ.');
    exit;
  end; // if
  OpenDialog1.InitialDir := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)
    ) + 'Report');
  qryname := dbedit.DataSource.DataSet;
  If OpenDialog1.Execute then
  begin
    if not(qryname.State in dseditmodes) then
      qryname.Edit;
    qryname.FieldByName(dbedit.DataField).Value :=
      ExtractFileName(OpenDialog1.FileName);
    dbedit.SetFocus;
  end; // if
end;

procedure TAccTopicLevelsF.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);

end;

procedure TAccTopicLevelsF.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);
end;

procedure TAccTopicLevelsF.SpeedButton14Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);
end;

procedure TAccTopicLevelsF.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);
end;

procedure TAccTopicLevelsF.SpeedButton16Click(Sender: TObject);
begin
  inherited;
  GetsearchDialog((Sender as TControl).Tag);
end;

procedure TAccTopicLevelsF.FormCreate(Sender: TObject);
begin
  inherited;
  qryAccTopicLevels.Active := True;
  PageControl1.ActivePageIndex := 0;
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  PageControl1.SetFocus;
  Perform(WM_NEXTDLGCTL, 0, 0);
  DataSet.FieldByName('LevelID').AsInteger := GetANewCode('','AccTopicLevels',
    'LevelID',dmf.adcAccounting);
  DataSet.FieldByName('TopicType').AsInteger := PageControl1.TabIndex;
end;

procedure TAccTopicLevelsF.PageControl1Change(Sender: TObject);
begin
  inherited;
  with qryAccTopicLevels do
  begin
    DisableControls;

    Active := False;
    Parameters.ParamByName('TopicType').Value := PageControl1.ActivePageIndex;
    Active := True;
    EnableControls;
  end; // with
end;

procedure TAccTopicLevelsF.srcAccTopicLevelsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryAccTopicLevels.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'AccTopicLevels');
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À‹»  ‘œ.˛', 1);
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mryes then
    Abort;
end;

procedure TAccTopicLevelsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TAccTopicLevelsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TAccTopicLevelsF.qryAccTopicLevelsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryAccTopicLevels) then
  begin
    Abort;
    exit;
  end; // if
end;

end.
