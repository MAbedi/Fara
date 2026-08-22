unit ConversionCoCalc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, DB, ADODB, ppBands,
  ppClass, ppDB, ppCtrls, ppReport, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, ppVar, Menus, ppTypes,
  SumDBGrid, ppParameter, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, Vcl.ComCtrls;

type
  TConversionCoCalcF = class(Ttemplate2MDIF)
    dsIncorporate: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    qryIncorporate: TADOQuery;
    Panel4: TPanel;
    cmbReciptType: TComboBox;
    Label2: TLabel;
    actFilter: TAction;
    btnVeritable: TBitBtn;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    qryUpDate: TADOQuery;
    qryIncorporateStuffCode: TLargeintField;
    btnFilter: TBitBtn;
    memCalcKind: TMemo;
    qryIncorporateServerID: TIntegerField;
    qryIncorporateYearID: TIntegerField;
    qryIncorporatereciptID: TIntegerField;
    qryIncorporateTotalInputPrice: TBCDField;
    qryIncorporateTotalOutputPrice: TBCDField;
    qryIncorporateTransFormID: TIntegerField;
    qryIncorporatec_StuffName: TStringField;
    qryIncorporateUnitName: TStringField;
    actInsertStuffCode: TAction;
    btn1: TBitBtn;
    pnlBottomCheck: TPanel;
    btnCopyPaste: TSpeedButton;
    btn4: TSpeedButton;
    DBGrid1: TCedarDbgrid;
    qryIncorporateReciptItemID: TIntegerField;
    pb1: TProgressBar;
    qryUnpriced: TADOQuery;
    dsUnpriced: TDataSource;
    qryUnpricedInputReciptNumber: TIntegerField;
    qryUnpricedInputReciptDate: TStringField;
    qryUnpricedStuffCode: TLargeintField;
    qryUnpricedc_StuffName: TStringField;
    qryUnpricedOutputReciptNumber: TIntegerField;
    qryUnpricedOutputReciptDate: TStringField;
    qryUnpricedOutputProductCodes: TStringField;
    DBGrid12: TCedarDbgrid;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure btnVeritableClick(Sender: TObject);
    procedure cmbReciptTypeChange(Sender: TObject);
    procedure actInsertStuffCodeExecute(Sender: TObject);
    procedure btnCopyPasteClick(Sender: TObject);
    procedure qryIncorporateBeforeDelete(DataSet: TDataSet);
  private
    ReciptTypeSQL: String;
    // DbgrdOption: set of TDBGridOption;
    Form_InOut: string;
    PawsFieldsActive, ProcedureActive: Integer;
    procedure InitCombo;
    procedure UpdateFilter;
    procedure UpdateQryFilter(qry: TADOQuery);
    procedure UpdateUnpricedQryFilter(qry: TADOQuery);
    // function Total(SellPrice: Real): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConversionCoCalcF: TConversionCoCalcF;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro, sndkey32, FormFunctions, search2,
  sort2, StrUtils, filter_ADO, FilterClass_ADO, GetExcel, Filter_ADO_Const;

{$R *.dfm}

procedure TConversionCoCalcF.InitCombo;
begin
  cmbReciptType.Clear;
  with TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT ReciptTypes.ReciptType, ReciptTypes.ReciptCaption';
      SQL.Add('FROM ReciptTypes INNER JOIN');
      SQL.Add('Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType');
      SQL.Add('WHERE (ReciptTypes.ConversionCoSerial > 0)');
      SQL.Add('GROUP BY ReciptTypes.ReciptType, ReciptTypes.ReciptCaption');
      SQL.Add('ORDER BY ReciptTypes.ReciptType');
      ReciptTypeSQL := SQL.Text;
      Open;
      while not Eof do
      begin
        cmbReciptType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        Next;
      end;
      Close;
    finally
      Free;
      cmbReciptType.ItemIndex := 0;
    end;
  if cmbReciptType.Items.Count = 0 then
    Warn('"سريال فرم مرتبط ضرائب" ' + ' مشخص نشده است ');

end;

procedure TConversionCoCalcF.qryIncorporateBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response(' آيا براي حذف كالا مطمئن هستيد؟') <> mrYes then
    Abort

end;

procedure TConversionCoCalcF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombo;
end;

procedure TConversionCoCalcF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TConversionCoCalcF.actInsertStuffCodeExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  qry := TADOQuery.Create(Self);
  With qry do
    try
      Connection := DMf.adcBSell;
      Active := false;
      SQL.Text := 'SELECT DISTINCT ReciptItems.StuffCode';
      SQL.Add('FROM ReciptItems INNER JOIN');
      SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
      SQL.Add('ReciptItems.YearID = Recipts.YearID');
      SQL.Add('WHERE (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');
      SQL.Add('AND (Recipts.ReciptType = :ReciptType )');
      SQL.Add('AND (Recipts.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo )');
      SQL.Add('AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo )');
      SQL.Add('AND (Recipts.ReciptState < 3)');
      SQL.Add('AND ( Recipts.DocNo = 0 )');
      SQL.Add('AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
      SQL.Add('AND (Recipts.PersonID1 BETWEEN :CustIDFrom AND :CustIDTo OR Recipts.PersonID1=0 )');
      SQL.Add('AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');

      UpdateQryFilter(qry);
      BigMessageProgBar('در حال انتقال كالاها  ...‏', RecordCount);
      qryIncorporate.DisableControls;
      while not Eof do
      begin
        qryIncorporate.Insert;
        qryIncorporate.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;
        qryIncorporate.Post;
        GoProgressBar(IntToStr(RecNo) + ' <> ' + FieldByName('StuffCode')
          .AsString + #254 + ' از ' + #254 + IntToStr(RecordCount) + #254);
        Next;
      end;
    finally
      qryIncorporate.EnableControls;
      Free;
      BigMessage('ثبت شد.', 1);
    end;

end;

procedure TConversionCoCalcF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryIncorporate);
end;

procedure TConversionCoCalcF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryIncorporate);
end;

procedure TConversionCoCalcF.UpdateFilter;
var
  i: Integer;
begin
  i := 0;
  With TADOQuery.Create(DMf.adcBSell) do
    try
      Connection := DMf.adcBSell;
      SQL.Text :=
        'SELECT EffectType,PawsFieldsActive,ProcedureActive FROM ReciptTypes';
      SQL.Add('WHERE (ReciptType = :ReciptType )');
      Parameters.ParamByName('ReciptType').Value :=
        Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
      Active := True;
      if FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8] then
      begin
        Form_InOut := 'Output';
      end
      else
      begin
        Form_InOut := 'Input';
      end;
      PawsFieldsActive := FieldByName('PawsFieldsActive').AsInteger;
      ProcedureActive := FieldByName('ProcedureActive').AsInteger;
    finally
      Free;
    end;
  PriceOnStoreType(i, DBGrid1, qryIncorporate);
  UpdateQryFilter(qryIncorporate);
  UpdateUnpricedQryFilter(qryUnpriced);

  with qryIncorporate.Parameters do
  begin
    LblShowLimitPlace1.Caption := '  از شماره ' +
      IntToStr(ParamByName('ReciptNumberFrom').Value) + ' تا ' +
      IntToStr(ParamByName('ReciptNumberTo').Value);
    LblShowLimitPlace2.Caption := '  از تاريخ ' + ParamByName('ReciptDateFrom')
      .Value + ' تا ' + ParamByName('ReciptDateTo').Value;
  end; // with
end;

procedure TConversionCoCalcF.UpdateQryFilter(qry: TADOQuery);
begin
  with qry do
  begin
    Active := false;
    SQL.Text := 'SELECT Recipts.ServerID, Recipts.YearID';
    SQL.Add(',Recipts.ParentCoReciptID AS reciptID');

    SQL.Add(',MAX(ReciptItems_1.ReciptItemID) AS ReciptItemID');
//    SQL.Add(',(ReciptItems_1.ReciptItemID) AS ReciptItemID');

    SQL.Add(',ReciptItems.ProductCode AS StuffCode,');
    SQL.Add('SUM(ReciptItems.TotalInputPrice) AS TotalInputPrice');
    SQL.Add(',SUM(ReciptItems.TotalOutputPrice) AS TotalOutputPrice');
//    SQL.Add('(ReciptItems.TotalInputPrice) AS TotalInputPrice');
//    SQL.Add(',(ReciptItems.TotalOutputPrice) AS TotalOutputPrice');

    SQL.Add(',ReciptItems.TransFormID, StuffCoding.c_StuffName, Units.UnitName');
    SQL.Add('FROM ReciptItems INNER JOIN');
    SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID ');
    SQL.Add('AND ReciptItems.YearID = Recipts.YearID INNER JOIN');
    SQL.Add('ReciptItems AS ReciptItems_1 ON ReciptItems.YearID = ReciptItems_1.YearID ');
    SQL.Add('AND ReciptItems.ServerID = ReciptItems_1.ServerID ');
    SQL.Add('AND Recipts.ParentCoReciptID = ReciptItems_1.ReciptID');
    if ProcedureActive <> 4 then
      SQL.Add('AND ReciptItems.ProductCode = ReciptItems_1.StuffCode AND ReciptItems.TransFormID = ReciptItems_1.TransFormID');
    SQL.Add('INNER JOIN Recipts AS Recipts_1 ON ReciptItems_1.ReciptID = Recipts_1.ReciptID ');
    SQL.Add('AND ReciptItems_1.ServerID = Recipts_1.ServerID AND ReciptItems_1.YearID = Recipts_1.YearID');
    SQL.Add('INNER JOIN StuffCoding ON ReciptItems.ProductCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode');
    SQL.Add('WHERE (Recipts_1.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');
    SQL.Add('AND (Recipts_1.ReciptType = :ReciptType )');
    SQL.Add('AND (Recipts_1.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo )');
    SQL.Add('AND (Recipts_1.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo )');
    SQL.Add('AND (Recipts_1.ReciptState < 3)');
    SQL.Add('AND ( Recipts_1.DocNo = 0 )');
    SQL.Add('AND (Recipts_1.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('AND (Recipts_1.PersonID1 BETWEEN :CustIDFrom AND :CustIDTo OR Recipts_1.PersonID1=0 )');
    SQL.Add('AND (Recipts_1.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
    SQL.Add('GROUP BY Recipts.ParentCoReciptID, ReciptItems.ProductCode, Recipts.ServerID');
    SQL.Add(', Recipts.YearID, ReciptItems.TransFormID');
    SQL.Add(', StuffCoding.c_StuffName, Units.UnitName');

    Parameters.ParamByName('ReciptType').Value :=
      Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('CustIDTo').Value :=
      GetcTo(myParams.ParamValues['CustID'], ftInteger);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    if CtrlDown then
      ShowQryParam(qry);

    Active := True;
  end;
end;

procedure TConversionCoCalcF.UpdateUnpricedQryFilter(qry: TADOQuery);
begin
  with qry do
  begin
    Active := false;
    if ProcedureActive = 4 then
      // این حالت اصلاً به تطبیق ProductCode/TransFormID نیاز نداره، پس
      // مصرفی «قیمت‌گذاری‌نشده» به این معنا وجود نداره
      Exit;

    SQL.Text := 'SELECT DISTINCT Recipts_1.ReciptNumber AS InputReciptNumber';
    SQL.Add(',Recipts_1.ReciptDate AS InputReciptDate');
    SQL.Add(',ReciptItems_1.StuffCode, StuffCoding.c_StuffName');
    SQL.Add(',Recipts.ReciptNumber AS OutputReciptNumber');
    SQL.Add(',Recipts.ReciptDate AS OutputReciptDate');
    SQL.Add(',(SELECT CAST(STUFF((SELECT DISTINCT '','' + CAST(ri2.ProductCode AS varchar(20))');
    SQL.Add('FROM ReciptItems ri2');
    SQL.Add('WHERE ri2.ReciptID = Recipts.ReciptID AND ri2.ServerID = Recipts.ServerID AND ri2.YearID = Recipts.YearID');
    SQL.Add('FOR XML PATH('''')), 1, 1, '''') AS varchar(500))) AS OutputProductCodes');
    SQL.Add('FROM ReciptItems AS ReciptItems_1 INNER JOIN');
    SQL.Add('Recipts AS Recipts_1 ON ReciptItems_1.ReciptID = Recipts_1.ReciptID');
    SQL.Add('AND ReciptItems_1.ServerID = Recipts_1.ServerID AND ReciptItems_1.YearID = Recipts_1.YearID INNER JOIN');
    SQL.Add('Recipts ON Recipts.ParentCoReciptID = Recipts_1.ReciptID');
    SQL.Add('AND Recipts.ServerID = Recipts_1.ServerID AND Recipts.YearID = Recipts_1.YearID INNER JOIN');
    SQL.Add('StuffCoding ON ReciptItems_1.StuffCode = StuffCoding.c_StuffCode');
    SQL.Add('WHERE (Recipts_1.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');
    SQL.Add('AND (Recipts_1.ReciptType = :ReciptType )');
    SQL.Add('AND (Recipts_1.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo )');
    SQL.Add('AND (Recipts_1.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo )');
    SQL.Add('AND (Recipts_1.ReciptState < 3)');
    SQL.Add('AND ( Recipts_1.DocNo = 0 )');
    SQL.Add('AND (Recipts_1.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
    SQL.Add('AND (Recipts_1.PersonID1 BETWEEN :CustIDFrom AND :CustIDTo OR Recipts_1.PersonID1=0 )');
    SQL.Add('AND (Recipts_1.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
    SQL.Add('AND NOT EXISTS (SELECT 1 FROM ReciptItems ri3');
    SQL.Add('WHERE ri3.ReciptID = Recipts.ReciptID AND ri3.ServerID = Recipts.ServerID AND ri3.YearID = Recipts.YearID');
    SQL.Add('AND ri3.ProductCode = ReciptItems_1.StuffCode AND ri3.TransFormID = ReciptItems_1.TransFormID)');
    SQL.Add('ORDER BY Recipts_1.ReciptNumber');

    Parameters.ParamByName('ReciptType').Value :=
      Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('CustIDTo').Value :=
      GetcTo(myParams.ParamValues['CustID'], ftInteger);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Active := True;
  end;
end;

procedure TConversionCoCalcF.btnCopyPasteClick(Sender: TObject);
begin
  inherited;
  actInsertStuffCode.Execute
end;

procedure TConversionCoCalcF.btnVeritableClick(Sender: TObject);
var
  // UnitSellPrice, Article: Real48;
  s, EntityoRWeight: string;
  b: Boolean;
begin
  inherited;
  if not IsActiveCalcPriceOnServer then
    Abort;
  b := not actFilter.Execute;
  if b then
    exit;

  if opt.EntityDisplayType in [0, 2] then
    EntityoRWeight := 'Entity'
  ELSE
    EntityoRWeight := 'Weight';

  with qryIncorporate do
  begin
    pb1.Max := RecordCount;
    pb1.Position := 0;
    pb1.Min := 1;
    pb1.Step := 1;
    DisableControls;
    First;
    while not Eof do
    begin
      if PawsFieldsActive = 4 then
      begin
        // اگر مساوی مواد بود
        s := 'UPDATE ReciptItems SET Article = %d ';
        s := Format(s, [FieldByName('TotalOutputPrice').AsLargeInt]);
      end
      else
      begin
        // اگر غیر از مواد بود
        s := 'UPDATE ReciptItems ' +
          'SET Article = %d , Total%sPrice = ROUND(Isnull(%s,0)+Isnull(Wage,0)+Isnull(Scoria,0) ,2)'
          + ',UnitSellPrice = CASE WHEN %s' + EntityoRWeight +
          '<>0 THEN ROUND((Isnull(%S,0)+Isnull(Wage,0)+Isnull(Scoria,0))/%s' +
          EntityoRWeight + ',2) ELSE 0 END';

        s := Format(s, [FieldByName('TotalOutputPrice').AsLargeInt, Form_InOut,
          FieldByName('TotalOutputPrice').AsString, Form_InOut,
          FieldByName('TotalOutputPrice').AsString, Form_InOut]);

      end;

      qryUpDate.SQL.Text := s;
      qryUpDate.SQL.Add('Where (ReciptItemID = :ReciptItemID)');
      qryUpDate.SQL.Add('And (ServerID = :ServerID)');
      qryUpDate.SQL.Add('And (YearID = :YearID)');

      qryUpDate.Parameters.ParamByName('ReciptItemID').Value :=
        FieldByName('ReciptItemID').AsInteger;

      qryUpDate.Parameters.ParamByName('ServerID').Value :=
        FieldByName('ServerID').AsInteger;
      qryUpDate.Parameters.ParamByName('YearID').Value := FieldByName('YearID')
        .AsInteger;
      if FieldByName('TotalOutputPrice').AsLargeInt <> 0 then
        qryUpDate.ExecSQL;
      Next;
      pb1.StepIt;
      if RecNo mod 10 = 0 then
        Application.ProcessMessages;
    end;
    EnableControls;
  end;
  BigMessage('ثبت شد ', 1);
end;

procedure TConversionCoCalcF.cmbReciptTypeChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TConversionCoCalcF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close;
end;

// function TConversionCoCalcF.Total;
// var
// LimitFi: Currency;
// begin
// LimitFi := GetLimitFi(qryIncorporate);
// case opt.EntityDisplayType of
// 0:
// Result := ' ' + Form_InOut + 'Entity * ' + FloatToStr(SellPrice);
// 1:
// Result := ' ' + Form_InOut + 'Weight * ' + FloatToStr(SellPrice);
// 2:
// if SellPrice >= LimitFi then
// Result := ' ' + Form_InOut + 'Weight * ' + FloatToStr(SellPrice)
// else
// Result := ' ' + Form_InOut + 'Entity * ' + FloatToStr(SellPrice);
// 3:
// if SellPrice >= LimitFi then
// Result := ' ' + Form_InOut + 'Entity * ' + FloatToStr(SellPrice)
// else
// Result := ' ' + Form_InOut + 'Weight * ' + FloatToStr(SellPrice);
// end; // case
// end;

procedure TConversionCoCalcF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItem(DMf.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) FROM Recipts');
      AddItem(DMf.adcBSell, 'ReciptNumber', 'فرم ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts');
      AddItem(DMf.adcBSell, 'CustID', 'مشتري', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT CustID,CustName FROM Customers INNER JOIN  CustomersGroup ' +
        'ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID ' +
        'WHERE (Customers.CustID <>0 ) ',
        'Select Min(CustID),Max(CustID) FROM Customers INNER JOIN  ' +
        'CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + 'WHERE (Customers.CustID <>0 ) ');
      AddItem(DMf.adcBSell, 'STOREID', 'انبار', ' كد ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      if ShowModal = mrOk then
      begin
        pnlLblLimitPlace.Hint := GetFilterStringCaption;
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

end.
