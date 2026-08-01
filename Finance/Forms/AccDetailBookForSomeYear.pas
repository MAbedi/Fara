unit AccDetailBookForSomeYear;

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
  TAccDetailBookForSomeYearF = class(Ttemplate2MDIF)
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
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn8: TBitBtn;
    qry_AccCodeCompanyCode: TIntegerField;
    qry_AccCodeTopicCode: TLargeintField;
    qry_AccCodeDetailCode: TIntegerField;
    qry_AccCodeaccCode: TStringField;
    qry_AccCodeAccName: TStringField;
    actShowForm: TAction;
    qry_AccCodeAidInfoType: TWordField;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    qry_CompaniesCompanyName_L2: TStringField;
    ppDBPipeline1: TppDBPipeline;
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit5: TDBEdit;
    BitBtn3: TBitBtn;
    grpCompany: TGroupBox;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBNavigator2: TDBNavigator;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    pop4Print: TPopupMenu;
    pop_1: TMenuItem;
    Pop_2: TMenuItem;
    pop_3: TMenuItem;
    Pop_4: TMenuItem;
    pop_5: TMenuItem;
    pop_6: TMenuItem;
    pop_7: TMenuItem;
    pop_8: TMenuItem;
    qry_AccCodeAccName_L2: TStringField;
    N1: TMenuItem;
    N2: TMenuItem;
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
    raCodeModule1: TraCodeModule;
    qry_AccCodeKindInsertBudgetCode: TIntegerField;
    qry_DocSerial: TIntegerField;
    qry_DocID: TIntegerField;
    qry_DocCompanyCode: TIntegerField;
    qry_DocAccCode: TLargeintField;
    qry_DocDetailCode: TIntegerField;
    qry_DocSecondaryDocNo: TIntegerField;
    qry_DocPrimaryDocNo: TIntegerField;
    qry_DocDocDate: TStringField;
    qry_DocComment_L1: TStringField;
    qry_DocBudgetTopicID: TIntegerField;
    qry_DocProjectID: TIntegerField;
    qry_DocAidDocdate: TStringField;
    qry_DocAidAmount: TFloatField;
    qry_DocCredit: TFMTBCDField;
    qry_Docbalance: TBCDField;
    qry_DoccalcuBalance: TBCDField;
    qry_DocBedBes: TStringField;
    qry_DocStatus: TWordField;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    BitBtn9: TBitBtn;
    actOther: TAction;
    SumGrid1: TSumGrid;
    qry_DocAidDocNo: TFMTBCDField;
    qry_DocCurrencyType: TIntegerField;
    qry_DocCurrenciesName: TStringField;
    qry_DocCurrencyDebit: TFMTBCDField;
    qry_DocCurrencyCredit: TFMTBCDField;
    qry_DocCurrencyBalance: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_CompaniesAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
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
    procedure ppLblSeconNo_DocNoGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure _actSearchExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure qry_DocAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    // param1,param2:integer;
    // sumDebit:currency;
    // sumCredit:currency;
    // sumAmount:currency;
    showFilter: Boolean;
    cloned: TADOQuery;
    flag: Boolean;
    // procedure chooseColumnDown;
    // procedure chooseColumnUp;
    procedure Updateremain;
    procedure UpdateFilter;
    // function CalcSumFileds(FiledName: String): Currency;
    procedure setVisibleColumns;
  public
    { Public declarations }
  end;

var
  AccDetailBookForSomeYearF: TAccDetailBookForSomeYearF;

implementation

uses Dm, GlobalPro, FilterClass_ADO, filter_ADO,
  Math, Document, search2, sort2, StrUtils, searchCode_L1_L2,
  DBGrid2Print, FormFunctions;

{$R *.dfm}

procedure TAccDetailBookForSomeYearF.UpdateFilter;
var
  s: string;
begin
  s := GetcFrom(myParams.ParamValues['checked'], ftString);
  with qry_AccCode do
  begin
    Active := false;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
  end; // with
  with qry_Doc do
  begin
    Active := false;
    // === make Sql
    with Dmf.qryGlbTmpTmp do
    Begin
      close;
      SQL.Text := 'SELECT BankName';
      SQL.Add('FROM Sections');
      SQL.Add('WHERE (Sid IN (' + s + '))');
      SQL.Add('ORDER BY MaliYear ');
      Open;
      qry_Doc.SQL.Text := ' SELECT   *  FROM ( ';
      qry_Doc.SQL.Add('SELECT *');
      qry_Doc.SQL.Add('FROM ' + Fieldbyname('BankName').AsString +
        '.acc.AccDetailBookForSomeYear(' +
        QuotedStr(GetcFrom(myParams.ParamValues['DocDate'], ftString)) + ' ,' +
        QuotedStr(GetcTo(myParams.ParamValues['DocDate'], ftString)) +
        ' ) AccDetailBookForSomeYear');
      Next;
      while not eof do
      begin
        qry_Doc.SQL.Add('UNION ALL ');
        qry_Doc.SQL.Add('SELECT *');
        qry_Doc.SQL.Add('FROM ' + Fieldbyname('BankName').AsString +
          '.acc.AccDetailBookForSomeYear(' +
          QuotedStr(GetcFrom(myParams.ParamValues['DocDate'], ftString)) + ' ,'
          + QuotedStr(GetcTo(myParams.ParamValues['DocDate'], ftString)) +
          ' ) AccDetailBookForSomeYear');
        Next;
      end; // while
      qry_Doc.SQL.Add
        (')qryDoc where CompanyCode=:CompanyCode and  AccCode=:TopicCode and DetailCode=:DetailCode');
      qry_Doc.SQL.Add
        ('Order By   DocDate , SecondaryDocNo, PrimaryDocNo, Serial')
    end; // with

    // ==== End of make sql

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

procedure TAccDetailBookForSomeYearF.Updateremain;
var
  c: Currency;
  // amount:integer;
begin
  with qry_Doc do
  begin
    try
      First;
      DisableControls;
      c := 0;

      while not eof do
      begin

        // amount:=amount+fieldbyname('AidAmount').AsInteger;
        c := c + Fieldbyname('Balance').AsCurrency;
        // bed:=bed + fieldbyname('Debit').AsCurrency;
        // bes:=bes + fieldbyname('Credit').AsCurrency;
        edit;
        Fieldbyname('calcuBalance').AsCurrency := c;
        post;
        Next;
      end; //
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TAccDetailBookForSomeYearF.FormCreate(Sender: TObject);
begin
  inherited;
  flag := True;
  cloned := TADOQuery.Create(Self);
  showFilter := var_glb_Boolean;
  grpCompany.Visible := gv_MultiCompany;
end;

procedure TAccDetailBookForSomeYearF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
 
        AddItemFilter(GetFilter, TFilterCurrencies);
        AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(Dmf.adcFaraSystem, 'checked', '«‰ Œ«» ”«·Â«Ì „«·Ì ', '',
        ftUnknown, dvDefaults, 'true', '', ciCheck,
        'SELECT  Sid, ''”«·''+ ltrim(STR(MaliYear))+ '' - ''+ CompanyName  AS Caption  FROM  Sections  WHERE  (SysID = 40)');
      AddItem(Dmf.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '',
        'SELECT ''0001/01/01'' , ''9999/99/99''  FROM acc.config');
      AddItem(Dmf.adcAccounting, 'DetailCode', '‰«„ Õ”«»  ›’Ì·Ì ', 'ﬂœ  ›’Ì·Ì',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode,DetailName_L1 FROM acc.Details WHERE (DetailCode<>0)',
        'SELECT Min(DetailCode),  Max(DetailCode)  FROM acc.Documents');
      AddItem(Dmf.adcAccounting, 'TopicCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
        ' SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '
        + ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '
        + ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');
      if gv_MultiCompany then
        AddItem(Dmf.adcAccounting, 'CompanyCode', 'ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ', '‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
                    'SELECT 0,999999999');
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

procedure TAccDetailBookForSomeYearF.FormShow(Sender: TObject);
begin
  inherited;
  if showFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DocDate') = nil then
      close;
  end;
end;

procedure TAccDetailBookForSomeYearF.qry_CompaniesAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qry_Doc do
  begin
    Active := false;
    SetArzParameters(qry_Doc,myParams);
    Parameters.ParamByName('CompanyCode').Value :=
      DataSet.Fieldbyname('CompanyCode').AsInteger;
  end; // with
  with qry_AccCode do
  begin
    Active := false;
    Parameters.ParamByName('CompanyCode').Value :=
      DataSet.Fieldbyname('CompanyCode').AsInteger;
    Active := True;
  end;

end;

procedure TAccDetailBookForSomeYearF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DBGridCurrencyKind(DBGrid1, MyParams,qry_Doc)
end;

procedure TAccDetailBookForSomeYearF.FormDestroy(Sender: TObject);
begin
  inherited;
  cloned.Free;
  SaveColWidth(DBGrid1);
end;

procedure TAccDetailBookForSomeYearF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, True);
end;

procedure TAccDetailBookForSomeYearF.BitBtn1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_L1,CompanyName_L2 FROM Companies ' +
    ' where CompanyCode between ' +
    GetcFrom(myParams.ParamValues['CompanyCode'], ftString) + ' and ' +
    GetcTo(myParams.ParamValues['CompanyCode'], ftString);
  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, '‘—ﬂ Â«', Txt,
    ['òœ', '‰«„ ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    qry_Companies.Locate('CompanyCode', Results[0], []);
  end; // if
end;

procedure TAccDetailBookForSomeYearF.BitBtn3Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  Sqltxt: String;
begin
  inherited;
  Sqltxt := 'SELECT acccode,AccName_L1,AccName_L2 FROM (SELECT LTRIM(RTRIM(STR(acc.Documents.DetailCode))) + '' - '' +RTRIM(LTRIM(STR(acc.Documents.TopicCode))) AS acccode ,'
    + ' acc.Categories.MoeenName_L1+ '' - '' +acc.Details.DetailName_L1  AS AccName_L1'
    + ' ,acc.Categories.MoeenName_L2+ '' - '' +acc.Details.DetailName_L2  AS AccName_L2'
    + ' FROM acc.Documents INNER JOIN acc.DocGroups ON acc.Documents.Serial = acc.DocGroups.Serial INNER JOIN '
    + ' acc.Details ON acc.Documents.DetailCode = acc.Details.DetailCode INNER JOIN '
    + ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode ' +
    ' where (acc.DocGroups.CompanyCode =' + qry_CompaniesCompanyCode.AsString +
    ') ' + ' group by acc.DocGroups.CompanyCode,acc.Documents.TopicCode, acc.Documents.DetailCode,'
    + ' acc.Categories.MoeenName_L1, acc.Details.DetailName_L1,acc.Categories.AidInfoType , acc.Categories.MoeenName_L2, acc.Details.DetailName_L2'
    + ' )func ';
  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'Õ”«»Â«', Sqltxt,
    ['òœ', '⁄‰Ê«‰ „⁄Ì‰ ', 'caption'], Results, [60, 200, 200], alLeft);
  if s then
    qry_AccCode.Locate('accCode', Results[0], []);

end;

procedure TAccDetailBookForSomeYearF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_Doc.Fieldbyname('serial').AsVariant,
    qry_Doc.Fieldbyname('YearId').AsInteger, qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_Doc.Fieldbyname('id').AsInteger, []);
end;

procedure TAccDetailBookForSomeYearF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TAccDetailBookForSomeYearF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAccDetailBookForSomeYearF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
end;

procedure TAccDetailBookForSomeYearF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if DBGrid1.Columns[4].Visible then
  begin
    Pop_2.Visible := True;
    Pop_4.Visible := True;
    pop_6.Visible := True;
    pop_8.Visible := True;
  end
  else
  begin
    Pop_2.Visible := false;
    Pop_4.Visible := false;
    pop_6.Visible := false;
    pop_8.Visible := false;
  end;
  if DBGrid1.Columns[7].Visible then
  begin
    pop_1.Visible := True;
    pop_3.Visible := True;
    pop_5.Visible := True;
    pop_7.Visible := True;
  end
  else
  begin
    pop_1.Visible := false;
    pop_3.Visible := false;
    pop_5.Visible := false;
    pop_7.Visible := false;
  end;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TAccDetailBookForSomeYearF.qry_AccCodeaccCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Trim(Sender.AsString)
end;

procedure TAccDetailBookForSomeYearF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.Fieldbyname('SecondaryDocNo'));
end;

procedure TAccDetailBookForSomeYearF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAccDetailBookForSomeYearF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TAccDetailBookForSomeYearF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TAccDetailBookForSomeYearF.N2Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.Pop_2Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.pop_3Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.Pop_4Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.pop_5Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.pop_6Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.pop_7Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.pop_8Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAccDetailBookForSomeYearF.N1Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.pop_1Click(Sender: TObject);
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

procedure TAccDetailBookForSomeYearF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    // Text:='«“ ‘„«—Â „Êﬁ  '+IntToStr(ParamByName('SecondaryDocNoFrom').Value)+'  « '+IntToStr(ParamByName('SecondaryDocNoTo').Value);

end;

procedure TAccDetailBookForSomeYearF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    // Text:='«“  «—ÌŒ '+ParamByName('DocDateFrom').Value+'  « '+ParamByName('DocDateTo').Value;
end;

procedure TAccDetailBookForSomeYearF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text:='«“ ‘„«—Â ”‰œ '+IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value)+
  // '  « '+IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TAccDetailBookForSomeYearF.setVisibleColumns;
var
  id: Integer;
begin
  inherited;
  with Dmf.qry_Temp do
  begin
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 3) and FormInfoID=' +
      qry_AccCode.Fieldbyname('AidInfoType').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#04#05#06', id <> 0);
    Active := false;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 12) and FormInfoID=' +
      qry_AccCode.Fieldbyname('KindInsertBudgetCode').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#07#08', id <> 0);
  end; // with
end;

procedure TAccDetailBookForSomeYearF.qry_AccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  setVisibleColumns;
  with qry_Doc do
  begin
    Active := false;
    Parameters.ParamByName('TopicCode').Value :=
      qry_AccCode.Fieldbyname('TopicCode').AsLargeInt;
    Parameters.ParamByName('DetailCode').Value :=
      qry_AccCode.Fieldbyname('DetailCode').AsInteger;
    Active := True;
  end; // with
  Updateremain;

end;

procedure TAccDetailBookForSomeYearF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);

end;

procedure TAccDetailBookForSomeYearF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TAccDetailBookForSomeYearF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Requery;
end;

procedure TAccDetailBookForSomeYearF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

end.
