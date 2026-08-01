unit StuffTransaction_ControlCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, ppBands, ppCtrls,  Math,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ComCtrls, SumDBGrid, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, Filter_ADO_Const;

type
  TStuffTransaction_ControlCodeF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryTransAction: TADOQuery;
    srcTransAction: TDataSource;
    qryTransActionc_StuffName: TStringField;
    qryTransActionUnitName: TStringField;
    qryTransActionFirstEntity: TFloatField;
    qryTransActionFirstWeight: TFloatField;
    qryTransActionFirstPrice: TBCDField;
    qryTransActionAddEntity: TFloatField;
    qryTransActionAddWeight: TFloatField;
    qryTransActionAddPrice: TBCDField;
    qryTransActionDecEntity: TFloatField;
    qryTransActionDecWeight: TFloatField;
    qryTransActionDecPrice: TBCDField;
    qryTransActionInvEntity: TFloatField;
    qryTransActionInvWeight: TFloatField;
    qryTransActionInvPrice: TBCDField;
    actSort: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryTransActionStoreID: TSmallintField;
    qryTransActionc_StoreName: TStringField;
    qryTransActionn_ValuationType: TSmallintField;
    qryStore: TADOQuery;
    srcStore: TDataSource;
    qryStoren_StoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    lblLimit: TLabel;
    ppDBPipeline1: TppDBPipeline;
    ppRptAllprint: TppReport;
    qryTransActionControlCode: TLargeintField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine15: TppLine;
    ppLine31: TppLine;
    ppLabel8: TppLabel;
    ppLabel15: TppLabel;
    ppLine32: TppLine;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel21: TppLabel;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel10: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel3: TppLabel;
    ppLabel22: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ppLabel25: TppLabel;
    ppLine59: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppTxtAllPrice: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText6: TppDBText;
    ppLine17: TppLine;
    ppDBText7: TppDBText;
    ppLine18: TppLine;
    ppLine23: TppLine;
    ppLine11: TppLine;
    ppLine10: TppLine;
    ppDBCalc13: TppDBCalc;
    ppLine35: TppLine;
    ppDBText9: TppDBText;
    ppLine36: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppDBText12: TppDBText;
    ppDBText3: TppDBText;
    ppLine51: TppLine;
    ppDBText13: TppDBText;
    ppLine52: TppLine;
    ppDBText14: TppDBText;
    ppLine53: TppLine;
    ppDBText1: TppDBText;
    ppLine60: TppLine;
    ppDBText15: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLine25: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLine26: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLine27: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLine30: TppLine;
    ppLine40: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLine50: TppLine;
    ppDBCalc22: TppDBCalc;
    ppLine54: TppLine;
    ppLine58: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine13: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine14: TppLine;
    ppLine21: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine22: TppLine;
    ppLine24: TppLine;
    ppLine42: TppLine;
    ppLine45: TppLine;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppLine55: TppLine;
    ppDBCalc24: TppDBCalc;
    ppLine56: TppLine;
    ppDBCalc25: TppDBCalc;
    ppLine57: TppLine;
    SumGrid1: TSumGrid;
    qryTransActionStuffCode: TLargeintField;
    qry1: TADOQuery;
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryStoreAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
  private
    PriceVisible: Boolean;
    { Private declarations }
    Procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  StuffTransaction_ControlCodeF: TStuffTransaction_ControlCodeF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  searchCode_ADO, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TStuffTransaction_ControlCodeF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItem(DMf.adcBSell, 'Date', ' «—ÌŒ ', '» «—ÌŒ', ftDate, dvDefaults,
        var_glb_CurrentDate, '', ciSingle, '', '');
      AddItem(DMf.adcBSell, 'Store', '« »«—', '«‰»«—', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      AddItem(DMf.adcBSell, 'StuffCode', 'ﬂ«·« ', 'ﬂ«·«', ftLargeint, dvMinMax,
        '', '', ciLookup,
        ' SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName FROM StuffCoding INNER JOIN '
        + ' ReciptItems ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.StuffCode '
        + ' GROUP BY dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName ',
        'SELECT Min(StuffCode), Max(StuffCode) FROM ReciptItems');

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

procedure TStuffTransaction_ControlCodeF.UpdateFilter;
begin
  with qryTransAction do
  begin
    Active := False;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('date').Value :=
      GetcFrom(myParams.ParamValues['date'], ftDate);
    // Active:=True;
    lblLimit.Caption := '«“ ﬂœ ﬂ«·«Ì ' +
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint) + '  « ' +
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint) + #10 +
      'ê—œ‘ ﬂ«·« » «—ÌŒ : ' + Parameters.ParamValues['date'];
  end; // with
  with qryStore do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);
    Active := True;
  end; // with
end;

procedure TStuffTransaction_ControlCodeF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  r: TRect;
begin
  inherited;
  r := Rect;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TStuffTransaction_ControlCodeF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  // SetColSize(DBGrid2,0,True);
end;

procedure TStuffTransaction_ControlCodeF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TStuffTransaction_ControlCodeF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TStuffTransaction_ControlCodeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTransAction);
end;

procedure TStuffTransaction_ControlCodeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTransAction);
end;

procedure TStuffTransaction_ControlCodeF.SpeedButton1Click(Sender: TObject);

var
  b: Boolean;
  Results: array [0 .. 1] of String;
  // Txt:String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, '«‰»«— Â«',
    'SELECT n_StoreID, c_StoreName FROM Stores ' + 'WHERE(n_StoreID BETWEEN ' +
    IntToStr(qryStore.Parameters.ParamValues['StoreIDFrom']) + '  AND ' +
    IntToStr(qryStore.Parameters.ParamValues['StoreIDTo']) + ')',
    ['òœ', '‰«„ '], Results, [50, 150], alLeft);
  if b then
  begin
    qryStore.Locate('n_StoreID', Results[0], []);
  end; // if

end;

procedure TStuffTransaction_ControlCodeF.qryStoreAfterScroll(DataSet: TDataSet);
begin
  inherited;
  PriceVisible := PriceOnStoreType(DataSet.fieldbyname('n_StoreID')
    .AsInteger, DBGrid1,qryTransAction);
  with qryTransAction do
  begin
    Active := False;
    Parameters.ParamByName('StorIDPA').Value := DataSet.fieldbyname('n_StoreID')
      .AsInteger;
    Active := True;
  end; // with
end;

procedure TStuffTransaction_ControlCodeF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('date') = nil then
    close;
end;

procedure TStuffTransaction_ControlCodeF.ppLblCompanyNameGetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TStuffTransaction_ControlCodeF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'ê—œ‘ ﬂ«·«Ì «‰»«— ' + DBEdit2.Text;
end;

procedure TStuffTransaction_ControlCodeF.ppSystemVariable2GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TStuffTransaction_ControlCodeF.ppSystemVariable1GetText
  (Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffTransaction_ControlCodeF.actPrintExecute(Sender: TObject);
begin
  inherited;
  with qryTransAction do
  begin
    try
      DisableControls;
      InitReportFile(ppRptAllprint, 'rptStuffTransaction_CCode', False,
        PriceVisible);
    finally
      EnableControls;
    end; // try
  end; // with
end;

procedure TStuffTransaction_ControlCodeF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblLimit.Caption;
end;

procedure TStuffTransaction_ControlCodeF.FormCreate(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
end;

end.
