unit RptCardex2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch,
  ppMemo, ppModule, ppTypes, ppSubRpt, Menus, DB, ADODB, ComCtrls,
  zAPIBalloon, ppParameter, Mask, FrPersonID3, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, StrUtils, ReciptsFunctions;

type
  THackGrid = class(TCedarDbgrid);

  TRptCardex2F = class(Ttemplate2MDIF)
    qryRptTransactions: TADOQuery;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    qryStore: TADOQuery;
    qryStuffs: TADOQuery;
    srcRptTransactions: TDataSource;
    cmbStore: TComboBox;
    Panel1: TPanel;
    srcStuffs: TDataSource;
    Label1: TLabel;
    Panel5: TPanel;
    actShowForm: TAction;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    txtc_StuffName: TDBText;
    Label3: TLabel;
    txtUnitName: TDBText;
    Label4: TLabel;
    txtc_StuffTecInfo: TDBText;
    Label5: TLabel;
    Label7: TLabel;
    txtn_minOrder: TDBText;
    txtn_maxOrder: TDBText;
    Label9: TLabel;
    actSendToExcel: TAction;
    BitBtn4: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    BitBtn5: TBitBtn;
    ppDBPipeline2: TppDBPipeline;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSort: TAction;
    PopMenu: TPopupMenu;
    AllC_l_i_c_k_: TMenuItem;
    DetailNote: TMenuItem;
    N21: TMenuItem;
    N1: TMenuItem;
    actPrintVijeh: TAction;
    txtc_KeepPlace: TDBText;
    Label6: TLabel;
    N2: TMenuItem;
    zbal: TzAPIBalloon;
    N3: TMenuItem;
    StatusBar1: TStatusBar;
    ppHeaderBand1: TppHeaderBand;
    ppShape7: TppShape;
    ppLabel29: TppLabel;
    ppLabel37: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLblLimitDate: TppLabel;
    ppLabel65: TppLabel;
    ppLabel68: TppLabel;
    ppLabel71: TppLabel;
    ppLine68: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText45: TppDBText;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel82: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText60: TppDBText;
    ppLabel64: TppLabel;
    ppLabel86: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    qryRptTransactionsControlCode: TLargeintField;
    qryRptTransactionsStuffDiameter: TFloatField;
    qryRptTransactionsStoreID: TSmallintField;
    qryRptTransactionsStuffSize: TStringField;
    qryRptTransactionsc_StoreName: TStringField;
    qryRptTransactionsStuffCode: TLargeintField;
    qryRptTransactionsc_StuffName: TStringField;
    qryRptTransactionsUnitName: TStringField;
    qryRptTransactionsReciptNumber: TIntegerField;
    qryRptTransactionsReciptDate: TStringField;
    qryRptTransactionsReciptType: TWordField;
    qryRptTransactionsReciptCaption: TStringField;
    qryRptTransactionsStuffAlloy: TStringField;
    qryRptTransactionsInputEntity: TFloatField;
    qryRptTransactionsInputWeight: TFloatField;
    qryRptTransactionsTotalInputPrice: TBCDField;
    qryRptTransactionsOutputEntity: TFloatField;
    qryRptTransactionsOutputWeight: TFloatField;
    qryRptTransactionsBackLogEntity: TFloatField;
    qryRptTransactionsBackLogWeight: TFloatField;
    qryRptTransactionsReciptId: TIntegerField;
    qryRptTransactionsCalcuBackLogEntity: TFloatField;
    qryRptTransactionsCalcuBackLogWeight: TFloatField;
    qryRptTransactionsPersonID1: TIntegerField;
    qryRptTransactionsCustName: TStringField;
    qryRptTransactionsInTotallSellPrice: TBCDField;
    qryRptTransactionsItemNote: TStringField;
    qryRptTransactionsAidDate: TStringField;
    qryRptTransactionsUnitSellPriceIn: TBCDField;
    qryRptTransactionsRow: TIntegerField;
    qryRptTransactionsServerID: TIntegerField;
    qryRptTransactionsYearID: TIntegerField;
    qryRptTransactionsRegPrice: TBCDField;
    qryRptTransactionsAidNumber: TStringField;
    qryRptTransactionsPersonID2: TIntegerField;
    qryRptTransactionsCustName2: TStringField;
    qryRptTransactionsPersonID3: TIntegerField;
    qryRptTransactionsCustName3: TStringField;
    qryRptTransactionsPersonID1D: TIntegerField;
    qryRptTransactionsCustName1D: TStringField;
    qryRptTransactionsProductCode: TLargeintField;
    qryRptTransactionsProductName: TStringField;
    qryRptTransactionsc_StuffTecInfo: TStringField;
    qryRptTransactionsn_minOrder: TFloatField;
    qryRptTransactionsn_maxOrder: TFloatField;
    qryRptTransactionsn_orderPoint: TFloatField;
    qryRptTransactionsEffectType: TIntegerField;
    qryRptTransactionsPortage: TBCDField;
    qryRptTransactionsDeficitValue: TBCDField;
    qryRptTransactionsReciptItemID: TIntegerField;
    frPersonID3F1: TfrPersonID3F;
    qryRptTransactionsc_StoreName2: TStringField;
    qryRptTransactionsSecondTypeItemName: TStringField;
    qryRptTransactionsAidNumberD: TStringField;
    qryRptTransactionsAidDateD: TStringField;
    lblsd1: TLabel;
    lblsd2: TLabel;
    txtsd1: TDBText;
    txtsd2: TDBText;
    lblsd3: TLabel;
    txtsd3: TDBText;
    txtsd4: TDBText;
    lblsd4: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    btnSd: TSpeedButton;
    DBNavigator1: TDBNavigator;
    txtn_orderPoint: TDBText;
    qryRptTransactionsUnitEntityPrice: TFloatField;
    qryRptTransactionsUnitWeightPrice: TFloatField;
    txtUnitName2: TDBText;
    Label11: TLabel;
    lblSt1: TLabel;
    txtSt1Name: TDBText;
    txtCabinet: TDBText;
    Label10: TLabel;
    Label13: TLabel;
    dbmmoStuffNote: TDBMemo;
    edtStuffCode: TDBEdit;
    DBGrid1: TCedarDbgrid;
    N4: TMenuItem;
    N5: TMenuItem;
    chkSum: TCheckBox;
    qryRptTransactionsSellsEmporium: TIntegerField;
    qryRptTransactionsSellsEmporiumName: TWideStringField;
    qryRptTransactionsPersonID4: TIntegerField;
    qryRptTransactionsCustName4: TStringField;
    qryRptTransactionsItemDate: TStringField;
    BitBtn9: TBitBtn;
    qryRptTransactionsUnitCommission: TFMTBCDField;
    qryRptTransactionsUseUnitIDD: TIntegerField;
    qryRptTransactionsUseUnitNameD: TStringField;
    qryInitCust: TADOQuery;
    dbtxtKeepPlace: TDBText;
    Label12: TLabel;
    Label14: TLabel;
    dbtxtCabinets: TDBText;
    qryRptTransactionsSpecialCode: TStringField;
    qryRptTransactionsCalcuBacklogSellPrice: TFMTBCDField;
    qryRptTransactionsCalcuBacklogPrice: TFMTBCDField;
    qryRptTransactionsUnitSellPriceBackLog: TFMTBCDField;
    qryRptTransactionsOutTotallSellPrice: TFMTBCDField;
    qryRptTransactionsTotalOutputPrice: TFMTBCDField;
    qryRptTransactionsUnitSellPriceOut: TFMTBCDField;
    qryRptTransactionsBacklogPrice: TFMTBCDField;
    qryRptTransactionsInvTotallSellPrice: TFMTBCDField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbStoreClick(Sender: TObject);
    procedure qryStuffsAfterScroll(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryRptTransactionsAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel29GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel26GetText(Sender: TObject; var Text: String);
    procedure ppLabel37GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure btnSdClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLblLimitDateGetText(Sender: TObject; var Text: String);
    procedure frPersonID3F1qryPersonID3AfterScroll(DataSet: TDataSet);
    procedure frPersonID3F1sbtnMasterClick(Sender: TObject);
    procedure qryRptTransactionsBeforeInsert(DataSet: TDataSet);
    procedure chkAccordingToClick(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure chkSumClick(Sender: TObject);
  private
    FormType: Integer;
    OnLoadForm: Boolean;
    procedure UpdateList;
    procedure initCombo;
    procedure updateRemain;
    procedure setFieldColumns;
    { Private declarations }
  public
    { Public declarations }
    procedure Enter(StoreID: Integer; StuffCode: Largeint; Ftype: Integer);
    function LocateNewconst(StuffCode: Largeint): Boolean;
  end;

var
  RptCardex2F: TRptCardex2F;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, DateUtils, searchCode_ADO,
  FormFunctions, search2, sort2,
  DBGrid2Print, Math, shamsiDate, main, FaraConsts, mdiMain;

{$R *.dfm}

procedure TRptCardex2F.Enter(StoreID: Integer; StuffCode: Largeint;
  Ftype: Integer);
begin

  if ( { (mainF.Menu = mainF.Mnu2Store) and mainF.mnuActRptCardex2F1.Visible) or
      ((mainF.Menu = mainF.Mnu13Store) and } mainF.mnuActRptCardexF1.Visible)
  then
    try
      Var_glb_NoFilter := True;
      CreateMDIForm2(TRptCardex2F, RptCardex2F, mainF, Ftype);
      RptCardex2F.qryStuffs.AfterScroll := nil;
      if RptCardex2F.frPersonID3F1.qryPersonID1D <> nil then
        RptCardex2F.frPersonID3F1.qryPersonID1D.AfterScroll := nil;
      RptCardex2F.cmbStore.OnClick := nil;
      RptCardex2F.cmbStore.AddItem(StoreID.ToString, TObject(StoreID));
      RptCardex2F.cmbStore.ItemIndex := RptCardex2F.cmbStore.Items.IndexOfObject
        (TObject(StoreID));
      RptCardex2F.cmbStoreClick(RptCardex2F.cmbStore);
      // RptCardex2F.qryStuffs.AfterScroll := RptCardex2F.qryStuffsAfterScroll;
      // RptCardex2F.frPersonID3F1.qryPersonID1D.AfterScroll :=
      // frPersonID3F1qryPersonID3AfterScroll;
      // RptCardex2F.cmbStore.OnClick := RptCardex2F.cmbStoreClick;
      if (StuffCode <> 0) and (RptCardex2F.qryStuffs.Active) then
        if (not LocateNewconst(StuffCode)) then
          Warn('كالاي مورد نظر يافت نشد');
    finally
      Var_glb_NoFilter := False;
    end;
end;

function TRptCardex2F.LocateNewconst;
begin
  Result := False;
  With RptCardex2F.qryStuffs do
    try
      DisableControls;
      AfterScroll := nil;
      First;
      while (not Eof) and (not Result) do
      begin
        if FieldByName('StuffCode').AsLargeInt <> StuffCode then
          Next
        else
          Result := True;
      end;
    finally
      AfterScroll := qryStuffsAfterScroll;
      qryStuffsAfterScroll(RptCardex2F.qryStuffs);
      EnableControls;
    end;
end;

procedure TRptCardex2F.actFilterExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if frPersonID3F1.PersonActive then
      begin
        AddItem(DMf.adcBSell, 'Person3Select',
          'انتخاب ' + frPersonID3F1.PersonCaption, '', ftUnknown, dvDefaults,
          '1', '', ciRadioGroup,
          'SELECT 0 As MasterType,''ندارد'' as MasterName ' + ' Union All ' +
          'SELECT 1 ,''دارد''  ');

        AddItem(DMf.adcBSell, 'PersonID1D', frPersonID3F1.PersonCaption, 'كد',
          ftInteger, dvMinMax, '', '', ciLookup,
          ' SELECT Customers.CustID, Customers.CustName FROM Customers ' +
          ' INNER JOIN CustomersGroup ON ' +
          ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID ' +
          ' WHERE (CustomersGroup.GroupType IN(' +
          frPersonID3F1.CustomerKind + '))',

          'SELECT 0,2147483647');

      end;
      AddItemFilter(GetFilter, TFilterPersonID1);
      AddItemFilter(GetFilter, TFilterPersonID2);
      AddItemFilter(GetFilter, TFilterPersonID4);
      if opt.AidInfoAvailable then
      begin
        AddItem(DMf.adcBSell, 'StuffDiameter', 'ضخامت', 'ضخامت', ftFloat,
          dvMinMax, '', '', ciSimple, '',
          'Select Min(StuffDiameter),max(StuffDiameter) from ReciptItems');
      end;
      AddItemFilter(GetFilter, TFilterControlCode);

      AddItem(DMf.adcBSell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);
      AddItemFilter(GetFilter, TFilterSellsEmporium);


      // AddItem(DMf.adcBSell, 'StuffCode', arrTopic, ftLargeint, dvMinMax, '', '',
      // ciLookup, SQLStuffCoding,
      // 'SELECT MIN(c_StuffCode) AS MinS, MAX(c_StuffCode) AS MaxS FROM Vu_StuffCoding WHERE (c_StuffCode <> 0)');

      AddItem(DMf.adcBSell, 'store', 'انبار', 'كد انبار', ftInteger, dvMinMax,
        '', '', ciLookup, LookupSQL4Store2, MinMaxSQL4Store2);
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

procedure TRptCardex2F.UpdateList;
var
  DateFromRemain: String;
begin
  with frPersonID3F1.qryPersonID1D do
  begin
    Active := False;
    if frPersonID3F1.PersonActive then
      frPersonID3F1.PersonSelect :=
        GetcFrom(myParams.ParamValues['Person3Select'], ftInteger) = '1';
    if frPersonID3F1.PersonActive and frPersonID3F1.PersonSelect then
    begin
      Parameters.ParamByName('PersonID1DFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonID1D'], ftInteger);
      Parameters.ParamByName('PersonID1DTo').Value :=
        GetcTo(myParams.ParamValues['PersonID1D'], ftInteger);
    end
    else
    begin
      Parameters.ParamByName('PersonID1DFrom').Value := -999999999;
      Parameters.ParamByName('PersonID1DTo').Value := 2147483647;
    end;
    Active := frPersonID3F1.PersonActive;
  end;

  with qryRptTransactions do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);

    DateFromRemain := GetcFrom(myParams.ParamValues['Date'], ftDate);
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    Parameters.ParamByName('DateFromRemain').Value := DateFromRemain;
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    if opt.AidInfoAvailable then
    begin
      Parameters.ParamByName('DiameterFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftFloat);
      Parameters.ParamByName('Diameterto').Value :=
        GetcTo(myParams.ParamValues['StuffDiameter'], ftFloat);
    end
    else
    begin
      Parameters.ParamByName('DiameterFrom').Value := -999999999;
      Parameters.ParamByName('Diameterto').Value := 2147483647;
    end;

    if frPersonID3F1.PersonActive and frPersonID3F1.PersonSelect then
    begin
      Parameters.ParamByName('PersonID1DFrom').Value :=
        frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
      Parameters.ParamByName('PersonID1DTo').Value :=
        frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
    end
    else
    begin
      Parameters.ParamByName('PersonID1DFrom').Value := -999999999;
      Parameters.ParamByName('PersonID1DTo').Value := 2147483647;
    end;

    Parameters.ParamByName('PersonID4From').Value :=
      GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
    Parameters.ParamByName('PersonID4To').Value :=
      GetcTo(myParams.ParamValues['PersonID4'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

  end; // with
  with qryStuffs do
  begin
    Active := False;
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

  end; // with
  initCombo;
end;

procedure TRptCardex2F.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  if myParams.FindParam('date') = nil then
    close;
  OnLoadForm := False;

end;

procedure TRptCardex2F.frPersonID3F1qryPersonID3AfterScroll(DataSet: TDataSet);
begin
  inherited;
  with RptCardex2F do
    with qryRptTransactions do
    begin
      Active := False;
      if frPersonID3F1.PersonActive and frPersonID3F1.PersonSelect then
      begin
        Parameters.ParamByName('PersonID1DFrom').Value :=
          frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
        Parameters.ParamByName('PersonID1DTo').Value :=
          frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
      end
      else
      begin
        Parameters.ParamByName('PersonID1DFrom').Value := -999999999;
        Parameters.ParamByName('PersonID1DTo').Value := 2147483647;
      end;
      Parameters.ParamByName('PersonID4From').Value :=
        GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
      Parameters.ParamByName('PersonID4To').Value :=
        GetcTo(myParams.ParamValues['PersonID4'], ftInteger);

      Parameters.ParamByName('PersonID1From').Value :=
        GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
      Parameters.ParamByName('PersonID1To').Value :=
        GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

      Parameters.ParamByName('PersonID2From').Value :=
        GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
      Parameters.ParamByName('PersonID2To').Value :=
        GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

      Active := True;
    end;
end;

procedure TRptCardex2F.frPersonID3F1sbtnMasterClick(Sender: TObject);
begin
  inherited;
  frPersonID3F1.sbtnMasterClick(Sender);

end;

procedure TRptCardex2F.cmbStoreClick(Sender: TObject);
begin
  inherited;
  RptCardex2F.frPersonID3F1.qryPersonID1D.AfterScroll :=
    frPersonID3F1qryPersonID3AfterScroll;
  qryStuffs.AfterScroll := RptCardex2F.qryStuffsAfterScroll;
  cmbStore.OnClick := cmbStoreClick;

  if cmbStore.ItemIndex = -1 then
    exit;
  PriceOnStoreType(Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]), DBGrid1,
    qryRptTransactions);
  // PriceOnStoreType(Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]),
  // DBGridSum);
  with qryRptTransactions do
  begin
    Active := False;

    Parameters.ParamByName('StoreIDFrom').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('StoreIDTo').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    if frPersonID3F1.PersonActive and frPersonID3F1.PersonSelect then
    begin
      Parameters.ParamByName('PersonID1DFrom').Value :=
        frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
      Parameters.ParamByName('PersonID1DTo').Value :=
        frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
    end
    else
    begin
      Parameters.ParamByName('PersonID1DFrom').Value := -999999999;
      Parameters.ParamByName('PersonID1DTo').Value := 2147483647;
    end;

    Parameters.ParamByName('PersonID4From').Value :=
      GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
    Parameters.ParamByName('PersonID4To').Value :=
      GetcTo(myParams.ParamValues['PersonID4'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

  end;
  With qryStuffs do
  begin
    Active := False;
    Parameters.ParamByName('StoreID').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Active := True;
  end; // with

end;

procedure TRptCardex2F.initCombo;
var
  StoreIdFrom: Integer;
begin
  with qryStore do
  begin
    Active := False;
    StoreIdFrom := GetcFrom(myParams.ParamValues['store'], ftInteger);
    Parameters.ParamByName('StoreIdFrom').Value := StoreIdFrom;

    Parameters.ParamByName('StoreIdTo').Value :=
      GetcTo(myParams.ParamValues['store'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      IfThen(User.PowerUser, 127, User.id);
    Active := True;
    cmbStore.Clear;
    while not Eof do
    begin
      cmbStore.AddItem(FieldByName('storeid').AsString.Trim +
        FieldByName('c_StoreName').AsString,
        TObject(FieldByName('storeid').AsInteger));
      Next;
    end; // while
    cmbStore.ItemIndex := 0;
    // cmbStore.ItemIndex := cmbStore.Items.IndexOfObject(TObject(StoreIdFrom));
    cmbStoreClick(cmbStore);

  end; // with
end;

procedure TRptCardex2F.qryStuffsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with RptCardex2F do
    if qryStuffs.Active then
      with qryRptTransactions do
      begin
        Active := False;
        Parameters.ParamByName('StuffCode').Value :=
          qryStuffs.FieldByName('StuffCode').AsLargeInt;
        Parameters.ParamByName('StuffCode1').Value :=
          qryStuffs.FieldByName('StuffCode').AsLargeInt;

        if not OnLoadForm then
          Active := True;
      end; // with
end;

procedure TRptCardex2F.BitBtn2Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 12] of String;
  i: Integer;
  coltopic: array [0 .. 12] of String;
  ColWith: array [0 .. 12] of SmallInt;
begin
  inherited;
  coltopic[0] := 'كد كالا';
  coltopic[1] := 'نام كالا';
  coltopic[2] := 'شماره فني';
  coltopic[3] := 'محل نگهداري';
  ColWith[0] := 50;
  ColWith[1] := 100;
  ColWith[2] := 50;
  ColWith[3] := 150;
  Txt := 'SELECT DISTINCT ReciptItems_Stock.StuffCode,StuffCoding.c_StuffName,'
    + ' StuffCoding.c_StuffTecInfo,StuffCoding.c_KeepPlace';
  for i := 1 to 9 do
  begin
    coltopic[3 + i] := opt.ExtraCoding.Captions[i];
    ColWith[3 + i] := 0;
    b := opt.ExtraCoding.Captions[i] <> '';
    if b then
    begin
      Txt := Txt + ', StuffCoding.sd' + IntToStr(i);
      ColWith[3 + i] := 50;
    end;
  end;
  Txt := Txt + ' FROM StuffCoding INNER JOIN ReciptItems_Stock ON' +
    ' StuffCoding.c_StuffCode = ReciptItems_Stock.StuffCode' +
    ' WHERE ReciptItems_Stock.StoreID =' +
    IntToStr(Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]));
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' جستجوي كالا  ', Txt,
    coltopic, Results, ColWith, alLeft);
  if b then
    LocateNewconst(StrToInt64(Results[0]));
end;

procedure TRptCardex2F.chkAccordingToClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TRptCardex2F.chkSumClick(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

procedure TRptCardex2F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRptTransactions, Self, qryStuffs.FieldByName('StuffCode')
    .AsLargeInt)
end;

procedure TRptCardex2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptCardex2F.updateRemain;
var
  b:Boolean;
begin
  with qryRptTransactions do
  begin
    b := (cmbStore.ItemIndex > -1) and
      PriceOnStoreType(Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]),
      DBGrid1, qryRptTransactions);

    StatusBar1.Panels[3].Text := FieldByName('CalcuBackLogEntity').DisplayLabel
      + ' = ' + CurrToStrF(FieldByName('CalcuBackLogEntity').AsFloat,
      ffNumber, 4);
    StatusBar1.Panels[2].Text := FieldByName('CalcuBackLogWeight').DisplayLabel
      + ' = ' + CurrToStrF(FieldByName('CalcuBackLogWeight').AsFloat,
      ffNumber, 4);
    if b then
    begin
      StatusBar1.Panels[1].Text := FieldByName('CalcuBackLogPrice').DisplayLabel

        + ' = ' + CurrToStrF(FieldByName('CalcuBackLogPrice').AsFloat,
        ffCurrency, 0);

      if opt.ActiveSellPrice2 then
        StatusBar1.Panels[0].Text := FieldByName('CalcuBackLogSellPrice')
          .DisplayLabel + ' = ' +
          CurrToStrF(FieldByName('CalcuBackLogSellPrice').AsFloat,
          ffCurrency, 0);
    end;
  end; // with
end;

procedure TRptCardex2F.qryRptTransactionsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // with qrySum do
  // begin
  // Active := False;
  // Parameters := qryRptTransactions.Parameters;
  // Active := True;
  // end;
  setFieldColumns;
  THackGrid(DBGrid1).DoLoad;
  // DBGrid1.ColorDBGrid;
  updateRemain;

  // if FileExists(__AppData + DBGrid1.Owner.Name + DBGrid1.Name +
  // IntToStr(FormType)) then
  // DBGrid1.Columns.LoadFromFile(__AppData + DBGrid1.Owner.Name + DBGrid1.Name +
  // IntToStr(FormType));

end;

procedure TRptCardex2F.qryRptTransactionsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Abort
end;

procedure TRptCardex2F.setFieldColumns;
var
  b: Boolean;
begin
  // with qry4Label_Display do
  // for i := 0 to FieldCount - 1 do
  // begin
  // qryRptTransactions.FieldByName(Fields[i].FieldName).DisplayLabel :=
  // Fields[i].DisplayLabel;
  //
  // Memo1.Lines.Add('qryRptTransactions.FieldByName(''' + Fields[i].FieldName
  // + ''').DisplayLabel := ''' + Fields[i].DisplayLabel + ''';');
  //
  // if Fields[i] is TBCDField then
  // begin
  // TBCDField(qryRptTransactions.FieldByName(Fields[i].FieldName))
  // .DisplayFormat := TBCDField(Fields[i]).DisplayFormat;
  // TBCDField(qryRptTransactions.FieldByName(Fields[i].FieldName)).Currency
  // := TBCDField(Fields[i]).Currency;
  //
  // if TBCDField(qryRptTransactions.FieldByName(Fields[i].FieldName))
  // .DisplayFormat <> EmptyStr then
  // Memo1.Lines.Add(
  //
  // 'TBCDField(qryRptTransactions.FieldByName(''' + Fields[i].FieldName
  // + ''')).DisplayFormat := ''' + TBCDField(Fields[i])
  // .DisplayFormat + ''';');
  //
  // if TBCDField(qryRptTransactions.FieldByName(Fields[i].FieldName))
  // .Currency then
  // Memo1.Lines.Add(
  //
  // 'TBCDField(qryRptTransactions.FieldByName(''' + Fields[i].FieldName
  // + ''')).Currency := True;');
  //
  // end;
  // qryRptTransactions.FieldByName(Fields[i].FieldName).Tag := 3;
  // Memo1.Lines.Add('qryRptTransactions.FieldByName(''' + Fields[i].FieldName
  // + ''').Tag :=3;');
  //
  // end;

  // qryRptTransactions.FieldByName('ControlCode').DisplayLabel := 'ش.راهنما ';
  // qryRptTransactions.FieldByName('ControlCode').Tag := 3;
  // qryRptTransactions.FieldByName('StuffDiameter').DisplayLabel := 'ضخامت';
  // qryRptTransactions.FieldByName('StuffDiameter').Tag := 3;
  // qryRptTransactions.FieldByName('StoreID').DisplayLabel := 'شماره';
  // qryRptTransactions.FieldByName('StoreID').Tag := 3;
  // qryRptTransactions.FieldByName('StuffSize').DisplayLabel := 'ابعاد';
  // qryRptTransactions.FieldByName('StuffSize').Tag := 3;
  // qryRptTransactions.FieldByName('StuffCode').DisplayLabel := 'كد كالا';
  // qryRptTransactions.FieldByName('StuffCode').Tag := 3;
  // qryRptTransactions.FieldByName('ReciptNumber').DisplayLabel := 'شماره';
  // qryRptTransactions.FieldByName('ReciptNumber').Tag := 3;
  // qryRptTransactions.FieldByName('ReciptDate').DisplayLabel := 'تاريخ';
  // qryRptTransactions.FieldByName('ReciptDate').Tag := 3;
  // qryRptTransactions.FieldByName('ReciptCaption').DisplayLabel := 'نوع اطلاعات';
  // qryRptTransactions.FieldByName('ReciptCaption').Tag := 3;
  // qryRptTransactions.FieldByName('StuffAlloy').DisplayLabel := 'آلياژ';
  // qryRptTransactions.FieldByName('StuffAlloy').Tag := 3;
  // qryRptTransactions.FieldByName('InputEntity').DisplayLabel := 'مقدار وارده';
  // qryRptTransactions.FieldByName('InputEntity').Tag := 3;
  // qryRptTransactions.FieldByName('InputWeight').DisplayLabel := 'وزن وارده';
  // qryRptTransactions.FieldByName('InputWeight').Tag := 3;
  // qryRptTransactions.FieldByName('TotalInputPrice').DisplayLabel :=
  // 'بهاء كل وارده';
  // TBCDField(qryRptTransactions.FieldByName('TotalInputPrice')).Currency := True;
  // qryRptTransactions.FieldByName('TotalInputPrice').Tag := 3;
  // qryRptTransactions.FieldByName('OutputEntity').DisplayLabel := 'مقدار صادره';
  // qryRptTransactions.FieldByName('OutputEntity').Tag := 3;
  // qryRptTransactions.FieldByName('OutputWeight').DisplayLabel := 'وزن صادره';
  // qryRptTransactions.FieldByName('OutputWeight').Tag := 3;
  // qryRptTransactions.FieldByName('TotalOutputPrice').DisplayLabel :=
  // 'بهاي كل صادره';
  // TBCDField(qryRptTransactions.FieldByName('TotalOutputPrice'))
  // .Currency := True;
  // qryRptTransactions.FieldByName('TotalOutputPrice').Tag := 3;
  // qryRptTransactions.FieldByName('CalcuBackLogEntity').DisplayLabel :=
  // 'مقدار موجودي';
  // qryRptTransactions.FieldByName('CalcuBackLogEntity').Tag := 3;
  // qryRptTransactions.FieldByName('CalcuBackLogWeight').DisplayLabel :=
  // 'وزن موجودي';
  // qryRptTransactions.FieldByName('CalcuBackLogWeight').Tag := 3;
  // qryRptTransactions.FieldByName('CalcuBacklogPrice').DisplayLabel :=
  // 'ارزش موجودي ';
  // TBCDField(qryRptTransactions.FieldByName('CalcuBacklogPrice')).DisplayFormat
  // := '#,0;(#,0)';
  // TBCDField(qryRptTransactions.FieldByName('CalcuBacklogPrice'))
  // .Currency := True;
  // qryRptTransactions.FieldByName('CalcuBacklogPrice').Tag := 3;
  // qryRptTransactions.FieldByName('CalcuBacklogSellPrice').DisplayLabel :=
  // 'بهاي تمام شده موجودي';
  // TBCDField(qryRptTransactions.FieldByName('CalcuBacklogSellPrice'))
  // .DisplayFormat := '#,0;(#,0)';
  // TBCDField(qryRptTransactions.FieldByName('CalcuBacklogSellPrice'))
  // .Currency := True;
  // qryRptTransactions.FieldByName('CalcuBacklogSellPrice').Tag := 3;
  // qryRptTransactions.FieldByName('InTotallSellPrice').DisplayLabel :=
  // 'بهاي‏تمام‏شده‏وارده';
  // TBCDField(qryRptTransactions.FieldByName('InTotallSellPrice'))
  // .Currency := True;
  // qryRptTransactions.FieldByName('InTotallSellPrice').Tag := 3;
  // qryRptTransactions.FieldByName('OutTotallSellPrice').DisplayLabel :=
  // 'بهاي‏تمام‏شده‏صادره';
  // TBCDField(qryRptTransactions.FieldByName('OutTotallSellPrice'))
  // .Currency := True;
  // qryRptTransactions.FieldByName('OutTotallSellPrice').Tag := 3;
  // qryRptTransactions.FieldByName('InvTotallSellPrice').DisplayLabel :=
  // 'بهاي‏تمام‏شده‏موجودي';
  // TBCDField(qryRptTransactions.FieldByName('InvTotallSellPrice')).DisplayFormat
  // := '#,0;(#,0)';
  // TBCDField(qryRptTransactions.FieldByName('InvTotallSellPrice'))
  // .Currency := True;
  // qryRptTransactions.FieldByName('InvTotallSellPrice').Tag := 3;
  // qryRptTransactions.FieldByName('ItemNote').DisplayLabel := 'توضيحات كالا';
  // qryRptTransactions.FieldByName('ItemNote').Tag := 3;
  // qryRptTransactions.FieldByName('UnitSellPriceBackLog').DisplayLabel :=
  // 'في موجودي';
  // TBCDField(qryRptTransactions.FieldByName('UnitSellPriceBackLog'))
  // .DisplayFormat := '#,0.0;(#,0.0)';
  // qryRptTransactions.FieldByName('UnitSellPriceBackLog').Tag := 3;
  // qryRptTransactions.FieldByName('AidDate').DisplayLabel := 'تاريخ';
  // qryRptTransactions.FieldByName('AidDate').Tag := 3;
  // qryRptTransactions.FieldByName('UnitSellPriceIn').DisplayLabel := 'في وارده';
  // TBCDField(qryRptTransactions.FieldByName('UnitSellPriceIn')).DisplayFormat :=
  // '#,0.0;(#,0.0)';
  // qryRptTransactions.FieldByName('UnitSellPriceIn').Tag := 3;
  // qryRptTransactions.FieldByName('UnitSellPriceOut').DisplayLabel := 'في صادره';
  // TBCDField(qryRptTransactions.FieldByName('UnitSellPriceOut')).DisplayFormat :=
  // '#,0.0;(#,0.0)';
  // qryRptTransactions.FieldByName('UnitSellPriceOut').Tag := 3;
  // qryRptTransactions.FieldByName('Row').DisplayLabel := 'رديف‏درفرم';
  // qryRptTransactions.FieldByName('Row').Tag := 3;
  // qryRptTransactions.FieldByName('AidNumber').DisplayLabel := 'ش كمكي';
  // qryRptTransactions.FieldByName('AidNumber').Tag := 3;
  // qryRptTransactions.FieldByName('PersonID1').Tag := 3;
  // qryRptTransactions.FieldByName('CustName').Tag := 3;
  //
  // with qryRptTransactions do
  // for i := 0 to FieldCount - 1 do
  // if (Fields[i] is TBCDField) and
  // (qrySum.FindField(Fields[i].FieldName) <> nil) then
  // begin
  // TBCDField(qrySum.FieldByName(Fields[i].FieldName)).DisplayFormat :=
  // TBCDField(Fields[i]).DisplayFormat;
  // TBCDField(qrySum.FieldByName(Fields[i].FieldName)).Currency :=
  // TBCDField(Fields[i]).Currency;
  // end;

  setColumns2(DBGrid1, FormType = 2, 'StuffSize');
  setColumns2(DBGrid1, FormType = 2, 'StuffDiameter');
  setColumns2(DBGrid1, FormType = 2, 'StuffAlloy');

  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'InTotallSellPrice');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'OutTotallSellPrice');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'CalcuBacklogSellPrice');
  // qryRptTransactions.FieldByName('InTotallSellPrice').Visible := opt.ActiveSellPrice2;
  // qryRptTransactions.FieldByName('OutTotallSellPrice').Visible := opt.ActiveSellPrice2;
  // qryRptTransactions.FieldByName('CalcuBacklogSellPrice').Visible := opt.ActiveSellPrice2;
  HideOrShowSellPriceFields(qryRptTransactions, DBGrid1);

  With qryInitCust do
  begin
    lblCaption.Hint := 'تنظيمات از تايپ ' + FieldByName('ReciptType').AsString;
    qryRptTransactions.FieldByName('CustName').DisplayLabel := 'نام ' +
      FieldByName('Person1Caption').AsString;
    qryRptTransactions.FieldByName('PersonID1').DisplayLabel :=
      'كد' + FieldByName('Person1Caption').AsString;

    qryRptTransactions.FieldByName('CustName2').DisplayLabel := 'نام ' +
      FieldByName('Person2Caption').AsString;
    qryRptTransactions.FieldByName('PersonID2').DisplayLabel :=
      'كد' + FieldByName('Person2Caption').AsString;

    qryRptTransactions.FieldByName('CustName3').DisplayLabel := 'نام ' +
      FieldByName('Person3Caption').AsString;
    qryRptTransactions.FieldByName('PersonID3').DisplayLabel :=
      'كد' + FieldByName('Person3Caption').AsString;

    qryRptTransactions.FieldByName('CustName1D').DisplayLabel :=
      'نام ' + FieldByName('Person2DetailCaption').AsString;
    qryRptTransactions.FieldByName('PersonID1D').DisplayLabel :=
      'كد' + FieldByName('Person2DetailCaption').AsString;

    b := FieldByName('Person2Active').AsInteger = 1;
    setColumns2(DBGrid1, b, 'PersonID2');
    setColumns2(DBGrid1, b, 'CustName2');

    b := FieldByName('Person3Active').AsInteger = 1;
    setColumns2(DBGrid1, b, 'PersonID3');
    setColumns2(DBGrid1, b, 'CustName3');

    b := FieldByName('PersonID1OnDetailActive').AsInteger in [1, 2, 3];
    setColumns2(DBGrid1, b, 'PersonID1D');
    setColumns2(DBGrid1, b, 'CustName1D');

    b := FieldByName('ProcedureActive').AsInteger > 0;
    setColumns2(DBGrid1, b, 'ProductCode');
    setColumns2(DBGrid1, b, 'ProductName');

  end;
  Entity_Weight(DBGrid1);

end;

procedure TRptCardex2F.FormCreate(Sender: TObject);
var
  i: Integer;
  b: Boolean;
  // ts: TStringList;
begin
  inherited;
  OnLoadForm := True;
  qryInitCust.Open;
  frPersonID3F1.qryPersonID1D.AfterScroll := nil;
  qryStuffs.AfterScroll := nil;
  cmbStore.OnClick := nil;

  b := opt.RowInCardex in [1, 3];
  setColumns2(DBGrid1, b, 'Row');
  setColumns2(DBGrid1, opt.EntityDisplay, 'UnitEntityPrice');
  setColumns2(DBGrid1, opt.WeightDisplay, 'UnitWeightPrice');
  // if b then
  // qryRptTransactions.SQL.Text := StringReplace(qryRptTransactions.SQL.Text,
  // '0 AS Row',
  // 'dbo.GetRowReciptItems(ReciptItemID, ServerID, YearID ) as Row', []);

  if not frPersonID3F1.PersonActive then
    frPersonID3F1.qryPersonID1D.AfterScroll := nil;

  FormType := var_glb_gParam;
  for i := 1 to 9 do
    if opt.ExtraCoding.Captions[i] <> '' then
    begin
      btnSd.Visible := True;
    end;
  lblsd1.Caption := opt.ExtraCoding.Captions[1];
  lblsd2.Caption := opt.ExtraCoding.Captions[2];
  lblsd3.Caption := opt.ExtraCoding.Captions[3];
  lblsd4.Caption := opt.ExtraCoding.Captions[4];
  // for i := 0 to DBGrid1.Columns.Count - 1 do
  // begin
  // DBGrid1.Columns[i].Title.Caption := '';
  // end;

  if mdiMainF.MainFrame.GetActiveIndex = 8 then
  begin
    actPrint.Visible := False;
    actPrintVijeh.Visible := False;
    actShowForm.Visible := False;
    DBGrid1.OnDblClick := nil;
  end;

  lblSt1.Caption := GetStName(1);

  // if mdiMainF.MainFrame.GetActiveIndex = 13 then
  // begin
  // ts := TStringList.Create;
  // for i := 0 to DBGrid1.Columns.Count - 1 do
  // if pos(LowerCase('Price'), LowerCase(DBGrid1.Columns[i].FieldName)) > 0
  // then
  // begin
  // ts.Add(DBGrid1.Columns[i].FieldName);
  // end;
  //
  // for i := 0 to ts.Count - 1 do
  // DBGrid1.FieldColumns[ts[i]].Destroy;
  // ts.Free;
  //
  // THackGrid(DBGrid1).DoLoad;
  //
  // end;

end;

procedure TRptCardex2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptCardex2F.ppLabel29GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptCardex2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptCardex2F.ppLabel26GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptCardex2F.ppLabel37GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := cmbStore.Text;
end;

procedure TRptCardex2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRptTransactions);
end;

procedure TRptCardex2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  try
    search2F.ShowSearch(qryRptTransactions);
  finally
  end;
  // try
end;

procedure TRptCardex2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryRptTransactions.FieldByName('ReciptNumber'));
end;

procedure TRptCardex2F.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  RptCardex2F.frPersonID3F1.qryPersonID1D.AfterScroll :=
    frPersonID3F1qryPersonID3AfterScroll;
  qryStuffs.AfterScroll := RptCardex2F.qryStuffsAfterScroll;
  cmbStore.OnClick := cmbStoreClick;
end;

procedure TRptCardex2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TRptCardex2F.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1);
end;

procedure TRptCardex2F.AllC_l_i_c_k_Click(Sender: TObject);
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
    qryStore.DisableControls;
    qryStuffs.DisableControls;
    qryRptTransactions.DisableControls;
    if (Sender as TMenuItem).Hint = EmptyStr then
      if FormType = 2 then
        InitReportFile(ppReport1, 'RptCardex21') // ppReport1.Print
      else
        InitReportFile(ppReport1, 'RptCardex22') // ppReport2.Print
    else
      InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True)
  finally
    qryStore.EnableControls;
    qryStuffs.EnableControls;
    qryRptTransactions.EnableControls;
  end; // try
end;

procedure TRptCardex2F.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TRptCardex2F.btnSdClick(Sender: TObject);
var
  i: Byte;
  Fields_SD_1_9: String;
begin
  inherited;
  zbal.Prompt.Clear;
  for i := 1 to 9 do
    if opt.ExtraCoding.Captions[i] <> '' then
      Fields_SD_1_9 := Fields_SD_1_9 + ',sd' + IntToStr(i);
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT c_StuffCode' + Fields_SD_1_9 +
      ' FROM StuffCoding WHERE c_StuffCode = ' + qryStuffs.FieldByName
      ('StuffCode').AsString;
    Active := True;
    for i := 1 to 9 do
    begin
      if opt.ExtraCoding.Captions[i] <> '' then
      begin
        zbal.Prompt.Add(opt.ExtraCoding.Captions[i] + ' : ' +
          FieldByName('sd' + IntToStr(i)).AsString)
      end;
    end;
    Active := False;
  end;
  zbal.Show(Label1);
end;

procedure TRptCardex2F.FormResize(Sender: TObject);
begin
  inherited;
  // if not FileExists(__AppData + DBGrid1.Owner.Name + DBGrid1.Name +
  // IntToStr(FormType)) then
  // SetColSize(DBGrid1, 2, False);
end;

procedure TRptCardex2F.ppLblLimitDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'از ' + GetcFrom(myParams.ParamValues['Date'], ftDate) + ' تا ' +
    GetcTo(myParams.ParamValues['Date'], ftDate)
end;

end.
