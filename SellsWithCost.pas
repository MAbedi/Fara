{ -----------------------------------------------------------------------------
  Unit Name: rptRefineSell2
  Author:    Mahmood
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit SellsWithCost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ppDB, ppDBPipe, ppModule, System.StrUtils,
  ppStrtch, ppRegion, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ComCtrls, ppParameter,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.CheckLst;

type
  ThackCedarGrid = class(TCedarDbgrid);

  TSellsWithCostF = class(Ttemplate2MDIF)
    srcSell: TDataSource;
    qrySell: TADOQuery;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actFilter: TAction;
    actSendExel: TAction;
    actShowForm: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    BitBtn3: TBitBtn;
    actSort: TAction;
    StatusBar1: TStatusBar;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    DBGrid1: TCedarDbgrid;
    Panel1: TPanel;
    CheckListBox1: TCheckListBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblReciptNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblReciptDateGetText(Sender: TObject; var Text: String);
    procedure ppLblStoreIDGetText(Sender: TObject; var Text: String);
    procedure ppLblStuffCodeGetText(Sender: TObject; var Text: String);
    procedure ppSysVarGetPageNumberStringGetText(Sender: TObject;
      var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qrySellAfterOpen(DataSet: TDataSet);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblGetPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure DBGrid1MouseLeave(Sender: TObject);
  private
    { Private declarations }
    formType: Byte;
    CodeTypeName: String;
    procedure UpdateFilter;
    procedure ApplyGrouping;
  public
    { Public declarations }
  end;

var
  SellsWithCostF: TSellsWithCostF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, search2,
  sort2, TreeChart, DBGrid2Print;

{$R *.dfm}

procedure TSellsWithCostF.UpdateFilter;
var
  i: Byte;
  s: String;
begin
  ApplyGrouping;
  // StuffKindActive
  if opt.StuffKindActive then
    s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
  if s = '' then
    s := '0,1';

  with qrySell do
  begin
    Active := False;

    // تنظیم همه پارامترهای مشترک
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);

    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);

    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    // پارامترهای اضافی
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);

    Active := True;

    // تنظیم فرمت فیلدها
    for i := 0 to FieldCount - 1 do
    begin
      Fields[i].Tag := 3;
      if Fields[i] is TBCDField then
        (Fields[i] as TBCDField).currency := True;
      if Fields[i] is TFMTBCDField then
        (Fields[i] as TFMTBCDField).currency := True;
    end;
  end;

  // نمایش محدوده‌ها در لیبل
  LblShowLimitPlace1.Caption := ' از شماره ' +
    IntToStr(qrySell.Parameters.ParamByName('ReciptNumberFrom').Value) + ' تا '
    + IntToStr(qrySell.Parameters.ParamByName('ReciptNumberTo').Value) +
    ' - از تاریخ ' + qrySell.Parameters.ParamByName('ReciptDateFrom').Value +
    ' تا ' + qrySell.Parameters.ParamByName('ReciptDateTo').Value;

  LblShowLimitPlace2.Caption := ' از كد انبار ' +
    IntToStr(qrySell.Parameters.ParamByName('StoreIDFrom').Value) + ' تا ' +
    IntToStr(qrySell.Parameters.ParamByName('StoreIDTo').Value);
end;

procedure TSellsWithCostF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      if opt.StuffKindActive then
        AddItem(DMf.adcBSell, 'StuffKindActive', 'نوع كالا', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''قطعي''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''اماني'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMf.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      AddItem(DMf.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts  ');
      AddItem(DMf.adcBSell, 'ReciptNumber', ' فرم ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'SELECT Min(ReciptNumber),Max(ReciptNumber) From Recipts ');

      AddItemFilter(GetFilter, TFilterStuffCode);

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

procedure TSellsWithCostF.FormShow(Sender: TObject);
begin
  inherited;
  // ColorDBGrid(DBGrid1);
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TSellsWithCostF.FormCreate(Sender: TObject);
begin
  inherited;

  with CheckListBox1 do
  begin
    Clear;
    Items.Add('گروه اصلی');
    Items.Add('گروه فرعی');
    Items.Add('کالا');
    Items.Add('مشتری');
    Items.Add('مشخصات فنی');
    Items.Add('انبار');
    Items.Add('نوع فرم');
    // Items.Add('کارشناس فروش');
    Items.Add('روز');
    Items.Add('ماه');
    Checked[2] := True; // کالا
    Checked[3] := True; // مشتری
  end;

  formType := var_glb_gParam;
  Caption := 'گزارش فروش با اطلاعات بهاي تمام شده';

  Entity_Weight(DBGrid1);
end;

procedure TSellsWithCostF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrySell.DisableControls;
    InitReportFile(ppReport1, 'rptRefineSell2' + IntToStr(formType));
  finally
    qrySell.EnableControls;
  end; // try
end;

procedure TSellsWithCostF.ppLblReciptNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از شماره ' +
    IntToStr(qrySell.Parameters.ParamByName('ReciptNumberFrom').Value) + ' تا '
    + IntToStr(qrySell.Parameters.ParamByName('ReciptNumberTo').Value)
end;

procedure TSellsWithCostF.ppLblReciptDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از تاريخ ' + qrySell.Parameters.ParamByName('ReciptDateFrom').Value +
    ' تا ' + qrySell.Parameters.ParamByName('ReciptDateTo').Value
end;

procedure TSellsWithCostF.ppLblStoreIDGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از كد انبار ' +
    IntToStr(qrySell.Parameters.ParamByName('StoreIDFrom').Value) + ' تا ' +
    IntToStr(qrySell.Parameters.ParamByName('StoreIDTo').Value)
end;

procedure TSellsWithCostF.ppLblStuffCodeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'از گروه كالاي ' +
    IntToStr(qrySell.Parameters.ParamByName(CodeTypeName + 'From').Value) +
    ' تا ' + IntToStr(qrySell.Parameters.ParamByName(CodeTypeName + 'To').Value)
end;

procedure TSellsWithCostF.ppSysVarGetPageNumberStringGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSellsWithCostF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySell);
end;

procedure TSellsWithCostF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySell);
end;

procedure TSellsWithCostF.qrySellAfterOpen(DataSet: TDataSet);
begin
  inherited;

  with qrySell do
  begin
    if FindField('StuffCode') <> nil then
      FieldByName('StuffCode').DisplayLabel := 'کد کالا';
    if FindField('ItemName') <> nil then
      FieldByName('ItemName').DisplayLabel := 'نام کالا';
    if FindField('CustomerName') <> nil then
      FieldByName('CustomerName').DisplayLabel := 'نام مشتری';
    if FindField('SalesPerson') <> nil then
      FieldByName('SalesPerson').DisplayLabel := 'کارشناس فروش';
    if FindField('MainGroupName') <> nil then
      FieldByName('MainGroupName').DisplayLabel := 'گروه اصلی';
    if FindField('GroupName') <> nil then
      FieldByName('GroupName').DisplayLabel := 'گروه';
    if FindField('TechnicalSpec') <> nil then
      FieldByName('TechnicalSpec').DisplayLabel := 'مشخصات فنی';
    if FindField('WarehouseID') <> nil then
      FieldByName('WarehouseID').DisplayLabel := 'انبار';
    if FindField('FormType') <> nil then
      FieldByName('FormType').DisplayLabel := 'نوع فرم';
    if FindField('ReciptDate') <> nil then
      FieldByName('ReciptDate').DisplayLabel := 'تاریخ';

    if FindField('ReciptMonth') <> nil then
      FieldByName('ReciptMonth').DisplayLabel := 'ماه';

    FieldByName('Quantity').DisplayLabel := 'تعداد';
    FieldByName('SalesValue').DisplayLabel := 'بهای فروش';
    FieldByName('Discount').DisplayLabel := 'تخفیف';
    FieldByName('NetSales').DisplayLabel := 'خالص فروش';
    FieldByName('CostOfSales').DisplayLabel := 'بهای تمام‌شده';
    FieldByName('GrossProfit').DisplayLabel := 'حاشیه سود';
  end;

  DBGrid1.ColorDBGrid;
  DBGrid1.setSizeColDBGrid(True);
  ThackCedarGrid(DBGrid1).DoLoad();

end;

procedure TSellsWithCostF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TSellsWithCostF.ppLblGetPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSellsWithCostF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSellsWithCostF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption
end;

procedure TSellsWithCostF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qrySell, Self);
end;

procedure TSellsWithCostF.BitBtn7Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSellsWithCostF.DBGrid1MouseLeave(Sender: TObject);
begin
  inherited;
  ThackCedarGrid(DBGrid1).DoSave();
end;

procedure TSellsWithCostF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TSellsWithCostF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate
end;

procedure TSellsWithCostF.ApplyGrouping;
var
  SelectList, GroupByList: TStringList;
  i: Integer;
begin
  SelectList := TStringList.Create;
  GroupByList := TStringList.Create;
  try
    with qrySell do
    begin
      Active := False;
      SQL.Clear;

      // ====================== ستون‌های گروه‌بندی ======================
      if CheckListBox1.Checked[0] then
      begin
        SelectList.Add('sg2.groupid AS MainGroupID');
        SelectList.Add('sg2.groupname AS MainGroupName');
        GroupByList.Add('sg2.groupid, sg2.groupname');
      end;
      if CheckListBox1.Checked[1] then
      begin
        SelectList.Add('sg.groupid AS GroupID');
        SelectList.Add('sg.groupname AS GroupName');
        GroupByList.Add('sg.groupid, sg.groupname');
      end;
      if CheckListBox1.Checked[2] then
      begin
        SelectList.Add('ri.stuffcode AS StuffCode');
        SelectList.Add('sc.c_stuffname AS ItemName');
        GroupByList.Add('ri.stuffcode, sc.c_stuffname');
      end;
      if CheckListBox1.Checked[3] then
      begin
        SelectList.Add('c.custfirstname + '' '' + c.custname AS CustomerName');
        GroupByList.Add('c.custfirstname, c.custname');
      end;
      if CheckListBox1.Checked[4] then
      begin
        SelectList.Add('sc.c_stufftecinfo AS TechnicalSpec');
        GroupByList.Add('sc.c_stufftecinfo');
      end;
      if CheckListBox1.Checked[5] then
      begin
        SelectList.Add('r.storeid AS WarehouseID');
        GroupByList.Add('r.storeid');
      end;
      if CheckListBox1.Checked[6] then
      begin
        SelectList.Add('lp.name AS FormType');
        GroupByList.Add('lp.name');
      end;
      if CheckListBox1.Checked[7] then
      begin
        SelectList.Add('r.reciptdate AS ReciptDate');
        GroupByList.Add('r.reciptdate');
      end;
      if CheckListBox1.Checked[8] then
      begin
        SelectList.Add
          ('SUBSTRING(CAST(r.reciptdate AS VARCHAR(10)), 1, 7) AS ReciptMonth');
        GroupByList.Add('SUBSTRING(CAST(r.reciptdate AS VARCHAR(10)), 1, 7)');
      end;

      if GroupByList.Count = 0 then
      begin
        SelectList.Add('ri.stuffcode AS StuffCode');
        SelectList.Add('sc.c_stuffname AS ItemName');
        GroupByList.Add('ri.stuffcode, sc.c_stuffname');
      end;

      // ====================== ستون‌های محاسباتی ======================
      // فاکتور 12 → بیت 4
      // حواله 11 → بیت 2
      SelectList.Add
        ('SUM(CASE WHEN (rt.IneffectiveInputChk & 4) = 4 THEN ri.outputentity END) AS Quantity');
      SelectList.Add
        ('SUM(CASE WHEN (rt.IneffectiveInputChk & 4) = 4 THEN ri.totaloutputprice END) AS SalesValue');
      SelectList.Add
        ('SUM(CASE WHEN (rt.IneffectiveInputChk & 4) = 4 THEN ri.deficitvalue END) AS Discount');
      SelectList.Add
        ('SUM(CASE WHEN (rt.IneffectiveInputChk & 4) = 4 THEN ri.totaloutputprice - ri.deficitvalue END) AS NetSales');

      SelectList.Add
        ('SUM(CASE WHEN (rt.IneffectiveInputChk & 2) = 2 THEN ri.totaloutputprice END) AS CostOfSales');

      // سود ناخالص
      SelectList.Add
        ('ISNULL(SUM(CASE WHEN (rt.IneffectiveInputChk & 4) = 4 THEN ri.totaloutputprice - ri.deficitvalue END),0) '
        + '- ISNULL(SUM(CASE WHEN (rt.IneffectiveInputChk & 2) = 2 THEN ri.totaloutputprice END),0) AS GrossProfit');

      // ====================== SQL ======================
      SQL.Add('SELECT');
      for i := 0 to SelectList.Count - 1 do
        SQL.Add(SelectList[i] + IfThen(i < SelectList.Count - 1, ',', ''));

      SQL.Add('FROM recipts r');
      SQL.Add('INNER JOIN reciptitems ri ON r.reciptid = ri.reciptid AND r.serverid = ri.serverid AND r.yearid = ri.yearid');
      SQL.Add('INNER JOIN ReciptTypes rt ON r.recipttype = rt.recipttype');
      SQL.Add('INNER JOIN stuffcoding sc ON ri.stuffcode = sc.c_stuffcode');
      SQL.Add('INNER JOIN stuffgroups sg ON sc.groupid = sg.groupid');
      SQL.Add('LEFT JOIN stuffgroups sg2 ON sg.upergroupid = sg2.groupid');
      SQL.Add('LEFT JOIN lookups lp ON ri.secondtypeitem = lp.lookupid');
      SQL.Add('LEFT JOIN lookups lk ON sc.st13 = lk.code AND lk.kind = 307');
      SQL.Add('INNER JOIN customers c ON r.personid1 = c.custid');
      SQL.Add('INNER JOIN customers s ON r.personid3 = s.custid');

      SQL.Add('WHERE (rt.IneffectiveInputChk & 6) <> 0'); // بیت 2 یا 4
      SQL.Add(' AND r.storeid BETWEEN :StoreIDFrom AND :StoreIDTo');
      SQL.Add(' AND r.reciptnumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo');
      SQL.Add(' AND r.reciptdate BETWEEN :ReciptDateFrom AND :ReciptDateTo');
      SQL.Add(' AND r.YearID BETWEEN :YearIDFrom AND :YearIDTo');
      SQL.Add(' AND r.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo');
      SQL.Add(' AND r.SellsMethod BETWEEN :SellsMethodFrom AND :SellsMethodTo');
      SQL.Add(' AND r.reciptstate < 3');

      SQL.Add('GROUP BY');
      for i := 0 to GroupByList.Count - 1 do
        SQL.Add(GroupByList[i] + IfThen(i < GroupByList.Count - 1, ',', ''));

      SQL.Add('ORDER BY 1');
    end;
  finally
    SelectList.Free;
    GroupByList.Free;
  end;
end;

end.
