unit CountingList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppParameter, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  FormFunctions, FaraConsts, ppDesignLayer, System.ImageList, System.Actions;

type
  TCountingListF = class(Ttemplate2MDIF)
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    qryCounting: TADOQuery;
    srcCounting: TDataSource;
    actFilter: TAction;
    actSort: TAction;
    actSendToExcell: TAction;
    actPrint: TAction;
    actShow: TAction;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    plblSellsEmporiumName: TppLabel;
    ppLblShowLimitPlace1: TppLabel;
    ppLblShowLimitPlace2: TppLabel;
    ppDBText1: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    qryCountingCountID: TIntegerField;
    qryCountingCountNumber: TIntegerField;
    qryCountingCountDate: TStringField;
    qryCountingNote: TStringField;
    qryCountingState: TWordField;
    qryCountingCountingCalckind: TWordField;
    qryCountingFormSignature: TStringField;
    qryCountingNumberOfGoods: TIntegerField;
    qryCountingStoreID: TSmallintField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcellExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure qryCountingStateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryCountingCountingCalckindGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  CountingListF: TCountingListF;

implementation

uses GlobalPro, search2, sort2, DM, filter_ADO, FilterClass_ADO, MMESSAGE,
  rptCountingItems;

{$R *.dfm}

procedure TCountingListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'CountNumber', 'شماره', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'Select min(CountNumber),max(CountNumber) from Counting ');

      AddItem(DMF.adcBSell, 'CountDate', 'تاریخ', 'تاریخ', ftDate, dvMinMax, '',
        '', ciSimple, '',
        'Select min(CountDate),max(CountDate) from Counting ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TCountingListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCounting.DisableControls;
    InitReportFile(ppReport1, 'CountingList', True);
  finally
    qryCounting.EnableControls;
  end;
end;

procedure TCountingListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCounting);
end;

procedure TCountingListF.actSendToExcellExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCountingListF.actShowExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TrptCountingItemsF, rptCountingItemsF, Self, 3);
  rptCountingItemsF.UpdateList(qryCountingStoreID.AsInteger);
  rptCountingItemsF.qryCounting.Locate('CountID',
    qryCountingCountID.AsInteger, []);
end;

procedure TCountingListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCounting);
end;

procedure TCountingListF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShow.Execute
end;

procedure TCountingListF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCountingCountNumber);
end;

procedure TCountingListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCountingListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4, True);
end;

procedure TCountingListF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('CountDate') = nil then
    close;
end;

procedure TCountingListF.qryCountingCountingCalckindGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := TCountingCalckind[Sender.AsInteger]
end;

procedure TCountingListF.qryCountingStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetManifestoStatussState(Sender.AsInteger)
end;

procedure TCountingListF.UpdateFilter;
begin
  with qryCounting do
  begin
    Active := False;
    Parameters.ParamByName('CountNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['CountNumber'], ftInteger);
    Parameters.ParamByName('CountNumberTo').Value :=
      GetcTo(myParams.ParamValues['CountNumber'], ftInteger);

    Parameters.ParamByName('CountDateFrom').Value :=
      GetcFrom(myParams.ParamValues['CountDate'], ftDate);
    Parameters.ParamByName('CountDateTo').Value :=
      GetcTo(myParams.ParamValues['CountDate'], ftDate);
    Active := True;
  end;
end;

end.
