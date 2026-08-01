unit BudgetTopicLevels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBCtrls, Mask, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TBudgetTopicLevelsF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    qryTopicLevels: TADOQuery;
    qryTopicLevelsLevelID: TIntegerField;
    qryTopicLevelsLevelCaption: TStringField;
    qryTopicLevelsprvLevelID: TIntegerField;
    qryTopicLevelsCodeLength: TWordField;
    qryTopicLevelsEssenseSelectable: TWordField;
    qryTopicLevelsAccRelationType: TWordField;
    qryTopicLevelsTopicType: TWordField;
    qryTopicLevelsAssignedForm: TIntegerField;
    qryTopicLevelsReportFileName: TStringField;
    qryTopicLevelsNextYearSelectType: TWordField;
    qryTopicLevelsGroupOnTopicsVisible: TWordField;
    qryTopicLevelsSelectPercentType: TWordField;
    qryTopicLevelsHasRelateOnProjects: TWordField;
    SrcTopicLevels: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    TabControl1: TTabControl;
    Label1: TLabel;
    LabLevelCaption_L1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    DBEditLevelCaption_L1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    CmbAccRelationType: TDBComboBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Cmbassigned: TDBComboBox;
    CmbNextYear: TDBComboBox;
    CmbSelectPercent: TDBComboBox;
    DBEdit9: TDBEdit;
    CmbEssenseSelectable: TDBComboBox;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    OpenDialog1: TOpenDialog;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel14: TppLabel;
    ppLabel5: TppLabel;
    ppLabel21: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBPipeline1: TppDBPipeline;
    ppLabel19: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel20: TppLabel;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    Bevel1: TBevel;
    qryTopicLevelsLevelCaption_L2: TStringField;
    DBEditLevelCaption_L2: TDBEdit;
    LabLevelCaption_L2: TLabel;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoInfoName_L2: TStringField;
    qryFormsInfoInfoID: TWordField;
    procedure qryTopicLevelsAccRelationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryTopicLevelsAccRelationTypeSetText(Sender: TField;
      const Text: String);
    procedure qryTopicLevelsAssignedFormGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryTopicLevelsAssignedFormSetText(Sender: TField;
      const Text: String);
    procedure qryTopicLevelsNextYearSelectTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryTopicLevelsNextYearSelectTypeSetText(Sender: TField;
      const Text: String);
    procedure qryTopicLevelsSelectPercentTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryTopicLevelsSelectPercentTypeSetText(Sender: TField;
      const Text: String);
    procedure qryTopicLevelsEssenseSelectableGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryTopicLevelsEssenseSelectableSetText(Sender: TField;
      const Text: String);
    procedure SrcTopicLevelsStateChange(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryTopicLevelsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryTopicLevelsAfterDelete(DataSet: TDataSet);
    procedure qryTopicLevelsAfterPost(DataSet: TDataSet);
    procedure qryTopicLevelsBeforeDelete(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryTopicLevelsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BudgetTopicLevelsF: TBudgetTopicLevelsF;

implementation

uses dm, GlobalPro, mmessage, search2, sort2;

{$R *.dfm}

procedure TBudgetTopicLevelsF.qryTopicLevelsAccRelationTypeGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:text:='‰œ«—œ';
    1:text:='ŒÊ«‰œ‰Ì' ;
    2:text:='ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end;//case
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsAccRelationTypeSetText(
  Sender: TField; const Text: String);
begin
  inherited;
   Sender.AsInteger:=CmbAccRelationType.ItemIndex;
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsAssignedFormGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:text:='À»  «ÿ·«⁄«  «Ê·Ì‰ ”ÿÕ';
    1:text:='À»  «ÿ·«⁄«  »« ‰„«Ì‘ «ÿ·«⁄«  ”ÿÕ ﬁ»·Ì' ;
    2:text:='À»  «ÿ·«⁄«  »œÊ‰ ‰„«Ì‘ «ÿ·«⁄«  ”ÿÕ ﬁ»·Ì';
  end;//case
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsAssignedFormSetText(
  Sender: TField; const Text: String);
begin
  inherited;
   Sender.AsInteger:=Cmbassigned.ItemIndex;
end;



procedure TBudgetTopicLevelsF.qryTopicLevelsNextYearSelectTypeGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
   case Sender.AsInteger of
    0:text:='‰œ«—œ';
    1:text:='À»   Ê”ÿ ﬂ«—»—' ;
    2:text:='ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end;//case
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsNextYearSelectTypeSetText(
  Sender: TField; const Text: String);
begin
  inherited;
   Sender.AsInteger:=CmbNextYear.ItemIndex;
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsSelectPercentTypeGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:text:='‰œ«—œ';
    1:text:='À»   Ê”ÿ ﬂ«—»—' ;
    2:text:='ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end;//case
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsSelectPercentTypeSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger:=CmbSelectPercent.ItemIndex;
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsEssenseSelectableGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:text:='‰œ«—œ';
    1:text:='ŒÊ«‰œ‰Ì' ;
    2:text:='ÅÌ‘ ›—÷ «“ ”ÿÕ ﬁ»·Ì';
  end;//case
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsEssenseSelectableSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger:=CmbEssenseSelectable.ItemIndex;
end;

procedure TBudgetTopicLevelsF.SrcTopicLevelsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryTopicLevels.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting,'','',Self.Name);;
end;

procedure TBudgetTopicLevelsF.TabControl1Change(Sender: TObject);
begin
  inherited;
    if TabControl1.TabIndex=0 then
    else
      begin
      DBCheckBox3.Caption:='«„‹ﬂ‹‹‹‹«‰ «— ‹»‹‹‹«ÿ »‹‹« »‹‹‹‹‹‹ÊœÃ‹‹‹‹‹Â —« œ«—œ   ˛';
      end;
    with qryTopicLevels do
    begin
      Active:=False;
      Parameters.ParamByName('IdTopic').Value:=TabControl1.TabIndex;
      Active:=true;
    end;
end;

procedure TBudgetTopicLevelsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TBudgetTopicLevelsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
end;

procedure TBudgetTopicLevelsF.FormShow(Sender: TObject);
begin
  inherited;
   with qryTopicLevels do
    begin
      Active:=False;
      Parameters.ParamByName('IdTopic').Value:=TabControl1.TabIndex;
      Active:=true;
    end;
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryTopicLevelsTopicType.AsInteger:=TabControl1.TabIndex;
  qryTopicLevelsLevelID.AsInteger:=GetANewCode(Self.Name,'ACC.BudgetTopicLevels','LevelID');

  qryTopicLevels.FieldByName('EssenseSelectable').AsInteger:=0;
  qryTopicLevels.FieldByName('AccRelationType').AsInteger:=0;
  qryTopicLevels.FieldByName('SelectPercentType').AsInteger:=0;
  qryTopicLevels.FieldByName('NextYearSelectType').AsInteger:=0;
  qryTopicLevels.FieldByName('GroupOnTopicsVisible').AsInteger:=0;
  qryTopicLevels.FieldByName('HasRelateOnProjects').AsInteger:=0;
  qryTopicLevels.FieldByName('AssignedForm').AsInteger:=0;
  DBEdit1.SetFocus;
end;

procedure TBudgetTopicLevelsF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   OpenDialog1.InitialDir:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))+'Report');
  if OpenDialog1.Execute then begin
    if not(qryTopicLevels.State in dseditmodes) then qryTopicLevels.Edit;
    qryTopicLevels.fieldbyname('ReportFileName').AsString:=ExtractFileName(OpenDialog1.FileName);
  end;//if
end;

procedure TBudgetTopicLevelsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
   SendToExcel(DBGrid1);
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.',1);
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  with DMf.qryTmpTmp do begin
    Active:=False;
    SQL.Text:='SELECT LevelID FROM dbo.BudgetTopics WHERE LevelID  ='+qryTopicLevelsLevelID.AsString;
    Active:=True;
    if IsEmpty  then begin
      if get_response('¬Ì« »—«Ì Õ–› «Ì‰ '+TabControl1.Tabs[TabControl1.TabIndex]+' „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
    end else begin
      Warn('Õ–› «Ì‰ '+TabControl1.Tabs[TabControl1.TabIndex]+' „Ã«“ ‰Ì” .');
      Abort;
    end;//else
  end;//with
end;

procedure TBudgetTopicLevelsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTopicLevels);
end;

procedure TBudgetTopicLevelsF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TBudgetTopicLevelsF.ppLabel17GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qryTopicLevelsTopicType.asinteger=0 then
    text:='«„ﬂ«‰ «— »«ÿ »«ÿ—Õ ÊÅ—ÊéÂ'
  else
    text:='«„ﬂ«‰ «— »«ÿ »« »ÊœÃÂ';
end;

procedure TBudgetTopicLevelsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  with qryTopicLevels do
  begin
    DisableControls;
    ppReport1.Print;
    EnableControls;
  end;//with
end;

procedure TBudgetTopicLevelsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TBudgetTopicLevelsF.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=32 then
    SpeedButton1.Click;
end;

procedure TBudgetTopicLevelsF.ppDBText5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qryTopicLevelsAssignedForm.AsInteger of
    0:text:='À»  «ÿ·«⁄«  «Ê·Ì‰ ”ÿÕ';
    1:text:='À»  «ÿ·«⁄«  »« ‰„«Ì‘ «ÿ·«⁄«  ”ÿÕ ﬁ»·Ì' ;
    2:text:='À»  «ÿ·«⁄«  »œÊ‰ ‰„«Ì‘ «ÿ·«⁄«  ”ÿÕ ﬁ»·Ì';
  end;//case
end;

procedure TBudgetTopicLevelsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTopicLevels);
end;

procedure TBudgetTopicLevelsF.FormCreate(Sender: TObject);
begin
  inherited;
  qryTopicLevels.Active:=true;
  qryFormsInfo.Active:=true;
end;

procedure TBudgetTopicLevelsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   QuickSearch(key,qryTopicLevels.FieldByName('LevelID'));
end;

procedure TBudgetTopicLevelsF.qryTopicLevelsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryTopicLevels) then begin
   Abort;
   exit;
  end;//if
end;

end.
