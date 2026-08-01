{ -------------------------------------------------------------------------------
  Unit Name: rptEntityOnDetailStuffsAllStore
  Author:    Mahmood
  Purpose:
  History:
  ------------------------------------------------------------------------------- }
unit rptEntityOnDetailStuffsAllStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB,DBCtrls, ppDB, ppDBPipe, Math,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ComCtrls, ppBands, ppCache,
  ppCtrls, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppEndUsr, ppParameter,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptEntityOnDetailStuffsAllStoreF = class(Ttemplate2MDIF)
    srcDetailStuffs: TDataSource;
    qryDetailStuffs: TADOQuery;
    qryDetailStuffsStoreID: TSmallintField;
    qryDetailStuffsControlCode: TLargeintField;
    qryDetailStuffsc_StuffName: TStringField;
    qryDetailStuffsUnitName: TStringField;
    qryDetailStuffsStuffSize: TStringField;
    qryDetailStuffsStuffDiameter: TFloatField;
    qryDetailStuffsStuffAlloy: TStringField;
    qryDetailStuffsStuffGrade: TWordField;
    qryDetailStuffsEntity: TFloatField;
    qryDetailStuffsWeight: TFloatField;
    qryDetailStuffsPrice: TBCDField;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actShowCardex: TAction;
    actFilter: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    StatusBar1: TStatusBar;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel22: TppLabel;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppDBPipeline2: TppDBPipeline;
    ppLabel8: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    actSort: TAction;
    qryDetailStuffsPersonID1: TIntegerField;
    ppLine16: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine56: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine2: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine36: TppLine;
    ppDBText24: TppDBText;
    ppLine38: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel4: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLine50: TppLine;
    ppLine58: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppLine4: TppLine;
    qryDetailStuffsStuffCode: TLargeintField;
    DBGrid1: TCedarDbgrid;
    pnlLblLimitPlace: TPanel;
    lblDate: TLabel;
    lblFilter: TLabel;
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryDetailStuffsAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actShowCardexExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    OrginalSQL: String;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptEntityOnDetailStuffsAllStoreF: TrptEntityOnDetailStuffsAllStoreF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2,
  sort2, RptCardex, FaraConsts;

{$R *.dfm}

procedure TrptEntityOnDetailStuffsAllStoreF.UpdateFilter;
var
  s: String;
begin
  if opt.StuffKindActive then
    s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
  if s = '' then
    s := '0,1';
  qryDetailStuffs.SQL.Text := StringReplace(OrginalSQL, ':StuffKindActive', s,
    [rfReplaceAll]);
  with qryDetailStuffs do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDForm').Value :=
      GetcFrom(myParams.ParamValues['n_StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['n_StoreID'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);

    // LEFT OUTER JOIN   UsersStore ON Recipts.StoreID = UsersStore.n_StoreID
    // ( (UsersStore.n_UserID = :UserID )or ( :UserIDAdmin = 127))  AND
    // Parameters.ParamByName('UserID').Value := User.id;
    // Parameters.ParamByName('UserIDAdmin').Value :=
    // ifthen(User.PowerUser, 127, User.id);

    Active := True;
  end; // with
  lblDate.Caption := ' «“  «—ÌŒ ' + qryDetailStuffs.Parameters.ParamByName
    ('DateFrom').Value + '  « ' + qryDetailStuffs.Parameters.ParamByName
    ('DateTo').Value;
  lblFilter.Caption := '«“ ﬂœ ﬂ«·«Ì ' +
    GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint) + '  « ' +
    GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

end;

procedure TrptEntityOnDetailStuffsAllStoreF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryDetailStuffs.DisableControls;
    // InitReportFile(Self,ppReport1,'rptEntityOnDetailStuffsAllStore');
    ppReport1.Print;
  finally
    qryDetailStuffs.EnableControls;
  end; // try
end;

procedure TrptEntityOnDetailStuffsAllStoreF.actSendToExcelExecute
  (Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptEntityOnDetailStuffsAllStoreF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if opt.StuffKindActive then
        AddItem(DMF.adcBSell, 'StuffKindActive', '‰Ê⁄ ﬂ«·«', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''ﬁÿ⁄Ì''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''«„«‰Ì'' as OwnerShipKindName FROM  Config ',
          '');

      AddItemFilter(GetFilter, TFilterControlCode);

      AddItem(DMF.adcBSell, 'Date', ' «—ÌŒ', ' «—ÌŒ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'select  ''' + APPBank.StartYear +
        ''',max(reciptDate)From Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMF.adcBSell, 'StuffCode', ' ﬂ«·«', 'ﬂœ', ftLargeint, dvMinMax,
      // '', '', ciLookup,
      // 'SELECT     c_StuffCode, c_StuffName  FROM  StuffCoding  ',
      // 'select min(c_StuffCode),max(c_StuffCode) from StuffCoding');

      AddItem(DMF.adcBSell, 'n_StoreID', ' «‰»«—', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT   n_StoreID, c_StoreName  from stores ',
        'select min(n_StoreID),max(n_StoreID) from stores ');
      if ShowModal = mrok then
      begin
        GetFilterString;
        UpdateFilter;
      end // if
    finally;
      free;
    end // try
  end // with

end;

procedure TrptEntityOnDetailStuffsAllStoreF.FormShow(Sender: TObject);
begin
  inherited;
  // myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('StuffCode') = nil then
    close;
end;

procedure TrptEntityOnDetailStuffsAllStoreF.qryDetailStuffsAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := ' ⁄œ«œ=' + IntToStr(qryDetailStuffs.RecordCount);
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := '„ﬁœ«—=' +
      CurrToStr(CalcSumFileds(qryDetailStuffs, 'entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := 'Ê“‰=' +
      CurrToStr(CalcSumFileds(qryDetailStuffs, 'weight'));
  if PriceOnStoreType(GetcFrom(myParams.ParamValues['n_StoreID'], ftInteger),
    DBGrid1, qryDetailStuffs) then
    StatusBar1.Panels[0].Text := '„»·€=' +
      CurrToStrF(CalcSumFileds(qryDetailStuffs, 'Price'), ffCurrency, 0)
  else
    StatusBar1.Panels[0].Text := '';
end;

procedure TrptEntityOnDetailStuffsAllStoreF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryDetailStuffs.SQL.Text;
  Entity_Weight(DBGrid1);
  DBGrid1.SetFooter4Sum([]);
end;

procedure TrptEntityOnDetailStuffsAllStoreF.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ' + qryDetailStuffs.Parameters.ParamByName('DateFrom').Value
    + ' «  «—ÌŒ ' + qryDetailStuffs.Parameters.ParamByName('DateTo').Value;
end;

procedure TrptEntityOnDetailStuffsAllStoreF.ppLabel9GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ ﬂ«·«Ì ' + GetcFrom(myParams.ParamValues['StuffCode'],
    ftLargeint) + '  « ' + GetcTo(myParams.ParamValues['StuffCode'],
    ftLargeint);
end;

procedure TrptEntityOnDetailStuffsAllStoreF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptEntityOnDetailStuffsAllStoreF.ppSystemVariable1GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptEntityOnDetailStuffsAllStoreF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetailStuffs);
end;

procedure TrptEntityOnDetailStuffsAllStoreF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetailStuffs);
end;

procedure TrptEntityOnDetailStuffsAllStoreF.ppLblCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptEntityOnDetailStuffsAllStoreF.actShowCardexExecute
  (Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryDetailStuffs.Fieldbyname('StoreID').AsInteger,
    qryDetailStuffs.Fieldbyname('StuffCode').AsLargeInt, 2);
  // MyParams.CreateParam(ftInteger,'store',ptInput).AsString:=myParams.ParamValues['n_StoreID'];
  // MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=myParams.ParamValues['Date'];
  // MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
  // qryDetailStuffs.FieldByName('StuffCode').AsLargeInt+';'+qryDetailStuffs.FieldByName('StuffCode').AsLargeInt;
  // CreateMDIForm2(TRptCardexF,RptCardexF,Self,2);
  //
  // RptCardexF.cmbStore.ItemIndex:=RptCardexF.cmbStore.Items.IndexOfObject(TObject(qryStore.Fieldbyname('n_StoreID').AsInteger));
  // if not RptCardexF.qryStuffs.Locate('StuffCode',qryEntity.FieldByName('StuffCode').Value,[])
  // then Warn('ﬂ«·«Ì „Ê—œ ‰Ÿ— Ì«›  ‰‘œ');
  //
  // RptCardexF.qryStuffs.Locate('StuffCode',qryDetailStuffs.FieldByName('StuffCode').Value,[])
end;

procedure TrptEntityOnDetailStuffsAllStoreF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowCardex.Execute
end;

procedure TrptEntityOnDetailStuffsAllStoreF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDetailStuffs.Fieldbyname(opt.SearchCode));
end;

end.
