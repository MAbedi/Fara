unit GetAllFormFromExl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, ADODB, DB,
  StrUtils, ComCtrls, Math, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TGetAllFormFromExlF = class(TTemplate4F)
    grpMaster: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    cmbCustomer: TComboBox;
    cmbFormType: TComboBox;
    Panel4: TPanel;
    Label9: TLabel;
    lstExcel: TListBox;
    Panel6: TPanel;
    chkSlash: TCheckBox;
    pnlResut: TPanel;
    pnlMasterResult: TPanel;
    pnlDetailsResult: TPanel;
    lstResultMaster: TListBox;
    Label11: TLabel;
    Label5: TLabel;
    lstResultDetails: TListBox;
    qryExcel: TADOQuery;
    qryForms: TADOQuery;
    qryFormItems: TADOQuery;
    btnImportExcel: TSpeedButton;
    btnModify: TSpeedButton;
    actOpen: TAction;
    actMove: TAction;
    lblCount: TLabel;
    qryExcelDetails: TADOQuery;
    Label6: TLabel;
    cmbSheet: TComboBox;
    pnlItems: TPanel;
    Label4: TLabel;
    lstQryDetails: TListBox;
    Panel7: TPanel;
    btnAddDetail: TBitBtn;
    btnAddLinkDetail: TBitBtn;
    btnRemoveDetail: TBitBtn;
    btnAddMaster: TBitBtn;
    btnAddLinkMaster: TBitBtn;
    btnRemoveMaster: TBitBtn;
    pnlForm: TPanel;
    Label10: TLabel;
    lstQryMaster: TListBox;
    ProgressBar1: TProgressBar;
    qryFormsFormID: TIntegerField;
    qryFormsServerID: TIntegerField;
    qryFormsYearID: TIntegerField;
    qryFormsFormType: TWordField;
    qryFormsFormNumber: TIntegerField;
    qryFormsFormDate: TStringField;
    qryFormsCustomerID1: TIntegerField;
    qryFormsCustomerID2: TIntegerField;
    qryFormsAmount: TBCDField;
    qryFormsBudgetCode: TIntegerField;
    qryFormsAidInfoDate: TStringField;
    qryFormsAidInfoNo: TStringField;
    qryFormsFomNote: TStringField;
    qryFormsFormState: TWordField;
    qryFormsFirstUser: TStringField;
    qryFormsLastUser: TStringField;
    qryFormsModifyDate: TDateTimeField;
    qryFormsPayTypes: TIntegerField;
    qryFormsTopicTypes: TIntegerField;
    qryFormsSellsMethod: TIntegerField;
    qryFormsSellsEmporium: TIntegerField;
    qryFormsDocNo: TIntegerField;
    qryFormsDefaultDate: TStringField;
    qryFormsCustomerID3: TIntegerField;
    qryFormsCustomerID4: TIntegerField;
    qryFormsAidFormType: TWordField;
    qryFormsRelatedRecipts: TStringField;
    qryFormsCashCheckFormID: TIntegerField;
    qryFormsGuaranteesFormID: TIntegerField;
    qryFormsTopicCode: TLargeintField;
    qryFormsDetailCode: TStringField;
    qryFormsCTopicCode: TStringField;
    qryFormsCTopicCode2: TStringField;
    qryFormsCTopicCode3: TStringField;
    qryFormsDefaultDuration: TSmallintField;
    qryFormsOperatorID: TIntegerField;
    qryFormsDocDate: TStringField;
    qryFormsReciptID: TIntegerField;
    qryFormsPO: TStringField;
    qryFormItemsFormItemID: TIntegerField;
    qryFormItemsFormID: TIntegerField;
    qryFormItemsCheckNumber: TStringField;
    qryFormItemsRow: TIntegerField;
    qryFormItemsCheckDate: TStringField;
    qryFormItemsCheckType: TWordField;
    qryFormItemsServerID: TIntegerField;
    qryFormItemsYearID: TIntegerField;
    qryFormItemsItemAmount: TBCDField;
    qryFormItemsItemNote: TStringField;
    qryFormItemsBankName: TStringField;
    qryFormItemsCity: TStringField;
    qryFormItemsCustomerID2: TIntegerField;
    qryFormItemsBudgetCode: TIntegerField;
    qryFormItemspreFormItemID: TIntegerField;
    qryFormItemsAccountNumber: TStringField;
    qryFormItemsAccountNumberNew: TStringField;
    qryFormItemsProjectID: TIntegerField;
    qryFormItemsAidInfoNo: TStringField;
    qryFormItemsAidInfoDate: TStringField;
    qryFormItemsFirstUser: TStringField;
    qryFormItemsLastUser: TStringField;
    qryFormItemsCheckFor: TStringField;
    qryFormItemsAmountArz: TFloatField;
    qryFormItemsCashWage: TBCDField;
    qryFormItemsTopicTypesI: TIntegerField;
    qryFormItemsArzTypeID: TIntegerField;
    qryFormItemsArzAmount: TBCDField;
    qryFormItemsArzRate: TFloatField;
    qryFormItemsCheckState: TWordField;
    qryFormItemsAccState: TWordField;
    qryFormItemsItemState: TWordField;
    qryFormItemsItemStateComment: TWideStringField;
    qryFormItemsSeverableAmount: TWordField;
    qryFormItemsRelatedID: TIntegerField;
    qryFormItemsVAT: TBCDField;
    qryFormItemsAccountNumberNew1: TStringField;
    qryFormItemsTopicCode: TLargeintField;
    qryFormItemsDetailCode: TStringField;
    qryFormItemsCTopicCode: TStringField;
    qryFormItemsCTopicCode2: TStringField;
    qryFormItemsCTopicCode3: TStringField;
    qryFormItemsCheckCounter: TIntegerField;
    qryFormItemsLineCorrosion: TBooleanField;
    qryFormItemsPO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    grdExcel: TCedarDbgrid;
    srcExcel: TDataSource;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Memo1: TMemo;
    Splitter2: TSplitter;
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
    procedure cmbFormTypeChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FConstr: string;
    SelectCustomerID: Integer;
    procedure AddToList(qry, qryExcel: TADOQuery;
      lstExcel, lstQry, lstResult: TListBox);
    procedure RemoveFromList(lstResult: TListBox; qry, qryExcel: TADOQuery);
    procedure AddLink(qry, qryExcel: TADOQuery;
      lstExcel, lstQry, lstResult: TListBox);
    function MoveMaster(out OldFormNumber: Integer; out OldCustID: Integer;
      out OldRDate: string; OldCustomerID: Integer): Integer;
    procedure ExcelToList(Fname: String = '');
    // function FindFormID(CustID: Integer; FormDate: string): Integer;
    procedure MoveDetails(FormID, FormType: Integer);
    procedure InitList;
    function CheckDuplicate(OldFormNumber, FormNumber: Integer;
      OldFormDate, CurrFormDate: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetAllFormFromExlF: TGetAllFormFromExlF;

const
  Diskind = ' *#';

implementation

uses GlobalPro, DM, FaraConsts, FormFunctions;

{$R *.dfm}

procedure TGetAllFormFromExlF.AddToList(qry, qryExcel: TADOQuery;
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

procedure TGetAllFormFromExlF.btnAddDetailClick(Sender: TObject);
begin
  inherited;
  AddToList(qryFormItems, qryExcel, lstExcel, lstQryDetails, lstResultDetails);
end;

procedure TGetAllFormFromExlF.btnAddLinkDetailClick(Sender: TObject);
begin
  inherited;
  AddLink(qryFormItems, qryExcel, lstExcel, lstQryDetails, lstResultDetails);
end;

procedure TGetAllFormFromExlF.btnAddLinkMasterClick(Sender: TObject);
begin
  inherited;
  AddLink(qryForms, qryExcel, lstExcel, lstQryMaster, lstResultMaster);
end;

procedure TGetAllFormFromExlF.btnAddMasterClick(Sender: TObject);
begin
  inherited;
  AddToList(qryForms, qryExcel, lstExcel, lstQryMaster, lstResultMaster);
end;

procedure TGetAllFormFromExlF.btnRemoveDetailClick(Sender: TObject);
begin
  inherited;
  RemoveFromList(lstResultDetails, qryFormItems, qryExcel);
end;

procedure TGetAllFormFromExlF.btnRemoveMasterClick(Sender: TObject);
begin
  inherited;
  RemoveFromList(lstResultMaster, qryForms, qryExcel);
end;

procedure TGetAllFormFromExlF.cmbFormTypeChange(Sender: TObject);
begin
  inherited;
  pnlItems.Visible := Pos(Diskind, cmbFormType.Text) = 0;
  btnRemoveDetail.Visible := pnlItems.Visible;
  btnAddLinkDetail.Visible := pnlItems.Visible;
  btnAddDetail.Visible := pnlItems.Visible;
  pnlDetailsResult.Visible := pnlItems.Visible;
end;

procedure TGetAllFormFromExlF.cmbSheetChange(Sender: TObject);
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

procedure TGetAllFormFromExlF.RemoveFromList(lstResult: TListBox;
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

procedure TGetAllFormFromExlF.actMoveExecute(Sender: TObject);
var
  RID, CustID, FormType, CustomerID: Integer;
  FormDate: string;
begin
  inherited;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := qryExcel.RecordCount;
  FormDate := EmptyStr;
  CustID := 0;
  CustomerID := 0;
  FormType := Integer(cmbFormType.Items.Objects[cmbFormType.ItemIndex]);
  with qryExcel do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        RID := MoveMaster(CustID, CustID, FormDate, CustomerID);
        if pnlItems.Visible then
          MoveDetails(RID, FormType);
        FreeReservedCodes(DMf.adcBSell, 'Forms', '', IntToStr(FormType));
        FreeReservedCodes(DMf.adcBSell, 'FormItems', '', IntToStr(FormType));
        lblCount.Caption := 'رديف:‏' + IntToStr(qryExcel.RecNo);
        Next;
        ProgressBar1.StepIt;
        Application.ProcessMessages;
      end;
    finally
      EnableControls;
      ProgressBar1.Position := 100;
      Warn('انتقال انجام شد.‏', mtInformation);
      lblCount.Visible := False;
    end;
end;

procedure TGetAllFormFromExlF.actOpenExecute(Sender: TObject);
begin
  inherited;
  Memo1.Lines.Clear;
  with TOpenDialog.Create(Self) do
    try
      Filter := 'Excel|*.xlsx;*.xls|All|*.*';
      if Execute and (FileName <> EmptyStr) then
        ExcelToList(FileName);
    finally
      SaveConfig('', qryForms.Owner.Name + qryForms.Name + '_Filepath',
        FileName);
      // FFilePath := FileName;
      Free;
    end;
end;

procedure TGetAllFormFromExlF.AddLink(qry, qryExcel: TADOQuery;
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

function TGetAllFormFromExlF.MoveMaster(out OldFormNumber: Integer;
  out OldCustID: Integer; out OldRDate: string; OldCustomerID: Integer)
  : Integer;
var
  FormNumber, CustomerID1, CustomerID: Integer;
  i, FormType, k: Integer;
  TrueDate, RNumberSQl, RIDSQL, S: string;
  aField: TField;
begin
  FormType := 0;
  SelectCustomerID := 0;
  if cmbFormType.ItemIndex = -1 then
    raise Exception.Create('نوع فرم انتخاب نشده است');
  FormType := Integer(cmbFormType.Items.Objects[cmbFormType.ItemIndex]);
  if cmbCustomer.ItemIndex <> -1 then
    SelectCustomerID :=
      Integer(cmbCustomer.Items.Objects[cmbCustomer.ItemIndex]);
  RNumberSQl :=
    'SELECT MAX(FormNumber)FROM Forms WHERE(FormType= %d) AND (YearID = %d) AND (ServerID = %d)';
  RNumberSQl := Format(RNumberSQl, [FormType, AppBank.Year, Opt.ServerID]);
  RIDSQL := 'SELECT MAX(FormID)FROM Forms WHERE (YearID = %d) AND (ServerID = %d)';
  RIDSQL := Format(RIDSQL, [AppBank.Year, Opt.ServerID]);
  with qryForms do
  begin
    if not Active then
      Open;
    Last;
    Result := FieldByName('FormID').AsInteger;
    Insert;
    FieldByName('FormType').AsInteger := FormType;
    FieldByName('FormID').AsInteger := GetANewID(qryForms, IntToStr(FormType),
      'Forms', 'FormID', nil, 1);
    FieldByName('FormNumber').AsInteger := GetANewCode(IntToStr(FormType),
      RNumberSQl, 'FormNumber');
    FieldByName('OperatorID').AsInteger := User.id;
    FieldByName('CustomerID1').AsInteger := SelectCustomerID;
    FieldByName('CustomerID2').AsInteger := 0;
    FieldByName('CustomerID3').AsInteger := 0;
    FieldByName('FormState').AsInteger := 0;
    FieldByName('Amount').AsInteger := 0;
    FieldByName('FirstUser').AsString := User.Name;
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

      if aField.FieldName = 'FormDate' then
      begin
        TrueDate := Trim(qryExcel.Fields[i].AsString);
        if chkSlash.Checked then
          TrueDate := Copy(TrueDate, 1, 4) + '/' + Copy(TrueDate, 5, 2) + '/' +
            RightStr(TrueDate, 2);
        aField.AsString := TrueDate;
      end
      else if aField.FieldName = 'FormNumber' then
      begin
        aField.AsString := Trim(qryExcel.Fields[i].AsString);
        if (aField.AsString = '') then
          aField.AsInteger := 0;
        FormNumber := aField.AsInteger;
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
        if aField.FieldName = 'CustomerID1' then
          CustomerID1 := aField.AsInteger;
      end;

    end;
    if pnlItems.Visible then
    begin
      if CheckDuplicate(OldFormNumber, FormNumber, OldRDate, TrueDate) then
      begin
        OldCustID := CustomerID1;
        OldRDate := TrueDate;
        OldFormNumber := FormNumber;
        OldCustomerID := CustomerID;
        Result := FieldByName('FormID').AsInteger;
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
        Warn2(OldFormNumber.ToString + ',' + FormNumber.ToString + ',' +
          OldCustID.ToString + ',' + CustomerID1.ToString + ',' + OldRDate + ','
          + TrueDate + OldCustomerID.ToString + CustomerID.ToString);
        FreeReservedCodes(DMf.adcBSell, 'Forms', '', IntToStr(FormType));
        Cancel;
      end;
    end
    else
      Post;

  end;

end;

procedure TGetAllFormFromExlF.MoveDetails(FormID, FormType: Integer);
var
  i: Integer;
  aField: TField;
begin
  if FormID = 0 then
    Exit;

  with qryFormItems do
  begin
    if not Active then
      Open;
    if RecordCount = 0 then
      Insert
    else
      Append;
    GetANewID(qryFormItems, IntToStr(FormType), 'FormItems',
      'FormItemID', nil, 1);
    FieldByName('FormID').AsInteger := FormID;
    FieldByName('Row').AsInteger := abs(RecordCount);
    FieldByName('FirstUser').AsString := User.Name;
    FieldByName('CustomerID2').AsInteger := 0;
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

procedure TGetAllFormFromExlF.qryExcelDetailsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryExcelDetails.Sort := qryExcel.Sort;
end;

procedure TGetAllFormFromExlF.qryExcelAfterOpen(DataSet: TDataSet);
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
  grdExcel.setSizeColDBGrid;
  grdExcel.ColorDBGrid;
end;

procedure TGetAllFormFromExlF.ExcelToList(Fname: String = '');
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
      SaveConfig('', qryForms.Owner.Name + qryForms.Name + '_Filepath',
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

procedure TGetAllFormFromExlF.FormCreate(Sender: TObject);
begin
  inherited;
  Memo1.Lines.Clear;
  InitCombos(cmbFormType, 'SELECT FormType,' +
    ' FormCaption + CASE WHEN DisplayFormType in(0,7) THEN ''' + Diskind +
    ''' ELSE '''' END AS FormCaption' +
    ' FROM FormTypes WHERE (MnuPlaceID > 0) ORDER BY RowOnMnu');
  InitCombos(cmbCustomer, 'SELECT Customers.CustID, Customers.CustName' +
    ' FROM Customers INNER JOIN' +
    ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID'
    + ' WHERE (CustomersGroup.GroupType = 2)');
  InitList;
end;

procedure TGetAllFormFromExlF.FormResize(Sender: TObject);
begin
  inherited;
  pnlDetailsResult.Width := pnlResut.Width div 2;
  pnlItems.Width := grpMaster.Width div 3;
  pnlForm.Width := grpMaster.Width div 3;
end;

// function TGetAllFormFromExlF.FindFormID(CustID: Integer;
// FormDate: string): Integer;
// begin
// with DMf.qryTmpTmp do
// begin
// Close;
// SQL.Text :=
// 'SELECT FormID FROM Forms WHERE (CustomerID1 = %d) AND (FormDate = %s) AND (YearID = %d) AND (ServerID = %d)';
// SQL.Text := Format(SQL.Text, [CustID, FormDate, AppBank.Year,
// Opt.ServerID]);
// Open;
// Result := Fields[0].AsInteger;
// Close;
// end;
// end;

function TGetAllFormFromExlF.CheckDuplicate(OldFormNumber, FormNumber: Integer;
  OldFormDate, CurrFormDate: string): Boolean;
begin
  Result := (OldFormNumber <> FormNumber) AND // (OldCustID <> CurrCustID) AND
    (OldFormDate <> CurrFormDate);

  // if cmbCustomer.ItemIndex = -1 then
  // Result := Result AND (OldCustomerID <> CurrCustomerID)

end;

procedure TGetAllFormFromExlF.InitList;

var
  i: Integer;
begin
  with qryForms do
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

  with qryFormItems do
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
