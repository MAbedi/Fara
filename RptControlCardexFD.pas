unit RptControlCardexFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch,
  ppMemo, ppModule, ppTypes, ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls,
  SumDBGrid, filter_ADO, FilterClass_ADO, DM, FrPersonID3, Filter_ADO_Const,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type

  TRptControlCardexFDF = class(Ttemplate2MDIF)
    actFilter: TAction;
    BitBtn1: TBitBtn;
    qryStore: TADOQuery;
    srcRptTransactions: TDataSource;
    cmbStore: TComboBox;
    qryStoreStoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    Label1: TLabel;
    Panel5: TPanel;
    actShowForm: TAction;
    BitBtn3: TBitBtn;
    actSendToExcel: TAction;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSort: TAction;
    PopMenu: TPopupMenu;
    BitBtn8: TBitBtn;
    actPrintVijeh: TAction;
    grpPost: TGroupBox;
    lbl2: TLabel;
    cmbReciptType: TComboBox;
    actPost: TAction;
    mnuAllClick: TMenuItem;
    mnuAllClick1: TMenuItem;
    mnuAllClick2: TMenuItem;
    mnuAllClick3: TMenuItem;
    btnPost: TBitBtn;
    ProgressBar1: TProgressBar;
    frPersonID3F1: TfrPersonID3F;
    chkAllStore: TCheckBox;
    DBGrid1: TCedarDbgrid;
    chkSum: TCheckBox;
    qryRptTransactions: TFDQuery;
    ADOQuery1: TADOQuery;
    ADOQuery1StoreID: TSmallintField;
    ADOQuery1c_StoreName: TStringField;
    ADOQuery1StoreID2: TIntegerField;
    ADOQuery1c_StoreName2: TStringField;
    ADOQuery1StuffCode: TLargeintField;
    ADOQuery1c_StuffName: TStringField;
    ADOQuery1c_StuffTecInfo: TStringField;
    ADOQuery1c_KeepPlace: TStringField;
    ADOQuery1KeepPlace: TStringField;
    ADOQuery1Cabinet: TWideStringField;
    ADOQuery1Cabinets: TStringField;
    ADOQuery1UnitName: TStringField;
    ADOQuery1ReciptNumber: TIntegerField;
    ADOQuery1ReciptDate: TStringField;
    ADOQuery1ReciptType: TWordField;
    ADOQuery1ReciptCaption: TStringField;
    ADOQuery1InputEntity: TFloatField;
    ADOQuery1InputWeight: TFloatField;
    ADOQuery1OutputEntity: TFloatField;
    ADOQuery1OutputWeight: TFloatField;
    ADOQuery1UnitSellPriceIn: TFMTBCDField;
    ADOQuery1TotalInputPrice: TFMTBCDField;
    ADOQuery1UnitSellPriceOut: TFMTBCDField;
    ADOQuery1TotalOutputPrice: TFMTBCDField;
    ADOQuery1UnitSellPriceBackLog: TFMTBCDField;
    ADOQuery1BacklogPrice: TFMTBCDField;
    ADOQuery1CalcuBacklogPrice: TFMTBCDField;
    ADOQuery1InTotallSellPrice: TFMTBCDField;
    ADOQuery1InvTotallSellPrice: TFMTBCDField;
    ADOQuery1OutTotallSellPrice: TFMTBCDField;
    ADOQuery1CalcuBacklogSellPrice: TFMTBCDField;
    ADOQuery1UnitSellPriceBackLog1: TFMTBCDField;
    ADOQuery1BackLogEntity: TFloatField;
    ADOQuery1BackLogWeight: TFloatField;
    ADOQuery1CalcuBackLogEntity: TFloatField;
    ADOQuery1CalcuBackLogWeight: TFloatField;
    ADOQuery1StuffDiameter: TFloatField;
    ADOQuery1ControlCode: TLargeintField;
    ADOQuery1StuffAlloy: TStringField;
    ADOQuery1StuffSize: TStringField;
    ADOQuery1ServerID: TIntegerField;
    ADOQuery1YearID: TIntegerField;
    ADOQuery1Row: TIntegerField;
    ADOQuery1n_ValuationType: TSmallintField;
    ADOQuery1ReciptId: TIntegerField;
    ADOQuery1AidDate: TStringField;
    ADOQuery1AidNumber: TStringField;
    ADOQuery1ItemNote: TStringField;
    ADOQuery1CustName: TStringField;
    ADOQuery1PersonID1: TIntegerField;
    ADOQuery1n_minOrder: TFloatField;
    ADOQuery1n_maxOrder: TFloatField;
    ADOQuery1n_orderPoint: TFloatField;
    ADOQuery1PersonID2: TIntegerField;
    ADOQuery1CustName2: TStringField;
    ADOQuery1PersonID3: TIntegerField;
    ADOQuery1CustName3: TStringField;
    ADOQuery1PersonID4: TIntegerField;
    ADOQuery1CustName4: TStringField;
    ADOQuery1PersonID1D: TIntegerField;
    ADOQuery1CustName1D: TStringField;
    ADOQuery1ProductCode: TLargeintField;
    ADOQuery1ProductName: TStringField;
    ADOQuery1EffectType: TIntegerField;
    ADOQuery1AidNumberD: TStringField;
    ADOQuery1AidDateD: TStringField;
    ADOQuery1RegPrice: TBCDField;
    ADOQuery1Portage: TBCDField;
    ADOQuery1DeficitValue: TBCDField;
    ADOQuery1ReciptItemID: TIntegerField;
    ADOQuery1SecondTypeItem: TIntegerField;
    ADOQuery1FitfulID: TFMTBCDField;
    ADOQuery1FitfulIDc: TBCDField;
    ADOQuery1TopicCode: TLargeintField;
    ADOQuery1DetailCode: TIntegerField;
    ADOQuery1Comment2: TStringField;
    ADOQuery1SecondTypeItemName: TStringField;
    ADOQuery1ReciptNote: TStringField;
    ADOQuery1SellsEmporium: TIntegerField;
    ADOQuery1SellsEmporiumName: TWideStringField;
    FDQuery1: TFDQuery;
    FDQuery1StoreID: TSmallintField;
    FDQuery1c_StoreName: TStringField;
    FDQuery1StoreID2: TIntegerField;
    FDQuery1c_StoreName2: TStringField;
    FDQuery1StuffCode: TLargeintField;
    FDQuery1c_StuffName: TStringField;
    FDQuery1c_StuffTecInfo: TStringField;
    FDQuery1c_KeepPlace: TStringField;
    FDQuery1KeepPlace: TStringField;
    FDQuery1Cabinet: TWideStringField;
    FDQuery1Cabinets: TStringField;
    FDQuery1UnitName: TStringField;
    FDQuery1ReciptNumber: TIntegerField;
    FDQuery1ReciptDate: TStringField;
    FDQuery1ReciptType: TWordField;
    FDQuery1ReciptCaption: TStringField;
    FDQuery1InputEntity: TFloatField;
    FDQuery1InputWeight: TFloatField;
    FDQuery1OutputEntity: TFloatField;
    FDQuery1OutputWeight: TFloatField;
    FDQuery1UnitSellPriceIn: TFloatField;
    FDQuery1UnitSellPriceOut: TFloatField;
    FDQuery1UnitSellPriceBackLog: TFloatField;
    FDQuery1InTotallSellPrice: TFMTBCDField;
    FDQuery1InvTotallSellPrice: TFMTBCDField;
    FDQuery1OutTotallSellPrice: TFMTBCDField;
    FDQuery1UnitSellPriceBackLog1: TFloatField;
    FDQuery1BackLogEntity: TFloatField;
    FDQuery1BackLogWeight: TFloatField;
    FDQuery1StuffDiameter: TFloatField;
    FDQuery1ControlCode: TLargeintField;
    FDQuery1StuffAlloy: TStringField;
    FDQuery1StuffSize: TStringField;
    FDQuery1ServerID: TIntegerField;
    FDQuery1YearID: TIntegerField;
    FDQuery1Row: TIntegerField;
    FDQuery1n_ValuationType: TSmallintField;
    FDQuery1ReciptId: TIntegerField;
    FDQuery1AidDate: TStringField;
    FDQuery1AidNumber: TBCDField;
    FDQuery1ItemNote: TStringField;
    FDQuery1CustName: TStringField;
    FDQuery1PersonID1: TIntegerField;
    FDQuery1n_minOrder: TFloatField;
    FDQuery1n_maxOrder: TFloatField;
    FDQuery1n_orderPoint: TFloatField;
    FDQuery1PersonID2: TIntegerField;
    FDQuery1CustName2: TStringField;
    FDQuery1PersonID3: TIntegerField;
    FDQuery1CustName3: TStringField;
    FDQuery1PersonID4: TIntegerField;
    FDQuery1CustName4: TStringField;
    FDQuery1PersonID1D: TIntegerField;
    FDQuery1CustName1D: TStringField;
    FDQuery1ProductCode: TLargeintField;
    FDQuery1ProductName: TStringField;
    FDQuery1EffectType: TIntegerField;
    FDQuery1AidNumberD: TBCDField;
    FDQuery1AidDateD: TStringField;
    FDQuery1SecondTypeItem: TIntegerField;
    FDQuery1FitfulID: TFMTBCDField;
    FDQuery1TopicCode: TLargeintField;
    FDQuery1DetailCode: TIntegerField;
    FDQuery1Comment2: TStringField;
    FDQuery1SecondTypeItemName: TStringField;
    FDQuery1ReciptNote: TStringField;
    FDQuery1SellsEmporium: TIntegerField;
    FDQuery1SellsEmporiumName: TWideStringField;
    FDQuery1TotalOutputPrice: TFMTBCDField;
    FDQuery1TotalInputPrice: TFloatField;
    FDQuery1BacklogPrice: TFloatField;
    FDQuery1CalcuBacklogPrice: TCurrencyField;
    FDQuery1CalcuBacklogSellPrice: TCurrencyField;
    FDQuery1CalcuBackLogEntity: TFMTBCDField;
    FDQuery1CalcuBackLogWeight: TFMTBCDField;
    FDQuery1RegPrice: TFMTBCDField;
    FDQuery1Portage: TFloatField;
    FDQuery1DeficitValue: TCurrencyField;
    FDQuery1FitfulIDc: TCurrencyField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbStoreClick(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure mnuAllClickClick(Sender: TObject);
    procedure frPersonID3F1qryPersonID3AfterScroll(DataSet: TDataSet);
    procedure frPersonID3F1sbtnMasterClick(Sender: TObject);
    procedure chkAccordingToClick(Sender: TObject);
    procedure chkAllStoreClick(Sender: TObject);
    procedure chkSumClick(Sender: TObject);
    procedure qryRptTransactionsAfterOpen(DataSet: TDataSet);
  private
    myStore: TStore;
    FormType: Byte;
    BalanceSQL: string;
    procedure UpdateList;
    procedure initCombo;
    procedure updateRemain;
    procedure CalcBalance(kind: Integer);
    { Private declarations }
  public
    { Public declarations }
    // procedure ShowForm;
  end;

var
  RptControlCardexFDF: TRptControlCardexFDF;

implementation

uses GlobalPro, DateUtils, searchCode_ADO,
  Recipts, SelectStore, StrUtils, FormFunctions, search2, sort2,
  DBGrid2Print, Math, shamsiDate, ReciptsFunctions, mmessage, FaraConsts;

{$R *.dfm}

procedure TRptControlCardexFDF.actFilterExecute(Sender: TObject);
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
          ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
          + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
          + frPersonID3F1.CustomerKind + '))',

          'SELECT 0,2147483647');
      end;
      AddItemFilter(GetFilter, TFilterControlCode);

      AddItem(DMf.adcBSell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) From Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItemFilter(GetFilter, TFilterPersonID1);
      AddItemFilter(GetFilter, TFilterPersonID2);
      AddItemFilter(GetFilter, TFilterPersonID4);

      // AddItem(DMf.adcBSell, 'StuffCode', 'كالا', 'كد كالا', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode,c_StuffName From StuffCoding where c_StuffCode<>0',
      // 'SELECT Min(c_StuffCode),Max(c_StuffCode) From StuffCoding where c_StuffCode<>0');

      AddItem(DMf.adcBSell, 'Store', 'انبار', 'كد انبار', ftInteger, dvMinMax,
        '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TRptControlCardexFDF.UpdateList;
var
  DateFromRemain: string;
begin
  setColumns2(DBGrid1, chkAllStore.Checked, 'StoreID');
  setColumns2(DBGrid1, chkAllStore.Checked, 'c_StoreName');
  setColumns2(DBGrid1, chkAllStore.Checked, 'StoreID2');
  setColumns2(DBGrid1, chkAllStore.Checked, 'c_StoreName2');
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

    Active := True;
  end;
  with qryRptTransactions do
  begin
    Active := False;

    ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    ParamByName('StuffCode').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    ParamByName('StuffCode1').Value := GetcTo(myParams.ParamValues['StuffCode'],
      ftLargeint);
    ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    ParamByName('DateTo').Value := GetcTo(myParams.ParamValues['Date'], ftDate);
    ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);
    DateFromRemain := GetcFrom(myParams.ParamValues['Date'], ftDate);
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    ParamByName('DateFromRemain').AsString := DateFromRemain;
    ParamByName('YearIDFrom').AsInteger := opt.DefaultYear;
    ParamByName('YearIDTo').AsInteger := APPBank.Year;

    if frPersonID3F1.PersonActive and frPersonID3F1.PersonSelect then
    begin
      ParamByName('PersonID1DFrom').Value :=
        GetcFrom(myParams.ParamValues['PersonID1D'], ftInteger);
      ParamByName('PersonID1DTo').Value :=
        GetcTo(myParams.ParamValues['PersonID1D'], ftInteger);
    end
    else
    begin
      ParamByName('PersonID1DFrom').Value := -9999999;
      ParamByName('PersonID1DTo').Value := 2147483647;
    end;

    ParamByName('PersonID4From').Value :=
      GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
    ParamByName('PersonID4To').Value :=
      GetcTo(myParams.ParamValues['PersonID4'], ftInteger);

    ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

  end; // with
  initCombo;
end;

procedure TRptControlCardexFDF.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  if myParams.FindParam('date') = nil then
    close;
end;

procedure TRptControlCardexFDF.frPersonID3F1qryPersonID3AfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with RptControlCardexFDF do
    with qryRptTransactions do
    begin
      Active := False;
      if frPersonID3F1.PersonActive and frPersonID3F1.PersonSelect then
      begin
        ParamByName('PersonID1DFrom').Value :=
          frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
        ParamByName('PersonID1DTo').Value :=
          frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
      end
      else
      begin
        ParamByName('PersonID1DFrom').Value := -999999999;
        ParamByName('PersonID1DTo').Value := 2147483647;
      end;

      ParamByName('PersonID4From').Value :=
        GetcFrom(myParams.ParamValues['PersonID4'], ftInteger);
      ParamByName('PersonID4To').Value :=
        GetcTo(myParams.ParamValues['PersonID4'], ftInteger);

      ParamByName('PersonID1From').Value :=
        GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
      ParamByName('PersonID1To').Value :=
        GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

      ParamByName('PersonID2From').Value :=
        GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
      ParamByName('PersonID2To').Value :=
        GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

      Active := True;
    end;

end;

procedure TRptControlCardexFDF.frPersonID3F1sbtnMasterClick(Sender: TObject);
begin
  inherited;
  frPersonID3F1.sbtnMasterClick(Sender);

end;

procedure TRptControlCardexFDF.chkAccordingToClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TRptControlCardexFDF.cmbStoreClick(Sender: TObject);
// var
// i:Integer;
begin
  inherited;
  if cmbStore.ItemIndex = -1 then
    exit;
  PriceOnStoreType(Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]), DBGrid1,
    qryRptTransactions);
  with qryRptTransactions do
  begin
    Active := False;
    if frPersonID3F1.PersonActive and frPersonID3F1.PersonSelect then
    begin
      ParamByName('PersonID1DFrom').Value :=
        frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
      ParamByName('PersonID1DTo').Value :=
        frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
    end
    else
    begin
      ParamByName('PersonID1DFrom').Value := -999999999;
      ParamByName('PersonID1DTo').Value := 2147483647;
    end;

    ParamByName('DiameterFrom').Value := -999999999;
    ParamByName('Diameterto').Value := 2147483647;

    if chkAllStore.Checked then
    begin
      ParamByName('StoreIDFrom').Value :=
        GetcFrom(myParams.ParamValues['Store'], ftInteger);
      ParamByName('StoreIDTo').Value := GetcTo(myParams.ParamValues['Store'],
        ftInteger);

    end
    else
    begin
      ParamByName('StoreIDFrom').Value :=
        Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);

      ParamByName('StoreIDTo').Value :=
        Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    end;

    // Parameters.ParamByName('StoreID1').Value:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Active := True;
  end; // with
end;

procedure TRptControlCardexFDF.initCombo;
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
      cmbStore.AddItem(FieldByName('storeid').AsString +
        FieldByName('c_StoreName').AsString,
        TObject(FieldByName('storeid').AsInteger));
      next;
    end; // while
    cmbStore.ItemIndex := 0;
    cmbStoreClick(cmbStore);
  end; // with

end;

procedure TRptControlCardexFDF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRptTransactions, Self)
end;

procedure TRptControlCardexFDF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptControlCardexFDF.updateRemain;
var
  c_StuffCode: Largeint;
  c_BackLogEntity: Extended;
  c_BackLogWeight: Extended;
  c_BacklogPrice: Extended;
  c_BacklogSellPrice: Extended;
begin
  warn2('گزارش در حال تکمیل');
  exit;
  c_BackLogEntity := 0;
  c_BackLogWeight := 0;
  c_BacklogPrice := 0;
  c_BacklogSellPrice := 0;
  with qryRptTransactions do
    try
      try
        DisableControls;
        First;
        c_StuffCode := FieldByName('StuffCode').AsLargeInt;
        while not Eof do
        begin
          c_BackLogEntity := c_BackLogEntity +
            FieldByName('BackLogEntity').AsFloat;
          c_BackLogWeight := c_BackLogWeight +
            FieldByName('BackLogWeight').AsFloat;
          c_BacklogPrice := c_BacklogPrice +
            FieldByName('BacklogPrice').AsFloat;
          c_BacklogSellPrice := c_BacklogSellPrice +
            FieldByName('InvTotallSellPrice').AsFloat;
          Edit;
          FieldByName('CalcuBackLogEntity').AsFloat :=
            RoundTo(c_BackLogEntity, opt.RoundEntity);
          FieldByName('CalcuBackLogWeight').AsFloat := c_BackLogWeight;
          FieldByName('CalcuBacklogPrice').AsFloat := c_BacklogPrice;
          FieldByName('CalcuBacklogSellPrice').AsFloat := c_BacklogSellPrice;

          case opt.EntityDisplayType of
            0, 2:
              if RoundTo(c_BackLogEntity, 0) <> 0 then
                FieldByName('UnitSellPriceBackLog').AsFloat := c_BacklogPrice /
                  c_BackLogEntity
              else
                FieldByName('UnitSellPriceBackLog').AsFloat := 0;

            1, 3:
              if RoundTo(c_BackLogWeight, 0) <> 0 then
                FieldByName('UnitSellPriceBackLog').AsFloat := c_BacklogPrice /
                  c_BackLogWeight
              else
                FieldByName('UnitSellPriceBackLog').AsFloat := 0;
          end; // case

          Post;
          next;
          if FieldByName('StuffCode').AsLargeInt <> c_StuffCode then
          begin
            c_StuffCode := FieldByName('StuffCode').AsLargeInt;
            c_BackLogEntity := 0;
            c_BackLogWeight := 0;
            c_BacklogPrice := 0;
            c_BacklogSellPrice := 0;
          end; // if
        end; // while
      finally
        if Eof then
          First;
        EnableControls;
      end; // try
    except
      on e: Exception do
      begin
        add2log(e.Message);
        warn2('..اشكال در محاسبه موجود?' + FieldByName('StuffCode').AsString +
          #13#10 + e.Message);
      end;

    end; // with

end;

procedure TRptControlCardexFDF.qryRptTransactionsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  updateRemain;
  HideOrShowSellPriceFields(qryRptTransactions, DBGrid1);

  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Person1Caption FROM ReciptTypes where ReciptType=11';
    Active := True;
    qryRptTransactions.FieldByName('CustName').DisplayLabel :=
      FieldByName('Person1Caption').AsString + '|نام';
    qryRptTransactions.FieldByName('PersonID1').DisplayLabel :=
      FieldByName('Person1Caption').AsString + '|كد';
    Active := False;
  end;
  Entity_Weight(DBGrid1);

  With qryRptTransactions do
  begin
    FieldByName('StoreID').DisplayLabel := 'انبار|كد';
    FieldByName('c_StoreName').DisplayLabel := 'انبار|نام ';
    FieldByName('StoreID2').DisplayLabel := 'انبار2|کد';
    FieldByName('c_StoreName2').DisplayLabel := 'انبار2|نام';
    FieldByName('StuffCode').DisplayLabel := 'كالا|كد';
    FieldByName('c_StuffName').DisplayLabel := 'كالا|مشخصات';
    FieldByName('c_StuffTecInfo').DisplayLabel := 'كالا|مشخصات فنی';
    FieldByName('c_KeepPlace').DisplayLabel := 'c_KeepPlace';
    FieldByName('KeepPlace').DisplayLabel := 'كالا|محل نگهداری';
    FieldByName('Cabinets').DisplayLabel := 'كالا|طبقه';
    FieldByName('UnitName').DisplayLabel := 'كالا|واحد';
    FieldByName('ReciptNumber').DisplayLabel := 'فرم|شماره';
    FieldByName('ReciptDate').DisplayLabel := 'فرم|تاريخ';
    FieldByName('ReciptCaption').DisplayLabel := 'فرم|عمل';
    FieldByName('InputEntity').DisplayLabel := 'وارده|مقدار';
    FieldByName('InputWeight').DisplayLabel := 'وارده|وزن';
    FieldByName('UnitSellPriceIn').DisplayLabel := 'وارده|في';
    FieldByName('TotalInputPrice').DisplayLabel := 'وارده|بهاء كل';
    FieldByName('OutputEntity').DisplayLabel := 'صادره|مقدار';
    FieldByName('OutputWeight').DisplayLabel := 'صادره|وزن';
    FieldByName('UnitSellPriceOut').DisplayLabel := 'صادره|في';
    FieldByName('TotalOutputPrice').DisplayLabel := 'صادره|بهاي كل';
    FieldByName('UnitSellPriceBackLog').DisplayLabel := 'موجودي|في';
    FieldByName('CalcuBackLogEntity').DisplayLabel := 'موجودي|مقدار';
    FieldByName('CalcuBackLogWeight').DisplayLabel := 'موجودي|وزن';
    FieldByName('CalcuBacklogPrice').DisplayLabel := 'موجودي|ارزش';
    FieldByName('InTotallSellPrice').DisplayLabel := 'وارده|بهاي‏تمام‏شده‏';
    FieldByName('InvTotallSellPrice').DisplayLabel := 'موجودي|بهاي‏تمام‏شده‏';
    FieldByName('OutTotallSellPrice').DisplayLabel := 'صادره|بهاي‏تمام‏شده‏';
    FieldByName('CalcuBacklogSellPrice').DisplayLabel := 'موجودي|بهاي تمام شده';
    FieldByName('StuffDiameter').DisplayLabel := 'ضخامت';
    FieldByName('ControlCode').DisplayLabel := 'ش.راهنما ';
    FieldByName('StuffAlloy').DisplayLabel := 'آلياژ';
    FieldByName('StuffSize').DisplayLabel := 'ابعاد';
    FieldByName('AidDate').DisplayLabel := 'تاريخ';
    FieldByName('AidNumber').DisplayLabel := 'ش كمكي';
    FieldByName('ItemNote').DisplayLabel := 'توضيحات|كالا';
    FieldByName('CustName').DisplayLabel := '|نام';
    FieldByName('PersonID1').DisplayLabel := '|كد';
    FieldByName('PersonID4').DisplayLabel := 'كدمشتري4';
    FieldByName('CustName4').DisplayLabel := 'مشتري4';
    FieldByName('SecondTypeItemName').DisplayLabel := 'نوع اطلاعات ایتم';
    FieldByName('ReciptNote').DisplayLabel := 'توضيحات|فرم';
    FieldByName('SellsEmporium').DisplayLabel := 'مرکز فروش|کد';
    FieldByName('SellsEmporiumName').DisplayLabel := 'مرکز فروش|نام';
    FieldByName('DocNo').DisplayLabel := 'سند|شماره';
    FieldByName('DocDate').DisplayLabel := 'سند|تاریخ';
  end;

end;

procedure TRptControlCardexFDF.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  myStore := DM.myStore;
  b := opt.RowInCardex in [1, 3];
  setColumns2(DBGrid1, b, 'Row');
  FormType := var_glb_gParam;
  Caption := 'كاردكس كنترلي كليه كالاهاي انبار ';
  grpPost.Visible := FormType = 2;
  actPost.Visible := grpPost.Visible;
  if grpPost.Visible then
  begin
    InitCombos(cmbReciptType, 'SELECT ReciptType, ReciptCaption ' +
      'FROM ReciptTypes WHERE EffectType IN(1,2,6)' +
      ' OR  (EffectType NOT IN(1,2,6)) AND (IncreasingInventory = 1)');
    Caption := grpPost.Caption;
  end;

  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'InTotallSellPrice');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'OutTotallSellPrice');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'CalcuBacklogSellPrice');
  // qryRptTransactions.FieldByName('InTotallSellPrice').Visible :=
  // opt.ActiveSellPrice2;
  // qryRptTransactions.FieldByName('OutTotallSellPrice').Visible :=
  // opt.ActiveSellPrice2;
  // qryRptTransactions.FieldByName('CalcuBacklogSellPrice').Visible :=
  // opt.ActiveSellPrice2;
end;

procedure TRptControlCardexFDF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRptTransactions);
end;

procedure TRptControlCardexFDF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  try
    search2F.ShowSearch(qryRptTransactions);
  finally
  end; // try
end;

procedure TRptControlCardexFDF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryRptTransactions.FieldByName('ReciptNumber'));
end;

procedure TRptControlCardexFDF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TRptControlCardexFDF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TRptControlCardexFDF.actPostExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptControlCardexFDF.mnuAllClickClick(Sender: TObject);
begin
  inherited;
  CalcBalance((Sender as TMenuItem).Tag);
end;

procedure TRptControlCardexFDF.CalcBalance(kind: Integer);
var
  BalanceEntity, BalanceWeight: Real;
  qryBalance, qryRecipts, qryReciptItems, qryinit: TADOQuery;
  StuffCode: Largeint;
  BalanceDate, FieldNameEntity, FieldNameWeight, txt: string;
  ReciptID: Integer;
  FormOutput: Boolean;
begin
  if cmbReciptType.ItemIndex = -1 then
  begin
    Warn('نام فرم مشخص نشده');
    cmbReciptType.DroppedDown := True;
    exit;
  end;
  qryRecipts := TADOQuery.Create(nil);
  qryReciptItems := TADOQuery.Create(nil);
  qryinit := TADOQuery.Create(nil);
  qryBalance := TADOQuery.Create(nil);
  With qryBalance do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'DELETE FROM TempProductions';
      ExecSQL;
      Active := False;
      SQL.Text := 'SELECT StuffCode, BalanceDate, BalanceEntity, BalanceWeight';
      SQL.Add('FROM TempProductions ');
      Active := True;
      BalanceEntity := 0;
      BalanceWeight := 0;
      qryRptTransactions.DisableControls;
      qryRptTransactions.First;
      StuffCode := qryRptTransactions.FieldByName('StuffCode').AsLargeInt;
      ProgressBar1.Position := 0;
      ProgressBar1.Max := qryRptTransactions.RecordCount;
      while not qryRptTransactions.Eof do
      begin
        if StuffCode <> qryRptTransactions.FieldByName('StuffCode').AsLargeInt
        then
        begin
          BalanceEntity := 0;
          BalanceWeight := 0;
          StuffCode := qryRptTransactions.FieldByName('StuffCode').AsLargeInt;
          // TransformID := qryRptTransactionsTransFormID.AsInteger;
        end;

        if opt.EntityDisplayType in [0, 2, 3] then
          BalanceEntity :=
            RoundTo(BalanceEntity + qryRptTransactions.FieldByName
            ('InputEntity').AsFloat - qryRptTransactions.FieldByName
            ('OutputEntity').AsFloat, -2);
        if opt.EntityDisplayType in [1, 2, 3] then
          BalanceWeight :=
            RoundTo(BalanceWeight + qryRptTransactions.FieldByName
            ('InputWeight').AsFloat - qryRptTransactions.FieldByName
            ('OutputWeight').AsFloat, -2);

        if (BalanceEntity < 0) or (BalanceWeight < 0) then
        begin
          Insert;
          FieldByName('StuffCode').AsLargeInt := StuffCode;
          // FieldByName('StuffCode').AsInteger := TransformID;
          FieldByName('BalanceDate').AsString := qryRptTransactions.FieldByName
            ('ReciptDate').AsString;
          FieldByName('BalanceEntity').AsFloat :=
            ifthen(BalanceEntity < 0, BalanceEntity, 0);
          FieldByName('BalanceWeight').AsFloat :=
            ifthen(BalanceWeight < 0, BalanceWeight, 0);
          BalanceEntity := 0;
          BalanceWeight := 0;
          Post;
        end;
        ProgressBar1.StepIt;
        qryRptTransactions.next;
      end;

      case kind of
        1:
          BalanceSQL := 'BalanceDate';
        2:
          BalanceSQL := 'SUBSTRING( BalanceDate,1,8)+''01''';
        3:
          BalanceSQL := 'SUBSTRING( BalanceDate,1,5)+''01/01''';
      end;
      Active := False;
      SQL.Text := 'SELECT TempProductions.StuffCode, TransFormID, ';
      SQL.Add(BalanceSQL + ' AS BalanceDate,');
      SQL.Add('SUM(BalanceEntity) AS BalanceEntity, ');
      SQL.Add('SUM(BalanceWeight) AS BalanceWeight');
      SQL.Add('FROM TempProductions LEFT Outer  JOIN TransForms');
      SQL.Add(' ON TransForms.StuffCode = TempProductions.StuffCode ');
      SQL.Add('GROUP BY TempProductions.StuffCode,TransFormID,');
      SQL.Add(BalanceSQL);
      Active := True;

      qryRecipts.Connection := DMf.adcBSell;
      qryRecipts.SQL.Text := 'SELECT top 0 * FROM Recipts';
      // qryRecipts.SQL.Add(  ' WHERE ReciptID = :ReciptID');
      // Parameters.ParamByName('ReciptID').Value:=0;
      qryRecipts.Active := True;

      qryReciptItems.Connection := DMf.adcBSell;
      qryReciptItems.SQL.Text := 'SELECT top 0 * FROM ReciptItems';
      qryReciptItems.Active := True;

      qryinit.Connection := DMf.adcBSell;
      qryinit.SQL.Text := 'SELECT * FROM ReciptTypes WHERE ReciptType = ' +
        IntToStr(Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]));
      qryinit.Active := True;
      FormOutput := qryinit.FieldByName('EffectType').AsInteger
        in [3, 4, 5, 7, 8];
      if FormOutput then
      begin
        FieldNameEntity := 'OutputEntity';
        FieldNameWeight := 'OutputWeight';
      end
      else
      begin
        FieldNameEntity := 'InputEntity';
        FieldNameWeight := 'InputWeight';
      end;

      // BalanceDate:=EmptyStr;
      ProgressBar1.Position := 0;
      ProgressBar1.Max := RecordCount;
      ReciptID := 0;
      First;
      /// ///////////////new
      while not Eof do
      begin
        if BalanceDate <> FieldByName('BalanceDate').AsString then
        begin
          BalanceDate := FieldByName('BalanceDate').AsString;
          qryRecipts.Insert;
          GetReciptID(qryRecipts, qryReciptItems, qryinit, 0);

          qryRecipts.FieldByName('StoreID').AsInteger :=
            Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
          GetReciptNumber(qryinit, qryRecipts, 0, myStore);
          qryRecipts.FieldByName('ReciptDate').AsString := BalanceDate;
          qryRecipts.FieldByName('ReciptType').AsInteger :=
            Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
          qryRecipts.FieldByName('OperatorID').AsInteger := User.id;
          qryRecipts.FieldByName('InsertDate').AsDateTime := Now;
          qryRecipts.FieldByName('ModifyDate').AsDateTime := Now;
          qryRecipts.FieldByName('FirstUser').AsString := User.name;
          qryRecipts.FieldByName('PersonID1').AsInteger := 0;
          qryRecipts.FieldByName('PersonID2').AsInteger := 0;
          qryRecipts.FieldByName('PersonID3').AsInteger := 0;
          qryRecipts.FieldByName('UseOtherID').AsInteger := 0;
          ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
          txt := txt + '  ' + qryRecipts.FieldByName('ReciptNumber').AsString;
          qryRecipts.Post;

        end;

        qryReciptItems.Insert;
        GetANewID(qryReciptItems, IntToStr(FormType), 'ReciptItems',
          'ReciptItemID', nil, qryinit.FieldByName('StepCorrelate').AsInteger);
        qryReciptItems.FieldByName('ReciptID').AsInteger := ReciptID;
        qryReciptItems.FieldByName('FirstUser').AsString := User.name;

        if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [2, 3] then
          qryReciptItems.FieldByName('InsertTime').AsString :=
            SysUtils.TimeToStr(Now);

        qryReciptItems.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;
        if FieldByName('TransFormID').AsInteger <> 0 then
          qryReciptItems.FieldByName('TransFormID').AsInteger :=
            FieldByName('TransFormID').AsInteger;

        qryReciptItems.FieldByName(FieldNameEntity).AsFloat :=
          Abs(FieldByName('BalanceEntity').AsFloat);
        qryReciptItems.FieldByName(FieldNameWeight).AsFloat :=
          Abs(FieldByName('BalanceWeight').AsFloat);
        qryReciptItems.Post;
        ProgressBar1.StepIt;

        next;
      end;
      if Trim(txt) <> EmptyStr then
        Warn(' فرم به شماره هاي ' + txt + ' ثبت شد ', mtInformation);
    finally
      Free;
      qryRecipts.Free;
      qryReciptItems.Free;
      qryRptTransactions.EnableControls;
      FreeReservedCodes(DMf.adcBSell, '', '');
      qryinit.Free;
      qryRptTransactions.Refresh;
      BigMessage('انجام شد', 1);
    end;

end;

procedure TRptControlCardexFDF.chkAllStoreClick(Sender: TObject);
begin
  inherited;
  cmbStore.Enabled := not chkAllStore.Checked;
  UpdateList
end;

procedure TRptControlCardexFDF.chkSumClick(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

end.
