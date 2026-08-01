unit StuffTranction_Detail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DBCtrls, ComCtrls, Menus, Math,
  ppCtrls, ppReport, ppPrnabl, ppClass, ppStrtch, ppSubRpt, ppBands,
  ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, ppVar, ReciptsFunctions ,
  ppModule, ppTypes,  ppParameter, Filter_ADO_Const, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TStuffTranction_DetailF = class(Ttemplate2MDIF)
    qryStuff: TADOQuery;
    qryStuffInc: TADOQuery;
    SrcStuff: TDataSource;
    Panel1: TPanel;
    qryStuffc_StuffName: TStringField;
    qryStuffc_StuffTecInfo: TStringField;
    qryStuffUnitName: TStringField;
    qryStuffEntity: TFloatField;
    qryStuffWeight: TFloatField;
    qryStuffPrice: TBCDField;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Label2: TLabel;
    qryStuffIncReciptType: TWordField;
    qryStuffIncReciptCaption: TStringField;
    qryStuffDec: TADOQuery;
    SrcStuffInc: TDataSource;
    SrcStuffDec: TDataSource;
    qryStuffIncEntity: TFloatField;
    qryStuffIncWeight: TFloatField;
    qryStuffIncPrice: TBCDField;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    actFilter: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    PopMenu: TPopupMenu;
    AllC_l_i_c_k_: TMenuItem;
    DetailNote: TMenuItem;
    N1: TMenuItem;
    actPrint: TAction;
    ppStuffs: TppDBPipeline;
    ppStuffInc: TppDBPipeline;
    ppStuffDec: TppDBPipeline;
    ppReport2: TppReport;
    PopPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    BitBtn5: TBitBtn;
    actPrintVijeh: TAction;
    qryStuffIncTotallSellPrice: TBCDField;
    qryStuffTotallSellPrice: TBCDField;
    ppHeaderBand2: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel18: TppLabel;
    ppLabel7: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine8: TppLine;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine28: TppLine;
    ppLine25: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppLine37: TppLine;
    ppLine43: TppLine;
    ppDetailBand4: TppDetailBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand5: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand6: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText16: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLine23: TppLine;
    ppLine26: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine18: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLine32: TppLine;
    ppLine34: TppLine;
    ppLine36: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine44: TppLine;
    ppLine27: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppDetailBand7: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppDetailBand8: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel4: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine24: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    qryStuffStuffCode: TLargeintField;
    qryStuffIncStuffCode: TLargeintField;
    qryStuffDecStuffCode: TLargeintField;
    qryStuffDecReciptType: TWordField;
    qryStuffDecReciptCaption: TStringField;
    qryStuffDecEntity: TFloatField;
    qryStuffDecWeight: TFloatField;
    qryStuffDecPrice: TBCDField;
    qryStuffDecTotallSellPrice: TBCDField;
    qryStuffGroupID: TIntegerField;
    ADOQuery1: TADOQuery;
    N11: TMenuItem;
    N21: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    grdStuff: TCedarDbgrid;
    grdStuffDec: TCedarDbgrid;
    grdStuffInc: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure qryStuffAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure DetailNoteClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure grdStuffKeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure qryStuffWeightGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure MenuItem1Click(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    OrginalSQL, OrginalSQLSumStuffInc, OrginalSQLSumStuffIDec: String;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  StuffTranction_DetailF: TStuffTranction_DetailF;

implementation

uses DM, filter_ADO, FilterClass_ADO, search2, sort2, GlobalPro,
  DBGrid2Print, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TStuffTranction_DetailF.UpdateFilter;
var
  s: String;
begin
  if opt.StuffKindActive then
    s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
  if s = '' then
    s := '0,1';
  qryStuff.SQL.Text := StringReplace(OrginalSQL, ':StuffKindActive', s,
    [rfReplaceAll]);
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    grdStuff, qryStuff);
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    grdStuffInc, qryStuffInc);
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    grdStuffDec, qryStuffDec);
  with qryStuffInc do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    // Parameters.ParamByName('StuffCode').Value:=qryStuff.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('ItemPersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ItemPersonID'], ftInteger);
    Parameters.ParamByName('ItemPersonIDTo').Value :=
      GetcTo(myParams.ParamValues['ItemPersonID'], ftInteger);
    // Parameters.ParamByName('UserID').Value := User.id;
    // Parameters.ParamByName('UserIDAdmin').Value := ifthen(User.a dmin, 127, User.id);
    // Active:=True;

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

  end; // with
  with qryStuffDec do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    // parameters.ParamByName('StuffCode').Value:=qryStuff.FieldByName('StuffCode').AsLargeInt;
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('ItemPersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ItemPersonID'], ftInteger);
    Parameters.ParamByName('ItemPersonIDTo').Value :=
      GetcTo(myParams.ParamValues['ItemPersonID'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    // Parameters.ParamByName('UserID').Value := User.id;
    // Parameters.ParamByName('UserIDAdmin').Value := ifthen(User.a dmin, 127, User.id);
    // Active:=true;
  end; // with

  with qryStuff do
  begin
    Active := False;
    // Parameters.ParamByName('UserID').Value := User.id;
    // Parameters.ParamByName('UserIDAdmin').Value := ifthen(User.a dmin, 127, User.id);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('ItemPersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ItemPersonID'], ftInteger);
    Parameters.ParamByName('ItemPersonIDTo').Value :=
      GetcTo(myParams.ParamValues['ItemPersonID'], ftInteger);
    LblShowLimitPlace1.Caption := '«“ «‰»«—' +
      IntToStr(Parameters.ParamByName('StoreIDFrom').Value) + '  « ' +
      IntToStr(Parameters.ParamByName('StoreIDTo').Value);

    LblShowLimitPlace2.Caption := '«“  «—ÌŒ' + Parameters.ParamByName
      ('ReciptDateFrom').Value + '  « ' + Parameters.ParamByName
      ('ReciptDateTo').Value;
    Active := True;
  end; // with


end;

procedure TStuffTranction_DetailF.actFilterExecute(Sender: TObject);
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

      AddItem(DMF.adcBSell, 'ItemPersonID', ' ‰«„ ÅﬂÌ‰ê ', 'ﬂœ ÅﬂÌ‰ê',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE     (GroupType = 4))) ',
        'select 0 ,999999999 ');
      /// isnull(Max(CustID),)
      // AddItem(DMF.adcBSell,'Date','  «—ÌŒ ','',ftDate,dvDefaults,miladi2Shamsi(Now),'',ciSingle, '','');
      AddItem(DMF.adcBSell, 'Date', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);

      // AddItem(DMF.adcBSell, 'StuffCode', ' ﬂœ ﬂ«·« ', 'ﬂœ', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM   StuffCoding',
      // 'SELECT MIN(c_StuffCode), MAX(c_StuffCode) FROM StuffCoding');

      AddItem(DMF.adcBSell, 'GroupID', ' ê—ÊÂ ﬂ«·« ', 'ê—ÊÂ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT GroupID, GroupName  FROM  StuffGroups ',
        'SELECT  MIN(GroupID), MAX(GroupID) FROM  StuffGroups');
      AddItem(DMF.adcBSell, 'StoreID', ' «‰»«— ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
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

procedure TStuffTranction_DetailF.qryStuffAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryStuffInc do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      DataSet.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end; // with
  with qryStuffDec do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      DataSet.FieldByName('StuffCode').AsLargeInt;
    Active := True;
  end; // with
  // StatusBar1.Panels[2].Text:=' Ã„⁄ „ﬁœ«— :˛  '+CurrToStrF(CalcSumFileds(qryStuffInc,'Entity'),ffGeneral,3);
  // StatusBar1.Panels[1].Text:=' Ã„⁄ Ê“‰ :˛  '+CurrToStrF(CalcSumFileds(qryStuffInc,'Weight'),ffGeneral,3);
  // StatusBar1.Panels[0].Text:=' Ã„⁄ „»·€ :˛  '+CurrToStrF(CalcSumFileds(qryStuffInc,'Price'),ffCurrency,0);
  // StatusBar2.Panels[2].Text:=' Ã„⁄ „ﬁœ«— :˛  '+CurrToStrF(CalcSumFileds(qryStuffDec,'Entity'),ffGeneral,3);
  // StatusBar2.Panels[1].Text:=' Ã„⁄ Ê“‰ :˛  '+CurrToStrF(CalcSumFileds(qryStuffDec,'Weight'),ffGeneral,3);
  // StatusBar2.Panels[0].Text:=' Ã„⁄ „»·€ :˛  '+CurrToStrF(CalcSumFileds(qryStuffDec,'Price'),ffCurrency,0);
end;

procedure TStuffTranction_DetailF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('StuffCode') = nil then
    close;
end;

procedure TStuffTranction_DetailF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuff);
end;

procedure TStuffTranction_DetailF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryStuff);
end;

procedure TStuffTranction_DetailF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffTranction_DetailF.AllC_l_i_c_k_Click(Sender: TObject);
begin
  inherited;
  SendToExcel(grdStuff);
end;

procedure TStuffTranction_DetailF.DetailNoteClick(Sender: TObject);
begin
  inherited;
  SendToExcel(grdStuffInc);
end;

procedure TStuffTranction_DetailF.N1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(grdStuffDec);
end;

procedure TStuffTranction_DetailF.grdStuffKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryStuff.FieldByName('StuffCode'));
end;

procedure TStuffTranction_DetailF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TStuffTranction_DetailF.qryStuffWeightGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := CurrToStrF(qryStuff.FieldByName('Weight').AsFloat, ffGeneral, 3);
end;

procedure TStuffTranction_DetailF.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblShowLimitPlace1.Caption + '  ' + LblShowLimitPlace2.Caption;
end;

procedure TStuffTranction_DetailF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TStuffTranction_DetailF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TStuffTranction_DetailF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TStuffTranction_DetailF.MenuItem1Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppStuffs.RangeBegin := rbCurrentRecord;
        ppStuffs.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppStuffs.RangeBegin := rbFirstRecord;
        ppStuffs.RangeEnd := reLastRecord;
      end;
  end;

  try
    qryStuff.DisableControls;
    qryStuffInc.DisableControls;
    qryStuffDec.DisableControls;
    if opt.ActiveSellPrice2 then
      InitReportFile(ppReport2, (Sender as TMenuItem).Hint +
        'ActiveSellPrice2', True)
    else
      InitReportFile(ppReport2, (Sender as TMenuItem).Hint);
  finally
    qryStuff.EnableControls;
    qryStuffInc.EnableControls;
    qryStuffDec.EnableControls;
  end; // try
end;

procedure TStuffTranction_DetailF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdStuff, 0);
end;

procedure TStuffTranction_DetailF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryStuff.SQL.Text;
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'TotallSellPrice');
  // setColumns2(DBGrid2, opt.ActiveSellPrice2, 'TotallSellPrice');
  // setColumns2(DBGrid3, opt.ActiveSellPrice2, 'TotallSellPrice');
//  qryStuffInc.FieldByName('TotallSellPrice').Visible := opt.ActiveSellPrice2;
//  qryStuff.FieldByName('TotallSellPrice').Visible := opt.ActiveSellPrice2;
//  qryStuffDec.FieldByName('TotallSellPrice').Visible := opt.ActiveSellPrice2;

    HideOrShowSellPriceFields(qryStuffInc,grdStuffInc);
    HideOrShowSellPriceFields(qryStuff,grdStuff);
    HideOrShowSellPriceFields(qryStuffDec,grdStuffDec);


  setColumns2(grdStuff, opt.StuffTecInfoActive, 'c_StuffTecInfo');

end;

end.
