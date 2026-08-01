unit rptJournal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, DB, ADODB, ppVar, ppPrnabl,
  ppClass, ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TrptJournalF = class(Ttemplate2MDIF)
    qryJournal: TADOQuery;
    srcJournal: TDataSource;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    qryCompony: TADOQuery;
    srcCompony: TDataSource;
    qryComponyCompanyCode: TIntegerField;
    qryComponyCompanyName_L1: TStringField;
    qryJournalSecondaryDocNo: TIntegerField;
    qryJournalPrimaryDocNo: TIntegerField;
    qryJournalDocDate: TStringField;
    qryJournalDocTopic_L1: TStringField;
    qryJournalTopicCode: TLargeintField;
    qryJournalDetailCode: TIntegerField;
    qryJournalCTopicCode: TIntegerField;
    qryJournalCTopicCode2: TIntegerField;
    qryJournalComment_L1: TStringField;
    qryJournalBudgetID: TIntegerField;
    qryJournalProjectID: TIntegerField;
    qryJournalAidDocdate: TStringField;
    qryJournalAidAmount: TFloatField;
    qryJournalDebt: TFMTBCDField;
    qryJournalCredit: TFMTBCDField;
    qryJournalSerial: TIntegerField;
    qry_Init: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    pop4Print: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pnlCompony: TPanel;
    DBNavigator2: TDBNavigator;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit6: TDBEdit;
    actFilter: TAction;
    actShowForm: TAction;
    actPrint: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    Panel1: TPanel;
    qryJournalMoeenName_L1: TStringField;
    qryJournalDetailName_L1: TStringField;
    qryJournalCTopicName_L1: TStringField;
    qryJournalCTopicName2_L1: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine7: TppLine;
    ppDBText3: TppDBText;
    ppLine8: TppLine;
    ppDBText4: TppDBText;
    ppLine9: TppLine;
    ppDBText5: TppDBText;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText32: TppDBText;
    ppLine73: TppLine;
    ppDBText33: TppDBText;
    ppLine72: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppLine12: TppLine;
    ppDBText11: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine19: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine67: TppLine;
    ppLine62: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel21: TppLabel;
    ppDBText16: TppDBText;
    ppLine6: TppLine;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLine15: TppLine;
    BitBtn1: TBitBtn;
    BitBtn9: TBitBtn;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    qryJournalctopiccode3: TIntegerField;
    qryJournalCTopicName3_L1: TStringField;
    qry1: TADOQuery;
    qry1AidDocNo: TFloatField;
    qryJournalAidDocNo: TFloatField;
    qryJournalArzDebt: TFloatField;
    qryJournalArzCredit: TFloatField;
    qryJournalCurrencyType: TIntegerField;
    qryJournalCurrenciesName: TStringField;
    qryJournalID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    qryJournalKolName_L1: TStringField;
    qryJournalAccCode: TStringField;
    Panel4: TPanel;
    CheckAid: TCheckBox;
    CheckBudject: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryComponyAfterScroll(DataSet: TDataSet);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckAidClick(Sender: TObject);
    procedure CheckBudjectClick(Sender: TObject);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure ppCompanyNameGetText(Sender: TObject; var Text: string);
  private
    formType: byte;
    procedure initForm;
    // function CalcSumFileds(FiledName: String): Currency;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptJournalF: TrptJournalF;

implementation

uses Dm, GlobalPro, filter_ADO, FilterClass_ADO, Document,
  sort2, search2, searchCode_L1_L2, DBGrid2Print, Resource, FormFunctions;

{$R *.dfm}

procedure TrptJournalF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDate') = nil then
    close;
end;

procedure TrptJournalF.UpdateFilter;
begin
  with qryJournal do
  begin
    Active := false;
    Parameters.ParamByName('LenAccCode').Value :=
      qry_Init.FieldByName('CodeLength').AsInteger;

    Parameters.ParamByName('DocTypeCodes').Value :=
      GetcFrom(myParams.ParamValues['DocTypeCodes'], ftString);

    Parameters.ParamByName('DocStatus').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);

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

    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);

    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);

    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);

    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);

    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('YearIDFrom').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('YearIDTo').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    end;

    // Active:=True ;
  end; // with

  with qryCompony do
  begin
    Active := false;
    if gv_MultiCompany then
    begin
      Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;
    SetCompanyFilterinLogin(Parameters);

    Active := true;
  end;

end;

procedure TrptJournalF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcAccounting, 'DocTypeCodes', 'ÇäæÇÚ ÓäÏ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck,
        'SELECT DocTypeCode, DocTypeName_L1 FROM Acc.DocTypes ', '');


      AddItem(DMF.adcAccounting, 'checked', 'æÖÚíÊ ÇÓäÇÏ', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookupStatus);
      AddItem(DMF.adcAccounting, 'CTopicCode3', 'ßÏ æ äÇã ÊÝÕíáí 4',
        'ßÏãÑßÒåÒíäå3', ftInteger, dvMinMax, '', '', ciLookup,
        strLookUpCTopicCode3, strMaxMinCTopicCode3);
      AddItem(DMF.adcAccounting, 'CTopicCode2', 'ßÏ æ äÇã ÊÝÕíáí 3',
        'ßÏãÑßÒåÒíäå2', ftInteger, dvMinMax, '', '', ciLookup,
        strLookUpCTopicCode2, strMaxMinCTopicCode2);
      AddItem(DMF.adcAccounting, 'CTopicCode', 'ßÏ æ äÇã ÊÝÕíáí 1',
        'ÊÝÕíáí 1', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CTopicsForUse ',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CTopicsForUse');
      AddItem(DMF.adcAccounting, 'DetailCode', 'ßÏ æ äÇã ÊÝÕíáí', 'ßÏ ÊÝÕíáí',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      AddItem(DMF.adcAccounting, 'AccCode', 'ßÏ æ äÇã ÍÓÇÈ ', 'ßÏ ÍÓÇÈ',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT ACC.Categories.TopicCode, ACC.Categories.MoeenName_L1 FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ',
        'SELECT min(ACC.Categories.TopicCode), max(ACC.Categories.TopicCode) FROM ACC.Categories LEFT OUTER JOIN '
        + ' ACC.CategoriesForUse ON ACC.Categories.TopicCode = ACC.CategoriesForUse.PrvTopicCode '
        + ' WHERE (ACC.CategoriesForUse.PrvTopicCode IS NULL) ');

      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'ÔãÇÑå ÝÑÚí ÓäÏ ÍÓÇÈÏÇÑí',
        'ÔãÇÑå ÝÑÚí', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'ÔãÇÑå ÇÕáí ÓäÏ ÍÓÇÈÏÇÑí',
        'ÔãÇÑå ÓäÏ', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'DocDate', 'ÊÇÑíÎ ÓäÏÍÓÇÈÏÇÑí', 'ÊÇÑíÎ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDate999999 ,//strMaxMinDocDate,
        [APPBank.Year]));


      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'ßÏ æ äÇã ÔÚÈå /ÔÑßÊ', 'ÔÑßÊ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
          'SELECT 0  , 9999 ');

      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'ãÍÏæÏ ÓÇá ãÇáí', 'ÓÇá ãÇáí',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM util.maliYear');

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

procedure TrptJournalF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TDocumentF, DocumentF, Self);
  DocumentF.qry_DocGroups.Locate('Serial', qryJournal.fieldbyname('Serial')
    .AsInteger, []);
  DocumentF.qry_Documents.Locate('id', qryJournal.fieldbyname('id')
    .AsInteger, []);
end;

procedure TrptJournalF.BitBtn3Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := ' SELECT CompanyCode, CompanyName_L1, CompanyName_L2 FROM  acc.Companies '
    + ' where  CompanyCode   between  ' +
    inttostr(qryCompony.Parameters.ParamByName('CompanyCodeFrom').Value) +
    ' and  ' + inttostr(qryCompony.Parameters.ParamByName
    ('CompanyCodeTo').Value);

  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, ' Ñæå ÔÑßÊåÇ', Txt,
    ['ßÏ', 'äÇã ÔÑßÊ', 'Compony Name'], Results, [50, 100, 100], alLeft);
  if s then
    qryCompony.Locate('CompanyCode', Results[0], []);

end;

procedure TrptJournalF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryJournal);
end;

procedure TrptJournalF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptJournalF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryJournal);
end;

procedure TrptJournalF.FormCreate(Sender: TObject);
begin
  inherited;
  formType := var_glb_gParam;
  initForm;
end;

procedure TrptJournalF.qryComponyAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryJournal do
  begin
    Active := false;
    Parameters.ParamByName('CompanyCodeFrom').Value :=
      qryComponyCompanyCode.AsInteger;
    Parameters.ParamByName('CompanyCodeTo').Value :=
      qryComponyCompanyCode.AsInteger;

    SetCompanyFilterinLogin(Parameters);

    Active := true;
  end; // with
end;

procedure TrptJournalF.ppCompanyNameGetText(Sender: TObject; var Text: string);
begin
  inherited;
  if pnlCompony.Visible then
    Text := qryComponyCompanyName_L1.AsString
  else
    Text := '';
end;

procedure TrptJournalF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptJournalF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptJournalF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptJournalF.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'ÊÇÑíÎ ÓäÏ ÇÒ ' + GetcFrom(myParams.ParamValues['DocDate'], ftString)
    + ' ÊÇ ' + GetcTo(myParams.ParamValues['DocDate'], ftString);
end;

procedure TrptJournalF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'ÓäÏ ÝÑÚí ÇÒ ' + GetcFrom(myParams.ParamValues['SecondaryDocNo'],
    ftString) + ' ÊÇ ' + GetcTo(myParams.ParamValues['SecondaryDocNo'],
    ftString);
end;

procedure TrptJournalF.actPrintExecute(Sender: TObject);
begin
  inherited;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptJournalF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qryJournal.DisableControls;
    InitReportFile(ppReport1, 'RepRptJournal', DBGrid1, ppDBPipeline1);
  finally
    qryJournal.EnableControls;
  end; // try
end;

procedure TrptJournalF.N3Click(Sender: TObject);
begin
  inherited;
  try
    qryJournal.DisableControls;
    InitReportFile(ppReport1, 'RepRptJournalAid', DBGrid1, ppDBPipeline1);
  finally
    qryJournal.EnableControls;
  end; // try
end;

procedure TrptJournalF.N2Click(Sender: TObject);
begin
  inherited;
  try
    qryJournal.DisableControls;
    InitReportFile(ppReport1, 'RepRptJournalBudget', DBGrid1, ppDBPipeline1);
  finally
    qryJournal.EnableControls;
  end; // try
end;

procedure TrptJournalF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryJournal.fieldbyname('Serial'));
end;
// function TrptJournalF.CalcSumFileds(FiledName: String): Currency;
// begin
// Result:=0;
// try
// with cloned do begin
// Clone(qryJournal,ltReadOnly);
// First;
// while not eof do begin
// Result:=Result +fieldbyname(FiledName).AsCurrency;
// Next;
// end;//while
// end;//with
// except
// end;//try
// end;

procedure TrptJournalF.initForm;
begin
  with qry_Init do
  begin
    Active := false;
    Parameters.ParamByName('FormType').Value := formType;
    Active := true;
  end;
  pnlCompony.Visible := gv_MultiCompany;

end;

procedure TrptJournalF.CheckAidClick(Sender: TObject);
begin
  inherited;
  DBGrid1.Columns[17].Visible := CheckAid.Checked;
  DBGrid1.Columns[18].Visible := CheckAid.Checked;
  DBGrid1.Columns[19].Visible := CheckAid.Checked;
end;

procedure TrptJournalF.CheckBudjectClick(Sender: TObject);
begin
  inherited;
  DBGrid1.Columns[15].Visible := CheckBudject.Checked;
  DBGrid1.Columns[16].Visible := CheckBudject.Checked;
end;

procedure TrptJournalF.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // if DBGrid1.SelectedRows.Count>1 then begin
  // if (Button=mbleft) and (Shift=[ssctrl] )then
  // if DBGrid1.SelectedRows.CurrentRowSelected  then begin
  // sumDebt:=sumDebt+qryJournal.Fieldbyname('Debt').AsInteger;
  // sumCredit:=sumCredit+qryJournal.Fieldbyname('Credit').AsInteger;
  // sumAmount:=sumAmount+qryJournal.Fieldbyname('AidAmount').AsInteger;
  // end
  // else begin
  // sumDebt:=sumDebt-qryJournal.Fieldbyname('Debt').AsInteger;
  // sumCredit:=sumCredit-qryJournal.Fieldbyname('Credit').AsInteger;
  // sumAmount:=sumAmount-qryJournal.Fieldbyname('AidAmount').AsInteger;
  // end
  // end
  // else begin
  // sumDebt:=qryJournal.Fieldbyname('Debt').AsInteger;
  // sumCredit:=qryJournal.Fieldbyname('Credit').AsInteger;
  // sumAmount:=qryJournal.Fieldbyname('AidAmount').AsInteger;
  // end;//if
  // if DBGrid1.SelectedRows.CurrentRowSelected=false  then begin
  // if DBGrid1.SelectedRows.Count>0 then
  // qryJournal.GotoBookmark(pointer(DBGrid1.SelectedRows[DBGrid1.SelectedRows.Count-1]));
  // if DBGrid1.SelectedRows.Count=1 then begin
  // sumDebt:=qryJournal.Fieldbyname('Debt').AsInteger;
  // sumCredit:=qryJournal.Fieldbyname('Credit').AsInteger;
  // sumAmount:=qryJournal.Fieldbyname('AidAmount').AsInteger;
  // end;
  // end;
  //

end;

procedure TrptJournalF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // if (Key=vk_DOWN) and (Shift=[SSshift]) then
  // chooseColumnDown
  // else
  // if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
  // else flag:=false;

end;

procedure TrptJournalF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // if (Key =vk_UP) and (Shift =[SSshift])   then
  // chooseColumnUp
  // else
  // if (Key=vk_DOWN)or(Key=vk_up) then flag:=true
  // else flag:=false;
end;

procedure TrptJournalF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptJournalF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qryJournal.Requery;
end;

procedure TrptJournalF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

end.
