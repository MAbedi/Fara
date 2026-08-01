unit AccBookForSomeYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch,
  ppModule, raCodMod, ppSubRpt, Menus, DB, ADODB, Mask, ppTypes, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions,AccFunctions,Filter_ADO_Const;

type
  TAccBookForSomeYearF = class(Ttemplate2MDIF)
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
    qry_Init: TADOQuery;
    actFilter: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn8: TBitBtn;
    actSendExcel: TAction;
    actSort: TAction;
    qry_AccCodeAccCode: TLargeintField;
    qry_AccCodeMoeenName: TStringField;
    BitBtn3: TBitBtn;
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
    qry_AccCodeKindInsertBudgetCode: TIntegerField;
    actSpecial: TAction;
    BitBtn7: TBitBtn;
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
    ppFooterBand2: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    N1: TMenuItem;
    qry_Docserial: TIntegerField;
    qry_Docid: TIntegerField;
    qry_DocCompanyCode: TIntegerField;
    qry_DocSecondaryDocNo: TIntegerField;
    qry_DocPrimaryDocNo: TIntegerField;
    qry_DocDocDate: TStringField;
    qry_DocComment_L1: TStringField;
    qry_DocComment_L2: TStringField;
    qry_DocCredit: TFMTBCDField;
    qry_Docbalance: TBCDField;
    qry_DoccalcuBalance: TBCDField;
    qry_DocAidAmount: TFloatField;
    qry_DocBudgetTopicID: TIntegerField;
    qry_DocProjectID: TIntegerField;
    qry_DocStatus: TIntegerField;
    qry_Docbedbes: TIntegerField;
    qry_DocAidDocdate: TStringField;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    BitBtn9: TBitBtn;
    actOther: TAction;
    qry_DocAidDocNo: TFMTBCDField;
    qry_DocAccCode: TFloatField;
    qry_DocDocNote_L1: TStringField;
    qry_DocDocNote_L2: TStringField;
    qry_DocCurrencyType: TIntegerField;
    qry_DocCurrenciesName: TStringField;
    qry_DocCurrencyDebit: TFMTBCDField;
    qry_DocCurrencyCredit: TFMTBCDField;
    qry_DocCurrencyBalance: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure actSpecialExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure qry_DocAfterOpen(DataSet: TDataSet);

  private
    sumDebit: currency;
    sumCredit: currency;
    sumAmount: currency;
    flag: boolean;
    // Status1,Status2:integer;
    formtype: byte;
    ShowFilter: boolean;
    // noAdd:boolean;
    procedure Updateremain;
    procedure chooseColumnDown;
    procedure chooseColumnUp;
    procedure UpdateFilter;
    procedure InitForm;

    procedure setVisibleColumns;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccBookForSomeYearF: TAccBookForSomeYearF;
  cloned: TADOQuery;

implementation

uses Dm, GlobalPro, FilterClass_ADO, filter_ADO,
  search2, sort2,
  searchCode_L1_L2, DBGrid2Print, Rpt_AccBook, FormFunctions;

{$R *.dfm}

procedure TAccBookForSomeYearF.InitForm;
begin
  with qry_Init do
  Begin
    Active := False;
    Parameters.ParamByName('FormType').Value := formtype;
    Active := True;
    Rpt_AccBookF.Caption := 'œ› — Õ”«» ' + qry_Init.fieldByName
      ('levelCaption_L1').AsString + ' œ— ç‰œ œÊ—Â „«·Ì';
  end; // with
  PnlCompany.Visible := gv_MultiCompany;
  flag := True;

end;

procedure TAccBookForSomeYearF.UpdateFilter;
var
  // ts:TStringList;
  s: string;
  // param1,param2:integer;
begin
  s := GetcFrom(myParams.ParamValues['checked'], ftString);
  // ts:=TStringList.Create;
  with qry_Doc do
  begin
    Active := False;

    // === make Sql
    with Dmf.qryGlbTmpTmp do
    Begin
      close;
      SQL.Text := 'SELECT BankName';
      SQL.Add('FROM Sections');
      SQL.Add('WHERE (Sid IN (' + s + '))');
      SQL.Add('ORDER BY MaliYear ');
      Open;
      qry_Doc.SQL.Text :=
        ' SELECT   qryDoc.*, Fitful.FitfulID AS calcuBalance FROM ( ';
      qry_Doc.SQL.Add(' SELECT * ');
      qry_Doc.SQL.Add(' FROM ' + fieldByName('BankName').AsString +
        '.acc.AccBookForSomeYear(' + qry_Init.fieldByName('CodeLength').AsString
        + ',' + QuotedStr(GetcFrom(myParams.ParamValues['DocDate'], ftString)) +
        ' ,' + QuotedStr(GetcTo(myParams.ParamValues['DocDate'], ftString)) +
        ') AccBookForSomeYear ');
      Next;
      while not eof do
      begin
        qry_Doc.SQL.Add('UNION ALL ');
        qry_Doc.SQL.Add('SELECT *');
        qry_Doc.SQL.Add(' FROM ' + fieldByName('BankName').AsString +
          '.acc.AccBookForSomeYear(' + qry_Init.fieldByName('CodeLength')
          .AsString + ',' + QuotedStr(GetcFrom(myParams.ParamValues['DocDate'],
          ftString)) + ' ,' + QuotedStr(GetcTo(myParams.ParamValues['DocDate'],
          ftString)) + ') AccBookForSomeYear ');
        Next;
      end; // while
      qry_Doc.SQL.Add
        (')qryDoc CROSS JOIN Fitful where CompanyCode=:CompanyCode and  AccCode=:AccCode ');
      qry_Doc.SQL.Add
        ('Order By   DocDate , SecondaryDocNo, PrimaryDocNo, Serial')
    end; // with

    // ==== End of make sql

  end; // with
  with qry_AccCode do
  begin
    Active := False;
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('FormType').Value := formtype;
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
end;

procedure TAccBookForSomeYearF.FormCreate(Sender: TObject);
begin
  inherited;
  cloned := TADOQuery.Create(Self);
  formtype := var_glb_gParam;
  ShowFilter := var_glb_Boolean;
  InitForm;
end;

// function TAccBookForSomeYearF.CalcSumFileds(FiledName: String): Currency;
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

procedure TAccBookForSomeYearF.Updateremain;
var
  c, bes, bed: currency;
  // amount:integer;
begin
  with qry_Doc do
  begin
    try
      First;
      DisableControls;
      c := 0;
      bed := 0;
      bes := 0;
      // amount:=0;

      while not eof do
      begin

        // amount := amount+fieldbyname('AidAmount').AsInteger;
        c := c + fieldByName('Balance').AsCurrency;
        bed := bed + fieldByName('Debit').AsCurrency;
        bes := bes + fieldByName('Credit').AsCurrency;
        edit;
        fieldByName('calcuBalance').AsCurrency := c;
        post;
        Next;
      end; //
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TAccBookForSomeYearF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
   
        AddItemFilter(GetFilter, TFilterCurrencies);
        AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(Dmf.adcFaraSystem, 'checked', '«‰ Œ«» ”«·Â«Ì „«·Ì ', '',
        ftUnknown, dvDefaults, 'true', '', ciCheck,
        'SELECT  Sid, ''”«·''+ ltrim(STR(MaliYear))+ '' - ''+ CompanyName  AS Caption  FROM  Sections  WHERE  (SysID =40)');
      AddItem(Dmf.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '',
        'SELECT ''0001/01/01'' , ''9999/99/99''  FROM acc.config');
      AddItem(Dmf.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftCurrency, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories '
        + ' where acc.Categories.LevelID = ' + IntToStr(formtype),
        ' SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories '
        + ' where acc.Categories.LevelID = ' + IntToStr(formtype));

      if gv_MultiCompany then
        AddItem(Dmf.adcAccounting, 'CompanyCode', 'ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ', '‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT Min(0),Max(999) FROM acc.Companies');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TAccBookForSomeYearF.qry_AccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  setVisibleColumns;
  with qry_Doc do
  begin
    Active := False;
    SetArzParameters(qry_Doc, myParams);
    Parameters.ParamByName('AccCode').Value :=
      qry_AccCode.fieldByName('AccCode').AsCurrency;
    Active := True;
  end; // with
  Updateremain;
end;

procedure TAccBookForSomeYearF.FormDestroy(Sender: TObject);
begin
  inherited;
  cloned.Free;
  SaveColWidth(DBGrid1);
end;

procedure TAccBookForSomeYearF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, True);

end;

procedure TAccBookForSomeYearF.BitBtn1Click(Sender: TObject);
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

  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, '‘—ﬂ Â«', Txt,
    ['òœ', '‰«„ ', 'caption'], Results, [30, 200, 200], alLeft);
  if s then
  begin
    qry_Companies.Locate('CompanyCode', Results[0], []);
  end; // if
end;

procedure TAccBookForSomeYearF.BitBtn2Click(Sender: TObject);
var
  s: boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT TopicCode,MoeenName_l1,MoeenName_l2 FROM acc.Categories ' +
    ' WHERE LevelID=' + IntToStr(formtype);
  s := searchCode_L1_L2F.SearchCode2(Dmf.adcAccounting, 'Õ”«»Â«', Txt,
    ['òœ', '⁄‰Ê«‰ „⁄Ì‰ ', 'caption'], Results, [40, 200, 200], alLeft);
  if s then
  begin
    qry_AccCode.Locate('AccCode', Results[0], []);
  end; // if
end;

procedure TAccBookForSomeYearF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAccBookForSomeYearF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Doc);
  Updateremain
end;

procedure TAccBookForSomeYearF.ppLblRptNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblCaption.Caption;
end;

procedure TAccBookForSomeYearF.actPrintExecute(Sender: TObject);
begin
  inherited;

  if DBGrid1.Columns[5].Visible then
  begin
    pop_2.Visible := True;
    pop_4.Visible := True;
    pop_6.Visible := True;
    pop_8.Visible := True;
  end
  else
  begin
    pop_2.Visible := False;
    pop_4.Visible := False;
    pop_6.Visible := False;
    pop_8.Visible := False;
  end;
  if DBGrid1.Columns[8].Visible then
  begin
    pop_1.Visible := True;
    pop_3.Visible := True;
    pop_5.Visible := True;
    pop_7.Visible := True;
  end
  else
  begin
    pop_1.Visible := False;
    pop_3.Visible := False;
    pop_5.Visible := False;
    pop_7.Visible := False;
  end;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TAccBookForSomeYearF.NSecondaryClick(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccBook', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
  end;
end;

procedure TAccBookForSomeYearF.NwithouttSecondaryClick(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccBookNoSecendery', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
  end;
end;

procedure TAccBookForSomeYearF.NSecondary_landClick(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    InitReportFile(ppReport1, 'Rpt_AccBookLand', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
  end;
end;

procedure TAccBookForSomeYearF.NwithouttSecondary_landClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'Rpt_AccBookLand_NoSecendery', DBGrid1,ppDBPipeline1);

end;

procedure TAccBookForSomeYearF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TAccBookForSomeYearF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TAccBookForSomeYearF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TAccBookForSomeYearF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    // Text:='«“  «—ÌŒ '+ParamByName('DocDateFrom').Value+'  « '+ParamByName('DocDateTo').Value;
end;

procedure TAccBookForSomeYearF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Doc.Parameters do
    // Text:='«“ ‘„«—Â „Êﬁ  '+IntToStr(ParamByName('SecondaryDocNoFrom').Value)+'  « '+IntToStr(ParamByName('SecondaryDocNoTo').Value);
end;

procedure TAccBookForSomeYearF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // DocumentF.FindDoc(qry_Doc.FieldByName('serial').AsVariant);
  // DocumentF.qry_Documents.Locate('id',qry_Doc.FieldByName('id').AsInteger,[]);
end;

procedure TAccBookForSomeYearF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TAccBookForSomeYearF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  // if not(gdSelected in State) then begin
  // if odd(DBGrid1.DataSource.DataSet.RecNo) then
  // DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  // end;//if
  // DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TAccBookForSomeYearF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if ShowFilter then
  begin
    actFilter.Execute;
    if myParams.FindParam('DocDate') = nil then
      close;
  end; // .if

end;

procedure TAccBookForSomeYearF.qry_CompaniesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_Doc do
  begin
    Active := False;
    Parameters.ParamByName('CompanyCode').Value :=
      DataSet.fieldByName('CompanyCode').AsInteger;
  end; // with
  with qry_AccCode do
  begin
    Active := False;
    Active := True;
  end;

  Updateremain;
end;

procedure TAccBookForSomeYearF.qry_DocAfterOpen(DataSet: TDataSet);
begin
  inherited;
 DBGridCurrencyKind(DBGrid1,myParams,qry_Doc)
end;

procedure TAccBookForSomeYearF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Doc.fieldByName('SecondaryDocNo'));
end;

procedure TAccBookForSomeYearF.pop_3Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_secondery_budject', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TAccBookForSomeYearF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'œ› — Õ”«» ' + qry_Init.fieldByName('levelCaption_L1').AsString
end;

procedure TAccBookForSomeYearF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAccBookForSomeYearF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TAccBookForSomeYearF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TAccBookForSomeYearF.pop_1Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_budject', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TAccBookForSomeYearF.pop_2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_Aid', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TAccBookForSomeYearF.pop_4Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_secondery_Aid', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TAccBookForSomeYearF.pop_6Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_lan_budject', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TAccBookForSomeYearF.pop_7Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_lan_Aid', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TAccBookForSomeYearF.pop_5Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_secondery_lan_budject', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TAccBookForSomeYearF.pop_8Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbook_secondery_lan_Aid', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try
end;

procedure TAccBookForSomeYearF.N11Click(Sender: TObject);
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

    InitReportFile(ppReport1, 'Rpt_Accbook', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
    qry_Companies.EnableControls;
  end; // try
end;

procedure TAccBookForSomeYearF.pop2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Doc.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_Accbookland', DBGrid1,ppDBPipeline1);
  finally
    qry_Doc.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TAccBookForSomeYearF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = vk_DOWN) and (Shift = [SSshift]) then
    chooseColumnDown
  else if (Key = vk_DOWN) or (Key = vk_up) then
    flag := True
  else
    flag := False;
  // Updateremain;
end;

procedure TAccBookForSomeYearF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = vk_up) and (Shift = [SSshift]) then
    chooseColumnUp
  else if (Key = vk_DOWN) or (Key = vk_up) then
    flag := True
  else
    flag := False;
end;

procedure TAccBookForSomeYearF.chooseColumnDown;
begin

end;

procedure TAccBookForSomeYearF.chooseColumnUp;
begin

end;

procedure TAccBookForSomeYearF.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 1 then
  begin
    if (Button = mbleft) and (Shift = [ssctrl]) then
      if DBGrid1.SelectedRows.CurrentRowSelected then
      begin
        sumDebit := sumDebit + qry_Doc.fieldByName('Debit').AsCurrency;
        sumCredit := sumCredit + qry_Doc.fieldByName('Credit').AsCurrency;
        sumAmount := sumAmount + qry_Doc.fieldByName('AidAmount').AsCurrency;
      end
      else
      begin
        sumDebit := sumDebit - qry_Doc.fieldByName('Debit').AsCurrency;
        sumCredit := sumCredit - qry_Doc.fieldByName('Credit').AsCurrency;
        sumAmount := sumAmount - qry_Doc.fieldByName('AidAmount').AsCurrency;
      end
  end
  else
  begin
    sumDebit := qry_Doc.fieldByName('Debit').AsCurrency;
    sumCredit := qry_Doc.fieldByName('Credit').AsCurrency;
    sumAmount := qry_Doc.fieldByName('AidAmount').AsCurrency;
  end; // if
  if DBGrid1.SelectedRows.CurrentRowSelected = False then
  begin
    if DBGrid1.SelectedRows.Count > 0 then
      qry_Doc.GotoBookmark
        ((DBGrid1.SelectedRows[DBGrid1.SelectedRows.Count - 1]));
    if DBGrid1.SelectedRows.Count = 1 then
    begin
      sumDebit := qry_Doc.fieldByName('Debit').AsCurrency;
      sumCredit := qry_Doc.fieldByName('Credit').AsCurrency;
      sumAmount := qry_Doc.fieldByName('AidAmount').AsCurrency;
    end;
  end;
end;

procedure TAccBookForSomeYearF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  // Text:='«“ ‘„«—Â ”‰œ '+IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoFrom').Value)+
  // '  « '+IntToStr(qry_Doc.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TAccBookForSomeYearF.actSpecialExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TAccBookForSomeYearF.setVisibleColumns;
var
  id: Integer;
begin
  inherited;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 3) and FormInfoID=' +
      qry_AccCode.fieldByName('AidInfoType').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#05#06#07', id <> 0);
    Active := False;
    SQL.Text :=
      'SELECT InfoID FROM acc.FormsInfo WHERE (FormType = 12) and FormInfoID=' +
      qry_AccCode.fieldByName('KindInsertBudgetCode').AsInteger.ToString;
    Active := True;
    id := Fields[0].AsInteger;
    setColumns(DBGrid1, '#08#09', id <> 0);
  end; // with
end;

procedure TAccBookForSomeYearF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Doc);

end;

procedure TAccBookForSomeYearF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TAccBookForSomeYearF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Doc.Requery;
end;

procedure TAccBookForSomeYearF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

end.
