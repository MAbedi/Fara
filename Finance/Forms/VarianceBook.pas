unit VarianceBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, Menus, ppDB, System.StrUtils,
  ppDBPipe, ppBands, ppClass, ppModule, raCodMod, ppCtrls,Filter_ADO_Const,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppTypes, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  THackGrid = class(TCedarDbGrid);

  TVarianceBookF = class(Ttemplate2MDIF)
    qry_Doc: TADOQuery;
    qry_AccCode: TADOQuery;
    src_Companies: TDataSource;
    src_Doc: TDataSource;
    src_AccCode: TDataSource;
    actFilter: TAction;
    BitBtn5: TBitBtn;
    btnactSearch: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn8: TBitBtn;
    actShowForm: TAction;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    ppDBPipeline1: TppDBPipeline;
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit5: TDBEdit;
    BitBtn3: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    actOther: TAction;
    BitBtn9: TBitBtn;
    actFilterForm: TAction;
    actRelated: TAction;
    actdisRelated: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    N6: TMenuItem;
    actAnalyz: TAction;
    actShowAnalyze: TAction;
    pnlRelated: TPanel;
    SpeedButton1: TSpeedButton;
    btnRelated: TBitBtn;
    BitBtn11: TBitBtn;
    RadioGroup1: TRadioGroup;
    ppParameterList1: TppParameterList;
    btnAtuo: TSpeedButton;
    qry_AccCodeVarianceCode: TIntegerField;
    qry_AccCodeVarianceName: TWideStringField;
    qry_Dockind: TIntegerField;
    qry_DocYearID: TIntegerField;
    qry_DocID: TIntegerField;
    qry_DocSecondaryDocNo: TIntegerField;
    qry_DocPrimaryDocNo: TIntegerField;
    qry_DocDocDate: TStringField;
    qry_DocRow: TIntegerField;
    qry_DocTopicCode: TLargeintField;
    qry_DocMoeenName_L1: TWideStringField;
    qry_DocDetailCode: TIntegerField;
    qry_DocDetailName_L1: TWideStringField;
    qry_DocCTopicCode: TIntegerField;
    qry_DocCTopicName_L1: TWideStringField;
    qry_DocComment_L1: TWideStringField;
    qry_DocDebt: TFMTBCDField;
    qry_DocCredit: TFMTBCDField;
    qry_DocAidDocNo: TFMTBCDField;
    qry_DocAidDocdate: TStringField;
    qry_DocDocumentId: TIntegerField;
    qry_DocSort: TFMTBCDField;
    qry_DocSerial: TIntegerField;
    qry_DocCompanyCode: TIntegerField;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDBCalcdcCount_TextAlign: TppDBCalc;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    qry_Remain: TADOQuery;
    src_Remain: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    DBGrid1: TCedarDbGrid;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);

    procedure FormDestroy(Sender: TObject);

    procedure BitBtn3Click(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qry_AccCodeaccCodeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure pop_7Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblSeconNo_DocNoGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure _actSearchExecute(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure actAnalyzExecute(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actShowAnalyzeExecute(Sender: TObject);
    procedure qry_DocAnalizeTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actRelatedExecute(Sender: TObject);
    procedure actdisRelatedExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: string);
    // procedure mnuN7Click(Sender: TObject);
    procedure chkFilterClick(Sender: TObject);
    procedure qry_DocAfterOpen(DataSet: TDataSet);
    procedure qry_DocBeforeOpen(DataSet: TDataSet);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qry_RemainBeforeOpen(DataSet: TDataSet);
    procedure btnAtuoClick(Sender: TObject);

  private
    { Private declarations }
    // param1, param2: integer;
    // sumDebt:currency;
    // sumCredit:currency;
    // sumAmount:currency;
    strSql: string;
    showFilter: Boolean;
    cloned: TADOQuery;
    intRecNo: integer;
    // flag:boolean;
    procedure UpdateFilter;
    // procedure CalRates;
    procedure SetDocumentId(var Count: integer);
    procedure SetDocumentId2(var Count: integer);

  public
    { Public declarations }
  end;

var
  VarianceBookF: TVarianceBookF;

implementation

uses Dm, GlobalPro, FilterClass_ADO, searchCode_ADO, filter_ADO,
  Document, search2, sort2, searchCode_L1_L2,
  ScanImage, DocRelated2, Math, Resource, DateUtils, shamsiDate, DBGrid2Print,
  FaraConsts, CategoresDetailNote, FormDesignacc;
{$R *.dfm}

procedure TVarianceBookF.UpdateFilter;
begin
  with qry_Doc do
  begin
    Active := false;
    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearId').Value := APPBank.Year;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;

    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value := 0;
      Parameters.ParamByName('CompanyCodeTo').Value := 2147483647;
    end;

  end;
  with qry_AccCode do
  begin
    Active := false;
    Parameters.ParamByName('VarianceCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['VarianceCode'], ftInteger);
    Parameters.ParamByName('VarianceCodeTo').Value :=
      GetcTo(myParams.ParamValues['VarianceCode'], ftInteger);
    Active := True;
  end;
end;

procedure TVarianceBookF.FormCreate(Sender: TObject);
begin
  inherited;
  cloned := TADOQuery.Create(Self);
  showFilter := var_glb_Boolean;
  strSql := qry_Doc.SQL.Text;
  DBGrid1.SetFooter4Sum([]);
end;

procedure TVarianceBookF.actFilterExecute(Sender: TObject);

begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'VarianceCode', 'کد و نام صورت مغایرت',
        'صورت مغایرت', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT VarianceCode, VarianceName FROM Acc.VarianceDefines ',
        'SELECT MIN(VarianceCode), MAX(VarianceCode) FROM Acc.VarianceDefines');

      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM util.maliYear');

      if gv_MultiCompany then
       AddItemFilter(GetFilter,TFltCompanyCode);


      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // t

end;

procedure TVarianceBookF.FormShow(Sender: TObject);
begin
  inherited;
  if showFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('VarianceCode') = nil then
      Close;

  end;
end;

procedure TVarianceBookF.qry_AccCodeAfterScroll(DataSet: TDataSet);
var
  tmpfilter: String;
begin
  inherited;
  // SetColSize(DBGrid1, 4, True);
  with qry_Doc do
  begin
    Active := false;
    if Filtered then
      tmpfilter := Filter;
    Parameters.ParamByName('VarianceCode').Value :=
      DataSet.Fieldbyname('VarianceCode').AsInteger;
    Active := True;
    If tmpfilter <> EmptyStr then
    begin
      Filter := tmpfilter;
      Filtered := True;
    end;
  end; // with

end;

procedure TVarianceBookF.FormDestroy(Sender: TObject);
begin
  inherited;
  cloned.Free;
  // SaveColWidth(DBGrid1);
end;

procedure TVarianceBookF.BitBtn3Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
  Sqltxt: String;
begin
  inherited;
  Sqltxt := StringReplace(qry_AccCode.SQL.Text, ':VarianceCodeFrom',
    qry_AccCode.Parameters.ParamByName('VarianceCodeFrom').Value,
    [rfReplaceAll]);
  Sqltxt := StringReplace(Sqltxt, ':VarianceCodeTo',
    qry_AccCode.Parameters.ParamByName('VarianceCodeTo').Value, [rfReplaceAll]);

  s := searchCode_ADOF.SearchCode2(DMF.adcAccounting, 'حسابها', Sqltxt,
    ['کد', 'عنوان معین '], Results, [60, 200], alLeft);
  if s then
    qry_AccCode.Locate('VarianceCode', Results[0], []);
end;

procedure TVarianceBookF.btnAtuoClick(Sender: TObject);
var
  aDebit: Largeint;
  aCredit: Largeint;
  Count: integer;
  AidDocNo, DocDate: string;
begin
  inherited;
  if get_response
    ('آیا برای ارتباط اتوماتیک بر اساس اطلاعات کمکی و تاریخ مطمئن هستید؟') <> mrYes
  then
    Abort;
  with cloned do
  begin
    DisableControls;
    Clone(qry_Doc, ltBatchOptimistic);
  end;

  with qry_Doc do
  begin
    Count := 0;
    DisableControls;
    Filter := 'DocumentId = 0 and kind = 1 ';
    Filtered := True;
    First;
    while not eof do
    begin
      aDebit := Fieldbyname('Debt').AsLargeInt;
      aCredit := Fieldbyname('Credit').AsLargeInt;
      AidDocNo := Fieldbyname('AidDocNo').AsString.Trim;
      DocDate := Fieldbyname('DocDate').AsString;

      // cloned.Filter := 'DocumentId = 0 and kind = 0 and Credit = ' +
      // aDebit.ToString + ' and Debt=' + aCredit.ToString +
      // ' and ((Comment_L1 like ''%' + AidDocNo + '%'' )or( Comment_L1 like ''%' +
      // DocDate + '%''  ))';
      // cloned.Filtered := True;
      // if cloned.RecordCount = 1 then
      // SetDocumentId(Count);
      //

      cloned.Filter := 'DocumentId = 0 and kind = 0 and DocDate = ''' + DocDate
        + ''' and Credit = ' + aDebit.ToString + ' and Debt=' +
        aCredit.ToString;
      cloned.Filtered := True;
      if cloned.RecordCount = 1 then
      begin
        SetDocumentId(Count);
        cloned.Delete;
      end;

      if (Length(AidDocNo) > 3) then
      begin
        cloned.Filter := 'DocumentId = 0 and kind = 0 and Comment_L1 like ''%' +
          AidDocNo + '%'' and Credit = ' + aDebit.ToString + ' and Debt=' +
          aCredit.ToString;
        cloned.Filtered := True;
        if cloned.RecordCount = 1 then
        begin
          SetDocumentId(Count);
          cloned.Delete;
        end;

        AidDocNo := RightStr(AidDocNo.Trim, 6);
        begin
          cloned.Filter := 'DocumentId = 0 and kind = 0 and Comment_L1 like ''%'
            + AidDocNo + '%'' and Credit = ' + aDebit.ToString + ' and Debt=' +
            aCredit.ToString;
          cloned.Filtered := True;
          if cloned.RecordCount = 1 then
          begin
            SetDocumentId(Count);
            cloned.Delete;
          end;

        end;
      end;

      begin
        cloned.Filter := 'DocumentId = 0 and kind = 0 and Comment_L1 like ''%' +
          DocDate + '%'' and Credit = ' + aDebit.ToString + ' and Debt=' +
          aCredit.ToString;
        cloned.Filtered := True;
        if cloned.RecordCount = 1 then
        begin
          SetDocumentId(Count);
          cloned.Delete;
        end;

      end;
      Next;
    end;
    Filtered := false;
    qry_AccCodeAfterScroll(qry_AccCode);
    Warn2(Count.ToString + ' مورد انجام شد.');
    EnableControls;
  end;

  with qry_Doc do
  begin
//    Count := 0;
    DisableControls;
    Filter := 'DocumentId = 0 and kind = 0 '; //
    Filtered := True;
    First;
    while not eof do
    begin
      aDebit := Fieldbyname('Debt').AsLargeInt;
      aCredit := Fieldbyname('Credit').AsLargeInt;
      AidDocNo := Fieldbyname('AidDocNo').AsString.Trim;

      // if AidDocNo='123456' then
      // warn('');

      DocDate := Fieldbyname('DocDate').AsString;

      if (Length(AidDocNo) > 3) then
      begin //
        cloned.Filter := 'DocumentId = 0 and kind = 1 and Comment_L1 like ''%' +
          AidDocNo + '%'' and Credit = ' + aDebit.ToString + ' and Debt=' +
          aCredit.ToString;
        cloned.Filtered := True;
        if cloned.RecordCount = 1 then
        begin
          SetDocumentId2(Count);
          cloned.Delete;
        end;

        AidDocNo := RightStr(AidDocNo.Trim, 6);
        begin //
          cloned.Filter := 'DocumentId = 0 and kind = 1 and Comment_L1 like ''%'
            + AidDocNo + '%'' and Credit = ' + aDebit.ToString + ' and Debt=' +
            aCredit.ToString;
          cloned.Filtered := True;
          if cloned.RecordCount = 1 then
          begin
            SetDocumentId(Count);
            cloned.Delete;
          end;

        end;
      end;
      Next;
    end;
    Filtered := false;
    qry_AccCodeAfterScroll(qry_AccCode);
    Warn(Count.ToString + ' مورد انجام شد.', mtInformation);
    EnableControls;
  end;

end;

procedure TVarianceBookF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  if qry_Dockind.AsInteger = 1 then
  begin
    CreateMDIForm2(TFormDesignaccF, FormDesignaccF, Self, 70);
    With FormDesignaccF do
    begin
      if QMaster.Locate('VarianceCode', qry_AccCodeVarianceCode.AsInteger, [])
      then
        QItems.Locate('VarianceId', qry_DocID.AsInteger, [])
    end;

    // Warn2('برای اطلاعات طرف حساب قابلیت نمایش سند وجود ندارد');
    Exit;
  end;
  DocumentF.FindDoc(qry_DocSerial.AsVariant, qry_DocYearID.AsInteger,
    qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_DocID.AsInteger, []);
end;

procedure TVarianceBookF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TVarianceBookF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TVarianceBookF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TVarianceBookF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TVarianceBookF.actPrintExecute(Sender: TObject);
begin
  inherited;
  qry_Remain.Active := True;
  InitReportFile(ppReport1, 'VarianceBook', DBGrid1, ppDBPipeline1);

end;

procedure TVarianceBookF.qry_AccCodeaccCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Trim(Sender.AsString)
end;

procedure TVarianceBookF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.Fieldbyname('SecondaryDocNo'));
end;

procedure TVarianceBookF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TVarianceBookF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TVarianceBookF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TVarianceBookF.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, '', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TVarianceBookF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TVarianceBookF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از شماره موقت ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + ' تا ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);

end;

procedure TVarianceBookF.ppLblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از تاريخ ' + ParamByName('DocDateFrom').Value + ' تا ' +
      ParamByName('DocDateTo').Value;
end;

procedure TVarianceBookF.ppDBCalcnum2alphabetGetText(Sender: TObject;
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

procedure TVarianceBookF.ppLabel11GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'از شماره سند ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + ' تا '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TVarianceBookF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TVarianceBookF.SetDocumentId(var Count: integer);
var
  VarianceId, DocumentId, row: integer;
begin
  try
    VarianceId := qry_Doc.Fieldbyname('ID').AsInteger;
    DocumentId := cloned.Fieldbyname('ID').AsInteger;
    DMF.adcAccounting.Execute
      (Format('UPDATE Acc.Variance SET DocumentId = %d WHERE VarianceId = %d ',
      [DocumentId, VarianceId]), row);
    Count := Count + row;
  except
    on e: Exception do
    begin
      add2log(e.Message);
    end;
  end;
end;

procedure TVarianceBookF.SetDocumentId2(var Count: integer);
var
  VarianceId, DocumentId, row: integer;
begin
  try
    DocumentId := qry_Doc.Fieldbyname('ID').AsInteger;
    VarianceId := cloned.Fieldbyname('ID').AsInteger;
    DMF.adcAccounting.Execute
      (Format('UPDATE Acc.Variance SET DocumentId = %d WHERE VarianceId = %d ',
      [DocumentId, VarianceId]), row);
    Count := Count + row;
  except
    on e: Exception do
    begin
      add2log(e.Message);
    end;
  end;
end;

procedure TVarianceBookF.N3Click(Sender: TObject);
begin
  inherited;
  try

    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    if DBGrid1.SelectedRows.Count > 0 then
      qry_AccCode.AfterScroll := nil;

    case (Sender as TMenuItem).Tag of
      0:
        begin
          ppDBPipeline2.RangeBegin := rbFirstRecord;
          ppDBPipeline2.RangeEnd := reLastRecord;
        end;
      1:
        begin
          ppDBPipeline2.RangeBegin := rbCurrentRecord;
          ppDBPipeline2.RangeEnd := reCurrentRecord;
        end;
    end;
    if DBGrid1.SelectedRows.Count > 0 then
      ppDBPipeline2.RangeBegin := rbCurrentRecord;
    ppDBPipeline2.RangeEnd := reCurrentRecord;

  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;

    qry_AccCode.AfterScroll := qry_AccCodeAfterScroll;
  end;

end;

procedure TVarianceBookF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TVarianceBookF.N4Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMF.adcAccounting, 'acc.DocGroups',
    qry_Doc.Fieldbyname('Serial').AsString, 1, True, '')
end;

procedure TVarianceBookF.N5Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMF.adcAccounting, 'acc.Documents',
    qry_Doc.Fieldbyname('ID').AsString, 1, True, '')

end;

procedure TVarianceBookF.actAnalyzExecute(Sender: TObject);
begin
  inherited;
  DocRelated2F.enter(qry_Doc.Fieldbyname('CompanyCode').AsInteger,
    qry_Doc.Fieldbyname('ID').AsInteger, nil, 0);
end;

procedure TVarianceBookF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TVarianceBookF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;
end;

// procedure TVarianceBookF.mnuN7Click(Sender: TObject);
// const
// SqlMax = 'SELECT TOP 1 RelatedID FROM (SELECT MAX(RelatedID) AS RelatedID FROM Acc.Documents '
// + ' UNION ALL ' +
// ' SELECT  MAX(RelatedID) AS RelatedID FROM  Acc.DocRelated) AS QryMax ORDER BY RelatedID DESC ';
// var
//
// MaxID: integer;
// aDebit: integer;
// aCredit: integer;
// aId: integer;
// aIdlast: integer;
//
// begin
// inherited;
// MaxID := GetA NewCode(SqlMax, '',dmf.adcAccounting);
// with qry_Doc do
// begin
// Filter := 'RelatedID = 0';
// Filtered := True;
// First;
// while not eof do
// begin
// aDebit := Fieldbyname('Debt').AsInteger;
// aCredit := Fieldbyname('Credit').AsInteger;
// aIdlast := Fieldbyname('ID').AsInteger;
// Next;
// if ((aDebit > 0) and (aDebit = Fieldbyname('Credit').AsInteger)) or
// ((aCredit > 0) and (aCredit = Fieldbyname('Debt').AsInteger)) then
// begin
// aId := Fieldbyname('ID').AsInteger;
// DMF.adcAccounting.BeginTrans;
// try
// DMF.adcAccounting.Execute
// (Format('UPDATE Acc.Documents SET RelatedID = %d' +
// ' WHERE (ID IN (%d, %d)) ', [MaxID, aIdlast, aId]));
// DMF.adcAccounting.CommitTrans;
// MaxID := MaxID + 1;
// Next;
// except
// on e: Exception do
// begin
// if DMF.adcAccounting.InTransaction then
// DMF.adcAccounting.RollbackTrans;
// add2log(e.Message);
// end;
// end;
//
// end;
//
// end;
// Filtered := false;
// FreeReservedCodes(DMF.adcAccounting, '(select');
// qry_AccCodeAfterScroll(qry_AccCode);
//
// end;
//
// end;

procedure TVarianceBookF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  btnAtuo.Visible := RadioGroup1.ItemIndex = 2;
  btnRelated.Visible := RadioGroup1.ItemIndex = 2;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TVarianceBookF.actShowAnalyzeExecute(Sender: TObject);
begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TVarianceBookF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // with qry_Doc do
  // case RadioGroup1.ItemIndex of
  // 0:
  // begin
  // Filter := 'DocumentId <> NULL';
  // Filtered := True;
  // end;
  // 1:
  // begin
  // Filter := 'DocumentId = NULL';
  // Filtered := True;
  // end;
  // 2:
  // Filtered := false;
  // end;
end;

procedure TVarianceBookF.qry_DocAnalizeTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'نقل از قبل';
    1:
      Text := 'اصلي';
    2:
      Text := 'آناليز شده';
  end;
end;

procedure TVarianceBookF.qry_DocBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with TADOQuery(DataSet) do
  begin

    case RadioGroup1.ItemIndex of
      0:
        SQL.Text := StringReplace(strSql, 'RadioGroup',
          'AND ( DocumentId IS NOT NULL )', [rfReplaceAll]);
      1:
        SQL.Text := StringReplace(strSql, 'RadioGroup',
          'AND ( DocumentId IS NULL )', [rfReplaceAll]);
      2:
        SQL.Text := StringReplace(strSql, 'RadioGroup', '', [rfReplaceAll]);
    end;

  end;

end;

procedure TVarianceBookF.qry_RemainBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with qry_Remain do
  begin
    Parameters.ParamByName('FromYearID').Value := qry_Doc.Parameters.ParamByName
      ('FromYearID').Value;
    Parameters.ParamByName('ToYearID').Value := qry_Doc.Parameters.ParamByName
      ('ToYearID').Value;
    Parameters.ParamByName('VarianceCode').Value :=
      qry_Doc.Parameters.ParamByName('VarianceCode').Value;
  end;
end;

procedure TVarianceBookF.actRelatedExecute(Sender: TObject);
var
  CountKind0, DocumentId, VarianceId, i: integer;
  bed, bes: Real48;
begin
  inherited;
  CountKind0 := 0;
  bed := 0;
  bes := 0;
  with qry_Doc do
    try
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        bed := bed + Fieldbyname('Debt').AsCurrency;
        bes := bes + Fieldbyname('Credit').AsCurrency;
        if qry_Dockind.AsInteger = 0 then
        begin
          DocumentId := qry_DocID.AsInteger;
          Inc(CountKind0);
        end;
        if (qry_DocDocumentId.AsInteger > 0) then
        begin
          Warn('قبلا ارتباط داده شده است');
          Exit;
        end;
      end;

      if CountKind0 > 1 then
      begin
        Warn('تنها یک رکورد با kind 0 قابل انتخاب است');
        Exit;
      end;

      intRecNo := 0;
      if not((bed = 0) or (bes = 0)) then
      begin
        if (bed - bes) = 0 then
        begin
          for i := 0 to DBGrid1.SelectedRows.Count - 1 do
          begin
            GotoBookmark((DBGrid1.SelectedRows.Items[i]));
            VarianceId := qry_DocID.AsInteger;
            if intRecNo = 0 then
              intRecNo := qry_Doc.RecNo;
            DMF.adcAccounting.Execute
              (Format('UPDATE Acc.Variance SET DocumentId = %d WHERE VarianceId = %d ',
              [DocumentId, VarianceId]));
          end;
        end
        else
          Warn('امکان ارتباط با مبالغ متفاوت وجود ندارد');

        DBGrid1.SelectedRows.Clear;
        qry_Doc.Requery();
        qry_DocAfterOpen(qry_Doc);

        if RadioGroup1.ItemIndex = 1 then
          qry_Doc.MoveBy(intRecNo)
        else
          qry_Doc.Locate('ID', DocumentId, []);

      end

    except
      on e: Exception do
      begin
        add2log(e.Message);
        Warn('اشکال در ارتباط');
      end;
    end;

end;

procedure TVarianceBookF.actdisRelatedExecute(Sender: TObject);
begin
  inherited;
  qry_Doc.Filter := Format('DocumentId = %d', [qry_DocDocumentId.AsInteger]);
  try
    qry_Doc.Filtered := True;
    if get_response
      ('آيا مي خواهيد  ارتباط هاي مربوط به سطر انتخاب شده حذف شوند ') <> mrYes
    then
      Exit;
    DMF.adcAccounting.Execute
      (Format('UPDATE Acc.Variance SET DocumentId = null WHERE DocumentId = %d ',
      [qry_DocDocumentId.AsInteger]));

  finally
    qry_Doc.Filtered := false;
    qry_Doc.Requery;
    qry_DocAfterOpen(qry_Doc);
  end;
end;

procedure TVarianceBookF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Filter := Format('DocumentId = %d',
    [qry_Doc.Fieldbyname('DocumentId').AsInteger]);
  qry_Doc.Filtered := SpeedButton1.Down;

end;

// procedure TVarianceBookF.CalRates;
// Var
// LastDate, NowDate: TDateTime;
// FinalRate: Double;
// begin
// if opt.RatesCalculation = 0 then
// Exit;
// with qry_Doc do
// try
// DisableControls;
// Last;
// LastDate := Shamsi2Miladi(qry_Doc.Parameters.ParamByName
// ('DocDateTo').Value);
//
// while not boF do
// begin
// NowDate := Shamsi2Miladi(Fieldbyname('DocDate').AsString);
// FinalRate := (Fieldbyname('calcuBalance').AsInteger *
// (LastDate - NowDate) * opt.RatesCalculation) / 36000;
// edit;
// Fieldbyname('rate').AsCurrency := RoundTo(FinalRate, 0);
// Fieldbyname('CalDate').AsString := miladi2Shamsi(LastDate);
// post;
// LastDate := (NowDate);
// Prior;
// end;
// Finally
// EnableControls;
// end;
// end;

procedure TVarianceBookF.chkFilterClick(Sender: TObject);
// var
// i: integer;
begin
  inherited;
  // qry_Doc.Filtered := chkFilter.Checked;
  // if (chkFilter.Checked) and (DBGrid1.SelectedRows.Count > 1) then
  // try
  // qry_Doc.DisableControls;
  // with DBGrid1.DataSource.DataSet do
  // for i := 0 to DBGrid1.DataSource.DataSet.RecordCount do
  // begin
  // if  then
  //
  // Inc(i);
  // end;
  // finally
  // qry_Doc.EnableControls;
  // end;

end;

procedure TVarianceBookF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TVarianceBookF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TVarianceBookF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

end.
