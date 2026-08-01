{ -----------------------------------------------------------------------------
  Unit Name: RptCardexSpecial
  Author:    Ghaderi
  ----------------------------------------------------------------------------- }

unit RptCardexSpecial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, StdCtrls, ComCtrls,  ImgList, Math,
  DBActns, ActnList, ExtCtrls, Buttons, DB, ADODB, DBCtrls, ppBands,
  ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, Menus,
  ppMemo, ppModule, ppTypes, ppParameter, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TRptCardexSpecialF = class(Ttemplate2MDIF)
    Label1: TLabel;
    cmbStore: TComboBox;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    CheckAllStore: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel1: TPanel;
    BtnShow: TButton;
    Button2: TButton;
    Button3: TButton;
    qryOutPut: TADOQuery;
    srcOutPut: TDataSource;
    qryInput: TADOQuery;
    srcInput: TDataSource;
    qryOutPutCustomerID1: TIntegerField;
    qryOutPutCustomerID1_1: TStringField;
    qryOutPutOutputEntity: TFloatField;
    qryOutPutOutputWeight: TFloatField;
    qryOutPutTotalOutputPrice: TBCDField;
    qryOutPutTotalSellsPrice: TBCDField;
    qryOutPutProfit: TBCDField;
    qryOutPutItemNote: TStringField;
    qryOutPutReciptNumber: TIntegerField;
    qryOutPutReciptDate: TStringField;
    qryOutPutReciptCaption: TStringField;
    qryOutPutReciptItemID: TIntegerField;
    qryOutPutReciptID: TIntegerField;
    qryOutPutReciptType: TWordField;
    qryInputc_StuffName: TStringField;
    qryInputUnitName: TStringField;
    qryInputStuffSize: TStringField;
    qryInputStuffDiameter: TFloatField;
    qryInputStuffAlloy: TStringField;
    qryInputControlCode: TLargeintField;
    qryInputInputEntity: TFloatField;
    qryInputInputWeight: TFloatField;
    qryInputTotalInputPrice: TBCDField;
    qryInputPakingNo: TIntegerField;
    qryInputPakingName: TStringField;
    qryInputReciptNumber: TIntegerField;
    qryInputReciptDate: TStringField;
    qryInputReciptCaption: TStringField;
    qryInputReciptItemID: TIntegerField;
    qryInputReciptID: TIntegerField;
    qryInputReciptType: TWordField;
    actFilter: TAction;
    qryStore: TADOQuery;
    qryStoreStoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    actShow: TAction;
    actExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    BitBtn2: TBitBtn;
    qryInputStoreID: TSmallintField;
    qryOutPutStoreID: TSmallintField;
    StBRemain: TStatusBar;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine13: TppLine;
    ppLine16: TppLine;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine56: TppLine;
    ppLine58: TppLine;
    ppLine43: TppLine;
    ppLine55: TppLine;
    ppLine51: TppLine;
    ppDBText28: TppDBText;
    ppDBText1: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppDBCalc7: TppDBCalc;
    ppLine49: TppLine;
    ppLabel4: TppLabel;
    ppLine50: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel14: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    ppLine10: TppLine;
    ppLabel28: TppLabel;
    ppLine11: TppLine;
    ppLabel29: TppLabel;
    ppLine12: TppLine;
    ppLabel30: TppLabel;
    ppLine14: TppLine;
    ppLabel31: TppLabel;
    ppLabel26: TppLabel;
    ppDBText5: TppDBText;
    PopMenu: TPopupMenu;
    AllC_l_i_c_k_: TMenuItem;
    DetailNote: TMenuItem;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine5: TppLine;
    ppDBText12: TppDBText;
    ppLine6: TppLine;
    ppDBText13: TppDBText;
    ppLine15: TppLine;
    ppDBText14: TppDBText;
    ppLine17: TppLine;
    ppDBText17: TppDBText;
    ppDBText24: TppDBText;
    ppDBText21: TppDBText;
    ppLine18: TppLine;
    ppDBText22: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    qryInputUnitSellPrice: TFMTBCDField;
    ppLabel8: TppLabel;
    ppDBText23: TppDBText;
    ppLabel21: TppLabel;
    ppDBText25: TppDBText;
    qryOutPutUnitSellPrice: TFMTBCDField;
    ppLine24: TppLine;
    ppLabel22: TppLabel;
    ppLine25: TppLine;
    ppDBText26: TppDBText;
    ppLine26: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine27: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    qryOutPutUnitSellPriceOut: TBCDField;
    qryOutPutTotalSellsPriceNew: TBCDField;
    qryOutPutProfitNew: TBCDField;
    qryOutPutUnitSellPriceOutNew: TBCDField;
    qryInputItemNote: TStringField;
    qryInputCustName: TStringField;
    qryInputServerID: TIntegerField;
    qryInputYearID: TIntegerField;
    qryOutPutServerID: TIntegerField;
    qryOutPutYearID: TIntegerField;
    qryInputStuffCode: TLargeintField;
    qryOutPutEntity: TFloatField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    Splitter1: TSplitter;
    procedure actFilterExecute(Sender: TObject);
    procedure cmbStoreClick(Sender: TObject);
    procedure qryInputAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BtnShowClick(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure CheckAllStoreClick(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure qryOutPutAfterOpen(DataSet: TDataSet);
    procedure DBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel33GetText(Sender: TObject; var Text: String);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure qryOutPutBeforeOpen(DataSet: TDataSet);
  private
    sumEntity: currency;
    sumWeight: currency;
    sumPrice: currency;
    sumSel: currency;
    sumProfit: currency;
    procedure UpdateList;
    procedure initCombo;
    { Private declarations }
  public
    { Public declarations }
    procedure Enter(qry: TADOQuery);
  end;

var
  RptCardexSpecialF: TRptCardexSpecialF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, FormFunctions,
  main, FaraConsts;

{$R *.dfm}

procedure TRptCardexSpecialF.Enter(qry: TADOQuery);
var
  StoreID: Int32;
begin
  try
    Var_glb_NoFilter := True;
    StoreID := qry.FieldByName('StoreID').AsInteger;
    CreateMDIForm2(TRptCardexSpecialF, RptCardexSpecialF, mainf);
    RptCardexSpecialF.cmbStore.ItemIndex :=
      RptCardexSpecialF.cmbStore.Items.IndexOfObject(TObject(StoreID));
    RptCardexSpecialF.cmbStoreClick(RptCardexSpecialF.cmbStore);
    if (RptCardexSpecialF.qryInput.Active) then
      if (not RptCardexSpecialF.qryInput.Locate
        ('StuffCode;ControlCode;StuffSize;StuffDiameter;StuffAlloy',
        VarArrayOf([qry.FieldByName('StuffCode').AsString,
        qry.FieldByName('ControlCode').AsString, qry.FieldByName('StuffSize')
        .AsString, qry.FieldByName('StuffDiameter').AsString,
        qry.FieldByName('StuffAlloy').AsString]), [loCaseInsensitive,
        loPartialKey])) then
        Warn('كالاي مورد نظر يافت نشد');
  finally
    Var_glb_NoFilter := False;
  end;
end;

procedure TRptCardexSpecialF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'StuffDiameter', 'ضخامت', 'ضخامت', ftFloat,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(StuffDiameter),max(StuffDiameter) from ReciptItems');

      AddItemFilter(GetFilter, TFilterControlCode);

      AddItem(DMf.adcBSell, 'DateOut', 'تاريخ خروج ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMf.adcBSell, 'Date', 'تاريخ ورود ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');

      AddItem(DMf.adcBSell, 'PersonIDItem', ' نام پكينگ ', 'كد پكينگ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers ' +
        ' WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup  '
        + ' WHERE   (GroupType IN (0,3,4,5,6,7)))) ', 'select 0,999999999 ');

      AddItem(DMf.adcBSell, 'OutPutPersonID1', ' نام مشتری خروج کالا ',
        'كد مشتری خروج کالا', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers  ' +
        ' WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup  '
        + ' WHERE   (GroupType IN (0,3,4,5,6,7)))) ', 'select 0,999999999 ');

      AddItem(DMf.adcBSell, 'InPutPersonID1', ' نام مشتری ورود کالا ',
        'كد مشتری ورود کالا', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers  ' +
        ' WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup  '
        + ' WHERE   (GroupType IN (0,3,4,5,6,7)))) ', 'select 0,999999999 ');


      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'كالا', 'كد كالا', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName from StuffCoding ',
      // 'Select Min(c_StuffCode),max(c_StuffCode) from StuffCoding');

      AddItem(DMf.adcBSell, 'store', 'انبار', 'كد انبار', ftInteger, dvMinMax,
        '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      // 'SELECT dbo.Recipts.StoreID, dbo.Stores.c_StoreName FROM dbo.Stores INNER JOIN '+
      // 'dbo.Recipts INNER JOIN dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTypes.ReciptType '+
      // 'ON dbo.Stores.n_StoreID = dbo.Recipts.StoreID WHERE (dbo.ReciptTypes.EffectType = 2 OR '+
      // 'dbo.ReciptTypes.EffectType = 4)  '+
      // 'GROUP BY dbo.Recipts.StoreID, dbo.Stores.c_StoreName ',
      // 'Select Min(StoreID),max(StoreID) from Recipts ');
      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TRptCardexSpecialF.UpdateList;
begin
  with qryInput do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);

    Parameters.ParamByName('PersonIDItemFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonIDItem'], ftInteger);
    Parameters.ParamByName('PersonIDItemTo').Value :=
      GetcTo(myParams.ParamValues['PersonIDItem'], ftInteger);

    Parameters.ParamByName('InPutPersonID1From').Value :=
      GetcFrom(myParams.ParamValues['InPutPersonID1'], ftInteger);
    Parameters.ParamByName('InPutPersonID1To').Value :=
      GetcTo(myParams.ParamValues['InPutPersonID1'], ftInteger);

    Parameters.ParamByName('DiameterFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffDiameter'], ftFloat);
    Parameters.ParamByName('DiameterTo').Value :=
      GetcTo(myParams.ParamValues['StuffDiameter'], ftFloat);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

  end;
  with qryOutPut do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['DateOut'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['DateOut'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);

    Parameters.ParamByName('PersonIDItemFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonIDItem'], ftInteger);
    Parameters.ParamByName('PersonIDItemTo').Value :=
      GetcTo(myParams.ParamValues['PersonIDItem'], ftInteger);

    Parameters.ParamByName('OutPutPersonID1From').Value :=
      GetcFrom(myParams.ParamValues['OutPutPersonID1'], ftInteger);
    Parameters.ParamByName('OutPutPersonID1To').Value :=
      GetcTo(myParams.ParamValues['OutPutPersonID1'], ftInteger);

    Parameters.ParamByName('DiameterFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffDiameter'], ftFloat);
    Parameters.ParamByName('DiameterTo').Value :=
      GetcTo(myParams.ParamValues['StuffDiameter'], ftFloat);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

  end;
  initCombo;
end;

procedure TRptCardexSpecialF.initCombo;
begin
  with qryStore do
  begin
    Active := False;
    Parameters.ParamByName('StoreIdFrom').Value :=
      GetcFrom(myParams.ParamValues['store'], ftInteger);
    Parameters.ParamByName('StoreIdTo').Value :=
      GetcTo(myParams.ParamValues['store'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);
    Active := True;
    cmbStore.Clear;
    while not Eof do
    begin
      cmbStore.AddItem(FieldByName('c_StoreName').AsString,
        TObject(FieldByName('storeid').AsInteger));
      next;
    end; // while
    cmbStore.ItemIndex := 0;
    cmbStoreClick(cmbStore);
  end; // with

end;

procedure TRptCardexSpecialF.cmbStoreClick(Sender: TObject);
begin
  inherited;
  if cmbStore.ItemIndex = -1 then
    exit;
  With qryOutPut do
  begin
    Active := False;
    Parameters.ParamByName('StoreFrom').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('StoreTo').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);

    Parameters.ParamByName('Store1From').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('Store1To').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);

    Parameters.ParamByName('Store2From').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('Store2To').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);

  end; // with

  With qryInput do
  begin
    Active := False;
    Parameters.ParamByName('StoreFrom').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('StoreTo').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Active := True;
  end; // with

end;

procedure TRptCardexSpecialF.qryInputAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryOutPut do
  begin
    Active := False;
    Parameters.ParamByName('ReciptItemID').Value :=
      DataSet.FieldByName('ReciptItemID').AsInteger;

    Parameters.ParamByName('StoreFrom').Value := qryInputStoreID.AsInteger;
    Parameters.ParamByName('StoreTo').Value := qryInputStoreID.AsInteger;

    Parameters.ParamByName('Store1From').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('Store1To').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);

    Parameters.ParamByName('Store2From').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('Store2To').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    if CheckAllStore.Checked then
    begin
      Parameters.ParamByName('StoreFrom').Value :=
        GetcFrom(myParams.ParamValues['store'], ftInteger);
      Parameters.ParamByName('StoreTo').Value :=
        GetcTo(myParams.ParamValues['store'], ftInteger);

      Parameters.ParamByName('Store1From').Value :=
        GetcFrom(myParams.ParamValues['store'], ftInteger);
      Parameters.ParamByName('Store1To').Value :=
        GetcTo(myParams.ParamValues['store'], ftInteger);

      Parameters.ParamByName('Store2From').Value :=
        GetcFrom(myParams.ParamValues['store'], ftInteger);
      Parameters.ParamByName('Store2To').Value :=
        GetcTo(myParams.ParamValues['store'], ftInteger);
    end;

    Active := True;
  end;
end;

procedure TRptCardexSpecialF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;
end;

procedure TRptCardexSpecialF.BtnShowClick(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryInput, Self);
end;

procedure TRptCardexSpecialF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryOutPut, Self)
end;

procedure TRptCardexSpecialF.CheckAllStoreClick(Sender: TObject);
begin
  inherited;
  if CheckAllStore.Checked then
  begin
    // With qryOutPut do begin
    // Active:=False;
    // Parameters.ParamByName('StoreFrom').Value:=GetcFrom(myParams.ParamValues['store'],ftInteger);
    // Parameters.ParamByName('StoreTo').Value:=GetcTo(myParams.ParamValues['store'],ftInteger);
    // end;//with
    With qryInput do
    begin
      Active := False;
      Parameters.ParamByName('StoreFrom').Value :=
        GetcFrom(myParams.ParamValues['store'], ftInteger);
      Parameters.ParamByName('StoreTo').Value :=
        GetcTo(myParams.ParamValues['store'], ftInteger);

      Active := True;
    end; // with
  end
  else
  begin
    // With qryOutPut do begin
    // Active:=False;
    // Parameters.ParamByName('StoreFrom').Value:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    // Parameters.ParamByName('StoreTo').Value:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    // end;//with
    With qryInput do
    begin
      Active := False;
      Parameters.ParamByName('StoreFrom').Value :=
        Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
      Parameters.ParamByName('StoreTo').Value :=
        Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
      Active := True;
    end; // with
  end;

end;

procedure TRptCardexSpecialF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TRptCardexSpecialF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOutPut);
end;

procedure TRptCardexSpecialF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOutPut);
end;

procedure TRptCardexSpecialF.Button2Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInput);
end;

procedure TRptCardexSpecialF.Button3Click(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInput);
end;

procedure TRptCardexSpecialF.qryOutPutAfterOpen(DataSet: TDataSet);
var
  f: Real;
begin
  inherited;
  PriceOnStoreType(Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]),
    DBGrid1,qryInput);
  if PriceOnStoreType(Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]),
    DBGrid2,qryOutPut) then
    StatusBar1.Panels[1].Text :=
      CurrToStrF(CalcSumFileds(qryInput, 'TotalInputPrice'), ffCurrency, 0);
  StatusBar1.Panels[2].Text :=
    CurrToStrF(CalcSumFileds(qryInput, 'InputWeight'), ffGeneral, 4);
  StatusBar1.Panels[3].Text :=
    CurrToStrF(CalcSumFileds(qryInput, 'InputEntity'), ffGeneral, 4);

  f := CalcSumFileds(qryOutPut, 'OutputWeight');
  f := qryInput.FieldByName('InputWeight').AsFloat - f;
  StBRemain.Panels[4].Text := CurrToStrF(f, ffGeneral, 4);

  f := CalcSumFileds(qryOutPut, 'OutputEntity');
  f := qryInput.FieldByName('InputEntity').AsFloat - f;
  StBRemain.Panels[5].Text := CurrToStrF(f, ffGeneral, 4);

end;

procedure TRptCardexSpecialF.DBGrid2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if DBGrid2.SelectedRows.Count > 1 then
  begin
    if (Button = mbleft) and (Shift = [ssctrl]) then
      if DBGrid2.SelectedRows.CurrentRowSelected then
      begin
        sumEntity := sumEntity + qryOutPut.FieldByName('OutputEntity')
          .AsCurrency;
        sumWeight := sumWeight + qryOutPut.FieldByName('OutputWeight')
          .AsCurrency;
        sumPrice := sumPrice + qryOutPut.FieldByName('TotalOutputPrice')
          .AsCurrency;
        sumSel := sumSel + qryOutPut.FieldByName('TotalSellsPrice').AsCurrency;
        sumProfit := sumProfit + qryOutPut.FieldByName('Profit').AsCurrency;
      end
      else
      begin
        sumEntity := sumEntity - qryOutPut.FieldByName('OutputEntity')
          .AsCurrency;
        sumWeight := sumWeight - qryOutPut.FieldByName('OutputWeight')
          .AsCurrency;
        sumPrice := sumPrice - qryOutPut.FieldByName('TotalOutputPrice')
          .AsCurrency;
        sumSel := sumSel - qryOutPut.FieldByName('TotalSellsPrice').AsCurrency;
        sumProfit := sumProfit - qryOutPut.FieldByName('Profit').AsCurrency;
      end
  end
  else
  begin
    sumEntity := qryOutPut.FieldByName('OutputEntity').AsCurrency;
    sumWeight := qryOutPut.FieldByName('OutputWeight').AsCurrency;
    sumPrice := qryOutPut.FieldByName('TotalOutputPrice').AsCurrency;
    sumSel := qryOutPut.FieldByName('TotalSellsPrice').AsCurrency;
    sumProfit := qryOutPut.FieldByName('Profit').AsCurrency;
  end;
  if DBGrid2.SelectedRows.CurrentRowSelected = False then
  begin
    if DBGrid2.SelectedRows.Count > 0 then
      qryOutPut.GotoBookmark ((DBGrid2.SelectedRows[DBGrid2.SelectedRows.Count - 1]));
    // if DBGrid1.SelectedRows.Count=1 then
    // sumAmount:=qryCheck.Fieldbyname('ItemAmount').AsInteger;
  end;
end;

procedure TRptCardexSpecialF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryInput.FieldByName(opt.SearchCode));
end;

procedure TRptCardexSpecialF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptCardexSpecialF.AllC_l_i_c_k_Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline2.RangeBegin := rbCurrentRecord;
        ppDBPipeline2.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppDBPipeline2.RangeBegin := rbFirstRecord;
        ppDBPipeline2.RangeEnd := reLastRecord;
      end;
  end;

  try
    qryInput.DisableControls;
    qryOutPut.DisableControls;
    InitReportFile(ppReport1, 'RptCardexSpecial');
  finally
    qryInput.EnableControls;
    qryOutPut.EnableControls;
  end; // try
end;

procedure TRptCardexSpecialF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptCardexSpecialF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptCardexSpecialF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptCardexSpecialF.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  inherited;
  with qryInput.Parameters do
  begin
    Text := 'از تاريخ ' + ParamByName('DateFrom').Value + ' تا ' +
      ParamByName('DateTo').Value;
  end;
end;

procedure TRptCardexSpecialF.ppLabel33GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(qryInput.FieldByName('InputEntity').AsFloat -
    CalcSumFileds(qryOutPut, 'OutputEntity'), ffGeneral, 3);
end;

procedure TRptCardexSpecialF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(qryInput.FieldByName('InputWeight').AsFloat -
    CalcSumFileds(qryOutPut, 'OutputWeight'), ffGeneral, 3);
end;

procedure TRptCardexSpecialF.qryOutPutBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  // GetSumGridFields(DBGrid1,SumGrid1)
end;

end.
