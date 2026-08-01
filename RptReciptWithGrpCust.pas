unit RptReciptWithGrpCust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, ppDB, ppDBPipe, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, Filter_ADO_Const;

type
  TRptReciptWithGrpCustF = class(Ttemplate2MDIF)
    actPrint: TAction;
    actFilter: TAction;
    actSentExclel: TAction;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    srcitems: TDataSource;
    Qryitems: TADOQuery;
    DBGrid1: TDBGrid;
    QryitemsCustomerGrpID: TIntegerField;
    QryitemsCustomerGrpName: TStringField;
    Qryitemsentity: TFloatField;
    Qryitemsweight: TFloatField;
    Qryitemsprice: TBCDField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    QryitemsReciptType: TWordField;
    QryitemsReciptCaption: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    qryInitQry: TADOQuery;
    actSort: TAction;
    QryitemsTotallSellPrice: TBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppLbCompany: TppLabel;
    ppLabel4: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppShape1: TppShape;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine22: TppLine;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppFooterBand1: TppFooterBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel2: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine7: TppLine;
    ppLabel1: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine17: TppLine;
    SumGrid1: TSumGrid;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actSentExclelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLbCompanyGetText(Sender: TObject; var Text: String);
    procedure actshowChartExecute(Sender: TObject);
    procedure QryitemsBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    Formtype: byte;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptReciptWithGrpCustF: TRptReciptWithGrpCustF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO, search2, sort2, FormFunctions,
  TreeChart;

{$R *.dfm}

procedure TRptReciptWithGrpCustF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptReciptWithGrpCustF.FormCreate(Sender: TObject);
begin
  inherited;
  Formtype := var_glb_gParam;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := Formtype;
    Active := True;

    setColumns2(DBGrid1, FieldByName('DiscountActive').Value = 1,
      'TotallSellPrice');
    if FieldByName('DiscountActive').AsInteger = 1 then
      Qryitems.FieldByName('TotallSellPrice').Tag := 3;

  end; // with
  Caption := 'ê“«—‘ ' + qryInitQry.FieldByName('ReciptCaption').AsString +
    ' » ›ﬂÌﬂ ê—ÊÂ „‘ —Ì«‰ ';
  Entity_Weight(DBGrid1);
end;

procedure TRptReciptWithGrpCustF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'ê“«—‘ ' + QryitemsReciptCaption.AsString + ' » ›ﬂÌﬂ ê—ÊÂ „‘ —Ì«‰ ';
end;

procedure TRptReciptWithGrpCustF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if qryInitQry.FieldByName('DiscountActive').AsInteger = 1 then
    try
      Qryitems.DisableControls;
      InitReportFile(ppReport1, 'RptReciptWithGrpCustDiscountActive', True);
      Exit;
    finally
      Qryitems.EnableControls;
    end; // try

  try
    Qryitems.DisableControls;
    InitReportFile(ppReport1, 'RptReciptWithGrpCust');
  finally
    Qryitems.EnableControls;
  end; // try
end;

procedure TRptReciptWithGrpCustF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TRptReciptWithGrpCustF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptReciptWithGrpCustF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptReciptWithGrpCustF.actSentExclelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptReciptWithGrpCustF.UpdateFilter;
begin
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'],
    ftInteger), DBGrid1,Qryitems);
  with Qryitems do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := Formtype;

    Parameters.ParamByName('CustomerGrpIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustomerGrpID'], ftInteger);
    Parameters.ParamByName('CustomerGrpIDTo').Value :=
      GetcTo(myParams.ParamValues['CustomerGrpID'], ftInteger);
    UpdateFilterAllReciptTypes(qryInitQry, Qryitems, myParams);
    Active := True;
  end; // with
  with Qryitems.Parameters do
  begin
    Label1.Caption := '«“  «—ÌŒ ' + ParamByName('ReciptDateFrom').Value + '  « '
      + ParamByName('ReciptDateTo').Value;
    Label2.Caption := '«“ ‘„«—Â ' + IntToStr(ParamByName('ReciptNumberFrom')
      .Value) + '  « ' + IntToStr(ParamByName('ReciptNumberTO').Value);
  end; // with
end;

procedure TRptReciptWithGrpCustF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      AddItemFilter(GetFilter, TFilterCustomerGrpID);

      // AddItem(DMF.adcBSell, 'CustomerGrpID', ' ê—ÊÂ „‘ —Ì«‰ ', 'ê—ÊÂ',
      // ftInteger, dvMinMax, '', '', ciLookup,
      // 'SELECT CustomerGrpID, CustomerGrpName FROM CustomersGroup ',
      // 'select Min(CustomerGrpID),Max(CustomerGrpID) From CustomersGroup');
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

procedure TRptReciptWithGrpCustF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TRptReciptWithGrpCustF.ppLabel12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Label2.Caption
end;

procedure TRptReciptWithGrpCustF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Label1.Caption
end;

procedure TRptReciptWithGrpCustF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TRptReciptWithGrpCustF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TRptReciptWithGrpCustF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(Qryitems);
end;

procedure TRptReciptWithGrpCustF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(Qryitems)
end;

procedure TRptReciptWithGrpCustF.ppLbCompanyGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptReciptWithGrpCustF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(Qryitems, Self)
end;

procedure TRptReciptWithGrpCustF.QryitemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  GetSumGridFields(DBGrid1, SumGrid1)
end;

end.
