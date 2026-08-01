unit Rpt_Ledger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Mask, DBCtrls, ppBands,AccFunctions,
  ppClass, ppModule, raCodMod, ppCtrls, ppReport, ppStrtch, ppSubRpt,
  ppVar, ppPrnabl, ppCache, ppDB, Menus, ppDBPipe, ppComm, ppRelatv, ppProd,
  SumDBGrid, ppTypes, ppParameter, FormFunctions, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TRpt_LedgerF = class(Ttemplate2MDIF)
    qry_Ledger: TADOQuery;
    src_Ledger: TDataSource;
    DBGrid1: TDBGrid;
    qry_Init: TADOQuery;
    qry_InitLevelID: TIntegerField;
    qry_InitLevelCaption: TStringField;
    qry_InitPrvLevelID: TIntegerField;
    qry_InitCodeLength: TWordField;
    qry_InitPrvLevelCaption: TStringField;
    qry_InitPrvCodeLength: TWordField;
    qry_InitTopicType: TWordField;
    actFiltter: TAction;
    qry_AccCode: TADOQuery;
    qry_AccCodeMoeenName: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    src_AccCode: TDataSource;
    qry_Ledgerdocdate: TStringField;
    qry_LedgerPrimaryDocNo: TIntegerField;
    qry_LedgerSecondaryDocNo: TIntegerField;
    qry_Ledgerserial: TIntegerField;
    qry_LedgerBedBes: TIntegerField;
    qry_LedgerDebt: TFMTBCDField;
    qry_LedgerCredit: TFMTBCDField;
    qry_LedgerDocTopic: TStringField;
    qry_AccCodeMoeenName_L2: TStringField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn3: TBitBtn;
    actExcel: TAction;
    actShow: TAction;
    actSort: TAction;
    actPrint: TAction;
    qry_Ledgerbed: TBCDField;
    qry_Ledgerbes: TBCDField;
    qry_LedgercalcuBalance: TBCDField;
    qry_LedgerBalance: TBCDField;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    pop4Print: TPopupMenu;
    N11: TMenuItem;
    pop2: TMenuItem;
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
    ppLine7: TppLine;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    SumGrid1: TSumGrid;
    N1: TMenuItem;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    actOther: TAction;
    BitBtn2: TBitBtn;
    actFilterForm: TAction;
    mniFilterForm: TMenuItem;
    qry_LedgerYearID: TIntegerField;
    lblNote: TLabel;
    qry_Ledger_row: TBCDField;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    lblMultiCompany: TLabel;
    qry_AccCodeAccCode: TLargeintField;
    qry_LedgerAccCode: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure actFiltterExecute(Sender: TObject);
    procedure qry_AccCodeAfterScroll(DataSet: TDataSet);
    procedure actShowExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblSeconNo_DocNoGetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure N11Click(Sender: TObject);
    procedure pop2Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    formtype: byte;
    procedure UpdateList;
    procedure Updateremain;
    function MakeQry_Ledger: String;
    function MakeQry_AccCode: String;
    // function CalcSumFileds(FiledName: String): Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rpt_LedgerF: TRpt_LedgerF;

implementation

uses Dm, searchCode_ADO, filter_ADO, FilterClass_ADO, GlobalPro,
  Document, sort2, search2, DBGrid2Print, Resource;

{$R *.dfm}

procedure TRpt_LedgerF.FormCreate(Sender: TObject);
begin
  inherited;
  formtype := var_glb_gParam;
  with qry_Init do
  Begin
    Active := False;
    Parameters.ParamByName('type').Value := formtype;
    Active := True;
  end; // with
  with qry_AccCode do
  Begin
    Active := False;
    SQL.Text := MakeQry_AccCode;
  end; // with
  with qry_Ledger do
  Begin
    Active := False;
    SQL.Text := MakeQry_Ledger;
  end; // with

  myParams.Clear;
  actFiltter.Execute;
  if myParams.FindParam('DocDate') = nil then
    close;

  // mGrid1.SumCurrentRecord := opta.SumBook;
end;

procedure TRpt_LedgerF.actFiltterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'DocDate', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', '‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ”‰œ', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', '‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì',
        '‘„«—Â ›—⁄Ì', ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'AccCode', 'ﬂœ Ê ‰«„ Õ”«» ', 'ﬂœ Õ”«»',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode, MoeenName_L1 FROM  acc.Categories WHERE LevelID =' +
        IntToStr(formtype),
        'SELECT Min(TopicCode),Max(TopicCode) FROM acc.Categories WHERE LevelID ='
        + IntToStr(formtype));
      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', '„ÕœÊœ ”«· „«·Ì', '”«· „«·Ì',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM util.maliYear');

      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'ﬂœ ‘—ﬂ  ', 'ﬂœ ‘—ﬂ ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT  CompanyCode, CompanyName_L1 FROM  acc.Companies  ',
          ' Select 0,2147483647 ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

function TRpt_LedgerF.MakeQry_AccCode: String;

begin
  WITH qry_AccCode DO
  BEGIN
    SQL.Text :=
      ' SELECT  AccountCode.AccCode, acc.Categories.MoeenName_L1 , acc.Categories.MoeenName_L2 ';
    SQL.add(' FROM   (SELECT     CAST(LEFT(TopicCode,  ' +
      qry_InitCodeLength.AsString + ' ) AS bigint) AS AccCode ');
    SQL.add(' FROM       acc.Documents INNER JOIN ');
    SQL.add('  Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroups.Serial AND Acc.Documents.YearID = Acc.DocGroups.YearID AND ');
    SQL.add('  Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCode ');
    SQL.add(' WHERE (acc.DocGroups.Status >= 1) ');
    SQL.add(' AND (acc.DocGroups.DocDate BETWEEN :DocDateFrom AND :DocDateTo)');
    SQL.add(' AND (acc.DocGroups.PrimaryDocNo BETWEEN :PrimaryDocNoFrom AND :PrimaryDocNoTo )');
    SQL.add(' AND (acc.DocGroups.SecondaryDocNo BETWEEN :SecondaryDocNoFrom  AND :SecondaryDocNoTo)');
    SQL.add(' AND (Abs(LEFT(TopicCode, ' + qry_InitCodeLength.AsString +
      ')) BETWEEN :AccCodeFrom  AND :AccCodeTo)');
    SQL.add(' GROUP BY CAST(LEFT(TopicCode, ' + qry_InitCodeLength.AsString +
      ') AS bigint ) )AccountCode   LEFT OUTER JOIN ');
    SQL.add(' acc.Categories ON AccountCode.AccCode = acc.Categories.TopicCode ');
    SQL.add(' Order By AccountCode.AccCode ');
  end; // with
  Result := qry_AccCode.SQL.Text;;
end;

function TRpt_LedgerF.MakeQry_Ledger: String;

begin
  WITH qry_Ledger DO
  BEGIN
    SQL.Text :=
      ' select * ,Debt-Credit as Balance, Fitful.FitfulID as calcuBalance ,Fitful.FitfulID AS bed, Fitful.FitfulID AS bes, Fitful.FitfulID as _row';
    SQL.add(' from ( ');
    SQL.add(' SELECT acc.DocGroups.YearID , CAST( LEFT(acc.Documents.TopicCode, '
      + qry_InitCodeLength.AsString + '  ) AS bigint) AS AccCode, ');
    SQL.add(' ''-'' as docdate , 0 as PrimaryDocNo, 0 as SecondaryDocNo,  0 as serial , ');
    SQL.add(' 0  AS BedBes, ');
    SQL.add(' SUM(acc.Documents.Debt) AS Debt, SUM(acc.Documents.Credit) AS Credit,''„«‰œÂ ‰ﬁ· «“ ﬁ»· '' as DocTopic_L1 ');
    SQL.add('FROM  acc.Documents INNER JOIN ');
    SQL.add('  Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroups.Serial AND Acc.Documents.YearID = Acc.DocGroups.YearID AND ');
    SQL.add('  Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCode ');
    SQL.add(' WHERE  (acc.DocGroups.Status >= 1) ');
    SQL.add(' AND ((acc.DocGroups.DocDate  < :DocDateFrom2 ) ');
    SQL.add(' or  ((acc.DocGroups.PrimaryDocNo >0 and acc.DocGroups.PrimaryDocNo < :PrimaryDocNoFrom2 )) ');
    SQL.add(' or (acc.DocGroups.SecondaryDocNo < :SecondaryDocNoFrom2)) ');
    SQL.add(' AND ( Acc.DocGroups.CompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo )');
    SQL.add(' GROUP BY   acc.DocGroups.YearID , CAST( LEFT(acc.Documents.TopicCode, '
      + qry_InitCodeLength.AsString + ') AS bigint)');
    SQL.add(' union all ');
    SQL.add(' SELECT  acc.DocGroups.YearID, CAST( LEFT(acc.Documents.TopicCode, '
      + qry_InitCodeLength.AsString +
      ' ) AS bigint) AS AccCode, acc.DocGroups.DocDate, acc.DocGroups.PrimaryDocNo, acc.DocGroups.SecondaryDocNo,acc.DocGroups.serial , ');
    SQL.add(' CASE acc.Documents.debt WHEN 0 THEN ''1'' ELSE ''0'' END AS BedBes, ');
    SQL.add(' SUM(acc.Documents.Debt) AS Debt, SUM(acc.Documents.Credit) AS Credit, acc.DocGroups.DocTopic_L1 ');
    SQL.add(' FROM         acc.Documents INNER JOIN ');
    SQL.add('  Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroups.Serial AND Acc.Documents.YearID = Acc.DocGroups.YearID AND ');
    SQL.add('  Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCode ');
    SQL.add(' WHERE     (acc.DocGroups.Status >= 1) ');
    SQL.add(' AND (acc.DocGroups.DocDate BETWEEN :DocDateFrom AND :DocDateTo)');
    SQL.add(' AND (acc.DocGroups.PrimaryDocNo BETWEEN :PrimaryDocNoFrom AND :PrimaryDocNoTo )');
    SQL.add(' AND (acc.DocGroups.SecondaryDocNo BETWEEN :SecondaryDocNoFrom  AND :SecondaryDocNoTo)');
    SQL.add(' AND ( Acc.DocGroups.CompanyCode BETWEEN :CompanyCode1From AND :CompanyCode1To )');
    SQL.add(' GROUP BY   acc.DocGroups.YearID, CAST( LEFT(acc.Documents.TopicCode, '
      + qry_InitCodeLength.AsString +
      ' ) AS bigint), acc.DocGroups.DocDate, acc.DocGroups.PrimaryDocNo, acc.DocGroups.SecondaryDocNo,acc.DocGroups.serial , ');
    SQL.add(' CASE acc.Documents.debt WHEN 0 THEN ''1'' ELSE ''0'' END ,acc.DocGroups.DocTopic_L1 )Ledger CROSS JOIN Fitful ');
    SQL.add(' where   AccCode = :AccCode ');
    SQL.add(' AND YearID between :FromYearID and :ToYearID');
    SQL.add(' ORDER BY CASE WHEN PrimaryDocNo = 0 THEN REPLACE(DocDate, ''/'', '''') ELSE PrimaryDocNo END, DocDate, SecondaryDocNo  ');

  end; // with
  Result := qry_Ledger.SQL.Text;;
end;

procedure TRpt_LedgerF.Updateremain;
var
  c, bes, bed: Currency;
  i: integer;
begin
  with qry_Ledger do
    try
      First;
      DisableControls;
      c := 0;
      bed := 0;
      bes := 0;
      i := 0;
      while not eof do
      begin
        i := i + 1;
        c := c + fieldbyname('Balance').AsCurrency;
        bed := bed + fieldbyname('Debt').AsCurrency;
        bes := bes + fieldbyname('Credit').AsCurrency;
        edit;
        fieldbyname('_row').AsInteger := i;
        fieldbyname('calcuBalance').AsCurrency := c;
        fieldbyname('bed').AsCurrency := bed;
        fieldbyname('bes').AsCurrency := bes;
        post;
        Next;
      end; //
    finally
      First;
      EnableControls;
    end; // try

end;

procedure TRpt_LedgerF.qry_AccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_Ledger do
  begin
    Active := False;
    Parameters.ParamByName('AccCode').Value :=
      qry_AccCode.fieldbyname('AccCode').Value;
    Active := True;
  end; // with
  Updateremain;
end;

procedure TRpt_LedgerF.actShowExecute(Sender: TObject);
begin
  inherited;
  DocumentF.FindDoc(qry_Ledgerserial.AsInteger, qry_LedgerYearID.AsInteger,
    opta.DefaultCompany);
  DocumentF.qry_Documents.Locate('id', 0, []);
end;

procedure TRpt_LedgerF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRpt_LedgerF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Ledger);
end;

procedure TRpt_LedgerF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Ledger);
end;

procedure TRpt_LedgerF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_Ledger.fieldbyname('SecondaryDocNo'));
end;

procedure TRpt_LedgerF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShow.Execute
end;

procedure TRpt_LedgerF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);

end;

procedure TRpt_LedgerF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, True);
end;

procedure TRpt_LedgerF.FormShow(Sender: TObject);
begin
  inherited;
  if CheckDockWithStatus0 or CheckExistsImbalanceDoc then
  begin
    close;
    Exit;
  end;
end;

procedure TRpt_LedgerF.BitBtn1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT    fun.AccCode, acc.Categories.MoeenName_L1 ' +
    ' FROM (SELECT str(LEFT(TopicCode, 2)) AS AccCode  FROM  acc.Documents INNER JOIN'
    + ' Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroups.Serial AND Acc.Documents.YearID = Acc.DocGroups.YearID AND '
    + ' Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCode ' +
    ' WHERE  (acc.DocGroups.Status >= 1) ' +
    ' GROUP BY str(LEFT(TopicCode, 2))) fun LEFT OUTER JOIN' +
    ' acc.Categories ON fun.AccCode = acc.Categories.TopicCode ';
  s := searchCode_ADOF.SearchCode2(DMF.adcAccounting, 'Õ”«»Â«', Txt,
    ['òœ', '⁄‰Ê«‰ „⁄Ì‰ '], Results, [50, 300], alLeft);
  if s then
    qry_AccCode.Locate('AccCode', Results[0], []);

end;

procedure TRpt_LedgerF.UpdateList;
var
  fCompanyFrom, fCompanyTo: integer;
begin
  with qry_Ledger do
  begin
    Active := False;
    SetArzParameters(qry_Ledger,myParams);
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
    Parameters.ParamByName('DocDateFrom2').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('PrimaryDocNoFrom2').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom2').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('AccCode').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearId').Value := APPBank.Year;

    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;

    if myParams.FindParam('CompanyCode') <> nil then
    begin

      fCompanyFrom := GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      fCompanyTo := GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);

      LblShowLimitPlace2.Caption := Format('«“ òœ ‘—ò  %d  « òœ ‘—ò  %d',
        [fCompanyFrom, fCompanyTo]);

      lblMultiCompany.Visible := ((fCompanyFrom <> fCompanyTo) and
        (gv_MultiCompany));
    end
    else
    begin

      fCompanyFrom := 0;
      fCompanyTo := 99999;
    end;

    Parameters.ParamByName('CompanyCodeFrom').Value := fCompanyFrom;
    Parameters.ParamByName('CompanyCodeTO').Value := fCompanyTo;
    Parameters.ParamByName('CompanyCode1From').Value := fCompanyFrom;
    Parameters.ParamByName('CompanyCode1TO').Value := fCompanyTo;

    SetCompanyFilterinLogin(Parameters);

    Active := True;
  end; // with

  with qry_AccCode do
  begin
    Active := False;
    SetArzParameters(qry_Ledger,myParams);
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
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftLargeint);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftLargeint);

    Active := True;
  end; // with
end;

procedure TRpt_LedgerF.actPrintExecute(Sender: TObject);
begin
  inherited;
  pop4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRpt_LedgerF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)

end;

procedure TRpt_LedgerF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRpt_LedgerF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRpt_LedgerF.ppLblSeconNo_DocNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  With qry_Ledger.Parameters do
    Text := '«“ ‘„«—Â „Êﬁ  ' + IntToStr(ParamByName('SecondaryDocNoFrom').Value)
      + '  « ' + IntToStr(ParamByName('SecondaryDocNoTo').Value);

end;

procedure TRpt_LedgerF.ppLabel11GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ”‰œ ' +
    IntToStr(qry_Ledger.Parameters.ParamByName('PrimaryDocNoFrom').Value) +
    '  « ' + IntToStr(qry_Ledger.Parameters.ParamByName('PrimaryDocNoTo').Value)
end;

procedure TRpt_LedgerF.ppLblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  With qry_Ledger.Parameters do
    Text := '«“  «—ÌŒ ' + ParamByName('DocDateFrom').Value + '  « ' +
      ParamByName('DocDateTo').Value;

end;

procedure TRpt_LedgerF.N11Click(Sender: TObject);
begin
  inherited;

  try
    qry_Ledger.DisableControls;
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

    InitReportFile(ppReport1, 'Rpt_Ledger', DBGrid1, ppDBPipeline1);
  finally
    qry_Ledger.EnableControls;
    qry_AccCode.EnableControls;
  end; // try

end;

procedure TRpt_LedgerF.pop2Click(Sender: TObject);
begin
  inherited;
  try
    qry_Ledger.DisableControls;
    qry_AccCode.DisableControls;
    InitReportFile(ppReport1, 'Rpt_LedgerLan', DBGrid1, ppDBPipeline1);
  finally
    qry_Ledger.EnableControls;
    qry_AccCode.EnableControls;
  end;
end;

procedure TRpt_LedgerF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TRpt_LedgerF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRpt_LedgerF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  qry_Ledger.Requery;
end;

end.
