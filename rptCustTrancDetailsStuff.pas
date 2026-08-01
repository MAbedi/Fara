// mahmood
unit rptCustTrancDetailsStuff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Mask, ComCtrls, ppBands,
  ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache,
  ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, Menus, ppParameter,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptCustTrancDetailsStuffF = class(Ttemplate2MDIF)
    qryStuffCoding: TADOQuery;
    SrcStuffCoding: TDataSource;
    qryCustStuff: TADOQuery;
    SrcCustStuff: TDataSource;
    qryCustStuffPersonID1: TIntegerField;
    qryCustStuffReciptID: TIntegerField;
    qryCustStuffReciptNumber: TIntegerField;
    qryCustStuffReciptDate: TStringField;
    qryCustStuffReciptType: TWordField;
    qryCustStuffReciptCaption: TStringField;
    qryCustStuffc_StuffName: TStringField;
    qryCustStuffUnitName: TStringField;
    qryCustStuffStuffSize: TStringField;
    qryCustStuffStuffAlloy: TStringField;
    qryCustStuffentity: TFloatField;
    qryCustStuffweight: TFloatField;
    qryCustStuffbed: TBCDField;
    qryCustStuffbes: TBCDField;
    qryCustStuffkind: TIntegerField;
    qryCustStuffStoreID: TSmallintField;
    qryCustStuffcustname: TStringField;
    LblPerson1: TLabel;
    EdtStuffCode: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBTextStuffCode: TDBText;
    DBNavigator1: TDBNavigator;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    actFilter: TAction;
    LblLimit: TLabel;
    qryCustStuffStuffDiameter: TFloatField;
    StatusBar1: TStatusBar;
    qryCustStuffControlCode: TLargeintField;
    qryStuffCodingc_StuffName: TStringField;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    actSendExel: TAction;
    actShowForms: TAction;
    actSort: TAction;
    qryCustStuffItemNote: TStringField;
    qryCustStuffAddress: TStringField;
    PopupMenu1: TPopupMenu;
    F71: TMenuItem;
    N21: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNumber: TppSystemVariable;
    ppLine6: TppLine;
    ppLblDate: TppLabel;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppLine18: TppLine;
    ppLabel6: TppLabel;
    ppLabel3: TppLabel;
    ppLblCustname1: TppLabel;
    ppLblCustomerID1: TppLabel;
    ppLabel32: TppLabel;
    ppLabel9: TppLabel;
    ppLabel17: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppDBText23: TppDBText;
    ppDBText7: TppDBText;
    ppDBText3: TppDBText;
    ppDBText11: TppDBText;
    ppDBText19: TppDBText;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLine43: TppLine;
    ppLine46: TppLine;
    ppLine15: TppLine;
    ppLine3: TppLine;
    ppDBText6: TppDBText;
    ppLine13: TppLine;
    ppLine8: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape5: TppShape;
    ppLine35: TppLine;
    ppDBCalc16: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppLine37: TppLine;
    ppDBCalc20: TppDBCalc;
    ppLabel18: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine9: TppLine;
    qryCustStuffServerID: TIntegerField;
    qryCustStuffYearID: TIntegerField;
    qryStuffCodingc_StuffCode: TLargeintField;
    qryCustStuffStuffCode: TLargeintField;
    N1: TMenuItem;
    DBGrid1: TCedarDbgrid;
    qryCustStuffUnitSellPrice: TFMTBCDField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryStuffCodingAfterScroll(DataSet: TDataSet);
    procedure qryCustStuffAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure EdtStuffCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure actSendExelExecute(Sender: TObject);
    procedure actShowFormsExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptCustTrancDetailsStuffF: TrptCustTrancDetailsStuffF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, searchCode_ADO,
  search2, sort2, FormFunctions;

{$R *.dfm}

procedure TrptCustTrancDetailsStuffF.UpdateFilter;
begin
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryCustStuff);
  with qryCustStuff do
  begin
    Active := False;
    Parameters.ParamByName('PersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('PersonIDTo').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);
  end; // with
  with qryStuffCoding do
  begin
    Active := False;
    Parameters.ParamByName('PersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('PersonIDTo').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Active := True;
  end; // with
end;

procedure TrptCustTrancDetailsStuffF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItem(DMf.adcBSell, 'PersonID2', ['òœ', '„‘ —Ì2', 'Â„—«Â'], ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID , CustName, Mobile FROM Customers ',
        'select Min(CustID),Max(CustID) From Customers');

      AddItem(DMf.adcBSell, 'PersonID', ['òœ', '„‘ —Ì', 'Â„—«Â'], ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID , CustName, Mobile FROM Customers ',
        'select Min(CustID),Max(CustID) From Customers');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode,c_StuffName FROM  StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');

      AddItem(DMf.adcBSell, 'StoreID', ' «‰»«— ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      AddItem(DMf.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end;
end;

procedure TrptCustTrancDetailsStuffF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptCustTrancDetailsStuffF.qryStuffCodingAfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with qryCustStuff do
  begin
    Active := False;
    Parameters.ParamByName('StuffCodeFrom').Value :=
      qryStuffCoding.FieldByName('c_StuffCode').AsString;
    Parameters.ParamByName('StuffCodeTo').Value :=
      qryStuffCoding.FieldByName('c_StuffCode').AsString;
    Active := True;
  end; // with
  with qryCustStuff.Parameters do
  begin
    LblLimit.Caption :=
    // '«“ „‘ —Ì '+IntToStr(ParamByName('PersonIDFrom1').Value)+'  « '+IntToStr(ParamByName('PersonIDTo1').Value)+'    '+
      '«“  «—ÌŒ ' + ParamByName('DateFrom').Value + '  « ' +
      ParamByName('DateTo').Value;
  end; // with

end;

procedure TrptCustTrancDetailsStuffF.qryCustStuffAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[4].Text := ' ⁄œ«œ›—„=' + IntToStr(qryCustStuff.RecordCount);
  if opt.EntityDisplay then
    StatusBar1.Panels[3].Text := '„ﬁœ«—=' +
      CurrToStr(CalcSumFileds(qryCustStuff, 'entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[2].Text := 'Ê“‰=' +
      CurrToStr(CalcSumFileds(qryCustStuff, 'weight'));

  if PriceOnStoreType(qryCustStuff.FieldByName('storeid').AsInteger, DBGrid1,
    qryCustStuff) then
  begin
    StatusBar1.Panels[1].Text := '«—“‘ Ê«—œÂ=' +
      CurrToStrF(CalcSumFileds(qryCustStuff, 'bes'), ffCurrency, 0);
    StatusBar1.Panels[0].Text := '«—“‘ ’«œ—Â=' +
      CurrToStrF(CalcSumFileds(qryCustStuff, 'bed'), ffCurrency, 0);
  end;
end;

procedure TrptCustTrancDetailsStuffF.FormCreate(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
end;

procedure TrptCustTrancDetailsStuffF.SpeedButton1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT  c_StuffCode,c_StuffName from Vu_StuffCoding ' +
    'WHERE c_StuffCode BETWEEN  ' +
    IntToStr(GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint)) + ' AND  '
    + IntToStr(GetcTo(myParams.ParamValues['StuffCode'], ftLargeint));
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, '„‘ —Ì«‰', Txt, ['òœ', '‰«„ '],
    Results, [50, 150], alLeft);
  if b then
  begin
    qryStuffCoding.Locate('c_StuffCode', Results[0], []);
  end; // if
end;

procedure TrptCustTrancDetailsStuffF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryStuffCoding.DisableControls;
    qryCustStuff.DisableControls;
    InitReportFile(ppReport1, 'rptCustTrancDetailsStuff');
  finally
    qryStuffCoding.EnableControls;
    qryCustStuff.EnableControls;
  end; // try
end;

procedure TrptCustTrancDetailsStuffF.EdtStuffCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click
end;

procedure TrptCustTrancDetailsStuffF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCustTrancDetailsStuffF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCustTrancDetailsStuffF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptCustTrancDetailsStuffF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptCustTrancDetailsStuffF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCustTrancDetailsStuffF.actShowFormsExecute(Sender: TObject);
begin
  inherited;
  case qryCustStuff.FieldByName('Kind').AsInteger of
    0:
      Warn('»—«Ì ‰Ê⁄ «ÿ·«⁄«  " ‰ﬁ· «“ ﬁ»· " ›—„Ì ÊÃÊœ ‰œ«—œ.!');
    1, 2:
      ShowFormTypesForms(qryCustStuff, Self);
    3:
      ShowReciptTypes(qryCustStuff, Self);
  end; // case
end;

procedure TrptCustTrancDetailsStuffF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForms.Execute
end;

procedure TrptCustTrancDetailsStuffF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustStuff);
end;

procedure TrptCustTrancDetailsStuffF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustStuff);
end;

procedure TrptCustTrancDetailsStuffF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qryStuffCoding.DisableControls;
    qryCustStuff.DisableControls;
    InitReportFile(ppReport1, 'rptCustTrancDetailsStuffAddress', True);
  finally
    qryStuffCoding.EnableControls;
    qryCustStuff.EnableControls;
  end; // try
end;

procedure TrptCustTrancDetailsStuffF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptCustTrancDetailsStuffF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qryStuffCoding.DisableControls;
    qryCustStuff.DisableControls;
    InitReportFile(ppReport1, 'rptCustTrancDetailsStuffF3', True);
  finally
    qryStuffCoding.EnableControls;
    qryCustStuff.EnableControls;
  end; // try
end;

end.
