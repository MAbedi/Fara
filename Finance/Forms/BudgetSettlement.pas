unit BudgetSettlement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dm, filter_ADO, FilterClass_ADO, Resource, template2MDI, DB,
  ADODB, ImgList, DBActns, ActnList, StdCtrls, Buttons, FaraConsts, Math,
  ExtCtrls, GlobalPro, sort2, search2, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, FormFunctions,
  Filter_ADO_Const;

type
  TBudgetSettlementF = class(Ttemplate2MDIF)
    srcRptBudgetSettlement: TDataSource;
    qryRptBudgetSettlement: TADOQuery;
    qryRptBudgetSettlementBudgetTopicID: TIntegerField;
    qryRptBudgetSettlementBudgetCaption_L1: TStringField;
    qryRptBudgetSettlementBudgetPrice: TBCDField;
    qryRptBudgetSettlementBudgetCommitPrice: TBCDField;
    qryRptBudgetSettlementAccPrice: TBCDField;
    qryRptBudgetSettlementBalanc: TBCDField;
    qryRptBudgetSettlementBudgetCaption_L2: TStringField;
    actFilter: TAction;
    actExcel: TAction;
    actSort: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TCedarDbgrid;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  BudgetSettlementF: TBudgetSettlementF;

implementation

{$R *.dfm}

procedure TBudgetSettlementF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBudgetSettlementF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do

    try
      AddItem(DMF.adcAccounting, 'CompanyCode', 'òœ Ê‰«„ ‘—ò ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpCompany + User.CompanieCodes);

      AddItem(DMF.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_L1 FROM acc.Categories INNER JOIN (SELECT     MAX(LevelID) AS LevelID  FROM   Acc.AccTopicLevels   GROUP BY TopicType  HAVING      (TopicType = 0)) TopicLevel ON  TopicLevel.LevelID=acc.Categories.levelId ',
        'SELECT min(TopicCode),max(TopicCode) FROM acc.Categories INNER JOIN (SELECT     MAX(LevelID) AS LevelID  FROM   Acc.AccTopicLevels   GROUP BY TopicType  HAVING      (TopicType = 0)) TopicLevel ON  TopicLevel.LevelID=acc.Categories.levelId ');

      AddItem(DMF.adcAccounting, 'BudgetCode', 'ﬂœ Ê ‰«„ »ÊœÃÂ ', 'ﬂœ',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'select BudgetTopicID,BudgetCaption_L1,BudgetCaption_L2 from acc.BudgetTopics'
        + ' where LevelID = (select max(LevelID) from acc.BudgetTopicLevels where TopicType=0)',
        'SELECT min(BudgetTopicID),max(BudgetTopicID) FROM acc.BudgetTopics ' +
        'where LevelID = (select max(LevelID) from acc.BudgetTopicLevels where TopicType=0)');

      // AddItem(DMF.adcAccounting, 'BudgetDate', ' «—ÌŒ', ' «—ÌŒ', ftDate, dvMinMax,
      // '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear + ''',''' +
      // APPBank.endYear + '''');
      AddItemFilter(GetFilter, TBudgetDate);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
    finally
      Free;
    end; // try

end;

procedure TBudgetSettlementF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRptBudgetSettlement);
end;

procedure TBudgetSettlementF.FormDestroy(Sender: TObject);
begin
  inherited;
  //
end;

procedure TBudgetSettlementF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('BudgetDate') = nil then
    Close;
end;

procedure TBudgetSettlementF.UpdateFilter;
begin
  with qryRptBudgetSettlement, Parameters do
  begin
    Close;
    ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['BudgetDate'], ftDate);
    ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['BudgetDate'], ftDate);
    ParamByName('AccTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    ParamByName('AccTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    ParamByName('YearID').Value := APPBank.Year;
    ParamByName('CompanyCode').Value :=
      GetcFrom(myParams.ParamValues['CompanyCode'], ftString);
    ParamByName('BudgetTopicFrom').Value :=
      GetcFrom(myParams.ParamValues['BudgetCode'], ftInteger);
    ParamByName('BudgetTopicTo').Value :=
      GetcTo(myParams.ParamValues['BudgetCode'], ftInteger);

    ParamByName('UserAdmin').Value := ifthen(User.PowerAdmin, 1, 0);
    ParamByName('UserID').Value := User.ID;

    // SetCompanyFilterinLogin(Parameters);

    Open;
  end;
end;

procedure TBudgetSettlementF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRptBudgetSettlement);
end;

end.
