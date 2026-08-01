unit ExpenseCopy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, Mask,
  DB, ADODB, DBCtrls,   FormFunctions,
  CheckLst, zAPIBalloon, DBClient, Provider, Grids, Vcl.DBGrids,
  ComCtrls, StrUtils, System.Actions;

type

  TExpenseCopyF = class(TTemplate4F)
    BitBtn1: TBitBtn;
    actDocCopy: TAction;
    adcYears: TADOConnection;
    qryDocs: TADOQuery;
    actSearch: TAction;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CmbBankName: TComboBox;
    Panel3: TPanel;
    actSelectDoc: TAction;
    cmbYear: TComboBox;
    Panel4: TPanel;
    Button1: TButton;
    IncAllBtn: TSpeedButton;
    IncludeBtn: TSpeedButton;
    ExcludeBtn: TSpeedButton;
    ExAllBtn: TSpeedButton;
    srcDocs: TDataSource;
    srcSelDoc: TDataSource;
    CliSelDoc: TClientDataSet;
    CliSelDocSumbed: TAggregateField;
    CliSelDocSumBes: TAggregateField;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    lblCount: TLabel;
    Panel7: TPanel;
    BitBtn2: TBitBtn;
    pbDoc: TProgressBar;
    BitBtn3: TBitBtn;
    actSelectAll: TAction;
    BitBtn4: TBitBtn;
    actselectReverse: TAction;
    Panel8: TPanel;
    btnSelectAll: TBitBtn;
    btnselectReverse: TBitBtn;
    pnlCompany: TPanel;
    lbl1: TLabel;
    cmbCompany: TComboBox;
    procedure actDocCopyExecute(Sender: TObject);
    procedure CmbBankNameChange(Sender: TObject);
    procedure adcYearsBeforeConnect(Sender: TObject);
    procedure actSelectDocExecute(Sender: TObject);
    procedure IncludeBtnClick(Sender: TObject);
    procedure IncAllBtnClick(Sender: TObject);
    procedure ExcludeBtnClick(Sender: TObject);
    procedure ExAllBtnClick(Sender: TObject);
    procedure srcSelDocDataChange(Sender: TObject; Field: TField);
    procedure qryDocsAfterOpen(DataSet: TDataSet);
    procedure qryDocsBeforeScroll(DataSet: TDataSet);
    procedure CliSelDocAfterScroll(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actselectReverseExecute(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnselectReverseClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure cmbCompanyChange(Sender: TObject);
  private
    { Private declarations }
    FBankName: string;
    FExpID: Integer;
    FCompany: Integer;
    FDataSet: TDataSet;
    FDBGrid: TDBGrid;
    BankNameID: Integer;
    procedure AddRecodrd;
    procedure ReomoveRecord;
    Procedure CreateClient;
    function saveDoc: Boolean;
    procedure initCombo;
    procedure InitcmbCompany;

  public
    procedure CopyFromDoc(aGrid: TDBGrid; Sn: Integer; sorQRY: string);
    { Public declarations }
  end;

var
  ExpenseCopyF: TExpenseCopyF;
  sortqry: string;

const
  DocType = 101;

implementation

uses GlobalPro, Dm, mmessage, Mymostafa, searchCode_ADO, MaliYear, FaraConsts;
{$R *.dfm}
{ TDocCopyF }

procedure TExpenseCopyF.CopyFromDoc(aGrid: TDBGrid; Sn: Integer;
  sorQRY: string);
begin
  with TExpenseCopyF.Create(Application) do
    try
      sortqry := sorQRY;
      FExpID := Sn;
      FDBGrid := aGrid;
      FDataSet := aGrid.DataSource.DataSet;
      initCombo;
      ShowModal;
    finally
      free;
    end; // try
end;

procedure TExpenseCopyF.CreateClient;
var
  i: SmallInt;
  srtqr: string;
begin
  srtqr := StringReplace(sortqry, ',', ';', [rfReplaceAll, rfIgnoreCase]);
  CliSelDoc.FieldDefs.Clear;
  with qryDocs do
  begin

    for i := 0 to FieldCount - 1 do
      CliSelDoc.FieldDefs.Add(Fields[i].FieldName, Fields[i].DataType,
        Fields[i].Size);
  end;
  CliSelDoc.CreateDataSet;
  CliSelDoc.IndexFieldNames := srtqr;
  CliSelDoc.Open;
end;

procedure TExpenseCopyF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  IncludeBtn.Click;
end;

procedure TExpenseCopyF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  actSelectAll.Hint := (Sender as TDBGrid).Name
end;

procedure TExpenseCopyF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ExcludeBtn.Click;
end;

procedure TExpenseCopyF.ExAllBtnClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  // with CliSelDoc do
  // begin
  // First;
  // DisableControls;
  // while not Eof do
  // CliSelDoc.Delete;
  //
  // EnableControls;
  // end;
  if DBGrid2.SelectedRows.Count > 0 then
    try
      CliSelDoc.DisableControls;
      with DBGrid2.DataSource.DataSet do
        for i := 0 to DBGrid2.SelectedRows.Count - 1 do
        begin
          GotoBookmark((DBGrid2.SelectedRows.Items[i]));
          ReomoveRecord;
        end;
    finally
      CliSelDoc.EnableControls;
      DBGrid2.SelectedRows.Clear;
    end;

end;

procedure TExpenseCopyF.ExcludeBtnClick(Sender: TObject);
begin
  inherited;
  ReomoveRecord;
  DBGrid2.SelectedRows.Clear;
end;

procedure TExpenseCopyF.IncAllBtnClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  // if qryDocs.IsEmpty then
  // begin
  // Warn('موردي براي انتخاب نمي باشد');
  // Exit;
  // end;
  // with qryDocs do
  // begin
  // First;
  // DisableControls;
  // while not Eof do
  // begin
  // AddRecodrd;
  // Next;
  // end;
  // EnableControls;
  // end;

  if DBGrid1.SelectedRows.Count > 0 then
    try
      qryDocs.DisableControls;
      with DBGrid1.DataSource.DataSet do
        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          GotoBookmark((DBGrid1.SelectedRows.Items[i]));
          AddRecodrd;
        end;

    finally
      qryDocs.EnableControls;
    end;

end;

procedure TExpenseCopyF.IncludeBtnClick(Sender: TObject);
begin
  inherited;
  if qryDocs.IsEmpty then
  begin
    Warn('موردي براي انتخاب نمي باشد');
    Exit;
  end;

  AddRecodrd;
end;

procedure TExpenseCopyF.initCombo;
begin
  CmbBankName.Clear;
  BankNameID := -1;
  with Dmf.qryGlbTmpTmp do
  begin
    Active := False;
    // mary   SQL.Text:='SELECT CompanyName,MaliYear';
    SQL.Text := 'SELECT bankname,sid,MaliYear';
    SQL.Add('FROM Sections');
    SQL.Add('WHERE SysID = ' + IntToStr(sysid));
    Active := True;
    First;
    while not Eof do
    begin
      CmbBankName.AddItem(Format('%s' + '_' + FieldByName('MaliYear').AsString,
        [Fields[0].AsString, Fields[1].AsInteger]),
        TObject(Fields[1].AsInteger));
      if APPBank.Name = Fields[0].AsString then
        BankNameID := CmbBankName.Items.Count - 1;
      Next;
    end; // while
  end; // with
  CmbBankName.ItemIndex := BankNameID;
  CmbBankNameChange(CmbBankName);
end;

procedure TExpenseCopyF.InitcmbCompany;
var
  qry: TADOQuery;
begin
  // cmbCompany.Clear;
  // qry := TADOQuery.Create(nil);
  // with qry do
  // begin
  // Connection := adcYears;
  // SQL.Text := 'SELECT CompanyCode,CompanyName_l1 FROM  acc.Companies';
  // Open;
  // cmbCompany.AddItem('همه شرکت ها', TObject(-1000));
  // while not Eof do
  // begin
  // cmbCompany.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
  // Next;
  // end; // while
  // Active := False;
  // cmbCompany.ItemIndex := 0;
  // pnlCompany.Visible := cmbCompany.Items.Count > 2;
  // free;
  // end;
end;

procedure TExpenseCopyF.qryDocsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not CliSelDoc.Active then
    CreateClient;
  SetColSize(DBGrid1, 0, False);
  SetColSize(DBGrid2, 0, False);
  qryDocs.Sort := sortqry;
end;

procedure TExpenseCopyF.qryDocsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.Hint := DBGrid1.Columns[0].Field.AsString;
end;

procedure TExpenseCopyF.ReomoveRecord;
begin
  CliSelDoc.Delete;
end;

procedure TExpenseCopyF.srcSelDocDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  ExcludeBtn.Enabled := CliSelDoc.RecordCount > 0;
  ExAllBtn.Enabled := ExcludeBtn.Enabled;
  actDocCopy.Enabled := ExcludeBtn.Enabled;
  lblCount.Caption := 'تعداد موارد انتخاب شده : ' +
    IntToStr(CliSelDoc.RecordCount);
end;

procedure TExpenseCopyF.actDocCopyExecute(Sender: TObject);
begin
  inherited;
  if saveDoc then
    BigMessage('سند با موفقيت كپي شد.', 1);
end;

procedure TExpenseCopyF.CliSelDocAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid2.Hint := DBGrid2.Columns[0].Field.AsString;
end;

procedure TExpenseCopyF.CmbBankNameChange(Sender: TObject);
var
  selectMali: Integer;

begin
  inherited;
  if CmbBankName.ItemIndex = -1 then
    Exit;
  selectMali := Integer(CmbBankName.Items.Objects[CmbBankName.ItemIndex]);
  with Dmf.qryGlbTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT BankName FROM Sections';
    SQL.Add('WHERE (sid=' + IntToStr(selectMali) + ')');
    Active := True;
    FBankName := Fields[0].AsString;
  end; // with
  adcYears.Close;
  adcYears.Open;
  cmbYear.Clear;
  with TADOQuery.Create(Self) do
    try
      Connection := adcYears;
      SQL.Text := 'Select YearId From util.MaliYear';
      Open;
      while Not Eof do
      begin
        cmbYear.Items.Add(Fields[0].AsString);
        Next;
      end;
    finally
      free;
    end;
  cmbYear.ItemIndex := cmbYear.Items.IndexOf(IntToStr(APPBank.Year));
  InitcmbCompany;
end;

procedure TExpenseCopyF.cmbCompanyChange(Sender: TObject); { edit by mehdi }
var
  i: Integer;
begin
  inherited;
  // i := Integer(TObject(cmbCompany.Items.Objects[cmbCompany.ItemIndex]));
  //
  // with qryDocs do
  // begin
  // Active := False;
  // if i = -1000 then
  // begin
  // Parameters.ParamByName('CompanyFrom').Value := '-90';
  // Parameters.ParamByName('CompanyTo').Value := '900';
  // end
  // else
  // begin
  // Parameters.ParamByName('CompanyFrom').Value :=
  // Integer(TObject(cmbCompany.Items.Objects[cmbCompany.ItemIndex]));
  // Parameters.ParamByName('CompanyTo').Value :=
  // Integer(TObject(cmbCompany.Items.Objects[cmbCompany.ItemIndex]));
  // end;
  // Active := True;
  // TCurrencyField(FieldByName('Debt')).currency := True;
  // TCurrencyField(FieldByName('Credit')).currency := True;
  // end;
end;

function TExpenseCopyF.saveDoc: Boolean;
var
  i: Byte;
begin
  Result := True;
  with CliSelDoc do
    try
      First;
      // BigMessageProgBar('در حال كپي سند حسابداري', RecordCount);
      pbDoc.Position := 0;
      pbDoc.Step := 1;
      pbDoc.Min := 0;
      pbDoc.Max := RecordCount;
      FDataSet.DisableControls;
      DisableControls;
      // OffDataSetEvents(FDataSet);
      while not Eof do
      begin
        FDataSet.Append;

        for i := 0 to FDBGrid.Columns.Count - 1 do
          if FDBGrid.Columns[i].Visible and not(FDBGrid.Columns[i].ReadOnly)
          then
            FDataSet.FieldByName(FDBGrid.Columns[i].FieldName).AsString :=
              FieldByName(FDBGrid.Columns[i].FieldName).AsString;

        try
          FDataSet.FieldByName('ExpID').AsInteger := FExpID;
          pbDoc.StepIt;
          FDataSet.Post;
        except
          On E: Exception do
          begin
            add2log(E.message);
            Warn('اشكال در كپي سند');
            CloseMessage;
            Result := False;
          end;
        end; // try
        Next;
        if RecNo mod 5 = 0 then
          Application.ProcessMessages;
      end; // while
    finally
      CloseMessage;
      FDataSet.EnableControls;
      EnableControls;
      // OnDataSetEvents(FDataSet);
      CliSelDoc.Close;
      CliSelDoc.Open;
      pbDoc.Position := 100;
      // Warn('كپي سند انجام شد', mtInformation);
      // FDataSet.BeforePost := tmpEvent;
    end; // try
end;

procedure TExpenseCopyF.actSearchExecute(Sender: TObject);
var
  Results: array [0 .. 7] of String;
  Sqltxt: string;
begin
  inherited;
  if qryDocs.IsEmpty then
  begin
    Warn('سندي انتخاب نشده است.');
    Exit;
  end;
  Sqltxt := 'SELECT ID, CatcherItem, [Desc], Bed, Bes, ItemDetailCode ' +
    'FROM  Acc.ExpenseItems WHERE  ExpID =' + qryDocs.FieldByName('ExpID')
    .AsString + 'And YearID = ' + cmbYear.Text;

  if searchCode_ADOF.SearchCode2(Dmf.adcAccounting, 'جستجوی سند هزینه', Sqltxt,
    ['', 'گیرنده', 'شرح  سند', 'بدهكار', 'بستانكار', 'كد تفصيلي'], Results,
    [0, 250, 250, 50, 50, 50], alLeft) then
    qryDocs.Locate('id', Results[0], []);

end;

procedure TExpenseCopyF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  if ActiveControl = DBGrid2 then
    DBGridSelectAll(DBGrid2)
  else
    DBGridSelectAll(DBGrid1)

end;

procedure TExpenseCopyF.actSelectDocExecute(Sender: TObject); { edit by mehdi }
var
  Results: array [0 .. 11] of String;
  Sqltxt: string;
  aWhere: string;
  i: Integer;
begin
  inherited;
  // i := Integer(TObject(cmbCompany.Items.Objects[cmbCompany.ItemIndex]));
  if cmbYear.ItemIndex = -1 then
  begin
    Warn('سال مالي انتخاب نشده است');
    FlashAControl(cmbYear);
    Exit;
  end;
  Sqltxt := ' SELECT Acc.Expense.ExpID, Acc.Expense.YearId, Acc.Expense.FormNo, Acc.Expense.FormDate,'
    + ' Acc.Expense.CustDetailId, Acc.Details.DetailName_L1, Acc.Expense.Cacther,'
    + ' Acc.Expense.TopicCode, Acc.Expense.DetailCode, Acc.Expense.CTopicCode, Acc.Expense.Comments,'
    + ' CASE State WHEN 0 THEN ''موقت'' WHEN 1 THEN ''قطعي'' WHEN 2 THEN ''ثبت حسابداري'' END AS StateName'
    + ' FROM Acc.Expense INNER JOIN Acc.Details ON Acc.Expense.CustDetailId = Acc.Details.DetailCode'
    + ' WHERE (Acc.Expense.YearId = ' + cmbYear.Text + ')';

  if searchCode_ADOF.SearchCode2(adcYears, 'جستجوي سند', Sqltxt,
    ['', '', 'شماره', 'تاريخ', 'کد تفصیلی', 'نام تفصیلی', 'توسط',
    'کد حساب بودجه', 'کد تفصیلی بودجه', 'کد هزینه بودجه', 'توضیحات',
    'وضعيت سند'], Results, [0, 0, 50, 50, 50, 150, 150, 50, 50, 50, 150, 80],
    alLeft) then
    with qryDocs do
    begin
      Active := False;
      Parameters.ParamByName('YearId').Value := cmbYear.Text;
      Parameters.ParamByName('ExpID').Value := Results[0];
      Active := True;
      TCurrencyField(FieldByName('bed')).currency := True;
      TCurrencyField(FieldByName('bes')).currency := True;

    end;

end;

procedure TExpenseCopyF.actselectReverseExecute(Sender: TObject);
begin
  inherited;
  if ActiveControl = DBGrid2 then
    DBGridSelectAll(DBGrid2, True)
  else
    DBGridSelectAll(DBGrid1, True)
end;

procedure TExpenseCopyF.adcYearsBeforeConnect(Sender: TObject);
begin
  inherited;
  assignServerName(adcYears, FBankName);
end;

procedure TExpenseCopyF.AddRecodrd;
var
  Id, ExpID: Integer;
  i: SmallInt;
begin
  Id := qryDocs.FieldByName('ID').AsInteger;;
  ExpID := qryDocs.FieldByName('ExpID').AsInteger;
  // YearId := qryDocs.FieldByName('YearId').AsInteger;
  // Company := qryDocs.FieldByName('CompanyCode').AsInteger;
  With CliSelDoc Do
  begin
    if Locate('ID;ExpID', VarArrayOf([Id, ExpID]), []) then
      Exit;
    Append;
    for i := 0 to qryDocs.FieldCount - 1 do
      FieldByName(qryDocs.Fields[i].FieldName).AsString :=
        qryDocs.Fields[i].AsString;

    Post;
  end;

end;

procedure TExpenseCopyF.btnSelectAllClick(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid2);
end;

procedure TExpenseCopyF.btnselectReverseClick(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid2, True);
end;

end.
