{ -----------------------------------------------------------------------------
  Unit Name: rptFormsOnStuff
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit rptFormsOnStuff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppModule,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, DB, ADODB, ComCtrls, SumDBGrid, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, FarsiReportBuilde;

type
  TrptFormsOnStuffF = class(Ttemplate2MDIF)
    actFilter: TAction;
    qryForms: TADOQuery;
    SrcForms: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    qryFormsc_StuffName: TStringField;
    qryFormsUnitName: TStringField;
    qryFormsStuffSize: TStringField;
    qryFormsStuffAlloy: TStringField;
    qryFormsReciptType: TWordField;
    qryFormsReciptCaption: TStringField;
    qryFormsentity: TFloatField;
    qryFormsweight: TFloatField;
    qryFormsprice: TBCDField;
    Label1: TLabel;
    Label2: TLabel;
    qryInitQry: TADOQuery;
    actSendExel: TAction;
    actPrint: TAction;
    actSort: TAction;
    qryFormsStuffDiameter: TFloatField;
    BitBtn1: TBitBtn;
    actPrint2: TAction;
    qryFormsTotallSellPrice: TBCDField;
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
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppLblStoreID: TppLabel;
    ppLblReciptDate: TppLabel;
    ppLblStuffCode: TppLabel;
    ppLblReciptNumber: TppLabel;
    ppLbPagedate: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppDBText34: TppDBText;
    ppDBTextIOEntity: TppDBText;
    ppDBTextIOWeight: TppDBText;
    ppDBTextTotalIOPrice: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
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
    SumGrid1: TSumGrid;
    qryFormsControlCode: TLargeintField;
    qryFormsPersonID1: TIntegerField;
    qryFormsStuffCode: TLargeintField;
    qryFormsc_StuffTecInfo: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblReciptNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblStuffCode_DiameterGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptDateGetText(Sender: TObject; var Text: String);
    procedure ppLblStoreIDGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure actPrint2Execute(Sender: TObject);
    procedure actshowChartExecute(Sender: TObject);
    procedure qryFormsBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    formType: Byte;
    procedure UpdateFilter;
    procedure initFormQry;
  public
    { Public declarations }
  end;

var
  rptFormsOnStuffF: TrptFormsOnStuffF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, sort2, search2, StrUtils,
  FormFunctions, TreeChart;

{$R *.dfm}

procedure TrptFormsOnStuffF.UpdateFilter;
begin
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'],
    ftInteger), DBGrid1,qryForms);
  with qryForms do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := IntToStr(formType);
    if opt.AidInfoAvailable then
    begin
      Parameters.ParamByName('StuffDiameterFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftInteger);
      Parameters.ParamByName('StuffDiameterTo').Value :=
        GetcTo(myParams.ParamValues['StuffDiameter'], ftInteger);
    end // if
    else
    begin
      Parameters.ParamByName('StuffDiameterFrom').Value := 0;
      Parameters.ParamByName('StuffDiameterTo').Value := 2147483647;
    end; // else

    UpdateFilterAllReciptTypes(qryInitQry, qryForms, myParams);

    Active := True;
  end; // with
  with qryForms.Parameters do
  begin
    Label1.Caption := '«“ ‘„«—Â ' + IntToStr(ParamByName('ReciptNumberFrom')
      .Value) + '  « ' + IntToStr(ParamByName('ReciptNumberTO').Value) + '    '
      + '«“  «—ÌŒ ' + ParamByName('ReciptDateFrom').Value + '  « ' +
      ParamByName('ReciptDateTo').Value + '    ' + IfThen(opt.AidInfoAvailable,
      ' «“ ÷Œ«„  ' + IntToStr(ParamByName('StuffDiameterFrom').Value) + '  « ' +
      IntToStr(ParamByName('StuffDiameterTo').Value), '');
    Label2.Caption := '«“ ﬂœ «‰»«— ' +
      IntToStr(ParamByName('StoreIDFrom').Value) + '  « ' +
      IntToStr(ParamByName('StoreIDTo').Value) + '    ' + '«“ ﬂœ ﬂ«·« ' +
      VarToStr(GetcFrom(myParams.ParamValues['StuffCode'], ftString)) + '  « ' +
      VarToStr(GetcTo(myParams.ParamValues['StuffCode'], ftString));
  end; // with
end;

procedure TrptFormsOnStuffF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      if opt.AidInfoAvailable then
        AddItem(dmf.adcBSell, 'StuffDiameter', ' ÷Œ«„  ', '', ftFloat, dvMinMax,
          '', '', ciSimple, '',
          'SELECT MIN(dbo.ReciptItems.StuffDiameter), MAX(dbo.ReciptItems.StuffDiameter)FROM dbo.ReciptItems INNER JOIN dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID WHERE dbo.Recipts.ReciptType = '
          + IntToStr(formType));
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

procedure TrptFormsOnStuffF.initFormQry;
begin
  formType := var_glb_gParam;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := 'ê“«—‘ ' + fieldbyname('ReciptCaption').AsString +
      ' » ›ﬂÌﬂ «Ã“«¡ ﬂ«·«';

    setColumns2(DBGrid1, fieldbyname('DiscountActive').Value = 1,
      'TotallSellPrice');
    if fieldbyname('DiscountActive').AsInteger = 1 then
      qryForms.fieldbyname('TotallSellPrice').Tag := 3;
  end; // with
end;

procedure TrptFormsOnStuffF.FormCreate(Sender: TObject);
begin
  inherited;
  initFormQry;
  Entity_Weight(DBGrid1);
end;

procedure TrptFormsOnStuffF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptFormsOnStuffF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(formType));
end;

procedure TrptFormsOnStuffF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(formType));
end;

procedure TrptFormsOnStuffF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptFormsOnStuffF.ppLblReciptNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ‘„«—Â ' +
    IntToStr(qryForms.Parameters.ParamByName('ReciptNumberForm').Value) + '  « '
    + IntToStr(qryForms.Parameters.ParamByName('ReciptNumberTo').Value)
end;

procedure TrptFormsOnStuffF.ppLblStuffCode_DiameterGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ ﬂ«·« ' + VarToStr(GetcFrom(myParams.ParamValues['StuffCode'],
    ftString)) + '  « ' + VarToStr(GetcTo(myParams.ParamValues['StuffCode'],
    ftString)) + '«“ ÷Œ«„  ' +
    VarToStr(GetcFrom(myParams.ParamValues['StuffDiameter'], ftString)) + '  « '
    + VarToStr(GetcTo(myParams.ParamValues['StuffDiameter'], ftString));
end;

procedure TrptFormsOnStuffF.ppLblReciptDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“  «—ÌŒ ' + qryForms.Parameters.ParamByName('DateFrom').Value +
    '  « ' + qryForms.Parameters.ParamByName('DateTo').Value
end;

procedure TrptFormsOnStuffF.ppLblStoreIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '«“ ﬂœ «‰»«— ' +
    IntToStr(qryForms.Parameters.ParamByName('StoreIDForm').Value) + '  « ' +
    IntToStr(qryForms.Parameters.ParamByName('StoreIDTo').Value)
end;

procedure TrptFormsOnStuffF.actPrintExecute(Sender: TObject);
begin
  inherited;
  if qryInitQry.fieldbyname('DiscountActive').AsInteger = 1 then
    try
      qryForms.DisableControls;
      InitReportFile(ppReport1, 'rptFormsOnStuffDiscountActive', True);
      Exit;
    finally
      qryForms.EnableControls;
    end; // try

  try
    qryForms.DisableControls;
    InitReportFile(ppReport1, 'rptFormsOnStuff');
  finally
    qryForms.EnableControls;
  end; // try
end;

procedure TrptFormsOnStuffF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptFormsOnStuffF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TrptFormsOnStuffF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptFormsOnStuffF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptFormsOnStuffF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryForms);
end;

procedure TrptFormsOnStuffF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryForms);
end;

procedure TrptFormsOnStuffF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptFormsOnStuffF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  try
    qryForms.DisableControls;
    InitReportFile(ppReport1, 'rptFormsOnStuff_reyali_');
  finally
    qryForms.EnableControls;
  end; // try
end;

procedure TrptFormsOnStuffF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryForms, Self);
end;

procedure TrptFormsOnStuffF.qryFormsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  GetSumGridFields(DBGrid1, SumGrid1)
end;

end.
