unit BudgetTopicBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Dm, DB, ADODB, DBCtrls, StdCtrls, Filter_ADO_Const,
  Mask, ImgList, DBActns, ActnList, Buttons, ExtCtrls, filter_ADO, System.Math,
  FilterClass_ADO, GlobalPro, Resource, sort2, search2, FaraConsts,
  System.ImageList, FormFunctions, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TBudgetTopicBookF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryBudget: TADOQuery;
    qryBudgetTopicBook: TADOQuery;
    srcBudget: TDataSource;
    srcBudgetTopicBook: TDataSource;
    qryBudgetBudgetTopicID: TIntegerField;
    qryBudgetBudgetCaption_L1: TStringField;
    qryBudgetBudgetCaption_L2: TStringField;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    qryBudgetTopicBookCalcBalance: TBCDField;
    qryBudgetTopicBookBed: TBCDField;
    qryBudgetTopicBookBes: TBCDField;
    qryBudgetTopicBookBudetKind: TIntegerField;
    qryBudgetTopicBookCompanyCode: TIntegerField;
    qryBudgetTopicBookSecondaryDocNo: TIntegerField;
    qryBudgetTopicBookPrimaryDocNo: TIntegerField;
    qryBudgetTopicBookDocDate: TStringField;
    qryBudgetTopicBookBudgetTopicID: TIntegerField;
    qryBudgetTopicBookBudgetPrice: TBCDField;
    qryBudgetTopicBookBudgetCommitPrice: TBCDField;
    qryBudgetTopicBookAccPrice: TBCDField;
    qryBudgetTopicBookItemNote_L1: TStringField;
    qryBudgetTopicBookBalance: TBCDField;
    BitBtn3: TBitBtn;
    actExcel: TAction;
    BitBtn4: TBitBtn;
    actSort: TAction;
    BitBtn6: TBitBtn;
    DBGrid1: TCedarDbgrid;
    qryBudgetTopicBookCommitBalance: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryBudgetAfterScroll(DataSet: TDataSet);
    procedure qryBudgetTopicBookAfterOpen(DataSet: TDataSet);
    procedure actExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  BudgetTopicBookF: TBudgetTopicBookF;

implementation

{$R *.dfm}

uses searchCode_ADO;

procedure TBudgetTopicBookF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBudgetTopicBookF.actFilterExecute(Sender: TObject);
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

procedure TBudgetTopicBookF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudgetTopicBook);
end;

procedure TBudgetTopicBookF.BitBtn2Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT BudgetTopicID, BudgetCaption_L1, BudgetCaption_L2 FROM Acc.BudgetTopics'
    + ' WHERE (BudgetTopicID BETWEEN ' +
    IntToStr(qryBudget.Parameters.ParamByName('BudgetIDFrom').Value) + ' AND ' +
    IntToStr(qryBudget.Parameters.ParamByName('BudgetIDTo').Value) + ' )';

  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, Caption, Txt,
    ['òœ', '⁄‰Ê«‰', 'Caption'], Results, [80, 100, 100], alLeft);

  if s then
    qryBudget.Locate('BudgetTopicID', Results[0], []);
end;

procedure TBudgetTopicBookF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('BudgetDate') = nil then
    Close;
end;

procedure TBudgetTopicBookF.qryBudgetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryBudgetTopicBook, Parameters do
  begin
    Close;
    ParamByName('BudgetTopicFrom').Value := qryBudgetBudgetTopicID.AsInteger;
    ParamByName('BudgetTopicTo').Value := qryBudgetBudgetTopicID.AsInteger;
    // SetCompanyFilterinLogin(Parameters);   ›⁄«· ‰‘Êœ
    Open;
  end;
end;

procedure TBudgetTopicBookF.qryBudgetTopicBookAfterOpen(DataSet: TDataSet);
var
  c,c2, bes, bed: Currency;
begin
  with qryBudgetTopicBook do
    try
      First;
      DisableControls;
      c := 0;
      bed := 0;
      bes := 0;
      c2:= fieldByName('BudgetPrice').AsCurrency;;
      while not eof do
      begin
        c2 := c2 + fieldByName('BudgetCommitPrice').AsCurrency;
        c := c + fieldByName('Balance').AsCurrency;
        bed := bed + fieldByName('BudgetPrice').AsCurrency;
        bes := bes + fieldByName('AccPrice').AsCurrency;
        edit;
        fieldByName('calcBalance').AsCurrency := c;
        fieldByName('CommitBalance').AsCurrency := c2;
        fieldByName('bed').AsCurrency := bed;
        fieldByName('bes').AsCurrency := bes;
        post;
        Next;
      end; //
    finally
      First;
      EnableControls;
    end; // try
end;

procedure TBudgetTopicBookF.UpdateFilter;
begin
  with qryBudgetTopicBook, Parameters do
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

    ParamByName('YearIDFrom').Value := APPBank.Year;
    ParamByName('YearIDTo').Value := APPBank.Year;

    ParamByName('CompanyCode').Value :=
      GetcFrom(myParams.ParamValues['CompanyCode'], ftString);

    ParamByName('UserAdmin').Value := ifthen(User.PowerAdmin, 1, 0);
    ParamByName('UserID').Value := User.ID;

    // SetCompanyFilterinLogin(Parameters);     ›⁄«· ‰‘Êœ
  end;
  with qryBudget, Parameters do
  begin
    Close;
    ParamByName('BudgetIDFrom').Value :=
      GetcFrom(myParams.ParamValues['BudgetCode'], ftInteger);
    ParamByName('BudgetIDTo').Value :=
      GetcTo(myParams.ParamValues['BudgetCode'], ftInteger);

    // ParamByName('DateFrom').Value :=
    // GetcFrom(myParams.ParamValues['BudgetDate'], ftDate);
    // ParamByName('DateTo').Value :=
    // GetcTo(myParams.ParamValues['BudgetDate'], ftDate);
    //
    // ParamByName('YearIDFrom').Value := APPBank.Year;
    // ParamByName('YearIDTo').Value := APPBank.Year;

    Open;
  end;

end;

procedure TBudgetTopicBookF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudgetTopicBook);
end;

end.
