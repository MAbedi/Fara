unit AccCompare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, SumDBGrid, myChkBox,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppSubRpt, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TAccCompareF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryDoc: TADOQuery;
    qryDocID: TAutoIncField;
    qryDocSerial: TIntegerField;
    qryDocTopicCode: TLargeintField;
    qryDocSecondaryDocNo: TIntegerField;
    qryDocPrimaryDocNo: TIntegerField;
    qryDocComment_L1: TStringField;
    qryDocDebt: TFMTBCDField;
    qryDocCredit: TFMTBCDField;
    qryDocAidDocdate: TStringField;
    qryDocAidAmount: TFloatField;
    qryDocReferenceNo: TIntegerField;
    qryDocReferenceDate: TStringField;
    qryDocReferenceCheck: TWordField;
    srcDoc: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryAccCode: TADOQuery;
    srcAccCode: TDataSource;
    qryAccCodeTopicCode: TLargeintField;
    qryAccCodeAccName: TStringField;
    qryAccCodeDetailCode: TIntegerField;
    qryAccCodeAccCode: TStringField;
    qryAccCodeCompanyCode: TIntegerField;
    accFilter: TAction;
    BitBtn2: TBitBtn;
    SumGrid1: TSumGrid;
    Image1: TImage;
    actSort: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSendExcel: TAction;
    qryDocReferenceTxt: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    BitBtn7: TBitBtn;
    actPrint: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppLineDetail: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    actShow: TAction;
    BitBtn6: TBitBtn;
    qryDocDocDate: TStringField;
    qryDocAidDocNo: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure qryAccCodeAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure accFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure actShowExecute(Sender: TObject);
  private
    FormType: Integer;
    procedure InitForm;
    Procedure UpdateFilter;
    procedure Checked;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccCompareF: TAccCompareF;

implementation

uses Dm, GlobalPro, searchCode_L1_L2, filter_ADO, FilterClass_ADO, Math,
  sort2, search2, Document;
{$R *.dfm}

procedure TAccCompareF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  InitForm;
end;

procedure TAccCompareF.InitForm;
Const
  SqlTxt =
    'SELECT acc.Documents.ID, acc.DocGroups.Serial, acc.Documents.TopicCode, acc.DocGroups.SecondaryDocNo,'
    + ' acc.DocGroups.PrimaryDocNo,' +
    ' acc.Documents.Comment_L1, acc.Documents.Debt, acc.Documents.Credit, acc.Documents.AidDocNo,'
    + ' acc.Documents.AidDocdate,' +
    ' acc.Documents.AidAmount, acc.Documents.ReferenceNo, acc.Documents.ReferenceTxt,'
    + ' acc.Documents.ReferenceDate,' +
    ' acc.Documents.ReferenceCheck, acc.DocGroups.DocDate' +
    ' FROM acc.Documents INNER JOIN' +
    ' Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroups.Serial AND Acc.Documents.YearID = Acc.DocGroups.YearID AND'
    + ' Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCode' +
    ' where (Acc.DocGroups.YearID = :YearID) And (acc.DocGroups.SecondaryDocNo BETWEEN :SecDocFrom AND :SecDocTo) AND (acc.DocGroups.PrimaryDocNo BETWEEN :PriDocFrom AND :PriDocTo) ' + ' %S';
var
  MasterSql: String;
begin
  case FormType of
    1:
      Caption := 'تطبيق حسابهاي معین با شماره كمكي';
    2:
      Caption := 'تطبيق حسابهاي معین با عطف';
    3:
      Caption := 'تطبيق حسابهاي تفصيلي با شماره كمكي';
    4:
      Caption := 'تطبيق حسابهاي تفصيلي با عطف';
  end;
  qryDoc.Close;
  case FormType of
    1, 2:
      begin
        MasterSql :=
          'SELECT acc.Documents.TopicCode, acc.Categories.MoeenName_L1 AS AccName, 0 AS DetailCode, LTRIM(STR'
          +
          ' (acc.Documents.TopicCode)) AS AccCode, acc.Documents.CompanyCode'
          +
          ' FROM acc.Documents INNER JOIN'
          +
          ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode' + ' GROUP BY LTRIM(STR(acc.Documents.TopicCode)), acc.Documents.TopicCode, acc.Categories.MoeenName_L1,' + ' acc.Documents.CompanyCode';
        qryDoc.SQL.Text := Format(SqlTxt, [
            'AND (acc.Documents.TopicCode = :TopicCode)']);
      end;
    3, 4:
      begin
        MasterSql :=
          'SELECT acc.Details.CompanyCode, acc.Documents.TopicCode, acc.Documents.DetailCode, LTRIM(RTRIM(STR' +
          ' (acc.Documents.DetailCode)))'
          +
          ' + '' - '' + RTRIM(LTRIM(STR(acc.Documents.TopicCode))) AS AccCode,'
          + ' acc.Categories.MoeenName_L1 + '' - '' + acc.Details.DetailName_L1 AS AccName' +
          ' FROM acc.Documents INNER JOIN'
          + ' acc.Details ON acc.Documents.DetailCode = acc.Details.DetailCode INNER JOIN' + ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode' + ' GROUP BY acc.Documents.TopicCode, acc.Documents.DetailCode, LTRIM(RTRIM(STR(acc.Documents.DetailCode)))' + ' + '' - '' + RTRIM(LTRIM(STR( acc.Documents.TopicCode))), acc.Categories.MoeenName_L1 + '' - '' +' + ' acc.Details.DetailName_L1, acc.Details.CompanyCode';
        qryDoc.SQL.Text := Format(SqlTxt, [
            'AND (acc.Documents.TopicCode = :TopicCode) AND (acc.Documents.DetailCode = :DetailCode)']);
      end;
  end;

  setColumns(DBGrid1, '#07#08#09', (FormType in [1, 3]));
  setColumns(DBGrid1, '#10#11#12#13', not(FormType in [1, 3]));

  with qryAccCode do
  begin
    Close;
    SQL.Text := MasterSql;
    SQL.Add('HAVING (acc.Documents.TopicCode BETWEEN :AccFrom AND :AccTo)');
    if FormType in [3, 4] then
      SQL.Add('And acc.Documents.DetailCode BETWEEN :DetailFrom and :DetailTo');
  end;

end;

procedure TAccCompareF.qryAccCodeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDoc do
  begin
    Close;
    Parameters.ParamByName('TopicCode').Value := DataSet.fieldbyname
      ('TopicCode').AsInteger;
    if Parameters.FindParam('DetailCode') <> nil then
      Parameters.ParamByName('DetailCode').Value := DataSet.fieldbyname
        ('DetailCode').AsInteger;
    Open;
  end;
end;

procedure TAccCompareF.BitBtn1Click(Sender: TObject);
var
  s: Boolean;
  Results: array [0 .. 2] of String;
  Txt: String;
begin
  inherited;
  if FormType in [1 .. 2] then
    Txt :=
      'SELECT acc.Documents.TopicCode, acc.Categories.MoeenName_L1, acc.Categories.MoeenName_L2'
      + ' FROM acc.Documents INNER JOIN' +
      ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode' +
      ' GROUP BY acc.Documents.TopicCode, acc.Categories.MoeenName_L1, acc.Categories.MoeenName_L2'
  else
    Txt := 'SELECT AccCode, AccName, AccName_l2' +
      ' FROM (SELECT LTRIM(RTRIM(STR(acc.Documents.DetailCode))) + '' - '' + RTRIM(LTRIM(STR(acc.Documents.TopicCode))) AS AccCode,'
      +
      ' acc.Categories.MoeenName_L1 + '' - '' + acc.Details.DetailName_L1 AS AccName,'
      + ' acc.Categories.MoeenName_L2 + '' - '' + acc.Details.DetailName_L2 AS AccName_l2' +
      ' FROM acc.Documents INNER JOIN'
      +
      ' acc.Details ON acc.Documents.DetailCode = acc.Details.DetailCode INNER JOIN'
      +
      ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode'
      + ' GROUP BY LTRIM(RTRIM(STR(acc.Documents.DetailCode))) + '' - '' + RTRIM(LTRIM(STR(acc.Documents.TopicCode))),' + ' acc.Categories.MoeenName_L2 + '' - '' + acc.Details.DetailName_L2, acc.Categories.MoeenName_L1 + '' - '' + acc.Details.DetailName_L1) Q ' + 'WHERE     (AccCode IS NOT NULL)';

  s := searchCode_L1_L2F.SearchCode2(DMF.adcAccounting, 'حسابها', Txt,
    ['کد', 'عنوان معين ', 'caption'], Results, [40, 200, 200], alLeft);
  if s then
  begin
    qryAccCode.Locate('AccCode', Results[0], []);
  end; // if

end;

procedure TAccCompareF.accFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, dvMinMax, '', '', ciSimple, '',
        'SELECT Min(PrimaryDocNo),Max(PrimaryDocNo) FROM acc.DocGroups');
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, dvMinMax, '', '', ciSimple, '',
        'SELECT Min(SecondaryDocNo) , Max(SecondaryDocNo) FROM acc.DocGroups');
      if FormType in [3, 4] then
        AddItem(DMF.adcAccounting, 'DetailCode', ' حساب تفصيلي', 'كد تفصيلي ',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT acc.Details.DetailCode, acc.Details.DetailName_L1 FROM acc.Details INNER JOIN'
            +
            ' acc.DetailRange ON acc.Details.DetailCode = acc.DetailRange.DetailCode' +
            ' WHERE (acc.Details.DetailCode<>0)'
            + ' GROUP BY acc.Details.DetailCode, acc.Details.DetailName_L1',

          'SELECT Min(DetailCode)  , Max(DetailCode)  FROM acc.Documents');
      AddItem(DMF.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1' +
          ' FROM acc.Documents INNER JOIN' +
          ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode'
          + ' GROUP BY acc.Categories.TopicCode, acc.Categories.MoeenName_L1',
        'SELECT MIN(acc.Documents.TopicCode) AS Expr1, MAX(acc.Documents.TopicCode) AS Expr2'
          + ' FROM acc.Documents INNER JOIN' +
          ' acc.Categories ON acc.Documents.TopicCode = acc.Categories.TopicCode');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TAccCompareF.UpdateFilter;
begin

  with qryDoc do
  begin
    Close;
    Parameters.ParamByName('SecDocFrom').Value := GetcFrom
      (myParams.ParamValues['SecondaryDocNo'], ftInteger); ;
    Parameters.ParamByName('SecDocTo').Value := GetcTo
      (myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('PriDocFrom').Value := GetcFrom
      (myParams.ParamValues['PrimaryDocNo'], ftInteger); ;
    Parameters.ParamByName('PriDocTo').Value := GetcTo
      (myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('YearID').Value := APPBank.Year;
  end;

  with qryAccCode do
  begin
    Close;
    Parameters.ParamByName('AccFrom').Value := GetcFrom
      (myParams.ParamValues['AccCode'], ftLargeint); ;
    Parameters.ParamByName('AccTo').Value := GetcTo
      (myParams.ParamValues['AccCode'], ftLargeint);
    if FormType in [3, 4] then
    begin
      Parameters.ParamByName('DetailFrom').Value := GetcFrom
        (myParams.ParamValues['DetailCode'], ftInteger); ;
      Parameters.ParamByName('DetailTO').Value := GetcTo
        (myParams.ParamValues['DetailCode'], ftInteger);

    end;
    Open;
  end;
end;

procedure TAccCompareF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4);
end;

procedure TAccCompareF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TAccCompareF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if accFilter.Execute then
    if myParams.FindParam('AccCode') = nil then
      Close;

end;

procedure TAccCompareF.Checked;
begin
  with qryDoc do
  begin
    Edit;
    fieldbyname('ReferenceCheck').AsInteger := IfThen
      (fieldbyname('ReferenceCheck').AsInteger = 0, 1, 0);
    Post;
  end;
end;

procedure TAccCompareF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if FormType in [2, 4] then
    Checked
  else
    actShow.Execute;

end;

procedure TAccCompareF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (qryDoc.State in dseditmodes) then
    qryDoc.Post;
end;

procedure TAccCompareF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 13 then
  begin
    DBGrid1.Canvas.FillRect(Rect);
    if Column.Field.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Graphic)
  end; // if
end;

procedure TAccCompareF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAccCompareF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDoc);
end;

procedure TAccCompareF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDoc);
end;

procedure TAccCompareF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAccCompareF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TAccCompareF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TAccCompareF.actPrintExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  try
    qryDoc.DisableControls;
    qryAccCode.DisableControls;

    case FormType of
      1, 3:
        s := 'rptMoienAid';
      2, 4:
        s := 'RptMoeinTick';
    end;
    InitReportFile(ppReport1, s, DBGrid1,ppDBPipeline1);

  finally
    qryDoc.EnableControls;
    qryAccCode.EnableControls;
  end;
end;

procedure TAccCompareF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Self.Caption
end;

procedure TAccCompareF.actShowExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TDocumentF, DocumentF, Self, 101);
  DocumentF.qry_DocGroups.Locate('Serial',
    qryDoc.fieldbyname('Serial').AsInteger, []);
  DocumentF.qry_Documents.Locate('Id', qryDoc.fieldbyname('ID').AsInteger, [])

end;

end.
