unit InsouraceGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, DBCtrls, ppBands, ppCache, ppClass,
  ppDB, ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppCtrls,
  ppPrnabl, ppVar, ppDesignLayer, System.ImageList, System.Actions;

type
  TInsouraceGroupsF = class(Ttemplate2MDIF)
    qryIncGroups: TADOQuery;
    DBGrid2: TDBGrid;
    qryInsourance: TADOQuery;
    srcInsourance: TDataSource;
    qryInsouranceInsouranceItemsID: TIntegerField;
    qryInsouranceInsouranceID: TIntegerField;
    qryInsouranceInsouranceNo: TStringField;
    qryInsouranceInsouranceDate: TStringField;
    qryInsouranceStartDate: TStringField;
    qryInsouranceEndDate: TStringField;
    qryInsouranceInsourancePrice: TBCDField;
    qryInsouranceComments: TStringField;
    qryInsouranceTypeName: TStringField;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    srcIncGroups: TDataSource;
    qryIncGroupsSerial: TIntegerField;
    qryIncGroupsInsouranceItemsID: TIntegerField;
    qryIncGroups_stuffDesc: TStringField;
    qryIncGroups_Pelak: TStringField;
    actExcel: TAction;
    actSelected: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    actKaretDaraiee: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    qryAssetsKeeper: TADOQuery;
    plnAssetsKeeper: TppDBPipeline;
    prp4SMS: TppReport;
    ppParameterList1: TppParameterList;
    srcAssetsKeeper: TDataSource;
    actPrint: TAction;
    btnKaretDaraiee: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    plblLblCompanyName: TppLabel;
    plblLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    plblLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    plbl1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    plbl2: TppLabel;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSelectedExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryInsouranceAfterScroll(DataSet: TDataSet);
    procedure qryIncGroupsAfterInsert(DataSet: TDataSet);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure qryIncGroupsBeforeDelete(DataSet: TDataSet);
    procedure actKaretDaraieeExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSort_Execute(Sender: TObject);
    procedure actSmsSendExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure plblLblCaptionGetText(Sender: TObject; var Text: String);
    procedure plblLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure plblLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InsouraceGroupsF: TInsouraceGroupsF;

implementation

uses Dm, GlobalPro, search2, selected, searchCode_ADO, Amval,
  sort2, SMSUnit;

{$R *.dfm}

procedure TInsouraceGroupsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 1);
  SetColSize(DBGrid1, 1);
end;

procedure TInsouraceGroupsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid1);
end;

procedure TInsouraceGroupsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInsouraceGroupsF.actSelectedExecute(Sender: TObject);
Const
  DelSQl = 'DELETE FROM Assets.AssetsInsouraceGroups where InsouranceItemsID = %d';
  INSSQl = 'INSERT INTO Assets.AssetsInsouraceGroups select %D,serialnum from Assets.amval  where serialnum in (%S)';
var
  S: String;
  INCID, Record_Count: Integer;
begin
  inherited;
  if not qryIncGroups.Active then
  begin
    Warn('ثبت بیمه نامه و محدوده اعتبار انجام نشده');
    Exit;
  end;

  INCID := qryInsourance.fieldbyname('InsouranceItemsID').AsInteger;
  Record_Count := qryIncGroups.RecordCount;
  with qryIncGroups do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        S := S + fieldbyname('Serial').AsString + ',';
        Next;
      end;
      S := selectedF.ShowSelect(Dmf.adcBSell, ' انتخاب دارايي',
        'Select SerialNum,StuffDesc from Assets.Amval', ['كد', 'عنوان'], alLeft,
        [30, 150], Trim(S));
      if Trim(S) <> EmptyStr then
      begin
        DmF.adcBSell.Execute(Format(DelSQl, [INCID]));
       DmF.adcBSell.Execute(Format(INSSQl, [INCID, S]));
      end;
    finally
      Requery;
      EnableControls;
    end;
  if Record_Count = 0 then
    actSmsSend.Execute
end;

procedure TInsouraceGroupsF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryAssetsKeeper, nil, SmsCustomersBalance_Amval, 0, 0, 2);
end;

procedure TInsouraceGroupsF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryIncGroups);
  qryInsourance.Open
end;

procedure TInsouraceGroupsF.qryInsouranceAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryIncGroups do
  begin
    Close;
    Parameters.ParamByName('INCID').Value :=
      DataSet.fieldbyname('InsouranceItemsID').AsInteger;
    Open;
  end;

  with qryAssetsKeeper do
  begin
    Close;
    Parameters.ParamByName('InsouranceItemsID').Value :=
      DataSet.fieldbyname('InsouranceItemsID').AsInteger;
    Open;
  end;

end;

procedure TInsouraceGroupsF.qryIncGroupsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('InsouranceItemsID').AsInteger :=
    qryInsourance.fieldbyname('InsouranceItemsID').AsInteger
end;

procedure TInsouraceGroupsF.DBGrid2EditButtonClick(Sender: TObject);
var
  I: Byte;
  Result: array [0 .. 2] of String;
begin
  inherited;
  I := (Sender as TDBGrid).SelectedIndex;

  if not(qryIncGroups.State in dseditmodes) then
    qryIncGroups.Edit;
  if I = 0 then
    if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'جستجوي',
      'SELECT SerialNum, PelakNum, StuffDesc FROM  Assets.Amval ',
      ['شماره سريال ', 'شماره پلاك', 'نام كالا'], Result, [60, 60, 100], alLeft)
    then
      qryIncGroups.fieldbyname('Serial').AsString := Result[0];

end;

procedure TInsouraceGroupsF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    DBGrid2EditButtonClick(Sender);
end;

procedure TInsouraceGroupsF.qryIncGroupsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف  مطئمن هستيد؟‍') <> mrYes then
    Abort;

end;

procedure TInsouraceGroupsF.actKaretDaraieeExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TAmvalF, AmvalF, Self, qryIncGroups.fieldbyname('serial')
    .AsInteger)
end;

procedure TInsouraceGroupsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(prp4SMS, 'InsouraceGroups.rtm');
end;

procedure TInsouraceGroupsF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInsourance);
end;

procedure TInsouraceGroupsF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInsourance);
end;

procedure TInsouraceGroupsF.plblLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TInsouraceGroupsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TInsouraceGroupsF.plblLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption
end;

procedure TInsouraceGroupsF.plblLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
