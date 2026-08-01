unit rptBudgect_WorkTopicWithDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, DBCtrls, ppDB, ppBands, ppCache,
  ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppCtrls, ppVar,
  ppPrnabl, Menus, ppParameter, SumDBGrid, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TrptBudgect_WorkTopicWithDetailF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryBudgect: TADOQuery;
    srcBudgect: TDataSource;
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
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLine19: TppLine;
    ppLine16: TppLine;
    ppLine14: TppLine;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc3: TppDBCalc;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel13: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppLine50: TppLine;
    ppDBCalc6: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    smgrd1: TSumGrid;
    lrgntfldBudgectTopicCode: TLargeintField;
    intgrfldBudgectDetailCode: TIntegerField;
    qryBudgectDetailName_L1: TStringField;
    bcdfldBudgectBudgetBalance: TBCDField;
    bcdfldBudgectAccBalance: TBCDField;
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
  private
    procedure myInitReportFile(GeneralFileName: string);
    procedure UpdateList;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptBudgect_WorkTopicWithDetailF: TrptBudgect_WorkTopicWithDetailF;

implementation

uses dm, search2, sort2, filter_ADO, FilterClass_ADO, GlobalPro, Resource;

{$R *.dfm}

procedure TrptBudgect_WorkTopicWithDetailF.FormCreate(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('AccCode') = nil then
      close;
end;

procedure TrptBudgect_WorkTopicWithDetailF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBudgect_WorkTopicWithDetailF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcAccounting, 'DetailCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì', 'ﬂœ  ›’Ì·Ì',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT ACC.Categories.TopicCode, ACC.Categories.MoeenName_L1 FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(ACC.Categories.TopicCode), max(ACC.Categories.TopicCode) FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ');
      AddItem(DMF.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));

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

procedure TrptBudgect_WorkTopicWithDetailF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBudgect);
end;

procedure TrptBudgect_WorkTopicWithDetailF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBudgect);
end;

procedure TrptBudgect_WorkTopicWithDetailF.UpdateList;
begin
  with qryBudgect do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftDate);
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftString);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('YearId').Value := APPBank.Year;
    Active := True;
  end;

  SetColSize(DBGrid1, 1, False);
end;

procedure TrptBudgect_WorkTopicWithDetailF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptBudgect_WorkTopicWithDetailF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptBudgect_WorkTopicWithDetailF.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptBudgect_WorkTopicWithDetailF.ppLBCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptBudgect_WorkTopicWithDetailF.myInitReportFile
  (GeneralFileName: string);
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

procedure TrptBudgect_WorkTopicWithDetailF.N11Click(Sender: TObject);
begin
  inherited;
  with qryBudgect do
  begin
    try
      DisableControls;
      AfterScroll := nil;
      myInitReportFile('rptBudgect_WorkTopicDetail.rtm');
    finally
      EnableControls;
      // AfterScroll := qryBudgectAfterScroll;
      //
      // qryBudgectAfterScroll(qryBudgect);
    end; // finally
  end; // with
end;

procedure TrptBudgect_WorkTopicWithDetailF.N21Click(Sender: TObject);
begin
  inherited;
  with qryBudgect do
  begin
    try
      DisableControls;
      AfterScroll := nil;
      myInitReportFile('rptBudgect_WorkTopic_TopicDetail.rtm');
    finally
      EnableControls;
      // AfterScroll := qryBudgectAfterScroll;
    end; // finally
  end; // with
end;

procedure TrptBudgect_WorkTopicWithDetailF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptBudgect_WorkTopicWithDetailF.DBGrid1DrawColumnCell
  (Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TrptBudgect_WorkTopicWithDetailF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2);
end;

end.
