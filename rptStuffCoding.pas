{ -----------------------------------------------------------------------------
  Unit Name: rptStuffCoding
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit rptStuffCoding;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, ppDB, ppModule,
  ppStrtch, ppRegion, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ComCtrls, SumDBGrid,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.Menus;

type
  TrptStuffCodingF = class(Ttemplate2MDIF)
    qryStuffCoding: TADOQuery;
    SrcStuffCoding: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    DBNavigator1: TDBNavigator;
    actFilter: TAction;
    qryStuffCodingGroupName: TStringField;
    qryStuffCodingc_StuffName: TStringField;
    qryStuffCodingUnitName: TStringField;
    qryStuffCodingReciptType: TWordField;
    qryStuffCodingReciptCaption: TStringField;
    qryStuffCodingentity: TFloatField;
    qryStuffCodingweight: TFloatField;
    qryStuffCodingprice: TBCDField;
    actSendExel: TAction;
    qryInitQry: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    actSort: TAction;
    BitBtn1: TBitBtn;
    qryStuffCodingTotallSellPrice: TBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel52: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppLblStoreID: TppLabel;
    ppLblReciptDate: TppLabel;
    ppLblStuffCode: TppLabel;
    ppLblReciptNumber: TppLabel;
    ppLabel1: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppDBText34: TppDBText;
    ppDBTextIOEntity: TppDBText;
    ppDBTextIOWeight: TppDBText;
    ppDBTextTotalIOPrice: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppCalcIOEntity: TppDBCalc;
    ppCalcIOWeight: TppDBCalc;
    ppCalcTotalIoPrice: TppDBCalc;
    ppLabel2: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel60: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel8: TppLabel;
    qryStuffCodingsd1: TStringField;
    qryStuffCodingsd2: TStringField;
    qryStuffCodingsd3: TStringField;
    qryStuffCodingsd4: TStringField;
    qryStuffCodingsd5: TStringField;
    qryStuffCodingsd6: TStringField;
    qryStuffCodingsd7: TStringField;
    qryStuffCodingsd8: TStringField;
    qryStuffCodingsd9: TStringField;
    qryStuffCodingStandardSumPrice: TBCDField;
    qryStuffCodingSumPrice: TBCDField;
    qryStuffCodingPriceAdd: TBCDField;
    qryStuffCodingDeficitValue: TBCDField;
    qryStuffCodingTaxValue: TBCDField;
    qryStuffCodingStuffCode: TLargeintField;
    qryStuffCodingPortage: TBCDField;
    qryStuffCodingc_StuffTecInfo: TStringField;
    qryStuffCodingGroupID: TIntegerField;
    qryStuffCodingc_KeepPlace: TStringField;
    qryStuffCodingCabinet: TWideStringField;
    qryStuffCodingUnitName2: TStringField;
    qryStuffCodingSt1Name: TStringField;
    DBGrid1: TCedarDbgrid;
    qryStuffCodingKeepPlace: TStringField;
    qryStuffCodingCabinets: TWideStringField;
    popPrint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    qryStuffCodingNationalStuffCode: TStringField;
    qryStuffCodingTaxCo: TFloatField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure ShowForm(GroupID: Integer);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblStoreIDGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptDateGetText(Sender: TObject; var Text: String);
    procedure ppLblStuffCodeGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptNumberGetText(Sender: TObject; var Text: String);
    procedure ppLabel42GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure ppLabel43GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actshowChartExecute(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
    formType: Byte;
    OrginalSQL: String;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptStuffCodingF: TrptStuffCodingF;
  rptStuffCodinf2f: TrptStuffCodingF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2,
  sort2, TreeChart, FormFunctions, Filter_ADO_Const;

{$R *.dfm}
{ TrptStuffCodingF }

procedure TrptStuffCodingF.UpdateFilter;
var
  s: String;
begin
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryStuffCoding);
  if opt.StuffKindActive then
    s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
  if s = '' then
    s := '0,1';
  qryStuffCoding.SQL.Text := StringReplace(OrginalSQL, ':StuffKindActive', s,
    [rfReplaceAll]);
  // s:=GetcFrom(myParams.ParamValues['TypeChecked'],ftString);
  // if s='' then s:='11';
  // qryStuffCoding.SQL.Text:=StringReplace(OrginalSQL,':TypeChecked',s,[rfReplaceAll]);

  with qryStuffCoding do
  begin
    Active := False;

    Parameters.ParamByName('ReciptType').Value := formType;

    Parameters.ParamByName('custIdfrom').Value :=
      GetcFrom(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('custIdTo').Value :=
      GetcTo(myParams.ParamValues['custId'], ftInteger);

    Parameters.ParamByName('custId2from').Value :=
      GetcFrom(myParams.ParamValues['custId2'], ftInteger);
    Parameters.ParamByName('custId2To').Value :=
      GetcTo(myParams.ParamValues['custId2'], ftInteger);

    Parameters.ParamByName('custId3from').Value :=
      GetcFrom(myParams.ParamValues['PersonID3'], ftInteger);
    Parameters.ParamByName('custId3To').Value :=
      GetcTo(myParams.ParamValues['PersonID3'], ftInteger);

    // Parameters.ParamByName('GroupIDFrom').Value := 0;
    // Parameters.ParamByName('GroupIDTo').Value := 2147483647;

    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    UpdateFilterAllReciptTypes(qryInitQry, qryStuffCoding, myParams);

    Active := True;
  end; // with

end;

procedure TrptStuffCodingF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      if opt.StuffKindActive then
        AddItem(DMF.adcBSell, 'StuffKindActive', '‰Ê⁄ ﬂ«·«', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''ﬁÿ⁄Ì''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''«„«‰Ì'' as OwnerShipKindName FROM  Config ',
          '');

      AddItemFilter(GetFilter, TFilterPersonID3);

      AddItem(DMF.adcBSell, 'custID2', '„‘ —Ì2', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT custid,custname from customers ',
        'select min(custid),max(custid) from customers');

      AddItem(DMF.adcBSell, 'custID', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT custid,custname from customers ',
        'select min(custid),max(custid) from customers');

      FilterAllReciptTypes(qryInitQry, fi);

      AddItemFilter(GetFilter, TFilterGroupID);

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

procedure TrptStuffCodingF.FormShow(Sender: TObject);
begin
  inherited;
  // ColorDBGrid(DBGrid1);
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptStuffCodingF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qryStuffCoding.DisableControls;
    InitReportFile(ppReport1, 'rptStuffCoding');
  finally
    qryStuffCoding.EnableControls;
  end; // try

end;

procedure TrptStuffCodingF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qryStuffCoding.DisableControls;
    InitReportFile(ppReport1, 'rptStuffCodingDiscountActive', True);
    Exit;
  finally
    qryStuffCoding.EnableControls;
  end; // try

end;

procedure TrptStuffCodingF.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  OrginalSQL := qryStuffCoding.SQL.Text;
  formType := var_glb_gParam;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := ' ê“«—‘ ' + FieldByName('ReciptCaption').AsString +
      '  » ›ﬂÌﬂ ﬂœ ﬂ«·«';

    b := (FieldByName('DiscountActive').AsInteger = 1) or
      (FieldByName('VATActive').AsInteger = 1) or
      (FieldByName('PawsFieldsActive').AsInteger > 0) OR
      (FieldByName('CommissionActive').AsInteger > 0);
    setColumns2(DBGrid1, b, 'TotallSellPrice');
    if b then
      qryStuffCoding.FieldByName('TotallSellPrice').Tag := 3;

    b := FieldByName('StandardRateActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'StandardSumPrice');
    setColumns2(DBGrid1, b, 'SumPrice');
    setColumns2(DBGrid1, b, 'PriceAdd');

    b := FieldByName('VATActive').AsInteger = 1;
    setColumns2(DBGrid1, b, 'TaxValue');

    b := FieldByName('DiscountActive').AsInteger >= 1;
    setColumns2(DBGrid1, b, 'DeficitValue');

    b := FieldByName('PawsFieldsActive').AsInteger in [1, 3];
    setColumns2(DBGrid1, b, 'Portage');

  end; // whit
  Entity_Weight(DBGrid1);
  SetExtraCoding(qryStuffCoding, DBGrid1);
  // DBGrid1.SetFooter4Sum([]);
end;

procedure TrptStuffCodingF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TrptStuffCodingF.ShowForm(GroupID: Integer);
begin
  with qryStuffCoding do
  begin
    Active := False;
    Parameters.ParamByName('GroupIDFrom').Value := GroupID;
    Parameters.ParamByName('GroupIDTo').Value := GroupID;
    Active := True;
  end; // with
end;

procedure TrptStuffCodingF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);

end;

procedure TrptStuffCodingF.ppLblStoreIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ «‰»«— ' + IntToStr(qryStuffCoding.Parameters.ParamByName
    ('StoreIDFrom').Value) + '  « ' +
    IntToStr(qryStuffCoding.Parameters.ParamByName('StoreIDTo').Value)
end;

procedure TrptStuffCodingF.ppLblReciptDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + qryStuffCoding.Parameters.ParamByName('ReciptDateFrom')
    .Value + '  « ' + qryStuffCoding.Parameters.ParamByName
    ('ReciptDateTo').Value
end;

procedure TrptStuffCodingF.ppLblStuffCodeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ ﬂ«·«Ì ' + GetcFrom(myParams.ParamValues['StuffCode'], ftString)
    + '  « ' + GetcTo(myParams.ParamValues['StuffCode'], ftString)
end;

procedure TrptStuffCodingF.ppLblReciptNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ' + IntToStr(qryStuffCoding.Parameters.ParamByName
    ('ReciptNumberFrom').Value) + '  « ' +
    IntToStr(qryStuffCoding.Parameters.ParamByName('ReciptNumberTo').Value)
end;

procedure TrptStuffCodingF.ppLabel42GetText(Sender: TObject; var Text: String);
begin
  inherited;
  // Text:=ReadBankConfig('CompanyName','‘—ﬂ  ÿ—Õ Ê Å—œ«“‘ ›—«—«Ì«‰Â')
  Text := APPBank.CompanyName
  // Text:=var_glb_CompanyName;
end;

procedure TrptStuffCodingF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptStuffCodingF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptStuffCodingF.ppLabel43GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := rptStuffCodingF.Caption
end;

procedure TrptStuffCodingF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffCoding);
end;

procedure TrptStuffCodingF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryStuffCoding);
end;

procedure TrptStuffCodingF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryStuffCoding, Self);
end;

end.
