unit Rpt_AccBook_Arzi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch,
  ppSubRpt, Menus, DB, ADODB, Mask, ppTypes,
  SumDBGrid, ppParameter, Math, ppModule, raCodMod, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TRpt_AccBook_ArziF = class(Ttemplate2MDIF)
    qry_Doc: TADOQuery;
    qry_Companies: TADOQuery;
    qry_AccCode: TADOQuery;
    src_Companies: TDataSource;
    qry_CompaniesCompanyCode: TIntegerField;
    qry_CompaniesCompanyName: TStringField;
    src_Doc: TDataSource;
    src_AccCode: TDataSource;
    PnlCompany: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    qry_DocCompanyCode: TIntegerField;
    qry_DocSecondaryDocNo: TIntegerField;
    qry_DocPrimaryDocNo: TIntegerField;
    qry_DocDocDate: TStringField;
    qry_DocComment: TStringField;
    qry_DocDebt: TFMTBCDField;
    qry_DocCredit: TFMTBCDField;
    qry_DocAidDocdate: TStringField;
    qry_Docbalance: TBCDField;
    qry_Init: TADOQuery;
    actFilter: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn8: TBitBtn;
    qry_DoccalcuBalance: TBCDField;
    actSendExcel: TAction;
    actSort: TAction;
    qry_AccCodeAccCode: TLargeintField;
    qry_AccCodeMoeenName: TStringField;
    qry_DocBudgetTopicID: TIntegerField;
    qry_DocProjectID: TIntegerField;
    BitBtn3: TBitBtn;
    qry_Docserial: TIntegerField;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    qry_AccCodeAidInfoType: TWordField;
    actPrint: TAction;
    actShowForm: TAction;
    qry_CompaniesCompanyName_L2: TStringField;
    qry_AccCodeMoeenName_L2: TStringField;
    qry_DocComment_L2: TStringField;
    qry_DocAidAmount: TFloatField;
    qry_DocStatus: TIntegerField;
    DBNavigator1: TDBNavigator;
    pop4Print: TPopupMenu;
    pop_1: TMenuItem;
    pop_2: TMenuItem;
    pop_3: TMenuItem;
    pop_4: TMenuItem;
    pop_6: TMenuItem;
    pop_7: TMenuItem;
    pop_5: TMenuItem;
    pop_8: TMenuItem;
    pop2: TMenuItem;
    N11: TMenuItem;
    ppReport1: TppReport;
    qry_Docbed: TBCDField;
    qry_Docbes: TBCDField;
    qry_Docamount: TFloatField;
    qry_AccCodeKindInsertBudgetCode: TIntegerField;
    actOther: TAction;
    BitBtn7: TBitBtn;
    qry_Docid: TIntegerField;
    N1: TMenuItem;
    SumGrid1: TSumGrid;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    actFilterForm: TAction;
    actFilterForm1: TMenuItem;
    qry_DocYearID: TIntegerField;
    qry_Docbedbes: TIntegerField;
    qry_DocSortID: TIntegerField;
    lblNote: TLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblPrintDate: TppLabel;
    ppLabel1: TppLabel;
    ppLblRptName: TppLabel;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSysVarPageNo: TppSystemVariable;
    ppLblDate: TppLabel;
    ppLblSeconNo_DocNo: TppLabel;
    ppLabel11: TppLabel;
    ppLine8: TppLine;
    ppDetailBand2: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLine13: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine11: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBText1: TppDBText;
    raCodeModule1: TraCodeModule;
    ppFooterBand2: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    qry_Doc_row: TFMTBCDField;
    qry_DocAidDocNo: TFMTBCDField;
    qry_DocAccCode: TLargeintField;
    qry_DocArzCredit: TFloatField;
    qry_DocArzDebt: TFloatField;
    qry_DocArzBalance: TFloatField;
    qry_DocDocNote_L1: TStringField;
    qry_DocDocNote_L2: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblRptNameGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure NSecondaryClick(Sender: TObject);
    procedure NwithouttSecondaryClick(Sender: TObject);
    procedure NSecondary_landClick(Sender: TObject);
    procedure NwithouttSecondary_landClick(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure ppLblSeconNo_DocNoGetText(Sender: TObject; var Text: String);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_CompaniesAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure pop_3Click(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure pop_1Click(Sender: TObject);
    procedure pop_2Click(Sender: TObject);
    procedure pop_4Click(Sender: TObject);
    procedure pop_6Click(Sender: TObject);
    procedure pop_7Click(Sender: TObject);
    procedure pop_5Click(Sender: TObject);
    procedure pop_8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure pop2Click(Sender: TObject);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure actOtherExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure qry_DocAfterOpen(DataSet: TDataSet);
    procedure ppDBCalcnum2alphabetGetText(Sender: TObject; var Text: string);

  private
    // Status1, Status2: integer;
    formtype: byte;
    ShowFilter: boolean;
    procedure Updateremain;
    procedure UpdateFilter;
    procedure InitForm;
    procedure setVisibleColumns;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rpt_AccBook_ArziF: TRpt_AccBook_ArziF;
  cloned: TADOQuery;

implementation

uses Dm, GlobalPro, FilterClass_ADO, filter_ADO,
  search2, sort2, Document,
  searchCode_L1_L2, DBGrid2Print, Resource, FormFunctions;
{$R *.dfm}

procedure TRpt_AccBook_ArziF.InitForm;
begin
  with qry_Init do
  Begin
    Active := False;
    Parameters.ParamByName('FormType').Value := formtype;
    Active := True;
    Rpt_AccBook_ArziF.Caption := 'دفتر حساب ' + qry_Init.fieldByName
      ('levelCaption_L1').AsString + ' ارزی';
  end; // with
  PnlCompany.Visible := gv_MultiCompany and opta.ActivePartCompany;
  lblNote.Visible := formtype = 2

  // ag:=true;

end;

procedure TRpt_AccBook_ArziF.UpdateFilter;
// var
// ts: TStringList;
// i: integer;
// s: string;
// param1,param2:integer;
begin
  // s := GetcTo(myParams.ParamValues['checked'], ftString);
  // ts := TStringList.Create;
  // try
  // ts.Text := StringReplace(s, ',', #13, [rfReplaceAll]);
  /// /    Status1 := -1;
  /// /    Status2 := -1;
  // for i := 0 to ts.Count - 1 do
  // begin
  // if i = 0 then
  // Status1 := StrToInt(ts[0]) - 1;
  // if i = 1 then
  // Status2 := StrToInt(ts[1]) - 1;
  // end; // fot
  // finally
  // ts.Free;
  // end; // try
  with qry_Doc do
  begin
    Active := False;
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
    Parameters.ParamByName('AccCodeLen').Value :=
      qry_Init.fieldByName('CodeLength').AsInteger;
    Parameters.ParamByName('DocTypeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DocTypeCode'], ftString);
    Parameters.ParamByName('DocTypeCodeTo').Value := -1;
    // GetcTo(myParams.ParamValues['DocTypeCode'], ftInteger);
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);;
    // Parameters.ParamByName('Status2').Value := -1;
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
    Active := False;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);
    Active := True;
  end; // with
  with qry_AccCode do
  begin
    Active := False;
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('FormType').Value := formtype;
    Active := True;
  end; // with

end;

procedure TRpt_AccBook_ArziF.FormCreate(Sender: TObject);
begin
  inherited;
  if ActiveSortTitle then
    DBGrid1.Tag := 0;
  cloned := TADOQuery.Create(Self);
  formtype := var_glb_gParam;
  ShowFilter := var_glb_Boolean;
  InitForm;
end;

procedure TRpt_AccBook_ArziF.Updateremain;
var
  c, bes, bed: Currency;
  amount: integer;
begin
  with qry_Doc do
    try
      First;
      DisableControls;
      c := 0;
      bed := 0;
      bes := 0;
      amount := 0;
      while not eof do
      begin
        amount := amount + fieldByName('AidAmount').AsInteger;
        c := c + fieldByName('Balance').AsCurrency;
        bed := bed + fieldByName('Debt').AsCurrency;
        bes := bes + fieldByName('Credit').AsCurrency;
        edit;
        fieldByName('_row').AsInteger := RecNo;
        fieldByName('Amount').AsInteger := amount;
        fieldByName('calcuBalance').AsCurrency := c;
        fieldByName('bed').AsCurrency := bed;
        fieldByName('bes').AsCurrency := bes;
        post;
        Next;
      end; //
    finally
      First;
      EnableControls;
    end; // try

end;

procedure TRpt_AccBook_ArziF.actFilterExecute(Sender: TObject);
var
  aCode: string;
  tmpDefault: TcDefaultValues;
begin
  inherited;
  if (Sender as TAction).Tag = 1 then
  begin
    tmpDefault := dvDefaults;
    aCode := qry_AccCodeAccCode.AsString;
  end
  else
    tmpDefault := dvMinMax;

  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'checked', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpStatus);

      AddItem(DMF.adcAccounting, 'DocTypeCode', 'انواع سند حسابداري', '',
        ftUnknown, dvDefaults, 'true', '', ciCheck, strLookUpDocType);


      // AddItem(DMF.adcAccounting, 'DocTypeCode', 'انواع سند حسابداري',
      // 'نوع سند', ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes ',
      // 'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM acc.DocTypes');

      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, tmpDefault, '0000/00/00', '9999/99/99', ciSimple, '',
        Format(strMaxMinDocDate, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, tmpDefault, '0', '2147483647', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, tmpDefault, aCode, aCode, ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories '
        + ' where acc.Categories.LevelID = ' + IntToStr(formtype),
        ' SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories '
        + ' where acc.Categories.LevelID = ' + IntToStr(formtype));

      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT Min(0),Max(999) FROM acc.Companies');

      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM Util.maliYear');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if

    finally
      Free;
    end; // try

end;

procedure TRpt_AccBook_ArziF.qry_AccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  setVisibleColumns;
  with qry_Doc do
  begin
    Close;
    // companycode set shavad
    Parameters.ParamByName('AccCode').Value := DataSet.fieldByName('AccCode')
      .AsLargeInt;
    Open;
  end; // with

end;

procedure TRpt_AccBook_ArziF.FormDestroy(Sender: TObject);
begin
  inherited;
  cloned.Free;
  SaveColWidth(DBGrid1);
end;

procedure TRpt_AccBook_ArziF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, True);

end;

procedure TRpt_AccBook_ArziF.BitBtn1Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT CompanyCode,CompanyName_l1,CompanyName_l2 FROM acc.Companies '
    + ' where CompanyCode between ' +
    GetcFrom(myParams.ParamValues['CompanyCode'], ftString) + ' and ' +
    GetcTo(myParams.ParamValues['CompanyCode'], ftString);

  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'شركتها', Txt,
    ['کد', 'نام ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    qry_Companies.Locate('CompanyCode', Results[0], []);
  end; // if
end;

procedure TRpt_AccBook_ArziF.BitBtn2Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT TopicCode,MoeenName_l1,MoeenName_l2 FROM acc.Categories ' +
    ' WHERE LevelID=' + IntToStr(formtype);
  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'حسابها', Txt,
    ['کد', 'عنوان معین ', 'caption'], Results, [40, 200, 200], alLeft);
  if s then
  begin
    qry_AccCode.Locate('AccCode', Results[0], []);
  end; // if
end;

procedure TRpt_AccBook_ArziF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TRpt_AccBook_ArziF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRpt_AccBook_ArziF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
  Updateremain
end;

procedure TRpt_AccBook_ArziF.ppLblRptNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblCaption.Caption;
end;

procedure TRpt_AccBook_ArziF.actPrintExecute(Sender: TObject);
begin
  inherited;
  pop_2.Visible := DBGrid1.Columns[5].Visible;
  pop_4.Visible := DBGrid1.Columns[5].Visible;
  pop_6.Visible := DBGrid1.Columns[5].Visible;
  pop_8.Visible := DBGrid1.Columns[5].Visible;
  pop_1.Visible := DBGrid1.Columns[8].Visible;
  pop_3.Visible := DBGrid1.Columns[8].Visible;
  pop_5.Visible := DBGrid1.Columns[8].Visible;
  pop_7.Visible := DBGrid1.Columns[8].Visible;

  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt_AccBook_ArziF.NSecondaryClick(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccBook', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
  end;
end;

procedure TRpt_AccBook_ArziF.NwithouttSecondaryClick(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccBookNoSecendery', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
  end;
end;

procedure TRpt_AccBook_ArziF.NSecondary_landClick(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccBookLand', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
  end;
end;

procedure TRpt_AccBook_ArziF.NwithouttSecondary_landClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'Rpt_AccBookLand_NoSecendery', DBGrid1,
    ppDBPipeline1);

end;

procedure TRpt_AccBook_ArziF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRpt_AccBook_ArziF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRpt_AccBook_ArziF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRpt_AccBook_ArziF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از تاريخ ' + ParamByName('DocDateFrom').Value + ' تا ' +
      ParamByName('DocDateTo').Value;
end;

procedure TRpt_AccBook_ArziF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    Text := 'از شماره موقت ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + ' تا ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);
end;

procedure TRpt_AccBook_ArziF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_Docserial.AsInteger, qry_DocYearID.AsInteger,
    qry_DocCompanyCode.AsInteger);
  DocumentF.qry_Documents.Locate('id', qry_Doc.fieldByName('id').AsInteger, []);
end;

procedure TRpt_AccBook_ArziF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if qry_Doc.RecordCount <> 0 then
    actShowForm.Execute
end;

procedure TRpt_AccBook_ArziF.FormShow(Sender: TObject);
begin
  inherited;
  if ShowFilter then
  begin
    myParams.Clear;
    actFilter.Execute;
    if myParams.FindParam('DocDate') = nil then
      Close;
  end; // .if

end;

procedure TRpt_AccBook_ArziF.qry_CompaniesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_Doc do
  begin
    Close;
    if opta.ActivePartCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        DataSet.fieldByName('CompanyCode').AsInteger;
      Parameters.ParamByName('CompanyCodeTo').Value :=
        DataSet.fieldByName('CompanyCode').AsInteger;
    end
    else
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        qry_Companies.Parameters.ParamByName('CompanyCodeFrom').Value;;
      Parameters.ParamByName('CompanyCodeTo').Value :=
        qry_Companies.Parameters.ParamByName('CompanyCodeTo').Value;
    end;
    SetCompanyFilterinLogin(Parameters);
    Active := gv_MultiCompany;
  end; // with

end;

procedure TRpt_AccBook_ArziF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.fieldByName('SecondaryDocNo'));
end;

procedure TRpt_AccBook_ArziF.pop_3Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_secondery_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_AccBook_ArziF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'دفتر حساب ' + qry_Init.fieldByName('levelCaption_L1').AsString
end;

procedure TRpt_AccBook_ArziF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRpt_AccBook_ArziF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRpt_AccBook_ArziF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRpt_AccBook_ArziF.pop_1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_budject', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_AccBook_ArziF.pop_2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_Aid', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_AccBook_ArziF.pop_4Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_secondery_Aid', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_AccBook_ArziF.pop_6Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_lan_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_AccBook_ArziF.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_lan_Aid', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_AccBook_ArziF.pop_5Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_secondery_lan_budject', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_AccBook_ArziF.pop_8Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_secondery_lan_Aid', DBGrid1,
      ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_AccBook_ArziF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qry_Companies.DisableControls;
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
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

    InitReportFile(ppReport1, 'Rpt_Accbook_Arzi', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
  end; // try
end;

procedure TRpt_AccBook_ArziF.pop2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbookland_Arzi', DBGrid1, ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TRpt_AccBook_ArziF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره سند ' +
    IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value) + ' تا '
    + IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TRpt_AccBook_ArziF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt_AccBook_ArziF.setVisibleColumns;

begin
  inherited;
  with DMF.qry_Temp do
  begin
    Close;
    SQL.Text :=
      'SELECT InfoID FROM Acc.FormsInfo WHERE (FormType = 3) and FormInfoID=' +
      IntToStr(qry_AccCode.fieldByName('AidInfoType').AsInteger);
    Open;
    setColumns(DBGrid1, '#05#06#07', Fields[0].AsInteger <> 0);

    Close;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 12) and FormInfoID=' +
      qry_AccCode.fieldByName('KindInsertBudgetCode').AsInteger.ToString;
    Open;
    setColumns(DBGrid1, '#08#09', Fields[0].AsInteger <> 0);
    Close;
  end; // with
end;

procedure TRpt_AccBook_ArziF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);
end;

procedure TRpt_AccBook_ArziF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);

end;

procedure TRpt_AccBook_ArziF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Close;
  qry_Doc.Open;

end;

procedure TRpt_AccBook_ArziF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Updateremain;
end;

procedure TRpt_AccBook_ArziF.ppDBCalcnum2alphabetGetText(Sender: TObject;
  var Text: string);
var
  c: Currency;
begin
  inherited;
  if TryStrToCurr(Text, c) then
  begin
    c := RoundTo(c, 0);
    Text := num2alphabet(StrToInt64(CurrToStr(c)));
  end;
end;

end.
