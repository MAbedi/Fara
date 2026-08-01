unit RptCardMachines;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ComCtrls, ppParameter,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppVar, ppPrnabl, ppCtrls, SumDBGrid, Menus, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TRptCardMachinesF = class(Ttemplate2MDIF)
    qryFunction0: TADOQuery;
    srcFunction0: TDataSource;
    actFiltter: TAction;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    actChangeState: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    qryStuffCoding: TADOQuery;
    srcStuffCoding: TDataSource;
    GroupBox1: TGroupBox;
    SpeedButton3: TSpeedButton;
    DBEdit11: TDBEdit;
    edtc_StuffName: TDBEdit;
    DBNavigator2: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    qryStuffCodingc_StuffCode: TLargeintField;
    qryStuffCodingc_StuffName: TStringField;
    qryStuffCodingsd1: TStringField;
    qryStuffCodingsd2: TStringField;
    lblLblsd1: TLabel;
    lblLblsd4: TLabel;
    Label1: TLabel;
    edtsd1: TDBEdit;
    edtsd2: TDBEdit;
    qryFunction0MaintenanceNo: TWordField;
    qryFunction0MaintenanceDate: TStringField;
    qryFunction0LoginNow: TDateTimeField;
    qryFunction0CustID2: TIntegerField;
    qryFunction0CustName2: TStringField;
    qryFunction0DescRequest: TStringField;
    qryFunction0PersonId: TIntegerField;
    qryFunction0CustName: TStringField;
    qryFunction0StuffCode2: TLargeintField;
    qryFunction0c_StuffName: TStringField;
    qryFunction0FunctionDate: TStringField;
    qryFunction1: TADOQuery;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    srcFunction1: TDataSource;
    DBGrid2: TDBGrid;
    qryFunction1StuffCode: TLargeintField;
    qryFunction1UnitName: TStringField;
    qryFunction1UnitSellPrice: TFMTBCDField;
    qryFunction1ReciptNumber: TIntegerField;
    qryFunction1ReciptDate: TStringField;
    qryFunction1ReciptCaption: TStringField;
    qryFunction1ItemNote: TStringField;
    qryFunction1Entity: TFloatField;
    qryFunction1Price: TBCDField;
    qryFunction1c_StuffName: TStringField;
    qryFunction2: TADOQuery;
    IntegerField3: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    LargeintField1: TLargeintField;
    StringField9: TStringField;
    IntegerField4: TIntegerField;
    srcFunction2: TDataSource;
    DBGrid3: TDBGrid;
    qryFunction2WorkShopId: TIntegerField;
    qryFunction2PersonName: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDBPipeline2: TppDBPipeline;
    SumGrid1: TSumGrid;
    qryFunction0ShiftWork: TWordField;
    qryFunction0ShiftWorkTime: TDateTimeField;
    qryFunction0OverTime: TDateTimeField;
    qryFunction0Amount1: TFloatField;
    qryFunction0Amount2: TFloatField;
    qryFunction0Amount3: TFloatField;
    qryFunction2ShiftWork: TWordField;
    qryFunction2ShiftWorkTime: TDateTimeField;
    qryFunction2OverTime: TDateTimeField;
    qryFunction2Amount1: TFloatField;
    qryFunction2Amount2: TFloatField;
    qryFunction2Amount3: TFloatField;
    qryFunction1c_StuffTecInfo: TStringField;
    qryFunction1ReciptNote: TStringField;
    qryFunction2FunctionHour: TDateTimeField;
    qryFunction0FunctionHour: TDateTimeField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppPageStyle1: TppPageStyle;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine3: TppLine;
    ppLine18: TppLine;
    ppLine21: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine27: TppLine;
    ppLabel6: TppLabel;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLabel8: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppShape6: TppShape;
    ppLabel10: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBText7: TppDBText;
    ppLabel2: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText8: TppDBText;
    ppLabel13: TppLabel;
    ppDBText15: TppDBText;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    SumGrid2: TSumGrid;
    SumGrid3: TSumGrid;
    qryFunction0FunctionAmount: TFloatField;
    procedure actFiltterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryStuffCodingAfterScroll(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure PageControl1Change(Sender: TObject);
    procedure qryFunction0ShiftWorkTimeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    procedure UpdateFilter;
    function GetActQry: TADOQuery;
    function GetActGrid: TDBGrid;
  public
    { Public declarations }
  end;

var
  RptCardMachinesF: TRptCardMachinesF;

implementation

uses DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO,
  searchCode_ADO, Math;

{$R *.dfm}

procedure TRptCardMachinesF.actFiltterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'StuffCode', ' ﬂ«·« ', 'ﬂ«·«', ftLargeint, dvMinMax,
        '', '', ciLookup,

        'SELECT DISTINCT StuffCoding.c_StuffCode,StuffCoding.c_StuffName FROM '
        + ' StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID ' +
        'WHERE     (StuffGroups.GroupType = 9) ',
        'SELECT MIN(StuffCoding.c_StuffCode), MAX(StuffCoding.c_StuffCode)' +
        'from  StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID ' +
        'WHERE     (StuffGroups.GroupType = 9) ');

      AddItem(DMf.adcBSell, 'FunctionDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'SELECT ''11/11/11'', ''9999/99/99'' FROM Tsh.Functions');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRptCardMachinesF.UpdateFilter;
begin
  with qryStuffCoding do
  begin
    Active := False;
    SQL.Text := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName';
    SQL.Add(', StuffCoding.sd1, StuffCoding.sd2');
    SQL.Add('FROM StuffCoding INNER JOIN');
    SQL.Add('StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID');
    SQL.Add('WHERE (StuffGroups.GroupType = 9) and');
    SQL.Add('(StuffCoding.c_StuffCode BETWEEN %d AND %d )');
    SQL.Text := Format(SQL.Text,
      [StrToInt64(VarToStr(GetcFrom(myParams.ParamValues['StuffCode'],
      ftLargeint))),
      StrToInt64(VarToStr(GetcTo(myParams.ParamValues['StuffCode'],
      ftLargeint)))]);
    Active := True;
  end; // with
end;

function TRptCardMachinesF.GetActQry(): TADOQuery;
begin
  Result := qryFunction0;
  case PageControl1.TabIndex of
    1:
      Result := qryFunction1;
    2:
      Result := qryFunction2;
  end;
end;

procedure TRptCardMachinesF.PageControl1Change(Sender: TObject);
begin
  inherited;
  qryStuffCodingAfterScroll(qryStuffCoding);
end;

function TRptCardMachinesF.GetActGrid(): TDBGrid;
begin
  Result := DBGrid1;
  case PageControl1.TabIndex of
    1:
      Result := DBGrid2;
    2:
      Result := DBGrid3;
  end;
end;

procedure TRptCardMachinesF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFiltter.Execute;
  if myParams.FindParam('FunctionDate') = nil then
    close;
end;

procedure TRptCardMachinesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4);
  SetColSize(DBGrid2, 1);
  SetColSize(DBGrid3, 2);
end;

procedure TRptCardMachinesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid3);
end;

procedure TRptCardMachinesF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(GetActGrid.DataSource.DataSet.RecNo) then
      GetActGrid.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  GetActGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TRptCardMachinesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(GetActQry);
end;

procedure TRptCardMachinesF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(GetActGrid);
end;

procedure TRptCardMachinesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      ppDBPipeline2.DataSource := srcFunction0;
    1:
      ppDBPipeline2.DataSource := srcFunction1;
    2:
      ppDBPipeline2.DataSource := srcFunction2;
  end;

  try
    GetActQry.DisableControls;
    InitReportFile(ppReport1, Self.Name + IntToStr(PageControl1.TabIndex + 1));
  finally
    GetActQry.EnableControls;
  end;

end;

procedure TRptCardMachinesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(GetActQry);
end;

procedure TRptCardMachinesF.SpeedButton3Click(Sender: TObject);
var
  Result: array [0 .. 3] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, '„«‘Ì‰ ¬·« ',
    qryStuffCoding.SQL.Text, ['ﬂœ', '⁄‰Ê«‰', '‘„«—Â «‰ Ÿ«„Ì', 'Å·«ﬂ «„Ê«·'],
    Result, [50, 100, 80, 80], alLeft) then
    qryStuffCoding.Locate('c_StuffCode', Result[0], []);
end;

procedure TRptCardMachinesF.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton3.Click;
end;

procedure TRptCardMachinesF.qryFunction0ShiftWorkTimeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('HH:mm', Sender.AsDateTime);
end;

procedure TRptCardMachinesF.qryStuffCodingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryFunction0.Active := False;
  qryFunction1.Active := False;
  qryFunction2.Active := False;
  with GetActQry do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      DataSet.Fieldbyname('c_StuffCode').AsLargeInt;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['FunctionDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['FunctionDate'], ftDate);
    Active := True;
  end; // with
end;

procedure TRptCardMachinesF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TRptCardMachinesF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TRptCardMachinesF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TRptCardMachinesF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
