unit rptCurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, DB, ADODB, ImgList, DBActns, ActnList,
  StdCtrls, Buttons, ExtCtrls, SumDBGrid, StrUtils, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, Menus, ppParameter, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppDesignLayer, System.ImageList, System.Actions;

type
  TrptCurrencyF = class(Ttemplate2MDIF)
    qryRptCurrency: TADOQuery;
    srcRptCurrency: TDataSource;
    DBGrid1: TDBGrid;
    qryCurrencies: TADOQuery;
    qryCurrenciesCurrenciesID: TIntegerField;
    qryCurrenciesCurrenciesName: TStringField;
    actFilter: TAction;
    btnFilter: TBitBtn;
    SumGrid1: TSumGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actSort: TAction;
    actSendExecl: TAction;
    popOther: TPopupMenu;
    N1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryRptCurrencyAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendExeclExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure BitBtn1Click(Sender: TObject);

  private
    ConstField: Integer;
    SumGridFieldNames: string;
    types: string;
    states: string;
    procedure UpdateFilter;
    procedure UpdateRemain;
    procedure UpdateRemainPerCurrency(i: string);
    procedure SetDisplayLable;
    procedure InitSqlText(FormType: Integer);

    { Private declarations }
  public
    FormType: Integer;
    { Public declarations }
  end;

var
  rptCurrencyF: TrptCurrencyF;

implementation

uses Dm, filter_ADO, FilterClass_ADO, GlobalPro, FaraConsts, Resource, search2,
  sort2, DBGrid2Print, FormFunctions;

{$R *.dfm}

procedure TrptCurrencyF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'state', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpStatus);
      AddItem(DMF.adcAccounting, 'checked', 'انواع سند', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, '');
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvMinMax, '0000/00/00', '9999/99/99', ciSimple, '',
        Format(strMaxMinDocDate, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, dvMinMax, '0', '2147483647', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, dvMinMax, '0', '2147483647', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));
      if gv_MultiCompany then
        AddItem(DMF.adcAccounting, 'CompanyCode', 'كد و نام شعبه /شركت', 'شركت',
          ftInteger, dvMinMax, '', '', ciLookup,
          'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ',
               'SELECT 0,999999999');
      AddItem(DMF.adcAccounting, 'TopicCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_L1 FROM acc.Categories where LevelID =3',
        'SELECT Min(TopicCode),Max(TopicCode)  FROM acc.Categories WHERE  LevelID = 3');
      if (Sender as TAction).Tag = 1 then
        AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
          ftInteger, dvMinMax, '', '', ciSimple, '',
          'SELECT Min(YearID),Max(YearID) FROM Util.maliYear');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TrptCurrencyF.UpdateFilter;
begin
  InitSqlText(FormType);
  with qryRptCurrency do
  begin
    Active := False;
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('YearIDFrom').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('YearIDTo').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;
    if gv_MultiCompany then
    begin
      qryRptCurrency.Parameters.ParamByName('CompanyCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
      qryRptCurrency.Parameters.ParamByName('CompanyCodeTo').Value :=
        GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    end
    else
    begin
      qryRptCurrency.Parameters.ParamByName('CompanyCodeFrom').Value := 0;
      qryRptCurrency.Parameters.ParamByName('CompanyCodeTo').Value := 2147483647;
    end;
    SetCompanyFilterinLogin(qryRptCurrency.Parameters);

    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftLargeint);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftLargeint);

    Active := True;
  end; // with
end;

procedure TrptCurrencyF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRptCurrency);
end;

procedure TrptCurrencyF.actSendExeclExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCurrencyF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRptCurrency);
end;

procedure TrptCurrencyF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptCurrencyF.BitBtn5Click(Sender: TObject);
begin
  inherited;
  try
    qryRptCurrency.DisableControls;
    InitReportFile(ppReport1, 'rptCurrency' + IntToStr(FormType), DBGrid1,ppDBPipeline1);
  finally
    qryRptCurrency.EnableControls;
  end;
end;

procedure TrptCurrencyF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  ConstField := 5;
  qryCurrencies.Active := True;

end;

procedure TrptCurrencyF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptCurrencyF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TrptCurrencyF.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
end;

procedure TrptCurrencyF.InitSqlText(FormType: Integer);
var
  strCrossTab: string;
  i: Integer;
begin
  with qryCurrencies do
  begin
    strCrossTab := '';
    i := 1;
    First;
    while not Eof do
    begin
      strCrossTab := strCrossTab +
        Format(', SUM(CASE WHEN (CurrencyType = %d) AND (Acc.Documents.Debt > 0) THEN Acc.Documents.AidAmount ELSE 0 END) AS %S ,'
        + ' SUM(CASE WHEN (CurrencyType = %d) AND (Acc.Documents.Credit > 0) THEN Acc.Documents.AidAmount ELSE 0 END) AS %S, '
        + ' FitfulIDC AS %S', [qryCurrenciesCurrenciesID.AsInteger,
        'Debt' + qryCurrenciesCurrenciesID.AsString,
        qryCurrenciesCurrenciesID.AsInteger,
        'Credit' + qryCurrenciesCurrenciesID.AsString,
        'Remain' + qryCurrenciesCurrenciesID.AsString]);
      Next;
      Inc(i);
    end;
  end;

  with qryRptCurrency do
  begin
    Active := False;
    SQL.Text :=
      'SELECT Acc.Documents.TopicCode AS کدحساب, Acc.Categories.MoeenName_L1 AS [نام حساب], SUM(Acc.Documents.Debt) AS Debt,'
      + 'SUM(Acc.Documents.Credit) AS Credit, FitfulIDC AS Remain' +
      strCrossTab;
    SQL.Add('FROM Acc.DocGroups INNER JOIN');
    SQL.Add('Acc.Documents ON Acc.DocGroups.Serial = Acc.Documents.Serial AND Acc.DocGroups.YearID = Acc.Documents.YearID AND');
    SQL.Add('Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode INNER JOIN');
    SQL.Add('Acc.Categories ON Acc.Documents.TopicCode = Acc.Categories.TopicCode CROSS JOIN dbo.Fitful');
    SQL.Add('WHERE ( Acc.DocGroups.SecondaryDocNo BETWEEN :SecondaryDocNoFrom AND :SecondaryDocNoTo )');
    SQL.Add('AND ( Acc.DocGroups.PrimaryDocNo BETWEEN :PrimaryDocNoFrom AND :PrimaryDocNoTo )');
    SQL.Add('AND ( Acc.DocGroups.DocDate BETWEEN :DocDateFrom AND :DocDateTo )');
    SQL.Add('AND ( Acc.Documents.TopicCode BETWEEN :TopicCodeFrom AND :TopicCodeTo )');
    SQL.Add('AND ( Acc.DocGroups.[Status] IN (%s) )');
    SQL.Add('AND ( Acc.DocGroups.DocTypeCode IN (%s) )');
    SQL.Add('AND ( Acc.DocGroups.CompanyCode BETWEEN :CompanyCodeFrom AND :CompanyCodeTo )');
    SQL.Add('AND ( Acc.DocGroups.YearID BETWEEN :YearIdFrom AND :YearIdTo )');
    SQL.Add('GROUP BY Acc.Documents.TopicCode, Acc.Categories.MoeenName_L1, FitfulIDC');

    SQL.Text := Format(SQL.Text, [GetcFrom(myParams.ParamValues['state'],
      ftString), GetcFrom(myParams.ParamValues['checked'], ftString)])

    // Active := True
  end;
end;

procedure TrptCurrencyF.N1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptCurrencyF.qryRptCurrencyAfterOpen(DataSet: TDataSet);
var
  i: Integer;
  curField: TField;
begin
  inherited;
  with qryRptCurrency do
  begin
    SumGridFieldNames := '';
    for i := 0 to FieldCount - 1 do
    begin
      curField := Fields[i];

      curField.Tag := 3;

      if (curField is TFloatField) or (curField is TBCDField) then
        SumGridFieldNames := SumGridFieldNames + ';' + curField.FieldName;

      if curField is TFloatField then
        (curField as TFloatField).DisplayFormat := '#,##0.00;(#,##0.00)';
      if curField is TBCDField then
      begin
        (curField as TBCDField).currency := True;
        if i > ConstField then
          (curField as TBCDField).DisplayFormat := '#,##0.00;(#,##0.00)';
      end;
    end;
  end;
  SetDisplayLable;
  UpdateRemain;
  SumGrid1.Active := False;
  SumGrid1.FieldsName := RightStr(SumGridFieldNames,
    Length(SumGridFieldNames) - 1);
  SumGrid1.Active := True;
  SetColSize(DBGrid1, 1);
end;

procedure TrptCurrencyF.SetDisplayLable;
var
  cId, cName: string;
begin
  with qryCurrencies do
  begin
    qryRptCurrency.FieldByName('Debt').DisplayLabel := 'بدهکار';
    qryRptCurrency.FieldByName('Credit').DisplayLabel := 'بستانکار';
    qryRptCurrency.FieldByName('Remain').DisplayLabel := 'مانده';
    First;
    while not Eof do
    begin
      cId := qryCurrenciesCurrenciesID.AsString;
      cName := qryCurrenciesCurrenciesName.AsString;
      qryRptCurrency.FieldByName('Debt' + cId).DisplayLabel :=
        Format('بدهکارارزی-%s', [cName]);
      qryRptCurrency.FieldByName('Credit' + cId).DisplayLabel :=
        Format('بستانکارارزی-%s', [cName]);
      qryRptCurrency.FieldByName('Remain' + cId).DisplayLabel :=
        Format('مانده ارزی-%s', [cName]);
      Next;
    end;
  end;
end;

procedure TrptCurrencyF.UpdateRemain;
var
  i: string;
begin
  with qryCurrencies do
  begin
    try
      UpdateRemainPerCurrency('');
      First;
      DisableControls;
      while not Eof do
      begin
        UpdateRemainPerCurrency(qryCurrenciesCurrenciesID.AsString);
        Next;
      end;
    finally
      First;
      EnableControls;
    end;
  end;
end;

procedure TrptCurrencyF.UpdateRemainPerCurrency(i: string);
var
  balance: Real;
begin
  with qryRptCurrency do
  begin
    First;
    balance := 0;
    while not Eof do
    begin
      balance := balance + (FieldByName('Debt' + i).AsFloat -
        FieldByName('Credit' + i).AsFloat);
      edit;
      FieldByName('Remain' + i).AsFloat := balance;
      post;
      Next;
    end;
    First;
  end;
end;

procedure TrptCurrencyF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TrptCurrencyF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TrptCurrencyF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TrptCurrencyF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
