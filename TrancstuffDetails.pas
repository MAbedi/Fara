unit TrancstuffDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ComCtrls, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppParameter, Filter_ADO_Const, ppDesignLayer,
  System.ImageList, System.Actions, FarsiReportBuilde;

type
  TTrancstuffDetailsF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryStuffCustDetails: TADOQuery;
    srcStuffCustDetails: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    qryStuffCustDetailsStoreID: TSmallintField;
    qryStuffCustDetailsc_StoreName: TStringField;
    qryStuffCustDetailsReciptNumber: TIntegerField;
    qryStuffCustDetailsReciptDate: TStringField;
    qryStuffCustDetailsc_StuffName: TStringField;
    qryStuffCustDetailsUnitName: TStringField;
    qryStuffCustDetailsPersonID1: TIntegerField;
    qryStuffCustDetailsCustName1: TStringField;
    qryStuffCustDetailsStuffSize: TStringField;
    qryStuffCustDetailsStuffDiameter: TFloatField;
    qryStuffCustDetailsStuffAlloy: TStringField;
    qryStuffCustDetailsControlCode: TLargeintField;
    qryStuffCustDetailsStuffGrade: TWordField;
    qryStuffCustDetailsPersonID2: TIntegerField;
    qryStuffCustDetailsCustName2: TStringField;
    qryStuffCustDetailsEntity: TFloatField;
    qryStuffCustDetailsWeight: TFloatField;
    qryStuffCustDetailsPrice: TBCDField;
    qryStuffCustDetailsReciptType: TWordField;
    qryStuffCustDetailsReciptCaption: TStringField;
    actFilter: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    qryStuff: TADOQuery;
    qryStuffc_StuffName: TStringField;
    srcStuff: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    StatusBar1: TStatusBar;
    actShowForm: TAction;
    qryStuffCustDetailsReciptID: TIntegerField;
    BitBtn7: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppShape2: TppShape;
    qryStuffCustDetailsServerID: TIntegerField;
    qryStuffCustDetailsYearID: TIntegerField;
    qryStuffCustDetailsStuffCode: TLargeintField;
    qryStuffc_StuffCode: TLargeintField;
    qryStuffCustDetailsc_StuffTecInfo: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure qryStuffAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure qryStuffCustDetailsAfterOpen(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
  private
    FormType: Byte;
    procedure initform;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrancstuffDetailsF: TTrancstuffDetailsF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, search2, sort2,
  searchCode_ADO, DBGrid2Print, FormFunctions;

{$R *.dfm}

procedure TTrancstuffDetailsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterControlCode);

      AddItem(DMf.adcBSell, 'Date', ' «—ÌŒ', 'ﬂœ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) From Recipts');
      AddItem(DMf.adcBSell, 'Number', '‘„«—Â ›—„', '‘„«—Â ', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts');
      AddItem(DMf.adcBSell, 'PersonID', ' „‘ —Ì ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT CustID , CustName FROM Customers ',
        'select Min(CustID),Max(CustID) From Customers ');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode,c_StuffName FROM StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');

      AddItem(DMf.adcBSell, 'Store', '«‰»«—', 'ﬂœ', ftInteger, dvMinMax, '', '',
        ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      // 'SELECT n_StoreID , c_StoreName FROM stores ','select Min(n_StoreID),Max(n_StoreID) From Stores');
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

procedure TTrancstuffDetailsF.UpdateFilter;
begin
  with qryStuffCustDetails do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('RcpNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('RcpNumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('StorIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('StorIdTo').Value :=
      GetcTo(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('PersonIdFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('PersonIdTo').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);
    // Active:=True;
  end; // with
  With qryStuff do
  begin
    Active := False;
    Parameters.ParamByName('SuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Active := True;
  end; // with

end;

procedure TTrancstuffDetailsF.qryStuffAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryStuffCustDetails do
  begin
    Active := False;
    Parameters.ParamByName('paStuffCode').Value :=
      DataSet.FieldByName('c_StuffCode').AsString;
    Active := True;
  end; // with
end;

procedure TTrancstuffDetailsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 6, True, IntToStr(FormType));
end;

procedure TTrancstuffDetailsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TTrancstuffDetailsF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  initform;
  Entity_Weight(DBGrid1);
end;

procedure TTrancstuffDetailsF.initform;
begin

  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM ReciptTypes';
    SQL.Add('where ReciptType=' + IntToStr(FormType));
    SQL.Add('ORDER BY ReciptType');
    Active := True;

    Caption := 'ê“«—‘ ﬂ«·«Ì ' + FieldByName('ReciptCaption').AsString +
      ' » ›ﬂÌﬂ ﬂœ ﬂ«·« Ê «Ã“«¡ ¬‰';
  end; // with
  // ------------------------set qryStuffCustDetails--------------------------------//
  with qryStuffCustDetails do
  Begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
  end; // with
end;

procedure TTrancstuffDetailsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Number') = nil then
    close;
end;

procedure TTrancstuffDetailsF.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'ﬂ«·« Â«',
    ' SELECT c_StuffCode, c_StuffName FROM StuffCoding ' +
    ' WHERE(c_StuffCode BETWEEN ' + IntToStr(qryStuff.Parameters.ParamValues
    ['SuffCodeFrom']) + '  AND ' + IntToStr(qryStuff.Parameters.ParamValues
    ['StuffCodeTo']) + ')', ['òœ', '‰«„ '], Results, [50, 150], alLeft);
  if b then
  begin
    qryStuff.Locate('c_StuffCode', Results[0], []);
  end; // if
end;

procedure TTrancstuffDetailsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TTrancstuffDetailsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffCustDetails);
end;

procedure TTrancstuffDetailsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryStuffCustDetails);
end;

procedure TTrancstuffDetailsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryStuffCustDetails.FieldByName('ReciptNumber'));
end;

procedure TTrancstuffDetailsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute;
end;

procedure TTrancstuffDetailsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryStuffCustDetails, Self);
end;

procedure TTrancstuffDetailsF.qryStuffCustDetailsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with StatusBar1 do
  begin
    if opt.EntityDisplay then
      Panels[2].Text := '„ﬁœ«— :' + CurrToStr(CalcSumFileds(qryStuffCustDetails,
        'Entity'));
    if opt.WeightDisplay then
      Panels[1].Text := 'Ê“‰ :' + CurrToStr(CalcSumFileds(qryStuffCustDetails,
        'weight'));

    if PriceOnStoreType(DataSet.FieldByName('StoreID').AsInteger, DBGrid1,
      qryStuffCustDetails) then
      Panels[0].Text := CurrToStrF(CalcSumFileds(qryStuffCustDetails, 'Price'),
        ffCurrency, 0);
  end; // with

end;

procedure TTrancstuffDetailsF.BitBtn7Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TTrancstuffDetailsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TTrancstuffDetailsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TTrancstuffDetailsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TTrancstuffDetailsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TTrancstuffDetailsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffCustDetails.DisableControls;
    InitReportFile(ppReport1, 'TrancstuffDetails', True);
  finally
    qryStuffCustDetails.EnableControls;
  end;
end;

end.
