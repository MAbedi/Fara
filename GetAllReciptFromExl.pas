unit GetAllReciptFromExl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, ADODB, DB,
  StrUtils, ComCtrls, Math, System.Actions;

type
  TGetAllReciptFromExlF = class(TTemplate4F)
    grpMaster: TGroupBox;
    grpTop: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    cmbStore: TComboBox;
    cmbReciptType: TComboBox;
    Panel4: TPanel;
    Label9: TLabel;
    lstExcel: TListBox;
    Panel6: TPanel;
    chkModifyDate: TCheckBox;
    chkSlash: TCheckBox;
    pnlResut: TPanel;
    pnlMasterResult: TPanel;
    pnlDetailsResult: TPanel;
    lstResultMaster: TListBox;
    Label11: TLabel;
    Label5: TLabel;
    lstResultDetails: TListBox;
    qryExcel: TADOQuery;
    qryRecipts: TADOQuery;
    qryReciptItems: TADOQuery;
    btnImportExcel: TSpeedButton;
    btnModify: TSpeedButton;
    actOpen: TAction;
    actMove: TAction;
    lblCount: TLabel;
    qryExcelDetails: TADOQuery;
    Label6: TLabel;
    cmbSheet: TComboBox;
    Panel5: TPanel;
    Label4: TLabel;
    lstQryDetails: TListBox;
    Panel7: TPanel;
    btnAddDetail: TBitBtn;
    btnAddLinkDetail: TBitBtn;
    btnRemoveDetail: TBitBtn;
    btnAddMaster: TBitBtn;
    btnAddLinkMaster: TBitBtn;
    btnRemoveMaster: TBitBtn;
    qryReciptsStoreID3: TSmallintField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID12: TIntegerField;
    qryReciptsPersonID22: TIntegerField;
    qryReciptsReciptType2: TWordField;
    qryReciptsServiceValue2: TBCDField;
    qryReciptsReciptValue2: TBCDField;
    qryReciptsTotalValue2: TBCDField;
    qryReciptsAddDecValue2: TBCDField;
    qryReciptsDocNo2: TIntegerField;
    qryReciptsDocDate2: TStringField;
    qryReciptsReciptNote: TStringField;
    qryReciptsParentReciptID2: TIntegerField;
    qryReciptsModifyDate2: TDateTimeField;
    qryReciptsReciptState2: TWordField;
    qryReciptsUseUnitID2: TIntegerField;
    qryReciptsExpireDate2: TStringField;
    qryReciptsReciptID2: TIntegerField;
    qryReciptsOperatorID2: TIntegerField;
    qryReciptsAidDate2: TStringField;
    qryReciptsFirstUser2: TStringField;
    qryReciptsLastUser2: TStringField;
    qryReciptsReciptStartDate2: TStringField;
    qryReciptsReciptEndDate2: TStringField;
    qryReciptsStoreID22: TSmallintField;
    qryReciptsMachineNo2: TStringField;
    qryReciptsArzTypeID2: TIntegerField;
    qryReciptsRialsEqual2: TBCDField;
    qryReciptsSecondType2: TIntegerField;
    qryReciptsUseOtherID2: TWideStringField;
    qryReciptsSellsMethod2: TIntegerField;
    qryReciptsSellsEmporium2: TIntegerField;
    qryReciptsMasirID2: TIntegerField;
    qryReciptsDeliveryID2: TIntegerField;
    qryReciptsPersonID2Bed2: TWordField;
    qryReciptsYearID2: TIntegerField;
    qryReciptsServerID2: TIntegerField;
    qryReciptsMachineName2: TStringField;
    qryReciptsPersonID32: TIntegerField;
    qryReciptsCostDownSave2: TBCDField;
    qryReciptsDefaultDate2: TStringField;
    qryReciptsParentCoReciptID2: TIntegerField;
    qryReciptsInsertDate2: TDateTimeField;
    qryReciptsTruckNumber2: TStringField;
    qryReciptsMachineInfo2: TStringField;
    qryReciptsInsertTime2: TStringField;
    qryReciptsEditTime2: TStringField;
    qryReciptsReciptsRow2: TIntegerField;
    qryReciptsPrvYearID2: TIntegerField;
    qryReciptItemsStuffCode: TLargeintField;
    qryReciptItemsInputEntity: TFloatField;
    qryReciptItemsOutputEntity: TFloatField;
    qryReciptItemsInputWeight: TFloatField;
    qryReciptItemsOutputWeight: TFloatField;
    qryReciptItemsUnitSellPrice: TFMTBCDField;
    qryReciptItemsTotalInputPrice: TBCDField;
    qryReciptItemsTotalOutputPrice: TBCDField;
    qryReciptItemsTotallSellPrice: TBCDField;
    qryReciptItemsItemNote: TStringField;
    qryReciptItemsReciptItemID: TIntegerField;
    qryReciptItemsReciptID: TIntegerField;
    qryReciptItemsStuffSize: TStringField;
    qryReciptItemsStuffAlloy: TStringField;
    qryReciptItemsRequestedEntity: TFloatField;
    qryReciptItemsRequestedWeight: TFloatField;
    qryReciptItemsStuffGrade: TWordField;
    qryReciptItemsUseUnitID: TIntegerField;
    qryReciptItemspreReciptItemID: TIntegerField;
    qryReciptItemsStuffDiameter: TFloatField;
    qryReciptItemsControlCode: TLargeintField;
    qryReciptItemsAidDate: TStringField;
    qryReciptItemsDiscount: TIntegerField;
    qryReciptItemsPersonID1: TIntegerField;
    qryReciptItemsProductModel: TIntegerField;
    qryReciptItemsItemDate: TStringField;
    qryReciptItemsFirstUser: TStringField;
    qryReciptItemsLastUser: TStringField;
    qryReciptItemsWaterCo: TFloatField;
    qryReciptItemsDeficitValue: TBCDField;
    qryReciptItemsAuxiliary: TFloatField;
    qryReciptItemsMachineWeight: TFloatField;
    qryReciptItemsMachineNo: TStringField;
    qryReciptItemsMachineName: TStringField;
    qryReciptItemsMachineFullWeight: TFloatField;
    qryReciptItemsArzAmount: TFloatField;
    qryReciptItemsStandardRate: TBCDField;
    qryReciptItemsInvEntity: TFloatField;
    qryReciptItemsInvWeight: TFloatField;
    qryReciptItemsSecondTypeItem: TIntegerField;
    qryReciptItemsTotalWeight: TFloatField;
    qryReciptItemsAcceptEntity: TFloatField;
    qryReciptItemsRollbackEntity: TFloatField;
    qryReciptItemsAcceptWeight: TFloatField;
    qryReciptItemsRollbackWeight: TFloatField;
    qryReciptItemsServerID: TIntegerField;
    qryReciptItemsYearID: TIntegerField;
    qryReciptItemsTotalStandardRate: TBCDField;
    qryReciptItemsAidNumber: TStringField;
    qryReciptItemsInsertTime: TStringField;
    qryReciptItemsEditTime: TStringField;
    qryReciptItemsPestEntity: TBCDField;
    qryReciptItemsProductCode: TLargeintField;
    qryReciptItemsPrvYearID: TIntegerField;
    qryReciptItemsacc_TopicCode: TLargeintField;
    qryReciptItemsacc_DetailCode: TStringField;
    qryReciptItemsacc_CTopicCode: TStringField;
    qryReciptItemsacc_CTopicCode2: TStringField;
    qryReciptItemsacc_CTopicCode3: TStringField;
    Panel2: TPanel;
    Label10: TLabel;
    lstQryMaster: TListBox;
    qryReciptItemsIRow: TIntegerField;
    qryReciptItemsOrderState: TWordField;
    qryReciptItemsContactRate: TFloatField;
    qryReciptItemsShift: TIntegerField;
    qryReciptItemsUnitSellPrice2: TBCDField;
    qryReciptItemsSugarCo: TFloatField;
    qryReciptItemsSugarEntity: TFloatField;
    qryReciptItemsTaxCo: TFloatField;
    qryReciptItemsTaxValue: TBCDField;
    qryReciptItemsPortage: TBCDField;
    qryReciptItemsArticle: TBCDField;
    qryReciptItemsWage: TBCDField;
    qryReciptItemsScoria: TBCDField;
    qryReciptItemsWaste1: TBCDField;
    qryReciptItemsWaste2: TBCDField;
    qryReciptItemsFunction1: TBCDField;
    qryReciptItemsCustomerRate: TBCDField;
    qryReciptItemsArzRate: TBCDField;
    qryReciptItemsUnitCommission: TFMTBCDField;
    qryReciptItemsTransFormID: TIntegerField;
    qryReciptItemsConfirming: TStringField;
    qryReciptItemsStuffCodingItemID: TIntegerField;
    qryReciptItemsLength_: TFMTBCDField;
    qryReciptItemsWidth: TFMTBCDField;
    qryReciptItemsDiagnosisCalcTotalPrice: TWordField;
    ProgressBar1: TProgressBar;
    qryReciptsInvoiceTemplate: TWordField;
    Memo1: TMemo;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    qryReciptsAidNumber: TStringField;
    procedure btnAddMasterClick(Sender: TObject);
    procedure btnAddLinkMasterClick(Sender: TObject);
    procedure btnRemoveMasterClick(Sender: TObject);
    procedure btnRemoveDetailClick(Sender: TObject);
    procedure btnAddLinkDetailClick(Sender: TObject);
    procedure btnAddDetailClick(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure cmbSheetChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryExcelAfterOpen(DataSet: TDataSet);
    procedure qryExcelDetailsAfterOpen(DataSet: TDataSet);
    procedure actMoveExecute(Sender: TObject);
    procedure grpTopClick(Sender: TObject);
  private
    FConstr: string;
    SelectStoreID: Integer;
    procedure AddToList(qry, qryExcel: TADOQuery;
      lstExcel, lstQry, lstResult: TListBox);
    procedure RemoveFromList(lstResult: TListBox; qry, qryExcel: TADOQuery);
    procedure AddLink(qry, qryExcel: TADOQuery;
      lstExcel, lstQry, lstResult: TListBox);
    function MoveMaster(out OldReciptNumber: Integer; out OldCustID: Integer;
      out OldRDate: string; OldStoreID: Integer): Integer;
    procedure ExcelToList(Fname: String = '');
    // function FindReciptID(CustID: Integer; ReciptDate: string): Integer;
    procedure MoveDetails(ReciptID, ReciptType: Integer);
    procedure InitList;
    function CheckDuplicate(OldReciptNumber, ReciptNumber, OldCustID,
      CurrCustID: Integer; OldReciptDate, CurrReciptDate: string;
      OldStoreID, CurrStoreID: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetAllReciptFromExlF: TGetAllReciptFromExlF;

implementation

uses GlobalPro, DM, FaraConsts, FormFunctions, ReciptsFunctions;

{$R *.dfm}

procedure TGetAllReciptFromExlF.AddToList(qry, qryExcel: TADOQuery;
  lstExcel, lstQry, lstResult: TListBox);
var
  inx: Integer;
begin
  if (lstQry.ItemIndex = -1) or (lstExcel.ItemIndex = -1) then
  begin
    Warn('يك مورد را انتخاب كنيد.');
    Exit;
  end; // if
  inx := Integer(lstQry.Items.Objects[lstQry.ItemIndex]);
  if (Pos(lstQry.Items[lstQry.ItemIndex] + #1, lstResult.Items.Text + #1) = 0)
    and (Pos(lstExcel.Items[lstExcel.ItemIndex] + #1, lstResult.Items.Text +
    #1) = 0) then
  begin
    lstResult.AddItem(lstExcel.Items[lstExcel.ItemIndex] + ' --> ' +
      lstQry.Items[lstQry.ItemIndex], TObject(inx));
    qryExcel.FieldByName(lstExcel.Items[lstExcel.ItemIndex]).DefaultExpression
      := qry.Fields[inx].FieldName;
    qry.Fields[inx].DefaultExpression := qry.Fields[inx].FieldName;
  end;
end;

procedure TGetAllReciptFromExlF.btnAddDetailClick(Sender: TObject);
begin
  inherited;
  AddToList(qryReciptItems, qryExcel, lstExcel, lstQryDetails,
    lstResultDetails);
end;

procedure TGetAllReciptFromExlF.btnAddLinkDetailClick(Sender: TObject);
begin
  inherited;
  AddLink(qryReciptItems, qryExcel, lstExcel, lstQryDetails, lstResultDetails);
end;

procedure TGetAllReciptFromExlF.btnAddLinkMasterClick(Sender: TObject);
begin
  inherited;
  AddLink(qryRecipts, qryExcel, lstExcel, lstQryMaster, lstResultMaster);
end;

procedure TGetAllReciptFromExlF.btnAddMasterClick(Sender: TObject);
begin
  inherited;
  AddToList(qryRecipts, qryExcel, lstExcel, lstQryMaster, lstResultMaster);
end;

procedure TGetAllReciptFromExlF.btnRemoveDetailClick(Sender: TObject);
begin
  inherited;
  RemoveFromList(lstResultDetails, qryReciptItems, qryExcel);
end;

procedure TGetAllReciptFromExlF.btnRemoveMasterClick(Sender: TObject);
begin
  inherited;
  RemoveFromList(lstResultMaster, qryRecipts, qryExcel);
end;

procedure TGetAllReciptFromExlF.cmbSheetChange(Sender: TObject);
// var
// SelectedID, SelectedCaption: string;
begin
  inherited;

  with qryExcel do
  begin
    Close;
    SQL.Text := 'select * from [' + cmbSheet.Items[cmbSheet.ItemIndex] + ']';
    Open;
    GetFieldNames(lstExcel.Items);
  end;
  // SelectedCaption := '';
  // CommonSelectedF.GetSelected(qryExcel.SQL.Text, SelectedID, SelectedCaption);
  // if SelectedCaption = '' then
  // begin
  // Warn('ستونی برای مرتب سازی انتخاب نشده است');
  // // CommonSelectedF.GetSelected(qryExcel.SQL.Text, SelectedID, SelectedCaption);
  // end;
  // qryExcel.Sort := SelectedCaption;

  // with qryExcelDetails do
  // begin
  // Close;
  // SQL.Text := 'select * from [' + cmbSheet.Items[cmbSheet.ItemIndex] + ']';
  // Open;
  // GetFieldNames(lstExcel.Items);
  // end;
end;

procedure TGetAllReciptFromExlF.RemoveFromList(lstResult: TListBox;
  qry, qryExcel: TADOQuery);
var
  i: Integer;
begin
  for i := 0 to qryExcel.FieldCount - 1 do
    if qry.Fields[Integer(lstResult.Items.Objects[lstResult.ItemIndex])
      ].FieldName = qryExcel.Fields[i].DefaultExpression then
    begin
      qryExcel.Fields[i].DefaultExpression := EmptyStr;
      qry.Fields[Integer(lstResult.Items.Objects[lstResult.ItemIndex])
        ].DefaultExpression := EmptyStr;
    end;
  lstResult.DeleteSelected;
end;

procedure TGetAllReciptFromExlF.actMoveExecute(Sender: TObject);
var
  RID, CustID, ReciptType, StoreID: Integer;
  ReciptDate: string;
begin
  inherited;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := qryExcel.RecordCount;
  ReciptDate := EmptyStr;
  CustID := 0;
  StoreID := 0;
  ReciptType := Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
  with qryExcel do
    try
      First;
      while not Eof do
      begin
        RID := MoveMaster(CustID, CustID, ReciptDate, StoreID);
        MoveDetails(RID, ReciptType);
        FreeReservedCodes(DMf.adcBSell, 'recipts', '', IntToStr(ReciptType));
        FreeReservedCodes(DMf.adcBSell, 'reciptitems', '',
          IntToStr(ReciptType));
        lblCount.Caption := 'رديف:‏' + IntToStr(qryExcel.RecNo);
        Next;
        ProgressBar1.StepIt;
        Application.ProcessMessages;
      end;
    finally
      ProgressBar1.Position := 100;
      Warn('انتقال انجام شد.‏', mtInformation);
      lblCount.Visible := False;
    end;
end;

procedure TGetAllReciptFromExlF.actOpenExecute(Sender: TObject);
begin
  inherited;
  Memo1.Lines.Clear;
  with TOpenDialog.Create(Self) do
    try
      Filter := 'Excel|*.xlsx;*.xls|All|*.*';
      if Execute and (FileName <> EmptyStr) then
        ExcelToList(FileName);
    finally
      SaveConfig('', qryRecipts.Owner.Name + qryRecipts.Name + '_Filepath',
        FileName);
      // FFilePath := FileName;
      Free;
    end;
end;

procedure TGetAllReciptFromExlF.AddLink(qry, qryExcel: TADOQuery;
  lstExcel, lstQry, lstResult: TListBox);
var
  i, INDX: Integer;
begin
  lstResult.Clear;
  for i := 0 to lstExcel.Count - 1 do
  begin
    INDX := lstQry.Items.IndexOf(lstExcel.Items[i]);
    lstExcel.Selected[i] := True;;
    if INDX <> -1 then
    begin
      lstQry.Selected[INDX] := True;
      AddToList(qry, qryExcel, lstExcel, lstQry, lstResult);
    end;
  end;
end;

function TGetAllReciptFromExlF.MoveMaster(out OldReciptNumber: Integer;
  out OldCustID: Integer; out OldRDate: string; OldStoreID: Integer): Integer;
var
  ReciptNumber, PersonId1, StoreID: Integer;
  i, ReciptType, k: Integer;
  TrueDate, RNumberSQl, RIDSQL, S: string;
  aField: TField;
begin
  ReciptType := 0;
  SelectStoreID := 0;
  if cmbReciptType.ItemIndex = -1 then
    raise Exception.Create('نوع فرم انتخاب نشده است');
  ReciptType := Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
  if cmbStore.ItemIndex <> -1 then
    SelectStoreID := Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
  RNumberSQl :=
    'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType= %d) AND (YearID = %d) AND (ServerID = %d)';
  RNumberSQl := Format(RNumberSQl, [ReciptType, AppBank.Year, Opt.ServerID]);
  RIDSQL := 'SELECT MAX(ReciptID)FROM Recipts WHERE (YearID = %d) AND (ServerID = %d)';
  RIDSQL := Format(RIDSQL, [AppBank.Year, Opt.ServerID]);
  with qryRecipts do
  begin
    if not Active then
      Open;
    Last;
    Result := FieldByName('ReciptID').AsInteger;
    Insert;
    FieldByName('ReciptType').AsInteger := ReciptType;
    FieldByName('ReciptID').AsInteger :=
      GetANewID(qryRecipts, IntToStr(ReciptType), 'Recipts',
      'ReciptID', nil, 1);
    FieldByName('StoreID').AsInteger := SelectStoreID;
    FieldByName('ReciptNumber').AsInteger := GetANewCode(IntToStr(ReciptType),
      RNumberSQl, 'ReciptNumber');
    FieldByName('InsertDate').AsDateTime := Now;
    FieldByName('OperatorID').AsInteger := User.id;
    FieldByName('AddDecValue').AsInteger := 0;
    FieldByName('TotalValue').AsInteger := 0;
    FieldByName('PersonID3').AsInteger := 0;
    FieldByName('PersonID2').AsInteger := 0;
    FieldByName('PersonID1').AsInteger := 0;
    FieldByName('ReciptState').AsInteger := 0;
    FieldByName('InvoiceTemplate').AsInteger := 1;

    FieldByName('FirstUser').AsString := User.Name;
    FieldByName('UseOtherID').AsInteger := 0;
    FieldByName('ServerID').AsInteger := Opt.ServerID;
    FieldByName('YearID').AsInteger := AppBank.Year;
    FieldByName('ModifyDate').AsDateTime := Now;
    for i := 0 to qryExcel.FieldCount - 1 do
    begin
      if qryExcel.Fields[i].DefaultExpression = EmptyStr then
        Continue;
      if FindField(qryExcel.Fields[i].DefaultExpression) = nil then
        Continue;
      aField := FieldByName(qryExcel.Fields[i].DefaultExpression);

      if aField.FieldName <> aField.DefaultExpression then
        Continue;

      if aField.FieldName = 'ReciptDate' then
      begin
        TrueDate := Trim(qryExcel.Fields[i].AsString);
        if chkModifyDate.Checked then
          TrueDate := RightStr(TrueDate, Length(TrueDate) - 2);
        if chkSlash.Checked then
          TrueDate := Copy(TrueDate, 3, 2) + '/' + Copy(TrueDate, 5, 2) + '/' +
            RightStr(TrueDate, 2);
        aField.AsString := TrueDate;
      end
      else if aField.FieldName = 'ReciptNumber' then
      begin
        aField.AsString := Trim(qryExcel.Fields[i].AsString);
        if (aField.AsString = '') then
          aField.AsInteger := 0;
        ReciptNumber := aField.AsInteger;
      end
      else
      begin
        if ((aField is TBCDField) or (aField is TCurrencyField)) and
          (TBCDField(aField).Currency) then
          aField.AsCurrency := Round(qryExcel.Fields[i].AsVariant)
        else
          aField.AsString := Trim(qryExcel.Fields[i].AsString);
        if (aField.AsString = '') then
          aField.AsVariant := null;
        if aField.FieldName = 'PersonID1' then
          PersonId1 := aField.AsInteger;
      end;
      if aField.FieldName = 'StoreID' then
      begin
        aField.AsString := Trim(qryExcel.Fields[i].AsString);
        if (aField.AsString = '') then
          aField.AsInteger := 0;
        StoreID := aField.AsInteger;
      end
    end;
    if CheckDuplicate(OldReciptNumber, ReciptNumber, OldCustID, PersonId1,
      OldRDate, TrueDate, OldStoreID, StoreID) then
    begin
      OldCustID := PersonId1;
      OldRDate := TrueDate;
      OldReciptNumber := ReciptNumber;
      OldStoreID := StoreID;
      Result := FieldByName('ReciptID').AsInteger;
      try
        Post;

      except
        on E: Exception do
        begin
          S := 'خطا در خط ' + IntToStr(qryExcel.RecNo + 1) + ' فایل اکسل';
          for k := 0 to qryExcel.FieldCount - 1 do
            S := S + ' , ' + Trim(qryExcel.Fields[k].AsString);
          S := S + #10#13 + E.Message;
              Memo1.Lines.Add(s);
          add2log(S);
          Warn(S);
        end;
      end;
    end
    else
    begin
      FreeReservedCodes(DMf.adcBSell, 'recipts', '', IntToStr(ReciptType));
      Cancel;
    end;
  end;

end;

procedure TGetAllReciptFromExlF.MoveDetails(ReciptID, ReciptType: Integer);
var
  i: Integer;
  aField: TField;
begin
  if ReciptID = 0 then
    Exit;

  with qryReciptItems do
  begin
    if not Active then
      Open;
    if RecordCount = 0 then
      Insert
    else
      Append;
    GetANewID(qryReciptItems, IntToStr(ReciptType), 'ReciptItems',
      'ReciptItemID', nil, 1);
    FieldByName('ReciptID').AsInteger := ReciptID;
    FieldByName('FirstUser').AsString := User.Name;
    FieldByName('PersonID1').AsInteger := 0;
    FieldByName('InsertTime').AsString := SysUtils.TimeToStr(Now);
    for i := 0 to qryExcel.FieldCount - 1 do
    begin
      if qryExcel.Fields[i].DefaultExpression = EmptyStr then
        Continue;
      if FindField(qryExcel.Fields[i].DefaultExpression) = nil then
        Continue;
      aField := FieldByName(qryExcel.Fields[i].DefaultExpression);

      if aField.FieldName <> aField.DefaultExpression then
        Continue;

      if ((aField is TBCDField) or (aField is TCurrencyField)) and
        (TBCDField(aField).Currency) then
        aField.AsCurrency := Round(qryExcel.Fields[i].AsVariant)
      else if (aField is TFloatField) then
        aField.AsFloat := Roundto(qryExcel.Fields[i].AsVariant, -2)
      else
        aField.AsString := Trim(qryExcel.Fields[i].AsString);
      if (aField.AsString = '') then
        aField.AsVariant := null;
    end;
    Post;
  end;
end;

procedure TGetAllReciptFromExlF.qryExcelDetailsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryExcelDetails.Sort := qryExcel.Sort;
end;

procedure TGetAllReciptFromExlF.qryExcelAfterOpen(DataSet: TDataSet);
// var
// SelectedID, SelectedCaption: string;
begin
  inherited;
  // SelectedCaption := '';
  // CommonSelectedF.GetSelected(qryExcel.SQL.Text, SelectedID, SelectedCaption);
  // if SelectedCaption = '' then
  // begin
  // Warn('ستونی برای مرتب سازی انتخاب نشده است');
  // CommonSelectedF.GetSelected(qryExcel.SQL.Text, SelectedID, SelectedCaption);
  // end;
  // qryExcel.Sort := SelectedCaption;
end;

procedure TGetAllReciptFromExlF.ExcelToList(Fname: String = '');
// var
// S: String;

begin
  if ExtractFileExt(Fname) = '.xlsx' then
    FConstr := Format('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;' +
      'Extended Properties=excel 12.0;Persist Security Info=False', [Fname])

  else
    FConstr := Format('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;' +
      'Extended Properties=excel 8.0;Persist Security Info=False', [Fname]);

  Caption := Fname;
  with TADOConnection.Create(Self) do
    try
      Close;
      ConnectionString := FConstr;
      LoginPrompt := False;
      Open;
      GetTableNames(cmbSheet.Items);
      if cmbSheet.Visible then
        cmbSheet.ItemIndex := 0;
    finally
      SaveConfig('', qryRecipts.Owner.Name + qryRecipts.Name + '_Filepath',
        EmptyStr);
      Free;
    end;
  qryExcel.ConnectionString := FConstr;
  // qryExcelDetails.ConnectionString := FConstr;
  // with qryExcelMaster do
  // begin
  // Close;
  // ConnectionString := FConstr;
  // Close;
  // SQL.Text := 'select * from [' + cmbSheet.Items[0] + ']';
  // Open;
  cmbSheetChange(cmbSheet);
  // end;
end;

procedure TGetAllReciptFromExlF.FormCreate(Sender: TObject);
begin
  inherited;
  Memo1.Lines.Clear;
  InitCombos(cmbReciptType, 'SELECT ReciptType,ReciptCaption FROM ReciptTypes');
  InitCombos(cmbStore, 'SELECT n_StoreID,c_StoreName FROM Stores');
  InitList;
end;

procedure TGetAllReciptFromExlF.grpTopClick(Sender: TObject);
begin
  inherited;

end;

// function TGetAllReciptFromExlF.FindReciptID(CustID: Integer;
// ReciptDate: string): Integer;
// begin
// with DMf.qryTmpTmp do
// begin
// Close;
// SQL.Text :=
// 'SELECT ReciptID FROM Recipts WHERE (PersonID1 = %d) AND (ReciptDate = %s) AND (YearID = %d) AND (ServerID = %d)';
// SQL.Text := Format(SQL.Text, [CustID, ReciptDate, AppBank.Year,
// Opt.ServerID]);
// Open;
// Result := Fields[0].AsInteger;
// Close;
// end;
// end;

function TGetAllReciptFromExlF.CheckDuplicate(OldReciptNumber, ReciptNumber,
  OldCustID, CurrCustID: Integer; OldReciptDate, CurrReciptDate: string;
  OldStoreID, CurrStoreID: Integer): Boolean;
begin
  Result := (OldReciptNumber <> ReciptNumber) AND (OldCustID <> CurrCustID) AND
    (OldReciptDate <> CurrReciptDate);

  if cmbStore.ItemIndex = -1 then
    Result := Result AND (OldStoreID <> CurrStoreID)

end;

procedure TGetAllReciptFromExlF.InitList;

var
  i: Integer;
begin
  with qryRecipts do
  begin
    Open;
    For i := 0 to FieldCount - 1 do
    begin
      if (Fields[i].DisplayLabel <> Fields[i].FieldName) and
        (Fields[i].DisplayLabel <> EmptyStr) and
        (Fields[i].FieldKind in [fkData]) or ((Fields[i].Tag and 2) <> 0) then
        lstQryMaster.AddItem(Fields[i].DisplayLabel, TObject(Fields[i].Index));
      // Next;  ک
    end;
  end;

  with qryReciptItems do
  begin
    Open;
    For i := 0 to FieldCount - 1 do
    begin
      if (Fields[i].DisplayLabel <> Fields[i].FieldName) and
        (Fields[i].DisplayLabel <> EmptyStr) and
        (Fields[i].FieldKind in [fkData]) or ((Fields[i].Tag and 2) <> 0) then
        lstQryDetails.AddItem(Fields[i].DisplayLabel, TObject(Fields[i].Index));
      // Next;
    end;
  end;
end;

end.
