unit SpecialAccDetailOnTopicBook2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppDB,
  ppDBPipe, ppBands, ppClass, ppModule, raCodMod, ppCtrls,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions,AccFunctions,Filter_ADO_Const;

type
  TSpecialAccDetailOnTopicBook2F = class(Ttemplate2MDIF)
    qry_Doc: TADOQuery;
    qry_Companies: TADOQuery;
    qry_AccCode: TADOQuery;
    src_Companies: TDataSource;
    qry_CompaniesCompanyCode: TIntegerField;
    qry_CompaniesCompanyName: TStringField;
    src_Doc: TDataSource;
    src_AccCode: TDataSource;
    DBGrid1: TDBGrid;
    actFilter: TAction;
    qry_DocID: TAutoIncField;
    qry_DocCompanyCode: TIntegerField;
    qry_DocTopicCode: TLargeintField;
    qry_DocDetailCode: TIntegerField;
    qry_DocSecondaryDocNo: TIntegerField;
    qry_DocPrimaryDocNo: TIntegerField;
    qry_DocDocDate: TStringField;
    qry_DocComment: TStringField;
    qry_DocAidDocdate: TStringField;
    qry_DocAidAmount: TFloatField;
    qry_DocDebt: TFMTBCDField;
    qry_DocCredit: TFMTBCDField;
    qry_DocBalance: TBCDField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn8: TBitBtn;
    actShowForm: TAction;
    qry_Docserial: TIntegerField;
    qry_DocBudgetTopicID: TIntegerField;
    qry_DocProjectID: TIntegerField;
    qry_DoccalcuBalance: TBCDField;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    qry_CompaniesCompanyName_L2: TStringField;
    ppDBPipeline1: TppDBPipeline;
    qry_Docbed: TBCDField;
    qry_Docbes: TBCDField;
    qry_DocBedBes: TStringField;
    grpCompany: TGroupBox;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBNavigator2: TDBNavigator;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    qry_DocStatus: TIntegerField;
    pop4Print: TPopupMenu;
    pop_1: TMenuItem;
    Pop_2: TMenuItem;
    pop_3: TMenuItem;
    Pop_4: TMenuItem;
    pop_5: TMenuItem;
    pop_6: TMenuItem;
    pop_7: TMenuItem;
    pop_8: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    qry_DocAmount: TFloatField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText9: TppDBText;
    ppDBText18: TppDBText;
    ppLabel11: TppLabel;
    ppLine23: TppLine;
    ppLblDate: TppLabel;
    ppLine1: TppLine;
    ppLblSeconNo_DocNo: TppLabel;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine38: TppLine;
    ppDBText10: TppDBText;
    ppLine42: TppLine;
    ppDBText13: TppDBText;
    ppLine44: TppLine;
    ppDBText11: TppDBText;
    ppLine45: TppLine;
    ppDBText16: TppDBText;
    ppLine46: TppLine;
    ppDBText17: TppDBText;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppDBText12: TppDBText;
    ppDBText19: TppDBText;
    ppLine22: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape5: TppShape;
    ppLabel27: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine26: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    SumGrid1: TSumGrid;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid3: TDBGrid;
    qry_AccCodeTopicCode: TLargeintField;
    qry_AccCodeMoeenName_L1: TStringField;
    qry_Details: TADOQuery;
    qry_DetailsCompanyCode: TIntegerField;
    qry_DetailsDetailCode: TIntegerField;
    qry_DetailsDetailName_L1: TStringField;
    qry_DetailsDetailName_L2: TStringField;
    qry_DetailsMakeDate: TDateTimeField;
    qry_DetailsUseKindInCo: TWordField;
    src_Details: TDataSource;
    Panel4: TPanel;
    actSearchDetail: TAction;
    BitBtn3: TBitBtn;
    BitBtn9: TBitBtn;
    actShowAccount: TAction;
    actShowAllAccount: TAction;
    actSearchAcc: TAction;
    BitBtn11: TBitBtn;
    qry_AccCodeMoeenName_L2: TStringField;
    qry_AccCodeLevelID: TIntegerField;
    qry_AccCodeFinancialID: TIntegerField;
    qry_AccCodeAuditID: TIntegerField;
    qry_AccCodeEssence: TWordField;
    qry_AccCodeReactionForRepEssence: TWordField;
    qry_AccCodeTaxonomyType: TWordField;
    qry_AccCodeTaxonomyTopicCode: TLargeintField;
    qry_AccCodeLastYearTopicCode: TLargeintField;
    qry_AccCodeLastTopicCode: TLargeintField;
    qry_AccCodeAidInfoType: TWordField;
    qry_AccCodeAuditReferenceNo: TIntegerField;
    qry_AccCodeAuditReferenceTxt: TStringField;
    qry_AccCodeRecalInterfaceID: TStringField;
    qry_AccCodeKindInsertBudgetCode: TIntegerField;
    qry_AccCodeBudgetTopicID: TIntegerField;
    qry_AccCodeProjectID: TIntegerField;
    qry_AccCodemakeDate: TDateTimeField;
    BitBtn10: TBitBtn;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    qry_DocYearID: TIntegerField;
    N3: TMenuItem;
    actFilterFrom: TAction;
    qry_Doc_row: TBCDField;
    qry_DocAidDocNo: TFMTBCDField;
    PopPrint: TPopupMenu;
    mnuPrint1: TMenuItem;
    mnuPrint2: TMenuItem;
    qry_DocCurrencyType: TIntegerField;
    qry_DocCurrenciesName: TStringField;
    qry_DocCurrencyDebit: TFMTBCDField;
    qry_DocCurrencyCredit: TFMTBCDField;
    qry_DocCurrencyBalance: TFMTBCDField;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure qry_CompaniesAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure N2Click(Sender: TObject);
    procedure Pop_2Click(Sender: TObject);
    procedure pop_3Click(Sender: TObject);
    procedure Pop_4Click(Sender: TObject);
    procedure pop_5Click(Sender: TObject);
    procedure pop_6Click(Sender: TObject);
    procedure pop_7Click(Sender: TObject);
    procedure pop_8Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure N1Click(Sender: TObject);
    procedure pop_1Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ppLblSeconNo_DocNoGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure qry_DetailsAfterScroll(DataSet: TDataSet);
    procedure actShowAllAccountExecute(Sender: TObject);
    procedure qry_DocAfterOpen(DataSet: TDataSet);
    procedure actShowAccountExecute(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchDetailExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure mnuPrint1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
    param1, param2: Integer;
    // sumDebt:currency;
    // sumCredit:currency;
    // sumAmount:currency;
    showFilter: Boolean;
    cloned: TADOQuery;

//    procedure Updateremain;
    procedure UpdateFilter;
    // function CalcSumFileds(FiledName: String): Currency;
    procedure setVisibleColumns;
  public
    { Public declarations }
  end;

var
  SpecialAccDetailOnTopicBook2F: TSpecialAccDetailOnTopicBook2F;

implementation

uses Dm, GlobalPro, FilterClass_ADO, filter_ADO,
  Document, search2, sort2, searchCode_L1_L2,
  DBGrid2Print, Resource, FormFunctions;
{$R *.dfm}

procedure TSpecialAccDetailOnTopicBook2F.UpdateFilter;
var
  ts: TStringList;
  i: Integer;
  s: string;
begin
  s := GetcTo(myParams.ParamValues['checked'], ftString);
  ts := TStringList.Create;
  try
    ts.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
    param1 := -1;
    param2 := -1;
    for i := 0 to ts.Count - 1 do
    begin
      if i = 0 then
        param1 := StrToInt(ts[0]) - 1;
      if i = 1 then
        param2 := StrToInt(ts[1]) - 1;
    end; // fot
  finally
    ts.Free;
  end; // try
  with qry_Details do
  begin
    Active := false;
    Parameters.ParamByName('DetailFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
  end; // with
  with qry_AccCode do
  begin
    Active := false;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
  end; // with

  with qry_Doc do
  begin
    Active := false;
    SetArzParameters(qry_Doc, myParams);
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString); // param1;
    Parameters.ParamByName('Status2').Value := -1;
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;

  end; // with
  with qry_Companies do
  begin
    Active := false;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end; // if
    SetCompanyFilterinLogin(Parameters);
    Active := True;
  end; // with
end;


// function TSpecialAccDetailOnTopicBook2F.CalcSumFileds(FiledName: String): Currency;
// begin
// Result:=0;
// try
// with cloned do begin
// Clone(qry_Doc,ltReadOnly);
// First;
// while not eof do begin
// Result:=Result +fieldbyname(FiledName).AsCurrency;
// Next;
// end;//while
// end;//with
// except
// end;//try
// end;

//procedure TSpecialAccDetailOnTopicBook2F.Updateremain;
//var
//  c, bes, bed: Currency;
//  amount, i: Integer;
//begin
//  with qry_Doc do
//  begin
//    try
//      First;
//      DisableControls;
//      c := 0;
//      bed := 0;
//      bes := 0;
//      amount := 0;
//      i := 0;
//      while not eof do
//      begin
//        i := i + 1;
//        amount := amount + fieldbyname('AidAmount').AsInteger;
//        c := c + fieldbyname('Balance').AsCurrency;
//        bed := bed + fieldbyname('Debt').AsCurrency;
//        bes := bes + fieldbyname('Credit').AsCurrency;
//        edit;
//        fieldbyname('_row').AsInteger := i;
//        fieldbyname('Amount').AsInteger := amount;
//        fieldbyname('calcuBalance').AsCurrency := c;
//        fieldbyname('bed').AsCurrency := bed;
//        fieldbyname('bes').AsCurrency := bes;
//        post;
//        Next;
//      end; //
//    finally
//      First;
//      EnableControls;
//    end; // try
//  end; // with
//  // StatusBar1.Panels[5].Text:=' ⁄œ«œ  =  '+IntToStr(qry_Doc.RecordCount);
//  // StatusBar1.Panels[3].Text:='„ﬁœ«— = '+IfThen(DBGrid1.Columns[6].Visible,inttostr(amount),'0');
//  // StatusBar1.Panels[2].Text:='»œ = '+CurrToStrF(bed,ffCurrency,0)  ;
//  // StatusBar1.Panels[1].Text:='»” = '+CurrToStrF(bes,ffCurrency,0)  ;
//  // StatusBar1.Panels[0].Text:= '„«‰œÂ = '+CurrToStrF(bed-bes,ffCurrency,0)  ;
//end;

procedure TSpecialAccDetailOnTopicBook2F.FormCreate(Sender: TObject);
begin
  inherited;
  cloned := TADOQuery.Create(Self);
  showFilter := var_glb_Boolean;
  grpCompany.Visible := gv_MultiCompany;
end;

procedure TSpecialAccDetailOnTopicBook2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try

        AddItemFilter(GetFilter, TFilterCurrencies);
        AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(DMF.adcAccounting, 'checked', 'Ê÷⁄Ì  «”‰«œ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', '‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ›—⁄Ì', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', '‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ”‰œ', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'TopicCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');
      AddItem(DMF.adcAccounting, 'DetailCode', '‰«„ Õ”«»  ›’Ì·Ì ', 'ﬂœ  ›’Ì·Ì',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode,DetailName_L1 FROM acc.Details WHERE ( DetailCode<>0)',
        'SELECT Min(DetailCode),  Max(DetailCode)  FROM acc.Documents');
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ', '‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
                'SELECT 0,999999999');
      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', '„ÕœÊœ ”«· „«·Ì', '”«· „«·Ì',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM UTil.maliYear');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDate') = nil then
    close;

end;

procedure TSpecialAccDetailOnTopicBook2F.qry_AccCodeAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  setVisibleColumns;
  // with qry_Doc do begin
  // Active:=false;
  // Parameters.ParamByName('TopicCode').Value :=qry_AccCode.Fieldbyname('TopicCode').AsLargeInt  ;
  // Parameters.ParamByName('DetailCode').Value :=qry_AccCode.fieldByName('DetailCode').AsInteger  ;
  // Active:=True ;
  // end;//with

end;

procedure TSpecialAccDetailOnTopicBook2F.qry_CompaniesAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qry_Details do
  begin
    close;
    Parameters.ParamByName('Company').Value :=
      DataSet.fieldbyname('CompanyCode').AsInteger;
    Open;
  end;

end;

procedure TSpecialAccDetailOnTopicBook2F.FormDestroy(Sender: TObject);
begin
  inherited;
  cloned.Free;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid3);

end;

procedure TSpecialAccDetailOnTopicBook2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, True);
  SetColSize(DBGrid2, 1, True);
  SetColSize(DBGrid3, 1, True);

end;

procedure TSpecialAccDetailOnTopicBook2F.BitBtn1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_L1,CompanyName_L2 FROM acc.Companies '
    + ' where CompanyCode between ' +
    GetcFrom(myParams.ParamValues['CompanyCode'], ftString) + ' and ' +
    GetcTo(myParams.ParamValues['CompanyCode'], ftString);
  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, '‘—ﬂ Â«', Txt,
    ['òœ', '‰«„ ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    qry_Companies.Locate('CompanyCode', Results[0], []);
  end; // if
end;

procedure TSpecialAccDetailOnTopicBook2F.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  // if not(gdSelected in State) then begin
  // if odd(DBGrid1.DataSource.DataSet.RecNo) then
  // DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  // end;//if
  // DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TSpecialAccDetailOnTopicBook2F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  GetUserAccess('mnuDocument');
  DocumentF.FindDoc(qry_Doc.fieldbyname('serial').AsVariant,
    qry_Doc.fieldbyname('YearId').AsInteger, qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_Doc.fieldbyname('id').AsInteger, []);
end;

procedure TSpecialAccDetailOnTopicBook2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TSpecialAccDetailOnTopicBook2F.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSpecialAccDetailOnTopicBook2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TSpecialAccDetailOnTopicBook2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TSpecialAccDetailOnTopicBook2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  // if DBGrid1.Columns[4].Visible then
  // begin
  // Pop_2.Visible := True;
  // Pop_4.Visible := True;
  // pop_6.Visible := True;
  // pop_8.Visible := True;
  // end
  // else
  // begin
  // Pop_2.Visible := false;
  // Pop_4.Visible := false;
  // pop_6.Visible := false;
  // pop_8.Visible := false;
  // end;
  // if DBGrid1.Columns[7].Visible then
  // begin
  // pop_1.Visible := True;
  // pop_3.Visible := True;
  // pop_5.Visible := True;
  // pop_7.Visible := True;
  // end
  // else
  // begin
  // pop_1.Visible := false;
  // pop_3.Visible := false;
  // pop_5.Visible := false;
  // pop_7.Visible := false;
  // end;
  // pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSpecialAccDetailOnTopicBook2F.qry_AccCodeaccCodeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Trim(Sender.AsString)
end;

procedure TSpecialAccDetailOnTopicBook2F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.fieldbyname('SecondaryDocNo'));
end;

procedure TSpecialAccDetailOnTopicBook2F.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSpecialAccDetailOnTopicBook2F.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSpecialAccDetailOnTopicBook2F.ppSystemVariable1GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSpecialAccDetailOnTopicBook2F.N2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetailland', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.N4Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_AllCurrency', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TSpecialAccDetailOnTopicBook2F.N5Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_Currency', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TSpecialAccDetailOnTopicBook2F.Pop_2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_AccCode.DisableControls;
    qry_Doc.DisableControls;

    InitReportFile(ppReport1, 'Rpt_AccDetail_Aid', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.pop_3Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_secondery_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.Pop_4Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_secondery_Aid', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.pop_5Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_lan_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.pop_6Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_lan_Aid', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_secondery_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.pop_8Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_secondery_lan_Aid', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSpecialAccDetailOnTopicBook2F.N1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBook2F.pop_1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_budject', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TSpecialAccDetailOnTopicBook2F.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
end;
// procedure TRpt_AccDetailOnTopicBookF.chooseColumnDown;
// var
// i,amount:integer;
// bed,bes,remain:Currency;
// begin
// if qry_Doc.Fieldbyname('_row').AsInteger=qry_Doc.RecordCount then exit;
// bed:=0;
// bes:=0;
// amount:=0;
// with qry_Doc do begin
// try
// DisableControls;
// DBGrid1.SelectedRows.CurrentRowSelected:=true;
// for i:=0 to IfThen(DBGrid1.SelectedRows.Count<>0,DBGrid1.SelectedRows.Count-1,0) do begin
// GotoBookmark(pointer(DBGrid1.SelectedRows[i]));
// bed:=bed +fieldbyname('Debt').AsCurrency;
// bes:=bes +fieldbyname('Credit').AsCurrency;
// remain:=(bed-bes);
// amount:=amount+fieldbyname('AidAmount').AsInteger;
// end;//for
// if DBGrid1.SelectedRows.Count<>qry_Doc.RecordCount then begin
// Next;
// bed:=bed +fieldbyname('Debt').AsCurrency;
// bes:=bes +fieldbyname('Credit').AsCurrency;
// remain:=(bed-bes);
// amount:=amount+fieldbyname('AidAmount').AsInteger;
// Prior;
// end;
// finally
// EnableControls;
// end;
// end ;
// end;

// procedure TRpt_AccDetailOnTopicBookF.chooseColumnUp;
// var
// i:integer;
// bed,bes,remain,amount:Currency;
// begin
// bed:=0;
// bes:=0;
// amount:=0;
// with qry_Doc do begin
// try
// EnableControls;
// DBGrid1.SelectedRows.CurrentRowSelected:=true;
// for i:=0 to DBGrid1.SelectedRows.Count-1 do begin
// GotoBookmark(pointer(DBGrid1.SelectedRows[i]));
// bed:=bed +fieldbyname('Debt').AsCurrency;
// bes:=bes +fieldbyname('Credit').AsCurrency;
// remain:=(bed-bes);
// amount:=amount+fieldbyname('AidAmount').AsInteger;
// end;//for
// StatusBar3.Panels[5].Text:='  ⁄œ«œ ”ÿ—Â«Ì «‰ Œ«»Ì = '+IntToStr(DBGrid1.SelectedRows.Count);
// StatusBar3.Panels[3].Text:='„ﬁœ«— = '+IfThen(DBGrid1.Columns[6].Visible ,CurrToStrF(Amount,ffGeneral,0),'0');
// StatusBar3.Panels[2].Text:='»œ = '+CurrToStrF(bed,ffCurrency,0)  ;
// StatusBar3.Panels[1].text:='»” = '+CurrToStrF(bes,ffCurrency,0)  ;
// StatusBar3.Panels[0].Text:= '„«‰œÂ = '+CurrToStrF(remain,ffCurrency,0);
// finally
// EnableControls;
// end;
// end ;
// end;

procedure TSpecialAccDetailOnTopicBook2F.ppLblSeconNo_DocNoGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := '«“ ‘„«—Â „Êﬁ  ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + '  « ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);

end;

procedure TSpecialAccDetailOnTopicBook2F.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := '«“  «—ÌŒ ' + ParamByName('DocDateFrom').Value + '  « ' +
      ParamByName('DocDateTo').Value;
end;

procedure TSpecialAccDetailOnTopicBook2F.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ”‰œ ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + '  « '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TSpecialAccDetailOnTopicBook2F.setVisibleColumns;
var
  id: Integer;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 3) and FormInfoID=' +
      qry_AccCode.fieldbyname('AidInfoType').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#04#05#06', id <> 0);
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 12) and FormInfoID=' +
      qry_AccCode.fieldbyname('KindInsertBudgetCode').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#07#08', id <> 0);
  end; // with
end;

procedure TSpecialAccDetailOnTopicBook2F.qry_DetailsAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qry_AccCode do
  begin
    close;
    Parameters.ParamByName('Detail').Value :=
      qry_Details.fieldbyname('DetailCode').AsInteger;
    Open;
  end;
end;

procedure TSpecialAccDetailOnTopicBook2F.actShowAllAccountExecute
  (Sender: TObject);
begin
  inherited;
  with qry_Doc do
  begin
    close;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_Details.fieldbyname('CompanyCode').AsInteger;
    Parameters.ParamByName('DetailCodeFrom').Value :=
      qry_Details.fieldbyname('DetailCode').AsInteger;
    Parameters.ParamByName('DetailCodeTo').Value :=
      qry_Details.fieldbyname('DetailCode').AsInteger;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
    Open;
  end;

end;

procedure TSpecialAccDetailOnTopicBook2F.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // Updateremain;
    DBGridCurrencyKind(DBGrid1, MyParams,qry_Doc)
end;

procedure TSpecialAccDetailOnTopicBook2F.actShowAccountExecute(Sender: TObject);
begin
  inherited;
  with qry_Doc do
  begin
    close;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_Details.fieldbyname('CompanyCode').AsInteger;
    Parameters.ParamByName('DetailCodeFrom').Value :=
      qry_Details.fieldbyname('DetailCode').AsInteger;
    Parameters.ParamByName('DetailCodeTo').Value :=
      qry_Details.fieldbyname('DetailCode').AsInteger;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      qry_AccCode.fieldbyname('TopicCode').AsLargeInt;
    Parameters.ParamByName('TopicCodeTo').Value :=
      qry_AccCode.fieldbyname('TopicCode').AsLargeInt;
    Open;
  end;

end;

procedure TSpecialAccDetailOnTopicBook2F.DBGrid3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_AccCodeTopicCode);

end;

procedure TSpecialAccDetailOnTopicBook2F.actSearchDetailExecute(Sender: TObject);

var
  Results: array [0 .. 2] of string;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT DetailCode,DetailName_L1,DetailName_L2 FROM acc.Details';

  if searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, '·Ì”  Õ”«»Â«Ì  ÷Ì·Ì', Txt,
    ['ﬂœ', '⁄‰Ê«‰', 'caption'], Results, [50, 100, 100], alLeft) then
    qry_Details.Locate('DetailCode', Results[0], []);

end;

procedure TSpecialAccDetailOnTopicBook2F.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSpecialAccDetailOnTopicBook2F.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Requery;
end;

procedure TSpecialAccDetailOnTopicBook2F.mnuPrint1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    qry_Details.DisableControls;
    // qry_AccCode.AfterScroll := qry_AccCodeAfterScrollPrint;
    if (Sender as TMenuItem).Tag = 0 then
    begin
      qry_Doc.Sort := 'TopicCode';
      InitReportFile(ppReport1,
        'SpecialAccDetailOnTopicBook2' { 'Rpt_AccDetail' } , DBGrid1,
        ppDBPipeline1);
    end
    else
    begin
      qry_Doc.Sort := 'DocDate';
      InitReportFile(ppReport1,
        'SpecialAccDetailOnTopicBook2WithoutGroup' { 'Rpt_AccDetail' } , DBGrid1,
        ppDBPipeline1);
    end;
  finally
    // qry_AccCode.AfterScroll := qry_AccCodeAfterScroll;
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
    qry_Details.EnableControls;
  end;
end;

procedure TSpecialAccDetailOnTopicBook2F.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
