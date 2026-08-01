unit Incorporate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, DB, ADODB, ppBands, Math, ppClass,
  ppDB, ppCtrls, ppReport, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv,
  ppDBPipe, ppVar, Menus, ppTypes, SumDBGrid, ppParameter, ComCtrls,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TIncorporateF = class(Ttemplate2MDIF)
    dsIncorporate: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    qryIncorporate: TADOQuery;
    Panel4: TPanel;
    popPrint: TPopupMenu;
    IncorporateF1: TMenuItem;
    IncorporateF2: TMenuItem;
    qryStuff_Unit_TecInf: TADOQuery;
    qryIncorporate_StuffName: TStringField;
    qryIncorporate_UnitName: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pmRecall: TPopupMenu;
    AllClick: TMenuItem;
    N3: TMenuItem;
    cmbStore: TComboBox;
    cmbReciptType: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    actFilter: TAction;
    btnOther: TBitBtn;
    N21: TMenuItem;
    btnVeritable: TBitBtn;
    btnPrint: TBitBtn;
    actVeritable: TAction;
    actStandard: TAction;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    qryUpDate: TADOQuery;
    actCheckUnsaved: TAction;
    mniFilter: TMenuItem;
    qryIncorporateUnitSellPrice: TFMTBCDField;
    qryIncorporateStandardRate: TBCDField;
    qryIncorporate_UnitPriceUseKind: TIntegerField;
    qryIncorporate_SellPrice_S: TCurrencyField;
    qryIncorporateStuffCode: TLargeintField;
    btnFilter: TBitBtn;
    actTotallSellPrice: TAction;
    actTaxCoTaxValue: TAction;
    actDeficitValue: TAction;
    pm1: TPopupMenu;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    mnuStandard: TMenuItem;
    mnuVeritable: TMenuItem;
    mnuN1: TMenuItem;
    mnuN2: TMenuItem;
    qryIncorporateArticlePrice: TBCDField;
    qryIncorporateWagePrice: TBCDField;
    qryIncorporateScoriaPrice: TBCDField;
    Memo1: TMemo;
    mnuCheckUnsaved: TMenuItem;
    actInsertStuffCode: TAction;
    mnuInsertStuffCode: TMenuItem;
    qryIncorporateEntity: TBCDField;
    qryIncorporateWeight: TBCDField;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    btnWagePrice: TBitBtn;
    popTakhsis: TPopupMenu;
    mnuEntity: TMenuItem;
    mnuWeight: TMenuItem;
    mnuStandardRate: TMenuItem;
    mnuAllClick: TMenuItem;
    btnScoriaPrice: TBitBtn;
    stat1: TStatusBar;
    btn1: TBitBtn;
    N1: TMenuItem;
    N2: TMenuItem;
    qryIncorporateWage: TBCDField;
    qryIncorporateScoria: TBCDField;
    mnuPureSellPrice: TMenuItem;
    qryStuffCode: TADOQuery;
    qryStuffCodec_StuffCode: TLargeintField;
    qryStuffCodeSellPrice1: TBCDField;
    qryStuffCodeStuffpublicPercent: TFloatField;
    qryIncorporate_SellPrice1: TCurrencyField;
    qryIncorporate_StuffPubPercent: TFloatField;
    qryIncorporate_PurSellPrice: TBCDField;
    qryRecal: TADOQuery;
    edtWagePrice: TMaskEdit;
    edtScoriaPrice: TMaskEdit;
    N4: TMenuItem;
    DBGrid1: TCedarDbgrid;
    procedure qryIncorporateAfterDelete(DataSet: TDataSet);
    procedure qryIncorporateBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryIncorporateBeforePost(DataSet: TDataSet);
    procedure qryIncorporateAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure AllC_L_i_c_k_Click(Sender: TObject);
    procedure qryIncorporateBeforeEdit(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure cmbStoreChange(Sender: TObject);
    procedure btnOtherClick(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCheckUnsavedExecute(Sender: TObject);
    procedure actVeritableExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actStandardExecute(Sender: TObject);
    procedure actTotallSellPriceExecute(Sender: TObject);
    procedure actTaxCoTaxValueExecute(Sender: TObject);
    procedure actDeficitValueExecute(Sender: TObject);
    procedure btnVeritableClick(Sender: TObject);
    procedure actInsertStuffCodeExecute(Sender: TObject);
    procedure mnuAllClickClick(Sender: TObject);
    procedure btnAllClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure edtWagePriceChange(Sender: TObject);
  private
    UnsavedFileName, BeforeEdtCode, ReciptTypeSQL, StoreSQL: String;
    DbgrdOption: set of TDBGridOption;
    Form_InOut: string;
    MaskName: string;
    FilterGroupID: Boolean;
    procedure SaveArticlesToFile;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure InsertStuffCode(Sender: TObject);
    function UnicStuffCode: Boolean;
    procedure InitCombo;
    procedure UpdateFilter;
    procedure CheckUnsaved;
    function TotalEntityOrWeight(SellPrice: Currency): Currency;
    procedure UpdateQryFilter(qry: TADOQuery);
    procedure SUMFile;
    procedure QryEkhtelaf(WageScoria: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncorporateF: TIncorporateF;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro, sndkey32, FormFunctions, search2,
  sort2, StrUtils, filter_ADO, FilterClass_ADO, GetExcel, FaraConsts,
  ReciptsFunctions;

{$R *.dfm}

procedure TIncorporateF.InitCombo;
begin
  cmbStore.Clear;
  cmbReciptType.Clear;
  with TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT ReciptTypes.ReciptType, ReciptTypes.ReciptCaption';
      SQL.Add('FROM ReciptTypes INNER JOIN');
      SQL.Add('Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType');
      // SQL.Add('WHERE (ReciptTypes.EffectType <> 4)OR (IncreasingInventory = 1)');
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
      SQL.Text := 'SELECT DISTINCT Stores.n_StoreID, Stores.c_StoreName';
      SQL.Add('FROM Stores INNER JOIN');
      SQL.Add('Recipts ON Stores.n_StoreID = Recipts.StoreID');
      SQL.Add('GROUP BY Stores.n_StoreID, Stores.c_StoreName');
      SQL.Add('ORDER BY Stores.n_StoreID');
      StoreSQL := SQL.Text;
      Open;
      while not Eof do
      begin
        cmbStore.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        Next;
      end;
    finally
      Free;
      cmbStore.ItemIndex := 0;
      cmbReciptType.ItemIndex := 0;
    end;
end;

procedure TIncorporateF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 3;
          1:
            nextIndex := 3;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 7;
          7:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if curIndex in [0] then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TIncorporateF.qryIncorporateBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› ﬂ«·«Ì Ã«—Ì „ÿ„∆‰ Â” Ìœ.') <> mryes then
    Abort;
end;

procedure TIncorporateF.FormCreate(Sender: TObject);
begin
  inherited;
  edtWagePrice.OnChange := nil;
  edtScoriaPrice.OnChange := nil;

  InitCombo;
  edtWagePrice.Text := ReadConfig(APPID, 'edtWagePrice', '');
  edtScoriaPrice.Text := ReadConfig(APPID, 'edtScoriaPrice', '');

  SetLookUpCash(qryIncorporate);
  DbgrdOption := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines,
    dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];
  with qryIncorporate do
  begin
    Active := True;
    Last;
  end; // wih
  UnsavedFileName := 'UnsavedItem_' + Self.Name + '.DAT';

  try
    cmbStore.ItemIndex :=
      StrToInt(ReadConfig(APPID, Self.Name + 'cmbStore', '0'));
    cmbReciptType.ItemIndex :=
      StrToInt(ReadConfig(APPID, Self.Name + 'cmbReciptType', '0'));
  finally
  end;

  edtWagePrice.OnChange := edtWagePriceChange;
  edtScoriaPrice.OnChange := edtWagePriceChange;

end;

procedure TIncorporateF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TIncorporateF.edtWagePriceChange(Sender: TObject);
begin
  inherited;
  qryIncorporate.Requery();
end;

procedure TIncorporateF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 3] of String;
begin
  inherited;
  if (Sender as TCedarDbgrid).ReadOnly then
    exit;
  i := (Sender as TCedarDbgrid).SelectedIndex;
  aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
  (Sender as TCedarDbgrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        sqlText :=
          ' SELECT  c_StuffCode, c_StuffName, UnitName, c_StuffTecInfo  ' +
          ' FROM Aid_StuffCoding   WHERE     (State = 0)';
        if searchCode_ADOF.SearchCode2(DMf.adcBSell, '„‘Œ’«  ﬂ«·«', sqlText,
          ['ﬂœ ﬂ«·«', '⁄‰Ê«‰ ﬂ«·«', 'Ê«Õœ', '„‘Œ’«  ›‰Ì'], Results,
          [100, 100, 100, 70], alLeft) then
        begin
          aDataSet.FieldByName('StuffCode').AsString := Results[0];
        end; // if
      end; // 6
  end; // case

end;

procedure TIncorporateF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TIncorporateF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TIncorporateF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryIncorporate);
end;

procedure TIncorporateF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryIncorporate);
end;

procedure TIncorporateF.qryIncorporateAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TIncorporateF.qryIncorporateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('StuffCode').IsNull and
    DataSet.FieldByName('_StuffName').IsNull then
  begin
    DataSet.Cancel;
    Abort
  end;
  if not CheckRequiredFields(qryIncorporate) then
    Abort;
  if not UnicStuffCode then
    Abort;
end;

procedure TIncorporateF.SUMFile;
begin
  stat1.Panels[5].Text := qryIncorporate.FieldByName('Entity').DisplayLabel +
    ' = ' + CurrToStrF(CalcSumFileds(qryIncorporate, 'Entity'), ffCurrency, 0);

  stat1.Panels[4].Text := qryIncorporate.FieldByName('Weight').DisplayLabel +
    ' = ' + CurrToStrF(CalcSumFileds(qryIncorporate, 'Weight'), ffCurrency, 0);
  stat1.Panels[3].Text := qryIncorporate.FieldByName('StandardRate')
    .DisplayLabel + ' = ' + CurrToStrF(CalcSumFileds(qryIncorporate,
    'StandardRate'), ffCurrency, 0);
  stat1.Panels[2].Text := qryIncorporate.FieldByName('ArticlePrice')
    .DisplayLabel + ' = ' + CurrToStrF(CalcSumFileds(qryIncorporate,
    'ArticlePrice'), ffCurrency, 0);
  stat1.Panels[1].Text := qryIncorporate.FieldByName('WagePrice').DisplayLabel +
    ' = ' + CurrToStrF(CalcSumFileds(qryIncorporate, 'WagePrice'),
    ffCurrency, 0);
  stat1.Panels[0].Text := qryIncorporate.FieldByName('ScoriaPrice').DisplayLabel
    + ' = ' + CurrToStrF(CalcSumFileds(qryIncorporate, 'ScoriaPrice'),
    ffCurrency, 0)

end;

procedure TIncorporateF.SaveArticlesToFile;
begin
  qryIncorporate.SaveToFile(__AppData + UnsavedFileName);
end;

procedure TIncorporateF.qryIncorporateAfterPost(DataSet: TDataSet);
begin
  inherited;
  BeforeEdtCode := EmptyStr;
  SaveArticlesToFile;
end;

procedure TIncorporateF.FormDestroy(Sender: TObject);
begin
  inherited;
  // SaveColWidth(DBGrid1);
  SaveConfig(APPID, 'edtWagePrice', Trim(edtWagePrice.Text));
  SaveConfig(APPID, 'edtScoriaPrice', Trim(edtScoriaPrice.Text));

  SaveConfig(APPID, Self.Name + 'cmbStore', IntToStr(cmbStore.ItemIndex));
  SaveConfig(APPID, Self.Name + 'cmbReciptType',
    IntToStr(cmbReciptType.ItemIndex));

end;

procedure TIncorporateF.AllC_L_i_c_k_Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline1.RangeBegin := rbCurrentRecord;
        ppDBPipeline1.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppDBPipeline1.RangeBegin := rbFirstRecord;
        ppDBPipeline1.RangeEnd := reLastRecord;
      end;
  end;
  try
    qryIncorporate.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
  finally
    qryIncorporate.EnableControls;
  end;
end;

procedure TIncorporateF.qryIncorporateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  BeforeEdtCode := qryIncorporate.FieldByName('StuffCode').AsString;
end;

procedure TIncorporateF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0;
end;

procedure TIncorporateF.InsertStuffCode;
var
  qry: TADOQuery;
  GROUP_BY_SQL: string;
begin
  FilterGroupID := True;
  if not actFilter.Execute then
    exit;
  FilterGroupID := false;
  qry := TADOQuery.Create(Self);
  With qry do
    try
      Connection := DMf.adcBSell;
      Active := false;
      case (Sender as TMenuItem).Tag of
        2:
          begin
            SQL.Text := 'SELECT StuffCoding.c_StuffCode,';
            SQL.Add('SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS Entity,');
            SQL.Add('SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight) AS Weight');
            SQL.Add('FROM Recipts INNER JOIN');
            SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
            SQL.Add('Recipts.YearID = ReciptItems.YearID INNER JOIN');
            SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode');
            GROUP_BY_SQL :=
              'GROUP BY StuffCoding.c_StuffCode,StuffCoding.GroupID, Recipts.ReciptType';

          end
      ELSE
        begin
          // SQL.Text := 'SELECT StuffCoding.c_StuffCode, StuffCoding.BuyPrice';
          // SQL.Add(', StuffCoding.StandardRate, Recipts.ReciptType ');
          // SQL.Add('FROM StuffCoding INNER JOIN  ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode INNER JOIN');
          // SQL.Add('  Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID');

          SQL.Text := 'SELECT StuffCoding.c_StuffCode';
          SQL.Add(', ManifestoItems.SellPrice1 AS BuyPrice, StuffCoding.StandardRate, Recipts.ReciptType');
          SQL.Add('FROM StuffCoding INNER JOIN');
          SQL.Add('ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode INNER JOIN');
          SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
          SQL.Add('ReciptItems.YearID = Recipts.YearID INNER JOIN');
          SQL.Add('ManifestoItems ON StuffCoding.c_StuffCode = ManifestoItems.StuffCode INNER JOIN');
          SQL.Add('Manifesto ON ManifestoItems.ManifestoID = Manifesto.ManifestoID AND ManifestoItems.StuffCode <> 0 AND');
          SQL.Add('Manifesto.SellOrBuy = 0 AND Manifesto.ManifestoRunDate =');
          SQL.Add('(SELECT MAX(ManifestoRunDate) AS Expr1');
          SQL.Add('FROM Manifesto)');
          GROUP_BY_SQL :=
            ' GROUP BY StuffCoding.c_StuffCode, ManifestoItems.SellPrice1, StuffCoding.StandardRate,StuffCoding.GroupID, Recipts.ReciptType';

        end;
      end;

      SQL.Add(' WHERE (c_StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo) ');
      SQL.Add(' AND   (GroupID BETWEEN :GroupIDFrom AND :GroupIDTo) ANd (Recipts.ReciptType ='
        + IntToStr(Integer(cmbReciptType.Items.Objects
        [cmbReciptType.ItemIndex])) + ')');

      SQL.Add('AND (Recipts.StoreID = :StoreID )');
      SQL.Add('AND (Recipts.ReciptType = :ReciptType )');
      SQL.Add('AND (Recipts.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo )');
      SQL.Add('AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo )');
      SQL.Add('AND (Recipts.ReciptState < 3)');
      SQL.Add('AND (Recipts.DocNo = 0 )');
      SQL.Add('AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
      SQL.Add('AND (Recipts.PersonID1 BETWEEN :CustIDFrom AND :CustIDTo OR Recipts.PersonID1=0 )');
      SQL.Add('AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
      SQL.Add(GROUP_BY_SQL);

      Parameters.ParamByName('StuffCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffCodeTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('GroupIDFrom').Value :=
        GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
      Parameters.ParamByName('GroupIDTo').Value :=
        GetcTo(myParams.ParamValues['GroupID'], ftInteger);

      UpdateQryFilter(qry);
      Active := True;
      BigMessageProgBar('œ— Õ«· «‰ ﬁ«· ﬂ«·«Â«  ...˛', RecordCount);
      qryIncorporate.DisableControls;
      while not Eof do
      begin
        qryIncorporate.Insert;
        qryIncorporate.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('c_StuffCode').AsLargeInt;
        if (Sender as TMenuItem).Tag = 1 then
        begin
          qryIncorporate.FieldByName('UnitSellPrice').AsCurrency :=
            FieldByName('BuyPrice').AsCurrency;
          qryIncorporate.FieldByName('StandardRate').AsCurrency :=
            FieldByName('StandardRate').AsCurrency;
        end;
        if (Sender as TMenuItem).Tag = 2 then
        begin
          qryIncorporate.FieldByName('Entity').AsCurrency :=
            FieldByName('Entity').AsFloat;
          qryIncorporate.FieldByName('Weight').AsCurrency :=
            FieldByName('Weight').AsFloat;
        end;

        qryIncorporate.Post;
        GoProgressBar(IntToStr(RecNo) + ' <> ' + FieldByName('c_StuffCode')
          .AsString + #254 + ' «“ ' + #254 + IntToStr(RecordCount) + #254);
        Next;
      end;
    finally
      Free;
      qryIncorporate.EnableControls;
      BigMessage('À»  ‘œ.', 1);
    end;
end;

procedure TIncorporateF.AllClickClick(Sender: TObject);
begin
  inherited;
  InsertStuffCode(Sender)
end;

function TIncorporateF.UnicStuffCode;
begin
  With TADOQuery.Create(DMf.adcBSell) do
    try
      Result := True;
      Clone(qryIncorporate, ltBatchOptimistic);
      Filter := 'StuffCode=' + qryIncorporate.FieldByName('StuffCode').AsString;
      Filtered := True;
      if (qryIncorporate.State in [dsInsert]) then
        Result := RecordCount <= 0;
      if (qryIncorporate.FieldByName('StuffCode').AsString <> BeforeEdtCode) and
        (BeforeEdtCode <> EmptyStr) then
        Result := RecordCount = 0;
      if Not Result then
        Warn('ﬂœ ﬂ«·«Ì  ﬂ—«—Ì', mtInformation);
    finally
      Free;
    end;
end;

procedure TIncorporateF.UpdateFilter;
var
  i: Integer;
begin
  With TADOQuery.Create(DMf.adcBSell) do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT EffectType FROM ReciptTypes';
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
    finally
      Free;
    end;
  i := Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
  PriceOnStoreType(i, DBGrid1, qryIncorporate);

  UpdateQryFilter(qryUpDate);
  with qryUpDate.Parameters do
  begin
    LblShowLimitPlace1.Caption := '  «“ ‘„«—Â ' +
      IntToStr(ParamByName('ReciptNumberFrom').Value) + '  « ' +
      IntToStr(ParamByName('ReciptNumberTo').Value);
    LblShowLimitPlace2.Caption := '  «“  «—ÌŒ ' + ParamByName('ReciptDateFrom')
      .Value + '  « ' + ParamByName('ReciptDateTo').Value;
  end; // with
end;

procedure TIncorporateF.cmbStoreChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TIncorporateF.btnOtherClick(Sender: TObject);
begin
  inherited;
  pmRecall.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TIncorporateF.btnVeritableClick(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TIncorporateF.btn1Click(Sender: TObject);
begin
  inherited;
  SUMFile
end;

procedure TIncorporateF.btnAllClick(Sender: TObject);
begin
  inherited;
  MaskName := (Sender as TBitBtn).Hint;
  popTakhsis.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TIncorporateF.mnuAllClickClick(Sender: TObject);
var
  Sum, SumCalc, c: Real48;
  msk: TMaskEdit;
  Curent: Real48;
  FldName: string;
begin
  inherited;
  msk := TMaskEdit(FindComponent('edt' + MaskName));
  if (Trim(msk.Text) = EmptyStr) then
  begin
    Warn('„ﬁœ«— Ê«—œ ‰‘œÂ');
    exit;
  end;
  Curent := StrToFloat(Trim(msk.Text));
  FldName := (Sender as TMenuItem).Hint;
  Sum := 0;
  // if FldName <> 'PureSellPrice' then
  Sum := CalcSumFileds(qryIncorporate, FldName);
  SumCalc := 0;
  With qryIncorporate do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;

      // sheikh 2015/06/30
      // if FldName <> 'PureSellPrice' then
      begin
        if Sum <> 0 then
          c := RoundTo(FieldByName(FldName).AsFloat * Curent / Sum, 0);
        SumCalc := SumCalc + c;
        FieldByName(MaskName).AsFloat := c;
      end;
      // else if FldName = 'PureSellPrice' then
      // begin
      /// /          c := RoundTo((qryIncorporateEntity.AsFloat *
      /// /          qryIncorporate_SellPrice1.AsFloat *
      /// /          qryIncorporate_StuffPubPercent.AsFloat)
      // c := RoundTo( (qryIncorporate_PurSellPrice.AsFloat * Curent / Sum , 0);
      // SumCalc := SumCalc + c;
      //
      // FieldByName(MaskName).AsFloat := c ;
      // end;
      Post;
      Next;
    end;
    First;
    c := Curent - SumCalc;
    // sheikh 2015/06/30
    if (c <> 0)
    // and (FldName <> 'PureSellPrice')
    then
    begin
      Edit;
      FieldByName(MaskName).AsFloat := FieldByName(MaskName).AsFloat + c;
      Post;
    end;
    EnableControls;
  end;
  SUMFile;
end;

procedure TIncorporateF.N1Click(Sender: TObject);
// var
// UnitSellPrice,   Article: Real48;
begin
  inherited;
  if not actFilter.Execute then
    exit;
  qryIncorporate.First;
  while not qryIncorporate.Eof do
  begin
    // Article := TotalEntityOrWeight(qryIncorporateArticlePrice.AsFloat +
    // qryIncorporateWagePrice.AsFloat + qryIncorporateScoriaPrice.AsFloat);

    // if (qryIncorporateUnitSellPrice.AsFloat = 0) and (Article > 0) then
    // UnitSellPrice := Article
    // else
    // UnitSellPrice := qryIncorporateUnitSellPrice.AsFloat;

    with qryUpDate, Parameters Do
    begin

      SQL[0] := Format
        ('UPDATE ReciptItems SET Wage = ROUND(cast (%s as float)/%s *(InputEntity + OutputEntity)'
        + ',0)', [qryIncorporateWagePrice.AsString,
        qryIncorporateEntity.AsString]);

      ParamByName('StuffCode').Value := qryIncorporateStuffCode.AsLargeInt;

      ExecSQL;

      //
      QryEkhtelaf('Wage');
      qryIncorporate.Next;
    end;

  end;
  BigMessage('À»  ‘œ ', 1);
end;

procedure TIncorporateF.QryEkhtelaf(WageScoria: string);
var
  AddDecDb, c: Currency;
  SumWageScoria: Currency;
begin
  if not qryRecal.Active then
    With qryRecal do
      try
        Active := false;
        UpdateQryFilter(qryRecal);
        Active := True;
      finally

      end
  else
    qryRecal.Requery();
  With qryUpDate Do
    try
      AddDecDb := qryIncorporate.FieldByName(WageScoria + 'Price').AsCurrency;
      qryRecal.Locate('StuffCode', qryIncorporateStuffCode.AsLargeInt, []);
      SumWageScoria := qryRecal.FieldByName(WageScoria).AsCurrency;
      c := AddDecDb - SumWageScoria;
      if c <> 0 then
      begin
        qryUpDate.SQL[0] := 'UPDATE  TOP (1) ReciptItems ' +
          Format('set %s = %s + %s ', [WageScoria, WageScoria, CurrToStr(c)]);

        ExecSQL;
      end;
    finally
    end;
end;

procedure TIncorporateF.N21Click(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryIncorporate)
end;

procedure TIncorporateF.N2Click(Sender: TObject);
// var
// UnitSellPrice,   Article: Real48;
begin
  inherited;
  if not actFilter.Execute then
    exit;
  with qryIncorporate do
  begin
    First;
    while not Eof do
    begin
      // Article := TotalEntityOrWeight(qryIncorporateArticlePrice.AsFloat +
      // qryIncorporateWagePrice.AsFloat + qryIncorporateScoriaPrice.AsFloat);

      // if (qryIncorporateUnitSellPrice.AsFloat = 0) and (Article > 0) then
      // UnitSellPrice := Article
      // else
      // UnitSellPrice := qryIncorporateUnitSellPrice.AsFloat;

      qryUpDate.SQL[0] :=
        Format('UPDATE ReciptItems SET Scoria = ROUND(cast (%s as float)/%s *(InputEntity + OutputEntity)'
        + ',0)', [qryIncorporateScoriaPrice.AsString,
        qryIncorporateEntity.AsString]);

      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;

      QryEkhtelaf('Scoria');

      Next;
    end;
  end;

  BigMessage('À»  ‘œ ', 1);

end;

procedure TIncorporateF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close;
  // CheckUnsaved
end;

procedure TIncorporateF.CheckUnsaved;
var
  i: Smallint;
  aQry: TADOQuery;
begin
  if not FileExists(__AppData + UnsavedFileName) then
    exit;
  if get_response('¬Œ—Ì‰ ﬂ«·«Â«Ì Ê«—œ ‘œÂ ' + Caption +
    ' ﬁ»·Ì œ— ”Ì” „ –ŒÌ—Â ‰‘œÂ° ¬Ì« „ÌùŒÊ«ÂÌœ «Ì‰ ﬂ«·«Â« »«“ŒÊ«‰Ì ‘Ê‰œø') <> mryes
  then
  begin
    // DeleteFile(__AppData + UnsavedFileName);
    exit;
  end; // if
  aQry := TADOQuery.Create(nil);
  try
    aQry.LoadFromFile(__AppData + UnsavedFileName);
    with qryIncorporate do
    begin
      AfterOpen := nil;
      AfterInsert := nil;
      AfterEdit := nil;
      AfterPost := nil;
      AfterCancel := nil;
      AfterDelete := nil;
      AfterScroll := nil;
      BeforeDelete := nil;
      BeforeEdit := nil;
      BeforeInsert := nil;
      OnCalcFields := nil;
    end; // with
    with aQry do
    begin
      First;
      while not Eof do
      begin
        qryIncorporate.Append;
        for i := 0 to Fields.Count - 1 do
          if qryIncorporate.FindField(Fields[i].FieldName) <> nil then
            if qryIncorporate.FieldByName(Fields[i].FieldName).CanModify then
            begin
              qryIncorporate.FieldByName(Fields[i].FieldName).AsString :=
                Fields[i].AsString;
            end;
        qryIncorporate.Post;
        Next;
      end; // while
    end; // with
  finally
    aQry.Free;
    qryIncorporate.AfterPost := qryIncorporateAfterPost;
    qryIncorporate.AfterDelete := qryIncorporateAfterDelete;
    qryIncorporate.BeforePost := qryIncorporateBeforePost;
    qryIncorporate.BeforeDelete := qryIncorporateBeforeDelete;
    qryIncorporate.BeforeEdit := qryIncorporateBeforeEdit;
  end; // try
end;

procedure TIncorporateF.actCheckUnsavedExecute(Sender: TObject);
begin
  inherited;
  CheckUnsaved
end;

function TIncorporateF.TotalEntityOrWeight(SellPrice: Currency): Currency;
var
  LimitFi: Currency;
begin
  LimitFi := GetLimitFi(qryIncorporate);
  case opt.EntityDisplayType of
    0:
      Result := ifthen(qryIncorporateEntity.AsFloat <> 0,
        SellPrice / qryIncorporateEntity.AsFloat, 0);
    1:
      Result := ifthen(qryIncorporateWeight.AsFloat <> 0,
        SellPrice / qryIncorporateWeight.AsFloat, 0);
    2:
      if SellPrice >= LimitFi then
        Result := ifthen(qryIncorporateWeight.AsFloat <> 0,
          SellPrice / qryIncorporateWeight.AsFloat, 0)
      else
        Result := ifthen(qryIncorporateEntity.AsFloat <> 0,
          SellPrice / qryIncorporateEntity.AsFloat, 0);
    3:
      if SellPrice >= LimitFi then
        Result := ifthen(qryIncorporateEntity.AsFloat <> 0,
          SellPrice / qryIncorporateEntity.AsFloat, 0)
      else
        Result := ifthen(qryIncorporateWeight.AsFloat <> 0,
          SellPrice / qryIncorporateWeight.AsFloat, 0);
  else
    Result := 0;
  end;
end;

procedure TIncorporateF.actVeritableExecute(Sender: TObject);
var
  UnitSellPrice, Article: Real48;
begin
  inherited;
  if not actFilter.Execute then
    exit;
  with qryIncorporate do
  begin
    First;
    while not Eof do
    begin
      Article := TotalEntityOrWeight(qryIncorporateArticlePrice.AsFloat +
        qryIncorporateWagePrice.AsFloat + qryIncorporateScoriaPrice.AsFloat);

      if (qryIncorporateUnitSellPrice.AsFloat = 0) and (Article > 0) then
        UnitSellPrice := Article
      else
        UnitSellPrice := qryIncorporateUnitSellPrice.AsFloat;

      qryUpDate.SQL[0] := 'UPDATE ReciptItems SET Total' + Form_InOut +
        'Price = ROUND(' + Total(UnitSellPrice, qryIncorporate, Form_InOut) +
        ',0)' + ',UnitSellPrice = ROUND(' + FloatToStr(UnitSellPrice) + ',2)' +
        ',Article = ROUND(' + Total(qryIncorporateArticlePrice.AsFloat,
        qryIncorporate, Form_InOut) + ',2)' + ',Wage = ROUND(' +
        Total(qryIncorporateWagePrice.AsFloat, qryIncorporate, Form_InOut) +
        ',2)' + ',Scoria = ROUND(' + Total(qryIncorporateScoriaPrice.AsFloat,
        qryIncorporate, Form_InOut) + ',2)';

      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('À»  ‘œ ', 1);
end;

procedure TIncorporateF.actStandardExecute(Sender: TObject);
begin
  inherited;
  if not actFilter.Execute then
    exit;
  with qryIncorporate do
  begin
    First;
    while not Eof do
    begin
      qryUpDate.SQL[0] := 'UPDATE ReciptItems SET StandardRate = ROUND( ' +
        FieldByName('StandardRate').AsString + ', 2) ';
      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('À»  ‘œ ', 1);
end;

procedure TIncorporateF.actTaxCoTaxValueExecute(Sender: TObject);
begin
  inherited;
  with qryIncorporate do
  begin
    First;
    while not Eof do
    begin
      qryUpDate.SQL[0] := 'UPDATE ReciptItems SET ' + ' TaxCo = VATCo, ' +
        ' TaxValue=Round((Total' + Form_InOut +
        'Price-DeficitValue)*TaxCo/(100*VATRound),0)*VATRound ';
      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('À»  ‘œ ', 1);

end;

procedure TIncorporateF.actTotallSellPriceExecute(Sender: TObject);
begin
  inherited;
  with qryIncorporate do
  begin
    First;
    while not Eof do
    begin
      qryUpDate.SQL[0] :=
        'UPDATE ReciptItems SET TotallSellPrice =ROUND(  Total' + Form_InOut +
        'Price + ROUND(  ' + '  ( Total' + Form_InOut +
        'Price - ISNULL(DeficitValue,0) ) * ISNULL(TaxCo,0) /(100*VATRound) ,0)*VATRound '
        + ' - ISNULL(DeficitValue,0) + ISNULL(Portage,0) + ISNULL(Article,0) + ISNULL(Wage,0)  + ISNULL(Scoria,0) ,0)';
      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('À»  ‘œ ', 1);
end;

procedure TIncorporateF.actDeficitValueExecute(Sender: TObject);
begin
  inherited;
  with qryIncorporate do
  begin
    First;
    while not Eof do
    begin
      qryUpDate.SQL[0] := 'UPDATE ReciptItems SET ' +
        ' DeficitValue = Round(Total' + Form_InOut +
        'Price *  WaterCo /100,0)  ';
      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('À»  ‘œ ', 1);

end;

procedure TIncorporateF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if FilterGroupID then
      begin
        AddItem(DMf.adcBSell, 'GroupID', ' ê—ÊÂ ﬂ«·« ', 'ﬂœ', ftInteger,
          dvMinMax, '', '', ciLookup,
          'SELECT  GroupID,GroupName FROM  StuffGroups ',
          'SELECT Min(GroupID),Max(GroupID) From StuffGroups');

        AddItemFilter(GetFilter, TFilterStuffCode);
      end;

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItem(DMf.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) FROM Recipts');

      AddItem(DMf.adcBSell, 'ReciptNumber', '›—„ ', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) FROM Recipts');

      AddItem(DMf.adcBSell, 'CustID', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup,

        'SELECT CustID,CustName FROM Customers INNER JOIN  CustomersGroup ' +
        'ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID ' +
        'WHERE (Customers.CustID <> 0 ) ',

        'Select Min(CustID),Max(CustID) FROM Customers INNER JOIN  ' +
        'CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
        + 'WHERE (Customers.CustID <> 0 ) ');

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

procedure TIncorporateF.actInsertStuffCodeExecute(Sender: TObject);
begin
  inherited;
  With qryRecal do
    try
      Active := false;
      UpdateQryFilter(qryRecal);
      Active := True;
      BigMessageProgBar('œ— Õ«· «‰ ﬁ«· ﬂ«·«Â«  ...˛', RecordCount);
      qryIncorporate.DisableControls;
      qryRecal.First;
      while not qryRecal.Eof do
      begin
        qryIncorporate.Insert;
        qryIncorporate.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;

        qryIncorporate.FieldByName('Entity').AsFloat :=
          FieldByName('Entity').AsFloat;
        qryIncorporate.FieldByName('Weight').AsFloat :=
          FieldByName('Weight').AsFloat;

        // qryIncorporate.FieldByName('Wage').AsFloat :=
        // FieldByName('Wage').AsFloat;
        // qryIncorporate.FieldByName('Scoria').AsFloat :=
        // FieldByName('Scoria').AsFloat;

        qryIncorporate.FieldByName('_PurSellPrice').AsFloat :=
          RoundTo((qryIncorporateEntity.AsFloat *
          qryIncorporate_SellPrice1.AsFloat *
          qryIncorporate_StuffPubPercent.AsFloat), 0);

        qryIncorporate.Post;
        GoProgressBar(IntToStr(RecNo) + ' <> ' + FieldByName('StuffCode')
          .AsString + #254 + ' «“ ' + #254 + IntToStr(RecordCount) + #254);
        Next;
      end;
    finally
      qryIncorporate.EnableControls;
      BigMessage('À»  ‘œ.', 1);
    end;
end;

procedure TIncorporateF.UpdateQryFilter(qry: TADOQuery);
begin
  with qry do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value :=
      Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
    Parameters.ParamByName('StoreID').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);

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

  end;
end;

end.
