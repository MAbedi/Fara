unit rptBudgect_WorkTopic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, DBCtrls, ppDB, ppBands, ppCache,
  ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppCtrls, ppVar,
  ppPrnabl, Menus, ppParameter, SumDBGrid, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TrptBudgect_WorkTopicF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryBudgect: TADOQuery;
    srcBudgect: TDataSource;
    qryBudgectBudgetBalance: TFloatField;
    qryBudgectAccBalance: TFloatField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSort: TAction;
    actFilter: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopList4Print: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLBCompanyName: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDocDate: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel15: TppLabel;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc3: TppDBCalc;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel13: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine50: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine4: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppDBCalc2: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine19: TppLine;
    ppLabel5: TppLabel;
    smgrd1: TSumGrid;
    qryBudgectMoeenName_L1: TStringField;
    lrgntfldBudgectTopicCode: TLargeintField;
    bcdfldBudgectRemain: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    // procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    // procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
    // DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
  private
    procedure myInitReportFile(GeneralFileName: string);
    procedure UpdateList;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptBudgect_WorkTopicF: TrptBudgect_WorkTopicF;

implementation

uses dm, search2, sort2, filter_ADO, FilterClass_ADO, GlobalPro;

{$R *.dfm}

procedure TrptBudgect_WorkTopicF.FormCreate(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('TopicCode') = nil then
      close;
end;

procedure TrptBudgect_WorkTopicF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBudgect_WorkTopicF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(Dmf.adcAccounting, 'Date', ' «—ÌŒ ', ' «—ÌŒ  ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'SELECT MIN(DocDate), MAX(DocDate) FROM Acc.DocGroups');
      AddItem(Dmf.adcAccounting, 'TopicCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TrptBudgect_WorkTopicF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudgect);
end;

procedure TrptBudgect_WorkTopicF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudgect);
end;

procedure TrptBudgect_WorkTopicF.UpdateList;
begin
  with qryBudgect do
  begin
    Active := False;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftString);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftString);
    Parameters.ParamByName('YearId').Value := APPBank.Year;
    Active := True;
  end; // with

  SetColSize(DBGrid1, 1, False);
end;

procedure TrptBudgect_WorkTopicF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptBudgect_WorkTopicF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptBudgect_WorkTopicF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptBudgect_WorkTopicF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptBudgect_WorkTopicF.myInitReportFile(GeneralFileName: string);
begin
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath(GeneralFileName);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile;
      PreviewFormSettings.SinglePageOnly := True;
      Print;
    finally
    end; // try
  end; // with
end;

procedure TrptBudgect_WorkTopicF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qryBudgect.DisableControls;
    myInitReportFile('rptBudgect_WorkTopic.rtm');
  finally
    qryBudgect.EnableControls;
  end; // finally
end;

procedure TrptBudgect_WorkTopicF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qryBudgect.DisableControls;
    myInitReportFile('rptBudgect_WorkTopic_CodeKol.rtm');
  finally
    qryBudgect.EnableControls;
  end; // finally
end;

procedure TrptBudgect_WorkTopicF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

// procedure TrptBudgect_WorkTopicF.DBGrid1ColEnter(Sender: TObject);
// begin
// inherited;
// if DBGrid1.SelectedIndex<2 then
// DBGrid2.SelectedIndex:=0
// else  DBGrid2.SelectedIndex:=DBGrid1.SelectedIndex-1;
//
// end;

procedure TrptBudgect_WorkTopicF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  // if Column.ID<2 then
  // DBGrid2.Columns[0].Width :=DBGrid1.Columns[0].Width+DBGrid1.Columns[1].Width
  // else DBGrid2.Columns[Column.ID-1].Width:=Column.Width;

end;

// procedure TrptBudgect_WorkTopicF.DBGrid2DrawColumnCell(Sender: TObject;
// const Rect: TRect; DataCol: Integer; Column: TColumn;
// State: TGridDrawState);
// begin
// inherited;
// if not(gdSelected in State) then begin
// if odd(DBGrid2.DataSource.DataSet.RecNo) then
// DBGrid2.Canvas.Brush.Color:=const_fixed_columns_color;
// end;//if
// DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,state);
// end;

procedure TrptBudgect_WorkTopicF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

end.
