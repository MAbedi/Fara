unit RptEntityStuffDetails;
// <><>

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, Mask, DBCtrls, ppPrnabl,
  ppClass, ppCtrls, ppDB, ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, Math,
  ppProd, ppReport, ppStrtch, ppSubRpt, Menus, ppParameter, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid,ReciptsFunctions;

type
  TRptEntityStuffDetailsF = class(Ttemplate2MDIF)
    QryRptEntityStuffDetails: TADOQuery;
    QryRptEntityStuffDetailsStoreID: TSmallintField;
    QryRptEntityStuffDetailsc_StuffName: TStringField;
    QryRptEntityStuffDetailsUnitName: TStringField;
    QryRptEntityStuffDetailsStuffDiameter: TFloatField;
    QryRptEntityStuffDetailsStuffSize: TStringField;
    QryRptEntityStuffDetailsStuffAlloy: TStringField;
    QryRptEntityStuffDetailsStuffGrade: TWordField;
    QryRptEntityStuffDetailsEntity: TFloatField;
    QryRptEntityStuffDetailsWeight: TFloatField;
    QryRptEntityStuffDetailsPrice: TBCDField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    actcardex: TAction;
    actPrint: TAction;
    actFilter: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    SrcRptEntityStuffDetails: TDataSource;
    Label3: TLabel;
    dbstoreid: TDBEdit;
    Button1: TButton;
    ScrStore: TDataSource;
    QryStore: TADOQuery;
    DBNavigator1: TDBNavigator;
    dbstorename: TDBText;
    QryStoren_StoreID: TSmallintField;
    QryStorec_StoreName: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBPipeline2: TppDBPipeline;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDBText22: TppDBText;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppDBCalc2: TppDBCalc;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine11: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine12: TppLine;
    ppLine13: TppLine;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actcardex1: TAction;
    actcardex2: TAction;
    QryRptEntityStuffDetailsTotallSellPrice: TBCDField;
    QryRptEntityStuffDetailsStuffCode: TLargeintField;
    QryRptEntityStuffDetailsc_StuffTecInfo: TStringField;
    DBGrid1: TCedarDbgrid;
    StatusBar1: TStatusBar;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    QryRptEntityStuffDetailsStuffName: TStringField;
    cmbEntity: TComboBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QryRptEntityStuffDetailsAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure QryStoreAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure actcardexExecute(Sender: TObject);
    procedure actcardex1Execute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actcardex2Execute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cmbEntityChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptEntityStuffDetailsF: TRptEntityStuffDetailsF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, searchCode_ADO,
  RptCardex, search2, sort2, StrUtils, FaraConsts;

{$R *.dfm}

procedure TRptEntityStuffDetailsF.UpdateFilter;
begin
  with QryRptEntityStuffDetails do
  begin
    Active := False;
    SQL.Text := 'SELECT R.StoreID, R.StuffCode,StuffCoding.c_StuffName';
    SQL.Add(',c_StuffName_L2 AS StuffName,Units.UnitName, R.StuffDiameter,');
    SQL.Add('R.StuffSize, R.StuffAlloy, R.StuffGrade,');
    SQL.Add('round(SUM(R.InputEntity - R.OutputEntity),3) AS Entity,');
    SQL.Add('round(SUM(R.InputWeight - R.OutputWeight),3) AS Weight,');
    SQL.Add('SUM(R.TotalInputPrice - R.TotalOutputPrice) AS Price,');
    SQL.Add('SUM(R.TotallSellPrice ) AS TotallSellPrice,StuffCoding.c_StuffTecInfo');
    SQL.Add('FROM ReciptItems_Stock AS R INNER JOIN');
    SQL.Add('StuffCoding ON R.StuffCode =StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode =Units.UnitCode');
    SQL.Add('WHERE (R.ReciptDate BETWEEN :DateFrom AND :DateTo) AND (R.EffectType IN (2, 4))');
    SQL.Add('AND(R.StoreID BETWEEN :StoreIDForm AND :StoreIDTo) AND (R.StuffCode BETWEEN :c_StuffCodeForm AND :c_StuffCodeTo)');
    SQL.Add('AND');
    SQL.Add('(R.StuffDiameter BETWEEN :StuffDiameterFrom AND :StuffDiameterTo)');
    SQL.Add('AND (R.ReciptState < 3)');
    SQL.Add('GROUP BY R.StoreID, R.StuffCode,StuffCoding.c_StuffName,c_StuffName_L2 ,Units.UnitName, R.StuffSize,');
    SQL.Add('R.StuffDiameter, R.StuffAlloy, R.StuffGrade,StuffCoding.c_StuffTecInfo');
    SQL.Add('HAVING ((SUM(R.InputEntity - R.OutputEntity) >= 0.0001 OR');
    SQL.Add('SUM(R.InputEntity - R.OutputEntity) <= - 0.0001) OR');
    SQL.Add('(SUM(R.InputWeight - R.OutputWeight) >= 0.0001) OR');
    SQL.Add('(SUM(R.InputWeight - R.OutputWeight) <= - 0.0001) OR');
    SQL.Add('(SUM(R.TotalInputPrice - R.TotalOutputPrice) >= 0.1) OR');
    SQL.Add('(SUM(R.TotalInputPrice - R.TotalOutputPrice) <= - 0.1))');

    case cmbEntity.ItemIndex of
      1:
        SQL.Add('AND SUM(R.InputEntity - R.OutputEntity) > 0 ');
      2:
        SQL.Add('AND SUM(R.InputWeight - R.OutputWeight) > 0');
      3:
        begin
          SQL.Add('AND SUM(R.InputEntity - R.OutputEntity) > 0 ');
          SQL.Add('AND SUM(R.InputWeight - R.OutputWeight) > 0');

        end;
    end;

    Parameters.ParamByName('c_StuffCodeForm').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('c_StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    if opt.AidInfoAvailable then
    begin
      Parameters.ParamByName('StuffDiameterFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftFloat);
      Parameters.ParamByName('StuffDiameterTo').Value :=
        GetcTo(myParams.ParamValues['StuffDiameter'], ftFloat);
    end // if
    else
    begin
      Parameters.ParamByName('StuffDiameterFrom').Value := 0;
      Parameters.ParamByName('StuffDiameterTo').Value := 2147483647;
    end; // else
  end;
  With QryStore do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDForm').Value :=
      GetcFrom(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);
    Active := True;
  end; // with
  with QryRptEntityStuffDetails.Parameters do
  begin
    LblShowLimitPlace1.Caption := '«“ ﬂœ ﬂ«·«Ì ' +
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint) + '  « ' +
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint) +
      ifthen(opt.AidInfoAvailable, ' «“ ÷Œ«„  ' +
      IntToStr(ParamByName('StuffDiameterFrom').Value) + '  « ' +
      IntToStr(ParamByName('StuffDiameterTo').Value), '');
    LblShowLimitPlace2.Caption := '«“  «—ÌŒ ' + ParamByName('DateFrom').Value +
      '  « ' + ParamByName('DateTo').Value;
  end; // with
end;

procedure TRptEntityStuffDetailsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if opt.AidInfoAvailable then
        AddItem(DMF.adcBSell, 'StuffDiameter', '÷Œ«„ ', '÷Œ«„ ', ftFloat,
          dvMinMax, '', '', ciSimple, '',
          'select Min(StuffDiameter),Max(StuffDiameter) From ReciptItems');
      AddItem(DMF.adcBSell, 'Date', ' «—ÌŒ', ' «—ÌŒ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMF.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode, c_StuffName FROM StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding ');
      AddItem(DMF.adcBSell, 'Store', '«‰»«—', 'ﬂœ', ftInteger, dvMinMax, '', '',
        ciLookup, LookupSQL4Store, MinMaxSQL4Store);
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

procedure TRptEntityStuffDetailsF.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := ' ê“«—‘ „ÊÃÊœÌ »— Õ”» —Ì“ «ÿ·«⁄«   ';
  Entity_Weight(DBGrid1);
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'TotallSellPrice');
//  QryRptEntityStuffDetails.FieldByName('TotallSellPrice').Visible :=
//    opt.ActiveSellPrice2;
  HideOrShowSellPriceFields(QryRptEntityStuffDetails, DBGrid1);

  DBGrid1.SetFooter4Sum(['StuffCode']);
end;

procedure TRptEntityStuffDetailsF.FormResize(Sender: TObject);
begin
  inherited;
  cmbEntity.Margins.Right:=Panel2.Width-350
end;

procedure TRptEntityStuffDetailsF.QryRptEntityStuffDetailsAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := 'Ã„⁄ ﬂ· ';
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := '„ﬁœ«—=' +
      CurrToStr(CalcSumFileds(QryRptEntityStuffDetails, 'entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := 'Ê“‰=' +
      CurrToStr(CalcSumFileds(QryRptEntityStuffDetails, 'weight'));
  if PriceOnStoreType(QryStore.fieldbyname('n_storeid').AsInteger, DBGrid1,
    QryRptEntityStuffDetails) then
    StatusBar1.Panels[0].Text :=
      CurrToStrF(CalcSumFileds(QryRptEntityStuffDetails, 'Price'), ffCurrency,
      0) + ' —Ì«· '
  else
    StatusBar1.Panels[0].Text := '';
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'TotallSellPrice');
//  QryRptEntityStuffDetails.FieldByName('TotallSellPrice').Visible :=    opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(QryRptEntityStuffDetails, DBGrid1);

end;

procedure TRptEntityStuffDetailsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('StuffCode') = nil then
    close;
end;

procedure TRptEntityStuffDetailsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptEntityStuffDetailsF.QryStoreAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with QryRptEntityStuffDetails do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDForm').Value :=
      QryStore.fieldbyname('n_StoreID').AsInteger;
    Parameters.ParamByName('StoreIDTo').Value :=
      QryStore.fieldbyname('n_StoreID').AsInteger;
    Active := True;
  end;

end;

procedure TRptEntityStuffDetailsF.Button1Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT n_StoreID, c_StoreName FROM Stores ' +
    'WHERE(n_StoreID BETWEEN  ' +
    IntToStr(QryStore.Parameters.ParamByName('StoreIDForm').Value) + ' AND  ' +
    IntToStr(QryStore.Parameters.ParamByName('StoreIDTo').Value) + ') ';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' «‰»«— Â« ', Txt,
    ['ﬂœ«‰»«—', '‰«„ «‰»«— '], Results, [50, 150], alLeft);
  if b then
  begin
    QryStore.Locate('n_StoreID', Results[0], []);
  end; // if
end;

procedure TRptEntityStuffDetailsF.cmbEntityChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TRptEntityStuffDetailsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    QryStore.DisableControls;
    QryRptEntityStuffDetails.DisableControls;
    InitReportFile(ppReport1, 'RptEntityStuffDetails');
  finally
    QryStore.EnableControls;
    QryRptEntityStuffDetails.EnableControls;
  end; // try
end;

procedure TRptEntityStuffDetailsF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblShowLimitPlace1.Caption;
end;

procedure TRptEntityStuffDetailsF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblShowLimitPlace2.Caption;
end;

procedure TRptEntityStuffDetailsF.actcardexExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptEntityStuffDetailsF.actcardex1Execute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(QryStore.fieldbyname('n_StoreID').AsInteger,
    QryRptEntityStuffDetails.fieldbyname('StuffCode').AsLargeInt, 1);
  // MyParams.CreateParam(ftInteger,'ControlCode',ptInput).AsString:='0;999999999';
  // MyParams.CreateParam(ftInteger,'store',ptInput).AsString:=
  // QryStore.Fieldbyname('n_StoreID').AsString+';'+QryStore.Fieldbyname('n_StoreID').AsString;
  // MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=myParams.ParamValues['Date'];
  // MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
  // QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt+';'+QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt;
  // CreateMDIForm2(TRptCardexF,RptCardexF,Self,100);
  //
  // RptCardexF.cmbStore.ItemIndex:=RptCardexF.cmbStore.Items.IndexOfObject(TObject(qryStore.Fieldbyname('n_StoreID').AsInteger));
  // if not RptCardexF.qryStuffs.Locate('StuffCode',QryRptEntityStuffDetails.FieldByName('StuffCode').Value,[])
  // then Warn('ﬂ«·«Ì „Ê—œ ‰Ÿ— Ì«›  ‰‘œ');

end;

procedure TRptEntityStuffDetailsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actcardex.Execute;
end;

procedure TRptEntityStuffDetailsF.actcardex2Execute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(QryStore.fieldbyname('n_StoreID').AsInteger,
    QryRptEntityStuffDetails.fieldbyname('StuffCode').AsLargeInt, 2);
  // MyParams.CreateParam(ftInteger,'ControlCode',ptInput).AsString:='0;999999999';
  // MyParams.CreateParam(ftInteger,'store',ptInput).AsString:=myParams.ParamValues['Store'];
  // MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=myParams.ParamValues['Date'];
  // MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
  // QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt+';'+QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt;
  // CreateMDIForm2(TRptCardexF,RptCardexF,Self,200);
  //
  // RptCardexF.cmbStore.ItemIndex:=RptCardexF.cmbStore.Items.IndexOfObject(TObject(qryStore.Fieldbyname('n_StoreID').AsInteger));
  // if not RptCardexF.qryStuffs.Locate('StuffCode',QryRptEntityStuffDetails.FieldByName('StuffCode').Value,[])
  // then Warn('ﬂ«·«Ì „Ê—œ ‰Ÿ— Ì«›  ‰‘œ');

end;

procedure TRptEntityStuffDetailsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(QryRptEntityStuffDetails);
end;

procedure TRptEntityStuffDetailsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(QryRptEntityStuffDetails);
end;

procedure TRptEntityStuffDetailsF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptEntityStuffDetailsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, QryRptEntityStuffDetails.fieldbyname('StuffCode'));
end;

end.
