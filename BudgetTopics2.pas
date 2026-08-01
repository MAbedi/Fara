unit BudgetTopics2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, System.ImageList, System.Actions;

type
  TBudgetTopics2F = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    qryBudgetTopics: TADOQuery;
    qryBudgetTopicsBudgetTopicID: TIntegerField;
    qryBudgetTopicsBudgetCaption: TStringField;
    qryBudgetTopicsAccCode: TIntegerField;
    qryBudgetTopicsDetailCode: TIntegerField;
    qryBudgetTopicsCTopic1: TIntegerField;
    qryBudgetTopicsLevelID: TIntegerField;
    qryBudgetTopicsNote: TStringField;
    qryBudgetTopicsNextYearCalType: TWordField;
    qryBudgetTopicsEssence: TWordField;
    qryBudgetTopicsDecExtPerecent: TIntegerField;
    qryBudgetTopicsGroupTopic: TIntegerField;
    qryBudgetTopicsPortionPerecentReclamation: TIntegerField;
    qryBudgetTopicsPortionPerecentExp: TIntegerField;
    SrcBudgetTopics: TDataSource;
    actSendToExcel: TAction;
    BitBtn10: TBitBtn;
    actNew: TAction;
    actEdit: TAction;
    actChidNew: TAction;
    qryBudgetTopicsBudgetCaption_L2: TStringField;
    qryBudgetTopicsNote_L2: TStringField;
    actSort: TAction;
    qryInit: TADOQuery;
    qryInitLevelID: TIntegerField;
    qryInitLevelCaption_L1: TStringField;
    qryInitLevelCaption_L2: TStringField;
    qryInitprvLevelID: TIntegerField;
    qryInitCodeLength: TWordField;
    qryInitEssenseSelectable: TWordField;
    qryInitAccRelationType: TWordField;
    qryInitTopicType: TWordField;
    qryInitAssignedForm: TIntegerField;
    qryInitReportFileName: TStringField;
    qryInitNextYearSelectType: TWordField;
    qryInitGroupOnTopicsVisible: TWordField;
    qryInitSelectPercentType: TWordField;
    qryInitHasRelateOnProjects: TWordField;
    qryFormsInfo: TADOQuery;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoInfoName_L2: TStringField;
    qryFormsInfoInfoID: TWordField;
    procedure qryBudgetTopicsEssenceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SrcBudgetTopicsDataChange(Sender: TObject; Field: TField);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actChidNewExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryBudgetTopicsBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn9Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actnoteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure checkBudget;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BudgetTopics2F: TBudgetTopics2F;

implementation

uses GlobalPro, search2, BudgetTopics2_EditNew, dm, BudgetTopicsRelation,
  sort2, NoteBudject;

{$R *.dfm}

procedure TBudgetTopics2F.qryBudgetTopicsEssenceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    Exit;
  if opt.primaryLanguage = 0 then
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L1'))
  else
    Text := VarToStr(qryFormsInfo.Lookup('FormInfoID', Sender.AsInteger,
      'InfoName_L2'));
end;

procedure TBudgetTopics2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TBudgetTopics2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2);
end;

procedure TBudgetTopics2F.FormShow(Sender: TObject);
begin
  inherited;
  qryBudgetTopics.Active := true;
end;

procedure TBudgetTopics2F.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TBudgetTopics2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBudgetTopics2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudgetTopics);
end;

procedure TBudgetTopics2F.SrcBudgetTopicsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  newPanel.Visible := not(qryBudgetTopics.State in dsEditModes);
  BtnReject.Cancel := newPanel.Visible;
end;

procedure TBudgetTopics2F.actNewExecute(Sender: TObject);
begin
  inherited;
  BudgetTopics2_EditNewF.enter(1);
end;

procedure TBudgetTopics2F.actEditExecute(Sender: TObject);
begin
  inherited;
  BudgetTopics2_EditNewF.enter(2);
end;

procedure TBudgetTopics2F.actChidNewExecute(Sender: TObject);
begin
  inherited;
  checkBudget;
  BudgetTopics2_EditNewF.enter(3);
end;

procedure TBudgetTopics2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  BitBtn4.Click;
end;

procedure TBudgetTopics2F.qryBudgetTopicsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with Dmf.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'SELECT  BudgetTopicID FROM acc.BudgetTopics ' +
      ' where left(BudgetTopicID,' +
      IntToStr(Length(qryBudgetTopics.Fieldbyname('BudgetTopicID').AsString)) +
      ') = ' + qryBudgetTopicsBudgetTopicID.AsString;
    Active := true;
    if Dmf.qry_Temp.RecordCount > 1 then
    begin
      warn('»Â œ·Ì· ÊÃÊœ ﬂœ “Ì— ”ÿÕ ,«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
      abort;
    end; // if
  end; // with
  If get_response('¬Ì« »—«Ì Õ–› «Ì‰ —ﬂÊ—œ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    abort;
end;

procedure TBudgetTopics2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryBudgetTopics.Fieldbyname('BudgetTopicID'));
end;

procedure TBudgetTopics2F.BitBtn9Click(Sender: TObject);
begin
  inherited;
  BudgetTopicsRelationF.enter(1);
end;

procedure TBudgetTopics2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudgetTopics);
end;

procedure TBudgetTopics2F.actnoteExecute(Sender: TObject);
begin
  inherited;
  NoteBudjectF.enter(qryBudgetTopics.Fieldbyname('BudgetTopicID').AsString);
end;

procedure TBudgetTopics2F.checkBudget;
var
  bud: string;
begin
  bud := qryBudgetTopics.Fieldbyname('BudgetTopicID').AsString;
  with Dmf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT  BudgetTopicID FROM  acc.BudgetItems WHERE (BudgetTopicID = ' +
      bud + ')';
    Active := true;
    if Not IsEmpty then
    begin
      warn('»Â ⁄·  «” ›«œÂ «“ ﬂœ  ' + bud +
        'œ— «ÿ·«⁄«  »ÊœÃÂ ‘„« „Ã«“ »Â «ÌÃ«œ “Ì— ”ÿÕ »—«Ì ¬‰ ‰„Ì »«‘Ìœ.˛˛');
      abort;
    end
    else
    begin
      Active := false;
      SQL.Text :=
        'SELECT  BudgetTopicID FROM acc.ProjectsRange WHERE (BudgetTopicID = '
        + bud + ')';
      Active := true;
      if Not IsEmpty then
      begin
        warn('»Â ⁄·  «” ›«œÂ «“ ﬂœ  ' + bud +
          'œ— «ÿ·«⁄«  ÿ—Õ Ê Å—ÊéÂ ‘„« „Ã«“ »Â «ÌÃ«œ “Ì— ”ÿÕ »—«Ì ¬‰ ‰„Ì »«‘Ìœ.˛˛');
        abort;
      end;
    end;
  end;
end;

procedure TBudgetTopics2F.FormCreate(Sender: TObject);
begin
  inherited;
  qryFormsInfo.Active := true;
end;

end.
