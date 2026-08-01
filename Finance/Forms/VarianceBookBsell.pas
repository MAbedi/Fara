unit VarianceBookBsell;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppDB,
  ppDBPipe, ppBands, ppClass, ppModule, raCodMod, ppCtrls,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppTypes, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  THackGrid = class(TDBGrid);

  TVarianceBookBsellF = class(Ttemplate2MDIF)
    qry_Doc: TADOQuery;
    qry_AccCode: TADOQuery;
    src_Companies: TDataSource;
    src_Doc: TDataSource;
    src_AccCode: TDataSource;
    DBGrid1: TDBGrid;
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
    SumGrid1: TSumGrid;
    actShowAnalyze: TAction;
    pnlRelated: TPanel;
    SpeedButton1: TSpeedButton;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    RadioGroup1: TRadioGroup;
    ppParameterList1: TppParameterList;
    qry_AccCodeVarianceCode: TIntegerField;
    qry_AccCodeVarianceName: TWideStringField;
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
    qry_Dockind: TIntegerField;
    qry_DocSerial: TIntegerField;
    qry_DocCompanyCode: TIntegerField;
    qry_DocYearID: TIntegerField;
    qry_DocID: TIntegerField;
    qry_DocSecondaryDocNo: TIntegerField;
    qry_DocPrimaryDocNo: TIntegerField;
    strngfld_DocDocDate: TStringField;
    qry_DocRow: TIntegerField;
    qry_DocTopicCode: TLargeintField;
    qry_DocDetailCode: TIntegerField;
    strngfld_DocDetailName_L1: TStringField;
    qry_DocCTopicCode: TIntegerField;
    strngfld_DocComment_L1: TStringField;
    qry_DocDebt: TFMTBCDField;
    qry_DocCredit: TFMTBCDField;
    qry_DocAidDocNo: TFMTBCDField;
    qry_DocDocumentID: TIntegerField;
    qry_DocSort: TBCDField;
    qry_DocRelatedNo: TIntegerField;
    qry_DocMoeenName_L1: TStringField;
    qry_DocCTopicName_L1: TStringField;
    popAutoRelate: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actAutoRelate: TAction;
    qry_DocAidDocdate: TStringField;
    BitBtn1: TBitBtn;
    RelatedNo1: TMenuItem;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);

    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);

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
    procedure mnuN7Click(Sender: TObject);
    procedure chkFilterClick(Sender: TObject);
    procedure qry_DocAfterOpen(DataSet: TDataSet);
    procedure qry_DocBeforeOpen(DataSet: TDataSet);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qry_RemainBeforeOpen(DataSet: TDataSet);
    procedure qry_AccCodeAfterOpen(DataSet: TDataSet);
    procedure actAutoRelateExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
    // param1, param2: integer;
    // sumDebt:currency;
    // sumCredit:currency;
    // sumAmount:currency;
    SQL_TEXT_STR: WideString;
    FormType: Integer;
    strSql: string;
    showFilter: Boolean;
    cloned: TADOQuery;
    intRecNo: Integer;
    // flag:boolean;
    procedure UpdateFilter;
    procedure CalRates;
    procedure AutoRelated(Sender: TObject);

  public
    { Public declarations }
  end;

var
  VarianceBookBsellF: TVarianceBookBsellF;

implementation

uses Dm, GlobalPro, FilterClass_ADO, searchCode_ADO, filter_ADO,
  Document, search2, sort2, searchCode_L1_L2,
  ScanImage, DocRelated2, Math, Resource, DateUtils, shamsiDate, DBGrid2Print,
  FaraConsts, CategoresDetailNote, MMESSAGE;
{$R *.dfm}

procedure TVarianceBookBsellF.UpdateFilter;

begin
  with qry_Doc do
  begin
    Active := false;
    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearId').Value := APPBank.Year;
    Parameters.ParamByName('FromYearId2').Value := APPBank.Year;
    Parameters.ParamByName('ToYearId2').Value := APPBank.Year;
    Parameters.ParamByName('RType').Value :=
      GetcFrom(myParams.ParamValues['ReciptType'], ftString);
    // Parameters.ParamByName('storeIDFrom').Value := 0;
    // Parameters.ParamByName('storeIDTo').Value := 99;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('FromYearID2').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID2').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
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

procedure TVarianceBookBsellF.FormActivate(Sender: TObject);
begin
  inherited;
  qry_DocAidDocNo.currency := false;
end;

procedure TVarianceBookBsellF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  cloned := TADOQuery.Create(Self);
  showFilter := var_glb_Boolean;
  strSql := qry_Doc.SQL.Text;
end;

procedure TVarianceBookBsellF.actFilterExecute(Sender: TObject);
var
  aCode, aDetail: string;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'Store', 'انبار', '', ftInteger, dvDefaults,
        'True', '', ciCheck,
        'SELECT   n_StoreID, c_StoreName  FROM   Stores', '');

      AddItem(DMF.adcAccounting, 'VarianceCode', 'کد و نام صورت مغایرت',
        'صورت مغایرت', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT VarianceCode, VarianceName FROM Acc.VarianceDefines ',
        'SELECT MIN(VarianceCode), MAX(VarianceCode) FROM Acc.VarianceDefines');

      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM util.maliYear');

      if FormType = 2 then
        AddItem(DMF.adcAccounting, 'ReciptType', 'فرم های انبار', 'كد فرم',
          ftInteger, dvDefaults, 'True', '', ciCheck,
          'SELECT ReciptType, ReciptCaption FROM ReciptTypes  ' +
          'WHERE (EffectType IN (2, 4, 6, 7, 8))', '');

      if FormType = 1 then
        AddItem(DMF.adcAccounting, 'ReciptType', 'فرم های فروش', 'كد فرم',
          ftInteger, dvDefaults, 'True', '', ciCheck,
          'SELECT  ReciptType, ReciptCaption  FROM  ReciptTypes1  WHERE  (SellEffect > 0)',
          '');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
      // if
    finally
      Free;
    end; // try

end;

procedure TVarianceBookBsellF.FormShow(Sender: TObject);
var
  BsellNames: string;
begin
  inherited;

  // SQL_TEXT_STR := qry_Doc.SQL.Text;
  // BsellNames := opta.BsellBank;
  // if BsellNames = '' then
  // begin
  // BsellNames := opta.BsellBankNames;
  // if pos(',', BsellNames) <> 0 then
  // BsellNames := Copy(BsellNames, 0, pos(',', BsellNames));
  // end;
  // if BsellNames = '' then
  // begin
  // Warn('ارتباط با سیستم خزانه داری و فروش را مشخص کنید');
  // Close;
  // Exit;
  // end;
  // qry_Doc.SQL.Text := StringReplace(qry_Doc.SQL.Text, ':BSELL', BsellNames,
  // [rfReplaceAll]);
  if showFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('VarianceCode') = nil then
      Close;
  end;
end;

procedure TVarianceBookBsellF.qry_AccCodeAfterOpen(DataSet: TDataSet);
begin
  inherited;
  RadioGroup1.Enabled := qry_AccCode.RecordCount > 0;
  BitBtn10.Enabled := qry_AccCode.RecordCount > 0;
  BitBtn11.Enabled := qry_AccCode.RecordCount > 0;
  BitBtn2.Enabled := qry_AccCode.RecordCount > 0;
  SpeedButton1.Enabled := qry_AccCode.RecordCount > 0;
  BitBtn1.Enabled := qry_AccCode.RecordCount > 0;
end;

procedure TVarianceBookBsellF.qry_AccCodeAfterScroll(DataSet: TDataSet);
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

procedure TVarianceBookBsellF.FormDestroy(Sender: TObject);
begin
  inherited;
  cloned.Free;
  SaveColWidth(DBGrid1);
end;

procedure TVarianceBookBsellF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True);
end;

procedure TVarianceBookBsellF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex <> 1 then
  begin
    warn('ارتباط اتوماتیک فقط در حالت پاس نشده امکان پذیر است');
    Exit
  end;
  popAutoRelate.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TVarianceBookBsellF.BitBtn3Click(Sender: TObject);
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

procedure TVarianceBookBsellF.btn1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex <> 1 then
  begin
    warn('ارتباط اتوماتیک فقط در حالت پاس نشده امکان پذیر است');
    Exit
  end;
  popAutoRelate.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TVarianceBookBsellF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  if qry_Dockind.AsInteger = 1 then
  begin
    warn('برای اطلاعات طرف حساب قابلیت نمایش سند وجود ندارد');
    Exit;
  end;
  DocumentF.FindDoc(qry_DocSerial.AsVariant, qry_DocYearID.AsInteger,
    qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_DocID.AsInteger, []);
end;

procedure TVarianceBookBsellF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TVarianceBookBsellF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TVarianceBookBsellF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TVarianceBookBsellF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TVarianceBookBsellF.AutoRelated(Sender: TObject);
var
  cQry: TADOQuery;
  Ftype: SmallInt;
  AidNum, AidDate: string;
  bed, bes: Extended;
  CountKind0, DocumentId, relatedNo, ReciptID { , VarianceId, , i } : Integer;
  SecondaryDocNo: Largeint;
  DocData: string;
  AidNumName: string;
begin
  inherited;
  try
    BigMessage('لطفا صبر کنید', 0);
    Ftype := (Sender as TMenuItem).Tag;
    AidNumName := (Sender as TMenuItem).Hint; // 'AidDocNo';
    AidNum := '0';
    cQry := TADOQuery.Create(Self);
    cQry.Clone(qry_Doc);
    DataSource1.DataSet := cQry;
    cQry.DisableControls;
    with qry_Doc do
    begin
      DisableControls;
      sort := AidNumName;
      First;
      while not Eof do
      begin
//         if qry_DocAidDocNo.AsString = '292' then
  //       warn('and AidDocNo =292');
        if AidNum = qry_Doc.Fieldbyname(AidNumName).AsString then
        begin
          Next;
          Continue
        end;
        AidNum := qry_Doc.Fieldbyname(AidNumName).AsString;
        AidDate := qry_DocAidDocdate.AsString;
        cQry.Filtered := false;

        case Ftype of
          1:
            cQry.Filter := 'AidDocNo = ' + AidNum;
          2:
            cQry.Filter := 'AidDocNo = ' + AidNum + ' and AidDocdate = '
              + AidDate;
          3:
            cQry.Filter := 'RelatedNo = ' + AidNum

        end;

        cQry.Filtered := True;
        cQry.First;
        bed := 0;
        bes := 0;
        CountKind0 := 0;
        while not cQry.Eof do
        begin
          bed := bed + cQry.Fieldbyname('Debt').AsCurrency;
          bes := bes + cQry.Fieldbyname('Credit').AsCurrency;
          if cQry.Fieldbyname('kind').AsInteger = 0 then
          begin
            DocumentId := cQry.Fieldbyname('ID').AsInteger;
            SecondaryDocNo := cQry.Fieldbyname('SecondaryDocNo').AsLargeInt;
            DocData := cQry.Fieldbyname('DocDate').AsString;
            Inc(CountKind0);
          end;
          cQry.Next;
        end;
        if CountKind0 = 0 then
        begin
          Next;
          Continue
        end;
        if not((bed = 0) or (bes = 0)) then
        begin
          if (bed - bes) = 0 then
          begin
            relatedNo := GetANewCode('', 'acc.DocOtherSysRelated', 'RelatedNO',dmf.adcAccounting);
            // select max(RelatedNO) from
            cQry.First;
            while not cQry.Eof do
            begin
              if cQry.Fieldbyname('kind').AsInteger <> 0 then
              begin
                ReciptID := cQry.Fieldbyname('ID').AsInteger;

                if (CountKind0 = 1) and (Ftype <> 3) then
                  DMF.adcAccounting.Execute
                    (Format('UPDATE dbo.Recipts SET DocNo = %d ,DocDate = %s  WHERE ReciptID = %d AND YearID = %d ',
                    [SecondaryDocNo, QuotedStr(DocData), ReciptID,
                    cQry.Fieldbyname('YearID').AsInteger]));

                DMF.adcAccounting.Execute
                  (Format('insert into acc.DocOtherSysRelated (TableKind, tableID, RelatedNO) values (%d,%d,%d)',
                  [cQry.Fieldbyname('kind').AsInteger, ReciptID, relatedNo]));
              end
              else
                DMF.adcAccounting.Execute
                  (Format('insert into acc.DocOtherSysRelated (TableKind, tableID, RelatedNO) values (%d,%d,%d)',
                  [cQry.Fieldbyname('kind').AsInteger,
                  cQry.Fieldbyname('ID').AsInteger, relatedNo]));

              cQry.Next;
            end;
            FreeReservedCodes(DMF.adcAccounting, 'acc.DocOtherSysRelated');
          end;
        end;
        Next;
      end; // while
    end; // with

  finally
    BigMessage('اتمام عملیات', 1);
    cQry.Free;
    qry_Doc.sort := '';
    qry_Doc.Requery;
    qry_Doc.EnableControls;
  end;
end;

procedure TVarianceBookBsellF.actPrintExecute(Sender: TObject);
begin
  inherited;
  qry_Remain.Active := True;
  InitReportFile(ppReport1, 'VarianceBook', DBGrid1, ppDBPipeline1);

end;

procedure TVarianceBookBsellF.qry_AccCodeaccCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Trim(Sender.AsString)
end;

procedure TVarianceBookBsellF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.Fieldbyname('SecondaryDocNo'));
end;

procedure TVarianceBookBsellF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TVarianceBookBsellF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TVarianceBookBsellF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TVarianceBookBsellF.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, '', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end;
  // try

end;

procedure TVarianceBookBsellF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TVarianceBookBsellF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از شماره موقت ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + ' تا ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);

end;

procedure TVarianceBookBsellF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از تاريخ ' + ParamByName('DocDateFrom').Value + ' تا ' +
      ParamByName('DocDateTo').Value;
end;

procedure TVarianceBookBsellF.ppDBCalcnum2alphabetGetText(Sender: TObject;
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

procedure TVarianceBookBsellF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره سند ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + ' تا '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TVarianceBookBsellF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TVarianceBookBsellF.N1Click(Sender: TObject);
begin
  inherited;
  AutoRelated(Sender)
end;

procedure TVarianceBookBsellF.N3Click(Sender: TObject);
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

procedure TVarianceBookBsellF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TVarianceBookBsellF.N4Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMF.adcAccounting, 'acc.DocGroups',
    qry_Doc.Fieldbyname('Serial').AsString, 1, True, '')
end;

procedure TVarianceBookBsellF.N5Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMF.adcAccounting, 'acc.Documents',
    qry_Doc.Fieldbyname('ID').AsString, 1, True, '')

end;

procedure TVarianceBookBsellF.actAnalyzExecute(Sender: TObject);
begin
  inherited;
  DocRelated2F.enter(qry_Doc.Fieldbyname('CompanyCode').AsInteger,
    qry_Doc.Fieldbyname('ID').AsInteger, nil, 0);
end;

procedure TVarianceBookBsellF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TVarianceBookBsellF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TVarianceBookBsellF.mnuN7Click(Sender: TObject);
const
  SqlMax = 'SELECT TOP 1 RelatedID FROM (SELECT MAX(RelatedID) AS RelatedID FROM Acc.Documents '
    + ' UNION ALL ' +
    ' SELECT  MAX(RelatedID) AS RelatedID FROM  Acc.DocRelated) AS QryMax ORDER BY RelatedID DESC ';
var

  MaxID: Integer;
  aDebit: Integer;
  aCredit: Integer;
  aId: Integer;
  aIdlast: Integer;

begin
  inherited;
  // MaxID := Get ANewCode('',SqlMax, '',dmf.adcAccounting);
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

end;

procedure TVarianceBookBsellF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TVarianceBookBsellF.actShowAnalyzeExecute(Sender: TObject);
begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;
end;

procedure TVarianceBookBsellF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  BitBtn10.Enabled := qry_Doc.RecordCount > 0;
  BitBtn11.Enabled := qry_Doc.RecordCount > 0;
  BitBtn2.Enabled := qry_Doc.RecordCount > 0;
  SpeedButton1.Enabled := qry_Doc.RecordCount > 0;
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

procedure TVarianceBookBsellF.qry_DocAnalizeTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  // case Sender.AsInteger of
  // 0:
  // Text := 'نقل از قبل';
  // 1:
  // Text := 'اصلي';
  // 2:
  // Text := 'آناليز شده';
  // end;
end;

procedure TVarianceBookBsellF.qry_DocBeforeOpen(DataSet: TDataSet);
var
  FStore: string;
begin
  inherited;
  with TADOQuery(DataSet) do
  begin

    FStore := GetcFrom(myParams.ParamValues['Store'], ftString);
    // SQL.Text:= StringReplace(strSql,'RStore',FStore,[rfReplaceAll]);

    case RadioGroup1.ItemIndex of
      0:
        begin
          SQL.Text := StringReplace(strSql, 'RadioGroup',
            ' where ( DocumentId IS NOT NULL )', [rfReplaceAll]);
          SQL.Text := SQL.Text.Replace('RStore', QuotedStr(FStore));
        end;
      1:
        begin
          SQL.Text := StringReplace(strSql, 'RadioGroup',
            'where ( DocumentId IS NULL ) ', [rfReplaceAll]);
          SQL.Text := SQL.Text.Replace('RStore', QuotedStr(FStore));
          // Warn('and AidDocNo =292');
        end;
      2:
        begin
          SQL.Text := StringReplace(strSql, 'RadioGroup', '', [rfReplaceAll]);
          SQL.Text := SQL.Text.Replace('RStore', QuotedStr(FStore));
        end;
    end;

  end;

end;

procedure TVarianceBookBsellF.qry_RemainBeforeOpen(DataSet: TDataSet);
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

procedure TVarianceBookBsellF.actRelatedExecute(Sender: TObject);
var
  CountKind0, DocumentId, VarianceId, ReciptID, i, relatedNo: Integer;
  SecondaryDocNo: Largeint;
  DocData: string;
  bed, bes: Extended;
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
          SecondaryDocNo := qry_DocSecondaryDocNo.AsLargeInt;
          DocData := qry_Doc.Fieldbyname('DocDate').AsString;
          Inc(CountKind0);
        end;
        if (qry_DocDocumentID.AsInteger > 0) and (qry_Dockind.AsInteger <> 0)
        then
        begin
          warn('قبلا ارتباط داده شده است');
          Exit;
        end;
      end;

      if CountKind0 = 0 then
      begin
        // Warn('تنها یک رکورد با kind 0 قابل انتخاب است');
        warn('باید حداقل یک رکورد با kind 0 انتخاب شود');
        Exit;
      end;

      intRecNo := 0;
      if not((bed = 0) or (bes = 0)) then
      begin
        if (bed - bes) = 0 then
        begin
          relatedNo := GetANewCode('', 'acc.DocOtherSysRelated', 'RelatedNO',dmf.adcAccounting);
          // select max(RelatedNO) from

          for i := 0 to DBGrid1.SelectedRows.Count - 1 do
          begin
            GotoBookmark((DBGrid1.SelectedRows.Items[i]));
            if qry_Dockind.AsInteger <> 0 then
            begin
              ReciptID := qry_DocID.AsInteger;
              if intRecNo = 0 then
                intRecNo := qry_Doc.RecNo;

              if CountKind0 = 1 then
                DMF.adcAccounting.Execute
                  (Format('UPDATE dbo.Recipts SET DocNo = %d ,DocDate = %s  WHERE ReciptID = %d AND YearID = %d ',
                  [SecondaryDocNo, QuotedStr(DocData), ReciptID,
                  qry_DocYearID.AsInteger]));

              DMF.adcAccounting.Execute
                (Format('insert into acc.DocOtherSysRelated (TableKind, tableID, RelatedNO) values (%d,%d,%d)',
                [qry_Dockind.AsInteger, ReciptID, relatedNo]));
            end
            else
              DMF.adcAccounting.Execute
                (Format('insert into acc.DocOtherSysRelated (TableKind, tableID, RelatedNO) values (%d,%d,%d)',
                [qry_Dockind.AsInteger, qry_DocID.AsInteger, relatedNo]));

          end;

        end
        else
        begin
          warn('امکان ارتباط با مبالغ متفاوت وجود ندارد');
          // add2log('bed=' + bed.ToString + Char(13) + 'bes=' + bes.ToString);
          // add2log('bed=' + CurrToStr(bed) + Char(13) + 'bes=' + CurrToStr(bes));
        end;
        DBGrid1.SelectedRows.Clear;
        qry_Doc.Requery();
        qry_DocAfterOpen(qry_Doc);

        if RadioGroup1.ItemIndex = 1 then
          qry_Doc.MoveBy(intRecNo)
        else
          qry_Doc.Locate('ID', DocumentId, []);
        FreeReservedCodes(DMF.adcAccounting, 'acc.DocOtherSysRelated');
      end

    except
      on e: Exception do
      begin
        add2log(e.Message);
        warn('اشکال در ارتباط');
        FreeReservedCodes(DMF.adcAccounting, 'acc.DocOtherSysRelated');
      end;
    end;

end;

procedure TVarianceBookBsellF.actAutoRelateExecute(Sender: TObject);
var
  cQry: TADOQuery;
  Ftype: SmallInt;
  AidNum, AidDate: string;
  bed, bes: Extended;
  CountKind0, DocumentId, relatedNo, ReciptID { , VarianceId, , i } : Integer;
  SecondaryDocNo: Largeint;
  DocData: string;
begin
  inherited;
  try
    Ftype := (Sender as TMenuItem).Tag;
    AidNum := '0';
    cQry := TADOQuery.Create(Self);
    cQry.Clone(qry_Doc);
    cQry.DisableControls;
    with qry_Doc do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        if AidNum = qry_DocAidDocNo.AsString then
        begin
          Next;
          Continue
        end;
        AidNum := qry_DocAidDocNo.AsString;
        AidDate := qry_DocAidDocdate.AsString;
        cQry.Filtered := True;
        if Ftype = 1 then
          cQry.Filter := 'AidDocNo = ' + AidNum
        else
          cQry.Filter := 'AidDocNo = ' + AidNum + ' and AidDocdate = '
            + AidDate;
        cQry.Filtered := True;
        cQry.First;
        bed := 0;
        bes := 0;
        while not cQry.Eof do
        begin
          bed := bed + Fieldbyname('Debt').AsCurrency;
          bes := bes + Fieldbyname('Credit').AsCurrency;
          if qry_Dockind.AsInteger = 0 then
          begin
            DocumentId := qry_DocID.AsInteger;
            SecondaryDocNo := qry_DocSecondaryDocNo.AsLargeInt;
            DocData := qry_Doc.Fieldbyname('DocDate').AsString;
            Inc(CountKind0);
          end;
          cQry.Next;
        end;
        if CountKind0 = 0 then
        begin
          Next;
          Continue
        end;
        if not((bed = 0) or (bes = 0)) then
        begin
          if (bed - bes) = 0 then
          begin
            relatedNo := GetANewCode('', 'acc.DocOtherSysRelated', 'RelatedNO',dmf.adcAccounting);
            // select max(RelatedNO) from
            cQry.First;
            while not cQry.Eof do
            begin
              if qry_Dockind.AsInteger <> 0 then
              begin
                ReciptID := qry_DocID.AsInteger;

                if CountKind0 = 1 then
                  DMF.adcAccounting.Execute
                    (Format('UPDATE dbo.Recipts SET DocNo = %d ,DocDate = %s  WHERE ReciptID = %d AND YearID = %d ',
                    [SecondaryDocNo, QuotedStr(DocData), ReciptID,
                    qry_DocYearID.AsInteger]));

                DMF.adcAccounting.Execute
                  (Format('insert into acc.DocOtherSysRelated (TableKind, tableID, RelatedNO) values (%d,%d,%d)',
                  [qry_Dockind.AsInteger, ReciptID, relatedNo]));
              end
              else
                DMF.adcAccounting.Execute
                  (Format('insert into acc.DocOtherSysRelated (TableKind, tableID, RelatedNO) values (%d,%d,%d)',
                  [qry_Dockind.AsInteger, qry_DocID.AsInteger, relatedNo]));
            end;
            FreeReservedCodes(DMF.adcAccounting, 'acc.DocOtherSysRelated');
          end;
        end;
        Next;
      end; // while
    end; // with
  finally
    cQry.Free;
    qry_Doc.Requery;
    qry_Doc.EnableControls;
  end;
end;

procedure TVarianceBookBsellF.actdisRelatedExecute(Sender: TObject);
var
  qry_temp2: TADOQuery;
  recipt, Document, sFilter: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 1 then
  begin
    warn('بیش از یک سطر انتخاب شده است');
    Exit;
  end;
  if (qry_DocDocumentID.AsString = null) or (qry_DocDocumentID.AsString = '')
  then
  begin
    warn('سطر انتخاب شده فاقد ارتباط می باشد');
    Exit;
  end;
  qry_temp2 := TADOQuery.Create(nil);
  with qry_temp2 do
  begin

    Connection := DMF.adcAccounting;
    SQL.Text := 'select tableID from acc.DocOtherSysRelated where (RelatedNO ='
      + qry_DocDocumentID.AsString + ') and (TableKind = 1)';
    Open;
    while not Eof do
    begin
      recipt := recipt + qry_temp2.Fieldbyname('tableID').AsString + ',';
      Next;
    end;
    recipt := Copy(recipt, 0, Length(recipt) - 1);
  end;
  // if qry_Dockind.AsInteger = 0 then
  // begin
  // with qry_temp do
  // begin
  // Connection := DMF.adcAccounting;
  // SQL.Text :=
  // Format('select distinct tableID as ReciptID from acc.DocOtherSysRelated where (RelatedNO = %d)'
  // + ' and (TableKind <> %d)', [qry_DocDocumentID.AsInteger,
  // qry_Dockind.AsInteger]);
  // Open;
  // First;
  // while not eof do
  // recipt := recipt + qry_temp.Fieldbyname('ReciptID').AsString + ',';
  // recipt := Copy(recipt, 0, Length(recipt) - 1);
  // end;
  // sFilter := Format('(DocumentId = %d and Kind = %d)',
  // [qry_DocDocumentID.AsInteger, qry_Dockind.AsInteger]);
  // if recipt <> '' then
  // sFilter := sFilter + Format(' or (DocumentId in (%s) and Kind <> %d)',
  // [recipt, qry_Dockind.AsInteger]);
  // // qry_Doc.Filter :=
  // // Format('(DocumentId = %d and Kind = %d) or (DocumentId in (%s) and Kind <> %d)',
  // // [qry_DocDocumentID.AsInteger, qry_Dockind.AsInteger, recipt,
  // // qry_Dockind.AsInteger]);
  // end;
  // if qry_Dockind.AsInteger <> 0 then
  // begin
  // with qry_temp do
  // begin
  // Connection := DMF.adcAccounting;
  // SQL.Text :=
  // Format('select distinct DocumentID from acc.DocOtherSysRelated where ReciptID = %d',
  // [qry_DocDocumentID.AsInteger]);
  // Open;
  // Document := qry_temp.Fieldbyname('DocumentID').AsString;
  // end;
  // sFilter := Format('(DocumentId = %d and Kind = %d)',
  // [qry_DocDocumentID.AsInteger, qry_Dockind.AsInteger]);
  // if recipt <> '' then
  // sFilter := sFilter + Format(' or (DocumentId in (%s) and Kind <> %d)',
  // [recipt, qry_Dockind.AsInteger]);
  //
  // // qry_Doc.Filter :=
  // // Format('(DocumentId = %d and Kind = %d) or (DocumentId in (%d) and Kind <> %d)',
  // // [qry_DocDocumentID.AsInteger, qry_Dockind.AsInteger, Document,
  // // qry_Dockind.AsInteger]);
  // end;

  try
    qry_Doc.Filter := 'DocumentId = ' + qry_DocDocumentID.AsString;
    qry_Doc.Filtered := True;
    if get_response
      ('آيا مي خواهيد  ارتباط هاي مربوط به سطر انتخاب شده حذف شوند ') <> mrYes
    then
      Exit;
    // if qry_Dockind.AsInteger = 0 then
    // begin
    // DMF.adcAccounting.Execute
    // (Format('UPDATE dbo.Recipts SET DocNo = null,DocDate = null WHERE ReciptID in (%d) AND YearID = %d ',
    // [recipt]));
    // DMF.adcAccounting.Execute
    // (Format('delete from acc.DocOtherSysRelated where DocumentID = %d and ReciptID in (%d)AND YearID = %d ',
    // [qry_DocDocumentID.AsInteger, recipt]));
    // end;
    // if qry_Dockind.AsInteger <> 0 then
    // begin
    // DMF.adcAccounting.Execute
    // (Format('UPDATE dbo.Recipts SET DocNo = null,DocDate = null WHERE ReciptID = %d ',
    // [qry_DocDocumentID.AsInteger]));
    // DMF.adcAccounting.Execute
    // (Format('delete from acc.DocOtherSysRelated where ReciptID = %d',
    // [qry_DocDocumentID.AsInteger]));
    // end;

//    //  new coment  1401/10/11
//    if recipt <> '' then
//      DMF.adcAccounting.Execute
//        (Format('UPDATE dbo.Recipts SET DocNo = 0,DocDate = '''' WHERE (ReciptID in (%s)) and (yearID = %d) ',
//        [recipt, APPBank.Year]));

    DMF.adcAccounting.Execute
      (Format('delete from acc.DocOtherSysRelated where RelatedNO = %d',
      [qry_DocDocumentID.AsInteger]));
  finally
    qry_temp2.Free;
    qry_Doc.Filtered := false;
    qry_Doc.Requery;
    qry_DocAfterOpen(qry_Doc);
  end;
end;

procedure TVarianceBookBsellF.SpeedButton1Click(Sender: TObject);
var
  qry_temp: TADOQuery;
  recipt, Document: string;
begin
  inherited;
  // qry_Doc.Filter := Format('DocumentId = %d',
  // [qry_Doc.Fieldbyname('DocumentId').AsInteger]);
  qry_temp := TADOQuery.Create(nil);
  if qry_Dockind.AsInteger = 0 then
  begin
    with qry_temp do
    begin
      Connection := DMF.adcAccounting;
      SQL.Text :=
        Format('select distinct ReciptID from acc.DocOtherSysRelated where DocumentID = %d',
        [qry_DocDocumentID.AsInteger]);
      Open;
      First;
      while not Eof do
        recipt := recipt + qry_temp.Fieldbyname('ReciptID').AsString + ',';
      recipt := Copy(recipt, 0, Length(recipt) - 1);
    end;
    qry_Doc.Filter :=
      Format('(DocumentId = %d and Kind = %d) or (DocumentId in (%d) and Kind <> %d)',
      [qry_DocDocumentID.AsInteger, qry_Dockind.AsInteger, recipt,
      qry_Dockind.AsInteger]);
  end;
  if qry_Dockind.AsInteger <> 0 then
  begin
    with qry_temp do
    begin
      Connection := DMF.adcAccounting;
      SQL.Text :=
        Format('select distinct DocumentID from acc.DocOtherSysRelated where ReciptID = %d',
        [qry_DocDocumentID.AsInteger]);
      Open;
      Document := qry_temp.Fieldbyname('DocumentID').AsString;
    end;
    qry_Doc.Filter :=
      Format('(DocumentId = %d and Kind = %d) or (DocumentId in (%d) and Kind <> %d)',
      [qry_DocDocumentID.AsInteger, qry_Dockind.AsInteger, Document,
      qry_Dockind.AsInteger]);
  end;

  qry_Doc.Filtered := SpeedButton1.Down;
  qry_temp.Free;
end;

procedure TVarianceBookBsellF.CalRates;
Var
  LastDate, NowDate: TDateTime;
  FinalRate: Double;
begin
  if opta.RatesCalculation = 0 then
    Exit;
  with qry_Doc do
    try
      DisableControls;
      Last;
      LastDate := Shamsi2Miladi(qry_Doc.Parameters.ParamByName
        ('DocDateTo').Value);

      while not boF do
      begin
        NowDate := Shamsi2Miladi(Fieldbyname('DocDate').AsString);
        FinalRate := (Fieldbyname('calcuBalance').AsInteger *
          (LastDate - NowDate) * opta.RatesCalculation) / 36000;
        edit;
        Fieldbyname('rate').AsCurrency := RoundTo(FinalRate, 0);
        Fieldbyname('CalDate').AsString := miladi2Shamsi(LastDate);
        post;
        LastDate := (NowDate);
        Prior;
      end;
    Finally
      EnableControls;
    end;
end;

procedure TVarianceBookBsellF.chkFilterClick(Sender: TObject);
var
  i: Integer;
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

procedure TVarianceBookBsellF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TVarianceBookBsellF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TVarianceBookBsellF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

end.


