unit GeneralRegistration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, Mask, DBCtrls, DB, ADODB, ppBands, Math, ppClass,
  ppDB, ppCtrls, ppReport, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv,
  ppDBPipe, ppVar, Menus, ppTypes, SumDBGrid, ppParameter, ComCtrls,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions;

type
  TGeneralRegistrationF = class(Ttemplate2MDIF)
    dsIncorporate: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    actPrint: TAction;
    actSort: TAction;
    actSendToExcel: TAction;
    DBGrid1: TDBGrid;
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
    actUnitSellPrice: TAction;
    actPortage: TAction;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    qryUpDate: TADOQuery;
    actCheckUnsaved: TAction;
    mniFilter: TMenuItem;
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
    Memo1: TMemo;
    mnuCheckUnsaved: TMenuItem;
    actInsertStuffCode: TAction;
    mnuInsertStuffCode: TMenuItem;
    stat1: TStatusBar;
    qryStuffCode: TADOQuery;
    qryStuffCodec_StuffCode: TLargeintField;
    qryStuffCodeSellPrice1: TBCDField;
    qryStuffCodeStuffpublicPercent: TFloatField;
    qryRecal: TADOQuery;
    qryIncorporatePortage: TBCDField;
    qryIncorporate_UnitPriceUseKind: TIntegerField;
    qryIncorporate_SellPrice_S: TCurrencyField;
    qryIncorporateTaxCo: TBCDField;
    qryIncorporateCalculatedKind: TIntegerField;
    qryIncorporateUnitSellPrice: TFMTBCDField;
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
    procedure FormResize(Sender: TObject);
    procedure AllC_L_i_c_k_Click(Sender: TObject);
    procedure qryIncorporateBeforeEdit(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure cmbStoreChange(Sender: TObject);
    procedure btnOtherClick(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCheckUnsavedExecute(Sender: TObject);
    procedure actUnitSellPriceExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPortageExecute(Sender: TObject);
    procedure actTotallSellPriceExecute(Sender: TObject);
    procedure actTaxCoTaxValueExecute(Sender: TObject);
    procedure actDeficitValueExecute(Sender: TObject);
    procedure btnVeritableClick(Sender: TObject);
    procedure actInsertStuffCodeExecute(Sender: TObject);
    procedure qryIncorporateCalculatedKindGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure qryIncorporateCalculatedKindSetText(Sender: TField;
      const Text: string);
  private
    UnsavedFileName, BeforeEdtCode, ReciptTypeSQL, StoreSQL: String;
    DbgrdOption: set of TDBGridOption;
    Form_InOut: string;
    CalculatedKindID: Integer;
    procedure SaveArticlesToFile;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure InsertStuffCode(Sender: TObject);
    function UnicStuffCode: Boolean;
    procedure InitCombo;
    procedure UpdateFilter;
    procedure CheckUnsaved;
    procedure UpdateQryFilter(qry: TADOQuery);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GeneralRegistrationF: TGeneralRegistrationF;

implementation

uses DM, searchCode_ADO, mmessage, GlobalPro, sndkey32, FormFunctions, search2,
  sort2, StrUtils, filter_ADO, FilterClass_ADO, GetExcel, FaraConsts,
  ReciptsFunctions;

{$R *.dfm}

procedure TGeneralRegistrationF.InitCombo;
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
      cmbStore.AddItem('همه انبارها', TObject(0));
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

procedure TGeneralRegistrationF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
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
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

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
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TDBGrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TGeneralRegistrationF.qryIncorporateBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا از حذف كالاي جاري مطمئن هستيد.') <> mryes then
    Abort;
end;

procedure TGeneralRegistrationF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombo;
  CalculatedKindID := ColumnIndexByFieldName(DBGrid1, 'CalculatedKind');
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

end;

procedure TGeneralRegistrationF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TGeneralRegistrationF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 3] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        sqlText :=
          ' SELECT  c_StuffCode, c_StuffName, UnitName, c_StuffTecInfo  ' +
          ' FROM Aid_StuffCoding   WHERE     (State = 0)';
        if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'مشخصات كالا', sqlText,
          ['كد كالا', 'عنوان كالا', 'واحد', 'مشخصات فني'], Results,
          [100, 100, 100, 70], alLeft) then
        begin
          aDataSet.FieldByName('StuffCode').AsString := Results[0];
        end; // if
      end; // 6
  end; // case

end;

procedure TGeneralRegistrationF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TGeneralRegistrationF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TGeneralRegistrationF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryIncorporate);
end;

procedure TGeneralRegistrationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryIncorporate);
end;

procedure TGeneralRegistrationF.qryIncorporateAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TGeneralRegistrationF.qryIncorporateBeforePost(DataSet: TDataSet);
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

procedure TGeneralRegistrationF.qryIncorporateCalculatedKindGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := DBGrid1.Columns[CalculatedKindID].PickList[Sender.AsInteger]
end;

procedure TGeneralRegistrationF.qryIncorporateCalculatedKindSetText
  (Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsInteger := DBGrid1.Columns[CalculatedKindID].PickList.IndexOf(Text);
end;

procedure TGeneralRegistrationF.SaveArticlesToFile;
begin
  qryIncorporate.SaveToFile(__AppData + UnsavedFileName);
end;

procedure TGeneralRegistrationF.qryIncorporateAfterPost(DataSet: TDataSet);
begin
  inherited;
  BeforeEdtCode := EmptyStr;
  SaveArticlesToFile;
end;

procedure TGeneralRegistrationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);

  SaveConfig(APPID, Self.Name + 'cmbStore', IntToStr(cmbStore.ItemIndex));
  SaveConfig(APPID, Self.Name + 'cmbReciptType',
    IntToStr(cmbReciptType.ItemIndex));

end;

procedure TGeneralRegistrationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TGeneralRegistrationF.AllC_L_i_c_k_Click(Sender: TObject);
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

procedure TGeneralRegistrationF.qryIncorporateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  BeforeEdtCode := qryIncorporate.FieldByName('StuffCode').AsString;
end;

procedure TGeneralRegistrationF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 0;
end;

procedure TGeneralRegistrationF.InsertStuffCode;
begin
  myParams.Clear;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'GroupID', ' گروه كالا ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT  GroupID,GroupName FROM  StuffGroups ',
        'SELECT Min(GroupID),Max(GroupID) From StuffGroups');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'كالا', 'كد', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode , c_StuffName FROM StuffCoding ',
      // 'SELECT Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');
      if ShowModal = mrOk then
        GetFilterString;
    finally
      Free;
    end; // try
  end; // with
  if myParams.FindParam('GroupID') = nil then
    exit;
  With TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      Active := false;
      SQL.Text :=
        'SELECT StuffCoding.c_StuffCode, StuffCoding.BuyPrice, StuffCoding.StandardRate, Recipts.ReciptType ';
      SQL.Add('FROM StuffCoding INNER JOIN  ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode INNER JOIN');
      SQL.Add('  Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID');
      SQL.Add(' GROUP BY StuffCoding.c_StuffCode, StuffCoding.BuyPrice, StuffCoding.StandardRate,StuffCoding.GroupID, Recipts.ReciptType ');
      SQL.Add(' HAVING (c_StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo) ');
      SQL.Add(' AND   (GroupID BETWEEN :GroupIDFrom AND :GroupIDTo) ANd (Recipts.ReciptType ='
        + IntToStr(Integer(cmbReciptType.Items.Objects
        [cmbReciptType.ItemIndex])) + ')');
      Parameters.ParamByName('StuffCodeFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('StuffCodeTo').Value :=
        GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
      Parameters.ParamByName('GroupIDFrom').Value :=
        GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
      Parameters.ParamByName('GroupIDTo').Value :=
        GetcTo(myParams.ParamValues['GroupID'], ftInteger);
      Active := True;
      BigMessageProgBar('در حال انتقال كالاها  ...‏', RecordCount);
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

        end;
        qryIncorporate.Post;
        GoProgressBar(IntToStr(RecNo) + ' <> ' + FieldByName('c_StuffCode')
          .AsString + #254 + ' از ' + #254 + IntToStr(RecordCount) + #254);
        Next;
      end;
    finally
      Free;
      qryIncorporate.EnableControls;
      BigMessage('ثبت شد.', 1);
    end;
end;

procedure TGeneralRegistrationF.AllClickClick(Sender: TObject);
begin
  inherited;
  InsertStuffCode(Sender)
end;

function TGeneralRegistrationF.UnicStuffCode;
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
        Warn('كد كالاي تكراري', mtInformation);
    finally
      Free;
    end;
end;

procedure TGeneralRegistrationF.UpdateFilter;
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
    LblShowLimitPlace1.Caption := '  از شماره ' +
      IntToStr(ParamByName('ReciptNumberFrom').Value) + ' تا ' +
      IntToStr(ParamByName('ReciptNumberTo').Value);
    LblShowLimitPlace2.Caption := '  از تاريخ ' + ParamByName('ReciptDateFrom')
      .Value + ' تا ' + ParamByName('ReciptDateTo').Value;
  end; // with
end;

procedure TGeneralRegistrationF.cmbStoreChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TGeneralRegistrationF.btnOtherClick(Sender: TObject);
begin
  inherited;
  pmRecall.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGeneralRegistrationF.btnVeritableClick(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TGeneralRegistrationF.N21Click(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryIncorporate)
end;

procedure TGeneralRegistrationF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close;
  // CheckUnsaved
end;

procedure TGeneralRegistrationF.CheckUnsaved;
var
  i: Smallint;
  aQry: TADOQuery;
begin
  if not FileExists(__AppData + UnsavedFileName) then
    exit;
  if get_response('آخرين كالاهاي وارد شده ' + Caption +
    ' قبلي در سيستم ذخيره نشده، آيا مي‌خواهيد اين كالاها بازخواني شوند؟') <> mryes
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

procedure TGeneralRegistrationF.actCheckUnsavedExecute(Sender: TObject);
begin
  inherited;
  CheckUnsaved
end;

procedure TGeneralRegistrationF.actUnitSellPriceExecute(Sender: TObject);
var
  UnitSellPrice: Real48;
  s: string;
begin
  inherited;
  if not actFilter.Execute then
    exit;
  with qryIncorporate do
  begin
    First;
    while not Eof do
    begin
      UnitSellPrice := qryIncorporateUnitSellPrice.AsFloat;

      // جايگزين
      // افزایش مبلغ ثابت
      // ضریب
      case qryIncorporateCalculatedKind.AsInteger of
        0:
          begin
            s := 'ROUND(' + FloatToStr(UnitSellPrice) + ',2)';
            qryUpDate.SQL[0] := 'UPDATE ReciptItems SET Total' + Form_InOut +
              'Price = ROUND(' + Total(UnitSellPrice, qryIncorporate,
              Form_InOut, s) + ',0)' + ',UnitSellPrice = ' + s;
          end;
        1:
          begin
            s := 'ROUND(UnitSellPrice+' + FloatToStr(UnitSellPrice) + ',2)';
            qryUpDate.SQL[0] := 'UPDATE ReciptItems SET Total' + Form_InOut +
              'Price = ROUND(' + Total(UnitSellPrice, qryIncorporate,
              Form_InOut, s) + ',0)' + ',UnitSellPrice = ' + s;
          end;
        2:
          begin
            s := 'ROUND(UnitSellPrice*' + FloatToStr(UnitSellPrice) + ',2)';
            qryUpDate.SQL[0] := 'UPDATE ReciptItems SET Total' + Form_InOut +
              'Price = ROUND(' + Total(UnitSellPrice, qryIncorporate,
              Form_InOut, s) + ',0)' + ',UnitSellPrice = ' + s;
          end;
      end;
     UpdateQryFilter(qryUpDate);

      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('ثبت شد ', 1);
end;

procedure TGeneralRegistrationF.actPortageExecute(Sender: TObject);
begin
  inherited;
  if not actFilter.Execute then
    exit;
  with qryIncorporate do
  begin
    First;
    while not Eof do
    begin
      qryUpDate.SQL[0] := 'UPDATE ReciptItems SET Portage = ROUND( ' +
        FieldByName('Portage').AsString + ', 2) ';
     UpdateQryFilter(qryUpDate);
      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('ثبت شد ', 1);
end;

procedure TGeneralRegistrationF.actTaxCoTaxValueExecute(Sender: TObject);
begin
  inherited;
  with qryIncorporate do
  begin
    First;
    while not Eof do
    begin
      qryUpDate.SQL[0] := 'UPDATE ReciptItems SET TaxCo = ROUND( ' +
        FieldByName('TaxCo').AsString + ', 2) ';
     UpdateQryFilter(qryUpDate);
      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;


      qryUpDate.ExecSQL;

      qryUpDate.SQL[0] := 'UPDATE ReciptItems SET ' + ' TaxValue=Round((Total' +
        Form_InOut + 'Price-DeficitValue)*TaxCo/(100*VATRound),0)*VATRound ';
     UpdateQryFilter(qryUpDate);
      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('ثبت شد ', 1);

end;

procedure TGeneralRegistrationF.actTotallSellPriceExecute(Sender: TObject);
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
     UpdateQryFilter(qryUpDate);
      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('ثبت شد ', 1);
end;

procedure TGeneralRegistrationF.actDeficitValueExecute(Sender: TObject);
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
     UpdateQryFilter(qryUpDate);
      qryUpDate.Parameters.ParamByName('StuffCode').Value :=
        FieldByName('StuffCode').AsLargeInt;
      qryUpDate.ExecSQL;
      Next;
    end;
  end;
  BigMessage('ثبت شد ', 1);

end;

procedure TGeneralRegistrationF.actFilterExecute(Sender: TObject);
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

procedure TGeneralRegistrationF.actInsertStuffCodeExecute(Sender: TObject);
begin
  inherited;
  With qryRecal do
    try
      Active := false;
      UpdateQryFilter(qryRecal);
      Active := True;
      BigMessageProgBar('در حال انتقال كالاها  ...‏', RecordCount);
      qryIncorporate.DisableControls;
      qryRecal.First;
      while not qryRecal.Eof do
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
      BigMessage('ثبت شد.', 1);
    end;
end;

procedure TGeneralRegistrationF.UpdateQryFilter(qry: TADOQuery);
var
  StoreID: Integer;
begin
  with qry do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value :=
      Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);

    StoreID := Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    if StoreID = 0 then
    begin
      Parameters.ParamByName('StoreIDFrom').Value := -9999;
      Parameters.ParamByName('StoreIDTo').Value := 9999;
    end
    else
    begin
      Parameters.ParamByName('StoreIDFrom').Value := StoreID;
      Parameters.ParamByName('StoreIDTo').Value := StoreID;
    end;

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
