unit rptTrans_Cust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, StdCtrls,
  Mask, Buttons, ComCtrls, ImgList, DBActns, ActnList, ExtCtrls, ppDB,
  ppDBPipe, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ppParameter, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TrptTrans_CustF = class(Ttemplate2MDIF)
    StatusBar1: TStatusBar;
    SBtnStoreID: TSpeedButton;
    LblStore: TLabel;
    DBText: TDBText;
    EdtStoreID: TDBEdit;
    DBNavigator2: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    SrcCust: TDataSource;
    qryCust: TADOQuery;
    qryReciptItem: TADOQuery;
    qryReciptItemc_StuffName: TStringField;
    qryReciptItemUnitName: TStringField;
    SrcReciptItem: TDataSource;
    qryCustPersonID1: TIntegerField;
    qryCustCustName: TStringField;
    qryReciptItemReciptNumber: TIntegerField;
    qryReciptItemReciptDate: TStringField;
    qryReciptItemProductModel: TIntegerField;
    qryReciptItemOutputEntity: TFloatField;
    qryReciptItemOutputWeight: TFloatField;
    qryReciptItemTotalOutputPrice: TBCDField;
    ActFilter: TAction;
    actShow: TAction;
    actSort: TAction;
    actExcel: TAction;
    qryReciptItemReciptItemID: TIntegerField;
    qryReciptItemModelName: TStringField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLabel18: TppLabel;
    ppLine11: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    qryReciptItemReciptID: TIntegerField;
    qryReciptItemStoreID: TSmallintField;
    StatusBar2: TStatusBar;
    StatusBar3: TStatusBar;
    qryReciptItemsumEntity: TFloatField;
    qryReciptItemsumWeight: TFloatField;
    qryReciptItemsumPrice: TBCDField;
    qryReciptItem_row: TIntegerField;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine10: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppLine17: TppLine;
    ppDBText17: TppDBText;
    ppLine18: TppLine;
    ppDBText18: TppDBText;
    ppLine19: TppLine;
    ppDBText25: TppDBText;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppShape1: TppShape;
    ppLine23: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine24: TppLine;
    ppLabel19: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLabel20: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine55: TppLine;
    qryReciptItemServerID: TIntegerField;
    qryReciptItemYearID: TIntegerField;
    qryReciptItemStuffCode: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure ActFilterExecute(Sender: TObject);
    procedure qryCustAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure SBtnStoreIDClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryReciptItemAfterOpen(DataSet: TDataSet);
    procedure actShowExecute(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryReciptItemCalcFields(DataSet: TDataSet);
    procedure qryReciptItemAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
  private
    formType: byte;
    sumEntity: Integer;
    sumWeight: Integer;
    sumPrice: currency;
    flag: boolean;
    procedure UpdateFilter;
    procedure Updateremain;
    procedure chooseColumnDown;
    procedure chooseColumnUp;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptTrans_CustF: TrptTrans_CustF;

implementation

uses filter_ADO, FilterClass_ADO, DM, GlobalPro, search2, sort2,
  searchCode_ADO, StrUtils, Math, FormFunctions;

{$R *.dfm}

procedure TrptTrans_CustF.FormCreate(Sender: TObject);
begin
  inherited;
  flag := true;
  formType := var_glb_gParam;
  Entity_Weight(DBGrid1);
end;

procedure TrptTrans_CustF.ActFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts ');
      AddItem(DMF.adcBSell, 'Model', '„œ· ﬂ«·« ', ' ﬂœ „œ·', ftInteger,
        dvMinMax, '', '', ciLookup, 'SELECT LookUpID, Name FROM  dbo.LookUps ',
        'select Min(LookUpID),Max(LookUpID) From dbo.LookUps');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMF.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');

      AddItem(DMF.adcBSell, 'PersonID', ' ‰«„ „‘ —Ì ', 'ﬂœ „‘ —Ì', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE     (GroupType = 0))) ',
        'select Min(CustID),Max(CustID) From Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID  FROM   dbo.CustomersGroup WHERE     (GroupType = 0)))');
      AddItem(DMF.adcBSell, 'ReciptNumber', ' ›—„ ', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts WHERE ReciptType = '
        + IntToStr(formType));
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

procedure TrptTrans_CustF.UpdateFilter;
begin
  with qryReciptItem do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := formType;
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ModelFrom').Value :=
      GetcFrom(myParams.ParamValues['Model'], ftInteger);
    Parameters.ParamByName('ModelTo').Value :=
      GetcTo(myParams.ParamValues['Model'], ftInteger);
  end; // with
  with qryCust do
  begin
    Active := False;
    Parameters.ParamByName('PersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('PersonIDTo').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);
    Active := true;
  end;
end;

procedure TrptTrans_CustF.qryCustAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryReciptItem do
  begin
    Active := False;
    Parameters.ParamByName('PersonID1').Value :=
      DataSet.Fieldbyname('PersonID1').AsInteger;
    Active := true;
  end; // with
end;

procedure TrptTrans_CustF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  ActFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptTrans_CustF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryReciptItem);
end;

procedure TrptTrans_CustF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryReciptItem);
end;

procedure TrptTrans_CustF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptTrans_CustF.SBtnStoreIDClick(Sender: TObject);
var
  b: boolean;
  Results: array [0 .. 1] of String;
  Txt: String;
begin
  inherited;
  Txt := 'SELECT ReciptCust.PersonID1 as CustID,ReciptCust.CustName from (SELECT     dbo.Recipts.PersonID1, dbo.Customers.CustName FROM    dbo.Customers INNER JOIN '
    + 'dbo.Recipts ON dbo.Customers.CustID = dbo.Recipts.PersonID1 ' +
    'GROUP BY dbo.Recipts.PersonID1, dbo.Customers.CustName) ReciptCust ' +
    'WHERE ReciptCust.PersonID1 BETWEEN  ' +
    IntToStr(qryCust.Parameters.ParamByName('PersonIDFrom').Value) + ' AND  ' +
    IntToStr(qryCust.Parameters.ParamByName('PersonIDTo').Value);
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, '„‘ —Ì«‰', Txt, ['òœ', '‰«„ '],
    Results, [50, 150], alLeft);
  if b then
  begin
    qryCust.Locate('PersonID1', Results[0], []);
  end; // if
end;

procedure TrptTrans_CustF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptTrans_CustF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, true);
end;

procedure TrptTrans_CustF.qryReciptItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Updateremain;
  StatusBar1.Panels[4].Text := 'Ã„⁄ ﬂ· ';
  StatusBar1.Panels[3].Text := ' ⁄œ«œ ﬂ«·« : ' +
    IntToStr(qryReciptItem.RecordCount);
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := '„ﬁœ«—=' +
      CurrToStr(CalcSumFileds(qryReciptItem, 'OutputEntity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := 'Ê“‰=' +
      CurrToStr(CalcSumFileds(qryReciptItem, 'Outputweight'));
  StatusBar1.Panels[0].Text :=
    CurrToStrF(CalcSumFileds(qryReciptItem, 'TotalOutputPrice'), ffCurrency, 0)
    + ' —Ì«· ';
end;

procedure TrptTrans_CustF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryReciptItem, Self, qryReciptItem.Fieldbyname('StuffCode')
    .AsLargeInt)
  // ReciptsF.qryItems.Locate('ReciptItemID',qryReciptItem.Fieldbyname('ReciptItemID').AsInteger,[])
end;

procedure TrptTrans_CustF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TrptTrans_CustF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptTrans_CustF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptTrans_CustF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryReciptItem.DisableControls;
    InitReportFile(ppReport1, Self.Name, true);
  finally
    qryReciptItem.EnableControls;
  end;
end;

procedure TrptTrans_CustF.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 1 then
  begin
    if (Button = mbleft) and (Shift = [ssctrl]) then
      if DBGrid1.SelectedRows.CurrentRowSelected then
      begin
        sumEntity := sumEntity + qryReciptItem.Fieldbyname('OutputEntity')
          .AsInteger;
        sumWeight := sumWeight + qryReciptItem.Fieldbyname('OutputWeight')
          .AsInteger;
        sumPrice := sumPrice + qryReciptItem.Fieldbyname('TotalOutputPrice')
          .AsCurrency;
      end
      else
      begin
        sumEntity := sumEntity - qryReciptItem.Fieldbyname('OutputEntity')
          .AsInteger;
        sumWeight := sumWeight - qryReciptItem.Fieldbyname('OutputWeight')
          .AsInteger;
        sumPrice := sumPrice - qryReciptItem.Fieldbyname('TotalOutputPrice')
          .AsCurrency;
      end
  end
  else
  begin
    sumEntity := qryReciptItem.Fieldbyname('OutputEntity').AsInteger;
    sumWeight := qryReciptItem.Fieldbyname('OutputWeight').AsInteger;
    sumPrice := qryReciptItem.Fieldbyname('TotalOutputPrice').AsCurrency;
  end;
  if DBGrid1.SelectedRows.CurrentRowSelected = False then
  begin
    if DBGrid1.SelectedRows.Count > 0 then
      qryReciptItem.GotoBookmark
        ((DBGrid1.SelectedRows[DBGrid1.SelectedRows.Count - 1]));
    // if DBGrid1.SelectedRows.Count=1 then
    // sumAmount:=qryCheck.Fieldbyname('ItemAmount').AsInteger;
  end;
  if opt.EntityDisplay then
    StatusBar3.Panels[2].Text := '„ﬁœ«—=' + IntToStr(sumEntity);
  if opt.WeightDisplay then
    StatusBar3.Panels[1].Text := 'Ê“‰=' + IntToStr(sumWeight);
  StatusBar3.Panels[0].Text := CurrToStrF(sumPrice, ffCurrency, 0) + ' —Ì«· ';
  StatusBar3.Panels[3].Text := ' ⁄œ«œ ”ÿ—=  ' +
    IntToStr(DBGrid1.SelectedRows.Count);;

end;

procedure TrptTrans_CustF.Updateremain;
var
  Price: currency;
  Entity, Weight: Integer;
begin
  with qryReciptItem do
  begin
    try
      First;
      DisableControls;
      // c:= 0 ;
      Price := 0;
      Entity := 0;
      Weight := 0;
      while not eof do
      begin
        Price := Price + Fieldbyname('sumPrice').AsCurrency;
        Entity := Entity + Fieldbyname('sumEntity').AsInteger;
        Weight := Weight + Fieldbyname('sumWeight').AsInteger;
        edit;
        Fieldbyname('sumPrice').AsCurrency := Price;
        Fieldbyname('sumEntity').AsInteger := Entity;
        Fieldbyname('sumWeight').AsInteger := Weight;
        post;
        Next;
      end; //
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TrptTrans_CustF.qryReciptItemCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('_row').AsInteger := IfThen(DataSet.RecNo <> -1,
    DataSet.RecNo, 1);
end;

procedure TrptTrans_CustF.qryReciptItemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  StatusBar2.Panels[3].Text := ' ⁄œ«œ ”ÿ— Ã«—Ì= ' +
    IfThen(DataSet.Fieldbyname('_row').AsString <> '',
    DataSet.Fieldbyname('_row').AsString, '0');
  if opt.EntityDisplay then
    StatusBar2.Panels[2].Text := '„ﬁœ«—=' + DataSet.Fieldbyname
      ('sumEntity').AsString;
  if opt.WeightDisplay then
    StatusBar2.Panels[1].Text := 'Ê“‰=' + DataSet.Fieldbyname
      ('sumweight').AsString;
  StatusBar2.Panels[0].Text := CurrToStrF(DataSet.Fieldbyname('sumPrice')
    .AsCurrency, ffCurrency, 0) + ' —Ì«· ';
  if flag and ((DBGrid1.SelectedRows.Count = 1) or
    ((DBGrid1.SelectedRows.Count = 0)) and
    (qryReciptItem.RecordCount <> 0)) then
  begin
    StatusBar3.Panels[3].Text := '  ⁄œ«œ ”ÿ— «‰ Œ«»Ì= 1';
    if opt.EntityDisplay then
      StatusBar3.Panels[2].Text := '„ﬁœ«—=' + DataSet.Fieldbyname
        ('OutputEntity').AsString;
    if opt.WeightDisplay then
      StatusBar3.Panels[1].Text := 'Ê“‰=' + DataSet.Fieldbyname
        ('Outputweight').AsString;
    StatusBar3.Panels[0].Text :=
      CurrToStrF(DataSet.Fieldbyname('TotalOutputPrice').AsCurrency, ffCurrency,
      0) + ' —Ì«· ';
  end;

end;

procedure TrptTrans_CustF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryReciptItem.Fieldbyname('StuffCode'));
end;

procedure TrptTrans_CustF.chooseColumnDown;
var
  i, Entity, Weight: Integer;
  Price: currency;
begin
  if qryReciptItem.Fieldbyname('_row')
    .AsInteger = qryReciptItem.RecordCount then
    exit;
  Entity := 0;
  Weight := 0;
  Price := 0;
  with qryReciptItem do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected := true;
    for i := 0 to IfThen(DBGrid1.SelectedRows.Count <> 0,
      DBGrid1.SelectedRows.Count - 1, 0) do
    begin
      GotoBookmark((DBGrid1.SelectedRows[i]));
      Entity := Entity + qryReciptItem.Fieldbyname('OutputEntity').AsInteger;
      Weight := Weight + qryReciptItem.Fieldbyname('OutputWeight').AsInteger;
      Price := Price + qryReciptItem.Fieldbyname('TotalOutputPrice').AsCurrency;
    end; // for
    Next;
    Entity := Entity + qryReciptItem.Fieldbyname('OutputEntity').AsInteger;
    Weight := Weight + qryReciptItem.Fieldbyname('OutputWeight').AsInteger;
    Price := Price + qryReciptItem.Fieldbyname('TotalOutputPrice').AsCurrency;
    Prior;
    StatusBar3.Panels[3].Text := '  ⁄œ«œ ”ÿ—Â«Ì «‰ Œ«»Ì = ' +
      IntToStr(DBGrid1.SelectedRows.Count + 1);
    if opt.EntityDisplay then
      StatusBar3.Panels[2].Text := '„ﬁœ«— = ' + IntToStr(Entity);
    if opt.WeightDisplay then
      StatusBar3.Panels[1].Text := 'Ê“‰ = ' + IntToStr(Weight);
    StatusBar3.Panels[0].Text := CurrToStrF(Price, ffCurrency, 0) + ' —Ì«· ';
  end;
end;

procedure TrptTrans_CustF.chooseColumnUp;
var
  i, Entity, Weight: Integer;
  Price: currency;
begin
  if qryReciptItem.Fieldbyname('_row')
    .AsInteger = qryReciptItem.RecordCount then
    exit;
  Entity := 0;
  Weight := 0;
  Price := 0;
  with qryReciptItem do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected := true;
    for i := 0 to IfThen(DBGrid1.SelectedRows.Count <> 0,
      DBGrid1.SelectedRows.Count - 1, 0) do
    begin
      GotoBookmark((DBGrid1.SelectedRows[i]));
      Entity := Entity + qryReciptItem.Fieldbyname('OutputEntity').AsInteger;
      Weight := Weight + qryReciptItem.Fieldbyname('OutputWeight').AsInteger;
      Price := Price + qryReciptItem.Fieldbyname('TotalOutputPrice').AsCurrency;
    end; // for
    Next;
    StatusBar3.Panels[3].Text := '  ⁄œ«œ ”ÿ—Â«Ì «‰ Œ«»Ì = ' +
      IntToStr(DBGrid1.SelectedRows.Count);
    if opt.EntityDisplay then
      StatusBar3.Panels[2].Text := '„ﬁœ«— = ' + IntToStr(Entity);
    if opt.WeightDisplay then
      StatusBar3.Panels[1].Text := 'Ê“‰= ' + IntToStr(Weight);
    StatusBar3.Panels[0].Text := CurrToStrF(Price, ffCurrency, 0) + ' —Ì«· ';
  end;
end;

procedure TrptTrans_CustF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = vk_UP) and (Shift = [SSshift]) then
    chooseColumnUp
  else if (Key = vk_DOWN) or (Key = vk_UP) then
    flag := true
  else
    flag := False;
end;

procedure TrptTrans_CustF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = vk_DOWN) and (Shift = [SSshift]) then
    chooseColumnDown
  else if (Key = vk_DOWN) or (Key = vk_UP) then
    flag := true
  else
    flag := False;
end;

procedure TrptTrans_CustF.ppLabel16GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := '„ÕœÊœÂ  «—ÌŒ «“' + GetcFrom(myParams.ParamValues['ReciptDate'],
    ftString) + '  « ' + GetcTo(myParams.ParamValues['ReciptDate'], ftString);
end;

procedure TrptTrans_CustF.ppLabel11GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := '„ÕœÊœÂ ﬂ«·« «“' + GetcFrom(myParams.ParamValues['StuffCode'],
    ftLargeint) + '  « ' + GetcTo(myParams.ParamValues['StuffCode'],
    ftLargeint);
end;

end.
