unit rptMonthDocuments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ppBands, ppClass, ppDB,
  ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, Menus, SumDBGrid, ppParameter, FormFunctions, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TrptMonthDocumentsF = class(Ttemplate2MDIF)
    qryDocs: TADOQuery;
    srcDocs: TDataSource;
    qryDocsbed: TBCDField;
    qryDocsbes: TBCDField;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    popPrint: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qryDocsDocDate: TStringField;
    qryDocskolName_L1: TStringField;
    qryDocskolName_L2: TStringField;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    actSort: TAction;
    actPrint: TAction;
    actfilter: TAction;
    qry_Init: TADOQuery;
    qryDocsb: TIntegerField;
    qryDocsDocNo: TFloatField;
    qryDocsDoc_No: TFloatField;
    actexcel: TAction;
    qryDocsMount: TStringField;
    qryDocsSumbed: TBCDField;
    qryDocssumbes: TBCDField;
    qryDocsrow: TFloatField;
    qryDocsYearId: TIntegerField;
    ng1: TMenuItem;
    qryDocsBalance: TBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryDocsCodeKol: TIntegerField;
    lblNote: TLabel;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    N3: TMenuItem;
    DBGrid1: TCedarDbgrid;
    N11: TMenuItem;
    procedure ppDBText5Print(Sender: TObject);
    procedure qryDocsAfterOpen(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actfilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure actexcelExecute(Sender: TObject);
    procedure qryDocsAfterScroll(DataSet: TDataSet);
    procedure _actSearchExecute(Sender: TObject);
    procedure ng1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private

    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptMonthDocumentsF: TrptMonthDocumentsF;

implementation

uses dm, Math, StrUtils, GlobalPro, search2, sort2, filter_ADO,
  FilterClass_ADO, Resource;

{$R *.dfm}

procedure TrptMonthDocumentsF.ppDBText5Print(Sender: TObject);
begin
  inherited;
  if qryDocs.FieldByName('b').AsInteger = 1 then
    (Sender as TppDBText).Alignment := taLeftJustify
  else
    (Sender as TppDBText).Alignment := taRightJustify;
end;

procedure TrptMonthDocumentsF.qryDocsAfterOpen(DataSet: TDataSet);
var
  DocNo, i: Integer;
  DocNoPart: string;
  bes, bed: Currency;
begin
  inherited;
  with qryDocs do
    try
      DisableControls;
      DocNo := 1;
      i := 0;
      DocNoPart := FieldByName('DocNo').AsString;
      while not qryDocs.Eof do
      begin
        DocNo := IfThen(qryDocs.FieldByName('DocNo').AsString = DocNoPart,
          DocNo, (DocNo + 1));
        DocNoPart := IfThen(qryDocs.FieldByName('DocNo').AsString = DocNoPart,
          DocNoPart, qryDocs.FieldByName('DocNo').AsString);
        bed := bed + FieldByName('bed').AsCurrency;
        bes := bes + FieldByName('bes').AsCurrency;
        inc(i);
        edit;
        FieldByName('row').AsInteger := i;
        FieldByName('doc_no').AsInteger := DocNo;
        FieldByName('sumbed').AsCurrency := bed;
        FieldByName('sumbes').AsCurrency := bes;
        post;
        Next;
      end; // while
    finally
      EnableControls;
    end; // try

  // StatusBar1.Panels[3].Text:='تعداد  =  '+IntToStr(qryDocs.RecordCount);
  // StatusBar1.Panels[1].Text:='بد = '+CurrToStrF(bed,ffCurrency,0)  ;
  // StatusBar1.Panels[0].Text:='بس = '+CurrToStrF(bes,ffCurrency,0)  ;

end;

procedure TrptMonthDocumentsF.N2Click(Sender: TObject);
begin
  inherited;
  with qryDocs do
  begin
    DisableControls;
    InitReportFile(ppReport1, 'rptMonthDocuments_all', DBGrid1, ppDBPipeline1);
    EnableControls;
  end; // with

end;

procedure TrptMonthDocumentsF.N11Click(Sender: TObject);
begin
  inherited;
  with qryDocs do
  begin
    DisableControls;
    InitReportFile(ppReport1, 'rptMonthDocuments_kol', DBGrid1, ppDBPipeline1);
    EnableControls;
  end; // with

end;

procedure TrptMonthDocumentsF.N1Click(Sender: TObject);
begin
  inherited;
  with qryDocs do
  begin
    DisableControls;
    InitReportFile(ppReport1, 'rptMonthDocuments_codkol2', DBGrid1,
      ppDBPipeline1);
    EnableControls;
  end; // with
end;

procedure TrptMonthDocumentsF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptMonthDocumentsF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptMonthDocumentsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDocs);
end;

procedure TrptMonthDocumentsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptMonthDocumentsF.actfilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      if gv_MultiCompany then
        AddItem(dmf.adcAccounting, 'CompanyCode', 'كد شركت ', 'كد شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT  CompanyCode, CompanyName_L1 FROM  acc.Companies  ',
          ' Select 0,2147483647 ');

      AddItem(dmf.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));
      AddItem(dmf.adcAccounting, 'Month', ' ماه ', 'ماه', ftInteger, dvMinMax,
        '', '', ciSimple, '', 'SELECT Min(01),Max(12) FROM acc.DocGroups');

      AddItem(dmf.adcAccounting, 'PrimaryDocNo', 'شماره اصلي ', 'شماره اصلي',
        ftInteger, dvMinMax, '', '', ciSimple, '', Format(strMaxMinPrimaryDocNo,
        [APPBank.Year]));

      AddItem(dmf.adcAccounting, 'SecondaryDocNo', 'شماره فرعي ', 'شماره فرعي',
        ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));

      if ShowModal = mrOk then
      begin
        if True then
          GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TrptMonthDocumentsF.UpdateFilter;
begin
  with qryDocs do
  begin
    Close;
    Parameters.ParamByName('LenAccCode').Value :=
      qry_Init.FieldByName('CodeLength').AsInteger;
    Parameters.ParamByName('MonthFrom').Value :=
      GetcFrom(myParams.ParamValues['Month'], ftInteger);
    Parameters.ParamByName('Monthto').Value :=
      GetcTo(myParams.ParamValues['Month'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('Dateto').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('TOYearID').Value := APPBank.Year;
    if myParams.FindParam('CompanyCode') <> nil then
    begin
      Parameters.ParamByName('CompanyFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      Parameters.ParamByName('CompanyTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end;

    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);

    Open;
  end;
end;

procedure TrptMonthDocumentsF.FormShow(Sender: TObject);
var
  strTemp: string;
begin
  inherited;
  lblNote.Caption :=
    '(در صورت استفاده از این گزارش دفاتر روزنامه و کل نیز باید به همین ترتیب تحریر شوند.)';
  if CheckDockWithStatus0 or CheckExistsImbalanceDoc then
  begin
    rptMonthDocumentsF.Close;
    Exit;
  end;
  qry_Init.Active := True;
  myParams.Clear;
  actfilter.Execute;

  if myParams.FindParam('Month') = nil then
    Close;

  strTemp := Format('از تاریخ %s تا تاریخ %s',
    [qryDocs.Parameters.ParamByName('DateFrom').Value,
    qryDocs.Parameters.ParamByName('DateTo').Value]);
  LblShowLimitPlace1.Caption := strTemp;
end;

procedure TrptMonthDocumentsF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptMonthDocumentsF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptMonthDocumentsF.ppDBText2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  case qryDocsDocDate.AsInteger of
    0:
      Text := 'افتتاحیه';
    01:
      Text := 'فروردين ماه';
    02:
      Text := 'ارديبهشت ماه';
    03:
      Text := 'خرداد ماه';
    04:
      Text := 'تير ماه';
    05:
      Text := 'مرداد ماه';
    06:
      Text := 'شهريور ماه';
    07:
      Text := 'مهر ماه';
    08:
      Text := 'آبان ماه';
    09:
      Text := 'آذر ماه';
    10:
      Text := 'دي ماه';
    11:
      Text := 'بهمن ماه';
    12:
      Text := 'اسفند ماه';
    98:
      Text := 'سود و زیان';
    99:
      Text := 'اختتامیه';

  end;
end;

procedure TrptMonthDocumentsF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'محدوده از تاريخ' + qryDocs.Parameters.ParamByName('DateFrom').Value +
    ' تا ' + qryDocs.Parameters.ParamByName('DateTo').Value;
end;

procedure TrptMonthDocumentsF.actexcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptMonthDocumentsF.qryDocsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // StatusBar2.Panels[3].Text:='تعداد سطر تا جاري= '+IfThen(DataSet.Fieldbyname('row').AsString<>'',DataSet.Fieldbyname('row').AsString,'0');
  // StatusBar2.Panels[1].Text:='بد = '+CurrToStrF(DataSet.fieldbyname('sumbed').AsCurrency,ffCurrency,0)  ;
  // StatusBar2.Panels[0].Text:='بس = '+CurrToStrF(DataSet.fieldbyname('sumbes').AsCurrency,ffCurrency,0)
end;

procedure TrptMonthDocumentsF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDocs);
end;

procedure TrptMonthDocumentsF.ng1Click(Sender: TObject);
var
  CodeFrom, CodeTo: Integer;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(dmf.adcAccounting, 'Codekole', 'كد كل', 'كد', ftInteger, dvMinMax,
        '', '', ciSimple, '',
        'SELECT Min(topiccode) , Max(topiccode)  FROM acc.Categories where LevelID = 2');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        CodeFrom := GetcFrom(myParams.ParamValues['Codekole'], ftInteger);
        CodeTo := GetcTo(myParams.ParamValues['Codekole'], ftInteger);
        with qryDocs do
        begin
          Close;
          Filter := Format('CodeKol >= %d and CodeKol <= %d ',
            [CodeFrom, CodeTo]);
          Filtered := True;

          Open;
          if (Sender as TMenuItem).Hint <> EmptyStr then
            Sort := (Sender as TMenuItem).Hint;
          DisableControls;
          InitReportFile(ppReport1, 'rptMonthDocuments_kol', DBGrid1,
            ppDBPipeline1);
          EnableControls;
        end;
      end; // if
    finally
      qryDocs.Filtered := False;
      qryDocs.Close;
      qryDocs.Open;

      Free;
    end; // try

end;

end.

