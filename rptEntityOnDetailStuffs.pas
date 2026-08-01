// create by morteza in date 84/05/12
unit rptEntityOnDetailStuffs;

// <><>
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ppDB, ppDBPipe, Math,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ComCtrls, ppBands, ppCache,
  ppCtrls, ppStrtch, ppSubRpt, ppVar, ppPrnabl, Menus, ppEndUsr, ppParameter,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions;

type
  TrptEntityOnDetailStuffsF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
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
    lblDate: TLabel;
    lblFilter: TLabel;
    lblStore: TLabel;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
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
    qryStore: TADOQuery;
    srcStore: TDataSource;
    StatusBar1: TStatusBar;
    qryStoren_StoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    actSort: TAction;
    qryDetailStuffsPersonID1: TIntegerField;
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
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppDBText15: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppDBText16: TppDBText;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine56: TppLine;
    ppLine58: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine2: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine36: TppLine;
    ppDBText24: TppDBText;
    ppLine38: TppLine;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine46: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel4: TppLabel;
    ppLine50: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine6: TppLine;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel22: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine37: TppLine;
    pm1: TPopupMenu;
    mniEntityOnDetailStuffs: TMenuItem;
    mniEntityOnDetailStuffs1: TMenuItem;
    mniAllClick1: TMenuItem;
    qryDetailStuffsStuffCode: TLargeintField;
    qryDetailStuffsc_StuffTecInfo: TStringField;
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryDetailStuffsAfterOpen(DataSet: TDataSet);
    procedure qryStoreAfterScroll(DataSet: TDataSet);
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
    procedure mniAllClick1Click(Sender: TObject);
  private
    OrginalSQL: String;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptEntityOnDetailStuffsF: TrptEntityOnDetailStuffsF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, searchCode_ADO, search2,
  sort2, RptCardex, FaraConsts;

{$R *.dfm}

procedure TrptEntityOnDetailStuffsF.UpdateFilter;
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
  end; // with
  with qryStore do
  begin
    Active := False;
    Parameters.ParamByName('StoreIdFrom').Value :=
      GetcFrom(myParams.ParamValues['n_StoreID'], ftInteger);
    Parameters.ParamByName('StoreIdTo').Value :=
      GetcTo(myParams.ParamValues['n_StoreID'], ftInteger);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);
    Active := True;
  end;
  lblDate.Caption := ' «“  «—ÌŒ ' + qryDetailStuffs.Parameters.ParamByName
    ('DateFrom').Value + '  « ' + qryDetailStuffs.Parameters.ParamByName
    ('DateTo').Value;
  lblFilter.Caption := '«“ ﬂœ ﬂ«·«Ì ' +
    GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint) + '  « ' +
    GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);

end;

procedure TrptEntityOnDetailStuffsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptEntityOnDetailStuffsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptEntityOnDetailStuffsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptEntityOnDetailStuffsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True);
end;

procedure TrptEntityOnDetailStuffsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdselected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_normal_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TrptEntityOnDetailStuffsF.actFilterExecute(Sender: TObject);
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

procedure TrptEntityOnDetailStuffsF.FormShow(Sender: TObject);
begin
  inherited;
  // myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('StuffCode') = nil then
    close;
end;

procedure TrptEntityOnDetailStuffsF.BitBtn1Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(DMF.adcBSell, c, lblStore.Caption + 'Â«',
    'SELECT n_StoreID, c_StoreName FROM Stores ',
    ['òœ', '‰«„ ' + lblStore.Caption], alLeft) <> '' then
    qryStore.Locate('n_StoreID', c, []);
end;

procedure TrptEntityOnDetailStuffsF.qryDetailStuffsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := ' ⁄œ«œ=' + IntToStr(qryDetailStuffs.RecordCount);
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := '„ﬁœ«—=' +
      CurrToStr(CalcSumFileds(qryDetailStuffs, 'entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := 'Ê“‰=' +
      CurrToStr(CalcSumFileds(qryDetailStuffs, 'weight'));
  if PriceOnStoreType(qryStore.fieldbyname('n_storeid').AsInteger, DBGrid1,qryDetailStuffs) then
    StatusBar1.Panels[0].Text := '„»·€=' +
      CurrToStrF(CalcSumFileds(qryDetailStuffs, 'Price'), ffCurrency, 0)
  else
    StatusBar1.Panels[0].Text := '';
end;

procedure TrptEntityOnDetailStuffsF.qryStoreAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDetailStuffs do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      qryStore.fieldbyname('n_StoreID').AsInteger;
    Parameters.ParamByName('StoreIDTo').Value :=
      qryStore.fieldbyname('n_StoreID').AsInteger;
    Active := True;
  end; // with
end;

procedure TrptEntityOnDetailStuffsF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryDetailStuffs.SQL.Text;
  Entity_Weight(DBGrid1);
end;

procedure TrptEntityOnDetailStuffsF.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ' + qryDetailStuffs.Parameters.ParamByName('DateFrom').Value
    + ' «  «—ÌŒ ' + qryDetailStuffs.Parameters.ParamByName('DateTo').Value;
end;

procedure TrptEntityOnDetailStuffsF.ppLabel9GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ ﬂ«·«Ì ' + GetcFrom(myParams.ParamValues['StuffCode'],
    ftLargeint) + '  « ' + GetcTo(myParams.ParamValues['StuffCode'],
    ftLargeint);
end;

procedure TrptEntityOnDetailStuffsF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptEntityOnDetailStuffsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptEntityOnDetailStuffsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetailStuffs);
end;

procedure TrptEntityOnDetailStuffsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetailStuffs);
end;

procedure TrptEntityOnDetailStuffsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptEntityOnDetailStuffsF.actShowCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryStore.fieldbyname('n_StoreID').AsInteger,
    qryDetailStuffs.fieldbyname('StuffCode').AsLargeInt, 2);
  // MyParams.CreateParam(ftInteger,'store',ptInput).AsString:=myParams.ParamValues['n_StoreID'];
  // MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=myParams.ParamValues['Date'];
  // MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
  // qryDetailStuffs.FieldByName('StuffCode').AsLargeInt+';'+qryDetailStuffs.FieldByName('StuffCode').AsLargeInt;
  // CreateMDIForm2(TRptCardexF,RptCardexF,Self,2);
  //
  // RptCardexF.cmbStore.ItemIndex:=RptCardexF.cmbStore.Items.IndexOfObject(TObject(qryStore.Fieldbyname('n_StoreID').AsInteger));
  // if not RptCardexF.qryStuffs.Locate('StuffCode',qryDetailStuffs.FieldByName('StuffCode').Value,[])
  // then Warn('ﬂ«·«Ì „Ê—œ ‰Ÿ— Ì«›  ‰‘œ');

end;

procedure TrptEntityOnDetailStuffsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowCardex.Execute
end;

procedure TrptEntityOnDetailStuffsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDetailStuffs.fieldbyname(opt.SearchCode));
end;

procedure TrptEntityOnDetailStuffsF.mniAllClick1Click(Sender: TObject);
begin
  inherited;
  try
    qryStore.DisableControls;
    qryDetailStuffs.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
  finally
    qryStore.EnableControls;
    qryDetailStuffs.EnableControls;
  end; // try
end;

end.
