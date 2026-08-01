// mahmood
unit rptStuffCodingMonths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, ppDB, ppModule,
  ppStrtch, ppRegion, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, Menus, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions, FarsiReportBuilde, SumDBGrid,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptStuffCodingMonthsF = class(Ttemplate2MDIF)
    qryStuffCoding: TADOQuery;
    SrcStuffCoding: TDataSource;
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
    actSendExel: TAction;
    qryInitQry: TADOQuery;
    actPrint: TAction;
    actSort: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    rptStuffCodingMonths1: TMenuItem;
    rptStuffCodingMonths2: TMenuItem;
    rptStuffCodingMonths1_line: TMenuItem;
    rptStuffCodingMonths2_line: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel23: TppLabel;
    ppLine70: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLine22: TppLine;
    ppLine20: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppDBText25: TppDBText;
    ppLine69: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel24: TppLabel;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel25: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLine6: TppLine;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel26: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppLine37: TppLine;
    ppLine54: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine7: TppLine;
    ppLine60: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine3: TppLine;
    ppLine8: TppLine;
    qryStuffCodingStuffCode: TLargeintField;
    qryStuffCodingc_StuffTecInfo: TStringField;
    qryStuffCodingGroupID: TIntegerField;
    qryStuffCodingM1Entity: TFloatField;
    qryStuffCodingM1Weight: TFloatField;
    qryStuffCodingM1Price: TBCDField;
    qryStuffCodingM1TotallSellPrice: TBCDField;
    qryStuffCodingM2Entity: TFloatField;
    qryStuffCodingM2Weight: TFloatField;
    qryStuffCodingM2Price: TBCDField;
    qryStuffCodingM2TotallSellPrice: TBCDField;
    qryStuffCodingM3Entity: TFloatField;
    qryStuffCodingM3Weight: TFloatField;
    qryStuffCodingM3Price: TBCDField;
    qryStuffCodingM3TotallSellPrice: TBCDField;
    qryStuffCodingM4Entity: TFloatField;
    qryStuffCodingM4Weight: TFloatField;
    qryStuffCodingM4Price: TBCDField;
    qryStuffCodingM4TotallSellPrice: TBCDField;
    qryStuffCodingM5Entity: TFloatField;
    qryStuffCodingM5Weight: TFloatField;
    qryStuffCodingM5Price: TBCDField;
    qryStuffCodingM5TotallSellPrice: TBCDField;
    qryStuffCodingM6Entity: TFloatField;
    qryStuffCodingM6Weight: TFloatField;
    qryStuffCodingM6Price: TBCDField;
    qryStuffCodingM6TotallSellPrice: TBCDField;
    qryStuffCodingM7Entity: TFloatField;
    qryStuffCodingM7Weight: TFloatField;
    qryStuffCodingM7Price: TBCDField;
    qryStuffCodingM7TotallSellPrice: TBCDField;
    qryStuffCodingM8Entity: TFloatField;
    qryStuffCodingM8Weight: TFloatField;
    qryStuffCodingM8Price: TBCDField;
    qryStuffCodingM8TotallSellPrice: TBCDField;
    qryStuffCodingM9Entity: TFloatField;
    qryStuffCodingM9Weight: TFloatField;
    qryStuffCodingM9Price: TBCDField;
    qryStuffCodingM9TotallSellPrice: TBCDField;
    qryStuffCodingM10Entity: TFloatField;
    qryStuffCodingM10Weight: TFloatField;
    qryStuffCodingM10Price: TBCDField;
    qryStuffCodingM10TotallSellPrice: TBCDField;
    qryStuffCodingM11Entity: TFloatField;
    qryStuffCodingM11Weight: TFloatField;
    qryStuffCodingM11Price: TBCDField;
    qryStuffCodingM11TotallSellPrice: TBCDField;
    qryStuffCodingM12Entity: TFloatField;
    qryStuffCodingM12Weight: TFloatField;
    qryStuffCodingM12Price: TBCDField;
    qryStuffCodingM12TotallSellPrice: TBCDField;
    qryStuffCodingReciptCaption: TStringField;
    qryStuffCodingEntity: TFloatField;
    qryStuffCodingWeight: TFloatField;
    qryStuffCodingPrice: TBCDField;
    qryStuffCodingTotallSellPrice: TBCDField;
    AllClick1: TMenuItem;
    CedarDbgrid2: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShowForm(GroupID: Integer);
    procedure ppLblStoreIDGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptDateGetText(Sender: TObject; var Text: String);
    procedure ppLblStuffCodeGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptNumberGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblFormNameGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure AllClick1Click(Sender: TObject);
    procedure CedarDbgrid2SumListAfterRecalcAll(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
  private
    { Private declarations }
    formType: Byte;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptStuffCodingMonthsF: TrptStuffCodingMonthsF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2,
  sort2, FormFunctions, ReciptsFunctions, Filter_ADO_Const;

{$R *.dfm}
{ TrptStuffCodingF }

procedure TrptStuffCodingMonthsF.UpdateFilter;
begin
  ActiveSellPrice2Dbgrid(CedarDbgrid2);
  // PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
  // CedarDbgrid2, qryStuffCoding);
  with qryStuffCoding do
  begin
    Active := False;
    // Parameters.ParamByName('ReciptType').Value:=formType;
    Parameters.ParamByName('custIdfrom').Value :=
      GetcFrom(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('custIdTo').Value :=
      GetcTo(myParams.ParamValues['custId'], ftInteger);

    Parameters.ParamByName('custId2from').Value :=
      GetcFrom(myParams.ParamValues['custId2'], ftInteger);
    Parameters.ParamByName('custId2To').Value :=
      GetcTo(myParams.ParamValues['custId2'], ftInteger);

    Parameters.ParamByName('CityCodefrom').Value :=
      GetcFrom(myParams.ParamValues['ShahrCode'], ftInteger);
    Parameters.ParamByName('CityCodeTo').Value :=
      GetcTo(myParams.ParamValues['ShahrCode'], ftInteger);




    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    UpdateFilterAllReciptTypes(qryInitQry, qryStuffCoding, myParams);

    Active := True;
  end; // with
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    CedarDbgrid2, qryStuffCoding)
end;

procedure TrptStuffCodingMonthsF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try

      AddItemFilter(GetFilter, TFilterShahrCode);


      AddItem(DMf.adcBSell, 'custID2', '„‘ —Ì2', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT DISTINCT custid,custname from Vu_CustomersGroups ',
        'select min(custid),max(custid) from customers');

      AddItem(DMf.adcBSell, 'custID', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT DISTINCT custid,custname from Vu_CustomersGroups ',
        'select min(custid),max(custid) from customers');

      AddItem(DMf.adcBSell, 'Month', ' „«Â ', '„«Â', ftInteger, dvMinMax, '1',
        '12', ciSimple, '', 'SELECT 1,12 FROM StuffCoding');
      FilterAllReciptTypes(qryInitQry, fi);
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

procedure TrptStuffCodingMonthsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptStuffCodingMonthsF.FormCreate(Sender: TObject);

begin
  inherited;
  formType := var_glb_gParam;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;

    Caption := ' ê“«—‘ ' + FieldByName('ReciptCaption').AsString +
      '  » ›ﬂÌﬂ ﬂœ ﬂ«·«';
  end; // whit

  Caption := ' ê“«—‘ ' + GetSellEffect(formType, qryStuffCoding) +
    '  » ›ﬂÌﬂ ﬂœ ﬂ«·«';

end;

procedure TrptStuffCodingMonthsF.ShowForm(GroupID: Integer);
begin
  with qryStuffCoding do
  begin
    Active := False;
    Parameters.ParamByName('GroupIDFrom').Value := GroupID;
    Parameters.ParamByName('GroupIDTo').Value := GroupID;
    Active := True;
  end; // with
end;

procedure TrptStuffCodingMonthsF.ppLblStoreIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ «‰»«— ' + IntToStr(qryStuffCoding.Parameters.ParamByName
    ('StoreIDFrom').Value) + '  « ' +
    IntToStr(qryStuffCoding.Parameters.ParamByName('StoreIDTo').Value)
end;

procedure TrptStuffCodingMonthsF.ppLblReciptDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + qryStuffCoding.Parameters.ParamByName('ReciptDateFrom')
    .Value + '  « ' + qryStuffCoding.Parameters.ParamByName
    ('ReciptDateTo').Value
end;

procedure TrptStuffCodingMonthsF.ppLblStuffCodeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ ﬂ«·«Ì ' + GetcFrom(myParams.ParamValues['StuffCode'], ftString)
    + '  « ' + GetcTo(myParams.ParamValues['StuffCode'], ftString)
end;

procedure TrptStuffCodingMonthsF.ppLblReciptNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ' + IntToStr(qryStuffCoding.Parameters.ParamByName
    ('ReciptNumberFrom').Value) + '  « ' +
    IntToStr(qryStuffCoding.Parameters.ParamByName('ReciptNumberTo').Value)
end;

procedure TrptStuffCodingMonthsF.ppSystemVariable3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptStuffCodingMonthsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffCoding);
end;

procedure TrptStuffCodingMonthsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(CedarDbgrid2);
end;

procedure TrptStuffCodingMonthsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryStuffCoding);
end;

procedure TrptStuffCodingMonthsF.AllClick1Click(Sender: TObject);
begin
  inherited;
  try
    qryStuffCoding.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Name, True);
  finally
    qryStuffCoding.EnableControls;
  end;
end;

procedure TrptStuffCodingMonthsF.CedarDbgrid2SumListAfterRecalcAll
  (Sender: TObject);
begin
  inherited;
  CedarDbgrid2.FooterColVisibleOffIfZero
end;

procedure TrptStuffCodingMonthsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptStuffCodingMonthsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptStuffCodingMonthsF.ppLblFormNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := rptStuffCodingMonthsF.Caption
end;

procedure TrptStuffCodingMonthsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
