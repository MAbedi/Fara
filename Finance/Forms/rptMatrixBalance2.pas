unit rptMatrixBalance2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppCtrls, ppVar, ppPrnabl, ppClass, FormFunctions,
  ppBands, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  SumDBGrid, Menus, ppParameter, Math, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, PrnDbgeh, PrViewEh,
  Printers, Filter_ADO_Const, Vcl.CheckLst, AccFunctions;

type
  ThackCedarGrid = class(TCedarDbgrid);

  TrptMatrixBalance2F = class(Ttemplate2MDIF)
    srcMatrix: TDataSource;
    qryMatrix: TADOQuery;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Button1: TButton;
    actSOrt: TAction;
    actExcel: TAction;
    actRelation: TAction;
    actGhoose: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    chkColumnPercent: TCheckBox;
    chkRowPercent: TCheckBox;
    cmbCol: TComboBox;
    cmbRow2: TComboBox;
    cmbRow1: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn7: TBitBtn;
    actPrint: TAction;
    special: TAction;
    BitBtn2: TBitBtn;
    Button2: TButton;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    actDoMatrix: TAction;
    DBGrid1: TCedarDbgrid;
    N1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    pop4Print: TPopupMenu;
    mnuAllClick: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    BitBtn3: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    chklstCircleKind: TCheckListBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSOrtExecute(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure BitBtn2Click(Sender: TObject);
    procedure specialExecute(Sender: TObject);
    procedure chkColumnPercentClick(Sender: TObject);
    procedure chkRowPercentClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actDoMatrixExecute(Sender: TObject);
    procedure qryMatrixAfterOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure mnuAllClickClick(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: string);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
  private
    aWhere: String;
    bCheckboxCode: Boolean;
    procedure UpdateList;
    // procedure setParameter(qry:TADOQuery);
    procedure visibleColumnPercent;
    procedure visibleRowPercent;
    procedure setCurrency_width;
    procedure InitCombo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptMatrixBalance2F: TrptMatrixBalance2F;

implementation

uses Dm, FilterClass_ADO, filter_ADO, GlobalPro, search2,
  sort2, DBGrid2Print, Resource;

{$R *.dfm}

procedure TrptMatrixBalance2F.UpdateList;
Var
  SecDocNoFrom, SecDocNoTo: String;
  PriDocNoFrom, PriDocNoTo: String;
  CTFrom, CTTo: String;
  CT2From, CT2To: String;
  CT3From, CT3To: String;
  DetailFrom, DetailTo: String;
  AccCodeFrom, AccCodeTo: String;
  CompanyFrom, CompanyTo: String;
  YearFrom, YearTo: String;
  DateFrom, DateTo: String;
  TypeFrom: String;
  CurrencyTypeFrom, CurrencyTypeTO: String;
begin
  aWhere := emptystr;

  if myParams.FindParam('Currencies') <> nil then
  begin
    CurrencyTypeFrom := GetcFrom(myParams.ParamValues['Currencies'], ftInteger);
    CurrencyTypeTO := GetcTo(myParams.ParamValues['Currencies'], ftInteger);
  end;

  DateFrom := GetcFrom(myParams.ParamValues['DocDate'], ftString);
  DateTo := GetcTo(myParams.ParamValues['DocDate'], ftString);

  PriDocNoFrom := GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
  PriDocNoTo := GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);

  SecDocNoFrom := GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
  SecDocNoTo := GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);

  TypeFrom := GetcFrom(myParams.ParamValues['DocTypeCode'], ftString);

  YearFrom := GetcFrom(myParams.ParamValues['Year'], ftInteger);
  YearTo := GetcTo(myParams.ParamValues['Year'], ftInteger);

  if bCheckboxCode then
    AccCodeFrom := GetcFrom(myParams.ParamValues['AccCode'], ftString)
  else
  begin
    AccCodeFrom := GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    AccCodeTo := GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
  end;

  CTFrom := GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
  CTTo := GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);

  CT2From := GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
  CT2To := GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);

  CT3From := GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
  CT3To := GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);

  DetailFrom := GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
  DetailTo := GetcTo(myParams.ParamValues['DetailCode'], ftInteger);

  if gv_MultiCompany then
  begin
    CompanyFrom := GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
    CompanyTo := GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
  end
  else
  begin
    CompanyFrom := '0';
    CompanyTo := '2147483647';
  end;

  if bCheckboxCode then
    Add2Filter(aWhere, Format('acc.Documents.TopicCode  in ( %S )',
      [AccCodeFrom]))
  else
    Add2Filter(aWhere, Format('acc.Documents.TopicCode  Between %S And %S',
      [AccCodeFrom, AccCodeTo]));
  Add2Filter(aWhere, Format('acc.Documents.DetailCode Between %S And %S',
    [DetailFrom, DetailTo]));
  Add2Filter(aWhere, Format('acc.Documents.CTopicCode Between %S And %S',
    [CTFrom, CTTo]));
  Add2Filter(aWhere, Format('acc.Documents.CTopicCode2 Between %S And %S',
    [CT2From, CT2To]));
  Add2Filter(aWhere, Format('acc.Documents.ctopiccode3 Between %S And %S',
    [CT3From, CT3To]));
  Add2Filter(aWhere, Format('acc.DocGroups.SecondaryDocNo Between %S And %S',
    [SecDocNoFrom, SecDocNoTo]));
  Add2Filter(aWhere, Format('acc.DocGroups.PrimaryDocNo Between %S And %S',
    [PriDocNoFrom, PriDocNoTo]));

  if myParams.FindParam('Currencies') <> nil then
    Add2Filter(aWhere,
      Format('isnull(Acc.Documents.CurrencyType,0) Between %S And %S',
      [CurrencyTypeFrom, CurrencyTypeTO]));

  // Add2Filter(awhere,Format('acc.DocGroups.DocTypeCode Between %S And %S',[TypeFrom,TypeTo]));
  Add2Filter(aWhere, Format('acc.DocGroups.YearID   Between %S And %S',
    [YearFrom, YearTo]));
  Add2Filter(aWhere, Format('acc.DocGroups.CompanyCode   Between %S And %S',
    [CompanyFrom, CompanyTo]));
  Add2Filter(aWhere, Format('acc.DocGroups.DocDate   Between %S And %S',
    [QuotedStr(DateFrom), QuotedStr(DateTo)]));
  Add2Filter(aWhere, Format('acc.DocGroups.DocTypeCode  in (%S)  ',
    [TypeFrom]));

  actDoMatrix.Execute;
end;

procedure TrptMatrixBalance2F.actFilterExecute(Sender: TObject);
// var
// I: Integer;
// s: String;
// fi: TFilterItem;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      bCheckboxCode := False;

      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(dmf.adcAccounting, 'DocTypeCode', '', '', ftUnknown, dvDefaults,
        'true', '', ciCheck, strLookUpDocType, '');
      AddItem(dmf.adcAccounting, 'SecondaryDocNo', '‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ›—⁄Ì', ftInteger, dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(SecondaryDocNo), MAX(SecondaryDocNo) FROM Acc.DocGroups');
      AddItem(dmf.adcAccounting, 'PrimaryDocNo', '‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ”‰œ', ftInteger, dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(PrimaryDocNo), MAX(PrimaryDocNo) FROM Acc.DocGroups');
      AddItem(dmf.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(DocDate), MAX(DocDate) FROM Acc.DocGroups');
      AddItem(dmf.adcAccounting, 'Year', '„ÕœÊœ ”«· „«·Ì', '”«· „«·Ì',
        ftInteger, dvDefaults, inttostr(APPBank.Year), inttostr(APPBank.Year),
        ciSimple, '', '');
      AddItem(dmf.adcAccounting, 'CTopicCode3', 'ﬂœ Ê ‰«„  ›’Ì·Ì 4',
        'ﬂœ„—ﬂ“Â“Ì‰Â3', ftInteger, dvMinMax, '', '', ciLookup,
        strLookUpCTopicCode3, strMaxMinCTopicCode3);
      AddItem(dmf.adcAccounting, 'CTopicCode2', 'ﬂœ Ê ‰«„  ›’Ì·Ì 3',
        'ﬂœ„—ﬂ“Â“Ì‰Â2', ftInteger, dvMinMax, '', '', ciLookup,
        strLookUpCTopicCode2, strMaxMinCTopicCode2);
      AddItem(dmf.adcAccounting, 'CTopicCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì 1', ' ›’Ì·Ì 1',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CTopicsForUse ',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CTopicsForUse');
      AddItem(dmf.adcAccounting, 'DetailCode', 'ﬂœ Ê ‰«„  ›’Ì·Ì', 'ﬂœ  ›’Ì·Ì',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      if CtrlDown then
      begin
        bCheckboxCode := True;
        AddItem(dmf.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck, 'SELECT ACC.Categories.TopicCode,' +
          'cast(ACC.Categories.TopicCode as varchar(30))+'' _ ''+ACC.Categories.MoeenName_L1 FROM ACC.Categories LEFT OUTER JOIN '
          + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
          + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ', ' ');
      end
      else
        AddItem(dmf.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
          ftLargeint, dvMinMax, '', '', ciLookup,
          'SELECT ACC.Categories.TopicCode, ACC.Categories.MoeenName_L1 FROM ACC.Categories LEFT OUTER JOIN '
          + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
          + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ',
          'SELECT min(ACC.Categories.TopicCode), max(ACC.Categories.TopicCode) FROM ACC.Categories LEFT OUTER JOIN '
          + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
          + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ');

      if gv_MultiCompany then
        AddItem(dmf.adcAccounting, 'CompanyCode', 'ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ', '‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM  acc.Companies ',
          'SELECT 0,999999999');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TrptMatrixBalance2F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  InitCombo;
  actFilter.Execute;
  if myParams.FindParam('DocDate') = nil then
    close;

end;

procedure TrptMatrixBalance2F.InitCombo;
begin
  cmbCol.Items.Clear;
  cmbRow1.Items.Clear;
  cmbRow2.Items.Clear;

  cmbRow2.Items.AddObject('‰œ«—œ', TObject(0));
  with dmf.qry_Temp do
  begin
    close;
    SQL.Text := 'SELECT ID, CaptionName FROM  ACC.Analyze Order by ID';
    open;
    while not eof do
    begin
      cmbCol.Items.AddObject(Fields[1].AsString, TObject(Fields[0].AsInteger));
      cmbRow1.Items.AddObject(Fields[1].AsString, TObject(Fields[0].AsInteger));
      cmbRow2.Items.AddObject(Fields[1].AsString, TObject(Fields[0].AsInteger));
      next;
    end;
  end;

  cmbCol.ItemIndex := 0;
  cmbRow1.ItemIndex := 1;
  cmbRow2.ItemIndex := 0;

end;

procedure TrptMatrixBalance2F.FormResize(Sender: TObject);
begin
  inherited;
  // SetColSize(DBGrid1, 1, True);
end;

procedure TrptMatrixBalance2F.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1);
end;

procedure TrptMatrixBalance2F.actSOrtExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMatrix);
end;

procedure TrptMatrixBalance2F.actprintExecute(Sender: TObject);
begin
  inherited;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptMatrixBalance2F.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptMatrixBalance2F.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptMatrixBalance2F.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptMatrixBalance2F.qryMatrixAfterOpen(DataSet: TDataSet);
var
  curField: TField;
  I, ConstField: Integer;
begin
  inherited;
  DBGridCurrencyKind(DBGrid1, myParams,qryMatrix);
  DBGrid1.SetFooter4Sum([]);
  ConstField := 0; // IfThen(cmbRow2.ItemIndex = 0, 2, 4);
  with qryMatrix do
  begin
    for I := ConstField to FieldCount - 1 do
    begin
      curField := Fields[I];
      curField.Tag := 3;

      if curField is TBCDField then
      begin
        (curField as TBCDField).currency := True;
        (curField as TBCDField).DisplayFormat := '#,##0;(#,##0)';
      end;
    end;
  end;
  ThackCedarGrid(DBGrid1).DoLoad;
  DBGrid1.ColorDBGrid;
  DBGrid1.setSizeColDBGrid;

  // SetColSize(DBGrid1, 1);
end;

procedure TrptMatrixBalance2F.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«”‰«œ „Êﬁ  «“ ' +
    inttostr(GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger)) +
    '  « ' + inttostr(GetcTo(myParams.ParamValues['SecondaryDocNo'],
    ftInteger));

end;

procedure TrptMatrixBalance2F.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + GetcFrom(myParams.ParamValues['DocDate'], ftString) +
    '  «  «—ÌŒ ' + GetcTo(myParams.ParamValues['DocDate'], ftString);
end;

procedure TrptMatrixBalance2F.BitBtn2Click(Sender: TObject);
begin
  inherited;
  actDoMatrix.Execute;
end;

procedure TrptMatrixBalance2F.visibleRowPercent;
// var
// I: Integer;
begin
  // if qryMakeColumn.Active then
  // with qryMakeColumn do
  // begin
  // First;
  // while not eof do
  // begin
  // for I := 0 to DBGrid1.Columns.Count - 1 do
  // if DBGrid1.Columns[I].FieldName = 'RowPercent' +
  // qryMakeColumn.fieldbyname('ColumnCode').AsString then
  // begin
  // qryMatrix.fieldbyname('RowPercent' + fieldbyname('ColumnCode')
  // .AsString).Tag := 3;
  // DBGrid1.Columns[I].Visible := CheckRowPercent.Checked;
  // break;
  // end; // if
  // next;
  // end; // while
  // end; // with
end;

procedure TrptMatrixBalance2F.visibleColumnPercent;
// var
// I: Integer;
begin
  // if qryMakeColumn.Active then
  // with qryMakeColumn do
  // begin
  // First;
  // while not eof do
  // begin
  // for I := 0 to DBGrid1.Columns.Count - 1 do
  // if DBGrid1.Columns[I].FieldName = 'ColumnPercent' +
  // fieldbyname('ColumnCode').AsString then
  // begin
  // qryMatrix.fieldbyname('ColumnPercent' + fieldbyname('ColumnCode')
  // .AsString).Tag := 3;
  // DBGrid1.Columns[I].Visible := CheckColumnPercent.Checked;
  // break;
  // end; // if
  // next;
  // end; // while
  // end; // with
end;

procedure TrptMatrixBalance2F.specialExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptMatrixBalance2F.setCurrency_width;
// var
// I, j: Integer;
begin
  // j := 0;
  // with qryMakeColumn do
  // begin
  // First;
  // while not eof do
  // begin
  // TBCDField(qryMatrix.fieldbyname('Price' + fieldbyname('ColumnCode')
  // .AsString)).currency := True;
  // qryMatrix.fieldbyname('Price' + fieldbyname('ColumnCode')
  // .AsString).Tag := 3;
  // for I := j to DBGrid1.Columns.Count - 1 do
  // begin
  // if 'Price' + fieldbyname('ColumnCode').AsString = DBGrid1.Columns[I]
  // .FieldName then
  // DBGrid1.Columns[I].Width := 60;
  // if 'ColumnPercent' + fieldbyname('ColumnCode')
  // .AsString = DBGrid1.Columns[I].FieldName then
  // DBGrid1.Columns[I].Width := 40;
  // if 'RowPercent' + fieldbyname('ColumnCode').AsString = DBGrid1.Columns
  // [I].FieldName then
  // begin
  // DBGrid1.Columns[I].Width := 40;
  // j := I + 1;
  // break;
  // end;
  // end;
  // next;
  // end;
  //
  // TBCDField(qryMatrix.fieldbyname('TotalPrice')).currency := True;
  // end; // with
  // SetColSize(DBGrid1,1,true);
end;

procedure TrptMatrixBalance2F.chkColumnPercentClick(Sender: TObject);
begin
  inherited;
  visibleColumnPercent;
end;

procedure TrptMatrixBalance2F.chkRowPercentClick(Sender: TObject);
begin
  inherited;
  visibleRowPercent;
end;

procedure TrptMatrixBalance2F.FormCreate(Sender: TObject);
begin
  inherited;
  chkColumnPercent.Checked := False;
  chkRowPercent.Checked := False;
end;

procedure TrptMatrixBalance2F._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMatrix);
end;

procedure TrptMatrixBalance2F.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptMatrixBalance2F.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qryMatrix.Requery;
end;

procedure TrptMatrixBalance2F.mnuAllClickClick(Sender: TObject);
begin
  inherited;
  try
    qryMatrix.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, DBGrid1,
      ppDBPipeline1);
  finally
    qryMatrix.EnableControls;
  end;
end;

procedure TrptMatrixBalance2F.N1Click(Sender: TObject);
begin
  inherited;
  if ShiftDown then
    PrintDBGridEh1.PrinterSetupDialog;

  if CtrlDown then
    PrinterPreview.Orientation := poLandscape

  else
    PrinterPreview.Orientation := poPortrait;
  PrintDBGridEh1.Preview;
end;

procedure TrptMatrixBalance2F.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptMatrixBalance2F.actDoMatrixExecute(Sender: TObject);
begin
  inherited;
  with qryMatrix do
    try
      Active := False;
      Parameters.ParamByName('Col').Value :=
        inttostr(Integer(cmbCol.Items.Objects[cmbCol.ItemIndex]));
      Parameters.ParamByName('Row1').Value :=
        inttostr(Integer(cmbRow1.Items.Objects[cmbRow1.ItemIndex]));
      Parameters.ParamByName('Row2').Value :=
        inttostr(Integer(cmbRow2.Items.Objects[cmbRow2.ItemIndex]));
      Parameters.ParamByName('CircleKind').Value :=
        GetCheckList2(chklstCircleKind, 1);
      Parameters.ParamByName('Where').Value := aWhere;
      Parameters.ParamByName('ActiveRowShare').Value := chkRowPercent.Checked;
      Parameters.ParamByName('ActiveColShare').Value :=
        chkColumnPercent.Checked;
      if myParams.FindParam('CurrencyKind') <> nil then
        Parameters.ParamByName('CurrencyKind').Value :=
          GetcTo(myParams.ParamValues['CurrencyKind'], ftInteger)
      else
        Parameters.ParamByName('CurrencyKind').Value := 0;

      Active := True;
    except
      on E: Exception do
      begin
        add2log(E.Message);
        Warn(E.Message);
      end;
    end;
end;

procedure TrptMatrixBalance2F.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptMatrixBalance2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptMatrixBalance2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptMatrixBalance2F.ppDBCalcnum2alphabetGetText(Sender: TObject;
  var Text: string);
var
  c: currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

end.
