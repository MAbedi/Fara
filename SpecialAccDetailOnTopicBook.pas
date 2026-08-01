unit SpecialAccDetailOnTopicBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppDB,
  ppDBPipe, ppBands, ppClass, ppModule, raCodMod, ppCtrls,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, AccFunctions, Filter_ADO_Const;

type
  TSpecialAccDetailOnTopicBookF = class(Ttemplate2MDIF)
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
    SumGrid1: TSumGrid;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid3: TDBGrid;
    qry_AccCodeTopicCode: TLargeintField;
    qry_AccCodeMoeenName_L1: TStringField;
    qry_Details: TADOQuery;
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
    ppDBPipeline3: TppDBPipeline;
    phdrbnd1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblPrintDate: TppLabel;
    ppLblRptName: TppLabel;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppSysVarPageNo: TppSystemVariable;
    ppLblDate: TppLabel;
    ppLblSeconNo_DocNo: TppLabel;
    ppLabel11: TppLabel;
    ppLine8: TppLine;
    ppLabel3: TppLabel;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    ppLine9: TppLine;
    pdtlbnd1: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine25: TppLine;
    ppLine10: TppLine;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppDBText3: TppDBText;
    ppDBText1: TppDBText;
    ppLine14: TppLine;
    ppLine2: TppLine;
    ppLine15: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLine13: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine11: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabelAccName: TppLabel;
    strngfld_Doc_TopicName: TStringField;
    qry_DetailsDetailCode: TIntegerField;
    qry_DetailsDetailName_L1: TStringField;
    qry_DocCurrencyType: TIntegerField;
    qry_DocCurrenciesName: TStringField;
    qry_DocCurrencyDebt: TFMTBCDField;
    qry_DocCurrencyCredit: TFMTBCDField;
    qry_DocCurrencyBalance: TFMTBCDField;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure qry_AccCodeAfterScrollPrint(DataSet: TDataSet);
    procedure qry_CompaniesAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure ppLabelAccNameGetText(Sender: TObject; var Text: string);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
    GroupTypes: string;
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
  SpecialAccDetailOnTopicBookF: TSpecialAccDetailOnTopicBookF;

implementation

uses Dm, GlobalPro, FilterClass_ADO, filter_ADO, search2, sort2,
  searchCode_L1_L2, DBGrid2Print, Resource, FaraConsts, mdiMain;
{$R *.dfm}

procedure TSpecialAccDetailOnTopicBookF.UpdateFilter;
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
    if opta.gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end; // if
    Active := True;
  end; // with
end;


// function TSpecialAccDetailOnTopicBookF.CalcSumFileds(FiledName: String): Currency;
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

//procedure TSpecialAccDetailOnTopicBookF.Updateremain;
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

procedure TSpecialAccDetailOnTopicBookF.FormCreate(Sender: TObject);
begin
  inherited;
  case mdiMainF.MainFrame.GetActiveIndex of
    5:
      GroupTypes := '4';
    4:
      GroupTypes := '10';
    1:
      GroupTypes := '0';
    6:
      GroupTypes := '12,13,14';
    0:
      GroupTypes := '1,2,17';
    2, 13:
      GroupTypes := '4,10';

  else
    GroupTypes := '0';
  end;

  With qry_Details do
  begin
    Active := false;
    SQL.Text := 'SELECT Customers.CustID AS DetailCode';
    SQL.Add(', Customers.CustName AS DetailName_L1');
    SQL.Add('FROM Customers INNER JOIN');
    SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
    SQL.Add('WHERE (CustomersGroup.GroupType IN ( ' + GroupTypes + ' ))');
    SQL.Add('AND (Customers.CustID BETWEEN :DetailFrom AND :DetailTo )');
  end;

  cloned := TADOQuery.Create(Self);
  showFilter := var_glb_Boolean;
  grpCompany.Visible := opta.gv_MultiCompany;
//  AddPrintArzi(pop4Print,SpecialAccDetailOnTopicBookF);
end;

procedure TSpecialAccDetailOnTopicBookF.actFilterExecute(Sender: TObject);
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
      if opta.gv_MultiCompany then
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

procedure TSpecialAccDetailOnTopicBookF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDate') = nil then
    close;

end;

procedure TSpecialAccDetailOnTopicBookF.qry_AccCodeAfterScroll
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

procedure TSpecialAccDetailOnTopicBookF.qry_AccCodeAfterScrollPrint
  (DataSet: TDataSet);
begin
  actShowAllAccount.Execute;
end;

procedure TSpecialAccDetailOnTopicBookF.qry_CompaniesAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qry_Details do
  begin
    close;
    // Parameters.ParamByName('Company').Value :=
    // DataSet.fieldbyname('CompanyCode').AsInteger;
    Open;
  end;

end;

procedure TSpecialAccDetailOnTopicBookF.FormDestroy(Sender: TObject);
begin
  inherited;
  cloned.Free;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid3);

end;

procedure TSpecialAccDetailOnTopicBookF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, True);
  SetColSize(DBGrid2, 1, True);
  SetColSize(DBGrid3, 1, True);

end;

procedure TSpecialAccDetailOnTopicBookF.BitBtn1Click(Sender: TObject);
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

procedure TSpecialAccDetailOnTopicBookF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  // if not(gdSelected in State) then begin
  // if odd(DBGrid1.DataSource.DataSet.RecNo) then
  // DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  // end;//if
  // DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TSpecialAccDetailOnTopicBookF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TSpecialAccDetailOnTopicBookF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSpecialAccDetailOnTopicBookF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TSpecialAccDetailOnTopicBookF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TSpecialAccDetailOnTopicBookF.actPrintExecute(Sender: TObject);
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
  pop_1.Visible := false;
  Pop_2.Visible := false;
  pop_3.Visible := false;
  Pop_4.Visible := false;
  pop_5.Visible := false;
  pop_6.Visible := false;
  pop_7.Visible := false;
  pop_8.Visible := false;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TSpecialAccDetailOnTopicBookF.qry_AccCodeaccCodeGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Trim(Sender.AsString)
end;

procedure TSpecialAccDetailOnTopicBookF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.fieldbyname('SecondaryDocNo'));
end;

procedure TSpecialAccDetailOnTopicBookF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSpecialAccDetailOnTopicBookF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSpecialAccDetailOnTopicBookF.ppLabelAccNameGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := ' ' + qry_AccCodeMoeenName_L1.AsString + ' - ' +
    qry_DetailsDetailName_L1.AsString;
end;

procedure TSpecialAccDetailOnTopicBookF.ppSystemVariable1GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSpecialAccDetailOnTopicBookF.N2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    qry_Details.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetailland', True);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Details.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBookF.N5Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    qry_Details.DisableControls;
    // qry_AccCode.AfterScroll := qry_AccCodeAfterScrollPrint;
    InitReportFile(ppReport1, 'Rpt_AccDetail_AllCurrency', True);
  finally
    // qry_AccCode.AfterScroll := qry_AccCodeAfterScroll;
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
    qry_Details.EnableControls;
  end;
end;

procedure TSpecialAccDetailOnTopicBookF.N6Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    qry_Details.DisableControls;
    // qry_AccCode.AfterScroll := qry_AccCodeAfterScrollPrint;
    InitReportFile(ppReport1, 'Rpt_AccDetail_Currency', True);
  finally
    // qry_AccCode.AfterScroll := qry_AccCodeAfterScroll;
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
    qry_Details.EnableControls;
  end;
end;

procedure TSpecialAccDetailOnTopicBookF.Pop_2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_AccCode.DisableControls;
    qry_Doc.DisableControls;

    InitReportFile(ppReport1, 'Rpt_AccDetail_Aid', True);
  finally
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBookF.pop_3Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_secondery_budject', True);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBookF.Pop_4Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_secondery_Aid', True);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBookF.pop_5Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_lan_budject', True);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBookF.pop_6Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_lan_Aid', True);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBookF.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_secondery_budject', True);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBookF.pop_8Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_secondery_lan_Aid', True);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TSpecialAccDetailOnTopicBookF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSpecialAccDetailOnTopicBookF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    qry_Details.DisableControls;
    // qry_AccCode.AfterScroll := qry_AccCodeAfterScrollPrint;
    InitReportFile(ppReport1, 'Rpt_AccDetail', True);
  finally
    // qry_AccCode.AfterScroll := qry_AccCodeAfterScroll;
    qry_Doc.EnableControls;
    qry_Companies.EnableControls;
    qry_AccCode.EnableControls;
    qry_Details.EnableControls;
  end; // try
end;

procedure TSpecialAccDetailOnTopicBookF.pop_1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccDetail_budject', True);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TSpecialAccDetailOnTopicBookF.DBGrid1KeyUp(Sender: TObject;
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

procedure TSpecialAccDetailOnTopicBookF.ppLblSeconNo_DocNoGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := '«“ ‘„«—Â „Êﬁ  ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + '  « ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);

end;

procedure TSpecialAccDetailOnTopicBookF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := '«“  «—ÌŒ ' + ParamByName('DocDateFrom').Value + '  « ' +
      ParamByName('DocDateTo').Value;
end;

procedure TSpecialAccDetailOnTopicBookF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ”‰œ ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + '  « '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TSpecialAccDetailOnTopicBookF.setVisibleColumns;
var
  id: Integer;
  b: Boolean;
begin
  inherited;
  with DMF.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 3) and FormInfoID=' +
      qry_AccCode.fieldbyname('AidInfoType').AsString;
    Active := True;
    id := Fields[0].AsInteger;
    // setColumns(DBGrid1, '#04#05#06', id <> 0);
    b := id <> 0;
    setColumns2(DBGrid1, b, 'AidDocNo');
    setColumns2(DBGrid1, b, 'AidAmount');
    setColumns2(DBGrid1, b, 'AidDocdate');
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 12) and FormInfoID=' +
      qry_AccCode.fieldbyname('KindInsertBudgetCode').AsString;
    Active := True;
    id := Fields[0].AsInteger;
    // setColumns(DBGrid1, '#07#08', id <> 0);
    b := id <> 0;
    setColumns2(DBGrid1, b, 'BudgetTopicID');
    setColumns2(DBGrid1, b, 'ProjectID');
  end; // with
end;

procedure TSpecialAccDetailOnTopicBookF.qry_DetailsAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qry_AccCode do
  begin
    close;
    Parameters.ParamByName('Detail').Value :=
      qry_Details.fieldbyname('DetailCode').AsInteger;
    Parameters.ParamByName('Companycode').Value :=
      qry_Companies.fieldbyname('CompanyCode').AsInteger;
    Open;
  end;
end;

procedure TSpecialAccDetailOnTopicBookF.actShowAllAccountExecute
  (Sender: TObject);
begin
  inherited;
  with qry_Doc do
  begin
    close;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_Companies.fieldbyname('CompanyCode').AsInteger;
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

procedure TSpecialAccDetailOnTopicBookF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
//  Updateremain;
  DBGridCurrencyKind(DBGrid1, myParams,qry_Doc)
end;

procedure TSpecialAccDetailOnTopicBookF.actShowAccountExecute(Sender: TObject);
begin
  inherited;
  with qry_Doc do
  begin
    close;
    Parameters.ParamByName('CompanyCode').Value :=
      qry_Companies.fieldbyname('CompanyCode').AsInteger;
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

procedure TSpecialAccDetailOnTopicBookF.DBGrid3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_AccCodeTopicCode);
end;

procedure TSpecialAccDetailOnTopicBookF.actSearchDetailExecute(Sender: TObject);

var
  Results: array [0 .. 2] of string;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT Customers.CustID, Customers.CustName AS DetailName_L1 ' +
    ' FROM Customers INNER JOIN ' +
    ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
    + ' WHERE (CustomersGroup.GroupType IN (' + GroupTypes + '))';
  if searchCode_L1_L2F.SearchCode2(theMainConnection, '·Ì”  Õ”«»Â«Ì  ÷Ì·Ì', Txt,
    ['ﬂœ', '⁄‰Ê«‰'], Results, [50, 100, 100], alLeft) then
    qry_Details.Locate('DetailCode', Results[0], []);

end;

procedure TSpecialAccDetailOnTopicBookF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSpecialAccDetailOnTopicBookF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Requery;
end;

procedure TSpecialAccDetailOnTopicBookF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
