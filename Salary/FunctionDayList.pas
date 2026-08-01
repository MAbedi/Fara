unit FunctionDayList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, Menus, SumDBGrid, ppDB, ppDBPipe,
  ppModule, ppBands, ppClass, ppCtrls, ppStrtch, ppRegion, ppVar,
  ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  MyComboBoxUnit, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TFunctionDayListF = class(Ttemplate2MDIF)
    qryFunctionDayItems: TADOQuery;
    qryFunctionDayItemsPersonelNo: TIntegerField;
    qryFunctionDayItemsFunTime: TFloatField;
    qryFunctionDayItemsExtTime: TFloatField;
    qryFunctionDayItemsWorkID: TIntegerField;
    qryFunctionDayItemsProcCode: TIntegerField;
    qryFunctionDayItemsStandardRate: TBCDField;
    srcFunctionDayItems: TDataSource;
    DBGrid1: TDBGrid;
    qryFunctionDayItemsPersonelName: TStringField;
    qryFunctionDayItemsOfficeCode: TIntegerField;
    qryFunctionDayItemsWorkName: TStringField;
    qryFunctionDayItemsProcName: TStringField;
    qryFunctionDayItemsOfficeName: TStringField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    actSort: TAction;
    actsendExcel: TAction;
    actFilter: TAction;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    qryFunctionDayItemsFunExtTime: TFloatField;
    CmbMonth: TComboBox;
    actSend: TAction;
    qry_Functions: TADOQuery;
    qry_FunctionsFunctionID: TIntegerField;
    qry_FunctionsFormInfoID: TIntegerField;
    qry_FunctionsMounth: TWordField;
    qry_FunctionsPersonelNo: TIntegerField;
    qry_FunctionsFunctionTime: TFloatField;
    qry_FunctionsProjectID: TIntegerField;
    qry_FunctionsJobCode: TIntegerField;
    qry_FunctionsOfficeCode: TIntegerField;
    qry_FunctionsProjectRow: TIntegerField;
    qry_FunctionsProcCode: TIntegerField;
    qry_FunctionsCTopic3: TIntegerField;
    qry_FunItems: TADOQuery;
    qry_FunItemsFunctionsItemsID: TIntegerField;
    qry_FunItemsFunctionID: TIntegerField;
    qry_FunItemsSalaryID: TIntegerField;
    qry_FunItemsFDaily: TFloatField;
    qry_FunItemsFHours: TFloatField;
    qry_FunItemsAmount: TBCDField;
    qry_FunItemsAccTopicCode: TIntegerField;
    qry_FunItemsAccDetailCode: TIntegerField;
    qry_FunItemsAccCTopicCode: TIntegerField;
    qry_FunItemsAccCTopicCode2: TIntegerField;
    BitBtn3: TBitBtn;
    qryFunctionDayItemsjobCode: TIntegerField;
    qryFunctionDayItemsProjectRow: TIntegerField;
    qry_FormsInfo: TADOQuery;
    actPrintVijeh: TAction;
    actUpdate: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    Label1: TLabel;
    qrysumFunctionDayItems: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField4: TFloatField;
    srcsumFunctionDayItems: TDataSource;
    qrysumFunctionDayItemsday: TIntegerField;
    qryStandardDays: TADOQuery;
    srcStandardDays: TDataSource;
    qryStandardDaysPersonelNo: TIntegerField;
    qryStandardDaysPersonelName: TStringField;
    qryStandardDaysPostCount: TIntegerField;
    SumGrid1: TSumGrid;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    qryFunctionDayItemsday: TIntegerField;
    qryStandardDaysFunTime: TFloatField;
    stpExportSpecialFunction: TADOStoredProc;
    qryFunctionDayItems_row: TIntegerField;
    qrysumFunctionDayItems_Row: TIntegerField;
    qryStandardDays_Row: TIntegerField;
    qry_FunctionsFunctionDay: TFloatField;
    qry_FunctionsYearID: TIntegerField;
    qry_FunctionsYears: TIntegerField;
    yrcmbx1: TYearComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CmbMonthChange(Sender: TObject);
    procedure actsendExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure actShowChartExecute(Sender: TObject);
    procedure ALL_DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure qryFunctionDayItemsAfterOpen(DataSet: TDataSet);
    procedure qryFunctionDayItemsCalcFields(DataSet: TDataSet);
  private
    procedure UpdateList;
    procedure initcombo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FunctionDayListF: TFunctionDayListF;

implementation

uses filter_ADO, FilterClass_ADO, DM, GlobalPro, search2, sort2,
  DBGrid2Print, TreeChart, mmessage;

{$R *.dfm}

procedure TFunctionDayListF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFunctionDayListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'PersonelNo', '„‘Œ’«  Å—”‰·Ì', '‘„«—Â Å—”‰·Ì',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT PersonelNo , Name_L1+'' ''+lastName_L1 as lastName_L1 FROM Pay.PersonelInfo ',
        'select Min(PersonelNo),Max(PersonelNo) FROM Pay.PersonelInfo');
      AddItem(DMf.adcSalary, 'OfficeCode', ' ⁄‰Ê«‰ ”«“„«‰', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT    Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 FROM    ' +
        ' Pay.FormsInfo  WHERE  formtype=12    ',
        ' SELECT MIN(Pay.FormsInfo.InfoID) AS Expr1, MAX(Pay.FormsInfo.InfoID) AS Expr2  FROM  Pay.FormsInfo  '
        + '  WHERE  formtype=12  ');
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

procedure TFunctionDayListF.UpdateList;
begin
  if CmbMonth.ItemIndex = -1 then
    Exit;
  with qryFunctionDayItems do
  begin
    Active := False;
    Parameters.ParamByName('MounthNo').Value :=
      Integer(CmbMonth.Items.Objects[CmbMonth.ItemIndex]);
    Parameters.ParamByName('YearID').Value := yrcmbx1.YearID;

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    Active := true;
  end; // with
  with qry_Functions do
  begin
    Active := False;
    Parameters.ParamByName('MounthNo').Value :=
      Integer(CmbMonth.Items.Objects[CmbMonth.ItemIndex]);
    Parameters.ParamByName('Years').Value := yrcmbx1.YearID;
    Active := true;
  end; // with
  with qry_FunItems do
  begin
    Active := False;
    Active := true;
  end; // with
  with qrysumFunctionDayItems do
  begin
    Active := False;
    Parameters.ParamByName('MounthNo').Value :=
      Integer(CmbMonth.Items.Objects[CmbMonth.ItemIndex]);
    Parameters.ParamByName('YearID').Value := yrcmbx1.YearID;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    Active := true;
  end; // with
  with qryStandardDays do
  begin
    Active := False;
    // Parameters.ParamByName('MounthNo').Value:=integer(CmbMonth.Items.Objects[CmbMonth.ItemIndex]);
    Parameters.ParamByName('MounthNo2').Value :=
      Integer(CmbMonth.Items.Objects[CmbMonth.ItemIndex]);
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    Active := true;
  end; // with

end;

procedure TFunctionDayListF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TFunctionDayListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, true);
  SetColSize(DBGrid2, 2, true);
  SetColSize(DBGrid3, 2, False);
end;

procedure TFunctionDayListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TFunctionDayListF.initcombo;
begin
  yrcmbx1.YearID := APPBank.Year;
  yrcmbx1.YearsParam := APPBank.Year;
  CmbMonth.Clear;
  with DMf.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT InfoID, ltrim(str(InfoID))+'' - ''+InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 17)';
    Active := true;
    while not Eof do
    begin
      CmbMonth.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
end;

procedure TFunctionDayListF.FormCreate(Sender: TObject);
begin
  inherited;
  initcombo;
end;

procedure TFunctionDayListF.CmbMonthChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TFunctionDayListF.actsendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid3);
end;

procedure TFunctionDayListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunctionDayItems);
end;

procedure TFunctionDayListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunctionDayItems);
end;

procedure TFunctionDayListF.actSendExecute(Sender: TObject);
begin
  inherited;

  With qry_FormsInfo do
  begin
    Active := False;
    Active := true;
    if RecordCount <= 0 then
    begin
      Warn('ﬂœ «÷«›Â ﬂ«—Ì œ— „⁄—›Ì ⁄Ê«„· «›“«Ì‰œÂ ÕﬁÊﬁ „‘Œ’ ‰‘œÂ!˛');
      Exit;
    end;
  end;
  if get_response
    ('¬Ì« »—«Ì Õ–› Ê À»  œÊ»«—Â ﬂ«—ﬂ—œÂ«Ì „ÕœÊœÂ «‰ Œ«» ‘œÂ „ÿ„∆‰ Â” Ìœø') <> mrYes
  then
    Exit;
  With stpExportSpecialFunction do
  begin
    Parameters.Refresh;
    Parameters.ParamByName('@PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('@PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('@Month').Value :=
      Integer(CmbMonth.Items.Objects[CmbMonth.ItemIndex]);

    Parameters.ParamByName('@Years').Value := yrcmbx1.YearID;
    Parameters.ParamByName('@YearID').Value := APPBank.Year;

    ExecProc;
    BigMessage('À»  ‘œ.˛', 1);
  end;
  // while not qry_Functions.Eof do begin
  // qry_Functions.Delete;
  // Next;
  // end;//while
  // With qryFunctionDayItems do begin
  // DisableControls;
  // First;
  // BigMessageProgBar('œ— Õ«· «‰ ﬁ«· ﬂ«—ﬂ— Å—”‰· ...',RecordCount);
  // while not Eof do begin
  // qry_Functions.Insert;
  // qry_Functions.FieldByName('FunctionID').AsInteger:=GetANewCode('','Pay.Functions','FunctionID');
  // qry_Functions.FieldByName('Mounth').AsInteger:=integer(CmbMonth.Items.Objects[CmbMonth.ItemIndex]);
  // qry_Functions.FieldByName('PersonelNo').AsInteger:=FieldByName('PersonelNo').AsInteger;
  // qry_Functions.FieldByName('OfficeCode').AsInteger:=FieldByName('OfficeCode').AsInteger;
  // qry_Functions.FieldByName('ProcCode').AsInteger:=FieldByName('ProcCode').AsInteger;
  /// /      qry_Functions.FieldByName('CTopic3').Value:=FieldByName('CTopic3').Value;
  // qry_Functions.FieldByName('ProjectID').AsInteger:=FieldByName('WorkID').AsInteger;
  // qry_Functions.FieldByName('ProjectRow').AsInteger:=FieldByName('ProjectRow').AsInteger;
  // qry_Functions.FieldByName('FunctionDay').AsFloat:=FieldByName('day').AsFloat;
  // qry_Functions.FieldByName('FunctionTime').AsFloat:=FieldByName('FunExtTime').AsFloat;
  // qry_Functions.FieldByName('jobCode').AsInteger:=FieldByName('jobCode').AsInteger;
  // qry_Functions.FieldByName('FormInfoID').AsInteger:=0;
  // qry_Functions.Post;
  // qry_FunItems.Insert;
  // qry_FunItems.FieldByName('FunctionsItemsID').AsInteger:=GetANewCode('','Pay.FunctionsItems','FunctionsItemsID');
  // qry_FunItems.FieldByName('FunctionID').AsInteger:=qry_Functions.FieldByName('FunctionID').AsInteger;
  // qry_FunItems.FieldByName('SalaryID').AsInteger:=qry_FormsInfo.FieldByName('FormInfoID').AsInteger;
  // qry_FunItems.FieldByName('FDaily').AsInteger:=0;
  // qry_FunItems.FieldByName('FHours').AsFloat:=FieldByName('ExtTime').AsFloat;
  // qry_FunItems.Post;
  // Next;
  // GoProgressBar(IntToStr(RecNo));
  // end;//while
  // EnableControls;
  // end;//  qry_Functions
  // BigMessage('«‰Ã«„ ‘œ.',1);
  // FreeReservedCodes(DMf.adcSalary);
end;

procedure TFunctionDayListF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TFunctionDayListF.actUpdateExecute(Sender: TObject);
begin
  inherited;
  qryFunctionDayItems.Requery();
end;

procedure TFunctionDayListF.actShowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryFunctionDayItems, Self);
end;

procedure TFunctionDayListF.ALL_DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
      (Sender as TDBGrid).Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFunctionDayListF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TFunctionDayListF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TFunctionDayListF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TFunctionDayListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunctionDayItems.DisableControls;
    InitReportFile(ppReport1, 'FunctionDayList');
  finally
    qryFunctionDayItems.EnableControls;
  end;

end;

procedure TFunctionDayListF.qryFunctionDayItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  actSend.Enabled := DataSet.RecordCount > 0;
end;

procedure TFunctionDayListF.qryFunctionDayItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_Row').AsInteger := ABS(DataSet.RecNo)
end;

end.
