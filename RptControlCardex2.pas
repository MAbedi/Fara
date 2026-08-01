unit RptControlCardex2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch,
  ppMemo, ppModule, ppTypes, ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls,
  SumDBGrid, filter_ADO, FilterClass_ADO, DM, FrPersonID3, Filter_ADO_Const,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type

  TRptControlCardex2F = class(Ttemplate2MDIF)
    qryRptTransactions: TADOQuery;
    qryRptTransactionsStoreID: TSmallintField;
    qryRptTransactionsc_StoreName: TStringField;
    qryRptTransactionsReciptNumber: TIntegerField;
    qryRptTransactionsReciptDate: TStringField;
    qryRptTransactionsReciptType: TWordField;
    qryRptTransactionsReciptCaption: TStringField;
    qryRptTransactionsInputEntity: TFloatField;
    qryRptTransactionsInputWeight: TFloatField;
    qryRptTransactionsTotalInputPrice: TBCDField;
    qryRptTransactionsOutputEntity: TFloatField;
    qryRptTransactionsOutputWeight: TFloatField;
    qryRptTransactionsTotalOutputPrice: TBCDField;
    qryRptTransactionsBackLogEntity: TFloatField;
    qryRptTransactionsBackLogWeight: TFloatField;
    qryRptTransactionsBacklogPrice: TBCDField;
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
    qryRptTransactionsReciptId: TIntegerField;
    actSendToExcel: TAction;
    BitBtn4: TBitBtn;
    qryRptTransactionsCalcuBackLogWeight: TFloatField;
    qryRptTransactionsCalcuBacklogPrice: TBCDField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSort: TAction;
    qryRptTransactionsPersonID1: TIntegerField;
    qryRptTransactionsCustName: TStringField;
    qryRptTransactionsInTotallSellPrice: TBCDField;
    qryRptTransactionsOutTotallSellPrice: TBCDField;
    qryRptTransactionsInvTotallSellPrice: TBCDField;
    qryRptTransactionsCalcuBacklogSellPrice: TBCDField;
    BitBtn8: TBitBtn;
    actPrintVijeh: TAction;
    qryRptTransactionsUnitSellPriceBackLog: TBCDField;
    qryRptTransactionsAidDate: TStringField;
    qryRptTransactionsUnitSellPriceIn: TBCDField;
    qryRptTransactionsUnitSellPriceOut: TBCDField;
    qryRptTransactionsServerID: TIntegerField;
    qryRptTransactionsYearID: TIntegerField;
    qryRptTransactionsAidNumber: TStringField;
    actPost: TAction;
    qryRptTransactionsCalcuBackLogEntity: TFloatField;
    frPersonID3F1: TfrPersonID3F;
    qryRptTransactionsRow: TIntegerField;
    qryRptTransactionsn_ValuationType: TSmallintField;
    qryRptTransactionsPersonID2: TIntegerField;
    qryRptTransactionsCustName2: TStringField;
    qryRptTransactionsPersonID3: TIntegerField;
    qryRptTransactionsCustName3: TStringField;
    qryRptTransactionsEffectType: TIntegerField;
    qryRptTransactionsUnitSellPriceBackLog1: TFloatField;
    qryRptTransactionsStoreID2: TIntegerField;
    qryRptTransactionsc_StoreName2: TStringField;
    chkAllStore: TCheckBox;
    qryRptTransactionsReciptNote: TStringField;
    DBGrid1: TCedarDbgrid;
    chkSum: TCheckBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbStoreClick(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryRptTransactionsAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure frPersonID3F1qryPersonID3AfterScroll(DataSet: TDataSet);
    procedure frPersonID3F1sbtnMasterClick(Sender: TObject);
    procedure chkAccordingToClick(Sender: TObject);
    procedure chkAllStoreClick(Sender: TObject);
    procedure chkSumClick(Sender: TObject);
  private
    myStore: TStore;
    procedure UpdateList;
    procedure initCombo;
    procedure updateRemain;
    { Private declarations }
  public
    { Public declarations }
    // procedure ShowForm;
  end;

var
  RptControlCardex2F: TRptControlCardex2F;

implementation

uses GlobalPro, DateUtils, searchCode_ADO,
  Recipts, SelectStore, StrUtils, FormFunctions, search2, sort2,
  DBGrid2Print, Math, shamsiDate, ReciptsFunctions, mmessage, FaraConsts,
  RptControlCardex;

{$R *.dfm}

procedure TRptControlCardex2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if frPersonID3F1.PersonActive then
      begin
        AddItem(DMf.adcBSell, 'Person3Select',
          '«‰ Œ«» ' + frPersonID3F1.PersonCaption, '', ftUnknown, dvDefaults,
          '1', '', ciRadioGroup,
          'SELECT 0 As MasterType,''‰œ«—œ'' as MasterName ' + ' Union All ' +
          'SELECT 1 ,''œ«—œ''  ');
        AddItem(DMf.adcBSell, 'PersonID1D', frPersonID3F1.PersonCaption, 'ﬂœ',
          ftInteger, dvMinMax, '', '', ciLookup,
          ' SELECT Customers.CustID, Customers.CustName FROM Customers INNER JOIN CustomersGroup ON '
          + ' Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE (CustomersGroup.GroupType IN('
          + frPersonID3F1.CustomerKind + '))',

          'SELECT 0,2147483647');
      end;
      AddItemFilter(GetFilter, TFilterControlCode);

      AddItem(DMf.adcBSell, 'Date', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) From Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);

      AddItemFilter(GetFilter, TFilterPersonID1);
      AddItemFilter(GetFilter, TFilterPersonID2);
      AddItemFilter(GetFilter, TFilterPersonID4);

      AddItem(DMf.adcBSell, 'Store', '«‰»«—', 'ﬂœ «‰»«—', ftInteger, dvMinMax,
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

procedure TRptControlCardex2F.UpdateList;
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
      Parameters.ParamByName('PersonID1DFrom').Value := -2147483646;
      Parameters.ParamByName('PersonID1DTo').Value := 2147483647;
    end;
    Active := True;
  end;
  with qryRptTransactions do
  begin
    Active := False;
    Parameters.ParamByName('StuffCode').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCode1').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
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
  initCombo;
end;

procedure TRptControlCardex2F.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  if myParams.FindParam('date') = nil then
    close;
end;

procedure TRptControlCardex2F.frPersonID3F1qryPersonID3AfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with RptControlCardex2F do
    with qryRptTransactions do
    begin
      Active := False;
      if frPersonID3F1.PersonActive and frPersonID3F1.PersonSelect then
      begin
        Parameters.ParamByName('PersonID1DFrom').Value :=
          frPersonID3F1.qryPersonID1D.FieldByName('PersonID1D').AsInteger;
        Parameters.ParamByName('PersonID3To').Value :=
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

procedure TRptControlCardex2F.frPersonID3F1sbtnMasterClick(Sender: TObject);
begin
  inherited;
  frPersonID3F1.sbtnMasterClick(Sender);

end;

procedure TRptControlCardex2F.chkAccordingToClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TRptControlCardex2F.cmbStoreClick(Sender: TObject);
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

    Parameters.ParamByName('DiameterFrom').Value := -999999999;
    Parameters.ParamByName('Diameterto').Value := 2147483647;

    if chkAllStore.Checked then
    begin
      Parameters.ParamByName('StoreIDFrom').Value :=
        GetcFrom(myParams.ParamValues['Store'], ftInteger);
      Parameters.ParamByName('StoreIDTo').Value :=
        GetcTo(myParams.ParamValues['Store'], ftInteger);

    end
    else
    begin
      Parameters.ParamByName('StoreIDFrom').Value :=
        Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);

      Parameters.ParamByName('StoreIDTo').Value :=
        Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    end;

    // Parameters.ParamByName('StoreID1').Value:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Active := True;
  end; // with
end;

procedure TRptControlCardex2F.initCombo;
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

procedure TRptControlCardex2F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRptTransactions, Self)
end;

procedure TRptControlCardex2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptControlCardex2F.updateRemain;
var
  StoreID: SmallInt;
  c_BackLogEntity: Real;
  c_BackLogWeight: Real;
  c_BacklogPrice: Real;
  c_BacklogSellPrice: Real;
begin
  c_BackLogEntity := 0;
  c_BackLogWeight := 0;
  c_BacklogPrice := 0;
  c_BacklogSellPrice := 0;
  with qryRptTransactions do
  begin
    try
      DisableControls;
      First;
      StoreID := FieldByName('StoreID').AsInteger;
      while not Eof do
      begin
        c_BackLogEntity := c_BackLogEntity +
          FieldByName('BackLogEntity').AsFloat;
        c_BackLogWeight := c_BackLogWeight +
          FieldByName('BackLogWeight').AsFloat;
        c_BacklogPrice := c_BacklogPrice + FieldByName('BacklogPrice')
          .AsCurrency;
        c_BacklogSellPrice := c_BacklogSellPrice +
          FieldByName('InvTotallSellPrice').AsCurrency;
        Edit;
        FieldByName('CalcuBackLogEntity').AsFloat :=
          RoundTo(c_BackLogEntity, opt.RoundEntity);
        FieldByName('CalcuBackLogWeight').AsFloat := c_BackLogWeight;
        FieldByName('CalcuBacklogPrice').AsCurrency := c_BacklogPrice;
        FieldByName('CalcuBacklogSellPrice').AsCurrency := c_BacklogSellPrice;

        case opt.EntityDisplayType of
          0, 2:
            if RoundTo(c_BackLogEntity, 0) <> 0 then
              FieldByName('UnitSellPriceBackLog').AsCurrency := c_BacklogPrice /
                c_BackLogEntity
            else
              FieldByName('UnitSellPriceBackLog').AsCurrency := 0;

          1, 3:
            if RoundTo(c_BackLogWeight, 0) <> 0 then
              FieldByName('UnitSellPriceBackLog').AsCurrency := c_BacklogPrice /
                c_BackLogWeight
            else
              FieldByName('UnitSellPriceBackLog').AsCurrency := 0;
        end; // case

        Post;
        next;
        if FieldByName('StoreID').AsLargeInt <> StoreID then
        begin
          StoreID := FieldByName('StoreID').AsInteger;
          c_BackLogEntity := 0;
          c_BackLogWeight := 0;
          c_BacklogPrice := 0;
          c_BacklogSellPrice := 0;
        end; // if
      end; // while
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TRptControlCardex2F.qryRptTransactionsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  updateRemain;
end;

procedure TRptControlCardex2F.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  myStore := DM.myStore;
  b := opt.RowInCardex in [1, 3];
  setColumns2(DBGrid1, b, 'Row');

//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'InTotallSellPrice');
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'OutTotallSellPrice');
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'CalcuBacklogSellPrice');
//  qryRptTransactions.FieldByName('InTotallSellPrice').Visible :=
//    opt.ActiveSellPrice2;
//  qryRptTransactions.FieldByName('OutTotallSellPrice').Visible :=
//    opt.ActiveSellPrice2;
//  qryRptTransactions.FieldByName('CalcuBacklogSellPrice').Visible :=
//    opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(qryRptTransactions, DBGrid1);


  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Person1Caption FROM ReciptTypes where ReciptType=11';
    Active := True;
    qryRptTransactions.FieldByName('CustName').DisplayLabel :=
      FieldByName('Person1Caption').AsString + '|‰«„';
    qryRptTransactions.FieldByName('PersonID1').DisplayLabel :=
      FieldByName('Person1Caption').AsString + '|ﬂœ';
    Active := False;
  end;
  Entity_Weight(DBGrid1);
end;

procedure TRptControlCardex2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRptTransactions);
end;

procedure TRptControlCardex2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  try
    search2F.ShowSearch(qryRptTransactions);
  finally
  end; // try
end;

procedure TRptControlCardex2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryRptTransactions.FieldByName('ReciptNumber'));
end;

procedure TRptControlCardex2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TRptControlCardex2F.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRptControlCardex2F.chkAllStoreClick(Sender: TObject);
begin
  inherited;
  cmbStore.Enabled := not chkAllStore.Checked;
  UpdateList
end;

procedure TRptControlCardex2F.chkSumClick(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

end.
