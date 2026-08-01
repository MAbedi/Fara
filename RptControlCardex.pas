unit RptControlCardex;

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
  CedarDbGrid;

type

  TRptControlCardexF = class(Ttemplate2MDIF)
    qryRptTransactions: TADOQuery;
    qryRptTransactionsc_StuffName: TStringField;
    qryRptTransactionsUnitName: TStringField;
    qryRptTransactionsReciptNumber: TIntegerField;
    qryRptTransactionsReciptDate: TStringField;
    qryRptTransactionsReciptType: TWordField;
    qryRptTransactionsReciptCaption: TStringField;
    qryRptTransactionsStuffSize: TStringField;
    qryRptTransactionsStuffAlloy: TStringField;
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
    qryRptTransactionsStuffDiameter: TFloatField;
    qryRptTransactionsControlCode: TLargeintField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSort: TAction;
    qryRptTransactionsPersonID1: TIntegerField;
    qryRptTransactionsCustName: TStringField;
    PopMenu: TPopupMenu;
    qryRptTransactionsItemNote: TStringField;
    BitBtn8: TBitBtn;
    actPrintVijeh: TAction;
    qryRptTransactionsAidDate: TStringField;
    qryRptTransactionsServerID: TIntegerField;
    qryRptTransactionsYearID: TIntegerField;
    qryRptTransactionsStuffCode: TLargeintField;
    qryRptTransactionsAidNumber: TStringField;
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
    qryRptTransactionsc_StuffTecInfo: TStringField;
    qryRptTransactionsRow: TIntegerField;
    qryRptTransactionsn_ValuationType: TSmallintField;
    qryRptTransactionsn_minOrder: TFloatField;
    qryRptTransactionsn_maxOrder: TFloatField;
    qryRptTransactionsn_orderPoint: TFloatField;
    qryRptTransactionsPersonID2: TIntegerField;
    qryRptTransactionsCustName2: TStringField;
    qryRptTransactionsPersonID3: TIntegerField;
    qryRptTransactionsCustName3: TStringField;
    qryRptTransactionsPersonID1D: TIntegerField;
    qryRptTransactionsCustName1D: TStringField;
    qryRptTransactionsProductCode: TLargeintField;
    qryRptTransactionsProductName: TStringField;
    qryRptTransactionsEffectType: TIntegerField;
    qryRptTransactionsAidNumberD: TStringField;
    qryRptTransactionsAidDateD: TStringField;
    qryRptTransactionsRegPrice: TBCDField;
    qryRptTransactionsPortage: TBCDField;
    qryRptTransactionsDeficitValue: TBCDField;
    qryRptTransactionsReciptItemID: TIntegerField;
    qryRptTransactionsSecondTypeItem: TIntegerField;
    qryRptTransactionsFitfulID: TFMTBCDField;
    qryRptTransactionsFitfulIDc: TBCDField;
    qryRptTransactionsTopicCode: TLargeintField;
    qryRptTransactionsDetailCode: TIntegerField;
    qryRptTransactionsComment2: TStringField;
    qryRptTransactionsCabinet: TWideStringField;
    qryRptTransactionsc_KeepPlace: TStringField;
    chkAllStore: TCheckBox;
    qryRptTransactionsReciptNote: TStringField;
    DBGrid1: TCedarDbgrid;
    qryRptTransactionsInputEntity: TFloatField;
    qryRptTransactionsInputWeight: TFloatField;
    qryRptTransactionsUnitSellPriceIn: TBCDField;
    qryRptTransactionsTotalInputPrice: TBCDField;
    qryRptTransactionsOutputEntity: TFloatField;
    qryRptTransactionsOutputWeight: TFloatField;
    qryRptTransactionsUnitSellPriceOut: TBCDField;
    qryRptTransactionsTotalOutputPrice: TBCDField;
    qryRptTransactionsBackLogEntity: TFloatField;
    qryRptTransactionsBackLogWeight: TFloatField;
    qryRptTransactionsUnitSellPriceBackLog: TBCDField;
    qryRptTransactionsBacklogPrice: TBCDField;
    qryRptTransactionsCalcuBackLogEntity: TFloatField;
    qryRptTransactionsCalcuBackLogWeight: TFloatField;
    qryRptTransactionsCalcuBacklogPrice: TBCDField;
    qryRptTransactionsInTotallSellPrice: TBCDField;
    qryRptTransactionsInvTotallSellPrice: TBCDField;
    qryRptTransactionsOutTotallSellPrice: TBCDField;
    qryRptTransactionsCalcuBacklogSellPrice: TBCDField;
    qryRptTransactionsUnitSellPriceBackLog1: TFloatField;
    qryRptTransactionsStoreID: TSmallintField;
    qryRptTransactionsc_StoreName: TStringField;
    qryRptTransactionsStoreID2: TIntegerField;
    qryRptTransactionsc_StoreName2: TStringField;
    qryRptTransactionsSecondTypeItemName: TStringField;
    qryRptTransactionsSellsEmporium: TIntegerField;
    qryRptTransactionsSellsEmporiumName: TWideStringField;
    qryRptTransactionsPersonID4: TIntegerField;
    qryRptTransactionsCustName4: TStringField;
    chkSum: TCheckBox;
    qryRptTransactionsKeepPlace: TStringField;
    qryRptTransactionsCabinets: TStringField;
    qryRptTransactionsDocNo: TIntegerField;
    qryRptTransactionsDocDate: TStringField;
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
    procedure actPostExecute(Sender: TObject);
    procedure mnuAllClickClick(Sender: TObject);
    procedure frPersonID3F1qryPersonID3AfterScroll(DataSet: TDataSet);
    procedure frPersonID3F1sbtnMasterClick(Sender: TObject);
    procedure chkAccordingToClick(Sender: TObject);
    procedure chkAllStoreClick(Sender: TObject);
    procedure chkSumClick(Sender: TObject);
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
  RptControlCardexF: TRptControlCardexF;

implementation

uses GlobalPro, DateUtils, searchCode_ADO,
  Recipts, SelectStore, StrUtils, FormFunctions, search2, sort2,
  DBGrid2Print, Math, shamsiDate, ReciptsFunctions, mmessage, FaraConsts;

{$R *.dfm}

procedure TRptControlCardexF.actFilterExecute(Sender: TObject);
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

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItemFilter(GetFilter, TFilterPersonID1);
      AddItemFilter(GetFilter, TFilterPersonID2);
      AddItemFilter(GetFilter, TFilterPersonID4);

      // AddItem(DMf.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ ﬂ«·«', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode,c_StuffName From StuffCoding where c_StuffCode<>0',
      // 'SELECT Min(c_StuffCode),Max(c_StuffCode) From StuffCoding where c_StuffCode<>0');

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

procedure TRptControlCardexF.UpdateList;
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

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

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

procedure TRptControlCardexF.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  if myParams.FindParam('date') = nil then
    close;
end;

procedure TRptControlCardexF.frPersonID3F1qryPersonID3AfterScroll
  (DataSet: TDataSet);
begin
  inherited;
  with RptControlCardexF do
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

procedure TRptControlCardexF.frPersonID3F1sbtnMasterClick(Sender: TObject);
begin
  inherited;
  frPersonID3F1.sbtnMasterClick(Sender);

end;

procedure TRptControlCardexF.chkAccordingToClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TRptControlCardexF.cmbStoreClick(Sender: TObject);
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

procedure TRptControlCardexF.initCombo;
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

procedure TRptControlCardexF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRptTransactions, Self)
end;

procedure TRptControlCardexF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptControlCardexF.updateRemain;
var
  c_StuffCode: Largeint;
  c_BackLogEntity: Extended;
  c_BackLogWeight: Extended;
  c_BacklogPrice: Extended;
  c_BacklogSellPrice: Extended;
begin
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
                FieldByName('UnitSellPriceBackLog').AsCurrency := c_BacklogPrice
                  / c_BackLogEntity
              else
                FieldByName('UnitSellPriceBackLog').AsCurrency := 0;

            1, 3:
              if RoundTo(c_BackLogWeight, 0) <> 0 then
                FieldByName('UnitSellPriceBackLog').AsCurrency := c_BacklogPrice
                  / c_BackLogWeight
              else
                FieldByName('UnitSellPriceBackLog').AsCurrency := 0;
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
        Warn2('..«‘ﬂ«· œ— „Õ«”»Â „ÊÃÊœ?' + FieldByName('StuffCode').AsString +
          #13#10 + e.Message);
      end;

    end; // with

end;

procedure TRptControlCardexF.qryRptTransactionsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  updateRemain;
end;

procedure TRptControlCardexF.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  myStore := DM.myStore;
  b := opt.RowInCardex in [1, 3];
  setColumns2(DBGrid1, b, 'Row');
  FormType := var_glb_gParam;
  Caption := 'ﬂ«—œﬂ” ﬂ‰ —·Ì ﬂ·ÌÂ ﬂ«·«Â«Ì «‰»«— ';
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
//  qryRptTransactions.FieldByName('InTotallSellPrice').Visible :=
//    opt.ActiveSellPrice2;
//  qryRptTransactions.FieldByName('OutTotallSellPrice').Visible :=
//    opt.ActiveSellPrice2;
//  qryRptTransactions.FieldByName('CalcuBacklogSellPrice').Visible :=
//    opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(qryRptTransactions,DBGrid1);




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

procedure TRptControlCardexF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRptTransactions);
end;

procedure TRptControlCardexF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  try
    search2F.ShowSearch(qryRptTransactions);
  finally
  end; // try
end;

procedure TRptControlCardexF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryRptTransactions.FieldByName('ReciptNumber'));
end;

procedure TRptControlCardexF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TRptControlCardexF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TRptControlCardexF.actPostExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptControlCardexF.mnuAllClickClick(Sender: TObject);
begin
  inherited;
  CalcBalance((Sender as TMenuItem).Tag);
end;

procedure TRptControlCardexF.CalcBalance(kind: Integer);
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
    Warn('‰«„ ›—„ „‘Œ’ ‰‘œÂ');
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
      StuffCode := qryRptTransactionsStuffCode.AsInteger;
      ProgressBar1.Position := 0;
      ProgressBar1.Max := qryRptTransactions.RecordCount;
      while not qryRptTransactions.Eof do
      begin
        if StuffCode <> qryRptTransactionsStuffCode.AsInteger then
        begin
          BalanceEntity := 0;
          BalanceWeight := 0;
          StuffCode := qryRptTransactionsStuffCode.AsInteger;
          // TransformID := qryRptTransactionsTransFormID.AsInteger;
        end;

        if opt.EntityDisplayType in [0, 2, 3] then
          BalanceEntity :=
            RoundTo(BalanceEntity + qryRptTransactionsInputEntity.AsFloat -
            qryRptTransactionsOutputEntity.AsFloat, -2);
        if opt.EntityDisplayType in [1, 2, 3] then
          BalanceWeight :=
            RoundTo(BalanceWeight + qryRptTransactionsInputWeight.AsFloat -
            qryRptTransactionsOutputWeight.AsFloat, -2);

        if (BalanceEntity < 0) or (BalanceWeight < 0) then
        begin
          Insert;
          FieldByName('StuffCode').AsLargeInt := StuffCode;
          // FieldByName('StuffCode').AsInteger := TransformID;
          FieldByName('BalanceDate').AsString :=
            qryRptTransactionsReciptDate.AsString;
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
        Warn(' ›—„ »Â ‘„«—Â Â«Ì ' + txt + ' À»  ‘œ ', mtInformation);
    finally
      Free;
      qryRecipts.Free;
      qryReciptItems.Free;
      qryRptTransactions.EnableControls;
      FreeReservedCodes(DMf.adcBSell, '', '');
      qryinit.Free;
      qryRptTransactions.Requery();
      BigMessage('«‰Ã«„ ‘œ', 1);
    end;

end;

procedure TRptControlCardexF.chkAllStoreClick(Sender: TObject);
begin
  inherited;
  cmbStore.Enabled := not chkAllStore.Checked;
  UpdateList
end;

procedure TRptControlCardexF.chkSumClick(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

end.
