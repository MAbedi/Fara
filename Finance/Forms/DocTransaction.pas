// Alireza Mokhtari
unit DocTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppProd, ppClass, ppReport, ppBands, ppPrnabl, ppStrtch, ppSubRpt, ppCache,
  ppCtrls, ppParameter, filter_ADO, FilterClass_ADO, Resource, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TDocTransactionF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    qryMasterSerial: TIntegerField;
    qryMasterSecondaryDocNo: TIntegerField;
    qryDetail: TADOQuery;
    srcDetail: TDataSource;
    qryDetailSerial: TIntegerField;
    qryDetailSecondaryDocNo: TIntegerField;
    qryDetailDocDate: TStringField;
    qryDetailTransDate: TStringField;
    qryDetailUserName: TStringField;
    qryDetailTransType: TWordField;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    actSenttoexcel: TAction;
    actSort: TAction;
    actSearch: TAction;
    qryDetailID: TAutoIncField;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    ppDBmaster: TppDBPipeline;
    ppDBdetail: TppDBPipeline;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLine22: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    BitBtn3: TBitBtn;
    actFilter: TAction;
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure qryDetailTransTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSenttoexcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DocTransactionF: TDocTransactionF;

implementation

uses Dm, GlobalPro, sort2, searchCode_ADO;

{$R *.dfm}

procedure TDocTransactionF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDetail do
  begin
    Active := False;
    Parameters.ParamByName('Serial').Value := qryMaster.FieldByName('Serial')
      .AsInteger;
    Active := True;
  end; // with
end;

procedure TDocTransactionF.UpdateFilter;
begin
  with qryMaster, Parameters do
  begin
    qryDetail.Close;
    Close;
    ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftDate);
    ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftDate);
    ParamByName('DocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    ParamByName('DocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    ParamByName('TransDateFrom').Value :=
      GetcFrom(myParams.ParamValues['TransDate'], ftDate);
    ParamByName('TransDateTo').Value :=
      GetcTo(myParams.ParamValues['TransDate'], ftDate);
    Open;
  end;
end;

procedure TDocTransactionF.qryDetailTransTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'ندارد';
    1:
      Text := 'ايجاد';
    2:
      Text := 'ويرايش';
    3:
      Text := 'حذف';
  end; // case
end;

procedure TDocTransactionF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TDocTransactionF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 3);
end;

procedure TDocTransactionF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('DocDate') = nil then
    begin
      Close;
      Exit;
    end;
end;

procedure TDocTransactionF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMaster.FieldByName('Serial'));
end;

procedure TDocTransactionF.actSenttoexcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TDocTransactionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetail);
end;

procedure TDocTransactionF.actSearchExecute(Sender: TObject);
var
  results: array [0 .. 6] of string;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'پنجره جستجو',
    'Select ID, Serial, SecondaryDocNo, DocDate, TransDate, UserName, TransType '
    + 'From acc.DocsTransaction', ['رديف', 'سريال', 'شماره كمكي', 'تاريخ روز',
    'تاريخ انجام', 'نام كاربر', 'نوع عمليات'], results,
    [60, 60, 60, 60, 60, 60, 60], alLeft) then
  begin
    qryMaster.Locate('Serial', results[1], []);
    qryDetail.Locate('ID', results[0], []);
  end; // if
end;

procedure TDocTransactionF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(Dmf.adcAccounting, 'TransDate', 'تاريخ تغییر', 'تاريخ تغییر',
        ftDate, dvMinMax, '', '', ciSimple, '',
        Format('SELECT MIN(TransDate),Max(TransDate) FROM acc.DocsTransaction where LEFT(DocDate,4) = %d',
        [APPBank.Year]));

      AddItem(Dmf.adcAccounting, 'DocDate', 'تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', Format(strMaxMinDocDate, [APPBank.Year]));

      AddItem(Dmf.adcAccounting, 'SecondaryDocNo', 'شماره فرعي ', 'شماره فرعي',
        ftInteger, dvMinMax, '', '', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end;
end;

procedure TDocTransactionF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport.PreviewFormSettings.SinglePageOnly := True;
  ppReport.Print;
end;

procedure TDocTransactionF.ppDBText5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  case strtoint(Text) of
    0:
      Text := 'ندارد';
    1:
      Text := 'ايجاد';
    2:
      Text := 'ويرايش';
    3:
      Text := 'حذف';
  end; // case
end;

end.
